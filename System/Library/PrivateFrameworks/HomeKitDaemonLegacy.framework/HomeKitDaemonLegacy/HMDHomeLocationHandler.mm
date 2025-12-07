@interface HMDHomeLocationHandler
+ (id)logCategory;
- (BOOL)_canExtractLocation;
- (BOOL)_hasReachableAccessoriesExcludingMatter;
- (BOOL)_needToExtractLocations;
- (BOOL)_shouldRegisterForSignificantRegion;
- (BOOL)_shouldUpdateHomeLocation;
- (BOOL)isDate:(id)date laterThanDate:(id)thanDate;
- (BOOL)isLocation:(id)location closeToLocation:(id)toLocation;
- (BOOL)isNewHomeLocationTooCloseToPreviousLocation:(id)location newLocation:(id)newLocation;
- (BOOL)shouldAllowHomeLocationUpdateWithSource:(int64_t)source newLocation:(id)location;
- (BOOL)shouldUpdateLocationFromLocationData:(id)data;
- (BOOL)updateRegionStateFromLocation:(id)location;
- (HMDHome)home;
- (HMDHomeLocationData)locationData;
- (HMDHomeLocationHandler)init;
- (HMDHomeLocationHandler)initWithCoder:(id)coder;
- (NSString)description;
- (NSUUID)messageTargetUUID;
- (id)__initForUnitTesting:(double)testing home:(id)home queue:(id)queue messageDispatcher:(id)dispatcher location:(id)location;
- (id)_handleHomeLocationData:(id)data message:(id)message;
- (id)_handleHomeLocationDataForHH2:(id)h2 fromMessage:(id)message;
- (id)logIdentifier;
- (id)messageDestination;
- (void)__simulateAtHomeRegionState:(int64_t)state;
- (void)__simulateNearByHomeRegionState:(int64_t)state;
- (void)_evaluateHomeRegionStateForCurrentDeviceLocation:(id)location;
- (void)_handleLocationAuthorization:(int64_t)authorization;
- (void)_handleLocationAuthorizationChangedNotification:(id)notification;
- (void)_handleRetrieveLocation:(id)location;
- (void)_processPendingRegionStateUpdates;
- (void)_registerForMessages;
- (void)_registerForRegionUpdate;
- (void)_sendLocationUpdateToClients;
- (void)_updateTimeZone:(id)zone;
- (void)accessoriesBecomeReachable;
- (void)accessoriesBecomeUnreachable;
- (void)checkFalsePresence;
- (void)coalesceRegionUpdateState:(int64_t)state forRegion:(id)region;
- (void)configure:(id)configure queue:(id)queue messageDispatcher:(id)dispatcher;
- (void)dealloc;
- (void)didDetermineLocation:(id)location;
- (void)didDetermineState:(int64_t)state forRegion:(id)region;
- (void)encodeWithCoder:(id)coder;
- (void)getReachableIPAccessory:(unint64_t *)accessory btleAccessory:(unint64_t *)btleAccessory mediaAccessory:(unint64_t *)mediaAccessory;
- (void)logHomeLocationEventWithLocation:(id)location;
- (void)runTransactionWithLocation:(id)location updatedTime:(id)time source:(int64_t)source;
- (void)timerDidFire:(id)fire;
- (void)updateHomeLocation;
- (void)updateHomeLocationFromCoreRoutine;
- (void)updateHomeLocationFromSingleOrCoreRoutine;
@end

@implementation HMDHomeLocationHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)__simulateNearByHomeRegionState:(int64_t)state
{
  if (state)
  {
    regionNearbyHome = [(HMDHomeLocationHandler *)self regionNearbyHome];
    [(HMDHomeLocationHandler *)self didDetermineState:state forRegion:regionNearbyHome];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    [(HMDHomeLocationHandler *)self setRegionStateNearbyHome:0];

    os_unfair_recursive_lock_unlock();
  }
}

- (void)__simulateAtHomeRegionState:(int64_t)state
{
  if (state)
  {
    regionAtHome = [(HMDHomeLocationHandler *)self regionAtHome];
    [(HMDHomeLocationHandler *)self didDetermineState:state forRegion:regionAtHome];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    [(HMDHomeLocationHandler *)self setRegionStateAtHome:0];

    os_unfair_recursive_lock_unlock();
  }
}

- (id)__initForUnitTesting:(double)testing home:(id)home queue:(id)queue messageDispatcher:(id)dispatcher location:(id)location
{
  locationCopy = location;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  homeCopy = home;
  v16 = [(HMDHomeLocationHandler *)self init];
  [(HMDHomeLocationHandler *)v16 setLocation:locationCopy];

  [(HMDHomeLocationHandler *)v16 setCoalesceRegionUpdateIntervalInSeconds:testing];
  [(HMDHomeLocationHandler *)v16 setHome:homeCopy];

  [(HMDHomeLocationHandler *)v16 setWorkQueue:queueCopy];
  [(HMDHomeLocationHandler *)v16 setMsgDispatcher:dispatcherCopy];

  [(HMDHomeLocationHandler *)v16 _registerForRegionUpdate];
  return v16;
}

- (id)logIdentifier
{
  home = [(HMDHomeLocationHandler *)self home];
  v3 = MEMORY[0x277CCACA8];
  name = [home name];
  uuid = [home uuid];
  v6 = [v3 stringWithFormat:@"%@/%@", name, uuid];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = [(HMDHomeLocationHandler *)self location];
  [coderCopy encodeObject:location forKey:@"homeLocation"];

  locationUpdateTimestamp = [(HMDHomeLocationHandler *)self locationUpdateTimestamp];
  [coderCopy encodeObject:locationUpdateTimestamp forKey:@"homeLocationNextUpdate"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeLocationHandler locationSource](self, "locationSource")}];
  [coderCopy encodeObject:v9 forKey:@"homeLocationSource"];
  timeZone = [(HMDHomeLocationHandler *)self timeZone];
  [coderCopy encodeObject:timeZone forKey:@"HMD.homeLocTZ"];

  isoCountryCode = [(HMDHomeLocationHandler *)self isoCountryCode];
  [coderCopy encodeObject:isoCountryCode forKey:@"HMD.homeLocCC"];
}

- (HMDHomeLocationHandler)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMDHomeLocationHandler *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeLocation"];
    location = v5->_location;
    v5->_location = v6;

    if (v5->_location)
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeLocationNextUpdate"];
      locationUpdateTimestamp = v5->_locationUpdateTimestamp;
      v5->_locationUpdateTimestamp = v8;

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeLocationSource"];
      v5->_locationSource = [v10 unsignedIntValue];
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.homeLocTZ"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.homeLocCC"];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v13;
  }

  return v5;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDHomeLocationHandler *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  home = [(HMDHomeLocationHandler *)self home];
  uuid = [home uuid];

  return uuid;
}

