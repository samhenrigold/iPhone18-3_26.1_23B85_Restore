@interface NPHCallConfiguration
+ (id)callConfigurationWithIncomingCallOverrideName:(id)name incomingCallStatus:(int)status activeCallOverrideName:(id)overrideName activeCallStatus:(int)callStatus activeCallDisconnectedReason:(int)reason heldCallOverrideName:(id)callOverrideName heldCallStatus:(int)heldCallStatus outgoingCallOverrideName:(id)self0 outgoingCallStatus:(int)self1 isSOS:(BOOL)self2 audioMessageType:(unint64_t)self3 isAnsweringOnPhone:(BOOL)self4 source:(id)self5;
+ (void)log:(id)log withReason:(id)reason;
- (BOOL)hasEmergencyCall;
- (BOOL)hasHostedCall;
- (NPHCall)activeCall;
- (NPHCall)blockedCall;
- (NPHCall)callToAnswerOnPhone;
- (NPHCall)currentCall;
- (NPHCall)incomingCall;
- (NPHCall)remoteCall;
- (NPHCall)screeningCall;
- (NPHCall)sendingCall;
- (NPHCall)smartHoldingCall;
- (NPHCallConfiguration)init;
- (NPHCallConfiguration)initWithCalls:(id)calls andCallsOnDefaultPairedDevice:(id)device source:(id)source;
- (NSArray)callsEnded;
- (NSArray)callsEnding;
- (NSArray)callsFailed;
- (NSArray)callsNotDeclined;
- (id)copyWithCallsPassingTest:(id)test;
- (id)description;
- (id)mirrored;
- (void)_log;
- (void)disconnectAllCallsWithSource:(id)source;
- (void)disconnectAllNonEmergencyCallsWithSource:(id)source;
- (void)disconnectCurrentCall;
@end

@implementation NPHCallConfiguration

- (NPHCallConfiguration)init
{
  v3 = [[NPHCallConfigurationChangeSource alloc] initWithString:@"initial"];
  v4 = [(NPHCallConfiguration *)self initWithCalls:&__NSArray0__struct andCallsOnDefaultPairedDevice:&__NSArray0__struct source:v3];

  return v4;
}

- (NPHCallConfiguration)initWithCalls:(id)calls andCallsOnDefaultPairedDevice:(id)device source:(id)source
{
  callsCopy = calls;
  deviceCopy = device;
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = NPHCallConfiguration;
  v12 = [(NPHCallConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_calls, calls);
    objc_storeStrong(&v13->_callsOnDefaultPairedDevice, device);
    objc_storeStrong(&v13->_source, source);
  }

  return v13;
}

- (NSArray)callsEnding
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls objectsPassingTest:&stru_100014918];

  return v3;
}

- (NSArray)callsEnded
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls objectsPassingTest:&stru_100014938];

  return v3;
}

- (NSArray)callsNotDeclined
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls objectsPassingTest:&stru_100014958];

  return v3;
}

- (NPHCall)incomingCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls firstObjectPassingTest:&stru_100014978];

  return v3;
}

- (NPHCall)activeCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls firstObjectPassingTest:&stru_100014998];

  return v3;
}

- (NPHCall)sendingCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls firstObjectPassingTest:&stru_1000149B8];

  return v3;
}

- (NPHCall)currentCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [NPHCall currentCallFromCalls:calls];

  return v3;
}

- (NPHCall)remoteCall
{
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v4 = [callsOnDefaultPairedDevice firstObjectPassingTest:&stru_1000149D8];
  v5 = [callsOnDefaultPairedDevice firstObjectPassingTest:&stru_1000149F8];
  firstObject = [callsOnDefaultPairedDevice firstObject];
  callHandingOffToWatch = [(NPHCallConfiguration *)self callHandingOffToWatch];
  v8 = callHandingOffToWatch;
  if (firstObject)
  {
    v9 = firstObject;
  }

  else
  {
    v9 = callHandingOffToWatch;
  }

  if (v5)
  {
    v9 = v5;
  }

  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v10;
}

