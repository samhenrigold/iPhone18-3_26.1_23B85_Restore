@interface HMMTRProtocolOperationManager
+ (HMMTRProtocolOperationManager)sharedInstance;
+ (id)logCategory;
- (BOOL)_isBasicClusterOperationForBridgedDevice:(Class)device endpointID:(unint64_t)d;
- (BOOL)handleSpecialCaseCharacteristicWithOperation:(id)operation accessoryServer:(id)server clientQueue:(id)queue operationResponseHandler:(id)handler updatedAttributesHandler:(id)attributesHandler;
- (id)_processGenericResponseForOperation:(id)operation responseValues:(id)values responseError:(id)error;
- (id)_processReadResponseForOperation:(id)operation readResponseValues:(id)values readResponseError:(id)error;
- (id)_processResponseForOperation:(id)operation responseValues:(id)values responseError:(id)error;
- (id)_processWriteResponseForOperation:(id)operation writeResponseValues:(id)values writeResponseError:(id)error;
- (id)_responseTupleWithMappedValueForOperation:(id)operation responseValue:(id)value responseError:(id)error;
- (void)_addArgumentsToInvocation:(id)invocation primaryArgument:(id)argument completionHandlerArgument:(id)handlerArgument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic;
- (void)_addArgumentsToInvocation:(id)invocation primaryArgument:(id)argument expectedValues:(id)values expectedValueInterval:(id)interval completionHandlerArgument:(id)handlerArgument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic;
- (void)_addParamsToInvocation:(id)invocation paramsObject:(id)object completionHandlerArgument:(id)argument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic;
- (void)_addParamsToInvocation:(id)invocation paramsObject:(id)object expectedValues:(id)values expectedValueInterval:(id)interval completionHandlerArgument:(id)argument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic;
- (void)handleHueSaturationWriteWithOperation:(id)operation clientQueue:(id)queue operationResponseHandler:(id)handler updatedAttributesHandler:(id)attributesHandler;
- (void)handleIdentifyDeviceWriteWithOperation:(id)operation clientQueue:(id)queue operationResponseHandler:(id)handler;
- (void)handleLockTargetStateWriteWithOperation:(id)operation accessoryServer:(id)server clientQueue:(id)queue operationResponseHandler:(id)handler;
- (void)registerOperation:(id)operation accessoryServer:(id)server clientQueue:(id)queue reportDistributor:(id)distributor operationResponseHandler:(id)handler updatedAttributesHandler:(id)attributesHandler;
@end

@implementation HMMTRProtocolOperationManager

- (void)_addArgumentsToInvocation:(id)invocation primaryArgument:(id)argument expectedValues:(id)values expectedValueInterval:(id)interval completionHandlerArgument:(id)handlerArgument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic
{
  v77 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  argumentCopy = argument;
  valuesCopy = values;
  intervalCopy = interval;
  handlerArgumentCopy = handlerArgument;
  v63 = handlerArgumentCopy;
  descriptorCopy = descriptor;
  characteristicCopy = characteristic;
  [HMMTRHAPService chipPluginServiceForCharacteristic:characteristicCopy];
  v57 = v56 = descriptorCopy;
  if (!v57)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v21 = characteristicCopy;
      v23 = v22 = handlerArgumentCopy;
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Trying send a message for a characteristic that does not belong to a service owned by HomeKitMatter", buf, 0xCu);

      handlerArgumentCopy = v22;
      characteristicCopy = v21;
    }

    objc_autoreleasePoolPop(v18);
    descriptorCopy = v56;
  }

  arguments = [descriptorCopy arguments];
  primaryArgIndex = [descriptorCopy primaryArgIndex];
  if ([descriptorCopy syncWriteFunc])
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  if (primaryArgIndex)
  {
    ++v26;
  }

  if (handlerArgumentCopy)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = v26;
  }

  if ([arguments count])
  {
    v27 = v27 + [arguments count];
  }

  v28 = invocationCopy;
  v29 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v32 = v54 = arguments;
    NSStringFromSelector([invocationCopy selector]);
    v33 = v52 = handlerArgumentCopy;
    endpoint = [v57 endpoint];
    [MEMORY[0x277CCABB0] numberWithInt:v27];
    v51 = v29;
    v36 = v35 = primaryArgIndex;
    *buf = 138544386;
    *&buf[4] = v32;
    v69 = 2112;
    v70 = characteristicCopy;
    v71 = 2112;
    v72 = v33;
    v73 = 2112;
    v74 = endpoint;
    v75 = 2112;
    v76 = v36;
    _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic: (%@), selector: %@, endpoint: %@, numberOfArguments = %@", buf, 0x34u);

    primaryArgIndex = v35;
    v29 = v51;

    v28 = invocationCopy;
    handlerArgumentCopy = v52;

    arguments = v54;
  }

  v55 = characteristicCopy;

  objc_autoreleasePoolPop(v29);
  v37 = v27;
  if (handlerArgumentCopy)
  {
    [v28 setArgument:&v63 atIndex:v27 + 1];
    v37 = v27 - 1;
  }

  [v28 setArgument:&intervalCopy atIndex:v37 + 1];
  if ([descriptorCopy syncWriteFunc])
  {
    v38 = v37 - 1;
  }

  else
  {
    v38 = v37 - 2;
    [v28 setArgument:&valuesCopy atIndex:v37];
  }

  v53 = primaryArgIndex;
  if (primaryArgIndex)
  {
    integerValue = [primaryArgIndex integerValue];
    [v28 setArgument:&argumentCopy atIndex:integerValue + 2];
  }

  else
  {
    integerValue = -1;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v40 = arguments;
  allKeys = [arguments allKeys];
  v42 = [allKeys countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v60;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v60 != v44)
        {
          objc_enumerationMutation(allKeys);
        }

        v46 = *(*(&v59 + 1) + 8 * i);
        integerValue2 = [v46 integerValue];
        if (integerValue2 != v38 && integerValue2 != integerValue)
        {
          v49 = integerValue2;
          *buf = [v40 objectForKey:v46];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [*buf isEqualToString:@"NULL"])
          {
            v50 = *buf;
            *buf = 0;
          }

          v28 = invocationCopy;
          [invocationCopy setArgument:buf atIndex:v49 + 2];
        }
      }

      v43 = [allKeys countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v43);
  }
}

