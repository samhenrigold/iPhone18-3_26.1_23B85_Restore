@interface CBConnection
- (BOOL)_prepareWriteRequest:(id)request error:(id *)error;
- (BOOL)_processReadStatus;
- (BOOL)_runConnectStart;
- (BOOL)_runSetupChannel;
- (BOOL)_setupIOAndReturnError:(id *)error;
- (BOOL)_startConnectingAndReturnError:(id *)error;
- (BOOL)activateDirectAndReturnError:(id *)error;
- (BOOL)updateWithXPCSubscriberInfo:(id)info;
- (CBConnection)init;
- (CBConnection)initWithXPCEventRepresentation:(id)representation error:(id *)error;
- (CBConnection)initWithXPCObject:(id)object error:(id *)error;
- (NSString)description;
- (id)_ensureXPCStarted;
- (void)_abortReadsWithError:(id)error;
- (void)_abortWritesWithError:(id)error;
- (void)_activateWithCompletion:(id)completion;
- (void)_activateXPCCompleted:(id)completed;
- (void)_activateXPCStart:(BOOL)start;
- (void)_completeReadRequest:(id)request error:(id)error;
- (void)_completeWriteRequest:(id)request error:(id)error;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_pairWithOOBData:(id)data;
- (void)_pairingGenerateOOBDataWithCompletionHandler:(id)handler;
- (void)_pairingPerformActionBLE:(int)e withOptions:(id)options completionHandler:(id)handler;
- (void)_pairingPerformActionClassic:(int)classic completionHandler:(id)handler;
- (void)_pairingPerformActionClassic:(int)classic withOptions:(id)options completionHandler:(id)handler;
- (void)_pairingSetOOBEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)_prepareReadRequest:(id)request;
- (void)_processReads:(BOOL)reads;
- (void)_processWrites;
- (void)_reportError:(id)error;
- (void)_run;
- (void)_xpcReceivedMessage:(id)message;
- (void)activateWithCompletion:(id)completion;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)dealloc;
- (void)disconnectWithCompletion:(id)completion;
- (void)encodeWithXPCObject:(id)object;
- (void)invalidate;
- (void)pairWithOOBData:(id)data;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)pairingGenerateOOBDataWithCompletionHandler:(id)handler;
- (void)pairingPerformAction:(int)action completionHandler:(id)handler;
- (void)pairingPerformAction:(int)action withOptions:(id)options completionHandler:(id)handler;
- (void)pairingSetOOBEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error;
- (void)readWithCBReadRequest:(id)request;
- (void)readWithRequest:(id)request;
- (void)setLabel:(id)label;
- (void)writeEndOfDataWithCompletion:(id)completion;
- (void)writeWithCBWriteRequest:(id)request;
- (void)writeWithRequest:(id)request;
- (void)xpcForwardMessage:(id)message;
- (void)xpcReceivedForwardedEvent:(id)event;
- (void)xpcReceivedMessage:(id)message;
- (void)xpcReceivedPairingCompleted:(id)completed;
- (void)xpcReceivedPairingPrompt:(id)prompt;
@end

@implementation CBConnection

- (CBConnection)init
{
  v5.receiver = self;
  v5.super_class = CBConnection;
  v2 = [(CBConnection *)&v5 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    v2->_connectionLatency = -99;
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v2->_socketFD = -1;
    v2->_ucat = &gLogCategory_CBConnection;
    v3 = v2;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    [(CBConnection *)self dealloc];
    [(CBConnection *)v4 encodeWithXPCObject:v5, v6];
  }

  else
  {
    ucat = self->_ucat;
    if (ucat)
    {
      if ((ucat->var3 & 0x40000) != 0)
      {
        selfCopy = self;
        LogCategory_Remove();
        self = selfCopy;
        selfCopy->_ucat = 0;
      }
    }

    v7.receiver = self;
    v7.super_class = CBConnection;
    [(CBConnection *)&v7 dealloc];
  }
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  clientID = self->_clientID;
  xdict = objectCopy;
  if (clientID)
  {
    xpc_dictionary_set_uint64(objectCopy, "cid", clientID);
  }

  connectionFlags = self->_connectionFlags;
  if (connectionFlags)
  {
    xpc_dictionary_set_uint64(xdict, "CnFl", connectionFlags);
  }

  connectTimeoutSeconds = self->_connectTimeoutSeconds;
  if (connectTimeoutSeconds != 0.0)
  {
    xpc_dictionary_set_double(xdict, "cnTO", connectTimeoutSeconds);
  }

  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    xpc_dictionary_set_uint64(xdict, "intF", internalFlags);
  }

  CUXPCEncodeObject();
  if (self->_blePSM)
  {
    xpc_dictionary_set_uint64(xdict, "psm", self->_blePSM);
  }

  serviceFlags = self->_serviceFlags;
  if (serviceFlags)
  {
    xpc_dictionary_set_uint64(xdict, "svFl", serviceFlags);
  }

  CUXPCEncodeObject();
  socketFD = self->_socketFD;
  if (socketFD)
  {
    xpc_dictionary_set_int64(xdict, "sFD", socketFD);
  }

  useCase = self->_useCase;
  if (useCase)
  {
    xpc_dictionary_set_uint64(xdict, "ucas", useCase);
  }

  CUXPCEncodeNSArrayOfNSString();
}

