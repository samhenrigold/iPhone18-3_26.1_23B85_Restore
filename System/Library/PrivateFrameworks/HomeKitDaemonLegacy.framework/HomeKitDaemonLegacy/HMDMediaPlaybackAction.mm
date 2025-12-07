@interface HMDMediaPlaybackAction
+ (BOOL)isPlaybackActionValidWithProfiles:(id)profiles state:(int64_t)state volume:(id)volume;
+ (HMDMediaPlaybackAction)actionWithDictionaryRepresentation:(id)representation home:(id)home;
+ (id)logCategory;
- (BOOL)isAssociatedWithAccessory:(id)accessory;
- (BOOL)isCompatibleWithAction:(id)action;
- (HMDHome)home;
- (HMDMediaPlaybackAction)initWithCoder:(id)coder;
- (HMDMediaPlaybackAction)initWithModelObject:(id)object parent:(id)parent error:(id *)error;
- (HMDMediaPlaybackAction)initWithUUID:(id)d mediaProfiles:(id)profiles playbackState:(int64_t)state volume:(id)volume playbackArchive:(id)archive actionSet:(id)set;
- (HMDMediaPlaybackActionAsCharacteristicWriteRequests)convertedCharacteristicWriteRequests;
- (NSString)description;
- (id)associatedAccessories;
- (id)dictionaryRepresentation;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)modelObjectWithUpdatedMediaProfiles:(id)profiles;
- (id)stateDump;
- (id)validate;
- (void)_processPlaybackActionModelUpdated:(id)updated message:(id)message;
- (void)configureWithHome:(id)home;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithSource:(unint64_t)source clientName:(id)name completionHandler:(id)handler;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDMediaPlaybackAction

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)modelObjectWithUpdatedMediaProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = [(HMDAction *)self modelObjectWithChangeType:2];
  if (v5)
  {
    home = [(HMDMediaPlaybackAction *)self home];
    if (!home)
    {
      actionSet = [(HMDAction *)self actionSet];
      home = [actionSet home];
    }

    v8 = __mapProfilesToProfileUUIDs(profilesCopy);
    [v5 setProfiles:v8];
    v9 = mapProfilesToAccessoryUUIDs(home, v8);
    [v5 setAccessories:v9];

    v10 = mapProfilesToServiceUUIDs(home, v8);
    [v5 setServices:v10];

    v11 = v5;
  }

  return v5;
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  if (version < 4)
  {
    v10 = 0;
  }

  else
  {
    actionSet = [(HMDAction *)self actionSet];
    v7 = [HMDMediaPlaybackActionModel alloc];
    uuid = [(HMDAction *)self uuid];
    uuid2 = [actionSet uuid];
    v10 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDMediaPlaybackAction state](self, "state")}];
    [(HMDMediaPlaybackActionModel *)v10 setState:v11];

    volume = [(HMDMediaPlaybackAction *)self volume];
    [(HMDMediaPlaybackActionModel *)v10 setVolume:volume];

    home = [(HMDMediaPlaybackAction *)self home];
    if (!home)
    {
      home = [actionSet home];
    }

    profileUUIDs = [(HMDMediaPlaybackAction *)self profileUUIDs];
    v15 = objc_msgSend_copy(profileUUIDs);
    [(HMDMediaPlaybackActionModel *)v10 setProfiles:v15];

    profileUUIDs2 = [(HMDMediaPlaybackAction *)self profileUUIDs];
    v17 = mapProfilesToAccessoryUUIDs(home, profileUUIDs2);
    [(HMDMediaPlaybackActionModel *)v10 setAccessories:v17];

    profileUUIDs3 = [(HMDMediaPlaybackAction *)self profileUUIDs];
    v19 = mapProfilesToServiceUUIDs(home, profileUUIDs3);
    [(HMDMediaPlaybackActionModel *)v10 setServices:v19];

    playbackArchive = [(HMDMediaPlaybackAction *)self playbackArchive];
    [(HMDMediaPlaybackActionModel *)v10 setEncodedPlaybackArchive:playbackArchive];
  }

  return v10;
}

