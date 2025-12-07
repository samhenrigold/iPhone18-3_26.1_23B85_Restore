@interface SKDLocationProcessor
- (BOOL)willProcessRecord:(id)record bundleID:(id)d;
- (SKDLocationProcessor)init;
- (SKDLocationProcessor)initWithDataDetector:(id)detector listener:(id)listener;
- (id)processRecord:(id)record bundleID:(id)d;
- (id)processedAttributes;
- (id)requiredAttributes;
- (unint64_t)maxEntityCount;
@end

@implementation SKDLocationProcessor

- (SKDLocationProcessor)init
{
  v3 = +[SKGDataDetector sharedDetector];
  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
  v5 = [(SKDLocationProcessor *)self initWithDataDetector:v3 listener:mEMORY[0x277D657A8]];

  return v5;
}

- (SKDLocationProcessor)initWithDataDetector:(id)detector listener:(id)listener
{
  detectorCopy = detector;
  listenerCopy = listener;
  v12.receiver = self;
  v12.super_class = SKDLocationProcessor;
  v9 = [(SKDRecordProcessor *)&v12 initWithName:@"location"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_detector, detector);
    objc_storeStrong(&v10->_listener, listener);
  }

  return v10;
}

- (unint64_t)maxEntityCount
{
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  maxEntityCount = [mEMORY[0x277D657A0] maxEntityCount];

  return maxEntityCount;
}

- (id)requiredAttributes
{
  if (requiredAttributes_onceLocReqToken != -1)
  {
    [SKDLocationProcessor requiredAttributes];
  }

  v3 = requiredAttributes_sLocReqAttributes;

  return v3;
}

void __42__SKDLocationProcessor_requiredAttributes__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC2DD0];
  v3[0] = *MEMORY[0x277CC2A90];
  v3[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v2 = requiredAttributes_sLocReqAttributes;
  requiredAttributes_sLocReqAttributes = v1;
}

- (id)processedAttributes
{
  if (processedAttributes_onceLocToken != -1)
  {
    [SKDLocationProcessor processedAttributes];
  }

  v3 = processedAttributes_sLocAttributes;

  return v3;
}

void __43__SKDLocationProcessor_processedAttributes__block_invoke()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = *MEMORY[0x277CC2A90];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];
  v1 = processedAttributes_sLocAttributes;
  processedAttributes_sLocAttributes = v0;
}

- (BOOL)willProcessRecord:(id)record bundleID:(id)d
{
  v5.receiver = self;
  v5.super_class = SKDLocationProcessor;
  return [(SKDRecordProcessor *)&v5 willProcessRecord:record bundleID:d];
}

