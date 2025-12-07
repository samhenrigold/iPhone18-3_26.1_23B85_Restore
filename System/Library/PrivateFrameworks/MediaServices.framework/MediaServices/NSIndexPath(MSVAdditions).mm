@interface NSIndexPath(MSVAdditions)
+ (id)msv_indexPathForItem:()MSVAdditions inSection:;
- (uint64_t)msv_item;
@end

@implementation NSIndexPath(MSVAdditions)

- (uint64_t)msv_item
{
  if ([self length] < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [self indexAtPosition:1];
}

+ (id)msv_indexPathForItem:()MSVAdditions inSection:
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = a4;
  v6[1] = a3;
  v4 = [objc_opt_class() indexPathWithIndexes:v6 length:2];

  return v4;
}

@end