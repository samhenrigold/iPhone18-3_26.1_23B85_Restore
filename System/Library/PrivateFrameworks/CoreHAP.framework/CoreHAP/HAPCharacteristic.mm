@interface HAPCharacteristic
+ (id)dummy;
+ (id)hap2_shortTypeFromUUID:(id)d;
- (BOOL)hap2_canUseCachedValue;
- (BOOL)hap2_mergeWithCharacteristic:(id)characteristic;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeObject:(id)object;
- (BOOL)supportsAdditionalAuthorizationData;
- (BOOL)supportsWriteWithResponse;
- (CBCharacteristic)cbCharacteristic;
- (HAPCharacteristic)initWithType:(id)type instanceID:(id)d value:(id)value stateNumber:(id)number properties:(unsigned __int16)properties eventNotificationsEnabled:(BOOL)enabled implicitWriteWithResponse:(BOOL)response metadata:(id)self0;
- (HAPService)service;
- (NSData)notificationContext;
- (NSDate)valueUpdatedTime;
- (NSNumber)stateNumber;
- (NSString)description;
- (id)_generateValidMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initDummy;
- (id)propertiesDescription;
- (id)shortDescription;
- (id)validateValue:(id)value outValue:(id *)outValue;
- (id)value;
- (unint64_t)hash;
- (void)_updateMetadata:(id)metadata withProvidedMetadata:(id)providedMetadata;
- (void)setNotificationContext:(id)context;
- (void)setStateNumber:(id)number;
- (void)setValue:(id)value;
- (void)setValueUpdatedTime:(id)time;
@end

@implementation HAPCharacteristic

