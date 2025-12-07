@interface QLCacheIndexDatabaseQueryEnumerator
- (BOOL)nextThumbnailInfo;
- (CGRect)contentRect;
- (QLCacheIndexDatabaseQueryEnumerator)initWithSqliteDatabase:(id)database fileRequests:(id)requests;
- (void)_getCacheIds;
- (void)_getCacheIdsForHomogeneousArrayOfRequests:(id)requests;
- (void)dealloc;
- (void)nextThumbnailInfo;
@end

@implementation QLCacheIndexDatabaseQueryEnumerator

- (void)_getCacheIds
{
  v30 = *MEMORY[0x277D85DE8];
  allValues = [(NSDictionary *)self->_fileRequests allValues];
  allFileRequests = self->_allFileRequests;
  self->_allFileRequests = allValues;

  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_allFileRequests;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        fileIdentifier = [v11 fileIdentifier];
        v13 = [strongToStrongObjectsMapTable objectForKey:objc_opt_class()];

        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
          fileIdentifier2 = [v11 fileIdentifier];
          [strongToStrongObjectsMapTable setObject:v13 forKey:objc_opt_class()];
        }

        [v13 addObject:v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  objectEnumerator = [strongToStrongObjectsMapTable objectEnumerator];
  v16 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [(QLCacheIndexDatabaseQueryEnumerator *)self _getCacheIdsForHomogeneousArrayOfRequests:*(*(&v20 + 1) + 8 * j)];
      }

      v17 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

