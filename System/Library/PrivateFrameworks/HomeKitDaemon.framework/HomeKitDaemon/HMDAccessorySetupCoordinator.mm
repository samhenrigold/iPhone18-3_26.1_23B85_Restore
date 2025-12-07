@interface HMDAccessorySetupCoordinator
+ (id)logCategory;
- (HMDAccessorySetupCoordinator)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher chipAccessoryServerBrowser:(id)browser chipDataSource:(id)source;
- (id)_createCHIPSetupAccessoryPayloadWithSetupPayloadDecimalStringRepresentation:(id)representation error:(id *)error;
- (id)_setupPayloadWithCHIPSetupPayload:(id)payload setupPayloadURL:(id)l;
- (id)createCHIPSetupAccessoryPayloadWithSetupPayloadURL:(id)l error:(id *)error;
- (id)createSetupAccessoryPayloadWithCHIPSetupPayload:(id)payload error:(id *)error;
- (id)logIdentifier;
- (void)_handleStagedPairingCommissioneeInfo:(id)info forRequest:(id)request;
- (void)_handleStagedPairingDeviceCredential:(id)credential completionHandler:(id)handler forRequest:(id)request activity:(id)activity;
- (void)_handleStagedPairingProgressState:(int64_t)state forRequest:(id)request;
- (void)_handleStagedPairingReadyToCancel:(id)cancel forRequest:(id)request;
- (void)_handleStagedPairingServer:(id)server error:(id)error forRequest:(id)request activity:(id)activity;
- (void)_handleStagedPairingThreadNetworkScanResults:(id)results completionHandler:(id)handler forRequest:(id)request activity:(id)activity;
- (void)_handleStagedPairingWiFiNetworkScanResults:(id)results completionHandler:(id)handler forRequest:(id)request activity:(id)activity;
- (void)configure;
- (void)handleCancelStagedCHIPAccessoryPairingMessage:(id)message;
- (void)handleCancelStagingMessage:(id)message;
- (void)handleConfirmDeviceCredentialMessage:(id)message;
- (void)handleCreateCHIPSetupAccessoryPayloadMessage:(id)message;
- (void)handleCreateCHIPSetupPayloadMessage:(id)message;
- (void)handleRejectDeviceCredentialMessage:(id)message;
- (void)handleSelectThreadNetworkAssociationMessage:(id)message;
- (void)handleSelectWiFiNetworkAssociationMessage:(id)message;
- (void)handleStageCHIPAccessoryPairingInStepsMessage:(id)message;
- (void)startMetricsForThirdPartyPairing;
- (void)stopMetricsForThirdPartyPairingWithError:(id)error;
@end

@implementation HMDAccessorySetupCoordinator

- (id)logIdentifier
{
  uUID = [MEMORY[0x277CD17C8] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)_handleStagedPairingServer:(id)server error:(id)error forRequest:(id)request activity:(id)activity
{
  v103 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  errorCopy = error;
  requestCopy = request;
  activityCopy = activity;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  identifier = [serverCopy identifier];
  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    *buf = 138544130;
    v94 = v19;
    v95 = 2112;
    v96 = identifier;
    v97 = 2112;
    v98 = errorCopy;
    v99 = 2112;
    v100 = uUID;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Handling staged pairing identifier %@ and error %@ for request UUID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  v85 = identifier;
  if (!identifier || ([requestCopy pendingRequestMessage], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    productID = [serverCopy productID];

    if (productID)
    {
      v84 = activityCopy;
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      productID4 = HMFGetOSLogHandle();
      v26 = os_log_type_enabled(productID4, OS_LOG_TYPE_INFO);
      v27 = MEMORY[0x277D17A50];
      if (v26)
      {
        HMFGetLogIdentifier();
        v28 = v83 = v23;
        v29 = *MEMORY[0x277D17A68];
        v30 = requestCopy;
        v31 = errorCopy;
        v32 = *v27;
        productID2 = [serverCopy productID];
        *buf = 138544386;
        v94 = v28;
        v95 = 2114;
        v96 = v29;
        v97 = 2112;
        v98 = @"Accessory Info";
        v99 = 2114;
        v100 = v32;
        errorCopy = v31;
        requestCopy = v30;
        v101 = 2112;
        v102 = productID2;
        _os_log_impl(&dword_229538000, productID4, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);

        v23 = v83;
      }

      else
      {
        v29 = *MEMORY[0x277D17A68];
      }

      objc_autoreleasePoolPop(v23);
      mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
      v35 = objc_alloc(MEMORY[0x277D17DF8]);
      productID3 = [serverCopy productID];
      if (productID3)
      {
        v91 = *MEMORY[0x277D17A50];
        productID4 = [serverCopy productID];
        v92 = productID4;
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      }

      else
      {
        v37 = MEMORY[0x277CBEC10];
      }

      v48 = [v35 initWithTag:v29 data:v37];
      tagProcessorList = [v84 tagProcessorList];
      [mEMORY[0x277D17DE8] submitTaggedEvent:v48 processorList:tagProcessorList];

      if (productID3)
      {
      }

      activityCopy = v84;
      identifier = v85;
    }

    [serverCopy startPairingMetricWithActivity:activityCopy];
    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
    uUID2 = [requestCopy UUID];
    [stagingRequestsByUUID setObject:0 forKeyedSubscript:uUID2];

    if (identifier)
    {
      v52 = objc_autoreleasePoolPush();
      v53 = selfCopy;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = HMFGetLogIdentifier();
        uUID3 = [requestCopy UUID];
        *buf = 138543874;
        v94 = v55;
        v95 = 2112;
        v96 = identifier;
        v97 = 2112;
        v98 = uUID3;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_INFO, "%{public}@Successfully staged CHIP accessory server with identifier %@ in multiple steps for request UUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v52);
      chipAccessoryServerBrowser = [(HMDAccessorySetupCoordinator *)v53 chipAccessoryServerBrowser];
      systemCommissionerPairingManager = [chipAccessoryServerBrowser systemCommissionerPairingManager];
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __85__HMDAccessorySetupCoordinator__handleStagedPairingServer_error_forRequest_activity___block_invoke;
      v86[3] = &unk_278681F20;
      v86[4] = v53;
      v87 = requestCopy;
      v88 = activityCopy;
      v89 = identifier;
      v90 = serverCopy;
      [systemCommissionerPairingManager fetchSystemCommissionerPairingsWithCompletionHandler:v86];

      goto LABEL_41;
    }

    v59 = mapHAPPairingErrorToHMError(errorCopy);
    v60 = objc_autoreleasePoolPush();
    v61 = selfCopy;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = HMFGetLogIdentifier();
      uUID4 = [requestCopy UUID];
      *buf = 138543874;
      v94 = v63;
      v95 = 2112;
      v96 = uUID4;
      v97 = 2112;
      v98 = v59;
      _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage CHIP accessory pairing for request UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v60);
    pendingRequestMessage = [requestCopy pendingRequestMessage];

    v66 = objc_autoreleasePoolPush();
    v67 = v61;
    v68 = HMFGetOSLogHandle();
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_INFO);
    if (!pendingRequestMessage)
    {
      if (v69)
      {
        v79 = HMFGetLogIdentifier();
        uUID5 = [requestCopy UUID];
        *buf = 138543874;
        v94 = v79;
        v95 = 2112;
        v96 = v59;
        v97 = 2112;
        v98 = uUID5;
        _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@Queueing staging error %@ for request UUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v66);
      if (v59)
      {
        [requestCopy setError:v59];
      }

      else
      {
        v82 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [requestCopy setError:v82];
      }

      identifier = v85;
      goto LABEL_40;
    }

    if (v69)
    {
      v70 = HMFGetLogIdentifier();
      uUID6 = [requestCopy UUID];
      *buf = 138543874;
      v94 = v70;
      v95 = 2112;
      v96 = uUID6;
      v97 = 2112;
      v98 = v59;
      _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@Responding for request UUID %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v66);
    pendingRequestMessage2 = [requestCopy pendingRequestMessage];
    [pendingRequestMessage2 respondWithError:v59];

    domain = [(__CFString *)v59 domain];
    v74 = domain;
    if (domain == *MEMORY[0x277CCFD28])
    {
      code = [(__CFString *)v59 code];

      identifier = v85;
      if (code == 13)
      {
LABEL_40:

        goto LABEL_41;
      }
    }

    else
    {

      identifier = v85;
    }

    HMMLogTagActivityWithError();
    [activityCopy invalidate];
    goto LABEL_40;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = selfCopy;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = HMFGetLogIdentifier();
    uUID7 = [requestCopy UUID];
    *buf = 138543618;
    v94 = v41;
    v95 = 2112;
    v96 = uUID7;
    _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received staged pairing identifier for request UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v38);
  v43 = objc_autoreleasePoolPush();
  v44 = v39;
  v45 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    v46 = HMFGetLogIdentifier();
    v47 = *MEMORY[0x277D17A70];
    *buf = 138543874;
    v94 = v46;
    v95 = 2114;
    v96 = v47;
    v97 = 2112;
    v98 = @"unexpected pairing server";
    _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@", buf, 0x20u);
  }

  else
  {
    v47 = *MEMORY[0x277D17A70];
  }

  objc_autoreleasePoolPop(v43);
  mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
  v76 = objc_alloc(MEMORY[0x277D17DF8]);
  v77 = [v76 initWithTag:v47 data:MEMORY[0x277CBEC10]];
  tagProcessorList2 = [activityCopy tagProcessorList];
  [mEMORY[0x277D17DE8]2 submitTaggedEvent:v77 processorList:tagProcessorList2];

  identifier = v85;