- (void)_addArgumentsToInvocation:(id)invocation primaryArgument:(id)argument completionHandlerArgument:(id)handlerArgument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic
{
  v64 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  argumentCopy = argument;
  handlerArgumentCopy = handlerArgument;
  v52 = handlerArgumentCopy;
  descriptorCopy = descriptor;
  characteristicCopy = characteristic;
  v45 = [HMMTRHAPService chipPluginServiceForCharacteristic:?];
  if (!v45)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v17;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Trying send a message for a characteristic that does not belong to a service owned by HomeKitMatter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  arguments = [descriptorCopy arguments];
  primaryArgIndex = [descriptorCopy primaryArgIndex];
  v20 = primaryArgIndex;
  if (handlerArgumentCopy)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if (primaryArgIndex)
  {
    v22 = v21;
  }

  else
  {
    v22 = handlerArgumentCopy != 0;
  }

  if ([arguments count])
  {
    v22 = v22 + [arguments count];
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v25 = HMFGetOSLogHandle();
  v43 = descriptorCopy;
  v44 = v20;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    v27 = NSStringFromSelector([invocationCopy selector]);
    [v45 endpoint];
    v29 = v28 = handlerArgumentCopy;
    v30 = [MEMORY[0x277CCABB0] numberWithInt:v22];
    *buf = 138544386;
    *&buf[4] = v26;
    v56 = 2112;
    v57 = characteristicCopy;
    v58 = 2112;
    v59 = v27;
    v60 = 2112;
    v61 = v29;
    v62 = 2112;
    v63 = v30;
    _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic: (%@), selector: %@, endpoint: %@, numberOfArguments = %@", buf, 0x34u);

    handlerArgumentCopy = v28;
    v20 = v44;
  }

  objc_autoreleasePoolPop(v23);
  if (handlerArgumentCopy)
  {
    v31 = v22 - 1;
    [invocationCopy setArgument:&v52 atIndex:v31 + 2];
    if (v20)
    {
LABEL_17:
      integerValue = [v20 integerValue];
      [invocationCopy setArgument:&argumentCopy atIndex:integerValue + 2];
      goto LABEL_20;
    }
  }

  else
  {
    v31 = -1;
    if (v20)
    {
      goto LABEL_17;
    }
  }

  integerValue = -1;
LABEL_20:
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  allKeys = [arguments allKeys];
  v34 = [allKeys countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v49;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v49 != v36)
        {
          objc_enumerationMutation(allKeys);
        }

        v38 = *(*(&v48 + 1) + 8 * i);
        integerValue2 = [v38 integerValue];
        if (integerValue2 != v31 && integerValue2 != integerValue)
        {
          v41 = integerValue2;
          *buf = [arguments objectForKey:v38];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [*buf isEqualToString:@"NULL"])
          {
            v42 = *buf;
            *buf = 0;
          }

          [invocationCopy setArgument:buf atIndex:v41 + 2];
        }
      }

      v35 = [allKeys countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v35);
  }
}

- (void)_addParamsToInvocation:(id)invocation paramsObject:(id)object expectedValues:(id)values expectedValueInterval:(id)interval completionHandlerArgument:(id)argument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic
{
  v69 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  objectCopy = object;
  v59 = objectCopy;
  valuesCopy = values;
  intervalCopy = interval;
  argumentCopy = argument;
  descriptorCopy = descriptor;
  selfCopy = self;
  characteristicCopy = characteristic;
  paramsIndex = [descriptorCopy paramsIndex];
  integerValue = [paramsIndex integerValue];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [descriptorCopy paramsArguments];
  v50 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v50)
  {
    v19 = *v53;
    v47 = descriptorCopy;
    v48 = *v53;
    v45 = selfCopy;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v52 + 1) + 8 * i);
        v22 = NSSelectorFromString(v21);
        paramsArguments = [descriptorCopy paramsArguments];
        v51 = [paramsArguments objectForKey:v21];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v51 isEqualToString:@"NULL"])
        {
          v24 = objc_autoreleasePoolPush();
          v25 = selfCopy;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543362;
            v61 = v27;
            _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@NULL argument requested, setting arg to nil.", buf, 0xCu);

            v19 = v48;
          }

          objc_autoreleasePoolPop(v24);
          v28 = v51;
          v51 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          v29 = [objectCopy methodSignatureForSelector:v22];
          if (v29)
          {
            v30 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v29];
            [v30 setSelector:v22];
            [v30 setArgument:&v51 atIndex:2];
            [v30 invokeWithTarget:objectCopy];

            descriptorCopy = v47;
          }

          else
          {
            v37 = objc_autoreleasePoolPush();
            v38 = selfCopy;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = HMFGetLogIdentifier();
              paramsClass = [descriptorCopy paramsClass];
              instanceID = [characteristicCopy instanceID];
              *buf = 138544130;
              v61 = v40;
              v62 = 2112;
              v63 = v21;
              v64 = 2112;
              v65 = paramsClass;
              v19 = v48;
              v66 = 2112;
              v67 = instanceID;
              _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get Signature for Property %@ for Params of type %@ for characteristic %@", buf, 0x2Au);

              descriptorCopy = v47;
              selfCopy = v45;
            }

            objc_autoreleasePoolPop(v37);
          }
        }

        else
        {
          v31 = objc_autoreleasePoolPush();
          v32 = selfCopy;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = HMFGetLogIdentifier();
            paramsClass2 = [descriptorCopy paramsClass];
            instanceID2 = [characteristicCopy instanceID];
            *buf = 138544130;
            v61 = v34;
            v62 = 2112;
            v63 = v21;
            v64 = 2112;
            v65 = paramsClass2;
            v19 = v48;
            v66 = 2112;
            v67 = instanceID2;
            _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to set Property %@ for Params of type %@ for characteristic %@", buf, 0x2Au);

            selfCopy = v45;
          }

          objc_autoreleasePoolPop(v31);
        }
      }

      v50 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v50);
  }

  [invocationCopy setArgument:&v59 atIndex:integerValue + 2];
  [invocationCopy setArgument:&valuesCopy atIndex:integerValue + 3];
  [invocationCopy setArgument:&intervalCopy atIndex:integerValue + 4];
  [invocationCopy setArgument:&argumentCopy atIndex:integerValue + 5];
}

- (void)_addParamsToInvocation:(id)invocation paramsObject:(id)object completionHandlerArgument:(id)argument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic
{
  v65 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  objectCopy = object;
  selfCopy = self;
  v14 = objectCopy;
  v55 = objectCopy;
  argumentCopy = argument;
  descriptorCopy = descriptor;
  characteristicCopy = characteristic;
  paramsIndex = [descriptorCopy paramsIndex];
  integerValue = [paramsIndex integerValue];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [descriptorCopy paramsArguments];
  v48 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
  if (v48)
  {
    v47 = *v51;
    v45 = v14;
    selfCopy2 = self;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v51 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v50 + 1) + 8 * i);
        v19 = NSSelectorFromString(v18);
        paramsArguments = [descriptorCopy paramsArguments];
        v49 = [paramsArguments objectForKey:v18];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v49 isEqualToString:@"NULL"])
        {
          v21 = objc_autoreleasePoolPush();
          v22 = selfCopy;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = HMFGetLogIdentifier();
            *buf = 138543362;
            v57 = v24;
            _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_DEBUG, "%{public}@NULL argument requested, setting arg to nil.", buf, 0xCu);

            v14 = v45;
          }

          objc_autoreleasePoolPop(v21);
          v25 = v49;
          v49 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          v26 = [v14 methodSignatureForSelector:v19];
          if (v26)
          {
            v27 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v26];
            [v27 setSelector:v19];
            [v27 setArgument:&v49 atIndex:2];
            [v27 invokeWithTarget:v14];
          }

          else
          {
            v34 = objc_autoreleasePoolPush();
            v35 = selfCopy;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = HMFGetLogIdentifier();
              paramsClass = [descriptorCopy paramsClass];
              [characteristicCopy instanceID];
              v40 = v39 = descriptorCopy;
              *buf = 138544130;
              v57 = v37;
              v58 = 2112;
              v59 = v18;
              v60 = 2112;
              v61 = paramsClass;
              v14 = v45;
              v62 = 2112;
              v63 = v40;
              _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get Signature for Property %@ for Params of type %@ for characteristic %@", buf, 0x2Au);

              descriptorCopy = v39;
              selfCopy = selfCopy2;
            }

            objc_autoreleasePoolPop(v34);
          }
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          v29 = selfCopy;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            paramsClass2 = [descriptorCopy paramsClass];
            instanceID = [characteristicCopy instanceID];
            *buf = 138544130;
            v57 = v31;
            v58 = 2112;
            v59 = v18;
            v60 = 2112;
            v61 = paramsClass2;
            v14 = v45;
            v62 = 2112;
            v63 = instanceID;
            _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to set Property %@ for Params of type %@ for characteristic %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v28);
        }
      }

      v48 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
    }

    while (v48);
  }

  [invocationCopy setArgument:&v55 atIndex:integerValue + 2];
  [invocationCopy setArgument:&argumentCopy atIndex:integerValue + 3];
}

