@interface BRQueryStitch
- (BRQueryStitch)initWithURL:(id)l objid:(id)objid kind:(char)kind;
- (id)description;
- (void)_creationDone;
- (void)_deletionDone;
- (void)_enableUpdatesFromIPCAfterStitchingOnAllQueries;
- (void)_renameDone;
- (void)dealloc;
- (void)done;
- (void)setQueries:(id)queries;
@end

@implementation BRQueryStitch

- (BRQueryStitch)initWithURL:(id)l objid:(id)objid kind:(char)kind
{
  lCopy = l;
  objidCopy = objid;
  v14.receiver = self;
  v14.super_class = BRQueryStitch;
  v11 = [(BRQueryStitch *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_url, l);
    objc_storeStrong(&v12->_objid, objid);
    v12->_kind = kind;
  }

  return v12;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:64];
  [v3 appendFormat:@"<BRQueryStitch %p for ", self];
  kind = self->_kind;
  if (kind <= 2)
  {
    [v3 appendString:off_1E7A16AA8[kind]];
  }

  path = [(NSURL *)self->_url path];
  [v3 appendFormat:@"%@ possibly interesting %ld queries>", path, -[NSArray count](self->_contexts, "count")];

  return v3;
}

- (void)setQueries:(id)queries
{
  v20 = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
  if (self->_contexts)
  {
    [BRQueryStitch setQueries:];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(queriesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = queriesCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [BRQueryStitchingContext alloc];
        v13 = [(BRQueryStitchingContext *)v12 initWithQuery:v11, v15];
        [(NSArray *)v5 addObject:v13];
        [(BRQueryStitchingContext *)v13 performAsyncOnReceiver:&__block_literal_global_28];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  contexts = self->_contexts;
  self->_contexts = v5;
}

- (void)_enableUpdatesFromIPCAfterStitchingOnAllQueries
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_contexts;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) performAsyncOnReceiver:{&__block_literal_global_30_0, v7}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_creationDone
{
  v29 = *MEMORY[0x1E69E9840];
  memset(v21, 0, sizeof(v21));
  __brc_create_section(0, "[BRQueryStitch _creationDone]", 193, 0, v21);
  v3 = brc_bread_crumbs("[BRQueryStitch _creationDone]", 193);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v13 = v21[0];
    path = [(NSURL *)self->_url path];
    *buf = 134218498;
    v24 = v13;
    v25 = 2112;
    v26 = path;
    v27 = 2112;
    v28 = v3;
    _os_log_debug_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx stitching for creation of %@%@", buf, 0x20u);
  }

  v5 = [BRQueryItem askDaemonQueryItemForURL:self->_url andFakeFSEvent:1 error:0];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_contexts;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __30__BRQueryStitch__creationDone__block_invoke;
          v15[3] = &unk_1E7A168B0;
          v16 = v5;
          [v10 performAsyncOnReceiver:v15];
        }

        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v11 = brc_bread_crumbs("[BRQueryStitch _creationDone]", 197);
    v12 = brc_default_log(1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [BRQueryStitch _creationDone];
    }

    [(BRQueryStitch *)self _enableUpdatesFromIPCAfterStitchingOnAllQueries];
  }

  __brc_leave_section(v21);
}

void __30__BRQueryStitch__creationDone__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) copy];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v4, 0}];
  v6 = brc_bread_crumbs("[BRQueryStitch _creationDone]_block_invoke", 212);
  v7 = brc_default_log(1, 0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    *buf = 138412802;
    v10 = v3;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    _os_log_debug_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] sending update to %@: %@%@", buf, 0x20u);
  }

  [v3 receiveStitchingUpdates:v5];
  [v3 enableUpdatesFromIPCAfterStitching];
}

- (void)_renameDone
{
  v34 = *MEMORY[0x1E69E9840];
  memset(v24, 0, sizeof(v24));
  __brc_create_section(0, "[BRQueryStitch _renameDone]", 225, 0, v24);
  v3 = brc_bread_crumbs("[BRQueryStitch _renameDone]", 225);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    fromURL = self->_fromURL;
    url = self->_url;
    *buf = 134218754;
    v27 = v24[0];
    v28 = 2112;
    v29 = fromURL;
    v30 = 2112;
    v31 = url;
    v32 = 2112;
    v33 = v3;
    _os_log_debug_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx stitching for rename from %@ to %@%@", buf, 0x2Au);
  }

  v5 = [BRQueryItem askDaemonQueryItemForURL:self->_url andFakeFSEvent:1 error:0];
  if (v5)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_contexts;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __28__BRQueryStitch__renameDone__block_invoke;
          v17[3] = &unk_1E7A168D8;
          v18 = v5;
          selfCopy = self;
          [v10 performAsyncOnReceiver:v17];
        }

        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }
  }

  else if ([(NSURL *)self->_url br_isStrictlyInSyncedLocation])
  {
    v11 = brc_bread_crumbs("[BRQueryStitch _renameDone]", 237);
    v12 = brc_default_log(1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [BRQueryStitch _creationDone];
    }

    [(BRQueryStitch *)self _enableUpdatesFromIPCAfterStitchingOnAllQueries];
  }

  else
  {
    objc_storeStrong(&self->_url, self->_fromURL);
    v13 = brc_bread_crumbs("[BRQueryStitch _renameDone]", 233);
    v14 = brc_default_log(1, 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRQueryStitch _renameDone];
    }

    [(BRQueryStitch *)self _deletionDone];
  }

  __brc_leave_section(v24);
}

