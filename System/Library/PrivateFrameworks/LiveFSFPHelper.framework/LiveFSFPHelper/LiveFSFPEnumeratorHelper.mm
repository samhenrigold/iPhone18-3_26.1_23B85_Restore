@interface LiveFSFPEnumeratorHelper
+ (id)newWithEnumeratedItem:(id)item extension:(id)extension error:(id *)error;
+ (void)applyParentUpdateAcrossEnumerators:(id)enumerators;
- (LiveFSFPEnumeratorHelper)initWithEnumeratedItem:(id)item container:(id)container extension:(id)extension;
- (id)getDirContents;
- (id)getItemsFromTree:(id)tree inRange:(_NSRange)range error:(id *)error;
- (id)initForExtension:(id)extension item:(id)item;
- (void)addInterestedItem:(id)item newName:(id)name forSelf:(BOOL)self;
- (void)applyDelete:(id)delete newTombstone:(id)tombstone toSelf:(BOOL)self;
- (void)currentSyncAnchorWithCompletionHandler:(id)handler;
- (void)enumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor;
- (void)enumerateFileItemsForObserver:(id)observer startingAtPage:(id)page;
- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page;
- (void)invalidate;
- (void)reallyEnumerateItemsForObserver:(id)observer startingAtPage:(id)page;
- (void)resetHistory;
- (void)synchronizedEnumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor;
@end

@implementation LiveFSFPEnumeratorHelper

- (id)initForExtension:(id)extension item:(id)item
{
  extensionCopy = extension;
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = LiveFSFPEnumeratorHelper;
  v9 = [(LiveFSFPEnumeratorHelper *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->ext, extension);
    objc_storeStrong(&v10->_enumeratedItem, item);
    v10->_state = 0;
    *&v10->historyReset = 0;
    v11 = objc_opt_new();
    updatedItems = v10->updatedItems;
    v10->updatedItems = v11;

    v13 = objc_opt_new();
    deletedItems = v10->deletedItems;
    v10->deletedItems = v13;

    v10->_addParent = [(LiveFSFPExtensionHelper *)v10->ext fetchRoot];
  }

  return v10;
}

- (LiveFSFPEnumeratorHelper)initWithEnumeratedItem:(id)item container:(id)container extension:(id)extension
{
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  containerCopy = container;
  v10 = [(LiveFSFPEnumeratorHelper *)self initForExtension:extension item:itemCopy];
  if (v10)
  {
    v11 = livefs_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      path = [itemCopy path];
      itemIdentifier = [itemCopy itemIdentifier];
      v16 = 134218754;
      v17 = v10;
      v18 = 2112;
      v19 = path;
      v20 = 2048;
      v21 = itemCopy;
      v22 = 2112;
      v23 = itemIdentifier;
      _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_DEFAULT, "enumerator helper[%p]: Creating enumerator for %@[%p] id %@", &v16, 0x2Au);
    }

    objc_storeStrong(&v10->_dc, container);
    v10->_hasPersistentIDs = [(LiveFSFPEnumeratorDataContainer *)v10->_dc hasPersistentIDs];
    v10->_isDir = [(LiveFSFPEnumeratorDataContainer *)v10->_dc isDir];
    v10->_isVolumeWide = [(LiveFSFPEnumeratorDataContainer *)v10->_dc isVolumeWide];
    if ([(LiveFSFPExtensionHelper *)v10->ext fetchRoot])
    {
      addParent = 1;
    }

    else
    {
      addParent = [containerCopy addParent];
    }

    v10->_addParent = addParent;
    [(LiveFSFPEnumeratorDataContainer *)v10->_dc addEnumerator:v10];
  }

  return v10;
}

