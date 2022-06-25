import 'package:flutter/material.dart';

class DefaultLayout extends StatefulWidget {
  final String? title;
  final Widget body;
  final FloatingActionButton? floatingActionButton;

  DefaultLayout({
    this.title,
    required this.body,
    this.floatingActionButton,
  });

  @override
  State<DefaultLayout> createState() => _DefaultLayoutState();
}

class _DefaultLayoutState extends State<DefaultLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title == null ? 'flutter basic' : widget.title!),
      ),
      body: widget.body,
      floatingActionButton: widget.floatingActionButton,
    );
  }
}
