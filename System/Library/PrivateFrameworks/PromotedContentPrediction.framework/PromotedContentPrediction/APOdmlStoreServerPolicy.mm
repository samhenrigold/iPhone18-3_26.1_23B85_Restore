@interface APOdmlStoreServerPolicy
- (id)allowableClassesForClientWithContext:(id)context;
@end

@implementation APOdmlStoreServerPolicy

- (id)allowableClassesForClientWithContext:(id)context
{
  v3 = MEMORY[0x277CBEB98];
  v4 = +[APOdmlFeatureValueTransformer allowedTopLevelClasses];
  v5 = [v3 setWithArray:v4];

  return v5;
}

@end