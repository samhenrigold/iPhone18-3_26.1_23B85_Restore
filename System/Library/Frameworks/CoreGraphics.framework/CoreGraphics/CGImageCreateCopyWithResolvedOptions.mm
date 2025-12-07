@interface CGImageCreateCopyWithResolvedOptions
@end

@implementation CGImageCreateCopyWithResolvedOptions

uint64_t (*__CGImageCreateCopyWithResolvedOptions_block_invoke_4())(void)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageCopyJPEGData");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageCopyJPEGData");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageCopyJPEGData", v0);
  }

  CGImageCreateCopyWithResolvedOptions_f_92 = result;
  return result;
}

uint64_t (*__CGImageCreateCopyWithResolvedOptions_block_invoke_3())(void)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageDestinationFinalize");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageDestinationFinalize");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageDestinationFinalize", v0);
  }

  CGImageCreateCopyWithResolvedOptions_f_86 = result;
  return result;
}

@end