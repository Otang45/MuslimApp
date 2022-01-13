import 'package:flutter/cupertino.dart';

abstract class ApiUtil {
  Future<void> get(
      {String? url,
      Map<String, String>? headers,
      VoidCallback? Function(
              bool? status, String? message, Map<String, dynamic>? response)
          callback});
  Future<void> post(
      {String? url,
      Map<String, String>? headers,
      Map<String, dynamic>? body,
      VoidCallback? Function(
              bool? status, String? message, Map<String, dynamic>? response)
          callback});
  Future<void> put(
      {String? url,
      Map<String, String>? headers,
      Map<String, dynamic>? body,
      VoidCallback? Function(
              bool? status, String? message, Map<String, dynamic>? response)
          callback});
  Future<void> delete(
      {String? url,
      Map<String, String>? headers,
      VoidCallback? Function(
              bool? status, String? message, Map<String, dynamic>? response)
          callback});
}
