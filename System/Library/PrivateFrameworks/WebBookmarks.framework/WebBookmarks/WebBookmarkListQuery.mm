@interface WebBookmarkListQuery
- (WebBookmarkListQuery)initWithBookmarksWhere:(id)where folderID:(int)d orderBy:(id)by usingFilter:(id)filter;
- (WebBookmarkListQuery)initWithFolderID:(int)d inCollection:(id)collection usingFilter:(id)filter options:(unint64_t)options;
- (id)_filterBookmarks:(id)bookmarks;
- (id)_normalizeUserTypedString:(id)string;
- (id)_sqliteInConditionForInMemoryModifiedBookmarksInFolder:(int)folder collection:(id)collection;
- (id)_sqliteNotInConditionForInMemoryModifiedAndDeleted:(BOOL)deleted bookmarksInFolder:(int)folder collection:(id)collection;
- (id)bookmarksInCollection:(id)collection fromIndex:(unsigned int)index toIndex:(unsigned int)toIndex;
- (id)bookmarksInCollection:(id)collection fromIndex:(unsigned int)index toIndex:(unsigned int)toIndex skipDecodingSyncData:(BOOL)data;
- (id)debugDescription;
- (int)_childCountInDatabaseForFolderFetchInCollection:(id)collection skipCountingInDatabaseBookmarksThatAreDeletedInMemory:(BOOL)memory countShouldUseNumChildrenIfPossible:(BOOL)possible;
- (int)_inMemoryAddedChildrenCountForBookmarkFolder:(int)folder collection:(id)collection skipCountingBookmarksThatAreDeletedInMemory:(BOOL)memory;
- (int)countInCollection:(id)collection;
- (int64_t)_listQueryType;
- (void)_preparePrefixesFromNormalizedString:(id)string;
@end

@implementation WebBookmarkListQuery

- (int64_t)_listQueryType
{
  if (self->_customQuery)
  {
    return 2;
  }

  else
  {
    return self->_titleWordPrefixes != 0;
  }
}

- (WebBookmarkListQuery)initWithFolderID:(int)d inCollection:(id)collection usingFilter:(id)filter options:(unint64_t)options
{
  optionsCopy = options;
  v8 = *&d;
  collectionCopy = collection;
  filterCopy = filter;
  if ((optionsCopy & 0x21) != 0)
  {
    _rootFolderHiddenChildrenClause = &stru_288259858;
  }

  else
  {
    if (v8)
    {
      _rootFolderHiddenChildrenClause = @"AND hidden = 0";
    }

    else
    {
      _rootFolderHiddenChildrenClause = [collectionCopy _rootFolderHiddenChildrenClause];
    }

    if ((optionsCopy & 0x18) == 0x10)
    {
      v11 = [(__CFString *)_rootFolderHiddenChildrenClause stringByAppendingString:@" AND hidden_ancestor_count = 0"];

      _rootFolderHiddenChildrenClause = v11;
    }
  }

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"parent = %d", v8];
  v12 = optionsCopy & 0x10;
  if ((optionsCopy & 0x10) != 0)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"OR parent IN (SELECT folder_id FROM folder_ancestors WHERE ancestor_id = %d)", v8];
  }

  else
  {
    v13 = &stru_288259858;
  }

  v14 = (optionsCopy & 0x21) != 0;
  if ((optionsCopy & 6) != 0)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"AND type = %d", (optionsCopy & 2) == 0];
  }

  else
  {
    v15 = &stru_288259858;
  }

  if ((optionsCopy & 0x140) != 0)
  {
    v16 = ~(optionsCopy >> 6) & 4;
LABEL_16:
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"AND subtype = %ld", v16];
LABEL_22:
    v19 = v17;
    goto LABEL_23;
  }

  if ((optionsCopy & 0xA0) != 0)
  {
    if ((optionsCopy & 0x20) != 0)
    {
      v18 = @"AND (subtype = %ld OR subtype = %ld)";
    }

    else
    {
      v18 = @"AND (subtype != %ld AND subtype != %ld)";
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:v18, 4, 3];
    goto LABEL_22;
  }

  if ((optionsCopy & 8) != 0)
  {
    v16 = 1;
    goto LABEL_16;
  }

  v19 = &stru_288259858;
