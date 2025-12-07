@interface APOdmlLogUtility
+ (id)printInSegments:(id)segments log:(id)log isPlugin:(BOOL)plugin;
+ (id)printModelDeltasInSegments:(id)segments isPlugin:(BOOL)plugin;
+ (void)logModelInputWithAdamID:(id)d adamID:(id)iD;
+ (void)logTrainingRowFeatures:(id)features;
+ (void)logWithLoggerKey:(id)key message:(id)message category:(unint64_t)category;
+ (void)printDESRecordInSegments:(id)segments isPlugin:(BOOL)plugin rowID:(id)d;
+ (void)printDESRecordRowOrder:(id)order iterationNumber:(id)number;
@end

@implementation APOdmlLogUtility

+ (void)logWithLoggerKey:(id)key message:(id)message category:(unint64_t)category
{
  v18[3] = *MEMORY[0x277D85DE8];
  v18[0] = key;
  v17[0] = @"loggerKey";
  v17[1] = @"uniqueIdentifier";
  v7 = MEMORY[0x277CCAD78];
  messageCopy = message;
  keyCopy = key;
  uUID = [v7 UUID];
  uUIDString = [uUID UUIDString];
  v17[2] = @"message";
  v18[1] = uUIDString;
  v18[2] = messageCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v13 = OdmlLogForCategory(category);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    mlJSONString = [v12 mlJSONString];
    v15 = 138477827;
    v16 = mlJSONString;
    _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_DEFAULT, "%{private}@", &v15, 0xCu);
  }
}

+ (void)logModelInputWithAdamID:(id)d adamID:(id)iD
{
  v16[3] = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  mlDictionaryForJSON = [d mlDictionaryForJSON];
  v7 = [mlDictionaryForJSON mutableCopy];

  if (v7)
  {
    [v7 setObject:iDCopy forKeyedSubscript:@"adamID"];
    v16[0] = @"adFeatures";
    v15[0] = @"loggerKey";
    v15[1] = @"uniqueIdentifier";
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v15[2] = @"message";
    v16[1] = uUIDString;
    v16[2] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

    v11 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 description];
      v13 = 138477827;
      v14 = v12;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_DEFAULT, "%{private}@", &v13, 0xCu);
    }
  }

  else
  {
    v10 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_ERROR, "Model inputs: Cannot Parse the Inputs.", &v13, 2u);
    }
  }
}

+ (void)logTrainingRowFeatures:(id)features
{
  v19 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [featuresCopy features];
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        rowID = [featuresCopy rowID];
        [dictionary setValue:rowID forKey:@"trainingRowID"];

        features = [featuresCopy features];
        v12 = [features objectForKeyedSubscript:v8];
        [dictionary setValue:v12 forKey:v8];

        [APOdmlLogUtility logWithLoggerKey:@"TrainingRowFeatures" message:dictionary category:11];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

+ (void)printDESRecordRowOrder:(id)order iterationNumber:(id)number
{
  orderCopy = order;
  numberCopy = number;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([orderCopy count])
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"index_%lu", v7];
      v9 = [orderCopy objectAtIndexedSubscript:v7];
      rowID = [v9 rowID];
      [dictionary setValue:rowID forKey:v8];

      ++v7;
    }

    while (v7 < [orderCopy count]);
  }

  [dictionary setValue:numberCopy forKey:@"IterationNumber"];
  [APOdmlLogUtility logWithLoggerKey:@"RowOrder" message:dictionary category:11];
}

+ (void)printDESRecordInSegments:(id)segments isPlugin:(BOOL)plugin rowID:(id)d
{
  pluginCopy = plugin;
  v34 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  dCopy = d;
  if (!dCopy)
  {
    v8 = OdmlLogForCategory(9uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v25 = objc_opt_class();
      v9 = v25;
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_DEFAULT, "%{private}@]: Generating random DES record ID for logging presave.", buf, 0xCu);
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    dCopy = [uUID UUIDString];
  }

  v21 = segmentsCopy;
  v23 = [segmentsCopy mlJSONStringWithPrettyPrint:0];
  v11 = [v23 length];
  v12 = 0;
  if (pluginCopy)
  {
    v13 = 11;
  }

  else
  {
    v13 = 9;
  }

  v14 = v11 / 5;
  do
  {
    v15 = v12 * v14;
    v16 = v14;
    if (v12 == 4)
    {
      v16 = [v23 length] - v15;
    }

    v17 = OdmlLogForCategory(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      ++v12;
      v19 = v18;
      v20 = [v23 substringWithRange:{v15, v16}];
      *buf = 138478851;
      v25 = v18;
      v26 = 2113;
      v27 = dCopy;
      v28 = 2049;
      v29 = v12;
      v30 = 2049;
      v31 = 5;
      v32 = 2113;
      v33 = v20;
      _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Unarchived DES Record Dictionary %{private}@ (%{private}lu of %{private}lu): %{private}@", buf, 0x34u);
    }

    else
    {
      ++v12;
    }
  }

  while (v12 != 5);
}

+ (id)printModelDeltasInSegments:(id)segments isPlugin:(BOOL)plugin
{
  pluginCopy = plugin;
  mlJSONString = [segments mlJSONString];
  v7 = [self printInSegments:@"Model deltas" log:mlJSONString isPlugin:pluginCopy];

  return v7;
}

+ (id)printInSegments:(id)segments log:(id)log isPlugin:(BOOL)plugin
{
  pluginCopy = plugin;
  v39 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  logCopy = log;
  v8 = MEMORY[0x277CCABB0];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(logCopy, "length")}];
  [v9 floatValue];
  v11 = [v8 numberWithDouble:ceilf(v10 / 30000.0)];

  [v11 floatValue];
  if (v12 < 1.0)
  {

    v11 = &unk_28736F218;
  }

  v24 = v11;
  unsignedIntegerValue = [v11 unsignedIntegerValue];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  if (unsignedIntegerValue)
  {
    v15 = 0;
    if (pluginCopy)
    {
      v16 = 11;
    }

    else
    {
      v16 = 9;
    }

    do
    {
      v17 = 30000 * v15;
      v18 = 30000;
      if (v15 == unsignedIntegerValue - 1)
      {
        v18 = [logCopy length] - v17;
      }

      v19 = OdmlLogForCategory(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        ++v15;
        v21 = v20;
        v22 = [logCopy substringWithRange:{v17, v18}];
        *buf = 138479107;
        v28 = v20;
        v29 = 2112;
        v30 = segmentsCopy;
        v31 = 2113;
        v32 = uUIDString;
        v33 = 2049;
        v34 = v15;
        v35 = 2049;
        v36 = unsignedIntegerValue;
        v37 = 2113;
        v38 = v22;
        _os_log_impl(&dword_260ECB000, v19, OS_LOG_TYPE_DEFAULT, "[%{private}@]: %@ %{private}@ (%{private}lu of %{private}lu): %{private}@", buf, 0x3Eu);
      }

      else
      {
        ++v15;
      }
    }

    while (v15 != unsignedIntegerValue);
  }

  return uUIDString;
}

@end