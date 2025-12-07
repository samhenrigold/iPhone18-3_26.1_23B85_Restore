@interface HMMTRSoftwareUpdateProvider
+ (id)logCategory;
- (BOOL)canEstablishConnectionForNodeID:(id)d;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRSoftwareUpdateProvider)initWithQueue:(id)queue browser:(id)browser;
- (HMMTRSoftwareUpdateProviderDelegate)delegate;
- (void)notifyDelegateCheckFirmwareUpdateSessionWithPairing:(id)pairing completionHandler:(id)handler;
- (void)notifyDelegateOfApplyUpdateWithPairing:(id)pairing requestParams:(id)params completionHandler:(id)handler;
- (void)notifyDelegateOfNotifyUpdateWithPairing:(id)pairing params:(id)params completionHandler:(id)handler;
- (void)notifyUpdateRequestedForNodeID:(id)d isUserTriggered:(BOOL)triggered isRetry:(BOOL)retry;
- (void)triggerQueryImageWithPairing:(id)pairing accessoryInitiated:(BOOL)initiated requestParams:(id)params completionHandler:(id)handler;
- (void)updateOTAProviderStateForNodeID:(id)d otaProviderState:(int64_t)state;
@end

@implementation HMMTRSoftwareUpdateProvider

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (HMMTRSoftwareUpdateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)canEstablishConnectionForNodeID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_browser);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = dCopy;
      v12 = "%{public}@Unable to get browser ref for canEstablishConnectionForNodeID:%@";
      v13 = v10;
      v14 = 22;
LABEL_8:
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, v12, &v16, v14);
    }

LABEL_9:

    objc_autoreleasePoolPop(v8);
    v7 = 0;
    goto LABEL_10;
  }

  if (([WeakRetained isCurrentDeviceAllowedAccessoryControlDespiteReachableResident] & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      v12 = "%{public}@OTA request should be coming through resident";
      v13 = v10;
      v14 = 12;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v7 = [v6 canEstablishConnectionForNodeID:dCopy];
LABEL_10:

  return v7;
}

- (void)updateOTAProviderStateForNodeID:(id)d otaProviderState:(int64_t)state
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HAPOTAProviderStateAsString();
    v26 = 138543874;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = dCopy;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@HK informed to update OTA provider state to:%@, for nodeID: %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_browser);
  if (!WeakRetained)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = dCopy;
      v21 = "%{public}@Unable to get browser ref for updateOTAProviderStateForNodeID:%@";
LABEL_13:
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, v21, &v26, 0x16u);
    }

LABEL_14:

    objc_autoreleasePoolPop(v17);
    goto LABEL_19;
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    goto LABEL_19;
  }

  v13 = [WeakRetained accessoryServerWithNodeID:dCopy];
  if (!v13)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = dCopy;
      v21 = "%{public}@Could not associate with a paired accessory for updateOTAProviderStateForNodeID:%@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v14 = v13;
  matterFirmwareUpdateStatus = [v13 matterFirmwareUpdateStatus];
  if (matterFirmwareUpdateStatus)
  {
    matterFirmwareUpdateStatus2 = [v14 matterFirmwareUpdateStatus];
    [matterFirmwareUpdateStatus2 updateFirmwareUpdateStatus:state];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v25;
      v28 = 2112;
      v29 = dCopy;
      _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@MatterFirmwareUpdateStatus instance not found for nodeID:%@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

LABEL_19:
}

- (void)notifyUpdateRequestedForNodeID:(id)d isUserTriggered:(BOOL)triggered isRetry:(BOOL)retry
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_browser);
  v10 = WeakRetained;
  if (!WeakRetained)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v16;
      v31 = 2112;
      v32 = dCopy;
      v17 = "%{public}@Unable to get browser ref for notifyUpdateRequestedForNodeID:%@";
      v18 = v15;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 22;
LABEL_9:
      _os_log_impl(&dword_22AEAE000, v18, v19, v17, buf, v20);
    }

