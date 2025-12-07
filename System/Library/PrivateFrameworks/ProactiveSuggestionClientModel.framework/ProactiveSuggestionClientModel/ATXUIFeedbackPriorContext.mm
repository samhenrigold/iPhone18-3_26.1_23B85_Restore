@interface ATXUIFeedbackPriorContext
- (ATXUIFeedbackPriorContext)init;
- (ATXUIFeedbackPriorContext)initWithCacheUpdateOrdering:(id)ordering blendingModelCacheUpdates:(id)updates clientModelCacheUpdates:(id)cacheUpdates context:(id)context pinnedBlendingModelUICacheUpdateUUID:(id)d;
- (ATXUIFeedbackPriorContext)initWithCoder:(id)coder;
- (ATXUIFeedbackPriorContext)initWithProto:(id)proto;
- (ATXUIFeedbackPriorContext)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXUIFeedbackPriorContext:(id)context;
- (id)_referencedClientModelCaches;
- (id)blendingModelUICacheUpdateForUUID:(id)d;
- (id)clientModelCacheUpdatesForUICacheUpdateUUID:(id)d;
- (id)encodeAsProto;
- (id)proto;
- (id)validContextClassNames;
- (unint64_t)hash;
- (void)_pruneBlendingModelCachesOlderThanUUID:(id)d;
- (void)_validateCacheUpdateOrderingAndCacheDictMapping;
- (void)addBlendingModelUICacheUpdate:(id)update;
- (void)addClientModelCacheUpdate:(id)update;
- (void)encodeWithCoder:(id)coder;
- (void)pruneBlendingModelCachesOverMaxNum;
- (void)pruneContextStateOlderThanBlendingUUID:(id)d;
- (void)pruneUnreferencedClientModelCachesIfPossible;
- (void)updatePinnedBlendingModelUICacheUpdateUUID:(id)d;
@end

@implementation ATXUIFeedbackPriorContext

- (ATXUIFeedbackPriorContext)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [(ATXUIFeedbackPriorContext *)self initWithCacheUpdateOrdering:v3 blendingModelCacheUpdates:v4 clientModelCacheUpdates:v5 context:0 pinnedBlendingModelUICacheUpdateUUID:0];

  return v6;
}

- (ATXUIFeedbackPriorContext)initWithCacheUpdateOrdering:(id)ordering blendingModelCacheUpdates:(id)updates clientModelCacheUpdates:(id)cacheUpdates context:(id)context pinnedBlendingModelUICacheUpdateUUID:(id)d
{
  orderingCopy = ordering;
  updatesCopy = updates;
  cacheUpdatesCopy = cacheUpdates;
  contextCopy = context;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = ATXUIFeedbackPriorContext;
  v17 = [(ATXUIFeedbackPriorContext *)&v25 init];
  if (v17)
  {
    v18 = [orderingCopy mutableCopy];
    cacheUpdateOrdering = v17->_cacheUpdateOrdering;
    v17->_cacheUpdateOrdering = v18;

    v20 = [updatesCopy mutableCopy];
    blendingModelCacheUpdates = v17->_blendingModelCacheUpdates;
    v17->_blendingModelCacheUpdates = v20;

    v22 = [cacheUpdatesCopy mutableCopy];
    clientModelCacheUpdates = v17->_clientModelCacheUpdates;
    v17->_clientModelCacheUpdates = v22;

    objc_storeStrong(&v17->_context, context);
    objc_storeStrong(&v17->_pinnedBlendingModelUICacheUpdateUUID, d);
  }

  return v17;
}

