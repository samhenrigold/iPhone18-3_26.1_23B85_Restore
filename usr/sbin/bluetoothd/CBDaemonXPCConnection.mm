@interface CBDaemonXPCConnection
+ (unint64_t)indexForCBApprovedAppID:(id)d;
- (BOOL)_entitledAndReturnError:(id *)error;
- (BOOL)_entitledCBAdvertiserAndReturnError:(id)error error:(id *)a4;
- (BOOL)_entitledSoftwareUpdateAndReturnError:(id *)error;
- (id)_spatialInteractionDecodePeerTokenRequest:(id)request error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (int64_t)_powerStateForClient;
- (unsigned)_softwareUpdateDataArrayCountMaximumLimitForClient;
- (void)_remoteInvalidate;
- (void)_setupWHBTimer;
- (void)_spatialInteractionDeviceFound:(id)found checkOnly:(BOOL)only;
- (void)_spatialInteractionDeviceLost:(id)lost removeUnmatched:(BOOL)unmatched reason:(const char *)reason;
- (void)_spatialInteractionReevaluateDevices;
- (void)_updateDeviceMapSpatialInteractionDeviceTimestampArrayDictionary:(unsigned __int8)dictionary device:(id)device;
- (void)_whbTimerFired;
- (void)_xpcAdvertisingAddressChanged;
- (void)_xpcCBAdvertiserActivate:(id)activate;
- (void)_xpcCBAdvertiserUpdate:(id)update;
- (void)_xpcCBConnection:(id)connection pairingCompletedWithDevice:(id)device error:(id)error;
- (void)_xpcCBConnection:(id)connection pairingPromptWithPairingInfo:(id)info;
- (void)_xpcCBConnectionActivate:(id)activate;
- (void)_xpcCBConnectionDisconnect:(id)disconnect;
- (void)_xpcCBConnectionPairingContinue:(id)continue;
- (void)_xpcCBControllerActivate:(id)activate;
- (void)_xpcCBDiscoveryActivate:(id)activate;
- (void)_xpcCBDiscoveryActivateLocal:(id)local discovery:(id)discovery;
- (void)_xpcCBDiscoveryActivateWHB:(id)b discovery:(id)discovery;
- (void)_xpcCBDiscoveryClearDuplicateFilterCache:(id)cache;
- (void)_xpcCBDiscoveryFinish:(id)finish;
- (void)_xpcCBDiscoveryGetDevices:(id)devices;
- (void)_xpcCBDiscoveryGetDevicesMatchingProperties:(id)properties;
- (void)_xpcCBDiscoveryInjectAOPBufAdv:(id)adv;
- (void)_xpcCBDiscoveryUpdate:(id)update;
- (void)_xpcCBSpatialInteractionSessionActivate:(id)activate;
- (void)_xpcCBSpatialInteractionSessionAddPeerToken:(id)token;
- (void)_xpcCBSpatialInteractionSessionRemovePeerToken:(id)token;
- (void)_xpcCBSpatialInteractionSessionUpdate:(id)update;
- (void)_xpcDeleteDevice:(id)device;
- (void)_xpcDeviceFound:(id)found;
- (void)_xpcDeviceLost:(id)lost;
- (void)_xpcDevicesBuffered:(id)buffered;
- (void)_xpcDiagnosticAdvertiser;
- (void)_xpcDiagnosticAssertion;
- (void)_xpcDiagnosticControl:(id)control;
- (void)_xpcDiagnosticDiscovery;
- (void)_xpcDiagnosticLog:(id)log;
- (void)_xpcDiagnosticShow:(id)show;
- (void)_xpcDiagnosticTipiChanged;
- (void)_xpcDiscoverableStateChanged:(int)changed;
- (void)_xpcGetControllerInfo:(id)info;
- (void)_xpcGetControllerSettings:(id)settings;
- (void)_xpcGetDevices:(id)devices;
- (void)_xpcGetPowerState:(id)state;
- (void)_xpcInquiryStateChanged:(int)changed;
- (void)_xpcModifyControllerSettings:(id)settings;
- (void)_xpcModifyDevice:(id)device;
- (void)_xpcPerformDeviceRequest:(id)request;
- (void)_xpcPowerStateChanged:(int64_t)changed;
- (void)_xpcReadPrefs:(id)prefs;
- (void)_xpcReceivedMessage:(id)message remoteDevice:(id)device;
- (void)_xpcReceivedRelayMessageType:(unsigned __int8)type messageData:(id)data conduitDevice:(id)device sourceDevice:(id)sourceDevice;
- (void)_xpcResetCBExtension:(id)extension;
- (void)_xpcSendAudioAccessoryConfigMessage:(id)message;
- (void)_xpcSendAudioAccessoryEventMessage:(id)message;
- (void)_xpcSendConversationDetectMessage:(id)message;
- (void)_xpcSendEvent:(id)event;
- (void)_xpcSendRelayMessage:(id)message;
- (void)_xpcSendReply:(id)reply;
- (void)_xpcSendReplyError:(id)error request:(id)request;
- (void)_xpcSendSmartRoutingInformation:(id)information;
- (void)_xpcSetLowPowerMode:(id)mode;
- (void)_xpcSetPowerState:(id)state;
- (void)_xpcSpatialInteractionAOPDataReceived:(id)received;
- (void)_xpcSystemOverrideChanged;
- (void)_xpcTipiChanged:(id)changed;
- (void)_xpcUpdateIdentities:(id)identities;
- (void)_xpcWritePref:(id)pref;
- (void)activate;
- (void)aopMessageReceived:(id)received;
- (void)invalidate;
- (void)reportDeviceFound:(id)found;
- (void)reportDeviceLost:(id)lost;
- (void)reportDevicesBuffered:(id)buffered;
- (void)whbStop;
- (void)xpcReceivedAudioAccessoryDeviceInfoChange:(id)change;
- (void)xpcReceivedAudioAccessoryEventType:(unsigned __int8)type messageData:(id)data sourceDevice:(id)device;
- (void)xpcReceivedEvent:(id)event;
- (void)xpcReceivedMessage:(id)message;
- (void)xpcReceivedRequest:(id)request;
@end

@implementation CBDaemonXPCConnection

- (void)activate
{
  self->_isHomePod = GestaltGetDeviceClass() == 7;
  if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003DE9C(self);
  }
}

- (void)invalidate
{
  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    xpc_connection_cancel(xpcCnx);
  }

  v4 = self->_activatedAdvertiser;
  if (v4)
  {
    if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C784(&self->_pid);
    }

    [(CBAdvertiser *)v4 invalidate];
    activatedAdvertiser = self->_activatedAdvertiser;
    self->_activatedAdvertiser = 0;

    [(CBDaemonServer *)self->_daemon scheduleAdvertiserUpdateImmediate:0];
  }

  v6 = self->_activatedConnection;
  if (v6)
  {
    if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C784(&self->_pid);
    }

    [(CBConnection *)v6 invalidate];
    if (self->_connectionAddedPairingClient)
    {
      stackController = [(CBDaemonServer *)self->_daemon stackController];
      [stackController removePairingClient:v6];

      self->_connectionAddedPairingClient = 0;
    }

    activatedConnection = self->_activatedConnection;
    self->_activatedConnection = 0;
  }

  v9 = self->_activatedController;
  if (v9)
  {
    if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C784(&self->_pid);
    }

    if (self->_addedDiscoverableController)
    {
      stackController2 = [(CBDaemonServer *)self->_daemon stackController];
      [stackController2 removeDiscoverableController:v9];

      self->_addedDiscoverableController = 0;
    }

    [(CBController *)v9 invalidate];
    activatedController = self->_activatedController;
    self->_activatedController = 0;

    [(CBDaemonServer *)self->_daemon scheduleControlUpdateImmediate:0];
  }

  v12 = self->_activatedDiscovery;
  if (v12)
  {
    if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C784(&self->_pid);
    }

    v13 = +[CBMetricsDaemon sharedCBMetricsDaemon];
    [v13 reportCBDiscovery:v12 daemonCnx:self action:@"stop"];

    [(CBDiscovery *)v12 invalidate];
    activatedDiscovery = self->_activatedDiscovery;
    self->_activatedDiscovery = 0;

    [(CBDaemonServer *)self->_daemon scheduleDiscoveryUpdateImmediate:0];
  }

  v15 = self->_activatedDiscoveryWHB;
  if (v15)
  {
    if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C784(&self->_pid);
    }

    v16 = +[CBMetricsDaemon sharedCBMetricsDaemon];
    [v16 reportCBDiscovery:v15 daemonCnx:self action:@"stop"];

    [(CBDiscovery *)v15 invalidate];
    activatedDiscoveryWHB = self->_activatedDiscoveryWHB;
    self->_activatedDiscoveryWHB = 0;

    [(CBDaemonServer *)self->_daemon scheduleDiscoveryUpdateImmediate:0];
  }

  if (self->_remoteClient)
  {
    [(CBDaemonXPCConnection *)self _remoteInvalidate];
    [(CBDaemonServer *)self->_daemon scheduleUpdateImmediate:0];
  }

  whbTimer = self->_whbTimer;
  if (whbTimer)
  {
    v19 = whbTimer;
    dispatch_source_cancel(v19);
    v20 = self->_whbTimer;
    self->_whbTimer = 0;
  }

  v21 = self->_activatedSpatialInteractionSession;
  if (v21)
  {
    if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C784(&self->_pid);
    }

    [(CBSpatialInteractionSession *)v21 invalidate];
    activatedSpatialInteractionSession = self->_activatedSpatialInteractionSession;
    self->_activatedSpatialInteractionSession = 0;

    [(CBDaemonServer *)self->_daemon scheduleSpatialUpdateImmediate:0];
  }

  daemon = self->_daemon;

  [(CBDaemonServer *)daemon xpcConnectionInvalidated:self];
}

- (int64_t)_powerStateForClient
{
  stackController = [(CBDaemonServer *)self->_daemon stackController];
  powerState = [stackController powerState];

  if (powerState == 10)
  {
    if (self->_supportsRestrictedMode)
    {
      return 10;
    }

    else if (self->_activatedDiscovery)
    {
      return 5;
    }

    else if (self->_activatedSpatialInteractionSession)
    {
      return 5;
    }

    else
    {
      return 10;
    }
  }

  return powerState;
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = sub_100042234;
  v104 = sub_1000425AC;
  v105 = 0;
  if (self->_xpcCnx)
  {
    obj = 0;
    identifier = CUPrintPID();
    NSAppendPrintF_safe(&obj, "%@", identifier);
    objc_storeStrong(&v105, obj);
    goto LABEL_8;
  }

  xpcToken = self->_xpcToken;
  if (xpcToken)
  {
    v98 = 0;
    NSAppendPrintF_safe(&v98, "Proxy %llu", xpcToken);
    v7 = v98;
LABEL_5:
    v8 = v7;
    identifier = v105;
    v105 = v8;
    goto LABEL_8;
  }

  remoteDevice = self->_remoteDevice;
  if (!remoteDevice)
  {
    v96 = 0;
    NSAppendPrintF_safe(&v96, "Direct %@", self->_appID);
    v7 = v96;
    goto LABEL_5;
  }

  v97 = 0;
  identifier = [(CBDevice *)remoteDevice identifier];
  NSAppendPrintF_safe(&v97, "Remote %@", identifier);
  objc_storeStrong(&v105, v97);
LABEL_8:

  v10 = self->_activatedAdvertiser;
  v11 = v10;
  if (v10)
  {
    v12 = (v101 + 5);
    v95 = v101[5];
    NSAppendPrintF_safe(&v95, ", %@", v10);
    objc_storeStrong(v12, v95);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = self->_activatedConnection;
  v15 = v14;
  if (v14)
  {
    v16 = (v101 + 5);
    v94 = v101[5];
    NSAppendPrintF_safe(&v94, ", %@", v14);
    objc_storeStrong(v16, v94);
    ++v13;
  }

  v17 = self->_activatedController;
  v18 = v17;
  if (v17)
  {
    v19 = (v101 + 5);
    v93 = v101[5];
    NSAppendPrintF_safe(&v93, ", %@", v17);
    objc_storeStrong(v19, v93);
    ++v13;
  }

  v20 = self->_activatedDiscovery;
  v21 = v20;
  if (v20)
  {
    v22 = (v101 + 5);
    v92 = v101[5];
    NSAppendPrintF_safe(&v92, ", %@", v20);
    objc_storeStrong(v22, v92);
    ++v13;
  }

  v23 = self->_activatedDiscoveryWHB;
  v24 = v23;
  if (v23)
  {
    v25 = (v101 + 5);
    v91 = v101[5];
    NSAppendPrintF_safe(&v91, ", %@", v23);
    objc_storeStrong(v25, v91);
    v13 = 1;
  }

  v26 = self->_activatedSpatialInteractionSession;
  v27 = v26;
  if (levelCopy <= 0x14u)
  {
    v36 = [(NSMutableArray *)self->_spatialPeers count];
    *(&v68 + 1) = [(NSMutableDictionary *)self->_spatialDeviceMapMatched count];
    *&v68 = [(NSMutableDictionary *)self->_spatialDeviceMapUnmatched count];
    if (v27)
    {
      v37 = v13 == 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = !v37;
    v67 = v38;
    if (v37)
    {
      if (!v27)
      {
        goto LABEL_37;
      }

      v39 = (v101 + 5);
      v86 = v101[5];
      NSAppendPrintF_safe(&v86, "%@", v27);
      v40 = v86;
    }

    else
    {
      v39 = (v101 + 5);
      v87 = v101[5];
      NSAppendPrintF_safe(&v87, "\n        %@", v27);
      v40 = v87;
    }

    v41 = v40;
    v42 = *v39;
    *v39 = v41;

LABEL_37:
    if (v36)
    {
      v43 = (v101 + 5);
      v85 = v101[5];
      NSAppendPrintF_safe(&v85, ", PeerTokens: %d", v36);
      objc_storeStrong(v43, v85);
      if (v68 == 0)
      {
LABEL_42:
        v45 = (v101 + 5);
        v83 = v101[5];
        NSAppendPrintF_safe(&v83, "\n");
        objc_storeStrong(v45, v83);
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v70 = self->_spatialPeers;
        v46 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v79 objects:v106 count:16];
        if (v46)
        {
          v47 = *v80;
          do
          {
            for (i = 0; i != v46; i = i + 1)
            {
              v49 = v27;
              if (*v80 != v47)
              {
                objc_enumerationMutation(v70);
              }

              v50 = *(*(&v79 + 1) + 8 * i);
              v51 = (v101 + 5);
              v78 = v101[5];
              tokenData = [v50 tokenData];
              identifierData = [v50 identifierData];
              irkData = [v50 irkData];
              NSAppendPrintF_safe(&v78, "        PeerToken <%@>, IDD <%@>, IRK <%@>, PeerID 0x%X\n", tokenData, identifierData, irkData, [v50 peerID]);
              objc_storeStrong(v51, v78);
              v27 = v49;
            }

            v46 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v79 objects:v106 count:16];
          }

          while (v46);
        }

        if (!*(&v68 + 1))
        {
LABEL_54:
          if (!v68)
          {
LABEL_56:
            v58 = 1;
LABEL_61:
            if (v67 && (v60 = [(NSMutableDictionary *)self->_deviceMap count], selfCopy = self, v60))
            {
              if ((v58 & 1) == 0)
              {
                v62 = (v101 + 5);
                v73 = v101[5];
                NSAppendPrintF_safe(&v73, "\n");
                objc_storeStrong(v62, v73);
                selfCopy = self;
              }

              deviceMap = selfCopy->_deviceMap;
              v72[0] = _NSConcreteStackBlock;
              v72[1] = 3221225472;
              v72[2] = sub_100139E04;
              v72[3] = &unk_100AE2000;
              v72[4] = &v100;
              [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v72];
            }

            else if ((v58 & 1) == 0)
            {
              v64 = (v101 + 5);
              v71 = v101[5];
              NSAppendPrintF_safe(&v71, "\n");
              objc_storeStrong(v64, v71);
            }

            goto LABEL_68;
          }

LABEL_55:
          spatialDeviceMapUnmatched = self->_spatialDeviceMapUnmatched;
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_100139DB4;
          v74[3] = &unk_100AE2000;
          v74[4] = &v100;
          [(NSMutableDictionary *)spatialDeviceMapUnmatched enumerateKeysAndObjectsUsingBlock:v74];
          goto LABEL_56;
        }

LABEL_53:
        spatialDeviceMapMatched = self->_spatialDeviceMapMatched;
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_100139D64;
        v76[3] = &unk_100AE2000;
        v76[4] = &v100;
        [(NSMutableDictionary *)spatialDeviceMapMatched enumerateKeysAndObjectsUsingBlock:v76];
        goto LABEL_54;
      }
    }

    else if (v68 == 0)
    {
      goto LABEL_60;
    }

    v44 = (v101 + 5);
    v84 = v101[5];
    NSAppendPrintF_safe(&v84, ", Matched %d/%d", DWORD2(v68), v68);
    objc_storeStrong(v44, v84);
    if (v36)
    {
      goto LABEL_42;
    }

    if (*(&v68 + 1))
    {
      v55 = (v101 + 5);
      v77 = v101[5];
      NSAppendPrintF_safe(&v77, "\n");
      objc_storeStrong(v55, v77);
      goto LABEL_53;
    }

    if (v68)
    {
      v59 = (v101 + 5);
      v75 = v101[5];
      NSAppendPrintF_safe(&v75, "\n");
      objc_storeStrong(v59, v75);
      goto LABEL_55;
    }

LABEL_60:
    v58 = 0;
    goto LABEL_61;
  }

  if (v26)
  {
    v28 = (v101 + 5);
    v90 = v101[5];
    NSAppendPrintF_safe(&v90, ", %@", v26);
    objc_storeStrong(v28, v90);
  }

  selfCopy3 = self;
  v30 = [(NSMutableArray *)self->_spatialPeers count];
  if (v30)
  {
    v31 = (v101 + 5);
    v89 = v101[5];
    NSAppendPrintF_safe(&v89, ", PeerTokens %d", v30);
    objc_storeStrong(v31, v89);
    selfCopy3 = self;
  }

  v32 = [(NSMutableDictionary *)selfCopy3->_spatialDeviceMapMatched count];
  v33 = [(NSMutableDictionary *)selfCopy3->_spatialDeviceMapUnmatched count];
  if (v32 | v33)
  {
    v34 = v101;
    v88 = v101[5];
    NSAppendPrintF_safe(&v88, ", Matched %d/%d", v32, v33);
    v35 = v88;
    v27 = v34[5];
    v34[5] = v35;
LABEL_68:
  }

  v65 = v101[5];
  _Block_object_dispose(&v100, 8);

  return v65;
}

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (!self->_entitled)
  {
    v23 = 0u;
    v24 = 0u;
    xpc_connection_get_audit_token();
    v6 = xpc_copy_entitlement_for_token();
    v7 = v6;
    if (v6 && (xpc_dictionary_get_BOOL(v6, "com.apple.bluetooth.system") || xpc_dictionary_get_BOOL(v7, "com.apple.bluetooth.internal")))
    {
      string = xpc_copy_code_signing_identity_for_token();
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10013A1B4;
      v22[3] = &unk_100ADF8F8;
      v22[4] = string;
      v9 = objc_retainBlock(v22);
      if (string || (string = xpc_dictionary_get_string(v7, "application-identifier")) != 0)
      {
        v10 = [NSString stringWithUTF8String:string];
        appID = self->_appID;
        self->_appID = v10;

        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      if ([(CBDaemonServer *)self->_daemon prefEnforceApprovedList])
      {
        if (v12)
        {
LABEL_15:
          v16 = CBErrorF(4294960523, "App ID not approved: %s", string);
          if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            v17 = CUPrintPID();
            v18 = CUPrintNSError();
            LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _entitledAndReturnError:]", 90, "### CoreBluetooth denied: %@, %@", v17, v18);
          }

          if (error)
          {
            v20 = v16;
            *error = v16;
          }

          v3 = 0;
LABEL_33:
          (*(v9 + 16))(v9);
          goto LABEL_36;
        }

        v13 = self->_appID;
        v14 = CBGenerateObfuscatedSHA256HashedString();
        v15 = 0;
        while (([v14 isEqualToString:off_100AE18E0[v15]] & 1) == 0)
        {
          if (++v15 == 227)
          {

            goto LABEL_15;
          }
        }
      }

      if ((v12 & 1) == 0 && !strcmp(string, "com.apple.cloudpaird"))
      {
        self->_supportsRestrictedMode = 1;
      }

      v3 = 1;
      self->_entitled = 1;
      goto LABEL_33;
    }

    v9 = CBErrorF(4294896128, "Missing entitlement: %s", "com.apple.bluetooth.system");
    if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C7EC(self);
      if (error)
      {
        goto LABEL_22;
      }
    }

    else if (error)
    {
LABEL_22:
      v19 = v9;
      v3 = 0;
      *error = v9;
LABEL_36:

      return v3;
    }

    v3 = 0;
    goto LABEL_36;
  }

  return 1;
}

+ (unint64_t)indexForCBApprovedAppID:(id)d
{
  v3 = CBGenerateObfuscatedSHA256HashedString();
  for (i = 0; i != 227; ++i)
  {
    if ([v3 isEqualToString:off_100AE18E0[i]])
    {
      break;
    }
  }

  return i;
}

- (void)_remoteInvalidate
{
  v3 = self->_remoteClient;
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    [v4 setObject:self->_remoteClientID forKeyedSubscript:@"cid"];
    [v4 setObject:@"Invl" forKeyedSubscript:@"mTyp"];
    remoteAccepted = self->_remoteAccepted;
    unsignedIntValue = [(NSNumber *)self->_remoteClientID unsignedIntValue];
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C85C(unsignedIntValue);
    }

    identifier = [(CBDevice *)self->_remoteDevice identifier];
    if (!identifier)
    {
      sub_10080C89C(v4);
      goto LABEL_8;
    }

    v8 = identifier;
    v16 = RPOptionTimeoutSeconds;
    v17 = &off_100B33648;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013A430;
    v13[3] = &unk_100AE2028;
    v14 = unsignedIntValue;
    v15 = remoteAccepted;
    v13[4] = v3;
    [(RPCompanionLinkClient *)v3 sendEventID:@"com.apple.bluetooth.event" event:v4 destinationID:v8 options:v9 completion:v13];
  }

  [(CBDaemonServer *)self->_daemon remoteDeregisterConnection:self];
  self->_remoteAccepted = 0;
  remoteClient = self->_remoteClient;
  self->_remoteClient = 0;

  remoteClientID = self->_remoteClientID;
  self->_remoteClientID = 0;

  remoteDevice = self->_remoteDevice;
  self->_remoteDevice = 0;

