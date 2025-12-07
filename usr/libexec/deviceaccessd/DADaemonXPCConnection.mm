@interface DADaemonXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (BOOL)_entitledForAccessLevel:(int)level returnError:(id *)error;
- (BOOL)_findSyncExtensionPoint:(id)point bundleID:(id)d;
- (id)descriptionWithLevel:(int)level;
- (void)_xpcBluetoothAccessInfoGet:(id)get;
- (void)_xpcBluetoothPairingMsg:(id)msg;
- (void)_xpcCheckAppHasMediaDeviceDiscoveryExtension:(id)extension;
- (void)_xpcDADiscoveryActivate:(id)activate;
- (void)_xpcDADiscoveryInvalidateWithReason:(id)reason;
- (void)_xpcDADiscoveryMigrationComplete:(id)complete;
- (void)_xpcDASessionActivate:(id)activate;
- (void)_xpcDiagnosticShow:(id)show;
- (void)_xpcGetAuthorizedAccessories:(id)accessories;
- (void)_xpcGetAuthorizedDevices:(id)devices;
- (void)_xpcGetDevices:(id)devices;
- (void)_xpcGetPartialIPs:(id)ps;
- (void)_xpcModifyDeviceSettings:(id)settings;
- (void)_xpcRemoveDeviceAppAccessInfo:(id)info;
- (void)_xpcRemoveDeviceConfirmation:(id)confirmation accessInfo:(id)info userConfirmed:(BOOL)confirmed request:(id)request;
- (void)_xpcReportDAEvent:(id)event;
- (void)_xpcRequestPermissionsForDevice:(id)device;
- (void)_xpcResetWiFiIdentifier:(id)identifier;
- (void)_xpcSendEvent:(id)event;
- (void)_xpcSendReply:(id)reply;
- (void)_xpcSendReplyError:(id)error request:(id)request;
- (void)_xpcSetDeviceAccessoryServiceInfo:(id)info;
- (void)_xpcSetDeviceAppAccessInfo:(id)info;
- (void)_xpcSetDeviceState:(id)state;
- (void)_xpcSetPartialIPs:(id)ps;
- (void)_xpcWiFiAwarePairingMsg:(id)msg;
- (void)activate;
- (void)invalidate;
- (void)reportAccessoryServicesChanged:(id)changed;
- (void)reportDeviceChanged:(id)changed appID:(id)d discovery:(BOOL)discovery;
- (void)reportDeviceConnectionStatusChanged:(id)changed;
- (void)reportDevicesMigrated:(id)migrated appID:(id)d;
- (void)reportDevicesPresentChanged:(BOOL)changed appID:(id)d;
- (void)reportDiscoveryEvent:(id)event appID:(id)d;
- (void)reportRemovedDevice:(id)device appID:(id)d discovery:(BOOL)discovery;
- (void)xpcReceivedEvent:(id)event;
- (void)xpcReceivedMessage:(id)message;
- (void)xpcReceivedRequest:(id)request;
@end

@implementation DADaemonXPCConnection

- (void)activate
{
  xpc_connection_get_audit_token();
  memset(v51, 0, sizeof(v51));
  v41 = [LSBundleRecord bundleRecordForAuditToken:v51 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v41;
    containingBundleRecord = [v3 containingBundleRecord];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];
    parentAppID = self->_parentAppID;
    self->_parentAppID = bundleIdentifier;

    infoDictionary = [containingBundleRecord infoDictionary];
    v8 = [infoDictionary objectForKey:@"NSAccessorySetupKitSupports" ofClass:objc_opt_class()];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v9)
    {
      v39 = *v48;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v48 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v47 + 1) + 8 * i);
          v12 = [v11 isEqualToString:@"Bluetooth"];
          if (([v11 isEqualToString:@"WiFi"] | v12))
          {
            if ([(DADaemonServer *)self->_daemon prefEnforceApprovedExtensions])
            {
              v13 = 0;
              while (1)
              {
                extensionPointRecord = [v3 extensionPointRecord];
                identifier = [extensionPointRecord identifier];
                v16 = [identifier isEqual:off_100059850[v13]];

                if (v16)
                {
                  break;
                }

                if (++v13 == 4)
                {
                  if (self->_accessLevel == 4)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_13;
                }
              }

              if (dword_1000606C0 <= 20 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
              {
                v23 = "XPC connection allowed for appID %@, extension point %@";
                goto LABEL_31;
              }
            }

            else if (dword_1000606C0 <= 20 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
            {
              v23 = "[Skipping Enforcement] XPC connection allowed for appID %@, extension point %@";
LABEL_31:
              sub_100035BC0(v3, v23);
            }

            self->_accessLevel = 4;
            goto LABEL_36;
          }

LABEL_13:
          ;
        }

        v9 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_36:
  }

  else
  {
    infoDictionary2 = [v41 infoDictionary];
    v18 = [infoDictionary2 objectForKey:@"NSAccessorySetupKitSupports" ofClass:objc_opt_class()];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    containingBundleRecord = v18;
    v19 = [containingBundleRecord countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v19)
    {
      v20 = *v44;
      while (2)
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(containingBundleRecord);
          }

          v22 = *(*(&v43 + 1) + 8 * j);
          if ([v22 isEqualToString:@"Bluetooth"])
          {
            self->_accessLevel = 4;
          }

          if ([v22 isEqualToString:@"WiFi"])
          {
            self->_accessLevel = 4;
            goto LABEL_33;
          }

          if (self->_accessLevel == 4)
          {
            goto LABEL_33;
          }
        }

        v19 = [containingBundleRecord countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_33:
    v3 = containingBundleRecord;
  }

  v24 = xpc_copy_entitlement_for_token();
  v25 = v24;
  if (v24)
  {
    v26 = xpc_dictionary_get_BOOL(v24, "com.apple.DeviceAccess");
    if (v26)
    {
      v27 = 6;
    }

    else
    {
      v27 = 5;
    }

    self->_entitledState = v27;
    if (v26)
    {
      self->_accessLevel = 7;
    }

    if (xpc_dictionary_get_BOOL(v25, "com.apple.DeviceAccess.private"))
    {
      self->_accessLevel = 10;
    }
  }

  string = xpc_copy_code_signing_identity_for_token();
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10000188C;
  v42[3] = &unk_100059690;
  v42[4] = string;
  v29 = objc_retainBlock(v42);
  if (string)
  {
    v30 = 1;
  }

  else
  {
    v30 = v25 == 0;
  }

  if (!v30)
  {
    string = xpc_dictionary_get_string(v25, "application-identifier");
  }

  if (string)
  {
    v31 = [NSString stringWithUTF8String:string];
    appID = self->_appID;
    self->_appID = v31;
  }

  if (dword_1000606C0 <= 20 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    v33 = CUPrintPID();
    v34 = v33;
    entitledState = self->_entitledState;
    if (entitledState >= 8)
    {
      if (entitledState <= 9)
      {
        v36 = "?";
      }

      else
      {
        v36 = "User";
      }
    }

    else
    {
      v36 = off_100059938[entitledState];
    }

    LogPrintF(&dword_1000606C0, "[DADaemonXPCConnection activate]", 20, "XPC connection start: %@, appID %@, entitled %s accessLevel %d", v33, self->_appID, v36, self->_accessLevel);
  }

  v37 = [NSNumber numberWithInt:self->_pid];
  v38 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  [DADeviceAccessAnalytics markSessionActivationForPid:v37 atTime:v38];

  (v29[2])(v29);
}

