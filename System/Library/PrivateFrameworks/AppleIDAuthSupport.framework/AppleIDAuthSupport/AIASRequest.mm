@interface AIASRequest
- (AIASRequest)initWithURL:(id)l data:(__CFDictionary *)data clientInfo:(id)info proxiedClientInfo:(id)clientInfo companionClientInfo:(id)companionClientInfo appleITeamId:(id)id appleIClientId:(id)clientId additionalHeaders:(id)self0;
- (void)resume;
@end

@implementation AIASRequest

- (AIASRequest)initWithURL:(id)l data:(__CFDictionary *)data clientInfo:(id)info proxiedClientInfo:(id)clientInfo companionClientInfo:(id)companionClientInfo appleITeamId:(id)id appleIClientId:(id)clientId additionalHeaders:(id)self0
{
  v54[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  infoCopy = info;
  clientInfoCopy = clientInfo;
  companionClientInfoCopy = companionClientInfo;
  idCopy = id;
  clientIdCopy = clientId;
  headersCopy = headers;
  v50.receiver = self;
  v50.super_class = AIASRequest;
  v22 = [(AIASRequest *)&v50 init];
  if (v22)
  {
    v46 = lCopy;
    v23 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:lCopy];
    [(AIASRequest *)v22 setURLRequest:v23];

    v53 = @"Version";
    v54[0] = @"1.0.1";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v51[0] = @"Header";
    v51[1] = @"Request";
    v45 = v24;
    v52[0] = v24;
    v52[1] = data;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
    v27 = v25;
    v28 = infoCopy;
    if (!infoCopy)
    {
      v28 = AppleIDAuthSupportGetClientInfo(v25, v26);
    }

    v29 = [MEMORY[0x277CCAC58] dataWithPropertyList:v27 format:100 options:0 error:0];
    if (v29)
    {
      uRLRequest = [(AIASRequest *)v22 URLRequest];
      [uRLRequest setHTTPMethod:@"POST"];

      uRLRequest2 = [(AIASRequest *)v22 URLRequest];
      [uRLRequest2 setHTTPBody:v29];

      uRLRequest3 = [(AIASRequest *)v22 URLRequest];
      [uRLRequest3 setValue:@"text/x-xml-plist" forHTTPHeaderField:@"Content-Type"];

      uRLRequest4 = [(AIASRequest *)v22 URLRequest];
      v34 = uRLRequest4;
      if (infoCopy)
      {
        v35 = @"X-MMe-Client-Info";
      }

      else
      {
        [uRLRequest4 setValue:v28 forHTTPHeaderField:@"User-Agent"];

        uRLRequest4 = [(AIASRequest *)v22 URLRequest];
        v34 = uRLRequest4;
        v35 = @"X-GS-Client-Info";
      }

      [uRLRequest4 setValue:v28 forHTTPHeaderField:v35];
      v37 = idCopy;

      if (clientInfoCopy)
      {
        uRLRequest5 = [(AIASRequest *)v22 URLRequest];
        [uRLRequest5 setValue:clientInfoCopy forHTTPHeaderField:@"X-MMe-Proxied-Client-Info"];
      }

      if (companionClientInfoCopy)
      {
        uRLRequest6 = [(AIASRequest *)v22 URLRequest];
        [uRLRequest6 setValue:companionClientInfoCopy forHTTPHeaderField:@"X-MMe-Companion-Client-Info"];
      }

      if (idCopy)
      {
        uRLRequest7 = [(AIASRequest *)v22 URLRequest];
        [uRLRequest7 setValue:idCopy forHTTPHeaderField:@"X-Apple-I-Team-Id"];
      }

      if (clientIdCopy)
      {
        uRLRequest8 = [(AIASRequest *)v22 URLRequest];
        [uRLRequest8 setValue:clientIdCopy forHTTPHeaderField:@"X-Apple-I-Client-Id"];
      }

      if (headersCopy)
      {
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __127__AIASRequest_initWithURL_data_clientInfo_proxiedClientInfo_companionClientInfo_appleITeamId_appleIClientId_additionalHeaders___block_invoke;
        v48[3] = &unk_278CAB7C0;
        v49 = v22;
        [headersCopy enumerateKeysAndObjectsUsingBlock:v48];
      }

      data = [MEMORY[0x277CBEB28] data];
      [(AIASRequest *)v22 setData:data];

      [(AIASRequest *)v22 setDone:0];
      [(AIASRequest *)v22 setSuccess:0];
      v43 = dispatch_semaphore_create(0);
      [(AIASRequest *)v22 setSema:v43];

      [(AIASRequest *)v22 setError:0];
      [(AIASRequest *)v22 setNetworkTaskDescription:0];
      v36 = v22;
    }

    else
    {
      v36 = 0;
      v37 = idCopy;
    }

    lCopy = v46;
  }

  else
  {
    v36 = 0;
    v28 = infoCopy;
    v37 = idCopy;
  }

  return v36;
}

void __127__AIASRequest_initWithURL_data_clientInfo_proxiedClientInfo_companionClientInfo_appleITeamId_appleIClientId_additionalHeaders___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
  {
    v9 = [v5 length];
    if (v9 < 2 || ([v5 substringToIndex:2], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "caseInsensitiveCompare:", @"X-"), v11, v12))
    {
      v13 = _AIDASOSLog(v9, v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v5;
        v14 = "Rejecting additional header %@: key must begin with X-";
LABEL_9:
        _os_log_impl(&dword_24056C000, v13, OS_LOG_TYPE_DEFAULT, v14, &v19, 0xCu);
      }
    }

    else
    {
      v15 = [*(a1 + 32) URLRequest];
      v16 = [v15 valueForHTTPHeaderField:v5];

      if (!v16)
      {
        v13 = [*(a1 + 32) URLRequest];
        [v13 setValue:v6 forHTTPHeaderField:v5];
        goto LABEL_10;
      }

      v13 = _AIDASOSLog(v17, v18);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v5;
        v14 = "Rejecting additional header %@: key is already set via other options";
        goto LABEL_9;
      }
    }
  }

  else
  {
    v13 = _AIDASOSLog(isKindOfClass, v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v5;
      v14 = "Rejecting additional header %@: key and value must be strings";
      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)resume
{
  task = [(AIASRequest *)self task];
  [task resume];
}

@end