@interface NPKIDVRemoteDeviceSession
+ (void)sessionForDeviceID:(id)d completion:(id)completion;
- (NPKIDVRemoteDeviceSession)init;
- (NSString)description;
- (NSString)deviceID;
- (id)_errorHandlerWithCompletion:(id)completion;
- (id)_remoteObjectProxyWithFailureHandler:(id)handler;
- (id)remoteService;
- (unint64_t)status;
- (void)_confirmRemoteDeviceID:(id)d withCompletion:(id)completion;
- (void)_generateKeyWithType:(unint64_t)type credentialIdentifier:(id)identifier completion:(id)completion;
- (void)addNotificationWithType:(unint64_t)type documentType:(unint64_t)documentType issuerName:(id)name completion:(id)completion;
- (void)configureWithPartition:(id)partition ackHandler:(id)handler;
- (void)createCredentialInPartition:(id)partition options:(id)options completion:(id)completion;
- (void)credentialIdentifiersInPartitions:(id)partitions completion:(id)completion;
- (void)credentialPreflightStatusForType:(unint64_t)type minOSVersion:(id)version completion:(id)completion;
- (void)dealloc;
- (void)deleteCredential:(id)credential completion:(id)completion;
- (void)deleteGlobalAuthACLWithCompletion:(id)completion;
- (void)deletePIIHashDataForCredentialIdentifier:(id)identifier completion:(id)completion;
- (void)elementsOfCredential:(id)credential elementIdentifiers:(id)identifiers completion:(id)completion;
- (void)establishPrearmTrustV2:(id)v2 completion:(id)completion;
- (void)fetchRemoteBiometricAuthenticationStatusForCredentialType:(unint64_t)type completion:(id)completion;
- (void)generatePresentmentKeysForCredential:(id)credential numKeys:(int64_t)keys completion:(id)completion;
- (void)getCASDCertificateWithCompletion:(id)completion;
- (void)invalidateSession;
- (void)nonceForAuthorizationTokenWithCompletion:(id)completion;
- (void)pairedWatchSEIDWithCompletion:(id)completion;
- (void)prearmCredentialWithAuthorizationToken:(id)token completion:(id)completion;
- (void)propertiesOfCredential:(id)credential completion:(id)completion;
- (void)provisionCredentialWithType:(unint64_t)type metadata:(id)metadata credentialIdentifier:(id)identifier attestations:(id)attestations supplementalData:(id)data completion:(id)completion;
- (void)provisionedCredentialCountForType:(unint64_t)type completion:(id)completion;
- (void)registerForEvents:(unint64_t)events withRemoteProcessServiceName:(id)name completion:(id)completion;
- (void)remoteService:(id)service didEstablishConnection:(id)connection;
- (void)remoteService:(id)service didInterruptConnection:(id)connection;
- (void)retrievePIIHashDataForCredentialIdentifier:(id)identifier completion:(id)completion;
- (void)setDeviceID:(id)d;
- (void)setRemoteService:(id)service;
- (void)setStatus:(unint64_t)status;
- (void)storePIIHashDataForCredentialIdentifier:(id)identifier data:(id)data completion:(id)completion;
- (void)unregisterFromEvents:(unint64_t)events withRemoteProcessServiceName:(id)name completion:(id)completion;
- (void)updateProofingConfiguration:(id)configuration completion:(id)completion;
@end

@implementation NPKIDVRemoteDeviceSession

- (NPKIDVRemoteDeviceSession)init
{
  v10.receiver = self;
  v10.super_class = NPKIDVRemoteDeviceSession;
  v2 = [(NPKIDVRemoteDeviceSession *)&v10 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_deviceIDLock._os_unfair_lock_opaque = 0;
    v2->_remoteServiceLock._os_unfair_lock_opaque = 0;
    deviceID = v2->_deviceID;
    v2->_deviceID = @"NPKIDVRemoteDeviceSessionInvalidDeviceID";
    v2->_status = 0;

    v5 = objc_alloc(MEMORY[0x277D38348]);
    v6 = NPKIDVRemoteDeviceServiceSessionServerProtocolInterface();
    v7 = [v5 initWithMachServiceName:@"com.apple.NanoPassbook.IDVRemoteDeviceService.session.server" remoteObjectInterface:v6 exportedObjectInterface:0 exportedObject:v3];
    remoteService = v3->_remoteService;
    v3->_remoteService = v7;

    [(PKXPCService *)v3->_remoteService setDelegate:v3];
    [(PKXPCService *)v3->_remoteService setForceConnectionOnResume:1];
  }

  return v3;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[NPKIDVRemoteDeviceSession dealloc]";
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s, %@", buf, 0x16u);
    }
  }

  v7.receiver = self;
  v7.super_class = NPKIDVRemoteDeviceSession;
  [(NPKIDVRemoteDeviceSession *)&v7 dealloc];
}

+ (void)sessionForDeviceID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = objc_alloc_init(self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__NPKIDVRemoteDeviceSession_sessionForDeviceID_completion___block_invoke;
  v10[3] = &unk_279947C80;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 _confirmRemoteDeviceID:dCopy withCompletion:v10];
}

void __59__NPKIDVRemoteDeviceSession_sessionForDeviceID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NPKIDVRemoteDeviceSession_sessionForDeviceID_completion___block_invoke_2;
  block[3] = &unk_279946780;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (NSString)deviceID
{
  os_unfair_lock_lock(&self->_deviceIDLock);
  v3 = self->_deviceID;
  os_unfair_lock_unlock(&self->_deviceIDLock);

  return v3;
}

- (void)setDeviceID:(id)d
{
  v4 = [d copy];
  os_unfair_lock_lock(&self->_deviceIDLock);
  deviceID = self->_deviceID;
  self->_deviceID = v4;

  os_unfair_lock_unlock(&self->_deviceIDLock);
}

- (void)_confirmRemoteDeviceID:(id)d withCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = dCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: requested confirm DeviceID:%@", buf, 0xCu);
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__NPKIDVRemoteDeviceSession__confirmRemoteDeviceID_withCompletion___block_invoke;
  v18[3] = &unk_279945150;
  v19 = dCopy;
  v12 = completionCopy;
  v20 = v12;
  v13 = dCopy;
  v14 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__NPKIDVRemoteDeviceSession__confirmRemoteDeviceID_withCompletion___block_invoke_69;
  v16[3] = &unk_279947CA8;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  [v14 confirmRemoteDeviceID:v13 withCompletion:v16];
}

void __67__NPKIDVRemoteDeviceSession__confirmRemoteDeviceID_withCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error during deviceID:%@ check", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 40);
  v8 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v7 + 16))(v7, 0, v8);
}

