@interface SpotlightKnowledge
+ (BOOL)processLegacyPipelinesReportWithCancelBlock:(id)block;
+ (void)initialize;
+ (void)runWithJobContext:(id)context group:(id)group delegate:(id)delegate;
+ (void)runWithJobContext:(id)context queue:(id)queue group:(id)group progressBlock:(id)block checkpointBlock:(id)checkpointBlock completeBlock:(id)completeBlock cancelBlock:(id)cancelBlock deferBlock:(id)self0;
- (BOOL)addProcessedItem:(id)item cancelBlock:(id)block;
- (BOOL)addProcessedPerson:(id)person group:(id)group cancelBlock:(id)block;
- (BOOL)analyzeGraphWithCancelBlock:(id)block;
- (BOOL)canProcessItemAttributes:(id)attributes bundleIdentifier:(id)identifier protectionClass:(id)class;
- (BOOL)flushGraphWithGroup:(id)group cancelBlock:(id)block;
- (BOOL)graphNeedsAnalysis;
- (BOOL)loadGraphWithGroup:(id)group cancelBlock:(id)block;
- (BOOL)processAttributesWithJobContext:(id)context group:(id)group cancelBlock:(id)block;
- (BOOL)processCSArchivesWithGroup:(id)group protectionClasses:(id)classes shouldRemove:(BOOL)remove archiverNextPathBlock:(id)block processedPathBlock:(id)pathBlock processedItemsBlock:(id)itemsBlock errorLogBlock:(id)logBlock cancelBlock:(id)self0;
- (BOOL)processCSJournalsWithGroup:(id)group protectionClasses:(id)classes includeEmbeddings:(BOOL)embeddings includeKeyphrases:(BOOL)keyphrases shouldRemove:(BOOL)remove readerNextPathBlock:(id)block deletedReferencesBlock:(id)referencesBlock processedPathBlock:(id)self0 processedItemsBlock:(id)self1 errorLogBlock:(id)self2 cancelBlock:(id)self3;
- (BOOL)processDeletesWithJobContext:(id)context group:(id)group cancelBlock:(id)block;
- (BOOL)processDocumentUnderstandingReportWithJobContext:(id)context cancelBlock:(id)block;
- (BOOL)processEmbeddingsReportWithJobContext:(id)context progressBlock:(id)block checkpointBlock:(id)checkpointBlock cancelBlock:(id)cancelBlock;
- (BOOL)processGraphWithGroup:(id)group cancelBlock:(id)block;
- (BOOL)processPeopleWithGroup:(id)group cancelBlock:(id)block;
- (BOOL)processSuggestedEventsReportWithJobContext:(id)context cancelBlock:(id)block;
- (BOOL)processTextWithJobContext:(id)context group:(id)group cancelBlock:(id)block;
- (BOOL)removeGraphEntitiesWithCancelBlock:(id)block;
- (BOOL)removeGraphPeopleWithCancelBlock:(id)block;
- (BOOL)removeReferences:(id)references bundleIdentifier:(id)identifier cancelBlock:(id)block;
- (BOOL)scoreGraphWithCancelBlock:(id)block;
- (BOOL)updateSpotlightContactsWithJobContext:(id)context group:(id)group cancelBlock:(id)block;
- (SpotlightKnowledge)initWithJobContext:(id)context;
- (id)coreSpotlightIndexWithBundleIdentifier:(id)identifier protectionClass:(id)class;
- (id)coreSpotlightItemWithAttributes:(id)attributes referenceIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (id)peopleAttributesWithProcessedItem:(id)item;
- (id)timerWithBlock:(id)block;
- (void)runWithGroup:(id)group delegate:(id)delegate;
- (void)runWithQueue:(id)queue group:(id)group progressBlock:(id)block checkpointBlock:(id)checkpointBlock completeBlock:(id)completeBlock cancelBlock:(id)cancelBlock deferBlock:(id)deferBlock;
- (void)sendAnalytics;
- (void)unloadGraphWithGroup:(id)group cancelBlock:(id)block;
- (void)updateCoreSpotlightWithItems:(id)items index:(id)index group:(id)group cancelBlock:(id)block;
@end

@implementation SpotlightKnowledge

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SpotlightKnowledge_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken_0 != -1)
  {
    dispatch_once(&initialize_onceToken_0, block);
  }
}

void __32__SpotlightKnowledge_initialize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 == objc_opt_class())
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.spotlight.SpotlightKnowledge.Timer", v4);
    v3 = gTimerQueue;
    gTimerQueue = v2;
  }
}

+ (void)runWithJobContext:(id)context queue:(id)queue group:(id)group progressBlock:(id)block checkpointBlock:(id)checkpointBlock completeBlock:(id)completeBlock cancelBlock:(id)cancelBlock deferBlock:(id)self0
{
  deferBlockCopy = deferBlock;
  cancelBlockCopy = cancelBlock;
  completeBlockCopy = completeBlock;
  checkpointBlockCopy = checkpointBlock;
  blockCopy = block;
  groupCopy = group;
  queueCopy = queue;
  contextCopy = context;
  v24 = [[SpotlightKnowledge alloc] initWithJobContext:contextCopy];

  [(SpotlightKnowledge *)v24 runWithQueue:queueCopy group:groupCopy progressBlock:blockCopy checkpointBlock:checkpointBlockCopy completeBlock:completeBlockCopy cancelBlock:cancelBlockCopy deferBlock:deferBlockCopy];
}

+ (void)runWithJobContext:(id)context group:(id)group delegate:(id)delegate
{
  delegateCopy = delegate;
  groupCopy = group;
  contextCopy = context;
  v10 = [[SpotlightKnowledge alloc] initWithJobContext:contextCopy];

  [(SpotlightKnowledge *)v10 runWithGroup:groupCopy delegate:delegateCopy];
}

- (SpotlightKnowledge)initWithJobContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = SpotlightKnowledge;
  v6 = [(SpotlightKnowledge *)&v10 init];
  v7 = v6;
  if (v6)
  {
    spotlightGraph = v6->_spotlightGraph;
    v6->_spotlightGraph = 0;

    objc_storeStrong(&v7->_spotlightContext, context);
  }

  return v7;
}

- (BOOL)loadGraphWithGroup:(id)group cancelBlock:(id)block
{
  groupCopy = group;
  blockCopy = block;
  spotlightGraph = self->_spotlightGraph;
  if (spotlightGraph)
  {
    [(SpotlightGraph *)spotlightGraph closeWithCancelBlock:blockCopy];
    v9 = self->_spotlightGraph;
    self->_spotlightGraph = 0;
  }

  spotlightContext = [(SpotlightKnowledge *)self spotlightContext];
  spotlightKnowledgeGraphConfigPath = [spotlightContext spotlightKnowledgeGraphConfigPath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [defaultManager fileExistsAtPath:spotlightKnowledgeGraphConfigPath];

  v14 = [SKGConfig alloc];
  v15 = v14;
  if (v13)
  {
    v16 = [(SKGConfig *)v14 initWithConfigPath:spotlightKnowledgeGraphConfigPath];
  }

  else
  {
    spotlightKnowledgeGraphPath = [spotlightContext spotlightKnowledgeGraphPath];
    v16 = -[SKGConfig initWithConfigPath:resourceDirectoryPath:resourceVersion:](v15, "initWithConfigPath:resourceDirectoryPath:resourceVersion:", spotlightKnowledgeGraphConfigPath, spotlightKnowledgeGraphPath, [spotlightContext graphVersion]);
  }

  v18 = [[SpotlightGraph alloc] initWithConfig:v16];
  v19 = self->_spotlightGraph;
  self->_spotlightGraph = v18;

  [(SpotlightGraph *)self->_spotlightGraph openWithCancelBlock:blockCopy];
  if (![(SpotlightGraph *)self->_spotlightGraph available])
  {
    spotlightContext2 = [(SpotlightKnowledge *)self spotlightContext];
    [spotlightContext2 logError:4 message:@"graph unavailable"];

    v21 = self->_spotlightGraph;
    self->_spotlightGraph = 0;
  }

  spotlightGraphAvailable = [(SpotlightKnowledge *)self spotlightGraphAvailable];

  return spotlightGraphAvailable;
}

- (void)unloadGraphWithGroup:(id)group cancelBlock:(id)block
{
  spotlightGraph = self->_spotlightGraph;
  if (spotlightGraph)
  {
    [(SpotlightGraph *)spotlightGraph closeWithCancelBlock:block];
    v6 = self->_spotlightGraph;
    self->_spotlightGraph = 0;
  }
}

- (id)peopleAttributesWithProcessedItem:(id)item
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  v7 = [v5 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0], "knowledgeVersion")}];
  [v4 setObject:v7 forKey:@"_kMDItemKnowledgeIndexVersion"];

  v8 = MEMORY[0x277CCABB0];
  spotlightContext = [(SpotlightKnowledge *)self spotlightContext];
  v10 = [v8 numberWithInteger:{objc_msgSend(spotlightContext, "graphVersion")}];
  [v4 setObject:v10 forKey:@"_kMDItemKnowledgeUpdaterVersion"];

  v11 = objc_alloc_init(MEMORY[0x277CC34B8]);
  [v11 addAttributesFromDictionary:v4];

  return v11;
}

- (id)coreSpotlightItemWithAttributes:(id)attributes referenceIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  v7 = MEMORY[0x277CC34B0];
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  attributesCopy = attributes;
  v11 = [[v7 alloc] initWithUniqueIdentifier:identifierCopy domainIdentifier:0 attributeSet:attributesCopy];

  [v11 setBundleID:bundleIdentifierCopy];
  [v11 setIsUpdate:1];

  return v11;
}

- (id)coreSpotlightIndexWithBundleIdentifier:(id)identifier protectionClass:(id)class
{
  identifierCopy = identifier;
  classCopy = class;
  if (coreSpotlightIndexWithBundleIdentifier_protectionClass__onceIndexToken != -1)
  {
    [SpotlightKnowledge coreSpotlightIndexWithBundleIdentifier:protectionClass:];
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes objectForKeyedSubscript:identifierCopy];

  if (!v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes setObject:dictionary forKeyedSubscript:identifierCopy];
  }

  v10 = [coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes objectForKeyedSubscript:identifierCopy];
  v11 = [v10 objectForKeyedSubscript:classCopy];

  if (v11)
  {
    v12 = [coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes objectForKeyedSubscript:identifierCopy];
    v13 = [v12 objectForKeyedSubscript:classCopy];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"KnowledgeIndex" protectionClass:classCopy bundleIdentifier:identifierCopy];
    v12 = [coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes objectForKeyedSubscript:identifierCopy];
    [v12 setObject:v13 forKey:classCopy];
  }

  objc_autoreleasePoolPop(v7);

  return v13;
}

void __77__SpotlightKnowledge_coreSpotlightIndexWithBundleIdentifier_protectionClass___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes;
  coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes = v0;
}

- (void)updateCoreSpotlightWithItems:(id)items index:(id)index group:(id)group cancelBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  indexCopy = index;
  groupCopy = group;
  blockCopy = block;
  if (indexCopy && [itemsCopy count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = [itemsCopy count];
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: indexing %lu items", buf, 0xCu);
    }

    dispatch_group_enter(groupCopy);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75__SpotlightKnowledge_updateCoreSpotlightWithItems_index_group_cancelBlock___block_invoke;
    v13[3] = &unk_27893E840;
    v14 = groupCopy;
    [indexCopy indexSearchableItems:itemsCopy completionHandler:v13];
  }
}

void __75__SpotlightKnowledge_updateCoreSpotlightWithItems_index_group_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __75__SpotlightKnowledge_updateCoreSpotlightWithItems_index_group_cancelBlock___block_invoke_cold_1(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)addProcessedItem:(id)item cancelBlock:(id)block
{
  if (!item)
  {
    return 1;
  }

  blockCopy = block;
  itemCopy = item;
  spotlightGraph = [(SpotlightKnowledge *)self spotlightGraph];
  v9 = [spotlightGraph addItem:itemCopy cancelBlock:blockCopy];

  return v9;
}

