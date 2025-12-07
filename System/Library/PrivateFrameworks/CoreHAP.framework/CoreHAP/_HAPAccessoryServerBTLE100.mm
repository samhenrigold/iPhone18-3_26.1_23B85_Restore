@interface _HAPAccessoryServerBTLE100
+ (id)_convertFromBTLEToHAPUUID:(id)d;
+ (id)deserializeCharacteristicReadData:(id)data characteristicFormat:(unint64_t)format supportsAdditionalAuthentication:(BOOL)authentication error:(id *)error;
+ (id)serializeCharacteristicWriteValue:(id)value characteristicFormat:(unint64_t)format supportsAdditionalAuthentication:(BOOL)authentication authenticationData:(id)data error:(id *)error;
- (BOOL)_delegateRespondsToSelector:(SEL)selector;
- (BOOL)_parseBTLECharacteristicDescriptor:(id)descriptor existingDescriptors:(id)descriptors characteristics:(id)characteristics;
- (BOOL)isBLELinkConnected;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion;
- (BOOL)stopPairingWithError:(id *)error;
- (BOOL)tryPairingPassword:(id)password onboardingSetupPayloadString:(id)string error:(id *)error;
- (NSString)description;
- (_HAPAccessoryServerBTLE100)initWithPeripheral:(id)peripheral name:(id)name pairingUsername:(id)username statusFlags:(id)flags stateNumber:(id)number stateChanged:(BOOL)changed connectReason:(unsigned __int8)reason configNumber:(id)self0 category:(id)self1 setupHash:(id)self2 connectionIdleTime:(unsigned __int8)self3 browser:(id)self4 keyStore:(id)self5 whbStableIdentifier:(id)self6;
- (id)_btleCharacteristicForHAPCharacteristic:(id)characteristic;
- (id)_decryptData:(id)data error:(id *)error;
- (id)_dequeueEnableEventCompletionTupleForCharacteristic:(id)characteristic;
- (id)_dequeueReadCompletionTupleForCharacteristic:(id)characteristic;
- (id)_dequeueWriteCompletionHandlerForCharacteristic:(id)characteristic;
- (id)_encryptDataAndGenerateAuthTag:(id)tag error:(id *)error;
- (id)_hapCharacteristicForBTLECharacteristic:(id)characteristic;
- (id)_nextInstanceID;
- (id)_pairSetupHAPCharacteristic;
- (id)_pairVerifyHAPCharacteristic;
- (id)_parseBTLEService:(id)service withInstanceId:(id)id;
- (id)securitySession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error;
- (id)securitySession:(id)session didReceiveRequestForPeerPairingIdentityWithIdentifier:(id)identifier error:(id *)error;
- (int)_ensurePairingSessionIsInitializedWithType:(unsigned int)type;
- (int)_handlePairSetupExchangeWithData:(id)data;
- (int)_pairSetupStart;
- (int)_pairSetupTryPassword:(id)password;
- (void)_addPairingWithIdentifier:(id)identifier publicKey:(id)key admin:(BOOL)admin queue:(id)queue completion:(id)completion;
- (void)_cancelConnectionLifetimeTimer;
- (void)_checkForAuthPrompt;
- (void)_createPrimaryAccessoryFromAdvertisementData;
- (void)_dequeueAndContinueOperation;
- (void)_disconnect;
- (void)_enableEvent:(BOOL)event forCharacteristic:(id)characteristic withCompletionHandler:(id)handler queue:(id)queue;
- (void)_enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)_enqueueEnableEventCompletionHandler:(id)handler queue:(id)queue forCharacteristic:(id)characteristic;
- (void)_enqueueOperation:(int64_t)operation identifier:(id)identifier publicKey:(id)key admin:(BOOL)admin queue:(id)queue completion:(id)completion;
- (void)_enqueueReadCompletionHandler:(id)handler queue:(id)queue forCharacteristic:(id)characteristic;
- (void)_enqueueWriteCompletionHandler:(id)handler forCharacteristic:(id)characteristic;
- (void)_getAttributeDatabase;
- (void)_handleConnectionLifetimeTimeout;
- (void)_handleConnectionWithError:(id)error;
- (void)_handleDescriptorDiscovery;
- (void)_handleDisconnectionWithCompletion:(id)completion;
- (void)_handleHAPCharacteristicDiscoveryForService:(id)service error:(id)error;
- (void)_handleHAPNotificationStateUpdateForCharacteristic:(id)characteristic error:(id)error;
- (void)_handleHAPServiceDiscovery;
- (void)_handleHAPServiceDiscoveryCompletionForService:(id)service withInstanceId:(id)id;
- (void)_handleHAPWriteConfirmationForCharacteristic:(id)characteristic error:(id)error;
- (void)_handlePairingStateMachine;
- (void)_handlePairingsReadForCharacteristic:(id)characteristic readError:(id)error removing:(BOOL)removing queue:(id)queue completion:(id)completion;
- (void)_handlePairingsWriteForCharacteristic:(id)characteristic writeError:(id)error removing:(BOOL)removing queue:(id)queue completion:(id)completion;
- (void)_handleReadDescriptorValues;
- (void)_handleReceivedSecuritySessionSetupExchangeData:(id)data;
- (void)_handleSuccessfulBTLEConnection;
- (void)_handleUpdatedValueForBTLECharacteristic:(id)characteristic error:(id)error;
- (void)_notifyDelegateOfReceivedEncryptedAuthenticatedData:(id)data forCharacteristic:(id)characteristic;
- (void)_notifyDelegateOfReceivedPlaintextData:(id)data forCharacteristic:(id)characteristic;
- (void)_notifyDelegateOfSentEncryptedAuthenticatedData:(id)data forCharacteristic:(id)characteristic;
- (void)_notifyDelegateOfSentPlaintextData:(id)data forCharacteristic:(id)characteristic;
- (void)_readCharacteristicValues:(id)values completionQueue:(id)queue completionHandler:(id)handler;
- (void)_readValueForCharacteristic:(id)characteristic completionQueue:(id)queue completionHandler:(id)handler;
- (void)_reallyEstablishSecureSession;
- (void)_removePairingWithIdentifier:(id)identifier publicKey:(id)key queue:(id)queue completion:(id)completion;
- (void)_resetState;
- (void)_setupBTLEConnectionToPeripheral;
- (void)_updateConnectionLifetimeTimer;
- (void)_writeCharacteristicValues:(id)values queue:(id)queue completionHandler:(id)handler;
- (void)_writeValue:(id)value forCharacteristic:(id)characteristic authorizationData:(id)data withCompletionHandler:(id)handler queue:(id)queue;
- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler;
- (void)continueAuthAfterValidation:(BOOL)validation;
- (void)continuePairingAfterAuthPrompt;
- (void)dealloc;
- (void)disconnect;
- (void)discoverAccessories;
- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)generateBroadcastKey:(unsigned __int8)key queue:(id)queue withCompletionHandler:(id)handler;
- (void)handleConnectionWithPeripheral:(id)peripheral withError:(id)error;
- (void)handleDisconnectionWithError:(id)error completionHandler:(id)handler;
- (void)identifyWithCompletion:(id)completion;
- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)readValueForCharacteristic:(id)characteristic queue:(id)queue completionHandler:(id)handler;
- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)securitySession:(id)session didCloseWithError:(id)error;
- (void)securitySession:(id)session didReceiveSetupExchangeData:(id)data;
- (void)securitySessionDidOpen:(id)open;
- (void)securitySessionIsOpening:(id)opening;
- (void)startPairingWithRequest:(id)request;
- (void)updateConnectionIdleTime:(unsigned __int8)time;
- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation _HAPAccessoryServerBTLE100

- (void)disconnect
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___HAPAccessoryServerBTLE100_disconnect__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)_dequeueAndContinueOperation
{
  v36 = *MEMORY[0x277D85DE8];
  addRemovePairingOperationsQueue = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
  v4 = [addRemovePairingOperationsQueue count];

  if (v4)
  {
    addRemovePairingOperationsQueue2 = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
    [addRemovePairingOperationsQueue2 removeObjectAtIndex:0];
  }

  addRemovePairingOperationsQueue3 = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
  v7 = [addRemovePairingOperationsQueue3 count];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      addRemovePairingOperationsQueue4 = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
      v28 = 138543618;
      v29 = v10;
      v30 = 2048;
      v31 = [addRemovePairingOperationsQueue4 count];
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Continuing with remaining %ld operations", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    addRemovePairingOperationsQueue5 = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
    v13 = [addRemovePairingOperationsQueue5 objectAtIndex:0];

    [v13 setOperationExecuting:1];
    operation = [v13 operation];
    if (operation == 6)
    {
      identifier = [v13 identifier];
      publicKey = [v13 publicKey];
      queue = [v13 queue];
      completionHandler = [v13 completionHandler];
      [(_HAPAccessoryServerBTLE100 *)self _removePairingWithIdentifier:identifier publicKey:publicKey queue:queue completion:completionHandler];
    }

    else
    {
      if (operation != 5)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = HMFGetLogIdentifier();
          name = [(HAPAccessoryServer *)self name];
          operation2 = [v13 operation];
          identifier2 = [v13 identifier];
          v28 = 138544130;
          v29 = v24;
          v30 = 2112;
          v31 = name;
          v32 = 2048;
          v33 = operation2;
          v34 = 2112;
          v35 = identifier2;
          _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@] ### Invalid Operation %tu in Q for controller: %@, Dropping and continuing", &v28, 0x2Au);
        }

        objc_autoreleasePoolPop(v22);
        [(_HAPAccessoryServerBTLE100 *)self _dequeueAndContinueOperation];
        goto LABEL_14;
      }

      identifier = [v13 identifier];
      publicKey = [v13 publicKey];
      admin = [v13 admin];
      queue2 = [v13 queue];
      completionHandler2 = [v13 completionHandler];
      [(_HAPAccessoryServerBTLE100 *)self _addPairingWithIdentifier:identifier publicKey:publicKey admin:admin queue:queue2 completion:completionHandler2];
    }

LABEL_14:
  }
}

- (void)_enqueueOperation:(int64_t)operation identifier:(id)identifier publicKey:(id)key admin:(BOOL)admin queue:(id)queue completion:(id)completion
{
  adminCopy = admin;
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyCopy = key;
  queueCopy = queue;
  completionCopy = completion;
  v18 = [[HAPAddRemovePairingOperation alloc] initWith:operation identifier:identifierCopy publicKey:keyCopy admin:adminCopy queue:queueCopy completion:completionCopy];
  addRemovePairingOperationsQueue = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
  v20 = [addRemovePairingOperationsQueue count];

  if (!v20)
  {
    [(HAPAddRemovePairingOperation *)v18 setOperationExecuting:1];
  }

  addRemovePairingOperationsQueue2 = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
  [addRemovePairingOperationsQueue2 addObject:v18];

  v22 = objc_autoreleasePoolPush();
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = HMFGetLogIdentifier();
    name = [(HAPAccessoryServer *)self name];
    v26 = 138544130;
    v27 = v24;
    v28 = 2112;
    v29 = name;
    v30 = 2048;
    operationCopy = operation;
    v32 = 2112;
    v33 = identifierCopy;
    _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@] Queued Operation %ld for controller with identifier %@", &v26, 0x2Au);
  }

  objc_autoreleasePoolPop(v22);
}

- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    name = [(HAPAccessoryServer *)self name];
    v13 = NSStringFromSelector(a2);
    *buf = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = name;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@] %@ is not supported over this transport", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (queueCopy && handlerCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80___HAPAccessoryServerBTLE100_listPairingsWithCompletionQueue_completionHandler___block_invoke;
    block[3] = &unk_2786D6490;
    v15 = handlerCopy;
    dispatch_async(queueCopy, block);
  }
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  v23 = 0;
  v8 = [(HAPAccessoryServer *)self getControllerPairingIdentityWithError:&v23];
  v9 = v23;
  if (v8)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      name = [(HAPAccessoryServer *)self name];
      *buf = 138543618;
      v25 = v12;
      v26 = 2112;
      v27 = name;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@] Received request to remove pairing for the current controller", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __82___HAPAccessoryServerBTLE100_removePairingForCurrentControllerOnQueue_completion___block_invoke_345;
    v17[3] = &unk_2786D6808;
    v17[4] = self;
    v19 = completionCopy;
    v18 = queueCopy;
    [(_HAPAccessoryServerBTLE100 *)self removePairing:0 completionQueue:clientQueue completionHandler:v17];

    v15 = v19;
    goto LABEL_7;
  }

  if (completionCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82___HAPAccessoryServerBTLE100_removePairingForCurrentControllerOnQueue_completion___block_invoke;
    block[3] = &unk_2786D65D8;
    v22 = completionCopy;
    v21 = v9;
    dispatch_async(queueCopy, block);

    v15 = v22;
LABEL_7:
  }

  return v8 != 0;
}

- (void)_removePairingWithIdentifier:(id)identifier publicKey:(id)key queue:(id)queue completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyCopy = key;
  queueCopy = queue;
  completionCopy = completion;
  v13 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:keyCopy];
  v14 = [[HAPPairingIdentity alloc] initWithIdentifier:identifierCopy publicKey:v13 privateKey:0 permissions:0];
  v47 = 0;
  v15 = [HAPPairingUtilities createRemovePairingRequestForPairingIdentity:v14 error:&v47];
  v16 = v47;
  v17 = objc_autoreleasePoolPush();
  v18 = HMFGetOSLogHandle();
  v19 = v18;
  if (v15)
  {
    v37 = v16;
    v38 = keyCopy;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      name = [(HAPAccessoryServer *)self name];
      *buf = 138543874;
      v49 = v20;
      v50 = 2112;
      v51 = name;
      v52 = 2112;
      v53 = identifierCopy;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@] Received request to remove pairing for controller with identifier %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    browser = [(HAPAccessoryServerBTLE *)self browser];
    identifier = [(HAPAccessoryServer *)self identifier];
    [browser deRegisterAccessoryWithIdentifier:identifier];

    btleCharacteristicToHAPCharacteristicMap = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
    pairingsCharacteristic = [(_HAPAccessoryServerBTLE100 *)self pairingsCharacteristic];
    v26 = [btleCharacteristicToHAPCharacteristicMap objectForKey:pairingsCharacteristic];

    if (!v26)
    {
      v27 = [HAPCharacteristic alloc];
      stateNumber = [(HAPAccessoryServerBTLE *)self stateNumber];
      LOBYTE(v36) = 1;
      v26 = [(HAPCharacteristic *)v27 initWithType:@"00000050-0000-1000-8000-0026BB765291" instanceID:&unk_283EA98F0 value:0 stateNumber:stateNumber properties:6 eventNotificationsEnabled:0 implicitWriteWithResponse:v36 metadata:0];

      btleCharacteristicToHAPCharacteristicMap2 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
      pairingsCharacteristic2 = [(_HAPAccessoryServerBTLE100 *)self pairingsCharacteristic];
      [btleCharacteristicToHAPCharacteristicMap2 setObject:v26 forKey:pairingsCharacteristic2];
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __86___HAPAccessoryServerBTLE100__removePairingWithIdentifier_publicKey_queue_completion___block_invoke_344;
    v41[3] = &unk_2786D67B8;
    v41[4] = self;
    v42 = queueCopy;
    v31 = completionCopy;
    v43 = completionCopy;
    v32 = MEMORY[0x231885210](v41);
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    [(_HAPAccessoryServerBTLE100 *)self _writeValue:v15 forCharacteristic:v26 authorizationData:0 withCompletionHandler:v32 queue:clientQueue];

    v16 = v37;
    keyCopy = v38;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v34 = v39 = keyCopy;
    name2 = [(HAPAccessoryServer *)self name];
    *buf = 138543874;
    v49 = v34;
    v50 = 2112;
    v51 = name2;
    v52 = 2112;
    v53 = v16;
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@[BTLE Accessory Server '%@] Failed to create remove pairing request payload with error: %@", buf, 0x20u);

    keyCopy = v39;
  }

  objc_autoreleasePoolPop(v17);
  v31 = completionCopy;
  if (queueCopy && completionCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86___HAPAccessoryServerBTLE100__removePairingWithIdentifier_publicKey_queue_completion___block_invoke;
    block[3] = &unk_2786D65D8;
    v45 = v16;
    v46 = completionCopy;
    dispatch_async(queueCopy, block);

    v26 = v45;
LABEL_12:
  }
}

- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78___HAPAccessoryServerBTLE100_removePairing_completionQueue_completionHandler___block_invoke;
  v15[3] = &unk_2786D66C8;
  v15[4] = self;
  v16 = pairingCopy;
  v17 = queueCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = pairingCopy;
  dispatch_async(clientQueue, v15);
}

- (void)_handlePairingsReadForCharacteristic:(id)characteristic readError:(id)error removing:(BOOL)removing queue:(id)queue completion:(id)completion
{
  removingCopy = removing;
  v50 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  errorCopy = error;
  queueCopy = queue;
  completionCopy = completion;
  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    name = [(HAPAccessoryServer *)self name];
    v20 = name;
    v21 = "Add";
    *buf = 138544130;
    v43 = v18;
    v44 = 2112;
    if (removingCopy)
    {
      v21 = "Remove";
    }

    v45 = name;
    v46 = 2080;
    v47 = v21;
    v48 = 2112;
    v49 = errorCopy;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@'] Completed Pairings read request for '%s' with error %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  if (errorCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103___HAPAccessoryServerBTLE100__handlePairingsReadForCharacteristic_readError_removing_queue_completion___block_invoke;
    block[3] = &unk_2786D65D8;
    v41 = completionCopy;
    v40 = errorCopy;
    v22 = completionCopy;
    dispatch_async(queueCopy, block);

    v23 = v41;
  }

  else
  {
    value = [characteristicCopy value];
    if (removingCopy)
    {
      v38 = 0;
      v25 = &v38;
      [HAPPairingUtilities parseRemovePairingResponse:value error:&v38];
    }

    else
    {
      v37 = 0;
      v25 = &v37;
      [HAPPairingUtilities parseAddPairingResponse:value error:&v37];
    }

    v26 = *v25;

    v27 = objc_autoreleasePoolPush();
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = HMFGetLogIdentifier();
      name2 = [(HAPAccessoryServer *)self name];
      v31 = name2;
      v32 = "Add";
      *buf = 138544130;
      v43 = v29;
      v44 = 2112;
      if (removingCopy)
      {
        v32 = "Remove";
      }

      v45 = name2;
      v46 = 2080;
      v47 = v32;
      v48 = 2112;
      v49 = v26;
      _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@'] Parsed pairing response for '%s' to error %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v27);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __103___HAPAccessoryServerBTLE100__handlePairingsReadForCharacteristic_readError_removing_queue_completion___block_invoke_337;
    v34[3] = &unk_2786D65D8;
    v35 = v26;
    v36 = completionCopy;
    v33 = completionCopy;
    v23 = v26;
    dispatch_async(queueCopy, v34);
  }
}

