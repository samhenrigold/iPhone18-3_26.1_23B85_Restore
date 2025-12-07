@interface HMDCloudShareParticipantsManager
+ (id)logCategory;
- (BOOL)isAcceptedParticipatingUser:(id)user;
- (HMDCloudShareParticipantsManager)initWithQueue:(id)queue cloudZone:(id)zone home:(id)home;
- (HMDCloudShareParticipantsManagerDataSource)dataSource;
- (HMDCloudShareParticipantsManagerDelegate)delegate;
- (HMDHome)home;
- (NSSet)participatingUsers;
- (id)_fetchInvitationContextForUser:(id)user shouldGrantWriteAccess:(BOOL)access;
- (id)_fetchInvitationToUser:(id)user shouldGrantWriteAccess:(BOOL)access;
- (id)_fetchUntrustedInvitationContextForUser:(id)user shouldGrantWriteAccess:(BOOL)access;
- (id)logIdentifier;
- (void)_inviteUser:(id)user usingDevice:(id)device;
- (void)clearParticipants;
- (void)configure;
- (void)handleHomeDataLoadedNotification:(id)notification;
- (void)handleHomeUserAddedNotification:(id)notification;
- (void)handleHomeUserRemovedNotification:(id)notification;
- (void)inviteUser:(id)user usingDevice:(id)device;
- (void)updateShareParticipants;
@end

@implementation HMDCloudShareParticipantsManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDCloudShareParticipantsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDCloudShareParticipantsManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  cloudZone = [(HMDCloudShareParticipantsManager *)self cloudZone];
  zoneID = [cloudZone zoneID];
  name = [zoneID name];

  return name;
}

- (void)handleHomeDataLoadedNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = notificationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Handling home data loaded notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDCloudShareParticipantsManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDCloudShareParticipantsManager_handleHomeDataLoadedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);
}

- (void)handleHomeUserRemovedNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = notificationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Handling home user removed notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDCloudShareParticipantsManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDCloudShareParticipantsManager_handleHomeUserRemovedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);
}

- (void)handleHomeUserAddedNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = notificationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Handling home user added notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDCloudShareParticipantsManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDCloudShareParticipantsManager_handleHomeUserAddedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);
}

- (id)_fetchUntrustedInvitationContextForUser:(id)user shouldGrantWriteAccess:(BOOL)access
{
  accessCopy = access;
  v30 = *MEMORY[0x277D85DE8];
  userCopy = user;
  workQueue = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accountHandle = [userCopy accountHandle];
  type = [accountHandle type];

  if (type)
  {
    if (type == 2)
    {
      v15 = objc_alloc(MEMORY[0x277D17120]);
      uuid = [userCopy uuid];
      accountHandle2 = [userCopy accountHandle];
      value = [accountHandle2 value];
      v14 = [v15 initWithParticipantClientIdentifier:uuid phoneNumber:value];
    }

    else
    {
      if (type != 1)
      {
        v16 = 0;
        goto LABEL_11;
      }

      v10 = objc_alloc(MEMORY[0x277D17120]);
      uuid = [userCopy uuid];
      accountHandle2 = [userCopy accountHandle];
      value = [accountHandle2 value];
      v14 = [v10 initWithParticipantClientIdentifier:uuid emailAddress:value];
    }

    v16 = v14;

LABEL_11:
    [v16 setShouldGrantWriteAccess:accessCopy];
    v23 = [MEMORY[0x277D2C900] futureWithResult:v16];
    goto LABEL_12;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    accountHandle3 = [userCopy accountHandle];
    v26 = 138543618;
    v27 = v20;
    v28 = 2112;
    v29 = accountHandle3;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@User's account handle was of unknown type: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v22 = MEMORY[0x277D2C900];
  v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
  v23 = [v22 futureWithError:v16];
LABEL_12:
  v24 = v23;

  return v24;
}

- (id)_fetchInvitationContextForUser:(id)user shouldGrantWriteAccess:(BOOL)access
{
  accessCopy = access;
  v35 = *MEMORY[0x277D85DE8];
  userCopy = user;
  workQueue = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDCloudShareParticipantsManager *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [dataSource canUseUntrustedAccountHandlesForParticipantManager:self])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [userCopy shortDescription];
      *buf = 138543618;
      v32 = v12;
      v33 = 2112;
      v34 = shortDescription;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Fetching share invitation context using untrusted account handle for user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [(HMDCloudShareParticipantsManager *)selfCopy _fetchUntrustedInvitationContextForUser:userCopy shouldGrantWriteAccess:accessCopy];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      shortDescription2 = [userCopy shortDescription];
      *buf = 138543618;
      v32 = v18;
      v33 = 2112;
      v34 = shortDescription2;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Fetching invitation context for user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    fetchCloudShareID = [userCopy fetchCloudShareID];
    v21 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDCloudShareParticipantsManager *)selfCopy2 workQueue];
    v23 = [v21 schedulerWithDispatchQueue:workQueue2];
    v24 = [fetchCloudShareID reschedule:v23];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __90__HMDCloudShareParticipantsManager__fetchInvitationContextForUser_shouldGrantWriteAccess___block_invoke;
    v30[3] = &unk_2797359D8;
    v30[4] = selfCopy2;
    v25 = [v24 addFailureBlock:v30];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __90__HMDCloudShareParticipantsManager__fetchInvitationContextForUser_shouldGrantWriteAccess___block_invoke_20;
    v27[3] = &unk_27972B038;
    v27[4] = selfCopy2;
    v28 = userCopy;
    v29 = accessCopy;
    v14 = [v24 flatMap:v27];
  }

  return v14;
}

