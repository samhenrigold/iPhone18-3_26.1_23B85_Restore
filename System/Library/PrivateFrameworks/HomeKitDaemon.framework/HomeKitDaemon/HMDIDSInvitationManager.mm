@interface HMDIDSInvitationManager
+ (id)logCategory;
- (BOOL)_resolveAccountWithMergeID:(id)d fromAddress:(id)address;
- (HMDHomeManager)homeManager;
- (HMDIDSInvitationManager)initWithHomeManager:(id)manager messageDispatcher:(id)dispatcher queue:(id)queue remoteAccountManager:(id)accountManager;
- (HMDIDSInvitationManager)initWithHomeManager:(id)manager messageDispatcher:(id)dispatcher queue:(id)queue remoteAccountManager:(id)accountManager idsInvitationManager:(id)invitationManager;
- (id)_receivedInvitationWithUniqueID:(id)d;
- (id)_sendOptions:(BOOL)options;
- (id)_sentInvitationWithUniqueID:(id)d;
- (void)_cancelIDSSentInvitations:(id)invitations;
- (void)_cancelPendingIDSSentInvitationForHomeInvitationID:(id)d completionBlock:(id)block;
- (void)acceptInvitationWithIDSIdentifier:(id)identifier homeInvitationID:(id)d dictionary:(id)dictionary completionBlock:(id)block;
- (void)auditIDSSentInvitationsUsingCurrentInvitationUUIDs:(id)ds;
- (void)cancelInvitationWithIDSIdentifier:(id)identifier homeInvitationID:(id)d completionBlock:(id)block;
- (void)declineInvitationWithIDSIdentifier:(id)identifier homeInvitationID:(id)d completionBlock:(id)block;
- (void)handleForwardedAcceptance:(id)acceptance;
- (void)manager:(id)manager incomingInvitation:(id)invitation;
- (void)manager:(id)manager receiverDidAcceptInvitation:(id)invitation;
- (void)manager:(id)manager receiverDidDeclineInvitation:(id)invitation;
- (void)manager:(id)manager senderDidCancelInvitation:(id)invitation;
- (void)sendInvitationToDestination:(id)destination expirationDate:(id)date dictionary:(id)dictionary homeInvitationID:(id)d isRestrictedGuestInvitation:(BOOL)invitation completionBlock:(id)block;
@end

@implementation HMDIDSInvitationManager

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)handleForwardedAcceptance:(id)acceptance
{
  v53[5] = *MEMORY[0x277D85DE8];
  acceptanceCopy = acceptance;
  v5 = MEMORY[0x277CBEB98];
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v53[2] = objc_opt_class();
  v53[3] = objc_opt_class();
  v53[4] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:5];
  v7 = [v5 setWithArray:v6];

  v8 = [acceptanceCopy stringForKey:@"HMDInvitationForwardMessageHomeUUIDKey"];
  v9 = [acceptanceCopy stringForKey:@"HMDInvitationForwardMessageInvitationUUIDKey"];
  v10 = [acceptanceCopy stringForKey:@"HMDInvitationForwardMessageOriginKey"];
  v11 = [acceptanceCopy stringForKey:@"HMDInvitationForwardMessageOriginMergeIDKey"];
  if (v8)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
  }

  else
  {
    v12 = 0;
  }

  v13 = [acceptanceCopy dataForKey:@"HMDInvitationForwardMessageOriginPayloadKey"];
  if (v9)
  {
    v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
  }

  else
  {
    v14 = 0;
  }

  v30 = v13;
  v31 = v9;
  v40 = 0;
  v15 = [MEMORY[0x277CCAAC8] _strictlyUnarchivedObjectOfClasses:v7 fromData:v13 error:&v40];
  v32 = v40;
  v33 = v14;
  if (!v10 || !v11 || !v12 || !v15 || !v14)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v25 = contexta = v8;
      *buf = 138544642;
      v42 = v25;
      v43 = 2112;
      v44 = v10;
      v45 = 2112;
      v46 = v11;
      v47 = 2112;
      v48 = v12;
      v49 = 2112;
      v50 = v15;
      v51 = 2112;
      v52 = v32;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Missing info on forwarded acceptance message (origin: %@ mergeID: %@ home: %@ payload: %@), error %@", buf, 0x3Eu);

      v8 = contexta;
    }

    v26 = v22;
    goto LABEL_22;
  }

  v16 = [(HMDIDSInvitationManager *)self _resolveAccountWithMergeID:v11 fromAddress:v10];
  context = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  v19 = v18;
  if (!v16)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v27;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to process forwarded shared user invitation acceptance due to remote account resolving error", buf, 0xCu);
    }

    v26 = context;
