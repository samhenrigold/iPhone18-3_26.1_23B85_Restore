@interface LiblouisEmojiPrintPreprocessor
- (LiblouisEmojiPrintPreprocessor)init;
- (id)preprocessPrintString:(id)string withLocationMap:(id *)map typeformData:(id)data;
- (void)_setupLocale;
- (void)dealloc;
@end

@implementation LiblouisEmojiPrintPreprocessor

- (id)preprocessPrintString:(id)string withLocationMap:(id *)map typeformData:(id)data
{
  stringCopy = string;
  dataCopy = data;
  if (stringCopy)
  {
    v22 = dataCopy;
    v9 = [stringCopy length];
    v10 = +[NSMutableString string];
    if (map)
    {
      v11 = [NSMutableData dataWithLength:0];
    }

    else
    {
      v11 = 0;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    [stringCopy length];
    v13 = stringCopy;
    v14 = v10;
    v15 = v11;
    v23 = v22;
    CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
    v16 = v25[3];
    if (v9 > v16)
    {
      v17 = v14;
      v18 = v15;
      v19 = [v13 substringWithRange:{v16, v9 - v16}];
      [v17 appendString:v19];

      do
      {
        v28 = v16;
        [v18 appendBytes:&v28 length:8];
        ++v16;
      }

      while (v9 != v16);
    }

    if (map)
    {
      v20 = v15;
      *map = v15;
    }

    v12 = v14;

    _Block_object_dispose(&v24, 8);
    dataCopy = v22;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (LiblouisEmojiPrintPreprocessor)init
{
  v6.receiver = self;
  v6.super_class = LiblouisEmojiPrintPreprocessor;
  v2 = [(LiblouisEmojiPrintPreprocessor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(LiblouisEmojiPrintPreprocessor *)v2 _setupLocale];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_setupLocale" name:kCFLocaleCurrentLocaleDidChangeNotification object:0];
  }

  return v3;
}

- (void)_setupLocale
{
  v3 = CFLocaleCopyCurrent();
  locale = self->_locale;
  if (locale)
  {
    CFRelease(locale);
    self->_locale = 0;
  }

  CFLocaleGetValue(v3, kCFLocaleLanguageCode);
  self->_locale = CEMCreateEmojiLocaleData();
  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)dealloc
{
  locale = self->_locale;
  if (locale)
  {
    CFRelease(locale);
  }

  v4.receiver = self;
  v4.super_class = LiblouisEmojiPrintPreprocessor;
  [(LiblouisEmojiPrintPreprocessor *)&v4 dealloc];
}

@end