LABEL_23:
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ %@) %@ %@ %@ %@", v29, v13, _rootFolderHiddenChildrenClause, v15, v19, &stru_288259858];
  v21 = [(WebBookmarkListQuery *)self initWithBookmarksWhere:v20 folderID:v8 orderBy:@"order_index ASC" usingFilter:filterCopy];
  v22 = v21;
  if (v21)
  {
    v21->_customQuery = 0;
    v21->_includeHidden = v14;
    v21->_folderID = v8;
    configuration = [collectionCopy configuration];
    v22->_countShouldUseNumChildrenIfPossible = [configuration collectionType] == 0;

    v22->_includeDescendantsAsChildren = v12 >> 4;
    if (!v22->_includeHidden)
    {
      v24 = objc_alloc_init(WBInMemoryChangeFilterVisible);
      inMemoryFilter = v22->_inMemoryFilter;
      v22->_inMemoryFilter = v24;
    }

    v26 = v22;
  }

  return v22;
}

- (WebBookmarkListQuery)initWithBookmarksWhere:(id)where folderID:(int)d orderBy:(id)by usingFilter:(id)filter
{
  whereCopy = where;
  byCopy = by;
  filterCopy = filter;
  v34.receiver = self;
  v34.super_class = WebBookmarkListQuery;
  v14 = [(WebBookmarkListQuery *)&v34 init];
  v15 = v14;
  if (v14)
  {
    v14->_customQuery = 1;
    objc_storeStrong(&v14->_query, where);
    v16 = [byCopy copy];
    orderBy = v15->_orderBy;
    v15->_orderBy = v16;

    v18 = [(WebBookmarkListQuery *)v15 _normalizeUserTypedString:filterCopy];
    if (v18)
    {
      [(WebBookmarkListQuery *)v15 _preparePrefixesFromNormalizedString:v18];
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%%%@%%", v18];
      urlFilter = v15->_urlFilter;
      v15->_urlFilter = v19;
    }

    if (v15->_titleWordPrefixes)
    {
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      v33 = whereCopy;
      v22 = v15->_titleWordPrefixes;
      v23 = [@"id IN (SELECT bookmark_id FROM bookmark_title_words WHERE word GLOB ?)" mutableCopy];
      for (i = 1; i < [(NSArray *)v22 count]; ++i)
      {
        [v23 appendString:@" AND id IN (SELECT bookmark_id FROM bookmark_title_words WHERE word GLOB ?)"];
      }

      v25 = v23;
      v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"((%@) OR url LIKE ?)", v25];

      v27 = [v21 initWithFormat:@"%@ AND %@", v26, v15->_query];
      query = v15->_query;
      v15->_query = v27;

      whereCopy = v33;
    }

    if (d != 0x7FFFFFFF)
    {
      v15->_folderID = d;
      v15->_customQuery = 0;
    }

    if (byCopy)
    {
      byCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ ORDER BY %@", v15->_query, byCopy];
      queryWithOrderBy = v15->_queryWithOrderBy;
      v15->_queryWithOrderBy = byCopy;
    }

    v15->_countShouldUseNumChildrenIfPossible = 0;
    v31 = v15;
  }

  return v15;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"NO";
  if (self->_customQuery)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<%@:%p customQuery = %@; query = %@; orderBy = %@; titleWordPrefixes = %@>", v5, self, v7, self->_query, self->_orderBy, self->_titleWordPrefixes];;

  return v8;
}

