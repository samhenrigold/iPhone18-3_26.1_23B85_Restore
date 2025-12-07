@interface BCAssetDatabase
+ (void)removeDatabase;
- (BCAssetDatabase)init;
- (BOOL)shouldRetryAddingPersistentStoreAfterError:(id)error;
- (id)cachedEntities:(id)entities byPersistentIDs:(id)ds metrics:(id *)metrics;
- (id)cachedOutstandingAssetsByPersistentIDs:(id)ds;
- (id)downloadCompletePathMap;
- (id)entities:(id)entities byPredicate:(id)predicate fromMOC:(id)c;
- (id)outstandingAssetDownloadCompletePathsMatchingArray:(id)array;
- (id)outstandingAssetsByRestoreFlag:(BOOL)flag;
- (void)insertInstalledAssetByPersistentID:(id)d withSize:(unint64_t)size;
- (void)insertOutstandingAssetDictionaries:(id)dictionaries isRestore:(BOOL)restore;
- (void)removeEntities:(id)entities byPredicate:(id)predicate;
- (void)removeInstalledAssetsExcluding:(id)excluding;
- (void)removeOutstandingAssetByPersistentID:(id)d;
- (void)removeOutstandingAssetMissingFromPersistentIDs:(id)ds;
- (void)removeOutstandingAssetsByPersistentIDs:(id)ds;
- (void)removeOutstandingAssetsByRestoreFlag:(BOOL)flag keepDownloadedAssetRows:(BOOL)rows;
- (void)setDownloadPath:(id)path forOutstandingAssetsByPersistentID:(id)d;
- (void)updateOutstandingAssetDictionaries:(id)dictionaries isRestore:(BOOL)restore;
@end

@implementation BCAssetDatabase

- (BCAssetDatabase)init
{
  v3 = +[NSFileManager defaultManager];
  if (![(NSFileManager *)v3 fileExistsAtPath:@"/var/mobile/Media/Books/Sync/Database/"])
  {
    v6[0] = NSFileOwnerAccountName;
    v6[1] = NSFileGroupOwnerAccountName;
    v7[0] = @"mobile";
    v7[1] = @"mobile";
    [(NSFileManager *)v3 createDirectoryAtPath:@"/var/mobile/Media/Books/Sync/Database/" withIntermediateDirectories:1 attributes:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v7 forKeys:v6 count:2], 0];
  }

  v5.receiver = self;
  v5.super_class = BCAssetDatabase;
  result = [(BCDatabase *)&v5 initWithDatabasePath:@"/var/mobile/Media/Books/Sync/Database/OutstandingAssets_4.sqlite"];
  if (result)
  {
    result->_psErrorRetryCount = 0;
  }

  return result;
}

- (BOOL)shouldRetryAddingPersistentStoreAfterError:(id)error
{
  psErrorRetryCount = self->_psErrorRetryCount;
  v5 = BCDefaultLog(self, a2);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (psErrorRetryCount <= 0)
  {
    if (v6)
    {
      sub_13A50(v5);
    }

    +[BCAssetDatabase removeDatabase];
  }

  else if (v6)
  {
    sub_139D4(&self->_psErrorRetryCount, v5);
  }

  v7 = self->_psErrorRetryCount;
  self->_psErrorRetryCount = v7 + 1;
  return v7 < 1;
}

+ (void)removeDatabase
{
  v2 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Removing the database.", buf, 2u);
  }

  v13 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = [(NSFileManager *)v3 fileExistsAtPath:@"/var/mobile/Media/Books/Sync/Database/"];
  if (v4)
  {
    v6 = [(NSFileManager *)v3 removeItemAtPath:@"/var/mobile/Media/Books/Sync/Database/" error:&v13];
    if (v6)
    {
      v8 = BCDefaultLog(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = @"/var/mobile/Media/Books/Sync/Database/";
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "deleted: %@", buf, 0xCu);
      }
    }

    else
    {
      v10 = v13;
      v11 = BCDefaultLog(v6, v7);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        if (v12)
        {
          sub_13AD8();
        }
      }

      else if (v12)
      {
        sub_13B48();
      }
    }
  }

  else
  {
    v9 = BCDefaultLog(v4, v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_13A94(v9);
    }
  }

  if (![(NSFileManager *)v3 fileExistsAtPath:@"/var/mobile/Media/Books/Sync/Database/"])
  {
    v14[0] = NSFileOwnerAccountName;
    v14[1] = NSFileGroupOwnerAccountName;
    v15[0] = @"mobile";
    v15[1] = @"mobile";
    [(NSFileManager *)v3 createDirectoryAtPath:@"/var/mobile/Media/Books/Sync/Database/" withIntermediateDirectories:1 attributes:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v15 forKeys:v14 count:2], 0];
  }
}