LABEL_22:
    objc_autoreleasePoolPop(v26);
    goto LABEL_23;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544130;
    v42 = v20;
    v43 = 2112;
    v44 = v10;
    v45 = 2112;
    v46 = v11;
    v47 = 2112;
    v48 = v12;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Processing forwarded invitation acceptance from user %@/%@ for home %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(context);
  workQueue = [(HMDIDSInvitationManager *)selfCopy2 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDIDSInvitationManager_handleForwardedAcceptance___block_invoke;
  block[3] = &unk_278683598;
  block[4] = selfCopy2;
  v35 = v33;
  v36 = v12;
  v37 = v15;
  v38 = v10;
  v39 = v11;
  dispatch_async(workQueue, block);

LABEL_23:
}

void __53__HMDIDSInvitationManager_handleForwardedAcceptance___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeManager];
  [v2 handleAcceptRequestForIDSInvitationWithIdentifier:*(a1 + 40) homeUUID:*(a1 + 48) payload:*(a1 + 56) fromAddress:*(a1 + 64) fromMergeID:*(a1 + 72)];
}

- (void)manager:(id)manager receiverDidDeclineInvitation:(id)invitation
{
  v33 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  invitationCopy = invitation;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    senderMergeID = [invitationCopy senderMergeID];
    *buf = 138543874;
    v28 = v11;
    v29 = 2112;
    v30 = invitationCopy;
    v31 = 2112;
    v32 = senderMergeID;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received incoming request to decline invitation %@ with mergeID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  context = [invitationCopy context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    context2 = [invitationCopy context];
    workQueue = [(HMDIDSInvitationManager *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HMDIDSInvitationManager_manager_receiverDidDeclineInvitation___block_invoke;
    block[3] = &unk_27868A010;
    v24 = invitationCopy;
    v25 = context2;
    v26 = selfCopy;
    v17 = context2;
    dispatch_async(workQueue, block);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      uniqueID = [invitationCopy uniqueID];
      *buf = 138543874;
      v28 = v21;
      v29 = 2112;
      v30 = uniqueID;
      v31 = 2112;
      v32 = invitationCopy;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Expected invitation (%@) with IDSDictionaryInvitationContext context but got different type %@. Dropping invitation", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }
}

void __64__HMDIDSInvitationManager_manager_receiverDidDeclineInvitation___block_invoke(id *a1)
{
  v2 = [a1[4] destination];
  v3 = [v2 destinationURIs];
  v10 = [v3 anyObject];

  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [a1[5] dictionary];
  v6 = [v5 hmf_stringForKey:*MEMORY[0x277CD0640]];
  v7 = [v4 initWithUUIDString:v6];

  v8 = [a1[6] homeManager];
  v9 = [a1[4] uniqueID];
  [v8 handleDeclineRequestForIDSInvitationWithIdentifier:v9 fromAddress:v10 homeUUID:v7];
}

- (void)manager:(id)manager receiverDidAcceptInvitation:(id)invitation
{
  v93 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  invitationCopy = invitation;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    senderMergeID = [invitationCopy senderMergeID];
    *buf = 138543874;
    v88 = v11;
    v89 = 2112;
    v90 = invitationCopy;
    v91 = 2112;
    v92 = senderMergeID;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received incoming request to accept invitation %@ with mergeID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  homeManager = [(HMDIDSInvitationManager *)selfCopy homeManager];
  context = [invitationCopy context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (homeManager)
    {
      destination = [invitationCopy destination];
      destinationURIs = [destination destinationURIs];
      anyObject = [destinationURIs anyObject];

      senderMergeID2 = [invitationCopy senderMergeID];
      LOBYTE(destinationURIs) = [(HMDIDSInvitationManager *)selfCopy _resolveAccountWithMergeID:senderMergeID2 fromAddress:anyObject];

      if ((destinationURIs & 1) == 0)
      {
        v35 = objc_autoreleasePoolPush();
        v36 = selfCopy;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v88 = v38;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Unable to process shared user invitation acceptance due to remote account resolving error", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v35);
        goto LABEL_35;
      }

      context2 = [invitationCopy context];
      dictionary = [context2 dictionary];
      v22 = objc_alloc(MEMORY[0x277CCAD78]);
      v76 = dictionary;
      v23 = [dictionary hmf_stringForKey:*MEMORY[0x277CD0640]];
      v24 = [v22 initWithUUIDString:v23];

      v77 = v24;
      v75 = [homeManager _homeWithUUID:v24];
      primaryResident = [v75 primaryResident];
      v26 = primaryResident;
      if (primaryResident)
      {
        if ([primaryResident isCurrentDevice])
        {
          workQueue = [(HMDIDSInvitationManager *)selfCopy workQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __63__HMDIDSInvitationManager_manager_receiverDidAcceptInvitation___block_invoke;
          block[3] = &unk_278689550;
          v80 = homeManager;
          v81 = invitationCopy;
          v28 = v77;
          v82 = v77;
          v29 = v76;
          v83 = v76;
          v84 = anyObject;
          dispatch_async(workQueue, block);

LABEL_34:
LABEL_35:

          goto LABEL_36;
        }

        device = [v26 device];

        context = objc_autoreleasePoolPush();
        v44 = selfCopy;
        v45 = HMFGetOSLogHandle();
        v46 = v45;
        if (device)
        {
          v73 = context2;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543874;
            v88 = v47;
            v89 = 2112;
            v90 = v26;
            v91 = 2112;
            v92 = v77;
            _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Forwarding invitation acceptance to %@ as the local device is no longer the primary for %@.", buf, 0x20u);
          }

          objc_autoreleasePoolPop(context);
          v48 = [HMDRemoteDeviceMessageDestination alloc];
          uuid = [homeManager uuid];
          [v26 device];
          v50 = v66 = v44;
          v51 = [(HMDRemoteDeviceMessageDestination *)v48 initWithTarget:uuid device:v50];

          v78 = 0;
          v29 = v76;
          v52 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v76 requiringSecureCoding:1 error:&v78];
          v69 = v51;
          contexta = v78;
          v68 = v52;
          if (contexta)
          {
            v53 = objc_autoreleasePoolPush();
            v54 = v66;
            v55 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v56 = v67 = v53;
              *buf = 138543874;
              v88 = v56;
              v89 = 2112;
              v90 = contexta;
              v91 = 2112;
              v92 = v76;
              _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Error %@ while encoding payload for forwarding invitation acceptance: %@", buf, 0x20u);

              v53 = v67;
            }

            objc_autoreleasePoolPop(v53);
            v28 = v77;
            v57 = v69;
          }

          else
          {
            v86[0] = anyObject;
            v85[0] = @"HMDInvitationForwardMessageOriginKey";
            v85[1] = @"HMDInvitationForwardMessageOriginMergeIDKey";
            senderMergeID3 = [invitationCopy senderMergeID];
            v86[1] = senderMergeID3;
            v85[2] = @"HMDInvitationForwardMessageHomeUUIDKey";
            v28 = v77;
            uUIDString = [v77 UUIDString];
            v86[2] = uUIDString;
            v86[3] = v52;
            v85[3] = @"HMDInvitationForwardMessageOriginPayloadKey";
            v85[4] = @"HMDInvitationForwardMessageInvitationUUIDKey";
            uniqueID = [invitationCopy uniqueID];
            uUIDString2 = [uniqueID UUIDString];
            v86[4] = uUIDString2;
            v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:5];

            v57 = v69;
            v63 = [MEMORY[0x277D0F848] messageWithName:@"HMDInvitationForwardMessage" destination:v69 payload:v62];
            messageDispatcher = [(HMDIDSInvitationManager *)v66 messageDispatcher];
            [messageDispatcher sendMessage:v63 completionHandler:0];

            v29 = v76;
          }

          context2 = v73;
          goto LABEL_34;
        }

        v58 = v44;
        v29 = v76;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v74 = HMFGetLogIdentifier();
          *buf = 138543618;
          v88 = v74;
          v89 = 2112;
          v90 = v77;
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Unable to process shared user invitation acceptance as the primary resident for home %@ has no device", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        v40 = selfCopy;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v42 = v72 = context2;
          *buf = 138543618;
          v88 = v42;
          v89 = 2112;
          v90 = v77;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to process shared user invitation acceptance as there is no primary resident for home %@", buf, 0x16u);

          context2 = v72;
        }

        objc_autoreleasePoolPop(v39);
        v29 = v76;
      }

      v28 = v77;
      goto LABEL_34;
    }

    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v88 = v33;
      v89 = 2112;
      v90 = invitationCopy;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Received shared user invitation acceptance for invitation %@ but there's no home manager.", buf, 0x16u);
      goto LABEL_13;
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      uniqueID2 = [invitationCopy uniqueID];
      *buf = 138543874;
      v88 = v33;
      v89 = 2112;
      v90 = uniqueID2;
      v91 = 2112;
      v92 = invitationCopy;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Expected invitation (%@) with IDSDictionaryInvitationContext context but got different type %@. Dropping invitation", buf, 0x20u);

LABEL_13:
    }
  }

  objc_autoreleasePoolPop(v30);
