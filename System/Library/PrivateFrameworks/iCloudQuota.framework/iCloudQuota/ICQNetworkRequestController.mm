@interface ICQNetworkRequestController
- (ICQNetworkRequestController)init;
- (ICQNetworkRequestController)initWithSession:(id)session numberOfSecondsBetweenRetries:(id)retries;
- (void)executeRequest:(id)request acceptedStatusCodes:(id)codes renewHeadersBlock:(id)block completion:(id)completion;
@end

@implementation ICQNetworkRequestController

- (ICQNetworkRequestController)init
{
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v4 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"ICQNetworkRequestControllerSession"];
  [defaultSessionConfiguration set_appleIDContext:v4];

  v5 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
  v6 = [(ICQNetworkRequestController *)self initWithSession:v5];

  return v6;
}

- (ICQNetworkRequestController)initWithSession:(id)session numberOfSecondsBetweenRetries:(id)retries
{
  sessionCopy = session;
  retriesCopy = retries;
  v13.receiver = self;
  v13.super_class = ICQNetworkRequestController;
  v8 = [(ICQNetworkRequestController *)&v13 init];
  session = v8->_session;
  v8->_session = sessionCopy;
  v10 = sessionCopy;

  numberOfSecondsBetweenRetries = v8->_numberOfSecondsBetweenRetries;
  v8->_numberOfSecondsBetweenRetries = retriesCopy;

  return v8;
}

- (void)executeRequest:(id)request acceptedStatusCodes:(id)codes renewHeadersBlock:(id)block completion:(id)completion
{
  requestCopy = request;
  codesCopy = codes;
  blockCopy = block;
  completionCopy = completion;
  v14 = [(NSArray *)self->_numberOfSecondsBetweenRetries copy];
  objc_initWeak(&location, self);
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy_;
  v43[4] = __Block_byref_object_dispose_;
  v44 = [requestCopy mutableCopy];
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  v15 = [ICQRetryController alloc];
  v16 = [(NSArray *)self->_numberOfSecondsBetweenRetries count];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke;
  v23[3] = &unk_27A6515E0;
  objc_copyWeak(&v32, &location);
  v23[4] = self;
  v17 = completionCopy;
  v26 = v17;
  v28 = &v33;
  v29 = v43;
  v18 = codesCopy;
  v24 = v18;
  v30 = v41;
  v31 = v39;
  v19 = v14;
  v25 = v19;
  v20 = blockCopy;
  v27 = v20;
  v21 = [(ICQRetryController *)v15 initWithMaxNumberOfRetries:v16 block:v23];
  v22 = v34[5];
  v34[5] = v21;

  [v34[5] executeBlock];
  _Block_object_dispose(&v33, 8);

  objc_destroyWeak(&v32);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);

  objc_destroyWeak(&location);
}

void __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v3 = _ICQGetLogSystem();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(*(*(a1 + 72) + 8) + 40) numberOfAttempts];
      v6 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 134218242;
      v48 = v5;
      v49 = 2112;
      v50 = v6;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Making attempt (%lu) for network request %@.", buf, 0x16u);
    }

    v7 = WeakRetained[1];
    v8 = *(*(*(a1 + 80) + 8) + 40);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_21;
    v40[3] = &unk_27A651590;
    v9 = *(a1 + 40);
    v10 = *(a1 + 80);
    v41 = v9;
    v44 = v10;
    v11 = *(a1 + 56);
    v12 = *(a1 + 72);
    v43 = v11;
    v45 = v12;
    v46 = *(a1 + 88);
    v42 = *(a1 + 48);
    v13 = [v7 dataTaskWithRequest:v8 completionHandler:v40];
    if ([*(*(*(a1 + 80) + 8) + 40) icq_hasAuthHeaders] && *(*(*(a1 + 96) + 8) + 24) != 1)
    {
      [v13 resume];
    }

    else
    {
      v14 = *(a1 + 88);
      if (*(*(v14 + 8) + 24) == 1)
      {
        v15 = _ICQGetLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
        }

        v23 = *(a1 + 56);
        v24 = ICQCreateError(15);
        (*(v23 + 16))(v23, 0, 0, v24);

        v25 = *(*(a1 + 72) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = 0;
      }

      else
      {
        v31 = *(a1 + 64);
        v32 = *(*(*(a1 + 80) + 8) + 40);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_25;
        v35[3] = &unk_27A6515B8;
        v38 = v14;
        v36 = v13;
        v33 = *(a1 + 56);
        v34 = *(a1 + 72);
        v37 = v33;
        v39 = v34;
        (*(v31 + 16))(v31, v32, v35);
      }
    }

    v30 = v41;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_cold_2(a1, v4);
    }

    v27 = *(a1 + 56);
    v28 = ICQCreateError(0);
    (*(v27 + 16))(v27, 0, 0, v28);

    v29 = *(*(a1 + 72) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = 0;
  }
}