- (void)addClientModelCacheUpdate:(id)update
{
  v20 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  uuid = [updateCopy uuid];

  if (uuid)
  {
    cacheUpdateOrdering = self->_cacheUpdateOrdering;
    uuid2 = [updateCopy uuid];
    [(NSMutableOrderedSet *)cacheUpdateOrdering addObject:uuid2];

    clientModelCacheUpdates = self->_clientModelCacheUpdates;
    uuid3 = [updateCopy uuid];
    [(NSMutableDictionary *)clientModelCacheUpdates setObject:updateCopy forKey:uuid3];

    v12 = __atxlog_handle_feedback(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = updateCopy;
      _os_log_impl(&dword_1DEFC4000, v12, OS_LOG_TYPE_DEFAULT, "%@ - added client model cache update %@", &v16, 0x16u);
    }

    [(ATXUIFeedbackPriorContext *)self pruneUnreferencedClientModelCachesIfPossible];
  }

  else
  {
    v15 = __atxlog_handle_feedback(v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXUIFeedbackPriorContext addClientModelCacheUpdate:?];
    }
  }
}

- (void)addBlendingModelUICacheUpdate:(id)update
{
  v20 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  uuid = [updateCopy uuid];

  if (uuid)
  {
    cacheUpdateOrdering = self->_cacheUpdateOrdering;
    uuid2 = [updateCopy uuid];
    [(NSMutableOrderedSet *)cacheUpdateOrdering addObject:uuid2];

    blendingModelCacheUpdates = self->_blendingModelCacheUpdates;
    uuid3 = [updateCopy uuid];
    [(NSMutableDictionary *)blendingModelCacheUpdates setObject:updateCopy forKey:uuid3];

    v12 = __atxlog_handle_feedback(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = updateCopy;
      _os_log_impl(&dword_1DEFC4000, v12, OS_LOG_TYPE_DEFAULT, "%@ - added blending ui cache update %@", &v16, 0x16u);
    }

    [(ATXUIFeedbackPriorContext *)self pruneBlendingModelCachesOverMaxNum];
  }

  else
  {
    v15 = __atxlog_handle_feedback(v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXUIFeedbackPriorContext addBlendingModelUICacheUpdate:?];
    }
  }
}

- (void)updatePinnedBlendingModelUICacheUpdateUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v6 = dCopy;
    objc_storeStrong(&self->_pinnedBlendingModelUICacheUpdateUUID, d);
    dCopy = v6;
  }
}

- (id)blendingModelUICacheUpdateForUUID:(id)d
{
  if (d)
  {
    v4 = [(NSMutableDictionary *)self->_blendingModelCacheUpdates objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)clientModelCacheUpdatesForUICacheUpdateUUID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v5 = [(ATXUIFeedbackPriorContext *)self blendingModelUICacheUpdateForUUID:dCopy];
    v6 = objc_opt_new();
    if (v5)
    {
      context = objc_autoreleasePoolPush();
      v20 = v5;
      clientModelCacheUpdateUUIDs = [v5 clientModelCacheUpdateUUIDs];
      allValues = [clientModelCacheUpdateUUIDs allValues];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      allValues2 = [(NSMutableDictionary *)self->_clientModelCacheUpdates allValues];
      v10 = [allValues2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(allValues2);
            }

            v14 = *(*(&v21 + 1) + 8 * i);
            uuid = [v14 uuid];
            v16 = [allValues containsObject:uuid];

            if (v16)
            {
              [v6 addObject:v14];
            }
          }

          v11 = [allValues2 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);
      }

      objc_autoreleasePoolPop(context);
      v5 = v20;
    }

    v17 = [v6 copy];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

- (void)pruneContextStateOlderThanBlendingUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(NSMutableOrderedSet *)self->_cacheUpdateOrdering containsObject:dCopy];
    if (v5)
    {
      [(ATXUIFeedbackPriorContext *)self _pruneBlendingModelCachesOlderThanUUID:dCopy];
      [(ATXUIFeedbackPriorContext *)self pruneUnreferencedClientModelCachesIfPossible];
      [(ATXUIFeedbackPriorContext *)self _validateCacheUpdateOrderingAndCacheDictMapping];
    }

    else
    {
      v6 = __atxlog_handle_feedback(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [ATXUIFeedbackPriorContext pruneContextStateOlderThanBlendingUUID:?];
      }
    }
  }
}

