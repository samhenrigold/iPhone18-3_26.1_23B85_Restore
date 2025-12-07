@interface CALayer
@end

@implementation CALayer

void *__70__CALayer_MTCoreMaterialVisualStylingAdditions__mt_applyVisualStying___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) contents];

  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 setContentsMultiplyColor:?];
  }

  else
  {

    return [v4 setBackgroundColor:?];
  }
}

@end