- (NSString)description
{
  blePeerUUID = self->_blePeerUUID;
  if (blePeerUUID)
  {
    v4 = blePeerUUID;
  }

  else
  {
    peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
    identifier = [peer identifier];
    v7 = identifier;
    if (identifier)
    {
      identifier2 = identifier;
    }

    else
    {
      identifier2 = [(CBDevice *)self->_peerDevice identifier];
    }

    v4 = identifier2;
  }

  v63 = 0;
  NSAppendPrintF_safe(&v63, "CBConnection");
  v9 = v63;
  v10 = v9;
  label = self->_label;
  if (label)
  {
    v62 = v9;
    v12 = label;
    NSAppendPrintF_safe(&v62, "-%@", v12);
    v13 = v62;

    v10 = v13;
  }

  v61 = v10;
  NSAppendPrintF_safe(&v61, ": Peer %@", v4);
  v14 = v61;

  v60 = v14;
  NSAppendPrintF_safe(&v60, ", CID 0x%X", self->_clientID);
  v15 = v60;

  blePSM = self->_blePSM;
  if (self->_blePSM)
  {
    v59 = v15;
    NSAppendPrintF_safe(&v59, ", PSM 0x%X", blePSM);
    v17 = v59;

    v15 = v17;
  }

  if (self->_connectionFlags)
  {
    v58 = v15;
    v18 = CUPrintFlags32();
    NSAppendPrintF_safe(&v58, ", CF %@", v18);
    v19 = v58;

    v15 = v19;
  }

  connectionLatency = self->_connectionLatency;
  if (connectionLatency != -99)
  {
    v57 = v15;
    v21 = CBCentralManagerConnectionLatencyToString(connectionLatency);
    NSAppendPrintF_safe(&v57, ", CL %s", v21);
    v22 = v57;

    v15 = v22;
  }

  if (self->_serviceFlags)
  {
    v56 = v15;
    v23 = CUPrintFlags32();
    NSAppendPrintF_safe(&v56, ", SF %@", v23);
    v24 = v56;

    v15 = v24;
  }

  remoteDevice = self->_remoteDevice;
  if (remoteDevice)
  {
    v55 = v15;
    v26 = remoteDevice;
    NSAppendPrintF_safe(&v55, ", Remote %@", v26);
    v27 = v55;

    v15 = v27;
  }

  connectTimeoutSeconds = self->_connectTimeoutSeconds;
  if (connectTimeoutSeconds != 0.0)
  {
    v54 = v15;
    NSAppendPrintF_safe(&v54, ", CnTO %.3f secs", connectTimeoutSeconds);
    v29 = v54;

    v15 = v29;
  }

  serviceUUIDs = self->_serviceUUIDs;
  if (serviceUUIDs)
  {
    v53 = v15;
    v31 = serviceUUIDs;
    v32 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v53, ", SrvU %@", v32);
    v33 = v53;

    v15 = v33;
  }

  socketFD = self->_socketFD;
  if (socketFD)
  {
    v52 = v15;
    NSAppendPrintF_safe(&v52, ", Socket %d", socketFD);
    v35 = v52;

    v15 = v35;
  }

  useCase = self->_useCase;
  if (useCase)
  {
    v51 = v15;
    if (useCase < 0x20000)
    {
      v38 = useCase - 1;
      v37 = "HealthKit";
      switch(v38)
      {
        case 0:
          goto LABEL_233;
        case 1:
          v37 = "HomeKit";
          break;
        case 2:
          v37 = "FindMyObjectConnection";
          break;
        case 3:
          v37 = "FindMyObjectConnectionTransient";
          break;
        case 4:
          v37 = "MIDI";
          break;
        case 5:
          v37 = "Continuity";
          break;
        case 6:
          v37 = "InstantHotSpot";
          break;
        case 7:
          v37 = "NearBy";
          break;
        case 8:
          v37 = "Sharing";
          break;
        case 9:
          v37 = "HearingSupport";
          break;
        case 10:
          v37 = "Magnet";
          break;
        case 11:
          v37 = "HID";
          break;
        case 12:
          v37 = "LEA";
          break;
        case 13:
          v37 = "External";
          break;
        case 14:
          v37 = "ExternalMedical";
          break;
        case 15:
          v37 = "ExternalLock";
          break;
        case 16:
          v37 = "ExternalWatch";
          break;
        case 17:
          v37 = "SmartRouting";
          break;
        case 18:
          v37 = "DigitalID";
          break;
        case 19:
          v37 = "DigitalKey";
          break;
        case 20:
          v37 = "DigitalCarKey";
          break;
        case 21:
          v37 = "HeySiri";
          break;
        case 22:
          v37 = "ThirdPartyApp";
          break;
        case 23:
          v37 = "CNJ";
          break;
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
        case 58:
        case 59:
        case 60:
        case 61:
        case 62:
        case 63:
        case 64:
        case 65:
        case 66:
        case 67:
        case 68:
        case 69:
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 75:
        case 76:
        case 77:
        case 78:
        case 79:
        case 80:
        case 81:
        case 82:
        case 83:
        case 84:
        case 85:
        case 86:
        case 87:
        case 88:
        case 89:
        case 90:
        case 91:
        case 92:
        case 93:
        case 94:
        case 95:
        case 96:
        case 97:
        case 98:
        case 99:
        case 100:
        case 101:
        case 102:
        case 103:
        case 104:
        case 105:
        case 106:
        case 107:
        case 108:
        case 109:
        case 110:
        case 111:
        case 112:
        case 113:
        case 114:
        case 115:
        case 116:
        case 117:
        case 118:
        case 119:
        case 120:
        case 121:
        case 122:
        case 123:
        case 124:
        case 125:
        case 126:
        case 127:
        case 128:
        case 129:
        case 130:
        case 131:
        case 132:
        case 133:
        case 134:
        case 135:
        case 136:
        case 137:
        case 138:
        case 139:
        case 140:
        case 141:
        case 142:
        case 143:
        case 144:
        case 145:
        case 146:
        case 147:
        case 148:
        case 149:
        case 150:
        case 151:
        case 152:
        case 153:
        case 154:
        case 155:
        case 156:
        case 157:
        case 158:
        case 159:
        case 160:
        case 161:
        case 162:
        case 163:
        case 164:
        case 165:
        case 166:
        case 167:
        case 168:
        case 169:
        case 170:
        case 171:
        case 172:
        case 173:
        case 174:
        case 175:
        case 176:
        case 177:
        case 178:
        case 179:
        case 180:
        case 181:
        case 182:
        case 183:
        case 184:
        case 185:
        case 186:
        case 187:
        case 188:
        case 189:
        case 190:
        case 191:
        case 192:
        case 193:
        case 194:
        case 195:
        case 196:
        case 197:
        case 198:
        case 199:
        case 200:
        case 201:
        case 202:
        case 203:
        case 204:
        case 205:
        case 206:
        case 207:
        case 208:
        case 209:
        case 210:
        case 211:
        case 212:
        case 213:
        case 214:
        case 215:
        case 216:
        case 217:
        case 218:
        case 219:
        case 220:
        case 221:
        case 222:
        case 223:
        case 224:
        case 225:
        case 226:
        case 227:
        case 228:
        case 229:
        case 230:
        case 231:
        case 232:
        case 233:
        case 234:
        case 235:
        case 236:
        case 237:
        case 238:
        case 239:
        case 240:
        case 241:
        case 242:
        case 243:
        case 244:
        case 245:
        case 246:
        case 247:
        case 248:
        case 249:
        case 250:
        case 251:
        case 252:
        case 253:
        case 254:
        case 260:
        case 261:
          goto LABEL_95;
        case 255:
          v37 = "DevicePresenceDetection";
          break;
        case 256:
          v37 = "AudioBox";
          break;
        case 257:
          v37 = "SIMTransfer";
          break;
        case 258:
          v37 = "ProximityScreenOnLeechScan";
          break;
        case 259:
          v37 = "MacMigrate";
          break;
        case 262:
          v37 = "HIDUARTService";
          break;
        case 263:
          v37 = "AccessibilitySwitchControlPairing";
          break;
        case 264:
          v37 = "BaseBandFastConnect";
          break;
        case 265:
          v37 = "SafetyAlerts";
          break;
        case 266:
          v37 = "LECarPlay";
          break;
        case 267:
          v37 = "TCCBluetooth";
          break;
        case 268:
          v37 = "AOPBufferLeech";
          break;
        case 269:
          v37 = "HighPriorityScanWiFi";
          break;
        default:
          switch("HealthKit")
          {
            case 0x10000u:
              v37 = "FindMyAction";
              break;
            case 0x10001u:
              v37 = "FindMyBackground";
              break;
            case 0x10002u:
              v37 = "FindMyActionHELE";
              break;
            case 0x10003u:
              v37 = "FindMyBackgroundHELE";
              break;
            case 0x10004u:
              v37 = "FindMyActionTransient";
              break;
            case 0x10005u:
              v37 = "FindMyBackgroundTransient";
              break;
            case 0x10006u:
              v37 = "FindMyActionHELETransient";
              break;
            case 0x10007u:
              v37 = "FindMyBackgroundHELETransient";
              break;
            case 0x10008u:
              v37 = "FindMyNotOptedIn";
              break;
            case 0x10009u:
              v37 = "FindMyOptedIn";
              break;
            case 0x1000Au:
              v37 = "FindMySepAlertsEnabled";
              break;
            case 0x1000Bu:
              v37 = "FindMyTemporaryAggressiveLegacy";
              break;
            case 0x1000Cu:
              v37 = "FindMyTemporaryLongAggressive";
              break;
            case 0x1000Du:
              v37 = "FindMyBTFindingUserInitiated";
              break;
            case 0x1000Eu:
              v37 = "FindMyHELE";
              break;
            case 0x1000Fu:
              v37 = "FindMyBeaconOnDemand";
              break;
            case 0x10010u:
              v37 = "FindMyWildTimedScan";
              break;
            case 0x10011u:
              v37 = "FindMyBackgroundLeechScan";
              break;
            case 0x10012u:
              v37 = "FindMySnifferMode";
              break;
            case 0x10013u:
              v37 = "FindMyUnpair";
              break;
            case 0x10014u:
              v37 = "FindMyUnpairHELE";
              break;
            case 0x10015u:
              v37 = "FindMyPlaySound";
              break;
            case 0x10016u:
              v37 = "FindMyPlaySoundHELE";
              break;
            case 0x10017u:
              v37 = "FindMyNotOptedInBeepOnMoveWaking";
              break;
            case 0x10018u:
              v37 = "FindMyUTTransient";
              break;
            case 0x10019u:
              v37 = "FindMyUTHELETransient";
              break;
            case 0x1001Au:
              v37 = "FindMyActionExtendedRange";
              break;
            case 0x1001Bu:
              v37 = "FindMyActionExtendedRangeLE2M";
              break;
            case 0x1001Cu:
              v37 = "FindMyActionExtendedRangeTransient";
              break;
            case 0x1001Du:
              v37 = "FindMyPlaySoundExtendedRange";
              break;
            case 0x1001Eu:
              v37 = "FindMyPair";
              break;
            case 0x1001Fu:
              v37 = "FindMyTemporaryAggressiveLegacyExtendedRange";
              break;
            default:
              goto LABEL_95;
          }

          break;
      }

      goto LABEL_233;
    }

    if (useCase > 0x80000)
    {
      if (useCase < 0x100000)
      {
        if (useCase <= 851968)
        {
          if (useCase >= 655360)
          {
            if (useCase <= 720896)
            {
              if (useCase == 655360)
              {
                v37 = "AccessDigitalHomeKey";
                goto LABEL_233;
              }

              if (useCase == 720896)
              {
                v37 = "SoftwareUpdateBTWake";
                goto LABEL_233;
              }
            }

            else
            {
              switch(useCase)
              {
                case 720897:
                  v37 = "SofrwareUpdateOutboxControllerAuth";
                  goto LABEL_233;
                case 786432:
                  v37 = "ProxControlDeviceClose";
                  goto LABEL_233;
                case 851968:
                  v37 = "DCTProtocolTelephony";
                  goto LABEL_233;
              }
            }
          }

          else
          {
            if (useCase <= 524290)
            {
              if (useCase == 524289)
              {
                v37 = "ADPDBuffer";
              }

              else
              {
                v37 = "MicroLocation";
              }

              goto LABEL_233;
            }

            switch(useCase)
            {
              case 524291:
                v37 = "MicroLocationLeech";
                goto LABEL_233;
              case 589824:
                v37 = "FindNearbyRemote";
                goto LABEL_233;
              case 589825:
                v37 = "FindNearbyPencil";
                goto LABEL_233;
            }
          }
        }

        else if (useCase <= 983041)
        {
          if (useCase <= 917504)
          {
            if (useCase == 851969)
            {
              v37 = "DCTProtocolDataAndTelephony";
              goto LABEL_233;
            }

            if (useCase == 917504)
            {
              v37 = "NearbyFaceTime";
              goto LABEL_233;
            }
          }

          else
          {
            switch(useCase)
            {
              case 917505:
                v37 = "NearbyFaceTimeData";
                goto LABEL_233;
              case 983040:
                v37 = "SOSBeaconPartA";
                goto LABEL_233;
              case 983041:
                v37 = "SOSBeaconPartB";
                goto LABEL_233;
            }
          }
        }

        else
        {
          if (useCase <= 983044)
          {
            if (useCase == 983042)
            {
              v37 = "SOSBeaconPrecisionFindResponse";
            }

            else if (useCase == 983043)
            {
              v37 = "SOSBeaconPrecisionFindRequest";
            }

            else
            {
              v37 = "SOSBeaconScan";
            }

            goto LABEL_233;
          }

          switch(useCase)
          {
            case 983045:
              v37 = "SOSBeaconActivateScan";
              goto LABEL_233;
            case 983046:
              v37 = "SOSBeaconActivateAdvA";
              goto LABEL_233;
            case 983047:
              v37 = "SOSBeaconActivateAdvB";
              goto LABEL_233;
          }
        }
      }

      else
      {
        if (useCase > 2147418111)
        {
          switch(useCase)
          {
            case 2147418112:
              v37 = "InternalTestNoLockScan";
              break;
            case 2147418113:
              v37 = "InternalTestNoScreenOffScan";
              break;
            case 2147418114:
              v37 = "InternalTestScanWithNoDups";
              break;
            case 2147418115:
              v37 = "InternalTestScanWithDups";
              break;
            case 2147418116:
              v37 = "InternalTestScanFor20Seconds";
              break;
            case 2147418117:
              v37 = "InternalTestActiveScan";
              break;
            case 2147418118:
              v37 = "InternalTestUUIDScan";
              break;
            case 2147418119:
              v37 = "InternalTestScanFor10ClockSeconds";
              break;
            case 2147418120:
              v37 = "InternalTestScanBoost";
              break;
            case 2147418121:
              v37 = "InternalTestDiscoveryScanWithMRC";
              break;
            case 2147418122:
              v37 = "InternalTestAdvWithHigherPower";
              break;
            case 2147418123:
              v37 = "InternalTestScanLowDutyCycleMCOnly";
              break;
            case 2147418124:
              v37 = "InternalTestUUIDScanWithMinRSSI";
              break;
            case 2147418125:
              v37 = "InternalTestUUIDScanWithMinRSSIMediumLow";
              break;
            case 2147418126:
              v37 = "InternalTestAdvWithHigherPowerServiceDataConnectable";
              break;
            case 2147418127:
              v37 = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
              break;
            case 2147418128:
              v37 = "InternalTestAdvWithHigherPowerServiceDataS2";
              break;
            case 2147418129:
              v37 = "InternalTestAdvWithHigherPowerServiceDataS8";
              break;
            case 2147418130:
              v37 = "InternalTestDiscoveryScanCodedPHY";
              break;
            default:
              goto LABEL_95;
          }

          goto LABEL_233;
        }

        switch(useCase)
        {
          case 1048576:
            v37 = "DOS";
            goto LABEL_233;
          case 1048577:
            v37 = "DOD";
            goto LABEL_233;
          case 1114112:
            v37 = "ProximityServiceDeviceSetup";
            goto LABEL_233;
        }
      }
    }

    else
    {
      if (useCase < 196608)
      {
        switch(useCase)
        {
          case 131072:
            v37 = "SharingDefault";
            break;
          case 131073:
            v37 = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            v37 = "SharingSiriWatchAuth";
            break;
          case 131075:
            v37 = "SharingMacAutoUnlock";
            break;
          case 131076:
            v37 = "SharingEDTScreenOn";
            break;
          case 131077:
            v37 = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            v37 = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            v37 = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            v37 = "SharingWombatBackground";
            break;
          case 131081:
            v37 = "SharingUniversalControl";
            break;
          case 131082:
            v37 = "SharingPeopleProximity";
            break;
          case 131083:
            v37 = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            v37 = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            v37 = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            v37 = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            v37 = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            v37 = "SharingOYAutoUnlock";
            break;
          case 131090:
            v37 = "SharingAirDrop";
            break;
          case 131091:
            v37 = "SharingNearbyInvitationHost";
            break;
          case 131092:
            v37 = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            v37 = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            v37 = "SharingAirDropTempIdentity";
            break;
          case 131095:
            v37 = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            v37 = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            v37 = "SharingCountryCodeUpdate";
            break;
          case 131098:
            v37 = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            v37 = "SharingVisionProDiscovery";
            break;
          case 131100:
            v37 = "SharingVisionProStateChange";
            break;
          case 131101:
            v37 = "SharingContinuityScreen";
            break;
          case 131102:
            v37 = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            v37 = "SharingHomePodSetup";
            break;
          default:
            goto LABEL_95;
        }

        goto LABEL_233;
      }

      if (useCase > 393218)
      {
        if (useCase > 458752)
        {
          switch(useCase)
          {
            case 0x70001:
              v37 = "PrecisionFindingFindee";
              goto LABEL_233;
            case 0x70002:
              v37 = "SpatialHandoffHome";
              goto LABEL_233;
            case 0x80000:
              v37 = "ADPD";
              goto LABEL_233;
          }
        }

        else
        {
          switch(useCase)
          {
            case 393219:
              v37 = "AppleIDSignIn";
              goto LABEL_233;
            case 393220:
              v37 = "AppleIDSignInSettings";
              goto LABEL_233;
            case 458752:
              v37 = "PrecisionFindingFinder";
              goto LABEL_233;
          }
        }
      }

      else
      {
        if (useCase >= 393216)
        {
          if (useCase == 393216)
          {
            v37 = "CaptiveNetworkJoin";
          }

          else if (useCase == 393217)
          {
            v37 = "UseCaseSIMTransfer";
          }

          else
          {
            v37 = "MacSetup";
          }

          goto LABEL_233;
        }

        switch(useCase)
        {
          case 196608:
            v37 = "DigitalIDTSA";
            goto LABEL_233;
          case 262144:
            v37 = "DigitalCarKeyThirdParty";
            goto LABEL_233;
          case 327680:
            v37 = "RapportThirdParty";
LABEL_233:
            NSAppendPrintF_safe(&v51, ", ucas %s", v37);
            v39 = v51;

            v15 = v39;
            goto LABEL_234;
        }
      }
    }

LABEL_95:
    v37 = "?";
    goto LABEL_233;
  }

LABEL_234:
  useCaseClientIDs = self->_useCaseClientIDs;
  if (useCaseClientIDs)
  {
    v50 = v15;
    v41 = useCaseClientIDs;
    v42 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v50, ", ucid %@", v42);
    v43 = v50;

    v15 = v43;
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    v49 = v15;
    v45 = dispatch_queue_get_label(dispatchQueue);
    v46 = dispatchQueue;
    NSAppendPrintF_safe(&v49, ", DspQ %s", v45);
    v47 = v49;

    v15 = v47;
  }

  return v15;
}

- (CBConnection)initWithXPCEventRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v13 = [(CBConnection *)self init];
  if (!v13)
  {
    if (error)
    {
      v26 = "CBConnection init failed";
LABEL_20:
      CBErrorF(-6756, v26, v7, v8, v9, v10, v11, v12, v27);
      *error = v24 = 0;
      goto LABEL_15;
    }

LABEL_21:
    v24 = 0;
    goto LABEL_15;
  }

  if (MEMORY[0x1C68DFDD0](representationCopy) != MEMORY[0x1E69E9E80])
  {
    if (error)
    {
      v26 = "XPC non-dict";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  string = xpc_dictionary_get_string(representationCopy, "deviceID");
  if (string && (v15 = string, v16 = objc_alloc(MEMORY[0x1E696AFB0]), [MEMORY[0x1E696AEC0] stringWithUTF8String:v15], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "initWithUUIDString:", v17), blePeerUUID = v13->_blePeerUUID, v13->_blePeerUUID = v18, blePeerUUID, v17, !v13->_blePeerUUID))
  {
    [(CBConnection *)error initWithXPCEventRepresentation:v15 error:&v28];
    v24 = v28;
  }

  else
  {
    int64 = xpc_dictionary_get_int64(representationCopy, "psm");
    if (int64)
    {
      v13->_blePSM = int64;
    }

    v21 = xpc_dictionary_get_value(representationCopy, "socketFD");
    v22 = v21;
    if (v21)
    {
      if (MEMORY[0x1C68DFDD0](v21) == MEMORY[0x1E69E9EA0])
      {
        v13->_socketFD = xpc_fd_dup(v22);
      }

      else
      {
        var0 = v13->_ucat->var0;
        if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }
    }

    v24 = v13;
  }

LABEL_15:

  return v24;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EBE51A38;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__CBConnection_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E811E440;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__CBConnection__activateWithCompletion___block_invoke;
  v15[3] = &unk_1E811D350;
  v17 = &v18;
  v15[4] = self;
  v5 = completionCopy;
  v16 = v5;
  v6 = MEMORY[0x1C68DF720](v15);
  if (self->_activateCalled)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960575, "activate already called");
    v12 = LABEL_21:;
    v13 = v19[5];
    v19[5] = v12;

    goto LABEL_18;
  }

  if (self->_invalidateCalled)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294896148, "activate after invalidate");
    goto LABEL_21;
  }

  self->_activateCalled = 1;
  v7 = MEMORY[0x1C68DF720](v5);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = v7;

  if (self->_bluetoothStateChangedHandler)
  {
    self->_internalFlags |= 1u;
  }

  if (self->_pairingCompletedHandler)
  {
    self->_internalFlags |= 0x100u;
  }

  if (self->_pairingPromptHandler)
  {
    self->_internalFlags |= 0x100u;
  }

  if ((self->_connectionFlags & 0x100) != 0)
  {
    v9 = 0;
    if (self->_remoteDevice)
    {
LABEL_17:
      [(CBConnection *)self _activateXPCStart:0];
      goto LABEL_18;
    }
  }

  else
  {
    v9 = (self->_connectionFlags & 0x1000 | self->_serviceFlags) != 0;
    if (self->_remoteDevice)
    {
      goto LABEL_17;
    }
  }

  if (v9)
  {
    goto LABEL_17;
  }

  v14 = 0;
  [(CBConnection *)self activateDirectAndReturnError:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = self->_activateCompletion;
    self->_activateCompletion = 0;

    (*(v5 + 2))(v5, v10);
  }

