import 'package:flutter/material.dart';

class ControlStateView {
  success(Widget widgetSuccess) {
    return widgetSuccess;
  }

  loading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  error(Function onPressedError) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressedError,
        child: Text('Tentar Novamente'),
        style: ElevatedButton.styleFrom(primary: Colors.orange),
      ),
    );
  }

  start() {
    return Container();
  }
}

enum StateView { start, success, error, loading }
