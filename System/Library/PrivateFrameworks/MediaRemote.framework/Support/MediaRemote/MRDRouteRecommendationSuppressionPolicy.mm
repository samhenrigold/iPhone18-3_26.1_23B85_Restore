@interface MRDRouteRecommendationSuppressionPolicy
- (MRDRouteRecommendationSuppressionPolicy)init;
- (NSString)reason;
@end

@implementation MRDRouteRecommendationSuppressionPolicy

- (NSString)reason
{
  if (*(self + OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_reason + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (MRDRouteRecommendationSuppressionPolicy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end