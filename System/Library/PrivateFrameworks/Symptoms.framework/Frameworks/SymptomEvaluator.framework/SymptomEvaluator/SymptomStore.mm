@interface SymptomStore
+ (id)descriptionFromSymptomName:(id)name;
+ (id)idFromReporterName:(id)name;
+ (id)idFromSymptomName:(id)name;
+ (id)keyFromSymptomName:(id)name;
+ (id)nameFromReporterId:(unsigned int)id;
+ (id)nameFromSymptomId:(unsigned int)id;
+ (id)nameFromSymptomKey:(id)key;
+ (id)storeFromSymptomName:(id)name;
+ (id)storedSymptomsWithKey:(id)key;
+ (int)addFromReporter:(id)reporter;
+ (int)configure:(id)configure;
+ (unsigned)numSymptomsWithKey:(id)key retainTime:(unsigned int)time;
+ (void)_createForName:(id)name key:(id)key id:(unsigned int)id symptomDescription:(id)description;
+ (void)initialize;
+ (void)noteReceivedSymptom:(id)symptom;
+ (void)pruneSymptomsWithKey:(id)key;
+ (void)resetSymptomsWithKey:(id)key;
+ (void)setRetainCount:(unsigned int)count forSymptom:(id)symptom;
+ (void)setRetainTime:(unsigned int)time forSymptom:(id)symptom;
- (unsigned)numSymptomsWithRetainTime:(unsigned int)time;
- (void)_pruneSymptomsForDate:(id)date;
- (void)noteReceivedSymptom:(id)symptom;
- (void)setRetainCount:(unsigned int)count;
- (void)setRetainTime:(unsigned int)time;
@end

@implementation SymptomStore

+ (void)initialize
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
  v3 = nameToKeyDictionary;
  nameToKeyDictionary = v2;

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
  v5 = reporterDictionary;
  reporterDictionary = v4;

  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
  v7 = keyToInstanceDictionary;
  keyToInstanceDictionary = v6;

  MEMORY[0x2821F96F8](v6, v7);
}

+ (id)idFromSymptomName:(id)name
{
  v3 = [SymptomStore storeFromSymptomName:name];
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "symptomIdent")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)descriptionFromSymptomName:(id)name
{
  v3 = [SymptomStore storeFromSymptomName:name];
  v4 = v3;
  if (v3)
  {
    symptomDescription = [v3 symptomDescription];
  }

  else
  {
    symptomDescription = 0;
  }

  return symptomDescription;
}

+ (id)nameFromSymptomId:(unsigned int)id
{
  if (id)
  {
    v4 = [self keyFromSymptomId:?];
    v5 = [self nameFromSymptomKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)keyFromSymptomName:(id)name
{
  nameCopy = name;
  v5 = [nameToKeyDictionary objectForKey:nameCopy];
  if (!v5)
  {
    [self _createForName:nameCopy key:nameCopy id:0 symptomDescription:0];
    v5 = nameCopy;
  }

  return v5;
}

+ (id)nameFromSymptomKey:(id)key
{
  keyCopy = key;
  v4 = [keyToInstanceDictionary objectForKey:keyCopy];
  v5 = v4;
  if (v4)
  {
    symptomName = [v4 symptomName];
  }

  else
  {
    symptomName = keyCopy;
  }

  v7 = symptomName;

  return v7;
}

+ (id)idFromReporterName:(id)name
{
  v3 = [reporterDictionary objectForKey:name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

+ (id)nameFromReporterId:(unsigned int)id
{
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:id];
  v4 = [reporterDictionary allKeysForObject:v3];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int)configure:(id)configure
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [configure objectForKey:@"SYMPTOM_ARRAY"];
  v5 = [v3 arrayWithArray:v4];

  if (!v5)
  {
    v12 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v21 = 0;
      v13 = "No SYMPTOM_ARRAY found, skipping\n";
      v14 = &v21;
LABEL_21:
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, v13, v14, 2u);
    }

LABEL_22:
    objectEnumerator = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v5 count])
    {
      objectEnumerator = [v5 objectEnumerator];
      nextObject = [objectEnumerator nextObject];
      if (nextObject)
      {
        v8 = nextObject;
        while (1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
            v10 = [SymptomStore addFromReporter:v9];
            if (v10)
            {
              LODWORD(nextObject2) = v10;

              goto LABEL_24;
            }
          }

          else
          {
            v11 = configurationLogHandle;
            if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
            {
              *v18 = 0;
              _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Malformed element in symptom array\n", v18, 2u);
            }

            v9 = 0;
          }

          nextObject2 = [objectEnumerator nextObject];

          v8 = nextObject2;
          if (!nextObject2)
          {
            goto LABEL_24;
          }
        }
      }

