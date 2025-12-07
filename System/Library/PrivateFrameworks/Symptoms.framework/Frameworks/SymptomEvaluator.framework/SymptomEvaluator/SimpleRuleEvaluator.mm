@interface SimpleRuleEvaluator
+ (id)configureClass:(id)class;
+ (id)objectWithName:(id)name;
- (NSString)description;
- (int)configureInstance:(id)instance;
- (void)evaluateSignatureForEvent:(id)event;
@end

@implementation SimpleRuleEvaluator

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  signatureName = self->_signatureName;
  syndromeName = [(SimpleSyndromeHandler *)self->_syndromeToCall syndromeName];
  v6 = [v3 stringWithFormat:@"signature handler %@ for syndrome %@ with conditions %@", signatureName, syndromeName, self->_conditionsToCheck];

  return v6;
}

+ (id)objectWithName:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = [ConfigurationHandler objectForName:nameCopy];
  if (!v4)
  {
    v9 = objc_alloc_init(SimpleRuleEvaluator);
    v4 = v9;
    if (v9)
    {
      [(SimpleRuleEvaluator *)v9 setSignatureName:nameCopy];
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
  v5 = [classCopy objectForKey:@"SIGNATURE_NAME"];
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

- (int)configureInstance:(id)instance
{
  v43 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v5 = [instanceCopy objectForKey:@"SYNDROME_NAME"];
  if (v5)
  {
    v6 = [SimpleSyndromeHandler objectWithName:v5];
    syndromeToCall = self->_syndromeToCall;
    self->_syndromeToCall = v6;

    if ([(SimpleSyndromeHandler *)self->_syndromeToCall configureInstance:instanceCopy])
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = -1;
      goto LABEL_26;
    }
  }

  v13 = [instanceCopy objectForKey:@"RULE_AWD_CODE"];
  v9 = v13;
  if (v13)
  {
    self->_awd_code = [v13 unsignedLongLongValue];
  }

  v14 = [instanceCopy objectForKey:@"SIGNATURE_DESCRIPTION"];
  if (v14)
  {
    v15 = v14;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s triggered by %@", -[SimpleSyndromeHandler syndromeUTF8Name](self->_syndromeToCall, "syndromeUTF8Name"), v14];

    stringToLog = self->_stringToLog;
    if (stringToLog)
    {
      free(stringToLog);
      self->_stringToLog = 0;
    }

    uTF8String = [v10 UTF8String];
    if (!uTF8String)
    {
      [ManagedEventHandler initWithName:buf];
    }

    v18 = strdup(uTF8String);
    if (!v18)
    {
      [EventDescription initWithType:buf length:? data:? fromPid:? named:? bundleId:?];
    }
  }

  else
  {
    if (self->_stringToLog)
    {
      v10 = 0;
      goto LABEL_14;
    }

    syndromeUTF8Name = [(SimpleSyndromeHandler *)self->_syndromeToCall syndromeUTF8Name];
    if (!syndromeUTF8Name)
    {
      [ManagedEventHandler initWithName:buf];
    }

    v18 = strdup(syndromeUTF8Name);
    if (!v18)
    {
      [EventDescription initWithType:buf length:? data:? fromPid:? named:? bundleId:?];
    }

    v10 = 0;
  }

  self->_stringToLog = v18;
LABEL_14:
  v8 = [instanceCopy objectForKey:@"ADDITIONAL_INFO_GENERATOR"];
  if (v8)
  {
    v19 = [ConfigurationHandler classRepresentativeForName:v8];
    additionalInfoGenerator = self->_additionalInfoGenerator;
    self->_additionalInfoGenerator = v19;

    if (self->_additionalInfoGenerator)
    {
      v21 = v8;
      v22 = [instanceCopy objectForKey:@"ADDITIONAL_INFO_SELECTOR"];
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = @"generateAdditionalInfo:";
      }

      v24 = NSSelectorFromString(&v23->isa);
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      self->_additionalInfoSelector = v25;

      v8 = v21;
    }
  }

  if (self->_conditionsToCheck)
  {
    v11 = 0;
LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  conditionsToCheck = self->_conditionsToCheck;
  self->_conditionsToCheck = v27;

  v29 = [instanceCopy objectForKey:@"REQUIRED_ITEMS"];
  v11 = v29;
  if (!v29 || ![v29 count])
  {
    goto LABEL_25;
  }

  v38 = v8;
  v39 = v9;
  v40 = v5;
  v30 = 0;
  v12 = 0;
  do
  {
    v31 = [v11 objectAtIndex:v30];
    v32 = [SimpleRuleCondition configureClass:v31];
    if (v32)
    {
      [(NSMutableArray *)self->_conditionsToCheck addObject:v32];
    }

    else
    {
      v33 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        v34 = v33;
        v35 = [v31 description];
        uTF8String2 = [v35 UTF8String];
        *buf = 136315138;
        v42 = uTF8String2;
        _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "Configuration failure to configure condition %s", buf, 0xCu);
      }

      v12 = -1;
    }

    ++v30;
  }

  while ([v11 count] > v30);
  v9 = v39;
  v5 = v40;
  v8 = v38;