- (CBCharacteristic)cbCharacteristic
{
  v2 = objc_getAssociatedObject(self, "cbCharacteristic");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hap2_canUseCachedValue
{
  v3 = +[HAPMetadata getSharedInstance];
  if ([(HAPCharacteristic *)self eventNotificationsEnabled]&& ![(HAPCharacteristic *)self prohibitCaching])
  {
    value = [(HAPCharacteristic *)self value];
    v4 = 0;
    if (value && v3)
    {
      type = [(HAPCharacteristic *)self type];
      v4 = [v3 isStandardHAPCharacteristic:type];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hap2_mergeWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  value = [characteristicCopy value];
  [(HAPCharacteristic *)self setValue:value];

  valueUpdatedTime = [characteristicCopy valueUpdatedTime];
  [(HAPCharacteristic *)self setValueUpdatedTime:valueUpdatedTime];

  -[HAPCharacteristic setProperties:](self, "setProperties:", [characteristicCopy properties]);
  metadata = [characteristicCopy metadata];

  [(HAPCharacteristic *)self setMetadata:metadata];
  return 1;
}

+ (id)hap2_shortTypeFromUUID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if ([dCopy hasSuffix:@"-0000-1000-8000-0026BB765291"])
  {
    v4 = [dCopy substringToIndex:{objc_msgSend(dCopy, "length") - objc_msgSend(@"-0000-1000-8000-0026BB765291", "length")}];
  }

  return v4;
}

- (id)validateValue:(id)value outValue:(id *)outValue
{
  v99 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  metadata = [(HAPCharacteristic *)self metadata];
  if (!metadata)
  {
    goto LABEL_4;
  }

  v8 = metadata;
  metadata2 = [(HAPCharacteristic *)self metadata];
  if (!metadata2)
  {

LABEL_7:
    metadata3 = [(HAPCharacteristic *)self metadata];
    format = [metadata3 format];

    if (outValue)
    {
      *outValue = 0;
    }

    if (!valueCopy)
    {
      v14 = 0;
LABEL_65:

      goto LABEL_66;
    }

    metadata4 = [(HAPCharacteristic *)self metadata];
    if (metadata4)
    {
      metadata5 = [(HAPCharacteristic *)self metadata];
      constraints = [metadata5 constraints];

      if (constraints)
      {
        metadata6 = [(HAPCharacteristic *)self metadata];
        constraints2 = [metadata6 constraints];
        metadata4 = [constraints2 minimumValue];

        metadata7 = [(HAPCharacteristic *)self metadata];
        constraints3 = [metadata7 constraints];
        maximumValue = [constraints3 maximumValue];

        metadata8 = [(HAPCharacteristic *)self metadata];
        constraints4 = [metadata8 constraints];
        minLength = [constraints4 minLength];

        metadata9 = [(HAPCharacteristic *)self metadata];
        constraints5 = [metadata9 constraints];
        maxLength = [constraints5 maxLength];

        v30 = minLength;
      }

      else
      {
        maxLength = 0;
        v30 = 0;
        maximumValue = 0;
        metadata4 = 0;
      }
    }

    else
    {
      maxLength = 0;
      v30 = 0;
      maximumValue = 0;
    }

    if (([format isEqualToString:@"int"] & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"float") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"BOOL") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"int8") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"int16") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"int64") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint8") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint16") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint32") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint64") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"string") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"date") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"array") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"dict") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"data") & 1) != 0 || objc_msgSend(format, "isEqualToString:", @"tlv8"))
    {
      v31 = objc_opt_class();
    }

    else
    {
      v31 = 0;
    }

    if (([objc_opt_class() isSubclassOfClass:v31] & 1) == 0)
    {
      v38 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:43];
      v39 = objc_autoreleasePoolPush();
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v87 = format;
        v41 = maximumValue;
        v42 = metadata4;
        v44 = v43 = v30;
        type = [(HAPCharacteristic *)self type];
        *buf = 138544130;
        v92 = v44;
        v93 = 2112;
        v94 = type;
        v95 = 2112;
        v96 = objc_opt_class();
        v97 = 2112;
        objCType = v31;
        v46 = v96;
        _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, "%{public}@### Failed to validate value for characteristic with type '%@' because the value was of class '%@' but should be '%@'", buf, 0x2Au);

        v30 = v43;
        metadata4 = v42;
        maximumValue = v41;
        format = v87;
      }

      objc_autoreleasePoolPop(v39);
      goto LABEL_64;
    }

    if (!outValue)
    {
LABEL_47:
      if (([format isEqualToString:@"int"] & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"float") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"int8") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"int16") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"int64") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint8") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint16") & 1) != 0 || (objc_msgSend(format, "isEqualToString:", @"uint32") & 1) != 0 || objc_msgSend(format, "isEqualToString:", @"uint64"))
      {
        if (metadata4 && [valueCopy compare:metadata4] == -1)
        {
          v64 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:44];
          if (outValue)
          {
            *outValue = 0;
          }
        }

        else
        {
          v64 = 0;
        }

        if (maximumValue && [valueCopy compare:maximumValue] == 1)
        {
          v38 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:45];

          if (outValue)
          {
            *outValue = 0;
          }
        }

        else
        {
          v38 = v64;
        }

        goto LABEL_64;
      }

      if ([format isEqualToString:@"BOOL"])
      {
        v66 = objc_opt_class();
        if (([v66 isSubclassOfClass:objc_opt_class()] & 1) == 0)
        {
          v67 = v30;
          if ([v66 isSubclassOfClass:objc_opt_class()])
          {
            if ([valueCopy intValue] < 2)
            {
              v38 = 0;
LABEL_104:
              v30 = v67;
              goto LABEL_64;
            }

            v68 = objc_autoreleasePoolPush();
            v69 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              v70 = HMFGetLogIdentifier();
              v71 = objc_opt_class();
              v72 = valueCopy;
              v88 = v71;
              *buf = 138544130;
              v92 = v70;
              v93 = 2112;
              v94 = valueCopy;
              v95 = 2112;
              v96 = v71;
              v97 = 2080;
              objCType = [valueCopy objCType];
              _os_log_impl(&dword_22AADC000, v69, OS_LOG_TYPE_ERROR, "%{public}@Value to be validated is expected to be either '0' or '1', instead it was '%@' - class %@  objCType %s", buf, 0x2Au);
            }
          }

          else
          {
            v68 = objc_autoreleasePoolPush();
            v80 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              v81 = HMFGetLogIdentifier();
              *buf = 138543874;
              v92 = v81;
              v93 = 2112;
              v94 = valueCopy;
              v95 = 2112;
              v96 = v66;
              _os_log_impl(&dword_22AADC000, v80, OS_LOG_TYPE_ERROR, "%{public}@inValue not a BOOLean value %@ - class %@", buf, 0x20u);
            }
          }

          objc_autoreleasePoolPop(v68);
          v38 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:3];
          if (outValue)
          {
            *outValue = 0;
          }

          goto LABEL_104;
        }

LABEL_87:
        v38 = 0;
