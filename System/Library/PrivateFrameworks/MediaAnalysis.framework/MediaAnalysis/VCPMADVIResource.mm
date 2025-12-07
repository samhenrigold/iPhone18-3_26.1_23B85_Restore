@interface VCPMADVIResource
- (VCPMADVIResource)init;
- (VIService)service;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
- (void)purge;
@end

@implementation VCPMADVIResource

- (VCPMADVIResource)init
{
  v6.receiver = self;
  v6.super_class = VCPMADVIResource;
  v2 = [(VCPMADVIResource *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("VCPMADVIResource", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (int64_t)activeCost
{
  if (DeviceHasANE(self, a2))
  {
    return 40;
  }

  else
  {
    return 100;
  }
}

- (int64_t)inactiveCost
{
  if (DeviceHasANE(self, a2))
  {
    return 5;
  }

  else
  {
    return 100;
  }
}

- (VIService)service
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__VCPMADVIResource_service__block_invoke;
  v5[3] = &unk_1E834BFE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __27__VCPMADVIResource_service__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = VCPSignPostLog(a1);
    v4 = os_signpost_id_generate(v3);

    v6 = VCPSignPostLog(v5);
    v7 = v6;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VIService_init", "", buf, 2u);
    }

    v8 = objc_alloc_init(MEMORY[0x1E69E04A0]);
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    *(v9 + 16) = v8;

    v12 = VCPSignPostLog(v11);
    v13 = v12;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_END, v4, "VIService_init", "", v14, 2u);
    }

    v2 = *(*(a1 + 32) + 16);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (void)purge
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__VCPMADVIResource_purge__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(queue, block);
  globalSession = [MEMORY[0x1E6984688] globalSession];
  [globalSession releaseCachedResources];
}

void __25__VCPMADVIResource_purge__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

@end