- (void)pruneBlendingModelCachesOverMaxNum
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_blendingModelCacheUpdates count]< 3)
  {
    return;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  reversedOrderedSet = [(NSMutableOrderedSet *)self->_cacheUpdateOrdering reversedOrderedSet];
  v4 = [reversedOrderedSet countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (!v4)
  {
LABEL_12:
    v11 = reversedOrderedSet;
    goto LABEL_17;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v16;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v16 != v7)
    {
      objc_enumerationMutation(reversedOrderedSet);
    }

    v9 = *(*(&v15 + 1) + 8 * v8);
    v10 = [(NSMutableDictionary *)self->_blendingModelCacheUpdates objectForKey:v9];

    if (!v10)
    {
      goto LABEL_10;
    }

    if (v6)
    {
      break;
    }

    v6 = 1;
LABEL_10:
    if (v5 == ++v8)
    {
      v5 = [reversedOrderedSet countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v11 = v9;

  if (!v11)
  {
    return;
  }

  v12 = __atxlog_handle_feedback([(ATXUIFeedbackPriorContext *)self pruneContextStateOlderThanBlendingUUID:v11]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412546;
    v20 = v14;
    v21 = 2048;
    v22 = 2;
    _os_log_impl(&dword_1DEFC4000, v12, OS_LOG_TYPE_DEFAULT, "%@ - reached more than %lu ui cache updates, pruned context state", buf, 0x16u);
  }

LABEL_17:
}

- (void)_pruneBlendingModelCachesOlderThanUUID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = objc_opt_new();
  cacheUpdateOrdering = self->_cacheUpdateOrdering;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__ATXUIFeedbackPriorContext__pruneBlendingModelCachesOlderThanUUID___block_invoke;
  v11[3] = &unk_1E86A4280;
  v6 = dCopy;
  v12 = v6;
  selfCopy = self;
  v14 = &v15;
  [(NSMutableOrderedSet *)cacheUpdateOrdering enumerateObjectsUsingBlock:v11];
  v7 = __atxlog_handle_feedback([(NSMutableOrderedSet *)self->_cacheUpdateOrdering removeObjectsInArray:v16[5]]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v16[5];
    *buf = 138412546;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1DEFC4000, v7, OS_LOG_TYPE_DEFAULT, "%@ - _pruneBlendingModelCachesOlderThanUUID removed blending caches with UUIDs: %@", buf, 0x16u);
  }

  _Block_object_dispose(&v15, 8);
}

void __68__ATXUIFeedbackPriorContext__pruneBlendingModelCachesOlderThanUUID___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 isEqual:a1[4]])
  {
    *a4 = 1;
  }

  else
  {
    v6 = [*(a1[5] + 16) objectForKey:v10];
    v7 = v6;
    if (v6)
    {
      v8 = *(a1[5] + 40);
      v9 = [v6 uuid];
      LOBYTE(v8) = [v8 isEqual:v9];

      if ((v8 & 1) == 0)
      {
        [*(a1[5] + 16) removeObjectForKey:v10];
        [*(*(a1[6] + 8) + 40) addObject:v10];
      }
    }
  }
}

- (void)pruneUnreferencedClientModelCachesIfPossible
{
  v25 = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__4;
  v19[4] = __Block_byref_object_dispose__4;
  _referencedClientModelCaches = [(ATXUIFeedbackPriorContext *)self _referencedClientModelCaches];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = objc_opt_new();
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__4;
  v9[4] = __Block_byref_object_dispose__4;
  v10 = objc_opt_new();
  reversedOrderedSet = [(NSMutableOrderedSet *)self->_cacheUpdateOrdering reversedOrderedSet];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__ATXUIFeedbackPriorContext_pruneUnreferencedClientModelCachesIfPossible__block_invoke;
  v8[3] = &unk_1E86A42A8;
  v8[4] = self;
  v8[5] = v11;
  v8[6] = v19;
  v8[7] = &v13;
  v8[8] = v9;
  [reversedOrderedSet enumerateObjectsUsingBlock:v8];

  v4 = __atxlog_handle_feedback([(NSMutableOrderedSet *)self->_cacheUpdateOrdering removeObjectsInArray:v14[5]]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v14[5];
    *buf = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_1DEFC4000, v4, OS_LOG_TYPE_DEFAULT, "%@ - _pruneUnreferencedClientModelCaches removed client caches with UUIDs: %@", buf, 0x16u);
  }

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(v19, 8);
}

