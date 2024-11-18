import 'package:logger/logger.dart';

class SLoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level:Level.debug,
  );

  static void debug(String massage) {
    _logger.d(massage);
  }

  static void info(String massage) {
    _logger.i(massage);
  }

  static void warning(String massage) {
    _logger.w(massage);
  }

  static void error(String massage, [dynamic error]) {
    _logger.e(massage, error: error, stackTrace: StackTrace.current);
  }
}