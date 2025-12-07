@interface MDMDeclarativeManagement
+ (id)_createNoInstallationError;
+ (void)downloadDataAtURL:(id)l downloadURL:(id)rL completionHandler:(id)handler;
+ (void)executeRequestForEndpoint:(id)endpoint channelType:(unint64_t)type requestData:(id)data completionHandler:(id)handler;
+ (void)fetchDataAtURL:(id)l completionHandler:(id)handler;
@end

@implementation MDMDeclarativeManagement

+ (void)executeRequestForEndpoint:(id)endpoint channelType:(unint64_t)type requestData:(id)data completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  dataCopy = data;
  handlerCopy = handler;
  v12 = *DMCLogObjects();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_22E997000, v12, OS_LOG_TYPE_INFO, "Calling executeRequestForMessageType - channel type: %lu", buf, 0xCu);
  }

  v18 = @"Endpoint";
  v19 = endpointCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v14 = [v13 mutableCopy];

  if (dataCopy)
  {
    [v14 setObject:dataCopy forKeyedSubscript:@"Data"];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__MDMDeclarativeManagement_executeRequestForEndpoint_channelType_requestData_completionHandler___block_invoke;
  v16[3] = &unk_278857048;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [MDMCheckInRequest executeRequestForMessageType:@"DeclarativeManagement" channelType:type requestDict:v14 completionHandler:v16];
}

+ (void)fetchDataAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = +[MDMConfiguration sharedConfiguration];
  [v8 refreshDetailsFromDisk];
  managingProfileIdentifier = [v8 managingProfileIdentifier];

  if (managingProfileIdentifier)
  {
    copyMemberQueueIdentity = [v8 copyMemberQueueIdentity];
    checkInPinnedSecCertificateRefs = [v8 checkInPinnedSecCertificateRefs];
    pinningRevocationCheckRequired = [v8 pinningRevocationCheckRequired];
    signMessage = [v8 signMessage];
    rmAccountID = [v8 rmAccountID];
    if (copyMemberQueueIdentity)
    {
      v15 = [[MDMHTTPTransaction alloc] initWithURL:lCopy identity:copyMemberQueueIdentity pinnedCertificates:checkInPinnedSecCertificateRefs pinningRevocationCheckRequired:pinningRevocationCheckRequired signMessage:signMessage isShortTransaction:0 rmAccountID:rmAccountID];
      CFRelease(copyMemberQueueIdentity);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__MDMDeclarativeManagement_fetchDataAtURL_completionHandler___block_invoke;
      v17[3] = &unk_278856D40;
      v18 = v15;
      v19 = handlerCopy;
      _createNoInstallationError = v15;
      [(DMCHTTPTransaction *)_createNoInstallationError performCompletionBlock:v17];
    }

    else
    {
      _createNoInstallationError = [self _createNoInstallationError];
      (*(handlerCopy + 2))(handlerCopy, 0, _createNoInstallationError);
    }
  }

  else
  {
    checkInPinnedSecCertificateRefs = [self _createNoInstallationError];
    (*(handlerCopy + 2))(handlerCopy, 0, checkInPinnedSecCertificateRefs);
  }
}

void __61__MDMDeclarativeManagement_fetchDataAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10[0] = @"ResponseStatusCode";
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "statusCode")}];
    v11[0] = v3;
    v10[1] = @"ResponseHeaders";
    v4 = [*(a1 + 32) responseHeaders];
    v11[1] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v6 = [v5 mutableCopy];

    v7 = [*(a1 + 32) responseData];
    [v6 setObject:v7 forKeyedSubscript:@"ResponseBody"];

    v8 = *(a1 + 40);
    v9 = [v6 copy];
    (*(v8 + 16))(v8, v9, 0);
  }
}

+ (void)downloadDataAtURL:(id)l downloadURL:(id)rL completionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  v11 = +[MDMConfiguration sharedConfiguration];
  [v11 refreshDetailsFromDisk];
  managingProfileIdentifier = [v11 managingProfileIdentifier];

  if (managingProfileIdentifier)
  {
    copyMemberQueueIdentity = [v11 copyMemberQueueIdentity];
    checkInPinnedSecCertificateRefs = [v11 checkInPinnedSecCertificateRefs];
    pinningRevocationCheckRequired = [v11 pinningRevocationCheckRequired];
    signMessage = [v11 signMessage];
    rmAccountID = [v11 rmAccountID];
    if (copyMemberQueueIdentity)
    {
      LOBYTE(v20) = 0;
      v18 = [[MDMHTTPTransaction alloc] initWithURL:lCopy downloadURL:rLCopy identity:copyMemberQueueIdentity pinnedCertificates:checkInPinnedSecCertificateRefs pinningRevocationCheckRequired:pinningRevocationCheckRequired signMessage:signMessage isShortTransaction:v20 rmAccountID:rmAccountID];
      CFRelease(copyMemberQueueIdentity);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __76__MDMDeclarativeManagement_downloadDataAtURL_downloadURL_completionHandler___block_invoke;
      v21[3] = &unk_278857070;
      v22 = v18;
      v24 = handlerCopy;
      v23 = rLCopy;
      _createNoInstallationError = v18;
      [(DMCHTTPTransaction *)_createNoInstallationError performCompletionBlock:v21];
    }

    else
    {
      _createNoInstallationError = [self _createNoInstallationError];
      (*(handlerCopy + 2))(handlerCopy, 0, _createNoInstallationError);
    }
  }

  else
  {
    checkInPinnedSecCertificateRefs = [self _createNoInstallationError];
    (*(handlerCopy + 2))(handlerCopy, 0, checkInPinnedSecCertificateRefs);
  }
}

void __76__MDMDeclarativeManagement_downloadDataAtURL_downloadURL_completionHandler___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7[0] = @"ResponseStatusCode";
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "statusCode")}];
    v8[0] = v3;
    v7[1] = @"ResponseHeaders";
    v4 = [*(a1 + 32) responseHeaders];
    v7[2] = @"ResponseDownloadURL";
    v5 = *(a1 + 40);
    v8[1] = v4;
    v8[2] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

    (*(*(a1 + 48) + 16))();
  }
}

+ (id)_createNoInstallationError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12079 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

@end