- (BOOL)addProcessedPerson:(id)person group:(id)group cancelBlock:(id)block
{
  if (!person)
  {
    return 1;
  }

  blockCopy = block;
  personCopy = person;
  spotlightGraph = [(SpotlightKnowledge *)self spotlightGraph];
  v10 = [spotlightGraph addPerson:personCopy cancelBlock:blockCopy];

  return v10;
}

- (BOOL)canProcessItemAttributes:(id)attributes bundleIdentifier:(id)identifier protectionClass:(id)class
{
  attributesCopy = attributes;
  identifierCopy = identifier;
  classCopy = class;
  if ([attributesCopy count] && (objc_msgSend(MEMORY[0x277D65798], "sharedProcessor"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "recordIsValid:", attributesCopy), v11, v12))
  {
    mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
    v14 = [mEMORY[0x277D65798] copyReferenceIdentifierFromRecord:attributesCopy];

    if (v14)
    {
      if (classCopy)
      {
        v15 = classCopy;
      }

      else
      {
        mEMORY[0x277D65798]2 = [MEMORY[0x277D65798] sharedProcessor];
        v15 = [mEMORY[0x277D65798]2 copyProtectionClassFromRecord:attributesCopy];
      }

      if ([v15 length])
      {
        if (identifierCopy)
        {
          v18 = identifierCopy;
        }

        else
        {
          mEMORY[0x277D65798]3 = [MEMORY[0x277D65798] sharedProcessor];
          v18 = [mEMORY[0x277D65798]3 copyBundleIdentifierFromRecord:attributesCopy];
        }

        if ([v18 length])
        {
          spotlightGraph = [(SpotlightKnowledge *)self spotlightGraph];
          v16 = [spotlightGraph containsReference:v14 personaIdentifier:0 protectionClass:v15 domainIdentifier:v18] ^ 1;
        }

        else
        {
          LOBYTE(v16) = 0;
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)removeReferences:(id)references bundleIdentifier:(id)identifier cancelBlock:(id)block
{
  referencesCopy = references;
  identifierCopy = identifier;
  blockCopy = block;
  if (identifierCopy && [referencesCopy count])
  {
    spotlightGraph = [(SpotlightKnowledge *)self spotlightGraph];
    if ([spotlightGraph available])
    {
      v12 = [spotlightGraph deleteReferences:referencesCopy domainIdentifier:identifierCopy cancelBlock:blockCopy];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)removeGraphPeopleWithCancelBlock:(id)block
{
  blockCopy = block;
  spotlightGraph = [(SpotlightKnowledge *)self spotlightGraph];
  v6 = [spotlightGraph deletePeopleWithCancelBlock:blockCopy];

  return v6;
}

- (BOOL)removeGraphEntitiesWithCancelBlock:(id)block
{
  blockCopy = block;
  spotlightGraph = [(SpotlightKnowledge *)self spotlightGraph];
  v6 = [spotlightGraph deleteEntitiesWithCancelBlock:blockCopy];

  return v6;
}

- (BOOL)graphNeedsAnalysis
{
  spotlightGraph = [(SpotlightKnowledge *)self spotlightGraph];
  hasPeople = [spotlightGraph hasPeople];

  return hasPeople ^ 1;
}

- (BOOL)analyzeGraphWithCancelBlock:(id)block
{
  blockCopy = block;
  spotlightGraph = [(SpotlightKnowledge *)self spotlightGraph];
  v6 = [spotlightGraph analyzePeopleWithCancelBlock:blockCopy];

  return v6;
}

- (BOOL)scoreGraphWithCancelBlock:(id)block
{
  blockCopy = block;
  spotlightGraph = [(SpotlightKnowledge *)self spotlightGraph];
  v6 = [spotlightGraph scorePeopleWithCancelBlock:blockCopy];

  return v6;
}

- (BOOL)updateSpotlightContactsWithJobContext:(id)context group:(id)group cancelBlock:(id)block
{
  v45 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  groupCopy = group;
  blockCopy = block;
  if (updateSpotlightContactsWithJobContext_group_cancelBlock__onceToken != -1)
  {
    [SpotlightKnowledge updateSpotlightContactsWithJobContext:group:cancelBlock:];
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v10 = objc_autoreleasePoolPush();
  v11 = *MEMORY[0x277CCA1A0];
  v12 = objc_alloc(MEMORY[0x277CC34A8]);
  knowledgeIndexIdentifier = [contextCopy knowledgeIndexIdentifier];
  v14 = [v12 initWithName:@"KnowledgeIndex" protectionClass:v11 bundleIdentifier:knowledgeIndexIdentifier];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: clearing spotlight knowledge", buf, 2u);
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_35;
  v38[3] = &unk_27893F1D8;
  v38[4] = &v39;
  [v14 deleteAllSearchableItemsWithCompletionHandler:v38];
  if (*(v40 + 24) == 1)
  {
    *buf = 0;
    v33 = buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__24;
    v36 = __Block_byref_object_dispose__24;
    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    spotlightGraph = [(SpotlightKnowledge *)self spotlightGraph];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_37;
    v26[3] = &unk_27893F200;
    v30 = buf;
    v26[4] = self;
    v16 = v14;
    v27 = v16;
    v17 = groupCopy;
    v28 = v17;
    v18 = blockCopy;
    v29 = v18;
    v31 = &v39;
    [spotlightGraph enumeratePeopleUsingBlock:v26];
    if (*(v40 + 24) == 1 && [*(v33 + 5) count])
    {
      v24 = blockCopy;
      v19 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*(v33 + 5) count];
        *v43 = 134217984;
        v44 = v21;
        _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: indexing %lu items", v43, 0xCu);
      }

      blockCopy = v24;
      [(SpotlightKnowledge *)self updateCoreSpotlightWithItems:*(v33 + 5) index:v16 group:v17 cancelBlock:v18];
    }

    _Block_object_dispose(buf, 8);
  }

  objc_autoreleasePoolPop(v10);
  v22 = *(v40 + 24);
  _Block_object_dispose(&v39, 8);

  return v22 & 1;
}

void __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke()
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17[0] = SKGKnowledgePersonEmailAddresses;
  v0 = *MEMORY[0x277CC2788];
  v15[0] = @"primary";
  v15[1] = @"alternate";
  v1 = *MEMORY[0x277CC2400];
  v16[0] = v0;
  v16[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v2;
  v17[1] = SKGKnowledgePersonPhoneNumbers;
  v3 = *MEMORY[0x277CC2EB8];
  v13[0] = @"primary";
  v13[1] = @"alternate";
  v4 = *MEMORY[0x277CC2410];
  v14[0] = v3;
  v14[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v18[1] = v5;
  v17[2] = SKGKnowledgePersonNames;
  v6 = *MEMORY[0x277CC25F8];
  v11[0] = @"primary";
  v11[1] = @"alternate";
  v7 = *MEMORY[0x277CC2408];
  v12[0] = v6;
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v18[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v10 = updateSpotlightContactsWithJobContext_group_cancelBlock__sKeyMap;
  updateSpotlightContactsWithJobContext_group_cancelBlock__sKeyMap = v9;
}

void __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_35_cold_1(v3);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_37(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v126 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [v7 objectForKeyedSubscript:@"com.apple.spotlight"];
  v85 = [v9 objectForKeyedSubscript:SKGKnowledgePersonDisplayName];
  v84 = [v9 objectForKeyedSubscript:@"score"];
  v91 = v9;
  v10 = [v9 objectForKeyedSubscript:SKGKnowledgePersonContactIdentifiers];
  v73 = v10;
  if ([v10 count])
  {
    v11 = [v10 firstObject];
    v12 = [v11 objectForKey:@"value"];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v91 objectForKeyedSubscript:SKGKnowledgePersonEntityIdentifiers];
  v72 = v13;
  if ([v13 count])
  {
    v14 = [v13 firstObject];
    v83 = [v14 objectForKey:@"value"];
  }

  else
  {
    v83 = 0;
  }

  v15 = [v91 objectForKeyedSubscript:SKGKnowledgePersonPhotosIdentifiers];
  v74 = v8;
  v71 = v15;
  if ([v15 count])
  {
    v16 = [v15 firstObject];
    v87 = [v16 objectForKey:@"value"];
  }

  else
  {
    v87 = 0;
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = v7;
  v86 = [obj countByEnumeratingWithState:&v115 objects:v125 count:16];
  if (v86)
  {
    v98 = 0;
    v99 = 0;
    v97 = 0;
    v78 = *MEMORY[0x277CC2E90];
    v79 = *v116;
    v76 = *MEMORY[0x277CC25F0];
    v77 = *MEMORY[0x277CC2E88];
    v81 = a1;
    v82 = v6;
    v80 = v12;
    do
    {
      v17 = 0;
      do
      {
        if (*v116 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v88 = *(*(&v115 + 1) + 8 * v17);
        v89 = v17;
        v101 = [v88 isEqualToString:@"com.apple.spotlight"];
        v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v90 = updateSpotlightContactsWithJobContext_group_cancelBlock__sKeyMap;
        v93 = [v90 countByEnumeratingWithState:&v111 objects:v124 count:16];
        if (v93)
        {
          v96 = 0;
          v100 = 0;
          v92 = *v112;
          while (1)
          {
            v19 = 0;
            do
            {
              if (*v112 != v92)
              {
                objc_enumerationMutation(v90);
              }

              v94 = v19;
              v20 = *(*(&v111 + 1) + 8 * v19);
              v107 = 0u;
              v108 = 0u;
              v109 = 0u;
              v110 = 0u;
              v95 = [v91 objectForKeyedSubscript:v20];
              v21 = [v95 countByEnumeratingWithState:&v107 objects:v123 count:16];
              if (v21)
              {
                v22 = v21;
                v102 = *v108;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v108 != v102)
                    {
                      objc_enumerationMutation(v95);
                    }

                    v24 = *(*(&v107 + 1) + 8 * i);
                    v25 = [v24 objectForKeyedSubscript:@"ambiguous"];
                    v26 = [v25 BOOLValue];

                    v27 = [v24 objectForKeyedSubscript:@"count"];
                    v28 = [v27 intValue];

                    v29 = [v24 objectForKeyedSubscript:@"in"];
                    v30 = [v29 intValue];

                    v31 = [v24 objectForKeyedSubscript:@"out"];
                    v32 = [v31 intValue];

                    v33 = [v24 objectForKeyedSubscript:@"value"];
                    if (v101)
                    {
                      v97 += v30;
                      v98 += v32;
                      v99 += v28;
                    }

                    v34 = vcvtd_n_f64_s32(v30, 2uLL) + v28 * 0.5 + v32 * 0.25;
                    v35 = [updateSpotlightContactsWithJobContext_group_cancelBlock__sKeyMap objectForKeyedSubscript:v20];
                    v36 = v35;
                    if (v26)
                    {
                      v37 = [v35 objectForKeyedSubscript:@"alternate"];

                      v38 = [v18 objectForKeyedSubscript:v37];

                      if (!v38)
                      {
                        v39 = [MEMORY[0x277CBEB38] dictionary];
                        [v18 setObject:v39 forKey:v37];
                      }

                      v40 = [v18 objectForKeyedSubscript:v37];
                      v41 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
                      [v40 setObject:v41 forKey:v33];

                      if ([v20 isEqualToString:SKGKnowledgePersonEmailAddresses])
                      {
                        goto LABEL_37;
                      }
                    }

                    else
                    {
                      v42 = [v35 objectForKeyedSubscript:@"primary"];

                      v43 = [v18 objectForKeyedSubscript:v42];

                      if (!v43)
                      {
                        v44 = [MEMORY[0x277CBEB38] dictionary];
                        [v18 setObject:v44 forKey:v42];
                      }

                      v45 = [v18 objectForKeyedSubscript:v42];
                      v46 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
                      [v45 setObject:v46 forKey:v33];

                      if ([v20 isEqualToString:SKGKnowledgePersonEmailAddresses])
                      {
                        if (v30 && !v32)
                        {
LABEL_37:
                          ++v96;
                        }

                        ++v100;
                      }
                    }
                  }

                  v22 = [v95 countByEnumeratingWithState:&v107 objects:v123 count:16];
                }

                while (v22);
              }

              v19 = v94 + 1;
            }

            while (v94 + 1 != v93);
            v93 = [v90 countByEnumeratingWithState:&v111 objects:v124 count:16];
            if (!v93)
            {
              goto LABEL_45;
            }
          }
        }

        v96 = 0;
        v100 = 0;
LABEL_45:

        v47 = objc_alloc_init(MEMORY[0x277CC34B8]);
        v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v49 = v48;
        if (v100 && v100 == v96)
        {
          [v48 setObject:@"ml" forKey:@"com_apple_spotlight_contacts_type"];
        }

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v50 = v18;
        v51 = [v50 countByEnumeratingWithState:&v103 objects:v122 count:16];
        a1 = v81;
        if (v51)
        {
          v52 = v51;
          v53 = *v104;
          do
          {
            for (j = 0; j != v52; ++j)
            {
              if (*v104 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v55 = *(*(&v103 + 1) + 8 * j);
              v56 = [v50 objectForKeyedSubscript:v55];
              v57 = [v56 keysSortedByValueUsingComparator:&__block_literal_global_67_0];

              [v49 setObject:v57 forKey:v55];
            }

            v52 = [v50 countByEnumeratingWithState:&v103 objects:v122 count:16];
          }

          while (v52);
        }

        [v49 setObject:v84 forKey:v78];
        v6 = v82;
        [v49 setObject:v82 forKey:v77];
        v58 = [MEMORY[0x277CCABB0] numberWithInteger:v97];
        [v49 setObject:v58 forKey:@"_kMDItemPersonInCount"];

        v59 = [MEMORY[0x277CCABB0] numberWithInteger:v98];
        [v49 setObject:v59 forKey:@"_kMDItemPersonOutCount"];

        v60 = [MEMORY[0x277CCABB0] numberWithInteger:v99];
        [v49 setObject:v60 forKey:@"_kMDItemPersonCount"];

        v61 = MEMORY[0x277CCABB0];
        v62 = [MEMORY[0x277D657A0] sharedContext];
        v63 = [v61 numberWithInteger:{objc_msgSend(v62, "knowledgeVersion")}];
        [v49 setObject:v63 forKey:@"_kMDItemPersonVersion"];

        v12 = v80;
        if (v80)
        {
          [v49 setObject:v80 forKey:v76];
        }

        if (v83)
        {
          [v49 setObject:v83 forKey:@"_kMDItemPersonEntityIdentifier"];
        }

        if (((v87 != 0) & v101) == 1)
        {
          [v49 setObject:v87 forKey:@"_kMDItemPersonPhotosIdentifier"];
        }

        v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.contact", v88];
        v121[0] = v64;
        v121[1] = @"public.contact";
        v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:2];
        [v49 setObject:v64 forKey:@"kMDItemContentType"];
        [v49 setObject:v65 forKey:@"kMDItemContentTypeTree"];
        [v47 addAttributesFromDictionary:v49];
        [v47 setDisplayName:v85];
        v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v88, v82];
        v67 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v66 domainIdentifier:v88 attributeSet:v47];
        [*(*(*(v81 + 64) + 8) + 40) addObject:v67];

        v17 = v89 + 1;
      }

      while (v89 + 1 != v86);
      v86 = [obj countByEnumeratingWithState:&v115 objects:v125 count:16];
    }

    while (v86);
  }

  if ([*(*(*(a1 + 64) + 8) + 40) count] >= 0x64)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v68 = [*(*(*(a1 + 64) + 8) + 40) count];
      *buf = 134217984;
      v120 = v68;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: indexing %lu items", buf, 0xCu);
    }

    v69 = [*(*(*(a1 + 64) + 8) + 40) copy];
    [*(a1 + 32) updateCoreSpotlightWithItems:v69 index:*(a1 + 40) group:*(a1 + 48) cancelBlock:*(a1 + 56)];
    [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
  }

  objc_autoreleasePoolPop(v74);
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

uint64_t __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 doubleValue];
  v6 = v5;
  [v4 doubleValue];
  v8 = v7;

  if (v6 < v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (BOOL)flushGraphWithGroup:(id)group cancelBlock:(id)block
{
  blockCopy = block;
  spotlightGraph = [(SpotlightKnowledge *)self spotlightGraph];
  if ([spotlightGraph available])
  {
    v7 = [spotlightGraph flushWithCancelBlock:blockCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)processCSJournalsWithGroup:(id)group protectionClasses:(id)classes includeEmbeddings:(BOOL)embeddings includeKeyphrases:(BOOL)keyphrases shouldRemove:(BOOL)remove readerNextPathBlock:(id)block deletedReferencesBlock:(id)referencesBlock processedPathBlock:(id)self0 processedItemsBlock:(id)self1 errorLogBlock:(id)self2 cancelBlock:(id)self3
{
  removeCopy = remove;
  v91 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  classesCopy = classes;
  blockCopy = block;
  referencesBlockCopy = referencesBlock;
  v18 = blockCopy;
  pathBlockCopy = pathBlock;
  itemsBlockCopy = itemsBlock;
  logBlockCopy = logBlock;
  cancelBlockCopy = cancelBlock;
  spotlightContext = [(SpotlightKnowledge *)self spotlightContext];
  context = objc_autoreleasePoolPush();
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 1;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = classesCopy;
  v20 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v20)
  {
    v49 = *v83;
    v21 = 1;
LABEL_3:
    v48 = v20;
    v22 = 0;
    while (1)
    {
      if (*v83 != v49)
      {
        objc_enumerationMutation(obj);
      }

      if ((v21 & 1) == 0)
      {
        break;
      }

      v61 = *(*(&v82 + 1) + 8 * v22);
      if (cancelBlockCopy[2](cancelBlockCopy, @"processCSJournalsWithQueryID:protectionClass"))
      {
        *(v87 + 24) = 0;
        break;
      }

      if (v18)
      {
        v23 = v18[2](v18, v61);
        if (v23)
        {
          v24 = [[SKGJournalReader alloc] initWithResourceDirectoryPath:v23];
          v25 = v24;
          if (v24)
          {
            journalPaths = [(SKGJournalReader *)v24 journalPaths];
          }

          else
          {
            journalPaths = 0;
          }
        }

        else
        {
          journalPaths = 0;
          v25 = 0;
        }
      }

      else
      {
        journalPaths = 0;
        v25 = 0;
        v23 = 0;
      }

      v51 = v22;
      v52 = v23;
      v53 = journalPaths;
      if ([journalPaths count])
      {
        firstObject = [journalPaths keysSortedByValueUsingSelector:sel_compare_];
        v28 = [firstObject mutableCopy];
        v21 = 1;
LABEL_17:

        while ([v28 count])
        {
          if (cancelBlockCopy[2](cancelBlockCopy, @"processCSJournalsWithQueryID:journal"))
          {
            *(v87 + 24) = 0;
            break;
          }

          v29 = objc_autoreleasePoolPush();
          v30 = v18;
          v76 = 0;
          v77 = &v76;
          v78 = 0x3032000000;
          v79 = __Block_byref_object_copy__24;
          v80 = __Block_byref_object_dispose__24;
          v81 = 0;
          firstObject = [v28 firstObject];
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke;
          v68[3] = &unk_27893F250;
          embeddingsCopy = embeddings;
          keyphrasesCopy = keyphrases;
          v72 = &v86;
          v73 = &v76;
          v68[4] = v61;
          v31 = cancelBlockCopy;
          v70 = v31;
          v69 = spotlightContext;
          v32 = itemsBlockCopy;
          v71 = v32;
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_3;
          v65[3] = &unk_27893F278;
          v67 = &v86;
          v33 = v31;
          v66 = v33;
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_4;
          v62[3] = &unk_27893F2A0;
          v64 = &v86;
          v63 = referencesBlockCopy;
          v21 = [(SKGJournalReader *)v25 enumerateItemsOfJournalAtPath:firstObject itemAdds:v68 itemUpdates:v65 itemDeletes:v62 cancelBlock:v33];
          if ([v77[5] count])
          {
            v34 = (*(itemsBlockCopy + 2))(v32, v77[5]);
            *(v87 + 24) = v34;
            v35 = v77[5];
            v77[5] = 0;
          }

          v18 = v30;
          _Block_object_dispose(&v76, 8);

          objc_autoreleasePoolPop(v29);
          if ((v21 & 1) == 0)
          {
            v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not read journal path for %@", v61];
            v41 = logBlockCopy[2](logBlockCopy, 8, v40);
            *(v87 + 24) = v41;

            [v28 removeObject:firstObject];
            goto LABEL_17;
          }

          v36 = *(v87 + 24);
          if (v36 == 1 && firstObject)
          {
            lastPathComponent = [firstObject lastPathComponent];
            v38 = pathBlockCopy[2](pathBlockCopy, v61, lastPathComponent);
            *(v87 + 24) = v38;

            if ((v87[3] & 1) == 0)
            {

LABEL_37:
              v21 = 1;
              break;
            }

            if (removeCopy && ![(SKGJournalReader *)v25 removeJournalPath:firstObject error:0])
            {
              v39 = logBlockCopy[2](logBlockCopy, 9, @"could not delete journal path");
              *(v87 + 24) = v39;
            }

            [v28 removeObject:firstObject];
            LOBYTE(v36) = *(v87 + 24);
          }

          else
          {
          }

          if ((v36 & 1) == 0)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v21 = 1;
      }

      v42 = *(v87 + 24);

      if ((v42 & 1) == 0)
      {
        break;
      }

      ++v22;
      if (v51 + 1 == v48)
      {
        v20 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
        if (v20)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v43 = *(v87 + 24);
  _Block_object_dispose(&v86, 8);
  objc_autoreleasePoolPop(context);

  return v43 & 1;
}

void __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = v8;
  v11 = [MEMORY[0x277D65798] sharedProcessor];
  v12 = [v11 recordIsValid:v10];

  if (v12)
  {
    if (*(a1 + 80) == 1 && ([MEMORY[0x277D65798] sharedProcessor], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "needsEmbeddingsForRecord:bundleID:", v10, v7), v13, (*(a1 + 80) & 1) != 0))
    {
      v15 = [MEMORY[0x277D65798] sharedProcessor];
      v16 = [v15 shouldGenerateEmbeddingsForRecord:v10 bundleID:v7];

      if ((v14 & v16) != 0)
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    if (*(a1 + 81) == 1 && ([MEMORY[0x277D65798] sharedProcessor], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "needsKeyphrasesForRecord:bundleID:", v10, v7), v18, (*(a1 + 81) & 1) != 0))
    {
      v20 = [MEMORY[0x277D65798] sharedProcessor];
      v21 = [v20 shouldGenerateKeyphrasesForRecord:v10 bundleID:v7];

      v22 = v19 & v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v23 = v17 | 4;
    }

    else
    {
      v23 = v17;
    }

    v24 = [MEMORY[0x277D65798] sharedProcessor];
    v25 = *(a1 + 32);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_2;
    v33[3] = &unk_27893F228;
    v35 = *(a1 + 72);
    v34 = *(a1 + 48);
    *(*(*(a1 + 64) + 8) + 24) = [v24 enumerateProcessedItemsFromRecord:v10 referenceIdentifier:0 bundleIdentifier:v7 protectionClass:v25 processorFlags:v23 processedItemBlock:v33 cancelBlock:*(a1 + 48)];
  }

  v26 = [*(*(*(a1 + 72) + 8) + 40) count];
  if (v26 >= [*(a1 + 40) maxItemCountPerBatch])
  {
    *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 56) + 16))();
    v27 = *(*(a1 + 72) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = 0;
  }

  v29 = *(a1 + 48);
  v30 = *(*(a1 + 64) + 8);
  v31 = *(v30 + 24);
  if (v29 && (v31 & 1) != 0)
  {
    v32 = (*(v29 + 16))(v29, @"processCSJournalsWithQueryID:item") ^ 1;
    v30 = *(*(a1 + 64) + 8);
  }

  else
  {
    v32 = v31 != 0;
  }

  *(v30 + 24) = v32;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v9);
}

uint64_t __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v4 addObject:v3];
  v8 = (*(*(a1 + 32) + 16))();

  return v8 ^ 1u;
}

uint64_t __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t __224__SpotlightKnowledge_processCSJournalsWithGroup_protectionClasses_includeEmbeddings_includeKeyphrases_shouldRemove_readerNextPathBlock_deletedReferencesBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

- (BOOL)processCSArchivesWithGroup:(id)group protectionClasses:(id)classes shouldRemove:(BOOL)remove archiverNextPathBlock:(id)block processedPathBlock:(id)pathBlock processedItemsBlock:(id)itemsBlock errorLogBlock:(id)logBlock cancelBlock:(id)self0
{
  removeCopy = remove;
  v101 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  classesCopy = classes;
  blockCopy = block;
  pathBlockCopy = pathBlock;
  itemsBlockCopy = itemsBlock;
  logBlockCopy = logBlock;
  cancelBlockCopy = cancelBlock;
  spotlightContext = [(SpotlightKnowledge *)self spotlightContext];
  v55 = objc_autoreleasePoolPush();
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = classesCopy;
  v61 = [obj countByEnumeratingWithState:&v95 objects:v100 count:16];
  if (v61)
  {
    v59 = *v96;
    v17 = &selRef_primitiveString;
    do
    {
      v64 = 0;
      v57 = v17[268];
      do
      {
        if (*v96 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v75 = *(*(&v95 + 1) + 8 * v64);
        if (cancelBlockCopy[2](cancelBlockCopy, @"processCSArchivesWithGroup:protectionClass"))
        {
LABEL_71:
          v52 = 0;
          goto LABEL_72;
        }

        archivePaths = blockCopy;
        if (!blockCopy)
        {
          goto LABEL_12;
        }

        v67 = blockCopy[2]();
        if (!v67)
        {
          archivePaths = 0;
LABEL_12:
          v65 = 0;
          v67 = 0;
          goto LABEL_13;
        }

        archivePaths = [[SKGArchiver alloc] initWithResourceDirectoryPath:v67];
        v65 = archivePaths;
        if (archivePaths)
        {
          archivePaths = [(SKGArchiver *)archivePaths archivePaths];
          v19 = 1;
          goto LABEL_14;
        }

        v65 = 0;
LABEL_13:
        v19 = 0;
LABEL_14:
        v63 = archivePaths;
        if ([(SKGArchiver *)archivePaths count])
        {
          v20 = [(SKGArchiver *)v63 keysSortedByValueUsingSelector:v57];
          v72 = [v20 mutableCopy];

          v21 = 0;
          v62 = v19 & removeCopy;
          while (1)
          {
            if (![v72 count])
            {

              break;
            }

            if (cancelBlockCopy && (cancelBlockCopy[2](cancelBlockCopy, @"processCSArchivesWithGroup:archive") & 1) != 0)
            {
              goto LABEL_62;
            }

            context = objc_autoreleasePoolPush();
            v89 = 0;
            v90 = &v89;
            v91 = 0x3032000000;
            v92 = __Block_byref_object_copy__24;
            v93 = __Block_byref_object_dispose__24;
            v94 = 0;
            lastObject = [v72 lastObject];
            v88 = v21;
            v73 = lastObject;
            v74 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:? options:? error:?];
            v71 = v88;

            if (!v74)
            {
              if (logBlockCopy)
              {
                v50 = logBlockCopy[2]();
              }

              else
              {
                v50 = 1;
              }

              goto LABEL_61;
            }

            v23 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v74 error:0];
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v24 = v23;
            v25 = [v24 countByEnumeratingWithState:&v84 objects:v99 count:16];
            if (!v25)
            {
              goto LABEL_38;
            }

            v26 = *v85;
            while (2)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v85 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                attributeSet = [*(*(&v84 + 1) + 8 * i) attributeSet];
                attributeDictionary = [attributeSet attributeDictionary];

                mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
                v31 = [mEMORY[0x277D65798] recordIsValid:attributeDictionary];

                if (v31)
                {
                  mEMORY[0x277D65798]2 = [MEMORY[0x277D65798] sharedProcessor];
                  v33 = [mEMORY[0x277D65798]2 needsPeopleForRecord:attributeDictionary];

                  mEMORY[0x277D65798]3 = [MEMORY[0x277D65798] sharedProcessor];
                  v35 = [mEMORY[0x277D65798]3 shouldGeneratePeopleForRecord:attributeDictionary];

                  mEMORY[0x277D65798]4 = [MEMORY[0x277D65798] sharedProcessor];
                  v37 = (v33 & v35) != 0 ? 8 : 0;
                  v81[0] = MEMORY[0x277D85DD0];
                  v81[1] = 3221225472;
                  v81[2] = __167__SpotlightKnowledge_processCSArchivesWithGroup_protectionClasses_shouldRemove_archiverNextPathBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke;
                  v81[3] = &unk_27893F228;
                  v83 = &v89;
                  v82 = cancelBlockCopy;
                  v79[0] = MEMORY[0x277D85DD0];
                  v79[1] = 3221225472;
                  v79[2] = __167__SpotlightKnowledge_processCSArchivesWithGroup_protectionClasses_shouldRemove_archiverNextPathBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_2;
                  v79[3] = &unk_27893CC50;
                  v80 = v82;
                  v38 = [mEMORY[0x277D65798]4 enumerateProcessedItemsFromRecord:attributeDictionary referenceIdentifier:0 bundleIdentifier:0 protectionClass:v75 processorFlags:v37 processedItemBlock:v81 cancelBlock:{v79, groupCopy, v55}];

                  if ((v38 & 1) == 0)
                  {

LABEL_53:
                    goto LABEL_54;
                  }
                }

                v39 = [v90[5] count];
                if (v39 < [spotlightContext maxItemCountPerBatch])
                {
                  goto LABEL_35;
                }

                v40 = v90[5];
                if (!itemsBlockCopy)
                {
                  v90[5] = 0;

LABEL_35:
                  continue;
                }

                v41 = itemsBlockCopy[2](itemsBlockCopy, v40);
                v42 = v90[5];
                v90[5] = 0;

                if ((v41 & 1) == 0)
                {
                  goto LABEL_53;
                }
              }

              v25 = [v24 countByEnumeratingWithState:&v84 objects:v99 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }

LABEL_38:

            v43 = [v90[5] count];
            if (v43 >= [spotlightContext maxItemCountPerBatch])
            {
              if (itemsBlockCopy)
              {
                itemsBlockCopy[2](itemsBlockCopy, v90[5]);
              }

              v44 = v90[5];
              v90[5] = 0;
            }

            if (pathBlockCopy && ([v73 lastPathComponent], v45 = objc_claimAutoreleasedReturnValue(), v46 = pathBlockCopy[2](pathBlockCopy, v75, v45), v45, !v46))
            {
LABEL_54:
              v50 = 0;
            }

            else
            {
              if (v62)
              {
                v47 = objc_autoreleasePoolPush();
                v78 = v71;
                [(SKGArchiver *)v65 removeArchivePath:v73 error:&v78];
                v48 = v78;

                if (v48)
                {
                  v49 = logBlockCopy == 0;
                }

                else
                {
                  v49 = 1;
                }

                if (v49)
                {
                  v50 = 1;
                }

                else
                {
                  v50 = (logBlockCopy[2])(logBlockCopy, 9, @"could not delete archive file");
                }

                objc_autoreleasePoolPop(v47);
                v71 = v48;
              }

              else
              {
                v50 = 1;
              }

              [v72 removeObject:v73];
            }

LABEL_61:
            v21 = v71;

            _Block_object_dispose(&v89, 8);
            objc_autoreleasePoolPop(context);
            if ((v50 & 1) == 0)
            {
LABEL_62:

              goto LABEL_71;
            }
          }
        }

        ++v64;
      }

      while (v64 != v61);
      v51 = [obj countByEnumeratingWithState:&v95 objects:v100 count:16];
      v61 = v51;
      v17 = &selRef_primitiveString;
    }

    while (v51);
  }

  v52 = 1;
LABEL_72:

  objc_autoreleasePoolPop(v55);
  return v52;
}