- (HMDMediaPlaybackAction)initWithModelObject:(id)object parent:(id)parent error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  parentCopy = parent;
  v10 = objectCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = parentCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      home = [v15 home];
      profiles = [v12 profiles];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __59__HMDMediaPlaybackAction_initWithModelObject_parent_error___block_invoke;
      v46[3] = &unk_2797330F0;
      v18 = home;
      v47 = v18;
      v19 = [profiles na_map:v46];

      if ([v19 count])
      {
        v42 = v19;
        v44 = v15;
        v41 = v18;
        v20 = [v19 count];
        profiles2 = [v12 profiles];
        v22 = [profiles2 count];

        if (v20 != v22)
        {
          v23 = objc_autoreleasePoolPush();
          selfCopy = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            profiles3 = [v12 profiles];
            *buf = 138543874;
            v49 = v26;
            v50 = 2112;
            v51 = v42;
            v52 = 2112;
            v53 = profiles3;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Couldn't find all media profiles on the home, found: %@ from UUIDs: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v23);
        }

        uuid = [v12 uuid];
        state = [v12 state];
        integerValue = [state integerValue];
        volume = [v12 volume];
        [v12 encodedPlaybackArchive];
        v33 = v32 = parentCopy;
        v19 = v42;
        self = [(HMDMediaPlaybackAction *)self initWithUUID:uuid mediaProfiles:v42 playbackState:integerValue volume:volume playbackArchive:v33 actionSet:v44];

        parentCopy = v32;
        v15 = v44;

        selfCopy2 = self;
        v18 = v41;
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        self = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v37 = v43 = v35;
          [v12 profiles];
          v45 = v15;
          v39 = v38 = v19;
          *buf = 138543618;
          v49 = v37;
          v50 = 2112;
          v51 = v39;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find any media profiles in the home for the UUIDs: %@", buf, 0x16u);

          v19 = v38;
          v15 = v45;

          v35 = v43;
        }

        objc_autoreleasePoolPop(v35);
        if (error)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          *error = selfCopy2 = 0;
        }

        else
        {
          selfCopy2 = 0;
        }
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      *error = selfCopy2 = 0;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
    *error = selfCopy2 = 0;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

id __59__HMDMediaPlaybackAction_initWithModelObject_parent_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  v6 = [*(a1 + 32) mediaProfileWithUUID:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v35 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = HMDMediaPlaybackAction;
  [(HMDAction *)&v24 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDMediaPlaybackAction state](self, "state")}];
  [coderCopy encodeObject:v5 forKey:*MEMORY[0x277CD08A8]];

  volume = [(HMDMediaPlaybackAction *)self volume];
  [coderCopy encodeObject:volume forKey:*MEMORY[0x277CD08B8]];

  playbackArchive = [(HMDMediaPlaybackAction *)self playbackArchive];
  [coderCopy encodeObject:playbackArchive forKey:*MEMORY[0x277CD0888]];

  if ([coderCopy hmd_isForXPCTransport])
  {
    mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
    [coderCopy encodeObject:mediaProfiles forKey:*MEMORY[0x277CD0898]];

    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      uuid = [(HMDAction *)selfCopy uuid];
      uUIDString = [uuid UUIDString];
      state = [(HMDMediaPlaybackAction *)selfCopy state];
      mediaProfiles2 = [(HMDMediaPlaybackAction *)selfCopy mediaProfiles];
      playbackArchive2 = [(HMDMediaPlaybackAction *)selfCopy playbackArchive];
      *buf = 138544386;
      v26 = v12;
      v27 = 2112;
      v28 = uUIDString;
      v29 = 2048;
      v30 = state;
      v31 = 2112;
      v32 = mediaProfiles2;
      v33 = 2112;
      v34 = playbackArchive2;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@XPC Encoded Playback action uuid %@ state %tu profiles %@ playbackArchive %@", buf, 0x34u);

LABEL_6:
    }
  }

  else
  {
    profileUUIDs = [(HMDMediaPlaybackAction *)self profileUUIDs];
    [coderCopy encodeObject:profileUUIDs forKey:@"HDMPA.profileUUIDs"];

    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      uuid2 = [(HMDAction *)selfCopy2 uuid];
      uUIDString2 = [uuid2 UUIDString];
      state2 = [(HMDMediaPlaybackAction *)selfCopy2 state];
      profileUUIDs2 = [(HMDMediaPlaybackAction *)selfCopy2 profileUUIDs];
      *buf = 138544130;
      v26 = v12;
      v27 = 2112;
      v28 = uUIDString2;
      v29 = 2048;
      v30 = state2;
      v31 = 2112;
      v32 = profileUUIDs2;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Cloud Encoded Playback action uuid %@ state %tu profiles %@", buf, 0x2Au);

      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v9);
}

