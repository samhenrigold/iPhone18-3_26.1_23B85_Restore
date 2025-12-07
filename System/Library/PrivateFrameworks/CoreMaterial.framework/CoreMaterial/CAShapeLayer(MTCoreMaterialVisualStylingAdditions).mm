@interface CAShapeLayer(MTCoreMaterialVisualStylingAdditions)
- (void)mt_applyVisualStying:()MTCoreMaterialVisualStylingAdditions;
@end

@implementation CAShapeLayer(MTCoreMaterialVisualStylingAdditions)

- (void)mt_applyVisualStying:()MTCoreMaterialVisualStylingAdditions
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __75__CAShapeLayer_MTCoreMaterialVisualStylingAdditions__mt_applyVisualStying___block_invoke;
  v7 = &unk_1E80BDBB8;
  selfCopy = self;
  return [a3 _applyToLayer:? withColorBlock:?];
}

@end