@interface NSDate
@end

@implementation NSDate

uint64_t __47__NSDate_CRKAdditions__crk_sharedDateFormatter__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = crk_sharedDateFormatter_formatter;
  crk_sharedDateFormatter_formatter = v2;

  v4 = crk_sharedDateFormatter_formatter;

  return [v4 setFormatOptions:1907];
}

@end