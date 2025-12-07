@interface HMDCameraIDSDeviceConnection
+ (id)logCategory;
- (HMDCameraIDSDeviceConnection)initWithSessionID:(id)d workQueue:(id)queue idsProxyStreamService:(id)service;
- (id)logIdentifier;
- (void)_callSessionEndedWithError:(id)error;
- (void)_createStreamSocketWithDevice:(id)device;
- (void)_socketOpenedWithError:(id)error;
- (void)_startKeepAliveTimeoutTimer;
- (void)callSessionEnded:(void *)ended;
- (void)dealloc;
- (void)startKeepAlive;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCameraIDSDeviceConnection

- (id)logIdentifier
{
  sessionID = [(HMDCameraIDSDeviceConnection *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)_callSessionEndedWithError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)_socketOpenedWithError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)timerDidFire:(id)fire
{
  v29 = *MEMORY[0x277D85DE8];
  _cmd = fire;
  if (!self)
  {
    dispatch_assert_queue_V2(0);
    goto LABEL_13;
  }

  Property = objc_getProperty(self, v4, 64, 1);
  dispatch_assert_queue_V2(Property);
  if (objc_getProperty(self, v6, 80, 1) == _cmd)
  {
    v22 = ++self->_keepAliveCounter;
    keepAliveConnection = [(HMDCameraIDSDeviceConnection *)self keepAliveConnection];
    v11 = send([keepAliveConnection socket], &v22, 1uLL, 0);

    if (v11 == -1)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v15;
        v25 = 1024;
        v26 = v22;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to send the sample data %d", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1025];
      [(HMDCameraIDSDeviceConnection *)selfCopy callSessionEnded:v16];
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v20;
      v25 = 1024;
      v26 = v22;
      v27 = 2048;
      v28 = v11;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Data %u transfer is complete with total transferred bytes: %lu", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v17);
    goto LABEL_13;
  }

  v7 = objc_getProperty(self, _cmd, 88, 1) == _cmd;
  v8 = _cmd;
  if (v7)
  {
    v9 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1026];
    [(HMDCameraIDSDeviceConnection *)self callSessionEnded:v9];

LABEL_13:
    v8 = _cmd;
  }
}

- (void)callSessionEnded:(void *)ended
{
  v3 = a2;
  workQueue = [ended workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HMDCameraIDSDeviceConnection_callSessionEnded___block_invoke;
  v6[3] = &unk_27868A750;
  v6[4] = ended;
  v5 = v3;
  v7 = v5;
  dispatch_async(workQueue, v6);
}

- (void)startKeepAlive
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDCameraIDSDeviceConnection_startKeepAlive__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(&self->super.super, block);
}