LABEL_8:
}

- (void)xpcReceivedMessage:(id)message
{
  xdict = message;
  if (xpc_get_type(xdict) == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_dictionary(xdict, "rmtD");
    if (v6)
    {
      [(CBDaemonXPCConnection *)self _xpcReceivedMessage:xdict remoteDevice:v6];
    }

    else
    {
      [(CBDaemonXPCConnection *)self xpcReceivedRequest:xdict];
    }

    goto LABEL_15;
  }

  v4 = xdict;
  if (xdict == &_xpc_error_connection_invalid)
  {
    if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C9F0(self);
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    [(CBDaemonXPCConnection *)self invalidate];
    goto LABEL_15;
  }

  if (dword_100B510A0 <= 90)
  {
    if (dword_100B510A0 != -1 || (v5 = _LogCategory_Initialize(), v4 = xdict, v5))
    {
      sub_10080C994();
LABEL_15:
      v4 = xdict;
    }
  }
}

- (void)_xpcReceivedMessage:(id)message remoteDevice:(id)device
{
  messageCopy = message;
  deviceCopy = device;
  v33 = 0;
  v8 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v33];
  v9 = v33;
  if ((v8 & 1) == 0)
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v9 request:messageCopy];
    goto LABEL_37;
  }

  if (!self->_remoteAccepted)
  {
    v11 = self->_remoteClient;
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      v10 = objc_alloc_init(RPCompanionLinkClient);
      remoteClient = self->_remoteClient;
      self->_remoteClient = v10;

      [(RPCompanionLinkClient *)v10 setDispatchQueue:self->_dispatchQueue];
      [(RPCompanionLinkClient *)v10 setServiceType:@"com.apple.bluetooth.remote"];
      v32 = v9;
      v34 = 0;
      if (CUXPCDecodeUInt64RangedEx() == 6)
      {
        v13 = v34;
      }

      else
      {
        v13 = 0;
      }

      v14 = v32;

      if (v14)
      {
        [(CBDaemonXPCConnection *)self _xpcSendReplyError:v14 request:messageCopy];
        v9 = v14;
        goto LABEL_36;
      }

      if (!v13)
      {
        sub_10080CC08();
        v9 = 0;
        goto LABEL_36;
      }

      v15 = [NSNumber numberWithUnsignedInt:v13];
      objc_storeStrong(&self->_remoteClientID, v15);
      v31 = 0;
      v16 = [[CBDevice alloc] initWithXPCObject:deviceCopy error:&v31];
      v9 = v31;
      if (!v16)
      {
        [(CBDaemonXPCConnection *)self _xpcSendReplyError:v9 request:messageCopy];
LABEL_35:

        goto LABEL_36;
      }

      identifier = [v16 identifier];
      if (!identifier)
      {
        sub_10080CB98(self, messageCopy, v16, v15);
        goto LABEL_36;
      }

      v18 = identifier;
      objc_storeStrong(&self->_remoteDevice, v16);
      [(CBDaemonServer *)self->_daemon remoteRegisterConnection:self clientID:v15];
      v19 = objc_alloc_init(RPCompanionLinkDevice);
      [v19 setIdentifier:v18];
      [(RPCompanionLinkClient *)v10 setDestinationDevice:v19];
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080CA50(v18);
      }

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10013ABCC;
      v27[3] = &unk_100AE2050;
      v10 = v10;
      v28 = v10;
      selfCopy = self;
      v30 = v18;
      [(RPCompanionLinkClient *)v10 activateWithCompletion:v27];
    }

    v15 = CUXPCCreateCFObjectFromXPCObject();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v15 mutableCopy];
      [v20 setObject:0 forKeyedSubscript:@"rmtD"];
      v35 = RPOptionTimeoutSeconds;
      v36 = &off_100B33648;
      v21 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      if (CUXPCDictionaryExpectsReply())
      {
        if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080CB44(v20);
        }

        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10013ACA0;
        v25[3] = &unk_100AE20A0;
        v25[4] = self;
        v26 = messageCopy;
        [(RPCompanionLinkClient *)v10 sendRequestID:@"com.apple.bluetooth.request" request:v20 options:v21 responseHandler:v25];
      }

      else
      {
        identifier2 = [(CBDevice *)self->_remoteDevice identifier];
        if (identifier2)
        {
          if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            sub_10080CA90(v20);
          }

          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10013AE20;
          v23[3] = &unk_100AE04B8;
          v24 = v20;
          [(RPCompanionLinkClient *)v10 sendEventID:@"com.apple.bluetooth.event" event:v24 destinationID:identifier2 options:v21 completion:v23];
        }

        else
        {
          sub_10080CAE4(dword_100B510A0);
        }
      }
    }

    else
    {
      v20 = CBErrorF(4294960540, "Remote message non-dict");
      [(CBDaemonXPCConnection *)self _xpcSendReplyError:v20 request:messageCopy];
    }

    goto LABEL_35;
  }

  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080CC5C(self);
  }

  if (CUXPCDictionaryExpectsReply())
  {
    v10 = CBErrorF(4294960561, "Remote cycle");
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v10 request:messageCopy];
LABEL_36:
  }

LABEL_37:
}

- (void)xpcReceivedEvent:(id)event
{
  xdict = event;
  if (!self->_remoteDevice || (v4 = xpc_dictionary_get_string(xdict, "mTyp")) == 0)
  {
LABEL_5:
    v6 = self->_activatedConnection;
    if (v6 && (string = xpc_dictionary_get_string(xdict, "mTyp")) != 0 && !strcmp(string, "CnxF"))
    {
      [(CBConnection *)v6 xpcReceivedForwardedEvent:xdict];
    }

    else
    {
      v8 = self->_xpcCnx;
      v11 = v8;
      if (v8)
      {
        xpc_connection_send_message(v8, xdict);
      }

      else if (dword_100B510A0 <= 90)
      {
        if (dword_100B510A0 != -1 || (v8 = _LogCategory_Initialize(), v8))
        {
          sub_10080CFBC(v8, v9, v10);
        }
      }
    }

    goto LABEL_15;
  }

  v5 = v4;
  if (strcmp(v4, "Invl"))
  {
    if (!strcmp(v5, "DscU"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryUpdate:xdict];
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080CF40(self);
  }

  [(CBDaemonXPCConnection *)self invalidate];
LABEL_15:
}

- (void)xpcReceivedRequest:(id)request
{
  requestCopy = request;
  string = xpc_dictionary_get_string(requestCopy, "mTyp");
  if (string)
  {
    v7 = string;
    if (!strcmp(string, "AdvA"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBAdvertiserActivate:requestCopy];
    }

    else if (!strcmp(v7, "AdvU"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBAdvertiserUpdate:requestCopy];
    }

    else if (!strcmp(v7, "CnxA"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBConnectionActivate:requestCopy];
    }

    else if (!strcmp(v7, "CnxD"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBConnectionDisconnect:requestCopy];
    }

    else if (!strcmp(v7, "CnPC"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBConnectionPairingContinue:requestCopy];
    }

    else if (!strcmp(v7, "CtrA"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBControllerActivate:requestCopy];
    }

    else if (!strcmp(v7, "GCtI"))
    {
      [(CBDaemonXPCConnection *)self _xpcGetControllerInfo:requestCopy];
    }

    else if (!strcmp(v7, "GCtS"))
    {
      [(CBDaemonXPCConnection *)self _xpcGetControllerSettings:requestCopy];
    }

    else if (!strcmp(v7, "MCtS"))
    {
      [(CBDaemonXPCConnection *)self _xpcModifyControllerSettings:requestCopy];
    }

    else if (!strcmp(v7, "GtDv"))
    {
      [(CBDaemonXPCConnection *)self _xpcGetDevices:requestCopy];
    }

    else if (!strcmp(v7, "DltD"))
    {
      [(CBDaemonXPCConnection *)self _xpcDeleteDevice:requestCopy];
    }

    else if (!strcmp(v7, "UpDv"))
    {
      [(CBDaemonXPCConnection *)self _xpcModifyDevice:requestCopy];
    }

    else if (!strcmp(v7, "PfDR"))
    {
      [(CBDaemonXPCConnection *)self _xpcPerformDeviceRequest:requestCopy];
    }

    else if (!strcmp(v7, "DiCt"))
    {
      [(CBDaemonXPCConnection *)self _xpcDiagnosticControl:requestCopy];
    }

    else if (!strcmp(v7, "DiLg"))
    {
      [(CBDaemonXPCConnection *)self _xpcDiagnosticLog:requestCopy];
    }

    else if (!strcmp(v7, "DiSh"))
    {
      [(CBDaemonXPCConnection *)self _xpcDiagnosticShow:requestCopy];
    }

    else if (!strcmp(v7, "LpmS"))
    {
      [(CBDaemonXPCConnection *)self _xpcSetLowPowerMode:requestCopy];
    }

    else if (!strcmp(v7, "PwrG"))
    {
      [(CBDaemonXPCConnection *)self _xpcGetPowerState:requestCopy];
    }

    else if (!strcmp(v7, "PwrS"))
    {
      [(CBDaemonXPCConnection *)self _xpcSetPowerState:requestCopy];
    }

    else if (!strcmp(v7, "RdPf"))
    {
      [(CBDaemonXPCConnection *)self _xpcReadPrefs:requestCopy];
    }

    else if (!strcmp(v7, "WrPf"))
    {
      [(CBDaemonXPCConnection *)self _xpcWritePref:requestCopy];
    }

    else if (!strcmp(v7, "SnAE"))
    {
      [(CBDaemonXPCConnection *)self _xpcSendAudioAccessoryEventMessage:requestCopy];
    }

    else if (!strcmp(v7, "SnAC"))
    {
      [(CBDaemonXPCConnection *)self _xpcSendAudioAccessoryConfigMessage:requestCopy];
    }

    else if (!strcmp(v7, "SnCD"))
    {
      [(CBDaemonXPCConnection *)self _xpcSendConversationDetectMessage:requestCopy];
    }

    else if (!strcmp(v7, "SnRM"))
    {
      [(CBDaemonXPCConnection *)self _xpcSendRelayMessage:requestCopy];
    }

    else if (!strcmp(v7, "SnSR"))
    {
      [(CBDaemonXPCConnection *)self _xpcSendSmartRoutingInformation:requestCopy];
    }

    else if (!strcmp(v7, "RstE"))
    {
      [(CBDaemonXPCConnection *)self _xpcResetCBExtension:requestCopy];
    }

    else if (!strcmp(v7, "UpId"))
    {
      [(CBDaemonXPCConnection *)self _xpcUpdateIdentities:requestCopy];
    }

    else if (!strcmp(v7, "DscA"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryActivate:requestCopy];
    }

    else if (!strcmp(v7, "DscF"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryFinish:requestCopy];
    }

    else if (!strcmp(v7, "DscU"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryUpdate:requestCopy];
    }

    else if (!strcmp(v7, "DsCD"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryClearDuplicateFilterCache:requestCopy];
    }

    else if (!strcmp(v7, "DsGD"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryGetDevices:requestCopy];
    }

    else if (!strcmp(v7, "DGDv"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryGetDevicesMatchingProperties:requestCopy];
    }

    else if (!strcmp(v7, "DsIA"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryInjectAOPBufAdv:requestCopy];
    }

    else if (!strcmp(v7, "SpIn"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBSpatialInteractionSessionActivate:requestCopy];
    }

    else if (!strcmp(v7, "SpIU"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBSpatialInteractionSessionUpdate:requestCopy];
    }

    else if (!strcmp(v7, "SpAT"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBSpatialInteractionSessionAddPeerToken:requestCopy];
    }

    else if (!strcmp(v7, "SpRT"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBSpatialInteractionSessionRemovePeerToken:requestCopy];
    }

    else
    {
      if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080CFD8(v7);
      }

      if (CUXPCDictionaryExpectsReply())
      {
        CBErrorF(4294960561, "Unknown message type: '%s'");
        v8 = LABEL_51:;
        [(CBDaemonXPCConnection *)self _xpcSendReplyError:v8 request:requestCopy];
      }
    }
  }

  else
  {
    if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (string = _LogCategory_Initialize(), string))
      {
        sub_10080D018(string, v5, v6);
      }
    }

    if (CUXPCDictionaryExpectsReply())
    {
      CBErrorF(4294960591, "No message type");
      goto LABEL_51;
    }
  }
}

- (void)_xpcSendEvent:(id)event
{
  eventCopy = event;
  v5 = self->_xpcCnx;
  v6 = v5;
  if (v5)
  {
    xpc_connection_send_message(v5, eventCopy);
  }

  else
  {
    v7 = self->_remoteClient;
    if (v7)
    {
      v10 = v7;
      v11 = CUXPCCreateCFObjectFromXPCObject();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v15 = [v11 mutableCopy];
        string = xpc_dictionary_get_string(eventCopy, "mTyp");
        if (string)
        {
          v17 = string;
          if (!strcmp(string, "DvFo") || !strcmp(v17, "DvLo"))
          {
            [CBDevice convertToWHBEvent:v15];
          }
        }

        [v15 setObject:self->_remoteClientID forKeyedSubscript:@"cid"];
        [v15 setObject:0 forKeyedSubscript:@"rmtD"];
        identifier = [(CBDevice *)self->_remoteDevice identifier];
        if (identifier)
        {
          if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            sub_10080D094(v15);
          }

          v24 = RPOptionTimeoutSeconds;
          v25 = &off_100B33648;
          v21 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_10013B93C;
          v22[3] = &unk_100AE04B8;
          v23 = v15;
          [(RPCompanionLinkClient *)v10 sendEventID:@"com.apple.bluetooth.event" event:v23 destinationID:identifier options:v21 completion:v22];
        }

        else
        {
          sub_10080D0F0(dword_100B510A0, v18, v19);
        }
      }

      else
      {
        sub_10080D034(isKindOfClass, v13, v14);
      }
    }

    else
    {
      sub_10080D148(0, v8, v9);
    }
  }
}

- (void)_xpcSendReply:(id)reply
{
  replyCopy = reply;
  xpcCnx = self->_xpcCnx;
  v12 = replyCopy;
  if (xpcCnx)
  {
    xpc_connection_send_message(xpcCnx, replyCopy);
  }

  else
  {
    v6 = CUXPCObjectGetResponseHandler();
    if (v6)
    {
      v9 = v6;
      v10 = CUXPCCreateCFObjectFromXPCObject();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080D280(v10);
        }

        (v9)[2](v9, v10, 0, 0);
      }

      else
      {
        v11 = CBErrorF(4294960579, "Convert XPC to CF failed");
        if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080D224(v11);
        }

        (v9)[2](v9, 0, 0, v11);
      }
    }

    else
    {
      sub_10080D2DC(0, v7, v8);
    }
  }
}

- (void)_xpcSendReplyError:(id)error request:(id)request
{
  errorCopy = error;
  requestCopy = request;
  v9 = CUXPCDictionaryCreateReply();
  if (v9)
  {
    CUXPCEncodeNSError();
    xpcCnx = self->_xpcCnx;
    if (xpcCnx)
    {
      xpc_connection_send_message(xpcCnx, v9);
    }

    else
    {
      v13 = CUXPCObjectGetResponseHandler();
      if (v13)
      {
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080D33C(errorCopy);
        }

        (v13)[2](v13, 0, 0, errorCopy);
      }

      else
      {
        sub_10080D398(dword_100B510A0, v11, v12);
      }
    }
  }

  else
  {
    sub_10080D3F0(0, v7, v8);
  }
}

- (BOOL)_entitledSoftwareUpdateAndReturnError:(id *)error
{
  xpc_connection_get_audit_token();
  v5 = xpc_copy_entitlement_for_token();
  v6 = v5;
  if (!v5 || !xpc_dictionary_get_BOOL(v5, "com.apple.bluetooth.softwareupdate"))
  {
    self->_entitled = 0;
    v8 = CBErrorF(4294896128, "Missing entitlement for Software Update", 0, 0, 0, 0);
    if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080D450(self);
      if (!error)
      {
        goto LABEL_9;
      }
    }

    else if (!error)
    {
LABEL_9:

      v7 = 0;
      goto LABEL_10;
    }

    v9 = v8;
    *error = v8;
    goto LABEL_9;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (BOOL)_entitledCBAdvertiserAndReturnError:(id)error error:(id *)a4
{
  errorCopy = error;
  safetyAlertsSignature = [errorCopy safetyAlertsSignature];
  if (safetyAlertsSignature)
  {

LABEL_4:
    xpc_connection_get_audit_token();
    v9 = xpc_copy_entitlement_for_token();
    v10 = v9;
    if (v9 && xpc_dictionary_get_BOOL(v9, "com.apple.bluetooth.safetyalerts"))
    {

      goto LABEL_7;
    }

    self->_entitled = 0;
    v12 = CBErrorF(4294896128, "Missing entitlement for Safety Alerts", 0, 0, 0, 0);
    if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080D4C0(self);
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    else if (!a4)
    {
LABEL_13:

      v11 = 0;
      goto LABEL_14;
    }

    v13 = v12;
    *a4 = v12;
    goto LABEL_13;
  }

  safetyAlertsAlertData = [errorCopy safetyAlertsAlertData];

  if (safetyAlertsAlertData)
  {
    goto LABEL_4;
  }

LABEL_7:
  v11 = 1;
LABEL_14:

  return v11;
}

- (unsigned)_softwareUpdateDataArrayCountMaximumLimitForClient
{
  stackController = [(CBDaemonServer *)self->_daemon stackController];
  softwareUpdateAdvertisingInstanceLimit = [stackController softwareUpdateAdvertisingInstanceLimit];

  return softwareUpdateAdvertisingInstanceLimit;
}

- (void)_xpcCBAdvertiserActivate:(id)activate
{
  activateCopy = activate;
  v48[0] = 0;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:v48];
  v6 = v48[0];
  if ((v5 & 1) == 0)
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:activateCopy];
    goto LABEL_37;
  }

  v47 = v6;
  v7 = [[CBAdvertiser alloc] initWithXPCObject:activateCopy error:&v47];
  v8 = v47;

  if (v7)
  {
    v46 = v8;
    v9 = [(CBDaemonXPCConnection *)self _entitledCBAdvertiserAndReturnError:v7 error:&v46];
    v10 = v46;

    if ((v9 & 1) == 0)
    {
      [(CBDaemonXPCConnection *)self _xpcSendReplyError:v10 request:activateCopy];
      v8 = v10;
      goto LABEL_36;
    }

    if (![v7 softwareUpdateActionType])
    {
      softwareUpdateDataArray = [v7 softwareUpdateDataArray];
      v12 = [softwareUpdateDataArray count];

      if (!v12)
      {
        v8 = v10;
LABEL_7:
        objc_storeStrong(&self->_activatedAdvertiser, v7);
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080D530(self);
        }

        [(CBDaemonServer *)self->_daemon scheduleAdvertiserUpdateImmediate:1];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_10013C390;
        v44[3] = &unk_100ADF590;
        v44[4] = v7;
        v44[5] = self;
        [v7 setBluetoothStateChangedHandler:v44];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10013C3E8;
        v43[3] = &unk_100ADF590;
        v43[4] = v7;
        v43[5] = self;
        [v7 setAdvertisingAddressChangedHandler:v43];
        v14 = CUXPCDictionaryCreateReply();
        if (v14)
        {
          v41 = v8;
          v42 = activateCopy;
          addressMonitor = [(CBDaemonServer *)self->_daemon addressMonitor];
          connectableAddressData = [addressMonitor connectableAddressData];

          [v7 setAdvertisingAddressDataConnectable:connectableAddressData];
          if (connectableAddressData)
          {
            v17 = connectableAddressData;
            v18 = v14;
            v19 = connectableAddressData;
            bytes = [v19 bytes];
            if (bytes)
            {
              v21 = bytes;
            }

            else
            {
              v21 = "";
            }

            v22 = [v19 length];

            xpc_dictionary_set_data(v18, "aaCN", v21, v22);
          }

          addressMonitor2 = [(CBDaemonServer *)self->_daemon addressMonitor];
          nonConnectableAddressData = [addressMonitor2 nonConnectableAddressData];

          [v7 setAdvertisingAddressDataNonConnectable:nonConnectableAddressData];
          if (nonConnectableAddressData)
          {
            v25 = nonConnectableAddressData;
            v26 = v14;
            v27 = nonConnectableAddressData;
            bytes2 = [v27 bytes];
            if (bytes2)
            {
              v29 = bytes2;
            }

            else
            {
              v29 = "";
            }

            v30 = [v27 length];

            xpc_dictionary_set_data(v26, "aaNC", v29, v30);
          }

          addressMonitor3 = [(CBDaemonServer *)self->_daemon addressMonitor];
          nonConnectableSecondaryAddressData = [addressMonitor3 nonConnectableSecondaryAddressData];

          [v7 setAdvertisingAddressDataNonConnectableSecondary:nonConnectableSecondaryAddressData];
          if (nonConnectableSecondaryAddressData)
          {
            v33 = nonConnectableSecondaryAddressData;
            v34 = v14;
            v35 = nonConnectableSecondaryAddressData;
            bytes3 = [v35 bytes];
            if (bytes3)
            {
              v37 = bytes3;
            }

            else
            {
              v37 = "";
            }

            v38 = [v35 length];

            xpc_dictionary_set_data(v34, "aaNC2", v37, v38);
          }

          _softwareUpdateDataArrayCountMaximumLimitForClient = [(CBDaemonXPCConnection *)self _softwareUpdateDataArrayCountMaximumLimitForClient];
          if (_softwareUpdateDataArrayCountMaximumLimitForClient)
          {
            xpc_dictionary_set_int64(v14, "aSuda", _softwareUpdateDataArrayCountMaximumLimitForClient);
          }

          _powerStateForClient = [(CBDaemonXPCConnection *)self _powerStateForClient];
          v8 = v41;
          if (_powerStateForClient)
          {
            xpc_dictionary_set_int64(v14, "pwrS", _powerStateForClient);
          }

          [(CBDaemonXPCConnection *)self _xpcSendReply:v14];

          activateCopy = v42;
        }

        else
        {
          sub_10080D588();
        }

        goto LABEL_36;
      }
    }

    v45 = v10;
    v13 = [(CBDaemonXPCConnection *)self _entitledSoftwareUpdateAndReturnError:&v45];
    v8 = v45;

    if (v13)
    {
      goto LABEL_7;
    }
  }

  else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080D5F0(v8);
  }

  [(CBDaemonXPCConnection *)self _xpcSendReplyError:v8 request:activateCopy];