uint64_t __167__SpotlightKnowledge_processCSArchivesWithGroup_protectionClasses_shouldRemove_archiverNextPathBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v4 addObject:v3];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = (*(v8 + 16))(v8, @"processCSArchives:processedItem") ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __167__SpotlightKnowledge_processCSArchivesWithGroup_protectionClasses_shouldRemove_archiverNextPathBlock_processedPathBlock_processedItemsBlock_errorLogBlock_cancelBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, @"processCSArchives");
  }

  return result;
}

- (BOOL)processDeletesWithJobContext:(id)context group:(id)group cancelBlock:(id)block
{
  contextCopy = context;
  groupCopy = group;
  blockCopy = block;
  [contextCopy startDeletes];
  context = objc_autoreleasePoolPush();
  protectionClasses = [contextCopy protectionClasses];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke;
  v31[3] = &unk_27893F2C8;
  v32 = contextCopy;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_2;
  v28[3] = &unk_27893F2F0;
  v28[4] = self;
  v30 = blockCopy;
  v29 = v32;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_3;
  v24[3] = &unk_27893F318;
  v24[4] = self;
  v12 = groupCopy;
  v25 = v12;
  v27 = v30;
  v26 = v29;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_4;
  v22[3] = &unk_27893F340;
  v23 = v27;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_5;
  v19[3] = &unk_27893F368;
  v13 = v26;
  v20 = v13;
  selfCopy = self;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_6;
  v17[3] = &unk_27893CC50;
  v14 = v23;
  v18 = v14;
  [(SpotlightKnowledge *)self processCSJournalsWithGroup:v12 protectionClasses:protectionClasses includeEmbeddings:0 includeKeyphrases:0 shouldRemove:1 readerNextPathBlock:v31 deletedReferencesBlock:v28 processedPathBlock:v24 processedItemsBlock:v22 errorLogBlock:v19 cancelBlock:v17];

  objc_autoreleasePoolPop(context);
  [v13 finishedDeletes];

  return 1;
}

