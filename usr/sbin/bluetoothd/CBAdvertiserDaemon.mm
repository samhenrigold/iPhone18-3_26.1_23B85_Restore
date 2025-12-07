@interface CBAdvertiserDaemon
+ (void)buildSafetyAlertsAdvertisingData:(id)data advertisingAddresses:(id *)addresses advertisingData:(id *)advertisingData advertiseRate:(int *)rate error:(id *)error;
- (BOOL)_wiProxUpdateLinger:(id *)linger active:(BOOL)active;
- (BOOL)needsToRun;
- (CBAdvertiserDaemon)init;
- (id)_encryptNearbyInfoV2Payload:(const void *)payload payloadLength:(unint64_t)length authTag:(id)tag irkData:(id)data keyInfo:(const void *)info keyInfoLength:(unint64_t)infoLength;
- (id)descriptionWithLevel:(int)level;
- (void)_activateWithCompletion:(id)completion;
- (void)_invalidate;
- (void)_invalidated;
- (void)_stackAppleTypeUpdateAdvertising:(id *)advertising;
- (void)_update;
- (void)_updateAirDropPayload:(id *)payload;
- (void)_updateAirPlaySourcePayload:(id *)payload;
- (void)_updateAirPlayTargetPayload:(id *)payload;
- (void)_updateDSInfoPayload:(id *)payload;
- (void)_updateFIDOAdvertising;
- (void)_updateFIDOPayload;
- (void)_updateHeySiriPayload:(id *)payload;
- (void)_updateIfNeededWithBlock:(id)block;
- (void)_updateNearbyActionNoWakePayload:(id *)payload;
- (void)_updateNearbyActionV1Payload:(id *)payload;
- (void)_updateNearbyActionV2Payload:(id *)payload;
- (void)_updateNearbyInfoPayload:(id *)payload;
- (void)_updateNearbyInfoV2Payload:(id *)payload;
- (void)_updateProximityServiceAdvertising;
- (void)_updateProximityServicePayload;
- (void)_updateSafetyAlertsAdvertising;
- (void)_updateSafetyAlertsPayload;
- (void)_updateSoftwareUpdateAdvertising;
- (void)_updateSoftwareUpdatePayload;
- (void)_updateSpatialInteractionAdvertising:(id *)advertising;
- (void)_updateSpatialInteractionPayload:(id *)payload;
- (void)_updateWatchSetupAdvertising;
- (void)_updateWatchSetupPayload;
- (void)_wiProxInvalidate:(id *)invalidate;
- (void)_wiProxUpdateAdvertising:(id *)advertising;
- (void)_wiProxUpdatePayload:(id *)payload payloadData:(id)data advertiseRate:(int)rate advertiseEnableEPA:(BOOL)a;
- (void)_wiproxAppendDescription:(id *)description context:(id *)context verbose:(BOOL)verbose;
- (void)_wiproxChanged:(id)changed;
- (void)activateWithCompletion:(id)completion;
- (void)advertisingAddressChanged;
- (void)invalidate;
- (void)setAdvertiserArray:(id)array;
- (void)setSpatialInteractionAdvertiseRate:(int)rate;
- (void)setSpatialInteractionFlags:(unsigned __int8)flags;
- (void)setSpatialInteractionIdentifiers:(id)identifiers;
- (void)setSpatialInteractionPresenceConfigData:(id)data;
- (void)setSpatialInteractionUWBConfigData:(id)data;
@end

@implementation CBAdvertiserDaemon

- (CBAdvertiserDaemon)init
{
  v16.receiver = self;
  v16.super_class = CBAdvertiserDaemon;
  v2 = [(CBAdvertiserDaemon *)&v16 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    label = v2->_airdropWiProxContext.label;
    v2->_airdropWiProxContext.label = @"AirDrop";

    v2->_airdropWiProxContext.payloadType = 5;
    v4 = v2->_airplaySourceWiProxContext.label;
    v2->_airplaySourceWiProxContext.label = @"AirPlaySource";

    v2->_airplaySourceWiProxContext.payloadType = 10;
    v5 = v2->_airplayTargetWiProxContext.label;
    v2->_airplayTargetWiProxContext.label = @"AirPlayTarget";

    v2->_airplayTargetWiProxContext.payloadType = 9;
    v2->_dsInfoWiProxContext.connectable = 1;
    v6 = v2->_dsInfoWiProxContext.label;
    v2->_dsInfoWiProxContext.label = @"DSInfo";

    v2->_dsInfoWiProxContext.payloadType = 24;
    v7 = v2->_heySiriWiProxContext.label;
    v2->_heySiriWiProxContext.label = @"HeySiri";

    v2->_heySiriWiProxContext.payloadType = 8;
    v2->_nearbyActionV1WiProxContext.connectable = 1;
    v8 = v2->_nearbyActionV1WiProxContext.label;
    v2->_nearbyActionV1WiProxContext.label = @"NearbyActionV1";

    v2->_nearbyActionV1WiProxContext.payloadType = 15;
    v9 = v2->_nearbyActionV2WiProxContext.label;
    v2->_nearbyActionV2WiProxContext.label = @"NearbyActionV2";

    v2->_nearbyActionV2WiProxContext.payloadType = 21;
    v2->_nearbyInfoWiProxContext.connectable = 1;
    v10 = v2->_nearbyInfoWiProxContext.label;
    v2->_nearbyInfoWiProxContext.label = @"NearbyInfo";

    v2->_nearbyInfoWiProxContext.payloadType = 16;
    v11 = v2->_nearbyInfoV2WiProxContext.label;
    v2->_nearbyInfoV2WiProxContext.label = @"NearbyInfoV2";

    v2->_nearbyInfoV2WiProxContext.payloadType = 22;
    v2->_nearbyActionNoWakeWiProxContext.connectable = 1;
    v12 = v2->_nearbyActionNoWakeWiProxContext.label;
    v2->_nearbyActionNoWakeWiProxContext.label = @"NearbyActionNoWake";

    v2->_nearbyActionNoWakeWiProxContext.payloadType = 26;
    v2->_spatialInteractionWiProxContext.advertiseEnableEPA = 0;
    v13 = v2->_spatialInteractionWiProxContext.label;
    v2->_spatialInteractionWiProxContext.label = @"SpatialInteraction";

    v2->_spatialInteractionWiProxContext.payloadType = 19;
    v14 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  v66 = 0;
  v5 = [objc_opt_class() description];
  NSAppendPrintF_safe(&v66, "%@: CID 0x%X, clients %d", v5, self->_clientID, [(NSArray *)self->_advertiserArray count]);
  v6 = v66;
  location = v6;

  fidoPayloadData = self->_fidoPayloadData;
  if (fidoPayloadData)
  {
    v65 = v6;
    v8 = fidoPayloadData;
    v9 = CUPrintNSDataHex();
    v10 = v9;
    fidoAdvertiseRate = self->_fidoAdvertiseRate;
    if (fidoAdvertiseRate <= 39)
    {
      if (fidoAdvertiseRate > 19)
      {
        if (fidoAdvertiseRate == 20)
        {
          v12 = "350 ms";
          goto LABEL_22;
        }
      }

      else
      {
        if (fidoAdvertiseRate == 10)
        {
          v12 = "2 seconds";
          goto LABEL_22;
        }

        if (fidoAdvertiseRate == 15)
        {
          v12 = "1022.5 ms";
          goto LABEL_22;
        }
      }
    }

    else if (fidoAdvertiseRate <= 44)
    {
      if (fidoAdvertiseRate == 40)
      {
        v12 = "181.25 ms";
        goto LABEL_22;
      }

      if (fidoAdvertiseRate == 42)
      {
        v12 = "120 ms";
        goto LABEL_22;
      }
    }

    else
    {
      switch(fidoAdvertiseRate)
      {
        case '-':
          v12 = "60 ms";
          goto LABEL_22;
        case '2':
          v12 = "30 ms";
          goto LABEL_22;
        case '<':
          v12 = "20 ms";
LABEL_22:
          NSAppendPrintF_safe(&v65, ", fdPD <%@>, %s", v9, v12);
          objc_storeStrong(&location, v65);

          goto LABEL_23;
      }
    }

    v12 = "270 ms";
    goto LABEL_22;
  }

LABEL_23:
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_airdropWiProxContext verbose:levelCopy < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_airplaySourceWiProxContext verbose:levelCopy < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_airplayTargetWiProxContext verbose:levelCopy < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_dsInfoWiProxContext verbose:levelCopy < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_heySiriWiProxContext verbose:levelCopy < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_nearbyActionV1WiProxContext verbose:levelCopy < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_nearbyActionV2WiProxContext verbose:levelCopy < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_nearbyInfoWiProxContext verbose:levelCopy < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_nearbyInfoV2WiProxContext verbose:levelCopy < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_nearbyActionNoWakeWiProxContext verbose:levelCopy < 0x1F];
  [(CBAdvertiserDaemon *)self _wiproxAppendDescription:&location context:&self->_spatialInteractionWiProxContext verbose:levelCopy < 0x1F];
  proximityServicePayload = self->_proximityServicePayload;
  if (!proximityServicePayload)
  {
    goto LABEL_45;
  }

  v64 = location;
  proximityServiceSubType = self->_proximityServiceSubType;
  v15 = proximityServicePayload;
  v16 = CUPrintNSDataHex();
  v17 = v16;
  proximityServiceAdvertiseRate = self->_proximityServiceAdvertiseRate;
  if (proximityServiceAdvertiseRate <= 39)
  {
    if (proximityServiceAdvertiseRate > 19)
    {
      if (proximityServiceAdvertiseRate == 20)
      {
        v19 = "350 ms";
        goto LABEL_44;
      }
    }

    else
    {
      if (proximityServiceAdvertiseRate == 10)
      {
        v19 = "2 seconds";
        goto LABEL_44;
      }

      if (proximityServiceAdvertiseRate == 15)
      {
        v19 = "1022.5 ms";
        goto LABEL_44;
      }
    }

    goto LABEL_35;
  }

  if (proximityServiceAdvertiseRate <= 44)
  {
    if (proximityServiceAdvertiseRate == 40)
    {
      v19 = "181.25 ms";
      goto LABEL_44;
    }

    if (proximityServiceAdvertiseRate == 42)
    {
      v19 = "120 ms";
      goto LABEL_44;
    }

    goto LABEL_35;
  }

  if (proximityServiceAdvertiseRate == 45)
  {
    v19 = "60 ms";
    goto LABEL_44;
  }

  if (proximityServiceAdvertiseRate == 50)
  {
    v19 = "30 ms";
    goto LABEL_44;
  }

  if (proximityServiceAdvertiseRate != 60)
  {
LABEL_35:
    v19 = "270 ms";
    goto LABEL_44;
  }

  v19 = "20 ms";
LABEL_44:
  NSAppendPrintF_safe(&v64, ", ProximityService subType=%u, payload=<%@>, advertiseRate=%s", proximityServiceSubType, v16, v19);
  objc_storeStrong(&location, v64);

LABEL_45:
  saAdvAddresses = self->_saAdvAddresses;
  if (saAdvAddresses)
  {
    v63 = location;
    v21 = saAdvAddresses;
    v22 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v63, ", saAD %@,", v22);
    objc_storeStrong(&location, v63);
  }

  saPayloadSegments = self->_saPayloadSegments;
  if (saPayloadSegments)
  {
    obj = location;
    v24 = saPayloadSegments;
    v25 = CUPrintNSObjectOneLine();
    v26 = v25;
    saAdvertiseRate = self->_saAdvertiseRate;
    if (saAdvertiseRate <= 39)
    {
      if (saAdvertiseRate > 19)
      {
        if (saAdvertiseRate == 20)
        {
          v28 = "350 ms";
          goto LABEL_68;
        }
      }

      else
      {
        if (saAdvertiseRate == 10)
        {
          v28 = "2 seconds";
          goto LABEL_68;
        }

        if (saAdvertiseRate == 15)
        {
          v28 = "1022.5 ms";
          goto LABEL_68;
        }
      }
    }

    else if (saAdvertiseRate <= 44)
    {
      if (saAdvertiseRate == 40)
      {
        v28 = "181.25 ms";
        goto LABEL_68;
      }

      if (saAdvertiseRate == 42)
      {
        v28 = "120 ms";
        goto LABEL_68;
      }
    }

    else
    {
      switch(saAdvertiseRate)
      {
        case '-':
          v28 = "60 ms";
          goto LABEL_68;
        case '2':
          v28 = "30 ms";
          goto LABEL_68;
        case '<':
          v28 = "20 ms";
LABEL_68:
          NSAppendPrintF_safe(&obj, ", saPD %@, %s", v25, v28);
          objc_storeStrong(&location, obj);

          goto LABEL_69;
      }
    }

    v28 = "270 ms";
    goto LABEL_68;
  }

