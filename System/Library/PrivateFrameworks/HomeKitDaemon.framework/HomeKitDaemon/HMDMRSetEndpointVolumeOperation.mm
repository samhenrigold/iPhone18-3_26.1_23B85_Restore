@interface HMDMRSetEndpointVolumeOperation
+ (id)logCategory;
- (BOOL)cancelOnSetup;
- (HMDMRSetEndpointVolumeOperation)initWithRouteIDs:(id)ds volume:(id)volume;
- (HMDMRSetEndpointVolumeOperation)initWithRouteIDs:(id)ds volume:(id)volume externalObjectInterface:(id)interface;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)connectToEndpoint:(id)endpoint connection:(id)connection;
- (id)discoverRemoteControlEndpointsForUIDs:(id)ds;
- (id)getVolumeCapabilitiesForEndpoint:(id)endpoint outputDeviceUID:(id)d;
- (id)setVolumeOnEndpoint:(id)endpoint outputDeviceUID:(id)d;
- (void)generateOverallResultAndFinishWithDeviceStatuses:(id)statuses overallError:(id)error;
- (void)main;
@end

@implementation HMDMRSetEndpointVolumeOperation

- (NSArray)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  volume = [(HMDMRSetEndpointVolumeOperation *)self volume];
  v5 = [v3 initWithName:@"Volume" value:volume];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  routeIDs = [(HMDMRSetEndpointVolumeOperation *)self routeIDs];
  v8 = [v6 initWithName:@"Route IDs" value:routeIDs];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  volume = [(HMDMRSetEndpointVolumeOperation *)self volume];
  routeIDs = [(HMDMRSetEndpointVolumeOperation *)self routeIDs];
  v7 = [v3 stringWithFormat:@"%@ volume: %@ route IDs: %@", shortDescription, volume, routeIDs];

  return v7;
}

- (id)setVolumeOnEndpoint:(id)endpoint outputDeviceUID:(id)d
{
  v40 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v11;
    v38 = 2112;
    v39 = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Begin setMRAVOutputDeviceVolume on outputDeviceUID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  activity = [(HMFOperation *)selfCopy activity];
  [activity markWithFormat:@"Begin setMRAVOutputDeviceVolume on outputDeviceUID %@", dCopy];

  objc_initWeak(buf, selfCopy);
  externalObjectInterface = [(HMDMRSetEndpointVolumeOperation *)selfCopy externalObjectInterface];
  volume = [(HMDMRSetEndpointVolumeOperation *)selfCopy volume];
  [volume floatValue];
  v16 = v15;
  underlyingQueue = [(HMFOperation *)selfCopy underlyingQueue];
  LODWORD(v18) = v16;
  v19 = [externalObjectInterface setMRAVOutputDeviceVolume:endpointCopy endpoint:dCopy outputDeviceUID:underlyingQueue queue:v18];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __71__HMDMRSetEndpointVolumeOperation_setVolumeOnEndpoint_outputDeviceUID___block_invoke;
  v34[3] = &unk_2786837F8;
  v20 = dCopy;
  v35 = v20;
  v21 = [v19 flatMap:v34];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __71__HMDMRSetEndpointVolumeOperation_setVolumeOnEndpoint_outputDeviceUID___block_invoke_2;
  v32[3] = &unk_278682FB8;
  v22 = v20;
  v33 = v22;
  v23 = [v21 recover:v32];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __71__HMDMRSetEndpointVolumeOperation_setVolumeOnEndpoint_outputDeviceUID___block_invoke_3;
  v28[3] = &unk_278672BF8;
  objc_copyWeak(&v31, buf);
  v24 = v22;
  v29 = v24;
  v25 = endpointCopy;
  v30 = v25;
  v26 = [v23 addCompletionBlock:v28];

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);

  return v26;
}

id __71__HMDMRSetEndpointVolumeOperation_setVolumeOnEndpoint_outputDeviceUID___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [[HMDMROutputDeviceStatus alloc] initWithOutputUID:*(a1 + 32)];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

