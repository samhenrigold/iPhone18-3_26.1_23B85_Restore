@interface SKDPipeline
- (BOOL)supportsRecord:(id)record bundleID:(id)d;
- (NSArray)fetchAttributes;
- (NSArray)processedAttributes;
- (NSArray)requiredAttributes;
- (NSString)errorAttribute;
- (NSString)needsProcessingAttribute;
- (NSString)supportedQuery;
- (NSString)versionAttribute;
- (NSString)versionValue;
- (SKDPipeline)initWithDescriptor:(id)descriptor processors:(id)processors;
- (id)description;
- (id)supportedSetQuery;
@end

@implementation SKDPipeline

- (SKDPipeline)initWithDescriptor:(id)descriptor processors:(id)processors
{
  v19 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  processorsCopy = processors;
  v16.receiver = self;
  v16.super_class = SKDPipeline;
  v9 = [(SKDPipeline *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, descriptor);
    v11 = [processorsCopy copy];
    processors = v10->_processors;
    v10->_processors = v11;

    v10->_canRun = 1;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v13 = SKGLogPipelineInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [(SKDPipeline *)v10 description];
        *buf = 138412290;
        v18 = v14;
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_INFO, "### <%@>", buf, 0xCu);
      }
    }
  }

  return v10;
}

- (BOOL)supportsRecord:(id)record bundleID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  descriptor = [(SKDPipeline *)self descriptor];
  requiredBundles = [descriptor requiredBundles];

  if (requiredBundles && (!dCopy || (-[SKDPipeline descriptor](self, "descriptor"), v10 = objc_claimAutoreleasedReturnValue(), [v10 requiredBundles], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", dCopy), v11, v10, !v12)) || (-[SKDPipeline descriptor](self, "descriptor"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "excludedBundles"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, dCopy) && v14 && (-[SKDPipeline descriptor](self, "descriptor"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "excludedBundles"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", dCopy), v16, v15, (v17 & 1) != 0))
  {
    LOBYTE(v18) = 0;
  }

  else
  {
    descriptor2 = [(SKDPipeline *)self descriptor];
    requiredAttributes = [descriptor2 requiredAttributes];

    if (requiredAttributes)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      descriptor3 = [(SKDPipeline *)self descriptor];
      requiredAttributes2 = [descriptor3 requiredAttributes];

      v18 = [requiredAttributes2 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v18)
      {
        v23 = *v28;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v28 != v23)
            {
              objc_enumerationMutation(requiredAttributes2);
            }

            v25 = [recordCopy objectForKeyedSubscript:*(*(&v27 + 1) + 8 * i)];

            if (v25)
            {
              LOBYTE(v18) = 1;
              goto LABEL_19;
            }
          }

          v18 = [requiredAttributes2 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:
    }

    else
    {
      LOBYTE(v18) = 1;
    }
  }

  return v18;
}

