@interface CBConnectionsObserver
+ (void)initialize;
- (BOOL)attachSessionWithError:(id *)error;
- (BOOL)cleanupWithError:(id *)error;
- (CBConnectionsObserver)initWithCentralManager:(id)manager Queue:(id)queue Error:(id *)error;
- (OS_dispatch_queue)dispatchQueue;
- (int)getAvailableHAPConnections;
- (void)centralManagerDidUpdateState:(id)state;
- (void)updateBleStatus:(BTRemoteContext *)status;
@end

@implementation CBConnectionsObserver

- (OS_dispatch_queue)dispatchQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_dispatchQueue);

  return WeakRetained;
}

- (void)centralManagerDidUpdateState:(id)state
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = cbManagerState2String;
    v9 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(stateCopy, "state")}];
    v10 = [v8 objectForKeyedSubscript:v9];
    *buf = 138543874;
    v20 = v7;
    v21 = 2112;
    v22 = v10;
    v23 = 2048;
    state = [stateCopy state];
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] centralManagerDidUpdateState state %@ (%ld)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if ([stateCopy state] == 5)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] centralManagerDidUpdateState trying to (re)attach MobileBluetooth session", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v18 = 0;
    [(CBConnectionsObserver *)self attachSessionWithError:&v18];
    v14 = v18;
    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v20 = v17;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] centralManagerDidUpdateState failed to (re)attach MobileBluetooth session, error :%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }
}

- (void)updateBleStatus:(BTRemoteContext *)status
{
  v37 = *MEMORY[0x277D85DE8];
  status->var6.lowEnergyConnections = 0;
  central = [(CBConnectionsObserver *)self central];
  if (central)
  {
    v6 = central;
    central2 = [(CBConnectionsObserver *)self central];
    state = [central2 state];

    if (state == 5)
    {
      central3 = [(CBConnectionsObserver *)self central];
      v10 = [central3 retrieveConnectedPeripheralsWithServices:MEMORY[0x277CBEBF8] allowAll:1];

      status->var6.lowEnergyConnections = [v10 count];
      if (status->var5.var0)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = v10;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v28 + 1) + 8 * i);
              v17 = objc_autoreleasePoolPush();
              v18 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = HMFGetLogIdentifier();
                *buf = 138543618;
                v33 = v19;
                v34 = 2112;
                v35 = v16;
                _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBleStatus device %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v17);
              if ([v16 hasTag:@"FastConnection"])
              {
                ++status->var6.leRemote;
                v20 = objc_autoreleasePoolPush();
                v21 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v33 = v22;
                  _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBleStatus found a LE Remote", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v20);
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v13);
        }

        v10 = v27;
      }

      v23 = objc_autoreleasePoolPush();
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = HMFGetLogIdentifier();
        lowEnergyConnections = status->var6.lowEnergyConnections;
        *buf = 138543618;
        v33 = v25;
        v34 = 2048;
        v35 = lowEnergyConnections;
        _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBleStatus found connected BLE devices: %ld", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
    }
  }
}

- (int)getAvailableHAPConnections
{
  v74 = *MEMORY[0x277D85DE8];
  if (![(CBConnectionsObserver *)self hasStarted])
  {
    return 0;
  }

  *(&qword_27D8AF878 + 7) = 0;
  xmmword_27D8AF860 = 0u;
  *&qword_27D8AF870 = 0u;
  xmmword_27D8AF840 = 0u;
  *&qword_27D8AF850 = 0u;
  xmmword_27D8AF820 = 0u;
  unk_27D8AF830 = 0u;
  xmmword_27D8AF800 = 0u;
  *&qword_27D8AF810 = 0u;
  [(CBConnectionsObserver *)self updateBleStatus:&g_ctx];
  if (qword_27D8AF7C0)
  {
    ModulePower = BTLocalDeviceGetModulePower();
    if (ModulePower)
    {
      v4 = ModulePower;
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v7;
        *&buf[12] = 1024;
        *&buf[14] = v4;
        _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateClassicStatus: BTLocalDeviceGetModulePower failed with error %d", buf, 0x12u);
      }

      goto LABEL_12;
    }

    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 1024;
      *&buf[14] = 0;
      v10 = "%{public}@[CBConnectionsObserver] updateClassicStatus: not powered on, power status %d";
      v11 = v6;
      v12 = 18;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v9;
      v10 = "%{public}@[CBConnectionsObserver] updateClassicStatus: no local device found, has initialization failed?";
      v11 = v6;
      v12 = 12;
LABEL_11:
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }
  }