- (HMDMediaPlaybackAction)initWithCoder:(id)coder
{
  v32 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [[HMDAction alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD08A8]];
    integerValue = [v25 integerValue];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD08B8]];
    v7 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v9 = [v7 setWithArray:v8];

    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"HDMPA.profileUUIDs"];
    v11 = [v10 mutableCopy];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0888]];
    actionSet = [(HMDAction *)v5 actionSet];
    uuid = [(HMDAction *)v5 uuid];
    v15 = [MEMORY[0x277CBEB98] set];
    v16 = [(HMDMediaPlaybackAction *)self initWithUUID:uuid mediaProfiles:v15 playbackState:integerValue volume:v6 playbackArchive:v12 actionSet:actionSet];

    [(HMDMediaPlaybackAction *)v16 setProfileUUIDs:v11];
    selfCopy = v16;

    v18 = selfCopy;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v26.receiver = selfCopy;
      v26.super_class = HMDMediaPlaybackAction;
      v22 = [(HMDMediaPlaybackAction *)&v26 class];
      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = v22;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode base class: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  return v18;
}

- (void)_processPlaybackActionModelUpdated:(id)updated message:(id)message
{
  v56 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  messageCopy = message;
  transactionResult = [messageCopy transactionResult];
  setProperties = [updatedCopy setProperties];
  v10 = [setProperties containsObject:@"state"];

  if (v10)
  {
    state = [updatedCopy state];
    -[HMDMediaPlaybackAction setState:](self, "setState:", [state integerValue]);
  }

  setProperties2 = [updatedCopy setProperties];
  v13 = [setProperties2 containsObject:@"volume"];

  if (v13)
  {
    volume = [updatedCopy volume];
    [(HMDMediaPlaybackAction *)self setVolume:volume];

    v10 = 1;
  }

  setProperties3 = [updatedCopy setProperties];
  v16 = [setProperties3 containsObject:@"encodedPlaybackArchive"];

  if (v16)
  {
    encodedPlaybackArchive = [updatedCopy encodedPlaybackArchive];
    [(HMDMediaPlaybackAction *)self setPlaybackArchive:encodedPlaybackArchive];

    v10 = 1;
  }

  setProperties4 = [updatedCopy setProperties];
  v19 = [setProperties4 containsObject:@"profiles"];

  if (v19)
  {
    home = [(HMDMediaPlaybackAction *)self home];
    profiles = [updatedCopy profiles];
    v22 = __mapUUIDsToProfiles(home, profiles);
    [(HMDMediaPlaybackAction *)self setMediaProfiles:v22];

    profiles2 = [updatedCopy profiles];
    v24 = [profiles2 mutableCopy];
    [(HMDMediaPlaybackAction *)self setProfileUUIDs:v24];
  }

  else if (!v10)
  {
    actionSet = 0;
    goto LABEL_17;
  }

  actionSet = [(HMDAction *)self actionSet];
  home2 = [actionSet home];
  v27 = home2;
  if (actionSet && home2)
  {
    v46[0] = *MEMORY[0x277CD2060];
    uuid = [(HMDAction *)self uuid];
    uUIDString = [uuid UUIDString];
    v47[0] = uUIDString;
    v46[1] = *MEMORY[0x277CD2028];
    dictionaryRepresentation = [(HMDMediaPlaybackAction *)self dictionaryRepresentation];
    v47[1] = dictionaryRepresentation;
    v46[2] = *MEMORY[0x277CD0640];
    [v27 uuid];
    v31 = v30 = transactionResult;
    [v31 UUIDString];
    v44 = v27;
    v33 = v32 = messageCopy;
    v47[2] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];

    messageCopy = v32;
    transactionResult = v30;

    actionSet = v34;
LABEL_17:
    [messageCopy respondWithPayload:actionSet];
    v40 = objc_autoreleasePoolPush();
    selfCopy = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v43;
      v50 = 2112;
      v51 = actionSet;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Responding to client after updating action with response: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    [transactionResult markChanged];
    goto LABEL_20;
  }

  v35 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = HMFGetLogIdentifier();
    *buf = 138544130;
    v49 = v38;
    v50 = 2112;
    v51 = updatedCopy;
    v52 = 2112;
    v53 = actionSet;
    v54 = 2112;
    v55 = v27;
    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Playback action Model object (%@) missing actionset %@ or home %@ ", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v35);
  v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v39];

