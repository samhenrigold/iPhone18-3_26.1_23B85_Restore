@interface SimpleRuleCondition
+ (id)configureClass:(id)class;
+ (id)objectWithName:(id)name;
- (BOOL)evaluate:(id)evaluate showingWorkAt:(id)at;
- (BOOL)evaluateHandler:(id)handler showingWorkAt:(id)at;
- (BOOL)evaluatePrevSymptom:(id)symptom showingWorkAt:(id)at;
- (NSString)description;
- (SEL)additionalSelector;
- (int)configureInstance:(id)instance;
- (int)read:(id)read returnedValues:(id)values;
- (void)_reset:(id)_reset;
- (void)setAdditionalSelector:(SEL)selector;
@end

@implementation SimpleRuleCondition

- (NSString)description
{
  conditionType = self->_conditionType;
  v4 = "++ Unknown ++";
  if (conditionType == 1)
  {
    v4 = "ADDITIONAL_HANDLER";
  }

  if (conditionType)
  {
    v5 = v4;
  }

  else
  {
    v5 = "PREV_SYMPTOM";
  }

  v6 = MEMORY[0x277CCACA8];
  conditionPrevSymptom = self->_conditionPrevSymptom;
  conditionMaxAge = self->_conditionMaxAge;
  conditionName = self->_conditionName;
  conditionMinCount = self->_conditionMinCount;
  if (conditionType == 1)
  {
    v11 = [(SymptomAdditionalProtocol *)self->_additionalHandler description];
  }

  else
  {
    v11 = @"<n/a>";
  }

  v12 = [v6 stringWithFormat:@"name %@ conditionType %s PrevSymptom %@  MaxAge %ld MinCount %ld Class %@ StrId %@ StrLen%ld Flags 0x%lx\n", conditionName, v5, conditionPrevSymptom, conditionMaxAge, conditionMinCount, v11, self->_conditionStringID, self->_conditionStringLength, self->_conditionFlags];
  if (conditionType == 1)
  {
  }

  return v12;
}

+ (id)objectWithName:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = [ConfigurationHandler objectForName:nameCopy];
  if (!v4)
  {
    v9 = objc_alloc_init(SimpleRuleCondition);
    v4 = v9;
    if (v9)
    {
      [(SimpleRuleCondition *)v9 setConditionName:nameCopy];
      [ConfigurationHandler setConfigurationObject:v4 forName:nameCopy];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_8:
    v4 = v4;
    v8 = v4;
    goto LABEL_9;
  }

  v5 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
  {
    v6 = nameCopy;
    v7 = v5;
    v11 = 136315138;
    uTF8String = [nameCopy UTF8String];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Attempted reuse of name %s", &v11, 0xCu);
  }

  v8 = 0;
LABEL_9:

  return v8;
}

+ (id)configureClass:(id)class
{
  v15 = *MEMORY[0x277D85DE8];
  classCopy = class;
  v5 = [classCopy objectForKey:@"CONDITION_NAME"];
  if (v5)
  {
    v6 = [self objectWithName:v5];
    v7 = v6;
    if (v6 && ![v6 configureInstance:classCopy])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [classCopy description];
      v13 = 136315138;
      uTF8String = [v11 UTF8String];
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Can't find name in configuration directory %s", &v13, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (void)_reset:(id)_reset
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SimpleRuleCondition__reset___block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __30__SimpleRuleCondition__reset___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 description];
    v8 = 136315138;
    v9 = [v5 UTF8String];
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "Issue reset for self %s", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  if (v7 == 1)
  {
    [*(v6 + 80) reset];
  }

  else if (!v7)
  {
    [SymptomStore resetSymptomsWithKey:*(v6 + 40)];
  }
}