id __71__HMDMRSetEndpointVolumeOperation_setVolumeOnEndpoint_outputDeviceUID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2972 underlyingError:a2];
  v4 = MEMORY[0x277D2C900];
  v5 = [[HMDMROutputDeviceStatus alloc] initWithOutputUID:*(a1 + 32) error:v3];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

void __71__HMDMRSetEndpointVolumeOperation_setVolumeOnEndpoint_outputDeviceUID___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained activity];
  [v8 markWithFormat:@"Complete setMRAVOutputDeviceVolume on outputDeviceUID %@", *(a1 + 32)];

  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = *(a1 + 32);
    *buf = 138543618;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Complete setMRAVOutputDeviceVolume on outputDeviceUID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = objc_autoreleasePoolPush();
  v15 = v10;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v6)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v15 volume];
      v20 = *(a1 + 40);
      *buf = 138544130;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v6;
      v21 = "%{public}@Unable to set volume to %@ on endpoint %@ : %@";
      v22 = v17;
      v23 = OS_LOG_TYPE_ERROR;
      v24 = 42;
LABEL_8:
      _os_log_impl(&dword_229538000, v22, v23, v21, buf, v24);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v15 volume];
    v25 = *(a1 + 40);
    *buf = 138543874;
    v27 = v18;
    v28 = 2112;
    v29 = v19;
    v30 = 2112;
    v31 = v25;
    v21 = "%{public}@Sucessfully set volume to %@ on endpoint %@";
    v22 = v17;
    v23 = OS_LOG_TYPE_INFO;
    v24 = 32;
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v14);
}

- (id)getVolumeCapabilitiesForEndpoint:(id)endpoint outputDeviceUID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Begin getMRAVEndpointOutputDeviceUIDVolumeControlCapabilitiesForEndpoint on outputDeviceUID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  activity = [(HMFOperation *)selfCopy activity];
  [activity markWithFormat:@"Begin getMRAVEndpointOutputDeviceUIDVolumeControlCapabilitiesForEndpoint on outputDeviceUID %@", dCopy];

  objc_initWeak(buf, selfCopy);
  externalObjectInterface = [(HMDMRSetEndpointVolumeOperation *)selfCopy externalObjectInterface];
  underlyingQueue = [(HMFOperation *)selfCopy underlyingQueue];
  v15 = [externalObjectInterface getMRAVEndpointOutputDeviceUIDVolumeControlCapabilitiesForEndpoint:endpointCopy outputDeviceUID:dCopy queue:underlyingQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __84__HMDMRSetEndpointVolumeOperation_getVolumeCapabilitiesForEndpoint_outputDeviceUID___block_invoke;
  v21[3] = &unk_278672638;
  objc_copyWeak(&v24, buf);
  v16 = endpointCopy;
  v22 = v16;
  v17 = dCopy;
  v23 = v17;
  v18 = [v15 addCompletionBlock:v21];
  v19 = [v18 recover:&__block_literal_global_171_33830];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);

  return v19;
}

void __84__HMDMRSetEndpointVolumeOperation_getVolumeCapabilitiesForEndpoint_outputDeviceUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      *buf = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine if volume control is supported on endpoint %@ : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = objc_autoreleasePoolPush();
  v14 = WeakRetained;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = *(a1 + 40);
    *buf = 138543618;
    v20 = v16;
    v21 = 2112;
    v22 = v17;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Complete getMRAVEndpointOutputDeviceUIDVolumeControlCapabilitiesForEndpoint on outputDeviceUID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v18 = [v14 activity];
  [v18 markWithFormat:@"Complete getMRAVEndpointOutputDeviceUIDVolumeControlCapabilitiesForEndpoint on outputDeviceUID %@", *(a1 + 40)];
}