LABEL_64:
        v14 = v38;

        goto LABEL_65;
      }

      if (![format isEqualToString:@"string"])
      {
        goto LABEL_87;
      }

      v89 = v30;
      v73 = valueCopy;
      v74 = [v73 length];
      if (v74 <= [maxLength unsignedIntValue])
      {
        v82 = [v73 length];
        if (v82 >= [v30 unsignedIntValue])
        {
          v38 = 0;
LABEL_106:

          v30 = v89;
          goto LABEL_64;
        }

        v83 = objc_autoreleasePoolPush();
        v84 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v85 = HMFGetLogIdentifier();
          *buf = 138543874;
          v92 = v85;
          v93 = 2048;
          v94 = [v73 length];
          v95 = 1024;
          LODWORD(v96) = [v89 unsignedIntValue];
          _os_log_impl(&dword_22AADC000, v84, OS_LOG_TYPE_ERROR, "%{public}@inValue string.length: %lu < minLength: %u", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v83);
        v78 = MEMORY[0x277CCA9B8];
        v79 = 51;
      }

      else
      {
        v75 = objc_autoreleasePoolPush();
        v76 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          v77 = HMFGetLogIdentifier();
          *buf = 138543874;
          v92 = v77;
          v93 = 2048;
          v94 = [v73 length];
          v95 = 1024;
          LODWORD(v96) = [maxLength unsignedIntValue];
          _os_log_impl(&dword_22AADC000, v76, OS_LOG_TYPE_ERROR, "%{public}@inValue string.length: %lu > maxLength: %u", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v75);
        v78 = MEMORY[0x277CCA9B8];
        v79 = 46;
      }

      v38 = [v78 errorWithHMErrorCode:{v79, v89}];
      if (outValue)
      {
        *outValue = 0;
      }

      goto LABEL_106;
    }

    v86 = maximumValue;
    v32 = metadata4;
    v33 = v30;
    metadata10 = [(HAPCharacteristic *)self metadata];
    constraints6 = [metadata10 constraints];
    stepValue = [constraints6 stepValue];
    if (stepValue)
    {
      v37 = stepValue;
      if ([format isEqualToString:@"float"])
      {

LABEL_38:
        metadata11 = [(HAPCharacteristic *)self metadata];
        constraints7 = [metadata11 constraints];
        stepValue2 = [constraints7 stepValue];
        [stepValue2 doubleValue];
        v52 = v51;

        metadata12 = [(HAPCharacteristic *)self metadata];
        constraints8 = [metadata12 constraints];
        minimumValue = [constraints8 minimumValue];

        if (minimumValue)
        {
          metadata13 = [(HAPCharacteristic *)self metadata];
          constraints9 = [metadata13 constraints];
          minimumValue2 = [constraints9 minimumValue];
          [minimumValue2 doubleValue];
          v60 = v59;
        }

        else
        {
          v60 = 0.0;
        }

        [valueCopy doubleValue];
        v63 = v60 + round((v62 - v60) / v52) * v52;
        v30 = v33;
        if ([format isEqualToString:@"int"])
        {
          [MEMORY[0x277CCABB0] numberWithInteger:v63];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithDouble:v63];
        }

        v61 = metadata4 = v32;
        goto LABEL_46;
      }

      v47 = [format isEqualToString:@"int"];

      if (v47)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    v61 = valueCopy;
    v30 = v33;
    metadata4 = v32;
LABEL_46:
    maximumValue = v86;
    *outValue = v61;
    goto LABEL_47;
  }

  v10 = metadata2;
  metadata14 = [(HAPCharacteristic *)self metadata];
  format2 = [metadata14 format];

  if (format2)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (outValue)
  {
    v13 = valueCopy;
    v14 = 0;
    *outValue = valueCopy;
  }

  else
  {
    v14 = 0;
  }

LABEL_66:

  return v14;
}

- (id)_generateValidMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = +[HAPMetadata getSharedInstance];
  type = [(HAPCharacteristic *)self type];
  v7 = [v5 getDefaultCharacteristicMetadata:type];

  v8 = metadataCopy;
  if (v7)
  {
    v8 = v7;
    if (metadataCopy)
    {
      [(HAPCharacteristic *)self _updateMetadata:v7 withProvidedMetadata:metadataCopy];
      v8 = v7;
    }
  }

  v9 = v8;

  return v9;
}

