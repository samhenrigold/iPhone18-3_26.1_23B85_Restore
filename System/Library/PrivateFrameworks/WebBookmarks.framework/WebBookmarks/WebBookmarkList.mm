@interface WebBookmarkList
- (WebBookmarkList)initWithQuery:(id)query skipOffset:(unsigned int)offset collection:(id)collection queue:(id)queue;
- (id)_arrayForDifferenceCalculation;
- (id)_bookmarkAtIndex:(unsigned int)index paginate:(BOOL)paginate skipDecodingSyncData:(BOOL)data;
- (id)_sortedBookmarksByDateAdded;
- (id)bookmarkArray;
- (id)bookmarkArrayRequestingCount:(unsigned int)count;
- (id)bookmarkArraySkippingDecodeSyncData;
- (id)bookmarksSortedByDateWithLimit:(unsigned int)limit;
- (id)differenceFromList:(id)list withOptions:(unint64_t)options;
- (void)_loadBookmarksForDifferenceFromList:(id)list;
- (void)_moveBookmarkAtIndex:(unsigned int)index toIndex:(unsigned int)toIndex;
- (void)loadBookmarksArraySortedByDateAsynchronously:(id)asynchronously;
@end

@implementation WebBookmarkList

- (id)bookmarkArray
{
  bookmarkCount = self->_bookmarkCount;
  if (!bookmarkCount)
  {
    bookmarkArray = [(WebBookmarkList *)self->_shadowBookmarkList bookmarkArray];
    bookmarkArray2 = bookmarkArray;
    v10 = MEMORY[0x277CBEBF8];
    if (bookmarkArray)
    {
      v10 = bookmarkArray;
    }

    v8 = v10;
    goto LABEL_7;
  }

  v4 = [(WebBookmarkList *)self bookmarkAtIndex:bookmarkCount - 1];
  shadowBookmarkList = self->_shadowBookmarkList;
  bookmarks = self->_bookmarks;
  if (shadowBookmarkList)
  {
    bookmarkArray2 = [(WebBookmarkList *)shadowBookmarkList bookmarkArray];
    v8 = [(NSMutableArray *)bookmarks arrayByAddingObjectsFromArray:bookmarkArray2];
LABEL_7:
    v11 = v8;

    goto LABEL_9;
  }

  v11 = [(NSMutableArray *)bookmarks copy];
LABEL_9:

  return v11;
}

- (id)_bookmarkAtIndex:(unsigned int)index paginate:(BOOL)paginate skipDecodingSyncData:(BOOL)data
{
  dataCopy = data;
  paginateCopy = paginate;
  _primaryBookmarkCount = [(WebBookmarkList *)self _primaryBookmarkCount];
  v10 = index - _primaryBookmarkCount;
  if (index >= _primaryBookmarkCount)
  {
    v15 = [(WebBookmarkList *)self->_shadowBookmarkList _bookmarkAtIndex:v10 paginate:paginateCopy skipDecodingSyncData:dataCopy];
    goto LABEL_22;
  }

  v11 = self->_skipOffset + index;
  v12 = [(NSMutableArray *)self->_bookmarks count];
  if (v11 >= v12)
  {
    v13 = v11;
    if (paginateCopy)
    {
      if ([(WebBookmarkListQuery *)self->_query isCustomQuery])
      {
        v14 = self->_bookmarkCount - 1;
      }

      else
      {
        v14 = v12 + 64;
      }

      if (v11 <= v14)
      {
        v13 = v14;
      }

      else
      {
        v13 = v11;
      }
    }

    queue = self->_queue;
    if (queue)
    {
      *buf = 0;
      v26 = buf;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__3;
      v29 = __Block_byref_object_dispose__3;
      v30 = 0;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __66__WebBookmarkList__bookmarkAtIndex_paginate_skipDecodingSyncData___block_invoke;
      v21[3] = &unk_279E765B0;
      v21[4] = self;
      v21[5] = buf;
      v22 = v12;
      v23 = v13;
      v24 = dataCopy;
      dispatch_sync(queue, v21);
      v17 = *(v26 + 5);
      _Block_object_dispose(buf, 8);

      if (!v17)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = [(WebBookmarkListQuery *)self->_query bookmarksInCollection:self->_collection fromIndex:v12 toIndex:v13 skipDecodingSyncData:dataCopy];
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    ct_green_tea_logger_create_static();
    v18 = getCTGreenTeaOsLogHandle();
    v19 = v18;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272C20000, v19, OS_LOG_TYPE_INFO, "Read Safari bookmarks", buf, 2u);
    }

    [(NSMutableArray *)self->_bookmarks addObjectsFromArray:v17];
  }

  if ([(NSMutableArray *)self->_bookmarks count]> v11)
  {
    v15 = [(NSMutableArray *)self->_bookmarks objectAtIndex:v11];
    goto LABEL_22;
  }

