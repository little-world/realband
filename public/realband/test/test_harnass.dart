
import 'package:unittest/unittest.dart';
import 'package:unittest/html_enhanced_config.dart';
import 'test_email.dart' as tests;

import 'student_test.dart' as std;

main() {
  useHtmlEnhancedConfiguration();
  //tests.main();
  std.main();
}