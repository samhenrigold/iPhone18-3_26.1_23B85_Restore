@interface HMDNotificationRegistryActionSetRequest
- (HMDNotificationRegistryActionSetRequest)initWithEnable:(BOOL)enable user:(id)user deviceIdsDestination:(id)destination actionSetUUID:(id)d;
- (id)attributeDescriptions;
@end

@implementation HMDNotificationRegistryActionSetRequest

- (id)attributeDescriptions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = HMDNotificationRegistryActionSetRequest;
  attributeDescriptions = [(HMDNotificationRegistryRequest *)&v10 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  actionSetUUID = [(HMDNotificationRegistryActionSetRequest *)self actionSetUUID];
  v6 = [v4 initWithName:@"ActionSet UUID" value:actionSetUUID];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (HMDNotificationRegistryActionSetRequest)initWithEnable:(BOOL)enable user:(id)user deviceIdsDestination:(id)destination actionSetUUID:(id)d
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
    v18 = _HMFPreconditionFailure();
    [(HMDThreadAccessoryInfo *)v18 .cxx_destruct];
    return result;
  }

  v20.receiver = self;
  v20.super_class = HMDNotificationRegistryActionSetRequest;
  v14 = [(HMDNotificationRegistryRequest *)&v20 initWithEnable:enableCopy user:userCopy deviceIdsDestination:destinationCopy];
  if (v14)
  {
    v15 = objc_msgSend_copy(v13);
    actionSetUUID = v14->_actionSetUUID;
    v14->_actionSetUUID = v15;
  }

  return v14;
}

@end