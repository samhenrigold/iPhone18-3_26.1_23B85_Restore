@interface NHOActionSetIntent
- (BOOL)useHomeKitRecommendations;
- (void)setUseHomeKitRecommendations:(BOOL)recommendations;
@end

@implementation NHOActionSetIntent

- (BOOL)useHomeKitRecommendations
{
  selfCopy = self;
  sub_25B161274();
  sub_25B161144();

  return v4;
}

- (void)setUseHomeKitRecommendations:(BOOL)recommendations
{
  selfCopy = self;
  sub_25B161274();
  sub_25B161154();
}

@end