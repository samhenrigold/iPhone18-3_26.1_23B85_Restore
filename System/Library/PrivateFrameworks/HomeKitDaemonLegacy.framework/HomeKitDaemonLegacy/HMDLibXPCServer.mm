@interface HMDLibXPCServer
+ (id)logCategory;
- (HMDLibXPCServer)initWithMachServiceName:(id)name;
- (HMDLibXPCServer)initWithMachServiceName:(id)name queue:(id)queue libXPCInterface:(id)interface;
- (HMDLibXPCServerDelegate)delegate;
- (void)handleIncomingConnection:(id)connection;
- (void)start;
- (void)stop;
@end

@implementation HMDLibXPCServer

- (HMDLibXPCServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleIncomingConnection:(id)connection
{
  v24 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = connectionCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling incoming connection: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  libXPCInterface = [(HMDLibXPCServer *)selfCopy libXPCInterface];
  queue = [(HMDLibXPCServer *)selfCopy queue];
  [libXPCInterface setXPCTargetQueueForConnection:connectionCopy queue:queue];

  objc_initWeak(buf, selfCopy);
  libXPCInterface2 = [(HMDLibXPCServer *)selfCopy libXPCInterface];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __44__HMDLibXPCServer_handleIncomingConnection___block_invoke;
  v17 = &unk_27972B990;
  objc_copyWeak(&v19, buf);
  v12 = connectionCopy;
  v18 = v12;
  [libXPCInterface2 setXPCEventHandlerForConnection:v12 handler:&v14];

  v13 = [(HMDLibXPCServer *)selfCopy libXPCInterface:v14];
  [v13 activateXPCConnection:v12];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __44__HMDLibXPCServer_handleIncomingConnection___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *v39 = 138543362;
      *&v39[4] = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Lost self when handling XPC event on listener connection", v39, 0xCu);
    }

    v18 = v15;
    goto LABEL_11;
  }

  v6 = [WeakRetained libXPCInterface];
  v7 = [v6 typeForXPCObject:v3];

  if (v7 == MEMORY[0x277D86468])
  {
    v19 = _CFXPCCreateCFObjectFromXPCObject();
    v20 = [v5 delegate];
    [v20 didReceiveEventDictionary:v19];

    goto LABEL_13;
  }

  if (v7 == MEMORY[0x277D86480])
  {
    if (v3 != MEMORY[0x277D86420])
    {
      if (v3 == MEMORY[0x277D863F0])
      {
        v8 = objc_autoreleasePoolPush();
        v9 = v5;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          v37 = *(a1 + 32);
          *v39 = 138543618;
          *&v39[4] = v36;
          *&v39[12] = 2112;
          *&v39[14] = v37;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Connection interrupted: %@", v39, 0x16u);
        }

        goto LABEL_6;
      }

      v21 = MEMORY[0x277D863F8];
      v22 = objc_autoreleasePoolPush();
      v23 = v5;
      v24 = HMFGetOSLogHandle();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v3 == v21)
      {
        if (v25)
        {
          v26 = HMFGetLogIdentifier();
          v38 = *(a1 + 32);
          *v39 = 138543618;
          *&v39[4] = v26;
          *&v39[12] = 2112;
          *&v39[14] = v38;
          v28 = "%{public}@Connection invalidated: %@";
          v29 = v24;
          v30 = 22;
          goto LABEL_26;
        }
      }

      else if (v25)
      {
        v26 = HMFGetLogIdentifier();
        v27 = *(a1 + 32);
        *v39 = 138543874;
        *&v39[4] = v26;
        *&v39[12] = 2112;
        *&v39[14] = v27;
        *&v39[22] = 2112;
        name = v3;
        v28 = "%{public}@Received unexpected error event for connection %@: %@";
        v29 = v24;
        v30 = 32;
LABEL_26:
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, v28, v39, v30);
      }

      objc_autoreleasePoolPop(v22);
      v13 = v23;
      goto LABEL_7;
    }

    v31 = objc_autoreleasePoolPush();
    v32 = v5;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v35 = *(a1 + 32);
      *v39 = 138543618;
      *&v39[4] = v34;
      *&v39[12] = 2112;
      *&v39[14] = v35;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Termination imminent for connection: %@", v39, 0x16u);
    }

    v18 = v31;
LABEL_11:
    objc_autoreleasePoolPop(v18);
    goto LABEL_13;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = v5;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = *(a1 + 32);
    *v39 = 138544130;
    *&v39[4] = v11;
    *&v39[12] = 2112;
    *&v39[14] = v12;
    *&v39[22] = 2080;
    name = xpc_type_get_name(v7);
    v41 = 2112;
    v42 = v3;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received unexpected event type for connection %@: (%s) %@", v39, 0x2Au);
  }

