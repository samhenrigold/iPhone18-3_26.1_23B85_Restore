@interface HMDHelper
- (HMDHelper)initWithExternalProtocol:(id)protocol;
- (id)hashedRouteIDForIdentifier:(id)identifier;
@end

@implementation HMDHelper

- (id)hashedRouteIDForIdentifier:(id)identifier
{
  v43 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    externalProtocol = [(HMDHelper *)self externalProtocol];
    createAFSecurityConnection = [externalProtocol createAFSecurityConnection];

    if (!createAFSecurityConnection)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        LODWORD(v38) = 138543362;
        *(&v38 + 4) = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot set up a connection to assistantServices framework to hash the routeID", &v38, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v14 = 0;
      goto LABEL_15;
    }

    v7 = dispatch_group_create();
    *&v38 = 0;
    *(&v38 + 1) = &v38;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__242489;
    v41 = __Block_byref_object_dispose__242490;
    v42 = 0;
    dispatch_group_enter(v7);
    v8 = [identifierCopy dataUsingEncoding:4];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __40__HMDHelper_hashedRouteIDForIdentifier___block_invoke;
    v30[3] = &unk_2786842D8;
    v33 = &v38;
    v31 = createAFSecurityConnection;
    v9 = v7;
    v32 = v9;
    [v31 processData:v8 usingProcedure:1 completion:v30];
    v10 = dispatch_time(0, 15000000000);
    if (dispatch_group_wait(v9, v10))
    {
      v11 = objc_autoreleasePoolPush();
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v13;
        v36 = 2112;
        v37 = identifierCopy;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Timed out encoding routeID %@", buf, 0x16u);
      }
    }

    else
    {
      v22 = *(*(&v38 + 1) + 40);
      if (v22)
      {
        v14 = [v22 base64EncodedStringWithOptions:0];
        v23 = objc_autoreleasePoolPush();
        if (v14)
        {
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v25 = HMFGetLogIdentifier();
            *buf = 138543618;
            v35 = v25;
            v36 = 2112;
            v37 = v14;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Base64-converted hashedRouteUID %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          goto LABEL_8;
        }

        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          v29 = *(*(&v38 + 1) + 40);
          *buf = 138543618;
          v35 = v28;
          v36 = 2112;
          v37 = v29;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to base64 encode hashedRouteUIDData %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
LABEL_7:
        v14 = 0;
LABEL_8:

        _Block_object_dispose(&v38, 8);
LABEL_15:

        goto LABEL_16;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v26;
        v36 = 2112;
        v37 = identifierCopy;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode routeID %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_7;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    LODWORD(v38) = 138543362;
    *(&v38 + 4) = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@nil routeID - nothing to hash", &v38, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v14 = 0;
LABEL_16:

  return v14;
}

void __40__HMDHelper_hashedRouteIDForIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Hashed routeUID as %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  dispatch_group_leave(*(a1 + 40));
}

- (HMDHelper)initWithExternalProtocol:(id)protocol
{
  protocolCopy = protocol;
  v9.receiver = self;
  v9.super_class = HMDHelper;
  v6 = [(HMDHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_externalProtocol, protocol);
  }

  return v7;
}

@end