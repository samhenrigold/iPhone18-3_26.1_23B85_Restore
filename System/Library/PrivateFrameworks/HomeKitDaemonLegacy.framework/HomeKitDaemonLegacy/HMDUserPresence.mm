@interface HMDUserPresence
- (BOOL)isAtHome;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNotAtHome;
- (HMDUserPresence)initWithCoder:(id)coder;
- (HMDUserPresence)initWithUser:(id)user presenceRegionStatus:(id)status;
- (HMDUserPresence)initWithUser:(id)user presenceRegionStatus:(id)status timeStamp:(id)stamp presenceUpdateReason:(id)reason device:(id)device;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setPresenceRegionStatus:(id)status;
@end

@implementation HMDUserPresence

- (id)attributeDescriptions
{
  v31[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  user = [(HMDUserPresence *)self user];
  userID = [user userID];
  v28 = +[HMDAccountHandleFormatter defaultFormatter];
  v27 = [v3 initWithName:@"UID" value:userID options:2 formatter:v28];
  v31[0] = v27;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  user2 = [(HMDUserPresence *)self user];
  uuid = [user2 uuid];
  v24 = [v4 initWithName:@"UUID" value:uuid];
  v31[1] = v24;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  presenceRegionStatus = [(HMDUserPresence *)self presenceRegionStatus];
  v22 = [v5 initWithName:@"Reg" value:presenceRegionStatus];
  v31[2] = v22;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  updateTimestamp = [(HMDUserPresence *)self updateTimestamp];
  hmf_localTimeDescription = [updateTimestamp hmf_localTimeDescription];
  v9 = [v6 initWithName:@"TS" value:hmf_localTimeDescription];
  v31[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  presenceUpdateReason = [(HMDUserPresence *)self presenceUpdateReason];
  v12 = [v10 initWithName:@"Reason" value:presenceUpdateReason];
  v31[4] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  deviceWhichUpdatedUserPresence = [(HMDUserPresence *)self deviceWhichUpdatedUserPresence];
  v15 = [v13 initWithName:@"Device" value:deviceWhichUpdatedUserPresence];
  v31[5] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  user3 = [(HMDUserPresence *)self user];
  presenceAuthStatus = [user3 presenceAuthStatus];
  v19 = [v16 initWithName:@"Auth" value:presenceAuthStatus];
  v31[6] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:7];

  return v21;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = +[HMDAccountHandleFormatter defaultFormatter];
  user = [(HMDUserPresence *)self user];
  userID = [user userID];
  v7 = [v4 privateStringForObjectValue:userID];
  presenceRegionStatus = [(HMDUserPresence *)self presenceRegionStatus];
  v9 = [v3 stringWithFormat:@"%@/%@", v7, presenceRegionStatus];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  user = [(HMDUserPresence *)self user];
  [coderCopy encodeObject:user forKey:@"HM.user"];

  presenceRegionStatus = [(HMDUserPresence *)self presenceRegionStatus];
  [presenceRegionStatus addToCoder:coderCopy];

  updateTimestamp = [(HMDUserPresence *)self updateTimestamp];
  [coderCopy encodeObject:updateTimestamp forKey:@"PresenceUpdateTimestamp"];
}

- (HMDUserPresence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HMDUserPresence;
  v5 = [(HMDUserPresence *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
    user = v5->_user;
    v5->_user = v6;

    v8 = [HMDUserPresenceRegion regionWithCoder:coderCopy];
    presenceRegionStatus = v5->_presenceRegionStatus;
    v5->_presenceRegionStatus = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PresenceUpdateTimestamp"];
    updateTimestamp = v5->_updateTimestamp;
    v5->_updateTimestamp = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (-[HMDUserPresence user](self, "user"), v7 = objc_claimAutoreleasedReturnValue(), [v7 uuid], v8 = objc_claimAutoreleasedReturnValue(), -[HMDUserPresence user](v6, "user"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uuid"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v8, v7, v11) && (-[HMDUserPresence presenceRegionStatus](self, "presenceRegionStatus"), v12 = objc_claimAutoreleasedReturnValue(), -[HMDUserPresence presenceRegionStatus](v6, "presenceRegionStatus"), v13 = objc_claimAutoreleasedReturnValue(), v14 = HMFEqualObjects(), v13, v12, v14))
    {
      updateTimestamp = [(HMDUserPresence *)self updateTimestamp];
      updateTimestamp2 = [(HMDUserPresence *)v6 updateTimestamp];
      v17 = HMFEqualObjects();
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (BOOL)isNotAtHome
{
  presenceRegionStatus = [(HMDUserPresence *)self presenceRegionStatus];
  v3 = [presenceRegionStatus value] == 2;

  return v3;
}

- (BOOL)isAtHome
{
  presenceRegionStatus = [(HMDUserPresence *)self presenceRegionStatus];
  v3 = [presenceRegionStatus value] == 1;

  return v3;
}

- (void)setPresenceRegionStatus:(id)status
{
  v22 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = statusCopy;
  if (statusCopy)
  {
    statusCopy = [MEMORY[0x277CBEAA8] date];
  }

  updateTimestamp = self->_updateTimestamp;
  self->_updateTimestamp = statusCopy;

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    presenceRegionStatus = selfCopy->_presenceRegionStatus;
    hmf_localTimeDescription = [(NSDate *)self->_updateTimestamp hmf_localTimeDescription];
    v14 = 138544130;
    v15 = v10;
    v16 = 2112;
    v17 = presenceRegionStatus;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = hmf_localTimeDescription;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating region status from %@ to %@ with update timestamp %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = selfCopy->_presenceRegionStatus;
  selfCopy->_presenceRegionStatus = v5;
}

- (HMDUserPresence)initWithUser:(id)user presenceRegionStatus:(id)status timeStamp:(id)stamp presenceUpdateReason:(id)reason device:(id)device
{
  userCopy = user;
  statusCopy = status;
  stampCopy = stamp;
  reasonCopy = reason;
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = HMDUserPresence;
  v17 = [(HMDUserPresence *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_user, user);
    objc_storeStrong(&v18->_presenceRegionStatus, status);
    objc_storeStrong(&v18->_updateTimestamp, stamp);
    objc_storeStrong(&v18->_deviceWhichUpdatedUserPresence, device);
    objc_storeStrong(&v18->_presenceUpdateReason, reason);
  }

  return v18;
}

- (HMDUserPresence)initWithUser:(id)user presenceRegionStatus:(id)status
{
  userCopy = user;
  statusCopy = status;
  if (statusCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    date = 0;
  }

  v9 = [(HMDUserPresence *)self initWithUser:userCopy presenceRegionStatus:statusCopy timeStamp:date];

  return v9;
}

@end