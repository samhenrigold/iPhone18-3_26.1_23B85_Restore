@interface NSOrderedSet(PhotoLibraryServices)
- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices;
@end

@implementation NSOrderedSet(PhotoLibraryServices)

- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices
{
  if (objc_msgSend_count(self, a2))
  {
    pl_result_with_autoreleasepool();
  }

  else
  {
    PLEmptyContainerDescription();
  }
  v4 = ;

  return v4;
}

@end