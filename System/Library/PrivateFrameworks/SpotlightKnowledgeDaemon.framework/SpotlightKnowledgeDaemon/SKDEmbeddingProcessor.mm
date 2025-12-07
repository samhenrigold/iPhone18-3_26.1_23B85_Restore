@interface SKDEmbeddingProcessor
- (BOOL)willProcessRecord:(id)record bundleID:(id)d;
- (SKDEmbeddingProcessor)init;
- (SKDEmbeddingProcessor)initWithProcessor:(id)processor;
- (id)processRecord:(id)record bundleID:(id)d;
- (id)processedAttributes;
- (id)requiredAttributes;
- (void)load;
@end

@implementation SKDEmbeddingProcessor

- (SKDEmbeddingProcessor)init
{
  mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
  v4 = [(SKDEmbeddingProcessor *)self initWithProcessor:mEMORY[0x277D65798]];

  return v4;
}

- (SKDEmbeddingProcessor)initWithProcessor:(id)processor
{
  processorCopy = processor;
  v9.receiver = self;
  v9.super_class = SKDEmbeddingProcessor;
  v6 = [(SKDRecordProcessor *)&v9 initWithName:@"embedding"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processor, processor);
  }

  return v7;
}

- (id)requiredAttributes
{
  if (requiredAttributes_onceEmbReqToken != -1)
  {
    [SKDEmbeddingProcessor requiredAttributes];
  }

  v3 = requiredAttributes_sEmbeddingReqAttributes;

  return v3;
}

void __43__SKDEmbeddingProcessor_requiredAttributes__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC31F0];
  v4[0] = *MEMORY[0x277CC31A0];
  v4[1] = v0;
  v1 = *MEMORY[0x277CC2760];
  v4[2] = *MEMORY[0x277CC3140];
  v4[3] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];
  v3 = requiredAttributes_sEmbeddingReqAttributes;
  requiredAttributes_sEmbeddingReqAttributes = v2;
}

- (id)processedAttributes
{
  if (processedAttributes_onceEmbToken != -1)
  {
    [SKDEmbeddingProcessor processedAttributes];
  }

  v3 = processedAttributes_sEmbeddingAttributes;

  return v3;
}

void __44__SKDEmbeddingProcessor_processedAttributes__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC30E0];
  v3[0] = *MEMORY[0x277CC2FC8];
  v3[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v2 = processedAttributes_sEmbeddingAttributes;
  processedAttributes_sEmbeddingAttributes = v1;
}

