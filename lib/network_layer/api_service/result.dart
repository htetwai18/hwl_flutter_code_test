/// The following code is to handle any error from any error sources
class Result<T> {
  bool get success => _success;
  String? get errorCode => _errorCode;
  String? get errorMessage => _errorMessage;
  T? get data => _data;

  final bool _success;
  String? _errorMessage;
  T? _data;
  String? _errorCode;

  Result.success({T? data}) : _success = true {
    _errorMessage = null;
    _data = data;
    _errorCode = null;
  }

  Result.error(this._errorMessage, {T? result, String? errorCode})
      : _success = false {
    _data = result;
    _errorCode = errorCode;
  }

  @override
  String toString() {
    return 'Result{_success: $_success, _errorMessage: $_errorMessage, _data: $_data, _errorCode: $_errorCode}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Result &&
          runtimeType == other.runtimeType &&
          _success == other._success &&
          _errorMessage == other._errorMessage &&
          _data == other._data &&
          _errorCode == other._errorCode;

  @override
  int get hashCode =>
      _success.hashCode ^
      _errorMessage.hashCode ^
      _data.hashCode ^
      _errorCode.hashCode;
}
