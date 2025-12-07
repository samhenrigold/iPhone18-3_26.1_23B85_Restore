@interface STSHandler
- (NFSession)activeChildSession;
- (id)activateWithHandoffToken:(id)token;
- (id)consumeHandoffToken;
- (id)createHandoffTokenFromSession:(id)session outError:(id *)error;
- (id)nfHardwareManager;
- (id)setActiveCredential:(id)credential;
- (id)setActiveCredentials:(id)credentials;
- (id)startNFSessionWithCompletion:(id)completion;
- (void)retainUnusedHandoffToken:(id)token;
- (void)tearDownWithCompletion:(id)completion;
@end

@implementation STSHandler

- (id)nfHardwareManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nfHwManager = [(STSHandler *)selfCopy nfHwManager];

  if (!nfHwManager)
  {
    v4 = objc_opt_new();
    [(STSHandler *)selfCopy setNfHwManager:v4];
  }

  nfHwManager2 = [(STSHandler *)selfCopy nfHwManager];
  manager = [nfHwManager2 manager];

  objc_sync_exit(selfCopy);

  return manager;
}

- (void)retainUnusedHandoffToken:(id)token
{
  tokenCopy = token;
  unusedHandoffToken = self->_unusedHandoffToken;
  if (unusedHandoffToken)
  {
    v6 = [(NSData *)unusedHandoffToken debugDescription];
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSHandler retainUnusedHandoffToken:]", 37, self, @"Overwriting previous unused token %{public}@", v7, v8, v6);

    unusedHandoffToken = self->_unusedHandoffToken;
  }

  self->_unusedHandoffToken = tokenCopy;
}

- (id)consumeHandoffToken
{
  unusedHandoffToken = self->_unusedHandoffToken;
  v4 = unusedHandoffToken;
  v5 = self->_unusedHandoffToken;
  self->_unusedHandoffToken = 0;

  return unusedHandoffToken;
}

- (id)setActiveCredential:(id)credential
{
  v22[4] = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSHandler setActiveCredential:]", 50, self, @"credential=%@", v7, v8, credentialCopy);
  if (credentialCopy && (v9 = [credentialCopy type], v9 != -[STSHandler supportedCredentialType](self, "supportedCredentialType")))
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSHandler setActiveCredential:]", 52, self, @"Invalid credential type", v10, v11, v20);
    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v21[0] = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v22[0] = v15;
    v22[1] = &unk_2876ED4E8;
    v21[1] = @"Line";
    v21[2] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v22[2] = v16;
    v21[3] = *MEMORY[0x277CCA068];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 53];
    v22[3] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v12 = [v13 errorWithDomain:v14 code:8 userInfo:v18];
  }

  else
  {
    objc_storeStrong(&self->_activeSTSCredential, credential);
    v12 = 0;
  }

  return v12;
}

- (id)createHandoffTokenFromSession:(id)session outError:(id *)error
{
  v26[4] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSHandler createHandoffTokenFromSession:outError:]", 62, self, @"Create token from %@", v8, v9, sessionCopy);
  v24 = 0;
  v10 = [sessionCopy createSessionHandoffToken:&v24];

  v11 = v24;
  v12 = v11;
  if (v11)
  {
    if (error)
    {
      v13 = v11;
      *error = v12;
    }
  }

  else if ([v10 length])
  {
    [(STSHandler *)self retainUnusedHandoffToken:v10];
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSHandler createHandoffTokenFromSession:outError:]", 70, self, @"Invalid token", v14, v15, v23);
    if (error)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v25[0] = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v26[0] = v18;
      v26[1] = &unk_2876ED500;
      v25[1] = @"Line";
      v25[2] = @"Method";
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v26[2] = v19;
      v25[3] = *MEMORY[0x277CCA068];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 71];
      v26[3] = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
      *error = [v16 errorWithDomain:v17 code:9 userInfo:v21];
    }
  }

  return v10;
}

- (id)setActiveCredentials:(id)credentials
{
  v24[4] = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSHandler setActiveCredentials:]", 81, self, @"credentials=%@", v7, v8, credentialsCopy);
  firstObject = [credentialsCopy firstObject];
  v10 = firstObject;
  if (firstObject && (v11 = [firstObject type], v11 != -[STSHandler supportedCredentialType](self, "supportedCredentialType")))
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSHandler setActiveCredentials:]", 85, self, @"Invalid credential type", v12, v13, v22);
    v15 = MEMORY[0x277CCA9B8];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v23[0] = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v24[0] = v17;
    v24[1] = &unk_2876ED518;
    v23[1] = @"Line";
    v23[2] = @"Method";
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v24[2] = v18;
    v23[3] = *MEMORY[0x277CCA068];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 86];
    v24[3] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
    v14 = [v15 errorWithDomain:v16 code:8 userInfo:v20];
  }

  else
  {
    objc_storeStrong(&self->_activeSTSCredential, v10);
    objc_storeStrong(&self->_activeSTSCredentials, credentials);
    v14 = 0;
  }

  return v14;
}