void __90__HMDCloudShareParticipantsManager__fetchInvitationContextForUser_shouldGrantWriteAccess___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch invitation context due to cloud share ID future error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

id __90__HMDCloudShareParticipantsManager__fetchInvitationContextForUser_shouldGrantWriteAccess___block_invoke_20(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) shortDescription];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Creating share invitation context for user %@ using trusted cloud share id: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = objc_alloc(MEMORY[0x277D17120]);
  v10 = [*(a1 + 40) uuid];
  v11 = [v9 initWithParticipantClientIdentifier:v10 cloudShareID:v3];

  [v11 setShouldGrantWriteAccess:*(a1 + 48)];
  v12 = [MEMORY[0x277D2C900] futureWithResult:v11];

  return v12;
}

- (id)_fetchInvitationToUser:(id)user shouldGrantWriteAccess:(BOOL)access
{
  accessCopy = access;
  v25 = *MEMORY[0x277D85DE8];
  userCopy = user;
  workQueue = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v20 = v11;
    v21 = 2112;
    v22 = userCopy;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching invitation to user %@ with write access: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDCloudShareParticipantsManager *)selfCopy _fetchInvitationContextForUser:userCopy shouldGrantWriteAccess:accessCopy];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__HMDCloudShareParticipantsManager__fetchInvitationToUser_shouldGrantWriteAccess___block_invoke;
  v18[3] = &unk_2797359D8;
  v18[4] = selfCopy;
  v14 = [v13 addFailureBlock:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__HMDCloudShareParticipantsManager__fetchInvitationToUser_shouldGrantWriteAccess___block_invoke_16;
  v17[3] = &unk_27972B010;
  v17[4] = selfCopy;
  v15 = [v13 flatMap:v17];

  return v15;
}

void __82__HMDCloudShareParticipantsManager__fetchInvitationToUser_shouldGrantWriteAccess___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch invitation context: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

id __82__HMDCloudShareParticipantsManager__fetchInvitationToUser_shouldGrantWriteAccess___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 cloudZone];
  v6 = [v5 fetchInvitationWithContext:v4];

  v7 = MEMORY[0x277D2C938];
  v8 = [*(a1 + 32) workQueue];
  v9 = [v7 schedulerWithDispatchQueue:v8];
  v10 = [v6 reschedule:v9];

  return v10;
}

- (void)_inviteUser:(id)user usingDevice:(id)device
{
  v36 = *MEMORY[0x277D85DE8];
  userCopy = user;
  deviceCopy = device;
  workQueue = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDCloudShareParticipantsManager *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v10 = [dataSource manager:self shouldGrantWriteAccessToUser:userCopy];
  }

  else
  {
    v10 = 0;
  }

  cloudZone = [(HMDCloudShareParticipantsManager *)self cloudZone];
  uuid = [userCopy uuid];
  v13 = [cloudZone participantWithClientIdentifier:uuid];

  if ([v13 hasAccepted])
  {
    if (v10 != [v13 hasWriteAccess])
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        [v13 hasWriteAccess];
        v18 = HMFBooleanToString();
        HMFBooleanToString();
        v19 = v24 = v14;
        *buf = 138544130;
        v29 = v17;
        v30 = 2112;
        v31 = v18;
        v32 = 2112;
        v33 = v19;
        v34 = 2112;
        v35 = userCopy;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating write access from %@ to %@ for user %@", buf, 0x2Au);

        v14 = v24;
      }

      objc_autoreleasePoolPop(v14);
      cloudZone2 = [(HMDCloudShareParticipantsManager *)selfCopy cloudZone];
      v21 = [cloudZone2 setWriteAccessEnabled:v10 forParticipant:v13];
    }
  }

  else
  {
    v22 = [(HMDCloudShareParticipantsManager *)self _fetchInvitationToUser:userCopy shouldGrantWriteAccess:v10];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __60__HMDCloudShareParticipantsManager__inviteUser_usingDevice___block_invoke;
    v25[3] = &unk_27972AFE8;
    v25[4] = self;
    v26 = userCopy;
    v27 = deviceCopy;
    v23 = [v22 addCompletionBlock:v25];
  }
}

