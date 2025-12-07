@interface NSDictionary(TVMLKitAdditions)
- (id)tv_arrayForKey:()TVMLKitAdditions;
- (id)tv_dictionaryForKey:()TVMLKitAdditions;
- (id)tv_lookupValueForKey:()TVMLKitAdditions expectedClass:;
- (id)tv_numberForKey:()TVMLKitAdditions;
- (id)tv_stringForKey:()TVMLKitAdditions;
- (uint64_t)tv_BOOLForKey:()TVMLKitAdditions defaultValue:;
@end

@implementation NSDictionary(TVMLKitAdditions)

- (id)tv_lookupValueForKey:()TVMLKitAdditions expectedClass:
{
  v4 = [self objectForKey:a3];
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

- (id)tv_stringForKey:()TVMLKitAdditions
{
  v4 = a3;
  v5 = [self tv_lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)tv_dictionaryForKey:()TVMLKitAdditions
{
  v4 = a3;
  v5 = [self tv_lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)tv_arrayForKey:()TVMLKitAdditions
{
  v4 = a3;
  v5 = [self tv_lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)tv_numberForKey:()TVMLKitAdditions
{
  v4 = a3;
  v5 = [self tv_lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (uint64_t)tv_BOOLForKey:()TVMLKitAdditions defaultValue:
{
  v5 = [self objectForKey:a3];
  if (objc_opt_respondsToSelector())
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

@end