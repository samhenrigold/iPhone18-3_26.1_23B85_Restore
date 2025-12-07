@interface AMSUIMessageMarkdownGenerator
- (AMSUIMessageMarkdownGenerator)initWithMarkdownString:(id)string configuration:(id)configuration;
- (id)currentFont;
- (id)currentFontAddingFontAttributes:(id)attributes;
- (id)fontWithTraits:(unsigned int)traits;
- (id)generate;
- (id)reconcileElementAttributes:(id)attributes withFont:(id)font;
- (void)appendStyledString:(id)string;
- (void)parser:(id)parser didEndElement:(unint64_t)element;
- (void)parser:(id)parser didFindArtworkWithIdentifier:(id)identifier;
- (void)parser:(id)parser didFindCharacters:(id)characters;
- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidStartDocument:(id)document;
- (void)popAttributes;
- (void)pushAttributes:(id)attributes;
@end

@implementation AMSUIMessageMarkdownGenerator

- (AMSUIMessageMarkdownGenerator)initWithMarkdownString:(id)string configuration:(id)configuration
{
  stringCopy = string;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = AMSUIMessageMarkdownGenerator;
  v8 = [(AMSUIMessageMarkdownGenerator *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AD40]);
    accumulator = v8->_accumulator;
    v8->_accumulator = v9;

    objc_storeStrong(&v8->_configuration, configuration);
    v8->_didParseEverything = 1;
    v11 = [[AMSUIMarkdownParser alloc] initWithString:stringCopy];
    parser = v8->_parser;
    v8->_parser = v11;

    [(AMSUIMarkdownParser *)v8->_parser setDelegate:v8];
    array = [MEMORY[0x1E695DF70] array];
    attributeStack = v8->_attributeStack;
    v8->_attributeStack = array;
  }

  return v8;
}

- (id)generate
{
  parser = [(AMSUIMessageMarkdownGenerator *)self parser];
  [parser parse];

  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  accumulator = [(AMSUIMessageMarkdownGenerator *)self accumulator];
  v6 = [v4 initWithAttributedString:accumulator];

  return v6;
}

- (void)popAttributes
{
  attributeStack = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
  [attributeStack removeLastObject];
}

- (void)pushAttributes:(id)attributes
{
  attributesCopy = attributes;
  attributeStack = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
  lastObject = [attributeStack lastObject];

  if (lastObject)
  {
    v7 = MEMORY[0x1E695DF90];
    attributeStack2 = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
    lastObject2 = [attributeStack2 lastObject];
    v12 = [v7 dictionaryWithDictionary:lastObject2];

    [v12 addEntriesFromDictionary:attributesCopy];
    attributeStack3 = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
    attributesCopy = attributeStack3;
    v11 = v12;
  }

  else
  {
    attributeStack3 = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
    v12 = attributeStack3;
    v11 = attributesCopy;
  }

  [attributeStack3 addObject:v11];
}

- (void)appendStyledString:(id)string
{
  stringCopy = string;
  attributeStack = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
  lastObject = [attributeStack lastObject];

  if (lastObject)
  {
    v6 = [lastObject objectForKeyedSubscript:@"AMSUISymbol"];

    if (v6)
    {
      [(AMSUIMessageMarkdownGenerator *)self setSymbol:stringCopy];
    }

    else
    {
      accumulator = [(AMSUIMessageMarkdownGenerator *)self accumulator];
      v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy attributes:lastObject];
      [accumulator appendAttributedString:v8];
    }
  }
}

- (id)currentFont
{
  attributeStack = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
  lastObject = [attributeStack lastObject];
  v5 = [lastObject objectForKey:*MEMORY[0x1E69DB648]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    font = v5;
  }

  else
  {
    font = 0;
  }

  if (!font)
  {
    configuration = [(AMSUIMessageMarkdownGenerator *)self configuration];
    font = [configuration font];
  }

  return font;
}

- (id)currentFontAddingFontAttributes:(id)attributes
{
  attributesCopy = attributes;
  currentFont = [(AMSUIMessageMarkdownGenerator *)self currentFont];
  fontDescriptor = [currentFont fontDescriptor];
  v7 = [fontDescriptor fontDescriptorByAddingAttributes:attributesCopy];

  v8 = MEMORY[0x1E69DB878];
  [currentFont pointSize];
  v9 = [v8 fontWithDescriptor:v7 size:?];

  return v9;
}

