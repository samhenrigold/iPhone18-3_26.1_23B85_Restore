@interface CBStackBLEAdvertiserBTStack
- (BOOL)shouldAdvertiseForWPDaemon:(id)daemon advData:(void *)data advInstanceType:(unsigned __int8)type;
- (BOOL)shouldAdvertiseSafetyAlerts:(unsigned __int8)alerts advData:(void *)data;
- (CBStackBLEAdvertiserBTStack)init;
- (id)descriptionWithLevel:(int)level;
- (void)_stopAllAdvertisings;
- (void)_tearDownStackSessions;
- (void)_updateMultiInstancesAdvertising;
- (void)activate;
- (void)invalidate;
@end

@implementation CBStackBLEAdvertiserBTStack

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50B90 <= 30 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
  {
    v3 = CUDescriptionWithLevel();
    LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack activate]", 30, "Activate: %@", v3);
  }

  [(CBStackBLEAdvertiserBTStack *)self _updateConnectable];
  [(CBStackBLEAdvertiserBTStack *)self _updateNonConnectable];
  [(CBStackBLEAdvertiserBTStack *)self _updateNonConnectableContact];
  [(CBStackBLEAdvertiserBTStack *)self _updateNonConnectableObjectDiscovery];
  if (_os_feature_enabled_impl())
  {

    [(CBStackBLEAdvertiserBTStack *)self _updateMultiInstancesAdvertising];
  }
}

- (void)_stopAllAdvertisings
{
  btSessionPtrConnectable = self->_btSessionPtrConnectable;
  btSessionPtrNonConnectable = self->_btSessionPtrNonConnectable;
  advertisingStartedNonConnectable = self->_advertisingStartedNonConnectable;
  btSessionPtrNonConnectableContact = self->_btSessionPtrNonConnectableContact;
  btSessionPtrNonConnectableObjectDiscovery = self->_btSessionPtrNonConnectableObjectDiscovery;
  advertisingStartedNonConnectableObjectDiscovery = self->_advertisingStartedNonConnectableObjectDiscovery;
  advertisingStartedNonConnectableContact = self->_advertisingStartedNonConnectableContact;
  btSessionPtrMultiInstancesAdv = self->_btSessionPtrMultiInstancesAdv;
  advertisingStartedMultiInstancesAdv = self->_advertisingStartedMultiInstancesAdv;
  if (btSessionPtrConnectable && self->_advertisingStartedConnectable)
  {
    if (qword_100B50C68 != -1)
    {
      sub_1008068EC();
    }

    v8 = sub_1000689C0(off_100B50C60, btSessionPtrConnectable);
    v9 = objc_retainBlock(self->_advStoppedHandler);
    if (v9)
    {
      v39 = @"kCBMsgArgResult";
      v10 = [NSNumber numberWithInt:v8];
      v40 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v12 = [NSError errorWithInfo:v11];
      v9[2](v9, v12, 1);
    }

    if (v8 && v8 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v13 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack _stopAllAdvertisings]", 90, "### Advertising CA stop failed: %@", v13);
    }
  }

  if (btSessionPtrNonConnectable && advertisingStartedNonConnectable)
  {
    if (qword_100B50C68 != -1)
    {
      sub_100806900();
    }

    v14 = sub_1000689C0(off_100B50C60, btSessionPtrNonConnectable);
    v15 = objc_retainBlock(self->_advStoppedHandler);
    if (v15)
    {
      v37 = @"kCBMsgArgResult";
      v16 = [NSNumber numberWithInt:v14];
      v38 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v18 = [NSError errorWithInfo:v17];
      v15[2](v15, v18, 2);
    }

    if (v14 && v14 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v19 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack _stopAllAdvertisings]", 90, "### Advertising NC stop failed: %@", v19);
    }
  }

  if (btSessionPtrNonConnectableContact && advertisingStartedNonConnectableContact)
  {
    if (qword_100B50C68 != -1)
    {
      sub_100806900();
    }

    v20 = sub_1000689C0(off_100B50C60, btSessionPtrNonConnectableContact);
    if (v20 && v20 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v21 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack _stopAllAdvertisings]", 90, "### Advertising NC 1 stop failed: %@", v21);
    }
  }

  if (btSessionPtrNonConnectableObjectDiscovery && advertisingStartedNonConnectableObjectDiscovery)
  {
    if (qword_100B50C68 != -1)
    {
      sub_100806900();
    }

    v22 = sub_1000689C0(off_100B50C60, btSessionPtrNonConnectableObjectDiscovery);
    v23 = objc_retainBlock(self->_advStoppedHandler);
    if (v23)
    {
      v35 = @"kCBMsgArgResult";
      v24 = [NSNumber numberWithInt:v22];
      v36 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v26 = [NSError errorWithInfo:v25];
      v23[2](v23, v26, 4);
    }

    if (v22 && v22 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v27 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack _stopAllAdvertisings]", 90, "### Advertising NC Object Discovery stop failed: %@", v27);
    }
  }

  v28 = btSessionPtrMultiInstancesAdv;
  if (btSessionPtrMultiInstancesAdv && advertisingStartedMultiInstancesAdv)
  {
    if (qword_100B50C68 != -1)
    {
      sub_100806900();
      v28 = btSessionPtrMultiInstancesAdv;
    }

    v29 = sub_1000689C0(off_100B50C60, v28);
    if (v29 && v29 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v30 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack _stopAllAdvertisings]", 90, "### Advertising Multi Instances stop failed: %@", v30);
    }
  }

  self->_advertisingStartedConnectable = 0;
  self->_advertisingStartedNonConnectable = 0;
  self->_advertisingStartedNonConnectableContact = 0;
  self->_advertisingStartedNonConnectableObjectDiscovery = 0;
  self->_advertisingStartedMultiInstancesAdv = 0;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50B90 <= 30)
  {
    if (dword_100B50B90 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      v5 = CUDescriptionWithLevel();
      LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack invalidate]", 30, "Invalidate: %@", v5);
    }
  }

  v6 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100071A18;
  v7[3] = &unk_100ADF820;
  v7[4] = self;
  sub_10000CA94(v6, v7);
}

