@interface MSObjectQueue
- (MSObjectQueue)initWithPath:(id)path;
- (id)_objectWrapperFromQueueQuery:(sqlite3_stmt *)query outSize:(int64_t *)size;
- (id)allObjectWrappersMaxCount:(int64_t)count;
- (id)allObjectWrappersOrderedByDescendingErrorCountMaxCount:(int64_t)count;
- (id)objectWrappersWithZeroSizeMaxCount:(int64_t)count;
- (id)smallestObjectWrappersTargetTotalSize:(int64_t)size maxCount:(int64_t)count;
- (int64_t)count;
- (sqlite3_stmt)_statementLabel:(id)label query:(const char *)query;
- (void)appendObjectWrappers:(id)wrappers;
- (void)commitErrorCountsForObjectWrappers:(id)wrappers;
- (void)commitObjectsWrappers:(id)wrappers;
- (void)dealloc;
- (void)removeAllObjectWrappersFromQueue;
- (void)removeObjectWrappersFromQueue:(id)queue;
@end

@implementation MSObjectQueue

- (void)commitObjectsWrappers:(id)wrappers
{
  v39 = *MEMORY[0x277D85DE8];
  wrappersCopy = wrappers;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v38 = [wrappersCopy count];
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Updating objects for %ld items.", buf, 0xCu);
  }

  v5 = [(MSObjectQueue *)self _statementLabel:@"commitObjectWrappers" query:"update or ignore Queue set size = ?, object = ?, errorCount = ? where rowid = ?;"];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = wrappersCopy;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    v10 = MEMORY[0x277D86220];
    v29 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = sqlite3_reset(v5);
        if (v14)
        {
          v15 = v14;
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_32;
          }

LABEL_13:
          *buf = 67109120;
          LODWORD(v38) = v15;
          _os_log_error_impl(&dword_245B99000, v10, OS_LOG_TYPE_ERROR, "SQL operation failed with code %d", buf, 8u);
          goto LABEL_32;
        }

        v16 = sqlite3_bind_int64(v5, 1, [v12 size]);
        if (v16)
        {
          v15 = v16;
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_32;
          }

          goto LABEL_13;
        }

        v17 = MEMORY[0x277CCAAB0];
        object = [v12 object];
        v31 = 0;
        v19 = [v17 archivedDataWithRootObject:object requiringSecureCoding:1 error:&v31];
        v30 = v31;

        if (!v19)
        {
          v20 = MEMORY[0x277CCACA8];
          userInfo = [v30 userInfo];
          v22 = [v20 stringWithFormat:@"Failed to archive an MSObjectWrapper object. Error: %@ Info: %@", v30, userInfo];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v38 = v22;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

        v23 = [v19 length];
        if (v23 >> 31)
        {
          __assert_rtn("[MSObjectQueue commitObjectsWrappers:]", "MSObjectQueue.m", 429, "objectDataLength <= INT_MAX");
        }

        v24 = sqlite3_bind_blob(v5, 2, [v19 bytes], v23, 0);
        if (v24)
        {
          v25 = v24;
          v10 = MEMORY[0x277D86220];
          v6 = v29;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }
        }

        else
        {
          v26 = sqlite3_bind_int(v5, 3, [v12 errorCount]);
          v6 = v29;
          if (v26)
          {
            v25 = v26;
            v10 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_30;
            }
          }

          else
          {
            v27 = sqlite3_bind_int64(v5, 4, [v12 uniqueID]);
            v10 = MEMORY[0x277D86220];
            if (!v27)
            {
              v28 = sqlite3_step(v5);
              if (v28 == 101)
              {
                goto LABEL_31;
              }

              v25 = v28;
              if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_31;
              }

LABEL_30:
              *buf = 67109120;
              LODWORD(v38) = v25;
              _os_log_error_impl(&dword_245B99000, v10, OS_LOG_TYPE_ERROR, "SQL operation failed with code %d", buf, 8u);
              goto LABEL_31;
            }

            v25 = v27;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_30;
            }
          }
        }

