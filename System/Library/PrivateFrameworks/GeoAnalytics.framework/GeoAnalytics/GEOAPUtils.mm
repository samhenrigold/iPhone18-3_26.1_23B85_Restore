@interface GEOAPUtils
+ (id)GEOAPApplicationIdentifier;
+ (id)GEOAPCachePath;
+ (id)currentDailyAggregationRepresentativeString;
+ (id)currentDailyAggregationTimestamp;
+ (id)daemonSet;
+ (id)dailyAggregationTimestampFromDate:(id)date inAggTimestampFormat:(BOOL)format;
+ (id)firstPartySet;
+ (int)functionalAppGroup;
+ (int)myAppType;
+ (void)appTypeForAppId:(id)id resultBlock:(id)block;
@end

@implementation GEOAPUtils

+ (int)myAppType
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__GEOAPUtils_myAppType__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (myAppType_onceToken != -1)
  {
    dispatch_once(&myAppType_onceToken, block);
  }

  return myAppType_myAppType;
}

void __23__GEOAPUtils_myAppType__block_invoke(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = GEOApplicationIdentifierOrProcessName();
  [v1 appTypeForAppId:v2 resultBlock:&__block_literal_global_66];
}

void __32__GEOAPUtils_functionalAppGroup__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) GEOAPApplicationIdentifier];
  v2 = [v1 lowercaseString];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = GEOConfigGetArray();
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v32 + 1) + 8 * v7) lowercaseString];
        v9 = [v8 isEqualToString:v2];

        if (v9)
        {
          v22 = 0x1ED9A0000;
          v23 = 1;
LABEL_29:
          *(v22 + 3936) = v23;

          goto LABEL_30;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = GEOConfigGetArray();
  v10 = [v3 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v3);
        }

        v14 = [*(*(&v28 + 1) + 8 * v13) lowercaseString];
        v15 = [v14 isEqualToString:v2];

        if (v15)
        {
          v22 = 0x1ED9A0000;
          v23 = 2;
          goto LABEL_29;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v3 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = GEOConfigGetArray();
  v16 = [v3 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v3);
        }

        v20 = [*(*(&v24 + 1) + 8 * v19) lowercaseString];
        v21 = [v20 isEqualToString:v2];

        if (v21)
        {
          v22 = 0x1ED9A0000uLL;
          v23 = 3;
          goto LABEL_29;
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v3 countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  functionalAppGroup_functionalAppGroup = 0;
LABEL_30:
}

+ (id)GEOAPApplicationIdentifier
{
  if (GEOAPOverrideApplicationId)
  {
    v2 = GEOAPOverrideApplicationId;
  }

  else
  {
    v2 = GEOApplicationIdentifierOrProcessName();
  }

  return v2;
}

+ (id)firstPartySet
{
  if (firstPartySet_onceToken != -1)
  {
    dispatch_once(&firstPartySet_onceToken, &__block_literal_global_1317);
  }

  v3 = firstPartySet_set;

  return v3;
}

uint64_t __27__GEOAPUtils_firstPartySet__block_invoke()
{
  firstPartySet_set = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2056770];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)daemonSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__GEOAPUtils_daemonSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (daemonSet_onceToken != -1)
  {
    dispatch_once(&daemonSet_onceToken, block);
  }

  v2 = daemonSet_set;

  return v2;
}

void __23__GEOAPUtils_daemonSet__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v1 addObjectsFromArray:&unk_1F2056788];
  v2 = [objc_opt_class() daemonIdAdditions];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 length])
        {
          v8 = [v7 lowercaseString];
          [v1 addObject:v8];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = [v1 copy];
  v10 = daemonSet_set;
  daemonSet_set = v9;
}

+ (id)currentDailyAggregationTimestamp
{
  mEMORY[0x1E69A2430] = [MEMORY[0x1E69A2430] sharedManager];
  bestReferenceDate = [mEMORY[0x1E69A2430] bestReferenceDate];

  v5 = [self dailyAggregationTimestampFromDate:bestReferenceDate];

  return v5;
}

