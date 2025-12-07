@interface CPNavigationEnum
+ (id)stringForEnum:(int64_t)enum navEnum:(unsigned __int8)navEnum;
@end

@implementation CPNavigationEnum

+ (id)stringForEnum:(int64_t)enum navEnum:(unsigned __int8)navEnum
{
  if (navEnum > 4)
  {
    if (navEnum <= 6)
    {
      if (navEnum == 5)
      {
        NSStringFromCPDistanceUnits(enum);
      }

      else
      {
        NSStringFromCPGuidanceState(enum);
      }

      goto LABEL_6;
    }

    switch(navEnum)
    {
      case 7u:
        navEnum = NSStringFromCPManeuverState(enum);
        goto LABEL_24;
      case 8u:
        navEnum = NSStringFromCPStopType(enum);
        goto LABEL_24;
      case 9u:
        navEnum = NSStringFromCPChargingStationConnectorType(enum);
        goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (navEnum <= 1)
  {
    if (!navEnum)
    {
      navEnum = 0;
      goto LABEL_24;
    }

    if (navEnum == 1)
    {
      navEnum = NSStringFromCPManeuverType(enum);
      goto LABEL_24;
    }

LABEL_23:
    navEnum = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR - %ld %d", enum, navEnum];
    goto LABEL_24;
  }

  if (navEnum != 2)
  {
    if (navEnum == 3)
    {
      NSStringFromCPTrafficSide(enum);
    }

    else
    {
      NSStringFromCPLaneStatus(enum);
    }

    navEnum = LABEL_6:;
    goto LABEL_24;
  }

  navEnum = NSStringFromCPJunctionType(enum);
LABEL_24:

  return navEnum;
}

@end