- (id)fontWithTraits:(unsigned int)traits
{
  v24 = *MEMORY[0x1E69E9840];
  currentFont = [(AMSUIMessageMarkdownGenerator *)self currentFont];
  fontDescriptor = [currentFont fontDescriptor];
  v6 = [fontDescriptor symbolicTraits] | traits;
  v7 = [fontDescriptor fontDescriptorWithSymbolicTraits:v6];
  if (v7)
  {
    v8 = MEMORY[0x1E69DB878];
    [currentFont pointSize];
    v9 = [v8 fontWithDescriptor:v7 size:?];
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v16 = 138544130;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = currentFont;
      v22 = 1024;
      v23 = v6;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Font %{public}@, does not support traits %u", &v16, 0x26u);
    }

    v9 = currentFont;
  }

  v14 = v9;

  return v14;
}

- (id)reconcileElementAttributes:(id)attributes withFont:(id)font
{
  v52[2] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  fontCopy = font;
  if ([attributesCopy count])
  {
    v7 = [attributesCopy objectForKeyedSubscript:@"font-family"];
    v8 = v7;
    if (v7)
    {
      familyName = v7;
    }

    else
    {
      familyName = [fontCopy familyName];
    }

    v11 = familyName;

    v12 = [attributesCopy objectForKeyedSubscript:@"font-name"];
    v13 = v12;
    if (v12)
    {
      fontName = v12;
    }

    else
    {
      fontName = [fontCopy fontName];
    }

    v15 = fontName;
    v46 = v11;

    [fontCopy pointSize];
    v17 = v16;
    v18 = [attributesCopy objectForKeyedSubscript:@"font-size"];

    v45 = v15;
    if (v18)
    {
      v19 = [attributesCopy objectForKeyedSubscript:@"font-size"];
      [v19 doubleValue];
      v17 = v20;
    }

    v21 = MEMORY[0x1E69DB978];
    fontDescriptor = [fontCopy fontDescriptor];
    v23 = *MEMORY[0x1E69DB8F0];
    v24 = [fontDescriptor objectForKey:*MEMORY[0x1E69DB8F0]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = *v21;

    v27 = MEMORY[0x1E69DB990];
    if (v25)
    {
      v28 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69DB990]];
      [v28 doubleValue];
      if (v29 != 0.0)
      {
        v26 = v29;
      }
    }

    v30 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E698C4F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      v32 = [AMSUIFontParser weightForString:v31];
      v33 = v32;
      if (!v32)
      {
        [v31 doubleValue];
        v32 = v31;
      }

      [v32 doubleValue];
      v26 = v34;
    }

    v35 = [attributesCopy objectForKeyedSubscript:@"font-weight"];

    v36 = MEMORY[0x1E69DB880];
    if (v35)
    {
      v37 = *MEMORY[0x1E69DB8A8];
      v38 = v46;
      v51[1] = v23;
      v52[0] = v46;
      v51[0] = v37;
      v49 = *v27;
      v39 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
      v50 = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v52[1] = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
      v42 = [v36 fontDescriptorWithFontAttributes:v41];

      v43 = v45;
    }

    else
    {
      v43 = v45;
      v47 = *MEMORY[0x1E69DB8B8];
      v48 = v45;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v42 = [v36 fontDescriptorWithFontAttributes:v39];
      v38 = v46;
    }

    v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v42 size:v17];
  }

  else
  {
    v10 = fontCopy;
  }

  return v10;
}

- (void)parserDidStartDocument:(id)document
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v4 setAlignment:4];
  v5 = MEMORY[0x1E695DF90];
  v8 = *MEMORY[0x1E69DB688];
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7 = [v5 dictionaryWithDictionary:v6];
  [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v7];
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  v16 = *MEMORY[0x1E69E9840];
  occurredCopy = occurred;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = occurredCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to parse with error: %{public}@", &v10, 0x20u);
  }

  [(AMSUIMessageMarkdownGenerator *)self setDidParseEverything:0];
}

- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes
{
  v74[2] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  accumulator = [(AMSUIMessageMarkdownGenerator *)self accumulator];
  [accumulator beginEditing];

  if (element > 4)
  {
    if (element - 6 < 2)
    {
      currentFont = [(AMSUIMessageMarkdownGenerator *)self currentFont];
      v11 = [(AMSUIMessageMarkdownGenerator *)self reconcileElementAttributes:attributesCopy withFont:currentFont];

      v24 = MEMORY[0x1E695DF90];
      v57[0] = *MEMORY[0x1E69DB688];
      configuration = [(AMSUIMessageMarkdownGenerator *)self configuration];
      paragraphStyle = [configuration paragraphStyle];
      v27 = *MEMORY[0x1E69DB648];
      v58[0] = paragraphStyle;
      v58[1] = v11;
      v28 = *MEMORY[0x1E69DB650];
      v57[1] = v27;
      v57[2] = v28;
      configuration2 = [(AMSUIMessageMarkdownGenerator *)self configuration];
      color = [configuration2 color];
      v58[2] = color;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];
      v31 = [v24 dictionaryWithDictionary:v30];
      [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v31];
    }

    else
    {
      if (element != 5)
      {
        if (element == 8)
        {
          v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:attributesCopy];
          [v11 setObject:MEMORY[0x1E695E118] forKey:@"AMSUISymbol"];
          [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v11];
LABEL_25:

          goto LABEL_26;
        }

        goto LABEL_26;
      }

      currentFont2 = [(AMSUIMessageMarkdownGenerator *)self currentFont];
      v11 = [(AMSUIMessageMarkdownGenerator *)self reconcileElementAttributes:attributesCopy withFont:currentFont2];

      v33 = MEMORY[0x1E695DF90];
      v34 = *MEMORY[0x1E69DB648];
      v59[0] = *MEMORY[0x1E69DB6B8];
      v59[1] = v34;
      v60[0] = &unk_1F394A600;
      v60[1] = v11;
      v59[2] = *MEMORY[0x1E69DB650];
      configuration = [(AMSUIMessageMarkdownGenerator *)self configuration];
      paragraphStyle = [configuration strikeThroughColor];
      color = paragraphStyle;
      if (!paragraphStyle)
      {
        configuration2 = [(AMSUIMessageMarkdownGenerator *)self configuration];
        color = [configuration2 color];
      }

      v60[2] = color;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:3];
      v36 = [v33 dictionaryWithDictionary:v35];
      [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v36];

      if (paragraphStyle)
      {
        goto LABEL_18;
      }
    }

LABEL_18:
LABEL_24:

    goto LABEL_25;
  }

  if (element > 1)
  {
    if (element != 2)
    {
      if (element == 3)
      {
        v50 = MEMORY[0x1E695DF90];
        v67 = *MEMORY[0x1E69DB648];
        v51 = [(AMSUIMessageMarkdownGenerator *)self fontWithTraits:0];
        v68 = v51;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v53 = [v50 dictionaryWithDictionary:v52];
        [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v53];

        v54 = [attributesCopy objectForKeyedSubscript:@"href"];

        if (!v54)
        {
          goto LABEL_26;
        }

        v55 = MEMORY[0x1E695DF90];
        v65 = *MEMORY[0x1E69DB670];
        v11 = [attributesCopy objectForKeyedSubscript:@"href"];
        v66 = v11;
        configuration3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v56 = [v55 dictionaryWithDictionary:configuration3];
        [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v56];

        goto LABEL_22;
      }

      currentFont3 = [(AMSUIMessageMarkdownGenerator *)self currentFont];
      v11 = [(AMSUIMessageMarkdownGenerator *)self reconcileElementAttributes:attributesCopy withFont:currentFont3];

      v12 = MEMORY[0x1E695DF90];
      v13 = *MEMORY[0x1E69DB648];
      v61[0] = *MEMORY[0x1E69DB758];
      v61[1] = v13;
      v62[0] = &unk_1F394A600;
      v62[1] = v11;
      v61[2] = *MEMORY[0x1E69DB650];
      configuration3 = [(AMSUIMessageMarkdownGenerator *)self configuration];
      color2 = [configuration3 color];
      v62[2] = color2;
      v16 = MEMORY[0x1E695DF20];
      v17 = v62;
      v18 = v61;
      v19 = 3;
LABEL_21:
      v40 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
      v41 = [v12 dictionaryWithDictionary:v40];
      [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v41];

LABEL_22:
      goto LABEL_25;
    }

    v37 = [(AMSUIMessageMarkdownGenerator *)self fontWithTraits:1];
    v11 = [(AMSUIMessageMarkdownGenerator *)self reconcileElementAttributes:attributesCopy withFont:v37];

    v12 = MEMORY[0x1E695DF90];
    v38 = *MEMORY[0x1E69DB648];
    v64[0] = v11;
    v39 = *MEMORY[0x1E69DB650];
    v63[0] = v38;
    v63[1] = v39;
    configuration3 = [(AMSUIMessageMarkdownGenerator *)self configuration];
    color2 = [configuration3 color];
    v64[1] = color2;
    v16 = MEMORY[0x1E695DF20];
    v17 = v64;
    v18 = v63;
LABEL_20:
    v19 = 2;
    goto LABEL_21;
  }

  if (!element)
  {
    v71 = *MEMORY[0x1E69DB8B0];
    v72 = &unk_1F394AB90;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v42 = [(AMSUIMessageMarkdownGenerator *)self currentFontAddingFontAttributes:v11];
    configuration = [(AMSUIMessageMarkdownGenerator *)self reconcileElementAttributes:attributesCopy withFont:v42];

    v43 = MEMORY[0x1E695DF90];
    v44 = *MEMORY[0x1E69DB648];
    v70[0] = configuration;
    v45 = *MEMORY[0x1E69DB650];
    v69[0] = v44;
    v69[1] = v45;
    configuration4 = [(AMSUIMessageMarkdownGenerator *)self configuration];
    color3 = [configuration4 color];
    v70[1] = color3;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
    v49 = [v43 dictionaryWithDictionary:v48];
    [(AMSUIMessageMarkdownGenerator *)self pushAttributes:v49];

    goto LABEL_24;
  }

  if (element == 1)
  {
    v20 = [(AMSUIMessageMarkdownGenerator *)self fontWithTraits:2];
    v11 = [(AMSUIMessageMarkdownGenerator *)self reconcileElementAttributes:attributesCopy withFont:v20];

    v12 = MEMORY[0x1E695DF90];
    v21 = *MEMORY[0x1E69DB648];
    v74[0] = v11;
    v22 = *MEMORY[0x1E69DB650];
    v73[0] = v21;
    v73[1] = v22;
    configuration3 = [(AMSUIMessageMarkdownGenerator *)self configuration];
    color2 = [configuration3 color];
    v74[1] = color2;
    v16 = MEMORY[0x1E695DF20];
    v17 = v74;
    v18 = v73;
    goto LABEL_20;
  }

