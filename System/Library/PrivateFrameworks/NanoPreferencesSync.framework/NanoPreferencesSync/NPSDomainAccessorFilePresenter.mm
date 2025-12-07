@interface NPSDomainAccessorFilePresenter
- (BOOL)isCurrent;
- (NPSDomainAccessorFilePresenter)initWithDelegate:(id)delegate domainURL:(id)l;
- (NPSDomainAccessorFilePresenterDelegate)delegate;
- (id)synchronizeForReadingOnly:(BOOL)only handler:(id)handler;
- (void)dealloc;
- (void)relinquishPresentedItemToWriter:(id)writer;
@end

@implementation NPSDomainAccessorFilePresenter

- (BOOL)isCurrent
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  presenterOperationQueue = self->_presenterOperationQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__NPSDomainAccessorFilePresenter_isCurrent__block_invoke;
  v6[3] = &unk_1E8129540;
  v6[4] = self;
  v6[5] = &v7;
  v3 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:v6];
  v11[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(NSOperationQueue *)presenterOperationQueue addOperations:v4 waitUntilFinished:1];

  LOBYTE(presenterOperationQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return presenterOperationQueue;
}

- (NPSDomainAccessorFilePresenter)initWithDelegate:(id)delegate domainURL:(id)l
{
  v29 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  lCopy = l;
  if (!delegateCopy)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"delegate: (%@)", 0];
    v20 = [v17 exceptionWithName:v18 reason:v19 userInfo:0];
    v21 = v20;

    objc_exception_throw(v20);
  }

  v8 = lCopy;
  v22.receiver = self;
  v22.super_class = NPSDomainAccessorFilePresenter;
  v9 = [(NPSDomainAccessorFilePresenter *)&v22 init];
  if (v9)
  {
    v10 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v24 = v9;
      v25 = 2048;
      v26 = delegateCopy;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "self: (%p); delegate: (%p); domainURL: (%@)", buf, 0x20u);
    }

    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v9->_domainURL, l);
    v9->_current = 0;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.nanoprefsync.frmrk.filePresenter", v11);
    presenterUnderlyingQueue = v9->_presenterUnderlyingQueue;
    v9->_presenterUnderlyingQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    presenterOperationQueue = v9->_presenterOperationQueue;
    v9->_presenterOperationQueue = v14;

    [(NSOperationQueue *)v9->_presenterOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v9->_presenterOperationQueue setUnderlyingQueue:v9->_presenterUnderlyingQueue];
  }

  return v9;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "self: (%p)", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NPSDomainAccessorFilePresenter;
  [(NPSDomainAccessorFilePresenter *)&v4 dealloc];
}

- (id)synchronizeForReadingOnly:(BOOL)only handler:(id)handler
{
  onlyCopy = only;
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [NPSDomainAccessorFilePresenter synchronizeForReadingOnly:handler:];
  }

  v7 = handlerCopy;
  v8 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
  domainURL = self->_domainURL;
  if (onlyCopy)
  {
    v22 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__NPSDomainAccessorFilePresenter_synchronizeForReadingOnly_handler___block_invoke;
    v20[3] = &unk_1E8129638;
    v20[4] = self;
    v10 = &v21;
    v21 = v7;
    v11 = &v22;
    [v8 coordinateReadingItemAtURL:domainURL options:1 error:&v22 byAccessor:v20];
  }

  else
  {
    v19 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__NPSDomainAccessorFilePresenter_synchronizeForReadingOnly_handler___block_invoke_2;
    v17[3] = &unk_1E8129638;
    v17[4] = self;
    v10 = &v18;
    v18 = v7;
    v11 = &v19;
    [v8 coordinateWritingItemAtURL:domainURL options:0 error:&v19 byAccessor:v17];
  }

  v12 = *v11;

  if (v12)
  {
    v13 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_domainURL;
      *buf = 138412546;
      v24 = v14;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_1C0D93000, v13, OS_LOG_TYPE_DEFAULT, "Failed to file-coordinate URL (%@) with error: (%@)", buf, 0x16u);
    }

    v15 = v12;
  }

  return v12;
}

uint64_t __68__NPSDomainAccessorFilePresenter_synchronizeForReadingOnly_handler___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 8) = result;
  return result;
}

uint64_t __68__NPSDomainAccessorFilePresenter_synchronizeForReadingOnly_handler___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 8) = result;
  return result;
}

- (void)relinquishPresentedItemToWriter:(id)writer
{
  v9 = *MEMORY[0x1E69E9840];
  writerCopy = writer;
  v5 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C0D93000, v5, OS_LOG_TYPE_DEFAULT, "self: (%p)", &v7, 0xCu);
  }

  self->_current = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained filePresenterDidBecomeNonCurrent:self];

  if (writerCopy)
  {
    writerCopy[2](writerCopy, 0);
  }
}

- (NPSDomainAccessorFilePresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end