LABEL_21:
  v15 = 0;
LABEL_22:

  return v15;
}

uint64_t __66__WebBookmarkList__bookmarkAtIndex_paginate_skipDecodingSyncData___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) bookmarksInCollection:*(*(a1 + 32) + 32) fromIndex:*(a1 + 48) toIndex:*(a1 + 52) skipDecodingSyncData:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)bookmarkArraySkippingDecodeSyncData
{
  bookmarkCount = self->_bookmarkCount;
  if (!bookmarkCount)
  {
    bookmarkArraySkippingDecodeSyncData = [(WebBookmarkList *)self->_shadowBookmarkList bookmarkArraySkippingDecodeSyncData];
    bookmarkArraySkippingDecodeSyncData2 = bookmarkArraySkippingDecodeSyncData;
    v10 = MEMORY[0x277CBEBF8];
    if (bookmarkArraySkippingDecodeSyncData)
    {
      v10 = bookmarkArraySkippingDecodeSyncData;
    }

    v8 = v10;
    goto LABEL_7;
  }

  v4 = [(WebBookmarkList *)self bookmarkAtIndex:bookmarkCount - 1 skipDecodingSyncData:1];
  shadowBookmarkList = self->_shadowBookmarkList;
  bookmarks = self->_bookmarks;
  if (shadowBookmarkList)
  {
    bookmarkArraySkippingDecodeSyncData2 = [(WebBookmarkList *)shadowBookmarkList bookmarkArraySkippingDecodeSyncData];
    v8 = [(NSMutableArray *)bookmarks arrayByAddingObjectsFromArray:bookmarkArraySkippingDecodeSyncData2];
LABEL_7:
    v11 = v8;

    goto LABEL_9;
  }

  v11 = [(NSMutableArray *)bookmarks copy];
LABEL_9:

  return v11;
}

- (id)bookmarkArrayRequestingCount:(unsigned int)count
{
  if (count && (bookmarkCount = self->_bookmarkCount) != 0)
  {
    v6 = bookmarkCount - 1;
    if (v6 >= count - 1)
    {
      v7 = count - 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = [(WebBookmarkList *)self bookmarkAtIndex:v7];
    v9 = [(WebBookmarkList *)self->_shadowBookmarkList bookmarkArrayRequestingCount:count - v7];
    v10 = [(NSMutableArray *)self->_bookmarks arrayByAddingObjectsFromArray:v9];
  }

  else
  {
    v11 = [(WebBookmarkList *)self->_shadowBookmarkList bookmarkArrayRequestingCount:*&count];
    v9 = v11;
    v12 = MEMORY[0x277CBEBF8];
    if (v11)
    {
      v12 = v11;
    }

    v10 = v12;
  }

  v13 = v10;

  return v13;
}

- (id)bookmarksSortedByDateWithLimit:(unsigned int)limit
{
  bookmarkCount = self->_bookmarkCount;
  if (bookmarkCount)
  {
    v6 = bookmarkCount - 1;
    if (v6 >= limit - 1)
    {
      v7 = limit - 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = [(WebBookmarkList *)self _bookmarkAtIndex:v7 paginate:0 skipDecodingSyncData:0];
    _sortedBookmarksByDateAdded = [(WebBookmarkList *)self _sortedBookmarksByDateAdded];
  }

  else
  {
    _sortedBookmarksByDateAdded = MEMORY[0x277CBEBF8];
  }

  return _sortedBookmarksByDateAdded;
}

- (void)loadBookmarksArraySortedByDateAsynchronously:(id)asynchronously
{
  asynchronouslyCopy = asynchronously;
  v5 = asynchronouslyCopy;
  if (self->_bookmarkCount)
  {
    v6 = [(NSMutableArray *)self->_bookmarks count];
    if (v6 + 63 >= self->_bookmarkCount - 1)
    {
      v7 = self->_bookmarkCount - 1;
    }

    else
    {
      v7 = v6 + 63;
    }

    v8 = [(WebBookmarkList *)self _bookmarkAtIndex:v7 paginate:0 skipDecodingSyncData:0];
    if ([(NSMutableArray *)self->_bookmarks count]>= self->_bookmarkCount)
    {
      _sortedBookmarksByDateAdded = [(WebBookmarkList *)self _sortedBookmarksByDateAdded];
      (v5)[2](v5, _sortedBookmarksByDateAdded);
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __64__WebBookmarkList_loadBookmarksArraySortedByDateAsynchronously___block_invoke;
      v10[3] = &unk_279E75530;
      v10[4] = self;
      v11 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v10);
    }
  }

  else
  {
    (*(asynchronouslyCopy + 2))(asynchronouslyCopy, MEMORY[0x277CBEBF8]);
  }
}

- (id)_sortedBookmarksByDateAdded
{
  v2 = [(NSMutableArray *)self->_bookmarks copy];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_11];

  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_5];

  return v4;
}

