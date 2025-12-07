@interface WiFiUsageLQMRollingWindow
+ (id)averageIntegerValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples;
+ (id)getValue:(id)value ForField:(id)field ScaledByDuration:(BOOL)duration;
+ (id)maximumIntegerValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples;
+ (id)medianIntegerValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples;
+ (id)minimumIntegerValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples;
+ (id)modeValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples;
+ (id)modesValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples;
+ (id)sumIntegerValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples;
+ (void)initialize;
+ (void)updateConfig;
- (BOOL)checkCriteriaBSSIDWithSample:(id)sample;
- (BOOL)configureDataTriggeredCriteria;
- (BOOL)endOngoingCriteria;
- (BOOL)hasChanged:(id)changed;
- (WiFiUsageLQMRollingWindow)initWithInterfaceName:(id)name andDuration:(double)duration andInterfaceCapabilities:(id)capabilities;
- (id)evaluateCriteriaWithStopUponFirstMatch:(BOOL)match;
- (id)getTriggerCriteriaList;
- (void)addSample:(id)sample;
- (void)addSamples:(id)samples;
- (void)addTrigger:(id)trigger;
- (void)cleanUpStashedMedians;
- (void)clearOngoingCriteriaDates;
- (void)setCurrentApplicationName:(id)name withAttributes:(id)attributes;
- (void)updateWindow;
@end

@implementation WiFiUsageLQMRollingWindow

- (void)updateWindow
{
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [date dateByAddingTimeInterval:-self->_duration];

  samples = self->_samples;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"timestamp >= %@", v8];
  [(NSMutableArray *)samples filterUsingPredicate:v5];

  preceedingTriggers = self->_preceedingTriggers;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"timestamp >= %@", v8];
  [(NSMutableArray *)preceedingTriggers filterUsingPredicate:v7];
}

- (void)cleanUpStashedMedians
{
  v14 = *MEMORY[0x277D85DE8];
  [(NSMutableSet *)self->_features setValue:0 forKey:@"median"];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_triggerCriteriaFilterList;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        features = [*(*(&v9 + 1) + 8 * v7) features];
        [features setValue:0 forKey:@"median"];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)clearOngoingCriteriaDates
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_triggerCriteriaFilterList;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v17 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        criterias = [v6 criterias];
        v8 = [criterias countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v19;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(criterias);
              }

              v12 = *(*(&v18 + 1) + 8 * j);
              matched = [v12 matched];
              if ((matched & 1) == 0)
              {
                firstTriggered = [v12 firstTriggered];
                v2 = firstTriggered;
                if (firstTriggered)
                {

LABEL_17:
                  [v12 setCurrentSample:0];
                  [v12 setFirstTriggered:0];
                  [v12 setLastTriggered:0];
                  [v12 setBssid:0];
                  continue;
                }
              }

              lastTriggered = [v12 lastTriggered];

              if ((matched & 1) == 0)
              {
              }

              if (lastTriggered)
              {
                goto LABEL_17;
              }
            }

            v9 = [criterias countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v9);
        }
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }
}

+ (void)initialize
{
  _config_duration = 0x404E000000000000;
  _config_minSamples = 5;
  v2 = _config_criteriaList;
  _config_criteriaList = 0;

  v3 = [WiFiUsageLQMConfiguration getConfigForKey:@"LQMRollingWindow"];
}

+ (void)updateConfig
{
  v10 = [WiFiUsageLQMConfiguration getConfigForKey:@"LQMRollingWindow"];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v10 objectForKey:@"duration"];
      if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v3 = *&_config_duration, v3 != [v2 unsignedLongValue]))
      {
        [v2 floatValue];
        v5 = v4;
      }

      else
      {
        if (arc4random_uniform(0x64u) >= 0x32)
        {
          v6 = 30;
        }

        else
        {
          v6 = 60;
        }

        v5 = v6;
      }

      _config_duration = *&v5;
      v7 = [v10 objectForKey:@"minSamplesForFeatures"];

      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = _config_minSamples;
          if (v8 != [v7 unsignedLongValue])
          {
            _config_minSamples = [v7 unsignedLongValue];
          }
        }
      }

      v9 = [v10 objectForKey:@"DataTriggeredCriteriaList"];

      if (v9)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([_config_criteriaList isEqualToArray:v9] & 1) == 0)
        {
          objc_storeStrong(&_config_criteriaList, v9);
        }
      }
    }
  }

  NSLog(&cfstr_SDurationSetTo.isa, "+[WiFiUsageLQMRollingWindow updateConfig]", _config_duration);
  NSLog(&cfstr_SMinsamplesSet.isa, "+[WiFiUsageLQMRollingWindow updateConfig]", _config_minSamples);
}