- (void)tearDownWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSHandler tearDownWithCompletion:]", 96, self, &stru_2876E3E50, v5, v6, v8);
  [(STSHandler *)self _tearDown];
  startedNFSession = self->_startedNFSession;
  if (startedNFSession)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_26538B4A4;
    v9[3] = &unk_279B93938;
    v10 = completionCopy;
    [startedNFSession endSessionWithCompletion:v9];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)activateWithHandoffToken:(id)token
{
  v53[4] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSHandler activateWithHandoffToken:]", 110, self, @"Creating session with token: %@", v7, v8, tokenCopy);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_26538BC90;
  v44 = sub_26538BCA0;
  v45 = 0;
  v9 = dispatch_semaphore_create(0);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_26538BCA8;
  v37[3] = &unk_279B93CE0;
  v37[4] = self;
  v39 = &v40;
  v10 = v9;
  v38 = v10;
  v13 = [(STSHandler *)self startNFSessionWithCompletion:v37];
  if (!v13)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSHandler activateWithHandoffToken:]", 124, self, @"Failed to start session.", v11, v12, v33);
    v24 = MEMORY[0x277CCA9B8];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v52[0] = *MEMORY[0x277CCA450];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unknown Error"];
    v53[0] = v36;
    v53[1] = &unk_2876ED530;
    v52[1] = @"Line";
    v52[2] = @"Method";
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v53[2] = v19;
    v52[3] = *MEMORY[0x277CCA068];
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 125];
    v53[3] = v3;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:4];
    v23 = [v24 errorWithDomain:v17 code:5 userInfo:v21];
    goto LABEL_6;
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 1, "[STSHandler activateWithHandoffToken:]", 128, self, @"Activating session with token: %@", v11, v12, tokenCopy);
  v14 = [v13 activateWithToken:tokenCopy];
  v17 = v14;
  if (v14)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSHandler activateWithHandoffToken:]", 131, self, @"Session switching error=%@", v15, v16, v14);
    [v13 endSession];
    v18 = MEMORY[0x277CCA9B8];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v50[0] = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
    v20 = *MEMORY[0x277CCA7E8];
    v51[0] = v19;
    v51[1] = v17;
    v50[1] = v20;
    v50[2] = @"Line";
    v51[2] = &unk_2876ED548;
    v50[3] = @"Method";
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v51[3] = v3;
    v50[4] = *MEMORY[0x277CCA068];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 133];
    v51[4] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:5];
    v23 = [v18 errorWithDomain:v36 code:10 userInfo:v22];
LABEL_4:

LABEL_6:
LABEL_7:

    goto LABEL_8;
  }

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);

  if (v41[5])
  {
    [v13 endSession];
    code = [v41[5] code];
    v34 = MEMORY[0x277CCA9B8];
    if (code != 50)
    {
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v46[0] = *MEMORY[0x277CCA450];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v47[0] = v19;
      v46[1] = *MEMORY[0x277CCA7E8];
      v28 = v41[5];
      if (v28)
      {
        v21 = v41[5];
      }

      else
      {
        v29 = MEMORY[0x277CCA9B8];
        v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v21 = [v29 errorWithDomain:v3 code:5 userInfo:0];
      }

      v47[1] = v21;
      v47[2] = &unk_2876ED578;
      v46[2] = @"Line";
      v46[3] = @"Method";
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v47[3] = v30;
      v46[4] = *MEMORY[0x277CCA068];
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 146];
      v47[4] = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:5];
      v23 = [v34 errorWithDomain:v36 code:10 userInfo:v32];
      v35 = v28 == 0;

      v17 = 0;
      v10 = 0;
      if (!v35)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v48[0] = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NFC radio disabled"];
    v49[0] = v19;
    v49[1] = &unk_2876ED560;
    v48[1] = @"Line";
    v48[2] = @"Method";
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v49[2] = v3;
    v48[3] = *MEMORY[0x277CCA068];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 144];
    v49[3] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:4];
    v23 = [v34 errorWithDomain:v36 code:18 userInfo:v22];
    v17 = 0;
    v10 = 0;
    goto LABEL_4;
  }

  objc_storeStrong(&self->_startedNFSession, v13);
  objc_storeWeak(&self->_activeChildSession, v13);
  consumeHandoffToken = [(STSHandler *)self consumeHandoffToken];
  v17 = 0;
  v10 = 0;
  v23 = 0;
LABEL_8:

  _Block_object_dispose(&v40, 8);

  return v23;
}

- (id)startNFSessionWithCompletion:(id)completion
{
  v16[4] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = MEMORY[0x277CCACA8];
  completionCopy = completion;
  v8 = [v6 stringWithUTF8String:"STS.fwk"];
  v15[0] = *MEMORY[0x277CCA450];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
  v16[0] = v9;
  v16[1] = &unk_2876ED590;
  v15[1] = @"Line";
  v15[2] = @"Method";
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v16[2] = v10;
  v15[3] = *MEMORY[0x277CCA068];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 169];
  v16[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v13 = [v5 errorWithDomain:v8 code:10 userInfo:v12];
  (*(completion + 2))(completionCopy, v13);

  return 0;
}

- (NFSession)activeChildSession
{
  WeakRetained = objc_loadWeakRetained(&self->_activeChildSession);

  return WeakRetained;
}

@end