- (void)checkFalsePresence
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  if ([(HMDHomeLocationHandler *)self regionStateAtHome]== 2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    lastArrival = [(HMDHomeLocationHandler *)self lastArrival];
    [date timeIntervalSinceDate:lastArrival];
    v7 = v6;

    lastArrival2 = [(HMDHomeLocationHandler *)self lastArrival];
    v9 = [lastArrival2 isEqualToDate:v3];

    if (v7 >= 30.0)
    {
      v10 = [HMDEntryExitLogEvent exitLogEvent:0 isFalse:v9 isInitial:v7];
      logEventSubmitter = [(HMDHomeLocationHandler *)self logEventSubmitter];
      [logEventSubmitter submitLogEvent:v10];
    }

    else
    {
      v10 = [HMDEntryExitLogEvent exitLogEvent:1 isFalse:v9 isInitial:v7];
      logEventSubmitter2 = [(HMDHomeLocationHandler *)self logEventSubmitter];
      [logEventSubmitter2 submitLogEvent:v10];

      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        lastArrival3 = [(HMDHomeLocationHandler *)selfCopy lastArrival];
        v38 = 138543874;
        v39 = v15;
        v40 = 2048;
        v41 = v7;
        v42 = 2112;
        v43 = lastArrival3;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@False exit. Seconds since last entry: %f with last entry: %@", &v38, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }

    date2 = [MEMORY[0x277CBEAA8] date];
    [(HMDHomeLocationHandler *)self setLastExit:date2];

    if ((v9 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_16:
    v34 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      v38 = 138543362;
      v39 = v37;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Setting isInitial to YES as this is the first exit or arrival.", &v38, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    goto LABEL_19;
  }

  if ([(HMDHomeLocationHandler *)self regionStateAtHome]== 1)
  {
    date3 = [MEMORY[0x277CBEAA8] date];
    lastExit = [(HMDHomeLocationHandler *)self lastExit];
    [date3 timeIntervalSinceDate:lastExit];
    v20 = v19;

    lastExit2 = [(HMDHomeLocationHandler *)self lastExit];
    v22 = [lastExit2 isEqualToDate:v3];

    if (v20 >= 30.0)
    {
      v23 = [HMDEntryExitLogEvent entryLogEvent:0 isFalse:v22 isInitial:v20];
      logEventSubmitter3 = [(HMDHomeLocationHandler *)self logEventSubmitter];
      [logEventSubmitter3 submitLogEvent:v23];
    }

    else
    {
      v23 = [HMDEntryExitLogEvent entryLogEvent:1 isFalse:v22 isInitial:v20];
      logEventSubmitter4 = [(HMDHomeLocationHandler *)self logEventSubmitter];
      [logEventSubmitter4 submitLogEvent:v23];

      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = HMFGetLogIdentifier();
        lastExit3 = [(HMDHomeLocationHandler *)selfCopy3 lastExit];
        v38 = 138543874;
        v39 = v28;
        v40 = 2048;
        v41 = v20;
        v42 = 2112;
        v43 = lastExit3;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@False entry. Seconds since last exit: %f with last exit: %@", &v38, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
    }

    date4 = [MEMORY[0x277CBEAA8] date];
    [(HMDHomeLocationHandler *)self setLastArrival:date4];

    if (v22)
    {
      goto LABEL_16;
    }
  }

LABEL_19:
}

- (void)logHomeLocationEventWithLocation:(id)location
{
  v28 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  location = [(HMDHomeLocationHandler *)self location];

  if (locationCopy && location)
  {
    location2 = [(HMDHomeLocationHandler *)self location];
    [location2 distanceFromLocation:locationCopy];
    v8 = v7;

    if (v8 >= 10.0 && fabs(v8 + -10.0) >= 2.22044605e-16)
    {
      v9 = isInternalBuild();
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (v13)
        {
          v14 = HMFGetLogIdentifier();
          v22 = 138543874;
          v23 = v14;
          v24 = 2112;
          v25 = locationCopy;
          v26 = 2048;
          v27 = v8;
          v15 = "%{public}@Submitting event updated home location [%@] & distance %f";
LABEL_14:
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, v15, &v22, 0x20u);
        }
      }

      else if (v13)
      {
        v14 = HMFGetLogIdentifier();
        v22 = 138543875;
        v23 = v14;
        v24 = 2117;
        v25 = locationCopy;
        v26 = 2048;
        v27 = v8;
        v15 = "%{public}@Submitting event updated home location [%{sensitive}@] & distance %f";
        goto LABEL_14;
      }

      objc_autoreleasePoolPop(v10);
      v20 = [HMDHomeLocationLogEvent updateWithHomeDistance:v8];
      logEventSubmitter = [(HMDHomeLocationHandler *)selfCopy logEventSubmitter];
      [logEventSubmitter submitLogEvent:v20];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Home location is nil, not submitting event.", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }
}

- (void)_processPendingRegionStateUpdates
{
  v72[2] = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  regionStateAtHome = [(HMDHomeLocationHandler *)self regionStateAtHome];
  pendingAtHomeRegionUpdate = self->_pendingAtHomeRegionUpdate;
  pendingNearbyHomeRegionUpdate = self->_pendingNearbyHomeRegionUpdate;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (!pendingAtHomeRegionUpdate)
  {
    if (!pendingNearbyHomeRegionUpdate)
    {
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v64 = v23;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Dropping region state update. How are we even here?", buf, 0xCu);
      }

      goto LABEL_42;
    }

    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = self->_pendingNearbyHomeRegionUpdate;
      *buf = 138543618;
      v64 = v14;
      v65 = 2112;
      v66 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@processing pending nearByHome region update : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if ([(_HMDPendingRegionUpdate *)self->_pendingNearbyHomeRegionUpdate state]!= 1)
    {
      if ([(_HMDPendingRegionUpdate *)self->_pendingNearbyHomeRegionUpdate state]!= 2)
      {
        v6 = objc_autoreleasePoolPush();
        v29 = selfCopy;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          v31 = self->_pendingNearbyHomeRegionUpdate;
          *buf = 138543618;
          v64 = v30;
          v65 = 2112;
          v66 = v31;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Dropping nearByHome region state update. nearByHome region state is set to Unknown. [%@]", buf, 0x16u);
        }

        goto LABEL_42;
      }

LABEL_25:
      v22 = 2;
      [(HMDHomeLocationHandler *)selfCopy setRegionStateAtHome:2];
      goto LABEL_26;
    }

    [(HMDHomeLocationHandler *)selfCopy setRegionStateNearbyHome:1];
    if ([(HMDHomeLocationHandler *)selfCopy regionStateAtHome]== 1)
    {
      v6 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v64 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@atHome region is inside, not notifying.", buf, 0xCu);
      }
    }

    else
    {
      v35 = [(HMDHomeLocationHandler *)selfCopy regionStateAtHome]== 0;
      v6 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      if (!v35)
      {
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v64 = v38;
          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@notifying of entry into nearByHome.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v6);
        goto LABEL_27;
      }

      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v64 = v39;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@atHome region is still unknown, waiting for initial state before notifying.", buf, 0xCu);
      }
    }

    goto LABEL_42;
  }

  if (!pendingNearbyHomeRegionUpdate)
  {
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = self->_pendingAtHomeRegionUpdate;
      *buf = 138543618;
      v64 = v20;
      v65 = 2112;
      v66 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@processing pending atHome region update : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if ([(_HMDPendingRegionUpdate *)self->_pendingAtHomeRegionUpdate state]== 1)
    {
      goto LABEL_20;
    }

    if ([(_HMDPendingRegionUpdate *)self->_pendingAtHomeRegionUpdate state]== 2)
    {
      [(HMDHomeLocationHandler *)selfCopy setRegionStateAtHome:2];
      goto LABEL_27;
    }

    v6 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      v34 = self->_pendingAtHomeRegionUpdate;
      *buf = 138543618;
      v64 = v33;
      v65 = 2112;
      v66 = v34;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Dropping atHome region state update. atHome region state is set to Unknown. [%@]", buf, 0x16u);
    }

LABEL_42:

    objc_autoreleasePoolPop(v6);
    v24 = 0;
    goto LABEL_43;
  }

  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = self->_pendingAtHomeRegionUpdate;
    v11 = self->_pendingNearbyHomeRegionUpdate;
    *buf = 138543874;
    v64 = v9;
    v65 = 2112;
    v66 = v10;
    v67 = 2112;
    v68 = v11;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@atHome & nearByHome regions are updated to new states: [atHome : %@] , [nearByHome : %@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  if ([(_HMDPendingRegionUpdate *)self->_pendingAtHomeRegionUpdate state]== 1)
  {
LABEL_20:
    v12 = 1;
    goto LABEL_21;
  }

  if ([(_HMDPendingRegionUpdate *)self->_pendingNearbyHomeRegionUpdate state]== 2)
  {
    goto LABEL_25;
  }

  if ([(_HMDPendingRegionUpdate *)self->_pendingAtHomeRegionUpdate state]!= 2 || [(_HMDPendingRegionUpdate *)self->_pendingNearbyHomeRegionUpdate state]!= 1)
  {
    v6 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = self->_pendingAtHomeRegionUpdate;
      v28 = self->_pendingNearbyHomeRegionUpdate;
      *buf = 138543874;
      v64 = v26;
      v65 = 2112;
      v66 = v27;
      v67 = 2112;
      v68 = v28;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Dropping region state updates. User cannot be inside atHome & outside nearByHome at the same time. [atHome=%@][nearByHome=%@]", buf, 0x20u);
    }

    goto LABEL_42;
  }

  v12 = 2;
LABEL_21:
  [(HMDHomeLocationHandler *)selfCopy setRegionStateAtHome:v12];
  v22 = 1;
LABEL_26:
  [(HMDHomeLocationHandler *)selfCopy setRegionStateNearbyHome:v22];
LABEL_27:
  v24 = 1;
LABEL_43:
  if (regionStateAtHome == 2 && [(HMDHomeLocationHandler *)selfCopy regionStateAtHome]== 1)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(HMDHomeLocationHandler *)selfCopy setDateCrossedIntoAtHomeRegion:date];

    v41 = 1;
  }

  else
  {
    if ([(HMDHomeLocationHandler *)selfCopy regionStateAtHome]!= 1)
    {
      [(HMDHomeLocationHandler *)selfCopy setDateCrossedIntoAtHomeRegion:0];
    }

    v41 = 0;
  }

  v42 = self->_pendingAtHomeRegionUpdate;
  self->_pendingAtHomeRegionUpdate = 0;

  v43 = self->_pendingNearbyHomeRegionUpdate;
  self->_pendingNearbyHomeRegionUpdate = 0;

  homeRegionUpdateTimer = selfCopy->_homeRegionUpdateTimer;
  selfCopy->_homeRegionUpdateTimer = 0;

  os_unfair_recursive_lock_unlock();
  home = [(HMDHomeLocationHandler *)selfCopy home];
  currentUser = [home currentUser];
  uuid = [currentUser uuid];

  uuid2 = [home uuid];
  if (uuid2)
  {
    v49 = v41;
  }

  else
  {
    v49 = 0;
  }

  if (v49 == 1)
  {
    if (uuid)
    {
      v50 = +[HMDLocation sharedManager];
      isCurrentLocationSimulated = [v50 isCurrentLocationSimulated];

      if ((isCurrentLocationSimulated & 1) == 0)
      {
        v71[0] = @"HMDLocationCurrentUserUUIDKey";
        v71[1] = @"HMDLocationHomeUUIDKey";
        v72[0] = uuid;
        v72[1] = uuid2;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
        logAndPostNotification(@"HMDLocationDidCrossIntoHomeRegion", selfCopy, v52);
      }
    }
  }

  v53 = [HMDRegionStateCorrectnessLogEvent updateWithRegion:[(HMDHomeLocationHandler *)selfCopy regionStateAtHome] nearbyHome:[(HMDHomeLocationHandler *)selfCopy regionStateNearbyHome] accessoryReachable:[(HMDHomeLocationHandler *)selfCopy firstAccessoryReachable]];
  logEventSubmitter = [(HMDHomeLocationHandler *)selfCopy logEventSubmitter];
  [logEventSubmitter submitLogEvent:v53];

  if (v24)
  {
    context = objc_autoreleasePoolPush();
    v55 = selfCopy;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v61 = HMFGetLogIdentifier();
      uuid3 = [home uuid];
      uUIDString = [uuid3 UUIDString];
      [(HMDHomeLocationHandler *)v55 regionStateAtHome];
      v59 = HMRegionStateString();
      [(HMDHomeLocationHandler *)v55 regionStateNearbyHome];
      v60 = HMRegionStateString();
      *buf = 138544130;
      v64 = v61;
      v65 = 2112;
      v66 = uUIDString;
      v67 = 2112;
      v68 = v59;
      v69 = 2112;
      v70 = v60;
      _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@Region state for home [%@] is determined using GeoFence. atHome: %@, nearbyHome: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(context);
    [home regionStateUpdated];
    [(HMDHomeLocationHandler *)v55 checkFalsePresence];
  }
}

