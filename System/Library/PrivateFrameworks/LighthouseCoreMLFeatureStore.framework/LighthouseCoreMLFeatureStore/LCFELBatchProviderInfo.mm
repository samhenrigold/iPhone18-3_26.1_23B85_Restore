@interface LCFELBatchProviderInfo
+ (id)meanOf:(id)of;
+ (id)standardDeviationOf:(id)of;
- (id)init:(id)init labelFeatureName:(id)name;
@end

@implementation LCFELBatchProviderInfo

+ (id)meanOf:(id)of
{
  v19 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  if ([ofCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = ofCopy;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v14 + 1) + 8 * i) doubleValue];
          v8 = v8 + v10;
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    notANumber = [MEMORY[0x277CCABB0] numberWithDouble:{v8 / objc_msgSend(v4, "count")}];
  }

  else
  {
    notANumber = [MEMORY[0x277CCA980] notANumber];
  }

  v12 = notANumber;

  return v12;
}

+ (id)standardDeviationOf:(id)of
{
  v22 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  if ([ofCopy count])
  {
    v4 = [LCFELBatchProviderInfo meanOf:ofCopy];
    [v4 doubleValue];
    v6 = v5;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = ofCopy;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v17 + 1) + 8 * i) doubleValue];
          v11 = v11 + (v13 - v6) * (v13 - v6);
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    notANumber = [MEMORY[0x277CCABB0] numberWithDouble:{sqrt(v11 / objc_msgSend(v7, "count"))}];
  }

  else
  {
    notANumber = [MEMORY[0x277CCA980] notANumber];
  }

  v15 = notANumber;

  return v15;
}

- (id)init:(id)init labelFeatureName:(id)name
{
  v147 = *MEMORY[0x277D85DE8];
  initCopy = init;
  nameCopy = name;
  v141.receiver = self;
  v141.super_class = LCFELBatchProviderInfo;
  v7 = [(LCFELBatchProviderInfo *)&v141 init];
  if (!v7)
  {
    goto LABEL_49;
  }

  v8 = +[LCFFeatureStoreContextId getContextId];
  contextId = v7->_contextId;
  v7->_contextId = v8;

  uUID = [MEMORY[0x277CCAD78] UUID];
  eventId = v7->_eventId;
  v7->_eventId = uUID;

  featureStoreKey = [initCopy featureStoreKey];
  featureStoreKey = v7->_featureStoreKey;
  v7->_featureStoreKey = featureStoreKey;

  v14 = MEMORY[0x277CCABB0];
  timeLast = [initCopy timeLast];
  timeFirst = [initCopy timeFirst];
  [timeLast timeIntervalSinceDate:timeFirst];
  v17 = [v14 numberWithDouble:?];
  timeRange = v7->_timeRange;
  v7->_timeRange = v17;

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(initCopy, "count")}];
  featureCount = v7->_featureCount;
  v104 = v7;
  v7->_featureCount = v19;

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v117 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v116 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v103 = initCopy;
  obj = [initCopy featureProviders];
  v120 = v21;
  v108 = [obj countByEnumeratingWithState:&v137 objects:v146 count:16];
  if (!v108)
  {
    goto LABEL_27;
  }

  v106 = *v138;
  do
  {
    v22 = 0;
    do
    {
      if (*v138 != v106)
      {
        objc_enumerationMutation(obj);
      }

      v113 = v22;
      v23 = [LCFCoreMLFeatureProvider fromMLProvider:*(*(&v137 + 1) + 8 * v22)];
      featureValues = [v23 featureValues];
      v25 = [featureValues objectForKeyedSubscript:nameCopy];

      v110 = v25;
      int64Value = [v25 int64Value];
      v27 = v117;
      if (int64Value <= 0)
      {
        v27 = v116;
      }

      v28 = v27;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      featureValues2 = [v23 featureValues];
      allKeys = [featureValues2 allKeys];

      v118 = allKeys;
      v31 = [allKeys countByEnumeratingWithState:&v133 objects:v145 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v134;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v134 != v33)
            {
              objc_enumerationMutation(v118);
            }

            v35 = *(*(&v133 + 1) + 8 * i);
            allKeys2 = [v28 allKeys];
            v37 = [allKeys2 containsObject:v35];

            if ((v37 & 1) == 0)
            {
              v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v28 setObject:v38 forKeyedSubscript:v35];
            }

            allKeys3 = [v21 allKeys];
            v40 = [allKeys3 containsObject:v35];

            if ((v40 & 1) == 0)
            {
              v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v21 setObject:v41 forKeyedSubscript:v35];
            }

            featureValues3 = [v23 featureValues];
            v43 = [featureValues3 objectForKeyedSubscript:v35];

            type = [v43 type];
            if (type == 2)
            {
              v49 = [v28 objectForKeyedSubscript:v35];
              v50 = MEMORY[0x277CCABB0];
              [v43 doubleValue];
              v51 = [v50 numberWithDouble:?];
              [v49 addObject:v51];

              v21 = v120;
              v47 = [v120 objectForKeyedSubscript:v35];
              v52 = MEMORY[0x277CCABB0];
              [v43 doubleValue];
              v48 = [v52 numberWithDouble:?];
            }

            else
            {
              if (type != 1)
              {
                goto LABEL_23;
              }

              v45 = [v28 objectForKeyedSubscript:v35];
              v46 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v43, "int64Value")}];
              [v45 addObject:v46];

              v21 = v120;
              v47 = [v120 objectForKeyedSubscript:v35];
              v48 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v43, "int64Value")}];
            }

            v53 = v48;
            [v47 addObject:v48];

