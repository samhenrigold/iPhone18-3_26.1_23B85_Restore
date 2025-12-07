@interface CALayer(UIStackedImageContainerLayer)
+ (double)smu_scaledSizeForSize:()UIStackedImageContainerLayer selectionStyle:;
@end

@implementation CALayer(UIStackedImageContainerLayer)

+ (double)smu_scaledSizeForSize:()UIStackedImageContainerLayer selectionStyle:
{
  newStandardConfiguration = [MEMORY[0x277D76278] newStandardConfiguration];
  [newStandardConfiguration scaleSizeIncrease];
  [objc_opt_class() smu_scaledSizeForSize:a5 focusSizeIncrease:a2 selectionStyle:{a3, v9}];
  v11 = v10;

  return v11;
}

@end