@interface SKGJobReporter
- (SKGJobReporter)initWithVerbosity:(int)verbosity;
- (id)extractionReportForProcessor:(id)processor bundles:(id)bundles attributes:(id)attributes;
- (id)loggingReportForProcessor:(id)processor bundles:(id)bundles attributes:(id)attributes;
- (id)pipelineReportForProcessor:(id)processor bundles:(id)bundles attributes:(id)attributes;
- (id)reports;
- (void)_addValue:(id)value attribute:(id)attribute uniqueID:(id)d bundleID:(id)iD;
- (void)addAttribute:(id)attribute bundleID:(id)d;
- (void)addFromRecord:(id)record bundleID:(id)d;
- (void)clear;
- (void)enableCountingAttribute:(id)attribute message:(id)message processor:(id)processor;
- (void)enableLoggingAttribute:(id)attribute message:(id)message processor:(id)processor;
- (void)enableReportingAttribute:(id)attribute message:(id)message processor:(id)processor;
- (void)logAttribute:(id)attribute value:(id)value uniqueID:(id)d bundleID:(id)iD;
- (void)logFromRecord:(id)record uniqueID:(id)d bundleID:(id)iD;
@end

@implementation SKGJobReporter

- (void)enableCountingAttribute:(id)attribute message:(id)message processor:(id)processor
{
  attributeCopy = attribute;
  messageCopy = message;
  processorCopy = processor;
  countingPairs = self->_countingPairs;
  if (!countingPairs)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = self->_countingPairs;
    self->_countingPairs = v11;

    countingPairs = self->_countingPairs;
  }

  v13 = [(NSMutableDictionary *)countingPairs objectForKeyedSubscript:processorCopy];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_countingPairs setObject:v14 forKeyedSubscript:processorCopy];
  }

  v15 = [(NSMutableDictionary *)self->_countingPairs objectForKeyedSubscript:processorCopy];
  [v15 setObject:messageCopy forKey:attributeCopy];

  [(NSMutableSet *)self->_countingAttributes addObject:attributeCopy];
  [(NSMutableSet *)self->_fetchAttributes addObject:attributeCopy];
}

- (void)enableReportingAttribute:(id)attribute message:(id)message processor:(id)processor
{
  attributeCopy = attribute;
  messageCopy = message;
  processorCopy = processor;
  reportingPairs = self->_reportingPairs;
  if (!reportingPairs)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = self->_reportingPairs;
    self->_reportingPairs = v11;

    reportingPairs = self->_reportingPairs;
  }

  v13 = [(NSMutableDictionary *)reportingPairs objectForKeyedSubscript:processorCopy];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_reportingPairs setObject:v14 forKeyedSubscript:processorCopy];
  }

  v15 = [(NSMutableDictionary *)self->_reportingPairs objectForKeyedSubscript:processorCopy];
  [v15 setObject:messageCopy forKey:attributeCopy];

  [(NSMutableSet *)self->_reportingAttributes addObject:attributeCopy];
  [(NSMutableSet *)self->_fetchAttributes addObject:attributeCopy];
}

- (void)enableLoggingAttribute:(id)attribute message:(id)message processor:(id)processor
{
  attributeCopy = attribute;
  messageCopy = message;
  processorCopy = processor;
  loggingPairs = self->_loggingPairs;
  if (!loggingPairs)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = self->_loggingPairs;
    self->_loggingPairs = v11;

    loggingPairs = self->_loggingPairs;
  }

  v13 = [(NSMutableDictionary *)loggingPairs objectForKeyedSubscript:processorCopy];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_loggingPairs setObject:v14 forKeyedSubscript:processorCopy];
  }

  v15 = [(NSMutableDictionary *)self->_loggingPairs objectForKeyedSubscript:processorCopy];
  [v15 setObject:messageCopy forKey:attributeCopy];

  [(NSMutableSet *)self->_loggingAttributes addObject:attributeCopy];
  [(NSMutableSet *)self->_fetchAttributes addObject:attributeCopy];
}

