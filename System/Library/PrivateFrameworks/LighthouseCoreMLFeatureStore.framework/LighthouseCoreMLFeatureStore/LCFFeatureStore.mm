@interface LCFFeatureStore
- (BOOL)pruneFrom:(id)from endDate:(id)date option:(unint64_t)option;
- (BOOL)updateFeatureSet:(id)set;
- (BOOL)updateFeatureSet:(id)set featureVestion:(id)vestion featureValues:(id)values;
- (id)featureProviderFromfeatureSet:(id)set featureNames:(id)names;
- (id)getFeatureSets:(id)sets startDate:(id)date endDate:(id)endDate option:(unint64_t)option;
- (id)getFeatureVector:(id)vector atTime:(id)time option:(unint64_t)option;
- (id)getFeatureVectorWithStoreEvents:(id)events storeEventsInReversedOrder:(id)order option:(unint64_t)option;
- (id)getFeatureVectors:(id)vectors startDate:(id)date endDate:(id)endDate option:(unint64_t)option;
- (id)getMultiArrayFeatureVectors:(id)vectors vectorName:(id)name srcLabelName:(id)labelName destLabelName:(id)destLabelName startDate:(id)date endDate:(id)endDate option:(unint64_t)option;
- (id)init:(id)init url:(id)url useSqlite:(BOOL)sqlite;
@end

@implementation LCFFeatureStore

- (id)init:(id)init url:(id)url useSqlite:(BOOL)sqlite
{
  sqliteCopy = sqlite;
  initCopy = init;
  urlCopy = url;
  v23.receiver = self;
  v23.super_class = LCFFeatureStore;
  v11 = [(LCFFeatureStore *)&v23 init];
  v13 = v11;
  if (v11)
  {
    LCFLoggingUtilsInit(v11, v12);
    objc_storeStrong(&v13->_featureStoreKey, init);
    v13->_useSqlite = sqliteCopy;
    if (sqliteCopy)
    {
      v14 = [[LCFDatabaseConnection alloc] init:urlCopy databaseName:initCopy tableName:@"featureStore"];
      dbFeatureStore = v13->_dbFeatureStore;
      v13->_dbFeatureStore = v14;
    }

    else
    {
      v16 = [LCFBiomeManager alloc];
      dbFeatureStore = BiomeLibrary();
      mLSE = [dbFeatureStore MLSE];
      shareSheet = [mLSE ShareSheet];
      labeledDataStore = [shareSheet LabeledDataStore];
      v20 = [(LCFBiomeManager *)v16 init:labeledDataStore];
      biomeManagerLabeledDataStore = v13->_biomeManagerLabeledDataStore;
      v13->_biomeManagerLabeledDataStore = v20;
    }
  }

  return v13;
}

- (BOOL)updateFeatureSet:(id)set
{
  if (self->_useSqlite)
  {
    dbFeatureStore = self->_dbFeatureStore;

    return [(LCFDatabaseConnection *)dbFeatureStore writeFeatures:set];
  }

  else
  {
    biomeManagerLabeledDataStore = self->_biomeManagerLabeledDataStore;
    v7 = [LCFFeatureConverter fromFeatureSetToLabeledData:set];
    LOBYTE(biomeManagerLabeledDataStore) = [(LCFBiomeManager *)biomeManagerLabeledDataStore writeData:v7];

    return biomeManagerLabeledDataStore;
  }
}

