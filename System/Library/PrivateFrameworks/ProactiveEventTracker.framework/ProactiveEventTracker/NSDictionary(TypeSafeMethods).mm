@interface NSDictionary(TypeSafeMethods)
- (id)pet_arrayForKey:()TypeSafeMethods;
- (id)pet_dictForKey:()TypeSafeMethods;
- (id)pet_numForKey:()TypeSafeMethods;
- (id)pet_strForKey:()TypeSafeMethods;
- (void)pet_objectForKey:()TypeSafeMethods class:;
@end

@implementation NSDictionary(TypeSafeMethods)

- (id)pet_arrayForKey:()TypeSafeMethods
{
  v4 = a3;
  v5 = [self pet_objectForKey:v4 class:objc_opt_class()];

  return v5;
}

- (id)pet_dictForKey:()TypeSafeMethods
{
  v4 = a3;
  v5 = [self pet_objectForKey:v4 class:objc_opt_class()];

  return v5;
}

- (id)pet_numForKey:()TypeSafeMethods
{
  v4 = a3;
  v5 = [self pet_objectForKey:v4 class:objc_opt_class()];

  return v5;
}

- (id)pet_strForKey:()TypeSafeMethods
{
  v4 = a3;
  v5 = [self pet_objectForKey:v4 class:objc_opt_class()];

  return v5;
}

- (void)pet_objectForKey:()TypeSafeMethods class:
{
  v4 = [self objectForKey:a3];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

@end