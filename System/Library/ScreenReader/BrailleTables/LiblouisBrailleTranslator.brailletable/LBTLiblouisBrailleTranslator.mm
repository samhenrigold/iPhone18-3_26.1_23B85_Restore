@interface LBTLiblouisBrailleTranslator
+ (void)initialize;
- (BOOL)activeTableSupportsContractedBraille;
- (BOOL)activeTableSupportsEightDotBraille;
- (BOOL)activeTableSupportsIPA;
- (BOOL)activeTableSupportsModeWithKey:(id)key;
- (BOOL)activeTableSupportsTechnicalBraille;
- (LBTLiblouisBrailleTranslator)init;
- (NSDictionary)activeTableMap;
- (NSDictionary)languageMap;
- (id)_printBrailleForText:(id)text table:(id)table locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges;
- (id)printBrailleForTechnicalText:(id)text useTechnicalTable:(BOOL)table locations:(id *)locations textFormattingRanges:(id)ranges;
- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textFormattingRanges:(id)ranges;
- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges;
- (id)tableForActiveTableMode:(unint64_t)mode;
- (id)tableListForTable:(id)table;
- (id)technicalTableForActiveLanguage:(BOOL)language;
- (id)textForPrintBraille:(id)braille mode:(unint64_t)mode locations:(id *)locations;
- (void)dealloc;
- (void)setActiveTable:(id)table;
@end

@implementation LBTLiblouisBrailleTranslator

+ (void)initialize
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  resourcePath = [v2 resourcePath];
  v5 = [resourcePath stringByAppendingString:@"/liblouis/tables"];

  v4 = v5;
  setenv("LOUIS_TABLEPATH", [v5 UTF8String], 1);
  lou_registerLogCallback(sub_172C);
}

- (LBTLiblouisBrailleTranslator)init
{
  v6.receiver = self;
  v6.super_class = LBTLiblouisBrailleTranslator;
  v2 = [(LBTLiblouisBrailleTranslator *)&v6 init];
  v3 = objc_opt_new();
  [(LBTLiblouisBrailleTranslator *)v2 setEmojiPreprocessor:v3];

  v4 = objc_opt_new();
  [(LBTLiblouisBrailleTranslator *)v2 setTextFormattingPreprocessor:v4];

  return v2;
}

- (void)dealloc
{
  lou_free();
  v3.receiver = self;
  v3.super_class = LBTLiblouisBrailleTranslator;
  [(LBTLiblouisBrailleTranslator *)&v3 dealloc];
}

- (NSDictionary)languageMap
{
  languageMap = self->_languageMap;
  if (!languageMap)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"Tables" ofType:@"plist"];
    v6 = [NSDictionary dictionaryWithContentsOfFile:v5];
    v7 = self->_languageMap;
    self->_languageMap = v6;

    languageMap = self->_languageMap;
  }

  return languageMap;
}

- (NSDictionary)activeTableMap
{
  languageMap = [(LBTLiblouisBrailleTranslator *)self languageMap];
  activeTable = [(LBTLiblouisBrailleTranslator *)self activeTable];
  v5 = [languageMap objectForKeyedSubscript:activeTable];

  return v5;
}

- (BOOL)activeTableSupportsModeWithKey:(id)key
{
  keyCopy = key;
  activeTableMap = [(LBTLiblouisBrailleTranslator *)self activeTableMap];
  v6 = [activeTableMap objectForKeyedSubscript:keyCopy];

  return v6 != 0;
}

- (id)tableListForTable:(id)table
{
  tableCopy = table;
  languageMap = [(LBTLiblouisBrailleTranslator *)self languageMap];
  v6 = [languageMap objectForKeyedSubscript:tableCopy];

  allValues = [v6 allValues];
  v8 = [allValues componentsJoinedByString:{@", "}];

  return v8;
}

