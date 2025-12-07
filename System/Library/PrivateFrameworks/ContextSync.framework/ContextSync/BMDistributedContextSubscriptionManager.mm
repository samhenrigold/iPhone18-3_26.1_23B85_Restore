@interface BMDistributedContextSubscriptionManager
+ (id)loadAndMigrateStorageFromLegacyToV1:(id)v1 withLocalDeviceID:(id)d;
+ (id)loadFromStorage:(id)storage withLocalDeviceID:(id)d;
+ (unint64_t)storageVersion:(id)version;
- (BMDistributedContextSubscriptionManager)initWithStorage:(id)storage;
- (BOOL)addSubscriptions:(id)subscriptions;
- (BOOL)removeAllSubscriptionsMadeBySubscribingDevice:(id)device;
- (BOOL)removeSubscription:(id)subscription;
- (BOOL)removeSubscriptionWithIdentifier:(id)identifier fromSubscribingDevice:(id)device onSubscribedDevice:(id)subscribedDevice;
- (id)allSubscriptionIdentifiers;
- (id)deviceIdentifiersWithActiveSubscriptions;
- (id)subscribingDevicesForIdentifier:(id)identifier subscribedToDevice:(id)device;
- (id)subscriptionForIdentifier:(id)identifier fromSubscribingDevice:(id)device onSubscribedDevice:(id)subscribedDevice;
- (id)subscriptionsWithIdentifier:(id)identifier subscribedToDevice:(id)device;
- (id)subscriptionsWithSubscribedDevice:(id)device;
- (id)subscriptionsWithSubscribingDevice:(id)device;
- (void)saveToStorage;
@end

@implementation BMDistributedContextSubscriptionManager

- (BMDistributedContextSubscriptionManager)initWithStorage:(id)storage
{
  storageCopy = storage;
  v11.receiver = self;
  v11.super_class = BMDistributedContextSubscriptionManager;
  v6 = [(BMDistributedContextSubscriptionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, storage);
    v8 = objc_opt_new();
    subscriptions = v7->_subscriptions;
    v7->_subscriptions = v8;
  }

  return v7;
}

- (void)saveToStorage
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_subscriptions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dictionaryRepresentation = [*(*(&v12 + 1) + 8 * v8) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 count];
  storage = self->_storage;
  if (v10)
  {
    [(BMDistributedContextSubscriptionStorage *)storage setObject:v3 forKey:@"subscriptions"];
  }

  else
  {
    [(BMDistributedContextSubscriptionStorage *)storage removeObjectForKey:@"subscriptions"];
  }

  [(BMDistributedContextSubscriptionStorage *)self->_storage setObject:&unk_28578CB50 forKey:@"storageVersion", v12];
}

+ (id)loadFromStorage:(id)storage withLocalDeviceID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  dCopy = d;
  if ([objc_opt_class() storageVersion:storageCopy])
  {
    v8 = [storageCopy objectForKey:@"subscriptions"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [BMDistributedContextSubscriptionManager loadFromStorage:v9 withLocalDeviceID:?];
      }

      v19 = 0;
    }

    else
    {
      v9 = objc_opt_new();
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            v16 = [BMDistributedContextSubscription alloc];
            v17 = [(BMDistributedContextSubscription *)v16 initFromDictionary:v15, v21];
            [v9 addObject:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v12);
      }

      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v9;
        _os_log_impl(&dword_244177000, v18, OS_LOG_TYPE_DEFAULT, "Loaded subscriptions from default %@", buf, 0xCu);
      }

      v19 = [[BMDistributedContextSubscriptionManager alloc] initWithStorage:storageCopy];
      [(BMDistributedContextSubscriptionManager *)v19 addSubscriptions:v9];
    }
  }

  else
  {
    v19 = [self loadAndMigrateStorageFromLegacyToV1:storageCopy withLocalDeviceID:dCopy];
  }

  return v19;
}