- (BOOL)updateFeatureSet:(id)set featureVestion:(id)vestion featureValues:(id)values
{
  valuesCopy = values;
  vestionCopy = vestion;
  setCopy = set;
  v11 = [LCFFeatureSet alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = [(LCFFeatureSet *)v11 initWithIdentifier:setCopy featureVersion:vestionCopy timestamp:date featureValues:valuesCopy];

  LOBYTE(vestionCopy) = [(LCFFeatureStore *)self updateFeatureSet:v13];
  return vestionCopy;
}

- (id)getFeatureVector:(id)vector atTime:(id)time option:(unint64_t)option
{
  v33 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v9 = vectorCopy;
  if (self->_useSqlite)
  {
    v10 = [(LCFDatabaseConnection *)self->_dbFeatureStore query:0 startDate:time endDate:0 reversed:1];
    v11 = [(LCFFeatureStore *)self getFeatureVectorWithStoreEvents:v9 storeEventsInReversedOrder:v10 option:option];
  }

  else
  {
    v27 = vectorCopy;
    selfCopy = self;
    v12 = [(LCFBiomeManager *)self->_biomeManagerLabeledDataStore readDataWithTimestamp:time endDate:0 reversed:1];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = [v19 objectAtIndexedSubscript:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v22 = [v19 objectAtIndexedSubscript:1];
            v23 = [v19 objectAtIndexedSubscript:0];
            v24 = [LCFFeatureConverter fromLabeledDataBiomeFeatureStore:v22 timestamp:v23];
            [v13 addObject:v24];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    v9 = v27;
    v11 = [(LCFFeatureStore *)selfCopy getFeatureVectorWithStoreEvents:v27 storeEventsInReversedOrder:v13 option:option];
  }

  return v11;
}

- (id)getFeatureVectorWithStoreEvents:(id)events storeEventsInReversedOrder:(id)order option:(unint64_t)option
{
  v88 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  orderCopy = order;
  v60 = eventsCopy;
  v8 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:eventsCopy];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = orderCopy;
  v63 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v63)
  {
    v62 = *v79;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v79 != v62)
      {
        objc_enumerationMutation(obj);
      }

      v64 = v10;
      v11 = *(*(&v78 + 1) + 8 * v10);
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      featureValues = [v11 featureValues];
      allKeys = [featureValues allKeys];

      v14 = [allKeys countByEnumeratingWithState:&v74 objects:v86 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v75;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v75 != v16)
            {
              objc_enumerationMutation(allKeys);
            }

            v18 = *(*(&v74 + 1) + 8 * i);
            featureValues2 = [v11 featureValues];
            v20 = [featureValues2 objectForKeyedSubscript:v18];

            if (v18)
            {
              if ([v8 containsObject:v18])
              {
                v21 = [v9 valueForKey:v18];

                if (!v21)
                {
                  [v9 setObject:v20 forKeyedSubscript:v18];
                }
              }
            }
          }

          v15 = [allKeys countByEnumeratingWithState:&v74 objects:v86 count:16];
        }

        while (v15);
      }

      v22 = objc_alloc(MEMORY[0x277CCA940]);
      allKeys2 = [v9 allKeys];
      v24 = [v22 initWithArray:allKeys2];
      v25 = [v8 isEqual:v24];

      if (v25)
      {
        break;
      }

      v10 = v64 + 1;
      if (v64 + 1 == v63)
      {
        v63 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
        if (!v63)
        {
          goto LABEL_20;
        }

        goto LABEL_3;
      }
    }

    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v34 = v9;
    v35 = [v34 countByEnumeratingWithState:&v66 objects:v82 count:16];
    if (v35)
    {
      v36 = v35;
      v65 = *v67;
LABEL_35:
      v37 = 0;
      while (1)
      {
        if (*v67 != v65)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v66 + 1) + 8 * v37);
        timestamp = [v34 objectForKeyedSubscript:v38];
        intValue = [timestamp intValue];

        if (intValue)
        {
          v41 = MEMORY[0x277CBFEF8];
          intValue2 = [timestamp intValue];
        }

        else
        {
          bOOLValue = [timestamp BOOLValue];

          if (bOOLValue)
          {
            v41 = MEMORY[0x277CBFEF8];
            intValue2 = [timestamp BOOLValue];
          }

          else
          {
            doubleValue = [timestamp doubleValue];

            if (doubleValue)
            {
              v48 = MEMORY[0x277CBFEF8];
              doubleValue2 = [timestamp doubleValue];
              [doubleValue2 doubleValue];
              v45 = [v48 featureValueWithDouble:?];
              goto LABEL_43;
            }

            timeBucketValue = [timestamp timeBucketValue];

            if (!timeBucketValue)
            {
              doubleArray = [timestamp doubleArray];

              if (doubleArray)
              {
                v51 = MEMORY[0x277CBFF48];
                doubleArray2 = [timestamp doubleArray];
                doubleValue2 = [v51 doubleVectorWithValues:doubleArray2];

                v45 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:doubleValue2];
              }

              else
              {
                stringValue = [timestamp stringValue];

                if (!stringValue)
                {
LABEL_56:
                  if (os_log_type_enabled(LCFLogFeatureStore, OS_LOG_TYPE_ERROR))
                  {
                    [LCFFeatureStore getFeatureVectorWithStoreEvents:storeEventsInReversedOrder:option:];
                  }

                  v27 = 0;
                  goto LABEL_59;
                }

                v54 = MEMORY[0x277CBFEF8];
                doubleValue2 = [timestamp stringValue];
                v45 = [v54 featureValueWithString:doubleValue2];
              }

              goto LABEL_43;
            }

            v41 = MEMORY[0x277CBFEF8];
            intValue2 = [timestamp timeBucketValue];
          }
        }

        doubleValue2 = intValue2;
        v45 = [v41 featureValueWithInt64:{objc_msgSend(intValue2, "longValue")}];