LABEL_41:
}

void __85__HMDAccessorySetupCoordinator__handleStagedPairingServer_error_forRequest_activity___block_invoke(id *a1, void *a2, void *a3)
{
  v67[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __85__HMDAccessorySetupCoordinator__handleStagedPairingServer_error_forRequest_activity___block_invoke_175;
    v52[3] = &unk_2786884A0;
    v53 = a1[7];
    v7 = [(__CFString *)v5 na_firstObjectPassingTest:v52];
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v7 uuid];
        v14 = a1[7];
        *buf = 138543874;
        v57 = v12;
        v58 = 2112;
        v59 = v13;
        v60 = 2112;
        v61 = v14;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Passing back pairing UUID %@ for staged pairing identifier: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v15 = [a1[5] pendingRequestMessage];
      v66[0] = *MEMORY[0x277CCEE50];
      v16 = [a1[5] UUID];
      v17 = *MEMORY[0x277CCEE00];
      v18 = a1[7];
      v67[0] = v16;
      v67[1] = v18;
      v19 = *MEMORY[0x277CCEE20];
      v66[1] = v17;
      v66[2] = v19;
      v20 = [v7 uuid];
      v67[2] = v20;
      v21 = 0x277CBE000uLL;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
      [v15 respondWithPayload:v22];

      v23 = objc_autoreleasePoolPush();
      v24 = a1[4];
      v25 = HMFGetOSLogHandle();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      v27 = MEMORY[0x277D17A18];
      if (v26)
      {
        HMFGetLogIdentifier();
        v28 = v51 = v23;
        v29 = *MEMORY[0x277D17A10];
        v30 = v27;
        v31 = v5;
        v32 = v7;
        v33 = v6;
        v34 = *v30;
        v35 = [a1[8] softwareVersionString];
        *buf = 138544386;
        v57 = v28;
        v58 = 2114;
        v59 = v29;
        v60 = 2112;
        v61 = @"Firmware version";
        v62 = 2114;
        v63 = v34;
        v6 = v33;
        v7 = v32;
        v5 = v31;
        v64 = 2112;
        v65 = v35;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);

        v21 = 0x277CBE000;
        v23 = v51;
      }

      else
      {
        v29 = *MEMORY[0x277D17A10];
      }

      objc_autoreleasePoolPop(v23);
      v44 = [MEMORY[0x277D17DE8] sharedInstance];
      v46 = objc_alloc(MEMORY[0x277D17DF8]);
      v47 = [a1[8] softwareVersionString];
      if (v47)
      {
        v54 = *MEMORY[0x277D17A18];
        v25 = [a1[8] softwareVersionString];
        v55 = v25;
        v48 = [*(v21 + 2752) dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      }

      else
      {
        v48 = MEMORY[0x277CBEC10];
      }

      v49 = [v46 initWithTag:v29 data:v48];
      v50 = [a1[6] tagProcessorList];
      [v44 submitTaggedEvent:v49 processorList:v50];

      if (v47)
      {
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        v43 = a1[7];
        *buf = 138543874;
        v57 = v42;
        v58 = 2112;
        v59 = v43;
        v60 = 2112;
        v61 = v5;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not find system commissioner pairing for newly staged server with identifier %@ in all pairings: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v45 = [a1[5] pendingRequestMessage];
      [v45 respondWithError:v44];

      HMMLogTagActivityWithError();
      [a1[6] invalidate];
    }

    v40 = v53;
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = a1[4];
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v39;
      v58 = 2112;
      v59 = v6;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@System commissioner failed to fetch pairings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v6];
    v41 = [a1[5] pendingRequestMessage];
    [v41 respondWithError:v40];

    HMMLogTagActivityWithError();
    [a1[6] invalidate];
  }
}

uint64_t __85__HMDAccessorySetupCoordinator__handleStagedPairingServer_error_forRequest_activity___block_invoke_175(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D17B90];
  v4 = [a2 nodeID];
  v5 = [v3 identifierStringWithCHIPNodeID:v4];

  v6 = [v5 isEqual:*(a1 + 32)];
  return v6;
}

- (void)_handleStagedPairingCommissioneeInfo:(id)info forRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  requestCopy = request;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    *buf = 138543618;
    v26 = v12;
    v27 = 2112;
    v28 = uUID;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling commissionee info for request UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  uUID2 = [requestCopy UUID];
  v24[0] = uUID2;
  v23[1] = *MEMORY[0x277CCEE10];
  v15 = encodeRootObjectForIncomingXPCMessage(infoCopy, 0);
  v24[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v17 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CCEDE0] messagePayload:v16];
  v18 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDAccessorySetupCoordinator *)selfCopy messageTargetUUID];
  v20 = [v18 initWithTarget:messageTargetUUID];
  [v17 setDestination:v20];

  messageDispatcher = [(HMDAccessorySetupCoordinator *)selfCopy messageDispatcher];
  v22 = objc_msgSend_copy(v17);
  [messageDispatcher sendMessage:v22];
}

- (void)_handleStagedPairingProgressState:(int64_t)state forRequest:(id)request
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    *buf = 138543874;
    v26 = v11;
    v27 = 2048;
    stateCopy = state;
    v29 = 2112;
    v30 = uUID;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling progress state (%ld) for request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if ((state - 1) > 0x25)
  {
    v13 = 15;
  }

  else
  {
    v13 = qword_22A587318[state - 1];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
  uUID2 = [requestCopy UUID];
  v23[1] = *MEMORY[0x277CCEE30];
  v24[0] = uUID2;
  v24[1] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v17 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CCEE98] messagePayload:v16];
  v18 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDAccessorySetupCoordinator *)selfCopy messageTargetUUID];
  v20 = [v18 initWithTarget:messageTargetUUID];
  [v17 setDestination:v20];

  messageDispatcher = [(HMDAccessorySetupCoordinator *)selfCopy messageDispatcher];
  v22 = objc_msgSend_copy(v17);
  [messageDispatcher sendMessage:v22];
}

- (void)_handleStagedPairingReadyToCancel:(id)cancel forRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  cancelCopy = cancel;
  requestCopy = request;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    v25 = 138543618;
    v26 = v12;
    v27 = 2112;
    v28 = uUID;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling ready to cancel for request UUID: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  pendingCancelMessage = [requestCopy pendingCancelMessage];

  if (pendingCancelMessage)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Responding to a pending Cancel message", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    pendingCancelMessage2 = [requestCopy pendingCancelMessage];
    [pendingCancelMessage2 respondWithSuccess];

    pendingRequestMessage = [requestCopy pendingRequestMessage];

    if (pendingRequestMessage)
    {
      pendingRequestMessage2 = [requestCopy pendingRequestMessage];
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [pendingRequestMessage2 respondWithError:v22];
    }

    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)v16 stagingRequestsByUUID];
    uUID2 = [requestCopy UUID];
    [stagingRequestsByUUID setObject:0 forKeyedSubscript:uUID2];
  }

  else
  {
    [requestCopy setCancelHandler:cancelCopy];
  }
}

