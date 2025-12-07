@interface NPKIDVRemoteDeviceSessionServer
- (NPKIDVRemoteDeviceSessionServer)initWithConnection:(id)connection eventsCoordinator:(id)coordinator connectionCoordinator:(id)connectionCoordinator preflightManager:(id)manager;
- (NPKIDVRemoteDeviceSessionServerDataSource)dataSource;
- (id)_checkCredentialProvisioningEntitlement;
- (id)_checkCredentialStoreBiometricsEntitlement;
- (id)_checkCredentialStoreEntitlementWithPartition:(id)partition;
- (void)addNotificationWithType:(unint64_t)type documentType:(unint64_t)documentType issuerName:(id)name completion:(id)completion;
- (void)configureWithPartition:(id)partition ackHandler:(id)handler;
- (void)confirmRemoteDeviceID:(id)d withCompletion:(id)completion;
- (void)createCredentialInPartition:(id)partition options:(id)options completion:(id)completion;
- (void)credentialIdentifiersInPartitions:(id)partitions completion:(id)completion;
- (void)credentialPreflightStatusForType:(unint64_t)type minOSVersion:(id)version completion:(id)completion;
- (void)deleteCredential:(id)credential completion:(id)completion;
- (void)deleteGlobalAuthACLWithCompletion:(id)completion;
- (void)deletePIIHashDataForCredentialIdentifier:(id)identifier completion:(id)completion;
- (void)establishPrearmTrustV2:(id)v2 completion:(id)completion;
- (void)fetchRemoteBiometricAuthenticationStatusForCredentialType:(unint64_t)type completion:(id)completion;
- (void)generateKeyWithType:(unint64_t)type credentialIdentifier:(id)identifier completion:(id)completion;
- (void)generatePresentmentKeysForCredential:(id)credential numKeys:(int64_t)keys completion:(id)completion;
- (void)getCASDCertificateWithCompletion:(id)completion;
- (void)nonceForAuthorizationTokenWithCompletion:(id)completion;
- (void)pairedWatchSEIDWithCompletion:(id)completion;
- (void)prearmCredentialWithAuthorizationToken:(id)token completion:(id)completion;
- (void)propertiesOfCredential:(id)credential completion:(id)completion;
- (void)provisionCredentialWithType:(unint64_t)type metadata:(id)metadata credentialIdentifier:(id)identifier attestations:(id)attestations supplementalData:(id)data completion:(id)completion;
- (void)provisionedCredentialCountForType:(unint64_t)type completion:(id)completion;
- (void)registerForEvents:(unint64_t)events withRemoteProcessServiceName:(id)name completion:(id)completion;
- (void)retrievePIIHashDataForCredentialIdentifier:(id)identifier completion:(id)completion;
- (void)storePIIHashDataForCredentialIdentifier:(id)identifier data:(id)data completion:(id)completion;
- (void)unregisterFromEvents:(unint64_t)events withRemoteProcessServiceName:(id)name completion:(id)completion;
- (void)updateProofingConfiguration:(id)configuration completion:(id)completion;
@end

@implementation NPKIDVRemoteDeviceSessionServer

- (NPKIDVRemoteDeviceSessionServer)initWithConnection:(id)connection eventsCoordinator:(id)coordinator connectionCoordinator:(id)connectionCoordinator preflightManager:(id)manager
{
  coordinatorCopy = coordinator;
  connectionCoordinatorCopy = connectionCoordinator;
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = NPKIDVRemoteDeviceSessionServer;
  v14 = [(PDXPCService *)&v17 initWithConnection:connection];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_eventsCoordinator, coordinator);
    objc_storeStrong(&v15->_connectionCoordinator, connectionCoordinator);
    objc_storeStrong(&v15->_preflightManager, manager);
  }

  return v15;
}

