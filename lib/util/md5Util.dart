import 'dart:convert';
import 'package:crypto/crypto.dart';

class MD5Util {
  static String generateMd5(String data) {
    var content = new Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    return digest.toString();
  }
}