- (void)_tearDownStackSessions
{
  p_btSessionHandleConnectable = &self->_btSessionHandleConnectable;
  btSessionHandleConnectable = self->_btSessionHandleConnectable;
  p_btSessionHandleNonConnectable = &self->_btSessionHandleNonConnectable;
  btSessionHandleNonConnectable = self->_btSessionHandleNonConnectable;
  p_btSessionHandleNonConnectableContact = &self->_btSessionHandleNonConnectableContact;
  btSessionHandleNonConnectableContact = self->_btSessionHandleNonConnectableContact;
  p_btSessionHandleNonConnectableObjectDiscovery = &self->_btSessionHandleNonConnectableObjectDiscovery;
  btSessionHandleNonConnectableObjectDiscovery = self->_btSessionHandleNonConnectableObjectDiscovery;
  p_btSessionHandleMultiInstancesAdv = &self->_btSessionHandleMultiInstancesAdv;
  btSessionHandleMultiInstancesAdv = self->_btSessionHandleMultiInstancesAdv;
  if (btSessionHandleConnectable)
  {
    if (qword_100B50B88 != -1)
    {
      sub_100806928();
    }

    v12 = sub_100079604(qword_100B50B80, btSessionHandleConnectable);
    if (v12)
    {
      v13 = v12 == -310000;
    }

    else
    {
      v13 = 1;
    }

    if (!v13 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v14 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack _tearDownStackSessions]", 90, "### Detach session CA failed: %@", v14);
    }
  }

  if (btSessionHandleNonConnectable)
  {
    if (qword_100B50B88 != -1)
    {
      sub_100806928();
    }

    v15 = sub_100079604(qword_100B50B80, btSessionHandleNonConnectable);
    if (v15 && v15 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v16 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack _tearDownStackSessions]", 90, "### Detach session NC failed: %@", v16);
    }
  }

  if (btSessionHandleNonConnectableContact)
  {
    if (qword_100B50B88 != -1)
    {
      sub_100806928();
    }

    v17 = sub_100079604(qword_100B50B80, btSessionHandleNonConnectableContact);
    if (v17 && v17 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v18 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack _tearDownStackSessions]", 90, "### Detach session NC 1 failed: %@", v18);
    }
  }

  if (btSessionHandleNonConnectableObjectDiscovery)
  {
    if (qword_100B50B88 != -1)
    {
      sub_100806928();
    }

    v19 = sub_100079604(qword_100B50B80, btSessionHandleNonConnectableObjectDiscovery);
    if (v19 && v19 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v20 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack _tearDownStackSessions]", 90, "### Detach session NC ObjectDiscovery failed: %@", v20);
    }
  }

  if (btSessionHandleMultiInstancesAdv)
  {
    if (qword_100B50B88 != -1)
    {
      sub_100806928();
    }

    v21 = sub_100079604(qword_100B50B80, btSessionHandleMultiInstancesAdv);
    if (v21 && v21 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v22 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack _tearDownStackSessions]", 90, "### Detach session Multi instances failed: %@", v22);
    }
  }

  *p_btSessionHandleConnectable = 0;
  p_btSessionHandleConnectable[1] = 0;
  *p_btSessionHandleNonConnectable = 0;
  p_btSessionHandleNonConnectable[1] = 0;
  *p_btSessionHandleNonConnectableContact = 0;
  p_btSessionHandleNonConnectableContact[1] = 0;
  *p_btSessionHandleNonConnectableObjectDiscovery = 0;
  p_btSessionHandleNonConnectableObjectDiscovery[1] = 0;
  *p_btSessionHandleMultiInstancesAdv = 0;
  p_btSessionHandleMultiInstancesAdv[1] = 0;
}

