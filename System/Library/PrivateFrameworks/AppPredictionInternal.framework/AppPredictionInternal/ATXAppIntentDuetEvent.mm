@interface ATXAppIntentDuetEvent
- (ATXAppIntentDuetEvent)initWithBundleId:(id)id actionType:(id)type parameterHashes:(id)hashes slotSetHashes:(id)setHashes paramCount:(id)count startDate:(id)date endDate:(id)endDate alogId:(id)self0;
- (ATXAppIntentDuetEvent)initWithCoder:(id)coder;
- (ATXAppIntentDuetEvent)initWithCurrentContextStoreValues;
- (id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAppIntentDuetEvent

- (ATXAppIntentDuetEvent)initWithBundleId:(id)id actionType:(id)type parameterHashes:(id)hashes slotSetHashes:(id)setHashes paramCount:(id)count startDate:(id)date endDate:(id)endDate alogId:(id)self0
{
  idCopy = id;
  typeCopy = type;
  hashesCopy = hashes;
  setHashesCopy = setHashes;
  obj = count;
  countCopy = count;
  dateCopy = date;
  endDateCopy = endDate;
  alogIdCopy = alogId;
  if ([idCopy length])
  {
    v23 = [typeCopy length];
    selfCopy = 0;
    if (hashesCopy)
    {
      if (v23)
      {
        v25 = [hashesCopy count];
        selfCopy = 0;
        if (setHashesCopy)
        {
          if (v25)
          {
            v26 = [setHashesCopy count];
            selfCopy = 0;
            if (dateCopy)
            {
              if (v26)
              {
                v37.receiver = self;
                v37.super_class = ATXAppIntentDuetEvent;
                v27 = [(ATXDuetEvent *)&v37 initWithStartDate:dateCopy endDate:endDateCopy];
                if (v27)
                {
                  v28 = [idCopy copy];
                  bundleId = v27->_bundleId;
                  v27->_bundleId = v28;

                  v30 = [typeCopy copy];
                  actionType = v27->_actionType;
                  v27->_actionType = v30;

                  v32 = [hashesCopy copy];
                  parameterHashes = v27->_parameterHashes;
                  v27->_parameterHashes = v32;

                  objc_storeStrong(&v27->_slotSetHashes, setHashes);
                  objc_storeStrong(&v27->_paramCount, obj);
                  objc_storeStrong(&v27->_alogId, alogId);
                }

                self = v27;
                selfCopy = self;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXAppIntentDuetEvent)initWithCurrentContextStoreValues
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForIntentsDataDictionary = [MEMORY[0x277CFE338] keyPathForIntentsDataDictionary];
  v5 = [userContext objectForKeyedSubscript:keyPathForIntentsDataDictionary];

  if (!v5)
  {
    v32 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ATXAppIntentDuetEvent initWithCurrentContextStoreValues];
    }

    goto LABEL_22;
  }

  keyPathForIntentsDataDictionary2 = [MEMORY[0x277CFE338] keyPathForIntentsDataDictionary];
  v8 = [userContext objectForKeyedSubscript:keyPathForIntentsDataDictionary2];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v33 = __atxlog_handle_default(v10);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [ATXAppIntentDuetEvent initWithCurrentContextStoreValues];
    }

    v34 = MEMORY[0x277CBEAD8];
    v35 = *MEMORY[0x277CBE658];
    v36 = @"ContextStore's 'keyPathForIntentsDataDictionary' is not an NSDictionary.";
    goto LABEL_21;
  }

  intentSourceBundleIDKey = [MEMORY[0x277CFE338] intentSourceBundleIDKey];
  v12 = [v5 objectForKeyedSubscript:intentSourceBundleIDKey];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if ((v13 & 1) == 0)
  {
    v37 = __atxlog_handle_default(v14);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [ATXAppIntentDuetEvent initWithCurrentContextStoreValues];
    }

    v34 = MEMORY[0x277CBEAD8];
    v35 = *MEMORY[0x277CBE658];
    v36 = @"Value for 'intentSourceBundleIDKey' in ContextStore's 'keyPathForIntentsDataDictionary' is not an NSString.";
LABEL_21:
    [v34 raise:v35 format:v36];
LABEL_22:
    selfCopy = 0;
    goto LABEL_23;
  }

  intentSourceBundleIDKey2 = [MEMORY[0x277CFE338] intentSourceBundleIDKey];
  v16 = [v5 objectForKeyedSubscript:intentSourceBundleIDKey2];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_2839A6058;
  }

  v19 = v18;

  intentClassKey = [MEMORY[0x277CFE338] intentClassKey];
  v21 = [v5 objectForKeyedSubscript:intentClassKey];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    intentClassKey2 = [MEMORY[0x277CFE338] intentClassKey];
    v25 = [v5 objectForKeyedSubscript:intentClassKey2];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &stru_2839A6058;
    }

    v28 = v27;

    date = [MEMORY[0x277CBEAA8] date];
    v30 = [(ATXAppIntentDuetEvent *)self initWithBundleId:v19 actionType:v28 parameterHashes:&unk_283A588C8 slotSetHashes:&unk_283A588E0 paramCount:&unk_283A56B10 startDate:date endDate:date];

    self = v30;
    selfCopy = self;
  }

  else
  {
    v39 = __atxlog_handle_default(v23);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [ATXAppIntentDuetEvent initWithCurrentContextStoreValues];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'intentClassKey' in ContextStore's 'keyPathForIntentsDataDictionary' is not an NSString."];
    selfCopy = 0;
  }