void __67__NPKIDVRemoteDeviceSession__confirmRemoteDeviceID_withCompletion___block_invoke_69(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Finish request confirmation DeviceID:%@, error:%@", &v16, 0x16u);
      }
    }

    [*(a1 + 32) invalidateSession];
    v12 = 0;
  }

  else
  {
    v13 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v15 = pk_Payment_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v5;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Finish request confirmation DeviceID:%@", &v16, 0xCu);
      }
    }

    v12 = *(a1 + 32);
    [*(a1 + 32) setDeviceID:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)credentialPreflightStatusForType:(unint64_t)type minOSVersion:(id)version completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  completionCopy = completion;
  v10 = pk_Payment_log(completionCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromNPKIDVRemoteDeviceCredentialType(type);
      *buf = 138412546;
      v25 = v14;
      v26 = 2112;
      v27 = versionCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested credential preflight status for type:%@ minOSVersion:%@", buf, 0x16u);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__NPKIDVRemoteDeviceSession_credentialPreflightStatusForType_minOSVersion_completion___block_invoke;
  v21[3] = &unk_279945128;
  typeCopy = type;
  v15 = completionCopy;
  v22 = v15;
  v16 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__NPKIDVRemoteDeviceSession_credentialPreflightStatusForType_minOSVersion_completion___block_invoke_71;
  v18[3] = &unk_279947CD0;
  v19 = v15;
  typeCopy2 = type;
  v18[4] = self;
  v17 = v15;
  [v16 credentialPreflightStatusForType:type minOSVersion:versionCopy completion:v18];
}

void __86__NPKIDVRemoteDeviceSession_credentialPreflightStatusForType_minOSVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromNPKIDVRemoteDeviceCredentialType(*(a1 + 40));
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error request credential preflight status for type:%@ error:%@", &v11, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  v10 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v9 + 16))(v9, 0, v10);
}

void __86__NPKIDVRemoteDeviceSession_credentialPreflightStatusForType_minOSVersion_completion___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v12 = pk_Payment_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromNPKIDVRemoteDeviceCredentialType(*(a1 + 48));
        v20 = 138412802;
        v21 = v13;
        v22 = 2112;
        v23 = v5;
        v24 = 2112;
        v25 = v6;
        v14 = "Error: NPKIDVRemoteDeviceService: Finish request credential preflight status for type:%@ status:%@ error:%@";
        v15 = v12;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 32;
LABEL_8:
        _os_log_impl(&dword_25B300000, v15, v16, v14, &v20, v17);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v12 = pk_Payment_log(v19);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = NSStringFromNPKIDVRemoteDeviceCredentialType(*(a1 + 48));
        v20 = 138412546;
        v21 = v13;
        v22 = 2112;
        v23 = v5;
        v14 = "Notice: NPKIDVRemoteDeviceService: Finish request credential preflight status for type:%@ status:%@";
        v15 = v12;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 22;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v11);
}

- (void)pairedWatchSEIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = pk_Payment_log(completionCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Received request for device SEID", buf, 2u);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__NPKIDVRemoteDeviceSession_pairedWatchSEIDWithCompletion___block_invoke;
  v14[3] = &unk_279945218;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__NPKIDVRemoteDeviceSession_pairedWatchSEIDWithCompletion___block_invoke_73;
  v12[3] = &unk_279947CF8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 pairedWatchSEIDWithCompletion:v12];
}

void __59__NPKIDVRemoteDeviceSession_pairedWatchSEIDWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error during device SEID request: %@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v8 + 16))(v8, 0, v9);
}

void __59__NPKIDVRemoteDeviceSession_pairedWatchSEIDWithCompletion___block_invoke_73(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v12 = pk_Payment_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412546;
        v20 = v5;
        v21 = 2112;
        v22 = v6;
        v13 = "Error: NPKIDVRemoteDeviceService: Request for device SEID: %@ deviceSEID complete with error: %@";
        v14 = v12;
        v15 = OS_LOG_TYPE_ERROR;
        v16 = 22;
LABEL_8:
        _os_log_impl(&dword_25B300000, v14, v15, v13, &v19, v16);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v12 = pk_Payment_log(v18);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v5;
        v13 = "Notice: NPKIDVRemoteDeviceService: Request for device SEID: %@ deviceSEID complete";
        v14 = v12;
        v15 = OS_LOG_TYPE_DEFAULT;
        v16 = 12;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v11);
}

- (void)provisionedCredentialCountForType:(unint64_t)type completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = pk_Payment_log(completionCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromNPKIDVRemoteDeviceCredentialType(type);
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Received request for provisioned credential count of type: %@", buf, 0xCu);
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__NPKIDVRemoteDeviceSession_provisionedCredentialCountForType_completion___block_invoke;
  v18[3] = &unk_279945128;
  typeCopy = type;
  v12 = completionCopy;
  v19 = v12;
  v13 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__NPKIDVRemoteDeviceSession_provisionedCredentialCountForType_completion___block_invoke_74;
  v15[3] = &unk_279947D20;
  v16 = v12;
  typeCopy2 = type;
  v15[4] = self;
  v14 = v12;
  [v13 provisionedCredentialCountForType:type completion:v15];
}

void __74__NPKIDVRemoteDeviceSession_provisionedCredentialCountForType_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromNPKIDVRemoteDeviceCredentialType(*(a1 + 40));
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error during provisioned credential count request of type %@: %@", &v11, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  v10 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v9 + 16))(v9, 0x7FFFFFFFFFFFFFFFLL, v10);
}

void __74__NPKIDVRemoteDeviceSession_provisionedCredentialCountForType_completion___block_invoke_74(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_Payment_log(v5);
  v7 = v6;
  if (v5)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v11 = pk_Payment_log(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromNPKIDVRemoteDeviceCredentialType(*(a1 + 48));
        v19 = 138412802;
        v20 = v12;
        v21 = 2048;
        v22 = a2;
        v23 = 2112;
        v24 = v5;
        v13 = "Error: NPKIDVRemoteDeviceService: Finished request for provisioned credential count of type:%@. Count:%lu error:%@";
        v14 = v11;
        v15 = OS_LOG_TYPE_ERROR;
        v16 = 32;
LABEL_8:
        _os_log_impl(&dword_25B300000, v14, v15, v13, &v19, v16);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v11 = pk_Payment_log(v18);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSStringFromNPKIDVRemoteDeviceCredentialType(*(a1 + 48));
        v19 = 138412546;
        v20 = v12;
        v21 = 2048;
        v22 = a2;
        v13 = "Notice: NPKIDVRemoteDeviceService: Finished request for provisioned credential count of type:%@. Count:%lu";
        v14 = v11;
        v15 = OS_LOG_TYPE_DEFAULT;
        v16 = 22;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v10);
}

- (void)fetchRemoteBiometricAuthenticationStatusForCredentialType:(unint64_t)type completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = pk_Payment_log(completionCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromNPKIDVRemoteDeviceCredentialType(type);
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Received request for remote biometric authentication status of type: %@", buf, 0xCu);
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __98__NPKIDVRemoteDeviceSession_fetchRemoteBiometricAuthenticationStatusForCredentialType_completion___block_invoke;
  v18[3] = &unk_279945128;
  typeCopy = type;
  v12 = completionCopy;
  v19 = v12;
  v13 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__NPKIDVRemoteDeviceSession_fetchRemoteBiometricAuthenticationStatusForCredentialType_completion___block_invoke_76;
  v15[3] = &unk_279947D48;
  v16 = v12;
  typeCopy2 = type;
  v15[4] = self;
  v14 = v12;
  [v13 fetchRemoteBiometricAuthenticationStatusForCredentialType:type completion:v15];
}

