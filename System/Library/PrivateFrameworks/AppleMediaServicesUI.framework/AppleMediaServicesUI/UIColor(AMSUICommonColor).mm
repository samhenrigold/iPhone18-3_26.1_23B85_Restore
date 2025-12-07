@interface UIColor(AMSUICommonColor)
+ (id)_colorIdentifierDictionary;
+ (id)ams_colorFromDictionary:()AMSUICommonColor;
+ (id)ams_colorFromHexString:()AMSUICommonColor;
+ (id)ams_dynamicColorFromDictionary:()AMSUICommonColor;
+ (id)ams_namedColorFromDictionary:()AMSUICommonColor;
+ (id)ams_rgbColorFromDictionary:()AMSUICommonColor;
@end

@implementation UIColor(AMSUICommonColor)

+ (id)ams_colorFromHexString:()AMSUICommonColor
{
  v3 = a3;
  v4 = v3;
  if ([v3 hasPrefix:@"#"])
  {
    v4 = [v3 substringFromIndex:1];
  }

  if ([v4 length] < 6)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v21 = 256;
  v6 = [v4 substringWithRange:{0, 2}];
  v7 = [MEMORY[0x1E696AE88] scannerWithString:v6];
  if ([v7 scanHexInt:&v21])
  {
    v20 = 256;
    v8 = [v4 substringWithRange:{2, 2}];
    v9 = [MEMORY[0x1E696AE88] scannerWithString:v8];

    if (![v9 scanHexInt:&v20])
    {
      v5 = 0;
LABEL_19:

      v7 = v9;
      goto LABEL_20;
    }

    v19 = 256;
    v10 = [v4 substringWithRange:{4, 2}];
    v11 = [MEMORY[0x1E696AE88] scannerWithString:v10];

    if (![v11 scanHexInt:&v19])
    {
      v5 = 0;
LABEL_18:

      v9 = v11;
      goto LABEL_19;
    }

    v18 = 256;
    v12 = [v4 length];
    v13 = 1.0;
    if (v12 < 8)
    {
      v15 = v11;
    }

    else
    {
      v14 = [v4 substringWithRange:{6, 2}];
      v15 = [MEMORY[0x1E696AE88] scannerWithString:v14];

      v16 = [v15 scanHexInt:&v18];
      if (!v16)
      {
        v5 = 0;
        goto LABEL_17;
      }

      v13 = vcvtd_n_f64_u32(v18, 8uLL);
    }

    v5 = [MEMORY[0x1E69DC888] colorWithRed:vcvtd_n_f64_u32(v21 green:8uLL) blue:vcvtd_n_f64_u32(v20 alpha:{8uLL), vcvtd_n_f64_u32(v19, 8uLL), v13}];
LABEL_17:
    v11 = v15;
    goto LABEL_18;
  }

  v5 = 0;
LABEL_20:

LABEL_21:

  return v5;
}

+ (id)ams_colorFromDictionary:()AMSUICommonColor
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if ([v7 isEqualToString:@"named"])
    {
      v9 = [self ams_namedColorFromDictionary:v5];
    }

    else
    {
      if ([v7 isEqualToString:@"dynamic"])
      {
        [self ams_dynamicColorFromDictionary:v5];
      }

      else
      {
        [self ams_rgbColorFromDictionary:v5];
      }
      v9 = ;
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)ams_rgbColorFromDictionary:()AMSUICommonColor
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"red"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 objectForKeyedSubscript:@"green"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 objectForKeyedSubscript:@"blue"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  if (v5 && v7 && v9)
  {
    v11 = [v3 objectForKeyedSubscript:@"alpha"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = &unk_1F394AAD0;
    if (v12)
    {
      v13 = v12;
    }

    v14 = v13;

    v15 = MEMORY[0x1E69DC888];
    [v5 doubleValue];
    v17 = v16;
    [v7 doubleValue];
    v19 = v18;
    [v9 doubleValue];
    v21 = v20;
    [v14 doubleValue];
    v23 = v22;

    v10 = [v15 colorWithRed:v17 green:v19 blue:v21 alpha:v23];
  }

  return v10;
}