LABEL_36:
}

void __63__HMDIDSInvitationManager_manager_receiverDidAcceptInvitation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [*(a1 + 40) uniqueID];
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) senderMergeID];
  [v2 handleAcceptRequestForIDSInvitationWithIdentifier:v7 homeUUID:v5 payload:v3 fromAddress:v4 fromMergeID:v6];
}

- (void)manager:(id)manager senderDidCancelInvitation:(id)invitation
{
  v20 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  invitationCopy = invitation;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = invitationCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Incoming request to cancel invitation %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMDIDSInvitationManager *)selfCopy workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__HMDIDSInvitationManager_manager_senderDidCancelInvitation___block_invoke;
  v14[3] = &unk_27868A750;
  v14[4] = selfCopy;
  v15 = invitationCopy;
  v13 = invitationCopy;
  dispatch_async(workQueue, v14);
}

void __61__HMDIDSInvitationManager_manager_senderDidCancelInvitation___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) homeManager];
  v2 = [*(a1 + 40) uniqueID];
  [v3 handleCancelRequestForIDSInvitationWithIdentifier:v2];
}

- (void)manager:(id)manager incomingInvitation:(id)invitation
{
  v38 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  invitationCopy = invitation;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    fromID = [invitationCopy fromID];
    senderMergeID = [invitationCopy senderMergeID];
    *buf = 138544387;
    v29 = v11;
    v30 = 2112;
    v31 = invitationCopy;
    v32 = 2160;
    v33 = 1752392040;
    v34 = 2112;
    v35 = fromID;
    v36 = 2113;
    v37 = senderMergeID;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received incoming invitation %@ from user %{mask.hash}@ with mergeID %{private}@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v8);
  context = [invitationCopy context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    context2 = [invitationCopy context];
    workQueue = [(HMDIDSInvitationManager *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HMDIDSInvitationManager_manager_incomingInvitation___block_invoke;
    block[3] = &unk_27868A010;
    v25 = invitationCopy;
    v26 = selfCopy;
    v27 = context2;
    v18 = context2;
    dispatch_async(workQueue, block);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      uniqueID = [invitationCopy uniqueID];
      *buf = 138543874;
      v29 = v22;
      v30 = 2112;
      v31 = uniqueID;
      v32 = 2112;
      v33 = invitationCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Expected invitation (%@) with IDSDictionaryInvitationContext context but got different type %@. Dropping invitation", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }
}

void __54__HMDIDSInvitationManager_manager_incomingInvitation___block_invoke(id *a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] fromID];
  v3 = [HMDAccountHandle accountHandleForDestination:v2];
  v4 = [a1[4] senderMergeID];
  v5 = [HMDAccountIdentifier accountIdentifierForSenderCorrelationIdentifier:v4];

  v6 = [HMDAccount alloc];
  v27[0] = v3;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v8 = [(HMDAccount *)v6 initWithIdentifier:v5 handles:v7 devices:MEMORY[0x277CBEBF8]];

  v9 = objc_autoreleasePoolPush();
  v10 = a1[5];
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v20 = v3;
    v13 = v12 = v2;
    v14 = [a1[4] uniqueID];
    v15 = [v14 UUIDString];
    *buf = 138543874;
    v22 = v13;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Calling handleAccessHomeInviteFromAccount for invite %@ with account %@", buf, 0x20u);

    v2 = v12;
    v3 = v20;
  }

  objc_autoreleasePoolPop(v9);
  v16 = [a1[5] homeManager];
  v17 = [a1[4] senderMergeID];
  v18 = [a1[4] uniqueID];
  v19 = [a1[6] dictionary];
  [v16 handleReceivedIDSInviteFromAccount:v8 mergeID:v17 idsInvitationIdentifier:v18 payload:v19];
}