void __98__NPKIDVRemoteDeviceSession_fetchRemoteBiometricAuthenticationStatusForCredentialType_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromNPKIDVRemoteDeviceCredentialType(*(a1 + 40));
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error during remote biometric authentication status request of type %@: %@", &v11, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  v10 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v9 + 16))(v9, 0, v10);
}

void __98__NPKIDVRemoteDeviceSession_fetchRemoteBiometricAuthenticationStatusForCredentialType_completion___block_invoke_76(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_Payment_log(v5);
  v7 = v6;
  if (v5)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v11 = pk_Payment_log(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromNPKIDVRemoteDeviceCredentialType(*(a1 + 48));
        v13 = NSStringFromBOOL();
        v20 = 138412802;
        v21 = v12;
        v22 = 2112;
        v23 = v13;
        v24 = 2112;
        v25 = v5;
        v14 = "Error: NPKIDVRemoteDeviceService: Finished request for remote biometric authentication status of type:%@. Trust lost:%@ error:%@";
        v15 = v11;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 32;
LABEL_8:
        _os_log_impl(&dword_25B300000, v15, v16, v14, &v20, v17);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v11 = pk_Payment_log(v19);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSStringFromNPKIDVRemoteDeviceCredentialType(*(a1 + 48));
        v13 = NSStringFromBOOL();
        v20 = 138412546;
        v21 = v12;
        v22 = 2112;
        v23 = v13;
        v14 = "Notice: NPKIDVRemoteDeviceService: Finished request for remote biometric authentication status of type:%@. Trust lost:%@";
        v15 = v11;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 22;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v10);
}

- (void)registerForEvents:(unint64_t)events withRemoteProcessServiceName:(id)name completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  completionCopy = completion;
  v10 = pk_Payment_log(completionCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(events);
      *buf = 138412546;
      v29 = v14;
      v30 = 2112;
      v31 = nameCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested register for events:%@ with serviceName:%@", buf, 0x16u);
    }
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __87__NPKIDVRemoteDeviceSession_registerForEvents_withRemoteProcessServiceName_completion___block_invoke;
  v24[3] = &unk_279947D70;
  eventsCopy = events;
  v15 = nameCopy;
  v25 = v15;
  v16 = completionCopy;
  v26 = v16;
  v17 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v24];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__NPKIDVRemoteDeviceSession_registerForEvents_withRemoteProcessServiceName_completion___block_invoke_78;
  v20[3] = &unk_279947D98;
  selfCopy = self;
  v23 = v16;
  v21 = v15;
  v18 = v16;
  v19 = v15;
  [v17 registerForEvents:events withRemoteProcessServiceName:v19 completion:v20];
}

void __87__NPKIDVRemoteDeviceSession_registerForEvents_withRemoteProcessServiceName_completion___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a1[6]);
      v9 = a1[4];
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error request register for events:%@ with serviceName:%@ error:%@", &v12, 0x20u);
    }
  }

  v10 = a1[5];
  v11 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v10 + 16))(v10, 0xFFFFFFFF80000000, v11);
}

void __87__NPKIDVRemoteDeviceSession_registerForEvents_withRemoteProcessServiceName_completion___block_invoke_78(uint64_t a1, unint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_Payment_log(v5);
  v7 = v6;
  if (v5)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v11 = pk_Payment_log(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a2);
        v13 = *(a1 + 32);
        v21 = 138412802;
        v22 = v12;
        v23 = 2112;
        v24 = v13;
        v25 = 2112;
        v26 = v5;
        v14 = "Error: NPKIDVRemoteDeviceService: Finish request register for events with currentEvents:%@ serviceName:%@ error:%@";
        v15 = v11;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 32;
LABEL_8:
        _os_log_impl(&dword_25B300000, v15, v16, v14, &v21, v17);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v11 = pk_Payment_log(v19);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a2);
        v20 = *(a1 + 32);
        v21 = 138412546;
        v22 = v12;
        v23 = 2112;
        v24 = v20;
        v14 = "Notice: NPKIDVRemoteDeviceService: Finish request register for events with currentEvents:%@ serviceName:%@";
        v15 = v11;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 22;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), a2, v5, v10);
}

- (void)unregisterFromEvents:(unint64_t)events withRemoteProcessServiceName:(id)name completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  completionCopy = completion;
  v10 = pk_Payment_log(completionCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(events);
      *buf = 138412546;
      v29 = v14;
      v30 = 2112;
      v31 = nameCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested unregister for events:%@ with serviceName:%@", buf, 0x16u);
    }
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __90__NPKIDVRemoteDeviceSession_unregisterFromEvents_withRemoteProcessServiceName_completion___block_invoke;
  v24[3] = &unk_279947D70;
  eventsCopy = events;
  v15 = nameCopy;
  v25 = v15;
  v16 = completionCopy;
  v26 = v16;
  v17 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v24];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __90__NPKIDVRemoteDeviceSession_unregisterFromEvents_withRemoteProcessServiceName_completion___block_invoke_79;
  v20[3] = &unk_279947D98;
  selfCopy = self;
  v23 = v16;
  v21 = v15;
  v18 = v16;
  v19 = v15;
  [v17 unregisterFromEvents:events withRemoteProcessServiceName:v19 completion:v20];
}

void __90__NPKIDVRemoteDeviceSession_unregisterFromEvents_withRemoteProcessServiceName_completion___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a1[6]);
      v9 = a1[4];
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error request unregister for events:%@ with serviceName:%@ error:%@", &v12, 0x20u);
    }
  }

  v10 = a1[5];
  v11 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v10 + 16))(v10, 0xFFFFFFFF80000000, v11);
}

void __90__NPKIDVRemoteDeviceSession_unregisterFromEvents_withRemoteProcessServiceName_completion___block_invoke_79(uint64_t a1, unint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_Payment_log(v5);
  v7 = v6;
  if (v5)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v11 = pk_Payment_log(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a2);
        v13 = *(a1 + 32);
        v21 = 138412802;
        v22 = v12;
        v23 = 2112;
        v24 = v13;
        v25 = 2112;
        v26 = v5;
        v14 = "Error: NPKIDVRemoteDeviceService: Finish request unregister for events with currentEvents:%@ serviceName:%@ error:%@";
        v15 = v11;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 32;
LABEL_8:
        _os_log_impl(&dword_25B300000, v15, v16, v14, &v21, v17);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v11 = pk_Payment_log(v19);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a2);
        v20 = *(a1 + 32);
        v21 = 138412546;
        v22 = v12;
        v23 = 2112;
        v24 = v20;
        v14 = "Notice: NPKIDVRemoteDeviceService: Finish request unregister for events with currentEvents:%@ serviceName:%@";
        v15 = v11;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 22;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), a2, v5, v10);
}

- (void)configureWithPartition:(id)partition ackHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  partitionCopy = partition;
  handlerCopy = handler;
  v8 = pk_Payment_log(handlerCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = partitionCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested configure Credential store partitions:%@", buf, 0xCu);
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__NPKIDVRemoteDeviceSession_configureWithPartition_ackHandler___block_invoke;
  v18[3] = &unk_279945150;
  v19 = partitionCopy;
  v12 = handlerCopy;
  v20 = v12;
  v13 = partitionCopy;
  v14 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__NPKIDVRemoteDeviceSession_configureWithPartition_ackHandler___block_invoke_80;
  v16[3] = &unk_279947DC0;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  [v14 configureWithPartition:v13 ackHandler:v16];
}

