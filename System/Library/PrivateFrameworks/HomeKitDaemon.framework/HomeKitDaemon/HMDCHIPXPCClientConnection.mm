@interface HMDCHIPXPCClientConnection
+ (id)logCategory;
- (BOOL)allowsOperation;
- (HMDCHIPXPCClientConnection)initWithRemoteObjectProxy:(id)proxy homeManager:(id)manager pid:(int)pid processInfo:(id)info backgroundModeEntitled:(BOOL)entitled workQueue:(id)queue;
- (HMDHomeManager)homeManager;
- (void)_getDeviceControllerWithFabricId:(unint64_t)id accessories:(id)accessories home:(id)home remainingHomes:(id)homes completion:(id)completion;
- (void)_registerReportHandlerWithHomeWithUUID:(id)d;
- (void)deregisterReportHandlers;
- (void)downloadLogWithController:(id)controller nodeId:(id)id type:(int64_t)type timeout:(double)timeout completion:(id)completion;
- (void)getAnyDeviceControllerWithCompletion:(id)completion;
- (void)invokeCommandWithController:(id)controller nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId commandId:(id)commandId fields:(id)fields timedInvokeTimeout:(id)timeout completion:(id)self0;
- (void)readAttributeCacheWithController:(id)controller nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)attributeId completion:(id)completion;
- (void)readAttributeWithController:(id)controller nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)attributeId params:(id)params completion:(id)completion;
- (void)stopReportsWithController:(id)controller nodeId:(unint64_t)id completion:(id)completion;
- (void)subscribeAttributeWithController:(id)controller nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)attributeId minInterval:(id)interval maxInterval:(id)maxInterval params:(id)self0 establishedHandler:(id)self1;
- (void)subscribeWithController:(id)controller nodeId:(unint64_t)id minInterval:(id)interval maxInterval:(id)maxInterval params:(id)params shouldCache:(BOOL)cache completion:(id)completion;
- (void)writeAttributeWithController:(id)controller nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)attributeId value:(id)value timedWriteTimeout:(id)timeout completion:(id)self0;
@end

@implementation HMDCHIPXPCClientConnection

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)downloadLogWithController:(id)controller nodeId:(id)id type:(int64_t)type timeout:(double)timeout completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  idCopy = id;
  completionCopy = completion;
  workQueue = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
    v39 = 138544386;
    v40 = v19;
    v41 = 2112;
    v42 = controllerCopy;
    v43 = 2112;
    v44 = idCopy;
    v45 = 2112;
    v46 = v20;
    v47 = 2112;
    v48 = v21;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Download log via controller %@, nodeId %@, logType %@, timeout %@", &v39, 0x34u);
  }

  objc_autoreleasePoolPop(v16);
  v22 = controllerCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  if (v24)
  {
    v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v24];
    if (v25 && (-[HMDCHIPXPCClientConnection homeManager](selfCopy, "homeManager"), v26 = objc_claimAutoreleasedReturnValue(), [v26 _homeWithUUID:v25], v27 = objc_claimAutoreleasedReturnValue(), v26, v27))
    {
      [v27 downloadLogWithController:v22 nodeId:idCopy type:type timeout:completionCopy completion:timeout];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v39 = 138543618;
        v40 = v31;
        v41 = 2112;
        v42 = v25;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Could not send remote message using invalid home UUID: %@", &v39, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v27 = _Block_copy(completionCopy);
      if (v27)
      {
        v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        (v27)[2](v27, 0, v32);
      }
    }

    goto LABEL_18;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = selfCopy;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    v37 = objc_opt_class();
    v39 = 138543874;
    v40 = v36;
    v41 = 2112;
    v42 = v22;
    v43 = 2112;
    v44 = v37;
    v38 = v37;
    _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Download log called with controller of unexpected class: %@ (%@)", &v39, 0x20u);
  }

  objc_autoreleasePoolPop(v33);
  v25 = _Block_copy(completionCopy);
  if (v25)
  {
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(v25 + 2))(v25, 0, v27);
LABEL_18:
  }
}

- (void)readAttributeCacheWithController:(id)controller nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)attributeId completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  endpointIdCopy = endpointId;
  clusterIdCopy = clusterId;
  attributeIdCopy = attributeId;
  completionCopy = completion;
  workQueue = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v25 = 138543874;
    v26 = v23;
    v27 = 2112;
    v28 = controllerCopy;
    v29 = 2048;
    idCopy = id;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Not reading attribute cache with controller: %@, nodeID: 0x%llx: Unsupported", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  completionCopy[2](completionCopy, 0, v24);
}

