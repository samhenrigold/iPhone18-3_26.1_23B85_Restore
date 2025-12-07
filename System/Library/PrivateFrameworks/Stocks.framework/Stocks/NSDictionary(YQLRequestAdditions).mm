@interface NSDictionary(YQLRequestAdditions)
- (void)yql_objectForKey:()YQLRequestAdditions ofClass:;
@end

@implementation NSDictionary(YQLRequestAdditions)

- (void)yql_objectForKey:()YQLRequestAdditions ofClass:
{
  v4 = [self objectForKey:a3];
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

@end