id __84__HMDMRSetEndpointVolumeOperation_getVolumeCapabilitiesForEndpoint_outputDeviceUID___block_invoke_169(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2970 underlyingError:a2];
  v3 = [MEMORY[0x277D2C900] futureWithError:v2];

  return v3;
}

- (id)connectToEndpoint:(id)endpoint connection:(id)connection
{
  v31 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  connectionCopy = connection;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = endpointCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Begin connect to endpoint %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  activity = [(HMFOperation *)selfCopy activity];
  [activity markWithFormat:@"Begin connect to endpoint %@", endpointCopy];

  objc_initWeak(buf, selfCopy);
  v13 = MEMORY[0x277D2C900];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __64__HMDMRSetEndpointVolumeOperation_connectToEndpoint_connection___block_invoke;
  v24[3] = &unk_2786725F0;
  v14 = connectionCopy;
  v25 = v14;
  v15 = endpointCopy;
  v26 = v15;
  v16 = [v13 futureWithErrorOnlyHandlerAdapterBlock:v24];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__HMDMRSetEndpointVolumeOperation_connectToEndpoint_connection___block_invoke_3;
  v21[3] = &unk_27867E1D8;
  objc_copyWeak(&v23, buf);
  v17 = v15;
  v22 = v17;
  v18 = [v16 addCompletionBlock:v21];
  v19 = [v18 recover:&__block_literal_global_161_33842];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);

  return v19;
}

void __64__HMDMRSetEndpointVolumeOperation_connectToEndpoint_connection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) mravEndpoint];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDMRSetEndpointVolumeOperation_connectToEndpoint_connection___block_invoke_2;
  v7[3] = &unk_2786725C8;
  v8 = v3;
  v6 = v3;
  [v4 connectToEndpoint:v5 completion:v7];
}

void __64__HMDMRSetEndpointVolumeOperation_connectToEndpoint_connection___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      *buf = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to connect to endpoint %@, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = [WeakRetained activity];
  [v13 markWithFormat:@"Complete connect to endpoint %@", *(a1 + 32)];

  v14 = objc_autoreleasePoolPush();
  v15 = WeakRetained;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = *(a1 + 32);
    *buf = 138543618;
    v20 = v17;
    v21 = 2112;
    v22 = v18;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Complete connect to endpoint %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
}

id __64__HMDMRSetEndpointVolumeOperation_connectToEndpoint_connection___block_invoke_159(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2971 underlyingError:a2];
  v3 = [MEMORY[0x277D2C900] futureWithError:v2];

  return v3;
}

- (id)discoverRemoteControlEndpointsForUIDs:(id)ds
{
  v19 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Begin discoverRemoteControlEndpointsMatchingUIDs", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  activity = [(HMFOperation *)selfCopy activity];
  [activity markWithReason:@"Begin discoverRemoteControlEndpointsMatchingUIDs"];

  objc_initWeak(buf, selfCopy);
  v10 = MEMORY[0x277D2C900];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__HMDMRSetEndpointVolumeOperation_discoverRemoteControlEndpointsForUIDs___block_invoke;
  v14[3] = &unk_2786725A0;
  objc_copyWeak(&v16, buf);
  v11 = dsCopy;
  v15 = v11;
  v12 = [v10 futureWithCompletionHandlerAdapterBlock:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  return v12;
}

void __73__HMDMRSetEndpointVolumeOperation_discoverRemoteControlEndpointsForUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained discovery];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__HMDMRSetEndpointVolumeOperation_discoverRemoteControlEndpointsForUIDs___block_invoke_2;
  v8[3] = &unk_278672578;
  objc_copyWeak(&v10, (a1 + 40));
  v7 = v3;
  v9 = v7;
  [v5 discoverRemoteControlEndpointsMatchingUIDs:v6 completion:v8];

  objc_destroyWeak(&v10);
}