LABEL_69:
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    goto LABEL_97;
  }

  swupActionType = self->_swupActionType;
  if (self->_swupActionType)
  {
    v61 = location;
    if (swupActionType > 3)
    {
      v30 = "?";
    }

    else
    {
      v30 = (&off_100AE1080)[swupActionType - 1];
    }

    swupAdvertiseRate = self->_swupAdvertiseRate;
    if (swupAdvertiseRate <= 39)
    {
      if (swupAdvertiseRate > 19)
      {
        if (swupAdvertiseRate == 20)
        {
          v32 = "350 ms";
          goto LABEL_94;
        }
      }

      else
      {
        if (swupAdvertiseRate == 10)
        {
          v32 = "2 seconds";
          goto LABEL_94;
        }

        if (swupAdvertiseRate == 15)
        {
          v32 = "1022.5 ms";
          goto LABEL_94;
        }
      }
    }

    else if (swupAdvertiseRate <= 44)
    {
      if (swupAdvertiseRate == 40)
      {
        v32 = "181.25 ms";
        goto LABEL_94;
      }

      if (swupAdvertiseRate == 42)
      {
        v32 = "120 ms";
        goto LABEL_94;
      }
    }

    else
    {
      switch(swupAdvertiseRate)
      {
        case '-':
          v32 = "60 ms";
          goto LABEL_94;
        case '2':
          v32 = "30 ms";
          goto LABEL_94;
        case '<':
          v32 = "20 ms";
LABEL_94:
          NSAppendPrintF_safe(&v61, ", suA %s %s ", v30, v32);
          objc_storeStrong(&location, v61);
          goto LABEL_95;
      }
    }

    v32 = "270 ms";
    goto LABEL_94;
  }

LABEL_95:
  swupPayloadDataArray = self->_swupPayloadDataArray;
  if (swupPayloadDataArray)
  {
    v60 = location;
    v34 = swupPayloadDataArray;
    v35 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v60, ", suD %@,", v35);
    objc_storeStrong(&location, v60);
  }

LABEL_97:
  if (self->_spatialInteractionFlags)
  {
    v59 = location;
    v36 = CUPrintFlags32();
    NSAppendPrintF_safe(&v59, ", siFl %@", v36);
    objc_storeStrong(&location, v59);
  }

  spatialInteractionIdentifiers = self->_spatialInteractionIdentifiers;
  if (spatialInteractionIdentifiers)
  {
    v58 = location;
    v38 = spatialInteractionIdentifiers;
    v39 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v58, ", siID %@", v39);
    objc_storeStrong(&location, v58);
  }

  spatialInteractionPayloadData = self->_spatialInteractionPayloadData;
  if (spatialInteractionPayloadData)
  {
    v57 = location;
    v41 = spatialInteractionPayloadData;
    NSAppendPrintF_safe(&v57, ", siPD <%@>", v41);
    objc_storeStrong(&location, v57);
  }

  spatialInteractionUWBConfigData = self->_spatialInteractionUWBConfigData;
  if (spatialInteractionUWBConfigData)
  {
    v56 = location;
    v43 = spatialInteractionUWBConfigData;
    NSAppendPrintF_safe(&v56, ", siUC <%@>", v43);
    objc_storeStrong(&location, v56);
  }

  if (levelCopy <= 0x1E)
  {
    spatialInteractionWiProxUUID = self->_spatialInteractionWiProxUUID;
    if (spatialInteractionWiProxUUID)
    {
      v55 = location;
      v45 = spatialInteractionWiProxUUID;
      NSAppendPrintF_safe(&v55, ", siWU <%@>", v45);
      objc_storeStrong(&location, v55);
    }
  }

  watchSetupPayloadData = self->_watchSetupPayloadData;
  if (watchSetupPayloadData)
  {
    v54 = location;
    v47 = watchSetupPayloadData;
    v48 = CUPrintNSDataHex();
    v49 = v48;
    watchSetupAdvertiseRate = self->_watchSetupAdvertiseRate;
    if (watchSetupAdvertiseRate <= 39)
    {
      if (watchSetupAdvertiseRate > 19)
      {
        if (watchSetupAdvertiseRate == 20)
        {
          v51 = "350 ms";
          goto LABEL_129;
        }
      }

      else
      {
        if (watchSetupAdvertiseRate == 10)
        {
          v51 = "2 seconds";
          goto LABEL_129;
        }

        if (watchSetupAdvertiseRate == 15)
        {
          v51 = "1022.5 ms";
          goto LABEL_129;
        }
      }
    }

    else if (watchSetupAdvertiseRate <= 44)
    {
      if (watchSetupAdvertiseRate == 40)
      {
        v51 = "181.25 ms";
        goto LABEL_129;
      }

      if (watchSetupAdvertiseRate == 42)
      {
        v51 = "120 ms";
        goto LABEL_129;
      }
    }

    else
    {
      switch(watchSetupAdvertiseRate)
      {
        case '-':
          v51 = "60 ms";
          goto LABEL_129;
        case '2':
          v51 = "30 ms";
          goto LABEL_129;
        case '<':
          v51 = "20 ms";
LABEL_129:
          NSAppendPrintF_safe(&v54, ", wsPD <%@>, %s", v48, v51);
          objc_storeStrong(&location, v54);

          goto LABEL_130;
      }
    }

    v51 = "270 ms";
    goto LABEL_129;
  }

LABEL_130:
  v52 = location;

  return v52;
}

- (void)advertisingAddressChanged
{
  selfCopy = self;
  if (dword_100B50E30 <= 30)
  {
    if (dword_100B50E30 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100807CC0(self, a2, v2);
    }
  }

  selfCopy->_addressChanged = 1;

  [(CBAdvertiserDaemon *)selfCopy _updateIfNeededWithBlock:&stru_100AE0F98];
}

- (void)setAdvertiserArray:(id)array
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100121B28;
  v5[3] = &unk_100AE0FC0;
  v6 = [array copy];
  selfCopy = self;
  v4 = v6;
  [(CBAdvertiserDaemon *)self _updateIfNeededWithBlock:v5];
}

- (void)setSpatialInteractionAdvertiseRate:(int)rate
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100121C50;
  v3[3] = &unk_100AE0FE8;
  rateCopy = rate;
  v3[4] = self;
  [(CBAdvertiserDaemon *)self _updateIfNeededWithBlock:v3];
}

- (void)setSpatialInteractionFlags:(unsigned __int8)flags
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100121CF0;
  v3[3] = &unk_100AE1010;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiserDaemon *)self _updateIfNeededWithBlock:v3];
}

- (void)setSpatialInteractionIdentifiers:(id)identifiers
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100121DAC;
  v5[3] = &unk_100AE0FC0;
  v6 = [identifiers copy];
  selfCopy = self;
  v4 = v6;
  [(CBAdvertiserDaemon *)self _updateIfNeededWithBlock:v5];
}

- (void)setSpatialInteractionUWBConfigData:(id)data
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100121EFC;
  v5[3] = &unk_100AE0FC0;
  v6 = [data copy];
  selfCopy = self;
  v4 = v6;
  [(CBAdvertiserDaemon *)self _updateIfNeededWithBlock:v5];
}

- (void)setSpatialInteractionPresenceConfigData:(id)data
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10012204C;
  v5[3] = &unk_100AE0FC0;
  v6 = [data copy];
  selfCopy = self;
  v4 = v6;
  [(CBAdvertiserDaemon *)self _updateIfNeededWithBlock:v5];
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    dispatchQueue = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001221B8;
    v7[3] = &unk_100AE1038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(dispatchQueue, v7);
  }
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_invalidateCalled)
  {
    v4 = CBErrorF(4294896148, "Activate after invalidate");
    if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_100807D20(self, v4);
    }

    completionCopy[2](completionCopy, v4);
  }

  else
  {
    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_100807CDC(self);
    }

    if (!self->_wiproxObservering)
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 addObserver:self selector:"_wiproxChanged:" name:@"WPDaemonServerStateChanged" object:0];
      self->_wiproxObservering = 1;
    }

    [(CBAdvertiserDaemon *)self _update];
    completionCopy[2](completionCopy, 0);
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001223A0;
  block[3] = &unk_100ADF5B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (self->_wiproxObservering)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"WPDaemonServerStateChanged" object:0];
    self->_wiproxObservering = 0;
  }

  advertisingManager = [qword_100BC7DB0 advertisingManager];
  [(CBStackBLEAdvertiser *)self->_fidoStackAdvertiser invalidate];
  fidoStackAdvertiser = self->_fidoStackAdvertiser;
  self->_fidoStackAdvertiser = 0;

  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_airdropWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_airplaySourceWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_airplayTargetWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_dsInfoWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_heySiriWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_nearbyActionV1WiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_nearbyActionV2WiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_nearbyInfoWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_nearbyInfoV2WiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_nearbyActionNoWakeWiProxContext];
  [(CBAdvertiserDaemon *)self _wiProxInvalidate:&self->_spatialInteractionWiProxContext];
  [(CBStackBLEAdvertiser *)self->_proximityServiceStackAdvertiser invalidate];
  proximityServiceStackAdvertiser = self->_proximityServiceStackAdvertiser;
  self->_proximityServiceStackAdvertiser = 0;

  [(CBStackBLEAdvertiser *)self->_saStackAdvertiser invalidate];
  saStackAdvertiser = self->_saStackAdvertiser;
  self->_saStackAdvertiser = 0;

  if (_os_feature_enabled_impl())
  {
    [(CBStackBLEAdvertiser *)self->_swupStackAdvertiser invalidate];
    swupStackAdvertiser = self->_swupStackAdvertiser;
    self->_swupStackAdvertiser = 0;
  }

  v8 = self->_spatialInteractionWiProxUUID;
  v11 = self->_spatialInteractionAdvertisingRequest;
  if (v11)
  {
    v12 = advertisingManager;
    if (advertisingManager && v8)
    {
      if (dword_100B50E30 <= 30)
      {
        if (dword_100B50E30 != -1 || (v12 = _LogCategory_Initialize(), v12))
        {
          sub_100807DD8(v12, v9, v10);
        }
      }

      [advertisingManager removeAdvertisingRequest:v11 forDaemon:v8];
    }

    spatialInteractionAdvertisingRequest = self->_spatialInteractionAdvertisingRequest;
    self->_spatialInteractionAdvertisingRequest = 0;
  }

  [(CBStackBLEAdvertiser *)self->_appleTypeStackAdvertiser invalidate];
  appleTypeStackAdvertiser = self->_appleTypeStackAdvertiser;
  self->_appleTypeStackAdvertiser = 0;

  [(CBStackBLEAdvertiser *)self->_watchSetupStackAdvertiser invalidate];
  watchSetupStackAdvertiser = self->_watchSetupStackAdvertiser;
  self->_watchSetupStackAdvertiser = 0;

  [(CBAdvertiserDaemon *)self _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateCalled = 1;
    v8 = objc_retainBlock(self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    stateChangedHandler = self->_stateChangedHandler;
    self->_stateChangedHandler = 0;

    v7 = v8;
    if (v8)
    {
      v5 = (*(v8 + 2))(v8);
      v7 = v8;
    }

    self->_invalidateDone = 1;
    if (dword_100B50E30 <= 30)
    {
      if (dword_100B50E30 != -1 || (v5 = _LogCategory_Initialize(), v7 = v8, v5))
      {
        sub_100807DF4(v5, v7, v6);
        v7 = v8;
      }
    }
  }
}

- (BOOL)needsToRun
{
  if (self->_airdropWiProxContext.payloadData)
  {
    return 1;
  }

  return self->_airplaySourceWiProxContext.payloadData || self->_airplayTargetWiProxContext.payloadData || self->_nearbyActionV1WiProxContext.payloadData || self->_nearbyActionV2WiProxContext.payloadData || self->_nearbyInfoWiProxContext.payloadData || self->_nearbyInfoV2WiProxContext.payloadData || self->_nearbyActionNoWakeWiProxContext.payloadData || [(NSArray *)self->_saPayloadSegments count]|| _os_feature_enabled_impl() && [(NSArray *)self->_swupPayloadDataArray count];
}