LABEL_43:
        v46 = v45;

        if (!v46)
        {
          goto LABEL_56;
        }

        [v26 setObject:v46 forKeyedSubscript:v38];

        if (v36 == ++v37)
        {
          v55 = [v34 countByEnumeratingWithState:&v66 objects:v82 count:16];
          v36 = v55;
          if (v55)
          {
            goto LABEL_35;
          }

          break;
        }
      }
    }

    v56 = [LCFCoreMLFeatureProvider alloc];
    featureStoreKey = self->_featureStoreKey;
    v34 = [obj objectAtIndexedSubscript:0];
    timestamp = [v34 timestamp];
    v27 = [(LCFCoreMLFeatureProvider *)v56 init:featureStoreKey timestamp:timestamp featureValues:v26];
LABEL_59:
  }

  else
  {
LABEL_20:

    if (os_log_type_enabled(LCFLogFeatureStore, OS_LOG_TYPE_ERROR))
    {
      [LCFFeatureStore getFeatureVectorWithStoreEvents:storeEventsInReversedOrder:option:];
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v26 = v60;
    v27 = [v26 countByEnumeratingWithState:&v70 objects:v85 count:16];
    if (v27)
    {
      v28 = *v71;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v71 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v70 + 1) + 8 * j);
          allKeys3 = [v9 allKeys];
          v32 = [allKeys3 containsObject:v30];

          if ((v32 & 1) == 0)
          {
            v33 = LCFLogFeatureStore;
            if (os_log_type_enabled(LCFLogFeatureStore, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v84 = v30;
              _os_log_error_impl(&dword_255F22000, v33, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v70 objects:v85 count:16];
      }

      while (v27);
    }
  }

  return v27;
}

