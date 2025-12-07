@interface SFUserAlert
- (SFUserAlert)init;
- (SFUserAlert)initWithCoder:(id)coder;
- (_DWORD)createNotification;
- (__CFUserNotification)createNotification;
- (id)_defaultDictionary;
- (id)_mergedDict;
- (id)description;
- (int)createNotification;
- (void)_ensureXPCStarted;
- (void)_handleResponseForNotification:(__CFUserNotification *)notification flags:(unint64_t)flags;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_postNotification:(__CFUserNotification *)notification;
- (void)_present;
- (void)_presentBanner;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)present;
- (void)updateNotification;
- (void)userNotificationDictionaryResponse:(id)response;
- (void)userNotificationError:(id)error;
- (void)userNotificationResponse:(int)response;
- (void)userNotificationTextResponse:(id)response;
@end

@implementation SFUserAlert

- (SFUserAlert)init
{
  v6.receiver = self;
  v6.super_class = SFUserAlert;
  v2 = [(SFUserAlert *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_hasDefaultButton = 1;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SFUserAlert;
  [(SFUserAlert *)&v2 dealloc];
}

- (id)description
{
  v11 = 0;
  NSAppendPrintF(&v11, "<SFUserAlert %{ptr}", self);
  v3 = v11;
  v10 = v3;
  _mergedDict = [(SFUserAlert *)self _mergedDict];
  NSAppendPrintF(&v10, "internal options: %@", _mergedDict);
  v5 = v10;

  v9 = v5;
  NSAppendPrintF(&v9, ">");
  v6 = v9;
  v7 = v9;

  return v6;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__SFUserAlert_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)present
{
  if (self->_asBanner)
  {
    [(SFUserAlert *)self _presentBanner];
  }

  else
  {
    [(SFUserAlert *)self _present];
  }
}

- (void)_present
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__SFUserAlert__present__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__23__SFUserAlert__present__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = [*(a1 + 32) createNotification];
  result = *(a1 + 32);
  if (result[2])
  {

    return [result _postNotification:?];
  }

  return result;
}

- (void)_handleResponseForNotification:(__CFUserNotification *)notification flags:(unint64_t)flags
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = (flags & 3) + 1;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SFUserAlert__handleResponseForNotification_flags___block_invoke;
  block[3] = &unk_1E788DA50;
  block[4] = self;
  block[5] = v16;
  dispatch_async(dispatchQueue, block);
  v7 = CFUserNotificationGetResponseDictionary(notification);
  if (v7)
  {
    v8 = self->_dispatchQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__SFUserAlert__handleResponseForNotification_flags___block_invoke_2;
    v14[3] = &unk_1E788A658;
    v14[4] = self;
    v14[5] = v7;
    dispatch_async(v8, v14);
  }

  if (self->_textInput && self->_textInputTitle)
  {
    ResponseValue = CFUserNotificationGetResponseValue(notification, *MEMORY[0x1E695EEA8], 0);
    if (ResponseValue)
    {
      ResponseValue = [(__CFString *)ResponseValue copy];
    }

    v10 = self->_dispatchQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__SFUserAlert__handleResponseForNotification_flags___block_invoke_3;
    v12[3] = &unk_1E788A658;
    v12[4] = self;
    v13 = ResponseValue;
    v11 = ResponseValue;
    dispatch_async(v10, v12);
  }

  _Block_object_dispose(v16, 8);
}

uint64_t __52__SFUserAlert__handleResponseForNotification_flags___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

