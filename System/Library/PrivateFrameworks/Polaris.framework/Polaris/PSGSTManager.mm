@interface PSGSTManager
- (PSGSTManager)initWithGSM:(ps_gsm_s *)m shouldUseOrchestratorV2:(BOOL)v2;
- (id)handleMessage:(id)message;
- (id)removeGST:(id)t;
- (id)reserveGST:(id)t;
- (ps_gsm_shared_trigger_s)initSharedTrigger:(id)trigger threadPoolID:(unint64_t)d pid:(int)pid;
- (unint64_t)changeCadenceAtOrAfterFrameId:(id)id frameID:(unint64_t)d stride:(unint64_t)stride offset:(unint64_t)offset;
- (unint64_t)changeCadenceOnNextValidFrameId:(id)id stride:(unint64_t)stride offset:(unint64_t)offset;
- (void)removeGraphs:(id)graphs;
- (void)removeThreadPool:(id)pool;
- (void)removeWaiter:(id)waiter;
- (void)reserveCadenceGST:(id)t pid:(int)pid graphID:(id)d gstPtr:(ps_gsm_gst_s *)ptr sharedTriggerPtr:(ps_gsm_shared_trigger_s *)triggerPtr;
- (void)reserveLegacyGST:(id)t pid:(int)pid graphID:(id)d gstPtr:(ps_gsm_gst_s *)ptr sharedTriggerPtr:(ps_gsm_shared_trigger_s *)triggerPtr;
- (void)sourceClearGST:(id)t;
@end

@implementation PSGSTManager

- (ps_gsm_shared_trigger_s)initSharedTrigger:(id)trigger threadPoolID:(unint64_t)d pid:(int)pid
{
  triggerCopy = trigger;
  threadPoolToSharedTriggerMap = [(PSGSTManager *)self threadPoolToSharedTriggerMap];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  stringValue = [v10 stringValue];
  v12 = [threadPoolToSharedTriggerMap objectForKey:stringValue];

  v13 = [(PSGSTManager *)self gsm];
  if (v12)
  {
    shared_trigger = ps_gsm_get_shared_trigger(v13, [v12 unsignedLongLongValue]);
    if (!shared_trigger)
    {
      [PSGSTManager initSharedTrigger:threadPoolID:pid:];
    }
  }

  else
  {
    shared_trigger = ps_gsm_create_shared_trigger(v13, [triggerCopy UTF8String], pid);
    threadPoolToSharedTriggerMap2 = [(PSGSTManager *)self threadPoolToSharedTriggerMap];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:shared_trigger->var0];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
    stringValue2 = [v17 stringValue];
    [threadPoolToSharedTriggerMap2 setValue:v16 forKey:stringValue2];
  }

  return shared_trigger;
}

