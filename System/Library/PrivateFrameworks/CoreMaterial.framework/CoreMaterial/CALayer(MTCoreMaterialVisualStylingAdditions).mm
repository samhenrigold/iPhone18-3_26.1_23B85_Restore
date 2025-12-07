@interface CALayer(MTCoreMaterialVisualStylingAdditions)
- (void)mt_applyVisualStying:()MTCoreMaterialVisualStylingAdditions;
- (void)mt_removeAllVisualStyling;
- (void)mt_replaceAllVisualStylingWithStyling:()MTCoreMaterialVisualStylingAdditions;
@end

@implementation CALayer(MTCoreMaterialVisualStylingAdditions)

- (void)mt_removeAllVisualStyling
{
  [self setCompositingFilter:?];

  return [self setFilters:?];
}

- (void)mt_applyVisualStying:()MTCoreMaterialVisualStylingAdditions
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __70__CALayer_MTCoreMaterialVisualStylingAdditions__mt_applyVisualStying___block_invoke;
  v7 = &unk_1E80BDBB8;
  selfCopy = self;
  return [a3 _applyToLayer:? withColorBlock:?];
}

- (void)mt_replaceAllVisualStylingWithStyling:()MTCoreMaterialVisualStylingAdditions
{
  v4 = a3;
  [self mt_removeAllVisualStyling];
  [self mt_applyVisualStying:?];
}

@end