void __28__BRQueryStitch__renameDone__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [*(a1 + 32) copy];
  if (v8)
  {
    [v7 addObject:v8];
  }

  if ([*(*(a1 + 40) + 16) isFolderOrAliasID])
  {
    v22 = v8;
    v24 = v5;
    v9 = [*(*(a1 + 40) + 40) path];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [v15 url];
          v17 = [v16 path];
          v18 = [v17 hasPrefix:v9];

          if (v18)
          {
            v19 = [v15 copy];
            [v7 addObject:v19];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v12);
    }

    v6 = v23;
    v5 = v24;
    v8 = v22;
  }

  v20 = brc_bread_crumbs("[BRQueryStitch _renameDone]_block_invoke", 267);
  v21 = brc_default_log(1, 0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v30 = v5;
    v31 = 2112;
    v32 = v7;
    v33 = 2112;
    v34 = v20;
    _os_log_debug_impl(&dword_1AE2A9000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] sending updates to %@: %@%@", buf, 0x20u);
  }

  [v5 receiveStitchingUpdates:v7];
  [v5 enableUpdatesFromIPCAfterStitching];
}

- (void)_deletionDone
{
  v26 = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  __brc_create_section(0, "[BRQueryStitch _deletionDone]", 280, 0, v18);
  v3 = brc_bread_crumbs("[BRQueryStitch _deletionDone]", 280);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    url = self->_url;
    *buf = 134218498;
    v21 = v18[0];
    v22 = 2112;
    v23 = url;
    v24 = 2112;
    v25 = v3;
    _os_log_debug_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx stitching for deletion at %@%@", buf, 0x20u);
  }

  if ([(NSURL *)self->_url checkPromisedItemIsReachableAndReturnError:0]&& [(NSURL *)self->_url br_isStrictlyInSyncedLocation])
  {
    v5 = brc_bread_crumbs("[BRQueryStitch _deletionDone]", 283);
    v6 = brc_default_log(1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRQueryStitch _deletionDone];
    }

    [(BRQueryStitch *)self _enableUpdatesFromIPCAfterStitchingOnAllQueries];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_contexts;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __30__BRQueryStitch__deletionDone__block_invoke;
          v13[3] = &unk_1E7A168B0;
          v13[4] = self;
          [v11 performAsyncOnReceiver:v13];
          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }
  }

  __brc_leave_section(v18);
}

void __30__BRQueryStitch__deletionDone__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([*(*(a1 + 32) + 16) isFolderOrAliasID])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v24 = v9;
      v25 = v8;
      v14 = 0;
      v15 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v26 + 1) + 8 * i);

          v18 = [v17 url];
          v19 = [v18 checkPromisedItemIsReachableAndReturnError:0];

          if (v19)
          {
            v14 = v17;
          }

          else
          {
            v14 = [v17 copy];

            [v14 markDead];
            [v10 addObject:v14];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v13);

      v9 = v24;
      v8 = v25;
    }
  }

  v20 = [v9 objectForKey:{*(*(a1 + 32) + 16), v24, v25, v26}];
  v21 = [v20 copy];

  if (v21)
  {
    [v21 markDead];
    [v10 addObject:v21];
  }

  v22 = brc_bread_crumbs("[BRQueryStitch _deletionDone]_block_invoke", 311);
  v23 = brc_default_log(1, 0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v31 = v7;
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v22;
    _os_log_debug_impl(&dword_1AE2A9000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] sending update to %@: %@%@", buf, 0x20u);
  }

  [v7 receiveStitchingUpdates:v10];
  [v7 enableUpdatesFromIPCAfterStitching];
}

- (void)done
{
  kind = self->_kind;
  if (kind == 2)
  {
    [(BRQueryStitch *)self _deletionDone];
  }

  else if (kind == 1)
  {
    [(BRQueryStitch *)self _renameDone];
  }

  else if (self->_kind)
  {
    v4 = brc_bread_crumbs("[BRQueryStitch done]", 329);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [BRQueryStitch done];
    }

    [(BRQueryStitch *)self _enableUpdatesFromIPCAfterStitchingOnAllQueries];
  }

  else
  {
    [(BRQueryStitch *)self _creationDone];
  }

  contexts = self->_contexts;
  self->_contexts = 0;
}

- (void)dealloc
{
  if (self->_contexts)
  {
    [(BRQueryStitch *)self done];
  }

  v3.receiver = self;
  v3.super_class = BRQueryStitch;
  [(BRQueryStitch *)&v3 dealloc];
}

- (void)setQueries:.cold.1()
{
  brc_bread_crumbs("[BRQueryStitch setQueries:]", 165);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: _contexts == nil%@", v7, v8, v9, v10);
  }
}

@end