- (BOOL)_resolveAccountWithMergeID:(id)d fromAddress:(id)address
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  addressCopy = address;
  v8 = [HMDDeviceHandle deviceHandleForDestination:addressCopy];
  v9 = [HMDAccountHandle accountHandleForDestination:addressCopy];
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v13;
      v22 = 2160;
      v23 = 1752392040;
      v24 = 2112;
      v25 = addressCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse sender address: %{mask.hash}@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v18 = 0;
  }

  else
  {
    v14 = [HMDAccountIdentifier accountIdentifierForSenderCorrelationIdentifier:dCopy];
    v15 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v8 accountHandle:v9 accountIdentifier:v14 deviceVersion:0 pairingIdentityIdentifier:0];
    remoteAccountManager = [(HMDIDSInvitationManager *)self remoteAccountManager];
    v17 = [remoteAccountManager accountForSenderContext:v15];
    v18 = v17 != 0;
  }

  return v18;
}

- (void)cancelInvitationWithIDSIdentifier:(id)identifier homeInvitationID:(id)d completionBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  blockCopy = block;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v33 = v14;
    v34 = 2112;
    v35 = dCopy;
    v36 = 2112;
    v37 = identifierCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Request to cancelInvitationWithIdentifier (homeID:%@) idsID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  if (identifierCopy)
  {
    v15 = [(HMDIDSInvitationManager *)selfCopy _sentInvitationWithUniqueID:identifierCopy];
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    v19 = v18;
    if (v15)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v33 = v20;
        v34 = 2112;
        v35 = dCopy;
        v36 = 2112;
        v37 = v15;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending cancellation for invite (homeID:%@) %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      idsInvitationManager = v17->_idsInvitationManager;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __94__HMDIDSInvitationManager_cancelInvitationWithIDSIdentifier_homeInvitationID_completionBlock___block_invoke;
      v28[3] = &unk_27868A528;
      v28[4] = v17;
      v29 = dCopy;
      v30 = identifierCopy;
      v31 = blockCopy;
      [(IDSInvitationManager *)idsInvitationManager cancelInvitation:v15 serverAcknowledgedBlock:v28];
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v26;
        v34 = 2112;
        v35 = identifierCopy;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not find pending invite with ID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if (blockCopy)
      {
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
        (*(blockCopy + 2))(blockCopy, identifierCopy, v27);
      }

      v15 = 0;
    }

    goto LABEL_17;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v25;
    v34 = 2112;
    v35 = dCopy;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@A IDS invite must be provided for home invite %@, cannot cancel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  if (blockCopy)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:20 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v15);
