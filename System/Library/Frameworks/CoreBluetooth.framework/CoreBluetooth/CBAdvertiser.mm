@interface CBAdvertiser
- (BOOL)updateWithCBAdvertiser:(id)advertiser;
- (CBAdvertiser)init;
- (CBAdvertiser)initWithXPCObject:(id)object error:(id *)error;
- (id)_ensureXPCStarted;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_activateDirectStart;
- (void)_activateXPCCompleted:(id)completed;
- (void)_activateXPCStart:(BOOL)start;
- (void)_interrupted;
- (void)_invalidated;
- (void)_update;
- (void)_updateIfNeededWithBlock:(id)block;
- (void)_xpcReceivedAdvertisingAddressChanged:(id)changed;
- (void)_xpcReceivedMessage:(id)message;
- (void)_xpcReceivedPowerStateChanged:(id)changed;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)encodeWithXPCObject:(id)object;
- (void)invalidate;
- (void)setAdvertiseRate:(int)rate;
- (void)setAirdropConfigData:(unsigned __int8)data;
- (void)setAirdropFlags:(unsigned __int8)flags;
- (void)setAirdropTempAuthTagData:(id)data;
- (void)setAirdropVersion:(unsigned __int8)version;
- (void)setAirdrophash1:(unsigned __int16)airdrophash1;
- (void)setAirdrophash2:(unsigned __int16)airdrophash2;
- (void)setAirdrophash3:(unsigned __int16)airdrophash3;
- (void)setAirdrophash4:(unsigned __int16)airdrophash4;
- (void)setAirplaySourceFlags:(unsigned __int8)flags;
- (void)setAirplaySourceUWBConfigData:(id)data;
- (void)setAirplayTargetConfigSeed:(unsigned __int8)seed;
- (void)setAirplayTargetFlags:(unsigned __int8)flags;
- (void)setAirplayTargetIPv4:(unsigned int)pv4;
- (void)setAirplayTargetPort:(unsigned __int16)port;
- (void)setDsActionFlags:(unsigned __int8)flags;
- (void)setDsActionMeasuredPower:(char)power;
- (void)setDsActionTieBreaker:(unsigned __int8)breaker;
- (void)setDsInfoVehicleConfidence:(unsigned __int8)confidence;
- (void)setDsInfoVehicleState:(unsigned __int8)state;
- (void)setEpaTxPower:(BOOL)power;
- (void)setFidoPayloadData:(id)data;
- (void)setHeySiriConfidence:(unsigned __int8)confidence;
- (void)setHeySiriDeviceClass:(unsigned __int16)class;
- (void)setHeySiriPerceptualHash:(unsigned __int16)hash;
- (void)setHeySiriProductType:(unsigned __int8)type;
- (void)setHeySiriRandom:(unsigned __int8)random;
- (void)setHeySiriSNR:(unsigned __int8)r;
- (void)setLabel:(id)label;
- (void)setModel:(unsigned __int8)model;
- (void)setNearbyActionColorCode:(unsigned __int8)code;
- (void)setNearbyActionExtraData:(id)data;
- (void)setNearbyActionNWPrecisionFindingStatus:(unsigned __int8)status;
- (void)setNearbyActionNoWakeAuthTagData:(id)data;
- (void)setNearbyActionNoWakeConfigData:(id)data;
- (void)setNearbyActionNoWakeType:(unsigned __int8)type;
- (void)setNearbyActionTargetData:(id)data;
- (void)setNearbyInfoFlags:(unsigned int)flags;
- (void)setNearbyInfoStatusProgress:(double)progress;
- (void)setNearbyInfoStatusTime:(unsigned __int8)time;
- (void)setNearbyInfoStatusType:(unsigned __int8)type;
- (void)setNearbyInfoV2DecryptedFlags:(unsigned __int8)flags;
- (void)setNearbyInfoV2Flags:(unsigned __int8)flags;
- (void)setNearbyInfoV2InvitationCounter:(unsigned __int8)counter;
- (void)setNearbyInfoV2InvitationTypes:(unsigned __int8)types;
- (void)setNearbyInfoV2NearbyFaceTimeData:(id)data;
- (void)setProximityServicePayload:(id)payload;
- (void)setProximityServiceSubType:(unsigned __int8)type;
- (void)setSafetyAlertsAlertData:(id)data;
- (void)setSafetyAlertsAlertID:(id)d;
- (void)setSafetyAlertsSignature:(id)signature;
- (void)setSafetyAlertsVersion:(unsigned __int8)version;
- (void)setSoftwareUpdateActionType:(unsigned __int8)type;
- (void)setSoftwareUpdateDataArray:(id)array;
- (void)setUseCase:(unsigned int)case;
- (void)setUseCaseClientIDs:(id)ds;
- (void)setWatchSetupData:(id)data;
- (void)setnearbyInfoV2InvitationRouteType:(unsigned __int8)type;
- (void)xpcReceivedMessage:(id)message;
@end

@implementation CBAdvertiser

- (CBAdvertiser)init
{
  v5.receiver = self;
  v5.super_class = CBAdvertiser;
  v2 = [(CBAdvertiser *)&v5 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v2->_ucat = &gLogCategory_CBAdvertiser;
    v3 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = self->_mockID;
  v4 = v3;
  if (v3)
  {
    CBMockRemoveAdvertiser(v3, self);
  }

  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v6.receiver = self;
  v6.super_class = CBAdvertiser;
  [(CBAdvertiser *)&v6 dealloc];
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  advertiseRate = self->_advertiseRate;
  xdict = objectCopy;
  if (advertiseRate)
  {
    xpc_dictionary_set_int64(objectCopy, "advR", advertiseRate);
  }

  clientID = self->_clientID;
  if (clientID)
  {
    xpc_dictionary_set_uint64(xdict, "cid", clientID);
  }

  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    xpc_dictionary_set_uint64(xdict, "intF", internalFlags);
  }

  CUXPCEncodeObject();
  useCase = self->_useCase;
  if (useCase)
  {
    xpc_dictionary_set_uint64(xdict, "ucas", useCase);
  }

  CUXPCEncodeNSArrayOfNSString();
  if (self->_airdropFlags)
  {
    xpc_dictionary_set_uint64(xdict, "adFl", self->_airdropFlags);
  }

  airdropTempAuthTagData = self->_airdropTempAuthTagData;
  if (airdropTempAuthTagData)
  {
    v10 = airdropTempAuthTagData;
    v11 = xdict;
    bytes = [(NSData *)v10 bytes];
    if (bytes)
    {
      v13 = bytes;
    }

    else
    {
      v13 = "";
    }

    v14 = [(NSData *)v10 length];

    xpc_dictionary_set_data(v11, "adTa", v13, v14);
  }

  if (self->_airdropModel)
  {
    xpc_dictionary_set_uint64(xdict, "adMl", self->_airdropModel);
  }

  if (self->_airdropVersion)
  {
    xpc_dictionary_set_uint64(xdict, "adVs", self->_airdropVersion);
  }

  if (self->_airdropHash1)
  {
    xpc_dictionary_set_uint64(xdict, "adH1", self->_airdropHash1);
  }

  if (self->_airdropHash2)
  {
    xpc_dictionary_set_uint64(xdict, "adH2", self->_airdropHash2);
  }

  if (self->_airdropHash3)
  {
    xpc_dictionary_set_uint64(xdict, "adH3", self->_airdropHash3);
  }

  if (self->_airdropHash4)
  {
    xpc_dictionary_set_uint64(xdict, "adH4", self->_airdropHash4);
  }

  if (self->_airdropConfigData)
  {
    xpc_dictionary_set_uint64(xdict, "adCd", self->_airdropConfigData);
  }

  airplaySourceAuthTagData = self->_airplaySourceAuthTagData;
  if (airplaySourceAuthTagData)
  {
    v16 = airplaySourceAuthTagData;
    v17 = xdict;
    bytes2 = [(NSData *)v16 bytes];
    if (bytes2)
    {
      v19 = bytes2;
    }

    else
    {
      v19 = "";
    }

    v20 = [(NSData *)v16 length];

    xpc_dictionary_set_data(v17, "apAT", v19, v20);
  }

  if (self->_airplaySourceFlags)
  {
    xpc_dictionary_set_uint64(xdict, "apSF", self->_airplaySourceFlags);
  }

  airplaySourceUWBConfigData = self->_airplaySourceUWBConfigData;
  if (airplaySourceUWBConfigData)
  {
    v22 = airplaySourceUWBConfigData;
    v23 = xdict;
    bytes3 = [(NSData *)v22 bytes];
    if (bytes3)
    {
      v25 = bytes3;
    }

    else
    {
      v25 = "";
    }

    v26 = [(NSData *)v22 length];

    xpc_dictionary_set_data(v23, "apUW", v25, v26);
  }

  if (self->_airplayTargetConfigSeed)
  {
    xpc_dictionary_set_uint64(xdict, "apTC", self->_airplayTargetConfigSeed);
  }

  if (self->_airplayTargetFlags)
  {
    xpc_dictionary_set_uint64(xdict, "apTF", self->_airplayTargetFlags);
  }

  airplayTargetIPv4 = self->_airplayTargetIPv4;
  if (airplayTargetIPv4)
  {
    xpc_dictionary_set_uint64(xdict, "apTI", airplayTargetIPv4);
  }

  if (self->_airplayTargetPort)
  {
    xpc_dictionary_set_uint64(xdict, "apTP", self->_airplayTargetPort);
  }

  if (self->_dsActionFlags)
  {
    xpc_dictionary_set_uint64(xdict, "dsAF", self->_dsActionFlags);
  }

  if (self->_dsActionMeasuredPower)
  {
    xpc_dictionary_set_int64(xdict, "dsAP", self->_dsActionMeasuredPower);
  }

  if (self->_dsActionTieBreaker)
  {
    xpc_dictionary_set_uint64(xdict, "dsAT", self->_dsActionTieBreaker);
  }

  if (self->_dsInfoVehicleConfidence)
  {
    xpc_dictionary_set_uint64(xdict, "dsVC", self->_dsInfoVehicleConfidence);
  }

  if (self->_dsInfoVehicleState)
  {
    xpc_dictionary_set_uint64(xdict, "dsVS", self->_dsInfoVehicleState);
  }

  if (self->_enableEPAForLEAdvertisement)
  {
    xpc_dictionary_set_BOOL(xdict, "naEE", 1);
  }

  fidoPayloadData = self->_fidoPayloadData;
  if (fidoPayloadData)
  {
    v29 = fidoPayloadData;
    v30 = xdict;
    bytes4 = [(NSData *)v29 bytes];
    if (bytes4)
    {
      v32 = bytes4;
    }

    else
    {
      v32 = "";
    }

    v33 = [(NSData *)v29 length];

    xpc_dictionary_set_data(v30, "fdPD", v32, v33);
  }

  if (self->_heySiriConfidence)
  {
    xpc_dictionary_set_uint64(xdict, "hsCf", self->_heySiriConfidence);
  }

  if (self->_heySiriDeviceClass)
  {
    xpc_dictionary_set_uint64(xdict, "hsDC", self->_heySiriDeviceClass);
  }

  if (self->_heySiriPerceptualHash)
  {
    xpc_dictionary_set_uint64(xdict, "hsPH", self->_heySiriPerceptualHash);
  }

  if (self->_heySiriProductType)
  {
    xpc_dictionary_set_uint64(xdict, "hsPT", self->_heySiriProductType);
  }

  if (self->_heySiriRandom)
  {
    xpc_dictionary_set_uint64(xdict, "hsRn", self->_heySiriRandom);
  }

  if (self->_heySiriSNR)
  {
    xpc_dictionary_set_uint64(xdict, "hsSN", self->_heySiriSNR);
  }

  nearbyActionAuthTagData = self->_nearbyActionAuthTagData;
  if (nearbyActionAuthTagData)
  {
    v35 = nearbyActionAuthTagData;
    v36 = xdict;
    bytes5 = [(NSData *)v35 bytes];
    if (bytes5)
    {
      v38 = bytes5;
    }

    else
    {
      v38 = "";
    }

    v39 = [(NSData *)v35 length];

    xpc_dictionary_set_data(v36, "nbAT", v38, v39);
  }

  if (self->_nearbyActionColorCode)
  {
    xpc_dictionary_set_uint64(xdict, "naCC", self->_nearbyActionColorCode);
  }

  nearbyActionExtraData = self->_nearbyActionExtraData;
  if (nearbyActionExtraData)
  {
    v41 = nearbyActionExtraData;
    v42 = xdict;
    bytes6 = [(NSData *)v41 bytes];
    if (bytes6)
    {
      v44 = bytes6;
    }

    else
    {
      v44 = "";
    }

    v45 = [(NSData *)v41 length];

    xpc_dictionary_set_data(v42, "naED", v44, v45);
  }

  nearbyActionFlags = self->_nearbyActionFlags;
  if (nearbyActionFlags)
  {
    xpc_dictionary_set_uint64(xdict, "nbAF", nearbyActionFlags);
  }

  nearbyActionTargetData = self->_nearbyActionTargetData;
  if (nearbyActionTargetData)
  {
    v48 = nearbyActionTargetData;
    v49 = xdict;
    bytes7 = [(NSData *)v48 bytes];
    if (bytes7)
    {
      v51 = bytes7;
    }

    else
    {
      v51 = "";
    }

    v52 = [(NSData *)v48 length];

    xpc_dictionary_set_data(v49, "nbTg", v51, v52);
  }

  if (self->_nearbyActionType)
  {
    xpc_dictionary_set_uint64(xdict, "nbAc", self->_nearbyActionType);
  }

  nearbyActionV2Flags = self->_nearbyActionV2Flags;
  if (nearbyActionV2Flags)
  {
    xpc_dictionary_set_uint64(xdict, "n2AF", nearbyActionV2Flags);
  }

  nearbyActionV2TargetData = self->_nearbyActionV2TargetData;
  if (nearbyActionV2TargetData)
  {
    v55 = nearbyActionV2TargetData;
    v56 = xdict;
    bytes8 = [(NSData *)v55 bytes];
    if (bytes8)
    {
      v58 = bytes8;
    }

    else
    {
      v58 = "";
    }

    v59 = [(NSData *)v55 length];

    xpc_dictionary_set_data(v56, "n2Tg", v58, v59);
  }

  if (self->_nearbyActionV2Type)
  {
    xpc_dictionary_set_uint64(xdict, "n2Ac", self->_nearbyActionV2Type);
  }

  nearbyInfoFlags = self->_nearbyInfoFlags;
  if (nearbyInfoFlags)
  {
    xpc_dictionary_set_uint64(xdict, "nbIF", nearbyInfoFlags);
  }

  nearbyInfoStatusProgress = self->_nearbyInfoStatusProgress;
  if (nearbyInfoStatusProgress != 0.0)
  {
    xpc_dictionary_set_double(xdict, "nsPr", nearbyInfoStatusProgress);
  }

  if (self->_nearbyInfoStatusTime)
  {
    xpc_dictionary_set_uint64(xdict, "nsTi", self->_nearbyInfoStatusTime);
  }

  if (self->_nearbyInfoStatusType)
  {
    xpc_dictionary_set_uint64(xdict, "nsTy", self->_nearbyInfoStatusType);
  }

  if (self->_nearbyInfoV2DecryptedFlags)
  {
    xpc_dictionary_set_uint64(xdict, "nb2Fe", self->_nearbyInfoV2DecryptedFlags);
  }

  if (self->_nearbyInfoV2Flags)
  {
    xpc_dictionary_set_uint64(xdict, "nb2F", self->_nearbyInfoV2Flags);
  }

  nearbyInfoV2AuthTagData = self->_nearbyInfoV2AuthTagData;
  if (nearbyInfoV2AuthTagData)
  {
    v63 = nearbyInfoV2AuthTagData;
    v64 = xdict;
    bytes9 = [(NSData *)v63 bytes];
    if (bytes9)
    {
      v66 = bytes9;
    }

    else
    {
      v66 = "";
    }

    v67 = [(NSData *)v63 length];

    xpc_dictionary_set_data(v64, "nb2A", v66, v67);
  }

  nearbyInfoV2AuthIntegrityTagData = self->_nearbyInfoV2AuthIntegrityTagData;
  if (nearbyInfoV2AuthIntegrityTagData)
  {
    v69 = nearbyInfoV2AuthIntegrityTagData;
    v70 = xdict;
    bytes10 = [(NSData *)v69 bytes];
    if (bytes10)
    {
      v72 = bytes10;
    }

    else
    {
      v72 = "";
    }

    v73 = [(NSData *)v69 length];

    xpc_dictionary_set_data(v70, "nb2Ai", v72, v73);
  }

  if (self->_nearbyInfoV2InvitationCounter)
  {
    xpc_dictionary_set_uint64(xdict, "nb2Ic", self->_nearbyInfoV2InvitationCounter);
  }

  if (self->_nearbyInfoV2InvitationTypes)
  {
    xpc_dictionary_set_uint64(xdict, "nb2It", self->_nearbyInfoV2InvitationTypes);
  }

  if (self->_nearbyInfoV2InvitationRouteType)
  {
    xpc_dictionary_set_uint64(xdict, "nb2Ir", self->_nearbyInfoV2InvitationRouteType);
  }

  nearbyInfoV2NearbyFaceTimeData = self->_nearbyInfoV2NearbyFaceTimeData;
  if (nearbyInfoV2NearbyFaceTimeData)
  {
    v75 = nearbyInfoV2NearbyFaceTimeData;
    v76 = xdict;
    bytes11 = [(NSData *)v75 bytes];
    if (bytes11)
    {
      v78 = bytes11;
    }

    else
    {
      v78 = "";
    }

    v79 = [(NSData *)v75 length];

    xpc_dictionary_set_data(v76, "nb2FT", v78, v79);
  }

  proximityServicePayload = self->_proximityServicePayload;
  if (proximityServicePayload)
  {
    v81 = proximityServicePayload;
    v82 = xdict;
    bytes12 = [(NSData *)v81 bytes];
    if (bytes12)
    {
      v84 = bytes12;
    }

    else
    {
      v84 = "";
    }

    v85 = [(NSData *)v81 length];

    xpc_dictionary_set_data(v82, "pxSP", v84, v85);
  }

  if (self->_proximityServiceSubType)
  {
    xpc_dictionary_set_uint64(xdict, "pxSS", self->_proximityServiceSubType);
  }

  safetyAlertsAlertData = self->_safetyAlertsAlertData;
  if (safetyAlertsAlertData)
  {
    v87 = safetyAlertsAlertData;
    v88 = xdict;
    bytes13 = [(NSData *)v87 bytes];
    if (bytes13)
    {
      v90 = bytes13;
    }

    else
    {
      v90 = "";
    }

    v91 = [(NSData *)v87 length];

    xpc_dictionary_set_data(v88, "saAd", v90, v91);
  }

  safetyAlertsAlertID = self->_safetyAlertsAlertID;
  if (safetyAlertsAlertID)
  {
    v93 = safetyAlertsAlertID;
    v94 = xdict;
    bytes14 = [(NSData *)v93 bytes];
    if (bytes14)
    {
      v96 = bytes14;
    }

    else
    {
      v96 = "";
    }

    v97 = [(NSData *)v93 length];

    xpc_dictionary_set_data(v94, "saAi", v96, v97);
  }

  safetyAlertsSignature = self->_safetyAlertsSignature;
  if (safetyAlertsSignature)
  {
    v99 = safetyAlertsSignature;
    v100 = xdict;
    bytes15 = [(NSData *)v99 bytes];
    if (bytes15)
    {
      v102 = bytes15;
    }

    else
    {
      v102 = "";
    }

    v103 = [(NSData *)v99 length];

    xpc_dictionary_set_data(v100, "saSg", v102, v103);
  }

  if (self->_safetyAlertsVersion)
  {
    xpc_dictionary_set_uint64(xdict, "saVs", self->_safetyAlertsVersion);
  }

  if (self->_softwareUpdateActionType)
  {
    xpc_dictionary_set_uint64(xdict, "suA", self->_softwareUpdateActionType);
  }

  CUXPCEncodeNSArrayOfNSData();
  watchSetupData = self->_watchSetupData;
  if (watchSetupData)
  {
    v105 = watchSetupData;
    v106 = xdict;
    bytes16 = [(NSData *)v105 bytes];
    if (bytes16)
    {
      v108 = bytes16;
    }

    else
    {
      v108 = "";
    }

    v109 = [(NSData *)v105 length];

    xpc_dictionary_set_data(v106, "wsDa", v108, v109);
  }

  if (self->_nearbyActionNoWakeType)
  {
    xpc_dictionary_set_uint64(xdict, "nawT", self->_nearbyActionNoWakeType);
  }

  if (self->_nearbyActionNWPrecisionFindingStatus)
  {
    xpc_dictionary_set_uint64(xdict, "nawS", self->_nearbyActionNWPrecisionFindingStatus);
  }

  nearbyActionNoWakeAuthTagData = self->_nearbyActionNoWakeAuthTagData;
  if (nearbyActionNoWakeAuthTagData)
  {
    v111 = nearbyActionNoWakeAuthTagData;
    v112 = xdict;
    bytes17 = [(NSData *)v111 bytes];
    if (bytes17)
    {
      v114 = bytes17;
    }

    else
    {
      v114 = "";
    }

    v115 = [(NSData *)v111 length];

    xpc_dictionary_set_data(v112, "nawA", v114, v115);
  }

  nearbyActionNoWakeConfigData = self->_nearbyActionNoWakeConfigData;
  v117 = xdict;
  if (nearbyActionNoWakeConfigData)
  {
    v118 = nearbyActionNoWakeConfigData;
    v119 = xdict;
    bytes18 = [(NSData *)v118 bytes];
    if (bytes18)
    {
      v121 = bytes18;
    }

    else
    {
      v121 = "";
    }

    v122 = [(NSData *)v118 length];

    xpc_dictionary_set_data(v119, "nawC", v121, v122);
    v117 = xdict;
  }

  MEMORY[0x1EEE66BB8](nearbyActionNoWakeConfigData, v117);
}

