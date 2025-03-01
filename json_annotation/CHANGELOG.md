## 3.0.0

- **BREAKING** Removed `JsonSerializable.useWrappers` and associated
  `$`-prefixed helpers.
- **BREAKING** Removed `JsonSerializable.generateToJsonFunction`.
- **BREAKING** Removed `encodeEmptyCollection` from `JsonSerializable` and
  `JsonKey`.
- Added `JsonSerializable.ignoreUnannotated`.
- Added `JsonKey.unknownEnumValue`.
- Require at least Dart `2.3.0`.

## 2.4.0

- Deprecate members that will be removed in `json_annotation` `3.0.0` and that
  are not supported in `json_serializable` `3.0.0`.
  - `JsonSerializable.useWrappers` and associated `$`-prefixed helpers
  - `JsonSerializable.generateToJsonFunction`,
  - `encodeEmptyCollection` from `JsonSerializable` and `JsonKey`.

## 2.3.0

- Added `pascal` as an additional `fieldRename` option.
- Require at least Dart `2.2.0`.

## 2.2.0

* Add an optional (named) `badKey` parameter and field to
  `CheckedFromJsonException`.

## 2.1.0

* Require at least Dart `2.1.1`.

* Added to `encodeEmptyCollection` to `JsonKey` and `JsonSerializable`.

* `JsonSerializable.fromJson` now throws `CheckedFromJsonException` on errors.
  This is potentially a breaking change. 

* Added a more helpful `toString` to `CheckedFromJsonException`.

## 2.0.0

* **Potentially Breaking** `JsonSerializable` no longer sets default values for
  fields when constructor arguments are unset or `null`. This is not likely an
  issue for developers using this class as an annotation with a compatible
  version of `package:json_serializable`, but it may cause issues if class is
  used in other contexts.

* Support all `build.yaml` configuration options on classes by adding a number
  of fields to `JsonSerializable`: `anyMap`, `checked`, `explicitToJson`,
  `generateToJsonFunction`, and `useWrappers`.

## 1.2.0

* Added `JsonConverter` class to support custom conversion of types.

## 1.1.0

* Added the `fieldRename` option to `JsonSerializable` and the associated
  `FieldRename` enum.

## 1.0.0

* Added `JsonValue` class for annotating `enum` fields with a custom
  serialization value.

* Removed `$checkAllowedKeys`, `$enumDecode` and `$enumDecodeNullable` which are
  no longer needed by the latest release of `package:json_serializable`.

## 0.2.9+1

* Support the Dart 2.0 stable release.

## 0.2.9

* When `FormatException` is caught in "checked mode", use the `message`
  property when creating `CheckedFromJsonException`.

## 0.2.8

* Added `$checkKeys` helper function and deprecated `$checkAllowedKeys`.
  Upgrading to the latest `json_serializable` and re-running your build will
  eliminate any `@deprecated` hints you see.

* Added `BadKeyException` exception which is the abstract super class for
  `MissingRequiredKeysException`, `UnrecognizedKeysException`, and
  `DisallowedNullValueException`.

* Added `JsonKey.required` field and an associated
  `MissingRequiredKeysException` that is thrown when `required` fields don't
  have corresponding keys in a source JSON map.

* Added `JsonKey.disallowNullValue`  field and an associated
  `DisallowedNullValueException` that is thrown when corresponding keys exist in
  a source JSON map, but their values are `null`.

* Updated documentation of `JsonSerializable.createToJson` to include details
  of the new `generate_to_json_function` configuration option.

## 0.2.7+1

* Small improvement to `UnrecognizedKeysException.message` output and
  documentation comments.

## 0.2.7

* Added `JsonSerializable.disallowUnrecognizedKeys`.
  * Added a helper function to support this option. This function starts with a
    `$` and should only be referenced by generated code. It is not meant for
    direct use.
  * Added `UnrecognizedKeysException` for reporting errors.

## 0.2.6

* `CheckedFromJsonException`
  * Added a public constructor to support hand-written JSON decoding logic.
  * The `message` property is now `String` (instead of `Object`).

* Added `JsonKey.defaultValue`.

* Added helpers for deserialization of `enum` values.
  These functions starting with `$` are  referenced by generated code.
  They are not meant for direct use.

## 0.2.5

* Added `CheckedFromJsonException` which is thrown by code generated when
 `checked` is enabled in `json_serializable`.

* Added functions to support the `checked` generation option.
  These functions starting with `$` are referenced by generated code.
  They are not meant for direct use.

## 0.2.4

* Added `fromJson` and `toJson` fields to `JsonKey` class.

## 0.2.3

* Added `ignore` field to `JsonKey` class annotation

## 0.2.2

* Added a helper class – `$JsonMapWrapper` – and helper functions – `$wrapMap`,
  `$wrapMapHandleNull`, `$wrapList`, and `$wrapListHandleNull` – to support
  the `useWrappers` option added to `JsonSerializableGenerator` in `v0.3.0` of
  `package:json_serializable`.

## 0.2.1

* `JsonSerializable` class annotation
  * Added `nullable` field.
  * Fixed doc comment.

## 0.2.0

* Moved annotation classes for `JsonSerializable` and `JsonLiteral`.