- (WiFiUsageLQMRollingWindow)initWithInterfaceName:(id)name andDuration:(double)duration andInterfaceCapabilities:(id)capabilities
{
  nameCopy = name;
  capabilitiesCopy = capabilities;
  if (nameCopy)
  {
    v24.receiver = self;
    v24.super_class = WiFiUsageLQMRollingWindow;
    v10 = [(WiFiUsageLQMRollingWindow *)&v24 init];
    v11 = [nameCopy copy];
    interfaceName = v10->_interfaceName;
    v10->_interfaceName = v11;

    date = [MEMORY[0x277CBEAA8] date];
    createdTimestamp = v10->_createdTimestamp;
    v10->_createdTimestamp = date;

    v10->_duration = duration;
    samples = v10->_samples;
    v10->_samples = 0;

    objc_storeStrong(&v10->_capabilities, capabilities);
    v16 = objc_opt_new();
    triggerCriteriaFilterList = v10->_triggerCriteriaFilterList;
    v10->_triggerCriteriaFilterList = v16;

    v18 = objc_opt_new();
    features = v10->_features;
    v10->_features = v18;

    preceedingTriggers = v10->_preceedingTriggers;
    v10->_preceedingTriggers = 0;

    fgApp = v10->_fgApp;
    v10->_fgApp = 0;

    self = v10;
    selfCopy = self;
  }

  else
  {
    NSLog(&cfstr_SInvalidInterf.isa, "[WiFiUsageLQMRollingWindow initWithInterfaceName:andDuration:andInterfaceCapabilities:]", 0);
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setCurrentApplicationName:(id)name withAttributes:(id)attributes
{
  nameCopy = name;
  objc_storeStrong(&_current_fgApp, name);
  fgApp = self->_fgApp;
  self->_fgApp = nameCopy;
}

- (void)addSample:(id)sample
{
  sampleCopy = sample;
  if (sampleCopy)
  {
    v11 = sampleCopy;
    if (!self->_samples)
    {
      array = [MEMORY[0x277CBEB18] array];
      samples = self->_samples;
      self->_samples = array;

      sampleCopy = v11;
    }

    [sampleCopy setFgApp:_current_fgApp];
    lastObject = [(NSMutableArray *)self->_samples lastObject];
    interfaceName = [lastObject interfaceName];

    interfaceName2 = [v11 interfaceName];
    v10 = [interfaceName2 isEqualToString:interfaceName];

    if (v10)
    {
      [v11 setInterfaceName:interfaceName];
    }

    [(NSMutableArray *)self->_samples addObject:v11];
    if (self->_duration != *&_config_duration)
    {
      *&self->_duration = _config_duration;
    }

    [(WiFiUsageLQMRollingWindow *)self updateWindow];

    sampleCopy = v11;
  }
}

- (void)addSamples:(id)samples
{
  samplesCopy = samples;
  v5 = samplesCopy;
  if (samplesCopy)
  {
    samples = self->_samples;
    v9 = v5;
    if (!samples)
    {
      array = [MEMORY[0x277CBEB18] array];
      v8 = self->_samples;
      self->_samples = array;

      samples = self->_samples;
    }

    [(NSMutableArray *)samples addObjectsFromArray:v9];
    samplesCopy = [(WiFiUsageLQMRollingWindow *)self updateWindow];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](samplesCopy, v5);
}

- (void)addTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = triggerCopy;
  if (triggerCopy)
  {
    preceedingTriggers = self->_preceedingTriggers;
    v9 = v5;
    if (!preceedingTriggers)
    {
      v7 = objc_opt_new();
      v8 = self->_preceedingTriggers;
      self->_preceedingTriggers = v7;

      preceedingTriggers = self->_preceedingTriggers;
    }

    triggerCopy = [(NSMutableArray *)preceedingTriggers addObject:v9];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](triggerCopy, v5);
}

- (BOOL)endOngoingCriteria
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_triggerCriteriaFilterList;
  v2 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v22 = *v28;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        criterias = [v6 criterias];
        v8 = [criterias countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(criterias);
              }

              v12 = *(*(&v23 + 1) + 8 * j);
              [v12 setMatched:0];
              [v12 setValid:0];
              firstTriggered = [v12 firstTriggered];
              if (firstTriggered)
              {
                v14 = firstTriggered;
                lastTriggered = [v12 lastTriggered];

                if (!lastTriggered)
                {
                  currentSample = [v12 currentSample];

                  if (currentSample)
                  {
                    [v12 currentSample];
                  }

                  else
                  {
                    [v12 firstTriggered];
                  }
                  v17 = ;
                  [v12 setLastTriggered:v17];

                  v4 = 1;
                }
              }

              [v12 setBssid:0];
            }

            v9 = [criterias countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v9);
        }
      }

      v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  lastSampleBssid = self->_lastSampleBssid;
  self->_lastSampleBssid = 0;

  return v4 & 1;
}

