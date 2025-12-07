@interface CCSetChangeRegistry
+ (id)_keyForSet:(id)set;
- (BOOL)_clear:(id *)_clear;
- (BOOL)cleanupWithAllSets:(id)sets error:(id *)error;
- (BOOL)clearAllBookmarksAndCommit:(id *)commit;
- (BOOL)commitAllBookmarkUpdates:(id *)updates;
- (BOOL)enumerateAllBookmarks:(id *)bookmarks usingBlock:(id)block;
- (BOOL)updateBookmark:(id)bookmark forSet:(id)set error:(id *)error;
- (CCSetChangeRegistry)init;
- (CCSetChangeRegistry)initWithFilename:(id)filename directory:(id)directory protectionClass:(int)class error:(id *)error;
- (id)_archiveBookmark:(id)bookmark error:(id *)error;
- (id)_unarchiveBookmark:(id)bookmark error:(id *)error;
- (id)bookmarkForSet:(id)set;
- (id)description;
- (id)descriptionForBookmark:(id)bookmark;
- (void)clearAllBookmarks;
- (void)rollbackAllBookmarkUpdates;
@end

@implementation CCSetChangeRegistry

- (CCSetChangeRegistry)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSetChangeRegistry)initWithFilename:(id)filename directory:(id)directory protectionClass:(int)class error:(id *)error
{
  v7 = *&class;
  filenameCopy = filename;
  directoryCopy = directory;
  v17.receiver = self;
  v17.super_class = CCSetChangeRegistry;
  v12 = [(CCSetChangeRegistry *)&v17 init];
  if (v12 && (v13 = [objc_alloc(MEMORY[0x1E698E9B0]) initWithFilename:filenameCopy protectionClass:v7 directory:directoryCopy readOnly:0 create:1 initialDictionary:0 error:error], log = v12->_log, v12->_log = v13, log, !v12->_log))
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  return v15;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CCSetChangeRegistry;
  v3 = [(CCSetChangeRegistry *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" backed by: %@", self->_log];

  return v4;
}

+ (id)_keyForSet:(id)set
{
  setCopy = set;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uniqueHash = [setCopy uniqueHash];
    stringValue = [uniqueHash stringValue];
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CCSetChangeRegistry *)setCopy _keyForSet:v6];
    }

    stringValue = 0;
  }

  return stringValue;
}

- (id)bookmarkForSet:(id)set
{
  setCopy = set;
  v5 = [objc_opt_class() _keyForSet:setCopy];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_pendingUpdates objectForKey:v5];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
    }

    else if (self->_pendingClear || ([(BMFileBackedDictionary *)self->_log objectForKey:v5], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v8 = 0;
      v7 = 0;
    }

    else
    {
      v10 = v9;
      v14 = 0;
      v11 = [(CCSetChangeRegistry *)self _unarchiveBookmark:v9 error:&v14];
      v8 = v14;
      if (!v11)
      {
        v12 = __biome_log_for_category();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(CCSetChangeRegistry *)setCopy bookmarkForSet:v8, v12];
        }
      }

      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)updateBookmark:(id)bookmark forSet:(id)set error:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  setCopy = set;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A278];
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v10 = NSStringFromClass(v17);
    setCopy = [v16 stringWithFormat:@"Unexpected bookmark: %@ for set: %@", v10, setCopy];
    v49[0] = setCopy;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v19 = [v15 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v18];
    CCSetError(error, v19);

LABEL_8:
    goto LABEL_9;
  }

  v10 = [objc_opt_class() _keyForSet:setCopy];
  setCopy = [bookmarkCopy value];
  if (!v10)
  {
    v20 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A278];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to resolve key for set: %@ bookmark: %@", setCopy, setCopy];
    v47 = v18;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v22 = [v20 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v21];
    CCSetError(error, v22);

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_12;
    }

    v34 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A278];
    v35 = MEMORY[0x1E696AEC0];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    setCopy2 = [v35 stringWithFormat:@"Unexpected bookmark value: %@ for set: %@", v37, setCopy];
    v43 = setCopy2;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v40 = [v34 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v39];
    CCSetError(error, v40);

LABEL_9:
    v23 = 0;
    goto LABEL_10;
  }

  v12 = objc_opt_class();
  v13 = [setCopy set];
  v14 = [v12 _keyForSet:v13];

  if (([v10 isEqual:v14] & 1) == 0)
  {
    v41 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A278];
    v28 = MEMORY[0x1E696AEC0];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = [v28 stringWithFormat:@"Unexpected set: %@ (key: %@) for bookmark: %@ (key: %@)", v30, v10, setCopy, v14];
    v45 = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v33 = [v41 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v32];
    CCSetError(error, v33);

    goto LABEL_9;
  }

