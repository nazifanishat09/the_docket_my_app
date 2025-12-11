import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;

class DeleteNote{
  Future deleteNote({required int id})async{
    try {
    Uri u = Uri.parse("https://appapi.coderangon.com/api/notes/delete/$id");
    var r = await http.delete(u);
    if(r.statusCode == 200 ){
      EasyLoading.showSuccess("Deleted");
      return;
    }else if(
      r.statusCode == 404
    ){
      EasyLoading.showError("Data not found or Already Deleted");
    }
    return;

    }catch (e){

    }

  }
}