LABEL_10:

    objc_autoreleasePoolPop(v13);
    goto LABEL_15;
  }

  if (!triggered)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v16;
      v17 = "%{public}@Ignoring announcement request for automatic software updates";
      v18 = v15;
      v19 = OS_LOG_TYPE_INFO;
      v20 = 12;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v11 = [WeakRetained accessoryServerWithNodeID:dCopy];
  if (v11)
  {
    threadSoftwareUpdateController = [v10 threadSoftwareUpdateController];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __86__HMMTRSoftwareUpdateProvider_notifyUpdateRequestedForNodeID_isUserTriggered_isRetry___block_invoke;
    v25[3] = &unk_2786EE8C0;
    v25[4] = self;
    v26 = dCopy;
    v27 = v10;
    retryCopy = retry;
    [threadSoftwareUpdateController handleUpdateRequestedForAccessoryServer:v11 completion:v25];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = dCopy;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not associate with a paired accessory for notifyUpdateRequestedForNodeID:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

LABEL_15:
}

void __86__HMMTRSoftwareUpdateProvider_notifyUpdateRequestedForNodeID_isUserTriggered_isRetry___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = 138543874;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to send update available announcement to the accessory with nodeID:%@ %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [*(a1 + 48) announceOtaProviderForNodeID:*(a1 + 40) isRetry:*(a1 + 56)];
  }
}

- (void)notifyDelegateCheckFirmwareUpdateSessionWithPairing:(id)pairing completionHandler:(id)handler
{
  pairingCopy = pairing;
  handlerCopy = handler;
  clientQueue = [(HMMTRSoftwareUpdateProvider *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__HMMTRSoftwareUpdateProvider_notifyDelegateCheckFirmwareUpdateSessionWithPairing_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v12 = pairingCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = pairingCopy;
  dispatch_async(clientQueue, block);
}

void __101__HMMTRSoftwareUpdateProvider_notifyDelegateCheckFirmwareUpdateSessionWithPairing_completionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];

  if (!v2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v9;
      v10 = "%{public}@Software update delegate is not set";
LABEL_9:
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, v10, &v18, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v6);
    v11 = *(a1 + 48);
    v3 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v11 + 16))(v11, v3);
    goto LABEL_14;
  }

  if (!*(a1 + 40))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v9;
      v10 = "%{public}@Pairing info is nil";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) clientQueue];
    [v3 notifyCheckFirmwareUpdateSessionWithPairing:v4 queue:v5 completionHandler:*(a1 + 48)];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not respond to selector", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = *(a1 + 48);
    v17 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v16 + 16))(v16, v17);
  }

LABEL_14:
}

- (void)notifyDelegateOfNotifyUpdateWithPairing:(id)pairing params:(id)params completionHandler:(id)handler
{
  pairingCopy = pairing;
  paramsCopy = params;
  handlerCopy = handler;
  clientQueue = [(HMMTRSoftwareUpdateProvider *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __96__HMMTRSoftwareUpdateProvider_notifyDelegateOfNotifyUpdateWithPairing_params_completionHandler___block_invoke;
  v15[3] = &unk_2786EFA60;
  v15[4] = self;
  v16 = pairingCopy;
  v17 = paramsCopy;
  v18 = handlerCopy;
  v12 = paramsCopy;
  v13 = handlerCopy;
  v14 = pairingCopy;
  dispatch_async(clientQueue, v15);
}

void __96__HMMTRSoftwareUpdateProvider_notifyDelegateOfNotifyUpdateWithPairing_params_completionHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];

  if (!v2)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v10;
      v11 = "%{public}@Software update delegate is not set";
LABEL_9:
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, v11, &v19, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v7);
    v12 = *(a1 + 56);
    v3 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v12 + 16))(v12, v3);
    goto LABEL_14;
  }

  if (!*(a1 + 40))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v10;
      v11 = "%{public}@Pairing info is nil";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = [*(a1 + 32) clientQueue];
    [v3 notifyUpdateWithPairing:v5 params:v4 queue:v6 completionHandler:*(a1 + 56)];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not respond to selector", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = *(a1 + 56);
    v18 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v17 + 16))(v17, v18);
  }

LABEL_14:
}

