// Observe state changes with BlocObserver.
// BlocProvider, Flutter widget which provides a bloc to its children.
// BlocBuilder, Flutter widget that handles building the widget in response to new states.
// Adding events with context.read.
// Prevent unnecessary rebuilds with Equatable.
// Use the transformEvents method with Rx.
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/app.dart';
import 'package:flutter_infinite_list/simple_bloc_observer.dart';

void main() {
  Bloc.observer = const SimpleBlocObserver();
  runApp(const App());
}