@interface PPMutableContactDiskCache
- (BOOL)_writeCache:(id)cache path:(id)path error:(id *)error;
- (BOOL)addNameRecords:(id)records error:(id *)error;
- (BOOL)deleteCacheIfTooOld;
- (BOOL)deleteNameRecordCache;
- (BOOL)updateNameRecordCacheWithHistoryRecords:(id)records error:(id *)error;
- (id)_createNewCacheObjectWithCreatedAt:(int64_t)at;
- (id)_recordSetBucketsForNameRecords:(id)records;
@end

@implementation PPMutableContactDiskCache

- (id)_recordSetBucketsForNameRecords:(id)records
{
  recordsCopy = records;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__PPMutableContactDiskCache__recordSetBucketsForNameRecords___block_invoke;
  v7[3] = &unk_278973300;
  v5 = v4;
  v8 = v5;
  [recordsCopy enumerateObjectsUsingBlock:v7];

  return v5;
}

void __61__PPMutableContactDiskCache__recordSetBucketsForNameRecords___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sourceIdentifier];
  v5 = [v4 substringToIndex:1];

  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = [PPContactDiskCacheHistoryRecordSet alloc];
    v8 = v5;
    if (v7)
    {
      v20.receiver = v7;
      v20.super_class = PPContactDiskCacheHistoryRecordSet;
      v9 = objc_msgSendSuper2(&v20, sel_init);
      v7 = v9;
      if (v9)
      {
        objc_storeStrong(&v9->_filename, v5);
        v10 = objc_opt_new();
        adds = v7->_adds;
        v7->_adds = v10;

        v12 = objc_opt_new();
        updates = v7->_updates;
        v7->_updates = v12;

        v14 = objc_opt_new();
        deletes = v7->_deletes;
        v7->_deletes = v14;
      }
    }

    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }

  v16 = [v3 changeType];
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v18 = [v17 updates];
      goto LABEL_16;
    }

    if (v16 == 3)
    {
      v17 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v18 = [v17 deletes];
      goto LABEL_16;
    }
  }

  else
  {
    if (!v16)
    {
      v17 = pp_default_log_handle();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
LABEL_18:

        goto LABEL_19;
      }

      v19 = [v3 sourceIdentifier];
      LODWORD(v20.receiver) = 138412290;
      *(&v20.receiver + 4) = v19;
      _os_log_fault_impl(&dword_23224A000, v17, OS_LOG_TYPE_FAULT, "PPContactNameRecordChangeTypeNone found when trying to update disk cache for identifier %@", &v20, 0xCu);
LABEL_17:

      goto LABEL_18;
    }

    if (v16 == 1)
    {
      v17 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v18 = [v17 adds];
LABEL_16:
      v19 = v18;
      [v18 addObject:v3];
      goto LABEL_17;
    }
  }

LABEL_19:
}

- (BOOL)deleteCacheIfTooOld
{
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-1209600.0];
  lastCreatedAt = self->super._lastCreatedAt;
  [v3 timeIntervalSinceReferenceDate];
  if (lastCreatedAt >= v5)
  {
    goto LABEL_6;
  }

  v6 = pp_contacts_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPContactDiskCache: deleting cache since it is too old.", v9, 2u);
  }

  if ([(PPMutableContactDiskCache *)self deleteNameRecordCache])
  {
    self->super._lastCreatedAt = 0;
    v7 = 1;
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)_createNewCacheObjectWithCreatedAt:(int64_t)at
{
  v4 = objc_opt_new();
  [v4 setCreatedAt:at];
  v5 = objc_opt_new();
  [v4 setRecords:v5];

  return v4;
}

- (BOOL)_writeCache:(id)cache path:(id)path error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  data = [cache data];
  v14 = 0;
  v9 = [data writeToFile:pathCopy options:1073741825 error:&v14];
  v10 = v14;

  if ((v9 & 1) == 0)
  {
    v11 = pp_contacts_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = pathCopy;
      v17 = 2112;
      v18 = v10;
      _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "failed to write name record cache at: %@ error: %@", buf, 0x16u);
    }

    if (error)
    {
      v12 = v10;
      *error = v10;
    }
  }

  return v9;
}