uint64_t __73__ATXUIFeedbackPriorContext_pruneUnreferencedClientModelCachesIfPossible__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1[5] + 8) + 24);
  v12 = v3;
  v5 = [*(*(a1[6] + 8) + 40) containsObject:?];
  if (v4 == 1)
  {
    v6 = v12;
    if (v5)
    {
      goto LABEL_15;
    }

    v7 = [*(a1[4] + 24) objectForKey:v12];
    if (v7)
    {
      [*(a1[4] + 24) removeObjectForKey:v12];
      [*(*(a1[7] + 8) + 40) addObject:v12];
    }

    goto LABEL_13;
  }

  if (!v5)
  {
    v7 = [*(a1[4] + 24) objectForKey:v12];
    v8 = [v7 clientModelId];
    if (v8)
    {
      if ([*(*(a1[8] + 8) + 40) containsObject:v8])
      {
        [*(a1[4] + 24) removeObjectForKey:v12];
        v9 = *(*(a1[7] + 8) + 40);
        v10 = v12;
      }

      else
      {
        v9 = *(*(a1[8] + 8) + 40);
        v10 = v8;
      }

      [v9 addObject:v10];
    }

LABEL_13:
    goto LABEL_14;
  }

  *(*(a1[5] + 8) + 24) = 1;
LABEL_14:
  v6 = v12;
LABEL_15:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_validateCacheUpdateOrderingAndCacheDictMapping
{
  *buf = 138412546;
  *(buf + 4) = self;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_ERROR, "%@ - pruned UUIDs without mappings: %@", buf, 0x16u);
}

void __76__ATXUIFeedbackPriorContext__validateCacheUpdateOrderingAndCacheDictMapping__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 16) objectForKey:v5];
  v4 = [*(*(a1 + 32) + 24) objectForKey:v5];
  if (!(v3 | v4))
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }
}