- (void)_updateIfNeededWithBlock:(id)block
{
  if ((*(block + 2))(block, a2) && self->_activateCalled && !self->_changesPending)
  {
    self->_changesPending = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100122898;
    block[3] = &unk_100ADF5B8;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_update
{
  if (!self->_invalidateCalled)
  {
    if (self->_changesPending)
    {
      self->_changesPending = 0;
      [(CBAdvertiserDaemon *)self _updateFIDOPayload];
      [(CBAdvertiserDaemon *)self _updateAirDropPayload:&self->_airdropWiProxContext];
      [(CBAdvertiserDaemon *)self _updateAirPlaySourcePayload:&self->_airplaySourceWiProxContext];
      [(CBAdvertiserDaemon *)self _updateAirPlayTargetPayload:&self->_airplayTargetWiProxContext];
      [(CBAdvertiserDaemon *)self _updateDSInfoPayload:&self->_dsInfoWiProxContext];
      [(CBAdvertiserDaemon *)self _updateHeySiriPayload:&self->_heySiriWiProxContext];
      [(CBAdvertiserDaemon *)self _updateNearbyActionV1Payload:&self->_nearbyActionV1WiProxContext];
      [(CBAdvertiserDaemon *)self _updateNearbyActionV2Payload:&self->_nearbyActionV2WiProxContext];
      [(CBAdvertiserDaemon *)self _updateNearbyInfoPayload:&self->_nearbyInfoWiProxContext];
      [(CBAdvertiserDaemon *)self _updateNearbyInfoV2Payload:&self->_nearbyInfoV2WiProxContext];
      [(CBAdvertiserDaemon *)self _updateNearbyActionNoWakePayload:&self->_nearbyActionNoWakeWiProxContext];
      [(CBAdvertiserDaemon *)self _updateProximityServicePayload];
      if (_os_feature_enabled_impl() && GestaltGetDeviceClass() == 1)
      {
        [(CBAdvertiserDaemon *)self _updateSafetyAlertsPayload];
      }

      if (_os_feature_enabled_impl())
      {
        [(CBAdvertiserDaemon *)self _updateSoftwareUpdatePayload];
      }

      [(CBAdvertiserDaemon *)self _updateSpatialInteractionPayload:&self->_spatialInteractionWiProxContext];
      [(CBAdvertiserDaemon *)self _updateWatchSetupPayload];
    }

    [(CBAdvertiserDaemon *)self _updateFIDOAdvertising];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_airdropWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_airplaySourceWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_airplayTargetWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_dsInfoWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_heySiriWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_nearbyActionV1WiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_nearbyActionV2WiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_nearbyInfoWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_nearbyInfoV2WiProxContext];
    [(CBAdvertiserDaemon *)self _updateProximityServiceAdvertising];
    if (_os_feature_enabled_impl() && GestaltGetDeviceClass() == 1)
    {
      [(CBAdvertiserDaemon *)self _updateSafetyAlertsAdvertising];
    }

    if (_os_feature_enabled_impl())
    {
      [(CBAdvertiserDaemon *)self _updateSoftwareUpdateAdvertising];
    }

    [(CBAdvertiserDaemon *)self _updateSpatialInteractionAdvertising:&self->_spatialInteractionWiProxContext];
    [(CBAdvertiserDaemon *)self _wiProxUpdateAdvertising:&self->_nearbyActionNoWakeWiProxContext];
    [(CBAdvertiserDaemon *)self _updateWatchSetupAdvertising];
    self->_addressChanged = 0;
    if (self->_stateChanged)
    {
      self->_stateChanged = 0;
      v3 = objc_retainBlock(self->_stateChangedHandler);
      if (v3)
      {
        v4 = v3;
        v3[2]();
        v3 = v4;
      }
    }
  }
}

- (void)_stackAppleTypeUpdateAdvertising:(id *)advertising
{
  v5 = advertising->var10;
  p_appleTypeStackAdvertiser = &self->_appleTypeStackAdvertiser;
  appleTypeStackAdvertiser = self->_appleTypeStackAdvertiser;
  v11 = v5;
  if (!v5)
  {
    if (!appleTypeStackAdvertiser)
    {
LABEL_21:
      advertising->var7 = 0;
      goto LABEL_22;
    }

    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_1008080F0();
    }

    [(CBStackBLEAdvertiser *)*p_appleTypeStackAdvertiser invalidate];
    v9 = *p_appleTypeStackAdvertiser;
    *p_appleTypeStackAdvertiser = 0;
LABEL_20:

    goto LABEL_21;
  }

  v8 = appleTypeStackAdvertiser;
  if (v8)
  {
    v9 = v8;
    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_100807E10(advertising);
    }

    goto LABEL_17;
  }

  if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_100807F40(advertising);
  }

  [(CBStackAdaptor *)self->_stackAdaptor bleAdvertiserClass];
  v10 = objc_alloc_init(objc_opt_class());
  if (v10)
  {
    v9 = v10;
    objc_storeStrong(&self->_appleTypeStackAdvertiser, v10);
    [(CBStackBLEAdvertiser *)v9 setDispatchQueue:self->_dispatchQueue];
LABEL_17:
    [(CBStackBLEAdvertiser *)v9 setAdvertiseRate:advertising->var5];
    [(CBStackBLEAdvertiser *)v9 setAdvertiseEnableEPA:advertising->var4];
    if (advertising->var3 == 15)
    {
      [(CBStackBLEAdvertiser *)v9 setNearbyActionData:v11];
    }

    [(CBStackBLEAdvertiser *)v9 activate];
    goto LABEL_20;
  }

  sub_100808070(advertising);
LABEL_22:
}

- (void)_wiproxAppendDescription:(id *)description context:(id *)context verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  v8 = context->var10;
  if (!v8)
  {
    goto LABEL_26;
  }

  v21 = *description;
  var2 = context->var2;
  v10 = v21;
  v11 = CUPrintNSDataHex();
  v12 = v11;
  var5 = context->var5;
  if (var5 <= 39)
  {
    if (var5 <= 19)
    {
      if (var5 != 10)
      {
        if (var5 == 15)
        {
          v14 = "1022.5 ms";
          goto LABEL_22;
        }

        goto LABEL_13;
      }

      v14 = "2 seconds";
      goto LABEL_22;
    }

    if (var5 == 20)
    {
      v14 = "350 ms";
      goto LABEL_22;
    }

LABEL_13:
    v14 = "270 ms";
    goto LABEL_22;
  }

  if (var5 <= 44)
  {
    if (var5 == 40)
    {
      v14 = "181.25 ms";
      goto LABEL_22;
    }

    if (var5 == 42)
    {
      v14 = "120 ms";
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  switch(var5)
  {
    case '-':
      v14 = "60 ms";
      break;
    case '2':
      v14 = "30 ms";
      break;
    case '<':
      v14 = "20 ms";
      break;
    default:
      goto LABEL_13;
  }

LABEL_22:
  NSAppendPrintF_safe(&v21, ", %@ <%@>, %s", var2, v11, v14);
  v15 = v21;

  if (verboseCopy)
  {
    var11 = context->var11;
    if (var11)
    {
      v20 = v15;
      v17 = var11;
      NSAppendPrintF_safe(&v20, ", WPID <%@>", v17);
      v18 = v20;

      v15 = v18;
    }
  }

  v19 = *description;
  *description = v15;

LABEL_26:
}

- (void)_wiproxChanged:(id)changed
{
  changedCopy = changed;
  v7 = changedCopy;
  if (dword_100B50E30 <= 30)
  {
    if (dword_100B50E30 != -1 || (changedCopy = _LogCategory_Initialize(), changedCopy))
    {
      sub_100808130(changedCopy, v5, v6);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100122F34;
  block[3] = &unk_100ADF5B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_wiProxInvalidate:(id *)invalidate
{
  if (invalidate->var8 && dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10080814C();
  }

  invalidate->var8 = 0;
  var9 = invalidate->var9;
  if (var9)
  {
    v5 = var9;
    dispatch_source_cancel(v5);
    v6 = invalidate->var9;
    invalidate->var9 = 0;
  }

  v12 = invalidate->var11;
  v7 = invalidate->var6;
  if (v7)
  {
    advertisingManager = [qword_100BC7DB0 advertisingManager];
    if (advertisingManager)
    {
      v9 = v12 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_10080818C(&invalidate->var2);
      }

      [advertisingManager removeAdvertisingRequest:v7 forDaemon:v12];
    }

    var6 = invalidate->var6;
    invalidate->var6 = 0;

    var12 = invalidate->var12;
    invalidate->var12 = 0;
  }
}

- (void)_wiProxUpdateAdvertising:(id *)advertising
{
  if (advertising->var7 || self->_addressChanged)
  {
    if (-[CBDaemonServer prefWiProxAdvertising](self->_daemonServer, "prefWiProxAdvertising") && ([qword_100BC7DB0 advertisingManager], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = v5;
      state = [v5 state];
      if (state == 3)
      {
        v7 = advertising->var11;
        if (!v7)
        {
          v7 = +[NSUUID UUID];
          objc_storeStrong(&advertising->var11, v7);
        }

        v8 = advertising->var10;
        p_var6 = &advertising->var6;
        v10 = advertising->var6;
        if (v10)
        {
          if (v8)
          {
            v11 = "for restart";
          }

          else
          {
            v11 = "";
          }

          if (dword_100B50E30 < 31 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
          {
            if (self->_addressChanged)
            {
              v12 = "for address change";
            }

            else
            {
              v12 = v11;
            }

            LogPrintF_safe(&dword_100B50E30, "[CBAdvertiserDaemon _wiProxUpdateAdvertising:]", 30, "%@ advertise WP stop %s", advertising->var2, v12);
          }

          [v25 removeAdvertisingRequest:v10 forDaemon:v7];
          v14 = *p_var6;
          *p_var6 = 0;
        }

        if (v8)
        {
          v15 = [WPAdvertisingRequest requestForClientType:advertising->var3];
          objc_storeStrong(&advertising->var6, v15);
          [v15 setAdvertisingData:v8];
          var5 = advertising->var5;
          v17 = 290;
          v18 = 48;
          v19 = 32;
          if (var5 != 60)
          {
            v19 = 290;
          }

          if (var5 != 50)
          {
            v18 = v19;
          }

          v20 = 192;
          v21 = 96;
          if (var5 != 45)
          {
            v21 = 290;
          }

          if (var5 != 42)
          {
            v20 = v21;
          }

          if (var5 <= 49)
          {
            v18 = v20;
          }

          v22 = 996;
          v23 = 432;
          if (var5 != 30)
          {
            v23 = 290;
          }

          if (var5 != 20)
          {
            v22 = v23;
          }

          if (var5 == 15)
          {
            v17 = 1636;
          }

          if (var5 == 10)
          {
            v17 = 3200;
          }

          if (var5 > 19)
          {
            v17 = v22;
          }

          if (var5 <= 41)
          {
            v24 = v17;
          }

          else
          {
            v24 = v18;
          }

          [v15 setAdvertisingRate:v24];
          [v15 setConnectable:advertising->var0];
          [v15 setIsRanging:advertising->var1];
          [v15 setEnableEPAForAdvertising:advertising->var4];
          [v15 setStopOnAdvertisingAddressChange:1];
          [v15 setAdvertisingRandomData:advertising->var12];
          if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
          {
            sub_100808268(advertising, v8, v15);
          }

          [v25 addAdvertisingRequest:v15 forDaemon:v7];
        }

        advertising->var7 = 0;

        v13 = v25;
      }

      else
      {
        sub_1008081D0(advertising, state, v25, &v26);
        v13 = v26;
      }
    }

    else
    {
      if (advertising->var3 == 15)
      {
        [(CBAdvertiserDaemon *)self _stackAppleTypeUpdateAdvertising:advertising];
      }

      v13 = 0;
    }
  }
}

- (BOOL)_wiProxUpdateLinger:(id *)linger active:(BOOL)active
{
  if (active)
  {
    if (linger->var8 && dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_100808384();
    }

    linger->var8 = 0;
    var9 = linger->var9;
    if (var9)
    {
      v6 = var9;
      dispatch_source_cancel(v6);
      v7 = linger->var9;
      linger->var9 = 0;
    }

    return 0;
  }

  if (linger->var8)
  {
    if (!linger->var9)
    {
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_100808344();
      }

      v9 = 0;
      linger->var8 = 0;
      self->_stateChanged = 1;
      return v9;
    }

    return 1;
  }

  if (!linger->var10)
  {
    return 0;
  }

  if (linger->var9)
  {
    return 1;
  }

  if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_1008082FC(linger);
  }

  v9 = 1;
  linger->var8 = 1;
  v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v12 = linger->var9;
  linger->var9 = v11;
  v13 = v11;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100123644;
  handler[3] = &unk_100AE1060;
  handler[5] = self;
  handler[6] = linger;
  handler[4] = v13;
  dispatch_source_set_event_handler(v13, handler);
  CUDispatchTimerSet();
  dispatch_activate(v13);

  return v9;
}

- (void)_wiProxUpdatePayload:(id *)payload payloadData:(id)data advertiseRate:(int)rate advertiseEnableEPA:(BOOL)a
{
  dataCopy = data;
  var10 = payload->var10;
  v14 = dataCopy;
  v12 = var10;
  if (v12 == v14)
  {
  }

  else
  {
    if ((v14 != 0) == (v12 == 0))
    {

      goto LABEL_12;
    }

    v13 = [v14 isEqual:v12];

    if (!v13)
    {
LABEL_12:
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_1008083C4(payload, &payload->var10, v14, rate);
      }

      payload->var5 = rate;
      objc_storeStrong(&payload->var10, data);
      payload->var7 = 1;
      payload->var4 = a;
      goto LABEL_16;
    }
  }

  if (payload->var5 != rate)
  {
    goto LABEL_12;
  }

  if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10080860C(payload);
  }

LABEL_16:
}

- (void)_updateAirPlaySourcePayload:(id *)payload
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_advertiserArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        airplaySourceFlags = [v10 airplaySourceFlags];
        if (airplaySourceFlags)
        {
          v17 = airplaySourceFlags;
          airplaySourceUWBConfigData = [v10 airplaySourceUWBConfigData];
          advertiseRate = [v10 advertiseRate];
          airplaySourceAuthTagData = [v10 airplaySourceAuthTagData];

          v16 = objc_alloc_init(NSMutableData);
          if ([airplaySourceAuthTagData length] == 3)
          {
            v18 = v17 | 0x10;
          }

          else
          {
            v18 = v17 & 0xEF;
          }

          v21 = v18;
          [v16 appendBytes:&v21 length:1];
          if ((v18 & 8) != 0 && [airplaySourceUWBConfigData length] == 1)
          {
            [v16 appendData:airplaySourceUWBConfigData];
          }

          if ([airplaySourceAuthTagData length] == 3)
          {
            [v16 appendData:airplaySourceAuthTagData];
          }

          v12 = 1;
          goto LABEL_19;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
  advertiseRate = 0;
  airplaySourceAuthTagData = 0;
  airplaySourceUWBConfigData = 0;
  v16 = 0;
LABEL_19:
  if ([(CBAdvertiserDaemon *)self _wiProxUpdateLinger:payload active:v12])
  {
    v20 = 0x80;
    v19 = [[NSData alloc] initWithBytes:&v20 length:1];

    v16 = v19;
  }

  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:payload payloadData:v16 advertiseRate:advertiseRate advertiseEnableEPA:0];
}

