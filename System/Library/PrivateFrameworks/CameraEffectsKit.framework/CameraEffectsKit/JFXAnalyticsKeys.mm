@interface JFXAnalyticsKeys
+ (id)allEventNames;
+ (id)allIncrementScalarEvents;
@end

@implementation JFXAnalyticsKeys

+ (id)allEventNames
{
  if (allEventNames_onceToken_0 != -1)
  {
    +[JFXAnalyticsKeys allEventNames];
  }

  v3 = allEventNames_eventNamesArray_0;

  return v3;
}

void __33__JFXAnalyticsKeys_allEventNames__block_invoke()
{
  v7 = +[JFXAnalyticsKeys allIncrementScalarEvents];
  v0 = +[JFXAnalyticsKeys allDistributionEvents];
  v1 = [v7 arrayByAddingObjectsFromArray:v0];
  v2 = +[JFXAnalyticsKeys allOverrideScalarEvents];
  v3 = [v1 arrayByAddingObjectsFromArray:v2];
  v4 = +[JFXAnalyticsKeys allIncrementScalarEffectEvents];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = allEventNames_eventNamesArray_0;
  allEventNames_eventNamesArray_0 = v5;
}

+ (id)allIncrementScalarEvents
{
  if (allIncrementScalarEvents_onceToken_1 != -1)
  {
    +[JFXAnalyticsKeys allIncrementScalarEvents];
  }

  v3 = allIncrementScalarEvents_allIncrementScalarEvents_1;

  return v3;
}

void __44__JFXAnalyticsKeys_allIncrementScalarEvents__block_invoke()
{
  v7[11] = *MEMORY[0x277D85DE8];
  v7[0] = @"thermalnominaltolight";
  v7[1] = @"thermallighttomoderate";
  v7[2] = @"thermalmoderatetoheavy";
  v7[3] = @"thermalheavytotrapping";
  v7[4] = @"thermaltrappingtosleeping";
  v7[5] = @"thermalsleepingtotrapping";
  v7[6] = @"thermaltrappingtoheavy";
  v7[7] = @"thermalheavytomoderate";
  v7[8] = @"thermalmoderatetolight";
  v7[9] = @"thermallighttonominal";
  v7[10] = @"facetrackedoverlaychangedplanes";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:11];
  v1 = allIncrementScalarEvents_allIncrementScalarEvents_1;
  allIncrementScalarEvents_allIncrementScalarEvents_1 = v0;

  v2 = allIncrementScalarEvents_allIncrementScalarEvents_1;
  v4 = JFX_CaptureSessionInterruptionReasonsList(v3);
  v5 = [v2 arrayByAddingObjectsFromArray:v4];
  v6 = allIncrementScalarEvents_allIncrementScalarEvents_1;
  allIncrementScalarEvents_allIncrementScalarEvents_1 = v5;
}

@end