- (void)reserveLegacyGST:(id)t pid:(int)pid graphID:(id)d gstPtr:(ps_gsm_gst_s *)ptr sharedTriggerPtr:(ps_gsm_shared_trigger_s *)triggerPtr
{
  v42 = *MEMORY[0x277D85DE8];
  tCopy = t;
  string = xpc_dictionary_get_string(tCopy, "graph_name");
  v12 = __PSSGLogSharedInstance(string, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v39 = string;
    v40 = 1024;
    pidCopy = pid;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEBUG, "Received a graph addition message for graph %s for client pid = %d", buf, 0x12u);
  }

  pidCopy2 = pid;

  uint64 = xpc_dictionary_get_uint64(tCopy, "num_sources");
  v34 = xpc_dictionary_get_BOOL(tCopy, "synced_buffers");
  v33 = xpc_dictionary_get_uint64(tCopy, "graph_exec_type");
  v31 = xpc_dictionary_get_uint64(tCopy, "graph_threadpool_id");
  v30 = xpc_dictionary_get_string(tCopy, "graph_threadpool_name");
  v32 = xpc_dictionary_get_uint64(tCopy, "graph_subgraph_idx");
  v14 = xpc_dictionary_get_value(tCopy, "source_names_array");
  v15 = xpc_dictionary_get_value(tCopy, "storage_modes_array");
  v16 = xpc_dictionary_get_value(tCopy, "down_sample_factor_array");
  v17 = xpc_dictionary_get_value(tCopy, "stride_factor_array");
  v18 = malloc_type_calloc(uint64, 0x88uLL, 0x1000040B5CA6940uLL);
  v19 = malloc_type_calloc(uint64, 1uLL, 0x100004077774924uLL);
  v21 = v19;
  if (v14 && v15 && v16 && v17)
  {
    v28 = string;
    triggerPtrCopy = triggerPtr;
    if (uint64)
    {
      v22 = 0;
      v23 = v18;
      do
      {
        xpc_array_get_string(v14, v22);
        __strlcpy_chk();
        v23[32] = xpc_array_get_uint64(v16, v22);
        v23[33] = xpc_array_get_uint64(v17, v22);
        v21[v22] = xpc_array_get_uint64(v15, v22);
        ++v22;
        v23 += 34;
      }

      while (uint64 != v22);
    }

    if (v33 == 1)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:v30];
      v25 = [(PSGSTManager *)self initSharedTrigger:v24 threadPoolID:v31 pid:pidCopy2];

      muxed_gst = ps_gsm_create_muxed_gst([(PSGSTManager *)self gsm], v28, uint64, v18, v21, v34, v25, v32, pidCopy2);
    }

    else
    {
      muxed_gst = ps_gsm_create_gst([(PSGSTManager *)self gsm], v28, uint64, v18, v21, v34, pidCopy2);
      v25 = 0;
    }

    triggerPtr = triggerPtrCopy;
  }

  else
  {
    v27 = __PSSGLogSharedInstance(v19, v20);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v39 = string;
      _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_ERROR, "We received NULL arrays over XPC for graph %s", buf, 0xCu);
    }

    v25 = 0;
    muxed_gst = 0;
  }

  free(v18);
  free(v21);
  *ptr = muxed_gst;
  *triggerPtr = v25;
}