+ (id)newWithEnumeratedItem:(id)item extension:(id)extension error:(id *)error
{
  itemCopy = item;
  extensionCopy = extension;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__2;
  v43 = __Block_byref_object_dispose__2;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  enumeratorHelperQueue = [extensionCopy enumeratorHelperQueue];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __66__LiveFSFPEnumeratorHelper_newWithEnumeratedItem_extension_error___block_invoke;
  v20 = &unk_27981AE98;
  v11 = extensionCopy;
  v21 = v11;
  v23 = &v39;
  v12 = itemCopy;
  v22 = v12;
  v24 = &v33;
  v25 = &v27;
  errorCopy = error;
  dispatch_sync(enumeratorHelperQueue, &v17);

  v13 = v28[5];
  if (v13)
  {
    v14 = 0;
    if (error)
    {
      *error = v13;
    }
  }

  else
  {
    v15 = [self alloc];
    v14 = [v15 initWithEnumeratedItem:v34[5] container:v40[5] extension:{v11, v17, v18, v19, v20, v21}];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  return v14;
}

void __66__LiveFSFPEnumeratorHelper_newWithEnumeratedItem_extension_error___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) getEnumeratorForContainer:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_sync_exit(v2);
  v6 = *(*(*(a1 + 48) + 8) + 40);
  if (v6)
  {
    *(*(*(a1 + 56) + 8) + 40) = [v6 enumeratedItem];

    MEMORY[0x2821F96F8]();
  }

  else
  {
    v7 = [*(a1 + 32) itemForIdentifier:*(a1 + 40) error:*(a1 + 72)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(*(a1 + 56) + 8) + 40);
    if (v10 && ([v10 ensureFileHandleOrError:*(a1 + 72)] & 1) == 0)
    {
      v11 = *(a1 + 32);
      objc_sync_enter(v11);
      v12 = [*(*(*(a1 + 56) + 8) + 40) container];

      if (v12)
      {
        v13 = livefs_std_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          __66__LiveFSFPEnumeratorHelper_newWithEnumeratedItem_extension_error___block_invoke_cold_1((a1 + 40), v13);
        }

        v14 = [*(*(*(a1 + 56) + 8) + 40) container];
        v15 = *(*(a1 + 48) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;
      }

      else
      {
        v17 = [[LiveFSFPEnumeratorDataContainer alloc] initWithEnumeratedItem:*(*(*(a1 + 56) + 8) + 40) fileHandle:*(a1 + 40) extension:*(a1 + 32)];
        v18 = *(*(a1 + 48) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;
      }

      v20 = *(*(*(a1 + 48) + 8) + 40);
      if (v20)
      {
        [*(a1 + 32) addDirContainer:v20 forContainerID:*(a1 + 40)];
        [*(*(*(a1 + 48) + 8) + 40) setAddedToExtension:1];
        [*(*(*(a1 + 48) + 8) + 40) setEnumeratedItemID:*(a1 + 40)];
        v21 = livefs_std_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = *(a1 + 40);
          v23 = *(*(*(a1 + 48) + 8) + 40);
          v26 = 138412546;
          v27 = v23;
          v28 = 2112;
          v29 = v22;
          _os_log_impl(&dword_255FE9000, v21, OS_LOG_TYPE_INFO, "Added new dc %@ id %@", &v26, 0x16u);
        }
      }

      else
      {
        v24 = getNSErrorFromLiveFSErrno();
        v25 = *(*(a1 + 64) + 8);
        v21 = *(v25 + 40);
        *(v25 + 40) = v24;
      }

      objc_sync_exit(v11);
    }
  }
}

- (void)invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    enumeratedItem = self->_enumeratedItem;
    if (enumeratedItem)
    {
      filename = [(LiveFSFPItemHelper *)self->_enumeratedItem filename];
    }

    else
    {
      filename = @"<no_enumerated_item>";
    }

    v7 = 136315394;
    v8 = "[LiveFSFPEnumeratorHelper invalidate]";
    v9 = 2112;
    v10 = filename;
    _os_log_impl(&dword_255FE9000, v3, OS_LOG_TYPE_DEFAULT, "%s: marking state as DEAD, name '%@'", &v7, 0x16u);
    if (enumeratedItem)
    {
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_state = 3;
  [(LiveFSFPEnumeratorDataContainer *)selfCopy->_dc dropEnumerator:selfCopy];
  objc_sync_exit(selfCopy);
}

