@interface NSMutableDictionary(ITK)
- (void)itk_addEntriesFromNonNilDictionary:()ITK;
- (void)itk_removeObjectForNonNilKey:()ITK;
- (void)itk_setNonNilObject:()ITK forKey:;
- (void)itk_setNonNilObject:()ITK forNonNilKey:;
@end

@implementation NSMutableDictionary(ITK)

- (void)itk_removeObjectForNonNilKey:()ITK
{
  if (a3)
  {
    return [result removeObjectForKey:?];
  }

  return result;
}

- (void)itk_addEntriesFromNonNilDictionary:()ITK
{
  if (a3)
  {
    return [result addEntriesFromDictionary:?];
  }

  return result;
}

- (void)itk_setNonNilObject:()ITK forKey:
{
  if (a3)
  {
    return [result setObject:? forKeyedSubscript:?];
  }

  return result;
}

- (void)itk_setNonNilObject:()ITK forNonNilKey:
{
  if (a3)
  {
    if (a4)
    {
      return [result setObject:? forKeyedSubscript:?];
    }
  }

  return result;
}

@end