LABEL_12:
  pendingUpdates = self->_pendingUpdates;
  if (!pendingUpdates)
  {
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = self->_pendingUpdates;
    self->_pendingUpdates = v26;

    pendingUpdates = self->_pendingUpdates;
  }

  [(NSMutableDictionary *)pendingUpdates setObject:bookmarkCopy forKey:v10];
  v23 = 1;
LABEL_10:

  return v23;
}

- (void)clearAllBookmarks
{
  pendingUpdates = self->_pendingUpdates;
  self->_pendingUpdates = 0;

  self->_pendingClear = 1;
}

- (void)rollbackAllBookmarkUpdates
{
  pendingUpdates = self->_pendingUpdates;
  self->_pendingUpdates = 0;

  self->_pendingClear = 0;
}

- (BOOL)commitAllBookmarkUpdates:(id *)updates
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_pendingClear && ![(CCSetChangeRegistry *)self _clear:updates])
  {
    [(CCSetChangeRegistry *)self rollbackAllBookmarkUpdates];
    return 0;
  }

  else
  {
    p_pendingUpdates = &self->_pendingUpdates;
    if (self->_pendingUpdates)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableDictionary count](*p_pendingUpdates, "count")}];
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableDictionary count](*p_pendingUpdates, "count")}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = [(NSMutableDictionary *)*p_pendingUpdates allKeys];
      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v22 + 1) + 8 * i);
            v13 = [(NSMutableDictionary *)self->_pendingUpdates objectForKey:v12];
            v14 = [(CCSetChangeRegistry *)self _archiveBookmark:v13 error:updates];

            if (!v14)
            {
              v16 = 0;
              goto LABEL_17;
            }

            [v6 addObject:v12];
            [v7 addObject:v14];
          }

          v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      log = self->_log;
      v21 = 0;
      v16 = [(BMFileBackedDictionary *)log writeUpdatedObjects:v7 forKeys:v6 error:&v21];
      obj = v21;
      if ((v16 & 1) == 0)
      {
        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [(CCSetChangeRegistry *)&self->_pendingUpdates commitAllBookmarkUpdates:v17];
        }

        CCSetError(updates, obj);
      }

LABEL_17:
      [(CCSetChangeRegistry *)self rollbackAllBookmarkUpdates];
    }

    else
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [CCSetChangeRegistry commitAllBookmarkUpdates:v18];
      }

      [(CCSetChangeRegistry *)self rollbackAllBookmarkUpdates];
      return 1;
    }
  }

  return v16;
}

- (BOOL)_clear:(id *)_clear
{
  log = self->_log;
  v9 = 0;
  v5 = [(BMFileBackedDictionary *)log clear:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CCSetChangeRegistry *)v6 _clear:v7];
    }

    CCSetError(_clear, v6);
  }

  return v5;
}