LABEL_31:

LABEL_32:
        objc_autoreleasePoolPop(v13);
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  sqlite3_reset(v5);
}

- (void)commitErrorCountsForObjectWrappers:(id)wrappers
{
  v28 = *MEMORY[0x277D85DE8];
  wrappersCopy = wrappers;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v27 = [wrappersCopy count];
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Commiting error counts for %ld items.", buf, 0xCu);
  }

  v5 = [(MSObjectQueue *)self _statementLabel:@"commitErrorCountsForObjectWrappers" query:"update or ignore Queue set errorCount = ? where rowid = ?;"];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = wrappersCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = v7;
  v9 = *v22;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v21 + 1) + 8 * i);
      v12 = sqlite3_reset(v5);
      if (v12)
      {
        v16 = v12;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 67109120;
        LODWORD(v27) = v16;
        v17 = MEMORY[0x277D86220];
LABEL_23:
        _os_log_error_impl(&dword_245B99000, v17, OS_LOG_TYPE_ERROR, "SQL operation failed with code %d", buf, 8u);
        goto LABEL_24;
      }

      v13 = sqlite3_bind_int(v5, 1, [v11 errorCount]);
      if (v13)
      {
        v18 = v13;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 67109120;
        LODWORD(v27) = v18;
        v17 = MEMORY[0x277D86220];
        goto LABEL_23;
      }

      v14 = sqlite3_bind_int64(v5, 2, [v11 uniqueID]);
      if (v14)
      {
        v19 = v14;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 67109120;
        LODWORD(v27) = v19;
        v17 = MEMORY[0x277D86220];
        goto LABEL_23;
      }

      v15 = sqlite3_step(v5);
      if (v15 != 101)
      {
        v20 = v15;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 67109120;
        LODWORD(v27) = v20;
        v17 = MEMORY[0x277D86220];
        goto LABEL_23;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_24:

  sqlite3_reset(v5);
}

- (void)removeAllObjectWrappersFromQueue
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v6[0]) = 0;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Removing all entries from the queue.", v6, 2u);
  }

  v3 = [(MSObjectQueue *)self _statementLabel:@"removeAllObjectWrappersFromQueue" query:"delete from Queue;"];
  v4 = sqlite3_step(v3);
  if (v4 != 101)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SQL operation failed with code %d", v6, 8u);
    }
  }

  sqlite3_reset(v3);
}

- (void)removeObjectWrappersFromQueue:(id)queue
{
  v26 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v25 = [queueCopy count];
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Removing %ld entries from the queue.", buf, 0xCu);
  }

  v5 = [(MSObjectQueue *)self _statementLabel:@"removeObjectWrappersFromQueue" query:"delete from Queue where rowid = ?;"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = queueCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v20;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v19 + 1) + 8 * i);
      v12 = sqlite3_reset(v5);
      if (v12)
      {
        v15 = v12;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 67109120;
        LODWORD(v25) = v15;
        v16 = MEMORY[0x277D86220];
LABEL_21:
        _os_log_error_impl(&dword_245B99000, v16, OS_LOG_TYPE_ERROR, "SQL operation failed with code %d", buf, 8u);
        goto LABEL_19;
      }

      v13 = sqlite3_bind_int64(v5, 1, [v11 uniqueID]);
      if (v13)
      {
        v17 = v13;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 67109120;
        LODWORD(v25) = v17;
        v16 = MEMORY[0x277D86220];
        goto LABEL_21;
      }

      v14 = sqlite3_step(v5);
      if (v14 != 101)
      {
        v18 = v14;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 67109120;
        LODWORD(v25) = v18;
        v16 = MEMORY[0x277D86220];
        goto LABEL_21;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_19:

  sqlite3_reset(v5);
}