- (id)_processReadResponseForOperation:(id)operation readResponseValues:(id)values readResponseError:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  valuesCopy = values;
  errorCopy = error;
  characteristic = [operationCopy characteristic];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    instanceID = [characteristic instanceID];
    v24 = 138544130;
    v25 = v15;
    v26 = 2112;
    v27 = instanceID;
    v28 = 2112;
    v29 = valuesCopy;
    v30 = 2112;
    v31 = errorCopy;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Processing read response for characteristic %@. Value: %@ Error: %@", &v24, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  if ([errorCopy code] == 2)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = characteristic;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Could not find description for characteristic %@, falling back to localized version", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:characteristic error:0];
  }

  else
  {
    v21 = [(HMMTRProtocolOperationManager *)selfCopy _responseTupleWithMappedValueForOperation:operationCopy responseValue:valuesCopy responseError:errorCopy];
  }

  v22 = v21;

  return v22;
}

- (id)_responseTupleWithMappedValueForOperation:(id)operation responseValue:(id)value responseError:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  valueCopy = value;
  errorCopy = error;
  characteristic = [operationCopy characteristic];
  if (errorCopy)
  {
    v12 = MEMORY[0x277CCA9B8];
    domain = [errorCopy domain];
    v14 = [v12 errorWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), 0}];
  }

  else
  {
    if (valueCopy)
    {
      characteristicDescription = [operationCopy characteristicDescription];
      mapValue = [characteristicDescription mapValue];

      if (mapValue)
      {
        characteristicDescription2 = [operationCopy characteristicDescription];
        mapValue2 = [characteristicDescription2 mapValue];
        v19 = (mapValue2)[2](mapValue2, valueCopy);
        [characteristic setValue:v19];

        v20 = objc_autoreleasePoolPush();
        selfCopy = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = HMFGetLogIdentifier();
          value = [characteristic value];
          instanceID = [characteristic instanceID];
          v28 = 138544130;
          v29 = v23;
          v30 = 2112;
          v31 = valueCopy;
          v32 = 2112;
          v33 = value;
          v34 = 2112;
          v35 = instanceID;
          _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Mapped value from dictionary %@ to %@ for instanceID %@.", &v28, 0x2Au);
        }

        objc_autoreleasePoolPop(v20);
      }

      else
      {
        [characteristic setValue:valueCopy];
      }
    }

    v14 = 0;
  }

  v26 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:characteristic error:v14];

  return v26;
}

- (id)_processWriteResponseForOperation:(id)operation writeResponseValues:(id)values writeResponseError:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  valuesCopy = values;
  errorCopy = error;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    characteristic = [operationCopy characteristic];
    instanceID = [characteristic instanceID];
    value = [operationCopy value];
    v26 = 138544130;
    v27 = v14;
    v28 = 2112;
    v29 = instanceID;
    v30 = 2112;
    v31 = value;
    v32 = 2112;
    v33 = errorCopy;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory received write response for characteristic %@. Targeted value: %@\nError: %@", &v26, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if (errorCopy)
  {
    v18 = MEMORY[0x277CCA9B8];
    domain = [errorCopy domain];
    v20 = [v18 errorWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), 0}];
  }

  else
  {
    domain = [operationCopy value];
    characteristic2 = [operationCopy characteristic];
    [characteristic2 setValue:domain];

    v20 = 0;
  }

  v22 = MEMORY[0x277CFEA90];
  characteristic3 = [operationCopy characteristic];
  v24 = [v22 responseTupleForCharacteristic:characteristic3 error:v20];

  return v24;
}

- (id)_processGenericResponseForOperation:(id)operation responseValues:(id)values responseError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  valuesCopy = values;
  errorCopy = error;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543874;
    v18 = v14;
    v19 = 2112;
    v20 = errorCopy;
    v21 = 2112;
    v22 = valuesCopy;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_DEBUG, "%{public}@CHIP Accessory received response. Error: %@ Response %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMMTRProtocolOperationManager *)selfCopy _responseTupleWithMappedValueForOperation:operationCopy responseValue:valuesCopy responseError:errorCopy];

  return v15;
}

- (id)_processResponseForOperation:(id)operation responseValues:(id)values responseError:(id)error
{
  operationCopy = operation;
  valuesCopy = values;
  errorCopy = error;
  type = [operationCopy type];
  v12 = 0;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_12;
      }

      v18 = [(HMMTRProtocolOperationManager *)self _processWriteResponseForOperation:operationCopy writeResponseValues:valuesCopy writeResponseError:errorCopy];
      goto LABEL_11;
    }
  }

  else
  {
    if ((type - 2) < 2)
    {
      characteristic = [operationCopy characteristic];

      if (characteristic)
      {
        characteristic2 = [operationCopy characteristic];
        v15 = [characteristic2 copy];

        characteristic3 = [operationCopy characteristic];
        service = [characteristic3 service];
        [v15 setService:service];

        [operationCopy setCharacteristic:v15];
      }

      v18 = [(HMMTRProtocolOperationManager *)self _processGenericResponseForOperation:operationCopy responseValues:valuesCopy responseError:errorCopy];
      goto LABEL_11;
    }

    if (type != 4)
    {
      goto LABEL_12;
    }
  }

  v18 = [(HMMTRProtocolOperationManager *)self _processReadResponseForOperation:operationCopy readResponseValues:valuesCopy readResponseError:errorCopy];
LABEL_11:
  v12 = v18;
LABEL_12:

  return v12;
}