void __73__HMDMRSetEndpointVolumeOperation_discoverRemoteControlEndpointsForUIDs___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v24 = 138543874;
    v25 = v11;
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Operation endpoints %@ : output devices %@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v9 activity];
  [v12 markWithReason:@"Completed discoverRemoteControlEndpointsMatchingUIDs"];

  v13 = objc_autoreleasePoolPush();
  v14 = v9;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v16;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Completed discoverRemoteControlEndpointsMatchingUIDs", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  if ([v5 count])
  {
    v17 = [v5 na_map:&__block_literal_global_148];
    v18 = *(*(a1 + 32) + 16);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v14;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@No endpoints found for volume operation", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = *(a1 + 32);
    v17 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2973 description:@"Could not find endpoints" underlyingError:0];
    v18 = *(v23 + 16);
  }

  v18();
}

HMDMRAVEndpoint *__73__HMDMRSetEndpointVolumeOperation_discoverRemoteControlEndpointsForUIDs___block_invoke_145(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDMRAVEndpoint alloc] initWithMRAVEndpoint:v2];

  return v3;
}

- (BOOL)cancelOnSetup
{
  selfCopy = self;
  v44 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  dependencies = [(HMDMRSetEndpointVolumeOperation *)self dependencies];
  v4 = [dependencies countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v36;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(dependencies);
        }

        v8 = *(*(&v35 + 1) + 8 * i);
        error = [v8 error];

        if (error)
        {
          v10 = objc_autoreleasePoolPush();
          v11 = selfCopy;
          v12 = selfCopy;
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = HMFGetLogIdentifier();
            *buf = 138543362;
            v40 = v14;
            _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Volume Operation canceled by dependency failure", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v10);
          activity = [(HMFOperation *)v12 activity];
          [activity markWithReason:@"Volume Operation canceled by dependency failure"];

          error2 = [v8 error];
          [(HMFOperation *)v12 cancelWithError:error2];

          selfCopy = v11;
        }
      }

      v5 = [dependencies countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v5);
  }

  routeIDs = [(HMDMRSetEndpointVolumeOperation *)selfCopy routeIDs];
  v18 = [routeIDs count];

  volume = [(HMDMRSetEndpointVolumeOperation *)selfCopy volume];
  [volume floatValue];
  if (v20 >= 0.0)
  {
    volume2 = [(HMDMRSetEndpointVolumeOperation *)selfCopy volume];
    [volume2 floatValue];
    v21 = v23 <= 1.0;
  }

  else
  {
    v21 = 0;
  }

  if (![(HMDMRSetEndpointVolumeOperation *)selfCopy isCancelled]&& (v18 == 0 || !v21))
  {
    v24 = MEMORY[0x277CCACA8];
    if (v18 != 0 || v21)
    {
      if (v18)
      {
        volume3 = [(HMDMRSetEndpointVolumeOperation *)selfCopy volume];
        v26 = [v24 stringWithFormat:@"SetVolumeOperation: volume: (%@) is invalid", volume3];
        v27 = 2967;
      }

      else
      {
        volume3 = [(HMDMRSetEndpointVolumeOperation *)selfCopy routeIDs];
        v26 = [v24 stringWithFormat:@"SetVolumeOperation: route ID: (%@) is invalid", volume3];
        v27 = 2968;
      }
    }

    else
    {
      volume3 = [(HMDMRSetEndpointVolumeOperation *)selfCopy volume];
      routeIDs2 = [(HMDMRSetEndpointVolumeOperation *)selfCopy routeIDs];
      v26 = [v24 stringWithFormat:@"SetVolumeOperation volume: (%@) and route ID: (%@) are invalid", volume3, routeIDs2];

      v27 = 2969;
    }

    v29 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:v27 description:v26 underlyingError:0];
    [(HMFOperation *)selfCopy cancelWithError:v29];

    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v33;
      v41 = 2112;
      v42 = v26;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
  }

  return [(HMDMRSetEndpointVolumeOperation *)selfCopy isCancelled];
}