- (id)descriptionWithLevel:(int)level
{
  v261 = 0;
  NSAppendPrintF_safe(&v261, "CBAdvertiser", *&level);
  v4 = v261;
  v5 = self->_label;
  v6 = v5;
  if (v5)
  {
    v260 = v4;
    NSAppendPrintF_safe(&v260, "-%@", v5);
    v7 = v260;

    v4 = v7;
  }

  v259 = v4;
  NSAppendPrintF_safe(&v259, ", CID 0x%X", self->_clientID);
  v8 = v259;

  if (self->_direct)
  {
    v258 = v8;
    NSAppendPrintF_safe(&v258, ", direct");
    v9 = v258;

    v8 = v9;
  }

  advertiseRate = self->_advertiseRate;
  if (advertiseRate)
  {
    v257 = v8;
    if (advertiseRate <= 39)
    {
      if (advertiseRate > 19)
      {
        if (advertiseRate == 20)
        {
          v11 = "350 ms";
          goto LABEL_26;
        }
      }

      else
      {
        if (advertiseRate == 10)
        {
          v11 = "2 seconds";
          goto LABEL_26;
        }

        if (advertiseRate == 15)
        {
          v11 = "1022.5 ms";
          goto LABEL_26;
        }
      }
    }

    else if (advertiseRate <= 44)
    {
      if (advertiseRate == 40)
      {
        v11 = "181.25 ms";
        goto LABEL_26;
      }

      if (advertiseRate == 42)
      {
        v11 = "120 ms";
        goto LABEL_26;
      }
    }

    else
    {
      switch(advertiseRate)
      {
        case '-':
          v11 = "60 ms";
          goto LABEL_26;
        case '2':
          v11 = "30 ms";
          goto LABEL_26;
        case '<':
          v11 = "20 ms";
LABEL_26:
          NSAppendPrintF_safe(&v257, ", advR %s", v11);
          v12 = v257;

          v8 = v12;
          goto LABEL_27;
      }
    }

    v11 = "270 ms";
    goto LABEL_26;
  }

LABEL_27:
  v13 = self->_advertisingAddressDataConnectable;
  if (v13)
  {
    v256 = v8;
    v14 = CUPrintNSDataAddress();
    NSAppendPrintF_safe(&v256, ", CA %@", v14);
    v15 = v256;

    v8 = v15;
  }

  v16 = self->_advertisingAddressDataNonConnectable;
  if (v16)
  {
    v255 = v8;
    v17 = CUPrintNSDataAddress();
    NSAppendPrintF_safe(&v255, ", NA %@", v17);
    v18 = v255;

    v8 = v18;
  }

  v19 = self->_advertisingAddressDataNonConnectableSecondary;
  if (v19)
  {
    v254 = v8;
    v20 = CUPrintNSDataAddress();
    NSAppendPrintF_safe(&v254, ", NA2nd %@", v20);
    v21 = v254;

    v8 = v21;
  }

  v22 = self->_remoteDevice;
  v23 = v22;
  if (v22)
  {
    v253 = v8;
    NSAppendPrintF_safe(&v253, ", Remote %@", v22);
    v24 = v253;

    v8 = v24;
  }

  useCase = self->_useCase;
  if (useCase)
  {
    v26 = CBUseCaseToString(useCase);
    v252 = v8;
    NSAppendPrintF_safe(&v252, ", ucas %s", v26);
    v27 = v252;

    v8 = v27;
  }

  v28 = self->_useCaseClientIDs;
  if (v28)
  {
    v251 = v8;
    v29 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v251, ", ucid %@", v29);
    v30 = v251;

    v8 = v30;
  }

  if (self->_airdropFlags)
  {
    v250 = v8;
    v31 = CUPrintFlags32();
    NSAppendPrintF_safe(&v250, ", adFl %@", v31);
    v32 = v250;

    v8 = v32;
  }

  v33 = self->_airdropTempAuthTagData;
  if (v33)
  {
    v249 = v8;
    v34 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v249, ", adTa <%@>", v34);
    v35 = v249;

    v8 = v35;
  }

  airdropModel = self->_airdropModel;
  if (self->_airdropModel)
  {
    v248 = v8;
    NSAppendPrintF_safe(&v248, ", adMl %d", airdropModel);
    v37 = v248;

    v8 = v37;
  }

  airdropVersion = self->_airdropVersion;
  if (self->_airdropVersion)
  {
    v247 = v8;
    NSAppendPrintF_safe(&v247, ", adVs %d", airdropVersion);
    v39 = v247;

    v8 = v39;
  }

  airdropHash1 = self->_airdropHash1;
  if (self->_airdropHash1)
  {
    v246 = v8;
    NSAppendPrintF_safe(&v246, ", adH1 0x%04X", airdropHash1);
    v41 = v246;

    v8 = v41;
  }

  airdropHash2 = self->_airdropHash2;
  if (self->_airdropHash2)
  {
    v245 = v8;
    NSAppendPrintF_safe(&v245, ", adH2 0x%04X", airdropHash2);
    v43 = v245;

    v8 = v43;
  }

  airdropHash3 = self->_airdropHash3;
  if (self->_airdropHash3)
  {
    v244 = v8;
    NSAppendPrintF_safe(&v244, ", adH3 0x%04X", airdropHash3);
    v45 = v244;

    v8 = v45;
  }

  airdropHash4 = self->_airdropHash4;
  if (self->_airdropHash4)
  {
    v243 = v8;
    NSAppendPrintF_safe(&v243, ", adH4 0x%04X", airdropHash4);
    v47 = v243;

    v8 = v47;
  }

  if (self->_airdropConfigData)
  {
    v242 = v8;
    v48 = CUPrintFlags32();
    NSAppendPrintF_safe(&v242, ", adCd %@", v48);
    v49 = v242;

    v8 = v49;
  }

  v50 = self->_airplaySourceAuthTagData;
  if (v50)
  {
    v241 = v8;
    v51 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v241, ", apAT %@", v51);
    v52 = v241;

    v8 = v52;
  }

  if (self->_airplaySourceFlags)
  {
    v240 = v8;
    v53 = CUPrintFlags32();
    NSAppendPrintF_safe(&v240, ", apSF %@", v53);
    v54 = v240;

    v8 = v54;
  }

  v55 = self->_airplaySourceUWBConfigData;
  if (v55)
  {
    v239 = v8;
    v56 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v239, ", apUW %@", v56);
    v57 = v239;

    v8 = v57;
  }

  airplayTargetConfigSeed = self->_airplayTargetConfigSeed;
  if (self->_airplayTargetConfigSeed)
  {
    v238 = v8;
    NSAppendPrintF_safe(&v238, ", apCS %u", airplayTargetConfigSeed);
    v59 = v238;

    v8 = v59;
  }

  if (self->_airplayTargetFlags)
  {
    v237 = v8;
    v60 = CUPrintFlags32();
    NSAppendPrintF_safe(&v237, ", apTF %@", v60);
    v61 = v237;

    v8 = v61;
  }

  if (self->_airplayTargetIPv4)
  {
    v235 = v8;
    v62 = CUPrintAddress();
    NSAppendPrintF_safe(&v235, ", apTI %@", v62);
    v63 = v235;

    v8 = v63;
  }

  airplayTargetPort = self->_airplayTargetPort;
  if (self->_airplayTargetPort)
  {
    v234 = v8;
    NSAppendPrintF_safe(&v234, ", apTP %u", airplayTargetPort);
    v65 = v234;

    v8 = v65;
  }

  if (self->_dsActionFlags)
  {
    v233 = v8;
    v66 = CUPrintFlags32();
    NSAppendPrintF_safe(&v233, ", dsAF %@", v66);
    v67 = v233;

    v8 = v67;
  }

  dsActionMeasuredPower = self->_dsActionMeasuredPower;
  if (self->_dsActionMeasuredPower)
  {
    v232 = v8;
    NSAppendPrintF_safe(&v232, ", dsAP %d", dsActionMeasuredPower);
    v69 = v232;

    v8 = v69;
  }

  dsActionTieBreaker = self->_dsActionTieBreaker;
  if (self->_dsActionTieBreaker)
  {
    v231 = v8;
    NSAppendPrintF_safe(&v231, ", dsAT 0x%02X", dsActionTieBreaker);
    v71 = v231;

    v8 = v71;
  }

  if (self->_dsInfoVehicleConfidence)
  {
    v230 = v8;
    NSAppendPrintF_safe(&v230, ", dsVC %u", [(CBAdvertiser *)self dsInfoVehicleConfidence]);
    v72 = v230;

    v8 = v72;
  }

  if (self->_dsInfoVehicleState)
  {
    v229 = v8;
    dsInfoVehicleState = [(CBAdvertiser *)self dsInfoVehicleState];
    if (dsInfoVehicleState > 2)
    {
      v74 = "?";
    }

    else
    {
      v74 = off_1E811DDD8[dsInfoVehicleState];
    }

    NSAppendPrintF_safe(&v229, ", dsVS %s", v74);
    v75 = v229;

    v8 = v75;
  }

  if (self->_enableEPAForLEAdvertisement)
  {
    v228 = v8;
    NSAppendPrintF_safe(&v228, ", naEE %d", 1);
    v76 = v228;

    v8 = v76;
  }

  v77 = self->_fidoPayloadData;
  if (v77)
  {
    v227 = v8;
    v78 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v227, ", fdPD %@", v78);
    v79 = v227;

    v8 = v79;
  }

  heySiriConfidence = self->_heySiriConfidence;
  if (self->_heySiriConfidence)
  {
    v226 = v8;
    NSAppendPrintF_safe(&v226, ", hsCf %u", heySiriConfidence);
    v81 = v226;

    v8 = v81;
  }

  heySiriDeviceClass = self->_heySiriDeviceClass;
  if (self->_heySiriDeviceClass)
  {
    v225 = v8;
    if (heySiriDeviceClass > 0xA)
    {
      v83 = "?";
    }

    else
    {
      v83 = off_1E811D640[heySiriDeviceClass - 1];
    }

    NSAppendPrintF_safe(&v225, ", hsDC %s", v83);
    v84 = v225;

    v8 = v84;
  }

  heySiriPerceptualHash = self->_heySiriPerceptualHash;
  if (self->_heySiriPerceptualHash)
  {
    v224 = v8;
    NSAppendPrintF_safe(&v224, ", hsPH 0x%04X", heySiriPerceptualHash);
    v86 = v224;

    v8 = v86;
  }

  heySiriProductType = self->_heySiriProductType;
  if (self->_heySiriProductType)
  {
    v223 = v8;
    if (heySiriProductType > 4)
    {
      v88 = "?";
    }

    else
    {
      v88 = off_1E811D690[heySiriProductType - 1];
    }

    NSAppendPrintF_safe(&v223, ", hsPT %s", v88);
    v89 = v223;

    v8 = v89;
  }

  heySiriRandom = self->_heySiriRandom;
  if (self->_heySiriRandom)
  {
    v222 = v8;
    NSAppendPrintF_safe(&v222, ", hsRn 0x%02X", heySiriRandom);
    v91 = v222;

    v8 = v91;
  }

  heySiriSNR = self->_heySiriSNR;
  if (self->_heySiriSNR)
  {
    v221 = v8;
    NSAppendPrintF_safe(&v221, ", hsSN %u", heySiriSNR);
    v93 = v221;

    v8 = v93;
  }

  v94 = self->_nearbyActionAuthTagData;
  if (v94)
  {
    v220 = v8;
    v95 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v220, ", nbAT %@", v95);
    v96 = v220;

    v8 = v96;
  }

  nearbyActionColorCode = self->_nearbyActionColorCode;
  if (self->_nearbyActionColorCode)
  {
    v219 = v8;
    NSAppendPrintF_safe(&v219, ", naCC %u", nearbyActionColorCode);
    v98 = v219;

    v8 = v98;
  }

  v99 = self->_nearbyActionExtraData;
  if (v99)
  {
    v218 = v8;
    v100 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v218, ", naED %@", v100);
    v101 = v218;

    v8 = v101;
  }

  if (self->_nearbyActionFlags)
  {
    v217 = v8;
    v102 = CUPrintFlags32();
    NSAppendPrintF_safe(&v217, ", nbAF %@", v102);
    v103 = v217;

    v8 = v103;
  }

  nearbyActionType = self->_nearbyActionType;
  if (self->_nearbyActionType)
  {
    v216 = v8;
    if (nearbyActionType > 0x5F)
    {
      v105 = "?";
    }

    else
    {
      v105 = off_1E811D6B0[nearbyActionType - 1];
    }

    NSAppendPrintF_safe(&v216, ", nbAc %s", v105);
    v106 = v216;

    v8 = v106;
  }

  v107 = self->_nearbyActionTargetData;
  if (v107)
  {
    v215 = v8;
    v108 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v215, ", nbTg %@", v108);
    v109 = v215;

    v8 = v109;
  }

  if (self->_nearbyActionV2Flags)
  {
    v214 = v8;
    v110 = CUPrintFlags32();
    NSAppendPrintF_safe(&v214, ", n2AF %@", v110);
    v111 = v214;

    v8 = v111;
  }

  v112 = self->_nearbyActionV2TargetData;
  if (v112)
  {
    v213 = v8;
    v113 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v213, ", n2Tg %@", v113);
    v114 = v213;

    v8 = v114;
  }

  nearbyActionV2Type = self->_nearbyActionV2Type;
  if (self->_nearbyActionV2Type)
  {
    v212 = v8;
    if (nearbyActionV2Type > 0x5F)
    {
      v116 = "?";
    }

    else
    {
      v116 = off_1E811D6B0[nearbyActionV2Type - 1];
    }

    NSAppendPrintF_safe(&v212, ", n2Ac %s", v116);
    v117 = v212;

    v8 = v117;
  }

  if (self->_nearbyInfoFlags)
  {
    v211 = v8;
    v118 = CUPrintFlags32();
    NSAppendPrintF_safe(&v211, ", niFl %@", v118);
    v119 = v211;

    v8 = v119;
  }

  nearbyInfoStatusProgress = self->_nearbyInfoStatusProgress;
  if (nearbyInfoStatusProgress != 0.0)
  {
    v210 = v8;
    NSAppendPrintF_safe(&v210, ", nsPr %.0f%%", nearbyInfoStatusProgress * 100.0);
    v121 = v210;

    v8 = v121;
  }

  nearbyInfoStatusTime = self->_nearbyInfoStatusTime;
  if (self->_nearbyInfoStatusTime)
  {
    v209 = v8;
    if (nearbyInfoStatusTime > 0xE)
    {
      v123 = "?";
    }

    else
    {
      v123 = off_1E811D9A8[nearbyInfoStatusTime - 1];
    }

    NSAppendPrintF_safe(&v209, ", nsTi %s", v123);
    v124 = v209;

    v8 = v124;
  }

  nearbyInfoStatusType = self->_nearbyInfoStatusType;
  if (self->_nearbyInfoStatusType)
  {
    v208 = v8;
    if (nearbyInfoStatusType > 0xD)
    {
      v126 = "?";
    }

    else
    {
      v126 = off_1E811DA18[nearbyInfoStatusType - 1];
    }

    NSAppendPrintF_safe(&v208, ", nsTy %s", v126);
    v127 = v208;

    v8 = v127;
  }

  if (self->_nearbyInfoV2Flags)
  {
    v207 = v8;
    v128 = CUPrintFlags32();
    NSAppendPrintF_safe(&v207, ", nb2F %@", v128);
    v129 = v207;

    v8 = v129;
  }

  if (self->_nearbyInfoV2DecryptedFlags)
  {
    v206 = v8;
    v130 = CUPrintFlags32();
    NSAppendPrintF_safe(&v206, ", nb2E %@", v130);
    v131 = v206;

    v8 = v131;
  }

  v132 = self->_nearbyInfoV2AuthTagData;
  if (v132)
  {
    v205 = v8;
    v133 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v205, ", nb2A %@", v133);
    v134 = v205;

    v8 = v134;
  }

  v135 = self->_nearbyInfoV2AuthIntegrityTagData;
  if (v135)
  {
    v204 = v8;
    v136 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v204, ", nb2Ai %@", v136);
    v137 = v204;

    v8 = v137;
  }

  nearbyInfoV2InvitationCounter = self->_nearbyInfoV2InvitationCounter;
  if (self->_nearbyInfoV2InvitationCounter)
  {
    v203 = v8;
    NSAppendPrintF_safe(&v203, ", nb2Ic %u", nearbyInfoV2InvitationCounter);
    v139 = v203;

    v8 = v139;
  }

  if (self->_nearbyInfoV2InvitationTypes)
  {
    v202 = v8;
    v140 = CUPrintFlags32();
    NSAppendPrintF_safe(&v202, ", nb2It %@", v140);
    v141 = v202;

    v8 = v141;
  }

  nearbyInfoV2InvitationRouteType = self->_nearbyInfoV2InvitationRouteType;
  if (self->_nearbyInfoV2InvitationRouteType)
  {
    v201 = v8;
    if (nearbyInfoV2InvitationRouteType > 0xB)
    {
      v143 = "?";
    }

    else
    {
      v143 = off_1E811DA80[nearbyInfoV2InvitationRouteType - 1];
    }

    NSAppendPrintF_safe(&v201, ", nb2Ir %s", v143);
    v144 = v201;

    v8 = v144;
  }

  v145 = self->_nearbyInfoV2NearbyFaceTimeData;
  if (v145)
  {
    v200 = v8;
    v146 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v200, ", nb2FT %@", v146);
    v147 = v200;

    v8 = v147;
  }

  if (self->_nearbyActionNoWakeType)
  {
    if (self->_nearbyActionNoWakeType == 1)
    {
      v148 = "PrecisionFinding";
    }

    else
    {
      v148 = "?";
    }

    v199 = v8;
    NSAppendPrintF_safe(&v199, ", nawT %s", v148);
    v149 = v199;

    v8 = v149;
  }

  v150 = self->_proximityServicePayload;
  if (v150)
  {
    v198 = v8;
    v151 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v198, ", %s <%@>", "pxSP", v151);
    v152 = v198;

    v8 = v152;
  }

  proximityServiceSubType = self->_proximityServiceSubType;
  if (self->_proximityServiceSubType)
  {
    v197 = v8;
    NSAppendPrintF_safe(&v197, ", %s %u", "pxSS", proximityServiceSubType);
    v154 = v197;

    v8 = v154;
  }

  v155 = self->_safetyAlertsAlertData;
  if (v155)
  {
    v196 = v8;
    v156 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v196, ", saAd <%@>", v156);
    v157 = v196;

    v8 = v157;
  }

  v158 = self->_safetyAlertsAlertID;
  if (v158)
  {
    v195 = v8;
    v159 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v195, ", saAi <%@>", v159);
    v160 = v195;

    v8 = v160;
  }

  v161 = self->_safetyAlertsSignature;
  if (v161)
  {
    v194 = v8;
    v162 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v194, ", saSg <%@>", v162);
    v163 = v194;

    v8 = v163;
  }

  if (self->_safetyAlertsVersion)
  {
    if (self->_safetyAlertsVersion == 1)
    {
      v164 = "1";
    }

    else
    {
      v164 = "?";
    }

    v193 = v8;
    NSAppendPrintF_safe(&v193, ", saVs %s", v164);
    v165 = v193;

    v8 = v165;
  }

  softwareUpdateActionType = self->_softwareUpdateActionType;
  if (self->_softwareUpdateActionType)
  {
    v192 = v8;
    NSAppendPrintF_safe(&v192, ", suA %d", softwareUpdateActionType);
    v167 = v192;

    v8 = v167;
  }

  v168 = self->_softwareUpdateDataArray;
  if (v168)
  {
    v191 = v8;
    v169 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v191, ", suD %@", v169);
    v170 = v191;

    v8 = v170;
  }

  softwareUpdateDataArrayCountMaximumLimit = self->_softwareUpdateDataArrayCountMaximumLimit;
  if (self->_softwareUpdateDataArrayCountMaximumLimit)
  {
    v190 = v8;
    NSAppendPrintF_safe(&v190, ", suDMs %d", softwareUpdateDataArrayCountMaximumLimit);
    v172 = v190;

    v8 = v172;
  }

  v173 = self->_watchSetupData;
  if (v173)
  {
    v189 = v8;
    v174 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v189, ", wsDa %@", v174);
    v175 = v189;

    v8 = v175;
  }

  if (self->_nearbyActionNWPrecisionFindingStatus)
  {
    v188 = v8;
    v176 = CUPrintFlags32();
    NSAppendPrintF_safe(&v188, ", nawS %@", v176);
    v177 = v188;

    v8 = v177;
  }

  v178 = self->_nearbyActionNoWakeAuthTagData;
  if (v178)
  {
    v187 = v8;
    v179 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v187, ", nawA <%@>", v179);
    v180 = v187;

    v8 = v180;
  }

  v181 = self->_nearbyActionNoWakeConfigData;
  if (v181)
  {
    v186 = v8;
    v182 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v186, ", nawC <%@>", v182);
    v183 = v186;

    v8 = v183;
  }

  v184 = v8;
  return v8;
}