- (void)subscribeWithController:(id)controller nodeId:(unint64_t)id minInterval:(id)interval maxInterval:(id)maxInterval params:(id)params shouldCache:(BOOL)cache completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  intervalCopy = interval;
  maxIntervalCopy = maxInterval;
  paramsCopy = params;
  completionCopy = completion;
  workQueue = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v25 = 138543874;
    v26 = v23;
    v27 = 2112;
    v28 = controllerCopy;
    v29 = 2048;
    idCopy = id;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Not subscribing with controller: %@, nodeID: 0x%llx: Unsupported", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  completionCopy[2](completionCopy, v24);
}

- (void)stopReportsWithController:(id)controller nodeId:(unint64_t)id completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  workQueue = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v14;
    v17 = 2112;
    v18 = controllerCopy;
    v19 = 2048;
    idCopy = id;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Stop reports with controller %@, nodeId 0x%llx", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  completionCopy[2](completionCopy);
}

- (void)subscribeAttributeWithController:(id)controller nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)attributeId minInterval:(id)interval maxInterval:(id)maxInterval params:(id)self0 establishedHandler:(id)self1
{
  v54 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  endpointIdCopy = endpointId;
  clusterIdCopy = clusterId;
  attributeIdCopy = attributeId;
  intervalCopy = interval;
  maxIntervalCopy = maxInterval;
  paramsCopy = params;
  handlerCopy = handler;
  workQueue = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138545410;
    v37 = v26;
    v38 = 2112;
    v39 = controllerCopy;
    v40 = 2048;
    idCopy = id;
    v42 = 2112;
    v43 = endpointIdCopy;
    v44 = 2112;
    v45 = clusterIdCopy;
    v46 = 2112;
    v47 = attributeIdCopy;
    v48 = 2112;
    v49 = intervalCopy;
    v50 = 2112;
    v51 = maxIntervalCopy;
    v52 = 2112;
    v53 = paramsCopy;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Subscribing attribute via controller %@, nodeId 0x%llx, endpointId %@, clusterId %@, attributeId %@ minInterval %@, maxInterval %@, params %@", buf, 0x5Cu);
  }

  objc_autoreleasePoolPop(v23);
  v27 = objc_autoreleasePoolPush();
  v28 = selfCopy;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v30;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Subscribing attribute is not supported yet", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
  remoteObjectProxy = [(HMDCHIPXPCClientConnection *)v28 remoteObjectProxy];
  v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  [remoteObjectProxy handleReportWithController:controllerCopy nodeId:id values:0 error:v32];
}

