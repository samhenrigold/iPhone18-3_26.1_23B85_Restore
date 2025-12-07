@interface VGVehicleState
+ (id)_vehicleStateFromStorage:(id)storage;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSignificantlyDifferentFromVehicleState:(id)state;
- (VGVehicleState)initWithCoder:(id)coder;
- (VGVehicleState)initWithIdentifier:(id)identifier dateOfUpdate:(id)update origin:(int64_t)origin batteryPercentage:(id)percentage currentEVRange:(id)range maxEVRange:(id)vRange minBatteryCapacity:(id)capacity currentBatteryCapacity:(id)self0 maxBatteryCapacity:(id)self1 consumptionArguments:(id)self2 chargingArguments:(id)self3 isCharging:(BOOL)self4 activeConnector:(unint64_t)self5;
- (id)_storage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VGVehicleState

- (id)description
{
  v24 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = @"Unknown";
  identifier = self->_identifier;
  v23 = v3;
  dateOfUpdate = self->_dateOfUpdate;
  origin = self->_origin;
  currentEVRange = self->_currentEVRange;
  if (origin == 1)
  {
    v4 = @"iAP2";
  }

  if (origin == 2)
  {
    v4 = @"SiriIntents";
  }

  v19 = v4;
  maxEVRange = self->_maxEVRange;
  minBatteryCapacity = self->_minBatteryCapacity;
  currentBatteryCapacity = self->_currentBatteryCapacity;
  maxBatteryCapacity = self->_maxBatteryCapacity;
  consumptionArguments = self->_consumptionArguments;
  chargingArguments = self->_chargingArguments;
  if (self->_isCharging)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  activeConnector = self->_activeConnector;
  batteryPercentage = self->_batteryPercentage;
  v15 = v12;
  v16 = NSStringFromVGChargingConnectorTypeOptions(activeConnector);
  v17 = [v24 stringWithFormat:@"<%@:%p, identifier: %@, dateOfUpdate: %@, origin: %@, batteryCharge: %@, currentEVRange: %@, maxEVRange: %@, minBatteryCapacity: %@, currentBatteryCapacity: %@, maxBatteryCapacity: %@, consumptionArguments: %@, chargingArguments: %@, isCharging: %@, activeConnector: %@>", v23, self, identifier, dateOfUpdate, v19, batteryPercentage, currentEVRange, maxEVRange, minBatteryCapacity, currentBatteryCapacity, maxBatteryCapacity, consumptionArguments, chargingArguments, v15, v16];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v56 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = v5->_identifier;
      v7 = self->_identifier;
      v8 = identifier;
      v56 = (!(v7 | v8) || (v9 = v8, v10 = [v7 isEqual:v8], v9, v7, v10)) && ((dateOfUpdate = v5->_dateOfUpdate, v12 = self->_dateOfUpdate, v13 = dateOfUpdate, !(v12 | v13)) || (v14 = v13, v15 = objc_msgSend(v12, "isEqual:", v13), v14, v12, v15)) && self->_origin == v5->_origin && ((batteryPercentage = v5->_batteryPercentage, v17 = self->_batteryPercentage, v18 = batteryPercentage, !(v17 | v18)) || (v19 = v18, v20 = objc_msgSend(v17, "isEqual:", v18), v19, v17, v20)) && ((currentEVRange = v5->_currentEVRange, v22 = self->_currentEVRange, v23 = currentEVRange, !(v22 | v23)) || (v24 = v23, v25 = objc_msgSend(v22, "isEqual:", v23), v24, v22, v25)) && ((maxEVRange = v5->_maxEVRange, v27 = self->_maxEVRange, v28 = maxEVRange, !(v27 | v28)) || (v29 = v28, v30 = objc_msgSend(v27, "isEqual:", v28), v29, v27, v30)) && ((minBatteryCapacity = v5->_minBatteryCapacity, v32 = self->_minBatteryCapacity, v33 = minBatteryCapacity, !(v32 | v33)) || (v34 = v33, v35 = objc_msgSend(v32, "isEqual:", v33), v34, v32, v35)) && ((currentBatteryCapacity = v5->_currentBatteryCapacity, v37 = self->_currentBatteryCapacity, v38 = currentBatteryCapacity, !(v37 | v38)) || (v39 = v38, v40 = objc_msgSend(v37, "isEqual:", v38), v39, v37, v40)) && ((maxBatteryCapacity = v5->_maxBatteryCapacity, v42 = self->_maxBatteryCapacity, v43 = maxBatteryCapacity, !(v42 | v43)) || (v44 = v43, v45 = objc_msgSend(v42, "isEqual:", v43), v44, v42, v45)) && ((consumptionArguments = v5->_consumptionArguments, v47 = self->_consumptionArguments, v48 = consumptionArguments, !(v47 | v48)) || (v49 = v48, v50 = objc_msgSend(v47, "isEqual:", v48), v49, v47, v50)) && ((chargingArguments = v5->_chargingArguments, v52 = self->_chargingArguments, v53 = chargingArguments, !(v52 | v53)) || (v54 = v53, v55 = objc_msgSend(v52, "isEqual:", v53), v54, v52, v55)) && self->_isCharging == v5->_isCharging && self->_activeConnector == v5->_activeConnector;
    }

    else
    {
      v56 = 0;
    }
  }

  return v56;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VGVehicleState allocWithZone:zone];
  LOBYTE(v6) = self->_isCharging;
  return [(VGVehicleState *)v4 initWithIdentifier:self->_identifier dateOfUpdate:self->_dateOfUpdate origin:self->_origin batteryPercentage:self->_batteryPercentage currentEVRange:self->_currentEVRange maxEVRange:self->_maxEVRange minBatteryCapacity:self->_minBatteryCapacity currentBatteryCapacity:self->_currentBatteryCapacity maxBatteryCapacity:self->_maxBatteryCapacity consumptionArguments:self->_consumptionArguments chargingArguments:self->_chargingArguments isCharging:v6 activeConnector:self->_activeConnector];
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_dateOfUpdate forKey:@"_dateOfUpdate"];
  [coderCopy encodeInteger:self->_origin forKey:@"_origin"];
  [coderCopy encodeObject:self->_batteryPercentage forKey:@"_batteryPercentage"];
  [coderCopy encodeObject:self->_currentEVRange forKey:@"_currentEVRange"];
  [coderCopy encodeObject:self->_maxEVRange forKey:@"_maxEVRange"];
  [coderCopy encodeObject:self->_minBatteryCapacity forKey:@"_minBatteryCapacity"];
  [coderCopy encodeObject:self->_currentBatteryCapacity forKey:@"_currentBatteryCapacity"];
  [coderCopy encodeObject:self->_maxBatteryCapacity forKey:@"_maxBatteryCapacity"];
  [coderCopy encodeObject:self->_consumptionArguments forKey:@"_consumptionArguments"];
  [coderCopy encodeObject:self->_chargingArguments forKey:@"_chargingArguments"];
  [coderCopy encodeBool:self->_isCharging forKey:@"_isCharging"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_activeConnector];
  [coderCopy encodeObject:v6 forKey:@"_activeConnector"];
}

