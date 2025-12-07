@interface HMMTRProtocolMap
+ (BOOL)checkIfCharacteristicsIsOfTypeTemp:(id)temp;
+ (id)customMapEventForCharacteristic:(id)characteristic event:(id)event value:(id)value;
+ (id)customMapReadForCharacteristic:(id)characteristic value:(id)value fromRange:(id)range toRange:(id)toRange;
+ (id)customMapWriteForCharacteristic:(id)characteristic value:(id)value;
+ (id)linearMapForCharacteristic:(id)characteristic value:(id)value fromRange:(id)range toRange:(id)toRange;
+ (id)logCategory;
+ (id)mapActiveState:(id)state;
+ (id)mapAirQuality:(id)quality;
+ (id)mapAirflowDirection:(id)direction;
+ (id)mapCarbonMonoxideDetected:(id)detected;
+ (id)mapChangeIndicationToFilterChangeIndication:(id)indication;
+ (id)mapCurrentHeatingCoolingState:(id)state;
+ (id)mapCurrentSystemMode:(id)mode;
+ (id)mapFanModeToActive:(id)active;
+ (id)mapFanModeToTargetAirPurifier:(id)purifier;
+ (id)mapFanModeToTargetFanState:(id)state;
+ (id)mapPositionState:(id)state;
+ (id)mapRotationDirection:(id)direction;
+ (id)mapSensorFaultToStatusActive:(id)active;
+ (id)mapSmokeDetected:(id)detected;
+ (id)mapTargetAirPuriferState:(id)state;
+ (id)mapTargetFanState:(id)state;
+ (id)mapTargetHeatingCoolingState:(id)state;
+ (id)mapTargetSystemMode:(id)mode;
+ (id)protocolMap;
- (BOOL)_isValidCharacteristicValue:(id)value value:(id)a4;
- (BOOL)isRequiresOptionalMatterAttributeForCharacteristic:(id)characteristic;
- (BOOL)optionalServiceLabelIndexIncludedInService:(id)service;
- (HMMTRProtocolMap)init;
- (NSDictionary)hapToCHIPClusterMappingArray;
- (id)_buildEventMapper:(id)mapper characteristicsDict:(id)dict;
- (id)_buildExpectedValueMapper:(id)mapper characteristicsDict:(id)dict operation:(unint64_t)operation valueMapper:(id)valueMapper;
- (id)_buildValueMapper:(id)mapper characteristicsDict:(id)dict operation:(unint64_t)operation forMTRCluster:(BOOL)cluster;
- (id)_characteristicDescriptionForCharacteristicWithUUID:(id)d characteristicsDict:(id)dict chipClusterName:(id)name operationType:(unint64_t)type value:(id)value forMTRCluster:(BOOL)cluster;
- (id)_characteristicsDictionaryForCharacteristic:(id)characteristic endpointID:(unint64_t)d clusterIDCharacteristicMap:(id)map;
- (id)_characteristicsDictionaryForCharacteristicUUID:(id)d endpointID:(unint64_t)iD clusterIDCharacteristicMap:(id)map;
- (id)_chipClusterFunctionNameForOperationType:(unint64_t)type operationDictionary:(id)dictionary value:(id)value forMTRCluster:(BOOL)cluster forHMMTRCluster:(BOOL)rCluster;
- (id)_chipParamsDictionaryForOperationType:(unint64_t)type operationDictionary:(id)dictionary value:(id)value;
- (id)_descriptionForCharacteristicUUID:(id)d operation:(unint64_t)operation value:(id)value forMTRCluster:(BOOL)cluster endpointID:(unint64_t)iD clusterIDCharacteristicMap:(id)map;
- (id)_protocolMapCharacteristicsKeyForOperationType:(unint64_t)type;
- (id)categoriesForDeviceTypes:(id)types;
- (id)getBaseClusterName:(id)name;
- (id)getCHIPAttributesForCharacteristic:(id)characteristic;
- (id)getClusterClassForCharacteristic:(id)characteristic endpointID:(id)d clusterIDCharacteristicMap:(id)map;
- (id)getMTRClusterClassForCharacteristic:(id)characteristic endpointID:(id)d clusterIDCharacteristicMap:(id)map;
- (id)getRequiredAttributesForCharacteristic:(id)characteristic;
- (id)getRequiredFeaturesBitmapForCharacteristic:(id)characteristic;
- (id)getUpdatedLinkedCharacteristics:(id)characteristics endpointID:(id)d clusterIDCharacteristicMap:(id)map;
- (id)mtrBaseClusterNameFromMTRClusterName:(id)name;
- (id)mtrClusterNameFromMTRBaseClusterName:(id)name;
- (id)mtrClusterReadFunctionNameFromBaseClusterFunctionName:(id)name;
- (id)mtrClusterWriteFunctionNameFromBaseClusterFunctionName:(id)name;
- (id)optionalCharacteristicsForService:(id)service;
- (id)primaryHAPServiceAmongServices:(id)services;
- (id)reportDescriptionForCharacteristic:(id)characteristic endpointID:(id)d clusterIDCharacteristicMap:(id)map;
- (id)requiredCharacteristicsForService:(id)service;
- (id)retrieveHAPCharacteristicsToCheckForRequiredAttributeValues;
- (id)retrieveHAPToCHIPClusterMapping:(id)mapping;
- (void)_selectedServiceTypeForServiceArray:(id)array device:(id)device mtrDevice:(id)mtrDevice endpoint:(id)endpoint callbackQueue:(id)queue completionHandler:(id)handler;
- (void)servicesForDeviceTypes:(id)types device:(id)device endpoint:(id)endpoint callbackQueue:(id)queue completionHandler:(id)handler;
- (void)servicesOfMTRDevice:(id)device forDeviceTypes:(id)types endpoint:(id)endpoint callbackQueue:(id)queue completionHandler:(id)handler;
- (void)updateMetadataForCharacteristic:(id)characteristic metadata:(id)metadata endpointID:(id)d topology:(id)topology clusterIDCharacteristicMap:(id)map;
@end

@implementation HMMTRProtocolMap

- (id)primaryHAPServiceAmongServices:(id)services
{
  v65 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v5 = [(HMMTRProtocolMap *)self rawPlistAtKey:@"AlwaysSecondaryHAPServices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = MEMORY[0x277CBEBF8];
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = [v9 na_map:&__block_literal_global_554];

  v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
  v12 = [(HMMTRProtocolMap *)self rawPlistAtKey:@"PotentialSecondaryHAPServices"];
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

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v8;
  }

  v16 = [v15 na_map:&__block_literal_global_556];

  v17 = [MEMORY[0x277CBEB98] setWithArray:v16];
  v18 = [servicesCopy na_map:&__block_literal_global_559];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __51__HMMTRProtocolMap_primaryHAPServiceAmongServices___block_invoke_4;
  v57[3] = &unk_2786F0748;
  v19 = v11;
  v58 = v19;
  v20 = [v18 na_filter:v57];

  v46 = v16;
  if (![v20 count])
  {
    v24 = 0;
    goto LABEL_43;
  }

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __51__HMMTRProtocolMap_primaryHAPServiceAmongServices___block_invoke_5;
  v55[3] = &unk_2786F0748;
  v56 = v17;
  v21 = [v20 na_filter:v55];
  v22 = [v21 count];
  v44 = v19;
  v45 = v10;
  v43 = v21;
  if (!v22)
  {
    v25 = [MEMORY[0x277CBEB98] setWithArray:v20];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v26 = v16;
    v27 = [v26 countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v52;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v52 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v18 = *(*(&v51 + 1) + 8 * i);
          if ([v25 containsObject:v18])
          {
            goto LABEL_31;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v28);
    }

    goto LABEL_30;
  }

  if (v22 != 1)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v32;
      v62 = 2112;
      v63 = v21;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@Multiple primary service candidates found: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v18 = [v21 sortedArrayUsingSelector:sel_compare_];
    v23 = [v18 objectAtIndexedSubscript:0];

    if (v23)
    {
      goto LABEL_33;
    }

    do
    {
LABEL_30:
      _HMFPreconditionFailure();
LABEL_31:
      v23 = v18;
    }

    while (!v23);

    goto LABEL_33;
  }

  v23 = [v21 objectAtIndexedSubscript:0];
LABEL_33:
  v42 = v17;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = servicesCopy;
  v34 = servicesCopy;
  v35 = [v34 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v48;
LABEL_35:
    v38 = 0;
    while (1)
    {
      if (*v48 != v37)
      {
        objc_enumerationMutation(v34);
      }

      v18 = *(*(&v47 + 1) + 8 * v38);
      type = [v18 type];
      v40 = [type isEqual:v23];

      if (v40)
      {
        break;
      }

      if (v36 == ++v38)
      {
        v36 = [v34 countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (v36)
        {
          goto LABEL_35;
        }

        goto LABEL_41;
      }
    }
  }

  else
  {
LABEL_41:

    _HMFPreconditionFailure();
  }

  v24 = v18;

  servicesCopy = v33;
  v19 = v44;
  v10 = v45;
  v17 = v42;
LABEL_43:

  return v24;
}

- (void)updateMetadataForCharacteristic:(id)characteristic metadata:(id)metadata endpointID:(id)d topology:(id)topology clusterIDCharacteristicMap:(id)map
{
  v445 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  metadataCopy = metadata;
  dCopy = d;
  topologyCopy = topology;
  mapCopy = map;
  v16 = [HMMTRUtilities hmmtr_shortTypeFromUUID:characteristicCopy];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  v20 = v19;
  if (v16)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138544130;
      v434 = v21;
      v435 = 2112;
      v436 = metadataCopy;
      v437 = 2112;
      v438 = characteristicCopy;
      v439 = 2112;
      v440 = dCopy;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Update Metadata %@ for characteristic %@ on endpoint %@", buf, 0x2Au);
    }

    v426 = metadataCopy;

    objc_autoreleasePoolPop(v17);
    v22 = [(HMMTRProtocolMap *)selfCopy getClusterClassForCharacteristic:v16 endpointID:dCopy clusterIDCharacteristicMap:mapCopy];
    v23 = topologyCopy;
    v24 = [topologyCopy getFeatureMapForClusterClassName:v22 endpoint:dCopy];
    if ((([v22 isEqualToString:@"HMMTRWindowCovering"] & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"MTRBaseClusterWindowCovering") & 1) != 0 || objc_msgSend(v22, "isEqualToString:", @"MTRClusterWindowCovering")) && objc_msgSend(characteristicCopy, "isEqualToString:", @"0000007C-0000-1000-8000-0026BB765291"))
    {
      if (([v24 unsignedIntValue] & 4) == 0)
      {
        v25 = v24;
        v26 = v22;
        constraints = [v426 constraints];
        maximumValue = [constraints maximumValue];
        constraints2 = [v426 constraints];
        [constraints2 setStepValue:maximumValue];

        v30 = objc_autoreleasePoolPush();
        v31 = selfCopy;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v34 = v33 = v16;
          *buf = 138543362;
          v434 = v34;
          v35 = "%{public}@Accessory is not position aware, setting target position step size to maximum value.";
LABEL_21:
          _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_DEBUG, v35, buf, 0xCu);

          v16 = v33;
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      goto LABEL_55;
    }

    if ((([v22 isEqualToString:@"HMMTRWindowCovering"] & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"MTRBaseClusterWindowCovering") & 1) != 0 || objc_msgSend(v22, "isEqualToString:", @"MTRClusterWindowCovering")) && objc_msgSend(characteristicCopy, "isEqualToString:", @"000000C2-0000-1000-8000-0026BB765291"))
    {
      if (([v24 unsignedIntValue] & 0x10) == 0)
      {
        v25 = v24;
        v26 = v22;
        constraints3 = [v426 constraints];
        maximumValue2 = [constraints3 maximumValue];
        constraints4 = [v426 constraints];
        [constraints4 setStepValue:maximumValue2];

        v30 = objc_autoreleasePoolPush();
        v31 = selfCopy;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v34 = v33 = v16;
          *buf = 138543362;
          v434 = v34;
          v35 = "%{public}@Accessory is not position aware, setting target tilt step size to maximum value.";
          goto LABEL_21;
        }

LABEL_22:

        objc_autoreleasePoolPop(v30);
        v22 = v26;
        v24 = v25;
LABEL_54:
        v23 = topologyCopy;
      }