- (void)_updateAirPlayTargetPayload:(id *)payload
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_advertiserArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        airplayTargetFlags = [v10 airplayTargetFlags];
        if (airplayTargetFlags)
        {
          v15 = airplayTargetFlags;
          airplayTargetConfigSeed = [v10 airplayTargetConfigSeed];
          airplayTargetIPv4 = [v10 airplayTargetIPv4];
          airplayTargetPort = [v10 airplayTargetPort];
          advertiseRate = [v10 advertiseRate];

          v25 = v15;
          BYTE1(v25) = airplayTargetConfigSeed;
          BYTE2(v25) = HIBYTE(airplayTargetIPv4);
          BYTE3(v25) = BYTE2(airplayTargetIPv4);
          BYTE4(v25) = BYTE1(airplayTargetIPv4);
          BYTE5(v25) = airplayTargetIPv4;
          if ((v15 & 0x10) != 0)
          {
            HIWORD(v25) = __rev16(airplayTargetPort);
            v19 = 8;
          }

          else
          {
            v19 = 6;
          }

          v14 = [[NSData alloc] initWithBytes:&v25 length:v19];
          v12 = 1;
          goto LABEL_14;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
  advertiseRate = 0;
  v14 = 0;
LABEL_14:
  if ([(CBAdvertiserDaemon *)self _wiProxUpdateLinger:payload active:v12, v21])
  {
    LOBYTE(v25) = 0x80;
    v20 = [[NSData alloc] initWithBytes:&v25 length:1];

    v14 = v20;
  }

  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:payload payloadData:v14 advertiseRate:advertiseRate advertiseEnableEPA:0];
}

- (void)_updateDSInfoPayload:(id *)payload
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_advertiserArray;
  advertiseRate = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (advertiseRate)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != advertiseRate; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        dsInfoVehicleConfidence = [v9 dsInfoVehicleConfidence];
        dsInfoVehicleState = [v9 dsInfoVehicleState];
        if (dsInfoVehicleConfidence | dsInfoVehicleState)
        {
          v12 = dsInfoVehicleState;
          advertiseRate = [v9 advertiseRate];
          goto LABEL_11;
        }
      }

      advertiseRate = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (advertiseRate)
      {
        continue;
      }

      break;
    }
  }

  dsInfoVehicleConfidence = 0;
  v12 = 0;
LABEL_11:

  if (dsInfoVehicleConfidence | v12)
  {
    v14 = v12 & 3 | (4 * (dsInfoVehicleConfidence & 0xF));
    v13 = [[NSData alloc] initWithBytes:&v14 length:1];
  }

  else
  {
    v13 = 0;
  }

  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:payload payloadData:v13 advertiseRate:advertiseRate advertiseEnableEPA:0];
}

- (void)_updateFIDOAdvertising
{
  if (self->_fidoChanged)
  {
    v3 = self->_fidoPayloadData;
    v6 = v3;
    if (v3)
    {
      v7 = self->_fidoStackAdvertiser;
      if (v7)
      {
        v8 = v7;
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_100808680();
        }
      }

      else
      {
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_1008087A0();
        }

        [(CBStackAdaptor *)self->_stackAdaptor bleAdvertiserClass];
        v10 = objc_alloc_init(objc_opt_class());
        if (!v10)
        {
          sub_1008088C0(0, v11, v12);
          goto LABEL_19;
        }

        v8 = v10;
        objc_storeStrong(&self->_fidoStackAdvertiser, v10);
        [(CBStackBLEAdvertiser *)v8 setDispatchQueue:self->_dispatchQueue];
      }

      [(CBStackBLEAdvertiser *)v8 setAdvertiseRate:self->_fidoAdvertiseRate];
      v13 = objc_alloc_init(CBBLEServiceDataInfo);
      [v13 setServiceUUID16:65529];
      [v13 setServiceData:v6];
      v15 = v13;
      v14 = [NSArray arrayWithObjects:&v15 count:1];
      [(CBStackBLEAdvertiser *)v8 setServiceDataArray:v14];

      [(CBStackBLEAdvertiser *)v8 activate];
    }

    else
    {
      if (dword_100B50E30 <= 30)
      {
        if (dword_100B50E30 != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          sub_100808920(v3, v4, v5);
        }
      }

      [(CBStackBLEAdvertiser *)self->_fidoStackAdvertiser invalidate];
      fidoStackAdvertiser = self->_fidoStackAdvertiser;
      self->_fidoStackAdvertiser = 0;
    }

    self->_fidoChanged = 0;
LABEL_19:
  }
}

- (void)_updateFIDOPayload
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_advertiserArray;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        fidoPayloadData = [v7 fidoPayloadData];
        if (fidoPayloadData)
        {
          v9 = fidoPayloadData;
          LODWORD(v4) = [v7 advertiseRate];
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  fidoPayloadData = self->_fidoPayloadData;
  v11 = v9;
  v12 = fidoPayloadData;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if ((v11 != 0) == (v12 == 0))
    {

      goto LABEL_22;
    }

    v14 = [(NSData *)v11 isEqual:v12];

    if (!v14)
    {
LABEL_22:
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_10080893C(&self->_fidoPayloadData, v11, self, v4);
      }

      self->_fidoAdvertiseRate = v4;
      objc_storeStrong(&self->_fidoPayloadData, v9);
      self->_fidoChanged = 1;
      goto LABEL_26;
    }
  }

  if (v4 != self->_fidoAdvertiseRate)
  {
    goto LABEL_22;
  }

  if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_100808B68();
  }

LABEL_26:
}

- (void)_updateHeySiriPayload:(id *)payload
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_advertiserArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        heySiriDeviceClass = [v10 heySiriDeviceClass];
        if (heySiriDeviceClass)
        {
          v14 = heySiriDeviceClass;
          advertiseRate = [v10 advertiseRate];
          heySiriConfidence = [v10 heySiriConfidence];
          heySiriPerceptualHash = [v10 heySiriPerceptualHash];
          heySiriProductType = [v10 heySiriProductType];
          heySiriRandom = [v10 heySiriRandom];
          heySiriSNR = [v10 heySiriSNR];

          v24[0] = HIBYTE(heySiriPerceptualHash);
          v24[1] = heySiriPerceptualHash;
          v24[2] = heySiriSNR;
          v24[3] = heySiriConfidence;
          v24[4] = HIBYTE(v14);
          v24[5] = v14;
          v24[6] = heySiriRandom;
          v24[7] = heySiriProductType;
          v13 = [[NSData alloc] initWithBytes:v24 length:8];
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  advertiseRate = 0;
  v13 = 0;
LABEL_11:
  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:payload payloadData:v13 advertiseRate:advertiseRate advertiseEnableEPA:0, v20];
}

- (void)_updateNearbyActionV1Payload:(id *)payload
{
  v44 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  nearbyActionExtraData = self->_advertiserArray;
  v6 = [(NSArray *)nearbyActionExtraData countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v6)
  {
    v12 = 0;
    advertiseRate = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    watchSetupData = 0;
    v17 = 0;
    goto LABEL_31;
  }

  v7 = v6;
  payloadCopy = payload;
  v8 = *v41;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v41 != v8)
      {
        objc_enumerationMutation(nearbyActionExtraData);
      }

      v10 = *(*(&v40 + 1) + 8 * i);
      nearbyActionType = [v10 nearbyActionType];
      if (nearbyActionType)
      {
        v18 = nearbyActionType;
        nearbyActionFlags = [v10 nearbyActionFlags];
        v20 = nearbyActionFlags;
        v21 = (nearbyActionFlags >> 8) & 0xF;
        v44 = v21;
        advertiseRate = [v10 advertiseRate];
        nearbyActionAuthTagData = [v10 nearbyActionAuthTagData];
        if ([nearbyActionAuthTagData length] == 3)
        {
          selfAuthTag = nearbyActionAuthTagData;
        }

        else
        {
          selfAuthTag = [(CBAdvertiserDaemon *)self selfAuthTag];
        }

        v14 = selfAuthTag;
        nearbyActionTargetData = [v10 nearbyActionTargetData];
        v16 = v10;
        watchSetupData = [v16 watchSetupData];

        v17 = objc_alloc_init(NSMutableData);
        v39 = v20;
        [v17 appendBytes:&v39 length:1];
        v38 = v18;
        [v17 appendBytes:&v38 length:1];
        if (([v16 nearbyActionFlags] & 0x80) != 0 && v14)
        {
          [v17 appendData:v14];
        }

        v24 = v18 - 37;
        if (v24 <= 0x3A)
        {
          if (((1 << (v18 - 37)) & 0x481000000000581) != 0)
          {
LABEL_19:
            v25 = MGGetSInt32Answer();
            v26 = 16 * v25;
            if (v25 > 0xF)
            {
              v26 = 0;
            }

            v37 = v26;
            v27 = &v37;
            goto LABEL_22;
          }

          if (v24 == 17)
          {
            dsActionFlags = [v16 dsActionFlags];
            [v17 appendBytes:&dsActionFlags length:1];
            dsActionMeasuredPower = [v16 dsActionMeasuredPower];
            [v17 appendBytes:&dsActionMeasuredPower length:1];
            dsActionTieBreaker = [v16 dsActionTieBreaker];
            v27 = &dsActionTieBreaker;
LABEL_22:
            [v17 appendBytes:v27 length:{1, nearbyActionTargetData}];
LABEL_23:
            nearbyActionExtraData = [v16 nearbyActionExtraData];
            if (nearbyActionExtraData)
            {
              [v17 appendData:nearbyActionExtraData];
            }

            v12 = 1;
            if (v21 && ([v17 appendBytes:&v44 length:1], v18 == 56))
            {
              v15 = v30;
              payload = payloadCopy;
              if ((v20 & 0x200) != 0 && v30)
              {
                [v17 appendData:v30];
                v12 = 1;
              }
            }

            else
            {
              v15 = v30;
              payload = payloadCopy;
            }

            goto LABEL_31;
          }
        }

        if (v18 != 2)
        {
          if (v18 == 5 && watchSetupData)
          {
            [v17 appendData:watchSetupData];
          }

          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }

    v7 = [(NSArray *)nearbyActionExtraData countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  v12 = 0;
  advertiseRate = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  watchSetupData = 0;
  v17 = 0;
  payload = payloadCopy;
LABEL_31:

  if ([(CBAdvertiserDaemon *)self _wiProxUpdateLinger:payload active:v12])
  {
    v33 = 13312;
    v28 = [[NSData alloc] initWithBytes:&v33 length:2];

    advertiseRate = 50;
    v17 = v28;
  }

  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:payload payloadData:v17 advertiseRate:advertiseRate advertiseEnableEPA:0];
}

