@interface FMFMapSession
+ (id)newConnection;
+ (id)sharedInstance;
- (void)gridImageForScreenRatio:(double)ratio andCompletion:(id)completion;
- (void)gridImageForWidth:(double)width height:(double)height cache:(BOOL)cache andCompletion:(id)completion;
- (void)mapImageForLocation:(id)location isShifted:(BOOL)shifted altitude:(double)altitude pitch:(double)pitch screenRatio:(double)ratio andCompletion:(id)completion;
- (void)mapImageForLocation:(id)location isShifted:(BOOL)shifted altitude:(double)altitude pitch:(double)pitch width:(double)width height:(double)height cache:(BOOL)cache andCompletion:(id)self0;
- (void)mapImageForLocation:(id)location isShifted:(BOOL)shifted radius:(double)radius width:(double)width height:(double)height cache:(BOOL)cache andCompletion:(id)completion;
- (void)mapImageForRequest:(id)request andCompletion:(id)completion;
- (void)noLocationImageForScreenRatio:(double)ratio andCompletion:(id)completion;
- (void)noLocationImageForWidth:(double)width height:(double)height cache:(BOOL)cache andCompletion:(id)completion;
@end

@implementation FMFMapSession

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__FMFMapSession_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_dispatch_predicate != -1)
  {
    dispatch_once(&sharedInstance_dispatch_predicate, block);
  }

  v2 = sharedInstance__instance;

  return v2;
}

void __31__FMFMapSession_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = sharedInstance__instance;
  sharedInstance__instance = v1;

  v3 = objc_opt_new();
  [sharedInstance__instance setMapCache:v3];
}

+ (id)newConnection
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285D89628];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.icloud.FMF.FMFMapXPCService"];
  [v3 setRemoteObjectInterface:v2];
  [v3 resume];

  return v3;
}

- (void)gridImageForWidth:(double)width height:(double)height cache:(BOOL)cache andCompletion:(id)completion
{
  cacheCopy = cache;
  completionCopy = completion;
  selfCopy = self;
  v12 = selfCopy;
  if (cacheCopy && (-[FMFMapSession mapCache](selfCopy, "mapCache"), v13 = objc_claimAutoreleasedReturnValue(), [v13 cachedGridImageForWidth:width andHeight:height], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
  {
    completionCopy[2](completionCopy, v14, 0);
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__0;
    v28 = __Block_byref_object_dispose__0;
    v29 = 0;
    v15 = +[FMFMapSession newConnection];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__FMFMapSession_gridImageForWidth_height_cache_andCompletion___block_invoke;
    v23[3] = &unk_278FDE180;
    v23[4] = &v24;
    v16 = [v15 remoteObjectProxyWithErrorHandler:v23];
    if (completionCopy && v25[5])
    {
      (completionCopy[2])(completionCopy, 0);
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __62__FMFMapSession_gridImageForWidth_height_cache_andCompletion___block_invoke_2;
      v17[3] = &unk_278FDE1A8;
      v22 = cacheCopy;
      v18 = v12;
      widthCopy = width;
      heightCopy = height;
      v19 = completionCopy;
      [v16 gridImageForWidth:v17 height:width andCompletion:height];
    }

    _Block_object_dispose(&v24, 8);
  }
}

void __62__FMFMapSession_gridImageForWidth_height_cache_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __62__FMFMapSession_gridImageForWidth_height_cache_andCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 64) == 1)
  {
    v6 = [*(a1 + 32) mapCache];
    [v6 cacheGridImage:v7 forWidth:*(a1 + 48) andHeight:*(a1 + 56)];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)mapImageForLocation:(id)location isShifted:(BOOL)shifted radius:(double)radius width:(double)width height:(double)height cache:(BOOL)cache andCompletion:(id)completion
{
  cacheCopy = cache;
  shiftedCopy = shifted;
  completionCopy = completion;
  locationCopy = location;
  v18 = [[FMFMapImageRequest alloc] initWithLocation:locationCopy isShifted:shiftedCopy radius:cacheCopy width:radius height:width andCachingEnabled:height];

  [(FMFMapSession *)self mapImageForRequest:v18 andCompletion:completionCopy];
}

- (void)noLocationImageForWidth:(double)width height:(double)height cache:(BOOL)cache andCompletion:(id)completion
{
  cacheCopy = cache;
  completionCopy = completion;
  selfCopy = self;
  v12 = selfCopy;
  if (cacheCopy && (-[FMFMapSession mapCache](selfCopy, "mapCache"), v13 = objc_claimAutoreleasedReturnValue(), [v13 cachedNoLocationImageForWidth:width andHeight:height], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
  {
    completionCopy[2](completionCopy, v14, 0);
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__0;
    v28 = __Block_byref_object_dispose__0;
    v29 = 0;
    v15 = +[FMFMapSession newConnection];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__FMFMapSession_noLocationImageForWidth_height_cache_andCompletion___block_invoke;
    v23[3] = &unk_278FDE180;
    v23[4] = &v24;
    v16 = [v15 remoteObjectProxyWithErrorHandler:v23];
    if (completionCopy && v25[5])
    {
      (completionCopy[2])(completionCopy, 0);
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __68__FMFMapSession_noLocationImageForWidth_height_cache_andCompletion___block_invoke_2;
      v17[3] = &unk_278FDE1A8;
      v22 = cacheCopy;
      v18 = v12;
      widthCopy = width;
      heightCopy = height;
      v19 = completionCopy;
      [v16 noLocationImageForWidth:v17 height:width andCompletion:height];
    }

    _Block_object_dispose(&v24, 8);
  }
}

void __68__FMFMapSession_noLocationImageForWidth_height_cache_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __68__FMFMapSession_noLocationImageForWidth_height_cache_andCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 64) == 1)
  {
    v6 = [*(a1 + 32) mapCache];
    [v6 cacheNoLocationImage:v7 forWidth:*(a1 + 48) andHeight:*(a1 + 56)];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)mapImageForLocation:(id)location isShifted:(BOOL)shifted altitude:(double)altitude pitch:(double)pitch width:(double)width height:(double)height cache:(BOOL)cache andCompletion:(id)self0
{
  cacheCopy = cache;
  shiftedCopy = shifted;
  completionCopy = completion;
  locationCopy = location;
  v20 = [[FMFMapImageRequest alloc] initWithLocation:locationCopy isShifted:shiftedCopy altitude:cacheCopy pitch:altitude width:pitch height:width andCachingEnabled:height];

  [(FMFMapSession *)self mapImageForRequest:v20 andCompletion:completionCopy];
}