LABEL_23:
          }

          v32 = [v118 countByEnumeratingWithState:&v133 objects:v145 count:16];
        }

        while (v32);
      }

      v22 = v113 + 1;
    }

    while (v113 + 1 != v108);
    v108 = [obj countByEnumeratingWithState:&v137 objects:v146 count:16];
  }

  while (v108);
LABEL_27:

  v119 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  allKeys4 = [v117 allKeys];
  v54 = [allKeys4 countByEnumeratingWithState:&v129 objects:v144 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v130;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v130 != v56)
        {
          objc_enumerationMutation(allKeys4);
        }

        v58 = *(*(&v129 + 1) + 8 * j);
        v59 = [v117 objectForKeyedSubscript:v58];
        v60 = [LCFELBatchProviderInfo meanOf:v59];

        v61 = [v117 objectForKeyedSubscript:v58];
        v62 = [LCFELBatchProviderInfo standardDeviationOf:v61];

        v63 = [LCFELFeatureValueStatistic alloc];
        v64 = MEMORY[0x277CCABB0];
        v65 = [v117 objectForKeyedSubscript:v58];
        v66 = [v64 numberWithUnsignedInteger:{objc_msgSend(v65, "count")}];
        v67 = [(LCFELFeatureValueStatistic *)v63 init:v58 count:v66 mean:v60 stddev:v62];

        [v119 addObject:v67];
      }

      v55 = [allKeys4 countByEnumeratingWithState:&v129 objects:v144 count:16];
    }

    while (v55);
  }

  v68 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v119];
  positiveFeatureStatistics = v104->_positiveFeatureStatistics;
  v104->_positiveFeatureStatistics = v68;

  v115 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  allKeys5 = [v116 allKeys];
  v70 = [allKeys5 countByEnumeratingWithState:&v125 objects:v143 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v126;
    do
    {
      for (k = 0; k != v71; ++k)
      {
        if (*v126 != v72)
        {
          objc_enumerationMutation(allKeys5);
        }

        v74 = *(*(&v125 + 1) + 8 * k);
        v75 = [v116 objectForKeyedSubscript:v74];
        v76 = [LCFELBatchProviderInfo meanOf:v75];

        v77 = [v116 objectForKeyedSubscript:v74];
        v78 = [LCFELBatchProviderInfo standardDeviationOf:v77];

        v79 = [LCFELFeatureValueStatistic alloc];
        v80 = MEMORY[0x277CCABB0];
        v81 = [v116 objectForKeyedSubscript:v74];
        v82 = [v80 numberWithUnsignedInteger:{objc_msgSend(v81, "count")}];
        v83 = [(LCFELFeatureValueStatistic *)v79 init:v74 count:v82 mean:v76 stddev:v78];

        [v115 addObject:v83];
      }

      v71 = [allKeys5 countByEnumeratingWithState:&v125 objects:v143 count:16];
    }

    while (v71);
  }

  v84 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v115];
  negativeFeatureStatistics = v104->_negativeFeatureStatistics;
  v104->_negativeFeatureStatistics = v84;

  v112 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  allKeys6 = [v120 allKeys];
  v86 = [allKeys6 countByEnumeratingWithState:&v121 objects:v142 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v122;
    do
    {
      for (m = 0; m != v87; ++m)
      {
        if (*v122 != v88)
        {
          objc_enumerationMutation(allKeys6);
        }

        v90 = *(*(&v121 + 1) + 8 * m);
        v91 = [v120 objectForKeyedSubscript:v90];
        v92 = [LCFELBatchProviderInfo meanOf:v91];

        v93 = [v120 objectForKeyedSubscript:v90];
        v94 = [LCFELBatchProviderInfo standardDeviationOf:v93];

        v95 = [LCFELFeatureValueStatistic alloc];
        v96 = MEMORY[0x277CCABB0];
        v97 = [v120 objectForKeyedSubscript:v90];
        v98 = [v96 numberWithUnsignedInteger:{objc_msgSend(v97, "count")}];
        v99 = [(LCFELFeatureValueStatistic *)v95 init:v90 count:v98 mean:v92 stddev:v94];

        [v112 setObject:v99 forKeyedSubscript:v90];
      }

      v87 = [allKeys6 countByEnumeratingWithState:&v121 objects:v142 count:16];
    }

    while (v87);
  }

  v100 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v112];
  v7 = v104;
  totalFeatureStatistics = v104->_totalFeatureStatistics;
  v104->_totalFeatureStatistics = v100;

  initCopy = v103;
LABEL_49:

  return v7;
}

@end