- (int)_childCountInDatabaseForFolderFetchInCollection:(id)collection skipCountingInDatabaseBookmarksThatAreDeletedInMemory:(BOOL)memory countShouldUseNumChildrenIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  memoryCopy = memory;
  v46 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  string = [MEMORY[0x277CCAB68] string];
  v7 = &stru_288259858;
  _listQueryType = [(WebBookmarkListQuery *)self _listQueryType];
  v9 = _listQueryType == 1 && memoryCopy;
  if (self->_inMemoryFilter || v9)
  {
    v10 = [(WebBookmarkListQuery *)self _sqliteNotInConditionForInMemoryModifiedAndDeleted:v9 bookmarksInFolder:self->_folderID collection:collectionCopy];
    v7 = [(WebBookmarkListQuery *)self _sqliteInConditionForInMemoryModifiedBookmarksInFolder:self->_folderID collection:collectionCopy];
  }

  else
  {
    v10 = &stru_288259858;
  }

  p_folderID = &self->_folderID;
  v30 = v10;
  if (!self->_folderID || self->_includeHidden || self->_titleWordPrefixes || [(__CFString *)v10 length]|| !possibleCopy || self->_includeDescendantsAsChildren)
  {
    v12 = whereClauseWithAppendingINConditions(self->_query, &v7->isa, &v10->isa);
    [string appendFormat:@"SELECT COUNT(*) FROM bookmarks WHERE %@", v12];

    v29 = 0;
  }

  else
  {
    [string appendFormat:@"SELECT num_children FROM bookmarks WHERE id = %d", *p_folderID];
    v29 = 1;
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v42, [collectionCopy _sqliteStatementWithQuery:string]);
  titleWordPrefixes = self->_titleWordPrefixes;
  if (titleWordPrefixes)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = titleWordPrefixes;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v15)
    {
      v16 = *v39;
      v17 = 1;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v14);
          }

          sqlite3_bind_text(v43, v17++, [*(*(&v38 + 1) + 8 * i) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        }

        v15 = [(NSArray *)v14 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v15);
    }

    else
    {
      v17 = 1;
    }

    sqlite3_bind_text(v43, v17, [(NSString *)self->_urlFilter UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  v19 = sqlite3_step(v43);
  v20 = 0;
  if (v19 && v19 != 101)
  {
    if (v19 != 100)
    {
      v20 = -1;
      goto LABEL_45;
    }

    v20 = sqlite3_column_int(v43, 0);
  }

  if (memoryCopy && !_listQueryType)
  {
    _inMemoryChangeSet = [collectionCopy _inMemoryChangeSet];
    [_inMemoryChangeSet deletedBookmarkIDsInBookmarkFolder:*p_folderID];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v22 = v35 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v23)
    {
      v24 = *v35;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v20 -= [_inMemoryChangeSet bookmarkIsAddedInMemory:{objc_msgSend(*(*(&v34 + 1) + 8 * j), "intValue")}] ^ 1;
        }

        v23 = [v22 countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v23);
    }
  }

  if (v20 < 0)
  {
    v26 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkListQuery _childCountInDatabaseForFolderFetchInCollection:v20 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:v26 countShouldUseNumChildrenIfPossible:?];
    }

    if (v29)
    {
      v27 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkListQuery _childCountInDatabaseForFolderFetchInCollection:v27 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:? countShouldUseNumChildrenIfPossible:?];
      }

      v20 = [(WebBookmarkListQuery *)self _childCountInDatabaseForFolderFetchInCollection:collectionCopy skipCountingInDatabaseBookmarksThatAreDeletedInMemory:memoryCopy countShouldUseNumChildrenIfPossible:0];
    }
  }

LABEL_45:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v42);

  return v20;
}