- (void)registerOperation:(id)operation accessoryServer:(id)server clientQueue:(id)queue reportDistributor:(id)distributor operationResponseHandler:(id)handler updatedAttributesHandler:(id)attributesHandler
{
  v137 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  serverCopy = server;
  queueCopy = queue;
  distributorCopy = distributor;
  handlerCopy = handler;
  attributesHandlerCopy = attributesHandler;
  v111 = serverCopy;
  if (![(HMMTRProtocolOperationManager *)self handleSpecialCaseCharacteristicWithOperation:operationCopy accessoryServer:serverCopy clientQueue:queueCopy operationResponseHandler:handlerCopy updatedAttributesHandler:attributesHandlerCopy])
  {
    characteristicDescription = [operationCopy characteristicDescription];
    v113 = characteristicDescription;
    v20 = characteristicDescription;
    if (!characteristicDescription)
    {
      v23 = 2;
      goto LABEL_21;
    }

    if (-[HMMTRProtocolOperationManager _isBasicClusterOperationForBridgedDevice:endpointID:](self, "_isBasicClusterOperationForBridgedDevice:endpointID:", [characteristicDescription clusterClass], objc_msgSend(operationCopy, "endpoint")))
    {
      v21 = objc_alloc(MEMORY[0x277CD5250]);
      matterDevice = [operationCopy matterDevice];
      v108 = [v21 initWithDevice:matterDevice endpoint:objc_msgSend(operationCopy queue:{"endpoint"), queueCopy}];
      clusterID = &unk_283EE7F50;
    }

    else
    {
      v24 = objc_alloc([v20 clusterClass]);
      matterDevice2 = [operationCopy matterDevice];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(operationCopy, "endpoint")}];
      v108 = [v24 initWithDevice:matterDevice2 endpointID:v26 queue:queueCopy];

      matterDevice = [operationCopy characteristicDescription];
      clusterID = [matterDevice clusterID];
    }

    characteristicDescription2 = [operationCopy characteristicDescription];
    attributeID = [characteristicDescription2 attributeID];

    [v113 clusterSelector];
    v28 = v108;
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v108 methodSignatureForSelector:{objc_msgSend(v113, "clusterSelector")}], (v110 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v110 = 0;
LABEL_16:

      if (v110)
      {
        v32 = 0;
LABEL_105:

        goto LABEL_106;
      }

      v33 = objc_autoreleasePoolPush();
      selfCopy = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = NSStringFromSelector([v113 clusterSelector]);
        clusterClass = [v113 clusterClass];
        *buf = 138543874;
        *&buf[4] = v36;
        v131 = 2112;
        v132 = v37;
        v133 = 2112;
        v134 = clusterClass;
        _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@CHIP Accessory couldn't get signature for Selector:%@ on Cluster:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      v23 = 1;
LABEL_21:
      v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTRProtocolOperationErrorDomain" code:v23 userInfo:0];
      v32 = v39;
      v110 = 0;
      if (handlerCopy && v39)
      {
        v109 = [(HMMTRProtocolOperationManager *)self _processResponseForOperation:operationCopy responseValues:0 responseError:v39];
        handlerCopy[2](handlerCopy, v109);
        v110 = 0;
      }

      goto LABEL_105;
    }

    v105 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:?];
    [v105 setSelector:{objc_msgSend(v113, "clusterSelector")}];
    objc_initWeak(&location, self);
    type = [operationCopy type];
    if (type != 1 || ([operationCopy matterDevice], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      type2 = [operationCopy type];
      if (type == 1)
      {
        v31 = type2 == 3;

        if (!v31)
        {
LABEL_13:
          if ([operationCopy type] != 1)
          {
            v117[0] = MEMORY[0x277D85DD0];
            v117[1] = 3221225472;
            v117[2] = __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_2;
            v117[3] = &unk_2786EDBB8;
            objc_copyWeak(&v121, &location);
            v117[4] = self;
            v118 = operationCopy;
            v120 = handlerCopy;
            v119 = queueCopy;
            v104 = MEMORY[0x2318887D0](v117);
            v100 = MEMORY[0x2318887D0](v104);

            objc_destroyWeak(&v121);
            goto LABEL_28;
          }

          v122[0] = MEMORY[0x277D85DD0];
          v122[1] = 3221225472;
          v122[2] = __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_119;
          v122[3] = &unk_2786EF8C8;
          v122[4] = self;
          v123 = operationCopy;
          v125 = handlerCopy;
          v124 = queueCopy;
          v100 = MEMORY[0x2318887D0](v122);

LABEL_26:
          v104 = 0;
LABEL_28:
          v40 = v113;
          v98 = objc_alloc_init([v113 paramsClass]);
          value = [operationCopy value];
          v116 = objc_alloc_init(MEMORY[0x277CD54D8]);
          matterDevice3 = [operationCopy matterDevice];
          if (matterDevice3)
          {
            v42 = [operationCopy type] == 4;

            v40 = v113;
            if (v42)
            {
              [v105 setArgument:&v116 atIndex:2];
LABEL_44:
              v97 = 0;
              v99 = 0;
              goto LABEL_74;
            }
          }

          matterDevice4 = [operationCopy matterDevice];
          if (!matterDevice4 || (v44 = [operationCopy type] == 1, matterDevice4, v40 = v113, !v44))
          {
            matterDevice5 = [operationCopy matterDevice];
            if (matterDevice5)
            {
              v55 = [operationCopy type] == 2;

              v40 = v113;
              if (!v55)
              {
                context = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v58 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  v59 = HMFGetLogIdentifier();
                  characteristic = [operationCopy characteristic];
                  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(operationCopy, "type")}];
                  *buf = 138543874;
                  *&buf[4] = v59;
                  v131 = 2112;
                  v132 = characteristic;
                  v133 = 2112;
                  v134 = v61;
                  _os_log_impl(&dword_22AEAE000, v58, OS_LOG_TYPE_ERROR, "%{public}@Unexpected operation for characteristic %@: %@ with MTRDevice, not building arguments", buf, 0x20u);
                }

                objc_autoreleasePoolPop(context);
                goto LABEL_44;
              }
            }

            if ([v40 paramsClass])
            {
              characteristic2 = [operationCopy characteristic];
              [(HMMTRProtocolOperationManager *)self _addParamsToInvocation:v105 paramsObject:v98 completionHandlerArgument:v100 characteristicDescriptor:v40 forCharacteristic:characteristic2];
            }

            else
            {
              if ([operationCopy type] == 1 && value)
              {
                mapValue = [v40 mapValue];
                v63 = mapValue == 0;

                if (!v63)
                {
                  mapValue2 = [v113 mapValue];
                  value2 = [operationCopy value];
                  v66 = (mapValue2)[2](mapValue2, value2);

                  value = v66;
                }

                v40 = v113;
              }

              characteristic2 = [operationCopy characteristic];
              [(HMMTRProtocolOperationManager *)self _addArgumentsToInvocation:v105 primaryArgument:value completionHandlerArgument:v100 characteristicDescriptor:v40 forCharacteristic:characteristic2];
            }

            v97 = 0;
            v99 = 0;
LABEL_73:

LABEL_74:
            v76 = objc_autoreleasePoolPush();
            contexta = self;
            v77 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
            {
              v96 = v76;
              v78 = HMFGetLogIdentifier();
              characteristic3 = [operationCopy characteristic];
              v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(operationCopy, "type")}];
              v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(operationCopy, "endpoint")}];
              *buf = 138544130;
              *&buf[4] = v78;
              v131 = 2112;
              v132 = characteristic3;
              v133 = 2112;
              v134 = v80;
              v135 = 2112;
              v136 = v81;
              _os_log_impl(&dword_22AEAE000, v77, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory sending request for characteristic %@ of type %@ on endpoint %@", buf, 0x2Au);

              v76 = v96;
            }

            objc_autoreleasePoolPop(v76);
            if ([operationCopy type] == 4 && ((objc_msgSend(operationCopy, "matterDevice"), (v82 = objc_claimAutoreleasedReturnValue()) != 0) ? (v83 = attributeID == 0) : (v83 = 1), v83 ? (v84 = 0) : (v84 = 1), v82, v84))
            {
              v85 = [HMMTRDeviceReader alloc];
              matterDevice6 = [operationCopy matterDevice];
              v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(operationCopy, "endpoint")}];
              v88 = [(HMMTRDeviceReader *)v85 initWithClientQueue:queueCopy distributor:distributorCopy device:matterDevice6 endpointID:v87 clusterID:clusterID attributeID:attributeID];

              v114[0] = MEMORY[0x277D85DD0];
              v114[1] = 3221225472;
              v114[2] = __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_125;
              v114[3] = &unk_2786EDBE0;
              v115 = v104;
              [(HMMTRDeviceReader *)v88 readAttributeWithCompletion:v114];
            }

            else
            {
              [v105 invokeWithTarget:v108];
            }

            matterDevice7 = [operationCopy matterDevice];

            if (matterDevice7)
            {
              if ([operationCopy type] == 4 && !attributeID)
              {
                *buf = 0;
                [v105 getReturnValue:buf];
                v90 = *buf;
                if (v90)
                {
                  v91 = 0;
                }

                else
                {
                  v91 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
                }

                (v104)[2](v104, v90, v91);

LABEL_102:
                v95 = 0;
                goto LABEL_103;
              }

              if ([operationCopy type] == 1)
              {
                v92 = [v113 syncWriteFunc] ^ 1;
                if (!handlerCopy)
                {
                  LOBYTE(v92) = 1;
                }

                if ((v92 & 1) == 0)
                {
                  v93 = [(HMMTRProtocolOperationManager *)contexta _processResponseForOperation:operationCopy responseValues:0 responseError:0];
                  handlerCopy[2](handlerCopy, v93);
                }

                goto LABEL_102;
              }
            }

            if (handlerCopy && [operationCopy type] == 1)
            {
              v94 = [(HMMTRProtocolOperationManager *)contexta _processResponseForOperation:operationCopy responseValues:0 responseError:0];
              handlerCopy[2](handlerCopy, v94);
            }

            v95 = 1;
