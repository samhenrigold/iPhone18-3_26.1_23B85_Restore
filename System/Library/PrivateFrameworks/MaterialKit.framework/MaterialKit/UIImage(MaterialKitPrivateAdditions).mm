@interface UIImage(MaterialKitPrivateAdditions)
+ (id)mt_resizableShadowTemplateImageWithAttributes:()MaterialKitPrivateAdditions scale:maskCornerRadius:continuousCorners:maskSize:;
- (id)_mt_imageWithShadowWithAttributes:()MaterialKitPrivateAdditions userInterfaceStyle:;
- (id)mt_imageWithDefaultShadowAttributesForUserInterfaceStyle:()MaterialKitPrivateAdditions;
@end

@implementation UIImage(MaterialKitPrivateAdditions)

+ (id)mt_resizableShadowTemplateImageWithAttributes:()MaterialKitPrivateAdditions scale:maskCornerRadius:continuousCorners:maskSize:
{
  MTDimensionsForContinuousCornerRadiusInBounds();
  v13 = v12;
  v15 = v14;
  MTResizableAreaForCornerDimensionsInBounds();
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:*a7, *(a7 + 1), *(a7 + 2), *(a7 + 3), *&self, *&a2, a8, v13, v15, v16, v17];
  v19 = +[MTMappedImageCache sharedCache];
  v26 = v18;
  v20 = v18;
  v21 = [v19 imageForKey:? generatingIfNecessaryWithBlock:?];

  v22 = [mt_resizableShadowTemplateImageWithAttributes_scale_maskCornerRadius_continuousCorners_maskSize____keysToCapInsets objectForKeyedSubscript:?];
  [v22 UIEdgeInsetsValue];
  v23 = [v21 resizableImageWithCapInsets:?];
  v24 = [v23 imageWithRenderingMode:?];

  return v24;
}

- (id)_mt_imageWithShadowWithAttributes:()MaterialKitPrivateAdditions userInterfaceStyle:
{
  selfCopy = self;
  v6 = selfCopy;
  if (*a3 > 0.0)
  {
    [selfCopy size];
    v7 = objc_alloc(MEMORY[0x277D75560]);
    preferredFormat = [MEMORY[0x277D75568] preferredFormat];
    v9 = [v7 initWithSize:? format:?];

    v10 = [v9 imageWithActions:{MEMORY[0x277D85DD0], 3221225472}];

    v6 = v10;
  }

  return v6;
}

- (id)mt_imageWithDefaultShadowAttributesForUserInterfaceStyle:()MaterialKitPrivateAdditions
{
  LODWORD(v5) = 1050253722;
  v3 = [self _mt_imageWithShadowWithAttributes:v5 userInterfaceStyle:{0, 0x3FE0000000000000, 0x3FE3333333333333}];

  return v3;
}

@end