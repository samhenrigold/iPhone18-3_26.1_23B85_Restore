@interface BKCollectionMember
+ (id)collectionMemberDictionariesWithAssetIDs:(id)ds;
+ (id)collectionMemberDictionaryWithLibraryAsset:(id)asset sortKey:(id)key;
+ (id)predicateForCollectionMembersWithAssetIDs:(id)ds;
- (NSString)collectionID;
- (id)collectionMemberRepresentation;
- (id)shortDescription;
- (void)awakeFromFetch;
- (void)configureFromCollectionMember:(id)member;
- (void)setAsset:(id)asset;
- (void)setAssetID:(id)d;
- (void)setCollection:(id)collection;
- (void)setSortKey:(id)key;
- (void)setTemporaryAssetID:(id)d;
- (void)updateLastModification;
@end

@implementation BKCollectionMember

- (void)awakeFromFetch
{
  v8.receiver = self;
  v8.super_class = BKCollectionMember;
  [(BKCollectionMember *)&v8 awakeFromFetch];
  collection = [(BKCollectionMember *)self collection];

  if (collection)
  {
    collection2 = [(BKCollectionMember *)self collection];
    collectionID = [collection2 collectionID];
    v6 = [collectionID copy];
    collectionID = self->_collectionID;
    self->_collectionID = v6;
  }
}

+ (id)collectionMemberDictionaryWithLibraryAsset:(id)asset sortKey:(id)key
{
  keyCopy = key;
  assetID = [asset assetID];
  if ([assetID length])
  {
    v7 = [NSDictionary dictionaryWithObjectsAndKeys:assetID, @"assetID", keyCopy, @"sortKey", 0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)collectionMemberDictionariesWithAssetIDs:(id)ds
{
  dsCopy = ds;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 length])
        {
          v11 = [NSDictionary alloc];
          v12 = [v11 initWithObjectsAndKeys:{v10, @"assetID", 0, v14}];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)predicateForCollectionMembersWithAssetIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    [NSPredicate predicateWithFormat:@"assetID IN %@", dsCopy];
  }

  else
  {
    [NSPredicate predicateWithValue:0];
  }
  v4 = ;

  return v4;
}

- (id)collectionMemberRepresentation
{
  collectionID = [(BKCollectionMember *)self collectionID];
  if (collectionID && (v4 = collectionID, [(BKCollectionMember *)self assetID], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    collectionID2 = [(BKCollectionMember *)self collectionID];
    assetID = [(BKCollectionMember *)self assetID];
    v8 = [BCCollectionMember collectionMemberIDWithCollectionID:collectionID2 assetID:assetID];

    v9 = [[BCMutableCollectionMember alloc] initWithCollectionMemberID:v8];
    sortKey = [(BKCollectionMember *)self sortKey];
    [v9 setSortOrder:{objc_msgSend(sortKey, "intValue")}];

    [v9 setDeletedFlag:0];
    localModDate = [(BKCollectionMember *)self localModDate];
    [v9 setModificationDate:localModDate];
  }

  else
  {
    v12 = BKLibraryCollectionLog(collectionID);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_90E38(self);
    }

    v9 = 0;
  }

  return v9;
}