void __46__HMDCameraIDSDeviceConnection_startKeepAlive__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D0F920]);
    v4 = [v3 initWithTimeInterval:20 options:deviceConnectionKeepAliveTimerPeriod];
    objc_setProperty_atomic(v2, v5, v4, 80);

    [objc_getProperty(v2 v6];
    v8 = objc_getProperty(v2, v7, 64, 1);
    [objc_getProperty(v2 v9];

    [objc_getProperty(v2 v10];
    v11 = *(a1 + 32);
  }

  else
  {
    v11 = 0;
  }

  [(HMDCameraIDSDeviceConnection *)v11 _startKeepAliveTimeoutTimer];
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = [v12 keepAliveConnection];
    v14 = [v13 socket];
    Property = objc_getProperty(v12, v15, 64, 1);
    v17 = dispatch_source_create(MEMORY[0x277D85D28], v14, 0, Property);
    objc_setProperty_atomic(v12, v18, v17, 72);

    objc_initWeak(&location, v12);
    v20 = objc_getProperty(v12, v19, 72, 1);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __54__HMDCameraIDSDeviceConnection__setReceiveByteHandler__block_invoke;
    v24[3] = &unk_278686B80;
    v21 = v20;
    objc_copyWeak(&v25, &location);
    dispatch_source_set_event_handler(v21, v24);

    v23 = objc_getProperty(v12, v22, 72, 1);
    dispatch_resume(v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

- (void)_startKeepAliveTimeoutTimer
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc(MEMORY[0x277D0F920]);
    v3 = [v2 initWithTimeInterval:16 options:deviceConnectionKeepAliveResponseTimeoutPeriod];
    objc_setProperty_atomic(v1, v4, v3, 88);

    [objc_getProperty(v1 v5];
    v7 = objc_getProperty(v1, v6, 64, 1);
    [objc_getProperty(v1 v8];

    Property = objc_getProperty(v1, v9, 88, 1);

    return [Property resume];
  }

  return result;
}

void __54__HMDCameraIDSDeviceConnection__setReceiveByteHandler__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v19 = 0;
    v3 = [WeakRetained keepAliveConnection];
    v4 = recvfrom([v3 socket], &v19, 1uLL, 0, 0, 0);

    if (v4 < 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v2;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to receive keep-alive byte from socket", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1027];
      [(HMDCameraIDSDeviceConnection *)v11 callSessionEnded:v14];
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      v6 = v2;
      v7 = HMFGetOSLogHandle();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
      if (v4)
      {
        if (v8)
        {
          v9 = HMFGetLogIdentifier();
          *buf = 138543874;
          v21 = v9;
          v22 = 1024;
          v23 = v19;
          v24 = 2048;
          v25 = v4;
          _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received keep-alive byte number %u with length %zd", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v5);
        [(HMDCameraIDSDeviceConnection *)v6 _startKeepAliveTimeoutTimer];
      }

      else
      {
        if (v8)
        {
          v15 = HMFGetLogIdentifier();
          *buf = 138543362;
          v21 = v15;
          _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received empty bytes from socket indicating an orderly shutdown", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v5);
        Property = objc_getProperty(v6, v16, 72, 1);
        dispatch_source_cancel(Property);
        objc_setProperty_atomic(v6, v18, 0, 72);
      }
    }
  }
}

- (void)_createStreamSocketWithDevice:(id)device
{
  v146 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = deviceCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating stream sockets with device: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  idsProxyStreamService = [(HMDCameraIDSDeviceConnection *)selfCopy idsProxyStreamService];
  devices = [idsProxyStreamService devices];
  v129[0] = MEMORY[0x277D85DD0];
  v129[1] = 3221225472;
  v129[2] = __62__HMDCameraIDSDeviceConnection__createStreamSocketWithDevice___block_invoke;
  v129[3] = &unk_278675378;
  v99 = deviceCopy;
  v130 = v99;
  v100 = [devices hmf_objectPassingTest:v129];

  v11 = objc_autoreleasePoolPush();
  v12 = selfCopy;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v100)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v100;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Mapped HMDDevice to IDSDevice: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    version = [v99 version];
    v17 = +[HMDHomeKitVersion version8];
    v18 = [version isAtLeastVersion:v17];

    v19 = MEMORY[0x277CCACA8];
    sessionID = [(HMDCameraIDSDeviceConnection *)v12 sessionID];
    v21 = sessionID;
    if (v18)
    {
      v20SessionID = [sessionID sessionID];
      v23 = [v19 stringWithFormat:@"%@-%@", @"kIDSStreamVideoSocketName", v20SessionID];

      v24 = MEMORY[0x277CCACA8];
      sessionID2 = [(HMDCameraIDSDeviceConnection *)v12 sessionID];
      v25SessionID = [sessionID2 sessionID];
      v97 = [v24 stringWithFormat:@"%@-%@", @"kIDSStreamAudioSocketName", v25SessionID];

      v27 = MEMORY[0x277CCACA8];
      sessionID3 = [(HMDCameraIDSDeviceConnection *)v12 sessionID];
      v28SessionID = [sessionID3 sessionID];
      v95 = [v27 stringWithFormat:@"%@-%@", @"kIDSStreamKeepAliveSocketName", v28SessionID];
    }

    else
    {
      v23 = [v19 stringWithFormat:@"%@-%@", @"kIDSStreamVideoSocketName", sessionID];

      v35 = MEMORY[0x277CCACA8];
      sessionID4 = [(HMDCameraIDSDeviceConnection *)v12 sessionID];
      v97 = [v35 stringWithFormat:@"%@-%@", @"kIDSStreamAudioSocketName", sessionID4];

      v37 = MEMORY[0x277CCACA8];
      sessionID3 = [(HMDCameraIDSDeviceConnection *)v12 sessionID];
      v95 = [v37 stringWithFormat:@"%@-%@", @"kIDSStreamKeepAliveSocketName", sessionID3];
    }

    objc_initWeak(&location, v12);
    v38 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v145) = 0;
    v126[0] = 0;
    v126[1] = v126;
    v126[2] = 0x2020000000;
    v127 = 0;
    v124[0] = 0;
    v124[1] = v124;
    v124[2] = 0x2020000000;
    v125 = 0;
    context = *MEMORY[0x277D18830];
    v39 = *MEMORY[0x277D18830];
    v93 = *MEMORY[0x277D18840];
    v142[0] = *MEMORY[0x277D18840];
    v142[1] = v39;
    v143[0] = &unk_283E723E0;
    v143[1] = &unk_283E723F8;
    v90 = *MEMORY[0x277D18838];
    v142[2] = *MEMORY[0x277D18838];
    v143[2] = v23;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:3];
    dispatch_group_enter(v38);
    sessionID5 = [(HMDCameraIDSDeviceConnection *)v12 sessionID];
    v141[0] = @"IDSSetupVideoConnection";
    v141[1] = @"IDSSetupConnectionRequested";
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:2];
    [sessionID5 markMilestoneForPath:v42];

    v43 = objc_autoreleasePoolPush();
    v44 = v12;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      *v137 = 138543618;
      v138 = v46;
      v139 = 2112;
      v140 = v23;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Creating watch video connection with name: %@", v137, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    idsDeviceConnectionFactory = [(HMDCameraIDSDeviceConnection *)v44 idsDeviceConnectionFactory];
    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = __62__HMDCameraIDSDeviceConnection__createStreamSocketWithDevice___block_invoke_35;
    v119[3] = &unk_2786753A0;
    objc_copyWeak(&v123, &location);
    v89 = v23;
    v120 = v89;
    v122 = buf;
    group = v38;
    v121 = group;
    workQueue = [(HMDCameraIDSDeviceConnection *)v44 workQueue];
    v98 = (idsDeviceConnectionFactory)[2](idsDeviceConnectionFactory, v100, v40, v119, workQueue);

    if (v98)
    {
      v34 = 0;
    }

    else
    {
      v49 = objc_autoreleasePoolPush();
      v50 = v44;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = HMFGetLogIdentifier();
        *v137 = 138543362;
        v138 = v52;
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Failed to create video IDSDeviceConnection", v137, 0xCu);
      }

      objc_autoreleasePoolPop(v49);
      v34 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1021];
    }

    objc_destroyWeak(&v123);
    if (!v98)
    {
      goto LABEL_35;
    }

    v135[0] = v93;
    v135[1] = context;
    v136[0] = &unk_283E723E0;
    v136[1] = &unk_283E72410;
    v135[2] = v90;
    v136[2] = v97;
    v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:3];
    dispatch_group_enter(group);
    sessionID6 = [(HMDCameraIDSDeviceConnection *)v44 sessionID];
    v134[0] = @"IDSSetupAudioConnection";
    v134[1] = @"IDSSetupConnectionRequested";
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:2];
    [sessionID6 markMilestoneForPath:v54];

    v55 = objc_autoreleasePoolPush();
    v56 = v44;
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = HMFGetLogIdentifier();
      *v137 = 138543618;
      v138 = v58;
      v139 = 2112;
      v140 = v97;
      _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_INFO, "%{public}@Creating watch audio connection with name: %@", v137, 0x16u);
    }

    objc_autoreleasePoolPop(v55);
    idsDeviceConnectionFactory2 = [(HMDCameraIDSDeviceConnection *)v56 idsDeviceConnectionFactory];
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = __62__HMDCameraIDSDeviceConnection__createStreamSocketWithDevice___block_invoke_39;
    v114[3] = &unk_2786753A0;
    objc_copyWeak(&v118, &location);
    v115 = v97;
    v117 = v126;
    v60 = group;
    v116 = v60;
    workQueue2 = [(HMDCameraIDSDeviceConnection *)v56 workQueue];
    v62 = (idsDeviceConnectionFactory2)[2](idsDeviceConnectionFactory2, v100, v88, v114, workQueue2);

    if (!v62)
    {
      v63 = objc_autoreleasePoolPush();
      v64 = v56;
      v65 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = HMFGetLogIdentifier();
        *v137 = 138543362;
        v138 = v66;
        _os_log_impl(&dword_229538000, v65, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audio IDSDeviceConnection", v137, 0xCu);
      }

      objc_autoreleasePoolPop(v63);
      v67 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1022];

      v34 = v67;
    }

    objc_destroyWeak(&v118);
    if (v62)
    {
      v132[0] = v93;
      v132[1] = context;
      v133[0] = &unk_283E72428;
      v133[1] = &unk_283E72410;
      v132[2] = v90;
      v133[2] = v95;
      v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:3];
      dispatch_group_enter(v60);
      sessionID7 = [(HMDCameraIDSDeviceConnection *)v56 sessionID];
      v131[0] = @"IDSSetupKeepAlive";
      v131[1] = @"IDSSetupConnectionRequested";
      v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v131 count:2];
      [sessionID7 markMilestoneForPath:v69];

      v70 = objc_autoreleasePoolPush();
      v71 = v56;
      v72 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v73 = HMFGetLogIdentifier();
        *v137 = 138543618;
        v138 = v73;
        v139 = 2112;
        v140 = v95;
        _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_INFO, "%{public}@Creating keep alive connection with name: %@", v137, 0x16u);
      }

      objc_autoreleasePoolPop(v70);
      idsDeviceConnectionFactory3 = [(HMDCameraIDSDeviceConnection *)v71 idsDeviceConnectionFactory];
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __62__HMDCameraIDSDeviceConnection__createStreamSocketWithDevice___block_invoke_42;
      v109[3] = &unk_2786753A0;
      objc_copyWeak(&v113, &location);
      v110 = v95;
      v112 = v124;
      v75 = v60;
      v111 = v75;
      workQueue3 = [(HMDCameraIDSDeviceConnection *)v71 workQueue];
      v77 = (idsDeviceConnectionFactory3)[2](idsDeviceConnectionFactory3, v100, v94, v109, workQueue3);

      if (!v77)
      {
        contexta = objc_autoreleasePoolPush();
        v78 = v71;
        v79 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          v80 = HMFGetLogIdentifier();
          *v137 = 138543362;
          v138 = v80;
          _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_ERROR, "%{public}@Failed to create keep alive IDSDeviceConnection", v137, 0xCu);
        }

        objc_autoreleasePoolPop(contexta);
        v81 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1023];

        v34 = v81;
      }

      objc_destroyWeak(&v113);
      if (v77)
      {
        workQueue4 = [(HMDCameraIDSDeviceConnection *)v71 workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__HMDCameraIDSDeviceConnection__createStreamSocketWithDevice___block_invoke_43;
        block[3] = &unk_2786753C8;
        objc_copyWeak(&v108, &location);
        v105 = v126;
        v106 = buf;
        v107 = v124;
        v102 = v98;
        v62 = v62;
        v103 = v62;
        v104 = v77;
        v83 = v77;
        dispatch_group_notify(v75, workQueue4, block);

        objc_destroyWeak(&v108);
      }
    }

    else
    {
LABEL_35:
      v62 = 0;
    }

    _Block_object_dispose(v124, 8);
    _Block_object_dispose(v126, 8);
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(&location);
    if (v34)
    {
      v84 = objc_autoreleasePoolPush();
      v85 = v44;
      v86 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v87 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v87;
        *&buf[12] = 2112;
        *&buf[14] = v34;
        _os_log_impl(&dword_229538000, v86, OS_LOG_TYPE_ERROR, "%{public}@Failed to create IDS connections: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v84);
      [(HMDCameraIDSDeviceConnection *)v85 _socketOpenedWithError:v34];
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      idsIdentifier = [v99 idsIdentifier];
      idsProxyStreamService2 = [(HMDCameraIDSDeviceConnection *)v12 idsProxyStreamService];
      devices2 = [idsProxyStreamService2 devices];
      *buf = 138543874;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = idsIdentifier;
      *&buf[22] = 2112;
      v145 = devices2;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not find IDSDevice matching IDS identifier %@. All devices: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v34 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1020];
    [(HMDCameraIDSDeviceConnection *)v12 _socketOpenedWithError:v34];
  }
}