- (id)getDirContents
{
  sortedByDate = self->_sortedByDate;
  dc = self->_dc;
  if (sortedByDate)
  {
    [(LiveFSFPEnumeratorDataContainer *)dc contentsSortedByDate];
  }

  else
  {
    [(LiveFSFPEnumeratorDataContainer *)dc contentsSortedByName];
  }
  v4 = ;

  return v4;
}

- (id)getItemsFromTree:(id)tree inRange:(_NSRange)range error:(id *)error
{
  length = range.length;
  location = range.location;
  treeCopy = tree;
  v9 = self->ext;
  objc_sync_enter(v9);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__LiveFSFPEnumeratorHelper_getItemsFromTree_inRange_error___block_invoke;
  v12[3] = &unk_27981AEC0;
  v12[4] = self;
  v10 = [treeCopy extractItemsInRange:location withBlock:{length, v12}];
  objc_sync_exit(v9);

  return v10;
}

id __59__LiveFSFPEnumeratorHelper_getItemsFromTree_inRange_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2 + *(a2 + 10)];
  v6 = [*(*(a1 + 32) + 8) getItemForParent:*(*(a1 + 32) + 56) name:v5];
  if (!v6)
  {
    v7 = objc_opt_class();
    if (*(a2 + 10) >= 0xB8u)
    {
      v8 = 184;
    }

    else
    {
      v8 = *(a2 + 10);
    }

    v9 = [MEMORY[0x277CBEA90] dataWithBytes:a2 + 16 length:v8];
    v6 = [v7 newItemForFH:0 withReference:0 name:v5 parent:*(*(a1 + 32) + 56) type:v4 attrs:v9 extension:*(*(a1 + 32) + 8)];
  }

  [v6 prefetchXattrBasedValues];

  return v6;
}

- (void)enumerateFileItemsForObserver:(id)observer startingAtPage:(id)page
{
  v15[1] = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  pageCopy = page;
  state = self->_state;
  if (state)
  {
    if (state == 3)
    {
      v9 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:89];
      v10 = livefs_std_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [LiveFSFPEnumeratorHelper enumerateFileItemsForObserver:startingAtPage:];
      }

LABEL_13:

      [observerCopy finishEnumeratingWithError:v9];
      goto LABEL_14;
    }
  }

  else
  {
    self->_state = 2;
  }

  if (!self->_enumeratedItem)
  {
    dc = self->_dc;
    if (dc)
    {
      v13 = MEMORY[0x277CCA9B8];
      containerID = [(LiveFSFPEnumeratorDataContainer *)dc containerID];
      v9 = [v13 fileProviderErrorForNonExistentItemWithIdentifier:containerID];
    }

    else
    {
      v9 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:2];
    }

    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPEnumeratorHelper enumerateFileItemsForObserver:startingAtPage:];
    }

    goto LABEL_13;
  }

  v15[0] = self->_enumeratedItem;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [observerCopy didEnumerateItems:v11];

  [observerCopy finishEnumeratingUpToPage:0];
LABEL_14:
}

- (void)reallyEnumerateItemsForObserver:(id)observer startingAtPage:(id)page
{
  v37[2] = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  pageCopy = page;
  v31 = 0;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPEnumeratorHelper reallyEnumerateItemsForObserver:startingAtPage:];
  }

  if (!self->_state)
  {
    ensureConnectedForUpdates = [(LiveFSFPEnumeratorDataContainer *)self->_dc ensureConnectedForUpdates];
    if (ensureConnectedForUpdates)
    {
      [observerCopy finishEnumeratingWithError:ensureConnectedForUpdates];

      goto LABEL_48;
    }
  }

  if (self->_isDir)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    state = self->_state;
    if (state)
    {
      if (state == 3)
      {
        v11 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:89];
        v12 = livefs_std_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [LiveFSFPEnumeratorHelper enumerateFileItemsForObserver:startingAtPage:];
        }

        [observerCopy finishEnumeratingWithError:v11];
LABEL_10:
        getDirContents = 0;
