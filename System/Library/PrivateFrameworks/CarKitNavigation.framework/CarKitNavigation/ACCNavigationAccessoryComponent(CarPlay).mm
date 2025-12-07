@interface ACCNavigationAccessoryComponent(CarPlay)
+ (id)CP_variant:()CarPlay fittingMaxLength:;
+ (uint64_t)CP_ignoreMaxLength;
- (id)CP_variantFittingCurrentRoadName:()CarPlay;
- (id)CP_variantFittingDestinationRoadName:()CarPlay;
- (id)CP_variantFittingLaneGuidanceDescription:()CarPlay;
- (id)CP_variantFittingManeuverDescription:()CarPlay;
- (id)CP_variantFittingPostManeuverRoadName:()CarPlay;
- (uint64_t)CP_maxCapacity_GuidanceManeuver;
- (uint64_t)CP_maxCapacity_LaneGuidance;
@end

@implementation ACCNavigationAccessoryComponent(CarPlay)

- (uint64_t)CP_maxCapacity_GuidanceManeuver
{
  if (![self maxCapacity_GuidanceManeuver])
  {
    return 1000;
  }

  return [self maxCapacity_GuidanceManeuver];
}

+ (uint64_t)CP_ignoreMaxLength
{
  if (CP_ignoreMaxLength_onceToken != -1)
  {
    +[ACCNavigationAccessoryComponent(CarPlay) CP_ignoreMaxLength];
  }

  return CP_ignoreMaxLength_ignoreMaxLength;
}

+ (id)CP_variant:()CarPlay fittingMaxLength:
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 count])
  {
    if (a4 && ![self CP_ignoreMaxLength])
    {
      firstObject = [v6 firstObject];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            if ([v14 length] <= a4)
            {
              firstObject2 = v14;

              goto LABEL_18;
            }

            v15 = [v14 length];
            if (v15 < [firstObject length])
            {
              v16 = v14;

              firstObject = v16;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      firstObject = firstObject;
      firstObject2 = firstObject;
LABEL_18:
    }

    else
    {
      firstObject2 = [v6 firstObject];
    }
  }

  else
  {
    firstObject2 = 0;
  }

  return firstObject2;
}

- (id)CP_variantFittingCurrentRoadName:()CarPlay
{
  v4 = MEMORY[0x277CE82D0];
  v5 = a3;
  v6 = [v4 CP_variant:v5 fittingMaxLength:{objc_msgSend(self, "maxLength_CurrentRoadName")}];

  return v6;
}

- (id)CP_variantFittingDestinationRoadName:()CarPlay
{
  v4 = MEMORY[0x277CE82D0];
  v5 = a3;
  v6 = [v4 CP_variant:v5 fittingMaxLength:{objc_msgSend(self, "maxLength_DestinationRoadName")}];

  return v6;
}

- (id)CP_variantFittingPostManeuverRoadName:()CarPlay
{
  v4 = MEMORY[0x277CE82D0];
  v5 = a3;
  v6 = [v4 CP_variant:v5 fittingMaxLength:{objc_msgSend(self, "maxLength_PostManeuverRoadName")}];

  return v6;
}

- (id)CP_variantFittingManeuverDescription:()CarPlay
{
  v4 = MEMORY[0x277CE82D0];
  v5 = a3;
  v6 = [v4 CP_variant:v5 fittingMaxLength:{objc_msgSend(self, "maxLength_ManeuverDescription")}];

  return v6;
}

- (id)CP_variantFittingLaneGuidanceDescription:()CarPlay
{
  v4 = MEMORY[0x277CE82D0];
  v5 = a3;
  v6 = [v4 CP_variant:v5 fittingMaxLength:{objc_msgSend(self, "maxLength_LaneGuidanceDescription")}];

  return v6;
}

- (uint64_t)CP_maxCapacity_LaneGuidance
{
  if (![self maxCapacity_LaneGuidance])
  {
    return 1000;
  }

  return [self maxCapacity_LaneGuidance];
}

@end