- (void)generateOverallResultAndFinishWithDeviceStatuses:(id)statuses overallError:(id)error
{
  v104 = *MEMORY[0x277D85DE8];
  statusesCopy = statuses;
  errorCopy = error;
  activity = [(HMFOperation *)self activity];
  [activity markWithReason:@"Volume futures completed"];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v13 = v12 = statusesCopy;
    *buf = 138543362;
    v101 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Volume futures completed", buf, 0xCu);

    statusesCopy = v12;
  }

  objc_autoreleasePoolPop(v9);
  v14 = [statusesCopy mutableCopy];
  v15 = v14;
  if (v14)
  {
    array = v14;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v17 = array;

  v18 = MEMORY[0x277CBEB98];
  routeIDs = [(HMDMRSetEndpointVolumeOperation *)selfCopy routeIDs];
  v20 = [v18 setWithArray:routeIDs];

  v21 = MEMORY[0x277CBEB98];
  v22 = [v17 na_map:&__block_literal_global_102_33885];
  v23 = [v21 setWithArray:v22];

  v86 = v17;
  v82 = errorCopy;
  v83 = selfCopy;
  v80 = v23;
  v81 = v20;
  if (([v20 isEqualToSet:v23] & 1) == 0)
  {
    v24 = [v20 mutableCopy];
    [v24 minusSet:v23];
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v101 = v28;
      v102 = 2112;
      v103 = v24;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Couldn't discover these endpoints to set their volume: %@", buf, 0x16u);

      v17 = v86;
    }

    objc_autoreleasePoolPop(v25);
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = v24;
    v29 = [obj countByEnumeratingWithState:&v94 objects:v99 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v95;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v95 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v94 + 1) + 8 * i);
          v34 = [HMDMROutputDeviceStatus alloc];
          v35 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2966];
          v36 = [(HMDMROutputDeviceStatus *)v34 initWithOutputUID:v33 error:v35];

          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = __97__HMDMRSetEndpointVolumeOperation_generateOverallResultAndFinishWithDeviceStatuses_overallError___block_invoke_104;
          v93[3] = &unk_2786724C8;
          v93[4] = v33;
          v17 = v86;
          if (([v86 na_any:v93] & 1) == 0)
          {
            [v86 addObject:v36];
          }
        }

        v30 = [obj countByEnumeratingWithState:&v94 objects:v99 count:16];
      }

      while (v30);
    }

    v23 = v80;
    selfCopy = v83;
    v20 = v81;
  }

  if (![v17 na_any:&__block_literal_global_107])
  {
    goto LABEL_50;
  }

  obja = objc_alloc_init(MEMORY[0x277CBEB38]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v38 = [MEMORY[0x277CBEB58] set];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v39 = v17;
  v40 = [v39 countByEnumeratingWithState:&v89 objects:v98 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v90;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v90 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v89 + 1) + 8 * j);
        outputUID = [v44 outputUID];

        if (outputUID)
        {
          error = [v44 error];

          if (error)
          {
            error2 = [v44 error];
            outputUID2 = [v44 outputUID];
            [dictionary setObject:error2 forKeyedSubscript:outputUID2];
          }

          else
          {
            error2 = [v44 outputUID];
            [v38 addObject:error2];
          }
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v89 objects:v98 count:16];
    }

    while (v41);
  }

  v49 = objc_msgSend_copy(dictionary);
  [obja setObject:v49 forKeyedSubscript:@"HMD.MRSetEndpointVolumeOperation.FailedEndpoints"];

  allObjects = [v38 allObjects];
  [obja setObject:allObjects forKeyedSubscript:@"HMD.MRSetEndpointVolumeOperation.SucceededEndpoints"];

  v51 = [v39 na_map:&__block_literal_global_112_33889];
  v52 = v51;
  if (errorCopy)
  {
    firstObject = errorCopy;
  }

  else
  {
    firstObject = [v51 firstObject];
  }

  v54 = firstObject;
  [obja setObject:firstObject forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __97__HMDMRSetEndpointVolumeOperation_generateOverallResultAndFinishWithDeviceStatuses_overallError___block_invoke_4;
  v87[3] = &unk_278672530;
  v55 = v54;
  v88 = v55;
  v79 = v52;
  v56 = [v52 na_all:v87];
  v57 = v55 ? v56 : 0;
  v58 = MEMORY[0x277CCA9B8];
  if (errorCopy || v57)
  {
    domain = [v55 domain];
    code = [v55 code];
    v62 = objc_msgSend_copy(obja);
    v60 = [v58 errorWithDomain:domain code:code userInfo:v62];
  }

  else
  {
    domain = objc_msgSend_copy(obja);
    v60 = [v58 hmPrivateErrorWithCode:2965 userInfo:domain];
  }

  v63 = [v38 count];
  activity2 = [(HMFOperation *)v83 activity];
  v65 = activity2;
  v66 = v63;
  if (v63)
  {
    [activity2 markWithReason:@"finished with partial success"];

    v67 = objc_autoreleasePoolPush();
    v68 = v83;
    v69 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = HMFGetLogIdentifier();
      *buf = 138543618;
      v101 = v70;
      v102 = 2112;
      v103 = v60;
      _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@Operation finished with partial success <%@>", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v67);
    [(HMDMRSetEndpointVolumeOperation *)v68 setPartialExecutionError:v60];
  }

  else
  {
    [activity2 markWithReason:@"Canceled with error"];

    activity3 = [(HMFOperation *)v83 activity];
    [activity3 invalidate];

    v72 = objc_autoreleasePoolPush();
    v73 = v83;
    v74 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v76 = v75 = v72;
      *buf = 138543618;
      v101 = v76;
      v102 = 2112;
      v103 = v60;
      _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_ERROR, "%{public}@Operation canceled due to failure <%@>", buf, 0x16u);

      v72 = v75;
    }

    objc_autoreleasePoolPop(v72);
    [(HMFOperation *)v73 cancelWithError:v60];
  }

  errorCopy = v82;
  selfCopy = v83;
  v17 = v86;
  v23 = v80;
  v20 = v81;
  if (v66)
  {
LABEL_50:
    activity4 = [(HMFOperation *)selfCopy activity];
    [activity4 markWithReason:@"Finished with success"];

    activity5 = [(HMFOperation *)selfCopy activity];
    [activity5 invalidate];

    [(HMFOperation *)selfCopy finish];
  }
}

