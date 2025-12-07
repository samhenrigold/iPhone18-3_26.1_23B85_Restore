@interface PSReaderBlock
- (PSReaderBlock)initWithReader:(id)reader graph:(id)graph readerOptions:(PSResourceManagerOptions *)options resourceOptions:(ps_input_resource_options_s *)resourceOptions withPRMManager:(PSResourceManager *)manager forCABufferExpiry:(id *)expiry withFrameHistoryClientHandle:(void *)handle;
- (id)init3rdPartyReader:(id)reader graph:(id)graph readerOptions:(PSResourceManagerOptions *)options withPRMManager:(PSResourceManager *)manager;
- (void)dealloc;
@end

@implementation PSReaderBlock

- (PSReaderBlock)initWithReader:(id)reader graph:(id)graph readerOptions:(PSResourceManagerOptions *)options resourceOptions:(ps_input_resource_options_s *)resourceOptions withPRMManager:(PSResourceManager *)manager forCABufferExpiry:(id *)expiry withFrameHistoryClientHandle:(void *)handle
{
  readerCopy = reader;
  graphCopy = graph;
  v33.receiver = self;
  v33.super_class = PSReaderBlock;
  v18 = [(PSReaderBlock *)&v33 init];
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = [graphCopy criticalityCPU] != 0;
  name = [readerCopy name];
  v21 = ps_task_resources_create(1, 0, [name UTF8String], manager, v19);

  if (v21)
  {
    manager = [readerCopy input];
    type = [(PSResourceManager *)manager type];
    if ((type - 1) < 2)
    {
      ps_task_resources_add_input(v21, [(PSResourceManager *)manager type], 0xFFFFFFFF, options, 0, 0, resourceOptions, expiry, 1);
LABEL_7:
      objc_storeStrong(&v18->_reader, reader);
      getContext = [readerCopy getContext];
      *getContext = v21;
      getContext[1] = ps_reader_block_acquire;
      getContext[2] = ps_reader_block_relinquish;
      getContext[6] = handle;
      ps_frame_history_reader_buffer_init(handle, graphCopy, readerCopy);
      v24 = v18;

LABEL_8:
      return v18;
    }

    if (type && type != 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [PSReaderBlock initWithReader:v32 graph:readerCopy readerOptions:? resourceOptions:? withPRMManager:? forCABufferExpiry:? withFrameHistoryClientHandle:?];
  }

  v26 = [PSReaderBlock initWithReader:v32 graph:manager readerOptions:? resourceOptions:? withPRMManager:? forCABufferExpiry:? withFrameHistoryClientHandle:?];
  return [(PSReaderBlock *)v26 init3rdPartyReader:v27 graph:v28 readerOptions:v29 withPRMManager:v30, v31];
}

- (id)init3rdPartyReader:(id)reader graph:(id)graph readerOptions:(PSResourceManagerOptions *)options withPRMManager:(PSResourceManager *)manager
{
  readerCopy = reader;
  graphCopy = graph;
  v22.receiver = self;
  v22.super_class = PSReaderBlock;
  v13 = [(PSReaderBlock *)&v22 init];
  if (v13)
  {
    name = [readerCopy name];
    v15 = ps_task_resources_create(1, 0, [name UTF8String], manager, 0);

    if (!v15)
    {
      [PSReaderBlock init3rdPartyReader:v21 graph:readerCopy readerOptions:? withPRMManager:?];
    }

    input = [readerCopy input];
    type = [input type];
    if ((type - 1) >= 2)
    {
      if (!type || type == 3)
      {
        [PSReaderBlock init3rdPartyReader:v21 graph:input readerOptions:? withPRMManager:?];
      }
    }

    else
    {
      ps_task_3rdParty_resources_add_input(v15, [input type], options);
    }

    objc_storeStrong(&v13->_reader, reader);
    getContext = [readerCopy getContext];
    *getContext = v15;
    getContext[1] = ps_reader_block_acquire;
    getContext[2] = ps_reader_block_relinquish;
    v19 = v13;
  }

  return v13;
}

- (void)dealloc
{
  getContext = [(PSReader *)self->_reader getContext];
  ps_task_resources_destroy_inputs(*getContext, v4);
  ps_task_resources_destroy_outputs(*getContext, v5);
  ps_task_resources_destroy(*getContext, v6);
  ps_frame_history_graph_metadata_set_removal_timestamp(*(getContext + 32));
  ps_frame_history_buffer_service_deallocate_buffer(*(getContext + 48), *(getContext + 32));
  reader = self->_reader;
  self->_reader = 0;

  v8.receiver = self;
  v8.super_class = PSReaderBlock;
  [(PSReaderBlock *)&v8 dealloc];
}

- (uint64_t)initWithReader:(char *)a1 graph:(void *)a2 readerOptions:resourceOptions:withPRMManager:forCABufferExpiry:withFrameHistoryClientHandle:.cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = asprintf(a1, "PSReader input cannot have policy wait/synced type%lu", [a2 type]);
  v5 = __PLSLogSharedInstance(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 type];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d PSReader input cannot have policy wait/synced type%lu", v8, v9, v10, v11, v23, v24);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v13 = __PLSLogSharedInstance(v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSReaderBlock initWithReader:v20 graph:v21 readerOptions:? resourceOptions:? withPRMManager:? forCABufferExpiry:? withFrameHistoryClientHandle:?];
}

- (uint64_t)initWithReader:(char *)a1 graph:(void *)a2 readerOptions:resourceOptions:withPRMManager:forCABufferExpiry:withFrameHistoryClientHandle:.cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Creating reader resources failed for %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Creating reader resources failed for %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSReaderBlock init3rdPartyReader:v22 graph:v23 readerOptions:? withPRMManager:?];
}

- (void)init3rdPartyReader:(char *)a1 graph:(void *)a2 readerOptions:withPRMManager:.cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = asprintf(a1, "PSReader input cannot have policy wait/synced type%lu", [a2 type]);
  v5 = __PLSLogSharedInstance(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 type];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d PSReader input cannot have policy wait/synced type%lu", v8, v9, v10, v11, v22, v23);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v13 = __PLSLogSharedInstance(v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  [PSReaderBlock init3rdPartyReader:v20 graph:v21 readerOptions:? withPRMManager:?];
}

- (void)init3rdPartyReader:(char *)a1 graph:(void *)a2 readerOptions:withPRMManager:.cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Creating reader resources failed for %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Creating reader resources failed for %s", v10, v11, v12, v13, v22, v23);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  ps_segment_controller_set_segment_name_cold_1();
}

@end