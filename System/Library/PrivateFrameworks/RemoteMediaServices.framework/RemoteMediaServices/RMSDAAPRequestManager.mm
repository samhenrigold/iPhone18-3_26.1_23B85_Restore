@interface RMSDAAPRequestManager
- (RMSDAAPRequestManager)init;
- (RMSDAAPRequestManagerDelegate)delegate;
- (id)requestControlCommand:(id)command text:(id)text promptRevision:(int64_t)revision completionHandler:(id)handler;
- (id)requestWithPath:(id)path method:(id)method postData:(id)data queryArgs:(id)args completionHandler:(id)handler;
@end

@implementation RMSDAAPRequestManager

- (RMSDAAPRequestManager)init
{
  v15[5] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = RMSDAAPRequestManager;
  v2 = [(RMSDAAPRequestManager *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d", 3, 12];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld.%ld", 3, 10];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld.%ld", 1, 2];
    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v14[0] = @"Accept-Encoding";
    v14[1] = @"Viewer-Only-Client";
    v15[0] = @"gzip";
    v15[1] = @"1";
    v14[2] = @"Client-DAAP-Version";
    v14[3] = @"Client-iTunes-Sharing-Version";
    v15[2] = v3;
    v15[3] = v4;
    v14[4] = @"Client-ATV-Sharing-Version";
    v15[4] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
    [ephemeralSessionConfiguration setHTTPAdditionalHeaders:v7];

    v8 = MEMORY[0x277CCAD30];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v10 = [v8 sessionWithConfiguration:ephemeralSessionConfiguration delegate:0 delegateQueue:mainQueue];
    urlSession = v2->_urlSession;
    v2->_urlSession = v10;
  }

  return v2;
}

- (id)requestWithPath:(id)path method:(id)method postData:(id)data queryArgs:(id)args completionHandler:(id)handler
{
  v69[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  methodCopy = method;
  dataCopy = data;
  argsCopy = args;
  handlerCopy = handler;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__0;
  v58 = __Block_byref_object_dispose__0;
  v59 = objc_opt_new();
  [v55[5] setScheme:@"http"];
  [v55[5] setHost:self->_hostName];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:self->_port];
  [v55[5] setPort:v17];

  pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@", pathCopy];
  [v55[5] setPath:pathCopy];

  if (self->_sessionIdentifier)
  {
    v19 = v55[5];
    v68 = @"session-id";
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v69[0] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
    v22 = [v19 rms_componentsByAddingQueryParameters:v21];
    v23 = v55[5];
    v55[5] = v22;
  }

  homeSharingGroupKey = self->_homeSharingGroupKey;
  if (homeSharingGroupKey)
  {
    v25 = v55[5];
    v66 = @"hsgid";
    v67 = homeSharingGroupKey;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v27 = [v25 rms_componentsByAddingQueryParameters:v26];
    v28 = v55[5];
    v55[5] = v27;
  }

  pairingGUID = self->_pairingGUID;
  if (pairingGUID)
  {
    v30 = v55[5];
    v64 = @"pairing-guid";
    v65 = pairingGUID;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v32 = [v30 rms_componentsByAddingQueryParameters:v31];
    v33 = v55[5];
    v55[5] = v32;
  }

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __85__RMSDAAPRequestManager_requestWithPath_method_postData_queryArgs_completionHandler___block_invoke;
  v53[3] = &unk_279B08FD0;
  v53[4] = &v54;
  [argsCopy enumerateKeysAndObjectsUsingBlock:v53];
  v34 = MEMORY[0x277CCAB70];
  v35 = [v55[5] URL];
  v36 = [v34 requestWithURL:v35];

  [v36 setHTTPMethod:methodCopy];
  [v36 setHTTPBody:dataCopy];
  isHandshakeComplete = [(RMSFairPlaySession *)self->_fairPlaySession isHandshakeComplete];
  if (isHandshakeComplete)
  {
    fairPlaySession = self->_fairPlaySession;
    v39 = [v55[5] URL];
    v40 = [(RMSFairPlaySession *)fairPlaySession headerForURL:v39];

    [v36 addValue:v40 forHTTPHeaderField:@"Client-DAAP-Validation"];
  }

  v41 = RMSLogger(isHandshakeComplete);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [v55[5] URL];
    absoluteString = [v42 absoluteString];
    *buf = 138412546;
    v61 = methodCopy;
    v62 = 2112;
    v63 = absoluteString;
    _os_log_impl(&dword_261E98000, v41, OS_LOG_TYPE_DEFAULT, "%@/ %@", buf, 0x16u);
  }

  urlSession = self->_urlSession;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __85__RMSDAAPRequestManager_requestWithPath_method_postData_queryArgs_completionHandler___block_invoke_51;
  v49[3] = &unk_279B08FF8;
  v45 = pathCopy;
  v50 = v45;
  v46 = handlerCopy;
  selfCopy = self;
  v52 = v46;
  v47 = [(NSURLSession *)urlSession dataTaskWithRequest:v36 completionHandler:v49];
  [v47 resume];

  _Block_object_dispose(&v54, 8);

  return v47;
}

