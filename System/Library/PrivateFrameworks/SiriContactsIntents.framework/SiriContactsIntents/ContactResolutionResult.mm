@interface ContactResolutionResult
+ (id)confirmationRequiredWithContactToConfirm:(id)confirm;
+ (id)disambiguationWithContactsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedContact:(id)contact;
@end

@implementation ContactResolutionResult

+ (id)successWithResolvedContact:(id)contact
{
  swift_getObjCClassMetadata();
  contactCopy = contact;
  v5 = static ContactResolutionResult.success(with:)(contactCopy);

  return v5;
}

+ (id)disambiguationWithContactsToDisambiguate:(id)disambiguate
{
  type metadata accessor for Contact();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static ContactResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContactToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static ContactResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  type metadata accessor for INObject();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ContactResolutionResult.success(with:)(v3);
  static ContactResolutionResult.confirmationRequired(with:)(v4);
  return result;
}

@end