LABEL_36:

  v6 = v8;
LABEL_37:
}

- (void)_xpcCBAdvertiserUpdate:(id)update
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100042234;
  v35 = sub_1000425AC;
  v36 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10013C9E0;
  v28[3] = &unk_100AE0380;
  v30 = &v31;
  v28[4] = self;
  updateCopy = update;
  v29 = updateCopy;
  v5 = objc_retainBlock(v28);
  v6 = (v32 + 5);
  obj = v32[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = [CBAdvertiser alloc];
    v9 = (v32 + 5);
    v26 = v32[5];
    v10 = [v8 initWithXPCObject:updateCopy error:&v26];
    objc_storeStrong(v9, v26);
    if (v10)
    {
      v11 = (v32 + 5);
      v25 = v32[5];
      v12 = [(CBDaemonXPCConnection *)self _entitledCBAdvertiserAndReturnError:v10 error:&v25];
      objc_storeStrong(v11, v25);
      if (!v12)
      {
        goto LABEL_16;
      }

      if ([v10 softwareUpdateActionType] || (objc_msgSend(v10, "softwareUpdateDataArray"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v14))
      {
        v15 = (v32 + 5);
        v24 = v32[5];
        v16 = [(CBDaemonXPCConnection *)self _entitledSoftwareUpdateAndReturnError:&v24];
        objc_storeStrong(v15, v24);
        if (!v16)
        {
          goto LABEL_16;
        }
      }

      v17 = self->_activatedAdvertiser;
      v18 = v17;
      if (v17)
      {
        v19 = [(CBAdvertiser *)v17 updateWithCBAdvertiser:v10];
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v20 = CUPrintPID();
          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBAdvertiserUpdate:]", 30, "CBAdvertiser Update: %@, from %@", v18, v20);
        }

        if (!v19)
        {
          goto LABEL_15;
        }

        [(CBDaemonServer *)self->_daemon scheduleAdvertiserUpdateImmediate:0];
        v21 = +[CBMetricsDaemon sharedCBMetricsDaemon];
        [v21 reportxpcCBAdvertiserUpdate:v10];
      }

      else
      {
        v23 = CBErrorF(4294960551, "No advertiser");
        v21 = v32[5];
        v32[5] = v23;
      }
    }

    else
    {
      v22 = CBErrorF(4294960591, "Decode failed");
      v18 = v32[5];
      v32[5] = v22;
    }

LABEL_15:

LABEL_16:
  }

  (v5[2])(v5);

  _Block_object_dispose(&v31, 8);
}

- (void)_xpcCBConnectionActivate:(id)activate
{
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_100042234;
  v52 = sub_1000425AC;
  v53 = 0;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10013D0C0;
  v45[3] = &unk_100AE0380;
  v47 = &v48;
  v45[4] = self;
  activateCopy = activate;
  v46 = activateCopy;
  v5 = objc_retainBlock(v45);
  v6 = v49;
  v44 = v49[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v44];
  objc_storeStrong(v6 + 5, v44);
  if (v7)
  {
    if (self->_activatedConnection)
    {
      v30 = CBErrorF(4294960575, "Already activated");
      v10 = v49[5];
      v49[5] = v30;
      goto LABEL_27;
    }

    v8 = [CBConnection alloc];
    v9 = v49;
    v43 = v49[5];
    v10 = [v8 initWithXPCObject:activateCopy error:&v43];
    objc_storeStrong(v9 + 5, v43);
    if (!v10)
    {
LABEL_27:

      goto LABEL_28;
    }

    [v10 setDispatchQueue:self->_dispatchQueue];
    peerDevice = [v10 peerDevice];
    if (!peerDevice)
    {
      v31 = CBErrorF(4294960591, "No device");
      v32 = v49[5];
      v49[5] = v31;

      goto LABEL_26;
    }

    if ([v10 useCase] == 720897)
    {
      v12 = v49;
      v42 = v49[5];
      v13 = [(CBDaemonXPCConnection *)self _entitledSoftwareUpdateAndReturnError:&v42];
      objc_storeStrong(v12 + 5, v42);
      if (!v13)
      {
        goto LABEL_26;
      }
    }

    if (([v10 internalFlags] & 0x100) != 0)
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10013D19C;
      v41[3] = &unk_100AE20C8;
      v41[4] = v10;
      v41[5] = self;
      [v10 setPairingCompletedHandler:v41];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_10013D1BC;
      v40[3] = &unk_100AE20F0;
      v40[4] = v10;
      v40[5] = self;
      [v10 setPairingPromptHandler:v40];
      stackController = [(CBDaemonServer *)self->_daemon stackController];
      v15 = v49;
      obj = v49[5];
      v16 = [stackController addPairingClient:v10 error:&obj];
      objc_storeStrong(v15 + 5, obj);

      if ((v16 & 1) == 0)
      {
LABEL_26:

        goto LABEL_27;
      }

      self->_connectionAddedPairingClient = 1;
    }

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10013D1D8;
    v38[3] = &unk_100AE0130;
    v38[4] = v10;
    v38[5] = self;
    [v10 setXpcSendEventHandler:v38];
    objc_storeStrong(&self->_activatedConnection, v10);
    v17 = self->_appID;
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v18 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBConnectionActivate:]", 30, "Activate: %@, from %@ (%@)", v10, v18, v17);
    }

    clientBundleID = [v10 clientBundleID];
    v20 = [clientBundleID length];

    if (!v20)
    {
      [v10 setClientBundleID:v17];
    }

    serviceFlags = [v10 serviceFlags];
    if (serviceFlags)
    {
      connectionFlags = [v10 connectionFlags];
      daemon = self->_daemon;
      if ((connectionFlags & 2) == 0)
      {
        stackController2 = [(CBDaemonServer *)daemon stackController];
        v25 = v49;
        v35 = v49[5];
        v26 = [stackController2 connectDevice:peerDevice connectionFlags:connectionFlags serviceFlags:serviceFlags error:&v35];
        objc_storeStrong(v25 + 5, v35);

        if (v26)
        {
          v27 = CUXPCDictionaryCreateReply();
          [(CBDaemonXPCConnection *)self _xpcSendReply:v27];
        }

        goto LABEL_25;
      }

      stackController3 = [(CBDaemonServer *)daemon stackController];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10013D1F4;
      v36[3] = &unk_100AE2050;
      v36[4] = v10;
      v36[5] = self;
      v37 = activateCopy;
      [stackController3 connectWithCBConnection:v10 completionHandler:v36];

      v28 = v37;
    }

    else
    {
      if (self->_remoteClient)
      {
        [v10 setInternalFlags:{objc_msgSend(v10, "internalFlags") | 0x20}];
      }

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10013D2EC;
      v33[3] = &unk_100AE2050;
      v33[4] = v10;
      v33[5] = self;
      v34 = activateCopy;
      [v10 activateWithCompletion:v33];
      v28 = v34;
    }

LABEL_25:
    goto LABEL_26;
  }

LABEL_28:
  (v5[2])(v5);

  _Block_object_dispose(&v48, 8);
}

- (void)_xpcCBConnectionDisconnect:(id)disconnect
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100042234;
  v29 = sub_1000425AC;
  v30 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10013D740;
  v22[3] = &unk_100AE0380;
  v24 = &v25;
  v22[4] = self;
  disconnectCopy = disconnect;
  v23 = disconnectCopy;
  v5 = objc_retainBlock(v22);
  v6 = (v26 + 5);
  obj = v26[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = [CBConnection alloc];
    v9 = (v26 + 5);
    v20 = v26[5];
    v10 = [v8 initWithXPCObject:disconnectCopy error:&v20];
    objc_storeStrong(v9, v20);
    if (!v10)
    {
LABEL_14:

      goto LABEL_15;
    }

    peerDevice = [v10 peerDevice];
    if (peerDevice)
    {
      serviceFlags = [v10 serviceFlags];
      if (serviceFlags)
      {
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v13 = CUPrintFlags32();
          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBConnectionDisconnect:]", 30, "CBConnection disconnect: %@, %@", peerDevice, v13);
        }

        stackController = [(CBDaemonServer *)self->_daemon stackController];
        v15 = (v26 + 5);
        v19 = v26[5];
        v16 = [stackController disconnectDevice:peerDevice serviceFlags:serviceFlags error:&v19];
        objc_storeStrong(v15, v19);

        if ((v16 & 1) == 0)
        {
          goto LABEL_13;
        }

        v17 = CUXPCDictionaryCreateReply();
        if (v17)
        {
          [(CBDaemonXPCConnection *)self _xpcSendReply:v17];
        }

        else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBConnectionDisconnect:]", 90, "### CBConnection disconnect create reply failed");
        }

LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v18 = CBErrorF(4294960591, "No service flags");
    }

    else
    {
      v18 = CBErrorF(4294960591, "No device");
    }

    v17 = v26[5];
    v26[5] = v18;
    goto LABEL_12;
  }

LABEL_15:
  (v5[2])(v5);

  _Block_object_dispose(&v25, 8);
}

- (void)_xpcCBConnection:(id)connection pairingCompletedWithDevice:(id)device error:(id)error
{
  errorCopy = error;
  deviceCopy = device;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "mTyp", "PrCm");
  CUXPCEncodeObject();

  if (errorCopy)
  {
    CUXPCEncodeNSError();
  }

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v8];
}

- (void)_xpcCBConnection:(id)connection pairingPromptWithPairingInfo:(id)info
{
  infoCopy = info;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "mTyp", "PrPm");
  CUXPCEncodeObject();

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v6];
}

- (void)_xpcCBConnectionPairingContinue:(id)continue
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100042234;
  v24 = sub_1000425AC;
  v25 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10013DCF8;
  v17[3] = &unk_100AE0380;
  v19 = &v20;
  v17[4] = self;
  continueCopy = continue;
  v18 = continueCopy;
  v5 = objc_retainBlock(v17);
  v6 = (v21 + 5);
  obj = v21[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = self->_activatedConnection;
    if (v8)
    {
      v15 = 0;
      objc_opt_class();
      v9 = (v21 + 5);
      v14 = v21[5];
      CUXPCDecodeObject();
      objc_storeStrong(v9, v14);
      if (!v21[5])
      {
        v12 = CBErrorF(4294960591, "No pairingInfo");
        v13 = v21[5];
        v21[5] = v12;
      }
    }

    else
    {
      v10 = CBErrorF(4294960551, "No connection");
      v11 = v21[5];
      v21[5] = v10;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v20, 8);
}

- (void)_xpcCBControllerActivate:(id)activate
{
  activateCopy = activate;
  v22 = 0;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v22];
  v6 = v22;
  if (v5)
  {
    v21 = v6;
    v7 = [[CBController alloc] initWithXPCObject:activateCopy error:&v21];
    v8 = v21;

    if (v7)
    {
      [v7 setAppID:self->_appID];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10013E1BC;
      v20[3] = &unk_100ADF590;
      v20[4] = v7;
      v20[5] = self;
      [v7 setBluetoothStateChangedHandler:v20];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10013E214;
      v19[3] = &unk_100ADF590;
      v19[4] = v7;
      v19[5] = self;
      [v7 setDiscoverableStateChangedHandler:v19];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10013E28C;
      v18[3] = &unk_100ADF590;
      v18[4] = v7;
      v18[5] = self;
      [v7 setInquiryStateChangedHandler:v18];
      if (([v7 internalFlags] & 0x40) != 0)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10013E304;
        v17[3] = &unk_100AE0180;
        v17[4] = v7;
        v17[5] = self;
        [v7 setRelayMessageHandler:v17];
      }

      if (([v7 internalFlags] & 0x200) != 0)
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10013E32C;
        v16[3] = &unk_100ADF718;
        v16[4] = v7;
        v16[5] = self;
        [v7 setTipiChangedHandler:v16];
      }

      objc_storeStrong(&self->_activatedController, v7);
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080D79C(self);
      }

      [(CBDaemonServer *)self->_daemon scheduleControlUpdateImmediate:0];
      v9 = CUXPCDictionaryCreateReply();
      if (v9)
      {
        stackController = [(CBDaemonServer *)self->_daemon stackController];
        discoverableState = [stackController discoverableState];
        if (discoverableState)
        {
          xpc_dictionary_set_int64(v9, "dsSt", discoverableState);
        }

        stackController2 = [(CBDaemonServer *)self->_daemon stackController];
        inquiryState = [stackController2 inquiryState];
        if (inquiryState)
        {
          xpc_dictionary_set_int64(v9, "inqS", inquiryState);
        }

        _powerStateForClient = [(CBDaemonXPCConnection *)self _powerStateForClient];
        if (_powerStateForClient)
        {
          xpc_dictionary_set_int64(v9, "pwrS", _powerStateForClient);
        }

        if (([v7 internalFlags] & 0x2000) != 0)
        {
          getAudioAccessoryDeviceArray = [(CBDaemonServer *)self->_daemon getAudioAccessoryDeviceArray];
          if (getAudioAccessoryDeviceArray)
          {
            xpc_dictionary_set_value(v9, "aaDD", getAudioAccessoryDeviceArray);
          }
        }

        [(CBDaemonXPCConnection *)self _xpcSendReply:v9];
      }

      else
      {
        sub_10080D7F4();
      }
    }

    else
    {
      if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080D85C(v8);
      }

      [(CBDaemonXPCConnection *)self _xpcSendReplyError:v8 request:activateCopy];
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:activateCopy];
    v8 = v6;
  }
}

- (void)_xpcGetControllerInfo:(id)info
{
  v11[0] = 0;
  infoCopy = info;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:v11];
  v6 = v11[0];
  if (v5)
  {
    v7 = CUXPCDictionaryCreateReply();

    if (v7)
    {
      stackController = [(CBDaemonServer *)self->_daemon stackController];
      controllerInfo = [stackController controllerInfo];

      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080D8B0(controllerInfo);
      }

      v10 = xpc_dictionary_create(0, 0, 0);
      [controllerInfo encodeWithXPCObject:v10];
      xpc_dictionary_set_value(v7, "ctrI", v10);
      [(CBDaemonXPCConnection *)self _xpcSendReply:v7];
    }

    else
    {
      sub_10080D90C();
      v7 = v11[1];
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:infoCopy];
    v7 = infoCopy;
  }
}

- (void)_xpcGetControllerSettings:(id)settings
{
  v31[0] = 0;
  settingsCopy = settings;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:v31];
  v6 = v31[0];
  if (v5)
  {
    v7 = CUXPCDictionaryCreateReply();

    if (v7)
    {
      v28 = v7;
      v30 = v6;
      v8 = objc_alloc_init(CBControllerSettings);
      stackController = [(CBDaemonServer *)self->_daemon stackController];
      [v8 setDiscoverableState:{objc_msgSend(stackController, "discoverableState")}];

      v10 = CFPreferencesCopyValue(@"enableGameControllerAutoSwitchMode", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      v11 = 1;
      if (objc_opt_isKindOfClass())
      {
        if ([v10 BOOLValue])
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }
      }

      [v8 setGameControllerAutoSwitchMode:v11];
      v12 = CFPreferencesCopyValue(@"enableGameControllerUSBBluetoothPairing", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      v13 = 1;
      if (objc_opt_isKindOfClass())
      {
        if ([v12 BOOLValue])
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }
      }

      [v8 setGameControllerUSBBluetoothPairing:v13];
      v14 = CFPreferencesCopyValue(@"move3PPLEMSToLegacyMode", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      v15 = 1;
      if (objc_opt_isKindOfClass())
      {
        if ([v14 BOOLValue])
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }
      }

      [v8 setHid3ppLELegacyMode:v15];
      v16 = CFPreferencesCopyValue(@"btvcDefaultAdvRSSI", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      selfCopy = self;
      v26 = v12;
      if (objc_opt_isKindOfClass())
      {
        intValue = [v16 intValue];
      }

      else
      {
        intValue = -45;
      }

      v18 = v10;
      [v8 setBleAdvRSSI:{intValue, v26}];
      v19 = CFPreferencesCopyValue(@"BluetoothAutoSeekKeyboard", @"com.apple.Bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      v20 = 1;
      if (objc_opt_isKindOfClass())
      {
        if ([v19 BOOLValue])
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }
      }

      [v8 setSetupAssistantIfNoKeyboard:v20];
      v21 = CFPreferencesCopyValue(@"BluetoothAutoSeekPointingDevice", @"com.apple.Bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      v22 = 1;
      if (objc_opt_isKindOfClass())
      {
        if ([v21 BOOLValue])
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }
      }

      [v8 setSetupAssistantIfNoPointingDevice:v22];
      v23 = CFPreferencesCopyValue(@"SpatialSoundProfileAllowed", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      v24 = 1;
      if (objc_opt_isKindOfClass())
      {
        if ([v23 BOOLValue])
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }
      }

      [v8 setSpatialSoundProfileAllowed:v24];
      settingsCopy = v28;
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080D980(v8);
      }

      v25 = xpc_dictionary_create(0, 0, 0);
      [v8 encodeWithXPCObject:v25];
      xpc_dictionary_set_value(v28, "ctrS", v25);
      [(CBDaemonXPCConnection *)selfCopy _xpcSendReply:v28];

      v6 = v30;
    }

    else
    {
      sub_10080D9DC();
      settingsCopy = v31[1];
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:settingsCopy];
  }
}

- (void)_xpcModifyControllerSettings:(id)settings
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10013F148;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  settingsCopy = settings;
  v15 = settingsCopy;
  v5 = objc_retainBlock(v14);
  v6 = (v18 + 5);
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v12 = 0;
    objc_opt_class();
    v8 = (v18 + 5);
    v11 = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v8, v11);
    if (!v18[5])
    {
      v9 = CBErrorF(4294960591, "No settings");
      v10 = v18[5];
      v18[5] = v9;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcGetDevices:(id)devices
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100042234;
  v25 = sub_1000425AC;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013F554;
  v18[3] = &unk_100AE0380;
  v20 = &v21;
  v18[4] = self;
  devicesCopy = devices;
  v19 = devicesCopy;
  v5 = objc_retainBlock(v18);
  v6 = (v22 + 5);
  obj = v22[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  v8 = (v22 + 5);
  if (v7)
  {
    v16 = v22[5];
    v27 = 0;
    if (CUXPCDecodeUInt64RangedEx() == 6)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }

    objc_storeStrong(v8, v16);
    if (!v22[5])
    {
      stackController = [(CBDaemonServer *)self->_daemon stackController];
      v11 = (v22 + 5);
      v15 = v22[5];
      v12 = [stackController getDevicesWithFlags:v9 error:&v15];
      objc_storeStrong(v11, v15);

      if (v12)
      {
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v13 = CUPrintFlags32();
          LogPrintF_safe(&dword_100B510A0, "-[CBDaemonXPCConnection _xpcGetDevices:]", 30, "GetDevices: flags %@, total %d", v13, [v12 count]);
        }

        v14 = CUXPCDictionaryCreateReply();
        if (v14)
        {
          CUXPCEncodeNSArrayOfObjects();
          [(CBDaemonXPCConnection *)self _xpcSendReply:v14];
        }

        else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcGetDevices:]", 90, "### GetDevices create reply failed");
        }
      }
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v22[5] request:devicesCopy];
  }

  (v5[2])(v5);

  _Block_object_dispose(&v21, 8);
}

- (void)_xpcDeleteDevice:(id)device
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100042234;
  v27 = sub_1000425AC;
  v28 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10013F948;
  v20[3] = &unk_100AE0380;
  v22 = &v23;
  v20[4] = self;
  deviceCopy = device;
  v21 = deviceCopy;
  v5 = objc_retainBlock(v20);
  v6 = (v24 + 5);
  obj = v24[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = xpc_dictionary_get_dictionary(deviceCopy, "devi");
    if (v8)
    {
      v9 = [CBDevice alloc];
      v10 = (v24 + 5);
      v18 = v24[5];
      v11 = [v9 initWithXPCObject:v8 error:&v18];
      objc_storeStrong(v10, v18);
      if (v11)
      {
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDeleteDevice:]", 30, "DeleteDevice: %@", v11);
        }

        stackController = [(CBDaemonServer *)self->_daemon stackController];
        v13 = (v24 + 5);
        v17 = v24[5];
        v14 = [stackController deleteDevice:v11 error:&v17];
        objc_storeStrong(v13, v17);

        if (v14)
        {
          v15 = CUXPCDictionaryCreateReply();
          if (v15)
          {
            [(CBDaemonXPCConnection *)self _xpcSendReply:v15];
          }

          else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDeleteDevice:]", 90, "### DeleteDevice create reply failed");
          }
        }
      }
    }

    else
    {
      v16 = CBErrorF(4294960591, "No device");
      v11 = v24[5];
      v24[5] = v16;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v23, 8);
}