LABEL_17:
  }
}

void __94__HMDIDSInvitationManager_cancelInvitationWithIDSIdentifier_homeInvitationID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received response for cancelInvitation (homeID:%@) idsID %@, error %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 48), v3);
  }
}

- (void)acceptInvitationWithIDSIdentifier:(id)identifier homeInvitationID:(id)d dictionary:(id)dictionary completionBlock:(id)block
{
  v44 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  dictionaryCopy = dictionary;
  blockCopy = block;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544130;
    v37 = v17;
    v38 = 2112;
    v39 = dCopy;
    v40 = 2112;
    v41 = identifierCopy;
    v42 = 2112;
    v43 = dictionaryCopy;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Request to acceptInvitationWithIDSIdentifier (homeID:%@) idsID %@ payload %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  if (identifierCopy)
  {
    v18 = [(HMDIDSInvitationManager *)selfCopy _receivedInvitationWithUniqueID:identifierCopy];
    v19 = [objc_alloc(MEMORY[0x277D186F0]) initWithDictionary:dictionaryCopy schema:@"hk-invite-v1"];
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    v23 = v22;
    if (v18)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v24;
        v38 = 2112;
        v39 = dCopy;
        v40 = 2112;
        v41 = v18;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Sending accept for invite (homeID:%@) %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      idsInvitationManager = v21->_idsInvitationManager;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __105__HMDIDSInvitationManager_acceptInvitationWithIDSIdentifier_homeInvitationID_dictionary_completionBlock___block_invoke;
      v32[3] = &unk_27868A528;
      v32[4] = v21;
      v33 = dCopy;
      v34 = identifierCopy;
      v35 = blockCopy;
      [(IDSInvitationManager *)idsInvitationManager acceptInvitation:v18 withContext:v19 serverAcknowledgedBlock:v32];
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v30;
        v38 = 2112;
        v39 = identifierCopy;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not find received invite with ID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      if (blockCopy)
      {
        v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
        (*(blockCopy + 2))(blockCopy, identifierCopy, v31);
      }
    }

    goto LABEL_17;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v29;
    v38 = 2112;
    v39 = dCopy;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@A IDS invite must be provided for home invite %@, cannot accept", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  if (blockCopy)
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:20 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v18);
LABEL_17:
  }
}

void __105__HMDIDSInvitationManager_acceptInvitationWithIDSIdentifier_homeInvitationID_dictionary_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received response for acceptInvitation (homeID:%@) idsID %@, error %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 48), v3);
  }
}

- (void)declineInvitationWithIDSIdentifier:(id)identifier homeInvitationID:(id)d completionBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  blockCopy = block;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v33 = v14;
    v34 = 2112;
    v35 = dCopy;
    v36 = 2112;
    v37 = identifierCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Request to declineInvitationWithIDSIdentifier (homeID:%@) idsID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  if (identifierCopy)
  {
    v15 = [(HMDIDSInvitationManager *)selfCopy _receivedInvitationWithUniqueID:identifierCopy];
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    v19 = v18;
    if (v15)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v33 = v20;
        v34 = 2112;
        v35 = dCopy;
        v36 = 2112;
        v37 = v15;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending decline for invite (homeID:%@) %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      idsInvitationManager = v17->_idsInvitationManager;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __95__HMDIDSInvitationManager_declineInvitationWithIDSIdentifier_homeInvitationID_completionBlock___block_invoke;
      v28[3] = &unk_27868A528;
      v28[4] = v17;
      v29 = dCopy;
      v30 = identifierCopy;
      v31 = blockCopy;
      [(IDSInvitationManager *)idsInvitationManager declineInvitation:v15 serverAcknowledgedBlock:v28];
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v26;
        v34 = 2112;
        v35 = identifierCopy;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not find received invite with ID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if (blockCopy)
      {
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
        (*(blockCopy + 2))(blockCopy, identifierCopy, v27);
      }

      v15 = 0;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v25;
      v34 = 2112;
      v35 = dCopy;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@A IDS invite must be provided for home invite %@, cannot decline", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0, v15);
    }
  }
}