void __63__NPKIDVRemoteDeviceSession_configureWithPartition_ackHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error configuring Credential store partitions %@ with error:%@", &v10, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

void __63__NPKIDVRemoteDeviceSession_configureWithPartition_ackHandler___block_invoke_80(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (!v6)
    {
      goto LABEL_10;
    }

    v8 = pk_Payment_log(v7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v16 = 138412290;
    v17 = v3;
    v9 = "Error: NPKIDVRemoteDeviceService: Fail configure Credential store partitions with error:%@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
    goto LABEL_8;
  }

  v13 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (!v13)
  {
    goto LABEL_10;
  }

  v8 = pk_Payment_log(v14);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    v9 = "Notice: NPKIDVRemoteDeviceService: Finish configure Credential store partitions";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 2;
LABEL_8:
    _os_log_impl(&dword_25B300000, v10, v11, v9, &v16, v12);
  }

LABEL_9:

LABEL_10:
  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }
}

- (void)createCredentialInPartition:(id)partition options:(id)options completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  partitionCopy = partition;
  optionsCopy = options;
  completionCopy = completion;
  v11 = pk_Payment_log(completionCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = partitionCopy;
      v26 = 2112;
      v27 = optionsCopy;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested create credential in partition:%@ with options:%@", buf, 0x16u);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76__NPKIDVRemoteDeviceSession_createCredentialInPartition_options_completion___block_invoke;
  v21[3] = &unk_279945150;
  v22 = partitionCopy;
  v15 = completionCopy;
  v23 = v15;
  v16 = partitionCopy;
  v17 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__NPKIDVRemoteDeviceSession_createCredentialInPartition_options_completion___block_invoke_81;
  v19[3] = &unk_279947CF8;
  v19[4] = self;
  v20 = v15;
  v18 = v15;
  [v17 createCredentialInPartition:v16 options:optionsCopy completion:v19];
}

void __76__NPKIDVRemoteDeviceSession_createCredentialInPartition_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error creating Credential in Partition %@ with error:%@", &v11, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  v10 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v9 + 16))(v9, 0, v10);
}

void __76__NPKIDVRemoteDeviceSession_createCredentialInPartition_options_completion___block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v6;
        v12 = "Error: NPKIDVRemoteDeviceService: Fail create credential in partition with error:%@";
        v13 = v11;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_25B300000, v13, v14, v12, &v17, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v15 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v11 = pk_Payment_log(v16);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v5;
        v12 = "Notice: NPKIDVRemoteDeviceService: Finish create credential in partition with identifier:%@";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5);
}

- (void)generatePresentmentKeysForCredential:(id)credential numKeys:(int64_t)keys completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  completionCopy = completion;
  v10 = pk_Payment_log(completionCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = credentialCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested generate presentment keys for credential:%@", buf, 0xCu);
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __85__NPKIDVRemoteDeviceSession_generatePresentmentKeysForCredential_numKeys_completion___block_invoke;
  v23[3] = &unk_279945150;
  v14 = credentialCopy;
  v24 = v14;
  v15 = completionCopy;
  v25 = v15;
  v16 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v23];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__NPKIDVRemoteDeviceSession_generatePresentmentKeysForCredential_numKeys_completion___block_invoke_82;
  v19[3] = &unk_279947DE8;
  selfCopy = self;
  v22 = v15;
  v20 = v14;
  v17 = v15;
  v18 = v14;
  [v16 generatePresentmentKeysForCredential:v18 numKeys:keys completion:v19];
}

void __85__NPKIDVRemoteDeviceSession_generatePresentmentKeysForCredential_numKeys_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error generating presentment keys for credential:%@ with error:%@", &v11, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  v10 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v9 + 16))(v9, 0, v10);
}

void __85__NPKIDVRemoteDeviceSession_generatePresentmentKeysForCredential_numKeys_completion___block_invoke_82(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v12 = pk_Payment_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v21 = 138412546;
        v22 = v13;
        v23 = 2112;
        v24 = v6;
        v14 = "Error: NPKIDVRemoteDeviceService: Failed to generate presentment keys for credential:%@ with error:%@";
        v15 = v12;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 22;
LABEL_8:
        _os_log_impl(&dword_25B300000, v15, v16, v14, &v21, v17);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v12 = pk_Payment_log(v19);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        v21 = 138412290;
        v22 = v20;
        v14 = "Notice: NPKIDVRemoteDeviceService: Finish generating presentment keys of for credential:%@";
        v15 = v12;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 12;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v11);
}

- (void)_generateKeyWithType:(unint64_t)type credentialIdentifier:(id)identifier completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = pk_Payment_log(completionCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromNPKIDVRemoteDeviceCredentialStorageKeyType(type);
      *buf = 138412546;
      v30 = v14;
      v31 = 2112;
      v32 = identifierCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested generate Key of type:%@ For Credential:%@", buf, 0x16u);
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __82__NPKIDVRemoteDeviceSession__generateKeyWithType_credentialIdentifier_completion___block_invoke;
  v25[3] = &unk_279947D70;
  typeCopy = type;
  v15 = identifierCopy;
  v26 = v15;
  v16 = completionCopy;
  v27 = v16;
  v17 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v25];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __82__NPKIDVRemoteDeviceSession__generateKeyWithType_credentialIdentifier_completion___block_invoke_84;
  v20[3] = &unk_279947E10;
  v23 = v16;
  typeCopy2 = type;
  v21 = v15;
  selfCopy = self;
  v18 = v16;
  v19 = v15;
  [v17 generateKeyWithType:type credentialIdentifier:v19 completion:v20];
}

void __82__NPKIDVRemoteDeviceSession__generateKeyWithType_credentialIdentifier_completion___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromNPKIDVRemoteDeviceCredentialStorageKeyType(a1[6]);
      v9 = a1[4];
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error generating Key of type:%@ For Credential:%@ with error:%@", &v12, 0x20u);
    }
  }

  v10 = a1[5];
  v11 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v10 + 16))(v10, 0, v11);
}

void __82__NPKIDVRemoteDeviceSession__generateKeyWithType_credentialIdentifier_completion___block_invoke_84(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v12 = pk_Payment_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromNPKIDVRemoteDeviceCredentialStorageKeyType(a1[7]);
        v14 = a1[4];
        v22 = 138412802;
        v23 = v13;
        v24 = 2112;
        v25 = v14;
        v26 = 2112;
        v27 = v6;
        v15 = "Error: NPKIDVRemoteDeviceService: Fail generating Key of type:%@ For Credential:%@ with error:%@";
        v16 = v12;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 32;
LABEL_8:
        _os_log_impl(&dword_25B300000, v16, v17, v15, &v22, v18);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v19 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v12 = pk_Payment_log(v20);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = NSStringFromNPKIDVRemoteDeviceCredentialStorageKeyType(a1[7]);
        v21 = a1[4];
        v22 = 138412546;
        v23 = v13;
        v24 = 2112;
        v25 = v21;
        v15 = "Notice: NPKIDVRemoteDeviceService: Finish generate Key of type:%@ For Credential:%@";
        v16 = v12;
        v17 = OS_LOG_TYPE_DEFAULT;
        v18 = 22;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(a1[6] + 16))(a1[6], v5, v6, v11);
}