- (id)getTriggerCriteriaList
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_triggerCriteriaFilterList;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277CBEA60]);
        criterias = [v9 criterias];
        v12 = [v10 initWithArray:criterias copyItems:1];

        [v3 addObjectsFromArray:v12];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)checkCriteriaBSSIDWithSample:(id)sample
{
  v33 = *MEMORY[0x277D85DE8];
  networkDetails = [sample networkDetails];
  connectedBss = [networkDetails connectedBss];
  bssid = [connectedBss bssid];

  if ([(NSString *)self->_lastSampleBssid isEqualToString:bssid])
  {
    v7 = 0;
  }

  else
  {
    v22 = bssid;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = self->_triggerCriteriaFilterList;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v7 = 0;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          criterias = [v13 criterias];
          v15 = [criterias countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v24;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v24 != v17)
                {
                  objc_enumerationMutation(criterias);
                }

                v19 = *(*(&v23 + 1) + 8 * j);
                if ([v19 matched])
                {
                  currentSample = [v19 currentSample];
                  [v19 setLastTriggered:currentSample];

                  v7 = 1;
                }
              }

              v16 = [criterias countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v16);
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v10);
    }

    else
    {
      v7 = 0;
    }

    bssid = v22;
  }

  return v7 & 1;
}

- (id)evaluateCriteriaWithStopUponFirstMatch:(BOOL)match
{
  matchCopy = match;
  selfCopy = self;
  v102 = *MEMORY[0x277D85DE8];
  lastObject = [(NSMutableArray *)self->_samples lastObject];
  networkDetails = [lastObject networkDetails];
  connectedBss = [networkDetails connectedBss];
  bssid = [connectedBss bssid];

  v78 = 0;
  v74 = selfCopy;
  v80 = bssid;
  if ([(NSMutableArray *)selfCopy->_samples count])
  {
    v8 = matchCopy;
    if (!bssid)
    {
      goto LABEL_15;
    }

    samples = selfCopy->_samples;
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"networkDetails.connectedBss.bssid == %@", bssid];
    v11 = [(NSMutableArray *)samples filteredArrayUsingPredicate:v10];

    v78 = v11;
    v12 = [v11 count];
    if (v12 < _config_minSamples)
    {
      goto LABEL_15;
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v13 = selfCopy->_features;
    v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v94 objects:v101 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v95;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v95 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v94 + 1) + 8 * i);
          median = [v18 median];

          if (!median)
          {
            fieldName = [v18 fieldName];
            v21 = +[WiFiUsageLQMRollingWindow medianIntegerValueForField:ScaledByDuration:OnSamples:](WiFiUsageLQMRollingWindow, "medianIntegerValueForField:ScaledByDuration:OnSamples:", fieldName, [v18 isPerSecond], v78);
            [v18 setMedian:v21];
          }
        }

        v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v94 objects:v101 count:16];
      }

      while (v15);
    }

    selfCopy = v74;
  }

  v8 = matchCopy;