- (void)reserveCadenceGST:(id)t pid:(int)pid graphID:(id)d gstPtr:(ps_gsm_gst_s *)ptr sharedTriggerPtr:(ps_gsm_shared_trigger_s *)triggerPtr
{
  v59 = *MEMORY[0x277D85DE8];
  tCopy = t;
  dCopy = d;
  string = xpc_dictionary_get_string(tCopy, "graph_name");
  v13 = __PSSGLogSharedInstance(string, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *v57 = string;
    *&v57[8] = 1024;
    *v58 = pid;
    _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_DEBUG, "Received a graph addition message for graph %s for client pid = %d", buf, 0x12u);
  }

  v53 = string;

  uint64 = xpc_dictionary_get_uint64(tCopy, "num_sources");
  v51 = xpc_dictionary_get_uint64(tCopy, "graph_exec_type");
  v49 = xpc_dictionary_get_uint64(tCopy, "graph_threadpool_id");
  v48 = xpc_dictionary_get_string(tCopy, "graph_threadpool_name");
  v15 = xpc_dictionary_get_uint64(tCopy, "graph_subgraph_idx");
  v46 = xpc_dictionary_get_uint64(tCopy, "stride");
  v45 = xpc_dictionary_get_uint64(tCopy, "desired_offset");
  v16 = xpc_dictionary_get_value(tCopy, "source_names_array");
  v17 = xpc_dictionary_get_value(tCopy, "storage_modes_array");
  v18 = xpc_dictionary_get_BOOL(tCopy, "force_cadenced_GST");
  v19 = malloc_type_calloc(uint64, 0x80uLL, 0x1000040AE2C30F4uLL);
  v20 = malloc_type_calloc(uint64, 1uLL, 0x100004077774924uLL);
  v22 = v20;
  if (v16 && v17)
  {
    v41 = v15;
    v50 = v19;
    pidCopy = pid;
    triggerPtrCopy = triggerPtr;
    if (uint64)
    {
      v23 = 0;
      v24 = v50;
      do
      {
        v25 = xpc_array_get_string(v16, v23);
        strlcpy(v24, v25, 0x80uLL);
        v22[v23] = xpc_array_get_uint64(v17, v23);
        ++v23;
        v24 += 128;
      }

      while (uint64 != v23);
    }

    v42 = v18;
    graphToStrideMap = [(PSGSTManager *)self graphToStrideMap];
    v27 = [graphToStrideMap objectForKey:dCopy];

    if (v27)
    {
      graphToStrideMap2 = [(PSGSTManager *)self graphToStrideMap];
      v29 = [graphToStrideMap2 objectForKey:dCopy];
      unsignedLongLongValue = [v29 unsignedLongLongValue];

      graphToOffsetMap = [(PSGSTManager *)self graphToOffsetMap];
      v32 = [graphToOffsetMap objectForKey:dCopy];
      unsignedLongLongValue2 = [v32 unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue2 = v45;
      unsignedLongLongValue = v46;
    }

    if (!self->_shouldUseOrchestratorV2 && v42)
    {
      unsignedLongLongValue2 = 2 * (unsignedLongLongValue > 2);
    }

    v47 = unsignedLongLongValue | (unsignedLongLongValue2 << 32);
    v38 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:v53];
      *buf = 67109634;
      *v57 = unsignedLongLongValue;
      *&v57[4] = 1024;
      *&v57[6] = unsignedLongLongValue2;
      *v58 = 2112;
      *&v58[2] = v39;
      _os_log_impl(&dword_25EA3A000, v38, OS_LOG_TYPE_DEFAULT, "Creating GST (stride: %u offset: %u) for %@", buf, 0x18u);
    }

    v37 = dCopy;
    if (v51 == 1)
    {
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:v48];
      v35 = [(PSGSTManager *)self initSharedTrigger:v40 threadPoolID:v49 pid:pidCopy];

      v37 = dCopy;
      v19 = v50;
      muxed_gst_with_cadence = ps_gsm_create_muxed_gst_with_cadence([(PSGSTManager *)self gsm], v53, uint64, v50, v22, v47, v35, v41, pidCopy);
    }

    else
    {
      v19 = v50;
      muxed_gst_with_cadence = ps_gsm_create_gst_with_cadence([(PSGSTManager *)self gsm], v53, uint64, v50, v22, v47, pidCopy);
      v35 = 0;
    }

    triggerPtr = triggerPtrCopy;
  }

  else
  {
    v34 = __PSSGLogSharedInstance(v20, v21);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v57 = v53;
      _os_log_impl(&dword_25EA3A000, v34, OS_LOG_TYPE_ERROR, "We received NULL arrays over XPC for graph %s", buf, 0xCu);
    }

    v35 = 0;
    muxed_gst_with_cadence = 0;
    v37 = dCopy;
  }

  free(v19);
  free(v22);
  *ptr = muxed_gst_with_cadence;
  *triggerPtr = v35;
}

- (id)reserveGST:(id)t
{
  tCopy = t;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = -1;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = -1;
  reply = xpc_dictionary_create_reply(tCopy);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v6 = xpc_dictionary_get_value(tCopy, "graphs_array");
  uint64 = xpc_dictionary_get_uint64(tCopy, "client_pid");
  string = xpc_dictionary_get_string(tCopy, "exec_session_name");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __27__PSGSTManager_reserveGST___block_invoke;
  v13[3] = &unk_279A48D68;
  v17 = string;
  v18 = uint64;
  v13[4] = self;
  v15 = v21;
  v16 = v19;
  v9 = reply;
  v14 = v9;
  xpc_array_apply(v6, v13);
  v10 = v14;
  v11 = v9;

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);

  return v11;
}