uint64_t __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count] && (objc_msgSend(*(a1 + 32), "removeGraphPeopleWithCancelBlock:", *(a1 + 48)), (objc_msgSend(*(a1 + 32), "removeReferences:bundleIdentifier:cancelBlock:", v6, v5, *(a1 + 48)) & 1) == 0))
  {
    [*(a1 + 40) logError:4 message:@"graph unavailable"];
    v7 = 0;
  }

  else
  {
    v7 = (*(*(a1 + 48) + 16))() ^ 1;
  }

  return v7;
}

uint64_t __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) flushGraphWithGroup:*(a1 + 40) cancelBlock:*(a1 + 56)];
  v8 = *(a1 + 48);
  if (v7)
  {
    [v8 logProcessedJournalWithName:v6 protectionClass:v5];
    v9 = (*(*(a1 + 56) + 16))() ^ 1;
  }

  else
  {
    [v8 logError:4 message:@"graph unavailable"];
    v9 = 0;
  }

  return v9;
}

uint64_t __69__SpotlightKnowledge_processDeletesWithJobContext_group_cancelBlock___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) logError:a2 message:a3];
  v4 = *(a1 + 40);

  return [v4 spotlightGraphAvailable];
}

- (BOOL)processAttributesWithJobContext:(id)context group:(id)group cancelBlock:(id)block
{
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  groupCopy = group;
  blockCopy = block;
  [contextCopy startTextProcessingJob];
  v22 = objc_autoreleasePoolPush();
  context = objc_autoreleasePoolPush();
  v26 = [[SKGJob alloc] initWithJobContext:contextCopy];
  [contextCopy startTextQueries];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = +[SKGProcessorTaskManager sharedManager];
  tasks = [v8 tasks];

  v10 = tasks;
  v11 = [tasks countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    v24 = v31;
    v25 = v34;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        if ([v15 supportsEvent:{4, context, v22, groupCopy, v24, v25}])
        {
          protectionClasses = [contextCopy protectionClasses];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v34[0] = __72__SpotlightKnowledge_processAttributesWithJobContext_group_cancelBlock___block_invoke;
          v34[1] = &unk_27893D2C0;
          v35 = contextCopy;
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v31[0] = __72__SpotlightKnowledge_processAttributesWithJobContext_group_cancelBlock___block_invoke_2;
          v31[1] = &unk_27893D2C0;
          v17 = v35;
          v32 = v17;
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __72__SpotlightKnowledge_processAttributesWithJobContext_group_cancelBlock___block_invoke_3;
          v28[3] = &unk_27893D270;
          v29 = blockCopy;
          v18 = [(SKGJob *)v26 requestCSProcessingWithProtectionClasses:protectionClasses task:v15 batchProcessedBlock:v33 batchUpdatedBlock:v30 cancelBlock:v28];

          if (!v18)
          {

            [v17 finishedTextQueries];
            objc_autoreleasePoolPop(context);
            v19 = 1;
            goto LABEL_12;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  [contextCopy finishedTextQueries];
  objc_autoreleasePoolPop(context);
  [contextCopy logFlag:25 message:@"processing all done"];
  v19 = 0;
LABEL_12:
  objc_autoreleasePoolPop(v22);
  [contextCopy finishedTextProcessingJob];

  return v19;
}

void __72__SpotlightKnowledge_processAttributesWithJobContext_group_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v9 = a2;
  v10[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v4 logQueryItemsProcessed:v8];
}

void __72__SpotlightKnowledge_processAttributesWithJobContext_group_cancelBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v9 = a2;
  v10[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v4 logQueryItemsUpdated:v8];
}

+ (BOOL)processLegacyPipelinesReportWithCancelBlock:(id)block
{
  blockCopy = block;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__SpotlightKnowledge_processLegacyPipelinesReportWithCancelBlock___block_invoke;
  aBlock[3] = &unk_27893CC50;
  v4 = blockCopy;
  v11 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [SKGJobContext defaultJobContextWithDeviceUnlocked:1];
  [v6 logEvent:6 message:@"reporting telemetry"];
  [v6 setTaskName:@"com.apple.corespotlight.knowledge.report"];
  v7 = [[SpotlightKnowledge alloc] initWithJobContext:v6];
  v8 = [(SpotlightKnowledge *)v7 processEmbeddingsReportWithJobContext:v6 progressBlock:&__block_literal_global_181 checkpointBlock:&__block_literal_global_191 cancelBlock:v5];
  [(SpotlightKnowledge *)v7 processSuggestedEventsReportWithJobContext:v6 cancelBlock:v5];
  [(SpotlightKnowledge *)v7 processDocumentUnderstandingReportWithJobContext:v6 cancelBlock:v5];
  if (!v8)
  {
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
    AnalyticsSendEventLazy();
  }

  return v8;
}

void __66__SpotlightKnowledge_processLegacyPipelinesReportWithCancelBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x277CF07F8];
  v9 = a3;
  v10 = [v8 alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v13 = [v10 initWithIdentifier:v9 qos:&unk_2846E7EC0 workloadCategory:a2 expectedMetricValue:0 itemsCompleted:v11 totalItemCount:v12];

  v14 = [MEMORY[0x277CF0810] sharedScheduler];
  v17 = 0;
  [v14 reportProgressMetrics:v13 error:&v17];
  v15 = v17;

  if (v15 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v16 = SKGLogAgentInit();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __66__SpotlightKnowledge_processLegacyPipelinesReportWithCancelBlock___block_invoke_2_cold_1();
    }
  }
}