- (id)descriptionWithLevel:(int)level
{
  v15 = 0;
  v4 = CUPrintPID();
  NSAppendPrintF(&v15, "%@", v4);
  v5 = v15;

  activatedDiscovery = self->_activatedDiscovery;
  if (activatedDiscovery)
  {
    v14 = v5;
    v7 = activatedDiscovery;
    NSAppendPrintF(&v14, ", %@", v7);
    v8 = v14;

    v5 = v8;
  }

  activatedSession = self->_activatedSession;
  if (activatedSession)
  {
    v13 = v5;
    v10 = activatedSession;
    NSAppendPrintF(&v13, ", %@", v10);
    v11 = v13;

    v5 = v11;
  }

  return v5;
}

- (void)invalidate
{
  connection = self->_xpcCnx;
  if (connection)
  {
    xpc_connection_cancel(connection);
  }

  v3 = self->_activatedDiscovery;
  if (v3)
  {
    if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100035C48(self);
    }

    activatedDiscovery = self->_activatedDiscovery;
    self->_activatedDiscovery = 0;

    [(DADaemonServer *)self->_daemon removeDiscovery:v3];
    [(DADiscovery *)v3 invalidate];
  }

  v5 = self->_activatedSession;
  if (v5)
  {
    if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100035C48(self);
    }

    [(DASession *)v5 invalidate];
    activatedSession = self->_activatedSession;
    self->_activatedSession = 0;
  }

  [(DADaemonServer *)self->_daemon xpcConnectionInvalidated:self];
}

- (void)reportAccessoryServicesChanged:(id)changed
{
  changedCopy = changed;
  accessLevel = [(DADaemonXPCConnection *)self accessLevel];
  bundleID = [(DASession *)self->_activatedSession bundleID];
  if (accessLevel == 10 || accessLevel == 4 && ([changedCopy appAccessInfoMap], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", bundleID), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [[DADeviceEvent alloc] initWithEventType:45 device:changedCopy];
    [(DADaemonXPCConnection *)self _xpcReportDAEvent:v8];
  }
}

- (void)reportDeviceChanged:(id)changed appID:(id)d discovery:(BOOL)discovery
{
  discoveryCopy = discovery;
  changedCopy = changed;
  dCopy = d;
  accessLevel = [(DADaemonXPCConnection *)self accessLevel];
  bundleID = [(DASession *)self->_activatedSession bundleID];
  if (!bundleID)
  {
    if (discoveryCopy)
    {
      configuration = [(DADiscovery *)self->_activatedDiscovery configuration];
      bundleID = [configuration bundleID];

      if (bundleID)
      {
        goto LABEL_2;
      }
    }

    else
    {
      bundleID = 0;
    }

    if (accessLevel == 10)
    {
      bundleID = 0;
      goto LABEL_14;
    }
  }

LABEL_2:
  if (self->_accessLevel == 4)
  {
    appAccessInfoMap = [changedCopy appAccessInfoMap];
    v12 = [appAccessInfoMap objectForKeyedSubscript:bundleID];
    if (v12)
    {
    }

    else
    {
      v14 = [bundleID isEqual:dCopy];

      if (!v14)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  if ([bundleID isEqual:dCopy])
  {
LABEL_14:
    v15 = [[DADeviceEvent alloc] initWithEventType:42 device:changedCopy];
    [(DADaemonXPCConnection *)self _xpcReportDAEvent:v15];
  }

LABEL_15:
}

- (void)reportDiscoveryEvent:(id)event appID:(id)d
{
  eventCopy = event;
  dCopy = d;
  configuration = [(DADiscovery *)self->_activatedDiscovery configuration];
  if (([configuration presenceOnly] & 1) == 0)
  {
    sub_100035CB4(&self->super.isa, dCopy, configuration, eventCopy);
  }
}

- (void)reportRemovedDevice:(id)device appID:(id)d discovery:(BOOL)discovery
{
  discoveryCopy = discovery;
  deviceCopy = device;
  dCopy = d;
  accessLevel = [(DADaemonXPCConnection *)self accessLevel];
  bundleID = [(DASession *)self->_activatedSession bundleID];
  if (!bundleID)
  {
    if (discoveryCopy)
    {
      configuration = [(DADiscovery *)self->_activatedDiscovery configuration];
      bundleID2 = [configuration bundleID];
      v13 = bundleID2;
      if (bundleID2)
      {
        bundleID3 = bundleID2;
      }

      else
      {
        bundleID3 = [(DADiscovery *)self->_activatedDiscovery bundleID];
      }

      bundleID = bundleID3;
    }

    else
    {
      bundleID = self->_appID;
    }
  }

  if (accessLevel == 10)
  {
    goto LABEL_13;
  }

  if (self->_accessLevel == 4)
  {
    appAccessInfoMap = [deviceCopy appAccessInfoMap];
    v16 = [appAccessInfoMap objectForKeyedSubscript:bundleID];
    if (v16)
    {

LABEL_13:
      flags = [deviceCopy flags];
      v18 = [DADeviceEvent alloc];
      if ((flags & 8) != 0)
      {
        v19 = 41;
      }

      else
      {
        v19 = 42;
      }

      v20 = [v18 initWithEventType:v19 device:deviceCopy];
      [(DADaemonXPCConnection *)self _xpcReportDAEvent:v20];

      goto LABEL_17;
    }

    v21 = [(NSString *)bundleID isEqual:dCopy];

    if (v21)
    {
      goto LABEL_13;
    }
  }

  else if (([(NSString *)bundleID isEqual:dCopy]& 1) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:
}

- (BOOL)_entitledAndReturnError:(id *)error
{
  entitledState = self->_entitledState;
  if (entitledState != 6)
  {
    v6 = DAErrorF(350005, "Missing entitlement: %s", "com.apple.DeviceAccess");
    if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100035D78(self);
      if (!error)
      {
        goto LABEL_7;
      }
    }

    else if (!error)
    {
LABEL_7:

      return entitledState == 6;
    }

    v7 = v6;
    *error = v6;
    goto LABEL_7;
  }

  return entitledState == 6;
}

- (BOOL)_findSyncExtensionPoint:(id)point bundleID:(id)d
{
  dCopy = d;
  pointCopy = point;
  v7 = [_EXQuery alloc];
  dCopy = [NSPredicate predicateWithFormat:@"bundleIdentifier == %@", dCopy];

  v9 = [v7 initWithExtensionPointIdentifier:pointCopy predicate:dCopy];
  v10 = [_EXQueryController executeQuery:v9];
  LOBYTE(dCopy) = [v10 count] != 0;

  return dCopy;
}

- (BOOL)_entitledForAccessLevel:(int)level returnError:(id *)error
{
  accessLevel = self->_accessLevel;
  if (error && accessLevel < level)
  {
    v7 = "com.apple.DeviceAccess";
    if (level > 9)
    {
      v7 = "com.apple.DeviceAccess.private";
    }

    *error = DAErrorF(350005, "Requires entitlement: %s", v7);
  }

  return accessLevel >= level;
}

- (void)xpcReceivedMessage:(id)message
{
  messageCopy = message;
  type = xpc_get_type(messageCopy);
  if (type == &_xpc_type_dictionary)
  {
    type = [(DADaemonXPCConnection *)self xpcReceivedRequest:messageCopy];
    goto LABEL_12;
  }

  v5 = messageCopy;
  if (messageCopy == &_xpc_error_connection_invalid)
  {
    if (dword_1000606C0 <= 20 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100035E5C(self);
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    type = [(DADaemonXPCConnection *)self invalidate];
    goto LABEL_12;
  }

  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 != -1 || (type = _LogCategory_Initialize(), v5 = messageCopy, type))
    {
      sub_100035E00();
LABEL_12:
      v5 = messageCopy;
    }
  }

  _objc_release_x1(type, v5);
}

- (void)xpcReceivedEvent:(id)event
{
  message = event;
  v4 = self->_xpcCnx;
  v7 = v4;
  if (v4)
  {
    xpc_connection_send_message(v4, message);
  }

  else if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      sub_100035EBC(v4, v5, v6);
    }
  }
}

