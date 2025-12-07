@interface ATXApp2VecMapping
- (ATXApp2VecMapping)initWithPath:(id)path;
- (BOOL)getVectorForBundleId:(id)id into:(float *)into;
- (BOOL)getVectorForBundleIdWithGenreBackup:(id)backup into:(float *)into;
- (void)dealloc;
@end

@implementation ATXApp2VecMapping

- (ATXApp2VecMapping)initWithPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    [(ATXApp2VecMapping *)a2 initWithPath:?];
  }

  v21.receiver = self;
  v21.super_class = ATXApp2VecMapping;
  v6 = [(ATXApp2VecMapping *)&v21 init];
  if (v6)
  {
    v20 = 0;
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:pathCopy options:1 error:&v20];
    v8 = v20;
    data = v6->_data;
    v6->_data = v7;

    v10 = v6->_data;
    if (!v10)
    {
      v12 = __atxlog_handle_default(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ATXApp2VecMapping initWithPath:];
      }

      goto LABEL_18;
    }

    v11 = [(NSData *)v10 length];
    if (v11 <= 0xF)
    {
      v12 = __atxlog_handle_default(v11);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_18:

        v18 = 0;
        goto LABEL_19;
      }

LABEL_7:
      [ATXApp2VecMapping initWithPath:];
      goto LABEL_18;
    }

    v6->_hdr = *[(NSData *)v6->_data bytes];
    bytes = [(NSData *)v6->_data bytes];
    v14 = bytes + 16 + 2 * v6->_hdr.length * v6->_hdr.nvectors;
    v6->_matrix = (bytes + 16);
    v6->_endOfMatrix = v14;
    bytes2 = [(NSData *)v6->_data bytes];
    v16 = [(NSData *)v6->_data length];
    if (v14 >= bytes2 + v16)
    {
      v12 = __atxlog_handle_default(v16);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    v17 = CFBurstTrieCreateFromMapBytes();
    v6->_idxForBundleId = v17;
    if (!v17)
    {
      v12 = __atxlog_handle_default(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ATXApp2VecMapping initWithPath:];
      }

      goto LABEL_18;
    }
  }

  v18 = v6;
LABEL_19:

  return v18;
}

- (void)dealloc
{
  if (self->_idxForBundleId)
  {
    CFBurstTrieRelease();
    self->_idxForBundleId = 0;
  }

  v3.receiver = self;
  v3.super_class = ATXApp2VecMapping;
  [(ATXApp2VecMapping *)&v3 dealloc];
}

- (BOOL)getVectorForBundleId:(id)id into:(float *)into
{
  idCopy = id;
  v8 = idCopy;
  if (into)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }

LABEL_12:
    v12 = __atxlog_handle_default(idCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ATXApp2VecMapping getVectorForBundleId:v12 into:?];
    }

    goto LABEL_14;
  }

  [ATXApp2VecMapping getVectorForBundleId:a2 into:self];
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_3:
  [v8 length];
  v9 = CFBurstTrieContains();
  if (!v9)
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  length = self->_hdr.length;
  v11 = &self->_matrix[-length];
  if (&v11[length] > self->_endOfMatrix)
  {
    v12 = __atxlog_handle_default(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXApp2VecMapping getVectorForBundleId:v12 into:?];
    }

LABEL_14:

    goto LABEL_15;
  }

  if (length)
  {
    base = self->_hdr.fixinfo.base;
    incr = self->_hdr.fixinfo.incr;
    do
    {
      v15 = *v11++;
      *into++ = base + (v15 * incr);
      --length;
    }

    while (length);
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (BOOL)getVectorForBundleIdWithGenreBackup:(id)backup into:(float *)into
{
  backupCopy = backup;
  if ([(ATXApp2VecMapping *)self getVectorForBundleId:backupCopy into:into])
  {
    v7 = 1;
  }

  else
  {
    v8 = +[_ATXAppInfoManager sharedInstance];
    v9 = [v8 genreIdForBundleId:backupCopy];
    v10 = v9;
    if (v9)
    {
      stringValue = [v9 stringValue];
      v7 = [(ATXApp2VecMapping *)self getVectorForBundleId:stringValue into:into];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)initWithPath:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXApp2VecMapping.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"path"}];
}

- (void)initWithPath:.cold.5()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_2263AA000, v1, OS_LOG_TYPE_ERROR, "Could not read app2vec mapping %@: %@", v2, 0x16u);
}

- (void)getVectorForBundleId:(uint64_t)a1 into:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXApp2VecMapping.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"buffer"}];
}

@end