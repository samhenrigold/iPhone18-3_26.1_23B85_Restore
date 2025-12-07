@interface VKCRemoveBackgroundRequestHandler
- (BOOL)isValidRequest:(id)request error:(id *)error;
- (VKCRemoveBackgroundRequestHandler)init;
- (void)_didEndForRequest:(uint64_t)request;
- (void)_willBeginForRequest:(uint64_t)request;
- (void)cancelRequest:(id)request;
- (void)performRequest:(id)request completion:(id)completion;
@end

@implementation VKCRemoveBackgroundRequestHandler

- (VKCRemoveBackgroundRequestHandler)init
{
  v10.receiver = self;
  v10.super_class = VKCRemoveBackgroundRequestHandler;
  v2 = [(VKCRemoveBackgroundRequestHandler *)&v10 init];
  if (v2)
  {
    service = [MEMORY[0x1E69AE3E0] service];
    service = v2->_service;
    v2->_service = service;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INTERACTIVE, 0);

    v7 = dispatch_queue_create("VKCRemoveBackgroundRequestHandlerQueue", v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (BOOL)isValidRequest:(id)request error:(id *)error
{
  requestCopy = request;
  photosRequest = [requestCopy photosRequest];

  if (photosRequest)
  {
    v7 = 1;
  }

  else
  {
    [requestCopy size];
    v7 = vk_cgImageRemoveBackgroundIsValidSize(error, v8, v9);
  }

  return v7;
}

- (void)performRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (vk_deviceSupportsRemoveBackground(completionCopy, v8))
  {
    v32 = 0;
    v9 = [(VKCRemoveBackgroundRequestHandler *)self isValidRequest:requestCopy error:&v32];
    v10 = v32;
    if (v9)
    {
      [(VKCRemoveBackgroundRequestHandler *)self _willBeginForRequest:requestCopy];
      v24 = self->_service;
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__VKCRemoveBackgroundRequestHandler_performRequest_completion___block_invoke;
      block[3] = &unk_1E7BE6B00;
      v28 = requestCopy;
      selfCopy = self;
      v30 = v24;
      v31 = completionCopy;
      v26 = v24;
      dispatch_async(queue, block);

      goto LABEL_8;
    }

    v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(VKCRemoveBackgroundRequestHandler *)v10 performRequest:v11 completion:v12, v13, v14, v15, v16, v17];
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.VisionKit.RemoveBackground" code:-8 userInfo:0];
    v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(VKCRemoveBackgroundRequestHandler *)v10 performRequest:v11 completion:v18, v19, v20, v21, v22, v23];
    }
  }

  (*(completionCopy + 2))(completionCopy, 0, v10);
LABEL_8:
}

void __63__VKCRemoveBackgroundRequestHandler_performRequest_completion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v40 = v3;
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_DEFAULT, "Beginning RemoveBGRequest: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) createMADRequest];
  v5 = [MEMORY[0x1E695DF00] date];
  if (v4)
  {
    v6 = [*(a1 + 32) pixelBuffer];
    v7 = [*(a1 + 32) photosRequest];
    v8 = [*(a1 + 32) identifier];
    v9 = [MEMORY[0x1E695DF00] date];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__VKCRemoveBackgroundRequestHandler_performRequest_completion___block_invoke_5;
    aBlock[3] = &unk_1E7BE6AD8;
    v10 = v9;
    v31 = v10;
    v28 = v4;
    v11 = v4;
    v32 = v11;
    v33 = *(a1 + 32);
    v29 = v5;
    v12 = v5;
    v13 = *(a1 + 40);
    v34 = v12;
    v35 = v13;
    v36 = *(a1 + 56);
    v14 = _Block_copy(aBlock);
    v15 = *(a1 + 48);
    if (v6)
    {
      v16 = v7;
      v38 = v11;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      [*(a1 + 32) setMADRequestID:{objc_msgSend(v15, "performRequests:onPixelBuffer:withOrientation:andIdentifier:completionHandler:", v17, v6, 0, v8, v14)}];
    }

    else
    {
      v37 = v11;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
      v18 = [v7 localIdentifier];
      v16 = v7;
      v19 = [v7 URL];
      [*(a1 + 32) setMADRequestID:{objc_msgSend(v15, "performRequests:onAssetWithLocalIdentifier:fromPhotoLibraryWithURL:completionHandler:", v17, v18, v19, v14)}];
    }

    v4 = v28;
    v5 = v29;
    v20 = v16;
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.VisionKit.RemoveBackground" code:-9 userInfo:0];
    v21 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __63__VKCRemoveBackgroundRequestHandler_performRequest_completion___block_invoke_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    [(VKCRemoveBackgroundRequestHandler *)*(a1 + 40) _didEndForRequest:?];
    (*(*(a1 + 56) + 16))();
  }
}