LABEL_55:

      metadataCopy = v426;
      goto LABEL_56;
    }

    if ([characteristicCopy isEqualToString:@"00000073-0000-1000-8000-0026BB765291"])
    {
      v417 = v16;
      v40 = [(HMMTRProtocolMap *)selfCopy getClusterClassForCharacteristic:v16 endpointID:dCopy clusterIDCharacteristicMap:mapCopy];
      v404 = [topologyCopy getFeatureMapForClusterClassName:v40 endpoint:dCopy];
      unsignedIntegerValue = [v404 unsignedIntegerValue];
      array = [MEMORY[0x277CBEB18] array];
      v43 = array;
      v422 = v22;
      if ((unsignedIntegerValue & 2) != 0)
      {
        v44 = &unk_283EE8DC0;
        [array addObject:&unk_283EE8DC0];
      }

      else
      {
        v44 = 0;
      }

      v414 = characteristicCopy;
      v73 = v44;
      if ((~unsignedIntegerValue & 0x16) == 0)
      {
        v73 = &unk_283EE8EE0;
        [v43 addObject:&unk_283EE8EE0];
      }

      v411 = v24;
      if ((~unsignedIntegerValue & 0xELL) == 0)
      {
        v73 = &unk_283EE8EF8;
        [v43 addObject:&unk_283EE8EF8];
      }

      v74 = objc_autoreleasePoolPush();
      v75 = selfCopy;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v77 = mapCopy;
        v78 = v40;
        v80 = v79 = dCopy;
        *buf = 138543618;
        v434 = v80;
        v435 = 2112;
        v436 = v43;
        _os_log_impl(&dword_22AEAE000, v76, OS_LOG_TYPE_DEBUG, "%{public}@Constraining input-event characteristic valid values to %@", buf, 0x16u);

        dCopy = v79;
        v40 = v78;
        mapCopy = v77;
      }

      objc_autoreleasePoolPop(v74);
      constraints5 = [v426 constraints];

      if (!constraints5)
      {
        v82 = objc_alloc_init(MEMORY[0x277CFEBA8]);
        [v426 setConstraints:v82];
      }

      constraints6 = [v426 constraints];
      [constraints6 setMinimumValue:v44];

      constraints7 = [v426 constraints];
      [constraints7 setMaximumValue:v73];

      constraints8 = [v426 constraints];
      [constraints8 setStepValue:&unk_283EE8EE0];

      constraints9 = [v426 constraints];
      [constraints9 setValidValues:v43];

      characteristicCopy = v414;
      v16 = v417;
      v22 = v422;
      v24 = v411;
      goto LABEL_54;
    }

    if ([characteristicCopy isEqualToString:@"000000CE-0000-1000-8000-0026BB765291"])
    {
      v423 = v22;
      v405 = mapCopy;
      constraints10 = [v426 constraints];

      if (!constraints10)
      {
        v46 = objc_alloc_init(MEMORY[0x277CFEBA8]);
        [v426 setConstraints:v46];
      }

      constraints11 = [v426 constraints];
      [constraints11 setMinimumValue:&unk_283EE8D90];

      constraints12 = [v426 constraints];
      [constraints12 setMaximumValue:&unk_283EE8DA8];

      constraints13 = [v426 constraints];
      [constraints13 setStepValue:&unk_283EE8EE0];

      v23 = topologyCopy;
      v50 = [topologyCopy getAttributesForClusterClassName:v22 endpoint:dCopy];
      v51 = v50;
      v418 = v16;
      if (v50)
      {
        v52 = [v50 objectForKeyedSubscript:@"ColorTempPhysicalMinMireds"];
        v395 = dCopy;
        if ([v52 count])
        {
          v53 = [v52 objectAtIndexedSubscript:0];
          constraints14 = [v426 constraints];
          [constraints14 setMinimumValue:v53];

          v55 = objc_autoreleasePoolPush();
          v56 = selfCopy;
          v57 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            v58 = HMFGetLogIdentifier();
            [v426 constraints];
            v59 = v410 = v24;
            minimumValue = [v59 minimumValue];
            *buf = 138543618;
            v434 = v58;
            v435 = 2112;
            v436 = minimumValue;
            _os_log_impl(&dword_22AEAE000, v57, OS_LOG_TYPE_DEBUG, "%{public}@ColorTempPhysicalMinMireds %@", buf, 0x16u);

            v24 = v410;
          }

          objc_autoreleasePoolPop(v55);
          dCopy = v395;
          v23 = topologyCopy;
        }

        v61 = [v51 objectForKeyedSubscript:@"ColorTempPhysicalMaxMireds"];

        if ([v61 count])
        {
          v62 = v23;
          v63 = [v61 objectAtIndexedSubscript:0];
          constraints15 = [v426 constraints];
          [constraints15 setMaximumValue:v63];

          v65 = objc_autoreleasePoolPush();
          v66 = selfCopy;
          v67 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            v68 = HMFGetLogIdentifier();
            [v426 constraints];
            v413 = characteristicCopy;
            v70 = v69 = v24;
            [v70 maximumValue];
            v72 = v71 = v62;
            *buf = 138543618;
            v434 = v68;
            v435 = 2112;
            v436 = v72;
            _os_log_impl(&dword_22AEAE000, v67, OS_LOG_TYPE_DEBUG, "%{public}@ColorTempPhysicalMaxMireds %@", buf, 0x16u);

            v62 = v71;
            v24 = v69;
            characteristicCopy = v413;
          }

          objc_autoreleasePoolPop(v65);
          dCopy = v395;
          v23 = v62;
        }
      }

      else
      {
        v92 = objc_autoreleasePoolPush();
        v93 = selfCopy;
        v94 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v96 = v95 = dCopy;
          *buf = 138544386;
          v434 = v96;
          v435 = 2112;
          v436 = v22;
          v437 = 2112;
          v438 = v95;
          v439 = 2112;
          v440 = &unk_283EE8D90;
          v441 = 2112;
          v442 = &unk_283EE8DA8;
          _os_log_impl(&dword_22AEAE000, v94, OS_LOG_TYPE_ERROR, "%{public}@No attributes found for cluster %@ on endpoint %@. Use default ColorTemperature Min/Max %@, %@", buf, 0x34u);

          dCopy = v95;
        }

        objc_autoreleasePoolPop(v92);
        v23 = topologyCopy;
      }

      goto LABEL_61;
    }

    if (([characteristicCopy isEqualToString:@"0000007B-0000-1000-8000-0026BB765291"] & 1) != 0 || objc_msgSend(characteristicCopy, "isEqualToString:", @"0000007D-0000-1000-8000-0026BB765291"))
    {
      constraints16 = [v426 constraints];

      if (!constraints16)
      {
        v88 = objc_alloc_init(MEMORY[0x277CFEBA8]);
        [v426 setConstraints:v88];
      }

      constraints17 = [v426 constraints];
      [constraints17 setMinimumValue:&unk_283EE8DC0];

      constraints18 = [v426 constraints];
      [constraints18 setMaximumValue:&unk_283EE8F40];

      constraints19 = [v426 constraints];
      [constraints19 setStepValue:&unk_283EE8EE0];

      goto LABEL_54;
    }

    if ([characteristicCopy isEqualToString:@"00000033-0000-1000-8000-0026BB765291"])
    {
      if (([v22 isEqualToString:@"MTRBaseClusterThermostat"] & 1) == 0 && !objc_msgSend(v22, "isEqualToString:", @"MTRClusterThermostat") || !v24)
      {
        goto LABEL_55;
      }

      v97 = v22;
      v98 = dCopy;
      constraints20 = [v426 constraints];

      if (!constraints20)
      {
        v100 = objc_alloc_init(MEMORY[0x277CFEBA8]);
        [v426 setConstraints:v100];
      }

      array2 = [MEMORY[0x277CBEB18] array];
      [array2 addObject:&unk_283EE8DC0];
      constraints21 = [v426 constraints];
      [constraints21 setMinimumValue:&unk_283EE8DC0];

      constraints22 = [v426 constraints];
      [constraints22 setMaximumValue:&unk_283EE8F10];

      constraints23 = [v426 constraints];
      [constraints23 setStepValue:&unk_283EE8EE0];

      if ([v24 unsignedIntValue])
      {
        [array2 addObject:&unk_283EE8EE0];
      }

      if (([v24 unsignedIntValue] & 2) != 0)
      {
        [array2 addObject:&unk_283EE8EF8];
      }

      dCopy = v98;
      if (([v24 unsignedIntValue] & 0x20) != 0)
      {
        [array2 addObject:&unk_283EE8F10];
      }

      constraints24 = [v426 constraints];
      [constraints24 setValidValues:array2];

      v22 = v97;
      goto LABEL_54;
    }

    if ([characteristicCopy isEqualToString:@"00000035-0000-1000-8000-0026BB765291"])
    {
      if (([v22 isEqualToString:@"HMMTRThermostat"] & 1) == 0 && (objc_msgSend(v22, "isEqualToString:", @"HMMTRSyncThermostat") & 1) == 0 && !objc_msgSend(v22, "isEqualToString:", @"MTRClusterThermostat") || !v24)
      {
        goto LABEL_55;
      }

      v405 = mapCopy;
      constraints25 = [v426 constraints];

      if (!constraints25)
      {
        v107 = objc_alloc_init(MEMORY[0x277CFEBA8]);
        [v426 setConstraints:v107];
      }

      constraints26 = [v426 constraints];
      [constraints26 setMinimumValue:&unk_283EE8F58];

      constraints27 = [v426 constraints];
      [constraints27 setMaximumValue:&unk_283EE8F70];

      constraints28 = [v426 constraints];
      [constraints28 setStepValue:&unk_283EE9310];

      constraints29 = [v426 constraints];
      obj = [constraints29 minimumValue];

      constraints30 = [v426 constraints];
      maximumValue3 = [constraints30 maximumValue];

      constraints31 = [v426 constraints];
      minimumValue2 = [constraints31 minimumValue];

      constraints32 = [v426 constraints];
      maximumValue4 = [constraints32 maximumValue];

      v115 = [topologyCopy getAttributesForClusterClassName:v22 endpoint:dCopy];
      v116 = v115;
      v423 = v22;
      if (v115)
      {
        v117 = [v115 objectForKeyedSubscript:@"AbsMinCoolSetpointLimit"];
        if ([v117 count])
        {
          v118 = [v117 objectAtIndexedSubscript:0];

          obj = v118;
        }

        v119 = dCopy;
        v120 = [v116 objectForKeyedSubscript:{@"AbsMaxCoolSetpointLimit", maximumValue4}];

        if ([v120 count])
        {
          v121 = [v120 objectAtIndexedSubscript:0];

          maximumValue3 = v121;
        }

        v122 = [v116 objectForKeyedSubscript:@"AbsMinHeatSetpointLimit"];

        if ([v122 count])
        {
          v123 = [v122 objectAtIndexedSubscript:0];

          minimumValue2 = v123;
        }

        v124 = [v116 objectForKeyedSubscript:@"AbsMaxHeatSetpointLimit"];

        if ([v124 count])
        {
          v125 = [v124 objectAtIndexedSubscript:0];

          maximumValue4 = v125;
        }

        dCopy = v119;
      }

      v396 = dCopy;
      v418 = v16;
      if (([v24 unsignedIntValue] & 0x20) != 0)
      {
        integerValue = [obj integerValue];
        if (integerValue != [minimumValue2 integerValue] || (v172 = objc_msgSend(maximumValue3, "integerValue"), v172 != objc_msgSend(v390, "integerValue")))
        {
          v173 = objc_autoreleasePoolPush();
          v174 = selfCopy;
          v175 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
          {
            v176 = HMFGetLogIdentifier();
            *buf = 138543362;
            v434 = v176;
            _os_log_impl(&dword_22AEAE000, v175, OS_LOG_TYPE_INFO, "%{public}@Thermostat min/max setpoints for heat and cool are not the same", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v173);
        }

        v177 = MEMORY[0x277CCABB0];
        integerValue2 = [obj integerValue];
        integerValue3 = [minimumValue2 integerValue];
        if (integerValue2 >= integerValue3)
        {
          v180 = integerValue3;
        }

        else
        {
          v180 = integerValue2;
        }

        v181 = [v177 numberWithInteger:v180];
        constraints33 = [v426 constraints];
        [constraints33 setMinimumValue:v181];

        v183 = MEMORY[0x277CCABB0];
        integerValue4 = [maximumValue3 integerValue];
        integerValue5 = [v390 integerValue];
        if (integerValue4 <= integerValue5)
        {
          v186 = integerValue5;
        }

        else
        {
          v186 = integerValue4;
        }

        constraints38 = [v183 numberWithInteger:v186];
        constraints34 = [v426 constraints];
        [constraints34 setMaximumValue:constraints38];
      }

      else
      {
        if (([v24 unsignedIntValue] & 2) != 0)
        {
          constraints35 = [v426 constraints];
          [constraints35 setMinimumValue:obj];

          constraints36 = [v426 constraints];
          [constraints36 setMaximumValue:maximumValue3];
        }

        if (([v24 unsignedIntValue] & 1) == 0)
        {
          goto LABEL_139;
        }

        constraints37 = [v426 constraints];
        [constraints37 setMinimumValue:minimumValue2];

        constraints38 = [v426 constraints];
        [constraints38 setMaximumValue:v390];
      }

LABEL_139:
      v188 = MEMORY[0x277CCABB0];
      constraints39 = [v426 constraints];
      minimumValue3 = [constraints39 minimumValue];
      v191 = [v188 numberWithDouble:{objc_msgSend(minimumValue3, "integerValue") / 100.0}];
      constraints40 = [v426 constraints];
      [constraints40 setMinimumValue:v191];

      v193 = MEMORY[0x277CCABB0];
      constraints41 = [v426 constraints];
      maximumValue5 = [constraints41 maximumValue];
      v196 = [v193 numberWithDouble:{objc_msgSend(maximumValue5, "integerValue") / 100.0}];
      constraints42 = [v426 constraints];
      [constraints42 setMaximumValue:v196];

      v198 = objc_autoreleasePoolPush();
      v199 = selfCopy;
      v200 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
      {
        v201 = HMFGetLogIdentifier();
        constraints43 = [v426 constraints];
        *buf = 138544642;
        v434 = v201;
        v435 = 2112;
        v436 = obj;
        v437 = 2112;
        v438 = maximumValue3;
        v439 = 2112;
        v440 = minimumValue2;
        v441 = 2112;
        v442 = v390;
        v443 = 2112;
        v444 = constraints43;
        _os_log_impl(&dword_22AEAE000, v200, OS_LOG_TYPE_INFO, "%{public}@Device Abs min/max cool setpoint: %@/%@, min/max heat setpoint: %@/%@. Setting metadata constraints: %@", buf, 0x3Eu);
      }

      objc_autoreleasePoolPop(v198);
      v161 = maximumValue3;
LABEL_142:

LABEL_143:
      dCopy = v396;
      v23 = topologyCopy;
LABEL_61:
      mapCopy = v405;
      v16 = v418;
      v22 = v423;
      goto LABEL_55;
    }

    if ([characteristicCopy isEqualToString:@"0000000D-0000-1000-8000-0026BB765291"])
    {
      if (([v22 isEqualToString:@"MTRBaseClusterThermostat"] & 1) == 0 && (objc_msgSend(v22, "isEqualToString:", @"MTRClusterThermostat") & 1) == 0 && !objc_msgSend(v22, "isEqualToString:", @"HMMTRSyncThermostat") || !v24)
      {
        goto LABEL_55;
      }

      v405 = mapCopy;
      constraints44 = [v426 constraints];

      if (!constraints44)
      {
        v131 = objc_alloc_init(MEMORY[0x277CFEBA8]);
        [v426 setConstraints:v131];
      }

      constraints45 = [v426 constraints];
      [constraints45 setMinimumValue:&unk_283EE8F88];

      constraints46 = [v426 constraints];
      [constraints46 setMaximumValue:&unk_283EE8FA0];

      constraints47 = [v426 constraints];
      [constraints47 setStepValue:&unk_283EE9310];

      constraints48 = [v426 constraints];
      obj = [constraints48 minimumValue];

      constraints49 = [v426 constraints];
      maximumValue6 = [constraints49 maximumValue];

      v138 = [topologyCopy getAttributesForClusterClassName:v22 endpoint:dCopy];
      v139 = v138;
      v396 = dCopy;
      v418 = v16;
      v423 = v22;
      if (v138)
      {
        v140 = [v138 objectForKeyedSubscript:@"AbsMinCoolSetpointLimit"];
        if ([v140 count])
        {
          v141 = [v140 objectAtIndexedSubscript:0];

          obj = v141;
        }

        v142 = [v139 objectForKeyedSubscript:@"AbsMaxCoolSetpointLimit"];

        if ([v142 count])
        {
          v143 = [v142 objectAtIndexedSubscript:0];

          maximumValue6 = v143;
        }
      }

      constraints50 = [v426 constraints];
      [constraints50 setMinimumValue:obj];

      constraints51 = [v426 constraints];
      v393 = maximumValue6;
      [constraints51 setMaximumValue:maximumValue6];

      v146 = MEMORY[0x277CCABB0];
      constraints52 = [v426 constraints];
      minimumValue4 = [constraints52 minimumValue];
      v149 = [v146 numberWithDouble:{objc_msgSend(minimumValue4, "integerValue") / 100.0}];
      constraints53 = [v426 constraints];
      [constraints53 setMinimumValue:v149];

      v151 = MEMORY[0x277CCABB0];
      constraints54 = [v426 constraints];
      maximumValue7 = [constraints54 maximumValue];
      v154 = [v151 numberWithDouble:{objc_msgSend(maximumValue7, "integerValue") / 100.0}];
      constraints55 = [v426 constraints];
      [constraints55 setMaximumValue:v154];

      v156 = objc_autoreleasePoolPush();
      v157 = selfCopy;
      v158 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
      {
        v159 = HMFGetLogIdentifier();
        constraints56 = [v426 constraints];
        *buf = 138543874;
        v434 = v159;
        v435 = 2112;
        v436 = constraints56;
        v437 = 2112;
        v438 = characteristicCopy;
        _os_log_impl(&dword_22AEAE000, v158, OS_LOG_TYPE_INFO, "%{public}@Setting metadata constraints: %@ for characteristic %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v156);
      v161 = v393;
      goto LABEL_142;
    }

    if ([characteristicCopy isEqualToString:@"00000012-0000-1000-8000-0026BB765291"])
    {
      if (([v22 isEqualToString:@"MTRBaseClusterThermostat"] & 1) == 0 && (objc_msgSend(v22, "isEqualToString:", @"MTRClusterThermostat") & 1) == 0 && !objc_msgSend(v22, "isEqualToString:", @"HMMTRSyncThermostat") || !v24)
      {
        goto LABEL_55;
      }

      v406 = mapCopy;
      constraints57 = [v426 constraints];

      if (!constraints57)
      {
        v163 = objc_alloc_init(MEMORY[0x277CFEBA8]);
        [v426 setConstraints:v163];
      }

      v164 = [topologyCopy getAttributesForClusterClassName:v22 endpoint:dCopy];
      v165 = v164;
      v397 = dCopy;
      v424 = v22;
      if (v164)
      {
        v166 = [v164 objectForKeyedSubscript:@"AbsMinHeatSetpointLimit"];
        if ([v166 count])
        {
          v167 = [v166 objectAtIndexedSubscript:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v168 = v167;
          }

          else
          {
            v168 = 0;
          }

          v169 = v168;

          integerValue6 = [v169 integerValue];
        }

        else
        {
          integerValue6 = 700;
        }

        objb = integerValue6;
        v244 = [v165 objectForKeyedSubscript:@"AbsMaxHeatSetpointLimit"];

        if ([v244 count])
        {
          v245 = [v244 objectAtIndexedSubscript:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v246 = v245;
          }

          else
          {
            v246 = 0;
          }

          v247 = v246;

          integerValue7 = [v247 integerValue];
        }

        else
        {
          integerValue7 = 3000;
        }

        v249 = [v165 objectForKeyedSubscript:@"AbsMinCoolSetpointLimit"];

        v420 = v16;
        if ([v249 count])
        {
          v250 = [v249 objectAtIndexedSubscript:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v251 = v250;
          }

          else
          {
            v251 = 0;
          }

          v252 = v251;

          integerValue8 = [v252 integerValue];
        }

        else
        {
          integerValue8 = 1600;
        }

        v254 = [v165 objectForKeyedSubscript:@"AbsMaxCoolSetpointLimit"];

        if ([v254 count])
        {
          v255 = [v254 objectAtIndexedSubscript:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v256 = v255;
          }

          else
          {
            v256 = 0;
          }

          v257 = v256;

          integerValue9 = [v257 integerValue];
        }

        else
        {
          integerValue9 = 3200;
        }

        v259 = objb;
        if (([v24 unsignedIntValue] & 0x20) != 0)
        {
          v394 = integerValue8;
          v260 = [v165 objectForKeyedSubscript:@"MinSetpointDeadBand"];

          if ([v260 count])
          {
            v261 = [v260 objectAtIndexedSubscript:0];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v262 = v261;
            }

            else
            {
              v262 = 0;
            }

            v263 = v262;

            integerValue10 = [v263 integerValue];
          }

          else
          {
            integerValue10 = 25;
          }

          v16 = v420;
          v259 = objb;
          if (objb >= v394 - integerValue10)
          {
            v259 = v394 - integerValue10;
          }

          if (integerValue7 >= integerValue9 - integerValue10)
          {
            integerValue7 = integerValue9 - integerValue10;
          }
        }

        else
        {
          v260 = v254;
          v16 = v420;
        }

        v232 = v259;
        v233 = integerValue7;
      }

      else
      {
        v232 = 700.0;
        v233 = 3000.0;
      }

      constraints58 = [v426 constraints];
      [constraints58 setStepValue:&unk_283EE9310];

      v313 = [MEMORY[0x277CCABB0] numberWithDouble:v232 / 100.0];
      constraints59 = [v426 constraints];
      [constraints59 setMinimumValue:v313];

      v315 = [MEMORY[0x277CCABB0] numberWithDouble:v233 / 100.0];
      constraints60 = [v426 constraints];
      [constraints60 setMaximumValue:v315];

      v317 = objc_autoreleasePoolPush();
      v318 = selfCopy;
      v319 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v319, OS_LOG_TYPE_INFO))
      {
        v320 = HMFGetLogIdentifier();
        [v426 constraints];
        v322 = v321 = v16;
        *buf = 138543874;
        v434 = v320;
        v435 = 2112;
        v436 = v322;
        v437 = 2112;
        v438 = characteristicCopy;
        _os_log_impl(&dword_22AEAE000, v319, OS_LOG_TYPE_INFO, "%{public}@Setting metadata constraints: %@ for characteristic %@", buf, 0x20u);

        v16 = v321;
      }

      objc_autoreleasePoolPop(v317);
      dCopy = v397;
      mapCopy = v406;
      v22 = v424;
      goto LABEL_54;
    }

    if ([characteristicCopy isEqualToString:@"000000B2-0000-1000-8000-0026BB765291"])
    {
      if (([v22 isEqualToString:@"HMMTRThermostat"] & 1) == 0 && (objc_msgSend(v22, "isEqualToString:", @"HMMTRSyncThermostat") & 1) == 0 && !objc_msgSend(v22, "isEqualToString:", @"MTRClusterThermostat") || !v24)
      {
        goto LABEL_55;
      }

      constraints61 = [v426 constraints];

      if (!constraints61)
      {
        v204 = objc_alloc_init(MEMORY[0x277CFEBA8]);
        [v426 setConstraints:v204];
      }

      array3 = [MEMORY[0x277CBEB18] array];
      if (([v24 unsignedIntValue] & 2) != 0)
      {
        [array3 addObject:&unk_283EE8EF8];
      }

      if ([v24 unsignedIntValue])
      {
        [array3 addObject:&unk_283EE8EE0];
      }

      v423 = v22;
      if (([v24 unsignedIntValue] & 0x20) != 0)
      {
        [array3 addObject:&unk_283EE8DC0];
      }

      v418 = v16;
      v405 = mapCopy;
      v396 = dCopy;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      obj = array3;
      v206 = [obj countByEnumeratingWithState:&v428 objects:v432 count:16];
      if (v206)
      {
        v207 = v206;
        v208 = 0;
        v209 = 0;
        v210 = *v429;
        do
        {
          for (i = 0; i != v207; ++i)
          {
            if (*v429 != v210)
            {
              objc_enumerationMutation(obj);
            }

            v212 = *(*(&v428 + 1) + 8 * i);
            if (!v209)
            {
              v209 = v212;
            }

            if (!v208)
            {
              v208 = v212;
            }

            unsignedIntegerValue2 = [v212 unsignedIntegerValue];
            if (unsignedIntegerValue2 < [v209 unsignedIntegerValue])
            {
              v214 = v212;

              v209 = v214;
            }

            unsignedIntegerValue3 = [v212 unsignedIntegerValue];
            if (unsignedIntegerValue3 > [v208 unsignedIntegerValue])
            {
              v216 = v212;

              v208 = v216;
            }
          }

          v207 = [obj countByEnumeratingWithState:&v428 objects:v432 count:16];
        }

        while (v207);
      }

      else
      {
        v208 = 0;
        v209 = 0;
      }

      constraints62 = [v426 constraints];
      [constraints62 setMinimumValue:v209];

      constraints63 = [v426 constraints];
      [constraints63 setMaximumValue:v208];

      constraints64 = [v426 constraints];
      [constraints64 setValidValues:obj];

      constraints65 = [v426 constraints];
      [constraints65 setStepValue:&unk_283EE8EE0];

      v269 = objc_autoreleasePoolPush();
      v270 = selfCopy;
      v271 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v271, OS_LOG_TYPE_INFO))
      {
        v272 = HMFGetLogIdentifier();
        constraints66 = [v426 constraints];
        *buf = 138543874;
        v434 = v272;
        v435 = 2112;
        v436 = constraints66;
        v437 = 2112;
        v438 = characteristicCopy;
        _os_log_impl(&dword_22AEAE000, v271, OS_LOG_TYPE_INFO, "%{public}@Setting metadata constraints: %@ for characteristic %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v269);
      goto LABEL_143;
    }

    v425 = v22;
    if (([characteristicCopy isEqualToString:@"00000090-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(characteristicCopy, "isEqualToString:", @"00000091-0000-1000-8000-0026BB765291") & 1) != 0 || (objc_msgSend(characteristicCopy, "isEqualToString:", @"00000093-0000-1000-8000-0026BB765291") & 1) != 0 || objc_msgSend(characteristicCopy, "isEqualToString:", @"00000094-0000-1000-8000-0026BB765291"))
    {
      constraints67 = [v426 constraints];

      if (!constraints67)
      {
        v218 = objc_alloc_init(MEMORY[0x277CFEBA8]);
        [v426 setConstraints:v218];
      }

      constraints68 = [v426 constraints];
      [constraints68 setMinimumValue:&unk_283EE8DC0];

      constraints69 = [v426 constraints];
      [constraints69 setMaximumValue:&unk_283EE8DD8];

      constraints70 = [v426 constraints];
      [constraints70 setStepValue:&unk_283EE8EE0];

      v23 = topologyCopy;
      v222 = [topologyCopy getAttributesForClusterClassName:v22 endpoint:dCopy];
      v223 = v222;
      if (!v222)
      {
        obja = 0;
        v419 = v16;
        v234 = objc_autoreleasePoolPush();
        v235 = selfCopy;
        v236 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
        {
          v237 = HMFGetLogIdentifier();
          constraints71 = [v426 constraints];
          [constraints71 minimumValue];
          v408 = mapCopy;
          v240 = v239 = dCopy;
          [v426 constraints];
          v416 = characteristicCopy;
          v242 = v241 = v24;
          maximumValue8 = [v242 maximumValue];
          *buf = 138544386;
          v434 = v237;
          v435 = 2112;
          v436 = v425;
          v437 = 2112;
          v438 = v239;
          v439 = 2112;
          v440 = v240;
          v441 = 2112;
          v442 = maximumValue8;
          _os_log_impl(&dword_22AEAE000, v236, OS_LOG_TYPE_ERROR, "%{public}@No attributes found for cluster %@ on endpoint %@. Use default MeasuredValue Min/Max %@, %@", buf, 0x34u);

          v24 = v241;
          characteristicCopy = v416;

          dCopy = v239;
          mapCopy = v408;

          v23 = topologyCopy;
        }

        objc_autoreleasePoolPop(v234);
        v16 = v419;
        goto LABEL_241;
      }

      v407 = mapCopy;
      v224 = [v222 objectForKeyedSubscript:@"MeasurementUnit"];
      v412 = v24;
      v415 = characteristicCopy;
      v398 = dCopy;
      if (![v224 count])
      {
        v231 = &unk_283EE9320;
        goto LABEL_222;
      }

      v225 = v223;
      v226 = v16;
      v227 = [v224 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v228 = v227;
      }

      else
      {
        v228 = 0;
      }

      v229 = v228;

      if (v229)
      {
        integerValue11 = [v229 integerValue];
        if (integerValue11 < 3)
        {
          v231 = qword_2786F08B8[integerValue11];

          v223 = v225;
LABEL_222:
          obja = v223;
          v274 = [v223 objectForKeyedSubscript:@"MinMeasuredValue"];

          v275 = v426;
          if ([v274 count])
          {
            v276 = [v274 objectAtIndexedSubscript:0];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v277 = v276;
            }

            else
            {
              v277 = 0;
            }

            v278 = v277;

            if (v278)
            {
              v279 = MEMORY[0x277CCABB0];
              [v278 floatValue];
              v281 = v280;
              [v231 floatValue];
              *&v283 = floorf(v281 * v282);
              v284 = [v279 numberWithFloat:v283];
              constraints72 = [v426 constraints];
              [constraints72 setMinimumValue:v284];
            }
          }

          v286 = v231;
          v287 = objc_autoreleasePoolPush();
          v288 = selfCopy;
          v289 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v289, OS_LOG_TYPE_DEBUG))
          {
            v290 = HMFGetLogIdentifier();
            [v426 constraints];
            v292 = v291 = v16;
            minimumValue5 = [v292 minimumValue];
            *buf = 138543874;
            v434 = v290;
            v435 = 2112;
            v436 = minimumValue5;
            v437 = 2112;
            v438 = v425;
            _os_log_impl(&dword_22AEAE000, v289, OS_LOG_TYPE_DEBUG, "%{public}@MinMeasuredValue %@ for %@ cluster", buf, 0x20u);

            v275 = v426;
            v16 = v291;
          }

          objc_autoreleasePoolPop(v287);
          v294 = [obja objectForKeyedSubscript:@"MaxMeasuredValue"];

          characteristicCopy = v415;
          if ([v294 count])
          {
            v295 = [v294 objectAtIndexedSubscript:0];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v296 = v295;
            }

            else
            {
              v296 = 0;
            }

            v297 = v296;

            if (v297)
            {
              v298 = MEMORY[0x277CCABB0];
              [v297 floatValue];
              v300 = v299;
              [v286 floatValue];
              *&v302 = ceilf(v300 * v301);
              v303 = [v298 numberWithFloat:v302];
              constraints73 = [v275 constraints];
              [constraints73 setMaximumValue:v303];
            }
          }

          v305 = objc_autoreleasePoolPush();
          v306 = v288;
          v307 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v307, OS_LOG_TYPE_DEBUG))
          {
            v308 = HMFGetLogIdentifier();
            [v275 constraints];
            v310 = v309 = v16;
            maximumValue9 = [v310 maximumValue];
            *buf = 138543874;
            v434 = v308;
            v435 = 2112;
            v436 = maximumValue9;
            v437 = 2112;
            v438 = v425;
            _os_log_impl(&dword_22AEAE000, v307, OS_LOG_TYPE_DEBUG, "%{public}@MaxMeasuredValue %@ for %@ cluster", buf, 0x20u);

            v16 = v309;
          }

          objc_autoreleasePoolPop(v305);
          dCopy = v398;
          v23 = topologyCopy;
          mapCopy = v407;
          v24 = v412;
LABEL_241:

          v22 = v425;
          goto LABEL_55;
        }

        v323 = objc_autoreleasePoolPush();
        v327 = selfCopy;
        v325 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_256;
        }

        v326 = HMFGetLogIdentifier();
        v328 = [v224 objectAtIndexedSubscript:0];
        *buf = 138543874;
        v434 = v326;
        v435 = 2112;
        v436 = v328;
        v437 = 2112;
        v438 = v425;
        _os_log_impl(&dword_22AEAE000, v325, OS_LOG_TYPE_ERROR, "%{public}@MeasurementUnit type %@ for cluster %@ is not supported", buf, 0x20u);
      }

      else
      {
        v323 = objc_autoreleasePoolPush();
        v324 = selfCopy;
        v325 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
        {
LABEL_256:

          objc_autoreleasePoolPop(v323);
          characteristicCopy = v415;
          dCopy = v398;
          v23 = topologyCopy;
          mapCopy = v407;
          v16 = v226;
LABEL_257:
          v22 = v425;
          v24 = v412;
          goto LABEL_55;
        }

        v326 = HMFGetLogIdentifier();
        *buf = 138543618;
        v434 = v326;
        v435 = 2112;
        v436 = v425;
        _os_log_impl(&dword_22AEAE000, v325, OS_LOG_TYPE_ERROR, "%{public}@Error: nil read for MeasurementUnit attribute for cluster %@, using min/max defaults", buf, 0x16u);
      }

      goto LABEL_256;
    }

    v23 = topologyCopy;
    if (([characteristicCopy isEqualToString:@"000000C4-0000-1000-8000-0026BB765291"] & 1) == 0 && (objc_msgSend(characteristicCopy, "isEqualToString:", @"000000C3-0000-1000-8000-0026BB765291") & 1) == 0 && (objc_msgSend(characteristicCopy, "isEqualToString:", @"000000C6-0000-1000-8000-0026BB765291") & 1) == 0 && (objc_msgSend(characteristicCopy, "isEqualToString:", @"000000C7-0000-1000-8000-0026BB765291") & 1) == 0 && !objc_msgSend(characteristicCopy, "isEqualToString:", @"000000C8-0000-1000-8000-0026BB765291"))
    {
      goto LABEL_55;
    }

    v409 = mapCopy;
    v412 = v24;
    v421 = v16;
    v399 = dCopy;
    constraints74 = [v426 constraints];

    if (!constraints74)
    {
      v330 = objc_alloc_init(MEMORY[0x277CFEBA8]);
      [v426 setConstraints:v330];
    }

    constraints75 = [v426 constraints];
    [constraints75 setMinimumValue:&unk_283EE8DC0];

    constraints76 = [v426 constraints];
    [constraints76 setMaximumValue:&unk_283EE8DD8];

    constraints77 = [v426 constraints];
    [constraints77 setStepValue:&unk_283EE8EE0];

    v334 = [topologyCopy getAttributesForClusterClassName:v22 endpoint:dCopy];
    v335 = v334;
    if (!v334)
    {
      v341 = objc_autoreleasePoolPush();
      v342 = selfCopy;
      v343 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v343, OS_LOG_TYPE_ERROR))
      {
        v344 = HMFGetLogIdentifier();
        constraints78 = [v426 constraints];
        minimumValue6 = [constraints78 minimumValue];
        constraints79 = [v426 constraints];
        maximumValue10 = [constraints79 maximumValue];
        *buf = 138544386;
        v434 = v344;
        v435 = 2112;
        v436 = v425;
        v437 = 2112;
        v438 = v399;
        v439 = 2112;
        v440 = minimumValue6;
        v441 = 2112;
        v442 = maximumValue10;
        _os_log_impl(&dword_22AEAE000, v343, OS_LOG_TYPE_ERROR, "%{public}@No attributes found for cluster %@ on endpoint %@. Use default MeasuredValue Min/Max %@, %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v341);
      goto LABEL_302;
    }

    v336 = [v334 objectForKeyedSubscript:@"MeasurementUnit"];
    if (![v336 count])
    {
      objc = &unk_283EE9320;
      goto LABEL_277;
    }

    v337 = [v336 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v338 = v337;
    }

    else
    {
      v338 = 0;
    }

    v339 = v338;

    if (v339)
    {
      integerValue12 = [v339 integerValue];
      if ((integerValue12 - 3) < 3)
      {
        objc = qword_2786F08D0[integerValue12 - 3];

LABEL_277:
        v349 = [v335 objectForKeyedSubscript:@"MinMeasuredValue"];

        if ([v349 count])
        {
          v350 = [v349 objectAtIndexedSubscript:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v351 = v350;
          }

          else
          {
            v351 = 0;
          }

          v352 = v351;

          if (v352)
          {
            v353 = MEMORY[0x277CCABB0];
            [v352 floatValue];
            v355 = v354;
            [objc floatValue];
            *&v357 = floorf(v355 * v356);
            v358 = [v353 numberWithFloat:v357];
            constraints80 = [v426 constraints];
            [constraints80 setMinimumValue:v358];
          }
        }

        v360 = objc_autoreleasePoolPush();
        v361 = selfCopy;
        v362 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v362, OS_LOG_TYPE_DEBUG))
        {
          v363 = HMFGetLogIdentifier();
          constraints81 = [v426 constraints];
          minimumValue7 = [constraints81 minimumValue];
          *buf = 138543874;
          v434 = v363;
          v435 = 2112;
          v436 = minimumValue7;
          v437 = 2112;
          v438 = v425;
          _os_log_impl(&dword_22AEAE000, v362, OS_LOG_TYPE_DEBUG, "%{public}@MinMeasuredValue %@ for %@ cluster", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v360);
        v366 = [v335 objectForKeyedSubscript:@"MaxMeasuredValue"];

        if ([v366 count])
        {
          v367 = [v366 objectAtIndexedSubscript:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v368 = v367;
          }

          else
          {
            v368 = 0;
          }

          v369 = v368;

          if (v369)
          {
            v370 = MEMORY[0x277CCABB0];
            [v369 floatValue];
            v372 = v371;
            [objc floatValue];
            *&v374 = ceilf(v372 * v373);
            v375 = [v370 numberWithFloat:v374];
            constraints82 = [v426 constraints];
            [constraints82 setMaximumValue:v375];
          }
        }

        v377 = objc_autoreleasePoolPush();
        v378 = v361;
        v379 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v379, OS_LOG_TYPE_DEBUG))
        {
          v380 = HMFGetLogIdentifier();
          constraints83 = [v426 constraints];
          maximumValue11 = [constraints83 maximumValue];
          *buf = 138543874;
          v434 = v380;
          v435 = 2112;
          v436 = maximumValue11;
          v437 = 2112;
          v438 = v425;
          _os_log_impl(&dword_22AEAE000, v379, OS_LOG_TYPE_DEBUG, "%{public}@MaxMeasuredValue %@ for %@ cluster", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v377);
        goto LABEL_302;
      }

      v383 = objc_autoreleasePoolPush();
      v387 = selfCopy;
      v385 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v385, OS_LOG_TYPE_ERROR))
      {
        v386 = HMFGetLogIdentifier();
        v388 = [v336 objectAtIndexedSubscript:0];
        *buf = 138543874;
        v434 = v386;
        v435 = 2112;
        v436 = v388;
        v437 = 2112;
        v438 = v425;
        _os_log_impl(&dword_22AEAE000, v385, OS_LOG_TYPE_ERROR, "%{public}@MeasurementUnit type %@ for cluster %@ is not supported", buf, 0x20u);

        goto LABEL_300;
      }
    }

    else
    {
      v383 = objc_autoreleasePoolPush();
      v384 = selfCopy;
      v385 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v385, OS_LOG_TYPE_ERROR))
      {
        v386 = HMFGetLogIdentifier();
        *buf = 138543618;
        v434 = v386;
        v435 = 2112;
        v436 = v425;
        _os_log_impl(&dword_22AEAE000, v385, OS_LOG_TYPE_ERROR, "%{public}@Error: nil read for MeasurementUnit attribute for cluster %@, using min/max defaults", buf, 0x16u);
LABEL_300:
      }
    }

    objc_autoreleasePoolPop(v383);