- (void)_handleStagedPairingThreadNetworkScanResults:(id)results completionHandler:(id)handler forRequest:(id)request activity:(id)activity
{
  v55 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  handlerCopy = handler;
  requestCopy = request;
  activityCopy = activity;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    *buf = 138543874;
    v50 = v18;
    v51 = 2112;
    v52 = resultsCopy;
    v53 = 2112;
    v54 = uUID;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Handling Thread scan results %@ for request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  selectWiFiNetworkHandler = [requestCopy selectWiFiNetworkHandler];
  if (selectWiFiNetworkHandler)
  {

LABEL_6:
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      uUID2 = [requestCopy UUID];
      *buf = 138543618;
      v50 = v25;
      v51 = 2112;
      v52 = uUID2;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received Thread scan results for request UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    handlerCopy[2](handlerCopy, 0);
    v27 = objc_autoreleasePoolPush();
    v28 = v23;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = *MEMORY[0x277D17A70];
      *buf = 138543874;
      v50 = v30;
      v51 = 2114;
      v52 = v31;
      v53 = 2112;
      v54 = @"Unexpected thread scan results";
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@", buf, 0x20u);
    }

    else
    {
      v31 = *MEMORY[0x277D17A70];
    }

    objc_autoreleasePoolPop(v27);
    mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
    v33 = objc_alloc(MEMORY[0x277D17DF8]);
    pendingResponsePayloads = [v33 initWithTag:v31 data:MEMORY[0x277CBEC10]];
    tagProcessorList = [activityCopy tagProcessorList];
    [mEMORY[0x277D17DE8] submitTaggedEvent:pendingResponsePayloads processorList:tagProcessorList];
    goto LABEL_12;
  }

  selectThreadNetworkHandler = [requestCopy selectThreadNetworkHandler];

  if (selectThreadNetworkHandler)
  {
    goto LABEL_6;
  }

  if (resultsCopy)
  {
    uUID3 = [requestCopy UUID];
    v48[0] = uUID3;
    v47[1] = *MEMORY[0x277CCEE60];
    v37 = encodeRootObject();
    v48[1] = v37;
    mEMORY[0x277D17DE8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
  }

  else
  {
    mEMORY[0x277D17DE8] = MEMORY[0x277CBEC10];
  }

  [requestCopy setSelectThreadNetworkHandler:handlerCopy];
  pendingRequestMessage = [requestCopy pendingRequestMessage];

  if (!pendingRequestMessage)
  {
    pendingResponsePayloads = [requestCopy pendingResponsePayloads];
    [pendingResponsePayloads addObject:mEMORY[0x277D17DE8]];
    goto LABEL_13;
  }

  pendingRequestMessage2 = [requestCopy pendingRequestMessage];
  [pendingRequestMessage2 respondWithPayload:mEMORY[0x277D17DE8]];

  [requestCopy setPendingRequestMessage:0];
  v40 = objc_autoreleasePoolPush();
  v41 = selfCopy;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = HMFGetLogIdentifier();
    v44 = *MEMORY[0x277D17A90];
    *buf = 138543874;
    v50 = v43;
    v51 = 2114;
    v52 = v44;
    v53 = 2112;
    v54 = @"Thread Scan Results Ready";
    _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@", buf, 0x20u);
  }

  else
  {
    v44 = *MEMORY[0x277D17A90];
  }

  objc_autoreleasePoolPop(v40);
  pendingResponsePayloads = [MEMORY[0x277D17DE8] sharedInstance];
  v45 = objc_alloc(MEMORY[0x277D17DF8]);
  tagProcessorList = [v45 initWithTag:v44 data:MEMORY[0x277CBEC10]];
  tagProcessorList2 = [activityCopy tagProcessorList];
  [pendingResponsePayloads submitTaggedEvent:tagProcessorList processorList:tagProcessorList2];

LABEL_12:
LABEL_13:
}

- (void)_handleStagedPairingWiFiNetworkScanResults:(id)results completionHandler:(id)handler forRequest:(id)request activity:(id)activity
{
  v43 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  handlerCopy = handler;
  requestCopy = request;
  activityCopy = activity;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    *buf = 138543874;
    v38 = v18;
    v39 = 2112;
    v40 = resultsCopy;
    v41 = 2112;
    v42 = uUID;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Handling WiFi scan results %@ for request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  selectWiFiNetworkHandler = [requestCopy selectWiFiNetworkHandler];
  if (selectWiFiNetworkHandler)
  {
  }

  else
  {
    selectThreadNetworkHandler = [requestCopy selectThreadNetworkHandler];

    if (!selectThreadNetworkHandler)
    {
      if (resultsCopy)
      {
        v35[0] = *MEMORY[0x277CCEE50];
        uUID2 = [requestCopy UUID];
        v36[0] = uUID2;
        v35[1] = *MEMORY[0x277CCEE70];
        v28 = encodeRootObject();
        v36[1] = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
      }

      else
      {
        uUID2 = [requestCopy UUID];
        v34 = uUID2;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      }

      [requestCopy setSelectWiFiNetworkHandler:handlerCopy];
      pendingRequestMessage = [requestCopy pendingRequestMessage];

      if (pendingRequestMessage)
      {
        pendingRequestMessage2 = [requestCopy pendingRequestMessage];
        [pendingRequestMessage2 respondWithPayload:v29];

        [requestCopy setPendingRequestMessage:0];
      }

      else
      {
        pendingResponsePayloads = [requestCopy pendingResponsePayloads];
        [pendingResponsePayloads addObject:v29];
      }

      goto LABEL_9;
    }
  }

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    uUID3 = [requestCopy UUID];
    *buf = 138543618;
    v38 = v25;
    v39 = 2112;
    v40 = uUID3;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received WiFi scan results for request UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  handlerCopy[2](handlerCopy, 0);
LABEL_9:
}

- (void)_handleStagedPairingDeviceCredential:(id)credential completionHandler:(id)handler forRequest:(id)request activity:(id)activity
{
  v42 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  handlerCopy = handler;
  requestCopy = request;
  activityCopy = activity;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    uUID = [requestCopy UUID];
    *buf = 138543874;
    v37 = v18;
    v38 = 2112;
    v39 = credentialCopy;
    v40 = 2112;
    v41 = uUID;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Handling device credential %@ for request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  uUID2 = [requestCopy UUID];
  v35[0] = uUID2;
  v34[1] = *MEMORY[0x277CCEE18];
  v21 = encodeRootObject();
  v35[1] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  pendingRequestMessage = [requestCopy pendingRequestMessage];

  if (pendingRequestMessage)
  {
    pendingRequestMessage2 = [requestCopy pendingRequestMessage];
    [pendingRequestMessage2 respondWithPayload:v22];

    [requestCopy setPendingRequestMessage:0];
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v29 = *MEMORY[0x277D17A40];
      *buf = 138543874;
      v37 = v28;
      v38 = 2114;
      v39 = v29;
      v40 = 2112;
      v41 = @"Device credential sent to client";
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@", buf, 0x20u);
    }

    else
    {
      v29 = *MEMORY[0x277D17A40];
    }

    objc_autoreleasePoolPop(v25);
    mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
    v31 = objc_alloc(MEMORY[0x277D17DF8]);
    v32 = [v31 initWithTag:v29 data:MEMORY[0x277CBEC10]];
    tagProcessorList = [activityCopy tagProcessorList];
    [mEMORY[0x277D17DE8] submitTaggedEvent:v32 processorList:tagProcessorList];
  }

  else
  {
    mEMORY[0x277D17DE8] = [requestCopy pendingResponsePayloads];
    [mEMORY[0x277D17DE8] addObject:v22];
  }

  [requestCopy setConfirmDeviceCredentialCompletionHandler:handlerCopy];
}

- (id)_setupPayloadWithCHIPSetupPayload:(id)payload setupPayloadURL:(id)l
{
  v41 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  lCopy = l;
  if (!payloadCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = lCopy;
  v9 = objc_alloc(MEMORY[0x277CD1C98]);
  setupCode = [payloadCopy setupCode];
  stringValue = [setupCode stringValue];
  v12 = [v9 initWithSetupCode:stringValue communicationProtocol:2];

  v13 = [objc_alloc(MEMORY[0x277CD1C38]) initWithCHIPSetupPayload:payloadCopy];
  [v12 setSetupPayloadURL:v8];
  setupID = [payloadCopy setupID];
  [v12 setSetupID:setupID];

  [v12 setSupportsIP:{objc_msgSend(payloadCopy, "supportsIP")}];
  [v12 setSupportsBTLE:{objc_msgSend(payloadCopy, "supportsBLE")}];
  [v12 setSupportsWAC:{objc_msgSend(payloadCopy, "supportsSoftAP")}];
  vendorID = [payloadCopy vendorID];
  productID = [payloadCopy productID];
  v17 = productID;
  if (vendorID && productID)
  {
    chipDataSource = [(HMDAccessorySetupCoordinator *)self chipDataSource];
    [chipDataSource vendorMetadataStore];
    v35 = vendorID;
    v19 = v17;
    v20 = v13;
    v22 = v21 = v8;
    vendorID2 = [payloadCopy vendorID];
    [payloadCopy productID];
    v24 = v36 = self;
    v25 = [v22 retrieveVendorMetadataForVendorID:vendorID2 productID:v24];

    v8 = v21;
    v13 = v20;
    v17 = v19;
    vendorID = v35;

    productID2 = [payloadCopy productID];
    v27 = [v25 productWithID:productID2];

    categoryNumber = [v27 categoryNumber];
    [v12 setCategoryNumber:categoryNumber];

    deviceTypeID = [v27 deviceTypeID];
    [v13 setDeviceTypeID:deviceTypeID];

    self = v36;
  }

  [v12 setChipAccessorySetupPayload:v13];
  v30 = objc_autoreleasePoolPush();
  selfCopy = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v33;
    v39 = 2112;
    v40 = v12;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Created CHIP setup accessory payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v30);

  return v12;
}