void __95__HMDIDSInvitationManager_declineInvitationWithIDSIdentifier_homeInvitationID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received response for declineInvitation (homeID:%@) idsID %@, error %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 48), v3);
  }
}

- (void)_cancelPendingIDSSentInvitationForHomeInvitationID:(id)d completionBlock:(id)block
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Checking for an existing IDSSentInvitation to cancel for homeInvitationID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = __Block_byref_object_copy__99142;
  v41 = __Block_byref_object_dispose__99143;
  v42 = 0;
  pendingInvitations = [(IDSInvitationManager *)selfCopy->_idsInvitationManager pendingInvitations];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __94__HMDIDSInvitationManager__cancelPendingIDSSentInvitationForHomeInvitationID_completionBlock___block_invoke;
  v30[3] = &unk_278677D88;
  v30[4] = selfCopy;
  v13 = dCopy;
  v31 = v13;
  v32 = buf;
  [pendingInvitations hmf_enumerateWithAutoreleasePoolUsingBlock:v30];

  v14 = *(*&buf[8] + 40) == 0;
  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  if (v14)
  {
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *v33 = 138543362;
      v34 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@No existing IDSSentInvitation found to cancel", v33, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0, 0);
    }
  }

  else
  {
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(*&buf[8] + 40);
      *v33 = 138543874;
      v34 = v18;
      v35 = 2112;
      v36 = v13;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending cancellation for pending invite (homeID:%@) %@", v33, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    uniqueID = [*(*&buf[8] + 40) uniqueID];
    idsInvitationManager = selfCopy->_idsInvitationManager;
    v22 = *(*&buf[8] + 40);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __94__HMDIDSInvitationManager__cancelPendingIDSSentInvitationForHomeInvitationID_completionBlock___block_invoke_39;
    v26[3] = &unk_27868A528;
    v26[4] = v16;
    v27 = v13;
    v23 = uniqueID;
    v28 = v23;
    v29 = blockCopy;
    [(IDSInvitationManager *)idsInvitationManager cancelInvitation:v22 serverAcknowledgedBlock:v26];
  }

  _Block_object_dispose(buf, 8);
}

void __94__HMDIDSInvitationManager__cancelPendingIDSSentInvitationForHomeInvitationID_completionBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 context];
  v8 = [v7 dictionary];
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@IDSSentInvitation: %@, payload: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [v8 hmf_UUIDForKey:@"kInvitationIdentifierKey"];
  if ([v13 hmf_isEqualToUUID:*(a1 + 40)])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __94__HMDIDSInvitationManager__cancelPendingIDSSentInvitationForHomeInvitationID_completionBlock___block_invoke_39(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received response for cancelInvitation (homeID:%@) idsID %@, error %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 48), v3);
  }
}

- (void)sendInvitationToDestination:(id)destination expirationDate:(id)date dictionary:(id)dictionary homeInvitationID:(id)d isRestrictedGuestInvitation:(BOOL)invitation completionBlock:(id)block
{
  v50 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  dateCopy = date;
  dictionaryCopy = dictionary;
  dCopy = d;
  blockCopy = block;
  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138544386;
    v41 = v22;
    v42 = 2112;
    v43 = dCopy;
    v44 = 2112;
    v45 = destinationCopy;
    v46 = 2112;
    v47 = dateCopy;
    v48 = 2112;
    v49 = dictionaryCopy;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Request to sendInvitationToDestination (homeID:%@) for destination %@ expirationDate %@, payload: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v19);
  v23 = [objc_alloc(MEMORY[0x277D186F0]) initWithDictionary:dictionaryCopy schema:@"hk-invite-v1"];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __142__HMDIDSInvitationManager_sendInvitationToDestination_expirationDate_dictionary_homeInvitationID_isRestrictedGuestInvitation_completionBlock___block_invoke;
  aBlock[3] = &unk_278677DB0;
  aBlock[4] = selfCopy;
  v38 = dCopy;
  v39 = blockCopy;
  v24 = blockCopy;
  v25 = dCopy;
  v26 = _Block_copy(aBlock);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __142__HMDIDSInvitationManager_sendInvitationToDestination_expirationDate_dictionary_homeInvitationID_isRestrictedGuestInvitation_completionBlock___block_invoke_37;
  v31[3] = &unk_278677DD8;
  v31[4] = selfCopy;
  v32 = destinationCopy;
  v33 = dateCopy;
  v34 = v23;
  invitationCopy = invitation;
  v35 = v26;
  v27 = v26;
  v28 = v23;
  v29 = dateCopy;
  v30 = destinationCopy;
  [(HMDIDSInvitationManager *)selfCopy _cancelPendingIDSSentInvitationForHomeInvitationID:v25 completionBlock:v31];
}

