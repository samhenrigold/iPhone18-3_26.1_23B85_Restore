@interface FSFCurareInteractionFeatureStoreStream
+ (BOOL)createError:(id)error error:(id *)a4;
- (BOOL)insert:(id)insert error:(id *)error;
- (FSFCurareInteractionFeatureStoreStream)initWithStreamId:(id)id;
- (id)retrieve:(id)retrieve;
- (id)retrieveWithInteractionWrapper:(id)wrapper;
- (void)retrieve:(id)retrieve completionHandler:(id)handler;
- (void)retrieveWithInteractionWrapper:(id)wrapper completionHandler:(id)handler;
@end

@implementation FSFCurareInteractionFeatureStoreStream

- (BOOL)insert:(id)insert error:(id *)error
{
  insertCopy = insert;
  if (!+[FSFUtils isSupportedPlatform])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  if (+[FSFUtils isUnderLegalRestriction])
  {
    v7 = objc_opt_class();
    v8 = @"Does not insert into FeatureStore: under privacy restriction";
LABEL_12:
    [v7 createError:v8 error:error];
    NSLog(&stru_28366A450.isa, v8);
    goto LABEL_13;
  }

  interactionId = [insertCopy interactionId];

  if (!interactionId)
  {
    v7 = objc_opt_class();
    v8 = @"Failed to Insert into FeatureStore: Nil InteractionID";
    goto LABEL_12;
  }

  serialize = [insertCopy serialize];

  if (!serialize)
  {
    v7 = objc_opt_class();
    v8 = @"Failed to Insert into FeatureStore: Nil Serialized Data";
    goto LABEL_12;
  }

  v11 = [[_CurareInternalBiomeFeature alloc] initWithCurareInteraction:insertCopy];
  biomeStream = self->_biomeStream;
  interactionId2 = [insertCopy interactionId];
  v14 = [(FSFFeatureStoreStream *)biomeStream insert:v11 withInteractionId:interactionId2 atTime:CFAbsoluteTimeGetCurrent()];

  if ((v14 & 1) == 0)
  {
    [objc_opt_class() createError:@"Failed to Insert into FeatureStore: Biome returned false." error:error];
    NSLog(&stru_28366A450.isa, @"Failed to Insert into FeatureStore: Biome returned false.");
  }

LABEL_14:
  return v14;
}

+ (BOOL)createError:(id)error error:(id *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = error;
    v6 = MEMORY[0x277CBEAC0];
    errorCopy = error;
    v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v5 errorWithDomain:@"FSFCurareInteractionStreamErrorDomain" code:1 userInfo:v8];

    v10 = v9;
    *a4 = v9;
  }

  return a4 != 0;
}