- (int)configureInstance:(id)instance
{
  v70 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v5 = [instanceCopy objectForKey:@"REQUIRED_MINIMUM_COUNT"];
  v6 = v5;
  if (v5)
  {
    self->_conditionMinCount = [v5 integerValue];
  }

  v7 = [instanceCopy objectForKey:@"PREVIOUS_REPORT"];
  if (v7)
  {
    self->_conditionType = 0;
    objc_storeStrong(&self->_conditionPrevSymptom, v7);
  }

  v8 = [instanceCopy objectForKey:@"RECENT_PRESENCE_TIME"];
  v9 = v8;
  if (v8)
  {
    self->_conditionMaxAge = [v8 integerValue];
  }

  v10 = [instanceCopy objectForKey:@"REQUIRED_MATCHES"];
  v11 = v10;
  if (v10)
  {
    self->_conditionFlags = 0;
    v12 = [v10 objectForKey:@"QUALIFIER_0"];

    if (v12)
    {
      self->_conditionFlags |= 1uLL;
    }

    v13 = [v11 objectForKey:@"QUALIFIER_1"];

    if (v13)
    {
      self->_conditionFlags |= 2uLL;
    }

    v14 = [v11 objectForKey:@"QUALIFIER_2"];

    if (v14)
    {
      self->_conditionFlags |= 4uLL;
    }

    v15 = [v11 objectForKey:@"QUALIFIER_3"];

    if (v15)
    {
      self->_conditionFlags |= 8uLL;
    }

    v16 = [v11 objectForKey:@"ADDITIONAL_QUALIFIER"];
    v17 = v16;
    if (v16)
    {
      self->_conditionFlags |= 0x400uLL;
      stringValue = [v16 stringValue];
      conditionStringID = self->_conditionStringID;
      self->_conditionStringID = stringValue;

      v20 = [v11 objectForKey:@"ADDITIONAL_QUALIFIER_MIM_MATCH_LEN"];
      v21 = v20;
      if (v20)
      {
        self->_conditionStringLength = [v20 integerValue];
      }
    }
  }

  v22 = [instanceCopy objectForKey:@"ADDITIONAL_EVALUATION"];
  if (v22)
  {
    v23 = [ConfigurationHandler classRepresentativeForName:v22];
    additionalHandler = self->_additionalHandler;
    self->_additionalHandler = v23;

    if (self->_additionalHandler)
    {
      self->_conditionType = 1;
      v25 = [instanceCopy objectForKey:@"ADDITIONAL_SELECTOR"];
      v26 = v25;
      if (v25)
      {
        v27 = v22;
        p_additionalSelector = &self->_additionalSelector;
        v29 = NSSelectorFromString(v25);
        if (v29)
        {
          *p_additionalSelector = v29;
          v30 = 0;
        }

        else
        {
          *p_additionalSelector = 0;
          v34 = configurationLogHandle;
          if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
          {
            v35 = v26;
            v36 = v34;
            *buf = 136315138;
            uTF8String = [(NSString *)v26 UTF8String];
            _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_ERROR, "Configuration failure to get selector from string %s", buf, 0xCu);
          }

          v30 = -1;
        }

        v22 = v27;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v31 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        v32 = v22;
        v33 = v31;
        *buf = 136315138;
        uTF8String = [v22 UTF8String];
        _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "Configuration failure to find additional handler from string %s", buf, 0xCu);
      }

      v30 = -1;
    }
  }

  else
  {
    v30 = 0;
  }

  v37 = [instanceCopy objectForKey:@"RESET_SOURCES"];
  v61 = v37;
  if (v37)
  {
    v55 = v30;
    v56 = v22;
    v57 = v11;
    v58 = v7;
    v59 = v6;
    v60 = instanceCopy;
    if (!self->_resetSources)
    {
      v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
      resetSources = self->_resetSources;
      self->_resetSources = v38;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v41 = v37;
    v42 = [v41 countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v64;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v64 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v63 + 1) + 8 * i);
          v47 = [(NSMutableDictionary *)self->_resetSources objectForKeyedSubscript:v46];

          if (!v47)
          {
            v62[0] = MEMORY[0x277D85DD0];
            v62[1] = 3221225472;
            v62[2] = __41__SimpleRuleCondition_configureInstance___block_invoke;
            v62[3] = &unk_27898A690;
            v62[4] = self;
            v48 = [defaultCenter addObserverForName:v46 object:0 queue:0 usingBlock:v62];
            [(NSMutableDictionary *)self->_resetSources setObject:v48 forKey:v46];
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v63 objects:v67 count:16];
      }

      while (v43);
    }

    v6 = v59;
    instanceCopy = v60;
    v7 = v58;
    v22 = v56;
    v11 = v57;
    v30 = v55;
  }

  if (!self->_conditionType)
  {
    [SymptomStore setRetainCount:LODWORD(self->_conditionMinCount) forSymptom:self->_conditionPrevSymptom];
    [SymptomStore setRetainTime:LODWORD(self->_conditionMaxAge) forSymptom:self->_conditionPrevSymptom];
    v49 = [SimpleSymptomEvaluator objectWithName:self->_conditionPrevSymptom];
    v50 = v49;
    if (v49)
    {
      [v49 setSymptomSaveFlags:{objc_msgSend(v49, "symptomSaveFlags") | LODWORD(self->_conditionFlags) | 0x200}];
      if (self->_conditionMaxAge > [v50 symptomMaxRetainTime])
      {
        [v50 setSymptomMaxRetainTime:?];
      }

      if ((self->_conditionFlags & 0x400) != 0)
      {
        v51 = v22;
        integerValue = [(NSString *)self->_conditionStringID integerValue];
        if ([v50 symptomSaveAdditionalId])
        {
          if ([v50 symptomSaveAdditionalId] != integerValue)
          {
            v53 = configurationLogHandle;
            if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v53, OS_LOG_TYPE_ERROR, "Configuration looking at multiple additional qualifiers", buf, 2u);
            }
          }
        }

        [v50 setSymptomSaveAdditionalId:integerValue];
        v22 = v51;
      }
    }

    v37 = v61;
  }

  return v30;
}

