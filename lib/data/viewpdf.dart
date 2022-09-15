 import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/foundation/key.dart';
//import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
//import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
//import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
class viewpdf extends StatefulWidget {
   viewpdf({Key? key,required pdfurl}) : super(key: key);
late String pdfurl;
  @override
  State<viewpdf> createState() => _viewpdfState();
}

class _viewpdfState extends State<viewpdf> {
  bool _isLoading = true;
//late PDFDocument document;
 
 @override
  void initState() {
    super.initState();
    loadDocument();
  }
loadDocument() async {
  _isLoading = false;
//document = await PDFDocument.fromURL('https://www.kindacode.com/wp-content/uploads/2021/07/test.pdf');
 
}


   
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: Center(
          child: _isLoading
              ? Center(child: CircularProgressIndicator())
              : const PdfView(path: 'https://www.kindacode.com/wp-content/uploads/2021/07/test.pdf'),),
    );
    
  }
}
