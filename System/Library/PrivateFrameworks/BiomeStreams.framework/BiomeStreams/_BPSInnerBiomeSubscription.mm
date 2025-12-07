@interface _BPSInnerBiomeSubscription
- (_BPSInnerBiomeSubscription)initWithStreamEnumerator:(id)enumerator downstream:(id)downstream streamId:(id)id accessClient:(id)client;
- (id)newBookmark;
- (void)cancel;
- (void)requestDemand:(int64_t)demand;
@end

@implementation _BPSInnerBiomeSubscription

- (_BPSInnerBiomeSubscription)initWithStreamEnumerator:(id)enumerator downstream:(id)downstream streamId:(id)id accessClient:(id)client
{
  enumeratorCopy = enumerator;
  downstreamCopy = downstream;
  idCopy = id;
  clientCopy = client;
  v18.receiver = self;
  v18.super_class = _BPSInnerBiomeSubscription;
  v15 = [(_BPSInnerBiomeSubscription *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_enumerator, enumerator);
    objc_storeStrong(&v16->_downstream, downstream);
    v16->_pendingDemand = 0;
    objc_storeStrong(&v16->_streamId, id);
    v16->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v16->_accessClient, client);
  }

  return v16;
}

- (void)requestDemand:(int64_t)demand
{
  v46 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  v5 = selfCopy->_downstream;
  if (!v5)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      streamId = selfCopy->_streamId;
      *buf = 138412546;
      v43 = v15;
      v44 = 2112;
      v45 = streamId;
      _os_log_impl(&dword_1848EE000, v13, OS_LOG_TYPE_DEFAULT, "%@ - Downstream is nil. StreamId: %@", buf, 0x16u);
    }

    v17 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 stringWithFormat:@"%@ - Downstream is nil. StreamId: %@", v20, selfCopy->_streamId];
    v41 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v23 = [v17 errorWithDomain:@"com.apple.biome.BiomeStreams" code:-1 userInfo:v22];

    os_unfair_lock_unlock(&selfCopy->_lock);
    v24 = [MEMORY[0x1E698F0C0] failureWithError:v23];
    v25 = 0;
    goto LABEL_20;
  }

  enumerator = selfCopy->_enumerator;
  if (!enumerator)
  {
    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      [_BPSInnerBiomeSubscription requestDemand:selfCopy];
    }

    v27 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A578];
    v39 = @"Can't form store enumerator. Going to complete this source";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v29 = v27;
    v30 = -1;
    goto LABEL_19;
  }

  if (([(BMStoreEnumerator *)enumerator isDataAccessible]& 1) == 0)
  {
    v31 = __biome_log_for_category();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [_BPSInnerBiomeSubscription requestDemand:selfCopy];
    }

    v32 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v37 = @"Enumerator doesn't have access to data. Going to complete this source";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v29 = v32;
    v30 = 1;
LABEL_19:
    v23 = [v29 errorWithDomain:@"com.apple.biome.BiomeStreams" code:v30 userInfo:v28];

    downstream = selfCopy->_downstream;
    selfCopy->_downstream = 0;

    os_unfair_lock_unlock(&selfCopy->_lock);
    v24 = [MEMORY[0x1E698F0C0] failureWithError:v23];
    v25 = v5;
LABEL_20:
    [(BPSSubscriber *)v25 receiveCompletion:v24];

    goto LABEL_21;
  }

  v7 = selfCopy->_pendingDemand + demand;
  selfCopy->_pendingDemand = v7;
  if (selfCopy->_recursion || v7 < 1)
  {
LABEL_9:
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = selfCopy->_enumerator;
      if (!v9)
      {
        break;
      }

      nextEvent = [(BMStoreEnumerator *)v9 nextEvent];
      if (!nextEvent)
      {
        v35 = selfCopy->_downstream;
        selfCopy->_downstream = 0;

        os_unfair_lock_unlock(&selfCopy->_lock);
        success = [MEMORY[0x1E698F0C0] success];
        [(BPSSubscriber *)v5 receiveCompletion:success];
        goto LABEL_25;
      }

      v11 = nextEvent;
      --selfCopy->_pendingDemand;
      selfCopy->_recursion = 1;
      os_unfair_lock_unlock(&selfCopy->_lock);
      v12 = [(BPSSubscriber *)v5 receiveInput:v11];
      os_unfair_lock_lock(&selfCopy->_lock);
      selfCopy->_pendingDemand += v12;
      selfCopy->_recursion = 0;

      objc_autoreleasePoolPop(v8);
      if (selfCopy->_pendingDemand <= 0)
      {
        goto LABEL_9;
      }
    }

    success = __biome_log_for_category();
    if (os_log_type_enabled(success, OS_LOG_TYPE_FAULT))
    {
      [_BPSInnerBiomeSubscription requestDemand:selfCopy];
    }

LABEL_25:

    objc_autoreleasePoolPop(v8);
  }

LABEL_21:
}

- (void)cancel
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_INFO, "%@ - cancel", &v8, 0xCu);
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  downstream = selfCopy->_downstream;
  selfCopy->_downstream = 0;

  enumerator = selfCopy->_enumerator;
  selfCopy->_enumerator = 0;

  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (id)newBookmark
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    streamId = self->_streamId;
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = streamId;
    _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_INFO, "%@ - get new store bookmark for stream: %@", &v8, 0x16u);
  }

  [(BMStoreEnumerator *)self->_enumerator bookmark];
  return objc_claimAutoreleasedReturnValue();
}

@end