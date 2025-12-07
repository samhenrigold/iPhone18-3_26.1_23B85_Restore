@interface SPMatcher
+ (id)transcriptionForString:(id)string withLanguage:(id)language;
- (SPMatcher)initWithSearchString:(id)string andLocale:(id)locale andOptions:(unint64_t)options;
- (void)dealloc;
@end

@implementation SPMatcher

- (SPMatcher)initWithSearchString:(id)string andLocale:(id)locale andOptions:(unint64_t)options
{
  stringCopy = string;
  localeCopy = locale;
  v11.receiver = self;
  v11.super_class = SPMatcher;
  v9 = [(SPMatcher *)&v11 init];
  if (v9)
  {
    v9->_matcher = icu_word_matcher_create();
  }

  return v9;
}

- (void)dealloc
{
  icu_ctx_release();
  v3.receiver = self;
  v3.super_class = SPMatcher;
  [(SPMatcher *)&v3 dealloc];
}

+ (id)transcriptionForString:(id)string withLanguage:(id)language
{
  v11 = *MEMORY[0x1E69E9840];
  bzero(v10, 0x400uLL);
  stringCopy = string;
  languageCopy = language;
  [string UTF8String];
  [languageCopy UTF8String];

  if (resolve_transcriptions_for_locale())
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end