- (void)setAdvertiseRate:(int)rate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__CBAdvertiser_setAdvertiseRate___block_invoke;
  v3[3] = &unk_1E811D508;
  rateCopy = rate;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __33__CBAdvertiser_setAdvertiseRate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 100);
  if (v1 != v3)
  {
    *(v2 + 100) = v1;
  }

  return v1 != v3;
}

- (void)setAirdropVersion:(unsigned __int8)version
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__CBAdvertiser_setAirdropVersion___block_invoke;
  v3[3] = &unk_1E811D530;
  versionCopy = version;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __34__CBAdvertiser_setAirdropVersion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 51);
  if (v1 != v3)
  {
    *(v2 + 51) = v1;
  }

  return v1 != v3;
}

- (void)setAirdropFlags:(unsigned __int8)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CBAdvertiser_setAirdropFlags___block_invoke;
  v3[3] = &unk_1E811D530;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __32__CBAdvertiser_setAirdropFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 49);
  if (v1 != v3)
  {
    *(v2 + 49) = v1;
  }

  return v1 != v3;
}

- (void)setAirdropTempAuthTagData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CBAdvertiser_setAirdropTempAuthTagData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __42__CBAdvertiser_setAirdropTempAuthTagData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 264);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 264);
    *(v10 + 264) = v11;
  }

  return v5;
}

- (void)setModel:(unsigned __int8)model
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __25__CBAdvertiser_setModel___block_invoke;
  v3[3] = &unk_1E811D530;
  modelCopy = model;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __25__CBAdvertiser_setModel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 50);
  if (v1 != v3)
  {
    *(v2 + 50) = v1;
  }

  return v1 != v3;
}

- (void)setAirdrophash1:(unsigned __int16)airdrophash1
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CBAdvertiser_setAirdrophash1___block_invoke;
  v3[3] = &unk_1E811D580;
  airdrophash1Copy = airdrophash1;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __32__CBAdvertiser_setAirdrophash1___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 82);
  if (v1 != v3)
  {
    *(v2 + 82) = v1;
  }

  return v1 != v3;
}

- (void)setAirdrophash2:(unsigned __int16)airdrophash2
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CBAdvertiser_setAirdrophash2___block_invoke;
  v3[3] = &unk_1E811D580;
  airdrophash2Copy = airdrophash2;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __32__CBAdvertiser_setAirdrophash2___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 84);
  if (v1 != v3)
  {
    *(v2 + 84) = v1;
  }

  return v1 != v3;
}

- (void)setAirdrophash3:(unsigned __int16)airdrophash3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CBAdvertiser_setAirdrophash3___block_invoke;
  v3[3] = &unk_1E811D580;
  airdrophash3Copy = airdrophash3;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __32__CBAdvertiser_setAirdrophash3___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 86);
  if (v1 != v3)
  {
    *(v2 + 86) = v1;
  }

  return v1 != v3;
}

- (void)setAirdrophash4:(unsigned __int16)airdrophash4
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CBAdvertiser_setAirdrophash4___block_invoke;
  v3[3] = &unk_1E811D580;
  airdrophash4Copy = airdrophash4;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __32__CBAdvertiser_setAirdrophash4___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v1 != v3)
  {
    *(v2 + 88) = v1;
  }

  return v1 != v3;
}

- (void)setAirdropConfigData:(unsigned __int8)data
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__CBAdvertiser_setAirdropConfigData___block_invoke;
  v3[3] = &unk_1E811D530;
  dataCopy = data;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __37__CBAdvertiser_setAirdropConfigData___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 52);
  if (v1 != v3)
  {
    *(v2 + 52) = v1;
  }

  return v1 != v3;
}

- (void)setAirplaySourceFlags:(unsigned __int8)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CBAdvertiser_setAirplaySourceFlags___block_invoke;
  v3[3] = &unk_1E811D530;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __38__CBAdvertiser_setAirplaySourceFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 53);
  if (v1 != v3)
  {
    *(v2 + 53) = v1;
  }

  return v1 != v3;
}

- (void)setAirplaySourceUWBConfigData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CBAdvertiser_setAirplaySourceUWBConfigData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __46__CBAdvertiser_setAirplaySourceUWBConfigData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 272);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 272);
    *(v10 + 272) = v11;
  }

  return v5;
}

- (void)setAirplayTargetConfigSeed:(unsigned __int8)seed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__CBAdvertiser_setAirplayTargetConfigSeed___block_invoke;
  v3[3] = &unk_1E811D530;
  seedCopy = seed;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __43__CBAdvertiser_setAirplayTargetConfigSeed___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 54);
  if (v1 != v3)
  {
    *(v2 + 54) = v1;
  }

  return v1 != v3;
}

- (void)setAirplayTargetFlags:(unsigned __int8)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CBAdvertiser_setAirplayTargetFlags___block_invoke;
  v3[3] = &unk_1E811D530;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __38__CBAdvertiser_setAirplayTargetFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 55);
  if (v1 != v3)
  {
    *(v2 + 55) = v1;
  }

  return v1 != v3;
}

- (void)setAirplayTargetIPv4:(unsigned int)pv4
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__CBAdvertiser_setAirplayTargetIPv4___block_invoke;
  v3[3] = &unk_1E811D508;
  pv4Copy = pv4;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __37__CBAdvertiser_setAirplayTargetIPv4___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v1 != v3)
  {
    *(v2 + 104) = v1;
  }

  return v1 != v3;
}

- (void)setAirplayTargetPort:(unsigned __int16)port
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__CBAdvertiser_setAirplayTargetPort___block_invoke;
  v3[3] = &unk_1E811D580;
  portCopy = port;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __37__CBAdvertiser_setAirplayTargetPort___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 90);
  if (v1 != v3)
  {
    *(v2 + 90) = v1;
  }

  return v1 != v3;
}

- (void)setDsActionFlags:(unsigned __int8)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__CBAdvertiser_setDsActionFlags___block_invoke;
  v3[3] = &unk_1E811D530;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __33__CBAdvertiser_setDsActionFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v1 != v3)
  {
    *(v2 + 56) = v1;
  }

  return v1 != v3;
}

- (void)setDsActionMeasuredPower:(char)power
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CBAdvertiser_setDsActionMeasuredPower___block_invoke;
  v3[3] = &unk_1E811D530;
  powerCopy = power;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __41__CBAdvertiser_setDsActionMeasuredPower___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 57);
  if (v1 != v3)
  {
    *(v2 + 57) = v1;
  }

  return v1 != v3;
}

- (void)setDsActionTieBreaker:(unsigned __int8)breaker
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CBAdvertiser_setDsActionTieBreaker___block_invoke;
  v3[3] = &unk_1E811D530;
  breakerCopy = breaker;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __38__CBAdvertiser_setDsActionTieBreaker___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 58);
  if (v1 != v3)
  {
    *(v2 + 58) = v1;
  }

  return v1 != v3;
}

- (void)setDsInfoVehicleConfidence:(unsigned __int8)confidence
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__CBAdvertiser_setDsInfoVehicleConfidence___block_invoke;
  v3[3] = &unk_1E811D530;
  confidenceCopy = confidence;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __43__CBAdvertiser_setDsInfoVehicleConfidence___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 59);
  if (v1 != v3)
  {
    *(v2 + 59) = v1;
  }

  return v1 != v3;
}

- (void)setDsInfoVehicleState:(unsigned __int8)state
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CBAdvertiser_setDsInfoVehicleState___block_invoke;
  v3[3] = &unk_1E811D530;
  stateCopy = state;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __38__CBAdvertiser_setDsInfoVehicleState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 60);
  if (v1 != v3)
  {
    *(v2 + 60) = v1;
  }

  return v1 != v3;
}

- (void)setFidoPayloadData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__CBAdvertiser_setFidoPayloadData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __35__CBAdvertiser_setFidoPayloadData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 280);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 280);
    *(v10 + 280) = v11;
  }

  return v5;
}

- (void)setHeySiriConfidence:(unsigned __int8)confidence
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__CBAdvertiser_setHeySiriConfidence___block_invoke;
  v3[3] = &unk_1E811D530;
  confidenceCopy = confidence;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __37__CBAdvertiser_setHeySiriConfidence___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 62);
  if (v1 != v3)
  {
    *(v2 + 62) = v1;
  }

  return v1 != v3;
}

- (void)setHeySiriDeviceClass:(unsigned __int16)class
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CBAdvertiser_setHeySiriDeviceClass___block_invoke;
  v3[3] = &unk_1E811D580;
  classCopy = class;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __38__CBAdvertiser_setHeySiriDeviceClass___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 92);
  if (v1 != v3)
  {
    *(v2 + 92) = v1;
  }

  return v1 != v3;
}

- (void)setHeySiriPerceptualHash:(unsigned __int16)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CBAdvertiser_setHeySiriPerceptualHash___block_invoke;
  v3[3] = &unk_1E811D580;
  hashCopy = hash;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __41__CBAdvertiser_setHeySiriPerceptualHash___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 94);
  if (v1 != v3)
  {
    *(v2 + 94) = v1;
  }

  return v1 != v3;
}

- (void)setHeySiriProductType:(unsigned __int8)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CBAdvertiser_setHeySiriProductType___block_invoke;
  v3[3] = &unk_1E811D530;
  typeCopy = type;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __38__CBAdvertiser_setHeySiriProductType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 63);
  if (v1 != v3)
  {
    *(v2 + 63) = v1;
  }

  return v1 != v3;
}

- (void)setHeySiriRandom:(unsigned __int8)random
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__CBAdvertiser_setHeySiriRandom___block_invoke;
  v3[3] = &unk_1E811D530;
  randomCopy = random;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __33__CBAdvertiser_setHeySiriRandom___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v1 != v3)
  {
    *(v2 + 64) = v1;
  }

  return v1 != v3;
}

- (void)setHeySiriSNR:(unsigned __int8)r
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__CBAdvertiser_setHeySiriSNR___block_invoke;
  v3[3] = &unk_1E811D530;
  rCopy = r;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __30__CBAdvertiser_setHeySiriSNR___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 65);
  if (v1 != v3)
  {
    *(v2 + 65) = v1;
  }

  return v1 != v3;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1ED7C1CF0;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)setNearbyActionColorCode:(unsigned __int8)code
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CBAdvertiser_setNearbyActionColorCode___block_invoke;
  v3[3] = &unk_1E811D530;
  codeCopy = code;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __41__CBAdvertiser_setNearbyActionColorCode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 66);
  if (v1 != v3)
  {
    *(v2 + 66) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyActionExtraData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CBAdvertiser_setNearbyActionExtraData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = dataCopy;
  selfCopy = self;
  v5 = dataCopy;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __41__CBAdvertiser_setNearbyActionExtraData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 296);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 296);
    *(v10 + 296) = v11;
  }

  return v5;
}

- (void)setNearbyInfoFlags:(unsigned int)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__CBAdvertiser_setNearbyInfoFlags___block_invoke;
  v3[3] = &unk_1E811D508;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __35__CBAdvertiser_setNearbyInfoFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 116);
  if (v1 != v3)
  {
    *(v2 + 116) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoStatusProgress:(double)progress
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__CBAdvertiser_setNearbyInfoStatusProgress___block_invoke;
  v3[3] = &unk_1E811D5A8;
  *&v3[5] = progress;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __44__CBAdvertiser_setNearbyInfoStatusProgress___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 320);
  if (v1 != v3)
  {
    *(v2 + 320) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoStatusTime:(unsigned __int8)time
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__CBAdvertiser_setNearbyInfoStatusTime___block_invoke;
  v3[3] = &unk_1E811D530;
  timeCopy = time;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __40__CBAdvertiser_setNearbyInfoStatusTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 69);
  if (v1 != v3)
  {
    *(v2 + 69) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoStatusType:(unsigned __int8)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__CBAdvertiser_setNearbyInfoStatusType___block_invoke;
  v3[3] = &unk_1E811D530;
  typeCopy = type;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __40__CBAdvertiser_setNearbyInfoStatusType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 70);
  if (v1 != v3)
  {
    *(v2 + 70) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoV2DecryptedFlags:(unsigned __int8)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__CBAdvertiser_setNearbyInfoV2DecryptedFlags___block_invoke;
  v3[3] = &unk_1E811D530;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __46__CBAdvertiser_setNearbyInfoV2DecryptedFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v1 != v3)
  {
    *(v2 + 72) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoV2Flags:(unsigned __int8)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__CBAdvertiser_setNearbyInfoV2Flags___block_invoke;
  v3[3] = &unk_1E811D530;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __37__CBAdvertiser_setNearbyInfoV2Flags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 71);
  if (v1 != v3)
  {
    *(v2 + 71) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoV2InvitationCounter:(unsigned __int8)counter
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__CBAdvertiser_setNearbyInfoV2InvitationCounter___block_invoke;
  v3[3] = &unk_1E811D530;
  counterCopy = counter;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __49__CBAdvertiser_setNearbyInfoV2InvitationCounter___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 73);
  if (v1 != v3)
  {
    *(v2 + 73) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoV2InvitationTypes:(unsigned __int8)types
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__CBAdvertiser_setNearbyInfoV2InvitationTypes___block_invoke;
  v3[3] = &unk_1E811D530;
  typesCopy = types;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __47__CBAdvertiser_setNearbyInfoV2InvitationTypes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 74);
  if (v1 != v3)
  {
    *(v2 + 74) = v1;
  }

  return v1 != v3;
}

- (void)setnearbyInfoV2InvitationRouteType:(unsigned __int8)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__CBAdvertiser_setnearbyInfoV2InvitationRouteType___block_invoke;
  v3[3] = &unk_1E811D530;
  typeCopy = type;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __51__CBAdvertiser_setnearbyInfoV2InvitationRouteType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 75);
  if (v1 != v3)
  {
    *(v2 + 75) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoV2NearbyFaceTimeData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CBAdvertiser_setNearbyInfoV2NearbyFaceTimeData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = dataCopy;
  selfCopy = self;
  v5 = dataCopy;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __50__CBAdvertiser_setNearbyInfoV2NearbyFaceTimeData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 336);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 336);
    *(v10 + 336) = v11;
  }

  return v5;
}