LABEL_18:
  v6[2](v6);

  _Block_object_dispose(&v18, 8);
}

void *__40__CBConnection__activateWithCompletion___block_invoke(void *result)
{
  if (*(*(result[6] + 8) + 40))
  {
    v1 = **(result[4] + 152);
    if (v1 <= 90)
    {
      v2 = result;
      if (v1 != -1 || (v3 = _LogCategory_Initialize(), result = v2, v3))
      {
        v5 = CUPrintNSError();
        LogPrintF_safe();

        result = v2;
      }
    }

    v4 = *(result[5] + 16);

    return v4();
  }

  return result;
}

- (BOOL)activateDirectAndReturnError:(id *)error
{
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__3;
  v56 = __Block_byref_object_dispose__3;
  v57 = 0;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __45__CBConnection_activateDirectAndReturnError___block_invoke;
  v51[3] = &unk_1E811D4B8;
  v51[4] = self;
  v51[5] = &v52;
  v51[6] = error;
  v5 = MEMORY[0x1C68DF720](v51, a2);
  l2capChannel = self->_l2capChannel;
  if (l2capChannel)
  {
    peer = [(CBL2CAPChannel *)l2capChannel peer];
    identifier = [peer identifier];
    blePeerUUID = self->_blePeerUUID;
    self->_blePeerUUID = identifier;

    self->_blePSM = [(CBL2CAPChannel *)self->_l2capChannel PSM];
    if (self->_peerDevice)
    {
      var0 = self->_ucat->var0;
      if (var0 > 30)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = objc_alloc_init(CBDevice);
      uUIDString = [(NSUUID *)self->_blePeerUUID UUIDString];
      [(CBDevice *)v12 setIdentifier:uUIDString];

      peerDevice = self->_peerDevice;
      self->_peerDevice = v12;

      var0 = self->_ucat->var0;
      if (var0 > 30)
      {
        goto LABEL_20;
      }
    }

    if (var0 != -1 || _LogCategory_Initialize())
    {
      v44 = self->_blePeerUUID;
      blePSM = self->_blePSM;
      LogPrintF_safe();
    }

LABEL_20:
    v20 = (v53 + 5);
    obj = v53[5];
    blePSM = [(CBConnection *)self _setupIOAndReturnError:&obj, v44, blePSM];
    objc_storeStrong(v20, obj);
    if (blePSM)
    {
      writeRequests = MEMORY[0x1C68DF720](self->_activateCompletion);
      activateCompletion = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (writeRequests)
      {
        (writeRequests[2].super.super.isa)(writeRequests, 0);
      }

      goto LABEL_36;
    }

LABEL_44:
    v36 = 0;
    goto LABEL_38;
  }

  if (self->_socketFD && self->_blePeerUUID)
  {
    if (self->_peerDevice)
    {
      v11 = self->_ucat->var0;
      if (v11 > 30)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v23 = objc_alloc_init(CBDevice);
      uUIDString2 = [(NSUUID *)self->_blePeerUUID UUIDString];
      [(CBDevice *)v23 setIdentifier:uUIDString2];

      v25 = self->_peerDevice;
      self->_peerDevice = v23;

      v11 = self->_ucat->var0;
      if (v11 > 30)
      {
        goto LABEL_33;
      }
    }

    if (v11 != -1 || _LogCategory_Initialize())
    {
      blePSM = self->_blePSM;
      socketFD = self->_socketFD;
      v44 = self->_blePeerUUID;
      LogPrintF_safe();
    }

LABEL_33:
    v30 = (v53 + 5);
    v49 = v53[5];
    socketFD = [(CBConnection *)self _setupIOAndReturnError:&v49, v44, blePSM, socketFD];
    objc_storeStrong(v30, v49);
    if (socketFD)
    {
      writeRequests = MEMORY[0x1C68DF720](self->_activateCompletion);
      v32 = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (writeRequests)
      {
        (writeRequests[2].super.super.isa)(writeRequests, 0);
      }

      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v15 = self->_peerDevice;
  if (!v15)
  {
    v39 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No peer device");
    v36 = 0;
    writeRequests = v53[5];
    v53[5] = v39;
    goto LABEL_37;
  }

  writeRequests = v15;
  identifier2 = [(CBDevice *)v15 identifier];
  if (!identifier2)
  {
    v40 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No peer ID");
    v41 = v53[5];
    v53[5] = v40;

    v36 = 0;
    goto LABEL_37;
  }

  v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:identifier2];
  if (!v18)
  {
    v42 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "Bad peer ID: %@", identifier2);
    v43 = v53[5];
    v53[5] = v42;

LABEL_43:
    v36 = 0;
    goto LABEL_37;
  }

  objc_storeStrong(&self->_blePeerUUID, v18);
  v19 = self->_ucat->var0;
  if (v19 <= 30 && (v19 != -1 || _LogCategory_Initialize()))
  {
    v44 = self->_blePeerUUID;
    blePSM = self->_blePSM;
    LogPrintF_safe();
  }

  v48 = 0;
  blePSM2 = [(CBConnection *)self _startConnectingAndReturnError:&v48, v44, blePSM];
  v27 = v48;
  v28 = v27;
  if (!blePSM2)
  {
    v29 = self->_ucat->var0;
    if (v29 <= 90 && (v29 != -1 || _LogCategory_Initialize()))
    {
      v45 = CUPrintNSError();
      LogPrintF_safe();
    }

    if (error)
    {
      v38 = v28;
      *error = v28;
    }

    goto LABEL_43;
  }

LABEL_36:
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  readRequests = self->_readRequests;
  self->_readRequests = v33;

  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  writeRequests = self->_writeRequests;
  self->_writeRequests = v35;
  v36 = 1;
LABEL_37:

LABEL_38:
  v5[2](v5);

  _Block_object_dispose(&v52, 8);
  return v36;
}

void __45__CBConnection_activateDirectAndReturnError___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = **(*(a1 + 32) + 152);
    if (v2 <= 90 && (v2 != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintNSError();
      LogPrintF_safe();
    }

    if (*(a1 + 48))
    {
      **(a1 + 48) = *(*(*(a1 + 40) + 8) + 40);
    }
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
  [(CBConnection *)self encodeWithXPCObject:v5];
  xpc_dictionary_set_string(v5, "mTyp", "CnxA");
  _ensureXPCStarted = [(CBConnection *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __34__CBConnection__activateXPCStart___block_invoke;
  handler[3] = &unk_1E811D158;
  handler[4] = self;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v5, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)completed
{
  v4 = CUXPCDecodeNSErrorIfNeeded();
  var0 = self->_ucat->var0;
  v11 = v4;
  if (v4)
  {
    if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
    {
      v10 = CUPrintNSError();
      LogPrintF_safe();
    }
  }

  else if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v6 = MEMORY[0x1C68DF720](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v6)
  {
    (v6)[2](v6, v11);
  }

  else
  {
    v8 = MEMORY[0x1C68DF720](self->_errorHandler);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8, v11);
    }
  }
}

- (void)disconnectWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CBConnection_disconnectWithCompletion___block_invoke;
  v7[3] = &unk_1E811E440;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __41__CBConnection_disconnectWithCompletion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "CnxD");
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 208);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __41__CBConnection_disconnectWithCompletion___block_invoke_2;
  handler[3] = &unk_1E811D1B0;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __41__CBConnection_disconnectWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(v2 + 16))(v2, v3);
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
    v10[2] = __33__CBConnection__ensureXPCStarted__block_invoke;
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

void *__33__CBConnection__ensureXPCStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[20] == *(a1 + 40))
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
    if (v7)
    {
      v8 = v7;
      v7[2]();
      v7 = v8;
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CBConnection_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    v20 = v3;
    v21 = v2;
    self->_invalidateCalled = 1;
    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    connectTimeoutTimer = self->_connectTimeoutTimer;
    if (connectTimeoutTimer)
    {
      v9 = connectTimeoutTimer;
      dispatch_source_cancel(v9);
      v10 = self->_connectTimeoutTimer;
      self->_connectTimeoutTimer = 0;
    }

    if (self->_peripheral)
    {
      self->_guardConnected = 0;
      [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:?];
    }

    [(CBCentralManager *)self->_centralManager setDelegate:0, v20, v21, v4];
    centralManager = self->_centralManager;
    self->_centralManager = 0;

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    [(CBPeripheral *)self->_peripheral setDelegate:0];
    peripheral = self->_peripheral;
    self->_peripheral = 0;

    v14 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294896148, "Invalidated (I)");
    [(CBConnection *)self _reportError:v14];

    readSource = self->_readSource;
    if (readSource)
    {
      dispatch_source_cancel(readSource);
      if (self->_readSuspended)
      {
        dispatch_resume(self->_readSource);
        self->_readSuspended = 0;
      }

      v16 = self->_readSource;
      self->_readSource = 0;
    }

    writeSource = self->_writeSource;
    if (writeSource)
    {
      dispatch_source_cancel(writeSource);
      if (self->_writeSuspended)
      {
        dispatch_resume(self->_writeSource);
        self->_writeSuspended = 0;
      }

      v18 = self->_writeSource;
      self->_writeSource = 0;
    }

    xpcCnx = self->_xpcCnx;
    if (xpcCnx)
    {
      xpc_connection_cancel(xpcCnx);
    }

    [(CBConnection *)self _invalidated];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone && !self->_readSource && !self->_writeSource && !self->_readRequestCurrent && ![(NSMutableArray *)self->_readRequests count]&& !self->_writeRequestCurrent && ![(NSMutableArray *)self->_writeRequests count]&& !self->_xpcCnx)
  {
    v15 = MEMORY[0x1C68DF720](self->_invalidationHandler);
    v3 = MEMORY[0x1C68DF720](self->_serverInvalidationHandler);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
    self->_bluetoothStateChangedHandler = 0;

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    pairingCompletedHandler = self->_pairingCompletedHandler;
    self->_pairingCompletedHandler = 0;

    pairingPromptHandler = self->_pairingPromptHandler;
    self->_pairingPromptHandler = 0;

    serverInvalidationHandler = self->_serverInvalidationHandler;
    self->_serverInvalidationHandler = 0;

    xpcForwardMessageReceiveHandler = self->_xpcForwardMessageReceiveHandler;
    self->_xpcForwardMessageReceiveHandler = 0;

    xpcSendEventHandler = self->_xpcSendEventHandler;
    self->_xpcSendEventHandler = 0;

    if (v15)
    {
      v15[2](v15);
    }

    if (v3)
    {
      v3[2](v3);
    }

    self->_invalidateDone = 1;
    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (BOOL)updateWithXPCSubscriberInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (!infoCopy || MEMORY[0x1C68DFDD0](infoCopy) != MEMORY[0x1E69E9E80])
  {
    LOBYTE(v8) = 0;
    goto LABEL_30;
  }

  string = xpc_dictionary_get_string(v5, "label");
  if (!string)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  v8 = v7;
  if (!v7)
  {
    v10 = 0;
    int64 = xpc_dictionary_get_int64(v5, "psm");
    if (!int64)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  label = self->_label;
  v10 = v7;
  v11 = label;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_13;
  }

  if (!v11)
  {

    goto LABEL_16;
  }

  v13 = [(NSString *)v10 isEqual:v11];

  if (v13)
  {
LABEL_13:
    LOBYTE(v8) = 0;
    int64 = xpc_dictionary_get_int64(v5, "psm");
    if (!int64)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  objc_storeStrong(&self->_label, v8);
  LOBYTE(v8) = 1;
  int64 = xpc_dictionary_get_int64(v5, "psm");
  if (!int64)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (self->_blePSM != int64)
  {
    self->_blePSM = int64;
    LOBYTE(v8) = 1;
  }

LABEL_19:
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v15 = xpc_dictionary_get_array(v5, "serviceUUIDs");
  v16 = v15;
  if (v15)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __44__CBConnection_updateWithXPCSubscriberInfo___block_invoke;
    applier[3] = &unk_1E81204B8;
    applier[4] = &v25;
    xpc_array_apply(v15, applier);
  }

  serviceUUIDs = self->_serviceUUIDs;
  v18 = v26[5];
  v19 = serviceUUIDs;
  v20 = v19;
  if (v18 == v19)
  {
  }

  else
  {
    if ((v18 != 0) != (v19 == 0))
    {
      v21 = [(NSArray *)v18 isEqual:v19];

      if (v21)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }

    v22 = v26[5];
    v18 = self->_serviceUUIDs;
    self->_serviceUUIDs = v22;
    LOBYTE(v8) = 1;
  }

LABEL_29:
  _Block_object_dispose(&v25, 8);

LABEL_30:
  return v8;
}

uint64_t __44__CBConnection_updateWithXPCSubscriberInfo___block_invoke(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (string_ptr)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string_ptr];
    if (v5)
    {
      v6 = [[CBUUID alloc] initWithString:v5 safe:1];
      if (v6)
      {
        v7 = *(*(*(a1 + 32) + 8) + 40);
        if (!v7)
        {
          v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v9 = *(*(a1 + 32) + 8);
          v10 = *(v9 + 40);
          *(v9 + 40) = v8;

          v7 = *(*(*(a1 + 32) + 8) + 40);
        }

        [v7 addObject:v6];
      }
    }
  }

  return 1;
}