- (void)_updateMultiInstancesAdvertising
{
  if (_os_feature_enabled_impl())
  {
    operator new();
  }
}

- (CBStackBLEAdvertiserBTStack)init
{
  v5.receiver = self;
  v5.super_class = CBStackBLEAdvertiserBTStack;
  v2 = [(CBStackBLEAdvertiserBTStack *)&v5 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v3 = 8;
  }

  else
  {
    v3 = 12;
  }

  v95 = v3;
  selfCopy = self;
  if ((level & 0x8000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v94 = 0;
    v4 = [objc_opt_class() description];
    CUAppendF(&v94, &v95, "%@", v4);
    v5 = v94;

    self = selfCopy;
  }

  v93 = v5;
  CUAppendF(&v93, &v95, "CID: 0x%X", self->_clientID);
  v6 = v93;

  v92 = v6;
  CUAppendF(&v92, &v95, "enableEPA: %d", selfCopy->_advertiseEnableEPA);
  v7 = v92;

  v91 = v7;
  advertiseRate = selfCopy->_advertiseRate;
  if (advertiseRate <= 39)
  {
    if (advertiseRate <= 19)
    {
      if (advertiseRate != 10)
      {
        if (advertiseRate == 15)
        {
          v9 = "1022.5 ms";
          goto LABEL_27;
        }

        goto LABEL_18;
      }

      v9 = "2 seconds";
      goto LABEL_27;
    }

    if (advertiseRate == 20)
    {
      v9 = "350 ms";
      goto LABEL_27;
    }

LABEL_18:
    v9 = "270 ms";
    goto LABEL_27;
  }

  if (advertiseRate <= 44)
  {
    if (advertiseRate == 40)
    {
      v9 = "181.25 ms";
      goto LABEL_27;
    }

    if (advertiseRate == 42)
    {
      v9 = "120 ms";
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  switch(advertiseRate)
  {
    case '-':
      v9 = "60 ms";
      break;
    case '2':
      v9 = "30 ms";
      break;
    case '<':
      v9 = "20 ms";
      break;
    default:
      goto LABEL_18;
  }

LABEL_27:
  CUAppendF(&v91, &v95, "Rate: %s", v9);
  v10 = v91;

  v11 = selfCopy->_nearbyActionData;
  if (v11)
  {
    v90 = v10;
    v12 = CUPrintNSDataHex();
    CUAppendF(&v90, &v95, "naPD <%@>", v12);
    v13 = v90;

    v10 = v13;
  }

  v14 = selfCopy->_wpDaemonData;
  if (v14)
  {
    v89 = v10;
    v15 = CUPrintNSObjectOneLine();
    CUAppendF(&v89, &v95, "wpDaemonData <%@>", v15);
    v16 = v89;
  }

  else
  {
    v16 = v10;
  }

  p_isa = &selfCopy->super.isa;
  proximityServiceSubType = selfCopy->_proximityServiceSubType;
  if (selfCopy->_proximityServiceSubType)
  {
    v88 = v16;
    v19 = CUPrintNSDataHex();
    v20 = v19;
    proximityServiceUseCase = selfCopy->_proximityServiceUseCase;
    if (proximityServiceUseCase < 0x20000)
    {
      if (proximityServiceUseCase <= 0x20000)
      {
        switch(proximityServiceUseCase)
        {
          case 65536:
            v22 = "FindMyAction";
            break;
          case 65537:
            v22 = "FindMyBackground";
            break;
          case 65538:
            v22 = "FindMyActionHELE";
            break;
          case 65539:
            v22 = "FindMyBackgroundHELE";
            break;
          case 65540:
            v22 = "FindMyActionTransient";
            break;
          case 65541:
            v22 = "FindMyBackgroundTransient";
            break;
          case 65542:
            v22 = "FindMyActionHELETransient";
            break;
          case 65543:
            v22 = "FindMyBackgroundHELETransient";
            break;
          case 65544:
            v22 = "FindMyNotOptedIn";
            break;
          case 65545:
            v22 = "FindMyOptedIn";
            break;
          case 65546:
            v22 = "FindMySepAlertsEnabled";
            break;
          case 65547:
            v22 = "FindMyTemporaryAggressiveLegacy";
            break;
          case 65548:
            v22 = "FindMyTemporaryLongAggressive";
            break;
          case 65549:
            v22 = "FindMyBTFindingUserInitiated";
            break;
          case 65550:
            v22 = "FindMyHELE";
            break;
          case 65551:
            v22 = "FindMyBeaconOnDemand";
            break;
          case 65552:
            v22 = "FindMyWildTimedScan";
            break;
          case 65553:
            v22 = "FindMyBackgroundLeechScan";
            break;
          case 65554:
            v22 = "FindMySnifferMode";
            break;
          case 65555:
            v22 = "FindMyUnpair";
            break;
          case 65556:
            v22 = "FindMyUnpairHELE";
            break;
          case 65557:
            v22 = "FindMyPlaySound";
            break;
          case 65558:
            v22 = "FindMyPlaySoundHELE";
            break;
          case 65559:
            v22 = "FindMyNotOptedInBeepOnMoveWaking";
            break;
          case 65560:
            v22 = "FindMyUTTransient";
            break;
          case 65561:
            v22 = "FindMyUTHELETransient";
            break;
          case 65562:
            v22 = "FindMyActionExtendedRange";
            break;
          case 65563:
            v22 = "FindMyActionExtendedRangeLE2M";
            break;
          case 65564:
            v22 = "FindMyActionExtendedRangeTransient";
            break;
          case 65565:
            v22 = "FindMyPlaySoundExtendedRange";
            break;
          case 65566:
            v22 = "FindMyPair";
            break;
          case 65567:
            v22 = "FindMyTemporaryAggressiveLegacyExtendedRange";
            break;
          default:
            JUMPOUT(0);
        }
      }

      else
      {
        v22 = "Unspecified";
        switch(proximityServiceUseCase)
        {
          case 0:
            goto LABEL_243;
          case 1:
            v22 = "HealthKit";
            break;
          case 2:
            v22 = "HomeKit";
            break;
          case 3:
            v22 = "FindMyObjectConnection";
            break;
          case 4:
            v22 = "FindMyObjectConnectionTransient";
            break;
          case 5:
            v22 = "MIDI";
            break;
          case 6:
            v22 = "Continuity";
            break;
          case 7:
            v22 = "InstantHotSpot";
            break;
          case 8:
            v22 = "NearBy";
            break;
          case 9:
            v22 = "Sharing";
            break;
          case 10:
            v22 = "HearingSupport";
            break;
          case 11:
            v22 = "Magnet";
            break;
          case 12:
            v22 = "HID";
            break;
          case 13:
            v22 = "LEA";
            break;
          case 14:
            v22 = "External";
            break;
          case 15:
            v22 = "ExternalMedical";
            break;
          case 16:
            v22 = "ExternalLock";
            break;
          case 17:
            v22 = "ExternalWatch";
            break;
          case 18:
            v22 = "SmartRouting";
            break;
          case 19:
            v22 = "DigitalID";
            break;
          case 20:
            v22 = "DigitalKey";
            break;
          case 21:
            v22 = "DigitalCarKey";
            break;
          case 22:
            v22 = "HeySiri";
            break;
          case 23:
            v22 = "ThirdPartyApp";
            break;
          case 24:
            v22 = "CNJ";
            break;
          default:
            switch(proximityServiceUseCase)
            {
              case 256:
                v22 = "DevicePresenceDetection";
                break;
              case 257:
                v22 = "AudioBox";
                break;
              case 258:
                v22 = "SIMTransfer";
                break;
              case 259:
                v22 = "ProximityScreenOnLeechScan";
                break;
              case 260:
                v22 = "MacMigrate";
                break;
              case 263:
                v22 = "HIDUARTService";
                break;
              case 264:
                v22 = "AccessibilitySwitchControlPairing";
                break;
              case 265:
                v22 = "BaseBandFastConnect";
                break;
              case 266:
                v22 = "SafetyAlerts";
                break;
              case 267:
                v22 = "LECarPlay";
                break;
              case 268:
                v22 = "TCCBluetooth";
                break;
              case 269:
                v22 = "AOPBufferLeech";
                break;
              case 270:
                v22 = "HighPriorityScanWiFi";
                break;
              default:
                goto LABEL_242;
            }

            break;
        }
      }

      goto LABEL_243;
    }

    if (proximityServiceUseCase > 0x80000)
    {
      if (proximityServiceUseCase < 0x100000)
      {
        if (proximityServiceUseCase <= 851968)
        {
          if (proximityServiceUseCase >= 655360)
          {
            if (proximityServiceUseCase <= 720896)
            {
              if (proximityServiceUseCase == 655360)
              {
                v22 = "AccessDigitalHomeKey";
                goto LABEL_243;
              }

              if (proximityServiceUseCase == 720896)
              {
                v22 = "SoftwareUpdateBTWake";
                goto LABEL_243;
              }
            }

            else
            {
              switch(proximityServiceUseCase)
              {
                case 720897:
                  v22 = "SofrwareUpdateOutboxControllerAuth";
                  goto LABEL_243;
                case 786432:
                  v22 = "ProxControlDeviceClose";
                  goto LABEL_243;
                case 851968:
                  v22 = "DCTProtocolTelephony";
                  goto LABEL_243;
              }
            }
          }

          else
          {
            if (proximityServiceUseCase <= 524290)
            {
              if (proximityServiceUseCase == 524289)
              {
                v22 = "ADPDBuffer";
              }

              else
              {
                v22 = "MicroLocation";
              }

              goto LABEL_243;
            }

            switch(proximityServiceUseCase)
            {
              case 524291:
                v22 = "MicroLocationLeech";
                goto LABEL_243;
              case 589824:
                v22 = "FindNearbyRemote";
                goto LABEL_243;
              case 589825:
                v22 = "FindNearbyPencil";
                goto LABEL_243;
            }
          }
        }

        else if (proximityServiceUseCase <= 983041)
        {
          if (proximityServiceUseCase <= 917504)
          {
            if (proximityServiceUseCase == 851969)
            {
              v22 = "DCTProtocolDataAndTelephony";
              goto LABEL_243;
            }

            if (proximityServiceUseCase == 917504)
            {
              v22 = "NearbyFaceTime";
              goto LABEL_243;
            }
          }

          else
          {
            switch(proximityServiceUseCase)
            {
              case 917505:
                v22 = "NearbyFaceTimeData";
                goto LABEL_243;
              case 983040:
                v22 = "SOSBeaconPartA";
                goto LABEL_243;
              case 983041:
                v22 = "SOSBeaconPartB";
                goto LABEL_243;
            }
          }
        }

        else
        {
          if (proximityServiceUseCase <= 983044)
          {
            if (proximityServiceUseCase == 983042)
            {
              v22 = "SOSBeaconPrecisionFindResponse";
            }

            else if (proximityServiceUseCase == 983043)
            {
              v22 = "SOSBeaconPrecisionFindRequest";
            }

            else
            {
              v22 = "SOSBeaconScan";
            }

            goto LABEL_243;
          }

          switch(proximityServiceUseCase)
          {
            case 983045:
              v22 = "SOSBeaconActivateScan";
              goto LABEL_243;
            case 983046:
              v22 = "SOSBeaconActivateAdvA";
              goto LABEL_243;
            case 983047:
              v22 = "SOSBeaconActivateAdvB";
              goto LABEL_243;
          }
        }
      }

      else
      {
        if (proximityServiceUseCase > 2147418111)
        {
          switch(proximityServiceUseCase)
          {
            case 2147418112:
              v22 = "InternalTestNoLockScan";
              break;
            case 2147418113:
              v22 = "InternalTestNoScreenOffScan";
              break;
            case 2147418114:
              v22 = "InternalTestScanWithNoDups";
              break;
            case 2147418115:
              v22 = "InternalTestScanWithDups";
              break;
            case 2147418116:
              v22 = "InternalTestScanFor20Seconds";
              break;
            case 2147418117:
              v22 = "InternalTestActiveScan";
              break;
            case 2147418118:
              v22 = "InternalTestUUIDScan";
              break;
            case 2147418119:
              v22 = "InternalTestScanFor10ClockSeconds";
              break;
            case 2147418120:
              v22 = "InternalTestScanBoost";
              break;
            case 2147418121:
              v22 = "InternalTestDiscoveryScanWithMRC";
              break;
            case 2147418122:
              v22 = "InternalTestAdvWithHigherPower";
              break;
            case 2147418123:
              v22 = "InternalTestScanLowDutyCycleMCOnly";
              break;
            case 2147418124:
              v22 = "InternalTestUUIDScanWithMinRSSI";
              break;
            case 2147418125:
              v22 = "InternalTestUUIDScanWithMinRSSIMediumLow";
              break;
            case 2147418126:
              v22 = "InternalTestAdvWithHigherPowerServiceDataConnectable";
              break;
            case 2147418127:
              v22 = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
              break;
            case 2147418128:
              v22 = "InternalTestAdvWithHigherPowerServiceDataS2";
              break;
            case 2147418129:
              v22 = "InternalTestAdvWithHigherPowerServiceDataS8";
              break;
            case 2147418130:
              v22 = "InternalTestDiscoveryScanCodedPHY";
              break;
            default:
              goto LABEL_242;
          }

          goto LABEL_243;
        }

        switch(proximityServiceUseCase)
        {
          case 1048576:
            v22 = "DOS";
            goto LABEL_243;
          case 1048577:
            v22 = "DOD";
            goto LABEL_243;
          case 1114112:
            v22 = "ProximityServiceDeviceSetup";
            goto LABEL_243;
        }
      }
    }

    else
    {
      if (proximityServiceUseCase < 196608)
      {
        switch(proximityServiceUseCase)
        {
          case 131072:
            v22 = "SharingDefault";
            break;
          case 131073:
            v22 = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            v22 = "SharingSiriWatchAuth";
            break;
          case 131075:
            v22 = "SharingMacAutoUnlock";
            break;
          case 131076:
            v22 = "SharingEDTScreenOn";
            break;
          case 131077:
            v22 = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            v22 = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            v22 = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            v22 = "SharingWombatBackground";
            break;
          case 131081:
            v22 = "SharingUniversalControl";
            break;
          case 131082:
            v22 = "SharingPeopleProximity";
            break;
          case 131083:
            v22 = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            v22 = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            v22 = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            v22 = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            v22 = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            v22 = "SharingOYAutoUnlock";
            break;
          case 131090:
            v22 = "SharingAirDrop";
            break;
          case 131091:
            v22 = "SharingNearbyInvitationHost";
            break;
          case 131092:
            v22 = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            v22 = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            v22 = "SharingAirDropTempIdentity";
            break;
          case 131095:
            v22 = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            v22 = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            v22 = "SharingCountryCodeUpdate";
            break;
          case 131098:
            v22 = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            v22 = "SharingVisionProDiscovery";
            break;
          case 131100:
            v22 = "SharingVisionProStateChange";
            break;
          case 131101:
            v22 = "SharingContinuityScreen";
            break;
          case 131102:
            v22 = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            v22 = "SharingHomePodSetup";
            break;
          default:
            goto LABEL_242;
        }

        goto LABEL_243;
      }

      if (proximityServiceUseCase > 393218)
      {
        if (proximityServiceUseCase > 458752)
        {
          switch(proximityServiceUseCase)
          {
            case 0x70001:
              v22 = "PrecisionFindingFindee";
              goto LABEL_243;
            case 0x70002:
              v22 = "SpatialHandoffHome";
              goto LABEL_243;
            case 0x80000:
              v22 = "ADPD";
              goto LABEL_243;
          }
        }

        else
        {
          switch(proximityServiceUseCase)
          {
            case 393219:
              v22 = "AppleIDSignIn";
              goto LABEL_243;
            case 393220:
              v22 = "AppleIDSignInSettings";
              goto LABEL_243;
            case 458752:
              v22 = "PrecisionFindingFinder";
              goto LABEL_243;
          }
        }
      }

      else
      {
        if (proximityServiceUseCase >= 393216)
        {
          if (proximityServiceUseCase == 393216)
          {
            v22 = "CaptiveNetworkJoin";
          }

          else if (proximityServiceUseCase == 393217)
          {
            v22 = "UseCaseSIMTransfer";
          }

          else
          {
            v22 = "MacSetup";
          }

          goto LABEL_243;
        }

        switch(proximityServiceUseCase)
        {
          case 196608:
            v22 = "DigitalIDTSA";
            goto LABEL_243;
          case 262144:
            v22 = "DigitalCarKeyThirdParty";
            goto LABEL_243;
          case 327680:
            v22 = "RapportThirdParty";
LABEL_243:
            CUAppendF(&v88, &v95, "ProximityService: subType=%u, payload=%@, useCase=%s", proximityServiceSubType, v19, v22);
            proximityServiceSubType = v88;

            v16 = proximityServiceSubType;
            p_isa = &selfCopy->super.isa;
            goto LABEL_244;
        }
      }
    }

LABEL_242:
    v22 = "?";
    goto LABEL_243;
  }

LABEL_244:
  if ([p_isa[23] count])
  {
    v87 = v16;
    CUAppendF(&v87, &v95, "saAddrD: ");
    v23 = v87;

    v86 = 8;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v24 = selfCopy->_saAddressDataArray;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v82 objects:v99 count:16];
    if (v25)
    {
      v26 = *v83;
      do
      {
        v27 = 0;
        v28 = v23;
        do
        {
          if (*v83 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v82 + 1) + 8 * v27);
          v81 = v28;
          if (!v29)
          {
            proximityServiceSubType = +[NSData data];
          }

          v30 = CUPrintNSDataHex();
          CUAppendF(&v81, &v86, "{<%@>}", v30);
          v31 = v29 == 0;
          v23 = v81;

          if (v31)
          {
          }

          v27 = v27 + 1;
          v28 = v23;
        }

        while (v25 != v27);
        v25 = [(NSArray *)v24 countByEnumeratingWithState:&v82 objects:v99 count:16];
      }

      while (v25);
    }

    v16 = v23;
    p_isa = &selfCopy->super.isa;
  }

  if ([p_isa[24] count])
  {
    v80 = v16;
    CUAppendF(&v80, &v95, "saSvcD: ");
    v32 = v80;

    v86 = 8;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = selfCopy->_saServiceDataArray;
    v33 = [(NSArray *)obj countByEnumeratingWithState:&v76 objects:v98 count:16];
    if (v33)
    {
      v34 = *v77;
      do
      {
        v35 = 0;
        v36 = v32;
        do
        {
          if (*v77 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v76 + 1) + 8 * v35);
          v75 = v36;
          serviceUUID16 = [v37 serviceUUID16];
          serviceData = [v37 serviceData];
          if (!serviceData)
          {
            proximityServiceSubType = +[NSData data];
          }

          v40 = CUPrintNSDataHex();
          CUAppendF(&v75, &v86, "{UUUID 0x%04X, Data <%@>}", serviceUUID16, v40);
          v32 = v75;

          if (!serviceData)
          {
          }

          v35 = v35 + 1;
          v36 = v32;
        }

        while (v33 != v35);
        v33 = [(NSArray *)obj countByEnumeratingWithState:&v76 objects:v98 count:16];
      }

      while (v33);
    }

    v16 = v32;
    p_isa = &selfCopy->super.isa;
  }

  if ([p_isa[26] count])
  {
    v74 = v16;
    CUAppendF(&v74, &v95, "SvcD: ");
    v41 = v74;

    v86 = 8;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obja = selfCopy->_serviceDataArray;
    v42 = [(NSArray *)obja countByEnumeratingWithState:&v70 objects:v97 count:16];
    if (v42)
    {
      v43 = *v71;
      do
      {
        v44 = 0;
        v45 = v41;
        do
        {
          if (*v71 != v43)
          {
            objc_enumerationMutation(obja);
          }

          v46 = *(*(&v70 + 1) + 8 * v44);
          v69 = v45;
          serviceUUID162 = [v46 serviceUUID16];
          serviceData2 = [v46 serviceData];
          if (!serviceData2)
          {
            proximityServiceSubType = +[NSData data];
          }

          v49 = CUPrintNSDataHex();
          CUAppendF(&v69, &v86, "{UUUID 0x%04X, Data <%@>}", serviceUUID162, v49);
          v41 = v69;

          if (!serviceData2)
          {
          }

          v44 = v44 + 1;
          v45 = v41;
        }

        while (v42 != v44);
        v42 = [(NSArray *)obja countByEnumeratingWithState:&v70 objects:v97 count:16];
      }

      while (v42);
    }

    v16 = v41;
    p_isa = &selfCopy->super.isa;
  }

  if (_os_feature_enabled_impl() && [p_isa[27] count])
  {
    v68 = v16;
    CUAppendF(&v68, &v95, "suD: ");
    v50 = v68;

    v86 = 8;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v51 = selfCopy->_swupPayloadDataArray;
    v52 = [(NSArray *)v51 countByEnumeratingWithState:&v64 objects:v96 count:16];
    if (v52)
    {
      v53 = *v65;
      do
      {
        v54 = 0;
        v55 = v50;
        do
        {
          if (*v65 != v53)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v64 + 1) + 8 * v54);
          v63 = v55;
          if (!v56)
          {
            proximityServiceSubType = +[NSData data];
          }

          v57 = CUPrintNSDataHex();
          CUAppendF(&v63, &v86, "{<%@>}", v57);
          v58 = v56 == 0;
          v50 = v63;

          if (v58)
          {
          }

          v54 = v54 + 1;
          v55 = v50;
        }

        while (v52 != v54);
        v52 = [(NSArray *)v51 countByEnumeratingWithState:&v64 objects:v96 count:16];
      }

      while (v52);
    }
  }

  else
  {
    v50 = v16;
  }

  return v50;
}