LABEL_302:

    dCopy = v399;
    v23 = topologyCopy;
    mapCopy = v409;
    v16 = v421;
    goto LABEL_257;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138543874;
    v434 = v36;
    v435 = 2112;
    v436 = characteristicCopy;
    v437 = 2112;
    v438 = 0;
    _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Invalid characteristicUUID. Does not convert to a short integer. UUID:%@ shortened: %@. Using default characteristic metadata", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  v23 = topologyCopy;
LABEL_56:
}

- (id)getMTRClusterClassForCharacteristic:(id)characteristic endpointID:(id)d clusterIDCharacteristicMap:(id)map
{
  v27 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  dCopy = d;
  mapCopy = map;
  v11 = -[HMMTRProtocolMap _characteristicsDictionaryForCharacteristic:endpointID:clusterIDCharacteristicMap:](self, "_characteristicsDictionaryForCharacteristic:endpointID:clusterIDCharacteristicMap:", characteristicCopy, [dCopy unsignedIntegerValue], mapCopy);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"CHIPCluster"];
    v14 = [(HMMTRProtocolMap *)self mtrClusterNameFromMTRBaseClusterName:v13];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    v17 = v16;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = characteristicCopy;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Mapping Characteristic %@ is not supported", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  return v17;
}

- (id)getClusterClassForCharacteristic:(id)characteristic endpointID:(id)d clusterIDCharacteristicMap:(id)map
{
  v23 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  dCopy = d;
  mapCopy = map;
  v11 = -[HMMTRProtocolMap _characteristicsDictionaryForCharacteristic:endpointID:clusterIDCharacteristicMap:](self, "_characteristicsDictionaryForCharacteristic:endpointID:clusterIDCharacteristicMap:", characteristicCopy, [dCopy unsignedIntegerValue], mapCopy);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"CHIPCluster"];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = characteristicCopy;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Mapping Characteristic %@ is not supported", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  return v13;
}