- (void)deleteCredential:(id)credential completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = credentialCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested delete Credential:%@", buf, 0xCu);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__NPKIDVRemoteDeviceSession_deleteCredential_completion___block_invoke;
  v20[3] = &unk_279945218;
  v12 = completionCopy;
  v21 = v12;
  v13 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v20];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__NPKIDVRemoteDeviceSession_deleteCredential_completion___block_invoke_86;
  v16[3] = &unk_279947E38;
  selfCopy = self;
  v19 = v12;
  v17 = credentialCopy;
  v14 = v12;
  v15 = credentialCopy;
  [v13 deleteCredential:v15 completion:v16];
}

void __57__NPKIDVRemoteDeviceSession_deleteCredential_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error deleting Credential with error:%@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v8 + 16))(v8, v9);
}

void __57__NPKIDVRemoteDeviceSession_deleteCredential_completion___block_invoke_86(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v3;
        v9 = "Error: NPKIDVRemoteDeviceService: Fail deleting Credential with error:%@";
        v10 = v8;
        v11 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_25B300000, v10, v11, v9, &v15, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v12 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v8 = pk_Payment_log(v13);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = 138412290;
        v16 = v14;
        v9 = "Notice: NPKIDVRemoteDeviceService: Finish delete Credential:%@";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v3);
}

- (void)propertiesOfCredential:(id)credential completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = credentialCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested fetch properties Of Credential:%@", buf, 0xCu);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__NPKIDVRemoteDeviceSession_propertiesOfCredential_completion___block_invoke;
  v20[3] = &unk_279945218;
  v12 = completionCopy;
  v21 = v12;
  v13 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v20];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__NPKIDVRemoteDeviceSession_propertiesOfCredential_completion___block_invoke_87;
  v16[3] = &unk_279947E60;
  selfCopy = self;
  v19 = v12;
  v17 = credentialCopy;
  v14 = v12;
  v15 = credentialCopy;
  [v13 propertiesOfCredential:v15 completion:v16];
}

void __63__NPKIDVRemoteDeviceSession_propertiesOfCredential_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error fetching properties Of Credential with error:%@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v8 + 16))(v8, 0, v9);
}

void __63__NPKIDVRemoteDeviceSession_propertiesOfCredential_completion___block_invoke_87(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = v6;
        v12 = "Error: NPKIDVRemoteDeviceService: Fail fetching properties Of Credential with error:%@";
        v13 = v11;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_25B300000, v13, v14, v12, &v18, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v15 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v11 = pk_Payment_log(v16);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v18 = 138412290;
        v19 = v17;
        v12 = "Notice: NPKIDVRemoteDeviceService: Finish fetch properties Of Credential:%@";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v5);
}

- (void)credentialIdentifiersInPartitions:(id)partitions completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  partitionsCopy = partitions;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = partitionsCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested fetch credential Identifiers In Partitions:%@", buf, 0xCu);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__NPKIDVRemoteDeviceSession_credentialIdentifiersInPartitions_completion___block_invoke;
  v20[3] = &unk_279945218;
  v12 = completionCopy;
  v21 = v12;
  v13 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v20];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__NPKIDVRemoteDeviceSession_credentialIdentifiersInPartitions_completion___block_invoke_89;
  v16[3] = &unk_279947E88;
  selfCopy = self;
  v19 = v12;
  v17 = partitionsCopy;
  v14 = v12;
  v15 = partitionsCopy;
  [v13 credentialIdentifiersInPartitions:v15 completion:v16];
}

void __74__NPKIDVRemoteDeviceSession_credentialIdentifiersInPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error fetching credential Identifiers In Partitions with error:%@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v8 + 16))(v8, 0, v9);
}

void __74__NPKIDVRemoteDeviceSession_credentialIdentifiersInPartitions_completion___block_invoke_89(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v12 = pk_Payment_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v21 = 138412546;
        v22 = v13;
        v23 = 2112;
        v24 = v6;
        v14 = "Error: NPKIDVRemoteDeviceService: Fail fetching credential identifiers in partitions %@ with error:%@";
        v15 = v12;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 22;
LABEL_8:
        _os_log_impl(&dword_25B300000, v15, v16, v14, &v21, v17);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v12 = pk_Payment_log(v19);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        v21 = 138412290;
        v22 = v20;
        v14 = "Notice: NPKIDVRemoteDeviceService: Finish fetch credential identifiers in partitions:%@";
        v15 = v12;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 12;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v11);
}

- (void)elementsOfCredential:(id)credential elementIdentifiers:(id)identifiers completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v10 = pk_Payment_log(completionCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = identifiersCopy;
      v17 = 2112;
      v18 = credentialCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Requested fetch credential elements:%@ of credential:%@. THIS METHOD IS NOT LONGER SUPPORTED", &v15, 0x16u);
    }
  }

  v14 = NPKIDVRemoteDeviceSessionError(-1000, 0);
  completionCopy[2](completionCopy, 0, v14);
}

- (void)provisionCredentialWithType:(unint64_t)type metadata:(id)metadata credentialIdentifier:(id)identifier attestations:(id)attestations supplementalData:(id)data completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  dataCopy = data;
  attestationsCopy = attestations;
  metadataCopy = metadata;
  v19 = pk_Payment_log(metadataCopy);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

  if (v20)
  {
    v22 = pk_Payment_log(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = NSStringFromNPKIDVRemoteDeviceCredentialType(type);
      *buf = 138412546;
      v38 = v23;
      v39 = 2112;
      v40 = identifierCopy;
      _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested provision credential type:%@ credential Identifier:%@", buf, 0x16u);
    }
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __128__NPKIDVRemoteDeviceSession_provisionCredentialWithType_metadata_credentialIdentifier_attestations_supplementalData_completion___block_invoke;
  v33[3] = &unk_279947D70;
  typeCopy = type;
  v24 = identifierCopy;
  v34 = v24;
  v25 = completionCopy;
  v35 = v25;
  v26 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v33];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __128__NPKIDVRemoteDeviceSession_provisionCredentialWithType_metadata_credentialIdentifier_attestations_supplementalData_completion___block_invoke_91;
  v29[3] = &unk_279947EB0;
  v31 = v25;
  typeCopy2 = type;
  v30 = v24;
  v27 = v25;
  v28 = v24;
  [v26 provisionCredentialWithType:type metadata:metadataCopy credentialIdentifier:v28 attestations:attestationsCopy supplementalData:dataCopy completion:v29];
}

void __128__NPKIDVRemoteDeviceSession_provisionCredentialWithType_metadata_credentialIdentifier_attestations_supplementalData_completion___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromNPKIDVRemoteDeviceCredentialType(a1[6]);
      v9 = a1[4];
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error provisioning credential type:%@ credential Identifier:%@ with error:%@", &v12, 0x20u);
    }
  }

  v10 = a1[5];
  v11 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v10 + 16))(v10, 0, v11);
}