- (id)getFeatureSets:(id)sets startDate:(id)date endDate:(id)endDate option:(unint64_t)option
{
  optionCopy = option;
  v69 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  dateCopy = date;
  endDateCopy = endDate;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = endDateCopy;
  v42 = dateCopy;
  if (self->_useSqlite)
  {
    v13 = [(LCFDatabaseConnection *)self->_dbFeatureStore query:0 startDate:dateCopy endDate:endDateCopy reversed:0];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v62;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v62 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v12 addObject:*(*(&v61 + 1) + 8 * i)];
        }

        v15 = [v13 countByEnumeratingWithState:&v61 objects:v68 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v13 = [(LCFBiomeManager *)self->_biomeManagerLabeledDataStore readDataWithTimestamp:dateCopy endDate:endDateCopy reversed:0];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v18 = [v13 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v18)
    {
      v19 = v18;
      v47 = optionCopy;
      v20 = *v58;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v58 != v20)
          {
            objc_enumerationMutation(v13);
          }

          v22 = *(*(&v57 + 1) + 8 * j);
          v23 = [v22 objectAtIndexedSubscript:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v25 = [v22 objectAtIndexedSubscript:1];
            v26 = [v22 objectAtIndexedSubscript:0];
            v27 = [LCFFeatureConverter fromLabeledDataBiomeFeatureStore:v25 timestamp:v26];
            [v12 addObject:v27];
          }
        }

        v19 = [v13 countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v19);
      optionCopy = v47;
    }
  }

  if ((optionCopy & 4) != 0)
  {
    v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v48 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:setsCopy];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v12;
    v28 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
    if (v28)
    {
      v29 = v28;
      v46 = *v54;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v54 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v53 + 1) + 8 * k);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v32 = v48;
          v33 = [v32 countByEnumeratingWithState:&v49 objects:v65 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v50;
            while (2)
            {
              for (m = 0; m != v34; ++m)
              {
                if (*v50 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v49 + 1) + 8 * m);
                featureValues = [v31 featureValues];
                allKeys = [featureValues allKeys];
                LODWORD(v37) = [allKeys containsObject:v37];

                if (!v37)
                {

                  goto LABEL_36;
                }
              }

              v34 = [v32 countByEnumeratingWithState:&v49 objects:v65 count:16];
              if (v34)
              {
                continue;
              }

              break;
            }
          }

          [v44 addObject:v31];
LABEL_36:
          ;
        }

        v29 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
      }

      while (v29);
    }

    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v44];
  }

  return v12;
}

- (id)featureProviderFromfeatureSet:(id)set featureNames:(id)names
{
  v43 = *MEMORY[0x277D85DE8];
  setCopy = set;
  namesCopy = names;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = namesCopy;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v39 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v38 + 1) + 8 * v12);
      featureValues = [setCopy featureValues];
      v15 = [featureValues objectForKeyedSubscript:v13];

      intValue = [v15 intValue];

      if (intValue)
      {
        v17 = MEMORY[0x277CBFEF8];
        intValue2 = [v15 intValue];
      }

      else
      {
        bOOLValue = [v15 BOOLValue];

        if (bOOLValue)
        {
          v17 = MEMORY[0x277CBFEF8];
          intValue2 = [v15 BOOLValue];
        }

        else
        {
          doubleValue = [v15 doubleValue];

          if (doubleValue)
          {
            v24 = MEMORY[0x277CBFEF8];
            doubleValue2 = [v15 doubleValue];
            [doubleValue2 doubleValue];
            v21 = [v24 featureValueWithDouble:?];
            goto LABEL_11;
          }

          timeBucketValue = [v15 timeBucketValue];

          if (!timeBucketValue)
          {
            doubleArray = [v15 doubleArray];

            if (doubleArray)
            {
              v27 = MEMORY[0x277CBFF48];
              doubleArray2 = [v15 doubleArray];
              doubleValue2 = [v27 doubleVectorWithValues:doubleArray2];

              v21 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:doubleValue2];
            }

            else
            {
              stringValue = [v15 stringValue];

              if (!stringValue)
              {
LABEL_24:
                if (os_log_type_enabled(LCFLogFeatureStore, OS_LOG_TYPE_ERROR))
                {
                  [LCFFeatureStore getFeatureVectorWithStoreEvents:storeEventsInReversedOrder:option:];
                }

                v35 = 0;
                timestamp = v8;
                goto LABEL_27;
              }

              v30 = MEMORY[0x277CBFEF8];
              doubleValue2 = [v15 stringValue];
              v21 = [v30 featureValueWithString:doubleValue2];
            }

            goto LABEL_11;
          }

          v17 = MEMORY[0x277CBFEF8];
          intValue2 = [v15 timeBucketValue];
        }
      }

      doubleValue2 = intValue2;
      v21 = [v17 featureValueWithInt64:{objc_msgSend(intValue2, "longValue")}];