- (void)_handlePairingsWriteForCharacteristic:(id)characteristic writeError:(id)error removing:(BOOL)removing queue:(id)queue completion:(id)completion
{
  removingCopy = removing;
  v46 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  errorCopy = error;
  queueCopy = queue;
  completionCopy = completion;
  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    name = [(HAPAccessoryServer *)self name];
    v20 = name;
    v21 = "Add";
    *buf = 138544130;
    v39 = v18;
    v40 = 2112;
    if (removingCopy)
    {
      v21 = "Remove";
    }

    v41 = name;
    v42 = 2080;
    v43 = v21;
    v44 = 2112;
    v45 = errorCopy;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@'] Completed Pairings write request for '%s' with error %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  if (errorCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105___HAPAccessoryServerBTLE100__handlePairingsWriteForCharacteristic_writeError_removing_queue_completion___block_invoke;
    block[3] = &unk_2786D65D8;
    v37 = completionCopy;
    v36 = errorCopy;
    v22 = completionCopy;
    dispatch_async(queueCopy, block);

    v23 = v37;
  }

  else
  {
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __105___HAPAccessoryServerBTLE100__handlePairingsWriteForCharacteristic_writeError_removing_queue_completion___block_invoke_2;
    v30 = &unk_2786D67E0;
    selfCopy = self;
    v34 = removingCopy;
    v32 = queueCopy;
    v33 = completionCopy;
    v24 = completionCopy;
    v25 = MEMORY[0x231885210](&v27);
    v26 = [(HAPAccessoryServer *)self clientQueue:v27];
    [(_HAPAccessoryServerBTLE100 *)self _readValueForCharacteristic:characteristicCopy completionQueue:v26 completionHandler:v25];

    v23 = v32;
  }
}

- (void)_addPairingWithIdentifier:(id)identifier publicKey:(id)key admin:(BOOL)admin queue:(id)queue completion:(id)completion
{
  adminCopy = admin;
  v54 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyCopy = key;
  queueCopy = queue;
  completionCopy = completion;
  v15 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:keyCopy];
  v16 = [[HAPPairingIdentity alloc] initWithIdentifier:identifierCopy publicKey:v15 privateKey:0 permissions:adminCopy];
  v47 = 0;
  v17 = [HAPPairingUtilities createAddPairingRequestForPairingIdentity:v16 error:&v47];
  v18 = v47;
  v19 = objc_autoreleasePoolPush();
  v20 = HMFGetOSLogHandle();
  v21 = v20;
  if (v17)
  {
    v37 = v18;
    v38 = keyCopy;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      name = [(HAPAccessoryServer *)self name];
      *buf = 138543874;
      v49 = v22;
      v50 = 2112;
      v51 = name;
      v52 = 2112;
      v53 = identifierCopy;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@] Received request to add pairing for controller with identifier %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    btleCharacteristicToHAPCharacteristicMap = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
    pairingsCharacteristic = [(_HAPAccessoryServerBTLE100 *)self pairingsCharacteristic];
    v26 = [btleCharacteristicToHAPCharacteristicMap objectForKey:pairingsCharacteristic];

    if (!v26)
    {
      v27 = [HAPCharacteristic alloc];
      stateNumber = [(HAPAccessoryServerBTLE *)self stateNumber];
      LOBYTE(v36) = 1;
      v26 = [(HAPCharacteristic *)v27 initWithType:@"00000050-0000-1000-8000-0026BB765291" instanceID:&unk_283EA98F0 value:0 stateNumber:stateNumber properties:6 eventNotificationsEnabled:0 implicitWriteWithResponse:v36 metadata:0];

      btleCharacteristicToHAPCharacteristicMap2 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
      pairingsCharacteristic2 = [(_HAPAccessoryServerBTLE100 *)self pairingsCharacteristic];
      [btleCharacteristicToHAPCharacteristicMap2 setObject:v26 forKey:pairingsCharacteristic2];
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __89___HAPAccessoryServerBTLE100__addPairingWithIdentifier_publicKey_admin_queue_completion___block_invoke_334;
    v41[3] = &unk_2786D67B8;
    v41[4] = self;
    v42 = queueCopy;
    v31 = completionCopy;
    v43 = completionCopy;
    v32 = MEMORY[0x231885210](v41);
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    [(_HAPAccessoryServerBTLE100 *)self _writeValue:v17 forCharacteristic:v26 authorizationData:0 withCompletionHandler:v32 queue:clientQueue];

    v18 = v37;
    keyCopy = v38;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v34 = v39 = keyCopy;
    name2 = [(HAPAccessoryServer *)self name];
    *buf = 138543874;
    v49 = v34;
    v50 = 2112;
    v51 = name2;
    v52 = 2112;
    v53 = v18;
    _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@[BTLE Accessory Server '%@] Failed to create add pairing request payload with error: %@", buf, 0x20u);

    keyCopy = v39;
  }

  objc_autoreleasePoolPop(v19);
  v31 = completionCopy;
  if (queueCopy && completionCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89___HAPAccessoryServerBTLE100__addPairingWithIdentifier_publicKey_admin_queue_completion___block_invoke;
    block[3] = &unk_2786D65D8;
    v45 = v18;
    v46 = completionCopy;
    dispatch_async(queueCopy, block);

    v26 = v45;
LABEL_12:
  }
}

- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75___HAPAccessoryServerBTLE100_addPairing_completionQueue_completionHandler___block_invoke;
  v15[3] = &unk_2786D66C8;
  v16 = pairingCopy;
  selfCopy = self;
  v18 = queueCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = pairingCopy;
  dispatch_async(clientQueue, v15);
}

- (void)identifyWithCompletion:(id)completion
{
  completionCopy = completion;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53___HAPAccessoryServerBTLE100_identifyWithCompletion___block_invoke;
  v7[3] = &unk_2786D65D8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(clientQueue, v7);
}

- (void)_handleConnectionLifetimeTimeout
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    identifier = [(HAPAccessoryServer *)self identifier];
    v7 = 138543618;
    v8 = v5;
    v9 = 2112;
    v10 = identifier;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Handling connection lifetime timeout", &v7, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(_HAPAccessoryServerBTLE100 *)self _cancelConnectionLifetimeTimer];
  [(_HAPAccessoryServerBTLE100 *)self _disconnect];
}

- (void)_disconnect
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    identifier = [(HAPAccessoryServer *)self identifier];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = identifier;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Canceling connection lifetime timeout and disconnecting from peripheral", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(_HAPAccessoryServerBTLE100 *)self setDisconnecting:1];
  browser = [(HAPAccessoryServerBTLE *)self browser];
  [browser disconnectFromBTLEAccessoryServer:self];
}

- (void)_cancelConnectionLifetimeTimer
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    identifier = [(HAPAccessoryServer *)self identifier];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = identifier;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] cancelling connection lifetime timer...", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  connectionLifetimeTimer = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];

  if (connectionLifetimeTimer)
  {
    connectionLifetimeTimer2 = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];
    dispatch_source_cancel(connectionLifetimeTimer2);

    [(_HAPAccessoryServerBTLE100 *)self setConnectionLifetimeTimer:0];
  }
}

- (void)_updateConnectionLifetimeTimer
{
  connectionLifetimeTimer = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];

  if (!connectionLifetimeTimer)
  {
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, clientQueue);
    [(_HAPAccessoryServerBTLE100 *)self setConnectionLifetimeTimer:v5];

    objc_initWeak(&location, self);
    connectionLifetimeTimer2 = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __60___HAPAccessoryServerBTLE100__updateConnectionLifetimeTimer__block_invoke;
    v15 = &unk_2786D6FC8;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(connectionLifetimeTimer2, &v12);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  if ([(_HAPAccessoryServerBTLE100 *)self state:v12]== 7)
  {
    v7 = 60000000000;
  }

  else
  {
    [(_HAPAccessoryServerBTLE100 *)self idleConnectionTimeoutInSec];
    v7 = 1000000000 * v8;
  }

  connectionLifetimeTimer3 = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];
  v10 = dispatch_time(0, v7);
  dispatch_source_set_timer(connectionLifetimeTimer3, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  if (!connectionLifetimeTimer)
  {
    connectionLifetimeTimer4 = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];
    dispatch_resume(connectionLifetimeTimer4);
  }
}

- (void)updateConnectionIdleTime:(unsigned __int8)time
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55___HAPAccessoryServerBTLE100_updateConnectionIdleTime___block_invoke;
  v6[3] = &unk_2786D6768;
  timeCopy = time;
  v6[4] = self;
  dispatch_async(clientQueue, v6);
}

- (int)_pairSetupTryPassword:(id)password
{
  passwordCopy = password;
  v5 = passwordCopy;
  if (self->_pairingSession)
  {
    [passwordCopy UTF8String];
    v6 = PairingSessionSetSetupCode();
    if (!v6)
    {
      v7 = PairingSessionExchange();
      v6 = v7;
      if (v7)
      {
        if (v7 == -6771)
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = -6718;
  }

  return v6;
}

- (int)_handlePairSetupExchangeWithData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543874;
    v25 = v7;
    v26 = 2112;
    v27 = objc_opt_class();
    v28 = 2080;
    v29 = "[_HAPAccessoryServerBTLE100 _handlePairSetupExchangeWithData:]";
    v8 = v27;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@%@ %s", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [dataCopy bytes];
  [dataCopy length];
  v9 = PairingSessionExchange();
  if (v9)
  {
    v10 = v9;
    if (v9 == -6771)
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v13;
      v26 = 1024;
      LODWORD(v27) = v10;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@### Pair-setup message failed: %d\n", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v11);
    pairingSession = self->_pairingSession;
    if (pairingSession)
    {
      CFRelease(pairingSession);
      self->_pairingSession = 0;
    }

    browser = [(HAPAccessoryServerBTLE *)self browser];
    [browser disconnectFromBTLEAccessoryServer:self];

    v16 = HMErrorFromOSStatus(v10);
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __63___HAPAccessoryServerBTLE100__handlePairSetupExchangeWithData___block_invoke_323;
      v19[3] = &unk_2786D7050;
      v19[4] = self;
      v20 = v16;
      dispatch_async(delegateQueue, v19);
    }

    [(_HAPAccessoryServerBTLE100 *)self setStartPairingRequested:0];
  }

  return v10;
}

- (int)_pairSetupStart
{
  v40 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  v29 = 0;
  if ([(HAPAccessoryServerBTLE *)self isPaired])
  {
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45___HAPAccessoryServerBTLE100__pairSetupStart__block_invoke;
      block[3] = &unk_2786D6CA0;
      block[4] = self;
      dispatch_async(delegateQueue, block);
    }

    [(_HAPAccessoryServerBTLE100 *)self setStartPairingRequested:0];
    v4 = 0;
    v5 = 0;
    goto LABEL_19;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543874;
    v33 = v8;
    v34 = 2112;
    v35 = objc_opt_class();
    v36 = 2080;
    v37 = "[_HAPAccessoryServerBTLE100 _pairSetupStart]";
    v9 = v35;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@%@ %s", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(_HAPAccessoryServerBTLE100 *)self _ensurePairingSessionIsInitializedWithType:1];
  if (v10)
  {
    v5 = v10;
    v4 = 0;
LABEL_12:
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v13;
      v34 = 1024;
      LODWORD(v35) = v5;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@### Pair-setup start failed: %d\n", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v11);
    pairingSession = self->_pairingSession;
    if (pairingSession)
    {
      CFRelease(pairingSession);
      self->_pairingSession = 0;
    }

    browser = [(HAPAccessoryServerBTLE *)self browser];
    [browser disconnectFromBTLEAccessoryServer:self];

    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
    {
      delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __45___HAPAccessoryServerBTLE100__pairSetupStart__block_invoke_322;
      v26[3] = &unk_2786D6740;
      v27 = v5;
      v26[4] = self;
      dispatch_async(delegateQueue2, v26);
    }

    [(_HAPAccessoryServerBTLE100 *)self setStartPairingRequested:0];
    goto LABEL_19;
  }

  v5 = PairingSessionExchange();
  if (v5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:v31 length:v30];
    _pairSetupHAPCharacteristic = [(_HAPAccessoryServerBTLE100 *)self _pairSetupHAPCharacteristic];
    [(_HAPAccessoryServerBTLE100 *)self _notifyDelegateOfSentPlaintextData:v4 forCharacteristic:_pairSetupHAPCharacteristic];

    [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
    peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
    pairSetupCharacteristic = [(_HAPAccessoryServerBTLE100 *)self pairSetupCharacteristic];
    [peripheral writeValue:v4 forCharacteristic:pairSetupCharacteristic type:0];

    v21 = objc_autoreleasePoolPush();
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = objc_opt_class();
      *buf = 138544130;
      v33 = v23;
      v34 = 2112;
      v35 = v24;
      v36 = 2080;
      v37 = "[_HAPAccessoryServerBTLE100 _pairSetupStart]";
      v38 = 2112;
      v39 = v4;
      v25 = v24;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@%@ %s: Writing initial pair setup data: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v21);
  }

  if (v5)
  {
    goto LABEL_12;
  }

LABEL_19:

  return v5;
}

- (int)_ensurePairingSessionIsInitializedWithType:(unsigned int)type
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_pairingSession)
  {
    return 0;
  }

  v5 = PairingSessionCreate();
  if (v5)
  {
    v3 = v5;
LABEL_9:
    pairingSession = self->_pairingSession;
    if (pairingSession)
    {
      CFRelease(pairingSession);
      self->_pairingSession = 0;
    }

    return v3;
  }

  PairingSessionSetFlags();
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    controllerUsername = [(_HAPAccessoryServerBTLE100 *)selfCopy controllerUsername];
    *buf = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = controllerUsername;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Setting Pairing session identifier to : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  controllerUsername2 = [(_HAPAccessoryServerBTLE100 *)selfCopy controllerUsername];
  [controllerUsername2 UTF8String];
  v3 = PairingSessionSetIdentifier();

  if (v3)
  {
    goto LABEL_9;
  }

  v3 = PairingSessionSetMTU();
  if (v3)
  {
    goto LABEL_9;
  }

  return v3;
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91___HAPAccessoryServerBTLE100_peripheral_didUpdateNotificationStateForCharacteristic_error___block_invoke;
  block[3] = &unk_2786D7078;
  v13 = characteristicCopy;
  selfCopy = self;
  v15 = errorCopy;
  v10 = errorCopy;
  v11 = characteristicCopy;
  dispatch_async(clientQueue, block);
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  v11 = objc_autoreleasePoolPush();
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543874;
    v21 = v13;
    v22 = 2080;
    v23 = "[_HAPAccessoryServerBTLE100 peripheral:didWriteValueForCharacteristic:error:]";
    v24 = 2112;
    v25 = characteristicCopy;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@%s: Received write confirmation for characteristic %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78___HAPAccessoryServerBTLE100_peripheral_didWriteValueForCharacteristic_error___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v18 = errorCopy;
  v19 = characteristicCopy;
  v15 = characteristicCopy;
  v16 = errorCopy;
  dispatch_async(clientQueue, block);
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79___HAPAccessoryServerBTLE100_peripheral_didUpdateValueForCharacteristic_error___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v13 = errorCopy;
  v14 = characteristicCopy;
  v10 = characteristicCopy;
  v11 = errorCopy;
  dispatch_async(clientQueue, block);
}

- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error
{
  descriptorCopy = descriptor;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___HAPAccessoryServerBTLE100_peripheral_didUpdateValueForDescriptor_error___block_invoke;
  block[3] = &unk_2786D7078;
  v13 = errorCopy;
  selfCopy = self;
  v15 = descriptorCopy;
  v10 = descriptorCopy;
  v11 = errorCopy;
  dispatch_async(clientQueue, block);
}

- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87___HAPAccessoryServerBTLE100_peripheral_didDiscoverDescriptorsForCharacteristic_error___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v13 = characteristicCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = characteristicCopy;
  dispatch_async(clientQueue, block);
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  serviceCopy = service;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84___HAPAccessoryServerBTLE100_peripheral_didDiscoverCharacteristicsForService_error___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v13 = serviceCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = serviceCopy;
  dispatch_async(clientQueue, block);
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  servicesCopy = services;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___HAPAccessoryServerBTLE100_peripheral_didModifyServices___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = servicesCopy;
  v7 = servicesCopy;
  dispatch_async(clientQueue, v8);
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  servicesCopy = services;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61___HAPAccessoryServerBTLE100_peripheral_didDiscoverServices___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = servicesCopy;
  v7 = servicesCopy;
  dispatch_async(clientQueue, v8);
}

- (id)_pairVerifyHAPCharacteristic
{
  v3 = [HAPCharacteristic alloc];
  stateNumber = [(HAPAccessoryServerBTLE *)self stateNumber];
  LOBYTE(v7) = 1;
  v5 = [(HAPCharacteristic *)v3 initWithType:@"0000004E-0000-1000-8000-0026BB765291" instanceID:&unk_283EA98D8 value:0 stateNumber:stateNumber properties:6 eventNotificationsEnabled:0 implicitWriteWithResponse:v7 metadata:0];

  return v5;
}

- (id)_pairSetupHAPCharacteristic
{
  v3 = [HAPCharacteristic alloc];
  stateNumber = [(HAPAccessoryServerBTLE *)self stateNumber];
  LOBYTE(v7) = 1;
  v5 = [(HAPCharacteristic *)v3 initWithType:@"0000004C-0000-1000-8000-0026BB765291" instanceID:&unk_283EA98C0 value:0 stateNumber:stateNumber properties:6 eventNotificationsEnabled:0 implicitWriteWithResponse:v7 metadata:0];

  return v5;
}

