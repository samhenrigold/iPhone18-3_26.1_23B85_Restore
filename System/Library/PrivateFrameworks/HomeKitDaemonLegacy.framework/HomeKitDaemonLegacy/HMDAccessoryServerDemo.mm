@interface HMDAccessoryServerDemo
- (BOOL)_delegateRespondsToSelector:(SEL)selector;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion;
- (HMDAccessoryServerBrowserDemo)browser;
- (HMDAccessoryServerDemo)initWithName:(id)name identifier:(id)identifier deviceInfo:(id)info paired:(BOOL)paired keyStore:(id)store testMode:(BOOL)mode browser:(id)browser;
- (id)initCommon:(id)common browser:(id)browser;
- (void)_parseAttributeDatabase:(id)database;
- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number;
- (void)identifyWithCompletion:(id)completion;
- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)processCharacteristicWrite:(id)write value:(id)value;
- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)sendDelayedResponse:(unint64_t)response responses:(id)responses readOperation:(BOOL)operation completionQueue:(id)queue completionHandler:(id)handler;
- (void)startPairingWithRequest:(id)request;
- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation HMDAccessoryServerDemo

- (HMDAccessoryServerBrowserDemo)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number
{
  characteristicsCopy = characteristics;
  numberCopy = number;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDAccessoryServerDemo_handleUpdatesForCharacteristics_stateNumber___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = characteristicsCopy;
  v13 = numberCopy;
  v9 = numberCopy;
  v10 = characteristicsCopy;
  dispatch_async(clientQueue, block);
}

void __70__HMDAccessoryServerDemo_handleUpdatesForCharacteristics_stateNumber___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_])
  {
    v2 = [*(a1 + 32) delegate];
    [v2 accessoryServer:*(a1 + 32) didUpdateValuesForCharacteristics:*(a1 + 40) stateNumber:*(a1 + 48) broadcast:0];
  }
}

- (BOOL)_delegateRespondsToSelector:(SEL)selector
{
  delegate = [(HAPAccessoryServer *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    if (delegateQueue)
    {
      v6 = objc_opt_respondsToSelector();
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)identifyWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (queueCopy)
  {
    if ([(HMDAccessoryServerDemo *)self testMode])
    {
      v9 = 0;
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:-6702 userInfo:0];
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__HMDAccessoryServerDemo_listPairingsWithCompletionQueue_completionHandler___block_invoke;
    v12[3] = &unk_279735738;
    v13 = v9;
    v14 = v8;
    v10 = v9;
    dispatch_async(queueCopy, v12);
  }

  else
  {
    v10 = _Block_copy(handlerCopy);
    if (v10)
    {
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      v10[2](v10, 0, v11);
    }
  }
}

void __76__HMDAccessoryServerDemo_listPairingsWithCompletionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 0, *(a1 + 32));
    v2 = v3;
  }
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  self->__paired = 0;
  self->__hasPairings = 0;
  WeakRetained = objc_loadWeakRetained(&self->_browser);
  [WeakRetained resetDemoAccessory:self];

  keyStore = [(HAPAccessoryServer *)self keyStore];
  identifier = [(HAPAccessoryServer *)self identifier];
  v24 = 0;
  [keyStore removeAccessoryKeyForName:identifier error:&v24];
  v11 = v24;

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      identifier2 = [(HAPAccessoryServer *)self identifier];
      name = [(HAPAccessoryServer *)self name];
      *buf = 138544130;
      v26 = v14;
      v27 = 2112;
      v28 = identifier2;
      v29 = 2112;
      v30 = name;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Failed to remove public key for accessory %@/%@- error %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    if (queueCopy)
    {
      if (![(HMDAccessoryServerDemo *)self testMode])
      {
        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:-6702 userInfo:0];
LABEL_9:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __78__HMDAccessoryServerDemo_removePairingForCurrentControllerOnQueue_completion___block_invoke;
        block[3] = &unk_279735738;
        v22 = v17;
        v23 = completionCopy;
        v18 = v17;
        dispatch_async(queueCopy, block);

        v19 = v23;
LABEL_12:

        goto LABEL_13;
      }

