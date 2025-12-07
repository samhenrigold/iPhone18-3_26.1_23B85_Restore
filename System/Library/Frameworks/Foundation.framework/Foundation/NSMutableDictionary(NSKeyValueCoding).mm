@interface NSMutableDictionary(NSKeyValueCoding)
- (uint64_t)setValue:()NSKeyValueCoding forKey:;
@end

@implementation NSMutableDictionary(NSKeyValueCoding)

- (uint64_t)setValue:()NSKeyValueCoding forKey:
{
  if (a3)
  {
    return [self setObject:a3 forKey:a4];
  }

  else
  {
    return [self removeObjectForKey:a4];
  }
}

@end