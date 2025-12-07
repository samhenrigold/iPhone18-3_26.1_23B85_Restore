@interface SBMinusCloseBoxView
- (id)defaultContentImage;
- (void)layoutSubviews;
@end

@implementation SBMinusCloseBoxView

- (id)defaultContentImage
{
  if (defaultContentImage_onceToken_199 != -1)
  {
    [SBMinusCloseBoxView defaultContentImage];
  }

  v3 = defaultContentImage___image_198;

  return v3;
}

void __42__SBMinusCloseBoxView_defaultContentImage__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v6 = @"IconCloseBoxMinus";
      v15 = @"IconCloseBoxMinus";
      goto LABEL_15;
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom] != 1)
    {
      v15 = @"IconCloseBoxMinus";
LABEL_14:

      goto LABEL_15;
    }
  }

  v7 = __sb__runningInSpringBoard();
  v8 = v7;
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  v9 = @"IconCloseBoxMinusLarge";
  if (v10 < *(MEMORY[0x1E69D4380] + 280))
  {
    v9 = @"IconCloseBoxMinus";
  }

  v6 = v9;
  v15 = v6;
  if ((v8 & 1) == 0)
  {
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v11 = MEMORY[0x1E69DCAB8];
  v12 = SBHBundle(v6);
  v13 = [v11 imageNamed:v15 inBundle:v12];
  v14 = defaultContentImage___image_198;
  defaultContentImage___image_198 = v13;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SBMinusCloseBoxView;
  [(SBHomeScreenButton *)&v6 layoutSubviews];
  materialView = [(SBHomeScreenButton *)self materialView];
  objc_msgSend_bounds(self);
  [materialView setImageSize:{v4, v5}];
}

@end