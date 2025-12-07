@interface BMPoirotSchematizerShim
+ (BOOL)setSQLiteValueIn:(id)in withFieldNumber:(int64_t)number typeRawValue:(int64_t)value convertedTypeRawValue:(int64_t)rawValue sqliteContext:(void *)context error:(id *)error;
+ (BOOL)setSQLiteValueIn:(id)in withFieldPath:(id)path typeRawValue:(int64_t)value convertedTypeRawValue:(int64_t)rawValue sqliteContext:(void *)context error:(id *)error;
+ (id)searchValueIn:(id)in withFieldNumber:(int64_t)number typeRawValue:(int64_t)value error:(id *)error;
+ (id)searchValueIn:(id)in withFieldPath:(id)path typeRawValue:(int64_t)value error:(id *)error;
+ (id)searchValuesIn:(id)in withFieldNumber:(int64_t)number typeRawValue:(int64_t)value error:(id *)error;
@end

@implementation BMPoirotSchematizerShim

+ (id)searchValueIn:(id)in withFieldNumber:(int64_t)number typeRawValue:(int64_t)value error:(id *)error
{
  inCopy = in;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  swift_getObjCClassMetadata();
  static BMPoirotSchematizerShim.searchValue(in:withFieldNumber:typeRawValue:error:)(v10, v12, number, value, error, v20);
  outlined consume of Data._Representation(v10, v12);
  v13 = v21;
  if (v21)
  {
    v14 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v15 = *(v13 - 8);
    MEMORY[0x1EEE9AC00](v14, v14);
    v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v17);
    v18 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v15 + 8))(v17, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)searchValueIn:(id)in withFieldPath:(id)path typeRawValue:(int64_t)value error:(id *)error
{
  inCopy = in;
  pathCopy = path;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  static BMPoirotSchematizerShim.searchValue(in:withFieldPath:typeRawValue:error:)(v11, v13, v14, value, error, v22);

  outlined consume of Data._Representation(v11, v13);
  v15 = v23;
  if (v23)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = *(v15 - 8);
    MEMORY[0x1EEE9AC00](v16, v16);
    v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)searchValuesIn:(id)in withFieldNumber:(int64_t)number typeRawValue:(int64_t)value error:(id *)error
{
  inCopy = in;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  swift_getObjCClassMetadata();
  v13 = static BMPoirotSchematizerShim.searchValues(in:withFieldNumber:typeRawValue:error:)(v10, v12, number, value, error);
  outlined consume of Data._Representation(v10, v12);

  return v13;
}

+ (BOOL)setSQLiteValueIn:(id)in withFieldNumber:(int64_t)number typeRawValue:(int64_t)value convertedTypeRawValue:(int64_t)rawValue sqliteContext:(void *)context error:(id *)error
{
  swift_getObjCClassMetadata();
  inCopy = in;
  static BMPoirotSchematizerShim.setSQLiteValue(in:withFieldNumber:typeRawValue:convertedTypeRawValue:sqliteContext:)(inCopy, number, value, rawValue, context);

  return 1;
}

+ (BOOL)setSQLiteValueIn:(id)in withFieldPath:(id)path typeRawValue:(int64_t)value convertedTypeRawValue:(int64_t)rawValue sqliteContext:(void *)context error:(id *)error
{
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  inCopy = in;
  static BMPoirotSchematizerShim.setSQLiteValue(in:withFieldPath:typeRawValue:convertedTypeRawValue:sqliteContext:)(inCopy, v12, value, rawValue, context);

  return 1;
}

@end