LABEL_20:
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
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
    [(HMDMediaPlaybackAction *)self _processPlaybackActionModelUpdated:v13 message:messageCopy];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v17;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = objc_opt_class();
      v18 = v25;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v19];
  }
}

- (id)associatedAccessories
{
  mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
  v3 = [mediaProfiles na_map:&__block_literal_global_38_177460];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (BOOL)isCompatibleWithAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = HMDMediaPlaybackAction;
  if ([(HMDAction *)&v9 isCompatibleWithAction:actionCopy])
  {
    mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
    mediaProfiles2 = [actionCopy mediaProfiles];
    v7 = [mediaProfiles isEqual:mediaProfiles2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAssociatedWithAccessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  home = [accessoryCopy home];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  profileUUIDs = [(HMDMediaPlaybackAction *)self profileUUIDs];
  v7 = objc_msgSend_copy(profileUUIDs);
  v8 = mapProfilesToAccessoryUUIDs(home, v7);

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        uuid = [accessoryCopy uuid];
        uUIDString = [uuid UUIDString];
        LOBYTE(v12) = [v12 isEqualToString:uUIDString];

        if (v12)
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (NSString)description
{
  mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
  v4 = [mediaProfiles na_map:&__block_literal_global_177463];
  allObjects = [v4 allObjects];
  v6 = [allObjects componentsJoinedByString:{@", \n"}];

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  uuid = [(HMDAction *)self uuid];
  state = [(HMDMediaPlaybackAction *)self state];
  volume = [(HMDMediaPlaybackAction *)self volume];
  playbackArchive = [(HMDMediaPlaybackAction *)self playbackArchive];
  v14 = [v7 stringWithFormat:@"%@<uuid %@ play state %ld volume %@ playbackArchive %@ mediaProfiles {%@}>", v9, uuid, state, volume, playbackArchive, v6];

  return v14;
}

- (HMDMediaPlaybackActionAsCharacteristicWriteRequests)convertedCharacteristicWriteRequests
{
  v42 = *MEMORY[0x277D85DE8];
  playbackArchive = [(HMDMediaPlaybackAction *)self playbackArchive];

  if (playbackArchive)
  {
    v4 = 0;
  }

  else
  {
    mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
    allObjects = [mediaProfiles allObjects];

    v36 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(allObjects, "count")}];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2 * objc_msgSend(allObjects, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = allObjects;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          if (v15)
          {
            if ([(HMDMediaPlaybackAction *)self state])
            {
              v16 = [v15 playStateWriteRequestWithPlaybackState:{-[HMDMediaPlaybackAction state](self, "state")}];
              if (v16)
              {
                [v7 addObject:v16];
              }
            }

            volume = [(HMDMediaPlaybackAction *)self volume];

            if (volume)
            {
              volume2 = [(HMDMediaPlaybackAction *)self volume];
              [volume2 floatValue];
              v20 = v19 / 100.0;

              *&v21 = v20;
              [MEMORY[0x277CCABB0] numberWithFloat:v21];
              v23 = v22 = v7;
              v24 = [v15 volumeWriteRequestWithVolumePercentage:v23];

              v7 = v22;
              if (v24)
              {
                [v22 addObject:v24];
              }
            }
          }

          else
          {
            [v36 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v25 = v36;
      if ([v36 count])
      {
        v26 = [HMDMediaPlaybackAction alloc];
        uuid = [(HMDAction *)self uuid];
        state = [(HMDMediaPlaybackAction *)self state];
        [(HMDMediaPlaybackAction *)self volume];
        v30 = v29 = v7;
        playbackArchive2 = [(HMDMediaPlaybackAction *)self playbackArchive];
        actionSet = [(HMDAction *)self actionSet];
        v33 = [(HMDMediaPlaybackAction *)v26 initWithUUID:uuid mediaProfiles:v36 playbackState:state volume:v30 playbackArchive:playbackArchive2 actionSet:actionSet];

        v7 = v29;
        home = [(HMDMediaPlaybackAction *)self home];
        [(HMDMediaPlaybackAction *)v33 configureWithHome:home];
      }

      else
      {
        v33 = 0;
      }

      v4 = [[HMDMediaPlaybackActionAsCharacteristicWriteRequests alloc] initWithAction:v33 characteristicWriteRequests:v7];
    }

    else
    {
      v4 = 0;
      v25 = v36;
    }
  }

  return v4;
}

- (id)validate
{
  v24 = *MEMORY[0x277D85DE8];
  mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
  state = [(HMDMediaPlaybackAction *)self state];
  volume = [(HMDMediaPlaybackAction *)self volume];
  v6 = [HMDMediaPlaybackAction isPlaybackActionValidWithProfiles:mediaProfiles state:state volume:volume];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      state2 = [(HMDMediaPlaybackAction *)selfCopy state];
      volume2 = [(HMDMediaPlaybackAction *)selfCopy volume];
      mediaProfiles2 = [(HMDMediaPlaybackAction *)selfCopy mediaProfiles];
      v16 = 138544130;
      v17 = v11;
      v18 = 2048;
      v19 = state2;
      v20 = 2112;
      v21 = volume2;
      v22 = 2048;
      v23 = [mediaProfiles2 count];
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Invalid configuration for media playback action - state: %tu  volume: %@  #Profiles: %tu", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid configuration for media playback action" reason:0 suggestion:0];
  }

  return v7;
}

- (void)executeWithSource:(unint64_t)source clientName:(id)name completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  home = [(HMDMediaPlaybackAction *)self home];
  if (home)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Executing media playback action", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    objc_initWeak(buf, selfCopy);
    mediaActionRouter = [home mediaActionRouter];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __73__HMDMediaPlaybackAction_executeWithSource_clientName_completionHandler___block_invoke;
    v17[3] = &unk_279734508;
    objc_copyWeak(&v19, buf);
    v18 = handlerCopy;
    [mediaActionRouter routeMediaActionForExecution:selfCopy source:source clientName:nameCopy completion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else if (handlerCopy)
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    (*(handlerCopy + 2))(handlerCopy, v16);
  }
}

void __73__HMDMediaPlaybackAction_executeWithSource_clientName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v9 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v9;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v3;
    v10 = "%{public}@Failed to execute %@ with error: %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = v6;
    v10 = "%{public}@Successfully executed %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 22;
  }

  _os_log_impl(&dword_2531F8000, v11, v12, v10, &v15, v13);