- (void)_notifyDelegateOfSentPlaintextData:(id)data forCharacteristic:(id)characteristic
{
  dataCopy = data;
  characteristicCopy = characteristic;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&unk_283ED0BF8])
  {
    v9 = [(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServerBTLE_willSendPlaintextPayload_forCharacteristic_];

    if (v9)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83___HAPAccessoryServerBTLE100__notifyDelegateOfSentPlaintextData_forCharacteristic___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v12 = dataCopy;
      v13 = characteristicCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfSentEncryptedAuthenticatedData:(id)data forCharacteristic:(id)characteristic
{
  dataCopy = data;
  characteristicCopy = characteristic;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&unk_283ED0BF8])
  {
    v9 = [(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServerBTLE_willSendEncryptedAndAuthenticatedPayload_forCharacteristic_];

    if (v9)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96___HAPAccessoryServerBTLE100__notifyDelegateOfSentEncryptedAuthenticatedData_forCharacteristic___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v12 = dataCopy;
      v13 = characteristicCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfReceivedPlaintextData:(id)data forCharacteristic:(id)characteristic
{
  dataCopy = data;
  characteristicCopy = characteristic;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&unk_283ED0BF8])
  {
    v9 = [(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServerBTLE_didReceivePlaintextPayload_forCharacteristic_];

    if (v9)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87___HAPAccessoryServerBTLE100__notifyDelegateOfReceivedPlaintextData_forCharacteristic___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v12 = dataCopy;
      v13 = characteristicCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

- (void)_notifyDelegateOfReceivedEncryptedAuthenticatedData:(id)data forCharacteristic:(id)characteristic
{
  dataCopy = data;
  characteristicCopy = characteristic;
  delegate = [(HAPAccessoryServer *)self delegate];
  if ([delegate conformsToProtocol:&unk_283ED0BF8])
  {
    delegate2 = [(HAPAccessoryServer *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100___HAPAccessoryServerBTLE100__notifyDelegateOfReceivedEncryptedAuthenticatedData_forCharacteristic___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v13 = dataCopy;
      v14 = characteristicCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

- (id)_hapCharacteristicForBTLECharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  btleCharacteristicToHAPCharacteristicMap = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
  v6 = [btleCharacteristicToHAPCharacteristicMap objectForKey:characteristicCopy];

  return v6;
}

- (id)_btleCharacteristicForHAPCharacteristic:(id)characteristic
{
  v22 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  btleCharacteristicToHAPCharacteristicMap = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
  keyEnumerator = [btleCharacteristicToHAPCharacteristicMap keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        btleCharacteristicToHAPCharacteristicMap2 = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
        v13 = [btleCharacteristicToHAPCharacteristicMap2 objectForKey:v11];
        v14 = [v13 isEqual:characteristicCopy];

        if (v14)
        {
          v15 = v11;
          goto LABEL_11;
        }
      }

      v8 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)_delegateRespondsToSelector:(SEL)selector
{
  delegate = [(HAPAccessoryServer *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    if (delegateQueue)
    {
      delegate2 = [(HAPAccessoryServer *)self delegate];
      v7 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)_nextInstanceID
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_HAPAccessoryServerBTLE100 availableInstanceID](self, "availableInstanceID")}];
  [(_HAPAccessoryServerBTLE100 *)self setAvailableInstanceID:[(_HAPAccessoryServerBTLE100 *)self availableInstanceID]+ 1];

  return v3;
}

- (BOOL)_parseBTLECharacteristicDescriptor:(id)descriptor existingDescriptors:(id)descriptors characteristics:(id)characteristics
{
  v135 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  descriptorsCopy = descriptors;
  characteristicsCopy = characteristics;
  btleCharacteristicToHAPCharacteristicMap = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
  v12 = [btleCharacteristicToHAPCharacteristicMap objectForKey:characteristicsCopy];

  metadata = [v12 metadata];

  if (!metadata)
  {
    v14 = objc_alloc_init(HAPCharacteristicMetadata);
    [v12 setMetadata:v14];
  }

  uUID = [descriptorCopy UUID];
  v16 = [MEMORY[0x277CBE0A0] UUIDWithString:@"DC46F0FE-81D2-4616-B5D9-6ABDD796939A"];
  if (![uUID isEqual:v16])
  {

LABEL_10:
    uUID2 = [descriptorCopy UUID];
    v25 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF80]];
    v26 = [uUID2 isEqual:v25];

    if (v26)
    {
      value = [descriptorCopy value];
      v122 = descriptorCopy;
      v123 = v12;
      v120 = characteristicsCopy;
      if ([value length] <= 6 || (objc_msgSend(value, "getBytes:length:", buf, 7), buf[1]))
      {

LABEL_14:
        v28 = objc_autoreleasePoolPush();
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543618;
          v130 = v30;
          v131 = 2112;
          v132 = value;
          _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@### Invalid BTLE Format Descriptor: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        v31 = 0;
        goto LABEL_17;
      }

      v98 = buf[0];
      v99 = *&buf[2];
      v100 = *(&v130 + 1);
      v101 = v130;

      if (v101 != 1 || v100)
      {
        goto LABEL_14;
      }

      v102 = objc_alloc_init(HAPCharacteristicMetadata);
      v103 = v102;
      if (v98 - 1) < 0x1Bu && ((0x50AAAA9u >> (v98 - 1)))
      {
        [(HAPCharacteristicMetadata *)v102 setFormat:*off_2786D68A0[(v98 - 1)]];
        if (v99 > 10032)
        {
          switch(v99)
          {
            case 0x2731:
              v104 = @"lux";
              goto LABEL_93;
            case 0x2763:
              v104 = @"arcdegrees";
              goto LABEL_93;
            case 0x27AD:
              v104 = @"percentage";
              goto LABEL_93;
          }
        }

        else
        {
          switch(v99)
          {
            case 0x2700:
              v104 = 0;
              goto LABEL_93;
            case 0x2703:
              v104 = @"seconds";
              goto LABEL_93;
            case 0x272F:
              v104 = @"celsius";
LABEL_93:
              [(HAPCharacteristicMetadata *)v103 setUnits:v104];
              v31 = v103;
              goto LABEL_94;
          }
        }

        v112 = objc_autoreleasePoolPush();
        v113 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          v114 = HMFGetLogIdentifier();
          *buf = 138543618;
          v130 = v114;
          v131 = 2048;
          v132 = v99;
          v115 = "%{public}@### Invalid BTLE Units Value: 0x%lu";
          goto LABEL_78;
        }
      }

      else
      {
        v112 = objc_autoreleasePoolPush();
        v113 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          v114 = HMFGetLogIdentifier();
          *buf = 138543618;
          v130 = v114;
          v131 = 2048;
          v132 = v98;
          v115 = "%{public}@### Invalid BTLE Format Value: %lu";
LABEL_78:
          _os_log_impl(&dword_22AADC000, v113, OS_LOG_TYPE_ERROR, v115, buf, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v112);
      v31 = 0;
LABEL_94:

      v12 = v123;
LABEL_17:

      format = [(HAPCharacteristicMetadata *)v31 format];
      metadata2 = [v12 metadata];
      [metadata2 setFormat:format];

      v119 = v31;
      units = [(HAPCharacteristicMetadata *)v31 units];
      metadata3 = [v12 metadata];
      [metadata3 setUnits:units];

      metadata4 = [v12 metadata];
      v121 = descriptorsCopy;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      obj = descriptorsCopy;
      v37 = [obj countByEnumeratingWithState:&v125 objects:buf count:16];
      v38 = 0x277CBE000uLL;
      if (!v37)
      {
        goto LABEL_38;
      }

      v39 = v37;
      v40 = *v126;
      v41 = *MEMORY[0x277CBDF90];
      while (1)
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v126 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v125 + 1) + 8 * i);
          uUID3 = [v43 UUID];
          v45 = [*(v38 + 160) UUIDWithString:@"6EB45C6C-A230-4F3A-886F-F8A8EEFC42E8"];
          if (![uUID3 isEqual:v45])
          {
            goto LABEL_25;
          }

          constraints = [metadata4 constraints];
          stepValue = [constraints stepValue];
          if (stepValue)
          {

            v38 = 0x277CBE000uLL;
LABEL_25:

            goto LABEL_26;
          }

          value2 = [v43 value];

          v38 = 0x277CBE000;
          if (value2)
          {
            format2 = [metadata4 format];
            value3 = [v43 value];
            v54 = _convertFromBTLEToHAPValue(format2, value3);
            constraints2 = [metadata4 constraints];
            [constraints2 setStepValue:v54];

            goto LABEL_32;
          }

LABEL_26:
          format2 = [v43 UUID];
          v49 = [*(v38 + 160) UUIDWithString:v41];
          if ([format2 isEqual:v49])
          {
            constraints3 = [metadata4 constraints];
            stepValue2 = [constraints3 stepValue];
            if (stepValue2)
            {

LABEL_32:
              v38 = 0x277CBE000;
              goto LABEL_35;
            }

            value4 = [v43 value];

            v38 = 0x277CBE000;
            if (!value4)
            {
              continue;
            }

            format2 = [v43 value];
            _updateHAPConstraintsFromBTLEValidRange(metadata4, format2);
          }

          else
          {
          }

LABEL_35:
        }

        v39 = [obj countByEnumeratingWithState:&v125 objects:buf count:16];
        if (!v39)
        {
LABEL_38:

          descriptorsCopy = v121;
          descriptorCopy = v122;
          characteristicsCopy = v120;
          v12 = v123;
          goto LABEL_55;
        }
      }
    }

    uUID4 = [descriptorCopy UUID];
    v58 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF88]];
    v59 = [uUID4 isEqual:v58];

    if (v59)
    {
      value5 = [descriptorCopy value];
      if ([value5 containsString:@";"])
      {
        v61 = [value5 componentsSeparatedByString:@""];;
        value6 = [v61 mutableCopy];

        if ([(_HAPAccessoryServerBTLE100 *)self hapBLEProtocolVersion]!= 1)
        {
          v63 = MEMORY[0x277CCABB0];
          v64 = [value6 objectAtIndexedSubscript:0];
          v65 = [v63 numberWithUnsignedInteger:{objc_msgSend(v64, "integerValue")}];
          [v12 setInstanceID:v65];
        }

        [value6 removeObjectAtIndex:0];
        metadata6 = [value6 componentsJoinedByString:@""];;
        metadata5 = [v12 metadata];
        [metadata5 setManufacturerDescription:metadata6];
      }

      else
      {
        value6 = [descriptorCopy value];
        metadata6 = [v12 metadata];
        [metadata6 setManufacturerDescription:value6];
      }
    }

    else
    {
      uUID5 = [descriptorCopy UUID];
      v69 = [MEMORY[0x277CBE0A0] UUIDWithString:@"6EB45C6C-A230-4F3A-886F-F8A8EEFC42E8"];
      v70 = [uUID5 isEqual:v69];

      if (v70)
      {
        metadata7 = [v12 metadata];
        format3 = [metadata7 format];

        if (!format3)
        {
LABEL_55:
          v86 = objc_autoreleasePoolPush();
          v87 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
          {
            v88 = HMFGetLogIdentifier();
            metadata8 = [v12 metadata];
            *buf = 138543874;
            v130 = v88;
            v131 = 2112;
            v132 = metadata8;
            v133 = 2112;
            v134 = descriptorCopy;
            _os_log_impl(&dword_22AADC000, v87, OS_LOG_TYPE_INFO, "%{public}@HAP Metadata :%@ from BTLEDescriptor: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v86);
          v85 = 1;
          goto LABEL_58;
        }

        metadata9 = [v12 metadata];
        constraints4 = [metadata9 constraints];

        if (!constraints4)
        {
          v75 = objc_alloc_init(HAPMetadataConstraints);
          metadata10 = [v12 metadata];
          [metadata10 setConstraints:v75];
        }

        value5 = [v12 metadata];
        format4 = [value5 format];
        value7 = [descriptorCopy value];
        v79 = _convertFromBTLEToHAPValue(format4, value7);
        metadata11 = [v12 metadata];
        constraints5 = [metadata11 constraints];
        [constraints5 setStepValue:v79];
      }

      else
      {
        uUID6 = [descriptorCopy UUID];
        v92 = [MEMORY[0x277CBE0A0] UUIDWithString:*MEMORY[0x277CBDF90]];
        v93 = [uUID6 isEqual:v92];

        if (v93)
        {
          metadata12 = [v12 metadata];
          format5 = [metadata12 format];

          if (format5)
          {
            metadata13 = [v12 metadata];
            value8 = [descriptorCopy value];
            _updateHAPConstraintsFromBTLEValidRange(metadata13, value8);
          }

          goto LABEL_55;
        }

        uUID7 = [descriptorCopy UUID];
        v106 = [MEMORY[0x277CBE0A0] UUIDWithString:@"C5FC363E-D2BF-43E5-928C-AB7D3628470E"];
        v107 = [uUID7 isEqual:v106];

        if (!v107)
        {
          v116 = objc_autoreleasePoolPush();
          v117 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            v118 = HMFGetLogIdentifier();
            *buf = 138543618;
            v130 = v118;
            v131 = 2112;
            v132 = descriptorCopy;
            _os_log_impl(&dword_22AADC000, v117, OS_LOG_TYPE_ERROR, "%{public}@Unknown BTLE Descriptor: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v116);
          goto LABEL_55;
        }

        value9 = [descriptorCopy value];
        value5 = _convertFromBTLEToHAPValue(@"uint16", value9);

        if (([value5 shortValue] & 4) != 0)
        {
          [v12 setProperties:{objc_msgSend(v12, "properties") | 0x10}];
          v109 = objc_autoreleasePoolPush();
          v110 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
          {
            v111 = HMFGetLogIdentifier();
            *buf = 138543618;
            v130 = v111;
            v131 = 2112;
            v132 = characteristicsCopy;
            _os_log_impl(&dword_22AADC000, v110, OS_LOG_TYPE_DEFAULT, "%{public}@ ### Characteristic with AAD: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v109);
        }
      }
    }

    goto LABEL_55;
  }

  hapBLEProtocolVersion = [(_HAPAccessoryServerBTLE100 *)self hapBLEProtocolVersion];

  if (hapBLEProtocolVersion == 1)
  {
    goto LABEL_10;
  }

  value10 = [descriptorCopy value];
  LOWORD(v125) = 0;
  if ([value10 length] == 2)
  {
    [value10 getBytes:&v125 length:2];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v125];
    [v12 setInstanceID:v19];

    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v125];
      *buf = 138543618;
      v130 = v22;
      v131 = 2112;
      v132 = v23;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@HAP Metadata : Found Characteristics with Instance ID = %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_55;
  }

  v82 = objc_autoreleasePoolPush();
  v83 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
  {
    v84 = HMFGetLogIdentifier();
    *buf = 138543618;
    v130 = v84;
    v131 = 2112;
    v132 = value10;
    _os_log_impl(&dword_22AADC000, v83, OS_LOG_TYPE_ERROR, "%{public}@HAP Metadata : ### Invalid Characteristic Instance ID bytes %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v82);
  v85 = 0;
LABEL_58:

  return v85;
}

- (id)_parseBTLEService:(id)service withInstanceId:(id)id
{
  v64 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  idCopy = id;
  uUID = [serviceCopy UUID];
  uUIDString = [uUID UUIDString];
  v10 = [_HAPAccessoryServerBTLE100 _convertFromBTLEToHAPUUID:uUIDString];

  if (v10)
  {
    selfCopy = self;
    if ([(_HAPAccessoryServerBTLE100 *)self hapBLEProtocolVersion]== 1)
    {
      _nextInstanceID = [(_HAPAccessoryServerBTLE100 *)self _nextInstanceID];

      idCopy = _nextInstanceID;
    }

    v53 = [[HAPService alloc] initWithType:v10 instanceID:idCopy];
    if (v53)
    {
      v47 = v10;
      v48 = idCopy;
      v18 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000051-0000-1000-8000-0026BB765291"];
      array = [MEMORY[0x277CBEB18] array];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v49 = serviceCopy;
      obj = [serviceCopy characteristics];
      v19 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = selfCopy;
        v22 = *v56;
        v50 = v18;
        while (2)
        {
          v23 = 0;
          v51 = v20;
          do
          {
            if (*v56 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v55 + 1) + 8 * v23);
            uUID2 = [v24 UUID];
            v26 = [uUID2 isEqual:v18];

            if ((v26 & 1) == 0)
            {
              properties = [v24 properties];
              v28 = (properties >> 1) & 4 | properties & 2 | (properties >> 5) & 1;
              v29 = [[HAPCharacteristicMetadata alloc] initWithConstraints:0 description:0 format:@"data" units:0];
              uUID3 = [v24 UUID];
              uUIDString2 = [uUID3 UUIDString];

              v32 = [HAPCharacteristic alloc];
              _nextInstanceID2 = [(_HAPAccessoryServerBTLE100 *)v21 _nextInstanceID];
              stateNumber = [(HAPAccessoryServerBTLE *)v21 stateNumber];
              LOBYTE(v46) = 1;
              v35 = [(HAPCharacteristic *)v32 initWithType:uUIDString2 instanceID:_nextInstanceID2 value:0 stateNumber:stateNumber properties:v28 eventNotificationsEnabled:0 implicitWriteWithResponse:v46 metadata:v29];

              if (!v35)
              {
                v42 = objc_autoreleasePoolPush();
                v43 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  v44 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v61 = v44;
                  _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_ERROR, "%{public}@### Creating HAPCharacteristic for BTLE failed init.", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v42);
                v17 = 0;
                idCopy = v48;
                serviceCopy = v49;
                v10 = v47;
                v18 = v50;
                v38 = array;
                goto LABEL_25;
              }

              distantPast = [MEMORY[0x277CBEAA8] distantPast];
              [(HAPCharacteristic *)v35 setValueUpdatedTime:distantPast];

              [(HAPCharacteristic *)v35 setService:v53];
              [array addObject:v35];
              btleCharacteristicToHAPCharacteristicMap = [(_HAPAccessoryServerBTLE100 *)v21 btleCharacteristicToHAPCharacteristicMap];
              [btleCharacteristicToHAPCharacteristicMap setObject:v35 forKey:v24];

              v18 = v50;
              v20 = v51;
            }

            ++v23;
          }

          while (v20 != v23);
          v20 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v38 = array;
      [(HAPService *)v53 setCharacteristics:array];
      v17 = v53;
      idCopy = v48;
      serviceCopy = v49;
      v10 = v47;
LABEL_25:
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v61 = v41;
        _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, "%{public}@### Creating HAPService for BTLE failed init.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v39);
      v17 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      uUID4 = [serviceCopy UUID];
      *buf = 138543618;
      v61 = v15;
      v62 = 2112;
      v63 = uUID4;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@### [HAP Accessory Server BTLE] Failed converting from BTLE UUID to internal: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = 0;
  }

  return v17;
}

- (void)_handleHAPServiceDiscoveryCompletionForService:(id)service withInstanceId:(id)id
{
  v26 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  idCopy = id;
  v8 = [(_HAPAccessoryServerBTLE100 *)self _parseBTLEService:serviceCopy withInstanceId:idCopy];
  if (v8)
  {
    btleServiceToHAPServiceMap = [(_HAPAccessoryServerBTLE100 *)self btleServiceToHAPServiceMap];
    [btleServiceToHAPServiceMap setObject:v8 forKey:serviceCopy];

    primaryAccessory = [(HAPAccessoryServer *)self primaryAccessory];
    [v8 setAccessory:primaryAccessory];

    v11 = MEMORY[0x277CBEB18];
    primaryAccessory2 = [(HAPAccessoryServer *)self primaryAccessory];
    services = [primaryAccessory2 services];
    v14 = [v11 arrayWithArray:services];

    [v14 addObject:v8];
    primaryAccessory3 = [(HAPAccessoryServer *)self primaryAccessory];
    [primaryAccessory3 setServices:v14];

    [(_HAPAccessoryServerBTLE100 *)self setCharacteristicValueReadCount:[(_HAPAccessoryServerBTLE100 *)self characteristicValueReadCount]- 1];
    if (![(_HAPAccessoryServerBTLE100 *)self characteristicDiscoveryRequestCount]&& ![(_HAPAccessoryServerBTLE100 *)self characteristicValueReadCount])
    {
      [(_HAPAccessoryServerBTLE100 *)self _handlePairingStateMachine];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v18;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@### Unable to parse BTLE service", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v19 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:66];
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __92___HAPAccessoryServerBTLE100__handleHAPServiceDiscoveryCompletionForService_withInstanceId___block_invoke;
    v22[3] = &unk_2786D7050;
    v22[4] = self;
    v23 = v19;
    v21 = v19;
    dispatch_async(delegateQueue, v22);
  }
}

- (void)_handleHAPCharacteristicDiscoveryForService:(id)service error:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  errorCopy = error;
  v7 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000051-0000-1000-8000-0026BB765291"];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  characteristics = [serviceCopy characteristics];
  v9 = [characteristics countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(characteristics);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        uUID = [v13 UUID];
        v15 = [uUID isEqual:v7];

        if (v15)
        {
          [(_HAPAccessoryServerBTLE100 *)self setCharacteristicValueReadCount:[(_HAPAccessoryServerBTLE100 *)self characteristicValueReadCount]+ 1];
          peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
          [peripheral readValueForCharacteristic:v13];

          goto LABEL_13;
        }
      }

      v10 = [characteristics countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    identifier = [(HAPAccessoryServer *)self identifier];
    name = [(HAPAccessoryServer *)self name];
    uUID2 = [serviceCopy UUID];
    *buf = 138544130;
    v29 = v18;
    v30 = 2112;
    v31 = identifier;
    v32 = 2112;
    v33 = name;
    v34 = 2112;
    v35 = uUID2;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@ '%@'] Service with UUID %@ does not have the HAP Service Instance ID characteristic, skipping HAPService creation", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
LABEL_13:
  [(_HAPAccessoryServerBTLE100 *)self setCharacteristicDiscoveryRequestCount:[(_HAPAccessoryServerBTLE100 *)self characteristicDiscoveryRequestCount]- 1];
}

- (void)_handleReadDescriptorValues
{
  v35 = *MEMORY[0x277D85DE8];
  [(_HAPAccessoryServerBTLE100 *)self setMetadataValueReadCount:0];
  if ([(_HAPAccessoryServerBTLE100 *)self hapBLEProtocolVersion]== 1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v5;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Skipping descriptor reads", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    btleCharacteristicToHAPCharacteristicMap = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
    keyEnumerator = [btleCharacteristicToHAPCharacteristicMap keyEnumerator];

    obj = keyEnumerator;
    v8 = [keyEnumerator countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        v11 = 0;
        do
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v27 + 1) + 8 * v11);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          descriptors = [v12 descriptors];
          v14 = [descriptors countByEnumeratingWithState:&v23 objects:v33 count:16];
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
                  objc_enumerationMutation(descriptors);
                }

                v18 = *(*(&v23 + 1) + 8 * v17);
                [(_HAPAccessoryServerBTLE100 *)self setMetadataValueReadCount:[(_HAPAccessoryServerBTLE100 *)self metadataValueReadCount]+ 1];
                [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
                peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
                [peripheral readValueForDescriptor:v18];

                ++v17;
              }

              while (v15 != v17);
              v15 = [descriptors countByEnumeratingWithState:&v23 objects:v33 count:16];
            }

            while (v15);
          }

          ++v11;
        }

        while (v11 != v9);
        v9 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v9);
    }
  }

  if (![(_HAPAccessoryServerBTLE100 *)self metadataValueReadCount])
  {
    [(_HAPAccessoryServerBTLE100 *)self _handlePairingStateMachine];
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didDiscoverAccessories_transaction_error_])
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57___HAPAccessoryServerBTLE100__handleReadDescriptorValues__block_invoke;
      block[3] = &unk_2786D6CA0;
      block[4] = self;
      dispatch_async(delegateQueue, block);
    }
  }
}