LABEL_12:

  objc_autoreleasePoolPop(v5);
  v71 = xmmword_27D8AF860;
  v72 = *&qword_27D8AF870;
  *&v73 = qword_27D8AF880;
  v67 = xmmword_27D8AF820;
  v68 = unk_27D8AF830;
  v69 = xmmword_27D8AF840;
  v70 = *&qword_27D8AF850;
  *buf = xmmword_27D8AF800;
  *&buf[16] = *&qword_27D8AF810;
  if (byte_27D8AF7C8 == 1)
  {
    v13 = [ATVModel atvStateFromState:buf];
    model = [(CBConnectionsObserver *)self model];
    v15 = [model findTupleForATVState:v13];
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    *v60 = 138543618;
    v61 = v18;
    v62 = 2112;
    v63 = *&v15;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] tuple is %@", v60, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  if (!v15)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      *v60 = 138543362;
      v61 = v21;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBandwidth: work-in-progress", v60, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      *v60 = 138543362;
      v61 = v24;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBandwidth: TODO this is work-in-progress", v60, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v25 = (*&dword_27D8AF7F4 * v71) / qword_27D8AF7D0;
    v26 = objc_autoreleasePoolPush();
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      *v60 = 138543618;
      v61 = v28;
      v62 = 2048;
      v63 = *&buf[24];
      _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBandwidth: A2DPActive: %ld\n", v60, 0x16u);
    }

    v29 = v25 + 0.0;

    objc_autoreleasePoolPop(v26);
    if (*&buf[24])
    {
      v30 = objc_autoreleasePoolPush();
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = HMFGetLogIdentifier();
        *v60 = 138543362;
        v61 = v32;
        _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBandwidth: TODO add formula for A2DP bandwidth", v60, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
    }

    v33 = (v29 + (((v70 + v70) + (*(&v70 + 1) * 4.0)) / qword_27D8AF7D0)) + (v69 * *&dword_27D8AF7F0);
    if (v73 == 1)
    {
      v34 = *&dword_27D8AF7E0;
      if (*&dword_27D8AF7E0 < unk_27D8AF7E4)
      {
        v34 = unk_27D8AF7E4;
      }

      v33 = ((v33 + *&qword_27D8AF7D8) + *(&qword_27D8AF7D8 + 1)) + v34;
    }

    v35 = *&dword_27D8AF7EC;
    v36 = *(&v68 + 1);
    v37 = objc_autoreleasePoolPush();
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = HMFGetLogIdentifier();
      *v60 = 138543362;
      v61 = v39;
      _os_log_impl(&dword_22AADC000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBandwidth: TODO add formula for shared antenna\n", v60, 0xCu);
    }

    objc_autoreleasePoolPop(v37);
    *&v40 = fminf((v33 + (v35 * v36)) * 100.0, 100.0);
    LODWORD(v41) = LODWORD(v40);
    v15 = [HAPBTLETuple makeTupleWithState:buf MaxHAPConnections:(dword_27D8AF7E8 + v68 - DWORD2(v68)) MinBandwidth:v40 MaxBandwidth:v41];
  }

  v42 = objc_autoreleasePoolPush();
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = HMFGetLogIdentifier();
    v45 = [HAPBTLETuple state2String:buf];
    *v60 = 138543618;
    v61 = v44;
    v62 = 2112;
    v63 = *&v45;
    _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] status\n%@", v60, 0x16u);
  }

  objc_autoreleasePoolPop(v42);
  v46 = objc_autoreleasePoolPush();
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = HMFGetLogIdentifier();
    [v15 maxBandwidth];
    v50 = v49;
    maxHAPConnections = [v15 maxHAPConnections];
    *v60 = 138543874;
    v61 = v48;
    v62 = 2048;
    v63 = v50;
    v64 = 1024;
    v65 = maxHAPConnections;
    _os_log_impl(&dword_22AADC000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] max bandwidth: %f%% maxHAPConnections %d \n", v60, 0x1Cu);
  }

  objc_autoreleasePoolPop(v46);
  maxHAPConnections2 = [v15 maxHAPConnections];
  if (byte_27D8AF7C8 == 1)
  {
    if (maxHAPConnections2 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = maxHAPConnections2;
    }

    v53 = objc_autoreleasePoolPush();
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = HMFGetLogIdentifier();
      *v60 = 138543618;
      v61 = v55;
      v62 = 1024;
      LODWORD(v63) = v8;
      _os_log_impl(&dword_22AADC000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] adjusted for ATV maxHAPConnections: %d \n", v60, 0x12u);
    }

    objc_autoreleasePoolPop(v53);
  }

  else
  {
    v8 = maxHAPConnections2 & ~(maxHAPConnections2 >> 31);
  }

  v56 = objc_autoreleasePoolPush();
  v57 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = HMFGetLogIdentifier();
    *v60 = 138543618;
    v61 = v58;
    v62 = 1024;
    LODWORD(v63) = v8;
    _os_log_impl(&dword_22AADC000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] returning maxHAPConnections: %d \n", v60, 0x12u);
  }

  objc_autoreleasePoolPop(v56);
  return v8;
}