LABEL_7:
  objc_autoreleasePoolPop(v5);
  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v3);
  }
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = HMDMediaPlaybackAction;
  dictionaryRepresentation = [(HMDAction *)&v22 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDMediaPlaybackAction state](self, "state")}];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD08B0]];

  volume = [(HMDMediaPlaybackAction *)self volume];
  [v4 setObject:volume forKeyedSubscript:*MEMORY[0x277CD08C0]];

  mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
  v8 = __mapProfilesToProfileUUIDs(mediaProfiles);
  allObjects = [v8 allObjects];
  [v4 setObject:allObjects forKeyedSubscript:*MEMORY[0x277CD08A0]];

  playbackArchive = [(HMDMediaPlaybackAction *)self playbackArchive];

  if (playbackArchive)
  {
    v11 = MEMORY[0x277CCAAB0];
    playbackArchive2 = [(HMDMediaPlaybackAction *)self playbackArchive];
    v21 = 0;
    v13 = [v11 archivedDataWithRootObject:playbackArchive2 requiringSecureCoding:1 error:&v21];
    v14 = v21;

    if (v13)
    {
      [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD0890]];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v18;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Couldn't encode playbackArchive: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v19 = objc_msgSend_copy(v4);

  return v19;
}

- (id)stateDump
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  uuid = [(HMDAction *)self uuid];
  uUIDString = [uuid UUIDString];
  state = [(HMDMediaPlaybackAction *)self state];
  volume = [(HMDMediaPlaybackAction *)self volume];
  playbackArchive = [(HMDMediaPlaybackAction *)self playbackArchive];
  profileUUIDs = [(HMDMediaPlaybackAction *)self profileUUIDs];
  v10 = [v3 stringWithFormat:@"Action uuid: %@, state: %tu, volume: %@, playbackArchive: %@, profileUUIDs: %@", uUIDString, state, volume, playbackArchive, profileUUIDs];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
  v12 = [mediaProfiles countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(mediaProfiles);
        }

        uniqueIdentifier = [*(*(&v20 + 1) + 8 * i) uniqueIdentifier];
        uUIDString2 = [uniqueIdentifier UUIDString];
        [v10 appendFormat:@" %@", uUIDString2];
      }

      v13 = [mediaProfiles countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v18 = objc_msgSend_copy(v10);

  return v18;
}

