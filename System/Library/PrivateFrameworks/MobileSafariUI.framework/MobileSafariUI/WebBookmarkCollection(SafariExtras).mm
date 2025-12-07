@interface WebBookmarkCollection(SafariExtras)
+ (id)mainBookmarkCollection;
- (id)bookmarksInFavoritesList;
@end

@implementation WebBookmarkCollection(SafariExtras)

+ (id)mainBookmarkCollection
{
  v2 = mainBookmarkCollection;
  if (!mainBookmarkCollection)
  {
    safariBookmarkCollection = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
    v4 = mainBookmarkCollection;
    mainBookmarkCollection = safariBookmarkCollection;

    if (!mainBookmarkCollection || ([MEMORY[0x277CCAB98] defaultCenter], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "addObserver:selector:name:object:", mainBookmarkCollection, sel_receivedBookmarksDidChangeNotification_, *MEMORY[0x277D7B608], 0), objc_msgSend(v5, "addObserver:selector:name:object:", mainBookmarkCollection, sel_receivedBookmarksDidChangeNotification_, *MEMORY[0x277D7B618], 0), v5, (v2 = mainBookmarkCollection) == 0))
    {
      +[(WebBookmarkCollection *)self];
      v2 = mainBookmarkCollection;
    }
  }

  return v2;
}

- (id)bookmarksInFavoritesList
{
  v2 = [bookmarksInFavoritesListCache objectForKey:self];
  v3 = v2;
  if (v2)
  {
    bookmarkArray = v2;
  }

  else
  {
    favoritesFolderList = [self favoritesFolderList];
    v6 = favoritesFolderList;
    if (favoritesFolderList)
    {
      if ([favoritesFolderList bookmarkCount] > 7)
      {
        if (!bookmarksInFavoritesListCache)
        {
          v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
          v8 = bookmarksInFavoritesListCache;
          bookmarksInFavoritesListCache = v7;

          [bookmarksInFavoritesListCache setCountLimit:1];
        }

        bookmarkArray = [self fastFetchBookmarksInBookmarkList:v6];
        [bookmarksInFavoritesListCache setObject:bookmarkArray forKey:self];
      }

      else
      {
        bookmarkArray = [v6 bookmarkArray];
      }
    }

    else
    {
      bookmarkArray = 0;
    }
  }

  return bookmarkArray;
}

@end