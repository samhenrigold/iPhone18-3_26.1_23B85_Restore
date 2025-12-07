@interface NHOAccessoryIntent
- (BOOL)useHomeKitRecommendations;
- (NSString)description;
- (void)setUseHomeKitRecommendations:(BOOL)recommendations;
@end

@implementation NHOAccessoryIntent

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

- (NSString)description
{
  selfCopy = self;
  NHOAccessoryIntent.description.getter();

  v3 = sub_25B161B24();

  return v3;
}

@end