- (SKGJobReporter)initWithVerbosity:(int)verbosity
{
  v30.receiver = self;
  v30.super_class = SKGJobReporter;
  v4 = [(SKGJobReporter *)&v30 init];
  v5 = v4;
  if (v4)
  {
    v4->_verbosity = verbosity;
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    counter = v5->_counter;
    v5->_counter = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    countingPairs = v5->_countingPairs;
    v5->_countingPairs = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    countingAttributes = v5->_countingAttributes;
    v5->_countingAttributes = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    reportingPairs = v5->_reportingPairs;
    v5->_reportingPairs = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    reportingAttributes = v5->_reportingAttributes;
    v5->_reportingAttributes = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    loggingPairs = v5->_loggingPairs;
    v5->_loggingPairs = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    loggingAttributes = v5->_loggingAttributes;
    v5->_loggingAttributes = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    fetchAttributes = v5->_fetchAttributes;
    v5->_fetchAttributes = v20;

    v22 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v24 = [uUID description];
    v25 = [v22 stringWithFormat:@"/tmp/skg/reports/%@", v24];
    outputRoot = v5->_outputRoot;
    v5->_outputRoot = v25;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    LOBYTE(uUID) = [defaultManager fileExistsAtPath:v5->_outputRoot];

    if ((uUID & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager2 createDirectoryAtPath:v5->_outputRoot withIntermediateDirectories:1 attributes:MEMORY[0x277CBEC10] error:0];
    }
  }

  return v5;
}

- (void)addAttribute:(id)attribute bundleID:(id)d
{
  attributeCopy = attribute;
  dCopy = d;
  countingAttributes = [(SKGJobReporter *)self countingAttributes];
  if ([countingAttributes containsObject:attributeCopy])
  {
  }

  else
  {
    reportingAttributes = [(SKGJobReporter *)self reportingAttributes];
    v9 = [reportingAttributes containsObject:attributeCopy];

    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v10 = [(NSMutableDictionary *)self->_counter objectForKeyedSubscript:dCopy];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCA940]);
    [(NSMutableDictionary *)self->_counter setObject:v11 forKeyedSubscript:dCopy];
  }

  v12 = [(NSMutableDictionary *)self->_counter objectForKeyedSubscript:dCopy];
  [v12 addObject:attributeCopy];

LABEL_7:
}

- (void)addFromRecord:(id)record bundleID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  fetchAttributes = [(SKGJobReporter *)self fetchAttributes];
  v9 = [fetchAttributes countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    v12 = *MEMORY[0x277CBEEE8];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(fetchAttributes);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [recordCopy objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          v17 = v15 == v12;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          [(SKGJobReporter *)self addAttribute:v14 bundleID:dCopy];
        }
      }

      v10 = [fetchAttributes countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)_addValue:(id)value attribute:(id)attribute uniqueID:(id)d bundleID:(id)iD
{
  valueCopy = value;
  attributeCopy = attribute;
  dCopy = d;
  iDCopy = iD;
  context = objc_autoreleasePoolPush();
  iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", self->_outputRoot, iDCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [defaultManager fileExistsAtPath:iDCopy];

  if ((v16 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager2 createDirectoryAtPath:iDCopy withIntermediateDirectories:1 attributes:0 error:0];
  }

  attributeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.txt", iDCopy, attributeCopy];
  v29 = 0;
  v19 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:attributeCopy encoding:4 error:&v29];
  v20 = v29;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_2846CE8D8;
  }

  [(__CFString *)v21 stringByAppendingFormat:@"%@;=;%@\n", dCopy, valueCopy];
  v22 = v26 = valueCopy;
  v28 = v20;
  [v22 writeToFile:attributeCopy atomically:1 encoding:4 error:&v28];
  v23 = v28;

  v24 = [(NSMutableDictionary *)self->_counter objectForKeyedSubscript:iDCopy];

  if (!v24)
  {
    v25 = objc_alloc_init(MEMORY[0x277CCA940]);
    [(NSMutableDictionary *)self->_counter setObject:v25 forKeyedSubscript:iDCopy];
  }

  objc_autoreleasePoolPop(context);
}

- (void)logAttribute:(id)attribute value:(id)value uniqueID:(id)d bundleID:(id)iD
{
  v26 = *MEMORY[0x277D85DE8];
  attributeCopy = attribute;
  valueCopy = value;
  dCopy = d;
  iDCopy = iD;
  loggingAttributes = [(SKGJobReporter *)self loggingAttributes];
  v15 = [loggingAttributes containsObject:attributeCopy];

  if (v15 && valueCopy && *MEMORY[0x277CBEEE8] != valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v16 = valueCopy;
      v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v22;
        do
        {
          v20 = 0;
          do
          {
            if (*v22 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [(SKGJobReporter *)self _addValue:*(*(&v21 + 1) + 8 * v20++) attribute:attributeCopy uniqueID:dCopy bundleID:iDCopy, v21];
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v18);
      }
    }

    else
    {
      [(SKGJobReporter *)self _addValue:valueCopy attribute:attributeCopy uniqueID:dCopy bundleID:iDCopy];
    }
  }
}

