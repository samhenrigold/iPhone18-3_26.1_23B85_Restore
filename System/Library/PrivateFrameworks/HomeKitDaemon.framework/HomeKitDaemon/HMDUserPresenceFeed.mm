@interface HMDUserPresenceFeed
- (BOOL)isEqual:(id)equal;
- (HMDUser)user;
- (HMDUserPresenceFeed)initWithUser:(id)user presenceAuthStatus:(id)status presenceComputeStatus:(id)computeStatus presenceRegion:(id)region reason:(id)reason;
- (id)description;
@end

@implementation HMDUserPresenceFeed

- (HMDUser)user
{
  WeakRetained = objc_loadWeakRetained(&self->_user);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v23 = 1;
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
    if (v6 && (-[HMDUserPresenceFeed user](self, "user"), v7 = objc_claimAutoreleasedReturnValue(), [v7 uuid], v8 = objc_claimAutoreleasedReturnValue(), -[HMDUserPresenceFeed user](v6, "user"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uuid"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqual:", v10), v10, v9, v8, v7, v11) && (-[HMDUserPresenceFeed presenceAuthStatus](self, "presenceAuthStatus"), v12 = objc_claimAutoreleasedReturnValue(), -[HMDUserPresenceFeed presenceAuthStatus](v6, "presenceAuthStatus"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, v14) && (-[HMDUserPresenceFeed presenceComputeStatus](self, "presenceComputeStatus"), v15 = objc_claimAutoreleasedReturnValue(), -[HMDUserPresenceFeed presenceComputeStatus](v6, "presenceComputeStatus"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, v15, v17) && (-[HMDUserPresenceFeed presenceRegion](self, "presenceRegion"), v18 = objc_claimAutoreleasedReturnValue(), -[HMDUserPresenceFeed presenceRegion](v6, "presenceRegion"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqual:", v19), v19, v18, v20))
    {
      reason = [(HMDUserPresenceFeed *)self reason];
      reason2 = [(HMDUserPresenceFeed *)v6 reason];
      v23 = [reason isEqual:reason2];
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  user = [(HMDUserPresenceFeed *)self user];
  presenceAuthStatus = [(HMDUserPresenceFeed *)self presenceAuthStatus];
  presenceComputeStatus = [(HMDUserPresenceFeed *)self presenceComputeStatus];
  presenceRegion = [(HMDUserPresenceFeed *)self presenceRegion];
  reason = [(HMDUserPresenceFeed *)self reason];
  v9 = [v3 stringWithFormat:@"[HMDUserPresenceFeed User: %@, Auth: %@, Compute: %@, Region: %@, Reason: %@]", user, presenceAuthStatus, presenceComputeStatus, presenceRegion, reason];

  return v9;
}

- (HMDUserPresenceFeed)initWithUser:(id)user presenceAuthStatus:(id)status presenceComputeStatus:(id)computeStatus presenceRegion:(id)region reason:(id)reason
{
  userCopy = user;
  statusCopy = status;
  computeStatusCopy = computeStatus;
  regionCopy = region;
  reasonCopy = reason;
  v20.receiver = self;
  v20.super_class = HMDUserPresenceFeed;
  v17 = [(HMDUserPresenceFeed *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_user, userCopy);
    objc_storeStrong(&v18->_presenceAuthStatus, status);
    objc_storeStrong(&v18->_presenceComputeStatus, computeStatus);
    objc_storeStrong(&v18->_presenceRegion, region);
    objc_storeStrong(&v18->_reason, reason);
  }

  return v18;
}

@end