LABEL_11:
      v22 = v21;

      if (!v22)
      {
        goto LABEL_24;
      }

      [v7 setObject:v22 forKeyedSubscript:v13];

      if (v10 == ++v12)
      {
        v31 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
        v10 = v31;
        if (v31)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v32 = [LCFCoreMLFeatureProvider alloc];
  featureStoreKey = self->_featureStoreKey;
  timestamp = [setCopy timestamp];
  v35 = [(LCFCoreMLFeatureProvider *)v32 init:featureStoreKey timestamp:timestamp featureValues:v7];
LABEL_27:

  return v35;
}

- (id)getFeatureVectors:(id)vectors startDate:(id)date endDate:(id)endDate option:(unint64_t)option
{
  v107 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  dateCopy = date;
  endDateCopy = endDate;
  v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v68 = endDateCopy;
  v69 = dateCopy;
  selfCopy = self;
  if (self->_useSqlite)
  {
    v12 = [(LCFDatabaseConnection *)self->_dbFeatureStore query:0 startDate:dateCopy endDate:endDateCopy reversed:0];
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v98 objects:v106 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = vectorsCopy;
      v16 = *v99;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v99 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v98 + 1) + 8 * i);
          v19 = MEMORY[0x277CCABB0];
          timestamp = [v18 timestamp];
          [timestamp timeIntervalSinceReferenceDate];
          v21 = [v19 numberWithDouble:?];
          stringValue = [v21 stringValue];
          [v79 setValue:v18 forKey:stringValue];
        }

        v14 = [v12 countByEnumeratingWithState:&v98 objects:v106 count:16];
      }

      while (v14);
      vectorsCopy = v15;
    }
  }

  else
  {
    v70 = vectorsCopy;
    v12 = [(LCFBiomeManager *)self->_biomeManagerLabeledDataStore readDataWithTimestamp:dateCopy endDate:endDateCopy reversed:0];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v23 = [v12 countByEnumeratingWithState:&v94 objects:v105 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v95;
      v26 = 0x277CF1000uLL;
      do
      {
        v27 = 0;
        obj = v24;
        do
        {
          if (*v95 != v25)
          {
            objc_enumerationMutation(v12);
          }

          v28 = *(*(&v94 + 1) + 8 * v27);
          v29 = [v28 objectAtIndexedSubscript:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v31 = [v28 objectAtIndexedSubscript:1];
            v32 = [v28 objectAtIndexedSubscript:0];
            v33 = [LCFFeatureConverter fromLabeledDataBiomeFeatureStore:v31 timestamp:v32];
            v34 = v12;
            v35 = v26;
            v36 = MEMORY[0x277CCABB0];
            v37 = [v28 objectAtIndexedSubscript:0];
            [v37 timeIntervalSinceReferenceDate];
            v38 = [v36 numberWithDouble:?];
            stringValue2 = [v38 stringValue];
            [v79 setValue:v33 forKey:stringValue2];

            v26 = v35;
            v12 = v34;
            v24 = obj;
          }

          ++v27;
        }

        while (v24 != v27);
        v24 = [v12 countByEnumeratingWithState:&v94 objects:v105 count:16];
      }

      while (v24);
    }

    vectorsCopy = v70;
  }

  v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ((option & 4) != 0)
  {
    v42 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:vectorsCopy];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    obja = [v79 allValues];
    v75 = [obja countByEnumeratingWithState:&v90 objects:v104 count:16];
    if (v75)
    {
      v71 = vectorsCopy;
      v73 = *v91;
      do
      {
        v52 = 0;
        do
        {
          if (*v91 != v73)
          {
            objc_enumerationMutation(obja);
          }

          v53 = *(*(&v90 + 1) + 8 * v52);
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v54 = v42;
          v55 = v42;
          v56 = [v55 countByEnumeratingWithState:&v86 objects:v103 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v87;
            while (2)
            {
              for (j = 0; j != v57; ++j)
              {
                if (*v87 != v58)
                {
                  objc_enumerationMutation(v55);
                }

                v60 = *(*(&v86 + 1) + 8 * j);
                featureValues = [v53 featureValues];
                allKeys = [featureValues allKeys];
                LODWORD(v60) = [allKeys containsObject:v60];

                if (!v60)
                {
                  v63 = v55;
                  goto LABEL_47;
                }
              }

              v57 = [v55 countByEnumeratingWithState:&v86 objects:v103 count:16];
              if (v57)
              {
                continue;
              }

              break;
            }
          }

          v63 = [(LCFFeatureStore *)selfCopy featureProviderFromfeatureSet:v53 featureNames:v71];
          if (v63)
          {
            [v72 addObject:v63];
          }

          else
          {
            v64 = LCFLogFeatureStore;
            if (os_log_type_enabled(LCFLogFeatureStore, OS_LOG_TYPE_ERROR))
            {
              [LCFFeatureStore getFeatureVectors:v85 startDate:v64 endDate:? option:?];
            }
          }

LABEL_47:
          v42 = v54;

          ++v52;
        }

        while (v52 != v75);
        v65 = [obja countByEnumeratingWithState:&v90 objects:v104 count:16];
        v75 = v65;
      }

      while (v65);
      v42 = v55;
      vectorsCopy = v71;
    }
  }

  else
  {
    allKeys2 = [v79 allKeys];
    v41 = [allKeys2 sortedArrayUsingFunction:doubleSort context:0];

    obja = objc_alloc_init(MEMORY[0x277CBEB18]);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v42 = v41;
    v43 = [v42 countByEnumeratingWithState:&v80 objects:v102 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v81;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v81 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [v79 objectForKeyedSubscript:*(*(&v80 + 1) + 8 * k)];
          [obja addObject:v47];

          reverseObjectEnumerator = [obja reverseObjectEnumerator];
          allObjects = [reverseObjectEnumerator allObjects];

          v50 = [(LCFFeatureStore *)selfCopy getFeatureVectorWithStoreEvents:vectorsCopy storeEventsInReversedOrder:allObjects option:option];
          if (v50)
          {
            v51 = [LCFCoreMLFeatureProvider fromMLProvider:v50];
            [v72 addObject:v51];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v80 objects:v102 count:16];
      }

      while (v44);
    }
  }

  v66 = [[LCFCoreMLBatchProvider alloc] init:selfCopy->_featureStoreKey featureProviders:v72];

  return v66;
}

