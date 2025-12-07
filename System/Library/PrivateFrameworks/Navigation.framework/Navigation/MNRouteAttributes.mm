@interface MNRouteAttributes
+ (void)_loadLPRRulesForWaypoints:(id)waypoints forceUpdate:(BOOL)update queue:(id)queue completion:(id)completion;
- (BOOL)shouldRetryForError:(id)error;
- (MNRouteAttributes)initWithAttributes:(id)attributes latLngs:(id)lngs isStepping:(BOOL)stepping;
- (MNRouteAttributes)initWithAttributes:(id)attributes waypoints:(id)waypoints;
- (MNRouteAttributes)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)vehicle;
- (void)_commonInit;
- (void)_loadRulesIfNecessaryWithVehicle:(id)vehicle queue:(id)queue finishedHandler:(id)handler;
- (void)_populateRouteAttributesWithVehicle:(id)vehicle finishedHandler:(id)handler;
- (void)_resolveSelectedVehicle:(id)vehicle;
- (void)_updateMiscOptions;
- (void)buildRouteAttributes:(id)attributes queue:(id)queue result:(id)result;
- (void)buildRouteAttributes:(id)attributes result:(id)result;
- (void)buildRouteAttributesForETAUpdateRequest:(id)request queue:(id)queue result:(id)result;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNRouteAttributes

- (BOOL)shouldRetryForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = GEOErrorDomain();
  if (![domain isEqualToString:v6])
  {

    goto LABEL_5;
  }

  code = [errorCopy code];

  if (code != -28)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = 1;
  self->_forceUpdate = 1;
  [(MNRouteAttributes *)self setHasResolvedRules:0];
LABEL_6:

  return v8;
}

- (void)buildRouteAttributesForETAUpdateRequest:(id)request queue:(id)queue result:(id)result
{
  queueCopy = queue;
  resultCopy = result;
  currentUserLocation = [request currentUserLocation];
  if (currentUserLocation)
  {
    if ([(NSArray *)self->_latLngs count])
    {
      firstObject = [(NSArray *)self->_latLngs firstObject];
      [firstObject coordinate];
      v12 = v11;
      v14 = v13;

      [currentUserLocation coordinate];
      if (vabdd_f64(v15, v12) >= 0.0001 || vabdd_f64(v16, v14) >= 0.0001)
      {
        v17 = [objc_alloc(MEMORY[0x1E69A1E50]) initWithCoordinate:{v15, v16}];
        v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_latLngs, "count")}];
        [(NSArray *)v18 addObject:v17];
        if ([(NSArray *)self->_latLngs count]>= 2)
        {
          v19 = 1;
          do
          {
            v20 = [(NSArray *)self->_latLngs objectAtIndexedSubscript:v19];
            [(NSArray *)v18 addObject:v20];

            ++v19;
          }

          while (v19 < [(NSArray *)self->_latLngs count]);
        }

        latLngs = self->_latLngs;
        self->_latLngs = v18;

        [(MNRouteAttributes *)self setHasResolvedRules:0];
      }
    }
  }

  [(MNRouteAttributes *)self buildRouteAttributes:queueCopy result:resultCopy];
}