- (BOOL)cleanupWithAllSets:(id)sets error:(id *)error
{
  v93 = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  allKeys = [(BMFileBackedDictionary *)self->_log allKeys];
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v91 = [allKeys count];
    *&v91[4] = 1024;
    *&v91[6] = [setsCopy count];
    *v92 = 2112;
    *&v92[2] = setsCopy;
    _os_log_impl(&dword_1B6DB2000, v8, OS_LOG_TYPE_DEFAULT, "Starting cleanup with %u registry entries and %u available sets: %@", buf, 0x18u);
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(setsCopy, "count")}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v10 = setsCopy;
  v11 = [v10 countByEnumeratingWithState:&v76 objects:v89 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v77;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v77 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v76 + 1) + 8 * i);
        v16 = [objc_opt_class() _keyForSet:v15];
        if (!v16)
        {
          v38 = MEMORY[0x1E696ABC0];
          v87 = *MEMORY[0x1E696A278];
          v39 = MEMORY[0x1E696AEC0];
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = [v39 stringWithFormat:@"Unexpected set: %@", v41];
          v88 = v42;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
          v44 = [v38 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v43];
          CCSetError(error, v44);

          v37 = 0;
          v36 = v10;
          goto LABEL_45;
        }

        v17 = v16;
        [v9 setObject:v15 forKey:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v76 objects:v89 count:16];
    }

    while (v12);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = allKeys;
  v69 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
  if (!v69)
  {
    goto LABEL_32;
  }

  v68 = *v73;
  v65 = allKeys;
  errorCopy = error;
  while (2)
  {
    for (j = 0; j != v69; ++j)
    {
      if (*v73 != v68)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v72 + 1) + 8 * j);
      v20 = [(BMFileBackedDictionary *)self->_log objectForKey:v19];
      v21 = [(CCSetChangeRegistry *)self _unarchiveBookmark:v20 error:error];

      if (!v21)
      {
        goto LABEL_44;
      }

      value = [v21 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      value2 = [v21 value];
      if (isKindOfClass)
      {
        v25 = [v9 objectForKey:v19];
        if (v25)
        {
          v26 = +[CCSetChangeBookmark currentBookmarkVersion];
          if ([value2 bookmarkVersion]== v26)
          {

LABEL_29:
            error = errorCopy;
            goto LABEL_30;
          }

          v53 = MEMORY[0x1E696ABC0];
          v82 = *MEMORY[0x1E696A278];
          v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Registry contains a bookmark with invalid software version (expected %d): %@", v26, value2];
          v83 = v54;
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          v56 = [v53 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v55];
          CCSetError(errorCopy, v56);
        }

        else
        {
          v30 = [CCDatabaseSetChangeEnumerator sharedItemCountFromBookmark:value2];
          v31 = [CCDatabaseSetChangeEnumerator localItemInstanceCountFromBookmark:value2];
          if (!(v30 | v31))
          {
            log = self->_log;
            v71 = 0;
            v33 = [(BMFileBackedDictionary *)log clearObjectForKey:v19 error:&v71];
            v34 = v71;
            if (v33)
            {
              v35 = __biome_log_for_category();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v91 = value2;
                _os_log_impl(&dword_1B6DB2000, v35, OS_LOG_TYPE_DEFAULT, "Registry bookmark cleaned up: %@", buf, 0xCu);
              }

              goto LABEL_29;
            }

            CCSetError(errorCopy, v34);

            goto LABEL_43;
          }

          v57 = v31;
          v70 = MEMORY[0x1E696ABC0];
          v84 = *MEMORY[0x1E696A278];
          v58 = MEMORY[0x1E696AEC0];
          v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
          v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v57];
          v60 = [v58 stringWithFormat:@"Registry bookmark reflects non-removed state: {shared items: %@, local instances: %@} for a set which is no longer available: %@", v59, v64, value2];
          v85 = v60;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v54 = [v70 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v61];

          v62 = __biome_log_for_category();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v91 = self;
            *&v91[8] = 2112;
            *v92 = v54;
            _os_log_impl(&dword_1B6DB2000, v62, OS_LOG_TYPE_DEFAULT, "Inconsistency detected in registry: %@ error: %@", buf, 0x16u);
          }

          CCSetError(errorCopy, v54);
        }

LABEL_43:
        goto LABEL_44;
      }

      objc_opt_class();
      v27 = objc_opt_isKindOfClass();

      if ((v27 & 1) == 0)
      {
        v45 = MEMORY[0x1E696ABC0];
        v80 = *MEMORY[0x1E696A278];
        v46 = MEMORY[0x1E696AEC0];
        value3 = [v21 value];
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        v50 = [v46 stringWithFormat:@"Unexpected bookmark value: %@ of bookmark: %@ key: %@", v49, v21, v19];
        v81 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v52 = [v45 errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v51];
        CCSetError(error, v52);

LABEL_44:
        v37 = 0;
        allKeys = v65;
        v36 = obj;
        goto LABEL_45;
      }

      value2 = __biome_log_for_category();
      if (os_log_type_enabled(value2, OS_LOG_TYPE_DEBUG))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138412546;
        *v91 = v29;
        *&v91[8] = 2112;
        *v92 = v19;
        _os_log_debug_impl(&dword_1B6DB2000, value2, OS_LOG_TYPE_DEBUG, "Skipping cleanup for serialized set bookmark (%@) key: %@", buf, 0x16u);
      }

LABEL_30:
    }

    allKeys = v65;
    v69 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
    if (v69)
    {
      continue;
    }

    break;
  }

LABEL_32:

  v36 = __biome_log_for_category();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6DB2000, v36, OS_LOG_TYPE_DEFAULT, "Cleanup completed successfully", buf, 2u);
  }

  v37 = 1;
LABEL_45:

  return v37;
}