- (void)xpcReceivedRequest:(id)request
{
  requestCopy = request;
  string = xpc_dictionary_get_string(requestCopy, "mTyp");
  if (string)
  {
    v7 = string;
    if (!strncmp(string, "BTIG", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcBluetoothAccessInfoGet:requestCopy];
    }

    else if (!strncmp(v7, "MDDEx", 5uLL))
    {
      [(DADaemonXPCConnection *)self _xpcCheckAppHasMediaDeviceDiscoveryExtension:requestCopy];
    }

    else if (!strncmp(v7, "DscA", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcDADiscoveryActivate:requestCopy];
    }

    else if (!strncmp(v7, "DscM", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcDADiscoveryMigrationComplete:requestCopy];
    }

    else if (!strncmp(v7, "DsSp", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcDADiscoveryInvalidateWithReason:requestCopy];
    }

    else if (!strncmp(v7, "SesA", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcDASessionActivate:requestCopy];
    }

    else if (!strncmp(v7, "DgSh", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcDiagnosticShow:requestCopy];
    }

    else if (!strncmp(v7, "RvAi", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcRemoveDeviceAppAccessInfo:requestCopy];
    }

    else if (!strncmp(v7, "RsWf", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcResetWiFiIdentifier:requestCopy];
    }

    else if (!strncmp(v7, "SASi", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcSetDeviceAccessoryServiceInfo:requestCopy];
    }

    else if (!strncmp(v7, "SAAi", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcSetDeviceAppAccessInfo:requestCopy];
    }

    else if (!strncmp(v7, "GAAc", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcGetAuthorizedAccessories:requestCopy];
    }

    else if (!strncmp(v7, "GADv", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcGetAuthorizedDevices:requestCopy];
    }

    else if (!strncmp(v7, "GDvs", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcGetDevices:requestCopy];
    }

    else if (!strncmp(v7, "RPDs", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcRequestPermissionsForDevice:requestCopy];
    }

    else if (!strncmp(v7, "MdSt", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcModifyDeviceSettings:requestCopy];
    }

    else if (!strncmp(v7, "SDvS", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcSetDeviceState:requestCopy];
    }

    else if (!strncmp(v7, "GIFs", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcGetPartialIPs:requestCopy];
    }

    else if (!strncmp(v7, "SIFs", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcSetPartialIPs:requestCopy];
    }

    else if (!strncmp(v7, "BTPM", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcBluetoothPairingMsg:requestCopy];
    }

    else if (!strncmp(v7, "wFPM", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcWiFiAwarePairingMsg:requestCopy];
    }

    else
    {
      if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
      {
        sub_100035ED8(v7);
      }

      if (CUXPCDictionaryExpectsReply())
      {
        DAErrorF(350002, "Unknown message type: '%s'");
        v8 = LABEL_33:;
        [(DADaemonXPCConnection *)self _xpcSendReplyError:v8 request:requestCopy];
      }
    }
  }

  else
  {
    if (dword_1000606C0 <= 90)
    {
      if (dword_1000606C0 != -1 || (string = _LogCategory_Initialize(), string))
      {
        sub_100035F18(string, v5, v6);
      }
    }

    if (CUXPCDictionaryExpectsReply())
    {
      DAErrorF(350001, "No message type");
      goto LABEL_33;
    }
  }
}

- (void)_xpcSendEvent:(id)event
{
  message = event;
  v4 = self->_xpcCnx;
  v7 = v4;
  if (v4)
  {
    xpc_connection_send_message(v4, message);
  }

  else
  {
    sub_100035F34(0, v5, v6);
  }
}

- (void)_xpcSendReply:(id)reply
{
  message = reply;
  v4 = self->_xpcCnx;
  v7 = v4;
  if (v4)
  {
    xpc_connection_send_message(v4, message);
  }

  else
  {
    sub_100035F94(0, v5, v6);
  }
}

- (void)_xpcSendReplyError:(id)error request:(id)request
{
  errorCopy = error;
  v7 = CUXPCDictionaryCreateReply();
  if (v7)
  {
    CUXPCEncodeNSError();
    v8 = self->_xpcCnx;
    v11 = v8;
    if (v8)
    {
      xpc_connection_send_message(v8, v7);
    }

    else
    {
      sub_100035FF4(0, v9, v10);
    }
  }

  else
  {
    sub_100036054(0, v5, v6);
  }
}

