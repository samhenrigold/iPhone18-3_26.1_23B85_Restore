@interface UIColor
@end

@implementation UIColor

void __44__UIColor_MessageUI__mailQuoteColorLevelOne__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() mf_colorNamed:@"QuoteColorPurple"];
  v3 = mailQuoteColorLevelOne_sInstance;
  mailQuoteColorLevelOne_sInstance = v2;
}

void __44__UIColor_MessageUI__mailQuoteColorLevelTwo__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() mf_colorNamed:@"QuoteColorTeal"];
  v3 = mailQuoteColorLevelTwo_sInstance;
  mailQuoteColorLevelTwo_sInstance = v2;
}

void __46__UIColor_MessageUI__mailQuoteColorLevelThree__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() mf_colorNamed:@"QuoteColorGreen"];
  v3 = mailQuoteColorLevelThree_sInstance;
  mailQuoteColorLevelThree_sInstance = v2;
}

@end