- (void)logFromRecord:(id)record uniqueID:(id)d bundleID:(id)iD
{
  v23 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  iDCopy = iD;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  loggingAttributes = [(SKGJobReporter *)self loggingAttributes];
  v12 = [loggingAttributes countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(loggingAttributes);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        v17 = [recordCopy objectForKeyedSubscript:v16];
        if (v17)
        {
          [(SKGJobReporter *)self logAttribute:v16 value:v17 uniqueID:dCopy bundleID:iDCopy];
        }
      }

      v13 = [loggingAttributes countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (id)pipelineReportForProcessor:(id)processor bundles:(id)bundles attributes:(id)attributes
{
  v100 = *MEMORY[0x277D85DE8];
  processorCopy = processor;
  bundlesCopy = bundles;
  attributesCopy = attributes;
  v10 = [(NSMutableDictionary *)self->_countingPairs objectForKeyedSubscript:processorCopy];
  v11 = [v10 count];

  if (v11)
  {
    v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
    context = objc_autoreleasePoolPush();
    v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v68 = bundlesCopy;
    obj = bundlesCopy;
    v78 = processorCopy;
    selfCopy = self;
    v73 = [obj countByEnumeratingWithState:&v93 objects:v99 count:16];
    if (v73)
    {
      v84 = 0;
      v74 = 0;
      v12 = 0;
      v71 = *v94;
      do
      {
        v13 = 0;
        v14 = v12;
        do
        {
          if (*v94 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v93 + 1) + 8 * v13);
          v16 = [v15 length];
          v17 = @"\t\t\t";
          if (v16 >= 0xF)
          {
            v18 = [v15 length];
            v17 = @"\t";
            if (v18 < 0x18)
            {
              v17 = @"\t\t";
            }
          }

          v77 = v13;
          v76 = v17;
          v12 = objc_alloc_init(MEMORY[0x277CBEB18]);

          v75 = v15;
          v83 = [(NSMutableDictionary *)self->_counter objectForKeyedSubscript:v15];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v82 = attributesCopy;
          v19 = [v82 countByEnumeratingWithState:&v89 objects:v98 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = 0;
            v22 = *v90;
            v80 = *v90;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v90 != v22)
                {
                  objc_enumerationMutation(v82);
                }

                v24 = *(*(&v89 + 1) + 8 * i);
                v25 = [(NSMutableDictionary *)self->_countingPairs objectForKeyedSubscript:processorCopy];
                v26 = [v25 objectForKeyedSubscript:v24];

                if (v26)
                {
                  v27 = [v83 countForObject:v24];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = [v79 objectForKeyedSubscript:v24];
                    v30 = v29;
                    v31 = &unk_2846E7E18;
                    if (v29)
                    {
                      v31 = v29;
                    }

                    v32 = v31;

                    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v28 + objc_msgSend(v32, "unsignedIntValue")}];
                    self = selfCopy;
                    [v79 setObject:v33 forKeyedSubscript:v24];

                    v34 = MEMORY[0x277CCACA8];
                    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
                    v36 = [v34 stringWithFormat:@" %@: %@", v26, v35];

                    v22 = v80;
                    [v12 addObject:v36];
                    v21 += v28;
                    v84 = v36;
                    processorCopy = v78;
                  }
                }
              }

              v20 = [v82 countByEnumeratingWithState:&v89 objects:v98 count:16];
            }

            while (v20);
          }

          else
          {
            v21 = 0;
          }

          if ([v12 count])
          {
            [v12 sortUsingSelector:sel_compare_];
            v37 = MEMORY[0x277CCACA8];
            v38 = [v12 componentsJoinedByString:{@", "}];
            v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
            v40 = v76;
            v41 = [v37 stringWithFormat:@"%@%@ %@, total: %@", v75, v76, v38, v39];

            [v70 addObject:v41];
            v74 = v41;
          }

          else
          {
            v40 = v76;
          }

          v13 = v77 + 1;
          v14 = v12;
        }

        while (v77 + 1 != v73);
        v73 = [obj countByEnumeratingWithState:&v93 objects:v99 count:16];
      }

      while (v73);
    }

    else
    {
      v84 = 0;
      v74 = 0;
      v12 = 0;
    }

    v43 = v70;
    if ([v70 count])
    {
      v44 = objc_alloc_init(MEMORY[0x277CBEB18]);

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v45 = attributesCopy;
      v46 = [v45 countByEnumeratingWithState:&v85 objects:v97 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = 0;
        v49 = *v86;
        do
        {
          for (j = 0; j != v47; ++j)
          {
            if (*v86 != v49)
            {
              objc_enumerationMutation(v45);
            }

            v51 = *(*(&v85 + 1) + 8 * j);
            v52 = [(NSMutableDictionary *)self->_countingPairs objectForKeyedSubscript:processorCopy];
            v53 = [v52 objectForKeyedSubscript:v51];

            if (v53)
            {
              v54 = [v79 objectForKeyedSubscript:v51];
              v55 = v54;
              v56 = &unk_2846E7E18;
              if (v54)
              {
                v56 = v54;
              }

              v57 = v56;

              v58 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@: %@", v53, v57];

              [v44 addObject:v58];
              unsignedIntValue = [v57 unsignedIntValue];

              processorCopy = v78;
              v48 += unsignedIntValue;
              v84 = v58;
            }

            self = selfCopy;
          }

          v47 = [v45 countByEnumeratingWithState:&v85 objects:v97 count:16];
        }

        while (v47);
      }

      else
      {
        v48 = 0;
      }

      [v44 sortUsingSelector:sel_compare_];
      v61 = MEMORY[0x277CCACA8];
      v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(obj, "count")}];
      v63 = [v44 componentsJoinedByString:{@", "}];
      v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v48];
      v65 = [v61 stringWithFormat:@"\nTotal: bundles: %@, %@, total: %@", v62, v63, v64];

      v43 = v70;
      [v70 addObject:v65];
      v60 = v65;
    }

    else
    {
      v44 = v12;
      v60 = v74;
    }

    objc_autoreleasePoolPop(context);
    bundlesCopy = v68;
    if ([v43 count])
    {
      v42 = [v43 componentsJoinedByString:@"\n"];
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (id)extractionReportForProcessor:(id)processor bundles:(id)bundles attributes:(id)attributes
{
  v62 = *MEMORY[0x277D85DE8];
  processorCopy = processor;
  bundlesCopy = bundles;
  attributesCopy = attributes;
  v51 = processorCopy;
  v10 = [(NSMutableDictionary *)self->_reportingPairs objectForKeyedSubscript:processorCopy];
  v11 = [v10 count];

  if (v11)
  {
    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    context = objc_autoreleasePoolPush();
    v40 = bundlesCopy;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = bundlesCopy;
    v45 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    v12 = 0;
    if (v45)
    {
      v46 = 0;
      v13 = 0;
      v43 = *v57;
      do
      {
        v14 = 0;
        v15 = v13;
        do
        {
          if (*v57 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v49 = v14;
          v16 = *(*(&v56 + 1) + 8 * v14);
          v17 = [v16 length];
          v18 = @"\t\t\t";
          if (v17 >= 0xF)
          {
            v19 = [v16 length];
            v18 = @"\t";
            if (v19 < 0x18)
            {
              v18 = @"\t\t";
            }
          }

          v48 = v18;
          v50 = objc_alloc_init(MEMORY[0x277CBEB18]);

          v47 = v16;
          v20 = [(NSMutableDictionary *)self->_counter objectForKeyedSubscript:v16];
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v21 = attributesCopy;
          v22 = [v21 countByEnumeratingWithState:&v52 objects:v60 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v53;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v53 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v52 + 1) + 8 * i);
                v27 = [(NSMutableDictionary *)self->_reportingPairs objectForKeyedSubscript:v51];
                v28 = [v27 objectForKeyedSubscript:v26];

                if (v28)
                {
                  v29 = [v20 countForObject:v26];
                  if (v29)
                  {
                    v30 = MEMORY[0x277CCACA8];
                    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
                    v32 = [v30 stringWithFormat:@" %@: %@", v28, v31];

                    [v50 addObject:v32];
                    v12 = v32;
                  }
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v52 objects:v60 count:16];
            }

            while (v23);
          }

          v13 = v50;
          if ([v50 count])
          {
            v33 = MEMORY[0x277CCACA8];
            v34 = [v50 componentsJoinedByString:{@", "}];
            v35 = v48;
            context = [v33 stringWithFormat:@"%@%@%@", v47, v48, v34, context];

            [v42 addObject:context];
            v46 = context;
          }

          else
          {
            v35 = v48;
          }

          v14 = v49 + 1;
          v15 = v50;
        }

        while (v49 + 1 != v45);
        v45 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v45);
    }

    else
    {
      v46 = 0;
      v13 = 0;
    }

    objc_autoreleasePoolPop(context);
    if ([v42 count])
    {
      v37 = [v42 componentsJoinedByString:@"\n"];
    }

    else
    {
      v37 = 0;
    }

    bundlesCopy = v40;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (id)loggingReportForProcessor:(id)processor bundles:(id)bundles attributes:(id)attributes
{
  v224 = *MEMORY[0x277D85DE8];
  processorCopy = processor;
  bundlesCopy = bundles;
  attributesCopy = attributes;
  v158 = processorCopy;
  v9 = [(NSMutableDictionary *)self->_loggingPairs objectForKeyedSubscript:processorCopy];
  v10 = [v9 count];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    verbosity = self->_verbosity;
    v159 = v12;
    selfCopy = self;
    switch(verbosity)
    {
      case 4:
        v178 = 0u;
        v179 = 0u;
        v176 = 0u;
        v177 = 0u;
        v137 = bundlesCopy;
        v130 = [v137 countByEnumeratingWithState:&v176 objects:v215 count:16];
        if (v130)
        {
          v124 = v11;
          v50 = 0x277CCA000uLL;
          obja = *v177;
          do
          {
            v51 = 0;
            do
            {
              if (*v177 != obja)
              {
                objc_enumerationMutation(v137);
              }

              v133 = v51;
              v161 = *(*(&v176 + 1) + 8 * v51);
              v172 = 0u;
              v173 = 0u;
              v174 = 0u;
              v175 = 0u;
              v145 = attributesCopy;
              v52 = [v145 countByEnumeratingWithState:&v172 objects:v214 count:16];
              if (v52)
              {
                v53 = v52;
                v54 = *v173;
                v139 = *v173;
                do
                {
                  v55 = 0;
                  v142 = v53;
                  do
                  {
                    if (*v173 != v54)
                    {
                      objc_enumerationMutation(v145);
                    }

                    v56 = *(*(&v172 + 1) + 8 * v55);
                    v57 = [(NSMutableDictionary *)self->_loggingPairs objectForKeyedSubscript:v158];
                    v58 = [v57 objectForKeyedSubscript:v56];

                    if (v58)
                    {
                      v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@.txt", self->_outputRoot, v161, v56];
                      defaultManager = [*(v50 + 2560) defaultManager];
                      v61 = [defaultManager fileExistsAtPath:v59];

                      if (v61)
                      {
                        v154 = v55;
                        v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
                        v151 = v59;
                        v63 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v59 encoding:4 error:0];
                        v168 = 0u;
                        v169 = 0u;
                        v170 = 0u;
                        v171 = 0u;
                        v148 = v63;
                        v64 = [v63 componentsSeparatedByString:@"\n"];
                        v65 = [v64 countByEnumeratingWithState:&v168 objects:v213 count:16];
                        if (v65)
                        {
                          v66 = v65;
                          v67 = *v169;
                          do
                          {
                            for (i = 0; i != v66; ++i)
                            {
                              if (*v169 != v67)
                              {
                                objc_enumerationMutation(v64);
                              }

                              v69 = [*(*(&v168 + 1) + 8 * i) componentsSeparatedByString:@"=;"];;
                              firstObject = [v69 firstObject];
                              lastObject = [v69 lastObject];
                              v72 = [v62 objectForKeyedSubscript:firstObject];

                              if (!v72)
                              {
                                v73 = objc_alloc_init(MEMORY[0x277CBEB58]);
                                [v62 setObject:v73 forKeyedSubscript:firstObject];
                              }

                              v74 = [v62 objectForKeyedSubscript:firstObject];
                              [v74 addObject:lastObject];
                            }

                            v66 = [v64 countByEnumeratingWithState:&v168 objects:v213 count:16];
                          }

                          while (v66);
                        }

                        v166 = 0u;
                        v167 = 0u;
                        v164 = 0u;
                        v165 = 0u;
                        v75 = v62;
                        v76 = [v75 countByEnumeratingWithState:&v164 objects:v212 count:16];
                        if (v76)
                        {
                          v77 = v76;
                          v78 = *v165;
                          do
                          {
                            for (j = 0; j != v77; ++j)
                            {
                              if (*v165 != v78)
                              {
                                objc_enumerationMutation(v75);
                              }

                              v80 = *(*(&v164 + 1) + 8 * j);
                              v81 = [v75 objectForKeyedSubscript:v56];
                              v82 = [v81 count];

                              if (v82)
                              {
                                v83 = MEMORY[0x277CCACA8];
                                v84 = [v75 objectForKeyedSubscript:v56];
                                allObjects = [v84 allObjects];
                                v86 = [allObjects componentsJoinedByString:@"\n\t\t"];
                                v87 = [v83 stringWithFormat:@"%@: %@:\n\t%@:\n\t\t%@", v161, v80, v56, v86];

                                [v159 addObject:v87];
                              }
                            }

                            v77 = [v75 countByEnumeratingWithState:&v164 objects:v212 count:16];
                          }

                          while (v77);
                        }

                        v55 = v154;
                        self = selfCopy;
                        v50 = 0x277CCA000;
                        v54 = v139;
                        v53 = v142;
                        v59 = v151;
                      }
                    }

                    ++v55;
                  }

                  while (v55 != v53);
                  v53 = [v145 countByEnumeratingWithState:&v172 objects:v214 count:16];
                }

                while (v53);
              }

              v51 = v133 + 1;
            }

            while (v133 + 1 != v130);
            v130 = [v137 countByEnumeratingWithState:&v176 objects:v215 count:16];
          }

          while (v130);
          goto LABEL_118;
        }

        break;
      case 3:
        v194 = 0u;
        v195 = 0u;
        v192 = 0u;
        v193 = 0u;
        v137 = bundlesCopy;
        v131 = [v137 countByEnumeratingWithState:&v192 objects:v219 count:16];
        if (v131)
        {
          v124 = v11;
          objb = *v193;
          do
          {
            v88 = 0;
            do
            {
              if (*v193 != objb)
              {
                objc_enumerationMutation(v137);
              }

              v134 = v88;
              v89 = *(*(&v192 + 1) + 8 * v88);
              v90 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v188 = 0u;
              v189 = 0u;
              v190 = 0u;
              v191 = 0u;
              v149 = attributesCopy;
              v91 = [v149 countByEnumeratingWithState:&v188 objects:v218 count:16];
              if (v91)
              {
                v92 = v91;
                v93 = *v189;
                v140 = *v189;
                v143 = v89;
                do
                {
                  v94 = 0;
                  v146 = v92;
                  do
                  {
                    if (*v189 != v93)
                    {
                      objc_enumerationMutation(v149);
                    }

                    v95 = *(*(&v188 + 1) + 8 * v94);
                    v96 = [(NSMutableDictionary *)selfCopy->_loggingPairs objectForKeyedSubscript:v158];
                    v97 = [v96 objectForKeyedSubscript:v95];

                    if (v97)
                    {
                      v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@.txt", selfCopy->_outputRoot, v89, v95];
                      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
                      v100 = [defaultManager2 fileExistsAtPath:v98];

                      if (v100)
                      {
                        v162 = v94;
                        v155 = v98;
                        v101 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v98 encoding:4 error:0];
                        v184 = 0u;
                        v185 = 0u;
                        v186 = 0u;
                        v187 = 0u;
                        v152 = v101;
                        v102 = [v101 componentsSeparatedByString:@"\n"];
                        v103 = [v102 countByEnumeratingWithState:&v184 objects:v217 count:16];
                        if (v103)
                        {
                          v104 = v103;
                          v105 = *v185;
                          do
                          {
                            for (k = 0; k != v104; ++k)
                            {
                              if (*v185 != v105)
                              {
                                objc_enumerationMutation(v102);
                              }

                              v107 = [*(*(&v184 + 1) + 8 * k) componentsSeparatedByString:@"=;"];;
                              lastObject2 = [v107 lastObject];
                              v109 = [v90 objectForKeyedSubscript:v95];

                              if (!v109)
                              {
                                v110 = objc_alloc_init(MEMORY[0x277CBEB58]);
                                [v90 setObject:v110 forKeyedSubscript:v95];
                              }

                              v111 = [v90 objectForKeyedSubscript:v95];
                              [v111 addObject:lastObject2];
                            }

                            v104 = [v102 countByEnumeratingWithState:&v184 objects:v217 count:16];
                          }

                          while (v104);
                        }

                        v93 = v140;
                        v89 = v143;
                        v92 = v146;
                        v94 = v162;
                        v98 = v155;
                      }
                    }

                    ++v94;
                  }

                  while (v94 != v92);
                  v92 = [v149 countByEnumeratingWithState:&v188 objects:v218 count:16];
                }

                while (v92);
              }

              if ([v90 count])
              {
                v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:\n", v89];
                [v12 addObject:v112];
                v182 = 0u;
                v183 = 0u;
                v180 = 0u;
                v181 = 0u;
                v113 = v90;
                v163 = [v113 countByEnumeratingWithState:&v180 objects:v216 count:16];
                if (v163)
                {
                  v156 = *v181;
                  do
                  {
                    for (m = 0; m != v163; ++m)
                    {
                      if (*v181 != v156)
                      {
                        objc_enumerationMutation(v113);
                      }

                      v115 = *(*(&v180 + 1) + 8 * m);
                      v116 = [v113 objectForKeyedSubscript:v115];
                      v117 = [v116 count];

                      if (v117)
                      {
                        v118 = MEMORY[0x277CCACA8];
                        v119 = [v113 objectForKeyedSubscript:v115];
                        allObjects2 = [v119 allObjects];
                        v121 = [allObjects2 componentsJoinedByString:@"\n\t\t"];
                        v121 = [v118 stringWithFormat:@"\t%@:\n\t\t%@\n", v115, v121];

                        [v12 addObject:v121];
                        v112 = v121;
                      }
                    }

                    v163 = [v113 countByEnumeratingWithState:&v180 objects:v216 count:16];
                  }

                  while (v163);
                }
              }

              v88 = v134 + 1;
            }

            while (v134 + 1 != v131);
            v131 = [v137 countByEnumeratingWithState:&v192 objects:v219 count:16];
          }

          while (v131);
LABEL_118:
          v11 = v124;
          v12 = v159;
        }

        break;
      case 2:
        v124 = v11;
        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v208 = 0u;
        v209 = 0u;
        v210 = 0u;
        v211 = 0u;
        obj = bundlesCopy;
        v132 = [obj countByEnumeratingWithState:&v208 objects:v223 count:16];
        if (v132)
        {
          v129 = *v209;
          v15 = 0x277CCA000uLL;
          do
          {
            v16 = 0;
            do
            {
              if (*v209 != v129)
              {
                objc_enumerationMutation(obj);
              }

              v136 = v16;
              v17 = *(*(&v208 + 1) + 8 * v16);
              v204 = 0u;
              v205 = 0u;
              v206 = 0u;
              v207 = 0u;
              v141 = attributesCopy;
              v153 = [v141 countByEnumeratingWithState:&v204 objects:v222 count:16];
              if (v153)
              {
                v150 = *v205;
                v138 = v17;
                do
                {
                  v18 = 0;
                  do
                  {
                    if (*v205 != v150)
                    {
                      objc_enumerationMutation(v141);
                    }

                    v160 = v18;
                    v19 = *(*(&v204 + 1) + 8 * v18);
                    v20 = [(NSMutableDictionary *)self->_loggingPairs objectForKeyedSubscript:v158];
                    v21 = [v20 objectForKeyedSubscript:v19];

                    if (v21)
                    {
                      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@.txt", self->_outputRoot, v17, v19];
                      defaultManager3 = [*(v15 + 2560) defaultManager];
                      v24 = [defaultManager3 fileExistsAtPath:v22];

                      if (v24)
                      {
                        v147 = v22;
                        v25 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v22 encoding:4 error:0];
                        v200 = 0u;
                        v201 = 0u;
                        v202 = 0u;
                        v203 = 0u;
                        v144 = v25;
                        v26 = [v25 componentsSeparatedByString:@"\n"];
                        v27 = [v26 countByEnumeratingWithState:&v200 objects:v221 count:16];
                        if (v27)
                        {
                          v28 = v27;
                          v29 = *v201;
                          do
                          {
                            for (n = 0; n != v28; ++n)
                            {
                              if (*v201 != v29)
                              {
                                objc_enumerationMutation(v26);
                              }

                              v31 = [*(*(&v200 + 1) + 8 * n) componentsSeparatedByString:@"=;"];;
                              lastObject3 = [v31 lastObject];
                              v33 = [v14 objectForKeyedSubscript:v19];

                              if (!v33)
                              {
                                v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
                                [v14 setObject:v34 forKeyedSubscript:v19];
                              }

                              v35 = [v14 objectForKeyedSubscript:v19];
                              [v35 addObject:lastObject3];
                            }

                            v28 = [v26 countByEnumeratingWithState:&v200 objects:v221 count:16];
                          }

                          while (v28);
                        }

                        self = selfCopy;
                        v15 = 0x277CCA000;
                        v17 = v138;
                        v22 = v147;
                      }
                    }

                    v18 = v160 + 1;
                  }

                  while (v160 + 1 != v153);
                  v153 = [v141 countByEnumeratingWithState:&v204 objects:v222 count:16];
                }

                while (v153);
              }

              v16 = v136 + 1;
            }

            while (v136 + 1 != v132);
            v132 = [obj countByEnumeratingWithState:&v208 objects:v223 count:16];
          }

          while (v132);
        }

        v198 = 0u;
        v199 = 0u;
        v196 = 0u;
        v197 = 0u;
        v137 = v14;
        v36 = [v137 countByEnumeratingWithState:&v196 objects:v220 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v197;
          do
          {
            for (ii = 0; ii != v37; ++ii)
            {
              v40 = v137;
              if (*v197 != v38)
              {
                objc_enumerationMutation(v137);
                v40 = v137;
              }

              v41 = *(*(&v196 + 1) + 8 * ii);
              v42 = [v40 objectForKeyedSubscript:v41];
              v43 = [v42 count];

              if (v43)
              {
                v44 = MEMORY[0x277CCACA8];
                v45 = [v40 objectForKeyedSubscript:v41];
                allObjects3 = [v45 allObjects];
                v47 = [allObjects3 componentsJoinedByString:@"\n\t"];
                v48 = [v44 stringWithFormat:@"%@:\n\t%@\n", v41, v47];

                [v159 addObject:v48];
              }
            }

            v37 = [v137 countByEnumeratingWithState:&v196 objects:v220 count:16];
          }

          while (v37);
        }

        goto LABEL_118;
      default:
LABEL_120:
        if ([v12 count])
        {
          v49 = [v12 componentsJoinedByString:@"\n"];
        }

        else
        {
          v49 = 0;
        }

        objc_autoreleasePoolPop(v11);
        goto LABEL_124;
    }

    goto LABEL_120;
  }

  v49 = 0;
LABEL_124:

  return v49;
}

- (void)clear
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtPath:self->_outputRoot error:0];
}

- (id)reports
{
  v38 = *MEMORY[0x277D85DE8];
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  allKeys = [(NSMutableDictionary *)self->_counter allKeys];
  v4 = [allKeys sortedArrayUsingSelector:sel_compare_];

  allKeys2 = [(NSMutableDictionary *)self->_countingPairs allKeys];
  v6 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

  allObjects = [(NSMutableSet *)self->_countingAttributes allObjects];
  v30 = [allObjects sortedArrayUsingSelector:sel_compare_];

  allObjects2 = [(NSMutableSet *)self->_reportingAttributes allObjects];
  v29 = [allObjects2 sortedArrayUsingSelector:sel_compare_];

  allObjects3 = [(NSMutableSet *)self->_loggingAttributes allObjects];
  v28 = [allObjects3 sortedArrayUsingSelector:sel_compare_];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v32)
  {
    v27 = *v34;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"[ === %@\n", v11];
        [v12 addObject:v13];

        v14 = [(SKGJobReporter *)self pipelineReportForProcessor:v11 bundles:v4 attributes:v30];
        if (v14)
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"** Pipeline report **"];
          [v12 addObject:v15];

          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v14];
          [v12 addObject:v16];
        }

        v17 = [(SKGJobReporter *)self extractionReportForProcessor:v11 bundles:v4 attributes:v29];
        if (v17)
        {
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"** Extraction report **"];
          [v12 addObject:v18];

          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v17];
          [v12 addObject:v19];
        }

        v20 = [(SKGJobReporter *)self loggingReportForProcessor:v11 bundles:v4 attributes:v28];
        if (v20)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"** Logging report **"];
          [v12 addObject:v21];

          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v20];
          [v12 addObject:v22];
        }

        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"=== end %@ ]\n", v11];
        [v12 addObject:v23];

        v24 = [v12 componentsJoinedByString:@"\n"];
        [v31 addObject:v24];
      }

      v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v32);
  }

  [(SKGJobReporter *)self clear];

  return v31;
}

@end