BOOL __27__PSGSTManager_reserveGST___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = 0;
  v4 = a3;
  if (!v4)
  {
    __27__PSGSTManager_reserveGST___block_invoke_cold_1();
  }

  v5 = v4;
  uint64 = xpc_dictionary_get_uint64(v4, "gst_setup_type");
  string = xpc_dictionary_get_string(v5, "graph_name");
  v8 = [PSSGGraphID alloc];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 64)];
  v11 = [(PSSGGraphID *)v8 initWithName:v9 session:v10];

  v12 = *(a1 + 32);
  v13 = *(a1 + 72);
  if (uint64 == 1)
  {
    v14 = [v12 reserveLegacyGST:v5 pid:v13 graphID:v11 gstPtr:&v25 sharedTriggerPtr:&v24];
  }

  else
  {
    v14 = [v12 reserveCadenceGST:v5 pid:v13 graphID:v11 gstPtr:&v25 sharedTriggerPtr:&v24];
  }

  if (v25)
  {
    v16 = *v25;
  }

  else
  {
    v17 = __PSSGLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = string;
      _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_ERROR, "GST creation failed for graph %s", buf, 0xCu);
    }

    v16 = -1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v16;
  if (v24)
  {
    v18 = *v24;
  }

  else
  {
    v18 = -1;
  }

  *(*(*(a1 + 56) + 8) + 24) = v18;
  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v19, "gst_idx", *(*(*(a1 + 48) + 8) + 24));
  xpc_dictionary_set_uint64(v19, "shared_trigger_idx", *(*(*(a1 + 56) + 8) + 24));
  xpc_dictionary_set_value(*(a1 + 40), string, v19);
  v20 = *(*(*(a1 + 48) + 8) + 24);
  if (v20 != -1)
  {
    v21 = [*(a1 + 32) graphToGSTMap];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 48) + 8) + 24)];
    [v21 setObject:v22 forKey:v11];
  }

  return v20 != -1;
}

- (id)removeGST:(id)t
{
  tCopy = t;
  reply = xpc_dictionary_create_reply(tCopy);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v6 = xpc_dictionary_get_value(tCopy, "graphs_array");
  string = xpc_dictionary_get_string(tCopy, "exec_session_name");

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __26__PSGSTManager_removeGST___block_invoke;
  v9[3] = &unk_279A48D90;
  v9[4] = self;
  v9[5] = string;
  xpc_array_apply(v6, v9);

  return reply;
}

uint64_t __26__PSGSTManager_removeGST___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    __26__PSGSTManager_removeGST___block_invoke_cold_1();
  }

  v5 = v4;
  string = xpc_dictionary_get_string(v4, "graph_name");
  v8 = __PSSGLogSharedInstance(string, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v21 = 136315138;
    v22 = string;
    _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEBUG, "Received a graph removal message for graph %s", &v21, 0xCu);
  }

  uint64 = xpc_dictionary_get_uint64(v5, "gst_idx");
  gst = ps_gsm_get_gst([*(a1 + 32) gsm], uint64);
  ps_gsm_remove_gst([*(a1 + 32) gsm], gst);
  v11 = [PSSGGraphID alloc];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 40)];
  v14 = [(PSSGGraphID *)v11 initWithName:v12 session:v13];

  v15 = [*(a1 + 32) graphToGSTMap];
  [v15 removeObjectForKey:v14];

  v18 = __PSSGLogSharedInstance(v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = atomic_load((gst + 8));
    v21 = 136315650;
    v22 = (gst + 16);
    v23 = 1024;
    v24 = v19;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_DEBUG, "GST Manager: marked gst (name: %s, pid: %d) for removal for graphID: %@", &v21, 0x1Cu);
  }

  return 1;
}

- (void)sourceClearGST:(id)t
{
  v15 = *MEMORY[0x277D85DE8];
  tCopy = t;
  uint64 = xpc_dictionary_get_uint64(tCopy, "source_idx");
  v6 = xpc_dictionary_get_uint64(tCopy, "gst_idx_in_source_array");
  v7 = xpc_dictionary_get_uint64(tCopy, "source_storage_mode");
  source = ps_gsm_get_source([(PSGSTManager *)self gsm], uint64, v7);
  v10 = __PSSGLogSharedInstance(source, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315394;
    v12 = source + 16;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEBUG, "Clear GST for source %s, gst index in source array  %llu", &v11, 0x16u);
  }

  if ((atomic_load_explicit((source + 8 * v6 + 160), memory_order_acquire) & 0x200000000000000) == 0)
  {
    [PSGSTManager sourceClearGST:];
  }

  ps_gsm_finish_clear_gst([(PSGSTManager *)self gsm], source, v6);
}