- (BOOL)shouldAdvertiseSafetyAlerts:(unsigned __int8)alerts advData:(void *)data
{
  alertsCopy = alerts;
  v7 = self->_saAddressDataArray;
  v8 = self->_saServiceDataArray;
  if ([(NSArray *)v7 count]<= alertsCopy || [(NSArray *)v8 count]<= alertsCopy)
  {
    v20 = 0;
  }

  else
  {
    v37 = [(NSArray *)v7 objectAtIndexedSubscript:alertsCopy];
    if ([v37 length] == 6)
    {
      v41 = 0;
      v42 = 0;
      sub_10000C704(&v41, [v37 bytes], objc_msgSend(v37, "length"));
      v9 = sub_10072502C(&v41, 0);
      v10 = sub_10072502C(&v41, 1uLL);
      v11 = sub_10072502C(&v41, 2uLL);
      v12 = sub_10072502C(&v41, 3uLL);
      v13 = sub_10072502C(&v41, 4uLL);
      v14 = sub_10072502C(&v41, 5uLL) | (v13 << 8) | (v11 << 24) | (v12 << 16) | (v9 << 40) | (v10 << 32) | 0x1000000000000;
      if ((v9 & 0xC0) == 0x80)
      {
        if (dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
        {
          sub_10000C250(&v41, __p);
          v15 = v45;
          v16 = __p[0];
          v17 = sub_100063D0C(v14);
          v18 = v17;
          v19 = __p;
          if (v15 < 0)
          {
            v19 = v16;
          }

          LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack shouldAdvertiseSafetyAlerts:advData:]", 90, "### Overriding address #%d with Invalid address data %s (%@)", alertsCopy, v19, v17);

          if (v45 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v20 = 0;
      }

      else
      {
        if (dword_100B50B90 <= 30 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
        {
          sub_10000C250(&v41, __p);
          v21 = v45;
          v22 = __p[0];
          v23 = sub_100063D0C(v14);
          v24 = v23;
          v25 = __p;
          if (v21 < 0)
          {
            v25 = v22;
          }

          LogPrintF_safe(&dword_100B50B90, "[CBStackBLEAdvertiserBTStack shouldAdvertiseSafetyAlerts:advData:]", 30, "### Overriding address #%d with address data %s (%@)", alertsCopy, v25, v23);

          if (v45 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v26 = *(data + 1);
        *(v26 + 256) = v14;
        *(v26 + 464) = 1;
        v40 = 0;
        sub_1000216B4(&v40);
        sub_1002D24BC(1);
        sub_100022214(&v40);
        v27 = [(NSArray *)v8 objectAtIndexedSubscript:alertsCopy];
        serviceData = [v27 serviceData];
        v29 = [serviceData length];
        v20 = v29 < 0x1C;
        if (v29 < 0x1C)
        {
          v38 = 0;
          v39 = 0;
          v30 = serviceData;
          bytes = [serviceData bytes];
          v32 = [serviceData length];
          v33 = bytes ? bytes : "";
          sub_10000C704(&v38, v33, v32);
          v34 = *(data + 1);
          sub_10006C96C(__p, [v27 serviceUUID16]);
          v43 = __p;
          v35 = sub_100099408((v34 + 112), __p, &unk_1008A2400, &v43);
          sub_10000AE20(v35 + 56, &v38);
          v38 = &off_100AE0A78;
          if (v39)
          {
            sub_10000C808(v39);
          }
        }

        sub_10002249C(&v40);
      }

      v41 = &off_100AE0A78;
      if (v42)
      {
        sub_10000C808(v42);
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (BOOL)shouldAdvertiseForWPDaemon:(id)daemon advData:(void *)data advInstanceType:(unsigned __int8)type
{
  typeCopy = type;
  daemonCopy = daemon;
  v8 = daemonCopy;
  if (!daemonCopy || [daemonCopy advInstanceType] != typeCopy)
  {
    goto LABEL_34;
  }

  mfgData = [v8 mfgData];
  advDataPerType = [v8 advDataPerType];
  if (mfgData && [mfgData length] && objc_msgSend(mfgData, "length") <= 0x1C)
  {
    v29 = 0;
    v30[0] = 0;
    sub_10000C704(&v29, [mfgData bytes], objc_msgSend(mfgData, "length"));
    sub_10000AE20(*(data + 1) + 48, &v29);
    v29 = &off_100AE0A78;
    if (v30[0])
    {
      sub_10000C808(v30[0]);
    }

    goto LABEL_11;
  }

  if (!advDataPerType || ![advDataPerType count])
  {

LABEL_34:
    v19 = 0;
    goto LABEL_35;
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100112D54;
  v31[3] = &unk_100AE09A0;
  v31[4] = data;
  [advDataPerType enumerateKeysAndObjectsUsingBlock:v31];
LABEL_11:
  v11 = *(data + 1);
  *(v11 + 222) = [v8 advInterval];
  if ([v8 enableObjectLocatorResponseOnAdvertisingInstance])
  {
    *(*(data + 1) + 308) = 1;
  }

  if ([v8 stopOnAdvertisingAddressChange])
  {
    *(*(data + 1) + 307) = 1;
  }

  if ([v8 enableAdvertisingWithPowerAssertion])
  {
    *(*(data + 1) + 360) = 1;
  }

  if ([v8 enableEPAForAdvertisement])
  {
    *(*(data + 1) + 409) = 1;
  }

  listOfClients = [v8 listOfClients];
  v13 = listOfClients == 0;

  if (!v13)
  {
    v30[0] = 0;
    v30[1] = 0;
    v29 = v30;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    listOfClients2 = [v8 listOfClients];
    v15 = [listOfClients2 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v15)
    {
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(listOfClients2);
          }

          sub_100007E30(__p, [*(*(&v25 + 1) + 8 * i) UTF8String]);
          sub_100071970(&v29, __p, __p);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v15 = [listOfClients2 countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v15);
    }

    v18 = *(data + 1);
    sub_100068968(&v21, &v29);
    if ((v18 + 416) != &v21)
    {
      sub_1000717E8((v18 + 416), v21, &v22);
    }

    sub_10004B61C(&v21, v22);
    sub_10004B61C(&v29, v30[0]);
  }

  v19 = 1;
LABEL_35:

  return v19;
}

@end