@interface HMDNotificationRegistryCharacteristicsRequest
- (HMDNotificationRegistryCharacteristicsRequest)initWithEnable:(BOOL)enable user:(id)user deviceIdsDestination:(id)destination accessoryUUID:(id)d;
- (id)attributeDescriptions;
@end

@implementation HMDNotificationRegistryCharacteristicsRequest

- (id)attributeDescriptions
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMDNotificationRegistryCharacteristicsRequest;
  attributeDescriptions = [(HMDNotificationRegistryRequest *)&v18 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryUUID = [(HMDNotificationRegistryCharacteristicsRequest *)self accessoryUUID];
  v5 = [v4 initWithName:@"Accessory UUID" value:accessoryUUID];
  v19[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  characteristicInstanceIDs = [(HMDNotificationRegistryCharacteristicsRequest *)self characteristicInstanceIDs];
  allObjects = [characteristicInstanceIDs allObjects];
  v9 = [allObjects componentsJoinedByString:{@", "}];
  v10 = [v6 initWithName:@"Characteristic IIDs" value:v9];
  v19[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  characteristicChangeThresholds = [(HMDNotificationRegistryCharacteristicsRequest *)self characteristicChangeThresholds];
  v13 = [v11 initWithName:@"Change Threshold" value:characteristicChangeThresholds];
  v19[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v15 = [attributeDescriptions arrayByAddingObjectsFromArray:v14];

  return v15;
}

- (HMDNotificationRegistryCharacteristicsRequest)initWithEnable:(BOOL)enable user:(id)user deviceIdsDestination:(id)destination accessoryUUID:(id)d
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
    v22 = _HMFPreconditionFailure();
    [(HMDNotificationRegistryMediaPropertiesRequest *)v22 .cxx_destruct];
    return result;
  }

  v24.receiver = self;
  v24.super_class = HMDNotificationRegistryCharacteristicsRequest;
  v14 = [(HMDNotificationRegistryRequest *)&v24 initWithEnable:enableCopy user:userCopy deviceIdsDestination:destinationCopy];
  if (v14)
  {
    v15 = objc_msgSend_copy(v13);
    accessoryUUID = v14->_accessoryUUID;
    v14->_accessoryUUID = v15;

    v17 = [MEMORY[0x277CBEB58] set];
    characteristicInstanceIDs = v14->_characteristicInstanceIDs;
    v14->_characteristicInstanceIDs = v17;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    characteristicChangeThresholds = v14->_characteristicChangeThresholds;
    v14->_characteristicChangeThresholds = dictionary;
  }

  return v14;
}

@end