- (void)xpcForwardMessage:(id)message
{
  messageCopy = message;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CBConnection_xpcForwardMessage___block_invoke;
  v7[3] = &unk_1E811CF50;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  dispatch_async(dispatchQueue, v7);
}

void __34__CBConnection_xpcForwardMessage___block_invoke(uint64_t a1)
{
  xpc_dictionary_get_int64(*(a1 + 32), "kCBMsgId");
  v2 = **(*(a1 + 40) + 152);
  if (v2 <= 10 && (v2 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  xdict = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 40) encodeWithXPCObject:xdict];
  xpc_dictionary_set_string(xdict, "mTyp", "CnxF");
  xpc_dictionary_set_value(xdict, "fwdM", *(a1 + 32));
  v3 = MEMORY[0x1C68DF720](*(*(a1 + 40) + 392));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, xdict);
  }

  else
  {
    v5 = [*(a1 + 40) _ensureXPCStarted];
    xpc_connection_send_message(v5, xdict);
  }
}

- (void)xpcReceivedForwardedEvent:(id)event
{
  v4 = xpc_dictionary_get_value(event, "fwdM");
  v8 = v4;
  if (v4)
  {
    xpc_dictionary_get_int64(v4, "kCBMsgId");
    var0 = self->_ucat->var0;
    if (var0 <= 10 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v6 = MEMORY[0x1C68DF720](self->_xpcForwardMessageReceiveHandler);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, v8);
    }

    else
    {
      [CBConnection xpcReceivedForwardedEvent:?];
    }
  }

  else
  {
    [CBConnection xpcReceivedForwardedEvent:?];
  }
}

- (void)xpcReceivedMessage:(id)message
{
  messageCopy = message;
  var0 = self->_ucat->var0;
  v24 = messageCopy;
  if (var0 <= 9)
  {
    if (var0 != -1 || (v6 = _LogCategory_Initialize(), messageCopy = v24, v6))
    {
      v22 = CUPrintXPC();
      LogPrintF_safe();

      messageCopy = v24;
    }
  }

  if (MEMORY[0x1C68DFDD0](messageCopy) == MEMORY[0x1E69E9E80])
  {
    [(CBConnection *)self _xpcReceivedMessage:v24];
    goto LABEL_26;
  }

  if (v24 == MEMORY[0x1E69E9E18])
  {
    [(CBConnection *)self _interrupted];
    goto LABEL_26;
  }

  if (v24 != MEMORY[0x1E69E9E20])
  {
    v7 = CUXPCDecodeNSErrorIfNeeded();
    v14 = v7;
    if (v7)
    {
      v15 = v7;

      v16 = self->_ucat->var0;
      if (v16 > 90)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v15 = CBErrorF(-6700, "XPC event error", v8, v9, v10, v11, v12, v13, v22);

      v16 = self->_ucat->var0;
      if (v16 > 90)
      {
LABEL_21:
        v19 = MEMORY[0x1C68DF720](self->_errorHandler);
        v20 = v19;
        if (v19)
        {
          (*(v19 + 16))(v19, v15);
        }

        goto LABEL_26;
      }
    }

    if (v16 != -1 || _LogCategory_Initialize())
    {
      v18 = CUPrintNSError();
      v23 = CUPrintXPC();
      LogPrintF_safe();
    }

    goto LABEL_21;
  }

  if (!self->_invalidateCalled)
  {
    v17 = self->_ucat->var0;
    if (v17 <= 90 && (v17 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;

  [(CBConnection *)self _invalidated];
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
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = string;
  if (!strcmp(string, "CnxF"))
  {
    [(CBConnection *)self xpcReceivedForwardedEvent:messageCopy];
    v8 = messageCopy;
  }

  else if (!strcmp(v5, "PrCm"))
  {
    [(CBConnection *)self xpcReceivedPairingCompleted:messageCopy];
    v8 = messageCopy;
  }

  else
  {
    if (strcmp(v5, "PrPm"))
    {
      v6 = self->_ucat->var0;
      if (v6 <= 90 && (v6 != -1 || _LogCategory_Initialize()))
      {
LABEL_10:
        LogPrintF_safe();
      }

LABEL_11:
      v8 = messageCopy;

      goto LABEL_13;
    }

    [(CBConnection *)self xpcReceivedPairingPrompt:messageCopy];
    v8 = messageCopy;
  }

LABEL_13:
}

- (void)xpcReceivedPairingCompleted:(id)completed
{
  completedCopy = completed;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    objc_opt_class();
    CUXPCDecodeObject();
    v5 = 0;
    var0 = self->_ucat->var0;
    if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
    {
      v7 = CUPrintNSError();
      LogPrintF_safe();
    }
  }

  else
  {
    [CBConnection xpcReceivedPairingCompleted:?];
  }
}

- (void)xpcReceivedPairingPrompt:(id)prompt
{
  promptCopy = prompt;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    objc_opt_class();
    CUXPCDecodeObject();
    v5 = 0;
    var0 = self->_ucat->var0;
    if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
    {
      v7 = CUPrintNSError();
      LogPrintF_safe();
    }
  }

  else
  {
    [CBConnection xpcReceivedPairingPrompt:?];
  }
}

- (BOOL)_startConnectingAndReturnError:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!self->_blePeerUUID)
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No peer UUID");
      v17 = LABEL_13:;
      v18 = v17;
      result = 0;
      *error = v17;
      return result;
    }

    return 0;
  }

  v5 = [CBCentralManager alloc];
  dispatchQueue = self->_dispatchQueue;
  v21 = @"kCBManagerNeedsRestrictedStateOperation";
  v22[0] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v8 = [(CBCentralManager *)v5 initWithDelegate:self queue:dispatchQueue options:v7];
  centralManager = self->_centralManager;
  self->_centralManager = v8;

  v10 = self->_centralManager;
  if (!v10)
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "Create CBCentralManager failed");
      goto LABEL_13;
    }

    return 0;
  }

  if ((self->_connectionFlags & 0x80) != 0 || (internalFlags = self->_internalFlags, (internalFlags & 0x100) != 0))
  {
    sharedPairingAgent = [(CBManager *)v10 sharedPairingAgent];
    [sharedPairingAgent setDelegate:self];

    internalFlags = self->_internalFlags;
  }

  if ((internalFlags & 0x20) != 0)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47__CBConnection__startConnectingAndReturnError___block_invoke;
    v20[3] = &unk_1E811D158;
    v20[4] = self;
    v13 = MEMORY[0x1C68DF720](v20);
    xpcForwardMessageReceiveHandler = self->_xpcForwardMessageReceiveHandler;
    self->_xpcForwardMessageReceiveHandler = v13;

    v15 = self->_centralManager;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __47__CBConnection__startConnectingAndReturnError___block_invoke_2;
    v19[3] = &unk_1E811D158;
    v19[4] = self;
    [(CBManager *)v15 setWHBMsgReplyHandler:v19];
  }

  [(CBConnection *)self _run];
  return 1;
}

void __47__CBConnection__startConnectingAndReturnError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = **(v4 + 152);
  v9 = v3;
  if (v5 <= 30)
  {
    if (v5 != -1)
    {
LABEL_3:
      v7 = v3;
      v8 = *(v4 + 24);
      LogPrintF_safe();
      v3 = v9;
      v4 = *(a1 + 32);
      goto LABEL_6;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v3 = v9;
      goto LABEL_3;
    }

    v3 = v9;
  }

LABEL_6:
  [*(v4 + 32) didReceiveForwardedMessageForCBManager:{v3, v7, v8}];
}

- (BOOL)_setupIOAndReturnError:(id *)error
{
  l2capChannel = self->_l2capChannel;
  if (l2capChannel)
  {
    socketFD = [(CBL2CAPChannel *)l2capChannel socketFD];
    if ((socketFD & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (!error)
    {
      return 0;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "No L2CAP socket: %@", self->_l2capChannel);
LABEL_17:
    *error = v16 = 0;
    return v16;
  }

  socketFD = self->_socketFD;
  if ((socketFD & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  self->_socketFD = socketFD;
  v23 = 1;
  if (!setsockopt(socketFD, 0xFFFF, 4130, &v23, 4u))
  {
    goto LABEL_6;
  }

  if (!*__error())
  {
    v7 = 4294960596;
    goto LABEL_15;
  }

  v7 = *__error();
  if (v7)
  {
LABEL_15:
    if (!error)
    {
      return 0;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], v7, "Set SO_NOSIGPIPE failed");
    goto LABEL_17;
  }

LABEL_6:
  v8 = SocketSetNonBlocking();
  if (v8)
  {
    if (!error)
    {
      return 0;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], v8, "Make non-blocking failed");
    goto LABEL_17;
  }

  v9 = dispatch_source_create(MEMORY[0x1E69E96F8], socketFD, 0, self->_dispatchQueue);
  readSource = self->_readSource;
  self->_readSource = v9;

  v11 = self->_readSource;
  if (!v11)
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960550, "Create read source failed");
      goto LABEL_17;
    }

    return 0;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __39__CBConnection__setupIOAndReturnError___block_invoke;
  handler[3] = &unk_1E811D130;
  handler[4] = self;
  dispatch_source_set_event_handler(v11, handler);
  v12 = self->_readSource;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __39__CBConnection__setupIOAndReturnError___block_invoke_2;
  v21[3] = &unk_1E811D130;
  v21[4] = self;
  dispatch_source_set_cancel_handler(v12, v21);
  dispatch_resume(self->_readSource);
  v13 = dispatch_source_create(MEMORY[0x1E69E9730], socketFD, 0, self->_dispatchQueue);
  writeSource = self->_writeSource;
  self->_writeSource = v13;

  v15 = self->_writeSource;
  v16 = v15 != 0;
  if (v15)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __39__CBConnection__setupIOAndReturnError___block_invoke_3;
    v20[3] = &unk_1E811D130;
    v20[4] = self;
    dispatch_source_set_event_handler(v15, v20);
    v17 = self->_writeSource;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __39__CBConnection__setupIOAndReturnError___block_invoke_4;
    v19[3] = &unk_1E811D130;
    v19[4] = self;
    dispatch_source_set_cancel_handler(v17, v19);
    self->_writeSuspended = 1;
  }

  else
  {
    [CBConnection _setupIOAndReturnError:error];
  }

  return v16;
}

uint64_t __39__CBConnection__setupIOAndReturnError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

uint64_t __39__CBConnection__setupIOAndReturnError___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  if (!self->_invalidateCalled)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
    {
      v9 = CUPrintNSError();
      LogPrintF_safe();
    }
  }

  self->_state = 3;
  v5 = MEMORY[0x1C68DF720](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v5)
  {
    (v5)[2](v5, errorCopy);
  }

  else
  {
    v7 = MEMORY[0x1C68DF720](self->_errorHandler);
    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    if (v7)
    {
      (v7)[2](v7, errorCopy);
    }
  }

  [(CBConnection *)self _abortReadsWithError:errorCopy, v9];
  [(CBConnection *)self _abortWritesWithError:errorCopy];
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      state = self->_state;
      if (state <= 13)
      {
        break;
      }

      if (state <= 15)
      {
        if (state != 14)
        {
          if (self->_l2capChannel)
          {
            self->_state = 16;
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        if (!self->_blePSM)
        {
          self->_state = 18;
          goto LABEL_38;
        }

        [(CBPeripheral *)self->_peripheral openL2CAPChannel:?];
        goto LABEL_36;
      }

      if (state == 16)
      {
        self->_state = 17;
        goto LABEL_38;
      }

      if (state == 17)
      {
        if ([(CBConnection *)self _runSetupChannel])
        {
          goto LABEL_36;
        }

LABEL_37:
        if (self->_state == state)
        {
          return;
        }

        goto LABEL_38;
      }

      if (state != 18)
      {
        goto LABEL_37;
      }

      v4 = MEMORY[0x1C68DF720](self->_activateCompletion, a2);
      activateCompletion = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (v4)
      {
        v4[2](v4, 0);
      }

      if (self->_blePSM)
      {
        [(CBConnection *)self _processReads:0];
        [(CBConnection *)self _processWrites];
      }

      if (self->_state == 18)
      {
        return;
      }

LABEL_38:
      var0 = self->_ucat->var0;
      if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    if (state > 10)
    {
      if (state == 11)
      {
        if ([(CBConnection *)self _runConnectStart])
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (state != 12)
        {
          self->_connectedTime = CFAbsoluteTimeGetCurrent();
          goto LABEL_36;
        }

        if (self->_guardConnected)
        {
          self->_state = 13;
          goto LABEL_38;
        }
      }

      goto LABEL_37;
    }

    if (!state)
    {
      self->_state = 10;
      goto LABEL_38;
    }

    if (state != 10)
    {
      goto LABEL_37;
    }

    state = [(CBManager *)self->_centralManager state];
    if (state != 10 && state != CBManagerStatePoweredOn)
    {
      goto LABEL_37;
    }

LABEL_36:
    ++self->_state;
    goto LABEL_37;
  }
}

