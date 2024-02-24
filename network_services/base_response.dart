class BaseResponse<T> {
  final bool success;
  final int? statusCode;
  final String? message;
  final T? data;

  BaseResponse({
    this.success = false,
    this.statusCode,
    this.message,
    this.data,
  });

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) fromJsonData,
  ) {
    return BaseResponse(
      success: json['success'] as bool,
      statusCode: json['code'] as int?,
      message: json['message']?.toString(),
      data: json['data'] != null ? fromJsonData(json['data']) : null,
    );
  }
}