- (void)_updateMetadata:(id)metadata withProvidedMetadata:(id)providedMetadata
{
  metadataCopy = metadata;
  providedMetadataCopy = providedMetadata;
  format = [metadataCopy format];

  if (!format)
  {
    format2 = [providedMetadataCopy format];
    [metadataCopy setFormat:format2];
  }

  units = [metadataCopy units];

  if (!units)
  {
    units2 = [providedMetadataCopy units];
    [metadataCopy setUnits:units2];
  }

  manufacturerDescription = [metadataCopy manufacturerDescription];

  if (!manufacturerDescription)
  {
    manufacturerDescription2 = [providedMetadataCopy manufacturerDescription];
    [metadataCopy setManufacturerDescription:manufacturerDescription2];
  }

  constraints = [metadataCopy constraints];

  constraints2 = [providedMetadataCopy constraints];
  constraints16 = constraints2;
  if (!constraints)
  {
    [metadataCopy setConstraints:constraints2];
    goto LABEL_20;
  }

  if (constraints16)
  {
    constraints3 = [providedMetadataCopy constraints];
    minimumValue = [constraints3 minimumValue];

    if (minimumValue)
    {
      constraints4 = [providedMetadataCopy constraints];
      minimumValue2 = [constraints4 minimumValue];
      constraints5 = [metadataCopy constraints];
      [constraints5 setMinimumValue:minimumValue2];
    }

    constraints6 = [providedMetadataCopy constraints];
    maximumValue = [constraints6 maximumValue];

    if (maximumValue)
    {
      constraints7 = [providedMetadataCopy constraints];
      maximumValue2 = [constraints7 maximumValue];
      constraints8 = [metadataCopy constraints];
      [constraints8 setMaximumValue:maximumValue2];
    }

    constraints9 = [providedMetadataCopy constraints];
    stepValue = [constraints9 stepValue];

    if (stepValue)
    {
      constraints10 = [providedMetadataCopy constraints];
      stepValue2 = [constraints10 stepValue];
      constraints11 = [metadataCopy constraints];
      [constraints11 setStepValue:stepValue2];
    }

    constraints12 = [providedMetadataCopy constraints];
    maxLength = [constraints12 maxLength];

    if (maxLength)
    {
      constraints13 = [providedMetadataCopy constraints];
      maxLength2 = [constraints13 maxLength];
      constraints14 = [metadataCopy constraints];
      [constraints14 setMaxLength:maxLength2];
    }

    constraints15 = [providedMetadataCopy constraints];
    validValues = [constraints15 validValues];
    v37 = [validValues count];

    if (v37)
    {
      constraints16 = [providedMetadataCopy constraints];
      validValues2 = [constraints16 validValues];
      constraints17 = [metadataCopy constraints];
      [constraints17 setValidValues:validValues2];

LABEL_20:
    }
  }
}

- (HAPService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (BOOL)mergeObject:(id)object
{
  v27 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    goto LABEL_13;
  }

  if (![(HAPCharacteristic *)self shouldMergeObject:v6])
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Not merging with characteristic: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    goto LABEL_13;
  }

  value = [v6 value];
  [(HAPCharacteristic *)self setValue:value];

  metadata = [(HAPCharacteristic *)self metadata];
  metadata2 = [v6 metadata];
  v10 = [metadata isEqualToCharacteristicMetadata:metadata2];

  if (v10)
  {
LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    metadata3 = [v6 metadata];
    v23 = 138543618;
    v24 = v14;
    v25 = 2112;
    v26 = metadata3;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Updated the characteristic metadata: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  metadata4 = [v6 metadata];
  [(HAPCharacteristic *)selfCopy2 setMetadata:metadata4];

  v17 = 1;
LABEL_14:

  return v17;
}

- (BOOL)supportsAdditionalAuthorizationData
{
  if (([(HAPCharacteristic *)self properties]& 0x10) != 0)
  {
    return 1;
  }

  v3 = +[HAPMetadata getSharedInstance];
  service = [(HAPCharacteristic *)self service];
  type = [(HAPCharacteristic *)self type];
  type2 = [service type];
  v7 = [v3 supportsAdditionalAuthorizationData:type forService:type2];

  return v7;
}

- (BOOL)supportsWriteWithResponse
{
  properties = [(HAPCharacteristic *)self properties];
  if ((properties & 0x80) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    return [(HAPCharacteristic *)self isWriteWithResponseImplicitlySupported]& (properties >> 2);
  }

  return v4;
}