- (void)setNearbyActionTargetData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CBAdvertiser_setNearbyActionTargetData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = dataCopy;
  selfCopy = self;
  v5 = dataCopy;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __42__CBAdvertiser_setNearbyActionTargetData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 304);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 304);
    *(v10 + 304) = v11;
  }

  return v5;
}

- (void)setNearbyActionNoWakeType:(unsigned __int8)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__CBAdvertiser_setNearbyActionNoWakeType___block_invoke;
  v3[3] = &unk_1E811D530;
  typeCopy = type;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __42__CBAdvertiser_setNearbyActionNoWakeType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 76);
  if (v1 != v3)
  {
    *(v2 + 76) = v1;
  }

  return v1 != v3;
}

- (void)setProximityServicePayload:(id)payload
{
  v4 = [payload copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CBAdvertiser_setProximityServicePayload___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __43__CBAdvertiser_setProximityServicePayload___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 360);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 360);
    *(v10 + 360) = v11;
  }

  return v5;
}

- (void)setProximityServiceSubType:(unsigned __int8)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__CBAdvertiser_setProximityServiceSubType___block_invoke;
  v3[3] = &unk_1E811D530;
  typeCopy = type;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __43__CBAdvertiser_setProximityServiceSubType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 78);
  if (v1 != v3)
  {
    *(v2 + 78) = v1;
  }

  return v1 != v3;
}

- (void)setSafetyAlertsAlertData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CBAdvertiser_setSafetyAlertsAlertData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __41__CBAdvertiser_setSafetyAlertsAlertData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 368);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 368);
    *(v10 + 368) = v11;
  }

  return v5;
}

- (void)setSafetyAlertsAlertID:(id)d
{
  dCopy = d;
  v5 = [dCopy copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__CBAdvertiser_setSafetyAlertsAlertID___block_invoke;
  v8[3] = &unk_1E811D5D0;
  v9 = v5;
  selfCopy = self;
  v11 = dCopy;
  v6 = dCopy;
  v7 = v5;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v8];
}

BOOL __39__CBAdvertiser_setSafetyAlertsAlertID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 376);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v10 = a1 + 40;
    v9 = *(a1 + 40);
    v11 = *(v10 + 8);
    v3 = *(v9 + 376);
    *(v9 + 376) = v11;
  }

  return v5;
}

- (void)setSafetyAlertsSignature:(id)signature
{
  v4 = [signature copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CBAdvertiser_setSafetyAlertsSignature___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __41__CBAdvertiser_setSafetyAlertsSignature___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 384);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 384);
    *(v10 + 384) = v11;
  }

  return v5;
}

- (void)setSafetyAlertsVersion:(unsigned __int8)version
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__CBAdvertiser_setSafetyAlertsVersion___block_invoke;
  v3[3] = &unk_1E811D530;
  versionCopy = version;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __39__CBAdvertiser_setSafetyAlertsVersion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 79);
  if (v1 != v3)
  {
    *(v2 + 79) = v1;
  }

  return v1 != v3;
}

- (void)setSoftwareUpdateActionType:(unsigned __int8)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__CBAdvertiser_setSoftwareUpdateActionType___block_invoke;
  v3[3] = &unk_1E811D530;
  typeCopy = type;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __44__CBAdvertiser_setSoftwareUpdateActionType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if (v1 != v3)
  {
    *(v2 + 80) = v1;
  }

  return v1 != v3;
}

- (void)setSoftwareUpdateDataArray:(id)array
{
  v4 = [array copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CBAdvertiser_setSoftwareUpdateDataArray___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __43__CBAdvertiser_setSoftwareUpdateDataArray___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 392);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 392);
    *(v10 + 392) = v11;
  }

  return v5;
}

- (void)setUseCase:(unsigned int)case
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__CBAdvertiser_setUseCase___block_invoke;
  v3[3] = &unk_1E811D508;
  caseCopy = case;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __27__CBAdvertiser_setUseCase___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (v1 != v3)
  {
    *(v2 + 96) = v1;
  }

  return v1 != v3;
}

- (void)setUseCaseClientIDs:(id)ds
{
  v4 = [ds copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__CBAdvertiser_setUseCaseClientIDs___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __36__CBAdvertiser_setUseCaseClientIDs___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 240);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 240);
    *(v10 + 240) = v11;
  }

  return v5;
}

- (void)setWatchSetupData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__CBAdvertiser_setWatchSetupData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __34__CBAdvertiser_setWatchSetupData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 400);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 400);
    *(v10 + 400) = v11;
  }

  return v5;
}

- (void)setNearbyActionNWPrecisionFindingStatus:(unsigned __int8)status
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__CBAdvertiser_setNearbyActionNWPrecisionFindingStatus___block_invoke;
  v3[3] = &unk_1E811D530;
  statusCopy = status;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __56__CBAdvertiser_setNearbyActionNWPrecisionFindingStatus___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 77);
  if (v1 != v3)
  {
    *(v2 + 77) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyActionNoWakeAuthTagData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CBAdvertiser_setNearbyActionNoWakeAuthTagData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __49__CBAdvertiser_setNearbyActionNoWakeAuthTagData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 344);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 344);
    *(v10 + 344) = v11;
  }

  return v5;
}

- (void)setNearbyActionNoWakeConfigData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CBAdvertiser_setNearbyActionNoWakeConfigData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __48__CBAdvertiser_setNearbyActionNoWakeConfigData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 352);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 352);
    *(v10 + 352) = v11;
  }

  return v5;
}

- (void)setEpaTxPower:(BOOL)power
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__CBAdvertiser_setEpaTxPower___block_invoke;
  v3[3] = &unk_1E811D530;
  powerCopy = power;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __30__CBAdvertiser_setEpaTxPower___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 61);
  if (v1 != v3)
  {
    *(v2 + 61) = v1;
  }

  return v1 != v3;
}

