@interface NSDateFormatter(MTUtilities)
+ (id)mtTimeOnlyFormatter;
@end

@implementation NSDateFormatter(MTUtilities)

+ (id)mtTimeOnlyFormatter
{
  if (mtTimeOnlyFormatter_onceToken != -1)
  {
    +[NSDateFormatter(MTUtilities) mtTimeOnlyFormatter];
  }

  v2 = mtTimeOnlyFormatter__timeOnlyFormatter;

  return v2;
}

@end