LABEL_23:
      LODWORD(nextObject2) = 0;
      goto LABEL_24;
    }

    v12 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v19 = 0;
      v13 = "Empty SYMPTOM_ARRAY\n";
      v14 = v19;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v15 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Malformed SYMPTOM_ARRAY\n", buf, 2u);
  }

  objectEnumerator = 0;
  LODWORD(nextObject2) = -1;
LABEL_24:

  return nextObject2;
}

+ (void)_createForName:(id)name key:(id)key id:(unsigned int)id symptomDescription:(id)description
{
  v6 = *&id;
  v9 = nameToKeyDictionary;
  descriptionCopy = description;
  keyCopy = key;
  nameCopy = name;
  [v9 setObject:keyCopy forKeyedSubscript:nameCopy];
  v14 = objc_alloc_init(SymptomStore);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(SymptomStore *)v14 setSymptomHistory:v13];

  [(SymptomStore *)v14 setSymptomIdent:v6];
  [(SymptomStore *)v14 setSymptomKey:keyCopy];
  [(SymptomStore *)v14 setSymptomName:nameCopy];

  [(SymptomStore *)v14 setSymptomDescription:descriptionCopy];
  [keyToInstanceDictionary setObject:v14 forKeyedSubscript:keyCopy];
}

+ (int)addFromReporter:(id)reporter
{
  v61 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  v5 = [reporterCopy objectForKey:@"SYMPTOM_DEFINITION_VERSION"];
  if (!v5)
  {
    v13 = configurationLogHandle;
    if (!os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v14 = "No version information\n";
LABEL_16:
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = configurationLogHandle;
    if (!os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v14 = "Malformed version information\n";
    goto LABEL_16;
  }

  if ([v5 intValue] != 1)
  {
    v13 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Incorrect version number\n";
      goto LABEL_16;
    }

LABEL_17:
    v15 = 0;
    v16 = -1;
    goto LABEL_18;
  }

  v6 = [reporterCopy objectForKey:@"SUBSYSTEM_ID"];
  if (!v6)
  {
    v18 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "No SUBSYSTM_ID information\n";
LABEL_23:
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    }

LABEL_24:
    v15 = 0;
    v16 = -1;
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Malformed subsystem id  information\n";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  unsignedLongValue = [v6 unsignedLongValue];
  v8 = [reporterCopy objectForKey:@"SUBSYSTEM_SHORT_TEXT_ID"];
  if (!v8)
  {
    v20 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "No SUBSYSTEM_SHORT_NAME information\n", buf, 2u);
    }

    goto LABEL_27;
  }

  v9 = [reporterDictionary objectForKey:v8];

  if (v9)
  {
    v10 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = v8;
      v12 = v10;
      *buf = 136315138;
      uTF8String = [v8 UTF8String];
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Duplicate reporter name %s \n", buf, 0xCu);
    }

LABEL_27:
    v15 = 0;
LABEL_28:
    v16 = -1;
    goto LABEL_29;
  }

  v15 = [reporterDictionary allKeysForObject:v8];
  if ([v15 count])
  {
    v21 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v22 = v8;
      v23 = v21;
      *buf = 136315138;
      uTF8String = [v8 UTF8String];
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "Duplicate key value  %s \n", buf, 0xCu);
    }

    goto LABEL_28;
  }

  [reporterDictionary setObject:v6 forKeyedSubscript:v8];
  v24 = MEMORY[0x277CBEB18];
  v25 = [reporterCopy objectForKey:@"SUBSYSTEM_SYMPTOM_ARRAY"];
  v26 = [v24 arrayWithArray:v25];

  if (!v26)
  {
    v48 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v49 = "No SYMPTOM_ARRAY found\n";
LABEL_59:
      _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_ERROR, v49, buf, 2u);
    }

