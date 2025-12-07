@interface HMDHomeActivityHomeAwayUserStatesDetails
- (BOOL)_isUserConfirmedAtHome:(id)home;
- (BOOL)_isUserConfirmedAway:(id)away;
- (BOOL)areUsersAtHome:(id)home;
- (BOOL)areUsersNotAtHome:(id)home;
- (BOOL)isAnyUserAtHome;
- (BOOL)isNoUserAtHome;
- (BOOL)isUserAtHome:(id)home;
- (BOOL)isUserNotAtHome:(id)home;
- (HMDHome)home;
- (HMDHomeActivityHomeAwayUserStatesDetails)initWithMap:(id)map home:(id)home;
- (NSString)description;
- (id)detailForUser:(id)user;
@end

@implementation HMDHomeActivityHomeAwayUserStatesDetails

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  userActivityStateMap = [(HMDHomeActivityHomeAwayUserStatesDetails *)self userActivityStateMap];
  v4 = [v2 stringWithFormat:@"[HMDHomeActivityHomeAwayUserStatesDetails: %@", userActivityStateMap];

  return v4;
}

- (BOOL)_isUserConfirmedAway:(id)away
{
  v17 = *MEMORY[0x277D85DE8];
  awayCopy = away;
  userActivityStateMap = [(HMDHomeActivityHomeAwayUserStatesDetails *)self userActivityStateMap];
  v6 = [userActivityStateMap objectForKeyedSubscript:awayCopy];

  if (v6)
  {
    isNotAtHome = [v6 isNotAtHome];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = awayCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Did not find the user in user activity map: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    isNotAtHome = 0;
  }

  return isNotAtHome;
}

- (BOOL)_isUserConfirmedAtHome:(id)home
{
  v17 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  userActivityStateMap = [(HMDHomeActivityHomeAwayUserStatesDetails *)self userActivityStateMap];
  v6 = [userActivityStateMap objectForKeyedSubscript:homeCopy];

  if (v6)
  {
    isAtHome = [v6 isAtHome];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = homeCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Did not find the user in user activity map: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    isAtHome = 0;
  }

  return isAtHome;
}

- (BOOL)isAnyUserAtHome
{
  v13 = *MEMORY[0x277D85DE8];
  userActivityStateMap = [(HMDHomeActivityHomeAwayUserStatesDetails *)self userActivityStateMap];
  if ([userActivityStateMap count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__HMDHomeActivityHomeAwayUserStatesDetails_isAnyUserAtHome__block_invoke;
    v10[3] = &unk_278671850;
    v10[4] = self;
    v4 = [userActivityStateMap na_any:v10];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@isAnyUserAtHome : HomeAway map is empty, returning NO", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  return v4;
}

- (BOOL)isNoUserAtHome
{
  v13 = *MEMORY[0x277D85DE8];
  userActivityStateMap = [(HMDHomeActivityHomeAwayUserStatesDetails *)self userActivityStateMap];
  if ([userActivityStateMap count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__HMDHomeActivityHomeAwayUserStatesDetails_isNoUserAtHome__block_invoke;
    v10[3] = &unk_278671850;
    v10[4] = self;
    v4 = [userActivityStateMap na_allSatisfy:v10];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@isNoUserAtHome : HomeAway map is empty, returning NO", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  return v4;
}

- (BOOL)areUsersNotAtHome:(id)home
{
  homeCopy = home;
  if ([homeCopy count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__HMDHomeActivityHomeAwayUserStatesDetails_areUsersNotAtHome___block_invoke;
    v7[3] = &unk_278688680;
    v7[4] = self;
    v5 = [homeCopy na_all:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __62__HMDHomeActivityHomeAwayUserStatesDetails_areUsersNotAtHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 _isUserConfirmedAway:v3];

  return v4;
}

- (BOOL)areUsersAtHome:(id)home
{
  homeCopy = home;
  if ([homeCopy count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__HMDHomeActivityHomeAwayUserStatesDetails_areUsersAtHome___block_invoke;
    v7[3] = &unk_278688680;
    v7[4] = self;
    v5 = [homeCopy na_all:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __59__HMDHomeActivityHomeAwayUserStatesDetails_areUsersAtHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 _isUserConfirmedAtHome:v3];

  return v4;
}

- (BOOL)isUserNotAtHome:(id)home
{
  uuid = [home uuid];
  LOBYTE(self) = [(HMDHomeActivityHomeAwayUserStatesDetails *)self _isUserConfirmedAway:uuid];

  return self;
}

- (BOOL)isUserAtHome:(id)home
{
  uuid = [home uuid];
  LOBYTE(self) = [(HMDHomeActivityHomeAwayUserStatesDetails *)self _isUserConfirmedAtHome:uuid];

  return self;
}

- (id)detailForUser:(id)user
{
  userCopy = user;
  userActivityStateMap = [(HMDHomeActivityHomeAwayUserStatesDetails *)self userActivityStateMap];
  uuid = [userCopy uuid];

  v7 = [userActivityStateMap objectForKeyedSubscript:uuid];

  return v7;
}

- (HMDHomeActivityHomeAwayUserStatesDetails)initWithMap:(id)map home:(id)home
{
  mapCopy = map;
  homeCopy = home;
  v12.receiver = self;
  v12.super_class = HMDHomeActivityHomeAwayUserStatesDetails;
  v8 = [(HMDHomeActivityHomeAwayUserStatesDetails *)&v12 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(mapCopy);
    userActivityStateMap = v8->_userActivityStateMap;
    v8->_userActivityStateMap = v9;

    objc_storeWeak(&v8->_home, homeCopy);
  }

  return v8;
}

@end