LABEL_8:
      v17 = 0;
      goto LABEL_9;
    }
  }

  else if (queueCopy)
  {
    goto LABEL_8;
  }

  v18 = _Block_copy(completionCopy);
  if (v18)
  {
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    v18[2](v18, v19);
    goto LABEL_12;
  }

LABEL_13:

  return 0;
}

void __78__HMDAccessoryServerDemo_removePairingForCurrentControllerOnQueue_completion___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (queueCopy)
  {
    if ([(HMDAccessoryServerDemo *)self testMode])
    {
      v10 = 0;
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:-6702 userInfo:0];
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__HMDAccessoryServerDemo_removePairing_completionQueue_completionHandler___block_invoke;
    v13[3] = &unk_279735738;
    v14 = v10;
    v15 = v9;
    v11 = v10;
    dispatch_async(queueCopy, v13);
  }

  else
  {
    v11 = _Block_copy(handlerCopy);
    if (v11)
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      v11[2](v11, v12);
    }
  }
}

void __74__HMDAccessoryServerDemo_removePairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (queueCopy)
  {
    if ([(HMDAccessoryServerDemo *)self testMode])
    {
      v10 = 0;
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:-6702 userInfo:0];
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HMDAccessoryServerDemo_addPairing_completionQueue_completionHandler___block_invoke;
    v13[3] = &unk_279735738;
    v14 = v10;
    v15 = v9;
    v11 = v10;
    dispatch_async(queueCopy, v13);
  }

  else
  {
    v11 = _Block_copy(handlerCopy);
    if (v11)
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      v11[2](v11, v12);
    }
  }
}

void __71__HMDAccessoryServerDemo_addPairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

- (void)startPairingWithRequest:(id)request
{
  v30 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  self->__paired = 1;
  self->__hasPairings = 1;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [uUIDString dataUsingEncoding:4];

  keyStore = [(HAPAccessoryServer *)self keyStore];
  identifier = [(HAPAccessoryServer *)self identifier];
  v21 = 0;
  v10 = [keyStore savePublicKey:v7 forAccessoryName:identifier error:&v21];
  v11 = v21;

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      identifier2 = [(HAPAccessoryServer *)self identifier];
      name = [(HAPAccessoryServer *)self name];
      *buf = 138544130;
      v23 = v15;
      v24 = 2112;
      v25 = identifier2;
      v26 = 2112;
      v27 = name;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to save public for accessory %@/%@ - error %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
  }

  if ([(HMDAccessoryServerDemo *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMDAccessoryServerDemo_startPairingWithRequest___block_invoke;
    block[3] = &unk_2797359B0;
    block[4] = self;
    v20 = v11;
    dispatch_async(delegateQueue, block);
  }
}

void __50__HMDAccessoryServerDemo_startPairingWithRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:*(a1 + 40)];
}

