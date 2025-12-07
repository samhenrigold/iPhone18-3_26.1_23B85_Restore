@interface HMDUnpairedHAPAccessory
- (BOOL)hasBTLELink;
- (BOOL)hasIPLink;
- (BOOL)isKnownToSystemCommissioner;
- (BOOL)isReachable;
- (BOOL)requiresThreadRouter;
- (BOOL)supportsCHIP;
- (HMDUnpairedHAPAccessory)initWithAccessoryServer:(id)server messageDispatcher:(id)dispatcher;
- (HMDUnpairedHAPAccessory)initWithIdentifier:(id)identifier name:(id)name category:(id)category messageDispatcher:(id)dispatcher;
- (NSArray)accessoryServers;
- (id)commissioningID;
- (id)descriptionWithPointer:(BOOL)pointer additionalDescription:(id)description;
- (id)dumpDescription;
- (id)matterDeviceTypeID;
- (id)nodeID;
- (id)preferredAccessoryServer;
- (id)productID;
- (id)rootPublicKey;
- (id)serialNumber;
- (id)vendorID;
- (int64_t)associationOptions;
- (unint64_t)transportTypes;
- (void)addAccessoryServer:(id)server;
- (void)identifyWithCompletionHandler:(id)handler;
- (void)removeAccessoryServer:(id)server;
@end

@implementation HMDUnpairedHAPAccessory

- (int64_t)associationOptions
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [accessoryServers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = 1;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(accessoryServers);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) != 0 && v8)
        {
          v6 = 0;
          goto LABEL_13;
        }
      }

      v4 = [accessoryServers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_13:

  return v6;
}

