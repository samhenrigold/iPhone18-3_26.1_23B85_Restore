@interface CKMediaObjectImageProvider
- (BOOL)_lock_cancelImageRequest:(int64_t)request;
- (CKMediaObjectImageProvider)init;
- (id)_imagePreviewForMediaObject:(id)object isSynchronous:(BOOL)synchronous requestID:(int64_t)d;
- (id)_lock_imagePreviewForMediaObject:(id)object isSynchronous:(BOOL)synchronous requestID:(int64_t)d;
- (int64_t)numberOfOutstandingHandlers;
- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (void)_handleFileTransferDidChangeNotification:(id)notification;
- (void)_handlePreviewDidChangeNotification:(id)notification;
- (void)cancelImageRequest:(int64_t)request;
@end

@implementation CKMediaObjectImageProvider

- (CKMediaObjectImageProvider)init
{
  v13.receiver = self;
  v13.super_class = CKMediaObjectImageProvider;
  v2 = [(CKMediaObjectImageProvider *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_requestDetailsByRequestID = v3->_lock_requestDetailsByRequestID;
    v3->_lock_requestDetailsByRequestID = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_mediaObjectsPendingTransferFinalizationByRequestID = v3->_lock_mediaObjectsPendingTransferFinalizationByRequestID;
    v3->_lock_mediaObjectsPendingTransferFinalizationByRequestID = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_activeRequestIDsByTransferGUID = v3->_lock_activeRequestIDsByTransferGUID;
    v3->_lock_activeRequestIDsByTransferGUID = v8;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handlePreviewDidChangeNotification_ name:@"CKPreviewDidChangeNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__handleFileTransferDidChangeNotification_ name:@"CKFileTransferUpdatedNotification" object:0];
  }

  return v3;
}

- (int64_t)numberOfOutstandingHandlers
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_requestDetailsByRequestID count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v51[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = assetCopy;
    v17 = _PhotoKitAssetForMediaObjectAsset(v16);
    v18 = v17;
    if (v17)
    {
      v19 = _PhotoKitMediaProvider(v17);
      v20 = [v19 requestImageForAsset:v18 targetSize:mode contentMode:optionsCopy options:handlerCopy resultHandler:{width, height}];
    }

    else
    {
      LODWORD(v20) = atomic_fetch_add(_makeNextRequestID_lastRequestID, 1u);
      mediaObject = [v16 mediaObject];
      v20 = v20;
      v42 = -[CKMediaObjectImageProvider _imagePreviewForMediaObject:isSynchronous:requestID:](self, "_imagePreviewForMediaObject:isSynchronous:requestID:", mediaObject, [optionsCopy isSynchronous], v20);
      if (v42)
      {
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
            transferGUID = [mediaObject transferGUID];
            *buf = 138412546;
            v47 = v23;
            v48 = 2112;
            v49 = transferGUID;
            _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Got non-nil UIImage preview for %@-%@, calling result handler", buf, 0x16u);
          }
        }

        handlerCopy[2](handlerCopy, v42, 0);
      }

      else if (([optionsCopy isSynchronous] & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
            transferGUID2 = [mediaObject transferGUID];
            *buf = 138412546;
            v47 = v26;
            v48 = 2112;
            v49 = transferGUID2;
            _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Got nil preview for %@-%@, deferring result handler", buf, 0x16u);
          }
        }

        os_unfair_lock_lock(&self->_lock);
        transferGUID3 = [mediaObject transferGUID];
        if (transferGUID3)
        {
          v28 = [(NSMutableDictionary *)self->_lock_activeRequestIDsByTransferGUID objectForKeyedSubscript:transferGUID3];
          v29 = v28;
          if (v28)
          {
            [v28 addIndex:v20];
          }

          else
          {
            v29 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:v20];
            [(NSMutableDictionary *)self->_lock_activeRequestIDsByTransferGUID setObject:v29 forKeyedSubscript:transferGUID3];
          }
        }

        resultHandlerQueue = [optionsCopy resultHandlerQueue];
        v31 = resultHandlerQueue;
        if (resultHandlerQueue)
        {
          v32 = resultHandlerQueue;
        }

        else
        {
          v32 = MEMORY[0x1E69E96A0];
          v33 = MEMORY[0x1E69E96A0];
        }

        v34 = [CKMediaRequestDetails alloc];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __96__CKMediaObjectImageProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
        v43[3] = &unk_1E72F7900;
        v44 = v32;
        v45 = handlerCopy;
        v39 = v32;
        v35 = [(CKMediaRequestDetails *)v34 initWithRequestID:v20 transferGUID:transferGUID3 resultHandler:v43];
        lock_requestDetailsByRequestID = self->_lock_requestDetailsByRequestID;
        v37 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
        [(NSMutableDictionary *)lock_requestDetailsByRequestID setObject:v35 forKeyedSubscript:v37];

        os_unfair_lock_unlock(&self->_lock);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v47 = "[CKMediaObjectImageProvider requestImageForAsset:targetSize:contentMode:options:resultHandler:]";
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "%s got non-CKMediaObjectBackedAsset PXDisplayAsset!", buf, 0xCu);
      }
    }

    v16 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"PXDisplayAsset %@ is not a CKMediaObjectBackedAsset", assetCopy}];
    v50 = *MEMORY[0x1E6978DF0];
    v51[0] = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    (handlerCopy)[2](handlerCopy, 0, v18);
    v20 = 0;
  }

  return v20;
}