void __142__HMDIDSInvitationManager_sendInvitationToDestination_expirationDate_dictionary_homeInvitationID_isRestrictedGuestInvitation_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = [v5 uniqueID];
    v15 = 138544130;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received server response for invitation (homeID:%@): IDSID %@ with error %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = [v5 uniqueID];
    (*(v13 + 16))(v13, v14, v6);
  }
}

void __142__HMDIDSInvitationManager_sendInvitationToDestination_expirationDate_dictionary_homeInvitationID_isRestrictedGuestInvitation_completionBlock___block_invoke_37(uint64_t a1)
{
  v6 = [*(a1 + 32) idsInvitationManager];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) _sendOptions:*(a1 + 72)];
  [v6 sendInvitationToDestination:v4 expirationDate:v2 context:v3 options:v5 serverAcknowledgedBlock:*(a1 + 64)];
}

- (void)_cancelIDSSentInvitations:(id)invitations
{
  v36 = *MEMORY[0x277D85DE8];
  invitationsCopy = invitations;
  workQueue = [(HMDIDSInvitationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 1;
  v6 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = invitationsCopy;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v7)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        dispatch_group_enter(v6);
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v32 = v13;
          v33 = 2112;
          v34 = v9;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending cancellation for existing sent invite %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        idsInvitationManager = self->_idsInvitationManager;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __53__HMDIDSInvitationManager__cancelIDSSentInvitations___block_invoke;
        v22[3] = &unk_278688518;
        v22[4] = v9;
        v22[5] = selfCopy;
        v24 = v29;
        v23 = v6;
        [(IDSInvitationManager *)idsInvitationManager cancelInvitation:v9 serverAcknowledgedBlock:v22];
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v7);
  }

  workQueue2 = [(HMDIDSInvitationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDIDSInvitationManager__cancelIDSSentInvitations___block_invoke_34;
  block[3] = &unk_27868A4D8;
  block[4] = self;
  v20 = obj;
  v21 = v29;
  v16 = obj;
  dispatch_group_notify(v6, workQueue2, block);

  _Block_object_dispose(v29, 8);
}

void __53__HMDIDSInvitationManager__cancelIDSSentInvitations___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) uniqueID];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543874;
      v12 = v9;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to cancel existing sent invite idsID %@, error %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Successfully canceled existing sent invite idsID %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __53__HMDIDSInvitationManager__cancelIDSSentInvitations___block_invoke_34(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) count];
    v7 = HMFBooleanToString();
    v8 = 138543874;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Canceling [%lu] existing IDSSentInvitations finished, all succeeded: %@", &v8, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)auditIDSSentInvitationsUsingCurrentInvitationUUIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = dsCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Auditing existing IDSSentInvitations using allow set: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__99142;
  v19 = __Block_byref_object_dispose__99143;
  array = [MEMORY[0x277CBEB18] array];
  pendingInvitations = [(IDSInvitationManager *)selfCopy->_idsInvitationManager pendingInvitations];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HMDIDSInvitationManager_auditIDSSentInvitationsUsingCurrentInvitationUUIDs___block_invoke;
  v13[3] = &unk_278677D88;
  v10 = dsCopy;
  v14 = v10;
  v15 = selfCopy;
  v16 = buf;
  [pendingInvitations hmf_enumerateWithAutoreleasePoolUsingBlock:v13];

  workQueue = [(HMDIDSInvitationManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDIDSInvitationManager_auditIDSSentInvitationsUsingCurrentInvitationUUIDs___block_invoke_31;
  block[3] = &unk_27868A688;
  block[4] = selfCopy;
  block[5] = buf;
  dispatch_async(workQueue, block);

  _Block_object_dispose(buf, 8);
}

void __78__HMDIDSInvitationManager_auditIDSSentInvitationsUsingCurrentInvitationUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 uniqueID];
  v5 = [*(a1 + 32) containsObject:v4];
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    v11 = 138543874;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Should cancel %@, IDSSentInvitation: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  if ((v5 & 1) == 0)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
  }
}

void __78__HMDIDSInvitationManager_auditIDSSentInvitationsUsingCurrentInvitationUUIDs___block_invoke_31(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_copy(*(*(*(a1 + 40) + 8) + 40), a2);
  [v2 _cancelIDSSentInvitations:v3];
}

