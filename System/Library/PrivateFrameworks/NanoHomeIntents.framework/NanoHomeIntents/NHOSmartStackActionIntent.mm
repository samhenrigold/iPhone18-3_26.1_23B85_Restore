@interface NHOSmartStackActionIntent
- (BOOL)useHomeKitRecommendations;
- (NSString)accessoriesAndScenes;
- (void)setAccessoriesAndScenes:(id)scenes;
- (void)setUseHomeKitRecommendations:(BOOL)recommendations;
@end

@implementation NHOSmartStackActionIntent

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

- (NSString)accessoriesAndScenes
{
  selfCopy = self;
  sub_25B161274();
  sub_25B161144();

  v3 = sub_25B161B24();

  return v3;
}

- (void)setAccessoriesAndScenes:(id)scenes
{
  sub_25B161B34();
  selfCopy = self;
  sub_25B161274();
  sub_25B161154();
}

@end