+ (unint64_t)storageVersion:(id)version
{
  versionCopy = version;
  integerValue = [versionCopy objectForKey:@"storageVersion"];

  if (integerValue)
  {
    v5 = [versionCopy objectForKey:@"storageVersion"];
    integerValue = [v5 integerValue];
  }

  return integerValue;
}

+ (id)loadAndMigrateStorageFromLegacyToV1:(id)v1 withLocalDeviceID:(id)d
{
  v101 = *MEMORY[0x277D85DE8];
  v1Copy = v1;
  dCopy = d;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_244177000, v6, OS_LOG_TYPE_DEFAULT, "Subscription storage needs migration from legacy format, migrating", buf, 2u);
  }

  v64 = objc_opt_new();
  v7 = [v1Copy objectForKey:@"localDSLIdentifiers"];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v88 objects:v100 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v89;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v89 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v88 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        bmdsl_deserialize = [(NSData *)v13 bmdsl_deserialize];
        [v64 setObject:bmdsl_deserialize forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v88 objects:v100 count:16];
    }

    while (v9);
  }

  v15 = objc_opt_new();
  [v1Copy objectForKey:@"remoteDSLIdentifiers"];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v87 = 0u;
  v16 = [obj countByEnumeratingWithState:&v84 objects:v99 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v85;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v85 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v84 + 1) + 8 * j);
        v21 = [obj objectForKeyedSubscript:v20];
        bmdsl_deserialize2 = [(NSData *)v21 bmdsl_deserialize];
        [v15 setObject:bmdsl_deserialize2 forKeyedSubscript:v20];
      }

      v17 = [obj countByEnumeratingWithState:&v84 objects:v99 count:16];
    }

    while (v17);
  }

  v65 = objc_opt_new();
  [v1Copy objectForKey:@"subscriptions"];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v23 = v83 = 0u;
  v57 = [v23 countByEnumeratingWithState:&v80 objects:v98 count:16];
  if (v57)
  {
    v56 = *v81;
    v24 = @"wake";
    v54 = v23;
    v55 = v7;
    do
    {
      v25 = 0;
      do
      {
        if (*v81 != v56)
        {
          objc_enumerationMutation(v23);
        }

        v26 = *(*(&v80 + 1) + 8 * v25);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v49 = __biome_log_for_category();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            [BMDistributedContextSubscriptionManager loadAndMigrateStorageFromLegacyToV1:v49 withLocalDeviceID:?];
          }

          goto LABEL_57;
        }

        v58 = v25;
        v67 = v26;
        v27 = [v23 objectForKeyedSubscript:v26];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v62 = v27;
        v61 = [v27 countByEnumeratingWithState:&v76 objects:v97 count:16];
        if (!v61)
        {
          goto LABEL_51;
        }

        v60 = *v77;
        do
        {
          v28 = 0;
          do
          {
            if (*v77 != v60)
            {
              objc_enumerationMutation(v62);
            }

            v63 = v28;
            v68 = *(*(&v76 + 1) + 8 * v28);
            v29 = [v62 objectForKeyedSubscript:?];
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v71 = v29;
            v70 = [v29 countByEnumeratingWithState:&v72 objects:v96 count:16];
            if (v70)
            {
              v69 = *v73;
              do
              {
                for (k = 0; k != v70; ++k)
                {
                  if (*v73 != v69)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v31 = *(*(&v72 + 1) + 8 * k);
                  v32 = [v71 objectForKeyedSubscript:v31];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v32 objectForKeyedSubscript:v24], v33 = objc_claimAutoreleasedReturnValue(), v33, v33))
                  {
                    v34 = [v32 objectForKeyedSubscript:v24];
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      goto LABEL_43;
                    }

                    v34 = v32;
                  }

                  v35 = v34;
                  if (!v34)
                  {
LABEL_43:
                    v40 = __biome_log_for_category();
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v93 = v65;
                      v94 = 2112;
                      v95 = v31;
                      _os_log_error_impl(&dword_244177000, v40, OS_LOG_TYPE_ERROR, "Load from default error! Defaults: %@, Identifier: %@", buf, 0x16u);
                    }

                    v35 = 0;
                    goto LABEL_46;
                  }

                  v36 = [v68 isEqual:dCopy];
                  v37 = v15;
                  if ((v36 & 1) != 0 || (v38 = [v67 isEqual:dCopy], v37 = v64, v38))
                  {
                    v39 = [v37 objectForKeyedSubscript:v31];
                    if (v39)
                    {
                      v40 = v39;
                      bOOLValue = [v35 BOOLValue];
                      v41 = v15;
                      v42 = [BMDistributedContextSubscriptionConfiguration alloc];
                      [MEMORY[0x277CBEAA8] now];
                      v43 = v24;
                      v45 = v44 = dCopy;
                      v46 = v42;
                      v15 = v41;
                      v47 = [(BMDistributedContextSubscriptionConfiguration *)v46 initWithOptions:bOOLValue lastChangedDate:v45];

                      dCopy = v44;
                      v24 = v43;
                      v48 = [[BMDistributedContextSubscription alloc] initWithIdentifier:v31 dsl:v40 subscribingDevice:v67 subscribedDevice:v68 configuration:v47];
                      [v65 addObject:v48];

LABEL_46:
                    }
                  }
                }

                v70 = [v71 countByEnumeratingWithState:&v72 objects:v96 count:16];
              }

              while (v70);
            }

            v28 = v63 + 1;
          }

          while (v63 + 1 != v61);
          v61 = [v62 countByEnumeratingWithState:&v76 objects:v97 count:16];
        }

        while (v61);
