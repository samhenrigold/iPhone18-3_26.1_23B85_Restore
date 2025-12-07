@interface NSString(NAUIAdditions)
- (BOOL)naui_containsCJKScripts;
@end

@implementation NSString(NAUIAdditions)

- (BOOL)naui_containsCJKScripts
{
  if (![self length])
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = NAUIIsCJKCharacter([self characterAtIndex:v2]);
    if (v3)
    {
      break;
    }

    ++v2;
  }

  while (v2 < [self length]);
  return v3;
}

@end