- (void)_xpcBluetoothAccessInfoGet:(id)get
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_100024BA4;
  v49 = sub_100024BB4;
  v50 = 0;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100024BBC;
  v42[3] = &unk_1000595F8;
  v44 = &v45;
  v42[4] = self;
  original = get;
  v43 = original;
  v26 = objc_retainBlock(v42);
  v3 = v46;
  obj = v46[5];
  v4 = [(DADaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v3 + 5, obj);
  if (v4)
  {
    v5 = self->_activatedSession;
    v25 = v5;
    if (v5)
    {
      bundleID = [(DASession *)v5 bundleID];
      if (bundleID)
      {
        v29 = [[NSString alloc] initWithFormat:@"%@.%@", bundleID, @"daappdata"];
        v6 = NSTemporaryDirectory();
        v7 = [NSURL fileURLWithPath:v6];
        v28 = [v7 URLByAppendingPathComponent:v29 isDirectory:0];

        v8 = [NSDictionary alloc];
        v9 = v46 + 5;
        v40 = v46[5];
        v33 = [v8 initWithContentsOfURL:v28 error:&v40];
        objc_storeStrong(v9, v40);
        if (v33)
        {
          CFDictionaryGetTypeID();
          v10 = CFDictionaryGetTypedValue();
          v34 = objc_alloc_init(DABluetoothAccessInfo);
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v11 = v10;
          v12 = 0;
          v13 = [v11 countByEnumeratingWithState:&v36 objects:v51 count:16];
          if (v13)
          {
            v14 = *v37;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v37 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  CFDictionaryGetTypeID();
                  v16 = CFDictionaryGetTypedValue();
                  if (v16)
                  {
                    CFStringGetTypeID();
                    v17 = CFDictionaryGetTypedValue();
                    if (v17)
                    {
                      v18 = [[NSUUID alloc] initWithUUIDString:v17];
                      if (v18)
                      {
                        v19 = objc_alloc_init(DABluetoothDeviceAccessInfo);
                        [v19 setIdentifier:v18];
                        if (!v12)
                        {
                          v12 = objc_alloc_init(NSMutableArray);
                        }

                        [v12 addObject:v19];
                      }
                    }
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v36 objects:v51 count:16];
            }

            while (v13);
          }

          [v34 setBluetoothDevices:v12];
          if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
          {
            v20 = CUPrintPID();
            LogPrintF(&dword_1000606C0, "[DADaemonXPCConnection _xpcBluetoothAccessInfoGet:]", 30, "BluetoothAccessInfo get: %@, from %@", v34, v20);
          }

          reply = xpc_dictionary_create_reply(original);
          CUXPCEncodeObject();
          [(DADaemonXPCConnection *)self _xpcSendEvent:reply];
        }

        else
        {
          v24 = DANestedErrorF();
          v11 = v46[5];
          v46[5] = v24;
        }
      }

      else
      {
        v23 = DAErrorF(350001, "No bundleID");
        v30 = v46[5];
        v46[5] = v23;
      }
    }

    else
    {
      v22 = DAErrorF(350001, "No session");
      v32 = v46[5];
      v46[5] = v22;
    }
  }

  (v26[2])(v26);

  _Block_object_dispose(&v45, 8);
}

- (void)_xpcCheckAppHasMediaDeviceDiscoveryExtension:(id)extension
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100024BA4;
  v17[4] = sub_100024BB4;
  v18 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100024E70;
  v13 = &unk_1000595F8;
  v16 = v17;
  selfCopy = self;
  extensionCopy = extension;
  v15 = extensionCopy;
  v5 = objc_retainBlock(&v10);
  CUXPCDecodeNSString();
  v6 = [(DADaemonServer *)self->_daemon checkAppHasMediaDeviceDiscoveryExtension:0];
  reply = xpc_dictionary_create_reply(extensionCopy);
  v8 = reply;
  if (v6)
  {
    xpc_dictionary_set_BOOL(reply, "mddExt", 1);
  }

  [(DADaemonXPCConnection *)self _xpcSendEvent:v8, 0, v10, v11, v12, v13, selfCopy];

  (v5[2])(v5);
  _Block_object_dispose(v17, 8);
}

- (void)_xpcDADiscoveryActivate:(id)activate
{
  activateCopy = activate;
  v23 = 0;
  v5 = [[DADiscovery alloc] initWithXPCObject:activateCopy error:&v23];
  v6 = v23;
  if (v5)
  {
    configuration = [v5 configuration];
    bundleID = [configuration bundleID];
    if (!bundleID)
    {
      bundleID = [v5 configurations];
      if ([bundleID count])
      {
        firstObject = [bundleID firstObject];
        bundleID2 = [firstObject bundleID];
      }

      else
      {
        bundleID3 = [v5 bundleID];

        if (!bundleID3)
        {
          if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
          {
            sub_100036208();
          }

          v20 = DAErrorF(350001, "No bundleID");
          [(DADaemonXPCConnection *)self _xpcSendReplyError:v20 request:activateCopy];

          goto LABEL_35;
        }

        if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000360B4();
        }

        bundleID2 = [v5 bundleID];
      }

      bundleID = bundleID2;
    }

    presenceOnly = [configuration presenceOnly];
    if (presenceOnly)
    {
      if ([(NSString *)self->_appID isEqualToString:bundleID])
      {
        goto LABEL_21;
      }

      v21 = v6;
      v13 = [(DADaemonXPCConnection *)self _entitledAndReturnError:&v21];
      v14 = v21;

      if ((v13 & 1) == 0)
      {
        sub_1000360E8(self, activateCopy);
LABEL_47:
        v6 = v14;
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      v22 = v6;
      v15 = [(DADaemonXPCConnection *)self _entitledAndReturnError:&v22];
      v14 = v22;

      if ((v15 & 1) == 0)
      {
        [(DADaemonXPCConnection *)self _xpcSendReplyError:v14 request:activateCopy];
        goto LABEL_47;
      }
    }

    v6 = v14;
LABEL_21:
    objc_storeStrong(&self->_activatedDiscovery, v5);
    if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036144(self);
    }

    v16 = [(DADaemonServer *)self->_daemon addDiscovery:v5];
    reply = xpc_dictionary_create_reply(activateCopy);
    if (reply)
    {
      if (v16)
      {
        v18 = presenceOnly;
      }

      else
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        CUXPCEncodeNSArrayOfObjects();
      }

      if (bundleID && [(DADaemonServer *)self->_daemon devicesPresentWithAppID:bundleID])
      {
        xpc_dictionary_set_BOOL(reply, "dvPr", 1);
      }

      v19 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
      [DADeviceAccessAnalytics markState:10 deviceID:bundleID shared:0 discovery:v5 flags:8 sourceApp:6 atTime:v19 errorCode:0];
      [(DADaemonXPCConnection *)self _xpcSendReply:reply];
    }

    else
    {
      sub_1000361A0();
    }

    goto LABEL_35;
  }

  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003623C(v6);
  }

  [(DADaemonXPCConnection *)self _xpcSendReplyError:v6 request:activateCopy];
LABEL_36:
}

- (void)_xpcDADiscoveryMigrationComplete:(id)complete
{
  completeCopy = complete;
  v14 = 0;
  v5 = [[DADiscovery alloc] initWithXPCObject:completeCopy error:&v14];
  v6 = v14;
  if (v5)
  {
    configuration = [v5 configuration];
    bundleID = [configuration bundleID];
    if (!bundleID)
    {
      bundleID = [v5 configurations];
      if ([bundleID count])
      {
        firstObject = [bundleID firstObject];
        bundleID2 = [firstObject bundleID];
      }

      else
      {
        bundleID3 = [v5 bundleID];

        if (!bundleID3)
        {
          if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
          {
            sub_100036358();
          }

          v13 = DAErrorF(350001, "No bundleID");
          [(DADaemonXPCConnection *)self _xpcSendReplyError:v13 request:completeCopy];
          goto LABEL_20;
        }

        if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
        {
          sub_100036294();
        }

        bundleID2 = [v5 bundleID];
      }

      bundleID = bundleID2;
    }

    if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000362C8(self);
    }

    [(DADaemonServer *)self->_daemon runMigrationWithDiscovery:v5 fromPostOnboarding:1];
    reply = xpc_dictionary_create_reply(completeCopy);
    v13 = reply;
    if (reply)
    {
      xpc_dictionary_set_BOOL(reply, "dvPr", 1);
      [(DADaemonXPCConnection *)self _xpcSendReply:v13];
    }

    else if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036324();
    }

LABEL_20:

    goto LABEL_21;
  }

  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003638C(v6);
  }

  [(DADaemonXPCConnection *)self _xpcSendReplyError:v6 request:completeCopy];
