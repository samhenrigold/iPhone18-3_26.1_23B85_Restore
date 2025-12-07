@interface HMDNotificationRegistryCharacteristicsRequest
- (HMDNotificationRegistryCharacteristicsRequest)initWithEnable:(BOOL)enable userID:(id)d accessoryUUID:(id)iD;
- (id)attributeDescriptions;
@end

@implementation HMDNotificationRegistryCharacteristicsRequest

- (id)attributeDescriptions
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HMDNotificationRegistryCharacteristicsRequest;
  attributeDescriptions = [(HMDNotificationRegistryRequest *)&v15 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryUUID = [(HMDNotificationRegistryCharacteristicsRequest *)self accessoryUUID];
  v6 = [v4 initWithName:@"Accessory UUID" value:accessoryUUID];
  v16[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  characteristicInstanceIDs = [(HMDNotificationRegistryCharacteristicsRequest *)self characteristicInstanceIDs];
  allObjects = [characteristicInstanceIDs allObjects];
  v10 = [allObjects componentsJoinedByString:{@", "}];
  v11 = [v7 initWithName:@"Characteristic IIDs" value:v10];
  v16[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v13 = [attributeDescriptions arrayByAddingObjectsFromArray:v12];

  return v13;
}

- (HMDNotificationRegistryCharacteristicsRequest)initWithEnable:(BOOL)enable userID:(id)d accessoryUUID:(id)iD
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
    [(HMDNotificationRegistryMediaPropertiesRequest *)v17 .cxx_destruct];
    return result;
  }

  v19.receiver = self;
  v19.super_class = HMDNotificationRegistryCharacteristicsRequest;
  v11 = [(HMDNotificationRegistryRequest *)&v19 initWithEnable:enableCopy userID:dCopy];
  if (v11)
  {
    v12 = objc_msgSend_copy(v10);
    accessoryUUID = v11->_accessoryUUID;
    v11->_accessoryUUID = v12;

    v14 = [MEMORY[0x277CBEB58] set];
    characteristicInstanceIDs = v11->_characteristicInstanceIDs;
    v11->_characteristicInstanceIDs = v14;
  }

  return v11;
}

@end