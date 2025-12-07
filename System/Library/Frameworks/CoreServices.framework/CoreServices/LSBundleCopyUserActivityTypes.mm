@interface LSBundleCopyUserActivityTypes
@end

@implementation LSBundleCopyUserActivityTypes

void ___LSBundleCopyUserActivityTypes_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [(_LSDatabase *)*(a1 + 32) store];
  v4 = _CSStringCopyCFString();
  if (v4)
  {
    v5 = v4;
    CFSetAddValue(*(a1 + 40), v4);

    CFRelease(v5);
  }
}

@end