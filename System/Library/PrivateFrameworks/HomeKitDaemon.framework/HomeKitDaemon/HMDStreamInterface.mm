@interface HMDStreamInterface
+ (id)extractNetworkConfig:(int)config peerNameExtractor:(void *)extractor;
+ (id)logCategory;
+ (int)openSocketWithNetworkConfig:(id)config;
- (BOOL)loadMiscFields:(id)fields;
- (HMDStreamInterface)initWithSessionID:(id)d workQueue:(id)queue sessionHandler:(id)handler localRTPSocket:(int)socket;
- (id)logIdentifier;
- (unint64_t)state;
- (void)dealloc;
- (void)setState:(unint64_t)state;
@end

@implementation HMDStreamInterface

- (id)logIdentifier
{
  sessionID = [(HMDStreamInterface *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (BOOL)loadMiscFields:(id)fields
{
  v34 = *MEMORY[0x277D85DE8];
  fieldsCopy = fields;
  sessionHandler = [(HMDStreamInterface *)self sessionHandler];
  if ([sessionHandler conformsToProtocol:&unk_283ECDB18])
  {
    v6 = sessionHandler;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_opt_class();
    remoteVideoSocket = [v7 remoteVideoSocket];
    v10 = [v8 extractNetworkConfig:remoteVideoSocket peerNameExtractor:MEMORY[0x277D85F28]];
    v11 = v10 != 0;
    if (v10)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        ipAddress = [v10 ipAddress];
        v30 = 138543618;
        v31 = v15;
        v32 = 2112;
        v33 = ipAddress;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@IDSDevice connection: Peer IP address: %@\n", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        rtpPort = [v10 rtpPort];
        v30 = 138543618;
        v31 = v20;
        v32 = 2112;
        v33 = rtpPort;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@IDSDevice connection: Peer port      : %@\n", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      ipAddress2 = [v10 ipAddress];
      remoteAddress = [fieldsCopy remoteAddress];
      [remoteAddress setIp:ipAddress2];

      rtpPort2 = [v10 rtpPort];
      LOWORD(remoteAddress) = [rtpPort2 unsignedIntegerValue];
      remoteAddress2 = [fieldsCopy remoteAddress];
      [remoteAddress2 setPort:remoteAddress];

      ipv6 = [v10 ipv6];
      remoteAddress3 = [fieldsCopy remoteAddress];
      [remoteAddress3 setIsIPv6:ipv6];

      rtpPort3 = [v10 rtpPort];
      [fieldsCopy setRtcpRemotePort:{objc_msgSend(rtpPort3, "unsignedShortValue")}];
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)setState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_state = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)dealloc
{
  if (self->_localRTPSocket != -1)
  {
    (*(self->_socketCloseHandler + 2))();
  }

  v3.receiver = self;
  v3.super_class = HMDStreamInterface;
  [(HMDStreamInterface *)&v3 dealloc];
}

- (HMDStreamInterface)initWithSessionID:(id)d workQueue:(id)queue sessionHandler:(id)handler localRTPSocket:(int)socket
{
  dCopy = d;
  queueCopy = queue;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = HMDStreamInterface;
  v14 = [(HMDStreamInterface *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_sessionID, d);
    objc_storeStrong(&v15->_workQueue, queue);
    objc_storeStrong(&v15->_sessionHandler, handler);
    v15->_localRTPSocket = socket;
    v15->_state = 1;
    socketCloseHandler = v15->_socketCloseHandler;
    v15->_socketCloseHandler = &__block_literal_global_87961;
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_87974 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_87974, &__block_literal_global_75);
  }

  v3 = logCategory__hmf_once_v12_87975;

  return v3;
}

void __33__HMDStreamInterface_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v12_87975;
  logCategory__hmf_once_v12_87975 = v0;
}

+ (id)extractNetworkConfig:(int)config peerNameExtractor:(void *)extractor
{
  v5 = *&config;
  v35 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(HMDCameraNetworkConfig);
  memset(v34, 0, 128);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *v27 = 0u;
  v28 = 0u;
  v20 = 128;
  if (((extractor)(v5, v34, &v20) & 0x80000000) != 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = __error();
      v14 = strerror(*v13);
      v15 = *__error();
      *buf = 138543874;
      v22 = v12;
      v23 = 2080;
      v24 = v14;
      v25 = 1024;
      v26 = v15;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to get the peer name: %s (%d)", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
    v16 = 0;
  }

  else
  {
    v8 = bswap32(v34[1]) >> 16;
    if (HIBYTE(v34[0]) == 2)
    {
      inet_ntop(2, &v34[2], v27, 0x64u);
    }

    else
    {
      inet_ntop(30, &v34[4], v27, 0x64u);
      [(HMDCameraNetworkConfig *)v7 setIpv6:1];
    }

    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v27];
    [(HMDCameraNetworkConfig *)v7 setIpAddress:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithInt:v8];
    [(HMDCameraNetworkConfig *)v7 setRtpPort:v18];

    v16 = v7;
  }

  return v16;
}