LABEL_51:

        v25 = v58 + 1;
        v23 = v54;
        v7 = v55;
      }

      while (v58 + 1 != v57);
      v57 = [v54 countByEnumeratingWithState:&v80 objects:v98 count:16];
    }

    while (v57);
  }

LABEL_57:

  v50 = __biome_log_for_category();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v93 = v65;
    _os_log_impl(&dword_244177000, v50, OS_LOG_TYPE_DEFAULT, "Migrated subscriptions from legacy storage, subscriptions are %@", buf, 0xCu);
  }

  v51 = [[BMDistributedContextSubscriptionManager alloc] initWithStorage:v1Copy];
  [(BMDistributedContextSubscriptionManager *)v51 addSubscriptions:v65];
  [(BMDistributedContextSubscriptionManager *)v51 saveToStorage];
  [v1Copy removeObjectForKey:@"localDSLIdentifiers"];
  [v1Copy removeObjectForKey:@"remoteDSLIdentifiers"];

  return v51;
}

- (id)allSubscriptionIdentifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_subscriptions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        identifier = [*(*(&v12 + 1) + 8 * i) identifier];
        [v3 addObject:identifier];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (id)deviceIdentifiersWithActiveSubscriptions
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_subscriptions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        subscribedDevice = [v9 subscribedDevice];
        [v3 addObject:subscribedDevice];

        subscribingDevice = [v9 subscribingDevice];
        [v3 addObject:subscribingDevice];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (BOOL)addSubscriptions:(id)subscriptions
{
  [(NSMutableArray *)self->_subscriptions addObjectsFromArray:subscriptions];
  [(BMDistributedContextSubscriptionManager *)self saveToStorage];
  return 1;
}

- (id)subscriptionForIdentifier:(id)identifier fromSubscribingDevice:(id)device onSubscribedDevice:(id)subscribedDevice
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceCopy = device;
  subscribedDeviceCopy = subscribedDevice;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = self->_subscriptions;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  v13 = *v28;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v28 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v27 + 1) + 8 * i);
      identifier = [v15 identifier];
      if (![identifier isEqualToString:identifierCopy])
      {
        goto LABEL_11;
      }

      subscribedDevice = [v15 subscribedDevice];
      if (([subscribedDevice isEqualToString:subscribedDeviceCopy] & 1) == 0)
      {

LABEL_11:
        continue;
      }

      [v15 subscribingDevice];
      v18 = v13;
      v19 = identifierCopy;
      v20 = v10;
      v22 = v21 = subscribedDeviceCopy;
      v26 = [v22 isEqualToString:deviceCopy];

      subscribedDeviceCopy = v21;
      v10 = v20;
      identifierCopy = v19;
      v13 = v18;

      if (v26)
      {
        v23 = v15;
        goto LABEL_15;
      }
    }

    v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v12);