- (void)buildRouteAttributes:(id)attributes result:(id)result
{
  v33 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  resultCopy = result;
  if (resultCopy)
  {
    if ([(MNRouteAttributes *)self mainTransportType])
    {
      v8 = MNGetMNRouteAttributesLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        mainTransportType = [(MNRouteAttributes *)self mainTransportType];
        if (mainTransportType >= 7)
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", mainTransportType];
        }

        else
        {
          v10 = off_1E842F2A0[mainTransportType];
        }

        formattedText = [(MNRouteAttributes *)self formattedText];
        *buf = 134218498;
        selfCopy2 = self;
        v27 = 2112;
        v28 = v10;
        v29 = 2112;
        *v30 = formattedText;
        _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "%p Requested updated route attributes for an unsupported transportType: %@, attributes:\n%@", buf, 0x20u);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke;
      block[3] = &unk_1E842F580;
      block[4] = self;
      v24 = resultCopy;
      dispatch_async(attributesCopy, block);
      v11 = v24;
    }

    else
    {
      v13 = +[MNCarPlayConnectionMonitor sharedInstance];
      v14 = MNGetMNRouteAttributesLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        formattedText2 = [(MNRouteAttributes *)self formattedText];
        *buf = 134218242;
        selfCopy2 = self;
        v27 = 2112;
        v28 = formattedText2;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "%p Requesting updated route attributes:\n%@", buf, 0x16u);
      }

      [(MNRouteAttributes *)self _updateMiscOptions];
      v11 = [[MNSequence alloc] initWithQueue:attributesCopy];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke_102;
      v22[3] = &unk_1E842F1D8;
      v22[4] = self;
      [(MNSequence *)v11 addStep:v22];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke_2;
      v20[3] = &unk_1E842F200;
      v20[4] = self;
      v21 = attributesCopy;
      [(MNSequence *)v11 addStep:v20];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke_3;
      v19[3] = &unk_1E842F228;
      v19[4] = self;
      [(MNSequence *)v11 addStep:v19];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke_4;
      v17[3] = &unk_1E842F250;
      v17[4] = self;
      v18 = resultCopy;
      [(MNSequence *)v11 addStep:v17];
      [(MNSequence *)v11 start];
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"defaultRouteAttributesForTransportType called without a handler"];
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      selfCopy2 = "[MNRouteAttributes buildRouteAttributes:result:]";
      v27 = 2080;
      v28 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/GEORouteAttributes+MNExtras.m";
      v29 = 1024;
      *v30 = 658;
      *&v30[4] = 2080;
      *&v30[6] = "result != nil";
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }
  }
}

void __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

void __49__MNRouteAttributes_buildRouteAttributes_result___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(*(a1 + 32) + 240);
  v7 = a3;
  v8 = [v6 combinedDisplayName];
  v9 = *(a1 + 32);
  v10 = *(v9 + 248);
  if (v10)
  {
    v11 = v10;
    goto LABEL_4;
  }

  v11 = *(v9 + 280);
  if (v11)
  {
LABEL_4:
    v12 = MNGetMNRouteAttributesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = [v5 formattedText];
      v17 = 134218754;
      v18 = v13;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "%p Error updating route attributes with vehicle %@. Error: %@.\nRoute attributes:\n%@", &v17, 0x2Au);
    }

    goto LABEL_9;
  }

  v12 = MNGetMNRouteAttributesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = [v5 formattedText];
    v17 = 134218498;
    v18 = v15;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_DEFAULT, "%p Used vehicle %@ to update route attributes:\n%@", &v17, 0x20u);
  }

  v11 = 0;
LABEL_9:

  (*(*(a1 + 40) + 16))();
  (*(v7 + 2))(v7, 0, 0);
}

