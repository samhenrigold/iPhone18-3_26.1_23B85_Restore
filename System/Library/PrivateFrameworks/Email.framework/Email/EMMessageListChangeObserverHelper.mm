@interface EMMessageListChangeObserverHelper
+ (void)collection:(id)collection notifyChangeObserversAboutChangedItemIDs:(id)ds extraInfo:(id)info;
+ (void)collection:(id)collection notifyChangeObserversAboutChangedItemIDs:(id)ds itemIDsWithCountChanges:(id)changes itemIDsWithBrandIndicatorLocationChanges:(id)locationChanges;
@end

@implementation EMMessageListChangeObserverHelper

+ (void)collection:(id)collection notifyChangeObserversAboutChangedItemIDs:(id)ds extraInfo:(id)info
{
  collectionCopy = collection;
  dsCopy = ds;
  infoCopy = info;
  v11 = [infoCopy objectForKeyedSubscript:@"changesByObjectID"];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__6;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __99__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_extraInfo___block_invoke;
  v17 = &unk_1E826E0E8;
  v20 = &v28;
  v21 = &v22;
  v12 = v11;
  v18 = v12;
  v13 = collectionCopy;
  v19 = v13;
  [v13 enumerateObserversWithBlock:&v14];
  [self collection:v13 notifyChangeObserversAboutChangedItemIDs:dsCopy itemIDsWithCountChanges:v29[5] itemIDsWithBrandIndicatorLocationChanges:{v23[5], v14, v15, v16, v17}];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

void __99__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(*(a1 + 48) + 8) + 40) && !*(*(*(a1 + 56) + 8) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __99__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_extraInfo___block_invoke_2;
    v19[3] = &unk_1E826E0C0;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v20 = v8;
    v21 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v19];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_extraInfo___block_invoke_3;
    v16[3] = &unk_1E826E0C0;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 56);
    v17 = v14;
    v18 = v15;
    [v13 enumerateKeysAndObjectsUsingBlock:v16];
  }
}

void __99__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_extraInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 count];

  if (v5)
  {
    v6 = [*(a1 + 32) itemIDForObjectID:v7];
    if (v6)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
    }
  }
}

void __99__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_extraInfo___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 brandIndicatorLocation];

  if (v5)
  {
    v6 = [*(a1 + 32) itemIDForObjectID:v7];
    if (v6)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
    }
  }
}

+ (void)collection:(id)collection notifyChangeObserversAboutChangedItemIDs:(id)ds itemIDsWithCountChanges:(id)changes itemIDsWithBrandIndicatorLocationChanges:(id)locationChanges
{
  collectionCopy = collection;
  dsCopy = ds;
  changesCopy = changes;
  locationChangesCopy = locationChanges;
  if (objc_opt_respondsToSelector())
  {
    itemIDSections = [collectionCopy itemIDSections];
    getObject = [itemIDSections getObject];
  }

  else
  {
    getObject = MEMORY[0x1E695E0F8];
  }

  v16 = MEMORY[0x1E695DFD8];
  allKeys = [getObject allKeys];
  v18 = [v16 setWithArray:allKeys];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke;
  v27[3] = &unk_1E826E138;
  v19 = collectionCopy;
  v28 = v19;
  v20 = getObject;
  v29 = v20;
  v30 = v18;
  v25 = dsCopy;
  v21 = dsCopy;
  v31 = v21;
  v22 = changesCopy;
  v32 = v22;
  v23 = locationChangesCopy;
  v33 = v23;
  v34 = a2;
  selfCopy = self;
  v24 = v18;
  [v19 enumerateObserversWithBlock:{v27, v25}];
}

void __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke_2;
  v25 = &unk_1E826E110;
  v4 = v3;
  v26 = v4;
  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  v29 = *(a1 + 48);
  v5 = _Block_copy(&v22);
  v6 = v5[2](v5, *(a1 + 56));
  v7 = v5[2](v5, *(a1 + 64));
  v8 = v5[2](v5, *(a1 + 72));
  if (objc_opt_respondsToSelector())
  {
    if (!*(a1 + 64))
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:*(a1 + 80) object:*(a1 + 88) file:@"EMMessageList.m" lineNumber:1555 description:@"itemIDsWithCountChanges cannot be nil if changeObserver responds to collection:changedItemIDs:itemIDsWithCountChanges:"];
    }

    v9 = [EMMessageList log:v22];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 count];
      v11 = [v7 count];
      v12 = [v8 count];
      v13 = objc_opt_class();
      v14 = *(a1 + 88);
      *buf = 134219266;
      v31 = v10;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v12;
      v36 = 2112;
      v37 = v13;
      v38 = 2048;
      v39 = v4;
      v40 = 2112;
      v41 = v14;
      v15 = v13;
      _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "Notifying observer of %lu changed itemIDs (%lu with count changes, %lu with brand indicator changes): <%@: %p>\n%@", buf, 0x3Eu);
    }

    [v4 collection:*(a1 + 32) changedItemIDs:v6 itemIDsWithCountChanges:v7 itemIDsWithBrandIndicatorLocationChanges:v8];
  }

  else
  {
    v16 = [EMMessageList log:v22];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 count];
      v18 = objc_opt_class();
      v19 = *(a1 + 88);
      *buf = 134218754;
      v31 = v17;
      v32 = 2112;
      v33 = v18;
      v34 = 2048;
      v35 = v4;
      v36 = 2112;
      v37 = v19;
      v20 = v18;
      _os_log_impl(&dword_1C6655000, v16, OS_LOG_TYPE_DEFAULT, "Notifying observer of %lu changed itemIDs: <%@: %p>\n%@", buf, 0x2Au);
    }

    [v4 collection:*(a1 + 32) changedItemIDs:v6];
  }
}

id __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) sectionForCollection:*(a1 + 40)];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke_3;
        v10[3] = &unk_1E826E050;
        v11 = *(a1 + 48);
        v4 = v4;
        v12 = v4;
        v5 = [v3 ef_filter:v10];
        v6 = &v11;

        goto LABEL_7;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke_4;
  v8[3] = &unk_1E826DD80;
  v9 = *(a1 + 56);
  v5 = [v3 ef_filter:v8];
  v6 = &v9;
LABEL_7:

  return v5;
}

uint64_t __154__EMMessageListChangeObserverHelper_collection_notifyChangeObserversAboutChangedItemIDs_itemIDsWithCountChanges_itemIDsWithBrandIndicatorLocationChanges___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  return v4;
}

@end