- (void)_xpcModifyDevice:(id)device
{
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_100042234;
  v58 = sub_1000425AC;
  v59 = 0;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10014028C;
  v51[3] = &unk_100AE0380;
  v53 = &v54;
  v51[4] = self;
  deviceCopy = device;
  v52 = deviceCopy;
  v5 = objc_retainBlock(v51);
  v6 = v55;
  obj = v55[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v8 = xpc_dictionary_get_dictionary(deviceCopy, "devi");
    if (!v8)
    {
      v36 = CBErrorF(4294960591, "No device");
      v11 = v55[5];
      v55[5] = v36;
      goto LABEL_24;
    }

    v9 = [CBDevice alloc];
    v10 = v55;
    v49 = v55[5];
    v11 = [v9 initWithXPCObject:v8 error:&v49];
    objc_storeStrong(v10 + 5, v49);
    if (!v11)
    {
LABEL_24:

      goto LABEL_25;
    }

    v12 = v55;
    v47 = v55[5];
    v48 = 0;
    v13 = CUXPCDecodeNSArrayOfNSString();
    objc_storeStrong(v12 + 5, v47);
    if ((v13 & 1) == 0)
    {
LABEL_23:

      goto LABEL_24;
    }

    v46 = 0;
    objc_opt_class();
    v14 = v55;
    v45 = v55[5];
    v15 = CUXPCDecodeObject();
    objc_storeStrong(v14 + 5, v45);
    if ((v15 & 1) == 0 || (v16 = v55 + 5, v44 = v55[5], v60 = 0, v17 = CUXPCDecodeSInt64RangedEx(), objc_storeStrong(v16, v44), v17 == 5) || (v18 = v55 + 5, v43 = v55[5], v60 = 0, v19 = CUXPCDecodeUInt64RangedEx(), objc_storeStrong(v18, v43), v19 == 5))
    {
LABEL_22:

      goto LABEL_23;
    }

    v60 = 0;
    objc_opt_class();
    v20 = v55;
    v42 = v55[5];
    v21 = CUXPCDecodeObject();
    objc_storeStrong(v20 + 5, v42);
    if (v21)
    {
      v22 = v55;
      v40 = v55[5];
      v41 = 0;
      v23 = CUXPCDecodeDouble();
      objc_storeStrong(v22 + 5, v40);
      if (v23)
      {
        if (v60)
        {
          powerSourceMock = [v60 powerSourceMock];

          if (powerSourceMock)
          {
            if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcModifyDevice:]", 30, "PowerSourceOverrideWithMock: %@, %@", v11, v60);
            }

            stackPowerSourceMonitor = [(CBDaemonServer *)self->_daemon stackPowerSourceMonitor];
            powerSourceMock2 = [v60 powerSourceMock];
            v28 = v55;
            v39 = v55[5];
            v29 = [stackPowerSourceMonitor powerSourceOverrideWithMock:powerSourceMock2 error:&v39];
            objc_storeStrong(v28 + 5, v39);

            if ((v29 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcModifyDevice:]", 30, "ModifyDevice: %@, %@", v11, v60);
            }

            stackController = [(CBDaemonServer *)self->_daemon stackController];
            v34 = v55;
            v38 = v55[5];
            v35 = [stackController modifyDevice:v11 settings:v60 error:&v38];
            objc_storeStrong(v34 + 5, v38);

            if ((v35 & 1) == 0)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
          if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcModifyDevice:]", 30, "ModifyDevice: %@ (in-place)", v11);
          }

          stackController2 = [(CBDaemonServer *)self->_daemon stackController];
          v31 = v55;
          v37 = v55[5];
          v32 = [stackController2 modifyDevice:v11 error:&v37];
          objc_storeStrong(v31 + 5, v37);

          if (!v32)
          {
            goto LABEL_21;
          }
        }

        v25 = CUXPCDictionaryCreateReply();
        if (v25)
        {
          [(CBDaemonXPCConnection *)self _xpcSendReply:v25];
        }

        else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcModifyDevice:]", 90, "### ModifyDevice create reply failed");
        }
      }
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_25:
  (v5[2])(v5);

  _Block_object_dispose(&v54, 8);
}

- (void)_xpcPerformDeviceRequest:(id)request
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100042234;
  v30 = sub_1000425AC;
  v31 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100140760;
  v23[3] = &unk_100AE0380;
  v25 = &v26;
  v23[4] = self;
  requestCopy = request;
  v24 = requestCopy;
  v5 = objc_retainBlock(v23);
  v6 = v27;
  obj = v27[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v21 = 0;
    objc_opt_class();
    v8 = v27;
    v20 = v27[5];
    v9 = CUXPCDecodeObject();
    objc_storeStrong(v8 + 5, v20);
    if (v9)
    {
      v19 = 0;
      objc_opt_class();
      v10 = v27;
      v18 = v27[5];
      v11 = CUXPCDecodeObject();
      objc_storeStrong(v10 + 5, v18);
      if (v11)
      {
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcPerformDeviceRequest:]", 30, "PerformDeviceRequest start: %@, %@", v21, v19);
        }

        stackController = [(CBDaemonServer *)self->_daemon stackController];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10014083C;
        v13[3] = &unk_100AE2140;
        v14 = v21;
        v15 = v19;
        selfCopy = self;
        v17 = requestCopy;
        [stackController performDeviceRequest:v19 device:v14 completionHandler:v13];
      }
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v26, 8);
}

- (void)_xpcDiagnosticControl:(id)control
{
  v231 = 0;
  v232 = &v231;
  v233 = 0x3032000000;
  v234 = sub_100042234;
  v235 = sub_1000425AC;
  v236 = 0;
  v228[0] = _NSConcreteStackBlock;
  v228[1] = 3221225472;
  v228[2] = sub_100142B64;
  v228[3] = &unk_100AE0380;
  v230 = &v231;
  v228[4] = self;
  xdict = control;
  v229 = xdict;
  v143 = objc_retainBlock(v228);
  v4 = v232;
  obj = v232[5];
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v4 + 5, obj);
  if ((v5 & 1) == 0)
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v232[5] request:xdict];
    goto LABEL_95;
  }

  v144 = xpc_dictionary_get_value(xdict, "parm");
  if (!v144)
  {
    v72 = CBErrorF(4294960591, "No input params");
    goto LABEL_144;
  }

  if (xpc_get_type(xdict) != &_xpc_type_dictionary)
  {
    v72 = CBErrorF(4294960591, "Non-dict input params");
    goto LABEL_144;
  }

  string = xpc_dictionary_get_string(v144, "iStr");
  if (!string)
  {
    v72 = CBErrorF(4294960591, "No input string");
    goto LABEL_144;
  }

  if (!stricmp_prefix())
  {
    v7 = CUXPCCreateCFObjectFromXPCObject();
    if (v7)
    {
      accessoryDaemon = [(CBDaemonServer *)self->_daemon accessoryDaemon];
      v11 = accessoryDaemon == 0;

      if (!v11)
      {
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v12 = CUPrintNSObjectOneLine();
          v13 = CUPrintPID();
          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, %@, from %@", string, v12, v13);
        }

        accessoryDaemon2 = [(CBDaemonServer *)self->_daemon accessoryDaemon];
        v18 = v232 + 5;
        v226 = v232[5];
        v19 = [accessoryDaemon2 diagnosticControl:v7 error:&v226];
        objc_storeStrong(v18, v226);

        if (!v19)
        {
          goto LABEL_94;
        }

        v225 = 0;
        NSAppendPrintF_safe(&v225, "%@", v19);
        v20 = v225;

LABEL_47:
        v7 = v20;
LABEL_86:
        v40 = CUXPCDictionaryCreateReply();
        v41 = v40;
        if (v40)
        {
          if (v7)
          {
            v42 = v7;
          }

          else
          {
            v42 = @"None\n";
          }

          v43 = v40;
          v44 = v42;
          uTF8String = [(__CFString *)v42 UTF8String];
          if (uTF8String)
          {
            xpc_dictionary_set_string(v43, "oStr", uTF8String);
          }

          [(CBDaemonXPCConnection *)self _xpcSendReply:v43];
        }

        else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 90, "### DiagnosticControl create reply failed");
        }

        goto LABEL_94;
      }

      CBErrorF(4294960561, "AccessoryDaemon disabled");
      v77 = LABEL_161:;
      v78 = v232[5];
      v232[5] = v77;

      goto LABEL_94;
    }

LABEL_159:
    CBErrorF(4294960591, "Convert params failed");
    goto LABEL_161;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v14 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v14);
    }

    [(CBDaemonXPCConnection *)self _xpcDiagnosticAdvertiser];
    v224 = 0;
    NSAppendPrintF_safe(&v224, "");
    v22 = v224;
    goto LABEL_53;
  }

  if (!strcasecmp(string, "aop-read-debug"))
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v15 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v15);
    }

    stackController = [(CBDaemonServer *)self->_daemon stackController];
    v25 = v232 + 5;
    v223 = v232[5];
    v7 = [stackController diagnosticControl:v144 error:&v223];
    objc_storeStrong(v25, v223);

    if (v232[5])
    {
      goto LABEL_94;
    }

    v222 = 0;
    NSAppendPrintF_safe(&v222, "%@\n", v7);
    v26 = v222;

LABEL_85:
    v7 = v26;
    goto LABEL_86;
  }

  if (!strcasecmp(string, "aop-write-debug"))
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v16 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v16);
    }

    stackController2 = [(CBDaemonServer *)self->_daemon stackController];
    v29 = v232 + 5;
    v221 = v232[5];
    v7 = [stackController2 diagnosticControl:v144 error:&v221];
    objc_storeStrong(v29, v221);

    if (v232[5])
    {
      goto LABEL_94;
    }

    v220 = 0;
    NSAppendPrintF_safe(&v220, "%@\n", v7);
    v26 = v220;

    goto LABEL_85;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v21 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v21);
    }

    [(CBDaemonXPCConnection *)self _xpcDiagnosticAssertion];
    v219 = 0;
    NSAppendPrintF_safe(&v219, "");
    v22 = v219;
    goto LABEL_53;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v23 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v23);
    }

    stackController3 = [(CBDaemonServer *)self->_daemon stackController];
    v33 = v232 + 5;
    v218 = v232[5];
    v7 = [stackController3 diagnosticControl:v144 error:&v218];
    objc_storeStrong(v33, v218);

    if (v232[5])
    {
      goto LABEL_94;
    }

    v217 = 0;
    NSAppendPrintF_safe(&v217, "%@", v7);
    v26 = v217;

    goto LABEL_85;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v27 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v27);
    }

    stackController4 = [(CBDaemonServer *)self->_daemon stackController];
    v39 = v232 + 5;
    v216 = v232[5];
    v7 = [stackController4 diagnosticControl:v144 error:&v216];
    objc_storeStrong(v39, v216);

    if (v232[5])
    {
      goto LABEL_94;
    }

    v215 = 0;
    NSAppendPrintF_safe(&v215, "%@", v7);
    v26 = v215;

    goto LABEL_85;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v30 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v30);
    }

    [(CBDaemonXPCConnection *)self _xpcDiagnosticDiscovery];
    v214 = 0;
    NSAppendPrintF_safe(&v214, "");
    v22 = v214;
    goto LABEL_53;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v31 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v31);
    }

    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    xpcConnections = [(CBDaemonServer *)self->_daemon xpcConnections];
    v49 = [xpcConnections countByEnumeratingWithState:&v210 objects:v238 count:16];
    if (v49)
    {
      v50 = *v211;
      do
      {
        for (i = 0; i != v49; i = i + 1)
        {
          if (*v211 != v50)
          {
            objc_enumerationMutation(xpcConnections);
          }

          [*(*(&v210 + 1) + 8 * i) _spatialInteractionReevaluateDevices];
        }

        v49 = [xpcConnections countByEnumeratingWithState:&v210 objects:v238 count:16];
      }

      while (v49);
    }

    v209 = 0;
    NSAppendPrintF_safe(&v209, "");
    v22 = v209;
    goto LABEL_53;
  }

  if (!stricmp_prefix())
  {
    v7 = CUXPCCreateCFObjectFromXPCObject();
    if (v7)
    {
      extensionsDaemon = [(CBDaemonServer *)self->_daemon extensionsDaemon];
      v35 = extensionsDaemon == 0;

      if (!v35)
      {
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v36 = CUPrintNSObjectOneLine();
          v37 = CUPrintPID();
          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: Extension: %s, %@, from %@", string, v36, v37);
        }

        extensionsDaemon2 = [(CBDaemonServer *)self->_daemon extensionsDaemon];
        v66 = v232 + 5;
        v208 = v232[5];
        v67 = [extensionsDaemon2 diagnosticControl:v7 error:&v208];
        objc_storeStrong(v66, v208);

        if (!v67)
        {
          goto LABEL_94;
        }

        v207 = 0;
        NSAppendPrintF_safe(&v207, "%@", v67);
        v20 = v207;

        goto LABEL_47;
      }

      CBErrorF(4294960561, "Extensions disabled");
      goto LABEL_161;
    }

    goto LABEL_159;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v46 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v46);
    }

    stackController5 = [(CBDaemonServer *)self->_daemon stackController];
    v70 = v232 + 5;
    v206 = v232[5];
    v7 = [stackController5 diagnosticControl:v144 error:&v206];
    objc_storeStrong(v70, v206);

    if (v232[5])
    {
      goto LABEL_94;
    }

    v205 = 0;
    NSAppendPrintF_safe(&v205, "%@", v7);
    v26 = v205;

    goto LABEL_85;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v47 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v47);
    }

    stackController6 = [(CBDaemonServer *)self->_daemon stackController];
    v74 = v232 + 5;
    v204 = v232[5];
    v7 = [stackController6 diagnosticControl:v144 error:&v204];
    objc_storeStrong(v74, v204);

    if (v232[5])
    {
      goto LABEL_94;
    }

    v203 = 0;
    NSAppendPrintF_safe(&v203, "%@", v7);
    v26 = v203;

    goto LABEL_85;
  }

  if (!strcasecmp(string, "LoD-connected"))
  {
    v7 = CUXPCCreateCFObjectFromXPCObject();
    if (v7)
    {
      CFStringGetTypeID();
      v52 = CFDictionaryGetTypedValue();
      if (!v52)
      {
        v135 = CBErrorF(4294960591, "No device UUID");
        v136 = v232[5];
        v232[5] = v135;

        goto LABEL_94;
      }

      v53 = [[NSUUID alloc] initWithUUIDString:v52];
      if (!v53)
      {
        v137 = CBErrorF(4294960591, "Bad device UUID");
        v138 = v232[5];
        v232[5] = v137;

        goto LABEL_94;
      }

      v139 = v52;
      CFStringGetTypeID();
      v141 = CFDictionaryGetTypedValue();
      v54 = objc_alloc_init(NSMutableArray);
      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v140 = v200 = 0u;
      v55 = [v140 componentsSeparatedByString:{@", "}];
      v56 = [v55 countByEnumeratingWithState:&v199 objects:v237 count:16];
      v142 = v53;
      if (v56)
      {
        v57 = *v200;
        do
        {
          for (j = 0; j != v56; j = j + 1)
          {
            if (*v200 != v57)
            {
              objc_enumerationMutation(v55);
            }

            v59 = [[CBUUID alloc] initWithString:*(*(&v199 + 1) + 8 * j) safe:1];
            if (v59)
            {
              [v54 addObject:v59];
            }
          }

          v56 = [v55 countByEnumeratingWithState:&v199 objects:v237 count:16];
        }

        while (v56);
      }

      v60 = v142;
      v61 = v140;
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        uUIDString = [v142 UUIDString];
        v63 = CUPrintNSObjectOneLine();
        v64 = CUPrintPID();
        LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s: device %@, serviceUUIDs %@, from %@", string, uUIDString, v63, v64, v139);

        v60 = v142;
        v61 = v140;
      }

      [(CBDaemonServer *)self->_daemon notifyConnectedDeviceUUID:v60 name:v141 servicesUUIDs:v54];
      v198 = 0;
      NSAppendPrintF_safe(&v198, "");
      v26 = v198;

      goto LABEL_85;
    }

    v72 = CBErrorF(4294960591, "Convert params failed");
LABEL_144:
    v7 = v232[5];
    v232[5] = v72;
    goto LABEL_94;
  }

  if (!strcasecmp(string, "mp-error"))
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v68 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v68);
    }

    stackController7 = [(CBDaemonServer *)self->_daemon stackController];
    v80 = v232 + 5;
    v197 = v232[5];
    v7 = [stackController7 diagnosticControl:v144 error:&v197];
    objc_storeStrong(v80, v197);

    if (v232[5])
    {
      goto LABEL_94;
    }

    v196 = 0;
    NSAppendPrintF_safe(&v196, "%@\n", v7);
    v26 = v196;

    goto LABEL_85;
  }

  if (!strcasecmp(string, "mp-keys-reset"))
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v71 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v71);
    }

    stackController8 = [(CBDaemonServer *)self->_daemon stackController];
    v84 = v232 + 5;
    v195 = v232[5];
    v7 = [stackController8 diagnosticControl:v144 error:&v195];
    objc_storeStrong(v84, v195);

    if (v232[5])
    {
      goto LABEL_94;
    }

    v194 = 0;
    NSAppendPrintF_safe(&v194, "%@\n", v7);
    v26 = v194;

    goto LABEL_85;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v75 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v75);
    }

    [(CBDaemonXPCConnection *)self _xpcDiagnosticTipiChanged];
    v193 = 0;
    NSAppendPrintF_safe(&v193, "");
    v22 = v193;
    goto LABEL_53;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v76 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v76);
    }

    whbDiscoveryDaemon = [(CBDaemonServer *)self->_daemon whbDiscoveryDaemon];
    [whbDiscoveryDaemon diagnosticControl:&off_100B34298];

    v192 = 0;
    NSAppendPrintF_safe(&v192, "");
    v22 = v192;
LABEL_53:
    v7 = v22;
    goto LABEL_86;
  }

  if (!stricmp_prefix())
  {
    [(CBDaemonServer *)self->_daemon setWifiCriticalOverride:[(CBDaemonServer *)self->_daemon wifiCriticalOverride]== 0];
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      wifiCriticalOverride = [(CBDaemonServer *)self->_daemon wifiCriticalOverride];
      if (wifiCriticalOverride > 2)
      {
        v82 = "?";
      }

      else
      {
        v82 = off_100AE22D8[wifiCriticalOverride];
      }

      v89 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: wifiCritical: %s, from %@", v82, v89);
    }

    v191 = 0;
    NSAppendPrintF_safe(&v191, "");
    v7 = v191;
    [(CBDaemonServer *)self->_daemon scheduleUpdateImmediate:0];
    goto LABEL_86;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v85 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v85);
    }

    v190 = 0;
    NSAppendPrintF_safe(&v190, "");
    v7 = v190;
    stackController9 = [(CBDaemonServer *)self->_daemon stackController];
    v92 = v232 + 5;
    v189 = v232[5];
    v93 = [stackController9 diagnosticControl:v144 error:&v189];
    objc_storeStrong(v92, v189);

    if (v232[5])
    {

      goto LABEL_94;
    }

    v188 = v7;
    NSAppendPrintF_safe(&v188, "%@", v93);
    v20 = v188;

    goto LABEL_47;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v86 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v86);
    }

    v187 = 0;
    NSAppendPrintF_safe(&v187, "");
    v7 = v187;
    stackController10 = [(CBDaemonServer *)self->_daemon stackController];
    v95 = v232 + 5;
    v186 = v232[5];
    v96 = [stackController10 diagnosticControl:v144 error:&v186];
    objc_storeStrong(v95, v186);

    if (v232[5])
    {

      goto LABEL_94;
    }

    v185 = v7;
    NSAppendPrintF_safe(&v185, "%@", v96);
    v20 = v185;

    goto LABEL_47;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v88 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v88);
    }

    v184 = 0;
    NSAppendPrintF_safe(&v184, "");
    v7 = v184;
    stackController11 = [(CBDaemonServer *)self->_daemon stackController];
    v98 = v232 + 5;
    v183 = v232[5];
    v99 = [stackController11 diagnosticControl:v144 error:&v183];
    objc_storeStrong(v98, v183);

    if (v232[5])
    {

      goto LABEL_94;
    }

    v182 = v7;
    NSAppendPrintF_safe(&v182, "%@", v99);
    v20 = v182;

    goto LABEL_47;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v90 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: %s, from %@", string, v90);
    }

    v181 = 0;
    NSAppendPrintF_safe(&v181, "");
    v7 = v181;
    stackController12 = [(CBDaemonServer *)self->_daemon stackController];
    v133 = v232 + 5;
    v180 = v232[5];
    v134 = [stackController12 diagnosticControl:v144 error:&v180];
    objc_storeStrong(v133, v180);

    if (v232[5])
    {

      goto LABEL_94;
    }

    v179 = v7;
    NSAppendPrintF_safe(&v179, "%@", v134);
    v20 = v179;

    goto LABEL_47;
  }

  if (!*string || !strcasecmp(string, "help"))
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcDiagnosticControl:]", 30, "Diags: help");
    }

    v178 = 0;
    NSAppendPrintF_safe(&v178, "%s", "Commands:\n");
    v100 = v178;
    v177 = v100;
    NSAppendPrintF_safe(&v177, "%s", "    accessory-fake        Publish/unpublish fake accessory.\n");
    v101 = v177;

    v176 = v101;
    NSAppendPrintF_safe(&v176, "%s", "    advertise             Start/stop test advertister.\n");
    v102 = v176;

    v175 = v102;
    NSAppendPrintF_safe(&v175, "%s", "    aop-read-debug \t   Send Read commands to AOP for debug testing\n");
    v103 = v175;

    v174 = v103;
    NSAppendPrintF_safe(&v174, "%s", "    aop-write-debug\t   Send Write commands to AOP for debug testing\n");
    v104 = v174;

    v173 = v104;
    NSAppendPrintF_safe(&v173, "%s", "    assert                Start/stop test assertion.\n");
    v105 = v173;

    v172 = v105;
    NSAppendPrintF_safe(&v172, "%s", "    coredump              Trigger a Bluetooth stack core dump.\n");
    v106 = v172;

    v171 = v106;
    NSAppendPrintF_safe(&v171, "%s", "    crash                 Force a crash.\n");
    v107 = v171;

    v170 = v107;
    NSAppendPrintF_safe(&v170, "%s", "    crash-FE              Call FatalError.\n");
    v108 = v170;

    v169 = v108;
    NSAppendPrintF_safe(&v169, "%s", "    crash-RC              Call RestartWithContext.\n");
    v109 = v169;

    v168 = v109;
    NSAppendPrintF_safe(&v168, "%s", "    crash-sim             Simulate a crash.\n");
    v110 = v168;

    v167 = v110;
    NSAppendPrintF_safe(&v167, "%s", "    discover              Start/stop test discovery.\n");
    v111 = v167;

    v166 = v111;
    NSAppendPrintF_safe(&v166, "%s", "    evaluate              Re-evaluate spatial devices.\n");
    v112 = v166;

    v165 = v112;
    NSAppendPrintF_safe(&v165, "%s", "    extension-found <ID>  Simulate finding a device.\n");
    v113 = v165;

    v164 = v113;
    NSAppendPrintF_safe(&v164, "%s", "    extension-launch <ID> Start extension by ID.\n");
    v114 = v164;

    v163 = v114;
    NSAppendPrintF_safe(&v163, "%s", "    extension-reset <ID>  Reset extension UI state.\n");
    v115 = v163;

    v162 = v115;
    NSAppendPrintF_safe(&v162, "%s", "    extension-update      Update the list of Bluetooth extensions.\n");
    v116 = v162;

    v161 = v116;
    NSAppendPrintF_safe(&v161, "%s", "    fakeAccessoryCrash    Fake an accessory crashing.\n");
    v117 = v161;

    v160 = v117;
    NSAppendPrintF_safe(&v160, "%s", "    forcejustwork         Enables/disables forcejustwork.\n");
    v118 = v160;

    v159 = v118;
    NSAppendPrintF_safe(&v159, "%s", "    gapa                  Set GAPA flags: deviceID <UUID/MAC> flags <flags> mask <mask>\n");
    v119 = v159;

    v158 = v119;
    NSAppendPrintF_safe(&v158, "%s", "    hciUnlimited          Enables/disables unlimited file size HCI tracing.\n");
    v120 = v158;

    v157 = v120;
    NSAppendPrintF_safe(&v157, "%s", "    help                  Show this help menu.\n");
    v121 = v157;

    v156 = v121;
    NSAppendPrintF_safe(&v156, "%s", "    LoD-connected         Launch-on-demand connection: deviceID <UUID> serviceUUIDs UUID1,UUID2,etc.\n");
    v122 = v156;

    v155 = v122;
    NSAppendPrintF_safe(&v155, "%s", "    logRawAudio           Enables/disables HCI audio tracing.\n");
    v123 = v155;

    v154 = v123;
    NSAppendPrintF_safe(&v154, "%s", "    mp-error <ID> <error> Simulate Magic Pairing error 1 or 7. deviceID <UUID> status <Int>\n");
    v124 = v154;

    v153 = v124;
    NSAppendPrintF_safe(&v153, "%s", "    mp-keys-reset <ID>    Magic Pairing keys reset to initial keys from current account keys. deviceID <UUID> \n");
    v125 = v153;

    v152 = v125;
    NSAppendPrintF_safe(&v152, "%s", "    timeline              Enables/disables timeline logging.\n");
    v126 = v152;

    v151 = v126;
    NSAppendPrintF_safe(&v151, "%s", "    tipiChanged           Simulate Tipi change.\n");
    v127 = v151;

    v150 = v127;
    NSAppendPrintF_safe(&v150, "%s", "    wifiCritical          Override WiFi critical on/off.\n");
    v128 = v150;

    v149 = v128;
    NSAppendPrintF_safe(&v149, "%s", "    writeStackshot        Trigger bluetoothd stackshot manually.\n");
    v129 = v149;

    v148 = v129;
    NSAppendPrintF_safe(&v148, "%s", "    restart               Trigger bluetoothd restart manually.\n");
    v130 = v148;

    v147 = v130;
    NSAppendPrintF_safe(&v147, "%s", "    HostAwakeVSC          Trigger Host Awake VSC for BD_VSC_REMOTE_AP_WRITE_LOCAL_STATE.\n");
    v131 = v147;

    v146 = v131;
    NSAppendPrintF_safe(&v146, "%s", "    HostSleptVSC          Trigger Host Slept VSC for BD_VSC_REMOTE_AP_WRITE_LOCAL_STATE.\n");
    v7 = v146;

    goto LABEL_86;
  }

  v7 = CUPrintPID();
  v8 = CBErrorF(4294960591, "Unsupported diag command: '%s', from %@", string, v7);
  v9 = v232[5];
  v232[5] = v8;