- (void)removeWaiter:(id)waiter
{
  v10 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(waiter, "gst_idx");
  gst = ps_gsm_get_gst([(PSGSTManager *)self gsm], uint64);
  v7 = __PSSGLogSharedInstance(gst, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = gst + 16;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "Remove waiter for gst = %s", &v8, 0xCu);
  }

  ps_gsm_remove_waiter([(PSGSTManager *)self gsm], gst);
}

- (void)removeThreadPool:(id)pool
{
  v12 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(pool, "graph_threadpool_id");
  v6 = __PSSGLogSharedInstance(uint64, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = uint64;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "Remove threadPool for threadPoolId %llu", &v10, 0xCu);
  }

  threadPoolToSharedTriggerMap = [(PSGSTManager *)self threadPoolToSharedTriggerMap];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
  stringValue = [v8 stringValue];
  [threadPoolToSharedTriggerMap removeObjectForKey:stringValue];
}

- (id)handleMessage:(id)message
{
  messageCopy = message;
  uint64 = xpc_dictionary_get_uint64(messageCopy, "message_type");
  v6 = uint64;
  if (uint64 <= 2)
  {
    if (uint64 == 1)
    {
      v7 = [(PSGSTManager *)self reserveGST:messageCopy];
    }

    else
    {
      if (uint64 != 2)
      {
        goto LABEL_13;
      }

      v7 = [(PSGSTManager *)self removeGST:messageCopy];
    }

    v8 = v7;
    goto LABEL_17;
  }

  if (uint64 == 3)
  {
    [(PSGSTManager *)self sourceClearGST:messageCopy];
    goto LABEL_16;
  }

  if (uint64 == 4)
  {
    [(PSGSTManager *)self removeWaiter:messageCopy];
    goto LABEL_16;
  }

  if (uint64 != 5)
  {
LABEL_13:
    v9 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11) = 134217984;
      HIDWORD(v11) = v6;
      _os_log_unreliable_impl(&dword_25EA3A000, v9, 0, "Received an unknown message type = %llu, this should never happen!", v11);
    }

    goto LABEL_16;
  }

  [(PSGSTManager *)self removeThreadPool:messageCopy];
LABEL_16:
  v8 = 0;
LABEL_17:

  return v8;
}

- (PSGSTManager)initWithGSM:(ps_gsm_s *)m shouldUseOrchestratorV2:(BOOL)v2
{
  v2Copy = v2;
  v16.receiver = self;
  v16.super_class = PSGSTManager;
  v6 = [(PSGSTManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    [(PSGSTManager *)v6 setGsm:m];
    [(PSGSTManager *)v7 setShouldUseOrchestratorV2:v2Copy];
    v8 = objc_alloc_init(MEMORY[0x277CCAB00]);
    [(PSGSTManager *)v7 setGraphToGSTMap:v8];

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(PSGSTManager *)v7 setThreadPoolToSharedTriggerMap:v9];

    v10 = objc_alloc_init(MEMORY[0x277CCAB00]);
    [(PSGSTManager *)v7 setGraphToStrideMap:v10];

    v11 = objc_alloc_init(MEMORY[0x277CCAB00]);
    [(PSGSTManager *)v7 setGraphToOffsetMap:v11];

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(PSGSTManager *)v7 setDomainID:v12];

    v13 = os_log_create("com.apple.polaris", "gstmanager");
    [(PSGSTManager *)v7 setLog:v13];

    v14 = v7;
  }

  return v7;
}

