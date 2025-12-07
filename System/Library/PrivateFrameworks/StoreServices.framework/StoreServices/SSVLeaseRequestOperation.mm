@interface SSVLeaseRequestOperation
- (BOOL)_loadCertificateDataIfNecessary:(id *)necessary;
- (BOOL)_resolveConfigurationAndURLReturningError:(id *)error;
- (BOOL)_shouldRetryForError:(id)error;
- (NSString)certificateURLBagKey;
- (SSVLeaseRequestOperation)initWithLeaseRequest:(id)request URLBag:(id)bag;
- (SSVLeaseRequestOperation)initWithLeaseRequest:(id)request configuration:(id)configuration;
- (SSVPlaybackLeaseRequest)leaseRequest;
- (id)outputBlock;
- (void)cancel;
- (void)main;
- (void)setCertificateURLBagKey:(id)key;
- (void)setOutputBlock:(id)block;
@end

@implementation SSVLeaseRequestOperation

- (SSVLeaseRequestOperation)initWithLeaseRequest:(id)request configuration:(id)configuration
{
  requestCopy = request;
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = SSVLeaseRequestOperation;
  v8 = [(SSVOperation *)&v14 init];
  if (v8)
  {
    v9 = [configurationCopy copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    v11 = [requestCopy copy];
    request = v8->_request;
    v8->_request = v11;
  }

  return v8;
}

- (SSVLeaseRequestOperation)initWithLeaseRequest:(id)request URLBag:(id)bag
{
  requestCopy = request;
  bagCopy = bag;
  v14.receiver = self;
  v14.super_class = SSVLeaseRequestOperation;
  v8 = [(SSVOperation *)&v14 init];
  if (v8)
  {
    v9 = dispatch_semaphore_create(0);
    bagLoadSemaphore = v8->_bagLoadSemaphore;
    v8->_bagLoadSemaphore = v9;

    v11 = [requestCopy copy];
    request = v8->_request;
    v8->_request = v11;

    objc_storeStrong(&v8->_urlBag, bag);
  }

  return v8;
}

- (NSString)certificateURLBagKey
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__56;
  v9 = __Block_byref_object_dispose__56;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SSVLeaseRequestOperation_certificateURLBagKey__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __48__SSVLeaseRequestOperation_certificateURLBagKey__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 312) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SSVPlaybackLeaseRequest)leaseRequest
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__56;
  v9 = __Block_byref_object_dispose__56;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SSVLeaseRequestOperation_leaseRequest__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__SSVLeaseRequestOperation_leaseRequest__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 336) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)outputBlock
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SSVLeaseRequestOperation_outputBlock__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = MEMORY[0x1DA6DFBB0](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __39__SSVLeaseRequestOperation_outputBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 328) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setCertificateURLBagKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SSVLeaseRequestOperation_setCertificateURLBagKey___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = keyCopy;
  v5 = keyCopy;
  [(SSVOperation *)self dispatchAsync:v6];
}

void __52__SSVLeaseRequestOperation_setCertificateURLBagKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 312);
  *(v3 + 312) = v2;
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SSVLeaseRequestOperation_setOutputBlock___block_invoke;
  v6[3] = &unk_1E84AC360;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SSVOperation *)self dispatchAsync:v6];
}

void __43__SSVLeaseRequestOperation_setOutputBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 328);
  *(v3 + 328) = v2;
}

- (void)cancel
{
  dispatch_semaphore_signal(self->_bagLoadSemaphore);
  v3.receiver = self;
  v3.super_class = SSVLeaseRequestOperation;
  [(SSVOperation *)&v3 cancel];
}