- (NSArray)fetchAttributes
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  descriptor = [(SKDPipeline *)self descriptor];
  enabled = [descriptor enabled];

  if (enabled)
  {
    descriptor2 = [(SKDPipeline *)self descriptor];
    requiredAttributes = [descriptor2 requiredAttributes];

    if (requiredAttributes)
    {
      descriptor3 = [(SKDPipeline *)self descriptor];
      requiredAttributes2 = [descriptor3 requiredAttributes];
      [v3 addObjectsFromArray:requiredAttributes2];
    }

    descriptor4 = [(SKDPipeline *)self descriptor];
    excludedAttributes = [descriptor4 excludedAttributes];

    if (excludedAttributes)
    {
      descriptor5 = [(SKDPipeline *)self descriptor];
      excludedAttributes2 = [descriptor5 excludedAttributes];
      [v3 addObjectsFromArray:excludedAttributes2];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    processors = [(SKDPipeline *)self processors];
    v15 = [processors countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(processors);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          if ([v19 enabled])
          {
            requiredAttributes3 = [v19 requiredAttributes];

            if (requiredAttributes3)
            {
              requiredAttributes4 = [v19 requiredAttributes];
              [v3 addObjectsFromArray:requiredAttributes4];
            }

            optionalAttributes = [v19 optionalAttributes];

            if (optionalAttributes)
            {
              optionalAttributes2 = [v19 optionalAttributes];
              [v3 addObjectsFromArray:optionalAttributes2];
            }

            processedAttributes = [v19 processedAttributes];

            if (processedAttributes)
            {
              processedAttributes2 = [v19 processedAttributes];
              [v3 addObjectsFromArray:processedAttributes2];
            }
          }
        }

        v16 = [processors countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);
    }

    versionAttribute = [(SKDPipeline *)self versionAttribute];
    [v3 addObject:versionAttribute];

    errorAttribute = [(SKDPipeline *)self errorAttribute];
    [v3 addObject:errorAttribute];
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (NSArray)processedAttributes
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  processors = [(SKDPipeline *)self processors];
  v5 = [processors countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(processors);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 enabled])
        {
          processedAttributes = [v9 processedAttributes];
          [v3 addObjectsFromArray:processedAttributes];
        }

        versionAttribute = [(SKDPipeline *)self versionAttribute];
        [v3 addObject:versionAttribute];

        errorAttribute = [(SKDPipeline *)self errorAttribute];
        [v3 addObject:errorAttribute];

        needsProcessingAttribute = [(SKDPipeline *)self needsProcessingAttribute];
        [v3 addObject:needsProcessingAttribute];
      }

      v6 = [processors countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (NSArray)requiredAttributes
{
  descriptor = [(SKDPipeline *)self descriptor];
  requiredAttributes = [descriptor requiredAttributes];

  return requiredAttributes;
}

- (NSString)versionValue
{
  descriptor = [(SKDPipeline *)self descriptor];
  version = [descriptor version];

  return version;
}

- (NSString)versionAttribute
{
  v2 = MEMORY[0x277CCACA8];
  descriptor = [(SKDPipeline *)self descriptor];
  name = [descriptor name];
  v5 = [v2 stringWithFormat:@"_kMDItem%@Version", name];

  return v5;
}

- (NSString)errorAttribute
{
  v2 = MEMORY[0x277CCACA8];
  descriptor = [(SKDPipeline *)self descriptor];
  name = [descriptor name];
  v5 = [v2 stringWithFormat:@"_kMDItem%@ErrorCount", name];

  return v5;
}

- (NSString)needsProcessingAttribute
{
  v2 = MEMORY[0x277CCACA8];
  descriptor = [(SKDPipeline *)self descriptor];
  name = [descriptor name];
  v5 = [v2 stringWithFormat:@"_kMDItemNeeds%@", name];

  return v5;
}

- (id)supportedSetQuery
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  descriptor = [(SKDPipeline *)self descriptor];
  requiredBundles = [descriptor requiredBundles];

  if ([requiredBundles count])
  {
    v6 = [SKDPipelineQueryBuilder queryForItemsFromBundles:requiredBundles inverse:0];
    if (v6)
    {
      v7 = v6;
      [v3 addObject:v6];
    }
  }

  descriptor2 = [(SKDPipeline *)self descriptor];
  excludedBundles = [descriptor2 excludedBundles];

  if ([excludedBundles count])
  {
    v10 = [SKDPipelineQueryBuilder queryForItemsFromBundles:excludedBundles inverse:1];
    if (v10)
    {
      v11 = v10;
      [v3 addObject:v10];
    }
  }

  if (![v3 count])
  {
    [v3 addObject:@"true"];
  }

  v12 = objc_alloc_init(SKGQueryStringBuilder);
  withQueries = [(SKGQueryStringBuilder *)v12 withQueries];
  v14 = (withQueries)[2](withQueries, v3, @"&&");

  build = [v14 build];

  return build;
}

- (NSString)supportedQuery
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  descriptor = [(SKDPipeline *)self descriptor];
  requiredAttributes = [descriptor requiredAttributes];

  if (requiredAttributes)
  {
    descriptor2 = [(SKDPipeline *)self descriptor];
    requiredAttributes2 = [descriptor2 requiredAttributes];
    v8 = [requiredAttributes2 count];

    if (v8)
    {
      descriptor3 = [(SKDPipeline *)self descriptor];
      requiredAttributes3 = [descriptor3 requiredAttributes];
      v11 = [SKGQueryStringBuilder queryForAttributesExist:requiredAttributes3];
      [v3 addObject:v11];
    }

    else
    {
      [v3 addObject:@"false"];
    }
  }

  if ([v3 count])
  {
    v12 = objc_alloc_init(SKGQueryStringBuilder);
    beginGroup = [(SKGQueryStringBuilder *)v12 beginGroup];
    withQuery = [beginGroup withQuery];
    supportedSetQuery = [(SKDPipeline *)self supportedSetQuery];
    v15 = (withQuery)[2](withQuery, supportedSetQuery);
    v16 = [v15 and];
    withQueries = [v16 withQueries];
    [v3 allObjects];
    v19 = v18 = v3;
    v20 = (withQueries)[2](withQueries, v19, @"||");
    endGroup = [v20 endGroup];

    v3 = v18;
    build = [endGroup build];
  }

  else
  {
    build = [(SKDPipeline *)self supportedSetQuery];
  }

  return build;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  supportedQuery = [(SKDPipeline *)self supportedQuery];
  v6 = [v3 stringWithFormat:@"%@: supQuery <%@>", v4, supportedQuery];

  return v6;
}

@end