- (void)processCharacteristicWrite:(id)write value:(id)value
{
  v111 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  valueCopy = value;
  v6 = objc_msgSend_copy(valueCopy);
  v94 = writeCopy;
  [writeCopy setValue:v6];

  date = [MEMORY[0x277CBEAA8] date];
  [writeCopy setValueUpdatedTime:date];

  weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  service = [writeCopy service];
  type = [writeCopy type];
  delta = 1100000000;
  v9 = [type isEqualToString:*MEMORY[0x277CFE730]];

  if (v9)
  {
    v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE608]);
    v93 = v10;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_30:
    v93 = 0;
    v15 = 0;
    goto LABEL_31;
  }

  type2 = [writeCopy type];
  v12 = [type2 isEqualToString:*MEMORY[0x277CFE710]];

  if (v12)
  {
    v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE5E8]);
    v93 = v10;
    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  type3 = [writeCopy type];
  v17 = [type3 isEqualToString:*MEMORY[0x277CFE720]];

  if (v17)
  {
    v93 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE5F8]);
    v18 = [service characteristicsOfType:*MEMORY[0x277CFE628]];
    firstObject = [v18 firstObject];

    v20 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE750]);
    if (!v93)
    {

      goto LABEL_30;
    }

    responseDelay = [v93 responseDelay];
    unsignedLongValue = [responseDelay unsignedLongValue];
    v23 = unsignedLongValue == 0;

    if (unsignedLongValue)
    {
      v24 = 0;
      goto LABEL_12;
    }

    delta = 300000000;
    if ([valueCopy integerValue] == 3)
    {
      value = [firstObject value];
      [value doubleValue];
      v58 = v57;
      value2 = [v20 value];
      [value2 doubleValue];
      v61 = v60;

      if (v58 <= v61)
      {
        value3 = [firstObject value];
        [value3 doubleValue];
        v80 = v79;
        value4 = [v20 value];
        [value4 doubleValue];
        v83 = v82;

        if (v80 >= v83)
        {
          v24 = &unk_286628600;
        }

        else
        {
          v24 = &unk_2866285D0;
        }
      }

      else
      {
        v24 = &unk_2866285E8;
      }
    }

    else
    {
      v24 = valueCopy;
      if ([v24 integerValue] == 1)
      {
        v64 = v24;
        v65 = MEMORY[0x277CCABB0];
        value5 = [v20 value];
        [value5 doubleValue];
        v68 = [v65 numberWithDouble:v67 + -1.0];
      }

      else
      {
        if ([v24 integerValue] != 2)
        {
          goto LABEL_12;
        }

        v64 = v24;
        v71 = MEMORY[0x277CCABB0];
        value5 = [v20 value];
        [value5 doubleValue];
        v68 = [v71 numberWithDouble:v72 + 1.0];
      }

      v73 = v68;
      [weakToStrongObjectsMapTable setObject:v68 forKey:firstObject];

      v24 = v64;
    }

LABEL_12:

    if (!v23)
    {
LABEL_17:
      v15 = v24;
      goto LABEL_18;
    }

LABEL_15:
    if (v24)
    {
      v15 = v24;
      [weakToStrongObjectsMapTable setObject:v24 forKey:v93];
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  type4 = [writeCopy type];
  v35 = [type4 isEqualToString:*MEMORY[0x277CFE750]];

  if (v35)
  {
    v36 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE628]);
    v93 = v36;
    if (v36)
    {
      responseDelay2 = [v36 responseDelay];
      unsignedLongValue2 = [responseDelay2 unsignedLongValue];

      if (unsignedLongValue2)
      {
        goto LABEL_7;
      }

      v39 = [service characteristicsOfType:*MEMORY[0x277CFE5F8]];
      firstObject2 = [v39 firstObject];

      value6 = [firstObject2 value];
      integerValue = [value6 integerValue];

      if (integerValue == 1)
      {
        v43 = MEMORY[0x277CCABB0];
        [valueCopy doubleValue];
        v45 = [v43 numberWithDouble:v44 + -1.0];
      }

      else
      {
        value7 = [firstObject2 value];
        integerValue2 = [value7 integerValue];

        if (integerValue2 == 2)
        {
          v76 = MEMORY[0x277CCABB0];
          [valueCopy doubleValue];
          v45 = [v76 numberWithDouble:v77 + 1.0];
        }

        else
        {
          v45 = valueCopy;
        }
      }

      v24 = v45;

      goto LABEL_15;
    }

    goto LABEL_30;
  }

  type5 = [writeCopy type];
  v47 = [type5 isEqualToString:*MEMORY[0x277CFE740]];

  if (v47)
  {
    v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE618]);
    v93 = v10;
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    type6 = [writeCopy type];
    v52 = [type6 isEqualToString:*MEMORY[0x277CFE748]];

    if (v52)
    {
      v53 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE620]);
      v93 = v53;
      if (v53)
      {
        responseDelay3 = [v53 responseDelay];
        unsignedLongValue3 = [responseDelay3 unsignedLongValue];

        if (unsignedLongValue3)
        {
          goto LABEL_7;
        }

        delta = 300000000;
        if ([valueCopy integerValue] >= 3)
        {
          v24 = &unk_2866285D0;
        }

        else
        {
          v24 = &unk_286628600;
        }

        goto LABEL_15;
      }

      goto LABEL_30;
    }

    type7 = [writeCopy type];
    v63 = [type7 isEqualToString:*MEMORY[0x277CFE738]];

    if (v63)
    {
      v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE610]);
      v93 = v10;
      if (!v10)
      {
        goto LABEL_30;
      }
    }

    else
    {
      type8 = [writeCopy type];
      v70 = [type8 isEqualToString:*MEMORY[0x277CFE728]];

      if (v70)
      {
        v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE600]);
        v93 = v10;
        if (!v10)
        {
          goto LABEL_30;
        }
      }

      else
      {
        type9 = [writeCopy type];
        v85 = [type9 isEqualToString:*MEMORY[0x277CFE760]];

        if (v85)
        {
          v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE638]);
          v93 = v10;
          if (!v10)
          {
            goto LABEL_30;
          }
        }

        else
        {
          type10 = [writeCopy type];
          v87 = [type10 isEqualToString:*MEMORY[0x277CFE5B0]];

          if (!v87)
          {
            goto LABEL_30;
          }

          v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE658]);
          v93 = v10;
          if (!v10)
          {
            goto LABEL_30;
          }
        }
      }
    }
  }

