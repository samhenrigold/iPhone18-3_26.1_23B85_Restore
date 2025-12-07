@interface HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation
- (HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation)initWithDeviceCredentialKey:(id)key accessories:(id)accessories user:(id)user;
- (HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation)initWithDeviceCredentialKey:(id)key accessoriesUUIDs:(id)ds user:(id)user;
- (HMDUser)user;
- (id)attributeDescriptions;
- (id)operationByMergingWithOperation:(id)operation;
@end

@implementation HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation

- (HMDUser)user
{
  WeakRetained = objc_loadWeakRetained(&self->_user);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  deviceCredentialKey = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)self deviceCredentialKey];
  v5 = [v3 initWithName:@"Device Credential Key" value:deviceCredentialKey];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  accessoriesUUIDs = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)self accessoriesUUIDs];
  v8 = [v6 initWithName:@"Accessories UUIDs" value:accessoriesUUIDs];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  user = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)self user];
  uuid = [user uuid];
  v12 = [v9 initWithName:@"User UUID" value:uuid];
  v15[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  return v13;
}

- (id)operationByMergingWithOperation:(id)operation
{
  operationCopy = operation;
  accessoriesUUIDs = [operationCopy accessoriesUUIDs];
  v6 = [accessoriesUUIDs mutableCopy];

  accessoriesUUIDs2 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)self accessoriesUUIDs];
  allObjects = [accessoriesUUIDs2 allObjects];
  [v6 addObjectsFromArray:allObjects];

  v9 = [HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation alloc];
  deviceCredentialKey = [operationCopy deviceCredentialKey];
  user = [operationCopy user];

  v12 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)v9 initWithDeviceCredentialKey:deviceCredentialKey accessoriesUUIDs:v6 user:user];

  return v12;
}

- (HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation)initWithDeviceCredentialKey:(id)key accessories:(id)accessories user:(id)user
{
  v25 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  accessoriesCopy = accessories;
  userCopy = user;
  v11 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = accessoriesCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        uuid = [*(*(&v20 + 1) + 8 * v16) uuid];
        [v11 addObject:uuid];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)self initWithDeviceCredentialKey:keyCopy accessoriesUUIDs:v11 user:userCopy];
  return v18;
}

- (HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation)initWithDeviceCredentialKey:(id)key accessoriesUUIDs:(id)ds user:(id)user
{
  keyCopy = key;
  dsCopy = ds;
  userCopy = user;
  v17.receiver = self;
  v17.super_class = HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation;
  v11 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)&v17 init];
  if (v11)
  {
    v12 = objc_msgSend_copy(keyCopy);
    deviceCredentialKey = v11->_deviceCredentialKey;
    v11->_deviceCredentialKey = v12;

    v14 = objc_msgSend_copy(dsCopy);
    accessoriesUUIDs = v11->_accessoriesUUIDs;
    v11->_accessoriesUUIDs = v14;

    objc_storeWeak(&v11->_user, userCopy);
  }

  return v11;
}

@end