- (void)timerDidFire:(id)fire
{
  v11 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (self->_homeRegionUpdateTimer == fireCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Region update timer fired : Processing pending region state updates", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDHomeLocationHandler *)selfCopy _processPendingRegionStateUpdates];
  }
}

- (void)coalesceRegionUpdateState:(int64_t)state forRegion:(id)region
{
  v38 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  os_unfair_recursive_lock_lock_with_options();
  v7 = objc_alloc_init(_HMDPendingRegionUpdate);
  [(_HMDPendingRegionUpdate *)v7 setState:state];
  identifier = [(CLRegion *)self->_regionAtHome identifier];
  identifier2 = [regionCopy identifier];
  v10 = [identifier isEqualToString:identifier2];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = HMRegionStateString();
      v32 = 138543618;
      v33 = v14;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@atHome region updated (100m) : %@", &v32, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = &OBJC_IVAR___HMDHomeLocationHandler__pendingAtHomeRegionUpdate;
LABEL_9:
    objc_storeStrong((&self->super.super.isa + *v16), v7);
    homeRegionUpdateTimer = self->_homeRegionUpdateTimer;
    if (homeRegionUpdateTimer)
    {
      [(HMFTimer *)homeRegionUpdateTimer kick];
    }

    else
    {
      v26 = objc_alloc(MEMORY[0x277D0F920]);
      [(HMDHomeLocationHandler *)self coalesceRegionUpdateIntervalInSeconds];
      v27 = [v26 initWithTimeInterval:8 options:?];
      v28 = self->_homeRegionUpdateTimer;
      self->_homeRegionUpdateTimer = v27;

      [(HMFTimer *)self->_homeRegionUpdateTimer setDelegateQueue:self->_workQueue];
      [(HMFTimer *)self->_homeRegionUpdateTimer setDelegate:self];
      [(HMFTimer *)self->_homeRegionUpdateTimer resume];
    }

    goto LABEL_15;
  }

  identifier3 = [(CLRegion *)self->_regionNearbyHome identifier];
  identifier4 = [regionCopy identifier];
  v19 = [identifier3 isEqualToString:identifier4];

  v20 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  if (v19)
  {
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = HMRegionStateString();
      v32 = 138543618;
      v33 = v23;
      v34 = 2112;
      v35 = v24;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@nearByHome region updated (500m) : %@", &v32, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v16 = &OBJC_IVAR___HMDHomeLocationHandler__pendingNearbyHomeRegionUpdate;
    goto LABEL_9;
  }

  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    v31 = HMRegionStateString();
    v32 = 138543874;
    v33 = v30;
    v34 = 2112;
    v35 = regionCopy;
    v36 = 2112;
    v37 = v31;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unknown region update found for region : %@ [new state: %@]", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_15:

  os_unfair_recursive_lock_unlock();
}

- (BOOL)updateRegionStateFromLocation:(id)location
{
  v35 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = locationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Current location : %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDHomeLocationHandler *)selfCopy home];
  location = [(HMDHomeLocationHandler *)selfCopy location];
  [location distanceFromLocation:locationCopy];
  v12 = v11;

  v13 = __homeRegionNearbyRadius();
  if (v12 >= 100.0)
  {
    if (v12 < v13)
    {
      [(HMDHomeLocationHandler *)selfCopy setRegionStateNearbyHome:1];
      [(HMDHomeLocationHandler *)selfCopy setRegionStateAtHome:2];
      goto LABEL_9;
    }

    [(HMDHomeLocationHandler *)selfCopy setRegionStateAtHome:2];
    v14 = selfCopy;
    v15 = 2;
  }

  else
  {
    [(HMDHomeLocationHandler *)selfCopy setRegionStateAtHome:1, v13];
    v14 = selfCopy;
    v15 = 1;
  }

  [(HMDHomeLocationHandler *)v14 setRegionStateNearbyHome:v15];
LABEL_9:
  v16 = objc_autoreleasePoolPush();
  v17 = selfCopy;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    uuid = [home uuid];
    uUIDString = [uuid UUIDString];
    [(HMDHomeLocationHandler *)v17 regionStateAtHome];
    v22 = HMRegionStateString();
    [(HMDHomeLocationHandler *)v17 regionStateNearbyHome];
    v23 = HMRegionStateString();
    v25 = 138544386;
    v26 = v19;
    v27 = 2112;
    v28 = uUIDString;
    v29 = 2048;
    v30 = v12;
    v31 = 2112;
    v32 = v22;
    v33 = 2112;
    v34 = v23;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Region state for home [%@] is determined using location. distance: %f meters, atHome: %@, nearbyHome: %@", &v25, 0x34u);
  }

  objc_autoreleasePoolPop(v16);
  return 1;
}

- (void)getReachableIPAccessory:(unint64_t *)accessory btleAccessory:(unint64_t *)btleAccessory mediaAccessory:(unint64_t *)mediaAccessory
{
  home = [(HMDHomeLocationHandler *)self home];
  [home getReachableIPAccessories:accessory btleAccessories:btleAccessory mediaAccessories:mediaAccessory];
}

- (void)didDetermineState:(int64_t)state forRegion:(id)region
{
  regionCopy = region;
  workQueue = [(HMDHomeLocationHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDHomeLocationHandler_didDetermineState_forRegion___block_invoke;
  block[3] = &unk_279732F10;
  v10 = regionCopy;
  stateCopy = state;
  block[4] = self;
  v8 = regionCopy;
  dispatch_async(workQueue, block);
}

void __54__HMDHomeLocationHandler_didDetermineState_forRegion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  if (!v2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      v8 = "%{public}@Home reference is nil";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_2531F8000, v9, v10, v8, &v11, 0xCu);
    }

LABEL_9:

    objc_autoreleasePoolPop(v4);
    goto LABEL_10;
  }

  v3 = [MEMORY[0x277CBFC10] hm_regionStateFromCLRegionState:*(a1 + 48)];
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      v8 = "%{public}@Not updating the region state because it is currently unknown";
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [*(a1 + 32) coalesceRegionUpdateState:v3 forRegion:*(a1 + 40)];
LABEL_10:
}

- (void)didDetermineLocation:(id)location
{
  locationCopy = location;
  workQueue = [(HMDHomeLocationHandler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDHomeLocationHandler_didDetermineLocation___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = locationCopy;
  v6 = locationCopy;
  dispatch_async(workQueue, v7);
}

- (void)updateHomeLocationFromSingleOrCoreRoutine
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Using Single Core Routine API for HomeKit Home location", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHomeLocationHandler *)selfCopy updateHomeLocationFromCoreRoutine];
}

- (void)updateHomeLocationFromCoreRoutine
{
  v3 = +[HMDLocation sharedManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__HMDHomeLocationHandler_updateHomeLocationFromCoreRoutine__block_invoke;
  v4[3] = &unk_2797313F0;
  v4[4] = self;
  [v3 getCoreRoutineLOIForCurrentLocationWithCompletionHandler:v4];
}

void __59__HMDHomeLocationHandler_updateHomeLocationFromCoreRoutine__block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = isInternalBuild();
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      *v26 = 138543874;
      *&v26[4] = v14;
      *&v26[12] = 2112;
      *&v26[14] = v7;
      *&v26[22] = 2112;
      v27 = v8;
      v15 = "%{public}@Fetching LOI at current location finished with location [%@], error: %@";
LABEL_6:
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, v15, v26, 0x20u);
    }
  }

  else if (v13)
  {
    v14 = HMFGetLogIdentifier();
    *v26 = 138543875;
    *&v26[4] = v14;
    *&v26[12] = 2117;
    *&v26[14] = v7;
    *&v26[22] = 2112;
    v27 = v8;
    v15 = "%{public}@Fetching LOI at current location finished with location [%{sensitive}@], error: %@";
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v10);
  if (!v7 || v8)
  {
    v19 = isInternalBuild();
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v23)
      {
        v24 = HMFGetLogIdentifier();
        *v26 = 138543874;
        *&v26[4] = v24;
        *&v26[12] = 2112;
        *&v26[14] = v7;
        *&v26[22] = 2112;
        v27 = v8;
        v25 = "%{public}@Unable to get LOI at current location: %@ / %@";
LABEL_18:
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, v25, v26, 0x20u);
      }
    }

    else if (v23)
    {
      v24 = HMFGetLogIdentifier();
      *v26 = 138543875;
      *&v26[4] = v24;
      *&v26[12] = 2117;
      *&v26[14] = v7;
      *&v26[22] = 2112;
      v27 = v8;
      v25 = "%{public}@Unable to get LOI at current location: %{sensitive}@ / %@";
      goto LABEL_18;
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_20;
  }

  if (a3)
  {
    v16 = 2;
  }

  else
  {
    v16 = 4;
  }

  v17 = *(a1 + 32);
  v18 = [MEMORY[0x277CBEAA8] date];
  [v17 runTransactionWithLocation:v7 updatedTime:v18 source:v16];

LABEL_20:
}