LABEL_15:
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = selfCopy->_triggerCriteriaFilterList;
  v71 = [(NSMutableArray *)obj countByEnumeratingWithState:&v90 objects:v100 count:16];
  firstTriggered2 = 0;
  if (!v71)
  {
    v23 = bssid;
    goto LABEL_92;
  }

  v23 = bssid;
  v70 = *v91;
  if (bssid)
  {
    v24 = v78 == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = !v24;
  v81 = v25;
  do
  {
    for (j = 0; j != v71; ++j)
    {
      if (*v91 != v70)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v90 + 1) + 8 * j);
      if (v81 && [v78 count] && (objc_msgSend(v27, "filterSamplesPredicate"), v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
      {
        filterSamplesPredicate = [v27 filterSamplesPredicate];
        v30 = [v78 filteredArrayUsingPredicate:filterSamplesPredicate];

        if (v30 && [v30 count])
        {
          v72 = j;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v75 = v27;
          features = [v27 features];
          v32 = [features countByEnumeratingWithState:&v86 objects:v99 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v87;
            do
            {
              for (k = 0; k != v33; ++k)
              {
                if (*v87 != v34)
                {
                  objc_enumerationMutation(features);
                }

                v36 = *(*(&v86 + 1) + 8 * k);
                median2 = [v36 median];

                if (!median2)
                {
                  fieldName2 = [v36 fieldName];
                  v39 = +[WiFiUsageLQMRollingWindow medianIntegerValueForField:ScaledByDuration:OnSamples:](WiFiUsageLQMRollingWindow, "medianIntegerValueForField:ScaledByDuration:OnSamples:", fieldName2, [v36 isPerSecond], v30);
                  [v36 setMedian:v39];
                }
              }

              v33 = [features countByEnumeratingWithState:&v86 objects:v99 count:16];
            }

            while (v33);
          }

          v23 = v80;
          j = v72;
          v27 = v75;
        }
      }

      else
      {
        v30 = 0;
      }

      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      criterias = [v27 criterias];
      v40 = [criterias countByEnumeratingWithState:&v82 objects:v98 count:16];
      if (!v40)
      {
        v43 = 0;
        goto LABEL_87;
      }

      v41 = v40;
      v76 = v27;
      v73 = j;
      v42 = *v83;
      v43 = firstTriggered2;
      while (2)
      {
        for (m = 0; m != v41; ++m)
        {
          v45 = v43;
          if (*v83 != v42)
          {
            objc_enumerationMutation(criterias);
          }

          v43 = *(*(&v82 + 1) + 8 * m);

          if (!v81)
          {
LABEL_54:
            v46 = 0;
            v47 = 0;
            goto LABEL_62;
          }

          v46 = 0;
          v47 = 0;
          if ([v78 count] && v30)
          {
            if (![v30 count])
            {
              goto LABEL_54;
            }

            type = [v43 type];
            if (type)
            {
              if (type == 1)
              {
                features2 = [v76 features];
                goto LABEL_56;
              }

              v50 = 0;
            }

            else
            {
              features2 = [(NSMutableArray *)v74->_samples lastObject];
LABEL_56:
              v50 = features2;
            }

            requiredFieldsValid = [v43 requiredFieldsValid];
            v47 = [requiredFieldsValid evaluateWithObject:v50];

            if (v47)
            {
              predicate = [v43 predicate];
              v46 = [predicate evaluateWithObject:v50];
            }

            else
            {
              v46 = 0;
            }

            lastObject2 = [v30 lastObject];
            timestamp = [lastObject2 timestamp];
            [v43 setCurrentSample:timestamp];

            v8 = matchCopy;
            v23 = v80;
          }

LABEL_62:
          [v43 setMatched:v46];
          [v43 setValid:v47];
          firstTriggered = [v43 firstTriggered];
          v56 = firstTriggered;
          if (v46)
          {

            if (!v56)
            {
              currentSample = [v43 currentSample];
              [v43 setFirstTriggered:currentSample];
            }

            [v43 setBssid:v23];
            if (v8)
            {
              firstTriggered2 = [v43 firstTriggered];
              currentSample2 = [v43 currentSample];
              v59 = [firstTriggered2 isEqual:currentSample2];

              if (v59)
              {
                v23 = v80;
                goto LABEL_86;
              }

              v23 = v80;
            }
          }

          else
          {
            if (firstTriggered)
            {
              lastTriggered = [v43 lastTriggered];

              if (!lastTriggered)
              {
                if (v30 && [v30 count] >= 2)
                {
                  v61 = [v30 objectAtIndex:{objc_msgSend(v30, "count") - 2}];
                  timestamp2 = [v61 timestamp];
                  [v43 setLastTriggered:timestamp2];
                }

                else
                {
                  currentSample3 = [v43 currentSample];

                  if (currentSample3)
                  {
                    [v43 currentSample];
                  }

                  else
                  {
                    [v43 firstTriggered];
                  }
                  v61 = ;
                  [v43 setLastTriggered:v61];
                }
              }
            }

            v23 = v80;
            [v43 setBssid:v80];
            if (v8)
            {
              lastTriggered2 = [v43 lastTriggered];

              if (lastTriggered2)
              {
                firstTriggered2 = v43;
                j = v73;
                goto LABEL_88;
              }
            }
          }
        }

        v41 = [criterias countByEnumeratingWithState:&v82 objects:v98 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }

      firstTriggered2 = v43;
      v43 = 0;
LABEL_86:
      j = v73;
LABEL_87:

      firstTriggered2 = v43;
LABEL_88:
    }

    v71 = [(NSMutableArray *)obj countByEnumeratingWithState:&v90 objects:v100 count:16];
  }

  while (v71);
LABEL_92:

  v65 = v23;
  lastSampleBssid = v74->_lastSampleBssid;
  v74->_lastSampleBssid = v65;
  v67 = v65;

  return firstTriggered2;
}

- (BOOL)configureDataTriggeredCriteria
{
  v29 = *MEMORY[0x277D85DE8];
  if (!_config_criteriaList)
  {
    return 0;
  }

  [(NSMutableArray *)self->_triggerCriteriaFilterList removeAllObjects];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = _config_criteriaList;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [WiFiUsageLQMTriggerCriteriaFilter alloc];
          v11 = +[WiFiUsageLQMUserSample allLQMProperties];
          v12 = [(WiFiUsageLQMTriggerCriteriaFilter *)v10 initWith:v9 forFields:v11 andFeatures:self->_features];

          v13 = v12 == 0;
          if (v12)
          {
            [(NSMutableArray *)self->_triggerCriteriaFilterList addObject:v12];
          }
        }

        else
        {
          NSLog(&cfstr_SDatatriggered.isa, "[WiFiUsageLQMRollingWindow configureDataTriggeredCriteria]");
          v13 = 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);

    if (v13)
    {
      v14 = @"(with errors)";
    }

    else
    {
      v14 = &stru_28487EF20;
    }

    v15 = !v13;
  }

  else
  {

    v14 = &stru_28487EF20;
    v15 = 1;
  }

  v16 = MEMORY[0x277CCACA8];
  getTriggerCriteriaList = [(WiFiUsageLQMRollingWindow *)self getTriggerCriteriaList];
  v18 = [v16 stringWithFormat:@"%s: DataTriggered criteria configured %@: %@", "-[WiFiUsageLQMRollingWindow configureDataTriggeredCriteria]", v14, getTriggerCriteriaList];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v18, "UTF8String")];
    uTF8String = [v19 UTF8String];
    *buf = 136446210;
    v27 = uTF8String;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  return v15;
}