void __85__RMSDAAPRequestManager_requestWithPath_method_postData_queryArgs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v13 = a2;
  v14[0] = a3;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a3;
  v8 = a2;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v5 rms_componentsByAddingQueryParameters:v9];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void __85__RMSDAAPRequestManager_requestWithPath_method_postData_queryArgs_completionHandler___block_invoke_51(void *a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v10;
  if (v9)
  {
    v12 = [v9 code];
    WeakRetained = RMSLogger(v12);
    v14 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
    if (v12 != -1001)
    {
      if (v12 == -999)
      {
        if (v14)
        {
          v15 = a1[4];
          v27 = 138412290;
          v28 = v15;
          _os_log_impl(&dword_261E98000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Request was cancelled: %@", &v27, 0xCu);
        }
      }

      else
      {
        if (v14)
        {
          v23 = a1[4];
          v27 = 138412546;
          v28 = v9;
          v29 = 2112;
          v30 = v23;
          _os_log_impl(&dword_261E98000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Unexpected error [%@]: %@", &v27, 0x16u);
        }

        v24 = a1[6];
        if (v24)
        {
          (*(v24 + 16))(v24, -1, 0);
        }

        WeakRetained = objc_loadWeakRetained((a1[5] + 56));
        [WeakRetained requestManagerFailedWithUnknownError:a1[5]];
      }

LABEL_27:

      goto LABEL_28;
    }

    if (v14)
    {
      v21 = a1[4];
      v27 = 138412290;
      v28 = v21;
      _os_log_impl(&dword_261E98000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Request timed out: %@", &v27, 0xCu);
    }

    v22 = a1[6];
    if (v22)
    {
      v20 = *(v22 + 16);
      goto LABEL_15;
    }
  }

  else
  {
    v16 = RMSLogger(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v11 statusCode];
      v18 = a1[4];
      v27 = 134218242;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_261E98000, v16, OS_LOG_TYPE_DEFAULT, "HTTP response code [%zd] for [%@]", &v27, 0x16u);
    }

    if ([v11 statusCode] > 299)
    {
      if ([v11 statusCode] == 401 || objc_msgSend(v11, "statusCode") == 403 || objc_msgSend(v11, "statusCode") == 503)
      {
        v25 = a1[6];
        if (v25)
        {
          (*(v25 + 16))(v25, -2, v7);
        }

        WeakRetained = objc_loadWeakRetained((a1[5] + 56));
        [WeakRetained requestManagerFailedWithUnauthorizedError:a1[5]];
        goto LABEL_27;
      }

      v26 = a1[6];
      if (!v26)
      {
        goto LABEL_28;
      }

      v20 = *(v26 + 16);
      goto LABEL_15;
    }

    v19 = a1[6];
    if (v19)
    {
      v20 = *(v19 + 16);
LABEL_15:
      v20();
    }
  }

LABEL_28:
}

- (id)requestControlCommand:(id)command text:(id)text promptRevision:(int64_t)revision completionHandler:(id)handler
{
  v25[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  textCopy = text;
  handlerCopy = handler;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/1/%s", "ctrl-int", "controlpromptentry"];
  v14 = objc_opt_new();
  v15 = v14;
  if (commandCopy)
  {
    [v14 encodeString:commandCopy forCode:1668112997];
  }

  if (textCopy)
  {
    [v15 encodeString:textCopy forCode:1668117605];
  }

  data = [v15 data];
  v24 = @"prompt-id";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:revision];
  v25[0] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__RMSDAAPRequestManager_requestControlCommand_text_promptRevision_completionHandler___block_invoke;
  v22[3] = &unk_279B08CF0;
  v23 = handlerCopy;
  v19 = handlerCopy;
  v20 = [(RMSDAAPRequestManager *)self requestWithPath:v13 method:@"POST" postData:data queryArgs:v18 completionHandler:v22];

  return v20;
}

uint64_t __85__RMSDAAPRequestManager_requestControlCommand_text_promptRevision_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (RMSDAAPRequestManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end