LABEL_21:
}

- (void)_xpcDADiscoveryInvalidateWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = self->_activatedDiscovery;
  if (v5)
  {
    CUXPCDecodeUInt64RangedEx();
    if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000606C0, "[DADaemonXPCConnection _xpcDADiscoveryInvalidateWithReason:]", 30, "Invalidating %@ due to %lu", v5, 0);
    }

    configuration = [(DADiscovery *)v5 configuration];
    bundleID = [configuration bundleID];
    if (!bundleID)
    {
      bundleID = [(DADiscovery *)v5 configurations];
      if ([bundleID count])
      {
        firstObject = [bundleID firstObject];
        bundleID2 = [firstObject bundleID];
      }

      else
      {
        bundleID3 = [(DADiscovery *)v5 bundleID];

        if (!bundleID3)
        {
          if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
          {
            sub_100036480();
          }

          v11 = DAErrorF(350001, "No bundleID");
          [(DADaemonXPCConnection *)self _xpcSendReplyError:v11 request:reasonCopy];
          goto LABEL_22;
        }

        if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000363E4();
        }

        bundleID2 = [(DADiscovery *)v5 bundleID];
      }

      bundleID = bundleID2;
    }

    v11 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [DADeviceAccessAnalytics markState:30 deviceID:bundleID shared:0 discovery:v5 flags:8 sourceApp:6 atTime:v11 errorCode:0];
    reply = xpc_dictionary_create_reply(reasonCopy);
    if (reply)
    {
      [(DADaemonXPCConnection *)self _xpcSendReply:reply];
    }

    else
    {
      sub_100036418();
    }

LABEL_22:
    goto LABEL_23;
  }

  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000364B4();
  }

  [(DADaemonXPCConnection *)self _xpcSendReplyError:0 request:reasonCopy];
LABEL_23:
}

- (void)_xpcDASessionActivate:(id)activate
{
  original = activate;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_100024BA4;
  v53 = sub_100024BB4;
  v54 = +[NSMutableDictionary dictionary];
  v48 = 0;
  v4 = [[DASession alloc] initWithXPCObject:original error:&v48];
  v5 = v48;
  if (v4)
  {
    [v4 setDispatchQueue:self->_dispatchQueue];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10002605C;
    v46[3] = &unk_100059878;
    v46[4] = self;
    v6 = v4;
    v47 = v6;
    [v6 setEventHandler:v46];
    objc_storeStrong(&self->_activatedSession, v4);
    if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      v7 = CUPrintPID();
      LogPrintF(&dword_1000606C0, "[DADaemonXPCConnection _xpcDASessionActivate:]", 30, "Activate: %@, from %@", v6, v7);
    }

    xdict = xpc_dictionary_create_reply(original);
    if (!xdict)
    {
      if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1000606C0, "[DADaemonXPCConnection _xpcDASessionActivate:]", 90, "### DASession activate create reply failed");
        v34 = 0;
        goto LABEL_57;
      }

LABEL_56:
      v34 = xdict;
LABEL_57:

      goto LABEL_58;
    }

    v55 = 0;
    if (CUXPCDecodeUInt64RangedEx() == 6)
    {
      v9 = v55;
    }

    else
    {
      v9 = 0;
    }

    bundleID = [v6 bundleID];
    v11 = bundleID;
    if (!v9 || bundleID || self->_accessLevel == 10)
    {
      if ([(NSString *)self->_appID isEqualToString:bundleID])
      {
        goto LABEL_27;
      }

      v45 = v5;
      v12 = [(DADaemonXPCConnection *)self _entitledAndReturnError:&v45];
      v13 = v45;

      if (v12)
      {
        goto LABEL_26;
      }

      parentAppID = self->_parentAppID;
      if (parentAppID)
      {
        v15 = [(NSString *)parentAppID isEqualToString:v11];
        if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
        {
          appID = self->_appID;
          v17 = self->_parentAppID;
          v18 = CUPrintPID();
          LogPrintF(&dword_1000606C0, "[DADaemonXPCConnection _xpcDASessionActivate:]", 30, "Activating for extension %@ of %@, from %@", appID, v17, v18);
        }

        if (v15)
        {
LABEL_26:
          v5 = v13;
LABEL_27:
          v19 = self->_parentAppID;
          if (!v19)
          {
            v19 = v11;
          }

          v20 = v19;
          if (v20)
          {
            if ([(DADaemonServer *)self->_daemon devicesPresentWithAppID:v20])
            {
              xpc_dictionary_set_BOOL(xdict, "dvPr", 1);
            }

            daemon = self->_daemon;
            if (!v9)
            {
              [(DADaemonServer *)daemon reportAuthorizedDevices:v20];
LABEL_45:
              [(DADaemonServer *)self->_daemon updateAppInfo:v20];
              if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
              {
                currentDeviceCapabilities = [(DADaemonServer *)self->_daemon currentDeviceCapabilities];
                v31 = "yes";
                if ((currentDeviceCapabilities & 0x400) == 0)
                {
                  v31 = "no";
                }

                LogPrintF(&dword_1000606C0, "[DADaemonXPCConnection _xpcDASessionActivate:]", 30, "Activating %@, WiFiAwareSupported: %s", v6, v31);
              }

              currentDeviceCapabilities2 = [(DADaemonServer *)self->_daemon currentDeviceCapabilities];
              if (currentDeviceCapabilities2)
              {
                xpc_dictionary_set_uint64(xdict, "cdcS", currentDeviceCapabilities2);
              }

              [(DADaemonXPCConnection *)self _xpcSendReply:xdict];
              if ([(NSString *)self->_appID isEqualToString:v11])
              {
                dispatchQueue = self->_dispatchQueue;
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_100026080;
                block[3] = &unk_1000598C8;
                block[4] = self;
                v40 = &v49;
                v39 = v11;
                dispatch_async(dispatchQueue, block);
              }

              goto LABEL_55;
            }

            v22 = [(DADaemonServer *)daemon getDevicesWithFlags:v9 appID:v20];
            CUXPCEncodeNSArrayOfObjects();
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v23 = v22;
            v24 = [v23 countByEnumeratingWithState:&v41 objects:v56 count:16];
            v35 = v5;
            v25 = 0;
            if (v24)
            {
              v26 = *v42;
              do
              {
                for (i = 0; i != v24; i = i + 1)
                {
                  if (*v42 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v25 |= [*(*(&v41 + 1) + 8 * i) flags];
                }

                v24 = [v23 countByEnumeratingWithState:&v41 objects:v56 count:16];
              }

              while (v24);
            }

            v5 = v35;
            v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 count]);
            [v50[5] setObject:v28 forKeyedSubscript:@"AccessoriesCount"];

            v29 = [NSNumber numberWithUnsignedInteger:v25];
            [v50[5] setObject:v29 forKeyedSubscript:@"AccessoryFlags"];

            [v50[5] setObject:v20 forKeyedSubscript:@"BundleID"];
          }

          else
          {
            if (!v9)
            {
              goto LABEL_45;
            }

            v23 = [(DADaemonServer *)self->_daemon getDevicesWithFlags:v9 appID:0];
            CUXPCEncodeNSArrayOfObjects();
          }

          goto LABEL_45;
        }
      }

      v20 = DAErrorF(350001, "Mismatched bundleID");
      [(DADaemonXPCConnection *)self _xpcSendReplyError:v20 request:original];
      v5 = v13;
    }

    else
    {
      v20 = DAErrorF(350001, "Global session requires private entitlement");
      [(DADaemonXPCConnection *)self _xpcSendReplyError:v20 request:original];
    }