- (void)invokeCommandWithController:(id)controller nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId commandId:(id)commandId fields:(id)fields timedInvokeTimeout:(id)timeout completion:(id)self0
{
  v82 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  endpointIdCopy = endpointId;
  clusterIdCopy = clusterId;
  v19 = endpointIdCopy;
  v65 = clusterIdCopy;
  commandIdCopy = commandId;
  fieldsCopy = fields;
  timeoutCopy = timeout;
  completionCopy = completion;
  workQueue = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v24 = objc_autoreleasePoolPush();
  selfCopy = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138545154;
    v67 = v27;
    v68 = 2112;
    v69 = controllerCopy;
    v70 = 2048;
    idCopy = id;
    v72 = 2112;
    v73 = v19;
    v74 = 2112;
    v75 = v65;
    v76 = 2112;
    v77 = commandIdCopy;
    v78 = 2112;
    v79 = fieldsCopy;
    v80 = 2112;
    v81 = timeoutCopy;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Invoking command via controller %@, nodeId 0x%llx, endpointId %@, clusterId %@, commandId %@, fields %@, timedInvokeTimeout %@", buf, 0x52u);
  }

  objc_autoreleasePoolPop(v24);
  if ([(HMDCHIPXPCClientConnection *)selfCopy allowsOperation])
  {
    v28 = controllerCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    if (!v30)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = selfCopy;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v43 = v62 = v19;
        v44 = objc_opt_class();
        *buf = 138543874;
        v67 = v43;
        v68 = 2112;
        v69 = v28;
        v70 = 2112;
        idCopy = v44;
        v45 = v44;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@CHIP invoke command called with controller of unexpected class: %@ (%@)", buf, 0x20u);

        v19 = v62;
      }

      objc_autoreleasePoolPop(v40);
      v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      completionCopy[2](completionCopy, 0, v31);
      goto LABEL_38;
    }

    v31 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v30];
    if (v31)
    {
      if (v19 && v65 && commandIdCopy && fieldsCopy)
      {
        v61 = v19;
        homeManager = [(HMDCHIPXPCClientConnection *)selfCopy homeManager];
        v33 = [homeManager _homeWithUUID:v31];

        if (v33)
        {
          processInfo = [(HMDCHIPXPCClientConnection *)selfCopy processInfo];
          mainBundle = [processInfo mainBundle];
          bundlePath = [mainBundle bundlePath];
          if (HMDIsSiriClientIdentifier(bundlePath))
          {
            v35 = 1;
          }

          else if ([bundlePath isEqualToString:@"BackgroundShortcutRunner"])
          {
            v35 = 10;
          }

          else if (HMDIsFirstPartyClientIdentifier(bundlePath))
          {
            v35 = 5;
          }

          else
          {
            v35 = 6;
          }

          v58 = v35;
          v19 = v61;
          [v33 invokeCommandWithNodeId:id endpointId:v61 clusterId:v65 commandId:commandIdCopy fields:fieldsCopy timedInvokeTimeout:timeoutCopy source:v58 completion:completionCopy];
        }

        else
        {
          v53 = objc_autoreleasePoolPush();
          v54 = selfCopy;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v56 = HMFGetLogIdentifier();
            *buf = 138543618;
            v67 = v56;
            v68 = 2112;
            v69 = v31;
            _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Could not send remote message using unknown home UUID: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v53);
          v57 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          completionCopy[2](completionCopy, 0, v57);

          v33 = 0;
          v19 = v61;
        }

        goto LABEL_37;
      }

      v46 = objc_autoreleasePoolPush();
      v47 = selfCopy;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v49 = v63 = v19;
        *buf = 138543362;
        v67 = v49;
        v50 = "%{public}@CHIP invoke command called with invalid nil parameter";
        v51 = v48;
        v52 = 12;
        goto LABEL_26;
      }
    }

    else
    {
      v46 = objc_autoreleasePoolPush();
      v47 = selfCopy;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v49 = v63 = v19;
        *buf = 138543618;
        v67 = v49;
        v68 = 2112;
        v69 = v30;
        v50 = "%{public}@CHIP invoke command called with invalid home UUID string: %@";
        v51 = v48;
        v52 = 22;
LABEL_26:
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, v50, buf, v52);

        v19 = v63;
      }
    }

    objc_autoreleasePoolPop(v46);
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    completionCopy[2](completionCopy, 0, v33);
LABEL_37:

LABEL_38:
    goto LABEL_39;
  }

  v36 = objc_autoreleasePoolPush();
  v37 = selfCopy;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543362;
    v67 = v39;
    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Invoke-command operation by backgrounded client not allowed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v36);
  v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
  completionCopy[2](completionCopy, 0, v30);
LABEL_39:
}

