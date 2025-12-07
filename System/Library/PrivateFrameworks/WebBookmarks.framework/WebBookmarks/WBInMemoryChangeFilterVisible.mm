@interface WBInMemoryChangeFilterVisible
- (BOOL)isBookmarkVisible:(id)visible;
- (id)bookmarkIDsModifiedInMemoryNotPassingFilterFromChangeSet:(id)set inFolder:(int)folder;
- (id)bookmarkIDsModifiedInMemoryPassingFilterFromChangeSet:(id)set inFolder:(int)folder;
@end

@implementation WBInMemoryChangeFilterVisible

- (BOOL)isBookmarkVisible:(id)visible
{
  visibleCopy = visible;
  extraAttributes = [visibleCopy extraAttributes];
  v5 = [extraAttributes objectForKeyedSubscript:@"com.apple.bookmarks.OmitFromUI"];
  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [visibleCopy isHidden] ^ 1;
  }

  return v6;
}

- (id)bookmarkIDsModifiedInMemoryNotPassingFilterFromChangeSet:(id)set inFolder:(int)folder
{
  v5 = [set modifiedBookmarksInBookmarkFolder:*&folder];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__WBInMemoryChangeFilterVisible_bookmarkIDsModifiedInMemoryNotPassingFilterFromChangeSet_inFolder___block_invoke;
  v8[3] = &unk_279E77E50;
  v8[4] = self;
  v6 = [v5 safari_mapAndFilterObjectsUsingBlock:v8];

  return v6;
}

id __99__WBInMemoryChangeFilterVisible_bookmarkIDsModifiedInMemoryNotPassingFilterFromChangeSet_inFolder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isBookmarkVisible:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "identifier")}];
  }

  return v4;
}

- (id)bookmarkIDsModifiedInMemoryPassingFilterFromChangeSet:(id)set inFolder:(int)folder
{
  v5 = [set modifiedBookmarksInBookmarkFolder:*&folder];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __96__WBInMemoryChangeFilterVisible_bookmarkIDsModifiedInMemoryPassingFilterFromChangeSet_inFolder___block_invoke;
  v8[3] = &unk_279E77E50;
  v8[4] = self;
  v6 = [v5 safari_mapAndFilterObjectsUsingBlock:v8];

  return v6;
}

id __96__WBInMemoryChangeFilterVisible_bookmarkIDsModifiedInMemoryPassingFilterFromChangeSet_inFolder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isBookmarkVisible:v3])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "identifier")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end