- (BOOL)_runConnectStart
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = self->_blePeerUUID;
  centralManager = self->_centralManager;
  v23[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v6 = [(CBCentralManager *)centralManager retrievePeripheralsWithIdentifiers:v5];

  firstObject = [v6 firstObject];
  if (firstObject)
  {
    objc_storeStrong(&self->_peripheral, firstObject);
    [(CBPeripheral *)self->_peripheral setDelegate:self];
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = v8;
    clientBundleID = self->_clientBundleID;
    if (clientBundleID)
    {
      [v8 setObject:clientBundleID forKeyedSubscript:@"kCBConnectOptionClientBundleID"];
    }

    if (self->_clientUseCase)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [v9 setObject:v11 forKeyedSubscript:@"kCBOptionUseCase"];
    }

    if (self->_useCase)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [v9 setObject:v12 forKeyedSubscript:@"kCBOptionUseCase"];
    }

    if ((_os_feature_enabled_impl() & 1) != 0 && self->_useCase == 720897)
    {
      tempLTK = self->_tempLTK;
      if (tempLTK)
      {
        [v9 setObject:tempLTK forKeyedSubscript:@"kCBConnectOptionsTemporaryLTK"];
      }
    }

    if ((self->_connectionFlags & 0x40) != 0)
    {
      [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kCBConnectOptionDoNoDisconnectOnEncryptionFailure"];
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_connectionScanDutyCycle];
    [v9 setObject:v14 forKeyedSubscript:@"kCBConnectOptionConnectionScanDutyCycle"];

    if ((self->_connectionFlags & 0x800) != 0 || self->_useCase == 720897)
    {
      [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kCBConnectOptionsDisableLeGATT"];
    }

    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintNSObjectOneLine();
      v21 = v20 = v3;
      LogPrintF_safe();
    }

    [(CBCentralManager *)self->_centralManager connectPeripheral:firstObject options:v9, v20, v21];
    if (self->_connectTimeoutSeconds > 0.0)
    {
      v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      connectTimeoutTimer = self->_connectTimeoutTimer;
      self->_connectTimeoutTimer = v16;
      v18 = v16;

      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __32__CBConnection__runConnectStart__block_invoke;
      handler[3] = &unk_1E811CF50;
      handler[4] = v18;
      handler[5] = self;
      dispatch_source_set_event_handler(v18, handler);
      CUDispatchTimerSet();
      dispatch_activate(v18);
    }
  }

  else
  {
    v9 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960569, "No peripheral %@", v3);
    [(CBConnection *)self _reportError:v9];
  }

  return firstObject != 0;
}

void __32__CBConnection__runConnectStart__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 40);
  if (v9 == v10)
  {
    if (v9)
    {
      v12 = v10;
      dispatch_source_cancel(v12);
      v13 = *(a1 + 40);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;
    }

    v15 = *(a1 + 40);
    v17 = CBErrorF(-6722, "Connect timeout", a3, a4, a5, a6, a7, a8, v16);
    [v15 _reportError:v17];
  }
}

- (BOOL)_runSetupChannel
{
  v6 = 0;
  v3 = [(CBConnection *)self _setupIOAndReturnError:&v6];
  v4 = v6;
  if (!v3)
  {
    [(CBConnection *)self _reportError:v4];
  }

  return v3;
}

- (void)pairingGenerateOOBDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CBConnection_pairingGenerateOOBDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E811E440;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_pairingGenerateOOBDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__3;
  v56 = __Block_byref_object_dispose__3;
  v57 = 0;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __61__CBConnection__pairingGenerateOOBDataWithCompletionHandler___block_invoke;
  v49[3] = &unk_1E811D350;
  v51 = &v52;
  v49[4] = self;
  v5 = handlerCopy;
  v50 = v5;
  v12 = MEMORY[0x1C68DF720](v49);
  if (self->_invalidateCalled)
  {
    v42 = CBErrorF(-71148, "Use after invalidate", v6, v7, v8, v9, v10, v11, v45);
LABEL_21:
    peer = v53[5];
    v53[5] = v42;
    goto LABEL_18;
  }

  peripheral = self->_peripheral;
  if (peripheral)
  {
    peer = peripheral;
    goto LABEL_5;
  }

  peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
  if (!peer)
  {
    v42 = CBErrorF(-6705, "No peer", v14, v15, v16, v17, v18, v19, v45);
    goto LABEL_21;
  }

LABEL_5:
  centralManager = self->_centralManager;
  if (!centralManager)
  {
    server = self->_server;
    if (server)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __61__CBConnection__pairingGenerateOOBDataWithCompletionHandler___block_invoke_2;
      v47[3] = &unk_1E81204E0;
      v47[4] = self;
      v48 = v5;
      [(CBServer *)server pairingGenerateOOBDataForPeer:peer completionHandler:v47];

      goto LABEL_18;
    }

    v40 = CBErrorF(-6700, "No central or server", v14, v15, v16, v17, v18, v19, v45);
LABEL_14:
    v41 = v53[5];
    v53[5] = v40;

    goto LABEL_18;
  }

  sharedPairingAgent = [(CBManager *)centralManager sharedPairingAgent];
  v29 = sharedPairingAgent;
  if (!sharedPairingAgent)
  {
    v40 = CBErrorF(-6705, "No pairing agent", v23, v24, v25, v26, v27, v28, v45);
    goto LABEL_14;
  }

  v36 = [sharedPairingAgent retrieveOOBDataForPeer:peer];
  if (v36)
  {
    objc_storeStrong(&self->_pairingOOBData, v36);
    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      identifier = [(CBPeer *)peer identifier];
      v46 = CUPrintNSDataHex();
      LogPrintF_safe();
    }

    (*(v5 + 2))(v5, v36, 0);
  }

  else
  {
    v43 = CBErrorF(-6700, "Generate OOB data failed", v30, v31, v32, v33, v34, v35, v45);
    v44 = v53[5];
    v53[5] = v43;
  }

LABEL_18:
  v12[2](v12);

  _Block_object_dispose(&v52, 8);
}

void *__61__CBConnection__pairingGenerateOOBDataWithCompletionHandler___block_invoke(void *result)
{
  if (*(*(result[6] + 8) + 40))
  {
    v1 = **(result[4] + 152);
    if (v1 <= 90)
    {
      v2 = result;
      if (v1 != -1 || (v3 = _LogCategory_Initialize(), result = v2, v3))
      {
        v5 = CUPrintNSError();
        LogPrintF_safe();

        result = v2;
      }
    }

    v4 = *(result[5] + 16);

    return v4();
  }

  return result;
}

void __61__CBConnection__pairingGenerateOOBDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v7 && !v6)
  {
    objc_storeStrong((*(a1 + 32) + 56), a2);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)pairingSetOOBEnabled:(BOOL)enabled completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CBConnection_pairingSetOOBEnabled_completionHandler___block_invoke;
  block[3] = &unk_1E8120508;
  enabledCopy = enabled;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_pairingSetOOBEnabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  handlerCopy = handler;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__3;
  v48 = __Block_byref_object_dispose__3;
  v49 = 0;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __56__CBConnection__pairingSetOOBEnabled_completionHandler___block_invoke;
  v40[3] = &unk_1E8120530;
  v42 = &v44;
  v40[4] = self;
  v43 = enabledCopy;
  v7 = handlerCopy;
  v41 = v7;
  v14 = MEMORY[0x1C68DF720](v40);
  if (self->_invalidateCalled)
  {
    v36 = CBErrorF(-71148, "Use after invalidate", v8, v9, v10, v11, v12, v13, v39);
    peer = v45[5];
    v45[5] = v36;
    goto LABEL_17;
  }

  peripheral = self->_peripheral;
  if (peripheral)
  {
    peer = peripheral;
  }

  else
  {
    peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
    if (!peer)
    {
      v35 = CBErrorF(-6705, "No peer", v16, v17, v18, v19, v20, v21, v39);
      peer = 0;
      goto LABEL_13;
    }
  }

  centralManager = self->_centralManager;
  if (centralManager)
  {
    sharedPairingAgent = [(CBManager *)centralManager sharedPairingAgent];
    v31 = sharedPairingAgent;
    if (sharedPairingAgent)
    {
      [sharedPairingAgent setDelegate:self];
      [v31 setOOBPairingEnabled:1 forPeer:peer];
      var0 = self->_ucat->var0;
      if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
      {
        identifier = [(CBPeer *)peer identifier];
        LogPrintF_safe();
      }

      (*(v7 + 2))(v7, 0);
    }

    else
    {
      v37 = CBErrorF(-6705, "No pairing agent", v25, v26, v27, v28, v29, v30, v39);
      v38 = v45[5];
      v45[5] = v37;
    }

    goto LABEL_16;
  }

  server = self->_server;
  if (!server)
  {
    v35 = CBErrorF(-6700, "No central or server", v16, v17, v18, v19, v20, v21, v39);
LABEL_13:
    v31 = v45[5];
    v45[5] = v35;
LABEL_16:

    goto LABEL_17;
  }

  [(CBServer *)server pairingSetOOBEnabled:enabledCopy peer:peer completionHandler:v7];
LABEL_17:

  v14[2](v14);
  _Block_object_dispose(&v44, 8);
}

void *__56__CBConnection__pairingSetOOBEnabled_completionHandler___block_invoke(void *result)
{
  if (*(*(result[6] + 8) + 40))
  {
    v1 = **(result[4] + 152);
    if (v1 <= 90)
    {
      if (v1 != -1 || (v3 = result, v4 = _LogCategory_Initialize(), result = v3, v4))
      {
        v2 = result;
        v6 = CUPrintNSError();
        LogPrintF_safe();

        result = v2;
      }
    }

    v5 = *(result[5] + 16);

    return v5();
  }

  return result;
}

- (void)pairingPerformAction:(int)action completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CBConnection_pairingPerformAction_completionHandler___block_invoke;
  block[3] = &unk_1E811E3A8;
  block[4] = self;
  v10 = handlerCopy;
  actionCopy = action;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __55__CBConnection_pairingPerformAction_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 32);
  if (*(v10 + 49) == 1)
  {
    __55__CBConnection_pairingPerformAction_completionHandler___block_invoke_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    if (*(v10 + 32))
    {
      v13 = MEMORY[0x1E695E0F8];

      [v10 _pairingPerformActionBLE:v11 withOptions:v13 completionHandler:v12];
    }

    else
    {
      v14 = *(a1 + 40);

      [v10 _pairingPerformActionClassic:v11 completionHandler:{v14, v12}];
    }
  }
}

- (void)pairingPerformAction:(int)action withOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__CBConnection_pairingPerformAction_withOptions_completionHandler___block_invoke;
  v13[3] = &unk_1E8120558;
  v14 = optionsCopy;
  v15 = handlerCopy;
  actionCopy = action;
  v13[4] = self;
  v11 = optionsCopy;
  v12 = handlerCopy;
  dispatch_async(dispatchQueue, v13);
}

void __67__CBConnection_pairingPerformAction_withOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 32);
  if (*(v10 + 49) == 1)
  {
    __67__CBConnection_pairingPerformAction_withOptions_completionHandler___block_invoke_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    if (*(v10 + 32))
    {

      [v10 _pairingPerformActionBLE:v11 withOptions:v12 completionHandler:v13];
    }

    else
    {

      [v10 _pairingPerformActionClassic:v11 withOptions:v12 completionHandler:v13];
    }
  }
}

- (void)_pairingPerformActionBLE:(int)e withOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__3;
  v50 = __Block_byref_object_dispose__3;
  v51 = 0;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __71__CBConnection__pairingPerformActionBLE_withOptions_completionHandler___block_invoke;
  v42[3] = &unk_1E8120580;
  v44 = &v46;
  v42[4] = self;
  eCopy = e;
  v10 = handlerCopy;
  v43 = v10;
  v11 = MEMORY[0x1C68DF720](v42);
  sharedPairingAgent = [(CBManager *)self->_centralManager sharedPairingAgent];
  if (sharedPairingAgent)
  {
    v25 = self->_peripheral;
    if (v25)
    {
      var0 = self->_ucat->var0;
      if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
      {
        identifier = [(CBPeer *)v25 identifier];
        LogPrintF_safe();
      }

      v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if ([optionsCopy count])
      {
        v34 = MEMORY[0x1E696AD98];
        v35 = [optionsCopy objectForKeyedSubscript:@"kCBMsgArgPairingPasskey"];
        v36 = [v34 numberWithInteger:{objc_msgSend(v35, "integerValue")}];
        [v27 setObject:v36 forKeyedSubscript:@"kCBMsgArgPairingPasskey"];
      }

      if ((e - 1) > 2)
      {
        v37 = CBErrorF(-6705, "Bad pairing action", v28, v29, v30, v31, v32, v33, identifier);
        v38 = v47[5];
        v47[5] = v37;
      }

      else
      {
        [sharedPairingAgent respondToPairingRequest:v25 type:self->_pairingType accept:1u >> ((e - 1) & 7) data:v27];
        if (v10)
        {
          (*(v10 + 2))(v10, 0);
        }
      }
    }

    else
    {
      v40 = CBErrorF(-6705, "No peripheral", v19, v20, v21, v22, v23, v24, identifier);
      v27 = v47[5];
      v47[5] = v40;
    }
  }

  else
  {
    v39 = CBErrorF(-6705, "No pairing agent", v12, v13, v14, v15, v16, v17, identifier);
    v25 = v47[5];
    v47[5] = v39;
  }

  v11[2](v11);
  _Block_object_dispose(&v46, 8);
}

void *__71__CBConnection__pairingPerformActionBLE_withOptions_completionHandler___block_invoke(void *result)
{
  if (!*(*(result[6] + 8) + 40))
  {
    return result;
  }

  v1 = result;
  v2 = result[4];
  v3 = **(v2 + 152);
  if (v3 <= 90)
  {
    if (v3 != -1)
    {
LABEL_4:
      v4 = [*(v2 + 304) identifier];
      v6 = CUPrintNSError();
      LogPrintF_safe();

      result = v1[5];
      if (!result)
      {
        return result;
      }

      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      v2 = v1[4];
      goto LABEL_4;
    }
  }

  result = v1[5];
  if (!result)
  {
    return result;
  }

LABEL_7:
  v5 = result[2];

  return v5();
}

