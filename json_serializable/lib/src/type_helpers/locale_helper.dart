// Copyright (c) 2019, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/type.dart';

import '../type_helper.dart';
import 'to_from_string.dart';

class LocaleHelper extends TypeHelper {
  const LocaleHelper();

  @override
  String serialize(
          DartType targetType, String expression, TypeHelperContext context) =>
      localeString.serialize(targetType, expression, context.nullable);

  @override
  String deserialize(
      DartType targetType, String expression, TypeHelperContext context) {
    final subtags = expression.split(RegExp('[-_]'));
    switch (subtags.length) {
      case 1:
        {
          expression = 'languageCode: ${subtags[0]}';
        }
        break;
      case 2:
        {
          expression = 'languageCode: ${subtags[0]}, scriptCode: ${subtags[1]}';
        }
        break;
      case 3:
        {
          expression =
              'languageCode: ${subtags[0]}, scriptCode: ${subtags[1]}, countryCode: ${subtags[2]}';
        }
        break;
      default: {
        return null;
      }  
    }
    return localeString.deserialize(
        targetType, expression, context.nullable, false);
  }
}