void __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_21(uint64_t a1, void *a2, void *a3, void *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 URL];
    v13 = [v12 absoluteString];
    v52 = 138412546;
    v53 = v13;
    v54 = 2048;
    v55 = [v10 statusCode];
    _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Request to (%@) returned status code %lu.", &v52, 0x16u);
  }

  v14 = *(a1 + 32);
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "statusCode")}];
  LODWORD(v14) = [v14 containsObject:v15];

  if (v14)
  {
    v16 = _ICQGetLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(*(a1 + 56) + 8) + 40);
      v52 = 138413058;
      v53 = v17;
      v54 = 2112;
      v55 = v7;
      v56 = 2112;
      v57 = v10;
      v58 = 2112;
      v59 = v9;
      _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "Request (%@) succeeded with data (%@) with response (%@) with error (%@)", &v52, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;
    goto LABEL_15;
  }

  v20 = [v10 allHeaderFields];
  v19 = objc_msgSend_objectForKeyedSubscript_(v20);

  if ([v10 statusCode] == 429)
  {
    v21 = [ICQError retryErrorWithRetryAfter:v19];
    v22 = _ICQGetLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*(*(a1 + 56) + 8) + 40);
      v52 = 138413314;
      v53 = v23;
      v54 = 2112;
      v55 = v19;
      v56 = 2112;
      v57 = v7;
      v58 = 2112;
      v59 = v10;
      v60 = 2112;
      v61 = v9;
      v24 = "Request (%@) failed from 429 with Retry-After (%@) with data (%@) with response (%@) with error (%@)";
LABEL_13:
      _os_log_impl(&dword_275572000, v22, OS_LOG_TYPE_DEFAULT, v24, &v52, 0x34u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if ([v10 statusCode] == 503)
  {
    v21 = [ICQError serviceUnavailableWithRetryAfter:v19];
    v22 = _ICQGetLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(*(*(a1 + 56) + 8) + 40);
      v52 = 138413314;
      v53 = v25;
      v54 = 2112;
      v55 = v19;
      v56 = 2112;
      v57 = v7;
      v58 = 2112;
      v59 = v10;
      v60 = 2112;
      v61 = v9;
      v24 = "Request (%@) failed from 503 with Retry-After (%@) with data (%@) with response (%@) with error (%@)";
      goto LABEL_13;
    }

LABEL_14:

    (*(*(a1 + 48) + 16))();
    v26 = *(*(a1 + 64) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = 0;

    goto LABEL_15;
  }

  if ([v10 statusCode] == 400 || objc_msgSend(v10, "statusCode") == 401)
  {
    v28 = _ICQGetLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(*(*(a1 + 56) + 8) + 40);
      v30 = [v10 statusCode];
      v52 = 138413314;
      v53 = v29;
      v54 = 2048;
      v55 = v30;
      v56 = 2112;
      v57 = v7;
      v58 = 2112;
      v59 = v10;
      v60 = 2112;
      v61 = v9;
      _os_log_impl(&dword_275572000, v28, OS_LOG_TYPE_DEFAULT, "Request (%@) failed from client error %ld with data (%@) with response (%@) with error (%@). Will attempt to renew headers.", &v52, 0x34u);
    }

    v31 = *(*(*(a1 + 72) + 8) + 24);
    v32 = _ICQGetLogSystem();
    v33 = v32;
    if (v31)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_21_cold_1(v33, v34, v35, v36, v37, v38, v39, v40);
      }

      v41 = *(a1 + 48);
      v42 = +[ICQError clientErrorWithStatusCode:](ICQError, "clientErrorWithStatusCode:", [v10 statusCode]);
      (*(v41 + 16))(v41, v7, v10, v42);

LABEL_34:
      v50 = *(*(a1 + 64) + 8);
      v51 = *(v50 + 40);
      *(v50 + 40) = 0;

      goto LABEL_15;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v52) = 0;
      _os_log_impl(&dword_275572000, v33, OS_LOG_TYPE_DEFAULT, "400 or 401 but we have not attempted to renew yet.", &v52, 2u);
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  v43 = [*(*(*(a1 + 64) + 8) + 40) numberOfAttempts] - 1;
  if (v43 >= [*(a1 + 40) count])
  {
    v48 = _ICQGetLogSystem();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(*(*(a1 + 56) + 8) + 40);
      v52 = 138413058;
      v53 = v49;
      v54 = 2112;
      v55 = v7;
      v56 = 2112;
      v57 = v10;
      v58 = 2112;
      v59 = v9;
      _os_log_impl(&dword_275572000, v48, OS_LOG_TYPE_DEFAULT, "Request (%@) failed with no more retries with data (%@) with response (%@) with error (%@)", &v52, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_34;
  }

  v44 = [*(a1 + 40) objectAtIndexedSubscript:v43];
  v45 = [v44 unsignedIntegerValue];

  v46 = _ICQGetLogSystem();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = *(*(*(a1 + 56) + 8) + 40);
    v52 = 138412802;
    v53 = v47;
    v54 = 2048;
    v55 = v43;
    v56 = 2048;
    v57 = v45;
    _os_log_impl(&dword_275572000, v46, OS_LOG_TYPE_DEFAULT, "Retrying request (%@) with attempt (%lu) with retryAfterSeconds (%lu)", &v52, 0x20u);
  }

  [*(*(*(a1 + 64) + 8) + 40) retryAfterSeconds:v45];
LABEL_15:
}

void __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_25(uint64_t a1, int a2)
{
  v4 = _ICQGetLogSystem();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Request headers renewed successfully", v17, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 32) resume];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_25_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = *(a1 + 40);
    v14 = ICQCreateError(15);
    (*(v13 + 16))(v13, 0, 0, v14);

    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;
  }
}

void __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "%@ instance no longer exist.", &v4, 0xCu);
}

@end