- (BOOL)isRequiresOptionalMatterAttributeForCharacteristic:(id)characteristic
{
  v3 = [characteristic objectForKeyedSubscript:@"ConfigureCharacteristic"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"RequiresOptionalMatterAttribute"];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)getRequiredFeaturesBitmapForCharacteristic:(id)characteristic
{
  v3 = [characteristic objectForKeyedSubscript:@"ConfigureCharacteristic"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"RequiredFeaturesBitmap"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getRequiredAttributesForCharacteristic:(id)characteristic
{
  v29 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  v5 = [(HMMTRProtocolMap *)self rawPlistAtKey:@"HAPCharacteristics"];
  if (v5)
  {
    v6 = [HMMTRUtilities hmmtr_shortTypeFromUUID:characteristicCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([v6 isEqual:*(*(&v21 + 1) + 8 * i)])
          {
            v12 = [v7 objectForKeyedSubscript:v6];
            memset(v20, 0, sizeof(v20));
            v13 = v12;
            if ([v13 countByEnumeratingWithState:v20 objects:v25 count:16])
            {
              array = [**(&v20[0] + 1) objectForKeyedSubscript:@"RequiredAttributes"];

              goto LABEL_17;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    array = [MEMORY[0x277CBEA60] array];
LABEL_17:
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v18;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to read HAPCharacteristic dictionary from HomeKitMatter's ProtocolMap.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

- (id)getCHIPAttributesForCharacteristic:(id)characteristic
{
  v29 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  v5 = [(HMMTRProtocolMap *)self rawPlistAtKey:@"HAPCharacteristics"];
  if (v5)
  {
    v6 = [HMMTRUtilities hmmtr_shortTypeFromUUID:characteristicCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([v6 isEqual:*(*(&v21 + 1) + 8 * i)])
          {
            v12 = [v7 objectForKeyedSubscript:v6];
            memset(v20, 0, sizeof(v20));
            v13 = v12;
            if ([v13 countByEnumeratingWithState:v20 objects:v25 count:16])
            {
              array = [**(&v20[0] + 1) objectForKeyedSubscript:@"CHIPAttributes"];

              goto LABEL_17;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    array = [MEMORY[0x277CBEA60] array];
LABEL_17:
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v18;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to read HAPCharacteristic dictionary from HomeKitMatter's ProtocolMap.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

- (void)servicesOfMTRDevice:(id)device forDeviceTypes:(id)types endpoint:(id)endpoint callbackQueue:(id)queue completionHandler:(id)handler
{
  v50 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  typesCopy = types;
  endpointCopy = endpoint;
  queue = queue;
  handlerCopy = handler;
  v12 = [(HMMTRProtocolMap *)self rawPlistOffsetForKey:@"CHIPDeviceTypes"];
  if (v12)
  {
    v13 = v12;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3032000000;
    v47[3] = __Block_byref_object_copy__10952;
    v47[4] = __Block_byref_object_dispose__10953;
    v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = __Block_byref_object_copy__10952;
    v45[4] = __Block_byref_object_dispose__10953;
    v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = dispatch_group_create();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = typesCopy;
    v15 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v15)
    {
      v16 = *v42;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          mapData = self->_mapData;
          stringValue = [v18 stringValue];
          v21 = [(NSData *)mapData hmf_objectForKey:stringValue forDictionaryAtOffset:v13];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v21;
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;

          dispatch_group_enter(v14);
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __96__HMMTRProtocolMap_servicesOfMTRDevice_forDeviceTypes_endpoint_callbackQueue_completionHandler___block_invoke;
          v37[3] = &unk_2786F06B8;
          v39 = v47;
          v40 = v45;
          v37[4] = self;
          v37[5] = v18;
          v38 = v14;
          [(HMMTRProtocolMap *)self _selectedServiceTypeForServiceArray:v23 device:0 mtrDevice:deviceCopy endpoint:endpointCopy callbackQueue:queue completionHandler:v37];
        }

        v15 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v15);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__HMMTRProtocolMap_servicesOfMTRDevice_forDeviceTypes_endpoint_callbackQueue_completionHandler___block_invoke_436;
    block[3] = &unk_2786F06E0;
    v35 = v47;
    v34 = handlerCopy;
    block[4] = self;
    v33 = obj;
    v36 = v45;
    dispatch_group_notify(v14, queue, block);

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);

    v24 = handlerCopy;
  }

  else
  {
    v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    v24 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v25);
  }
}

void __96__HMMTRProtocolMap_servicesOfMTRDevice_forDeviceTypes_endpoint_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v7];
    if (v8)
    {
      [*(*(*(a1 + 64) + 8) + 40) addEntriesFromDictionary:v8];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find HAP service type for deviceType %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __96__HMMTRProtocolMap_servicesOfMTRDevice_forDeviceTypes_endpoint_callbackQueue_completionHandler___block_invoke_436(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (([*(*(*(a1 + 56) + 8) + 40) containsObject:@"96"] & 1) == 0)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:@"96"];
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      v7 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@The services for the device types  %@ : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v13 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@The linked services for the device types  %@ : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    (*(v14 + 16))(v14, 0, 0);
  }
}

- (void)servicesForDeviceTypes:(id)types device:(id)device endpoint:(id)endpoint callbackQueue:(id)queue completionHandler:(id)handler
{
  v50 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  deviceCopy = device;
  endpointCopy = endpoint;
  queue = queue;
  handlerCopy = handler;
  v12 = [(HMMTRProtocolMap *)self rawPlistOffsetForKey:@"CHIPDeviceTypes"];
  if (v12)
  {
    v13 = v12;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3032000000;
    v47[3] = __Block_byref_object_copy__10952;
    v47[4] = __Block_byref_object_dispose__10953;
    v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = __Block_byref_object_copy__10952;
    v45[4] = __Block_byref_object_dispose__10953;
    v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = dispatch_group_create();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = typesCopy;
    v15 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v15)
    {
      v16 = *v42;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          mapData = self->_mapData;
          stringValue = [v18 stringValue];
          v21 = [(NSData *)mapData hmf_objectForKey:stringValue forDictionaryAtOffset:v13];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v21;
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;

          dispatch_group_enter(v14);
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __91__HMMTRProtocolMap_servicesForDeviceTypes_device_endpoint_callbackQueue_completionHandler___block_invoke;
          v37[3] = &unk_2786F06B8;
          v39 = v47;
          v40 = v45;
          v37[4] = self;
          v37[5] = v18;
          v38 = v14;
          [(HMMTRProtocolMap *)self _selectedServiceTypeForServiceArray:v23 device:deviceCopy mtrDevice:0 endpoint:endpointCopy callbackQueue:queue completionHandler:v37];
        }

        v15 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v15);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__HMMTRProtocolMap_servicesForDeviceTypes_device_endpoint_callbackQueue_completionHandler___block_invoke_435;
    block[3] = &unk_2786F06E0;
    v35 = v47;
    v34 = handlerCopy;
    block[4] = self;
    v33 = obj;
    v36 = v45;
    dispatch_group_notify(v14, queue, block);

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);

    v24 = handlerCopy;
  }

  else
  {
    v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    v24 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v25);
  }
}

void __91__HMMTRProtocolMap_servicesForDeviceTypes_device_endpoint_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v7];
    if (v8)
    {
      [*(*(*(a1 + 64) + 8) + 40) addEntriesFromDictionary:v8];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find HAP service type for deviceType %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __91__HMMTRProtocolMap_servicesForDeviceTypes_device_endpoint_callbackQueue_completionHandler___block_invoke_435(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (([*(*(*(a1 + 56) + 8) + 40) containsObject:@"96"] & 1) == 0)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:@"96"];
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      v7 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@The services for the device types %@ : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v13 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@The linked services for the device types %@ : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    (*(v14 + 16))(v14, 0, 0);
  }
}

- (void)_selectedServiceTypeForServiceArray:(id)array device:(id)device mtrDevice:(id)mtrDevice endpoint:(id)endpoint callbackQueue:(id)queue completionHandler:(id)handler
{
  v93 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  deviceCopy = device;
  mtrDeviceCopy = mtrDevice;
  endpointCopy = endpoint;
  queue = queue;
  handlerCopy = handler;
  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x3032000000;
  v86[3] = __Block_byref_object_copy__10952;
  v86[4] = __Block_byref_object_dispose__10953;
  v87 = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = __Block_byref_object_copy__10952;
  v84[4] = __Block_byref_object_dispose__10953;
  v85 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x3032000000;
  v82[3] = __Block_byref_object_copy__10952;
  v82[4] = __Block_byref_object_dispose__10953;
  v83 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x3032000000;
  v80[3] = __Block_byref_object_copy__10952;
  v80[4] = __Block_byref_object_dispose__10953;
  v81 = 0;
  v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
  group = dispatch_group_create();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = arrayCopy;
  v14 = [obj countByEnumeratingWithState:&v76 objects:v92 count:16];
  if (v14)
  {
    v60 = *v77;
    do
    {
      v61 = v14;
      for (i = 0; i != v61; ++i)
      {
        if (*v77 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v76 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:{@"SelectionCriteria", handlerCopy}];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 objectForKeyedSubscript:@"RequiredFeaturesBitmap"];
          v20 = [v18 objectForKeyedSubscript:@"CHIPCluster"];
          v21 = v20;
          if (v19)
          {
            v22 = v20 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22)
          {
            if (deviceCopy)
            {
              v23 = [objc_alloc(NSClassFromString(v20)) initWithDevice:deviceCopy endpoint:objc_msgSend(endpointCopy queue:{"unsignedIntegerValue"), queue}];
              if (objc_opt_respondsToSelector())
              {
                dispatch_group_enter(group);
                v71[0] = MEMORY[0x277D85DD0];
                v71[1] = 3221225472;
                v71[2] = __114__HMMTRProtocolMap__selectedServiceTypeForServiceArray_device_mtrDevice_endpoint_callbackQueue_completionHandler___block_invoke;
                v71[3] = &unk_2786F0668;
                v71[4] = self;
                v72 = v21;
                v73 = group;
                v74 = v53;
                v75 = v16;
                [v23 readAttributeFeatureMapWithCompletionHandler:v71];
              }

              else
              {
                v35 = objc_autoreleasePoolPush();
                selfCopy = self;
                v37 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v38 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v89 = v38;
                  v90 = 2112;
                  v91 = v23;
                  _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_ERROR, "%{public}@Feature map selector not found for cluster: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v35);
              }
            }

            else
            {
              if (!mtrDeviceCopy)
              {
                _HMFPreconditionFailure();
                __break(1u);
              }

              v24 = [(HMMTRProtocolMap *)self mtrClusterNameFromMTRBaseClusterName:v20];
              v25 = v24;
              if (v24)
              {
                v26 = v24;
              }

              else
              {
                v26 = v21;
              }

              v23 = v26;

              createClusterInstance = [(HMMTRProtocolMap *)self createClusterInstance];
              v28 = (createClusterInstance)[2](createClusterInstance, v23, mtrDeviceCopy, endpointCopy, queue);

              if (objc_opt_respondsToSelector())
              {
                v29 = objc_alloc_init(MEMORY[0x277CD54D8]);
                v30 = [v28 readAttributeFeatureMapWithParams:v29];

                v31 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v30 forIdentify:@"featureMap"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v32 = v31;
                }

                else
                {
                  v32 = 0;
                }

                v33 = v32;

                if (v33)
                {
                  v34 = [v16 objectForKeyedSubscript:@"HAPServiceType"];
                  [v53 setValue:v33 forKey:v34];
                }

                else
                {
                  context = objc_autoreleasePoolPush();
                  selfCopy2 = self;
                  v43 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                  {
                    v44 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v89 = v44;
                    v90 = 2112;
                    v91 = v23;
                    v49 = v44;
                    _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_ERROR, "%{public}@Cluster class %@ feature map is absent from cache", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(context);
                }
              }

              else
              {
                v39 = objc_autoreleasePoolPush();
                selfCopy3 = self;
                v41 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  v42 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v89 = v42;
                  v90 = 2112;
                  v91 = v28;
                  _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@Feature map selector not found for cluster: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v39);
              }
            }
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v76 objects:v92 count:16];
    }

    while (v14);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__HMMTRProtocolMap__selectedServiceTypeForServiceArray_device_mtrDevice_endpoint_callbackQueue_completionHandler___block_invoke_432;
  block[3] = &unk_2786F0690;
  v63 = obj;
  v64 = v53;
  selfCopy4 = self;
  v66 = handlerCopy;
  v67 = v86;
  v68 = v80;
  v69 = v84;
  v70 = v82;
  v45 = handlerCopy;
  v46 = v53;
  v47 = obj;
  dispatch_group_notify(group, queue, block);

  _Block_object_dispose(v80, 8);
  _Block_object_dispose(v82, 8);

  _Block_object_dispose(v84, 8);
  _Block_object_dispose(v86, 8);
}

void __114__HMMTRProtocolMap__selectedServiceTypeForServiceArray_device_mtrDevice_endpoint_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v14 = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Received error response from accessory for cluster class %@, Error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v12 = *(a1 + 56);
    v13 = [*(a1 + 64) objectForKeyedSubscript:@"HAPServiceType"];
    [v12 setValue:v5 forKey:v13];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __114__HMMTRProtocolMap__selectedServiceTypeForServiceArray_device_mtrDevice_endpoint_callbackQueue_completionHandler___block_invoke_432(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (v3)
  {
    v4 = v3;
    obj = v2;
    v66 = *v73;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v73 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v72 + 1) + 8 * v5);
      v7 = [v6 objectForKeyedSubscript:{@"SelectionCriteria", obj}];
      if (!v7)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
        v2 = obj;
        break;
      }

      v8 = v7;
      v9 = [v7 objectForKeyedSubscript:@"PriorityOrder"];
      v10 = [v8 objectForKeyedSubscript:@"RequiredFeaturesBitmap"];
      v11 = [v6 objectForKeyedSubscript:@"HAPServiceType"];
      v12 = [*(a1 + 40) objectForKeyedSubscript:v11];
      if (v10)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v58 = objc_autoreleasePoolPush();
        v59 = *(a1 + 48);
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v61 = HMFGetLogIdentifier();
          *buf = 138543362;
          v78 = v61;
          _os_log_impl(&dword_22AEAE000, v60, OS_LOG_TYPE_ERROR, "%{public}@Could not get feature map value from accessory, aborting HAP service selection", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v58);
        v62 = *(a1 + 56);
        v63 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
        (*(v62 + 16))(v62, 0, 0, v63);

        v56 = obj;
        goto LABEL_47;
      }

      v14 = v12;
      if (v10)
      {
        v15 = [v12 unsignedIntegerValue];
        v16 = [v10 unsignedIntegerValue] & v15;
        if (v16 != [v10 unsignedIntegerValue])
        {
          goto LABEL_19;
        }
      }

      if (v9)
      {
        if (*(*(*(a1 + 72) + 8) + 40))
        {
          v17 = [v9 integerValue];
          if (v17 >= [*(*(*(a1 + 72) + 8) + 40) integerValue])
          {
            goto LABEL_19;
          }
        }

        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
        v18 = *(*(a1 + 72) + 8);
        v19 = v9;
        v20 = *(v18 + 40);
        *(v18 + 40) = v19;
      }

      else
      {
        v21 = *(*(*(a1 + 80) + 8) + 40);
        v20 = [v6 objectForKeyedSubscript:@"HAPServiceType"];
        [v21 addObject:v20];
      }