LABEL_47:
        objc_sync_exit(selfCopy);

        goto LABEL_48;
      }
    }

    else if ([pageCopy isEqual:*MEMORY[0x277CC6328]])
    {
      self->_state = 1;
    }

    else if ([pageCopy isEqual:*MEMORY[0x277CC6320]])
    {
      self->_state = 1;
      selfCopy->_sortedByDate = 1;
    }

    else if (!self->_state)
    {
      v29 = livefs_std_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [LiveFSFPEnumeratorHelper reallyEnumerateItemsForObserver:startingAtPage:];
      }

      self->_state = 3;
      v11 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
      [observerCopy finishEnumeratingWithError:v11];
      goto LABEL_10;
    }

    getDirContents = [(LiveFSFPEnumeratorHelper *)selfCopy getDirContents];
    if (!getDirContents)
    {
      loadContents = [(LiveFSFPEnumeratorDataContainer *)selfCopy->_dc loadContents];
      getDirContents = [(LiveFSFPEnumeratorHelper *)selfCopy getDirContents];
    }

    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v33 = selfCopy;
      v34 = 2112;
      v35 = getDirContents;
      v36 = 2048;
      v37[0] = [getDirContents count];
      _os_log_debug_impl(&dword_255FE9000, v16, OS_LOG_TYPE_DEBUG, "enumerator helper[%p]: dirContent: %@, count: %lu", buf, 0x20u);
    }

    if (([pageCopy isEqual:*MEMORY[0x277CC6328]] & 1) != 0 || objc_msgSend(pageCopy, "isEqual:", *MEMORY[0x277CC6320]))
    {
      LODWORD(v17) = 0;
      v31 = 0;
    }

    else if ([pageCopy length] != 4 || (v25 = pageCopy, v17 = *objc_msgSend(pageCopy, "bytes"), v31 = v17, (v17 & 0x3F) != 0) || objc_msgSend(getDirContents, "count") <= v17)
    {
      v11 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
      [observerCopy finishEnumeratingWithError:v11];
      goto LABEL_47;
    }

    v18 = [getDirContents count];
    v19 = (v17 + 64);
    if (v18 <= v19)
    {
      v20 = [getDirContents count] - v17;
    }

    else
    {
      v20 = 64;
    }

    v21 = livefs_std_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v33 = selfCopy;
      v34 = 2048;
      v35 = v17;
      v36 = 2048;
      v37[0] = v20;
      _os_log_debug_impl(&dword_255FE9000, v21, OS_LOG_TYPE_DEBUG, "enumerator helper[%p]: range: %lu -> %lu", buf, 0x20u);
    }

    v30 = 0;
    v22 = [(LiveFSFPEnumeratorHelper *)selfCopy getItemsFromTree:getDirContents inRange:v17 error:v20, &v30];
    v11 = v30;
    if (!v22)
    {
      [observerCopy finishEnumeratingWithError:v11];
      goto LABEL_47;
    }

    if ([(LiveFSFPEnumeratorDataContainer *)selfCopy->_dc addParent])
    {
      v23 = [MEMORY[0x277CBEB18] arrayWithArray:v22];
      [v23 addObject:selfCopy->_enumeratedItem];
      v24 = v23;

      [(LiveFSFPEnumeratorDataContainer *)selfCopy->_dc setAddParent:0];
    }

    else
    {
      v24 = v22;
    }

    [observerCopy didEnumerateItems:v24];
    if (v18 <= v19)
    {
      [observerCopy finishEnumeratingUpToPage:0];
      v27 = 1;
    }

    else
    {
      v31 = v19;
      v26 = [MEMORY[0x277CBEA90] dataWithBytes:&v31 length:4];
      [observerCopy finishEnumeratingUpToPage:v26];

      v27 = 0;
    }

    objc_sync_exit(selfCopy);

    v28 = livefs_std_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      v33 = selfCopy;
      v34 = 2080;
      v35 = "[LiveFSFPEnumeratorHelper reallyEnumerateItemsForObserver:startingAtPage:]";
      v36 = 1024;
      LODWORD(v37[0]) = v31;
      WORD2(v37[0]) = 1024;
      *(v37 + 6) = v27;
      _os_log_impl(&dword_255FE9000, v28, OS_LOG_TYPE_INFO, "enumerator helper[%p]: %s ending, start: %d, lastPage: %d", buf, 0x22u);
    }
  }

  else
  {
    [(LiveFSFPEnumeratorHelper *)self enumerateFileItemsForObserver:observerCopy startingAtPage:pageCopy];
  }