- (int)_inMemoryAddedChildrenCountForBookmarkFolder:(int)folder collection:(id)collection skipCountingBookmarksThatAreDeletedInMemory:(BOOL)memory
{
  memoryCopy = memory;
  v6 = *&folder;
  v24 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  _listQueryType = [(WebBookmarkListQuery *)self _listQueryType];
  _inMemoryChangeSet = [collectionCopy _inMemoryChangeSet];
  v11 = _inMemoryChangeSet;
  if (_listQueryType || memoryCopy)
  {
    v13 = [_inMemoryChangeSet addedBookmarksInBookmarkFolder:v6];
    if ([v13 count])
    {
      [v11 applyModificationsToBookmarks:v13];
      if (_listQueryType == 1)
      {
        v14 = [(WebBookmarkListQuery *)self _filterBookmarks:v13];

        v13 = v14;
      }

      v12 = [v13 count];
      if (memoryCopy)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v13 = v13;
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v15)
        {
          v16 = *v20;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v20 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v12 -= [v11 isBookmarkDeleted:{objc_msgSend(*(*(&v19 + 1) + 8 * i), "identifier", v19)}];
            }

            v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v15);
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [_inMemoryChangeSet numberOfAddedBookmarksInBookmarkFolder:v6];
  }

  return v12;
}

- (id)_filterBookmarks:(id)bookmarks
{
  v19 = *MEMORY[0x277D85DE8];
  bookmarksCopy = bookmarks;
  v5 = bookmarksCopy;
  if (self->_titleWordPrefixes)
  {
    array = [MEMORY[0x277CBEB18] array];
    if (self->_inMemoryFilter)
    {
      v7 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = 0;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (bookmarkMatchesFilter(v12, self->_titleWordPrefixesForInMemoryFiltering) && ((v7 & 1) == 0 || [(WebBookmarkInMemoryChangeFilter *)self->_inMemoryFilter shouldIncludeBookmarkAddedInMemory:v12, v14]))
          {
            [array addObject:{v12, v14}];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    array = bookmarksCopy;
  }

  return array;
}

- (int)countInCollection:(id)collection
{
  v30 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  _listQueryType = [(WebBookmarkListQuery *)self _listQueryType];
  _inMemoryChangeSet = [collectionCopy _inMemoryChangeSet];
  v7 = [_inMemoryChangeSet bookmarkIsAddedInMemory:self->_folderID];
  if ((_listQueryType < 2) | v7 & 1)
  {
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [(WebBookmarkListQuery *)self _childCountInDatabaseForFolderFetchInCollection:collectionCopy skipCountingInDatabaseBookmarksThatAreDeletedInMemory:_listQueryType == 1];
      if (v8 < 0)
      {
        v17 = -1;
        goto LABEL_30;
      }
    }

    v17 = [(WebBookmarkListQuery *)self _inMemoryAddedChildrenCountForBookmarkFolder:self->_folderID collection:collectionCopy skipCountingBookmarksThatAreDeletedInMemory:_listQueryType == 1]+ v8;
    if (_listQueryType != 1)
    {
      v18 = [_inMemoryChangeSet deletedBookmarkIDsInBookmarkFolder:self->_folderID];
      v17 -= [v18 count];
    }
  }

  else
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v27, [collectionCopy _selectBookmarksWhere:self->_query returnType:1]);
    titleWordPrefixes = self->_titleWordPrefixes;
    if (titleWordPrefixes)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = titleWordPrefixes;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v11)
      {
        v12 = *v24;
        v13 = 1;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v15 = v28;
            v16 = *(*(&v23 + 1) + 8 * i);
            sqlite3_bind_text(v15, v13++, [v16 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          }

          v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v11);
      }

      else
      {
        v13 = 1;
      }

      sqlite3_bind_text(v28, v13, [(NSString *)self->_urlFilter UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (self->_customQuery)
    {
      v19 = 0;
    }

    else
    {
      v19 = [_inMemoryChangeSet numberOfAddedBookmarksInBookmarkFolder:self->_folderID];
    }

    while (1)
    {
      v20 = sqlite3_step(v28);
      if (v20 != 100)
      {
        break;
      }

      v19 += [_inMemoryChangeSet isBookmarkDeleted:{sqlite3_column_int(v28, 0)}] ^ 1;
    }

    if (v20)
    {
      v21 = v20 == 101;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v17 = v19;
    }

    else
    {
      v17 = -1;
    }

    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v27);
  }