LABEL_19:
      if (v4 == ++v5)
      {
        v2 = obj;
        v4 = [obj countByEnumeratingWithState:&v72 objects:v83 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v22 = *(*(*(a1 + 64) + 8) + 40);
  if (v22)
  {
    v23 = [v22 objectForKeyedSubscript:@"HAPServiceType"];

    if (v23)
    {
      v24 = *(*(*(a1 + 80) + 8) + 40);
      v25 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:@"HAPServiceType"];
      [v24 addObject:v25];

      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 48);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:@"Description"];
        v31 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:@"HAPServiceType"];
        *buf = 138543874;
        v78 = v29;
        v79 = 2112;
        v80 = v30;
        v81 = 2112;
        v82 = v31;
        _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@Primary selected service: %@, %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v32 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:@"OptionalLinkedHAPServiceTypes"];
      if (v32)
      {
        v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v67 = v32;
        v34 = v32;
        v35 = [v34 countByEnumeratingWithState:&v68 objects:v76 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v69;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v69 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v68 + 1) + 8 * i);
              v40 = *(*(*(a1 + 80) + 8) + 40);
              v41 = [v39 objectForKeyedSubscript:@"HAPServiceType"];
              [v40 addObject:v41];

              v42 = [v39 objectForKeyedSubscript:@"HAPServiceType"];
              [v33 addObject:v42];
            }

            v36 = [v34 countByEnumeratingWithState:&v68 objects:v76 count:16];
          }

          while (v36);
        }

        v43 = *(*(*(a1 + 88) + 8) + 40);
        v44 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:@"HAPServiceType"];
        [v43 setObject:v33 forKey:v44];

        v32 = v67;
      }
    }
  }

  if ([*(*(*(a1 + 80) + 8) + 40) count])
  {
    v45 = objc_autoreleasePoolPush();
    v46 = *(a1 + 48);
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = HMFGetLogIdentifier();
      v49 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138543618;
      v78 = v48;
      v79 = 2112;
      v80 = v49;
      _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_INFO, "%{public}@All selected service types: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);
    v50 = objc_autoreleasePoolPush();
    v51 = *(a1 + 48);
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      v54 = *(*(*(a1 + 88) + 8) + 40);
      *buf = 138543618;
      v78 = v53;
      v79 = 2112;
      v80 = v54;
      _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_INFO, "%{public}@All selected linked service types: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
    v55 = *(a1 + 56);
    v56 = [*(*(*(a1 + 80) + 8) + 40) copy];
    v57 = [*(*(*(a1 + 88) + 8) + 40) copy];
    (*(v55 + 16))(v55, v56, v57, 0);
  }

  else
  {
    v64 = *(a1 + 56);
    v56 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v64 + 16))(v64, 0, 0, v56);
  }

LABEL_47:
}

- (id)categoriesForDeviceTypes:(id)types
{
  v59 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v38 = [(HMMTRProtocolMap *)self rawPlistOffsetForKey:@"CHIPDeviceTypes"];
  if (v38)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v35 = typesCopy;
    obj = typesCopy;
    v39 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
    if (v39)
    {
      v37 = *v48;
      do
      {
        v6 = 0;
        do
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v40 = v6;
          v7 = *(*(&v47 + 1) + 8 * v6);
          mapData = self->_mapData;
          v41 = v7;
          stringValue = [v7 stringValue];
          v10 = [(NSData *)mapData hmf_objectForKey:stringValue forDictionaryAtOffset:v38];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v42 = v12;
          v13 = [v42 countByEnumeratingWithState:&v43 objects:v57 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v44;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v44 != v15)
                {
                  objc_enumerationMutation(v42);
                }

                v17 = [*(*(&v43 + 1) + 8 * i) objectForKeyedSubscript:@"HAPCategory"];
                v18 = v17;
                if (v17)
                {
                  v19 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v17, "integerValue")}];
                  [v5 addObject:v19];
                }

                else
                {
                  v20 = objc_autoreleasePoolPush();
                  selfCopy = self;
                  v22 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    HMFGetLogIdentifier();
                    selfCopy2 = self;
                    v25 = v24 = v5;
                    *buf = 138543618;
                    v52 = v25;
                    v53 = 2112;
                    v54 = v41;
                    _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to find HAP category for deviceType %@", buf, 0x16u);

                    v5 = v24;
                    self = selfCopy2;
                  }

                  objc_autoreleasePoolPop(v20);
                }
              }

              v14 = [v42 countByEnumeratingWithState:&v43 objects:v57 count:16];
            }

            while (v14);
          }

          v6 = v40 + 1;
        }

        while (v40 + 1 != v39);
        v39 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
      }

      while (v39);
    }

    v26 = [v5 count];
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    v30 = v29;
    if (v26)
    {
      typesCopy = v35;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543874;
        v52 = v31;
        v53 = 2112;
        v54 = obj;
        v55 = 2112;
        v56 = v5;
        _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_DEBUG, "%{public}@The categories for the device types %@ : %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      v32 = v5;
    }

    else
    {
      typesCopy = v35;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v33;
        v53 = 2112;
        v54 = obj;
        _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@No valid HAP categories were found for the device types %@. Returning Other category.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v32 = &unk_283EE92E8;
    }
  }

  else
  {
    v32 = &unk_283EE92D0;
  }

  return v32;
}

- (BOOL)optionalServiceLabelIndexIncludedInService:(id)service
{
  v26 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = [(HMMTRProtocolMap *)self rawPlistAtKey:@"HAPServices"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:serviceCopy];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"OptionalServiceLabelIndex"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11)
      {
        bOOLValue = [v11 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v20;
        v24 = 2112;
        v25 = serviceCopy;
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to read HAPService dictionary from HomeKitMatter's ProtocolMap for service %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      bOOLValue = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = serviceCopy;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to read HAPServices dictionary from HomeKitMatter's ProtocolMap for service %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)optionalCharacteristicsForService:(id)service
{
  v23 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = [(HMMTRProtocolMap *)self rawPlistAtKey:@"HAPServices"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:serviceCopy];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"OptionalHAPCharacteristics"];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v17;
        v21 = 2112;
        v22 = serviceCopy;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to read HAPService dictionary from HomeKitMatter's ProtocolMap for service %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v9 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = serviceCopy;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to read HAPServices dictionary from HomeKitMatter's ProtocolMap for service %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  return v9;
}

- (id)requiredCharacteristicsForService:(id)service
{
  v23 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = [(HMMTRProtocolMap *)self rawPlistAtKey:@"HAPServices"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:serviceCopy];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"RequiredHAPCharacteristics"];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v17;
        v21 = 2112;
        v22 = serviceCopy;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to read HAPService dictionary from HomeKitMatter's ProtocolMap for service %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v9 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = serviceCopy;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to read HAPServices dictionary from HomeKitMatter's ProtocolMap for service %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  return v9;
}

- (id)_buildEventMapper:(id)mapper characteristicsDict:(id)dict
{
  v35 = *MEMORY[0x277D85DE8];
  mapperCopy = mapper;
  dictCopy = dict;
  type = [mapperCopy type];
  v9 = [dictCopy objectForKeyedSubscript:@"HAPRange"];
  if (v9 && (v10 = v9, [dictCopy objectForKeyedSubscript:@"CHIPRange"], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v15;
      v33 = 2112;
      v34 = type;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Setting up Linear mappings for Characteristic %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [dictCopy objectForKeyedSubscript:@"HAPRange"];
    v17 = [dictCopy objectForKeyedSubscript:@"CHIPRange"];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __58__HMMTRProtocolMap__buildEventMapper_characteristicsDict___block_invoke;
    v26[3] = &unk_2786F0618;
    v27 = type;
    v28 = v17;
    v29 = v16;
    v30 = selfCopy;
    v18 = v16;
    v19 = v17;
    v20 = MEMORY[0x2318887D0](v26);
    v21 = MEMORY[0x2318887D0]();
  }

  else
  {
    v21 = [dictCopy objectForKeyedSubscript:@"SpecialMappingRequired"];

    if (!v21)
    {
      goto LABEL_9;
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__HMMTRProtocolMap__buildEventMapper_characteristicsDict___block_invoke_307;
    v24[3] = &unk_2786F0640;
    v25 = mapperCopy;
    v22 = MEMORY[0x2318887D0](v24);
    v21 = MEMORY[0x2318887D0]();

    v19 = v25;
  }

LABEL_9:

  return v21;
}

id __58__HMMTRProtocolMap__buildEventMapper_characteristicsDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v6];
  v8 = [HMMTRProtocolMap linearMapForCharacteristic:*(a1 + 32) value:v7 fromRange:*(a1 + 40) toRange:*(a1 + 48)];
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 56);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Mapped event value from dictionary %@ to %@.", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);

  return v8;
}

- (id)_buildExpectedValueMapper:(id)mapper characteristicsDict:(id)dict operation:(unint64_t)operation valueMapper:(id)valueMapper
{
  dictCopy = dict;
  valueMapperCopy = valueMapper;
  v10 = [dictCopy objectForKeyedSubscript:@"Read"];
  if (operation == 1)
  {
    v11 = [dictCopy objectForKeyedSubscript:@"Write"];

    v10 = v11;
  }

  v12 = [v10 objectForKeyedSubscript:@"Type"];
  if ([v12 isEqual:@"String"])
  {
    v13 = MEMORY[0x277CD5190];
  }

  else if ([v12 isEqual:@"BOOL"])
  {
    v13 = MEMORY[0x277CD50C0];
  }

  else if ([v12 isEqual:@"UINT8"] & 1) != 0 || (objc_msgSend(v12, "isEqual:", @"UINT16"))
  {
    v13 = MEMORY[0x277CD5198];
  }

  else
  {
    if (([v12 isEqual:@"INT8"] & 1) == 0 && !objc_msgSend(v12, "isEqual:", @"INT16"))
    {
      v23 = 0;
      goto LABEL_13;
    }

    v13 = MEMORY[0x277CD5178];
  }

  v14 = *v13;

  v15 = MEMORY[0x277CCAC80];
  v16 = [dictCopy objectForKeyedSubscript:@"CHIPClusterIDHex"];
  v17 = [v15 scannerWithString:v16];

  v30 = 0;
  [v17 scanHexLongLong:&v30];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30];
  v19 = [dictCopy objectForKeyedSubscript:@"CHIPAttributes"];
  v20 = 0;
  if ([v19 count] == 1)
  {
    v20 = [v19 objectAtIndexedSubscript:0];
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __88__HMMTRProtocolMap__buildExpectedValueMapper_characteristicsDict_operation_valueMapper___block_invoke;
  v25[3] = &unk_2786F05F0;
  v29 = valueMapperCopy;
  v12 = v14;
  v26 = v12;
  v27 = v20;
  v28 = v18;
  v21 = v18;
  v22 = v20;
  v23 = MEMORY[0x2318887D0](v25);

LABEL_13:

  return v23;
}

id __88__HMMTRProtocolMap__buildExpectedValueMapper_characteristicsDict_operation_valueMapper___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a1[7];
  if (v6)
  {
    v7 = (*(v6 + 16))(v6, v5);

    v5 = v7;
  }

  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v9 = a1[4];
  v10 = *MEMORY[0x277CD51A0];
  v18[0] = *MEMORY[0x277CD5188];
  v18[1] = v10;
  v19[0] = v9;
  v19[1] = v5;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277CD50D8]];

  if (a1[5])
  {
    v12 = MEMORY[0x277CD51C0];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v14 = [v12 attributePathWithEndpointId:v13 clusterId:a1[6] attributeId:a1[5]];

    [v8 setObject:v14 forKeyedSubscript:*MEMORY[0x277CD50B8]];
  }

  v17 = v8;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];

  return v15;
}

- (id)_buildValueMapper:(id)mapper characteristicsDict:(id)dict operation:(unint64_t)operation forMTRCluster:(BOOL)cluster
{
  clusterCopy = cluster;
  v50 = *MEMORY[0x277D85DE8];
  mapperCopy = mapper;
  dictCopy = dict;
  v12 = [dictCopy objectForKeyedSubscript:@"HAPRange"];
  if (v12)
  {
    v13 = v12;
    v14 = [dictCopy objectForKeyedSubscript:@"CHIPRange"];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v18;
        v48 = 2112;
        v49 = mapperCopy;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Setting up Linear mappings for Characteristic %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [dictCopy objectForKeyedSubscript:@"HAPRange"];
      v20 = [dictCopy objectForKeyedSubscript:@"CHIPRange"];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __82__HMMTRProtocolMap__buildValueMapper_characteristicsDict_operation_forMTRCluster___block_invoke;
      v39[3] = &unk_2786F0580;
      operationCopy = operation;
      v45 = clusterCopy;
      v40 = mapperCopy;
      v41 = v20;
      v42 = v19;
      v43 = selfCopy;
      v21 = v19;
      v22 = v20;
      v23 = MEMORY[0x2318887D0](v39);
      v24 = MEMORY[0x2318887D0]();

      v25 = v40;
      goto LABEL_8;
    }
  }

  v26 = [dictCopy objectForKeyedSubscript:@"SpecialMappingRequired"];

  if (v26)
  {
    v27 = [dictCopy objectForKeyedSubscript:@"HAPRange"];
    v28 = [dictCopy objectForKeyedSubscript:@"CHIPRange"];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __82__HMMTRProtocolMap__buildValueMapper_characteristicsDict_operation_forMTRCluster___block_invoke_286;
    v33[3] = &unk_2786F05A8;
    operationCopy2 = operation;
    v38 = clusterCopy;
    v34 = mapperCopy;
    v35 = v28;
    v36 = v27;
    v21 = v27;
    v22 = v28;
    v29 = MEMORY[0x2318887D0](v33);
    v24 = MEMORY[0x2318887D0]();

    v25 = v34;
LABEL_8:

    goto LABEL_9;
  }

  if (!clusterCopy)
  {
LABEL_17:
    v24 = 0;
    goto LABEL_9;
  }

  if (operation == 4)
  {
LABEL_16:
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __82__HMMTRProtocolMap__buildValueMapper_characteristicsDict_operation_forMTRCluster___block_invoke_2;
    v31[3] = &unk_2786F0E30;
    v32 = mapperCopy;
    v24 = MEMORY[0x2318887D0](v31);

    goto LABEL_9;
  }

  if (operation != 2)
  {
    if (!operation)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v24 = &__block_literal_global_288;
LABEL_9:

  return v24;
}

id __82__HMMTRProtocolMap__buildValueMapper_characteristicsDict_operation_forMTRCluster___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  v6 = *(a1 + 64);
  if (v6 > 1)
  {
    if (v6 != 4 && v6 != 2)
    {
      goto LABEL_28;
    }

    goto LABEL_10;
  }

  if (!v6)
  {
LABEL_10:
    v8 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (*(a1 + 72) == 1)
    {
      if (*(a1 + 64) == 2)
      {
        [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v8];
      }

      else
      {
        [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v8 forIdentify:*(a1 + 32)];
      }
      v11 = ;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      v10 = v13;
    }

    if (v10)
    {
      v5 = [HMMTRProtocolMap linearMapForCharacteristic:*(a1 + 32) value:v10 fromRange:*(a1 + 40) toRange:*(a1 + 48)];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_25;
  }

  if (v6 != 1)
  {
    goto LABEL_28;
  }

  v5 = [HMMTRProtocolMap linearMapForCharacteristic:*(a1 + 32) value:v3 fromRange:*(a1 + 48) toRange:*(a1 + 40)];
LABEL_25:
  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 56);
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    v18 = *(a1 + 32);
    v20 = 138544130;
    v21 = v17;
    v22 = 2112;
    v23 = v4;
    v24 = 2112;
    v25 = v5;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Mapped value from dictionary %@ to %@ for %@.", &v20, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
LABEL_28:

  return v5;
}

id __82__HMMTRProtocolMap__buildValueMapper_characteristicsDict_operation_forMTRCluster___block_invoke_286(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  v6 = *(a1 + 56);
  if (v6 > 1)
  {
    if (v6 != 4 && v6 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v5 = [HMMTRProtocolMap customMapWriteForCharacteristic:*(a1 + 32) value:v3];
    }

    goto LABEL_16;
  }

  v8 = v3;
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 56) == 2)
    {
      [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v8];
    }

    else
    {
      [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v8 forIdentify:*(a1 + 32)];
    }
    v9 = ;

    v8 = v9;
  }

  v5 = [HMMTRProtocolMap customMapReadForCharacteristic:*(a1 + 32) value:v8 fromRange:*(a1 + 40) toRange:*(a1 + 48)];

LABEL_16:

  return v5;
}