void __66__SpotlightKnowledge_processLegacyPipelinesReportWithCancelBlock___block_invoke_188(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = [MEMORY[0x277CF07F0] reportFeatureCheckpoint:a2 forFeature:900 atDate:0 error:&v6];
  v4 = v6;
  if ((v3 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v5 = SKGLogAgentInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66__SpotlightKnowledge_processLegacyPipelinesReportWithCancelBlock___block_invoke_188_cold_1(v4, a2, v5);
    }
  }
}

- (BOOL)processEmbeddingsReportWithJobContext:(id)context progressBlock:(id)block checkpointBlock:(id)checkpointBlock cancelBlock:(id)cancelBlock
{
  contextCopy = context;
  blockCopy = block;
  checkpointBlockCopy = checkpointBlock;
  cancelBlockCopy = cancelBlock;
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  enableEmbeddings = [mEMORY[0x277D657A0] enableEmbeddings];

  if (enableEmbeddings)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = [[SKGJob alloc] initWithJobContext:contextCopy];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __102__SpotlightKnowledge_processEmbeddingsReportWithJobContext_progressBlock_checkpointBlock_cancelBlock___block_invoke_235;
    v26[3] = &unk_27893F3D0;
    v17 = contextCopy;
    v27 = v17;
    v28 = checkpointBlockCopy;
    v29 = blockCopy;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __102__SpotlightKnowledge_processEmbeddingsReportWithJobContext_progressBlock_checkpointBlock_cancelBlock___block_invoke_248;
    v24 = &unk_27893D270;
    v25 = cancelBlockCopy;
    v18 = [(SKGJob *)v16 requestCSEmbeddingsProgressReport:v26 cancelBlock:&v21];
    if (v18)
    {
      [v17 logFlag:28 message:{@"completed reporting progress", v21, v22, v23, v24}];
    }

    v19 = !v18;

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    AnalyticsSendEventLazy();
    v19 = 0;
  }

  return v19;
}

void __102__SpotlightKnowledge_processEmbeddingsReportWithJobContext_progressBlock_checkpointBlock_cancelBlock___block_invoke_235(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a2;
  saveHistoricalReport(v3, 1);
  v4 = [*(a1 + 32) feedback];
  v63 = [v4 getEmbeddingDonationItemCounts];

  v5 = [*(a1 + 32) feedback];
  v62 = [v5 getCleanupItemCountsForListenerType:2];

  v6 = [*(a1 + 32) feedback];
  v60 = [v6 getReindexRequestItemCounts];

  v69 = 0u;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  v7 = v3;
  v61 = [v7 countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v61)
  {
    v59 = *v67;
    *&v8 = 138412290;
    v53 = v8;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v67 != v59)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v66 + 1) + 8 * i);
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v11 = SKGLogAgentInit();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v7 objectForKeyedSubscript:v10];
            *buf = v53;
            *&buf[4] = v12;
            _os_log_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEFAULT, "embedding generation progress: %@", buf, 0xCu);
          }
        }

        v13 = *(a1 + 32);
        v14 = [v7 objectForKeyedSubscript:{v10, v53}];
        v15 = [v14 objectForKeyedSubscript:@"completeness"];
        [v13 setEmbeddingGenCompleteness:v15 forBundle:v10];

        if ([v10 isEqualToString:@"Total"])
        {
          v16 = [*(a1 + 32) feedback];
          v17 = [v16 getUpdateTaskRunCount];

          v18 = [*(a1 + 32) feedback];
          v19 = [v18 getUpdateTaskReindexCount];

          v20 = [v7 objectForKeyedSubscript:v10];
          v21 = [v62 objectForKeyedSubscript:v10];
          v22 = v21;
          if (!v21)
          {
            v21 = objc_opt_new();
            v54 = v21;
          }

          v23 = [v21 unsignedIntegerValue];
          v24 = [v63 objectForKeyedSubscript:v10];
          v25 = v24;
          if (!v24)
          {
            v24 = objc_opt_new();
            v55 = v24;
          }

          v26 = createEmbeddingGenerationRawEvent(v20, 1, v17, v23, v19, [v24 unsignedIntegerValue]);
          if (!v25)
          {
          }

          if (!v22)
          {
          }

          v64[1] = MEMORY[0x277D85DD0];
          v64[2] = 3221225472;
          v64[3] = __102__SpotlightKnowledge_processEmbeddingsReportWithJobContext_progressBlock_checkpointBlock_cancelBlock___block_invoke_242;
          v64[4] = &unk_27893D388;
          v27 = v26;
          v65 = v27;
          AnalyticsSendEventLazy();
          v28 = SKGLogEmbedInit();
          v29 = SKGLogEmbedInit();
          v30 = os_signpost_id_generate(v29);

          if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
          {
            *buf = 138543362;
            *&buf[4] = v27;
            _os_signpost_emit_with_name_impl(&dword_231B25000, v28, OS_SIGNPOST_EVENT, v30, "TotalReport", "%{public}@", buf, 0xCu);
          }

          v31 = [*(a1 + 32) feedback];
          [v31 resetUpdateTaskRunCount];

          v32 = [*(a1 + 32) feedback];
          [v32 resetUpdateTaskReindexCount];

          v33 = *(a1 + 40);
          if (v33)
          {
            v34 = [v7 objectForKeyedSubscript:@"Total"];
            (*(v33 + 16))(v33, [v34 featureCheckpointForProgress]);
          }

          if (*(a1 + 48))
          {
            *buf = 0;
            v64[0] = 0;
            v35 = [v7 objectForKeyedSubscript:@"Total"];
            [v35 bundleProgressNumerator:v64 denominator:buf];

            (*(*(a1 + 48) + 16))();
          }
        }

        v36 = [v7 objectForKeyedSubscript:v10];
        v37 = [v62 objectForKeyedSubscript:v10];
        v38 = v37;
        if (!v37)
        {
          v37 = objc_opt_new();
          v58 = v37;
        }

        v39 = [v37 unsignedIntegerValue];
        v40 = [v60 objectForKeyedSubscript:v10];
        v41 = v40;
        if (!v40)
        {
          v40 = objc_opt_new();
          v57 = v40;
        }

        v42 = [v40 unsignedIntegerValue];
        v43 = [v63 objectForKeyedSubscript:v10];
        v44 = v43;
        if (!v43)
        {
          v43 = objc_opt_new();
          v56 = v43;
        }

        v45 = createEmbeddingGenerationRawEvent(v36, 0, 0, v39, v42, [v43 unsignedIntegerValue]);
        if (!v44)
        {
        }

        if (!v41)
        {
        }

        if (!v38)
        {
        }

        v46 = v45;
        AnalyticsSendEventLazy();
        v47 = SKGLogEmbedInit();
        v48 = SKGLogEmbedInit();
        v49 = os_signpost_id_generate(v48);

        if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
        {
          *buf = 138543362;
          *&buf[4] = v46;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v47, OS_SIGNPOST_EVENT, v49, "BundleReport", "%{public}@", buf, 0xCu);
        }
      }

      v61 = [v7 countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v61);
  }

  v50 = [*(a1 + 32) feedback];
  [v50 resetEmbeddingDonationItemCounts];

  v51 = [*(a1 + 32) feedback];
  [v51 resetCleanupItemCountsForAllListenerTypes];

  v52 = [*(a1 + 32) feedback];
  [v52 resetReindexRequestItemCounts];
}

- (BOOL)processSuggestedEventsReportWithJobContext:(id)context cancelBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  enableSuggestedEvents = [mEMORY[0x277D657A0] enableSuggestedEvents];

  if (enableSuggestedEvents)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [[SKGJob alloc] initWithJobContext:contextCopy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__SpotlightKnowledge_processSuggestedEventsReportWithJobContext_cancelBlock___block_invoke_3;
    v14[3] = &unk_27893D270;
    v15 = blockCopy;
    v11 = [(SKGJob *)v10 requestCSSuggestedEventsProgressReport:&__block_literal_global_259 cancelBlock:v14];
    if (v11)
    {
      [contextCopy logFlag:28 message:@"completed reporting progress for suggested events pre-extraction"];
    }

    v12 = !v11;

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    AnalyticsSendEventLazy();
    v12 = 0;
  }

  return v12;
}

