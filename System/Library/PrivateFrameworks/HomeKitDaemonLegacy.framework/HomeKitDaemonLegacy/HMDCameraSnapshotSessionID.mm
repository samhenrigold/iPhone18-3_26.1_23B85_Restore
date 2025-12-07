@interface HMDCameraSnapshotSessionID
- (HMDCameraSnapshotSessionID)initWithAccessory:(id)accessory message:(id)message;
- (HMDCameraSnapshotSessionID)initWithSessionID:(id)d hostProcessBundleIdentifier:(id)identifier isSPIClient:(BOOL)client deviceSectionName:(id)name description:(id)description snapshotReason:(unint64_t)reason snapshotRequestForBulletin:(BOOL)bulletin snapshotCharacteristicEventUUID:(id)self0 streamingTier:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMDCameraSnapshotSessionID

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDCameraSnapshotSessionID allocWithZone:zone];
  sessionID = [(HMDCameraSessionID *)self sessionID];
  hostProcessBundleIdentifier = [(HMDCameraSessionID *)self hostProcessBundleIdentifier];
  isSPIClient = [(HMDCameraSessionID *)self isSPIClient];
  deviceSectionName = [(HMDCameraSessionID *)self deviceSectionName];
  v9 = [(HMDCameraSessionID *)self description];
  snapshotReason = [(HMDCameraSnapshotSessionID *)self snapshotReason];
  isSnapshotRequestForBulletin = [(HMDCameraSnapshotSessionID *)self isSnapshotRequestForBulletin];
  snapshotCharacteristicEventUUID = [(HMDCameraSnapshotSessionID *)self snapshotCharacteristicEventUUID];
  streamingTier = [(HMDCameraSnapshotSessionID *)self streamingTier];
  LOBYTE(v16) = isSnapshotRequestForBulletin;
  v14 = [(HMDCameraSnapshotSessionID *)v4 initWithSessionID:sessionID hostProcessBundleIdentifier:hostProcessBundleIdentifier isSPIClient:isSPIClient deviceSectionName:deviceSectionName description:v9 snapshotReason:snapshotReason snapshotRequestForBulletin:v16 snapshotCharacteristicEventUUID:snapshotCharacteristicEventUUID streamingTier:streamingTier];

  return v14;
}

- (HMDCameraSnapshotSessionID)initWithAccessory:(id)accessory message:(id)message
{
  v38 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  messageCopy = message;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  v8 = messageCopy;
  if (!messageCopy)
  {
    goto LABEL_12;
  }

  v9 = [messageCopy stringForKey:@"kCameraSessionID"];
  if (v9)
  {
    selfCopy = self;
    v31 = [v8 numberForKey:@"kCameraStreamingTierType"];
    v10 = [v8 stringForKey:@"kCameraProactiveSessionID"];
    v11 = MEMORY[0x277CCAB68];
    v33 = accessoryCopy;
    name = [accessoryCopy name];
    v13 = [v11 stringWithFormat:@"%@/%@", name, v9];

    if (v10)
    {
      [v13 appendFormat:@"/%@", v10];
    }

    v14 = [[HMDCameraSessionID alloc] initWithSessionID:v9 message:v8 description:v13];
    v30 = v13;
    v15 = [v8 BOOLForKey:*MEMORY[0x277CCF5B8]];
    sessionID = [(HMDCameraSessionID *)v14 sessionID];
    hostProcessBundleIdentifier = [(HMDCameraSessionID *)v14 hostProcessBundleIdentifier];
    v29 = v10;
    isSPIClient = [(HMDCameraSessionID *)v14 isSPIClient];
    deviceSectionName = [(HMDCameraSessionID *)v14 deviceSectionName];
    [(HMDCameraSessionID *)v14 description];
    v20 = v19 = v9;
    LOBYTE(v27) = v15;
    selfCopy2 = [(HMDCameraSnapshotSessionID *)selfCopy initWithSessionID:sessionID hostProcessBundleIdentifier:hostProcessBundleIdentifier isSPIClient:isSPIClient deviceSectionName:deviceSectionName description:v20 snapshotReason:(v10 != 0) | (v15 & 1) snapshotRequestForBulletin:v27 snapshotCharacteristicEventUUID:v10 streamingTier:v31];

    v9 = v19;
    v22 = selfCopy2;
    accessoryCopy = v33;
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v25;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Snapshot session ID is not present in message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  return v22;
}

- (HMDCameraSnapshotSessionID)initWithSessionID:(id)d hostProcessBundleIdentifier:(id)identifier isSPIClient:(BOOL)client deviceSectionName:(id)name description:(id)description snapshotReason:(unint64_t)reason snapshotRequestForBulletin:(BOOL)bulletin snapshotCharacteristicEventUUID:(id)self0 streamingTier:(id)self1
{
  clientCopy = client;
  dCopy = d;
  identifierCopy = identifier;
  nameCopy = name;
  descriptionCopy = description;
  iDCopy = iD;
  tierCopy = tier;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!identifierCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!nameCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!descriptionCopy)
  {
LABEL_11:
    v26 = _HMFPreconditionFailure();
    [(HMDCameraClipFinalizeClipOperation *)v26 main];
    return result;
  }

  v22 = tierCopy;
  v29.receiver = self;
  v29.super_class = HMDCameraSnapshotSessionID;
  v23 = [(HMDCameraSessionID *)&v29 initWithSessionID:dCopy hostProcessBundleIdentifier:identifierCopy isSPIClient:clientCopy deviceSectionName:nameCopy description:descriptionCopy];
  v24 = v23;
  if (v23)
  {
    v23->_snapshotReason = reason;
    objc_storeStrong(&v23->_snapshotCharacteristicEventUUID, iD);
    v24->_snapshotRequestForBulletin = bulletin;
    objc_storeStrong(&v24->_streamingTier, tier);
  }

  return v24;
}

@end