- (BOOL)clearAllBookmarksAndCommit:(id *)commit
{
  [(CCSetChangeRegistry *)self rollbackAllBookmarkUpdates];
  [(CCSetChangeRegistry *)self clearAllBookmarks];

  return [(CCSetChangeRegistry *)self commitAllBookmarkUpdates:commit];
}

- (BOOL)enumerateAllBookmarks:(id *)bookmarks usingBlock:(id)block
{
  v36 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  allKeys = [(BMFileBackedDictionary *)self->_log allKeys];
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v34) = [allKeys count];
    _os_log_impl(&dword_1B6DB2000, v7, OS_LOG_TYPE_DEFAULT, "Enumerating %u registry entries", buf, 8u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = allKeys;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (!v9)
  {
    v23 = 1;
    v11 = v8;
    goto LABEL_21;
  }

  v10 = v9;
  bookmarksCopy = bookmarks;
  v11 = 0;
  v12 = *v30;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      v14 = v11;
      if (*v30 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v29 + 1) + 8 * i);
      v16 = objc_autoreleasePoolPush();
      v17 = [(BMFileBackedDictionary *)self->_log objectForKey:v15];
      v28 = v11;
      v18 = [(CCSetChangeRegistry *)self _unarchiveBookmark:v17 error:&v28];
      v11 = v28;

      if (!v18)
      {
        objc_autoreleasePoolPop(v16);

        v24 = __biome_log_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [CCSetChangeRegistry enumerateAllBookmarks:v11 usingBlock:v24];
        }

        CCSetError(bookmarksCopy, v11);
        v23 = 0;
        goto LABEL_21;
      }

      value = [v18 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        value2 = [v18 value];
        value3 = [value2 set];
        blockCopy[2](blockCopy, value3, v18);
      }

      else
      {
        value2 = __biome_log_for_category();
        if (!os_log_type_enabled(value2, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        value3 = [v18 value];
        *buf = 138412290;
        v34 = value3;
        _os_log_impl(&dword_1B6DB2000, value2, OS_LOG_TYPE_DEFAULT, "Skipping bookmark: %@", buf, 0xCu);
      }

LABEL_14:
      objc_autoreleasePoolPop(v16);
    }

    v10 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  v23 = 1;
LABEL_21:

  return v23;
}

- (id)descriptionForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [bookmarkCopy value];

    bookmarkCopy = value;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bookmarkCopy = [bookmarkCopy description];
LABEL_7:
    v8 = bookmarkCopy;
    goto LABEL_9;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = MEMORY[0x1E696AEC0];
  if (isKindOfClass)
  {
    bookmarkCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Serialized set bookmark: %@", bookmarkCopy];
    goto LABEL_7;
  }

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v8 = [v7 stringWithFormat:@"Unsupported bookmark: %@", v10];

LABEL_9:

  return v8;
}

- (id)_unarchiveBookmark:(id)bookmark error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  bm_allowedClassesForSecureCodingBMBookmark = [MEMORY[0x1E696AB10] bm_allowedClassesForSecureCodingBMBookmark];
  v12 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:bm_allowedClassesForSecureCodingBMBookmark fromData:bookmarkCopy error:&v12];
  v9 = v12;
  if (!v8)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v14 = bookmarkCopy;
      v15 = 2112;
      selfCopy = self;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_1B6DB2000, v10, OS_LOG_TYPE_ERROR, "Failed to unarchive bookmark (%@) from registry: %@ error: %@", buf, 0x20u);
    }

    CCSetError(error, v9);
  }

  return v8;
}

- (id)_archiveBookmark:(id)bookmark error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  v11 = 0;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:bookmarkCopy requiringSecureCoding:1 error:&v11];
  v8 = v11;
  if (!v7)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v13 = bookmarkCopy;
      v14 = 2112;
      selfCopy = self;
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&dword_1B6DB2000, v9, OS_LOG_TYPE_ERROR, "Failed to archive bookmark (%@) to registry: %@ error: %@", buf, 0x20u);
    }

    CCSetError(error, v8);
  }

  return v7;
}

+ (void)_keyForSet:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Unexpected set class: %@ expected: %@", &v7, 0x16u);
}

- (void)bookmarkForSet:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, a2, a3, "failed to unarchive bookmark for set: %@ error: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)commitAllBookmarkUpdates:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, a2, a3, "Failed to commit pending updates: %@ error: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)_clear:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Failed to commit clear registry: %@", &v2, 0xCu);
}

- (void)enumerateAllBookmarks:(uint64_t)a1 usingBlock:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Failed to complete bookmark enumeration: %@", &v2, 0xCu);
}

@end