- (BOOL)updateWithCBAdvertiser:(id)advertiser
{
  v501[0] = 8;
  advertiserCopy = advertiser;
  advertiseRate = [advertiserCopy advertiseRate];
  advertiseRate = self->_advertiseRate;
  v6 = advertiseRate != advertiseRate;
  if (advertiseRate != advertiseRate)
  {
    v7 = advertiseRate;
    v500 = 0;
    if (advertiseRate > 39)
    {
      if (advertiseRate <= 44)
      {
        if (advertiseRate == 40)
        {
          v8 = "Medium";
          if (advertiseRate > 39)
          {
            goto LABEL_35;
          }

          goto LABEL_24;
        }

        if (advertiseRate == 42)
        {
          v8 = "MediumMid";
          if (advertiseRate > 39)
          {
            goto LABEL_35;
          }

          goto LABEL_24;
        }
      }

      else
      {
        switch(advertiseRate)
        {
          case '-':
            v8 = "MediumHigh";
            if (advertiseRate <= 39)
            {
              goto LABEL_24;
            }

            goto LABEL_35;
          case '2':
            v8 = "High";
            if (advertiseRate > 39)
            {
              goto LABEL_35;
            }

            goto LABEL_24;
          case '<':
            v8 = "Max";
            if (advertiseRate <= 39)
            {
              goto LABEL_24;
            }

            goto LABEL_35;
        }
      }
    }

    else if (advertiseRate <= 14)
    {
      if (!advertiseRate)
      {
        v8 = "Default";
        if (advertiseRate <= 39)
        {
          goto LABEL_24;
        }

        goto LABEL_35;
      }

      if (advertiseRate == 10)
      {
        v8 = "Periodic";
        if (advertiseRate <= 39)
        {
          goto LABEL_24;
        }

        goto LABEL_35;
      }
    }

    else
    {
      switch(advertiseRate)
      {
        case 15:
          v8 = "PeriodicHigh";
          if (advertiseRate <= 39)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        case 20:
          v8 = "Background";
          if (advertiseRate <= 39)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        case 30:
          v8 = "Low";
          if (advertiseRate > 39)
          {
            goto LABEL_35;
          }

LABEL_24:
          if (advertiseRate <= 14)
          {
            if (!advertiseRate)
            {
              v12 = "Default";
              goto LABEL_60;
            }

            if (advertiseRate == 10)
            {
              v12 = "Periodic";
              goto LABEL_60;
            }
          }

          else
          {
            switch(advertiseRate)
            {
              case 15:
                v12 = "PeriodicHigh";
                goto LABEL_60;
              case 20:
                v12 = "Background";
                goto LABEL_60;
              case 30:
                v12 = "Low";
                goto LABEL_60;
            }
          }

          goto LABEL_59;
      }
    }

    v8 = "?";
    if (advertiseRate <= 39)
    {
      goto LABEL_24;
    }

LABEL_35:
    if (advertiseRate <= 44)
    {
      if (advertiseRate == 40)
      {
        v12 = "Medium";
        goto LABEL_60;
      }

      if (advertiseRate == 42)
      {
        v12 = "MediumMid";
        goto LABEL_60;
      }
    }

    else
    {
      switch(advertiseRate)
      {
        case '-':
          v12 = "MediumHigh";
          goto LABEL_60;
        case '2':
          v12 = "High";
          goto LABEL_60;
        case '<':
          v12 = "Max";
          goto LABEL_60;
      }
    }

LABEL_59:
    v12 = "?";
LABEL_60:
    CUAppendF(&v500, v501, "AdvR: %s -> %s", v8, v12);
    v9 = v500;
    self->_advertiseRate = v7;
    useCase = [advertiserCopy useCase];
    useCase = self->_useCase;
    if (useCase == useCase)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v9 = 0;
  useCase = [advertiserCopy useCase];
  useCase = self->_useCase;
  if (useCase != useCase)
  {
LABEL_61:
    v499 = v9;
    v13 = CBUseCaseToString(useCase);
    v14 = CBUseCaseToString(useCase);
    CUAppendF(&v499, v501, "ucas: %s -> %s", v13, v14);
    v15 = v499;

    self->_useCase = useCase;
    v6 = 1;
    v9 = v15;
  }

LABEL_62:
  useCaseClientIDs = [advertiserCopy useCaseClientIDs];
  useCaseClientIDs = self->_useCaseClientIDs;
  v18 = useCaseClientIDs;
  v19 = useCaseClientIDs;
  v431 = v18;
  if (v18 == v19)
  {

    enableEPAForLEAdvertisement = [advertiserCopy enableEPAForLEAdvertisement];
    enableEPAForLEAdvertisement = self->_enableEPAForLEAdvertisement;
    if (enableEPAForLEAdvertisement != enableEPAForLEAdvertisement)
    {
      goto LABEL_141;
    }

LABEL_66:
    airdropFlags = [advertiserCopy airdropFlags];
    airdropFlags = self->_airdropFlags;
    if (airdropFlags == airdropFlags)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if ((v18 != 0) == (v19 == 0))
  {

LABEL_140:
    v498 = v9;
    v147 = CUPrintNSObjectOneLine();
    v148 = CUPrintNSObjectOneLine();
    CUAppendF(&v498, v501, "ucid: %@ -> %@", v147, v148);
    v149 = v498;

    v150 = v431;
    v151 = self->_useCaseClientIDs;
    self->_useCaseClientIDs = v150;
    v9 = v149;
    v6 = 1;

    enableEPAForLEAdvertisement = [advertiserCopy enableEPAForLEAdvertisement];
    enableEPAForLEAdvertisement = self->_enableEPAForLEAdvertisement;
    if (enableEPAForLEAdvertisement != enableEPAForLEAdvertisement)
    {
      goto LABEL_141;
    }

    goto LABEL_66;
  }

  v20 = v19;
  v21 = [(NSArray *)v18 isEqual:v19];

  if ((v21 & 1) == 0)
  {
    goto LABEL_140;
  }

  enableEPAForLEAdvertisement = [advertiserCopy enableEPAForLEAdvertisement];
  enableEPAForLEAdvertisement = self->_enableEPAForLEAdvertisement;
  if (enableEPAForLEAdvertisement == enableEPAForLEAdvertisement)
  {
    goto LABEL_66;
  }

LABEL_141:
  v152 = enableEPAForLEAdvertisement;
  v497 = v9;
  CUAppendF(&v497, v501, "naEE: %d -> %d", enableEPAForLEAdvertisement, enableEPAForLEAdvertisement);
  v153 = v497;

  self->_enableEPAForLEAdvertisement = v152;
  v6 = 1;
  v9 = v153;
  airdropFlags = [advertiserCopy airdropFlags];
  airdropFlags = self->_airdropFlags;
  if (airdropFlags != airdropFlags)
  {
LABEL_67:
    v26 = airdropFlags;
    v496 = v9;
    CUAppendF(&v496, v501, "adFl: 0x%2X -> 0x%2X", airdropFlags, airdropFlags);
    v27 = v496;

    self->_airdropFlags = v26;
    v6 = 1;
    v9 = v27;
  }

LABEL_68:
  airdropTempAuthTagData = [advertiserCopy airdropTempAuthTagData];
  airdropTempAuthTagData = self->_airdropTempAuthTagData;
  v30 = airdropTempAuthTagData;
  v31 = airdropTempAuthTagData;
  v430 = v30;
  if (v30 == v31)
  {

    airdropModel = [advertiserCopy airdropModel];
    airdropModel = self->_airdropModel;
    if (airdropModel != airdropModel)
    {
      goto LABEL_145;
    }

LABEL_72:
    airdropVersion = [advertiserCopy airdropVersion];
    airdropVersion = self->_airdropVersion;
    if (airdropVersion == airdropVersion)
    {
      goto LABEL_73;
    }

    goto LABEL_146;
  }

  if ((v30 != 0) == (v31 == 0))
  {

LABEL_144:
    v495 = v9;
    v154 = CUPrintNSDataHex();
    v155 = CUPrintNSDataHex();
    CUAppendF(&v495, v501, "adTa: <%@> -> <%@>", v154, v155);
    v156 = v495;

    v157 = v430;
    v158 = self->_airdropTempAuthTagData;
    self->_airdropTempAuthTagData = v157;
    v9 = v156;
    v6 = 1;

    airdropModel = [advertiserCopy airdropModel];
    airdropModel = self->_airdropModel;
    if (airdropModel != airdropModel)
    {
      goto LABEL_145;
    }

    goto LABEL_72;
  }

  v32 = v31;
  v33 = [(NSData *)v30 isEqual:v31];

  if ((v33 & 1) == 0)
  {
    goto LABEL_144;
  }

  airdropModel = [advertiserCopy airdropModel];
  airdropModel = self->_airdropModel;
  if (airdropModel == airdropModel)
  {
    goto LABEL_72;
  }

LABEL_145:
  v159 = airdropModel;
  v494 = v9;
  CUAppendF(&v494, v501, "adMl: 0x%2X -> 0x%2X", airdropModel, airdropModel);
  v160 = v494;

  self->_airdropModel = v159;
  v6 = 1;
  v9 = v160;
  airdropVersion = [advertiserCopy airdropVersion];
  airdropVersion = self->_airdropVersion;
  if (airdropVersion == airdropVersion)
  {
LABEL_73:
    airdropHash1 = [advertiserCopy airdropHash1];
    airdropHash1 = self->_airdropHash1;
    if (airdropHash1 == airdropHash1)
    {
      goto LABEL_74;
    }

    goto LABEL_147;
  }

LABEL_146:
  v161 = airdropVersion;
  v493 = v9;
  CUAppendF(&v493, v501, "adVs: %d -> %d", airdropVersion, airdropVersion);
  v162 = v493;

  self->_airdropVersion = v161;
  v6 = 1;
  v9 = v162;
  airdropHash1 = [advertiserCopy airdropHash1];
  airdropHash1 = self->_airdropHash1;
  if (airdropHash1 == airdropHash1)
  {
LABEL_74:
    airdropHash2 = [advertiserCopy airdropHash2];
    airdropHash2 = self->_airdropHash2;
    if (airdropHash2 == airdropHash2)
    {
      goto LABEL_75;
    }

    goto LABEL_148;
  }

LABEL_147:
  v163 = airdropHash1;
  v492 = v9;
  CUAppendF(&v492, v501, "adH1: 0x%04X -> 0x%04X", airdropHash1, airdropHash1);
  v164 = v492;

  self->_airdropHash1 = v163;
  v6 = 1;
  v9 = v164;
  airdropHash2 = [advertiserCopy airdropHash2];
  airdropHash2 = self->_airdropHash2;
  if (airdropHash2 == airdropHash2)
  {
LABEL_75:
    airdropHash3 = [advertiserCopy airdropHash3];
    airdropHash3 = self->_airdropHash3;
    if (airdropHash3 == airdropHash3)
    {
      goto LABEL_76;
    }

    goto LABEL_149;
  }

LABEL_148:
  v165 = airdropHash2;
  v491 = v9;
  CUAppendF(&v491, v501, "adH2: 0x%04X -> 0x%04X", airdropHash2, airdropHash2);
  v166 = v491;

  self->_airdropHash2 = v165;
  v6 = 1;
  v9 = v166;
  airdropHash3 = [advertiserCopy airdropHash3];
  airdropHash3 = self->_airdropHash3;
  if (airdropHash3 == airdropHash3)
  {
LABEL_76:
    airdropHash4 = [advertiserCopy airdropHash4];
    airdropHash4 = self->_airdropHash4;
    if (airdropHash4 == airdropHash4)
    {
      goto LABEL_77;
    }

    goto LABEL_150;
  }

LABEL_149:
  v167 = airdropHash3;
  v490 = v9;
  CUAppendF(&v490, v501, "adH3: 0x%04X -> 0x%04X", airdropHash3, airdropHash3);
  v168 = v490;

  self->_airdropHash3 = v167;
  v6 = 1;
  v9 = v168;
  airdropHash4 = [advertiserCopy airdropHash4];
  airdropHash4 = self->_airdropHash4;
  if (airdropHash4 == airdropHash4)
  {
LABEL_77:
    airdropConfigData = [advertiserCopy airdropConfigData];
    airdropConfigData = self->_airdropConfigData;
    if (airdropConfigData == airdropConfigData)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

LABEL_150:
  v169 = airdropHash4;
  v489 = v9;
  CUAppendF(&v489, v501, "adH4: 0x%04X -> 0x%04X", airdropHash4, airdropHash4);
  v170 = v489;

  self->_airdropHash4 = v169;
  v6 = 1;
  v9 = v170;
  airdropConfigData = [advertiserCopy airdropConfigData];
  airdropConfigData = self->_airdropConfigData;
  if (airdropConfigData != airdropConfigData)
  {
LABEL_78:
    v48 = airdropConfigData;
    v488 = v9;
    CUAppendF(&v488, v501, "adCd: 0x%02X -> 0x%02X", airdropConfigData, airdropConfigData);
    v49 = v488;

    self->_airdropConfigData = v48;
    v6 = 1;
    v9 = v49;
  }

LABEL_79:
  airplaySourceAuthTagData = [advertiserCopy airplaySourceAuthTagData];
  airplaySourceAuthTagData = self->_airplaySourceAuthTagData;
  v52 = airplaySourceAuthTagData;
  v53 = airplaySourceAuthTagData;
  v429 = v52;
  if (v52 == v53)
  {

    v143 = v52;
  }

  else
  {
    if ((v52 != 0) != (v53 == 0))
    {
      v54 = v53;
      v55 = [(NSData *)v52 isEqual:v53];

      if (v55)
      {
        airplaySourceFlags = [advertiserCopy airplaySourceFlags];
        if (airplaySourceFlags == self->_airplaySourceFlags)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      }
    }

    else
    {
    }

    v487 = v9;
    v171 = CUPrintNSDataHex();
    v172 = CUPrintNSDataHex();
    CUAppendF(&v487, v501, "apTA: <%@> -> <%@>", v171, v172);
    v173 = v487;

    v174 = v429;
    v143 = self->_airplaySourceAuthTagData;
    self->_airplaySourceAuthTagData = v174;
    v9 = v173;
    v6 = 1;
  }

  airplaySourceFlags = [advertiserCopy airplaySourceFlags];
  if (airplaySourceFlags != self->_airplaySourceFlags)
  {
LABEL_83:
    v486 = v9;
    v57 = CUPrintFlags32();
    v58 = CUPrintFlags32();
    CUAppendF(&v486, v501, "apSF: %@ -> %@", v57, v58);
    v59 = v486;

    self->_airplaySourceFlags = airplaySourceFlags;
    v6 = 1;
    v9 = v59;
  }

LABEL_84:
  airplaySourceUWBConfigData = [advertiserCopy airplaySourceUWBConfigData];
  airplaySourceUWBConfigData = self->_airplaySourceUWBConfigData;
  v62 = airplaySourceUWBConfigData;
  v63 = airplaySourceUWBConfigData;
  if (v62 == v63)
  {

    v144 = v62;
  }

  else
  {
    if ((v62 != 0) != (v63 == 0))
    {
      v64 = v63;
      v65 = [(NSData *)v62 isEqual:v63];

      if (v65)
      {
        airplayTargetConfigSeed = [advertiserCopy airplayTargetConfigSeed];
        airplayTargetConfigSeed = self->_airplayTargetConfigSeed;
        if (airplayTargetConfigSeed == airplayTargetConfigSeed)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }
    }

    else
    {
    }

    v485 = v9;
    v175 = CUPrintNSDataHex();
    v176 = CUPrintNSDataHex();
    CUAppendF(&v485, v501, "apUW: %@ -> %@", v175, v176);
    v177 = v485;

    v178 = v62;
    v144 = self->_airplaySourceUWBConfigData;
    self->_airplaySourceUWBConfigData = v178;
    v9 = v177;
    v6 = 1;
  }

  airplayTargetConfigSeed = [advertiserCopy airplayTargetConfigSeed];
  airplayTargetConfigSeed = self->_airplayTargetConfigSeed;
  if (airplayTargetConfigSeed != airplayTargetConfigSeed)
  {
LABEL_88:
    v68 = airplayTargetConfigSeed;
    v484 = v9;
    CUAppendF(&v484, v501, "apSF: %u -> %u", airplayTargetConfigSeed, airplayTargetConfigSeed);
    v69 = v484;

    self->_airplayTargetConfigSeed = v68;
    v6 = 1;
    v9 = v69;
  }

LABEL_89:
  airplayTargetFlags = [advertiserCopy airplayTargetFlags];
  v424 = v62;
  if (airplayTargetFlags != self->_airplayTargetFlags)
  {
    v483 = v9;
    v71 = CUPrintFlags32();
    v72 = CUPrintFlags32();
    CUAppendF(&v483, v501, "apTF: %@ -> %@", v71, v72);
    v73 = v483;

    self->_airplayTargetFlags = airplayTargetFlags;
    v6 = 1;
    v9 = v73;
  }

  airplayTargetIPv4 = [advertiserCopy airplayTargetIPv4];
  if (airplayTargetIPv4 != self->_airplayTargetIPv4)
  {
    v481 = v9;
    v6 = 1;
    v74 = CUPrintAddress();
    v75 = CUPrintAddress();
    CUAppendF(&v481, v501, "apTI: %@ -> %@", v74, v75);
    v76 = v481;

    self->_airplayTargetIPv4 = airplayTargetIPv4;
    v9 = v76;
  }

  airplayTargetPort = [advertiserCopy airplayTargetPort];
  airplayTargetPort = self->_airplayTargetPort;
  if (airplayTargetPort != airplayTargetPort)
  {
    v81 = airplayTargetPort;
    v480 = v9;
    CUAppendF(&v480, v501, "apTP: %u -> %u", airplayTargetPort, airplayTargetPort);
    v82 = v480;

    self->_airplayTargetPort = v81;
    v79 = 1;
    v9 = v82;
    dsActionFlags = [advertiserCopy dsActionFlags];
    if (dsActionFlags == self->_dsActionFlags)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  v79 = v6;
  dsActionFlags = [advertiserCopy dsActionFlags];
  if (dsActionFlags != self->_dsActionFlags)
  {
LABEL_97:
    v479 = v9;
    v83 = CUPrintFlags32();
    v84 = CUPrintFlags32();
    CUAppendF(&v479, v501, "dsAF: %@ -> %@", v83, v84);
    v85 = v479;

    self->_dsActionFlags = dsActionFlags;
    v79 = 1;
    v9 = v85;
  }

LABEL_98:
  dsActionMeasuredPower = [advertiserCopy dsActionMeasuredPower];
  dsActionMeasuredPower = self->_dsActionMeasuredPower;
  if (dsActionMeasuredPower == self->_dsActionMeasuredPower)
  {
    dsActionTieBreaker = [advertiserCopy dsActionTieBreaker];
    dsActionTieBreaker = self->_dsActionTieBreaker;
    if (dsActionTieBreaker == dsActionTieBreaker)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v134 = dsActionMeasuredPower;
    v478 = v9;
    CUAppendF(&v478, v501, "dsAP: %d -> %d", dsActionMeasuredPower, dsActionMeasuredPower);
    v135 = v478;

    self->_dsActionMeasuredPower = v134;
    v79 = 1;
    v9 = v135;
    dsActionTieBreaker = [advertiserCopy dsActionTieBreaker];
    dsActionTieBreaker = self->_dsActionTieBreaker;
    if (dsActionTieBreaker == dsActionTieBreaker)
    {
LABEL_100:
      dsInfoVehicleConfidence = [advertiserCopy dsInfoVehicleConfidence];
      dsInfoVehicleConfidence = self->_dsInfoVehicleConfidence;
      if (dsInfoVehicleConfidence == dsInfoVehicleConfidence)
      {
        goto LABEL_101;
      }

      goto LABEL_125;
    }
  }

  v136 = dsActionTieBreaker;
  v477 = v9;
  CUAppendF(&v477, v501, "dsAT: 0x%02X -> 0x%02X", dsActionTieBreaker, dsActionTieBreaker);
  v137 = v477;

  self->_dsActionTieBreaker = v136;
  v79 = 1;
  v9 = v137;
  dsInfoVehicleConfidence = [advertiserCopy dsInfoVehicleConfidence];
  dsInfoVehicleConfidence = self->_dsInfoVehicleConfidence;
  if (dsInfoVehicleConfidence == dsInfoVehicleConfidence)
  {
LABEL_101:
    dsInfoVehicleState = [advertiserCopy dsInfoVehicleState];
    dsInfoVehicleState = self->_dsInfoVehicleState;
    if (dsInfoVehicleState == dsInfoVehicleState)
    {
      goto LABEL_102;
    }

    goto LABEL_126;
  }

LABEL_125:
  v138 = dsInfoVehicleConfidence;
  v476 = v9;
  CUAppendF(&v476, v501, "dsVC: %u -> %u", dsInfoVehicleConfidence, dsInfoVehicleConfidence);
  v139 = v476;

  self->_dsInfoVehicleConfidence = v138;
  v79 = 1;
  v9 = v139;
  dsInfoVehicleState = [advertiserCopy dsInfoVehicleState];
  dsInfoVehicleState = self->_dsInfoVehicleState;
  if (dsInfoVehicleState == dsInfoVehicleState)
  {
LABEL_102:
    enableEPAForLEAdvertisement2 = [advertiserCopy enableEPAForLEAdvertisement];
    v95 = self->_enableEPAForLEAdvertisement;
    if (v95 == enableEPAForLEAdvertisement2)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

LABEL_126:
  v140 = dsInfoVehicleState;
  v475 = v9;
  if (dsInfoVehicleState > 2)
  {
    v141 = "?";
    if (dsInfoVehicleState > 2)
    {
      goto LABEL_128;
    }
  }

  else
  {
    v141 = off_1E811DDD8[dsInfoVehicleState];
    if (dsInfoVehicleState > 2)
    {
LABEL_128:
      v142 = "?";
      goto LABEL_313;
    }
  }

  v142 = off_1E811DDD8[dsInfoVehicleState];
LABEL_313:
  CUAppendF(&v475, v501, "dsVS: %s -> %s", v141, v142);
  v397 = v475;

  self->_dsInfoVehicleState = v140;
  v79 = 1;
  v9 = v397;
  enableEPAForLEAdvertisement2 = [advertiserCopy enableEPAForLEAdvertisement];
  v95 = self->_enableEPAForLEAdvertisement;
  if (v95 != enableEPAForLEAdvertisement2)
  {
LABEL_103:
    v96 = enableEPAForLEAdvertisement2;
    v474 = v9;
    CUAppendF(&v474, v501, "naEE: %d -> %d", v95, enableEPAForLEAdvertisement2);
    v97 = v474;

    self->_enableEPAForLEAdvertisement = v96;
    v79 = 1;
    v9 = v97;
  }

LABEL_104:
  fidoPayloadData = [advertiserCopy fidoPayloadData];
  fidoPayloadData = self->_fidoPayloadData;
  v100 = fidoPayloadData;
  v101 = fidoPayloadData;
  if (v100 == v101)
  {

    heySiriConfidence = [advertiserCopy heySiriConfidence];
    heySiriConfidence = self->_heySiriConfidence;
    if (heySiriConfidence != heySiriConfidence)
    {
      goto LABEL_162;
    }

LABEL_108:
    heySiriDeviceClass = [advertiserCopy heySiriDeviceClass];
    heySiriDeviceClass = self->_heySiriDeviceClass;
    if (heySiriDeviceClass == heySiriDeviceClass)
    {
      goto LABEL_109;
    }

    goto LABEL_163;
  }

  if ((v100 != 0) == (v101 == 0))
  {

LABEL_161:
    v473 = v9;
    v179 = CUPrintNSDataHex();
    v180 = CUPrintNSDataHex();
    CUAppendF(&v473, v501, "fdPD: <%@> -> <%@>", v179, v180);
    v181 = v473;

    v182 = v100;
    v183 = self->_fidoPayloadData;
    self->_fidoPayloadData = v182;
    v9 = v181;
    v79 = 1;

    heySiriConfidence = [advertiserCopy heySiriConfidence];
    heySiriConfidence = self->_heySiriConfidence;
    if (heySiriConfidence != heySiriConfidence)
    {
      goto LABEL_162;
    }

    goto LABEL_108;
  }

  v102 = v101;
  v103 = [(NSData *)v100 isEqual:v101];

  if ((v103 & 1) == 0)
  {
    goto LABEL_161;
  }

  heySiriConfidence = [advertiserCopy heySiriConfidence];
  heySiriConfidence = self->_heySiriConfidence;
  if (heySiriConfidence == heySiriConfidence)
  {
    goto LABEL_108;
  }

LABEL_162:
  v184 = heySiriConfidence;
  v472 = v9;
  CUAppendF(&v472, v501, "hsCf: %u -> %u", heySiriConfidence, heySiriConfidence);
  v185 = v472;

  self->_heySiriConfidence = v184;
  v79 = 1;
  v9 = v185;
  heySiriDeviceClass = [advertiserCopy heySiriDeviceClass];
  heySiriDeviceClass = self->_heySiriDeviceClass;
  if (heySiriDeviceClass == heySiriDeviceClass)
  {
LABEL_109:
    heySiriPerceptualHash = [advertiserCopy heySiriPerceptualHash];
    heySiriPerceptualHash = self->_heySiriPerceptualHash;
    if (heySiriPerceptualHash == heySiriPerceptualHash)
    {
      goto LABEL_110;
    }

    goto LABEL_318;
  }

LABEL_163:
  v186 = heySiriDeviceClass;
  v471 = v9;
  if (heySiriDeviceClass > 0xA)
  {
    v187 = "?";
    if (heySiriDeviceClass > 0xA)
    {
      goto LABEL_165;
    }
  }

  else
  {
    v187 = off_1E811DDF0[heySiriDeviceClass];
    if (heySiriDeviceClass > 0xA)
    {
LABEL_165:
      v188 = "?";
      goto LABEL_317;
    }
  }

  v188 = off_1E811DDF0[heySiriDeviceClass];
LABEL_317:
  CUAppendF(&v471, v501, "hsDC: %s -> %s", v187, v188);
  v398 = v471;

  self->_heySiriDeviceClass = v186;
  v79 = 1;
  v9 = v398;
  heySiriPerceptualHash = [advertiserCopy heySiriPerceptualHash];
  heySiriPerceptualHash = self->_heySiriPerceptualHash;
  if (heySiriPerceptualHash == heySiriPerceptualHash)
  {
LABEL_110:
    heySiriProductType = [advertiserCopy heySiriProductType];
    heySiriProductType = self->_heySiriProductType;
    if (heySiriProductType == heySiriProductType)
    {
      goto LABEL_111;
    }

    goto LABEL_319;
  }

LABEL_318:
  v399 = heySiriPerceptualHash;
  v470 = v9;
  CUAppendF(&v470, v501, "hsPH: 0x%04X -> 0x%04X", heySiriPerceptualHash, heySiriPerceptualHash);
  v400 = v470;

  self->_heySiriPerceptualHash = v399;
  v79 = 1;
  v9 = v400;
  heySiriProductType = [advertiserCopy heySiriProductType];
  heySiriProductType = self->_heySiriProductType;
  if (heySiriProductType == heySiriProductType)
  {
LABEL_111:
    heySiriRandom = [advertiserCopy heySiriRandom];
    heySiriRandom = self->_heySiriRandom;
    if (heySiriRandom == heySiriRandom)
    {
      goto LABEL_112;
    }

    goto LABEL_331;
  }

LABEL_319:
  v401 = heySiriProductType;
  v469 = v9;
  if (heySiriProductType > 4)
  {
    v402 = "?";
    if (heySiriProductType > 4)
    {
      goto LABEL_321;
    }
  }

  else
  {
    v402 = off_1E811DE48[heySiriProductType];
    if (heySiriProductType > 4)
    {
LABEL_321:
      v403 = "?";
      goto LABEL_330;
    }
  }

  v403 = off_1E811DE48[heySiriProductType];
LABEL_330:
  CUAppendF(&v469, v501, "hsPT: %s -> %s", v402, v403);
  v408 = v469;

  self->_heySiriProductType = v401;
  v79 = 1;
  v9 = v408;
  heySiriRandom = [advertiserCopy heySiriRandom];
  heySiriRandom = self->_heySiriRandom;
  if (heySiriRandom == heySiriRandom)
  {
LABEL_112:
    heySiriSNR = [advertiserCopy heySiriSNR];
    heySiriSNR = self->_heySiriSNR;
    if (heySiriSNR == heySiriSNR)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

LABEL_331:
  v409 = heySiriRandom;
  v468 = v9;
  CUAppendF(&v468, v501, "hsRn: 0x%02X -> 0x%02X", heySiriRandom, heySiriRandom);
  v410 = v468;

  self->_heySiriRandom = v409;
  v79 = 1;
  v9 = v410;
  heySiriSNR = [advertiserCopy heySiriSNR];
  heySiriSNR = self->_heySiriSNR;
  if (heySiriSNR != heySiriSNR)
  {
LABEL_113:
    v116 = heySiriSNR;
    v467 = v9;
    CUAppendF(&v467, v501, "hsSN: %u -> %u", heySiriSNR, heySiriSNR);
    v117 = v467;

    self->_heySiriSNR = v116;
    v79 = 1;
    v9 = v117;
  }

LABEL_114:
  nearbyActionAuthTagData = [advertiserCopy nearbyActionAuthTagData];
  nearbyActionAuthTagData = self->_nearbyActionAuthTagData;
  v120 = nearbyActionAuthTagData;
  v121 = nearbyActionAuthTagData;
  v428 = v120;
  if (v120 == v121)
  {

    v145 = v120;
  }

  else
  {
    if ((v120 != 0) != (v121 == 0))
    {
      v122 = v121;
      v123 = [(NSData *)v120 isEqual:v121];

      if (v123)
      {
        nearbyActionColorCode = [advertiserCopy nearbyActionColorCode];
        nearbyActionColorCode = self->_nearbyActionColorCode;
        if (nearbyActionColorCode == nearbyActionColorCode)
        {
          goto LABEL_119;
        }

        goto LABEL_118;
      }
    }

    else
    {
    }

    v466 = v9;
    v189 = CUPrintNSDataHex();
    v190 = CUPrintNSDataHex();
    CUAppendF(&v466, v501, "nbAT: <%@> -> <%@>", v189, v190);
    v191 = v466;

    v192 = v428;
    v145 = self->_nearbyActionAuthTagData;
    self->_nearbyActionAuthTagData = v192;
    v9 = v191;
    v79 = 1;
  }

  nearbyActionColorCode = [advertiserCopy nearbyActionColorCode];
  nearbyActionColorCode = self->_nearbyActionColorCode;
  if (nearbyActionColorCode != nearbyActionColorCode)
  {
LABEL_118:
    v126 = nearbyActionColorCode;
    v465 = v9;
    CUAppendF(&v465, v501, "naCC: %u -> %u", nearbyActionColorCode, nearbyActionColorCode);
    v127 = v465;

    self->_nearbyActionColorCode = v126;
    v79 = 1;
    v9 = v127;
  }

LABEL_119:
  nearbyActionExtraData = [advertiserCopy nearbyActionExtraData];
  nearbyActionExtraData = self->_nearbyActionExtraData;
  v130 = nearbyActionExtraData;
  v131 = nearbyActionExtraData;
  if (v130 == v131)
  {

    v146 = v130;
LABEL_172:

    goto LABEL_173;
  }

  if ((v130 != 0) == (v131 == 0))
  {

    goto LABEL_171;
  }

  v132 = v131;
  v133 = [(NSData *)v130 isEqual:v131];

  if ((v133 & 1) == 0)
  {
LABEL_171:
    v464 = v9;
    v193 = CUPrintNSDataHex();
    v194 = CUPrintNSDataHex();
    CUAppendF(&v464, v501, "naED: <%@> -> <%@>", v193, v194);
    v195 = v464;

    v196 = v130;
    v146 = self->_nearbyActionExtraData;
    self->_nearbyActionExtraData = v196;
    v9 = v195;
    v79 = 1;
    goto LABEL_172;
  }

LABEL_173:
  nearbyActionFlags = [advertiserCopy nearbyActionFlags];
  v422 = v130;
  v423 = v100;
  if (nearbyActionFlags != self->_nearbyActionFlags)
  {
    v463 = v9;
    v198 = CUPrintFlags32();
    v199 = CUPrintFlags32();
    CUAppendF(&v463, v501, "nbAF: %@ -> %@", v198, v199);
    v200 = v463;

    self->_nearbyActionFlags = nearbyActionFlags;
    v79 = 1;
    v9 = v200;
  }

  nearbyActionType = [advertiserCopy nearbyActionType];
  nearbyActionType = self->_nearbyActionType;
  if (nearbyActionType != nearbyActionType)
  {
    v462 = v9;
    v203 = CBNearbyActionTypeToString(nearbyActionType);
    v204 = CBNearbyActionTypeToString(nearbyActionType);
    CUAppendF(&v462, v501, "nbAc: %s -> %s", v203, v204);
    v205 = v462;

    self->_nearbyActionType = nearbyActionType;
    v79 = 1;
    v9 = v205;
  }

  nearbyActionTargetData = [advertiserCopy nearbyActionTargetData];
  nearbyActionTargetData = self->_nearbyActionTargetData;
  v208 = nearbyActionTargetData;
  v209 = nearbyActionTargetData;
  v427 = v208;
  if (v208 == v209)
  {

    v253 = v208;
  }

  else
  {
    if ((v208 != 0) != (v209 == 0))
    {
      v210 = v209;
      v211 = [(NSData *)v208 isEqual:v209];

      if (v211)
      {
        nearbyActionV2Flags = [advertiserCopy nearbyActionV2Flags];
        if (nearbyActionV2Flags == self->_nearbyActionV2Flags)
        {
          goto LABEL_182;
        }

        goto LABEL_181;
      }
    }

    else
    {
    }

    v461 = v9;
    v256 = CUPrintNSDataHex();
    v257 = CUPrintNSDataHex();
    CUAppendF(&v461, v501, "nbTg: <%@> -> <%@>", v256, v257);
    v258 = v461;

    v259 = v427;
    v253 = self->_nearbyActionTargetData;
    self->_nearbyActionTargetData = v259;
    v9 = v258;
    v79 = 1;
  }

  nearbyActionV2Flags = [advertiserCopy nearbyActionV2Flags];
  if (nearbyActionV2Flags != self->_nearbyActionV2Flags)
  {
LABEL_181:
    v460 = v9;
    v213 = CUPrintFlags32();
    v214 = CUPrintFlags32();
    CUAppendF(&v460, v501, "n2AF: %@ -> %@", v213, v214);
    v215 = v460;

    self->_nearbyActionV2Flags = nearbyActionV2Flags;
    v79 = 1;
    v9 = v215;
  }

LABEL_182:
  nearbyActionV2TargetData = [advertiserCopy nearbyActionV2TargetData];
  nearbyActionV2TargetData = self->_nearbyActionV2TargetData;
  v218 = nearbyActionV2TargetData;
  v219 = nearbyActionV2TargetData;
  if (v218 == v219)
  {

    v254 = v218;
  }

  else
  {
    if ((v218 != 0) != (v219 == 0))
    {
      v220 = v219;
      v221 = [(NSData *)v218 isEqual:v219];

      if (v221)
      {
        nearbyActionV2Type = [advertiserCopy nearbyActionV2Type];
        nearbyActionV2Type = self->_nearbyActionV2Type;
        if (nearbyActionV2Type == nearbyActionV2Type)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      }
    }

    else
    {
    }

    v459 = v9;
    v260 = CUPrintNSDataHex();
    v261 = CUPrintNSDataHex();
    CUAppendF(&v459, v501, "n2Tg: <%@> -> <%@>", v260, v261);
    v262 = v459;

    v263 = v218;
    v254 = self->_nearbyActionV2TargetData;
    self->_nearbyActionV2TargetData = v263;
    v9 = v262;
    v79 = 1;
  }

  nearbyActionV2Type = [advertiserCopy nearbyActionV2Type];
  nearbyActionV2Type = self->_nearbyActionV2Type;
  if (nearbyActionV2Type != nearbyActionV2Type)
  {
LABEL_186:
    v458 = v9;
    v224 = CBNearbyActionTypeToString(nearbyActionV2Type);
    v225 = CBNearbyActionTypeToString(nearbyActionV2Type);
    CUAppendF(&v458, v501, "n2Ac: %s -> %s", v224, v225);
    v226 = v458;

    self->_nearbyActionV2Type = nearbyActionV2Type;
    v79 = 1;
    v9 = v226;
  }

LABEL_187:
  nearbyInfoFlags = [advertiserCopy nearbyInfoFlags];
  v421 = v218;
  if (nearbyInfoFlags != self->_nearbyInfoFlags)
  {
    v457 = v9;
    v228 = CUPrintFlags32();
    v229 = CUPrintFlags32();
    CUAppendF(&v457, v501, "niFl: %@ -> %@", v228, v229);
    v230 = v457;

    self->_nearbyInfoFlags = nearbyInfoFlags;
    v79 = 1;
    v9 = v230;
  }

  [advertiserCopy nearbyInfoStatusProgress];
  nearbyInfoStatusProgress = self->_nearbyInfoStatusProgress;
  if (v231 != nearbyInfoStatusProgress)
  {
    v456 = v9;
    v233 = v231;
    CUAppendF(&v456, v501, "nsPr: %.0f%% -> %.0f%%", nearbyInfoStatusProgress * 100.0, v231 * 100.0);
    v234 = v456;

    self->_nearbyInfoStatusProgress = v233;
    v79 = 1;
    v9 = v234;
  }

  nearbyInfoStatusTime = [advertiserCopy nearbyInfoStatusTime];
  nearbyInfoStatusTime = self->_nearbyInfoStatusTime;
  if (nearbyInfoStatusTime == nearbyInfoStatusTime)
  {
    nearbyInfoStatusType = [advertiserCopy nearbyInfoStatusType];
    nearbyInfoStatusType = self->_nearbyInfoStatusType;
    if (nearbyInfoStatusType == nearbyInfoStatusType)
    {
      goto LABEL_193;
    }

    goto LABEL_325;
  }

  v250 = nearbyInfoStatusTime;
  v455 = v9;
  if (nearbyInfoStatusTime > 0xE)
  {
    v251 = "?";
    if (nearbyInfoStatusTime > 0xE)
    {
      goto LABEL_202;
    }
  }

  else
  {
    v251 = off_1E811DE70[nearbyInfoStatusTime];
    if (nearbyInfoStatusTime > 0xE)
    {
LABEL_202:
      v252 = "?";
      goto LABEL_324;
    }
  }

  v252 = off_1E811DE70[nearbyInfoStatusTime];
LABEL_324:
  CUAppendF(&v455, v501, "nsTi: %s -> %s", v251, v252);
  v404 = v455;

  self->_nearbyInfoStatusTime = v250;
  v79 = 1;
  v9 = v404;
  nearbyInfoStatusType = [advertiserCopy nearbyInfoStatusType];
  nearbyInfoStatusType = self->_nearbyInfoStatusType;
  if (nearbyInfoStatusType == nearbyInfoStatusType)
  {
LABEL_193:
    nearbyInfoV2DecryptedFlags = [advertiserCopy nearbyInfoV2DecryptedFlags];
    if (nearbyInfoV2DecryptedFlags == self->_nearbyInfoV2DecryptedFlags)
    {
      goto LABEL_194;
    }

    goto LABEL_336;
  }

LABEL_325:
  v405 = nearbyInfoStatusType;
  v454 = v9;
  if (nearbyInfoStatusType > 0xD)
  {
    v406 = "?";
    if (nearbyInfoStatusType > 0xD)
    {
      goto LABEL_327;
    }
  }

  else
  {
    v406 = off_1E811DEE8[nearbyInfoStatusType];
    if (nearbyInfoStatusType > 0xD)
    {
LABEL_327:
      v407 = "?";
      goto LABEL_335;
    }
  }

  v407 = off_1E811DEE8[nearbyInfoStatusType];
LABEL_335:
  CUAppendF(&v454, v501, "nsTy: %s -> %s", v406, v407);
  v411 = v454;

  self->_nearbyInfoStatusType = v405;
  v79 = 1;
  v9 = v411;
  nearbyInfoV2DecryptedFlags = [advertiserCopy nearbyInfoV2DecryptedFlags];
  if (nearbyInfoV2DecryptedFlags == self->_nearbyInfoV2DecryptedFlags)
  {
LABEL_194:
    nearbyInfoV2Flags = [advertiserCopy nearbyInfoV2Flags];
    if (nearbyInfoV2Flags == self->_nearbyInfoV2Flags)
    {
      goto LABEL_196;
    }

    goto LABEL_195;
  }

LABEL_336:
  v453 = v9;
  v412 = CUPrintFlags32();
  v413 = CUPrintFlags32();
  CUAppendF(&v453, v501, "nb2Fe: %@ -> %@", v412, v413);
  v414 = v453;

  self->_nearbyInfoV2DecryptedFlags = nearbyInfoV2DecryptedFlags;
  v79 = 1;
  v9 = v414;
  nearbyInfoV2Flags = [advertiserCopy nearbyInfoV2Flags];
  if (nearbyInfoV2Flags != self->_nearbyInfoV2Flags)
  {
LABEL_195:
    v452 = v9;
    v241 = CUPrintFlags32();
    v242 = CUPrintFlags32();
    CUAppendF(&v452, v501, "nb2F: %@ -> %@", v241, v242);
    v243 = v452;

    self->_nearbyInfoV2Flags = nearbyInfoV2Flags;
    v79 = 1;
    v9 = v243;
  }

LABEL_196:
  nearbyInfoV2AuthIntegrityTagData = [advertiserCopy nearbyInfoV2AuthIntegrityTagData];
  nearbyInfoV2AuthIntegrityTagData = self->_nearbyInfoV2AuthIntegrityTagData;
  v246 = nearbyInfoV2AuthIntegrityTagData;
  v247 = nearbyInfoV2AuthIntegrityTagData;
  if (v246 == v247)
  {

    v255 = v246;
LABEL_216:

    goto LABEL_217;
  }

  if ((v246 != 0) == (v247 == 0))
  {

    goto LABEL_215;
  }

  v248 = v247;
  v249 = [(NSData *)v246 isEqual:v247];

  if ((v249 & 1) == 0)
  {
LABEL_215:
    v451 = v9;
    v264 = CUPrintNSDataHex();
    v265 = CUPrintNSDataHex();
    CUAppendF(&v451, v501, "nb2Ai: <%@> -> <%@>", v264, v265);
    v266 = v451;

    v267 = v246;
    v255 = self->_nearbyInfoV2AuthIntegrityTagData;
    self->_nearbyInfoV2AuthIntegrityTagData = v267;
    v9 = v266;
    v79 = 1;
    goto LABEL_216;
  }

LABEL_217:
  nearbyInfoV2AuthTagData = [advertiserCopy nearbyInfoV2AuthTagData];
  nearbyInfoV2AuthTagData = self->_nearbyInfoV2AuthTagData;
  v270 = nearbyInfoV2AuthTagData;
  v271 = nearbyInfoV2AuthTagData;
  if (v270 == v271)
  {

    v305 = v270;
  }

  else
  {
    if ((v270 != 0) != (v271 == 0))
    {
      v272 = v271;
      v273 = [(NSData *)v270 isEqual:v271];

      if (v273)
      {
        nearbyInfoV2InvitationCounter = [advertiserCopy nearbyInfoV2InvitationCounter];
        nearbyInfoV2InvitationCounter = self->_nearbyInfoV2InvitationCounter;
        v419 = v270;
        if (nearbyInfoV2InvitationCounter == nearbyInfoV2InvitationCounter)
        {
          goto LABEL_221;
        }

        goto LABEL_251;
      }
    }

    else
    {
    }

    v450 = v9;
    v308 = CUPrintNSDataHex();
    v309 = CUPrintNSDataHex();
    CUAppendF(&v450, v501, "nb2A: <%@> -> <%@>", v308, v309);
    v310 = v450;

    v311 = v270;
    v305 = self->_nearbyInfoV2AuthTagData;
    self->_nearbyInfoV2AuthTagData = v311;
    v9 = v310;
    v79 = 1;
  }

  nearbyInfoV2InvitationCounter = [advertiserCopy nearbyInfoV2InvitationCounter];
  nearbyInfoV2InvitationCounter = self->_nearbyInfoV2InvitationCounter;
  v419 = v270;
  if (nearbyInfoV2InvitationCounter == nearbyInfoV2InvitationCounter)
  {
LABEL_221:
    nearbyInfoV2InvitationTypes = [advertiserCopy nearbyInfoV2InvitationTypes];
    nearbyInfoV2InvitationTypes = self->_nearbyInfoV2InvitationTypes;
    if (nearbyInfoV2InvitationTypes == nearbyInfoV2InvitationTypes)
    {
      goto LABEL_222;
    }

    goto LABEL_252;
  }

LABEL_251:
  v312 = nearbyInfoV2InvitationCounter;
  v449 = v9;
  CUAppendF(&v449, v501, "nb2IC: %u -> %u", nearbyInfoV2InvitationCounter, nearbyInfoV2InvitationCounter);
  v313 = v449;

  self->_nearbyInfoV2InvitationCounter = v312;
  v79 = 1;
  v9 = v313;
  nearbyInfoV2InvitationTypes = [advertiserCopy nearbyInfoV2InvitationTypes];
  nearbyInfoV2InvitationTypes = self->_nearbyInfoV2InvitationTypes;
  if (nearbyInfoV2InvitationTypes == nearbyInfoV2InvitationTypes)
  {
LABEL_222:
    nearbyInfoV2InvitationRouteType = [advertiserCopy nearbyInfoV2InvitationRouteType];
    nearbyInfoV2InvitationRouteType = self->_nearbyInfoV2InvitationRouteType;
    if (nearbyInfoV2InvitationRouteType == nearbyInfoV2InvitationRouteType)
    {
      goto LABEL_224;
    }

    goto LABEL_223;
  }

LABEL_252:
  v314 = nearbyInfoV2InvitationTypes;
  v448 = v9;
  CUAppendF(&v448, v501, "nb2It: %u -> %u", nearbyInfoV2InvitationTypes, nearbyInfoV2InvitationTypes);
  v315 = v448;

  self->_nearbyInfoV2InvitationTypes = v314;
  v79 = 1;
  v9 = v315;
  nearbyInfoV2InvitationRouteType = [advertiserCopy nearbyInfoV2InvitationRouteType];
  nearbyInfoV2InvitationRouteType = self->_nearbyInfoV2InvitationRouteType;
  if (nearbyInfoV2InvitationRouteType != nearbyInfoV2InvitationRouteType)
  {
LABEL_223:
    v280 = nearbyInfoV2InvitationRouteType;
    v447 = v9;
    CUAppendF(&v447, v501, "nb2Ir: %u -> %u", nearbyInfoV2InvitationRouteType, nearbyInfoV2InvitationRouteType);
    v281 = v447;

    self->_nearbyInfoV2InvitationRouteType = v280;
    v79 = 1;
    v9 = v281;
  }

LABEL_224:
  nearbyInfoV2NearbyFaceTimeData = [advertiserCopy nearbyInfoV2NearbyFaceTimeData];
  nearbyInfoV2NearbyFaceTimeData = self->_nearbyInfoV2NearbyFaceTimeData;
  v284 = nearbyInfoV2NearbyFaceTimeData;
  v285 = nearbyInfoV2NearbyFaceTimeData;
  if (v284 == v285)
  {

    v306 = v284;
    goto LABEL_256;
  }

  if ((v284 != 0) == (v285 == 0))
  {

    goto LABEL_255;
  }

  v286 = v285;
  v287 = [(NSData *)v284 isEqual:v285];

  if ((v287 & 1) == 0)
  {
LABEL_255:
    v446 = v9;
    v316 = CUPrintNSDataHex();
    v317 = CUPrintNSDataHex();
    CUAppendF(&v446, v501, "nb2FT: <%@> -> <%@>", v316, v317);
    v318 = v446;

    v319 = v284;
    v306 = self->_nearbyInfoV2NearbyFaceTimeData;
    self->_nearbyInfoV2NearbyFaceTimeData = v319;
    v9 = v318;
    v79 = 1;
LABEL_256:

    nearbyActionNoWakeType = [advertiserCopy nearbyActionNoWakeType];
    nearbyActionNoWakeType = self->_nearbyActionNoWakeType;
    if (nearbyActionNoWakeType == nearbyActionNoWakeType)
    {
      goto LABEL_239;
    }

    goto LABEL_228;
  }

  nearbyActionNoWakeType = [advertiserCopy nearbyActionNoWakeType];
  nearbyActionNoWakeType = self->_nearbyActionNoWakeType;
  if (nearbyActionNoWakeType == nearbyActionNoWakeType)
  {
    goto LABEL_239;
  }

LABEL_228:
  v290 = "?";
  v445 = v9;
  if (nearbyActionNoWakeType == 1)
  {
    v291 = "PrecisionFinding";
  }

  else
  {
    v291 = "?";
  }

  if (nearbyActionNoWakeType)
  {
    v292 = v291;
  }

  else
  {
    v292 = "Unspecified";
  }

  if (nearbyActionNoWakeType == 1)
  {
    v290 = "PrecisionFinding";
  }

  if (!nearbyActionNoWakeType)
  {
    v290 = "Unspecified";
  }

  v293 = nearbyActionNoWakeType;
  CUAppendF(&v445, v501, "nawT: %s -> %s", v292, v290);
  v294 = v445;

  self->_nearbyActionNoWakeType = v293;
  v79 = 1;
  v9 = v294;
LABEL_239:
  nearbyActionNWPrecisionFindingStatus = [advertiserCopy nearbyActionNWPrecisionFindingStatus];
  v420 = v246;
  if (nearbyActionNWPrecisionFindingStatus != self->_nearbyActionNWPrecisionFindingStatus)
  {
    v444 = v9;
    v296 = CUPrintFlags32();
    v297 = CUPrintFlags32();
    CUAppendF(&v444, v501, "nawS: %@ -> %@", v296, v297);
    v298 = v444;

    self->_nearbyActionNWPrecisionFindingStatus = nearbyActionNWPrecisionFindingStatus;
    v79 = 1;
    v9 = v298;
  }

  nearbyActionNoWakeAuthTagData = [advertiserCopy nearbyActionNoWakeAuthTagData];
  nearbyActionNoWakeAuthTagData = self->_nearbyActionNoWakeAuthTagData;
  v301 = nearbyActionNoWakeAuthTagData;
  v302 = nearbyActionNoWakeAuthTagData;
  if (v301 == v302)
  {

    v307 = v301;
LABEL_260:

    goto LABEL_261;
  }

  if ((v301 != 0) == (v302 == 0))
  {

    goto LABEL_259;
  }

  v303 = v302;
  v304 = [(NSData *)v301 isEqual:v302];

  if ((v304 & 1) == 0)
  {
LABEL_259:
    v443 = v9;
    v320 = CUPrintNSDataHex();
    v321 = CUPrintNSDataHex();
    CUAppendF(&v443, v501, "nawA: <%@> -> <%@>", v320, v321);
    v322 = v443;

    v323 = v301;
    v307 = self->_nearbyActionNoWakeAuthTagData;
    self->_nearbyActionNoWakeAuthTagData = v323;
    v9 = v322;
    v79 = 1;
    goto LABEL_260;
  }

LABEL_261:
  nearbyActionNoWakeConfigData = [advertiserCopy nearbyActionNoWakeConfigData];
  nearbyActionNoWakeConfigData = self->_nearbyActionNoWakeConfigData;
  v326 = nearbyActionNoWakeConfigData;
  v327 = nearbyActionNoWakeConfigData;
  v426 = v326;
  if (v326 == v327)
  {

LABEL_268:
    goto LABEL_269;
  }

  if ((v326 != 0) == (v327 == 0))
  {

    goto LABEL_267;
  }

  v328 = v327;
  v329 = [(NSData *)v326 isEqual:v327];

  if ((v329 & 1) == 0)
  {
LABEL_267:
    v442 = v9;
    v330 = CUPrintNSDataHex();
    v331 = CUPrintNSDataHex();
    CUAppendF(&v442, v501, "nawC: <%@> -> <%@>", v330, v331);
    v332 = v442;

    v333 = v426;
    v326 = self->_nearbyActionNoWakeConfigData;
    self->_nearbyActionNoWakeConfigData = v333;
    v9 = v332;
    v79 = 1;
    goto LABEL_268;
  }

LABEL_269:
  proximityServicePayload = [advertiserCopy proximityServicePayload];
  proximityServicePayload = self->_proximityServicePayload;
  v336 = proximityServicePayload;
  v337 = proximityServicePayload;
  v418 = v301;
  if (v336 == v337)
  {

    v370 = v336;
  }

  else
  {
    if ((v336 != 0) != (v337 == 0))
    {
      v338 = v337;
      v339 = [(NSData *)v336 isEqual:v337];

      if (v339)
      {
        proximityServiceSubType = [advertiserCopy proximityServiceSubType];
        proximityServiceSubType = self->_proximityServiceSubType;
        v417 = v336;
        if (proximityServiceSubType == proximityServiceSubType)
        {
          goto LABEL_274;
        }

        goto LABEL_273;
      }
    }

    else
    {
    }

    v441 = v9;
    v79 = 1;
    v372 = CUPrintNSDataHex();
    v373 = CUPrintNSDataHex();
    CUAppendF(&v441, v501, "%s: <%@> -> <%@>", "pxSP", v372, v373);
    v374 = v441;

    v375 = v336;
    v370 = self->_proximityServicePayload;
    self->_proximityServicePayload = v375;
    v9 = v374;
  }

  proximityServiceSubType = [advertiserCopy proximityServiceSubType];
  proximityServiceSubType = self->_proximityServiceSubType;
  v417 = v336;
  if (proximityServiceSubType != proximityServiceSubType)
  {
LABEL_273:
    v342 = proximityServiceSubType;
    v440 = v9;
    CUAppendF(&v440, v501, "%s: %u -> %u", "pxSS", proximityServiceSubType, proximityServiceSubType);
    v343 = v440;

    self->_proximityServiceSubType = v342;
    v79 = 1;
    v9 = v343;
  }

LABEL_274:
  safetyAlertsAlertData = [advertiserCopy safetyAlertsAlertData];
  if (safetyAlertsAlertData != self->_safetyAlertsAlertData)
  {
    v439 = v9;
    v79 = 1;
    v345 = CUPrintNSDataHex();
    v346 = CUPrintNSDataHex();
    CUAppendF(&v439, v501, "saAd: %@ -> %@", v345, v346);
    v347 = v439;

    objc_storeStrong(&self->_safetyAlertsAlertData, safetyAlertsAlertData);
    v9 = v347;
  }

  safetyAlertsAlertID = [advertiserCopy safetyAlertsAlertID];
  v416 = safetyAlertsAlertID;
  if (safetyAlertsAlertID != self->_safetyAlertsAlertID)
  {
    v438 = v9;
    v79 = 1;
    v349 = CUPrintNSDataHex();
    v350 = CUPrintNSDataHex();
    CUAppendF(&v438, v501, "saAi: %@ -> %@", v349, v350);
    v351 = v438;

    objc_storeStrong(&self->_safetyAlertsAlertID, safetyAlertsAlertID);
    v9 = v351;
  }

  safetyAlertsSignature = [advertiserCopy safetyAlertsSignature];
  if (safetyAlertsSignature != self->_safetyAlertsSignature)
  {
    v437 = v9;
    v79 = 1;
    v353 = CUPrintNSDataHex();
    v354 = CUPrintNSDataHex();
    CUAppendF(&v437, v501, "saSg: %@ -> %@", v353, v354);
    v355 = v437;

    objc_storeStrong(&self->_safetyAlertsSignature, safetyAlertsSignature);
    v9 = v355;
  }

  safetyAlertsVersion = [advertiserCopy safetyAlertsVersion];
  safetyAlertsVersion = self->_safetyAlertsVersion;
  if (safetyAlertsVersion != safetyAlertsVersion)
  {
    v358 = safetyAlertsVersion;
    v436 = v9;
    CUAppendF(&v436, v501, "saVs: %d -> %d", safetyAlertsVersion, safetyAlertsVersion);
    v359 = v436;

    self->_safetyAlertsVersion = v358;
    v79 = 1;
    v9 = v359;
  }

  softwareUpdateActionType = [advertiserCopy softwareUpdateActionType];
  softwareUpdateActionType = self->_softwareUpdateActionType;
  if (softwareUpdateActionType != softwareUpdateActionType)
  {
    v362 = softwareUpdateActionType;
    v435 = v9;
    CUAppendF(&v435, v501, "suA: %d -> %d", softwareUpdateActionType, softwareUpdateActionType);
    v363 = v435;

    self->_softwareUpdateActionType = v362;
    v79 = 1;
    v9 = v363;
  }

  softwareUpdateDataArray = [advertiserCopy softwareUpdateDataArray];
  softwareUpdateDataArray = self->_softwareUpdateDataArray;
  v366 = softwareUpdateDataArray;
  v367 = softwareUpdateDataArray;
  if (v366 == v367)
  {
    v425 = v79;

    v371 = v366;
  }

  else
  {
    if ((v366 != 0) != (v367 == 0))
    {
      v368 = v367;
      v369 = [(NSArray *)v366 isEqual:v367];

      if (v369)
      {
        v425 = v79;
        goto LABEL_297;
      }
    }

    else
    {
    }

    v434 = v9;
    v376 = CUPrintNSObjectOneLine();
    v377 = CUPrintNSObjectOneLine();
    CUAppendF(&v434, v501, "suD: %@ -> %@", v376, v377);
    v378 = v434;

    v379 = v366;
    v371 = self->_softwareUpdateDataArray;
    self->_softwareUpdateDataArray = v379;
    v425 = 1;
    v9 = v378;
  }

LABEL_297:
  watchSetupData = [advertiserCopy watchSetupData];
  watchSetupData = self->_watchSetupData;
  v382 = watchSetupData;
  v383 = watchSetupData;
  v384 = v383;
  if (v382 == v383)
  {

    v387 = v423;
    v386 = v424;
    v388 = v421;
    var0 = self->_ucat->var0;
    if (v9)
    {
      goto LABEL_301;
    }

LABEL_308:
    if (var0 <= 10 && (var0 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_310;
    }

    goto LABEL_341;
  }

  if ((v382 != 0) == (v383 == 0))
  {

LABEL_307:
    v433 = v9;
    v425 = 1;
    v390 = CUPrintNSDataHex();
    v391 = CUPrintNSDataHex();
    CUAppendF(&v433, v501, "wsDa: <%@> -> <%@>", v390, v391);
    v392 = v284;
    v393 = safetyAlertsAlertData;
    v394 = v433;

    v395 = v382;
    v396 = self->_watchSetupData;
    self->_watchSetupData = v395;
    v9 = v394;
    safetyAlertsAlertData = v393;
    v284 = v392;

    v387 = v423;
    v386 = v424;
    v388 = v421;
    var0 = self->_ucat->var0;
    if (v9)
    {
      goto LABEL_301;
    }

    goto LABEL_308;
  }

  v385 = [(NSData *)v382 isEqual:v383];

  if ((v385 & 1) == 0)
  {
    goto LABEL_307;
  }

  v387 = v423;
  v386 = v424;
  v388 = v421;
  var0 = self->_ucat->var0;
  if (!v9)
  {
    goto LABEL_308;
  }

LABEL_301:
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
LABEL_310:
    LogPrintF_safe();
  }

LABEL_341:

  return v425;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activateCalled)
  {
    selfCopy->_activateCalled = 1;
    v6 = MEMORY[0x1C68DF720](completionCopy);
    activateCompletion = selfCopy->_activateCompletion;
    selfCopy->_activateCompletion = v6;

    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__CBAdvertiser_activateWithCompletion___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_activate
{
  v3 = self->_mockID;
  v14 = v3;
  if (v3)
  {
    CBMockAddOrUpdateAdvertiser(v3, self);
    v4 = MEMORY[0x1C68DF720](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v4)
    {
      v4[2](v4, 0);
    }

LABEL_26:

    goto LABEL_27;
  }

  if (self->_bluetoothStateChangedHandler)
  {
    self->_internalFlags |= 1u;
  }

  if (self->_xpcListenerEndpoint)
  {
    v6 = 1;
  }

  else
  {
    v6 = gCBDaemonServer == 0;
  }

  v7 = !v6;
  self->_direct = v7;
  if (self->_invalidateCalled)
  {
    v4 = NSErrorF(@"CBErrorDomain", 4294896148, "Activate after invalidate");
    var0 = self->_ucat->var0;
    if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
    {
      v13 = CUPrintNSError();
      LogPrintF_safe();
    }

    v9 = MEMORY[0x1C68DF720](self->_activateCompletion);
    v10 = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v9)
    {
      v9[2](v9, v4);
    }

    else
    {
      v11 = MEMORY[0x1C68DF720](self->_errorHandler);
      v12 = v11;
      if (v11)
      {
        (*(v11 + 16))(v11, v4);
      }
    }

    goto LABEL_26;
  }

  if (v7)
  {
    [(CBAdvertiser *)self _activateDirectStart];
  }

  else
  {
    [(CBAdvertiser *)self _activateXPCStart:0];
  }

LABEL_27:
}

- (void)_activateDirectStart
{
  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    clientID = self->_clientID;
    LogPrintF_safe();
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__CBAdvertiser__activateDirectStart__block_invoke;
  v5[3] = &unk_1E811D5F8;
  v5[4] = self;
  [gCBDaemonServer activateCBAdvertiser:self completion:{v5, clientID}];
}

void __36__CBAdvertiser__activateDirectStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 184);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CBAdvertiser__activateDirectStart__block_invoke_2;
  v7[3] = &unk_1E811CF50;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __36__CBAdvertiser__activateDirectStart__block_invoke_2(uint64_t a1)
{
  v9 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = **(*(a1 + 32) + 32);
  if (*(a1 + 40))
  {
    if (v4 <= 90 && (v4 != -1 || _LogCategory_Initialize()))
    {
      v8 = CUPrintNSError();
      LogPrintF_safe();
    }

    if (v9)
    {
      (*(v9 + 16))(v9, *(a1 + 40));
    }

    else
    {
      v5 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 192));
      v6 = v5;
      if (v5)
      {
        (*(v5 + 16))(v5, *(a1 + 40));
      }
    }

    goto LABEL_17;
  }

  if (v4 <= 30 && (v4 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v7 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, 0);
LABEL_17:
    v7 = v9;
  }
}

- (void)_activateXPCStart:(BOOL)start
{
  var0 = self->_ucat->var0;
  if (start)
  {
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
LABEL_7:
      LogPrintF_safe();
    }
  }

  else if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_7;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  [(CBAdvertiser *)self encodeWithXPCObject:v5];
  xpc_dictionary_set_string(v5, "mTyp", "AdvA");
  _ensureXPCStarted = [(CBAdvertiser *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __34__CBAdvertiser__activateXPCStart___block_invoke;
  handler[3] = &unk_1E811D158;
  handler[4] = self;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v5, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)completed
{
  completedCopy = completed;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__CBAdvertiser__activateXPCCompleted___block_invoke;
  v11[3] = &unk_1E811D378;
  v11[4] = self;
  v11[5] = &v12;
  v5 = MEMORY[0x1C68DF720](v11);
  v6 = CUXPCDecodeNSErrorIfNeeded();
  v7 = v13[5];
  v13[5] = v6;

  if (!v13[5])
  {
    CUXPCDecodeNSData();
    CUXPCDecodeNSData();
    CUXPCDecodeNSData();
    self->_softwareUpdateDataArrayCountMaximumLimit = xpc_dictionary_get_int64(completedCopy, "aSuda");
    self->_bluetoothState = xpc_dictionary_get_int64(completedCopy, "pwrS");
    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v9 = MEMORY[0x1C68DF720](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v9)
    {
      v9[2](v9, 0);
    }
  }

  v5[2](v5);

  _Block_object_dispose(&v12, 8);
}

void __38__CBAdvertiser__activateXPCCompleted___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = *(a1 + 32);
    v3 = **(v2 + 32);
    if (v3 <= 90)
    {
      if (v3 != -1 || (v4 = _LogCategory_Initialize(), v2 = *(a1 + 32), v4))
      {
        v9 = CUPrintNSError();
        LogPrintF_safe();

        v2 = *(a1 + 32);
      }
    }

    v10 = MEMORY[0x1C68DF720](*(v2 + 16));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;

    if (v10)
    {
      v10[2](v10, *(*(*(a1 + 40) + 8) + 40));
    }

    else
    {
      v7 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 192));
      v8 = v7;
      if (v7)
      {
        (*(v7 + 16))(v7, *(*(*(a1 + 40) + 8) + 40));
      }
    }
  }
}

