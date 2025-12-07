@interface AMSUIFontParser
+ (id)fontTextStyleForString:(id)string;
+ (id)fontWithDictionary:(id)dictionary compatibleWith:(id)with;
+ (id)systemDesignForString:(id)string;
+ (id)weightForString:(id)string;
@end

@implementation AMSUIFontParser

+ (id)fontWithDictionary:(id)dictionary compatibleWith:(id)with
{
  v42[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  withCopy = with;
  if (dictionaryCopy)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E698C4D8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E698C4E8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E698C4E0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E698C4F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = &unk_1F394A558;
    if (v9)
    {
      v17 = v9;
    }

    v18 = v17;

    v19 = [AMSUIFontParser fontTextStyleForString:v12];
    v20 = [AMSUIFontParser systemDesignForString:v14];
    if (v19)
    {
      v38 = v14;
      v21 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:withCopy];
      v22 = v21;
      if (v20)
      {
        v23 = [v21 fontDescriptorWithDesign:v20];

        v22 = v23;
      }

      v24 = [self weightForString:v16];
      v25 = v24;
      if (v16)
      {
        v26 = *MEMORY[0x1E69DB8F0];
        v40 = v24;
        v41 = v26;
        v39 = *MEMORY[0x1E69DB990];
        v37 = v18;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v42[0] = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
        [v22 fontDescriptorByAddingAttributes:v28];
        v36 = v20;
        v29 = v16;
        v30 = v25;
        v31 = v12;
        v33 = v32 = withCopy;

        v18 = v37;
        v22 = v33;
        withCopy = v32;
        v12 = v31;
        v25 = v30;
        v16 = v29;
        v20 = v36;
      }

      v34 = MEMORY[0x1E69DB878];
      [v18 doubleValue];
      v10 = [v34 fontWithDescriptor:v22 size:?];

      v14 = v38;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)fontTextStyleForString:(id)string
{
  v18[11] = *MEMORY[0x1E69E9840];
  lowercaseString = [string lowercaseString];
  v4 = *MEMORY[0x1E69DDD58];
  v17[0] = @"largetitle";
  v17[1] = @"title1";
  v5 = *MEMORY[0x1E69DDDB8];
  v18[0] = v4;
  v18[1] = v5;
  v6 = *MEMORY[0x1E69DDDC0];
  v17[2] = @"title2";
  v17[3] = @"title3";
  v7 = *MEMORY[0x1E69DDDC8];
  v18[2] = v6;
  v18[3] = v7;
  v8 = *MEMORY[0x1E69DDD40];
  v17[4] = @"headline";
  v17[5] = @"subheadline";
  v9 = *MEMORY[0x1E69DDD80];
  v18[4] = v8;
  v18[5] = v9;
  v10 = *MEMORY[0x1E69DDCF8];
  v17[6] = @"body";
  v17[7] = @"callout";
  v11 = *MEMORY[0x1E69DDD00];
  v18[6] = v10;
  v18[7] = v11;
  v12 = *MEMORY[0x1E69DDD28];
  v17[8] = @"footnote";
  v17[9] = @"caption1";
  v13 = *MEMORY[0x1E69DDD08];
  v18[8] = v12;
  v18[9] = v13;
  v17[10] = @"caption2";
  v18[10] = *MEMORY[0x1E69DDD10];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:11];
  v15 = [v14 objectForKeyedSubscript:lowercaseString];

  return v15;
}

+ (id)systemDesignForString:(id)string
{
  v11[4] = *MEMORY[0x1E69E9840];
  lowercaseString = [string lowercaseString];
  v4 = *MEMORY[0x1E69DB8C8];
  v10[0] = @"default";
  v10[1] = @"rounded";
  v5 = *MEMORY[0x1E69DB8D8];
  v11[0] = v4;
  v11[1] = v5;
  v10[2] = @"serif";
  v10[3] = @"monospaced";
  v6 = *MEMORY[0x1E69DB8D0];
  v11[2] = *MEMORY[0x1E69DB8E0];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v8 = [v7 objectForKeyedSubscript:lowercaseString];

  return v8;
}

+ (id)weightForString:(id)string
{
  v17[9] = *MEMORY[0x1E69E9840];
  lowercaseString = [string lowercaseString];
  v16[0] = @"ultralight";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB998]];
  v17[0] = v3;
  v16[1] = @"thin";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB988]];
  v17[1] = v4;
  v16[2] = @"light";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB968]];
  v17[2] = v5;
  v16[3] = @"regular";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB978]];
  v17[3] = v6;
  v16[4] = @"medium";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
  v17[4] = v7;
  v16[5] = @"semibold";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
  v17[5] = v8;
  v16[6] = @"bold";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
  v17[6] = v9;
  v16[7] = @"heavy";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB960]];
  v17[7] = v10;
  v16[8] = @"black";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB950]];
  v17[8] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:9];

  v13 = [v12 objectForKeyedSubscript:lowercaseString];

  return v13;
}

@end