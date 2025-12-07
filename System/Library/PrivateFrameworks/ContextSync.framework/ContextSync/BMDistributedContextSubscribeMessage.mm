@interface BMDistributedContextSubscribeMessage
- (BMDistributedContextSubscribeMessage)initWithMessageDictionary:(id)dictionary fromRemoteDevice:(id)device localDevice:(id)localDevice;
- (BMDistributedContextSubscribeMessage)initWithSubscriptions:(id)subscriptions localDevice:(id)device messageIntent:(unint64_t)intent;
- (id)dictionaryRepresentation;
@end

@implementation BMDistributedContextSubscribeMessage

- (BMDistributedContextSubscribeMessage)initWithMessageDictionary:(id)dictionary fromRemoteDevice:(id)device localDevice:(id)localDevice
{
  v69 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  deviceCopy = device;
  localDeviceCopy = localDevice;
  v66.receiver = self;
  v66.super_class = BMDistributedContextSubscribeMessage;
  v9 = [(BMDistributedContextSubscribeMessage *)&v66 init];
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"messageVersion"];
  if (v10)
  {
    v11 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"messageVersion"];
    if (v12)
    {
      v13 = v12;
      v14 = [dictionaryCopy objectForKeyedSubscript:@"messageVersion"];
      v15 = [v14 isEqualToString:@"1.0"];

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    localDeviceCopy2 = localDevice;
    v48 = v9;
    v53 = objc_opt_new();
    v57 = objc_opt_new();
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"dsls"];
    v19 = [v18 countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v63;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v63 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v62 + 1) + 8 * i);
          v24 = objc_autoreleasePoolPush();
          v25 = [dictionaryCopy objectForKeyedSubscript:@"dsls"];
          v26 = [v25 objectForKeyedSubscript:v23];

          bmdsl_deserialize = [(NSData *)v26 bmdsl_deserialize];
          [v57 setObject:bmdsl_deserialize forKeyedSubscript:v23];

          objc_autoreleasePoolPop(v24);
        }

        v20 = [v18 countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v20);
    }

    v49 = dictionaryCopy;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"dslIdentifiers"];
    v29 = [v28 objectForKeyedSubscript:localDeviceCopy];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v52 = v29;
    obj = [v29 allKeys];
    v56 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v56)
    {
      v51 = *v59;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v59 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v58 + 1) + 8 * j);
          v32 = objc_autoreleasePoolPush();
          v33 = [v57 objectForKeyedSubscript:v31];
          v34 = [v52 objectForKeyedSubscript:v31];
          v35 = [v34 objectForKeyedSubscript:@"oneOffSubscription"];
          if ([v35 BOOLValue])
          {
            v36 = 2;
          }

          else
          {
            v36 = 0;
          }

          v37 = [v34 objectForKeyedSubscript:@"wake"];
          bOOLValue = [v37 BOOLValue];
          v39 = [v34 objectForKeyedSubscript:@"lastChangeDate"];
          v40 = [[BMDistributedContextSubscriptionConfiguration alloc] initWithOptions:v36 | bOOLValue lastChangedDate:v39];
          v41 = [[BMDistributedContextSubscription alloc] initWithIdentifier:v31 dsl:v33 subscribingDevice:deviceCopy subscribedDevice:localDeviceCopy configuration:v40];
          [(NSArray *)v53 addObject:v41];

          objc_autoreleasePoolPop(v32);
        }

        v56 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v56);
    }

    v9 = v48;
    subscriptions = v48->_subscriptions;
    v48->_subscriptions = v53;
    v43 = v53;

    dictionaryCopy = v49;
    v44 = [v49 objectForKeyedSubscript:@"messageVersion"];
    messageVersion = v48->_messageVersion;
    v48->_messageVersion = v44;

    objc_storeStrong(&v48->_localDevice, localDeviceCopy2);
LABEL_27:
    v17 = v9;
    goto LABEL_28;
  }

LABEL_5:
  v16 = __biome_log_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    [BMDistributedContextSubscribeMessage initWithMessageDictionary:dictionaryCopy fromRemoteDevice:? localDevice:?];
  }

  v17 = 0;
LABEL_28:

  return v17;
}

- (id)dictionaryRepresentation
{
  v39 = *MEMORY[0x277D85DE8];
  v24 = objc_opt_new();
  v3 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_subscriptions;
  v25 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v25)
  {
    v23 = *v31;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v30 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        subscribedDevice = [v5 subscribedDevice];
        v7 = [v3 objectForKeyedSubscript:subscribedDevice];

        if (!v7)
        {
          v8 = objc_opt_new();
          subscribedDevice2 = [v5 subscribedDevice];
          [v3 setObject:v8 forKeyedSubscript:subscribedDevice2];
        }

        v36[0] = @"lastChangeDate";
        configuration = [v5 configuration];
        lastChangedDate = [configuration lastChangedDate];
        v37[0] = lastChangedDate;
        v36[1] = @"wake";
        configuration2 = [v5 configuration];
        wakeState = [configuration2 wakeState];
        v37[1] = wakeState;
        v36[2] = @"oneOffSubscription";
        configuration3 = [v5 configuration];
        oneOffSubscription = [configuration3 oneOffSubscription];
        v37[2] = oneOffSubscription;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
        subscribedDevice3 = [v5 subscribedDevice];
        v15 = [v3 objectForKeyedSubscript:subscribedDevice3];
        identifier = [v5 identifier];
        [v15 setObject:v13 forKeyedSubscript:identifier];

        v17 = [v5 dsl];
        bmdsl_serialize = [(BMDSL *)v17 bmdsl_serialize];
        identifier2 = [v5 identifier];
        [v24 setObject:bmdsl_serialize forKeyedSubscript:identifier2];

        objc_autoreleasePoolPop(context);
      }

      v25 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v25);
  }

  v34[0] = @"type";
  v34[1] = @"messageVersion";
  v35[0] = @"subscription";
  v35[1] = @"1.0";
  v34[2] = @"version";
  v34[3] = @"dslIdentifiers";
  v35[2] = &unk_28578CB68;
  v35[3] = v3;
  v34[4] = @"dsls";
  v35[4] = v24;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:5];

  return v20;
}

- (BMDistributedContextSubscribeMessage)initWithSubscriptions:(id)subscriptions localDevice:(id)device messageIntent:(unint64_t)intent
{
  v29 = *MEMORY[0x277D85DE8];
  subscriptionsCopy = subscriptions;
  deviceCopy = device;
  v27.receiver = self;
  v27.super_class = BMDistributedContextSubscribeMessage;
  v11 = [(BMDistributedContextSubscribeMessage *)&v27 init];
  v12 = v11;
  if (v11)
  {
    v22 = deviceCopy;
    objc_storeStrong(&v11->_subscriptions, subscriptions);
    objc_storeStrong(&v12->_localDevice, device);
    v12->_messageIntent = intent;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = subscriptionsCopy;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          configuration = [*(*(&v23 + 1) + 8 * v17) configuration];
          wakeState = [configuration wakeState];
          bOOLValue = [wakeState BOOLValue];

          if (bOOLValue)
          {
            v12->_shouldWake = 1;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }

    deviceCopy = v22;
  }

  return v12;
}

- (void)initWithMessageDictionary:(void *)a1 fromRemoteDevice:localDevice:.cold.1(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"messageVersion"];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_2(&dword_244177000, v2, v3, "Incoming subscription is dropped. This message verson is not supported %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end