LABEL_55:

    goto LABEL_56;
  }

  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    v8 = CUPrintNSError();
    LogPrintF(&dword_1000606C0, "[DADaemonXPCConnection _xpcDASessionActivate:]", 90, "### DASession activate decode failed: %@", v8);
  }

  [(DADaemonXPCConnection *)self _xpcSendReplyError:v5 request:original];
LABEL_58:

  _Block_object_dispose(&v49, 8);
}

- (void)_xpcDiagnosticShow:(id)show
{
  showCopy = show;
  v13 = 0;
  v5 = [(DADaemonXPCConnection *)self _entitledAndReturnError:&v13];
  v6 = v13;
  if (v5)
  {
    v12 = 0;
    v7 = CUDescriptionWithLevel();
    NSAppendPrintF(&v12, "%@", v7);
    v8 = v12;

    v9 = CUXPCDictionaryCreateReply();
    if (v9)
    {
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = @"None\n";
      }

      uTF8String = [(__CFString *)v10 UTF8String];
      if (uTF8String)
      {
        xpc_dictionary_set_string(v9, "oStr", uTF8String);
      }

      [(DADaemonXPCConnection *)self _xpcSendReply:v9];
    }

    else
    {
      sub_100036514();
    }
  }

  else
  {
    [(DADaemonXPCConnection *)self _xpcSendReplyError:v6 request:showCopy];
  }
}

- (void)_xpcRemoveDeviceAppAccessInfo:(id)info
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100024BA4;
  v21 = sub_100024BB4;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000272FC;
  v14[3] = &unk_1000595F8;
  v16 = &v17;
  v14[4] = self;
  infoCopy = info;
  v15 = infoCopy;
  v9 = objc_retainBlock(v14);
  v11 = self->_appID;
  if (v11)
  {
    v13 = 0;
    objc_opt_class();
    v5 = (v18 + 5);
    obj = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v5, obj);
    if (!v18[5])
    {
      v8 = DAErrorF(350001, "No session");
      v10 = v18[5];
      v18[5] = v8;
    }
  }

  else
  {
    v6 = DAErrorF(350001, "No valid app identifier");
    v7 = v18[5];
    v18[5] = v6;
  }

  (v9[2])(v9);
  _Block_object_dispose(&v17, 8);
}

- (void)_xpcRemoveDeviceConfirmation:(id)confirmation accessInfo:(id)info userConfirmed:(BOOL)confirmed request:(id)request
{
  confirmationCopy = confirmation;
  infoCopy = info;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100024BA4;
  v42 = sub_100024BB4;
  v43 = 0;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100027930;
  v35[3] = &unk_1000595F8;
  v37 = &v38;
  v35[4] = self;
  original = request;
  v36 = original;
  v11 = objc_retainBlock(v35);
  if (!confirmed)
  {
    v26 = DAErrorF(350006, "User canceled device removal");
    reply = v39[5];
    v39[5] = v26;
LABEL_19:

    goto LABEL_20;
  }

  if ([confirmationCopy stillTrackableWhenUnpaired])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    reply = [confirmationCopy appAccessInfoMap];
    v13 = [reply countByEnumeratingWithState:&v31 objects:v44 count:16];
    if (v13)
    {
      v14 = *v32;
LABEL_5:
      v15 = 0;
      while (1)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(reply);
        }

        v16 = *(*(&v31 + 1) + 8 * v15);
        appAccessInfoMap = [confirmationCopy appAccessInfoMap];
        v18 = [appAccessInfoMap objectForKeyedSubscript:v16];

        [v18 setState:1];
        [confirmationCopy setState:1];
        daemon = self->_daemon;
        v20 = (v39 + 5);
        obj = v39[5];
        v21 = [(DADaemonServer *)daemon updateAppAccessInfo:v18 accessoryDevice:confirmationCopy removalType:5 error:&obj];
        objc_storeStrong(v20, obj);

        if ((v21 & 1) == 0)
        {
          goto LABEL_19;
        }

        if (v13 == ++v15)
        {
          v13 = [reply countByEnumeratingWithState:&v31 objects:v44 count:16];
          if (v13)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    goto LABEL_13;
  }

  [infoCopy setState:0];
  v22 = self->_daemon;
  v23 = (v39 + 5);
  v29 = v39[5];
  v24 = [(DADaemonServer *)v22 updateAppAccessInfo:infoCopy accessoryDevice:confirmationCopy removalType:2 error:&v29];
  objc_storeStrong(v23, v29);
  if (v24)
  {
LABEL_13:
    if (dword_1000606C0 <= 40 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      v25 = CUPrintPID();
      LogPrintF(&dword_1000606C0, "[DADaemonXPCConnection _xpcRemoveDeviceConfirmation:accessInfo:userConfirmed:request:]", 40, "### RemoveDeviceConfirmation %@ success for %@", v25, confirmationCopy, original);
    }

    reply = xpc_dictionary_create_reply(original);
    if (reply)
    {
      [(DADaemonXPCConnection *)self _xpcSendReply:reply];
    }

    else if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1000606C0, "[DADaemonXPCConnection _xpcRemoveDeviceConfirmation:accessInfo:userConfirmed:request:]", 90, "### RemoveDeviceConfirmation create reply failed");
    }

    goto LABEL_19;
  }

LABEL_20:
  (v11[2])(v11);

  _Block_object_dispose(&v38, 8);
}

- (void)_xpcReportDAEvent:(id)event
{
  eventCopy = event;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "mTyp", "Evnt");
  [eventCopy encodeWithXPCObject:v5];

  [(DADaemonXPCConnection *)self _xpcSendEvent:v5];
}

- (void)_xpcResetWiFiIdentifier:(id)identifier
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100024BA4;
  v17 = sub_100024BB4;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100027CB0;
  v10[3] = &unk_1000595F8;
  v12 = &v13;
  v10[4] = self;
  identifierCopy = identifier;
  v11 = identifierCopy;
  v4 = objc_retainBlock(v10);
  v9 = 0;
  objc_opt_class();
  v5 = v14;
  obj = v14[5];
  CUXPCDecodeObject();
  objc_storeStrong(v5 + 5, obj);
  if (!v14[5])
  {
    v6 = DAErrorF(350001, "No session");
    v7 = v14[5];
    v14[5] = v6;
  }

  (v4[2])(v4);
  _Block_object_dispose(&v13, 8);
}