LABEL_48:
}

- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page
{
  v19 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  pageCopy = page;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[LiveFSFPEnumeratorHelper enumerateItemsForObserver:startingAtPage:]";
    v17 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_255FE9000, v8, OS_LOG_TYPE_INFO, "%s: starting on %p", buf, 0x16u);
  }

  dc = self->_dc;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__LiveFSFPEnumeratorHelper_enumerateItemsForObserver_startingAtPage___block_invoke;
  v12[3] = &unk_27981A7E0;
  v12[4] = self;
  v13 = observerCopy;
  v14 = pageCopy;
  v10 = pageCopy;
  v11 = observerCopy;
  [(LiveFSFPEnumeratorDataContainer *)dc dispatchOntoUpdateQueue:v12];
}

- (void)currentSyncAnchorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPEnumeratorHelper currentSyncAnchorWithCompletionHandler:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_state == 3)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v7 = currentAnchor();
    (handlerCopy)[2](handlerCopy, v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)synchronizedEnumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor
{
  v47 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  anchorCopy = anchor;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPEnumeratorHelper synchronizedEnumerateChangesForObserver:fromSyncAnchor:];
  }

  v9 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((*(selfCopy + 40) & 2) != 0)
  {
    if ([(NSMutableSet *)selfCopy->deletedItems count])
    {
      allObjects = [(NSMutableSet *)selfCopy->deletedItems allObjects];
    }

    else
    {
      allObjects = &unk_286815038;
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = [allObjects objectAtIndexedSubscript:0];
    v11 = [v18 fileProviderErrorForNonExistentItemWithIdentifier:v19];

    [observerCopy finishEnumeratingWithError:v11];
    goto LABEL_18;
  }

  if (selfCopy->historyReset)
  {
    selfCopy->historyReset = 0;
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1002 userInfo:0];
    [observerCopy finishEnumeratingWithError:v11];
    allObjects = 0;
LABEL_18:

LABEL_19:
    objc_sync_exit(selfCopy);
    goto LABEL_39;
  }

  if (![(NSMutableSet *)selfCopy->deletedItems count]&& ![(NSMutableSet *)selfCopy->updatedItems count]&& (*(selfCopy + 40) & 1) == 0 && !selfCopy->_addParent)
  {
    v30 = livefs_std_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255FE9000, v30, OS_LOG_TYPE_DEFAULT, "exiting after seeing 0 changes", buf, 2u);
    }

    [observerCopy finishEnumeratingChangesUpToSyncAnchor:anchorCopy moreComing:0];
    allObjects = 0;
    goto LABEL_19;
  }

  v13 = livefs_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    deletedItems = selfCopy->deletedItems;
    updatedItems = selfCopy->updatedItems;
    v16 = -(*(selfCopy + 40) & 1);
    *buf = 138412802;
    v40 = updatedItems;
    v41 = 2112;
    v42 = deletedItems;
    v43 = 1024;
    LODWORD(v44) = v16;
    _os_log_impl(&dword_255FE9000, v13, OS_LOG_TYPE_DEFAULT, "updateds: %@ deleteds %@ self upd %u", buf, 0x1Cu);
  }

  if ([(NSMutableSet *)selfCopy->updatedItems count])
  {
    allObjects2 = [(NSMutableSet *)selfCopy->updatedItems allObjects];
  }

  else
  {
    allObjects2 = MEMORY[0x277CBEBF8];
  }

  if ([(NSMutableSet *)selfCopy->deletedItems count])
  {
    allObjects3 = [(NSMutableSet *)selfCopy->deletedItems allObjects];
  }

  else
  {
    allObjects3 = MEMORY[0x277CBEBF8];
  }

  v31 = currentAnchor();
  [(NSMutableSet *)selfCopy->updatedItems removeAllObjects];
  [(NSMutableSet *)selfCopy->deletedItems removeAllObjects];
  if (*(selfCopy + 40))
  {
    *(selfCopy + 40) &= ~1u;
    [v9 addObject:selfCopy->_enumeratedItem];
  }

  if (selfCopy->_addParent)
  {
    [v9 addObject:selfCopy->_enumeratedItem];
  }

  objc_sync_exit(selfCopy);

  v21 = livefs_std_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = allObjects2;
    v41 = 2112;
    v42 = allObjects3;
    _os_log_impl(&dword_255FE9000, v21, OS_LOG_TYPE_DEFAULT, "About to walk %@ and %@", buf, 0x16u);
  }

  if (selfCopy->_isDir)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __83__LiveFSFPEnumeratorHelper_synchronizedEnumerateChangesForObserver_fromSyncAnchor___block_invoke;
    v37[3] = &unk_27981AEE8;
    v37[4] = selfCopy;
    v38 = v9;
    [allObjects2 enumerateObjectsUsingBlock:v37];
    if ([allObjects3 count])
    {
      v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(allObjects3, "count")}];
      hasPersistentIDs = selfCopy->_hasPersistentIDs;
      v24 = selfCopy->_enumeratedItem;
      itemIdentifier = [(LiveFSFPItemHelper *)selfCopy->_enumeratedItem itemIdentifier];
      v26 = [itemIdentifier isEqualToString:*MEMORY[0x277CC6348]];

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __83__LiveFSFPEnumeratorHelper_synchronizedEnumerateChangesForObserver_fromSyncAnchor___block_invoke_150;
      v32[3] = &unk_27981AF10;
      v35 = hasPersistentIDs;
      v33 = v24;
      v36 = v26;
      v27 = v22;
      v34 = v27;
      v28 = v24;
      [allObjects3 enumerateObjectsUsingBlock:v32];
      allObjects = v27;
    }

    else
    {
      allObjects = allObjects3;
    }
  }

  else
  {
    allObjects = allObjects3;
  }

  v29 = livefs_std_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v40 = "[LiveFSFPEnumeratorHelper synchronizedEnumerateChangesForObserver:fromSyncAnchor:]";
    v41 = 2112;
    v42 = allObjects2;
    v43 = 2112;
    v44 = allObjects;
    v45 = 2112;
    v46 = v9;
    _os_log_impl(&dword_255FE9000, v29, OS_LOG_TYPE_DEFAULT, "%s: exiting with updateIDs %@, tombstones %@, newItems %@", buf, 0x2Au);
  }

  [observerCopy didDeleteItemsWithIdentifiers:allObjects];
  [observerCopy didUpdateItems:v9];
  [observerCopy finishEnumeratingChangesUpToSyncAnchor:v31 moreComing:0];

  selfCopy = allObjects2;
