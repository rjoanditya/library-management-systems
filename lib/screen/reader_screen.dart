import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../model/document.dart';

class ReaderScreen extends StatefulWidget {
  ReaderScreen(this.doc, {Key? key}) : super(key: key);
  Document doc;

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          widget.doc.doc_title!,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: Container(
        child: SfPdfViewer.asset(widget.doc.doc_url!),
      )),
    );
  }
}
