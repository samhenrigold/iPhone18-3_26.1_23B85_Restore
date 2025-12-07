@interface SSVFairPlaySAPSession
- (BOOL)_primeTheConnection;
- (BOOL)_shouldRetrySAPOperationForError:(id)error;
- (BOOL)_verifyPrimeResponse:(id)response;
- (BOOL)_verifySignature:(id)signature forData:(id)data error:(id *)error;
- (BOOL)verifyData:(id)data withSignature:(id)signature error:(id *)error;
- (NSData)certificateData;
- (SSVFairPlaySAPSession)initWithSSBag:(id)bag SAPVersion:(int64_t)version;
- (SSVFairPlaySAPSession)initWithURLBag:(id)bag SAPVersion:(int64_t)version;
- (SSVFairPlaySAPSession)initWithURLBagDictionary:(id)dictionary SAPVersion:(int64_t)version;
- (id)_establishContext;
- (id)_initSSVFairPlaySAPSession;
- (id)_initWithURLBagInterpreter:(id)interpreter SAPVersion:(int64_t)version;
- (id)_loadCertificateData;
- (id)_postExchangeData:(id)data;
- (id)_signData:(id)data error:(id *)error;
- (id)_urlBagInterpreter;
- (id)signatureWithData:(id)data error:(id *)error;
- (void)establishSessionWithCompletionBlock:(id)block;
- (void)primeSessionWithCompletionBlock:(id)block;
- (void)setCertificateData:(id)data;
- (void)signData:(id)data completionBlock:(id)block;
- (void)verifySignature:(id)signature forData:(id)data completionBlock:(id)block;
@end

@implementation SSVFairPlaySAPSession