- (void)confirmRemoteDeviceID:(id)d withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  remoteDeviceID = [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self->_eventsCoordinator remoteDeviceID];
  v9 = pk_Payment_log(remoteDeviceID);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_Payment_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412546;
      v24 = dCopy;
      v25 = 2112;
      v26 = remoteDeviceID;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested confirm deviceID:%@ actual deviceID:%@", &v23, 0x16u);
    }
  }

  if (!remoteDeviceID)
  {
    v15 = pk_Payment_log(v11);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v18 = pk_Payment_log(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412290;
        v24 = dCopy;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Fail to confirm given deviceID:%@, no active device is initialized", &v23, 0xCu);
      }
    }

    v14 = NPKIDVRemoteDeviceSessionError(-1003, 0);
    goto LABEL_19;
  }

  if (dCopy)
  {
    v13 = [dCopy isEqualToString:remoteDeviceID];
    if ((v13 & 1) == 0)
    {
      v19 = pk_Payment_log(v13);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (v20)
      {
        v22 = pk_Payment_log(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = 138412290;
          v24 = dCopy;
          _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Fail to confirm given deviceID:%@", &v23, 0xCu);
        }
      }

      v14 = NPKIDVRemoteDeviceSessionError(-1002, 0);

LABEL_19:
      remoteDeviceID = 0;
      goto LABEL_20;
    }
  }

  v14 = 0;
LABEL_20:
  completionCopy[2](completionCopy, remoteDeviceID, v14);
}

- (void)credentialPreflightStatusForType:(unint64_t)type minOSVersion:(id)version completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
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
      v32 = v14;
      v33 = 2112;
      v34 = versionCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested credential Preflight Status ForType:%@ minOSVersion:%@", buf, 0x16u);
    }
  }

  remoteDeviceID = [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self->_eventsCoordinator remoteDeviceID];
  v16 = remoteDeviceID;
  if (!remoteDeviceID)
  {
    v19 = pk_Payment_log(0);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v22 = pk_Payment_log(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Fail fetch credential Preflight Status, no active device is initialized", buf, 2u);
      }
    }

    v23 = -1003;
    goto LABEL_18;
  }

  if (type != 1)
  {
    v24 = pk_Payment_log(remoteDeviceID);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v27 = pk_Payment_log(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v32 = "[NPKIDVRemoteDeviceSessionServer credentialPreflightStatusForType:minOSVersion:completion:]";
        _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: If you think the given credential type is correct you probably need to makes some code changes at %s", buf, 0xCu);
      }
    }

    v23 = -1050;
LABEL_18:
    v18 = NPKIDVRemoteDeviceSessionError(v23, 0);
    completionCopy[2](completionCopy, 0, v18);
    goto LABEL_19;
  }

  preflightManager = self->_preflightManager;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __92__NPKIDVRemoteDeviceSessionServer_credentialPreflightStatusForType_minOSVersion_completion___block_invoke;
  v28[3] = &unk_2799450D8;
  v30 = 1;
  v29 = completionCopy;
  [(NPKBiometricPassPreflightManager *)preflightManager preflightStatusForType:1 pairedDeviceMinOSVersion:versionCopy completion:v28];
  v18 = v29;
LABEL_19:
}

void __92__NPKIDVRemoteDeviceSessionServer_credentialPreflightStatusForType_minOSVersion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromNPKIDVRemoteDeviceCredentialType(*(a1 + 40));
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Finish credential Preflight Status:%@ ForType:%@ error:%@", &v12, 0x20u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)provisionedCredentialCountForType:(unint64_t)type completion:(id)completion
{
  v19[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dataSource = [(NPKIDVRemoteDeviceSessionServer *)self dataSource];

  if (dataSource)
  {
    dataSource2 = [(NPKIDVRemoteDeviceSessionServer *)self dataSource];
    [dataSource2 remoteDevicesSessionServer:self provisionedCredentialCountsForType:type completion:completionCopy];
  }

  else
  {
    v10 = pk_Payment_log(v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Unable to fetch provisioned credential count! No data source found.", v17, 2u);
      }
    }

    if (completionCopy)
    {
      v14 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v19[0] = @"No data source found";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v16 = [v14 errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:v15];

      completionCopy[2](completionCopy, 0, v16);
    }
  }
}

- (void)fetchRemoteBiometricAuthenticationStatusForCredentialType:(unint64_t)type completion:(id)completion
{
  v19[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dataSource = [(NPKIDVRemoteDeviceSessionServer *)self dataSource];

  if (dataSource)
  {
    dataSource2 = [(NPKIDVRemoteDeviceSessionServer *)self dataSource];
    [dataSource2 remoteDevicesSessionServer:self remoteBiometricAuthenticationStatusForCredentialType:type completion:completionCopy];
  }

  else
  {
    v10 = pk_Payment_log(v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Unable to fetch remote biometric authentication status! No data source found.", v17, 2u);
      }
    }

    if (completionCopy)
    {
      v14 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v19[0] = @"No data source found";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v16 = [v14 errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:v15];

      completionCopy[2](completionCopy, 0, v16);
    }
  }
}