- (void)buildRouteAttributes:(id)attributes queue:(id)queue result:(id)result
{
  v24 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  queueCopy = queue;
  resultCopy = result;
  if (resultCopy && ![(MNRouteAttributes *)self mainTransportType])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(attributesCopy, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = attributesCopy;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          bestLatLng = [*(*(&v19 + 1) + 8 * v16) bestLatLng];
          if (bestLatLng)
          {
            [(NSArray *)v11 addObject:bestLatLng];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    latLngs = self->_latLngs;
    self->_latLngs = v11;
  }

  [(MNRouteAttributes *)self buildRouteAttributes:queueCopy result:resultCopy, v19];
}

- (void)_populateRouteAttributesWithVehicle:(id)vehicle finishedHandler:(id)handler
{
  v160 = *MEMORY[0x1E69E9840];
  vehicleCopy = vehicle;
  handlerCopy = handler;
  v8 = [(MNRouteAttributes *)self copy];
  automobileOptions = [v8 automobileOptions];
  [automobileOptions setVehicleSpecifications:0];

  BOOL = GEOConfigGetBOOL();
  v11 = GEOConfigGetBOOL();
  if (self->_isStepping)
  {
    v12 = (v11 ^ 1) & BOOL;
  }

  else
  {
    v12 = 0;
  }

  v142 = vehicleCopy;
  if ([vehicleCopy isPureElectricVehicle] && (v12 & 1) == 0)
  {
    selfCopy = self;
    v134 = handlerCopy;
    v136 = v8;
    identifier = [vehicleCopy identifier];
    mEMORY[0x1E69DF8B8] = [MEMORY[0x1E69DF8B8] sharedService];
    [mEMORY[0x1E69DF8B8] setActiveVehicleIdentifier:identifier];

    v15 = objc_alloc_init(MEMORY[0x1E69A1D78]);
    currentVehicleState = [vehicleCopy currentVehicleState];
    consumptionArguments = [currentVehicleState consumptionArguments];
    v18 = [consumptionArguments copy];
    [v15 setConsumptionArguments:v18];

    currentVehicleState2 = [vehicleCopy currentVehicleState];
    chargingArguments = [currentVehicleState2 chargingArguments];
    v21 = [chargingArguments copy];
    [v15 setChargingArguments:v21];

    currentVehicleState3 = [vehicleCopy currentVehicleState];
    maxEVRange = [currentVehicleState3 maxEVRange];
    meters = [MEMORY[0x1E696B058] meters];
    v25 = [maxEVRange measurementByConvertingToUnit:meters];
    [v25 doubleValue];
    [v15 setMaxRange:v26];

    currentVehicleState4 = [vehicleCopy currentVehicleState];
    minBatteryCapacity = [currentVehicleState4 minBatteryCapacity];
    kilowattHours = [MEMORY[0x1E696B030] kilowattHours];
    v30 = [minBatteryCapacity measurementByConvertingToUnit:kilowattHours];
    [v30 doubleValue];
    [v15 setMinBatteryCharge:(v31 * 1000.0)];

    v32 = +[MNVirtualGarageManager sharedManager];
    LODWORD(minBatteryCapacity) = [v32 assumesFullCharge];

    currentVehicleState5 = [vehicleCopy currentVehicleState];
    v34 = currentVehicleState5;
    if (minBatteryCapacity)
    {
      maxBatteryCapacity = [currentVehicleState5 maxBatteryCapacity];
      kilowattHours2 = [MEMORY[0x1E696B030] kilowattHours];
      v37 = [maxBatteryCapacity measurementByConvertingToUnit:kilowattHours2];
      [v37 doubleValue];
      [v15 setCurrentBatteryCharge:(v38 * 1000.0)];

      displayedBatteryPercentage = 100;
    }

    else
    {
      currentBatteryCapacity = [currentVehicleState5 currentBatteryCapacity];
      kilowattHours3 = [MEMORY[0x1E696B030] kilowattHours];
      v42 = [currentBatteryCapacity measurementByConvertingToUnit:kilowattHours3];
      [v42 doubleValue];
      [v15 setCurrentBatteryCharge:(v43 * 1000.0)];

      displayedBatteryPercentage = [vehicleCopy displayedBatteryPercentage];
    }

    [v15 setCurrentBatteryPercentage:displayedBatteryPercentage];
    currentVehicleState6 = [vehicleCopy currentVehicleState];
    maxBatteryCapacity2 = [currentVehicleState6 maxBatteryCapacity];
    kilowattHours4 = [MEMORY[0x1E696B030] kilowattHours];
    v47 = [maxBatteryCapacity2 measurementByConvertingToUnit:kilowattHours4];
    [v47 doubleValue];
    [v15 setMaxBatteryCharge:(v48 * 1000.0)];

    currentVehicleState7 = [vehicleCopy currentVehicleState];
    dateOfUpdate = [currentVehicleState7 dateOfUpdate];
    [dateOfUpdate timeIntervalSinceReferenceDate];
    [v15 setLastSocUpdateDate:v51];

    currentVehicleState8 = [vehicleCopy currentVehicleState];
    [v15 setIsCharging:{objc_msgSend(currentVehicleState8, "isCharging")}];

    v53 = objc_alloc_init(MEMORY[0x1E69A1BE8]);
    [v15 setChargerPlugsInfo:v53];

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    powerByConnector = [vehicleCopy powerByConnector];
    v55 = [powerByConnector countByEnumeratingWithState:&v148 objects:v155 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v149;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v149 != v57)
          {
            objc_enumerationMutation(powerByConnector);
          }

          v59 = *(*(&v148 + 1) + 8 * i);
          [v59 unsignedIntegerValue];
          v60 = GEOEvChargingConnectorTypeFromVGConnectorType();
          if (v60)
          {
            v61 = v60;
            [v142 powerByConnector];
            v63 = v62 = v15;
            v64 = [v63 objectForKeyedSubscript:v59];

            v65 = objc_alloc_init(MEMORY[0x1E69A1BE0]);
            [v65 setType:v61];
            watts = [MEMORY[0x1E696B068] watts];
            v67 = [v64 measurementByConvertingToUnit:watts];
            [v67 doubleValue];
            [v65 setMaximumPower:v68];

            v15 = v62;
            chargerPlugsInfo = [v62 chargerPlugsInfo];
            [chargerPlugsInfo addSupportedChargerPlug:v65];
          }

          else
          {
            v64 = MNGetMNRouteAttributesLog();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = selfCopy;
              *&buf[12] = 2112;
              *&buf[14] = v59;
              _os_log_impl(&dword_1D311E000, v64, OS_LOG_TYPE_ERROR, "%p Skipping unknown VG connector: %@", buf, 0x16u);
            }
          }
        }

        v56 = [powerByConnector countByEnumeratingWithState:&v148 objects:v155 count:16];
      }

      while (v56);
    }

    _vehicleSpecifications = [v8 _vehicleSpecifications];
    [_vehicleSpecifications setEvInfo:v15];
    vehicleCopy = v142;
    if ([v142 usesPreferredNetworksForRouting])
    {
      v132 = _vehicleSpecifications;
      v138 = v15;
      v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      v147 = 0u;
      preferredChargingNetworks = [v142 preferredChargingNetworks];
      v73 = [preferredChargingNetworks countByEnumeratingWithState:&v144 objects:v154 count:16];
      if (v73)
      {
        v74 = v73;
        v75 = *v145;
        do
        {
          for (j = 0; j != v74; ++j)
          {
            if (*v145 != v75)
            {
              objc_enumerationMutation(preferredChargingNetworks);
            }

            v77 = *(*(&v144 + 1) + 8 * j);
            v78 = objc_alloc_init(MEMORY[0x1E69A1D70]);
            v79 = objc_alloc_init(MEMORY[0x1E69A23B8]);
            [v79 setChargingNetworkMuid:{objc_msgSend(v77, "globalBrandID")}];
            [v78 setPreferenceEntity:v79];
            [v78 setPreferenceType:1];
            [v71 addObject:v78];
          }

          v74 = [preferredChargingNetworks countByEnumeratingWithState:&v144 objects:v154 count:16];
        }

        while (v74);
      }

      v8 = v136;
      _userPreferences = [v136 _userPreferences];
      v81 = [v71 copy];
      [_userPreferences setEvChargingPreferences:v81];

      vehicleCopy = v142;
      v15 = v138;
      _vehicleSpecifications = v132;
    }

    handlerCopy = v134;
    self = selfCopy;
  }

  if ([(NSArray *)self->_lprRules count])
  {
    licensePlate = [vehicleCopy licensePlate];
    v83 = [licensePlate length];

    if (v83)
    {
      selfCopy2 = self;
      v84 = objc_alloc_init(MEMORY[0x1E69A1E48]);
      licensePlate2 = [vehicleCopy licensePlate];
      [v84 setLicensePlate:licensePlate2];

      lprVehicleType = [vehicleCopy lprVehicleType];
      [v84 setVehicleTypeKey:lprVehicleType];

      lprPowerType = [vehicleCopy lprPowerType];
      [v84 setPowerTypeKey:lprPowerType];

      v88 = GEOConfigGetDate();
      v137 = v8;
      v139 = v88;
      if (v88)
      {
        v89 = v88;
        v90 = MNGetMNRouteAttributesLog();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v89;
          _os_log_impl(&dword_1D311E000, v90, OS_LOG_TYPE_DEFAULT, "!!!IMPORTANT!!! The date for LPR masking has been overridden to %@ !!!IMPORTANT!!! ", buf, 0xCu);
        }

        localTimeZone = 0;
      }

      else
      {
        v89 = [MEMORY[0x1E695DF00] now];
        localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
      }

      v98 = [[MNLPRRuleMatcher alloc] initForVehicle:v84 withRules:selfCopy2->_lprRules];
      latLngs = selfCopy2->_latLngs;
      v143 = 0;
      v133 = v98;
      v135 = localTimeZone;
      v100 = [v98 generateMaskedPlateForWaypoints:latLngs date:v89 timeZone:localTimeZone error:&v143];
      v101 = v143;
      v102 = objc_alloc_init(MEMORY[0x1E69A1E28]);
      lprVehicleType2 = [v142 lprVehicleType];
      [v102 setVehicleTypeKey:lprVehicleType2];

      lprPowerType2 = [v142 lprPowerType];
      [v102 setPowerTypeKey:lprPowerType2];

      [v89 timeIntervalSinceReferenceDate];
      [v102 setTimestamp:v105];
      [v102 setMaskedplateGeneratorValidatorVersion:2];
      if (!selfCopy2->_forceUpdate)
      {
        mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
        if ([mEMORY[0x1E69A2398] isInternalInstall])
        {
          HasValue = _GEOConfigHasValue();

          if (HasValue)
          {
            v108 = GEOConfigGetString();
            v109 = [v108 dataUsingEncoding:4];
            [v102 setVersionId:v109];

            GEOConfigGetDouble();
            v111 = fmin(v110, 3600.0);
            if (v111 >= 0.1)
            {
              v131 = dispatch_time(0, (v111 * 1000000000.0));
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = ____scheduleDebugConfigKeyReset_block_invoke;
              v157 = &__block_descriptor_48_e5_v8__0l;
              v158 = 150;
              v159 = &NavigationConfig_LPRProvideBadVersion_DEBUG_Metadata;
              dispatch_after(v131, MEMORY[0x1E69E96A0], buf);
              if (!v101)
              {
LABEL_53:
                if (_GEOConfigHasValue())
                {
                  v114 = handlerCopy;
                  Integer = GEOConfigGetInteger();
                  v116 = MEMORY[0x1E696ABC0];
                  v152 = *MEMORY[0x1E695E618];
                  v153 = @"Error was generated by request of LPRMaskPlateFailureCode_DEBUG key";
                  v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
                  v101 = [v116 errorWithDomain:@"MapsNavLPRErrorDomain" code:Integer userInfo:v117];

                  GEOConfigGetDouble();
                  v119 = fmin(v118, 3600.0);
                  if (v119 >= 0.1)
                  {
                    v120 = dispatch_time(0, (v119 * 1000000000.0));
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&buf[16] = ____scheduleDebugConfigKeyReset_block_invoke;
                    v157 = &__block_descriptor_48_e5_v8__0l;
                    v158 = 151;
                    v159 = &NavigationConfig_LPRMaskPlateFailureCode_DEBUG_Metadata;
                    dispatch_after(v120, MEMORY[0x1E69E96A0], buf);
                  }

                  else
                  {
                    _GEOConfigRemoveValue();
                  }

                  handlerCopy = v114;
                }

                else
                {
                  v101 = 0;
                }
              }
            }

            else
            {
              _GEOConfigRemoveValue();
              if (!v101)
              {
                goto LABEL_53;
              }
            }

LABEL_59:
            _vehicleSpecifications2 = [v137 _vehicleSpecifications];
            if (![v100 length] || v101)
            {
              v122 = handlerCopy;
              v123 = MNGetMNRouteAttributesLog();
              if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218242;
                *&buf[4] = selfCopy2;
                *&buf[12] = 2112;
                *&buf[14] = v101;
                _os_log_impl(&dword_1D311E000, v123, OS_LOG_TYPE_ERROR, "%p Failed to mask license plate. Error: %@", buf, 0x16u);
              }

              domain = [v101 domain];
              v125 = [domain isEqualToString:@"MapsNavLPRErrorDomain"];

              handlerCopy = v122;
              if (v125)
              {
                if (([v101 code] + 12) > 2)
                {
                  v126 = 3;
                }

                else
                {
                  v126 = 2;
                }

                [_vehicleSpecifications2 setLprPlateMissingReason:v126];
              }
            }

            else
            {
              [v102 setLicensePlate:v100];
            }

            [_vehicleSpecifications2 setLprInfo:v102];

            vehicleCopy = v142;
            v8 = v137;
            goto LABEL_70;
          }
        }

        else
        {
        }
      }

      firstObject = [(NSArray *)selfCopy2->_lprRules firstObject];
      version = [firstObject version];
      [v102 setVersionId:version];

      if (!v101)
      {
        goto LABEL_53;
      }

      goto LABEL_59;
    }
  }

  if (!vehicleCopy)
  {
    v96 = +[MNVirtualGarageManager sharedManager];
    vehiclesCount = [v96 vehiclesCount];

    if (vehiclesCount)
    {
      _vehicleSpecifications3 = [v8 _vehicleSpecifications];
      v84 = _vehicleSpecifications3;
      v95 = 1;
      goto LABEL_43;
    }
  }

  if ([(MNRouteAttributes *)self hasResolvedRules])
  {
    if (![(NSArray *)self->_lprRules count])
    {
      licensePlate3 = [vehicleCopy licensePlate];
      v93 = [licensePlate3 length];

      if (v93)
      {
        _vehicleSpecifications3 = [v8 _vehicleSpecifications];
        v84 = _vehicleSpecifications3;
        v95 = 3;
LABEL_43:
        [_vehicleSpecifications3 setLprPlateMissingReason:v95];
LABEL_70:
      }
    }
  }

  v127 = objc_opt_new();
  v128 = +[MNCarPlayConnectionMonitor sharedInstance];
  [v127 setCarPlayConnectionStatus:{objc_msgSend(v128, "isConnected")}];

  v129 = +[MNVirtualGarageManager sharedManager];
  [v127 setIntentsConnectionStatus:{objc_msgSend(v129, "isProviderStarted")}];

  _vehicleSpecifications4 = [v8 _vehicleSpecifications];
  [_vehicleSpecifications4 setVehicleInfo:v127];

  handlerCopy[2](handlerCopy, v8, 1);
}

