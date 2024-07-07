import 'package:edumate/core.dart';

class PembahasanDatabase {
  static String? kdPembahasan;

  static load() async {
    kdPembahasan = mainStorage.get("kdPembahasan");
  }

  static save(
    String? kdPembahasan,
  ) async {
    mainStorage.put("kdPembahasan", kdPembahasan);
    PembahasanDatabase.kdPembahasan = kdPembahasan;
  }
}
