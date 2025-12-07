@interface SKUILoadArtworkResourceOperation
- (SKUILoadArtworkResourceOperation)initWithResourceRequest:(id)request;
- (SSVLoadURLOperation)underlyingOperation;
- (void)cancel;
- (void)main;
@end

@implementation SKUILoadArtworkResourceOperation

- (SKUILoadArtworkResourceOperation)initWithResourceRequest:(id)request
{
  requestCopy = request;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUILoadArtworkResourceOperation initWithResourceRequest:];
  }

  v7.receiver = self;
  v7.super_class = SKUILoadArtworkResourceOperation;
  v5 = [(SKUILoadResourceOperation *)&v7 initWithResourceRequest:requestCopy];

  return v5;
}

- (void)main
{
  resourceRequest = [(SKUILoadResourceOperation *)self resourceRequest];
  imageName = [resourceRequest imageName];
  v5 = [resourceRequest URL];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D69CD8]);
    v7 = [resourceRequest URL];
    v8 = [v6 initWithURL:v7];

    dataConsumer = [resourceRequest dataConsumer];
    [v8 setDataConsumer:dataConsumer];

    [v8 setITunesStoreRequest:0];
    [v8 setRecordsMetrics:0];
    outputBlock = [(SKUILoadResourceOperation *)self outputBlock];
    [v8 setOutputBlock:outputBlock];

    [(SKUILoadArtworkResourceOperation *)self setUnderlyingOperation:v8];
    [v8 main];
  }

  else if (imageName)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__81;
    v32 = __Block_byref_object_dispose__81;
    v33 = 0;
    isMainThread = [MEMORY[0x277CCACC8] isMainThread];
    if (isMainThread)
    {
      v13 = MEMORY[0x277D755B8];
      v14 = SKUIBundle(isMainThread, v12);
      v15 = [v13 imageNamed:imageName inBundle:v14];
      v16 = v29[5];
      v29[5] = v15;
    }

    else
    {
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __40__SKUILoadArtworkResourceOperation_main__block_invoke;
      v25 = &unk_2781F8608;
      v27 = &v28;
      v26 = imageName;
      dispatch_sync(MEMORY[0x277D85CD0], &v22);
      v14 = v26;
    }

    if (([(SKUILoadArtworkResourceOperation *)self isCancelled]& 1) == 0)
    {
      dataConsumer2 = [resourceRequest dataConsumer];
      v18 = dataConsumer2;
      if (dataConsumer2)
      {
        v19 = [dataConsumer2 imageForImage:v29[5]];
        v20 = v29[5];
        v29[5] = v19;
      }

      v21 = [(SKUILoadResourceOperation *)self outputBlock:v22];
      if (v21 && ([(SKUILoadArtworkResourceOperation *)self isCancelled]& 1) == 0)
      {
        v21[2](v21, v29[5], 0);
      }
    }

    _Block_object_dispose(&v28, 8);
  }
}

void __40__SKUILoadArtworkResourceOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D755B8];
  v4 = *(a1 + 32);
  v8 = SKUIBundle(a1, a2);
  v5 = [v3 imageNamed:v4 inBundle:v8];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = SKUILoadArtworkResourceOperation;
  [(SKUILoadResourceOperation *)&v4 cancel];
  underlyingOperation = [(SKUILoadArtworkResourceOperation *)self underlyingOperation];
  [underlyingOperation cancel];
}

- (SSVLoadURLOperation)underlyingOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingOperation);

  return WeakRetained;
}

- (void)initWithResourceRequest:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILoadArtworkResourceOperation initWithResourceRequest:]";
}

@end