LABEL_60:
    v16 = -1;
    goto LABEL_63;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v48 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v49 = "Malformed SYMPTOM_ARRAY\n";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  v50 = v8;
  v51 = v26;
  objectEnumerator = [v26 objectEnumerator];
  nextObject = 0;
  v53 = unsignedLongValue << 12;
  v52 = objectEnumerator;
  while (1)
  {
    v29 = nextObject;
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, "Malformed element in symptom array\n", buf, 2u);
      }

      v41 = 0;
      goto LABEL_52;
    }

    v54 = nextObject;
    v30 = nextObject;
    v31 = [v30 objectForKey:@"NUMERIC_ID"];
    v32 = [v30 objectForKey:@"TEXT_ID"];
    v58 = v30;
    v55 = [v30 objectForKey:@"DESCRIPTION"];
    v57 = v31;
    unsignedLongValue2 = [v31 unsignedLongValue];
    v34 = [self keyFromSymptomId:v53 | unsignedLongValue2];
    v56 = v32;
    v35 = [nameToKeyDictionary objectForKey:v32];

    if (v35)
    {
      v36 = v34;
      v37 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        v38 = v56;
        v39 = v37;
        uTF8String2 = [v56 UTF8String];
        *buf = 136315138;
        uTF8String = uTF8String2;
        _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_ERROR, "Duplicate symptom %s\n", buf, 0xCu);
      }

      v41 = 0;
    }

    else
    {
      v43 = [nameToKeyDictionary allKeysForObject:v34];

      if ([v43 count])
      {
        v44 = configurationLogHandle;
        objectEnumerator = v52;
        if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
        {
          v45 = v34;
          v46 = v44;
          uTF8String3 = [v34 UTF8String];
          *buf = 136315138;
          uTF8String = uTF8String3;
          _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_ERROR, "Duplicate key value  %s\n", buf, 0xCu);
        }

        v41 = 0;
        v15 = v43;
        goto LABEL_51;
      }

      [self _createForName:v56 key:v34 id:v53 | unsignedLongValue2 symptomDescription:v55];

      v41 = 1;
      v15 = v43;
    }

    objectEnumerator = v52;
LABEL_51:
    nextObject = v54;
LABEL_52:
    if ((v41 & 1) == 0)
    {
      v16 = -1;
      goto LABEL_62;
    }
  }

  v16 = 0;
LABEL_62:

  v8 = v50;
  v26 = v51;
LABEL_63:

LABEL_29:
LABEL_30:

LABEL_18:
  return v16;
}

+ (id)storeFromSymptomName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = [SymptomStore keyFromSymptomName:nameCopy];
  if (v4)
  {
    v5 = [SymptomStore storeFromSymptomKey:v4];
    if (v5)
    {
      goto LABEL_9;
    }

    v6 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = nameCopy;
      v8 = v6;
      v13 = 136315138;
      uTF8String = [nameCopy UTF8String];
      v9 = "Configuration problem, no store for for symptom name %s\n";
LABEL_7:
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, v9, &v13, 0xCu);
    }
  }

  else
  {
    v10 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = nameCopy;
      v8 = v10;
      v13 = 136315138;
      uTF8String = [nameCopy UTF8String];
      v9 = "configuration problem, no key for symptom name %s";
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

+ (void)noteReceivedSymptom:(id)symptom
{
  symptomCopy = symptom;
  eventKey = [symptomCopy eventKey];
  v5 = [SymptomStore storeFromSymptomKey:eventKey];

  [v5 noteReceivedSymptom:symptomCopy];
}

+ (void)setRetainTime:(unsigned int)time forSymptom:(id)symptom
{
  v4 = *&time;
  v5 = [SymptomStore storeFromSymptomName:symptom];
  if (v5)
  {
    v6 = v5;
    [v5 setRetainTime:v4];
    v5 = v6;
  }
}

+ (void)setRetainCount:(unsigned int)count forSymptom:(id)symptom
{
  v4 = *&count;
  v5 = [SymptomStore storeFromSymptomName:symptom];
  if (v5)
  {
    v6 = v5;
    [v5 setRetainCount:v4];
    v5 = v6;
  }
}

+ (id)storedSymptomsWithKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = [SymptomStore storeFromSymptomKey:keyCopy];
  v5 = v4;
  if (v4 && ([v4 symptomHistory], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    v8 = objc_alloc_init(SymptomSet);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    symptomHistory = [v5 symptomHistory];
    [v9 addObjectsFromArray:symptomHistory];

    [(SymptomSet *)v8 setSymptoms:v9];
    v11 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v12 = keyCopy;
      v13 = v11;
      uTF8String = [keyCopy UTF8String];
      v15 = [(SymptomSet *)v8 description];
      v18 = 136315394;
      v19 = uTF8String;
      v20 = 2080;
      uTF8String2 = [v15 UTF8String];
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "storedSymptomsWithKey: key %s return symptomSet %s", &v18, 0x16u);
    }
  }

  else
  {
    v16 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "storedSymptomsWithKey: return symptomSet NULL", &v18, 2u);
    }

    v8 = 0;
  }

  return v8;
}