- (BOOL)willProcessRecord:(id)record bundleID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v21.receiver = self;
  v21.super_class = SKDEmbeddingProcessor;
  if ([(SKDRecordProcessor *)&v21 willProcessRecord:recordCopy bundleID:d])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    processedAttributes = [(SKDEmbeddingProcessor *)self processedAttributes];
    v8 = [processedAttributes countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(processedAttributes);
          }

          v12 = [recordCopy objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];

          if (v12)
          {
            logger = [(SKDRecordProcessor *)self logger];
            v15 = +[SKDPipelineEvent alreadyProcessedEvent];
            [logger logEvent:v15 level:6];

            v13 = 0;
            goto LABEL_13;
          }
        }

        v9 = [processedAttributes countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)processRecord:(id)record bundleID:(id)d
{
  v68[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  v8 = [SKDRecordUpdate alloc];
  v9 = [objc_opt_class() description];
  v10 = [(SKDRecordUpdate *)v8 initWithStatus:0 identifier:v9 bundleID:dCopy];

  name = [(SKDRecordProcessor *)self name];
  [(SKDItemUpdate *)v10 setPipeline:name];

  v12 = [recordCopy objectForKey:@"_kMDItemExternalID"];
  v13 = [recordCopy objectForKey:@"_kMDItemProtectionClass"];
  v14 = [recordCopy objectForKeyedSubscript:*MEMORY[0x277CC31A0]];
  -[SKDItemUpdate setTextContentLength:](v10, "setTextContentLength:", [v14 length]);
  v65 = v12;
  v15 = [(SKGProcessor *)self->_processor itemFromRecord:recordCopy referenceIdentifier:v12 bundleIdentifier:dCopy protectionClass:v13];
  context = objc_autoreleasePoolPush();
  logger = [(SKDRecordProcessor *)self logger];
  v17 = [logger trackingEventBeginWithName:@"embeddings" event:v10];

  processor = self->_processor;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __48__SKDEmbeddingProcessor_processRecord_bundleID___block_invoke;
  v66[3] = &unk_27893E2E8;
  v66[4] = self;
  v19 = [(SKGProcessor *)processor generateEmbeddingsForRecord:recordCopy processedItem:v15 isPriority:0 workCost:0 cancelBlock:v66];
  logger2 = [(SKDRecordProcessor *)self logger];
  [logger2 trackingEventEnd:v17];

  if ([(SKDRecordProcessor *)self suspended]|| !v19)
  {
    if ([(SKDRecordProcessor *)self suspended])
    {
      v27 = 3;
    }

    else
    {
      v27 = 1;
    }

    v28 = v10;
  }

  else
  {
    if ([v15 errorProcessingEmbeddings])
    {
      v21 = objc_alloc(MEMORY[0x277CCA9B8]);
      v67 = @"messageInfoKey";
      v68[0] = @"error generating embeddings";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
      v23 = [v21 initWithDomain:@"SKDEmbeddingProcessorErrorDomain" code:-1000 userInfo:v22];

      v24 = [[SKDRecordUpdate alloc] initWithStatus:4 identifier:dCopy info:v23];
      logger3 = [(SKDRecordProcessor *)self logger];
      [logger3 logEvent:v24 level:6];

      v26 = v24;
      goto LABEL_20;
    }

    marker = [(SKDRecordProcessor *)self marker];
    [(SKDItemUpdate *)v10 addAttribute:marker value:MEMORY[0x277CBEC38]];

    if ([v15 didProcessEmbeddings])
    {
      embedding = [v15 embedding];
      if (embedding)
      {
        secondaryEmbeddings = [embedding secondaryEmbeddings];
        v31 = [secondaryEmbeddings count];

        if (v31)
        {
          v58 = objc_alloc(MEMORY[0x277CC3520]);
          format = [embedding format];
          v53 = [embedding size];
          version = [embedding version];
          secondaryEmbeddings2 = [embedding secondaryEmbeddings];
          v59 = [v58 initWithFormat:format dimension:v53 version:version vectors:secondaryEmbeddings2];

          [(SKDItemUpdate *)v10 addAttribute:*MEMORY[0x277CC30E0] value:v59];
          v34 = MEMORY[0x277CCABB0];
          mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
          v36 = [v34 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0], "embeddingModelVersion")}];
          [(SKDItemUpdate *)v10 addAttribute:@"_kMDItemMediaEmbeddingVersion" value:v36];
        }

        primaryEmbeddings = [embedding primaryEmbeddings];
        v38 = [primaryEmbeddings count];

        if (v38)
        {
          v60 = objc_alloc(MEMORY[0x277CC3520]);
          format2 = [embedding format];
          v54 = [embedding size];
          version2 = [embedding version];
          primaryEmbeddings2 = [embedding primaryEmbeddings];
          v61 = [v60 initWithFormat:format2 dimension:v54 version:version2 vectors:primaryEmbeddings2];

          [(SKDItemUpdate *)v10 addAttribute:*MEMORY[0x277CC2FC8] value:v61];
          v41 = MEMORY[0x277CCABB0];
          mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
          v43 = [v41 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0]2, "embeddingModelVersion")}];
          [(SKDItemUpdate *)v10 addAttribute:@"_kMDItemMediaEmbeddingVersion" value:v43];

          v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(embedding, "firstChunkLength")}];
          [(SKDItemUpdate *)v10 addAttribute:@"_kMDItemTextChunkTokenLength" value:v44];
        }

        if ([embedding isFileSystemConsistent])
        {
          v45 = *MEMORY[0x277CC2B50];
          fsIndexDataContentVersion = [embedding fsIndexDataContentVersion];
          [(SKDItemUpdate *)v10 addAttribute:v45 value:fsIndexDataContentVersion];

          v57 = *MEMORY[0x277CC2B40];
          v47 = MEMORY[0x277D65798];
          v48 = MEMORY[0x277CCABB0];
          mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
          v49 = [v48 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0]3, "embeddingModelVersion")}];
          v50 = [v47 embeddingVersionDataWithVersion:v49];
          [(SKDItemUpdate *)v10 addAttribute:v57 value:v50];
        }
      }
    }

    v28 = v10;
    v27 = 2;
  }

  [(SKDEvent *)v28 updateStatus:v27];
  logger4 = [(SKDRecordProcessor *)self logger];
  [logger4 logEvent:v10 level:6];

  v26 = v10;
LABEL_20:

  objc_autoreleasePoolPop(context);

  return v26;
}

- (void)load
{
  logger = [(SKDRecordProcessor *)self logger];
  v4 = +[SKDPipelineEvent loadStartedEvent];
  v8 = [logger trackingEventBeginWithName:@"embeddings" event:v4];

  LOBYTE(v4) = [(SKGProcessor *)self->_processor loadEmbedder];
  logger2 = [(SKDRecordProcessor *)self logger];
  if (v4)
  {
    +[SKDPipelineEvent loadSuceededEvent];
  }

  else
  {
    +[SKDPipelineEvent loadFailedEvent];
  }
  v6 = ;
  [logger2 logEvent:v6];

  logger3 = [(SKDRecordProcessor *)self logger];
  [logger3 trackingEventEnd:v8];
}

@end