LABEL_94:
LABEL_95:
  (v143[2])(v143);

  _Block_object_dispose(&v231, 8);
}

- (void)_xpcDiagnosticAdvertiser
{
  testAdvertiser = [(CBDaemonServer *)self->_daemon testAdvertiser];
  if (testAdvertiser)
  {
    v6 = testAdvertiser;
    v12 = testAdvertiser;
    if (dword_100B510A0 <= 30)
    {
      if (dword_100B510A0 != -1 || (testAdvertiser = _LogCategory_Initialize(), v6 = v12, testAdvertiser))
      {
        sub_10080DC08(testAdvertiser, v6, v5);
        v6 = v12;
      }
    }

    [v6 invalidate];
    [(CBDaemonServer *)self->_daemon setTestAdvertiser:0];
  }

  else
  {
    if (dword_100B510A0 <= 30)
    {
      if (dword_100B510A0 != -1 || (testAdvertiser = _LogCategory_Initialize(), testAdvertiser))
      {
        sub_10080DC24(testAdvertiser, v4, v5);
      }
    }

    v7 = objc_alloc_init(CBAdvertiserDaemon);
    [(CBDaemonServer *)self->_daemon setTestAdvertiser:v7];
    [(CBAdvertiserDaemon *)v7 setDispatchQueue:self->_dispatchQueue];
    [(CBAdvertiserDaemon *)v7 setSpatialInteractionFlags:105];
    [(CBAdvertiserDaemon *)v7 setSpatialInteractionConfigFlags:1];
    v8 = NSRandomData();
    v16 = v8;
    v9 = [NSArray arrayWithObjects:&v16 count:1];
    [(CBAdvertiserDaemon *)v7 setSpatialInteractionIdentifiers:v9];

    v10 = NSRandomData();
    [(CBAdvertiserDaemon *)v7 setSpatialInteractionUWBConfigData:v10];

    v11 = NSRandomData();
    [(CBAdvertiserDaemon *)v7 setSpatialInteractionPresenceConfigData:v11];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100142EF0;
    v15[3] = &unk_100ADF5B8;
    v15[4] = v7;
    [(CBAdvertiserDaemon *)v7 setInvalidationHandler:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100142F4C;
    v14[3] = &unk_100ADF740;
    v14[4] = v7;
    v14[5] = self;
    [(CBAdvertiserDaemon *)v7 activateWithCompletion:v14];
  }
}

- (void)_xpcDiagnosticAssertion
{
  testAssertion = [(CBDaemonServer *)self->_daemon testAssertion];
  if (testAssertion)
  {
    v6 = testAssertion;
    v8 = testAssertion;
    if (dword_100B510A0 <= 30)
    {
      if (dword_100B510A0 != -1 || (testAssertion = _LogCategory_Initialize(), v6 = v8, testAssertion))
      {
        sub_10080DD20(testAssertion, v6, v5);
        v6 = v8;
      }
    }

    [v6 invalidate];
    [(CBDaemonServer *)self->_daemon setTestAssertion:0];
  }

  else
  {
    if (dword_100B510A0 <= 30)
    {
      if (dword_100B510A0 != -1 || (testAssertion = _LogCategory_Initialize(), testAssertion))
      {
        sub_10080DD3C(testAssertion, v4, v5);
      }
    }

    v7 = objc_alloc_init(CBController);
    [(CBDaemonServer *)self->_daemon setTestAssertion:v7];
    [v7 setDispatchQueue:self->_dispatchQueue];
    [v7 setLabel:@"CBDiags"];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001431BC;
    v9[3] = &unk_100ADF740;
    v9[4] = v7;
    v9[5] = self;
    [v7 activateAssertionWithFlags:1 completion:v9];
  }
}

- (void)_xpcDiagnosticDiscovery
{
  testDiscovery = [(CBDaemonServer *)self->_daemon testDiscovery];
  if (testDiscovery)
  {
    v6 = testDiscovery;
    v8 = testDiscovery;
    if (dword_100B510A0 <= 30)
    {
      if (dword_100B510A0 != -1 || (testDiscovery = _LogCategory_Initialize(), v6 = v8, testDiscovery))
      {
        sub_10080DDF8(testDiscovery, v6, v5);
        v6 = v8;
      }
    }

    [v6 invalidate];
    [(CBDaemonServer *)self->_daemon setTestDiscovery:0];
  }

  else
  {
    if (dword_100B510A0 <= 30)
    {
      if (dword_100B510A0 != -1 || (testDiscovery = _LogCategory_Initialize(), testDiscovery))
      {
        sub_10080DE14(testDiscovery, v4, v5);
      }
    }

    v7 = objc_alloc_init(CBDiscovery);
    [(CBDaemonServer *)self->_daemon setTestDiscovery:v7];
    [v7 setDiscoveryFlags:16];
    [v7 setDispatchQueue:self->_dispatchQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100143518;
    v13[3] = &unk_100ADF718;
    v13[4] = v7;
    v13[5] = self;
    [v7 setDeviceFoundHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001435B4;
    v12[3] = &unk_100ADF718;
    v12[4] = v7;
    v12[5] = self;
    [v7 setDeviceLostHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100143650;
    v11[3] = &unk_100ADF5B8;
    v11[4] = v7;
    [v7 setInvalidationHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001436AC;
    v10[3] = &unk_100ADF740;
    v10[4] = v7;
    v10[5] = self;
    [v7 activateWithCompletion:v10];
  }
}

- (void)_xpcDiagnosticLog:(id)log
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100042234;
  v23 = sub_1000425AC;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100143A98;
  v16[3] = &unk_100AE0380;
  v18 = &v19;
  v16[4] = self;
  logCopy = log;
  v17 = logCopy;
  v5 = objc_retainBlock(v16);
  v6 = (v20 + 5);
  obj = v20[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if ((v7 & 1) == 0)
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v20[5] request:logCopy];
    goto LABEL_8;
  }

  v8 = xpc_dictionary_get_value(logCopy, "parm");
  if (!v8)
  {
    goto LABEL_6;
  }

  if (xpc_get_type(logCopy) != &_xpc_type_dictionary)
  {
    v13 = CBErrorF(4294960591, "Non-dict input");
LABEL_12:
    v14 = v20[5];
    v20[5] = v13;

    goto LABEL_7;
  }

  if (xpc_dictionary_get_string(v8, "iStr"))
  {
    v9 = LogControl();
    if (v9)
    {
      v13 = CBErrorF(v9, "LogControl failed");
      goto LABEL_12;
    }
  }

LABEL_6:
  v10 = LogShow();
  v11 = CBErrorF(v10, "LogShow failed");
  v12 = v20[5];
  v20[5] = v11;

LABEL_7:
LABEL_8:
  (v5[2])(v5);

  _Block_object_dispose(&v19, 8);
}

- (void)_xpcDiagnosticShow:(id)show
{
  showCopy = show;
  v29 = 0;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v29];
  v6 = v29;
  if ((v5 & 1) == 0)
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:showCopy];
    goto LABEL_20;
  }

  v7 = xpc_dictionary_get_value(showCopy, "parm");
  if (!v7)
  {
    goto LABEL_10;
  }

  if (xpc_get_type(showCopy) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v7, "iStr");
    xpc_dictionary_get_int64(v7, "vrbL");
    if (string)
    {
      if (stricmp_prefix())
      {
        v9 = CBErrorF(4294960591, "Unknown show type: '%s'", string);

        if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080DF90(v9);
        }

        [(CBDaemonXPCConnection *)self _xpcSendReplyError:v9 request:showCopy];
        goto LABEL_19;
      }

      identityArray = [(CBDaemonServer *)self->_daemon identityArray];
      v27 = 0;
      NSAppendPrintF_safe(&v27, "-- Identities: %d total --\n", [identityArray count]);
      v11 = v27;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = identityArray;
      v16 = [v10 countByEnumeratingWithState:&v23 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          v19 = 0;
          v20 = v11;
          do
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v10);
            }

            v21 = *(*(&v23 + 1) + 8 * v19);
            v22 = v20;
            NSAppendPrintF_safe(&v22, "%@\n", v21);
            v11 = v22;

            v19 = v19 + 1;
            v20 = v11;
          }

          while (v17 != v19);
          v17 = [v10 countByEnumeratingWithState:&v23 objects:v30 count:16];
        }

        while (v17);
      }

LABEL_11:
      v12 = CUXPCDictionaryCreateReply();
      if (v12)
      {
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = @"None\n";
        }

        uTF8String = [(__CFString *)v13 UTF8String];
        if (uTF8String)
        {
          xpc_dictionary_set_string(v12, "oStr", uTF8String);
        }

        [(CBDaemonXPCConnection *)self _xpcSendReply:v12];
      }

      else
      {
        sub_10080DFE4();
      }

      v9 = v6;
      goto LABEL_19;
    }

LABEL_10:
    v28 = 0;
    v10 = CUDescriptionWithLevel();
    NSAppendPrintF_safe(&v28, "%@", v10);
    v11 = v28;
    goto LABEL_11;
  }

  v9 = CBErrorF(4294960591, "Non-dict input params");

LABEL_19:
  v6 = v9;
LABEL_20:
}

- (void)_xpcDiagnosticTipiChanged
{
  v11 = objc_alloc_init(CBDevice);
  v2 = NSRandomData();
  [v11 setBtAddressData:v2];

  v3 = objc_alloc_init(NSMutableArray);
  for (i = 0; i != 3; ++i)
  {
    v5 = objc_alloc_init(CBDevice);
    v6 = NSRandomData();
    [v5 setBtAddressData:v6];

    if (i == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    if (i == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    if (i)
    {
      v9 = v7;
    }

    else
    {
      v9 = 1;
    }

    [v5 setTipiConnectionStatus:v9];
    [v5 setTipiState:v8];
    [v3 addObject:v5];
  }

  [v11 setTipiDevices:v3];
  if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080E04C(v11);
  }

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"com.apple.bluetooth.TipiChanged" object:v11 userInfo:0];
}

- (void)_xpcSetLowPowerMode:(id)mode
{
  modeCopy = mode;
  v20 = 0;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v20];
  v6 = v20;
  if (v5)
  {
    int64 = xpc_dictionary_get_int64(modeCopy, "ctrP");
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080E08C(int64, int64);
    }

    if (int64 == 3)
    {
      v19 = v6;
      v8 = [(CBDaemonXPCConnection *)self _entitledSoftwareUpdateAndReturnError:&v19];
      v9 = v19;

      if ((v8 & 1) == 0)
      {
        [(CBDaemonXPCConnection *)self _xpcSendReplyError:v9 request:modeCopy];
        v6 = v9;
        goto LABEL_10;
      }

      v18 = 0;
      objc_opt_class();
      v17 = v9;
      CUXPCDecodeObject();
      v10 = v9;

      v13 = NSErrorNestedF();

      v6 = v13;
      v12 = 0;
    }

    else
    {
      stackController = [(CBDaemonServer *)self->_daemon stackController];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100144470;
      v14[3] = &unk_100AE2168;
      v16 = int64;
      v14[4] = self;
      v15 = modeCopy;
      [stackController setLowPowerModeWithReason:int64 completionHandler:v14];

      v12 = v15;
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:modeCopy];
  }

LABEL_10:
}

- (void)_xpcGetPowerState:(id)state
{
  v9[0] = 0;
  stateCopy = state;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:v9];
  v6 = v9[0];
  if (v5)
  {
    v7 = CUXPCDictionaryCreateReply();

    if (v7)
    {
      _powerStateForClient = [(CBDaemonXPCConnection *)self _powerStateForClient];
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080E3D0(_powerStateForClient);
      }

      xpc_dictionary_set_int64(v7, "pwrS", _powerStateForClient);
      [(CBDaemonXPCConnection *)self _xpcSendReply:v7];
    }

    else
    {
      sub_10080E430();
      v7 = v9[1];
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:stateCopy];
    v7 = stateCopy;
  }
}

- (void)_xpcSetPowerState:(id)state
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100042234;
  v22 = sub_1000425AC;
  v23 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100144948;
  v15[3] = &unk_100AE0380;
  v17 = &v18;
  v15[4] = self;
  stateCopy = state;
  v16 = stateCopy;
  v5 = objc_retainBlock(v15);
  v6 = (v19 + 5);
  obj = v19[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    int64 = xpc_dictionary_get_int64(stateCopy, "pwrS");
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      if (int64 > 0xA)
      {
        v9 = "?";
      }

      else
      {
        v9 = off_100AE2310[int64];
      }

      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcSetPowerState:]", 30, "SetPowerState: %s", v9);
    }

    stackController = [(CBDaemonServer *)self->_daemon stackController];
    v11 = (v19 + 5);
    v13 = v19[5];
    [stackController setPowerState:int64 error:&v13];
    objc_storeStrong(v11, v13);

    if (!v19[5])
    {
      v12 = CUXPCDictionaryCreateReply();
      if (v12)
      {
        [(CBDaemonXPCConnection *)self _xpcSendReply:v12];
      }

      else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcSetPowerState:]", 90, "### SetPowerState create reply failed");
      }
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v18, 8);
}

- (void)_xpcReadPrefs:(id)prefs
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001450A4;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  prefsCopy = prefs;
  v15 = prefsCopy;
  v9 = objc_retainBlock(v14);
  v4 = v18;
  obj = v18[5];
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v4 + 5, obj);
  if (v5)
  {
    v6 = v18 + 5;
    v11 = v18[5];
    v12 = 0;
    CUXPCDecodeNSArrayOfNSString();
    objc_storeStrong(v6, v11);
    if (!v18[5])
    {
      v7 = CBErrorF(4294960591, "No pref keys");
      v8 = v18[5];
      v18[5] = v7;
    }
  }

  (v9[2])(v9);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcWritePref:(id)pref
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100042234;
  v20 = sub_1000425AC;
  v21 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001455EC;
  v13[3] = &unk_100AE0380;
  v15 = &v16;
  v13[4] = self;
  prefCopy = pref;
  v14 = prefCopy;
  v5 = objc_retainBlock(v13);
  v6 = v17;
  obj = v17[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v8 = v17 + 5;
    v11 = v17[5];
    CUXPCDecodeNSString();
    objc_storeStrong(v8, v11);
    if (!v17[5])
    {
      v9 = CBErrorF(4294960591, "No pref key");
      v10 = v17[5];
      v17[5] = v9;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v16, 8);
}

- (void)_xpcSendRelayMessage:(id)message
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100145BE0;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  messageCopy = message;
  v15 = messageCopy;
  v5 = objc_retainBlock(v14);
  v6 = v18;
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v12 = 0;
    objc_opt_class();
    v8 = v18;
    v11 = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v8 + 5, v11);
    v9 = NSErrorNestedF();
    v10 = v18[5];
    v18[5] = v9;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcSendSmartRoutingInformation:(id)information
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10014607C;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  informationCopy = information;
  v15 = informationCopy;
  v5 = objc_retainBlock(v14);
  v6 = v18;
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v12 = 0;
    objc_opt_class();
    v8 = v18;
    v11 = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v8 + 5, v11);
    v9 = NSErrorNestedF();
    v10 = v18[5];
    v18[5] = v9;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcSendAudioAccessoryEventMessage:(id)message
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001465D4;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  messageCopy = message;
  v15 = messageCopy;
  v5 = objc_retainBlock(v14);
  v6 = (v18 + 5);
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v12 = 0;
    objc_opt_class();
    v8 = (v18 + 5);
    v11 = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v8, v11);
    v9 = NSErrorNestedF();
    v10 = v18[5];
    v18[5] = v9;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcSendAudioAccessoryConfigMessage:(id)message
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001469E8;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  messageCopy = message;
  v15 = messageCopy;
  v5 = objc_retainBlock(v14);
  v6 = (v18 + 5);
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v12 = 0;
    objc_opt_class();
    v8 = (v18 + 5);
    v11 = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v8, v11);
    v9 = NSErrorNestedF();
    v10 = v18[5];
    v18[5] = v9;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcSendConversationDetectMessage:(id)message
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100146E84;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  messageCopy = message;
  v15 = messageCopy;
  v5 = objc_retainBlock(v14);
  v6 = v18;
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v12 = 0;
    objc_opt_class();
    v8 = v18;
    v11 = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v8 + 5, v11);
    v9 = NSErrorNestedF();
    v10 = v18[5];
    v18[5] = v9;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcResetCBExtension:(id)extension
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10014725C;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  extensionCopy = extension;
  v15 = extensionCopy;
  v5 = objc_retainBlock(v14);
  v6 = (v18 + 5);
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = (v18 + 5);
    v11 = v18[5];
    v12 = 0;
    CUXPCDecodeNSString();
    objc_storeStrong(v8, v11);
    if (!v18[5])
    {
      v9 = CBErrorF(4294960591, "No extensionID");
      v10 = v18[5];
      v18[5] = v9;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcUpdateIdentities:(id)identities
{
  identitiesCopy = identities;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100042234;
  v18 = sub_1000425AC;
  v19 = 0;
  obj = 0;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(&v19, obj);
  if (v5)
  {
    v6 = xpc_dictionary_get_array(identitiesCopy, "idtA");
    if (v6)
    {
      v7 = objc_alloc_init(NSMutableArray);
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_10014763C;
      applier[3] = &unk_100AE2190;
      applier[4] = v7;
      applier[5] = &v14;
      xpc_array_apply(v6, applier);
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B510A0, "-[CBDaemonXPCConnection _xpcUpdateIdentities:]", 30, "UpdateIdentities: %d total", [v7 count]);
      }

      [(CBDaemonServer *)self->_daemon updateIdentities:v7];
      v11 = CUXPCDictionaryCreateReply();
      if (v11)
      {
        [(CBDaemonXPCConnection *)self _xpcSendReply:v11];
      }

      else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcUpdateIdentities:]", 90, "### UpdateIdentities create reply failed");
      }
    }

    else
    {
      v8 = CBErrorF(4294960591, "No identities");
      v9 = v15[5];
      v15[5] = v8;

      if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        v10 = CUPrintNSError();
        LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcUpdateIdentities:]", 90, "### UpdateIdentities failed: %@", v10);
      }

      [(CBDaemonXPCConnection *)self _xpcSendReplyError:v15[5] request:identitiesCopy];
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v15[5] request:identitiesCopy];
  }

  _Block_object_dispose(&v14, 8);
}

- (void)_xpcCBDiscoveryActivate:(id)activate
{
  activateCopy = activate;
  v15 = 0;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v15];
  v6 = v15;
  if ((v5 & 1) == 0)
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:activateCopy];
    goto LABEL_14;
  }

  v14 = v6;
  v7 = [[CBDiscovery alloc] initWithXPCObject:activateCopy error:&v14];
  v8 = v14;

  if (!v7)
  {
    if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080E53C(v8);
    }

    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v8 request:activateCopy];
    goto LABEL_13;
  }

  softwareUpdatePayloads = [v7 softwareUpdatePayloads];
  v10 = [softwareUpdatePayloads count];

  if (!v10)
  {
    goto LABEL_6;
  }

  v13 = v8;
  v11 = [(CBDaemonXPCConnection *)self _entitledSoftwareUpdateAndReturnError:&v13];
  v12 = v13;

  if (v11)
  {
    v8 = v12;
LABEL_6:
    [v7 setAppID:self->_appID];
    if (([v7 discoveryFlags] & 0x400000000000) != 0)
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryActivateWHB:activateCopy discovery:v7];
    }

    else
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryActivateLocal:activateCopy discovery:v7];
    }

    goto LABEL_13;
  }

  [(CBDaemonXPCConnection *)self _xpcSendReplyError:v12 request:activateCopy];
  v8 = v12;