- (id)getMultiArrayFeatureVectors:(id)vectors vectorName:(id)name srcLabelName:(id)labelName destLabelName:(id)destLabelName startDate:(id)date endDate:(id)endDate option:(unint64_t)option
{
  v29 = *MEMORY[0x277D85DE8];
  labelNameCopy = labelName;
  v15 = MEMORY[0x277CBEA60];
  endDateCopy = endDate;
  dateCopy = date;
  destLabelNameCopy = destLabelName;
  labelNameCopy2 = labelName;
  nameCopy = name;
  vectorsCopy = vectors;
  v22 = [v15 arrayWithObjects:&labelNameCopy count:1];
  v23 = [vectorsCopy arrayByAddingObjectsFromArray:{v22, labelNameCopy, v29}];

  v24 = [(LCFFeatureStore *)self getFeatureVectors:v23 startDate:dateCopy endDate:endDateCopy option:option];

  v25 = [LCFCoreMLBatchProvider fromMLProvider:v24];
  v26 = [LCFCoreMLFeatureProviderUtils toMultiArrayTypeBatchProvider:v25 srcFeatureNames:vectorsCopy srcLabelName:labelNameCopy2 destFeatureName:nameCopy destLabelName:destLabelNameCopy];

  return v26;
}

- (BOOL)pruneFrom:(id)from endDate:(id)date option:(unint64_t)option
{
  fromCopy = from;
  dateCopy = date;
  if (self->_useSqlite)
  {
    v9 = [(LCFDatabaseConnection *)self->_dbFeatureStore pruneFrom:fromCopy endDate:dateCopy];
  }

  else
  {
    if (os_log_type_enabled(LCFLogFeatureStore, OS_LOG_TYPE_ERROR))
    {
      [LCFFeatureStore pruneFrom:endDate:option:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)getFeatureVectors:(os_log_t)log startDate:endDate:option:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_255F22000, log, OS_LOG_TYPE_ERROR, "featureProvider could not be construcd", buf, 2u);
}

@end