- (NSData)notificationContext
{
  os_unfair_lock_lock_with_options();
  v3 = self->_notificationContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setNotificationContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock_with_options();
  notificationContext = self->_notificationContext;
  self->_notificationContext = contextCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)valueUpdatedTime
{
  os_unfair_lock_lock_with_options();
  v3 = self->_valueUpdatedTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setValueUpdatedTime:(id)time
{
  timeCopy = time;
  os_unfair_lock_lock_with_options();
  valueUpdatedTime = self->_valueUpdatedTime;
  self->_valueUpdatedTime = timeCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)stateNumber
{
  os_unfair_lock_lock_with_options();
  v3 = self->_stateNumber;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setStateNumber:(id)number
{
  numberCopy = number;
  os_unfair_lock_lock_with_options();
  stateNumber = self->_stateNumber;
  self->_stateNumber = numberCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)value
{
  os_unfair_lock_lock_with_options();
  v3 = self->_value;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  date = [MEMORY[0x277CBEAA8] date];
  os_unfair_lock_lock_with_options();
  value = self->_value;
  self->_value = valueCopy;
  v7 = valueCopy;

  valueUpdatedTime = self->_valueUpdatedTime;
  self->_valueUpdatedTime = date;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)propertiesDescription
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (([(HAPCharacteristic *)self properties]& 2) != 0)
  {
    [v3 addObject:@"read"];
  }

  if (([(HAPCharacteristic *)self properties]& 4) != 0)
  {
    [v3 addObject:@"write"];
  }

  if (([(HAPCharacteristic *)self properties]& 1) != 0)
  {
    [v3 addObject:@"eventConnectionNotifications"];
  }

  if (([(HAPCharacteristic *)self properties]& 8) != 0)
  {
    [v3 addObject:@"broadcast"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x10) != 0)
  {
    [v3 addObject:@"additionalAuthData"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x20) != 0)
  {
    [v3 addObject:@"requiresTimedWrite"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x40) != 0)
  {
    [v3 addObject:@"hidden"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x80) != 0)
  {
    [v3 addObject:@"writeResponse"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x100) != 0)
  {
    [v3 addObject:@"eventNotificationContext"];
  }

  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v5 = [v3 objectAtIndexedSubscript:0];
    [v4 appendString:v5];

    v6 = [v3 objectAtIndexedSubscript:0];
    [v3 removeObject:v6];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v4 appendFormat:@", %@", *(*(&v13 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)shortDescription
{
  service = [(HAPCharacteristic *)self service];
  accessory = [service accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  instanceID = [(HAPCharacteristic *)self instanceID];
  type = [(HAPCharacteristic *)self type];
  v10 = HAPShortUUIDType(type);
  stateNumber = [(HAPCharacteristic *)self stateNumber];
  value = [(HAPCharacteristic *)self value];
  valueUpdatedTime = [(HAPCharacteristic *)self valueUpdatedTime];
  v14 = [v6 stringWithFormat:@"%@ %@/%@/%@/%@ %@/%@", v7, uniqueIdentifier, instanceID, v10, stateNumber, value, valueUpdatedTime];

  return v14;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v20.receiver = self;
  v20.super_class = HAPCharacteristic;
  v4 = [(HMFObject *)&v20 description];
  [v3 appendFormat:@"%@", v4];

  service = [(HAPCharacteristic *)self service];
  accessory = [service accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  [v3 appendFormat:@", Accessory Unique ID: %@", uniqueIdentifier];

  instanceID = [(HAPCharacteristic *)self instanceID];
  [v3 appendFormat:@", Instance ID: %@", instanceID];

  type = [(HAPCharacteristic *)self type];
  [v3 appendFormat:@", Type: %@", type];

  value = [(HAPCharacteristic *)self value];
  [v3 appendFormat:@", Value: %@", value];

  stateNumber = [(HAPCharacteristic *)self stateNumber];
  [v3 appendFormat:@", State Number: %@", stateNumber];

  valueUpdatedTime = [(HAPCharacteristic *)self valueUpdatedTime];
  hmf_localTimeDescription = [valueUpdatedTime hmf_localTimeDescription];
  [v3 appendFormat:@", Value update time: %@", hmf_localTimeDescription];

  propertiesDescription = [(HAPCharacteristic *)self propertiesDescription];
  [v3 appendFormat:@", Properties: %@", propertiesDescription];

  [(HAPCharacteristic *)self eventNotificationsEnabled];
  v15 = HMFBooleanToString();
  [v3 appendFormat:@", Event Notifications Enabled: %@", v15];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HAPCharacteristic isWriteWithResponseImplicitlySupported](self, "isWriteWithResponseImplicitlySupported")}];
  [v3 appendFormat:@", Write With Response Implicitly Supported: %@", v16];

  metadata = [(HAPCharacteristic *)self metadata];
  [v3 appendFormat:@", Metadata: %@", metadata];

  [(HAPCharacteristic *)self supportsEventNotificationContext];
  v18 = HMFBooleanToString();
  [v3 appendFormat:@", supportsEventNotificationContext: %@", v18];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (-[HAPCharacteristic instanceID](self, "instanceID"), v7 = objc_claimAutoreleasedReturnValue(), -[HAPCharacteristic instanceID](v6, "instanceID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = numbersAreNotEqualNilSafe(v7, v8), v8, v7, (v9 & 1) == 0) && ((-[HAPCharacteristic type](self, "type"), v10 = objc_claimAutoreleasedReturnValue(), -[HAPCharacteristic type](v6, "type"), v11 = objc_claimAutoreleasedReturnValue(), !(v10 | v11)) || (v12 = v11, v13 = [v10 isEqualToString:v11], v12, v10, v13)) && (v15 = -[HAPCharacteristic properties](self, "properties"), v15 == -[HAPCharacteristic properties](v6, "properties")))
    {
      service = [(HAPCharacteristic *)self service];
      if (service)
      {
        v17 = service;
        service2 = [(HAPCharacteristic *)v6 service];
        if (service2)
        {
          v19 = service2;
          service3 = [(HAPCharacteristic *)self service];
          service4 = [(HAPCharacteristic *)v6 service];
          v14 = [service3 isEqual:service4];
        }

        else
        {
          v14 = 1;
        }
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14 & 1;
}

- (unint64_t)hash
{
  instanceID = [(HAPCharacteristic *)self instanceID];
  v3 = [instanceID hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  value = [(HAPCharacteristic *)self value];
  if (([value conformsToProtocol:&unk_283EACBD0] & 1) == 0)
  {

    goto LABEL_5;
  }

  value2 = [(HAPCharacteristic *)self value];

  if (!value2)
  {
LABEL_5:
    value2 = [(HAPCharacteristic *)self value];
    v7 = [value2 copy];
    goto LABEL_6;
  }

  v7 = [value2 copyWithZone:zone];
LABEL_6:
  v25 = v7;

  v22 = objc_alloc(objc_opt_class());
  type = [(HAPCharacteristic *)self type];
  v21 = [type copyWithZone:zone];
  instanceID = [(HAPCharacteristic *)self instanceID];
  v8 = [instanceID copyWithZone:zone];
  stateNumber = [(HAPCharacteristic *)self stateNumber];
  v10 = [stateNumber copyWithZone:zone];
  properties = [(HAPCharacteristic *)self properties];
  eventNotificationsEnabled = [(HAPCharacteristic *)self eventNotificationsEnabled];
  isWriteWithResponseImplicitlySupported = [(HAPCharacteristic *)self isWriteWithResponseImplicitlySupported];
  metadata = [(HAPCharacteristic *)self metadata];
  v15 = [metadata copyWithZone:zone];
  LOBYTE(v20) = isWriteWithResponseImplicitlySupported;
  v16 = [v22 initWithType:v21 instanceID:v8 value:v25 stateNumber:v10 properties:properties eventNotificationsEnabled:eventNotificationsEnabled implicitWriteWithResponse:v20 metadata:v15];

  valueUpdatedTime = [(HAPCharacteristic *)self valueUpdatedTime];
  [v16 setValueUpdatedTime:valueUpdatedTime];

  notificationContext = [(HAPCharacteristic *)self notificationContext];
  [v16 setNotificationContext:notificationContext];

  [v16 setProhibitCaching:{-[HAPCharacteristic prohibitCaching](self, "prohibitCaching")}];
  [v16 setShouldValidateValueAfterReading:{-[HAPCharacteristic shouldValidateValueAfterReading](self, "shouldValidateValueAfterReading")}];

  return v16;
}

- (HAPCharacteristic)initWithType:(id)type instanceID:(id)d value:(id)value stateNumber:(id)number properties:(unsigned __int16)properties eventNotificationsEnabled:(BOOL)enabled implicitWriteWithResponse:(BOOL)response metadata:(id)self0
{
  propertiesCopy = properties;
  v87 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dCopy = d;
  valueCopy = value;
  numberCopy = number;
  metadataCopy = metadata;
  if (isValidTypeName(typeCopy))
  {
    hap_validatedAndNormalizedUUIDString = [typeCopy hap_validatedAndNormalizedUUIDString];
    if (hap_validatedAndNormalizedUUIDString)
    {
      if (isValidInstanceID(dCopy))
      {
        log = hap_validatedAndNormalizedUUIDString;
        v20 = +[HAPMetadata getSharedInstance];
        v72 = v20;
        if (propertiesCopy)
        {
          if ((propertiesCopy & 0xF) != 0)
          {
            v21 = [v20 getDefaultCharacteristicProperties:log];
            v22 = v21;
            if (v21)
            {
              v69 = v21;
              unsignedIntegerValue = [v21 unsignedIntegerValue];
              if ((propertiesCopy & 2) == 0 && (unsignedIntegerValue & 2) != 0)
              {
                v24 = metadataCopy;
                v25 = objc_autoreleasePoolPush();
                v26 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v80 = v27;
                  v81 = 2112;
                  v28 = log;
                  v82 = log;
                  v29 = "%{public}@### HomeKit Characteristic '%@' does not support secureRead.";
LABEL_11:
                  _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);

LABEL_52:
                  objc_autoreleasePoolPop(v25);

                  goto LABEL_27;
                }

                goto LABEL_51;
              }

              v22 = v69;
              if (unsignedIntegerValue < 0 && (propertiesCopy & 0x80) == 0 && ((propertiesCopy & 4) == 0 || !response))
              {
                v24 = metadataCopy;
                v25 = objc_autoreleasePoolPush();
                v26 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v80 = v27;
                  v81 = 2114;
                  v28 = log;
                  v82 = log;
                  v29 = "%{public}@### HomeKit Characteristic '%{public}@' does not support writeResponse.";
                  goto LABEL_11;
                }

LABEL_51:
                v28 = log;
                goto LABEL_52;
              }
            }

            v48 = metadataCopy;
            v73 = v48;
            if (v48)
            {
              constraints = [v48 constraints];
              if (constraints || ([v73 manufacturerDescription], (constraints = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v73, "format"), (constraints = objc_claimAutoreleasedReturnValue()) != 0))
              {

                v48 = v73;
              }

              else
              {
                units = [v73 units];

                v48 = v73;
                if (!units)
                {
                  v24 = metadataCopy;
                  v63 = objc_autoreleasePoolPush();
                  v64 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                  {
                    v65 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v80 = v65;
                    _os_log_impl(&dword_22AADC000, v64, OS_LOG_TYPE_ERROR, "%{public}@### Characteristic metadata is empty", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v63);
                  v44 = objc_autoreleasePoolPush();
                  v45 = HMFGetOSLogHandle();
                  if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_30;
                  }

                  v46 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v80 = v46;
                  v81 = 2112;
                  v82 = log;
                  v47 = "%{public}@### Unable to initialize characteristic '%@' because of invalid metadata";
                  goto LABEL_29;
                }
              }
            }

            v78.receiver = self;
            v78.super_class = HAPCharacteristic;
            v50 = [(HAPCharacteristic *)&v78 init];
            if (v50)
            {
              v68 = metadataCopy;
              v70 = +[HAPMetadata getSharedInstance];
              v51 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:log];
              type = v50->_type;
              v50->_type = v51;

              v53 = [v70 characteristicUTIFromType:log];
              if (v53)
              {
                context = objc_autoreleasePoolPush();
                loga = HMFGetOSLogHandle();
                if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
                {
                  v66 = HMFGetLogIdentifier();
                  v54 = v50->_type;
                  *buf = 138544130;
                  v80 = v66;
                  v81 = 2112;
                  v82 = v54;
                  v83 = 2112;
                  v84 = v53;
                  v85 = 2112;
                  v86 = dCopy;
                  _os_log_impl(&dword_22AADC000, loga, OS_LOG_TYPE_DEBUG, "%{public}@%@ ----> %@ [%@]", buf, 0x2Au);
                }

                objc_autoreleasePoolPop(context);
              }

              objc_storeStrong(&v50->_instanceID, d);
              objc_storeStrong(&v50->_value, value);
              objc_storeStrong(&v50->_stateNumber, number);
              date = [MEMORY[0x277CBEAA8] date];
              valueUpdatedTime = v50->_valueUpdatedTime;
              v50->_valueUpdatedTime = date;

              v50->_properties = propertiesCopy;
              v50->_eventNotificationsEnabled = enabled;
              v50->_implicitWriteWithResponse = response;
              v50->_shouldValidateValueAfterReading = 1;
              v57 = [HMFObjectCacheHAPCharacteristicMetadata hap_cacheInstanceForMetadata:v73];
              accessoryMetadata = v50->_accessoryMetadata;
              v50->_accessoryMetadata = v57;

              v59 = [(HAPCharacteristic *)v50 _generateValidMetadata:v73];
              v60 = [HMFObjectCacheHAPCharacteristicMetadata hap_cacheInstanceForMetadata:v59];
              metadata = v50->_metadata;
              v50->_metadata = v60;

              metadataCopy = v68;
            }

            self = v50;
            selfCopy = self;
            goto LABEL_47;
          }

          v24 = metadataCopy;
          v40 = objc_autoreleasePoolPush();
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543362;
            v80 = v42;
            v43 = "%{public}@### Characteristic is missing valid properties";
            goto LABEL_25;
          }
        }

        else
        {
          v24 = metadataCopy;
          v40 = objc_autoreleasePoolPush();
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543362;
            v80 = v42;
            v43 = "%{public}@### Characteristic has nil properties";
LABEL_25:
            _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_ERROR, v43, buf, 0xCu);
          }
        }

        v28 = log;

        objc_autoreleasePoolPop(v40);
LABEL_27:

        v44 = objc_autoreleasePoolPush();
        v45 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
LABEL_30:

          objc_autoreleasePoolPop(v44);
          selfCopy = 0;
          metadataCopy = v24;
          goto LABEL_47;
        }

        v46 = HMFGetLogIdentifier();
        *buf = 138543618;
        v80 = v46;
        v81 = 2112;
        v82 = v28;
        v47 = "%{public}@### Unable to initialize characteristic '%@' because of invalid properties";
LABEL_29:
        _os_log_impl(&dword_22AADC000, v45, OS_LOG_TYPE_ERROR, v47, buf, 0x16u);

        goto LABEL_30;
      }

      v34 = objc_autoreleasePoolPush();
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v80 = v36;
        v81 = 2112;
        v82 = hap_validatedAndNormalizedUUIDString;
        v37 = "%{public}@### Unable to initialize characteristic '%@' because of invalid instance ID";
        v38 = v35;
        v39 = 22;
        goto LABEL_19;
      }
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543362;
        v80 = v36;
        v37 = "%{public}@### Unable to initialize characteristic because type name is not a UUID";
        v38 = v35;
        v39 = 12;
LABEL_19:
        _os_log_impl(&dword_22AADC000, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
      }
    }

    objc_autoreleasePoolPop(v34);
    selfCopy = 0;
