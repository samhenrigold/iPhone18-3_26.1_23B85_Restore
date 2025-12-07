@interface HMDNotificationRegistryMediaPropertiesRequest
- (HMDNotificationRegistryMediaPropertiesRequest)initWithEnable:(BOOL)enable user:(id)user deviceIdsDestination:(id)destination mediaProfileUUID:(id)d;
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

- (HMDNotificationRegistryMediaPropertiesRequest)initWithEnable:(BOOL)enable user:(id)user deviceIdsDestination:(id)destination mediaProfileUUID:(id)d
{
  enableCopy = enable;
  userCopy = user;
  destinationCopy = destination;
  dCopy = d;
  if (!userCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!destinationCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v13 = dCopy;
  if (!dCopy)
  {
LABEL_9:
    v20 = _HMFPreconditionFailure();
    [(HMDNotificationRegistryActionSetRequest *)v20 .cxx_destruct];
    return result;
  }

  v22.receiver = self;
  v22.super_class = HMDNotificationRegistryMediaPropertiesRequest;
  v14 = [(HMDNotificationRegistryRequest *)&v22 initWithEnable:enableCopy user:userCopy deviceIdsDestination:destinationCopy];
  if (v14)
  {
    v15 = objc_msgSend_copy(v13);
    mediaProfileUUID = v14->_mediaProfileUUID;
    v14->_mediaProfileUUID = v15;

    v17 = [MEMORY[0x277CBEB58] set];
    mediaProperties = v14->_mediaProperties;
    v14->_mediaProperties = v17;
  }

  return v14;
}

@end