- (void)writeAttributeWithController:(id)controller nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)attributeId value:(id)value timedWriteTimeout:(id)timeout completion:(id)self0
{
  v77 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  endpointIdCopy = endpointId;
  clusterIdCopy = clusterId;
  v19 = endpointIdCopy;
  v60 = clusterIdCopy;
  attributeIdCopy = attributeId;
  valueCopy = value;
  timeoutCopy = timeout;
  completionCopy = completion;
  workQueue = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v24 = objc_autoreleasePoolPush();
  selfCopy = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138545154;
    v62 = v27;
    v63 = 2112;
    v64 = controllerCopy;
    v65 = 2048;
    idCopy = id;
    v67 = 2112;
    v68 = v19;
    v69 = 2112;
    v70 = v60;
    v71 = 2112;
    v72 = attributeIdCopy;
    v73 = 2112;
    v74 = valueCopy;
    v75 = 2112;
    v76 = timeoutCopy;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Writing attribute via controller %@, nodeId 0x%llx, endpointId %@, clusterId %@, attributeId %@, value %@, timedWriteTimeout %@", buf, 0x52u);
  }

  objc_autoreleasePoolPop(v24);
  if ([(HMDCHIPXPCClientConnection *)selfCopy allowsOperation])
  {
    v28 = controllerCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    if (!v30)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = selfCopy;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v41 = v57 = v38;
        v42 = objc_opt_class();
        *buf = 138543874;
        v62 = v41;
        v63 = 2112;
        v64 = v28;
        v65 = 2112;
        idCopy = v42;
        v43 = v42;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@CHIP write attribute called with controller of unexpected class: %@ (%@)", buf, 0x20u);

        v38 = v57;
      }

      objc_autoreleasePoolPop(v38);
      v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      completionCopy[2](completionCopy, 0, v31);
      goto LABEL_28;
    }

    v31 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v30];
    if (v31)
    {
      if (v19 && v60 && attributeIdCopy && valueCopy)
      {
        v56 = v19;
        homeManager = [(HMDCHIPXPCClientConnection *)selfCopy homeManager];
        v33 = [homeManager _homeWithUUID:v31];

        if (v33)
        {
          v19 = v56;
          [v33 writeAttributeWithNodeId:id endpointId:v56 clusterId:v60 attributeId:attributeIdCopy value:valueCopy timedWriteTimeout:timeoutCopy completion:completionCopy];
        }

        else
        {
          v51 = objc_autoreleasePoolPush();
          v52 = selfCopy;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = HMFGetLogIdentifier();
            *buf = 138543618;
            v62 = v54;
            v63 = 2112;
            v64 = v31;
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Could not send remote message using unknown home UUID: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v51);
          v55 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          completionCopy[2](completionCopy, 0, v55);

          v33 = 0;
          v19 = v56;
        }

        goto LABEL_27;
      }

      v44 = objc_autoreleasePoolPush();
      v45 = selfCopy;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v47 = v58 = v44;
        *buf = 138543362;
        v62 = v47;
        v48 = "%{public}@CHIP write attribute called with null values for nonnull parameter";
        v49 = v46;
        v50 = 12;
        goto LABEL_25;
      }
    }

    else
    {
      v44 = objc_autoreleasePoolPush();
      v45 = selfCopy;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v47 = v58 = v44;
        *buf = 138543618;
        v62 = v47;
        v63 = 2112;
        v64 = v30;
        v48 = "%{public}@CHIP write attribute called with invalid home UUID string: %@";
        v49 = v46;
        v50 = 22;
LABEL_25:
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, v48, buf, v50);

        v44 = v58;
      }
    }

    objc_autoreleasePoolPop(v44);
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    completionCopy[2](completionCopy, 0, v33);
LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  v34 = objc_autoreleasePoolPush();
  v35 = selfCopy;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = HMFGetLogIdentifier();
    *buf = 138543362;
    v62 = v37;
    _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Write operation by backgrounded client not allowed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v34);
  v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
  completionCopy[2](completionCopy, 0, v30);
LABEL_29:
}

