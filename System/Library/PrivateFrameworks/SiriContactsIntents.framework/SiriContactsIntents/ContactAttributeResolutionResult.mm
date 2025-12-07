@interface ContactAttributeResolutionResult
+ (id)confirmationRequiredWithContactAttributeToConfirm:(id)confirm;
+ (id)disambiguationWithContactAttributesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedContactAttribute:(id)attribute;
@end

@implementation ContactAttributeResolutionResult

+ (id)successWithResolvedContactAttribute:(id)attribute
{
  swift_getObjCClassMetadata();
  attributeCopy = attribute;
  v5 = static ContactAttributeResolutionResult.success(with:)(attributeCopy);

  return v5;
}

+ (id)disambiguationWithContactAttributesToDisambiguate:(id)disambiguate
{
  type metadata accessor for ContactAttribute();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContactAttributeToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static ContactAttributeResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  type metadata accessor for INObject();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ContactAttributeResolutionResult.success(with:)(v3);
  static ContactAttributeResolutionResult.confirmationRequired(with:)(v4);
  return result;
}

@end