- (BOOL)isDate:(id)date laterThanDate:(id)thanDate
{
  v27 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  thanDateCopy = thanDate;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    [dateCopy timeIntervalSince1970];
    v13 = v12;
    [thanDateCopy timeIntervalSince1970];
    v17 = 138544386;
    v18 = v11;
    v19 = 2112;
    v20 = dateCopy;
    v21 = 2048;
    v22 = v13;
    v23 = 2112;
    v24 = thanDateCopy;
    v25 = 2048;
    v26 = v14;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Going to check if date1 %@ (%lf) is later than date2 %@ (%lf)", &v17, 0x34u);
  }

  objc_autoreleasePoolPop(v8);
  if (dateCopy)
  {
    if (thanDateCopy)
    {
      v15 = [dateCopy compare:thanDateCopy] == 1;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isLocation:(id)location closeToLocation:(id)toLocation
{
  v35 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  toLocationCopy = toLocation;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v27 = 138543874;
    v28 = v11;
    v29 = 2112;
    v30 = locationCopy;
    v31 = 2112;
    v32 = toLocationCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Going to check if location1 %@ is close to location2 %@", &v27, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = 1;
  if (locationCopy && toLocationCopy)
  {
    [locationCopy distanceFromLocation:toLocationCopy];
    v14 = v13;
    v15 = isInternalBuild();
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        v27 = 138544130;
        v28 = v20;
        v29 = 2112;
        v30 = locationCopy;
        v31 = 2112;
        v32 = toLocationCopy;
        v33 = 2048;
        v34 = v14;
        v21 = "%{public}@Distance between location1 %@ and location2 %@: %lf";
LABEL_10:
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, v21, &v27, 0x2Au);
      }
    }

    else if (v19)
    {
      v20 = HMFGetLogIdentifier();
      v27 = 138544131;
      v28 = v20;
      v29 = 2117;
      v30 = locationCopy;
      v31 = 2117;
      v32 = toLocationCopy;
      v33 = 2048;
      v34 = v14;
      v21 = "%{public}@Distance between location1 %{sensitive}@ and location2 %{sensitive}@: %lf";
      goto LABEL_10;
    }

    objc_autoreleasePoolPop(v16);
    v12 = 0;
    if (v14 > 0.0 && v14 <= 30.0)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v17;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v25;
        v29 = 2112;
        v30 = &unk_28662BEB8;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@The two locations are within %@ meter range.", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v12 = 1;
    }
  }

  return v12;
}

- (HMDHomeLocationData)locationData
{
  v3 = [HMDHomeLocationData alloc];
  location = [(HMDHomeLocationHandler *)self location];
  locationUpdateTimestamp = [(HMDHomeLocationHandler *)self locationUpdateTimestamp];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeLocationHandler locationSource](self, "locationSource")}];
  v7 = [(HMDHomeLocationData *)v3 initWithLocation:location locationUpdateTimestamp:locationUpdateTimestamp locationSource:v6];

  return v7;
}

- (void)_sendLocationUpdateToClients
{
  v13[1] = *MEMORY[0x277D85DE8];
  location = [(HMDHomeLocationHandler *)self location];

  if (location)
  {
    v12 = @"kHomeLocationKey";
    v4 = MEMORY[0x277CCAAB0];
    location2 = [(HMDHomeLocationHandler *)self location];
    v6 = [v4 archivedDataWithRootObject:location2 requiringSecureCoding:1 error:0];
    v13[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v8 = [MEMORY[0x277D0F818] locationAuthorizedMessageWithName:@"kHomeLocationUpdatedNotificationKey" messagePayload:v7];
  }

  else
  {
    v8 = [MEMORY[0x277D0F818] messageWithName:@"kHomeLocationUpdatedNotificationKey" messagePayload:0];
  }

  logAndPostNotification(@"HMDLocationForHomeChanged", self, 0);
  home = [(HMDHomeLocationHandler *)self home];
  if (home)
  {
    msgDispatcher = [(HMDHomeLocationHandler *)self msgDispatcher];
    uuid = [home uuid];
    [msgDispatcher sendMessage:v8 target:uuid];
  }
}

- (BOOL)isNewHomeLocationTooCloseToPreviousLocation:(id)location newLocation:(id)newLocation
{
  v21 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  newLocationCopy = newLocation;
  [locationCopy distanceFromLocation:newLocationCopy];
  v9 = v8;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v17 = 138543618;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@The distance between new & previous location is : %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = fabs(v9 + -10.0) < 2.22044605e-16 || v9 < 10.0;

  return v15;
}

- (BOOL)shouldAllowHomeLocationUpdateWithSource:(int64_t)source newLocation:(id)location
{
  v30 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (!locationCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@New location is nil, rejecting home location update.", &v24, 0xCu);
    }

    goto LABEL_15;
  }

  if ([(HMDHomeLocationHandler *)self locationSource]!= 2)
  {
    goto LABEL_17;
  }

  v8 = 0;
  if (source != 2 && source != 5)
  {
    location = [(HMDHomeLocationHandler *)self location];
    if (location)
    {
      v8 = ![(HMDHomeLocationHandler *)self pairingHomeLocationOverride];
    }

    else
    {
      v8 = 0;
    }
  }

  if (source == 2 || source == 5)
  {
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_17:
    [(HMDHomeLocationHandler *)self setPairingHomeLocationOverride:0];
    v17 = isInternalBuild();
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        v21 = HMDHomeLocationSourceToString(source);
        v24 = 138543874;
        v25 = v20;
        v26 = 2112;
        v27 = locationCopy;
        v28 = 2112;
        v29 = v21;
        v22 = "%{public}@Updating home location to %@ and source %@";
LABEL_22:
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, v22, &v24, 0x20u);
      }
    }

    else if (v19)
    {
      v20 = HMFGetLogIdentifier();
      v21 = HMDHomeLocationSourceToString(source);
      v24 = 138543875;
      v25 = v20;
      v26 = 2117;
      v27 = locationCopy;
      v28 = 2112;
      v29 = v21;
      v22 = "%{public}@Updating home location to %{sensitive}@ and source %@";
      goto LABEL_22;
    }

    v16 = 1;
    goto LABEL_24;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v9 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = HMDHomeLocationSourceToString(source);
    v24 = 138543618;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Rejecting home location update source: %@", &v24, 0x16u);
  }

LABEL_15:
  v16 = 0;
LABEL_24:

  objc_autoreleasePoolPop(v9);
  return v16;
}

- (void)runTransactionWithLocation:(id)location updatedTime:(id)time source:(int64_t)source
{
  v74 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  timeCopy = time;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMDHomeLocationSourceToString(source);
    *buf = 138543874;
    v69 = v13;
    v70 = 2112;
    v71 = locationCopy;
    v72 = 2112;
    v73 = v14;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Determined Location: %@, Source : %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  home = [(HMDHomeLocationHandler *)selfCopy home];
  if (([home isOwnerUser] & 1) != 0 || objc_msgSend(home, "isSharedAdmin"))
  {
    v16 = [HMDHomeLocationData alloc];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:source];
    v62 = timeCopy;
    v63 = locationCopy;
    v18 = [(HMDHomeLocationData *)v16 initWithLocation:locationCopy locationUpdateTimestamp:timeCopy locationSource:v17];

    v61 = v18;
    v19 = encodeRootObject();
    v20 = [HMDHomeModel alloc];
    uuid = [home uuid];
    homeManager = [home homeManager];
    uuid2 = [homeManager uuid];
    v24 = [(HMDBackingStoreModelObject *)v20 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

    [(HMDHomeModel *)v24 setHomeLocationData:v19];
    if ([home isOwnerUser])
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        [home name];
        v30 = v29 = source;
        *buf = 138543618;
        v69 = v28;
        v70 = 2112;
        v71 = v30;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@[%@] This is the owner user, updating home location which should result into CK push.", buf, 0x16u);

        source = v29;
      }

      objc_autoreleasePoolPop(v25);
      backingStore = [home backingStore];
      v32 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    }

    else
    {
      if (![home isSharedAdmin])
      {
        v40 = 0;
        goto LABEL_15;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        [home name];
        v38 = v37 = source;
        *buf = 138543618;
        v69 = v36;
        v70 = 2112;
        v71 = v38;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@[%@] This is the shared admin, updating home location locally only will not push to CK", buf, 0x16u);

        source = v37;
      }

      objc_autoreleasePoolPop(v33);
      backingStore = [home backingStore];
      v32 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
    }

    v39 = v32;
    v40 = [backingStore transaction:@"kHomeLocationUpdatedNotificationKey" options:v32];

LABEL_15:
    v41 = MEMORY[0x277D0F848];
    messageDestination = [(HMDHomeLocationHandler *)selfCopy messageDestination];
    v66 = @"HMD.LOC.SRC";
    [MEMORY[0x277CCABB0] numberWithInteger:source];
    v44 = v43 = source;
    v67 = v44;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v46 = [v41 messageWithName:@"kHomeLocationUpdatedNotificationKey" destination:messageDestination payload:v45];

    source = v43;
    [v40 add:v24 withMessage:v46];
    [v40 run];

    timeCopy = v62;
    locationCopy = v63;
  }

  if ([home isSharedAdmin])
  {
    v47 = objc_autoreleasePoolPush();
    v48 = selfCopy;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      [home name];
      v52 = v51 = source;
      *buf = 138543618;
      v69 = v50;
      v70 = 2112;
      v71 = v52;
      _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_INFO, "%{public}@[%@] This is a shared admin, re-dispatching the home location to resident", buf, 0x16u);

      source = v51;
    }

    objc_autoreleasePoolPop(v47);
    v53 = MEMORY[0x277D0F848];
    messageDestination2 = [(HMDHomeLocationHandler *)v48 messageDestination];
    v64[0] = @"kHomeLocationDataKey";
    v55 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:locationCopy requiringSecureCoding:1 error:0];
    v64[1] = @"HMD.LOC.SRC";
    v65[0] = v55;
    v56 = [MEMORY[0x277CCABB0] numberWithInteger:source];
    v65[1] = v56;
    v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
    v58 = [v53 messageWithName:@"kHomeLocationUpdatedNotificationKey" destination:messageDestination2 payload:v57];

    uuid3 = [home uuid];
    workQueue = [(HMDHomeLocationHandler *)v48 workQueue];
    [home redispatchToResidentMessage:v58 target:uuid3 responseQueue:workQueue];
  }
}

