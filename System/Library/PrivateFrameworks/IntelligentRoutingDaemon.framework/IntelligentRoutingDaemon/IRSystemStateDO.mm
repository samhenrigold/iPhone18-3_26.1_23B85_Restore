@interface IRSystemStateDO
+ (IRSystemStateDO)systemStateDOWithAppInFocusBundleID:(id)d appInFocusWindowValid:(BOOL)valid deviceWiFiSSID:(id)iD locationSemanticUserSpecificPlaceType:(int)type locationSemanticLoiIdentifier:(id)identifier iCloudId:(id)id avInitialRouteSharingPolicy:(id)policy mediaRouteGroupLeaderOutputDeviceID:(id)self0 timeZoneSeconds:(int64_t)self1 outputDeviceName:(id)self2 outputDeviceType:(unint64_t)self3 outputDeviceSubType:(unint64_t)self4 predictedOutputDeviceName:(id)self5 predictedOutputDeviceType:(unint64_t)self6 predictedOutputDeviceSubType:(unint64_t)self7 appInFocusWindowScreenUnlockEvent:(BOOL)self8 pdrFenceActive:(BOOL)self9 latestPickerChoiceDate:(id)date isContinuityDisplay:(BOOL)display displayOn:(BOOL)on;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSystemStateDO:(id)o;
- (BOOL)isMiLoSupportedLocation;
- (IRSystemStateDO)initWithAppInFocusBundleID:(id)d appInFocusWindowValid:(BOOL)valid deviceWiFiSSID:(id)iD locationSemanticUserSpecificPlaceType:(int)type locationSemanticLoiIdentifier:(id)identifier iCloudId:(id)id avInitialRouteSharingPolicy:(id)policy mediaRouteGroupLeaderOutputDeviceID:(id)self0 timeZoneSeconds:(int64_t)self1 outputDeviceName:(id)self2 outputDeviceType:(unint64_t)self3 outputDeviceSubType:(unint64_t)self4 predictedOutputDeviceName:(id)self5 predictedOutputDeviceType:(unint64_t)self6 predictedOutputDeviceSubType:(unint64_t)self7 appInFocusWindowScreenUnlockEvent:(BOOL)self8 pdrFenceActive:(BOOL)self9 latestPickerChoiceDate:(id)date isContinuityDisplay:(BOOL)display displayOn:(BOOL)on;
- (IRSystemStateDO)initWithCoder:(id)coder;
- (id)copyWithReplacementAppInFocusBundleID:(id)d;
- (id)copyWithReplacementAppInFocusWindowScreenUnlockEvent:(BOOL)event;
- (id)copyWithReplacementAppInFocusWindowValid:(BOOL)valid;
- (id)copyWithReplacementAvInitialRouteSharingPolicy:(id)policy;
- (id)copyWithReplacementDeviceWiFiSSID:(id)d;
- (id)copyWithReplacementDisplayOn:(BOOL)on;
- (id)copyWithReplacementICloudId:(id)id;
- (id)copyWithReplacementIsContinuityDisplay:(BOOL)display;
- (id)copyWithReplacementLatestPickerChoiceDate:(id)date;
- (id)copyWithReplacementLocationSemanticLoiIdentifier:(id)identifier;
- (id)copyWithReplacementLocationSemanticUserSpecificPlaceType:(int)type;
- (id)copyWithReplacementMediaRouteGroupLeaderOutputDeviceID:(id)d;
- (id)copyWithReplacementOutputDeviceName:(id)name;
- (id)copyWithReplacementOutputDeviceSubType:(unint64_t)type;
- (id)copyWithReplacementOutputDeviceType:(unint64_t)type;
- (id)copyWithReplacementPdrFenceActive:(BOOL)active;
- (id)copyWithReplacementPredictedOutputDeviceName:(id)name;
- (id)copyWithReplacementPredictedOutputDeviceSubType:(unint64_t)type;
- (id)copyWithReplacementPredictedOutputDeviceType:(unint64_t)type;
- (id)copyWithReplacementTimeZoneSeconds:(int64_t)seconds;
- (id)description;
- (id)exportAsDictionary;
- (id)overrideSystemStateIfNeeded:(id)needed;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRSystemStateDO

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appInFocusBundleID hash];
  v4 = self->_appInFocusWindowValid - v3 + 32 * v3;
  v5 = [(NSString *)self->_deviceWiFiSSID hash];
  v6 = self->_locationSemanticUserSpecificPlaceType - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
  v7 = [(NSString *)self->_locationSemanticLoiIdentifier hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_iCloudId hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_avInitialRouteSharingPolicy hash]- v8 + 32 * v8;
  v10 = [(NSString *)self->_mediaRouteGroupLeaderOutputDeviceID hash];
  v11 = self->_timeZoneSeconds - (v10 - v9 + 32 * v9) + 32 * (v10 - v9 + 32 * v9);
  v12 = [(NSString *)self->_outputDeviceName hash];
  v13 = self->_outputDeviceType - (v12 - v11 + 32 * v11) + 32 * (v12 - v11 + 32 * v11);
  v14 = self->_outputDeviceSubType - v13 + 32 * v13;
  v15 = [(NSString *)self->_predictedOutputDeviceName hash];
  v16 = self->_predictedOutputDeviceType - (v15 - v14 + 32 * v14) + 32 * (v15 - v14 + 32 * v14);
  v17 = self->_appInFocusWindowScreenUnlockEvent - (self->_predictedOutputDeviceSubType - v16 + 32 * v16) + 32 * (self->_predictedOutputDeviceSubType - v16 + 32 * v16);
  v18 = self->_pdrFenceActive - v17 + 32 * v17;
  v19 = [(NSDate *)self->_latestPickerChoiceDate hash];
  v20 = self->_isContinuityDisplay - (v19 - v18 + 32 * v18) + 32 * (v19 - v18 + 32 * v18);
  return self->_displayOn - v20 + 32 * v20;
}