uint64_t __97__HMDMRSetEndpointVolumeOperation_generateOverallResultAndFinishWithDeviceStatuses_overallError___block_invoke_104(uint64_t a1, void *a2)
{
  v3 = [a2 outputUID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL __97__HMDMRSetEndpointVolumeOperation_generateOverallResultAndFinishWithDeviceStatuses_overallError___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) domain];
  v5 = [v3 domain];
  if ([v4 isEqualToString:v5])
  {
    v6 = [*(a1 + 32) code];
    v7 = v6 == [v3 code];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __97__HMDMRSetEndpointVolumeOperation_generateOverallResultAndFinishWithDeviceStatuses_overallError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 error];
  v3 = v2 != 0;

  return v3;
}

- (void)main
{
  activity = [(HMFOperation *)self activity];
  [activity markWithReason:@"Volume Operation Started"];

  if ([(HMDMRSetEndpointVolumeOperation *)self cancelOnSetup])
  {
    activity2 = [(HMFOperation *)self activity];
    [activity2 markWithReason:@"Canceled with error before starting"];

    activity3 = [(HMFOperation *)self activity];
    [activity3 invalidate];
  }

  else
  {
    externalObjectInterface = [(HMDMRSetEndpointVolumeOperation *)self externalObjectInterface];
    createAssistantDiscovery = [externalObjectInterface createAssistantDiscovery];
    [(HMDMRSetEndpointVolumeOperation *)self setDiscovery:createAssistantDiscovery];

    routeIDs = [(HMDMRSetEndpointVolumeOperation *)self routeIDs];
    v8 = [(HMDMRSetEndpointVolumeOperation *)self discoverRemoteControlEndpointsForUIDs:routeIDs];

    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __39__HMDMRSetEndpointVolumeOperation_main__block_invoke;
    v14[3] = &unk_278688A18;
    objc_copyWeak(&v15, &location);
    v9 = [v8 addFailureBlock:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_2;
    v12[3] = &unk_2786895F0;
    objc_copyWeak(&v13, &location);
    v10 = [v8 addSuccessBlock:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __39__HMDMRSetEndpointVolumeOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained generateOverallResultAndFinishWithDeviceStatuses:0 overallError:v3];
}

void __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v22 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v23 = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = *v32;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = [WeakRetained externalObjectInterface];
        v10 = [v9 createAssistantConnection];

        v11 = [WeakRetained connectToEndpoint:v8 connection:v10];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_3;
        v27[3] = &unk_278672480;
        v12 = v10;
        v28 = v12;
        objc_copyWeak(&v30, (v22 + 32));
        v29 = v8;
        v13 = [v11 flatMap:v27];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_5;
        v26[3] = &unk_278682FB8;
        v26[4] = v8;
        v14 = [v13 recover:v26];

        [v23 addObject:v14];
        objc_destroyWeak(&v30);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }

  v15 = MEMORY[0x277D2C900];
  v16 = MEMORY[0x277D2C938];
  v17 = [WeakRetained underlyingQueue];
  v18 = [v16 schedulerWithDispatchQueue:v17];
  v19 = [v15 combineAllFutures:v23 ignoringErrors:1 scheduler:v18];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_6;
  v24[3] = &unk_2786895F0;
  objc_copyWeak(&v25, (v22 + 32));
  v20 = [v19 addSuccessBlock:v24];

  objc_destroyWeak(&v25);
}