- (void)main
{
  v119 = *MEMORY[0x1E69E9840];
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__56;
  v109 = __Block_byref_object_dispose__56;
  v110 = 0;
  obj = 0;
  v3 = [(SSVLeaseRequestOperation *)self _resolveConfigurationAndURLReturningError:&obj];
  objc_storeStrong(&v110, obj);
  if (!v3)
  {
    v28 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v29) = [v28 shouldLog];
    shouldLogToDisk = [v28 shouldLogToDisk];
    oSLogObject = [v28 OSLogObject];
    v32 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v29) = v29 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v29;
    }

    else
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = v106[5];
      *v115 = 138412546;
      *&v115[4] = v34;
      *&v115[12] = 2112;
      *&v115[14] = v35;
      v36 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_1D48BA000, v32, 0, "%@: Could not load configuration with error: %@", v115, 22);

      if (!v36)
      {
LABEL_28:

LABEL_41:
        v58 = 0;
        goto LABEL_80;
      }

      v32 = [MEMORY[0x1E696AEC0] stringWithCString:v36 encoding:4];
      free(v36);
      SSFileLog(v28, @"%@", v37, v38, v39, v40, v41, v42, v32);
    }

    goto LABEL_28;
  }

  v4 = (v106 + 5);
  v103 = v106[5];
  v5 = [(SSVLeaseRequestOperation *)self _loadCertificateDataIfNecessary:&v103];
  objc_storeStrong(v4, v103);
  if (!v5)
  {
    v43 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v43)
    {
      v43 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v44) = [v43 shouldLog];
    shouldLogToDisk2 = [v43 shouldLogToDisk];
    oSLogObject2 = [v43 OSLogObject];
    v47 = oSLogObject2;
    if (shouldLogToDisk2)
    {
      LODWORD(v44) = v44 | 2;
    }

    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v44;
    }

    else
    {
      v44 &= 2u;
    }

    if (v44)
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = v106[5];
      *v115 = 138412546;
      *&v115[4] = v49;
      *&v115[12] = 2112;
      *&v115[14] = v50;
      v51 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &dword_1D48BA000, v47, 0, "%@: Could not load certificate data: %@", v115, 22);

      if (!v51)
      {
LABEL_40:

        goto LABEL_41;
      }

      v47 = [MEMORY[0x1E696AEC0] stringWithCString:v51 encoding:4];
      free(v51);
      SSFileLog(v43, @"%@", v52, v53, v54, v55, v56, v57, v47);
    }

    goto LABEL_40;
  }

  v6 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  *v115 = 0;
  *&v115[8] = v115;
  *&v115[16] = 0x3032000000;
  v116 = __Block_byref_object_copy__56;
  v117 = __Block_byref_object_dispose__56;
  v118 = 0;
  while (1)
  {
    v7 = objc_alloc(MEMORY[0x1E696AD68]);
    _URL = [(SSVPlaybackLeaseRequest *)self->_request _URL];
    v9 = [v7 initWithURL:_URL];

    [v9 setHTTPMethod:@"POST"];
    v10 = [[SSVLoadURLOperation alloc] initWithURLRequest:v9];

    v11 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
    [(SSVLoadURLOperation *)v10 setDataConsumer:v11];

    [(SSVLoadURLOperation *)v10 setITunesStoreRequest:1];
    [(SSVLoadURLOperation *)v10 setMachineDataStyle:3];
    storeFrontSuffix = [(SSVPlaybackLeaseConfiguration *)self->_configuration storeFrontSuffix];
    [(SSVLoadURLOperation *)v10 setStoreFrontSuffix:storeFrontSuffix];

    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __32__SSVLeaseRequestOperation_main__block_invoke;
    v98[3] = &unk_1E84B1CC8;
    v98[4] = &v105;
    v98[5] = v115;
    [(SSVLoadURLOperation *)v10 setOutputBlock:v98];
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __32__SSVLeaseRequestOperation_main__block_invoke_2;
    v97[3] = &unk_1E84B1CF0;
    v97[4] = self;
    v97[5] = &v99;
    [(SSVLoadURLOperation *)v10 setPrepareRequestBlock:v97];
    [(SSVOperation *)self runChildOperation:v10];
    if (![(SSVLeaseRequestOperation *)self _shouldRetryForError:v106[5]])
    {
      break;
    }

    v13 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v14) = [v13 shouldLog];
    shouldLogToDisk3 = [v13 shouldLogToDisk];
    oSLogObject3 = [v13 OSLogObject];
    v17 = oSLogObject3;
    if (shouldLogToDisk3)
    {
      LODWORD(v14) = v14 | 2;
    }

    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v111 = 138412290;
      v112 = v19;
      LODWORD(v94) = 12;
      v20 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_1D48BA000, v17, 2, "%@: Retrying after timeout", &v111, v94);

      if (!v20)
      {
        goto LABEL_16;
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog(v13, @"%@", v21, v22, v23, v24, v25, v26, v17);
    }