- (void)notifyDelegateOfApplyUpdateWithPairing:(id)pairing requestParams:(id)params completionHandler:(id)handler
{
  pairingCopy = pairing;
  paramsCopy = params;
  handlerCopy = handler;
  clientQueue = [(HMMTRSoftwareUpdateProvider *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__HMMTRSoftwareUpdateProvider_notifyDelegateOfApplyUpdateWithPairing_requestParams_completionHandler___block_invoke;
  v15[3] = &unk_2786EFA60;
  v15[4] = self;
  v16 = pairingCopy;
  v17 = paramsCopy;
  v18 = handlerCopy;
  v12 = paramsCopy;
  v13 = handlerCopy;
  v14 = pairingCopy;
  dispatch_async(clientQueue, v15);
}

void __102__HMMTRSoftwareUpdateProvider_notifyDelegateOfApplyUpdateWithPairing_requestParams_completionHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];

  if (!v2)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v10;
      v11 = "%{public}@Software update delegate is not set";
LABEL_9:
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, v11, &v19, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v7);
    v12 = *(a1 + 56);
    v3 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v12 + 16))(v12, 0, v3);
    goto LABEL_14;
  }

  if (!*(a1 + 40))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v10;
      v11 = "%{public}@Pairing info is nil";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = [*(a1 + 32) clientQueue];
    [v3 applyUpdateWithPairing:v5 requestParams:v4 queue:v6 completionHandler:*(a1 + 56)];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not respond to selector", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = *(a1 + 56);
    v18 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v17 + 16))(v17, 0, v18);
  }

LABEL_14:
}

- (void)triggerQueryImageWithPairing:(id)pairing accessoryInitiated:(BOOL)initiated requestParams:(id)params completionHandler:(id)handler
{
  initiatedCopy = initiated;
  v30 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  paramsCopy = params;
  handlerCopy = handler;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v16;
    v28 = 1024;
    v29 = initiatedCopy;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@triggerQueryImageWithPairing method is called and accessoryInitiated is %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v13);
  clientQueue = [(HMMTRSoftwareUpdateProvider *)selfCopy clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__HMMTRSoftwareUpdateProvider_triggerQueryImageWithPairing_accessoryInitiated_requestParams_completionHandler___block_invoke;
  block[3] = &unk_2786EF8F0;
  block[4] = selfCopy;
  v22 = pairingCopy;
  v23 = paramsCopy;
  v24 = handlerCopy;
  v25 = initiatedCopy;
  v18 = paramsCopy;
  v19 = handlerCopy;
  v20 = pairingCopy;
  dispatch_async(clientQueue, block);
}

void __111__HMMTRSoftwareUpdateProvider_triggerQueryImageWithPairing_accessoryInitiated_requestParams_completionHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];

  if (!v2)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v10;
      v11 = "%{public}@Software update delegate is not set";
LABEL_9:
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, v11, &v19, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v7);
    v12 = *(a1 + 56);
    v3 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v12 + 16))(v12, 0, v3);
    goto LABEL_14;
  }

  if (!*(a1 + 40))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v10;
      v11 = "%{public}@Pairing info is nil";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = [*(a1 + 32) clientQueue];
    [v3 queryImageWithPairing:v5 requestParams:v4 queue:v6 accessoryInitiated:*(a1 + 64) completionHandler:*(a1 + 56)];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not respond to selector", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = *(a1 + 56);
    v18 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v17 + 16))(v17, 0, v18);
  }

LABEL_14:
}

- (HMMTRSoftwareUpdateProvider)initWithQueue:(id)queue browser:(id)browser
{
  queueCopy = queue;
  browserCopy = browser;
  v12.receiver = self;
  v12.super_class = HMMTRSoftwareUpdateProvider;
  v9 = [(HMMTRSoftwareUpdateProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientQueue, queue);
    objc_storeWeak(&v10->_browser, browserCopy);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t23 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t23, &__block_literal_global_8451);
  }

  v3 = logCategory__hmf_once_v24;

  return v3;
}

uint64_t __42__HMMTRSoftwareUpdateProvider_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v24;
  logCategory__hmf_once_v24 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end