- (void)registerForEvents:(unint64_t)events withRemoteProcessServiceName:(id)name completion:(id)completion
{
  completionCopy = completion;
  v8 = [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self->_eventsCoordinator registerEvents:events forServiceName:name];
  if (v8 == 0xFFFFFFFF80000000)
  {
    v9 = NPKIDVRemoteDeviceSessionError(-1003, 0);
  }

  else
  {
    v9 = 0;
  }

  completionCopy[2](completionCopy, v8, v9);
}

- (void)unregisterFromEvents:(unint64_t)events withRemoteProcessServiceName:(id)name completion:(id)completion
{
  completionCopy = completion;
  v8 = [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self->_eventsCoordinator unregisterEvents:events forServiceName:name];
  if (v8 == 0xFFFFFFFF80000000)
  {
    v9 = NPKIDVRemoteDeviceSessionError(-1003, 0);
  }

  else
  {
    v9 = 0;
  }

  completionCopy[2](completionCopy, v8, v9);
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
      *v10 = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested CASD certificate", v10, 2u);
    }
  }

  _checkCredentialStoreBiometricsEntitlement = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreBiometricsEntitlement];
  if (_checkCredentialStoreBiometricsEntitlement)
  {
    completionCopy[2](completionCopy, 0, _checkCredentialStoreBiometricsEntitlement);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator getCASDCertificateWithCompletion:completionCopy];
  }
}

- (void)pairedWatchSEIDWithCompletion:(id)completion
{
  completionCopy = completion;
  _checkCredentialStoreBiometricsEntitlement = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreBiometricsEntitlement];
  if (_checkCredentialStoreBiometricsEntitlement)
  {
    completionCopy[2](completionCopy, 0, _checkCredentialStoreBiometricsEntitlement);
  }

  else
  {
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

    v7 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BBE0]];
    if (v7)
    {
      (completionCopy)[2](completionCopy, v7, 0);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.nanopasskit.IDVRemoteDeviceSession.error" code:-1003 userInfo:0];
      completionCopy[2](completionCopy, 0, v8);
    }
  }
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
      v21 = 138412290;
      v22 = partitionCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested configure Credential store partitions:%@", &v21, 0xCu);
    }
  }

  v12 = [(NSSet *)self->_partitions count];
  if (v12)
  {
    v13 = pk_Payment_log(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v16 = pk_Payment_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        partitions = self->_partitions;
        v21 = 138412290;
        v22 = partitions;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Session is already configured with partitions:%@. We don't allow to configure it multiple times", &v21, 0xCu);
      }
    }

    v18 = NPKIDVRemoteDeviceSessionError(-1000, 0);
    handlerCopy[2](handlerCopy, v18);
  }

  else
  {
    v19 = [MEMORY[0x277CBEB98] setWithArray:partitionCopy];
    v20 = self->_partitions;
    self->_partitions = v19;

    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)createCredentialInPartition:(id)partition options:(id)options completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
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
      v19 = partitionCopy;
      v20 = 2112;
      v21 = optionsCopy;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested create credential in partition:%@ with options:%@", buf, 0x16u);
    }
  }

  v17 = partitionCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v16 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:v15];

  if (v16)
  {
    completionCopy[2](completionCopy, 0, v16);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator createCredentialInPartition:partitionCopy options:optionsCopy completion:completionCopy];
  }
}

- (void)generateKeyWithType:(unint64_t)type credentialIdentifier:(id)identifier completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
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
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = identifierCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested generate Key of type:%@ For Credential:%@", &v16, 0x16u);
    }
  }

  v15 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v15)
  {
    completionCopy[2](completionCopy, 0, v15);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator generateKeyWithType:type credentialIdentifier:identifierCopy withConfiguredPartitions:self->_partitions completion:completionCopy];
  }
}