void __128__NPKIDVRemoteDeviceSession_provisionCredentialWithType_metadata_credentialIdentifier_attestations_supplementalData_completion___block_invoke_91(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v12 = pk_Payment_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromNPKIDVRemoteDeviceCredentialType(a1[6]);
        v14 = a1[4];
        v21 = 138412802;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        v25 = 2112;
        v26 = v6;
        v15 = "Error: NPKIDVRemoteDeviceService: Fail provisioning credential type:%@ credential Identifier:%@ with error:%@";
        v16 = v12;
        v17 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_25B300000, v16, v17, v15, &v21, 0x20u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v12 = pk_Payment_log(v19);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = NSStringFromNPKIDVRemoteDeviceCredentialType(a1[6]);
        v20 = a1[4];
        v21 = 138412802;
        v22 = v13;
        v23 = 2112;
        v24 = v20;
        v25 = 2112;
        v26 = v5;
        v15 = "Notice: NPKIDVRemoteDeviceService: Finish provisioning credential type:%@ credential Identifier:%@ secureElementPass:%@";
        v16 = v12;
        v17 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(a1[5] + 16))(a1[5], v5, v6, v11);
}

- (void)nonceForAuthorizationTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = pk_Payment_log(completionCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested nonce for Authentication Token", buf, 2u);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__NPKIDVRemoteDeviceSession_nonceForAuthorizationTokenWithCompletion___block_invoke;
  v14[3] = &unk_279945218;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__NPKIDVRemoteDeviceSession_nonceForAuthorizationTokenWithCompletion___block_invoke_93;
  v12[3] = &unk_279947ED8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 nonceForAuthorizationTokenWithCompletion:v12];
}

void __70__NPKIDVRemoteDeviceSession_nonceForAuthorizationTokenWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error fetching nonce for Authentication Token with error:%@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v8 + 16))(v8, 0, v9);
}

void __70__NPKIDVRemoteDeviceSession_nonceForAuthorizationTokenWithCompletion___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v6;
        v12 = "Error: NPKIDVRemoteDeviceService: Fail fetching nonce for Authentication Token with error:%@";
        v13 = v11;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_25B300000, v13, v14, v12, &v17, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v15 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v11 = pk_Payment_log(v16);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v5;
        v12 = "Notice: NPKIDVRemoteDeviceService: Finish fetch nonce:%@ for Authentication Token";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5);
}

- (void)prearmCredentialWithAuthorizationToken:(id)token completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = tokenCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested pre-arm credential with authenticationToken:%@", buf, 0xCu);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__NPKIDVRemoteDeviceSession_prearmCredentialWithAuthorizationToken_completion___block_invoke;
  v17[3] = &unk_279945218;
  v12 = completionCopy;
  v18 = v12;
  v13 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__NPKIDVRemoteDeviceSession_prearmCredentialWithAuthorizationToken_completion___block_invoke_95;
  v15[3] = &unk_279947DC0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 prearmCredentialWithAuthorizationToken:tokenCopy completion:v15];
}

void __79__NPKIDVRemoteDeviceSession_prearmCredentialWithAuthorizationToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error pre-arming credential with authentication token, error:%@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v8 + 16))(v8, v9);
}

void __79__NPKIDVRemoteDeviceSession_prearmCredentialWithAuthorizationToken_completion___block_invoke_95(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v3;
        v9 = "Error: NPKIDVRemoteDeviceService: Fail pre-arming credential with authentication token, error:%@";
        v10 = v8;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 12;
LABEL_8:
        _os_log_impl(&dword_25B300000, v10, v11, v9, &v15, v12);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v13 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v8 = pk_Payment_log(v14);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        v9 = "Notice: NPKIDVRemoteDeviceService: Finish pre-arming credential with authentication token";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEFAULT;
        v12 = 2;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
}

- (void)establishPrearmTrustV2:(id)v2 completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  v2Copy = v2;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v2Copy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested establish trust V2 with Key:%@", buf, 0xCu);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__NPKIDVRemoteDeviceSession_establishPrearmTrustV2_completion___block_invoke;
  v17[3] = &unk_279945218;
  v12 = completionCopy;
  v18 = v12;
  v13 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__NPKIDVRemoteDeviceSession_establishPrearmTrustV2_completion___block_invoke_96;
  v15[3] = &unk_279947F00;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 establishPrearmTrustV2:v2Copy completion:v15];
}

void __63__NPKIDVRemoteDeviceSession_establishPrearmTrustV2_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error establishing trust, error:%@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v8 + 16))(v8, 0, v9);
}

void __63__NPKIDVRemoteDeviceSession_establishPrearmTrustV2_completion___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = v6;
        v12 = "Error: NPKIDVRemoteDeviceService: Fail establishing trust, error:%@";
        v13 = v11;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 12;
LABEL_8:
        _os_log_impl(&dword_25B300000, v13, v14, v12, &v18, v15);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v11 = pk_Payment_log(v17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        v12 = "Notice: NPKIDVRemoteDeviceService: Finish establishing trust";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 2;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5);
}

- (void)deleteGlobalAuthACLWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = pk_Payment_log(completionCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested delete global auth ACL", buf, 2u);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__NPKIDVRemoteDeviceSession_deleteGlobalAuthACLWithCompletion___block_invoke;
  v14[3] = &unk_279945218;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__NPKIDVRemoteDeviceSession_deleteGlobalAuthACLWithCompletion___block_invoke_98;
  v12[3] = &unk_279947DC0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 deleteGlobalAuthACLWithCompletion:v12];
}

void __63__NPKIDVRemoteDeviceSession_deleteGlobalAuthACLWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error deleting global auth ACL with error:%@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v8 + 16))(v8, v9);
}

void __63__NPKIDVRemoteDeviceSession_deleteGlobalAuthACLWithCompletion___block_invoke_98(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (!v6)
    {
      goto LABEL_10;
    }

    v8 = pk_Payment_log(v7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v16 = 138412290;
    v17 = v3;
    v9 = "Error: NPKIDVRemoteDeviceService: Fail delete global auth ACL with error:%@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
    goto LABEL_8;
  }

  v13 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (!v13)
  {
    goto LABEL_10;
  }

  v8 = pk_Payment_log(v14);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    v9 = "Notice: NPKIDVRemoteDeviceService: Finish delete global auth ACL";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 2;
LABEL_8:
    _os_log_impl(&dword_25B300000, v10, v11, v9, &v16, v12);
  }

LABEL_9:

LABEL_10:
  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }
}

- (void)getCASDCertificateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = pk_Payment_log(completionCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested get CASD certificate", buf, 2u);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__NPKIDVRemoteDeviceSession_getCASDCertificateWithCompletion___block_invoke;
  v14[3] = &unk_279945218;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__NPKIDVRemoteDeviceSession_getCASDCertificateWithCompletion___block_invoke_99;
  v12[3] = &unk_279947F28;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 getCASDCertificateWithCompletion:v12];
}

void __62__NPKIDVRemoteDeviceSession_getCASDCertificateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error retrieving CASD certificate with error:%@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v8 + 16))(v8, 0, v9);
}