LABEL_103:

            objc_destroyWeak(&location);
            if ((v95 & 1) == 0)
            {

              v32 = 0;
              goto LABEL_105;
            }

            goto LABEL_16;
          }

          mapWriteValueToExpectedValues = [v113 mapWriteValueToExpectedValues];

          if (mapWriteValueToExpectedValues)
          {
            mapWriteValueToExpectedValues2 = [v113 mapWriteValueToExpectedValues];
            endpoint = [operationCopy endpoint];
            value3 = [operationCopy value];
            v99 = (mapWriteValueToExpectedValues2)[2](mapWriteValueToExpectedValues2, endpoint, value3);

            v49 = [v99 count];
            v50 = v113;
            if (!v49)
            {
              goto LABEL_55;
            }

            v51 = [v99 objectAtIndexedSubscript:0];
            v52 = [v51 objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
            v53 = v52 == 0;

            if (v53)
            {
              v49 = 0;
            }

            else
            {
              v49 = v99;
              v99 = v49;
            }
          }

          else
          {
            v49 = 0;
            v99 = 0;
          }

          v50 = v113;
LABEL_55:
          v67 = &unk_283EE7F20;
          v97 = v49;
          if (!v49)
          {
            v67 = 0;
          }

          characteristic2 = v67;
          if ([v50 paramsClass])
          {
            characteristic4 = [operationCopy characteristic];
            [(HMMTRProtocolOperationManager *)self _addParamsToInvocation:v105 paramsObject:v98 expectedValues:v97 expectedValueInterval:characteristic2 completionHandlerArgument:v100 characteristicDescriptor:v50 forCharacteristic:characteristic4];
LABEL_72:

            goto LABEL_73;
          }

          if (!value)
          {
            value = 0;
            goto LABEL_68;
          }

          if ([v50 syncWriteFunc] && objc_msgSend(v99, "count") == 1)
          {
            mapValue4 = [v99 objectAtIndexedSubscript:0];
            v70 = [mapValue4 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
            value4 = value;
          }

          else
          {
            mapValue3 = [v50 mapValue];

            if (!mapValue3)
            {
LABEL_66:
              v50 = v113;
LABEL_68:
              syncWriteFunc = [v50 syncWriteFunc];
              characteristic5 = [operationCopy characteristic];
              characteristic4 = characteristic5;
              if (syncWriteFunc)
              {
                v75 = 0;
              }

              else
              {
                v75 = v100;
              }

              [(HMMTRProtocolOperationManager *)self _addArgumentsToInvocation:v105 primaryArgument:value expectedValues:v97 expectedValueInterval:characteristic2 completionHandlerArgument:v75 characteristicDescriptor:v50 forCharacteristic:characteristic5];
              goto LABEL_72;
            }

            mapValue4 = [v113 mapValue];
            value4 = [operationCopy value];
            v70 = (mapValue4)[2](mapValue4, value4);
          }

          value = v70;
          goto LABEL_66;
        }
      }

      else if (type2 != 3)
      {
        goto LABEL_13;
      }
    }

    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke;
    v126[3] = &unk_2786EDB90;
    objc_copyWeak(&v128, &location);
    v126[4] = self;
    v127 = operationCopy;
    v100 = MEMORY[0x2318887D0](v126);

    objc_destroyWeak(&v128);
    goto LABEL_26;
  }

LABEL_106:
}

void __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@CHIP Accessory received response. Error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (WeakRetained)
  {
    v9 = [WeakRetained _processResponseForOperation:*(a1 + 40) responseValues:0 responseError:v3];
  }
}

void __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_119(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@CHIP Accessory received response. Error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) _processResponseForOperation:*(a1 + 40) responseValues:0 responseError:v3];
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_120;
    v11[3] = &unk_2786EF5A8;
    v13 = v9;
    v12 = v8;
    dispatch_async(v10, v11);
  }
}

void __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@CHIP Accessory received response. Values: %@ Error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (WeakRetained)
  {
    v12 = [WeakRetained _processResponseForOperation:*(a1 + 40) responseValues:v5 responseError:v6];
    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = *(a1 + 48);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_121;
      v15[3] = &unk_2786EF5A8;
      v17 = v13;
      v16 = v12;
      dispatch_async(v14, v15);
    }
  }
}

void __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_125(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 marker:2114];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)handleLockTargetStateWriteWithOperation:(id)operation accessoryServer:(id)server clientQueue:(id)queue operationResponseHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  serverCopy = server;
  queueCopy = queue;
  handlerCopy = handler;
  writePrimaryRequestTuple = [operationCopy writePrimaryRequestTuple];
  hmdAccessoryUUID = [writePrimaryRequestTuple hmdAccessoryUUID];

  if (hmdAccessoryUUID && ([operationCopy matterDevice], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v17 = [HMMTRSyncClusterDoorLock alloc];
    matterDevice = [operationCopy matterDevice];
    v19 = -[HMMTRSyncClusterDoorLock initWithDevice:endpoint:queue:accessoryServer:](v17, "initWithDevice:endpoint:queue:accessoryServer:", matterDevice, [operationCopy endpoint], queueCopy, serverCopy);

    value = [operationCopy value];
    integerValue = [value integerValue];

    if (integerValue == 1)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __126__HMMTRProtocolOperationManager_handleLockTargetStateWriteWithOperation_accessoryServer_clientQueue_operationResponseHandler___block_invoke_2;
      v35[3] = &unk_2786F0C10;
      v35[4] = self;
      v36 = operationCopy;
      v37 = handlerCopy;
      [(HMMTRSyncClusterDoorLock *)v19 lockDoorWithAccessoryUUID:hmdAccessoryUUID completionHandler:v35];

      v22 = v36;
      goto LABEL_10;
    }

    if (!integerValue)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __126__HMMTRProtocolOperationManager_handleLockTargetStateWriteWithOperation_accessoryServer_clientQueue_operationResponseHandler___block_invoke;
      v38[3] = &unk_2786F0C10;
      v38[4] = self;
      v39 = operationCopy;
      v40 = handlerCopy;
      [(HMMTRSyncClusterDoorLock *)v19 unlockDoorWithAccessoryUUID:hmdAccessoryUUID completionHandler:v38];

      v22 = v39;
LABEL_10:

      goto LABEL_14;
    }

    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      [operationCopy value];
      v33 = v34 = v29;
      *buf = 138543618;
      v42 = v32;
      v43 = 2112;
      v44 = v33;
      _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unhandled write value for lock target state: %@", buf, 0x16u);

      v29 = v34;
    }

    objc_autoreleasePoolPop(v29);
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      matterDevice2 = [operationCopy matterDevice];
      *buf = 138543874;
      v42 = v26;
      v43 = 2112;
      v44 = hmdAccessoryUUID;
      v45 = 2112;
      v46 = matterDevice2;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@A required parameter was not included in write request for door lock target state. accessoryUUID: %@, matterDevice: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:3 userInfo:0];
    v28 = [(HMMTRProtocolOperationManager *)selfCopy2 _processWriteResponseForOperation:operationCopy writeResponseValues:0 writeResponseError:v19];
    (*(handlerCopy + 2))(handlerCopy, v28);
  }

