@interface HMDCameraClipsQuotaServerNotification
- (HMDCameraClipsQuotaServerNotification)initWithContainerIdentifier:(id)identifier reason:(int64_t)reason requestID:(id)d userDSID:(id)iD;
- (HMDCameraClipsQuotaServerNotification)initWithDictionaryRepresentation:(id)representation;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation HMDCameraClipsQuotaServerNotification

- (NSDictionary)dictionaryRepresentation
{
  v13[1] = *MEMORY[0x277D85DE8];
  if ([(HMDCameraClipsQuotaServerNotification *)self reason]== 1)
  {
    v3 = @"allCamerasDisabled";
  }

  else
  {
    v3 = 0;
  }

  v12 = @"hk";
  v10[0] = @"c";
  containerIdentifier = [(HMDCameraClipsQuotaServerNotification *)self containerIdentifier];
  v11[0] = containerIdentifier;
  v11[1] = v3;
  v10[1] = @"f";
  v10[2] = @"r";
  requestID = [(HMDCameraClipsQuotaServerNotification *)self requestID];
  v11[2] = requestID;
  v10[3] = @"u";
  userDSID = [(HMDCameraClipsQuotaServerNotification *)self userDSID];
  v11[3] = userDSID;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  return v8;
}

- (HMDCameraClipsQuotaServerNotification)initWithDictionaryRepresentation:(id)representation
{
  v4 = [representation objectForKeyedSubscript:@"hk"];
  v5 = [v4 objectForKeyedSubscript:@"c"];
  v6 = [v4 objectForKeyedSubscript:@"f"];
  v7 = [v4 objectForKeyedSubscript:@"r"];
  v8 = [v4 objectForKeyedSubscript:@"u"];
  v9 = v8;
  selfCopy = 0;
  if (v5 && v6 && v7 && v8)
  {
    if ([v6 isEqualToString:@"allCamerasDisabled"])
    {
      self = [(HMDCameraClipsQuotaServerNotification *)self initWithContainerIdentifier:v5 reason:1 requestID:v7 userDSID:v9];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (HMDCameraClipsQuotaServerNotification)initWithContainerIdentifier:(id)identifier reason:(int64_t)reason requestID:(id)d userDSID:(id)iD
{
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!reason)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!dCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = iDCopy;
  if (!iDCopy)
  {
LABEL_11:
    v18 = _HMFPreconditionFailure();
    return [(HMDMetricsUtilities *)v18 shouldRedactBundleID:v19 isInternalBuild:v20, v21];
  }

  v22.receiver = self;
  v22.super_class = HMDCameraClipsQuotaServerNotification;
  v15 = [(HMDCameraClipsQuotaServerNotification *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_containerIdentifier, identifier);
    v16->_reason = reason;
    objc_storeStrong(&v16->_requestID, d);
    objc_storeStrong(&v16->_userDSID, iD);
  }

  return v16;
}

@end