- (void)_pairingPerformActionClassic:(int)classic completionHandler:(id)handler
{
  handlerCopy = handler;
  if (classic == 1)
  {
    v15 = 0;
  }

  else
  {
    if (classic == 3)
    {
      v13 = "User canceled pairing";
      v14 = -6723;
    }

    else
    {
      if (classic != 2)
      {
        v15 = CBErrorF(-6705, "Bad pairing action", v6, v7, v8, v9, v10, v11, v20);
        handlerCopy[2](handlerCopy, v15);
        goto LABEL_10;
      }

      v13 = "User rejected pairing";
      v14 = -71146;
    }

    v15 = CBErrorF(v14, v13, v6, v7, v8, v9, v10, v11, v20);
  }

  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v16, "mTyp", "CnPC");
  v17 = objc_alloc_init(CBPairingInfo);
  [(CBPairingInfo *)v17 setDevice:self->_peerDevice];
  [(CBPairingInfo *)v17 setError:v15];
  CUXPCEncodeObject();
  _ensureXPCStarted = [(CBConnection *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __63__CBConnection__pairingPerformActionClassic_completionHandler___block_invoke;
  handler[3] = &unk_1E811D1B0;
  v22 = handlerCopy;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v16, dispatchQueue, handler);

LABEL_10:
}

void __63__CBConnection__pairingPerformActionClassic_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(v2 + 16))(v2, v3);
}

- (void)_pairingPerformActionClassic:(int)classic withOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (classic == 1)
  {
    v18 = 0;
  }

  else
  {
    if (classic == 3)
    {
      v16 = "User canceled pairing";
      v17 = -6723;
    }

    else
    {
      if (classic != 2)
      {
        v18 = CBErrorF(-6705, "Bad pairing action", v9, v10, v11, v12, v13, v14, v24);
        handlerCopy[2](handlerCopy, v18);
        goto LABEL_12;
      }

      v16 = "User rejected pairing";
      v17 = -71146;
    }

    v18 = CBErrorF(v17, v16, v9, v10, v11, v12, v13, v14, v24);
  }

  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v19, "mTyp", "CnPC");
  v20 = objc_alloc_init(CBPairingInfo);
  [(CBPairingInfo *)v20 setDevice:self->_peerDevice];
  [(CBPairingInfo *)v20 setError:v18];
  if (optionsCopy)
  {
    v21 = [optionsCopy objectForKeyedSubscript:@"kCBMsgArgPairingPasskey"];
    [(CBPairingInfo *)v20 setPin:v21];
  }

  CUXPCEncodeObject();
  _ensureXPCStarted = [(CBConnection *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __75__CBConnection__pairingPerformActionClassic_withOptions_completionHandler___block_invoke;
  handler[3] = &unk_1E811D1B0;
  v26 = handlerCopy;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v19, dispatchQueue, handler);

LABEL_12:
}

void __75__CBConnection__pairingPerformActionClassic_withOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(v2 + 16))(v2, v3);
}

- (void)pairWithOOBData:(id)data
{
  v4 = [data copy];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__CBConnection_pairWithOOBData___block_invoke;
  v7[3] = &unk_1E811CF50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_pairWithOOBData:(id)data
{
  dataCopy = data;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __33__CBConnection__pairWithOOBData___block_invoke;
  v36[3] = &unk_1E811D378;
  v36[4] = self;
  v36[5] = &v37;
  v12 = MEMORY[0x1C68DF720](v36);
  if (self->_invalidateCalled)
  {
    v30 = CBErrorF(-71148, "Use after invalidate", v6, v7, v8, v9, v10, v11, v34);
    v19 = v38[5];
    v38[5] = v30;
  }

  else
  {
    v19 = self->_peripheral;
    if (v19)
    {
      sharedPairingAgent = [(CBManager *)self->_centralManager sharedPairingAgent];
      v27 = sharedPairingAgent;
      if (sharedPairingAgent)
      {
        [sharedPairingAgent setDelegate:self];
        var0 = self->_ucat->var0;
        if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
        {
          identifier = [(CBPeer *)v19 identifier];
          v35 = CUPrintNSDataHex();
          LogPrintF_safe();
        }

        objc_storeStrong(&self->_pairingOOBData, data);
        [v27 pairPeer:v19];
      }

      else
      {
        v32 = CBErrorF(-6705, "No pairing agent", v21, v22, v23, v24, v25, v26, v34);
        v33 = v38[5];
        v38[5] = v32;
      }
    }

    else
    {
      v31 = CBErrorF(-6705, "No peer", v13, v14, v15, v16, v17, v18, v34);
      v27 = v38[5];
      v38[5] = v31;
    }
  }

  v12[2](v12);
  _Block_object_dispose(&v37, 8);
}

void __33__CBConnection__pairWithOOBData___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v1 = **(*(a1 + 32) + 152);
    if (v1 <= 90 && (v1 != -1 || _LogCategory_Initialize()))
    {
      v2 = CUPrintNSError();
      LogPrintF_safe();
    }
  }
}

- (void)readWithCBReadRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CBConnection_readWithCBReadRequest___block_invoke;
  v7[3] = &unk_1E811CF50;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

void __38__CBConnection_readWithCBReadRequest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 49) == 1)
  {
    v2 = *(a1 + 40);
    v6 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294896148, "Invalidated (R)");
    [v1 _completeReadRequest:v2 error:v6];
  }

  else
  {
    v3 = *(v1 + 104);
    [v3 addObject:*(a1 + 40)];
    v5 = *(a1 + 32);
    if ((v5[28] & 0x80000000) == 0)
    {

      [v5 _processReads:0];
    }
  }
}

- (void)_processReads:(BOOL)reads
{
  readsCopy = reads;
  v4 = 0;
  v5 = &OBJC_IVAR___CBReadRequest__length;
  while (1)
  {
    v6 = self->_readRequestCurrent;
    if (!v6)
    {
      firstObject = [(NSMutableArray *)self->_readRequests firstObject];
      if (firstObject)
      {
        obja = firstObject;
        [(NSMutableArray *)self->_readRequests removeObjectAtIndex:0];
        [(CBConnection *)self _prepareReadRequest:obja];
        objc_storeStrong(&self->_readRequestCurrent, obja);
        v6 = obja;
        goto LABEL_5;
      }

      if (readsCopy)
      {
        if (v4)
        {
          if (!self->_readSuspended)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        if ([(CBConnection *)self _processReadStatus])
        {
          if (!self->_readSuspended)
          {
            self->_readSuspended = 1;
            dispatch_suspend(self->_readSource);
          }

          goto LABEL_38;
        }

        if (self->_readSuspended)
        {
LABEL_37:
          self->_readSuspended = 0;
          dispatch_resume(self->_readSource);
        }
      }

LABEL_38:
      v20 = 0;
      goto LABEL_21;
    }

LABEL_5:
    v8 = *(&v6->super.isa + *v5);
    obj = v6;
    [(CBReadRequest *)v6 minLength:v22];
    [(CBReadRequest *)obj maxLength];
    Data = SocketReadDataEx();
    var0 = self->_ucat->var0;
    if (var0 <= 9 && (var0 != -1 || _LogCategory_Initialize()))
    {
      socketFD = self->_socketFD;
      minLength = [(CBReadRequest *)obj minLength];
      maxLength = [(CBReadRequest *)obj maxLength];
      v13 = v5;
      v14 = *(&obj->super.isa + *v5);
      CUPrintErrorCode();
      v27 = v26 = v14;
      v5 = v13;
      v24 = maxLength;
      v25 = v8;
      v22 = socketFD;
      v23 = minLength;
      LogPrintF_safe();
    }

    if (Data)
    {
      break;
    }

    v15 = *(&obj->super.isa + *v5);
    bufferData = [(CBReadRequest *)obj bufferData];
    [bufferData setLength:v15];

    readRequestCurrent = self->_readRequestCurrent;
    self->_readRequestCurrent = 0;

    [(CBConnection *)self _completeReadRequest:obj error:0];
    if (++v4 == 4)
    {
      if (self->_readSuspended)
      {
        self->_readSuspended = 0;
        readSource = self->_readSource;

        dispatch_resume(readSource);
      }

      return;
    }
  }

  if (Data == 35)
  {
    if (self->_readSuspended)
    {
      self->_readSuspended = 0;
      dispatch_resume(self->_readSource);
    }
  }

  else
  {
    v18 = *MEMORY[0x1E696A768];
    if (Data == -6753)
    {
      NSErrorF_safe(v18, Data, "Read EOF", v22, v23, v24, v25, v26, v27);
    }

    else
    {
      NSErrorF_safe(v18, Data, "Read error", v22, v23, v24, v25, v26, v27);
    }
    v19 = ;
    [(CBConnection *)self _abortReadsWithError:v19];
  }

  v20 = obj;
LABEL_21:
}

- (void)_prepareReadRequest:(id)request
{
  requestCopy = request;
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(requestCopy, "maxLength")}];
  [requestCopy setBufferData:v4];

  bufferData = [requestCopy bufferData];
  requestCopy[1] = [bufferData mutableBytes];

  bufferData2 = [requestCopy bufferData];
  [requestCopy setData:bufferData2];

  requestCopy[3] = 0;
  v7 = requestCopy[2];
  requestCopy[2] = 0;

  var0 = self->_ucat->var0;
  if (var0 <= 9)
  {
    v9 = requestCopy;
    if (var0 != -1)
    {
      goto LABEL_3;
    }

    if (_LogCategory_Initialize())
    {
      v9 = requestCopy;
LABEL_3:
      [v9 minLength];
      [requestCopy maxLength];
      LogPrintF_safe();
      v10 = requestCopy;

      goto LABEL_5;
    }
  }

  v10 = requestCopy;

LABEL_5:
}

- (void)_abortReadsWithError:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_readRequestCurrent || [(NSMutableArray *)self->_readRequests count])
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      v17 = CUPrintNSError();
      LogPrintF_safe();
    }
  }

  v6 = self->_readRequestCurrent;
  if (v6)
  {
    readRequestCurrent = self->_readRequestCurrent;
    self->_readRequestCurrent = 0;

    [(CBConnection *)self _completeReadRequest:v6 error:errorCopy];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_readRequests;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      v13 = v6;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v6 = *(*(&v18 + 1) + 8 * v12);

        [(CBConnection *)self _completeReadRequest:v6 error:errorCopy];
        ++v12;
        v13 = v6;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [(NSMutableArray *)self->_readRequests removeAllObjects];
  readSource = self->_readSource;
  if (readSource && !self->_readSuspended)
  {
    self->_readSuspended = 1;
    dispatch_suspend(readSource);
  }

  v15 = MEMORY[0x1C68DF720](self->_errorHandler);
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  if (v15)
  {
    (v15)[2](v15, errorCopy);
  }

  [(CBConnection *)self _invalidated];
}

- (BOOL)_processReadStatus
{
  do
  {
    v12 = 0;
    v3 = recv(self->_socketFD, &v12, 1uLL, 2);
    if ((v3 & 0x8000000000000000) == 0)
    {
      if (!v3)
      {
        v9 = MEMORY[0x1C68DF720](self->_errorHandler);
        errorHandler = self->_errorHandler;
        self->_errorHandler = 0;

        if (v9)
        {
          v11 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960543, "Read status EOF");
          (v9)[2](v9, v11);
        }

        return 1;
      }

      return 1;
    }

    if (!*__error())
    {
      v4 = 4294960596;
      goto LABEL_10;
    }

    v4 = *__error();
  }

  while (v4 == 4);
  if (!v4)
  {
    return 1;
  }

  if (v4 == 35)
  {
    return 0;
  }

LABEL_10:
  v6 = MEMORY[0x1C68DF720](self->_errorHandler);
  v7 = self->_errorHandler;
  self->_errorHandler = 0;

  if (v6)
  {
    v8 = NSErrorF_safe(*MEMORY[0x1E696A768], v4, "Read status error");
    (v6)[2](v6, v8);
  }

  return 1;
}

- (void)_completeReadRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  var0 = self->_ucat->var0;
  if (var0 <= 9)
  {
    v8 = requestCopy;
    if (var0 != -1)
    {
LABEL_3:
      [v8 length];
      v11 = CUPrintNSError();
      LogPrintF_safe();

      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v8 = requestCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  v9 = requestCopy[2];
  requestCopy[2] = errorCopy;

  completion = [requestCopy completion];
  [requestCopy setCompletion:0];
  if (completion)
  {
    completion[2](completion);
  }
}

- (void)writeWithCBWriteRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__CBConnection_writeWithCBWriteRequest___block_invoke;
  v7[3] = &unk_1E811CF50;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

void __40__CBConnection_writeWithCBWriteRequest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 49) == 1)
  {
    v2 = *(a1 + 40);
    v6 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294896148, "Invalidated (W)");
    [v1 _completeWriteRequest:v2 error:v6];
  }

  else
  {
    v3 = *(v1 + 144);
    [v3 addObject:*(a1 + 40)];
    v5 = *(a1 + 32);
    if ((v5[28] & 0x80000000) == 0)
    {

      [v5 _processWrites];
    }
  }
}

- (void)writeEndOfDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(CBWriteRequest);
  [(CBWriteRequest *)v5 setEndOfData:1];
  if (completionCopy)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __45__CBConnection_writeEndOfDataWithCompletion___block_invoke;
    v9 = &unk_1E811CFA0;
    v10 = v5;
    v11 = completionCopy;
    [(CBWriteRequest *)v5 setCompletion:&v6];
  }

  [(CBConnection *)self writeWithCBWriteRequest:v5, v6, v7, v8, v9];
}