- (id)tableForActiveTableMode:(unint64_t)mode
{
  activeTableMap = [(LBTLiblouisBrailleTranslator *)self activeTableMap];
  v5 = [activeTableMap objectForKeyedSubscript:@"table"];
  if (!v5)
  {
    v6 = @"6Dot";
    if (mode == 2)
    {
      v6 = @"8Dot";
    }

    if (mode == 3)
    {
      v7 = @"Contracted";
    }

    else
    {
      v7 = v6;
    }

    v5 = [activeTableMap objectForKeyedSubscript:v7];
    if (!v5)
    {
      v5 = [activeTableMap objectForKeyedSubscript:@"Contracted"];
      if (!v5)
      {
        v5 = [activeTableMap objectForKeyedSubscript:@"8Dot"];
        if (!v5)
        {
          v5 = [activeTableMap objectForKeyedSubscript:@"6Dot"];
        }
      }
    }
  }

  v8 = v5;

  return v8;
}

- (id)technicalTableForActiveLanguage:(BOOL)language
{
  languageCopy = language;
  activeTableMap = [(LBTLiblouisBrailleTranslator *)self activeTableMap];
  v6 = activeTableMap;
  if (!languageCopy || ([activeTableMap objectForKeyedSubscript:@"Technical"], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [(LBTLiblouisBrailleTranslator *)self tableForActiveTableMode:1];
  }

  return v7;
}

- (void)setActiveTable:(id)table
{
  tableCopy = table;
  v5 = LBTLog(tableCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1CA04();
  }

  if (![(NSString *)self->_activeTable isEqualToString:tableCopy])
  {
    lou_free();
    v6 = [tableCopy copy];
    activeTable = self->_activeTable;
    self->_activeTable = v6;

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 objectForInfoDictionaryKey:@"BrailleTables"];
    v10 = [v9 objectForKey:tableCopy];
    v11 = [v10 objectForKey:@"supportsContraction"];
    self->_supportsContraction = [v11 BOOLValue];

    v12 = [v10 objectForKey:@"supportsTechnical"];
    self->_supportsTechnical = [v12 BOOLValue];

    v13 = [v10 objectForKey:@"supports8dot"];
    self->_supportsEightDot = [v13 BOOLValue];

    v14 = [v10 objectForKey:@"supportsIPA"];
    self->_supportsIPA = [v14 BOOLValue];
  }
}

- (BOOL)activeTableSupportsContractedBraille
{
  if (_os_feature_enabled_impl())
  {
    return self->_supportsContraction;
  }

  return [(LBTLiblouisBrailleTranslator *)self activeTableSupportsModeWithKey:@"Contracted"];
}

- (BOOL)activeTableSupportsEightDotBraille
{
  if (_os_feature_enabled_impl())
  {
    return self->_supportsEightDot;
  }

  return [(LBTLiblouisBrailleTranslator *)self activeTableSupportsModeWithKey:@"8Dot"];
}

- (BOOL)activeTableSupportsTechnicalBraille
{
  if (_os_feature_enabled_impl())
  {
    return self->_supportsTechnical;
  }

  return [(LBTLiblouisBrailleTranslator *)self activeTableSupportsModeWithKey:@"Technical"];
}

- (id)printBrailleForTechnicalText:(id)text useTechnicalTable:(BOOL)table locations:(id *)locations textFormattingRanges:(id)ranges
{
  tableCopy = table;
  textCopy = text;
  rangesCopy = ranges;
  v12 = [(LBTLiblouisBrailleTranslator *)self technicalTableForActiveLanguage:tableCopy];
  if (v12)
  {
    v13 = -[LBTLiblouisBrailleTranslator _printBrailleForText:table:locations:textPositionsRange:textFormattingRanges:](self, "_printBrailleForText:table:locations:textPositionsRange:textFormattingRanges:", textCopy, v12, locations, 0, [textCopy length], rangesCopy);
  }

  else
  {
    v14 = LBTLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1CA78(self);
    }

    v13 = 0;
  }

  return v13;
}

- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textFormattingRanges:(id)ranges
{
  rangesCopy = ranges;
  textCopy = text;
  v12 = -[LBTLiblouisBrailleTranslator printBrailleForText:mode:locations:textPositionsRange:textFormattingRanges:](self, "printBrailleForText:mode:locations:textPositionsRange:textFormattingRanges:", textCopy, mode, locations, 0, [textCopy length], rangesCopy);

  return v12;
}

- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges
{
  length = range.length;
  location = range.location;
  textCopy = text;
  rangesCopy = ranges;
  v15 = [(LBTLiblouisBrailleTranslator *)self tableForActiveTableMode:mode];
  if (v15)
  {
    rangesCopy = [(LBTLiblouisBrailleTranslator *)self _printBrailleForText:textCopy table:v15 locations:locations textPositionsRange:location textFormattingRanges:length, rangesCopy];
  }

  else
  {
    v17 = LBTLog(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1CAFC(self);
    }

    rangesCopy = 0;
  }

  return rangesCopy;
}

- (id)_printBrailleForText:(id)text table:(id)table locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges
{
  locationsCopy = locations;
  textCopy = text;
  tableCopy = table;
  rangesCopy = ranges;
  textFormattingPreprocessor = [(LBTLiblouisBrailleTranslator *)self textFormattingPreprocessor];
  v14 = [textFormattingPreprocessor processText:textCopy withFormattingRanges:rangesCopy];

  emojiPreprocessor = [(LBTLiblouisBrailleTranslator *)self emojiPreprocessor];
  v63 = 0;
  v16 = [emojiPreprocessor preprocessPrintString:textCopy withLocationMap:&v63 typeformData:v14];
  v17 = v63;

  v18 = [v16 dataUsingEncoding:2483028224];
  bytes = [v18 bytes];
  v20 = [v16 rangeOfComposedCharacterSequencesForRange:{0, objc_msgSend(v16, "length")}];
  v62 = v20 + v21;
  if ((3 * (v20 + v21)) <= 512)
  {
    v22 = 512;
  }

  else
  {
    v22 = 3 * (v20 + v21);
  }

  v61 = v22;
  v23 = malloc_type_malloc(2 * v22, 0x1000040BDFB0063uLL);
  if (v23)
  {
    v24 = v23;
    v59 = v17;
    if (v14)
    {
      v25 = [v14 length];
      v26 = [v16 length];
      if (v26 != (v25 >> 1))
      {
        v27 = LBTLog(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1CB80();
        }

        v14 = 0;
      }
    }

    if (locationsCopy)
    {
      v28 = malloc_type_malloc(4 * v22, 0x9892EA0uLL);
      if (!v28)
      {
        v29 = LBTLog(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_1CC04();
        }

        free(v24);
        v30 = 0;
        v17 = v59;
        goto LABEL_50;
      }
    }

    else
    {
      v28 = 0;
    }

    [v14 length];
    v58 = &v56;
    v32 = __chkstk_darwin();
    v34 = (&v56 - v33);
    if (v32)
    {
      [v14 getBytes:&v56 - v33 length:?];
    }

    else
    {
      v34 = 0;
    }

    v35 = lou_translate([tableCopy UTF8String], bytes, &v62, v24, &v61, v34, 0, v28, 0, 0, 0x44u);
    if (v35 == 1)
    {
      v17 = v59;
      if (locationsCopy)
      {
        v57 = 8 * v61;
        v36 = malloc_type_malloc(v57, 0x6BDFE5AAuLL);
        if (v36)
        {
          v37 = v36;
          bytes2 = [v17 bytes];
          v40 = (v62 - 1);
          if (v62 >= 1)
          {
            v41 = v61;
            v39 = 0.0;
            while (v40)
            {
              v42 = v28[v40];
              v43 = v40 - 1;
              if (v42 != v28[v40 - 1])
              {
                goto LABEL_31;
              }

LABEL_39:
              v52 = v40 <= 0;
              v40 = v43;
              if (v52)
              {
                goto LABEL_41;
              }
            }

            v42 = *v28;
LABEL_31:
            v44 = v42;
            if (v41 > v42)
            {
              v45 = 0;
              v46 = bytes2[v40];
              v47 = v41 - v44;
              v48 = (v41 - v44 + 1) & 0xFFFFFFFFFFFFFFFELL;
              v49 = vdupq_n_s64(v47 - 1);
              v50 = &v37[8 * v44];
              do
              {
                v51 = vmovn_s64(vcgeq_u64(v49, vorrq_s8(vdupq_n_s64(v45), xmmword_1DCF0)));
                if (v51.i8[0])
                {
                  *&v50[8 * v45] = v46;
                }

                if (v51.i8[4])
                {
                  *&v50[8 * v45 + 8] = v46;
                }

                v45 += 2;
              }

              while (v48 != v45);
            }

            v43 = v40 - 1;
            v41 = v44;
            goto LABEL_39;
          }

LABEL_41:
          v53 = [NSData dataWithBytes:v37 length:v57, v39];
          *locationsCopy = v53;
          free(v37);
        }
      }

      if (v28)
      {
        free(v28);
      }

      v30 = [NSString stringWithCharacters:v24 length:v61];
      free(v24);
    }

    else
    {
      v54 = LBTLog(v35);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_1CC44();
      }

      free(v24);
      if (v28)
      {
        free(v28);
      }

      v30 = 0;
      v17 = v59;
    }
  }

  else
  {
    v31 = LBTLog(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1CCC8();
    }

    v30 = 0;
  }