- (id)getUpdatedLinkedCharacteristics:(id)characteristics endpointID:(id)d clusterIDCharacteristicMap:(id)map
{
  v62 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  dCopy = d;
  mapCopy = map;
  array = [MEMORY[0x277CBEB18] array];
  type = [characteristicsCopy type];
  v12 = -[HMMTRProtocolMap _characteristicsDictionaryForCharacteristicUUID:endpointID:clusterIDCharacteristicMap:](self, "_characteristicsDictionaryForCharacteristicUUID:endpointID:clusterIDCharacteristicMap:", type, [dCopy unsignedIntegerValue], mapCopy);

  if (v12)
  {
    v13 = [v12 objectForKeyedSubscript:@"LinkedCharacteristics"];
    if (v13)
    {
      v45 = v12;
      v46 = mapCopy;
      v47 = dCopy;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v44 = v13;
      obj = v13;
      v14 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v52;
        selfCopy = self;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v52 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v51 + 1) + 8 * i);
            service = [characteristicsCopy service];
            v20 = [service characteristicsOfType:v18];
            firstObject = [v20 firstObject];
            v22 = [firstObject copy];

            if (v22)
            {
              v23 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v26 = HMFGetLogIdentifier();
                *buf = 138543618;
                v56 = v26;
                v57 = 2112;
                v58 = v22;
                _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@Found a linkedCharacteristic %@, checking if it needs to be updated", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v23);
              value = [v22 value];
              value2 = [characteristicsCopy value];

              if (value != value2)
              {
                v29 = objc_autoreleasePoolPush();
                v30 = selfCopy2;
                v31 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                {
                  v32 = HMFGetLogIdentifier();
                  value3 = [characteristicsCopy value];
                  *buf = 138543874;
                  v56 = v32;
                  v57 = 2112;
                  v58 = value3;
                  v59 = 2112;
                  v60 = v22;
                  _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_INFO, "%{public}@Linked Characteristic value differs, forcing an update to %@ for characteristic %@", buf, 0x20u);

                  self = selfCopy;
                }

                objc_autoreleasePoolPop(v29);
                value4 = [characteristicsCopy value];
                v35 = [(HMMTRProtocolMap *)v30 _isValidCharacteristicValue:v22 value:value4];

                if (v35)
                {
                  v36 = objc_autoreleasePoolPush();
                  v37 = v30;
                  v38 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                  {
                    v39 = HMFGetLogIdentifier();
                    value5 = [characteristicsCopy value];
                    *buf = 138543618;
                    v56 = v39;
                    v57 = 2112;
                    v58 = value5;
                    _os_log_impl(&dword_22AEAE000, v38, OS_LOG_TYPE_INFO, "%{public}@Update linked characteristics since value is valid %@", buf, 0x16u);

                    self = selfCopy;
                  }

                  objc_autoreleasePoolPop(v36);
                  value6 = [characteristicsCopy value];
                  [v22 setValue:value6];

                  service2 = [characteristicsCopy service];
                  [v22 setService:service2];

                  [array addObject:v22];
                }
              }
            }
          }

          v15 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
        }

        while (v15);
      }

      mapCopy = v46;
      dCopy = v47;
      v13 = v44;
      v12 = v45;
    }
  }

  return array;
}

- (BOOL)_isValidCharacteristicValue:(id)value value:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = valueCopy;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Validating value for characteristics %@ %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [valueCopy validateValue:v7 outValue:0];
  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v16;
      v20 = 2112;
      v21 = valueCopy;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate value for characteristics %@ with error %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  return v12 == 0;
}

- (id)_descriptionForCharacteristicUUID:(id)d operation:(unint64_t)operation value:(id)value forMTRCluster:(BOOL)cluster endpointID:(unint64_t)iD clusterIDCharacteristicMap:(id)map
{
  clusterCopy = cluster;
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  valueCopy = value;
  mapCopy = map;
  v17 = [(HMMTRProtocolMap *)self _characteristicsDictionaryForCharacteristicUUID:dCopy endpointID:iD clusterIDCharacteristicMap:mapCopy];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 objectForKeyedSubscript:@"CHIPCluster"];
    v20 = [(__CFString *)v19 hasPrefix:@"HMMTR"];
    if (operation == 3)
    {

      v19 = @"CHIPBinding";
    }

    else if (clusterCopy | v20)
    {
      v22 = [(HMMTRProtocolMap *)self mtrClusterNameFromMTRBaseClusterName:v19];
      v23 = v22;
      if (v22)
      {
        v24 = v22;

        v19 = v24;
      }

      else
      {
        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v27;
          v32 = 2112;
          v33 = v19;
          _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@Sync variation of base cluster class %@ is unknown", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
      }
    }

    v21 = [(HMMTRProtocolMap *)self _characteristicDescriptionForCharacteristicWithUUID:dCopy characteristicsDict:v18 chipClusterName:v19 operationType:operation value:valueCopy forMTRCluster:clusterCopy];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)getBaseClusterName:(id)name
{
  nameCopy = name;
  v4 = @"MTRBaseCluster";
  if ([nameCopy hasPrefix:@"MTRBaseCluster"] & 1) != 0 || (v4 = @"MTRCluster", (objc_msgSend(nameCopy, "hasPrefix:", @"MTRCluster")) || (v4 = @"HMMTR", (objc_msgSend(nameCopy, "hasPrefix:", @"HMMTR")) || (v4 = @"HMMTRCluster", (objc_msgSend(nameCopy, "hasPrefix:", @"HMMTRCluster")) || (v4 = @"HMMTRSyncCluster", v5 = nameCopy, objc_msgSend(nameCopy, "hasPrefix:", @"HMMTRSyncCluster")))
  {
    v5 = [nameCopy substringFromIndex:{-[__CFString length](v4, "length")}];
  }

  return v5;
}

- (id)mtrBaseClusterNameFromMTRClusterName:(id)name
{
  nameCopy = name;
  v4 = @"MTRCluster";
  if ([nameCopy hasPrefix:@"MTRCluster"])
  {
    v5 = @"MTRBaseCluster";
LABEL_5:
    v6 = [nameCopy substringFromIndex:{-[__CFString length](v4, "length")}];
    v7 = [(__CFString *)v5 stringByAppendingString:v6];

    goto LABEL_7;
  }

  v4 = @"HMMTRSyncCluster";
  if ([nameCopy hasPrefix:@"HMMTRSyncCluster"])
  {
    v5 = @"HMMTR";
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)mtrClusterNameFromMTRBaseClusterName:(id)name
{
  nameCopy = name;
  if ([nameCopy hasPrefix:@"MTRBaseCluster"])
  {
    v4 = [nameCopy substringFromIndex:{objc_msgSend(@"MTRBaseCluster", "length")}];
    v5 = @"MTRCluster";
LABEL_5:
    v6 = [(__CFString *)v5 stringByAppendingString:v4];

    goto LABEL_6;
  }

  if ([nameCopy hasPrefix:@"HMMTR"])
  {
    v4 = [nameCopy substringFromIndex:{objc_msgSend(@"HMMTR", "length")}];
    v5 = @"HMMTRSyncCluster";
    goto LABEL_5;
  }

  if ([nameCopy hasPrefix:@"MTRCluster"])
  {
    v6 = nameCopy;
  }

  else
  {
    v6 = 0;
  }

LABEL_6:

  return v6;
}

- (id)_characteristicsDictionaryForCharacteristic:(id)characteristic endpointID:(unint64_t)d clusterIDCharacteristicMap:(id)map
{
  v50 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  mapCopy = map;
  v38 = characteristicCopy;
  v10 = [(NSData *)self->_mapData hmf_objectForKey:characteristicCopy forDictionaryAtOffset:[(HMMTRProtocolMap *)self rawPlistOffsetForKey:@"HAPCharacteristics"]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    dCopy = d;
    selfCopy = self;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:d];
    v37 = mapCopy;
    v14 = [mapCopy objectForKey:v13];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = v12;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          v21 = [v20 objectForKeyedSubscript:@"CHIPClusterIDHex"];
          v22 = [v14 objectForKeyedSubscript:v38];
          v23 = [v21 isEqualToString:v22];

          if (v23)
          {
            v28 = v20;

            goto LABEL_17;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      v45 = v27;
      v46 = 2112;
      v47 = v38;
      v48 = 2048;
      dCopy2 = dCopy;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Mapping Characteristic %@ is not supported for endpoint %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = 0;
LABEL_17:
    v12 = v36;
    mapCopy = v37;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v45 = v32;
      v46 = 2112;
      v47 = v38;
      v48 = 2048;
      dCopy2 = d;
      _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Mapping Characteristic %@ is not supported for endpoint %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    v28 = 0;
  }

  return v28;
}

- (id)_characteristicsDictionaryForCharacteristicUUID:(id)d endpointID:(unint64_t)iD clusterIDCharacteristicMap:(id)map
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  mapCopy = map;
  v10 = [HMMTRUtilities hmmtr_shortTypeFromUUID:dCopy];
  if (v10)
  {
    v11 = [(HMMTRProtocolMap *)self _characteristicsDictionaryForCharacteristic:v10 endpointID:iD clusterIDCharacteristicMap:mapCopy];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v15;
      v19 = 2112;
      v20 = dCopy;
      v21 = 2112;
      v22 = 0;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Invalid characteristicUUID. Does not convert to a short integer. UUID:%@ shortened: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  return v11;
}

- (id)_characteristicDescriptionForCharacteristicWithUUID:(id)d characteristicsDict:(id)dict chipClusterName:(id)name operationType:(unint64_t)type value:(id)value forMTRCluster:(BOOL)cluster
{
  clusterCopy = cluster;
  v67 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dictCopy = dict;
  nameCopy = name;
  valueCopy = value;
  v17 = [(HMMTRProtocolMap *)self _protocolMapCharacteristicsKeyForOperationType:type];
  v58 = nameCopy;
  if (v17)
  {
    v18 = [dictCopy objectForKeyedSubscript:v17];
    if (v18)
    {
      v19 = [nameCopy hasPrefix:@"HMMTR"];
      v57 = [(HMMTRProtocolMap *)self _chipClusterFunctionNameForOperationType:type operationDictionary:v18 value:valueCopy forMTRCluster:clusterCopy forHMMTRCluster:v19];
      v20 = [[HMMTRClusterDescription alloc] initWithClass:nameCopy selectorString:v57];
      v21 = [dictCopy objectForKeyedSubscript:@"ConfigureReport"];

      if ((v19 & 1) == 0 && v21)
      {
        v22 = [dictCopy objectForKeyedSubscript:@"CHIPAttributes"];
        if ([v22 count] == 1)
        {
          [dictCopy objectForKeyedSubscript:@"CHIPClusterIDHex"];
          v56 = v60 = 0;
          v23 = [MEMORY[0x277CCAC80] scannerWithString:?];
          if ([v23 scanHexInt:&v60])
          {
            [v22 objectAtIndexedSubscript:0];
            v24 = v54 = v23;
            [(HMMTRClusterDescription *)v20 setAttributeID:v24];

            v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v60];
            [(HMMTRClusterDescription *)v20 setClusterID:v25];

            v23 = v54;
          }

          else
          {
            context = objc_autoreleasePoolPush();
            selfCopy = self;
            log = HMFGetOSLogHandle();
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v32 = v55 = v23;
              *buf = 138543874;
              v62 = v32;
              v63 = 2112;
              v64 = v56;
              v65 = 2112;
              v66 = dCopy;
              _os_log_impl(&dword_22AEAE000, log, OS_LOG_TYPE_ERROR, "%{public}@Bad clusterId: %@ defined in protocol map for characteristic %@", buf, 0x20u);

              v23 = v55;
            }

            objc_autoreleasePoolPop(context);
          }
        }
      }

      if (clusterCopy)
      {
        v29 = dCopy;
        if ([v57 hasPrefix:@"writeAttribute"])
        {
          [(HMMTRClusterDescription *)v20 setSyncWriteFunc:1];
        }

        v34 = type != 2 || v57 == 0;
        v35 = [(HMMTRProtocolMap *)self _buildValueMapper:dCopy characteristicsDict:dictCopy operation:type forMTRCluster:v34];
        [(HMMTRClusterDescription *)v20 setMapValue:v35];

        mapValue = [(HMMTRClusterDescription *)v20 mapValue];
        v37 = [(HMMTRProtocolMap *)self _buildExpectedValueMapper:dCopy characteristicsDict:dictCopy operation:type valueMapper:mapValue];
        [(HMMTRClusterDescription *)v20 setMapWriteValueToExpectedValues:v37];
      }

      else
      {
        v29 = dCopy;
        mapValue = [(HMMTRProtocolMap *)self _buildValueMapper:dCopy characteristicsDict:dictCopy operation:type forMTRCluster:0];
        [(HMMTRClusterDescription *)v20 setMapValue:mapValue];
      }

      v38 = [(HMMTRProtocolMap *)self _chipParamsDictionaryForOperationType:type operationDictionary:v18 value:valueCopy];
      if (v38)
      {
        v39 = objc_alloc(MEMORY[0x277CBEB38]);
        v40 = [v38 objectForKeyedSubscript:@"DefaultArgs"];
        v41 = [v39 initWithDictionary:v40];

        v42 = [v38 objectForKeyedSubscript:@"PrimaryArgSelector"];
        if (v42)
        {
          mapValue2 = [(HMMTRClusterDescription *)v20 mapValue];

          if (mapValue2)
          {
            mapValue3 = [(HMMTRClusterDescription *)v20 mapValue];
            v45 = (mapValue3)[2](mapValue3, valueCopy);

            valueCopy = v45;
          }

          v29 = dCopy;
          [v41 setObject:valueCopy forKey:v42];
        }

        else
        {
          v29 = dCopy;
        }

        v47 = [v38 objectForKeyedSubscript:@"ParamsClass"];
        [(HMMTRClusterDescription *)v20 setParamsClass:NSClassFromString(v47)];

        v48 = [v38 objectForKeyedSubscript:@"ParamsIndex"];
        [(HMMTRClusterDescription *)v20 setParamsIndex:v48];

        [(HMMTRClusterDescription *)v20 setParamsArguments:v41];
      }

      else
      {
        v46 = [v18 objectForKeyedSubscript:@"DefaultArgs"];
        [(HMMTRClusterDescription *)v20 setArguments:v46];

        v41 = [v18 objectForKeyedSubscript:@"ArgIndex"];
        [(HMMTRClusterDescription *)v20 setPrimaryArgIndex:v41];
      }

      v49 = [v18 objectForKeyedSubscript:@"Type"];
      [(HMMTRClusterDescription *)v20 setPrimaryArgType:v49];
    }

    else
    {
      v20 = 0;
      v29 = dCopy;
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    v29 = dCopy;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      *buf = 138543874;
      v62 = v30;
      v63 = 2112;
      v64 = dCopy;
      v65 = 2112;
      v66 = v31;
      _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_DEBUG, "%{public}@No dictionary key for Characteristic %@ for operation type %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v20 = 0;
  }

  return v20;
}

- (id)reportDescriptionForCharacteristic:(id)characteristic endpointID:(id)d clusterIDCharacteristicMap:(id)map
{
  v62 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  dCopy = d;
  mapCopy = map;
  type = [characteristicCopy type];
  v12 = [HMMTRUtilities hmmtr_shortTypeFromUUID:type];

  v13 = [mapCopy objectForKeyedSubscript:dCopy];
  v14 = [v13 objectForKeyedSubscript:v12];

  if (v14)
  {
    v57 = 0;
    v15 = [MEMORY[0x277CCAC80] scannerWithString:v14];
    if ([v15 scanHexInt:&v57])
    {
      type2 = [characteristicCopy type];
      v17 = -[HMMTRProtocolMap _characteristicsDictionaryForCharacteristicUUID:endpointID:clusterIDCharacteristicMap:](self, "_characteristicsDictionaryForCharacteristicUUID:endpointID:clusterIDCharacteristicMap:", type2, [dCopy unsignedIntegerValue], mapCopy);

      if (v17)
      {
        v18 = [v17 objectForKeyedSubscript:@"ConfigureReport"];
        if (v18)
        {
          v51 = v15;
          v19 = [v17 objectForKeyedSubscript:@"CHIPAttributes"];
          v20 = [v17 objectForKeyedSubscript:@"CHIPEvents"];
          context = v19;
          if (v19 | v20)
          {
            [characteristicCopy type];
            v21 = v54 = v18;
            v49 = [(HMMTRProtocolMap *)self _buildValueMapper:v21 characteristicsDict:v17 operation:2 forMTRCluster:1];

            v48 = [(HMMTRProtocolMap *)self _buildEventMapper:characteristicCopy characteristicsDict:v17];
            v22 = [HMMTRReportDescription alloc];
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v57];
            v24 = [(HMMTRReportDescription *)v22 initWithClusterId:v23 attributeIds:context eventIds:v20];

            [(HMMTRReportDescription *)v24 setMapValue:v49];
            [(HMMTRReportDescription *)v24 setMapEvent:v48];
            v25 = [v17 objectForKeyedSubscript:@"CHIPCluster"];
            [(HMMTRReportDescription *)v24 setClusterClass:v25];

            selfCopy = self;
            v27 = context;
            v28 = [(HMMTRProtocolMap *)selfCopy _chipClusterFunctionNameForOperationType:2 operationDictionary:v54 value:0 forMTRCluster:0 forHMMTRCluster:0];
            [(HMMTRReportDescription *)v24 setClusterSelector:v28];

            v18 = v54;
          }

          else
          {
            v50 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v45 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              HMFGetLogIdentifier();
              v46 = v56 = v18;
              *buf = 138543618;
              v59 = v46;
              v60 = 2112;
              v61 = characteristicCopy;
              _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_DEBUG, "%{public}@Neither attributes array nor events array. Cannot handle reports for characteristic: %@", buf, 0x16u);

              v18 = v56;
            }

            objc_autoreleasePoolPop(v50);
            v24 = 0;
            v27 = context;
          }

          v15 = v51;
        }

        else
        {
          contexta = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            v43 = HMFGetLogIdentifier();
            *buf = 138543618;
            v59 = v43;
            v60 = 2112;
            v61 = characteristicCopy;
            _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_DEBUG, "%{public}@No subscription Dict. Cannot handle reports for characteristic: %@", buf, 0x16u);

            v18 = 0;
          }

          objc_autoreleasePoolPop(contexta);
          v24 = 0;
        }
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v40 = v55 = v37;
          *buf = 138543618;
          v59 = v40;
          v60 = 2112;
          v61 = characteristicCopy;
          _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_DEBUG, "%{public}@No characteristic Dict. Cannot handle reports for characteristic: %@", buf, 0x16u);

          v37 = v55;
        }

        objc_autoreleasePoolPop(v37);
        v24 = 0;
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v36;
        v60 = 2112;
        v61 = characteristicCopy;
        _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Unknown ClusterId. Cannot handle reports for characteristic: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v24 = 0;
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v32;
      v60 = 2112;
      v61 = characteristicCopy;
      _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Cannot handle reports for characteristic: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v24 = 0;
  }

  return v24;
}

