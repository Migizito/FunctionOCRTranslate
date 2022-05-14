import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ocrtt/model.dart';
import '/model.dart';

class ApiService {
  static Future<TextTranslate?> sendImage(filepath) async {
    var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            'http://functionocr.azurewebsites.net/api/Function1?langor=es&langto=en'));

    request.files.add(await http.MultipartFile.fromPath('image', filepath));

    http.Response response =
        await http.Response.fromStream(await request.send());

    var jsonData = jsonDecode(response.body);
    TextTranslate? textTt = TextTranslate.fromJson(jsonData);
    return textTt;
  }
}