id __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_3(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v35 = a2;
  v36 = *(a1 + 32);
  v39 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained externalObjectInterface];
  v4 = [v3 copyMRAVEndpointOutputDevices:*(a1 + 40)];

  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v4;
  v41 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v41)
  {
    v40 = *v54;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v54 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v53 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        v8 = v7;

        v9 = [v8 uid];
        if (v8)
        {
          v10 = [WeakRetained routeIDs];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_81;
          v51[3] = &unk_278684F48;
          v11 = v8;
          v52 = v11;
          v12 = [v10 na_filter:v51];

          v13 = objc_autoreleasePoolPush();
          v14 = WeakRetained;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
            *buf = 138544130;
            v58 = v16;
            v59 = 2112;
            v60 = v17;
            v61 = 2112;
            v62 = v12;
            v63 = 2112;
            v64 = v11;
            _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Found %@ matching route IDs (%@) on the output device: %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v13);
          if ([v12 count])
          {
            v18 = [v14 getVolumeCapabilitiesForEndpoint:*(v39 + 40) outputDeviceUID:v9];
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_83;
            v47[3] = &unk_278672408;
            objc_copyWeak(&v50, (v39 + 48));
            v19 = v9;
            v20 = *(v39 + 40);
            v48 = v19;
            v49 = v20;
            v21 = [v18 flatMap:v47];
            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v45[2] = __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_85;
            v45[3] = &unk_278682FB8;
            v46 = v19;
            v22 = [v21 recover:v45];
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_2_87;
            v43[3] = &unk_278672458;
            v44 = v12;
            v23 = [v22 flatMap:v43];

            [v37 addObject:v23];
            objc_destroyWeak(&v50);
          }
        }

        else
        {
          v24 = objc_autoreleasePoolPush();
          v25 = WeakRetained;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543618;
            v58 = v27;
            v59 = 2112;
            v60 = v6;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Got nil output device from outputDeviceRef %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
        }
      }

      v41 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v41);
  }

  v28 = MEMORY[0x277D2C900];
  v29 = MEMORY[0x277D2C938];
  v30 = [WeakRetained underlyingQueue];
  v31 = [v29 schedulerWithDispatchQueue:v30];
  v32 = [v28 combineAllFutures:v37 ignoringErrors:1 scheduler:v31];
  v33 = [v32 flatMap:&__block_literal_global_33914];

  return v33;
}