+ (id)currentDailyAggregationRepresentativeString
{
  if (_GEOConfigHasValue())
  {
    mEMORY[0x1E69A2430] = [MEMORY[0x1E69A2430] sharedManager];
    bestReferenceDate = [mEMORY[0x1E69A2430] bestReferenceDate];

    v5 = GEOConfigGetDate();
    v6 = [v5 dateByAddingTimeInterval:86400.0];
    v7 = 1000;
    v8 = @"indeterminant range";
    while ([v5 compare:bestReferenceDate] == 1 || objc_msgSend(v6, "compare:", bestReferenceDate) == -1)
    {
      v9 = v6;

      v6 = [v9 dateByAddingTimeInterval:86400.0];

      v5 = v9;
      if (!--v7)
      {
        goto LABEL_9;
      }
    }

    v8 = [self dailyAggregationRepresentativeStringFromDate:v5];
    v9 = v5;
LABEL_9:
  }

  else
  {
    v8 = @"not set";
  }

  return v8;
}

+ (int)functionalAppGroup
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__GEOAPUtils_functionalAppGroup__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (functionalAppGroup_onceToken != -1)
  {
    dispatch_once(&functionalAppGroup_onceToken, block);
  }

  return functionalAppGroup_functionalAppGroup;
}

+ (id)GEOAPCachePath
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:0];

  gEOAPApplicationIdentifier = [self GEOAPApplicationIdentifier];
  v6 = [v4 URLByAppendingPathComponent:gEOAPApplicationIdentifier];

  path = [v6 path];

  return path;
}

+ (id)dailyAggregationTimestampFromDate:(id)date inAggTimestampFormat:(BOOL)format
{
  formatCopy = format;
  dateCopy = date;
  v6 = objc_alloc(MEMORY[0x1E695DEE8]);
  v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  if (formatCopy)
  {
    v8 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v7 setTimeZone:v8];
  }

  v9 = [v7 components:60 fromDate:dateCopy];
  [v9 setHour:{objc_msgSend(v9, "hour") - 4}];
  v10 = [v7 dateFromComponents:v9];
  v11 = [v7 components:28 fromDate:v10];
  v12 = [v7 dateFromComponents:v11];
  v13 = objc_alloc_init(MEMORY[0x1E696AC80]);
  if (formatCopy)
  {
    localTimeZone = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    v15 = 275;
  }

  else
  {
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    v15 = 883;
  }

  [v13 setTimeZone:localTimeZone];

  [v13 setFormatOptions:v15];
  v16 = [v13 stringFromDate:v12];

  return v16;
}

+ (void)appTypeForAppId:(id)id resultBlock:(id)block
{
  idCopy = id;
  blockCopy = block;
  if ([idCopy isEqualToString:*MEMORY[0x1E69A1A78]])
  {
    blockCopy[2](blockCopy, 0, 1);
    goto LABEL_13;
  }

  v6 = [idCopy componentsSeparatedByString:@"."];
  if ([v6 count] >= 3)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    if ([v7 isEqualToString:@"com"])
    {
      v8 = [v6 objectAtIndexedSubscript:1];
      v9 = [v8 isEqualToString:@"apple"];

      if (v9)
      {
        lastObject = [v6 lastObject];
        lowercaseString = [lastObject lowercaseString];

        firstPartySet = [objc_opt_class() firstPartySet];
        v13 = [firstPartySet containsObject:lowercaseString];

        if (v13)
        {
          v14 = 0;
        }

        else
        {
          daemonSet = [objc_opt_class() daemonSet];
          v16 = [daemonSet containsObject:lowercaseString];

          if (v16)
          {
            v14 = 3;
          }

          else
          {
            v14 = 1;
          }
        }

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  if ([v6 count] == 1)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

LABEL_12:
  blockCopy[2](blockCopy, v14, 0);

LABEL_13:
}

@end