- (id)_createCHIPSetupAccessoryPayloadWithSetupPayloadDecimalStringRepresentation:(id)representation error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  if (!representationCopy)
  {
    _HMFPreconditionFailure();
  }

  v7 = representationCopy;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  decimalStringRepresentationCHIPAccessorySetupPayloadFactory = [(HMDAccessorySetupCoordinator *)self decimalStringRepresentationCHIPAccessorySetupPayloadFactory];
  v10 = (decimalStringRepresentationCHIPAccessorySetupPayloadFactory)[2](decimalStringRepresentationCHIPAccessorySetupPayloadFactory, v7);

  if (v10)
  {
    v11 = [(HMDAccessorySetupCoordinator *)self _setupPayloadWithCHIPSetupPayload:v10 setupPayloadURL:0];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to create CHIP accessory setup payload from decimal string representation: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)handleCancelStagedCHIPAccessoryPairingMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy stringForKey:*MEMORY[0x277CCEE00]];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Discarding staged accessory server with identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    chipAccessoryServerBrowser = [(HMDAccessorySetupCoordinator *)selfCopy chipAccessoryServerBrowser];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__HMDAccessorySetupCoordinator_handleCancelStagedCHIPAccessoryPairingMessage___block_invoke;
    v16[3] = &unk_27868A1D8;
    v16[4] = selfCopy;
    v17 = messageCopy;
    [chipAccessoryServerBrowser discardStagedAccessoryServerWithIdentifier:v6 completionHandler:v16];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = messagePayload;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find CHIP accessory pairing identifier in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v15];
  }
}

void __78__HMDAccessorySetupCoordinator_handleCancelStagedCHIPAccessoryPairingMessage___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to discard staged accessory server: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v8 respondWithError:v9];
  }

  else
  {
    [*(a1 + 40) respondWithSuccess];
  }
}

- (void)handleCreateCHIPSetupPayloadMessage:(id)message
{
  v68 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy stringForKey:*MEMORY[0x277CCEE00]];
  if (v6)
  {
    chipAccessoryServerBrowser = [(HMDAccessorySetupCoordinator *)self chipAccessoryServerBrowser];
    v8 = [chipAccessoryServerBrowser stagedAccessoryServerWithIdentifier:v6];

    if (v8)
    {
      currentBundleIdentifier = [(HMDAccessorySetupCoordinator *)self currentBundleIdentifier];
      v10 = [currentBundleIdentifier isEqualToString:*MEMORY[0x277CCFE40]];

      if ((v10 & 1) == 0)
      {
        metricsActivity = [(HMDAccessorySetupCoordinator *)self metricsActivity];
        if (!metricsActivity || (v12 = metricsActivity, -[HMDAccessorySetupCoordinator metricsActivity](self, "metricsActivity"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isValid], v13, v12, (v14 & 1) == 0))
        {
          v15 = objc_autoreleasePoolPush();
          selfCopy = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543362;
            v59 = v18;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Starting metrics collection for 3rd party pairing via locker", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          [(HMDAccessorySetupCoordinator *)selfCopy startMetricsForThirdPartyPairing];
          metricsActivity2 = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
          [v8 startPairingMetricWithActivity:metricsActivity2];

          v20 = objc_autoreleasePoolPush();
          v21 = selfCopy;
          v22 = HMFGetOSLogHandle();
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
          v24 = MEMORY[0x277D17A28];
          if (v23)
          {
            HMFGetLogIdentifier();
            v25 = currentBundleIdentifier4 = v20;
            v26 = *MEMORY[0x277D17A68];
            v27 = *v24;
            currentBundleIdentifier2 = [(HMDAccessorySetupCoordinator *)v21 currentBundleIdentifier];
            *buf = 138544386;
            v59 = v25;
            v60 = 2114;
            v61 = v26;
            v62 = 2112;
            v63 = @"Accessory Info";
            v64 = 2114;
            v65 = v27;
            v66 = 2112;
            v67 = currentBundleIdentifier2;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);

            v29 = v26;
            v20 = currentBundleIdentifier4;
          }

          else
          {
            v29 = *MEMORY[0x277D17A68];
          }

          objc_autoreleasePoolPop(v20);
          mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
          v41 = objc_alloc(MEMORY[0x277D17DF8]);
          currentBundleIdentifier3 = [(HMDAccessorySetupCoordinator *)v21 currentBundleIdentifier];
          if (currentBundleIdentifier3)
          {
            v56 = *MEMORY[0x277D17A28];
            currentBundleIdentifier4 = [(HMDAccessorySetupCoordinator *)v21 currentBundleIdentifier];
            v57 = currentBundleIdentifier4;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          }

          else
          {
            v43 = MEMORY[0x277CBEC10];
          }

          v44 = [v41 initWithTag:v29 data:v43];
          metricsActivity3 = [(HMDAccessorySetupCoordinator *)v21 metricsActivity];
          tagProcessorList = [metricsActivity3 tagProcessorList];
          [mEMORY[0x277D17DE8] submitTaggedEvent:v44 processorList:tagProcessorList];

          if (currentBundleIdentifier3)
          {
          }
        }
      }

      v47 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v50;
        v60 = 2112;
        v61 = v8;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Opening pairing window with PIN on CHIP accessory server: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v47);
      +[HMDHAPAccessory chipPairingModeActiveDuration];
      v52 = v51;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __68__HMDAccessorySetupCoordinator_handleCreateCHIPSetupPayloadMessage___block_invoke;
      v54[3] = &unk_278688540;
      v54[4] = selfCopy2;
      v55 = messageCopy;
      [v8 openPairingWindowWithPINForDuration:v54 completionHandler:v52];
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v38;
        v60 = 2112;
        v61 = v6;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Could not find CHIP accessory server with identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v39];

      v8 = 0;
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      *buf = 138543618;
      v59 = v33;
      v60 = 2112;
      v61 = messagePayload;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not find CHIP accessory pairing identifier in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v8];
  }
}

void __68__HMDAccessorySetupCoordinator_handleCreateCHIPSetupPayloadMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v13 = *MEMORY[0x277CCEE38];
    v14 = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [*(a1 + 40) respondWithPayload:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to open pairing window with PIN: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v12 respondWithError:v7];
  }
}

- (void)handleCancelStagingMessage:(id)message
{
  v41 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy uuidForKey:*MEMORY[0x277CCEE50]];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v37 = 138543618;
      v38 = v11;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling cancel staging message with staging request UUID: %@", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
    v13 = [stagingRequestsByUUID objectForKeyedSubscript:v6];

    if (v13)
    {
      error = [v13 error];

      if (error)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = selfCopy;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          error2 = [v13 error];
          v37 = 138543618;
          v38 = v18;
          v39 = 2112;
          v40 = error2;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Responding to cancel staging message with success in presence of queued pairing error: %@", &v37, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        stagingRequestsByUUID2 = [(HMDAccessorySetupCoordinator *)v16 stagingRequestsByUUID];
        [stagingRequestsByUUID2 setObject:0 forKeyedSubscript:v6];

        [messageCopy respondWithSuccess];
      }

      else
      {
        cancelHandler = [v13 cancelHandler];

        if (cancelHandler)
        {
          stagingRequestsByUUID3 = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
          [stagingRequestsByUUID3 setObject:0 forKeyedSubscript:v6];

          cancelHandler2 = [v13 cancelHandler];
          cancelHandler2[2]();

          [messageCopy respondWithSuccess];
          pendingRequestMessage = [v13 pendingRequestMessage];
          v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          [pendingRequestMessage respondWithError:v32];

          [v13 setPendingRequestMessage:0];
        }

        else
        {
          v33 = objc_autoreleasePoolPush();
          v34 = selfCopy;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            v37 = 138543618;
            v38 = v36;
            v39 = 2112;
            v40 = v6;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Staging request UUID: %@ is not ready to cancel yet", &v37, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
          [v13 setPendingCancelMessage:messageCopy];
        }
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v37 = 138543618;
        v38 = v26;
        v39 = 2112;
        v40 = v6;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request for cancel staging message with staging request UUID: %@", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v27];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      v37 = 138543618;
      v38 = v21;
      v39 = 2112;
      v40 = messagePayload;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in cancel staging message payload: %@", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v13];
  }
}