- (id)allObjectWrappersOrderedByDescendingErrorCountMaxCount:(int64_t)count
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    countCopy = count;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Retrieving up to %lld items from queue ordered by errorCount.", &v18, 0xCu);
  }

  v5 = [(MSObjectQueue *)self _statementLabel:@"allObjectsWrapperOrderedByDescendingErrorCountMaxCount" query:"select rowid, size, errorCount, object from Queue order by errorCount desc limit ?;"];
  v6 = sqlite3_reset(v5);
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      LODWORD(countCopy) = v7;
      v8 = MEMORY[0x277D86220];
LABEL_24:
      _os_log_error_impl(&dword_245B99000, v8, OS_LOG_TYPE_ERROR, "SQL operation failed with code %d", &v18, 8u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = sqlite3_bind_int64(v5, 1, count);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      LODWORD(countCopy) = v10;
      v8 = MEMORY[0x277D86220];
      goto LABEL_24;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  array = [MEMORY[0x277CBEB18] array];
  while (1)
  {
    v14 = sqlite3_step(v5);
    if (v14 != 100)
    {
      break;
    }

    v15 = [(MSObjectQueue *)self _objectWrapperFromQueueQuery:v5 outSize:0];
    [array addObject:v15];
  }

  v16 = v14;
  if (v14 == 101)
  {
    sqlite3_reset(v5);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = [array count];
      v18 = 134217984;
      countCopy = v17;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Fetched %ld objects from the queue.", &v18, 0xCu);
    }

    v11 = array;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      LODWORD(countCopy) = v16;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "sqlite error while fetching objects from the queue. Status: %d", &v18, 8u);
    }

    sqlite3_reset(v5);
    v11 = 0;
  }

LABEL_9:

  return v11;
}

- (id)smallestObjectWrappersTargetTotalSize:(int64_t)size maxCount:(int64_t)count
{
  v26 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v23 = 134218240;
    *&v23[4] = count;
    v24 = 2048;
    sizeCopy = size;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Retrieving up to %lld items from queue, target size: %lld bytes.", v23, 0x16u);
  }

  v7 = [(MSObjectQueue *)self _statementLabel:@"smallestObjectReferencesTargetTotalSize" query:"select rowid, size, errorCount, object from Queue where size != 0 order by size asc limit ?;"];
  v8 = sqlite3_reset(v7);
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v23 = 67109120;
      *&v23[4] = v9;
      v10 = MEMORY[0x277D86220];
LABEL_30:
      _os_log_error_impl(&dword_245B99000, v10, OS_LOG_TYPE_ERROR, "SQL operation failed with code %d", v23, 8u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v11 = sqlite3_bind_int64(v7, 1, count);
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v23 = 67109120;
      *&v23[4] = v12;
      v10 = MEMORY[0x277D86220];
      goto LABEL_30;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  array = [MEMORY[0x277CBEB18] array];
  if ([array count] >= count || size < 1)
  {
    goto LABEL_22;
  }

  v17 = 0;
  while (1)
  {
    v18 = sqlite3_step(v7);
    if (v18 != 100)
    {
      break;
    }

    *v23 = 0;
    v19 = [(MSObjectQueue *)self _objectWrapperFromQueueQuery:v7 outSize:v23];
    [array addObject:v19];

    v20 = *v23;
    if ([array count] < count)
    {
      v17 += v20;
      if (v17 < size)
      {
        continue;
      }
    }

    goto LABEL_22;
  }

  v21 = v18;
  if (v18 == 101)
  {
LABEL_22:
    sqlite3_reset(v7);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v22 = [array count];
      *v23 = 134217984;
      *&v23[4] = v22;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Fetched %ld objects from the queue.", v23, 0xCu);
    }

    v13 = array;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v23 = 67109120;
      *&v23[4] = v21;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "sqlite error while fetching objects from the queue. Status: %d", v23, 8u);
    }

    sqlite3_reset(v7);
    v13 = 0;
  }

LABEL_9:

  return v13;
}

