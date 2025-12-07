@interface NSMutableDictionary(AskPermission)
- (void)ap_setNullableObject:()AskPermission forKey:;
@end

@implementation NSMutableDictionary(AskPermission)

- (void)ap_setNullableObject:()AskPermission forKey:
{
  if (a3)
  {
    return [result setObject:? forKeyedSubscript:?];
  }

  return result;
}

@end