- (void)_loadRulesIfNecessaryWithVehicle:(id)vehicle queue:(id)queue finishedHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  vehicleCopy = vehicle;
  queueCopy = queue;
  handlerCopy = handler;
  licensePlate = [vehicleCopy licensePlate];
  if ([licensePlate length])
  {
    hasResolvedRules = [(MNRouteAttributes *)self hasResolvedRules];

    if (!hasResolvedRules)
    {
      v13 = MNGetMNRouteAttributesLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        licensePlate2 = [vehicleCopy licensePlate];
        *buf = 134218240;
        selfCopy2 = self;
        v27 = 1024;
        v28 = [licensePlate2 length];
        _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_INFO, "%p Will load rules for plate of %d chars length", buf, 0x12u);
      }

      latLngs = self->_latLngs;
      forceUpdate = self->_forceUpdate;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __76__MNRouteAttributes__loadRulesIfNecessaryWithVehicle_queue_finishedHandler___block_invoke;
      v22[3] = &unk_1E842F338;
      v22[4] = self;
      v24 = handlerCopy;
      v23 = vehicleCopy;
      [MNRouteAttributes _loadLPRRulesForWaypoints:latLngs forceUpdate:forceUpdate queue:queueCopy completion:v22];

      goto LABEL_12;
    }
  }

  else
  {
  }

  v17 = MNGetMNRouteAttributesLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    licensePlate3 = [vehicleCopy licensePlate];
    v19 = [licensePlate3 length];
    hasResolvedRules2 = [(MNRouteAttributes *)self hasResolvedRules];
    v21 = "NO";
    *buf = 134218498;
    selfCopy2 = self;
    if (hasResolvedRules2)
    {
      v21 = "YES";
    }

    v27 = 1024;
    v28 = v19;
    v29 = 2080;
    v30 = v21;
    _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_INFO, "%p Not loading rules plate is %d chars & hasResolvedRules: %s", buf, 0x1Cu);
  }

  (*(handlerCopy + 2))(handlerCopy, vehicleCopy, 1);