void __96__CKMediaObjectImageProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__CKMediaObjectImageProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2;
  block[3] = &unk_1E72EDD88;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (int64_t)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  videoCopy = video;
  optionsCopy = options;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v33 = "[CKMediaObjectImageProvider requestPlayerItemForVideo:options:resultHandler:]";
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "%s got non-CKMediaObjectBackedAsset PXDisplayAsset!", buf, 0xCu);
      }
    }

    v10 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"PXDisplayAsset %@ is not a CKMediaObjectBackedAsset", videoCopy}];
    v30 = *MEMORY[0x1E6978DF0];
    v31 = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    handlerCopy[2](handlerCopy, 0, v12);
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v10 = videoCopy;
  v11 = _PhotoKitAssetForMediaObjectAsset(v10);
  v12 = v11;
  if (!v11)
  {
    mediaObject = [v10 mediaObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      asset = [mediaObject asset];
      v19 = [MEMORY[0x1E69880B0] playerItemWithAsset:asset];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__CKMediaObjectImageProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke;
      block[3] = &unk_1E72EE5D8;
      v26 = v19;
      v27 = handlerCopy;
      v20 = v19;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      add = atomic_fetch_add(_makeNextRequestID_lastRequestID, 1u);

      v14 = add;
      goto LABEL_10;
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v33 = "[CKMediaObjectImageProvider requestPlayerItemForVideo:options:resultHandler:]";
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "%s got non-CKMovieMediaObject for movie request!", buf, 0xCu);
      }
    }

    v23 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"CKMediaObject %@ is not a CKMovieMediaObject", mediaObject}];
    v28 = *MEMORY[0x1E6978DF0];
    v29 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    handlerCopy[2](handlerCopy, 0, v24);

    goto LABEL_9;
  }

  v13 = _PhotoKitMediaProvider(v11);
  v14 = [v13 requestPlayerItemForVideo:v12 options:optionsCopy resultHandler:handlerCopy];

LABEL_10:
  return v14;
}

- (void)cancelImageRequest:(int64_t)request
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(CKMediaObjectImageProvider *)self _lock_cancelImageRequest:request];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v7 = _PhotoKitMediaProvider(v6);
    [v7 cancelImageRequest:request];
  }
}

- (id)_imagePreviewForMediaObject:(id)object isSynchronous:(BOOL)synchronous requestID:(int64_t)d
{
  synchronousCopy = synchronous;
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(CKMediaObjectImageProvider *)self _lock_imagePreviewForMediaObject:objectCopy isSynchronous:synchronousCopy requestID:d];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_imagePreviewForMediaObject:(id)object isSynchronous:(BOOL)synchronous requestID:(int64_t)d
{
  v23 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  os_unfair_lock_assert_owner(&self->_lock);
  testImage = [(CKMediaObjectImageProvider *)self testImage];

  if (testImage)
  {
    testImage2 = [(CKMediaObjectImageProvider *)self testImage];
    [(CKMediaObjectImageProvider *)self setTestImage:0];
  }

  else
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:d];
    transfer = [objectCopy transfer];
    if ([transfer isFromMomentShare] && objc_msgSend(transfer, "transferState") <= 3)
    {
      if (!synchronous)
      {
        [(NSMutableDictionary *)self->_lock_mediaObjectsPendingTransferFinalizationByRequestID setObject:objectCopy forKeyedSubscript:v11];
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            transfer2 = [objectCopy transfer];
            guid = [transfer2 guid];
            v19 = 138412546;
            v20 = guid;
            v21 = 2048;
            transferState = [transfer transferState];
            _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Transfer %@ is < finished %ld deferring preview generation", &v19, 0x16u);
          }
        }
      }

      testImage2 = 0;
    }

    else
    {
      [(NSMutableDictionary *)self->_lock_mediaObjectsPendingTransferFinalizationByRequestID setObject:0 forKeyedSubscript:v11];
      v16 = +[CKUIBehavior sharedBehaviors];
      [v16 previewMaxWidth];
      v17 = [objectCopy previewForWidth:0 orientation:?];

      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        testImage2 = v17;
      }

      else
      {
        testImage2 = 0;
      }
    }
  }

  return testImage2;
}