uint64_t __52__SFUserAlert__handleResponseForNotification_flags___block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t __52__SFUserAlert__handleResponseForNotification_flags___block_invoke_3(uint64_t a1)
{
  result = *(*(a1 + 32) + 72);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)_postNotification:(__CFUserNotification *)notification
{
  v17[1] = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__SFUserAlert__postNotification___block_invoke;
  aBlock[3] = &unk_1E788B260;
  aBlock[4] = self;
  aBlock[5] = notification;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  timeout = self->_timeout;
  if (timeout >= 0.0)
  {
    (*(v4 + 2))(v4);
    goto LABEL_3;
  }

  if (gLogCategory_SFUserAlert <= 90)
  {
    if (gLogCategory_SFUserAlert != -1)
    {
LABEL_6:
      LogPrintF(&gLogCategory_SFUserAlert, "[SFUserAlert _postNotification:]", 90, "### Cannot have negative timeout (%f)", timeout);
      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      timeout = self->_timeout;
      goto LABEL_6;
    }
  }

LABEL_8:
  errorHandler = self->_errorHandler;
  if (errorHandler)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A768];
    v16 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v11 = v10;
    v12 = @"?";
    if (v10)
    {
      v12 = v10;
    }

    v17[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = [v8 errorWithDomain:v9 code:-6737 userInfo:v13];
    errorHandler[2](errorHandler, v14);
  }

LABEL_3:
}

void __33__SFUserAlert__postNotification___block_invoke(uint64_t a1)
{
  v4 = callbackRoutingDict(a1);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(a1 + 40)];
  [v4 setObject:*(a1 + 32) forKeyedSubscript:v2];
  if (gLogCategory_SFUserAlert <= 50 && (gLogCategory_SFUserAlert != -1 || _LogCategory_Initialize()))
  {
    __33__SFUserAlert__postNotification___block_invoke_cold_1((a1 + 40));
  }

  *(*(a1 + 32) + 32) = CFUserNotificationCreateRunLoopSource(0, *(a1 + 40), notificationResponseHandler, 0);
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, *(*(a1 + 32) + 32), *MEMORY[0x1E695E8E0]);
}

- (void)_presentBanner
{
  if (gLogCategory_SFUserAlert <= 90 && (gLogCategory_SFUserAlert != -1 || _LogCategory_Initialize()))
  {
    [SFUserAlert _presentBanner];
  }
}

- (id)_defaultDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKeyedSubscript:*MEMORY[0x1E695EE58]];
  }

  message = self->_message;
  if (message)
  {
    [v4 setObject:message forKeyedSubscript:*MEMORY[0x1E695EE60]];
  }

  defaultButtonTitle = self->_defaultButtonTitle;
  if (defaultButtonTitle)
  {
    [v4 setObject:defaultButtonTitle forKeyedSubscript:*MEMORY[0x1E695EE78]];
  }

  alternateButtonTitle = self->_alternateButtonTitle;
  if (alternateButtonTitle)
  {
    [v4 setObject:alternateButtonTitle forKeyedSubscript:*MEMORY[0x1E695EE70]];
  }

  otherButtonTitle = self->_otherButtonTitle;
  if (otherButtonTitle)
  {
    [v4 setObject:otherButtonTitle forKeyedSubscript:*MEMORY[0x1E695EE98]];
  }

  if (self->_textInput)
  {
    textInputTitle = self->_textInputTitle;
    if (textInputTitle)
    {
      [v4 setObject:textInputTitle forKeyedSubscript:*MEMORY[0x1E695EEA0]];
      [v4 setObject:&stru_1F1D30528 forKeyedSubscript:*MEMORY[0x1E695EEA8]];
    }
  }

  return v4;
}

