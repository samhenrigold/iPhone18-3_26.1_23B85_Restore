@interface _CDComplicationImageViewProviderImageView
- (CGSize)maxSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)sizeToFit;
@end

@implementation _CDComplicationImageViewProviderImageView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(_CDComplicationImageViewProviderImageView *)self image:fits.width];
  [v3 size];

  mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
  device = [mEMORY[0x277CBBB68] device];

  CLKFloorForDevice();
  v7 = v6;
  CLKFloorForDevice();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)sizeToFit
{
  mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
  device = [mEMORY[0x277CBBB68] device];

  objc_msgSend_transform(self);
  if (CGAffineTransformIsIdentity(&v9))
  {
    [(_CDComplicationImageViewProviderImageView *)self frame];
    [(_CDComplicationImageViewProviderImageView *)self sizeThatFits:v5, v6];
    CLKPixelAlignRectForDevice();
    [(_CDComplicationImageViewProviderImageView *)self setFrame:?];
  }

  else
  {
    [(_CDComplicationImageViewProviderImageView *)self bounds];
    [(_CDComplicationImageViewProviderImageView *)self sizeThatFits:v7, v8];
    CLKPixelAlignRectForDevice();
    [(_CDComplicationImageViewProviderImageView *)self setBounds:?];
  }
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end