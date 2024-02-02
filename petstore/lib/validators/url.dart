import 'package:dogs_core/dogs_core.dart';

typedef _CacheEntry = ({DogStructureField field, bool isIterable});

class UrlValidator extends StructureMetadata implements FieldValidator {
  const UrlValidator();

  @override
  AnnotationResult annotate(cached, value, DogEngine engine) {
    var record = cached as _CacheEntry;
    if (validate(cached, value, engine)) {
      return AnnotationResult.empty();
    }
    return AnnotationResult(messages: [
      AnnotationMessage(
        target: record.field.name,
        id: "url",
        message: "Invalid URL",
      )
    ]);
  }

  @override
  getCachedValue(DogStructure structure, DogStructureField field) {
    return (field: field, isIterable: field.iterableKind != IterableKind.none);
  }

  @override
  bool isApplicable(DogStructure structure, DogStructureField field) {
    return field.serial.typeArgument == String;
  }

  @override
  bool validate(cached, value, DogEngine engine) {
    var record = cached as _CacheEntry;
    if (record.isIterable) {
      return (value as Iterable<String>).every(validateSingle);
    }
    return validateSingle(value);
  }

  bool validateSingle(String value) {
    return Uri.tryParse(value) != null;
  }
}
