@interface CIImage(PIVideoReframe)
- (id)pi_imageByApplyingStabilizationWatermark;
@end

@implementation CIImage(PIVideoReframe)

- (id)pi_imageByApplyingStabilizationWatermark
{
  if (pi_imageByApplyingStabilizationWatermark_onceToken != -1)
  {
    dispatch_once(&pi_imageByApplyingStabilizationWatermark_onceToken, &__block_literal_global_26466);
  }

  objc_msgSend_extent(self);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E695F658] imageWithCGImage:pi_imageByApplyingStabilizationWatermark_dotImage];
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v12 = CGRectGetWidth(v19) * 0.5;
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  Height = CGRectGetHeight(v20);
  CGAffineTransformMakeTranslation(&v17, v12, Height * 0.5);
  v14 = [v11 imageByApplyingTransform:&v17];

  v15 = [v14 imageByCompositingOverImage:self];

  return v15;
}

@end