void __41__SimpleRuleCondition_configureInstance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__SimpleRuleCondition_configureInstance___block_invoke_2;
  v5[3] = &unk_27898A7D0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (int)read:(id)read returnedValues:(id)values
{
  readCopy = read;
  valuesCopy = values;
  [valuesCopy setObject:self->_conditionName forKey:@"GENERIC_CONFIG_TARGET"];
  v8 = [readCopy objectForKey:@"REQUIRED_MINIMUM_COUNT"];
  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_conditionMinCount];
    [valuesCopy setObject:v9 forKey:@"REQUIRED_MINIMUM_COUNT"];
  }

  v10 = [readCopy objectForKey:@"RECENT_PRESENCE_TIME"];
  if (v10)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_conditionMaxAge];
    [valuesCopy setObject:v11 forKey:@"RECENT_PRESENCE_TIME"];
  }

  return 0;
}

- (BOOL)evaluatePrevSymptom:(id)symptom showingWorkAt:(id)at
{
  v66 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  v5 = [SymptomStore storedSymptomsWithKey:self->_conditionPrevSymptom];
  if (!v5)
  {
    v10 = 0;
LABEL_64:
    v54 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      conditionMinCount = self->_conditionMinCount;
      *buf = 67109376;
      *v64 = conditionMinCount;
      *&v64[4] = 1024;
      *&v64[6] = v10;
      _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_DEBUG, "Insufficient matches found, need %d, found %d", buf, 0xEu);
    }

    v56 = 0;
    goto LABEL_67;
  }

  date = [MEMORY[0x277CBEAA8] date];
  symptoms = [v5 symptoms];
  v8 = [symptoms count];

  if (!v8)
  {
    v10 = 0;
LABEL_63:

    goto LABEL_64;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    symptoms2 = [v5 symptoms];
    v12 = [symptoms2 objectAtIndex:v9];

    v13 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v14 = v13;
      v15 = [v12 description];
      uTF8String = [v15 UTF8String];
      *buf = 136315138;
      *v64 = uTF8String;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "Test additional qualifier: compare against old event %s", buf, 0xCu);
    }

    creationTimeStamp = [v12 creationTimeStamp];
    [date timeIntervalSinceDate:creationTimeStamp];
    v19 = v18;
    conditionMaxAge = self->_conditionMaxAge;

    if (v19 <= conditionMaxAge)
    {
      break;
    }

    v21 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v22 = v21;
      v23 = "Test additional qualifier: skip, too old";