- (NPHCall)callToAnswerOnPhone
{
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v3 = [callsOnDefaultPairedDevice firstObjectPassingTest:&stru_100014A18];

  return v3;
}

- (NSArray)callsFailed
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls objectsPassingTest:&stru_100014A38];

  return v3;
}

- (NPHCall)blockedCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls firstObjectPassingTest:&stru_100014A58];

  return v3;
}

- (NPHCall)screeningCall
{
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v4 = [callsOnDefaultPairedDevice firstObjectPassingTest:&stru_100014A78];

  if (!v4)
  {
    calls = [(NPHCallConfiguration *)self calls];
    v4 = [calls firstObjectPassingTest:&stru_100014A98];
  }

  return v4;
}

- (NPHCall)smartHoldingCall
{
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v4 = [callsOnDefaultPairedDevice firstObjectPassingTest:&stru_100014AB8];

  if (!v4)
  {
    calls = [(NPHCallConfiguration *)self calls];
    v4 = [calls firstObjectPassingTest:&stru_100014AD8];
  }

  return v4;
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = NPHCallConfiguration;
  v3 = [(NPHCallConfiguration *)&v14 description];
  incomingCall = [(NPHCallConfiguration *)self incomingCall];
  v5 = [incomingCall description];
  calls = [(NPHCallConfiguration *)self calls];
  v7 = [calls description];
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v9 = [callsOnDefaultPairedDevice description];
  callToAnswerOnPhone = [(NPHCallConfiguration *)self callToAnswerOnPhone];
  v11 = [callToAnswerOnPhone description];
  v12 = [NSString stringWithFormat:@"%@, incoming %@, calls %@, callsOnDefaultPairedDevice %@, callToAnswerOnPhone %@", v3, v5, v7, v9, v11];

  return v12;
}

- (BOOL)hasEmergencyCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls hasObjectPassingTest:&stru_100014AF8];

  return v3;
}

- (BOOL)hasHostedCall
{
  calls = [(NPHCallConfiguration *)self calls];
  v3 = [calls hasObjectPassingTest:&stru_100014B18];

  return v3;
}

- (void)disconnectAllCallsWithSource:(id)source
{
  sourceCopy = source;
  calls = [(NPHCallConfiguration *)self calls];
  v6 = [calls objectsPassingTest:&stru_100014B38];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) disconnectWithReason:2 * (objc_msgSend(*(*(&v12 + 1) + 8 * v11) fromSource:{"status", v12) == 4), sourceCopy}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)disconnectCurrentCall
{
  currentCall = [(NPHCallConfiguration *)self currentCall];
  calls = [(NPHCallConfiguration *)self calls];
  v5 = [calls count];
  if (v5 == 1)
  {
    v6 = [NSString stringWithFormat:@"%s", "[NPHCallConfiguration disconnectCurrentCall]"];
    [currentCall disconnectWithReason:0 fromSource:v6];
  }

  else
  {
    v7 = sub_100001C24(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[NPHCallConfiguration disconnectCurrentCall]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: TUCallCenter.sharedInstance disconnectCurrentCallAndActivateHeld", buf, 0xCu);
    }

    v6 = +[TUCallCenter sharedInstance];
    [v6 disconnectCurrentCallAndActivateHeld];
  }
}

- (id)copyWithCallsPassingTest:(id)test
{
  testCopy = test;
  v5 = [NPHCallConfiguration alloc];
  calls = [(NPHCallConfiguration *)self calls];
  v7 = [calls objectsPassingTest:testCopy];
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v9 = [callsOnDefaultPairedDevice objectsPassingTest:testCopy];

  source = [(NPHCallConfiguration *)self source];
  v11 = [(NPHCallConfiguration *)v5 initWithCalls:v7 andCallsOnDefaultPairedDevice:v9 source:source];

  return v11;
}