- (void)_updateNearbyActionV2Payload:(id *)payload
{
  payloadCopy = payload;
  v42 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = self->_advertiserArray;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v39;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v4);
        }

        nearbyActionV2Type = [*(*(&v38 + 1) + 8 * i) nearbyActionV2Type];
        v12 = nearbyActionV2Type;
        v42 = nearbyActionV2Type;
        if (nearbyActionV2Type)
        {
          if (nearbyActionV2Type == 41)
          {
            v7 = 1;
          }

          else
          {
            v8 = 1;
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v6);
  }

  else
  {
    v12 = 0;
    v7 = 0;
    v8 = 0;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = self->_advertiserArray;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    v17 = v7 & v8;
    do
    {
      v18 = 0;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v34 + 1) + 8 * v18);
        nearbyActionV2Type2 = [v19 nearbyActionV2Type];
        v12 = nearbyActionV2Type2;
        v42 = nearbyActionV2Type2;
        if (nearbyActionV2Type2)
        {
          if ((v17 & (nearbyActionV2Type2 == 41)) != 1)
          {
            nearbyActionV2Flags = [v19 nearbyActionV2Flags];
            advertiseRate = [v19 advertiseRate];
            nearbyActionV2TargetData = [v19 nearbyActionV2TargetData];
            v22 = nearbyActionV2Flags & 0xFE;

            v26 = 1;
            goto LABEL_31;
          }

          if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
          {
            sub_100808BC4();
          }
        }

        v18 = v18 + 1;
      }

      while (v15 != v18);
      v21 = [(NSArray *)v13 countByEnumeratingWithState:&v34 objects:v43 count:16];
      v15 = v21;
    }

    while (v21);
  }

  v22 = 0;
  advertiseRate = 0;
  nearbyActionV2TargetData = 0;
  v25 = 0;
  v26 = v12 != 0;
  if (v12)
  {
LABEL_31:
    v25 = objc_alloc_init(NSMutableData);
    if ([nearbyActionV2TargetData length] == 3)
    {
      v28 = v22 + 1;
    }

    else
    {
      v28 = v22;
    }

    v33 = v28;
    [v25 appendBytes:&v33 length:{1, payloadCopy}];
    [v25 appendBytes:&v42 length:1];
    if ([nearbyActionV2TargetData length] == 3)
    {
      [v25 appendData:nearbyActionV2TargetData];
    }
  }

  v29 = payloadCopy;
  if ([(CBAdvertiserDaemon *)self _wiProxUpdateLinger:payloadCopy active:v26, payloadCopy])
  {
    v32 = 13312;
    v30 = [[NSData alloc] initWithBytes:&v32 length:2];

    advertiseRate = 50;
    v25 = v30;
  }

  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:v29 payloadData:v25 advertiseRate:advertiseRate advertiseEnableEPA:0];
}

- (void)_updateNearbyInfoPayload:(id *)payload
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_advertiserArray;
  advertiseRate = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  v7 = 0.0;
  if (advertiseRate)
  {
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != advertiseRate; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        nearbyInfoFlags = [v10 nearbyInfoFlags];
        nearbyInfoStatusType = [v10 nearbyInfoStatusType];
        if (nearbyInfoFlags | nearbyInfoStatusType)
        {
          v14 = nearbyInfoStatusType;
          advertiseRate = [v10 advertiseRate];
          [v10 nearbyInfoStatusProgress];
          v7 = v15;
          nearbyInfoStatusTime = [v10 nearbyInfoStatusTime];
          goto LABEL_11;
        }
      }

      advertiseRate = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (advertiseRate)
      {
        continue;
      }

      break;
    }
  }

  nearbyInfoStatusTime = 0;
  v14 = 0;
  nearbyInfoFlags = 0;
LABEL_11:

  if (nearbyInfoFlags | v14)
  {
    v16 = objc_alloc_init(NSMutableData);
    LOBYTE(v19) = __rbit32(nearbyInfoFlags & 7) >> 25;
    [v16 appendBytes:&v19 length:1];
    LOBYTE(v19) = (4 * nearbyInfoFlags) & 0x40 | ((nearbyInfoFlags >> 3) << 7) | nearbyInfoFlags & 0x20 | (nearbyInfoFlags >> 4) & 8 | (nearbyInfoFlags >> 6) & 4;
    if (v14)
    {
      LOBYTE(v19) = (4 * nearbyInfoFlags) & 0x40 | ((nearbyInfoFlags >> 3) << 7) | nearbyInfoFlags & 0x20 | (nearbyInfoFlags >> 4) & 8 | (nearbyInfoFlags >> 6) & 4 | 1;
      [v16 appendBytes:&v19 length:1];
      LOBYTE(v19) = 4;
      [v16 appendBytes:&v19 length:1];
      LOBYTE(v19) = v14;
      [v16 appendBytes:&v19 length:1];
      v17 = 1.0;
      if (v7 <= 1.0)
      {
        v17 = v7;
      }

      if (v17 < 0.0)
      {
        v17 = 0.0;
      }

      LOBYTE(v19) = (v17 * 100.0);
      [v16 appendBytes:&v19 length:1];
      LOBYTE(v19) = nearbyInfoStatusTime;
    }

    [v16 appendBytes:&v19 length:1];
  }

  else
  {
    v16 = 0;
  }

  if ([(CBAdvertiserDaemon *)self _wiProxUpdateLinger:payload active:(nearbyInfoFlags | v14) != 0])
  {
    v19 = 0;
    v18 = [[NSData alloc] initWithBytes:&v19 length:2];

    v16 = v18;
  }

  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:payload payloadData:v16 advertiseRate:advertiseRate advertiseEnableEPA:0];
}

- (void)_updateAirDropPayload:(id *)payload
{
  selfCopy = self;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_advertiserArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        airdropVersion = [v10 airdropVersion];
        if (airdropVersion)
        {
          v15 = airdropVersion;
          v31 = selfCopy;
          payloadCopy = payload;
          airdropFlags = [v10 airdropFlags];
          airdropTempAuthTagData = [v10 airdropTempAuthTagData];
          airdropModel = [v10 airdropModel];
          airdropHash1 = [v10 airdropHash1];
          airdropHash2 = [v10 airdropHash2];
          airdropHash3 = [v10 airdropHash3];
          airdropHash4 = [v10 airdropHash4];
          advertiseRate = [v10 advertiseRate];
          airdropConfigData = [v10 airdropConfigData];

          memset(&v37[1], 0, 7);
          v23 = [airdropTempAuthTagData length];
          v24 = airdropFlags | 0x40;
          if (v23 != 3)
          {
            v24 = airdropFlags & 0xBF;
          }

          v25 = v24 | 0x80;
          v26 = v24 & 0x7F;
          if (airdropModel)
          {
            v26 = v25;
          }

          v37[0] = v26;
          if ([airdropTempAuthTagData length] == 3)
          {
            bytes = [airdropTempAuthTagData bytes];
            v28 = bytes[2];
            *&v37[1] = *bytes;
            v37[3] = v28;
          }

          v37[4] = airdropModel;
          v37[8] = v15;
          v37[9] = HIBYTE(airdropHash1);
          v37[10] = airdropHash1;
          v37[11] = HIBYTE(airdropHash2);
          v37[12] = airdropHash2;
          v37[13] = HIBYTE(airdropHash3);
          v37[14] = airdropHash3;
          v37[15] = HIBYTE(airdropHash4);
          v37[16] = airdropHash4;
          v29 = airdropConfigData | 1;
          if (!airdropConfigData)
          {
            v29 = 0;
          }

          v37[17] = v29;
          v14 = [[NSData alloc] initWithBytes:v37 length:18];
          selfCopy = v31;
          payload = payloadCopy;
          v13 = advertiseRate;
          goto LABEL_19;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  airdropTempAuthTagData = 0;
  v13 = 0;
  v14 = 0;
LABEL_19:
  [(CBAdvertiserDaemon *)selfCopy _wiProxUpdatePayload:payload payloadData:v14 advertiseRate:v13 advertiseEnableEPA:0];
}

- (void)_updateProximityServiceAdvertising
{
  if (self->_proximityServiceChanged)
  {
    v20 = v8;
    v21 = v7;
    v22 = v6;
    v23 = v5;
    v24 = v4;
    v25 = v3;
    selfCopy = self;
    proximityServiceSubType = self->_proximityServiceSubType;
    proximityServiceUseCase = self->_proximityServiceUseCase;
    if (self->_proximityServiceSubType)
    {
      v14 = proximityServiceUseCase == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (dword_100B50E30 <= 30)
      {
        if (dword_100B50E30 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_100808BF8(self, a2, v2);
        }
      }

      [(CBStackBLEAdvertiser *)selfCopy->_proximityServiceStackAdvertiser invalidate:v8];
      proximityServiceStackAdvertiser = selfCopy->_proximityServiceStackAdvertiser;
      selfCopy->_proximityServiceStackAdvertiser = 0;
    }

    else
    {
      v16 = self->_proximityServiceStackAdvertiser;
      if (v16)
      {
        proximityServiceStackAdvertiser = v16;
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_100808C14(selfCopy, proximityServiceUseCase, proximityServiceSubType);
        }
      }

      else
      {
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_100808D5C(selfCopy, proximityServiceUseCase, proximityServiceSubType);
        }

        [(CBStackAdaptor *)selfCopy->_stackAdaptor bleAdvertiserClass:v8];
        v17 = objc_alloc_init(objc_opt_class());
        if (!v17)
        {
          sub_100808EA4(0, v18, v19);
          return;
        }

        proximityServiceStackAdvertiser = v17;
        objc_storeStrong(&selfCopy->_proximityServiceStackAdvertiser, v17);
        [(CBStackBLEAdvertiser *)proximityServiceStackAdvertiser setDispatchQueue:selfCopy->_dispatchQueue];
      }

      [(CBStackBLEAdvertiser *)proximityServiceStackAdvertiser setAdvertiseRate:selfCopy->_proximityServiceAdvertiseRate, v20, v21, v22, v23, v24, v25];
      [(CBStackBLEAdvertiser *)proximityServiceStackAdvertiser setProximityServicePayload:selfCopy->_proximityServicePayload];
      [(CBStackBLEAdvertiser *)proximityServiceStackAdvertiser setProximityServiceSubType:proximityServiceSubType];
      [(CBStackBLEAdvertiser *)proximityServiceStackAdvertiser setProximityServiceUseCase:proximityServiceUseCase];
      [(CBStackBLEAdvertiser *)proximityServiceStackAdvertiser activate];
    }

    selfCopy->_proximityServiceChanged = 0;
  }
}

- (void)_updateProximityServicePayload
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_advertiserArray;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        proximityServiceSubType = [v8 proximityServiceSubType];
        if (proximityServiceSubType)
        {
          proximityServicePayload = [v8 proximityServicePayload];

          if (proximityServicePayload)
          {
            useCase = [v8 useCase];
            if (useCase)
            {
              v12 = useCase;
              LODWORD(v4) = [v8 advertiseRate];
              goto LABEL_16;
            }

            v5 = proximityServicePayload;
          }

          else
          {
            v5 = 0;
          }
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    v12 = 0;
    proximityServicePayload = v5;
  }

  else
  {
    proximityServiceSubType = 0;
    proximityServicePayload = 0;
    v12 = 0;
  }

LABEL_16:

  if (proximityServiceSubType != self->_proximityServiceSubType)
  {
    goto LABEL_29;
  }

  proximityServicePayload = self->_proximityServicePayload;
  v14 = proximityServicePayload;
  v15 = proximityServicePayload;
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    if ((v14 != 0) == (v15 == 0))
    {

      goto LABEL_29;
    }

    v17 = [(NSData *)v14 isEqual:v15];

    if (!v17)
    {
LABEL_29:
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_100808F04(v12, proximityServicePayload, v4, proximityServiceSubType);
      }

      self->_proximityServiceAdvertiseRate = v4;
      objc_storeStrong(&self->_proximityServicePayload, proximityServicePayload);
      self->_proximityServiceSubType = proximityServiceSubType;
      self->_proximityServiceUseCase = v12;
      self->_proximityServiceChanged = 1;
      goto LABEL_33;
    }
  }

  if (v12 != self->_proximityServiceUseCase || v4 != self->_proximityServiceAdvertiseRate)
  {
    goto LABEL_29;
  }

  if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_100809050(v12, v14, v4, proximityServiceSubType);
  }

LABEL_33:
}

- (void)_updateSafetyAlertsAdvertising
{
  if (self->_saChanged)
  {
    v3 = self->_saAdvAddresses;
    v4 = self->_saPayloadSegments;
    v5 = [(NSArray *)v3 count];
    if (v5 == 3 && (v5 = [(NSArray *)v4 count], v5 == 3))
    {
      v8 = self->_saStackAdvertiser;
      if (v8)
      {
        v9 = v8;
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_1008090F4(v3, v4, self);
        }
      }

      else
      {
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_100809234(v3, v4, self);
        }

        [(CBStackAdaptor *)self->_stackAdaptor bleAdvertiserClass];
        v11 = objc_alloc_init(objc_opt_class());
        if (!v11)
        {
          sub_1008092C8(0, v12, v13);
          goto LABEL_27;
        }

        v9 = v11;
        objc_storeStrong(&self->_saStackAdvertiser, v11);
        [(CBStackBLEAdvertiser *)v9 setDispatchQueue:self->_dispatchQueue];
      }

      [(CBStackBLEAdvertiser *)v9 setAdvertiseRate:self->_saAdvertiseRate];
      v22 = v3;
      [(CBStackBLEAdvertiser *)v9 setSaAddressDataArray:v3];
      v14 = objc_alloc_init(NSMutableArray);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = v4;
      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v23 + 1) + 8 * i);
            v21 = objc_alloc_init(CBBLEServiceDataInfo);
            [v21 setServiceUUID16:64672];
            [v21 setServiceData:v20];
            [v14 addObject:v21];
          }

          v17 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }

      [(CBStackBLEAdvertiser *)v9 setSaServiceDataArray:v14];
      [(CBStackBLEAdvertiser *)v9 activate];

      v3 = v22;
    }

    else
    {
      if (dword_100B50E30 <= 30)
      {
        if (dword_100B50E30 != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          sub_1008090D8(v5, v6, v7);
        }
      }

      [(CBStackBLEAdvertiser *)self->_saStackAdvertiser invalidate];
      saStackAdvertiser = self->_saStackAdvertiser;
      self->_saStackAdvertiser = 0;
    }

    self->_saChanged = 0;
