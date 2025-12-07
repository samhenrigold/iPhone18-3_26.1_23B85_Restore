@interface CCUIPortraitStatusBarBaselineToTopOffsetHeight
@end

@implementation CCUIPortraitStatusBarBaselineToTopOffsetHeight

void ___CCUIPortraitStatusBarBaselineToTopOffsetHeight_block_invoke(uint64_t a1)
{
  CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v16);
  if (Width >= 1024.0)
  {
    v1 = [MEMORY[0x277D75418] currentDevice];
    if ([v1 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
    {
      _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = 0x4052000000000000;
LABEL_41:

      goto LABEL_42;
    }
  }

  CCUIReferenceScreenBounds();
  v6 = CGRectGetWidth(v17);
  if (v6 < 1024.0 || ([MEMORY[0x277D75418] currentDevice], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() != 2)
  {
    CCUIReferenceScreenBounds();
    v7 = CGRectGetWidth(v18);
    if (v7 >= 834.0)
    {
      v3 = [MEMORY[0x277D75418] currentDevice];
      if ([v3 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = 0x4052000000000000;
LABEL_37:

LABEL_38:
        if (v6 < 1024.0)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    CCUIReferenceScreenBounds();
    v8 = CGRectGetWidth(v19);
    if (v8 >= 834.0)
    {
      v4 = [MEMORY[0x277D75418] currentDevice];
      if ([v4 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = 0x4052000000000000;
LABEL_35:

LABEL_36:
        if (v7 < 834.0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    v9 = [MEMORY[0x277D75418] currentDevice];
    if ([v9 userInterfaceIdiom] == 1)
    {
      v10 = 0x4052000000000000;
LABEL_33:
      v11 = *&v10;
      goto LABEL_34;
    }

    CCUIReferenceScreenBounds();
    if (CGRectGetWidth(v20) < 430.0)
    {
      CCUIReferenceScreenBounds();
      v11 = 125.0;
      if (CGRectGetWidth(v21) >= 428.0)
      {
        goto LABEL_34;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v22) >= 420.0 && SBFEffectiveHomeButtonType() == 2)
      {
        goto LABEL_34;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v23) >= 414.0 && SBFEffectiveHomeButtonType() == 2)
      {
        v11 = 122.0;
        goto LABEL_34;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v24) >= 414.0)
      {
        v10 = 0x4055000000000000;
        goto LABEL_33;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v25) < 393.0)
      {
        CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v26) < 390.0)
        {
          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v27) >= 375.0 && SBFEffectiveHomeButtonType() == 2)
          {
            v11 = 97.0;
            goto LABEL_34;
          }

          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v30) >= 375.0)
          {
            v10 = 0x4047000000000000;
            goto LABEL_33;
          }

          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v31) < 320.0)
          {
            v11 = 27.0;
          }

          else
          {
            v11 = 46.0;
          }

LABEL_34:
          _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = *&v11;

          if (v8 < 834.0)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }
    }

    v10 = 0x4059000000000000;
    goto LABEL_33;
  }

  _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = 0x4052000000000000;
LABEL_39:

LABEL_40:
  if (Width >= 1024.0)
  {
    goto LABEL_41;
  }

LABEL_42:
  v12 = [MEMORY[0x277D75418] currentDevice];
  if ([v12 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
  {
  }

  else
  {
    CCUIReferenceScreenBounds();
    v13 = CGRectGetWidth(v28);

    if (v13 < 375.0)
    {
      v14 = *&_CCUIPortraitStatusBarBaselineToTopOffsetHeight_height;
      if (*&_CCUIPortraitStatusBarBaselineToTopOffsetHeight_height < 97.0)
      {
        v14 = 97.0;
      }

      _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = *&v14;
    }
  }

  CCUIReferenceScreenBounds();
  if (CGRectGetWidth(v29) <= 375.0)
  {
    CCUIScreenSafeAreaInsets();
    if (v15 >= 50.0)
    {
      _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = 0x4059C00000000000;
    }
  }
}

@end