- (id)objectWrappersWithZeroSizeMaxCount:(int64_t)count
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    countCopy = count;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Retrieving up to %lld items from queue with zero size.", &v18, 0xCu);
  }

  v5 = [(MSObjectQueue *)self _statementLabel:@"objectWrappersWithZeroSizeMaxCount" query:"select rowid, size, errorCount, object from Queue where size = 0 limit ?;"];
  v6 = sqlite3_reset(v5);
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      LODWORD(countCopy) = v7;
      v8 = MEMORY[0x277D86220];
LABEL_24:
      _os_log_error_impl(&dword_245B99000, v8, OS_LOG_TYPE_ERROR, "SQL operation failed with code %d", &v18, 8u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = sqlite3_bind_int64(v5, 1, count);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      LODWORD(countCopy) = v10;
      v8 = MEMORY[0x277D86220];
      goto LABEL_24;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  array = [MEMORY[0x277CBEB18] array];
  while (1)
  {
    v14 = sqlite3_step(v5);
    if (v14 != 100)
    {
      break;
    }

    v15 = [(MSObjectQueue *)self _objectWrapperFromQueueQuery:v5 outSize:0];
    [array addObject:v15];
  }

  v16 = v14;
  if (v14 == 101)
  {
    sqlite3_reset(v5);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = [array count];
      v18 = 134217984;
      countCopy = v17;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Fetched %ld objects from the queue.", &v18, 0xCu);
    }

    v11 = array;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      LODWORD(countCopy) = v16;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "sqlite error while fetching objects from the queue. Status: %d", &v18, 8u);
    }

    sqlite3_reset(v5);
    v11 = 0;
  }

LABEL_9:

  return v11;
}

- (id)allObjectWrappersMaxCount:(int64_t)count
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    countCopy = count;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Retrieving up to %lld items from queue.", &v18, 0xCu);
  }

  v5 = [(MSObjectQueue *)self _statementLabel:@"allObjectWrappersMaxCount" query:"select rowid, size, errorCount, object from Queue limit ?;"];
  v6 = sqlite3_reset(v5);
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      LODWORD(countCopy) = v7;
      v8 = MEMORY[0x277D86220];
LABEL_24:
      _os_log_error_impl(&dword_245B99000, v8, OS_LOG_TYPE_ERROR, "SQL operation failed with code %d", &v18, 8u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = sqlite3_bind_int64(v5, 1, count);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      LODWORD(countCopy) = v10;
      v8 = MEMORY[0x277D86220];
      goto LABEL_24;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  array = [MEMORY[0x277CBEB18] array];
  while (1)
  {
    v14 = sqlite3_step(v5);
    if (v14 != 100)
    {
      break;
    }

    v15 = [(MSObjectQueue *)self _objectWrapperFromQueueQuery:v5 outSize:0];
    [array addObject:v15];
  }

  v16 = v14;
  if (v14 == 101)
  {
    sqlite3_reset(v5);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = [array count];
      v18 = 134217984;
      countCopy = v17;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Fetched %ld objects from the queue.", &v18, 0xCu);
    }

    v11 = array;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      LODWORD(countCopy) = v16;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "sqlite error while fetching objects from the queue. Status: %d", &v18, 8u);
    }

    sqlite3_reset(v5);
    v11 = 0;
  }

LABEL_9:

  return v11;
}

- (id)_objectWrapperFromQueueQuery:(sqlite3_stmt *)query outSize:(int64_t *)size
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = sqlite3_column_int64(query, 0);
  v7 = sqlite3_column_int64(query, 1);
  v8 = sqlite3_column_int(query, 2);
  v9 = sqlite3_column_blob(query, 3);
  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v9 length:sqlite3_column_bytes(query freeWhenDone:{3), 0}];
  v15 = 0;
  v11 = [MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithData:v10 outError:&v15];
  v12 = v15;
  if (!v12 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    if (!size)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *buf = 138543362;
  v17 = v12;
  _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to unarchive object. Error: %{public}@", buf, 0xCu);
  if (size)
  {
LABEL_4:
    *size = v7;
  }

LABEL_5:
  v13 = [MSObjectWrapper wrapperWithObject:v11 size:v7];
  [v13 setUniqueID:v6];
  [v13 setErrorCount:v8];

  return v13;
}