- (id)_initSSVFairPlaySAPSession
{
  v8.receiver = self;
  v8.super_class = SSVFairPlaySAPSession;
  v2 = [(SSVFairPlaySAPSession *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSVFairPlaySAPSession.completion", 0);
    completionBlockQueue = v2->_completionBlockQueue;
    v2->_completionBlockQueue = v3;

    v5 = dispatch_queue_create("com.apple.StoreServices.SSVFairPlaySAPSession", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;
  }

  return v2;
}

- (SSVFairPlaySAPSession)initWithSSBag:(id)bag SAPVersion:(int64_t)version
{
  bagCopy = bag;
  _initSSVFairPlaySAPSession = [(SSVFairPlaySAPSession *)self _initSSVFairPlaySAPSession];
  v9 = _initSSVFairPlaySAPSession;
  if (_initSSVFairPlaySAPSession)
  {
    if (bagCopy)
    {
      objc_storeStrong(_initSSVFairPlaySAPSession + 1, bag);
      v10 = [[SSVURLBagInterpreter alloc] initWithSSBag:bagCopy];
      urlBagInterpreter = v9->_urlBagInterpreter;
      v9->_urlBagInterpreter = v10;
    }

    v9->_version = version;
  }

  return v9;
}

- (SSVFairPlaySAPSession)initWithURLBag:(id)bag SAPVersion:(int64_t)version
{
  bagCopy = bag;
  _initSSVFairPlaySAPSession = [(SSVFairPlaySAPSession *)self _initSSVFairPlaySAPSession];
  if (_initSSVFairPlaySAPSession)
  {
    if (bagCopy)
    {
      v8 = bagCopy;
      urlBag = _initSSVFairPlaySAPSession->_urlBag;
      _initSSVFairPlaySAPSession->_urlBag = v8;
    }

    else
    {
      urlBag = [SSURLBagContext contextWithBagType:0];
      v10 = [[SSURLBag alloc] initWithURLBagContext:urlBag];
      v11 = _initSSVFairPlaySAPSession->_urlBag;
      _initSSVFairPlaySAPSession->_urlBag = v10;
    }

    _initSSVFairPlaySAPSession->_version = version;
  }

  return _initSSVFairPlaySAPSession;
}

- (SSVFairPlaySAPSession)initWithURLBagDictionary:(id)dictionary SAPVersion:(int64_t)version
{
  dictionaryCopy = dictionary;
  _initSSVFairPlaySAPSession = [(SSVFairPlaySAPSession *)self _initSSVFairPlaySAPSession];
  if (_initSSVFairPlaySAPSession)
  {
    v8 = [[SSVURLBagInterpreter alloc] initWithURLBagDictionary:dictionaryCopy];
    urlBagInterpreter = _initSSVFairPlaySAPSession->_urlBagInterpreter;
    _initSSVFairPlaySAPSession->_urlBagInterpreter = v8;

    _initSSVFairPlaySAPSession->_version = version;
  }

  return _initSSVFairPlaySAPSession;
}

- (id)_initWithURLBagInterpreter:(id)interpreter SAPVersion:(int64_t)version
{
  interpreterCopy = interpreter;
  _initSSVFairPlaySAPSession = [(SSVFairPlaySAPSession *)self _initSSVFairPlaySAPSession];
  if (_initSSVFairPlaySAPSession)
  {
    v8 = [interpreterCopy copy];
    v9 = _initSSVFairPlaySAPSession[10];
    _initSSVFairPlaySAPSession[10] = v8;

    _initSSVFairPlaySAPSession[8] = version;
  }

  return _initSSVFairPlaySAPSession;
}

- (NSData)certificateData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__79;
  v10 = __Block_byref_object_dispose__79;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SSVFairPlaySAPSession_certificateData__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__SSVFairPlaySAPSession_certificateData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)establishSessionWithCompletionBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SSVFairPlaySAPSession_establishSessionWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

void __61__SSVFairPlaySAPSession_establishSessionWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _establishContext];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 32) != 0;
    v6 = *(v4 + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__SSVFairPlaySAPSession_establishSessionWithCompletionBlock___block_invoke_2;
    v7[3] = &unk_1E84AED58;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

- (void)primeSessionWithCompletionBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SSVFairPlaySAPSession_primeSessionWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

void __57__SSVFairPlaySAPSession_primeSessionWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _establishContext];
  v3 = [*(a1 + 32) _primeTheConnection];
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = v3;
    v6 = *(*(a1 + 32) + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__SSVFairPlaySAPSession_primeSessionWithCompletionBlock___block_invoke_2;
    v7[3] = &unk_1E84AED58;
    v8 = v4;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

- (void)setCertificateData:(id)data
{
  dataCopy = data;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SSVFairPlaySAPSession_setCertificateData___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(dispatchQueue, v7);
}

void __44__SSVFairPlaySAPSession_setCertificateData___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 24) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;
  }
}

- (void)signData:(id)data completionBlock:(id)block
{
  dataCopy = data;
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SSVFairPlaySAPSession_signData_completionBlock___block_invoke;
  block[3] = &unk_1E84AC000;
  block[4] = self;
  v12 = dataCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = dataCopy;
  dispatch_async(dispatchQueue, block);
}

void __50__SSVFairPlaySAPSession_signData_completionBlock___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v49 = 0;
  v4 = [v2 _signData:v3 error:&v49];
  v5 = v49;
  if (v4)
  {
    goto LABEL_29;
  }

  if (![*(a1 + 32) _shouldRetrySAPOperationForError:v5])
  {
    goto LABEL_16;
  }

  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = v7 | 2;
  }

  else
  {
    LODWORD(v8) = v7;
  }

  v9 = [v6 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    v50 = 138412290;
    v51 = v10;
    v11 = v10;
    v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1D48BA000, v9, 0, "%@: SAP signature failed with bad session, attempting to sign again", &v50, 12);

    if (!v12)
    {
      goto LABEL_15;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, v9);
  }