LABEL_6:
  responseDelay4 = [v10 responseDelay];
  unsignedLongValue4 = [responseDelay4 unsignedLongValue];

  if (!unsignedLongValue4)
  {
    v24 = valueCopy;
    goto LABEL_15;
  }

LABEL_7:
  v15 = 0;
LABEL_18:
  v25 = objc_autoreleasePoolPush();
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    name = [(HAPAccessoryServer *)self name];
    identifier = [(HAPAccessoryServer *)self identifier];
    responseDelay5 = [v93 responseDelay];
    unsignedLongValue5 = [responseDelay5 unsignedLongValue];
    type11 = [v93 type];
    instanceID = [v93 instanceID];
    *buf = 138544642;
    v100 = v27;
    v101 = 2112;
    v102 = name;
    v103 = 2112;
    v104 = identifier;
    v105 = 2048;
    v106 = unsignedLongValue5;
    v107 = 2112;
    v108 = type11;
    v109 = 2112;
    v110 = instanceID;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] responseDelay set to %lu for current state characteristic %@/%@ - bypassing processing effects...", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v25);
LABEL_31:
  if ([weakToStrongObjectsMapTable count])
  {
    v48 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(weakToStrongObjectsMapTable, "count")}];
    objc_initWeak(buf, self);
    if ([(HMDAccessoryServerDemo *)self _delegateRespondsToSelector:sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_])
    {
      v49 = dispatch_time(0, delta);
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__HMDAccessoryServerDemo_processCharacteristicWrite_value___block_invoke;
      block[3] = &unk_279732670;
      v96 = weakToStrongObjectsMapTable;
      v97 = v48;
      objc_copyWeak(&v98, buf);
      dispatch_after(v49, delegateQueue, block);

      objc_destroyWeak(&v98);
    }

    objc_destroyWeak(buf);
  }
}

void __59__HMDAccessoryServerDemo_processCharacteristicWrite_value___block_invoke(id *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CBEAA8] date];
        [v7 setValueUpdatedTime:v8];

        v9 = [a1[4] objectForKey:v7];
        [v7 setValue:v9];

        [a1[5] addObject:v7];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v11 = [WeakRetained delegate];
  v12 = objc_msgSend_copy(a1[5]);
  [v11 accessoryServer:WeakRetained didUpdateValuesForCharacteristics:v12 stateNumber:0 broadcast:0];
}

- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  v28 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = characteristicsCopy;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:*(*(&v23 + 1) + 8 * v16) error:0];
        [array addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  if (queueCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __86__HMDAccessoryServerDemo_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
    v20[3] = &unk_279735738;
    v22 = handlerCopy;
    v21 = array;
    dispatch_async(queueCopy, v20);

    v18 = v22;
  }

  else
  {
    v18 = _Block_copy(handlerCopy);
    if (v18)
    {
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      v18[2](v18, 0, v19);
    }
  }
}

void __86__HMDAccessoryServerDemo_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), 0);
    v2 = v3;
  }
}

- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v84 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = valuesCopy;
  v55 = [obj countByEnumeratingWithState:&v63 objects:v83 count:16];
  if (!v55)
  {

    v15 = array;
LABEL_18:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__HMDAccessoryServerDemo_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_279735738;
    v61 = v15;
    v62 = handlerCopy;
    v39 = v15;
    v40 = handlerCopy;
    dispatch_async(queueCopy, block);

    v38 = v62;
    goto LABEL_19;
  }

  v41 = handlerCopy;
  v42 = queueCopy;
  v43 = expiryCopy;
  v14 = 0;
  v54 = *v64;
  selfCopy2 = self;
  v15 = array;
  do
  {
    for (i = 0; i != v55; ++i)
    {
      if (*v64 != v54)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v63 + 1) + 8 * i);
      characteristic = [v18 characteristic];
      responseDelay = [characteristic responseDelay];
      unsignedLongValue = [responseDelay unsignedLongValue];

      if (unsignedLongValue)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v53 = HMFGetLogIdentifier();
          name = [(HAPAccessoryServer *)selfCopy2 name];
          identifier = [(HAPAccessoryServer *)selfCopy2 identifier];
          [characteristic service];
          v49 = v51 = v14;
          type = [v49 type];
          [characteristic type];
          v25 = log = v23;
          instanceID = [characteristic instanceID];
          [characteristic value];
          v27 = v50 = v22;
          *buf = 138545154;
          v68 = v53;
          v69 = 2112;
          v70 = name;
          v71 = 2112;
          v72 = identifier;
          v73 = 2112;
          v74 = type;
          v75 = 2112;
          v76 = v25;
          v77 = 2112;
          v78 = instanceID;
          v79 = 2112;
          v80 = v27;
          v81 = 2048;
          v82 = unsignedLongValue;
          _os_log_impl(&dword_2531F8000, log, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Service %@ Characteristic %@/%@: value %@, delay %lu", buf, 0x52u);

          v22 = v50;
          v15 = array;

          v23 = log;
          selfCopy2 = self;

          v14 = v51;
        }

        objc_autoreleasePoolPop(v22);
        if (v14 <= unsignedLongValue)
        {
          v14 = unsignedLongValue;
        }
      }

      value = [v18 value];
      [(HMDAccessoryServerDemo *)selfCopy2 processCharacteristicWrite:characteristic value:value];

      v29 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:characteristic error:0];
      [v15 addObject:v29];
    }

    v55 = [obj countByEnumeratingWithState:&v63 objects:v83 count:16];
  }

  while (v55);

  queueCopy = v42;
  expiryCopy = v43;
  handlerCopy = v41;
  if (!v14)
  {
    goto LABEL_18;
  }

  v30 = v14;
  v31 = objc_autoreleasePoolPush();
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    name2 = [(HAPAccessoryServer *)self name];
    identifier2 = [(HAPAccessoryServer *)self identifier];
    *buf = 138544130;
    v68 = v33;
    v69 = 2112;
    v70 = name2;
    v71 = 2112;
    v72 = identifier2;
    v73 = 2048;
    v74 = v30;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Delaying write-response by %lu", buf, 0x2Au);

    v15 = array;
  }

  objc_autoreleasePoolPop(v31);
  v36 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v42);
  v37 = dispatch_time(0, 1000000 * v30);
  dispatch_source_set_timer(v36, v37, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __101__HMDAccessoryServerDemo_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_18;
  handler[3] = &unk_2797355D0;
  v58 = v15;
  v59 = v41;
  v57 = v36;
  v38 = v15;
  v39 = v41;
  v40 = v36;
  dispatch_source_set_event_handler(v40, handler);
  dispatch_resume(v40);

LABEL_19:
}

- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v80 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = valuesCopy;
  v14 = [obj countByEnumeratingWithState:&v59 objects:v79 count:16];
  if (!v14)
  {

LABEL_18:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__HMDAccessoryServerDemo_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_279735738;
    v57 = array;
    v58 = handlerCopy;
    v38 = array;
    v39 = handlerCopy;
    dispatch_async(queueCopy, block);

    v37 = v58;
    goto LABEL_19;
  }

  v40 = handlerCopy;
  v41 = queueCopy;
  v42 = expiryCopy;
  v15 = 0;
  v50 = *v60;
  v16 = v14;
  do
  {
    v17 = 0;
    v44 = v16;
    do
    {
      if (*v60 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v59 + 1) + 8 * v17);
      responseDelay = [v18 responseDelay];
      unsignedLongValue = [responseDelay unsignedLongValue];

      if (unsignedLongValue)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v49 = HMFGetLogIdentifier();
          v47 = v21;
          name = [(HAPAccessoryServer *)self name];
          identifier = [(HAPAccessoryServer *)self identifier];
          service = [v18 service];
          [service type];
          v25 = v48 = v15;
          type = [v18 type];
          instanceID = [v18 instanceID];
          value = [v18 value];
          *buf = 138545154;
          v64 = v49;
          v65 = 2112;
          v66 = name;
          v67 = 2112;
          v68 = identifier;
          v69 = 2112;
          v70 = v25;
          v71 = 2112;
          v72 = type;
          v73 = 2112;
          v74 = instanceID;
          v75 = 2112;
          v76 = value;
          v77 = 2048;
          v78 = unsignedLongValue;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Service %@ Characteristic %@/%@: value %@, delay %lu", buf, 0x52u);

          v21 = v47;
          v16 = v44;

          v15 = v48;
        }

        objc_autoreleasePoolPop(v21);
        if (v15 <= unsignedLongValue)
        {
          v15 = unsignedLongValue;
        }
      }

      v29 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:v18 error:0];
      [array addObject:v29];

      ++v17;
    }

    while (v16 != v17);
    v16 = [obj countByEnumeratingWithState:&v59 objects:v79 count:16];
  }

  while (v16);

  queueCopy = v41;
  expiryCopy = v42;
  handlerCopy = v40;
  if (!v15)
  {
    goto LABEL_18;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    name2 = [(HAPAccessoryServer *)self name];
    identifier2 = [(HAPAccessoryServer *)self identifier];
    *buf = 138544130;
    v64 = v32;
    v65 = 2112;
    v66 = name2;
    v67 = 2112;
    v68 = identifier2;
    v69 = 2048;
    v70 = v15;
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Delaying read-response by %lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v30);
  v35 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v41);
  v36 = dispatch_time(0, 1000000 * v15);
  dispatch_source_set_timer(v35, v36, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __100__HMDAccessoryServerDemo_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_17;
  handler[3] = &unk_2797355D0;
  v53 = v35;
  v54 = array;
  v55 = v40;
  v37 = array;
  v38 = v40;
  v39 = v35;
  dispatch_source_set_event_handler(v39, handler);
  dispatch_resume(v39);

LABEL_19:
}