- (VGVehicleState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = VGVehicleState;
  v5 = [(VGVehicleState *)&v33 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dateOfUpdate"];
    dateOfUpdate = v5->_dateOfUpdate;
    v5->_dateOfUpdate = v8;

    v5->_origin = [coderCopy decodeIntegerForKey:@"_origin"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_batteryPercentage"];
    batteryPercentage = v5->_batteryPercentage;
    v5->_batteryPercentage = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentEVRange"];
    currentEVRange = v5->_currentEVRange;
    v5->_currentEVRange = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_maxEVRange"];
    maxEVRange = v5->_maxEVRange;
    v5->_maxEVRange = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_minBatteryCapacity"];
    minBatteryCapacity = v5->_minBatteryCapacity;
    v5->_minBatteryCapacity = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentBatteryCapacity"];
    currentBatteryCapacity = v5->_currentBatteryCapacity;
    v5->_currentBatteryCapacity = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_maxBatteryCapacity"];
    maxBatteryCapacity = v5->_maxBatteryCapacity;
    v5->_maxBatteryCapacity = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v22 setWithObjects:{v23, v24, v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"_consumptionArguments"];
    consumptionArguments = v5->_consumptionArguments;
    v5->_consumptionArguments = v27;

    v29 = [coderCopy decodeObjectOfClasses:v26 forKey:@"_chargingArguments"];
    chargingArguments = v5->_chargingArguments;
    v5->_chargingArguments = v29;

    v5->_isCharging = [coderCopy decodeBoolForKey:@"_isCharging"];
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_activeConnector"];
    v5->_activeConnector = [v31 unsignedIntegerValue];
  }

  return v5;
}

- (id)_storage
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(VGVehicleStateStorage);
  v4 = [(NSString *)self->_identifier copy];
  [(VGVehicleStateStorage *)v3 setIdentifier:v4];

  [(NSDate *)self->_dateOfUpdate timeIntervalSinceReferenceDate];
  [(VGVehicleStateStorage *)v3 setDateOfUpdate:?];
  origin = self->_origin;
  if (origin >= 3)
  {
    v6 = VGGetAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v36 = 136315650;
      v37 = "VGVehicleStateStorage_Origin VGVehicleStateStorage_OriginFromVGVehicleStateOrigin(VGVehicleStateOrigin)";
      v38 = 2080;
      v39 = "VGVehicleState.m";
      v40 = 1024;
      v41 = 201;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v36, 0x1Cu);
    }

    if (_vg_isInternalInstall())
    {
      v7 = VGGetAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v36 = 138412290;
        v37 = callStackSymbols;
        _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
      }
    }

    v9 = VGGetPersistingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v36 = 138412290;
      v37 = @"Unknown";
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "Failed to persist origin from vgOrigin: %@", &v36, 0xCu);
    }

    origin = 0;
  }

  [(VGVehicleStateStorage *)v3 setOrigin:origin];
  batteryPercentage = self->_batteryPercentage;
  if (batteryPercentage)
  {
    [(NSNumber *)batteryPercentage doubleValue];
    [(VGVehicleStateStorage *)v3 setBatteryPercentage:?];
  }

  currentEVRange = self->_currentEVRange;
  if (currentEVRange)
  {
    kilometers = [MEMORY[0x277CCAE20] kilometers];
    v13 = [(NSMeasurement *)currentEVRange measurementByConvertingToUnit:kilometers];
    [v13 doubleValue];
    [(VGVehicleStateStorage *)v3 setCurrentEVRange:?];
  }

  maxEVRange = self->_maxEVRange;
  if (maxEVRange)
  {
    kilometers2 = [MEMORY[0x277CCAE20] kilometers];
    v16 = [(NSMeasurement *)maxEVRange measurementByConvertingToUnit:kilometers2];
    [v16 doubleValue];
    [(VGVehicleStateStorage *)v3 setMaxEVRange:?];
  }

  minBatteryCapacity = self->_minBatteryCapacity;
  if (minBatteryCapacity)
  {
    kilowattHours = [MEMORY[0x277CCADF8] kilowattHours];
    v19 = [(NSMeasurement *)minBatteryCapacity measurementByConvertingToUnit:kilowattHours];
    [v19 doubleValue];
    [(VGVehicleStateStorage *)v3 setMinBatteryCapacity:?];
  }

  currentBatteryCapacity = self->_currentBatteryCapacity;
  if (currentBatteryCapacity)
  {
    kilowattHours2 = [MEMORY[0x277CCADF8] kilowattHours];
    v22 = [(NSMeasurement *)currentBatteryCapacity measurementByConvertingToUnit:kilowattHours2];
    [v22 doubleValue];
    [(VGVehicleStateStorage *)v3 setCurrentBatteryCapacity:?];
  }

  maxBatteryCapacity = self->_maxBatteryCapacity;
  if (maxBatteryCapacity)
  {
    kilowattHours3 = [MEMORY[0x277CCADF8] kilowattHours];
    v25 = [(NSMeasurement *)maxBatteryCapacity measurementByConvertingToUnit:kilowattHours3];
    [v25 doubleValue];
    [(VGVehicleStateStorage *)v3 setMaxBatteryCapacity:?];
  }

  v26 = [(NSString *)self->_consumptionArguments copy];
  [(VGVehicleStateStorage *)v3 setConsumptionArguments:v26];

  v27 = [(NSString *)self->_chargingArguments copy];
  [(VGVehicleStateStorage *)v3 setChargingArguments:v27];

  [(VGVehicleStateStorage *)v3 setIsCharging:self->_isCharging];
  activeConnector = self->_activeConnector;
  if (activeConnector > 15)
  {
    if (activeConnector <= 63)
    {
      if (activeConnector == 16)
      {
        v29 = 5;
        goto LABEL_55;
      }

      if (activeConnector == 32)
      {
        v29 = 6;
        goto LABEL_55;
      }
    }

    else
    {
      switch(activeConnector)
      {
        case 64:
          v29 = 7;
          goto LABEL_55;
        case 128:
          v29 = 8;
          goto LABEL_55;
        case 256:
          v29 = 9;
          goto LABEL_55;
      }
    }

    goto LABEL_45;
  }

  if (activeConnector > 1)
  {
    switch(activeConnector)
    {
      case 2:
        v29 = 2;
        goto LABEL_55;
      case 4:
        v29 = 3;
        goto LABEL_55;
      case 8:
        v29 = 4;
        goto LABEL_55;
    }

    goto LABEL_45;
  }

  if (activeConnector)
  {
    if (activeConnector == 1)
    {
      v29 = 1;
      goto LABEL_55;
    }

LABEL_45:
    v30 = VGGetAssertLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v36 = 136315650;
      v37 = "VGVehicleStateStorage_ConnectorType VGVehicleStateStorage_ConnectorTypeFromVGChargingConnectorTypeOptions(VGChargingConnectorTypeOptions)";
      v38 = 2080;
      v39 = "VGVehicleState.m";
      v40 = 1024;
      v41 = 168;
      _os_log_impl(&dword_270EC1000, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v36, 0x1Cu);
    }

    if (_vg_isInternalInstall())
    {
      v31 = VGGetAssertLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
        v36 = 138412290;
        v37 = callStackSymbols2;
        _os_log_impl(&dword_270EC1000, v31, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
      }
    }

    v33 = VGGetPersistingLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromVGChargingConnectorTypeOptions(activeConnector);
      v36 = 138412290;
      v37 = v34;
      _os_log_impl(&dword_270EC1000, v33, OS_LOG_TYPE_ERROR, "Failed to persist a single connector type from vgConnectorType: %@", &v36, 0xCu);
    }
  }

  v29 = 0;