- (id)_sendOptions:(BOOL)options
{
  optionsCopy = options;
  v29 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  if (optionsCopy)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D188F8]];
    [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D18638]];
  }

  homeManager = [(HMDIDSInvitationManager *)self homeManager];
  appleAccountManager = [homeManager appleAccountManager];
  account = [appleAccountManager account];
  primaryDisplayHandle = [account primaryDisplayHandle];
  v11 = [primaryDisplayHandle URI];
  prefixedURI = [v11 prefixedURI];

  if (prefixedURI)
  {
    [v5 setObject:prefixedURI forKeyedSubscript:*MEMORY[0x277D185E0]];
    v13 = v5;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      homeManager2 = [(HMDIDSInvitationManager *)selfCopy homeManager];
      appleAccountManager2 = [homeManager2 appleAccountManager];
      account2 = [appleAccountManager2 account];
      primaryHandle = [account2 primaryHandle];
      v23 = 138543874;
      v24 = v17;
      v25 = 2160;
      v26 = 1752392040;
      v27 = 2112;
      v28 = primaryHandle;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to extract fromID for current account's primary handle: %{mask.hash}@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  return v13;
}

- (id)_receivedInvitationWithUniqueID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    receivedInvitations = [(IDSInvitationManager *)self->_idsInvitationManager receivedInvitations];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__HMDIDSInvitationManager__receivedInvitationWithUniqueID___block_invoke;
    v12[3] = &unk_278677D60;
    v13 = dCopy;
    v6 = [receivedInvitations na_firstObjectPassingTest:v12];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@A IDS invite ID must be provided to find matching received invitation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  return v6;
}

uint64_t __59__HMDIDSInvitationManager__receivedInvitationWithUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)_sentInvitationWithUniqueID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    pendingInvitations = [(IDSInvitationManager *)self->_idsInvitationManager pendingInvitations];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__HMDIDSInvitationManager__sentInvitationWithUniqueID___block_invoke;
    v12[3] = &unk_278677D38;
    v13 = dCopy;
    v6 = [pendingInvitations na_firstObjectPassingTest:v12];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@A IDS invite ID must be provided to find matching sent invitation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  return v6;
}

uint64_t __55__HMDIDSInvitationManager__sentInvitationWithUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (HMDIDSInvitationManager)initWithHomeManager:(id)manager messageDispatcher:(id)dispatcher queue:(id)queue remoteAccountManager:(id)accountManager idsInvitationManager:(id)invitationManager
{
  v66 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  accountManagerCopy = accountManager;
  invitationManagerCopy = invitationManager;
  v59.receiver = self;
  v59.super_class = HMDIDSInvitationManager;
  v15 = [(HMDIDSInvitationManager *)&v59 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    v44 = queueCopy;
    v45 = dispatcherCopy;
    v46 = managerCopy;
    objc_storeWeak(&v15->_homeManager, managerCopy);
    objc_storeStrong(p_isa + 3, queue);
    objc_storeStrong(p_isa + 2, dispatcher);
    objc_storeStrong(p_isa + 4, accountManager);
    objc_storeStrong(p_isa + 5, invitationManager);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [p_isa[5] pendingInvitations];
    v17 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v56;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v56 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v55 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          v23 = p_isa;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            uniqueID = [v21 uniqueID];
            uUIDString = [uniqueID UUIDString];
            *buf = 138543618;
            v62 = v25;
            v63 = 2112;
            v64 = uUIDString;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Found pending sent invite: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v22);
        }

        v18 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v18);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obja = [p_isa[5] receivedInvitations];
    v28 = [obja countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v52;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v52 != v30)
          {
            objc_enumerationMutation(obja);
          }

          v32 = *(*(&v51 + 1) + 8 * j);
          v33 = objc_autoreleasePoolPush();
          v34 = p_isa;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            uniqueID2 = [v32 uniqueID];
            uUIDString2 = [uniqueID2 UUIDString];
            *buf = 138543618;
            v62 = v36;
            v63 = 2112;
            v64 = uUIDString2;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Found pending received invite: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
        }

        v29 = [obja countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v29);
    }

    [p_isa[5] setDelegate:p_isa queue:p_isa[3]];
    dispatcherCopy = v45;
    managerCopy = v46;
    queueCopy = v44;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = p_isa;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = HMFGetLogIdentifier();
    *buf = 138543362;
    v62 = v42;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Initialized HMDIDSInvitationManager since modern transport is enabled", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v39);
  return v40;
}

- (HMDIDSInvitationManager)initWithHomeManager:(id)manager messageDispatcher:(id)dispatcher queue:(id)queue remoteAccountManager:(id)accountManager
{
  v10 = MEMORY[0x277D18730];
  accountManagerCopy = accountManager;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  managerCopy = manager;
  v15 = [[v10 alloc] initWithServiceIdentifier:@"com.apple.private.alloy.home.invite"];
  v16 = [(HMDIDSInvitationManager *)self initWithHomeManager:managerCopy messageDispatcher:dispatcherCopy queue:queueCopy remoteAccountManager:accountManagerCopy idsInvitationManager:v15];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t52 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t52, &__block_literal_global_99178);
  }

  v3 = logCategory__hmf_once_v53;

  return v3;
}

void __38__HMDIDSInvitationManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v53;
  logCategory__hmf_once_v53 = v0;
}

@end