- (void)readAttributeWithController:(id)controller nodeId:(unint64_t)id endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)attributeId params:(id)params completion:(id)completion
{
  v75 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  endpointIdCopy = endpointId;
  clusterIdCopy = clusterId;
  v18 = endpointIdCopy;
  v19 = clusterIdCopy;
  attributeIdCopy = attributeId;
  v21 = v19;
  v60 = attributeIdCopy;
  paramsCopy = params;
  completionCopy = completion;
  workQueue = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v25 = objc_autoreleasePoolPush();
  selfCopy = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138544898;
    v62 = v28;
    v63 = 2112;
    v64 = controllerCopy;
    v65 = 2048;
    idCopy = id;
    v67 = 2112;
    v68 = v18;
    v69 = 2112;
    v70 = v21;
    v71 = 2112;
    v72 = v60;
    v73 = 2112;
    v74 = paramsCopy;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Reading attribute via controller %@, nodeId 0x%llx, endpointId %@, clusterId %@, attributeId %@, params %@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v25);
  if ([(HMDCHIPXPCClientConnection *)selfCopy allowsOperation])
  {
    v29 = controllerCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    if (v31)
    {
      v32 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v31];
      if (v32)
      {
        v57 = v21;
        v33 = v18;
        homeManager = [(HMDCHIPXPCClientConnection *)selfCopy homeManager];
        v35 = [homeManager _homeWithUUID:v32];

        if (v35)
        {
          v18 = v33;
          v36 = v33;
          v21 = v57;
          [v35 readAttributeWithNodeId:id endpointId:v36 clusterId:v57 attributeId:v60 params:paramsCopy completion:completionCopy];
        }

        else
        {
          v51 = objc_autoreleasePoolPush();
          v52 = selfCopy;
          v53 = HMFGetOSLogHandle();
          v18 = v33;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v55 = v54 = v51;
            *buf = 138543618;
            v62 = v55;
            v63 = 2112;
            v64 = v32;
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Could not send remote message using unknown home UUID: %@", buf, 0x16u);

            v51 = v54;
          }

          objc_autoreleasePoolPop(v51);
          v56 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          completionCopy[2](completionCopy, 0, v56);

          v35 = 0;
          v21 = v57;
        }
      }

      else
      {
        v47 = objc_autoreleasePoolPush();
        v48 = selfCopy;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v50 = v59 = v47;
          *buf = 138543618;
          v62 = v50;
          v63 = 2112;
          v64 = v31;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@CHIP Read attribute called with invalid home UUID string: %@", buf, 0x16u);

          v47 = v59;
        }

        objc_autoreleasePoolPop(v47);
        v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        completionCopy[2](completionCopy, 0, v35);
      }
    }

    else
    {
      v41 = objc_autoreleasePoolPush();
      v42 = selfCopy;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v44 = v58 = v41;
        v45 = objc_opt_class();
        *buf = 138543874;
        v62 = v44;
        v63 = 2112;
        v64 = v29;
        v65 = 2112;
        idCopy = v45;
        v46 = v45;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@CHIP Read attribute called with controller of unexpected class: %@ (%@)", buf, 0x20u);

        v41 = v58;
      }

      objc_autoreleasePoolPop(v41);
      v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      completionCopy[2](completionCopy, 0, v32);
    }
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    v38 = selfCopy;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v40;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Read operation by backgrounded client not allowed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v37);
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    completionCopy[2](completionCopy, 0, v31);
  }
}

- (void)getAnyDeviceControllerWithCompletion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v52 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Retrieving any shared remote controller", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  homeManager = [(HMDCHIPXPCClientConnection *)selfCopy homeManager];
  homes = [homeManager homes];

  v12 = [homes countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v41 = completionCopy;
    obj = homes;
    v40 = selfCopy;
    uuid = 0;
    v15 = 0;
    v16 = *v48;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        v18 = uuid;
        if (*v48 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        uuid = [v19 uuid];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        hapAccessories = [v19 hapAccessories];
        v21 = [hapAccessories countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v44;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v44 != v23)
              {
                objc_enumerationMutation(hapAccessories);
              }

              if ([*(*(&v43 + 1) + 8 * j) supportsCHIP])
              {
                uuid2 = [v19 uuid];

                v15 = uuid2;
                goto LABEL_18;
              }
            }

            v22 = [hapAccessories countByEnumeratingWithState:&v43 objects:v55 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v13 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v13);

    if (v15)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v40;
      v28 = HMFGetOSLogHandle();
      completionCopy = v41;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v29;
        v53 = 2112;
        v54 = v15;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Retrieved shared remote controller: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      uUIDString = [v15 UUIDString];
      (v41)[2](v41, uUIDString, 0);

      goto LABEL_32;
    }

    selfCopy = v40;
    completionCopy = v41;
    if (uuid)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = v40;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v38;
        v53 = 2112;
        v54 = uuid;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Retrieved shared remote controller with no paired CHIP accessory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      uUIDString2 = [uuid UUIDString];
      (v41)[2](v41, uUIDString2, 0);

      v15 = uuid;
      goto LABEL_32;
    }
  }

  else
  {
  }

  v31 = objc_autoreleasePoolPush();
  v32 = selfCopy;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543362;
    v52 = v34;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve any remote controller", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v31);
  v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  completionCopy[2](completionCopy, 0, v15);
LABEL_32:
}

- (BOOL)allowsOperation
{
  v17 = *MEMORY[0x277D85DE8];
  processInfo = [(HMDCHIPXPCClientConnection *)self processInfo];
  isForegrounded = [processInfo isForegrounded];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (isForegrounded)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Client foregrounded", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    return 1;
  }

  else
  {
    if (v8)
    {
      v11 = HMFGetLogIdentifier();
      [(HMDCHIPXPCClientConnection *)selfCopy backgroundModeEntitled];
      v12 = HMFBooleanToString();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Client is not foregrounded: entitlement %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    return [(HMDCHIPXPCClientConnection *)selfCopy backgroundModeEntitled];
  }
}

