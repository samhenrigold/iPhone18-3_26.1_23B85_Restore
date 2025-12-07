@interface NSDictionary(PhotoLibraryServices)
- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices;
@end

@implementation NSDictionary(PhotoLibraryServices)

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
  v3 = ;

  return v3;
}

@end