LABEL_12:
}

void __76__MNRouteAttributes__loadRulesIfNecessaryWithVehicle_queue_finishedHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 272);
  *(v7 + 272) = v5;
  v12 = v5;

  v9 = *(a1 + 32);
  v10 = *(v9 + 280);
  *(v9 + 280) = v6;
  v11 = v6;

  [*(a1 + 32) setHasResolvedRules:1];
  (*(*(a1 + 48) + 16))();
}

- (void)_resolveSelectedVehicle:(id)vehicle
{
  v12 = *MEMORY[0x1E69E9840];
  vehicleCopy = vehicle;
  v5 = MNGetMNRouteAttributesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "%p _resolveSelectedVehicle: calling into MNVirtualGarageManager to get selected vehicle", buf, 0xCu);
  }

  v6 = +[MNVirtualGarageManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__MNRouteAttributes__resolveSelectedVehicle___block_invoke;
  v8[3] = &unk_1E8430900;
  v8[4] = self;
  v9 = vehicleCopy;
  v7 = vehicleCopy;
  [v6 updatedVehicleStateWithHandler:v8];
}

void __45__MNRouteAttributes__resolveSelectedVehicle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  geo_isolate_sync();
  if (!v7 || v6)
  {
    if (v7 && [v7 isPureElectricVehicle])
    {
      [MEMORY[0x1E69A1598] captureUserAction:6094 target:0 value:0];
    }

    v12 = MNGetMNRouteAttributesLog();
    v9 = v12;
    if (v6)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        *buf = 134218242;
        v20 = v13;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "%p Error getting updated vehicle state when building route attributes: %@", buf, 0x16u);
      }

      v9 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:17 debugDescription:@"Failed to get virtual garage" underlyingError:v6];
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      *buf = 134217984;
      v20 = v16;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_INFO, "%p No vehicle selected in VirtualGarage when building route attributes.", buf, 0xCu);
    }
  }

  else
  {
    v8 = [v7 isPureElectricVehicle];
    v9 = MNGetMNRouteAttributesLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v10)
      {
        v11 = *(a1 + 32);
        *buf = 134218242;
        v20 = v11;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_INFO, "%p Got SoC of vehicle: %@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v14 = *(a1 + 32);
      v15 = [v7 displayName];
      if ([v15 length])
      {
        [v7 displayName];
      }

      else
      {
        [v7 licensePlate];
      }
      v17 = ;
      v18 = [v7 identifier];
      *buf = 134218498;
      v20 = v14;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_INFO, "%p Got selected vehicle: %@ | %@", buf, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __45__MNRouteAttributes__resolveSelectedVehicle___block_invoke_2(void *a1)
{
  if (a1[5])
  {
    v2 = 0;
  }

  else
  {
    v2 = a1[6];
  }

  objc_storeStrong((a1[4] + 240), v2);
  v3 = a1[5];
  v4 = (a1[4] + 248);

  objc_storeStrong(v4, v3);
}

- (void)_updateMiscOptions
{
  _automobileOptions = [(GEORouteAttributes *)self _automobileOptions];
  [_automobileOptions setOptoutIncidentReporting:GEOConfigGetBOOL() ^ 1];
}

void __41__MNRouteAttributes_setHasResolvedRules___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 264) != v2)
  {
    *(v1 + 264) = v2;
    v4 = MNGetMNRouteAttributesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = @"NO";
      if (*(a1 + 40))
      {
        v6 = @"YES";
      }

      v11 = 134218242;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "%p setHasResolvedRules: %@", &v11, 0x16u);
    }

    v7 = *(a1 + 32);
    if ((*(v7 + 264) & 1) == 0)
    {
      v8 = *(v7 + 272);
      *(v7 + 272) = 0;

      v9 = *(a1 + 32);
      v10 = *(v9 + 280);
      *(v9 + 280) = 0;
    }
  }
}

