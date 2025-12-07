@interface BorderImage
@end

@implementation BorderImage

void ____BorderImage_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  PLPhysicalScreenScale();
  if (v3 == 2.0)
  {
    v4 = @"PLImageBorder@2x";
  }

  else
  {
    v4 = @"PLImageBorder";
  }

  v5 = CGDataProviderCreateWithURL([v2 URLForResource:v4 withExtension:@"png"]);
  __BorderImage___borderImage = CGImageCreateWithPNGDataProvider(v5, 0, 1, kCGRenderingIntentDefault);

  CGDataProviderRelease(v5);
}

@end