- (void)configureWithHome:(id)home
{
  v19 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  [(HMDMediaPlaybackAction *)self setHome:homeCopy];
  profileUUIDs = [(HMDMediaPlaybackAction *)self profileUUIDs];
  v6 = __mapUUIDsToProfiles(homeCopy, profileUUIDs);
  [(HMDMediaPlaybackAction *)self setMediaProfiles:v6];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    profileUUIDs2 = [(HMDMediaPlaybackAction *)selfCopy profileUUIDs];
    mediaProfiles = [(HMDMediaPlaybackAction *)selfCopy mediaProfiles];
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = profileUUIDs2;
    v17 = 2112;
    v18 = mediaProfiles;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Mapped profile UUIDs %@ to profiles %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
}

- (HMDMediaPlaybackAction)initWithUUID:(id)d mediaProfiles:(id)profiles playbackState:(int64_t)state volume:(id)volume playbackArchive:(id)archive actionSet:(id)set
{
  profilesCopy = profiles;
  volumeCopy = volume;
  archiveCopy = archive;
  setCopy = set;
  v26.receiver = self;
  v26.super_class = HMDMediaPlaybackAction;
  v19 = [(HMDAction *)&v26 initWithUUID:d actionSet:setCopy];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_mediaProfiles, profiles);
    v21 = __mapProfilesToProfileUUIDs(profilesCopy);
    v22 = [v21 mutableCopy];
    profileUUIDs = v20->_profileUUIDs;
    v20->_profileUUIDs = v22;

    objc_storeStrong(&v20->_volume, volume);
    v20->_state = state;
    objc_storeStrong(&v20->_playbackArchive, archive);
    home = [setCopy home];
    objc_storeWeak(&v20->_home, home);
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_177503 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_177503, &__block_literal_global_63_177504);
  }

  v3 = logCategory__hmf_once_v25_177505;

  return v3;
}