- (void)_getDeviceControllerWithFabricId:(unint64_t)id accessories:(id)accessories home:(id)home remainingHomes:(id)homes completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  homeCopy = home;
  homesCopy = homes;
  completionCopy = completion;
  while (1)
  {
    while ([accessoriesCopy count])
    {
      lastObject = [accessoriesCopy lastObject];
      [accessoriesCopy removeLastObject];
      if ([lastObject supportsCHIP])
      {
        v21 = objc_alloc(MEMORY[0x277D0F820]);
        uuid = [lastObject uuid];
        v23 = [v21 initWithTarget:uuid];

        v24 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CCEAB0] destination:v23 payload:0];
        v30 = MEMORY[0x277D85DD0];
        v31 = 3221225472;
        v32 = __106__HMDCHIPXPCClientConnection__getDeviceControllerWithFabricId_accessories_home_remainingHomes_completion___block_invoke;
        v33 = &unk_278681920;
        idCopy = id;
        selfCopy = self;
        v35 = homeCopy;
        v38 = completionCopy;
        v20 = accessoriesCopy;
        v36 = v20;
        v37 = homesCopy;
        v25 = homeCopy;
        [v24 setResponseHandler:&v30];
        [lastObject handleFetchCHIPPairingsMessage:{v24, v30, v31, v32, v33, selfCopy}];

        goto LABEL_9;
      }
    }

    if (![homesCopy count])
    {
      break;
    }

    lastObject2 = [homesCopy lastObject];

    v18 = MEMORY[0x277CBEB18];
    hapAccessories = [lastObject2 hapAccessories];
    v20 = [v18 arrayWithArray:hapAccessories];

    [homesCopy removeLastObject];
    homeCopy = lastObject2;
    accessoriesCopy = v20;
    if (!lastObject2)
    {
      goto LABEL_11;
    }
  }

  v20 = accessoriesCopy;
LABEL_11:
  v26 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v29;
    v42 = 2048;
    idCopy2 = id;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve remote controller with fabric Id %llu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  (*(completionCopy + 2))(completionCopy, 0, v25);
LABEL_9:
}

void __106__HMDCHIPXPCClientConnection__getDeviceControllerWithFabricId_accessories_home_remainingHomes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CCE830];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  v9 = [v6 hmf_unarchivedObjectForKey:v7 ofClasses:v8];

  if (v9)
  {
    v39 = v6;
    v40 = v5;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v9;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v44;
      v13 = 0x277CCA000;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v44 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v43 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = *(a1 + 32);
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v19 = v42 = v16;
            v20 = [v15 home];
            [v20 identifier];
            v21 = a1;
            v22 = v11;
            v24 = v23 = v12;
            *buf = 138543618;
            v48 = v19;
            v49 = 2112;
            v50 = v24;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Fetched CHIP pairing with fabric Id: %@", buf, 0x16u);

            v12 = v23;
            v11 = v22;
            a1 = v21;
            v13 = 0x277CCA000uLL;

            v16 = v42;
          }

          objc_autoreleasePoolPop(v16);
          v25 = [v15 home];
          v26 = [v25 identifier];
          v27 = [*(v13 + 2992) numberWithUnsignedLongLong:*(a1 + 72)];
          v28 = [v26 isEqualToNumber:v27];

          if (v28)
          {
            v29 = objc_autoreleasePoolPush();
            v30 = *(a1 + 32);
            v31 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = HMFGetLogIdentifier();
              v33 = *(a1 + 72);
              v34 = [*(a1 + 40) uuid];
              *buf = 138543874;
              v48 = v32;
              v49 = 2048;
              v50 = v33;
              v51 = 2112;
              v52 = v34;
              _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Retrieved shared remote controller with fabric Id %llu: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v29);
            v35 = *(a1 + 64);
            v36 = [*(a1 + 40) uuid];
            v37 = [v36 UUIDString];
            (*(v35 + 16))(v35, v37, 0);

            v6 = v39;
            v5 = v40;
            v9 = v38;
            goto LABEL_17;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v6 = v39;
    v5 = v40;
    v9 = v38;
  }

  [*(a1 + 32) _getDeviceControllerWithFabricId:*(a1 + 72) accessories:*(a1 + 48) home:*(a1 + 40) remainingHomes:*(a1 + 56) completion:*(a1 + 64)];
