import 'package:asnan/localization/strings/arabic.dart';
import 'package:asnan/localization/strings/english.dart';
import 'package:get/get.dart';

class Localization implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'ar': Arabic.ar,
        'en': English.en,
      };
}
