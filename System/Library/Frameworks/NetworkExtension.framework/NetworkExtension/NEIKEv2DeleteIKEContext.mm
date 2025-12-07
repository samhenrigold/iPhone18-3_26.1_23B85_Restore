@interface NEIKEv2DeleteIKEContext
- (id)description;
- (id)initDeleteIKEWithResponse:(void *)response callbackQueue:(void *)queue callback:;
- (void)sendCallbackSuccess:(BOOL)success session:(id)session;
@end

@implementation NEIKEv2DeleteIKEContext

- (id)initDeleteIKEWithResponse:(void *)response callbackQueue:(void *)queue callback:
{
  responseCopy = response;
  queueCopy = queue;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = NEIKEv2DeleteIKEContext;
    v10 = objc_msgSendSuper2(&v15, sel_init);
    if (v10)
    {
      self = v10;
      *(v10 + 24) = a2;
      objc_storeStrong(v10 + 4, response);
      objc_setProperty_nonatomic_copy(self, v11, queueCopy, 40);
    }

    else
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14[0] = 0;
        _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "[super init] failed", v14, 2u);
      }

      self = 0;
    }
  }

  return self;
}

- (void)sendCallbackSuccess:(BOOL)success session:(id)session
{
  v15.receiver = self;
  v15.super_class = NEIKEv2DeleteIKEContext;
  [(NEIKEv2RequestContext *)&v15 sendCallbackSuccess:success session:session];
  if (self)
  {
    v6 = self->_callback;
    if (v6)
    {
      callbackQueue = self->_callbackQueue;

      if (callbackQueue)
      {
        v8 = self->_callback;
        objc_setProperty_nonatomic_copy(self, v9, 0, 40);
        v10 = self->_callbackQueue;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __55__NEIKEv2DeleteIKEContext_sendCallbackSuccess_session___block_invoke;
        v12[3] = &unk_1E7F0AB40;
        v13 = v8;
        successCopy = success;
        v11 = v8;
        dispatch_async(v10, v12);
      }
    }
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = @"NO";
  if (self && self->_responseNeeded)
  {
    v4 = @"YES";
  }

  v5 = [v3 initWithFormat:@"delete IKE, response %@", v4];

  return v5;
}

@end