LABEL_39:
}

void __83__LiveFSFPEnumeratorHelper_synchronizedEnumerateChangesForObserver_fromSyncAnchor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = a1 + 32;
  v5 = [*(*(a1 + 32) + 8) itemAtPath:v3 parent:*(*(a1 + 32) + 56)];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    v6 = livefs_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__LiveFSFPEnumeratorHelper_synchronizedEnumerateChangesForObserver_fromSyncAnchor___block_invoke_cold_1(v3, v4, v6);
    }
  }
}

void __83__LiveFSFPEnumeratorHelper_synchronizedEnumerateChangesForObserver_fromSyncAnchor___block_invoke_150(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 48) == 1)
  {
    v4 = [MEMORY[0x277D23D90] identifierForItem:0 name:v3 parentID:{objc_msgSend(*(a1 + 32), "inodeNum")}];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if (*(a1 + 49) == 1)
  {
    v4 = v3;
    goto LABEL_5;
  }

  v6 = [*(a1 + 32) itemIdentifier];
  v5 = [v6 stringByAppendingPathComponent:v7];

LABEL_7:
  [*(a1 + 40) addObject:v5];
}

- (void)enumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor
{
  v19 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  anchorCopy = anchor;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[LiveFSFPEnumeratorHelper enumerateChangesForObserver:fromSyncAnchor:]";
    v17 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_255FE9000, v8, OS_LOG_TYPE_DEFAULT, "%s: starting on %p", buf, 0x16u);
  }

  ext = self->ext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__LiveFSFPEnumeratorHelper_enumerateChangesForObserver_fromSyncAnchor___block_invoke;
  v12[3] = &unk_27981A7E0;
  v12[4] = self;
  v13 = observerCopy;
  v14 = anchorCopy;
  v10 = anchorCopy;
  v11 = observerCopy;
  [(LiveFSFPExtensionHelper *)ext dispatchOntoRenameQueue:v12];
}