- (id)exportAsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  appInFocusBundleID = [(IRSystemStateDO *)self appInFocusBundleID];
  if (appInFocusBundleID)
  {
    appInFocusBundleID2 = [(IRSystemStateDO *)self appInFocusBundleID];
    [v3 setObject:appInFocusBundleID2 forKeyedSubscript:@"appInFocusBundleID"];
  }

  else
  {
    [v3 setObject:&stru_286755D18 forKeyedSubscript:@"appInFocusBundleID"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRSystemStateDO appInFocusWindowValid](self, "appInFocusWindowValid")}];
  [v3 setObject:v6 forKeyedSubscript:@"appInFocusWindowValid"];

  deviceWiFiSSID = [(IRSystemStateDO *)self deviceWiFiSSID];
  if (deviceWiFiSSID)
  {
    deviceWiFiSSID2 = [(IRSystemStateDO *)self deviceWiFiSSID];
    [v3 setObject:deviceWiFiSSID2 forKeyedSubscript:@"deviceWiFiSSID"];
  }

  else
  {
    [v3 setObject:&stru_286755D18 forKeyedSubscript:@"deviceWiFiSSID"];
  }

  v9 = IRLocationSemanticUserSpecificPlaceTypeToString([(IRSystemStateDO *)self locationSemanticUserSpecificPlaceType]);
  [v3 setObject:v9 forKeyedSubscript:@"locationSemanticUserSpecificPlaceType"];

  locationSemanticLoiIdentifier = [(IRSystemStateDO *)self locationSemanticLoiIdentifier];
  if (locationSemanticLoiIdentifier)
  {
    locationSemanticLoiIdentifier2 = [(IRSystemStateDO *)self locationSemanticLoiIdentifier];
    [v3 setObject:locationSemanticLoiIdentifier2 forKeyedSubscript:@"locationSemanticLoiIdentifier"];
  }

  else
  {
    [v3 setObject:&stru_286755D18 forKeyedSubscript:@"locationSemanticLoiIdentifier"];
  }

  avInitialRouteSharingPolicy = [(IRSystemStateDO *)self avInitialRouteSharingPolicy];
  if (avInitialRouteSharingPolicy)
  {
    avInitialRouteSharingPolicy2 = [(IRSystemStateDO *)self avInitialRouteSharingPolicy];
    [v3 setObject:avInitialRouteSharingPolicy2 forKeyedSubscript:@"avInitialRouteSharingPolicy"];
  }

  else
  {
    [v3 setObject:&stru_286755D18 forKeyedSubscript:@"avInitialRouteSharingPolicy"];
  }

  iCloudId = [(IRSystemStateDO *)self iCloudId];
  if (iCloudId)
  {
    iCloudId2 = [(IRSystemStateDO *)self iCloudId];
    [v3 setObject:iCloudId2 forKeyedSubscript:@"iCloudId"];
  }

  else
  {
    [v3 setObject:&stru_286755D18 forKeyedSubscript:@"iCloudId"];
  }

  mediaRouteGroupLeaderOutputDeviceID = [(IRSystemStateDO *)self mediaRouteGroupLeaderOutputDeviceID];
  if (mediaRouteGroupLeaderOutputDeviceID)
  {
    mediaRouteGroupLeaderOutputDeviceID2 = [(IRSystemStateDO *)self mediaRouteGroupLeaderOutputDeviceID];
    [v3 setObject:mediaRouteGroupLeaderOutputDeviceID2 forKeyedSubscript:@"mediaRouteGroupLeaderOutputDeviceID"];
  }

  else
  {
    [v3 setObject:&stru_286755D18 forKeyedSubscript:@"mediaRouteGroupLeaderOutputDeviceID"];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[IRSystemStateDO timeZoneSeconds](self, "timeZoneSeconds")}];
  [v3 setObject:v18 forKeyedSubscript:@"timeZoneSeconds"];

  outputDeviceName = [(IRSystemStateDO *)self outputDeviceName];
  [v3 setObject:outputDeviceName forKeyedSubscript:@"outputDeviceName"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IRSystemStateDO outputDeviceType](self, "outputDeviceType")}];
  [v3 setObject:v20 forKeyedSubscript:@"outputDeviceType"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IRSystemStateDO outputDeviceSubType](self, "outputDeviceSubType")}];
  [v3 setObject:v21 forKeyedSubscript:@"outputDeviceSubType"];

  predictedOutputDeviceName = [(IRSystemStateDO *)self predictedOutputDeviceName];
  [v3 setObject:predictedOutputDeviceName forKeyedSubscript:@"predictedOutputDeviceName"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IRSystemStateDO predictedOutputDeviceType](self, "predictedOutputDeviceType")}];
  [v3 setObject:v23 forKeyedSubscript:@"predictedOutputDeviceType"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IRSystemStateDO predictedOutputDeviceSubType](self, "predictedOutputDeviceSubType")}];
  [v3 setObject:v24 forKeyedSubscript:@"predictedOutputDeviceSubType"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRSystemStateDO appInFocusWindowScreenUnlockEvent](self, "appInFocusWindowScreenUnlockEvent")}];
  [v3 setObject:v25 forKeyedSubscript:@"appInFocusWindowScreenUnlockEvent"];

  return v3;
}

- (BOOL)isMiLoSupportedLocation
{
  locationSemanticUserSpecificPlaceType = [(IRSystemStateDO *)self locationSemanticUserSpecificPlaceType];
  if (locationSemanticUserSpecificPlaceType != 1)
  {
    LOBYTE(locationSemanticUserSpecificPlaceType) = [(IRSystemStateDO *)self locationSemanticUserSpecificPlaceType]== 5;
  }

  return locationSemanticUserSpecificPlaceType;
}