LABEL_14:
  v23 = 0;
LABEL_15:

  return v23;
}

- (BOOL)removeSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  identifier = [subscriptionCopy identifier];
  subscribingDevice = [subscriptionCopy subscribingDevice];
  subscribedDevice = [subscriptionCopy subscribedDevice];

  LOBYTE(self) = [(BMDistributedContextSubscriptionManager *)self removeSubscriptionWithIdentifier:identifier fromSubscribingDevice:subscribingDevice onSubscribedDevice:subscribedDevice];
  return self;
}

- (BOOL)removeSubscriptionWithIdentifier:(id)identifier fromSubscribingDevice:(id)device onSubscribedDevice:(id)subscribedDevice
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceCopy = device;
  subscribedDeviceCopy = subscribedDevice;
  selfCopy = self;
  v22 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = self->_subscriptions;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        identifier = [v15 identifier];
        if (([identifier isEqualToString:identifierCopy] & 1) == 0)
        {
          goto LABEL_11;
        }

        subscribedDevice = [v15 subscribedDevice];
        if (([subscribedDevice isEqualToString:subscribedDeviceCopy] & 1) == 0)
        {

LABEL_11:
          goto LABEL_12;
        }

        subscribingDevice = [v15 subscribingDevice];
        v19 = [subscribingDevice isEqualToString:deviceCopy];

        if (v19)
        {
          [v22 addIndex:v12];
        }

LABEL_12:
        ++v12;
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)selfCopy->_subscriptions removeObjectsAtIndexes:v22];
  [(BMDistributedContextSubscriptionManager *)selfCopy saveToStorage];

  return 1;
}

- (BOOL)removeAllSubscriptionsMadeBySubscribingDevice:(id)device
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_subscriptions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        subscribingDevice = [*(*(&v15 + 1) + 8 * v11) subscribingDevice];
        v13 = [subscribingDevice isEqualToString:deviceCopy];

        if (v13)
        {
          [v5 addIndex:v9];
        }

        ++v9;
        ++v11;
      }

      while (v8 != v11);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)self->_subscriptions removeObjectsAtIndexes:v5];
  [(BMDistributedContextSubscriptionManager *)self saveToStorage];

  return 1;
}

- (id)subscribingDevicesForIdentifier:(id)identifier subscribedToDevice:(id)device
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceCopy = device;
  v19 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_subscriptions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        identifier = [v13 identifier];
        if ([identifier isEqualToString:identifierCopy])
        {
          subscribedDevice = [v13 subscribedDevice];
          v16 = [subscribedDevice isEqual:deviceCopy];

          if (!v16)
          {
            continue;
          }

          identifier = [v13 subscribedDevice];
          [v19 addObject:identifier];
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  allObjects = [v19 allObjects];

  return allObjects;
}

- (id)subscriptionsWithIdentifier:(id)identifier subscribedToDevice:(id)device
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceCopy = device;
  v18 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_subscriptions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        identifier = [v13 identifier];
        if ([identifier isEqualToString:identifierCopy])
        {
          subscribedDevice = [v13 subscribedDevice];
          v16 = [subscribedDevice isEqual:deviceCopy];

          if (v16)
          {
            [v18 addObject:v13];
          }
        }

        else
        {
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  return v18;
}

- (id)subscriptionsWithSubscribingDevice:(id)device
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_subscriptions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        subscribingDevice = [v11 subscribingDevice];
        v13 = [subscribingDevice isEqualToString:deviceCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)subscriptionsWithSubscribedDevice:(id)device
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_subscriptions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        subscribedDevice = [v11 subscribedDevice];
        v13 = [subscribedDevice isEqualToString:deviceCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

@end