LABEL_13:

  v6 = v8;
LABEL_14:
}

- (void)_xpcCBDiscoveryActivateLocal:(id)local discovery:(id)discovery
{
  localCopy = local;
  discoveryCopy = discovery;
  objc_storeStrong(&self->_activatedDiscovery, discovery);
  if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080E590(self);
  }

  v8 = +[CBMetricsDaemon sharedCBMetricsDaemon];
  [v8 reportCBDiscovery:discoveryCopy daemonCnx:self action:@"strt"];

  [(CBDaemonServer *)self->_daemon scheduleDiscoveryUpdateImmediate:1];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100147C78;
  v35[3] = &unk_100ADF590;
  v35[4] = self;
  v9 = discoveryCopy;
  v36 = v9;
  [v9 setBluetoothStateChangedHandler:v35];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100147CEC;
  v33[3] = &unk_100ADF718;
  v33[4] = self;
  v10 = v9;
  v34 = v10;
  [v10 setDeviceFoundHandler:v33];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100147D10;
  v31[3] = &unk_100ADF718;
  v31[4] = self;
  v11 = v10;
  v32 = v11;
  [v11 setDeviceLostHandler:v31];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100147D34;
  v29[3] = &unk_100AE0158;
  v29[4] = self;
  v12 = v11;
  v30 = v12;
  [v12 setDevicesBufferedHandler:v29];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100147D58;
  v27[3] = &unk_100ADF590;
  v27[4] = self;
  v13 = v12;
  v28 = v13;
  [v13 setSystemOverrideHandler:v27];
  v14 = CUXPCDictionaryCreateReply();
  if (v14)
  {
    xpc_dictionary_set_int64(v14, "pwrS", [(CBDaemonXPCConnection *)self _powerStateForClient]);
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_100042234;
    v25 = sub_1000425AC;
    v26 = 0;
    deviceMap = [(CBDaemonServer *)self->_daemon deviceMap];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100147D78;
    v17[3] = &unk_100AE0840;
    v18 = v13;
    selfCopy = self;
    v20 = &v21;
    [deviceMap enumerateKeysAndObjectsUsingBlock:v17];

    v16 = v22[5];
    if (v16)
    {
      xpc_dictionary_set_value(v14, "devA", v16);
    }

    [(CBDaemonXPCConnection *)self _xpcSendReply:v14];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    sub_10080E5F8();
  }
}

- (void)_xpcCBDiscoveryActivateWHB:(id)b discovery:(id)discovery
{
  bCopy = b;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001481DC;
  v28[3] = &unk_100ADF590;
  v28[4] = self;
  discoveryCopy = discovery;
  v29 = discoveryCopy;
  [discoveryCopy setBluetoothStateChangedHandler:v28];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100148250;
  v26[3] = &unk_100ADF718;
  v26[4] = self;
  v8 = discoveryCopy;
  v27 = v8;
  [v8 setDeviceFoundHandler:v26];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100148274;
  v24[3] = &unk_100ADF718;
  v24[4] = self;
  v9 = v8;
  v25 = v9;
  [v9 setDeviceLostHandler:v24];
  objc_storeStrong(&self->_activatedDiscoveryWHB, discovery);
  if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080E660(self);
  }

  v10 = +[CBMetricsDaemon sharedCBMetricsDaemon];
  [v10 reportCBDiscovery:v9 daemonCnx:self action:@"strt"];

  [(CBDaemonServer *)self->_daemon scheduleDiscoveryUpdateImmediate:0];
  v11 = CUXPCDictionaryCreateReply();
  if (v11)
  {
    xpc_dictionary_set_int64(v11, "pwrS", [(CBDaemonXPCConnection *)self _powerStateForClient]);
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100042234;
    v22 = sub_1000425AC;
    v23 = 0;
    whbDeviceMap = [(CBDaemonServer *)self->_daemon whbDeviceMap];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100148298;
    v14[3] = &unk_100AE0840;
    v15 = v9;
    selfCopy = self;
    v17 = &v18;
    [whbDeviceMap enumerateKeysAndObjectsUsingBlock:v14];

    v13 = v19[5];
    if (v13)
    {
      xpc_dictionary_set_value(v11, "devA", v13);
    }

    [(CBDaemonXPCConnection *)self _xpcSendReply:v11];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    sub_10080E6B8();
  }
}

- (void)_xpcCBDiscoveryFinish:(id)finish
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100042234;
  v27 = sub_1000425AC;
  v28 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100148768;
  v20[3] = &unk_100AE0380;
  v22 = &v23;
  v20[4] = self;
  finishCopy = finish;
  v21 = finishCopy;
  v5 = objc_retainBlock(v20);
  v6 = v24;
  obj = v24[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    activatedDiscovery = self->_activatedDiscovery;
    if (activatedDiscovery)
    {
      v9 = activatedDiscovery;
    }

    else
    {
      v9 = self->_activatedDiscoveryWHB;
      if (!v9)
      {
        v15 = CBErrorF(4294960551, "No discovery");
        v9 = v24[5];
        v24[5] = v15;
LABEL_19:

        goto LABEL_20;
      }
    }

    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      clientID = [(CBDiscovery *)v9 clientID];
      v11 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBDiscoveryFinish:]", 30, "Discovery Finish start: CID 0x%X, from %@", clientID, v11);
    }

    stackBLEScanner = [(CBDaemonServer *)self->_daemon stackBLEScanner];
    if (stackBLEScanner)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100148844;
      v16[3] = &unk_100AE21B8;
      v16[4] = v9;
      v17 = finishCopy;
      selfCopy = self;
      [stackBLEScanner finishDiscovery:v9 completionHandler:v16];
    }

    else
    {
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBDiscoveryFinish:]", 30, "Discovery Finish completed: CID 0x%X, not scanning", [(CBDiscovery *)v9 clientID]);
      }

      v13 = CUXPCDictionaryCreateReply();
      if (v13)
      {
        v14 = objc_alloc_init(CBDiscoverySummary);
        CUXPCEncodeObject();
        [(CBDaemonXPCConnection *)self _xpcSendReply:v13];
      }

      else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBDiscoveryFinish:]", 90, "### Discovery Finish create reply failed");
      }
    }

    goto LABEL_19;
  }

LABEL_20:
  (v5[2])(v5);

  _Block_object_dispose(&v23, 8);
}

- (void)_xpcCBDiscoveryUpdate:(id)update
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100042234;
  v33 = sub_1000425AC;
  v34 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100148C88;
  v26[3] = &unk_100AE0380;
  v28 = &v29;
  v26[4] = self;
  updateCopy = update;
  v27 = updateCopy;
  v5 = objc_retainBlock(v26);
  v6 = (v30 + 5);
  obj = v30[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = [CBDiscovery alloc];
    v9 = (v30 + 5);
    v24 = v30[5];
    v10 = [v8 initWithXPCObject:updateCopy error:&v24];
    objc_storeStrong(v9, v24);
    if (v10)
    {
      softwareUpdatePayloads = [v10 softwareUpdatePayloads];
      v12 = [softwareUpdatePayloads count];

      if (v12)
      {
        v13 = (v30 + 5);
        v23 = v30[5];
        v14 = [(CBDaemonXPCConnection *)self _entitledSoftwareUpdateAndReturnError:&v23];
        objc_storeStrong(v13, v23);
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      activatedDiscovery = self->_activatedDiscovery;
      if (activatedDiscovery)
      {
        v16 = activatedDiscovery;
        goto LABEL_8;
      }

      v16 = self->_activatedDiscoveryWHB;
      if (v16)
      {
LABEL_8:
        v17 = [(CBDiscovery *)v16 updateWithCBDiscovery:v10];
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v18 = CUPrintPID();
          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBDiscoveryUpdate:]", 30, "Discovery Update: %@, from %@", v16, v18);
        }

        if (v17)
        {
          v19 = +[CBMetricsDaemon sharedCBMetricsDaemon];
          [v19 reportCBDiscovery:v16 daemonCnx:self action:@"updt"];

          [(CBDaemonServer *)self->_daemon scheduleDiscoveryUpdateImmediate:0];
        }

        goto LABEL_14;
      }

      v21 = CBErrorF(4294960551, "No discovery");
      v22 = v30[5];
      v30[5] = v21;

      v16 = 0;
    }

    else
    {
      v20 = CBErrorF(4294960591, "Decode failed");
      v16 = v30[5];
      v30[5] = v20;
    }

LABEL_14:

LABEL_15:
  }

  (v5[2])(v5);

  _Block_object_dispose(&v29, 8);
}

- (void)_xpcCBDiscoveryClearDuplicateFilterCache:(id)cache
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100042234;
  v20 = sub_1000425AC;
  v21 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100148F38;
  v13[3] = &unk_100AE0380;
  v15 = &v16;
  v13[4] = self;
  cacheCopy = cache;
  v14 = cacheCopy;
  v5 = objc_retainBlock(v13);
  v6 = (v17 + 5);
  obj = v17[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    activatedDiscovery = self->_activatedDiscovery;
    if (activatedDiscovery)
    {
      v9 = activatedDiscovery;
    }

    else
    {
      v9 = self->_activatedDiscoveryWHB;
      if (!v9)
      {
        v10 = CBErrorF(4294960551, "No discovery");
        v11 = v17[5];
        v17[5] = v10;

        v9 = 0;
        goto LABEL_6;
      }
    }

    [(CBDaemonServer *)self->_daemon clearDuplicateFilterCache:v9];
LABEL_6:
  }

  (v5[2])(v5);

  _Block_object_dispose(&v16, 8);
}

- (void)_xpcCBDiscoveryGetDevices:(id)devices
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100042234;
  v23 = sub_1000425AC;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100149328;
  v16[3] = &unk_100AE0380;
  v18 = &v19;
  v16[4] = self;
  devicesCopy = devices;
  v17 = devicesCopy;
  v5 = objc_retainBlock(v16);
  v6 = (v20 + 5);
  obj = v20[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    uint64 = xpc_dictionary_get_uint64(devicesCopy, "dsFl");
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v9 = CBDiscoveryFlagsToString();
      v10 = CUPrintPID();
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBDiscoveryGetDevices:]", 30, "CBDiscoveryGetDevices: %@, from %@", v9, v10);
    }

    v11 = CUXPCDictionaryCreateReply();
    if (v11)
    {
      v12 = xpc_array_create(0, 0);
      deviceMap = [(CBDaemonServer *)self->_daemon deviceMap];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100149404;
      v14[3] = &unk_100AE21E0;
      v14[4] = v12;
      v14[5] = uint64;
      [deviceMap enumerateKeysAndObjectsUsingBlock:v14];

      xpc_dictionary_set_value(v11, "devA", v12);
      [(CBDaemonXPCConnection *)self _xpcSendReply:v11];
    }

    else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBDiscoveryGetDevices:]", 90, "### CBDiscoveryGetDevices create reply failed");
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v19, 8);
}

- (void)_xpcCBDiscoveryGetDevicesMatchingProperties:(id)properties
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100042234;
  v40 = sub_1000425AC;
  v41 = 0;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001498D0;
  v33[3] = &unk_100AE0380;
  v35 = &v36;
  v33[4] = self;
  propertiesCopy = properties;
  v34 = propertiesCopy;
  v5 = objc_retainBlock(v33);
  v6 = v37;
  obj = v37[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v8 = xpc_dictionary_get_value(propertiesCopy, "devi");
    if (v8)
    {
      v9 = [CBDevice alloc];
      v10 = v37;
      v31 = v37[5];
      v11 = [v9 initWithXPCObject:v8 error:&v31];
      objc_storeStrong(v10 + 5, v31);
      v12 = v37 + 5;
      if (!v37[5])
      {
        v30 = 0;
        v29 = 0;
        CUXPCDecodeBool();
        objc_storeStrong(v12, 0);
        if (!v37[5])
        {
          v25 = 0;
          v26 = &v25;
          v27 = 0x2020000000;
          v28 = 0;
          v13 = xpc_array_create(0, 0);
          identifier = [v11 identifier];

          if (identifier)
          {
            deviceMap = [(CBDaemonServer *)self->_daemon deviceMap];
            identifier2 = [v11 identifier];
            v17 = [deviceMap objectForKeyedSubscript:identifier2];

            if (v17)
            {
              v18 = xpc_dictionary_create(0, 0, 0);
              [v17 encodeWithXPCObject:v18];
              xpc_array_append_value(v13, v18);
              *(v26 + 24) = 1;
            }
          }

          if ((v26[3] & 1) == 0)
          {
            deviceMap2 = [(CBDaemonServer *)self->_daemon deviceMap];
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_1001499AC;
            v23[3] = &unk_100AE2208;
            v24 = v30;
            v23[4] = v11;
            v23[5] = v13;
            v23[6] = &v25;
            [deviceMap2 enumerateKeysAndObjectsUsingBlock:v23];
          }

          v20 = CUXPCDictionaryCreateReply();
          v21 = v20;
          if (v20)
          {
            xpc_dictionary_set_value(v20, "devA", v13);
            [(CBDaemonXPCConnection *)self _xpcSendReply:v21];
          }

          else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBDiscoveryGetDevicesMatchingProperties:]", 90, "### GetDevicesMatchingProperties create reply failed");
          }

          _Block_object_dispose(&v25, 8);
        }
      }
    }

    else
    {
      v22 = CBErrorF(4294960591, "Missing device");
      v11 = v37[5];
      v37[5] = v22;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v36, 8);
}

- (void)_xpcCBDiscoveryInjectAOPBufAdv:(id)adv
{
  v4 = xpc_dictionary_get_array(adv, "rAdv");
  v7 = v4;
  if (v4)
  {
    count = xpc_array_get_count(v4);
    if (count)
    {
      v11 = count;
      v12 = objc_alloc_init(NSMutableArray);
      for (i = 0; i != v11; ++i)
      {
        length = 0;
        data = xpc_array_get_data(v7, i, &length);
        if (length)
        {
          v15 = data;
          v16 = [NSData alloc];
          v17 = [v16 initWithBytes:v15 length:length];
          [v12 addObject:v17];
        }

        else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080E7C8(i);
        }
      }

      if ([v12 count])
      {
        if (dword_100B510A0 <= 40 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080E808(v12);
        }

        [(CBDaemonServer *)self->_daemon injectAOPBufAdv:v12];
      }

      else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080E848();
      }
    }

    else if (dword_100B510A0 <= 90)
    {
      if (dword_100B510A0 != -1 || (count = _LogCategory_Initialize(), count))
      {
        sub_10080E87C(count, v9, v10);
      }
    }
  }

  else if (dword_100B510A0 <= 90)
  {
    if (dword_100B510A0 != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      sub_10080E898(v4, v5, v6);
    }
  }
}

- (void)_xpcCBSpatialInteractionSessionActivate:(id)activate
{
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_100042234;
  v73 = sub_1000425AC;
  v74 = 0;
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10014A6C0;
  v66[3] = &unk_100AE0380;
  v68 = &v69;
  v66[4] = self;
  activateCopy = activate;
  v67 = activateCopy;
  v7 = objc_retainBlock(v66);
  v8 = v70;
  v65 = v70[5];
  v49 = v7;
  v9 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v65];
  objc_storeStrong(v8 + 5, v65);
  if (v9)
  {
    v10 = [CBSpatialInteractionSession alloc];
    v11 = v70;
    v64 = v70[5];
    v12 = [v10 initWithXPCObject:activateCopy error:&v64];
    objc_storeStrong(v11 + 5, v64);
    if (!v12)
    {
      v45 = CBErrorF(4294960591, "Decode failed");
      v46 = v70[5];
      v70[5] = v45;

LABEL_48:
      goto LABEL_49;
    }

    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10014A79C;
    v63[3] = &unk_100ADF590;
    v63[4] = v12;
    v63[5] = self;
    [v12 setAdvertisingAddressChangedHandler:v63];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10014A8C0;
    v62[3] = &unk_100AE2230;
    v62[4] = v12;
    v62[5] = self;
    [v12 setAopDataHandler:v62];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10014A8DC;
    v61[3] = &unk_100ADF590;
    v61[4] = v12;
    v61[5] = self;
    [v12 setBluetoothStateChangedHandler:v61];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10014A934;
    v60[3] = &unk_100ADF718;
    v60[4] = v12;
    v60[5] = self;
    [v12 setDeviceFoundHandler:v60];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10014A950;
    v59[3] = &unk_100ADF718;
    v59[4] = v12;
    v59[5] = self;
    [v12 setDeviceLostHandler:v59];
    v53 = objc_alloc_init(NSMutableDictionary);
    clientIrkData = [v12 clientIrkData];
    if (clientIrkData && ([v12 clientIrkData], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length") == 16))
    {
      clientIrkData2 = [v12 clientIrkData];
    }

    else
    {
      clientIrkData2 = NSRandomData();
      if (!clientIrkData)
      {
LABEL_8:

        [v12 setIrkData:clientIrkData2];
        [v53 setObject:clientIrkData2 forKeyedSubscript:&off_100B33660];
        clientIdentifierData = [v12 clientIdentifierData];
        if (clientIdentifierData && ([v12 clientIdentifierData], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "length") == 3))
        {
          clientIdentifierData2 = [v12 clientIdentifierData];
        }

        else
        {
          clientIdentifierData2 = NSRandomData();
          if (!clientIdentifierData)
          {
LABEL_13:

            [v12 setIdentifierData:clientIdentifierData2];
            [v53 setObject:clientIdentifierData2 forKeyedSubscript:&off_100B33678];
            uwbTokenFlags = [v12 uwbTokenFlags];
            if (uwbTokenFlags)
            {
              v16 = [NSNumber numberWithUnsignedInt:uwbTokenFlags];
              [v53 setObject:v16 forKeyedSubscript:&off_100B33690];
            }

            v58 = 0;
            Data = OPACKEncoderCreateData();
            if (Data)
            {
              [v12 setTokenData:Data];
              objc_storeStrong(&self->_activatedSpatialInteractionSession, v12);
              if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
              {
                v18 = CUPrintPID();
                LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBSpatialInteractionSessionActivate:]", 30, "Spatial Activate: %@, from %@", v12, v18);
              }

              v19 = objc_alloc_init(CBDiscovery);
              objc_storeStrong(&self->_activatedDiscovery, v19);
              [v19 setBleScanRate:{objc_msgSend(v12, "scanRate")}];
              [v19 setBleScanRateScreenOff:{objc_msgSend(v12, "scanRateScreenOff")}];
              [v19 setBleRSSIThresholdHint:{objc_msgSend(v12, "bleRSSIThresholdHint")}];
              [v19 setBleRSSIThresholdOrder:{objc_msgSend(v12, "bleRSSIThresholdOrder")}];
              [v19 setDiscoveryFlags:0x40000];
              filter = [v12 filter];
              [v19 setSpatialInteractionfilter:filter];

              if (([v12 controlFlags] & 0x1000) != 0)
              {
                v21 = [v19 discoveryFlags] | 0x2000000;
              }

              else
              {
                v21 = [v19 discoveryFlags] & 0xFFFFFFFFFDFFFFFFLL;
              }

              [v19 setDiscoveryFlags:v21];
              if (([v12 controlFlags] & 0x2000) != 0)
              {
                v22 = [v19 discoveryFlags] | 0x200000000;
              }

              else
              {
                v22 = [v19 discoveryFlags] & 0xFFFFFFFDFFFFFFFFLL;
              }

              [v19 setDiscoveryFlags:v22];
              if (([v12 controlFlags] & 0x10) != 0)
              {
                v23 = [v19 internalFlags] | 0x10;
              }

              else
              {
                v23 = [v19 internalFlags] & 0xFFFFFFEF;
              }

              [v19 setInternalFlags:v23];
              controlFlags = [v12 controlFlags];
              v25 = v19;
              discoveryTypesInternalPtr = [v19 discoveryTypesInternalPtr];
              if ((controlFlags & 0x8000) != 0)
              {
                v27 = discoveryTypesInternalPtr[4] | 0x80;
              }

              else
              {
                v27 = discoveryTypesInternalPtr[4] & 0x7F;
              }

              discoveryTypesInternalPtr[4] = v27;
              v57[0] = _NSConcreteStackBlock;
              v57[1] = 3221225472;
              v57[2] = sub_10014A96C;
              v57[3] = &unk_100ADF718;
              v57[4] = v19;
              v57[5] = self;
              [v19 setDeviceFoundHandler:v57];
              v56[0] = _NSConcreteStackBlock;
              v56[1] = 3221225472;
              v56[2] = sub_10014A98C;
              v56[3] = &unk_100ADF718;
              v56[4] = v19;
              v56[5] = self;
              [v19 setDeviceLostHandler:v56];
              v55[0] = _NSConcreteStackBlock;
              v55[1] = 3221225472;
              v55[2] = sub_10014A9B4;
              v55[3] = &unk_100ADF590;
              v55[4] = v19;
              v55[5] = self;
              [v19 setSystemOverrideHandler:v55];
              v28 = +[CBMetricsDaemon sharedCBMetricsDaemon];
              [v28 reportCBDiscovery:v19 daemonCnx:self action:@"strt"];

              [(CBDaemonServer *)self->_daemon scheduleSpatialUpdateImmediate:1];
              v48 = activateCopy;
              v29 = CUXPCDictionaryCreateReply();
              if (v29)
              {
                xpc_dictionary_set_int64(v29, "pwrS", [(CBDaemonXPCConnection *)self _powerStateForClient]);
                v50 = Data;
                supportsNCSecondaryAdvertisingInstance = [(CBDaemonServer *)self->_daemon supportsNCSecondaryAdvertisingInstance];
                daemon = self->_daemon;
                if (supportsNCSecondaryAdvertisingInstance)
                {
                  addressMonitor = [(CBDaemonServer *)daemon addressMonitor];
                  [addressMonitor nonConnectableSecondaryAddressData];
                }

                else
                {
                  addressMonitor = [(CBDaemonServer *)daemon addressMonitor];
                  [addressMonitor nonConnectableAddressData];
                }
                v33 = ;

                [v12 setAdvertisingAddressData:v33];
                if ([(CBDaemonServer *)self->_daemon supportsNCSecondaryAdvertisingInstance])
                {
                  v34 = "aaNC2";
                }

                else
                {
                  v34 = "aaNC";
                }

                if (v33)
                {
                  v35 = v33;
                  v36 = v33;
                  v37 = v29;
                  bytes = [v36 bytes];
                  v39 = [v36 length];
                  if (!bytes)
                  {
                    bytes = "";
                  }

                  xpc_dictionary_set_data(v37, v34, bytes, v39);
                }

                v40 = v50;
                v41 = v29;
                bytes2 = [v40 bytes];
                v43 = [v40 length];
                if (!bytes2)
                {
                  bytes2 = "";
                }

                xpc_dictionary_set_data(v41, "siTD", bytes2, v43);
                [(CBDaemonXPCConnection *)self _xpcSendReply:v41];
                self->_spatialActivateResponded = 1;
                deviceMap = [(CBDaemonServer *)self->_daemon deviceMap];
                v54[0] = _NSConcreteStackBlock;
                v54[1] = 3221225472;
                v54[2] = sub_10014AA64;
                v54[3] = &unk_100AE0290;
                v54[4] = self;
                [deviceMap enumerateKeysAndObjectsUsingBlock:v54];

                Data = v50;
              }

              else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBSpatialInteractionSessionActivate:]", 90, "### Spatial Activate create reply failed");
              }

              activateCopy = v48;
            }

            else
            {
              v47 = CBErrorF(v58, "Encode token failed");
              v19 = v70[5];
              v70[5] = v47;
            }

            v7 = v49;
            goto LABEL_48;
          }
        }

        goto LABEL_13;
      }
    }

    goto LABEL_8;
  }

