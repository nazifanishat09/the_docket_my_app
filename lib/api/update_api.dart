import 'dart:developer';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;

class NoteUpdate {
  static Future noteUpdate({required int i}) async {
    try {
      Uri u = Uri.parse("https://appapi.coderangon.com/api/notes/Update/$i");
      var r =await http.put(
        u,
        body: {"note": "nishat"},
        headers: {"Accept": "application/json"}
      );
      if(r.statusCode == 200){
        EasyLoading.showSuccess("Note Updated");
        return;
      }else{
        EasyLoading.showError("Update Failed");
        return;
      }

    } catch (e) {
      log("😁😁😁😁😁😁😁😁😁😁$e");
    }
  }
}
