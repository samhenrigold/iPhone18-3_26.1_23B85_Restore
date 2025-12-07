@interface CLLogFormatter
- (CLLogFormatter)init;
- (SEL)selectorForType:(id)type;
- (id)JSONObjectWithType:(const char *)type value:(id)value info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLAppMonitor_Type__Notification:(id)notification info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLBTLEFenceManager_Type__Notification:(id)notification info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLBarometerCalibration_Types__Context:(id)context info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLBatteryChargerType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientAuthorizationStatus:(id)status info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientCorrectiveCompensation:(id)compensation info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientInUseLevel:(id)level info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientIncidentalUseMode:(id)mode info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientLocationReferenceFrame:(id)frame info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientLocationSuitability:(id)suitability info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientManager_Type__AuthorizationRequestType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientRegistrationResult:(id)result info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientServiceType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientServiceTypeMask:(id)mask info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLDaemonLocation:(id)location info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLDaemonLocationPrivate__OriginDevice:(id)device info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLDaemonStatus_Type__Battery:(id)battery info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLDaemonStatus_Type__Reachability:(id)reachability info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLFenceManager_Type__Notification:(id)notification info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationDictionaryUtilitiesArrowState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationDictionaryUtilitiesAuthorizationMask:(id)mask info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationDictionaryUtilitiesEntityClass:(id)class info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationProvider_Type__MotionDetected:(id)detected info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationProvider_Type__Notification:(id)notification info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationStreamingGranularity:(id)granularity info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLMonitoringState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLMotionActivity:(id)activity info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLMotionActivity__Confidence:(id)confidence info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLMotionActivity__Type:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLRegionState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLSensorRecorder_Types__DataType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLSimulationLocationDeliveryBehavior:(id)behavior info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLSimulationLocationRepeatBehavior:(id)behavior info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLStreamingAwareLocationProviderLocalGPSStateMachine__LocationSourceState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLStreamingAwareLocationProviderLocalGPSStateMachine__WorkoutState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLStreamingAwareLocationProviderNoLocalGPSStateMachine__LocationSourceState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLStreamingAwareLocationProviderStateMachine__LocationSource:(id)source info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLSubHarvesterIdentifier:(id)identifier info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLTelephonyService_Type__Cell:(id)cell info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLWifiService_Type__ScanType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CMMotionCoprocessorReply_Log:(id)log info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CMWakeGestureCrownOrientation:(id)orientation info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CMWakeGestureState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CMWakeGestureWristOrientation:(id)orientation info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_Encrypted_CLClientLocation:(id)location info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_Encrypted_CLLocationCoordinate2D:(id)d info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_Encrypted_latitude:(id)encrypted_latitude info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_Encrypted_longitude:(id)encrypted_longitude info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_Generic:(id)generic info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_IOMessage:(id)message info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_NEVPNConnectivityState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_PSYSyncRestriction:(id)restriction info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_PSYSyncSessionType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_RBSTaskState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_RTLGestureType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_RTLState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_RTLocationOfInterestType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_RTRoutineMode:(id)mode info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_SYSessionState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_SqliteResult:(id)result info:(os_log_type_info_s *)info;
- (id)JSONObjectWith__CLClientManagerStateTrackerState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith__CLDaemonStatusStateTrackerState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith__CLLocationManagerStateTrackerState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_escape_only:(id)with_escape_only info:(os_log_type_info_s *)info;
- (void)dealloc;
@end

@implementation CLLogFormatter

- (CLLogFormatter)init
{
  v5.receiver = self;
  v5.super_class = CLLogFormatter;
  v2 = [(CLLogFormatter *)&v5 init];
  if (v2)
  {
    v2->_selectorForType = objc_opt_new();
    v2->_formatterSignature = [objc_opt_class() instanceMethodSignatureForSelector:sel_JSONObjectWith_Generic_info_];
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x29EDCA580], DISPATCH_AUTORELEASE_FREQUENCY_NEVER);
    v2->_q = dispatch_queue_create("CLLogFormatter", v3);
  }

  return v2;
}

- (void)dealloc
{
  self->_selectorForType = 0;

  self->_formatterSignature = 0;
  self->_q = 0;
  v3.receiver = self;
  v3.super_class = CLLogFormatter;
  [(CLLogFormatter *)&v3 dealloc];
}

- (SEL)selectorForType:(id)type
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  q = self->_q;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __34__CLLogFormatter_selectorForType___block_invoke;
  block[3] = &unk_29F27E8A0;
  block[5] = type;
  block[6] = &v11;
  block[4] = self;
  dispatch_sync(q, block);
  v6 = v12[3];
  if (!v6)
  {
    v8 = self->_q;
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __34__CLLogFormatter_selectorForType___block_invoke_2;
    v9[3] = &unk_29F27E8A0;
    v9[5] = type;
    v9[6] = &v11;
    v9[4] = self;
    dispatch_barrier_sync(v8, v9);
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  return v6;
}

void *__34__CLLogFormatter_selectorForType___block_invoke(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 8) objectForKeyedSubscript:{a1[5]), "pointerValue"}];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void *__34__CLLogFormatter_selectorForType___block_invoke_2(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 8) objectForKeyedSubscript:{*(a1 + 40)), "pointerValue"}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v3 = [*(a1 + 40) stringByReplacingOccurrencesOfString:@":" withString:@"_"];
    *(*(*(a1 + 48) + 8) + 24) = NSSelectorFromString([MEMORY[0x29EDBA0F8] stringWithFormat:@"JSONObjectWith_%@:info:", v3]);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = sel_JSONObjectWith_Generic_info_;
    }

    v4 = [MEMORY[0x29EDBA168] valueWithPointer:*(*(*(a1 + 48) + 8) + 24)];
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 8);

    return [v6 setObject:v4 forKeyedSubscript:v5];
  }

  return result;
}

