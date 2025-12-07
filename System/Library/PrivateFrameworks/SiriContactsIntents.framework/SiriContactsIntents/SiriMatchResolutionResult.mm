@interface SiriMatchResolutionResult
+ (id)confirmationRequiredWithSiriMatchToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithSiriMatchsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedSiriMatch:(id)match;
@end

@implementation SiriMatchResolutionResult

+ (id)successWithResolvedSiriMatch:(id)match
{
  swift_getObjCClassMetadata();
  matchCopy = match;
  v5 = static SiriMatchResolutionResult.success(with:)(matchCopy);

  return v5;
}

+ (id)disambiguationWithSiriMatchsToDisambiguate:(id)disambiguate
{
  type metadata accessor for SiriMatch();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static SiriMatchResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithSiriMatchToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static SiriMatchResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  type metadata accessor for INObject();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static SiriMatchResolutionResult.success(with:)(v3);
  static SiriMatchResolutionResult.confirmationRequired(with:)(v4);
  return result;
}

@end