void __63__VKCRemoveBackgroundRequestHandler_performRequest_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  [v5 timeIntervalSinceDate:*(a1 + 32)];
  v7 = v6;

  v8 = objc_opt_class();
  v9 = [*(a1 + 40) results];
  v10 = [v9 firstObject];
  v11 = VKDynamicCast(v8, v10);

  if (!v4)
  {
    v4 = [*(a1 + 40) error];

    if (v4)
    {
      v4 = [*(a1 + 40) error];
    }
  }

  v12 = [*(a1 + 48) MADRequestID];
  [*(a1 + 48) setMADRequestID:0xFFFFFFFFLL];
  v13 = 0;
  if (v11 && !v4)
  {
    v13 = [[VKCRemoveBackgroundResult alloc] initWithMADResult:v11 request:*(a1 + 48)];
  }

  v14 = [MEMORY[0x1E695DF00] date];
  [v14 timeIntervalSinceDate:*(a1 + 56)];
  v16 = v15;

  v17 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 48);
    v19 = 134218754;
    v20 = v16;
    v21 = 2048;
    v22 = v7;
    v23 = 2112;
    v24 = v18;
    v25 = 1024;
    v26 = v12;
    _os_log_impl(&dword_1B4335000, v17, OS_LOG_TYPE_DEFAULT, "RemoveBG request completed with duration: %f\n madDuration: %f\n%@\n MadID: %d", &v19, 0x26u);
  }

  [(VKCRemoveBackgroundRequestHandler *)*(a1 + 64) _didEndForRequest:?];
  (*(*(a1 + 72) + 16))();
}

- (void)cancelRequest:(id)request
{
  service = self->_service;
  mADRequestID = [request MADRequestID];

  [(MADService *)service cancelRequestID:mADRequestID];
}

- (void)_willBeginForRequest:(uint64_t)request
{
  v3 = a2;
  v4 = v3;
  if (request)
  {
    maskOnly = [v3 maskOnly];
    v6 = maskOnly;
    v7 = _VKSignpostLog(maskOnly);
    v8 = os_signpost_enabled(v7);
    if (v6)
    {
      if (v8)
      {
        OUTLINED_FUNCTION_0_7();
        OUTLINED_FUNCTION_2_4();
        _os_signpost_emit_with_name_impl(v9, v10, v11, v12, v13, v14, v15, 2u);
      }

      v16 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (!OUTLINED_FUNCTION_3_4(v16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v8)
      {
        OUTLINED_FUNCTION_0_7();
        OUTLINED_FUNCTION_2_4();
        _os_signpost_emit_with_name_impl(v17, v18, v19, v20, v21, v22, v23, 2u);
      }

      v24 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (!OUTLINED_FUNCTION_3_4(v24))
      {
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_2_4();
    _os_log_impl(v25, v26, v27, v28, v29, 2u);
LABEL_11:
  }
}

- (void)_didEndForRequest:(uint64_t)request
{
  v3 = a2;
  v4 = v3;
  if (request)
  {
    maskOnly = [v3 maskOnly];
    v6 = maskOnly;
    v7 = _VKSignpostLog(maskOnly);
    v8 = os_signpost_enabled(v7);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        OUTLINED_FUNCTION_0_7();
        _os_signpost_emit_with_name_impl(v9, v7, OS_SIGNPOST_INTERVAL_END, v10, v11, v12, buf, 2u);
      }

      v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (!OUTLINED_FUNCTION_3_4(v13))
      {
        goto LABEL_11;
      }

      v25 = 0;
    }

    else
    {
      if (v8)
      {
        *v24 = 0;
        OUTLINED_FUNCTION_0_7();
        _os_signpost_emit_with_name_impl(v14, v7, OS_SIGNPOST_INTERVAL_END, v15, v16, v17, v24, 2u);
      }

      v18 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (!OUTLINED_FUNCTION_3_4(v18))
      {
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_2_4();
    _os_log_impl(v19, v20, v21, v22, v23, 2u);
LABEL_11:
  }
}

- (void)performRequest:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_5(&dword_1B4335000, a2, a3, "Request to remove background on an unsupported device. %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)performRequest:(uint64_t)a3 completion:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_5(&dword_1B4335000, a2, a3, "Request to remove background with an invalid image. %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __63__VKCRemoveBackgroundRequestHandler_performRequest_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_5(&dword_1B4335000, a2, a3, "Could not perform remove background due to nil request or inability to create a MAD request. %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end