- (void)generatePresentmentKeysForCredential:(id)credential numKeys:(int64_t)keys completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  completionCopy = completion;
  v10 = pk_Payment_log(completionCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = credentialCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested generate presentent keys for Credential:%@", &v15, 0xCu);
    }
  }

  v14 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v14)
  {
    completionCopy[2](completionCopy, 0, v14);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator generatePresentmentKeysForCredential:credentialCopy numKeys:keys withConfiguredPartitions:self->_partitions completion:completionCopy];
  }
}

- (void)deleteCredential:(id)credential completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = credentialCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested delete Credential:%@", &v13, 0xCu);
    }
  }

  v12 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v12)
  {
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator deleteCredential:credentialCopy withConfiguredPartitions:self->_partitions completion:completionCopy];
  }
}

- (void)propertiesOfCredential:(id)credential completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = credentialCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested fetch properties Of Credential:%@", &v13, 0xCu);
    }
  }

  v12 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v12)
  {
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator propertiesOfCredential:credentialCopy withConfiguredPartitions:self->_partitions completion:completionCopy];
  }
}

- (void)credentialIdentifiersInPartitions:(id)partitions completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  partitionsCopy = partitions;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = partitionsCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested fetch credential Identifiers In Partitions:%@", &v13, 0xCu);
    }
  }

  v12 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:partitionsCopy];
  if (v12)
  {
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator credentialIdentifiersInPartitions:partitionsCopy completion:completionCopy];
  }
}

- (void)provisionCredentialWithType:(unint64_t)type metadata:(id)metadata credentialIdentifier:(id)identifier attestations:(id)attestations supplementalData:(id)data completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  identifierCopy = identifier;
  attestationsCopy = attestations;
  dataCopy = data;
  completionCopy = completion;
  _checkCredentialProvisioningEntitlement = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialProvisioningEntitlement];
  if (_checkCredentialProvisioningEntitlement)
  {
    completionCopy[2](completionCopy, 0, _checkCredentialProvisioningEntitlement);
  }

  else
  {
    v20 = pk_Payment_log(0);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v23 = pk_Payment_log(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = NSStringFromNPKIDVRemoteDeviceCredentialType(type);
        *buf = 138412546;
        v34 = v24;
        v35 = 2112;
        v36 = identifierCopy;
        _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested provision credential type:%@ identifier:%@", buf, 0x16u);
      }
    }

    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __134__NPKIDVRemoteDeviceSessionServer_provisionCredentialWithType_metadata_credentialIdentifier_attestations_supplementalData_completion___block_invoke;
    v30 = &unk_279945100;
    v25 = identifierCopy;
    v31 = v25;
    v32 = completionCopy;
    v26 = _Block_copy(&v27);
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator provisionCredentialWithType:type metadata:metadataCopy credentialIdentifier:v25 attestations:attestationsCopy supplementalData:dataCopy completion:v26, v27, v28, v29, v30];
  }
}

void __134__NPKIDVRemoteDeviceSessionServer_provisionCredentialWithType_metadata_credentialIdentifier_attestations_supplementalData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Finish provision credential with identifier:%@ secureElementPass:%@ error:%@", &v13, 0x20u);
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v5, v6);
  }
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
      *v10 = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested nonce for authentication token", v10, 2u);
    }
  }

  _checkCredentialStoreBiometricsEntitlement = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreBiometricsEntitlement];
  if (_checkCredentialStoreBiometricsEntitlement)
  {
    completionCopy[2](completionCopy, 0, _checkCredentialStoreBiometricsEntitlement);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator nonceForAuthorizationTokenWithCompletion:completionCopy];
  }
}

- (void)prearmCredentialWithAuthorizationToken:(id)token completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = tokenCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested pre-arm credential with authentication token:%@", &v13, 0xCu);
    }
  }

  _checkCredentialStoreBiometricsEntitlement = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreBiometricsEntitlement];
  if (_checkCredentialStoreBiometricsEntitlement)
  {
    completionCopy[2](completionCopy, _checkCredentialStoreBiometricsEntitlement);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator prearmCredentialWithAuthorizationToken:tokenCopy completion:completionCopy];
  }
}