- (void)sendDelayedResponse:(unint64_t)response responses:(id)responses readOperation:(BOOL)operation completionQueue:(id)queue completionHandler:(id)handler
{
  LODWORD(v9) = operation;
  v45 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  queueCopy = queue;
  handlerCopy = handler;
  v15 = handlerCopy;
  if (response)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v26 = responsesCopy;
      v9 = v18 = v9;
      name = [(HAPAccessoryServer *)self name];
      identifier = [(HAPAccessoryServer *)self identifier];
      v21 = identifier;
      *buf = 138544386;
      v22 = @"write";
      v36 = v9;
      if (v18)
      {
        v22 = @"read";
      }

      v37 = 2112;
      v38 = name;
      v39 = 2112;
      v40 = identifier;
      v41 = 2112;
      v42 = v22;
      v43 = 2048;
      responseCopy = response;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Delaying %@-response by %lu", buf, 0x34u);

      LOBYTE(v9) = v18;
      responsesCopy = v26;
    }

    objc_autoreleasePoolPop(v16);
    v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queueCopy);
    v24 = dispatch_time(0, 1000000 * response);
    dispatch_source_set_timer(v23, v24, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __104__HMDAccessoryServerDemo_sendDelayedResponse_responses_readOperation_completionQueue_completionHandler___block_invoke_15;
    handler[3] = &unk_279733CD0;
    v31 = v9;
    handler[4] = self;
    v28 = v23;
    v30 = v15;
    v29 = responsesCopy;
    v25 = v23;
    dispatch_source_set_event_handler(v25, handler);
    dispatch_resume(v25);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__HMDAccessoryServerDemo_sendDelayedResponse_responses_readOperation_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_279735738;
    v34 = handlerCopy;
    v33 = responsesCopy;
    dispatch_async(queueCopy, block);

    v25 = v34;
  }
}

uint64_t __104__HMDAccessoryServerDemo_sendDelayedResponse_responses_readOperation_completionQueue_completionHandler___block_invoke_15(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = [*(a1 + 32) name];
    v6 = [*(a1 + 32) identifier];
    v7 = v6;
    v8 = *(a1 + 64);
    v11 = 138544130;
    v12 = v4;
    if (v8)
    {
      v9 = @"read";
    }

    else
    {
      v9 = @"write";
    }

    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Sending %@-response", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 48));
}

