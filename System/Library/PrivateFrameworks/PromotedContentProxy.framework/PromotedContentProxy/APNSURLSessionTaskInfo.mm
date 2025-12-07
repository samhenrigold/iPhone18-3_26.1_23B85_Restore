@interface APNSURLSessionTaskInfo
- (APNSURLSessionTaskInfo)initWithTask:(id)task delegate:(id)delegate modes:(id)modes;
- (NSURLSessionDataDelegate)delegate;
- (void)invalidate;
- (void)perform:(id)perform waitUntilDone:(BOOL)done;
@end

@implementation APNSURLSessionTaskInfo

- (APNSURLSessionTaskInfo)initWithTask:(id)task delegate:(id)delegate modes:(id)modes
{
  taskCopy = task;
  delegateCopy = delegate;
  modesCopy = modes;
  v27.receiver = self;
  v27.super_class = APNSURLSessionTaskInfo;
  v12 = [(APNSURLSessionTaskInfo *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v18 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v14, v15, v16, v17);
    thread = v13->_thread;
    v13->_thread = v18;

    v24 = objc_msgSend_copy(modesCopy, v20, v21, v22, v23);
    modes = v13->_modes;
    v13->_modes = v24;

    objc_storeStrong(&v13->_task, task);
  }

  return v13;
}

- (void)perform:(id)perform waitUntilDone:(BOOL)done
{
  doneCopy = done;
  v19 = objc_msgSend_copy(perform, a2, perform, done, v4);
  v11 = objc_msgSend_thread(self, v7, v8, v9, v10);
  v12 = MEMORY[0x2666F5110](v19);
  v17 = objc_msgSend_modes(self, v13, v14, v15, v16);
  objc_msgSend_performSelector_onThread_withObject_waitUntilDone_modes_(self, v18, sel_performBlockOnClientThread_, v11, v12, doneCopy, v17);
}

- (void)invalidate
{
  objc_msgSend_setDelegate_(self, a2, 0, v2, v3);

  MEMORY[0x2821F9670](self, sel_setThread_, 0, v5, v6);
}

- (NSURLSessionDataDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end