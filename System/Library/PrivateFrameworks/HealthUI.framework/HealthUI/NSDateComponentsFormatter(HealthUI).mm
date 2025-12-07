@interface NSDateComponentsFormatter(HealthUI)
+ (id)hk_fullStyleDateComponentsFormatter;
@end

@implementation NSDateComponentsFormatter(HealthUI)

+ (id)hk_fullStyleDateComponentsFormatter
{
  if (hk_fullStyleDateComponentsFormatter_onceToken != -1)
  {
    +[NSDateComponentsFormatter(HealthUI) hk_fullStyleDateComponentsFormatter];
  }

  v2 = hk_fullStyleDateComponentsFormatter___dateComponentsFormatter;

  return v2;
}

@end