LABEL_16:
    v27 = v106[5];
    v106[5] = 0;

    v6 = v10;
  }

  uRLResponse = [(SSVLoadURLOperation *)v10 URLResponse];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v60 = [*(*&v115[8] + 40) objectForKey:@"failureType"];
    if (v60)
    {
      leaseInfoData = objc_alloc_init(MEMORY[0x1E695DF90]);
      subscriptionKeyBagData = [*(*&v115[8] + 40) objectForKey:@"dialog"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [leaseInfoData setObject:subscriptionKeyBagData forKey:@"SSVPlaybackResponseErrorUserInfoKeyDialogDictionary"];
      }

      if (![leaseInfoData count])
      {

        leaseInfoData = 0;
      }

      v63 = MEMORY[0x1E696ABC0];
      if (objc_opt_respondsToSelector())
      {
        integerValue = [v60 integerValue];
      }

      else
      {
        integerValue = 0;
      }

      v71 = [v63 errorWithDomain:@"SSServerErrorDomain" code:integerValue userInfo:leaseInfoData];
      v58 = 0;
      v69 = v106[5];
      v106[5] = v71;
LABEL_58:

      goto LABEL_59;
    }

    v66 = [SSVPlaybackLeaseResponse alloc];
    v58 = [(SSVPlaybackResponse *)v66 initWithDictionary:*(*&v115[8] + 40) URLResponse:uRLResponse];
    pastisKeyServerURL = [(SSVPlaybackLeaseConfiguration *)self->_configuration pastisKeyServerURL];
    [(SSVPlaybackResponse *)v58 setFallbackStreamingKeyServerURL:pastisKeyServerURL];

    pastisCertificateURL = [(SSVPlaybackLeaseConfiguration *)self->_configuration pastisCertificateURL];
    [(SSVPlaybackResponse *)v58 setFallbackStreamingKeyCertificateURL:pastisCertificateURL];

    if (![(SSVPlaybackLeaseRequest *)self->_request _leaseType])
    {
      leaseInfoData = [(SSVPlaybackLeaseResponse *)v58 leaseInfoData];
      subscriptionKeyBagData = [(SSVPlaybackLeaseResponse *)v58 subscriptionKeyBagData];
      if (leaseInfoData | subscriptionKeyBagData)
      {
        v69 = objc_alloc_init(SSVFairPlaySubscriptionController);
        v70 = (v106 + 5);
        v96 = v106[5];
        [(SSVFairPlaySubscriptionController *)v69 importSubscriptionKeyBagData:subscriptionKeyBagData leaseInfoData:leaseInfoData returningError:&v96];
        objc_storeStrong(v70, v96);
        goto LABEL_58;
      }

LABEL_59:
    }

