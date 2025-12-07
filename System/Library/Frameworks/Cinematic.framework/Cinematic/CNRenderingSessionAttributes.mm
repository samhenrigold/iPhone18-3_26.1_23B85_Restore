@interface CNRenderingSessionAttributes
+ (id)_PTGlobalRenderingMetadataFromItems:(id)items;
+ (void)_loadPTGlobalRenderingMetadataFromAsset:(id)asset completionHandler:(id)handler;
+ (void)loadFromAsset:(AVAsset *)asset completionHandler:(void *)completionHandler;
- (CNRenderingSessionAttributes)initWithPTGlobalRenderingMetadata:(id)metadata;
@end

@implementation CNRenderingSessionAttributes

- (CNRenderingSessionAttributes)initWithPTGlobalRenderingMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = CNRenderingSessionAttributes;
  v6 = [(CNRenderingSessionAttributes *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalMetadata, metadata);
  }

  return v7;
}

+ (void)loadFromAsset:(AVAsset *)asset completionHandler:(void *)completionHandler
{
  v6 = asset;
  v7 = completionHandler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__CNRenderingSessionAttributes_loadFromAsset_completionHandler___block_invoke;
  v10[3] = &unk_278A16268;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [self _loadPTGlobalRenderingMetadataFromAsset:v9 completionHandler:v10];
}

void __64__CNRenderingSessionAttributes_loadFromAsset_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _CNLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__CNRenderingSessionAttributes_loadFromAsset_completionHandler___block_invoke_cold_1(v7, a1, v8);
    }

    v9 = _CNCinematicError(2, v7);
    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = [[CNRenderingSessionAttributes alloc] initWithPTGlobalRenderingMetadata:v5];
    v10 = *(*(a1 + 40) + 16);
  }

  v10();
}

+ (void)_loadPTGlobalRenderingMetadataFromAsset:(id)asset completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__CNRenderingSessionAttributes__loadPTGlobalRenderingMetadataFromAsset_completionHandler___block_invoke;
  v8[3] = &unk_278A16290;
  v9 = handlerCopy;
  selfCopy = self;
  v7 = handlerCopy;
  [asset loadMetadataForFormat:0x284A052C0 completionHandler:v8];
}

void __90__CNRenderingSessionAttributes__loadPTGlobalRenderingMetadataFromAsset_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 40) _PTGlobalRenderingMetadataFromItems:a2];
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)_PTGlobalRenderingMetadataFromItems:(id)items
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  itemsCopy = items;
  v4 = [itemsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 key];
        v10 = [v9 isEqualToString:0x284A052E0];

        if (v10)
        {
          value = [v8 value];
          v14 = 0;
          v11 = [MEMORY[0x277D3E890] deserializeMetadataWithType:2 fromGlobalMetadata:value error:&v14];

          goto LABEL_11;
        }
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

void __64__CNRenderingSessionAttributes_loadFromAsset_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_236F52000, log, OS_LOG_TYPE_ERROR, "Error: (%@) Unable to load cinematic global rendering metadata from asset %@", &v4, 0x16u);
}

@end