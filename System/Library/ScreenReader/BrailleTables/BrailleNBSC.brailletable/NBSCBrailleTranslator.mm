@interface NBSCBrailleTranslator
+ (id)sharedInstance;
- (NBSCBrailleTranslator)init;
- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges;
- (id)textForPrintBraille:(id)braille mode:(unint64_t)mode locations:(id *)locations;
@end

@implementation NBSCBrailleTranslator

+ (id)sharedInstance
{
  v2 = _sharedInstance;
  if (!_sharedInstance)
  {
    v3 = objc_alloc_init(NBSCBrailleTranslator);
    v4 = _sharedInstance;
    _sharedInstance = v3;

    v2 = _sharedInstance;
  }

  return v2;
}

- (NBSCBrailleTranslator)init
{
  v23.receiver = self;
  v23.super_class = NBSCBrailleTranslator;
  v2 = [(NBSCBrailleTranslator *)&v23 init];
  _initialized = 0;
  if (v2)
  {
    _initialized = 1;
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    resourcePath = [v3 resourcePath];
    v5 = [resourcePath stringByAppendingString:@"/"];
    uTF8String = [v5 UTF8String];

    v7 = Init(uTF8String);
    if (v7)
    {
      _initialized = 0;
      v8 = NBSCLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_23478();
      }
    }

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 pathForResource:@"HanKataToZenHira" ofType:@"plist"];

    v11 = [NSDictionary dictionaryWithContentsOfFile:v10];
    hanKataToZenHira = v2->_hanKataToZenHira;
    v2->_hanKataToZenHira = v11;

    if (!v2->_hanKataToZenHira)
    {
      _initialized = 0;
      v14 = NBSCLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_234E8();
      }
    }

    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 pathForResource:@"kan" ofType:@"dat"];
    uTF8String2 = [v16 UTF8String];

    v18 = CToText::Init(&v2->_brlToText, uTF8String2);
    if (v18)
    {
      _initialized = 0;
      v19 = NBSCLog(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_2355C();
      }
    }

    v20 = CToText::SetConvertMode(&v2->_brlToText, 0);
    if (v20)
    {
      _initialized = 0;
      v21 = NBSCLog(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_235CC();
      }
    }
  }

  return v2;
}

- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges
{
  textCopy = text;
  rangesCopy = ranges;
  v25 = rangesCopy;
  if (_initialized)
  {
    v9 = [[NSMutableData alloc] initWithCapacity:{8 * objc_msgSend(textCopy, "length")}];
    for (i = 0; i < [textCopy length]; ++i)
    {
      v33[0] = i;
      [v9 appendBytes:v33 length:8];
    }

    v23 = [[BRLTEmojiPrintPreprocessor alloc] initWithPrimaryLanguageCode:@"ja-JP"];
    v24 = objc_opt_new();
    v11 = [[NSArray alloc] initWithObjects:{v23, v24, 0, v9}];
    v26 = v9;
    v12 = textCopy;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v14)
    {
      v15 = *v30;
      v16 = v26;
      do
      {
        v17 = 0;
        v18 = v12;
        v19 = v16;
        do
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v29 + 1) + 8 * v17);
          v28 = 0;
          v12 = [v20 preprocessPrintString:v18 withLocationMap:&v28 isEightDot:1 textFormattingRanges:0];
          v21 = v28;

          v16 = [BRLTPreprocessorHelper mergeLocationMap:v19 withLocationMap:v21];

          v17 = v17 + 1;
          v18 = v12;
          v19 = v16;
        }

        while (v14 != v17);
        v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = v26;
    }

    if ([v12 length])
    {
      operator new[]();
    }
  }

  else
  {
    v26 = NBSCLog(rangesCopy);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_2363C();
    }
  }

  return &stru_2C358;
}

- (id)textForPrintBraille:(id)braille mode:(unint64_t)mode locations:(id *)locations
{
  brailleCopy = braille;
  v29 = objc_opt_new();
  for (i = 0; i < [brailleCopy length]; ++i)
  {
    LOWORD(v35[0]) = [brailleCopy characterAtIndex:i];
    v8 = [NSString stringWithCharacters:v35 length:1];
    [v29 appendString:v8];
    if (i == [brailleCopy length] - 1)
    {
      if ([&off_2C480 containsObject:v8])
      {
        [v29 appendString:@"⠀"];
      }
    }
  }

  v28 = v29;

  v32[0] = 0;
  v32[1] = v35;
  v33 = &v34;
  CToText::SetConvertMode(&self->_brlToText, 0);
  v31 = 0;
  v30 = objc_alloc_init(NSMutableString);
  v9 = [[NSMutableData alloc] initWithCapacity:{8 * objc_msgSend(v30, "length")}];
  for (j = 0; j < [v28 length]; j = ++v31)
  {
    v11 = [v28 characterAtIndex:v31];
    if (v11 == 13)
    {
      break;
    }

    if (v11 >> 8 == 40)
    {
      LOBYTE(v32[0]) = v11;
      if (!CToText::BrlToText(&self->_brlToText, v32))
      {
        if (v35[0])
        {
          v12 = 0;
          v13 = v35;
          do
          {
            v14 = &v35[v12];
            v16 = v14[1];
            v15 = v14 + 1;
            if (!v16)
            {
              goto LABEL_18;
            }

            v17 = [NSString stringWithCharacters:v13 length:1];
            v18 = [NSString stringWithCharacters:v15 length:1];
            v19 = [v17 stringByAppendingString:v18];
            v20 = [(NSDictionary *)self->_hanKataToZenHira objectForKey:v19];
            if (v20)
            {
              [v30 appendString:v20];
              [v9 appendBytes:&v31 length:8];
              v12 += 2;
            }

            if (!v20)
            {
LABEL_18:
              v21 = [NSString stringWithCharacters:&v35[v12] length:1];
              v22 = [(NSDictionary *)self->_hanKataToZenHira objectForKey:v21];
              v23 = v22;
              if (v22)
              {
                v24 = v22;

                v21 = v24;
              }

              [v30 appendString:v21];
              [v9 appendBytes:&v31 length:8];

              ++v12;
            }

            v13 = &v35[v12];
          }

          while (*v13);
        }
      }
    }
  }

  if (locations)
  {
    v25 = v9;
    *locations = v9;
  }

  return v30;
}

@end