void __60__HMDCloudShareParticipantsManager__inviteUser_usingDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  if (v5)
  {
    v8 = [*(a1 + 32) delegate];
    v9 = *(a1 + 48);
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v13)
      {
        v14 = HMFGetLogIdentifier();
        v15 = *(a1 + 48);
        v23 = 138543874;
        v24 = v14;
        v25 = 2112;
        v26 = v5;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending invitation %@ to device: %@", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [v8 manager:*(a1 + 32) didRequestSendForInvitation:v5 toDevice:*(a1 + 48)];
    }

    else
    {
      if (v13)
      {
        v21 = HMFGetLogIdentifier();
        v22 = *(a1 + 40);
        v23 = 138543874;
        v24 = v21;
        v25 = 2112;
        v26 = v5;
        v27 = 2112;
        v28 = v22;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending invitation %@ to user: %@", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [v8 manager:*(a1 + 32) didRequestSendForInvitation:v5 toUser:*(a1 + 40)];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 40);
      v23 = 138543874;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not create invitation to send to user %@: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

- (BOOL)isAcceptedParticipatingUser:(id)user
{
  userCopy = user;
  cloudZone = [(HMDCloudShareParticipantsManager *)self cloudZone];
  uuid = [userCopy uuid];

  v7 = [cloudZone participantWithClientIdentifier:uuid];

  LOBYTE(cloudZone) = [v7 hasAccepted];
  return cloudZone;
}

- (void)clearParticipants
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Clearing share participants", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  cloudZone = [(HMDCloudShareParticipantsManager *)selfCopy cloudZone];
  participants = [cloudZone participants];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = participants;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        cloudZone2 = [(HMDCloudShareParticipantsManager *)selfCopy cloudZone];
        v16 = [cloudZone2 revokeShareAccessForParticipant:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)inviteUser:(id)user usingDevice:(id)device
{
  v26 = *MEMORY[0x277D85DE8];
  userCopy = user;
  deviceCopy = device;
  workQueue = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (([userCopy isCurrentUser] & 1) != 0 || (-[HMDCloudShareParticipantsManager dataSource](self, "dataSource"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "manager:shouldShareWithUser:", self, userCopy), v9, (v10 & 1) == 0))
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v19;
      v22 = 2112;
      v23 = userCopy;
      v24 = 2112;
      v25 = deviceCopy;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Not inviting ineligible user %@ using device: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      shortDescription = [userCopy shortDescription];
      v20 = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = shortDescription;
      v24 = 2112;
      v25 = deviceCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Inviting user %@ using device: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCloudShareParticipantsManager *)selfCopy2 _inviteUser:userCopy usingDevice:deviceCopy];
  }
}

- (void)updateShareParticipants
{
  v84 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDCloudShareParticipantsManager *)self home];
  v5 = home;
  if (!home)
  {
    v44 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543362;
      v78 = v47;
      v48 = "%{public}@Not updating share participants because home reference is nil";
      v49 = v46;
      v50 = OS_LOG_TYPE_DEFAULT;
LABEL_38:
      _os_log_impl(&dword_2531F8000, v49, v50, v48, buf, 0xCu);
    }