LABEL_30:

  return v17;
}

- (id)_sqliteNotInConditionForInMemoryModifiedAndDeleted:(BOOL)deleted bookmarksInFolder:(int)folder collection:(id)collection
{
  deletedCopy = deleted;
  collectionCopy = collection;
  string = [MEMORY[0x277CCAB68] string];
  _inMemoryChangeSet = [collectionCopy _inMemoryChangeSet];
  v10 = _inMemoryChangeSet;
  if (deletedCopy)
  {
    v11 = [_inMemoryChangeSet deletedBookmarkIDsInBookmarkFolder:self->_folderID];
    allObjects = [v11 allObjects];
    v13 = commaSeparatedIDStringForBookmarkIDs(allObjects);

    if ([v13 length])
    {
      [string appendString:v13];
    }
  }

  if (self->_inMemoryFilter && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = [(WebBookmarkInMemoryChangeFilter *)self->_inMemoryFilter bookmarkIDsModifiedInMemoryNotPassingFilterFromChangeSet:v10 inFolder:self->_folderID];
    v15 = commaSeparatedIDStringForBookmarkIDs(v14);
    if ([string length] && objc_msgSend(v15, "length"))
    {
      [string appendFormat:@", %@", v15];
    }

    else
    {
      [string appendString:v15];
    }
  }

  if ([string length])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"id NOT IN (%@)", string];
  }

  else
  {
    v16 = &stru_288259858;
  }

  return v16;
}

- (id)_sqliteInConditionForInMemoryModifiedBookmarksInFolder:(int)folder collection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  if (self->_inMemoryFilter)
  {
    _inMemoryChangeSet = [collectionCopy _inMemoryChangeSet];
    if (objc_opt_respondsToSelector())
    {
      v8 = [(WebBookmarkInMemoryChangeFilter *)self->_inMemoryFilter bookmarkIDsModifiedInMemoryPassingFilterFromChangeSet:_inMemoryChangeSet inFolder:self->_folderID];
      v9 = commaSeparatedIDStringForBookmarkIDs(v8);
      if ([v9 length])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"id IN (%@)", v9];
      }

      else
      {
        v10 = &stru_288259858;
      }
    }

    else
    {
      v10 = &stru_288259858;
    }
  }

  else
  {
    v10 = &stru_288259858;
  }

  return v10;
}

- (id)bookmarksInCollection:(id)collection fromIndex:(unsigned int)index toIndex:(unsigned int)toIndex
{
  v5 = [(WebBookmarkListQuery *)self bookmarksInCollection:collection fromIndex:*&index toIndex:*&toIndex skipDecodingSyncData:0];

  return v5;
}