- (BOOL)attachSessionWithError:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = qword_27D8AF7C0 != 0;
  if (qword_27D8AF7C0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] BTSessionAttachWithQueue already attached\n", &v12, 0xCu);
    }
  }

  else
  {
    [sessionName UTF8String];
    dispatchQueue = [(CBConnectionsObserver *)self dispatchQueue];
    v9 = BTSessionAttachWithQueue();

    if (!v9)
    {
      return 1;
    }

    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] BTSessionAttachWithQueue with error %d \n", &v12, 0x12u);
    }
  }

  objc_autoreleasePoolPop(v4);
  return v3;
}

- (BOOL)cleanupWithError:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  if (![(CBConnectionsObserver *)self hasStarted])
  {
    return 1;
  }

  [(CBConnectionsObserver *)self setHasStarted:0];
  [(CBConnectionsObserver *)self setCentral:0];
  if (qword_27D8AF7C0)
  {
    qword_27D8AF7C0 = 0;
  }

  if (!qword_27D8AF7B8)
  {
    return 1;
  }

  v5 = BTSessionDetachWithQueue();
  v6 = v5 == 0;
  if (v5)
  {
    v7 = v5;
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v10;
      v19 = 1024;
      v20 = v7;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] BTSessionDetachWithQueue failed with error %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v8);
    if (error)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to detach session, code %d", v7];
      v12 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA450];
      v16 = v11;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *error = [v12 errorWithDomain:@"CBConnectionsObserver" code:1 userInfo:v13];
    }
  }

  qword_27D8AF7B8 = 0;
  return v6;
}