LABEL_14:
}

uint64_t __126__HMMTRProtocolOperationManager_handleLockTargetStateWriteWithOperation_accessoryServer_clientQueue_operationResponseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _processWriteResponseForOperation:*(a1 + 40) writeResponseValues:0 writeResponseError:a2];
  v4 = *(a1 + 48);
  if (v4)
  {
    v6 = v3;
    v4 = (*(v4 + 16))();
    v3 = v6;
  }

  return MEMORY[0x2821F96F8](v4, v3);
}

uint64_t __126__HMMTRProtocolOperationManager_handleLockTargetStateWriteWithOperation_accessoryServer_clientQueue_operationResponseHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _processWriteResponseForOperation:*(a1 + 40) writeResponseValues:0 writeResponseError:a2];
  v4 = *(a1 + 48);
  if (v4)
  {
    v6 = v3;
    v4 = (*(v4 + 16))();
    v3 = v6;
  }

  return MEMORY[0x2821F96F8](v4, v3);
}

- (void)handleHueSaturationWriteWithOperation:(id)operation clientQueue:(id)queue operationResponseHandler:(id)handler updatedAttributesHandler:(id)attributesHandler
{
  v144 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  queueCopy = queue;
  handlerCopy = handler;
  attributesHandlerCopy = attributesHandler;
  matterDevice = [operationCopy matterDevice];

  if (matterDevice)
  {
    characteristicDescription = [operationCopy characteristicDescription];
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke;
    v131[3] = &unk_2786EF5A8;
    v16 = operationCopy;
    v132 = v16;
    v133 = attributesHandlerCopy;
    v118 = MEMORY[0x2318887D0](v131);
    v17 = objc_alloc([characteristicDescription clusterClass]);
    matterDevice2 = [v16 matterDevice];
    v117 = [v17 initWithDevice:matterDevice2 endpoint:objc_msgSend(v16 queue:{"endpoint"), queueCopy}];

    mapWriteValueToExpectedValues = [characteristicDescription mapWriteValueToExpectedValues];

    if (mapWriteValueToExpectedValues)
    {
      mapWriteValueToExpectedValues2 = [characteristicDescription mapWriteValueToExpectedValues];
      endpoint = [v16 endpoint];
      value = [v16 value];
      v23 = (mapWriteValueToExpectedValues2)[2](mapWriteValueToExpectedValues2, endpoint, value);

      v24 = [v23 count];
      if (v24)
      {
        v25 = [v23 objectAtIndexedSubscript:0];
        [v25 objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
        v27 = v26 = v23;

        if (v27)
        {
          v24 = v26;
          v115 = v24;
        }

        else
        {
          v115 = v26;
          v24 = 0;
        }
      }

      else
      {
        v115 = v23;
      }
    }

    else
    {
      v24 = 0;
      v115 = 0;
    }

    v33 = &unk_283EE7F20;
    v116 = v24;
    if (!v24)
    {
      v33 = 0;
    }

    v34 = v33;
    handlingType = [v16 handlingType];
    v36 = v118;
    if (handlingType == 2)
    {
      v101 = operationCopy;
      v104 = attributesHandlerCopy;
      v112 = queueCopy;
      v114 = v34;
      v109 = handlerCopy;
      v58 = objc_alloc_init(MEMORY[0x277CD52D0]);
      characteristic = [v16 characteristic];
      type = [characteristic type];
      v61 = [type isEqualToString:@"00000013-0000-1000-8000-0026BB765291"];

      mapValue = [characteristicDescription mapValue];
      writePrimaryRequestTuple = [v16 writePrimaryRequestTuple];
      value2 = [writePrimaryRequestTuple value];
      v65 = (mapValue)[2](mapValue, value2);
      if (v61)
      {
        [v58 setHue:v65];

        writeSecondaryRequestTuple = [v16 writeSecondaryRequestTuple];
        value3 = [writeSecondaryRequestTuple value];
        v68 = [HMMTRProtocolMap linearMapForCharacteristic:@"0000002F-0000-1000-8000-0026BB765291" value:value3 fromRange:&unk_283EE9258 toRange:&unk_283EE9270];
        [v58 setSaturation:v68];
      }

      else
      {
        [v58 setSaturation:v65];

        writeSecondaryRequestTuple = [v16 writeSecondaryRequestTuple];
        value3 = [writeSecondaryRequestTuple value];
        v68 = [HMMTRProtocolMap linearMapForCharacteristic:@"00000013-0000-1000-8000-0026BB765291" value:value3 fromRange:&unk_283EE9228 toRange:&unk_283EE9240];
        [v58 setHue:v68];
      }

      [v58 setTransitionTime:&unk_283EE7E78];
      [v58 setOptionsMask:&unk_283EE7F38];
      [v58 setOptionsOverride:&unk_283EE7F38];
      v74 = objc_autoreleasePoolPush();
      selfCopy = self;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v77 = HMFGetLogIdentifier();
        characteristic2 = [v16 characteristic];
        writeSecondaryRequestTuple2 = [v16 writeSecondaryRequestTuple];
        [writeSecondaryRequestTuple2 characteristic];
        v79 = v99 = v58;
        v80 = v74;
        v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "type")}];
        v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "endpoint")}];
        *buf = 138544386;
        v135 = v77;
        v136 = 2112;
        v137 = characteristic2;
        v138 = 2112;
        v139 = v79;
        v140 = 2112;
        v141 = v81;
        v142 = 2112;
        v143 = v82;
        _os_log_impl(&dword_22AEAE000, v76, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory sending request for characteristics %@ and %@ of type %@ on endpoint %@", buf, 0x34u);

        v74 = v80;
        v58 = v99;
      }

      objc_autoreleasePoolPop(v74);
      v119[0] = MEMORY[0x277D85DD0];
      v119[1] = 3221225472;
      v119[2] = __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke_113;
      v119[3] = &unk_2786EDB68;
      v119[4] = selfCopy;
      v120 = v16;
      handlerCopy = v109;
      v121 = v109;
      v36 = v118;
      v122 = v118;
      v51 = v116;
      v54 = v114;
      [v117 moveToHueAndSaturationWithParams:v58 expectedValues:v116 expectedValueInterval:v114 completionHandler:v119];

      queueCopy = v112;
      operationCopy = v101;
      attributesHandlerCopy = v104;
      goto LABEL_38;
    }

    if (handlingType == 1)
    {
      v56 = v34;
      v57 = [(HMMTRProtocolOperationManager *)self _processWriteResponseForOperation:v16 writeResponseValues:0 writeResponseError:0];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, v57);
      }

      v51 = v116;
      v54 = v56;
      goto LABEL_38;
    }

    v113 = v34;
    if (handlingType)
    {
      v69 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v72 = v105 = attributesHandlerCopy;
        handlingType2 = [v16 handlingType];
        *buf = 138543618;
        v135 = v72;
        v136 = 2048;
        v137 = handlingType2;
        _os_log_impl(&dword_22AEAE000, v71, OS_LOG_TYPE_ERROR, "%{public}@Unhandled handling type: %lu", buf, 0x16u);

        attributesHandlerCopy = v105;
      }

      objc_autoreleasePoolPop(v69);
      v36 = v118;
      v51 = v116;
      v54 = v113;
      goto LABEL_38;
    }

    characteristic3 = [v16 characteristic];
    type2 = [characteristic3 type];
    v39 = [type2 isEqualToString:@"00000013-0000-1000-8000-0026BB765291"];

    if (v39)
    {
      v108 = handlerCopy;
      v111 = queueCopy;
      v40 = objc_alloc_init(MEMORY[0x277CD52D8]);
      mapValue2 = [characteristicDescription mapValue];
      writePrimaryRequestTuple2 = [v16 writePrimaryRequestTuple];
      value4 = [writePrimaryRequestTuple2 value];
      v44 = (mapValue2)[2](mapValue2, value4);
      [v40 setHue:v44];

      [v40 setTransitionTime:&unk_283EE7E78];
      [v40 setOptionsMask:&unk_283EE7F38];
      [v40 setOptionsOverride:&unk_283EE7F38];
      v45 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v103 = HMFGetLogIdentifier();
        [v16 characteristic];
        v48 = v100 = v45;
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "type")}];
        v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "endpoint")}];
        *buf = 138544130;
        v135 = v103;
        v136 = 2112;
        v137 = v48;
        v138 = 2112;
        v139 = v49;
        v140 = 2112;
        v141 = v50;
        _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory sending request for characteristic %@ of type %@ on endpoint %@", buf, 0x2Au);

        v45 = v100;
      }

      objc_autoreleasePoolPop(v45);
      v127[0] = MEMORY[0x277D85DD0];
      v127[1] = 3221225472;
      v127[2] = __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke_108;
      v127[3] = &unk_2786EDB68;
      v127[4] = selfCopy3;
      v128 = v16;
      handlerCopy = v108;
      v129 = v108;
      v36 = v118;
      v130 = v118;
      v51 = v116;
      v52 = v40;
      v53 = v40;
      v54 = v113;
      [v117 moveToHueWithParams:v52 expectedValues:v116 expectedValueInterval:v113 completionHandler:v127];

      v55 = v128;
    }

    else
    {
      selfCopy4 = self;
      characteristic4 = [v16 characteristic];
      type3 = [characteristic4 type];
      v85 = [type3 isEqualToString:@"0000002F-0000-1000-8000-0026BB765291"];

      v36 = v118;
      v51 = v116;
      v54 = v113;
      if (!v85)
      {
LABEL_38:

        v32 = v117;
        goto LABEL_39;
      }

      v110 = handlerCopy;
      v111 = queueCopy;
      v86 = objc_alloc_init(MEMORY[0x277CD52E0]);
      mapValue3 = [characteristicDescription mapValue];
      writePrimaryRequestTuple3 = [v16 writePrimaryRequestTuple];
      value5 = [writePrimaryRequestTuple3 value];
      v90 = (mapValue3)[2](mapValue3, value5);
      [v86 setSaturation:v90];

      [v86 setTransitionTime:&unk_283EE7E78];
      [v86 setOptionsMask:&unk_283EE7F38];
      [v86 setOptionsOverride:&unk_283EE7F38];
      v91 = objc_autoreleasePoolPush();
      v92 = selfCopy4;
      v93 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        v107 = HMFGetLogIdentifier();
        [v16 characteristic];
        v94 = v102 = v91;
        v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "type")}];
        v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "endpoint")}];
        *buf = 138544130;
        v135 = v107;
        v136 = 2112;
        v137 = v94;
        v138 = 2112;
        v139 = v95;
        v140 = 2112;
        v141 = v96;
        _os_log_impl(&dword_22AEAE000, v93, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory sending request for characteristic %@ of type %@ on endpoint %@", buf, 0x2Au);

        v91 = v102;
      }

      objc_autoreleasePoolPop(v91);
      v123[0] = MEMORY[0x277D85DD0];
      v123[1] = 3221225472;
      v123[2] = __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke_110;
      v123[3] = &unk_2786EDB68;
      v123[4] = v92;
      v124 = v16;
      handlerCopy = v110;
      v125 = v110;
      v36 = v118;
      v126 = v118;
      v51 = v116;
      v97 = v86;
      v53 = v86;
      v54 = v113;
      [v117 moveToSaturationWithParams:v97 expectedValues:v116 expectedValueInterval:v113 completionHandler:v123];

      v55 = v124;
    }

    queueCopy = v111;
    goto LABEL_38;
  }

  v28 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v135 = v31;
    _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Required parameter matterDevice is nil in the hue/saturation write request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v28);
  v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:3 userInfo:0];
  characteristicDescription = [(HMMTRProtocolOperationManager *)selfCopy5 _processWriteResponseForOperation:operationCopy writeResponseValues:0 writeResponseError:v32];
  (*(handlerCopy + 2))(handlerCopy, characteristicDescription);