- (void)handleSelectWiFiNetworkAssociationMessage:(id)message
{
  v48 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy uuidForKey:*MEMORY[0x277CCEE50]];
  if (v6)
  {
    v7 = *MEMORY[0x277CCEE68];
    v43 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v9 = [messageCopy unarchivedObjectForKey:v7 ofClasses:v8];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v13;
      v46 = 2112;
      v47 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling select wifi network message for request UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
    v15 = [stagingRequestsByUUID objectForKeyedSubscript:v6];

    if (!v15)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v32;
        v46 = 2112;
        v47 = v6;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request for select wifi network message with staging request UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v33 = MEMORY[0x277CCA9B8];
      v34 = 2;
      goto LABEL_23;
    }

    error = [v15 error];

    if (error)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        error2 = [v15 error];
        *buf = 138543618;
        v45 = v20;
        v46 = 2112;
        v47 = error2;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Responding to select wifi network message with queued pairing error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      error3 = [v15 error];
      [messageCopy respondWithError:error3];

      stagingRequestsByUUID2 = [(HMDAccessorySetupCoordinator *)v18 stagingRequestsByUUID];
      [stagingRequestsByUUID2 setObject:0 forKeyedSubscript:v6];
      goto LABEL_24;
    }

    selectWiFiNetworkHandler = [v15 selectWiFiNetworkHandler];

    if (selectWiFiNetworkHandler)
    {
      pendingRequestMessage = [v15 pendingRequestMessage];

      if (!pendingRequestMessage)
      {
        selectWiFiNetworkHandler2 = [v15 selectWiFiNetworkHandler];
        (selectWiFiNetworkHandler2)[2](selectWiFiNetworkHandler2, v9);

        [v15 setSelectWiFiNetworkHandler:0];
        [v15 setPendingRequestMessage:messageCopy];
        goto LABEL_25;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v40;
      v46 = 2112;
      v47 = v6;
      v41 = "%{public}@A pending request message already exists for staging request UUID: %@";
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        objc_autoreleasePoolPop(v37);
        v33 = MEMORY[0x277CCA9B8];
        v34 = 52;
LABEL_23:
        stagingRequestsByUUID2 = [v33 hmErrorWithCode:v34];
        [messageCopy respondWithError:stagingRequestsByUUID2];
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v40;
      v46 = 2112;
      v47 = v6;
      v41 = "%{public}@No pending select wifi network completion handler exists for staging request UUID: %@";
    }

    _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, v41, buf, 0x16u);

    goto LABEL_22;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v45 = v27;
    v46 = 2112;
    v47 = messagePayload;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in select-wifi-network message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v9];
LABEL_26:
}

- (void)handleSelectThreadNetworkAssociationMessage:(id)message
{
  v48 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy uuidForKey:*MEMORY[0x277CCEE50]];
  if (v6)
  {
    v7 = *MEMORY[0x277CCEE58];
    v43 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v9 = [messageCopy unarchivedObjectForKey:v7 ofClasses:v8];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v13;
      v46 = 2112;
      v47 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling select Thread network message for request UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
    v15 = [stagingRequestsByUUID objectForKeyedSubscript:v6];

    if (!v15)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v32;
        v46 = 2112;
        v47 = v6;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request for select Thread network message with staging request UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v33 = MEMORY[0x277CCA9B8];
      v34 = 2;
      goto LABEL_23;
    }

    error = [v15 error];

    if (error)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        error2 = [v15 error];
        *buf = 138543618;
        v45 = v20;
        v46 = 2112;
        v47 = error2;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Responding to select Thread network message with queued pairing error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      error3 = [v15 error];
      [messageCopy respondWithError:error3];

      stagingRequestsByUUID2 = [(HMDAccessorySetupCoordinator *)v18 stagingRequestsByUUID];
      [stagingRequestsByUUID2 setObject:0 forKeyedSubscript:v6];
      goto LABEL_24;
    }

    selectThreadNetworkHandler = [v15 selectThreadNetworkHandler];

    if (selectThreadNetworkHandler)
    {
      pendingRequestMessage = [v15 pendingRequestMessage];

      if (!pendingRequestMessage)
      {
        selectThreadNetworkHandler2 = [v15 selectThreadNetworkHandler];
        (selectThreadNetworkHandler2)[2](selectThreadNetworkHandler2, v9);

        [v15 setSelectThreadNetworkHandler:0];
        [v15 setPendingRequestMessage:messageCopy];
        goto LABEL_25;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v40;
      v46 = 2112;
      v47 = v6;
      v41 = "%{public}@A pending request message already exists for staging request UUID: %@";
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        objc_autoreleasePoolPop(v37);
        v33 = MEMORY[0x277CCA9B8];
        v34 = 52;
LABEL_23:
        stagingRequestsByUUID2 = [v33 hmErrorWithCode:v34];
        [messageCopy respondWithError:stagingRequestsByUUID2];
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v40;
      v46 = 2112;
      v47 = v6;
      v41 = "%{public}@No pending select Thread network completion handler exists for staging request UUID: %@";
    }

    _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, v41, buf, 0x16u);

    goto LABEL_22;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v45 = v27;
    v46 = 2112;
    v47 = messagePayload;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in select-thread-network message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v9];
LABEL_26:
}

- (void)handleRejectDeviceCredentialMessage:(id)message
{
  v47 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy uuidForKey:*MEMORY[0x277CCEE50]];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v43 = 138543618;
      v44 = v11;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling reject device credential message with staging request UUID: %@", &v43, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
    v13 = [stagingRequestsByUUID objectForKeyedSubscript:v6];

    if (v13)
    {
      error = [v13 error];

      if (error)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = selfCopy;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          error2 = [v13 error];
          v43 = 138543618;
          v44 = v18;
          v45 = 2112;
          v46 = error2;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Responding to reject device credential message with queued pairing error: %@", &v43, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        error3 = [v13 error];
        [messageCopy respondWithError:error3];

        stagingRequestsByUUID2 = [(HMDAccessorySetupCoordinator *)v16 stagingRequestsByUUID];
        [stagingRequestsByUUID2 setObject:0 forKeyedSubscript:v6];
        goto LABEL_23;
      }

      confirmDeviceCredentialCompletionHandler = [v13 confirmDeviceCredentialCompletionHandler];

      if (!confirmDeviceCredentialCompletionHandler)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          v43 = 138543618;
          v44 = v34;
          v45 = 2112;
          v46 = v6;
          v35 = "%{public}@No pending reject device credential completion handler exists for staging request UUID: %@";
          goto LABEL_21;
        }

LABEL_22:

        objc_autoreleasePoolPop(v31);
        stagingRequestsByUUID2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        [messageCopy respondWithError:stagingRequestsByUUID2];
LABEL_23:

        goto LABEL_24;
      }

      pendingRequestMessage = [v13 pendingRequestMessage];

      if (pendingRequestMessage)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          v43 = 138543618;
          v44 = v34;
          v45 = 2112;
          v46 = v6;
          v35 = "%{public}@A pending reject device credential message already exists for staging request UUID: %@";
LABEL_21:
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, v35, &v43, 0x16u);

          goto LABEL_22;
        }

        goto LABEL_22;
      }

      confirmDeviceCredentialCompletionHandler2 = [v13 confirmDeviceCredentialCompletionHandler];
      v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (confirmDeviceCredentialCompletionHandler2)[2](confirmDeviceCredentialCompletionHandler2, v37);

      [v13 setConfirmDeviceCredentialCompletionHandler:0];
      pendingResponsePayloads = [v13 pendingResponsePayloads];
      v39 = [pendingResponsePayloads count];

      if (v39)
      {
        pendingResponsePayloads2 = [v13 pendingResponsePayloads];
        v41 = [pendingResponsePayloads2 objectAtIndexedSubscript:0];

        pendingResponsePayloads3 = [v13 pendingResponsePayloads];
        [pendingResponsePayloads3 removeObjectAtIndex:0];

        [messageCopy respondWithPayload:v41];
      }

      else
      {
        [v13 setPendingRequestMessage:messageCopy];
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v43 = 138543618;
        v44 = v27;
        v45 = 2112;
        v46 = v6;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request for reject device credential message with staging request UUID: %@", &v43, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v28];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      v43 = 138543618;
      v44 = v22;
      v45 = 2112;
      v46 = messagePayload;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in reject device credential message payload: %@", &v43, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v13];
  }

