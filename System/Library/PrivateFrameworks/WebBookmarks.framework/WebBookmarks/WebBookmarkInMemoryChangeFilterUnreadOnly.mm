@interface WebBookmarkInMemoryChangeFilterUnreadOnly
- (id)_bookmarksIDsFromBookmarks:(id)bookmarks fromChangeSet:(id)set withFilter:(id)filter;
- (id)bookmarkIDsModifiedInMemoryNotPassingFilterFromChangeSet:(id)set inFolder:(int)folder;
- (id)bookmarkIDsModifiedInMemoryPassingFilterFromChangeSet:(id)set inFolder:(int)folder;
@end

@implementation WebBookmarkInMemoryChangeFilterUnreadOnly

- (id)bookmarkIDsModifiedInMemoryPassingFilterFromChangeSet:(id)set inFolder:(int)folder
{
  v4 = *&folder;
  setCopy = set;
  v7 = [setCopy modifiedBookmarksInBookmarkFolder:v4];
  v8 = [(WebBookmarkInMemoryChangeFilterUnreadOnly *)self _bookmarksIDsFromBookmarks:v7 fromChangeSet:setCopy withFilter:&__block_literal_global_4];

  return v8;
}

BOOL __108__WebBookmarkInMemoryChangeFilterUnreadOnly_bookmarkIDsModifiedInMemoryPassingFilterFromChangeSet_inFolder___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dateLastViewed];
  v3 = v2 == 0;

  return v3;
}

- (id)bookmarkIDsModifiedInMemoryNotPassingFilterFromChangeSet:(id)set inFolder:(int)folder
{
  v4 = *&folder;
  setCopy = set;
  v7 = [setCopy modifiedBookmarksInBookmarkFolder:v4];
  v8 = [(WebBookmarkInMemoryChangeFilterUnreadOnly *)self _bookmarksIDsFromBookmarks:v7 fromChangeSet:setCopy withFilter:&__block_literal_global_2];

  return v8;
}

BOOL __111__WebBookmarkInMemoryChangeFilterUnreadOnly_bookmarkIDsModifiedInMemoryNotPassingFilterFromChangeSet_inFolder___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dateLastViewed];
  v3 = v2 != 0;

  return v3;
}

- (id)_bookmarksIDsFromBookmarks:(id)bookmarks fromChangeSet:(id)set withFilter:(id)filter
{
  v24 = *MEMORY[0x277D85DE8];
  setCopy = set;
  filterCopy = filter;
  v8 = [MEMORY[0x277CBEB58] set];
  changes = [setCopy changes];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [changes countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(changes);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        bookmark = [v14 bookmark];
        if (bookmark && ([setCopy replayChangesOnBookmark:bookmark] & 0xFFFFFFFFFFFFFFFDLL) != 1 && objc_msgSend(v14, "attributesMarkedAsModify:", 8) && filterCopy[2](filterCopy, bookmark))
        {
          v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(bookmark, "identifier")}];
          [v8 addObject:v16];
        }
      }

      v11 = [changes countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  allObjects = [v8 allObjects];

  return allObjects;
}

@end