LABEL_47:

    goto LABEL_48;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138543618;
    v80 = v32;
    v81 = 2112;
    v82 = typeCopy;
    _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, "%{public}@### Unable to initialize characteristic because of invalid characteristic type name: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
  selfCopy = 0;
LABEL_48:

  return selfCopy;
}

- (id)initDummy
{
  v12.receiver = self;
  v12.super_class = HAPCharacteristic;
  v2 = [(HAPCharacteristic *)&v12 init];
  v3 = v2;
  if (v2)
  {
    type = v2->_type;
    v2->_type = @"Dummy Type";

    instanceID = v3->_instanceID;
    v3->_instanceID = 0;

    value = v3->_value;
    v3->_value = 0;

    stateNumber = v3->_stateNumber;
    v3->_stateNumber = 0;

    date = [MEMORY[0x277CBEAA8] date];
    valueUpdatedTime = v3->_valueUpdatedTime;
    v3->_valueUpdatedTime = date;

    v3->_properties = 0;
    v3->_eventNotificationsEnabled = 0;
    v3->_implicitWriteWithResponse = 0;
    v3->_shouldValidateValueAfterReading = 0;
    metadata = v3->_metadata;
    v3->_metadata = 0;
  }

  return v3;
}

+ (id)dummy
{
  initDummy = [[HAPCharacteristic alloc] initDummy];

  return initDummy;
}

@end