LABEL_50:

  return v30;
}

- (id)textForPrintBraille:(id)braille mode:(unint64_t)mode locations:(id *)locations
{
  brailleCopy = braille;
  v9 = [(LBTLiblouisBrailleTranslator *)self tableForActiveTableMode:mode];
  v10 = [brailleCopy dataUsingEncoding:2483028224];
  bytes = [v10 bytes];
  v12 = [brailleCopy rangeOfComposedCharacterSequencesForRange:{0, objc_msgSend(brailleCopy, "length")}];
  v40 = v12 + v13;
  v14 = 4 * (v12 + v13) + 64;
  v39 = v14;
  v15 = malloc_type_malloc(2 * v14, 0x1000040BDFB0063uLL);
  if (locations)
  {
    v16 = malloc_type_malloc(v14, 0x9550110CuLL);
    if (!v16)
    {
      v17 = LBTLog(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1CC04();
      }

LABEL_32:

      free(v15);
      v35 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = lou_backTranslate([v9 UTF8String], bytes, &v40, v15, &v39, 0, 0, v16, 0, 0, 0x80u);
  if (v18 != 1)
  {
    v17 = LBTLog(v18);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1CD08();
    }

    goto LABEL_32;
  }

  if (v16)
  {
    v19 = 8 * v39;
    v20 = malloc_type_malloc(v19, 0xAF383437uLL);
    if (v20)
    {
      v22 = v20;
      v23 = (v40 - 1);
      if (v40 >= 1)
      {
        v24 = v39;
        v21 = 0.0;
        while (v23)
        {
          v25 = *&v16[4 * v23];
          v26 = v23 - 1;
          if (v25 != *&v16[4 * v23 - 4])
          {
            goto LABEL_15;
          }

LABEL_23:
          v34 = v23 <= 0;
          v23 = v26;
          if (v34)
          {
            goto LABEL_25;
          }
        }

        v25 = *v16;
LABEL_15:
        v27 = v25;
        if (v24 > v25)
        {
          v28 = 0;
          v29 = v24 - v25;
          v30 = (v24 - v27 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v31 = vdupq_n_s64(v29 - 1);
          v32 = &v20[8 * v27];
          do
          {
            v33 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(vdupq_n_s64(v28), xmmword_1DCF0)));
            if (v33.i8[0])
            {
              *&v32[8 * v28] = v23;
            }

            if (v33.i8[4])
            {
              *&v32[8 * v28 + 8] = v23;
            }

            v28 += 2;
          }

          while (v30 != v28);
        }

        v26 = v23 - 1;
        v24 = v27;
        goto LABEL_23;
      }

LABEL_25:
      *locations = [NSData dataWithBytes:v20 length:v19, v21];
      free(v22);
    }

    free(v16);
  }

  v35 = [NSString stringWithCharacters:v15 length:v39];
  free(v15);
  v37 = LBTLog(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    sub_1CD78();
  }

LABEL_33:

  return v35;
}

- (BOOL)activeTableSupportsIPA
{
  if (_os_feature_enabled_impl())
  {
    return self->_supportsIPA;
  }

  activeTable = [(LBTLiblouisBrailleTranslator *)self activeTable];
  v5 = [activeTable isEqualToString:@"ipa"];

  return v5;
}

@end