LABEL_15:
  v19 = *(a1 + 32);
  v20 = *(v19 + 32);
  *(v19 + 32) = 0;

  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v48 = v5;
  v4 = [v21 _signData:v22 error:&v48];
  v23 = v48;

  v5 = v23;
  if (!v4)
  {
LABEL_16:
    v24 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      LODWORD(v26) = v25 | 2;
    }

    else
    {
      LODWORD(v26) = v25;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v26;
    }

    else
    {
      v26 &= 2u;
    }

    if (v26)
    {
      v28 = objc_opt_class();
      v50 = 138412546;
      v51 = v28;
      v52 = 2112;
      v53 = v5;
      v29 = v28;
      LODWORD(v43) = 22;
      v30 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_1D48BA000, v27, 0, "%@: SAP signature failed with error: %@", &v50, v43);

      if (!v30)
      {
LABEL_28:

        v37 = *(a1 + 32);
        v38 = *(v37 + 32);
        *(v37 + 32) = 0;

        v4 = 0;
        *(*(a1 + 32) + 48) = 0;
        goto LABEL_29;
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:4];
      free(v30);
      SSFileLog(v24, @"%@", v31, v32, v33, v34, v35, v36, v27);
    }

    goto LABEL_28;
  }

LABEL_29:
  v39 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SSVFairPlaySAPSession_signData_completionBlock___block_invoke_14;
  block[3] = &unk_1E84ABEC8;
  v40 = *(a1 + 48);
  v46 = v5;
  v47 = v40;
  v45 = v4;
  v41 = v5;
  v42 = v4;
  dispatch_async(v39, block);
}

- (void)verifySignature:(id)signature forData:(id)data completionBlock:(id)block
{
  signatureCopy = signature;
  dataCopy = data;
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__SSVFairPlaySAPSession_verifySignature_forData_completionBlock___block_invoke;
  v15[3] = &unk_1E84B3718;
  v15[4] = self;
  v16 = signatureCopy;
  v17 = dataCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = dataCopy;
  v14 = signatureCopy;
  dispatch_async(dispatchQueue, v15);
}

void __65__SSVFairPlaySAPSession_verifySignature_forData_completionBlock___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v51 = 0;
  v5 = [v2 _verifySignature:v3 forData:v4 error:&v51];
  v6 = v51;
  if ((v5 & 1) == 0)
  {
    if (![*(a1 + 32) _shouldRetrySAPOperationForError:v6])
    {
      v7 = 0;
      goto LABEL_19;
    }

    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = v9 | 2;
    }

    else
    {
      LODWORD(v10) = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v52 = 138412290;
      v53 = v12;
      v13 = v12;
      v14 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, v11, 0, "%@: SAP signature verification failed with bad session, attempting to verify signature again", &v52, 12);

      if (!v14)
      {
        goto LABEL_16;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, v11);
    }

LABEL_16:
    v21 = *(a1 + 32);
    v22 = *(v21 + 32);
    *(v21 + 32) = 0;

    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    v50 = v6;
    v7 = [v23 _verifySignature:v24 forData:v25 error:&v50];
    v26 = v50;

    v6 = v26;
    if (v7)
    {
      goto LABEL_33;
    }

LABEL_19:
    if (!v6)
    {
      goto LABEL_33;
    }

    v27 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    v28 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      LODWORD(v29) = v28 | 2;
    }

    else
    {
      LODWORD(v29) = v28;
    }

    v30 = [v27 OSLogObject];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v29;
    }

    else
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v31 = objc_opt_class();
      v52 = 138412546;
      v53 = v31;
      v54 = 2112;
      v55 = v6;
      v32 = v31;
      LODWORD(v45) = 22;
      v33 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_1D48BA000, v30, 0, "%@: SAP signature verification failed with error: %@", &v52, v45);

      if (!v33)
      {
LABEL_32:

        v40 = *(a1 + 32);
        v41 = *(v40 + 32);
        *(v40 + 32) = 0;

        v7 = 0;
        goto LABEL_33;
      }

      v30 = [MEMORY[0x1E696AEC0] stringWithCString:v33 encoding:4];
      free(v33);
      SSFileLog(v27, @"%@", v34, v35, v36, v37, v38, v39, v30);
    }

    goto LABEL_32;
  }

  v7 = 1;
LABEL_33:
  v42 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__SSVFairPlaySAPSession_verifySignature_forData_completionBlock___block_invoke_15;
  block[3] = &unk_1E84B08A8;
  v43 = *(a1 + 56);
  v49 = v7;
  v47 = v6;
  v48 = v43;
  v44 = v6;
  dispatch_async(v42, block);
}