- (void)addInterestedItem:(id)item newName:(id)name forSelf:(BOOL)self
{
  selfCopy = self;
  itemCopy = item;
  nameCopy = name;
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (selfCopy)
  {
    *(selfCopy2 + 40) |= 1u;
  }

  else
  {
    [(NSMutableSet *)selfCopy2->deletedItems removeObject:itemCopy];
    [(NSMutableSet *)selfCopy2->updatedItems addObject:nameCopy];
  }

  objc_sync_exit(selfCopy2);
}

- (void)applyDelete:(id)delete newTombstone:(id)tombstone toSelf:(BOOL)self
{
  selfCopy = self;
  deleteCopy = delete;
  tombstoneCopy = tombstone;
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (selfCopy)
  {
    *(selfCopy2 + 40) |= 2u;
    [(NSMutableSet *)selfCopy2->updatedItems removeAllObjects];
    p_deletedItems = &selfCopy2->deletedItems;
    [(NSMutableSet *)selfCopy2->deletedItems removeAllObjects];
LABEL_6:
    [*p_deletedItems addObject:tombstoneCopy];
    goto LABEL_10;
  }

  updatedItems = selfCopy2->updatedItems;
  if (updatedItems)
  {
    p_deletedItems = &selfCopy2->deletedItems;
    if (selfCopy2->deletedItems)
    {
      [(NSMutableSet *)updatedItems removeObject:deleteCopy];
      goto LABEL_6;
    }
  }

  v13 = livefs_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [LiveFSFPEnumeratorHelper applyDelete:? newTombstone:? toSelf:?];
  }

LABEL_10:
  objc_sync_exit(selfCopy2);
}

- (void)resetHistory
{
  obj = self;
  objc_sync_enter(obj);
  obj->historyReset = 1;
  objc_sync_exit(obj);
}

+ (void)applyParentUpdateAcrossEnumerators:(id)enumerators
{
  enumeratorsCopy = enumerators;
  [enumeratorsCopy applyParentUpdateAcrossEnumerators];
  [enumeratorsCopy handleEnumeratedItemChanged];
}

void __66__LiveFSFPEnumeratorHelper_newWithEnumeratedItem_extension_error___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_255FE9000, a2, OS_LOG_TYPE_FAULT, "Found an item with a dc which isn't indexed for it. item %@", &v3, 0xCu);
}

- (void)enumerateFileItemsForObserver:startingAtPage:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)enumerateFileItemsForObserver:startingAtPage:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  v3 = v0;
  _os_log_debug_impl(&dword_255FE9000, v1, OS_LOG_TYPE_DEBUG, "enumerator helper[%p]: returning %@", v2, 0x16u);
}

- (void)reallyEnumerateItemsForObserver:startingAtPage:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)reallyEnumerateItemsForObserver:startingAtPage:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __83__LiveFSFPEnumeratorHelper_synchronizedEnumerateChangesForObserver_fromSyncAnchor___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*(*a2 + 56) filename];
  v7 = 138412546;
  v8 = a1;
  OUTLINED_FUNCTION_6();
  v9 = v6;
  _os_log_error_impl(&dword_255FE9000, a3, OS_LOG_TYPE_ERROR, "Error finding item %@ in enumerator %@", &v7, 0x16u);
}

- (void)applyDelete:(uint64_t *)a1 newTombstone:toSelf:.cold.1(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v4 = 138412546;
  v5 = v1;
  OUTLINED_FUNCTION_6();
  v6 = v2;
  _os_log_error_impl(&dword_255FE9000, v3, OS_LOG_TYPE_ERROR, "bad updateds: %@ deleteds %@", &v4, 0x16u);
}

@end