@interface HMDUserMessageFilter
+ (BOOL)areWeGoingToRejectMessage:(id)message basedOnRemoteAccessPolicy:(id)policy forUser:(id)user;
+ (id)homeForMessage:(id)message userPolicy:(id)policy dispatcher:(id)dispatcher;
+ (id)logCategory;
+ (int64_t)filterMessage:(id)message withPolicies:(id)policies dispatcher:(id)dispatcher error:(id *)error;
@end

@implementation HMDUserMessageFilter

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_156122 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_156122, &__block_literal_global_156123);
  }

  v3 = logCategory__hmf_once_v8_156124;

  return v3;
}

uint64_t __35__HMDUserMessageFilter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_156124;
  logCategory__hmf_once_v8_156124 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (BOOL)areWeGoingToRejectMessage:(id)message basedOnRemoteAccessPolicy:(id)policy forUser:(id)user
{
  messageCopy = message;
  userCopy = user;
  policyCopy = policy;
  home = [userCopy home];
  requiresRemoteAccess = [policyCopy requiresRemoteAccess];

  v12 = requiresRemoteAccess && ([userCopy isRemoteAccessAllowed] & 1) == 0 && objc_msgSend(messageCopy, "isRemote") && (objc_msgSend(messageCopy, "remoteRestriction") & 0xE) == 0 && (objc_msgSend(home, "isResidentFirstAccessoryCommunicationEnabled") & 1) != 0;
  return v12;
}

+ (int64_t)filterMessage:(id)message withPolicies:(id)policies dispatcher:(id)dispatcher error:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  policiesCopy = policies;
  dispatcherCopy = dispatcher;
  proxyConnection = [messageCopy proxyConnection];

  isRemote = [messageCopy isRemote];
  v15 = isRemote;
  if (proxyConnection || isRemote)
  {
    v17 = [self policyOfClass:objc_opt_class() fromPolicies:policiesCopy];
    if (!v17)
    {
      v16 = 1;
LABEL_42:

      goto LABEL_43;
    }

    v18 = [self homeForMessage:messageCopy userPolicy:v17 dispatcher:dispatcherCopy];
    if (!v18)
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        shortDescription = [messageCopy shortDescription];
        *buf = 138543618;
        v64 = v32;
        v65 = 2112;
        v66 = shortDescription;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@The home is no longer valid for message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:0 reason:@"Home is no longer valid." suggestion:0 underlyingError:0];
      }

      v16 = -1;
      v18 = 0;
      goto LABEL_41;
    }

    v19 = [messageCopy userForHome:v18];
    v20 = v19;
    if (v19)
    {
      if (HMDUserPrivilegeCompare([v19 privilege], objc_msgSend(v17, "userPrivilege")) == -1)
      {
        v62 = v20;
        v41 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v61 = HMFGetLogIdentifier();
          shortDescription2 = [v20 shortDescription];
          name = [messageCopy name];
          userPrivilege = [v17 userPrivilege];
          if (userPrivilege > 4)
          {
            v45 = @"None";
          }

          else
          {
            v45 = off_279730DF8[userPrivilege];
          }

          v54 = v45;
          privilege = [v20 privilege];
          if (privilege > 4)
          {
            v47 = @"None";
          }

          else
          {
            v47 = off_279730DF8[privilege];
          }

          v53 = v47;
          *buf = 138544386;
          v64 = v61;
          v65 = 2112;
          v66 = shortDescription2;
          v67 = 2112;
          v68 = name;
          v69 = 2112;
          v70 = v54;
          v71 = 2112;
          v72 = v53;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Insufficient privilege for user: [%@] [%@] / (required: %@, actual: %@)", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v41);
        if (!error)
        {
          goto LABEL_39;
        }

        v27 = MEMORY[0x277CCA9B8];
        v28 = 17;
      }

      else
      {
        if (![self areWeGoingToRejectMessage:messageCopy basedOnRemoteAccessPolicy:v17 forUser:v20])
        {
          if (v15 && [v17 requiresCameraStreamingAccess] && (objc_msgSend(v20, "camerasAccessLevel"), (HMUserIsStreamingAllowedWithCameraAccessLevel() & 1) == 0))
          {
            v49 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v51 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v52 = HMFGetLogIdentifier();
              *buf = 138543362;
              v64 = v52;
              _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_ERROR, "%{public}@User does not have access to view remote camera streams", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v49);
            v16 = -1;
          }

          else
          {
            v16 = 1;
          }

          goto LABEL_40;
        }

        v62 = v20;
        v21 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v24 = v57 = v21;
          [messageCopy shortDescription];
          v25 = v59 = v18;
          shortDescription3 = [v62 shortDescription];
          *buf = 138543874;
          v64 = v24;
          v65 = 2112;
          v66 = v25;
          v67 = 2112;
          v68 = shortDescription3;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Message %@ arrived on a non-direct transport from user does not have remote access: %@", buf, 0x20u);

          v18 = v59;
          v21 = v57;
        }

        objc_autoreleasePoolPop(v21);
        if (!error)
        {
LABEL_39:
          v16 = -1;
          v20 = v62;
LABEL_40:

LABEL_41:
          goto LABEL_42;
        }

        v27 = MEMORY[0x277CCA9B8];
        v28 = 10;
      }

      v40 = [v27 hmErrorWithCode:{v28, v53}];
    }

    else
    {
      v62 = 0;
      v34 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v37 = v58 = v34;
        shortDescription4 = [v18 shortDescription];
        [messageCopy shortDescription];
        v39 = v60 = v18;
        *buf = 138543874;
        v64 = v37;
        v65 = 2112;
        v66 = shortDescription4;
        v67 = 2112;
        v68 = v39;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine user of home, %@, for message: %@", buf, 0x20u);

        v18 = v60;
        v34 = v58;
      }

      objc_autoreleasePoolPop(v34);
      if (!error)
      {
        goto LABEL_39;
      }

      v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:0 reason:@"Unable to determine user." suggestion:0 underlyingError:0];
    }

    *error = v40;
    goto LABEL_39;
  }

  v16 = 0;
LABEL_43:

  return v16;
}

+ (id)homeForMessage:(id)message userPolicy:(id)policy dispatcher:(id)dispatcher
{
  messageCopy = message;
  policyCopy = policy;
  dispatcherCopy = dispatcher;
  home = [policyCopy home];
  if (!home)
  {
    if ([policyCopy validForAnyHomeTheUserIsPartOf])
    {
      v11 = dispatcherCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        destination = [messageCopy destination];
        target = [destination target];
        home = [v13 homeForMessageTarget:target];
      }

      else
      {
        home = 0;
      }
    }

    else
    {
      home = 0;
    }
  }

  return home;
}

@end