uint64_t __37__HMDMediaPlaybackAction_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v25_177505;
  logCategory__hmf_once_v25_177505 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (BOOL)isPlaybackActionValidWithProfiles:(id)profiles state:(int64_t)state volume:(id)volume
{
  profilesCopy = profiles;
  volumeCopy = volume;
  [volumeCopy floatValue];
  if (v9 >= -0.00000011921)
  {
    [volumeCopy floatValue];
    v10 = v11 <= 100.0;
  }

  else
  {
    v10 = 0;
  }

  v12 = [profilesCopy count];
  v14 = state < 3 && v12 != 0;

  return v14 && v10;
}

+ (HMDMediaPlaybackAction)actionWithDictionaryRepresentation:(id)representation home:(id)home
{
  v50 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  homeCopy = home;
  v8 = [representationCopy hmf_numberForKey:*MEMORY[0x277CD2058]];
  if ([v8 unsignedIntegerValue] == 1)
  {
    v9 = [HMDMediaPlaybackActionModel alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = [homeCopy uuid];
    v12 = [(HMDBackingStoreModelObject *)v9 initWithObjectChangeType:0 uuid:uUID parentUUID:uuid];

    [(HMDMediaPlaybackActionModel *)v12 loadModelWithActionInformation:representationCopy];
    profiles = [(HMDMediaPlaybackActionModel *)v12 profiles];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __66__HMDMediaPlaybackAction_actionWithDictionaryRepresentation_home___block_invoke;
    v42[3] = &unk_2797330F0;
    v43 = homeCopy;
    v14 = [profiles na_map:v42];

    if ([v14 count])
    {
      v41 = v8;
      v15 = [v14 count];
      profiles2 = [(HMDMediaPlaybackActionModel *)v12 profiles];
      v17 = [profiles2 count];

      if (v15 != v17)
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          profiles3 = [(HMDMediaPlaybackActionModel *)v12 profiles];
          *buf = 138543874;
          v45 = v21;
          v46 = 2112;
          v47 = v14;
          v48 = 2112;
          v49 = profiles3;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Couldn't find all media profiles on the home, found: %@ from UUIDs: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
      }

      v23 = [HMDMediaPlaybackAction alloc];
      uuid2 = [(HMDBackingStoreModelObject *)v12 uuid];
      state = [(HMDMediaPlaybackActionModel *)v12 state];
      integerValue = [state integerValue];
      volume = [(HMDMediaPlaybackActionModel *)v12 volume];
      [(HMDMediaPlaybackActionModel *)v12 encodedPlaybackArchive];
      v29 = v28 = homeCopy;
      v30 = [(HMDMediaPlaybackAction *)v23 initWithUUID:uuid2 mediaProfiles:v14 playbackState:integerValue volume:volume playbackArchive:v29 actionSet:0];

      homeCopy = v28;
      v8 = v41;
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        profiles4 = [(HMDMediaPlaybackActionModel *)v12 profiles];
        *buf = 138543618;
        v45 = v38;
        v46 = 2112;
        v47 = profiles4;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find any media profiles in the home for the UUIDs: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v30 = 0;
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v34;
      v46 = 2112;
      v47 = v8;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Invalid action type: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v30 = 0;
  }

  return v30;
}

id __66__HMDMediaPlaybackAction_actionWithDictionaryRepresentation_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  v6 = [*(a1 + 32) mediaProfileWithUUID:v5];

  return v6;
}

@end