- (BOOL)shouldUpdateLocationFromLocationData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  location = [dataCopy location];

  if (location)
  {
    location2 = [dataCopy location];
    if ([HMDLocation isAccurateLocation:location2])
    {
      locationUpdateTimestamp = [dataCopy locationUpdateTimestamp];
      locationUpdateTimestamp2 = [(HMDHomeLocationHandler *)self locationUpdateTimestamp];
      v9 = [(HMDHomeLocationHandler *)self isDate:locationUpdateTimestamp laterThanDate:locationUpdateTimestamp2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Location data has nil location. Will not update location from location data", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  return v9;
}

- (id)_handleHomeLocationDataForHH2:(id)h2 fromMessage:(id)message
{
  v73 = *MEMORY[0x277D85DE8];
  h2Copy = h2;
  messageCopy = message;
  home = [(HMDHomeLocationHandler *)self home];
  location = [h2Copy location];

  if (location)
  {
    location2 = [(HMDHomeLocationHandler *)self location];
    locationSource = [h2Copy locationSource];
    intValue = [locationSource intValue];

    if (location2)
    {
      location3 = [h2Copy location];
      if (-[HMDHomeLocationHandler isNewHomeLocationTooCloseToPreviousLocation:newLocation:](self, "isNewHomeLocationTooCloseToPreviousLocation:newLocation:", location2, location3) && (-[HMDHomeLocationHandler locationUpdateTimestamp](self, "locationUpdateTimestamp"), v13 = objc_claimAutoreleasedReturnValue(), [h2Copy locationUpdateTimestamp], v14 = objc_claimAutoreleasedReturnValue(), v15 = HMFEqualObjects(), v14, v13, (v15 & 1) != 0))
      {
        locationSource2 = [(HMDHomeLocationHandler *)self locationSource];

        if (locationSource2 == intValue)
        {
          v17 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543362;
            v64 = v20;
            v21 = "%{public}@Not updating the home location as current location is too close to previous one";
LABEL_18:
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, v21, buf, 0xCu);

            goto LABEL_19;
          }

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    location4 = [h2Copy location];
    v27 = [(HMDHomeLocationHandler *)self shouldAllowHomeLocationUpdateWithSource:intValue newLocation:location4];

    if (v27)
    {
      v28 = isInternalBuild();
      v29 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        if (v32)
        {
          v33 = HMFGetLogIdentifier();
          location5 = [(HMDHomeLocationHandler *)selfCopy2 location];
          [h2Copy location];
          v35 = v58 = location2;
          name = [messageCopy name];
          *buf = 138544386;
          v64 = v33;
          v65 = 2112;
          v66 = home;
          v67 = 2112;
          v68 = location5;
          v69 = 2112;
          v70 = v35;
          v71 = 2112;
          v72 = name;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Updating location for home %@ from: %@ to %@, message: %@", buf, 0x34u);

          location2 = v58;
        }
      }

      else if (v32)
      {
        HMFGetLogIdentifier();
        v37 = v59 = v29;
        location6 = [(HMDHomeLocationHandler *)selfCopy2 location];
        location7 = [h2Copy location];
        name2 = [messageCopy name];
        *buf = 138544387;
        v64 = v37;
        v65 = 2112;
        v66 = home;
        v67 = 2117;
        v68 = location6;
        v69 = 2117;
        v70 = location7;
        v71 = 2112;
        v72 = name2;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Updating location for home %@ from: %{sensitive}@ to %{sensitive}@, message: %@", buf, 0x34u);

        v29 = v59;
      }

      v60 = home;

      objc_autoreleasePoolPop(v29);
      location8 = [h2Copy location];
      [(HMDHomeLocationHandler *)selfCopy2 setLocation:location8];

      locationUpdateTimestamp = [h2Copy locationUpdateTimestamp];
      [(HMDHomeLocationHandler *)selfCopy2 setLocationUpdateTimestamp:locationUpdateTimestamp];

      [(HMDHomeLocationHandler *)selfCopy2 setLocationSource:intValue];
      location9 = [(HMDHomeLocationHandler *)selfCopy2 location];
      [(HMDHomeLocationHandler *)selfCopy2 _updateTimeZone:location9];

      regionAtHome = [(HMDHomeLocationHandler *)selfCopy2 regionAtHome];
      if (!regionAtHome || (v45 = regionAtHome, -[HMDHomeLocationHandler regionNearbyHome](selfCopy2, "regionNearbyHome"), v46 = objc_claimAutoreleasedReturnValue(), v46, v45, !v46) || location2 && ([h2Copy location], v47 = objc_claimAutoreleasedReturnValue(), v48 = -[HMDHomeLocationHandler isNewHomeLocationTooCloseToPreviousLocation:newLocation:](selfCopy2, "isNewHomeLocationTooCloseToPreviousLocation:newLocation:", location2, v47), v47, !v48))
      {
        [(HMDHomeLocationHandler *)selfCopy2 _registerForRegionUpdate];
      }

      [(HMDHomeLocationHandler *)selfCopy2 _sendLocationUpdateToClients];
      v49 = objc_autoreleasePoolPush();
      v50 = selfCopy2;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = HMFGetLogIdentifier();
        locationUpdateTimestamp2 = [(HMDHomeLocationHandler *)v50 locationUpdateTimestamp];
        locationUpdateTimestamp3 = [h2Copy locationUpdateTimestamp];
        v55 = HMDHomeLocationSourceToString([(HMDHomeLocationHandler *)v50 locationSource]);
        *buf = 138544386;
        v64 = v52;
        v65 = 2112;
        v66 = v61;
        v67 = 2112;
        v68 = locationUpdateTimestamp2;
        v69 = 2112;
        v70 = locationUpdateTimestamp3;
        v71 = 2112;
        v72 = v55;
        _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@Updating last home location update for home %@ from: %@ to %@ with source %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v49);
      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];

      home = v61;
      goto LABEL_30;
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v64 = v20;
      v21 = "%{public}@Not saving non-LOI home location.";
      goto LABEL_18;
    }

LABEL_19:

    objc_autoreleasePoolPop(v17);
LABEL_30:

    goto LABEL_31;
  }

  v22 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v64 = v25;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@New location is nil. Will not register for region updates.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
LABEL_31:

  return 0;
}

