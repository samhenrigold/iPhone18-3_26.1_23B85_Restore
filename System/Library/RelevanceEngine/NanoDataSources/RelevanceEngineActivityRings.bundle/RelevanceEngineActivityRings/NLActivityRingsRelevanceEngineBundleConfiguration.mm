@interface NLActivityRingsRelevanceEngineBundleConfiguration
- (Class)dataSourceClassForKey:(id)key;
@end

@implementation NLActivityRingsRelevanceEngineBundleConfiguration

- (Class)dataSourceClassForKey:(id)key
{
  keyCopy = key;
  if (([keyCopy isEqualToString:RESampleDataSourceKey] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", REPrimaryDataSourceKey))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end