- (void)appendObjectWrappers:(id)wrappers
{
  v41 = *MEMORY[0x277D85DE8];
  wrappersCopy = wrappers;
  selfCopy = self;
  v5 = [(MSObjectQueue *)self _statementLabel:@"appendObjectWrappers" query:"insert into Queue (size, object) values (?, ?);"];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = wrappersCopy;
  v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    v9 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = *(v9 + 2736);
        object = [v11 object];
        v33 = 0;
        v15 = [v13 archivedDataWithRootObject:object requiringSecureCoding:1 error:&v33];
        v16 = v33;

        if (!v15)
        {
          v32 = v12;
          v17 = v5;
          v18 = v7;
          v19 = v8;
          v20 = v9;
          v21 = MEMORY[0x277CCACA8];
          userInfo = [v16 userInfo];
          v23 = [v21 stringWithFormat:@"Failed to archive an MSObjectWrapper object. Error: %@ Info: %@", v16, userInfo];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v39 = v23;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          v9 = v20;
          v8 = v19;
          v7 = v18;
          v5 = v17;
          v12 = v32;
        }

        v24 = sqlite3_reset(v5);
        if (v24)
        {
          v25 = v24;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

LABEL_23:
          *buf = 67109120;
          LODWORD(v39) = v25;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SQL operation failed with code %d", buf, 8u);
          goto LABEL_24;
        }

        v26 = sqlite3_bind_int64(v5, 1, [v11 size]);
        if (v26)
        {
          v25 = v26;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v27 = [v15 length];
        if (v27 >> 31)
        {
          __assert_rtn("[MSObjectQueue appendObjectWrappers:]", "MSObjectQueue.m", 175, "objectDataLength <= INT_MAX");
        }

        v28 = sqlite3_bind_blob(v5, 2, [v15 bytes], v27, 0);
        if (v28)
        {
          v25 = v28;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v29 = sqlite3_step(v5);
        if (v29 == 101)
        {
          [v11 setUniqueID:sqlite3_last_insert_rowid(selfCopy->_db)];
          goto LABEL_24;
        }

        v25 = v29;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

LABEL_24:

        objc_autoreleasePoolPop(v12);
      }

      v7 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v7);
  }

  sqlite3_reset(v5);
}

- (int64_t)count
{
  v2 = [(MSObjectQueue *)self _statementLabel:@"count" query:"select count(*) from Queue;"];
  if (sqlite3_step(v2) == 100)
  {
    v3 = sqlite3_column_int64(v2, 0);
    if (!v2)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v2)
  {
LABEL_5:
    sqlite3_reset(v2);
  }

  return v3;
}

- (sqlite3_stmt)_statementLabel:(id)label query:(const char *)query
{
  v12 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  if (CFDictionaryContainsKey(self->_statements, labelCopy))
  {
    Value = CFDictionaryGetValue(self->_statements, labelCopy);
  }

  else
  {
    ppStmt = 0;
    if (sqlite3_prepare_v2(self->_db, query, -1, &ppStmt, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        queryCopy = query;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not compile SQL query: %{public}s", buf, 0xCu);
      }

      __assert_rtn("[MSObjectQueue _statementLabel:query:]", "MSObjectQueue.m", 141, "0");
    }

    CFDictionarySetValue(self->_statements, labelCopy, ppStmt);
    Value = ppStmt;
  }

  return Value;
}