void __77__SpotlightKnowledge_processSuggestedEventsReportWithJobContext_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = a2;
  saveHistoricalReport(v2, 2);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v24;
    *&v5 = 138412290;
    v20 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v10 = SKGLogAgentInit();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v3 objectForKeyedSubscript:v9];
            *buf = v20;
            v28 = v11;
            _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_DEFAULT, "suggested events pre-extraction progress: %@", buf, 0xCu);
          }
        }

        v12 = [v3 objectForKeyedSubscript:{v9, v20}];
        v13 = MEMORY[0x277CCABB0];
        v14 = [MEMORY[0x277D657A0] sharedContext];
        v15 = [v13 numberWithInteger:{objc_msgSend(v14, "suggestedEventsVersion")}];
        v16 = createPreExtractionEvent(v12, v15, @"itemsWithSuggestedEvents");

        if ([v9 isEqualToString:@"Total"])
        {
          v21[1] = MEMORY[0x277D85DD0];
          v21[2] = 3221225472;
          v21[3] = __77__SpotlightKnowledge_processSuggestedEventsReportWithJobContext_cancelBlock___block_invoke_263;
          v21[4] = &unk_27893D388;
          v22 = v16;
          v17 = v16;
          AnalyticsSendEventLazy();
          v18 = &v22;
        }

        else
        {
          v21[0] = v16;
          v19 = v16;
          AnalyticsSendEventLazy();
          v18 = v21;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v6);
  }
}

- (BOOL)processDocumentUnderstandingReportWithJobContext:(id)context cancelBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  enableDocumentUnderstanding = [mEMORY[0x277D657A0] enableDocumentUnderstanding];

  if (enableDocumentUnderstanding)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [[SKGJob alloc] initWithJobContext:contextCopy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __83__SpotlightKnowledge_processDocumentUnderstandingReportWithJobContext_cancelBlock___block_invoke_3;
    v14[3] = &unk_27893D270;
    v15 = blockCopy;
    v11 = [(SKGJob *)v10 requestCSDocumentUnderstandingProgressReport:&__block_literal_global_278_0 cancelBlock:v14];
    if (v11)
    {
      [contextCopy logFlag:28 message:@"completed reporting progress for DocumentUnderstanding pre-extraction"];
    }

    v12 = !v11;

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    AnalyticsSendEventLazy();
    v12 = 0;
  }

  return v12;
}

void __83__SpotlightKnowledge_processDocumentUnderstandingReportWithJobContext_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = a2;
  saveHistoricalReport(v2, 3);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v24;
    *&v5 = 138412290;
    v20 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v10 = SKGLogAgentInit();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v3 objectForKeyedSubscript:v9];
            *buf = v20;
            v28 = v11;
            _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_DEFAULT, "DocumentUnderstanding pre-extraction progress: %@", buf, 0xCu);
          }
        }

        v12 = [v3 objectForKeyedSubscript:{v9, v20}];
        v13 = MEMORY[0x277CCABB0];
        v14 = [MEMORY[0x277D657A0] sharedContext];
        v15 = [v13 numberWithInteger:{objc_msgSend(v14, "documentUnderstandingVersion")}];
        v16 = createPreExtractionEvent(v12, v15, @"itemsWithDocumentUnderstanding");

        if ([v9 isEqualToString:@"Total"])
        {
          v21[1] = MEMORY[0x277D85DD0];
          v21[2] = 3221225472;
          v21[3] = __83__SpotlightKnowledge_processDocumentUnderstandingReportWithJobContext_cancelBlock___block_invoke_282;
          v21[4] = &unk_27893D388;
          v22 = v16;
          v17 = v16;
          AnalyticsSendEventLazy();
          v18 = &v22;
        }

        else
        {
          v21[0] = v16;
          v19 = v16;
          AnalyticsSendEventLazy();
          v18 = v21;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v6);
  }
}

- (BOOL)processTextWithJobContext:(id)context group:(id)group cancelBlock:(id)block
{
  contextCopy = context;
  groupCopy = group;
  blockCopy = block;
  [contextCopy startTextProcessingJob];
  if (![contextCopy doJournals])
  {
    goto LABEL_6;
  }

  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  enableEventUpdater = [mEMORY[0x277D657A0] enableEventUpdater];

  if (enableEventUpdater)
  {
    goto LABEL_6;
  }

  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  enableKeyphrases = [mEMORY[0x277D657A0]2 enableKeyphrases];

  mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
  enableEmbeddings = [mEMORY[0x277D657A0]3 enableEmbeddings];

  if ((enableEmbeddings & 1) == 0 && (enableKeyphrases & 1) == 0)
  {
    [contextCopy finishedTextProcessingJob];
LABEL_6:
    v17 = 1;
    goto LABEL_7;
  }

  if (enableKeyphrases)
  {
    mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
    loadKeyphraser = [mEMORY[0x277D65798] loadKeyphraser];

    if (loadKeyphraser)
    {
      v21 = 1;
      if (!enableEmbeddings)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    if (blockCopy[2](blockCopy, @"tried loading keyphrase model"))
    {
LABEL_17:
      [contextCopy finishedTextProcessingJob];
      v17 = 0;
      goto LABEL_7;
    }
  }

  v21 = 0;
  if (!enableEmbeddings)
  {
    goto LABEL_18;
  }

LABEL_14:
  mEMORY[0x277D65798]2 = [MEMORY[0x277D65798] sharedProcessor];
  loadEmbedder = [mEMORY[0x277D65798]2 loadEmbedder];

  if ((loadEmbedder & 1) == 0)
  {
    if (blockCopy[2](blockCopy, @"tried loading embedding model"))
    {
      goto LABEL_17;
    }

LABEL_18:
    v24 = 0;
    goto LABEL_19;
  }

  v24 = 1;
LABEL_19:
  v29 = objc_autoreleasePoolPush();
  context = objc_autoreleasePoolPush();
  [contextCopy startJournals];
  protectionClasses = [contextCopy protectionClasses];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke;
  v46[3] = &unk_27893F2C8;
  v47 = contextCopy;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_2;
  v44[3] = &unk_27893F418;
  v45 = blockCopy;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_3;
  v41[3] = &unk_27893F440;
  v42 = v47;
  v43 = v45;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_4;
  v35[3] = &unk_27893F468;
  v39 = v21;
  v40 = v24;
  v35[4] = self;
  v36 = v42;
  v38 = v43;
  v37 = groupCopy;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_313;
  v32[3] = &unk_27893F490;
  v25 = v36;
  v33 = v25;
  v34 = v38;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_2_314;
  v30[3] = &unk_27893CC50;
  v31 = v34;
  v26 = [(SpotlightKnowledge *)self processCSJournalsWithGroup:v37 protectionClasses:protectionClasses includeEmbeddings:v24 includeKeyphrases:v21 shouldRemove:1 readerNextPathBlock:v46 deletedReferencesBlock:v44 processedPathBlock:v41 processedItemsBlock:v35 errorLogBlock:v32 cancelBlock:v30];

  [v25 finishedJournals];
  objc_autoreleasePoolPop(context);
  if (v26)
  {
    [v25 logFlag:23 message:@"text processing all done"];
  }

  v17 = !v26;
  objc_autoreleasePoolPop(v29);
  [v25 finishedTextProcessingJob];
LABEL_7:

  return v17;
}

uint64_t __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v64 = objc_autoreleasePoolPush();
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v82 objects:v90 count:16];
  v65 = v4;
  if (v5)
  {
    v6 = v5;
    v7 = *v83;
    obj = *v83;
    v72 = 0;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v83 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v82 + 1) + 8 * v8);
      if (*(a1 + 64) == 1 && [*(*(&v82 + 1) + 8 * v8) errorProcessingKeyphrases] && *(a1 + 65) == 1 && (objc_msgSend(v9, "errorProcessingEmbeddings") & 1) != 0)
      {

        v44 = 0;
LABEL_32:
        v45 = v72;
LABEL_53:

        objc_autoreleasePoolPop(v64);
        goto LABEL_54;
      }

      v10 = [v9 referenceIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = [v9 bundleIdentifier];
        if (!v12)
        {
          goto LABEL_23;
        }

        v13 = v12;
        v14 = [v9 protectionClass];
        if (!v14)
        {

LABEL_23:
          goto LABEL_27;
        }

        v15 = v14;
        v16 = [v9 personaIdentifier];

        if (v16)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = attributeSetForProcessedItem(v9);
          v19 = [v18 attributeDictionary];
          v20 = [v19 count];

          if (v20)
          {
            context = v17;
            v21 = *(a1 + 32);
            v22 = [v9 referenceIdentifier];
            v23 = [v9 bundleIdentifier];
            v66 = [v21 coreSpotlightItemWithAttributes:v18 referenceIdentifier:v22 bundleIdentifier:v23];

            v24 = v72;
            if (!v72)
            {
              v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
            }

            v25 = [v9 protectionClass];
            v26 = [v24 objectForKeyedSubscript:v25];

            if (!v26)
            {
              v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v28 = [v9 protectionClass];
              [v24 setObject:v27 forKeyedSubscript:v28];
            }

            v29 = [v9 protectionClass];
            v30 = [v24 objectForKeyedSubscript:v29];
            v31 = [v9 bundleIdentifier];
            v32 = [v30 objectForKeyedSubscript:v31];

            if (!v32)
            {
              v33 = [v9 protectionClass];
              v34 = [v24 objectForKeyedSubscript:v33];
              v35 = [MEMORY[0x277CBEB18] array];
              v36 = [v9 bundleIdentifier];
              [v34 setObject:v35 forKey:v36];
            }

            v37 = [v9 protectionClass];
            v72 = v24;
            v38 = [v24 objectForKeyedSubscript:v37];
            v39 = [v9 bundleIdentifier];
            v40 = [v38 objectForKeyedSubscript:v39];
            [v40 addObject:v66];

            v41 = *(a1 + 40);
            v42 = [v9 bundleIdentifier];
            v88 = v42;
            v89 = &unk_2846E7F08;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
            [v41 logJournalItemsProcessed:v43];

            v4 = v65;
            v17 = context;
            v7 = obj;
          }

          else
          {
            v7 = obj;
          }

          objc_autoreleasePoolPop(v17);
        }

        else
        {
          v7 = obj;
        }
      }

LABEL_27:
      if ((*(*(a1 + 56) + 16))())
      {

        v44 = 1;
        goto LABEL_32;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v82 objects:v90 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }
    }
  }

  v72 = 0;
LABEL_34:

  contexta = objc_autoreleasePoolPush();
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v46 = v72;
  v47 = [v46 countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v47)
  {
    v48 = *v79;
    v73 = v46;
    v62 = *v79;
    while (2)
    {
      v49 = 0;
      v63 = v47;
      do
      {
        if (*v79 != v48)
        {
          objc_enumerationMutation(v46);
        }

        v67 = v49;
        v50 = *(*(&v78 + 1) + 8 * v49);
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        obja = [v46 objectForKeyedSubscript:{v50, v62}];
        v51 = [obja countByEnumeratingWithState:&v74 objects:v86 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v75;
          while (2)
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v75 != v53)
              {
                objc_enumerationMutation(obja);
              }

              v55 = *(*(&v74 + 1) + 8 * i);
              v56 = objc_autoreleasePoolPush();
              v57 = [*(a1 + 32) coreSpotlightIndexWithBundleIdentifier:v55 protectionClass:v50];
              v58 = *(a1 + 32);
              v59 = [v73 objectForKeyedSubscript:v50];
              v60 = [v59 objectForKeyedSubscript:v55];
              [v58 updateCoreSpotlightWithItems:v60 index:v57 group:*(a1 + 48) cancelBlock:*(a1 + 56)];

              LOBYTE(v60) = (*(*(a1 + 56) + 16))();
              objc_autoreleasePoolPop(v56);
              if (v60)
              {

                goto LABEL_52;
              }
            }

            v52 = [obja countByEnumeratingWithState:&v74 objects:v86 count:16];
            if (v52)
            {
              continue;
            }

            break;
          }
        }

        if ((*(*(a1 + 56) + 16))())
        {
LABEL_52:
          v45 = v73;

          objc_autoreleasePoolPop(contexta);
          v44 = 1;
          v4 = v65;
          goto LABEL_53;
        }

        v4 = v65;
        v49 = v67 + 1;
        v48 = v62;
        v46 = v73;
      }

      while (v67 + 1 != v63);
      v47 = [v73 countByEnumeratingWithState:&v78 objects:v87 count:16];
      if (v47)
      {
        continue;
      }

      break;
    }
  }

  objc_autoreleasePoolPop(contexta);
  objc_autoreleasePoolPop(v64);
  v44 = (*(*(a1 + 56) + 16))() ^ 1;
LABEL_54:

  return v44;
}