- (BOOL)nextThumbnailInfo
{
  selfCopy = self;
  v90 = *MEMORY[0x277D85DE8];
  p_stmt = &self->super._stmt;
  if (self->super._stmt)
  {
    array = 0;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{@"SELECT file_id, size, icon_mode, bitmapFormat, bitmapdata_location, bitmapdata_length, plistbuffer_location, plistbuffer_length, flavor, content_rect, hit_count, last_hit_date, badge_type, icon_variant, interpolation, externalGeneratorDataHash FROM thumbnails WHERE "}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v6 = selfCopy->_allFileRequests;
    v65 = [(NSArray *)v6 countByEnumeratingWithState:&v85 objects:v89 count:16];
    if (v65)
    {
      v61 = selfCopy;
      hasAtLeastOneLowQuality = 0;
      v7 = 0;
      v64 = *v86;
      v62 = v6;
      do
      {
        for (i = 0; i != v65; ++i)
        {
          if (*v86 != v64)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v85 + 1) + 8 * i);
          if ([v9 cacheId])
          {
            if (v7 >= 1)
            {
              [v5 appendString:@" OR "];
            }

            cacheId = [v9 cacheId];
            objc_msgSend(v5, "appendFormat:", @"(file_id=?");
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 3221225472;
            aBlock[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke;
            aBlock[3] = &__block_descriptor_40_e47_v28__0i8__sqlite3_stmt__12__QLSqliteDatabase_20l;
            aBlock[4] = cacheId;
            v11 = _Block_copy(aBlock);
            [array addObject:v11];

            if (hasAtLeastOneLowQuality)
            {
              hasAtLeastOneLowQuality = 1;
            }

            else
            {
              hasAtLeastOneLowQuality = [v9 hasAtLeastOneLowQuality];
            }

            if (([v9 allSizes] & 1) == 0 && (objc_msgSend(v9, "hasAtLeastOneLowQuality") & 1) == 0)
            {
              v63 = v7;
              objc_msgSend(v5, "appendFormat:", @" AND (");
              sizeAndIconModeCount = [v9 sizeAndIconModeCount];
              if (sizeAndIconModeCount >= 1)
              {
                v13 = sizeAndIconModeCount;
                for (j = 0; j != v13; ++j)
                {
                  if (j)
                  {
                    [v5 appendString:@" OR "];
                  }

                  [v9 minimumSizeAtIndex:j];
                  v16 = v15;
                  if (v15 > 0.0)
                  {
                    objc_msgSend(v5, "appendFormat:", @"(");
                  }

                  [v9 sizeAtIndex:j];
                  v18 = v17;
                  [v5 appendFormat:@"(size=? AND icon_mode=? AND badge_type=? AND icon_variant=? AND interpolation=? AND externalGeneratorDataHash=?)"];
                  v82[0] = MEMORY[0x277D85DD0];
                  v82[1] = 3221225472;
                  v82[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_2;
                  v82[3] = &__block_descriptor_36_e47_v28__0i8__sqlite3_stmt__12__QLSqliteDatabase_20l;
                  v83 = v18;
                  v19 = _Block_copy(v82);
                  [array addObject:v19];

                  v81[0] = MEMORY[0x277D85DD0];
                  v81[1] = 3221225472;
                  v81[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_3;
                  v81[3] = &unk_279ADD630;
                  v81[4] = v9;
                  v81[5] = j;
                  v20 = _Block_copy(v81);
                  [array addObject:v20];

                  v80[0] = MEMORY[0x277D85DD0];
                  v80[1] = 3221225472;
                  v80[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_4;
                  v80[3] = &unk_279ADD630;
                  v80[4] = v9;
                  v80[5] = j;
                  v21 = _Block_copy(v80);
                  [array addObject:v21];

                  v79[0] = MEMORY[0x277D85DD0];
                  v79[1] = 3221225472;
                  v79[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_5;
                  v79[3] = &unk_279ADD630;
                  v79[4] = v9;
                  v79[5] = j;
                  v22 = _Block_copy(v79);
                  [array addObject:v22];

                  v78[0] = MEMORY[0x277D85DD0];
                  v78[1] = 3221225472;
                  v78[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_6;
                  v78[3] = &unk_279ADD630;
                  v78[4] = v9;
                  v78[5] = j;
                  v23 = _Block_copy(v78);
                  [array addObject:v23];

                  v77[0] = MEMORY[0x277D85DD0];
                  v77[1] = 3221225472;
                  v77[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_7;
                  v77[3] = &unk_279ADD630;
                  v77[4] = v9;
                  v77[5] = j;
                  v24 = _Block_copy(v77);
                  [array addObject:v24];

                  v25 = fmaxf(v18 + v18, 1024.0);
                  [v5 appendFormat:@" AND (width<=? OR height<=?)"];
                  v75[0] = MEMORY[0x277D85DD0];
                  v75[1] = 3221225472;
                  v75[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_8;
                  v75[3] = &__block_descriptor_36_e47_v28__0i8__sqlite3_stmt__12__QLSqliteDatabase_20l;
                  v76 = v25;
                  v26 = _Block_copy(v75);
                  [array addObject:v26];

                  v73[0] = MEMORY[0x277D85DD0];
                  v73[1] = 3221225472;
                  v73[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_9;
                  v73[3] = &__block_descriptor_36_e47_v28__0i8__sqlite3_stmt__12__QLSqliteDatabase_20l;
                  v74 = v25;
                  v27 = _Block_copy(v73);
                  [array addObject:v27];

                  if (v16 > 0.0)
                  {
                    [v5 appendFormat:@" AND width>=? AND height>=?"]);
                    v71[0] = MEMORY[0x277D85DD0];
                    v71[1] = 3221225472;
                    v71[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_10;
                    v71[3] = &__block_descriptor_36_e47_v28__0i8__sqlite3_stmt__12__QLSqliteDatabase_20l;
                    v72 = v16;
                    v28 = _Block_copy(v71);
                    [array addObject:v28];

                    v69[0] = MEMORY[0x277D85DD0];
                    v69[1] = 3221225472;
                    v69[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_11;
                    v69[3] = &__block_descriptor_36_e47_v28__0i8__sqlite3_stmt__12__QLSqliteDatabase_20l;
                    v70 = v16;
                    v29 = _Block_copy(v69);
                    [array addObject:v29];
                  }
                }
              }

              [v5 appendString:@""]);
              v6 = v62;
              v7 = v63;
            }

            ++v7;
            [v5 appendString:@""]);
          }
        }

        v65 = [(NSArray *)v6 countByEnumeratingWithState:&v85 objects:v89 count:16];
      }

      while (v65);

      if (hasAtLeastOneLowQuality)
      {
        [v5 appendString:{@" ORDER BY file_id, icon_mode ASC, size ASC"}];
      }

      selfCopy = v61;
      if (v7 >= 1)
      {
        v61->super._stmt = -[QLSqliteDatabase prepareStatement:](v61->super._sqliteDatabase, "prepareStatement:", [v5 UTF8String]);
      }
    }

    else
    {
    }

    if (!*p_stmt)
    {
LABEL_49:
      v42 = 0;
      goto LABEL_56;
    }
  }

  fileIdentifier = selfCopy->_fileIdentifier;
  if (fileIdentifier)
  {
    selfCopy->_fileIdentifier = 0;
  }

  if ([array count])
  {
    v31 = 0;
    do
    {
      v32 = v31 + 1;
      v33 = [array objectAtIndexedSubscript:?];
      (v33)[2](v33, v32, selfCopy->super._stmt, selfCopy->super._sqliteDatabase);

      v34 = [array count];
      v31 = v32;
    }

    while (v32 < v34);
  }

  v68 = 0;
  do
  {
LABEL_41:
    if (![(QLSqliteDatabase *)selfCopy->super._sqliteDatabase stepStatement:selfCopy->super._stmt didReturnData:&v68]|| v68 != 1)
    {
      [(QLSqliteDatabase *)selfCopy->super._sqliteDatabase finalizeStatement:p_stmt];
      goto LABEL_49;
    }

    v35 = [(QLSqliteDatabase *)selfCopy->super._sqliteDatabase unsignedLongLongFromColumn:0 inStatement:selfCopy->super._stmt];
    v36 = [(NSDictionary *)selfCopy->_fileRequests count];
  }

  while (!v36);
  v37 = v36;
  v38 = 0;
  while (1)
  {
    v39 = selfCopy;
    v40 = [(NSArray *)selfCopy->_allFileRequests objectAtIndexedSubscript:v38];
    cacheId2 = [v40 cacheId];

    if (v35 == cacheId2)
    {
      break;
    }

    ++v38;
    selfCopy = v39;
    if (v37 == v38)
    {
      goto LABEL_41;
    }
  }

  v43 = [(NSArray *)v39->_allFileRequests objectAtIndexedSubscript:v38];
  fileIdentifier = [v43 fileIdentifier];
  v45 = v39->_fileIdentifier;
  v39->_fileIdentifier = fileIdentifier;

  v39->_cacheId = [(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:0 inStatement:v39->super._stmt];
  [(QLSqliteDatabase *)v39->super._sqliteDatabase floatFromColumn:1 inStatement:v39->super._stmt];
  v39->_size = v46;
  v39->_iconMode = [(QLSqliteDatabase *)v39->super._sqliteDatabase intFromColumn:2 inStatement:v39->super._stmt];
  v47 = [(QLSqliteDatabase *)v39->super._sqliteDatabase newDataFromColumn:3 inStatement:v39->super._stmt copyBytes:0];
  v67 = 0;
  v48 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v47 error:&v67];
  v49 = v67;
  bitmapFormat = v39->_bitmapFormat;
  v39->_bitmapFormat = v48;

  if (!v39->_bitmapFormat)
  {
    v51 = MEMORY[0x277CDAB78];
    v52 = *(MEMORY[0x277CDAB78] + 56);
    if (!v52)
    {
      QLTInitLogging();
      v52 = *(v51 + 56);
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [(QLCacheIndexDatabaseQueryEnumerator *)v47 nextThumbnailInfo];
    }
  }

  v53 = objc_alloc_init(QLCacheBlobInfo);
  bitmapDataBlobInfo = v39->_bitmapDataBlobInfo;
  v39->_bitmapDataBlobInfo = v53;

  [(QLCacheBlobInfo *)v39->_bitmapDataBlobInfo setLocation:[(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:4 inStatement:v39->super._stmt]];
  [(QLCacheBlobInfo *)v39->_bitmapDataBlobInfo setLength:[(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:5 inStatement:v39->super._stmt]];
  v55 = objc_alloc_init(QLCacheBlobInfo);
  plistBufferBlobInfo = v39->_plistBufferBlobInfo;
  v39->_plistBufferBlobInfo = v55;

  [(QLCacheBlobInfo *)v39->_plistBufferBlobInfo setLocation:[(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:6 inStatement:v39->super._stmt]];
  [(QLCacheBlobInfo *)v39->_plistBufferBlobInfo setLength:[(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:7 inStatement:v39->super._stmt]];
  v39->_hitCount = [(QLSqliteDatabase *)v39->super._sqliteDatabase intFromColumn:10 inStatement:v39->super._stmt];
  v57 = MEMORY[0x277CBEAA8];
  [(QLSqliteDatabase *)v39->super._sqliteDatabase doubleFromColumn:11 inStatement:v39->super._stmt];
  v58 = [v57 dateWithTimeIntervalSinceReferenceDate:?];
  lastHitDate = v39->_lastHitDate;
  v39->_lastHitDate = v58;

  v39->_badgeType = [(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:12 inStatement:v39->super._stmt];
  v39->_iconVariant = [(QLSqliteDatabase *)v39->super._sqliteDatabase intFromColumn:13 inStatement:v39->super._stmt];
  v39->_interpolationQuality = [(QLSqliteDatabase *)v39->super._sqliteDatabase intFromColumn:14 inStatement:v39->super._stmt];
  v39->_externalGeneratorDataHash = [(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:15 inStatement:v39->super._stmt];

  v42 = 1;
LABEL_56:

  return v42;
}

- (void)dealloc
{
  p_stmt = &self->super._stmt;
  if (self->super._stmt)
  {
    [(QLSqliteDatabase *)self->super._sqliteDatabase finalizeStatement:p_stmt];
  }

  v4.receiver = self;
  v4.super_class = QLCacheIndexDatabaseQueryEnumerator;
  [(QLCacheIndexDatabaseGenericEnumerator *)&v4 dealloc];
}

- (QLCacheIndexDatabaseQueryEnumerator)initWithSqliteDatabase:(id)database fileRequests:(id)requests
{
  requestsCopy = requests;
  v11.receiver = self;
  v11.super_class = QLCacheIndexDatabaseQueryEnumerator;
  v8 = [(QLCacheIndexDatabaseGenericEnumerator *)&v11 initWithSqliteDatabase:database];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fileRequests, requests);
    [(QLCacheIndexDatabaseQueryEnumerator *)v9 _getCacheIds];
  }

  return v9;
}

- (void)_getCacheIdsForHomogeneousArrayOfRequests:(id)requests
{
  v51 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = [requestsCopy countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v46;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(requestsCopy);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        if (v8)
        {
          [v8 appendString:@" OR "];
        }

        else
        {
          fileIdentifier = [*(*(&v45 + 1) + 8 * i) fileIdentifier];
          v7 = objc_opt_class();

          queryStringToFindCacheIds = [v7 queryStringToFindCacheIds];
          v8 = [queryStringToFindCacheIds mutableCopy];
        }

        fileIdentifier2 = [v11 fileIdentifier];
        whereClauseToFindCacheId = [objc_opt_class() whereClauseToFindCacheId];
        [v8 appendString:whereClauseToFindCacheId];
      }

      v6 = [requestsCopy countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v44 = 0;
  v16 = -[QLSqliteDatabase prepareStatement:](self->super._sqliteDatabase, "prepareStatement:", [v8 UTF8String]);
  v44 = v16;
  if (v16)
  {
    v17 = v16;
    v43 = 1;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v18 = requestsCopy;
    v19 = [v18 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v40;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v18);
          }

          fileIdentifier3 = [*(*(&v39 + 1) + 8 * j) fileIdentifier];
          [fileIdentifier3 bindInFindCacheIdStatement:v17 database:self->super._sqliteDatabase startingAtIndex:v43 gettingNextIndex:&v43];
        }

        v20 = [v18 countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v20);
    }

    v38 = 0;
    if ([(QLSqliteDatabase *)self->super._sqliteDatabase stepStatement:v17 didReturnData:&v38]&& (v38 & 1) != 0)
    {
      v24 = 0x27FEB4000uLL;
      do
      {
        v25 = [v7 cacheIdFromRowId:{-[QLSqliteDatabase unsignedLongLongFromColumn:inStatement:](self->super._sqliteDatabase, "unsignedLongLongFromColumn:inStatement:", 0, v17)}];
        v26 = objc_alloc([v7 versionedFileIdentifierClass]);
        v17 = v44;
        v27 = [v26 initWithSteppedStatement:v44 database:self->super._sqliteDatabase];
        fileIdentifier4 = [v27 fileIdentifier];
        if (fileIdentifier4)
        {
          v29 = [*(&self->super.super.isa + *(v24 + 3068)) objectForKeyedSubscript:fileIdentifier4];
          v30 = v29;
          if (v29)
          {
            v37 = v25;
            version = [v29 version];

            if (!version || ([v27 version], (v32 = objc_claimAutoreleasedReturnValue()) != 0) && (v36 = v32, objc_msgSend(v27, "version"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "version"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v33, "isEqual:", v34), v34, v24 = 0x27FEB4000, v33, v36, v35))
            {
              [v30 _setCacheId:v37];
            }
          }
        }

        else
        {
          v30 = 0;
        }
      }

      while ([(QLSqliteDatabase *)self->super._sqliteDatabase stepStatement:v17 didReturnData:&v38]&& (v38 & 1) != 0);
    }

    [(QLSqliteDatabase *)self->super._sqliteDatabase finalizeStatement:&v44];
  }
}

void __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a4;
  [v8 bindUnsignedLongLong:objc_msgSend(v6 atIndex:"iconModeAtIndex:" inStatement:{v7), a2, a3}];
}

void __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a4;
  [v8 bindUnsignedLongLong:objc_msgSend(v6 atIndex:"badgeTypeAtIndex:" inStatement:{v7), a2, a3}];
}

void __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a4;
  [v8 bindUnsignedLongLong:objc_msgSend(v6 atIndex:"iconVariantAtIndex:" inStatement:{v7), a2, a3}];
}

void __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a4;
  [v8 bindUnsignedLongLong:objc_msgSend(v6 atIndex:"interpolationQualityAtIndex:" inStatement:{v7), a2, a3}];
}

void __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a4;
  [v8 bindUnsignedLongLong:objc_msgSend(v6 atIndex:"externalGeneratorDataHashAtIndex:" inStatement:{v7), a2, a3}];
}

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)nextThumbnailInfo
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2615D3000, log, OS_LOG_TYPE_ERROR, "cannot create the bitmap format based on data %@ : %@", &v3, 0x16u);
}

@end