- (void)dealloc
{
  statements = self->_statements;
  if (statements)
  {
    Count = CFDictionaryGetCount(statements);
    if (Count)
    {
      v5 = Count;
      v6 = 8 * Count;
      v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      v8 = malloc_type_malloc(v6, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(self->_statements, v7, v8);
      if (v5 >= 1)
      {
        v9 = v8;
        do
        {
          v10 = *v9++;
          sqlite3_finalize(v10);
          --v5;
        }

        while (v5);
      }

      free(v7);
      free(v8);
    }

    CFRelease(self->_statements);
  }

  sqlite3_close(self->_db);
  v11.receiver = self;
  v11.super_class = MSObjectQueue;
  [(MSObjectQueue *)&v11 dealloc];
}

- (MSObjectQueue)initWithPath:(id)path
{
  v29 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = MSObjectQueue;
  ppStmt = 0;
  v5 = [(MSObjectQueue *)&v23 init];
  if (!v5)
  {
    goto LABEL_19;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

  if (!sqlite3_open([pathCopy fileSystemRepresentation], &v5->_db))
  {
    v22 = 0;
    if (sqlite3_exec(v5->_db, "pragma journal_mode = wal;", 0, 0, &v22) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = v5;
      v27 = 2082;
      v28 = v22;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not set journal mode. Ignoring. Error: %{public}s", buf, 0x16u);
    }

    if (sqlite3_exec(v5->_db, "create table if not exists Properties(\n   key             text primary key,\n   value           text\n);\ncreate table if not exists Queue (\n   size            integer,\n   object          blob,\n   errorCount      integer\n);\ncreate index if not exists QueueBySize on Queue (size asc);\n", 0, 0, &v22))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        sqlite3_free(v22);
LABEL_13:
        v10 = 1;
LABEL_14:
        if (ppStmt)
        {
          sqlite3_finalize(ppStmt);
        }

        if (v10)
        {
          goto LABEL_17;
        }

        v5->_statements = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], &initWithPath__doNothingCallbacks);
LABEL_19:
        v11 = v5;
        goto LABEL_20;
      }

      *buf = 136446210;
      v26 = v22;
      v15 = MEMORY[0x277D86220];
      v16 = "Could not create tables. Error: %{public}s";
LABEL_35:
      _os_log_error_impl(&dword_245B99000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
      goto LABEL_10;
    }

    v8 = sqlite3_prepare_v2(v5->_db, "select value from Properties where key = 'version';", -1, &ppStmt, 0);
    if (v8)
    {
      v9 = v8;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 67109120;
      LODWORD(v26) = v9;
      v19 = MEMORY[0x277D86220];
      v20 = "SQL operation failed with code %d";
      goto LABEL_38;
    }

    v13 = sqlite3_step(ppStmt);
    if (v13 == 100)
    {
      v17 = sqlite3_column_text(ppStmt, 0);
      v18 = v17;
      if (*v17 != 48 || v17[1])
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        *buf = 136446210;
        v26 = v18;
        v19 = MEMORY[0x277D86220];
        v20 = "Wrong database version. Expected 0. Actual: %{public}s";
        v21 = 12;
LABEL_39:
        _os_log_error_impl(&dword_245B99000, v19, OS_LOG_TYPE_ERROR, v20, buf, v21);
        goto LABEL_13;
      }
    }

    else
    {
      v14 = v13;
      if (v13 != 101)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        *buf = 67109120;
        LODWORD(v26) = v14;
        v19 = MEMORY[0x277D86220];
        v20 = "Could not retrieve database version. SQLITE error: %d";
LABEL_38:
        v21 = 8;
        goto LABEL_39;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Setting version number in queue database", buf, 2u);
      }

      if (sqlite3_exec(v5->_db, "insert or replace into Properties (key, value) values ('version', '0');", 0, 0, &v22))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

        *buf = 136446210;
        v26 = v22;
        v15 = MEMORY[0x277D86220];
        v16 = "Could not update version number. Error: %{public}s";
        goto LABEL_35;
      }
    }

    v10 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = pathCopy;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not create sqlite3 object queue at path %@", buf, 0xCu);
  }

LABEL_17:
  v11 = 0;
LABEL_20:

  return v11;
}

@end