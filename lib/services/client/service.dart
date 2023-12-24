import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
// ignore: depend_on_referenced_packages
import 'package:path_provider/path_provider.dart';
// ignore: depend_on_referenced_packages
import 'package:cookie_jar/cookie_jar.dart';

Dio dio = Dio(BaseOptions(
    baseUrl:
        "https://prigorod.tegin.kz/v1/"));
late PersistCookieJar cookieJar;

Future<void> prepareJar() async {
  final Directory appDocDir = await getApplicationDocumentsDirectory();
  final String appDocPath = appDocDir.path;
  cookieJar = PersistCookieJar(
    ignoreExpires: true,
    storage: FileStorage("$appDocPath/.cookies/"),
  );
  dio.interceptors.add(CookieManager(cookieJar));
  log("Cookie jar prepared!");
}

Future<Either<String, Map<String, dynamic>>> get(String endpoint) async {
  Response response;
  try {
    response = await dio.get(endpoint);
  } on DioException catch (error) {
    print(error.response);
    return left(error.response?.data["message"] ??
        error.message ??
        "GET-$endpoint: Undetermined error!");
  }
  if (response.data is List) {
    return right({"data": response.data});
  }
  return right(response.data);
}

Future<Either<String, Map<String, dynamic>>> post(String endpoint,
    {Map? data}) async {
  Response response;
  try {
    response = await dio.post(endpoint, data: data);
  } on DioException catch (error) {
    return left(error.response?.data["message"].toString() ??
        error.message ??
        "POST-$endpoint: Undetermined error!");
  }
  if (response.data is List) {
    return right({"data": response.data});
  }
  return right(response.data);
}

Future<Either<String, Map<String, dynamic>>> put(String endpoint,
    {Map? data}) async {
  Response response;
  try {
    response = await dio.put(endpoint, data: data);
  } on DioException catch (error) {
    return left(error.response?.data["message"] ??
        error.message ??
        "PUT-$endpoint: Undetermined error!");
  }
  if (response.data is List) {
    return right({"data": response.data});
  }
  return right(response.data);
}

Future<List<Cookie>> get cookies async {
  return await cookieJar.loadForRequest(Uri.parse(dio.options.baseUrl));
}

clearCookies() async {
  await cookieJar.deleteAll();
}
