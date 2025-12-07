@interface TIKeyboardInputManagerTransliteration_ar
+ (id)arabicPrefixes;
+ (id)rtlMarkExcludedClientIdentifiers;
- (BOOL)shouldExcludeRtlMarkHandling;
- (void)addInput:(id)input withContext:(id)context;
- (void)addRtlMark:(id)mark;
- (void)handleSpaceDeletionWithContext:(id)context;
- (void)removeRtlMark:(id)mark;
@end

@implementation TIKeyboardInputManagerTransliteration_ar

+ (id)arabicPrefixes
{
  if (+[TIKeyboardInputManagerTransliteration_ar arabicPrefixes]::onceToken != -1)
  {
    +[TIKeyboardInputManagerTransliteration_ar arabicPrefixes];
  }

  v3 = +[TIKeyboardInputManagerTransliteration_ar arabicPrefixes]::prefixes;

  return v3;
}

+ (id)rtlMarkExcludedClientIdentifiers
{
  if (+[TIKeyboardInputManagerTransliteration_ar rtlMarkExcludedClientIdentifiers]::onceToken != -1)
  {
    +[TIKeyboardInputManagerTransliteration_ar rtlMarkExcludedClientIdentifiers];
  }

  v3 = +[TIKeyboardInputManagerTransliteration_ar rtlMarkExcludedClientIdentifiers]::clientIdentifiers;

  return v3;
}

- (BOOL)shouldExcludeRtlMarkHandling
{
  rtlMarkExcludedClientIdentifiers = [objc_opt_class() rtlMarkExcludedClientIdentifiers];
  keyboardState = [(TIKeyboardInputManagerTransliteration_ar *)self keyboardState];
  clientIdentifier = [keyboardState clientIdentifier];
  v6 = [rtlMarkExcludedClientIdentifiers containsObject:clientIdentifier];

  return v6;
}

- (void)addInput:(id)input withContext:(id)context
{
  inputCopy = input;
  contextCopy = context;
  if (![(TIKeyboardInputManagerTransliteration_ar *)self shouldExcludeRtlMarkHandling])
  {
    [(TIKeyboardInputManagerTransliteration_ar *)self addRtlMark:contextCopy];
  }

  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerTransliteration_ar;
  [(TIKeyboardInputManagerTransliteration_ar *)&v8 addInput:inputCopy withContext:contextCopy];
  if (![(TIKeyboardInputManagerTransliteration_ar *)self shouldExcludeRtlMarkHandling])
  {
    [(TIKeyboardInputManagerTransliteration_ar *)self removeRtlMark:contextCopy];
  }

  [(TIKeyboardInputManagerTransliteration_ar *)self handleSpaceDeletionWithContext:contextCopy];
}

- (void)addRtlMark:(id)mark
{
  markCopy = mark;
  revisionHistory = [markCopy revisionHistory];
  documentText = [revisionHistory documentText];
  v5 = [documentText length];

  if (!v5 || ([markCopy revisionHistory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "documentText"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(markCopy, "revisionHistory"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "documentText"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "characterAtIndex:", objc_msgSend(v9, "length") - 1), v9, v8, v7, v6, v10 == 10))
  {
    [markCopy insertText:@"\u200F"];
  }
}

- (void)removeRtlMark:(id)mark
{
  markCopy = mark;
  revisionHistory = [markCopy revisionHistory];
  documentText = [revisionHistory documentText];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v6 = [documentText componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v6 count] >= 2)
  {
    if ([documentText characterAtIndex:0] == 8207)
    {
      [markCopy deleteBackward:{objc_msgSend(documentText, "length")}];
      v7 = [documentText substringFromIndex:1];
      if ([v7 length])
      {
        [markCopy insertText:v7];
      }
    }

    else
    {
      v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 2}];
      v9 = [v8 containsString:@"\u200F"];

      if (!v9)
      {
        goto LABEL_15;
      }

      v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 2}];
      if ([v7 hasPrefix:@"\u200F"])
      {
        v10 = [v7 substringFromIndex:1];

        v7 = v10;
      }

      v11 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 1}];
      v12 = [v11 length];
      v13 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 2}];
      v14 = v12 + [v13 length];

      [markCopy deleteBackward:v14 + 1];
      v15 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 2}];
      LODWORD(v14) = [v15 isEqualToString:@"\u200F"];

      v16 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 1}];
      if (v14)
      {
        v17 = @"\n";
      }

      else
      {
        v17 = @" ";
      }

      v18 = [(__CFString *)v17 stringByAppendingString:v16];
      v19 = [v7 stringByAppendingString:v18];

      if ([v19 length])
      {
        [markCopy insertText:v19];
      }
    }
  }

LABEL_15:
}

- (void)handleSpaceDeletionWithContext:(id)context
{
  v42 = *MEMORY[0x29EDCA608];
  contextCopy = context;
  revisionHistory = [contextCopy revisionHistory];
  documentText = [revisionHistory documentText];

  v6 = [documentText length];
  [objc_opt_class() arabicPrefixes];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v38 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
  v25 = v7;
  v26 = contextCopy;
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v36 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@" %@ ", *(*(&v35 + 1) + 8 * v11)];
      if ([documentText hasSuffix:v12])
      {
        goto LABEL_32;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (v6 < 4)
  {
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v20 = v7;
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
LABEL_23:
      v24 = 0;
      while (1)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ ", *(*(&v27 + 1) + 8 * v24)];
        if (v6 == [v12 length] && (objc_msgSend(documentText, "hasSuffix:", v12) & 1) != 0)
        {
          goto LABEL_31;
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
          if (v22)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }
  }

  else
  {
    v33 = 0uLL;
    v34 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
LABEL_12:
      v17 = 0;
      while (1)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v31 + 1) + 8 * v17);
        v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ ", v18];
        if ([documentText hasSuffix:v12])
        {
          v19 = [v18 length];
          if (v6 >= v19 + 2 && [documentText characterAtIndex:v6 - 2 - v19] == 10)
          {
            break;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v15)
          {
            goto LABEL_12;
          }

          goto LABEL_33;
        }
      }

LABEL_31:
      contextCopy = v26;
LABEL_32:
      [contextCopy deleteTextBackward:@" "];
    }
  }

LABEL_33:
}

@end