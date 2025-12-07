@interface CLFindMyAccessoryRangingManager
- (CLFindMyAccessoryRangingManager)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (void)connectToDevice:(id)device;
- (void)disconnectFromDevice:(id)device;
- (void)fetchFirmwareVersionFromDevice:(id)device;
- (void)handleInterruption;
- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message;
- (void)initRoseWithParameters:(id)parameters onDevice:(id)device;
- (void)prepareForStartRangingOnDevice:(id)device;
- (void)setRoseRangingParameters:(id)parameters onDevice:(id)device;
- (void)startEventCounterOnDevice:(id)device;
- (void)startRangingWithParameters:(id)parameters onDevice:(id)device;
- (void)stopEventCounterOnDevice:(id)device;
- (void)stopRangingOnDevice:(id)device;
- (void)stopRoseWithParameters:(id)parameters onDevice:(id)device;
@end

@implementation CLFindMyAccessoryRangingManager

- (CLFindMyAccessoryRangingManager)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  v9.receiver = self;
  v9.super_class = CLFindMyAccessoryRangingManager;
  v6 = [(CLFindMyAccessoryRangingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, delegate);
    if (queue)
    {
      v7->_delegateQueue = queue;
      dispatch_retain(queue);
    }

    else
    {
      v7->_delegateQueue = dispatch_queue_create("com.apple.findMyAccessoryRangingManager.privateQueue", 0);
    }

    operator new();
  }

  return 0;
}

- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message
{
  var0 = message.var0;
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6B920);
  }

  v4 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
  {
    v5 = CLConnectionMessage::name(*var0);
    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    *buf = 136315138;
    v15 = v6;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "Got Reply: message: %s", buf, 0xCu);
  }

  v7 = sub_19B87DD40();
  if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6B920);
    }

    v8 = qword_1EAFE4700;
    v9 = CLConnectionMessage::name(*var0);
    if (*(v9 + 23) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *v9;
    }

    v12 = 136315138;
    v13 = v10;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v8, 16, "Got Reply: message: %s", &v12, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryRangingManager handleMessage:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

- (void)handleInterruption
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6B920);
  }

  v3 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Connection to locationd interrupted!!", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6B920);
    }

    v13[0] = 0;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4700, 16, "Connection to locationd interrupted!!", v13, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryRangingManager handleInterruption]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = objc_alloc(MEMORY[0x1E696ABC0]);
  v14 = *MEMORY[0x1E696A578];
  v15 = @"Connection to locationd interrupted!";
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, &v15, &v14, 1);
  v10 = objc_msgSend_initWithDomain_code_userInfo_(v6, v9, @"kCLErrorDomainPrivate", 8, v8);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryRangingManager_didFailWithError_forDevice_(Weak, v12, self, v10, 0);
}

- (void)connectToDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = *MEMORY[0x1E696A578];
  v12[0] = @"Feature Not Supported";
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v12, &v11, 1);
  v8 = objc_msgSend_initWithDomain_code_userInfo_(v4, v7, @"kCLErrorDomainPrivate", 38, v6);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryRangingManager_didFailWithError_forDevice_(Weak, v10, self, v8, 0);
}

- (void)disconnectFromDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = *MEMORY[0x1E696A578];
  v12[0] = @"Feature Not Supported";
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v12, &v11, 1);
  v8 = objc_msgSend_initWithDomain_code_userInfo_(v4, v7, @"kCLErrorDomainPrivate", 38, v6);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryRangingManager_didFailWithError_forDevice_(Weak, v10, self, v8, 0);
}

- (void)initRoseWithParameters:(id)parameters onDevice:(id)device
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Feature Not Supported";
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v13, &v12, 1);
  v9 = objc_msgSend_initWithDomain_code_userInfo_(v5, v8, @"kCLErrorDomainPrivate", 38, v7);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryRangingManager_didFailWithError_forDevice_(Weak, v11, self, v9, 0);
}

- (void)stopRoseWithParameters:(id)parameters onDevice:(id)device
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Feature Not Supported";
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v13, &v12, 1);
  v9 = objc_msgSend_initWithDomain_code_userInfo_(v5, v8, @"kCLErrorDomainPrivate", 38, v7);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryRangingManager_didFailWithError_forDevice_(Weak, v11, self, v9, 0);
}

- (void)setRoseRangingParameters:(id)parameters onDevice:(id)device
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Feature Not Supported";
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v13, &v12, 1);
  v9 = objc_msgSend_initWithDomain_code_userInfo_(v5, v8, @"kCLErrorDomainPrivate", 38, v7);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryRangingManager_didFailWithError_forDevice_(Weak, v11, self, v9, 0);
}

- (void)prepareForStartRangingOnDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = *MEMORY[0x1E696A578];
  v12[0] = @"Feature Not Supported";
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v12, &v11, 1);
  v8 = objc_msgSend_initWithDomain_code_userInfo_(v4, v7, @"kCLErrorDomainPrivate", 38, v6);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryRangingManager_didFailWithError_forDevice_(Weak, v10, self, v8, 0);
}

- (void)startRangingWithParameters:(id)parameters onDevice:(id)device
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Feature Not Supported";
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v13, &v12, 1);
  v9 = objc_msgSend_initWithDomain_code_userInfo_(v5, v8, @"kCLErrorDomainPrivate", 38, v7);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryRangingManager_didFailWithError_forDevice_(Weak, v11, self, v9, 0);
}

- (void)stopRangingOnDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = *MEMORY[0x1E696A578];
  v12[0] = @"Feature Not Supported";
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v12, &v11, 1);
  v8 = objc_msgSend_initWithDomain_code_userInfo_(v4, v7, @"kCLErrorDomainPrivate", 38, v6);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryRangingManager_didFailWithError_forDevice_(Weak, v10, self, v8, 0);
}

- (void)startEventCounterOnDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = *MEMORY[0x1E696A578];
  v12[0] = @"Feature Not Supported";
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v12, &v11, 1);
  v8 = objc_msgSend_initWithDomain_code_userInfo_(v4, v7, @"kCLErrorDomainPrivate", 38, v6);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryRangingManager_didFailWithError_forDevice_(Weak, v10, self, v8, 0);
}

- (void)stopEventCounterOnDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = *MEMORY[0x1E696A578];
  v12[0] = @"Feature Not Supported";
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v12, &v11, 1);
  v8 = objc_msgSend_initWithDomain_code_userInfo_(v4, v7, @"kCLErrorDomainPrivate", 38, v6);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryRangingManager_didFailWithError_forDevice_(Weak, v10, self, v8, 0);
}

- (void)fetchFirmwareVersionFromDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = *MEMORY[0x1E696A578];
  v12[0] = @"Feature Not Supported";
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v12, &v11, 1);
  v8 = objc_msgSend_initWithDomain_code_userInfo_(v4, v7, @"kCLErrorDomainPrivate", 38, v6);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryRangingManager_didFailWithError_forDevice_(Weak, v10, self, v8, 0);
}

@end