- (id)signatureWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__79;
  v26 = __Block_byref_object_dispose__79;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__79;
  v20 = __Block_byref_object_dispose__79;
  v21 = 0;
  v7 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__SSVFairPlaySAPSession_signatureWithData_error___block_invoke;
  v12[3] = &unk_1E84B1D18;
  v14 = &v22;
  v15 = &v16;
  v8 = v7;
  v13 = v8;
  [(SSVFairPlaySAPSession *)self signData:dataCopy completionBlock:v12];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v17[5];
  if (error && !v9)
  {
    *error = v23[5];
    v9 = v17[5];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __49__SSVFairPlaySAPSession_signatureWithData_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)verifyData:(id)data withSignature:(id)signature error:(id *)error
{
  dataCopy = data;
  signatureCopy = signature;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__79;
  v26 = __Block_byref_object_dispose__79;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v10 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__SSVFairPlaySAPSession_verifyData_withSignature_error___block_invoke;
  v14[3] = &unk_1E84AE928;
  v16 = &v22;
  v17 = &v18;
  v11 = v10;
  v15 = v11;
  [(SSVFairPlaySAPSession *)self verifySignature:signatureCopy forData:dataCopy completionBlock:v14];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = *(v19 + 24);
  if (error && (v19[3] & 1) == 0)
  {
    *error = v23[5];
    v12 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v12 & 1;
}

void __56__SSVFairPlaySAPSession_verifyData_withSignature_error___block_invoke(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_establishContext
{
  v33 = *MEMORY[0x1E69E9840];
  context = self->_context;
  if (context)
  {
    goto LABEL_30;
  }

  _loadCertificateData = [(SSVFairPlaySAPSession *)self _loadCertificateData];
  if (_loadCertificateData)
  {
    v5 = [[SSVFairPlaySAPContext alloc] initWithSAPVersion:self->_version];
    v28 = 0;
    v6 = [(SSVFairPlaySAPContext *)v5 exchangeData:_loadCertificateData error:&v28];
    v7 = v28;
    if (v6)
    {
      while (![(SSVFairPlaySAPContext *)v5 isComplete])
      {
        certificateData = [(SSVFairPlaySAPSession *)self _postExchangeData:v6];
        if (!certificateData)
        {

          goto LABEL_12;
        }

        v27 = 0;
        v9 = [(SSVFairPlaySAPContext *)v5 exchangeData:certificateData error:&v27];
        v10 = v27;

        if (!v7)
        {
          v7 = v10;
        }

        v6 = v9;
        if (!v9)
        {
          break;
        }
      }
    }

    else
    {
      certificateData = self->_certificateData;
      self->_certificateData = 0;
LABEL_12:

      v6 = 0;
    }

    if ([(SSVFairPlaySAPContext *)v5 isComplete])
    {
      v11 = v5;
      v12 = self->_context;
      self->_context = v11;
LABEL_27:

      goto LABEL_28;
    }

    v12 = +[SSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      LODWORD(v14) = shouldLog | 2;
    }

    else
    {
      LODWORD(v14) = shouldLog;
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v29 = 138543618;
      v30 = v16;
      v31 = 2112;
      v32 = v7;
      v17 = v16;
      v18 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: Failed to complete mescal context setup. Error = %@", &v29, 22);

      if (!v18)
      {
        goto LABEL_27;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:4];
      free(v18);
      SSFileLog(v12, @"%@", v19, v20, v21, v22, v23, v24, oSLogObject);
    }

    goto LABEL_27;
  }

LABEL_28:

  context = self->_context;
  if (!context)
  {
    v25 = self->_certificateData;
    self->_certificateData = 0;

    context = self->_context;
  }

LABEL_30:

  return context;
}

- (id)_loadCertificateData
{
  v25 = *MEMORY[0x1E69E9840];
  certificateData = self->_certificateData;
  if (!certificateData)
  {
    _urlBagInterpreter = [(SSVFairPlaySAPSession *)self _urlBagInterpreter];
    v5 = [_urlBagInterpreter URLForURLBagKey:@"sign-sap-setup-cert"];
    if (v5)
    {
      v6 = [[SSVLoadURLOperation alloc] initWithURL:v5];
      [(SSVLoadURLOperation *)v6 _configureWithURLBagInterpreter:_urlBagInterpreter];
      v7 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
      [(SSVLoadURLOperation *)v6 setDataConsumer:v7];

      [(SSVLoadURLOperation *)v6 setITunesStoreRequest:1];
      [(SSVLoadURLOperation *)v6 setBag:self->_bag];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __45__SSVFairPlaySAPSession__loadCertificateData__block_invoke;
      v22[3] = &unk_1E84B3740;
      v22[4] = self;
      [(SSVLoadURLOperation *)v6 setOutputBlock:v22];
      [(SSVLoadURLOperation *)v6 main];
    }

    certificateData = self->_certificateData;
    if (!certificateData)
    {
      v8 = +[SSLogConfig sharedConfig];
      if (!v8)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        LODWORD(v10) = shouldLog | 2;
      }

      else
      {
        LODWORD(v10) = shouldLog;
      }

      oSLogObject = [v8 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v10 = v10;
      }

      else
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v12 = objc_opt_class();
        v23 = 138543362;
        v24 = v12;
        v13 = v12;
        v14 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: Failed to load certificate data.", &v23, 12);

        if (!v14)
        {
LABEL_17:

          certificateData = self->_certificateData;
          goto LABEL_18;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
        free(v14);
        SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
      }

      goto LABEL_17;
    }
  }

LABEL_18:

  return certificateData;
}

void __45__SSVFairPlaySAPSession__loadCertificateData__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = [v6 objectForKey:@"sign-sap-setup-cert"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(a1 + 32) + 24), v5);
    }

    v4 = v6;
  }
}