- (void)removeEntities:(id)entities byPredicate:(id)predicate
{
  v8 = objc_alloc_init(NSAutoreleasePool);
  newManagedObjectContext = [(BCDatabase *)self newManagedObjectContext];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_F084;
  v10[3] = &unk_20640;
  v10[4] = self;
  v10[5] = entities;
  v10[6] = predicate;
  v10[7] = newManagedObjectContext;
  v10[8] = a2;
  [newManagedObjectContext performBlockAndWait:v10];
}

- (id)entities:(id)entities byPredicate:(id)predicate fromMOC:(id)c
{
  v8 = objc_alloc_init(NSFetchRequest);
  [v8 setEntity:{+[NSEntityDescription entityForName:inManagedObjectContext:](NSEntityDescription, "entityForName:inManagedObjectContext:", entities, c)}];
  [v8 setPredicate:predicate];
  v15 = 0;
  v9 = [c executeFetchRequest:v8 error:&v15];
  v11 = v9;
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = v15 == 0;
  }

  if (!v12)
  {
    v13 = BCDefaultLog(v9, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_13C28();
    }
  }

  return v11;
}

- (id)cachedEntities:(id)entities byPersistentIDs:(id)ds metrics:(id *)metrics
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_F4D8;
  v20 = sub_F4E8;
  v21 = 0;
  if (![ds count])
  {
    v12 = BCDefaultLog(0, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_13C98(v12);
      if (!metrics)
      {
        goto LABEL_6;
      }
    }

    else if (!metrics)
    {
      goto LABEL_6;
    }

    metrics->var0 = 0;
    metrics->var1 = 0;
    goto LABEL_6;
  }

  v10 = objc_alloc_init(NSAutoreleasePool);
  newManagedObjectContext = [(BCDatabase *)self newManagedObjectContext];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_F4F4;
  v15[3] = &unk_20668;
  v15[4] = entities;
  v15[5] = newManagedObjectContext;
  v15[6] = ds;
  v15[7] = &v16;
  v15[8] = metrics;
  [newManagedObjectContext performBlockAndWait:v15];

LABEL_6:
  allObjects = [v17[5] allObjects];
  _Block_object_dispose(&v16, 8);
  return allObjects;
}

- (id)cachedOutstandingAssetsByPersistentIDs:(id)ds
{
  v4 = [NSSet setWithArray:ds];

  return [(BCAssetDatabase *)self cachedEntities:@"BCOutstandingAsset" byPersistentIDs:v4 metrics:0];
}

- (id)outstandingAssetsByRestoreFlag:(BOOL)flag
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSAutoreleasePool);
  newManagedObjectContext = [(BCDatabase *)self newManagedObjectContext];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_F950;
  v9[3] = &unk_20690;
  flagCopy = flag;
  v9[4] = self;
  v9[5] = newManagedObjectContext;
  v9[6] = v5;
  [newManagedObjectContext performBlockAndWait:v9];

  return v5;
}

- (void)insertOutstandingAssetDictionaries:(id)dictionaries isRestore:(BOOL)restore
{
  restoreCopy = restore;
  v8 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = restoreCopy;
    v15 = 2112;
    dictionariesCopy = dictionaries;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Inserting outstanding assets with restoreFlag %d, asset dictionary %@.", buf, 0x12u);
  }

  v9 = objc_alloc_init(NSAutoreleasePool);
  newManagedObjectContext = [(BCDatabase *)self newManagedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_FC14;
  v11[3] = &unk_206B8;
  v12 = restoreCopy;
  v11[4] = dictionaries;
  v11[5] = newManagedObjectContext;
  v11[6] = self;
  v11[7] = a2;
  [newManagedObjectContext performBlockAndWait:v11];
}

- (void)updateOutstandingAssetDictionaries:(id)dictionaries isRestore:(BOOL)restore
{
  restoreCopy = restore;
  v8 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = restoreCopy;
    v15 = 2112;
    dictionariesCopy = dictionaries;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Updating outstanding assets with restoreFlag %d, asset dictionary %@.", buf, 0x12u);
  }

  v9 = objc_alloc_init(NSAutoreleasePool);
  newManagedObjectContext = [(BCDatabase *)self newManagedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_101B8;
  v11[3] = &unk_206B8;
  v12 = restoreCopy;
  v11[4] = dictionaries;
  v11[5] = self;
  v11[6] = newManagedObjectContext;
  v11[7] = a2;
  [newManagedObjectContext performBlockAndWait:v11];
}