- (id)_referencedClientModelCaches
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_blendingModelCacheUpdates allValues];
  v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        clientModelCacheUpdateUUIDs = [*(*(&v13 + 1) + 8 * i) clientModelCacheUpdateUUIDs];
        allValues2 = [clientModelCacheUpdateUUIDs allValues];
        [v3 addObjectsFromArray:allValues2];
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)validContextClassNames
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ATXPredictionContext", @"ATXUIFeedbackTestPredictionContext", 0}];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (ATXUIFeedbackPriorContext)initWithProtoData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [[ATXPBUIFeedbackPriorContext alloc] initWithData:dataCopy];
    self = [(ATXUIFeedbackPriorContext *)self initWithProto:v6];

    objc_autoreleasePoolPop(v5);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXUIFeedbackPriorContext)initWithProto:(id)proto
{
  v81 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = protoCopy;
      cacheUpdateOrderings = [v6 cacheUpdateOrderings];
      v8 = [cacheUpdateOrderings _pas_mappedArrayWithTransform:&__block_literal_global_6];

      v9 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v8];
      cacheUpdateOrderingsCount = [v6 cacheUpdateOrderingsCount];
      v11 = [v9 count];
      if (cacheUpdateOrderingsCount == v11)
      {
        v68 = v9;
        v69 = v8;
        v12 = objc_opt_new();
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v70 = v6;
        blendingModelCacheUpdates = [v6 blendingModelCacheUpdates];
        v14 = [blendingModelCacheUpdates countByEnumeratingWithState:&v75 objects:v80 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v76;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v76 != v16)
              {
                objc_enumerationMutation(blendingModelCacheUpdates);
              }

              v18 = [[ATXBlendingModelUICacheUpdate alloc] initWithProto:*(*(&v75 + 1) + 8 * i)];
              v19 = v18;
              if (v18)
              {
                uuid = [(ATXBlendingModelUICacheUpdate *)v18 uuid];
                [v12 setObject:v19 forKey:uuid];
              }
            }

            v15 = [blendingModelCacheUpdates countByEnumeratingWithState:&v75 objects:v80 count:16];
          }

          while (v15);
        }

        v6 = v70;
        blendingModelCacheUpdatesCount = [v70 blendingModelCacheUpdatesCount];
        v22 = [v12 count];
        if (blendingModelCacheUpdatesCount == v22)
        {
          selfCopy = self;
          v23 = objc_opt_new();
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          clientModelCacheUpdates = [v70 clientModelCacheUpdates];
          v25 = [clientModelCacheUpdates countByEnumeratingWithState:&v71 objects:v79 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v72;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v72 != v27)
                {
                  objc_enumerationMutation(clientModelCacheUpdates);
                }

                v29 = [[ATXClientModelCacheUpdate alloc] initWithProto:*(*(&v71 + 1) + 8 * j)];
                v30 = v29;
                if (v29)
                {
                  uuid2 = [(ATXClientModelCacheUpdate *)v29 uuid];
                  [v23 setObject:v30 forKey:uuid2];
                }
              }

              v26 = [clientModelCacheUpdates countByEnumeratingWithState:&v71 objects:v79 count:16];
            }

            while (v26);
          }

          v6 = v70;
          clientModelCacheUpdatesCount = [v70 clientModelCacheUpdatesCount];
          v33 = [v23 count];
          v9 = v68;
          if (clientModelCacheUpdatesCount == v33)
          {
            contextClassString = [v70 contextClassString];
            context = [v70 context];
            v36 = context;
            v37 = 0;
            if (contextClassString && context)
            {
              validContextClassNames = [(ATXUIFeedbackPriorContext *)selfCopy validContextClassNames];
              v39 = [validContextClassNames containsObject:contextClassString];

              if (v39)
              {
                v37 = [objc_alloc(NSClassFromString(&contextClassString->isa)) initWithProtoData:v36];
              }

              else
              {
                v37 = 0;
              }
            }

            v66 = v36;
            if ([v70 hasPinnedBlendingModelUICacheUpdateUUID])
            {
              v62 = objc_alloc(MEMORY[0x1E696AFB0]);
              pinnedBlendingModelUICacheUpdateUUID = [v70 pinnedBlendingModelUICacheUpdateUUID];
              v64 = [v62 initWithUUIDString:pinnedBlendingModelUICacheUpdateUUID];
            }

            else
            {
              v64 = 0;
            }

            v8 = v69;
            self = [(ATXUIFeedbackPriorContext *)selfCopy initWithCacheUpdateOrdering:v68 blendingModelCacheUpdates:v12 clientModelCacheUpdates:v23 context:v37 pinnedBlendingModelUICacheUpdateUUID:v64];

            selfCopy2 = self;
            v6 = v70;
          }

          else
          {
            contextClassString = __atxlog_handle_blending_ecosystem(v33);
            self = selfCopy;
            v8 = v69;
            if (os_log_type_enabled(contextClassString, OS_LOG_TYPE_FAULT))
            {
              [(ATXUIFeedbackPriorContext *)contextClassString initWithProto:v55, v56, v57, v58, v59, v60, v61];
            }

            selfCopy2 = 0;
          }
        }

        else
        {
          v23 = __atxlog_handle_blending_ecosystem(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            [(ATXUIFeedbackPriorContext *)v23 initWithProto:v48, v49, v50, v51, v52, v53, v54];
          }

          selfCopy2 = 0;
          v8 = v69;
        }
      }

      else
      {
        v12 = __atxlog_handle_blending_ecosystem(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          [(ATXUIFeedbackPriorContext *)v12 initWithProto:v41, v42, v43, v44, v45, v46, v47];
        }

        selfCopy2 = 0;
      }
    }

    else
    {
      v6 = __atxlog_handle_blending_ecosystem(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(ATXLightweightClientModelCacheUpdate *)self initWithProto:v6];
      }

      selfCopy2 = 0;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

