@interface SKGAttributeProcessor
+ (id)sharedImporterProcessor;
+ (id)sharedProcessor;
- (SKGAttributeProcessor)init;
- (id)addUpdaterAttributesForMDPlistRecord:(id *)record bundleID:(id)d;
- (id)eventsJournalsStats;
- (id)initForImporter;
- (id)processorAttributesForRecord:(id)record bundleID:(id)d protectionClass:(id)class isUpdate:(BOOL)update;
- (void)getGenerationConfigurationForProcessorFlags:(unint64_t)flags configurationHandler:(id)handler completionHandler:(id)completionHandler;
- (void)getGenerationProgressReportForProtectionClasses:(id)classes processorFlags:(unint64_t)flags reportHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation SKGAttributeProcessor

+ (id)sharedProcessor
{
  if (sharedProcessor_onceToken != -1)
  {
    +[SKGAttributeProcessor sharedProcessor];
  }

  v3 = sharedProcessor_sSharedProcessor;

  return v3;
}

- (SKGAttributeProcessor)init
{
  v6.receiver = self;
  v6.super_class = SKGAttributeProcessor;
  v2 = [(SKGAttributeProcessor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKGProcessorConnection);
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

uint64_t __40__SKGAttributeProcessor_sharedProcessor__block_invoke()
{
  sharedProcessor_sSharedProcessor = objc_alloc_init(SKGAttributeProcessor);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedImporterProcessor
{
  if (sharedImporterProcessor_onceToken != -1)
  {
    +[SKGAttributeProcessor sharedImporterProcessor];
  }

  v3 = sharedImporterProcessor_sSharedProcessor;

  return v3;
}

uint64_t __48__SKGAttributeProcessor_sharedImporterProcessor__block_invoke()
{
  sharedImporterProcessor_sSharedProcessor = [[SKGAttributeProcessor alloc] initForImporter];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initForImporter
{
  v6.receiver = self;
  v6.super_class = SKGAttributeProcessor;
  v2 = [(SKGAttributeProcessor *)&v6 init];
  if (v2)
  {
    initForImporter = [[SKGProcessorConnection alloc] initForImporter];
    connection = v2->_connection;
    v2->_connection = initForImporter;
  }

  return v2;
}

- (id)processorAttributesForRecord:(id)record bundleID:(id)d protectionClass:(id)class isUpdate:(BOOL)update
{
  updateCopy = update;
  recordCopy = record;
  dCopy = d;
  classCopy = class;
  v12 = +[SKGProcessor sharedProcessor];
  v13 = [v12 isUpdateFromSpotlightknowledged:recordCopy];

  if (v13)
  {
    v14 = MEMORY[0x1E695E0F8];
    goto LABEL_53;
  }

  v15 = +[SKGProcessorContext sharedContext];
  enableKeyphrases = [v15 enableKeyphrases];

  if (enableKeyphrases)
  {
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (CurrentLoggingLevel >= 7)
    {
      v18 = SKGLogInit(CurrentLoggingLevel);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [(SKGAttributeProcessor *)v18 processorAttributesForRecord:v19 bundleID:v20 protectionClass:v21 isUpdate:v22, v23, v24, v25];
      }
    }

    v26 = 4;
  }

  else
  {
    v26 = 0;
  }

  v27 = +[SKGProcessorContext sharedContext];
  enableDocumentUnderstanding = [v27 enableDocumentUnderstanding];

  if (enableDocumentUnderstanding)
  {
    v29 = SKGLogGetCurrentLoggingLevel();
    if (v29 >= 7)
    {
      v30 = SKGLogInit(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [(SKGAttributeProcessor *)v30 processorAttributesForRecord:v31 bundleID:v32 protectionClass:v33 isUpdate:v34, v35, v36, v37];
      }
    }

    v26 |= 0x20uLL;
  }

  v38 = +[SKGProcessorContext sharedContext];
  enableSuggestedEvents = [v38 enableSuggestedEvents];

  if (enableSuggestedEvents)
  {
    v40 = SKGLogGetCurrentLoggingLevel();
    if (v40 >= 7)
    {
      v41 = SKGLogInit(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        [(SKGAttributeProcessor *)v41 processorAttributesForRecord:v42 bundleID:v43 protectionClass:v44 isUpdate:v45, v46, v47, v48];
      }
    }

    v26 |= 0x10uLL;
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v49 = +[SKGProcessor sharedProcessor];
  v50 = [v49 updateSKGProcessorAttributes:v14 record:recordCopy bundleID:dCopy protectionClass:classCopy isUpdate:updateCopy processorFlags:v26];

  v51 = +[SKGProcessorContext sharedContext];
  enableEmbeddings = [v51 enableEmbeddings];

  v53 = SKGLogGetCurrentLoggingLevel();
  if (v53 >= 7)
  {
    v54 = SKGLogInit(v53);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [SKGAttributeProcessor processorAttributesForRecord:enableEmbeddings bundleID:v54 protectionClass:? isUpdate:?];
    }
  }

  if (!enableEmbeddings)
  {
LABEL_45:
    if (!v50)
    {
      goto LABEL_53;
    }

    goto LABEL_46;
  }

  v55 = [recordCopy objectForKeyedSubscript:@"kMDItemEmbeddingVersion"];

  if (v55)
  {
    v56 = SKGLogGetCurrentLoggingLevel();
    if (v56 < 7)
    {
      goto LABEL_45;
    }

    v57 = SKGLogInit(v56);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      [SKGAttributeProcessor processorAttributesForRecord:recordCopy bundleID:v57 protectionClass:? isUpdate:?];
    }

    goto LABEL_44;
  }

  v58 = +[SKGProcessor sharedProcessor];
  v59 = [v58 needsEmbeddingsForRecord:recordCopy bundleID:dCopy];

  v60 = +[SKGProcessor sharedProcessor];
  v61 = [v60 shouldGenerateEmbeddingsForRecord:recordCopy bundleID:dCopy];

  if (!v59)
  {
    goto LABEL_45;
  }

  v62 = SKGLogGetCurrentLoggingLevel();
  if (v62 >= 7)
  {
    v63 = SKGLogInit(v62);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      [SKGAttributeProcessor processorAttributesForRecord:bundleID:protectionClass:isUpdate:];
    }
  }

  if (!v61)
  {
    v68 = MEMORY[0x1E696AD98];
    v57 = +[SKGProcessorContext sharedContext];
    v69 = [v68 numberWithInteger:{-[NSObject embeddingVersion](v57, "embeddingVersion")}];
    [v14 setObject:v69 forKey:@"kMDItemEmbeddingVersion"];

LABEL_44:
    goto LABEL_45;
  }

  [v14 setObject:&unk_1F0BDCFE8 forKey:@"_kMDItemNeedsEmbeddings"];
  v64 = +[SKGProcessor sharedProcessor];
  v65 = [v64 needsPriorityForRecord:recordCopy bundleID:dCopy];

  v66 = SKGLogGetCurrentLoggingLevel();
  if (v66 >= 7)
  {
    v67 = SKGLogInit(v66);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      [SKGAttributeProcessor processorAttributesForRecord:bundleID:protectionClass:isUpdate:];
    }
  }

  if (v65)
  {
    [v14 setObject:&unk_1F0BDCFE8 forKey:@"_kMDItemNeedsPriority"];
  }

LABEL_46:
  v70 = +[SKGProcessor sharedProcessor];
  v71 = [v70 copyContentURLFromRecord:recordCopy];

  if (v71)
  {
    v72 = +[SKGProcessor sharedProcessor];
    v73 = [v72 copyContentTypeFromRecord:recordCopy];

    if (v73)
    {
      memset(v79, 0, sizeof(v79));
      v74 = [MEMORY[0x1E6982C40] typeWithIdentifier:v73];
      v78 = 0;
      if (CSGetDiskVersionForContentURL(v71, v74, v79, &v78))
      {
        v75 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v79[0] + 1)];
        [v14 setObject:v75 forKey:@"_kMDItemContentURLFileVersion"];

        v76 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&v79[0]];
        [v14 setObject:v76 forKey:@"_kMDItemContentURLFileID"];
      }
    }
  }

