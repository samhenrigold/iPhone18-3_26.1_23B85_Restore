@interface NPKBiometricPassPreflightManager
- (NPKBiometricPassPreflightManager)initWithDataSource:(id)source;
- (NPKBiometricPassPreflightManagerDataSource)dataSource;
- (void)preflightStatusForType:(unint64_t)type pairedDeviceMinOSVersion:(id)version completion:(id)completion;
@end

@implementation NPKBiometricPassPreflightManager

- (NPKBiometricPassPreflightManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = NPKBiometricPassPreflightManager;
  v5 = [(NPKBiometricPassPreflightManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
  }

  return v6;
}

- (void)preflightStatusForType:(unint64_t)type pairedDeviceMinOSVersion:(id)version completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
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
      *buf = 138412290;
      v33 = v14;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Start credential Preflight Status ForType:%@ minOSVersion", buf, 0xCu);
    }
  }

  if (!versionCopy)
  {
    goto LABEL_8;
  }

  dataSource = [(NPKBiometricPassPreflightManager *)self dataSource];
  v16 = [dataSource biometricPassPreflightManagerPairedDeviceOSVersion:self];

  v17 = PKVersionCheck();
  if (v17)
  {

LABEL_8:
    if (type == 1 && (v12 = NPKPairedOrPairingDeviceSupportsCredentialType(129), (v12 & 1) != 0))
    {
      dataSource2 = [(NPKBiometricPassPreflightManager *)self dataSource];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __95__NPKBiometricPassPreflightManager_preflightStatusForType_pairedDeviceMinOSVersion_completion___block_invoke;
      v29[3] = &unk_27994B240;
      v31 = 1;
      v30 = completionCopy;
      [dataSource2 biometricPassPreflightManager:self provisionedCredentialCountsForType:1 completion:v29];

      v16 = v30;
    }

    else
    {
      v19 = pk_Payment_log(v12);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (v20)
      {
        v22 = pk_Payment_log(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = NSStringFromNPKIDVRemoteDeviceCredentialType(type);
          *buf = 138412290;
          v33 = v23;
          _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Paired device doesn't support credential type:%@", buf, 0xCu);
        }
      }

      v16 = NPKIDVRemoteDeviceSessionError(-1000, 0);
      (*(completionCopy + 2))(completionCopy, 0, v16);
    }

    goto LABEL_21;
  }

  v24 = pk_Payment_log(v17);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

  if (v25)
  {
    v27 = pk_Payment_log(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v16;
      v34 = 2112;
      v35 = versionCopy;
      _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Paired device with OSVersion:%@ doesn't fulfill minOSVersion:%@", buf, 0x16u);
    }
  }

  v28 = NPKIDVRemoteDeviceSessionError(-1000, 0);
  (*(completionCopy + 2))(completionCopy, 0, v28);

LABEL_21:
}

void __95__NPKBiometricPassPreflightManager_preflightStatusForType_pairedDeviceMinOSVersion_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  [v4 loadWebService];
  v5 = [v4 targetDevice];
  v6 = [v4 webService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__NPKBiometricPassPreflightManager_preflightStatusForType_pairedDeviceMinOSVersion_completion___block_invoke_2;
  v8[3] = &unk_27994B218;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v7;
  [v5 paymentWebService:v6 validateAddBiometricPassPreconditionsWithCompletion:v8];
}

void __95__NPKBiometricPassPreflightManager_preflightStatusForType_pairedDeviceMinOSVersion_completion___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_Payment_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromNPKIDVRemoteDeviceCredentialType(a1[5]);
      v12[0] = 67109634;
      v12[1] = a2;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Finish credential Preflight Status:%d ForType:%@ error:%@", v12, 0x1Cu);
    }
  }

  v11 = [[NPKIDVRemoteDeviceCredentialPreflightStatus alloc] initWithCredentialType:a1[5] provisionedPassesCount:a1[6] preflightSuccessful:a2];
  (*(a1[4] + 16))();
}

- (NPKBiometricPassPreflightManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end