- (__CFUserNotification)createNotification
{
  error = 0;
  _mergedDict = [(SFUserAlert *)self _mergedDict];
  if (!self->_title)
  {
    [(SFUserAlert *)&error createNotification];
LABEL_15:
    v11 = v16;
    goto LABEL_17;
  }

  p_timeout = &self->_timeout;
  timeout = self->_timeout;
  if (timeout < 0.0)
  {
    [(SFUserAlert *)&error createNotification:&v16];
    goto LABEL_15;
  }

  if (self->_hasDefaultButton)
  {
    v6 = 3;
  }

  else
  {
    v6 = 35;
  }

  if (gLogCategory_SFUserAlert <= 50)
  {
    if (gLogCategory_SFUserAlert != -1 || (v7 = _LogCategory_Initialize(), timeout = *p_timeout, v7))
    {
      LogPrintF(&gLogCategory_SFUserAlert, "[SFUserAlert createNotification]", 50, "Creating CFUserNotification with _timeout=%.2f, options=%lu", timeout, v6);
      timeout = *p_timeout;
    }
  }

  v8 = CFUserNotificationCreate(0, timeout, v6, &error, _mergedDict);
  if (!error)
  {
    v9 = v8;
    goto LABEL_12;
  }

  [(SFUserAlert *)&error createNotification];
  v11 = -6700;
LABEL_17:
  if (self->_errorHandler)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__SFUserAlert_createNotification__block_invoke;
    block[3] = &unk_1E788D970;
    block[4] = self;
    v14 = v11;
    dispatch_async(dispatchQueue, block);
  }

  v9 = 0;
LABEL_12:

  return v9;
}

void __33__SFUserAlert_createNotification__block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 56);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E696A768];
    v12 = *MEMORY[0x1E696A578];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v6 = v5;
    v7 = @"?";
    if (v5)
    {
      v7 = v5;
    }

    v13[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:{1, v1 + 16}];
    v9 = [v3 errorWithDomain:v4 code:v2 userInfo:v8];
    (*(v1 + 16))(v1, v9);
  }

  else
  {
    v10 = *(v1 + 16);
    v11 = *(*(a1 + 32) + 56);

    v10(v11, 0);
  }
}

- (id)_mergedDict
{
  _defaultDictionary = [(SFUserAlert *)self _defaultDictionary];
  v4 = [(NSDictionary *)self->_additionalInfo mutableCopy];
  v5 = v4;
  v6 = _defaultDictionary;
  if (v4)
  {
    [v4 addEntriesFromDictionary:_defaultDictionary];
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (void)updateNotification
{
  cfNotif = self->_cfNotif;
  if (cfNotif)
  {
    if (self->_hasDefaultButton)
    {
      v4 = 3;
    }

    else
    {
      v4 = 35;
    }

    _mergedDict = [(SFUserAlert *)self _mergedDict];
    dictionary = _mergedDict;
    if (gLogCategory_SFUserAlert <= 50)
    {
      if (gLogCategory_SFUserAlert != -1 || (v6 = _LogCategory_Initialize(), _mergedDict = dictionary, v6))
      {
        LogPrintF(&gLogCategory_SFUserAlert, "[SFUserAlert updateNotification]", 50, "Updating CFUserNotification %{ptr} with %@", self, _mergedDict);
        _mergedDict = dictionary;
      }
    }

    CFUserNotificationUpdate(cfNotif, self->_timeout, v4, _mergedDict);
  }
}

- (void)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFUserAlert <= 30)
  {
    if (gLogCategory_SFUserAlert != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(SFUserAlert *)v3 _ensureXPCStarted];
    }
  }

  if (!self->_xpcCnx)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v6;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D855A0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __32__SFUserAlert__ensureXPCStarted__block_invoke;
    v11[3] = &unk_1E788B198;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __32__SFUserAlert__ensureXPCStarted__block_invoke_2;
    v10[3] = &unk_1E788B198;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEAE0];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFUserAlert <= 10 && (gLogCategory_SFUserAlert != -1 || _LogCategory_Initialize()))
    {
      [SFUserAlert _ensureXPCStarted];
    }
  }
}