- (id)_protocolMapCharacteristicsKeyForOperationType:(unint64_t)type
{
  v14 = *MEMORY[0x277D85DE8];
  if (type < 5)
  {
    return off_2786F0768[type];
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v9;
    v12 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unsupported Operation type %lu", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  return 0;
}

- (id)_chipClusterFunctionNameForOperationType:(unint64_t)type operationDictionary:(id)dictionary value:(id)value forMTRCluster:(BOOL)cluster forHMMTRCluster:(BOOL)rCluster
{
  rClusterCopy = rCluster;
  dictionaryCopy = dictionary;
  valueCopy = value;
  if (type == 1)
  {
    v14 = [dictionaryCopy objectForKeyedSubscript:@"Type"];
    if ([v14 isEqualToString:@"BOOL"])
    {
      if ([valueCopy BOOLValue])
      {
        v15 = @"1";
      }

      else
      {
        v15 = @"0";
      }

      v16 = [dictionaryCopy objectForKeyedSubscript:v15];
      v17 = [v16 objectForKeyedSubscript:@"Selector"];

      if (cluster)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = [dictionaryCopy objectForKeyedSubscript:@"Selector"];
      if (cluster)
      {
LABEL_17:
        v20 = [(HMMTRProtocolMap *)self mtrClusterWriteFunctionNameFromBaseClusterFunctionName:v17];

        v17 = v20;
        goto LABEL_18;
      }
    }

    if (rClusterCopy)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v18 = [dictionaryCopy objectForKeyedSubscript:@"Selector"];
    v14 = v18;
    if (cluster || rClusterCopy)
    {
      if ((type & 0xFFFFFFFFFFFFFFFBLL) != 0)
      {
        goto LABEL_19;
      }

      v19 = [(HMMTRProtocolMap *)self mtrClusterReadFunctionNameFromBaseClusterFunctionName:v18];
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_19;
      }

      v19 = [v18 stringByReplacingOccurrencesOfString:@"WithCompletionHandler:" withString:@"WithAttributeCache:endpoint:queue:completionHandler:"];
    }

    v17 = v19;
  }

LABEL_18:

  v14 = v17;
LABEL_19:

  return v14;
}

- (id)mtrClusterWriteFunctionNameFromBaseClusterFunctionName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy hasSuffix:@"WithCompletionHandler:"])
  {
    v5 = [nameCopy hasPrefix:@"writeAttribute"];
    v6 = [nameCopy substringToIndex:{objc_msgSend(nameCopy, "length") - objc_msgSend(@"WithCompletionHandler:", "length")}];
    if (v5)
    {
      v7 = @"WithExpectedValueInterval:";
    }

    else
    {
      v7 = @"WithExpectedValues:expectedValueInterval:completionHandler:";
    }

LABEL_12:
    v10 = [v6 stringByAppendingString:v7];

    if (v10)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if ([nameCopy hasSuffix:@":completionHandler:"])
  {
    v8 = [nameCopy hasPrefix:@"writeAttribute"];
    v6 = [nameCopy substringToIndex:{objc_msgSend(nameCopy, "length") - objc_msgSend(@":completionHandler:", "length")}];
    if (!v8)
    {
      v7 = @":expectedValues:expectedValueInterval:completionHandler:";
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if ([nameCopy hasSuffix:@":completion:"])
  {
    v9 = [nameCopy hasPrefix:@"writeAttribute"];
    v6 = [nameCopy substringToIndex:{objc_msgSend(nameCopy, "length") - objc_msgSend(@":completion:", "length")}];
    if (!v9)
    {
      v7 = @":expectedValues:expectedValueInterval:completion:";
      goto LABEL_12;
    }

LABEL_10:
    v7 = @":expectedValueInterval:";
    goto LABEL_12;
  }

LABEL_13:
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v14;
    v18 = 2112;
    v19 = nameCopy;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Cannot derive MTRCluster function name from a bad MTRBaseCluster function name: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v10 = 0;
LABEL_16:

  return v10;
}

- (id)mtrClusterReadFunctionNameFromBaseClusterFunctionName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy hasSuffix:@"WithCompletionHandler:"])
  {
    v5 = [nameCopy length];
    v6 = @"WithCompletionHandler:";
LABEL_5:
    v7 = [nameCopy substringToIndex:{v5 - -[__CFString length](v6, "length")}];
    v8 = [v7 stringByAppendingString:@"WithParams:"];

    goto LABEL_6;
  }

  if ([nameCopy hasSuffix:@"WithCompletion:"])
  {
    v5 = [nameCopy length];
    v6 = @"WithCompletion:";
    goto LABEL_5;
  }

  if ([nameCopy hasSuffix:@"WithParams:"])
  {
    v8 = nameCopy;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = nameCopy;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot derive MTRCluster function name from a bad MTRBaseCluster function name: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v8 = 0;
  }

LABEL_6:

  return v8;
}

- (id)_chipParamsDictionaryForOperationType:(unint64_t)type operationDictionary:(id)dictionary value:(id)value
{
  dictionaryCopy = dictionary;
  valueCopy = value;
  if (type == 1)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"Type"];
    if ([v9 isEqualToString:@"BOOL"])
    {
      if ([valueCopy BOOLValue])
      {
        v10 = @"1";
      }

      else
      {
        v10 = @"0";
      }

      v11 = [dictionaryCopy objectForKeyedSubscript:v10];
      v12 = [v11 objectForKeyedSubscript:@"Params"];
    }

    else
    {
      v12 = [dictionaryCopy objectForKeyedSubscript:@"Params"];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)retrieveHAPCharacteristicsToCheckForRequiredAttributeValues
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRProtocolMap *)self rawPlistAtKey:@"HAPCharacteristics"];
  if (v3)
  {
    v20 = v3;
    v21 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v3;
    v23 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v23)
    {
      v22 = *v31;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v30 + 1) + 8 * i);
          v6 = objc_opt_new();
          v25 = v5;
          v7 = [obj objectForKeyedSubscript:v5];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v27;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v27 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v26 + 1) + 8 * j);
                v13 = [v12 objectForKeyedSubscript:{@"CHIPCluster", v20}];
                v14 = [v12 objectForKeyedSubscript:@"RequiredAttributes"];
                if (v14)
                {
                  [v6 setObject:v14 forKey:v13];
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v9);
          }

          if ([v6 count])
          {
            [v21 setObject:v6 forKey:v25];
          }
        }

        v23 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v23);
    }

    v3 = v20;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v18;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to read HAPCharacteristic dictionary from HomeKitMatter's ProtocolMap.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v21 = 0;
  }

  return v21;
}

- (id)retrieveHAPToCHIPClusterMapping:(id)mapping
{
  v37 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  v5 = [mappingCopy objectForKeyedSubscript:@"HAPCharacteristics"];
  if (v5)
  {
    v21 = mappingCopy;
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = v5;
    v24 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v24)
    {
      v22 = *v30;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v6);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v10 = [v6 objectForKeyedSubscript:v8];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v26;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v26 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [*(*(&v25 + 1) + 8 * j) objectForKeyedSubscript:@"CHIPClusterIDHex"];
                if (v15)
                {
                  [v9 addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v12);
          }

          [v23 setObject:v9 forKeyedSubscript:v8];
        }

        v24 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v24);
    }

    mappingCopy = v21;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v19;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to read HAPCharacteristic dictionary from HomeKitMatter's ProtocolMap.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v23 = 0;
  }

  return v23;
}

- (NSDictionary)hapToCHIPClusterMappingArray
{
  hapToCHIPClusterMappingArrayOffset = self->hapToCHIPClusterMappingArrayOffset;
  v2 = [(NSData *)self->_mapData hmf_readObjectAtOffset:&hapToCHIPClusterMappingArrayOffset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v4;
}

- (HMMTRProtocolMap)init
{
  v51 = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = HMMTRProtocolMap;
  v2 = [(HMMTRProtocolMap *)&v46 init];
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"chipplugin-protocol-map" ofType:@"plist"];

  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v4];
  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [v6 hmf_appendObject:v5];
  v7 = [v5 objectForKeyedSubscript:@"Version"];
  version = v2->_version;
  v2->_version = v7;

  v9 = [v5 objectForKeyedSubscript:@"SchemaVersion"];
  schemaVersion = v2->_schemaVersion;
  v2->_schemaVersion = v9;

  v11 = [(HMMTRProtocolMap *)v2 retrieveHAPToCHIPClusterMapping:v5];
  v2->hapToCHIPClusterMappingArrayOffset = [v6 length];
  [v6 hmf_appendObject:v11];
  v12 = NSTemporaryDirectory();
  v13 = objc_opt_new();
  uUIDString = [v13 UUIDString];
  v15 = [v12 stringByAppendingPathComponent:uUIDString];

  [v6 writeToFile:v15 atomically:1];
  v45 = 0;
  v16 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v15 options:1 error:&v45];
  v17 = v45;
  mapData = v2->_mapData;
  v2->_mapData = v16;

  if (!v17)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v44 = 0;
    [defaultManager removeItemAtPath:v15 error:&v44];
    v25 = v44;
    if (v25)
    {
      context = objc_autoreleasePoolPush();
      v26 = v2;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v42 = v11;
        v29 = v28 = v4;
        *buf = 138543618;
        v48 = v29;
        v49 = 2112;
        v50 = v25;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove Matter protocol mapping file: %@", buf, 0x16u);

        v4 = v28;
        v11 = v42;
      }

      objc_autoreleasePoolPop(context);
    }

    else
    {
      v43 = v4;
      v30 = MEMORY[0x277CBEB98];
      v31 = [v5 objectForKeyedSubscript:@"NativeMatterDeviceTypes"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;

      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = MEMORY[0x277CBEBF8];
      }

      v35 = [v30 setWithArray:v34];

      nativeMatterDeviceTypes = v2->_nativeMatterDeviceTypes;
      v2->_nativeMatterDeviceTypes = v35;
      v4 = v43;

      createClusterInstance = v2->_createClusterInstance;
      v2->_createClusterInstance = &__block_literal_global_214;
    }

    if (v25)
    {
      goto LABEL_18;
    }

LABEL_19:
    v38 = v2;
    goto LABEL_20;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = v2;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v41 = v11;
    v23 = v22 = v4;
    *buf = 138543618;
    v48 = v23;
    v49 = 2112;
    v50 = v17;
    _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to mmap Matter protocol mapping data: %@", buf, 0x16u);

    v4 = v22;
    v11 = v41;
  }

  objc_autoreleasePoolPop(v19);
LABEL_18:
  v38 = 0;
LABEL_20:

  return v38;
}

id __24__HMMTRProtocolMap_init__block_invoke(uint64_t a1, NSString *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_alloc(NSClassFromString(a2)) initWithDevice:v10 endpointID:v9 queue:v8];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t123 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t123, &__block_literal_global_570);
  }

  v3 = logCategory__hmf_once_v124;

  return v3;
}