- (void)_handleDescriptorDiscovery
{
  v28 = *MEMORY[0x277D85DE8];
  [(_HAPAccessoryServerBTLE100 *)self setMetadataDiscoveryRequestCount:0];
  if ([(_HAPAccessoryServerBTLE100 *)self hapBLEProtocolVersion]== 1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v5;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Skipping descriptor discovery", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    btleCharacteristicToHAPCharacteristicMap = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
    keyEnumerator = [btleCharacteristicToHAPCharacteristicMap keyEnumerator];

    v8 = [keyEnumerator countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v20;
      *&v9 = 138543618;
      v18 = v9;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            *buf = v18;
            v24 = v16;
            v25 = 2112;
            v26 = v13;
            _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Discovering metadata for BTLE Char: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v14);
          [(_HAPAccessoryServerBTLE100 *)self setMetadataDiscoveryRequestCount:[(_HAPAccessoryServerBTLE100 *)self metadataDiscoveryRequestCount]+ 1];
          [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
          peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
          [peripheral discoverDescriptorsForCharacteristic:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [keyEnumerator countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v10);
    }
  }

  if (![(_HAPAccessoryServerBTLE100 *)self metadataDiscoveryRequestCount])
  {
    [(_HAPAccessoryServerBTLE100 *)self _handlePairingStateMachine];
  }
}

- (void)_handleHAPServiceDiscovery
{
  v38 = *MEMORY[0x277D85DE8];
  [(_HAPAccessoryServerBTLE100 *)self setCharacteristicDiscoveryRequestCount:0];
  [(_HAPAccessoryServerBTLE100 *)self setCharacteristicValueReadCount:0];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  services = [peripheral services];

  obj = services;
  v5 = [services countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    v8 = *MEMORY[0x277CBDFA0];
    v26 = *MEMORY[0x277CBDF68];
    v27 = *MEMORY[0x277CBDF70];
    v23 = *MEMORY[0x277CBDF58];
    v9 = 0x277CBE000uLL;
    v28 = *MEMORY[0x277CBDFA0];
    v29 = *v34;
    do
    {
      v10 = 0;
      v30 = v6;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        pairingService = [(_HAPAccessoryServerBTLE100 *)selfCopy pairingService];
        if (([v11 isEqual:pairingService] & 1) == 0)
        {
          v13 = v11;
          uUID = [v13 UUID];
          v15 = [*(v9 + 160) UUIDWithString:v8];
          if ([uUID isEqual:v15])
          {
            goto LABEL_12;
          }

          uUID2 = [v13 UUID];
          v17 = [*(v9 + 160) UUIDWithString:v27];
          if ([uUID2 isEqual:v17])
          {
            goto LABEL_11;
          }

          uUID3 = [v13 UUID];
          v19 = [*(v9 + 160) UUIDWithString:v26];
          if ([uUID3 isEqual:v19])
          {

LABEL_11:
            v8 = v28;
            v7 = v29;
LABEL_12:

LABEL_13:
          }

          else
          {
            [v13 UUID];
            v20 = v24 = uUID3;
            v21 = [*(v9 + 160) UUIDWithString:v23];
            v25 = [v20 isEqual:v21];

            v8 = v28;
            v7 = v29;
            v9 = 0x277CBE000;
            if (v25)
            {
              goto LABEL_13;
            }

            [(_HAPAccessoryServerBTLE100 *)selfCopy setCharacteristicDiscoveryRequestCount:[(_HAPAccessoryServerBTLE100 *)selfCopy characteristicDiscoveryRequestCount]+ 1];
            [(_HAPAccessoryServerBTLE100 *)selfCopy _updateConnectionLifetimeTimer];
            pairingService = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
            [pairingService discoverCharacteristics:0 forService:v13];
          }

          v6 = v30;
        }

        ++v10;
      }

      while (v6 != v10);
      v22 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      v6 = v22;
    }

    while (v22);
  }
}

- (void)_getAttributeDatabase
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543874;
    v15 = v5;
    v16 = 2112;
    v17 = objc_opt_class();
    v18 = 2080;
    v19 = "[_HAPAccessoryServerBTLE100 _getAttributeDatabase]";
    v6 = v17;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@%@ %s: Getting HAP attribute database from accessory", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  if ([(_HAPAccessoryServerBTLE100 *)self state]== 12)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      identifier = [(HAPAccessoryServer *)self identifier];
      *buf = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = identifier;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Ignoring request to discover accessories because the session is already established, calling delegate immediately", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didDiscoverAccessories_transaction_error_])
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51___HAPAccessoryServerBTLE100__getAttributeDatabase__block_invoke;
      block[3] = &unk_2786D6CA0;
      block[4] = self;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
    [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
    peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
    [peripheral discoverServices:0];
  }
}

- (void)discoverAccessories
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___HAPAccessoryServerBTLE100_discoverAccessories__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)securitySession:(id)session didCloseWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64___HAPAccessoryServerBTLE100_securitySession_didCloseWithError___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (void)securitySessionDidOpen:(id)open
{
  openCopy = open;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53___HAPAccessoryServerBTLE100_securitySessionDidOpen___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = openCopy;
  selfCopy = self;
  v6 = openCopy;
  dispatch_async(clientQueue, v7);
}

- (void)securitySessionIsOpening:(id)opening
{
  openingCopy = opening;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55___HAPAccessoryServerBTLE100_securitySessionIsOpening___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = openingCopy;
  selfCopy = self;
  v6 = openingCopy;
  dispatch_async(clientQueue, v7);
}

- (void)securitySession:(id)session didReceiveSetupExchangeData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___HAPAccessoryServerBTLE100_securitySession_didReceiveSetupExchangeData___block_invoke;
  block[3] = &unk_2786D7078;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = dataCopy;
  v9 = dataCopy;
  v10 = sessionCopy;
  dispatch_async(clientQueue, block);
}

- (id)securitySession:(id)session didReceiveRequestForPeerPairingIdentityWithIdentifier:(id)identifier error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  identifierCopy = identifier;
  identifier = [(HAPAccessoryServer *)self identifier];
  v11 = [identifier isEqualToString:identifierCopy];

  if (v11)
  {
    keyStore = [(HAPAccessoryServer *)self keyStore];
    v31 = 0;
    v13 = [keyStore readPublicKeyForAccessoryName:identifierCopy registeredWithHomeKit:0 error:&v31];
    v14 = v31;

    if (v13)
    {
      v15 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v13];
      v16 = [[HAPPairingIdentity alloc] initWithIdentifier:identifierCopy publicKey:v15 privateKey:0 permissions:0];
      if (!v16)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v19 = v30 = v17;
          identifier2 = [(HAPAccessoryServer *)self identifier];
          *buf = 138544130;
          v33 = v19;
          v34 = 2112;
          v35 = identifier2;
          v36 = 2112;
          v37 = identifierCopy;
          v38 = 2112;
          v39 = v13;
          _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Failed to create pairing identity with identifier, %@, public key, %@", buf, 0x2Au);

          v17 = v30;
        }

        objc_autoreleasePoolPop(v17);
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Failed to retrieve peer pairing identity." reason:@"Failed to create pairing identity" suggestion:0 underlyingError:0];
        }
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        identifier3 = [(HAPAccessoryServer *)self identifier];
        *buf = 138544130;
        v33 = v27;
        v34 = 2112;
        v35 = identifier3;
        v36 = 2112;
        v37 = identifierCopy;
        v38 = 2112;
        v39 = v14;
        _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@[BTLE Accessory Server %@] Failed to retrieved public key for accessory with identifier '%@' with error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v25);
      v16 = 0;
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      identifier4 = [(HAPAccessoryServer *)self identifier];
      *buf = 138543874;
      v33 = v23;
      v34 = 2112;
      v35 = identifier4;
      v36 = 2112;
      v37 = identifierCopy;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@[BTLE Accessory Server %@] Unexpected pairing peer identifier, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:16 description:@"Insufficient Authorization." reason:@"Unexpected pairing peer identifier." suggestion:0 underlyingError:0];
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)securitySession:(id)session didReceiveLocalPairingIdentityRequestWithError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [(HAPAccessoryServer *)self identifier];
    v16 = 138543618;
    v17 = v9;
    v18 = 2112;
    v19 = identifier;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@] Request for local pairing identity", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled != 1 || (-[HAPAccessoryServer keyBag](self, "keyBag"), v11 = objc_claimAutoreleasedReturnValue(), [v11 currentIdentity], v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    keyStore = [(HAPAccessoryServer *)self keyStore];
    identifier2 = [(HAPAccessoryServer *)self identifier];
    v12 = [keyStore readControllerPairingKeyForAccessory:identifier2 error:error];
  }

  return v12;
}

- (id)_decryptData:(id)data error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v9;
    v16 = 2080;
    v17 = "[_HAPAccessoryServerBTLE100 _decryptData:error:]";
    v18 = 2048;
    v19 = [dataCopy length];
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@%s: Decrypting data with length %lu", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  securitySession = [(_HAPAccessoryServerBTLE100 *)self securitySession];

  if (securitySession)
  {
    securitySession2 = [(_HAPAccessoryServerBTLE100 *)self securitySession];
    v12 = [securitySession2 decryptData:dataCopy additionalAuthenticatedData:0 error:error];
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6718 userInfo:0];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_encryptDataAndGenerateAuthTag:(id)tag error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v9;
    v16 = 2080;
    v17 = "[_HAPAccessoryServerBTLE100 _encryptDataAndGenerateAuthTag:error:]";
    v18 = 2112;
    v19 = tagCopy;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@%s: Encrypting plaintext data: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  securitySession = [(_HAPAccessoryServerBTLE100 *)self securitySession];

  if (securitySession)
  {
    securitySession2 = [(_HAPAccessoryServerBTLE100 *)self securitySession];
    v12 = [securitySession2 encryptData:tagCopy additionalAuthenticatedData:0 error:error];
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6718 userInfo:0];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_handleReceivedSecuritySessionSetupExchangeData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  securitySession = [(_HAPAccessoryServerBTLE100 *)self securitySession];
  if (securitySession && (v6 = securitySession, v7 = [(HAPAccessoryServer *)self isSecuritySessionOpen], v6, !v7))
  {
    securitySession2 = [(_HAPAccessoryServerBTLE100 *)self securitySession];
    [securitySession2 receivedSetupExchangeData:dataCopy error:0];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      identifier = [(HAPAccessoryServer *)self identifier];
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = identifier;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Unexpected security session setup exchange data, dropping.", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)_reallyEstablishSecureSession
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(HAPAccessoryServerBTLE *)self isPaired])
  {
    if ([(HAPAccessoryServer *)self isSecuritySessionOpen])
    {
      v3 = objc_autoreleasePoolPush();
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = HMFGetLogIdentifier();
        identifier = [(HAPAccessoryServer *)self identifier];
        v12 = 138543618;
        v13 = v5;
        v14 = 2112;
        v15 = identifier;
        _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] A security session is already established.", &v12, 0x16u);
      }

      objc_autoreleasePoolPop(v3);
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      identifier2 = [(HAPAccessoryServer *)self identifier];
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = identifier2;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@[BTLE Accessory Server %@] Unable to establish a secure session because the accessory isn't paired.", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [MEMORY[0x277CCA9B8] errorWithHMErrorCode:18];
  }

  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled == 1)
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
  }

  v11 = [[HAPSecuritySession alloc] initWithRole:0 resumeSessionID:0 delegate:self];
  [(_HAPAccessoryServerBTLE100 *)self setSecuritySession:v11];
  [(HAPSecuritySession *)v11 open];
}

- (void)_handleUpdatedValueForBTLECharacteristic:(id)characteristic error:(id)error
{
  v77 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [characteristicCopy UUID];
    value = [characteristicCopy value];
    *buf = 138544130;
    v70 = v10;
    v71 = 2112;
    v72 = uUID;
    v73 = 2112;
    v74 = value;
    v75 = 2112;
    v76 = errorCopy;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Updated value for BTLE characteristic: %@ Value: %@ error: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v13 = errorCopy;
  v14 = v13;
  if (v13)
  {
    v15 = 0;
    v16 = v13;
    goto LABEL_5;
  }

  v15 = [(_HAPAccessoryServerBTLE100 *)self _hapCharacteristicForBTLECharacteristic:characteristicCopy];
  if (!v15)
  {
    v54 = objc_autoreleasePoolPush();
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = HMFGetLogIdentifier();
      *buf = 138543618;
      v70 = v56;
      v71 = 2112;
      v72 = characteristicCopy;
      _os_log_impl(&dword_22AADC000, v55, OS_LOG_TYPE_ERROR, "%{public}@### Unable to find HAP characteristic for BTLE characteristic %@ after receiving read response", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v54);
    v57 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:27];
    if (v57)
    {
      v16 = v57;
      v15 = 0;
      goto LABEL_5;
    }
  }

  value2 = [characteristicCopy value];
  v30 = [value2 length];

  if (!v30)
  {
    v22 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  _shouldEnableSessionSecurity = [(_HAPAccessoryServerBTLE100 *)self _shouldEnableSessionSecurity];
  value3 = [characteristicCopy value];
  if (_shouldEnableSessionSecurity)
  {
    [(_HAPAccessoryServerBTLE100 *)self _notifyDelegateOfReceivedEncryptedAuthenticatedData:value3 forCharacteristic:v15];

    value4 = [characteristicCopy value];
    v68 = 0;
    value3 = [(_HAPAccessoryServerBTLE100 *)self _decryptData:value4 error:&v68];
    v34 = v68;

    if (v34)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543874;
        v70 = v37;
        v71 = 2112;
        v72 = characteristicCopy;
        v73 = 2112;
        v74 = v34;
        _os_log_impl(&dword_22AADC000, v36, OS_LOG_TYPE_ERROR, "%{public}@### Decrypting data for characteristic %@ received after a read request failed with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v35);
      v38 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:55];
      goto LABEL_39;
    }
  }

  else
  {
    v34 = 0;
  }

  v38 = 0;
