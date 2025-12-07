@interface NSDictionary(NSDictionaryAdditions)
- (void)objectForKey:()NSDictionaryAdditions matching:;
@end

@implementation NSDictionary(NSDictionaryAdditions)

- (void)objectForKey:()NSDictionaryAdditions matching:
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