- (void)_interrupted
{
  selfCopy = self;
  if (gLogCategory_SFUserAlert <= 30)
  {
    if (gLogCategory_SFUserAlert != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFUserAlert *)self _interrupted];
    }
  }

  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SFUserAlert__interrupted__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    selfCopy = self;
    if (gLogCategory_SFUserAlert <= 30)
    {
      if (gLogCategory_SFUserAlert != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFUserAlert *)self _invalidate];
      }
    }

    selfCopy->_invalidateCalled = 1;
    xpcCnx = selfCopy->_xpcCnx;
    if (xpcCnx)
    {
      [(NSXPCConnection *)xpcCnx invalidate];
      v5 = selfCopy->_xpcCnx;
      selfCopy->_xpcCnx = 0;
    }

    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__SFUserAlert__invalidate__block_invoke;
    block[3] = &unk_1E788B198;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_invalidated
{
  selfCopy = self;
  if (gLogCategory_SFUserAlert <= 30)
  {
    if (gLogCategory_SFUserAlert != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFUserAlert *)self _invalidated];
    }
  }

  if (!selfCopy->_invalidateDone)
  {
    if (!selfCopy->_invalidateCalled)
    {
      dispatchQueue = selfCopy->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __27__SFUserAlert__invalidated__block_invoke;
      block[3] = &unk_1E788B198;
      block[4] = selfCopy;
      dispatch_async(dispatchQueue, block);
    }

    cfNotif = selfCopy->_cfNotif;
    if (cfNotif)
    {
      CFUserNotificationCancel(cfNotif);
      v6 = selfCopy->_cfNotif;
      if (v6)
      {
        CFRelease(v6);
        selfCopy->_cfNotif = 0;
      }
    }

    errorHandler = selfCopy->_errorHandler;
    selfCopy->_errorHandler = 0;

    responseHandler = selfCopy->_responseHandler;
    selfCopy->_responseHandler = 0;

    textResponseHandler = selfCopy->_textResponseHandler;
    selfCopy->_textResponseHandler = 0;

    dictionaryResponseHandler = selfCopy->_dictionaryResponseHandler;
    selfCopy->_dictionaryResponseHandler = 0;

    selfCopy->_invalidateDone = 1;
  }
}

void __27__SFUserAlert__invalidated__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (gLogCategory_SFUserAlert <= 50 && (gLogCategory_SFUserAlert != -1 || _LogCategory_Initialize()))
  {
    __27__SFUserAlert__invalidated__block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E696A768];
    v10 = *MEMORY[0x1E696A578];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v6 = v5;
    v7 = @"?";
    if (v5)
    {
      v7 = v5;
    }

    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v9 = [v3 errorWithDomain:v4 code:-6762 userInfo:v8];
    (*(v2 + 16))(v2, v9);
  }
}

- (void)userNotificationError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__SFUserAlert_userNotificationError___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __37__SFUserAlert_userNotificationError___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)userNotificationResponse:(int)response
{
  if (gLogCategory_SFUserAlert <= 30 && (gLogCategory_SFUserAlert != -1 || _LogCategory_Initialize()))
  {
    [SFUserAlert userNotificationResponse:response];
  }

  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__SFUserAlert_userNotificationResponse___block_invoke;
  v6[3] = &unk_1E788D970;
  v6[4] = self;
  responseCopy = response;
  dispatch_async(dispatchQueue, v6);
}

uint64_t __40__SFUserAlert_userNotificationResponse___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)userNotificationTextResponse:(id)response
{
  responseCopy = response;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SFUserAlert_userNotificationTextResponse___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = responseCopy;
  v6 = responseCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __44__SFUserAlert_userNotificationTextResponse___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 72);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)userNotificationDictionaryResponse:(id)response
{
  responseCopy = response;
  v7 = responseCopy;
  if (gLogCategory_SFUserAlert <= 30)
  {
    if (gLogCategory_SFUserAlert != -1 || (responseCopy = _LogCategory_Initialize(), responseCopy))
    {
      [(SFUserAlert *)responseCopy userNotificationDictionaryResponse:v5, v6];
    }
  }

  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__SFUserAlert_userNotificationDictionaryResponse___block_invoke;
  v10[3] = &unk_1E788A658;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(dispatchQueue, v10);
}

