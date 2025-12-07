@interface HMMTRAttestationStatus
- (HMMTRAccessoryServer)accessoryServer;
- (HMMTRAttestationStatus)initWithQueue:(id)queue uiDialogPresenter:(id)presenter failSafeExpiryTimeoutSecs:(id)secs;
- (void)_requestUserPermissionForBridgeAccessory:(id)accessory completionHandler:(id)handler;
- (void)deviceAttestationCompletedForController:(id)controller opaqueDeviceHandle:(void *)handle attestationDeviceInfo:(id)info error:(id)error;
- (void)populateDelegate:(id)delegate;
@end

@implementation HMMTRAttestationStatus

- (HMMTRAccessoryServer)accessoryServer
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryServer);

  return WeakRetained;
}

- (void)populateDelegate:(id)delegate
{
  failSafeExpiryTimeoutSecs = self->_failSafeExpiryTimeoutSecs;
  delegateCopy = delegate;
  [delegateCopy setFailSafeExpiryTimeoutSecs:failSafeExpiryTimeoutSecs];
  [delegateCopy setDeviceAttestationDelegate:self];
}

- (void)deviceAttestationCompletedForController:(id)controller opaqueDeviceHandle:(void *)handle attestationDeviceInfo:(id)info error:(id)error
{
  controllerCopy = controller;
  infoCopy = info;
  errorCopy = error;
  clientQueue = [(HMMTRAttestationStatus *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke;
  block[3] = &unk_2786F0A30;
  block[4] = self;
  v18 = errorCopy;
  v20 = infoCopy;
  handleCopy = handle;
  v19 = controllerCopy;
  v14 = infoCopy;
  v15 = controllerCopy;
  v16 = errorCopy;
  dispatch_async(clientQueue, block);
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v44 = v5;
    v45 = 2112;
    v46 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Device attestation completed for device under commissioning. Error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) accessoryServer];
  if (v7)
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_9;
    v40[3] = &unk_2786F0918;
    v40[4] = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    v41 = v8;
    v42 = v9;
    v10 = MEMORY[0x2318887D0](v40);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_11;
    v36[3] = &unk_2786F0968;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v37 = v11;
    v38 = v12;
    v13 = v10;
    v39 = v13;
    v14 = MEMORY[0x2318887D0](v36);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_15;
    v34[3] = &unk_2786F09B8;
    v34[4] = *(a1 + 32);
    v15 = v14;
    v35 = v15;
    v16 = MEMORY[0x2318887D0](v34);
    [v7 updateVidPidWithAttestationDeviceInfo:*(a1 + 56)];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v20;
      v45 = 2112;
      v46 = v7;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Validating device attestation through accessory server: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = *(a1 + 56);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_18;
    v29[3] = &unk_2786F0A08;
    v22 = *(a1 + 40);
    v29[4] = *(a1 + 32);
    v30 = v22;
    v32 = v16;
    v31 = v7;
    v33 = v15;
    v23 = v15;
    v24 = v16;
    [v31 validateAttestationDeviceInfo:v21 error:v30 completion:v29];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v28;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Accessory server was purged by the time device attestation completed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_9(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = v12;
    v14 = "NO";
    if (a3)
    {
      v14 = "YES";
    }

    *buf = 138543618;
    v24 = v12;
    v25 = 2080;
    v26 = v14;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Continuing commissioning with ignore attestation failure: %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v22 = 0;
  [v15 continueCommissioningDevice:v16 ignoreAttestationFailure:a3 error:&v22];
  v17 = v22;
  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Continue commissioning device failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  [v7 handleAttestationComplete];
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_11(uint64_t a1, void *a2, int a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  [v7 setCertified:*(a1 + 32) == 0];
  v9 = *(a1 + 32);
  if (!v8 || v9 || (a3 & 1) != 0)
  {
    if ((!v9 || a3) && ([v7 category], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqual:", &unk_283EE8FB8), v15, v16))
    {
      v17 = [v7 name];
      objc_initWeak(buf, v7);
      v18 = *(a1 + 40);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_14;
      v23[3] = &unk_2786F0940;
      objc_copyWeak(&v26, buf);
      v23[4] = *(a1 + 40);
      v25 = *(a1 + 48);
      v27 = a3;
      v24 = v8;
      [v18 _requestUserPermissionForBridgeAccessory:v17 completionHandler:v23];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 40);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v22;
        _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Continue commissioning.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v13;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Device attestation was rejected. Aborting.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:6 error:v8];
    [v7 abortStagingWithError:v8 context:v14];
  }
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 hasPriorSuccessfulPairing])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Accessory server has prior successful pairing, skipping user permission dialog for unauthorized accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [v5 name];
    [v5 notifyDelegateOfUnauthenticatedAccessoryPromptStarted];
    objc_initWeak(buf, v5);
    v12 = [*(a1 + 32) uiDialogPresenter];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_16;
    v14[3] = &unk_2786F0990;
    objc_copyWeak(&v17, buf);
    v13 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v16 = v13;
    v15 = v6;
    [v12 requestUserPermissionForUnauthenticatedAccessory:v11 completionHandler:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_2;
  v13[3] = &unk_2786F09E0;
  v5 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v3;
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  *&v10 = v7;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v8;
  v15 = v11;
  v16 = v10;
  v12 = v3;
  dispatch_async(v4, v13);
}

uint64_t __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory server validated attestation device info with error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 40) == 0)
  {
    return (*(*(a1 + 72) + 16))();
  }

  else
  {
    return (*(*(a1 + 64) + 16))();
  }
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_16(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained notifyDelegateOfUnauthenticatedAccessoryPromptEnded];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v12;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, got an error response for user permission for unauthorized accessory. Fail pairing.", &v20, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v18 = v17;
      v19 = "NO";
      if (a2)
      {
        v19 = "YES";
      }

      v20 = 138543618;
      v21 = v17;
      v22 = 2080;
      v23 = v19;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@User selection for unauthorized accessory. Should cancel : %s", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Accessory server purged by the time user responded", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_14(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (a2)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v10;
        _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Device commissioning was rejected.", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      if (!v5)
      {
        v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:12 userInfo:0];
      }

      v11 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:6 error:v5];
      [WeakRetained abortStagingWithError:v5 context:v11];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Accessory server already purged by the time user responded", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)_requestUserPermissionForBridgeAccessory:(id)accessory completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v11;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@HMMTRAttestationStatus: _requestUserPermissionForBridgeAccessory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  userAuthorizationDelegate = [(HMMTRAttestationStatus *)selfCopy userAuthorizationDelegate];

  v13 = objc_autoreleasePoolPush();
  v14 = selfCopy;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (userAuthorizationDelegate)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v17;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@HMMTRAttestationStatus: _requestUserPermissionForBridgeAccessory - delegate set", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    userAuthorizationDelegate2 = [(HMMTRAttestationStatus *)v14 userAuthorizationDelegate];
    v19 = objc_opt_respondsToSelector();
    v20 = objc_autoreleasePoolPush();
    v21 = v14;
    v22 = HMFGetOSLogHandle();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v23)
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v24;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@HMMTRAttestationStatus: _requestUserPermissionForBridgeAccessory - calling delegate", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      accessoryServer = [(HMMTRAttestationStatus *)v21 accessoryServer];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __85__HMMTRAttestationStatus__requestUserPermissionForBridgeAccessory_completionHandler___block_invoke;
      v28[3] = &unk_2786F08F0;
      v28[4] = v21;
      v29 = handlerCopy;
      [userAuthorizationDelegate2 requestUserPermissionForBridgeAccessory:accessoryServer completionHandler:v28];
    }

    else
    {
      if (v23)
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v27;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not respond to selector", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      accessoryServer = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      (*(handlerCopy + 2))(handlerCopy, 1, accessoryServer);
    }
  }

  else
  {
    if (v16)
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v26;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@User Authorization delegate is not set", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __85__HMMTRAttestationStatus__requestUserPermissionForBridgeAccessory_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, got an error response for user permission for bridge accessory. Fail pairing.", &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = v11;
    v13 = "NO";
    if (a2)
    {
      v13 = "YES";
    }

    v14 = 138543618;
    v15 = v11;
    v16 = 2080;
    v17 = v13;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@User selection for bridge accessory. Should cancel : %s", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  (*(*(a1 + 40) + 16))();
}

- (HMMTRAttestationStatus)initWithQueue:(id)queue uiDialogPresenter:(id)presenter failSafeExpiryTimeoutSecs:(id)secs
{
  queueCopy = queue;
  presenterCopy = presenter;
  secsCopy = secs;
  v15.receiver = self;
  v15.super_class = HMMTRAttestationStatus;
  v12 = [(HMMTRAttestationStatus *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_failSafeExpiryTimeoutSecs, secs);
    objc_storeStrong(&v13->_clientQueue, queue);
    objc_storeStrong(&v13->_uiDialogPresenter, presenter);
  }

  return v13;
}

@end