LABEL_23:
  return selfCopy;
}

- (id)identifier
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:", self->_bundleId, self->_actionType];
  [v3 appendString:v4];

  if ([(NSArray *)self->_parameterHashes count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->_parameterHashes objectAtIndexedSubscript:v5];
      v7 = [(NSArray *)self->_parameterHashes count]- 1;
      v8 = objc_alloc(MEMORY[0x277CCACA8]);
      longLongValue = [v6 longLongValue];
      if (v7 <= v5)
      {
        v10 = @"%lld";
      }

      else
      {
        v10 = @"%lld,";
      }

      v11 = [v8 initWithFormat:v10, longLongValue];
      [v3 appendString:v11];

      ++v5;
    }

    while ([(NSArray *)self->_parameterHashes count]> v5);
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startDate = [(ATXDuetEvent *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"codingKeyForDuetEventStartDate"];

  endDate = [(ATXDuetEvent *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"codingKeyForDuetEventEndDate"];

  [coderCopy encodeObject:self->_bundleId forKey:@"codingKeyForBundleId"];
  [coderCopy encodeObject:self->_actionType forKey:@"codingKeyForActionType"];
  [coderCopy encodeObject:self->_parameterHashes forKey:@"codingKeyForParamHashes"];
  [coderCopy encodeObject:self->_slotSetHashes forKey:@"codingKeyForSlotSetHashes"];
  [coderCopy encodeObject:self->_paramCount forKey:@"codingKeyForParamCount"];
  [coderCopy encodeObject:self->_alogId forKey:@"codingKeyForALogId"];
}

- (ATXAppIntentDuetEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForDuetEventStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor(v12);
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForDuetEventEndDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v13];

    if (v14 && ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v16 = MEMORY[0x277D42620];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_anchor(v17);
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForBundleId" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v18];

      if (v19 && ([coderCopy error], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
      {
        v21 = MEMORY[0x277D42620];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_anchor(v22);
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"codingKeyForActionType" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v23];

        if (v24 && ([coderCopy error], v25 = objc_claimAutoreleasedReturnValue(), v25, !v25))
        {
          v55 = MEMORY[0x277D42620];
          v26 = objc_autoreleasePoolPush();
          v27 = objc_alloc(MEMORY[0x277CBEB98]);
          v28 = objc_opt_class();
          v29 = [v27 initWithObjects:{v28, objc_opt_class(), 0}];
          objc_autoreleasePoolPop(v26);
          v31 = __atxlog_handle_anchor(v30);
          v32 = [v55 robustDecodeObjectOfClasses:v29 forKey:@"codingKeyForParamHashes" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v31];

          if (v32 && ([coderCopy error], v33 = objc_claimAutoreleasedReturnValue(), v33, !v33))
          {
            v56 = v32;
            v34 = MEMORY[0x277D42620];
            contexta = objc_autoreleasePoolPush();
            v35 = objc_alloc(MEMORY[0x277CBEB98]);
            v36 = objc_opt_class();
            v37 = [v35 initWithObjects:{v36, objc_opt_class(), 0}];
            objc_autoreleasePoolPop(contexta);
            v39 = __atxlog_handle_anchor(v38);
            v40 = [v34 robustDecodeObjectOfClasses:v37 forKey:@"codingKeyForSlotSetHashes" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v39];

            if (v40 && ([coderCopy error], v41 = objc_claimAutoreleasedReturnValue(), v41, !v41))
            {
              context = v40;
              v42 = MEMORY[0x277D42620];
              v43 = objc_opt_class();
              v44 = __atxlog_handle_anchor(v43);
              v45 = [v42 robustDecodeObjectOfClass:v43 forKey:@"codingKeyForParamCount" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v44];

              if (v45 && ([coderCopy error], v46 = objc_claimAutoreleasedReturnValue(), v46, !v46))
              {
                v47 = MEMORY[0x277D42620];
                v48 = objc_opt_class();
                v49 = __atxlog_handle_anchor(v48);
                v50 = [v47 robustDecodeObjectOfClass:v48 forKey:@"codingKeyForALogId" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v49];

                if (v50 && ([coderCopy error], v51 = objc_claimAutoreleasedReturnValue(), v51, !v51))
                {
                  self = [(ATXAppIntentDuetEvent *)self initWithBundleId:v19 actionType:v24 parameterHashes:v56 slotSetHashes:context paramCount:v45 startDate:v8 endDate:v14 alogId:v50];
                  selfCopy = self;
                }

                else
                {
                  selfCopy = 0;
                }
              }

              else
              {
                selfCopy = 0;
              }

              v40 = context;
            }

            else
            {
              selfCopy = 0;
            }

            v32 = v56;
          }

          else
          {
            selfCopy = 0;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end