LABEL_27:
  }
}

- (void)_updateSafetyAlertsPayload
{
  v30 = 0;
  advertiserArray = self->_advertiserArray;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  [CBAdvertiserDaemon buildSafetyAlertsAdvertisingData:advertiserArray advertisingAddresses:&v29 advertisingData:&v28 advertiseRate:&v30 error:&v27];
  v4 = v29;
  v5 = v29;
  v6 = v28;
  v26 = v28;
  v7 = v27;
  v8 = v7;
  if (v7)
  {
    sub_100809328(v7);
    goto LABEL_73;
  }

  saAdvAddresses = self->_saAdvAddresses;
  v10 = v5;
  v11 = saAdvAddresses;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if ((v10 != 0) == (v11 == 0))
    {
      v15 = v10;
      goto LABEL_12;
    }

    v13 = [(NSArray *)v10 isEqual:v11];

    if (!v13)
    {
      goto LABEL_19;
    }
  }

  saPayloadSegments = self->_saPayloadSegments;
  v15 = v26;
  v16 = saPayloadSegments;
  v12 = v16;
  if (v15 == v16)
  {

    goto LABEL_14;
  }

  if ((v15 != 0) == (v16 == 0))
  {
LABEL_12:

LABEL_19:
    if (dword_100B50E30 > 30 || dword_100B50E30 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_72;
    }

    v18 = CUPrintNSObjectOneLine();
    v19 = CUPrintNSObjectOneLine();
    v20 = CUPrintNSObjectOneLine();
    v21 = CUPrintNSObjectOneLine();
    v22 = v21;
    saAdvertiseRate = self->_saAdvertiseRate;
    if (saAdvertiseRate > 39)
    {
      if (saAdvertiseRate <= 44)
      {
        if (saAdvertiseRate == 40)
        {
          v24 = "Medium";
          goto LABEL_47;
        }

        if (saAdvertiseRate == 42)
        {
          v24 = "MediumMid";
          goto LABEL_47;
        }
      }

      else
      {
        switch(saAdvertiseRate)
        {
          case '-':
            v24 = "MediumHigh";
            goto LABEL_47;
          case '2':
            v24 = "High";
            goto LABEL_47;
          case '<':
            v24 = "Max";
            goto LABEL_47;
        }
      }
    }

    else if (saAdvertiseRate <= 14)
    {
      if (!saAdvertiseRate)
      {
        v24 = "Default";
        goto LABEL_47;
      }

      if (saAdvertiseRate == 10)
      {
        v24 = "Periodic";
        goto LABEL_47;
      }
    }

    else
    {
      switch(saAdvertiseRate)
      {
        case 15:
          v24 = "PeriodicHigh";
          goto LABEL_47;
        case 20:
          v24 = "Background";
          goto LABEL_47;
        case 30:
          v24 = "Low";
          goto LABEL_47;
      }
    }

    v24 = "?";
LABEL_47:
    if (v30 > 39)
    {
      if (v30 <= 44)
      {
        if (v30 == 40)
        {
          v25 = "Medium";
          goto LABEL_71;
        }

        if (v30 == 42)
        {
          v25 = "MediumMid";
          goto LABEL_71;
        }
      }

      else
      {
        switch(v30)
        {
          case '-':
            v25 = "MediumHigh";
            goto LABEL_71;
          case '2':
            v25 = "High";
            goto LABEL_71;
          case '<':
            v25 = "Max";
            goto LABEL_71;
        }
      }
    }

    else if (v30 <= 14)
    {
      if (!v30)
      {
        v25 = "Default";
        goto LABEL_71;
      }

      if (v30 == 10)
      {
        v25 = "Periodic";
        goto LABEL_71;
      }
    }

    else
    {
      switch(v30)
      {
        case 15:
          v25 = "PeriodicHigh";
          goto LABEL_71;
        case 20:
          v25 = "Background";
          goto LABEL_71;
        case 30:
          v25 = "Low";
LABEL_71:
          LogPrintF_safe(&dword_100B50E30, "[CBAdvertiserDaemon _updateSafetyAlertsPayload]", 30, "Safety Alerts updated: saAD <%@> -> <%@>, saPD <%@> -> <%@>, rate %s -> %s", v18, v19, v20, v21, v24, v25);

LABEL_72:
          self->_saAdvertiseRate = v30;
          objc_storeStrong(&self->_saAdvAddresses, v4);
          objc_storeStrong(&self->_saPayloadSegments, v6);
          self->_saChanged = 1;
          goto LABEL_73;
      }
    }

    v25 = "?";
    goto LABEL_71;
  }

  v17 = [(NSArray *)v15 isEqual:v16];

  if (!v17)
  {
    goto LABEL_19;
  }

LABEL_14:
  if (v30 != self->_saAdvertiseRate)
  {
    goto LABEL_19;
  }

  if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_1008093A8();
  }

LABEL_73:
}