uint64_t __50__SFUserAlert_userNotificationDictionaryResponse___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  additionalInfo = self->_additionalInfo;
  v14 = coderCopy;
  if (additionalInfo)
  {
    [coderCopy encodeObject:additionalInfo forKey:@"ai"];
    coderCopy = v14;
  }

  if (self->_asBanner)
  {
    [v14 encodeBool:1 forKey:@"ab"];
    coderCopy = v14;
  }

  iconURL = self->_iconURL;
  if (iconURL)
  {
    [v14 encodeObject:iconURL forKey:@"iu"];
    coderCopy = v14;
  }

  message = self->_message;
  if (message)
  {
    [v14 encodeObject:message forKey:@"me"];
    coderCopy = v14;
  }

  soundURL = self->_soundURL;
  if (soundURL)
  {
    [v14 encodeObject:soundURL forKey:@"su"];
    coderCopy = v14;
  }

  if (self->_textInput)
  {
    [v14 encodeBool:1 forKey:@"tin"];
    coderCopy = v14;
  }

  textInputTitle = self->_textInputTitle;
  if (textInputTitle)
  {
    [v14 encodeObject:textInputTitle forKey:@"tint"];
    coderCopy = v14;
  }

  if (self->_timeout != 0.0)
  {
    [v14 encodeDouble:@"to" forKey:?];
    coderCopy = v14;
  }

  title = self->_title;
  if (title)
  {
    [v14 encodeObject:title forKey:@"ti"];
    coderCopy = v14;
  }

  if (self->_hasDefaultButton)
  {
    [v14 encodeBool:1 forKey:@"hdb"];
    coderCopy = v14;
  }

  defaultButtonTitle = self->_defaultButtonTitle;
  if (defaultButtonTitle)
  {
    [v14 encodeObject:defaultButtonTitle forKey:@"dbt"];
    coderCopy = v14;
  }

  alternateButtonTitle = self->_alternateButtonTitle;
  if (alternateButtonTitle)
  {
    [v14 encodeObject:alternateButtonTitle forKey:@"abt"];
    coderCopy = v14;
  }

  otherButtonTitle = self->_otherButtonTitle;
  if (otherButtonTitle)
  {
    [v14 encodeObject:otherButtonTitle forKey:@"obt"];
    coderCopy = v14;
  }
}

- (SFUserAlert)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = SFUserAlert;
  v5 = [(SFUserAlert *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ai"];
    additionalInfo = v5->_additionalInfo;
    v5->_additionalInfo = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iu"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"su"];
    soundURL = v5->_soundURL;
    v5->_soundURL = v10;

    v5->_asBanner = [coderCopy decodeBoolForKey:@"ab"];
    v5->_hasDefaultButton = [coderCopy decodeBoolForKey:@"hdb"];
    v5->_textInput = [coderCopy decodeBoolForKey:@"tin"];
    [coderCopy decodeDoubleForKey:@"to"];
    v5->_timeout = v12;
    v13 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v14 = v13;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v15 = v14;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v16 = v15;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v17 = v16;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v18 = v17;
    objc_opt_class();
    NSDecodeObjectIfPresent();
  }

  return v5;
}

- (int)createNotification
{
  v2 = result;
  if (gLogCategory_SFUserAlert <= 90)
  {
    if (gLogCategory_SFUserAlert == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_5;
      }

      a2 = *v2;
    }

    result = LogPrintF(&gLogCategory_SFUserAlert, "[SFUserAlert createNotification]", 90, "### Failed to create notification. (err %ld)", a2);
  }

LABEL_5:
  *v2 = -6700;
  return result;
}

- (_DWORD)createNotification
{
  *result = -6737;
  if (gLogCategory_SFUserAlert <= 90)
  {
    if (gLogCategory_SFUserAlert != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_SFUserAlert, "[SFUserAlert createNotification]", 90, "### Title not set");
    }
  }

  *a2 = -6737;
  return result;
}

@end