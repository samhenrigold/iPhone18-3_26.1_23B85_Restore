@interface UIFont(StocksUICoreText)
- (double)su_languageAwareOutsetsAtScale:()StocksUICoreText;
@end

@implementation UIFont(StocksUICoreText)

- (double)su_languageAwareOutsetsAtScale:()StocksUICoreText
{
  CTFontGetLanguageAwareOutsets();
  UICeilToScale();
  v4 = -v2;
  UICeilToScale();
  UICeilToScale();
  UICeilToScale();
  return v4;
}

@end