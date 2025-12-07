@interface CGImageCreateWithPNGDataProvider
@end

@implementation CGImageCreateWithPNGDataProvider

uint64_t (*__CGImageCreateWithPNGDataProvider_block_invoke_2())(void)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageSourceGetType");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceGetType");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageSourceGetType", v0);
  }

  CGImageCreateWithPNGDataProvider_f_2 = result;
  return result;
}

@end