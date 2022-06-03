import 'package:flutter/material.dart';

abstract class SFWidget<S extends StatefulWidget> extends State<S> {
  final _logger = getIt<Logger>();

  @protected
  @override
  @mustCallSuper
  void initState() {
    super.initState();
  }

  @override
  @override
  @mustCallSuper
  void didChangeDependencies() {
    super.didChangeDependencies();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      onWidgetUpdate();
    });
  }

  @protected
  @override
  @mustCallSuper
  void dispose() {
    super.dispose();
  }

  @protected
  @mustCallSuper
  void throwException(
    BuildContext context,
    Exception exception, {
    StackTrace? stackTrace,
  }) =>
      _logger.setException(
        context,
        exception,
        stackTrace: stackTrace,
      );

  @protected
  @mustCallSuper
  void throwAlert(
    BuildContext context,
    String message, {
    String? title,
    StackTrace? stackTrace,
    Duration? duration,
  }) =>
      _logger.setAlert(
        context,
        message,
        title: title,
        duration: duration,
      );

  Future<void> onInitApp() async {}

  Future<void> onWidgetUpdate() async {}
}