- (void)mapImageForRequest:(id)request andCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = LogCategory_FMFMapXPC(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FMFMapSession mapImageForRequest:andCompletion:];
  }

  selfCopy = self;
  if (![requestCopy cachingEnabled] || (-[FMFMapSession mapCache](selfCopy, "mapCache"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "cachedMapImageForRequest:", requestCopy), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = 0;
    v14 = +[FMFMapSession newConnection];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke;
    v25[3] = &unk_278FDE180;
    v25[4] = &v26;
    v15 = [v14 remoteObjectProxyWithErrorHandler:v25];
    if (completionCopy && v27[5])
    {
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      mapCache = [(FMFMapSession *)selfCopy mapCache];
      v17 = [mapCache pendingMapImageForRequest:requestCopy];

      v19 = LogCategory_FMFMapXPC(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [FMFMapSession mapImageForRequest:andCompletion:];
      }

      if (v17 && [requestCopy priority] < 1)
      {
        if (!completionCopy)
        {
          goto LABEL_17;
        }

        v20 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"FMFMapXPCService" code:206 userInfo:0];
        (completionCopy[2])(completionCopy, 0, v20);
      }

      else
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke_66;
        v21[3] = &unk_278FDE1D0;
        v22 = requestCopy;
        v23 = selfCopy;
        v24 = completionCopy;
        [v15 mapImageForRequest:v22 andCompletion:v21];

        v20 = v22;
      }
    }

LABEL_17:

    _Block_object_dispose(&v26, 8);
    goto LABEL_18;
  }

  v13 = LogCategory_FMFMapXPC(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [FMFMapSession mapImageForRequest:andCompletion:];
  }

  (completionCopy[2])(completionCopy, v11, 0);
LABEL_18:
}

void __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke_66(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) cachingEnabled];
  if (v7)
  {
    v8 = [*(a1 + 40) mapCache];
    [v8 cacheMapImage:v5 forRequest:*(a1 + 32)];
  }

  v9 = LogCategory_FMFMapXPC(v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v10)
    {
      __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke_66_cold_1(v6, v9);
    }
  }

  else if (v10)
  {
    __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke_66_cold_2();
  }

  (*(*(a1 + 48) + 16))();
}

- (void)gridImageForScreenRatio:(double)ratio andCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v6 = +[FMFMapSession newConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__FMFMapSession_gridImageForScreenRatio_andCompletion___block_invoke;
  v10[3] = &unk_278FDE180;
  v10[4] = &v11;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v10];
  if (completionCopy && v12[5])
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__FMFMapSession_gridImageForScreenRatio_andCompletion___block_invoke_2;
    v8[3] = &unk_278FDE1F8;
    v9 = completionCopy;
    [v7 gridImageForScreenRatio:v8 andCompletion:ratio];
  }

  _Block_object_dispose(&v11, 8);
}

void __55__FMFMapSession_gridImageForScreenRatio_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)noLocationImageForScreenRatio:(double)ratio andCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v6 = +[FMFMapSession newConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__FMFMapSession_noLocationImageForScreenRatio_andCompletion___block_invoke;
  v10[3] = &unk_278FDE180;
  v10[4] = &v11;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v10];
  if (completionCopy && v12[5])
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__FMFMapSession_noLocationImageForScreenRatio_andCompletion___block_invoke_2;
    v8[3] = &unk_278FDE1F8;
    v9 = completionCopy;
    [v7 noLocationImageForScreenRatio:v8 andCompletion:ratio];
  }

  _Block_object_dispose(&v11, 8);
}

void __61__FMFMapSession_noLocationImageForScreenRatio_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)mapImageForLocation:(id)location isShifted:(BOOL)shifted altitude:(double)altitude pitch:(double)pitch screenRatio:(double)ratio andCompletion:(id)completion
{
  shiftedCopy = shifted;
  locationCopy = location;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v15 = +[FMFMapSession newConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__FMFMapSession_mapImageForLocation_isShifted_altitude_pitch_screenRatio_andCompletion___block_invoke;
  v19[3] = &unk_278FDE180;
  v19[4] = &v20;
  v16 = [v15 remoteObjectProxyWithErrorHandler:v19];
  if (completionCopy && v21[5])
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__FMFMapSession_mapImageForLocation_isShifted_altitude_pitch_screenRatio_andCompletion___block_invoke_2;
    v17[3] = &unk_278FDE1F8;
    v18 = completionCopy;
    [v16 mapImageForLocation:locationCopy isShifted:shiftedCopy altitude:v17 pitch:altitude screenRatio:pitch andCompletion:ratio];
  }

  _Block_object_dispose(&v20, 8);
}

void __88__FMFMapSession_mapImageForLocation_isShifted_altitude_pitch_screenRatio_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke_66_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24A33F000, a2, OS_LOG_TYPE_DEBUG, "Error generating maps %@", &v2, 0xCu);
}

@end