- (id)retrieveWithInteractionWrapper:(id)wrapper
{
  v55 = *MEMORY[0x277D85DE8];
  wrapperCopy = wrapper;
  if (+[FSFUtils isSupportedPlatform])
  {
    v5 = [(FSFFeatureStoreStream *)self->_biomeStream retrieveEvents:0 startDate:0 endDate:0];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (!v7)
    {
      goto LABEL_23;
    }

    v9 = v7;
    v45 = *v47;
    *&v8 = 138412546;
    v40 = v8;
    v41 = dictionary;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v46 + 1) + 8 * i);
        eventBody = [v11 eventBody];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        eventBody2 = [v11 eventBody];
        if (isKindOfClass)
        {
          v43 = [FSFFeatureStoreBiomeEvent alloc];
          content = [eventBody2 content];
          v15 = [content objectForKeyedSubscript:@"interactionId"];
          content2 = [eventBody2 content];
          v17 = [content2 objectForKeyedSubscript:@"feature"];
          v18 = [FSFUtils getDataFromBase64EncodedStr:v17];
          v19 = v9;
          v20 = wrapperCopy;
          dataVersion = [eventBody2 dataVersion];
          [v11 timestamp];
          v22 = dataVersion;
          wrapperCopy = v20;
          v9 = v19;
          eventBody3 = [(FSFFeatureStoreBiomeEvent *)v43 initWithInteractionId:v15 featureData:v18 dataVersion:v22 timestamp:?];

          dictionary = v41;
          if (wrapperCopy)
          {
            goto LABEL_16;
          }
        }

        else
        {
          objc_opt_class();
          v24 = objc_opt_isKindOfClass();

          if (v24)
          {
            eventBody3 = [v11 eventBody];
            if (wrapperCopy)
            {
              goto LABEL_16;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              eventBody4 = [v11 eventBody];
              v35 = objc_opt_class();
              v36 = NSStringFromClass(v35);
              [v11 eventBody];
              v38 = v37 = v9;
              *buf = v40;
              v51 = v36;
              v52 = 2112;
              v53 = v38;
              _os_log_error_impl(&dword_223066000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Fetched event body is unexpected class %@. Skipping. Event body:\n%@", buf, 0x16u);

              v9 = v37;
            }

            eventBody3 = 0;
            if (wrapperCopy)
            {
LABEL_16:
              interactionId = [(FSFFeatureStoreBiomeEvent *)eventBody3 interactionId];
              v26 = [wrapperCopy containsObject:interactionId];

              if (!v26)
              {
                goto LABEL_21;
              }
            }
          }
        }

        featureData = [(FSFFeatureStoreBiomeEvent *)eventBody3 featureData];

        if (featureData)
        {
          interactionId2 = [(FSFFeatureStoreBiomeEvent *)eventBody3 interactionId];
          v29 = [dictionary objectForKeyedSubscript:interactionId2];

          if (!v29)
          {
            v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
            interactionId3 = [(FSFFeatureStoreBiomeEvent *)eventBody3 interactionId];
            [dictionary setObject:v30 forKeyedSubscript:interactionId3];
          }

          interactionId4 = [(FSFFeatureStoreBiomeEvent *)eventBody3 interactionId];
          v33 = [dictionary objectForKeyedSubscript:interactionId4];
          [v33 addObject:eventBody3];
        }

LABEL_21:
      }

      v9 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (!v9)
      {
LABEL_23:

        goto LABEL_25;
      }
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
  dictionary = 0;
LABEL_25:

  return dictionary;
}

- (void)retrieveWithInteractionWrapper:(id)wrapper completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v7 = [(FSFCurareInteractionFeatureStoreStream *)self retrieveWithInteractionWrapper:wrapper];
    handlerCopy[2](handlerCopy, v7);
  }
}

- (id)retrieve:(id)retrieve
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(FSFCurareInteractionFeatureStoreStream *)self retrieveWithInteractionWrapper:retrieve];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v3)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = v3;
    v5 = v3;
    v19 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v19)
    {
      v18 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v5);
          }

          v7 = *(*(&v24 + 1) + 8 * i);
          v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v9 = [v5 objectForKeyedSubscript:v7];
          v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v21;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v21 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                featureData = [*(*(&v20 + 1) + 8 * j) featureData];
                [v8 addObject:featureData];
              }

              v11 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v11);
          }

          [v4 setObject:v8 forKeyedSubscript:v7];
        }

        v19 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v19);
    }

    v15 = v4;
    v3 = v17;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)retrieve:(id)retrieve completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v7 = [(FSFCurareInteractionFeatureStoreStream *)self retrieve:retrieve];
    handlerCopy[2](handlerCopy, v7);
  }
}

- (FSFCurareInteractionFeatureStoreStream)initWithStreamId:(id)id
{
  idCopy = id;
  if (+[FSFUtils isSupportedPlatform])
  {
    v11.receiver = self;
    v11.super_class = FSFCurareInteractionFeatureStoreStream;
    v5 = [(FSFCurareInteractionFeatureStoreStream *)&v11 init];
    if (v5)
    {
      v6 = +[FSFBiomeFeatureStore singletonInstance];
      v7 = [v6 getStream:idCopy];
      biomeStream = v5->_biomeStream;
      v5->_biomeStream = v7;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    selfCopy = 0;
  }

  return selfCopy;
}

@end