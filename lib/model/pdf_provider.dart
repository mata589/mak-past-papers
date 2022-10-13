import 'package:flutter/foundation.dart';

class pdfprovider with ChangeNotifier{
late String _pdfurl;

String get pdfurl => _pdfurl;

getpdfurl(url)async{
_pdfurl = await url;

notifyListeners();

}


}