@interface HMDNotificationRegistryMediaPropertiesRequest
- (HMDNotificationRegistryMediaPropertiesRequest)initWithEnable:(BOOL)enable userID:(id)d mediaProfileUUID:(id)iD;
- (id)attributeDescriptions;
@end

@implementation HMDNotificationRegistryMediaPropertiesRequest

- (id)attributeDescriptions
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HMDNotificationRegistryMediaPropertiesRequest;
  attributeDescriptions = [(HMDNotificationRegistryRequest *)&v15 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  mediaProfileUUID = [(HMDNotificationRegistryMediaPropertiesRequest *)self mediaProfileUUID];
  v6 = [v4 initWithName:@"Media Profile UUID" value:mediaProfileUUID];
  v16[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  mediaProperties = [(HMDNotificationRegistryMediaPropertiesRequest *)self mediaProperties];
  allObjects = [mediaProperties allObjects];
  v10 = [allObjects componentsJoinedByString:{@", "}];
  v11 = [v7 initWithName:@"Media Properties" value:v10];
  v16[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v13 = [attributeDescriptions arrayByAddingObjectsFromArray:v12];

  return v13;
}

- (HMDNotificationRegistryMediaPropertiesRequest)initWithEnable:(BOOL)enable userID:(id)d mediaProfileUUID:(id)iD
{
  enableCopy = enable;
  dCopy = d;
  iDCopy = iD;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = iDCopy;
  if (!iDCopy)
  {
LABEL_7:
    v17 = _HMFPreconditionFailure();
    [(HMDCHIPAccessoryDataSource *)v17 .cxx_destruct];
    return result;
  }

  v19.receiver = self;
  v19.super_class = HMDNotificationRegistryMediaPropertiesRequest;
  v11 = [(HMDNotificationRegistryRequest *)&v19 initWithEnable:enableCopy userID:dCopy];
  if (v11)
  {
    v12 = objc_msgSend_copy(v10);
    mediaProfileUUID = v11->_mediaProfileUUID;
    v11->_mediaProfileUUID = v12;

    v14 = [MEMORY[0x277CBEB58] set];
    mediaProperties = v11->_mediaProperties;
    v11->_mediaProperties = v14;
  }

  return v11;
}

@end