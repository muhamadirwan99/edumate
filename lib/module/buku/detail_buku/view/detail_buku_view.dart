import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class DetailBukuView extends StatefulWidget {
  final String pdf;

  const DetailBukuView({
    super.key,
    required this.pdf,
  });

  Widget build(context, DetailBukuController controller) {
    controller.view = this;

    return Scaffold(
      appBar: CustomAppbar(
        appBar: AppBar(),
      ),
      body: Center(
        child: controller.isLoading
            ? const Center(child: CircularProgressIndicator())
            : PDFViewer(
                document: controller.document,
                lazyLoad: false,
                zoomSteps: 1,
                numberPickerConfirmWidget: const Text(
                  "Confirm",
                ),
              ),
      ),
    );
  }

  @override
  State<DetailBukuView> createState() => DetailBukuController();
}