- (BOOL)deleteNameRecordCache
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = 0x277CCA000uLL;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:self->super._path];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [defaultManager2 enumeratorAtPath:self->super._path];

    if (v7)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        v29 = v8;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v31 + 1) + 8 * i);
            pathExtension = [v13 pathExtension];
            v15 = [pathExtension isEqualToString:@"pb"];

            if (v15)
            {
              v16 = objc_autoreleasePoolPush();
              selfCopy = self;
              v18 = [(NSString *)self->super._path stringByAppendingPathComponent:v13];
              objc_autoreleasePoolPop(v16);
              v19 = v3;
              defaultManager3 = [*(v3 + 2560) defaultManager];
              v30 = 0;
              v21 = [defaultManager3 removeItemAtPath:v18 error:&v30];
              v22 = v30;

              if ((v21 & 1) == 0)
              {
                v26 = pp_contacts_log_handle();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v36 = v18;
                  v37 = 2112;
                  v38 = v22;
                  _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "failed to delete name record cache file at: %@ error: %@", buf, 0x16u);
                }

                v8 = v29;
                goto LABEL_24;
              }

              v3 = v19;
              self = selfCopy;
              v8 = v29;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v23 = pp_contacts_log_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_DEFAULT, "contact name record cache deleted.", buf, 2u);
      }

      v24 = 1;
    }

    else
    {
      v25 = pp_contacts_log_handle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        path = self->super._path;
        *buf = 138412290;
        v36 = path;
        _os_log_error_impl(&dword_23224A000, v25, OS_LOG_TYPE_ERROR, "PPContactDiskCache: failed to create enumerator for %@", buf, 0xCu);
      }

      v8 = 0;
LABEL_24:
      v24 = 0;
    }
  }

  else
  {
    v8 = pp_contacts_log_handle();
    v24 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_INFO, "went to delete name record cache but file was missing", buf, 2u);
    }
  }

  return v24;
}

- (BOOL)addNameRecords:(id)records error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  [(PPMutableContactDiskCache *)self _recordSetBucketsForNameRecords:?];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v64 = 0u;
  v48 = [obj countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v48)
  {
    errorCopy = error;
    v47 = *v62;
    v45 = 1;
    selfCopy = self;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v62 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v61 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 stringByAppendingPathExtension:@"pb"];
        objc_autoreleasePoolPop(v8);
        if ([v9 length] != 4)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PPContactDiskCache.m" lineNumber:266 description:{@"Unexpected filename: %@", v9}];
        }

        v10 = objc_autoreleasePoolPush();
        v11 = [(NSString *)self->super._path stringByAppendingPathComponent:v9];
        objc_autoreleasePoolPop(v10);
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v13 = [defaultManager fileExistsAtPath:v11];

        if (v13)
        {
          v60 = 0;
          v14 = [(PPContactDiskCache *)self _cacheObjectFromFilePath:v11 error:&v60];
          v15 = v60;
          v16 = v15;
          if (!v14)
          {
            v39 = pp_contacts_log_handle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v66 = v11;
              v67 = 2112;
              v68 = v16;
              _os_log_error_impl(&dword_23224A000, v39, OS_LOG_TYPE_ERROR, "failed to load cache object at %@: %@", buf, 0x16u);
            }

            if (errorCopy)
            {
              v40 = v16;
              *errorCopy = v16;
            }

            v45 = 0;
            goto LABEL_37;
          }

          v53 = v15;
        }

        else
        {
          v17 = objc_opt_new();
          [v17 timeIntervalSinceReferenceDate];
          v14 = [(PPMutableContactDiskCache *)self _createNewCacheObjectWithCreatedAt:v18];

          v53 = 0;
        }

        lastCreatedAt = self->super._lastCreatedAt;
        createdAt = [v14 createdAt];
        v51 = v6;
        v52 = v9;
        v54 = v11;
        if (lastCreatedAt && createdAt >= self->super._lastCreatedAt)
        {
          createdAt = self->super._lastCreatedAt;
        }

        self->super._lastCreatedAt = createdAt;
        v21 = [obj objectForKeyedSubscript:v7];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v50 = v21;
        adds = [v21 adds];
        v23 = [adds countByEnumeratingWithState:&v56 objects:v73 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v57;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v57 != v25)
              {
                objc_enumerationMutation(adds);
              }

              v27 = *(*(&v56 + 1) + 8 * i);
              v28 = pp_contacts_log_handle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                sourceIdentifier = [v27 sourceIdentifier];
                firstName = [v27 firstName];
                lastName = [v27 lastName];
                *buf = 138740739;
                v66 = sourceIdentifier;
                v67 = 2117;
                v68 = firstName;
                v69 = 2117;
                v70 = lastName;
                v71 = 2112;
                v72 = v54;
                _os_log_debug_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEBUG, "addNameRecord: %{sensitive}@ %{sensitive}@ %{sensitive}@ path: %@", buf, 0x2Au);
              }

              records = [v14 records];
              pbRecord = [v27 pbRecord];
              [records addObject:pbRecord];
            }

            v24 = [adds countByEnumeratingWithState:&v56 objects:v73 count:16];
          }

          while (v24);
        }

        v55 = 0;
        self = selfCopy;
        v34 = [(PPMutableContactDiskCache *)selfCopy _writeCache:v14 path:v54 error:&v55];
        v35 = v55;
        v36 = v35;
        if (!v34)
        {
          if (errorCopy)
          {
            v37 = v35;
            *errorCopy = v36;
          }

          [(PPMutableContactDiskCache *)selfCopy deleteNameRecordCache];
          v45 = 0;
        }

        v6 = v51 + 1;
      }

      while (v51 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v61 objects:v74 count:16];
      if (v48)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v45 = 1;
  }

