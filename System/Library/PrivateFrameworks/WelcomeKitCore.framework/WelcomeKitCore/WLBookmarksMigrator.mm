@interface WLBookmarksMigrator
+ (id)_bookmarkFolderAtTitlePath:(id)path withinBookmarkFolder:(id)folder;
+ (id)_bookmarkFolderAtTitlePath:(id)path withinRootFolder:(id)folder;
+ (id)_createBookmarkFolderWithTitle:(id)title UUID:(id)d;
+ (id)_createRootBookmarkFolder;
- (WLFeaturePayload)featurePayload;
- (id)importDidEnd;
- (id)importWillBegin;
- (void)addWorkingTime:(unint64_t)time;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)summary account:(id)account;
- (void)importDataFromProvider:(id)provider forSummaries:(id)summaries summaryStart:(id)start summaryCompletion:(id)completion;
- (void)setEstimatedDataSize:(unint64_t)size;
- (void)setState:(id)state;
@end

@implementation WLBookmarksMigrator

- (void)enable
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_featurePayload);
  [v4 setState:@"enabled"];
}

- (void)setState:(id)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:stateCopy];
}

- (void)setEstimatedDataSize:(unint64_t)size
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:size];
}

- (void)addWorkingTime:(unint64_t)time
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + time}];
}

- (void)estimateItemSizeForSummary:(id)summary account:(id)account
{
  summaryCopy = summary;
  if (![summaryCopy itemSize])
  {
    [summaryCopy setItemSize:3072];
  }
}

- (id)importWillBegin
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:0];

  _WLLog();
  if ([MEMORY[0x277D7B5A8] lockSync])
  {
    safariBookmarkCollection = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
    collection = self->_collection;
    self->_collection = safariBookmarkCollection;

    if (self->_collection)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D7B8F8];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"Bookmarks migrator couldn't create collection.";
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v19;
    v12 = &v18;
  }

  else
  {
    selfCopy = self;
    _WLLog();
    v7 = self->_collection;
    self->_collection = 0;

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D7B8F8];
    v16 = *MEMORY[0x277CCA450];
    v17 = @"Bookmarks migrator couldn't obtain lock.";
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v17;
    v12 = &v16;
  }

  v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:{1, selfCopy, v16, v17, v18, v19, v20}];
  v6 = [v8 errorWithDomain:v9 code:1 userInfo:v13];

LABEL_7:

  return v6;
}

+ (id)_createBookmarkFolderWithTitle:(id)title UUID:(id)d
{
  titleCopy = title;
  v6 = MEMORY[0x277CBEB38];
  dCopy = d;
  v8 = [[v6 alloc] initWithCapacity:4];
  [v8 setObject:@"WebBookmarkTypeList" forKey:@"WebBookmarkType"];
  [v8 setObject:dCopy forKey:@"WebBookmarkUUID"];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v8 setObject:v9 forKey:@"Children"];

  if (titleCopy)
  {
    [v8 setObject:titleCopy forKey:@"Title"];
  }

  return v8;
}

+ (id)_createRootBookmarkFolder
{
  v2 = [WLBookmarksMigrator _createBookmarkFolderWithTitle:0 UUID:@"Root"];
  v3 = [v2 objectForKeyedSubscript:@"Children"];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [WLBookmarksMigrator _createBookmarkFolderWithTitle:@"BookmarksBar" UUID:uUIDString];

  [v3 addObject:v6];

  return v2;
}

