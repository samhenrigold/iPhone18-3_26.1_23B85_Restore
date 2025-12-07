@interface NSDictionary(TSUAdditions)
- (uint64_t)tsu_BOOLValueForKey:()TSUAdditions;
- (void)tsu_objectOfClass:()TSUAdditions forKey:;
@end

@implementation NSDictionary(TSUAdditions)

- (uint64_t)tsu_BOOLValueForKey:()TSUAdditions
{
  v1 = [self objectForKey:?];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (void)tsu_objectOfClass:()TSUAdditions forKey:
{
  result = [self objectForKey:a4];
  if (result)
  {

    return TSUDynamicCast(a3, result);
  }

  return result;
}

@end