LABEL_24:
}

- (void)handleConfirmDeviceCredentialMessage:(id)message
{
  v44 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy uuidForKey:*MEMORY[0x277CCEE50]];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v40 = 138543618;
      v41 = v11;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling confirm device credential message with staging request UUID: %@", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)selfCopy stagingRequestsByUUID];
    v13 = [stagingRequestsByUUID objectForKeyedSubscript:v6];

    if (v13)
    {
      error = [v13 error];

      if (error)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = selfCopy;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          error2 = [v13 error];
          v40 = 138543618;
          v41 = v18;
          v42 = 2112;
          v43 = error2;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Responding to confirm device credential message with queued pairing error: %@", &v40, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        error3 = [v13 error];
        [messageCopy respondWithError:error3];

        stagingRequestsByUUID2 = [(HMDAccessorySetupCoordinator *)v16 stagingRequestsByUUID];
        [stagingRequestsByUUID2 setObject:0 forKeyedSubscript:v6];
LABEL_9:

        goto LABEL_16;
      }

      confirmDeviceCredentialCompletionHandler = [v13 confirmDeviceCredentialCompletionHandler];

      if (!confirmDeviceCredentialCompletionHandler)
      {
        v36 = objc_autoreleasePoolPush();
        v37 = selfCopy;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          v40 = 138543618;
          v41 = v39;
          v42 = 2112;
          v43 = v6;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@No pending confirm device credential completion handler exists for staging request UUID: %@", &v40, 0x16u);
        }

        objc_autoreleasePoolPop(v36);
        stagingRequestsByUUID2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        [messageCopy respondWithError:stagingRequestsByUUID2];
        goto LABEL_9;
      }

      confirmDeviceCredentialCompletionHandler2 = [v13 confirmDeviceCredentialCompletionHandler];
      confirmDeviceCredentialCompletionHandler2[2](confirmDeviceCredentialCompletionHandler2, 0);

      [v13 setConfirmDeviceCredentialCompletionHandler:0];
      pendingResponsePayloads = [v13 pendingResponsePayloads];
      v32 = [pendingResponsePayloads count];

      if (v32)
      {
        pendingResponsePayloads2 = [v13 pendingResponsePayloads];
        v34 = [pendingResponsePayloads2 objectAtIndexedSubscript:0];

        pendingResponsePayloads3 = [v13 pendingResponsePayloads];
        [pendingResponsePayloads3 removeObjectAtIndex:0];

        [messageCopy respondWithPayload:v34];
      }

      else
      {
        [v13 setPendingRequestMessage:messageCopy];
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v40 = 138543618;
        v41 = v27;
        v42 = 2112;
        v43 = v6;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request for confirm device credential message with staging request UUID: %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v28];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      v40 = 138543618;
      v41 = v22;
      v42 = 2112;
      v43 = messagePayload;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find staging request in confirm device credential message payload: %@", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v13];
  }

LABEL_16:
}