+ (id)_bookmarkFolderAtTitlePath:(id)path withinBookmarkFolder:(id)folder
{
  v31 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  folderCopy = folder;
  if ([pathCopy count])
  {
    selfCopy = self;
    v8 = [pathCopy objectAtIndexedSubscript:0];
    v25 = folderCopy;
    [folderCopy objectForKeyedSubscript:@"Children"];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = v29 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = [v14 objectForKeyedSubscript:@"Title"];
        v16 = [v8 isEqualToString:v15];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v18 = v14;

      v17 = selfCopy;
      if (v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:

      v17 = selfCopy;
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v18 = [v17 _createBookmarkFolderWithTitle:v8 UUID:uUIDString];

    [v9 addObject:v18];
LABEL_13:
    if ([pathCopy count] >= 2)
    {
      v21 = [pathCopy subarrayWithRange:{1, objc_msgSend(pathCopy, "count") - 1}];
      v22 = [v17 _bookmarkFolderAtTitlePath:v21 withinBookmarkFolder:v18];

      v18 = v22;
    }

    folderCopy = v25;
  }

  else
  {
    v18 = folderCopy;
  }

  return v18;
}

+ (id)_bookmarkFolderAtTitlePath:(id)path withinRootFolder:(id)folder
{
  pathCopy = path;
  v7 = [folder objectForKeyedSubscript:@"Children"];
  v8 = [v7 objectAtIndexedSubscript:0];

  if ([pathCopy length])
  {
    pathComponents = [pathCopy pathComponents];
    v10 = [self _bookmarkFolderAtTitlePath:pathComponents withinBookmarkFolder:v8];

    v8 = v10;
  }

  return v8;
}

- (void)importDataFromProvider:(id)provider forSummaries:(id)summaries summaryStart:(id)start summaryCompletion:(id)completion
{
  v81 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  summariesCopy = summaries;
  startCopy = start;
  completionCopy = completion;
  v50 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(summariesCopy, "count")}];
  v49 = +[WLBookmarksMigrator _createRootBookmarkFolder];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v12 = summariesCopy;
  v13 = startCopy;
  obj = v12;
  v53 = startCopy;
  v61 = [v12 countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (v61)
  {
    v59 = *v70;
    v47 = *MEMORY[0x277CCA450];
    v48 = *MEMORY[0x277D7B8F8];
    selfCopy = self;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v70 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v69 + 1) + 8 * i);
        if (v13)
        {
          v13[2](v13, *(*(&v69 + 1) + 8 * i));
        }

        v16 = providerCopy[2](providerCopy, v15);
        WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
        [WeakRetained setCount:{objc_msgSend(WeakRetained, "count") + 1}];

        v18 = objc_loadWeakRetained(&self->_featurePayload);
        [v18 setSize:{objc_msgSend(v18, "size") + objc_msgSend(v16, "length")}];

        if (v16)
        {
          v68 = 0;
          v19 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v16 options:0 error:&v68];
          v20 = v68;
          if (!v20)
          {
            if (v19)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = v19;
                v22 = [v21 objectForKeyedSubscript:@"itemID"];
                v23 = [v21 objectForKeyedSubscript:@"itemTitle"];
                v24 = [v21 objectForKeyedSubscript:@"itemFolder"];
                v54 = v21;
                v46 = [v21 objectForKeyedSubscript:@"itemUrl"];
                v58 = v23;
                v43 = v22;
                v45 = v23;
                v55 = v22;
                self = selfCopy;
                _WLLog();
                v56 = v46;
                if (v46 && v23 && v24)
                {
                  v79[0] = @"WebBookmarkTypeLeaf";
                  v78[0] = @"WebBookmarkType";
                  v78[1] = @"WebBookmarkUUID";
                  uUID = [MEMORY[0x277CCAD78] UUID];
                  [uUID UUIDString];
                  v26 = v51 = v24;
                  v79[1] = v26;
                  v78[2] = @"URIDictionary";
                  v76 = @"title";
                  v77 = v23;
                  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
                  v78[3] = @"URLString";
                  v79[2] = v27;
                  v79[3] = v56;
                  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:4];

                  v24 = v51;
                  v29 = [WLBookmarksMigrator _bookmarkFolderAtTitlePath:v51 withinRootFolder:v49];
                  v30 = [v29 objectForKeyedSubscript:@"Children"];
                  [v30 addObject:v28];
                  [v50 addObject:v15];

                  v13 = v53;
                  v31 = v54;
                }

                else
                {
                  v13 = v53;
                  if (!v46 && v23 && v24)
                  {
                    _WLLog();
                    v31 = v21;
                    if (completionCopy)
                    {
                      completionCopy[2](completionCopy, v15, 0);
                    }
                  }

                  else
                  {
                    _WLLog();
                    v31 = v21;
                    if (completionCopy)
                    {
                      v32 = MEMORY[0x277CCA9B8];
                      v74 = v47;
                      v75 = @"Bookmark had missing property";
                      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:{1, selfCopy, v43, v45, v24, v46}];
                      v34 = [v32 errorWithDomain:v48 code:1 userInfo:v33];
                      (completionCopy)[2](completionCopy, v15, v34);

                      v13 = v53;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          _WLLog();
          if (completionCopy)
          {
            completionCopy[2](completionCopy, v15, 0);
          }
        }
      }

      v61 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
    }

    while (v61);
  }

  if ([v50 count])
  {
    _WLLog();
    collection = self->_collection;
    v67 = 0;
    v36 = [(WebBookmarkCollection *)collection mergeWithBookmarksDictionary:v49 clearHidden:0 error:&v67, self, v49];
    v37 = v67;
    v44 = [MEMORY[0x277CCABB0] numberWithBool:v36];
    _WLLog();

    if (completionCopy)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v38 = v50;
      v39 = [v38 countByEnumeratingWithState:&v63 objects:v73 count:{16, self, v44, v37}];
      if (v39)
      {
        v40 = v39;
        v41 = *v64;
        do
        {
          for (j = 0; j != v40; ++j)
          {
            if (*v64 != v41)
            {
              objc_enumerationMutation(v38);
            }

            (completionCopy)[2](completionCopy, *(*(&v63 + 1) + 8 * j), v37);
          }

          v40 = [v38 countByEnumeratingWithState:&v63 objects:v73 count:16];
        }

        while (v40);
      }
    }

    v13 = v53;
  }
}

- (id)importDidEnd
{
  _WLLog();
  collection = self->_collection;
  if (collection)
  {
    self->_collection = 0;

    [MEMORY[0x277D7B5A8] unlockSync];
  }

  return 0;
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end