LABEL_26:

  return v12;
}

- (void)evaluateSignatureForEvent:(id)event
{
  *&v27[5] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = [eventCopy description];
    v26 = 136315138;
    *v27 = [v8 UTF8String];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "evaluateSignatureForEvent: Entry, event %s", &v26, 0xCu);
  }

  if (![(NSMutableArray *)self->_conditionsToCheck count])
  {
    v12 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "evaluateSignatureForEvent: no conditions to satisfy", &v26, 2u);
    }

    v13 = [DecisionDetails alloc];
    stringToLog = self->_stringToLog;
    awd_code = self->_awd_code;
    v16 = 0;
    goto LABEL_16;
  }

  if ([(NSMutableArray *)self->_conditionsToCheck count])
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [(NSMutableArray *)self->_conditionsToCheck objectAtIndex:v9];
      v10 += [v11 evaluate:eventCopy showingWorkAt:v5];

      ++v9;
    }

    while ([(NSMutableArray *)self->_conditionsToCheck count]> v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = [(NSMutableArray *)self->_conditionsToCheck count];
  v18 = evaluationLogHandle;
  v19 = os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG);
  if (v17 == v10)
  {
    if (v19)
    {
      v26 = 67109120;
      v27[0] = v10;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "evaluateSignatureForEvent: satisfied %d conditions", &v26, 8u);
    }

    v13 = [DecisionDetails alloc];
    stringToLog = self->_stringToLog;
    awd_code = self->_awd_code;
    v16 = v5;
LABEL_16:
    v20 = [(DecisionDetails *)v13 initWithReason:stringToLog code:awd_code evaluations:v16];
    additionalInfoGenerator = self->_additionalInfoGenerator;
    if (additionalInfoGenerator)
    {
      if (self->_additionalInfoSelector)
      {
        additionalInfoSelector = self->_additionalInfoSelector;
      }

      else
      {
        additionalInfoSelector = 0;
      }

      v25 = [(AdditionalInfoProtocol *)additionalInfoGenerator performSelector:additionalInfoSelector withObject:eventCopy];
      if (v25)
      {
        [v20 setAdditionalInfo:v25];
      }
    }

    [(SimpleSyndromeHandler *)self->_syndromeToCall didReceiveSyndrome:v20];
    goto LABEL_26;
  }

  if (v19)
  {
    conditionsToCheck = self->_conditionsToCheck;
    v20 = v18;
    v24 = [(NSMutableArray *)conditionsToCheck count];
    v26 = 67109376;
    v27[0] = v10;
    LOWORD(v27[1]) = 2048;
    *(&v27[1] + 2) = v24;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "evaluateSignatureForEvent: only satisfied %d conditions, needed %ld", &v26, 0x12u);
LABEL_26:
  }
}

@end