- (id)overrideSystemStateIfNeeded:(id)needed
{
  neededCopy = needed;
  v30 = [IRSystemStateDO alloc];
  appInFocusBundleID = [(IRSystemStateDO *)self appInFocusBundleID];
  appInFocusWindowValid = [(IRSystemStateDO *)self appInFocusWindowValid];
  deviceWiFiSSID = [(IRSystemStateDO *)self deviceWiFiSSID];
  locationSemanticUserSpecificPlaceType = [(IRSystemStateDO *)self locationSemanticUserSpecificPlaceType];
  locationSemanticLoiIdentifier = [(IRSystemStateDO *)self locationSemanticLoiIdentifier];
  iCloudId = [(IRSystemStateDO *)self iCloudId];
  avInitialRouteSharingPolicy = [(IRSystemStateDO *)self avInitialRouteSharingPolicy];
  mediaRouteGroupLeaderOutputDeviceID = [(IRSystemStateDO *)self mediaRouteGroupLeaderOutputDeviceID];
  timeZoneSeconds = [(IRSystemStateDO *)self timeZoneSeconds];
  outputDeviceName = [(IRSystemStateDO *)self outputDeviceName];
  outputDeviceType = [(IRSystemStateDO *)self outputDeviceType];
  outputDeviceSubType = [(IRSystemStateDO *)self outputDeviceSubType];
  predictedOutputDeviceName = [(IRSystemStateDO *)self predictedOutputDeviceName];
  predictedOutputDeviceType = [(IRSystemStateDO *)self predictedOutputDeviceType];
  predictedOutputDeviceSubType = [(IRSystemStateDO *)self predictedOutputDeviceSubType];
  appInFocusWindowScreenUnlockEvent = [(IRSystemStateDO *)self appInFocusWindowScreenUnlockEvent];
  pdrFenceActive = [(IRSystemStateDO *)self pdrFenceActive];
  latestPickerChoiceDate = [(IRSystemStateDO *)self latestPickerChoiceDate];
  isContinuityDisplay = [(IRSystemStateDO *)self isContinuityDisplay];
  BYTE1(v19) = [(IRSystemStateDO *)self displayOn];
  LOBYTE(v19) = isContinuityDisplay;
  BYTE1(v18) = pdrFenceActive;
  LOBYTE(v18) = appInFocusWindowScreenUnlockEvent;
  v31 = [IRSystemStateDO initWithAppInFocusBundleID:v30 appInFocusWindowValid:"initWithAppInFocusBundleID:appInFocusWindowValid:deviceWiFiSSID:locationSemanticUserSpecificPlaceType:locationSemanticLoiIdentifier:iCloudId:avInitialRouteSharingPolicy:mediaRouteGroupLeaderOutputDeviceID:timeZoneSeconds:outputDeviceName:outputDeviceType:outputDeviceSubType:predictedOutputDeviceName:predictedOutputDeviceType:predictedOutputDeviceSubType:appInFocusWindowScreenUnlockEvent:pdrFenceActive:latestPickerChoiceDate:isContinuityDisplay:displayOn:" deviceWiFiSSID:appInFocusBundleID locationSemanticUserSpecificPlaceType:appInFocusWindowValid locationSemanticLoiIdentifier:deviceWiFiSSID iCloudId:locationSemanticUserSpecificPlaceType avInitialRouteSharingPolicy:locationSemanticLoiIdentifier mediaRouteGroupLeaderOutputDeviceID:iCloudId timeZoneSeconds:avInitialRouteSharingPolicy outputDeviceName:mediaRouteGroupLeaderOutputDeviceID outputDeviceType:timeZoneSeconds outputDeviceSubType:outputDeviceName predictedOutputDeviceName:outputDeviceType predictedOutputDeviceType:outputDeviceSubType predictedOutputDeviceSubType:predictedOutputDeviceName appInFocusWindowScreenUnlockEvent:predictedOutputDeviceType pdrFenceActive:predictedOutputDeviceSubType latestPickerChoiceDate:v18 isContinuityDisplay:latestPickerChoiceDate displayOn:v19];

  if (neededCopy)
  {
    if ([neededCopy overrideAppInFocusWindow])
    {
      v13 = [(IRSystemStateDO *)v31 copyWithReplacementAppInFocusWindowValid:1];
    }

    else
    {
      v13 = v31;
    }

    overrideBundleId = [neededCopy overrideBundleId];

    if (overrideBundleId)
    {
      overrideBundleId2 = [neededCopy overrideBundleId];
      v16 = [v13 copyWithReplacementAppInFocusBundleID:overrideBundleId2];

      v13 = v16;
    }
  }

  else
  {
    v13 = v31;
  }

  return v13;
}

- (IRSystemStateDO)initWithAppInFocusBundleID:(id)d appInFocusWindowValid:(BOOL)valid deviceWiFiSSID:(id)iD locationSemanticUserSpecificPlaceType:(int)type locationSemanticLoiIdentifier:(id)identifier iCloudId:(id)id avInitialRouteSharingPolicy:(id)policy mediaRouteGroupLeaderOutputDeviceID:(id)self0 timeZoneSeconds:(int64_t)self1 outputDeviceName:(id)self2 outputDeviceType:(unint64_t)self3 outputDeviceSubType:(unint64_t)self4 predictedOutputDeviceName:(id)self5 predictedOutputDeviceType:(unint64_t)self6 predictedOutputDeviceSubType:(unint64_t)self7 appInFocusWindowScreenUnlockEvent:(BOOL)self8 pdrFenceActive:(BOOL)self9 latestPickerChoiceDate:(id)date isContinuityDisplay:(BOOL)display displayOn:(BOOL)on
{
  dCopy = d;
  obj = iD;
  iDCopy = iD;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  idCopy = id;
  policyCopy = policy;
  deviceIDCopy = deviceID;
  nameCopy = name;
  deviceNameCopy = deviceName;
  dateCopy = date;
  v43.receiver = self;
  v43.super_class = IRSystemStateDO;
  v32 = [(IRSystemStateDO *)&v43 init];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_appInFocusBundleID, d);
    v33->_appInFocusWindowValid = valid;
    objc_storeStrong(&v33->_deviceWiFiSSID, obj);
    v33->_locationSemanticUserSpecificPlaceType = type;
    objc_storeStrong(&v33->_locationSemanticLoiIdentifier, identifierCopy);
    objc_storeStrong(&v33->_iCloudId, id);
    objc_storeStrong(&v33->_avInitialRouteSharingPolicy, policy);
    objc_storeStrong(&v33->_mediaRouteGroupLeaderOutputDeviceID, deviceID);
    v33->_timeZoneSeconds = seconds;
    objc_storeStrong(&v33->_outputDeviceName, name);
    v33->_outputDeviceType = deviceType;
    v33->_outputDeviceSubType = subType;
    objc_storeStrong(&v33->_predictedOutputDeviceName, deviceName);
    v33->_predictedOutputDeviceType = outputDeviceType;
    v33->_predictedOutputDeviceSubType = deviceSubType;
    v33->_appInFocusWindowScreenUnlockEvent = event;
    v33->_pdrFenceActive = active;
    objc_storeStrong(&v33->_latestPickerChoiceDate, date);
    v33->_isContinuityDisplay = display;
    v33->_displayOn = on;
  }

  return v33;
}

+ (IRSystemStateDO)systemStateDOWithAppInFocusBundleID:(id)d appInFocusWindowValid:(BOOL)valid deviceWiFiSSID:(id)iD locationSemanticUserSpecificPlaceType:(int)type locationSemanticLoiIdentifier:(id)identifier iCloudId:(id)id avInitialRouteSharingPolicy:(id)policy mediaRouteGroupLeaderOutputDeviceID:(id)self0 timeZoneSeconds:(int64_t)self1 outputDeviceName:(id)self2 outputDeviceType:(unint64_t)self3 outputDeviceSubType:(unint64_t)self4 predictedOutputDeviceName:(id)self5 predictedOutputDeviceType:(unint64_t)self6 predictedOutputDeviceSubType:(unint64_t)self7 appInFocusWindowScreenUnlockEvent:(BOOL)self8 pdrFenceActive:(BOOL)self9 latestPickerChoiceDate:(id)date isContinuityDisplay:(BOOL)display displayOn:(BOOL)on
{
  validCopy = valid;
  dateCopy = date;
  deviceNameCopy = deviceName;
  nameCopy = name;
  deviceIDCopy = deviceID;
  policyCopy = policy;
  idCopy = id;
  identifierCopy = identifier;
  iDCopy = iD;
  dCopy = d;
  LOWORD(v38) = __PAIR16__(on, display);
  LOWORD(v37) = __PAIR16__(active, event);
  v35 = [[self alloc] initWithAppInFocusBundleID:dCopy appInFocusWindowValid:validCopy deviceWiFiSSID:iDCopy locationSemanticUserSpecificPlaceType:type locationSemanticLoiIdentifier:identifierCopy iCloudId:idCopy avInitialRouteSharingPolicy:policyCopy mediaRouteGroupLeaderOutputDeviceID:deviceIDCopy timeZoneSeconds:seconds outputDeviceName:nameCopy outputDeviceType:deviceType outputDeviceSubType:subType predictedOutputDeviceName:deviceNameCopy predictedOutputDeviceType:outputDeviceType predictedOutputDeviceSubType:deviceSubType appInFocusWindowScreenUnlockEvent:v37 pdrFenceActive:dateCopy latestPickerChoiceDate:v38 isContinuityDisplay:? displayOn:?];

  return v35;
}

