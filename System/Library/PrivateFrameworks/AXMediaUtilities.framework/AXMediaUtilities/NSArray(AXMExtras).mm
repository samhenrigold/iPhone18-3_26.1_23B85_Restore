@interface NSArray(AXMExtras)
+ (id)axmArrayByIgnoringNilElementsWithCount:()AXMExtras;
@end

@implementation NSArray(AXMExtras)

+ (id)axmArrayByIgnoringNilElementsWithCount:()AXMExtras
{
  v9 = a3;
  array = [MEMORY[0x1E695DF70] array];
  for (i = &a9; v9; --v9)
  {
    v11 = i++;
    if (*v11)
    {
      [array addObject:?];
    }
  }

  return array;
}

@end