LABEL_49:
  (v7[2])(v7);

  _Block_object_dispose(&v69, 8);
}

- (void)_xpcCBSpatialInteractionSessionUpdate:(id)update
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100042234;
  v30 = sub_1000425AC;
  v31 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10014AE58;
  v23[3] = &unk_100AE0380;
  v25 = &v26;
  v23[4] = self;
  updateCopy = update;
  v24 = updateCopy;
  v5 = objc_retainBlock(v23);
  v6 = (v27 + 5);
  obj = v27[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = [CBSpatialInteractionSession alloc];
    v9 = (v27 + 5);
    v21 = v27[5];
    v10 = [v8 initWithXPCObject:updateCopy error:&v21];
    objc_storeStrong(v9, v21);
    if (v10)
    {
      v11 = self->_activatedSpatialInteractionSession;
      v12 = v11;
      if (v11)
      {
        v13 = [(CBSpatialInteractionSession *)v11 updateWithSession:v10];
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v14 = CUPrintPID();
          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBSpatialInteractionSessionUpdate:]", 30, "Spatial Update: %@, from %@", v12, v14);
        }

        v15 = self->_activatedDiscovery;
        if (([(CBSpatialInteractionSession *)v12 controlFlags]& 0x1000) != 0)
        {
          v16 = [(CBDiscovery *)v15 discoveryFlags]| 0x2000000;
        }

        else
        {
          v16 = [(CBDiscovery *)v15 discoveryFlags]& 0xFFFFFFFFFDFFFFFFLL;
        }

        [(CBDiscovery *)v15 setDiscoveryFlags:v16];
        [(CBDiscovery *)self->_activatedDiscovery setBleScanRate:[(CBSpatialInteractionSession *)v12 scanRate]];
        [(CBDiscovery *)self->_activatedDiscovery setBleScanRateScreenOff:[(CBSpatialInteractionSession *)v12 scanRateScreenOff]];
        [(CBDiscovery *)self->_activatedDiscovery setBleRSSIThresholdHint:[(CBSpatialInteractionSession *)v12 bleRSSIThresholdHint]];
        [(CBDiscovery *)self->_activatedDiscovery setBleRSSIThresholdOrder:[(CBSpatialInteractionSession *)v12 bleRSSIThresholdOrder]];
        if (([(CBSpatialInteractionSession *)v12 controlFlags]& 0x10) != 0)
        {
          v17 = [(CBDiscovery *)v15 internalFlags]| 0x10;
        }

        else
        {
          v17 = [(CBDiscovery *)v15 internalFlags]& 0xFFFFFFEF;
        }

        [(CBDiscovery *)v15 setInternalFlags:v17];
        if (v13)
        {
          v18 = +[CBMetricsDaemon sharedCBMetricsDaemon];
          [v18 reportCBDiscovery:v15 daemonCnx:self action:@"updt"];

          [(CBDaemonServer *)self->_daemon scheduleSpatialUpdateImmediate:0];
        }
      }

      else
      {
        v20 = CBErrorF(4294960551, "No session");
        v15 = v27[5];
        v27[5] = v20;
      }
    }

    else
    {
      v19 = CBErrorF(4294960591, "Decode failed");
      v12 = v27[5];
      v27[5] = v19;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v26, 8);
}

- (void)_xpcCBSpatialInteractionSessionAddPeerToken:(id)token
{
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_100042234;
  v57 = sub_1000425AC;
  v58 = 0;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10014B4A4;
  v50[3] = &unk_100AE0380;
  v52 = &v53;
  v50[4] = self;
  tokenCopy = token;
  v51 = tokenCopy;
  v5 = objc_retainBlock(v50);
  v6 = v54;
  obj = v54[5];
  v42 = v5;
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v8 = v54;
    v48 = v54[5];
    v9 = [(CBDaemonXPCConnection *)self _spatialInteractionDecodePeerTokenRequest:tokenCopy error:&v48];
    objc_storeStrong(v8 + 5, v48);
    if (!v9)
    {
LABEL_36:

      v5 = v42;
      goto LABEL_37;
    }

    irkData = [v9 irkData];
    v11 = v54 + 5;
    v47 = v54[5];
    v59 = 0;
    v12 = CUXPCDecodeUInt64RangedEx();
    if (v12 == 6)
    {
      v13 = v59;
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(v11, v47);
    if (v12 == 5)
    {
LABEL_35:

      goto LABEL_36;
    }

    if (!v13)
    {
      v37 = CBErrorF(4294960591, "No peer ID");
      v41 = v54[5];
      v54[5] = v37;

      goto LABEL_35;
    }

    [v9 setPeerID:v13];
    v40 = self->_activatedSpatialInteractionSession;
    if (v40)
    {
      v14 = [(NSMutableArray *)self->_spatialPeers count];
      v43 = tokenCopy;
      v39 = v13;
      if (v14)
      {
        v15 = 0;
        v16 = 0;
        v17 = v14 - 1;
        do
        {
          v18 = objc_autoreleasePoolPush();
          v19 = [(NSMutableArray *)self->_spatialPeers objectAtIndexedSubscript:v16];
          irkData2 = [v19 irkData];
          v21 = [irkData2 isEqual:irkData];

          if (v21)
          {
            v22 = v19;

            [(NSMutableArray *)self->_spatialPeers setObject:v9 atIndexedSubscript:v16];
            v15 = v22;
          }

          objc_autoreleasePoolPop(v18);
          if (v17 == v16++)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21;
          }
        }

        while ((v24 & 1) == 0);
        tokenCopy = v43;
        if (v15)
        {
          peerID = [v15 peerID];
          spatialDeviceMapMatched = self->_spatialDeviceMapMatched;
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_10014B580;
          v44[3] = &unk_100AE2250;
          v45 = peerID;
          v46 = v39;
          [(NSMutableDictionary *)spatialDeviceMapMatched enumerateKeysAndObjectsUsingBlock:v44];
          v27 = "replaced";
LABEL_23:
          identifierData = [v9 identifierData];
          if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            irkData3 = [v9 irkData];
            v34 = CUPrintNSObjectMasked();
            v35 = CUPrintPID();
            LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBSpatialInteractionSessionAddPeerToken:]", 30, "Spatial AddPeerToken: ID <%@>, IRK %@, PeerID 0x%X, from %@, %s", identifierData, v34, v39, v35, v27);
          }

          tokenCopy = v43;
          v36 = CUXPCDictionaryCreateReply();
          if (v36)
          {
            [(CBDaemonXPCConnection *)self _xpcSendReply:v36];
          }

          else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBSpatialInteractionSessionAddPeerToken:]", 90, "### Spatial AddPeerToken create reply failed");
          }

          [(CBDaemonXPCConnection *)self _spatialInteractionReevaluateDevices];

          goto LABEL_34;
        }
      }

      v28 = [(NSMutableArray *)self->_spatialPeers count];
      if (v28 < 0x1E)
      {
        spatialPeers = self->_spatialPeers;
        if (!spatialPeers)
        {
          v30 = objc_alloc_init(NSMutableArray);
          v31 = self->_spatialPeers;
          self->_spatialPeers = v30;

          spatialPeers = self->_spatialPeers;
        }

        [(NSMutableArray *)spatialPeers addObject:v9];
        v15 = 0;
        v27 = "added";
        goto LABEL_23;
      }

      v38 = CBErrorF(312901, "Too many peer tokens (%d)", v28);
    }

    else
    {
      v38 = CBErrorF(4294960551, "No session");
    }

    v15 = v54[5];
    v54[5] = v38;
LABEL_34:

    goto LABEL_35;
  }

LABEL_37:
  (v5[2])(v5);

  _Block_object_dispose(&v53, 8);
}

- (void)_xpcCBSpatialInteractionSessionRemovePeerToken:(id)token
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_100042234;
  v46 = sub_1000425AC;
  v47 = 0;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10014BAD8;
  v39[3] = &unk_100AE0380;
  v41 = &v42;
  v39[4] = self;
  tokenCopy = token;
  v40 = tokenCopy;
  v32 = objc_retainBlock(v39);
  v5 = v43;
  obj = v43[5];
  v6 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v5 + 5, obj);
  if (v6)
  {
    v7 = v43 + 5;
    v37 = v43[5];
    v8 = [(CBDaemonXPCConnection *)self _spatialInteractionDecodePeerTokenRequest:tokenCopy error:&v37];
    objc_storeStrong(v7, v37);
    if (!v8)
    {
LABEL_32:

      goto LABEL_33;
    }

    irkData = [v8 irkData];
    v31 = self->_activatedSpatialInteractionSession;
    if (v31)
    {
      v10 = [(NSMutableArray *)self->_spatialPeers count];
      if (v10)
      {
        v11 = 0;
        while (1)
        {
          v12 = [(NSMutableArray *)self->_spatialPeers objectAtIndexedSubscript:v11];
          irkData2 = [v12 irkData];
          v14 = [irkData2 isEqual:irkData];

          if (v14)
          {
            break;
          }

          if (v10 == ++v11)
          {
            goto LABEL_8;
          }
        }

        v16 = v12;
        [(NSMutableArray *)self->_spatialPeers removeObjectAtIndex:v11];

        if (v16)
        {
          peerID = [v16 peerID];
          if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            identifierData = [v16 identifierData];
            irkData3 = [v16 irkData];
            v19 = CUPrintNSObjectMasked();
            v20 = CUPrintPID();
            LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBSpatialInteractionSessionRemovePeerToken:]", 30, "Spatial RemovePeerToken: ID <%@>, IRK %@, PeerID 0x%X, from %@", identifierData, v19, peerID, v20);
          }

          v21 = CUXPCDictionaryCreateReply();
          if (v21)
          {
            [(CBDaemonXPCConnection *)self _xpcSendReply:v21];
          }

          else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _xpcCBSpatialInteractionSessionRemovePeerToken:]", 90, "### Spatial RemovePeerToken create reply failed");
          }

          v27 = v21;
          v28 = v8;
          v30 = tokenCopy;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          allValues = [(NSMutableDictionary *)self->_spatialDeviceMapMatched allValues];
          v23 = [allValues countByEnumeratingWithState:&v33 objects:v48 count:16];
          if (v23)
          {
            v24 = *v34;
            do
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v34 != v24)
                {
                  objc_enumerationMutation(allValues);
                }

                v26 = *(*(&v33 + 1) + 8 * i);
                if ([v26 spatialInteractionPeerID] == peerID)
                {
                  [(CBDaemonXPCConnection *)self _spatialInteractionDeviceLost:v26 removeUnmatched:0 reason:"removed token"];
                }
              }

              v23 = [allValues countByEnumeratingWithState:&v33 objects:v48 count:16];
            }

            while (v23);
          }

          v8 = v28;
          tokenCopy = v30;

          goto LABEL_31;
        }
      }

LABEL_8:
      v15 = CBErrorF(4294960569, "Peer token not found");
    }

    else
    {
      v15 = CBErrorF(4294960551, "No session");
    }

    v16 = v43[5];
    v43[5] = v15;
LABEL_31:

    goto LABEL_32;
  }

LABEL_33:
  (v32[2])(v32);

  _Block_object_dispose(&v42, 8);
}

- (void)_spatialInteractionReevaluateDevices
{
  if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080E8C8(self);
  }

  allValues = [(NSMutableDictionary *)self->_spatialDeviceMapMatched allValues];
  allValues2 = [(NSMutableDictionary *)self->_spatialDeviceMapUnmatched allValues];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = allValues;
  v6 = [v5 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v46;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v45 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        [(CBDaemonXPCConnection *)self _spatialInteractionDeviceFound:v10 checkOnly:1];
        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v7);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = allValues2;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v41 + 1) + 8 * j);
        v18 = objc_autoreleasePoolPush();
        [(CBDaemonXPCConnection *)self _spatialInteractionDeviceFound:v17 checkOnly:1];
        objc_autoreleasePoolPop(v18);
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v14);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = v5;
  v20 = [v19 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (k = 0; k != v21; k = k + 1)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v37 + 1) + 8 * k);
        v25 = objc_autoreleasePoolPush();
        [(CBDaemonXPCConnection *)self _spatialInteractionDeviceFound:v24 checkOnly:0];
        objc_autoreleasePoolPop(v25);
      }

      v21 = [v19 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v21);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v12;
  v27 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      for (m = 0; m != v28; m = m + 1)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v33 + 1) + 8 * m);
        v32 = objc_autoreleasePoolPush();
        [(CBDaemonXPCConnection *)self _spatialInteractionDeviceFound:v31 checkOnly:0, v33];
        objc_autoreleasePoolPop(v32);
      }

      v28 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v28);
  }
}

- (void)_xpcAdvertisingAddressChanged
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "mTyp", "AdAC");
  addressMonitor = [(CBDaemonServer *)self->_daemon addressMonitor];
  connectableAddressData = [addressMonitor connectableAddressData];
  v5 = connectableAddressData;
  if (connectableAddressData)
  {
    v6 = connectableAddressData;
    v7 = xdict;
    bytes = [v5 bytes];
    if (bytes)
    {
      v9 = bytes;
    }

    else
    {
      v9 = "";
    }

    xpc_dictionary_set_data(v7, "aaCN", v9, [v5 length]);
  }

  addressMonitor2 = [(CBDaemonServer *)self->_daemon addressMonitor];
  nonConnectableAddressData = [addressMonitor2 nonConnectableAddressData];
  v12 = nonConnectableAddressData;
  if (nonConnectableAddressData)
  {
    v13 = nonConnectableAddressData;
    v14 = xdict;
    bytes2 = [v12 bytes];
    if (bytes2)
    {
      v16 = bytes2;
    }

    else
    {
      v16 = "";
    }

    xpc_dictionary_set_data(v14, "aaNC", v16, [v12 length]);
  }

  addressMonitor3 = [(CBDaemonServer *)self->_daemon addressMonitor];
  nonConnectableSecondaryAddressData = [addressMonitor3 nonConnectableSecondaryAddressData];
  v19 = nonConnectableSecondaryAddressData;
  if (nonConnectableSecondaryAddressData)
  {
    v20 = nonConnectableSecondaryAddressData;
    v21 = xdict;
    bytes3 = [v19 bytes];
    if (bytes3)
    {
      v23 = bytes3;
    }

    else
    {
      v23 = "";
    }

    xpc_dictionary_set_data(v21, "aaNC2", v23, [v19 length]);
  }

  if ([(CBDaemonServer *)self->_daemon supportsNCSecondaryAdvertisingInstance])
  {
    xpc_dictionary_set_BOOL(xdict, "aaUNC2", 1);
  }

  [(CBDaemonXPCConnection *)self _xpcSendEvent:xdict];
}

- (void)_xpcDeviceFound:(id)found
{
  foundCopy = found;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "mTyp", "DvFo");
  [foundCopy encodeWithXPCObject:v5];

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v5];
}

- (void)_xpcDeviceLost:(id)lost
{
  lostCopy = lost;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "mTyp", "DvLo");
  [lostCopy encodeWithXPCObject:v5];

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v5];
}

- (void)_xpcDevicesBuffered:(id)buffered
{
  bufferedCopy = buffered;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "mTyp", "DsBf");
  CUXPCEncodeNSArrayOfObjects();

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v5];
}

- (void)_xpcDiscoverableStateChanged:(int)changed
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "mTyp", "DscC");
  xpc_dictionary_set_int64(xdict, "dsSt", changed);
  [(CBDaemonXPCConnection *)self _xpcSendEvent:xdict];
}

- (void)_xpcInquiryStateChanged:(int)changed
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "mTyp", "InqC");
  xpc_dictionary_set_int64(xdict, "inqS", changed);
  [(CBDaemonXPCConnection *)self _xpcSendEvent:xdict];
}

- (void)_xpcPowerStateChanged:(int64_t)changed
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "mTyp", "PwrC");
  xpc_dictionary_set_int64(xdict, "pwrS", changed);
  [(CBDaemonXPCConnection *)self _xpcSendEvent:xdict];
}

- (void)xpcReceivedAudioAccessoryEventType:(unsigned __int8)type messageData:(id)data sourceDevice:(id)device
{
  typeCopy = type;
  dataCopy = data;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "mTyp", "AcRc");
  if (typeCopy)
  {
    xpc_dictionary_set_uint64(v9, "acET", typeCopy);
  }

  if (dataCopy)
  {
    v10 = dataCopy;
    v11 = v9;
    v12 = dataCopy;
    bytes = [v12 bytes];
    if (bytes)
    {
      v14 = bytes;
    }

    else
    {
      v14 = "";
    }

    v15 = [v12 length];

    xpc_dictionary_set_data(v11, "acMd", v14, v15);
  }

  CUXPCEncodeObject();
  [(CBDaemonXPCConnection *)self _xpcSendEvent:v9];
}

- (void)xpcReceivedAudioAccessoryDeviceInfoChange:(id)change
{
  dispatchQueue = self->_dispatchQueue;
  changeCopy = change;
  dispatch_assert_queue_V2(dispatchQueue);
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "mTyp", "AcIC");
  xpc_dictionary_set_value(xdict, "aaID", changeCopy);

  [(CBDaemonXPCConnection *)self _xpcSendEvent:xdict];
}

- (void)_xpcReceivedRelayMessageType:(unsigned __int8)type messageData:(id)data conduitDevice:(id)device sourceDevice:(id)sourceDevice
{
  typeCopy = type;
  dataCopy = data;
  deviceCopy = device;
  sourceDeviceCopy = sourceDevice;
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v12, "mTyp", "RlMR");
  if (typeCopy)
  {
    xpc_dictionary_set_uint64(v12, "rlMT", typeCopy);
  }

  if (dataCopy)
  {
    v13 = dataCopy;
    v14 = v12;
    v15 = dataCopy;
    bytes = [v15 bytes];
    if (bytes)
    {
      v17 = bytes;
    }

    else
    {
      v17 = "";
    }

    v18 = [v15 length];

    xpc_dictionary_set_data(v14, "rlMD", v17, v18);
  }

  CUXPCEncodeObject();
  CUXPCEncodeObject();

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v12];
}

- (void)_xpcSpatialInteractionAOPDataReceived:(id)received
{
  receivedCopy = received;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "mTyp", "SpAD");
  if (receivedCopy)
  {
    v5 = receivedCopy;
    v6 = v4;
    v7 = receivedCopy;
    bytes = [v7 bytes];
    if (bytes)
    {
      v9 = bytes;
    }

    else
    {
      v9 = "";
    }

    v10 = [v7 length];

    xpc_dictionary_set_data(v6, "siAD", v9, v10);
  }

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v4];
}

- (void)_xpcSystemOverrideChanged
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "mTyp", "SyOC");
  xpc_dictionary_set_int64(xdict, "scRO", [(CBDiscovery *)self->_activatedDiscovery bleScanRateOverride]);
  xpc_dictionary_set_uint64(xdict, "syOF", [(CBDiscovery *)self->_activatedDiscovery systemOverrideFlags]);
  [(CBDaemonXPCConnection *)self _xpcSendEvent:xdict];
}

- (void)_xpcTipiChanged:(id)changed
{
  changedCopy = changed;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "mTyp", "TpiC");
  CUXPCEncodeObject();

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v5];
}

- (void)_setupWHBTimer
{
  if (!self->_activatedDiscoveryWHB)
  {
    v13 = v2;
    v14 = v3;
    v5 = self->_whbTimer;
    if (!v5)
    {
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      whbTimer = self->_whbTimer;
      self->_whbTimer = v6;

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10014CD94;
      v10[3] = &unk_100ADF590;
      v5 = v6;
      v11 = v5;
      selfCopy = self;
      dispatch_source_set_event_handler(v5, v10);
      CUDispatchTimerSet();
      dispatch_activate(self->_whbTimer);
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080E96C();
      }
    }

    if (!self->_whbLostDevicesMap)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      whbLostDevicesMap = self->_whbLostDevicesMap;
      self->_whbLostDevicesMap = v8;
    }
  }
}

- (void)whbStop
{
  whbTimer = self->_whbTimer;
  if (whbTimer)
  {
    v5 = whbTimer;
    dispatch_source_cancel(v5);
    v4 = self->_whbTimer;
    self->_whbTimer = 0;
  }
}

- (void)aopMessageReceived:(id)received
{
  receivedCopy = received;
  if (receivedCopy)
  {
    aopDataHandler = [(CBSpatialInteractionSession *)self->_activatedSpatialInteractionSession aopDataHandler];
    v5 = aopDataHandler;
    if (aopDataHandler)
    {
      (*(aopDataHandler + 16))(aopDataHandler, receivedCopy);
    }
  }
}

