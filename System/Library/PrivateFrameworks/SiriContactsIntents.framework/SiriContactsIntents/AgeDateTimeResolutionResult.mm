@interface AgeDateTimeResolutionResult
+ (id)confirmationRequiredWithAgeDateTimeToConfirm:(id)confirm;
+ (id)disambiguationWithAgeDateTimesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedAgeDateTime:(id)time;
@end

@implementation AgeDateTimeResolutionResult

+ (id)successWithResolvedAgeDateTime:(id)time
{
  swift_getObjCClassMetadata();
  timeCopy = time;
  v5 = static AgeDateTimeResolutionResult.success(with:)(timeCopy);

  return v5;
}

+ (id)disambiguationWithAgeDateTimesToDisambiguate:(id)disambiguate
{
  type metadata accessor for AgeDateTime();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static AgeDateTimeResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithAgeDateTimeToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static AgeDateTimeResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  type metadata accessor for INObject();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static AgeDateTimeResolutionResult.success(with:)(v3);
  static AgeDateTimeResolutionResult.confirmationRequired(with:)(v4);
  return result;
}

@end