- (id)processRecord:(id)record bundleID:(id)d
{
  v142 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  v8 = [SKDRecordUpdate alloc];
  v9 = [objc_opt_class() description];
  v10 = [(SKDRecordUpdate *)v8 initWithStatus:0 identifier:v9 bundleID:dCopy];

  name = [(SKDRecordProcessor *)self name];
  [(SKDItemUpdate *)v10 setPipeline:name];

  v12 = [recordCopy objectForKeyedSubscript:@"kMDItemTextContentLanguage"];
  if (v12)
  {
    currentLocale = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v12];
    v14 = v12;
  }

  else
  {
    currentLocale = 0;
    v14 = @"und";
  }

  [(SKDItemUpdate *)v10 setTextContentLanguage:v14];
  v109 = objc_alloc_init(SKGEntityRanker);
  v103 = *MEMORY[0x277CC2A90];
  v15 = [recordCopy objectForKeyedSubscript:?];
  if ([v15 count])
  {
    v16 = currentLocale == 0;
  }

  else
  {
    v16 = 1;
  }

  selfCopy = self;
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    logger = [(SKDRecordProcessor *)self logger];
    v112 = [logger trackingEventBeginWithName:@"resolve-locations" event:v10];

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    obj = v15;
    v19 = [obj countByEnumeratingWithState:&v135 objects:v141 count:16];
    if (v19)
    {
      v20 = v19;
      v105 = v15;
      v107 = v10;
      v101 = dCopy;
      v116 = *v136;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v136 != v116)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v135 + 1) + 8 * i);
          logger2 = [(SKDRecordProcessor *)self logger];
          v24 = [logger2 trackingEventBeginWithName:@"resolve-location" event:v107];

          detector = [(SKDLocationProcessor *)self detector];
          label = [v22 label];
          v132[0] = MEMORY[0x277D85DD0];
          v132[1] = 3221225472;
          v132[2] = __47__SKDLocationProcessor_processRecord_bundleID___block_invoke;
          v132[3] = &unk_27893E338;
          v133 = v109;
          selfCopy2 = self;
          v131[0] = MEMORY[0x277D85DD0];
          v131[1] = 3221225472;
          v131[2] = __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_2;
          v131[3] = &unk_27893E3D8;
          v131[4] = self;
          v27 = currentLocale;
          v28 = [detector enumerateDetectedDataInString:label locale:currentLocale referenceDate:0 referenceTimezone:0 entityBlock:v132 rangeBlock:v131];

          logger3 = [(SKDRecordProcessor *)self logger];
          [logger3 trackingEventEnd:v24];

          if (!v28)
          {
            v17 = 0;
            dCopy = v101;
            v10 = v107;
            currentLocale = v27;
            goto LABEL_20;
          }

          currentLocale = v27;
        }

        v20 = [obj countByEnumeratingWithState:&v135 objects:v141 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      v17 = 1;
      dCopy = v101;
      v10 = v107;
LABEL_20:
      v15 = v105;
    }

    else
    {
      v17 = 1;
    }

    logger4 = [(SKDRecordProcessor *)self logger];
    [logger4 trackingEventEnd:v112];
  }

  if ([(SKDRecordProcessor *)self suspended]|| !v17)
  {
    if ([(SKDRecordProcessor *)self suspended])
    {
      v44 = 3;
    }

    else
    {
      v44 = 1;
    }

    [(SKDEvent *)v10 updateStatus:v44];
    logger5 = [(SKDRecordProcessor *)self logger];
    [logger5 logEvent:v10 level:6];

    v46 = v10;
  }

  else
  {
    v31 = [recordCopy objectForKeyedSubscript:*MEMORY[0x277CC2DD0]];
    v32 = [recordCopy objectForKeyedSubscript:*MEMORY[0x277CC2D18]];
    v33 = [recordCopy objectForKeyedSubscript:*MEMORY[0x277CC2D50]];
    v104 = v31;
    v106 = v15;
    v98 = v33;
    v99 = v32;
    if (v31)
    {
      if (!currentLocale)
      {
        listener = [(SKDLocationProcessor *)selfCopy listener];
        currentLocale = [listener currentLocale];
      }

      if (v32 && v33)
      {
        [v32 doubleValue];
        v36 = v35;
        [v33 doubleValue];
        v38 = v37;
        logger6 = [(SKDRecordProcessor *)selfCopy logger];
        v40 = [logger6 trackingEventBeginWithName:@"resolve-location" event:v10];

        detector2 = [(SKDLocationProcessor *)selfCopy detector];
        v129[0] = MEMORY[0x277D85DD0];
        v129[1] = 3221225472;
        v129[2] = __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_3;
        v129[3] = &unk_27893E338;
        v42 = v130;
        v130[0] = v109;
        v130[1] = selfCopy;
        v43 = [detector2 enumerateLocationsInString:v104 locale:currentLocale latitude:v129 longitude:v36 entityBlock:v38];
      }

      else
      {
        logger7 = [(SKDRecordProcessor *)selfCopy logger];
        v40 = [logger7 trackingEventBeginWithName:@"resolve-location" event:v10];

        detector2 = [(SKDLocationProcessor *)selfCopy detector];
        v127[0] = MEMORY[0x277D85DD0];
        v127[1] = 3221225472;
        v127[2] = __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_4;
        v127[3] = &unk_27893E338;
        v42 = v128;
        v128[0] = v109;
        v128[1] = selfCopy;
        v126[0] = MEMORY[0x277D85DD0];
        v126[1] = 3221225472;
        v126[2] = __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_5;
        v126[3] = &unk_27893E3D8;
        v126[4] = selfCopy;
        v43 = [detector2 enumerateDetectedLocationsInString:v104 locale:currentLocale entityBlock:v127 rangeBlock:v126];
      }

      v17 = v43;

      logger8 = [(SKDRecordProcessor *)selfCopy logger];
      [logger8 trackingEventEnd:v40];

      v33 = v98;
      v32 = v99;
    }

    if ([(SKDRecordProcessor *)selfCopy suspended]|| !v17)
    {
      if ([(SKDRecordProcessor *)selfCopy suspended])
      {
        v58 = 3;
      }

      else
      {
        v58 = 1;
      }

      [(SKDEvent *)v10 updateStatus:v58];
      logger9 = [(SKDRecordProcessor *)selfCopy logger];
      [logger9 logEvent:v10 level:6];

      v60 = v10;
    }

    else
    {
      v96 = [recordCopy objectForKeyedSubscript:@"_SKGTestLocation"];
      v102 = dCopy;
      if (v96)
      {
        v49 = selfCopy;
        if (!currentLocale)
        {
          listener2 = [(SKDLocationProcessor *)selfCopy listener];
          currentLocale = [listener2 currentLocale];
        }

        v51 = [v96 componentsSeparatedByString:{@", "}];
        if ([v51 count] == 3)
        {
          v52 = [(SKGEntity *)[SKGAddress alloc] initWithScore:1.0];
          [(SKGAddress *)v52 setAddress:v96];
          v53 = [v51 objectAtIndexedSubscript:0];
          [(SKGAddress *)v52 setCity:v53];

          v54 = [v51 objectAtIndexedSubscript:1];
          [(SKGAddress *)v52 setArea:v54];

          v55 = [v51 objectAtIndexedSubscript:2];
          [(SKGAddress *)v52 setCountry:v55];

          detector3 = [(SKDLocationProcessor *)selfCopy detector];
          v57 = [detector3 locationFromAddress:v52 locale:currentLocale];

          [(SKGEntityRanker *)v109 addEntity:v57];
        }

        v93 = currentLocale;
      }

      else
      {
        v93 = currentLocale;
        v49 = selfCopy;
      }

      v100 = v12;
      v108 = v10;
      v117 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v61 = objc_alloc_init(MEMORY[0x277CBEB58]);
      locations = [(SKGEntityRanker *)v109 locations];
      if ([locations count])
      {
        v97 = recordCopy;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v113 = locations;
        v62 = [v113 countByEnumeratingWithState:&v122 objects:v140 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v123;
          do
          {
            v65 = 0;
            v111 = v63;
            do
            {
              if (*v123 != v64)
              {
                objc_enumerationMutation(v113);
              }

              v66 = *(*(&v122 + 1) + 8 * v65);
              address = [v66 address];

              if (address)
              {
                address2 = [v66 address];
                v68Address = [address2 address];

                if (([v61 containsObject:v68Address] & 1) == 0)
                {
                  obja = objc_alloc(MEMORY[0x277CC3398]);
                  expansions = [v66 expansions];
                  v71 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v66, "type")}];
                  v72 = MEMORY[0x277CCABB0];
                  [v66 lat];
                  v73 = [v72 numberWithDouble:?];
                  v74 = v61;
                  v75 = v64;
                  v76 = MEMORY[0x277CCABB0];
                  [v66 lng];
                  v77 = [v76 numberWithDouble:?];
                  [v66 score];
                  v78 = [obja initWithAddress:v68Address synonyms:expansions type:v71 lat:v73 lng:v77 confidence:?];

                  v64 = v75;
                  v61 = v74;

                  v63 = v111;
                  [v117 addObject:v78];
                  [v74 addObject:v68Address];
                }
              }

              ++v65;
            }

            while (v63 != v65);
            v63 = [v113 countByEnumeratingWithState:&v122 objects:v140 count:16];
          }

          while (v63);
        }

        recordCopy = v97;
        v49 = selfCopy;
      }

      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v79 = v106;
      v80 = [v79 countByEnumeratingWithState:&v118 objects:v139 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = *v119;
        do
        {
          for (j = 0; j != v81; ++j)
          {
            if (*v119 != v82)
            {
              objc_enumerationMutation(v79);
            }

            v84 = *(*(&v118 + 1) + 8 * j);
            label2 = [v84 label];
            v86 = [v61 containsObject:label2];

            if ((v86 & 1) == 0)
            {
              [v117 addObject:v84];
            }
          }

          v81 = [v79 countByEnumeratingWithState:&v118 objects:v139 count:16];
        }

        while (v81);
      }

      maxEntityCount = [(SKDLocationProcessor *)v49 maxEntityCount];
      v12 = v100;
      dCopy = v102;
      v10 = v108;
      v33 = v98;
      v32 = v99;
      if ([v117 count])
      {
        [v117 sortUsingComparator:&__block_literal_global_40];
        if ([v117 count] < maxEntityCount)
        {
          maxEntityCount = [v117 count];
        }

        v88 = [v117 subarrayWithRange:{0, maxEntityCount, v93}];
        [(SKDItemUpdate *)v108 addAttribute:v103 value:v88];
      }

      marker = [(SKDRecordProcessor *)v49 marker];
      [(SKDItemUpdate *)v108 addAttribute:marker value:MEMORY[0x277CBEC38]];

      [(SKDEvent *)v108 updateStatus:2];
      logger10 = [(SKDRecordProcessor *)v49 logger];
      [logger10 logEvent:v108 level:6];

      v91 = v108;
      currentLocale = v94;
      v15 = v106;
    }
  }

  return v10;
}

void *__47__SKDLocationProcessor_processRecord_bundleID___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) addEntity:a2];
  result = [*(a1 + 40) suspended];
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

void *__47__SKDLocationProcessor_processRecord_bundleID___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) suspended];
  if (result)
  {
    *a5 = 1;
  }

  return result;
}

void *__47__SKDLocationProcessor_processRecord_bundleID___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) addEntity:a2];
  result = [*(a1 + 40) suspended];
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

void __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addEntity:v5];
  }

  if ([*(a1 + 40) suspended])
  {
    *a3 = 1;
  }
}

void *__47__SKDLocationProcessor_processRecord_bundleID___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) suspended];
  if (result)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 confidence];
  v6 = v5;
  [v4 confidence];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

@end