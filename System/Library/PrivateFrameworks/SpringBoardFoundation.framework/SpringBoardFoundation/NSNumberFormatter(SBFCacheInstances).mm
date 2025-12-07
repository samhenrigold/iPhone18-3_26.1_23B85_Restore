@interface NSNumberFormatter(SBFCacheInstances)
+ (id)sbf_cachedDecimalNumberFormatter;
@end

@implementation NSNumberFormatter(SBFCacheInstances)

+ (id)sbf_cachedDecimalNumberFormatter
{
  if (sbf_cachedDecimalNumberFormatter_onceToken != -1)
  {
    +[NSNumberFormatter(SBFCacheInstances) sbf_cachedDecimalNumberFormatter];
  }

  v2 = sbf_cachedDecimalNumberFormatter__cachedDecimalNumberFormatter;

  return v2;
}

@end