- (id)copyWithReplacementAppInFocusBundleID:(id)d
{
  dCopy = d;
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v9) = *&self->_isContinuityDisplay;
  LOWORD(v8) = *&self->_appInFocusWindowScreenUnlockEvent;
  v6 = [v5 initWithAppInFocusBundleID:dCopy appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v8 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v9 isContinuityDisplay:? displayOn:?];

  return v6;
}

- (id)copyWithReplacementAppInFocusWindowValid:(BOOL)valid
{
  validCopy = valid;
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v8) = *&self->_isContinuityDisplay;
  LOWORD(v7) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:validCopy deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v8 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementDeviceWiFiSSID:(id)d
{
  dCopy = d;
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v9) = *&self->_isContinuityDisplay;
  LOWORD(v8) = *&self->_appInFocusWindowScreenUnlockEvent;
  v6 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:dCopy locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v8 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v9 isContinuityDisplay:? displayOn:?];

  return v6;
}

- (id)copyWithReplacementLocationSemanticUserSpecificPlaceType:(int)type
{
  v3 = *&type;
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v8) = *&self->_isContinuityDisplay;
  LOWORD(v7) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:v3 locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v8 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementLocationSemanticLoiIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v9) = *&self->_isContinuityDisplay;
  LOWORD(v8) = *&self->_appInFocusWindowScreenUnlockEvent;
  v6 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:identifierCopy iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v8 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v9 isContinuityDisplay:? displayOn:?];

  return v6;
}

- (id)copyWithReplacementICloudId:(id)id
{
  idCopy = id;
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v9) = *&self->_isContinuityDisplay;
  LOWORD(v8) = *&self->_appInFocusWindowScreenUnlockEvent;
  v6 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:idCopy avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v8 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v9 isContinuityDisplay:? displayOn:?];

  return v6;
}

- (id)copyWithReplacementAvInitialRouteSharingPolicy:(id)policy
{
  policyCopy = policy;
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v9) = *&self->_isContinuityDisplay;
  LOWORD(v8) = *&self->_appInFocusWindowScreenUnlockEvent;
  v6 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:policyCopy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v8 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v9 isContinuityDisplay:? displayOn:?];

  return v6;
}

- (id)copyWithReplacementMediaRouteGroupLeaderOutputDeviceID:(id)d
{
  dCopy = d;
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v9) = *&self->_isContinuityDisplay;
  LOWORD(v8) = *&self->_appInFocusWindowScreenUnlockEvent;
  v6 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:dCopy timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v8 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v9 isContinuityDisplay:? displayOn:?];

  return v6;
}

- (id)copyWithReplacementTimeZoneSeconds:(int64_t)seconds
{
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v8) = *&self->_isContinuityDisplay;
  LOWORD(v7) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:seconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v8 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementOutputDeviceName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v9) = *&self->_isContinuityDisplay;
  LOWORD(v8) = *&self->_appInFocusWindowScreenUnlockEvent;
  v6 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:nameCopy outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v8 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v9 isContinuityDisplay:? displayOn:?];

  return v6;
}

- (id)copyWithReplacementOutputDeviceType:(unint64_t)type
{
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v8) = *&self->_isContinuityDisplay;
  LOWORD(v7) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:type outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v8 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementOutputDeviceSubType:(unint64_t)type
{
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v8) = *&self->_isContinuityDisplay;
  LOWORD(v7) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:type predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v8 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementPredictedOutputDeviceName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v9) = *&self->_isContinuityDisplay;
  LOWORD(v8) = *&self->_appInFocusWindowScreenUnlockEvent;
  v6 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:nameCopy predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v8 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v9 isContinuityDisplay:? displayOn:?];

  return v6;
}

- (id)copyWithReplacementPredictedOutputDeviceType:(unint64_t)type
{
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v8) = *&self->_isContinuityDisplay;
  LOWORD(v7) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:type predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v8 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementPredictedOutputDeviceSubType:(unint64_t)type
{
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v8) = *&self->_isContinuityDisplay;
  LOWORD(v7) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:type appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v8 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementAppInFocusWindowScreenUnlockEvent:(BOOL)event
{
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v8) = *&self->_isContinuityDisplay;
  BYTE1(v7) = self->_pdrFenceActive;
  LOBYTE(v7) = event;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v8 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementPdrFenceActive:(BOOL)active
{
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v8) = *&self->_isContinuityDisplay;
  BYTE1(v7) = active;
  LOBYTE(v7) = self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v8 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementLatestPickerChoiceDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc(objc_opt_class());
  LOWORD(v9) = *&self->_isContinuityDisplay;
  LOWORD(v8) = *&self->_appInFocusWindowScreenUnlockEvent;
  v6 = [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v8 pdrFenceActive:dateCopy latestPickerChoiceDate:v9 isContinuityDisplay:? displayOn:?];

  return v6;
}

- (id)copyWithReplacementIsContinuityDisplay:(BOOL)display
{
  v5 = objc_alloc(objc_opt_class());
  BYTE1(v8) = self->_displayOn;
  LOBYTE(v8) = display;
  LOWORD(v7) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v8 isContinuityDisplay:? displayOn:?];
}

- (id)copyWithReplacementDisplayOn:(BOOL)on
{
  v5 = objc_alloc(objc_opt_class());
  BYTE1(v8) = on;
  LOBYTE(v8) = self->_isContinuityDisplay;
  LOWORD(v7) = *&self->_appInFocusWindowScreenUnlockEvent;
  return [v5 initWithAppInFocusBundleID:self->_appInFocusBundleID appInFocusWindowValid:self->_appInFocusWindowValid deviceWiFiSSID:self->_deviceWiFiSSID locationSemanticUserSpecificPlaceType:self->_locationSemanticUserSpecificPlaceType locationSemanticLoiIdentifier:self->_locationSemanticLoiIdentifier iCloudId:self->_iCloudId avInitialRouteSharingPolicy:self->_avInitialRouteSharingPolicy mediaRouteGroupLeaderOutputDeviceID:self->_mediaRouteGroupLeaderOutputDeviceID timeZoneSeconds:self->_timeZoneSeconds outputDeviceName:self->_outputDeviceName outputDeviceType:self->_outputDeviceType outputDeviceSubType:self->_outputDeviceSubType predictedOutputDeviceName:self->_predictedOutputDeviceName predictedOutputDeviceType:self->_predictedOutputDeviceType predictedOutputDeviceSubType:self->_predictedOutputDeviceSubType appInFocusWindowScreenUnlockEvent:v7 pdrFenceActive:self->_latestPickerChoiceDate latestPickerChoiceDate:v8 isContinuityDisplay:? displayOn:?];
}