uint64_t __31__HMMTRProtocolMap_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v124;
  logCategory__hmf_once_v124 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)customMapEventForCharacteristic:(id)characteristic event:(id)event value:(id)value
{
  v109 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  eventCopy = event;
  valueCopy = value;
  type = [characteristicCopy type];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138544130;
    v102 = v15;
    v103 = 2112;
    v104 = characteristicCopy;
    v105 = 2112;
    v106 = eventCopy;
    v107 = 2112;
    v108 = valueCopy;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@customMapEventForCharacteristic characteristic %@ event %@ value %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  if ([type isEqualToString:@"00000073-0000-1000-8000-0026BB765291"])
  {
    metadata = [characteristicCopy metadata];
    constraints = [metadata constraints];
    validValues = [constraints validValues];

    service = [characteristicCopy service];
    accessory = [service accessory];
    server = [accessory server];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = server;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v24 = [v23 protocolMappingStateForCharacteristic:characteristicCopy];

    v90 = validValues;
    if ([eventCopy isEqualToNumber:&unk_283EE8EE0])
    {
      [v24 setShouldIgnoreSingleMultiPressComplete:0];
      if (([validValues containsObject:&unk_283EE8EE0] & 1) == 0)
      {
        if ([validValues containsObject:&unk_283EE8EF8])
        {
          v25 = 0;
        }

        else
        {
          v25 = &unk_283EE8DC0;
        }

        goto LABEL_77;
      }

      goto LABEL_9;
    }

    if ([eventCopy isEqualToNumber:&unk_283EE8EF8])
    {
      if ([validValues containsObject:&unk_283EE8EF8])
      {
        [v24 setShouldIgnoreSingleMultiPressComplete:1];
        v25 = &unk_283EE8EF8;
      }

      else
      {
        v47 = v24;
        v48 = objc_autoreleasePoolPush();
        v49 = selfCopy;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = HMFGetLogIdentifier();
          *buf = 138543618;
          v102 = v51;
          v103 = 2112;
          v104 = characteristicCopy;
          _os_log_impl(&dword_22AEAE000, v50, OS_LOG_TYPE_ERROR, "%{public}@Unexpected (feature-map excluded) LongPress event for %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v48);
        v25 = 0;
        v24 = v47;
      }

      goto LABEL_77;
    }

    if ([eventCopy isEqualToNumber:&unk_283EE8F10])
    {
      if (([validValues containsObject:&unk_283EE8EE0] & 1) == 0)
      {
        if ([validValues containsObject:&unk_283EE8EF8])
        {
          v25 = &unk_283EE8DC0;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_77;
      }

      goto LABEL_9;
    }

    if ([eventCopy isEqualToNumber:&unk_283EE8F28])
    {
      v89 = type;
      v52 = valueCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v53 = v52;
      }

      else
      {
        v53 = 0;
      }

      v54 = v53;

      v81 = v54;
      v55 = [v54 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v56 = v55;
      }

      else
      {
        v56 = 0;
      }

      v57 = v56;

      v58 = v57;
      v59 = [v57 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
      v60 = [v59 isEqual:*MEMORY[0x277CD5180]];

      v61 = 0;
      if (v60)
      {
        v87 = v24;
        v62 = [v57 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v63 = v62;
        }

        else
        {
          v63 = 0;
        }

        v64 = v63;

        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v65 = v64;
        v66 = [v65 countByEnumeratingWithState:&v95 objects:v100 count:16];
        if (v66)
        {
          v67 = v66;
          v83 = valueCopy;
          v85 = eventCopy;
          v68 = *v96;
          v69 = *MEMORY[0x277CD50D0];
          while (2)
          {
            for (i = 0; i != v67; ++i)
            {
              if (*v96 != v68)
              {
                objc_enumerationMutation(v65);
              }

              v71 = *(*(&v95 + 1) + 8 * i);
              v72 = [v71 objectForKeyedSubscript:v69];
              v73 = [v72 isEqual:&unk_283EE8EE0];

              if (v73)
              {
                v77 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v71];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v78 = v77;
                }

                else
                {
                  v78 = 0;
                }

                v61 = v78;

                goto LABEL_83;
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v95 objects:v100 count:16];
            if (v67)
            {
              continue;
            }

            break;
          }

          v61 = 0;
LABEL_83:
          valueCopy = v83;
          eventCopy = v85;
          validValues = v90;
        }

        else
        {
          v61 = 0;
        }

        v24 = v87;
      }

      shouldIgnoreSingleMultiPressComplete = [v24 shouldIgnoreSingleMultiPressComplete];
      [v24 setShouldIgnoreSingleMultiPressComplete:0];
      if (![validValues containsObject:&unk_283EE8EE0])
      {
        v25 = 0;
        type = v89;
LABEL_94:

        goto LABEL_77;
      }

      type = v89;
      if (v61)
      {
        unsignedCharValue = [v61 unsignedCharValue];
        if (unsignedCharValue == 2)
        {
          v25 = &unk_283EE8EE0;
        }

        else if (unsignedCharValue == 1)
        {
          if (shouldIgnoreSingleMultiPressComplete)
          {
            v25 = 0;
          }

          else
          {
            v25 = &unk_283EE8DC0;
          }
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_94;
      }
    }

LABEL_9:
    v25 = 0;
LABEL_77:

    goto LABEL_78;
  }

  if ([type isEqualToString:@"0000001D-0000-1000-8000-0026BB765291"] && objc_msgSend(eventCopy, "isEqualToNumber:", &unk_283EE8DC0))
  {
    v88 = type;
    v26 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    v90 = v28;
    v29 = [v28 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    v32 = [v31 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
    v33 = [v32 isEqual:*MEMORY[0x277CD5180]];

    v86 = v31;
    if (v33)
    {
      v82 = valueCopy;
      v84 = eventCopy;
      v34 = [v31 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      v36 = v35;

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v37 = v36;
      v38 = [v37 countByEnumeratingWithState:&v91 objects:v99 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v92;
        v41 = *MEMORY[0x277CD50D0];
LABEL_24:
        v42 = 0;
        while (1)
        {
          if (*v92 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v91 + 1) + 8 * v42);
          v44 = [v43 objectForKeyedSubscript:v41];
          v45 = [v44 isEqual:&unk_283EE8DC0];

          if (v45)
          {
            break;
          }

          if (v39 == ++v42)
          {
            v39 = [v37 countByEnumeratingWithState:&v91 objects:v99 count:16];
            if (v39)
            {
              goto LABEL_24;
            }

            goto LABEL_30;
          }
        }

        v46 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v43];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v74 = v46;
        }

        else
        {
          v74 = 0;
        }

        v75 = v74;

        if (!v75)
        {
          goto LABEL_73;
        }

        valueCopy = v82;
        eventCopy = v84;
        type = v88;
        if (![v75 isEqualToNumber:&unk_283EE8DF0])
        {
          goto LABEL_75;
        }

        v25 = &unk_283EE8E80;
        goto LABEL_76;
      }

LABEL_30:

LABEL_73:
      v46 = 0;
      valueCopy = v82;
      eventCopy = v84;
    }

    else
    {
      v46 = 0;
    }

    type = v88;
LABEL_75:

    v25 = 0;
LABEL_76:
    v24 = v86;
    goto LABEL_77;
  }

  v25 = 0;
LABEL_78:

  return v25;
}

+ (id)customMapWriteForCharacteristic:(id)characteristic value:(id)value
{
  characteristicCopy = characteristic;
  valueCopy = value;
  if ([HMMTRProtocolMap checkIfCharacteristicsIsOfTypeTemp:characteristicCopy])
  {
    v8 = MEMORY[0x277CCABB0];
    [valueCopy doubleValue];
    v10 = [v8 numberWithDouble:v9 * 100.0];
LABEL_15:
    v11 = v10;
    goto LABEL_16;
  }

  if ([characteristicCopy isEqualToString:@"0000000F-0000-1000-8000-0026BB765291"])
  {
    v10 = [self mapCurrentHeatingCoolingState:valueCopy];
    goto LABEL_15;
  }

  if ([characteristicCopy isEqualToString:@"00000033-0000-1000-8000-0026BB765291"])
  {
    v10 = [self mapTargetHeatingCoolingState:valueCopy];
    goto LABEL_15;
  }

  if ([characteristicCopy isEqualToString:@"000000B0-0000-1000-8000-0026BB765291"])
  {
    v10 = [self mapActiveState:valueCopy];
    goto LABEL_15;
  }

  if ([characteristicCopy isEqualToString:@"000000BF-0000-1000-8000-0026BB765291"])
  {
    v10 = [self mapTargetFanState:valueCopy];
    goto LABEL_15;
  }

  if ([characteristicCopy isEqualToString:@"00000028-0000-1000-8000-0026BB765291"])
  {
    v10 = [self mapRotationDirection:valueCopy];
    goto LABEL_15;
  }

  if ([characteristicCopy isEqualToString:@"000000A8-0000-1000-8000-0026BB765291"])
  {
    v10 = [self mapTargetAirPuriferState:valueCopy];
    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

+ (id)customMapReadForCharacteristic:(id)characteristic value:(id)value fromRange:(id)range toRange:(id)toRange
{
  v46 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  valueCopy = value;
  rangeCopy = range;
  toRangeCopy = toRange;
  if ([characteristicCopy isEqualToString:@"0000006B-0000-1000-8000-0026BB765291"])
  {
    if (toRangeCopy)
    {
      v14 = valueCopy;
      v15 = v14;
      if (!v14)
      {
        v25 = objc_autoreleasePoolPush();
        selfCopy = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = HMFGetLogIdentifier();
          v40 = 138543362;
          v41 = v28;
          _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Illuminance value was invalid, return nil.", &v40, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
        v23 = 0;
        goto LABEL_22;
      }

      if (![v14 isEqualToNumber:&unk_283EE8DC0])
      {
        v29 = MEMORY[0x277CCABB0];
        [v15 floatValue];
        v31 = __exp10(((v30 + -1.0) / 10000.0));
        *&v31 = v31;
        v23 = [v29 numberWithFloat:v31];
        v32 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v35 = HMFGetLogIdentifier();
          v40 = 138543874;
          v41 = v35;
          v42 = 2112;
          v43 = v15;
          v44 = 2112;
          v45 = v23;
          _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Read CurrentLightLevel measured value: %@, lux value: %@", &v40, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
        goto LABEL_22;
      }

      v16 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [toRangeCopy objectAtIndexedSubscript:0];
        v40 = 138543618;
        v41 = v19;
        v42 = 2112;
        v43 = v20;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Illuminance value was too low to be measured.  Return min HAP light level value %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = [toRangeCopy objectAtIndexedSubscript:0];
LABEL_15:
      v23 = v21;
LABEL_22:

      goto LABEL_23;
    }

    _HMFPreconditionFailure();
    goto LABEL_52;
  }

  if (([characteristicCopy isEqualToString:@"0000001D-0000-1000-8000-0026BB765291"] & 1) != 0 || objc_msgSend(characteristicCopy, "isEqualToString:", @"0000001E-0000-1000-8000-0026BB765291"))
  {
    integerValue = [valueCopy integerValue];
    if (integerValue < 3)
    {
      v23 = qword_2786F08A0[integerValue];
      goto LABEL_23;
    }
  }

  if (+[HMMTRProtocolMap checkIfCharacteristicsIsOfTypeTemp:](HMMTRProtocolMap, "checkIfCharacteristicsIsOfTypeTemp:", characteristicCopy) || [characteristicCopy isEqualToString:@"00000010-0000-1000-8000-0026BB765291"])
  {
    v24 = MEMORY[0x277CCABB0];
    v15 = valueCopy;
    v21 = [v24 numberWithDouble:{objc_msgSend(v15, "integerValue") / 100.0}];
    goto LABEL_15;
  }

  if ([characteristicCopy isEqualToString:@"0000006A-0000-1000-8000-0026BB765291"])
  {
    bOOLValue = [valueCopy BOOLValue];
    v38 = &unk_283EE8EE0;
    if (bOOLValue)
    {
      v38 = &unk_283EE8DC0;
    }

    v39 = v38;
    goto LABEL_36;
  }

  if ([characteristicCopy isEqualToString:@"0000000F-0000-1000-8000-0026BB765291"])
  {
    v39 = [self mapCurrentSystemMode:valueCopy];
LABEL_36:
    v23 = v39;
    goto LABEL_23;
  }

  if ([characteristicCopy isEqualToString:@"00000033-0000-1000-8000-0026BB765291"])
  {
    v39 = [self mapTargetSystemMode:valueCopy];
    goto LABEL_36;
  }

  if ([characteristicCopy isEqualToString:@"00000072-0000-1000-8000-0026BB765291"])
  {
    v39 = [self mapPositionState:valueCopy];
    goto LABEL_36;
  }

  if ([characteristicCopy isEqualToString:@"00000079-0000-1000-8000-0026BB765291"])
  {
    if ([valueCopy integerValue] <= 0)
    {
      v23 = &unk_283EE8E68;
    }

    else
    {
      v23 = &unk_283EE8E50;
    }

    goto LABEL_23;
  }

  if ([characteristicCopy isEqualToString:@"0000008F-0000-1000-8000-0026BB765291"])
  {
    if ([valueCopy integerValue] == 1)
    {
      v23 = &unk_283EE8E50;
    }

    else
    {
      v23 = &unk_283EE8E68;
    }

    goto LABEL_23;
  }

  if ([characteristicCopy isEqualToString:@"000000B0-0000-1000-8000-0026BB765291"])
  {
    v39 = [self mapFanModeToActive:valueCopy];
    goto LABEL_36;
  }

  if ([characteristicCopy isEqualToString:@"000000BF-0000-1000-8000-0026BB765291"])
  {
    v39 = [self mapFanModeToTargetFanState:valueCopy];
    goto LABEL_36;
  }

  if ([characteristicCopy isEqualToString:@"00000028-0000-1000-8000-0026BB765291"])
  {
    v39 = [self mapAirflowDirection:valueCopy];
    goto LABEL_36;
  }

LABEL_52:
  if ([characteristicCopy isEqualToString:@"000000A8-0000-1000-8000-0026BB765291"])
  {
    v39 = [self mapFanModeToTargetAirPurifier:valueCopy];
    goto LABEL_36;
  }

  if ([characteristicCopy isEqualToString:@"00000095-0000-1000-8000-0026BB765291"])
  {
    v39 = [self mapAirQuality:valueCopy];
    goto LABEL_36;
  }

  if ([characteristicCopy isEqualToString:@"00000076-0000-1000-8000-0026BB765291"])
  {
    v39 = [self mapSmokeDetected:valueCopy];
    goto LABEL_36;
  }

  if ([characteristicCopy isEqualToString:@"00000069-0000-1000-8000-0026BB765291"])
  {
    v39 = [self mapCarbonMonoxideDetected:valueCopy];
    goto LABEL_36;
  }

  if ([characteristicCopy isEqualToString:@"00000075-0000-1000-8000-0026BB765291"])
  {
    v39 = [self mapSensorFaultToStatusActive:valueCopy];
    goto LABEL_36;
  }

  if ([characteristicCopy isEqualToString:@"000000AC-0000-1000-8000-0026BB765291"])
  {
    v39 = [self mapChangeIndicationToFilterChangeIndication:valueCopy];
    goto LABEL_36;
  }

  v23 = 0;
LABEL_23:

  return v23;
}

+ (BOOL)checkIfCharacteristicsIsOfTypeTemp:(id)temp
{
  tempCopy = temp;
  if ([tempCopy isEqualToString:@"00000011-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(tempCopy, "isEqualToString:", @"00000035-0000-1000-8000-0026BB765291") & 1) != 0 || (objc_msgSend(tempCopy, "isEqualToString:", @"0000000D-0000-1000-8000-0026BB765291"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [tempCopy isEqualToString:@"00000012-0000-1000-8000-0026BB765291"];
  }

  return v4;
}

+ (id)mapPositionState:(id)state
{
  stateCopy = state;
  v4 = qword_2786F0880[[stateCopy integerValue] & 3];

  return v4;
}

+ (id)mapTargetSystemMode:(id)mode
{
  v16 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  integerValue = [modeCopy integerValue];
  if ((integerValue - 3) < 2)
  {
    goto LABEL_4;
  }

  if (integerValue == 1)
  {
    v6 = &unk_283EE8E98;
  }

  else
  {
    if (!integerValue)
    {
LABEL_4:
      v6 = [self mapCurrentSystemMode:modeCopy];
      goto LABEL_9;
    }

    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = modeCopy;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Target System Mode: Mapping unknown value:%@ to HomeKit HeatingCooling State Off", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = &unk_283EE8E68;
  }

LABEL_9:

  return v6;
}

+ (id)mapCurrentSystemMode:(id)mode
{
  v16 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  integerValue = [modeCopy integerValue];
  if (integerValue < 5 && ((0x1Bu >> integerValue) & 1) != 0)
  {
    v6 = qword_2786F0858[integerValue];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = modeCopy;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Current System Mode: Mapping unknown value:%@ to HomeKit HeatingCooling State Off", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = &unk_283EE8E68;
  }

  return v6;
}

+ (id)mapTargetHeatingCoolingState:(id)state
{
  stateCopy = state;
  integerValue = [stateCopy integerValue];
  if (integerValue >= 3)
  {
    if (integerValue == 3)
    {
      v6 = &unk_283EE8E50;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [self mapCurrentHeatingCoolingState:stateCopy];
  }

  return v6;
}

+ (id)mapCurrentHeatingCoolingState:(id)state
{
  integerValue = [state integerValue];
  if (integerValue > 2)
  {
    return 0;
  }

  else
  {
    return qword_2786F0840[integerValue];
  }
}

+ (id)mapSensorFaultToStatusActive:(id)active
{
  v3 = [active integerValue] == 0;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];

  return v4;
}

+ (id)mapChangeIndicationToFilterChangeIndication:(id)indication
{
  integerValue = [indication integerValue];
  if (integerValue > 2)
  {
    return 0;
  }

  else
  {
    return qword_2786F0828[integerValue];
  }
}

+ (id)mapCarbonMonoxideDetected:(id)detected
{
  integerValue = [detected integerValue];
  if (integerValue > 2)
  {
    return 0;
  }

  else
  {
    return qword_2786F0828[integerValue];
  }
}

+ (id)mapSmokeDetected:(id)detected
{
  integerValue = [detected integerValue];
  if (integerValue > 2)
  {
    return 0;
  }

  else
  {
    return qword_2786F0828[integerValue];
  }
}

+ (id)mapAirQuality:(id)quality
{
  integerValue = [quality integerValue];
  if (integerValue > 6)
  {
    return 0;
  }

  else
  {
    return qword_2786F07F0[integerValue];
  }
}

+ (id)mapFanModeToTargetAirPurifier:(id)purifier
{
  integerValue = [purifier integerValue];
  if (integerValue > 5)
  {
    return 0;
  }

  else
  {
    return qword_2786F07C0[integerValue];
  }
}

+ (id)mapFanModeToTargetFanState:(id)state
{
  integerValue = [state integerValue];
  if (integerValue > 5)
  {
    return 0;
  }

  else
  {
    return qword_2786F07C0[integerValue];
  }
}

+ (id)mapAirflowDirection:(id)direction
{
  integerValue = [direction integerValue];
  v4 = &unk_283EE8E50;
  if (integerValue != 1)
  {
    v4 = 0;
  }

  if (integerValue)
  {
    return v4;
  }

  else
  {
    return &unk_283EE8E68;
  }
}

+ (id)mapFanModeToActive:(id)active
{
  integerValue = [active integerValue];
  if (integerValue > 5)
  {
    return 0;
  }

  else
  {
    return qword_2786F0790[integerValue];
  }
}

+ (id)mapTargetAirPuriferState:(id)state
{
  integerValue = [state integerValue];
  v4 = &unk_283EE8E20;
  if (integerValue != 1)
  {
    v4 = 0;
  }

  if (integerValue)
  {
    return v4;
  }

  else
  {
    return &unk_283EE8E08;
  }
}

+ (id)mapRotationDirection:(id)direction
{
  integerValue = [direction integerValue];
  v4 = &unk_283EE8E38;
  if (integerValue != 1)
  {
    v4 = 0;
  }

  if (integerValue)
  {
    return v4;
  }

  else
  {
    return &unk_283EE8DF0;
  }
}

+ (id)mapTargetFanState:(id)state
{
  integerValue = [state integerValue];
  v4 = &unk_283EE8E20;
  if (integerValue != 1)
  {
    v4 = 0;
  }

  if (integerValue)
  {
    return v4;
  }

  else
  {
    return &unk_283EE8E08;
  }
}

+ (id)mapActiveState:(id)state
{
  integerValue = [state integerValue];
  v4 = &unk_283EE8E08;
  if (integerValue != 1)
  {
    v4 = 0;
  }

  if (integerValue)
  {
    return v4;
  }

  else
  {
    return &unk_283EE8DF0;
  }
}

+ (id)linearMapForCharacteristic:(id)characteristic value:(id)value fromRange:(id)range toRange:(id)toRange
{
  v57 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  valueCopy = value;
  rangeCopy = range;
  toRangeCopy = toRange;
  v46 = *[valueCopy objCType];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544386;
    v48 = v17;
    v49 = 2112;
    v50 = valueCopy;
    v51 = 2112;
    v52 = characteristicCopy;
    v53 = 2112;
    v54 = rangeCopy;
    v55 = 2112;
    v56 = toRangeCopy;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Scaling value:%@ for characteristic: %@ linearly from %@ to %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v14);
  [valueCopy doubleValue];
  v19 = v18;
  v20 = [rangeCopy objectAtIndexedSubscript:0];
  [v20 doubleValue];
  v22 = v19 - v21;
  v23 = [rangeCopy objectAtIndexedSubscript:1];
  [v23 doubleValue];
  v25 = v24;
  v26 = [rangeCopy objectAtIndexedSubscript:0];
  [v26 doubleValue];
  v28 = v22 / (v25 - v27);
  v29 = [toRangeCopy objectAtIndexedSubscript:1];
  [v29 doubleValue];
  v31 = v30;
  v32 = [toRangeCopy objectAtIndexedSubscript:0];
  [v32 doubleValue];
  v34 = v31 - v33;
  v35 = [toRangeCopy objectAtIndexedSubscript:0];
  [v35 doubleValue];
  v37 = v36 + v28 * v34;

  if ((v46 | 2) == 0x66)
  {
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
    goto LABEL_9;
  }

  v39 = [MEMORY[0x277CCABB0] numberWithLong:llround(v37)];
  v40 = [toRangeCopy objectAtIndexedSubscript:0];
  if (v39 != v40)
  {
    goto LABEL_6;
  }

  v43 = [rangeCopy objectAtIndexedSubscript:0];
  v44 = v43;
  if (v43 == valueCopy)
  {

LABEL_6:
    goto LABEL_7;
  }

  v45 = [characteristicCopy isEqualToString:@"00000008-0000-1000-8000-0026BB765291"];

  if (v45)
  {
    v41 = [MEMORY[0x277CCABB0] numberWithLong:vcvtpd_s64_f64(v37)];
    goto LABEL_8;
  }

LABEL_7:
  v41 = v39;
LABEL_8:
  v38 = v41;

LABEL_9:

  return v38;
}

+ (id)protocolMap
{
  if (protocolMap_onceToken != -1)
  {
    dispatch_once(&protocolMap_onceToken, &__block_literal_global_11244);
  }

  v3 = cachedProtocolmap;

  return v3;
}

uint64_t __31__HMMTRProtocolMap_protocolMap__block_invoke()
{
  v0 = objc_alloc_init(HMMTRProtocolMap);
  v1 = cachedProtocolmap;
  cachedProtocolmap = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end