id __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_5(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2C900];
  v4 = a2;
  v5 = [[HMDMROutputDeviceStatus alloc] initWithOutputEndpoint:*(a1 + 32) error:v4];

  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [v3 futureWithResult:v6];

  return v7;
}

void __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_6(uint64_t a1, void *a2)
{
  v4 = [a2 na_arrayByFlattening];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained generateOverallResultAndFinishWithDeviceStatuses:v4 overallError:0];
}

id __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_83(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 unsignedIntegerValue] == 2)
  {
    v5 = [WeakRetained setVolumeOnEndpoint:*(a1 + 40) outputDeviceUID:*(a1 + 32)];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = WeakRetained;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Skipping setMRAVOutputDeviceVolume on outputDeviceUID %@. Volume not controllable with given capabilities: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = MEMORY[0x277D2C900];
    v12 = [[HMDMROutputDeviceStatus alloc] initWithOutputUID:*(a1 + 32)];
    v5 = [v11 futureWithResult:v12];
  }

  return v5;
}

id __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_85(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D2C900];
  v4 = a2;
  v5 = [[HMDMROutputDeviceStatus alloc] initWithOutputUID:*(a1 + 32) error:v4];

  v6 = [v3 futureWithResult:v5];

  return v6;
}

id __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_2_87(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v5 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_3_88;
  v10[3] = &unk_278672430;
  v11 = v3;
  v6 = v3;
  v7 = [v5 na_map:v10];
  v8 = [v4 futureWithResult:v7];

  return v8;
}

id __39__HMDMRSetEndpointVolumeOperation_main__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 na_arrayByFlattening];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

HMDMROutputDeviceStatus *__39__HMDMRSetEndpointVolumeOperation_main__block_invoke_3_88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMDMROutputDeviceStatus alloc];
  v5 = [*(a1 + 32) error];
  v6 = [(HMDMROutputDeviceStatus *)v4 initWithOutputUID:v3 error:v5];

  return v6;
}

- (HMDMRSetEndpointVolumeOperation)initWithRouteIDs:(id)ds volume:(id)volume
{
  volumeCopy = volume;
  dsCopy = ds;
  v8 = objc_alloc_init(HMDMRSetEndpointVolumeOperationDefaultExternalObjectInterface);
  v9 = [(HMDMRSetEndpointVolumeOperation *)self initWithRouteIDs:dsCopy volume:volumeCopy externalObjectInterface:v8];

  return v9;
}

- (HMDMRSetEndpointVolumeOperation)initWithRouteIDs:(id)ds volume:(id)volume externalObjectInterface:(id)interface
{
  dsCopy = ds;
  volumeCopy = volume;
  interfaceCopy = interface;
  v21.receiver = self;
  v21.super_class = HMDMRSetEndpointVolumeOperation;
  v11 = [(HMFOperation *)&v21 initWithTimeout:0.0];
  if (v11)
  {
    v12 = MEMORY[0x277CCABB0];
    [volumeCopy floatValue];
    *&v14 = v13 / 100.0;
    v15 = [v12 numberWithFloat:v14];
    volume = v11->_volume;
    v11->_volume = v15;

    v17 = objc_msgSend_copy(dsCopy);
    routeIDs = v11->_routeIDs;
    v11->_routeIDs = v17;

    objc_storeStrong(&v11->_externalObjectInterface, interface);
    v19 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"HMDMRSetEndpointVolumeOperation"];
    [(HMFOperation *)v11 setActivity:v19];
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24, &__block_literal_global_190);
  }

  v3 = logCategory__hmf_once_v25;

  return v3;
}

void __46__HMDMRSetEndpointVolumeOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v25;
  logCategory__hmf_once_v25 = v0;
}

@end