- (BOOL)isEqualToSystemStateDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (oCopy
    && (v6 = self->_appInFocusBundleID == 0, [oCopy appInFocusBundleID], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 != v8)
    && ((appInFocusBundleID = self->_appInFocusBundleID) == 0 || ([v5 appInFocusBundleID], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](appInFocusBundleID, "isEqual:", v10), v10, v11))
    && (appInFocusWindowValid = self->_appInFocusWindowValid, appInFocusWindowValid == [v5 appInFocusWindowValid])
    && (v13 = self->_deviceWiFiSSID == 0, [v5 deviceWiFiSSID], v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 != 0, v14, v13 != v15)
    && ((deviceWiFiSSID = self->_deviceWiFiSSID) == 0 || ([v5 deviceWiFiSSID], v17 = objc_claimAutoreleasedReturnValue(), v18 = -[NSString isEqual:](deviceWiFiSSID, "isEqual:", v17), v17, v18))
    && (locationSemanticUserSpecificPlaceType = self->_locationSemanticUserSpecificPlaceType, locationSemanticUserSpecificPlaceType == [v5 locationSemanticUserSpecificPlaceType])
    && (v20 = self->_locationSemanticLoiIdentifier == 0, [v5 locationSemanticLoiIdentifier], v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 != 0, v21, v20 != v22)
    && ((locationSemanticLoiIdentifier = self->_locationSemanticLoiIdentifier) == 0 || ([v5 locationSemanticLoiIdentifier], v24 = objc_claimAutoreleasedReturnValue(), v25 = -[NSString isEqual:](locationSemanticLoiIdentifier, "isEqual:", v24), v24, v25))
    && (v26 = self->_iCloudId == 0, [v5 iCloudId], v27 = objc_claimAutoreleasedReturnValue(), v28 = v27 != 0, v27, v26 != v28)
    && ((iCloudId = self->_iCloudId) == 0 || ([v5 iCloudId], v30 = objc_claimAutoreleasedReturnValue(), v31 = -[NSString isEqual:](iCloudId, "isEqual:", v30), v30, v31))
    && (v32 = self->_avInitialRouteSharingPolicy == 0, [v5 avInitialRouteSharingPolicy], v33 = objc_claimAutoreleasedReturnValue(), v34 = v33 != 0, v33, v32 != v34)
    && ((avInitialRouteSharingPolicy = self->_avInitialRouteSharingPolicy) == 0 || ([v5 avInitialRouteSharingPolicy], v36 = objc_claimAutoreleasedReturnValue(), v37 = -[NSString isEqual:](avInitialRouteSharingPolicy, "isEqual:", v36), v36, v37))
    && (v38 = self->_mediaRouteGroupLeaderOutputDeviceID == 0, [v5 mediaRouteGroupLeaderOutputDeviceID], v39 = objc_claimAutoreleasedReturnValue(), v40 = v39 != 0, v39, v38 != v40)
    && ((mediaRouteGroupLeaderOutputDeviceID = self->_mediaRouteGroupLeaderOutputDeviceID) == 0 || ([v5 mediaRouteGroupLeaderOutputDeviceID], v42 = objc_claimAutoreleasedReturnValue(), v43 = -[NSString isEqual:](mediaRouteGroupLeaderOutputDeviceID, "isEqual:", v42), v42, v43))
    && (timeZoneSeconds = self->_timeZoneSeconds, timeZoneSeconds == [v5 timeZoneSeconds])
    && (v45 = self->_outputDeviceName == 0, [v5 outputDeviceName], v46 = objc_claimAutoreleasedReturnValue(), v47 = v46 != 0, v46, v45 != v47)
    && ((outputDeviceName = self->_outputDeviceName) == 0 || ([v5 outputDeviceName], v49 = objc_claimAutoreleasedReturnValue(), v50 = -[NSString isEqual:](outputDeviceName, "isEqual:", v49), v49, v50))
    && (outputDeviceType = self->_outputDeviceType, outputDeviceType == [v5 outputDeviceType])
    && (outputDeviceSubType = self->_outputDeviceSubType, outputDeviceSubType == [v5 outputDeviceSubType])
    && (v53 = self->_predictedOutputDeviceName == 0, [v5 predictedOutputDeviceName], v54 = objc_claimAutoreleasedReturnValue(), v55 = v54 != 0, v54, v53 != v55)
    && ((predictedOutputDeviceName = self->_predictedOutputDeviceName) == 0 || ([v5 predictedOutputDeviceName], v57 = objc_claimAutoreleasedReturnValue(), v58 = -[NSString isEqual:](predictedOutputDeviceName, "isEqual:", v57), v57, v58))
    && (predictedOutputDeviceType = self->_predictedOutputDeviceType, predictedOutputDeviceType == [v5 predictedOutputDeviceType])
    && (predictedOutputDeviceSubType = self->_predictedOutputDeviceSubType, predictedOutputDeviceSubType == [v5 predictedOutputDeviceSubType])
    && (appInFocusWindowScreenUnlockEvent = self->_appInFocusWindowScreenUnlockEvent, appInFocusWindowScreenUnlockEvent == [v5 appInFocusWindowScreenUnlockEvent])
    && (pdrFenceActive = self->_pdrFenceActive, pdrFenceActive == [v5 pdrFenceActive])
    && (v63 = self->_latestPickerChoiceDate == 0, [v5 latestPickerChoiceDate], v64 = objc_claimAutoreleasedReturnValue(), v65 = v64 != 0, v64, v63 != v65)
    && ((latestPickerChoiceDate = self->_latestPickerChoiceDate) == 0 || ([v5 latestPickerChoiceDate], v67 = objc_claimAutoreleasedReturnValue(), v68 = -[NSDate isEqual:](latestPickerChoiceDate, "isEqual:", v67), v67, v68))
    && (isContinuityDisplay = self->_isContinuityDisplay, isContinuityDisplay == [v5 isContinuityDisplay]))
  {
    displayOn = self->_displayOn;
    v71 = displayOn == [v5 displayOn];
  }

  else
  {
    v71 = 0;
  }

  return v71;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRSystemStateDO *)self isEqualToSystemStateDO:v5];
  }

  return v6;
}

- (IRSystemStateDO)initWithCoder:(id)coder
{
  v155[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appInFocusBundleID"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key appInFocusBundleID (expected %@, decoded %@)", v7, v9, 0];
      v154 = *MEMORY[0x277CCA450];
      v155[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v155 forKeys:&v154 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v11];
      [coderCopy failWithError:v12];

LABEL_4:
      selfCopy = 0;
LABEL_39:

      goto LABEL_40;
    }
  }

  else
  {
    error = [coderCopy error];

    if (error)
    {
      goto LABEL_12;
    }
  }

  v15 = [coderCopy decodeInt64ForKey:@"appInFocusWindowValid"];
  if (v15)
  {
    goto LABEL_7;
  }

  error2 = [coderCopy error];

  if (!error2)
  {
    if (([coderCopy containsValueForKey:@"appInFocusWindowValid"] & 1) == 0)
    {
      v152 = *MEMORY[0x277CCA450];
      v153 = @"Missing serialized value for IRSystemStateDO.appInFocusWindowValid";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
      v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v7];
      [coderCopy failWithError:v9];
      goto LABEL_4;
    }