- (id)_handleHomeLocationData:(id)data message:(id)message
{
  v119 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  messageCopy = message;
  v8 = objc_alloc(MEMORY[0x277CCAAC8]);
  homeLocationData = [dataCopy homeLocationData];
  v10 = [v8 initForReadingFromData:homeLocationData error:0];

  v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  transactionResult = [(__CFString *)messageCopy transactionResult];
  home = [(HMDHomeLocationHandler *)self home];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543874;
    v112 = v17;
    v113 = 2112;
    v114 = messageCopy;
    v115 = 2112;
    v116 = v11;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@handling home location update due to %@ / locationData: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [(HMDHomeLocationHandler *)selfCopy shouldUpdateLocationFromLocationData:v11];
  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v18)
  {
    if (v22)
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v112 = v23;
      v113 = 2112;
      v114 = home;
      v115 = 2112;
      v116 = v11;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating home location for %@ with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    if ([transactionResult source] == 3)
    {
      location = [(HMDHomeLocationHandler *)v20 location];

      if (location)
      {
        goto LABEL_47;
      }

      v108 = dataCopy;
      v109 = v10;
      v25 = objc_autoreleasePoolPush();
      v26 = v20;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v112 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Saving the home location as it was pushed by legacy cloud", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
LABEL_38:
      v80 = isInternalBuild();
      v81 = objc_autoreleasePoolPush();
      v82 = v20;
      v83 = HMFGetOSLogHandle();
      v84 = os_log_type_enabled(v83, OS_LOG_TYPE_INFO);
      if (v80)
      {
        if (v84)
        {
          HMFGetLogIdentifier();
          v85 = v106 = v81;
          [(HMDHomeLocationHandler *)v82 location];
          v87 = v86 = home;
          location2 = [(__CFString *)v11 location];
          *buf = 138544130;
          v112 = v85;
          v113 = 2112;
          v114 = v86;
          v115 = 2112;
          v116 = v87;
          v117 = 2112;
          v118 = location2;
          _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_INFO, "%{public}@Updating location for home %@ from: %@ to %@", buf, 0x2Au);

          home = v86;
          v81 = v106;
        }
      }

      else if (v84)
      {
        v89 = HMFGetLogIdentifier();
        [(HMDHomeLocationHandler *)v82 location];
        v90 = v107 = home;
        location3 = [(__CFString *)v11 location];
        *buf = 138544131;
        v112 = v89;
        v113 = 2112;
        v114 = v107;
        v115 = 2117;
        v116 = v90;
        v117 = 2117;
        v118 = location3;
        _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_INFO, "%{public}@Updating location for home %@ from: %{sensitive}@ to %{sensitive}@", buf, 0x2Au);

        home = v107;
      }

      objc_autoreleasePoolPop(v81);
      location4 = [(__CFString *)v11 location];
      [(HMDHomeLocationHandler *)v82 setLocation:location4];

      location5 = [(HMDHomeLocationHandler *)v82 location];
      [(HMDHomeLocationHandler *)v82 _updateTimeZone:location5];

      v94 = +[HMDLocation sharedManager];
      [v94 startExtractingSingleLocationForDelegate:v82];

      [(HMDHomeLocationHandler *)v82 _registerForRegionUpdate];
      [(HMDHomeLocationHandler *)v82 _sendLocationUpdateToClients];
      goto LABEL_44;
    }

    v108 = dataCopy;
    v109 = v10;
    v34 = [(__CFString *)messageCopy numberForKey:@"HMD.LOC.SRC"];
    intValue = [v34 intValue];

    [(HMDHomeLocationHandler *)v20 setLocationSource:intValue];
    v36 = objc_autoreleasePoolPush();
    v37 = v20;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      HMDHomeLocationSourceToString(intValue);
      v104 = v37;
      v40 = v20;
      v41 = v11;
      v42 = messageCopy;
      v43 = transactionResult;
      v45 = v44 = home;
      *buf = 138543618;
      v112 = v39;
      v113 = 2112;
      v114 = v45;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Source of the home location: %@", buf, 0x16u);

      home = v44;
      transactionResult = v43;
      messageCopy = v42;
      v11 = v41;
      v20 = v40;
      v37 = v104;
    }

    objc_autoreleasePoolPop(v36);
    if (intValue > 5)
    {
      goto LABEL_44;
    }

    if (((1 << intValue) & 0x1B) != 0)
    {
      location6 = [(__CFString *)v11 location];
      [(HMDHomeLocationHandler *)v37 location];
      v47 = v37;
      v48 = v20;
      v49 = v11;
      v50 = messageCopy;
      v51 = transactionResult;
      v53 = v52 = home;
      v54 = [(HMDHomeLocationHandler *)v47 isLocation:location6 closeToLocation:v53];

      home = v52;
      transactionResult = v51;
      messageCopy = v50;
      v11 = v49;
      v20 = v48;
      v37 = v47;

      if (!v54)
      {
LABEL_44:
        v95 = objc_autoreleasePoolPush();
        v96 = v20;
        v97 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
        {
          v98 = HMFGetLogIdentifier();
          [(HMDHomeLocationHandler *)v96 locationUpdateTimestamp];
          v100 = v99 = home;
          locationUpdateTimestamp = [(__CFString *)v11 locationUpdateTimestamp];
          *buf = 138544130;
          v112 = v98;
          v113 = 2112;
          v114 = v99;
          v115 = 2112;
          v116 = v100;
          v117 = 2112;
          v118 = locationUpdateTimestamp;
          _os_log_impl(&dword_2531F8000, v97, OS_LOG_TYPE_INFO, "%{public}@Updating last home location update for home %@ from: %@ to %@", buf, 0x2Au);

          home = v99;
        }

        objc_autoreleasePoolPop(v95);
        locationUpdateTimestamp2 = [(__CFString *)v11 locationUpdateTimestamp];
        [(HMDHomeLocationHandler *)v96 setLocationUpdateTimestamp:locationUpdateTimestamp2];

        [transactionResult markChanged];
        dataCopy = v108;
        v10 = v109;
        goto LABEL_47;
      }

      goto LABEL_31;
    }

    if (intValue == 2)
    {
      v55 = isInternalBuild();
      v56 = objc_autoreleasePoolPush();
      v57 = v37;
      v58 = HMFGetOSLogHandle();
      v59 = os_log_type_enabled(v58, OS_LOG_TYPE_INFO);
      if (v55)
      {
        if (v59)
        {
          v60 = HMFGetLogIdentifier();
          [(__CFString *)v11 location];
          v61 = v11;
          v62 = messageCopy;
          v63 = transactionResult;
          v65 = v64 = home;
          *buf = 138543618;
          v112 = v60;
          v113 = 2112;
          v114 = v65;
          v66 = "%{public}@Used Core Routine's LOI data to determine home location : %@";
LABEL_29:
          _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, v66, buf, 0x16u);

          home = v64;
          transactionResult = v63;
          messageCopy = v62;
          v11 = v61;
        }
      }

      else if (v59)
      {
        v60 = HMFGetLogIdentifier();
        [(__CFString *)v11 location];
        v61 = v11;
        v62 = messageCopy;
        v63 = transactionResult;
        v65 = v64 = home;
        *buf = 138543619;
        v112 = v60;
        v113 = 2117;
        v114 = v65;
        v66 = "%{public}@Used Core Routine's LOI data to determine home location : %{sensitive}@";
        goto LABEL_29;
      }
    }

    else
    {
      if (!isInternalBuild())
      {
        goto LABEL_31;
      }

      v56 = objc_autoreleasePoolPush();
      v67 = v37;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v60 = HMFGetLogIdentifier();
        [(__CFString *)v11 location];
        v61 = v11;
        v62 = messageCopy;
        v63 = transactionResult;
        v65 = v64 = home;
        *buf = 138543618;
        v112 = v60;
        v113 = 2112;
        v114 = v65;
        v66 = "%{public}@Used Override to determine home location : %@";
        goto LABEL_29;
      }
    }

    objc_autoreleasePoolPop(v56);
LABEL_31:
    location7 = [(HMDHomeLocationHandler *)v37 location];
    if (location7)
    {
      v69 = location7;
      location8 = [(__CFString *)v11 location];

      if (location8)
      {
        v105 = home;
        location9 = [(HMDHomeLocationHandler *)v37 location];
        location10 = [(__CFString *)v11 location];
        v73 = [(HMDHomeLocationHandler *)v37 isNewHomeLocationTooCloseToPreviousLocation:location9 newLocation:location10];

        v74 = objc_autoreleasePoolPush();
        v75 = v37;
        v76 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          v77 = HMFGetLogIdentifier();
          v78 = v77;
          v79 = @"will";
          if (v73)
          {
            v79 = @"will not";
          }

          *buf = 138543618;
          v112 = v77;
          v113 = 2112;
          v114 = v79;
          _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_INFO, "%{public}@%@ push the new location to the cloud.", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v74);
        home = v105;
        if (v73)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_38;
  }

  if (v22)
  {
    HMFGetLogIdentifier();
    v29 = v110 = v10;
    v30 = v20;
    v31 = messageCopy;
    v32 = home;
    v33 = +[HMDBackingStoreTransactionOptions stringForHMDBackingStoreTransactionSource:](HMDBackingStoreTransactionOptions, "stringForHMDBackingStoreTransactionSource:", [transactionResult source]);
    *buf = 138543874;
    v112 = v29;
    v113 = 2112;
    v114 = v11;
    v115 = 2112;
    v116 = v33;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Ignoring the location data %@ from %@.", buf, 0x20u);

    home = v32;
    messageCopy = v31;
    v20 = v30;

    v10 = v110;
  }

  objc_autoreleasePoolPop(v19);
LABEL_47:

  return 0;
}

- (void)_updateTimeZone:(id)zone
{
  zoneCopy = zone;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3042000000;
  v6[3] = __Block_byref_object_copy__169426;
  v6[4] = __Block_byref_object_dispose__169427;
  objc_initWeak(&v7, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__HMDHomeLocationHandler__updateTimeZone___block_invoke;
  v5[3] = &unk_2797313C8;
  v5[4] = self;
  v5[5] = v6;
  [HMDLocation timeZoneISOCountryCodeForCLLocationAsync:zoneCopy withCompletion:v5];
  _Block_object_dispose(v6, 8);
  objc_destroyWeak(&v7);
}

void __42__HMDHomeLocationHandler__updateTimeZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v8 = WeakRetained;
  if (v5 && WeakRetained)
  {
    [WeakRetained setTimeZone:v5];
    [v8 setIsoCountryCode:v6];
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v8 timeZone];
      v14 = [v8 isoCountryCode];
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating timezone %@, country: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)_evaluateHomeRegionStateForCurrentDeviceLocation:(id)location
{
  v41 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  workQueue = [(HMDHomeLocationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeLocationHandler *)self home];
  v7 = isInternalBuild();
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      uuid = [home uuid];
      uUIDString = [uuid UUIDString];
      location = [(HMDHomeLocationHandler *)selfCopy location];
      *buf = 138544130;
      v34 = v12;
      v35 = 2112;
      v36 = uUIDString;
      v37 = 2112;
      v38 = location;
      v39 = 2112;
      v40 = locationCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Evaluating current device region state for home %@ using home location %@ and device location %@", buf, 0x2Au);
    }
  }

  else if (v11)
  {
    v16 = HMFGetLogIdentifier();
    uuid2 = [home uuid];
    uUIDString2 = [uuid2 UUIDString];
    location2 = [(HMDHomeLocationHandler *)selfCopy location];
    *buf = 138544131;
    v34 = v16;
    v35 = 2112;
    v36 = uUIDString2;
    v37 = 2117;
    v38 = location2;
    v39 = 2117;
    v40 = locationCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Evaluating current device region state for home %@ using home location %{sensitive}@ and device location %{sensitive}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  location3 = [(HMDHomeLocationHandler *)selfCopy location];
  if (locationCopy)
  {
    v21 = location3 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;

  if (v22)
  {
    [(HMDHomeLocationHandler *)selfCopy updateRegionStateFromLocation:locationCopy];
  }

  else if (locationCopy)
  {
    objc_initWeak(buf, selfCopy);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __75__HMDHomeLocationHandler__evaluateHomeRegionStateForCurrentDeviceLocation___block_invoke;
    v31[3] = &unk_2797313A0;
    objc_copyWeak(&v32, buf);
    [HMDLocation timeZoneISOCountryCodeForCLLocationAsync:locationCopy withCompletion:v31];
    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  v23 = objc_autoreleasePoolPush();
  v24 = selfCopy;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    uuid3 = [home uuid];
    uUIDString3 = [uuid3 UUIDString];
    [(HMDHomeLocationHandler *)v24 regionStateAtHome];
    v29 = HMRegionStateString();
    [(HMDHomeLocationHandler *)v24 regionStateNearbyHome];
    v30 = HMRegionStateString();
    *buf = 138544130;
    v34 = v26;
    v35 = 2114;
    v36 = uUIDString3;
    v37 = 2112;
    v38 = v29;
    v39 = 2112;
    v40 = v30;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@AtHome region state and NearbyHome region state for home %{public}@ are determined as %@ and %@ respectively", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v23);
  [home regionStateUpdated];
}

void __75__HMDHomeLocationHandler__evaluateHomeRegionStateForCurrentDeviceLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v5 && WeakRetained)
  {
    [WeakRetained setIsoCountryCode:v6];
    v9 = objc_autoreleasePoolPush();
    v10 = v8;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v10 isoCountryCode];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating device isoCountry code: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (BOOL)_shouldUpdateHomeLocation
{
  _canExtractLocation = [(HMDHomeLocationHandler *)self _canExtractLocation];
  if (_canExtractLocation)
  {

    LOBYTE(_canExtractLocation) = [(HMDHomeLocationHandler *)self _needToExtractLocations];
  }

  return _canExtractLocation;
}

- (BOOL)_needToExtractLocations
{
  v50 = *MEMORY[0x277D85DE8];
  location = [(HMDHomeLocationHandler *)self location];

  if (!location)
  {
    v34 = objc_autoreleasePoolPush();
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v42 = 138543362;
      v43 = v36;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Location is not known, need to extract location", &v42, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    return 1;
  }

  locationUpdateTimestamp = [(HMDHomeLocationHandler *)self locationUpdateTimestamp];

  if (!locationUpdateTimestamp)
  {
    goto LABEL_9;
  }

  locationUpdateTimestamp2 = [(HMDHomeLocationHandler *)self locationUpdateTimestamp];
  [locationUpdateTimestamp2 timeIntervalSinceNow];
  v7 = fabs(v6);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    home = [(HMDHomeLocationHandler *)selfCopy home];
    v13 = HMFTimeIntervalDescription();
    getLocationUpdateTimeInterval();
    v14 = HMFTimeIntervalDescription();
    v42 = 138544130;
    v43 = v11;
    v44 = 2112;
    v45 = home;
    v46 = 2112;
    v47 = v13;
    v48 = 2112;
    v49 = v14;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Time since last location update for home %@ is %@. Update interval is %@", &v42, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v7 >= getLocationUpdateTimeInterval())
  {
LABEL_9:
    lastAttemptedLocationUpdate = [(HMDHomeLocationHandler *)self lastAttemptedLocationUpdate];

    if (lastAttemptedLocationUpdate)
    {
      LocationUpdateTimeInterval = getLocationUpdateTimeInterval();
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        home2 = [(HMDHomeLocationHandler *)selfCopy2 home];
        lastAttemptedLocationUpdate2 = [(HMDHomeLocationHandler *)selfCopy2 lastAttemptedLocationUpdate];
        v28 = HMFTimeIntervalDescription();
        v42 = 138544130;
        v43 = v25;
        v44 = 2112;
        v45 = home2;
        v46 = 2112;
        v47 = lastAttemptedLocationUpdate2;
        v48 = 2112;
        v49 = v28;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Last location attempt for home %@ is %@. Update interval is %@", &v42, 0x2Au);
      }

      objc_autoreleasePoolPop(v22);
      lastAttemptedLocationUpdate3 = [(HMDHomeLocationHandler *)selfCopy2 lastAttemptedLocationUpdate];
      date = [MEMORY[0x277CBEAA8] date];
      [lastAttemptedLocationUpdate3 timeIntervalSinceDate:date];
      v32 = fabs(v31);

      if (v32 < LocationUpdateTimeInterval || vabdd_f64(v32, LocationUpdateTimeInterval) < 2.22044605e-16)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy2;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          v42 = 138543362;
          v43 = v41;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Not evalutating home location as last attempted time is below threshold.", &v42, 0xCu);
        }

        v19 = v38;
        goto LABEL_22;
      }

      date2 = [MEMORY[0x277CBEAA8] date];
      [(HMDHomeLocationHandler *)selfCopy2 setLastAttemptedLocationUpdate:date2];
    }

    return 1;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v42 = 138543362;
    v43 = v18;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Not extracting location as not enough time has passed.", &v42, 0xCu);
  }

  v19 = v15;