uint64_t __66__SpotlightKnowledge_processTextWithJobContext_group_cancelBlock___block_invoke_313(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 logError:a2 message:v6];
  LODWORD(a2) = (*(*(a1 + 40) + 16))();

  return a2 ^ 1;
}

- (BOOL)processPeopleWithGroup:(id)group cancelBlock:(id)block
{
  groupCopy = group;
  blockCopy = block;
  spotlightContext = [(SpotlightKnowledge *)self spotlightContext];
  [spotlightContext startPeopleIndexingJob];
  doArchiving = [spotlightContext doArchiving];
  v10 = objc_autoreleasePoolPush();
  if ((doArchiving & 1) != 0 || ([spotlightContext startPeopleArchives], objc_msgSend(spotlightContext, "protectionClasses"), v19 = objc_claimAutoreleasedReturnValue(), v45[0] = MEMORY[0x277D85DD0], v45[1] = 3221225472, v45[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke, v45[3] = &unk_27893F4B8, v45[4] = self, v47 = blockCopy, v46 = spotlightContext, v41[0] = MEMORY[0x277D85DD0], v41[1] = 3221225472, v41[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_2, v41[3] = &unk_27893F318, v41[4] = self, v42 = groupCopy, v44 = v47, v43 = v46, v37[0] = MEMORY[0x277D85DD0], v37[1] = 3221225472, v37[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_3, v37[3] = &unk_27893F4E0, v37[4] = self, v40 = v44, v38 = v43, v39 = v42, v34[0] = MEMORY[0x277D85DD0], v34[1] = 3221225472, v34[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_4, v34[3] = &unk_27893F490, v11 = v38, v35 = v11, v36 = v40, v32[0] = MEMORY[0x277D85DD0], v32[1] = 3221225472, v32[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_5, v32[3] = &unk_27893CC50, v33 = v36, v12 = 1, v13 = -[SpotlightKnowledge processCSArchivesWithGroup:protectionClasses:shouldRemove:archiverNextPathBlock:processedPathBlock:processedItemsBlock:errorLogBlock:cancelBlock:](self, "processCSArchivesWithGroup:protectionClasses:shouldRemove:archiverNextPathBlock:processedPathBlock:processedItemsBlock:errorLogBlock:cancelBlock:", v39, v19, 1, v45, v41, v37, v34, v32), v19, objc_msgSend(v11, "finishedPeopleArchives"), v33, v36, v35, v39, v38, v40, v43, v44, v42, v46, v47, v13))
  {
    [spotlightContext startPeopleQueries];
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 0;
    v14 = [[SKGJob alloc] initWithJobContext:spotlightContext];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_6;
    v26[3] = &unk_27893F508;
    v26[4] = self;
    v28 = blockCopy;
    v27 = spotlightContext;
    v29 = v30;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_7;
    v24[3] = &unk_27893D2C0;
    v25 = v27;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_8;
    v22[3] = &unk_27893D2C0;
    v15 = v25;
    v23 = v15;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_9;
    v20[3] = &unk_27893D270;
    v16 = v28;
    v21 = v16;
    v17 = [(SKGJob *)v14 requestCSProcessingWithProcessedItemBlock:v26 batchArchivedBlock:v24 batchUpdatedBlock:v22 cancelBlock:v20 errorBlock:&__block_literal_global_331];
    if (![(SpotlightKnowledge *)self flushGraphWithGroup:groupCopy cancelBlock:v16])
    {
      [v15 logError:4 message:@"graph unavailable"];
      v17 = 0;
    }

    [v15 finishedPeopleQueries];

    _Block_object_dispose(v30, 8);
    if (v17)
    {
      [v15 logFlag:26 message:@"people indexing all done"];
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  objc_autoreleasePoolPop(v10);
  [spotlightContext finishedPeopleIndexingJob];

  return v12;
}

id __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 removeGraphPeopleWithCancelBlock:v4];
  v6 = [*(a1 + 40) peopleArchivePathWithProtectionClass:v5];

  return v6;
}

uint64_t __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) flushGraphWithGroup:*(a1 + 40) cancelBlock:*(a1 + 56)];
  v8 = *(a1 + 48);
  if (v7)
  {
    [v8 logProcessedArchiveWithName:v6 protectionClass:v5];
    v9 = (*(*(a1 + 56) + 16))() ^ 1;
  }

  else
  {
    [v8 logError:4 message:@"graph unavailable"];
    v9 = 0;
  }

  return v9;
}

uint64_t __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v77;
    v62 = v4;
    obj = *v77;
LABEL_3:
    v9 = 0;
    v64 = v6;
    while (1)
    {
      if (*v77 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v76 + 1) + 8 * v9);
      v11 = [v10 referenceIdentifier];
      if (v11)
      {
        v12 = v11;
        v13 = [v10 bundleIdentifier];
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = v13;
        v15 = [v10 protectionClass];
        if (!v15)
        {
          goto LABEL_18;
        }

        v16 = v15;
        v17 = [v10 personaIdentifier];

        if (v17)
        {
          if (![*(a1 + 32) addProcessedItem:v10 cancelBlock:*(a1 + 56)])
          {
            v42 = v7;
            v43 = 0;
LABEL_27:
            v44 = v4;
LABEL_48:

            objc_autoreleasePoolPop(context);
            goto LABEL_49;
          }

          v12 = [*(a1 + 32) peopleAttributesWithProcessedItem:v10];
          v18 = *(a1 + 32);
          v19 = [v10 referenceIdentifier];
          v20 = [v10 bundleIdentifier];
          v14 = [v18 coreSpotlightItemWithAttributes:v12 referenceIdentifier:v19 bundleIdentifier:v20];

          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
          }

          v21 = [v10 protectionClass];
          v22 = [v7 objectForKeyedSubscript:v21];

          if (!v22)
          {
            v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v24 = [v10 protectionClass];
            [v7 setObject:v23 forKeyedSubscript:v24];
          }

          v25 = [v10 protectionClass];
          v26 = [v7 objectForKeyedSubscript:v25];
          v27 = [v10 bundleIdentifier];
          [v26 objectForKeyedSubscript:v27];
          v29 = v28 = v7;

          if (!v29)
          {
            v30 = [v10 protectionClass];
            v31 = [v28 objectForKeyedSubscript:v30];
            v32 = [MEMORY[0x277CBEB18] array];
            v33 = [v10 bundleIdentifier];
            [v31 setObject:v32 forKey:v33];
          }

          v34 = [v10 protectionClass];
          v35 = [v28 objectForKeyedSubscript:v34];
          v36 = [v10 bundleIdentifier];
          v37 = [v35 objectForKeyedSubscript:v36];
          [v37 addObject:v14];

          v38 = *(a1 + 40);
          v39 = [v10 bundleIdentifier];
          v82 = v39;
          v83 = &unk_2846E7F08;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          [v38 logArchiveItemsProcessed:v40];

          v4 = v62;
          v6 = v64;
          v7 = v28;
LABEL_18:

          v8 = obj;
LABEL_19:

          goto LABEL_20;
        }

        v6 = v64;
        v8 = obj;
      }

LABEL_20:
      if ((*(*(a1 + 56) + 16))())
      {
        v42 = v7;
        v43 = 1;
        goto LABEL_27;
      }

      if (v6 == ++v9)
      {
        v41 = [v4 countByEnumeratingWithState:&v76 objects:v84 count:16];
        v6 = v41;
        if (v41)
        {
          goto LABEL_3;
        }

        goto LABEL_29;
      }
    }
  }

  v7 = 0;
LABEL_29:

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v44 = v7;
  v45 = [v44 countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v45)
  {
    v46 = *v73;
    v63 = v4;
    v59 = *v73;
    while (2)
    {
      v47 = 0;
      v60 = v45;
      do
      {
        if (*v73 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v65 = v47;
        v48 = *(*(&v72 + 1) + 8 * v47);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        obja = [v44 objectForKeyedSubscript:{v48, v59}];
        v49 = [obja countByEnumeratingWithState:&v68 objects:v80 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v69;
          while (2)
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v69 != v51)
              {
                objc_enumerationMutation(obja);
              }

              v53 = *(*(&v68 + 1) + 8 * i);
              v54 = [*(a1 + 32) coreSpotlightIndexWithBundleIdentifier:v53 protectionClass:v48];
              v55 = *(a1 + 32);
              v56 = [v44 objectForKeyedSubscript:v48];
              v57 = [v56 objectForKeyedSubscript:v53];
              [v55 updateCoreSpotlightWithItems:v57 index:v54 group:*(a1 + 48) cancelBlock:*(a1 + 56)];

              LOBYTE(v57) = (*(*(a1 + 56) + 16))();
              if (v57)
              {

                goto LABEL_47;
              }
            }

            v50 = [obja countByEnumeratingWithState:&v68 objects:v80 count:16];
            if (v50)
            {
              continue;
            }

            break;
          }
        }

        if ((*(*(a1 + 56) + 16))())
        {
LABEL_47:
          v43 = 1;
          v42 = v44;
          v4 = v63;
          goto LABEL_48;
        }

        v4 = v63;
        v47 = v65 + 1;
        v46 = v59;
      }

      while (v65 + 1 != v60);
      v45 = [v44 countByEnumeratingWithState:&v72 objects:v81 count:16];
      if (v45)
      {
        continue;
      }

      break;
    }
  }

  objc_autoreleasePoolPop(context);
  v43 = (*(*(a1 + 56) + 16))() ^ 1;
LABEL_49:

  return v43;
}

uint64_t __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 logError:a2 message:v6];
  LODWORD(a2) = (*(*(a1 + 40) + 16))();

  return a2 ^ 1;
}

uint64_t __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) addProcessedItem:v3 cancelBlock:*(a1 + 48)];
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v3 bundleIdentifier];
    v9 = v6;
    v10[0] = &unk_2846E7F08;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v5 logQueryItemsProcessed:v7];

    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) removeGraphPeopleWithCancelBlock:*(a1 + 48)];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  return v4;
}

void __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v9 = a2;
  v10[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v4 logQueryItemsArchived:v8];
}

void __57__SpotlightKnowledge_processPeopleWithGroup_cancelBlock___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v9 = a2;
  v10[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v4 logQueryItemsUpdated:v8];
}

- (BOOL)processGraphWithGroup:(id)group cancelBlock:(id)block
{
  groupCopy = group;
  blockCopy = block;
  if ([(SpotlightKnowledge *)self spotlightGraphAvailable])
  {
    spotlightContext = [(SpotlightKnowledge *)self spotlightContext];
    [spotlightContext startGraphAnalysisJob];
    v9 = objc_autoreleasePoolPush();
    if ([(SpotlightKnowledge *)self graphNeedsAnalysis])
    {
      objc_autoreleasePoolPop(v9);
      mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
      enableMegadomePeople = [mEMORY[0x277D657A0] enableMegadomePeople];

      if (enableMegadomePeople)
      {
        [spotlightContext startMegadomeIndexing];
        v12 = objc_autoreleasePoolPush();
        if ([(SpotlightKnowledge *)self removeGraphEntitiesWithCancelBlock:blockCopy])
        {
          v27 = 0;
          v28 = &v27;
          v29 = 0x2020000000;
          v30 = 1;
          mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
          v19 = MEMORY[0x277D85DD0];
          v20 = 3221225472;
          v21 = __56__SpotlightKnowledge_processGraphWithGroup_cancelBlock___block_invoke;
          v22 = &unk_27893F550;
          selfCopy = self;
          v24 = groupCopy;
          v25 = blockCopy;
          v26 = &v27;
          [mEMORY[0x277D65798] generateMegadomePeopleUsingBlock:&v19 cancelBlock:v25];

          LODWORD(mEMORY[0x277D65798]) = *(v28 + 24);
          _Block_object_dispose(&v27, 8);
          objc_autoreleasePoolPop(v12);
          [spotlightContext finishedMegadomeIndexing];
          if (mEMORY[0x277D65798] != 1)
          {
LABEL_14:
            v14 = 1;
            goto LABEL_15;
          }
        }

        else
        {
          objc_autoreleasePoolPop(v12);
          [spotlightContext finishedMegadomeIndexing];
        }
      }

      [spotlightContext startGraphAnalysis];
      v16 = [(SpotlightKnowledge *)self analyzeGraphWithCancelBlock:blockCopy];
      [spotlightContext finishedGraphAnalysis];
      if (!v16)
      {
        goto LABEL_14;
      }

      [spotlightContext startGraphScoring];
      v17 = [(SpotlightKnowledge *)self scoreGraphWithCancelBlock:blockCopy];
      [spotlightContext finishedGraphScoring];
      if (!v17)
      {
        goto LABEL_14;
      }

      v9 = objc_autoreleasePoolPush();
      [(SpotlightKnowledge *)self updateSpotlightContactsWithJobContext:spotlightContext group:groupCopy cancelBlock:blockCopy];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      [(SpotlightKnowledge *)self updateSpotlightContactsWithJobContext:spotlightContext group:groupCopy cancelBlock:blockCopy];
      objc_autoreleasePoolPop(v15);
    }

    objc_autoreleasePoolPop(v9);
    [spotlightContext logFlag:27 message:@"completed graph analysis"];
    v14 = 0;
LABEL_15:
    [spotlightContext finishedGraphAnalysisJob];

    goto LABEL_16;
  }

  v14 = 0;
LABEL_16:

  return v14;
}