LABEL_7:
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceWiFiSSID"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = objc_opt_class();
        v9 = NSStringFromClass(v16);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key deviceWiFiSSID (expected %@, decoded %@)", v9, v18, 0];
        v150 = *MEMORY[0x277CCA450];
        v151 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
        v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v20];
        [coderCopy failWithError:v21];

LABEL_10:
        selfCopy = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
      error3 = [coderCopy error];

      if (error3)
      {
        goto LABEL_21;
      }
    }

    v24 = [coderCopy decodeInt64ForKey:@"locationSemanticUserSpecificPlaceType"];
    if (v24)
    {
      goto LABEL_15;
    }

    error4 = [coderCopy error];

    if (!error4)
    {
      if (([coderCopy containsValueForKey:@"locationSemanticUserSpecificPlaceType"] & 1) == 0)
      {
        v148 = *MEMORY[0x277CCA450];
        v149 = @"Missing serialized value for IRSystemStateDO.locationSemanticUserSpecificPlaceType";
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
        v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v9];
        [coderCopy failWithError:v18];
        goto LABEL_10;
      }

LABEL_15:
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationSemanticLoiIdentifier"];
      if (v9)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v25 = objc_opt_class();
          v18 = NSStringFromClass(v25);
          v26 = objc_opt_class();
          v115 = NSStringFromClass(v26);
          v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key locationSemanticLoiIdentifier (expected %@, decoded %@)", v18, v115, 0];
          v146 = *MEMORY[0x277CCA450];
          v147 = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
          v29 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v28];
          [coderCopy failWithError:v29];
LABEL_33:
          selfCopy = 0;
LABEL_34:

          v37 = v115;
LABEL_35:

LABEL_36:
LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
        error5 = [coderCopy error];

        if (error5)
        {
          goto LABEL_4;
        }
      }

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iCloudId"];
      if (v18)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = objc_opt_class();
          v27 = NSStringFromClass(v34);
          v115 = v33;
          v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key iCloudId (expected %@, decoded %@)", v33, v27, 0];
          v144 = *MEMORY[0x277CCA450];
          v145 = v28;
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
          v35 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v29];
          [coderCopy failWithError:v35];
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        error6 = [coderCopy error];

        if (error6)
        {
          goto LABEL_10;
        }
      }

      v109 = v24;
      v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avInitialRouteSharingPolicy"];
      if (v37)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v38 = objc_opt_class();
          v113 = NSStringFromClass(v38);
          v115 = v37;
          v39 = objc_opt_class();
          v28 = NSStringFromClass(v39);
          v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key avInitialRouteSharingPolicy (expected %@, decoded %@)", v113, v28, 0];
          v142 = *MEMORY[0x277CCA450];
          v143 = v29;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
          v40 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v35];
          [coderCopy failWithError:v40];

          v27 = v113;
          goto LABEL_32;
        }
      }

      else
      {
        error7 = [coderCopy error];

        if (error7)
        {
          selfCopy = 0;
          goto LABEL_37;
        }
      }

      v115 = v37;
      v114 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaRouteGroupLeaderOutputDeviceID"];
      if (v114)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v43 = objc_opt_class();
          v28 = NSStringFromClass(v43);
          v44 = objc_opt_class();
          v29 = NSStringFromClass(v44);
          v110 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key mediaRouteGroupLeaderOutputDeviceID (expected %@, decoded %@)", v28, v29, 0];
          v140 = *MEMORY[0x277CCA450];
          v141 = v110;
          v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
          v46 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v45];
          [coderCopy failWithError:v46];

          v27 = v114;
          goto LABEL_33;
        }
      }

      else
      {
        error8 = [coderCopy error];

        if (error8)
        {
          selfCopy = 0;
          v27 = 0;
          goto LABEL_36;
        }
      }

      v105 = [coderCopy decodeInt64ForKey:@"timeZoneSeconds"];
      if (!v105)
      {
        error9 = [coderCopy error];

        if (error9)
        {
          selfCopy = 0;
          v27 = v114;
          goto LABEL_36;
        }

        if (([coderCopy containsValueForKey:@"timeZoneSeconds"] & 1) == 0)
        {
          v138 = *MEMORY[0x277CCA450];
          v139 = @"Missing serialized value for IRSystemStateDO.timeZoneSeconds";
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
          v29 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v28];
          [coderCopy failWithError:v29];
          selfCopy = 0;
          v27 = v114;
          goto LABEL_34;
        }
      }

      v108 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputDeviceName"];
      if (v108)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v48 = objc_opt_class();
          v49 = NSStringFromClass(v48);
          v28 = v108;
          v50 = objc_opt_class();
          v101 = NSStringFromClass(v50);
          v104 = v49;
          v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key outputDeviceName (expected %@, decoded %@)", v49, v101, 0];
          v136 = *MEMORY[0x277CCA450];
          v137 = v51;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
          v53 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v52];
          [coderCopy failWithError:v53];

          v54 = v101;
LABEL_53:
          selfCopy = 0;
          v27 = v114;
LABEL_54:

LABEL_55:
          v29 = v104;
          goto LABEL_34;
        }
      }

      else
      {
        error10 = [coderCopy error];

        if (error10)
        {
          goto LABEL_70;
        }
      }

      v100 = [coderCopy decodeInt64ForKey:@"outputDeviceType"];
      if (!v100)
      {
        error11 = [coderCopy error];

        if (error11)
        {
          goto LABEL_70;
        }

        if (([coderCopy containsValueForKey:@"outputDeviceType"] & 1) == 0)
        {
          v134 = *MEMORY[0x277CCA450];
          v135 = @"Missing serialized value for IRSystemStateDO.outputDeviceType";
          v62 = MEMORY[0x277CBEAC0];
          v63 = &v135;
          v64 = &v134;
          goto LABEL_81;
        }
      }

      v99 = [coderCopy decodeInt64ForKey:@"outputDeviceSubType"];
      if (v99)
      {
        goto LABEL_61;
      }

      error12 = [coderCopy error];

      if (!error12)
      {
        if ([coderCopy containsValueForKey:@"outputDeviceSubType"])
        {
LABEL_61:
          v104 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictedOutputDeviceName"];
          if (v104)
          {
            objc_opt_class();
            v28 = v108;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v57 = objc_opt_class();
              v54 = NSStringFromClass(v57);
              v58 = objc_opt_class();
              v111 = NSStringFromClass(v58);
              v106 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key predictedOutputDeviceName (expected %@, decoded %@)", v54, v111, 0];
              v130 = *MEMORY[0x277CCA450];
              v131 = v106;
              v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
              v60 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v59];
              [coderCopy failWithError:v60];

              goto LABEL_53;
            }
          }

          else
          {
            error13 = [coderCopy error];

            v28 = v108;
            if (error13)
            {
              goto LABEL_90;
            }
          }

          v67 = [coderCopy decodeInt64ForKey:@"predictedOutputDeviceType"];
          if (!v67)
          {
            error14 = [coderCopy error];

            if (error14)
            {
              goto LABEL_90;
            }

            if (([coderCopy containsValueForKey:@"predictedOutputDeviceType"] & 1) == 0)
            {
              v128 = *MEMORY[0x277CCA450];
              v129 = @"Missing serialized value for IRSystemStateDO.predictedOutputDeviceType";
              v73 = MEMORY[0x277CBEAC0];
              v74 = &v129;
              v75 = &v128;
              goto LABEL_99;
            }
          }

          v97 = [coderCopy decodeInt64ForKey:@"predictedOutputDeviceSubType"];
          v98 = v67;
          if (!v97)
          {
            error15 = [coderCopy error];

            if (error15)
            {
              goto LABEL_90;
            }

            if (([coderCopy containsValueForKey:@"predictedOutputDeviceSubType"] & 1) == 0)
            {
              v126 = *MEMORY[0x277CCA450];
              v127 = @"Missing serialized value for IRSystemStateDO.predictedOutputDeviceSubType";
              v73 = MEMORY[0x277CBEAC0];
              v74 = &v127;
              v75 = &v126;
              goto LABEL_99;
            }
          }

          v96 = [coderCopy decodeInt64ForKey:@"appInFocusWindowScreenUnlockEvent"];
          if (v96)
          {
LABEL_75:
            v95 = [coderCopy decodeInt64ForKey:@"pdrFenceActive"];
            if (!v95)
            {
              error16 = [coderCopy error];

              if (error16)
              {
                selfCopy = 0;
                v27 = v114;
                v28 = v108;
                goto LABEL_55;
              }

              if (([coderCopy containsValueForKey:@"pdrFenceActive"] & 1) == 0)
              {
                v122 = *MEMORY[0x277CCA450];
                v123 = @"Missing serialized value for IRSystemStateDO.pdrFenceActive";
                v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
                v85 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v54];
                [coderCopy failWithError:v85];

                goto LABEL_82;
              }
            }

            v102 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestPickerChoiceDate"];
            if (v102)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v68 = objc_opt_class();
                v112 = NSStringFromClass(v68);
                v54 = v102;
                v69 = objc_opt_class();
                v107 = NSStringFromClass(v69);
                v70 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRSystemStateDO key latestPickerChoiceDate (expected %@, decoded %@)", v112, v107, 0];
                v120 = *MEMORY[0x277CCA450];
                v121 = v70;
                v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
                v72 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:3 userInfo:v71];
                [coderCopy failWithError:v72];

LABEL_82:
                selfCopy = 0;
                v27 = v114;
                v28 = v108;
                goto LABEL_54;
              }
            }

            else
            {
              error17 = [coderCopy error];

              if (error17)
              {
                goto LABEL_109;
              }
            }

            v80 = [coderCopy decodeInt64ForKey:@"isContinuityDisplay"];
            if (!v80)
            {
              error18 = [coderCopy error];

              if (error18)
              {
                goto LABEL_109;
              }

              if (([coderCopy containsValueForKey:@"isContinuityDisplay"] & 1) == 0)
              {
                v118 = *MEMORY[0x277CCA450];
                v119 = @"Missing serialized value for IRSystemStateDO.isContinuityDisplay";
                v87 = MEMORY[0x277CBEAC0];
                v88 = &v119;
                v89 = &v118;
LABEL_108:
                v91 = [v87 dictionaryWithObjects:v88 forKeys:v89 count:1];
                v92 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v91];
                [coderCopy failWithError:v92];

                goto LABEL_109;
              }
            }

            v81 = [coderCopy decodeInt64ForKey:@"displayOn"];
            if (v81)
            {
LABEL_96:
              v82 = v81 != 0;
              v83 = v80 != 0;
              v54 = v102;
              v28 = v108;
              v27 = v114;
              BYTE1(v94) = v82;
              LOBYTE(v94) = v83;
              BYTE1(v93) = v95 != 0;
              LOBYTE(v93) = v96 != 0;
              self = [IRSystemStateDO initWithAppInFocusBundleID:"initWithAppInFocusBundleID:appInFocusWindowValid:deviceWiFiSSID:locationSemanticUserSpecificPlaceType:locationSemanticLoiIdentifier:iCloudId:avInitialRouteSharingPolicy:mediaRouteGroupLeaderOutputDeviceID:timeZoneSeconds:outputDeviceName:outputDeviceType:outputDeviceSubType:predictedOutputDeviceName:predictedOutputDeviceType:predictedOutputDeviceSubType:appInFocusWindowScreenUnlockEvent:pdrFenceActive:latestPickerChoiceDate:isContinuityDisplay:displayOn:" appInFocusWindowValid:v5 deviceWiFiSSID:v15 != 0 locationSemanticUserSpecificPlaceType:v7 locationSemanticLoiIdentifier:v109 iCloudId:v9 avInitialRouteSharingPolicy:v18 mediaRouteGroupLeaderOutputDeviceID:v115 timeZoneSeconds:v114 outputDeviceName:v105 outputDeviceType:v108 outputDeviceSubType:v100 predictedOutputDeviceName:v99 predictedOutputDeviceType:v104 predictedOutputDeviceSubType:v98 appInFocusWindowScreenUnlockEvent:v97 pdrFenceActive:v93 latestPickerChoiceDate:v102 isContinuityDisplay:v94 displayOn:?];
              selfCopy = self;
              goto LABEL_54;
            }

            error19 = [coderCopy error];

            if (!error19)
            {
              if ([coderCopy containsValueForKey:@"displayOn"])
              {
                goto LABEL_96;
              }

              v116 = *MEMORY[0x277CCA450];
              v117 = @"Missing serialized value for IRSystemStateDO.displayOn";
              v87 = MEMORY[0x277CBEAC0];
              v88 = &v117;
              v89 = &v116;
              goto LABEL_108;
            }

LABEL_109:
            selfCopy = 0;
            v27 = v114;
            v28 = v108;
            v54 = v102;
            goto LABEL_54;
          }

          error20 = [coderCopy error];

          if (!error20)
          {
            if ([coderCopy containsValueForKey:@"appInFocusWindowScreenUnlockEvent"])
            {
              goto LABEL_75;
            }

            v124 = *MEMORY[0x277CCA450];
            v125 = @"Missing serialized value for IRSystemStateDO.appInFocusWindowScreenUnlockEvent";
            v73 = MEMORY[0x277CBEAC0];
            v74 = &v125;
            v75 = &v124;
LABEL_99:
            v54 = [v73 dictionaryWithObjects:v74 forKeys:v75 count:1];
            v84 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v54];
            [coderCopy failWithError:v84];

            goto LABEL_53;
          }

