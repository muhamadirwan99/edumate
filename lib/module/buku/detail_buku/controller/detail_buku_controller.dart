import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:edumate/core.dart';
import '../view/detail_buku_view.dart';

class DetailBukuController extends State<DetailBukuView> {
  static late DetailBukuController instance;
  late DetailBukuView view;

  bool isLoading = true;
  late PDFDocument document;

  loadDocument(String pdf) async {
    document = await PDFDocument.fromAsset(pdf);

    setState(() => isLoading = false);
  }

  @override
  void initState() {
    instance = this;
    loadDocument(widget.pdf);
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
