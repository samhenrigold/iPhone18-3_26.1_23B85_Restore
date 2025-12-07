@interface VUIStoreAcquisition
+ (id)sharedInstance;
- (VUIStoreAcquisition)init;
- (id)acquireWithProperties:(id)properties completionBlock:(id)block;
- (void)_handleRequest:(id)request;
- (void)_handleResponse:(id)response responseDict:(id)dict forRequest:(id)request error:(id)error cancelled:(BOOL)cancelled;
- (void)_processFirstRequest;
- (void)_processRequest:(id)request;
- (void)postCrossProcessNotificationWithBuyParams:(id)params error:(id)error;
@end

@implementation VUIStoreAcquisition

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_16 != -1)
  {
    +[VUIStoreAcquisition sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance_1;

  return v3;
}

void __37__VUIStoreAcquisition_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIStoreAcquisition);
  v1 = sharedInstance_sSharedInstance_1;
  sharedInstance_sSharedInstance_1 = v0;
}

- (VUIStoreAcquisition)init
{
  v6.receiver = self;
  v6.super_class = VUIStoreAcquisition;
  v2 = [(VUIStoreAcquisition *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingQueue = v2->_pendingQueue;
    v2->_pendingQueue = v3;

    v2->_concurrentCount = 1;
  }

  return v2;
}

- (id)acquireWithProperties:(id)properties completionBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  blockCopy = block;
  buyParams = [propertiesCopy buyParams];
  if (![buyParams length])
  {

    goto LABEL_16;
  }

  buyParams2 = [propertiesCopy buyParams];
  properties = [(VUIAcquisitionRequest *)self->_activeRequest properties];
  buyParams3 = [properties buyParams];
  v12 = [buyParams2 isEqualToString:buyParams3];

  if (v12)
  {
LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  v25 = blockCopy;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = self->_pendingQueue;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        buyParams4 = [propertiesCopy buyParams];
        properties2 = [v18 properties];
        buyParams5 = [properties2 buyParams];
        if ([buyParams4 isEqualToString:buyParams5])
        {
          isCancelled = [v18 isCancelled];

          if ((isCancelled & 1) == 0)
          {

            v23 = 0;
            blockCopy = v25;
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v23 = objc_alloc_init(VUIAcquisitionRequest);
  blockCopy = v25;
  [(VUIAcquisitionRequest *)v23 setCompletionBlock:v25];
  [(VUIAcquisitionRequest *)v23 setProperties:propertiesCopy];
  [(NSMutableArray *)self->_pendingQueue addObject:v23];
  [(VUIStoreAcquisition *)self _processFirstRequest];
LABEL_17:

  return v23;
}

- (void)_processFirstRequest
{
  if ([(NSMutableArray *)self->_pendingQueue count]&& self->_concurrentCount)
  {
    obj = [(NSMutableArray *)self->_pendingQueue objectAtIndex:0];
    if ([obj isCancelled])
    {
      [(NSMutableArray *)self->_pendingQueue removeObjectAtIndex:0];
      [(VUIStoreAcquisition *)self _processFirstRequest];
    }

    else
    {
      --self->_concurrentCount;
      objc_storeStrong(&self->_activeRequest, obj);
      [(VUIStoreAcquisition *)self _processRequest:obj];
      [(NSMutableArray *)self->_pendingQueue removeObjectAtIndex:0];
    }
  }
}

- (void)_processRequest:(id)request
{
  requestCopy = request;
  properties = [requestCopy properties];
  userAgent = [properties userAgent];
  if (userAgent || ([properties dsid], (userAgent = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    [(VUIStoreAcquisition *)self _handleCustomRequest:requestCopy];
    goto LABEL_5;
  }

  strongToken = [properties strongToken];

  if (strongToken)
  {
    goto LABEL_4;
  }

  [(VUIStoreAcquisition *)self _handleRequest:requestCopy];
LABEL_5:
}

- (void)_handleRequest:(id)request
{
  v30[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  properties = [requestCopy properties];
  urlBagKey = [properties urlBagKey];
  buyParams = [properties buyParams];
  if ([buyParams length])
  {
    v8 = [MEMORY[0x1E69D4998] purchaseWithBuyParameters:buyParams];
    if ([urlBagKey isEqualToString:@"redownloadProduct"])
    {
      v9 = objc_opt_new();
      [v9 setURLBagKey:urlBagKey];
      [v9 setShouldProcessProtocol:0];
      [v8 setRequestProperties:v9];
    }

    if (!urlBagKey || [urlBagKey isEqualToString:@"buyProduct"])
    {
      requestProperties = [v8 requestProperties];
      v11 = [requestProperties mutableCopy];

      if (!v11)
      {
        v11 = objc_alloc_init(MEMORY[0x1E69D4970]);
      }

      [v8 setRequestProperties:v11];
    }

    [v8 setIgnoresForcedPasswordRestriction:{objc_msgSend(properties, "ignoresForcedPasswordRestriction")}];
    v12 = objc_alloc(MEMORY[0x1E69D49A0]);
    v30[0] = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v14 = [v12 initWithPurchases:v13];

    [v14 setCreatesDownloads:0];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __38__VUIStoreAcquisition__handleRequest___block_invoke_58;
    v22[3] = &unk_1E8732090;
    v15 = &v23;
    v22[4] = self;
    v23 = requestCopy;
    v16 = requestCopy;
    [v14 startWithPurchaseResponseBlock:v22 completionBlock:&__block_literal_global_64];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v8 setObject:@"Error making purchase: no buy params specified in request" forKey:*MEMORY[0x1E696A578]];
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TVCKCloudDataClientError" code:0 userInfo:v8];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v25 = __38__VUIStoreAcquisition__handleRequest___block_invoke;
    v26 = &unk_1E872E008;
    selfCopy = self;
    v28 = requestCopy;
    v29 = v17;
    v18 = MEMORY[0x1E696AF00];
    v19 = requestCopy;
    v14 = v17;
    if ([v18 isMainThread])
    {
      v20 = v25(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v15 = &v28;
    v21 = VUIDefaultLogObject(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [VUIStoreAcquisition _handleRequest:v21];
    }
  }
}

void __38__VUIStoreAcquisition__handleRequest___block_invoke_58(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 URLResponse];
  v5 = [v4 bodyData];

  if (v5)
  {
    v32 = 0;
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v32];
    v7 = v32;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = [v3 error];
  v9 = v8;
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [v11 domain];
  if ([v12 isEqualToString:*MEMORY[0x1E69E46D0]])
  {
    v13 = [v11 code];

    if (v13 == 16)
    {
      v15 = 1;
      goto LABEL_18;
    }
  }

  else
  {
  }

  v16 = [v6 objectForKey:*MEMORY[0x1E69E4830]];
  v15 = v16 != 0;

  if (!v7 && !v11 && !v16 && v6)
  {
    LOBYTE(v15) = 0;
    v7 = 0;
    goto LABEL_21;
  }

LABEL_18:
  v17 = VUIDefaultLogObject(v14);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v34 = v11;
    v35 = 2112;
    v36 = v7;
    v37 = 1024;
    v38 = v15;
    _os_log_error_impl(&dword_1E323F000, v17, OS_LOG_TYPE_ERROR, "Error making purchse: [%@] plist error [%@] Was cancelled [%d]", buf, 0x1Cu);
  }

LABEL_21:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v24 = __38__VUIStoreAcquisition__handleRequest___block_invoke_60;
  v25 = &unk_1E872FB50;
  v18 = *(a1 + 40);
  v26 = *(a1 + 32);
  v27 = v3;
  v28 = v6;
  v29 = v18;
  v30 = v11;
  v31 = v15;
  v19 = MEMORY[0x1E696AF00];
  v20 = v11;
  v21 = v6;
  v22 = v3;
  if ([v19 isMainThread])
  {
    v24(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __38__VUIStoreAcquisition__handleRequest___block_invoke_60(uint64_t a1)
{
  ++*(*(a1 + 32) + 16);
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  [*(a1 + 32) _processFirstRequest];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);

  return [v4 _handleResponse:v5 responseDict:v6 forRequest:v7 error:v8 cancelled:v9];
}

- (void)_handleResponse:(id)response responseDict:(id)dict forRequest:(id)request error:(id)error cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v31 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dictCopy = dict;
  requestCopy = request;
  errorCopy = error;
  if (errorCopy)
  {
    v15 = 1;
  }

  else
  {
    v15 = dictCopy == 0;
  }

  v16 = 2;
  if (v15)
  {
    v16 = 0;
  }

  if (cancelledCopy)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  properties = [requestCopy properties];
  urlBagKey = [properties urlBagKey];

  completionBlock = [requestCopy completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [requestCopy completionBlock];
    (completionBlock2)[2](completionBlock2, v17, dictCopy, errorCopy);
  }

  uRLResponse = [responseCopy URLResponse];
  allHeaderFields = [uRLResponse allHeaderFields];
  vui_appleTimingAppHeaderValue = [allHeaderFields vui_appleTimingAppHeaderValue];

  v26 = VUIDefaultLogObject(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v29 = 134217984;
    v30 = vui_appleTimingAppHeaderValue;
    _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_INFO, "Time to process buy in ms [%ld]", &v29, 0xCu);
  }

  if (v17 == 2 && (!urlBagKey || [urlBagKey isEqualToString:@"buyProduct"]))
  {
    v27 = +[VUIMediaLibraryManager defaultManager];
    deviceMediaLibrary = [v27 deviceMediaLibrary];
    [deviceMediaLibrary updateFromCloudWithReason:1];
  }
}

- (void)postCrossProcessNotificationWithBuyParams:(id)params error:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  errorCopy = error;
  v7 = objc_opt_new();
  v8 = v7;
  if (errorCopy)
  {
    [v7 setObject:errorCopy forKeyedSubscript:@"VUIStoreAcquisitionCrossProcessNotificationKeyError"];
  }

  v9 = [paramsCopy length];
  if (v9)
  {
    v9 = [v8 setObject:paramsCopy forKeyedSubscript:@"VUIStoreAcquisitionCrossProcessNotificationKeyBuyParams"];
  }

  v10 = VUIDefaultLogObject(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = paramsCopy;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_INFO, "Posting VUIStoreAcquisitionCrossProcessNotification with buy params: %@, error: %@", &v12, 0x16u);
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter vui_postNotificationName:@"com.apple.VideosUI.StoreAcquisitionCrossProcessNotification" object:0 userInfo:v8];
}

@end