LABEL_55:
  [(VGVehicleStateStorage *)v3 setActiveConnector:v29];

  return v3;
}

- (BOOL)isSignificantlyDifferentFromVehicleState:(id)state
{
  v66 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  GEOConfigGetDouble();
  v6 = v5;
  dateOfUpdate = self->_dateOfUpdate;
  dateOfUpdate = [stateCopy dateOfUpdate];
  [(NSDate *)dateOfUpdate timeIntervalSinceDate:dateOfUpdate];
  v10 = fabs(v9);

  if (v10 <= v6)
  {
    GEOConfigGetDouble();
    v15 = v14;
    [(NSMeasurement *)self->_minBatteryCapacity doubleValue];
    v17 = v16;
    minBatteryCapacity = [stateCopy minBatteryCapacity];
    [minBatteryCapacity doubleValue];
    if (vabdd_f64(v17, v19) > v15)
    {
LABEL_7:

      goto LABEL_8;
    }

    [(NSMeasurement *)self->_currentBatteryCapacity doubleValue];
    v21 = v20;
    currentBatteryCapacity = [stateCopy currentBatteryCapacity];
    [currentBatteryCapacity doubleValue];
    if (vabdd_f64(v21, v23) > v15)
    {

      goto LABEL_7;
    }

    [(NSMeasurement *)self->_maxBatteryCapacity doubleValue];
    v30 = v29;
    maxBatteryCapacity = [stateCopy maxBatteryCapacity];
    [maxBatteryCapacity doubleValue];
    v33 = vabdd_f64(v30, v32);

    if (v33 > v15)
    {
LABEL_8:
      v11 = VGGetPersistingLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        currentBatteryCapacity = self->_currentBatteryCapacity;
        maxBatteryCapacity = self->_maxBatteryCapacity;
        minBatteryCapacity = self->_minBatteryCapacity;
        v58 = 138413058;
        v59 = minBatteryCapacity;
        v60 = 2112;
        v61 = maxBatteryCapacity;
        v62 = 2112;
        v63 = currentBatteryCapacity;
        v64 = 2112;
        v65 = stateCopy;
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_INFO, "isSignificantlyDifferentFromVehicleState: -> YES. Battery state has changed. _min: %@, _max: %@, _current: %@. new: %@", &v58, 0x2Au);
      }

      goto LABEL_10;
    }

    consumptionArguments = self->_consumptionArguments;
    consumptionArguments = [stateCopy consumptionArguments];
    v36 = consumptionArguments;
    v37 = consumptionArguments;
    if (v36 | v37 && (v38 = [v36 isEqual:v37], v37, v36, (v38 & 1) == 0))
    {
    }

    else
    {
      chargingArguments = self->_chargingArguments;
      chargingArguments = [stateCopy chargingArguments];
      v41 = chargingArguments;
      v42 = chargingArguments;
      if (!(v41 | v42))
      {

        goto LABEL_36;
      }

      v43 = v42;
      v44 = [v41 isEqual:v42];

      if (v44)
      {
        goto LABEL_36;
      }
    }

    v45 = VGDictionaryFromVGVehicleArguments(self->_chargingArguments);
    chargingArguments2 = [stateCopy chargingArguments];
    v47 = VGDictionaryFromVGVehicleArguments(chargingArguments2);
    if (v45 | v47)
    {
      v48 = [v45 isEqual:v47] ^ 1;
    }

    else
    {
      v48 = 0;
    }

    v49 = VGDictionaryFromVGVehicleArguments(self->_consumptionArguments);
    consumptionArguments2 = [stateCopy consumptionArguments];
    v51 = VGDictionaryFromVGVehicleArguments(consumptionArguments2);
    if (v49 | v51)
    {
      v52 = [v49 isEqual:v51] ^ 1;
    }

    else
    {
      v52 = 0;
    }

    if ((v52 | v48))
    {
      v53 = VGGetPersistingLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = @"NO";
        if (v48)
        {
          v55 = @"YES";
        }

        else
        {
          v55 = @"NO";
        }

        if (v52)
        {
          v54 = @"YES";
        }

        v58 = 138412546;
        v59 = v55;
        v60 = 2112;
        v61 = v54;
        v56 = v54;
        v57 = v55;
        _os_log_impl(&dword_270EC1000, v53, OS_LOG_TYPE_INFO, "isSignificantlyDifferentFromVehicleState: -> YES. chargingArgumentsAreDifferent: %@, consumptionArgumentsAreDifferent: %@", &v58, 0x16u);
      }

      goto LABEL_11;
    }