- (id)vehicle
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__11255;
  v8 = __Block_byref_object_dispose__11256;
  v9 = 0;
  geo_isolate_sync_data();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __28__MNRouteAttributes_vehicle__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 240) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (MNRouteAttributes)initWithAttributes:(id)attributes latLngs:(id)lngs isStepping:(BOOL)stepping
{
  attributesCopy = attributes;
  lngsCopy = lngs;
  v15.receiver = self;
  v15.super_class = MNRouteAttributes;
  v10 = [(MNRouteAttributes *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(MNRouteAttributes *)v10 _commonInit];
    if (attributesCopy)
    {
      [(MNRouteAttributes *)v11 mergeFrom:attributesCopy];
    }

    v12 = [lngsCopy copy];
    latLngs = v11->_latLngs;
    v11->_latLngs = v12;

    v11->_isStepping = stepping;
  }

  return v11;
}

- (MNRouteAttributes)initWithAttributes:(id)attributes waypoints:(id)waypoints
{
  v24 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  waypointsCopy = waypoints;
  firstObject = [waypointsCopy firstObject];
  isCurrentLocation = [firstObject isCurrentLocation];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(waypointsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = waypointsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        bestLatLng = [*(*(&v19 + 1) + 8 * v15) bestLatLng];
        if (bestLatLng)
        {
          [v10 addObject:bestLatLng];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [(MNRouteAttributes *)self initWithAttributes:attributesCopy latLngs:v10 isStepping:isCurrentLocation ^ 1u];
  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = MNRouteAttributes;
  v4 = [(MNRouteAttributes *)&v8 copyWithZone:zone];
  v5 = [(NSArray *)self->_latLngs copy];
  v6 = *(v4 + 28);
  *(v4 + 28) = v5;

  *(v4 + 233) = self->_isStepping;
  objc_storeStrong(v4 + 30, self->_vehicle);
  objc_storeStrong(v4 + 31, self->_vgError);
  objc_storeStrong(v4 + 34, self->_lprRules);
  *(v4 + 264) = self->_hasResolvedRules;
  objc_storeStrong(v4 + 35, self->_lprError);
  [v4 _commonInit];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MNRouteAttributes;
  coderCopy = coder;
  [(MNRouteAttributes *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_latLngs forKey:{@"LatLngs", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_isStepping forKey:@"IsStepping"];
}

- (void)_commonInit
{
  v3 = geo_isolater_create();
  vehicleIsolator = self->_vehicleIsolator;
  self->_vehicleIsolator = v3;
}

- (MNRouteAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MNRouteAttributes;
  v5 = [(MNRouteAttributes *)&v13 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(MNRouteAttributes *)v5 _commonInit];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"LatLngs"];
    latLngs = v6->_latLngs;
    v6->_latLngs = v10;

    v6->_isStepping = [coderCopy decodeBoolForKey:@"IsStepping"];
  }

  return v6;
}

+ (void)_loadLPRRulesForWaypoints:(id)waypoints forceUpdate:(BOOL)update queue:(id)queue completion:(id)completion
{
  updateCopy = update;
  v23 = *MEMORY[0x1E69E9840];
  waypointsCopy = waypoints;
  queueCopy = queue;
  completionCopy = completion;
  v13 = completionCopy;
  if (queueCopy && completionCopy)
  {
    if ([waypointsCopy count])
    {
      v14 = objc_alloc_init(MNLPRRuleHelper);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __76__MNRouteAttributes__loadLPRRulesForWaypoints_forceUpdate_queue_completion___block_invoke_2;
      v16[3] = &unk_1E842F178;
      selfCopy = self;
      v17 = v13;
      [(MNLPRRuleHelper *)v14 fetchRulesForWaypoints:waypointsCopy forceUpdateManifest:0 forceUpdateRules:updateCopy completionQueue:queueCopy completion:v16];
    }

    else
    {
      v15 = MNGetMNRouteAttributesLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_INFO, "%p No waypoints provided, not looking up lpr rules", buf, 0xCu);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__MNRouteAttributes__loadLPRRulesForWaypoints_forceUpdate_queue_completion___block_invoke;
      block[3] = &unk_1E842F150;
      v20 = v13;
      dispatch_async(queueCopy, block);
      v14 = v20;
    }
  }
}

void __76__MNRouteAttributes__loadLPRRulesForWaypoints_forceUpdate_queue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = MNGetMNRouteAttributesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v14 = 134218242;
      v15 = v9;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "%p Failed to get LPR rules. Error: %@", &v14, 0x16u);
    }

    v10 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:17 debugDescription:@"Failed to get LPR rules" underlyingError:v7];

    [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"EmptyRules"];
  }

  else
  {
    v10 = 0;
  }

  v11 = MNGetMNRouteAttributesLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    v13 = [v5 count];
    v14 = 134218240;
    v15 = v12;
    v16 = 1024;
    LODWORD(v17) = v13;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "%p Found %d lpr rule sets", &v14, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

@end