- (void)removeOutstandingAssetMissingFromPersistentIDs:(id)ds
{
  v6 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    dsCopy = ds;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Removing outstanding assets missing from IDs %@.", buf, 0xCu);
  }

  if ([ds count])
  {
    v7 = objc_alloc_init(NSAutoreleasePool);
    newManagedObjectContext = [(BCDatabase *)self newManagedObjectContext];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10774;
    v9[3] = &unk_206E0;
    v9[4] = ds;
    v9[5] = self;
    v9[6] = newManagedObjectContext;
    v9[7] = a2;
    [newManagedObjectContext performBlockAndWait:v9];
  }
}

- (void)removeOutstandingAssetsByRestoreFlag:(BOOL)flag keepDownloadedAssetRows:(BOOL)rows
{
  rowsCopy = rows;
  flagCopy = flag;
  v7 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v10 = flagCopy;
    v11 = 1024;
    v12 = rowsCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Removing outstanding assets by restoreFlag %d, keepDownloadedAssetRows %d.", buf, 0xEu);
  }

  flagCopy = [NSPredicate predicateWithFormat:@"restoreRelated == %d", flagCopy];
  if (rowsCopy)
  {
    flagCopy = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"(restoreRelated == %d) AND (downloadCompletePath == %@)", flagCopy, +[NSNull null]);
  }

  [(BCAssetDatabase *)self removeEntities:@"BCOutstandingAsset" byPredicate:flagCopy];
}

- (void)removeOutstandingAssetByPersistentID:(id)d
{
  v5 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    dCopy = d;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Removing outstanding by ID %@.", buf, 0xCu);
  }

  [(BCAssetDatabase *)self removeEntities:@"BCOutstandingAsset" byPredicate:[NSPredicate predicateWithFormat:@"persistentID == %@", d]];
}

- (void)removeOutstandingAssetsByPersistentIDs:(id)ds
{
  v5 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    dsCopy = ds;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Removing outstanding by IDs %@.", buf, 0xCu);
  }

  if ([ds count])
  {
    [(BCAssetDatabase *)self removeEntities:@"BCOutstandingAsset" byPredicate:[NSPredicate predicateWithFormat:@"persistentID IN %@", ds]];
  }
}

- (void)setDownloadPath:(id)path forOutstandingAssetsByPersistentID:(id)d
{
  v8 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    pathCopy = path;
    v14 = 2112;
    dCopy = d;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Setting download path %@ for ID %@.", buf, 0x16u);
  }

  v9 = objc_alloc_init(NSAutoreleasePool);
  newManagedObjectContext = [(BCDatabase *)self newManagedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10F30;
  v11[3] = &unk_20640;
  v11[4] = d;
  v11[5] = self;
  v11[6] = newManagedObjectContext;
  v11[7] = path;
  v11[8] = a2;
  [newManagedObjectContext performBlockAndWait:v11];
}

- (id)outstandingAssetDownloadCompletePathsMatchingArray:(id)array
{
  v5 = BCDefaultLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = array;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Outstanding asset downloads complete with paths %@.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v12 = 0x3052000000;
  v13 = sub_F4D8;
  v14 = sub_F4E8;
  v15 = 0;
  v6 = objc_alloc_init(NSAutoreleasePool);
  newManagedObjectContext = [(BCDatabase *)self newManagedObjectContext];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_11324;
  v10[3] = &unk_20708;
  v10[4] = newManagedObjectContext;
  v10[5] = array;
  v10[6] = &buf;
  [newManagedObjectContext performBlockAndWait:v10];

  v8 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);
  return v8;
}

- (id)downloadCompletePathMap
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_F4D8;
  v12 = sub_F4E8;
  v13 = 0;
  v3 = objc_alloc_init(NSAutoreleasePool);
  newManagedObjectContext = [(BCDatabase *)self newManagedObjectContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_115FC;
  v7[3] = &unk_20730;
  v7[4] = newManagedObjectContext;
  v7[5] = &v8;
  [newManagedObjectContext performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)removeInstalledAssetsExcluding:(id)excluding
{
  if ([excluding count])
  {
    excluding = [NSPredicate predicateWithFormat:@"NOT (persistentID IN %@)", excluding];

    [(BCAssetDatabase *)self removeEntities:@"BCInstalledAsset" byPredicate:excluding];
  }
}

- (void)insertInstalledAssetByPersistentID:(id)d withSize:(unint64_t)size
{
  if ([d length])
  {
    v9 = objc_alloc_init(NSAutoreleasePool);
    newManagedObjectContext = [(BCDatabase *)self newManagedObjectContext];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_118FC;
    v12[3] = &unk_20758;
    v12[4] = d;
    v12[5] = self;
    v12[6] = newManagedObjectContext;
    v12[7] = size;
    v12[8] = a2;
    [newManagedObjectContext performBlockAndWait:v12];
  }

  else
  {
    v11 = BCDefaultLog(0, v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_13EA4();
    }
  }
}

@end