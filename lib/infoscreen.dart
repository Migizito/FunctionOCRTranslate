import 'package:flutter/material.dart';
import 'package:ocrtt/model.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key, required this.textTT}) : super(key: key);
  final TextTranslate? textTT;
  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Traduccion"),
      ),
      body: Center(
          child: ListView(
        children: [
          Container(
            child: Text(widget.textTT!.textOrigen ?? ""),
          ),
          Container(
            child: Text(widget.textTT!.textTranslate ?? ""),
          ),
        ],
      )),
    );
  }
}