- (id)_postExchangeData:(id)data
{
  v35 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__79;
  v31 = __Block_byref_object_dispose__79;
  v32 = 0;
  _urlBagInterpreter = [(SSVFairPlaySAPSession *)self _urlBagInterpreter];
  v6 = [_urlBagInterpreter URLForURLBagKey:@"sign-sap-setup"];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v6];
    [v7 setHTTPMethod:@"POST"];
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{dataCopy, @"sign-sap-setup-buffer", 0}];
    v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:100 options:0 error:0];
    [v7 setHTTPBody:v9];

    v10 = [[SSVLoadURLOperation alloc] initWithURLRequest:v7];
    [(SSVLoadURLOperation *)v10 _configureWithURLBagInterpreter:_urlBagInterpreter];
    v11 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
    [(SSVLoadURLOperation *)v10 setDataConsumer:v11];

    [(SSVLoadURLOperation *)v10 setITunesStoreRequest:1];
    [(SSVLoadURLOperation *)v10 setBag:self->_bag];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __43__SSVFairPlaySAPSession__postExchangeData___block_invoke;
    v26[3] = &unk_1E84B3768;
    v26[4] = &v27;
    [(SSVLoadURLOperation *)v10 setOutputBlock:v26];
    [(SSVLoadURLOperation *)v10 main];

LABEL_3:
    goto LABEL_4;
  }

  v7 = +[SSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v14) = [v7 shouldLog];
  shouldLogToDisk = [v7 shouldLogToDisk];
  oSLogObject = [v7 OSLogObject];
  v8 = oSLogObject;
  if (shouldLogToDisk)
  {
    LODWORD(v14) = v14 | 2;
  }

  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v14 = v14;
  }

  else
  {
    v14 &= 2u;
  }

  if (!v14)
  {
    goto LABEL_3;
  }

  v17 = objc_opt_class();
  v33 = 138543362;
  v34 = v17;
  v18 = v17;
  v19 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_1D48BA000, v8, 16, "%{public}@: Unable to find mescal setup url in the bag", &v33, 12);

  if (v19)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:4];
    free(v19);
    SSFileLog(v7, @"%@", v20, v21, v22, v23, v24, v25, v8);
    goto LABEL_3;
  }

LABEL_4:

  v12 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v12;
}

void __43__SSVFairPlaySAPSession__postExchangeData___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = [v6 objectForKey:@"sign-sap-setup-buffer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v5);
    }

    v4 = v6;
  }
}

