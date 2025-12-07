@interface UIVibrancyEffect(SafariServicesExtras)
+ (id)_sf_effectWithStyle:()SafariServicesExtras forBarTintStyle:;
@end

@implementation UIVibrancyEffect(SafariServicesExtras)

+ (id)_sf_effectWithStyle:()SafariServicesExtras forBarTintStyle:
{
  if (a8 == 5)
  {
    if (a7 > 3)
    {
      if (a7 > 5)
      {
        if (a7 != 7)
        {
          if (a7 != 6)
          {
            goto LABEL_44;
          }

          v10 = MEMORY[0x1E69DD248];
          goto LABEL_29;
        }

        v10 = MEMORY[0x1E69DD248];
      }

      else
      {
        v10 = MEMORY[0x1E69DD248];
      }
    }

    else
    {
      if (a7 <= 1)
      {
        if (a7)
        {
          if (a7 != 1)
          {
            goto LABEL_44;
          }

          v10 = MEMORY[0x1E69DD248];
          goto LABEL_29;
        }

LABEL_28:
        v10 = MEMORY[0x1E69DD248];
LABEL_29:
        CAColorMatrixMakeBrightness();
        goto LABEL_40;
      }

      if (a7 == 2)
      {
        goto LABEL_28;
      }

      v10 = MEMORY[0x1E69DD248];
    }

    CAColorMatrixMakeColorSourceOver();
    goto LABEL_40;
  }

  v12 = _SFIsPrivateTintStyle(a8);
  if ((a7 - 8) <= 0xFFFFFFFFFFFFFFF9 && v12)
  {
    if (a7 != 1)
    {
      if (a7)
      {
        goto LABEL_44;
      }

      v13 = MEMORY[0x1E69DD248];
      v28[0] = xmmword_18BC3E170;
      v28[1] = xmmword_18BC3E180;
      v28[2] = xmmword_18BC3E190;
      v28[3] = xmmword_18BC3E1A0;
      v28[4] = xmmword_18BC3E1B0;
      v14 = 1.0;
      goto LABEL_41;
    }

    v10 = MEMORY[0x1E69DD248];
    CAColorMatrixMakeBrightness();
    v23 = xmmword_18BC3E170;
    v24 = xmmword_18BC3E180;
    v25 = xmmword_18BC3E190;
    v26 = xmmword_18BC3E1A0;
    v27 = xmmword_18BC3E1B0;
    CAColorMatrixConcat();
LABEL_40:
    v14 = 1.0;
    v13 = v10;
LABEL_41:
    v8 = [v13 _vibrantEffectWithCAColorMatrix:v28 alpha:{v14, v23, v24, v25, v26, v27}];
    goto LABEL_44;
  }

  v15 = _SFIsDarkTintStyle(a8);
  if (a7 == 2 && v15)
  {
    v16 = _SFLightTintStyleForStyle(a8);
    v17 = MEMORY[0x1E69DD248];
    v18 = _SFBackdropEffectForBarTintStyle(v16);
  }

  else
  {
    v17 = MEMORY[0x1E69DD248];
    v18 = _SFBackdropEffectForBarTintStyle(a8);
    v19 = 103;
    if (a7 > 2)
    {
      v20 = 102;
      v21 = 112;
      if (a7 != 7)
      {
        v21 = 103;
      }

      if (a7 != 4)
      {
        v20 = v21;
      }

      if (a7 == 3)
      {
        v19 = 101;
      }

      else
      {
        v19 = v20;
      }

      goto LABEL_43;
    }

    if (a7)
    {
      if (a7 == 1)
      {
        v19 = 111;
        goto LABEL_43;
      }

      if (a7 != 2)
      {
        goto LABEL_43;
      }
    }
  }

  v19 = 112;
LABEL_43:
  v8 = [v17 _effectForBlurEffect:v18 vibrancyStyle:v19];

LABEL_44:

  return v8;
}

@end