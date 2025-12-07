@interface AASigningSession
+ (id)establishedSessionWithCertURL:(id)l sessionURL:(id)rL error:(id *)error;
- (AASigningSession)initWithCertURL:(id)l sessionURL:(id)rL;
- (id)signatureForData:(id)data;
- (void)dealloc;
- (void)establishSession;
@end

@implementation AASigningSession

+ (id)establishedSessionWithCertURL:(id)l sessionURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v9 = rLCopy;
  if (lCopy && rLCopy)
  {
    v10 = [[AASigningSession alloc] initWithCertURL:lCopy sessionURL:rLCopy];
    [(AASigningSession *)v10 establishSession];
  }

  else if (error)
  {
    [objc_opt_class() _badURLError];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (AASigningSession)initWithCertURL:(id)l sessionURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v14.receiver = self;
  v14.super_class = AASigningSession;
  v8 = [(AASigningSession *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    certURL = v8->_certURL;
    v8->_certURL = v9;

    v11 = [rLCopy copy];
    sessionURL = v8->_sessionURL;
    v8->_sessionURL = v11;
  }

  return v8;
}

- (void)establishSession
{
  v3 = _AALogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Fetching absinthe cert", buf, 2u);
  }

  v4 = [MEMORY[0x1E695DFF8] URLWithString:self->_certURL];
  v5 = dispatch_semaphore_create(0);
  v6 = +[AAURLSession sharedSession];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __36__AASigningSession_establishSession__block_invoke;
  v12 = &unk_1E7C9BD90;
  selfCopy = self;
  v14 = v5;
  v7 = v5;
  v8 = [v6 dataTaskWithURL:v4 completion:&v9];
  [v8 resume];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

void __36__AASigningSession_establishSession__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    if (v9)
    {
      v12 = _AALogSystem(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v10 localizedDescription];
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }
    }

    *buf = 0;
    v24 = 0;
    if (!v7)
    {
      v16 = -1;
LABEL_19:
      *(*(a1 + 32) + 32) = v16;
      dispatch_semaphore_signal(*(a1 + 40));
      goto LABEL_20;
    }
  }

  else
  {
    v11 = _AALogSystem(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = [v7 length];
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Got Absinthe cert: %lu bytes", buf, 0xCu);
    }

    *buf = 0;
    v24 = 0;
  }

  v14 = _AALogSystem(v9);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Initializing absinthe session", v23, 2u);
  }

  KxmB0CKvgWt([v7 bytes], objc_msgSend(v7, "length"));
  if (v15)
  {
    v16 = v15;
    v17 = _AALogSystem(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __36__AASigningSession_establishSession__block_invoke_cold_1();
    }

    goto LABEL_19;
  }

  v18 = [MEMORY[0x1E695DEF0] dataWithBytes:*buf length:v24];
  Be81a395Bf0(*buf);
  v19 = [[AASigningSessionRequest alloc] initWithURLString:*(*(a1 + 32) + 24) sessionInfoRequestData:v18];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __36__AASigningSession_establishSession__block_invoke_66;
  v21[3] = &unk_1E7C9BD68;
  v20 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v22 = v20;
  [(AARequest *)v19 performRequestWithHandler:v21];

LABEL_20:
}

void __36__AASigningSession_establishSession__block_invoke_66(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  isKindOfClass = a4;
  v10 = isKindOfClass;
  if (isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v17 = _AALogSystem(isKindOfClass);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __36__AASigningSession_establishSession__block_invoke_66_cold_1();
    }

    *(*(a1 + 32) + 32) = -1;
  }

  else
  {
    v11 = [v8 sessionData];
    v12 = v11;
    if (v11)
    {
      v13 = _AALogSystem(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Initialized absinthe session, establishing key", v18, 2u);
      }

      nDYmeMqvWb(*(*(a1 + 32) + 8), [v12 bytes], objc_msgSend(v12, "length"));
      if (v14)
      {
        v15 = v14;
        v16 = _AALogSystem(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __36__AASigningSession_establishSession__block_invoke_cold_1();
        }

        *(*(a1 + 32) + 32) = v15;
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)signatureForData:(id)data
{
  if (self->_context)
  {
    v16 = 0;
    v15 = 0;
    dataCopy = data;
    v5 = _AALogSystem(dataCopy);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Absinthe signing data", v14, 2u);
    }

    context = self->_context;
    bytes = [dataCopy bytes];
    v8 = [dataCopy length];

    t1BoNctgaUu66(context, bytes, v8, &v16);
    if (v9)
    {
      v10 = v9;
      v11 = _AALogSystem(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __36__AASigningSession_establishSession__block_invoke_cold_1();
      }

      self->_error = v10;
    }

    v12 = 0;
    if (v16 && v15)
    {
      v12 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
      Be81a395Bf0(v16);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)dealloc
{
  IW1PcFszqNK(self->_context);
  v3.receiver = self;
  v3.super_class = AASigningSession;
  [(AASigningSession *)&v3 dealloc];
}

@end