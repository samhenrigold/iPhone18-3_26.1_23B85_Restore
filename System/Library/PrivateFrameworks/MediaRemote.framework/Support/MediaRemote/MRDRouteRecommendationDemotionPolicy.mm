@interface MRDRouteRecommendationDemotionPolicy
- (MRDRouteRecommendationDemotionPolicy)init;
- (NSString)reason;
@end

@implementation MRDRouteRecommendationDemotionPolicy

- (NSString)reason
{
  if (*(self + OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (MRDRouteRecommendationDemotionPolicy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end