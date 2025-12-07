@interface CNPhotoLibraryProvider
+ (id)photoLibraryWithError:(id *)error;
@end

@implementation CNPhotoLibraryProvider

+ (id)photoLibraryWithError:(id *)error
{
  v4 = [getPHPhotoLibraryClass(self a2)];
  v5 = (getPHPhotoLibraryClass)();
  if (v4)
  {
    [(objc_class *)v5 openPhotoLibraryWithWellKnownIdentifier:1 error:error];
  }

  else
  {
    [(objc_class *)v5 sharedPhotoLibrary];
  }
  v6 = ;

  return v6;
}

@end