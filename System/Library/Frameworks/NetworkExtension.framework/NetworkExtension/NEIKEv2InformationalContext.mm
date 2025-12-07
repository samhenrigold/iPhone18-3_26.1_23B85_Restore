@interface NEIKEv2InformationalContext
- (id)description;
- (id)initWithPrivateNotifies:(int)notifies maxRetries:(void *)retries retryIntervalMilliseconds:(void *)milliseconds callbackQueue:(void *)queue callback:;
- (void)sendCallbackSuccess:(BOOL)success session:(id)session;
@end

@implementation NEIKEv2InformationalContext

- (id)initWithPrivateNotifies:(int)notifies maxRetries:(void *)retries retryIntervalMilliseconds:(void *)milliseconds callbackQueue:(void *)queue callback:
{
  v12 = a2;
  millisecondsCopy = milliseconds;
  queueCopy = queue;
  if (self)
  {
    v20.receiver = self;
    v20.super_class = NEIKEv2InformationalContext;
    v15 = objc_msgSendSuper2(&v20, sel_init);
    if (v15)
    {
      self = v15;
      objc_storeStrong(v15 + 4, a2);
      *(self + 6) = notifies;
      self[5] = retries;
      objc_storeStrong(self + 6, milliseconds);
      objc_setProperty_nonatomic_copy(self, v16, queueCopy, 56);
    }

    else
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v19[0] = 0;
        _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, "[super init] failed", v19, 2u);
      }

      self = 0;
    }
  }

  return self;
}

- (void)sendCallbackSuccess:(BOOL)success session:(id)session
{
  successCopy = success;
  sessionCopy = session;
  v18.receiver = self;
  v18.super_class = NEIKEv2InformationalContext;
  [(NEIKEv2RequestContext *)&v18 sendCallbackSuccess:successCopy session:sessionCopy];
  if (self)
  {
    v7 = self->_callback;
    if (v7)
    {
      v8 = v7;
      v9 = self->_callbackQueue;
      if (!v9)
      {
LABEL_7:

        goto LABEL_8;
      }

      if (!sessionCopy)
      {

        goto LABEL_6;
      }

      v10 = sessionCopy[12];

      if ((v10 & 1) == 0)
      {
LABEL_6:
        v11 = self->_callback;
        objc_setProperty_nonatomic_copy(self, v12, 0, 56);
        callbackQueue = self->_callbackQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __59__NEIKEv2InformationalContext_sendCallbackSuccess_session___block_invoke;
        block[3] = &unk_1E7F08C20;
        v15 = sessionCopy;
        v16 = v11;
        v17 = successCopy;
        v8 = v11;
        dispatch_async(callbackQueue, block);

        goto LABEL_7;
      }
    }
  }

LABEL_8:
}

uint64_t __59__NEIKEv2InformationalContext_sendCallbackSuccess_session___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || (*(v1 + 12) & 1) == 0)
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 48));
  }

  return result;
}

- (id)description
{
  selfCopy = self;
  if (self)
  {
    self = self->_privateNotifies;
  }

  v3 = [(NEIKEv2InformationalContext *)self count];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v3)
  {
    if (selfCopy)
    {
      v5 = [(NSArray *)selfCopy->_privateNotifies count];
      maxRetries = selfCopy->_maxRetries;
      retryIntervalInMilliseconds = selfCopy->_retryIntervalInMilliseconds;
    }

    else
    {
      v5 = [0 count];
      maxRetries = 0;
      retryIntervalInMilliseconds = 0;
    }

    retryIntervalInMilliseconds = [v4 initWithFormat:@"%llu private notifies with %u retries at %llums", v5, maxRetries, retryIntervalInMilliseconds];
  }

  else
  {
    if (selfCopy)
    {
      v9 = selfCopy->_maxRetries;
      v10 = selfCopy->_retryIntervalInMilliseconds;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    retryIntervalInMilliseconds = [v4 initWithFormat:@"keepalive with %u retries at %llums", v9, v10, v12];
  }

  return retryIntervalInMilliseconds;
}

@end