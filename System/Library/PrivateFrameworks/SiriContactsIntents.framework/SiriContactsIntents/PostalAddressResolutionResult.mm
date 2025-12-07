@interface PostalAddressResolutionResult
+ (id)confirmationRequiredWithPostalAddressToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithPostalAddresssToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedPostalAddress:(id)address;
@end

@implementation PostalAddressResolutionResult

+ (id)successWithResolvedPostalAddress:(id)address
{
  swift_getObjCClassMetadata();
  addressCopy = address;
  v5 = static PostalAddressResolutionResult.success(with:)(addressCopy);

  return v5;
}

+ (id)disambiguationWithPostalAddresssToDisambiguate:(id)disambiguate
{
  type metadata accessor for PostalAddress();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static PostalAddressResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithPostalAddressToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static PostalAddressResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  type metadata accessor for INObject();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static PostalAddressResolutionResult.success(with:)(v3);
  static PostalAddressResolutionResult.confirmationRequired(with:)(v4);
  return result;
}

@end