- (id)matterDeviceTypeID
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  matterDeviceTypeID2 = [accessoryServers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (matterDeviceTypeID2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != matterDeviceTypeID2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(accessoryServers);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        matterDeviceTypeID = [v6 matterDeviceTypeID];

        if (matterDeviceTypeID)
        {
          matterDeviceTypeID2 = [v6 matterDeviceTypeID];
          goto LABEL_11;
        }
      }

      matterDeviceTypeID2 = [accessoryServers countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (matterDeviceTypeID2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return matterDeviceTypeID2;
}

- (BOOL)requiresThreadRouter
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [accessoryServers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(accessoryServers);
        }

        if ([*(*(&v7 + 1) + 8 * i) requiresThreadRouter])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [accessoryServers countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)serialNumber
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  serialNumber2 = [accessoryServers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (serialNumber2)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != serialNumber2; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(accessoryServers);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        primaryAccessory = [v6 primaryAccessory];
        serialNumber = [primaryAccessory serialNumber];

        if (serialNumber)
        {
          primaryAccessory2 = [v6 primaryAccessory];
          serialNumber2 = [primaryAccessory2 serialNumber];

          goto LABEL_11;
        }
      }

      serialNumber2 = [accessoryServers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (serialNumber2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return serialNumber2;
}

- (id)productID
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  productID2 = [accessoryServers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (productID2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != productID2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(accessoryServers);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        productID = [v6 productID];

        if (productID)
        {
          productID2 = [v6 productID];
          goto LABEL_11;
        }
      }

      productID2 = [accessoryServers countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (productID2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return productID2;
}

- (id)vendorID
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  vendorID2 = [accessoryServers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (vendorID2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != vendorID2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(accessoryServers);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        vendorID = [v6 vendorID];

        if (vendorID)
        {
          vendorID2 = [v6 vendorID];
          goto LABEL_11;
        }
      }

      vendorID2 = [accessoryServers countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (vendorID2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return vendorID2;
}

- (id)commissioningID
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  commissioningID2 = [accessoryServers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (commissioningID2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != commissioningID2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(accessoryServers);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        commissioningID = [v6 commissioningID];

        if (commissioningID)
        {
          commissioningID2 = [v6 commissioningID];
          goto LABEL_11;
        }
      }

      commissioningID2 = [accessoryServers countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (commissioningID2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return commissioningID2;
}

- (id)nodeID
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  nodeID2 = [accessoryServers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (nodeID2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != nodeID2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(accessoryServers);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        nodeID = [v6 nodeID];

        if (nodeID)
        {
          nodeID2 = [v6 nodeID];
          goto LABEL_11;
        }
      }

      nodeID2 = [accessoryServers countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (nodeID2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return nodeID2;
}

- (id)rootPublicKey
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  rootPublicKey2 = [accessoryServers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (rootPublicKey2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != rootPublicKey2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(accessoryServers);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        rootPublicKey = [v6 rootPublicKey];

        if (rootPublicKey)
        {
          rootPublicKey2 = [v6 rootPublicKey];
          goto LABEL_11;
        }
      }

      rootPublicKey2 = [accessoryServers countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (rootPublicKey2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return rootPublicKey2;
}

- (BOOL)isKnownToSystemCommissioner
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [accessoryServers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(accessoryServers);
        }

        if ([*(*(&v7 + 1) + 8 * i) isKnownToSystemCommissioner])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [accessoryServers countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)supportsCHIP
{
  v16 = *MEMORY[0x277D85DE8];
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  if ([accessoryServers count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = accessoryServers;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v11 + 1) + 8 * i) communicationProtocol] == 2)
          {

            initializedAsMatter = 1;
            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    initializedAsMatter = 0;
  }

  else
  {
    initializedAsMatter = [(HMDUnpairedHAPAccessory *)self initializedAsMatter];
  }

LABEL_13:

  return initializedAsMatter;
}

- (BOOL)hasIPLink
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [accessoryServers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(accessoryServers);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;

        if (v9)
        {
          if (![v9 isWacAccessory] || (objc_msgSend(v9, "isWacComplete") & 1) != 0)
          {
            goto LABEL_19;
          }
        }

        else if ([v7 linkType] == 1)
        {
          v7 = 0;
LABEL_19:

          v10 = 1;
          goto LABEL_20;
        }
      }

      v4 = [accessoryServers countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_20:

  return v10;
}

- (BOOL)hasBTLELink
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [accessoryServers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(accessoryServers);
        }

        if ([*(*(&v7 + 1) + 8 * i) linkType] == 2)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [accessoryServers countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (unint64_t)transportTypes
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [accessoryServers countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v26;
    v8 = 0x277CFE000uLL;
    *&v4 = 138543618;
    v24 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(accessoryServers);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        linkType = [v10 linkType];
        if (linkType == 2)
        {
          v6 |= 2uLL;
        }

        else if (linkType == 1)
        {
          v12 = v10;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          isWacAccessory = [v14 isWacAccessory];
          if (isWacAccessory)
          {
            v16 = 9;
          }

          else
          {
            v16 = 1;
          }

          v6 |= v16;
        }

        else
        {
          v17 = objc_autoreleasePoolPush();
          v18 = v10;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v21 = v20 = v8;
            linkType2 = [v18 linkType];
            *buf = v24;
            v30 = v21;
            v31 = 2048;
            v32 = linkType2;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unhandled linkType: %tu", buf, 0x16u);

            v8 = v20;
          }

          objc_autoreleasePoolPop(v17);
        }
      }

      v5 = [accessoryServers countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)preferredAccessoryServer
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [accessoryServers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    v8 = v5;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(accessoryServers);
      }

      v5 = *(*(&v10 + 1) + 8 * v7);

      if ([v5 linkType] == 1)
      {
        break;
      }

      ++v7;
      v8 = v5;
      if (v4 == v7)
      {
        v4 = [accessoryServers countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeAccessoryServer:(id)server
{
  v16 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  os_unfair_recursive_lock_lock_with_options();
  linkType = [serverCopy linkType];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = objc_msgSend_copy(self->_accessoryServers, 0);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (linkType == [v10 linkType])
        {
          [(NSMutableArray *)self->_accessoryServers removeObject:v10];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();
}

- (void)addAccessoryServer:(id)server
{
  v18 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  os_unfair_recursive_lock_lock_with_options();
  linkType = [serverCopy linkType];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = objc_msgSend_copy(self->_accessoryServers, 0);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (linkType == [v10 linkType])
        {
          [(NSMutableArray *)self->_accessoryServers removeObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_accessoryServers addObject:serverCopy];
  category = [serverCopy category];
  [(HMDUnassociatedAccessory *)self updateCategoryWithCategoryIdentifier:category];

  matterDeviceTypeID = [serverCopy matterDeviceTypeID];
  [(HMDUnassociatedAccessory *)self setMatterDeviceTypeID:matterDeviceTypeID];

  os_unfair_recursive_lock_unlock();
}

- (NSArray)accessoryServers
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_accessoryServers);
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)identifyWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  preferredAccessoryServer = [(HMDUnpairedHAPAccessory *)self preferredAccessoryServer];
  if (preferredAccessoryServer)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Identify by /identify URL or unpaired BTLE characteristic write", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    objc_initWeak(buf, selfCopy);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__HMDUnpairedHAPAccessory_identifyWithCompletionHandler___block_invoke;
    v11[3] = &unk_279734508;
    objc_copyWeak(&v13, buf);
    v12 = handlerCopy;
    [preferredAccessoryServer identifyWithCompletion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else if (handlerCopy)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:4 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

void __57__HMDUnpairedHAPAccessory_identifyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Identify by /identify URL completed with error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

- (BOOL)isReachable
{
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [accessoryServers count] != 0;

  return v3;
}

- (id)dumpDescription
{
  v31 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = HMDUnpairedHAPAccessory;
  dumpDescription = [(HMDUnassociatedAccessory *)&v29 dumpDescription];
  v4 = [dumpDescription mutableCopy];

  v5 = *MEMORY[0x277D0F170];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D0F170]];
  v7 = [v6 mutableCopy];

  setupHash = [(HMDUnpairedHAPAccessory *)self setupHash];
  [(HMDUnpairedHAPAccessory *)self transportTypes];
  v9 = HMAccessoryTransportTypesToString();
  [v7 appendFormat:@"  setupHash %@  transportTypes %@  linkType ", setupHash, v9];

  v24 = v4;
  [v4 setObject:v7 forKey:v5];
  v10 = MEMORY[0x277CBEB18];
  accessoryServers = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v12 = [v10 arrayWithCapacity:{objc_msgSend(accessoryServers, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  accessoryServers2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v14 = [accessoryServers2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(accessoryServers2);
        }

        v18 = MEMORY[0x277CCACA8];
        linkType = [*(*(&v25 + 1) + 8 * i) linkType];
        v20 = @"Undefined";
        if (linkType <= 2)
        {
          v20 = off_279727440[linkType];
        }

        v21 = v20;
        v22 = [v18 stringWithFormat:@"%@ ", v21];
        [v12 addObject:v22];
      }

      v15 = [accessoryServers2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v15);
  }

  if ([v12 count])
  {
    [v24 setObject:v12 forKey:*MEMORY[0x277D0F040]];
  }

  return v24;
}

- (id)descriptionWithPointer:(BOOL)pointer additionalDescription:(id)description
{
  pointerCopy = pointer;
  v6 = MEMORY[0x277CCACA8];
  [(HMDUnpairedHAPAccessory *)self transportTypes:pointer];
  v7 = HMAccessoryTransportTypesToString();
  v8 = [v6 stringWithFormat:@"transportTypes = %@", v7];
  v11.receiver = self;
  v11.super_class = HMDUnpairedHAPAccessory;
  v9 = [(HMDUnassociatedAccessory *)&v11 descriptionWithPointer:pointerCopy additionalDescription:v8];

  return v9;
}

- (HMDUnpairedHAPAccessory)initWithIdentifier:(id)identifier name:(id)name category:(id)category messageDispatcher:(id)dispatcher
{
  v10.receiver = self;
  v10.super_class = HMDUnpairedHAPAccessory;
  v6 = [(HMDUnassociatedAccessory *)&v10 initWithIdentifier:identifier name:name category:category messageDispatcher:dispatcher];
  if (v6)
  {
    array = [MEMORY[0x277CBEB18] array];
    accessoryServers = v6->_accessoryServers;
    v6->_accessoryServers = array;

    v6->_certificationStatus = 0;
    v6->_linkType = 0;
  }

  return v6;
}

- (HMDUnpairedHAPAccessory)initWithAccessoryServer:(id)server messageDispatcher:(id)dispatcher
{
  serverCopy = server;
  v7 = MEMORY[0x277CD1680];
  dispatcherCopy = dispatcher;
  category = [serverCopy category];
  v10 = [v7 categoryWithCategoryIdentifier:category];

  identifier = [serverCopy identifier];
  name = [serverCopy name];
  v13 = [(HMDUnpairedHAPAccessory *)self initWithIdentifier:identifier name:name category:v10 messageDispatcher:dispatcherCopy];

  if (v13)
  {
    [(NSMutableArray *)v13->_accessoryServers addObject:serverCopy];
    setupHash = [serverCopy setupHash];
    v15 = objc_msgSend_copy(setupHash);
    setupHash = v13->_setupHash;
    v13->_setupHash = v15;

    v13->_linkType = [serverCopy linkType];
    v13->_initializedAsMatter = [serverCopy communicationProtocol] == 2;
  }

  return v13;
}

@end