- (void)_parseAttributeDatabase:(id)database
{
  v66 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v5 = *MEMORY[0x277CFE590];
  v6 = [databaseCopy objectForKeyedSubscript:*MEMORY[0x277CFE590]];
  if (!v6)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      name = [(HAPAccessoryServer *)self name];
      *buf = 138543618;
      v59 = v32;
      v60 = 2112;
      v61 = name;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@[HMDAccessoryServerDemo %@] No accessory objects found in the attribute database", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = objc_alloc(MEMORY[0x277CCA9B8]);
    v14 = [v34 initWithDomain:*MEMORY[0x277CFE770] code:-6727 userInfo:0];
    if (v14)
    {
      goto LABEL_23;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    name2 = [(HAPAccessoryServer *)self name];
    v11 = objc_opt_class();
    *buf = 138544130;
    v59 = v9;
    v60 = 2112;
    v61 = name2;
    v62 = 2112;
    v63 = v5;
    v64 = 2112;
    v65 = v11;
    v12 = v11;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@[HMDAccessoryServerDemo %@] Expected the value of '%@' to be an array in the attribute database, instead it is a %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = objc_alloc(MEMORY[0x277CCA9B8]);
  v14 = [v13 initWithDomain:*MEMORY[0x277CFE770] code:-6727 userInfo:0];
  if (v14)
  {
LABEL_23:
    v29 = v14;
  }

  else
  {
LABEL_6:
    v48 = databaseCopy;
    v15 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
    array = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v47 = v6;
    obj = v6;
    v16 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v54;
      v20 = *MEMORY[0x277CFED10];
      while (2)
      {
        v21 = 0;
        v22 = v18;
        do
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v18 = [MEMORY[0x277CFEA40] _parseSerializedAccessoryDictionary:*(*(&v53 + 1) + 8 * v21) server:{self, v47}];

          if (!v18)
          {
            v35 = objc_autoreleasePoolPush();
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = HMFGetLogIdentifier();
              name3 = [(HAPAccessoryServer *)self name];
              *buf = 138543618;
              v59 = v37;
              v60 = 2112;
              v61 = name3;
              _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@[HMDAccessoryServerDemo %@] Unable to parse serialized accessory", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
            v39 = objc_alloc(MEMORY[0x277CCA9B8]);
            v29 = [v39 initWithDomain:*MEMORY[0x277CFE770] code:-6742 userInfo:0];
            goto LABEL_30;
          }

          instanceID = [v18 instanceID];
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
          v25 = [instanceID isEqualToNumber:v24];

          if (v25)
          {
            [v18 setPrimary:1];
            [(HAPAccessoryServer *)self setPrimaryAccessory:v18];
          }

          else
          {
            [v18 setPrimary:0];
          }

          instanceID2 = [v18 instanceID];
          v27 = [v15 containsObject:instanceID2];

          if (v27)
          {
            v40 = objc_autoreleasePoolPush();
            v41 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = HMFGetLogIdentifier();
              name4 = [(HAPAccessoryServer *)self name];
              *buf = 138543618;
              v59 = v42;
              v60 = 2112;
              v61 = name4;
              _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@[HMDAccessoryServerDemo %@] Accessory Server has accessory with duplicate instance ID", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v40);
            v44 = objc_alloc(MEMORY[0x277CCA9B8]);
            v29 = [v44 initWithDomain:*MEMORY[0x277CFE770] code:-6742 userInfo:0];

            goto LABEL_30;
          }

          instanceID3 = [v18 instanceID];
          [v15 addObject:instanceID3];

          [v18 setServer:self];
          [array addObject:v18];
          ++v21;
          v22 = v18;
        }

        while (v17 != v21);
        v17 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v29 = 0;
LABEL_30:

    [(HAPAccessoryServer *)self setAccessories:array];
    v6 = v47;
    databaseCopy = v48;
  }

  delegateQueue = [(HAPAccessoryServer *)self delegateQueue];

  if (delegateQueue)
  {
    delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMDAccessoryServerDemo__parseAttributeDatabase___block_invoke;
    block[3] = &unk_2797359B0;
    block[4] = self;
    v52 = v29;
    dispatch_async(delegateQueue2, block);
  }
}

void __50__HMDAccessoryServerDemo__parseAttributeDatabase___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 accessories];
  v4 = objc_msgSend_copy(v3);
  [v5 accessoryServer:v2 didDiscoverAccessories:v4 transaction:0 error:*(a1 + 40)];
}

- (HMDAccessoryServerDemo)initWithName:(id)name identifier:(id)identifier deviceInfo:(id)info paired:(BOOL)paired keyStore:(id)store testMode:(BOOL)mode browser:(id)browser
{
  nameCopy = name;
  identifierCopy = identifier;
  infoCopy = info;
  v18 = [(HMDAccessoryServerDemo *)self initCommon:store browser:browser];
  v19 = v18;
  if (v18)
  {
    v18->__paired = paired;
    v18->__hasPairings = paired;
    v20 = objc_msgSend_copy(infoCopy);
    accessoryInfo = v19->_accessoryInfo;
    v19->_accessoryInfo = v20;

    v22 = objc_msgSend_copy(identifierCopy);
    v23 = *MEMORY[0x277CFECD0];
    v24 = *(&v19->super.super.super.isa + v23);
    *(&v19->super.super.super.isa + v23) = v22;

    v25 = objc_msgSend_copy(nameCopy);
    v26 = *MEMORY[0x277CFECE0];
    v27 = *(&v19->super.super.super.isa + v26);
    *(&v19->super.super.super.isa + v26) = v25;

    v19->_testMode = mode;
    category = v19->_category;
    v19->_category = &unk_2866285D0;
  }

  return v19;
}

- (id)initCommon:(id)common browser:(id)browser
{
  browserCopy = browser;
  v10.receiver = self;
  v10.super_class = HMDAccessoryServerDemo;
  v7 = [(HAPAccessoryServer *)&v10 initWithKeystore:common];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_browser, browserCopy);
  }

  return v8;
}

@end