- (void)establishPrearmTrustV2:(id)v2 completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  v2Copy = v2;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v2Copy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Server requested establish trust V2 with Key:%@", &v13, 0xCu);
    }
  }

  _checkCredentialStoreBiometricsEntitlement = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreBiometricsEntitlement];
  if (_checkCredentialStoreBiometricsEntitlement)
  {
    completionCopy[2](completionCopy, 0, _checkCredentialStoreBiometricsEntitlement);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator establishPrearmTrustV2:v2Copy completion:completionCopy];
  }
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
      *v10 = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested delete global auth ACL", v10, 2u);
    }
  }

  _checkCredentialStoreBiometricsEntitlement = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreBiometricsEntitlement];
  if (_checkCredentialStoreBiometricsEntitlement)
  {
    completionCopy[2](completionCopy, _checkCredentialStoreBiometricsEntitlement);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator deleteGlobalAuthACLWithCompletion:completionCopy];
  }
}

- (void)addNotificationWithType:(unint64_t)type documentType:(unint64_t)documentType issuerName:(id)name completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
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
      v31 = v16;
      v32 = 2112;
      v33 = v17;
      v34 = 2112;
      v35 = nameCopy;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested add notification type:%@ document type:%@ issuerName:%@", buf, 0x20u);
    }
  }

  connection = [(PDXPCService *)self connection];
  v19 = [connection valueForEntitlement:@"com.apple.NanoPassbook.IDVRemoteDeviceService.extendedReviewNotification"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v19 BOOLValue])
  {
    connectionCoordinator = self->_connectionCoordinator;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __94__NPKIDVRemoteDeviceSessionServer_addNotificationWithType_documentType_issuerName_completion___block_invoke;
    v27[3] = &unk_279945128;
    typeCopy = type;
    v28 = completionCopy;
    [(NPKIDVRemoteDeviceConnectionCoordinator *)connectionCoordinator addNotificationWithType:type documentType:documentType issuerName:nameCopy completion:v27];
    v21 = v28;
  }

  else
  {
    v21 = NPKIDVRemoteDeviceSessionError(-1000, 0);
    v22 = pk_Payment_log(v21);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

    if (v23)
    {
      v25 = pk_Payment_log(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromNPKIDVRemoteDeviceNotificationType(type);
        *buf = 138412546;
        v31 = v26;
        v32 = 2112;
        v33 = v21;
        _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error Requesting add notification type:%@ error:%@", buf, 0x16u);
      }
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v21);
    }
  }
}

void __94__NPKIDVRemoteDeviceSessionServer_addNotificationWithType_documentType_issuerName_completion___block_invoke(uint64_t a1, void *a2)
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

    v9 = NSStringFromNPKIDVRemoteDeviceNotificationType(*(a1 + 40));
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
    v9 = NSStringFromNPKIDVRemoteDeviceNotificationType(*(a1 + 40));
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
  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }
}

- (void)updateProofingConfiguration:(id)configuration completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
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
      v19 = configurationCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested to update proofing configuration: %@", buf, 0xCu);
    }
  }

  connectionCoordinator = self->_connectionCoordinator;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__NPKIDVRemoteDeviceSessionServer_updateProofingConfiguration_completion___block_invoke;
  v15[3] = &unk_279945150;
  v16 = configurationCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = configurationCopy;
  [(NPKIDVRemoteDeviceConnectionCoordinator *)connectionCoordinator updateProofingConfiguration:v14 completion:v15];
}

void __74__NPKIDVRemoteDeviceSessionServer_updateProofingConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
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

    v9 = *(a1 + 32);
    v18 = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v3;
    v10 = "Error: NPKIDVRemoteDeviceService: Failed to update proofing configuration (%@). Error: %@";
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
    v16 = *(a1 + 32);
    v18 = 138412290;
    v19 = v16;
    v10 = "Notice: NPKIDVRemoteDeviceService: Finished updating proofing configuration (%@)";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 12;
LABEL_8:
    _os_log_impl(&dword_25B300000, v11, v12, v10, &v18, v13);
  }

LABEL_9:

LABEL_10:
  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v3);
  }
}

- (void)storePIIHashDataForCredentialIdentifier:(id)identifier data:(id)data completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataCopy = data;
  completionCopy = completion;
  v11 = pk_Payment_log(completionCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = identifierCopy;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested store PII hash for Credential:%@", &v16, 0xCu);
    }
  }

  v15 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v15)
  {
    completionCopy[2](completionCopy, v15);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator storePIIHashDataForCredentialIdentifier:identifierCopy data:dataCopy withConfiguredPartitions:self->_partitions completion:completionCopy];
  }
}

