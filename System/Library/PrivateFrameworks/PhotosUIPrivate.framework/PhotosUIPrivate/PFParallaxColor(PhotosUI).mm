@interface PFParallaxColor(PhotosUI)
+ (id)pu_parallaxColorWithHue:()PhotosUI chroma:lumaVariation:;
+ (id)pu_parallaxColorWithHue:()PhotosUI toneVariation:;
+ (id)pu_parallaxColorWithLuma:()PhotosUI hue:chromaVariation:;
+ (id)pu_parallaxColorWithUIColor:()PhotosUI;
- (double)pu_chromaVariation;
- (double)pu_lumaVariation;
- (double)pu_toneVariation;
- (uint64_t)pu_UIColor;
@end

@implementation PFParallaxColor(PhotosUI)

- (double)pu_chromaVariation
{
  [MEMORY[0x1E69BDE90] lowKeyTone];
  [MEMORY[0x1E69BDE90] highKeyTone];
  [self chroma];
  PXMapValueFromRangeToNewRange();

  PXClamp();
  return result;
}

- (double)pu_lumaVariation
{
  [MEMORY[0x1E69BDE90] lowKeyTone];
  [MEMORY[0x1E69BDE90] highKeyTone];
  [self luma];
  PXMapValueFromRangeToNewRange();

  PXClamp();
  return result;
}

- (double)pu_toneVariation
{
  [MEMORY[0x1E69BDE90] lowKeyTone];
  [MEMORY[0x1E69BDE90] highKeyTone];
  [self tone];
  PXMapValueFromRangeToNewRange();

  PXClamp();
  return result;
}

- (uint64_t)pu_UIColor
{
  v1 = MEMORY[0x1E69DC888];
  cGColor = [self CGColor];

  return [v1 colorWithCGColor:cGColor];
}

+ (id)pu_parallaxColorWithLuma:()PhotosUI hue:chromaVariation:
{
  [MEMORY[0x1E69BDE90] lowKeyTone];
  [MEMORY[0x1E69BDE90] highKeyTone];
  PXMapValueFromRangeToNewRange();
  v5 = [objc_alloc(MEMORY[0x1E69C0750]) initWithLuma:self hue:a2 chroma:v4];

  return v5;
}

+ (id)pu_parallaxColorWithHue:()PhotosUI chroma:lumaVariation:
{
  [MEMORY[0x1E69BDE90] lowKeyTone];
  [MEMORY[0x1E69BDE90] highKeyTone];
  PXMapValueFromRangeToNewRange();
  v5 = [objc_alloc(MEMORY[0x1E69C0750]) initWithLuma:v4 hue:self chroma:a2];

  return v5;
}

+ (id)pu_parallaxColorWithHue:()PhotosUI toneVariation:
{
  [MEMORY[0x1E69BDE90] lowKeyTone];
  [MEMORY[0x1E69BDE90] highKeyTone];
  PXMapValueFromRangeToNewRange();
  v3 = [objc_alloc(MEMORY[0x1E69C0750]) initWithHue:self tone:v2];

  return v3;
}

+ (id)pu_parallaxColorWithUIColor:()PhotosUI
{
  v4 = a3;
  if (a3)
  {
    v4 = [MEMORY[0x1E69C0750] colorWithCGColor:{objc_msgSend(a3, "CGColor")}];
    v3 = vars8;
  }

  return v4;
}

@end