- (void)reportDeviceFound:(id)found
{
  foundCopy = found;
  activatedDiscovery = self->_activatedDiscovery;
  if (activatedDiscovery)
  {
    v5 = activatedDiscovery;
  }

  else
  {
    v5 = self->_activatedDiscoveryWHB;
    if (!v5)
    {
      goto LABEL_31;
    }
  }

  identifier = [foundCopy identifier];
  if (identifier)
  {
    v7 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:identifier];
    bleRSSIThresholdHint = [(CBDiscovery *)v5 bleRSSIThresholdHint];
    if (bleRSSIThresholdHint)
    {
      v9 = [foundCopy rssi] < bleRSSIThresholdHint;
      v10 = foundCopy;
      LOBYTE(bleRSSIThresholdHint) = v9;
    }

    else
    {
      v10 = foundCopy;
    }

    if (![v10 discoveryTypesContainCBDiscovery:v5] || (bleRSSIThresholdHint & 1) != 0)
    {
      if (v7)
      {
        [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:identifier];
        deviceLostHandler = [(CBDiscovery *)v5 deviceLostHandler];
LABEL_26:
        v17 = deviceLostHandler;
        if (deviceLostHandler)
        {
          (*(deviceLostHandler + 16))(deviceLostHandler, foundCopy);
        }
      }
    }

    else
    {
      if (!v7)
      {
        deviceMap = self->_deviceMap;
        if (!deviceMap)
        {
          v15 = objc_alloc_init(NSMutableDictionary);
          v16 = self->_deviceMap;
          self->_deviceMap = v15;

          deviceMap = self->_deviceMap;
        }

        [(NSMutableDictionary *)deviceMap setObject:foundCopy forKeyedSubscript:identifier];
        goto LABEL_25;
      }

      if (v7 != foundCopy)
      {
        [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
      }

      discoveryFlags = [(CBDiscovery *)v5 discoveryFlags];
      if ([(CBDiscovery *)v5 needsIdentify])
      {
        v12 = ([foundCopy attributeInternalFlags] >> 1) & 1;
        if ((discoveryFlags & 0x100000) != 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v12 = 0;
        if ((discoveryFlags & 0x100000) != 0)
        {
LABEL_25:
          deviceLostHandler = [(CBDiscovery *)v5 deviceFoundHandler];
          goto LABEL_26;
        }
      }

      if (([foundCopy changedTypesContainCBDiscovery:v5] | v12))
      {
        goto LABEL_25;
      }
    }
  }

LABEL_31:
}

- (void)reportDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:identifier];

    if (v5)
    {
      activatedDiscovery = self->_activatedDiscovery;
      if (activatedDiscovery)
      {
        v7 = activatedDiscovery;
      }

      else
      {
        v7 = self->_activatedDiscoveryWHB;
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:identifier];
      deviceLostHandler = [(CBDiscovery *)v7 deviceLostHandler];
      v9 = deviceLostHandler;
      if (deviceLostHandler)
      {
        (*(deviceLostHandler + 16))(deviceLostHandler, lostCopy);
      }
    }
  }

LABEL_9:
}

- (void)reportDevicesBuffered:(id)buffered
{
  bufferedCopy = buffered;
  v5 = self->_activatedDiscovery;
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = bufferedCopy;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          if ([v12 discoveryTypesContainCBDiscovery:{v5, v16}] && objc_msgSend(v12, "isLowerThanAgeLimit:compareTimestamp:", v5, objc_msgSend(v12, "bleAdvertisementTimestampMachContinuous")))
          {
            [v6 addObject:v12];
          }

          objc_autoreleasePoolPop(v13);
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      devicesBufferedHandler = [(CBDiscovery *)v5 devicesBufferedHandler];
      v15 = devicesBufferedHandler;
      if (devicesBufferedHandler)
      {
        (*(devicesBufferedHandler + 16))(devicesBufferedHandler, v6);
      }
    }
  }
}

- (void)_spatialInteractionDeviceFound:(id)found checkOnly:(BOOL)only
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (!identifier)
  {
    goto LABEL_142;
  }

  btAddressData = [foundCopy btAddressData];
  if ([btAddressData length] != 6)
  {
    goto LABEL_141;
  }

  onlyCopy = only;
  spatialInteractionIdentifiers = [foundCopy spatialInteractionIdentifiers];
  v106 = self->_activatedSpatialInteractionSession;
  v8 = &off_100B51000;
  v117 = foundCopy;
  selfCopy = self;
  v109 = spatialInteractionIdentifiers;
  if (([(CBSpatialInteractionSession *)v106 controlFlags]& 0x3E0) == 0)
  {
    sub_10014CF68();
    goto LABEL_45;
  }

  firstObject = [spatialInteractionIdentifiers firstObject];
  if ([firstObject length] != 3)
  {
    sub_10014CF68();
    goto LABEL_44;
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = [(CBDaemonServer *)self->_daemon identityArray];
  v10 = [obj countByEnumeratingWithState:&v139 objects:v159 count:16];
  if (!v10)
  {
    sub_10014CF68();
    goto LABEL_43;
  }

  v11 = v10;
  v125 = 0;
  v12 = 0;
  v13 = *v140;
  v121 = firstObject;
  do
  {
    v14 = 0;
    do
    {
      if (*v140 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v139 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      v17 = [v15 verifyAuthTag:firstObject data:btAddressData type:2 error:0];
      if (v17)
      {
        [foundCopy setInternalFlags:{objc_msgSend(foundCopy, "internalFlags") | 8}];
        [foundCopy updateWithRPIdentity:v15];
        v18 = [(CBSpatialInteractionSession *)v106 matchesWithDevice:foundCopy];
        v19 = v18;
        if (selfCopy->_isHomePod)
        {
          v20 = sub_10014BBB4(v18);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v26 = "no";
            if (v19)
            {
              v26 = "yes";
            }

            v145 = v26;
            v146 = 2112;
            v147 = foundCopy;
            v148 = 2112;
            v149 = v15;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Spatial found match sys: match %s, %@, %@", buf, 0x20u);
          }

          firstObject = v121;
        }

        else if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v23 = "no";
          if (v19)
          {
            v23 = "yes";
          }

          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _spatialInteractionDeviceFound:checkOnly:]", 20, "Spatial found match sys: match %s, %@, %@", v23, foundCopy, v15);
        }

        v125 |= v19;
        v12 |= v19;
      }

      else
      {
        if (selfCopy->_isHomePod)
        {
          v21 = sub_10014BBB4(v17);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            [btAddressData bytes];
            [btAddressData length];
            sub_1000B70CC();
            v119 = CUPrintHex();
            deviceIRKData = [v15 deviceIRKData];
            v22 = CUPrintNSObjectMasked();
            *buf = 138413058;
            v145 = v119;
            v146 = 2112;
            v147 = v22;
            v148 = 2112;
            v149 = v117;
            v150 = 2112;
            v151 = v15;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Spatial found check sys: SRC <%@>, IRK %@, match no, %@, %@", buf, 0x2Au);

            foundCopy = v117;
            firstObject = v121;
          }

          goto LABEL_25;
        }

        if (dword_100B510A0 <= 5 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          [btAddressData bytes];
          [btAddressData length];
          sub_1000B70CC();
          v21 = CUPrintHex();
          deviceIRKData2 = [v15 deviceIRKData];
          v25 = CUPrintNSObjectMasked();
          LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _spatialInteractionDeviceFound:checkOnly:]", 5, "Spatial found check sys: SRC <%@>, IRK %@, match no, %@, %@", v21, v25, v117, v15);

          firstObject = v121;
          foundCopy = v117;
LABEL_25:
        }
      }

      objc_autoreleasePoolPop(v16);
      v14 = v14 + 1;
    }

    while (v11 != v14);
    v27 = [obj countByEnumeratingWithState:&v139 objects:v159 count:16];
    v11 = v27;
  }

  while (v27);
  if (v12)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  v103 = v28;
  self = selfCopy;
  v8 = &off_100B51000;
LABEL_43:

LABEL_44:
LABEL_45:
  identifierData = [(CBSpatialInteractionSession *)v106 identifierData];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v30 = self->_spatialPeers;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v135 objects:v158 count:16];
  v111 = identifierData;
  if (!v31)
  {
    v122 = 0;
    goto LABEL_87;
  }

  v32 = v31;
  v122 = 0;
  v33 = *v136;
  v107 = *v136;
  v108 = v30;
  while (2)
  {
    v34 = 0;
    v110 = v32;
    while (2)
    {
      if (*v136 != v33)
      {
        objc_enumerationMutation(v30);
      }

      v114 = v34;
      v35 = *(*(&v135 + 1) + 8 * v34);
      context = objc_autoreleasePoolPush();
      identifierData2 = [v35 identifierData];
      v37 = identifierData2;
      if (identifierData2)
      {
        v38 = identifierData2;
      }

      else
      {
        v38 = identifierData;
      }

      v39 = v38;

      v115 = v39;
      if ([v39 length] == 3)
      {
        irkData = [v35 irkData];
        if ([irkData length] == 16)
        {
          obja = v35;
          v157 = 0;
          v156 = 0;
          bytes = [btAddressData bytes];
          v42 = bytes[2];
          LODWORD(v156) = *bytes;
          WORD2(v156) = v42;
          bytes2 = [v115 bytes];
          v44 = bytes2[2];
          HIWORD(v156) = *bytes2;
          v157 = v44;
          v120 = irkData;
          [irkData bytes];
          __s1 = bswap64(SipHash());
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v45 = v109;
          v46 = [v45 countByEnumeratingWithState:&v131 objects:v154 count:16];
          if (!v46)
          {
            goto LABEL_79;
          }

          v47 = v46;
          v48 = *v132;
          while (1)
          {
            v49 = 0;
            do
            {
              if (*v132 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v131 + 1) + 8 * v49);
              v51 = objc_autoreleasePoolPush();
              if ([v50 length] == 3)
              {
                v52 = memcmp(&__s1, [v50 bytes], 3uLL);
                v53 = v52;
                if (self->_isHomePod)
                {
                  v54 = sub_10014BBB4(v52);
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                  {
                    sub_1000B70CC();
                    v55 = CUPrintHex();
                    v56 = CUPrintNSObjectMasked();
                    sub_1000B70CC();
                    v57 = CUPrintHex();
                    v58 = v57;
                    *buf = 138413314;
                    v59 = "no";
                    if (!v53)
                    {
                      v59 = "yes";
                    }

                    v145 = v55;
                    v146 = 2112;
                    v147 = v56;
                    v148 = 2112;
                    v149 = v57;
                    v150 = 2080;
                    v151 = v59;
                    v152 = 2112;
                    v153 = v117;
                    _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "Spatial found check token: SRC <%@>, IRK %@, Hash <%@>, match %s, %@", buf, 0x34u);

                    foundCopy = v117;
                    v8 = &off_100B51000;

                    self = selfCopy;
                  }

                  goto LABEL_71;
                }

                v60 = *(v8 + 40);
                if (v60 <= 10 && (v60 != -1 || _LogCategory_Initialize()))
                {
                  sub_1000B70CC();
                  v54 = CUPrintHex();
                  v61 = CUPrintNSObjectMasked();
                  sub_1000B70CC();
                  v62 = CUPrintHex();
                  v63 = v62;
                  v64 = "no";
                  if (!v53)
                  {
                    v64 = "yes";
                  }

                  LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _spatialInteractionDeviceFound:checkOnly:]", 10, "Spatial found check token: SRC <%@>, IRK %@, Hash <%@>, match %s, %@", v54, v61, v62, v64, foundCopy);

                  self = selfCopy;
                  v8 = &off_100B51000;
LABEL_71:
                }

                if (!v53)
                {
                  [foundCopy setSpatialInteractionPeerID:{objc_msgSend(obja, "peerID")}];
                  v125 = 1;
                  v122 = 1;
                }
              }

              objc_autoreleasePoolPop(v51);
              v49 = v49 + 1;
            }

            while (v47 != v49);
            v65 = [v45 countByEnumeratingWithState:&v131 objects:v154 count:16];
            v47 = v65;
            if (!v65)
            {
LABEL_79:

              v32 = v110;
              identifierData = v111;
              v33 = v107;
              v30 = v108;
              v66 = v114;
              irkData = v120;
              goto LABEL_82;
            }
          }
        }

        v66 = v114;
LABEL_82:
      }

      else
      {
        v66 = v114;
      }

      objc_autoreleasePoolPop(context);
      v34 = v66 + 1;
      if (v34 != v32)
      {
        continue;
      }

      break;
    }

    v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v135 objects:v158 count:16];
    if (v32)
    {
      continue;
    }

    break;
  }

LABEL_87:

  v67 = v109;
  if (onlyCopy)
  {
    goto LABEL_140;
  }

  if ((v125 & 1) == 0)
  {
    v87 = [(NSMutableDictionary *)self->_spatialDeviceMapMatched objectForKeyedSubscript:identifier];
    if (v87)
    {
      [(CBDaemonXPCConnection *)self _spatialInteractionDeviceLost:v87 removeUnmatched:0 reason:"no match"];
    }

    else
    {
      spatialDeviceMapUnmatched = self->_spatialDeviceMapUnmatched;
      if (!spatialDeviceMapUnmatched)
      {
        v95 = objc_alloc_init(NSMutableDictionary);
        v96 = self->_spatialDeviceMapUnmatched;
        self->_spatialDeviceMapUnmatched = v95;

        spatialDeviceMapUnmatched = self->_spatialDeviceMapUnmatched;
      }

      [(NSMutableDictionary *)spatialDeviceMapUnmatched setObject:foundCopy forKeyedSubscript:identifier];
      v97 = [(NSMutableDictionary *)self->_spatialDeviceMapMatched setObject:0 forKeyedSubscript:identifier];
      if (self->_isHomePod)
      {
        v98 = sub_10014BBB4(v97);
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v145 = foundCopy;
          _os_log_debug_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEBUG, "Spatial found no match device: %@", buf, 0xCu);
        }
      }

      else if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _spatialInteractionDeviceFound:checkOnly:]", 30, "Spatial found no match device: %@", foundCopy);
      }
    }

    goto LABEL_135;
  }

  v68 = foundCopy;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  allValues = [(NSMutableDictionary *)self->_spatialDeviceMapMatched allValues];
  v70 = [allValues countByEnumeratingWithState:&v127 objects:v143 count:16];
  if (!v70)
  {

    v87 = v68;
    self = selfCopy;
    goto LABEL_113;
  }

  v71 = v70;
  v72 = *v128;
  v126 = v68;
  while (2)
  {
    v73 = 0;
    while (2)
    {
      if (*v128 != v72)
      {
        objc_enumerationMutation(allValues);
      }

      v74 = *(*(&v127 + 1) + 8 * v73);
      v75 = objc_autoreleasePoolPush();
      spatialInteractionPeerID = [v74 spatialInteractionPeerID];
      if (spatialInteractionPeerID == [v68 spatialInteractionPeerID])
      {
        idsDeviceID = [v74 idsDeviceID];
        idsDeviceID2 = [v68 idsDeviceID];
        v79 = idsDeviceID;
        v80 = idsDeviceID2;
        v81 = v80;
        if (v79 == v80)
        {
        }

        else
        {
          if ((v79 != 0) == (v80 == 0))
          {

            goto LABEL_103;
          }

          v82 = [v79 isEqual:v80];

          if ((v82 & 1) == 0)
          {
LABEL_103:
            identifierData = v111;
            goto LABEL_106;
          }
        }

        lastSeenTicks = [v74 lastSeenTicks];
        identifierData = v111;
        if (lastSeenTicks <= [v68 lastSeenTicks])
        {
          identifier2 = [v74 identifier];
          v86 = [identifier2 isEqual:identifier];

          if ((v86 & 1) == 0)
          {
            [(CBDaemonXPCConnection *)selfCopy _spatialInteractionDeviceLost:v74 removeUnmatched:1 reason:"replaced matched"];
          }
        }

        else
        {
          v84 = v74;

          v126 = v84;
        }
      }

LABEL_106:
      objc_autoreleasePoolPop(v75);
      if (v71 != ++v73)
      {
        continue;
      }

      break;
    }

    v71 = [allValues countByEnumeratingWithState:&v127 objects:v143 count:16];
    if (v71)
    {
      continue;
    }

    break;
  }

  v87 = v126;
  foundCopy = v117;
  self = selfCopy;
  v67 = v109;
  if (v126 == v68)
  {
LABEL_113:
    spatialDeviceMapMatched = self->_spatialDeviceMapMatched;
    if (!spatialDeviceMapMatched)
    {
      v89 = objc_alloc_init(NSMutableDictionary);
      v90 = self->_spatialDeviceMapMatched;
      self->_spatialDeviceMapMatched = v89;

      spatialDeviceMapMatched = self->_spatialDeviceMapMatched;
    }

    v91 = v87;
    [(NSMutableDictionary *)spatialDeviceMapMatched setObject:v68 forKeyedSubscript:identifier];
    v92 = [(NSMutableDictionary *)self->_spatialDeviceMapUnmatched setObject:0 forKeyedSubscript:identifier];
    if (self->_isHomePod)
    {
      v93 = sub_10014BBB4(v92);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v145 = v68;
        _os_log_debug_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEBUG, "Spatial found device: %@", buf, 0xCu);
      }
    }

    else if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _spatialInteractionDeviceFound:checkOnly:]", 30, "Spatial found device: %@", v68);
    }

    deviceFoundHandler = [(CBSpatialInteractionSession *)v106 deviceFoundHandler];
    v100 = deviceFoundHandler;
    if (deviceFoundHandler)
    {
      (*(deviceFoundHandler + 16))(deviceFoundHandler, v68);
    }

    v87 = v91;
  }

LABEL_135:

  if (IsAppleInternalBuild())
  {
    if (v122)
    {
      v101 = 4;
    }

    else
    {
      v101 = v103;
    }

    v102 = objc_autoreleasePoolPush();
    [(CBDaemonXPCConnection *)self _updateDeviceMapSpatialInteractionDeviceTimestampArrayDictionary:v101 device:foundCopy];
    objc_autoreleasePoolPop(v102);
  }

LABEL_140:

LABEL_141:
LABEL_142:
}

- (void)_spatialInteractionDeviceLost:(id)lost removeUnmatched:(BOOL)unmatched reason:(const char *)reason
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v10 = [(NSMutableDictionary *)self->_spatialDeviceMapMatched objectForKeyedSubscript:identifier];
    [(NSMutableDictionary *)self->_spatialDeviceMapMatched setObject:0 forKeyedSubscript:identifier];
    if (unmatched)
    {
      v11 = [(NSMutableDictionary *)self->_spatialDeviceMapUnmatched setObject:0 forKeyedSubscript:identifier];
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!v10)
      {
LABEL_22:

        goto LABEL_23;
      }

      spatialDeviceMapUnmatched = self->_spatialDeviceMapUnmatched;
      if (!spatialDeviceMapUnmatched)
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        v14 = self->_spatialDeviceMapUnmatched;
        self->_spatialDeviceMapUnmatched = v13;

        spatialDeviceMapUnmatched = self->_spatialDeviceMapUnmatched;
      }

      v11 = [(NSMutableDictionary *)spatialDeviceMapUnmatched setObject:v10 forKeyedSubscript:identifier];
    }

    if (self->_isHomePod)
    {
      v15 = sub_10014BBB4(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v20 = lostCopy;
        v21 = 2080;
        reasonCopy = reason;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Spatial lost device: %@ (%s)", buf, 0x16u);
      }
    }

    else if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _spatialInteractionDeviceLost:removeUnmatched:reason:]", 30, "Spatial lost device: %@ (%s)", lostCopy, reason);
    }

    if (IsAppleInternalBuild())
    {
      v16 = objc_autoreleasePoolPush();
      [(CBDaemonXPCConnection *)self _updateDeviceMapSpatialInteractionDeviceTimestampArrayDictionary:8 device:lostCopy];
      objc_autoreleasePoolPop(v16);
    }

    deviceLostHandler = [(CBSpatialInteractionSession *)self->_activatedSpatialInteractionSession deviceLostHandler];
    v18 = deviceLostHandler;
    if (deviceLostHandler)
    {
      (*(deviceLostHandler + 16))(deviceLostHandler, lostCopy);
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (id)_spatialInteractionDecodePeerTokenRequest:(id)request error:(id *)error
{
  if (CUXPCDecodeNSData() && error)
  {
    v6 = sub_10014CF78();
    *error = CBErrorF(v6, v7);
  }

  return 0;
}

- (void)_updateDeviceMapSpatialInteractionDeviceTimestampArrayDictionary:(unsigned __int8)dictionary device:(id)device
{
  dictionaryCopy = dictionary;
  deviceCopy = device;
  clientID = [(CBSpatialInteractionSession *)self->_activatedSpatialInteractionSession clientID];
  if (dictionaryCopy && deviceCopy && clientID)
  {
    deviceMap = [(CBDaemonServer *)self->_daemon deviceMap];
    identifier = [deviceCopy identifier];
    v10 = [deviceMap objectForKeyedSubscript:identifier];

    if (v10)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10014BF5C;
      block[3] = &unk_100AE2278;
      block[4] = self;
      v13 = v10;
      v14 = dictionaryCopy;
      dispatch_async(dispatchQueue, block);
    }
  }
}

- (void)_whbTimerFired
{
  if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _whbTimerFired]", 20, "WHBTimer fired");
  }

  activatedDiscovery = self->_activatedDiscovery;
  if (activatedDiscovery)
  {
    v16 = activatedDiscovery;
  }

  else
  {
    v16 = self->_activatedDiscoveryWHB;
    if (!v16)
    {
      return;
    }
  }

  mach_absolute_time();
  v4 = UpTicksToSeconds();
  allKeys = [(NSMutableDictionary *)self->_whbLostDevicesMap allKeys];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_whbLostDevicesMap objectForKeyedSubscript:v10];
        v12 = v11;
        if (v11 && (v4 - [v11 unsignedLongLongValue]) >= 0x2D)
        {
          v13 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v10];
          if (v13)
          {
            if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection _whbTimerFired]", 30, "WHB lost timer expired for device: %@. Marked as lost", v13);
            }

            deviceLostHandler = [(CBDiscovery *)v16 deviceLostHandler];
            v15 = deviceLostHandler;
            if (deviceLostHandler)
            {
              (*(deviceLostHandler + 16))(deviceLostHandler, v13);
            }

            [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v10];
          }

          [(NSMutableDictionary *)self->_whbLostDevicesMap removeObjectForKey:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if (self->_whbTimer)
  {
    CUDispatchTimerSet();
  }
}

@end