LABEL_39:
}

void __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277CD50B8];
  v2 = MEMORY[0x277CD51C0];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "endpoint")}];
  v4 = [v2 attributePathWithEndpointID:v3 clusterID:&unk_283EE7ED8 attributeID:&unk_283EE7EF0];
  v13[0] = v4;
  v12[1] = *MEMORY[0x277CD50D8];
  v5 = *MEMORY[0x277CD5198];
  v6 = *MEMORY[0x277CD51A0];
  v10[0] = *MEMORY[0x277CD5188];
  v10[1] = v6;
  v11[0] = v5;
  v11[1] = &unk_283EE7F08;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  (*(*(a1 + 40) + 16))();
}

uint64_t __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke_108(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _processWriteResponseForOperation:*(a1 + 40) writeResponseValues:0 writeResponseError:a2];
  v5 = *(a1 + 48);
  v7 = v4;
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v4);
    v4 = v7;
  }

  if (!a2)
  {
    v5 = (*(*(a1 + 56) + 16))();
    v4 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v4);
}

uint64_t __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke_110(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _processWriteResponseForOperation:*(a1 + 40) writeResponseValues:0 writeResponseError:a2];
  v5 = *(a1 + 48);
  v7 = v4;
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v4);
    v4 = v7;
  }

  if (!a2)
  {
    v5 = (*(*(a1 + 56) + 16))();
    v4 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v4);
}

uint64_t __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke_113(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _processWriteResponseForOperation:*(a1 + 40) writeResponseValues:0 writeResponseError:a2];
  v5 = *(a1 + 48);
  v7 = v4;
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v4);
    v4 = v7;
  }

  if (!a2)
  {
    v5 = (*(*(a1 + 56) + 16))();
    v4 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v4);
}

