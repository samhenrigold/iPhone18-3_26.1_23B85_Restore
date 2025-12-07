@interface NSCharacterSet(_HKXMLExtractorCharacterSets)
+ (id)hk_equalCharacterSet;
+ (id)hk_forwardSlashCharacterSet;
+ (id)hk_percentCharacterSet;
@end

@implementation NSCharacterSet(_HKXMLExtractorCharacterSets)

+ (id)hk_forwardSlashCharacterSet
{
  if (hk_forwardSlashCharacterSet_once != -1)
  {
    +[NSCharacterSet(_HKXMLExtractorCharacterSets) hk_forwardSlashCharacterSet];
  }

  v2 = hk_forwardSlashCharacterSet_sharedForwardSlashSet;

  return v2;
}

+ (id)hk_percentCharacterSet
{
  if (hk_percentCharacterSet_once != -1)
  {
    +[NSCharacterSet(_HKXMLExtractorCharacterSets) hk_percentCharacterSet];
  }

  v2 = hk_percentCharacterSet_sharedPercentSet;

  return v2;
}

+ (id)hk_equalCharacterSet
{
  if (hk_equalCharacterSet_once != -1)
  {
    +[NSCharacterSet(_HKXMLExtractorCharacterSets) hk_equalCharacterSet];
  }

  v2 = hk_equalCharacterSet_sharedEqualSet;

  return v2;
}

@end