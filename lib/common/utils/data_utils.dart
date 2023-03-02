import 'dart:convert';

import 'package:actual_two/common/const/data.dart';

class DataUtils {

  static DateTime StringToDateTime(String val){
    return DateTime.parse(val);
  }

  static String pathToUrl(String val) {
    return 'http://$ip$val';
  }

  static List<String> listPathsToUrls(List paths){
    return paths.map((e) => pathToUrl(e)).toList();
  }

  static String plainToBase64(String plain){
    Codec<String, String> stringToBase64 = utf8.fuse(base64);

    String encoded = stringToBase64.encode(plain);

    return encoded;
  }
}