- (unint64_t)changeCadenceAtOrAfterFrameId:(id)id frameID:(unint64_t)d stride:(unint64_t)stride offset:(unint64_t)offset
{
  v44 = *MEMORY[0x277D85DE8];
  idCopy = id;
  graphToStrideMap = [(PSGSTManager *)self graphToStrideMap];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:stride];
  [graphToStrideMap setObject:v12 forKey:idCopy];

  graphToOffsetMap = [(PSGSTManager *)self graphToOffsetMap];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:offset];
  [graphToOffsetMap setObject:v14 forKey:idCopy];

  graphToGSTMap = [(PSGSTManager *)self graphToGSTMap];
  v16 = [graphToGSTMap objectForKey:idCopy];

  if (!v16)
  {
    v29 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      name = [idCopy name];
      *v41 = 138412290;
      *&v41[4] = name;
      _os_log_unreliable_impl(&dword_25EA3A000, v29, 0, "GST Manager: could not find the GST associated with graph %@, storing it for when the graph is added", v41, 12);
    }

    goto LABEL_11;
  }

  graphToGSTMap2 = [(PSGSTManager *)self graphToGSTMap];
  v18 = [graphToGSTMap2 objectForKey:idCopy];
  intValue = [v18 intValue];

  gst = ps_gsm_get_gst([(PSGSTManager *)self gsm], intValue);
  v21 = atomic_load((gst + 8));
  if ((v21 & 0x200000000000000) != 0)
  {
    v29 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 0;
      _os_log_unreliable_impl(&dword_25EA3A000, v29, 0, "GST Manager: tried to change cadence on a GST that is currently marked for death handling, ignoring.", v41, 2);
    }

LABEL_11:

LABEL_12:
    v31 = -1;
    goto LABEL_13;
  }

  v22 = gst;
  v23 = (gst + 16);
  name2 = [idCopy name];
  v25 = strncmp(v23, [name2 UTF8String], 0x80uLL);

  v26 = [(PSGSTManager *)self log];
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    if (v27)
    {
      name3 = [idCopy name];
      *v41 = 136315394;
      *&v41[4] = v23;
      *&v41[12] = 2080;
      *&v41[14] = [name3 UTF8String];
      _os_log_unreliable_impl(&dword_25EA3A000, v26, 0, "GST Manager: tried to change cadence on a GST but graph names did not match, ignoring (gst: %s, graphID: %s).", *v41, *&v41[8]);
    }

    goto LABEL_12;
  }

  v33 = stride | (offset << 32);
  if (v27)
  {
    name4 = [idCopy name];
    *v41 = 67109890;
    *&v41[4] = stride;
    *&v41[8] = 1024;
    *&v41[10] = offset;
    *&v41[14] = 2048;
    *&v41[16] = d;
    v42 = 2112;
    *v43 = name4;
    _os_log_unreliable_impl(&dword_25EA3A000, v26, 0, "Updating GST (stride: %u offset: %u) at frameid: %llu for %@", v41, 34);
  }

  v35 = [(PSGSTManager *)self log];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    v36 = atomic_load((v22 + 8));
    v37 = atomic_load((v22 + 8));
    v38 = (v37 >> 57) & 1;
    name5 = [idCopy name];
    uTF8String = [name5 UTF8String];
    *v41 = 134219010;
    *&v41[4] = d;
    *&v41[12] = 2080;
    *&v41[14] = v23;
    *&v43[6] = WORD1(v38);
    *&v43[8] = 2080;
    *&v43[10] = uTF8String;
    _os_log_unreliable_impl(&dword_25EA3A000, v35, 2, "GST Manager: changing cadence at or after frameID %llu for gst (name: %s, pid: %d, death_handler: %d) graphID.name: %s", *v41, *&v41[8], v23 >> 16, v36, *&v43[6]);
  }

  v31 = ps_gsm_gst_change_cadence_at_or_after_frame_id(v22, d, v33);
LABEL_13:

  return v31;
}