LABEL_39:
  [(_HAPAccessoryServerBTLE100 *)self _notifyDelegateOfReceivedPlaintextData:value3 forCharacteristic:v15];
  metadata = [v15 metadata];
  format = [metadata format];
  v60 = HAPCharacteristicFormatFromString(format);

  v67 = v38;
  v61 = +[_HAPAccessoryServerBTLE100 deserializeCharacteristicReadData:characteristicFormat:supportsAdditionalAuthentication:error:](_HAPAccessoryServerBTLE100, "deserializeCharacteristicReadData:characteristicFormat:supportsAdditionalAuthentication:error:", value3, v60, [v15 supportsAdditionalAuthorizationData], &v67);
  v16 = v67;

  if (!v16)
  {
    [v15 setValue:v61];

    v22 = 0;
    goto LABEL_8;
  }

LABEL_5:
  v17 = objc_autoreleasePoolPush();
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    identifier = [(HAPAccessoryServer *)self identifier];
    name = [(HAPAccessoryServer *)self name];
    *buf = 138544130;
    v70 = v19;
    v71 = 2112;
    v72 = identifier;
    v73 = 2112;
    v74 = name;
    v75 = 2112;
    v76 = v16;
    _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@### [BTLE Accessory Server '%@' '%@'] Failed to process updated characteristic value with error: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  v22 = 1;
LABEL_8:
  v23 = [(_HAPAccessoryServerBTLE100 *)self _dequeueReadCompletionTupleForCharacteristic:v15];
  v24 = v23;
  if (v23)
  {
    completionQueue = [v23 completionQueue];
    if (completionQueue)
    {
      v26 = completionQueue;
      handler = [v24 handler];

      if (handler)
      {
        completionQueue2 = [v24 completionQueue];
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __77___HAPAccessoryServerBTLE100__handleUpdatedValueForBTLECharacteristic_error___block_invoke_188;
        v62[3] = &unk_2786D7078;
        v63 = v24;
        v64 = v15;
        v65 = v16;
        dispatch_async(completionQueue2, v62);
      }
    }
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v70 = v41;
      v71 = 2112;
      v72 = v15;
      _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_INFO, "%{public}@Received notification for HAPCharacteristic %@, Reading Value", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    browser = [(HAPAccessoryServerBTLE *)self browser];
    identifier2 = [(HAPAccessoryServer *)self identifier];
    [browser markNotifyingCharacteristicUpdatedForIdentifier:identifier2];

    value5 = [characteristicCopy value];
    if ([value5 length])
    {
      v45 = 1;
    }

    else
    {
      v45 = v22;
    }

    if (v45)
    {
    }

    else
    {
      eventNotificationsEnabled = [v15 eventNotificationsEnabled];

      if (eventNotificationsEnabled)
      {
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __77___HAPAccessoryServerBTLE100__handleUpdatedValueForBTLECharacteristic_error___block_invoke;
        v66[3] = &unk_2786D66F0;
        v66[4] = self;
        v47 = MEMORY[0x231885210](v66);
        [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
        clientQueue = [(HAPAccessoryServer *)self clientQueue];
        [(_HAPAccessoryServerBTLE100 *)self readValueForCharacteristic:v15 queue:clientQueue completionHandler:v47];

        goto LABEL_31;
      }
    }

    v49 = objc_autoreleasePoolPush();
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      identifier3 = [(HAPAccessoryServer *)self identifier];
      name2 = [(HAPAccessoryServer *)self name];
      *buf = 138544130;
      v70 = v51;
      v71 = 2112;
      v72 = identifier3;
      v73 = 2112;
      v74 = name2;
      v75 = 2112;
      v76 = v16;
      _os_log_impl(&dword_22AADC000, v50, OS_LOG_TYPE_ERROR, "%{public}@### [BTLE Accessory Server '%@' '%@'] Failed to process updated characteristic value with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v49);
  }

LABEL_31:
}

- (void)_readValueForCharacteristic:(id)characteristic completionQueue:(id)queue completionHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = [(_HAPAccessoryServerBTLE100 *)self _btleCharacteristicForHAPCharacteristic:characteristicCopy];
  if (v11)
  {
    if (([characteristicCopy properties] & 2) != 0)
    {
      if (![(_HAPAccessoryServerBTLE100 *)self isDisconnecting])
      {
        [(_HAPAccessoryServerBTLE100 *)self _enqueueReadCompletionHandler:handlerCopy queue:queueCopy forCharacteristic:characteristicCopy];
        [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
        peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
        [peripheral readValueForCharacteristic:v11];
        goto LABEL_20;
      }

      v27 = MEMORY[0x277CCA9B8];
      characteristicCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read the value of characteristic %@", characteristicCopy];
      peripheral = [v27 errorWithHMErrorCode:4 reason:characteristicCopy underlyingError:0];

      if (queueCopy && handlerCopy)
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __92___HAPAccessoryServerBTLE100__readValueForCharacteristic_completionQueue_completionHandler___block_invoke_2;
        v29[3] = &unk_2786D69E0;
        v32 = handlerCopy;
        v30 = characteristicCopy;
        v31 = peripheral;
        dispatch_async(queueCopy, v29);

        v19 = v32;
        goto LABEL_18;
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v14;
        v45 = 2112;
        v46 = characteristicCopy;
        _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@### Error while attempting to read HAP characteristic %@: it does not support reading", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v15 = MEMORY[0x277CCA9B8];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = [mainBundle localizedStringForKey:@"The characteristic does not support reading." value:&stru_283E79C60 table:0];
      peripheral = [v15 errorWithHMErrorCode:6 reason:v17 underlyingError:0];

      if (queueCopy && handlerCopy)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __92___HAPAccessoryServerBTLE100__readValueForCharacteristic_completionQueue_completionHandler___block_invoke_187;
        block[3] = &unk_2786D69E0;
        v36 = handlerCopy;
        v34 = characteristicCopy;
        v35 = peripheral;
        dispatch_async(queueCopy, block);

        v19 = v36;
LABEL_18:
      }
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v22;
      v45 = 2112;
      v46 = characteristicCopy;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@### Error while attempting to read HAP characteristic %@: it does not have a corresponding BTLE characteristic", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v41[0] = *MEMORY[0x277CCA450];
    characteristicCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read the value of characteristic %@", characteristicCopy];
    v42[0] = characteristicCopy2;
    v41[1] = *MEMORY[0x277CCA470];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v25 = [mainBundle2 localizedStringForKey:@"Unable to find matching BTLE characteristic" value:&stru_283E79C60 table:0];
    v42[1] = v25;
    peripheral = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

    v26 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:2 userInfo:peripheral];
    if (queueCopy && handlerCopy)
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __92___HAPAccessoryServerBTLE100__readValueForCharacteristic_completionQueue_completionHandler___block_invoke;
      v37[3] = &unk_2786D69E0;
      v40 = handlerCopy;
      v38 = characteristicCopy;
      v39 = v26;
      dispatch_async(queueCopy, v37);
    }
  }

LABEL_20:
}

- (void)_readCharacteristicValues:(id)values completionQueue:(id)queue completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v10 = dispatch_group_create();
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = valuesCopy;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      v14 = 0;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * v14);
        dispatch_group_enter(v10);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __90___HAPAccessoryServerBTLE100__readCharacteristicValues_completionQueue_completionHandler___block_invoke;
        v30[3] = &unk_2786D66A0;
        v31 = currentActivity;
        v32 = array;
        v33 = v10;
        v16 = MEMORY[0x231885210](v30);
        [v15 instanceID];

        clientQueue = [(HAPAccessoryServer *)self clientQueue];
        [(_HAPAccessoryServerBTLE100 *)self _readValueForCharacteristic:v15 completionQueue:clientQueue completionHandler:v16];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v12);
  }

  clientQueue2 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90___HAPAccessoryServerBTLE100__readCharacteristicValues_completionQueue_completionHandler___block_invoke_179;
  block[3] = &unk_2786D66C8;
  block[4] = self;
  v27 = queueCopy;
  v28 = array;
  v29 = handlerCopy;
  v19 = array;
  v20 = handlerCopy;
  v21 = queueCopy;
  dispatch_group_notify(v10, clientQueue2, block);
}

- (void)readValueForCharacteristic:(id)characteristic queue:(id)queue completionHandler:(id)handler
{
  characteristicCopy = characteristic;
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81___HAPAccessoryServerBTLE100_readValueForCharacteristic_queue_completionHandler___block_invoke;
  v15[3] = &unk_2786D66C8;
  v15[4] = self;
  v16 = characteristicCopy;
  v17 = queueCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = characteristicCopy;
  dispatch_async(clientQueue, v15);
}

- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104___HAPAccessoryServerBTLE100_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  block[3] = &unk_2786D6600;
  timeoutCopy = timeout;
  block[4] = self;
  v19 = valuesCopy;
  v20 = queueCopy;
  v21 = handlerCopy;
  v15 = handlerCopy;
  v16 = queueCopy;
  v17 = valuesCopy;
  dispatch_async(clientQueue, block);
}

- (void)_handleHAPWriteConfirmationForCharacteristic:(id)characteristic error:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  errorCopy = error;
  v8 = [(_HAPAccessoryServerBTLE100 *)self _hapCharacteristicForBTLECharacteristic:characteristicCopy];
  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = errorCopy;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Received write completion for characteristic %@ with error %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(_HAPAccessoryServerBTLE100 *)self _dequeueWriteCompletionHandlerForCharacteristic:v8];
    v14 = v13;
    if (v13)
    {
      (*(v13 + 16))(v13, v8, errorCopy);
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = 138543874;
        v20 = v18;
        v21 = 2080;
        v22 = "[_HAPAccessoryServerBTLE100 _handleHAPWriteConfirmationForCharacteristic:error:]";
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@%s: ### Unable to get write completion handler for %@ after receiving a write confirmation", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v15;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@### Unable to find HAP characteristic for BTLE characteristic after receiving write confirmation", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)_writeValue:(id)value forCharacteristic:(id)characteristic authorizationData:(id)data withCompletionHandler:(id)handler queue:(id)queue
{
  v96 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  characteristicCopy = characteristic;
  dataCopy = data;
  handlerCopy = handler;
  queueCopy = queue;
  v16 = [(_HAPAccessoryServerBTLE100 *)self _btleCharacteristicForHAPCharacteristic:characteristicCopy];
  if (!v16)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v93 = v27;
      v94 = 2112;
      v95 = characteristicCopy;
      _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@### Error while attempting to write HAP characteristic %@: it does not have a corresponding BTLE characteristic", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v90[0] = *MEMORY[0x277CCA450];
    characteristicCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write the value of characteristic %@", characteristicCopy];
    v91[0] = characteristicCopy;
    v90[1] = *MEMORY[0x277CCA470];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v30 = [mainBundle localizedStringForKey:@"Unable to find matching BTLE characteristic" value:&stru_283E79C60 table:0];
    v91[1] = v30;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];

    v24 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:2 userInfo:v23];
    if (handlerCopy && queueCopy)
    {
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke;
      v86[3] = &unk_2786D69E0;
      v89 = handlerCopy;
      v87 = characteristicCopy;
      v24 = v24;
      v88 = v24;
      dispatch_async(queueCopy, v86);
    }

    goto LABEL_39;
  }

  if (([characteristicCopy properties] & 4) != 0)
  {
    metadata = [characteristicCopy metadata];
    format = [metadata format];
    v33 = HAPCharacteristicFormatFromString(format);

    v81 = 0;
    v24 = +[_HAPAccessoryServerBTLE100 serializeCharacteristicWriteValue:characteristicFormat:supportsAdditionalAuthentication:authenticationData:error:](_HAPAccessoryServerBTLE100, "serializeCharacteristicWriteValue:characteristicFormat:supportsAdditionalAuthentication:authenticationData:error:", valueCopy, v33, [characteristicCopy supportsAdditionalAuthorizationData], dataCopy, &v81);
    v23 = v81;
    if (v23)
    {
      if (!handlerCopy || !queueCopy)
      {
        goto LABEL_39;
      }

      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke_2;
      v77[3] = &unk_2786D69E0;
      v80 = handlerCopy;
      v78 = characteristicCopy;
      v79 = v23;
      dispatch_async(queueCopy, v77);

      v34 = v80;
      goto LABEL_38;
    }

    if ([(_HAPAccessoryServerBTLE100 *)self isDisconnecting])
    {
      v35 = MEMORY[0x277CCA9B8];
      characteristicCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write the value of characteristic %@", characteristicCopy];
      v34 = [v35 errorWithHMErrorCode:4 reason:characteristicCopy2 underlyingError:0];

      if (handlerCopy && queueCopy)
      {
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke_3;
        v73[3] = &unk_2786D69E0;
        v76 = handlerCopy;
        v74 = characteristicCopy;
        v34 = v34;
        v75 = v34;
        dispatch_async(queueCopy, v73);
      }

      goto LABEL_38;
    }

    currentActivity = [MEMORY[0x277D0F770] currentActivity];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke_4;
    v67[3] = &unk_2786D6628;
    v67[4] = valueCopy;
    v56 = characteristicCopy;
    v68 = v56;
    selfCopy = self;
    v59 = currentActivity;
    v70 = v59;
    v53 = handlerCopy;
    v72 = v53;
    v38 = queueCopy;
    v71 = v38;
    v58 = MEMORY[0x231885210](v67);
    v57 = dataCopy;
    if ([(_HAPAccessoryServerBTLE100 *)self _shouldEnableSessionSecurity])
    {
      v51 = v38;
      v66 = 0;
      v60 = [(_HAPAccessoryServerBTLE100 *)self _encryptDataAndGenerateAuthTag:v24 error:&v66];
      v39 = v66;
      context = objc_autoreleasePoolPush();
      v40 = HMFGetOSLogHandle();
      if (v39)
      {
        v41 = v40;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v93 = v42;
          v94 = 2112;
          v95 = v39;
          _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerBTLE] Failed to encrypt payload with error: %@", buf, 0x16u);
        }

        peripheral = v39;

        objc_autoreleasePoolPop(context);
        if (v53)
        {
          v44 = v58;
          v34 = v59;
          if (v51)
          {
            v62[0] = MEMORY[0x277D85DD0];
            v62[1] = 3221225472;
            v62[2] = __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke_165;
            v62[3] = &unk_2786D69E0;
            v65 = v53;
            v63 = v56;
            v64 = peripheral;
            dispatch_async(v51, v62);
          }
        }

        else
        {
          v44 = v58;
          v34 = v59;
        }

        v50 = v60;
        goto LABEL_37;
      }

      v49 = v40;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v55 = HMFGetLogIdentifier();
        *buf = 138543618;
        v93 = v55;
        v94 = 2112;
        v95 = v60;
        _os_log_impl(&dword_22AADC000, v49, OS_LOG_TYPE_INFO, "%{public}@Sending encrypted data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      v48 = v56;
      [(_HAPAccessoryServerBTLE100 *)self _notifyDelegateOfSentEncryptedAuthenticatedData:v60 forCharacteristic:v56];
    }

    else
    {
      v60 = v24;
      v54 = objc_autoreleasePoolPush();
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543362;
        v93 = v46;
        v47 = v46;
        _os_log_impl(&dword_22AADC000, v45, OS_LOG_TYPE_INFO, "%{public}@Sending plaintext data because encryption has been disabled.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v54);
      v48 = v56;
    }

    [(_HAPAccessoryServerBTLE100 *)self _enqueueWriteCompletionHandler:v58 forCharacteristic:v48];
    [(_HAPAccessoryServerBTLE100 *)self _notifyDelegateOfSentPlaintextData:v24 forCharacteristic:v48];
    [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
    v44 = v58;
    peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
    v50 = v60;
    [peripheral writeValue:v60 forCharacteristic:v16 type:0];
    v34 = v59;
LABEL_37:

    dataCopy = v57;
LABEL_38:

    goto LABEL_39;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v93 = v19;
    v94 = 2112;
    v95 = characteristicCopy;
    _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@### Error while attempting to write HAP characteristic %@: it does not support writing", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v20 = MEMORY[0x277CCA9B8];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v22 = [mainBundle2 localizedStringForKey:@"The characteristic does not support writing." value:&stru_283E79C60 table:0];
  v23 = [v20 errorWithHMErrorCode:5 reason:v22 underlyingError:0];

  if (handlerCopy && queueCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke_154;
    block[3] = &unk_2786D69E0;
    v85 = handlerCopy;
    v83 = characteristicCopy;
    v23 = v23;
    v84 = v23;
    dispatch_async(queueCopy, block);

    v24 = v85;
LABEL_39:
  }
}

- (void)_writeCharacteristicValues:(id)values queue:(id)queue completionHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v9 = dispatch_group_create();
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = valuesCopy;
  v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v28 = *v38;
    do
    {
      v12 = 0;
      do
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * v12);
        dispatch_group_enter(v9);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __81___HAPAccessoryServerBTLE100__writeCharacteristicValues_queue_completionHandler___block_invoke;
        v34[3] = &unk_2786D6538;
        v35 = array;
        v36 = v9;
        v14 = MEMORY[0x231885210](v34);
        characteristic = [v13 characteristic];
        [characteristic instanceID];

        value = [v13 value];
        characteristic2 = [v13 characteristic];
        authorizationData = [v13 authorizationData];
        clientQueue = [(HAPAccessoryServer *)self clientQueue];
        [(_HAPAccessoryServerBTLE100 *)self _writeValue:value forCharacteristic:characteristic2 authorizationData:authorizationData withCompletionHandler:v14 queue:clientQueue];

        ++v12;
      }

      while (v11 != v12);
      v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v11);
  }

  clientQueue2 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81___HAPAccessoryServerBTLE100__writeCharacteristicValues_queue_completionHandler___block_invoke_146;
  block[3] = &unk_2786D66C8;
  block[4] = self;
  v31 = queueCopy;
  v32 = array;
  v33 = handlerCopy;
  v21 = array;
  v22 = queueCopy;
  v23 = handlerCopy;
  dispatch_group_notify(v9, clientQueue2, block);
}

- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105___HAPAccessoryServerBTLE100_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  block[3] = &unk_2786D6600;
  timeoutCopy = timeout;
  block[4] = self;
  v19 = valuesCopy;
  v20 = queueCopy;
  v21 = handlerCopy;
  v15 = handlerCopy;
  v16 = queueCopy;
  v17 = valuesCopy;
  dispatch_async(clientQueue, block);
}

- (id)_dequeueEnableEventCompletionTupleForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  hapCharacteristicEnableEventCompletionQueues = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicEnableEventCompletionQueues];
  v6 = [hapCharacteristicEnableEventCompletionQueues objectForKey:characteristicCopy];

  firstObject = [v6 firstObject];
  if (firstObject)
  {
    [v6 removeObject:firstObject];
  }

  return firstObject;
}

- (void)_enqueueEnableEventCompletionHandler:(id)handler queue:(id)queue forCharacteristic:(id)characteristic
{
  handlerCopy = handler;
  queueCopy = queue;
  characteristicCopy = characteristic;
  hapCharacteristicEnableEventCompletionQueues = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicEnableEventCompletionQueues];
  array = [hapCharacteristicEnableEventCompletionQueues objectForKey:characteristicCopy];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    hapCharacteristicEnableEventCompletionQueues2 = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicEnableEventCompletionQueues];
    [hapCharacteristicEnableEventCompletionQueues2 setObject:array forKey:characteristicCopy];
  }

  v13 = [HAPCharacteristicEnableEventCompletionTuple enableEventCompletionTupleWithHandler:handlerCopy queue:queueCopy];
  if (v13)
  {
    [array addObject:v13];
  }
}

- (id)_dequeueReadCompletionTupleForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  hapCharacteristicReadCompletionQueues = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicReadCompletionQueues];
  v6 = [hapCharacteristicReadCompletionQueues objectForKey:characteristicCopy];

  firstObject = [v6 firstObject];
  if (firstObject)
  {
    [v6 removeObject:firstObject];
  }

  return firstObject;
}

- (void)_enqueueReadCompletionHandler:(id)handler queue:(id)queue forCharacteristic:(id)characteristic
{
  handlerCopy = handler;
  queueCopy = queue;
  characteristicCopy = characteristic;
  hapCharacteristicReadCompletionQueues = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicReadCompletionQueues];
  array = [hapCharacteristicReadCompletionQueues objectForKey:characteristicCopy];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    hapCharacteristicReadCompletionQueues2 = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicReadCompletionQueues];
    [hapCharacteristicReadCompletionQueues2 setObject:array forKey:characteristicCopy];
  }

  v13 = [HAPCharacteristicReadCompletionTuple readCompletionTupleWithHandler:handlerCopy queue:queueCopy];
  [array addObject:v13];
}

- (id)_dequeueWriteCompletionHandlerForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  hapCharacteristicWriteCompletionQueues = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicWriteCompletionQueues];
  v6 = [hapCharacteristicWriteCompletionQueues objectForKey:characteristicCopy];

  firstObject = [v6 firstObject];
  v8 = firstObject;
  if (firstObject)
  {
    v9 = MEMORY[0x231885210](firstObject);
    [v6 removeObject:v9];
  }

  v10 = MEMORY[0x231885210](v8);

  return v10;
}

- (void)_enqueueWriteCompletionHandler:(id)handler forCharacteristic:(id)characteristic
{
  handlerCopy = handler;
  characteristicCopy = characteristic;
  hapCharacteristicWriteCompletionQueues = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicWriteCompletionQueues];
  array = [hapCharacteristicWriteCompletionQueues objectForKey:characteristicCopy];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    hapCharacteristicWriteCompletionQueues2 = [(_HAPAccessoryServerBTLE100 *)self hapCharacteristicWriteCompletionQueues];
    [hapCharacteristicWriteCompletionQueues2 setObject:array forKey:characteristicCopy];
  }

  v10 = MEMORY[0x231885210](handlerCopy);
  [array addObject:v10];
}

- (void)_handleDisconnectionWithCompletion:(id)completion
{
  v116 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    identifier = [(HAPAccessoryServer *)self identifier];
    *buf = 138543618;
    v107 = v7;
    v108 = 2112;
    v109 = identifier;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Handling disconnection with error", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(_HAPAccessoryServerBTLE100 *)self startPairingRequested])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      identifier2 = [(HAPAccessoryServer *)self identifier];
      *buf = 138543618;
      v107 = v11;
      v108 = 2112;
      v109 = identifier2;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] disconnected during pairing", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      v14 = delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke;
      block[3] = &unk_2786D6CA0;
      block[4] = self;
      v15 = block;
LABEL_8:
      dispatch_async(delegateQueue, v15);
LABEL_18:
    }
  }

  else if ([(_HAPAccessoryServerBTLE100 *)self unpairedIdentifyRequested])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      identifier3 = [(HAPAccessoryServer *)self identifier];
      *buf = 138543618;
      v107 = v18;
      v108 = 2112;
      v109 = identifier3;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] disconnected after unpaired identify request completed", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    unpairedIdentifyCompletionBlock = [(_HAPAccessoryServerBTLE100 *)self unpairedIdentifyCompletionBlock];

    if (unpairedIdentifyCompletionBlock)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        identifier4 = [(HAPAccessoryServer *)self identifier];
        *buf = 138543618;
        v107 = v23;
        v108 = 2112;
        v109 = identifier4;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] identify failed calling completion block", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v14 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:52];
      unpairedIdentifyCompletionBlock2 = [(_HAPAccessoryServerBTLE100 *)self unpairedIdentifyCompletionBlock];
      [(_HAPAccessoryServerBTLE100 *)self setUnpairedIdentifyCompletionBlock:0];
      v26 = MEMORY[0x231885210](unpairedIdentifyCompletionBlock2);
      v27 = v26;
      if (v26)
      {
        (*(v26 + 16))(v26, v14);
      }

      goto LABEL_18;
    }
  }

  else
  {
    state = [(_HAPAccessoryServerBTLE100 *)self state];
    v29 = objc_autoreleasePoolPush();
    v30 = HMFGetOSLogHandle();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (state == 12)
    {
      v78 = completionCopy;
      if (v31)
      {
        v32 = HMFGetLogIdentifier();
        identifier5 = [(HAPAccessoryServer *)self identifier];
        *buf = 138543618;
        v107 = v32;
        v108 = 2112;
        v109 = identifier5;
        _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] failed after session is up", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v34 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:4];
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      btleCharacteristicToHAPCharacteristicMap = [(_HAPAccessoryServerBTLE100 *)self btleCharacteristicToHAPCharacteristicMap];
      objectEnumerator = [btleCharacteristicToHAPCharacteristicMap objectEnumerator];

      v80 = [objectEnumerator countByEnumeratingWithState:&v100 objects:v115 count:16];
      if (v80)
      {
        v79 = *v101;
        do
        {
          for (i = 0; i != v80; ++i)
          {
            if (*v101 != v79)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            v38 = *(*(&v100 + 1) + 8 * i);
            v39 = [(_HAPAccessoryServerBTLE100 *)self _dequeueReadCompletionTupleForCharacteristic:v38];
            if (v39)
            {
              v40 = v39;
              do
              {
                handler = [v40 handler];
                if (handler)
                {
                  v42 = handler;
                  completionQueue = [v40 completionQueue];

                  if (completionQueue)
                  {
                    completionQueue2 = [v40 completionQueue];
                    v96[0] = MEMORY[0x277D85DD0];
                    v96[1] = 3221225472;
                    v96[2] = __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_138;
                    v96[3] = &unk_2786D7078;
                    v97 = v40;
                    v98 = v38;
                    v99 = v34;
                    dispatch_async(completionQueue2, v96);
                  }
                }

                v45 = [(_HAPAccessoryServerBTLE100 *)self _dequeueReadCompletionTupleForCharacteristic:v38];

                v40 = v45;
              }

              while (v45);
            }

            v46 = [(_HAPAccessoryServerBTLE100 *)self _dequeueWriteCompletionHandlerForCharacteristic:v38];
            if (v46)
            {
              v47 = v46;
              do
              {
                delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
                v93[0] = MEMORY[0x277D85DD0];
                v93[1] = 3221225472;
                v93[2] = __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_2;
                v93[3] = &unk_2786D69E0;
                v95 = v47;
                v93[4] = v38;
                v94 = v34;
                v49 = v47;
                dispatch_async(delegateQueue2, v93);

                v47 = [(_HAPAccessoryServerBTLE100 *)self _dequeueWriteCompletionHandlerForCharacteristic:v38];
              }

              while (v47);
            }

            v50 = [(_HAPAccessoryServerBTLE100 *)self _dequeueEnableEventCompletionTupleForCharacteristic:v38];
            if (v50)
            {
              v51 = v50;
              do
              {
                handler2 = [v51 handler];
                if (handler2)
                {
                  v53 = handler2;
                  completionQueue3 = [v51 completionQueue];

                  if (completionQueue3)
                  {
                    completionQueue4 = [v51 completionQueue];
                    v89[0] = MEMORY[0x277D85DD0];
                    v89[1] = 3221225472;
                    v89[2] = __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_3;
                    v89[3] = &unk_2786D7078;
                    v90 = v51;
                    v91 = v38;
                    v92 = v34;
                    dispatch_async(completionQueue4, v89);
                  }
                }

                v56 = [(_HAPAccessoryServerBTLE100 *)self _dequeueEnableEventCompletionTupleForCharacteristic:v38];

                v51 = v56;
              }

              while (v56);
            }
          }

          v80 = [objectEnumerator countByEnumeratingWithState:&v100 objects:v115 count:16];
        }

        while (v80);
      }

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      addRemovePairingOperationsQueue = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
      v57 = [addRemovePairingOperationsQueue countByEnumeratingWithState:&v85 objects:v114 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v86;
        do
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v86 != v59)
            {
              objc_enumerationMutation(addRemovePairingOperationsQueue);
            }

            v61 = *(*(&v85 + 1) + 8 * j);
            v62 = objc_autoreleasePoolPush();
            v63 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v64 = v82 = v62;
              v65 = v58;
              v66 = v59;
              operation = [v61 operation];
              identifier6 = [v61 identifier];
              operationExecuting = [v61 operationExecuting];
              *buf = 138544130;
              v107 = v64;
              v108 = 2048;
              v109 = operation;
              v59 = v66;
              v58 = v65;
              v110 = 2112;
              v111 = identifier6;
              v112 = 1024;
              v113 = operationExecuting;
              _os_log_impl(&dword_22AADC000, v63, OS_LOG_TYPE_INFO, "%{public}@Failed pending operation %tu for %@, Executing: %d", buf, 0x26u);

              v62 = v82;
            }

            objc_autoreleasePoolPop(v62);
            if (([v61 operationExecuting] & 1) == 0)
            {
              completionHandler = [v61 completionHandler];
              if (completionHandler)
              {
                v71 = completionHandler;
                queue = [v61 queue];

                if (queue)
                {
                  queue2 = [v61 queue];
                  v83[0] = MEMORY[0x277D85DD0];
                  v83[1] = 3221225472;
                  v83[2] = __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_139;
                  v83[3] = &unk_2786D7050;
                  v83[4] = v61;
                  v84 = v34;
                  dispatch_async(queue2, v83);
                }
              }
            }
          }

          v58 = [addRemovePairingOperationsQueue countByEnumeratingWithState:&v85 objects:v114 count:16];
        }

        while (v58);
      }

      addRemovePairingOperationsQueue2 = [(_HAPAccessoryServerBTLE100 *)self addRemovePairingOperationsQueue];
      [addRemovePairingOperationsQueue2 removeAllObjects];

      completionCopy = v78;
    }

    else
    {
      if (v31)
      {
        v75 = HMFGetLogIdentifier();
        identifier7 = [(HAPAccessoryServer *)self identifier];
        *buf = 138543618;
        v107 = v75;
        v108 = 2112;
        v109 = identifier7;
        _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] disconnected before secure session was established", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didDiscoverAccessories_transaction_error_])
      {
        delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
        v14 = delegateQueue;
        v104[0] = MEMORY[0x277D85DD0];
        v104[1] = 3221225472;
        v104[2] = __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_137;
        v104[3] = &unk_2786D6CA0;
        v104[4] = self;
        v15 = v104;
        goto LABEL_8;
      }
    }
  }

  [(_HAPAccessoryServerBTLE100 *)self _resetState];
  v77 = MEMORY[0x231885210](completionCopy);
  if (v77)
  {
    (v77)[2](v77, [(_HAPAccessoryServerBTLE100 *)self removeOnDisconnect]);
  }
}

- (void)handleDisconnectionWithError:(id)error completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    state = [(_HAPAccessoryServerBTLE100 *)self state];
    if (state - 1 > 0xB)
    {
      v12 = @"Unknown State";
    }

    else
    {
      v12 = off_2786D6DD8[state - 1];
    }

    v13 = v12;
    *buf = 138543874;
    v22 = v10;
    v23 = 2112;
    v24 = errorCopy;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server] Received disconnection event with error %@ in state %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if ([(_HAPAccessoryServerBTLE100 *)self state]== 2 && [(_HAPAccessoryServerBTLE100 *)self connectionRetryCount]<= 2)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      connectionRetryCount = [(_HAPAccessoryServerBTLE100 *)self connectionRetryCount];
      *buf = 138543618;
      v22 = v16;
      v23 = 2048;
      v24 = connectionRetryCount;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@[BTLE Accessory Server] ### BLE Connection Failure, Retry count: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(_HAPAccessoryServerBTLE100 *)self setConnectionRetryCount:[(_HAPAccessoryServerBTLE100 *)self connectionRetryCount]+ 1];
    [(_HAPAccessoryServerBTLE100 *)self setState:1];
    [(_HAPAccessoryServerBTLE100 *)self _handlePairingStateMachine];
  }

  else
  {
    clientQueue = [(HAPAccessoryServer *)self clientQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77___HAPAccessoryServerBTLE100_handleDisconnectionWithError_completionHandler___block_invoke;
    v19[3] = &unk_2786D65D8;
    v19[4] = self;
    v20 = handlerCopy;
    dispatch_async(clientQueue, v19);
  }
}

- (BOOL)isBLELinkConnected
{
  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  v3 = [peripheral state] == 2;

  return v3;
}

- (void)_handleSuccessfulBTLEConnection
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543874;
    v8 = v5;
    v9 = 2112;
    v10 = objc_opt_class();
    v11 = 2080;
    v12 = "[_HAPAccessoryServerBTLE100 _handleSuccessfulBTLEConnection]";
    v6 = v10;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@%@ %s", &v7, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [(_HAPAccessoryServerBTLE100 *)self _handlePairingStateMachine];
}

- (void)_handleConnectionWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = errorCopy;
    v8 = v12;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@%@ connection completed with error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (!errorCopy)
  {
    [(_HAPAccessoryServerBTLE100 *)self _handleSuccessfulBTLEConnection];
    [(HAPAccessoryServerBTLE *)self incrementHAPBTLEMetricsConnectionCount];
  }
}

- (void)handleConnectionWithPeripheral:(id)peripheral withError:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71___HAPAccessoryServerBTLE100_handleConnectionWithPeripheral_withError___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = peripheralCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = peripheralCopy;
  dispatch_async(clientQueue, block);
}

- (void)_setupBTLEConnectionToPeripheral
{
  browser = [(HAPAccessoryServerBTLE *)self browser];
  [browser connectToBTLEAccessoryServer:self];
}