+ (unsigned)numSymptomsWithKey:(id)key retainTime:(unsigned int)time
{
  v4 = *&time;
  v5 = [SymptomStore storeFromSymptomKey:key];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 numSymptomsWithRetainTime:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)pruneSymptomsWithKey:(id)key
{
  v3 = [SymptomStore storeFromSymptomKey:key];
  if (v3)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v3 _pruneSymptomsForDate:date];
  }

  v5 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "pruneSymptomsWithKey", v6, 2u);
  }
}

+ (void)resetSymptomsWithKey:(id)key
{
  v14 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = keyCopy;
    v6 = v4;
    v12 = 136315138;
    uTF8String = [keyCopy UTF8String];
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "resetSymptomsWithKey: entry for %s", &v12, 0xCu);
  }

  v7 = [SymptomStore storeFromSymptomKey:keyCopy];
  v8 = v7;
  if (v7)
  {
    symptomHistory = [v7 symptomHistory];
    [symptomHistory removeAllObjects];

    v10 = v8[6];
    if (v10)
    {
      v11 = *(v8 + 11);
      if (v11)
      {
        bzero(v10, 8 * v11);
      }
    }
  }
}

- (void)setRetainTime:(unsigned int)time
{
  if (self->symptomMinRetainTime < time)
  {
    self->symptomMinRetainTime = time;
  }
}

- (void)setRetainCount:(unsigned int)count
{
  if (self->symptomMinSavedCount < count)
  {
    if (self->symptomArrivalTimes)
    {
      if (count == -1)
      {
        [NetworkAnalyticsModel _clusterUsingKMeansOn:v11 into:? iterations:? saveCentroidsTo:?];
      }

      v5 = malloc_type_calloc(count + 1, 8uLL, 0x1FC49241uLL);
      if (!v5)
      {
        [(SymptomStore *)count + 1 setRetainCount:v11];
      }

      v6 = v5;
      symptomMinSavedCount = self->symptomMinSavedCount;
      if (symptomMinSavedCount)
      {
        symptomArrivalTimes = self->symptomArrivalTimes;
        v9 = v5;
        do
        {
          v10 = *symptomArrivalTimes++;
          *v9++ = v10;
          --symptomMinSavedCount;
        }

        while (symptomMinSavedCount);
      }

      if (retiredArrivalTimes)
      {
        free(retiredArrivalTimes);
      }

      retiredArrivalTimes = self->symptomArrivalTimes;
      self->symptomArrivalTimes = v6;
      __dmb(0xBu);
    }

    self->symptomMinSavedCount = count;
  }
}

- (void)_pruneSymptomsForDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = [(NSMutableArray *)self->symptomHistory count];
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = (v5 & 0x7FFFFFFF) + 1;
    *&v6 = 67109120;
    v19 = v6;
    while (1)
    {
      v9 = v7;
      v7 = [(NSMutableArray *)self->symptomHistory objectAtIndex:v8 - 2, v19];

      creationTimeStamp = [v7 creationTimeStamp];
      [dateCopy timeIntervalSinceDate:creationTimeStamp];
      v12 = v11;

      v13 = evaluationLogHandle;
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v21 = v12;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "Compare symptoms, time difference is %f", buf, 0xCu);
      }

      LODWORD(v14) = self->symptomMinRetainTime;
      v15 = v14;
      v16 = evaluationLogHandle;
      v17 = os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG);
      if (v12 <= v15)
      {
        break;
      }

      if (v17)
      {
        symptomMinRetainTime = self->symptomMinRetainTime;
        *buf = v19;
        LODWORD(v21) = symptomMinRetainTime;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "Remove event from history: too old, retain time %d ", buf, 8u);
      }

      [(NSMutableArray *)self->symptomHistory removeLastObject];
      if (--v8 <= 1)
      {
        goto LABEL_12;
      }
    }

    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "No more old events in history", buf, 2u);
    }

LABEL_12:
  }
}