- (id)JSONObjectWithType:(const char *)type value:(id)value info:(os_log_type_info_s *)info
{
  infoCopy = info;
  valueCopy = value;
  v7 = [MEMORY[0x29EDB8DD8] invocationWithMethodSignature:self->_formatterSignature];
  [v7 setSelector:{-[CLLogFormatter selectorForType:](self, "selectorForType:", objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", type))}];
  [v7 setTarget:self];
  [v7 setArgument:&valueCopy atIndex:2];
  [v7 setArgument:&infoCopy atIndex:3];
  [v7 invoke];
  v9 = 0;
  [v7 getReturnValue:&v9];
  return v9;
}

- (id)JSONObjectWith_Generic:(id)generic info:(os_log_type_info_s *)info
{
  v6[3] = *MEMORY[0x29EDCA608];
  v5[0] = @"type";
  v5[1] = @"expected type";
  v6[0] = @"decode failure";
  v6[1] = @"Generic";
  v5[2] = @"raw value";
  v6[2] = generic;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
}

- (id)JSONObjectWith_escape_only:(id)with_escape_only info:(os_log_type_info_s *)info
{
  v10[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9[0] = @"type";
    v9[1] = @"expected type";
    v10[0] = @"decode failure";
    v10[1] = @"NSString";
    v9[2] = @"raw value";
    v10[2] = with_escape_only;
    return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  }

  v5 = strlen([with_escape_only UTF8String]);
  if (v5 == [with_escape_only length])
  {
    return with_escape_only;
  }

  v6 = MEMORY[0x29EDBA0F8];
  uTF8String = [with_escape_only UTF8String];

  return [v6 stringWithUTF8String:uTF8String];
}

- (id)JSONObjectWith_CLClientLocationReferenceFrame:(id)frame info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [frame intValue];
    if (intValue < 3)
    {
      return *(&off_29F27E8C0 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLClientLocationReferenceFrame";
  v7[2] = @"raw value";
  v8[2] = frame;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLClientLocationSuitability:(id)suitability info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [suitability intValue];
    switch(intValue)
    {
      case 1:
        return @"RouteGuidance";
      case 0xFFFF:
        return @"Any";
      case 2:
        return @"Other";
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLClientLocationSuitability";
  v7[2] = @"raw value";
  v8[2] = suitability;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLLocationDictionaryUtilitiesEntityClass:(id)class info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [class intValue];
    if (intValue < 0xA)
    {
      return *(&off_29F27E8D8 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLClientAuthorizationStatus";
  v7[2] = @"raw value";
  v8[2] = class;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLLocationDictionaryUtilitiesArrowState:(id)state info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [state intValue];
    if (intValue < 4)
    {
      return *(&off_29F27E928 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLClientAuthorizationStatus";
  v7[2] = @"raw value";
  v8[2] = state;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLClientAuthorizationStatus:(id)status info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [status intValue];
    if (intValue < 5)
    {
      return *(&off_29F27E948 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLClientAuthorizationStatus";
  v7[2] = @"raw value";
  v8[2] = status;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLClientCorrectiveCompensation:(id)compensation info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [compensation intValue];
    if (intValue < 3)
    {
      return *(&off_29F27E970 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLClientCorrectiveCompensation";
  v7[2] = @"raw value";
  v8[2] = compensation;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLRegionState:(id)state info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [state intValue];
    if (intValue < 3)
    {
      return *(&off_29F27E988 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLRegionState";
  v7[2] = @"raw value";
  v8[2] = state;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLDaemonLocation:(id)location info:(os_log_type_info_s *)info
{
  v42[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    __dst = 0xFFFF;
    v24 = 0.0;
    v25 = 0.0;
    __asm { FMOV            V0.2D, #-1.0 }

    v26 = xmmword_2999EDE60;
    v27 = _Q0;
    v28 = _Q0;
    v29 = _Q0;
    v30 = 0;
    v31 = -1.0;
    memset(v32, 0, sizeof(v32));
    v33 = -1.0;
    v34 = 0x7FFFFFFF;
    v37 = 0.0;
    v35 = 0;
    v36 = 0;
    v38 = 0;
    bytes = [location bytes];
    if ([location length] <= 0x9C)
    {
      v13 = [location length];
    }

    else
    {
      v13 = 156;
    }

    memcpy(&__dst, bytes, v13);
    v18 = -[CLLogFormatter JSONObjectWith_CLClientLocationSuitability:info:](self, "JSONObjectWith_CLClientLocationSuitability:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:__dst], info);
    v19 = -[CLLogFormatter JSONObjectWith_CLClientLocationReferenceFrame:info:](self, "JSONObjectWith_CLClientLocationReferenceFrame:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:HIDWORD(v35)], info);
    v20 = -[CLLogFormatter JSONObjectWith_CLClientLocationReferenceFrame:info:](self, "JSONObjectWith_CLClientLocationReferenceFrame:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:v36], info);
    v21 = -[CLLogFormatter JSONObjectWith_CLLocationType:info:](self, "JSONObjectWith_CLLocationType:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:*v32], info);
    v40[0] = v18;
    v39[0] = @"suitability";
    v39[1] = @"lat";
    v40[1] = [MEMORY[0x29EDBA070] numberWithDouble:v24];
    v39[2] = @"lon";
    v40[2] = [MEMORY[0x29EDBA070] numberWithDouble:v25];
    v39[3] = @"horizontalAccuracy";
    v40[3] = [MEMORY[0x29EDBA070] numberWithDouble:*&v26];
    v39[4] = @"altitude";
    v40[4] = [MEMORY[0x29EDBA070] numberWithDouble:*(&v26 + 1)];
    v39[5] = @"ellipsoidalAltitude";
    v40[5] = [MEMORY[0x29EDBA070] numberWithDouble:v37];
    v39[6] = @"verticalAccuracy";
    v40[6] = [MEMORY[0x29EDBA070] numberWithDouble:*&v27];
    v39[7] = @"speed";
    v40[7] = [MEMORY[0x29EDBA070] numberWithDouble:*(&v27 + 1)];
    v39[8] = @"speedAccuracy";
    v40[8] = [MEMORY[0x29EDBA070] numberWithDouble:*&v28];
    v39[9] = @"course";
    v40[9] = [MEMORY[0x29EDBA070] numberWithDouble:*(&v28 + 1)];
    v39[10] = @"courseAccuracy";
    v40[10] = [MEMORY[0x29EDBA070] numberWithDouble:*&v29];
    v39[11] = @"timestamp";
    v40[11] = [MEMORY[0x29EDBA070] numberWithDouble:*(&v29 + 1)];
    v39[12] = @"confidence";
    v40[12] = [MEMORY[0x29EDBA070] numberWithInt:v30];
    v39[13] = @"lifespan";
    v40[13] = [MEMORY[0x29EDBA070] numberWithDouble:v31];
    v40[14] = v21;
    v39[14] = @"type";
    v39[15] = @"rawLat";
    v40[15] = [MEMORY[0x29EDBA070] numberWithDouble:*&v32[4]];
    v39[16] = @"rawLon";
    v40[16] = [MEMORY[0x29EDBA070] numberWithDouble:*&v32[12]];
    v39[17] = @"rawCourse";
    v40[17] = [MEMORY[0x29EDBA070] numberWithDouble:v33];
    v39[18] = @"floor";
    v40[18] = [MEMORY[0x29EDBA070] numberWithInt:v34];
    v39[19] = @"integrity";
    v40[19] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v35];
    v40[20] = v19;
    v39[20] = @"referenceFrame";
    v39[21] = @"rawReferenceFrame";
    v40[21] = v20;
    v39[22] = @"fromSimulationController";
    v40[22] = [MEMORY[0x29EDBA070] numberWithBool:v38 & 1];
    v14 = MEMORY[0x29EDB8DC0];
    v15 = v40;
    v16 = v39;
    v17 = 23;
  }

  else
  {
    v41[0] = @"type";
    v41[1] = @"expected type";
    v41[2] = @"raw value";
    v42[0] = @"decode failure";
    v42[1] = @"CLDaemonLocation";
    v42[2] = location;
    v14 = MEMORY[0x29EDB8DC0];
    v15 = v42;
    v16 = v41;
    v17 = 3;
  }

  return [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
}

- (id)JSONObjectWith_CLClientManager_Type__AuthorizationRequestType:(id)type info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [type intValue];
    if (intValue < 0x14)
    {
      return *(&off_29F27E9A0 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLClientManager_Type::AuthorizationRequestType";
  v7[2] = @"raw value";
  v8[2] = type;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLClientInUseLevel:(id)level info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [level intValue];
    if (intValue < 6)
    {
      return *(&off_29F27EA40 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"ClientInUseLevel";
  v7[2] = @"raw value";
  v8[2] = level;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_SqliteResult:(id)result info:(os_log_type_info_s *)info
{
  v13[3] = *MEMORY[0x29EDCA608];
  if ([result length] != 4)
  {
    v12[0] = @"type";
    v12[1] = @"expected type";
    v13[0] = @"decode failure";
    v13[1] = @"SqliteResult";
    v12[2] = @"raw value";
    v13[2] = result;
    v7 = MEMORY[0x29EDB8DC0];
    v8 = v13;
    v9 = v12;
    return [v7 dictionaryWithObjects:v8 forKeys:v9 count:3];
  }

  v5 = *[result bytes];
  if (v5 > 519)
  {
    if (v5 <= 2313)
    {
      if (v5 <= 1033)
      {
        if (v5 > 775)
        {
          if (v5 <= 781)
          {
            if (v5 == 776)
            {
              return @"SQLITE_READONLY_ROLLBACK";
            }

            if (v5 == 778)
            {
              return @"SQLITE_IOERR_WRITE";
            }
          }

          else
          {
            switch(v5)
            {
              case 782:
                return @"SQLITE_CANTOPEN_FULLPATH";
              case 787:
                return @"SQLITE_CONSTRAINT_FOREIGNKEY";
              case 1032:
                return @"SQLITE_READONLY_DBMOVED";
            }
          }
        }

        else if (v5 <= 525)
        {
          if (v5 == 520)
          {
            return @"SQLITE_READONLY_CANTLOCK";
          }

          if (v5 == 522)
          {
            return @"SQLITE_IOERR_SHORT_READ";
          }
        }

        else
        {
          switch(v5)
          {
            case 526:
              return @"SQLITE_CANTOPEN_ISDIR";
            case 531:
              return @"SQLITE_CONSTRAINT_COMMITHOOK";
            case 539:
              return @"SQLITE_NOTICE_RECOVER_ROLLBACK";
          }
        }
      }

      else if (v5 <= 1545)
      {
        if (v5 <= 1042)
        {
          if (v5 == 1034)
          {
            return @"SQLITE_IOERR_FSYNC";
          }

          if (v5 == 1038)
          {
            return @"SQLITE_CANTOPEN_CONVPATH";
          }
        }

        else
        {
          switch(v5)
          {
            case 1043:
              return @"SQLITE_CONSTRAINT_FUNCTION";
            case 1290:
              return @"SQLITE_IOERR_DIR_FSYNC";
            case 1299:
              return @"SQLITE_CONSTRAINT_NOTNULL";
          }
        }
      }

      else if (v5 > 1810)
      {
        switch(v5)
        {
          case 1811:
            return @"SQLITE_CONSTRAINT_TRIGGER";
          case 2058:
            return @"SQLITE_IOERR_UNLOCK";
          case 2067:
            return @"SQLITE_CONSTRAINT_UNIQUE";
        }
      }

      else
      {
        switch(v5)
        {
          case 1546:
            return @"SQLITE_IOERR_TRUNCATE";
          case 1555:
            return @"SQLITE_CONSTRAINT_PRIMARYKEY";
          case 1802:
            return @"SQLITE_IOERR_FSTAT";
        }
      }
    }

    else if (v5 > 4617)
    {
      if (v5 <= 5897)
      {
        if (v5 <= 5129)
        {
          if (v5 == 4618)
          {
            return @"SQLITE_IOERR_SHMOPEN";
          }

          if (v5 == 4874)
          {
            return @"SQLITE_IOERR_SHMSIZE";
          }
        }

        else
        {
          switch(v5)
          {
            case 5130:
              return @"SQLITE_IOERR_SHMLOCK";
            case 5386:
              return @"SQLITE_IOERR_SHMMAP";
            case 5642:
              return @"SQLITE_IOERR_SEEK";
          }
        }
      }

      else if (v5 > 6665)
      {
        switch(v5)
        {
          case 6666:
            return @"SQLITE_IOERR_CONVPATH";
          case 6922:
            return @"SQLITE_IOERR_VNODE";
          case 7178:
            return @"SQLITE_IOERR_AUTH";
        }
      }

      else
      {
        switch(v5)
        {
          case 5898:
            return @"SQLITE_IOERR_DELETE_NOENT";
          case 6154:
            return @"SQLITE_IOERR_MMAP";
          case 6410:
            return @"SQLITE_IOERR_GETTEMPPATH";
        }
      }
    }

    else if (v5 <= 3081)
    {
      if (v5 <= 2569)
      {
        if (v5 == 2314)
        {
          return @"SQLITE_IOERR_RDLOCK";
        }

        if (v5 == 2323)
        {
          return @"SQLITE_CONSTRAINT_VTAB";
        }
      }

      else
      {
        switch(v5)
        {
          case 2570:
            return @"SQLITE_IOERR_DELETE";
          case 2579:
            return @"SQLITE_CONSTRAINT_ROWID";
          case 2826:
            return @"SQLITE_IOERR_BLOCKED";
        }
      }
    }

    else if (v5 > 3849)
    {
      switch(v5)
      {
        case 3850:
          return @"SQLITE_IOERR_LOCK";
        case 4106:
          return @"SQLITE_IOERR_CLOSE";
        case 4362:
          return @"SQLITE_IOERR_DIR_CLOSE";
      }
    }

    else
    {
      switch(v5)
      {
        case 3082:
          return @"SQLITE_IOERR_NOMEM";
        case 3338:
          return @"SQLITE_IOERR_ACCESS";
        case 3594:
          return @"SQLITE_IOERR_CHECKRESERVEDLOCK";
      }
    }

    goto LABEL_170;
  }

  if (v5 > 99)
  {
    if (v5 > 269)
    {
      if (v5 <= 282)
      {
        switch(v5)
        {
          case 270:
            return @"SQLITE_CANTOPEN_NOTEMPDIR";
          case 275:
            return @"SQLITE_CONSTRAINT_CHECK";
          case 279:
            return @"SQLITE_AUTH_USER";
        }
      }

      else if (v5 > 515)
      {
        if (v5 == 516)
        {
          return @"SQLITE_ABORT_ROLLBACK";
        }

        if (v5 == 517)
        {
          return @"SQLITE_BUSY_SNAPSHOT";
        }
      }

      else
      {
        if (v5 == 283)
        {
          return @"SQLITE_NOTICE_RECOVER_WAL";
        }

        if (v5 == 284)
        {
          return @"SQLITE_WARNING_AUTOINDEX";
        }
      }
    }

    else if (v5 <= 261)
    {
      switch(v5)
      {
        case 100:
          return @"SQLITE_ROW";
        case 101:
          return @"SQLITE_DONE";
        case 261:
          return @"SQLITE_BUSY_RECOVERY";
      }
    }

    else if (v5 > 265)
    {
      if (v5 == 266)
      {
        return @"SQLITE_IOERR_READ";
      }

      if (v5 == 267)
      {
        return @"SQLITE_CORRUPT_VTAB";
      }
    }

    else
    {
      if (v5 == 262)
      {
        return @"SQLITE_LOCKED_SHAREDCACHE";
      }

      if (v5 == 264)
      {
        return @"SQLITE_READONLY_RECOVERY";
      }
    }

LABEL_170:
    v10[0] = @"type";
    v10[1] = @"expected type";
    v11[0] = @"decode failure";
    v11[1] = @"SqliteResult";
    v10[2] = @"raw value";
    v11[2] = result;
    v7 = MEMORY[0x29EDB8DC0];
    v8 = v11;
    v9 = v10;
    return [v7 dictionaryWithObjects:v8 forKeys:v9 count:3];
  }

  result = @"SQLITE_OK";
  switch(v5)
  {
    case 0:
      return result;
    case 1:
      result = @"SQLITE_ERROR";
      break;
    case 2:
      result = @"SQLITE_INTERNAL";
      break;
    case 3:
      result = @"SQLITE_PERM";
      break;
    case 4:
      result = @"SQLITE_ABORT";
      break;
    case 5:
      result = @"SQLITE_BUSY";
      break;
    case 6:
      result = @"SQLITE_LOCKED";
      break;
    case 7:
      result = @"SQLITE_NOMEM";
      break;
    case 8:
      result = @"SQLITE_READONLY";
      break;
    case 9:
      result = @"SQLITE_INTERRUPT";
      break;
    case 10:
      result = @"SQLITE_IOERR";
      break;
    case 11:
      result = @"SQLITE_CORRUPT";
      break;
    case 12:
      result = @"SQLITE_NOTFOUND";
      break;
    case 13:
      result = @"SQLITE_FULL";
      break;
    case 14:
      result = @"SQLITE_CANTOPEN";
      break;
    case 15:
      result = @"SQLITE_PROTOCOL";
      break;
    case 16:
      result = @"SQLITE_EMPTY";
      break;
    case 17:
      result = @"SQLITE_SCHEMA";
      break;
    case 18:
      result = @"SQLITE_TOOBIG";
      break;
    case 19:
      result = @"SQLITE_CONSTRAINT";
      break;
    case 20:
      result = @"SQLITE_MISMATCH";
      break;
    case 21:
      result = @"SQLITE_MISUSE";
      break;
    case 22:
      result = @"SQLITE_NOLFS";
      break;
    case 23:
      result = @"SQLITE_AUTH";
      break;
    case 24:
      result = @"SQLITE_FORMAT";
      break;
    case 25:
      result = @"SQLITE_RANGE";
      break;
    case 26:
      result = @"SQLITE_NOTADB";
      break;
    case 27:
      result = @"SQLITE_NOTICE";
      break;
    case 28:
      result = @"SQLITE_WARNING";
      break;
    default:
      goto LABEL_170;
  }

  return result;
}

- (id)JSONObjectWith_CLLocationProvider_Type__Notification:(id)notification info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [notification intValue];
    if (intValue < 0x33 && ((0x7FFFEFFF3BF7FuLL >> intValue) & 1) != 0)
    {
      return *(&off_29F27EA70 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLLocationProvider_Type::Notification";
  v7[2] = @"raw value";
  v8[2] = notification;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLLocationStreamingGranularity:(id)granularity info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [granularity intValue];
    if (intValue < 4)
    {
      return *(&off_29F27EC08 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLLocationStreamingGranularity";
  v7[2] = @"raw value";
  v8[2] = granularity;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLStreamingAwareLocationProviderNoLocalGPSStateMachine__LocationSourceState:(id)state info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [state intValue];
    if (intValue < 5)
    {
      return *(&off_29F27EC28 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLStreamingAwareLocationProviderNoLocalGPSStateMachine::LocationSourceState";
  v7[2] = @"raw value";
  v8[2] = state;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLStreamingAwareLocationProviderLocalGPSStateMachine__LocationSourceState:(id)state info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [state intValue];
    if (intValue < 6)
    {
      return *(&off_29F27EC50 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLStreamingAwareLocationProviderLocalGPSStateMachine::LocationSourceState";
  v7[2] = @"raw value";
  v8[2] = state;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLStreamingAwareLocationProviderLocalGPSStateMachine__WorkoutState:(id)state info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [state intValue];
    if (intValue < 3)
    {
      return *(&off_29F27EC80 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLStreamingAwareLocationProviderLocalGPSStateMachine::LocationSourceState";
  v7[2] = @"raw value";
  v8[2] = state;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLStreamingAwareLocationProviderStateMachine__LocationSource:(id)source info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [source intValue];
    if (!intValue)
    {
      return @"CLStreamingAwareLocationProviderStateMachine::kLocationSourceLocal";
    }

    if (intValue == 1)
    {
      return @"CLStreamingAwareLocationProviderStateMachine::kLocationSourceRemote";
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLStreamingAwareLocationProviderStateMachine::LocationSource";
  v7[2] = @"raw value";
  v8[2] = source;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLLocationProvider_Type__MotionDetected:(id)detected info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [detected intValue];
    if (intValue < 3)
    {
      return *(&off_29F27EC98 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLLocationProvider_Type::MotionDetected";
  v7[2] = @"raw value";
  v8[2] = detected;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLLocationType:(id)type info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [type intValue];
    if (intValue < 0xF)
    {
      return *(&off_29F27ECB0 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLLocationType";
  v7[2] = @"raw value";
  v8[2] = type;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLDaemonLocationPrivate__OriginDevice:(id)device info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [device intValue];
    if (intValue < 3)
    {
      return *(&off_29F27ED28 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLClientLocationOriginDevice";
  v7[2] = @"raw value";
  v8[2] = device;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_IOMessage:(id)message info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongValue = [message unsignedLongValue];
    if (unsignedLongValue > 3758096943)
    {
      if (unsignedLongValue > 3758097151)
      {
        if (unsignedLongValue > 3758097199)
        {
          switch(unsignedLongValue)
          {
            case 3758097200:
              return @"CopyClientID";
            case 3758097216:
              return @"SystemCapabilityChange";
            case 3758097232:
              return @"DeviceSignaledWakeup";
          }
        }

        else
        {
          switch(unsignedLongValue)
          {
            case 3758097152:
              return @"SystemHasPoweredOn";
            case 3758097168:
              return @"SystemWillRestart";
            case 3758097184:
              return @"SystemWillPowerOn";
          }
        }
      }

      else if (unsignedLongValue > 3758097007)
      {
        switch(unsignedLongValue)
        {
          case 3758097008:
            return @"CanSystemSleep";
          case 3758097024:
            return @"SystemWillSleep";
          case 3758097040:
            return @"SystemWillNotSleep";
        }
      }

      else
      {
        switch(unsignedLongValue)
        {
          case 3758096944:
            return @"DeviceHasPoweredOn";
          case 3758096976:
            return @"SystemWillPowerOff";
          case 3758096981:
            return @"SystemPagingOff";
        }
      }
    }

    else if (unsignedLongValue > 3758096671)
    {
      if (unsignedLongValue > 3758096895)
      {
        switch(unsignedLongValue)
        {
          case 3758096896:
            return @"CanDevicePowerOff";
          case 3758096912:
            return @"DeviceWillPowerOff";
          case 3758096928:
            return @"DeviceWillNotPowerOff";
        }
      }

      else
      {
        switch(unsignedLongValue)
        {
          case 3758096672:
            return @"ServiceBusyStateChange";
          case 3758096680:
            return @"ConsoleSecurityChange";
          case 3758096688:
            return @"ServicePropertyChange";
        }
      }
    }

    else if (unsignedLongValue > 3758096639)
    {
      switch(unsignedLongValue)
      {
        case 3758096640:
          return @"ServiceIsRequestingClose";
        case 3758096641:
          return @"ServiceIsAttemptingOpen";
        case 3758096656:
          return @"ServiceWasClosed";
      }
    }

    else
    {
      switch(unsignedLongValue)
      {
        case 3758096400:
          return @"ServiceIsTerminated";
        case 3758096416:
          return @"ServiceIsSuspended";
        case 3758096432:
          return @"ServiceIsResumed";
      }
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"IOMessage";
  v7[2] = @"raw value";
  v8[2] = message;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLDaemonStatus_Type__Reachability:(id)reachability info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [reachability intValue];
    if (intValue > 1)
    {
      if (intValue == 2)
      {
        return @"kReachabilityLarge";
      }

      if (intValue == 1000)
      {
        return @"kReachabilityUnachievable";
      }
    }

    else
    {
      if (!intValue)
      {
        return @"kReachabilityUnavailable";
      }

      if (intValue == 1)
      {
        return @"kReachabilitySmall";
      }
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLDaemonStatus_Type::Reachability";
  v7[2] = @"raw value";
  v8[2] = reachability;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLBatteryChargerType:(id)type info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [type intValue];
    if (intValue < 5)
    {
      return *(&off_29F27ED40 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLBatteryChargerType";
  v7[2] = @"raw value";
  v8[2] = type;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLDaemonStatus_Type__Battery:(id)battery info:(os_log_type_info_s *)info
{
  v23[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18[0] = @"type";
    v18[1] = @"expected type";
    v19[0] = @"decode failure";
    v19[1] = @"CLDaemonStatus_Type::Battery";
    v18[2] = @"raw value";
    v19[2] = battery;
    v13 = MEMORY[0x29EDB8DC0];
    v14 = v19;
    v15 = v18;
LABEL_6:
    v16 = 3;
    return [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
  }

  if ([battery length] != 24)
  {
    v22[0] = @"type";
    v22[1] = @"expected type";
    v23[0] = @"decode failure";
    v23[1] = @"CLDaemonStatus_Type::Battery";
    v22[2] = @"raw value";
    v23[2] = battery;
    v13 = MEMORY[0x29EDB8DC0];
    v14 = v23;
    v15 = v22;
    goto LABEL_6;
  }

  bytes = [battery bytes];
  v8 = *bytes;
  v9 = *(bytes + 8);
  v10 = *(bytes + 9);
  v11 = *(bytes + 16);
  v12 = [MEMORY[0x29EDBA070] numberWithInt:*(bytes + 12)];
  v20[0] = @"level";
  v21[0] = [MEMORY[0x29EDBA070] numberWithDouble:v8];
  v20[1] = @"charged";
  v21[1] = [MEMORY[0x29EDBA070] numberWithBool:v9 & 1];
  v20[2] = @"connected";
  v21[2] = [MEMORY[0x29EDBA070] numberWithBool:v10 & 1];
  v20[3] = @"chargerType";
  v21[3] = [(CLLogFormatter *)self JSONObjectWith_CLBatteryChargerType:v12 info:info];
  v20[4] = @"wasConnected";
  v21[4] = [MEMORY[0x29EDBA070] numberWithBool:v11 & 1];
  v13 = MEMORY[0x29EDB8DC0];
  v14 = v21;
  v15 = v20;
  v16 = 5;
  return [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
}

- (id)JSONObjectWith_CLClientServiceType:(id)type info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [type integerValue];
    if (integerValue < 0x19)
    {
      return *(&off_29F27ED68 + integerValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLClientServiceType";
  v7[2] = @"raw value";
  v8[2] = type;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLClientServiceTypeMask:(id)mask info:(os_log_type_info_s *)info
{
  v15[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12[0] = @"type";
    v12[1] = @"expected type";
    v13[0] = @"decode failure";
    v13[1] = @"CLClientServiceTypeMask";
    v12[2] = @"raw value";
    v13[2] = mask;
    v8 = MEMORY[0x29EDB8DC0];
    v9 = v13;
    v10 = v12;
    return [v8 dictionaryWithObjects:v9 forKeys:v10 count:3];
  }

  integerValue = [mask integerValue];
  v6 = objc_opt_new();
  v7 = v6;
  if (integerValue)
  {
    [v6 addObject:@"RegionBeacon"];
    if ((integerValue & 2) == 0)
    {
LABEL_4:
      if ((integerValue & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((integerValue & 2) == 0)
  {
    goto LABEL_4;
  }

  [v7 addObject:@"RegionCircular"];
  if ((integerValue & 4) == 0)
  {
LABEL_5:
    if ((integerValue & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v7 addObject:@"Ranging"];
  if ((integerValue & 8) == 0)
  {
LABEL_6:
    if ((integerValue & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v7 addObject:@"PersistentSLC"];
  if ((integerValue & 0x10) == 0)
  {
LABEL_7:
    if ((integerValue & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v7 addObject:@"Location"];
  if ((integerValue & 0x20) == 0)
  {
LABEL_8:
    if ((integerValue & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v7 addObject:@"BackgroundLocation"];
  if ((integerValue & 0x40) == 0)
  {
LABEL_9:
    if ((integerValue & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v7 addObject:@"SLV"];
  if ((integerValue & 0x80) == 0)
  {
LABEL_10:
    if ((integerValue & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v7 addObject:@"RemoteLocation_Deprecated"];
  if ((integerValue & 0x100) == 0)
  {
LABEL_11:
    if ((integerValue & 0x200) == 0)
    {
      goto LABEL_12;
    }

LABEL_29:
    [v7 addObject:@"RemoteRegionCircular_Deprecated"];
    if ((integerValue & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_28:
  [v7 addObject:@"MicroLocation_Deprecated"];
  if ((integerValue & 0x200) != 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((integerValue & 0x800) != 0)
  {
LABEL_13:
    [v7 addObject:@"NonPersistentSLC"];
  }

LABEL_14:
  if (![v7 count] && integerValue)
  {
    v14[0] = @"type";
    v14[1] = @"expected type";
    v15[0] = @"decode failure";
    v15[1] = @"CLClientServiceTypeMask";
    v14[2] = @"raw value";
    v15[2] = mask;
    v8 = MEMORY[0x29EDB8DC0];
    v9 = v15;
    v10 = v14;
    return [v8 dictionaryWithObjects:v9 forKeys:v10 count:3];
  }

  return v7;
}

- (id)JSONObjectWith_CLLocationDictionaryUtilitiesAuthorizationMask:(id)mask info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [mask integerValue];
    if (integerValue < 8 && ((0xD7u >> integerValue) & 1) != 0)
    {
      return *(&off_29F27EE30 + integerValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLLocationDictionaryUtilitiesAuthorizationMask";
  v7[2] = @"raw value";
  v8[2] = mask;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLClientIncidentalUseMode:(id)mode info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [mode integerValue];
    if (integerValue < 4)
    {
      return *(&off_29F27EE70 + integerValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLClientIncidentalUseMode";
  v7[2] = @"raw value";
  v8[2] = mode;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLTelephonyService_Type__Cell:(id)cell info:(os_log_type_info_s *)info
{
  v24[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19[0] = @"type";
    v19[1] = @"expected type";
    v20[0] = @"decode failure";
    v20[1] = @"CLTelephonyService_Type::Cell";
    v19[2] = @"raw value";
    v20[2] = cell;
    v14 = MEMORY[0x29EDB8DC0];
    v15 = v20;
    v16 = v19;
LABEL_6:
    v17 = 3;
    return [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
  }

  if ([cell length] != 32)
  {
    v23[0] = @"type";
    v23[1] = @"expected type";
    v24[0] = @"decode failure";
    v24[1] = @"CLTelephonyService_Type::Cell";
    v23[2] = @"raw value";
    v24[2] = cell;
    v14 = MEMORY[0x29EDB8DC0];
    v15 = v24;
    v16 = v23;
    goto LABEL_6;
  }

  bytes = [cell bytes];
  v6 = *bytes;
  v7 = bytes[1];
  v8 = bytes[2];
  v9 = bytes[3];
  v11 = bytes[4];
  v10 = bytes[5];
  v13 = bytes[6];
  v12 = bytes[7];
  v21[0] = @"mcc";
  v22[0] = [MEMORY[0x29EDBA070] numberWithInt:v6];
  v21[1] = @"mnc";
  v22[1] = [MEMORY[0x29EDBA070] numberWithInt:v7];
  v21[2] = @"lac";
  v22[2] = [MEMORY[0x29EDBA070] numberWithInt:v8];
  v21[3] = @"ci";
  v22[3] = [MEMORY[0x29EDBA070] numberWithInt:v9];
  v21[4] = @"uarfcn";
  v22[4] = [MEMORY[0x29EDBA070] numberWithInt:v11];
  v21[5] = @"psc";
  v22[5] = [MEMORY[0x29EDBA070] numberWithInt:v10];
  v21[6] = @"rscp";
  v22[6] = [MEMORY[0x29EDBA070] numberWithInt:v13];
  v21[7] = @"ecn0";
  v22[7] = [MEMORY[0x29EDBA070] numberWithInt:v12];
  v14 = MEMORY[0x29EDB8DC0];
  v15 = v22;
  v16 = v21;
  v17 = 8;
  return [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
}

- (id)JSONObjectWith_PSYSyncRestriction:(id)restriction info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    longLongValue = [restriction longLongValue];
    if (!longLongValue)
    {
      return @"PSYSyncRestrictionNone";
    }

    if (longLongValue == 1)
    {
      return @"PSYSyncRestrictionLimitPush";
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"PSYSyncRestriction";
  v7[2] = @"raw value";
  v8[2] = restriction;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_PSYSyncSessionType:(id)type info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    longLongValue = [type longLongValue];
    if (!longLongValue)
    {
      return @"PSYSyncSessionTypeFullSync";
    }

    if (longLongValue == 1)
    {
      return @"PSYSyncSessionTypeReunionSync";
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"PSYSyncSessionType";
  v7[2] = @"raw value";
  v8[2] = type;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_SYSessionState:(id)state info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    longLongValue = [state longLongValue];
    if (longLongValue < 0xA)
    {
      return *(&off_29F27EE90 + longLongValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"SYSessionState";
  v7[2] = @"raw value";
  v8[2] = state;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLMonitoringState:(id)state info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    longLongValue = [state longLongValue];
    if (longLongValue < 3)
    {
      return *(&off_29F27EEE0 + longLongValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLMonitoringState";
  v7[2] = @"raw value";
  v8[2] = state;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLFenceManager_Type__Notification:(id)notification info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [notification intValue];
    if (intValue < 0xC)
    {
      return *(&off_29F27EEF8 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLFenceManager_Type::Notification";
  v7[2] = @"raw value";
  v8[2] = notification;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLBTLEFenceManager_Type__Notification:(id)notification info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [notification intValue];
    if (intValue < 4)
    {
      return *(&off_29F27EF58 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLBTLEFenceManager_Type::Notification";
  v7[2] = @"raw value";
  v8[2] = notification;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLMotionActivity__Type:(id)type info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_134:
    v7[0] = @"type";
    v7[1] = @"expected type";
    v8[0] = @"decode failure";
    v8[1] = @"CLMotionActivity::Type";
    v7[2] = @"raw value";
    v8[2] = type;
    return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  }

  intValue = [type intValue];
  if (intValue <= 11804)
  {
    if (intValue <= 63)
    {
      if (intValue > 8)
      {
        if (intValue <= 51)
        {
          if (intValue > 10)
          {
            if (intValue != 11)
            {
              if (intValue == 41)
              {
                return @"CLMotionActivity::kTypeWalkingSlow";
              }

              goto LABEL_134;
            }

            return @"CLMotionActivity::kTypeInVehicleStatic";
          }

          else if (intValue == 9)
          {
            return @"CLMotionActivity::kTypeMovingCoarse";
          }

          else
          {
            return @"CLMotionActivity::kTypeInVehicleFrozen";
          }
        }

        else if (intValue <= 60)
        {
          if (intValue != 52)
          {
            if (intValue == 56)
            {
              return @"CLMotionActivity::kTypeDrivingOther";
            }

            goto LABEL_134;
          }

          return @"CLMotionActivity::kTypeVehicularInHand";
        }

        else if (intValue == 61)
        {
          return @"CLMotionActivity::kTypeMachineWorkout";
        }

        else if (intValue == 62)
        {
          return @"CLMotionActivity::kTypeWorkout";
        }

        else
        {
          return @"CLMotionActivity::kTypeMultiSportTransition";
        }
      }

      else if (intValue <= 3)
      {
        if (intValue > 1)
        {
          if (intValue == 2)
          {
            return @"CLMotionActivity::kTypeStatic";
          }

          else
          {
            return @"CLMotionActivity::kTypeMoving";
          }
        }

        else
        {
          if (intValue)
          {
            if (intValue == 1)
            {
              return @"CLMotionActivity::kTypeFrozen";
            }

            goto LABEL_134;
          }

          return @"CLMotionActivity::kTypeUnknown";
        }
      }

      else if (intValue <= 5)
      {
        if (intValue == 4)
        {
          return @"CLMotionActivity::kTypeWalking";
        }

        else
        {
          return @"CLMotionActivity::kTypeDriving";
        }
      }

      else if (intValue == 6)
      {
        return @"CLMotionActivity::kTypeCycling";
      }

      else if (intValue == 7)
      {
        return @"CLMotionActivity::kTypeSemiStationary";
      }

      else
      {
        return @"CLMotionActivity::kTypeRunning";
      }
    }

    else if (intValue <= 2047)
    {
      if (intValue <= 99)
      {
        if (intValue > 65)
        {
          if (intValue != 66)
          {
            if (intValue == 73)
            {
              return @"CLMotionActivity::kTypeCount";
            }

            goto LABEL_134;
          }

          return @"CLMotionActivity::kTypePickleball";
        }

        else if (intValue == 64)
        {
          return @"CLMotionActivity::kTypeIndoorSoccer";
        }

        else
        {
          return @"CLMotionActivity::kTypeAustralianFootball";
        }
      }

      else if (intValue <= 2019)
      {
        if (intValue != 100)
        {
          if (intValue == 2010)
          {
            return @"CLMotionActivity::kTypeStationaryCycling";
          }

          goto LABEL_134;
        }

        return @"CLMotionActivity::kTypeCyclingLeg";
      }

      else
      {
        switch(intValue)
        {
          case 2020:
            return @"CLMotionActivity::kTypeCalisthenics";
          case 2022:
            return @"CLMotionActivity::kTypeFunctionalStrength";
          case 2024:
            return @"CLMotionActivity::kTypeCoreTraining";
          default:
            goto LABEL_134;
        }
      }
    }

    else if (intValue > 2100)
    {
      if (intValue <= 2149)
      {
        if (intValue != 2101)
        {
          if (intValue == 2105)
          {
            return @"CLMotionActivity::kTypePilates";
          }

          goto LABEL_134;
        }

        return @"CLMotionActivity::kTypeCoolDown";
      }

      else
      {
        switch(intValue)
        {
          case 2150:
            return @"CLMotionActivity::kTypeYoga";
          case 3015:
            return @"CLMotionActivity::kTypeDancing";
          case 3016:
            return @"CLMotionActivity::kTypeStepTraining";
          default:
            goto LABEL_134;
        }
      }
    }

    else if (intValue <= 2064)
    {
      if (intValue != 2048)
      {
        if (intValue == 2061)
        {
          return @"CLMotionActivity::kTypeCrossTraining";
        }

        goto LABEL_134;
      }

      return @"CLMotionActivity::kTypeElliptical";
    }

    else
    {
      switch(intValue)
      {
        case 2065:
          return @"CLMotionActivity::kTypeStairClimbing";
        case 2068:
          return @"CLMotionActivity::kTypeJumpRope";
        case 2071:
          return @"CLMotionActivity::kTypeRowing";
        default:
          goto LABEL_134;
      }
    }
  }

  else if (intValue > 15659)
  {
    if (intValue <= 18239)
    {
      if (intValue <= 15732)
      {
        if (intValue > 15674)
        {
          if (intValue != 15675)
          {
            if (intValue == 15711)
            {
              return @"CLMotionActivity::kTypeVolleyball";
            }

            goto LABEL_134;
          }

          return @"CLMotionActivity::kTypeTennis";
        }

        else
        {
          if (intValue != 15660)
          {
            if (intValue == 15670)
            {
              return @"CLMotionActivity::kTypeTaiChi";
            }

            goto LABEL_134;
          }

          return @"CLMotionActivity::kTypeTableTennis";
        }
      }

      else if (intValue <= 18049)
      {
        if (intValue != 15733)
        {
          if (intValue == 17150)
          {
            return @"CLMotionActivity::kTypeIndoorWalking";
          }

          goto LABEL_134;
        }

        return @"CLMotionActivity::kTypeTrackAndField";
      }

      else
      {
        switch(intValue)
        {
          case 18050:
            return @"CLMotionActivity::kTypeOutdoorRowing";
          case 18100:
            return @"CLMotionActivity::kTypePaddleSports";
          case 18200:
            return @"CLMotionActivity::kTypeScubaDiving";
          default:
            goto LABEL_134;
        }
      }
    }

    else if (intValue > 90121)
    {
      if (intValue <= 515620)
      {
        if (intValue != 90122)
        {
          if (intValue == 90603)
          {
            return @"CLMotionActivity::kTypeOutdoorWheelchair";
          }

          goto LABEL_134;
        }

        return @"CLMotionActivity::kTypeIndoorHandCycling";
      }

      else
      {
        switch(intValue)
        {
          case 515621:
            return @"CLMotionActivity::kTypeBaseball";
          case 515652:
            return @"CLMotionActivity::kTypeRacquetball";
          case 519150:
            return @"CLMotionActivity::kTypeSnowboarding";
          default:
            goto LABEL_134;
        }
      }
    }

    else if (intValue <= 19089)
    {
      if (intValue != 18240)
      {
        if (intValue == 19030)
        {
          return @"CLMotionActivity::kTypeIndoorSkatingSports";
        }

        goto LABEL_134;
      }

      return @"CLMotionActivity::kTypeSwimming";
    }

    else
    {
      switch(intValue)
      {
        case 19090:
          return @"CLMotionActivity::kTypeCrossCountrySkiing";
        case 19150:
          return @"CLMotionActivity::kTypeDownhillSkiing";
        case 90121:
          return @"CLMotionActivity::kTypeOutdoorHandCycling";
        default:
          goto LABEL_134;
      }
    }
  }

  else if (intValue <= 15254)
  {
    if (intValue <= 15099)
    {
      if (intValue > 15029)
      {
        if (intValue != 15030)
        {
          if (intValue == 15055)
          {
            return @"CLMotionActivity::kTypeBasketball";
          }

          goto LABEL_134;
        }

        return @"CLMotionActivity::kTypeBadminton";
      }

      else
      {
        if (intValue != 11805)
        {
          if (intValue == 12150)
          {
            return @"CLMotionActivity::kTypeIndoorRunning";
          }

          goto LABEL_134;
        }

        return @"CLMotionActivity::kTypePushingWheelchair";
      }
    }

    else if (intValue <= 15149)
    {
      if (intValue != 15100)
      {
        if (intValue == 15110)
        {
          return @"CLMotionActivity::kTypeKickboxing";
        }

        goto LABEL_134;
      }

      return @"CLMotionActivity::kTypeBoxing";
    }

    else
    {
      switch(intValue)
      {
        case 15150:
          return @"CLMotionActivity::kTypeCricket";
        case 15230:
          return @"CLMotionActivity::kTypeAmericanFootball";
        case 15250:
          return @"CLMotionActivity::kTypeDiscSports";
        default:
          goto LABEL_134;
      }
    }
  }

  else if (intValue > 15559)
  {
    if (intValue <= 15609)
    {
      if (intValue != 15560)
      {
        if (intValue == 15592)
        {
          return @"CLMotionActivity::kTypeOutdoorSkatingSports";
        }

        goto LABEL_134;
      }

      return @"CLMotionActivity::kTypeRugby";
    }

    else
    {
      switch(intValue)
      {
        case 15610:
          return @"CLMotionActivity::kTypeOutdoorSoccer";
        case 15620:
          return @"CLMotionActivity::kTypeSoftball";
        case 15652:
          return @"CLMotionActivity::kTypeSquash";
        default:
          goto LABEL_134;
      }
    }
  }

  else if (intValue <= 15349)
  {
    if (intValue != 15255)
    {
      if (intValue == 15330)
      {
        return @"CLMotionActivity::kTypeHandball";
      }

      goto LABEL_134;
    }

    return @"CLMotionActivity::kTypeGolfing";
  }

  else
  {
    switch(intValue)
    {
      case 15350:
        return @"CLMotionActivity::kTypeOutdoorHockey";
      case 15360:
        return @"CLMotionActivity::kTypeIndoorHockey";
      case 15460:
        return @"CLMotionActivity::kTypeLacrosse";
      default:
        goto LABEL_134;
    }
  }
}

- (id)JSONObjectWith_CLMotionActivity__Confidence:(id)confidence info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [confidence intValue];
    if (intValue < 3)
    {
      return *(&off_29F27EF78 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLMotionActivity::Confidence";
  v7[2] = @"raw value";
  v8[2] = confidence;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLMotionActivity:(id)activity info:(os_log_type_info_s *)info
{
  v20[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19[0] = @"type";
    v19[1] = @"expected type";
    v20[0] = @"decode failure";
    v20[1] = @"CLMotionActiviy";
    v19[2] = @"raw value";
    v20[2] = activity;
    v10 = MEMORY[0x29EDB8DC0];
    v11 = v20;
    v12 = v19;
LABEL_6:
    v13 = 3;
    return [v10 dictionaryWithObjects:v11 forKeys:v12 count:v13];
  }

  if ([activity length] != 136)
  {
    v17[0] = @"type";
    v17[1] = @"expected type";
    v18[0] = @"decode failure";
    v18[1] = @"CLMotionActiviy";
    v17[2] = @"raw value";
    v18[2] = activity;
    v10 = MEMORY[0x29EDB8DC0];
    v11 = v18;
    v12 = v17;
    goto LABEL_6;
  }

  bytes = [activity bytes];
  v8 = bytes[1];
  v9 = -[CLLogFormatter JSONObjectWith_CLMotionActivity__Type:info:](self, "JSONObjectWith_CLMotionActivity__Type:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:*bytes], info);
  v15[0] = @"type";
  v15[1] = @"confidence";
  v16[0] = v9;
  v16[1] = -[CLLogFormatter JSONObjectWith_CLMotionActivity__Confidence:info:](self, "JSONObjectWith_CLMotionActivity__Confidence:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:v8], info);
  v10 = MEMORY[0x29EDB8DC0];
  v11 = v16;
  v12 = v15;
  v13 = 2;
  return [v10 dictionaryWithObjects:v11 forKeys:v12 count:v13];
}

- (id)JSONObjectWith_CMWakeGestureWristOrientation:(id)orientation info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [orientation intValue];
    if (!intValue)
    {
      return @"Left";
    }

    if (intValue == 1)
    {
      return @"Right";
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CMWakeGestureWristOrientation";
  v7[2] = @"raw value";
  v8[2] = orientation;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CMWakeGestureCrownOrientation:(id)orientation info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [orientation intValue];
    if (!intValue)
    {
      return @"Left";
    }

    if (intValue == 1)
    {
      return @"Right";
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CMWakeGestureCrownOrientation";
  v7[2] = @"raw value";
  v8[2] = orientation;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CMWakeGestureState:(id)state info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [state intValue];
    if (intValue < 7)
    {
      return *(&off_29F27EF90 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CMWakeGestureState";
  v7[2] = @"raw value";
  v8[2] = state;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_RTLState:(id)state info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [state intValue];
    if (intValue < 0xAu)
    {
      return *(&off_29F27EFC8 + (intValue & 0xF));
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"GestureState";
  v7[2] = @"raw value";
  v8[2] = state;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_RTLGestureType:(id)type info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [type intValue];
    if (intValue < 0xAu)
    {
      return *(&off_29F27F018 + (intValue & 0xF));
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"GestureType";
  v7[2] = @"raw value";
  v8[2] = type;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CMMotionCoprocessorReply_Log:(id)log info:(os_log_type_info_s *)info
{
  v24[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([log length] == 72)
    {
      bytes = [log bytes];
      array = [MEMORY[0x29EDB8DE8] array];
      if (v16)
      {
        if (v16 >= 0x10u)
        {
          v7 = 16;
        }

        else
        {
          v7 = v16;
        }

        v8 = &v18;
        do
        {
          v9 = *v8++;
          [array addObject:{objc_msgSend(MEMORY[0x29EDBA070], "numberWithUnsignedInt:", v9)}];
          --v7;
        }

        while (v7);
      }

      v21[0] = @"flags";
      v22[0] = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v15];
      v21[1] = @"seq";
      v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v17];
      v21[2] = @"data";
      v22[1] = v10;
      v22[2] = array;
      v11 = MEMORY[0x29EDB8DC0];
      v12 = v22;
      v13 = v21;
    }

    else
    {
      v23[0] = @"type";
      v23[1] = @"expected type";
      v24[0] = @"decode failure";
      v24[1] = @"CMMotionCoprocessorReply::Log";
      v23[2] = @"raw value";
      v24[2] = log;
      v11 = MEMORY[0x29EDB8DC0];
      v12 = v24;
      v13 = v23;
    }
  }

  else
  {
    v19[0] = @"type";
    v19[1] = @"expected type";
    v20[0] = @"decode failure";
    v20[1] = @"CMMotionCoprocessorReply::Log";
    v19[2] = @"raw value";
    v20[2] = log;
    v11 = MEMORY[0x29EDB8DC0];
    v12 = v20;
    v13 = v19;
  }

  return [v11 dictionaryWithObjects:v12 forKeys:v13 count:3];
}

- (id)JSONObjectWith_CLSubHarvesterIdentifier:(id)identifier info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [identifier intValue];
    if (intValue < 0x10)
    {
      return *(&off_29F27F068 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLSubHarvesterIdentifier";
  v7[2] = @"raw value";
  v8[2] = identifier;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLWifiService_Type__ScanType:(id)type info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [type intValue] + 1;
    if (v5 < 0xF)
    {
      return *(&off_29F27F0E8 + v5);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLWifiService_Type::ScanType";
  v7[2] = @"raw value";
  v8[2] = type;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_RTRoutineMode:(id)mode info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [mode intValue];
    if (intValue < 3)
    {
      return *(&off_29F27F160 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"RTRoutineMode";
  v7[2] = @"raw value";
  v8[2] = mode;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_RTLocationOfInterestType:(id)type info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [type intValue] + 1;
    if (v5 < 5)
    {
      return *(&off_29F27F178 + v5);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"RTLocationOfInterestType";
  v7[2] = @"raw value";
  v8[2] = type;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_RBSTaskState:(id)state info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [state intValue];
    if (intValue < 5u)
    {
      return *(&off_29F27F1A0 + (intValue & 7));
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"RBSTaskState";
  v7[2] = @"raw value";
  v8[2] = state;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLAppMonitor_Type__Notification:(id)notification info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [notification intValue];
    if (intValue < 0xD)
    {
      return *(&off_29F27F1C8 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLAppMonitor_Type::Notification";
  v7[2] = @"raw value";
  v8[2] = notification;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith__CLLocationManagerStateTrackerState:(id)state info:(os_log_type_info_s *)info
{
  v41[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bytes = [state bytes];
    if ([state length] <= 0x50)
    {
      v6 = [state length];
    }

    else
    {
      v6 = 80;
    }

    memcpy(v12, bytes, v6);
    v38[0] = @"distanceFilter";
    v39[0] = [MEMORY[0x29EDBA070] numberWithDouble:v12[0]];
    v38[1] = @"desiredAccuracy";
    v39[1] = [MEMORY[0x29EDBA070] numberWithDouble:v12[1]];
    v38[2] = @"updatingLocation";
    v39[2] = [MEMORY[0x29EDBA070] numberWithBool:v13 & 1];
    v38[3] = @"requestingLocation";
    v39[3] = [MEMORY[0x29EDBA070] numberWithBool:v14 & 1];
    v38[4] = @"updatingHeading";
    v39[4] = [MEMORY[0x29EDBA070] numberWithBool:v15 & 1];
    v38[5] = @"headingFilter";
    v39[5] = [MEMORY[0x29EDBA070] numberWithDouble:v16];
    v38[6] = @"allowsLocationPrompts";
    v39[6] = [MEMORY[0x29EDBA070] numberWithBool:v17 & 1];
    v38[7] = @"allowsAlteredAccessoryLocations";
    v39[7] = [MEMORY[0x29EDBA070] numberWithBool:v18 & 1];
    v38[8] = @"dynamicAccuracyReductionEnabled";
    v39[8] = [MEMORY[0x29EDBA070] numberWithBool:v19 & 1];
    v38[9] = @"previousAuthorizationStatusValid";
    v39[9] = [MEMORY[0x29EDBA070] numberWithBool:v20 & 1];
    v38[10] = @"previousAuthorizationStatus";
    v39[10] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v21];
    v38[11] = @"limitsPrecision";
    v39[11] = [MEMORY[0x29EDBA070] numberWithBool:v22 & 1];
    v38[12] = @"activityType";
    v39[12] = [MEMORY[0x29EDBA070] numberWithInteger:v23];
    v38[13] = @"pausesLocationUpdatesAutomatically";
    v39[13] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v24];
    v38[14] = @"paused";
    v39[14] = [MEMORY[0x29EDBA070] numberWithBool:v25 & 1];
    v38[15] = @"allowsBackgroundLocationUpdates";
    v39[15] = [MEMORY[0x29EDBA070] numberWithBool:v26 & 1];
    v38[16] = @"showsBackgroundLocationIndicator";
    v39[16] = [MEMORY[0x29EDBA070] numberWithBool:v27 & 1];
    v38[17] = @"allowsMapCorrection";
    v39[17] = [MEMORY[0x29EDBA070] numberWithBool:v28 & 1];
    v38[18] = @"batchingLocation";
    v39[18] = [MEMORY[0x29EDBA070] numberWithBool:v29 & 1];
    v38[19] = @"updatingVehicleSpeed";
    v39[19] = [MEMORY[0x29EDBA070] numberWithBool:v30 & 1];
    v38[20] = @"updatingVehicleHeading";
    v39[20] = [MEMORY[0x29EDBA070] numberWithBool:v31 & 1];
    v38[21] = @"matchInfoEnabled";
    v39[21] = [MEMORY[0x29EDBA070] numberWithBool:v32 & 1];
    v38[22] = @"groundAltitudeEnabled";
    v39[22] = [MEMORY[0x29EDBA070] numberWithBool:v33 & 1];
    v38[23] = @"fusionInfoEnabled";
    v39[23] = [MEMORY[0x29EDBA070] numberWithBool:v34 & 1];
    v38[24] = @"courtesyPromptNeeded";
    v39[24] = [MEMORY[0x29EDBA070] numberWithBool:v35 & 1];
    v38[25] = @"isAuthorizedForWidgetUpdates";
    v39[25] = [MEMORY[0x29EDBA070] numberWithBool:v36 & 1];
    v38[26] = @"trackRunInfoEnabled";
    v39[26] = [MEMORY[0x29EDBA070] numberWithBool:v37 & 1];
    v7 = MEMORY[0x29EDB8DC0];
    v8 = v39;
    v9 = v38;
    v10 = 27;
  }

  else
  {
    v40[0] = @"type";
    v40[1] = @"expected type";
    v41[0] = @"decode failure";
    v41[1] = @"_CLLocationManagerStateTrackerState";
    v40[2] = @"raw value";
    v41[2] = state;
    v7 = MEMORY[0x29EDB8DC0];
    v8 = v41;
    v9 = v40;
    v10 = 3;
  }

  return [v7 dictionaryWithObjects:v8 forKeys:v9 count:v10];
}

- (id)JSONObjectWith__CLDaemonStatusStateTrackerState:(id)state info:(os_log_type_info_s *)info
{
  v23[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bytes = [state bytes];
    if ([state length] <= 0x28)
    {
      v8 = [state length];
    }

    else
    {
      v8 = 40;
    }

    memcpy(&v14, bytes, v8);
    v20[0] = @"batteryData";
    v21[0] = -[CLLogFormatter JSONObjectWith_CLDaemonStatus_Type__Battery:info:](self, "JSONObjectWith_CLDaemonStatus_Type__Battery:info:", [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:&v14 length:24 freeWhenDone:0], info);
    v20[1] = @"reachability";
    v21[1] = -[CLLogFormatter JSONObjectWith_CLDaemonStatus_Type__Reachability:info:](self, "JSONObjectWith_CLDaemonStatus_Type__Reachability:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:v15], info);
    v20[2] = @"thermalLevel";
    v21[2] = [MEMORY[0x29EDBA070] numberWithInt:v16];
    v20[3] = @"airplaneMode";
    v21[3] = [MEMORY[0x29EDBA070] numberWithBool:v17];
    v20[4] = @"batterySaverModeEnabled";
    v21[4] = [MEMORY[0x29EDBA070] numberWithBool:v18];
    v20[5] = @"restrictedMode";
    v21[5] = [MEMORY[0x29EDBA070] numberWithBool:v19];
    v9 = MEMORY[0x29EDB8DC0];
    v10 = v21;
    v11 = v20;
    v12 = 6;
  }

  else
  {
    v22[0] = @"type";
    v22[1] = @"expected type";
    v23[0] = @"decode failure";
    v23[1] = @"_CLDaemonStatusStateTrackerState";
    v22[2] = @"raw value";
    v23[2] = state;
    v9 = MEMORY[0x29EDB8DC0];
    v10 = v23;
    v11 = v22;
    v12 = 3;
  }

  return [v9 dictionaryWithObjects:v10 forKeys:v11 count:v12];
}

- (id)JSONObjectWith__CLClientManagerStateTrackerState:(id)state info:(os_log_type_info_s *)info
{
  v18[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bytes = [state bytes];
    if ([state length] <= 8)
    {
      v6 = [state length];
    }

    else
    {
      v6 = 8;
    }

    memcpy(&v13, bytes, v6);
    v15[0] = @"locationServicesEnabledStatus";
    v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v13];
    v15[1] = @"locationRestricted";
    v16[0] = v11;
    v16[1] = [MEMORY[0x29EDBA070] numberWithBool:v14 & 1];
    v7 = MEMORY[0x29EDB8DC0];
    v8 = v16;
    v9 = v15;
    v10 = 2;
  }

  else
  {
    v17[0] = @"type";
    v17[1] = @"expected type";
    v18[0] = @"decode failure";
    v18[1] = @"_CLClientManagerStateTrackerState";
    v17[2] = @"raw value";
    v18[2] = state;
    v7 = MEMORY[0x29EDB8DC0];
    v8 = v18;
    v9 = v17;
    v10 = 3;
  }

  return [v7 dictionaryWithObjects:v8 forKeys:v9 count:v10];
}

- (id)JSONObjectWith_CLClientRegistrationResult:(id)result info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [result intValue];
    if (intValue < 9)
    {
      return *(&off_29F27F230 + intValue);
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLClientRegistrationResult";
  v7[2] = @"raw value";
  v8[2] = result;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLSensorRecorder_Types__DataType:(id)type info:(os_log_type_info_s *)info
{
  v14[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x29EDBA0F8];
    intValue = [type intValue];
    if (intValue > 2)
    {
      v7 = &unk_2999F251E;
    }

    else
    {
      v7 = off_29F27F278[intValue];
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v7);
    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v8 = [v5 stringWithUTF8String:v9];
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v13[0] = @"type";
    v13[1] = @"expected type";
    v14[0] = @"decode failure";
    v14[1] = @"CLSensorRecorder_Types::DataType";
    v13[2] = @"raw value";
    v14[2] = type;
    return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  }

  return v8;
}

- (id)JSONObjectWith_CLSimulationLocationDeliveryBehavior:(id)behavior info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [behavior intValue];
    if (!intValue)
    {
      return @"PassThrough";
    }

    if (intValue == 1)
    {
      return @"ConsiderType";
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLSimulationLocationDeliveryBehavior";
  v7[2] = @"raw value";
  v8[2] = behavior;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLSimulationLocationRepeatBehavior:(id)behavior info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [behavior intValue];
    if (intValue < 3)
    {
      return off_29F27F290[intValue];
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLSimulationLocationRepeatBehavior";
  v7[2] = @"raw value";
  v8[2] = behavior;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_CLBarometerCalibration_Types__Context:(id)context info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [context intValue];
    if (intValue < 0xC && ((0x80Fu >> intValue) & 1) != 0)
    {
      return off_29F27F2A8[intValue];
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"CLBarometerCalibration_Types::Context::";
  v7[2] = @"raw value";
  v8[2] = context;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_NEVPNConnectivityState:(id)state info:(os_log_type_info_s *)info
{
  v8[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [state intValue];
    if (intValue < 6)
    {
      return off_29F27F308[intValue];
    }
  }

  v7[0] = @"type";
  v7[1] = @"expected type";
  v8[0] = @"decode failure";
  v8[1] = @"NEVPNConnectivityState";
  v7[2] = @"raw value";
  v8[2] = state;
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (id)JSONObjectWith_Encrypted_latitude:(id)encrypted_latitude info:(os_log_type_info_s *)info
{
  v10[1] = *MEMORY[0x29EDCA608];
  v7 = 0;
  v8 = 0;
  v4 = extractEncryptedData(encrypted_latitude, &v8, &v7);
  result = v7;
  if (!v7)
  {
    if (v8 >= 8)
    {
      v6 = *v4;
      v9 = @"lat";
      v10[0] = [MEMORY[0x29EDBA070] numberWithDouble:v6];
      return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      return &unk_2A20010F0;
    }
  }

  return result;
}

- (id)JSONObjectWith_Encrypted_longitude:(id)encrypted_longitude info:(os_log_type_info_s *)info
{
  v10[1] = *MEMORY[0x29EDCA608];
  v7 = 0;
  v8 = 0;
  v4 = extractEncryptedData(encrypted_longitude, &v8, &v7);
  result = v7;
  if (!v7)
  {
    if (v8 >= 8)
    {
      v6 = *v4;
      v9 = @"lon";
      v10[0] = [MEMORY[0x29EDBA070] numberWithDouble:v6];
      return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      return &unk_2A20010F0;
    }
  }

  return result;
}

- (id)JSONObjectWith_Encrypted_CLLocationCoordinate2D:(id)d info:(os_log_type_info_s *)info
{
  v12[2] = *MEMORY[0x29EDCA608];
  v9 = 0;
  v10 = 0;
  v4 = extractEncryptedData(d, &v10, &v9);
  result = v9;
  if (!v9)
  {
    if (v10 >= 0x10)
    {
      v6 = *v4;
      v7 = *(v4 + 1);
      v11[0] = @"lat";
      v8 = [MEMORY[0x29EDBA070] numberWithDouble:v6];
      v11[1] = @"lon";
      v12[0] = v8;
      v12[1] = [MEMORY[0x29EDBA070] numberWithDouble:v7];
      return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    }

    else
    {
      return &unk_2A20010A0;
    }
  }

  return result;
}

- (id)JSONObjectWith_Encrypted_CLClientLocation:(id)location info:(os_log_type_info_s *)info
{
  v18 = 0;
  v19 = 0;
  v6 = extractEncryptedData(location, &v19, &v18);
  v7 = v18;
  if (!v18)
  {
    if (v19 >= 0x9C)
    {
      v8 = *(v6 + 1);
      v16[0] = *v6;
      v16[1] = v8;
      v9 = *(v6 + 2);
      v10 = *(v6 + 3);
      v11 = *(v6 + 5);
      v16[4] = *(v6 + 4);
      v16[5] = v11;
      v16[2] = v9;
      v16[3] = v10;
      v12 = *(v6 + 6);
      v13 = *(v6 + 7);
      v14 = *(v6 + 8);
      *&v17[12] = *(v6 + 140);
      v16[7] = v13;
      *v17 = v14;
      v16[6] = v12;
      return -[CLLogFormatter JSONObjectWith_CLDaemonLocation:info:](self, "JSONObjectWith_CLDaemonLocation:info:", [MEMORY[0x29EDB8DA0] dataWithBytes:v16 length:156], info);
    }

    else
    {
      return &unk_2A20010C8;
    }
  }

  return v7;
}

@end