+ (void)buildSafetyAlertsAdvertisingData:(id)data advertisingAddresses:(id *)addresses advertisingData:(id *)advertisingData advertiseRate:(int *)rate error:(id *)error
{
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  dataCopy = data;
  v10 = [dataCopy countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (!v10)
  {
    safetyAlertsSignature = 0;
    safetyAlertsAlertID = 0;
    v14 = 0;
    goto LABEL_34;
  }

  v11 = v10;
  errorCopy = error;
  rateCopy = rate;
  safetyAlertsSignature = 0;
  safetyAlertsAlertID = 0;
  v14 = 0;
  v15 = *v51;
  obj = dataCopy;
  while (2)
  {
    v16 = 0;
    v17 = safetyAlertsSignature;
    v18 = safetyAlertsAlertID;
    do
    {
      if (*v51 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v50 + 1) + 8 * v16);
      safetyAlertsAlertData = [v19 safetyAlertsAlertData];

      safetyAlertsAlertID = [v19 safetyAlertsAlertID];

      safetyAlertsSignature = [v19 safetyAlertsSignature];

      safetyAlertsVersion = [v19 safetyAlertsVersion];
      if (safetyAlertsAlertData)
      {
        v22 = safetyAlertsAlertID == 0;
      }

      else
      {
        v22 = 1;
      }

      if (!v22 && safetyAlertsSignature != 0 && safetyAlertsVersion != 0)
      {
        v25 = safetyAlertsVersion;
        *rateCopy = [v19 advertiseRate];
        dataCopy = obj;

        v40 = safetyAlertsAlertData;
        if ([safetyAlertsAlertData length] >= 0x1D)
        {
          v39 = errorCopy;
          if (!errorCopy)
          {
            goto LABEL_35;
          }

          CBErrorF(4294960553, "Alert Data exceeds max length");
        }

        else if ([safetyAlertsAlertID length] == 3)
        {
          if ([safetyAlertsSignature length] == 56)
          {
            if (v25 - 32 > 0xFFFFFFE0)
            {
              *addresses = objc_alloc_init(NSMutableArray);
              *advertisingData = objc_alloc_init(NSMutableArray);
              bytes = [safetyAlertsAlertData bytes];
              v45 = [safetyAlertsAlertData length] + bytes;
              bytes2 = [safetyAlertsSignature bytes];
              v43 = [safetyAlertsSignature length] + bytes2;
              v28 = 1;
              do
              {
                v29 = [NSMutableData dataWithBytes:bytes2 length:6];
                v30 = bytes2 + 6;
                mutableBytes = [v29 mutableBytes];
                v32 = *mutableBytes & 0xC0;
                *mutableBytes |= 0xC0u;
                [*addresses addObject:v29];
                v33 = objc_alloc_init(NSMutableData);
                v49 = v32 | v25;
                [v33 appendBytes:&v49 length:1];
                v48 = (16 * v28) | 3;
                [v33 appendBytes:&v48 length:1];
                [v33 appendBytes:objc_msgSend(safetyAlertsAlertID length:{"bytes"), 3}];
                if ((v43 - v30) >= 0xDu)
                {
                  v34 = 13;
                }

                else
                {
                  v34 = (v43 - v30);
                }

                [v33 appendBytes:v30 length:v34];
                v35 = [v33 length];
                LOBYTE(v36) = v45 - bytes;
                if (27 - v35 < (v45 - bytes))
                {
                  v36 = 27 - [v33 length];
                }

                v37 = v36;
                bytes2 = &v30[v34];
                [v33 appendBytes:bytes length:v36];
                bytes += v37;
                [*advertisingData addObject:v33];
              }

              while (v28++ < 3);
              dataCopy = obj;
              goto LABEL_35;
            }

            v39 = errorCopy;
            if (!errorCopy)
            {
              goto LABEL_35;
            }

            CBErrorF(4294960553, "Version is invalid");
          }

          else
          {
            v39 = errorCopy;
            if (!errorCopy)
            {
              goto LABEL_35;
            }

            CBErrorF(4294960553, "Signature must be %d bytes");
          }
        }

        else
        {
          v39 = errorCopy;
          if (!errorCopy)
          {
            goto LABEL_35;
          }

          CBErrorF(4294960553, "Alert ID must be %d bytes");
        }
        *v39 = ;
        goto LABEL_35;
      }

      v16 = v16 + 1;
      v17 = safetyAlertsSignature;
      v18 = safetyAlertsAlertID;
      v14 = safetyAlertsAlertData;
    }

    while (v11 != v16);
    dataCopy = obj;
    v11 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    v14 = safetyAlertsAlertData;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_34:
  v40 = v14;

LABEL_35:
}

- (void)_updateSpatialInteractionAdvertising:(id *)advertising
{
  if (self->_spatialInteractionChanged)
  {
    advertisingManager = [qword_100BC7DB0 advertisingManager];
    v26 = advertisingManager;
    if (advertisingManager)
    {
      state = [advertisingManager state];
      if (state == 3)
      {
        v10 = self->_spatialInteractionWiProxUUID;
        if (!v10)
        {
          v10 = +[NSUUID UUID];
          objc_storeStrong(&self->_spatialInteractionWiProxUUID, v10);
        }

        v11 = self->_spatialInteractionPayloadData;
        p_spatialInteractionAdvertisingRequest = &self->_spatialInteractionAdvertisingRequest;
        v13 = self->_spatialInteractionAdvertisingRequest;
        if (v13)
        {
          if (v11)
          {
            v14 = "for restart";
          }

          else
          {
            v14 = "";
          }

          if (dword_100B50E30 < 31 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
          {
            sub_100809458(v14);
          }

          [v26 removeAdvertisingRequest:v13 forDaemon:v10];
          v15 = *p_spatialInteractionAdvertisingRequest;
          *p_spatialInteractionAdvertisingRequest = 0;
        }

        if (v11)
        {
          v16 = [WPAdvertisingRequest requestForClientType:19];
          objc_storeStrong(&self->_spatialInteractionAdvertisingRequest, v16);
          [v16 setAdvertisingData:v11];
          spatialInteractionAdvertiseRate = self->_spatialInteractionAdvertiseRate;
          v18 = 290;
          v19 = 48;
          v20 = 32;
          if (spatialInteractionAdvertiseRate != 60)
          {
            v20 = 290;
          }

          if (spatialInteractionAdvertiseRate != 50)
          {
            v19 = v20;
          }

          v21 = 192;
          v22 = 96;
          if (spatialInteractionAdvertiseRate != 45)
          {
            v22 = 290;
          }

          if (spatialInteractionAdvertiseRate != 42)
          {
            v21 = v22;
          }

          if (spatialInteractionAdvertiseRate <= 49)
          {
            v19 = v21;
          }

          v23 = 996;
          v24 = 432;
          if (spatialInteractionAdvertiseRate != 30)
          {
            v24 = 290;
          }

          if (spatialInteractionAdvertiseRate != 20)
          {
            v23 = v24;
          }

          if (spatialInteractionAdvertiseRate == 15)
          {
            v18 = 1636;
          }

          if (spatialInteractionAdvertiseRate == 10)
          {
            v18 = 3200;
          }

          if (spatialInteractionAdvertiseRate > 19)
          {
            v18 = v23;
          }

          if (spatialInteractionAdvertiseRate <= 41)
          {
            v25 = v18;
          }

          else
          {
            v25 = v19;
          }

          [v16 setAdvertisingRate:v25];
          [v16 setConnectable:0];
          [v16 setIsRanging:1];
          [v16 setStopOnAdvertisingAddressChange:1];
          [v16 setEnableEPAForAdvertising:advertising->var4];
          if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
          {
            sub_100809498(v16, v11);
          }

          [v26 addAdvertisingRequest:v16 forDaemon:v10];
        }

        self->_spatialInteractionChanged = 0;
      }

      else
      {
        sub_1008093DC(state);
      }
    }

    else
    {
      sub_1008094F8(0, v7, v8);
    }
  }
}

- (void)_updateSpatialInteractionPayload:(id *)payload
{
  advertiserEnableEPA = self->_advertiserEnableEPA;
  v6 = self->_spatialInteractionIdentifiers;
  v9 = v6;
  if (v6)
  {
    v10 = objc_alloc_init(NSMutableData);
    [v10 appendBytes:&self->_spatialInteractionFlags length:1];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = self->_spatialInteractionIdentifiers;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 appendData:*(*(&v26 + 1) + 8 * i)];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    v16 = self->_spatialInteractionUWBConfigData;
    if (v16)
    {
      [v10 appendData:v16];
      if ([(NSData *)v16 length]- 1 > 4)
      {
        if ((self->_spatialInteractionFlags & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v25 = 0;
        v17 = 5;
        do
        {
LABEL_23:
          [v10 appendBytes:&v25 length:1];
          --v17;
        }

        while (v17);
LABEL_24:
        [v10 appendBytes:&self->_spatialInteractionConfigFlags length:1];
LABEL_25:
        v19 = self->_spatialInteractionPresenceConfigData;
        if (v19)
        {
          [v10 appendData:v19];
        }

        spatialInteractionPayloadData = self->_spatialInteractionPayloadData;
        v21 = v10;
        v22 = spatialInteractionPayloadData;
        v23 = v22;
        if (v21 == v22)
        {
        }

        else
        {
          if ((v21 != 0) == (v22 == 0))
          {

            goto LABEL_37;
          }

          v24 = [(NSData *)v21 isEqual:v22];

          if (!v24)
          {
LABEL_37:
            if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B50E30, "[CBAdvertiserDaemon _updateSpatialInteractionPayload:]", 30, "Spatial updated: <%@> -> <%@>", self->_spatialInteractionPayloadData, v21);
            }

            objc_storeStrong(&self->_spatialInteractionPayloadData, v10);
            self->_spatialInteractionChanged = 1;
            [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:payload payloadData:v21 advertiseRate:0 advertiseEnableEPA:advertiserEnableEPA];
LABEL_42:

            goto LABEL_43;
          }
        }

        if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_100809558(v21);
        }

        goto LABEL_42;
      }

      v17 = (5 - [(NSData *)v16 length]);
    }

    else
    {
      v17 = 0;
    }

    if ((self->_spatialInteractionFlags & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v25 = 0;
    if (!v17)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (self->_spatialInteractionPayloadData)
  {
    if (dword_100B50E30 <= 30)
    {
      if (dword_100B50E30 != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        sub_100809598(v6, v7, v8);
      }
    }

    v18 = self->_spatialInteractionPayloadData;
    self->_spatialInteractionPayloadData = 0;

    self->_spatialInteractionChanged = 1;
  }

LABEL_43:
}

- (void)_updateNearbyActionNoWakePayload:(id *)payload
{
  v24 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_advertiserArray;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        nearbyActionNoWakeType = [v10 nearbyActionNoWakeType];
        LOBYTE(v24) = nearbyActionNoWakeType;
        if (nearbyActionNoWakeType)
        {
          nearbyActionNWPrecisionFindingStatus = [v10 nearbyActionNWPrecisionFindingStatus];
          nearbyActionNoWakeAuthTagData = [v10 nearbyActionNoWakeAuthTagData];
          nearbyActionNoWakeConfigData = [v10 nearbyActionNoWakeConfigData];
          advertiseRate = [v10 advertiseRate];
          enableEPAForLEAdvertisement = [v10 enableEPAForLEAdvertisement];
          v18 = nearbyActionNWPrecisionFindingStatus & 0xFE;

          v16 = objc_alloc_init(NSMutableData);
          if ([nearbyActionNoWakeConfigData length] == 1)
          {
            v19 = v18 + 1;
          }

          else
          {
            v19 = v18;
          }

          HIBYTE(v24) = v19;
          [v16 appendBytes:&v24 length:1];
          [v16 appendBytes:&v24 + 1 length:1];
          if ([nearbyActionNoWakeAuthTagData length] == 3)
          {
            [v16 appendData:nearbyActionNoWakeAuthTagData];
          }

          if ([nearbyActionNoWakeConfigData length] == 1)
          {
            [v16 appendData:nearbyActionNoWakeConfigData];
          }

          goto LABEL_17;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  nearbyActionNoWakeAuthTagData = 0;
  enableEPAForLEAdvertisement = 0;
  advertiseRate = 0;
  nearbyActionNoWakeConfigData = 0;
  v16 = 0;
LABEL_17:
  [(CBAdvertiserDaemon *)self _wiProxUpdatePayload:payload payloadData:v16 advertiseRate:advertiseRate advertiseEnableEPA:enableEPAForLEAdvertisement, v20];
}

- (void)_updateSoftwareUpdatePayload
{
  if (_os_feature_enabled_impl())
  {
    softwareUpdateActionType = 0;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v3 = self->_advertiserArray;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v4)
    {
      v5 = v4;
      softwareUpdateDataArray = 0;
      v7 = *v40;
      while (2)
      {
        v8 = 0;
        v9 = softwareUpdateDataArray;
        do
        {
          if (*v40 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v39 + 1) + 8 * v8);
          softwareUpdateActionType = [v10 softwareUpdateActionType];
          softwareUpdateDataArray = [v10 softwareUpdateDataArray];

          if (softwareUpdateActionType && [softwareUpdateDataArray count])
          {
            advertiseRate = [v10 advertiseRate];
            goto LABEL_15;
          }

          v8 = v8 + 1;
          v9 = softwareUpdateDataArray;
        }

        while (v5 != v8);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      softwareUpdateDataArray = 0;
    }

    advertiseRate = 40;
LABEL_15:

    v12 = objc_alloc_init(NSMutableData);
    v13 = +[NSMutableArray array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = softwareUpdateDataArray;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          [v12 setLength:0];
          [v12 appendBytes:&softwareUpdateActionType length:1];
          [v12 appendData:v19];
          v20 = [v12 copy];
          [v13 addObject:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v16);
    }

    swupPayloadDataArray = self->_swupPayloadDataArray;
    v22 = v13;
    v23 = swupPayloadDataArray;
    v24 = v23;
    if (v22 == v23)
    {
    }

    else
    {
      if ((v22 != 0) == (v23 == 0))
      {

        goto LABEL_33;
      }

      v25 = [(NSArray *)v22 isEqual:v23];

      if (!v25)
      {
        goto LABEL_33;
      }
    }

    if (advertiseRate == self->_swupAdvertiseRate)
    {
      if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_1008095B4(v22);
      }

      goto LABEL_93;
    }

LABEL_33:
    if (dword_100B50E30 > 30 || dword_100B50E30 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_92;
    }

    swupActionType = self->_swupActionType;
    if (swupActionType > 3)
    {
      v27 = "?";
    }

    else
    {
      v27 = (&off_100AE1098)[swupActionType];
    }

    if (softwareUpdateActionType > 3uLL)
    {
      v28 = "?";
    }

    else
    {
      v28 = (&off_100AE1098)[softwareUpdateActionType];
    }

    v29 = CUPrintNSObjectOneLine();
    v30 = CUPrintNSObjectOneLine();
    v31 = v30;
    swupAdvertiseRate = self->_swupAdvertiseRate;
    if (swupAdvertiseRate > 39)
    {
      if (swupAdvertiseRate <= 44)
      {
        if (swupAdvertiseRate == 40)
        {
          v33 = "Medium";
          goto LABEL_67;
        }

        if (swupAdvertiseRate == 42)
        {
          v33 = "MediumMid";
          goto LABEL_67;
        }
      }

      else
      {
        switch(swupAdvertiseRate)
        {
          case '-':
            v33 = "MediumHigh";
            goto LABEL_67;
          case '2':
            v33 = "High";
            goto LABEL_67;
          case '<':
            v33 = "Max";
            goto LABEL_67;
        }
      }
    }

    else if (swupAdvertiseRate <= 14)
    {
      if (!swupAdvertiseRate)
      {
        v33 = "Default";
        goto LABEL_67;
      }

      if (swupAdvertiseRate == 10)
      {
        v33 = "Periodic";
        goto LABEL_67;
      }
    }

    else
    {
      switch(swupAdvertiseRate)
      {
        case 15:
          v33 = "PeriodicHigh";
          goto LABEL_67;
        case 20:
          v33 = "Background";
          goto LABEL_67;
        case 30:
          v33 = "Low";
          goto LABEL_67;
      }
    }

    v33 = "?";
LABEL_67:
    if (advertiseRate > 39)
    {
      if (advertiseRate <= 44)
      {
        if (advertiseRate == 40)
        {
          v34 = "Medium";
          goto LABEL_91;
        }

        if (advertiseRate == 42)
        {
          v34 = "MediumMid";
          goto LABEL_91;
        }
      }

      else
      {
        switch(advertiseRate)
        {
          case '-':
            v34 = "MediumHigh";
            goto LABEL_91;
          case '2':
            v34 = "High";
            goto LABEL_91;
          case '<':
            v34 = "Max";
            goto LABEL_91;
        }
      }
    }

    else if (advertiseRate <= 14)
    {
      if (!advertiseRate)
      {
        v34 = "Default";
        goto LABEL_91;
      }

      if (advertiseRate == 10)
      {
        v34 = "Periodic";
        goto LABEL_91;
      }
    }

    else
    {
      switch(advertiseRate)
      {
        case 15:
          v34 = "PeriodicHigh";
          goto LABEL_91;
        case 20:
          v34 = "Background";
          goto LABEL_91;
        case 30:
          v34 = "Low";
LABEL_91:
          LogPrintF_safe(&dword_100B50E30, "[CBAdvertiserDaemon _updateSoftwareUpdatePayload]", 30, "Software Update updated: suA %s -> %s suD <%@> -> <%@>, rate %s -> %s", v27, v28, v29, v30, v33, v34, v35);

LABEL_92:
          self->_swupActionType = softwareUpdateActionType;
          objc_storeStrong(&self->_swupPayloadDataArray, v13);
          self->_swupAdvertiseRate = advertiseRate;
          self->_swupChanged = 1;
LABEL_93:

          return;
      }
    }

    v34 = "?";
    goto LABEL_91;
  }
}

- (void)_updateSoftwareUpdateAdvertising
{
  if (!_os_feature_enabled_impl() || !self->_swupChanged)
  {
    return;
  }

  v12 = self->_swupPayloadDataArray;
  v3 = [(NSArray *)v12 count];
  if (!v3 || !self->_swupActionType)
  {
    if (dword_100B50E30 <= 30)
    {
      if (dword_100B50E30 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_10080979C(v3, v4, v5);
      }
    }

    [(CBStackBLEAdvertiser *)self->_swupStackAdvertiser invalidate];
    swupStackAdvertiser = self->_swupStackAdvertiser;
    self->_swupStackAdvertiser = 0;

    goto LABEL_21;
  }

  v6 = self->_swupStackAdvertiser;
  if (v6)
  {
    v7 = v6;
    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_1008095F4(&self->_swupActionType, v12, self);
    }
  }

  else
  {
    if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      sub_100809698(&self->_swupActionType, v12, self);
    }

    [(CBStackAdaptor *)self->_stackAdaptor bleAdvertiserClass];
    v9 = objc_alloc_init(objc_opt_class());
    if (!v9)
    {
      sub_10080973C(0, v10, v11);
      goto LABEL_21;
    }

    v7 = v9;
    objc_storeStrong(&self->_swupStackAdvertiser, v9);
    [(CBStackBLEAdvertiser *)v7 setDispatchQueue:self->_dispatchQueue];
  }

  [(CBStackBLEAdvertiser *)v7 setAdvertiseRate:self->_swupAdvertiseRate];
  [(CBStackBLEAdvertiser *)v7 setSwupActionType:self->_swupActionType];
  [(CBStackBLEAdvertiser *)v7 setSwupPayloadDataArray:self->_swupPayloadDataArray];
  [(CBStackBLEAdvertiser *)v7 activate];

LABEL_21:
}

