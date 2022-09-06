
import 'package:get/get.dart';

import 'languages/en.dart';
import 'languages/vi.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en': en, 'vi': vi};
}