LABEL_37:

  return v45 & 1;
}

- (BOOL)updateNameRecordCacheWithHistoryRecords:(id)records error:(id *)error
{
  recordsCopy = records;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5745;
  v16 = __Block_byref_object_dispose__5746;
  v17 = 0;
  v8 = [(PPMutableContactDiskCache *)self _recordSetBucketsForNameRecords:recordsCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__PPMutableContactDiskCache_updateNameRecordCacheWithHistoryRecords_error___block_invoke;
  v11[3] = &unk_2789732D8;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = &v18;
  v11[7] = a2;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
  if (v19[3])
  {
    v9 = 1;
  }

  else
  {
    if (error)
    {
      *error = v13[5];
    }

    [(PPMutableContactDiskCache *)self deleteNameRecordCache];
    v9 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v9 & 1;
}

void __75__PPMutableContactDiskCache_updateNameRecordCacheWithHistoryRecords_error___block_invoke(void *a1, void *a2, void *a3)
{
  v118 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v81 = v5;
  v8 = [v5 stringByAppendingPathExtension:@"pb"];
  objc_autoreleasePoolPop(v7);
  if ([v8 length] != 4)
  {
    v79 = [MEMORY[0x277CCA890] currentHandler];
    [v79 handleFailureInMethod:a1[7] object:a1[4] file:@"PPContactDiskCache.m" lineNumber:203 description:{@"Unexpected filename: %@", v8}];
  }

  v9 = objc_autoreleasePoolPush();
  v80 = v8;
  v10 = [*(a1[4] + 16) stringByAppendingPathComponent:v8];
  objc_autoreleasePoolPop(v9);
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  v82 = a1;
  v83 = v6;
  v85 = v10;
  if (v12)
  {
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    v15 = a1[4];
    v16 = *(a1[5] + 8);
    obj = *(v16 + 40);
    v17 = [v15 _cacheObjectFromFilePath:v10 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    if (!v17)
    {
      goto LABEL_45;
    }

    v18 = objc_alloc(MEMORY[0x277CBEB58]);
    v19 = [v6 updates];
    v20 = [v19 count];
    v21 = [v6 deletes];
    v22 = [v18 initWithCapacity:{objc_msgSend(v21, "count") + v20}];

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v23 = [v6 updates];
    v24 = [v23 countByEnumeratingWithState:&v101 objects:v117 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v102;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v102 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v101 + 1) + 8 * i) sourceIdentifier];
          [v22 addObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v101 objects:v117 count:16];
      }

      while (v25);
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v29 = [v6 deletes];
    v30 = [v29 countByEnumeratingWithState:&v97 objects:v116 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v98;
      v84 = v29;
      do
      {
        v33 = 0;
        do
        {
          if (*v98 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v97 + 1) + 8 * v33);
          v35 = pp_contacts_log_handle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v37 = [v34 sourceIdentifier];
            v38 = [v34 firstName];
            v39 = [v34 lastName];
            *buf = 138740739;
            v109 = v37;
            v110 = 2117;
            v111 = v38;
            v112 = 2117;
            v113 = v39;
            v114 = 2112;
            v115 = v85;
            _os_log_debug_impl(&dword_23224A000, v35, OS_LOG_TYPE_DEBUG, "updateNameRecordCacheWithHistoryRecords: delete: %{sensitive}@ %{sensitive}@ %{sensitive}@ path: %@", buf, 0x2Au);

            v29 = v84;
          }

          v36 = [v34 sourceIdentifier];
          [v22 addObject:v36];

          ++v33;
        }

        while (v31 != v33);
        v31 = [v29 countByEnumeratingWithState:&v97 objects:v116 count:16];
      }

      while (v31);
    }

    v40 = [v17 records];
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __75__PPMutableContactDiskCache_updateNameRecordCacheWithHistoryRecords_error___block_invoke_72;
    v95[3] = &unk_2789732B0;
    v96 = v22;
    v41 = v22;
    v42 = [v40 _pas_filteredArrayWithTest:v95];
    v43 = [v42 mutableCopy];
    [v17 setRecords:v43];

    a1 = v82;
    v6 = v83;
  }

  else
  {
    v44 = a1[4];
    v45 = objc_opt_new();
    [v45 timeIntervalSinceReferenceDate];
    v17 = [v44 _createNewCacheObjectWithCreatedAt:v46];
  }

  v47 = *(a1[4] + 8);
  v48 = [v17 createdAt];
  v49 = a1[4];
  if (v47 && v48 >= *(v49 + 8))
  {
    v48 = *(v49 + 8);
  }

  *(v49 + 8) = v48;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v50 = [v6 adds];
  v51 = [v50 countByEnumeratingWithState:&v91 objects:v107 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v92;
    do
    {
      v54 = 0;
      do
      {
        if (*v92 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v91 + 1) + 8 * v54);
        v56 = pp_contacts_log_handle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          v59 = [v55 sourceIdentifier];
          v60 = [v55 firstName];
          v61 = [v55 lastName];
          *buf = 138740739;
          v109 = v59;
          v110 = 2117;
          v111 = v60;
          v112 = 2117;
          v113 = v61;
          v114 = 2112;
          v115 = v85;
          _os_log_debug_impl(&dword_23224A000, v56, OS_LOG_TYPE_DEBUG, "updateNameRecordCacheWithHistoryRecords: add: %{sensitive}@ %{sensitive}@ %{sensitive}@ path: %@", buf, 0x2Au);
        }

        v57 = [v17 records];
        v58 = [v55 pbRecord];
        [v57 addObject:v58];

        ++v54;
      }

      while (v52 != v54);
      v52 = [v50 countByEnumeratingWithState:&v91 objects:v107 count:16];
    }

    while (v52);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v62 = [v83 updates];
  v63 = [v62 countByEnumeratingWithState:&v87 objects:v106 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v88;
    do
    {
      v66 = 0;
      do
      {
        if (*v88 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v67 = *(*(&v87 + 1) + 8 * v66);
        v68 = pp_contacts_log_handle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          v71 = [v67 sourceIdentifier];
          v72 = [v67 firstName];
          v73 = [v67 lastName];
          *buf = 138740739;
          v109 = v71;
          v110 = 2117;
          v111 = v72;
          v112 = 2117;
          v113 = v73;
          v114 = 2112;
          v115 = v85;
          _os_log_debug_impl(&dword_23224A000, v68, OS_LOG_TYPE_DEBUG, "updateNameRecordCacheWithHistoryRecords: update: %{sensitive}@ %{sensitive}@ %{sensitive}@ path: %@", buf, 0x2Au);
        }

        v69 = [v17 records];
        v70 = [v67 pbRecord];
        [v69 addObject:v70];

        ++v66;
      }

      while (v64 != v66);
      v64 = [v62 countByEnumeratingWithState:&v87 objects:v106 count:16];
    }

    while (v64);
  }

  v74 = *(v82[5] + 8);
  v75 = *(v74 + 40);
  *(v74 + 40) = 0;

  v76 = v82[4];
  v77 = *(v82[5] + 8);
  v86 = *(v77 + 40);
  v10 = v85;
  v78 = [v76 _writeCache:v17 path:v85 error:&v86];
  objc_storeStrong((v77 + 40), v86);
  *(*(v82[6] + 8) + 24) = v78;

  v6 = v83;
LABEL_45:
}

uint64_t __75__PPMutableContactDiskCache_updateNameRecordCacheWithHistoryRecords_error___block_invoke_72(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sourceIdentifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

@end