- (id)bookmarksInCollection:(id)collection fromIndex:(unsigned int)index toIndex:(unsigned int)toIndex skipDecodingSyncData:(BOOL)data
{
  dataCopy = data;
  v106 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  _inMemoryChangeSet = [collectionCopy _inMemoryChangeSet];
  v9 = [_inMemoryChangeSet numberOfReorderedBookmarksInBookmarkFolder:self->_folderID];
  indexCopy = index;
  v10 = [_inMemoryChangeSet folderHasReplaceChange:self->_folderID];
  _listQueryType = [(WebBookmarkListQuery *)self _listQueryType];
  v72 = (v9 != 0) | v10;
  if (_listQueryType > 1)
  {
    v13 = &stru_288259858;
    v12 = &stru_288259858;
  }

  else
  {
    v12 = [(WebBookmarkListQuery *)self _sqliteNotInConditionForInMemoryModifiedAndDeleted:((v9 != 0) | v10 & 1) == 0 bookmarksInFolder:self->_folderID collection:collectionCopy];
    v13 = [(WebBookmarkListQuery *)self _sqliteInConditionForInMemoryModifiedBookmarksInFolder:self->_folderID collection:collectionCopy];
  }

  v73 = v12;
  v74 = v13;
  v14 = whereClauseWithAppendingINConditions(self->_query, &v13->isa, &v12->isa);
  orderBy = self->_orderBy;
  if (orderBy)
  {
    orderBy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ORDER BY %@", v14, orderBy];

    v14 = orderBy;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LIMIT ? OFFSET ?", v14];

  v75 = v17;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v101, [collectionCopy _selectBookmarksWhere:v17]);
  titleWordPrefixes = self->_titleWordPrefixes;
  if (titleWordPrefixes)
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v19 = titleWordPrefixes;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v97 objects:v105 count:16];
    if (v20)
    {
      v21 = *v98;
      v22 = 1;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v98 != v21)
          {
            objc_enumerationMutation(v19);
          }

          sqlite3_bind_text(v102, v22++, [*(*(&v97 + 1) + 8 * i) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        }

        v20 = [(NSArray *)v19 countByEnumeratingWithState:&v97 objects:v105 count:16];
      }

      while (v20);
    }

    else
    {
      v22 = 1;
    }

    sqlite3_bind_text(v102, v22, [(NSString *)self->_urlFilter UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v24 = v22 + 1;
  }

  else
  {
    v24 = 1;
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v26 = indexCopy;
  v77 = toIndex - indexCopy + 1;
  if (_listQueryType > 1)
  {
    v76 = 0;
    v34 = toIndex - indexCopy + 1;
  }

  else
  {
    v76 = [_inMemoryChangeSet bookmarkIsAddedInMemory:self->_folderID];
    [_inMemoryChangeSet addedBookmarksInBookmarkFolder:self->_folderID];
    v70 = v71 = v24;
    [_inMemoryChangeSet applyModificationsToBookmarks:v70];
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    v93 = 0u;
    v27 = v70;
    v28 = [v27 countByEnumeratingWithState:&v93 objects:v104 count:16];
    if (v28)
    {
      v29 = *v94;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v94 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v93 + 1) + 8 * j);
          if (([_inMemoryChangeSet replayChangesOnBookmark:v31] & 0xFFFFFFFFFFFFFFFDLL) != 1 && (_listQueryType != 1 || bookmarkMatchesFilter(v31, self->_titleWordPrefixesForInMemoryFiltering)) && (!self->_inMemoryFilter || (objc_opt_respondsToSelector() & 1) == 0 || -[WebBookmarkInMemoryChangeFilter shouldIncludeBookmarkAddedInMemory:](self->_inMemoryFilter, "shouldIncludeBookmarkAddedInMemory:", v31)))
          {
            if ([v31 isFolder])
            {
              v32 = array;
            }

            else
            {
              v32 = array2;
            }

            [v32 addObject:v31];
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v93 objects:v104 count:16];
      }

      while (v28);
    }

    v24 = v71;
    v33 = [array count];
    if (v72)
    {
      v34 = [(WebBookmarkListQuery *)self _childCountInDatabaseForFolderFetchInCollection:collectionCopy skipCountingInDatabaseBookmarksThatAreDeletedInMemory:0];
      v26 = 0;
    }

    else if (v33 <= indexCopy)
    {
      v26 = indexCopy - v33;
      v34 = toIndex - indexCopy + 1;
    }

    else
    {
      v26 = 0;
      v34 = toIndex - v33 + 1;
    }
  }

  array3 = [MEMORY[0x277CBEB18] array];
  if (v76)
  {
    goto LABEL_48;
  }

  sqlite3_bind_int(v102, v24, v34);
  sqlite3_bind_int(v102, v24 + 1, v26);
  while (1)
  {
    v35 = sqlite3_step(v102);
    if (v35 != 100)
    {
      break;
    }

    v36 = [WebBookmark alloc];
    v37 = v102;
    currentDeviceIdentifier = [collectionCopy currentDeviceIdentifier];
    configuration = [collectionCopy configuration];
    v40 = -[WebBookmark initWithSQLiteStatement:deviceIdentifier:collectionType:skipDecodingSyncData:](v36, "initWithSQLiteStatement:deviceIdentifier:collectionType:skipDecodingSyncData:", v37, currentDeviceIdentifier, [configuration collectionType], dataCopy);

    [array3 addObject:v40];
  }

  if (v35 == 101)
  {
LABEL_48:
    array4 = [MEMORY[0x277CBEB18] array];
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v42 = array3;
    v43 = [v42 countByEnumeratingWithState:&v89 objects:v103 count:16];
    if (v43)
    {
      v44 = *v90;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v90 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v89 + 1) + 8 * k);
          if (([_inMemoryChangeSet replayChangesOnBookmark:v46] & 0xFFFFFFFFFFFFFFFDLL) != 1)
          {
            [array4 addObject:v46];
          }
        }

        v43 = [v42 countByEnumeratingWithState:&v89 objects:v103 count:16];
      }

      while (v43);
    }

    v47 = v77;
    [_inMemoryChangeSet applyModificationsToBookmarks:array4];
    if (_listQueryType >= 2)
    {
      array5 = array4;
    }

    else
    {
      if (v72)
      {
        v48 = [_inMemoryChangeSet bookmarksAfterReplayingChangesToBookmarks:v42 inFolderWithID:self->_folderID];
        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = __85__WebBookmarkListQuery_bookmarksInCollection_fromIndex_toIndex_skipDecodingSyncData___block_invoke;
        v85[3] = &unk_279E76678;
        v86 = _inMemoryChangeSet;
        selfCopy = self;
        v88 = _listQueryType;
        v49 = [v48 safari_filterObjectsUsingBlock:v85];
        if (v77 + indexCopy >= [v49 count])
        {
          v50 = v49;
        }

        else
        {
          v50 = [v49 subarrayWithRange:?];
        }

        array5 = v50;
      }

      else
      {
        array5 = [MEMORY[0x277CBEB18] array];
        v80 = [array count];
        if (v80 > indexCopy && v77)
        {
          v52 = indexCopy;
          do
          {
            v53 = [array objectAtIndexedSubscript:v52];
            [array5 addObject:v53];

            v54 = v47 - 1;
            if (++v52 >= v80)
            {
              break;
            }

            --v47;
          }

          while (v47);
        }

        else
        {
          v54 = v77;
        }

        v55 = [array4 count];
        if (v55 && v54)
        {
          v56 = 0;
          do
          {
            v57 = [array4 objectAtIndexedSubscript:v56];
            [array5 addObject:v57];

            v58 = v56 + 1;
            if (v56 + 1 >= v55)
            {
              break;
            }
          }

          while (v54 - 1 != v56++);
          v54 -= v58;
        }

        v60 = 0;
        if (![array4 count] && v80 <= indexCopy)
        {
          if (v76)
          {
            v61 = 0;
          }

          else
          {
            v61 = [(WebBookmarkListQuery *)self _childCountInDatabaseForFolderFetchInCollection:collectionCopy skipCountingInDatabaseBookmarksThatAreDeletedInMemory:1];
          }

          v63 = v80 + (v61 & ~(v61 >> 31));
          v64 = indexCopy >= v63;
          v65 = indexCopy - v63;
          if (v64)
          {
            v60 = v65;
          }

          else
          {
            v60 = 0;
          }
        }

        v66 = [array2 count];
        if (v60 < v66 && v54)
        {
          v67 = v54 - 1;
          do
          {
            v68 = [array2 objectAtIndexedSubscript:v60];
            [array5 addObject:v68];

            ++v60;
            v64 = v67-- != 0;
            v69 = v64;
          }

          while (v60 < v66 && (v69 & 1) != 0);
        }
      }
    }
  }

  else
  {
    array5 = MEMORY[0x277CBEBF8];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v101);

  return array5;
}