void __56__SpotlightKnowledge_processGraphWithGroup_cancelBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [[SKGProcessedPerson alloc] initWithPerson:v5];

  if (([*(a1 + 32) addProcessedPerson:v6 group:*(a1 + 40) cancelBlock:*(a1 + 48)] & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

- (void)sendAnalytics
{
  v27 = *MEMORY[0x277D85DE8];
  empty = xpc_dictionary_create_empty();
  spotlightContext = [(SpotlightKnowledge *)self spotlightContext];
  feedback = [spotlightContext feedback];
  feedbackData = [feedback feedbackData];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = feedbackData;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = [v6 objectForKeyedSubscript:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (([v11 hasPrefix:@"should"] & 1) != 0 || (objc_msgSend(v11, "hasPrefix:", @"did") & 1) != 0 || objc_msgSend(v11, "hasPrefix:", @"invalid"))
          {
            v13 = [v6 objectForKeyedSubscript:v11];
            bOOLValue = [v13 BOOLValue];

            xpc_dictionary_set_BOOL(empty, [v11 UTF8String], bOOLValue);
          }

          else if (([v11 hasPrefix:@"num"] & 1) != 0 || (objc_msgSend(v11, "hasSuffix:", @"Size") & 1) != 0 || objc_msgSend(v11, "hasSuffix:", @"Count"))
          {
            v15 = [v6 objectForKeyedSubscript:v11];
            intValue = [v15 intValue];

            xpc_dictionary_set_int64(empty, [v11 UTF8String], intValue);
          }

          else if ([v11 hasSuffix:@"time"])
          {
            v17 = [v6 objectForKeyedSubscript:v11];
            [v17 doubleValue];
            v19 = v18;

            xpc_dictionary_set_double(empty, [v11 UTF8String], v19);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v20 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v8 = v20;
    }

    while (v20);
  }

  analytics_send_event();
}

- (id)timerWithBlock:(id)block
{
  blockCopy = block;
  v4 = [SKGTimer alloc];
  v5 = [(SKGTimer *)v4 initWithTimeIntervalSinceNow:gTimerQueue tolerance:blockCopy queue:5.0 block:2.0];

  return v5;
}

- (void)runWithQueue:(id)queue group:(id)group progressBlock:(id)block checkpointBlock:(id)checkpointBlock completeBlock:(id)completeBlock cancelBlock:(id)cancelBlock deferBlock:(id)deferBlock
{
  groupCopy = group;
  blockCopy = block;
  checkpointBlockCopy = checkpointBlock;
  completeBlockCopy = completeBlock;
  cancelBlockCopy = cancelBlock;
  deferBlockCopy = deferBlock;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke;
  block[3] = &unk_27893F5A0;
  block[4] = self;
  v28 = groupCopy;
  v29 = cancelBlockCopy;
  v30 = deferBlockCopy;
  v31 = completeBlockCopy;
  v32 = blockCopy;
  v33 = checkpointBlockCopy;
  v21 = checkpointBlockCopy;
  v22 = blockCopy;
  v23 = completeBlockCopy;
  v24 = deferBlockCopy;
  v25 = cancelBlockCopy;
  v26 = groupCopy;
  dispatch_group_async(v26, queue, block);
}

void __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) spotlightContext];
  [v2 loadWithGroup:*(a1 + 40)];
  [v2 start];
  if ([v2 shouldIgnore])
  {
    [v2 ignoreWithGroup:*(a1 + 40)];
LABEL_5:
    [v2 end];
    goto LABEL_38;
  }

  if ([v2 shouldDestroy])
  {
    [v2 destroyWithGroup:*(a1 + 40)];
    goto LABEL_5;
  }

  if ([v2 shouldReset])
  {
    [v2 resetWithGroup:*(a1 + 40)];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__24;
  v28 = __Block_byref_object_dispose__24;
  v29 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_2;
  aBlock[3] = &unk_27893F578;
  v3 = v2;
  v18 = v3;
  v4 = *(a1 + 48);
  v23 = &v24;
  v19 = *(a1 + 32);
  v20 = v4;
  v5 = a1 + 56;
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v6 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_364;
  v15[3] = &unk_27893CC50;
  v16 = *(a1 + 48);
  v7 = _Block_copy(v15);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_365;
  v14[3] = &unk_27893F0D0;
  v14[4] = &v24;
  v8 = _Block_copy(v14);
  v9 = [*(a1 + 32) timerWithBlock:v6];
  v10 = v25[5];
  v25[5] = v9;

  if ([v3 shouldReportProgress] && ((v8[2](v8), (_os_feature_enabled_impl() & 1) != 0) || (v11 = objc_msgSend(*(a1 + 32), "processEmbeddingsReportWithJobContext:progressBlock:checkpointBlock:cancelBlock:", v3, *(a1 + 72), *(a1 + 80), v7), objc_msgSend(*(a1 + 32), "processSuggestedEventsReportWithJobContext:cancelBlock:", v3, v7), objc_msgSend(*(a1 + 32), "processDocumentUnderstandingReportWithJobContext:cancelBlock:", v3, v7), (v11 & 1) != 0)) || objc_msgSend(v3, "shouldProcessText") && (v8[2](v8), (objc_msgSend(*(a1 + 32), "processTextWithJobContext:group:cancelBlock:", v3, *(a1 + 40), v7) & 1) != 0) || objc_msgSend(v3, "shouldProcessAttributes") && (v8[2](v8), (objc_msgSend(*(a1 + 32), "processAttributesWithJobContext:group:cancelBlock:", v3, *(a1 + 40), v7) & 1) != 0))
  {
    v12 = 1;
  }

  else if ((([v3 shouldIndexPeople] & 1) != 0 || objc_msgSend(v3, "shouldAnalyzeGraph")) && (v8[2](v8), objc_msgSend(*(a1 + 32), "loadGraphWithGroup:cancelBlock:", *(a1 + 40), v7)))
  {
    v12 = [*(a1 + 32) processDeletesWithJobContext:v3 group:*(a1 + 40) cancelBlock:v7];
    if ([v3 shouldReset])
    {
      [*(a1 + 32) unloadGraphWithGroup:*(a1 + 40) cancelBlock:v7];
      [v3 resetWithGroup:*(a1 + 40)];
      [*(a1 + 32) loadGraphWithGroup:*(a1 + 40) cancelBlock:v7];
    }

    if (v12)
    {
      if ([v3 shouldIndexPeople] && !objc_msgSend(*(a1 + 32), "processPeopleWithGroup:cancelBlock:", *(a1 + 40), v7))
      {
        v12 = 0;
      }

      else if ([v3 shouldAnalyzeGraph])
      {
        v12 = [*(a1 + 32) processGraphWithGroup:*(a1 + 40) cancelBlock:v7];
      }

      else
      {
        v12 = 1;
      }
    }

    [*(a1 + 32) unloadGraphWithGroup:*(a1 + 40) cancelBlock:v7];
  }

  else
  {
    v12 = 0;
  }

  [v25[5] suspend];
  [v3 end];
  [*(a1 + 32) sendAnalytics];
  if (v12 && ([v3 done] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: deferring", v13, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: completed", v13, 2u);
    }

    v5 = a1 + 64;
  }

  (*(*v5 + 16))();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: done", v13, 2u);
  }

  _Block_object_dispose(&v24, 8);
LABEL_38:
}

void __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) currentMessage];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: too long till check in - %@", &v8, 0xCu);
  }

  v5 = *(a1 + 48);
  if (v5 && ((*(v5 + 16))() & 1) != 0)
  {
    [*(a1 + 32) end];
    [*(a1 + 40) sendAnalytics];
    v6 = [*(a1 + 32) canDefer];
    v7 = 64;
    if (v6)
    {
      v7 = 56;
    }

    (*(*(a1 + v7) + 16))();
    raise(15);
  }

  else
  {
    [*(*(*(a1 + 72) + 8) + 40) reset];
  }
}

uint64_t __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_364(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_364_cold_1(v3);
  }

  v4 = (*(*(a1 + 32) + 16))();
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: should defer", v6, 2u);
  }

  return v4;
}

uint64_t __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_365(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_365_cold_1();
  }

  return [*(*(*(a1 + 32) + 8) + 40) reset];
}

- (void)runWithGroup:(id)group delegate:(id)delegate
{
  groupCopy = group;
  spotlightContext = [(SpotlightKnowledge *)self spotlightContext];
  [spotlightContext start];
  if ([spotlightContext shouldReportProgress])
  {
    [(SpotlightKnowledge *)self processEmbeddingsReportWithJobContext:spotlightContext progressBlock:0 checkpointBlock:0 cancelBlock:&__block_literal_global_369];
    [(SpotlightKnowledge *)self processSuggestedEventsReportWithJobContext:spotlightContext cancelBlock:&__block_literal_global_369];
    [(SpotlightKnowledge *)self processDocumentUnderstandingReportWithJobContext:spotlightContext cancelBlock:&__block_literal_global_369];
  }

  if ([spotlightContext shouldProcessText])
  {
    [(SpotlightKnowledge *)self processTextWithJobContext:spotlightContext group:groupCopy cancelBlock:&__block_literal_global_369];
  }

  if ([spotlightContext shouldProcessAttributes])
  {
    [(SpotlightKnowledge *)self processAttributesWithJobContext:spotlightContext group:groupCopy cancelBlock:&__block_literal_global_369];
  }

  if ((([spotlightContext shouldIndexPeople] & 1) != 0 || objc_msgSend(spotlightContext, "shouldAnalyzeGraph")) && -[SpotlightKnowledge loadGraphWithGroup:cancelBlock:](self, "loadGraphWithGroup:cancelBlock:", groupCopy, &__block_literal_global_369))
  {
    if ([spotlightContext shouldIndexPeople])
    {
      [(SpotlightKnowledge *)self processPeopleWithGroup:groupCopy cancelBlock:&__block_literal_global_369];
    }

    if ([spotlightContext shouldAnalyzeGraph])
    {
      [(SpotlightKnowledge *)self processGraphWithGroup:groupCopy cancelBlock:&__block_literal_global_369];
    }

    [(SpotlightKnowledge *)self unloadGraphWithGroup:groupCopy cancelBlock:&__block_literal_global_369];
  }

  [spotlightContext end];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SKG: done", v7, 2u);
  }
}

void __75__SpotlightKnowledge_updateCoreSpotlightWithItems_index_group_cancelBlock___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __78__SpotlightKnowledge_updateSpotlightContactsWithJobContext_group_cancelBlock___block_invoke_35_cold_1(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __66__SpotlightKnowledge_processLegacyPipelinesReportWithCancelBlock___block_invoke_188_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "Failed to report DAS checkpoint %lu: %@", &v3, 0x16u);
}

void __108__SpotlightKnowledge_runWithQueue_group_progressBlock_checkpointBlock_completeBlock_cancelBlock_deferBlock___block_invoke_364_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SKG: checkin %@", &v1, 0xCu);
}

@end