- (id)mirrored
{
  v3 = NPHIsCerberusEnabled();
  v4 = [NPHCallConfiguration alloc];
  if (v3)
  {
    calls = [(NPHCallConfiguration *)self calls];
    callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
    v7 = [calls arrayByAddingObjectsFromArray:callsOnDefaultPairedDevice];
    source = [(NPHCallConfiguration *)self source];
    v9 = [(NPHCallConfiguration *)v4 initWithCalls:v7 andCallsOnDefaultPairedDevice:&__NSArray0__struct source:source];
  }

  else
  {
    calls = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
    callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self source];
    v9 = [(NPHCallConfiguration *)v4 initWithCalls:calls andCallsOnDefaultPairedDevice:&__NSArray0__struct source:callsOnDefaultPairedDevice];
  }

  return v9;
}

- (void)disconnectAllNonEmergencyCallsWithSource:(id)source
{
  sourceCopy = source;
  calls = [(NPHCallConfiguration *)self calls];
  v6 = [calls objectsPassingTest:&stru_100014B58];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) disconnectWithReason:2 * (objc_msgSend(*(*(&v12 + 1) + 8 * v11) fromSource:{"status", v12) == 4), sourceCopy}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (id)callConfigurationWithIncomingCallOverrideName:(id)name incomingCallStatus:(int)status activeCallOverrideName:(id)overrideName activeCallStatus:(int)callStatus activeCallDisconnectedReason:(int)reason heldCallOverrideName:(id)callOverrideName heldCallStatus:(int)heldCallStatus outgoingCallOverrideName:(id)self0 outgoingCallStatus:(int)self1 isSOS:(BOOL)self2 audioMessageType:(unint64_t)self3 isAnsweringOnPhone:(BOOL)self4 source:(id)self5
{
  v17 = *&status;
  nameCopy = name;
  overrideNameCopy = overrideName;
  callOverrideNameCopy = callOverrideName;
  outgoingCallOverrideNameCopy = outgoingCallOverrideName;
  sourceCopy = source;
  v20 = objc_opt_new();
  v21 = objc_opt_new();
  v22 = &CUTWeakLinkClass_ptr;
  v23 = &selRef_setSOSDisambiguationPrompt_;
  v77 = v21;
  v78 = v20;
  v76 = callOverrideNameCopy;
  if (nameCopy)
  {
    v24 = nameCopy;
    v25 = objc_opt_new();
    [v25 setMockDisplayName:v24];
    [v25 setMockLocalizedLabel:@"iPhone"];
    v26 = [TUSenderIdentity alloc];
    v27 = +[NSUUID UUID];
    v28 = +[NSUUID UUID];
    v29 = [[TUHandle alloc] initWithType:2 value:@"987654321"];
    v30 = [v26 initWithUUID:v27 accountUUID:v28 ISOCountryCode:@"us" localizedName:@"Primary" localizedShortName:@"P" localizedServiceName:@"service" handle:v29];
    [v25 setMockLocalSenderIdentity:v30];

    v23 = &selRef_setSOSDisambiguationPrompt_;
    v20 = v78;

    v21 = v77;
    [v25 setMockDestinationID:@"123456789"];
    [v25 setMockService:1];
    [v25 setMockStatus:v17];
    [v25 setEmergency:s];
    [v25 setMockSOS:s];
    [v25 setNph_audioMessageType:type];
    v31 = [[NPHCall alloc] initWithTUCall:v25];
    [v78 addObject:v31];

    v22 = &CUTWeakLinkClass_ptr;
    nameCopy = v24;
    callOverrideNameCopy = v76;
  }

  v32 = v22;
  if (overrideNameCopy)
  {
    v33 = nameCopy;
    v34 = [TUDialRequest alloc];
    v35 = +[TUCallCenter sharedInstance];
    providerManager = [v35 providerManager];
    telephonyProvider = [providerManager telephonyProvider];
    v38 = [v34 initWithProvider:telephonyProvider];

    v39 = objc_alloc(v32[113]);
    if (s)
    {
      v40 = @"911";
    }

    else
    {
      v40 = @"123456789";
    }

    v41 = [v39 initWithType:2 value:v40];
    [v38 setHandle:v41];

    if (s)
    {
      [v38 setDialType:1];
      [v38 setSOS:1];
    }

    v42 = objc_opt_new();
    [v42 setMockDisplayName:overrideNameCopy];
    [v42 setMockLocalizedLabel:@"iPhone"];
    v43 = [TUSenderIdentity alloc];
    v44 = +[NSUUID UUID];
    v45 = +[NSUUID UUID];
    v46 = [objc_alloc(v32[113]) initWithType:2 value:@"987654321"];
    v47 = [v43 initWithUUID:v44 accountUUID:v45 ISOCountryCode:@"us" localizedName:@"Primary" localizedShortName:@"P" localizedServiceName:@"service" handle:v46];
    [v42 setMockLocalSenderIdentity:v47];

    [v42 setMockDestinationID:@"123456789"];
    [v42 setMockService:1];
    [v42 setMockStatus:callStatus];
    [v42 setMockStartTime:CFAbsoluteTimeGetCurrent()];
    [v42 setMockDisconnectedReason:reason];
    [v42 setMockDialRequestForRedial:v38];
    [v42 setEmergency:s];
    [v42 setMockSOS:s];
    [v42 setNph_audioMessageType:type];
    v23 = &selRef_setSOSDisambiguationPrompt_;
    v48 = [[NPHCall alloc] initWithTUCall:v42];
    v20 = v78;
    [v78 addObject:v48];

    nameCopy = v33;
    callOverrideNameCopy = v76;
    v21 = v77;
  }

  if (outgoingCallOverrideNameCopy)
  {
    v49 = objc_opt_new();
    [v49 setMockDisplayName:outgoingCallOverrideNameCopy];
    [v49 setMockLocalizedLabel:@"iPhone"];
    v50 = [TUSenderIdentity alloc];
    v51 = +[NSUUID UUID];
    v52 = +[NSUUID UUID];
    v53 = [objc_alloc(v32[113]) initWithType:2 value:@"987654321"];
    v54 = [v50 initWithUUID:v51 accountUUID:v52 ISOCountryCode:@"us" localizedName:@"Primary" localizedShortName:@"P" localizedServiceName:@"service" handle:v53];
    [v49 setMockLocalSenderIdentity:v54];

    v23 = &selRef_setSOSDisambiguationPrompt_;
    v20 = v78;

    v21 = v77;
    [v49 setMockStatus:outgoingCallStatus];
    [v49 setMockService:1];
    [v49 setMockDestinationID:@"123456789"];
    [v49 setMockOutgoing:1];
    [v49 setEmergency:s];
    [v49 setMockSOS:s];
    [v49 setNph_audioMessageType:type];
    v55 = [[NPHCall alloc] initWithTUCall:v49];
    [v78 addObject:v55];
  }

  if (callOverrideNameCopy)
  {
    v56 = objc_opt_new();
    [v56 setMockDisplayName:callOverrideNameCopy];
    [v56 setMockLocalizedLabel:@"iPhone"];
    v57 = v32;
    v58 = v23;
    v59 = [TUSenderIdentity alloc];
    v60 = +[NSUUID UUID];
    v61 = +[NSUUID UUID];
    v62 = [objc_alloc(v57[113]) initWithType:2 value:@"987654321"];
    v63 = [v59 initWithUUID:v60 accountUUID:v61 ISOCountryCode:@"us" localizedName:@"Primary" localizedShortName:@"P" localizedServiceName:@"service" handle:v62];
    [v56 setMockLocalSenderIdentity:v63];

    v20 = v78;
    v21 = v77;

    [v56 setMockStatus:heldCallStatus];
    [v56 setMockService:1];
    [v56 setMockDestinationID:@"123456789"];
    [v56 setMockStartTime:CFAbsoluteTimeGetCurrent()];
    [v56 setEmergency:s];
    [v56 setMockSOS:s];
    [v56 setNph_audioMessageType:type];
    [v56 setWantsHoldMusic:phone];
    v64 = [objc_alloc((v58 + 151)) initWithTUCall:v56];
    if (phone)
    {
      v65 = v77;
    }

    else
    {
      v65 = v78;
    }

    [v65 addObject:v64];
  }

  v66 = [self alloc];
  v67 = [v20 copy];
  v68 = v21;
  v69 = [v21 copy];
  v70 = [v66 initWithCalls:v67 andCallsOnDefaultPairedDevice:v69 source:sourceCopy];

  return v70;
}

