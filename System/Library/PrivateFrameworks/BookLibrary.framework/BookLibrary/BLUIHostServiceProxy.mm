@interface BLUIHostServiceProxy
- (BLDownloadQueue)downloadQueue;
- (BLDownloadQueueUIManagerProtocol)uiManagerDelegate;
- (BLRequest)request;
- (BLUIHostServiceProxy)initWithUIManager:(id)manager forRequest:(id)request inDownloadQueue:(id)queue;
- (id)_topMostViewController;
- (id)_window;
- (void)handleAuthenticateRequest:(id)request withReply:(id)reply;
- (void)handleDialogRequest:(id)request withReply:(id)reply;
- (void)handleEngagementRequest:(id)request withReply:(id)reply;
@end

@implementation BLUIHostServiceProxy

- (BLUIHostServiceProxy)initWithUIManager:(id)manager forRequest:(id)request inDownloadQueue:(id)queue
{
  managerCopy = manager;
  requestCopy = request;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = BLUIHostServiceProxy;
  v11 = [(BLUIHostServiceProxy *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_request, requestCopy);
    objc_storeWeak(&v12->_downloadQueue, queueCopy);
    objc_storeWeak(&v12->_uiManagerDelegate, managerCopy);
    v13 = objc_alloc_init(BLUIHostServiceNonUI);
    fallback = v12->_fallback;
    v12->_fallback = v13;
  }

  return v12;
}

- (void)handleAuthenticateRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241D0E88C;
  v15[3] = &unk_278D15718;
  v15[4] = self;
  v8 = replyCopy;
  v17 = v8;
  v9 = requestCopy;
  v16 = v9;
  v12 = MEMORY[0x245CFEDE0](v15);
  if (v12)
  {
    if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v10, v11))
    {
      v12[2](v12);
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_241D0EC30;
      v13[3] = &unk_278D15740;
      v14 = v12;
      dispatch_async(MEMORY[0x277D85CD0], v13);
    }
  }
}

- (void)handleDialogRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241D0ED94;
  v15[3] = &unk_278D15718;
  v15[4] = self;
  v8 = replyCopy;
  v17 = v8;
  v9 = requestCopy;
  v16 = v9;
  v12 = MEMORY[0x245CFEDE0](v15);
  if (v12)
  {
    if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v10, v11))
    {
      v12[2](v12);
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_241D0F1D8;
      v13[3] = &unk_278D15740;
      v14 = v12;
      dispatch_async(MEMORY[0x277D85CD0], v13);
    }
  }
}

- (void)handleEngagementRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241D0F33C;
  v15[3] = &unk_278D15718;
  v15[4] = self;
  v8 = replyCopy;
  v17 = v8;
  v9 = requestCopy;
  v16 = v9;
  v12 = MEMORY[0x245CFEDE0](v15);
  if (v12)
  {
    if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v10, v11))
    {
      v12[2](v12);
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_241D0F89C;
      v13[3] = &unk_278D15740;
      v14 = v12;
      dispatch_async(MEMORY[0x277D85CD0], v13);
    }
  }
}

- (id)_window
{
  sub_241D10118();
  if (objc_opt_class())
  {
    v2 = sub_241D10118();
    v5 = objc_msgSend_sharedApplication(v2, v3, v4);
    v8 = objc_msgSend_keyWindow(v5, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_topMostViewController
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_241D0FACC;
  v11 = sub_241D0FADC;
  v12 = 0;
  sub_241D10118();
  if (objc_opt_class() && (sub_241D10250(), objc_opt_class()) && (sub_241D104C0(), objc_opt_class()))
  {
    v2 = _os_activity_create(&dword_241D0D000, "Find Top Most View Controller", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241D0FAE4;
    block[3] = &unk_278D157E0;
    block[4] = &v7;
    os_activity_apply(v2, block);
  }

  else
  {
    v2 = BLDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_241D0D000, v2, OS_LOG_TYPE_ERROR, "[UIHostServiceProxy]: failed to soft link UIKit!", v5, 2u);
    }
  }

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

- (BLDownloadQueue)downloadQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadQueue);

  return WeakRetained;
}

- (BLRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

- (BLDownloadQueueUIManagerProtocol)uiManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_uiManagerDelegate);

  return WeakRetained;
}

@end