import 'package:logger/logger.dart';

class Log {
  static final logger = Logger(printer: PrettyPrinter(colors: true));

  static void d(messages) {
    return Logger().d(messages);
  }

  static void e(messages) {
    return Logger().e(messages);
  }

  static void i(messages) {
    return Logger().i(messages);
  }

  static void w(messages) {
    return Logger().w(messages);
  }
}