- (BOOL)_lock_cancelImageRequest:(int64_t)request
{
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:request];
  v6 = [(NSMutableDictionary *)self->_lock_requestDetailsByRequestID objectForKeyedSubscript:v5];
  if (v6)
  {
    [(NSMutableDictionary *)self->_lock_requestDetailsByRequestID setObject:0 forKeyedSubscript:v5];
    transferGUID = [v6 transferGUID];

    if (transferGUID)
    {
      lock_activeRequestIDsByTransferGUID = self->_lock_activeRequestIDsByTransferGUID;
      transferGUID2 = [v6 transferGUID];
      v10 = [(NSMutableDictionary *)lock_activeRequestIDsByTransferGUID objectForKeyedSubscript:transferGUID2];

      [v10 removeIndex:request];
      if (v10 && ![v10 count])
      {
        v11 = self->_lock_activeRequestIDsByTransferGUID;
        transferGUID3 = [v6 transferGUID];
        [(NSMutableDictionary *)v11 setObject:0 forKeyedSubscript:transferGUID3];
      }
    }
  }

  [(NSMutableDictionary *)self->_lock_mediaObjectsPendingTransferFinalizationByRequestID setObject:0 forKeyedSubscript:v5];

  return v6 != 0;
}

- (void)_handlePreviewDidChangeNotification:(id)notification
{
  v20 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  object2 = [notificationCopy object];
  v8 = object2;
  if (isKindOfClass)
  {
    transferGUID = [(__CFString *)object2 transferGUID];
    if (transferGUID)
    {
      os_unfair_lock_lock(&self->_lock);
      v10 = [(NSMutableDictionary *)self->_lock_activeRequestIDsByTransferGUID objectForKeyedSubscript:transferGUID];
      v11 = [v10 copy];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __66__CKMediaObjectImageProvider__handlePreviewDidChangeNotification___block_invoke;
      v16[3] = &unk_1E72EF010;
      v16[4] = self;
      v17 = v8;
      [v11 enumerateIndexesUsingBlock:v16];
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  else
  {
    v12 = objc_opt_class();

    if (v12)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = NSStringFromClass(v12);
      v8 = [v13 stringWithFormat:@"of type: %@", v14];
    }

    else
    {
      v8 = @"nil";
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v8;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Notification object received was %@ instead of expected type CKMediaObject, _handlePreviewDidChangeNotification does nothing", buf, 0xCu);
      }
    }
  }
}

void __66__CKMediaObjectImageProvider__handlePreviewDidChangeNotification___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
        v9 = [*(a1 + 40) transferGUID];
        v14 = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Got incoming preview change notification for pending handler %@ - %@", &v14, 0x16u);
      }
    }

    v10 = [*(a1 + 32) _lock_imagePreviewForMediaObject:*(a1 + 40) isSynchronous:0 requestID:a2];
    if (v10)
    {
      v11 = [v6 resultHandler];

      if (v11)
      {
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            LOWORD(v14) = 0;
            _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Got preview after preview change notification, returning handler", &v14, 2u);
          }
        }

        v13 = [v6 resultHandler];
        (v13)[2](v13, v10, 0);
      }

      [*(a1 + 32) _lock_cancelImageRequest:a2];
    }
  }
}

- (void)_handleFileTransferDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__CKMediaObjectImageProvider__handleFileTransferDidChangeNotification___block_invoke;
  v6[3] = &unk_1E72EB8D0;
  v7 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __71__CKMediaObjectImageProvider__handleFileTransferDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [v2 guid];
  if (v3)
  {
    os_unfair_lock_lock((*(a1 + 40) + 24));
    v4 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v3];
    v5 = [v4 copy];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__CKMediaObjectImageProvider__handleFileTransferDidChangeNotification___block_invoke_2;
    v6[3] = &unk_1E72EFBB0;
    v6[4] = *(a1 + 40);
    [v5 enumerateIndexesUsingBlock:v6];
    os_unfair_lock_unlock((*(a1 + 40) + 24));
  }
}

void __71__CKMediaObjectImageProvider__handleFileTransferDidChangeNotification___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 40);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Transfer state changed for %@, attempting generation", &v14, 0xCu);
      }
    }

    v8 = [*(a1 + 32) _lock_imagePreviewForMediaObject:v6 isSynchronous:0 requestID:a2];
    if (v8)
    {
      v9 = *(*(a1 + 32) + 32);
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      v11 = [v9 objectForKey:v10];
      v12 = [v11 resultHandler];

      if (v12)
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            LOWORD(v14) = 0;
            _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Got preview after file transfer changed, returning handler", &v14, 2u);
          }
        }

        (v12)[2](v12, v8, 0);
      }

      [*(a1 + 32) _lock_cancelImageRequest:a2];
    }
  }
}

@end