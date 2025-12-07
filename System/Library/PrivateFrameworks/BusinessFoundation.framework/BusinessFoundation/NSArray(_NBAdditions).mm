@interface NSArray(_NBAdditions)
- (id)nb_safeObjectAtIndex:()_NBAdditions class:;
- (uint64_t)nb_safeArrayAtIndex:()_NBAdditions;
- (uint64_t)nb_safeDataAtIndex:()_NBAdditions;
- (uint64_t)nb_safeNumberAtIndex:()_NBAdditions;
- (uint64_t)nb_safeStringAtIndex:()_NBAdditions;
@end

@implementation NSArray(_NBAdditions)

- (id)nb_safeObjectAtIndex:()_NBAdditions class:
{
  if ([self count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [self objectAtIndex:a3];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (uint64_t)nb_safeStringAtIndex:()_NBAdditions
{
  v5 = objc_opt_class();

  return [self nb_safeObjectAtIndex:a3 class:v5];
}

- (uint64_t)nb_safeNumberAtIndex:()_NBAdditions
{
  v5 = objc_opt_class();

  return [self nb_safeObjectAtIndex:a3 class:v5];
}

- (uint64_t)nb_safeArrayAtIndex:()_NBAdditions
{
  v5 = objc_opt_class();

  return [self nb_safeObjectAtIndex:a3 class:v5];
}

- (uint64_t)nb_safeDataAtIndex:()_NBAdditions
{
  v5 = objc_opt_class();

  return [self nb_safeObjectAtIndex:a3 class:v5];
}

@end