void __62__NPKIDVRemoteDeviceSession_getCASDCertificateWithCompletion___block_invoke_99(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v6;
        v12 = "Error: NPKIDVRemoteDeviceService: Failed get CASD Certificate with error %@";
        v13 = v11;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_25B300000, v13, v14, v12, &v17, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v15 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v11 = pk_Payment_log(v16);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v5;
        v12 = "Notice: NPKIDVRemoteDeviceService: Finished get CASD Certificate: %@";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5);
}

- (void)addNotificationWithType:(unint64_t)type documentType:(unint64_t)documentType issuerName:(id)name completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  completionCopy = completion;
  v12 = pk_Payment_log(completionCopy);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Payment_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromNPKIDVRemoteDeviceNotificationType(type);
      v17 = NSStringFromNPKIDVRemoteDeviceDocumentType(documentType);
      *buf = 138412802;
      v33 = v16;
      v34 = 2112;
      v35 = v17;
      v36 = 2112;
      v37 = nameCopy;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested add notification type:%@ document type:%@ issuerName:%@", buf, 0x20u);
    }
  }

  if (type != 4 && !nameCopy)
  {
    v18 = pk_General_log(v14);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      v21 = pk_General_log(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = NSStringFromNPKIDVRemoteDeviceNotificationType(type);
        *buf = 136446978;
        v33 = "[NPKIDVRemoteDeviceSession addNotificationWithType:documentType:issuerName:completion:]";
        v34 = 2082;
        v35 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/CoreIDV Connection/Host Process Classes/NPKIDVRemoteDeviceSession.m";
        v36 = 2048;
        v37 = 614;
        v38 = 2112;
        v39 = v22;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Can't have nil issue name for notification type:%@)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __88__NPKIDVRemoteDeviceSession_addNotificationWithType_documentType_issuerName_completion___block_invoke;
  v29[3] = &unk_279945128;
  typeCopy = type;
  v23 = completionCopy;
  v30 = v23;
  v24 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v29];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __88__NPKIDVRemoteDeviceSession_addNotificationWithType_documentType_issuerName_completion___block_invoke_102;
  v26[3] = &unk_279947F50;
  v27 = v23;
  typeCopy2 = type;
  v26[4] = self;
  v25 = v23;
  [v24 addNotificationWithType:type documentType:documentType issuerName:nameCopy completion:v26];
}

void __88__NPKIDVRemoteDeviceSession_addNotificationWithType_documentType_issuerName_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromNPKIDVRemoteDeviceNotificationType(*(a1 + 40));
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error Requesting add notification type:%@ error:%@", &v11, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  v10 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v9 + 16))(v9, v10);
}

void __88__NPKIDVRemoteDeviceSession_addNotificationWithType_documentType_issuerName_completion___block_invoke_102(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (!v6)
    {
      goto LABEL_10;
    }

    v8 = pk_Payment_log(v7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v9 = NSStringFromNPKIDVRemoteDeviceNotificationType(*(a1 + 48));
    v17 = 138412546;
    v18 = v9;
    v19 = 2112;
    v20 = v3;
    v10 = "Error: NPKIDVRemoteDeviceService: Fail Requesting add notification type:%@ error:%@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 22;
    goto LABEL_8;
  }

  v14 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (!v14)
  {
    goto LABEL_10;
  }

  v8 = pk_Payment_log(v15);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromNPKIDVRemoteDeviceNotificationType(*(a1 + 48));
    v17 = 138412290;
    v18 = v9;
    v10 = "Notice: NPKIDVRemoteDeviceService: Finish Requesting add notification type:%@";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 12;
LABEL_8:
    _os_log_impl(&dword_25B300000, v11, v12, v10, &v17, v13);
  }

LABEL_9:

LABEL_10:
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }
}

- (void)updateProofingConfiguration:(id)configuration completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = configurationCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Session - Requested to update proofing configuration: %@", buf, 0xCu);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __68__NPKIDVRemoteDeviceSession_updateProofingConfiguration_completion___block_invoke;
  v20[3] = &unk_279945218;
  v12 = completionCopy;
  v21 = v12;
  v13 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v20];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__NPKIDVRemoteDeviceSession_updateProofingConfiguration_completion___block_invoke_103;
  v16[3] = &unk_279947E38;
  selfCopy = self;
  v19 = v12;
  v17 = configurationCopy;
  v14 = v12;
  v15 = configurationCopy;
  [v13 updateProofingConfiguration:v15 completion:v16];
}

void __68__NPKIDVRemoteDeviceSession_updateProofingConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error requesting to update proofing configuration. Error:%@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v8 + 16))(v8, v9);
}

void __68__NPKIDVRemoteDeviceSession_updateProofingConfiguration_completion___block_invoke_103(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (!v6)
    {
      goto LABEL_10;
    }

    v8 = pk_Payment_log(v7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v16 = 138412290;
    v17 = v3;
    v9 = "Error: NPKIDVRemoteDeviceService: Session - Failed to update proofing configuration. Error: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    goto LABEL_8;
  }

  v12 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (!v12)
  {
    goto LABEL_10;
  }

  v8 = pk_Payment_log(v13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v16 = 138412290;
    v17 = v14;
    v9 = "Notice: NPKIDVRemoteDeviceService: Session - Finished updating proofing configuration: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
    _os_log_impl(&dword_25B300000, v10, v11, v9, &v16, 0xCu);
  }

LABEL_9:

LABEL_10:
  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }
}

- (void)storePIIHashDataForCredentialIdentifier:(id)identifier data:(id)data completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  dataCopy = data;
  v11 = pk_Payment_log(dataCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = identifierCopy;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Session - requested to store PII Hash for credential with identifier:%@", buf, 0xCu);
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __85__NPKIDVRemoteDeviceSession_storePIIHashDataForCredentialIdentifier_data_completion___block_invoke;
  v23[3] = &unk_279945218;
  v15 = completionCopy;
  v24 = v15;
  v16 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v23];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__NPKIDVRemoteDeviceSession_storePIIHashDataForCredentialIdentifier_data_completion___block_invoke_104;
  v19[3] = &unk_279947E38;
  selfCopy = self;
  v22 = v15;
  v20 = identifierCopy;
  v17 = v15;
  v18 = identifierCopy;
  [v16 storePIIHashDataForCredentialIdentifier:v18 data:dataCopy completion:v19];
}

void __85__NPKIDVRemoteDeviceSession_storePIIHashDataForCredentialIdentifier_data_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error storing PII hash for credential with error:%@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v8 + 16))(v8, v9);
}

void __85__NPKIDVRemoteDeviceSession_storePIIHashDataForCredentialIdentifier_data_completion___block_invoke_104(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v3;
        v9 = "Error: NPKIDVRemoteDeviceService: Failed to store PII hash for credential with error:%@";
        v10 = v8;
        v11 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_25B300000, v10, v11, v9, &v15, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v12 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v8 = pk_Payment_log(v13);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = 138412290;
        v16 = v14;
        v9 = "Notice: NPKIDVRemoteDeviceService: Finish storing PII hash for credential with identifier%@";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v3);
}