- (id)_ensureXPCStarted
{
  p_xpcCnx = &self->_xpcCnx;
  v4 = self->_xpcCnx;
  if (v4)
  {
  }

  else
  {
    v6 = self->_xpcListenerEndpoint;
    v7 = v6;
    if (v6)
    {
      mach_service = xpc_connection_create_from_endpoint(v6);
      xpc_connection_set_target_queue(mach_service, self->_dispatchQueue);
    }

    else
    {
      mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", self->_dispatchQueue, 0);
    }

    objc_storeStrong(p_xpcCnx, mach_service);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__CBAdvertiser__ensureXPCStarted__block_invoke;
    v10[3] = &unk_1E811D620;
    v10[4] = self;
    v9 = mach_service;
    v11 = v9;
    xpc_connection_set_event_handler(v9, v10);
    xpc_connection_activate(v9);

    v4 = v9;
  }

  return v4;
}

void *__33__CBAdvertiser__ensureXPCStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[5] == *(a1 + 40))
  {
    return [result xpcReceivedMessage:a2];
  }

  return result;
}

- (void)_interrupted
{
  if (!self->_invalidateCalled)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v5 = MEMORY[0x1C68DF720](self->_interruptionHandler);
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5);
    }

    self->_bluetoothState = 1;
    v7 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 16))(v7);
    }

    [(CBAdvertiser *)self _activateXPCStart:1];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CBAdvertiser_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __26__CBAdvertiser_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 26) & 1) == 0)
  {
    *(v2 + 26) = 1;
    v4 = *(a1 + 32);
    v5 = **(v4 + 32);
    if (v5 <= 30)
    {
      if (v5 != -1 || (v6 = _LogCategory_Initialize(), v4 = *(a1 + 32), v6))
      {
        v10 = v4;
        LogPrintF_safe();
        v4 = *(a1 + 32);
      }
    }

    v7 = *(v4 + 256);
    v11 = v7;
    if (v7)
    {
      CBMockRemoveAdvertiser(v7, *(a1 + 32));
    }

    v8 = *(a1 + 32);
    if (*(v8 + 25) == 1)
    {
      [v8 _invalidateDirect];
      v8 = *(a1 + 32);
    }

    v9 = *(v8 + 40);
    if (v9)
    {
      xpc_connection_cancel(v9);
    }

    [*(a1 + 32) _invalidated];
  }
}