LABEL_39:

    objc_autoreleasePoolPop(v44);
    goto LABEL_44;
  }

  homeManager = [home homeManager];
  hasLoadedData = [homeManager hasLoadedData];

  if ((hasLoadedData & 1) == 0)
  {
    v44 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543362;
      v78 = v47;
      v48 = "%{public}@Not updating share participants because home manager has not finished loading data";
      v49 = v46;
      v50 = OS_LOG_TYPE_INFO;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  dataSource = [(HMDCloudShareParticipantsManager *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([dataSource areShareModificationsEnabledForManager:self] & 1) == 0)
  {
    v51 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      v54 = HMFGetLogIdentifier();
      *buf = 138543362;
      v78 = v54;
      _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_DEBUG, "%{public}@Not updating share participants because share modifications are disabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v51);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v78 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating share participants", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    cloudZone = [(HMDCloudShareParticipantsManager *)selfCopy4 cloudZone];
    participants = [cloudZone participants];

    v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(participants, "count")}];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = participants;
    v16 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v74;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v74 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v73 + 1) + 8 * i);
          clientIdentifier = [v20 clientIdentifier];
          [v15 setObject:v20 forKeyedSubscript:clientIdentifier];
        }

        v17 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
      }

      while (v17);
    }

    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    v69 = 0u;
    users = [v5 users];
    v23 = [users countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v70;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v70 != v25)
          {
            objc_enumerationMutation(users);
          }

          v27 = *(*(&v69 + 1) + 8 * j);
          if (([v27 isCurrentUser] & 1) == 0 && objc_msgSend(dataSource, "manager:shouldShareWithUser:", selfCopy4, v27))
          {
            [(HMDCloudShareParticipantsManager *)selfCopy4 _inviteUser:v27 usingDevice:0];
            uuid = [v27 uuid];
            [v15 setObject:0 forKeyedSubscript:uuid];
          }
        }

        v24 = [users countByEnumeratingWithState:&v69 objects:v82 count:16];
      }

      while (v24);
    }

    v58 = selfCopy4;
    v59 = v5;
    v55 = dataSource;

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v29 = v15;
    v60 = [v29 countByEnumeratingWithState:&v65 objects:v81 count:16];
    if (v60)
    {
      v57 = *v66;
      do
      {
        for (k = 0; k != v60; ++k)
        {
          if (*v66 != v57)
          {
            objc_enumerationMutation(v29);
          }

          v31 = *(*(&v65 + 1) + 8 * k);
          v32 = [v29 objectForKeyedSubscript:v31];
          v33 = objc_autoreleasePoolPush();
          v34 = v58;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v78 = v36;
            v79 = 2112;
            v80 = v32;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Revoking cloud share for existing cloud share participant: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
          cloudZone2 = [(HMDCloudShareParticipantsManager *)v34 cloudZone];
          v38 = [cloudZone2 revokeShareAccessForParticipant:v32];
          v39 = MEMORY[0x277D2C938];
          workQueue2 = [(HMDCloudShareParticipantsManager *)v34 workQueue];
          v41 = [v39 schedulerWithDispatchQueue:workQueue2];
          v42 = [v38 reschedule:v41];
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __59__HMDCloudShareParticipantsManager_updateShareParticipants__block_invoke;
          v61[3] = &unk_27972E568;
          v62 = v59;
          v63 = v31;
          v64 = v34;
          v43 = [v42 addSuccessBlock:v61];
        }

        v60 = [v29 countByEnumeratingWithState:&v65 objects:v81 count:16];
      }

      while (v60);
    }

    v5 = v59;
    dataSource = v55;
  }

LABEL_44:
}

void __59__HMDCloudShareParticipantsManager_updateShareParticipants__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userWithUUID:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 48) delegate];
    [v3 manager:*(a1 + 48) didRevokeShareAccessForUser:v4];

    v2 = v4;
  }
}

- (void)configure
{
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDCloudShareParticipantsManager *)self home];
  v5 = home;
  if (home)
  {
    homeManager = [home homeManager];
    if (homeManager)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_handleHomeUserAddedNotification_ name:@"HMDHomeUserAddedNotification" object:v5];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:v5];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter3 addObserver:self selector:sel_handleHomeDataLoadedNotification_ name:@"HMDHomeManagerHomeDataLoadedNotification" object:homeManager];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Not configuring participants manager because home manager reference is nil", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Not configuring participants manager because home reference is nil", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (NSSet)participatingUsers
{
  cloudZone = [(HMDCloudShareParticipantsManager *)self cloudZone];
  participants = [cloudZone participants];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDCloudShareParticipantsManager_participatingUsers__block_invoke;
  v7[3] = &unk_27972AFC0;
  v7[4] = self;
  v5 = [participants na_map:v7];

  return v5;
}

id __54__HMDCloudShareParticipantsManager_participatingUsers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 home];
  v5 = [v3 clientIdentifier];

  v6 = [v4 userWithUUID:v5];

  return v6;
}

- (HMDCloudShareParticipantsManager)initWithQueue:(id)queue cloudZone:(id)zone home:(id)home
{
  queueCopy = queue;
  zoneCopy = zone;
  homeCopy = home;
  v15.receiver = self;
  v15.super_class = HMDCloudShareParticipantsManager;
  v12 = [(HMDCloudShareParticipantsManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, queue);
    objc_storeStrong(&v13->_cloudZone, zone);
    objc_storeWeak(&v13->_home, homeCopy);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_108159 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_108159, &__block_literal_global_108160);
  }

  v3 = logCategory__hmf_once_v25_108161;

  return v3;
}

uint64_t __47__HMDCloudShareParticipantsManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v25_108161;
  logCategory__hmf_once_v25_108161 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end