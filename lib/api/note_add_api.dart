import 'dart:developer';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;

class NoteAdd {
  static Future<void> addNote({required String data}) async {
    try {
      Uri u = Uri.parse("https://appapi.coderangon.com/api/notes/add");
      var b = {'note': data};
      var h = {'Accept': 'application/json'};
      var r = await http.post(u, body: b, headers: h);
      if (r.statusCode == 200) {
        EasyLoading.showSuccess("Note Added");
        return;
      } else {
        EasyLoading.showError("Somthing wrong");
      }
    } catch (e) {log("🙄🙄🙄🙄🙄🙄$e");}
  }
}