void __45__CBConnection_writeEndOfDataWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)_processWrites
{
  v3 = 4;
  v21 = *MEMORY[0x1E696A768];
  do
  {
    v6 = self->_writeRequestCurrent;
    if (v6)
    {
      goto LABEL_6;
    }

    firstObject = [(NSMutableArray *)self->_writeRequests firstObject];
    if (!firstObject)
    {
      if (!self->_writeSuspended)
      {
        self->_writeSuspended = 1;
        dispatch_suspend(self->_writeSource);
      }

      v6 = 0;
      goto LABEL_37;
    }

    v6 = firstObject;
    [(NSMutableArray *)self->_writeRequests removeObjectAtIndex:0];
    v22 = 0;
    [(CBConnection *)self _prepareWriteRequest:v6 error:&v22];
    v13 = v22;
    if (!v13)
    {
      objc_storeStrong(&self->_writeRequestCurrent, v6);
LABEL_6:
      ion = v6->_ion;
      v8 = SocketWriteData();
      var0 = self->_ucat->var0;
      if (var0 <= 9 && (var0 != -1 || _LogCategory_Initialize()))
      {
        v10 = v6->_ion;
        socketFD = self->_socketFD;
        CUPrintErrorCode();
        v20 = v19 = v10;
        v17 = socketFD;
        v18 = ion;
        LogPrintF_safe();
      }

      if (v8)
      {
        if (v8 == 35)
        {
          if (self->_writeSuspended)
          {
            self->_writeSuspended = 0;
            dispatch_resume(self->_writeSource);
          }
        }

        else
        {
          v16 = NSErrorF_safe(v21, v8, "Write failed");
          [(CBConnection *)self _abortWritesWithError:v16];
        }

LABEL_37:

        return;
      }

      if (![(CBWriteRequest *)v6 endOfData])
      {
        goto LABEL_2;
      }

      v14 = self->_ucat->var0;
      if (v14 <= 9 && (v14 != -1 || _LogCategory_Initialize()))
      {
        v17 = self->_socketFD;
        LogPrintF_safe();
      }

      if (!shutdown(self->_socketFD, 1))
      {
        goto LABEL_2;
      }

      if (*__error())
      {
        v15 = *__error();
        if (!v15)
        {
LABEL_2:
          v4 = 0;
LABEL_3:
          writeRequestCurrent = self->_writeRequestCurrent;
          self->_writeRequestCurrent = 0;

          goto LABEL_4;
        }
      }

      else
      {
        v15 = 4294960596;
      }

      v4 = NSErrorF_safe(v21, v15, "shutdown() failed", v17, v18, v19, v20);
      goto LABEL_3;
    }

    v4 = v13;
LABEL_4:
    [(CBConnection *)self _completeWriteRequest:v6 error:v4, v17];

    --v3;
  }

  while (v3);
  if (self->_writeSuspended)
  {
    self->_writeSuspended = 0;
    dispatch_resume(self->_writeSource);
  }
}

- (BOOL)_prepareWriteRequest:(id)request error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dataArray = [requestCopy dataArray];
  v8 = [dataArray count];
  if (v8 >= 0x11)
  {
    [CBConnection _prepareWriteRequest:error error:?];
  }

  else
  {
    selfCopy = self;
    v9 = requestCopy + 16;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = dataArray;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          *v9 = [v15 bytes];
          *(v9 + 1) = [v15 length];
          v9 += 16;
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    *(requestCopy + 34) = requestCopy + 16;
    *(requestCopy + 70) = (v9 - (requestCopy + 16)) >> 4;
    *(requestCopy + 36) = 0;
    v16 = *(requestCopy + 1);
    *(requestCopy + 1) = 0;

    if (gLogCategory_CBConnection <= 9 && (gLogCategory_CBConnection != -1 || _LogCategory_Initialize()))
    {
      [CBConnection _prepareWriteRequest:requestCopy error:selfCopy];
    }
  }

  return v8 < 0x11;
}

- (void)_abortWritesWithError:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_writeRequestCurrent || [(NSMutableArray *)self->_writeRequests count])
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      v17 = CUPrintNSError();
      LogPrintF_safe();
    }
  }

  v6 = self->_writeRequestCurrent;
  if (v6)
  {
    writeRequestCurrent = self->_writeRequestCurrent;
    self->_writeRequestCurrent = 0;

    [(CBConnection *)self _completeWriteRequest:v6 error:errorCopy];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_writeRequests;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      v13 = v6;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v6 = *(*(&v18 + 1) + 8 * v12);

        [(CBConnection *)self _completeWriteRequest:v6 error:errorCopy];
        ++v12;
        v13 = v6;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [(NSMutableArray *)self->_writeRequests removeAllObjects];
  writeSource = self->_writeSource;
  if (writeSource && !self->_writeSuspended)
  {
    self->_writeSuspended = 1;
    dispatch_suspend(writeSource);
  }

  v15 = MEMORY[0x1C68DF720](self->_errorHandler);
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  if (v15)
  {
    (v15)[2](v15, errorCopy);
  }

  [(CBConnection *)self _invalidated];
}

- (void)_completeWriteRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  var0 = self->_ucat->var0;
  if (var0 <= 9 && (var0 != -1 || _LogCategory_Initialize()))
  {
    v10 = CUPrintNSError();
    LogPrintF_safe();
  }

  v8 = requestCopy[1];
  requestCopy[1] = errorCopy;

  completion = [requestCopy completion];
  [requestCopy setCompletion:0];
  if (completion)
  {
    completion[2](completion);
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    goto LABEL_13;
  }

  state = [stateCopy state];
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
      if (state <= 0xA)
      {
LABEL_5:
        v6 = off_1E8120680[state];
        goto LABEL_18;
      }

LABEL_17:
      v6 = "?";
LABEL_18:
      v9 = v6;
      LogPrintF_safe();
      if (state > 4)
      {
        goto LABEL_19;
      }

      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      if (state <= 0xA)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  if (state > 4)
  {
LABEL_19:
    if (state == 10 || state == 5)
    {
      [(CBConnection *)self _run];
      v8 = stateCopy;

      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_8:
  if (state == 1)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294896145, "Bluetooth reset", v9);
  }

  else
  {
    if (state != 4)
    {
      goto LABEL_13;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294896144, "Bluetooth powered off", v9);
  }
  v7 = ;
  [(CBConnection *)self _reportError:v7];

LABEL_13:
  v8 = stateCopy;

LABEL_15:
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    identifier = [peripheralCopy identifier];
    blePeerUUID = self->_blePeerUUID;
    v9 = identifier;
    v10 = blePeerUUID;
    if (v9 != v10)
    {
      if ((v9 != 0) != (v10 == 0))
      {
        v11 = v10;
        v12 = [(NSUUID *)v9 isEqual:v10];

        if (v12)
        {
          var0 = self->_ucat->var0;
          if (var0 > 30)
          {
            goto LABEL_15;
          }

          goto LABEL_8;
        }
      }

      else
      {
      }

      v14 = self->_ucat->var0;
      if (v14 <= 60 && (v14 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      goto LABEL_26;
    }

    var0 = self->_ucat->var0;
    if (var0 > 30)
    {
LABEL_15:
      connectTimeoutTimer = self->_connectTimeoutTimer;
      if (connectTimeoutTimer)
      {
        v16 = connectTimeoutTimer;
        dispatch_source_cancel(v16);
        v17 = self->_connectTimeoutTimer;
        self->_connectTimeoutTimer = 0;
      }

      connectionLatency = self->_connectionLatency;
      if (connectionLatency != -99)
      {
        v19 = self->_ucat->var0;
        if (v19 <= 30 && (v19 != -1 || (v20 = _LogCategory_Initialize(), connectionLatency = self->_connectionLatency, v20)))
        {
          v23 = CBCentralManagerConnectionLatencyToString(connectionLatency);
          LogPrintF_safe();
          [managerCopy setDesiredConnectionLatency:self->_connectionLatency forPeripheral:{peripheralCopy, v9, v23}];
        }

        else
        {
          [managerCopy setDesiredConnectionLatency:connectionLatency forPeripheral:{peripheralCopy, v21, v22}];
        }
      }

      self->_guardConnected = 1;
      [(CBConnection *)self _run];
LABEL_26:

      goto LABEL_27;
    }

LABEL_8:
    if (var0 != -1 || _LogCategory_Initialize())
    {
      v21 = v9;
      LogPrintF_safe();
    }

    goto LABEL_15;
  }

LABEL_27:
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    identifier = [peripheralCopy identifier];
    blePeerUUID = self->_blePeerUUID;
    v10 = identifier;
    v11 = blePeerUUID;
    if (v10 != v11)
    {
      if ((v10 != 0) != (v11 == 0))
      {
        v12 = v11;
        v13 = [(NSUUID *)v10 isEqual:v11];

        if (v13)
        {
          var0 = self->_ucat->var0;
          if (var0 > 90)
          {
LABEL_15:
            if (errorCopy)
            {
              [(CBConnection *)self _reportError:errorCopy];
            }

            else
            {
              v16 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960543, "Connect failed without error");
              [(CBConnection *)self _reportError:v16];
            }

LABEL_19:

            goto LABEL_20;
          }

LABEL_8:
          if (var0 != -1 || _LogCategory_Initialize())
          {
            v17 = CUPrintNSError();
            LogPrintF_safe();
          }

          goto LABEL_15;
        }
      }

      else
      {
      }

      v15 = self->_ucat->var0;
      if (v15 <= 60 && (v15 != -1 || _LogCategory_Initialize()))
      {
        v18 = CUPrintNSError();
        LogPrintF_safe();
      }

      goto LABEL_19;
    }

    var0 = self->_ucat->var0;
    if (var0 > 90)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

LABEL_20:
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  v64[1] = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v50 = pairingCopy;
  identifier = [pairingCopy identifier];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__3;
  v59 = __Block_byref_object_dispose__3;
  v60 = 0;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __64__CBConnection_pairingAgent_peerDidRequestPairing_type_passkey___block_invoke;
  v51[3] = &unk_1E81205A8;
  v51[4] = self;
  v51[5] = identifier;
  v53 = &v55;
  typeCopy = type;
  v13 = passkeyCopy;
  v52 = v13;
  v14 = MEMORY[0x1C68DF720](v51);
  identifier2 = [(CBPeer *)self->_peripheral identifier];
  v16 = identifier2;
  if (identifier2)
  {
    identifier3 = identifier2;
  }

  else
  {
    peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
    identifier3 = [peer identifier];
  }

  if (([identifier isEqual:identifier3] & 1) == 0)
  {
    v44 = CBErrorF(-6727, "peer not found", v19, v20, v21, v22, v23, v24, v45);
    v31 = v56[5];
    v56[5] = v44;
    goto LABEL_47;
  }

  v31 = self->_pairingOOBData;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      if (type <= 5)
      {
LABEL_8:
        v33 = off_1E81206D8[type];
        if (v31)
        {
LABEL_9:
          v34 = CUPrintNSDataHex();
          goto LABEL_14;
        }

LABEL_13:
        v34 = @"nil";
LABEL_14:
        v47 = v13;
        v48 = v34;
        v45 = identifier;
        v46 = v33;
        LogPrintF_safe();
        if (v31)
        {
        }

        goto LABEL_16;
      }
    }

    else if (type <= 5)
    {
      goto LABEL_8;
    }

    v33 = "?";
    if (v31)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_16:
  self->_pairingType = type;
  if (type)
  {
    if (type == 5)
    {
      if (v31)
      {
        v35 = self->_ucat->var0;
        if (v35 <= 30 && (v35 != -1 || _LogCategory_Initialize()))
        {
          CUPrintNSDataHex();
          v47 = v46 = "OOB";
          v45 = identifier;
          LogPrintF_safe();
        }

        v63 = @"kCBMsgArgPairingData";
        v64[0] = v31;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:{1, v45, v46, v47, v48}];
        [agentCopy respondToPairingRequest:v50 type:5 accept:1 data:v36];
        goto LABEL_44;
      }

      v41 = CBErrorF(-6745, "No OOB data", v25, v26, v27, v28, v29, v30, v45);
LABEL_34:
      v36 = v56[5];
      v56[5] = v41;
LABEL_44:

      goto LABEL_47;
    }

    if (type > 4 || ((1 << type) & 0x16) == 0)
    {
      v41 = CBErrorF(-6735, "Unsupported pairing type", v25, v26, v27, v28, v29, v30, v45);
      goto LABEL_34;
    }

    v38 = MEMORY[0x1C68DF720](self->_pairingPromptHandler);
    if (v38)
    {
      v39 = objc_alloc_init(CBPairingInfo);
      [(CBPairingInfo *)v39 setDevice:self->_peerDevice];
      [(CBPairingInfo *)v39 setPairingType:type];
      if (log10([v13 intValue]) < 4.0)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%04d", objc_msgSend(v13, "intValue")];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%06d", objc_msgSend(v13, "intValue")];
      }
      v42 = ;
      [(CBPairingInfo *)v39 setPin:v42];

      (v38)[2](v38, v39);
    }

    if (type == 1 && (self->_connectionFlags & 0x200) != 0)
    {
      v43 = self->_ucat->var0;
      if (v43 <= 30 && (v43 != -1 || _LogCategory_Initialize()))
      {
        v45 = identifier;
        v46 = "Display";
        LogPrintF_safe();
      }

      if (v13)
      {
        v61 = @"kCBMsgArgPairingPasskey";
        v62 = v13;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      }

      else
      {
        v36 = MEMORY[0x1E695E0F8];
      }

      [agentCopy respondToPairingRequest:v50 type:1 accept:1 data:{v36, v45, v46, v47, v48}];
      goto LABEL_44;
    }
  }

  else
  {
    if ((self->_connectionFlags & 0x80) == 0)
    {
      v36 = MEMORY[0x1C68DF720](self->_pairingPromptHandler);
      if (v36)
      {
        v37 = objc_alloc_init(CBPairingInfo);
        [(CBPairingInfo *)v37 setDevice:self->_peerDevice];
        [(CBPairingInfo *)v37 setPairingType:0];
        (v36)[2](v36, v37);
      }

      goto LABEL_44;
    }

    v40 = self->_ucat->var0;
    if (v40 <= 30 && (v40 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
      [agentCopy respondToPairingRequest:v50 type:0 accept:1 data:{MEMORY[0x1E695E0F8], identifier, "JustWorks", v47, v48}];
    }

    else
    {
      [agentCopy respondToPairingRequest:v50 type:0 accept:1 data:{MEMORY[0x1E695E0F8], v45, v46, v47, v48}];
    }
  }

LABEL_47:

  v14[2](v14);
  _Block_object_dispose(&v55, 8);
}

