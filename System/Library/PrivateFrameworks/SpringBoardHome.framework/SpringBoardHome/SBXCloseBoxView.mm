@interface SBXCloseBoxView
- (id)defaultContentImage;
@end

@implementation SBXCloseBoxView

- (id)defaultContentImage
{
  if (defaultContentImage_onceToken_0 != -1)
  {
    [SBXCloseBoxView defaultContentImage];
  }

  v3 = defaultContentImage___image;

  return v3;
}

void __38__SBXCloseBoxView_defaultContentImage__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v6 = @"IconCloseBoxX";
      v15 = @"IconCloseBoxX";
      goto LABEL_15;
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom] != 1)
    {
      v15 = @"IconCloseBoxX";
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
  v9 = @"IconCloseBoxXLarge";
  if (v10 < *(MEMORY[0x1E69D4380] + 280))
  {
    v9 = @"IconCloseBoxX";
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
  v14 = defaultContentImage___image;
  defaultContentImage___image = v13;
}

@end