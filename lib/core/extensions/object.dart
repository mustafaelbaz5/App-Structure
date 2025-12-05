import 'package:flutter_structure/core/error/models/app_error.dart';
import 'package:flutter_structure/core/error/types/error_handler.dart';

extension ErrorHandlerExtension on Object {
  AppError toAppError() {
    return ErrorHandler.handle(this);
  }
}
