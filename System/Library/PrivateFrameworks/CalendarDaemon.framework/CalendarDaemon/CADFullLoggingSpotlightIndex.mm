@interface CADFullLoggingSpotlightIndex
- (CADFullLoggingSpotlightIndex)initWithIndex:(id)index;
- (void)beginIndexBatch;
- (void)deleteAllSearchableItemsForBundleID:(id)d completionHandler:(id)handler;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)endIndexBatchWithExpectedClientState:(id)state newClientState:(id)clientState completionHandler:(id)handler;
- (void)indexSearchableItems:(id)items completionHandler:(id)handler;
@end

@implementation CADFullLoggingSpotlightIndex

- (CADFullLoggingSpotlightIndex)initWithIndex:(id)index
{
  indexCopy = index;
  v9.receiver = self;
  v9.super_class = CADFullLoggingSpotlightIndex;
  v6 = [(CADFullLoggingSpotlightIndex *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedIndex, index);
  }

  return v7;
}

- (void)beginIndexBatch
{
  v3 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_INFO, "beginIndexBatch called", v4, 2u);
  }

  [(CADSpotlightIndex *)self->_wrappedIndex beginIndexBatch];
}

- (void)endIndexBatchWithExpectedClientState:(id)state newClientState:(id)clientState completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  clientStateCopy = clientState;
  handlerCopy = handler;
  v11 = CADSpotlightHandle;
  v12 = os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO);
  if (stateCopy)
  {
    if (v12)
    {
      *v16 = 138412290;
      *&v16[4] = stateCopy;
      v13 = "endIndexBatchWithExpectedClientState called with expectedClientState %@";
      v14 = v11;
      v15 = 12;
LABEL_6:
      _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_INFO, v13, v16, v15);
    }
  }

  else if (v12)
  {
    *v16 = 0;
    v13 = "endIndexBatchWithExpectedClientState called";
    v14 = v11;
    v15 = 2;
    goto LABEL_6;
  }

  [(CADSpotlightIndex *)self->_wrappedIndex endIndexBatchWithExpectedClientState:stateCopy newClientState:clientStateCopy completionHandler:handlerCopy, *v16, *&v16[8]];
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v8 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    *buf = 134218242;
    v15 = [identifiersCopy count];
    v16 = 2112;
    v17 = identifiersCopy;
    _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_INFO, "deleteSearchableItems called with %lu domain identifiers: %@", buf, 0x16u);
  }

  wrappedIndex = self->_wrappedIndex;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__CADFullLoggingSpotlightIndex_deleteSearchableItemsWithDomainIdentifiers_completionHandler___block_invoke;
  v12[3] = &unk_27851B190;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(CADSpotlightIndex *)wrappedIndex deleteSearchableItemsWithDomainIdentifiers:identifiersCopy completionHandler:v12];
}

void __93__CADFullLoggingSpotlightIndex_deleteSearchableItemsWithDomainIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_INFO, "deleteSearchableItems finished with error: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)indexSearchableItems:(id)items completionHandler:(id)handler
{
  selfCopy = self;
  v37 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  handlerCopy = handler;
  v6 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    *buf = 134217984;
    v33 = [itemsCopy count];
    _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_INFO, "indexSearchableItems called with %lu searchable items: [", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        attributeSet = [v13 attributeSet];
        attributeDictionary = [attributeSet attributeDictionary];
        v16 = [attributeDictionary mutableCopy];

        [v16 removeObjectForKey:@"_kMDItemProviderDataTypes"];
        v17 = CADSpotlightHandle;
        if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
        {
          v18 = v17;
          attributeSet2 = [v13 attributeSet];
          customAttributeDictionary = [attributeSet2 customAttributeDictionary];
          *buf = 138412546;
          v33 = v16;
          v34 = 2112;
          v35 = customAttributeDictionary;
          _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_INFO, "Item %@\n%@", buf, 0x16u);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v10);
  }

  v21 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_INFO, "]", buf, 2u);
  }

  wrappedIndex = selfCopy->_wrappedIndex;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __71__CADFullLoggingSpotlightIndex_indexSearchableItems_completionHandler___block_invoke;
  v26[3] = &unk_27851B190;
  v27 = handlerCopy;
  v23 = handlerCopy;
  [(CADSpotlightIndex *)wrappedIndex indexSearchableItems:v8 completionHandler:v26];
}

void __71__CADFullLoggingSpotlightIndex_indexSearchableItems_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_INFO, "indexSearchableItems finished with error: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)deleteAllSearchableItemsForBundleID:(id)d completionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = dCopy;
    _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_INFO, "deleteSearchableItemsForBundleID called with bundle id: %@", buf, 0xCu);
  }

  wrappedIndex = self->_wrappedIndex;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__CADFullLoggingSpotlightIndex_deleteAllSearchableItemsForBundleID_completionHandler___block_invoke;
  v11[3] = &unk_27851B190;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(CADSpotlightIndex *)wrappedIndex deleteAllSearchableItemsForBundleID:dCopy completionHandler:v11];
}

void __86__CADFullLoggingSpotlightIndex_deleteAllSearchableItemsForBundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_INFO, "deleteAllSearchableItemsForBundleID finished with error: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

@end