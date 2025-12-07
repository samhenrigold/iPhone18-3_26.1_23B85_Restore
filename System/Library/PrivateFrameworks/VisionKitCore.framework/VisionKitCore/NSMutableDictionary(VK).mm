@interface NSMutableDictionary(VK)
- (void)vk_addEntriesFromNonNilDictionary:()VK;
- (void)vk_removeObjectForNonNilKey:()VK;
- (void)vk_setNonNilObject:()VK forKey:;
- (void)vk_setNonNilObject:()VK forNonNilKey:;
@end

@implementation NSMutableDictionary(VK)

- (void)vk_removeObjectForNonNilKey:()VK
{
  if (a3)
  {
    return [result removeObjectForKey:?];
  }

  return result;
}

- (void)vk_addEntriesFromNonNilDictionary:()VK
{
  if (a3)
  {
    return [result addEntriesFromDictionary:?];
  }

  return result;
}

- (void)vk_setNonNilObject:()VK forKey:
{
  if (a3)
  {
    return [result setObject:? forKeyedSubscript:?];
  }

  return result;
}

- (void)vk_setNonNilObject:()VK forNonNilKey:
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