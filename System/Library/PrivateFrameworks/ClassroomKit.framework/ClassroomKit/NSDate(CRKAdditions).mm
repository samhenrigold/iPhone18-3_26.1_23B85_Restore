@interface NSDate(CRKAdditions)
+ (id)crk_sharedDateFormatter;
- (BOOL)crk_isInPast;
- (id)crk_JSONStringValue;
@end

@implementation NSDate(CRKAdditions)

- (BOOL)crk_isInPast
{
  v3 = objc_opt_new();
  v4 = [self earlierDate:v3];
  v5 = v4 == self;

  return v5;
}

- (id)crk_JSONStringValue
{
  crk_sharedDateFormatter = [objc_opt_class() crk_sharedDateFormatter];
  v4 = [crk_sharedDateFormatter stringFromDate:self];

  return v4;
}

+ (id)crk_sharedDateFormatter
{
  if (crk_sharedDateFormatter_onceToken != -1)
  {
    +[NSDate(CRKAdditions) crk_sharedDateFormatter];
  }

  v2 = crk_sharedDateFormatter_formatter;

  return v2;
}

@end