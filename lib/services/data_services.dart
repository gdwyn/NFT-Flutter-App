import 'dart:convert';

import 'package:http/http.dart' as http;

class DataServices {
  String baseURL = "http://mark.bslemeiyu.com/api";
  getInfo() async {
    var apiURL = '/getplaces';
    http.Response res = await http.get(Uri.parse(baseURL + apiURL));

    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
      }
    } catch (e) {
      print(e);
    }
  }
}