- (BOOL)_primeTheConnection
{
  v2 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (self->_version == 1)
  {
    context = self->_context;
    data = [MEMORY[0x1E695DEF0] data];
    v6 = [(SSVFairPlaySAPContext *)context primingSignatureForData:data error:0];

    if (v6)
    {
      v7 = [v6 base64EncodedStringWithOptions:0];
    }

    else
    {
      v7 = 0;
    }

    _urlBagInterpreter = [(SSVFairPlaySAPSession *)self _urlBagInterpreter];
    mescalPrimingURL = [_urlBagInterpreter mescalPrimingURL];
    if (mescalPrimingURL)
    {
      v10 = +[SSDevice currentDevice];
      uniqueDeviceIdentifier = [v10 uniqueDeviceIdentifier];
      uppercaseString = [uniqueDeviceIdentifier uppercaseString];

      v13 = [mescalPrimingURL URLByAppendingQueryParameter:@"guid" value:uppercaseString];

      if (v13 && v7)
      {
        v14 = [[SSVLoadURLOperation alloc] initWithURL:v13];
        [(SSVLoadURLOperation *)v14 _configureWithURLBagInterpreter:_urlBagInterpreter];
        [(SSVLoadURLOperation *)v14 setSAPSession:self];
        v15 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
        [(SSVLoadURLOperation *)v14 setDataConsumer:v15];

        [(SSVLoadURLOperation *)v14 setITunesStoreRequest:1];
        [(SSVLoadURLOperation *)v14 setBag:self->_bag];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __44__SSVFairPlaySAPSession__primeTheConnection__block_invoke;
        v20[3] = &unk_1E84B2FF0;
        v21 = v7;
        [(SSVLoadURLOperation *)v14 setPrepareRequestBlock:v20];
        objc_initWeak(&location, v14);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __44__SSVFairPlaySAPSession__primeTheConnection__block_invoke_2;
        v17[3] = &unk_1E84B3790;
        objc_copyWeak(&v18, &location);
        v17[4] = self;
        v17[5] = &v22;
        [(SSVLoadURLOperation *)v14 setOutputBlock:v17];
        [(SSVLoadURLOperation *)v14 main];
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      v13 = 0;
    }

    v2 = *(v23 + 24);
  }

  _Block_object_dispose(&v22, 8);
  return v2 & 1;
}

void __44__SSVFairPlaySAPSession__primeTheConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setHTTPMethod:@"POST"];
  [v3 setValue:*(a1 + 32) forHTTPHeaderField:@"X-Apple-ActionSignature"];
}

void __44__SSVFairPlaySAPSession__primeTheConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained URLResponse];

    WeakRetained = v6;
    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = [v6 URLResponse];
      *(*(*(a1 + 40) + 8) + 24) = [v4 _verifyPrimeResponse:v5];

      WeakRetained = v6;
    }
  }
}

- (BOOL)_shouldRetrySAPOperationForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"SSErrorDomain"])
  {
    v5 = [errorCopy code] == 148;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_signData:(id)data error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  _establishContext = [(SSVFairPlaySAPSession *)self _establishContext];
  v8 = _establishContext;
  if (_establishContext)
  {
    v25 = 0;
    v9 = [_establishContext signData:dataCopy error:&v25];
    v10 = v25;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    LODWORD(v15) = shouldLog | 2;
  }

  else
  {
    LODWORD(v15) = shouldLog;
  }

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v15;
  }

  else
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v26 = 138412290;
    v27 = objc_opt_class();
    v17 = v27;
    v18 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%@: Failed to obtain SAP context for signing", &v26, 12);

    if (!v18)
    {
      goto LABEL_19;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:4];
    free(v18);
    SSFileLog(v13, @"%@", v19, v20, v21, v22, v23, v24, oSLogObject);
  }

LABEL_19:
  v10 = SSError(@"SSErrorDomain", 122, @"No SAP context for signing", 0);
  v9 = 0;
  if (error)
  {
LABEL_3:
    v11 = v10;
    *error = v10;
  }

LABEL_4:

  return v9;
}