- (unint64_t)changeCadenceOnNextValidFrameId:(id)id stride:(unint64_t)stride offset:(unint64_t)offset
{
  v39 = *MEMORY[0x277D85DE8];
  idCopy = id;
  graphToStrideMap = [(PSGSTManager *)self graphToStrideMap];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:stride];
  [graphToStrideMap setObject:v10 forKey:idCopy];

  graphToOffsetMap = [(PSGSTManager *)self graphToOffsetMap];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:offset];
  [graphToOffsetMap setObject:v12 forKey:idCopy];

  graphToGSTMap = [(PSGSTManager *)self graphToGSTMap];
  v14 = [graphToGSTMap objectForKey:idCopy];

  if (!v14)
  {
    v27 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      name = [idCopy name];
      *v37 = 138412290;
      *&v37[4] = name;
      _os_log_unreliable_impl(&dword_25EA3A000, v27, 0, "GST Manager: could not find the GST associated with graph %@, storing it for when the graph is added", v37, 12);
    }

    goto LABEL_11;
  }

  graphToGSTMap2 = [(PSGSTManager *)self graphToGSTMap];
  v16 = [graphToGSTMap2 objectForKey:idCopy];
  intValue = [v16 intValue];

  gst = ps_gsm_get_gst([(PSGSTManager *)self gsm], intValue);
  v19 = atomic_load((gst + 8));
  if ((v19 & 0x200000000000000) != 0)
  {
    v27 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_unreliable_impl(&dword_25EA3A000, v27, 0, "GST Manager: tried to change cadence on a GST that is currently marked for death handling, ignoring.", v37, 2);
    }

LABEL_11:

LABEL_12:
    v29 = -1;
    goto LABEL_13;
  }

  v20 = gst;
  v21 = (gst + 16);
  name2 = [idCopy name];
  v23 = strcmp(v21, [name2 UTF8String]);

  v24 = [(PSGSTManager *)self log];
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v25)
    {
      name3 = [idCopy name];
      *v37 = 136315394;
      *&v37[4] = v21;
      *&v37[12] = 2080;
      *&v37[14] = [name3 UTF8String];
      _os_log_unreliable_impl(&dword_25EA3A000, v24, 0, "GST Manager: tried to change cadence on a GST but graph names did not match, ignoring (gst: %s, graphID: %s).", *v37, *&v37[8]);
    }

    goto LABEL_12;
  }

  v31 = stride | (offset << 32);
  if (v25)
  {
    name4 = [idCopy name];
    *v37 = 67109634;
    *&v37[4] = stride;
    *&v37[8] = 1024;
    *&v37[10] = offset;
    *&v37[14] = 2112;
    *&v37[16] = name4;
    _os_log_unreliable_impl(&dword_25EA3A000, v24, 0, "Updating GST (stride: %u offset: %u) for %@", v37, 24);
  }

  v33 = [(PSGSTManager *)self log];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v34 = atomic_load((v20 + 8));
    atomic_load((v20 + 8));
    name5 = [idCopy name];
    uTF8String = [name5 UTF8String];
    *v37 = 136315906;
    *&v37[4] = v21;
    *&v37[16] = HIWORD(v34);
    *&v37[18] = 1024;
    *v38 = 2080;
    *&v38[2] = uTF8String;
    _os_log_unreliable_impl(&dword_25EA3A000, v33, 2, "GST Manager: changing cadence at next valid frameID for gst (name: %s, pid: %d, death_handler: %d) graphID.name: %s", *v37, HIDWORD(v21), *&v37[16], *v38);
  }

  v29 = ps_gsm_gst_change_cadence_on_next_valid_frame_id_for_cadence(v20, v31);
LABEL_13:

  return v29;
}

- (void)removeGraphs:(id)graphs
{
  v18 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [graphsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(graphsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        graphToGSTMap = [(PSGSTManager *)self graphToGSTMap];
        [graphToGSTMap removeObjectForKey:v9];

        graphToStrideMap = [(PSGSTManager *)self graphToStrideMap];
        [graphToStrideMap removeObjectForKey:v9];

        graphToOffsetMap = [(PSGSTManager *)self graphToOffsetMap];
        [graphToOffsetMap removeObjectForKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [graphsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

@end