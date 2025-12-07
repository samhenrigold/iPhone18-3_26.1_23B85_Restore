@interface SKDPipelineManager
+ (id)sharedManager;
- (SKDPipelineManager)initWithDescriptors:(id)descriptors processorCache:(id)cache logger:(id)logger;
- (id)indexProcessingJobWithProtectionClasses:(id)classes;
- (id)journalProcessingJobs;
@end

@implementation SKDPipelineManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[SKDPipelineManager sharedManager];
  }

  v3 = sharedManager_sSharedManager;

  return v3;
}

void __35__SKDPipelineManager_sharedManager__block_invoke()
{
  v7 = +[SKDDefaults sharedDefaults];
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v7 pipelineKeyphrasesEnabled])
  {
    v1 = configureKeyphraseDescriptor(v7);
    [v0 addObject:v1];
  }

  else
  {
    if (![v7 pipelineEnabled])
    {
      goto LABEL_6;
    }

    v1 = getSystemDefinedDescriptors(v7);
    [v0 addObjectsFromArray:v1];
  }

LABEL_6:
  if ([v7 pipelineDebugEnabled])
  {
    v2 = configureMockDescriptor(v7, 1);
    [v0 addObject:v2];
  }

  v3 = [SKDPipelineManager alloc];
  v4 = +[SKDRecordProcessorCache sharedCache];
  v5 = [(SKDPipelineManager *)v3 initWithDescriptors:v0 processorCache:v4 logger:0];
  v6 = sharedManager_sSharedManager;
  sharedManager_sSharedManager = v5;
}