- (void)_xpcSetDeviceAccessoryServiceInfo:(id)info
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100024BA4;
  v17 = sub_100024BB4;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100028284;
  v10[3] = &unk_1000595F8;
  v12 = &v13;
  v10[4] = self;
  infoCopy = info;
  v11 = infoCopy;
  v4 = objc_retainBlock(v10);
  v9 = 0;
  objc_opt_class();
  v5 = v14;
  obj = v14[5];
  CUXPCDecodeObject();
  objc_storeStrong(v5 + 5, obj);
  if (!v14[5])
  {
    v6 = DAErrorF(350001, "No session");
    v7 = v14[5];
    v14[5] = v6;
  }

  (v4[2])(v4);
  _Block_object_dispose(&v13, 8);
}

- (void)_xpcSetDeviceAppAccessInfo:(id)info
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100024BA4;
  v17 = sub_100024BB4;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000287E0;
  v10[3] = &unk_1000595F8;
  v12 = &v13;
  v10[4] = self;
  infoCopy = info;
  v11 = infoCopy;
  v4 = objc_retainBlock(v10);
  v9 = 0;
  objc_opt_class();
  v5 = v14;
  obj = v14[5];
  CUXPCDecodeObject();
  objc_storeStrong(v5 + 5, obj);
  if (!v14[5])
  {
    v6 = DAErrorF(350001, "No session");
    v7 = v14[5];
    v14[5] = v6;
  }

  (v4[2])(v4);
  _Block_object_dispose(&v13, 8);
}

- (void)_xpcGetAuthorizedAccessories:(id)accessories
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100024BA4;
  v17 = sub_100024BB4;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100028C5C;
  v10[3] = &unk_1000595F8;
  v12 = &v13;
  v10[4] = self;
  accessoriesCopy = accessories;
  v11 = accessoriesCopy;
  v4 = objc_retainBlock(v10);
  v9 = 0;
  objc_opt_class();
  v5 = (v14 + 5);
  obj = v14[5];
  CUXPCDecodeObject();
  objc_storeStrong(v5, obj);
  if (!v14[5])
  {
    v6 = DAErrorF(350001, "No session");
    v7 = v14[5];
    v14[5] = v6;
  }

  (v4[2])(v4);
  _Block_object_dispose(&v13, 8);
}

- (void)_xpcGetAuthorizedDevices:(id)devices
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100024BA4;
  v17 = sub_100024BB4;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000290E8;
  v10[3] = &unk_1000595F8;
  v12 = &v13;
  v10[4] = self;
  devicesCopy = devices;
  v11 = devicesCopy;
  v4 = objc_retainBlock(v10);
  v9 = 0;
  objc_opt_class();
  v5 = (v14 + 5);
  obj = v14[5];
  CUXPCDecodeObject();
  objc_storeStrong(v5, obj);
  if (!v14[5])
  {
    v6 = DAErrorF(350001, "No session");
    v7 = v14[5];
    v14[5] = v6;
  }

  (v4[2])(v4);
  _Block_object_dispose(&v13, 8);
}

- (void)_xpcGetDevices:(id)devices
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100024BA4;
  v20 = sub_100024BB4;
  v21 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000296A8;
  v13[3] = &unk_1000595F8;
  v15 = &v16;
  v13[4] = self;
  devicesCopy = devices;
  v14 = devicesCopy;
  v5 = objc_retainBlock(v13);
  v6 = self->_appID;
  if (v6)
  {
    objc_opt_class();
    v7 = (v17 + 5);
    obj = v17[5];
    CUXPCDecodeObject();
    objc_storeStrong(v7, obj);
    if (!v17[5])
    {
      v10 = DAErrorF(350001, "No session");
      v11 = v17[5];
      v17[5] = v10;
    }
  }

  else
  {
    v8 = DAErrorF(350001, "No valid app identifier");
    v9 = v17[5];
    v17[5] = v8;
  }

  (v5[2])(v5);
  _Block_object_dispose(&v16, 8);
}

- (void)_xpcRequestPermissionsForDevice:(id)device
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100024BA4;
  v14 = sub_100024BB4;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000299DC;
  v7[3] = &unk_1000595F8;
  v9 = &v10;
  v7[4] = self;
  deviceCopy = device;
  v8 = deviceCopy;
  v4 = objc_retainBlock(v7);
  objc_opt_class();
  v5 = v11;
  obj = v11[5];
  CUXPCDecodeObject();
  objc_storeStrong(v5 + 5, obj);

  (v4[2])(v4);
  _Block_object_dispose(&v10, 8);
}

- (void)_xpcModifyDeviceSettings:(id)settings
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100024BA4;
  v21 = sub_100024BB4;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100029F40;
  v14[3] = &unk_1000595F8;
  v16 = &v17;
  v14[4] = self;
  settingsCopy = settings;
  v15 = settingsCopy;
  v5 = objc_retainBlock(v14);
  v6 = self->_appID;
  if (v6)
  {
    v7 = v18;
    obj = v18[5];
    v13 = 0;
    CUXPCDecodeNSString();
    objc_storeStrong(v7 + 5, obj);
    if (!v18[5])
    {
      v10 = DAErrorF(350001, "No device ID");
      v11 = v18[5];
      v18[5] = v10;
    }
  }

  else
  {
    v8 = DAErrorF(350001, "No appID");
    v9 = v18[5];
    v18[5] = v8;
  }

  (v5[2])(v5);
  _Block_object_dispose(&v17, 8);
}

- (void)_xpcSetDeviceState:(id)state
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100024BA4;
  v18 = sub_100024BB4;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002A4E8;
  v11[3] = &unk_1000595F8;
  v13 = &v14;
  v11[4] = self;
  stateCopy = state;
  v12 = stateCopy;
  v5 = objc_retainBlock(v11);
  if (self->_entitledState == 6)
  {
    xpc_dictionary_get_BOOL(stateCopy, "simA");
  }

  v10 = 0;
  objc_opt_class();
  v6 = (v15 + 5);
  obj = v15[5];
  CUXPCDecodeObject();
  objc_storeStrong(v6, obj);
  if (!v15[5])
  {
    v7 = DAErrorF(350001, "No device");
    v8 = v15[5];
    v15[5] = v7;
  }

  (v5[2])(v5);
  _Block_object_dispose(&v14, 8);
}

- (void)_xpcSetPartialIPs:(id)ps
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100024BA4;
  v33 = sub_100024BB4;
  v34 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10002A9D8;
  v26[3] = &unk_1000595F8;
  v28 = &v29;
  v26[4] = self;
  psCopy = ps;
  v27 = psCopy;
  v5 = objc_retainBlock(v26);
  v24 = 0u;
  v25 = 0u;
  xpc_connection_get_audit_token();
  v6 = xpc_copy_entitlement_for_token();
  v7 = v6;
  if (v6)
  {
    v23 = 0;
    if (xpc_dictionary_get_BOOL(v6, "com.apple.DeviceAccess"))
    {
      if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1000606C0, "[DADaemonXPCConnection _xpcSetPartialIPs:]", 30, "setPartialIPs: allowing entitled process to set for arbitrary app");
      }

      CUXPCDecodeNSString();
      goto LABEL_12;
    }
  }

  else
  {
    v23 = 0;
  }

  v8 = v30;
  obj = v30[5];
  v21[0] = v24;
  v21[1] = v25;
  v9 = [LSBundleRecord bundleRecordForAuditToken:v21 error:&obj];
  objc_storeStrong(v8 + 5, obj);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [v9 bundleIdentifier];
    v11 = v23;
    v23 = bundleIdentifier;
  }