LABEL_17:
}

- (void)_registerReportHandlerWithHomeWithUUID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  homeManager = [(HMDCHIPXPCClientConnection *)self homeManager];
  v7 = [homeManager _homeWithUUID:dCopy];

  if (v7)
  {
    subscribedHomeUUIDs = [(HMDCHIPXPCClientConnection *)self subscribedHomeUUIDs];
    v9 = [subscribedHomeUUIDs containsObject:dCopy];

    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v13;
        v24 = 2112;
        v25 = dCopy;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Registering report handler with home with UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      subscribedHomeUUIDs2 = [(HMDCHIPXPCClientConnection *)selfCopy subscribedHomeUUIDs];
      [subscribedHomeUUIDs2 addObject:dCopy];

      v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCHIPXPCClientConnection pid](selfCopy, "pid")}];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __69__HMDCHIPXPCClientConnection__registerReportHandlerWithHomeWithUUID___block_invoke;
      v20[3] = &unk_2786818F8;
      v20[4] = selfCopy;
      v21 = dCopy;
      [v7 setCHIPReportHandlerWithSubscriber:v15 handler:v20];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = dCopy;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not register report handler using unknown home UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

void __69__HMDCHIPXPCClientConnection__registerReportHandlerWithHomeWithUUID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v9;
    v15 = 2048;
    v16 = a2;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Dispatching report to client using nodeId %tu, reports %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v5 xpcEncodedCHIPReportsFromHMFEncodedMessage];
  v11 = [*(a1 + 32) remoteObjectProxy];
  v12 = [*(a1 + 40) UUIDString];
  [v11 handleReportWithController:v12 nodeId:a2 values:v10 error:0];
}

- (void)deregisterReportHandlers
{
  selfCopy = self;
  v33 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCHIPXPCClientConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(HMDCHIPXPCClientConnection *)selfCopy subscribedHomeUUIDs];
  v4 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v7 = 0x277CCA000uLL;
    v22 = selfCopy;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        homeManager = [(HMDCHIPXPCClientConnection *)selfCopy homeManager];
        v11 = [homeManager _homeWithUUID:v9];

        if (v11)
        {
          v12 = objc_autoreleasePoolPush();
          v13 = selfCopy;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v15 = v5;
            v16 = v6;
            v18 = v17 = v7;
            shortDescription = [v11 shortDescription];
            *buf = 138543618;
            v29 = v18;
            v30 = 2112;
            v31 = shortDescription;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Deregistering report handlers from home: %@", buf, 0x16u);

            v7 = v17;
            v6 = v16;
            v5 = v15;
            selfCopy = v22;
          }

          objc_autoreleasePoolPop(v12);
          v20 = [*(v7 + 2992) numberWithInt:{-[HMDCHIPXPCClientConnection pid](v13, "pid")}];
          [v11 setCHIPReportHandlerWithSubscriber:v20 handler:0];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  subscribedHomeUUIDs = [(HMDCHIPXPCClientConnection *)selfCopy subscribedHomeUUIDs];
  [subscribedHomeUUIDs removeAllObjects];
}

- (HMDCHIPXPCClientConnection)initWithRemoteObjectProxy:(id)proxy homeManager:(id)manager pid:(int)pid processInfo:(id)info backgroundModeEntitled:(BOOL)entitled workQueue:(id)queue
{
  proxyCopy = proxy;
  managerCopy = manager;
  infoCopy = info;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = HMDCHIPXPCClientConnection;
  v19 = [(HMDCHIPXPCClientConnection *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_remoteObjectProxy, proxy);
    objc_storeWeak(&v20->_homeManager, managerCopy);
    v20->_pid = pid;
    objc_storeStrong(&v20->_processInfo, info);
    objc_storeStrong(&v20->_workQueue, queue);
    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    subscribedHomeUUIDs = v20->_subscribedHomeUUIDs;
    v20->_subscribedHomeUUIDs = v21;

    v20->_backgroundModeEntitled = entitled;
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t44 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t44, &__block_literal_global_223371);
  }

  v3 = logCategory__hmf_once_v45;

  return v3;
}

void __41__HMDCHIPXPCClientConnection_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v45;
  logCategory__hmf_once_v45 = v0;
}

@end