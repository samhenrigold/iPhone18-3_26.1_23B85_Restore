@interface UIFont(TelephonyUI)
+ (id)telephonyUIBodyShortEmphasizedFont;
+ (id)telephonyUIBodyShortFont;
+ (id)telephonyUIBodyShortItalicFont;
+ (id)telephonyUIFontWithDescriptor:()TelephonyUI;
+ (id)telephonyUIFootnoteShortFont;
+ (id)telephonyUISubheadlineShortEmphasizedFont;
+ (id)telephonyUISubheadlineShortFont;
+ (id)telephonyUISubheadlineShortSemiboldFont;
- (id)withCaseSensitiveAttribute;
@end

@implementation UIFont(TelephonyUI)

+ (id)telephonyUIBodyShortFont
{
  telephonyUIBodyShortFontDescriptor = [MEMORY[0x1E69DB880] telephonyUIBodyShortFontDescriptor];
  v3 = [self telephonyUIFontWithDescriptor:telephonyUIBodyShortFontDescriptor];

  return v3;
}

+ (id)telephonyUIBodyShortEmphasizedFont
{
  v0 = MEMORY[0x1E69DB878];
  telephonyUIBodyShortEmphasizedFontDescriptor = [MEMORY[0x1E69DB880] telephonyUIBodyShortEmphasizedFontDescriptor];
  v2 = [v0 telephonyUIFontWithDescriptor:telephonyUIBodyShortEmphasizedFontDescriptor];

  return v2;
}

+ (id)telephonyUIBodyShortItalicFont
{
  v0 = MEMORY[0x1E69DB878];
  telephonyUIBodyShortItalicFontDescriptor = [MEMORY[0x1E69DB880] telephonyUIBodyShortItalicFontDescriptor];
  v2 = [v0 telephonyUIFontWithDescriptor:telephonyUIBodyShortItalicFontDescriptor];

  return v2;
}

+ (id)telephonyUIFootnoteShortFont
{
  v0 = MEMORY[0x1E69DB878];
  telephonyUIFootnoteShortFontDescriptor = [MEMORY[0x1E69DB880] telephonyUIFootnoteShortFontDescriptor];
  v2 = [v0 telephonyUIFontWithDescriptor:telephonyUIFootnoteShortFontDescriptor];

  return v2;
}

+ (id)telephonyUISubheadlineShortFont
{
  v0 = MEMORY[0x1E69DB878];
  telephonyUISubheadlineShortFontDescriptor = [MEMORY[0x1E69DB880] telephonyUISubheadlineShortFontDescriptor];
  v2 = [v0 telephonyUIFontWithDescriptor:telephonyUISubheadlineShortFontDescriptor];

  return v2;
}

+ (id)telephonyUISubheadlineShortEmphasizedFont
{
  v0 = MEMORY[0x1E69DB878];
  telephonyUISubheadlineShortEmphasizedFontDescriptor = [MEMORY[0x1E69DB880] telephonyUISubheadlineShortEmphasizedFontDescriptor];
  v2 = [v0 telephonyUIFontWithDescriptor:telephonyUISubheadlineShortEmphasizedFontDescriptor];

  return v2;
}

+ (id)telephonyUISubheadlineShortSemiboldFont
{
  v8[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69DB878];
  telephonyUISubheadlineShortSemiboldFontDescriptor = [MEMORY[0x1E69DB880] telephonyUISubheadlineShortSemiboldFontDescriptor];
  v7 = *MEMORY[0x1E69DB990];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [telephonyUISubheadlineShortSemiboldFontDescriptor fontDescriptorByAddingAttributes:v3];
  v5 = [v0 telephonyUIFontWithDescriptor:v4];

  return v5;
}

- (id)withCaseSensitiveAttribute
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E69DB8B0];
  v2 = *MEMORY[0x1E69DB900];
  v10[0] = *MEMORY[0x1E69DB908];
  v10[1] = v2;
  v11[0] = &unk_1F2CB1168;
  v11[1] = &unk_1F2CB1180;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v12 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v14[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  fontDescriptor = [self fontDescriptor];
  v7 = [fontDescriptor fontDescriptorByAddingAttributes:v5];

  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];

  return v8;
}

+ (id)telephonyUIFontWithDescriptor:()TelephonyUI
{
  v1 = [self fontWithDescriptor:0.0 size:?];
  withCaseSensitiveAttribute = [v1 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

@end