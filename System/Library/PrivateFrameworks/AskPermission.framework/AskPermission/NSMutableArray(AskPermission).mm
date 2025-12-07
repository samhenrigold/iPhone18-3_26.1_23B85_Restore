@interface NSMutableArray(AskPermission)
- (void)ap_addNullableObject:()AskPermission;
@end

@implementation NSMutableArray(AskPermission)

- (void)ap_addNullableObject:()AskPermission
{
  if (a3)
  {
    return [result addObject:?];
  }

  return result;
}

@end