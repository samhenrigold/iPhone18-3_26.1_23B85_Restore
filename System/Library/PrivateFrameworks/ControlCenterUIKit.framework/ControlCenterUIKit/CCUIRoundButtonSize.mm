@interface CCUIRoundButtonSize
@end

@implementation CCUIRoundButtonSize

void ___CCUIRoundButtonSize_block_invoke(uint64_t a1, uint64_t a2)
{
  v44.origin.x = CCUIReferenceScreenBounds(a1, a2);
  if (CGRectGetWidth(v44) < 375.0)
  {
    _CCUIRoundButtonSize_size = 0x4047000000000000;
    return;
  }

  v45.origin.x = CCUIReferenceScreenBounds(v5, v6);
  Width = CGRectGetWidth(v45);
  if (Width < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v42 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v42, "userInterfaceIdiom"), v7 != 1) || (v7 = SBFEffectiveHomeButtonType(), v7 == 2))
  {
    v46.origin.x = CCUIReferenceScreenBounds(v7, v8);
    v12 = CGRectGetWidth(v46);
    if (v12 >= 1024.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      v10 = [v2 userInterfaceIdiom];
      if (v10 == 1)
      {
        v10 = SBFEffectiveHomeButtonType();
        if (v10 == 2)
        {
          _CCUIRoundButtonSize_size = 0x404B000000000000;
LABEL_44:

LABEL_45:
          v41 = v42;
          if (Width < 1024.0)
          {
            return;
          }

          goto LABEL_46;
        }
      }
    }

    v47.origin.x = CCUIReferenceScreenBounds(v10, v11);
    v15 = CGRectGetWidth(v47);
    if (v15 >= 834.0)
    {
      v3 = [MEMORY[0x1E69DC938] currentDevice];
      v13 = [v3 userInterfaceIdiom];
      if (v13 == 1)
      {
        v13 = SBFEffectiveHomeButtonType();
        if (v13 == 2)
        {
          _CCUIRoundButtonSize_size = 0x404A000000000000;
LABEL_42:

LABEL_43:
          if (v12 < 1024.0)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }
      }
    }

    v48.origin.x = CCUIReferenceScreenBounds(v13, v14);
    v16 = CGRectGetWidth(v48);
    if (v16 >= 834.0)
    {
      v4 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v4 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        _CCUIRoundButtonSize_size = 0x404A000000000000;
        goto LABEL_40;
      }
    }

    v17 = [MEMORY[0x1E69DC938] currentDevice];
    v18 = [v17 userInterfaceIdiom];
    if (v18 == 1)
    {
      v20 = 0x404A000000000000;
    }

    else
    {
      v49.origin.x = CCUIReferenceScreenBounds(v18, v19);
      if (CGRectGetWidth(v49) >= 430.0 || (v50.origin.x = CCUIReferenceScreenBounds(v21, v22), CGRectGetWidth(v50) >= 428.0) || (v51.origin.x = CCUIReferenceScreenBounds(v23, v24), CGRectGetWidth(v51) >= 420.0) && (v25 = SBFEffectiveHomeButtonType(), v25 == 2) || (v52.origin.x = CCUIReferenceScreenBounds(v25, v26), CGRectGetWidth(v52) >= 414.0) && (v27 = SBFEffectiveHomeButtonType(), v27 == 2) || (v53.origin.x = CCUIReferenceScreenBounds(v27, v28), CGRectGetWidth(v53) >= 414.0))
      {
        v20 = 0x404E000000000000;
      }

      else
      {
        v54.origin.x = CCUIReferenceScreenBounds(v29, v30);
        if (CGRectGetWidth(v54) >= 393.0 || (v55.origin.x = CCUIReferenceScreenBounds(v31, v32), CGRectGetWidth(v55) >= 390.0))
        {
          v20 = 0x404C000000000000;
        }

        else
        {
          v56.origin.x = CCUIReferenceScreenBounds(v33, v34);
          if (CGRectGetWidth(v56) < 375.0 || (v35 = SBFEffectiveHomeButtonType(), v35 != 2))
          {
            v57.origin.x = CCUIReferenceScreenBounds(v35, v36);
            if (CGRectGetWidth(v57) < 375.0)
            {
              v58.origin.x = CCUIReferenceScreenBounds(v37, v38);
              v39 = CGRectGetWidth(v58) < 320.0;
              v40 = 52.0;
              if (!v39)
              {
                v40 = 54.0;
              }

LABEL_36:
              _CCUIRoundButtonSize_size = *&v40;

              if (v16 < 834.0)
              {
LABEL_41:
                if (v15 < 834.0)
                {
                  goto LABEL_43;
                }

                goto LABEL_42;
              }

LABEL_40:

              goto LABEL_41;
            }
          }

          v20 = 0x404B000000000000;
        }
      }
    }

    v40 = *&v20;
    goto LABEL_36;
  }

  _CCUIRoundButtonSize_size = 0x404B000000000000;
  v41 = v42;
LABEL_46:
}

@end