- (void)handleStageCHIPAccessoryPairingInStepsMessage:(id)message
{
  v149[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessorySetupCoordinator *)self startMetricsForThirdPartyPairing];
  metricsActivity = [(HMDAccessorySetupCoordinator *)self metricsActivity];
  v7 = *MEMORY[0x277CCEE28];
  v149[0] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:1];
  v9 = [messageCopy unarchivedObjectForKey:v7 ofClasses:v8];

  if (v9)
  {
    v89 = [messageCopy BOOLForKey:*MEMORY[0x277CCEE48]];
    categoryNumber = [v9 categoryNumber];

    if (categoryNumber)
    {
      categoryNumber2 = [v9 categoryNumber];
    }

    else
    {
      categoryNumber2 = &unk_283E74780;
    }

    productNumber = [v9 productNumber];

    if (productNumber)
    {
      productNumber2 = [v9 productNumber];
    }

    else
    {
      productNumber2 = @"Unknown";
    }

    v101 = metricsActivity;
    v102 = productNumber2;
    v99 = messageCopy;
    v100 = categoryNumber2;
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    v25 = MEMORY[0x277D17A68];
    v26 = MEMORY[0x277D17A38];
    v27 = 0x277CCA000uLL;
    v28 = MEMORY[0x277D17A30];
    if (v24)
    {
      v87 = HMFGetLogIdentifier();
      v93 = *v25;
      v96 = *v26;
      v103 = v21;
      v85 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "communicationProtocol")}];
      v90 = *v28;
      v29 = *MEMORY[0x277D17A58];
      v30 = *MEMORY[0x277D17A28];
      currentBundleIdentifier = [(HMDAccessorySetupCoordinator *)selfCopy currentBundleIdentifier];
      v32 = *MEMORY[0x277D17A60];
      v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "requiresMatterCustomCommissioningFlow")}];
      *buf = 138546434;
      v124 = v87;
      v125 = 2114;
      v126 = v93;
      v27 = 0x277CCA000;
      v127 = 2112;
      v128 = @"Accessory Info";
      v129 = 2114;
      v130 = v96;
      v131 = 2112;
      v132 = v85;
      v133 = 2114;
      v134 = v90;
      v135 = 2112;
      v136 = v100;
      v137 = 2114;
      v94 = v30;
      v97 = v29;
      v138 = v29;
      v139 = 2112;
      v140 = v102;
      v141 = 2114;
      v142 = v30;
      v143 = 2112;
      v144 = currentBundleIdentifier;
      v145 = 2114;
      v91 = v32;
      v146 = v32;
      v147 = 2112;
      v148 = v33;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x84u);

      v21 = v103;
      v28 = MEMORY[0x277D17A30];
      v25 = MEMORY[0x277D17A68];

      v26 = MEMORY[0x277D17A38];
    }

    else
    {
      v91 = *MEMORY[0x277D17A60];
      v97 = *MEMORY[0x277D17A58];
      v94 = *MEMORY[0x277D17A28];
    }

    objc_autoreleasePoolPop(v21);
    mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
    v35 = objc_alloc(MEMORY[0x277D17DF8]);
    v36 = *v25;
    v37 = *v26;
    v38 = [*(v27 + 2992) numberWithInteger:{objc_msgSend(v9, "communicationProtocol")}];
    v104 = v9;
    v39 = *v28;
    currentBundleIdentifier2 = [(HMDAccessorySetupCoordinator *)selfCopy currentBundleIdentifier];
    v41 = [*(v27 + 2992) numberWithBool:{objc_msgSend(v104, "requiresMatterCustomCommissioningFlow")}];
    v83 = v94;
    v18 = v100;
    v80 = v37;
    v42 = HMDTaggedLoggingCreateDictionary();
    v95 = v36;
    v43 = [v35 initWithTag:v36 data:{v42, v80, v38, v39, v100, v97, v102, v83, currentBundleIdentifier2, v91, v41}];
    metricsActivity = v101;
    tagProcessorList = [v101 tagProcessorList];
    [mEMORY[0x277D17DE8] submitTaggedEvent:v43 processorList:tagProcessorList];

    v9 = v104;
    chipAccessorySetupPayload = [v104 chipAccessorySetupPayload];
    v98 = chipAccessorySetupPayload;
    if (chipAccessorySetupPayload)
    {
      chipSetupPayload = [chipAccessorySetupPayload chipSetupPayload];
      v47 = objc_autoreleasePoolPush();
      v48 = selfCopy;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v86 = HMFGetLogIdentifier();
        v50 = *MEMORY[0x277D17A98];
        vendorID = [chipSetupPayload vendorID];
        v51 = *MEMORY[0x277D17A88];
        v88 = v47;
        v52 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(chipSetupPayload, "supportsSoftAP")}];
        v53 = *MEMORY[0x277D17A48];
        v54 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(chipSetupPayload, "hasShortDiscriminator")}];
        *buf = 138545410;
        v124 = v86;
        v125 = 2114;
        v55 = v95;
        v126 = v95;
        v127 = 2112;
        v128 = @"Accessory Info";
        v129 = 2114;
        v92 = v50;
        v130 = v50;
        v56 = v51;
        v131 = 2112;
        v132 = vendorID;
        v133 = 2114;
        v134 = v51;
        v135 = 2112;
        v136 = v52;
        v137 = 2114;
        v138 = v53;
        v139 = 2112;
        v140 = v54;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);

        v47 = v88;
      }

      else
      {
        v92 = *MEMORY[0x277D17A98];
        v56 = *MEMORY[0x277D17A88];
        v53 = *MEMORY[0x277D17A48];
        v55 = v95;
      }

      objc_autoreleasePoolPop(v47);
      mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
      v62 = objc_alloc(MEMORY[0x277D17DF8]);
      vendorID2 = [chipSetupPayload vendorID];
      v64 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(chipSetupPayload, "supportsSoftAP")}];
      v65 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(chipSetupPayload, "hasShortDiscriminator")}];
      v81 = v56;
      v66 = HMDTaggedLoggingCreateDictionary();
      v67 = [v62 initWithTag:v55 data:{v66, v92, vendorID2, v81, v64, v53, v65}];
      tagProcessorList2 = [v101 tagProcessorList];
      [mEMORY[0x277D17DE8]2 submitTaggedEvent:v67 processorList:tagProcessorList2];

      v69 = objc_alloc_init(HMDAccessorySetupCoordinatorStagingRequest);
      array = [MEMORY[0x277CBEB18] array];
      [(HMDAccessorySetupCoordinatorStagingRequest *)v69 setPendingResponsePayloads:array];

      messageCopy = v99;
      [(HMDAccessorySetupCoordinatorStagingRequest *)v69 setPendingRequestMessage:v99];
      stagingRequestsByUUID = [(HMDAccessorySetupCoordinator *)v48 stagingRequestsByUUID];
      uUID = [(HMDAccessorySetupCoordinatorStagingRequest *)v69 UUID];
      [stagingRequestsByUUID setObject:v69 forKeyedSubscript:uUID];

      v73 = objc_autoreleasePoolPush();
      v74 = v48;
      v75 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = HMFGetLogIdentifier();
        uUID2 = [(HMDAccessorySetupCoordinatorStagingRequest *)v69 UUID];
        *buf = 138543874;
        v124 = v76;
        v125 = 2112;
        v126 = chipSetupPayload;
        v127 = 2112;
        v128 = uUID2;
        _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_INFO, "%{public}@Handling stage CHIP accessory pairing in steps message with setup payload: %@, request UUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v73);
      chipAccessoryServerBrowser = [(HMDAccessorySetupCoordinator *)v74 chipAccessoryServerBrowser];
      v120[0] = MEMORY[0x277D85DD0];
      v120[1] = 3221225472;
      v120[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke;
      v120[3] = &unk_278681E08;
      v120[4] = v74;
      v121 = v69;
      v122 = v101;
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_3;
      v117[3] = &unk_278681E30;
      v117[4] = v74;
      v118 = v121;
      v119 = v122;
      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_5;
      v114[3] = &unk_278681E58;
      v114[4] = v74;
      v115 = v118;
      v116 = v119;
      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_7;
      v112[3] = &unk_278681E80;
      v112[4] = v74;
      v113 = v115;
      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_9;
      v110[3] = &unk_278681EA8;
      v110[4] = v74;
      v111 = v113;
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_11;
      v108[3] = &unk_278681ED0;
      v108[4] = v74;
      v109 = v111;
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_13;
      v105[3] = &unk_278681EF8;
      v105[4] = v74;
      v106 = v109;
      v107 = v116;
      v79 = v109;
      LOBYTE(v82) = v89;
      metricsActivity = v101;
      [chipAccessoryServerBrowser stageAccessoryServerWithSetupPayload:chipSetupPayload fabricID:0 deviceCredentialHandler:v120 wifiScanResultsHandler:v117 threadScanResultsHandler:v114 readyToCancelHandler:v112 progressUpdateHandler:v110 commissioneeInfoHandler:v108 scanningNetworks:v82 completionHandler:v105];

      v9 = v104;
      v18 = v100;
    }

    else
    {
      v57 = objc_autoreleasePoolPush();
      v58 = selfCopy;
      v59 = HMFGetOSLogHandle();
      messageCopy = v99;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543618;
        v124 = v60;
        v125 = 2112;
        v126 = v104;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Could not find CHIP accessory setup payload on setup accessory payload: %@", buf, 0x16u);

        v9 = v104;
      }

      objc_autoreleasePoolPop(v57);
      chipSetupPayload = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v99 respondWithError:chipSetupPayload];
      HMMLogTagActivityWithError();
      [v101 invalidate];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      [messageCopy messagePayload];
      v17 = v16 = messageCopy;
      *buf = 138543618;
      v124 = v15;
      v125 = 2112;
      v126 = v17;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not find setup accessory payload in message payload: %@", buf, 0x16u);

      messageCopy = v16;
      v9 = 0;
    }

    objc_autoreleasePoolPop(v12);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v18];
    HMMLogTagActivityWithError();
    [metricsActivity invalidate];
  }
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_2;
  block[3] = &unk_278688978;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v5;
  v15 = v6;
  v13 = v8;
  v14 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_4;
  block[3] = &unk_278688978;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v5;
  v15 = v6;
  v13 = v8;
  v14 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_6;
  block[3] = &unk_278688978;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v5;
  v15 = v6;
  v13 = v8;
  v14 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_8;
  block[3] = &unk_278689F98;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v3;
  v8 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_10;
  block[3] = &unk_278685DF8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = a2;
  v7 = v5;
  dispatch_async(v4, block);
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_12;
  block[3] = &unk_27868A010;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_13(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessorySetupCoordinator_handleStageCHIPAccessoryPairingInStepsMessage___block_invoke_14;
  block[3] = &unk_278689550;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v13 = v6;
  v14 = v7;
  v15 = v9;
  v16 = *(a1 + 48);
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)handleCreateCHIPSetupAccessoryPayloadMessage:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v31 = v9;
    v32 = 2112;
    v33 = messagePayload;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling create CHIP setup accessory payload message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy URLForKey:*MEMORY[0x277CCEE40]];
  v12 = [messageCopy stringForKey:*MEMORY[0x277CCEE08]];
  v13 = v12;
  if (v11)
  {
    v27 = 0;
    v14 = &v27;
    v15 = [(HMDAccessorySetupCoordinator *)selfCopy createCHIPSetupAccessoryPayloadWithSetupPayloadURL:v11 error:&v27];
  }

  else
  {
    if (!v12)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        messagePayload2 = [messageCopy messagePayload];
        *buf = 138543618;
        v31 = v24;
        v32 = 2112;
        v33 = messagePayload2;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not find any setup information in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      goto LABEL_12;
    }

    v26 = 0;
    v14 = &v26;
    v15 = [(HMDAccessorySetupCoordinator *)selfCopy _createCHIPSetupAccessoryPayloadWithSetupPayloadDecimalStringRepresentation:v12 error:&v26];
  }

  v16 = v15;
  v17 = *v14;
  if (!v16)
  {
LABEL_12:
    [messageCopy respondWithError:v17];
    goto LABEL_13;
  }

  v28 = *MEMORY[0x277CCEE28];
  v18 = objc_msgSend_copy(v16);
  v19 = encodeRootObjectForIncomingXPCMessage(v18, 0);
  v29 = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [messageCopy respondWithPayload:v20];

LABEL_13:
}

- (void)stopMetricsForThirdPartyPairingWithError:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v8;
    v24 = 2112;
    v25 = errorCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Stop metrics for 3rd party pairing, error:%@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  metricsActivity = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
  isValid = [metricsActivity isValid];

  if (isValid)
  {
    if (errorCopy)
    {
      metricsActivity2 = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
      HMMLogTagActivityWithError();
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = *MEMORY[0x277D17A80];
        v22 = 138543874;
        v23 = v15;
        v24 = 2114;
        v25 = v16;
        v26 = 2112;
        v27 = @"Stop";
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@", &v22, 0x20u);
      }

      else
      {
        v16 = *MEMORY[0x277D17A80];
      }

      objc_autoreleasePoolPop(v12);
      metricsActivity2 = [MEMORY[0x277D17DE8] sharedInstance];
      v17 = objc_alloc(MEMORY[0x277D17DF8]);
      v18 = [v17 initWithTag:v16 data:MEMORY[0x277CBEC10]];
      metricsActivity3 = [(HMDAccessorySetupCoordinator *)v13 metricsActivity];
      tagProcessorList = [metricsActivity3 tagProcessorList];
      [metricsActivity2 submitTaggedEvent:v18 processorList:tagProcessorList];
    }

    metricsActivity4 = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
    [metricsActivity4 invalidate];
  }
}