LABEL_53:

  return v14;
}

- (id)addUpdaterAttributesForMDPlistRecord:(id *)record bundleID:(id)d
{
  v9 = *record;
  dCopy = d;
  v6 = _MDPlistContainerCopyObject();
  v7 = [(SKGAttributeProcessor *)self processorAttributesForRecord:v6 bundleID:dCopy protectionClass:0 isUpdate:0, *&v9.var0, *&v9.var2];

  return v7;
}

- (void)getGenerationProgressReportForProtectionClasses:(id)classes processorFlags:(unint64_t)flags reportHandler:(id)handler completionHandler:(id)completionHandler
{
  flagsCopy = flags;
  classesCopy = classes;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = v12;
  if ((flagsCopy & 4) != 0)
  {
    [v12 addObject:@"embedding"];
    if ((flagsCopy & 8) == 0)
    {
LABEL_3:
      if ((flagsCopy & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((flagsCopy & 8) == 0)
  {
    goto LABEL_3;
  }

  [v13 addObject:@"keyphrase"];
  if ((flagsCopy & 0x20) == 0)
  {
LABEL_4:
    if ((flagsCopy & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v13 addObject:@"suggestedEvents"];
  if ((flagsCopy & 0x40) != 0)
  {
LABEL_5:
    [v13 addObject:@"documentUnderstanding"];
  }

LABEL_6:
  [(SKGProcessorConnection *)self->_connection getGenerationProgressReportForTypes:v13 protectionClasses:classesCopy reportHandler:handlerCopy completionHandler:completionHandlerCopy];
}

- (void)getGenerationConfigurationForProcessorFlags:(unint64_t)flags configurationHandler:(id)handler completionHandler:(id)completionHandler
{
  flagsCopy = flags;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = v9;
  if ((flagsCopy & 4) != 0)
  {
    [v9 addObject:@"embedding"];
  }

  [(SKGProcessorConnection *)self->_connection getGenerationConfigurationForTypes:v10 configurationHandler:handlerCopy completionHandler:completionHandlerCopy];
}

- (id)eventsJournalsStats
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__SKGAttributeProcessor_eventsJournalsStats__block_invoke;
  v9[3] = &unk_1E74B7EB0;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  [(SKGProcessorConnection *)connection eventsJournalsStatsWithCompletion:v9];
  v6 = dispatch_time(0, 300000000000);
  dispatch_group_wait(v5, v6);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __44__SKGAttributeProcessor_eventsJournalsStats__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"journalsStats"];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

- (void)processorAttributesForRecord:(char)a1 bundleID:(NSObject *)a2 protectionClass:isUpdate:.cold.4(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_1977A7000, a2, OS_LOG_TYPE_DEBUG, "SKGProcessor+EmbeddingsUtils#processorAttributesForRecord includeEmbeddings=%{BOOL}d", v2, 8u);
}

- (void)processorAttributesForRecord:(void *)a1 bundleID:(NSObject *)a2 protectionClass:isUpdate:.cold.5(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 objectForKeyedSubscript:@"_kMDItemEmbeddingsSN"];
  v5 = [a1 objectForKeyedSubscript:@"kMDItemEmbeddingVersion"];
  v6[0] = 67109376;
  v6[1] = v4 == 0;
  v7 = 1024;
  v8 = v5 == 0;
  _os_log_debug_impl(&dword_1977A7000, a2, OS_LOG_TYPE_DEBUG, "SKGProcessor+EmbeddingsUtils#processorAttributesForRecord skipping adding NeedsEmbeddings as notHasItemEmbeddingsSN=%{BOOL}d notHasItemEmbeddingVersion=%{BOOL}d", v6, 0xEu);
}

- (void)processorAttributesForRecord:bundleID:protectionClass:isUpdate:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  v3[0] = 138413058;
  OUTLINED_FUNCTION_1();
  v4 = v0;
  v5 = 1;
  v6 = v0;
  v7 = v1;
  _os_log_debug_impl(&dword_1977A7000, v2, OS_LOG_TYPE_DEBUG, "SKGAttributeProcessor#processorAttributesForRecord bundleID=%@ canHaveEmbeddings=%{BOOL}d needsEmbeddings=%{BOOL}d resulting extractEmbeddings=%{BOOL}d", v3, 0x1Eu);
}

- (void)processorAttributesForRecord:bundleID:protectionClass:isUpdate:.cold.7()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 138412546;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1977A7000, v0, OS_LOG_TYPE_DEBUG, "SKGAttributeProcessor#processorAttributesForRecord bundleID=%@ needsPriotity=%{BOOL}d", v1, 0x12u);
}

@end