- (void)configureFromCollectionMember:(id)member
{
  memberCopy = member;
  localModDate = [(BKCollectionMember *)self localModDate];
  modificationDate = [memberCopy modificationDate];
  v7 = modificationDate;
  if (!(localModDate | modificationDate))
  {
    v19 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v19 verboseLoggingEnabled];

    if (!verboseLoggingEnabled)
    {
      goto LABEL_12;
    }

    v11 = BKLibraryCollectionDevelopmentLog(v21);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    collection = [(BKCollectionMember *)self collection];
    title = [collection title];
    asset = [(BKCollectionMember *)self asset];
    title2 = [asset title];
    *buf = 138412546;
    v57 = title;
    v58 = 2112;
    v59 = title2;
    v16 = "\\configureFromCollectionMember No local modDate, No collectionMember modDate for collectionMember %@ - %@\";
    v17 = v11;
    v18 = 22;
    goto LABEL_10;
  }

  if (!localModDate && modificationDate)
  {
    v8 = +[BULogUtilities shared];
    verboseLoggingEnabled2 = [v8 verboseLoggingEnabled];

    if (!verboseLoggingEnabled2)
    {
      goto LABEL_12;
    }

    v11 = BKLibraryCollectionDevelopmentLog(v10);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    collection = [(BKCollectionMember *)self collection];
    title = [collection title];
    asset = [(BKCollectionMember *)self asset];
    title2 = [asset title];
    *buf = 138412802;
    v57 = v7;
    v58 = 2112;
    v59 = title;
    v60 = 2112;
    v61 = title2;
    v16 = "\\No local modDate, collectionMember has modDate:%@  for collectionMember %@ - %@\";
    v17 = v11;
    v18 = 32;
    goto LABEL_10;
  }

  if (localModDate)
  {
    if (modificationDate)
    {
      v49 = +[BULogUtilities shared];
      verboseLoggingEnabled3 = [v49 verboseLoggingEnabled];

      if (verboseLoggingEnabled3)
      {
        v11 = BKLibraryCollectionDevelopmentLog(v51);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        collection = [(BKCollectionMember *)self collection];
        title = [collection title];
        asset = [(BKCollectionMember *)self asset];
        title2 = [asset title];
        *buf = 138413058;
        v57 = localModDate;
        v58 = 2112;
        v59 = v7;
        v60 = 2112;
        v61 = title;
        v62 = 2112;
        v63 = title2;
        v16 = "\\local has modDate:%@, collectionMember has modDate:%@ for collectionMember %@ - %@\";
        v17 = v11;
        v18 = 42;
LABEL_10:
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);

LABEL_11:
      }
    }
  }

LABEL_12:
  collectionMemberID = [memberCopy collectionMemberID];
  v23 = [BCCollectionMember collectionIDFromCollectionMemberID:collectionMemberID];

  collectionMemberID2 = [memberCopy collectionMemberID];
  v25 = [BCCollectionMember assetIDFromCollectionMemberID:collectionMemberID2];

  deletedFlag = [memberCopy deletedFlag];
  if (deletedFlag)
  {
    v27 = BKLibraryCollectionLog(deletedFlag);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_90EEC(self);
    }
  }

  collectionID = [(BKCollectionMember *)self collectionID];
  if (collectionID)
  {
    v29 = collectionID;
    collectionID2 = [(BKCollectionMember *)self collectionID];
    v31 = [v23 isEqualToString:collectionID2];

    if ((v31 & 1) == 0)
    {
      v33 = BKLibraryCollectionLog(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_90F7C(self);
      }
    }
  }

  assetID = [(BKCollectionMember *)self assetID];

  if (!assetID)
  {
    v38 = BKLibraryCollectionLog([(BKCollectionMember *)self setAssetID:v25]);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_9109C(self, v38);
    }

    goto LABEL_27;
  }

  assetID2 = [(BKCollectionMember *)self assetID];
  v36 = [v25 isEqualToString:assetID2];

  if ((v36 & 1) == 0)
  {
    v38 = BKLibraryCollectionLog(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_9100C(self);
    }

LABEL_27:
  }

  if (v7)
  {
    if (!localModDate || ([v7 timeIntervalSinceReferenceDate], v40 = v39, objc_msgSend(localModDate, "timeIntervalSinceReferenceDate"), v40 > v41))
    {
      v42 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [memberCopy sortOrder]);
      [(BKCollectionMember *)self setDifferentNumber:v42 forKey:@"sortKey"];
      hasChanges = [(BKCollectionMember *)self hasChanges];
      [(BKCollectionMember *)self setDifferentDate:v7 forKey:@"localModDate"];
      v44 = +[BULogUtilities shared];
      verboseLoggingEnabled4 = [v44 verboseLoggingEnabled];

      if (hasChanges)
      {
        if (verboseLoggingEnabled4)
        {
          v47 = BKLibraryCollectionDevelopmentLog(v46);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            shortDescription = [(BKCollectionMember *)self shortDescription];
            *buf = 138412290;
            v57 = shortDescription;
            _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "\\BKCollectionMember Configured with changes: %@\", buf, 0xCu);
          }

LABEL_43:
        }
      }

      else if (verboseLoggingEnabled4)
      {
        v47 = BKLibraryCollectionDevelopmentLog(v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          collection2 = [(BKCollectionMember *)self collection];
          title3 = [collection2 title];
          asset2 = [(BKCollectionMember *)self asset];
          title4 = [asset2 title];
          *buf = 138412546;
          v57 = title3;
          v58 = 2112;
          v59 = title4;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "\\BKCollectionMember Configure - No changes besides date for collectionMember %@ - %@\", buf, 0x16u);
        }

        goto LABEL_43;
      }
    }
  }
}