uint64_t __46__WebBookmarkList__sortedBookmarksByDateAdded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 dateAdded];
  if (v3)
  {
    v4 = [v2 isBuiltinBookmark] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __46__WebBookmarkList__sortedBookmarksByDateAdded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 dateAdded];
  v6 = [v4 dateAdded];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_arrayForDifferenceCalculation
{
  v21 = *MEMORY[0x277D85DE8];
  _primaryBookmarkCount = [(WebBookmarkList *)self _primaryBookmarkCount];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:_primaryBookmarkCount];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_bookmarks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        uUID = [*(*(&v16 + 1) + 8 * i) UUID];
        [v4 addObject:uUID];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count] < _primaryBookmarkCount)
  {
    v11 = 0;
    do
    {
      v12 = v11 + 1;
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      [v4 addObject:v13];

      v14 = [v4 count];
      v11 = v12;
    }

    while (v14 < _primaryBookmarkCount);
  }

  return v4;
}

- (void)_loadBookmarksForDifferenceFromList:(id)list
{
  listCopy = list;
  if (listCopy)
  {
    _primaryBookmarkCount = [(WebBookmarkList *)self _primaryBookmarkCount];
    v5 = _primaryBookmarkCount - [listCopy _primaryBookmarkCount];
    v6 = [listCopy[1] count];
    v7 = (v5 + v6) & ~((v5 + v6) >> 63);
    if (v7 >= _primaryBookmarkCount)
    {
      v7 = _primaryBookmarkCount;
    }

    if (v7)
    {
      v8 = [(WebBookmarkList *)self _bookmarkAtIndex:(v7 - 1) paginate:0 skipDecodingSyncData:0];
    }
  }
}

- (id)differenceFromList:(id)list withOptions:(unint64_t)options
{
  listCopy = list;
  if (options)
  {
    [(WebBookmarkList *)self _loadBookmarksForDifferenceFromList:listCopy];
  }

  _arrayForDifferenceCalculation = [(WebBookmarkList *)self _arrayForDifferenceCalculation];
  if (listCopy)
  {
    _arrayForDifferenceCalculation2 = [listCopy _arrayForDifferenceCalculation];
  }

  else
  {
    _arrayForDifferenceCalculation2 = MEMORY[0x277CBEBF8];
  }

  v9 = [_arrayForDifferenceCalculation differenceFromArray:_arrayForDifferenceCalculation2 withOptions:(2 * options) & 4];

  return v9;
}

- (WebBookmarkList)initWithQuery:(id)query skipOffset:(unsigned int)offset collection:(id)collection queue:(id)queue
{
  queryCopy = query;
  collectionCopy = collection;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = WebBookmarkList;
  v14 = [(WebBookmarkList *)&v20 init];
  if (!v14 || (v15 = objc_alloc_init(MEMORY[0x277CBEB18]), bookmarks = v14->_bookmarks, v14->_bookmarks = v15, bookmarks, objc_storeStrong(&v14->_query, query), v14->_skipOffset = offset, objc_storeStrong(&v14->_collection, collection), objc_storeStrong(&v14->_queue, queue), v17 = [(WebBookmarkListQuery *)v14->_query countInCollection:v14->_collection], v17 == -1))
  {
    v18 = 0;
  }

  else
  {
    v14->_bookmarkCount = v17;
    v18 = v14;
  }

  return v18;
}

- (void)_moveBookmarkAtIndex:(unsigned int)index toIndex:(unsigned int)toIndex
{
  v4 = *&toIndex;
  v14 = [(WebBookmarkList *)self bookmarkAtIndex:?];
  v7 = [(WebBookmarkList *)self bookmarkAtIndex:v4];
  orderIndex = [v7 orderIndex];

  if (v4 >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v4;
  }

  if (v4 <= index)
  {
    indexCopy2 = index;
  }

  else
  {
    indexCopy2 = v4;
  }

  if (v4 < index)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  do
  {
    v12 = [(WebBookmarkList *)self bookmarkAtIndex:indexCopy];
    [v12 _setOrderIndex:{objc_msgSend(v12, "orderIndex") + v11}];

    indexCopy = (indexCopy + 1);
  }

  while (indexCopy <= indexCopy2);
  [v14 _setOrderIndex:orderIndex];
  [v14 markAttributesAsModified:4];
  bookmarks = self->_bookmarks;
  if (v4 >= index)
  {
    [(NSMutableArray *)bookmarks insertObject:v14 atIndex:(v4 + 1)];
  }

  else
  {
    [(NSMutableArray *)bookmarks insertObject:v14 atIndex:v4];
    ++index;
  }

  [(NSMutableArray *)self->_bookmarks removeObjectAtIndex:index];
}

@end