- (id)journalProcessingJobs
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(SKDPipelineManager *)self pipelines];
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = MEMORY[0x277CCACA8];
        descriptor = [v8 descriptor];
        name = [descriptor name];
        v12 = [v9 stringWithFormat:@"journal-%@", name];

        v13 = [SKDJournalProcessingJob alloc];
        v14 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
        v15 = [(SKDJournalProcessingJob *)v13 initWithName:v12 version:&unk_2846E7A88 pipelines:v14];

        if (self->_logger)
        {
          [(SKDBaseJob *)v15 setLogger:?];
        }

        [v3 addObject:v15];
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)indexProcessingJobWithProtectionClasses:(id)classes
{
  v59 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  pipelines = [(SKDPipelineManager *)self pipelines];
  v6 = [pipelines countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (!v6)
  {

    v36 = 0;
    v8 = 0;
    goto LABEL_48;
  }

  v7 = v6;
  selfCopy = self;
  v39 = pipelines;
  v8 = 0;
  v9 = *v53;
  v42 = *v53;
  v40 = classesCopy;
  do
  {
    v10 = 0;
    v43 = v7;
    do
    {
      if (*v53 != v9)
      {
        objc_enumerationMutation(pipelines);
      }

      v11 = *(*(&v52 + 1) + 8 * v10);
      descriptor = [v11 descriptor];
      if (![descriptor enabled])
      {

        goto LABEL_41;
      }

      canRun = [v11 canRun];

      if ((canRun & 1) == 0)
      {
        goto LABEL_41;
      }

      requiredAttributes = [v11 requiredAttributes];

      if (requiredAttributes)
      {
        if (indexProcessingJobWithProtectionClasses__onceToken != -1)
        {
          [SKDPipelineManager indexProcessingJobWithProtectionClasses:];
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        requiredAttributes2 = [v11 requiredAttributes];
        v16 = [requiredAttributes2 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v49;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v49 != v18)
              {
                objc_enumerationMutation(requiredAttributes2);
              }

              if (![indexProcessingJobWithProtectionClasses__sIndexingIgnoreAttrs containsObject:*(*(&v48 + 1) + 8 * i)])
              {

                v9 = v42;
                v7 = v43;
                goto LABEL_22;
              }
            }

            v17 = [requiredAttributes2 countByEnumeratingWithState:&v48 objects:v57 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_36;
      }

LABEL_22:
      if ([classesCopy count])
      {
        v41 = v8;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v20 = classesCopy;
        v21 = [v20 countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v45;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v45 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v44 + 1) + 8 * j);
              descriptor2 = [v11 descriptor];
              requiredProtectionClasses = [descriptor2 requiredProtectionClasses];

              descriptor3 = [v11 descriptor];
              v29 = descriptor3;
              if (requiredProtectionClasses)
              {
                requiredProtectionClasses2 = [descriptor3 requiredProtectionClasses];
                v31 = [requiredProtectionClasses2 containsObject:v25];

                if (v31)
                {
                  goto LABEL_37;
                }
              }

              else
              {
                excludedProtectionClasses = [descriptor3 excludedProtectionClasses];

                if (!excludedProtectionClasses || ([v11 descriptor], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "excludedProtectionClasses"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "containsObject:", v25), v34, v33, !v35))
                {
LABEL_37:

                  classesCopy = v40;
                  v8 = v41;
                  pipelines = v39;
                  v9 = v42;
                  v7 = v43;
                  goto LABEL_38;
                }
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v44 objects:v56 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        classesCopy = v40;
        v8 = v41;
        pipelines = v39;
LABEL_36:
        v9 = v42;
        v7 = v43;
        goto LABEL_41;
      }

LABEL_38:
      if (!v8)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      [v8 addObject:v11];
LABEL_41:
      ++v10;
    }

    while (v10 != v7);
    v7 = [pipelines countByEnumeratingWithState:&v52 objects:v58 count:16];
  }

  while (v7);

  if (v8)
  {
    v36 = [(SKDBaseCSQueryProcessingJob *)[SKDIndexProcessingJob alloc] initWithName:@"index" version:&unk_2846E7A88 pipelines:v8];
  }

  else
  {
    v36 = 0;
  }

  self = selfCopy;
LABEL_48:
  if (self->_logger)
  {
    [(SKDBaseJob *)v36 setLogger:?];
  }

  return v36;
}

void __62__SKDPipelineManager_indexProcessingJobWithProtectionClasses___block_invoke()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = *MEMORY[0x277CC31A0];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];
  v1 = indexProcessingJobWithProtectionClasses__sIndexingIgnoreAttrs;
  indexProcessingJobWithProtectionClasses__sIndexingIgnoreAttrs = v0;
}

- (SKDPipelineManager)initWithDescriptors:(id)descriptors processorCache:(id)cache logger:(id)logger
{
  v47 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  cacheCopy = cache;
  loggerCopy = logger;
  v44.receiver = self;
  v44.super_class = SKDPipelineManager;
  v10 = [(SKDPipelineManager *)&v44 init];
  v11 = v10;
  if (v10)
  {
    v30 = v10;
    cacheCopy2 = cache;
    v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = descriptorsCopy;
    obj = descriptorsCopy;
    v12 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v41;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v41 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v40 + 1) + 8 * i);
          processorNames = [v16 processorNames];
          v18 = [cacheCopy processorsWithNames:processorNames];

          if (loggerCopy)
          {
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v19 = v18;
            v20 = [v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v37;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v37 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  [*(*(&v36 + 1) + 8 * j) setLogger:loggerCopy];
                }

                v21 = [v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
              }

              while (v21);
            }
          }

          v24 = [[SKDPipeline alloc] initWithDescriptor:v16 processors:v18];
          descriptor = [(SKDPipeline *)v24 descriptor];
          name = [descriptor name];
          [(NSDictionary *)v34 setObject:v24 forKeyedSubscript:name];
        }

        v13 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v13);
    }

    v11 = v30;
    pipelines = v30->_pipelines;
    v30->_pipelines = v34;
    v28 = v34;

    objc_storeStrong(&v30->_processorCache, cacheCopy2);
    descriptorsCopy = v32;
  }

  return v11;
}

@end