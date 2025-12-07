@interface UIScreen
@end

@implementation UIScreen

void __43__UIScreen_TelephonyUI__screenSizeCategory__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) fixedCoordinateSpace];
  [v2 bounds];
  v4 = v3;

  v5 = [*(a1 + 32) traitCollection];
  v6 = [v5 userInterfaceIdiom];

  v7 = MGGetProductType();
  v8 = MGGetSInt32Answer();
  if (v6 == 5 || !v6 && v4 == 568.0 || v6 == 1 && v4 <= 1024.0)
  {
LABEL_6:
    v9 = 1;
LABEL_7:
    screenSizeCategory_screenCategory = v9;
    goto LABEL_8;
  }

  if (v7 <= 2795618602)
  {
    if (v7 > 1169082143)
    {
      if (v7 > 1872992316)
      {
        if (v7 == 1872992317)
        {
          v17 = 912.0;
          goto LABEL_52;
        }

        if (v7 != 2688879999)
        {
          v13 = 2793418701;
          goto LABEL_35;
        }

        goto LABEL_40;
      }

      if (v7 != 1169082144)
      {
        if (v7 != 1781728947)
        {
          goto LABEL_56;
        }

LABEL_43:
        v17 = 874.0;
        goto LABEL_52;
      }

LABEL_48:
      v17 = 844.0;
      goto LABEL_52;
    }

    if (v7 <= 574536382)
    {
      if (v7 == 133314240)
      {
LABEL_36:
        v17 = 852.0;
LABEL_52:
        v14 = v4 == v17;
        v9 = 9;
        v15 = 5;
LABEL_53:
        if (v14)
        {
          v9 = v15;
        }

        goto LABEL_7;
      }

      v16 = 330877086;
LABEL_46:
      if (v7 != v16)
      {
        goto LABEL_56;
      }

      v18 = 956.0;
      goto LABEL_50;
    }

    if (v7 != 574536383)
    {
      v13 = 851437781;
      goto LABEL_35;
    }

LABEL_40:
    v18 = 932.0;
    goto LABEL_50;
  }

  if (v7 > 3048527335)
  {
    if (v7 <= 3825599859)
    {
      if (v7 == 3048527336)
      {
        goto LABEL_80;
      }

      v16 = 3591055299;
      goto LABEL_46;
    }

    if (v7 != 3825599860)
    {
      if (v7 != 4201643249)
      {
        if (v7 == 3885279870)
        {
          v14 = v4 == 812.0;
          v9 = 8;
          v15 = 7;
          goto LABEL_53;
        }

        goto LABEL_56;
      }

      v18 = 926.0;
LABEL_50:
      v14 = v4 == v18;
      v9 = 11;
      v15 = 10;
      goto LABEL_53;
    }

    goto LABEL_40;
  }

  if (v7 > 2941181570)
  {
    if (v7 != 2941181571)
    {
      if (v7 != 3001488778)
      {
        goto LABEL_56;
      }

      goto LABEL_48;
    }

    goto LABEL_40;
  }

  if (v7 == 2795618603)
  {
    goto LABEL_43;
  }

  v13 = 2940697645;
LABEL_35:
  if (v7 == v13)
  {
    goto LABEL_36;
  }

LABEL_56:
  v20 = v4 <= 1112.0 && v6 == 1;
  v21 = v4 == 667.0 && v6 == 0;
  v9 = 2;
  if (v21 || v20)
  {
    goto LABEL_7;
  }

  v22 = v4 == 736.0 && v6 == 0;
  v23 = v22;
  v9 = 3;
  if (v6 == 1 || v23)
  {
    goto LABEL_7;
  }

  if (!v6 && v4 == 812.0)
  {
    v9 = 4;
    goto LABEL_7;
  }

  if (!v6 && v4 == 844.0)
  {
LABEL_80:
    v9 = 5;
    goto LABEL_7;
  }

  if (!v6)
  {
    v9 = 6;
    if (v4 == 896.0 || v4 == 926.0)
    {
      goto LABEL_7;
    }

    if (v4 == 693.0)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v10 = TPDefaultLog(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134217984;
    v25 = screenSizeCategory_screenCategory;
    _os_log_impl(&dword_1B4894000, v10, OS_LOG_TYPE_DEFAULT, "determined screen category to be: %lu", &v24, 0xCu);
  }

  if (!screenSizeCategory_screenCategory)
  {
    v12 = TPDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __43__UIScreen_TelephonyUI__screenSizeCategory__block_invoke_cold_1(v12, v4);
    }
  }
}

void __43__UIScreen_TelephonyUI__screenSizeCategory__block_invoke_cold_1(os_log_t log, double a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&dword_1B4894000, log, OS_LOG_TYPE_ERROR, "Unable to determine screen size category for screen with height %lu", &v2, 0xCu);
}

@end