- (void)retrievePIIHashDataForCredentialIdentifier:(id)identifier completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = identifierCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Session - requested to retrieve PII Hash for credential with identifier:%@", buf, 0xCu);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__NPKIDVRemoteDeviceSession_retrievePIIHashDataForCredentialIdentifier_completion___block_invoke;
  v20[3] = &unk_279945218;
  v12 = completionCopy;
  v21 = v12;
  v13 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v20];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__NPKIDVRemoteDeviceSession_retrievePIIHashDataForCredentialIdentifier_completion___block_invoke_105;
  v16[3] = &unk_279947F78;
  selfCopy = self;
  v19 = v12;
  v17 = identifierCopy;
  v14 = v12;
  v15 = identifierCopy;
  [v13 retrievePIIHashDataForCredentialIdentifier:v15 completion:v16];
}

void __83__NPKIDVRemoteDeviceSession_retrievePIIHashDataForCredentialIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error retrieving PII hash for credential with error:%@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v8 + 16))(v8, 0, v9);
}

void __83__NPKIDVRemoteDeviceSession_retrievePIIHashDataForCredentialIdentifier_completion___block_invoke_105(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = v6;
        v12 = "Error: NPKIDVRemoteDeviceService: Failed to retrieve PII hash for credential with error:%@";
        v13 = v11;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_25B300000, v13, v14, v12, &v18, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v15 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v11 = pk_Payment_log(v16);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v18 = 138412290;
        v19 = v17;
        v12 = "Notice: NPKIDVRemoteDeviceService: Finish retrieving PII hash for credential with identifier%@";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v5);
}

- (void)deletePIIHashDataForCredentialIdentifier:(id)identifier completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = identifierCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Session - requested to delete PII Hash for credential with identifier:%@", buf, 0xCu);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__NPKIDVRemoteDeviceSession_deletePIIHashDataForCredentialIdentifier_completion___block_invoke;
  v20[3] = &unk_279945218;
  v12 = completionCopy;
  v21 = v12;
  v13 = [(NPKIDVRemoteDeviceSession *)self _remoteObjectProxyWithFailureHandler:v20];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__NPKIDVRemoteDeviceSession_deletePIIHashDataForCredentialIdentifier_completion___block_invoke_106;
  v16[3] = &unk_279947E38;
  selfCopy = self;
  v19 = v12;
  v17 = identifierCopy;
  v14 = v12;
  v15 = identifierCopy;
  [v13 deletePIIHashDataForCredentialIdentifier:v15 completion:v16];
}

void __81__NPKIDVRemoteDeviceSession_deletePIIHashDataForCredentialIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error deleting PII hash for credential with error:%@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = NPKIDVRemoteDeviceSessionError(-1001, 0);
  (*(v8 + 16))(v8, v9);
}

void __81__NPKIDVRemoteDeviceSession_deletePIIHashDataForCredentialIdentifier_completion___block_invoke_106(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v3;
        v9 = "Error: NPKIDVRemoteDeviceService: Failed to delete PII hash in partition with error:%@";
        v10 = v8;
        v11 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_25B300000, v10, v11, v9, &v15, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v12 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v8 = pk_Payment_log(v13);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = 138412290;
        v16 = v14;
        v9 = "Notice: NPKIDVRemoteDeviceService: Finish deleting PII hash for credential with identifier%@";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_8;
      }

LABEL_9:
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v3);
}

- (unint64_t)status
{
  os_unfair_lock_lock(&self->_sessionStatusLock);
  status = self->_status;
  os_unfair_lock_unlock(&self->_sessionStatusLock);
  return status;
}

- (void)setStatus:(unint64_t)status
{
  os_unfair_lock_lock(&self->_sessionStatusLock);
  self->_status = status;

  os_unfair_lock_unlock(&self->_sessionStatusLock);
}

- (void)invalidateSession
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Invalidating session:%@", &v7, 0xCu);
    }
  }

  [(NPKIDVRemoteDeviceSession *)self setStatus:1];
  [(NPKIDVRemoteDeviceSession *)self setRemoteService:0];
}

- (void)setRemoteService:(id)service
{
  serviceCopy = service;
  os_unfair_lock_lock(&self->_remoteServiceLock);
  remoteService = self->_remoteService;
  self->_remoteService = serviceCopy;

  os_unfair_lock_unlock(&self->_remoteServiceLock);
}

- (id)remoteService
{
  os_unfair_lock_lock(&self->_remoteServiceLock);
  v3 = self->_remoteService;
  os_unfair_lock_unlock(&self->_remoteServiceLock);

  return v3;
}

- (id)_remoteObjectProxyWithFailureHandler:(id)handler
{
  handlerCopy = handler;
  status = [(NPKIDVRemoteDeviceSession *)self status];
  if (status || (-[NPKIDVRemoteDeviceSession remoteService](self, "remoteService"), v12 = objc_claimAutoreleasedReturnValue(), -[NPKIDVRemoteDeviceSession _errorHandlerWithCompletion:](self, "_errorHandlerWithCompletion:", handlerCopy), v13 = objc_claimAutoreleasedReturnValue(), [v12 remoteObjectProxyWithErrorHandler:v13], v11 = objc_claimAutoreleasedReturnValue(), v13, v12, !v11))
  {
    v6 = pk_Payment_log(status);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Fail to obtain remote proxy object", v15, 2u);
      }
    }

    [(NPKIDVRemoteDeviceSession *)self invalidateSession];
    if (handlerCopy)
    {
      v10 = NPKIDVRemoteDeviceSessionError(-1001, 0);
      handlerCopy[2](handlerCopy, v10);
    }

    v11 = 0;
  }

  return v11;
}

- (id)_errorHandlerWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__NPKIDVRemoteDeviceSession__errorHandlerWithCompletion___block_invoke;
  v9[3] = &unk_279945150;
  v9[4] = self;
  v10 = completionCopy;
  v5 = completionCopy;
  v6 = _Block_copy(v9);
  v7 = _Block_copy(v6);

  return v7;
}

void __57__NPKIDVRemoteDeviceSession__errorHandlerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error on connection: %@", &v9, 0xCu);
    }
  }

  [*(a1 + 32) invalidateSession];
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)remoteService:(id)service didEstablishConnection:(id)connection
{
  v18 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  connectionCopy = connection;
  v8 = pk_Payment_log(connectionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      selfCopy = self;
      v14 = 2112;
      v15 = serviceCopy;
      v16 = 2112;
      v17 = connectionCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %@, remote service:%@ did establish connection:%@", &v12, 0x20u);
    }
  }
}

- (void)remoteService:(id)service didInterruptConnection:(id)connection
{
  v18 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  connectionCopy = connection;
  v8 = pk_Payment_log(connectionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      selfCopy = self;
      v14 = 2112;
      v15 = serviceCopy;
      v16 = 2112;
      v17 = connectionCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %@, remote service:%@ did interrupt connection:%@", &v12, 0x20u);
    }
  }

  [(NPKIDVRemoteDeviceSession *)self invalidateSession];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if (self->_status)
  {
    v5 = @"NPKIDVRemoteDeviceSessionStatusInvalidated";
  }

  else
  {
    v5 = @"NPKIDVRemoteDeviceSessionStatusReady";
  }

  return [v3 stringWithFormat:@"<%@:%p> RemoteDeviceID:%@ status:%@", v4, self, self->_deviceID, v5];
}

@end