uint64_t __85__WebBookmarkListQuery_bookmarksInCollection_fromIndex_toIndex_skipDecodingSyncData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) bookmarkIsAddedInMemory:{objc_msgSend(v3, "identifier")}];
  if (*(*(a1 + 40) + 64) && (v4 & objc_opt_respondsToSelector()) == 1 && ([*(*(a1 + 40) + 64) shouldIncludeBookmarkAddedInMemory:v3] & 1) == 0)
  {
    v5 = 0;
  }

  else if (*(a1 + 48) == 1)
  {
    v5 = bookmarkMatchesFilter(v3, *(*(a1 + 40) + 40));
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_normalizeUserTypedString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    v5 = [stringCopy mutableCopy];
    CFStringTrimWhitespace(v5);
    if ([(__CFString *)v5 length])
    {
      v6 = CFLocaleCopyCurrent();
      CFStringNormalize(v5, kCFStringNormalizationFormD);
      CFStringFold(v5, 0x181uLL, v6);
      CFRelease(v6);
      v7 = 0;
    }

    else
    {
      v7 = v5;
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_preparePrefixesFromNormalizedString:(id)string
{
  stringCopy = string;
  if ([WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::once != -1)
  {
    [WebBookmarkListQuery _preparePrefixesFromNormalizedString:];
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v7 = [WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizerAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WebBookmarkListQuery__preparePrefixesFromNormalizedString___block_invoke_2;
  block[3] = &unk_279E752A8;
  v16 = stringCopy;
  v8 = array2;
  v17 = v8;
  v9 = array;
  v18 = v9;
  v10 = stringCopy;
  dispatch_sync(v7, block);
  titleWordPrefixes = self->_titleWordPrefixes;
  self->_titleWordPrefixes = v9;
  v12 = v9;

  titleWordPrefixesForInMemoryFiltering = self->_titleWordPrefixesForInMemoryFiltering;
  self->_titleWordPrefixesForInMemoryFiltering = v8;
  v14 = v8;
}

uint64_t __61__WebBookmarkListQuery__preparePrefixesFromNormalizedString___block_invoke()
{
  v0 = objc_alloc_init(WebBookmarkTitleWordTokenizer);
  v1 = [WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizer;
  [WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizer = v0;

  v2 = dispatch_queue_create("com.apple.WebBookmarks.titleWordTokenizerAccess", 0);
  v3 = [WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizerAccessQueue;
  [WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizerAccessQueue = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void *__61__WebBookmarkListQuery__preparePrefixesFromNormalizedString___block_invoke_2(uint64_t a1)
{
  [-[WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizer setString:*(a1 + 32)];
  result = [-[WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizer advanceToNextToken];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = result;
    do
    {
      v5 = [*(a1 + 32) substringWithRange:{v4, v3}];
      [*(a1 + 40) addObject:v5];
      v6 = *(a1 + 48);
      v7 = [v5 stringByAppendingString:@"*"];
      [v6 addObject:v7];

      result = [-[WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizer advanceToNextToken];
      v4 = result;
    }

    while (result != 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

- (void)_childCountInDatabaseForFolderFetchInCollection:(int *)a1 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:(int)a2 countShouldUseNumChildrenIfPossible:(os_log_t)log .cold.1(int *a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "num_children for bookmark %i has an invalid value %i", v4, 0xEu);
}

- (void)_childCountInDatabaseForFolderFetchInCollection:(int *)a1 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:(NSObject *)a2 countShouldUseNumChildrenIfPossible:.cold.2(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_272C20000, a2, OS_LOG_TYPE_ERROR, "Retrying to fetch count without using num_children %i", v3, 8u);
}

@end