LABEL_36:
    v27 = 0;
    goto LABEL_12;
  }

  v11 = VGGetPersistingLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = self->_dateOfUpdate;
    dateOfUpdate2 = [stateCopy dateOfUpdate];
    v58 = 138412546;
    v59 = v12;
    v60 = 2112;
    v61 = dateOfUpdate2;
    _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_INFO, "isSignificantlyDifferentFromVehicleState: -> YES. Date of last update: %@, date of new update: %@", &v58, 0x16u);
  }

LABEL_10:

LABEL_11:
  v27 = 1;
LABEL_12:

  return v27;
}

- (VGVehicleState)initWithIdentifier:(id)identifier dateOfUpdate:(id)update origin:(int64_t)origin batteryPercentage:(id)percentage currentEVRange:(id)range maxEVRange:(id)vRange minBatteryCapacity:(id)capacity currentBatteryCapacity:(id)self0 maxBatteryCapacity:(id)self1 consumptionArguments:(id)self2 chargingArguments:(id)self3 isCharging:(BOOL)self4 activeConnector:(unint64_t)self5
{
  identifierCopy = identifier;
  updateCopy = update;
  percentageCopy = percentage;
  rangeCopy = range;
  vRangeCopy = vRange;
  capacityCopy = capacity;
  batteryCapacityCopy = batteryCapacity;
  maxBatteryCapacityCopy = maxBatteryCapacity;
  argumentsCopy = arguments;
  chargingArgumentsCopy = chargingArguments;
  v39.receiver = self;
  v39.super_class = VGVehicleState;
  v22 = [(VGVehicleState *)&v39 init];
  if (v22)
  {
    v23 = [identifierCopy copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    objc_storeStrong(&v22->_dateOfUpdate, update);
    v22->_origin = origin;
    objc_storeStrong(&v22->_batteryPercentage, percentage);
    objc_storeStrong(&v22->_currentEVRange, range);
    objc_storeStrong(&v22->_maxEVRange, vRange);
    objc_storeStrong(&v22->_minBatteryCapacity, capacity);
    objc_storeStrong(&v22->_currentBatteryCapacity, batteryCapacity);
    objc_storeStrong(&v22->_maxBatteryCapacity, maxBatteryCapacity);
    v25 = [argumentsCopy copy];
    consumptionArguments = v22->_consumptionArguments;
    v22->_consumptionArguments = v25;

    v27 = [chargingArgumentsCopy copy];
    chargingArguments = v22->_chargingArguments;
    v22->_chargingArguments = v27;

    v22->_isCharging = charging;
    v22->_activeConnector = connector;
  }

  return v22;
}

+ (id)_vehicleStateFromStorage:(id)storage
{
  v74 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  if (storageCopy)
  {
    v60 = [VGVehicleState alloc];
    identifier = [storageCopy identifier];
    v5 = [identifier copy];
    v6 = MEMORY[0x277CBEAA8];
    [storageCopy dateOfUpdate];
    v67 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
    origin = [storageCopy origin];
    v8 = origin;
    if (origin >= 3)
    {
      v10 = VGGetAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v69 = "VGVehicleStateOrigin VGVehicleStateOriginFromVGVehicleStateStorage_Origin(VGVehicleStateStorage_Origin)";
        v70 = 2080;
        v71 = "VGVehicleState.m";
        v72 = 1024;
        v73 = 184;
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (_vg_isInternalInstall())
      {
        v11 = VGGetAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138412290;
          v69 = callStackSymbols;
          _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v13 = VGGetPersistingLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v8];
        *buf = 138412290;
        v69 = v14;
        _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_ERROR, "Failed to load origin from protoOrigin: %@", buf, 0xCu);
      }

      v57 = 0;
    }

    else
    {
      v57 = origin;
    }

    hasBatteryPercentage = [storageCopy hasBatteryPercentage];
    if (hasBatteryPercentage)
    {
      v15 = MEMORY[0x277CCABB0];
      [storageCopy batteryPercentage];
      v66 = [v15 numberWithDouble:?];
    }

    else
    {
      v66 = 0;
    }

    hasCurrentEVRange = [storageCopy hasCurrentEVRange];
    if (hasCurrentEVRange)
    {
      v16 = objc_alloc(MEMORY[0x277CCAB10]);
      [storageCopy currentEVRange];
      v18 = v17;
      kilometers = [MEMORY[0x277CCAE20] kilometers];
      v65 = [v16 initWithDoubleValue:v18 unit:?];
    }

    else
    {
      v65 = 0;
    }

    hasMaxEVRange = [storageCopy hasMaxEVRange];
    if (hasMaxEVRange)
    {
      v19 = objc_alloc(MEMORY[0x277CCAB10]);
      [storageCopy maxEVRange];
      v21 = v20;
      kilometers2 = [MEMORY[0x277CCAE20] kilometers];
      v64 = [v19 initWithDoubleValue:v21 unit:?];
    }

    else
    {
      v64 = 0;
    }

    hasMinBatteryCapacity = [storageCopy hasMinBatteryCapacity];
    if (hasMinBatteryCapacity)
    {
      v22 = objc_alloc(MEMORY[0x277CCAB10]);
      [storageCopy minBatteryCapacity];
      v24 = v23;
      kilowattHours = [MEMORY[0x277CCADF8] kilowattHours];
      v63 = [v22 initWithDoubleValue:v24 unit:?];
    }

    else
    {
      v63 = 0;
    }

    hasCurrentBatteryCapacity = [storageCopy hasCurrentBatteryCapacity];
    if (hasCurrentBatteryCapacity)
    {
      v25 = objc_alloc(MEMORY[0x277CCAB10]);
      [storageCopy currentBatteryCapacity];
      v27 = v26;
      kilowattHours2 = [MEMORY[0x277CCADF8] kilowattHours];
      v62 = [v25 initWithDoubleValue:v27 unit:?];
    }

    else
    {
      v62 = 0;
    }

    hasMaxBatteryCapacity = [storageCopy hasMaxBatteryCapacity];
    v61 = v5;
    if (hasMaxBatteryCapacity)
    {
      v29 = objc_alloc(MEMORY[0x277CCAB10]);
      [storageCopy maxBatteryCapacity];
      v31 = v30;
      kilowattHours3 = [MEMORY[0x277CCADF8] kilowattHours];
      v32 = [v29 initWithDoubleValue:v31 unit:?];
    }

    else
    {
      v32 = 0;
    }

    consumptionArguments = [storageCopy consumptionArguments];
    v34 = [consumptionArguments copy];
    chargingArguments = [storageCopy chargingArguments];
    v36 = [chargingArguments copy];
    isCharging = [storageCopy isCharging];
    activeConnector = [storageCopy activeConnector];
    v39 = activeConnector;
    if (activeConnector >= 0xA)
    {
      v53 = identifier;
      v41 = VGGetAssertLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v69 = "VGChargingConnectorTypeOptions VGChargingConnectorTypeOptionsFromVGVehicleStateStorage_ConnectorType(VGVehicleStateStorage_ConnectorType)";
        v70 = 2080;
        v71 = "VGVehicleState.m";
        v72 = 1024;
        v73 = 138;
        _os_log_impl(&dword_270EC1000, v41, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (_vg_isInternalInstall())
      {
        v42 = VGGetAssertLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138412290;
          v69 = callStackSymbols2;
          _os_log_impl(&dword_270EC1000, v42, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v43 = VGGetPersistingLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v39];
        *buf = 138412290;
        v69 = v44;
        _os_log_impl(&dword_270EC1000, v43, OS_LOG_TYPE_ERROR, "Failed to load a single connector type from protoConnectorType: %@", buf, 0xCu);
      }

      v40 = 0;
      identifier = v53;
    }

    else
    {
      v40 = qword_270EF24B8[activeConnector];
    }

    LOBYTE(v46) = isCharging;
    v9 = [(VGVehicleState *)v60 initWithIdentifier:v61 dateOfUpdate:v67 origin:v57 batteryPercentage:v66 currentEVRange:v65 maxEVRange:v64 minBatteryCapacity:v63 currentBatteryCapacity:v62 maxBatteryCapacity:v32 consumptionArguments:v34 chargingArguments:v36 isCharging:v46 activeConnector:v40];

    if (hasMaxBatteryCapacity)
    {
    }

    if (hasCurrentBatteryCapacity)
    {
    }

    if (hasMinBatteryCapacity)
    {
    }

    if (hasMaxEVRange)
    {
    }

    if (hasCurrentEVRange)
    {
    }

    if (hasBatteryPercentage)
    {
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end