- (void)_handleHAPNotificationStateUpdateForCharacteristic:(id)characteristic error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  errorCopy = error;
  v8 = [(_HAPAccessoryServerBTLE100 *)self _hapCharacteristicForBTLECharacteristic:characteristicCopy];
  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v25 = v12;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = errorCopy;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification update completion for characteristic %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(_HAPAccessoryServerBTLE100 *)self _dequeueEnableEventCompletionTupleForCharacteristic:v8];
    v14 = v13;
    if (v13)
    {
      completionQueue = [v13 completionQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87___HAPAccessoryServerBTLE100__handleHAPNotificationStateUpdateForCharacteristic_error___block_invoke;
      block[3] = &unk_2786D7078;
      v21 = v14;
      v22 = v8;
      v23 = errorCopy;
      dispatch_async(completionQueue, block);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543874;
        v25 = v19;
        v26 = 2080;
        v27 = "[_HAPAccessoryServerBTLE100 _handleHAPNotificationStateUpdateForCharacteristic:error:]";
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@%s: ### Unable to get enable event completion handler for %@ after receiving a notification update confirmation", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@### Unable to find HAP characteristic for BTLE characteristic after receiving Notification Update confirmation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)_enableEvent:(BOOL)event forCharacteristic:(id)characteristic withCompletionHandler:(id)handler queue:(id)queue
{
  eventCopy = event;
  v74 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  handlerCopy = handler;
  queueCopy = queue;
  v12 = [(_HAPAccessoryServerBTLE100 *)self _btleCharacteristicForHAPCharacteristic:characteristicCopy];
  v13 = objc_autoreleasePoolPush();
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v15 = queueCopy;
    v17 = v16 = handlerCopy;
    [(HAPAccessoryServer *)self identifier];
    v19 = v18 = v12;
    name = [(HAPAccessoryServer *)self name];
    *buf = 138544386;
    v65 = v17;
    v66 = 2112;
    v67 = v19;
    v68 = 2112;
    v69 = name;
    v70 = 1024;
    v71 = eventCopy;
    v72 = 2112;
    v73 = characteristicCopy;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory %@ %@] Enable Events :%d for Characteristics: %@", buf, 0x30u);

    v12 = v18;
    handlerCopy = v16;
    queueCopy = v15;
  }

  objc_autoreleasePoolPop(v13);
  if (!v12)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v65 = v32;
      v66 = 2114;
      v67 = characteristicCopy;
      _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, "%{public}@### Error while attempting to enable Events on HAP characteristic %{public}@: it does not have a corresponding BTLE characteristic", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v62[0] = *MEMORY[0x277CCA450];
    characteristicCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enable events for characteristic %@", characteristicCopy];
    v63[0] = characteristicCopy;
    v62[1] = *MEMORY[0x277CCA470];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v35 = [mainBundle localizedStringForKey:@"Unable to find matching BTLE characteristic" value:&stru_283E79C60 table:0];
    v63[1] = v35;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];

    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6727 userInfo:v27];
    if (!handlerCopy || !queueCopy)
    {
      goto LABEL_20;
    }

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __89___HAPAccessoryServerBTLE100__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke;
    v54[3] = &unk_2786D69E0;
    v57 = handlerCopy;
    v55 = characteristicCopy;
    v56 = v28;
    dispatch_async(queueCopy, v54);

    v29 = v57;
    goto LABEL_19;
  }

  if (([v12 properties] & 0x20) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v65 = v23;
      v66 = 2114;
      v67 = characteristicCopy;
      v68 = 2114;
      v69 = v12;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@### Error while attempting to enable Events on HAP characteristic %{public}@: Corresponding BTLE Characteristics %{public}@: does not support it", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v60[0] = *MEMORY[0x277CCA450];
    characteristicCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enable events for characteristic %@", characteristicCopy];
    v61[0] = characteristicCopy2;
    v60[1] = *MEMORY[0x277CCA470];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [mainBundle2 localizedStringForKey:@"BTLE characteristic does not support indication" value:&stru_283E79C60 table:0];
    v61[1] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];

    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6735 userInfo:v27];
    if (!handlerCopy || !queueCopy)
    {
      goto LABEL_20;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89___HAPAccessoryServerBTLE100__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke_130;
    block[3] = &unk_2786D69E0;
    v53 = handlerCopy;
    v51 = characteristicCopy;
    v52 = v28;
    dispatch_async(queueCopy, block);

    v29 = v53;
    goto LABEL_19;
  }

  if (![(_HAPAccessoryServerBTLE100 *)self isDisconnecting])
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __89___HAPAccessoryServerBTLE100__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke_3;
    v42[3] = &unk_2786D65B0;
    v45 = eventCopy;
    v44 = handlerCopy;
    v38 = queueCopy;
    v43 = v38;
    v39 = MEMORY[0x231885210](v42);
    [(_HAPAccessoryServerBTLE100 *)self _enqueueEnableEventCompletionHandler:v39 queue:v38 forCharacteristic:characteristicCopy];
    [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
    peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
    [peripheral setNotifyValue:eventCopy forCharacteristic:v12];

    v27 = v44;
    goto LABEL_21;
  }

  v58[0] = *MEMORY[0x277CCA450];
  characteristicCopy3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enable events for characteristics %@", characteristicCopy];
  v59[0] = characteristicCopy3;
  v58[1] = *MEMORY[0x277CCA470];
  v37 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:4];
  v59[1] = v37;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];

  v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6753 userInfo:v27];
  if (handlerCopy && queueCopy)
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __89___HAPAccessoryServerBTLE100__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke_2;
    v46[3] = &unk_2786D69E0;
    v49 = handlerCopy;
    v47 = characteristicCopy;
    v48 = v28;
    dispatch_async(queueCopy, v46);

    v29 = v49;
LABEL_19:
  }

LABEL_20:

LABEL_21:
}

- (void)_enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  eventsCopy = events;
  v41 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  array = [MEMORY[0x277CBEB18] array];
  v12 = dispatch_group_create();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = characteristicsCopy;
  v13 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      v16 = 0;
      do
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v36 + 1) + 8 * v16);
        dispatch_group_enter(v12);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __91___HAPAccessoryServerBTLE100__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
        v33[3] = &unk_2786D6538;
        v34 = array;
        v35 = v12;
        v18 = MEMORY[0x231885210](v33);
        [(_HAPAccessoryServerBTLE100 *)self _enableEvent:eventsCopy forCharacteristic:v17 withCompletionHandler:v18 queue:queueCopy];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v14);
  }

  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91___HAPAccessoryServerBTLE100__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_110;
  block[3] = &unk_2786D6588;
  v30 = obj;
  v31 = handlerCopy;
  block[4] = self;
  v28 = queueCopy;
  v32 = eventsCopy;
  v29 = array;
  v20 = obj;
  v21 = array;
  v22 = queueCopy;
  v23 = handlerCopy;
  dispatch_group_notify(v12, clientQueue, block);
}

- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90___HAPAccessoryServerBTLE100_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
  block[3] = &unk_2786D6510;
  eventsCopy = events;
  block[4] = self;
  v18 = characteristicsCopy;
  v19 = queueCopy;
  v20 = handlerCopy;
  v14 = queueCopy;
  v15 = handlerCopy;
  v16 = characteristicsCopy;
  dispatch_async(clientQueue, block);
}

- (BOOL)stopPairingWithError:(id *)error
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___HAPAccessoryServerBTLE100_stopPairingWithError___block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);

  return 1;
}

- (void)_handlePairingStateMachine
{
  v149 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  selfCopy = self;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    [(HAPAccessoryServer *)self identifier];
    v7 = v6 = self;
    name = [(HAPAccessoryServer *)v6 name];
    state = [(_HAPAccessoryServerBTLE100 *)v6 state];
    state2 = [(_HAPAccessoryServerBTLE100 *)v6 state];
    if ((state2 - 1) > 0xB)
    {
      v11 = @"Unknown State";
    }

    else
    {
      v11 = off_2786D6DD8[state2 - 1];
    }

    v12 = v11;
    *buf = 138544642;
    v138 = v5;
    v139 = 2112;
    v140 = v7;
    v141 = 2112;
    v142 = name;
    v143 = 2080;
    v144 = "[_HAPAccessoryServerBTLE100 _handlePairingStateMachine]";
    v145 = 2048;
    v146 = state;
    v147 = 2112;
    v148 = v12;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@ %@] %s with state %lu (%@)", buf, 0x3Eu);

    self = selfCopy;
  }

  objc_autoreleasePoolPop(v3);
  state3 = [(_HAPAccessoryServerBTLE100 *)self state];
  if (state3 > 5)
  {
    if (state3 <= 8)
    {
      if (state3 != 6)
      {
        if (state3 != 7)
        {
          [(_HAPAccessoryServerBTLE100 *)self setState:9];
          [(_HAPAccessoryServerBTLE100 *)self _handleHAPServiceDiscovery];
          return;
        }

LABEL_119:
        [(_HAPAccessoryServerBTLE100 *)self setState:8];
        [(_HAPAccessoryServerBTLE100 *)self _reallyEstablishSecureSession];
        return;
      }

      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      accessoryInfoService = [(_HAPAccessoryServerBTLE100 *)self accessoryInfoService];
      characteristics = [accessoryInfoService characteristics];

      v76 = [characteristics countByEnumeratingWithState:&v122 objects:v134 count:16];
      if (v76)
      {
        v77 = v76;
        v120 = 0;
        v78 = *v123;
        do
        {
          for (i = 0; i != v77; ++i)
          {
            if (*v123 != v78)
            {
              objc_enumerationMutation(characteristics);
            }

            v80 = *(*(&v122 + 1) + 8 * i);
            uUID = [v80 UUID];
            v82 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000014-0000-1000-8000-0026BB765291"];
            v83 = [uUID isEqual:v82];

            if (v83)
            {
              [(_HAPAccessoryServerBTLE100 *)selfCopy setIdentifyCharacteristic:v80];
            }

            else
            {
              uUID2 = [v80 UUID];
              v85 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000021-0000-1000-8000-0026BB765291"];
              v86 = [uUID2 isEqual:v85];

              if (v86)
              {
                [(_HAPAccessoryServerBTLE100 *)selfCopy setModelCharacteristic:v80];
              }

              else
              {
                uUID3 = [v80 UUID];
                v88 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000020-0000-1000-8000-0026BB765291"];
                v89 = [uUID3 isEqual:v88];

                if (v89)
                {
                  [(_HAPAccessoryServerBTLE100 *)selfCopy setManufacturerCharacteristic:v80];
                }

                else
                {
                  uUID4 = [v80 UUID];
                  v91 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000030-0000-1000-8000-0026BB765291"];
                  v92 = [uUID4 isEqual:v91];

                  if (v92)
                  {
                    [(_HAPAccessoryServerBTLE100 *)selfCopy setSerialNumberCharacteristic:v80];
                  }

                  else
                  {
                    uUID5 = [v80 UUID];
                    v94 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000051-0000-1000-8000-0026BB765291"];
                    v95 = [uUID5 isEqual:v94];

                    v120 |= v95;
                  }
                }
              }
            }
          }

          v77 = [characteristics countByEnumeratingWithState:&v122 objects:v134 count:16];
        }

        while (v77);
      }

      else
      {
        v120 = 0;
      }

      self = selfCopy;
      identifyCharacteristic = [(_HAPAccessoryServerBTLE100 *)selfCopy identifyCharacteristic];
      if (!identifyCharacteristic)
      {
        goto LABEL_111;
      }

      v108 = identifyCharacteristic;
      modelCharacteristic = [(_HAPAccessoryServerBTLE100 *)selfCopy modelCharacteristic];
      if (modelCharacteristic)
      {
        v110 = modelCharacteristic;
        manufacturerCharacteristic = [(_HAPAccessoryServerBTLE100 *)selfCopy manufacturerCharacteristic];
        if (manufacturerCharacteristic)
        {
          v112 = manufacturerCharacteristic;
          serialNumberCharacteristic = [(_HAPAccessoryServerBTLE100 *)selfCopy serialNumberCharacteristic];
          v114 = (serialNumberCharacteristic != 0) & v120;

          if (v114)
          {
            if (![(_HAPAccessoryServerBTLE100 *)selfCopy unpairedIdentifyRequested])
            {
              if ([(_HAPAccessoryServerBTLE100 *)selfCopy startPairingRequested])
              {
                [(_HAPAccessoryServerBTLE100 *)selfCopy setState:7];
                [(_HAPAccessoryServerBTLE100 *)selfCopy _pairSetupStart];
                return;
              }

              goto LABEL_119;
            }

            buf[0] = 1;
            browser = [MEMORY[0x277CBEA90] dataWithBytes:buf length:1];
            peripheral = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
            identifyCharacteristic2 = [(_HAPAccessoryServerBTLE100 *)selfCopy identifyCharacteristic];
            [peripheral writeValue:browser forCharacteristic:identifyCharacteristic2 type:0];

            goto LABEL_39;
          }

LABEL_111:
          v101 = objc_autoreleasePoolPush();
          v102 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            v103 = HMFGetLogIdentifier();
            identifier = [(HAPAccessoryServer *)selfCopy identifier];
            name2 = [(HAPAccessoryServer *)selfCopy name];
            *buf = 138543874;
            v138 = v103;
            v139 = 2112;
            v140 = identifier;
            v141 = 2112;
            v142 = name2;
            v106 = "%{public}@[BTLE Accessory Server %@ %@] Unable to find all accessory info characteristics in the pairing service";
            goto LABEL_113;
          }

LABEL_114:

          objc_autoreleasePoolPop(v101);
          browser = [(HAPAccessoryServerBTLE *)self browser];
          [browser disconnectFromBTLEAccessoryServer:self];
          goto LABEL_115;
        }
      }

      goto LABEL_111;
    }

    switch(state3)
    {
      case 9:
        [(_HAPAccessoryServerBTLE100 *)self setState:10];
        [(_HAPAccessoryServerBTLE100 *)self _handleDescriptorDiscovery];
        return;
      case 10:
        [(_HAPAccessoryServerBTLE100 *)self setState:11];
        [(_HAPAccessoryServerBTLE100 *)self _handleReadDescriptorValues];
        return;
      case 11:
        [(_HAPAccessoryServerBTLE100 *)self setState:12];
        return;
    }

    goto LABEL_87;
  }

  if (state3 > 2)
  {
    if (state3 != 3)
    {
      if (state3 != 4)
      {
        [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
LABEL_15:
        [(_HAPAccessoryServerBTLE100 *)self setState:6];
        browser = [(HAPAccessoryServerBTLE *)self peripheral];
        accessoryInfoService2 = [(_HAPAccessoryServerBTLE100 *)self accessoryInfoService];
LABEL_38:
        peripheral = accessoryInfoService2;
        [browser discoverCharacteristics:0 forService:accessoryInfoService2];
LABEL_39:

LABEL_115:
        return;
      }

      if ([(_HAPAccessoryServerBTLE100 *)self pairingFeaturesRead])
      {
        if ([(_HAPAccessoryServerBTLE100 *)self startPairingRequested])
        {
          [(_HAPAccessoryServerBTLE100 *)self setState:5];
          [(_HAPAccessoryServerBTLE100 *)self _cancelConnectionLifetimeTimer];
          [(_HAPAccessoryServerBTLE100 *)self _checkForAuthPrompt];
          return;
        }

        goto LABEL_15;
      }

      v101 = objc_autoreleasePoolPush();
      v102 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_114;
      }

      v103 = HMFGetLogIdentifier();
      identifier = [(HAPAccessoryServer *)self identifier];
      name2 = [(HAPAccessoryServer *)self name];
      *buf = 138543874;
      v138 = v103;
      v139 = 2112;
      v140 = identifier;
      v141 = 2112;
      v142 = name2;
      v106 = "%{public}@[BTLE Accessory Server %@ %@] Unable to read pairing features characteristic";
LABEL_113:
      _os_log_impl(&dword_22AADC000, v102, OS_LOG_TYPE_ERROR, v106, buf, 0x20u);

      self = selfCopy;
      goto LABEL_114;
    }

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    pairingService = [(_HAPAccessoryServerBTLE100 *)self pairingService];
    characteristics2 = [pairingService characteristics];

    v50 = [characteristics2 countByEnumeratingWithState:&v126 objects:v135 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v127;
      do
      {
        for (j = 0; j != v51; ++j)
        {
          if (*v127 != v52)
          {
            objc_enumerationMutation(characteristics2);
          }

          v54 = *(*(&v126 + 1) + 8 * j);
          uUID6 = [v54 UUID];
          v56 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000004C-0000-1000-8000-0026BB765291"];
          v57 = [uUID6 isEqual:v56];

          if (v57)
          {
            [(_HAPAccessoryServerBTLE100 *)selfCopy setPairSetupCharacteristic:v54];
          }

          else
          {
            uUID7 = [v54 UUID];
            v59 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000004E-0000-1000-8000-0026BB765291"];
            v60 = [uUID7 isEqual:v59];

            if (v60)
            {
              [(_HAPAccessoryServerBTLE100 *)selfCopy setPairVerifyCharacteristic:v54];
            }

            else
            {
              uUID8 = [v54 UUID];
              v62 = [MEMORY[0x277CBE0A0] UUIDWithString:@"0000004F-0000-1000-8000-0026BB765291"];
              v63 = [uUID8 isEqual:v62];

              if (v63)
              {
                [(_HAPAccessoryServerBTLE100 *)selfCopy setPairingFeaturesCharacteristic:v54];
              }

              else
              {
                uUID9 = [v54 UUID];
                v65 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000050-0000-1000-8000-0026BB765291"];
                v66 = [uUID9 isEqual:v65];

                if (v66)
                {
                  [(_HAPAccessoryServerBTLE100 *)selfCopy setPairingsCharacteristic:v54];
                }
              }
            }
          }
        }

        v51 = [characteristics2 countByEnumeratingWithState:&v126 objects:v135 count:16];
      }

      while (v51);
    }

    self = selfCopy;
    pairSetupCharacteristic = [(_HAPAccessoryServerBTLE100 *)selfCopy pairSetupCharacteristic];
    if (pairSetupCharacteristic)
    {
      v68 = pairSetupCharacteristic;
      pairVerifyCharacteristic = [(_HAPAccessoryServerBTLE100 *)selfCopy pairVerifyCharacteristic];
      if (pairVerifyCharacteristic)
      {
        v70 = pairVerifyCharacteristic;
        pairingFeaturesCharacteristic = [(_HAPAccessoryServerBTLE100 *)selfCopy pairingFeaturesCharacteristic];
        if (pairingFeaturesCharacteristic)
        {
          v72 = pairingFeaturesCharacteristic;
          pairingsCharacteristic = [(_HAPAccessoryServerBTLE100 *)selfCopy pairingsCharacteristic];

          if (pairingsCharacteristic)
          {
            [(_HAPAccessoryServerBTLE100 *)selfCopy setState:4];
            [(_HAPAccessoryServerBTLE100 *)selfCopy _updateConnectionLifetimeTimer];
            browser = [(HAPAccessoryServerBTLE *)selfCopy peripheral];
            peripheral = [(_HAPAccessoryServerBTLE100 *)selfCopy pairingFeaturesCharacteristic];
            [browser readValueForCharacteristic:peripheral];
            goto LABEL_39;
          }

          goto LABEL_107;
        }
      }
    }

LABEL_107:
    v101 = objc_autoreleasePoolPush();
    v102 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    v103 = HMFGetLogIdentifier();
    identifier = [(HAPAccessoryServer *)selfCopy identifier];
    name2 = [(HAPAccessoryServer *)selfCopy name];
    *buf = 138543874;
    v138 = v103;
    v139 = 2112;
    v140 = identifier;
    v141 = 2112;
    v142 = name2;
    v106 = "%{public}@[BTLE Accessory Server %@ %@] Unable to find all pairing characteristics in the pairing service";
    goto LABEL_113;
  }

  if (state3 != 1)
  {
    if (state3 != 2)
    {
LABEL_87:
      v96 = objc_autoreleasePoolPush();
      v97 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        v98 = HMFGetLogIdentifier();
        state4 = [(_HAPAccessoryServerBTLE100 *)self state];
        if (state4 - 1 > 0xB)
        {
          v100 = @"Unknown State";
        }

        else
        {
          v100 = off_2786D6DD8[state4 - 1];
        }

        v116 = v100;
        *buf = 138543618;
        v138 = v98;
        v139 = 2112;
        v140 = v116;
        _os_log_impl(&dword_22AADC000, v97, OS_LOG_TYPE_ERROR, "%{public}@### Unhandled pairing state for BTLE accessory: '%@'", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v96);
      return;
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    peripheral2 = [(HAPAccessoryServerBTLE *)self peripheral];
    services = [peripheral2 services];

    obj = services;
    v18 = [services countByEnumeratingWithState:&v130 objects:v136 count:16];
    if (v18)
    {
      v20 = v18;
      v119 = *v131;
      *&v19 = 138544130;
      v117 = v19;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v131 != v119)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v130 + 1) + 8 * k);
          v23 = objc_autoreleasePoolPush();
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            identifier2 = [(HAPAccessoryServer *)self identifier];
            name3 = [(HAPAccessoryServer *)selfCopy name];
            uUID10 = [v22 UUID];
            *buf = v117;
            v138 = v25;
            v139 = 2112;
            v140 = identifier2;
            v141 = 2112;
            v142 = name3;
            v143 = 2112;
            v144 = uUID10;
            _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@ %@] current service UUID: %@", buf, 0x2Au);

            self = selfCopy;
          }

          objc_autoreleasePoolPop(v23);
          uUID11 = [v22 UUID];
          v30 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
          v31 = [uUID11 isEqual:v30];

          if (v31)
          {
            [(_HAPAccessoryServerBTLE100 *)self setPairingService:v22];
          }

          uUID12 = [v22 UUID];
          v33 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED3"];
          v34 = [uUID12 isEqual:v33];

          if (v34)
          {
            [(_HAPAccessoryServerBTLE100 *)self setAccessoryInfoService:v22];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v130 objects:v136 count:16];
      }

      while (v20);
    }

    pairingService2 = [(_HAPAccessoryServerBTLE100 *)self pairingService];
    if (pairingService2)
    {
      v36 = pairingService2;
      accessoryInfoService3 = [(_HAPAccessoryServerBTLE100 *)self accessoryInfoService];

      if (accessoryInfoService3)
      {
        [(_HAPAccessoryServerBTLE100 *)self setState:3];
        [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
        browser = [(HAPAccessoryServerBTLE *)self peripheral];
        accessoryInfoService2 = [(_HAPAccessoryServerBTLE100 *)self pairingService];
        goto LABEL_38;
      }
    }

    v101 = objc_autoreleasePoolPush();
    v102 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    v103 = HMFGetLogIdentifier();
    identifier = [(HAPAccessoryServer *)self identifier];
    name2 = [(HAPAccessoryServer *)self name];
    *buf = 138543874;
    v138 = v103;
    v139 = 2112;
    v140 = identifier;
    v141 = 2112;
    v142 = name2;
    v106 = "%{public}@[BTLE Accessory Server %@ %@] Unable to discover pairing service or accessory info service!";
    goto LABEL_113;
  }

  peripheral3 = [(HAPAccessoryServerBTLE *)self peripheral];
  state5 = [peripheral3 state];

  if (!state5)
  {
    [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
    [(_HAPAccessoryServerBTLE100 *)self _setupBTLEConnectionToPeripheral];
    return;
  }

  peripheral4 = [(HAPAccessoryServerBTLE *)self peripheral];
  state6 = [peripheral4 state];

  if (state6 == 2)
  {
    [(_HAPAccessoryServerBTLE100 *)self setState:2];
    [(_HAPAccessoryServerBTLE100 *)self _updateConnectionLifetimeTimer];
    v43 = objc_autoreleasePoolPush();
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      identifier3 = [(HAPAccessoryServer *)self identifier];
      name4 = [(HAPAccessoryServer *)selfCopy name];
      *buf = 138543874;
      v138 = v45;
      v139 = 2112;
      v140 = identifier3;
      v141 = 2112;
      v142 = name4;
      _os_log_impl(&dword_22AADC000, v44, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@ %@] Discovering services", buf, 0x20u);

      self = selfCopy;
    }

    objc_autoreleasePoolPop(v43);
    browser = [(HAPAccessoryServerBTLE *)self peripheral];
    [browser discoverServices:0];
    goto LABEL_115;
  }
}

