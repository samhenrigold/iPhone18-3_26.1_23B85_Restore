@interface BCPlist
+ (id)promisableItemsFromItems:(id)items;
- (BCPlist)initWithPath:(id)path;
- (BOOL)addItems:(id)items;
- (BOOL)isExistingEntry:(id)entry;
- (BOOL)removeItemsByPersistentID:(id)d;
- (BOOL)replaceItems:(id)items;
- (id)books;
- (id)booksSortedByKey:(id)key;
- (id)entriesWithPath;
- (id)existingPersistentIDs;
- (id)objectForKey:(id)key;
- (id)paths;
- (id)sortedPaths;
- (id)sortedPersistentIDs:(BOOL)ds;
- (id)unfilteredPersistentIDs;
- (id)uploadsByPersistentID;
- (void)dealloc;
- (void)generateDirectory;
- (void)processDeletesFile;
- (void)regenerateMissingEstimatedDownloadSizes;
- (void)regenerateMissingPersistentIDs;
- (void)removeItemsFromSidecar:(id)sidecar;
- (void)resetPaths;
@end

@implementation BCPlist

- (BCPlist)initWithPath:(id)path
{
  v4 = [(BCPlist *)self init];
  if (v4)
  {
    v4->_path = path;
    [(BCPlist *)v4 generateDirectory];
  }

  return v4;
}

- (void)dealloc
{
  self->_path = 0;
  v3.receiver = self;
  v3.super_class = BCPlist;
  [(BCPlist *)&v3 dealloc];
}

- (void)regenerateMissingPersistentIDs
{
  v2 = [(BCPlistProducer *)[BCGeneratePersistentIDPlistProducer alloc] initWithPath:[(BCPlist *)self path]];
  [(BCPlistProducer *)v2 write];
}

- (void)regenerateMissingEstimatedDownloadSizes
{
  v2 = [(BCPlistProducer *)[BCGenerateDownloadSizePlistProducer alloc] initWithPath:[(BCPlist *)self path]];
  [(BCPlistProducer *)v2 write];
}

- (BOOL)isExistingEntry:(id)entry
{
  v5 = +[NSFileManager defaultManager];
  v6 = objc_opt_class();
  v7 = BCDynamicCast(v6, [entry objectForKey:@"Path"]);
  v8 = [v7 length];
  if (v8)
  {
    v8 = [(NSFileManager *)v5 fileExistsAtPath:[[(NSString *)[(BCPlist *)self path] stringByDeletingLastPathComponent] stringByAppendingPathComponent:v7]];
    if (v8)
    {
      return 1;
    }
  }

  v11 = BCDefaultLog(v8, v9);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v12)
  {
    path = [(BCPlist *)self path];
    v14 = @"is not nil";
    v15 = 138543874;
    v16 = path;
    v17 = 2112;
    if (!v7)
    {
      v14 = @"is nil";
    }

    v18 = v7;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Existing entry doesn't exist for plist %{public}@. EntryPath: %@ (%@)", &v15, 0x20u);
    return 0;
  }

  return result;
}

- (id)existingPersistentIDs
{
  v26 = +[NSMutableArray array];
  books = [(BCPlist *)self books];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [books countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v25 = books;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(books);
        }

        v8 = *(*(&v27 + 1) + 8 * v7);
        v9 = objc_opt_class();
        v10 = BCDynamicCast(v9, v8);
        v11 = objc_opt_class();
        v12 = BCDynamicCast(v11, [v10 objectForKey:@"Persistent ID"]);
        if (v12)
        {
          v14 = v12;
          v15 = [(BCPlist *)self isExistingEntry:v10];
          if (v15)
          {
            [v26 addObject:v14];
          }

          else
          {
            v21 = BCDefaultLog(v15, v16);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              path = [(BCPlist *)self path];
              v23 = [v10 objectForKey:@"Path"];
              *buf = 138543874;
              v32 = path;
              books = v25;
              v33 = 2112;
              v34 = v23;
              v35 = 2112;
              v36 = v14;
              _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "[%{public}@] Collecting persistentIDs - File Not Found: %@ - [%@]", buf, 0x20u);
            }
          }
        }

        else
        {
          v17 = BCDefaultLog(0, v13);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            path2 = [(BCPlist *)self path];
            v19 = [v10 objectForKey:@"Artist"];
            v20 = [v10 objectForKey:@"Name"];
            *buf = 138544130;
            v32 = path2;
            v33 = 2112;
            v34 = v19;
            books = v25;
            v35 = 2112;
            v36 = v20;
            v37 = 2112;
            v38 = 0;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Collecting persistentIDs - No Path || PersistentID -- {%@, %@} - [%@]", buf, 0x2Au);
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [books countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v5);
  }

  return v26;
}