+ (int)openSocketWithNetworkConfig:(id)config
{
  v40 = *MEMORY[0x277D85DE8];
  configCopy = config;
  if ([configCopy ipv6])
  {
    v5 = socket(30, 2, 0);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v23 = __error();
        v24 = strerror(*v23);
        v25 = *__error();
        *buf = 138543874;
        v35 = v9;
        v36 = 2080;
        v37 = v24;
        v38 = 1024;
        LODWORD(v39) = v25;
        v13 = "%{public}@Failed to create IPv6 socket: %s (%d)";
        goto LABEL_17;
      }

LABEL_18:

      objc_autoreleasePoolPop(v6);
      LODWORD(v6) = -1;
      goto LABEL_19;
    }

    v6 = v5;
    v33 = 1;
    setsockopt(v5, 0xFFFF, 512, &v33, 4u);
    v33 = 3200000;
    setsockopt(v6, 0xFFFF, 4098, &v33, 4u);
    if (bind(v6, (configCopy + 36), 0x1Cu) < 0)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v10 = __error();
        v11 = strerror(*v10);
        v12 = *__error();
        *buf = 138543874;
        v35 = v9;
        v36 = 2080;
        v37 = v11;
        v38 = 1024;
        LODWORD(v39) = v12;
        v13 = "%{public}@Failed to bind IPv6 socket: %s (%d)";
LABEL_17:
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, v13, buf, 0x1Cu);

        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v14 = socket(2, 2, 0);
    if ((v14 & 0x80000000) != 0)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v26 = __error();
        v27 = strerror(*v26);
        v28 = *__error();
        *buf = 138543874;
        v35 = v9;
        v36 = 2080;
        v37 = v27;
        v38 = 1024;
        LODWORD(v39) = v28;
        v13 = "%{public}@Failed to create socket: %s (%d)";
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v6 = v14;
    v33 = 1;
    setsockopt(v14, 0xFFFF, 512, &v33, 4u);
    v33 = 3200000;
    setsockopt(v6, 0xFFFF, 4098, &v33, 4u);
    if (bind(v6, (configCopy + 8), 0x10u) < 0)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v29 = __error();
        v30 = strerror(*v29);
        v31 = *__error();
        *buf = 138543874;
        v35 = v9;
        v36 = 2080;
        v37 = v30;
        v38 = 1024;
        LODWORD(v39) = v31;
        v13 = "%{public}@Failed to bind socket: %s (%d)";
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  v15 = [self extractNetworkConfig:v6 peerNameExtractor:MEMORY[0x277D85F30]];
  rtpPort = [v15 rtpPort];
  [configCopy setRtpPort:rtpPort];

  v17 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    ipAddress = [configCopy ipAddress];
    rtpPort2 = [configCopy rtpPort];
    *buf = 138543874;
    v35 = v20;
    v36 = 2112;
    v37 = ipAddress;
    v38 = 2112;
    v39 = rtpPort2;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Opened socket at address %@ and port %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
LABEL_19:

  return v6;
}

@end