- (void)continueAuthAfterValidation:(BOOL)validation
{
  if (validation)
  {

    [(_HAPAccessoryServerBTLE100 *)self continuePairingAfterAuthPrompt];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Pairing Failed." reason:@"User cancelled pairing" suggestion:0 underlyingError:0];
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __58___HAPAccessoryServerBTLE100_continueAuthAfterValidation___block_invoke;
      v6[3] = &unk_2786D7050;
      v6[4] = self;
      v7 = v4;
      dispatch_async(delegateQueue, v6);
    }
  }
}

- (BOOL)tryPairingPassword:(id)password onboardingSetupPayloadString:(id)string error:(id *)error
{
  passwordCopy = password;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84___HAPAccessoryServerBTLE100_tryPairingPassword_onboardingSetupPayloadString_error___block_invoke;
  v10[3] = &unk_2786D7050;
  v10[4] = self;
  v11 = passwordCopy;
  v8 = passwordCopy;
  dispatch_async(clientQueue, v10);

  return 1;
}

- (void)_checkForAuthPrompt
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    pairingFeatureFlags = self->_pairingFeatureFlags;
    *buf = 138543618;
    v28 = v5;
    v29 = 2048;
    v30 = pairingFeatureFlags;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@[BTLE] PairingFeatureFlags = %llu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v7 = self->_pairingFeatureFlags & 0xBF;
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      identifier = [(HAPAccessoryServer *)self identifier];
      name = [(HAPAccessoryServer *)self name];
      *buf = 138543874;
      v28 = v11;
      v29 = 2112;
      v30 = identifier;
      v31 = 2112;
      v32 = name;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@ %@] Accessory supports auth, skipping prompting user...", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [(_HAPAccessoryServerBTLE100 *)self _handlePairingStateMachine];
  }

  else
  {
    if (v10)
    {
      v14 = HMFGetLogIdentifier();
      identifier2 = [(HAPAccessoryServer *)self identifier];
      name2 = [(HAPAccessoryServer *)self name];
      *buf = 138543874;
      v28 = v14;
      v29 = 2112;
      v30 = identifier2;
      v31 = 2112;
      v32 = name2;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@ %@] Accessory doesn't support auth, prompting user...", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_requestUserPermission_accessoryInfo_error_])
    {
      v17 = [HAPAccessoryInfo alloc];
      name3 = [(HAPAccessoryServer *)self name];
      category = [(HAPAccessoryServer *)self category];
      v20 = [(HAPAccessoryInfo *)v17 initWithName:name3 manufacturer:0 modelName:0 category:category certificationStatus:0 denylisted:0 ppid:0];

      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49___HAPAccessoryServerBTLE100__checkForAuthPrompt__block_invoke;
      block[3] = &unk_2786D7050;
      block[4] = self;
      v26 = v20;
      v22 = v20;
      dispatch_async(delegateQueue, block);
    }

    else
    {
      if ([(_HAPAccessoryServerBTLE100 *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
      {
        delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __49___HAPAccessoryServerBTLE100__checkForAuthPrompt__block_invoke_2;
        v24[3] = &unk_2786D6CA0;
        v24[4] = self;
        dispatch_async(delegateQueue2, v24);
      }

      [(_HAPAccessoryServerBTLE100 *)self setStartPairingRequested:0];
    }
  }
}

- (void)continuePairingAfterAuthPrompt
{
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60___HAPAccessoryServerBTLE100_continuePairingAfterAuthPrompt__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)startPairingWithRequest:(id)request
{
  requestCopy = request;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___HAPAccessoryServerBTLE100_startPairingWithRequest___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(clientQueue, v7);
}

- (void)configureCharacteristics:(id)characteristics queue:(id)queue withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83___HAPAccessoryServerBTLE100_configureCharacteristics_queue_withCompletionHandler___block_invoke;
  block[3] = &unk_2786D6490;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(clientQueue, block);
}

- (void)generateBroadcastKey:(unsigned __int8)key queue:(id)queue withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79___HAPAccessoryServerBTLE100_generateBroadcastKey_queue_withCompletionHandler___block_invoke;
  block[3] = &unk_2786D6490;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(clientQueue, block);
}

- (void)_createPrimaryAccessoryFromAdvertisementData
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [HAPAccessory alloc];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v5 = [(HAPAccessory *)v3 initWithServer:self instanceID:v4];

  name = [(HAPAccessoryServer *)self name];
  [(HAPAccessory *)v5 setName:name];

  identifier = [(HAPAccessoryServer *)self identifier];
  [(HAPAccessory *)v5 setIdentifier:identifier];

  identifier2 = [(HAPAccessoryServer *)self identifier];
  [(HAPAccessory *)v5 setServerIdentifier:identifier2];

  [(HAPAccessoryServer *)self setPrimaryAccessory:v5];
  v10[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [(HAPAccessoryServer *)self setAccessories:v9];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41___HAPAccessoryServerBTLE100_description__block_invoke;
  v8[3] = &unk_2786D7050;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_sync(clientQueue, v8);

  v6 = v5;
  return v5;
}

- (void)dealloc
{
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  peripheral = [(HAPAccessoryServerBTLE *)self peripheral];
  [peripheral setDelegate:0];

  v5.receiver = self;
  v5.super_class = _HAPAccessoryServerBTLE100;
  [(_HAPAccessoryServerBTLE100 *)&v5 dealloc];
}

- (void)_resetState
{
  [(_HAPAccessoryServerBTLE100 *)self setState:1];
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  [(_HAPAccessoryServerBTLE100 *)self setBtleServiceToHAPServiceMap:strongToStrongObjectsMapTable];

  strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  [(_HAPAccessoryServerBTLE100 *)self setBtleCharacteristicToHAPCharacteristicMap:strongToStrongObjectsMapTable2];

  strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  [(_HAPAccessoryServerBTLE100 *)self setHapCharacteristicReadCompletionQueues:strongToStrongObjectsMapTable3];

  strongToStrongObjectsMapTable4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  [(_HAPAccessoryServerBTLE100 *)self setHapCharacteristicWriteCompletionQueues:strongToStrongObjectsMapTable4];

  strongToStrongObjectsMapTable5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  [(_HAPAccessoryServerBTLE100 *)self setHapCharacteristicEnableEventCompletionQueues:strongToStrongObjectsMapTable5];

  array = [MEMORY[0x277CBEB18] array];
  [(_HAPAccessoryServerBTLE100 *)self setAddRemovePairingOperationsQueue:array];

  [(_HAPAccessoryServerBTLE100 *)self setPairingService:0];
  [(_HAPAccessoryServerBTLE100 *)self setPairingsCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setPairSetupCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setPairVerifyCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setPairingFeaturesCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setIdentifyCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setModelCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setSerialNumberCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setManufacturerCharacteristic:0];
  [(_HAPAccessoryServerBTLE100 *)self setConnectionRetryCount:0];
  [(_HAPAccessoryServerBTLE100 *)self setCharacteristicDiscoveryRequestCount:0];
  [(_HAPAccessoryServerBTLE100 *)self setCharacteristicValueReadCount:0];
  [(_HAPAccessoryServerBTLE100 *)self setMetadataDiscoveryRequestCount:0];
  [(_HAPAccessoryServerBTLE100 *)self setMetadataValueReadCount:0];
  [(_HAPAccessoryServerBTLE100 *)self setAvailableInstanceID:1];
  [(_HAPAccessoryServerBTLE100 *)self setStartPairingRequested:0];
  [(_HAPAccessoryServerBTLE100 *)self setRemoveOnDisconnect:[(_HAPAccessoryServerBTLE100 *)self unpairedIdentifyRequested]^ 1];
  [(_HAPAccessoryServerBTLE100 *)self setUnpairedIdentifyRequested:0];
  connectionLifetimeTimer = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];

  if (connectionLifetimeTimer)
  {
    connectionLifetimeTimer2 = [(_HAPAccessoryServerBTLE100 *)self connectionLifetimeTimer];
    dispatch_source_cancel(connectionLifetimeTimer2);

    [(_HAPAccessoryServerBTLE100 *)self setConnectionLifetimeTimer:0];
  }

  [(_HAPAccessoryServerBTLE100 *)self setIdleConnectionTimeoutInSec:10.0];
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  [(_HAPAccessoryServerBTLE100 *)self setSecuritySession:0];
  [(HAPAccessoryServer *)self setSecuritySessionOpen:0];

  [(_HAPAccessoryServerBTLE100 *)self setSecuritySessionOpening:0];
}

- (_HAPAccessoryServerBTLE100)initWithPeripheral:(id)peripheral name:(id)name pairingUsername:(id)username statusFlags:(id)flags stateNumber:(id)number stateChanged:(BOOL)changed connectReason:(unsigned __int8)reason configNumber:(id)self0 category:(id)self1 setupHash:(id)self2 connectionIdleTime:(unsigned __int8)self3 browser:(id)self4 keyStore:(id)self5 whbStableIdentifier:(id)self6
{
  changedCopy = changed;
  v58 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  nameCopy = name;
  usernameCopy = username;
  flagsCopy = flags;
  numberCopy = number;
  v24 = flagsCopy;
  configNumberCopy = configNumber;
  categoryCopy = category;
  hashCopy = hash;
  browserCopy = browser;
  storeCopy = store;
  identifierCopy = identifier;
  v51 = categoryCopy;
  v52 = configNumberCopy;
  v49 = storeCopy;
  v50 = browserCopy;
  v48 = identifierCopy;
  if (v24)
  {
    v53.receiver = self;
    v53.super_class = _HAPAccessoryServerBTLE100;
    v44 = storeCopy;
    v43 = browserCopy;
    v31 = hashCopy;
    v32 = peripheralCopy;
    v33 = [(HAPAccessoryServerBTLE *)&v53 initWithPeripheral:peripheralCopy name:nameCopy pairingUsername:usernameCopy statusFlags:v24 stateNumber:numberCopy stateChanged:changedCopy connectReason:reason configNumber:configNumberCopy category:categoryCopy setupHash:hashCopy connectionIdleTime:time browser:v43 keyStore:v44 whbStableIdentifier:identifierCopy];
    v34 = v33;
    if (v33)
    {
      [(HAPAccessoryServerBTLE *)v33 peripheral];
      v36 = v35 = v24;
      [v36 setDelegate:v34];

      v24 = v35;
      [(_HAPAccessoryServerBTLE100 *)v34 _resetState];
      [(_HAPAccessoryServerBTLE100 *)v34 _createPrimaryAccessoryFromAdvertisementData];
    }

    selfCopy = v34;
    v38 = selfCopy;
  }

  else
  {
    selfCopy = self;
    v32 = peripheralCopy;
    v39 = objc_autoreleasePoolPush();
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v55 = v41;
      v56 = 2112;
      v57 = usernameCopy;
      _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerBTLE %@] Missing required parameter 'inStatusFlags'", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    v38 = 0;
    v31 = hashCopy;
  }

  return v38;
}

+ (id)_convertFromBTLEToHAPUUID:(id)d
{
  dCopy = d;
  v4 = +[HAPMetadata getSharedInstance];
  v5 = [v4 btleToServiceType:dCopy];
  if (!v5)
  {
    v5 = dCopy;
  }

  return v5;
}

+ (id)deserializeCharacteristicReadData:(id)data characteristicFormat:(unint64_t)format supportsAdditionalAuthentication:(BOOL)authentication error:(id *)error
{
  authenticationCopy = authentication;
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v10 = dataCopy;
  v11 = dataCopy;
  if (!authenticationCopy)
  {
    goto LABEL_9;
  }

  [dataCopy bytes];
  [v10 bytes];
  [v10 length];
  if (!TLV8GetBytes())
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:0];

    if (!v11)
    {
      goto LABEL_4;
    }

LABEL_9:
    v16 = +[HAPDataValueTransformer defaultDataValueTransformer];
    v15 = [v16 reverseTransformedValue:v11 format:format error:error];

    goto LABEL_10;
  }

LABEL_4:
  v12 = objc_autoreleasePoolPush();
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v14;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerBTLE] Expected TLV8 value because the characteristic support authorization data but was unable to parse TLV8.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6737 userInfo:0];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_10:

  return v15;
}

+ (id)serializeCharacteristicWriteValue:(id)value characteristicFormat:(unint64_t)format supportsAdditionalAuthentication:(BOOL)authentication authenticationData:(id)data error:(id *)error
{
  authenticationCopy = authentication;
  v32 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  dataCopy = data;
  v13 = +[HAPDataValueTransformer defaultDataValueTransformer];
  v28 = 0;
  v14 = [v13 transformedValue:valueCopy format:format error:&v28];
  v15 = v28;

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      LODWORD(buf[0]) = 138543874;
      *(buf + 4) = v18;
      WORD6(buf[0]) = 2112;
      *(buf + 14) = valueCopy;
      WORD3(buf[1]) = 2112;
      *(&buf[1] + 1) = v15;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerBTLE] Failed to transform the write value '%@' with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    if (error)
    {
      v19 = v15;
LABEL_6:
      v20 = 0;
      *error = v19;
      goto LABEL_21;
    }

LABEL_19:
    v20 = 0;
    goto LABEL_21;
  }

  v21 = v14;
  v22 = v21;
  if (authenticationCopy)
  {
    v23 = dataCopy;
    memset(buf, 0, sizeof(buf));
    v29 = 0;
    v30 = 0;
    TLV8BufferInit();
    [v22 bytes];
    [v22 length];
    if (TLV8BufferAppend() || v23 && [v23 length] && (objc_msgSend(v23, "bytes"), objc_msgSend(v23, "length"), TLV8BufferAppend()) || TLV8BufferDetach())
    {
      v20 = 0;
    }

    else
    {
      v20 = [MEMORY[0x277CBEA90] dataWithBytes:v30 length:v29];
      free(v30);
    }

    TLV8BufferFree();

    if (!v20)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v26;
        WORD6(buf[0]) = 2112;
        *(buf + 14) = v22;
        _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%{public}@[HAPAccessoryServerBTLE] Failed to encode characteristic write payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      if (error)
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6737 userInfo:0];
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v20 = v21;
  }

LABEL_21:

  return v20;
}

@end