- (void)handleIdentifyDeviceWriteWithOperation:(id)operation clientQueue:(id)queue operationResponseHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  queueCopy = queue;
  handlerCopy = handler;
  writePrimaryRequestTuple = [operationCopy writePrimaryRequestTuple];
  hmdAccessoryUUID = [writePrimaryRequestTuple hmdAccessoryUUID];

  if (hmdAccessoryUUID && ([operationCopy matterDevice], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [HMMTRIdentifyDevice alloc];
    matterDevice = [operationCopy matterDevice];
    topology = [operationCopy topology];
    v17 = [(HMMTRIdentifyDevice *)v14 initWithDevice:matterDevice topology:topology queue:queueCopy];

    LOWORD(matterDevice) = [operationCopy endpoint];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __109__HMMTRProtocolOperationManager_handleIdentifyDeviceWriteWithOperation_clientQueue_operationResponseHandler___block_invoke;
    v24[3] = &unk_2786F0C10;
    v24[4] = self;
    v25 = operationCopy;
    v26 = handlerCopy;
    [(HMMTRIdentifyDevice *)v17 identifyWithEndpoint:matterDevice completionHandler:v24];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      matterDevice2 = [operationCopy matterDevice];
      *buf = 138543874;
      v28 = v21;
      v29 = 2112;
      v30 = hmdAccessoryUUID;
      v31 = 2112;
      v32 = matterDevice2;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@A required parameter was not included in identify write request. accessoryUUID: %@, matterDevice: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:3 userInfo:0];
    v23 = [(HMMTRProtocolOperationManager *)selfCopy _processWriteResponseForOperation:operationCopy writeResponseValues:0 writeResponseError:v17];
    (*(handlerCopy + 2))(handlerCopy, v23);
  }
}

uint64_t __109__HMMTRProtocolOperationManager_handleIdentifyDeviceWriteWithOperation_clientQueue_operationResponseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _processWriteResponseForOperation:*(a1 + 40) writeResponseValues:0 writeResponseError:a2];
  v4 = *(a1 + 48);
  if (v4)
  {
    v6 = v3;
    v4 = (*(v4 + 16))();
    v3 = v6;
  }

  return MEMORY[0x2821F96F8](v4, v3);
}

- (BOOL)handleSpecialCaseCharacteristicWithOperation:(id)operation accessoryServer:(id)server clientQueue:(id)queue operationResponseHandler:(id)handler updatedAttributesHandler:(id)attributesHandler
{
  v60 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  serverCopy = server;
  queueCopy = queue;
  handlerCopy = handler;
  attributesHandlerCopy = attributesHandler;
  characteristic = [operationCopy characteristic];
  type = [characteristic type];
  if ([type isEqualToString:@"0000001E-0000-1000-8000-0026BB765291"])
  {
    type2 = [operationCopy type];

    if (type2 == 1)
    {
      [(HMMTRProtocolOperationManager *)self handleLockTargetStateWriteWithOperation:operationCopy accessoryServer:serverCopy clientQueue:queueCopy operationResponseHandler:handlerCopy];
LABEL_26:
      v43 = 1;
      goto LABEL_27;
    }
  }

  else
  {
  }

  characteristic2 = [operationCopy characteristic];
  type3 = [characteristic2 type];
  if ([type3 isEqualToString:@"00000014-0000-1000-8000-0026BB765291"])
  {
    type4 = [operationCopy type];

    if (type4 == 1)
    {
      [(HMMTRProtocolOperationManager *)self handleIdentifyDeviceWriteWithOperation:operationCopy clientQueue:queueCopy operationResponseHandler:handlerCopy];
      goto LABEL_26;
    }
  }

  else
  {
  }

  if ([operationCopy type] == 1)
  {
    characteristic3 = [operationCopy characteristic];
    type5 = [characteristic3 type];
    if ([type5 isEqualToString:@"00000013-0000-1000-8000-0026BB765291"])
    {

LABEL_13:
      [(HMMTRProtocolOperationManager *)self handleHueSaturationWriteWithOperation:operationCopy clientQueue:queueCopy operationResponseHandler:handlerCopy updatedAttributesHandler:attributesHandlerCopy];
      goto LABEL_26;
    }

    characteristic4 = [operationCopy characteristic];
    [characteristic4 type];
    selfCopy = self;
    v27 = handlerCopy;
    v28 = queueCopy;
    v29 = attributesHandlerCopy;
    v31 = v30 = serverCopy;
    v51 = [v31 isEqualToString:@"0000002F-0000-1000-8000-0026BB765291"];

    serverCopy = v30;
    attributesHandlerCopy = v29;
    queueCopy = v28;
    handlerCopy = v27;
    self = selfCopy;

    if (v51)
    {
      goto LABEL_13;
    }
  }

  if ([operationCopy type] == 1)
  {
    characteristic5 = [operationCopy characteristic];
    type6 = [characteristic5 type];
    v34 = [type6 isEqualToString:@"000000B0-0000-1000-8000-0026BB765291"];

    if (v34)
    {
      if ([operationCopy handlingType])
      {
        handlingType = [operationCopy handlingType];
        v36 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v38 = HMFGetOSLogHandle();
        v39 = v38;
        if (handlingType == 3)
        {
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v40 = HMFGetLogIdentifier();
            writePrimaryRequestTuple = [operationCopy writePrimaryRequestTuple];
            [writePrimaryRequestTuple hmdAccessoryUUID];
            v42 = v52 = serverCopy;
            *buf = 138543618;
            v55 = v40;
            v56 = 2112;
            v57 = v42;
            _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_DEBUG, "%{public}@Dropping write request for active characteristic. accessoryUUID: %@", buf, 0x16u);

            serverCopy = v52;
          }
        }

        else if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v44 = v50 = v36;
          handlingType2 = [operationCopy handlingType];
          [operationCopy writePrimaryRequestTuple];
          v46 = v53 = serverCopy;
          hmdAccessoryUUID = [v46 hmdAccessoryUUID];
          *buf = 138543874;
          v55 = v44;
          v56 = 2048;
          v57 = handlingType2;
          v58 = 2112;
          v59 = hmdAccessoryUUID;
          _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Invalid handling type %lu. Dropping write request for active characteristic. accessoryUUID: %@", buf, 0x20u);

          serverCopy = v53;
          v36 = v50;
        }

        objc_autoreleasePoolPop(v36);
        v48 = [(HMMTRProtocolOperationManager *)selfCopy2 _processWriteResponseForOperation:operationCopy writeResponseValues:0 writeResponseError:0];
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, v48);
        }

        goto LABEL_26;
      }
    }
  }

  v43 = 0;
LABEL_27:

  return v43;
}

- (BOOL)_isBasicClusterOperationForBridgedDevice:(Class)device endpointID:(unint64_t)d
{
  if (([(objc_class *)device isEqual:objc_opt_class()]& 1) == 0)
  {
    v6 = [(objc_class *)device isEqual:objc_opt_class()];
    return d && (v6 & 1) != 0;
  }

  return d != 0;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31, &__block_literal_global_134);
  }

  v3 = logCategory__hmf_once_v32;

  return v3;
}

uint64_t __44__HMMTRProtocolOperationManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v32;
  logCategory__hmf_once_v32 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (HMMTRProtocolOperationManager)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_2628);
  }

  v3 = sharedInstance_manager;

  return v3;
}

uint64_t __47__HMMTRProtocolOperationManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HMMTRProtocolOperationManager);
  v1 = sharedInstance_manager;
  sharedInstance_manager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end