LABEL_12:
  if (!v23)
  {
    v16 = DAErrorF(350001, "No App Bundle ID");
    v17 = v30[5];
    v30[5] = v16;

    goto LABEL_20;
  }

  *&v21[0] = 0;
  objc_opt_class();
  v12 = v30;
  v20 = v30[5];
  CUXPCDecodeNSArrayOfClass();
  objc_storeStrong(v12 + 5, v20);
  v13 = v30 + 5;
  if (!v30[5])
  {
    if (!*&v21[0])
    {
      v18 = DAErrorF(350001, "No partial IPs");
      reply = v30[5];
      v30[5] = v18;
LABEL_18:

      goto LABEL_19;
    }

    daemon = self->_daemon;
    v19 = 0;
    [(DADaemonServer *)daemon setPartialIPsForAppBundleID:v23 partialIPs:*&v21[0] error:&v19];
    objc_storeStrong(v13, v19);
    if (!v30[5])
    {
      reply = xpc_dictionary_create_reply(psCopy);
      if (reply)
      {
        [(DADaemonXPCConnection *)self _xpcSendReply:reply];
      }

      else if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1000606C0, "[DADaemonXPCConnection _xpcSetPartialIPs:]", 90, "### SetPartialIPs create reply failed");
      }

      goto LABEL_18;
    }
  }

LABEL_19:

LABEL_20:
  (v5[2])(v5);

  _Block_object_dispose(&v29, 8);
}

- (void)_xpcBluetoothPairingMsg:(id)msg
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100024BA4;
  v19 = sub_100024BB4;
  v20 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002AE88;
  v12[3] = &unk_1000595F8;
  v14 = &v15;
  v12[4] = self;
  msgCopy = msg;
  v13 = msgCopy;
  v5 = objc_retainBlock(v12);
  if ([(DADaemonXPCConnection *)self accessLevel]== 10)
  {
    v6 = (v16 + 5);
    obj = v16[5];
    CUXPCDecodeNSString();
    objc_storeStrong(v6, obj);
    v9 = DAErrorF(350001, "Invalid Bluetooth pairing message subtype");
    v10 = v16[5];
    v16[5] = v9;
  }

  else
  {
    v7 = DAErrorF(350001, "process not entitled");
    v8 = v16[5];
    v16[5] = v7;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v15, 8);
}

- (void)_xpcWiFiAwarePairingMsg:(id)msg
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100024BA4;
  v19 = sub_100024BB4;
  v20 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002B204;
  v12[3] = &unk_1000595F8;
  v14 = &v15;
  v12[4] = self;
  msgCopy = msg;
  v13 = msgCopy;
  v5 = objc_retainBlock(v12);
  if ([(DADaemonXPCConnection *)self accessLevel]== 10)
  {
    objc_opt_class();
    v6 = (v16 + 5);
    obj = v16[5];
    CUXPCDecodeObject();
    objc_storeStrong(v6, obj);
    v9 = DAErrorF(350001, "Invalid WiFiAware pairing info");
    v10 = v16[5];
    v16[5] = v9;
  }

  else
  {
    v7 = DAErrorF(350001, "process not entitled");
    v8 = v16[5];
    v16[5] = v7;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v15, 8);
}

- (void)_xpcGetPartialIPs:(id)ps
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100024BA4;
  v23 = sub_100024BB4;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002B64C;
  v16[3] = &unk_1000595F8;
  v18 = &v19;
  v16[4] = self;
  psCopy = ps;
  v17 = psCopy;
  v4 = objc_retainBlock(v16);
  v14 = 0u;
  v15 = 0u;
  xpc_connection_get_audit_token();
  v5 = xpc_copy_entitlement_for_token();
  v6 = v5;
  if (v5 && xpc_dictionary_get_BOOL(v5, "com.apple.DeviceAccess"))
  {
    v7 = v20;
    obj = v20[5];
    v13 = 0;
    CUXPCDecodeNSString();
    objc_storeStrong(v7 + 5, obj);
    v10 = DAErrorF(350001, "No App ID");
    v11 = v20[5];
    v20[5] = v10;
  }

  else
  {
    v8 = DAErrorF(350001, "process not entitled");
    v9 = v20[5];
    v20[5] = v8;
  }

  (v4[2])(v4);
  _Block_object_dispose(&v19, 8);
}

- (void)reportDeviceConnectionStatusChanged:(id)changed
{
  changedCopy = changed;
  accessLevel = [(DADaemonXPCConnection *)self accessLevel];
  bundleID = [(DASession *)self->_activatedSession bundleID];
  deviceFlags = [(DASession *)self->_activatedSession deviceFlags];
  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    v7 = DADeviceFlagsToString();
    LogPrintF(&dword_1000606C0, "[DADaemonXPCConnection reportDeviceConnectionStatusChanged:]", 90, "### reportDeviceConnectionStatusChanged %@ flags:%@ %@", bundleID, v7, changedCopy);
  }

  if (accessLevel == 10 && (deviceFlags & 0x800) != 0)
  {
    v8 = [[DADeviceEvent alloc] initWithEventType:35 device:changedCopy];
    [(DADaemonXPCConnection *)self _xpcReportDAEvent:v8];
  }
}

- (void)reportDevicesPresentChanged:(BOOL)changed appID:(id)d
{
  changedCopy = changed;
  activatedSession = self->_activatedSession;
  dCopy = d;
  bundleID = [(DASession *)activatedSession bundleID];
  v9 = bundleID;
  if (bundleID)
  {
    v16 = bundleID;
  }

  else
  {
    configuration = [(DADiscovery *)self->_activatedDiscovery configuration];
    bundleID2 = [configuration bundleID];
    v12 = bundleID2;
    if (bundleID2)
    {
      bundleID3 = bundleID2;
    }

    else
    {
      bundleID3 = [(DADiscovery *)self->_activatedDiscovery bundleID];
    }

    v16 = bundleID3;
  }

  v14 = [v16 isEqual:dCopy];
  if (v14)
  {
    v15 = [[DAEventDevicesPresent alloc] initWithPresent:changedCopy devicesMigrated:0];
    [(DADaemonXPCConnection *)self _xpcReportDAEvent:v15];
  }
}

- (void)reportDevicesMigrated:(id)migrated appID:(id)d
{
  migratedCopy = migrated;
  dCopy = d;
  configuration = [(DADiscovery *)self->_activatedDiscovery configuration];
  accessLevel = [(DADaemonXPCConnection *)self accessLevel];
  bundleID = [(DASession *)self->_activatedSession bundleID];
  if (!bundleID && (([configuration bundleID], (bundleID = objc_claimAutoreleasedReturnValue()) == 0) ? (v10 = accessLevel == 10) : (v10 = 0), v10))
  {
    v11 = 0;
  }

  else
  {
    v11 = bundleID;
    if (![bundleID isEqual:dCopy])
    {
      goto LABEL_8;
    }
  }

  [(DADaemonXPCConnection *)self _xpcReportDAEvent:migratedCopy];
LABEL_8:
}

@end