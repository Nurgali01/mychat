
import 'dart:io';

String fixure(String fileName) => File('test/fixtures/&fileName')
    .readAsStringSync();
