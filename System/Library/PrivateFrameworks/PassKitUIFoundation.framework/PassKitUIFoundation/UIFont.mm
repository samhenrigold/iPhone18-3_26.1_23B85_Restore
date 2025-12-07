@interface UIFont
@end

@implementation UIFont

void *__60__UIFont_PKPeerPaymentAdditions__pk_loadPeerPaymentCashFont__block_invoke(uint64_t a1)
{
  result = [objc_opt_class() pk_loadFontWithFileName:@"SFCash-Plain" extension:@"otf"];
  pk_loadPeerPaymentCashFont_result = result;
  return result;
}

void *__56__UIFont_PKPeerPaymentAdditions__pk_loadFDICSignageFont__block_invoke(uint64_t a1)
{
  result = [objc_opt_class() pk_loadFontWithFileName:@"SourceSans3-Italic" extension:@"ttf"];
  pk_loadFDICSignageFont_result = result;
  return result;
}

void *__69__UIFont_PKPeerPaymentAdditions__pk_loadTextCondensedRegularCashFont__block_invoke(uint64_t a1)
{
  result = [objc_opt_class() pk_loadFontWithFileName:@"SF-Cash-Text-Condensed-Regular" extension:@"otf"];
  pk_loadTextCondensedRegularCashFont_result = result;
  return result;
}

void *__70__UIFont_PKPeerPaymentAdditions__pk_loadTextCondensedSemiboldCashFont__block_invoke(uint64_t a1)
{
  result = [objc_opt_class() pk_loadFontWithFileName:@"SF-Cash-Text-Condensed-Semibold" extension:@"otf"];
  pk_loadTextCondensedSemiboldCashFont_result = result;
  return result;
}

void *__68__UIFont_PKPeerPaymentAdditions__pk_loadTextCondensedMediumCashFont__block_invoke(uint64_t a1)
{
  result = [objc_opt_class() pk_loadFontWithFileName:@"SF-Cash-Text-Condensed-Medium" extension:@"otf"];
  pk_loadTextCondensedMediumCashFont_result = result;
  return result;
}

@end