void __33__CBAdvertiser__invalidateDirect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 184);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CBAdvertiser__invalidateDirect__block_invoke_2;
  block[3] = &unk_1E811D130;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_direct && !self->_xpcCnx)
  {
    self->_invalidateCalled = 1;
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      selfCopy = self;
      invalidationHandler[2](self->_invalidationHandler, a2);
      self = selfCopy;
    }

    advertisingAddressChangedHandler = self->_advertisingAddressChangedHandler;
    self->_advertisingAddressChangedHandler = 0;
    selfCopy2 = self;

    bluetoothStateChangedHandler = selfCopy2->_bluetoothStateChangedHandler;
    selfCopy2->_bluetoothStateChangedHandler = 0;

    errorHandler = selfCopy2->_errorHandler;
    selfCopy2->_errorHandler = 0;

    interruptionHandler = selfCopy2->_interruptionHandler;
    selfCopy2->_interruptionHandler = 0;

    v9 = selfCopy2->_invalidationHandler;
    selfCopy2->_invalidationHandler = 0;

    selfCopy2->_invalidateDone = 1;
    var0 = selfCopy2->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (void)_updateIfNeededWithBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((blockCopy[2](blockCopy) & 1) != 0 && selfCopy->_activateCalled && !selfCopy->_changesPending)
  {
    selfCopy->_changesPending = 1;
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__CBAdvertiser__updateIfNeededWithBlock___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_update
{
  if (!self->_invalidateCalled)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    changesPending = selfCopy->_changesPending;
    selfCopy->_changesPending = 0;
    objc_sync_exit(selfCopy);

    var0 = selfCopy->_ucat->var0;
    if (changesPending)
    {
      if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      xdict = xpc_dictionary_create(0, 0, 0);
      [(CBAdvertiser *)selfCopy encodeWithXPCObject:xdict];
      xpc_dictionary_set_string(xdict, "mTyp", "AdvU");
      _ensureXPCStarted = [(CBAdvertiser *)selfCopy _ensureXPCStarted];
      xpc_connection_send_message(_ensureXPCStarted, xdict);
    }

    else if (var0 <= 10 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (void)xpcReceivedMessage:(id)message
{
  messageCopy = message;
  var0 = self->_ucat->var0;
  v18 = messageCopy;
  if (var0 <= 9)
  {
    if (var0 != -1 || (v6 = _LogCategory_Initialize(), messageCopy = v18, v6))
    {
      v16 = CUPrintXPC();
      LogPrintF_safe();

      messageCopy = v18;
    }
  }

  if (MEMORY[0x1C68DFDD0](messageCopy) == MEMORY[0x1E69E9E80])
  {
    [(CBAdvertiser *)self _xpcReceivedMessage:v18];
    goto LABEL_26;
  }

  if (v18 == MEMORY[0x1E69E9E18])
  {
    [(CBAdvertiser *)self _interrupted];
    goto LABEL_26;
  }

  if (v18 != MEMORY[0x1E69E9E20])
  {
    v7 = CUXPCDecodeNSErrorIfNeeded();
    v8 = v7;
    if (v7)
    {
      v9 = v7;

      v10 = self->_ucat->var0;
      if (v10 > 90)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = NSErrorF(@"CBErrorDomain", 4294960596, "XPC event error");

      v10 = self->_ucat->var0;
      if (v10 > 90)
      {
LABEL_21:
        v13 = MEMORY[0x1C68DF720](self->_errorHandler);
        v14 = v13;
        if (v13)
        {
          (*(v13 + 16))(v13, v9);
        }

        goto LABEL_26;
      }
    }

    if (v10 != -1 || _LogCategory_Initialize())
    {
      v12 = CUPrintNSError();
      v17 = CUPrintXPC();
      LogPrintF_safe();
    }

    goto LABEL_21;
  }

  if (!self->_invalidateCalled)
  {
    v11 = self->_ucat->var0;
    if (v11 <= 90 && (v11 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;

  [(CBAdvertiser *)self _invalidated];
LABEL_26:
}

- (void)_xpcReceivedMessage:(id)message
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "mTyp");
  if (!string)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v5 = string;
  if (!strcmp(string, "AdAC"))
  {
    [(CBAdvertiser *)self _xpcReceivedAdvertisingAddressChanged:messageCopy];
    v8 = messageCopy;
  }

  else
  {
    if (strcmp(v5, "PwrC"))
    {
      v6 = self->_ucat->var0;
      if (v6 <= 90 && (v6 != -1 || _LogCategory_Initialize()))
      {
LABEL_9:
        LogPrintF_safe();
      }

LABEL_10:
      v8 = messageCopy;

      goto LABEL_12;
    }

    [(CBAdvertiser *)self _xpcReceivedPowerStateChanged:messageCopy];
    v8 = messageCopy;
  }

LABEL_12:
}

- (void)_xpcReceivedAdvertisingAddressChanged:(id)changed
{
  changedCopy = changed;
  CUXPCDecodeNSData();
  CUXPCDecodeNSData();
  CUXPCDecodeNSData();
  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v6 = MEMORY[0x1C68DF720](self->_advertisingAddressChangedHandler);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
  }
}

- (void)_xpcReceivedPowerStateChanged:(id)changed
{
  xdict = changed;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    self->_bluetoothState = xpc_dictionary_get_int64(xdict, "pwrS");
    v4 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4);
    }

    v6 = xdict;
  }

  else
  {
    [CBAdvertiser _xpcReceivedPowerStateChanged:?];
    v6 = xdict;
  }
}

