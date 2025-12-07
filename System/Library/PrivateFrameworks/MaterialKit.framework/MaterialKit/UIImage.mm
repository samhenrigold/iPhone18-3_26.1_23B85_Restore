@interface UIImage
@end

@implementation UIImage

id __136__UIImage_MaterialKitPrivateAdditions__mt_resizableShadowTemplateImageWithAttributes_scale_maskCornerRadius_continuousCorners_maskSize___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D755B8] mt_shadowTemplateImageWithAttributes:? scale:? maskCornerRadius:? continuousCorners:? maskSize:? resizableCapInsets:?];
  if (!mt_resizableShadowTemplateImageWithAttributes_scale_maskCornerRadius_continuousCorners_maskSize____keysToCapInsets)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = mt_resizableShadowTemplateImageWithAttributes_scale_maskCornerRadius_continuousCorners_maskSize____keysToCapInsets;
    mt_resizableShadowTemplateImageWithAttributes_scale_maskCornerRadius_continuousCorners_maskSize____keysToCapInsets = v2;
  }

  v4 = [MEMORY[0x277CCAE60] valueWithBytes:0 objCType:0];
  [mt_resizableShadowTemplateImageWithAttributes_scale_maskCornerRadius_continuousCorners_maskSize____keysToCapInsets setObject:? forKeyedSubscript:?];

  return v1;
}

void __93__UIImage_MaterialKitPrivateAdditions___mt_imageWithShadowWithAttributes_userInterfaceStyle___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75D18];
  v3 = a2;
  v4 = [v2 alloc];
  BSRectWithSize();
  v11 = [v4 initWithFrame:?];
  v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:?];
  [v11 addSubview:?];
  BSRectWithSize();
  [v5 setFrame:?];
  v6 = [v5 layer];
  v7 = [MEMORY[0x277D75348] labelColor];
  v8 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:?];
  v9 = [v7 resolvedColorWithTraitCollection:?];

  [v9 CGColor];
  [v6 setShadowColor:?];
  [v6 setShadowOffset:?];
  [v6 setShadowRadius:?];
  [v6 setShadowOpacity:?];
  [v3 CGContext];

  v10 = [v11 layer];
  [v10 renderInContext:?];
}

@end