- (unsigned)numSymptomsWithRetainTime:(unsigned int)time
{
  v29 = *MEMORY[0x277D85DE8];
  symptomMinSavedCount = self->symptomMinSavedCount;
  __dmb(0xBu);
  symptomArrivalTimes = self->symptomArrivalTimes;
  if (!symptomArrivalTimes)
  {
    return 0;
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  if (!symptomMinSavedCount)
  {
    return 0;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  timeCopy = time;
  do
  {
    v12 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      symptomName = self->symptomName;
      v14 = v12;
      v15 = [(NSString *)symptomName description];
      uTF8String = [v15 UTF8String];
      v17 = symptomArrivalTimes[v9];
      *buf = 136316162;
      v20 = uTF8String;
      v21 = 2048;
      v22 = v17;
      v23 = 1024;
      v24 = v9;
      v25 = 2048;
      v26 = v8;
      v27 = 1024;
      v28 = v8 - v17 < timeCopy;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "%s  Check stored interval %f at index %d against current %f, willcount = %d", buf, 0x2Cu);
    }

    if (v8 - symptomArrivalTimes[v9] < timeCopy)
    {
      ++v10;
    }

    ++v9;
  }

  while (symptomMinSavedCount != v9);
  return v10;
}

- (void)noteReceivedSymptom:(id)symptom
{
  v29 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  symptomMinRetainTime = self->symptomMinRetainTime;
  v6 = evaluationLogHandle;
  v7 = os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG);
  if (symptomMinRetainTime)
  {
    if (v7)
    {
      symptomHistory = self->symptomHistory;
      v9 = v6;
      v25 = 134218240;
      uTF8String3 = symptomHistory;
      v27 = 2048;
      v28 = [(NSMutableArray *)symptomHistory count];
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "history %p count is %ld", &v25, 0x16u);
    }

    if ([(NSMutableArray *)self->symptomHistory count]> self->symptomMinSavedCount)
    {
      v10 = evaluationLogHandle;
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "Remove event from history: at max size", &v25, 2u);
      }

      [(NSMutableArray *)self->symptomHistory removeLastObject];
    }

    creationTimeStamp = [symptomCopy creationTimeStamp];
    [(SymptomStore *)self _pruneSymptomsForDate:creationTimeStamp];
    v12 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v13 = v12;
      v14 = [symptomCopy description];
      uTF8String = [v14 UTF8String];
      v16 = [(SymptomStore *)self description];
      uTF8String2 = [v16 UTF8String];
      v25 = 136315394;
      uTF8String3 = uTF8String;
      v27 = 2080;
      v28 = uTF8String2;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "noteReceivedSymptom: add event %s to history for %s", &v25, 0x16u);
    }

    [(NSMutableArray *)self->symptomHistory insertObject:symptomCopy atIndex:0];
    __dmb(0xBu);
    if (!self->symptomArrivalTimes)
    {
      symptomMinSavedCount = self->symptomMinSavedCount;
      v19 = symptomMinSavedCount + 1;
      if (symptomMinSavedCount == -1)
      {
        [NetworkAnalyticsModel _clusterUsingKMeansOn:? into:? iterations:? saveCentroidsTo:?];
      }

      v20 = malloc_type_calloc(symptomMinSavedCount + 1, 8uLL, 0xEDB86609uLL);
      if (!v20)
      {
        [(SymptomStore *)v19 setRetainCount:?];
      }

      self->symptomArrivalTimes = v20;
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    symptomArrivalTimeNextIdx = self->symptomArrivalTimeNextIdx;
    self->symptomArrivalTimes[symptomArrivalTimeNextIdx] = v22;
    if (symptomArrivalTimeNextIdx + 1 == self->symptomMinSavedCount)
    {
      v23 = 0;
    }

    else
    {
      v23 = symptomArrivalTimeNextIdx + 1;
    }

    self->symptomArrivalTimeNextIdx = v23;
    goto LABEL_20;
  }

  if (v7)
  {
    v24 = v6;
    creationTimeStamp = [symptomCopy description];
    v25 = 136315138;
    uTF8String3 = [creationTimeStamp UTF8String];
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "noteReceivedSymptom: retain time 0, skip %s", &v25, 0xCu);

LABEL_20:
  }
}

- (void)setRetainCount:(uint64_t)a1 .cold.1(uint64_t a1, char **a2)
{
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1_3(&dword_23255B000, v4, v5, "strict_calloc(%zu, %zu) failed", v6, v7, v8, v9, v10, v11);
  }

  *a2 = 0;
  asprintf(a2, "strict_calloc(%zu, %zu) failed", a1, 8uLL);
  qword_27DDA0B50 = *a2;
  __break(1u);
}

@end