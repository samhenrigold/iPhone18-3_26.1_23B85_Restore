@interface NSDictionary(NPKSafeObjects)
- (void)npk_objectForKey:()NPKSafeObjects class:;
@end

@implementation NSDictionary(NPKSafeObjects)

- (void)npk_objectForKey:()NPKSafeObjects class:
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