- (id)_urlBagInterpreter
{
  if (!self->_urlBagInterpreter)
  {
    bag = self->_bag;
    v4 = [SSVURLBagInterpreter alloc];
    if (bag)
    {
      v5 = [(SSVURLBagInterpreter *)v4 initWithSSBag:self->_bag];
    }

    else
    {
      v5 = [(SSVURLBagInterpreter *)v4 initWithURLBag:self->_urlBag];
    }

    urlBagInterpreter = self->_urlBagInterpreter;
    self->_urlBagInterpreter = v5;
  }

  v7 = self->_urlBagInterpreter;

  return v7;
}

- (BOOL)_verifyPrimeResponse:(id)response
{
  v43 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  self->_primed = 0;
  allHeaderFields = [responseCopy allHeaderFields];
  v6 = [allHeaderFields objectForKey:@"X-Apple-ActionSignature"];
  if (!v6)
  {
    lowercaseString = [@"X-Apple-ActionSignature" lowercaseString];
    v6 = [allHeaderFields objectForKey:lowercaseString];
  }

  if ([v6 length])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
    context = self->_context;
    v38 = 0;
    v10 = [(SSVFairPlaySAPContext *)context verifyPrimeSignature:v8 error:&v38];
    v37 = v38;
    v11 = +[SSLogConfig sharedStoreServicesConfig];
    v12 = v11;
    if (v10)
    {
      if (!v11)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v14 = shouldLog | 2;
      }

      else
      {
        v14 = shouldLog;
      }

      oSLogObject = [v12 OSLogObject];
      v16 = 1;
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v17 = v14;
      }

      else
      {
        v17 = v14 & 2;
      }

      if (v17)
      {
        v36 = v8;
        v18 = objc_opt_class();
        v19 = v18;
        v20 = [responseCopy URL];
        v39 = 138412546;
        v40 = v18;
        v41 = 2112;
        v42 = v20;
        v16 = 1;
        v21 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "%@: Verify prime finished: %@", &v39, 22);

        if (!v21)
        {
          v8 = v36;
          v22 = v37;
          goto LABEL_30;
        }

        v8 = v36;
        v22 = v37;
LABEL_26:
        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:4];
        free(v21);
        SSFileLog(v12, @"%@", v28, v29, v30, v31, v32, v33, oSLogObject);
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      if (!v11)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v24 = shouldLog2 | 2;
      }

      else
      {
        v24 = shouldLog2;
      }

      oSLogObject = [v12 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 2;
      }

      if (v25)
      {
        v26 = objc_opt_class();
        v39 = 138412546;
        v40 = v26;
        v41 = 2112;
        v22 = v37;
        v42 = v37;
        v27 = v26;
        v21 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%@: Verify prime failed: %@", &v39, 22);

        v16 = 0;
        if (!v21)
        {
LABEL_30:

          self->_primed = v16;
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      v16 = 0;
    }

    v22 = v37;
    goto LABEL_29;
  }

LABEL_31:
  primed = self->_primed;

  return primed;
}

- (BOOL)_verifySignature:(id)signature forData:(id)data error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  dataCopy = data;
  _establishContext = [(SSVFairPlaySAPSession *)self _establishContext];
  v11 = _establishContext;
  if (!_establishContext)
  {
    v16 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      LODWORD(v18) = shouldLog | 2;
    }

    else
    {
      LODWORD(v18) = shouldLog;
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v29 = 138412290;
      v30 = objc_opt_class();
      v20 = v30;
      v21 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%@: Failed to obtain SAP context for signature verification", &v29, 12);

      if (!v21)
      {
        goto LABEL_17;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:4];
      free(v21);
      SSFileLog(v16, @"%@", v22, v23, v24, v25, v26, v27, oSLogObject);
    }

LABEL_17:
    v13 = SSError(@"SSErrorDomain", 122, @"No SAP context for signature verification", 0);
    v12 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v28 = 0;
  v12 = [_establishContext verifySignature:signatureCopy forData:dataCopy error:&v28];
  v13 = v28;
  if (error)
  {
LABEL_3:
    v14 = v13;
    *error = v13;
  }

LABEL_4:

  return v12;
}

@end