- (void)_updateWatchSetupAdvertising
{
  if (self->_watchSetupChanged)
  {
    v3 = self->_watchSetupPayloadData;
    v6 = v3;
    if (v3)
    {
      v7 = self->_watchSetupStackAdvertiser;
      if (v7)
      {
        v8 = v7;
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_1008097B8();
        }
      }

      else
      {
        if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
        {
          sub_1008098D8();
        }

        [(CBStackAdaptor *)self->_stackAdaptor bleAdvertiserClass];
        v10 = objc_alloc_init(objc_opt_class());
        if (!v10)
        {
          sub_1008099F8(0, v11, v12);
          goto LABEL_19;
        }

        v8 = v10;
        objc_storeStrong(&self->_watchSetupStackAdvertiser, v10);
        [(CBStackBLEAdvertiser *)v8 setDispatchQueue:self->_dispatchQueue];
      }

      [(CBStackBLEAdvertiser *)v8 setAdvertiseRate:self->_watchSetupAdvertiseRate];
      v13 = objc_alloc_init(NSMutableData);
      v16 = 6;
      [v13 appendBytes:&v16 length:1];
      [v13 appendData:v6];
      v14 = objc_alloc_init(CBBLEServiceDataInfo);
      [v14 setServiceUUID16:65061];
      [v14 setServiceData:v13];
      [v14 setConnectable:1];
      v17 = v14;
      v15 = [NSArray arrayWithObjects:&v17 count:1];
      [(CBStackBLEAdvertiser *)v8 setServiceDataArray:v15];

      [(CBStackBLEAdvertiser *)v8 activate];
    }

    else
    {
      if (dword_100B50E30 <= 30)
      {
        if (dword_100B50E30 != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          sub_100809A58(v3, v4, v5);
        }
      }

      [(CBStackBLEAdvertiser *)self->_watchSetupStackAdvertiser invalidate];
      watchSetupStackAdvertiser = self->_watchSetupStackAdvertiser;
      self->_watchSetupStackAdvertiser = 0;
    }

    self->_watchSetupChanged = 0;
LABEL_19:
  }
}

- (void)_updateWatchSetupPayload
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_advertiserArray;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        if ([v7 nearbyActionType] != 5)
        {
          watchSetupData = [v7 watchSetupData];
          if (watchSetupData)
          {
            v9 = watchSetupData;
            LODWORD(v4) = [v7 advertiseRate];
            goto LABEL_12;
          }
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  watchSetupPayloadData = self->_watchSetupPayloadData;
  v11 = v9;
  v12 = watchSetupPayloadData;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if ((v11 != 0) == (v12 == 0))
    {

      goto LABEL_23;
    }

    v14 = [(NSData *)v11 isEqual:v12];

    if (!v14)
    {
LABEL_23:
      if (dword_100B50E30 <= 30 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        sub_100809A74(&self->_watchSetupPayloadData, v11, self, v4);
      }

      self->_watchSetupAdvertiseRate = v4;
      objc_storeStrong(&self->_watchSetupPayloadData, v9);
      self->_watchSetupChanged = 1;
      goto LABEL_27;
    }
  }

  if (v4 != self->_watchSetupAdvertiseRate)
  {
    goto LABEL_23;
  }

  if (dword_100B50E30 <= 10 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    sub_100809CA0();
  }

LABEL_27:
}

- (id)_encryptNearbyInfoV2Payload:(const void *)payload payloadLength:(unint64_t)length authTag:(id)tag irkData:(id)data keyInfo:(const void *)info keyInfoLength:(unint64_t)infoLength
{
  tagCopy = tag;
  dataCopy = data;
  v13 = 0;
  if (!payload || !length)
  {
    goto LABEL_12;
  }

  if (![tagCopy length])
  {
    if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50E30, "[CBAdvertiserDaemon _encryptNearbyInfoV2Payload:payloadLength:authTag:irkData:keyInfo:keyInfoLength:]", 90, "Not encrypting invitation because BLE AuthTag is not available");
    }

    goto LABEL_35;
  }

  if (![dataCopy length])
  {
    if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50E30, "[CBAdvertiserDaemon _encryptNearbyInfoV2Payload:payloadLength:authTag:irkData:keyInfo:keyInfoLength:]", 90, "Not encrypting invitation because self IRK is not available");
    }

LABEL_35:
    v13 = 0;
    goto LABEL_12;
  }

  if (length >= 7)
  {
    lengthCopy = 7;
  }

  else
  {
    lengthCopy = length;
  }

  v20 = 0u;
  v21 = 0u;
  [dataCopy bytes];
  [dataCopy length];
  [tagCopy bytes];
  [tagCopy length];
  CryptoHKDF();
  *(v19 + 3) = 0;
  v19[0] = 0;
  __memcpy_chk();
  ccaes_ecb_encrypt_mode();
  v15 = ccecb_context_size();
  bzero(v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), (v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (ccecb_init())
  {
    if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50E30, "[CBAdvertiserDaemon _encryptNearbyInfoV2Payload:payloadLength:authTag:irkData:keyInfo:keyInfoLength:]", 90, "Unable to start encrypting invitation due to %d");
    }
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    if (cclr_aes_init())
    {
      if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50E30, "[CBAdvertiserDaemon _encryptNearbyInfoV2Payload:payloadLength:authTag:irkData:keyInfo:keyInfoLength:]", 90, "Unable to init encryption process for invitation due to %d");
      }
    }

    else
    {
      if (!cclr_encrypt_block())
      {
        ccecb_context_size();
        cc_clear();
        v13 = [NSData dataWithBytes:v19 length:lengthCopy];
        goto LABEL_12;
      }

      if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50E30, "[CBAdvertiserDaemon _encryptNearbyInfoV2Payload:payloadLength:authTag:irkData:keyInfo:keyInfoLength:]", 90, "Unable to encrypt invitation due to %d");
      }
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (void)_updateNearbyInfoV2Payload:(id *)payload
{
  payloadCopy = payload;
  v50 = 0;
  v49 = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = self->_advertiserArray;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    nearbyInfoV2InvitationRouteType = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_100128294();
    v40 = *v46;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        v9 |= [v12 nearbyInfoV2DecryptedFlags];
        HIBYTE(v50) = v9;
        if (([v12 nearbyInfoV2Flags] & 4) != 0)
        {
          v8 |= 4u;
          LOBYTE(v50) = v8;
        }

        else if (!(v8 | v9))
        {
          v8 = 0;
          continue;
        }

        if ([v12 advertiseRate] > advertiseRate)
        {
          advertiseRate = [v12 advertiseRate];
        }

        nearbyInfoV2AuthTagData = [v12 nearbyInfoV2AuthTagData];
        v14 = [nearbyInfoV2AuthTagData length];

        if (!nearbyInfoV2AuthTagData2 && v14 == 3)
        {
          nearbyInfoV2AuthTagData2 = [v12 nearbyInfoV2AuthTagData];
        }

        nearbyInfoV2AuthIntegrityTagData = [v12 nearbyInfoV2AuthIntegrityTagData];
        v16 = [nearbyInfoV2AuthIntegrityTagData length];

        if (!nearbyInfoV2AuthIntegrityTagData2 && v16 == 3)
        {
          nearbyInfoV2AuthIntegrityTagData2 = [v12 nearbyInfoV2AuthIntegrityTagData];
        }

        if (!nearbyInfoV2RapportIRKData2)
        {
          nearbyInfoV2RapportIRKData = [v12 nearbyInfoV2RapportIRKData];
          v18 = [nearbyInfoV2RapportIRKData length];

          if (v18)
          {
            nearbyInfoV2RapportIRKData2 = [v12 nearbyInfoV2RapportIRKData];
          }

          else
          {
            nearbyInfoV2RapportIRKData2 = 0;
          }
        }

        if (HIBYTE(v49))
        {
          if (!nearbyInfoV2InvitationRouteType)
          {
            goto LABEL_26;
          }
        }

        else
        {
          HIBYTE(v49) = [v12 nearbyInfoV2InvitationCounter];
          if (!nearbyInfoV2InvitationRouteType)
          {
LABEL_26:
            if ([v12 nearbyInfoV2InvitationRouteType])
            {
              nearbyInfoV2InvitationRouteType = [v12 nearbyInfoV2InvitationRouteType];
              LOBYTE(v49) = nearbyInfoV2InvitationRouteType;
            }

            else
            {
              nearbyInfoV2InvitationRouteType = 0;
            }
          }
        }

        if (!nearbyInfoV2NearbyFaceTimeData && nearbyInfoV2AuthTagData2 && nearbyInfoV2AuthIntegrityTagData2)
        {
          nearbyInfoV2NearbyFaceTimeData = [v12 nearbyInfoV2NearbyFaceTimeData];
        }

        if (!randomData2)
        {
          randomData = [v12 randomData];

          if (randomData)
          {
            randomData2 = [v12 randomData];
          }

          else
          {
            randomData2 = 0;
          }
        }

        v10 = nearbyInfoV2InvitationRouteType;
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (!v6)
      {
        v20 = v10 != 0;
        goto LABEL_42;
      }
    }
  }

  v20 = 0;
  v9 = 0;
  v8 = 0;
  sub_100128294();
LABEL_42:

  if (!(v8 | v9))
  {
    v22 = 0;
    v31 = 0;
    v25 = nearbyInfoV2AuthIntegrityTagData2;
    v32 = payloadCopy;
    selfCopy2 = self;
LABEL_52:
    [(CBAdvertiserDaemon *)selfCopy2 _wiProxUpdatePayload:v32 payloadData:v22 advertiseRate:advertiseRate advertiseEnableEPA:0, payloadCopy];
    goto LABEL_53;
  }

  v21 = objc_alloc_init(NSMutableData);
  v22 = v21;
  v23 = HIBYTE(v49) != 0 && v20;
  v24 = nearbyInfoV2AuthTagData2 != 0;
  v25 = nearbyInfoV2AuthIntegrityTagData2;
  v26 = nearbyInfoV2AuthIntegrityTagData2 != 0;
  if ((v24 & (v9 >> 1) & v26) != 0)
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

  v28 = v9 & 0xF4 | v27 | v23;
  if ((v24 & (v9 >> 3) & v26) != 0)
  {
    v29 = 8;
  }

  else
  {
    v29 = 0;
  }

  v30 = v28 | v29;
  if ((v30 & 8) == 0 || (v30 & 0x10) == 0 || !nearbyInfoV2AuthTagData2 || !nearbyInfoV2AuthIntegrityTagData2)
  {
    v30 &= ~0x10u;
  }

  HIBYTE(v50) = v30;
  if (v8 | v30)
  {
    [v21 appendBytes:&v50 length:1];
    selfCopy2 = self;
    v31 = [(CBAdvertiserDaemon *)self _encryptNearbyInfoV2Payload:&v50 + 1 payloadLength:1 authTag:nearbyInfoV2AuthTagData2 irkData:nearbyInfoV2RapportIRKData2 keyInfo:"BT_CBNearbyInfoV2EncryptedFlagsV1" keyInfoLength:33];
    if (!v31)
    {
      goto LABEL_53;
    }

    [v22 appendData:v31];
    if (nearbyInfoV2AuthTagData2)
    {
      [v22 appendData:nearbyInfoV2AuthTagData2];
    }

    if (nearbyInfoV2AuthIntegrityTagData2)
    {
      [v22 appendData:nearbyInfoV2AuthIntegrityTagData2];
    }

    v32 = payloadCopy;
    if (HIBYTE(v49))
    {
      v34 = [NSMutableData dataWithCapacity:2];
      [v34 appendBytes:&v49 + 1 length:1];
      [v34 appendBytes:&v49 length:1];
      v35 = -[CBAdvertiserDaemon _encryptNearbyInfoV2Payload:payloadLength:authTag:irkData:keyInfo:keyInfoLength:](self, "_encryptNearbyInfoV2Payload:payloadLength:authTag:irkData:keyInfo:keyInfoLength:", [v34 bytes], 2, nearbyInfoV2AuthTagData2, nearbyInfoV2RapportIRKData2, "BT_CBNearbyInfoV2EncryptedPayloadV1", 35);
      [v22 appendData:v35];

      v25 = nearbyInfoV2AuthIntegrityTagData2;
    }

    if ((v50 & 0x1000) != 0 && nearbyInfoV2NearbyFaceTimeData)
    {
      v36 = -[CBAdvertiserDaemon _encryptNearbyInfoV2Payload:payloadLength:authTag:irkData:keyInfo:keyInfoLength:](self, "_encryptNearbyInfoV2Payload:payloadLength:authTag:irkData:keyInfo:keyInfoLength:", [nearbyInfoV2NearbyFaceTimeData bytes], 5, nearbyInfoV2AuthTagData2, nearbyInfoV2RapportIRKData2, "BT_CBNearbyInfoV2EncryptedNearbyFaceTimePayloadV1", 49);
      [v22 appendData:v36];

      v25 = nearbyInfoV2AuthIntegrityTagData2;
    }

    if (randomData2 && (v50 & 0x800) != 0)
    {
      objc_storeStrong(&payloadCopy->var12, randomData2);
      [v22 appendData:randomData2];
    }

    goto LABEL_52;
  }

  if (dword_100B50E30 <= 90 && (dword_100B50E30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50E30, "[CBAdvertiserDaemon _updateNearbyInfoV2Payload:]", 90, "### NearbyInfoV2: Not advertising because no flags set", payloadCopy);
  }

  v31 = 0;
LABEL_53:
}

@end