+ (void)log:(id)log withReason:(id)reason
{
  logCopy = log;
  reasonCopy = reason;
  v7 = sub_100001C24(reasonCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logCopy = [NSString stringWithValidatedFormat:reasonCopy validFormatSpecifiers:@"%p" error:0, logCopy];
    *buf = 138412290;
    v14 = logCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (logCopy)
  {
    _log = [logCopy _log];
  }

  else
  {
    v11 = sub_100001C24(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "\t<none>", buf, 2u);
    }
  }

  v12 = sub_100001C24(_log);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }
}

- (void)_log
{
  incomingCall = [(NPHCallConfiguration *)self incomingCall];
  [incomingCall logWithReason:@"incomingCall" indented:1];

  callToAnswerOnPhone = [(NPHCallConfiguration *)self callToAnswerOnPhone];
  [callToAnswerOnPhone logWithReason:@"callToAnswerOnPhone" indented:1];

  callEnded = [(NPHCallConfiguration *)self callEnded];
  [callEnded logWithReason:@"callEnded" indented:1];

  callHandingOff = [(NPHCallConfiguration *)self callHandingOff];
  [callHandingOff logWithReason:@"callHandingOff" indented:1];

  callHandingOffToWatch = [(NPHCallConfiguration *)self callHandingOffToWatch];
  [callHandingOffToWatch logWithReason:@"callHandingOffToWatch" indented:1];

  dialPrompt = [(NPHCallConfiguration *)self dialPrompt];
  [dialPrompt nph_logWithReason:@"dialPrompt" indented:1];

  redialPrompt = [(NPHCallConfiguration *)self redialPrompt];
  [redialPrompt nph_logWithReason:@"redialPrompt" indented:1];

  rejoinPrompt = [(NPHCallConfiguration *)self rejoinPrompt];
  [rejoinPrompt nph_logWithReason:@"rejoinPrompt" indented:1];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  calls = [(NPHCallConfiguration *)self calls];
  v12 = [calls countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v34;
    do
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(calls);
        }

        v18 = *(*(&v33 + 1) + 8 * v16);
        v14 = (v17 + 1);
        v19 = [NSString stringWithFormat:@"call #%d ", v17];
        [v18 logWithReason:v19 indented:1];

        v16 = v16 + 1;
        v17 = v14;
      }

      while (v13 != v16);
      v13 = [calls countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v13);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  callsOnDefaultPairedDevice = [(NPHCallConfiguration *)self callsOnDefaultPairedDevice];
  v21 = [callsOnDefaultPairedDevice countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v30;
    do
    {
      v25 = 0;
      v26 = v23;
      do
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(callsOnDefaultPairedDevice);
        }

        v27 = *(*(&v29 + 1) + 8 * v25);
        v23 = (v26 + 1);
        v28 = [NSString stringWithFormat:@"callOnDefaultPairedDevice #%d ", v26];
        [v27 logWithReason:v28 indented:1];

        v25 = v25 + 1;
        v26 = v23;
      }

      while (v22 != v25);
      v22 = [callsOnDefaultPairedDevice countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v22);
  }
}

@end