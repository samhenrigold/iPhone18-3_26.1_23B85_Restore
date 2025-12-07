@interface MUPlaceHoursFormatter
+ (id)_AMPMFont;
+ (id)_hoursMonospacedFont;
+ (id)hoursFormatterFromHoursStringComponents:(id)components AMPMSymbols:(id)symbols;
- (MUPlaceHoursFormatter)initWithHoursString:(id)string AMPMSymbols:(id)symbols;
- (id)buildAttributedHourStringWithHourFont:(id)font AMPMFont:(id)mFont hourColor:(id)color;
- (id)buildDefaultPlacecardHoursString;
@end

@implementation MUPlaceHoursFormatter

- (id)buildDefaultPlacecardHoursString
{
  _hoursMonospacedFont = [objc_opt_class() _hoursMonospacedFont];
  _AMPMFont = [objc_opt_class() _AMPMFont];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v6 = [(MUPlaceHoursFormatter *)self buildAttributedHourStringWithHourFont:_hoursMonospacedFont AMPMFont:_AMPMFont hourColor:labelColor];

  return v6;
}

- (id)buildAttributedHourStringWithHourFont:(id)font AMPMFont:(id)mFont hourColor:(id)color
{
  v42[2] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  mFontCopy = mFont;
  colorCopy = color;
  v12 = *MEMORY[0x1E69DB650];
  v41[0] = *MEMORY[0x1E69DB648];
  v11 = v41[0];
  v41[1] = v12;
  v42[0] = fontCopy;
  v42[1] = colorCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v39[0] = v11;
  v39[1] = v12;
  v40[0] = mFontCopy;
  v40[1] = colorCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v15 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:self->_hoursString attributes:v13];
  if (self->_formatAMPM)
  {
    v27 = v13;
    v28 = colorCopy;
    v29 = fontCopy;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = self->_AMPMSymbols;
    v16 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = MEMORY[0x1E696AE70];
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", *(*(&v34 + 1) + 8 * i)];
          v22 = [v20 regularExpressionWithPattern:v21 options:0 error:0];

          hoursString = self->_hoursString;
          v24 = [(NSString *)hoursString length];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __82__MUPlaceHoursFormatter_buildAttributedHourStringWithHourFont_AMPMFont_hourColor___block_invoke;
          v31[3] = &unk_1E8219908;
          v32 = v15;
          v33 = v14;
          [v22 enumerateMatchesInString:hoursString options:0 range:0 usingBlock:{v24, v31}];
        }

        v17 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v17);
    }

    fontCopy = v29;
    v13 = v27;
    colorCopy = v28;
  }

  v25 = [v15 copy];

  return v25;
}

uint64_t __82__MUPlaceHoursFormatter_buildAttributedHourStringWithHourFont_AMPMFont_hourColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a2 range];

  return [v2 setAttributes:v3 range:{v5, v4}];
}

- (MUPlaceHoursFormatter)initWithHoursString:(id)string AMPMSymbols:(id)symbols
{
  stringCopy = string;
  symbolsCopy = symbols;
  if ([stringCopy length] && objc_msgSend(symbolsCopy, "count"))
  {
    v17.receiver = self;
    v17.super_class = MUPlaceHoursFormatter;
    v8 = [(MUPlaceHoursFormatter *)&v17 init];
    if (v8)
    {
      v9 = [stringCopy copy];
      hoursString = v8->_hoursString;
      v8->_hoursString = v9;

      v11 = [symbolsCopy copy];
      AMPMSymbols = v8->_AMPMSymbols;
      v8->_AMPMSymbols = v11;

      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      languageCode = [currentLocale languageCode];
      v8->_formatAMPM = [languageCode isEqualToString:@"ar"] ^ 1;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)_AMPMFont
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v15 = *MEMORY[0x1E69DB8B0];
  v3 = *MEMORY[0x1E69DB900];
  v12[0] = *MEMORY[0x1E69DB908];
  v12[1] = v3;
  v13[0] = &unk_1F450DD30;
  v13[1] = &unk_1F450DD48;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v16[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  fontDescriptor = [v2 fontDescriptor];
  v8 = [fontDescriptor fontDescriptorByAddingAttributes:v6];

  v9 = MEMORY[0x1E69DB878];
  [v2 pointSize];
  v10 = [v9 fontWithDescriptor:v8 size:?];

  return v10;
}

+ (id)_hoursMonospacedFont
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69DB900];
  v10[0] = *MEMORY[0x1E69DB908];
  v10[1] = v2;
  v11[0] = &unk_1F450DD00;
  v11[1] = &unk_1F450DD18;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  fontDescriptor = [v4 fontDescriptor];
  v6 = [fontDescriptor fontDescriptorByAddingAttributes:v3];

  v7 = MEMORY[0x1E69DB878];
  [v6 pointSize];
  v8 = [v7 fontWithDescriptor:v6 size:?];

  return v8;
}

+ (id)hoursFormatterFromHoursStringComponents:(id)components AMPMSymbols:(id)symbols
{
  v24 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  symbolsCopy = symbols;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [componentsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(componentsCopy);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 length] > v10)
        {
          v10 = [v13 length];
        }
      }

      v9 = [componentsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__MUPlaceHoursFormatter_hoursFormatterFromHoursStringComponents_AMPMSymbols___block_invoke;
  v18[3] = &__block_descriptor_40_e21__24__0__NSString_8Q16l;
  v18[4] = v10;
  v14 = MUMap(componentsCopy, v18);
  v15 = [v14 componentsJoinedByString:@"\n"];
  v16 = [[self alloc] initWithHoursString:v15 AMPMSymbols:symbolsCopy];

  return v16;
}

id __77__MUPlaceHoursFormatter_hoursFormatterFromHoursStringComponents_AMPMSymbols___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 == [v3 length])
  {
    v5 = &stru_1F44CA030;
  }

  else
  {
    v6 = 0;
    v7 = &stru_1F44CA030;
    do
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v7];

      ++v6;
      v8 = *(a1 + 32);
      v9 = v8 - [v3 length];
      v7 = v5;
    }

    while (v6 < v9);
  }

  if ([(__CFString *)v5 length])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v5, v3];
  }

  else
  {
    v10 = v3;
  }

  v11 = v10;

  return v11;
}

@end