@interface NSUnitSpeed(CAFUnit)
+ (id)metersPerHour;
@end

@implementation NSUnitSpeed(CAFUnit)

+ (id)metersPerHour
{
  if (metersPerHour_onceToken != -1)
  {
    +[NSUnitSpeed(CAFUnit) metersPerHour];
  }

  v2 = metersPerHour_metersPerHour;

  return v2;
}

@end