LABEL_90:
          selfCopy = 0;
          v27 = v114;
          goto LABEL_55;
        }

        v132 = *MEMORY[0x277CCA450];
        v133 = @"Missing serialized value for IRSystemStateDO.outputDeviceSubType";
        v62 = MEMORY[0x277CBEAC0];
        v63 = &v133;
        v64 = &v132;
LABEL_81:
        v104 = [v62 dictionaryWithObjects:v63 forKeys:v64 count:1];
        v54 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRSystemStateDOOCNTErrorDomain" code:1 userInfo:v104];
        [coderCopy failWithError:v54];
        goto LABEL_82;
      }

LABEL_70:
      selfCopy = 0;
      v27 = v114;
      v28 = v108;
      goto LABEL_35;
    }

LABEL_21:
    selfCopy = 0;
LABEL_40:

    goto LABEL_41;
  }

LABEL_12:
  selfCopy = 0;
LABEL_41:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appInFocusBundleID = self->_appInFocusBundleID;
  v15 = coderCopy;
  if (appInFocusBundleID)
  {
    [coderCopy encodeObject:appInFocusBundleID forKey:@"appInFocusBundleID"];
    coderCopy = v15;
  }

  [coderCopy encodeInt64:self->_appInFocusWindowValid forKey:@"appInFocusWindowValid"];
  deviceWiFiSSID = self->_deviceWiFiSSID;
  if (deviceWiFiSSID)
  {
    [v15 encodeObject:deviceWiFiSSID forKey:@"deviceWiFiSSID"];
  }

  [v15 encodeInt64:self->_locationSemanticUserSpecificPlaceType forKey:@"locationSemanticUserSpecificPlaceType"];
  locationSemanticLoiIdentifier = self->_locationSemanticLoiIdentifier;
  if (locationSemanticLoiIdentifier)
  {
    [v15 encodeObject:locationSemanticLoiIdentifier forKey:@"locationSemanticLoiIdentifier"];
  }

  iCloudId = self->_iCloudId;
  if (iCloudId)
  {
    [v15 encodeObject:iCloudId forKey:@"iCloudId"];
  }

  avInitialRouteSharingPolicy = self->_avInitialRouteSharingPolicy;
  v10 = v15;
  if (avInitialRouteSharingPolicy)
  {
    [v15 encodeObject:avInitialRouteSharingPolicy forKey:@"avInitialRouteSharingPolicy"];
    v10 = v15;
  }

  mediaRouteGroupLeaderOutputDeviceID = self->_mediaRouteGroupLeaderOutputDeviceID;
  if (mediaRouteGroupLeaderOutputDeviceID)
  {
    [v15 encodeObject:mediaRouteGroupLeaderOutputDeviceID forKey:@"mediaRouteGroupLeaderOutputDeviceID"];
    v10 = v15;
  }

  [v10 encodeInt64:self->_timeZoneSeconds forKey:@"timeZoneSeconds"];
  outputDeviceName = self->_outputDeviceName;
  if (outputDeviceName)
  {
    [v15 encodeObject:outputDeviceName forKey:@"outputDeviceName"];
  }

  [v15 encodeInt64:self->_outputDeviceType forKey:@"outputDeviceType"];
  [v15 encodeInt64:self->_outputDeviceSubType forKey:@"outputDeviceSubType"];
  predictedOutputDeviceName = self->_predictedOutputDeviceName;
  if (predictedOutputDeviceName)
  {
    [v15 encodeObject:predictedOutputDeviceName forKey:@"predictedOutputDeviceName"];
  }

  [v15 encodeInt64:self->_predictedOutputDeviceType forKey:@"predictedOutputDeviceType"];
  [v15 encodeInt64:self->_predictedOutputDeviceSubType forKey:@"predictedOutputDeviceSubType"];
  [v15 encodeInt64:self->_appInFocusWindowScreenUnlockEvent forKey:@"appInFocusWindowScreenUnlockEvent"];
  [v15 encodeInt64:self->_pdrFenceActive forKey:@"pdrFenceActive"];
  latestPickerChoiceDate = self->_latestPickerChoiceDate;
  if (latestPickerChoiceDate)
  {
    [v15 encodeObject:latestPickerChoiceDate forKey:@"latestPickerChoiceDate"];
  }

  [v15 encodeInt64:self->_isContinuityDisplay forKey:@"isContinuityDisplay"];
  [v15 encodeInt64:self->_displayOn forKey:@"displayOn"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  appInFocusBundleID = self->_appInFocusBundleID;
  v25 = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_appInFocusWindowValid];
  deviceWiFiSSID = self->_deviceWiFiSSID;
  v23 = v4;
  v21 = [MEMORY[0x277CCABB0] numberWithInt:self->_locationSemanticUserSpecificPlaceType];
  v20 = *&self->_locationSemanticLoiIdentifier;
  mediaRouteGroupLeaderOutputDeviceID = self->_mediaRouteGroupLeaderOutputDeviceID;
  avInitialRouteSharingPolicy = self->_avInitialRouteSharingPolicy;
  v17 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timeZoneSeconds];
  outputDeviceName = self->_outputDeviceName;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_outputDeviceType];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_outputDeviceSubType];
  predictedOutputDeviceName = self->_predictedOutputDeviceName;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_predictedOutputDeviceType];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_predictedOutputDeviceSubType];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_appInFocusWindowScreenUnlockEvent];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_pdrFenceActive];
  latestPickerChoiceDate = self->_latestPickerChoiceDate;
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_isContinuityDisplay];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_displayOn];
  v26 = [v25 initWithFormat:@"<IRSystemStateDO | appInFocusBundleID:%@ appInFocusWindowValid:%@ deviceWiFiSSID:%@ locationSemanticUserSpecificPlaceType:%@ locationSemanticLoiIdentifier:%@ iCloudId:%@ avInitialRouteSharingPolicy:%@ mediaRouteGroupLeaderOutputDeviceID:%@ timeZoneSeconds:%@ outputDeviceName:%@ outputDeviceType:%@ outputDeviceSubType:%@ predictedOutputDeviceName:%@ predictedOutputDeviceType:%@ predictedOutputDeviceSubType:%@ appInFocusWindowScreenUnlockEvent:%@ pdrFenceActive:%@ latestPickerChoiceDate:%@ isContinuityDisplay:%@ displayOn:%@>", appInFocusBundleID, v23, deviceWiFiSSID, v21, v20, avInitialRouteSharingPolicy, mediaRouteGroupLeaderOutputDeviceID, v17, outputDeviceName, v14, v5, predictedOutputDeviceName, v6, v7, v8, v9, latestPickerChoiceDate, v11, v12];

  return v26;
}

@end