- (id)shortDescription
{
  collection = [(BKCollectionMember *)self collection];
  collectionID = [collection collectionID];
  assetID = [(BKCollectionMember *)self assetID];
  asset = [(BKCollectionMember *)self asset];
  title = [asset title];
  sortKey = [(BKCollectionMember *)self sortKey];
  v9 = [NSString stringWithFormat:@"BKCollectionMember collectionID: %@ assetID: %@ title: %@ sortKey:%@", collectionID, assetID, title, sortKey];

  return v9;
}

- (void)updateLastModification
{
  v3 = +[NSDate date];
  [(BKCollectionMember *)self setLocalModDate:v3];
}

- (void)setAssetID:(id)d
{
  dCopy = d;
  assetID = [(BKCollectionMember *)self assetID];
  v5 = [assetID isEqualToString:dCopy];

  if ((v5 & 1) == 0)
  {
    [(BKCollectionMember *)self willChangeValueForKey:@"assetID"];
    [(BKCollectionMember *)self setPrimitiveValue:dCopy forKey:@"assetID"];
    [(BKCollectionMember *)self updateLastModification];
    [(BKCollectionMember *)self didChangeValueForKey:@"assetID"];
  }
}

- (void)setTemporaryAssetID:(id)d
{
  dCopy = d;
  temporaryAssetID = [(BKCollectionMember *)self temporaryAssetID];
  v5 = [temporaryAssetID isEqualToString:dCopy];

  if ((v5 & 1) == 0)
  {
    [(BKCollectionMember *)self willChangeValueForKey:@"temporaryAssetID"];
    [(BKCollectionMember *)self setPrimitiveValue:dCopy forKey:@"temporaryAssetID"];
    [(BKCollectionMember *)self updateLastModification];
    [(BKCollectionMember *)self didChangeValueForKey:@"temporaryAssetID"];
  }
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  asset = [(BKCollectionMember *)self asset];

  if (asset != assetCopy)
  {
    [(BKCollectionMember *)self willChangeValueForKey:@"asset"];
    [(BKCollectionMember *)self setPrimitiveValue:assetCopy forKey:@"asset"];
    [(BKCollectionMember *)self updateLastModification];
    [(BKCollectionMember *)self didChangeValueForKey:@"asset"];
  }
}

- (void)setSortKey:(id)key
{
  keyCopy = key;
  sortKey = [(BKCollectionMember *)self sortKey];
  v5 = [sortKey isEqual:keyCopy];

  if ((v5 & 1) == 0)
  {
    [(BKCollectionMember *)self willChangeValueForKey:@"sortKey"];
    [(BKCollectionMember *)self setPrimitiveValue:keyCopy forKey:@"sortKey"];
    [(BKCollectionMember *)self updateLastModification];
    [(BKCollectionMember *)self didChangeValueForKey:@"sortKey"];
  }
}

- (void)setCollection:(id)collection
{
  collectionCopy = collection;
  collection = [(BKCollectionMember *)self collection];

  if (collection != collectionCopy)
  {
    [(BKCollectionMember *)self willChangeValueForKey:@"collection"];
    [(BKCollectionMember *)self setPrimitiveValue:collectionCopy forKey:@"collection"];
    [(BKCollectionMember *)self updateLastModification];
    [(BKCollectionMember *)self didChangeValueForKey:@"collection"];
    collection2 = [(BKCollectionMember *)self collection];

    if (collection2)
    {
      collection3 = [(BKCollectionMember *)self collection];
      collectionID = [collection3 collectionID];
      v8 = [collectionID copy];
      collectionID = self->_collectionID;
      self->_collectionID = v8;
    }
  }
}

- (NSString)collectionID
{
  if (!self->_collectionID)
  {
    collection = [(BKCollectionMember *)self collection];

    if (collection)
    {
      collection2 = [(BKCollectionMember *)self collection];
      collectionID = [collection2 collectionID];
      v6 = [collectionID copy];
      collectionID = self->_collectionID;
      self->_collectionID = v6;
    }
  }

  v8 = self->_collectionID;

  return v8;
}

@end