LABEL_26:
}

- (void)parser:(id)parser didEndElement:(unint64_t)element
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (element == 8)
  {
    symbol = [(AMSUIMessageMarkdownGenerator *)self symbol];

    if (symbol)
    {
      v6 = MEMORY[0x1E69DCAB8];
      symbol2 = [(AMSUIMessageMarkdownGenerator *)self symbol];
      v8 = [v6 ams_imageWithSystemSymbolName:symbol2];

      v9 = MEMORY[0x1E695DF90];
      attributeStack = [(AMSUIMessageMarkdownGenerator *)self attributeStack];
      lastObject = [attributeStack lastObject];
      v12 = [v9 dictionaryWithDictionary:lastObject];

      v13 = MEMORY[0x1E69DCAD8];
      currentFont = [(AMSUIMessageMarkdownGenerator *)self currentFont];
      v15 = [v13 configurationWithFont:currentFont];

      v16 = [MEMORY[0x1E69DCAD8] ams_imageSymbolConfigurationWithDictionary:v12];
      v17 = v16;
      if (v15)
      {
        v18 = [v15 configurationByApplyingConfiguration:v16];
      }

      else
      {
        v18 = v16;
      }

      configuration = [(AMSUIMessageMarkdownGenerator *)self configuration];
      color = [configuration color];

      if (color)
      {
        v21 = MEMORY[0x1E69DCAD8];
        configuration2 = [(AMSUIMessageMarkdownGenerator *)self configuration];
        color2 = [configuration2 color];
        v32[0] = color2;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
        v25 = [v21 configurationWithPaletteColors:v24];

        v26 = [v25 configurationByApplyingConfiguration:v18];

        v18 = v26;
      }

      if (v18)
      {
        v27 = [v8 ams_imageWithSymbolConfiguration:v18];

        v8 = v27;
      }

      v28 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      [v28 setImage:v8];
      accumulator = [(AMSUIMessageMarkdownGenerator *)self accumulator];
      v30 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v28];
      [accumulator appendAttributedString:v30];
    }
  }

  [(AMSUIMessageMarkdownGenerator *)self popAttributes];
  accumulator2 = [(AMSUIMessageMarkdownGenerator *)self accumulator];
  [accumulator2 endEditing];

  [(AMSUIMessageMarkdownGenerator *)self setSymbol:0];
}

- (void)parser:(id)parser didFindArtworkWithIdentifier:(id)identifier
{
  v5 = MEMORY[0x1E69DB7F0];
  identifierCopy = identifier;
  v10 = objc_alloc_init(v5);
  v7 = [MEMORY[0x1E69DCAB8] ams_imageWithSystemSymbolName:identifierCopy];

  [v10 setImage:v7];
  v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
  accumulator = [(AMSUIMessageMarkdownGenerator *)self accumulator];
  [accumulator appendAttributedString:v8];
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  v5 = [MEMORY[0x1E696AD60] stringWithString:characters];
  [(AMSUIMessageMarkdownGenerator *)self appendStyledString:v5];
}

@end