LABEL_9:
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, v23, buf, 2u);
    }

LABEL_15:

    ++v9;
    symptoms3 = [v5 symptoms];
    v26 = [symptoms3 count];

    if (v26 <= v9)
    {
      goto LABEL_63;
    }
  }

  if ([symptomCopy eventType] || objc_msgSend(v12, "eventType"))
  {
    goto LABEL_12;
  }

  eventData = [symptomCopy eventData];
  eventData2 = [v12 eventData];
  conditionFlags = self->_conditionFlags;
  if ((conditionFlags & 1) != 0 && eventData[3] != eventData2[3])
  {
    v42 = evaluationLogHandle;
    if (!os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v22 = v42;
    v23 = "Test additional qualifier: skip, mismatched qual 0";
    goto LABEL_9;
  }

  if ((conditionFlags & 2) != 0 && eventData[4] != eventData2[4])
  {
    v43 = evaluationLogHandle;
    if (!os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v22 = v43;
    v23 = "Test additional qualifier: skip, mismatched qual 1";
    goto LABEL_9;
  }

  if ((conditionFlags & 4) != 0 && eventData[5] != eventData2[5])
  {
    v44 = evaluationLogHandle;
    if (!os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v22 = v44;
    v23 = "Test additional qualifier: skip, mismatched qual 2";
    goto LABEL_9;
  }

  if ((conditionFlags & 8) != 0 && eventData[6] != eventData2[6])
  {
    v45 = evaluationLogHandle;
    if (!os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v22 = v45;
    v23 = "Test additional qualifier: skip, mismatched qual 3";
    goto LABEL_9;
  }

  if ((conditionFlags & 0x400) == 0)
  {
    goto LABEL_12;
  }

  eventQualifiers = [symptomCopy eventQualifiers];
  v31 = [eventQualifiers objectForKey:self->_conditionStringID];
  v32 = [v31 description];

  if (!v32)
  {
    v46 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v47 = v46;
      eventQualifiers2 = [symptomCopy eventQualifiers];
      conditionStringID = self->_conditionStringID;
      *buf = 138412546;
      *v64 = eventQualifiers2;
      *&v64[8] = 2112;
      v65 = conditionStringID;
      _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_DEBUG, "Test additional qualifier: skip, no new string in %@ for key %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v61 = v32;
  eventQualifiers3 = [v12 eventQualifiers];
  v34 = [eventQualifiers3 objectForKey:self->_conditionStringID];
  v35 = [v34 description];

  v36 = evaluationLogHandle;
  v37 = os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG);
  if (!v35)
  {
    if (v37)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEBUG, "Test additional qualifier: skip, no prev string", buf, 2u);
    }

    goto LABEL_59;
  }

  v38 = v61;
  if (v37)
  {
    *buf = 138412546;
    *v64 = v61;
    *&v64[8] = 2112;
    v65 = v35;
    _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEBUG, "Test additional qualifier: compare new <%@> old <%@>", buf, 0x16u);
  }

  conditionStringLength = self->_conditionStringLength;
  if (conditionStringLength)
  {
    if (conditionStringLength > [v61 length])
    {
      conditionStringLength = [v61 length];
    }

    if (conditionStringLength > [v35 length])
    {
      conditionStringLength = [v35 length];
    }

    v60 = [v61 substringToIndex:conditionStringLength];

    v40 = [v35 substringToIndex:conditionStringLength];

    v41 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *v64 = v60;
      *&v64[8] = 2112;
      v65 = v40;
      _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEBUG, "Test additional qualifier: chopped to new <%@> old <%@>", buf, 0x16u);
    }

    v38 = v60;
  }

  else
  {
    v40 = v35;
  }

  v61 = v38;
  v50 = v40;
  v51 = [v38 isEqualToString:v40];
  v52 = evaluationLogHandle;
  v53 = os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG);
  if ((v51 & 1) == 0)
  {
    if (v53)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEBUG, "Test additional qualifier: strings don't match", buf, 2u);
    }