LABEL_60:
  }

  else
  {
    if (!v106[5])
    {
      v65 = SSError(@"SSErrorDomain", 100, 0, 0);
      v58 = 0;
      v60 = v106[5];
      v106[5] = v65;
      goto LABEL_60;
    }

    v58 = 0;
  }

  if (v100[3])
  {
    leaseInfoData2 = [(SSVPlaybackLeaseResponse *)v58 leaseInfoData];
    v73 = leaseInfoData2;
    if (leaseInfoData2)
    {
      v95 = 0;
      v74 = v100[3];
      v75 = leaseInfoData2;
      v76 = C956s6fM(v74, [v73 bytes], objc_msgSend(v73, "length"), &v95);
      if (v76)
      {
        v77 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v77)
        {
          v77 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v78) = [v77 shouldLog];
        shouldLogToDisk4 = [v77 shouldLogToDisk];
        oSLogObject4 = [v77 OSLogObject];
        v81 = oSLogObject4;
        if (shouldLogToDisk4)
        {
          LODWORD(v78) = v78 | 2;
        }

        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          v78 = v78;
        }

        else
        {
          v78 &= 2u;
        }

        if (v78)
        {
          v82 = objc_opt_class();
          v83 = NSStringFromClass(v82);
          v111 = 138412546;
          v112 = v83;
          v113 = 2048;
          v114 = v76;
          LODWORD(v94) = 22;
          v84 = _os_log_send_and_compose_impl(v78, 0, 0, 0, &dword_1D48BA000, v81, 0, "[%@] KDProcessResponseCKC failed: %ld", &v111, v94);

          if (v84)
          {
            v81 = [MEMORY[0x1E696AEC0] stringWithCString:v84 encoding:4];
            free(v84);
            SSFileLog(v77, @"%@", v85, v86, v87, v88, v89, v90, v81);
            goto LABEL_74;
          }
        }

        else
        {
LABEL_74:
        }
      }

      if (v95)
      {
        N8pdwAfn(v95);
      }
    }

    JE2f6WCx(v100[3]);
  }

  _Block_object_dispose(v115, 8);
  _Block_object_dispose(&v99, 8);
LABEL_80:
  _certificateData = [(SSVPlaybackLeaseRequest *)self->_request _certificateData];
  [(SSVPlaybackLeaseResponse *)v58 setCertificateData:_certificateData];

  [(SSVPlaybackLeaseResponse *)v58 setKDMovieIdentifier:[(SSVPlaybackLeaseRequest *)self->_request _KDMovieIdentifier]];
  outputBlock = [(SSVLeaseRequestOperation *)self outputBlock];
  v93 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v58, v106[5]);
  }

  _Block_object_dispose(&v105, 8);
}

void __32__SSVLeaseRequestOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __32__SSVLeaseRequestOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 344);
  v5 = 30.0;
  if (v4 <= 2)
  {
    v5 = dbl_1D4B39030[v4];
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
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
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
    v11 = NSStringFromClass(v10);
    v27 = 138412546;
    v28 = v11;
    v29 = 2048;
    v30 = v5;
    v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1D48BA000, v9, 2, "%@: Setting timeout interval %.0f", &v27, 22);

    if (!v12)
    {
      goto LABEL_15;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, v9);
  }

LABEL_15:
  [v3 setTimeoutInterval:v5];
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 24);
  if (v20)
  {
    JE2f6WCx(v20);
    v19 = *(*(a1 + 40) + 8);
  }

  v21 = [*(*(a1 + 32) + 336) _copyBodyDictionaryWithFairPlaySession:v19 + 24];
  if ([v21 count])
  {
    v22 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v21 options:0 error:0];
    [v3 setHTTPBody:v22];

    [v3 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  }

  v23 = [*(*(a1 + 32) + 336) HTTPHeaderFields];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __32__SSVLeaseRequestOperation_main__block_invoke_21;
  v25[3] = &unk_1E84ADD90;
  v26 = v3;
  v24 = v3;
  [v23 enumerateKeysAndObjectsUsingBlock:v25];
}

- (BOOL)_loadCertificateDataIfNecessary:(id *)necessary
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__56;
  v15 = __Block_byref_object_dispose__56;
  v16 = 0;
  _certificateData = [(SSVPlaybackLeaseRequest *)self->_request _certificateData];
  if (_certificateData)
  {
    v6 = 1;
    *(v18 + 24) = 1;
  }

  else
  {
    v7 = [[SSVLeaseCertificateRequestOperation alloc] initWithConfiguration:self->_configuration];
    certificateURLBagKey = [(SSVLeaseRequestOperation *)self certificateURLBagKey];
    [(SSVLeaseCertificateRequestOperation *)v7 setCertificateURLBagKey:certificateURLBagKey];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__SSVLeaseRequestOperation__loadCertificateDataIfNecessary___block_invoke;
    v10[3] = &unk_1E84B1D18;
    v10[5] = &v11;
    v10[6] = &v17;
    v10[4] = self;
    [(SSVLeaseCertificateRequestOperation *)v7 setOutputBlock:v10];
    [(SSVOperation *)self runChildOperation:v7];

    v6 = *(v18 + 24);
    if (necessary && (v18[3] & 1) == 0)
    {
      *necessary = v12[5];
      v6 = *(v18 + 24);
    }
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v6 & 1;
}