+ (id)getValue:(id)value ForField:(id)field ScaledByDuration:(BOOL)duration
{
  durationCopy = duration;
  valueCopy = value;
  fieldCopy = field;
  if (objc_opt_respondsToSelector())
  {
    [valueCopy numberForKeyPath:fieldCopy];
  }

  else
  {
    [valueCopy valueForKeyPath:fieldCopy];
  }
  v9 = ;

  if (v9 && ([valueCopy duration] || !durationCopy))
  {
    if (durationCopy && [valueCopy duration])
    {
      v11 = MEMORY[0x277CCABB0];
      [v9 doubleValue];
      v13 = [v11 numberWithLong:{(v12 / objc_msgSend(valueCopy, "duration"))}];

      v9 = v13;
    }

    v10 = v9;
    v9 = v10;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)maximumIntegerValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples
{
  durationCopy = duration;
  v24 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  samplesCopy = samples;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [samplesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = *v20;
  integerValue = 0x8000000000000000;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(samplesCopy);
      }

      v15 = [self getValue:*(*(&v19 + 1) + 8 * i) ForField:fieldCopy ScaledByDuration:durationCopy];
      v16 = v15;
      if (v15 && [v15 integerValue] > integerValue)
      {
        integerValue = [v16 integerValue];
      }
    }

    v11 = [samplesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v11);
  if (integerValue != 0x8000000000000000)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
  }

  else
  {
LABEL_12:
    v17 = 0;
  }

  return v17;
}