uint64_t __62__HMDCameraIDSDeviceConnection__createStreamSocketWithDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIDOverride];
  v4 = [*(a1 + 32) idsIdentifier];
  v5 = [v4 UUIDString];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

void __62__HMDCameraIDSDeviceConnection__createStreamSocketWithDevice___block_invoke_35(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (a2 == -1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create video connection: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      *buf = 138543874;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 1024;
      v22 = a2;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Created watch video connection with name: %@ socket: %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v13 = [v8 sessionID];
    v16[0] = @"IDSSetupVideoConnection";
    v16[1] = @"IDSSetupConnectionComplete";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [v13 markMilestoneForPath:v14];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __62__HMDCameraIDSDeviceConnection__createStreamSocketWithDevice___block_invoke_39(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (a2 == -1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audio connection: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      *buf = 138543874;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 1024;
      v22 = a2;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Created watch audio connection with name: %@ socket: %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v13 = [v8 sessionID];
    v16[0] = @"IDSSetupAudioConnection";
    v16[1] = @"IDSSetupConnectionComplete";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [v13 markMilestoneForPath:v14];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __62__HMDCameraIDSDeviceConnection__createStreamSocketWithDevice___block_invoke_42(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (a2 == -1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create keep alive connection: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      *buf = 138543874;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 1024;
      v22 = a2;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Created watch keep alive connection with name: %@ socket: %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v13 = [v8 sessionID];
    v16[0] = @"IDSSetupKeepAlive";
    v16[1] = @"IDSSetupConnectionComplete";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [v13 markMilestoneForPath:v14];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __62__HMDCameraIDSDeviceConnection__createStreamSocketWithDevice___block_invoke_43(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        if (*(*(*(a1 + 72) + 8) + 24))
        {
          [WeakRetained setWatchVideoConnection:*(a1 + 32)];
          [v3 setWatchAudioConnection:*(a1 + 40)];
          [v3 setKeepAliveConnection:*(a1 + 48)];
          v4 = objc_autoreleasePoolPush();
          v5 = v3;
          v6 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            v7 = HMFGetLogIdentifier();
            v24 = 138543362;
            v25 = v7;
            _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully created stream sockets", &v24, 0xCu);
          }

          objc_autoreleasePoolPop(v4);
          [v5 _socketOpenedWithError:0];
          goto LABEL_21;
        }

        v20 = objc_autoreleasePoolPush();
        v12 = v3;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          v24 = 138543362;
          v25 = v22;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to open keep alive socket", &v24, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        v15 = MEMORY[0x277CCA9B8];
        v16 = 1023;
      }

      else
      {
        v17 = objc_autoreleasePoolPush();
        v12 = v3;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          v24 = 138543362;
          v25 = v19;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to open video socket", &v24, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        v15 = MEMORY[0x277CCA9B8];
        v16 = 1021;
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v3;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v14;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to open audio socket", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v15 = MEMORY[0x277CCA9B8];
      v16 = 1022;
    }

    v23 = [v15 hmInternalErrorWithCode:v16];
    [v12 _socketOpenedWithError:v23];

    goto LABEL_21;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Lost self while creating sockets", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
LABEL_21:
}

- (void)dealloc
{
  [(HMDIDSService *)self->_idsProxyStreamService removeDelegate:self];
  [(IDSDeviceConnection *)self->_watchAudioConnection close];
  [(IDSDeviceConnection *)self->_watchVideoConnection close];
  [(IDSDeviceConnection *)self->_keepAliveConnection close];
  keepAliveSocketReceiveSource = self->_keepAliveSocketReceiveSource;
  if (keepAliveSocketReceiveSource)
  {
    dispatch_source_cancel(keepAliveSocketReceiveSource);
  }

  v4.receiver = self;
  v4.super_class = HMDCameraIDSDeviceConnection;
  [(HMDCameraIDSDeviceConnection *)&v4 dealloc];
}

- (HMDCameraIDSDeviceConnection)initWithSessionID:(id)d workQueue:(id)queue idsProxyStreamService:(id)service
{
  dCopy = d;
  queueCopy = queue;
  serviceCopy = service;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!queueCopy)
  {
LABEL_7:
    v24 = _HMFPreconditionFailure();
    return __82__HMDCameraIDSDeviceConnection_initWithSessionID_workQueue_idsProxyStreamService___block_invoke(v24, v25, v26, v27, v28);
  }

  v12 = serviceCopy;
  v29.receiver = self;
  v29.super_class = HMDCameraIDSDeviceConnection;
  v13 = [(HMDCameraIDSDeviceConnection *)&v29 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_workQueue, queue);
    objc_storeStrong(&v14->_sessionID, d);
    v15 = HMDispatchQueueNameString();
    uTF8String = [v15 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_USER_INITIATED, 0);
    v19 = dispatch_queue_create(uTF8String, v18);
    highPriorityQueue = v14->_highPriorityQueue;
    v14->_highPriorityQueue = v19;

    objc_storeStrong(&v14->_idsProxyStreamService, service);
    [(HMDIDSService *)v14->_idsProxyStreamService addDelegate:v14 queue:v14->_workQueue];
    idsDeviceConnectionFactory = v14->_idsDeviceConnectionFactory;
    v14->_idsDeviceConnectionFactory = &__block_literal_global_67353;

    v22 = +[HMDIDSServiceManager sharedManager];
    [v22 addProxyServiceLinkPreferencesAssertionHolder:v14];
  }

  return v14;
}

id __82__HMDCameraIDSDeviceConnection_initWithSessionID_workQueue_idsProxyStreamService___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = MEMORY[0x277D186E8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = [[v8 alloc] initSocketWithDevice:v12 options:v11 completionHandler:v10 queue:v9];

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t26_67370 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26_67370, &__block_literal_global_51_67371);
  }

  v3 = logCategory__hmf_once_v27_67372;

  return v3;
}

void __43__HMDCameraIDSDeviceConnection_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v27_67372;
  logCategory__hmf_once_v27_67372 = v0;
}

@end