LABEL_59:
    goto LABEL_15;
  }

  if (v53)
  {
    *buf = 138412546;
    *v64 = v61;
    *&v64[8] = 2112;
    v65 = v50;
    _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEBUG, "Test additional qualifier: matched %@ and %@", buf, 0x16u);
  }

LABEL_12:
  v24 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "Test additional qualifier: matched events", buf, 2u);
  }

  if (self->_conditionMinCount > ++v10)
  {
    goto LABEL_15;
  }

  v58 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v59 = self->_conditionMinCount;
    *buf = 67109376;
    *v64 = v59;
    *&v64[4] = 1024;
    *&v64[6] = v10;
    _os_log_impl(&dword_23255B000, v58, OS_LOG_TYPE_DEBUG, "Ssufficient matches found, need %d, found %d", buf, 0xEu);
  }

  v56 = 1;
LABEL_67:

  return v56;
}

- (BOOL)evaluateHandler:(id)handler showingWorkAt:(id)at
{
  v37 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  atCopy = at;
  additionalSelector = self->_additionalSelector;
  if (additionalSelector)
  {
    v9 = [(SymptomAdditionalProtocol *)self->_additionalHandler performSelector:additionalSelector];
    v10 = evaluationLogHandle;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (v9)
      {
        integerValue = [v9 integerValue];
      }

      else
      {
        integerValue = 0;
      }

      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      uTF8String = [v20 UTF8String];
      if (self->_additionalSelector)
      {
        v22 = self->_additionalSelector;
      }

      else
      {
        v22 = 0;
      }

      v23 = NSStringFromSelector(v22);
      uTF8String2 = [v23 UTF8String];
      conditionMinCount = self->_conditionMinCount;
      v27 = 134219010;
      v28 = v9;
      v29 = 2048;
      v30 = integerValue;
      v31 = 2080;
      v32 = uTF8String;
      v33 = 2080;
      v34 = uTF8String2;
      v35 = 1024;
      v36 = conditionMinCount;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "value %p %ld from CONDITION_ADDITIONAL_HANDLER %s, selector %s threshold %d", &v27, 0x30u);
    }

    if (v9)
    {
      if ([v9 integerValue] < self->_conditionMinCount)
      {
        v18 = 0;
      }

      else
      {
        v18 = -1;
      }
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_20;
  }

  v9 = [(SymptomAdditionalProtocol *)self->_additionalHandler evaluate:handlerCopy forThreshold:self->_conditionMinCount];
  v12 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    uTF8String3 = [v15 UTF8String];
    v17 = self->_conditionMinCount;
    v27 = 134218498;
    v28 = v9;
    v29 = 2080;
    v30 = uTF8String3;
    v31 = 1024;
    LODWORD(v32) = v17;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "result %p from CONDITION_ADDITIONAL_HANDLER %s, threshold %d", &v27, 0x1Cu);
  }

  if (v9)
  {
    [atCopy addObject:v9];
    v18 = 1;
LABEL_20:

    goto LABEL_21;
  }

  v18 = 0;
LABEL_21:

  return v18 & 1;
}

- (BOOL)evaluate:(id)evaluate showingWorkAt:(id)at
{
  evaluateCopy = evaluate;
  atCopy = at;
  conditionType = self->_conditionType;
  if (conditionType == 1)
  {
    v9 = [(SimpleRuleCondition *)self evaluateHandler:evaluateCopy showingWorkAt:atCopy];
  }

  else
  {
    if (conditionType)
    {
      v10 = 0;
      goto LABEL_9;
    }

    if (!self->_conditionFlags)
    {
      v10 = self->_conditionMinCount <= [SymptomStore numSymptomsWithKey:self->_conditionPrevSymptom retainTime:LODWORD(self->_conditionMaxAge)];
      goto LABEL_9;
    }

    v9 = [(SimpleRuleCondition *)self evaluatePrevSymptom:evaluateCopy showingWorkAt:atCopy];
  }

  v10 = v9;
LABEL_9:

  return v10;
}

- (SEL)additionalSelector
{
  if (self->_additionalSelector)
  {
    return self->_additionalSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setAdditionalSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_additionalSelector = selectorCopy;
}

@end