- (id)entriesWithPath
{
  v3 = +[NSMutableArray array];
  books = [(BCPlist *)self books];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [books countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(books);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = BCDynamicCast(v10, v9);
        v12 = objc_opt_class();
        if ([BCDynamicCast(v12 objc_msgSend(v11])
        {
          [v3 addObject:v11];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [books countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)unfilteredPersistentIDs
{
  v3 = +[NSMutableArray array];
  books = [(BCPlist *)self books];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [books countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(books);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = BCDynamicCast(v10, v9);
        v12 = objc_opt_class();
        v13 = BCDynamicCast(v12, [v11 objectForKey:@"Persistent ID"]);
        if ([v13 length])
        {
          [v3 addObject:v13];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [books countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)sortedPersistentIDs:(BOOL)ds
{
  if (ds)
  {
    existingPersistentIDs = [(BCPlist *)self existingPersistentIDs];
  }

  else
  {
    existingPersistentIDs = [(BCPlist *)self unfilteredPersistentIDs];
  }

  v4 = existingPersistentIDs;
  if (![existingPersistentIDs count])
  {
    return 0;
  }

  v5 = [NSMutableArray arrayWithArray:v4];
  [(NSMutableArray *)v5 sortUsingSelector:"compare:"];
  return v5;
}

- (id)paths
{
  v3 = +[NSMutableArray array];
  books = [(BCPlist *)self books];
  if ([books count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [books countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(books);
          }

          v9 = *(*(&v15 + 1) + 8 * v8);
          v10 = objc_opt_class();
          v11 = BCDynamicCast(v10, v9);
          v12 = objc_opt_class();
          v13 = BCDynamicCast(v12, [v11 objectForKey:@"Path"]);
          if ([v13 length])
          {
            [v3 addObject:v13];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [books countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

- (id)sortedPaths
{
  v2 = [NSMutableArray arrayWithArray:[(BCPlist *)self paths]];
  if ([(NSMutableArray *)v2 count])
  {
    [(NSMutableArray *)v2 sortUsingSelector:"compare:"];
  }

  return v2;
}

- (void)removeItemsFromSidecar:(id)sidecar
{
  v4 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [sidecar countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(sidecar);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = BCDynamicCast(v10, v9);
        v12 = objc_opt_class();
        v13 = BCDynamicCast(v12, [v11 objectForKey:@"Path"]);
        if ([v13 length])
        {
          [v4 addObject:v13];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [sidecar countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v14 = [[BCSidecarTrimPlistProducer alloc] initWithPath:[[(NSString *)[(BCPlist *)self path] stringByDeletingLastPathComponent] stringByAppendingPathComponent:@"Deletes.plist"] removePaths:v4];
    [(BCPlistProducer *)v14 write];
  }
}

- (BOOL)addItems:(id)items
{
  v5 = [[BCAddEntriesPlistProducer alloc] initWithPath:[(BCPlist *)self path] entries:items];
  write = [(BCPlistProducer *)v5 write];

  if (write)
  {
    [(BCPlist *)self removeItemsFromSidecar:items];
  }

  return write;
}

- (BOOL)replaceItems:(id)items
{
  v3 = [[BCAddEntriesPlistProducer alloc] initWithPath:[(BCPlist *)self path] entries:items];
  [(BCAddEntriesPlistProducer *)v3 replace:1];
  write = [(BCPlistProducer *)v3 write];

  return write;
}

- (void)generateDirectory
{
  stringByDeletingLastPathComponent = [(NSString *)[(BCPlist *)self path] stringByDeletingLastPathComponent];
  if ([(NSString *)stringByDeletingLastPathComponent length])
  {
    v3 = +[NSFileManager defaultManager];
    if (![(NSFileManager *)v3 fileExistsAtPath:stringByDeletingLastPathComponent])
    {
      v4[0] = NSFileOwnerAccountName;
      v4[1] = NSFileGroupOwnerAccountName;
      v5[0] = @"mobile";
      v5[1] = @"mobile";
      [(NSFileManager *)v3 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v5 forKeys:v4 count:2], 0];
    }
  }
}

- (id)objectForKey:(id)key
{
  result = [NSDictionary dictionaryWithContentsOfFile:[(BCPlist *)self path]];
  if (result)
  {

    return [result objectForKey:key];
  }

  return result;
}

- (id)books
{
  v2 = [(BCPlist *)self objectForKey:@"Books"];
  v3 = objc_opt_class();
  v4 = BCDynamicCast(v3, v2);
  v6 = v4;
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v2 == 0;
  }

  if (v7)
  {
    if (!v4)
    {
      v8 = BCDefaultLog(0, v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_11E64(v8);
      }
    }
  }

  else
  {
    v9 = BCDefaultLog(v4, v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_11EA8(v9);
    }
  }

  return v6;
}

- (id)booksSortedByKey:(id)key
{
  books = [(BCPlist *)self books];

  return [books arrayOfDictionariesSortedByKey:@"Persistent ID"];
}

- (id)uploadsByPersistentID
{
  v2 = [NSDictionary dictionaryWithContentsOfFile:[(BCPlist *)self path]];
  if (v2)
  {
    v3 = objc_opt_class();
    v2 = BCDynamicCast(v3, [(NSDictionary *)v2 objectForKey:@"Persistent IDs"]);
  }

  if (![(NSDictionary *)v2 count])
  {
    return 0;
  }

  v4 = [NSMutableArray arrayWithArray:v2];
  [(NSMutableArray *)v4 sortUsingSelector:"compare:"];
  return v4;
}

- (BOOL)removeItemsByPersistentID:(id)d
{
  v5 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    dCopy = d;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Removing items with IDs %@.", &v9, 0xCu);
  }

  v6 = [[BCRemovePersistentIDPlistProducer alloc] initWithPath:[(BCPlist *)self path] persistentIDs:d];
  write = [(BCPlistProducer *)v6 write];

  return write;
}

+ (id)promisableItemsFromItems:(id)items
{
  v4 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [items countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = objc_opt_class();
        v11 = BCDynamicCast(v10, v9);
        v12 = [BCPlist canPromiseItem:v11];
        if (v12)
        {
          v14 = [v4 addObject:v11];
          v16 = BCDefaultLog(v14, v15);
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v17 = [v11 objectForKey:@"Artist"];
          v18 = [v11 objectForKey:@"Name"];
          *buf = 138412546;
          v30 = v17;
          v31 = 2112;
          v32 = v18;
          v19 = v16;
          v20 = "Can Promise: {%@ - %@}";
        }

        else
        {
          v21 = BCDefaultLog(v12, v13);
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v22 = [v11 objectForKey:@"Artist"];
          v23 = [v11 objectForKey:@"Name"];
          *buf = 138412546;
          v30 = v22;
          v31 = 2112;
          v32 = v23;
          v19 = v21;
          v20 = "Cannot Promise: {%@ - %@}";
        }

        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
      }

      v6 = [items countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)resetPaths
{
  v3 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    path = [(BCPlist *)self path];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Resetting paths in %{public}@.", buf, 0xCu);
  }

  v41 = objc_alloc_init(NSAutoreleasePool);
  [(BCPlist *)self regenerateMissingPersistentIDs];
  books = [(BCPlist *)self books];
  v45 = objc_alloc_init(NSMutableArray);
  v44 = +[NSFileManager defaultManager];
  selfCopy = self;
  stringByDeletingLastPathComponent = [(NSString *)[(BCPlist *)self path] stringByDeletingLastPathComponent];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = books;
  v6 = [books countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v47;
    do
    {
      v10 = 0;
      do
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v46 + 1) + 8 * v10);
        v12 = objc_opt_class();
        v13 = BCDynamicCast(v12, v11);
        v14 = [BCPlist canPromiseItem:v13];
        v15 = objc_opt_class();
        v16 = BCDynamicCast(v15, [v13 objectForKey:@"Path"]);
        if ([v16 length])
        {
          v18 = [(NSString *)stringByDeletingLastPathComponent stringByAppendingPathComponent:v16];
          v19 = [(NSFileManager *)v44 fileExistsAtPath:v18];
          v20 = v19;
          v22 = BCDefaultLog(v19, v21);
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          if (v20)
          {
            if (v23)
            {
              v24 = [v13 objectForKey:@"Persistent ID"];
              *buf = 138412546;
              path = v24;
              v52 = 2112;
              v53 = v18;
              v25 = v22;
              v26 = "resetting paths -- Entry exists: %@ -- [%@]";
              v27 = 22;
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          if (!v14)
          {
            if (!v23)
            {
              goto LABEL_26;
            }

            v37 = [v13 objectForKey:@"Persistent ID"];
            *buf = 138412546;
            path = v37;
            v52 = 2112;
            v53 = v18;
            v34 = v22;
            v35 = "resetting paths -- Entry does not stat: %@ -- [%@] -- Cannot promise";
            v36 = 22;
            goto LABEL_25;
          }

          if (v23)
          {
            v31 = [v13 objectForKey:@"Persistent ID"];
            *buf = 138412546;
            path = v31;
            v52 = 2112;
            v53 = v18;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "resetting paths -- Entry does not stat: %@ -- [%@]", buf, 0x16u);
          }

          v32 = [[NSMutableDictionary alloc] initWithDictionary:v13];
          [v32 removeObjectForKey:@"Backup-Path"];
          [v32 removeObjectForKey:@"Path"];
          [v32 setObject:v18 forKey:@"Backup-Path"];
          [v45 addObject:v32];
        }

        else
        {
          v28 = BCDefaultLog(0, v17);
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
          if (v14)
          {
            if (v29)
            {
              v30 = [v13 objectForKey:@"Persistent ID"];
              *buf = 138412290;
              path = v30;
              v25 = v28;
              v26 = "resetting paths -- Entry without a path: %@";
              v27 = 12;
LABEL_15:
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
            }

LABEL_16:
            [v45 addObject:v13];
            goto LABEL_26;
          }

          if (v29)
          {
            v33 = [v13 objectForKey:@"Persistent ID"];
            *buf = 138412290;
            path = v33;
            v34 = v28;
            v35 = "resetting paths -- Entry without a path: %@ -- Cannot promise";
            v36 = 12;
LABEL_25:
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, v35, buf, v36);
          }
        }

LABEL_26:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v6 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
      v8 = v6;
    }

    while (v6);
  }

  v38 = BCDefaultLog(v6, v7);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [v45 count];
    *buf = 134217984;
    path = v39;
    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "resetting paths -- rewriting %lu entries", buf, 0xCu);
  }

  v40 = [[BCAddEntriesPlistProducer alloc] initWithPath:[(BCPlist *)selfCopy path] entries:v45];
  [(BCAddEntriesPlistProducer *)v40 replace:1];
  [(BCPlistProducer *)v40 write];
}

- (void)processDeletesFile
{
  v3 = [[(NSString *)[(BCPlist *)self path] stringByDeletingLastPathComponent] stringByAppendingPathComponent:@"Deletes.plist"];
  v4 = [[BCIngestSidecarPlistProducer alloc] initWithPath:[(BCPlist *)self path] sidecarPath:v3];
  write = [(BCPlistProducer *)v4 write];
  filterMatches = [(BCIngestSidecarPlistProducer *)v4 filterMatches];

  if (write)
  {
    v6 = [[BCSidecarRewritePlistProducer alloc] initWithPath:v3 deletes:filterMatches];
    [(BCPlistProducer *)v6 write];
  }
}

@end