@interface NSUnitEnergy(CAFUnit)
+ (id)milliwattHours;
+ (id)wattHours;
@end

@implementation NSUnitEnergy(CAFUnit)

+ (id)wattHours
{
  if (wattHours_onceToken != -1)
  {
    +[NSUnitEnergy(CAFUnit) wattHours];
  }

  v2 = wattHours__wattHours;

  return v2;
}

+ (id)milliwattHours
{
  if (milliwattHours_onceToken != -1)
  {
    +[NSUnitEnergy(CAFUnit) milliwattHours];
  }

  v2 = milliwattHours__wattHours;

  return v2;
}

@end