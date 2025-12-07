@interface NEIKEv2KeyExchangeHandlerMODP
- (BOOL)processPeerPayload:(id)payload;
- (void)dealloc;
- (void)initWithMODPMethod:(void *)method;
@end

@implementation NEIKEv2KeyExchangeHandlerMODP

- (void)dealloc
{
  if (self && self->_context)
  {
    SecDHDestroy();
  }

  v3.receiver = self;
  v3.super_class = NEIKEv2KeyExchangeHandlerMODP;
  [(NEIKEv2KeyExchangeHandlerMODP *)&v3 dealloc];
}

- (BOOL)processPeerPayload:(id)payload
{
  v33 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      method = self->super._method;
    }

    else
    {
      method = 0;
    }

    *buf = 134217984;
    v28 = method;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "Compute KE %zu result", buf, 0xCu);
  }

  if (!payloadCopy)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v28 = "[NEIKEv2KeyExchangeHandlerMODP processPeerPayload:]";
      _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, "%s called with null peerPayload", buf, 0xCu);
    }

    goto LABEL_30;
  }

  v6 = [payloadCopy length];
  v7 = v6;
  if (!self)
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  if (v6 != self->_primeLength)
  {
LABEL_28:
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      if (self)
      {
        v22 = self->super._method;
        v23 = [payloadCopy length];
        primeLength = self->_primeLength;
      }

      else
      {
        v23 = [payloadCopy length];
        v22 = 0;
        primeLength = 0;
      }

      *buf = 134218496;
      v28 = v22;
      v29 = 2048;
      v30 = v23;
      v31 = 2048;
      v32 = primeLength;
      _os_log_fault_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_FAULT, "Peer KE %zu key length (%zu) is not equal to prime length (%zu)", buf, 0x20u);
    }

LABEL_30:
    v13 = 0;
    goto LABEL_10;
  }

LABEL_5:
  v8 = &v25 - ((2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, 2 * v6);
  v26 = v7;
  [payloadCopy bytes];
  [payloadCopy length];
  v9 = SecDHComputeKey();
  if (v9)
  {
    v19 = v9;
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v20 = self->super._method;
      }

      else
      {
        v20 = 0;
      }

      *buf = 134218240;
      v28 = v20;
      v29 = 1024;
      LODWORD(v30) = v19;
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Failed to compute KE %zu value: %d", buf, 0x12u);
    }

    v13 = 0;
  }

  else
  {
    v10 = v26;
    objc_opt_self();
    v11 = SecCFAllocatorZeroize();
    v12 = CFDataCreate(v11, &v8[v10], v7);
    memset_s(&v8[v7], v7, 0, v26);
    v13 = v12 != 0;
    if (v12)
    {
      [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:v12];
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        if (self)
        {
          v17 = self->super._method;
        }

        else
        {
          v17 = 0;
        }

        *buf = 134217984;
        v28 = v17;
        _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "Computed KE %zu result", buf, 0xCu);
      }
    }

    else
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v28 = v7;
        _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "[NESensitiveData sensitiveDataWithBytes:length:%zu] failed", buf, 0xCu);
      }
    }
  }

LABEL_10:
  return v13;
}

- (void)initWithMODPMethod:(void *)method
{
  v25 = *MEMORY[0x1E69E9840];
  if (!method)
  {
    return 0;
  }

  methodCopy = method;
  v4 = a2 - 1;
  if ((a2 - 1) >= 0x12 || ((0x3E013u >> v4) & 1) == 0)
  {
    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
LABEL_14:

      v12 = 0;
      goto LABEL_15;
    }

    *buf = 134217984;
    v22 = a2;
    v15 = "Unsupported KE method %zu";
    v16 = v13;
    v17 = 12;
LABEL_18:
    _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, v15, buf, v17);
    goto LABEL_14;
  }

  v5 = qword_1BAA4F698[v4];
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v22 = a2;
    _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "Generate KE %zu key", buf, 0xCu);
  }

  v7 = SecDHCreate();
  if (v7)
  {
    v18 = v7;
    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    *buf = 134218240;
    v22 = a2;
    v23 = 1024;
    v24 = v18;
    v15 = "Failed to create KE %zu context: %d";
    v16 = v13;
    v17 = 18;
    goto LABEL_18;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v5];
  [v8 mutableBytes];
  v9 = SecDHGenerateKeypair();
  if (v9)
  {
    v19 = v9;
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v22 = a2;
      v23 = 1024;
      v24 = v19;
      _os_log_fault_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_FAULT, "Failed to generate KE %zu key pair: %d", buf, 0x12u);
    }

    SecDHDestroy();
    goto LABEL_25;
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v22 = a2;
    _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "Generated KE %zu key", buf, 0xCu);
  }

  v11 = [(NEIKEv2KeyExchangeHandler *)methodCopy initWithMethod:a2 keyExchangeData:v8];
  if (!v11)
  {
    SecDHDestroy();
    methodCopy = 0;
LABEL_25:
    v12 = 0;
    goto LABEL_12;
  }

  v11[4] = v5;
  v11[5] = 0;
  methodCopy = v11;
  v12 = methodCopy;
LABEL_12:

LABEL_15:
  return v12;
}

@end