LABEL_6:

  objc_autoreleasePoolPop(v8);
  v13 = v9;
LABEL_7:
  v14 = [v13 libXPCInterface];
  [v14 cancelXPCConnection:*(a1 + 32)];

LABEL_13:
}

- (void)stop
{
  listenerConnection = [(HMDLibXPCServer *)self listenerConnection];

  if (listenerConnection)
  {
    libXPCInterface = [(HMDLibXPCServer *)self libXPCInterface];
    listenerConnection2 = [(HMDLibXPCServer *)self listenerConnection];
    [libXPCInterface cancelXPCConnection:listenerConnection2];

    [(HMDLibXPCServer *)self setListenerConnection:0];
  }
}

- (void)start
{
  listenerConnection = [(HMDLibXPCServer *)self listenerConnection];

  if (!listenerConnection)
  {
    libXPCInterface = [(HMDLibXPCServer *)self libXPCInterface];
    name = [(HMDLibXPCServer *)self name];
    queue = [(HMDLibXPCServer *)self queue];
    v7 = [libXPCInterface createXPCMachServiceWithName:name queue:queue flags:1];
    [(HMDLibXPCServer *)self setListenerConnection:v7];

    objc_initWeak(&location, self);
    libXPCInterface2 = [(HMDLibXPCServer *)self libXPCInterface];
    listenerConnection2 = [(HMDLibXPCServer *)self listenerConnection];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __24__HMDLibXPCServer_start__block_invoke;
    v15 = &unk_27972DAB0;
    objc_copyWeak(&v16, &location);
    [libXPCInterface2 setXPCEventHandlerForConnection:listenerConnection2 handler:&v12];

    v10 = [(HMDLibXPCServer *)self libXPCInterface:v12];
    listenerConnection3 = [(HMDLibXPCServer *)self listenerConnection];
    [v10 activateXPCConnection:listenerConnection3];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __24__HMDLibXPCServer_start__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      objc_autoreleasePoolPop(v10);
      goto LABEL_13;
    }

    v12 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Lost self when handling XPC event on listener connection", &v16, 0xCu);
LABEL_11:

    goto LABEL_12;
  }

  v6 = [WeakRetained queue];
  dispatch_assert_queue_V2(v6);

  v7 = [v5 libXPCInterface];
  v8 = [v7 typeForXPCObject:v3];

  if (v8 != MEMORY[0x277D86450])
  {
    v9 = MEMORY[0x277D86480];
    v10 = objc_autoreleasePoolPush();
    v11 = v5;
    v12 = HMFGetOSLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v8 == v9)
    {
      if (v13)
      {
        v15 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v15;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Listener connection locally invalidated", &v16, 0xCu);
      }
    }

    else if (v13)
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v14;
      v18 = 2080;
      name = xpc_type_get_name(v8);
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received unexpected event type for listener connection: (%s) %@", &v16, 0x20u);
    }

    goto LABEL_11;
  }

  [v5 handleIncomingConnection:v3];
LABEL_13:
}

- (HMDLibXPCServer)initWithMachServiceName:(id)name queue:(id)queue libXPCInterface:(id)interface
{
  nameCopy = name;
  queueCopy = queue;
  interfaceCopy = interface;
  v15.receiver = self;
  v15.super_class = HMDLibXPCServer;
  v11 = [(HMDLibXPCServer *)&v15 init];
  if (v11)
  {
    v12 = objc_msgSend_copy(nameCopy);
    name = v11->_name;
    v11->_name = v12;

    objc_storeStrong(&v11->_queue, queue);
    objc_storeStrong(&v11->_libXPCInterface, interface);
  }

  return v11;
}

- (HMDLibXPCServer)initWithMachServiceName:(id)name
{
  nameCopy = name;
  nameCopy2 = name;
  uTF8String = [nameCopy2 UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(uTF8String, v8);
  v10 = objc_alloc_init(HMDLibXPCInterface);
  v11 = [(HMDLibXPCServer *)self initWithMachServiceName:nameCopy2 queue:v9 libXPCInterface:v10];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_101750 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_101750, &__block_literal_global_101751);
  }

  v3 = logCategory__hmf_once_v11_101752;

  return v3;
}

uint64_t __30__HMDLibXPCServer_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v11_101752;
  logCategory__hmf_once_v11_101752 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end