- (void)startMetricsForThirdPartyPairing
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v23 = 138543362;
    v24 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Start metrics for 3rd party pairing", &v23, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  metricsActivity = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
  if (metricsActivity)
  {
    v8 = metricsActivity;
    metricsActivity2 = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
    isValid = [metricsActivity2 isValid];

    if (isValid)
    {
      metricsActivity3 = [(HMDAccessorySetupCoordinator *)selfCopy metricsActivity];
      [metricsActivity3 invalidate];
    }
  }

  v12 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"CHIP Third Party Pairing"];
  [(HMDAccessorySetupCoordinator *)selfCopy setMetricsActivity:v12];

  v13 = objc_autoreleasePoolPush();
  v14 = selfCopy;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = *MEMORY[0x277D17A78];
    v23 = 138543874;
    v24 = v16;
    v25 = 2114;
    v26 = v17;
    v27 = 2112;
    v28 = @"Start";
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@", &v23, 0x20u);
  }

  else
  {
    v17 = *MEMORY[0x277D17A78];
  }

  objc_autoreleasePoolPop(v13);
  mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
  v19 = objc_alloc(MEMORY[0x277D17DF8]);
  v20 = [v19 initWithTag:v17 data:MEMORY[0x277CBEC10]];
  metricsActivity4 = [(HMDAccessorySetupCoordinator *)v14 metricsActivity];
  tagProcessorList = [metricsActivity4 tagProcessorList];
  [mEMORY[0x277D17DE8] submitTaggedEvent:v20 processorList:tagProcessorList];
}

- (id)createSetupAccessoryPayloadWithCHIPSetupPayload:(id)payload error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if (!payloadCopy)
  {
    _HMFPreconditionFailure();
  }

  v7 = payloadCopy;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  payloadCHIPAccessorySetupPayloadFactory = [(HMDAccessorySetupCoordinator *)self payloadCHIPAccessorySetupPayloadFactory];
  v10 = (payloadCHIPAccessorySetupPayloadFactory)[2](payloadCHIPAccessorySetupPayloadFactory, v7);

  if (v10)
  {
    v11 = [(HMDAccessorySetupCoordinator *)self _setupPayloadWithCHIPSetupPayload:v10 setupPayloadURL:0];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to create CHIP accessory setup payload from setup payload %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)createCHIPSetupAccessoryPayloadWithSetupPayloadURL:(id)l error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    _HMFPreconditionFailure();
  }

  v7 = lCopy;
  workQueue = [(HMDAccessorySetupCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  absoluteString = [v7 absoluteString];
  stringByRemovingPercentEncoding = [absoluteString stringByRemovingPercentEncoding];

  urlStringCHIPAccessorySetupPayloadFactory = [(HMDAccessorySetupCoordinator *)self urlStringCHIPAccessorySetupPayloadFactory];
  v12 = (urlStringCHIPAccessorySetupPayloadFactory)[2](urlStringCHIPAccessorySetupPayloadFactory, stringByRemovingPercentEncoding);

  if (v12)
  {
    v13 = [(HMDAccessorySetupCoordinator *)self _setupPayloadWithCHIPSetupPayload:v12 setupPayloadURL:v7];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = stringByRemovingPercentEncoding;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to create CHIP accessory setup payload from setup payload URL string: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)configure
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  messageDispatcher = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v5 = *MEMORY[0x277CCEDF0];
  v39[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  [messageDispatcher registerForMessage:v5 receiver:self policies:v6 selector:sel_handleCreateCHIPSetupAccessoryPayloadMessage_];

  messageDispatcher2 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v8 = *MEMORY[0x277CCEE90];
  v38 = v3;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  [messageDispatcher2 registerForMessage:v8 receiver:self policies:v9 selector:sel_handleStageCHIPAccessoryPairingInStepsMessage_];

  messageDispatcher3 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v11 = *MEMORY[0x277CCEDE8];
  v37 = v3;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  [messageDispatcher3 registerForMessage:v11 receiver:self policies:v12 selector:sel_handleConfirmDeviceCredentialMessage_];

  messageDispatcher4 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v14 = *MEMORY[0x277CCEE78];
  v36 = v3;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  [messageDispatcher4 registerForMessage:v14 receiver:self policies:v15 selector:sel_handleRejectDeviceCredentialMessage_];

  messageDispatcher5 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v17 = *MEMORY[0x277CCEE80];
  v35 = v3;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  [messageDispatcher5 registerForMessage:v17 receiver:self policies:v18 selector:sel_handleSelectThreadNetworkAssociationMessage_];

  messageDispatcher6 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v20 = *MEMORY[0x277CCEE88];
  v34 = v3;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  [messageDispatcher6 registerForMessage:v20 receiver:self policies:v21 selector:sel_handleSelectWiFiNetworkAssociationMessage_];

  messageDispatcher7 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v23 = *MEMORY[0x277CCEDD8];
  v33 = v3;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  [messageDispatcher7 registerForMessage:v23 receiver:self policies:v24 selector:sel_handleCancelStagingMessage_];

  messageDispatcher8 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v26 = *MEMORY[0x277CCEDF8];
  v32 = v3;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  [messageDispatcher8 registerForMessage:v26 receiver:self policies:v27 selector:sel_handleCreateCHIPSetupPayloadMessage_];

  messageDispatcher9 = [(HMDAccessorySetupCoordinator *)self messageDispatcher];
  v29 = *MEMORY[0x277CCEDD0];
  v31 = v3;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  [messageDispatcher9 registerForMessage:v29 receiver:self policies:v30 selector:sel_handleCancelStagedCHIPAccessoryPairingMessage_];
}

- (HMDAccessorySetupCoordinator)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher chipAccessoryServerBrowser:(id)browser chipDataSource:(id)source
{
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  browserCopy = browser;
  sourceCopy = source;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dispatcherCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!browserCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = sourceCopy;
  if (!sourceCopy)
  {
LABEL_11:
    v25 = _HMFPreconditionFailure();
    return __110__HMDAccessorySetupCoordinator_initWithWorkQueue_messageDispatcher_chipAccessoryServerBrowser_chipDataSource___block_invoke_3(v25, v26);
  }

  v27.receiver = self;
  v27.super_class = HMDAccessorySetupCoordinator;
  v16 = [(HMDAccessorySetupCoordinator *)&v27 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_workQueue, queue);
    objc_storeStrong(&v17->_messageDispatcher, dispatcher);
    objc_storeStrong(&v17->_chipAccessoryServerBrowser, browser);
    objc_storeStrong(&v17->_chipDataSource, source);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    stagingRequestsByUUID = v17->_stagingRequestsByUUID;
    v17->_stagingRequestsByUUID = dictionary;

    currentBundleIdentifier = v17->_currentBundleIdentifier;
    v17->_currentBundleIdentifier = 0;

    urlStringCHIPAccessorySetupPayloadFactory = v17->_urlStringCHIPAccessorySetupPayloadFactory;
    v17->_urlStringCHIPAccessorySetupPayloadFactory = &__block_literal_global_225895;

    decimalStringRepresentationCHIPAccessorySetupPayloadFactory = v17->_decimalStringRepresentationCHIPAccessorySetupPayloadFactory;
    v17->_decimalStringRepresentationCHIPAccessorySetupPayloadFactory = &__block_literal_global_70_225896;

    payloadCHIPAccessorySetupPayloadFactory = v17->_payloadCHIPAccessorySetupPayloadFactory;
    v17->_payloadCHIPAccessorySetupPayloadFactory = &__block_literal_global_73_225897;
  }

  return v17;
}

id __110__HMDAccessorySetupCoordinator_initWithWorkQueue_messageDispatcher_chipAccessoryServerBrowser_chipDataSource___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D17AD8];
  v3 = a2;
  v4 = [[v2 alloc] initWithCHIPSetupPayload:v3];

  return v4;
}

id __110__HMDAccessorySetupCoordinator_initWithWorkQueue_messageDispatcher_chipAccessoryServerBrowser_chipDataSource___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D17AD8];
  v3 = a2;
  v4 = [[v2 alloc] initWithSetupCodeString:v3];

  return v4;
}

id __110__HMDAccessorySetupCoordinator_initWithWorkQueue_messageDispatcher_chipAccessoryServerBrowser_chipDataSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D17AD8];
  v3 = a2;
  v4 = [[v2 alloc] initWithSetupPayloadString:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t76 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t76, &__block_literal_global_186_225916);
  }

  v3 = logCategory__hmf_once_v77;

  return v3;
}

void __43__HMDAccessorySetupCoordinator_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v77;
  logCategory__hmf_once_v77 = v0;
}

@end