- (CBAdvertiser)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(CBAdvertiser *)self init];

  if (!v7)
  {
    if (!error)
    {
      goto LABEL_176;
    }

    NSErrorF(@"CBErrorDomain", 4294960540, "CBAdvertiser init failed");
LABEL_172:
    *error = v277 = 0;
    goto LABEL_167;
  }

  if (MEMORY[0x1C68DFDD0](objectCopy) != MEMORY[0x1E69E9E80])
  {
    if (!error)
    {
      goto LABEL_176;
    }

    NSErrorF(@"CBErrorDomain", 4294960540, "XPC non-dict");
    goto LABEL_172;
  }

  v8 = CUXPCDecodeSInt64RangedEx();
  if (v8 == 6)
  {
    v7->_advertiseRate = 0;
  }

  else if (v8 == 5)
  {
    goto LABEL_176;
  }

  v9 = OUTLINED_FUNCTION_0();
  v14 = OUTLINED_FUNCTION_5(v9, v10, v11, v12, v13);
  if (v14 == 6)
  {
    v7->_clientID = 0;
  }

  else if (v14 == 5)
  {
    goto LABEL_176;
  }

  v15 = OUTLINED_FUNCTION_0();
  v20 = OUTLINED_FUNCTION_5(v15, v16, v17, v18, v19);
  if (v20 == 6)
  {
    v7->_internalFlags = 0;
  }

  else if (v20 == 5)
  {
    goto LABEL_176;
  }

  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_176;
  }

  v21 = OUTLINED_FUNCTION_0();
  v26 = OUTLINED_FUNCTION_5(v21, v22, v23, v24, v25);
  if (v26 == 6)
  {
    v7->_useCase = 0;
  }

  else if (v26 == 5)
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_176;
  }

  v27 = OUTLINED_FUNCTION_0();
  v32 = OUTLINED_FUNCTION_3_1(v27, v28, v29, v30, v31);
  if (v32 == 6)
  {
    v7->_airdropFlags = 0;
  }

  else if (v32 == 5)
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_176;
  }

  v33 = OUTLINED_FUNCTION_0();
  v38 = OUTLINED_FUNCTION_3_1(v33, v34, v35, v36, v37);
  if (v38 == 6)
  {
    v7->_airdropModel = 0;
  }

  else if (v38 == 5)
  {
    goto LABEL_176;
  }

  v39 = OUTLINED_FUNCTION_0();
  v44 = OUTLINED_FUNCTION_3_1(v39, v40, v41, v42, v43);
  if (v44 == 6)
  {
    v7->_airdropVersion = 0;
  }

  else if (v44 == 5)
  {
    goto LABEL_176;
  }

  v45 = OUTLINED_FUNCTION_0();
  v50 = OUTLINED_FUNCTION_4_0(v45, v46, v47, v48, v49);
  if (v50 == 6)
  {
    v7->_airdropHash1 = 0;
  }

  else if (v50 == 5)
  {
    goto LABEL_176;
  }

  v51 = OUTLINED_FUNCTION_0();
  v56 = OUTLINED_FUNCTION_4_0(v51, v52, v53, v54, v55);
  if (v56 == 6)
  {
    v7->_airdropHash2 = 0;
  }

  else if (v56 == 5)
  {
    goto LABEL_176;
  }

  v57 = OUTLINED_FUNCTION_0();
  v62 = OUTLINED_FUNCTION_4_0(v57, v58, v59, v60, v61);
  if (v62 == 6)
  {
    v7->_airdropHash3 = 0;
  }

  else if (v62 == 5)
  {
    goto LABEL_176;
  }

  v63 = OUTLINED_FUNCTION_0();
  v68 = OUTLINED_FUNCTION_4_0(v63, v64, v65, v66, v67);
  if (v68 == 6)
  {
    v7->_airdropHash4 = 0;
  }

  else if (v68 == 5)
  {
    goto LABEL_176;
  }

  v69 = OUTLINED_FUNCTION_0();
  v74 = OUTLINED_FUNCTION_3_1(v69, v70, v71, v72, v73);
  if (v74 == 6)
  {
    v7->_airdropConfigData = 0;
  }

  else if (v74 == 5)
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_176;
  }

  v75 = OUTLINED_FUNCTION_0();
  v80 = OUTLINED_FUNCTION_3_1(v75, v76, v77, v78, v79);
  if (v80 == 6)
  {
    v7->_airplaySourceFlags = 0;
  }

  else if (v80 == 5)
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_176;
  }

  v81 = OUTLINED_FUNCTION_0();
  v86 = OUTLINED_FUNCTION_3_1(v81, v82, v83, v84, v85);
  if (v86 == 6)
  {
    v7->_airplayTargetConfigSeed = 0;
  }

  else if (v86 == 5)
  {
    goto LABEL_176;
  }

  v87 = OUTLINED_FUNCTION_0();
  v92 = OUTLINED_FUNCTION_3_1(v87, v88, v89, v90, v91);
  if (v92 == 6)
  {
    v7->_airplayTargetFlags = 0;
  }

  else if (v92 == 5)
  {
    goto LABEL_176;
  }

  v93 = OUTLINED_FUNCTION_0();
  v98 = OUTLINED_FUNCTION_5(v93, v94, v95, v96, v97);
  if (v98 == 6)
  {
    v7->_airplayTargetIPv4 = 0;
  }

  else if (v98 == 5)
  {
    goto LABEL_176;
  }

  v99 = OUTLINED_FUNCTION_0();
  v104 = OUTLINED_FUNCTION_4_0(v99, v100, v101, v102, v103);
  if (v104 == 6)
  {
    v7->_airplayTargetPort = 0;
  }

  else if (v104 == 5)
  {
    goto LABEL_176;
  }

  v105 = OUTLINED_FUNCTION_0();
  v110 = OUTLINED_FUNCTION_3_1(v105, v106, v107, v108, v109);
  if (v110 == 6)
  {
    v7->_dsActionFlags = 0;
  }

  else if (v110 == 5)
  {
    goto LABEL_176;
  }

  v111 = CUXPCDecodeSInt64RangedEx();
  if (v111 == 6)
  {
    v7->_dsActionMeasuredPower = 0;
  }

  else if (v111 == 5)
  {
    goto LABEL_176;
  }

  v112 = OUTLINED_FUNCTION_0();
  v117 = OUTLINED_FUNCTION_3_1(v112, v113, v114, v115, v116);
  if (v117 == 6)
  {
    v7->_dsActionTieBreaker = 0;
  }

  else if (v117 == 5)
  {
    goto LABEL_176;
  }

  v118 = OUTLINED_FUNCTION_0();
  v123 = OUTLINED_FUNCTION_3_1(v118, v119, v120, v121, v122);
  if (v123 == 6)
  {
    v7->_dsInfoVehicleConfidence = 0;
  }

  else if (v123 == 5)
  {
    goto LABEL_176;
  }

  v124 = OUTLINED_FUNCTION_0();
  v129 = OUTLINED_FUNCTION_3_1(v124, v125, v126, v127, v128);
  if (v129 == 6)
  {
    v7->_dsInfoVehicleState = 0;
  }

  else if (v129 == 5)
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_176;
  }

  v130 = OUTLINED_FUNCTION_0();
  v135 = OUTLINED_FUNCTION_3_1(v130, v131, v132, v133, v134);
  if (v135 == 6)
  {
    v7->_heySiriConfidence = 0;
  }

  else if (v135 == 5)
  {
    goto LABEL_176;
  }

  v136 = OUTLINED_FUNCTION_0();
  v141 = OUTLINED_FUNCTION_4_0(v136, v137, v138, v139, v140);
  if (v141 == 6)
  {
    v7->_heySiriDeviceClass = 0;
  }

  else if (v141 == 5)
  {
    goto LABEL_176;
  }

  v142 = OUTLINED_FUNCTION_0();
  v147 = OUTLINED_FUNCTION_4_0(v142, v143, v144, v145, v146);
  if (v147 == 6)
  {
    v7->_heySiriPerceptualHash = 0;
  }

  else if (v147 == 5)
  {
    goto LABEL_176;
  }

  v148 = OUTLINED_FUNCTION_0();
  v153 = OUTLINED_FUNCTION_3_1(v148, v149, v150, v151, v152);
  if (v153 == 6)
  {
    v7->_heySiriProductType = 0;
  }

  else if (v153 == 5)
  {
    goto LABEL_176;
  }

  v154 = OUTLINED_FUNCTION_0();
  v159 = OUTLINED_FUNCTION_3_1(v154, v155, v156, v157, v158);
  if (v159 == 6)
  {
    v7->_heySiriRandom = 0;
  }

  else if (v159 == 5)
  {
    goto LABEL_176;
  }

  v160 = OUTLINED_FUNCTION_0();
  v165 = OUTLINED_FUNCTION_3_1(v160, v161, v162, v163, v164);
  if (v165 == 6)
  {
    v7->_heySiriSNR = 0;
  }

  else if (v165 == 5)
  {
    goto LABEL_176;
  }

  if (!OUTLINED_FUNCTION_2_1(v165, "nbAT", v166, &v7->_nearbyActionAuthTagData))
  {
    goto LABEL_176;
  }

  v167 = OUTLINED_FUNCTION_0();
  v172 = OUTLINED_FUNCTION_3_1(v167, v168, v169, v170, v171);
  if (v172 == 6)
  {
    v7->_nearbyActionColorCode = 0;
  }

  else if (v172 == 5)
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_176;
  }

  v173 = OUTLINED_FUNCTION_0();
  v178 = OUTLINED_FUNCTION_5(v173, v174, v175, v176, v177);
  if (v178 == 6)
  {
    v7->_nearbyActionFlags = 0;
  }

  else if (v178 == 5)
  {
    goto LABEL_176;
  }

  v179 = OUTLINED_FUNCTION_0();
  v184 = OUTLINED_FUNCTION_3_1(v179, v180, v181, v182, v183);
  if (v184 == 6)
  {
    v7->_nearbyActionType = 0;
  }

  else if (v184 == 5)
  {
    goto LABEL_176;
  }

  if (!OUTLINED_FUNCTION_2_1(v184, "nbTg", v185, &v7->_nearbyActionTargetData))
  {
    goto LABEL_176;
  }

  v186 = OUTLINED_FUNCTION_0();
  v191 = OUTLINED_FUNCTION_5(v186, v187, v188, v189, v190);
  if (v191 == 6)
  {
    v7->_nearbyActionV2Flags = 0;
  }

  else if (v191 == 5)
  {
    goto LABEL_176;
  }

  if (!OUTLINED_FUNCTION_2_1(v191, "n2Tg", v192, &v7->_nearbyActionV2TargetData))
  {
    goto LABEL_176;
  }

  v193 = OUTLINED_FUNCTION_0();
  v198 = OUTLINED_FUNCTION_3_1(v193, v194, v195, v196, v197);
  if (v198 == 6)
  {
    v7->_nearbyActionV2Type = 0;
  }

  else if (v198 == 5)
  {
    goto LABEL_176;
  }

  v199 = OUTLINED_FUNCTION_0();
  v204 = OUTLINED_FUNCTION_5(v199, v200, v201, v202, v203);
  if (v204 == 6)
  {
    v7->_nearbyInfoFlags = 0;
  }

  else if (v204 == 5)
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_176;
  }

  v205 = OUTLINED_FUNCTION_0();
  v210 = OUTLINED_FUNCTION_3_1(v205, v206, v207, v208, v209);
  if (v210 == 6)
  {
    v7->_nearbyInfoStatusTime = 0;
  }

  else if (v210 == 5)
  {
    goto LABEL_176;
  }

  v211 = OUTLINED_FUNCTION_0();
  v216 = OUTLINED_FUNCTION_3_1(v211, v212, v213, v214, v215);
  if (v216 == 6)
  {
    v7->_nearbyInfoStatusType = 0;
  }

  else if (v216 == 5)
  {
    goto LABEL_176;
  }

  v217 = OUTLINED_FUNCTION_0();
  v222 = OUTLINED_FUNCTION_3_1(v217, v218, v219, v220, v221);
  if (v222 == 6)
  {
    v7->_nearbyInfoV2DecryptedFlags = 0;
  }

  else if (v222 == 5)
  {
    goto LABEL_176;
  }

  v223 = OUTLINED_FUNCTION_0();
  v228 = OUTLINED_FUNCTION_3_1(v223, v224, v225, v226, v227);
  if (v228 == 6)
  {
    v7->_nearbyInfoV2Flags = 0;
  }

  else if (v228 == 5)
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_176;
  }

  v229 = OUTLINED_FUNCTION_0();
  v234 = OUTLINED_FUNCTION_3_1(v229, v230, v231, v232, v233);
  if (v234 == 6)
  {
    v7->_nearbyInfoV2InvitationCounter = 0;
  }

  else if (v234 == 5)
  {
    goto LABEL_176;
  }

  v235 = OUTLINED_FUNCTION_0();
  v240 = OUTLINED_FUNCTION_3_1(v235, v236, v237, v238, v239);
  if (v240 == 6)
  {
    v7->_nearbyInfoV2InvitationTypes = 0;
  }

  else if (v240 == 5)
  {
    goto LABEL_176;
  }

  v241 = OUTLINED_FUNCTION_0();
  v246 = OUTLINED_FUNCTION_3_1(v241, v242, v243, v244, v245);
  if (v246 == 6)
  {
    v7->_nearbyInfoV2InvitationRouteType = 0;
  }

  else if (v246 == 5)
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_176;
  }

  v247 = OUTLINED_FUNCTION_0();
  v252 = OUTLINED_FUNCTION_3_1(v247, v248, v249, v250, v251);
  if (v252 == 6)
  {
    v7->_proximityServiceSubType = 0;
  }

  else if (v252 == 5)
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_176;
  }

  v253 = v7->_safetyAlertsAlertData;
  v254 = v253;
  if (v253 && [(NSData *)v253 length]>= 0x1D)
  {
    if (error)
    {
      *error = NSErrorF(@"CBErrorDomain", 4294960553, "Safety Alerts Alert Data exceeds max length of %d bytes", 28);
    }

    goto LABEL_176;
  }

  if (!OUTLINED_FUNCTION_2_1(v255, "saAi", v256, &v7->_safetyAlertsAlertID) || !CUXPCDecodeNSDataOfLength())
  {
LABEL_176:
    v277 = 0;
    goto LABEL_167;
  }

  v257 = OUTLINED_FUNCTION_0();
  v262 = OUTLINED_FUNCTION_3_1(v257, v258, v259, v260, v261);
  if (v262 == 6)
  {
    v7->_safetyAlertsVersion = 0;
  }

  else if (v262 == 5)
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_0();
  v263 = CUXPCDecodeUInt64RangedEx();
  if (v263 == 6)
  {
    v7->_softwareUpdateActionType = 0;
  }

  else if (v263 == 5)
  {
    goto LABEL_176;
  }

  if (!CUXPCDecodeNSArrayOfNSData())
  {
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_176;
  }

  v264 = OUTLINED_FUNCTION_0();
  v269 = OUTLINED_FUNCTION_3_1(v264, v265, v266, v267, v268);
  if (v269 == 6)
  {
    v7->_nearbyActionNoWakeType = 0;
  }

  else if (v269 == 5)
  {
    goto LABEL_176;
  }

  v270 = OUTLINED_FUNCTION_0();
  v275 = OUTLINED_FUNCTION_3_1(v270, v271, v272, v273, v274);
  if (v275 != 6)
  {
    if (v275 != 5)
    {
      goto LABEL_164;
    }

    goto LABEL_176;
  }

  v7->_nearbyActionNWPrecisionFindingStatus = 0;
LABEL_164:
  if (!OUTLINED_FUNCTION_2_1(v275, "nawA", v276, &v7->_nearbyActionNoWakeAuthTagData) || !CUXPCDecodeNSDataOfLength())
  {
    goto LABEL_176;
  }

  v277 = v7;
LABEL_167:

  return v277;
}

- (int)_xpcReceivedPowerStateChanged:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = *(a1 + 32);
  if (*result <= 90)
  {
    if (*result != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

@end