LABEL_22:
  objc_autoreleasePoolPop(v19);
  return 0;
}

- (BOOL)_canExtractLocation
{
  v16 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeLocationHandler *)self home];
  v4 = home;
  if (!home)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(&selfCopy2->super.super, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      objc_autoreleasePoolPop(v6);
      v5 = 0;
      goto LABEL_14;
    }

    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, &selfCopy2->super.super, OS_LOG_TYPE_ERROR, "%{public}@No home reference?", &v14, 0xCu);
    goto LABEL_12;
  }

  if (([home isAdminUser] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      v10 = "%{public}@Not evaluating home location as user is not Admin.";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
LABEL_11:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v14, 0xCu);
    }

LABEL_12:

    goto LABEL_13;
  }

  if ([(HMDHomeLocationHandler *)self locationAuthorization]!= 1)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      v10 = "%{public}@homed is not authorized for location services";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = 1;
LABEL_14:

  return v5;
}

- (BOOL)_hasReachableAccessoriesExcludingMatter
{
  v17 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeLocationHandler *)self home];
  v4 = home;
  if (!home)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = HMFGetOSLogHandle();
    if (!os_log_type_enabled(&selfCopy->super.super, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      objc_autoreleasePoolPop(v8);
      v7 = 0;
      goto LABEL_10;
    }

    v10 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v10;
    _os_log_impl(&dword_2531F8000, &selfCopy->super.super, OS_LOG_TYPE_ERROR, "%{public}@No home reference?", &v13, 0xCu);
LABEL_8:

    goto LABEL_9;
  }

  reachableAccessoriesCountExcludingMatter = [home reachableAccessoriesCountExcludingMatter];
  reachableAppleMediaAccessoriesCount = [v4 reachableAppleMediaAccessoriesCount];
  if ((reachableAppleMediaAccessoriesCount + reachableAccessoriesCountExcludingMatter < 0) ^ __OFADD__(reachableAppleMediaAccessoriesCount, reachableAccessoriesCountExcludingMatter) | (reachableAppleMediaAccessoriesCount + reachableAccessoriesCountExcludingMatter == 0))
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
      v16 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Home %@ does not have any reachable accessories, no need to extract location", &v13, 0x16u);
    }

    goto LABEL_8;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (void)accessoriesBecomeUnreachable
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@The last accessory becomes unreachable, trying to stop extracting location.", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHomeLocationHandler *)selfCopy setFirstAccessoryReachable:0];
}

- (void)accessoriesBecomeReachable
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@The first accessory becomes reachable, evaluating to extract location.", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHomeLocationHandler *)selfCopy setFirstAccessoryReachable:1];
  if ([(HMDHomeLocationHandler *)selfCopy _hasReachableAccessoriesExcludingMatter])
  {
    if ([(HMDHomeLocationHandler *)selfCopy _shouldUpdateHomeLocation])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = selfCopy;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        home = [(HMDHomeLocationHandler *)v8 home];
        v18 = 138543618;
        v19 = v10;
        v20 = 2112;
        v21 = home;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Accessories are reachable, extracting location for home %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [HMDRegionStateCorrectnessLogEvent updateWithFirstAccessory:[(HMDHomeLocationHandler *)v8 regionStateAtHome] nearbyHome:[(HMDHomeLocationHandler *)v8 regionStateNearbyHome]];
      logEventSubmitter = [(HMDHomeLocationHandler *)v8 logEventSubmitter];
      [logEventSubmitter submitLogEvent:v12];

      [(HMDHomeLocationHandler *)v8 updateHomeLocationFromSingleOrCoreRoutine];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@No reachable accessories, not extracting location.", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)updateHomeLocation
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HMDHomeLocationHandler *)self locationAuthorization]== 1)
  {
    home = [(HMDHomeLocationHandler *)self home];
    isAdminUser = [home isAdminUser];

    if (isAdminUser)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Extracting home location", &v10, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      v9 = +[HMDLocation sharedManager];
      [v9 startExtractingSingleLocationForDelegate:selfCopy];
    }
  }
}

- (void)_handleRetrieveLocation:(id)location
{
  v30 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if ([locationCopy isAuthorizedForLocationAccess])
  {
    proxyConnection = [locationCopy proxyConnection];
    processInfo = [proxyConnection processInfo];
    locationAuthorization = [processInfo locationAuthorization];
    [locationAuthorization mark];

    LODWORD(locationAuthorization) = isInternalBuild();
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (locationAuthorization)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        location = [(HMDHomeLocationHandler *)selfCopy location];
        home = [(HMDHomeLocationHandler *)selfCopy home];
        *buf = 138543874;
        v25 = v12;
        v26 = 2112;
        v27 = location;
        v28 = 2112;
        v29 = home;
        v15 = "%{public}@Sending location %@ for home %@";
LABEL_10:
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, v15, buf, 0x20u);
      }
    }

    else if (v11)
    {
      v12 = HMFGetLogIdentifier();
      location = [(HMDHomeLocationHandler *)selfCopy location];
      home = [(HMDHomeLocationHandler *)selfCopy home];
      *buf = 138543875;
      v25 = v12;
      v26 = 2117;
      v27 = location;
      v28 = 2112;
      v29 = home;
      v15 = "%{public}@Sending location %{sensitive}@ for home %@";
      goto LABEL_10;
    }

    objc_autoreleasePoolPop(v8);
    location2 = [(HMDHomeLocationHandler *)selfCopy location];
    v20 = encodeRootObject();
    v23 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [locationCopy respondWithPayload:v21];

    goto LABEL_12;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v18;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Client does not have authorization to location", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  [locationCopy respondWithPayload:0];
LABEL_12:
}

- (void)_handleLocationAuthorization:(int64_t)authorization
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HMDHomeLocationHandler *)self locationAuthorization]!= authorization)
  {
    [(HMDHomeLocationHandler *)self setLocationAuthorization:authorization];
    if (authorization == 1)
    {
      [(HMDHomeLocationHandler *)self _registerForRegionUpdate];
      v9 = +[HMDLocation sharedManager];
      [v9 startExtractingSingleLocationForDelegate:self];
    }

    else if (authorization == 2)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543362;
        v11 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received a call back that the location is not allowed for homed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }
  }
}

- (void)_handleLocationAuthorizationChangedNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo hmf_numberForKey:@"HMLocationAuthorizationKey"];

  if (v6)
  {
    -[HMDHomeLocationHandler _handleLocationAuthorization:](self, "_handleLocationAuthorization:", [v6 integerValue]);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@No location authorization", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (BOOL)_shouldRegisterForSignificantRegion
{
  if (isiOSDevice())
  {
    return 1;
  }

  return isMac();
}

- (void)_registerForRegionUpdate
{
  v73 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeLocationHandler *)self home];
  if (home)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    regionAtHome = [(HMDHomeLocationHandler *)self regionAtHome];

    if (regionAtHome)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543362;
        v72 = v9;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Deregistering for old location at home region updates", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      regionAtHome2 = [(HMDHomeLocationHandler *)selfCopy regionAtHome];
      [v4 addObject:regionAtHome2];
    }

    regionNearbyHome = [(HMDHomeLocationHandler *)self regionNearbyHome];

    if (regionNearbyHome)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v72 = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Deregistering for old location nearby home region updates", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      regionNearbyHome2 = [(HMDHomeLocationHandler *)selfCopy2 regionNearbyHome];
      [v4 addObject:regionNearbyHome2];
    }

    if ([v4 count])
    {
      v17 = +[HMDLocation sharedManager];
      v18 = objc_msgSend_copy(v4);
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __50__HMDHomeLocationHandler__registerForRegionUpdate__block_invoke;
      v69[3] = &unk_2797359D8;
      v69[4] = self;
      [v17 deregisterForRegionUpdate:v18 completionHandler:v69];
    }

    location = [(HMDHomeLocationHandler *)self location];

    if (location)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v72 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Registering for new location at home region and nearby home region updates", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      _shouldRegisterForSignificantRegion = [(HMDHomeLocationHandler *)selfCopy3 _shouldRegisterForSignificantRegion];
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy3;
      v27 = HMFGetOSLogHandle();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
      if (_shouldRegisterForSignificantRegion)
      {
        if (v28)
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          v72 = v29;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Using significant region for atHome GeoFence", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
        v30 = objc_alloc(MEMORY[0x277CBFCD8]);
        location2 = [(HMDHomeLocationHandler *)v26 location];
        [location2 coordinate];
        v33 = v32;
        v35 = v34;
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        v38 = [v30 initWithCenter:uUIDString radius:v33 identifier:{v35, 100.0}];
      }

      else
      {
        if (v28)
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          v72 = v43;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Using circular region for atHome GeoFence", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
        v44 = objc_alloc(MEMORY[0x277CBFBC8]);
        location2 = [(HMDHomeLocationHandler *)v26 location];
        [location2 coordinate];
        v46 = v45;
        v48 = v47;
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        v38 = [v44 initWithCenter:uUIDString radius:1 identifier:v46 nearbyAllowed:{v48, 100.0}];
      }

      v49 = v38;
      [(HMDHomeLocationHandler *)v26 setRegionAtHome:v38];

      regionAtHome3 = [(HMDHomeLocationHandler *)v26 regionAtHome];
      [regionAtHome3 setNotifyOnExit:1];

      regionAtHome4 = [(HMDHomeLocationHandler *)v26 regionAtHome];
      [regionAtHome4 setNotifyOnEntry:1];

      v52 = __homeRegionNearbyRadius();
      v53 = objc_alloc(MEMORY[0x277CBFBC8]);
      location3 = [(HMDHomeLocationHandler *)v26 location];
      [location3 coordinate];
      v56 = v55;
      v58 = v57;
      uUID2 = [MEMORY[0x277CCAD78] UUID];
      uUIDString2 = [uUID2 UUIDString];
      v61 = [v53 initWithCenter:uUIDString2 radius:1 identifier:v56 nearbyAllowed:{v58, v52}];
      [(HMDHomeLocationHandler *)v26 setRegionNearbyHome:v61];

      regionNearbyHome3 = [(HMDHomeLocationHandler *)v26 regionNearbyHome];
      [regionNearbyHome3 setNotifyOnExit:1];

      regionNearbyHome4 = [(HMDHomeLocationHandler *)v26 regionNearbyHome];
      [regionNearbyHome4 setNotifyOnEntry:1];

      logAndPostNotification(@"HMDLocationHomeGeofencesRegistered", v26, 0);
      v64 = +[HMDLocation sharedManager];
      regionAtHome5 = [(HMDHomeLocationHandler *)v26 regionAtHome];
      v70[0] = regionAtHome5;
      regionNearbyHome5 = [(HMDHomeLocationHandler *)v26 regionNearbyHome];
      v70[1] = regionNearbyHome5;
      v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __50__HMDHomeLocationHandler__registerForRegionUpdate__block_invoke_63;
      v68[3] = &unk_2797359D8;
      v68[4] = v26;
      [v64 registerForRegionUpdate:v67 withDelegate:v26 completionHandler:v68];
    }
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v72 = v42;
      _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v39);
  }
}

void __50__HMDHomeLocationHandler__registerForRegionUpdate__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Region update deregistered with error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __50__HMDHomeLocationHandler__registerForRegionUpdate__block_invoke_63(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Region update registered with error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_registerForMessages
{
  v8[1] = *MEMORY[0x277D85DE8];
  msgDispatcher = [(HMDHomeLocationHandler *)self msgDispatcher];
  v4 = *MEMORY[0x277CD2568];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [msgDispatcher registerForMessage:v4 receiver:self policies:v6 selector:sel__handleRetrieveLocation_];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleLocationAuthorizationChangedNotification_ name:@"HMLocationAuthorizationChangedNotification" object:0];
}

- (void)configure:(id)configure queue:(id)queue messageDispatcher:(id)dispatcher
{
  v33 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  [(HMDHomeLocationHandler *)self setHome:configureCopy];
  [(HMDHomeLocationHandler *)self setWorkQueue:queueCopy];
  [(HMDHomeLocationHandler *)self setMsgDispatcher:dispatcherCopy];
  v11 = isInternalBuild();
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      location = selfCopy->_location;
      hmf_localTimeDescription = [(NSDate *)selfCopy->_locationUpdateTimestamp hmf_localTimeDescription];
      v19 = HMDHomeLocationSourceToString(selfCopy->_locationSource);
      v23 = 138544386;
      v24 = v16;
      v25 = 2112;
      v26 = configureCopy;
      v27 = 2112;
      v28 = location;
      v29 = 2112;
      v30 = hmf_localTimeDescription;
      v31 = 2112;
      v32 = v19;
      v20 = "%{public}@Configured location handler for home %@, with: %@, and timestamp with: %@, and source: %@";
LABEL_6:
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, v20, &v23, 0x34u);
    }
  }

  else if (v15)
  {
    v16 = HMFGetLogIdentifier();
    v21 = selfCopy->_location;
    hmf_localTimeDescription = [(NSDate *)selfCopy->_locationUpdateTimestamp hmf_localTimeDescription];
    v19 = HMDHomeLocationSourceToString(selfCopy->_locationSource);
    v23 = 138544387;
    v24 = v16;
    v25 = 2112;
    v26 = configureCopy;
    v27 = 2117;
    v28 = v21;
    v29 = 2112;
    v30 = hmf_localTimeDescription;
    v31 = 2112;
    v32 = v19;
    v20 = "%{public}@Configured location handler for home %@, with: %{sensitive}@, and timestamp with: %@, and source: %@";
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v12);
  [(HMDHomeLocationHandler *)selfCopy _updateTimeZone:selfCopy->_location];
  [(HMDHomeLocationHandler *)selfCopy _registerForMessages];
  v22 = +[HMDLocation sharedManager];
  -[HMDHomeLocationHandler _handleLocationAuthorization:](selfCopy, "_handleLocationAuthorization:", [v22 locationAuthorized]);
}

- (void)dealloc
{
  msgDispatcher = [(HMDHomeLocationHandler *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDHomeLocationHandler;
  [(HMDHomeLocationHandler *)&v4 dealloc];
}

- (HMDHomeLocationHandler)init
{
  v15.receiver = self;
  v15.super_class = HMDHomeLocationHandler;
  v2 = [(HMDHomeLocationHandler *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_locationAuthorization = 0;
    v2->_coalesceRegionUpdateIntervalInSeconds = 3.0;
    v2->_firstAccessoryReachable = 0;
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    lastArrival = v3->_lastArrival;
    v3->_lastArrival = v4;

    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    lastExit = v3->_lastExit;
    v3->_lastExit = v6;

    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:0.0];
    lastAttemptedLocationUpdate = v3->_lastAttemptedLocationUpdate;
    v3->_lastAttemptedLocationUpdate = v8;

    v3->_resendOnce = 0;
    v3->_shouldUpdateHomeLocation = 0;
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    homeLocationUpdateRequestTime = v3->_homeLocationUpdateRequestTime;
    v3->_homeLocationUpdateRequestTime = v10;

    v3->_regionStateAtHome = 0;
    v3->_regionStateNearbyHome = 0;
    v12 = +[HMDMetricsManager sharedLogEventSubmitter];
    logEventSubmitter = v3->_logEventSubmitter;
    v3->_logEventSubmitter = v12;

    v3->_pairingHomeLocationOverride = 0;
  }

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  location = [(HMDHomeLocationHandler *)self location];
  v5 = locationAsString(location);
  locationUpdateTimestamp = [(HMDHomeLocationHandler *)self locationUpdateTimestamp];
  hmf_localTimeDescription = [locationUpdateTimestamp hmf_localTimeDescription];
  v8 = HMDHomeLocationSourceToString([(HMDHomeLocationHandler *)self locationSource]);
  v9 = [v3 initWithFormat:@"Loc: %@, Timestamp: %@, Source: %@", v5, hmf_localTimeDescription, v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t100 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t100, &__block_literal_global_169489);
  }

  v3 = logCategory__hmf_once_v101;

  return v3;
}

uint64_t __37__HMDHomeLocationHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v101;
  logCategory__hmf_once_v101 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end