+ (id)ams_namedColorFromDictionary:()AMSUICommonColor
{
  v4 = [a3 objectForKeyedSubscript:@"name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    _colorIdentifierDictionary = [self _colorIdentifierDictionary];
    v7 = [_colorIdentifierDictionary objectForKeyedSubscript:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)ams_dynamicColorFromDictionary:()AMSUICommonColor
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"lightColor"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v5];
  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"darkColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v10 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v8];
    if (v10 && ([v6 isEqual:v10] & 1) == 0)
    {
      v11 = [MEMORY[0x1E69DC888] ams_dynamicColorWithLightColor:v6 darkColor:v10];
    }

    else
    {
      v11 = v6;
    }

    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_colorIdentifierDictionary
{
  v39[34] = *MEMORY[0x1E69E9840];
  v38[0] = @"black";
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v39[0] = blackColor;
  v38[1] = @"blue";
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v39[1] = systemBlueColor;
  v38[2] = @"brown";
  systemBrownColor = [MEMORY[0x1E69DC888] systemBrownColor];
  v39[2] = systemBrownColor;
  v38[3] = @"clear";
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v39[3] = clearColor;
  v38[4] = @"cyan";
  systemCyanColor = [MEMORY[0x1E69DC888] systemCyanColor];
  v39[4] = systemCyanColor;
  v38[5] = @"gray";
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  v39[5] = systemGrayColor;
  v38[6] = @"green";
  systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
  v39[6] = systemGreenColor;
  v38[7] = @"indigo";
  systemIndigoColor = [MEMORY[0x1E69DC888] systemIndigoColor];
  v39[7] = systemIndigoColor;
  v38[8] = @"mint";
  systemMintColor = [MEMORY[0x1E69DC888] systemMintColor];
  v39[8] = systemMintColor;
  v38[9] = @"orange";
  systemOrangeColor = [MEMORY[0x1E69DC888] systemOrangeColor];
  v39[9] = systemOrangeColor;
  v38[10] = @"pink";
  systemPinkColor = [MEMORY[0x1E69DC888] systemPinkColor];
  v39[10] = systemPinkColor;
  v38[11] = @"purple";
  systemPurpleColor = [MEMORY[0x1E69DC888] systemPurpleColor];
  v39[11] = systemPurpleColor;
  v38[12] = @"red";
  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  v39[12] = systemRedColor;
  v38[13] = @"teal";
  systemTealColor = [MEMORY[0x1E69DC888] systemTealColor];
  v39[13] = systemTealColor;
  v38[14] = @"white";
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v39[14] = whiteColor;
  v38[15] = @"yellow";
  systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
  v39[15] = systemYellowColor;
  v38[16] = @"appTint";
  ams_appTint = [MEMORY[0x1E69DC888] ams_appTint];
  v21 = ams_appTint;
  if (!ams_appTint)
  {
    ams_appTint = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  v39[16] = ams_appTint;
  v38[17] = @"defaultPlatformBackground";
  ams_defaultPlatformBackgroundColor = [MEMORY[0x1E69DC888] ams_defaultPlatformBackgroundColor];
  v39[17] = ams_defaultPlatformBackgroundColor;
  v38[18] = @"primaryBackground";
  ams_primaryBackground = [MEMORY[0x1E69DC888] ams_primaryBackground];
  v39[18] = ams_primaryBackground;
  v38[19] = @"primaryGroupedBackground";
  ams_primaryGroupedBackground = [MEMORY[0x1E69DC888] ams_primaryGroupedBackground];
  v39[19] = ams_primaryGroupedBackground;
  v38[20] = @"secondaryBackground";
  ams_secondaryBackground = [MEMORY[0x1E69DC888] ams_secondaryBackground];
  v39[20] = ams_secondaryBackground;
  v38[21] = @"secondaryGroupedBackground";
  ams_secondaryGroupedBackground = [MEMORY[0x1E69DC888] ams_secondaryGroupedBackground];
  v39[21] = ams_secondaryGroupedBackground;
  v38[22] = @"componentBackground";
  ams_componentBackground = [MEMORY[0x1E69DC888] ams_componentBackground];
  v39[22] = ams_componentBackground;
  v38[23] = @"placeholderBackground";
  ams_placeholderBackground = [MEMORY[0x1E69DC888] ams_placeholderBackground];
  v39[23] = ams_placeholderBackground;
  v38[24] = @"tertiarySystemFillColor";
  ams_tertiarySystemFillColor = [MEMORY[0x1E69DC888] ams_tertiarySystemFillColor];
  v39[24] = ams_tertiarySystemFillColor;
  v38[25] = @"defaultLine";
  ams_defaultLine = [MEMORY[0x1E69DC888] ams_defaultLine];
  v39[25] = ams_defaultLine;
  v38[26] = @"primaryText";
  ams_primaryText = [MEMORY[0x1E69DC888] ams_primaryText];
  v39[26] = ams_primaryText;
  v38[27] = @"secondaryText";
  ams_secondaryText = [MEMORY[0x1E69DC888] ams_secondaryText];
  v39[27] = ams_secondaryText;
  v38[28] = @"tertiaryText";
  ams_tertiaryText = [MEMORY[0x1E69DC888] ams_tertiaryText];
  v39[28] = ams_tertiaryText;
  v38[29] = @"quaternaryText";
  ams_quaternaryText = [MEMORY[0x1E69DC888] ams_quaternaryText];
  v39[29] = ams_quaternaryText;
  v38[30] = @"primaryFill";
  systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
  v39[30] = systemFillColor;
  v38[31] = @"secondaryFill";
  secondarySystemFillColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
  v39[31] = secondarySystemFillColor;
  v38[32] = @"tertiaryFill";
  tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  v39[32] = tertiarySystemFillColor;
  v38[33] = @"quaternaryFill";
  quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  v39[33] = quaternarySystemFillColor;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:34];

  if (!v21)
  {
  }

  return v13;
}

@end