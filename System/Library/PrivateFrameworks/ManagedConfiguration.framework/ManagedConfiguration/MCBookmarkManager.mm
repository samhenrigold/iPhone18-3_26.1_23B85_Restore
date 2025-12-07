@interface MCBookmarkManager
+ (id)sharedManager;
- (MCBookmarkManager)init;
- (NSArray)userBookmarks;
- (void)memberQueueRereadBookmarks;
- (void)memberQueueSetUserBookmarks:(id)bookmarks;
- (void)setUserBookmarks:(id)bookmarks;
@end

@implementation MCBookmarkManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[MCBookmarkManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __34__MCBookmarkManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_alloc_init(MCBookmarkManager);

  return MEMORY[0x1EEE66BB8]();
}

- (MCBookmarkManager)init
{
  v13.receiver = self;
  v13.super_class = MCBookmarkManager;
  v2 = [(MCBookmarkManager *)&v13 init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = dispatch_queue_create("memberQueue", MEMORY[0x1E69E96A8]);
  memberQueue = v3->_memberQueue;
  v3->_memberQueue = v4;

  v6 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __25__MCBookmarkManager_init__block_invoke;
  handler[3] = &unk_1E77D01F8;
  v7 = v3;
  v12 = v7;
  LODWORD(v3) = notify_register_dispatch("com.apple.managedconfiguration.bookmarkCacheFlush", &v3->_notificationToken, v6, handler);

  if (v3)
  {
    v8 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Could not register for notification.", &v10, 2u);
    }

    v7 = 0;
  }

  else
  {
    [(MCBookmarkManager *)v7 memberQueueRereadBookmarks];
  }

  return v7;
}

void __25__MCBookmarkManager_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__MCBookmarkManager_init__block_invoke_2;
  block[3] = &unk_1E77D0180;
  v4 = *(a1 + 32);
  dispatch_barrier_async(v2, block);
}

- (void)memberQueueRereadBookmarks
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_DEBUG, "Rereading bookmarks", buf, 2u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = MCSystemWebContentFilterCurrentUserBookmarksPath(defaultManager);
  v6 = [defaultManager fileExistsAtPath:v5 isDirectory:0];

  if (v6)
  {
    v8 = MEMORY[0x1E695DEC8];
    v9 = MCSystemWebContentFilterCurrentUserBookmarksPath(v7);
    v10 = [v8 arrayWithContentsOfFile:v9];

    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v12 = v10;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v53;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v53 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [[MCBookmark alloc] initWithSerializableDictionary:*(*(&v52 + 1) + 8 * i)];
          [(NSArray *)v11 addObject:v17];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v52 objects:v59 count:16];
      }

      while (v14);
    }

    memberQueueCurrentUserBookmarks = self->_memberQueueCurrentUserBookmarks;
    self->_memberQueueCurrentUserBookmarks = v11;
  }

  else
  {
    v12 = self->_memberQueueCurrentUserBookmarks;
    self->_memberQueueCurrentUserBookmarks = 0;
  }

  v20 = MCSystemWebContentFilterStashedUserBookmarksPath(v19);
  v21 = [defaultManager fileExistsAtPath:v20 isDirectory:0];

  v23 = MEMORY[0x1E695DF20];
  if (v21)
  {
    v39 = defaultManager;
    selfCopy = self;
    v24 = MCSystemWebContentFilterStashedUserBookmarksPath(v22);
    v25 = [v23 dictionaryWithContentsOfFile:v24];

    v42 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v25, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v26 = v25;
    v43 = [(NSDictionary *)v26 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v43)
    {
      v41 = *v49;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v49 != v41)
          {
            objc_enumerationMutation(v26);
          }

          v28 = *(*(&v48 + 1) + 8 * j);
          v29 = [(NSDictionary *)v26 objectForKeyedSubscript:v28];
          v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v29, "count")}];
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v31 = v29;
          v32 = [v31 countByEnumeratingWithState:&v44 objects:v57 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v45;
            do
            {
              for (k = 0; k != v33; ++k)
              {
                if (*v45 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = [[MCBookmark alloc] initWithSerializableDictionary:*(*(&v44 + 1) + 8 * k)];
                [v30 addObject:v36];
              }

              v33 = [v31 countByEnumeratingWithState:&v44 objects:v57 count:16];
            }

            while (v33);
          }

          [(NSDictionary *)v42 setObject:v30 forKeyedSubscript:v28];
        }

        v43 = [(NSDictionary *)v26 countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v43);
    }

    memberQueueStashedBookmarksByLabel = selfCopy->_memberQueueStashedBookmarksByLabel;
    selfCopy->_memberQueueStashedBookmarksByLabel = v42;

    defaultManager = v39;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
    v26 = self->_memberQueueStashedBookmarksByLabel;
    self->_memberQueueStashedBookmarksByLabel = dictionary;
  }
}

- (void)memberQueueSetUserBookmarks:(id)bookmarks
{
  v21 = *MEMORY[0x1E69E9840];
  bookmarksCopy = bookmarks;
  objc_storeStrong(&self->_memberQueueCurrentUserBookmarks, bookmarks);
  memberQueueCurrentUserBookmarks = self->_memberQueueCurrentUserBookmarks;
  if (memberQueueCurrentUserBookmarks)
  {
    defaultManager = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](memberQueueCurrentUserBookmarks, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_memberQueueCurrentUserBookmarks;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          serializableDictionary = [*(*(&v16 + 1) + 8 * v12) serializableDictionary];
          [defaultManager addObject:serializableDictionary];

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v15 = MCSystemWebContentFilterCurrentUserBookmarksPath(v14);
    [defaultManager writeToFile:v15 atomically:1];
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v15 = MCSystemWebContentFilterCurrentUserBookmarksPath(defaultManager);
    [defaultManager removeItemAtPath:v15 error:0];
  }
}

- (void)setUserBookmarks:(id)bookmarks
{
  bookmarksCopy = bookmarks;
  memberQueue = [(MCBookmarkManager *)self memberQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MCBookmarkManager_setUserBookmarks___block_invoke;
  v7[3] = &unk_1E77D02D8;
  v7[4] = self;
  v8 = bookmarksCopy;
  v6 = bookmarksCopy;
  dispatch_barrier_async(memberQueue, v7);
}

uint64_t __38__MCBookmarkManager_setUserBookmarks___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 memberQueueSetUserBookmarks:v2];

  return notify_post("com.apple.managedconfiguration.bookmarkCacheFlush");
}

- (NSArray)userBookmarks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  memberQueue = [(MCBookmarkManager *)self memberQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__MCBookmarkManager_userBookmarks__block_invoke;
  v6[3] = &unk_1E77D0260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(memberQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__MCBookmarkManager_userBookmarks__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) memberQueueCurrentUserBookmarks];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end