void __64__CBConnection_pairingAgent_peerDidRequestPairing_type_passkey___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v1 = **(*(a1 + 32) + 152);
    if (v1 <= 90 && (v1 != -1 || _LogCategory_Initialize()))
    {
      v2 = CUPrintNSError();
      LogPrintF_safe();
    }
  }
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  dispatchQueue = self->_dispatchQueue;
  pairingCopy = pairing;
  dispatch_assert_queue_V2(dispatchQueue);
  identifier = [pairingCopy identifier];

  identifier2 = [(CBPeer *)self->_peripheral identifier];
  v8 = identifier2;
  if (identifier2)
  {
    identifier3 = identifier2;
  }

  else
  {
    peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
    identifier3 = [peer identifier];
  }

  v11 = [identifier isEqual:identifier3];
  var0 = self->_ucat->var0;
  if (v11)
  {
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    pairingOOBData = self->_pairingOOBData;
    self->_pairingOOBData = 0;

    v14 = MEMORY[0x1C68DF720](self->_pairingCompletedHandler);
    if (v14)
    {
      v15 = self->_peerDevice;
      if (!v15)
      {
        v15 = objc_alloc_init(CBDevice);
        uUIDString = [identifier UUIDString];
        [(CBDevice *)v15 setIdentifier:uUIDString];
      }

      (v14)[2](v14, v15, 0);
    }
  }

  else
  {
    [CBConnection pairingAgent:self->_ucat peerDidCompletePairing:?];
  }
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  pairingCopy = pairing;
  dispatch_assert_queue_V2(dispatchQueue);
  identifier = [pairingCopy identifier];

  identifier2 = [(CBPeer *)self->_peripheral identifier];
  v11 = identifier2;
  if (identifier2)
  {
    identifier3 = identifier2;
  }

  else
  {
    peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
    identifier3 = [peer identifier];
  }

  v14 = [identifier isEqual:identifier3];
  var0 = self->_ucat->var0;
  if (v14)
  {
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      v20 = CUPrintNSError();
      LogPrintF_safe();
    }

    pairingOOBData = self->_pairingOOBData;
    self->_pairingOOBData = 0;

    v17 = MEMORY[0x1C68DF720](self->_pairingCompletedHandler);
    if (v17)
    {
      v18 = self->_peerDevice;
      if (!v18)
      {
        v18 = objc_alloc_init(CBDevice);
        uUIDString = [identifier UUIDString];
        [(CBDevice *)v18 setIdentifier:uUIDString];
      }

      (v17)[2](v17, v18, errorCopy);
    }
  }

  else
  {
    [CBConnection pairingAgent:self->_ucat peerDidFailToCompletePairing:? error:?];
  }
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  dispatchQueue = self->_dispatchQueue;
  unpairCopy = unpair;
  dispatch_assert_queue_V2(dispatchQueue);
  identifier = [unpairCopy identifier];

  identifier2 = [(CBPeer *)self->_peripheral identifier];
  v8 = identifier2;
  if (identifier2)
  {
    identifier3 = identifier2;
  }

  else
  {
    peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
    identifier3 = [peer identifier];
  }

  v11 = [identifier isEqual:identifier3];
  var0 = self->_ucat->var0;
  if (v11)
  {
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else
  {
    [CBConnection pairingAgent:self->_ucat peerDidUnpair:?];
  }
}

- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error
{
  peripheralCopy = peripheral;
  channelCopy = channel;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    goto LABEL_25;
  }

  if (!self->_l2capChannel)
  {
    identifier = [peripheralCopy identifier];
    blePeerUUID = self->_blePeerUUID;
    v14 = identifier;
    v15 = blePeerUUID;
    if (v14 == v15)
    {
    }

    else
    {
      if ((v14 != 0) == (v15 == 0))
      {

LABEL_18:
        var0 = self->_ucat->var0;
        if (var0 <= 60 && (var0 != -1 || _LogCategory_Initialize()))
        {
          identifier2 = [peripheralCopy identifier];
          v27 = CUPrintNSError();
          LogPrintF_safe();

          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v16 = v15;
      v17 = [(NSUUID *)v14 isEqual:v15];

      if ((v17 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v18 = self->_ucat->var0;
    if (v18 <= 30 && (v18 != -1 || _LogCategory_Initialize()))
    {
      CUPrintNSError();
      v26 = identifier3 = channelCopy;
      LogPrintF_safe();
    }

    if (errorCopy)
    {
      identifier2 = NSErrorNestedF();
      [(CBConnection *)self _reportError:identifier2];
      goto LABEL_24;
    }

    v20 = channelCopy;
    identifier2 = v20;
    if (!v20)
    {
      v23 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "L2CAP open channel null");
      [(CBConnection *)self _reportError:v23];

      goto LABEL_24;
    }

    if ([v20 PSM] == self->_blePSM)
    {
      objc_storeStrong(&self->_l2capChannel, channel);
      v21 = self->_ucat->var0;
      if (v21 <= 30 && (v21 != -1 || _LogCategory_Initialize()))
      {
        peer = [identifier2 peer];
        identifier3 = [peer identifier];
        v26 = [identifier2 PSM];
        LogPrintF_safe();
      }

      [(CBConnection *)self _run:identifier3];
      goto LABEL_24;
    }

    v24 = self->_ucat->var0;
    if (v24 > 60 || v24 == -1 && !_LogCategory_Initialize())
    {
LABEL_24:

      goto LABEL_25;
    }

    [identifier2 PSM];
LABEL_6:
    LogPrintF_safe();
    goto LABEL_24;
  }

  v10 = self->_ucat->var0;
  if (v10 <= 60 && (v10 != -1 || _LogCategory_Initialize()))
  {
    identifier2 = CUPrintNSError();
    goto LABEL_6;
  }

LABEL_25:
}

- (void)readWithRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(CBReadRequest);
  -[CBReadRequest setMinLength:](v5, "setMinLength:", [requestCopy minLength]);
  -[CBReadRequest setMaxLength:](v5, "setMaxLength:", [requestCopy maxLength]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __32__CBConnection_readWithRequest___block_invoke;
  v10 = &unk_1E811CF50;
  v11 = requestCopy;
  v12 = v5;
  v6 = requestCopy;
  [(CBReadRequest *)v5 setCompletion:&v7];
  [(CBConnection *)self readWithCBReadRequest:v5, v7, v8, v9, v10];
}

void __32__CBConnection_readWithRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) data];
  [*(a1 + 32) setData:v2];

  v3 = [*(a1 + 40) error];
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E6999580];
  v6 = *(v4 + v5);
  *(v4 + v5) = v3;

  v7 = [*(a1 + 40) length];
  *(*(a1 + 32) + *MEMORY[0x1E6999588]) = v7;
  v9 = [*(a1 + 32) completion];
  [*(a1 + 32) setCompletion:0];
  v8 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9);
    v8 = v9;
  }
}

- (void)writeWithRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(CBWriteRequest);
  dataArray = [requestCopy dataArray];
  [(CBWriteRequest *)v5 setDataArray:dataArray];

  -[CBWriteRequest setEndOfData:](v5, "setEndOfData:", [requestCopy endOfData]);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __33__CBConnection_writeWithRequest___block_invoke;
  v11 = &unk_1E811CF50;
  v12 = requestCopy;
  v13 = v5;
  v7 = requestCopy;
  [(CBWriteRequest *)v5 setCompletion:&v8];
  [(CBConnection *)self writeWithCBWriteRequest:v5, v8, v9, v10, v11];
}

void __33__CBConnection_writeWithRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) error];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E6999590];
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  v7 = [*(a1 + 32) completion];
  [*(a1 + 32) setCompletion:0];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7);
    v6 = v7;
  }
}

- (CBConnection)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v13 = [(CBConnection *)self init];
  if (!v13)
  {
    if (!error)
    {
      goto LABEL_35;
    }

    v29 = "CBConnection init failed";
LABEL_34:
    CBErrorF(-6756, v29, v7, v8, v9, v10, v11, v12, v30);
    *error = v27 = 0;
    goto LABEL_29;
  }

  v14 = MEMORY[0x1C68DFDD0](objectCopy);
  if (v14 != MEMORY[0x1E69E9E80])
  {
    if (!error)
    {
      goto LABEL_35;
    }

    v29 = "XPC non-dict";
    goto LABEL_34;
  }

  v15 = OUTLINED_FUNCTION_0_6(v14, "cid", v7);
  if (v15 == 6)
  {
    v13->_clientID = 0;
  }

  else if (v15 == 5)
  {
    goto LABEL_35;
  }

  v17 = OUTLINED_FUNCTION_0_6(v15, "CnFl", v16);
  if (v17 == 6)
  {
    v13->_connectionFlags = 0;
  }

  else if (v17 == 5)
  {
    goto LABEL_35;
  }

  v18 = CUXPCDecodeDouble();
  if (!v18)
  {
    goto LABEL_35;
  }

  v20 = OUTLINED_FUNCTION_0_6(v18, "intF", v19);
  if (v20 == 6)
  {
    v13->_internalFlags = 0;
  }

  else if (v20 == 5)
  {
    goto LABEL_35;
  }

  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_35;
  }

  v21 = CUXPCDecodeUInt64RangedEx();
  if (v21 == 6)
  {
    v13->_blePSM = 0;
  }

  else if (v21 == 5)
  {
    goto LABEL_35;
  }

  v23 = OUTLINED_FUNCTION_0_6(v21, "svFl", v22);
  if (v23 == 6)
  {
    v13->_serviceFlags = 0;
  }

  else if (v23 == 5)
  {
    goto LABEL_35;
  }

  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_35;
  }

  v24 = CUXPCDecodeSInt64RangedEx();
  if (v24 == 6)
  {
    v13->_socketFD = 0;
  }

  else if (v24 == 5)
  {
    goto LABEL_35;
  }

  v26 = OUTLINED_FUNCTION_0_6(v24, "ucas", v25);
  if (v26 == 6)
  {
    v13->_useCase = 0;
    goto LABEL_27;
  }

  if (v26 == 5)
  {
LABEL_35:
    v27 = 0;
    goto LABEL_29;
  }

LABEL_27:
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_35;
  }

  v27 = v13;
LABEL_29:

  return v27;
}

- (void)initWithXPCEventRepresentation:(void *)a3 error:.cold.1(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    *a1 = CBErrorF(-6705, "Bad peer ID: %@", v6, v7, v8, v9, v10, v11, v5);
  }

  *a3 = 0;
}

- (int)xpcReceivedForwardedEvent:(int *)a1 .cold.1(int **a1)
{
  result = *a1;
  if (*result <= 90)
  {
    if (*result != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)xpcReceivedForwardedEvent:(uint64_t)a1 .cold.2(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_7(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)xpcReceivedPairingCompleted:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_7(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)xpcReceivedPairingPrompt:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_7(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

- (void)_setupIOAndReturnError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960549, "Create write source failed");
    *v1 = result;
  }

  return result;
}

void __55__CBConnection_pairingPerformAction_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CBErrorF(-71148, "Use after invalidate", a3, a4, a5, a6, a7, a8, v10);
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_2_7();
  v9(v8);
}

void __67__CBConnection_pairingPerformAction_withOptions_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CBErrorF(-71148, "Use after invalidate", a3, a4, a5, a6, a7, a8, v10);
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_2_7();
  v9(v8);
}

- (void)_prepareWriteRequest:(void *)result error:.cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960532, "Too many write elements (%zu max)", 0x10uLL);
    *v1 = result;
  }

  return result;
}

- (int)_prepareWriteRequest:(uint64_t)a1 error:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 280);
  if (v2)
  {
    v3 = *(a1 + 272);
    v4 = (v2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v4 > 3)
    {
      v7 = v4 + 1;
      v8 = v7 & 3;
      if ((v7 & 3) == 0)
      {
        v8 = 4;
      }

      v9 = v7 - v8;
      v6 = v3 + 16 * v9;
      v10 = (v3 + 40);
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v13 = v10 - 4;
        v14 = vld2q_f64(v13);
        v15 = vld2q_f64(v10);
        v11 = vaddq_s64(v14, v11);
        v12 = vaddq_s64(v15, v12);
        v10 += 8;
        v9 -= 4;
      }

      while (v9);
      v5 = vaddvq_s64(vaddq_s64(v12, v11));
    }

    else
    {
      v5 = 0;
      v6 = *(a1 + 272);
    }

    v16 = v3 + 16 * v2;
    do
    {
      v5 += *(v6 + 8);
      v6 += 16;
    }

    while (v6 != v16);
  }

  result = *(a2 + 152);
  if (*result <= 9)
  {
    if (*result != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)pairingAgent:(uint64_t)result peerDidCompletePairing:(uint64_t)a2 .cold.1(uint64_t result, uint64_t a2)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_4_3();
    }

    result = OUTLINED_FUNCTION_3_6(result, a2);
    if (result)
    {
      return OUTLINED_FUNCTION_4_3();
    }
  }

  return result;
}

- (uint64_t)pairingAgent:(uint64_t)result peerDidFailToCompletePairing:(uint64_t)a2 error:.cold.1(uint64_t result, uint64_t a2)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_4_3();
    }

    result = OUTLINED_FUNCTION_3_6(result, a2);
    if (result)
    {
      return OUTLINED_FUNCTION_4_3();
    }
  }

  return result;
}

- (uint64_t)pairingAgent:(uint64_t)result peerDidUnpair:(uint64_t)a2 .cold.1(uint64_t result, uint64_t a2)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_4_3();
    }

    result = OUTLINED_FUNCTION_3_6(result, a2);
    if (result)
    {
      return OUTLINED_FUNCTION_4_3();
    }
  }

  return result;
}

@end