id __43__ATXUIFeedbackPriorContext_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (id)proto
{
  v3 = objc_opt_new();
  array = [(NSMutableOrderedSet *)self->_cacheUpdateOrdering array];
  v5 = [array _pas_mappedArrayWithTransform:&__block_literal_global_28];
  v6 = [v5 mutableCopy];
  [v3 setCacheUpdateOrderings:v6];

  allValues = [(NSMutableDictionary *)self->_blendingModelCacheUpdates allValues];
  v8 = [allValues _pas_mappedArrayWithTransform:&__block_literal_global_31];
  v9 = [v8 mutableCopy];
  [v3 setBlendingModelCacheUpdates:v9];

  allValues2 = [(NSMutableDictionary *)self->_clientModelCacheUpdates allValues];
  v11 = [allValues2 _pas_mappedArrayWithTransform:&__block_literal_global_34];
  v12 = [v11 mutableCopy];
  [v3 setClientModelCacheUpdates:v12];

  encodeAsProto = [(ATXProactiveSuggestionFeedbackContextProtocol *)self->_context encodeAsProto];
  [v3 setContext:encodeAsProto];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v3 setContextClassString:v15];

  pinnedBlendingModelUICacheUpdateUUID = self->_pinnedBlendingModelUICacheUpdateUUID;
  if (pinnedBlendingModelUICacheUpdateUUID)
  {
    uUIDString = [(NSUUID *)pinnedBlendingModelUICacheUpdateUUID UUIDString];
    [v3 setPinnedBlendingModelUICacheUpdateUUID:uUIDString];
  }

  return v3;
}

- (id)encodeAsProto
{
  proto = [(ATXUIFeedbackPriorContext *)self proto];
  data = [proto data];

  return data;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXUIFeedbackPriorContext *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXUIFeedbackPriorContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending_ecosystem(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"protobufData" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXBiomeUIContext" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    self = [(ATXUIFeedbackPriorContext *)self initWithProtoData:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUIFeedbackPriorContext *)self isEqualToATXUIFeedbackPriorContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUIFeedbackPriorContext:(id)context
{
  contextCopy = context;
  v5 = self->_cacheUpdateOrdering;
  v6 = v5;
  if (v5 == contextCopy[1])
  {
  }

  else
  {
    v7 = [(NSMutableOrderedSet *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v8 = self->_blendingModelCacheUpdates;
  v9 = v8;
  if (v8 == contextCopy[2])
  {
  }

  else
  {
    v10 = [(NSMutableDictionary *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v11 = self->_clientModelCacheUpdates;
  v12 = v11;
  if (v11 == contextCopy[3])
  {
  }

  else
  {
    v13 = [(NSMutableDictionary *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v14 = self->_context;
  v15 = v14;
  if (v14 == contextCopy[4])
  {
  }

  else
  {
    v16 = [(ATXProactiveSuggestionFeedbackContextProtocol *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
LABEL_15:
      v17 = 0;
      goto LABEL_21;
    }
  }

  v18 = self->_pinnedBlendingModelUICacheUpdateUUID;
  v19 = v18;
  if (v18 == contextCopy[5])
  {
    v17 = 1;
  }

  else
  {
    v17 = [(NSUUID *)v18 isEqual:?];
  }

LABEL_21:
  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSMutableOrderedSet *)self->_cacheUpdateOrdering hash];
  v4 = [(NSMutableDictionary *)self->_blendingModelCacheUpdates hash]- v3 + 32 * v3;
  v5 = [(NSMutableDictionary *)self->_clientModelCacheUpdates hash]- v4 + 32 * v4;
  v6 = [(ATXProactiveSuggestionFeedbackContextProtocol *)self->_context hash]- v5 + 32 * v5;
  return [(NSUUID *)self->_pinnedBlendingModelUICacheUpdateUUID hash]- v6 + 32 * v6;
}

- (void)addClientModelCacheUpdate:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v7 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addBlendingModelUICacheUpdate:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v7 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)pruneContextStateOlderThanBlendingUUID:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v9 = [*(a1 + 16) allKeys];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

@end