- (CBConnectionsObserver)initWithCentralManager:(id)manager Queue:(id)queue Error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  queueCopy = queue;
  v34.receiver = self;
  v34.super_class = CBConnectionsObserver;
  v10 = [(CBConnectionsObserver *)&v34 init];
  v11 = v10;
  if (error)
  {
    *error = 0;
  }

  if (v10)
  {
    v10->_hasStarted = 1;
    objc_storeWeak(&v10->_dispatchQueue, queueCopy);
    v12 = MEMORY[0x277CCACA8];
    v13 = getprogname();
    v14 = [v12 stringWithFormat:@"%s-%u", v13, getpid()];
    v15 = sessionName;
    sessionName = v14;

    g_ctx = sessionEventCallback;
    qword_27D8AF798 = serviceEventCallback;
    qword_27D8AF7A0 = localDeviceCallback;
    xmmword_27D8AF800 = 0u;
    *&qword_27D8AF810 = 0u;
    xmmword_27D8AF820 = 0u;
    unk_27D8AF830 = 0u;
    xmmword_27D8AF840 = 0u;
    *&qword_27D8AF850 = 0u;
    xmmword_27D8AF860 = 0u;
    *&qword_27D8AF870 = 0u;
    *(&qword_27D8AF878 + 7) = 0;
    v16 = IsAppleTV();
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v20;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] running on Apple TV \n", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = objc_alloc_init(ATVModel);
      model = v11->_model;
      v11->_model = v21;

      v23 = 1;
    }

    else
    {
      if (v19)
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v24;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] running on iOS device \n", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v23 = 0;
    }

    byte_27D8AF7C8 = v23;
    qword_27D8AF7D8 = 0;
    *&dword_27D8AF7E0 = 0;
    qword_27D8AF7D0 = 18;
    *&dword_27D8AF7EC = 0x3E4CCCCD3D4CCCCDLL;
    dword_27D8AF7F4 = 1086324736;
    dword_27D8AF7E8 = 5;
    v25 = [objc_alloc(MEMORY[0x277CBDFF8]) initWithDelegate:v11 queue:queueCopy];
    central = v11->_central;
    v11->_central = v25;

    if ([(CBCentralManager *)v11->_central state]== 5)
    {
      v33 = 0;
      [(CBConnectionsObserver *)v11 attachSessionWithError:&v33];
      v27 = v33;
      if (v27)
      {
        v28 = objc_autoreleasePoolPush();
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543618;
          v36 = v30;
          v37 = 2112;
          v38 = v27;
          _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] initWithCentralManager failed to attache MobileBluetooth session, error :%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        if (error)
        {
          v31 = v27;
          *error = v27;
        }
      }
    }
  }

  return v11;
}

+ (void)initialize
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = &unk_283EA9920;
  v12[1] = &unk_283EA9938;
  v13[0] = @"Unknown";
  v13[1] = @"Resetting";
  v12[2] = &unk_283EA9950;
  v12[3] = &unk_283EA9968;
  v13[2] = @"Unsupported";
  v13[3] = @"Unauthorized";
  v12[4] = &unk_283EA9980;
  v12[5] = &unk_283EA9998;
  v13[4] = @"Powered Off";
  v13[5] = @"Powered On";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];
  v3 = cbManagerState2String;
  cbManagerState2String = v2;

  v10[0] = &unk_283EA99B0;
  v10[1] = &unk_283EA99C8;
  v11[0] = @"Power State Changed";
  v11[1] = @"Discoverability Changed";
  v10[2] = &unk_283EA99E0;
  v10[3] = &unk_283EA99F8;
  v11[2] = @"Connectability Changed";
  v11[3] = @"Pairing status Changed";
  v10[4] = &unk_283EA9A10;
  v10[5] = &unk_283EA9A28;
  v11[4] = @"Connection status Changed";
  v11[5] = @"Discovery Started";
  v10[6] = &unk_283EA9A40;
  v10[7] = &unk_283EA9A58;
  v11[6] = @"Discovery Stopped";
  v11[7] = @"Advertising Status Changed";
  v10[8] = &unk_283EA9A70;
  v11[8] = @"Name Changed";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:9];
  v5 = btLocalDeviceState2String;
  btLocalDeviceState2String = v4;

  v8[0] = &unk_283EA99B0;
  v8[1] = &unk_283EA9A70;
  v9[0] = @"Service Connect";
  v9[1] = @"Service Disconnect";
  v8[2] = &unk_283EA99C8;
  v9[2] = @"Service Dependent Event";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v7 = btServiceEvent2String;
  btServiceEvent2String = v6;
}

@end