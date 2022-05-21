import 'method.dart';
import 'type.dart';
import 'winrt_parameter.dart';

class WinRTMethodProjection extends MethodProjection {
  WinRTMethodProjection(super.method, super.vtableOffset) {
    parameters = method.parameters
        .map((param) => WinRTParameterProjection(
            param.name, TypeProjection(param.typeIdentifier)))
        .toList();
  }

  bool get isCOMObjectReturn => returnType.dartType == 'Pointer<COMObject>';

  bool get isVoidReturn => returnType.dartType == 'void';

  bool get isStringReturn => returnType.isString;

  bool get isDateTimeReturn =>
      returnType.typeIdentifier.name == 'Windows.Foundation.DateTime';

  bool get isTimeSpanReturn =>
      returnType.typeIdentifier.name == 'Windows.Foundation.TimeSpan';

  @override
  String get dartParams => [
        'Pointer',
        ...parameters.map((param) => param.dartProjection),
        if (!isVoidReturn)
          isCOMObjectReturn
              ? 'Pointer<COMObject>'
              : 'Pointer<${returnType.nativeType}>',
      ].map((p) => '$p, ').join();

  @override
  String get nativeParams => [
        'Pointer',
        ...parameters.map((param) => param.ffiProjection),
        if (!isVoidReturn)
          isCOMObjectReturn
              ? 'Pointer<COMObject>'
              : 'Pointer<${returnType.nativeType}>',
      ].map((p) => '$p, ').join();

  // WinRT methods always return an HRESULT
  @override
  String get nativePrototype => 'HRESULT Function($nativeParams)';

  // WinRT properties always return an HRESULT
  @override
  String get dartPrototype => 'int Function($dartParams)';

  @override
  String get identifiers => [
        'ptr.ref.lpVtbl',
        ...parameters.map(
            (param) => (param as WinRTParameterProjection).localIdentifier),
        if (!isVoidReturn) 'retValuePtr',
      ].map((p) => '$p, ').join();

  String get parametersPreamble => parameters
      .map((param) => (param as WinRTParameterProjection).preamble)
      .join('\n');

  String get parametersPostamble => parameters
      .map((param) => (param as WinRTParameterProjection).postamble)
      .join('\n');

  String pointerCOMObjectMethodDeclaration() => '''
    Pointer<COMObject> $name($methodParams) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()($identifiers);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }
''';

  String voidMethodDeclaration() => '''
  void $name($methodParams) {
    $parametersPreamble

    final hr = ptr.ref.lpVtbl.value
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()($identifiers);

      if (FAILED(hr)) throw WindowsException(hr);

      $parametersPostamble
    }
''';

  String stringMethodDeclaration() => '''
      String $name($methodParams) {
        final retValuePtr = calloc<HSTRING>();
        $parametersPreamble 

        try {
          final hr = ptr.ref.lpVtbl.value
            .elementAt($vtableOffset)
            .cast<Pointer<NativeFunction<$nativePrototype>>>()
            .value
            .asFunction<$dartPrototype>()($identifiers);

          if (FAILED(hr)) throw WindowsException(hr);

          final retValue = retValuePtr.toDartString();
          return retValue;
        } finally {
          $parametersPostamble
          WindowsDeleteString(retValuePtr.value);
          free(retValuePtr);
        }
      }
''';

  /// Return a method with a DateTime.
  ///
  /// In WinRT, DateTime is represented as a 64-bit signed integer that
  /// represents a point in time as the number of 100-nanosecond intervals prior
  /// to or after midnight on January 1, 1601 (according to the Gregorian
  /// Calendar).
  String dateTimeMethodDeclaration() => '''
      DateTime $name($methodParams) {
        final retValuePtr = calloc<Uint64>();
        $parametersPreamble
        
        try {
          final hr = ptr.ref.lpVtbl.value
            .elementAt($vtableOffset)
            .cast<Pointer<NativeFunction<$nativePrototype>>>()
            .value
            .asFunction<$dartPrototype>()($identifiers);

          if (FAILED(hr)) throw WindowsException(hr);

          return DateTime
            .utc(1601, 01, 01)
            .add(Duration(microseconds: retValuePtr.value ~/ 10));
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
''';

  @override
  String toString() {
    try {
      if (isCOMObjectReturn) return pointerCOMObjectMethodDeclaration();
      if (isVoidReturn) return voidMethodDeclaration();
      if (returnType.isString) return stringMethodDeclaration();
      if (returnType.typeIdentifier.name == 'Windows.Foundation.DateTime') {
        return dateTimeMethodDeclaration();
      }

      final valRef = returnType.dartType == 'double' ||
              returnType.dartType == 'int' ||
              returnType.dartType == 'bool' ||
              returnType.dartType.startsWith('Pointer')
          ? 'value'
          : 'ref';

      return '''
      ${returnType.dartType} $name($methodParams) {
        final retValuePtr = calloc<${returnType.nativeType}>();
        $parametersPreamble
  
        try {
          final hr = ptr.ref.lpVtbl.value
            .elementAt($vtableOffset)
            .cast<Pointer<NativeFunction<$nativePrototype>>>()
            .value
            .asFunction<$dartPrototype>()($identifiers);

          if (FAILED(hr)) throw WindowsException(hr);

          final retValue = retValuePtr.$valRef;
          return retValue;
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
''';
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project method: ${method.name}');
      return '';
    }
  }
}