void __60__SSVLeaseRequestOperation__loadCertificateDataIfNecessary___block_invoke(void *a1, void *a2, id obj)
{
  objc_storeStrong((*(a1[5] + 8) + 40), obj);
  v6 = obj;
  v7 = a2;
  *(*(a1[6] + 8) + 24) = v7 != 0;
  [*(a1[4] + 336) _setCertificateData:v7];
}

- (BOOL)_resolveConfigurationAndURLReturningError:(id *)error
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__56;
  v32 = __Block_byref_object_dispose__56;
  v33 = 0;
  _URLBagKey = [(SSVPlaybackLeaseRequest *)self->_request _URLBagKey];
  v6 = _URLBagKey;
  if (self->_urlBag)
  {
    if (_URLBagKey)
    {
      _URL = [(SSVPlaybackLeaseRequest *)self->_request _URL];
      if (_URL)
      {
        configuration = self->_configuration;

        if (configuration)
        {
          goto LABEL_12;
        }
      }
    }

    else if (self->_configuration)
    {
      goto LABEL_14;
    }

    bagLoadSemaphore = self->_bagLoadSemaphore;
    if (bagLoadSemaphore)
    {
      v10 = bagLoadSemaphore;
    }

    else
    {
      v10 = dispatch_semaphore_create(0);
    }

    v11 = v10;
    urlBag = self->_urlBag;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __70__SSVLeaseRequestOperation__resolveConfigurationAndURLReturningError___block_invoke;
    v23 = &unk_1E84B1D40;
    v24 = v6;
    selfCopy = self;
    v27 = &v28;
    v13 = v11;
    v26 = v13;
    [(SSURLBag *)urlBag loadWithCompletionBlock:&v20];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (!v6)
  {
    if (self->_configuration)
    {
      goto LABEL_14;
    }

LABEL_18:
    if (!v29[5])
    {
      v18 = SSError(@"SSErrorDomain", 137, 0, 0);
      v19 = v29[5];
      v29[5] = v18;
    }

    v16 = 0;
    if (error)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

LABEL_12:
  v14 = [(SSVPlaybackLeaseRequest *)self->_request _URL:v20];
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = self->_configuration;

  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_14:
  v16 = 1;
  if (error)
  {
LABEL_15:
    *error = v29[5];
  }

LABEL_16:

  _Block_object_dispose(&v28, 8);
  return v16;
}

void __70__SSVLeaseRequestOperation__resolveConfigurationAndURLReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v15)
  {
    if (*(a1 + 32))
    {
      v6 = [v15 objectForKey:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
        [*(*(a1 + 40) + 336) _setURL:v7];
      }

      else
      {
        v11 = SSError(@"SSErrorDomain", 124, 0, 0);
        v12 = *(*(a1 + 56) + 8);
        v7 = *(v12 + 40);
        *(v12 + 40) = v11;
      }
    }

    v13 = [[SSVPlaybackLeaseConfiguration alloc] initWithURLBagDictionary:v15];
    v14 = *(a1 + 40);
    v10 = *(v14 + 320);
    *(v14 + 320) = v13;
  }

  else
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      goto LABEL_11;
    }

    v8 = SSError(@"SSErrorDomain", 111, 0, 0);
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

LABEL_11:
  dispatch_semaphore_signal(*(a1 + 48));
}

- (BOOL)_shouldRetryForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x1E696A978]])
  {

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  code = [errorCopy code];

  if (code != -1001)
  {
    goto LABEL_6;
  }

  retryCount = self->_retryCount;
  if (retryCount > 1)
  {
    goto LABEL_6;
  }

  self->_retryCount = retryCount + 1;
  v8 = 1;
LABEL_7:

  return v8;
}

@end