- (void)retrievePIIHashDataForCredentialIdentifier:(id)identifier completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = identifierCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested retrieve PII hash for Credential:%@", &v13, 0xCu);
    }
  }

  v12 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v12)
  {
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator retrievePIIHashDataForCredentialIdentifier:identifierCopy withConfiguredPartitions:self->_partitions completion:completionCopy];
  }
}

- (void)deletePIIHashDataForCredentialIdentifier:(id)identifier completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = identifierCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested delete PII hash for Credential:%@", &v13, 0xCu);
    }
  }

  v12 = [(NPKIDVRemoteDeviceSessionServer *)self _checkCredentialStoreEntitlementWithPartition:0];
  if (v12)
  {
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator deletePIIHashDataForCredentialIdentifier:identifierCopy withConfiguredPartitions:self->_partitions completion:completionCopy];
  }
}

- (id)_checkCredentialProvisioningEntitlement
{
  connection = [(PDXPCService *)self connection];
  v3 = [connection valueForEntitlement:@"com.apple.NanoPassbook.IDVRemoteDeviceService.credentialprovisioning"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = NPKIDVRemoteDeviceSessionError(-1000, 0);
  }

  return v4;
}

- (id)_checkCredentialStoreBiometricsEntitlement
{
  connection = [(PDXPCService *)self connection];
  v3 = [connection valueForEntitlement:@"com.apple.idcredentials.biometrics"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = NPKIDVRemoteDeviceSessionError(-1000, 0);
  }

  return v4;
}

- (id)_checkCredentialStoreEntitlementWithPartition:(id)partition
{
  v38 = *MEMORY[0x277D85DE8];
  partitionCopy = partition;
  connection = [(PDXPCService *)self connection];
  v6 = [connection valueForEntitlement:@"com.apple.idcredentials.storage"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
  }

  else
  {
    v7 = 0;
  }

  if ([(NSSet *)self->_partitions count])
  {
    if ([v7 containsObject:@"*"] && (v8 = PKIsInternalInstall(), !v8))
    {
      v30 = pk_Payment_log(v8);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

      if (v31)
      {
        v17 = pk_Payment_log(v32);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v34) = 0;
          v23 = "Error: NPKIDVRemoteDeviceService: WildCard entitlement only allowed at internal builds";
          v24 = v17;
          v25 = 2;
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (-[NSSet count](partitionCopy, "count") && ([MEMORY[0x277CBEB98] setWithArray:partitionCopy], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isSubsetOfSet:", self->_partitions), v9, (v10 & 1) == 0))
    {
      v26 = pk_Payment_log(v11);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

      if (v27)
      {
        v17 = pk_Payment_log(v28);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          partitions = self->_partitions;
          v34 = 138412546;
          v35 = partitionCopy;
          v36 = 2112;
          v37 = partitions;
          v23 = "Error: NPKIDVRemoteDeviceService: Partitions:%@ must be part of the configured partitions:%@";
          v24 = v17;
          v25 = 22;
          goto LABEL_25;
        }

LABEL_26:
        v18 = -1000;
LABEL_27:

        goto LABEL_29;
      }
    }

    else
    {
      v12 = [(NSSet *)self->_partitions isSubsetOfSet:v7];
      if (v12)
      {
        v13 = 0;
        goto LABEL_30;
      }

      v19 = pk_Payment_log(v12);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (v20)
      {
        v17 = pk_Payment_log(v21);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v22 = self->_partitions;
          v34 = 138412290;
          v35 = v22;
          v23 = "Error: NPKIDVRemoteDeviceService: Missing entitlement for some of the configured partitions:%@";
          v24 = v17;
          v25 = 12;
LABEL_25:
          _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_ERROR, v23, &v34, v25);
          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    v18 = -1000;
    goto LABEL_29;
  }

  v14 = pk_Payment_log(0);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

  if (v15)
  {
    v17 = pk_Payment_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: no partitions set", &v34, 2u);
    }

    v18 = -1101;
    goto LABEL_27;
  }

  v18 = -1101;
LABEL_29:
  v13 = NPKIDVRemoteDeviceSessionError(v18, 0);
LABEL_30:

  return v13;
}

- (NPKIDVRemoteDeviceSessionServerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end