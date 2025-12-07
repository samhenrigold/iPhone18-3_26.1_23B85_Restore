@interface MFRequestQueue
+ (OS_os_log)log;
+ (id)signpostLog;
- (BOOL)_processRequests:(id)requests;
- (BOOL)addRequest:(id)request;
- (BOOL)addRequests:(id)requests combine:(BOOL)combine;
- (BOOL)processRequest:(id)request;
- (BOOL)processRequests:(id)requests;
- (BOOL)sendRequests:(id)requests;
- (MFRequestQueue)init;
- (unint64_t)signpostID;
@end

@implementation MFRequestQueue

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MFRequestQueue_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_29 != -1)
  {
    dispatch_once(&log_onceToken_29, block);
  }

  v2 = log_log_29;

  return v2;
}

void __21__MFRequestQueue_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_29;
  log_log_29 = v1;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__MFRequestQueue_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_1 != -1)
  {
    dispatch_once(&signpostLog_onceToken_1, block);
  }

  v2 = signpostLog_log_1;

  return v2;
}

void __29__MFRequestQueue_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_1;
  signpostLog_log_1 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (MFRequestQueue)init
{
  v7.receiver = self;
  v7.super_class = MFRequestQueue;
  v2 = [(MFRequestQueue *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requestPairs = v3->_requestPairs;
    v3->_requestPairs = v4;
  }

  return v3;
}

- (BOOL)addRequests:(id)requests combine:(BOOL)combine
{
  combineCopy = combine;
  v22 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  v7 = requestsCopy;
  if (combineCopy)
  {
    v8 = [(MFRequestQueue *)self sendRequests:requestsCopy];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = requestsCopy;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = *v17;
      v8 = 1;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v20 = *(*(&v16 + 1) + 8 * i);
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:{1, v16}];
          v14 = [(MFRequestQueue *)self sendRequests:v13];

          v8 &= v14;
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)addRequest:(id)request
{
  v7[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7[0] = requestCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  LOBYTE(self) = [(MFRequestQueue *)self sendRequests:v5];

  return self;
}

- (BOOL)sendRequests:(id)requests
{
  v22 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  firstObject = [requestsCopy firstObject];
  first = [firstObject first];

  v7 = objc_opt_class();
  v8 = +[MFRequestQueue signpostLog];
  v9 = os_signpost_id_generate(v8);

  v10 = +[MFRequestQueue signpostLog];
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v16 = 138543874;
    v17 = v7;
    v18 = 2050;
    v19 = [v7 hash];
    v20 = 2050;
    v21 = [requestsCopy count];
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "REQUEST QUEUE", "RequestClass=%{signpost.description:attribute,public}@ RequestType=%{public, signpost.telemetry:number1}lu RequestCount=%{public, signpost.telemetry:number2}lu enableTelemetry=YES ", &v16, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  v12 = [(MFRequestQueue *)self _processRequests:requestsCopy];
  os_unfair_lock_unlock(&self->_lock);
  v13 = +[MFRequestQueue signpostLog];
  v14 = v13;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v14, OS_SIGNPOST_INTERVAL_END, v9, "REQUEST QUEUE", "", &v16, 2u);
  }

  return v12;
}

- (BOOL)processRequest:(id)request
{
  requestCopy = request;
  second = [requestCopy second];
  first = [requestCopy first];
  [second handleResponse:first error:0];

  return 1;
}

- (BOOL)_processRequests:(id)requests
{
  requestsCopy = requests;
  LOBYTE(self) = [(MFRequestQueue *)self processRequests:requestsCopy];

  return self;
}

- (BOOL)processRequests:(id)requests
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__MFRequestQueue_processRequests___block_invoke;
  v5[3] = &unk_1E7AA2550;
  v5[4] = self;
  v5[5] = &v6;
  [requests enumerateObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__34__MFRequestQueue_processRequests___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) processRequest:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

@end