+ (id)minimumIntegerValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples
{
  durationCopy = duration;
  v24 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  samplesCopy = samples;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [samplesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = *v20;
  integerValue = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(samplesCopy);
      }

      v15 = [self getValue:*(*(&v19 + 1) + 8 * i) ForField:fieldCopy ScaledByDuration:durationCopy];
      v16 = v15;
      if (v15 && [v15 integerValue] < integerValue)
      {
        integerValue = [v16 integerValue];
      }
    }

    v11 = [samplesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v11);
  if (integerValue != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
  }

  else
  {
LABEL_12:
    v17 = 0;
  }

  return v17;
}

+ (id)averageIntegerValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples
{
  durationCopy = duration;
  v25 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  samplesCopy = samples;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [samplesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = *v21;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v21 != v14)
      {
        objc_enumerationMutation(samplesCopy);
      }

      v16 = [self getValue:*(*(&v20 + 1) + 8 * i) ForField:fieldCopy ScaledByDuration:durationCopy];
      v17 = v16;
      if (v16)
      {
        ++v12;
        v13 += [v16 integerValue];
      }
    }

    v11 = [samplesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v11);
  if (v12)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v13 / v12];
  }

  else
  {
LABEL_12:
    v18 = 0;
  }

  return v18;
}

+ (id)medianIntegerValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples
{
  durationCopy = duration;
  v30 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  samplesCopy = samples;
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = samplesCopy;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [self getValue:*(*(&v25 + 1) + 8 * i) ForField:fieldCopy ScaledByDuration:{durationCopy, v25}];
        if (v16)
        {
          [array addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v17 = [array count];
  if (v17 >= _config_minSamples)
  {
    v19 = v17;
    [array sortUsingSelector:sel_compare_];
    if (v19)
    {
      [array objectAtIndex:v19 >> 1];
    }

    else
    {
      v20 = [array objectAtIndex:(v19 - 1) >> 1];
      integerValue = [v20 integerValue];

      v22 = [array objectAtIndex:v19 >> 1];
      integerValue2 = [v22 integerValue];

      [MEMORY[0x277CCABB0] numberWithInteger:(integerValue2 + integerValue) / 2];
    }
    v18 = ;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)sumIntegerValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples
{
  durationCopy = duration;
  v24 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  samplesCopy = samples;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [samplesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(samplesCopy);
        }

        v15 = [self getValue:*(*(&v19 + 1) + 8 * i) ForField:fieldCopy ScaledByDuration:durationCopy];
        v16 = v15;
        if (v15)
        {
          v12 += [v15 integerValue];
        }
      }

      v11 = [samplesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v12];

  return v17;
}

+ (id)modeValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples
{
  v5 = [self modesValueForField:field ScaledByDuration:duration OnSamples:samples];
  if ([v5 count])
  {
    lastObject = [v5 lastObject];
    value = [lastObject value];
  }

  else
  {
    value = 0;
  }

  return value;
}

+ (id)modesValueForField:(id)field ScaledByDuration:(BOOL)duration OnSamples:(id)samples
{
  durationCopy = duration;
  v45 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  samplesCopy = samples;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = samplesCopy;
  v11 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [self getValue:*(*(&v39 + 1) + 8 * i) ForField:fieldCopy ScaledByDuration:durationCopy];
        if (v15)
        {
          v16 = [dictionary objectForKey:v15];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 unsignedIntegerValue] + 1;
          }

          else
          {
            v18 = 1;
          }

          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
          [dictionary setObject:v19 forKey:v15];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v12);
  }

  v33 = fieldCopy;

  v20 = [dictionary keysSortedByValueUsingSelector:sel_compare_];
  v21 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v36;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v35 + 1) + 8 * j);
        v28 = [WiFiUsageLQMModes alloc];
        v29 = [dictionary objectForKeyedSubscript:{v27, v33}];
        v30 = [(WiFiUsageLQMModes *)v28 initWithValue:v27 andOccurrences:v29];
        [v21 addObject:v30];
      }

      v24 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v24);
  }

  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v21];

  return v31;
}

- (BOOL)hasChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_samples;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v13 + 1) + 8 * v9) numberForKeyPath:{changedCopy, v13}];
        v7 = v11;
        if (v10 && ([v11 isEqual:v10] & 1) == 0)
        {

          LOBYTE(v6) = 1;
          goto LABEL_12;
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v10 = v7;
LABEL_12:
  }

  return v6;
}

@end