@interface UIImage(MaterialKitAdditions)
+ (id)mt_shadowTemplateImageWithAttributes:()MaterialKitAdditions scale:maskCornerRadius:continuousCorners:maskSize:resizableCapInsets:;
@end

@implementation UIImage(MaterialKitAdditions)

+ (id)mt_shadowTemplateImageWithAttributes:()MaterialKitAdditions scale:maskCornerRadius:continuousCorners:maskSize:resizableCapInsets:
{
  LODWORD(v9) = *a4;
  v10 = *(a4 + 2);
  v11 = *(a4 + 3);
  v6 = MTShadowImageCreateWithCoreMaterialShadowProperties();
  v7 = [MEMORY[0x277D755B8] imageWithCGImage:v9 scale:v10 orientation:v11];
  CGImageRelease(v6);

  return v7;
}

@end