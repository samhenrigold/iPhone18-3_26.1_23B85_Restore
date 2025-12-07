@interface TelemetryHelpers
+ (void)emitFileResidentInfoWithAssetIdentifier:(id)identifier residentPages:(int64_t)pages totalPages:(int64_t)totalPages;
- (_TtC24TokenGenerationInference16TelemetryHelpers)init;
@end

@implementation TelemetryHelpers

+ (void)emitFileResidentInfoWithAssetIdentifier:(id)identifier residentPages:(int64_t)pages totalPages:(int64_t)totalPages
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v15[-v9];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  type metadata accessor for EventReporter();
  swift_allocObject();
  EventReporter.init()();
  v16 = v11;
  v17 = v13;
  pagesCopy = pages;
  totalPagesCopy = totalPages;
  EventReporter.send(eventBuiltWithPresetsAnd:)();

  v14 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  outlined destroy of GenerativeFunctionsInstrumentationEvent?(v10);
}

- (_TtC24TokenGenerationInference16TelemetryHelpers)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TelemetryHelpers *)&v3 init];
}

@end