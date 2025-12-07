@interface NSNumberFormatter(MTUtilities)
+ (id)mtDecimalStyleNumberFormatter;
@end

@implementation NSNumberFormatter(MTUtilities)

+ (id)mtDecimalStyleNumberFormatter
{
  if (mtDecimalStyleNumberFormatter_onceToken != -1)
  {
    +[NSNumberFormatter(MTUtilities) mtDecimalStyleNumberFormatter];
  }

  v2 = mtDecimalStyleNumberFormatter__decimalStyleumberFormatter;

  return v2;
}

@end