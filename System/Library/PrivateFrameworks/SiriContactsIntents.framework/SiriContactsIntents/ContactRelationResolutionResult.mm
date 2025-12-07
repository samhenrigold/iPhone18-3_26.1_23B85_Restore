@interface ContactRelationResolutionResult
+ (id)confirmationRequiredWithContactRelationToConfirm:(id)confirm;
+ (id)disambiguationWithContactRelationsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedContactRelation:(id)relation;
@end

@implementation ContactRelationResolutionResult

+ (id)successWithResolvedContactRelation:(id)relation
{
  swift_getObjCClassMetadata();
  relationCopy = relation;
  v5 = static ContactRelationResolutionResult.success(with:)(relationCopy);

  return v5;
}

+ (id)disambiguationWithContactRelationsToDisambiguate:(id)disambiguate
{
  type metadata accessor for ContactRelation();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static ContactRelationResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContactRelationToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static ContactRelationResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  type metadata accessor for INObject();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ContactRelationResolutionResult.success(with:)(v3);
  static ContactRelationResolutionResult.confirmationRequired(with:)(v4);
  return result;
}

@end