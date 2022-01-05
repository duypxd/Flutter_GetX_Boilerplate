import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get_connect/http/src/request/request.dart';
import 'package:getx_boilerplate/models/response/error_response.dart';
import 'package:getx_boilerplate/shared/utils/common_widget.dart';

FutureOr<dynamic> responseInterceptor(
    Request request, Response response) async {
  EasyLoading.dismiss();

  if (response.statusCode != 200) {
    handleErrorStatus(response);
    return;
  }

  return response;
}

void handleErrorStatus(Response response) {
  switch (response.statusCode) {
    case 400:
      final message = ErrorResponse.fromJson(response.body);
      CommonWidget.toast(message.error);
      break;
    default:
  }

  return;
}
