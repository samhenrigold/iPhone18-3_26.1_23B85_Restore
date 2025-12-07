uint64_t sub_100001DAC(char a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 16);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  *(v13 + 28) = a2;
  aBlock[4] = sub_100002754;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008C3D0;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1000020AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000020E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000020F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000021A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000021B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000021C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002200(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_1000027FC(v3, a2);
}

uint64_t sub_100002254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000229C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000022E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000232C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000023BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000C9B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002410(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100002454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v11 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v12 = [objc_allocWithZone(BMDeviceBluetoothUseCase) initWithStarting:isa useCase:v11];

    v13 = (*(*v9 + 192))();
    [v13 sendEvent:v12];

    v14 = sub_1000021DC();
    (*(v5 + 16))(v7, v14, v4);
    v15 = v12;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v5;
      v29 = v20;
      v21 = v20;
      *v18 = 136315394;
      sub_100002834(v3);
      v22 = String.init(cString:)();
      v24 = sub_1000034B8(v22, v23, &v29);
      v27 = v4;
      v25 = v24;

      *(v18 + 4) = v25;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      *v19 = v15;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "Send usecase event %s for %@", v18, 0x16u);
      sub_100003738(v19);

      sub_1000036EC(v21);

      return (*(v28 + 8))(v7, v27);
    }

    else
    {

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

id sub_100002764()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[6];
  }

  else
  {
    v3 = (*(*v0 + 168))();
    v4 = [v3 source];

    v5 = v0[6];
    v0[6] = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1000027FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

const char *sub_100002834(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

unint64_t sub_1000034B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003584(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100003690(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000036EC(v11);
  return v7;
}

unint64_t sub_100003584(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100003C28(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_100003690(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000036EC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100003738(uint64_t a1)
{
  v2 = sub_10000A45C(&qword_100093F70, &qword_1000730D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003820(uint64_t a1, uint64_t a2, char a3, char a4, int a5)
{
  v21 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for DispatchQoS();
  v13 = *(v23 - 8);
  __chkstk_darwin(v23);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *(v5 + 16);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a3;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a4;
  *(v17 + 52) = v21;
  aBlock[4] = sub_100061D00;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008C380;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v24 + 8))(v12, v10);
  (*(v13 + 8))(v15, v23);
}

uint64_t sub_100003B3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003B74()
{

  return _swift_deallocObject(v0, 56, 7);
}

void *sub_100003BB4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000A45C(&unk_100092E10, &unk_100072BD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003C28(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003C74(a1, a2);
  sub_100003DA8(&off_100089A20);
  return v3;
}

char *sub_100003C74(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100003BB4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003BB4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100003DA8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000AD00(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100003F18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100004124();
  (*(v5 + 16))(v7, v8, v4);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v9, v10))
  {

    goto LABEL_5;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  if (a1)
  {
    *(result + 4) = *(a1 + 16);
    v12 = result;

    _os_log_impl(&_mh_execute_header, v9, v10, "IDS devices changed: %ld", v12, 0xCu);

LABEL_5:
    (*(v5 + 8))(v7, v4);
    v13 = type metadata accessor for Transaction();
    __chkstk_darwin(v13);
    *&v14[-16] = v2;
    return static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.deleteStaleRecords", 42, 2, sub_100052BC8);
  }

  __break(1u);
  return result;
}

void sub_100004148(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A45C(&qword_100093F68, &unk_100074690);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - v8;
  v10 = type metadata accessor for CloudPairedDeviceRecord(0);
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = __chkstk_darwin(v10);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v51 - v13;
  Transaction.capture()();
  if (*(a2 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountAvailable) != 1)
  {
    return;
  }

  v15 = (*((swift_isaMask & *a2) + 0xC0))();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v56 = v3;
  v17 = [v15 devices];
  if (!v17)
  {
    goto LABEL_34;
  }

  v18 = v17;
  v59 = sub_100004890(0, &qword_100093F60, IDSDevice_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
LABEL_32:
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 < 2)
  {
LABEL_29:

    return;
  }

  v22 = (*((swift_isaMask & *a2) + 0x128))(v21);
  v24 = v22;
  v65 = *(v22 + 16);
  if (!v65)
  {

    goto LABEL_29;
  }

  v58 = v16;
  v55 = v6;
  v16 = 0;
  v25 = *((swift_isaMask & *a2) + 0x108);
  v63 = (swift_isaMask & *a2) + 264;
  v64 = v25;
  v26 = v67;
  v62 = v22 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
  v61 = v66 + 48;
  v53 = (v4 + 16);
  v54 = (v4 + 8);
  *&v23 = 136315138;
  v51 = v23;
  v60 = v22;
  while (1)
  {
    if (v16 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v4 = v66;
    sub_100004EFC(v62 + *(v66 + 72) * v16, v14);
    v27 = &v14[*(v26 + 24)];
    v28 = *v27;
    v6 = *(v27 + 1);

    v64(v29);
    if ((*(v4 + 48))(v9, 1, v26) == 1)
    {
      break;
    }

    v37 = &v9[*(v26 + 24)];
    v38 = *v37;
    v39 = *(v37 + 1);

    sub_100007124(v9);
    if (v28 == v38 && v6 == v39)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    v26 = v67;
    v24 = v60;
    ++v16;
    sub_100007124(v14);
    if (v65 == v16)
    {

      return;
    }
  }

  sub_100006CAC(v9, &qword_100093F68, &unk_100074690);

LABEL_14:
  v30 = a2;
  v31 = [v58 devices];
  if (v31)
  {
    v32 = v31;
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v34);
    *(&v51 - 2) = v14;
    v35 = v68;
    v36 = sub_10004D9D8(sub_100052AE8, (&v51 - 2), v33);
    v68 = v35;

    if (v36)
    {
    }

    else
    {
      v42 = sub_100004124();
      v4 = v55;
      v43 = v56;
      (*v53)(v55, v42, v56);
      v44 = v57;
      sub_100004EFC(v14, v57);
      v45 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v6))
      {
        v46 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v69 = v52;
        *v46 = v51;
        v47 = (v44 + *(v67 + 24));
        v48 = v44;
        v50 = *v47;
        v49 = v47[1];

        sub_100007124(v48);
        v4 = sub_1000034B8(v50, v49, &v69);

        *(v46 + 4) = v4;
        _os_log_impl(&_mh_execute_header, v45, v6, "Stale record delete: %s", v46, 0xCu);
        sub_1000036EC(v52);

        (*v54)(v55, v56);
      }

      else
      {

        sub_100007124(v44);
        (*v54)(v4, v43);
      }

      a2 = v30;
      (*((swift_isaMask & *v30) + 0x1B8))(v14, 0);
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_100004840()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudPairingIDSService;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_100004890(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000048D8()
{
  v38 = v0;
  v1 = (*((swift_isaMask & **(v0[3] + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (!v1)
  {
    sub_10005FD70();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
LABEL_7:

    v12 = v0[1];

    return v12();
  }

  v2 = (*(*v1 + 440))();
  if (!v2)
  {
    sub_10005FD70();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v0[2] = 0;
  v5 = [v4 devicesWithDiscoveryFlags:0x800000 error:v0 + 2];
  v6 = v0[2];
  if (v5)
  {
    v7 = v5;
    sub_100004890(0, &unk_100094150, CBDevice_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v6;
  }

  else
  {
    v14 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v8 = 0;
  }

  v15 = (*((swift_isaMask & *v3) + 0x128))();
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = v0[7];
    do
    {
      v19 = v17;
      while (1)
      {
        if (v19 >= *(v15 + 16))
        {
          __break(1u);
        }

        v20 = v0[8];
        sub_100004EFC(v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v19, v20);
        sub_100004FAC(v20, v8, v3, &v37);
        sub_100007124(v0[8]);
        if (v37)
        {
          break;
        }

        if (v16 == ++v19)
        {
          goto LABEL_21;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v17 = v19 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v16 - 1 != v19);
  }

LABEL_21:
  v21 = v0[5];
  v22 = v0[6];
  v23 = v0[4];

  v24 = sub_1000393CC();
  (*(v21 + 16))(v22, v24, v23);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[5];
  v36 = v0[6];
  v29 = v0[4];
  if (v27)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37 = v31;
    *v30 = 136315138;
    sub_100004890(0, &unk_100094150, CBDevice_ptr);
    v32 = Array.description.getter();
    v34 = sub_1000034B8(v32, v33, &v37);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Cloud Paired Devices Metadata: %s", v30, 0xCu);
    sub_1000036EC(v31);
  }

  (*(v28 + 8))(v36, v29);

  v35 = v0[1];

  return v35(_swiftEmptyArrayStorage);
}

uint64_t sub_100004EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPairedDeviceRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CloudPairedDeviceRecord(uint64_t a1)
{
  result = qword_100096D90;
  if (!qword_100096D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004FAC(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v101 = a3;
  v100 = a4;
  v6 = sub_10000A45C(&qword_100093F68, &unk_100074690);
  __chkstk_darwin(v6 - 8);
  v102 = &v93 - v7;
  v96 = sub_10000A45C(&qword_100094160, &qword_100074A98);
  __chkstk_darwin(v96);
  v103 = &v93 - v8;
  v97 = type metadata accessor for Date();
  v99 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A45C(&unk_1000938B0, &qword_100074AA0);
  v11 = __chkstk_darwin(v10 - 8);
  v94 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v93 = &v93 - v14;
  v15 = __chkstk_darwin(v13);
  v98 = &v93 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v93 - v18;
  __chkstk_darwin(v17);
  v104 = &v93 - v20;
  v21 = type metadata accessor for CloudPairedDeviceRecord(0);
  v106 = a1;
  v107 = v21;
  v22 = (a1 + *(v21 + 24));
  v23 = *v22;
  v108 = v22[1];
  v109 = v23;
  v105 = [objc_allocWithZone(CBDevice) init];
  v112 = a2;
  if (!a2)
  {
    goto LABEL_24;
  }

  v24 = v112 & 0xFFFFFFFFFFFFFF8;
  if (v112 >> 62)
  {
LABEL_23:
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (v25)
    {
      goto LABEL_4;
    }

LABEL_24:

    goto LABEL_25;
  }

  v25 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_24;
  }

LABEL_4:
  v26 = 0;
  v110 = v112 & 0xC000000000000001;
  while (1)
  {
    if (v110)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v26 >= *(v24 + 16))
      {
        goto LABEL_22;
      }

      v27 = *(v112 + 8 * v26 + 32);
    }

    v28 = v27;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v30 = v19;
    v31 = [v27 idsDeviceID];
    if (!v31)
    {
      goto LABEL_5;
    }

    v32 = v31;
    v33 = v24;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (v34 == v109 && v36 == v108)
    {
      break;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = v33;
    if (v38)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v26;
    v19 = v30;
    if (v29 == v25)
    {
      goto LABEL_24;
    }
  }

LABEL_19:
  v39 = [v28 identifier];

  v19 = v30;
  if (!v39)
  {
    goto LABEL_24;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_25:
  v40 = String._bridgeToObjectiveC()();

  v41 = v105;
  [v105 setIdentifier:v40];

  v42 = String._bridgeToObjectiveC()();
  [v41 setIdsDeviceID:v42];

  v44 = v106;
  v43 = v107;
  v45 = *(v106 + v107[10]);
  if ((v45 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v46 = v104;
  if (v45 > 0xFF)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  [v41 setDeviceType:*(v106 + v107[10])];
  v47 = sub_100006DAC(&qword_100093F80, type metadata accessor for CloudPairedDeviceRecord, &unk_100073B90);
  v48 = sub_100006DF4(v43, v47);
  v49 = [objc_allocWithZone(CBControllerInfo) init];
  [v49 setCloudSyncStatus:1];
  v50 = [v48 recordChangeTag];
  if (v50)
  {
    v110 = v49;

    v51 = v99;
    v52 = v97;
    (*(v99 + 16))(v46, v44 + v43[5], v97);
    v53 = *(v51 + 56);
    v53(v46, 0, 1, v52);
    v54 = [v48 modificationDate];
    v112 = v48;
    if (v54)
    {
      v55 = v95;
      v56 = v54;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v57 = v52;
      v58 = v19;
      v59 = v51;
      v60 = *(v51 + 32);
      v61 = v98;
      v62 = v55;
      v46 = v104;
      v60(v98, v62, v57);
      v53(v61, 0, 1, v57);
      v60(v58, v61, v57);
      v53(v58, 0, 1, v57);
    }

    else
    {
      v63 = 1;
      v53(v98, 1, 1, v52);
      v64 = [v48 creationDate];
      v65 = v93;
      if (v64)
      {
        v66 = v64;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v63 = 0;
      }

      v53(v65, v63, 1, v52);
      sub_10003C78C(v65, v19);
      v67 = v98;
      v57 = v52;
      v58 = v19;
      v59 = v51;
      if ((*(v51 + 48))(v98, 1, v52) != 1)
      {
        sub_100006CAC(v67, &unk_1000938B0, &qword_100074AA0);
      }
    }

    v68 = *(v96 + 48);
    v69 = v103;
    sub_100006C44(v46, v103, &unk_1000938B0, &qword_100074AA0);
    sub_100006C44(v58, v69 + v68, &unk_1000938B0, &qword_100074AA0);
    v70 = *(v59 + 48);
    v71 = v70(v69, 1, v57);
    v49 = v110;
    if (v71 == 1)
    {
      sub_100006CAC(v58, &unk_1000938B0, &qword_100074AA0);
      v72 = v103;
      sub_100006CAC(v46, &unk_1000938B0, &qword_100074AA0);
      v73 = v70(v72 + v68, 1, v57);
      v41 = v105;
      if (v73 == 1)
      {
        sub_100006CAC(v72, &unk_1000938B0, &qword_100074AA0);
        v74 = 3;
        v44 = v106;
        v43 = v107;
        v48 = v112;
        v75 = &off_100091000;
        goto LABEL_41;
      }

LABEL_39:
      sub_100006CAC(v72, &qword_100094160, &qword_100074A98);
      v44 = v106;
      v43 = v107;
      v48 = v112;
      v75 = &off_100091000;
      goto LABEL_40;
    }

    v76 = v94;
    sub_100006C44(v69, v94, &unk_1000938B0, &qword_100074AA0);
    if (v70(v69 + v68, 1, v57) == 1)
    {
      sub_100006CAC(v58, &unk_1000938B0, &qword_100074AA0);
      v72 = v103;
      sub_100006CAC(v46, &unk_1000938B0, &qword_100074AA0);
      (*(v99 + 8))(v76, v57);
      v41 = v105;
      goto LABEL_39;
    }

    v88 = v99;
    v89 = v69 + v68;
    v90 = v95;
    (*(v99 + 32))(v95, v89, v57);
    sub_100006DAC(&qword_100094168, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v91 = dispatch thunk of static Equatable.== infix(_:_:)();
    v92 = *(v88 + 8);
    v92(v90, v57);
    sub_100006CAC(v58, &unk_1000938B0, &qword_100074AA0);
    sub_100006CAC(v104, &unk_1000938B0, &qword_100074AA0);
    v92(v94, v57);
    sub_100006CAC(v69, &unk_1000938B0, &qword_100074AA0);
    v41 = v105;
    v44 = v106;
    v43 = v107;
    v48 = v112;
    v75 = &off_100091000;
    if (v91)
    {
      v74 = 3;
    }

    else
    {
LABEL_40:
      v74 = 2;
    }

LABEL_41:
    v50 = [v49 v75[444]];
  }

  v77 = v102;
  (*((swift_isaMask & *v101) + 0x108))(v50);
  if ((*(*(v43 - 1) + 48))(v77, 1, v43) == 1)
  {
    sub_100006CAC(v77, &qword_100093F68, &unk_100074690);
  }

  else
  {
    v78 = sub_1000073A4();
    v80 = v79;
    v81 = sub_100007124(v77);
    if (v80 >> 60 != 15)
    {
      v111[0] = v78;
      v111[1] = v80;
      __chkstk_darwin(v81);
      *(&v93 - 2) = v111;
      v83 = sub_1000079A0(sub_1000615F4, (&v93 - 4), v82);
      v43 = v107;
      [v49 setFastLEConnectionAllowed:v83 & 1];
      sub_100006BB4(v78, v80);
    }
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v49 setFastLEConnectionInfoData:isa];

  v85 = *(v44 + v43[7]);
  if ((v85 & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  if (v85 > 0xFF)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [v49 setFastLEConnectionInfoVersion:*(v44 + v43[7])];
  v86 = *(v44 + v43[12]);
  if ((v86 & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!HIDWORD(v86))
  {
    [v49 setSupportedServices:?];
    v87 = v49;
    [v41 setControllerInfo:v87];

    *v100 = v41;
    return;
  }

LABEL_58:
  __break(1u);
}

void *sub_100005B8C()
{
  v1 = v0;
  v2 = type metadata accessor for URL.DirectoryHint();
  v41 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v42 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v39 - v10;
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  v18 = SystemInfo.deviceFirstUnlocked.getter();
  if (v18)
  {
    v19 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevicesQueue);
    __chkstk_darwin(v18);
    *(&v39 - 2) = v1;
    sub_10000A45C(&qword_100093F30, &unk_100074678);
    v40 = v19;
    OS_dispatch_queue.sync<A>(execute:)();
    result = aBlock._countAndFlagsBits;
    if (aBlock._countAndFlagsBits)
    {
      return result;
    }

    (*((swift_isaMask & *v1) + 0x148))();
    v21 = sub_1000395BC();
    swift_beginAccess();
    v22 = v42;
    (*(v42 + 16))(v8, v21, v5);
    v23 = URL.path(percentEncoded:)(1);
    v24 = v5;
    v25 = *(v22 + 8);
    v42 = v22 + 8;
    v26 = v8;
    v27 = v24;
    v39 = v24;
    v25(v26);
    aBlock = v23;
    v28 = v41;
    (*(v41 + 104))(v4, enum case for URL.DirectoryHint.isDirectory(_:), v2);
    sub_100038560();
    URL.appending<A>(path:directoryHint:)();
    (*(v28 + 8))(v4, v2);

    (v25)(v11, v27);
    v15 = *(**sub_100041228() + 184);
    v29 = type metadata accessor for CloudPairedDeviceRecord(0);
    v30 = sub_100002374(&qword_100093950, type metadata accessor for CloudPairedDeviceRecord, &unk_100073C64);

    v17 = (v15)(v13, v29, v30);

    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = v17;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_100050B50;
    *(v31 + 24) = v14;
    v46 = sub_100018FE4;
    v47 = v31;
    aBlock._countAndFlagsBits = _NSConcreteStackBlock;
    aBlock._object = 1107296256;
    v44 = sub_10001437C;
    v45 = &unk_10008B738;
    v32 = _Block_copy(&aBlock);
    v33 = v1;

    dispatch_sync(v40, v32);
    _Block_release(v32);
    (v25)(v13, v39);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    result = v17;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v35 = sub_1000391A8();
  (*(v15 + 16))(v17, v35, v14);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Cloud Paired Devices read failed because device is in before first unlock state", v38, 2u);
  }

  (*(v15 + 8))(v17, v14);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000061C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006218(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_10000626C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return 0;
    }

    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    goto LABEL_8;
  }

  if (v9)
  {
    v10 = a1;
    v11 = a1 >> 32;
LABEL_8:
    if (v10 == v11)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

LABEL_9:
  v12 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_100006218(a1, a2);
  v13 = sub_10000660C();
  sub_1000066CC(a1, a2);
  v14 = [objc_allocWithZone(CKRecord) initWithCoder:v13];
  if (v14)
  {
    v15 = v14;

    return v15;
  }

  v17 = sub_10003915C();
  (*(v5 + 16))(v8, v17, v4);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Unable to extract CKRecord from cloudKitMetadata", v20, 2u);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

uint64_t sub_1000065D8()
{
  v1 = *v0;
  sub_100006218(*v0, *(v0 + 8));
  return v1;
}

id sub_10000660C()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1000066CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100006720(id *a1)
{
  v2 = [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = type metadata accessor for CloudPairedDeviceRecord(0);
  if ((v12 & 1) != 0 || v11 != *(v1 + v3[7]))
  {
    v11 = *(v1 + v3[7]);
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v4 = (v1 + v3[8]);
  v6 = *v4;
  v5 = v4[1];
  if (v12 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      sub_100006218(v6, v5);
      sub_100006218(v6, v5);
      sub_10000FB4C(v11, v12);
      v10 = sub_10003CAF8(v11, v12, v6, v5);
      sub_1000066CC(v6, v5);
      sub_100006BB4(v11, v12);
      sub_100006BB4(v6, v5);
      sub_100006BB4(v11, v12);
      if (v10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_8:
    sub_100006218(v6, v5);
    sub_100006BB4(v11, v12);
    sub_100006BB4(v6, v5);
LABEL_9:
    v11 = v6;
    LOBYTE(v12) = v5;
    sub_100006218(v6, v5);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_10;
  }

  if (v5 >> 60 != 15)
  {
    goto LABEL_8;
  }

  sub_100006218(v6, v5);
  sub_100006BB4(v11, v12);
LABEL_10:
  sub_10000A45C(&qword_1000938D8, &qword_1000739B8);
  sub_100006BC8();
  CKRecordKeyValueSetting.subscript.getter();
  v7 = *(v1 + v3[9]);
  if (!v11 || (, v8 = sub_10003BB8C(v11, v7), , , (v8 & 1) == 0))
  {
    v11 = v7;

    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  if ((v12 & 1) != 0 || v11 != *(v1 + v3[10]))
  {
    v11 = *(v1 + v3[10]);
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  if ((v12 & 1) != 0 || v11 != *(v1 + v3[11]))
  {
    v11 = *(v1 + v3[11]);
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  if ((v12 & 1) != 0 || v11 != *(v1 + v3[12]))
  {
    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100006BB4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000066CC(result, a2);
  }

  return result;
}

unint64_t sub_100006BC8()
{
  result = qword_100093908;
  if (!qword_100093908)
  {
    sub_10000C9B0(&qword_1000938D8, &qword_1000739B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093908);
  }

  return result;
}

uint64_t sub_100006C44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000A45C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006CAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000A45C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006D0C()
{
  v1 = (v0 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_currentDeviceIDSUniqueID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100006D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100006DF4(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = (*(a2 + 32))(a1, a2);
  v8 = v7;
  isa = sub_10000626C(v6, v7);
  sub_1000066CC(v6, v8);
  if (!isa)
  {
    isa = sub_100038CD4(v2, a1, a2).super.isa;
  }

  v12 = isa;
  (*(a2 + 64))(&v12, a1, a2);
  v10 = v12;
  objc_autoreleasePoolPop(v5);
  return v10;
}

uint64_t sub_100006EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CloudPairedDeviceRecord(0);
  v19 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*((swift_isaMask & *v1) + 0xF0))(v4);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    result = (*((swift_isaMask & *v1) + 0x128))();
    v12 = result;
    v13 = *(result + 16);
    if (v13)
    {
      v14 = 0;
      while (v14 < *(v12 + 16))
      {
        sub_100004EFC(v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v14, v6);
        v15 = &v6[*(v3 + 24)];
        v16 = *v15 == v9 && v10 == *(v15 + 1);
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          sub_100007180(v6, a1);
          return (*(v19 + 56))(a1, 0, 1, v3);
        }

        ++v14;
        result = sub_100007124(v6);
        if (v13 == v14)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:

      return (*(v19 + 56))(a1, 1, 1, v3);
    }
  }

  else
  {
    v17 = *(v19 + 56);

    return v17(a1, 1, 1, v3);
  }

  return result;
}

uint64_t sub_100007124(uint64_t a1)
{
  v2 = type metadata accessor for CloudPairedDeviceRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPairedDeviceRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000071F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000072CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000073A4()
{
  v0 = sub_10000A45C(&qword_100093938, &qword_1000739C8);
  __chkstk_darwin(v0 - 8);
  v2 = &v31[-1] - v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CloudPairedDeviceRecord(0);
  UUID.init(uuidString:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100006CAC(v2, &qword_100093938, &qword_1000739C8);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = sub_100007728();
  v35 = &type metadata for Data;
  v36 = &protocol witness table for Data;
  v33 = v8;
  v34 = v9;
  v10 = sub_1000078C8(&v33, &type metadata for Data);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v31, 0, 14);
      v15 = v31;
      v14 = v31;
      goto LABEL_25;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = __DataStorage._offset.getter();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
        goto LABEL_28;
      }

      v18 += v11;
    }

    v20 = __OFSUB__(v17, v16);
    v21 = v17 - v16;
    if (!v20)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_13:
    v22 = v11;
    v23 = v11 >> 32;
    v21 = v23 - v22;
    if (v23 >= v22)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
LABEL_17:
        v25 = __DataStorage._length.getter();
        if (v25 >= v21)
        {
          v26 = v21;
        }

        else
        {
          v26 = v25;
        }

        v27 = (v26 + v18);
        if (v18)
        {
          v14 = v27;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_25;
      }

      v24 = __DataStorage._offset.getter();
      if (!__OFSUB__(v22, v24))
      {
        v18 += v22 - v24;
        goto LABEL_17;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v13)
  {
    goto LABEL_13;
  }

  v31[0] = *v10;
  LOWORD(v31[1]) = v12;
  BYTE2(v31[1]) = BYTE2(v12);
  BYTE3(v31[1]) = BYTE3(v12);
  BYTE4(v31[1]) = BYTE4(v12);
  BYTE5(v31[1]) = BYTE5(v12);
  v14 = v31 + BYTE6(v12);
  v15 = v31;
LABEL_25:
  sub_10000790C(v15, v14, v32);
  v28 = v32[0];
  v29 = v32[1];
  sub_1000036EC(&v33);
  v33 = v28;
  v34 = v29;
  Data.append(_:)();
  (*(v4 + 8))(v6, v3);
  return v33;
}

uint64_t sub_100007728()
{
  v2[0] = UUID.uuid.getter();
  v2[1] = v0;
  return sub_10000780C(v2, &v3);
}

uint64_t sub_100007788(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10000780C(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1000078C8(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_10000FB78(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_10000FC30(v3, v4);
    }

    else
    {
      v6 = sub_100007788(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1000036EC(v8);
  return v6;
}

void *sub_1000078C8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_BYTE *sub_10000790C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10000FB78(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10000FC30(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100007788(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1000079A0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_100006218(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_1000066CC(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_100007AA8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100007C38(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000066CC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100007CF0(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000066CC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100007C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100007CF0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100007CF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100007F24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007F5C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007F9C()
{
  v1 = (sub_10000A45C(&qword_1000931C0, &unk_100072C70) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_1000036EC((v0 + v3));
  v5 = v1[9];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000080B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000080E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008120()
{
  v1 = (sub_10000A45C(&qword_100092FA8, &unk_100075380) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_1000036EC((v0 + v3));
  v5 = v1[9];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100008234()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000827C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000082C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000082DC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100008314()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100008364(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008374()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000083B8()
{
  v1 = (sub_10000A45C(&qword_100093F40, &qword_1000730E0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_1000036EC((v0 + v3));
  v5 = v1[9];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000084CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000853C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008590()
{

  sub_100036B6C(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 58, 7);
}

uint64_t sub_10000860C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008678()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000086C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000086F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100008738(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100008744()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1000087B0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100008800()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008840()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008878()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000088D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008910()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100008A48()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008A88()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008AE8@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100008B14()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

uint64_t sub_100008C70()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008CF8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008D30()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008D70()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;

  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100008EB8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100009010()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009048()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for Subscription(0, v5, a3, a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 24) & ~v7;
  v9 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v4 + v8;
  (*(*(v5 - 8) + 8))(v4 + v8, v5);
  v11 = v6[9];
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  return _swift_deallocObject(v4, v9 + 16, v7 | 7);
}

uint64_t sub_1000091CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

_DWORD *sub_10000921C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100009238()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009270()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000092C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000092F8()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100009348()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009438()
{
  v1 = (sub_10000A45C(&qword_100092E80, qword_100072CF0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_1000036EC((v0 + v3));
  v5 = v1[9];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000954C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000095B8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10000963C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009678()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000096C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009704()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t SystemVersionNumber.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall SystemVersionNumber.init(rawValue:)(bluetoothuserd::SystemVersionNumber_optional *__return_ptr retstr, Swift::String rawValue)
{
  sub_100009CF0(rawValue._countAndFlagsBits, rawValue._object, v5);
  v3 = v5[3];
  *&retstr->value.baseLetter._object = v5[2];
  *&retstr->value.childType.is_nil = v3;
  retstr->value.suffix = v5[4];
  v4 = v5[1];
  retstr->value.rawValue = v5[0];
  *&retstr->value.baseNumber = v4;
}

void __swiftcall SystemVersionNumber.init(stringLiteral:)(bluetoothuserd::SystemVersionNumber *__return_ptr retstr, Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;

  sub_100009CF0(countAndFlagsBits, object, &v9);
  v5 = v10;
  if (v10)
  {
    v6 = v9;

    retstr->rawValue._countAndFlagsBits = v6;
    retstr->rawValue._object = v5;
    v7 = v12;
    *&retstr->baseNumber = v11;
    *&retstr->baseLetter._object = v7;
    v8 = v14;
    *&retstr->childType.is_nil = v13;
    retstr->suffix = v8;
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_100009840@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100009CF0(*a1, a1[1], v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v5[4];
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100009890@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_10000994C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  result = sub_100009CF0(v4, v3, &v10);
  v6 = v11;
  if (v11)
  {
    v7 = v10;

    *a2 = v7;
    *(a2 + 8) = v6;
    v8 = v13;
    *(a2 + 16) = v12;
    *(a2 + 32) = v8;
    v9 = v15;
    *(a2 + 48) = v14;
    *(a2 + 64) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000099C8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s14bluetoothuserd19SystemVersionNumberV1loiySbAC_ACtFZ_0(v8, v9) & 1;
}

BOOL sub_100009A24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v8[4] = a1[4];
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v7[3] = v4;
  v7[4] = a2[4];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return (_s14bluetoothuserd19SystemVersionNumberV1loiySbAC_ACtFZ_0(v7, v8) & 1) == 0;
}

BOOL sub_100009A84(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return (_s14bluetoothuserd19SystemVersionNumberV1loiySbAC_ACtFZ_0(v8, v9) & 1) == 0;
}

uint64_t sub_100009AE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v8[4] = a1[4];
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v7[3] = v4;
  v7[4] = a2[4];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return _s14bluetoothuserd19SystemVersionNumberV1loiySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t sub_100009B40(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t SystemVersionNumber.description.getter()
{
  if (*(v0 + 48))
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  else
  {
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    v2 = v3;
  }

  if (*(v0 + 72))
  {
    Character.write<A>(to:)();
  }

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  Character.write<A>(to:)();
  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);

  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  String.append(_:)(v7);

  return 0;
}

uint64_t sub_100009CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a3;
  v5 = type metadata accessor for NSScanner.NumberRepresentation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(NSScanner);
  v40 = a1;
  v41 = a2;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithString:v10];

  v12 = enum case for NSScanner.NumberRepresentation.decimal(_:);
  v13 = *(v6 + 104);
  v13(v8, enum case for NSScanner.NumberRepresentation.decimal(_:), v5);
  v39 = NSScanner.scanInt(representation:)();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v8, v5);
  if (v15)
  {

LABEL_14:

    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    object = 0;
    goto LABEL_15;
  }

  v17 = NSScanner.scanCharacter()();
  object = v17.value._object;
  if (v17.value._object)
  {
    countAndFlagsBits = v17.value._countAndFlagsBits;
    v13(v8, v12, v5);
    v19 = NSScanner.scanInt(representation:)();
    v21 = v20;
    v16(v8, v5);
    if (v21)
    {
    }

    else
    {
      v27 = v19 / 0x3E8uLL;
      if (v19 < 1000)
      {
        v27 = 0;
      }

      v37 = v27;
      if (v19 >= 1000)
      {
        v28 = v19 % 0x3E8uLL;
      }

      else
      {
        v28 = v19;
      }

      v54 = v19 < 1000;
      v24 = v41;

      v29 = NSScanner.scanCharacter()();
      v30 = v29.value._countAndFlagsBits;
      v31 = v29.value._object;
      v23 = v40;
      NSScanner.currentIndex.getter();
      v32 = String.distance(from:to:)();

      if (!v32)
      {
        v44[0] = v23;
        v44[1] = v24;
        v25 = v39;
        v44[2] = v39;
        v44[3] = countAndFlagsBits;
        v33 = v37;
        v44[4] = v17.value._object;
        v44[5] = v37;
        LOBYTE(v45) = v54;
        *(&v45 + 1) = *v53;
        HIDWORD(v45) = *&v53[3];
        v46 = v28;
        v47 = v29;
        v34 = v45;
        v48[0] = v23;
        v48[1] = v24;
        v48[2] = v39;
        v48[3] = countAndFlagsBits;
        v48[4] = v17.value._object;
        v48[5] = v37;
        v49 = v54;
        *&v50[3] = *&v53[3];
        *v50 = *v53;
        v51 = v28;
        v52 = v29;
        sub_10000A4A4(v44, &v43);
        result = sub_10000A4DC(v48);
        v26 = countAndFlagsBits;
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
LABEL_15:
  v33 = 0;
  v34 = 0;
  v28 = 0;
  v30 = 0;
  v31 = 0;
LABEL_16:
  v35 = v42;
  *v42 = v23;
  v35[1] = v24;
  v35[2] = v25;
  v35[3] = v26;
  v35[4] = object;
  v35[5] = v33;
  v35[6] = v34;
  v35[7] = v28;
  v35[8] = v30;
  v35[9] = v31;
  return result;
}

uint64_t _s14bluetoothuserd19SystemVersionNumberV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 < v3)
  {
    goto LABEL_2;
  }

  if (v3 < v2)
  {
    v4 = 0;
    return v4 & 1;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (v5 || (v4 = 1, v6 = a1, v7 = a2, v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v7, v9 = v8, a1 = v6, (v9 & 1) == 0))
  {
    if (*(a1 + 56) < *(a2 + 56))
    {
LABEL_2:
      v4 = 1;
      return v4 & 1;
    }

    v17 = *(a1 + 64);
    if (*(&v17 + 1))
    {
      v10 = v17;
    }

    else
    {
      v10 = 0;
    }

    if (*(&v17 + 1))
    {
      v11 = *(&v17 + 1);
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v16 = *(a2 + 64);
    if (*(&v16 + 1))
    {
      v12 = v16;
    }

    else
    {
      v12 = 0;
    }

    if (*(&v16 + 1))
    {
      v13 = *(&v16 + 1);
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    if (v10 == v12 && v11 == v13)
    {
      v4 = 0;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_10000A3EC(&v17, v15);
    sub_10000A3EC(&v16, v15);
  }

  return v4 & 1;
}

unint64_t sub_10000A1A8()
{
  result = qword_100092B60;
  if (!qword_100092B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092B60);
  }

  return result;
}

unint64_t sub_10000A20C()
{
  result = qword_100092B68;
  if (!qword_100092B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092B68);
  }

  return result;
}

unint64_t sub_10000A27C()
{
  result = qword_100092B70;
  if (!qword_100092B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092B70);
  }

  return result;
}

__n128 sub_10000A2D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10000A2EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000A334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000A398()
{
  result = qword_100092B78;
  if (!qword_100092B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092B78);
  }

  return result;
}

uint64_t sub_10000A3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100092B80, &unk_100072B78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A45C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000A510()
{
  type metadata accessor for DarwinNotificationManager();
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  static DarwinNotificationManager.shared = result;
  return result;
}

uint64_t *DarwinNotificationManager.shared.unsafeMutableAddressor()
{
  if (qword_100095210 != -1)
  {
    swift_once();
  }

  return &static DarwinNotificationManager.shared;
}

uint64_t static DarwinNotificationManager.shared.getter()
{
  if (qword_100095210 != -1)
  {
    swift_once();
  }
}

uint64_t DarwinNotificationManager.registerHelper(helper:)(uint64_t a1)
{
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t DarwinNotificationManager.unregisterHelper(helper:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v11 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
LABEL_19:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v10 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v1 = v10;
          v8 = v11;
          goto LABEL_17;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_14;
        }
      }

      if (v6 == a1)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v11;
        specialized ContiguousArray._endMutation()();
      }

      ++v5;
      if (v7 == v4)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_17:

  v1[2] = v8;
}

Swift::Void __swiftcall DarwinNotificationManager.setUp()()
{
  v1 = v0;
  sub_10000A8F8();
  v2 = static OS_dispatch_queue.main.getter();
  v4[4] = sub_10000AC1C;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10000AC24;
  v4[3] = &unk_100089A48;
  v3 = _Block_copy(v4);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, v3);
  _Block_release(v3);
}

unint64_t sub_10000A8F8()
{
  result = qword_100092CC0;
  if (!qword_100092CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100092CC0);
  }

  return result;
}

const char *sub_10000A944(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v9 = String.init(cString:)();
    v11 = v10;
    v12 = sub_100039094();
    (*(v5 + 16))(v7, v12, v4);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000034B8(v9, v11, v23);
      _os_log_impl(&_mh_execute_header, v13, v14, "On xpc event stream, com.apple.notifyd.matching, notification %s", v15, 0xCu);
      sub_1000036EC(v16);
    }

    (*(v5 + 8))(v7, v4);
    result = swift_beginAccess();
    v17 = *(a2 + 16);
    if (v17 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v18 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_6:
        if (v18 < 1)
        {
          __break(1u);
          return result;
        }

        v19 = 0;
        do
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v20 = *(v17 + 8 * v19 + 32);
          }

          ++v19;
          v21 = String._bridgeToObjectiveC()();
          (*(*v20 + 120))();
        }

        while (v18 != v19);
      }
    }
  }

  return result;
}

uint64_t sub_10000AC24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t DarwinNotificationManager.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

char *sub_10000AD00(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A45C(&unk_100092E10, &unk_100072BD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_10000AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_defaults;
  *&v4[v9] = [objc_opt_self() standardUserDefaults];
  v10 = OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_cloudDefaults;
  v11 = NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor();
  swift_beginAccess();
  v12 = *v11;
  *&v4[v10] = v12;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_rootPrefsChangeToken] = -1;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_cloudKVSChangedNotification] = 0;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_dispatchQueue] = a1;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_monitoredUserDefaultKeys] = a2;
  v13 = &v4[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_notify];
  *v13 = a3;
  *(v13 + 1) = a4;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for KeyValueStoreCustomObserver();
  v14 = v12;
  return objc_msgSendSuper2(&v16, "init");
}

id sub_10000AF78()
{
  (*((swift_isaMask & *v0) + 0xE0))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeyValueStoreCustomObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000B0F0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100039094();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Start KeyValueStoreCustomObserver", v9, 2u);
  }

  v10 = (*(v3 + 8))(v5, v2);
  v11 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_monitoredUserDefaultKeys);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_defaults);
    v14 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_cloudDefaults);
    v15 = v11 + 40;
    do
    {

      v16 = String._bridgeToObjectiveC()();
      [v13 addObserver:v1 forKeyPath:v16 options:0 context:0];

      v17 = String._bridgeToObjectiveC()();

      [v14 addObserver:v1 forKeyPath:v17 options:0 context:0];

      v15 += 16;
      --v12;
    }

    while (v12);
  }

  return (*((swift_isaMask & *v1) + 0x110))(v10);
}

uint64_t sub_10000B348()
{
  v1 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_monitoredUserDefaultKeys);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_defaults);
    v4 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_cloudDefaults);
    v5 = v1 + 40;
    do
    {

      v6 = String._bridgeToObjectiveC()();
      [v3 removeObserver:v0 forKeyPath:v6 context:0];

      v7 = String._bridgeToObjectiveC()();

      [v4 removeObserver:v0 forKeyPath:v7 context:0];

      v5 += 16;
      --v2;
    }

    while (v2);
  }

  v8 = [objc_opt_self() defaultCenter];
  [v8 removeObserver:v0];

  v9 = OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_rootPrefsChangeToken;
  swift_beginAccess();
  return notify_cancel(*(v0 + v9));
}

void sub_10000B5C0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v33 - v6;
  v35 = v0;
  v8 = *&v0[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_cloudDefaults];
  LODWORD(v34) = [v8 synchronize];
  v9 = sub_100039280();
  v10 = *(v2 + 16);
  v37 = v1;
  v10(v7, v9, v1);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v36 = v5;
  if (v13)
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v11, v12, "Cloud KVS synchronized: %{BOOL}d", v14, 8u);
    v5 = v36;
  }

  v15 = *(v2 + 8);
  v16 = v37;
  v15(v7, v37);
  v10(v5, v9, v16);
  v17 = v35;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v15;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136315138;
    v23 = [v8 dictionaryRepresentation];
    v35 = v8;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = Dictionary.description.getter();
    v26 = v25;

    v27 = sub_1000034B8(v24, v26, &v38);
    v8 = v35;

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Cloud KVS snapshot: %s", v21, 0xCu);
    sub_1000036EC(v22);

    v28 = v34(v36, v37);
  }

  else
  {

    v28 = (v15)(v5, v37);
  }

  (*((swift_isaMask & *v17) + 0xF0))(v28);
  v29 = objc_opt_self();
  v30 = [v29 defaultCenter];
  [v30 addObserver:v17 selector:"handleUbiquitousKeyValueStoreChangeWithNotification:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:v8];

  v31 = [v29 defaultCenter];
  sub_100012F80();

  v32 = String._bridgeToObjectiveC()();

  [v31 addObserver:v17 selector:"handleUbiquitousKeyValueStoreChangeLocallyWithNotification:" name:v32 object:0];
}

void sub_10000BA28()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:*(v0 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_cloudDefaults)];

  v3 = [v1 defaultCenter];
  sub_100012F80();

  v4 = String._bridgeToObjectiveC()();

  [v3 removeObserver:v0 name:v4 object:0];
}

uint64_t sub_10000BB20()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Notification.userInfo.getter();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = sub_100039280();
  (*(v3 + 16))(v5, v8, v2);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v28[0] = v13;
    *v12 = 136315138;
    v14 = Dictionary.description.getter();
    v16 = sub_1000034B8(v14, v15, v28);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Cloud KVS Notification: %s", v12, 0xCu);
    sub_1000036EC(v13);

    v1 = v25;
  }

  (*(v3 + 8))(v5, v2);
  *&v29[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v29[0] + 1) = v17;

  result = AnyHashable.init<A>(_:)();
  if (!*(v7 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = sub_10000C7B0(v28);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  sub_100003690(*(v7 + 56) + 32 * v18, v27);
  sub_10000C7F4(v28);
  sub_10000C848(v27, v29);
  swift_dynamicCast();
  if (v26 > 3 || v26 == 2)
  {
  }

  *&v27[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v27[0] + 1) = v21;
  AnyHashable.init<A>(_:)();
  if (*(v7 + 16) && (v22 = sub_10000C7B0(v28), (v23 & 1) != 0))
  {
    sub_100003690(*(v7 + 56) + 32 * v22, v29);
    sub_10000C7F4(v28);

    sub_10000A45C(&qword_100094180, &qword_100074290);
    result = swift_dynamicCast();
    if (result)
    {
      (*((swift_isaMask & *v1) + 0x108))(0, *&v27[0]);
    }
  }

  else
  {

    return sub_10000C7F4(v28);
  }

  return result;
}

uint64_t sub_10000BF08(uint64_t a1)
{
  v2 = v1;
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10000C7B0(v9), (v6 & 1) != 0))
    {
      sub_100003690(*(v4 + 56) + 32 * v5, v10);
      sub_10000C7F4(v9);

      sub_10000A45C(&qword_100094180, &qword_100074290);
      if (swift_dynamicCast())
      {
        (*((swift_isaMask & *v2) + 0x108))(0, v8);
      }
    }

    else
    {

      sub_10000C7F4(v9);
    }
  }

  return (*((swift_isaMask & *v2) + 0x108))(0, _swiftEmptyArrayStorage);
}

uint64_t sub_10000C0B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10000C1A0(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = *(v3 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_dispatchQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  aBlock[4] = sub_10000C858;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_100089AC0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  sub_10000C8F4();
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000C94C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

void sub_10000C464()
{
  v1 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_dispatchQueue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_10000C9F8;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10000C72C;
  v5[3] = &unk_100089AE8;
  v3 = _Block_copy(v5);

  v4 = OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_rootPrefsChangeToken;
  swift_beginAccess();
  notify_register_dispatch("com.apple.bluetooth.prefsChanged", (v0 + v4), v1, v3);
  swift_endAccess();
  _Block_release(v3);
}

char *sub_10000C570(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100039280();
  (*(v2 + 16))(v4, v5, v1);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Root KVS Notification", v8, 2u);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *&result[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_notify];
    v11 = result;

    v10(1, _swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_10000C72C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

unint64_t sub_10000C7B0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000CA68(a1, v4);
}

_OWORD *sub_10000C848(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_10000C858()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC14bluetoothuserd27KeyValueStoreCustomObserver_notify];
    v5 = result;

    v4(v1, v2);
  }

  return result;
}

unint64_t sub_10000C8F4()
{
  result = qword_100092D20;
  if (!qword_100092D20)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092D20);
  }

  return result;
}

unint64_t sub_10000C94C()
{
  result = qword_100092D30;
  if (!qword_100092D30)
  {
    sub_10000C9B0(&unk_1000931F0, &unk_100072C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092D30);
  }

  return result;
}

uint64_t sub_10000C9B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CA00(uint64_t a1)
{
  v2 = sub_10000A45C(&qword_100092CB8, &qword_100072C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000CA68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000CB30(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000C7F4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_10000CB94()
{
  result = [objc_allocWithZone(type metadata accessor for ApplePushServiceManager()) init];
  qword_1000989A8 = result;
  return result;
}

uint64_t *sub_10000CBC4()
{
  if (qword_100095218 != -1)
  {
    swift_once();
  }

  return &qword_1000989A8;
}

uint64_t sub_10000CCB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_subscriptions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10000CD74()
{
  v1 = (v0 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_pushEnvironment);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10000CDCC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_pushEnvironment);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

unint64_t sub_10000CE2C()
{
  v1 = (v0 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager____lazy_storage____pushTopic);
  if (*(v0 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager____lazy_storage____pushTopic + 8))
  {
    v2 = *v1;
LABEL_5:

    return v2;
  }

  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    v2 = 0xD00000000000001BLL;
    *v1 = 0xD00000000000001BLL;
    v1[1] = 0x8000000100079A20;

    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10000CF80()
{
  v1 = v0;
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = v3;
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_pushServiceQueue;
  sub_10000A8F8();
  v13[1] = "cloudKVSChangedNotification";
  v7 = *(v4 + 104);
  v16 = v4 + 104;
  v18 = v7;
  v7(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  v13[0] = sub_100002254(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_10000FA34(&qword_1000931B0, &unk_100092CD0, &unk_100072C60, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v1[v15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_subscriptions] = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_subscriptionQueue;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *&v1[v15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = &v1[OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_pushEnvironment];
  *v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8[1] = v9;
  *&v1[OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection] = 0;
  v10 = &v1[OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager____lazy_storage____pushTopic];
  v11 = type metadata accessor for ApplePushServiceManager();
  *v10 = 0;
  *(v10 + 1) = 0;
  v19.receiver = v1;
  v19.super_class = v11;
  return objc_msgSendSuper2(&v19, "init");
}

void sub_10000D360()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D860();
  v6 = sub_1000390D0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Enable pushes", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection;
  v11 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection);
  if (v11)
  {
    sub_10000A45C(&unk_100092D10, &unk_100072C00);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100072BE0;
    v13 = v11;
    *(v12 + 32) = sub_10000CE2C();
    *(v12 + 40) = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 _setEnabledTopics:isa];

    v16 = *(v1 + v10);
    if (v16)
    {
      v17 = v16;
      v18 = Array._bridgeToObjectiveC()().super.isa;
      [v17 _setIgnoredTopics:v18];

      v19 = *(v1 + v10);
      if (v19)
      {
        v20 = v19;
        sub_10000CE2C();
        v21 = String._bridgeToObjectiveC()();

        [v20 requestTokenForTopic:v21 identifier:0];
      }
    }
  }
}

void sub_10000D5E0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D860();
  v6 = sub_1000390D0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Disable pushes", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection;
  v11 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection);
  if (v11)
  {
    v12 = v11;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v12 _setEnabledTopics:isa];

    v14 = *(v1 + v10);
    if (v14)
    {
      sub_10000A45C(&unk_100092D10, &unk_100072C00);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100072BE0;
      v16 = v14;
      *(v15 + 32) = sub_10000CE2C();
      *(v15 + 40) = v17;
      v18 = Array._bridgeToObjectiveC()().super.isa;

      [v16 _setIgnoredTopics:v18];

      v19 = *(v1 + v10);
      if (v19)
      {
        v20 = v19;
        sub_10000CE2C();
        v21 = String._bridgeToObjectiveC()();

        [v20 invalidateTokenForTopic:v21 identifier:0];
      }
    }
  }
}

void sub_10000D860()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection;
  if (!*(v1 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_apsConnection))
  {
    v7 = sub_1000390D0();
    (*(v3 + 16))(v5, v7, v2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Set up APS connection", v10, 2u);
    }

    v11 = (*(v3 + 8))(v5, v2);
    (*((swift_isaMask & *v1) + 0xB0))(v11);
    v12 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_pushServiceQueue);
    v13 = objc_allocWithZone(APSConnection);
    v14 = v12;
    v15 = String._bridgeToObjectiveC()();

    v16 = String._bridgeToObjectiveC()();
    v17 = [v13 initWithEnvironmentName:v15 namedDelegatePort:v16 queue:v14];

    v18 = *(v1 + v6);
    *(v1 + v6) = v17;
    v19 = v17;

    if (v19)
    {
      [v19 setDelegate:v1];
    }
  }
}

id sub_10000DD4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplePushServiceManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000DE94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v21[-v8 - 8];
  sub_10000FA7C(a1, v21);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_10000A45C(&unk_100092E00, &qword_100072CE0);
  Subscription.init(subscriber:unsubscribeBlock:)(v21, sub_10000FAE0, v10, v11, a3);
  sub_10000F7AC(a3, v9);
  v12 = (*((swift_isaMask & *a2) + 0xA8))(v21);
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_10000E894(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_10000E894((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  sub_10000F81C(v9, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18);
  return v12(v21, 0);
}

uint64_t sub_10000E0B4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v13 = v19 - v12;
  v19[1] = *&v1[OBJC_IVAR____TtC14bluetoothuserd23ApplePushServiceManager_subscriptionQueue];
  sub_10000F7AC(a1, v19 - v12);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  sub_10000F81C(v13, v15 + v14);
  aBlock[4] = sub_10000F88C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_100089B38;
  v16 = _Block_copy(aBlock);
  v17 = v1;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v20);
}

void *sub_10000E42C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_10000F7AC(a3 + v15 + v16 * v13, v12);
      v17 = a1(v12);
      if (v3)
      {
        sub_100006CAC(v12, &qword_1000931C0, &unk_100072C70);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_10000F81C(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10000EA84(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_10000EA84((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_10000F81C(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_100006CAC(v12, &qword_1000931C0, &unk_100072C70);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t (*sub_10000E728(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((swift_isaMask & **v1) + 0xA8))();
  return sub_10000E7CC;
}

void sub_10000E7CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void *sub_10000E894(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_100092DF0, &qword_100072CD8);
  v10 = *(sub_10000A45C(&qword_1000931C0, &unk_100072C70) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A45C(&qword_1000931C0, &unk_100072C70) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10000EA84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000EAA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000EAA4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_100092DF0, &qword_100072CD8);
  v10 = *(sub_10000A45C(&qword_1000931C0, &unk_100072C70) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A45C(&qword_1000931C0, &unk_100072C70) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000EC94(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  if (a2 >> 60 == 15)
  {
    v11 = sub_1000390D0();
    (*(v5 + 16))(v8, v11, v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Invalid Public Token", v14, 2u);
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_100006218(a1, a2);
    if (IsAppleInternalBuild())
    {
      v16 = sub_1000390D0();
      (*(v5 + 16))(v10, v16, v4);
      sub_100006218(a1, a2);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      sub_100006BB4(a1, a2);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v26 = v17;
        v27 = v20;
        v21 = v20;
        *v19 = 136315138;
        v22 = Data.base64EncodedString(options:)(0);
        v23 = sub_1000034B8(v22._countAndFlagsBits, v22._object, &v27);

        *(v19 + 4) = v23;
        v24 = v18;
        v25 = v26;
        _os_log_impl(&_mh_execute_header, v26, v24, "didReceivePublicToken: %s", v19, 0xCu);
        sub_1000036EC(v21);

        sub_100006BB4(a1, a2);
      }

      else
      {
        sub_100006BB4(a1, a2);
      }

      return (*(v5 + 8))(v10, v4);
    }

    else
    {

      return sub_100006BB4(a1, a2);
    }
  }
}

uint64_t sub_10000EFB4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v35 = a5;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  if (a2 >> 60 != 15 && a4 && a6)
  {
    sub_100006218(a1, a2);
    if (IsAppleInternalBuild())
    {
      v18 = sub_1000390D0();
      (*(v12 + 16))(v17, v18, v11);
      sub_10000FB4C(a1, a2);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      sub_100006BB4(a1, a2);

      v34 = v20;
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v31 = a3;
        v22 = v21;
        v33 = swift_slowAlloc();
        v36 = v33;
        *v22 = 136315650;
        v23 = Data.base64EncodedString(options:)(0);
        v32 = v19;
        v24 = sub_1000034B8(v23._countAndFlagsBits, v23._object, &v36);

        *(v22 + 4) = v24;
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_1000034B8(v31, a4, &v36);
        *(v22 + 22) = 2080;
        *(v22 + 24) = sub_1000034B8(v35, a6, &v36);
        v25 = v32;
        _os_log_impl(&_mh_execute_header, v32, v34, "didReceiveToken: %s, for topic: %s, identifier: %s", v22, 0x20u);
        swift_arrayDestroy();

        sub_100006BB4(a1, a2);
      }

      else
      {
        sub_100006BB4(a1, a2);
      }

      return (*(v12 + 8))(v17, v11);
    }

    else
    {

      return sub_100006BB4(a1, a2);
    }
  }

  else
  {
    v26 = sub_1000390D0();
    (*(v12 + 16))(v15, v26, v11);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Invalid APS data arguments", v29, 2u);
    }

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_10000F364(void *a1)
{
  v2 = v1;
  v4 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if (a1)
  {
    v15 = a1;
    v16 = sub_1000390D0();
    (*(v9 + 16))(v14, v16, v8);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = v2;
      v21 = v20;
      v22 = swift_slowAlloc();
      v40 = v5;
      v23 = v22;
      *v21 = 138412290;
      *(v21 + 4) = v17;
      *v22 = a1;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "didReceive: message: %@", v21, 0xCu);
      sub_100006CAC(v23, &qword_100093F70, &qword_1000730D0);
      v5 = v40;

      v2 = v39;
    }

    v25 = (*(v9 + 8))(v14, v8);
    v26 = (*((swift_isaMask & *v2) + 0x98))(v25);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = *(v5 + 80);
      v40 = v26;
      v29 = v26 + ((v28 + 32) & ~v28);
      v30 = *(v5 + 72);
      do
      {
        sub_10000F7AC(v29, v7);
        sub_10000FA7C(v7, v41);
        sub_100006CAC(v7, &qword_1000931C0, &unk_100072C70);
        v31 = v42;
        v32 = v43;
        sub_1000078C8(v41, v42);
        (*(v32 + 8))(v17, v31, v32);
        sub_1000036EC(v41);
        v29 += v30;
        --v27;
      }

      while (v27);
    }
  }

  else
  {
    v33 = sub_1000390D0();
    (*(v9 + 16))(v12, v33, v8);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Invalid message Token", v36, 2u);
    }

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_10000F7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F88C()
{
  v1 = *(sub_10000A45C(&qword_1000931C0, &unk_100072C70) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = (*((swift_isaMask & *v2) + 0x98))();
  v7[2] = v3;
  v5 = sub_10000E42C(sub_10000F990, v7, v4);
  return (*((swift_isaMask & *v2) + 0xA0))(v5);
}

BOOL sub_10000F990(uint64_t a1)
{
  sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  sub_10000FA34(&qword_100092DF8, &qword_1000931C0, &unk_100072C70, &protocol conformance descriptor for Subscription<A>);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_10000FA34(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000C9B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000FA7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000FAE0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10000E0B4(a1);
  }
}

uint64_t sub_10000FB4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006218(result, a2);
  }

  return result;
}

uint64_t sub_10000FB78(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10000FC30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

unint64_t sub_10000FCAC()
{
  _StringGuts.grow(_:)(35);

  v2 = (*(*v0 + 112))(v1);
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x8000000100079A80;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD00000000000001DLL;
}

uint64_t sub_10000FDBC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OS_dispatch_queue.sync<A>(execute:)();
  v10 = v20[15];
  sub_100016A58(0, 1u);
  if (v10 == 1)
  {
    v12 = v11;
    if (v11 > 0.0)
    {
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v14 = v13;
      (*(v7 + 8))(v9, v6);
      if (v12 >= v14)
      {
        return 1;
      }

      else
      {
        v15 = sub_10003911C();
        (*(v3 + 16))(v5, v15, v2);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Audio accessory limited logging expired", v18, 2u);
        }

        (*(v3 + 8))(v5, v2);
        (*(*v1 + 120))(0);
        return 0;
      }
    }
  }

  return v10;
}

uint64_t sub_100010088(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + OBJC_IVAR____TtC14bluetoothuserd12DebugManager_serialQueue);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_100012064;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_100089C00;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100012724(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_100010350(char a1, uint64_t a2)
{
  v4 = a1 & 1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  result = __chkstk_darwin(v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  if (*(a2 + OBJC_IVAR____TtC14bluetoothuserd12DebugManager__audioAccessoryLimitedLoggingEnabled) != v4)
  {
    v17 = OBJC_IVAR____TtC14bluetoothuserd12DebugManager__audioAccessoryLimitedLoggingEnabled;
    sub_100016A58(0, 1u);
    if ((a1 & 1) != 0 && ((v19 = v18, v18 <= 0.0) || (static Date.now.getter(), Date.timeIntervalSince1970.getter(), v21 = v20, (*(v13 + 8))(v16, v12), v19 >= v21)))
    {
      v29 = sub_10003911C();
      (*(v6 + 16))(v11, v29, v5);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Start audio accessory limited logging", v32, 2u);
      }

      (*(v6 + 8))(v11, v5);
      *(&v39 + 1) = &type metadata for Bool;
      LOBYTE(v38) = 1;
      sub_1000172A4(&off_100089B88, &v38, 0);
      sub_100006CAC(&v38, &qword_100092CB8, &qword_100072C40);
      if (v19 <= 0.0)
      {
        sub_10001084C(v16);
        Date.timeIntervalSince1970.getter();
        v19 = v33;
        (*(v13 + 8))(v16, v12);
      }

      *(&v39 + 1) = &type metadata for Double;
      *&v38 = v19;
      v28 = 1;
      sub_1000173CC(0, &v38, 1u);
      sub_100006CAC(&v38, &qword_100092CB8, &qword_100072C40);
      v34 = *sub_100062224();

      v35 = sub_100013394(0);
      (*(*v34 + 168))(v35, v19);
    }

    else
    {
      v22 = sub_10003911C();
      (*(v6 + 16))(v9, v22, v5);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Stop Audio Accessory Limited Logging", v25, 2u);
      }

      (*(v6 + 8))(v9, v5);
      *(&v39 + 1) = &type metadata for Bool;
      LOBYTE(v38) = 0;
      sub_1000172A4(&off_100089BB0, &v38, 0);
      sub_100006CAC(&v38, &qword_100092CB8, &qword_100072C40);
      v38 = 0u;
      v39 = 0u;
      sub_1000173CC(0, &v38, 1u);
      sub_100006CAC(&v38, &qword_100092CB8, &qword_100072C40);
      v26 = *sub_100062224();

      v27 = sub_100013394(0);
      (*(*v26 + 176))(v27);
      v28 = 0;
    }

    *(v37 + v17) = v28;
    return notify_post("com.apple.bluetoothuser.settingsChanged");
  }

  return result;
}

uint64_t sub_10001084C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016A58(2, 2u);
  v11 = v10;
  v12 = sub_10003911C();
  (*(v7 + 16))(v9, v12, v6);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v22[0] = v3;
    v22[1] = a1;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    v23 = v2;
    if (v11 <= 0.0)
    {
      v19 = 0xE700000000000000;
      v18 = 0x746C7561666564;
    }

    else
    {
      v24 = 0;
      v25 = 0xE000000000000000;
      v17._countAndFlagsBits = 0x656469727265766FLL;
      v17._object = 0xE900000000000020;
      String.append(_:)(v17);
      Double.write<A>(to:)();
      v18 = v24;
      v19 = v25;
    }

    v20 = sub_1000034B8(v18, v19, &v26);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Requesting %s expiration interval", v15, 0xCu);
    sub_1000036EC(v16);

    (*(v7 + 8))(v9, v6);
    v2 = v23;
    v3 = v22[0];
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  static Date.now.getter();
  Date.advanced(by:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t (*sub_100010B70(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_10000FDBC() & 1;
  return sub_100010BBC;
}

uint64_t sub_100010BE4()
{
  v1 = v0;
  v2 = sub_10000A45C(&qword_1000931D0, qword_1000730B0);
  __chkstk_darwin(v2 - 8);
  v27 = &v23 - v3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10003911C();
  (*(v11 + 16))(v13, v14, v10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Activate Debug Manager", v17, 2u);
  }

  (*(v11 + 8))(v13, v10);
  v31 = sub_1000128E0;
  v32 = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  v30 = &unk_100089C28;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100012724(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v26 + 8))(v6, v4);
  (*(v24 + 8))(v9, v25);

  sub_100062224();
  v30 = type metadata accessor for DebugManager(0);
  v31 = &off_100089C88;
  aBlock[0] = v1;

  v19 = v27;
  sub_1000640D8();

  sub_1000036EC(aBlock);
  v20 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  v21 = OBJC_IVAR____TtC14bluetoothuserd12DebugManager_systemNotificationSubscription;
  swift_beginAccess();
  sub_1000120BC(v19, v1 + v21);
  return swift_endAccess();
}

uint64_t sub_1000110C8()
{
  v1 = v0;
  v2 = sub_10000A45C(&qword_1000931D0, qword_1000730B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10003911C();
  (*(v10 + 16))(v12, v13, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = v8;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Invalidate Debug Manager", v16, 2u);
    v8 = v22;
  }

  (*(v10 + 8))(v12, v9);
  v17 = OBJC_IVAR____TtC14bluetoothuserd12DebugManager_systemNotificationSubscription;
  swift_beginAccess();
  sub_10001212C(v1 + v17, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v18 = &qword_1000931D0;
    v19 = qword_1000730B0;
    v20 = v4;
  }

  else
  {
    sub_10001219C(v4, v8);
    Subscription.unsubscribe(completion:)(Transaction.capture(), 0, v5);
    v18 = &qword_100092E80;
    v19 = qword_100072CF0;
    v20 = v8;
  }

  return sub_100006CAC(v20, v18, v19);
}

uint64_t sub_1000113C0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + OBJC_IVAR____TtC14bluetoothuserd12DebugManager_serialQueue);
  aBlock[4] = sub_10001220C;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_100089C50;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_100012724(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_100011668()
{
  sub_100006CAC(v0 + OBJC_IVAR____TtC14bluetoothuserd12DebugManager_systemNotificationSubscription, &qword_1000931D0, qword_1000730B0);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000116EC()
{
  v0 = swift_allocObject();
  sub_100011724();
  return v0;
}

uint64_t sub_100011724()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v12 - 8);
  __chkstk_darwin(v12);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC14bluetoothuserd12DebugManager_systemNotificationSubscription;
  v7 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v11 = OBJC_IVAR____TtC14bluetoothuserd12DebugManager_serialQueue;
  v8 = sub_10000A8F8();
  v10[1] = "Limited Logging: ";
  v10[2] = v8;
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_100012724(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_1000023BC(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *(v0 + v11) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + OBJC_IVAR____TtC14bluetoothuserd12DebugManager__audioAccessoryLimitedLoggingEnabled) = 0;
  return v0;
}

uint64_t sub_100011A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v58 = a3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v52 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  v18 = type metadata accessor for SystemNotificationSource(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012664(a1, v20);
  if (!(*(v12 + 48))(v20, 2, v11))
  {
    v53 = v15;
    v54 = v4;
    v55 = v10;
    v30 = v12;
    v31 = v17;
    (*(v12 + 32))(v17, v20, v11);
    v32 = sub_100013394(0);
    v34 = v57;
    v35 = v58;
    if (v32 == v57 && v33 == v58)
    {

      v36 = v5;
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v36 = v5;
      if ((v37 & 1) == 0)
      {
        v50 = *(v30 + 8);
        return v50(v31, v11);
      }
    }

    sub_10003911C();
    v38 = v54;
    (*(v36 + 16))();
    v39 = v53;
    (*(v30 + 16))(v53, v31, v11);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v39;
      v58 = v11;
      v44 = v42;
      v52 = swift_slowAlloc();
      v59 = v52;
      *v44 = 136315394;
      *(v44 + 4) = sub_1000034B8(v34, v35, &v59);
      *(v44 + 12) = 2080;
      sub_100012724(&qword_100092E88, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v45 = v40;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v49 = v41;
      v50 = *(v30 + 8);
      v50(v43, v58);
      v51 = sub_1000034B8(v46, v48, &v59);

      *(v44 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v45, v49, "Received alarm from name: %s at %s", v44, 0x16u);
      swift_arrayDestroy();

      v11 = v58;

      (*(v36 + 8))(v55, v54);
    }

    else
    {

      v50 = *(v30 + 8);
      v50(v39, v11);
      (*(v36 + 8))(v55, v38);
    }

    (*(*v56 + 120))(0);
    return v50(v31, v11);
  }

  v21 = v57;
  v22 = sub_10003911C();
  (*(v5 + 16))(v8, v22, v4);
  v23 = v58;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  v26 = v4;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v59 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1000034B8(v21, v23, &v59);
    _os_log_impl(&_mh_execute_header, v24, v25, "Received notification from name: %s", v27, 0xCu);
    sub_1000036EC(v28);
  }

  (*(v5 + 8))(v8, v26);
  return sub_1000126C8(v20);
}

uint64_t type metadata accessor for DebugManager(uint64_t a1)
{
  result = qword_1000952C0;
  if (!qword_1000952C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000120BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_1000931D0, qword_1000730B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001212C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_1000931D0, qword_1000730B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001219C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012210(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10003911C();
  (*(v10 + 16))(v12, v13, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v9;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136315138;
    v19 = sub_1000128F0(v3);
    v21 = v8;
    v22 = v2;
    v23 = sub_1000034B8(v19, v20, aBlock);

    *(v16 + 4) = v23;
    v2 = v22;
    v8 = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "keyValueChanged source: %s", v16, 0xCu);
    sub_1000036EC(v18);

    (*(v10 + 8))(v12, v29);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  aBlock[4] = sub_1000128E0;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_100089C98;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100012724(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  v25 = v32;
  v26 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v33 + 8))(v25, v26);
  (*(v30 + 8))(v8, v31);
}

uint64_t sub_100012664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemNotificationSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000126C8(uint64_t a1)
{
  v2 = type metadata accessor for SystemNotificationSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100012774(uint64_t a1)
{
  sub_10001281C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10001281C(uint64_t a1)
{
  if (!qword_1000932F0)
  {
    sub_10000C9B0(&qword_100092E80, qword_100072CF0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000932F0);
    }
  }
}

uint64_t sub_100012880()
{
  v1 = sub_100016230(0, 0);
  v2 = *(*v0 + 120);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1000128F0(char a1)
{
  if (!a1)
  {
    return 0x64756F6C63;
  }

  if (a1 == 1)
  {
    return 1953460082;
  }

  return 1919251317;
}

uint64_t sub_100012934(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1953460082;
  if (v2 != 1)
  {
    v3 = 1919251317;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x64756F6C63;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 1953460082;
  if (*a2 != 1)
  {
    v6 = 1919251317;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x64756F6C63;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100012A14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001BLL;
  v3 = "oreChanged";
  v4 = a1;
  v5 = 0xD000000000000022;
  if (a1 == 5)
  {
    v6 = 0xD000000000000022;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if (a1 == 5)
  {
    v7 = "debugManagerEnabledOverride";
  }

  else
  {
    v7 = "gerEnabledOverride";
  }

  if (a1 == 3)
  {
    v8 = "tionExpirationIntervalOverride";
  }

  else
  {
    v5 = 0xD00000000000001BLL;
    v8 = "gerEnabledOverride";
  }

  if (v4 <= 4)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 4)
  {
    v7 = v8;
  }

  v10 = 0xD000000000000025;
  if (v4 == 1)
  {
    v11 = "APLogCloudCollectionEnabled";
  }

  else
  {
    v10 = 0xD00000000000002ELL;
    v11 = "tionEnabledExpiration";
  }

  if (!v4)
  {
    v10 = 0xD00000000000001BLL;
    v11 = "oreChanged";
  }

  if (v4 <= 2)
  {
    v12 = v11;
  }

  else
  {
    v10 = v9;
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD000000000000025;
        v3 = "APLogCloudCollectionEnabled";
      }

      else
      {
        v2 = 0xD00000000000002ELL;
        v3 = "tionEnabledExpiration";
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000022;
      v3 = "debugManagerEnabledOverride";
    }

    else
    {
      v2 = 0xD000000000000018;
      v3 = "gerEnabledOverride";
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xD000000000000022;
    v3 = "tionExpirationIntervalOverride";
  }

  else
  {
    v3 = "gerEnabledOverride";
  }

  if (v10 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

unint64_t sub_100012BA8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100017D0C(*a1);
  *a2 = result;
  return result;
}

void sub_100012BD8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 1953460082;
  if (v2 != 1)
  {
    v4 = 1919251317;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64756F6C63;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_100012C24()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100012CB4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100012D30(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100012DBC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

id sub_100012F8C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_100012FD0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1000130A0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

id sub_100013138()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[6];
  }

  else
  {
    v33 = v0;
    v32 = (*(*v0 + 120))();
    sub_1000179D0(0, 7, 0);
    v3 = 0;
    v4 = "oreChanged";
    v5 = "debugManagerEnabledOverride";
    v6 = "gerEnabledOverride";
    v7 = 0xD000000000000018;
    v8 = "tionExpirationIntervalOverride";
    do
    {
      v9 = *(&off_100089D60 + v3 + 32);
      v10 = 0xD000000000000022;
      if (v9 == 5)
      {
        v11 = 0xD000000000000022;
      }

      else
      {
        v11 = v7;
      }

      if (v9 == 5)
      {
        v12 = v5;
      }

      else
      {
        v12 = v6;
      }

      if (v9 == 3)
      {
        v13 = v8;
      }

      else
      {
        v10 = 0xD00000000000001BLL;
        v13 = "gerEnabledOverride";
      }

      if (*(&off_100089D60 + v3 + 32) <= 4u)
      {
        v14 = v13;
      }

      else
      {
        v10 = v11;
        v14 = v12;
      }

      v15 = 0xD000000000000025;
      if (v9 == 1)
      {
        v16 = "APLogCloudCollectionEnabled";
      }

      else
      {
        v15 = 0xD00000000000002ELL;
        v16 = "tionEnabledExpiration";
      }

      if (!*(&off_100089D60 + v3 + 32))
      {
        v15 = 0xD00000000000001BLL;
        v16 = v4;
      }

      if (*(&off_100089D60 + v3 + 32) <= 2u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v10;
      }

      if (*(&off_100089D60 + v3 + 32) <= 2u)
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }

      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        v30 = v5;
        v31 = v4;
        v28 = v7;
        v29 = v6;
        v27 = v8;
        sub_1000179D0((v19 > 1), v20 + 1, 1);
        v8 = v27;
        v7 = v28;
        v6 = v29;
        v5 = v30;
        v4 = v31;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v17;
      v21[5] = v18 | 0x8000000000000000;
    }

    while (v3 != 7);
    type metadata accessor for KeyValueStoreCustomObserver();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = sub_10000ADF4(v32, _swiftEmptyArrayStorage, sub_100019184, v22);
    v24 = v0[6];
    v33[6] = v23;
    v2 = v23;

    v1 = 0;
  }

  v25 = v1;
  return v2;
}

unint64_t sub_100013394(unsigned __int8 a1)
{
  v1 = 0xD00000000000001BLL;
  v2 = 0xD000000000000022;
  v3 = 0xD000000000000018;
  if (a1 == 5)
  {
    v3 = 0xD000000000000022;
  }

  if (a1 != 3)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (a1 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000025;
  if (a1 != 1)
  {
    v4 = 0xD00000000000002ELL;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100013454(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v7 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    swift_beginAccess();
    v26 = (v5 + 8);
    v27 = v37;
    v25 = (v7 + 8);
    v10 = (a2 + 40);
    v28 = a3;
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v14 = *(*Strong + 120);

        v34 = v14(v15);
        v16 = swift_allocObject();
        swift_weakInit();
        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        *(v17 + 24) = v33;
        *(v17 + 32) = v12;
        *(v17 + 40) = v11;
        v37[2] = sub_100019208;
        v37[3] = v17;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v37[0] = sub_100002410;
        v37[1] = &unk_10008A0D8;
        v18 = _Block_copy(aBlock);

        v19 = v29;
        static DispatchQoS.unspecified.getter();
        v35 = _swiftEmptyArrayStorage;
        sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10000A45C(&unk_1000931F0, &unk_100072C10);
        sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
        v20 = v31;
        v21 = v32;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v22 = v34;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v18);

        (*v26)(v20, v21);
        (*v25)(v19, v30);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
    return notify_post("com.apple.bluetoothuser.prefsChanged");
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100013C6C(v33, 0, 0);
    }
  }

  return result;
}

void (*sub_10001388C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100013138();
  return sub_1000138D4;
}

void sub_1000138D4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
}

void sub_1000138E4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100039094();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Activate KeyValueStoreManager", v9, 2u);
  }

  v10 = (*(v3 + 8))(v5, v2);
  v11 = (*(*v1 + 192))(v10);
  (*((swift_isaMask & *v11) + 0xD8))();
}

void sub_100013AA4(char a1)
{
  v2 = v1;
  if (a1)
  {
    if (v1[40])
    {
      return;
    }

    v3 = (*(*v1 + 192))();
    (*((swift_isaMask & *v3) + 0xE8))();
    v4 = 1;
  }

  else
  {
    if (!v1[40])
    {
      return;
    }

    v3 = (*(*v1 + 192))();
    (*((swift_isaMask & *v3) + 0xF0))();
    v4 = 0;
  }

  v2[40] = v4;
}

uint64_t sub_100013BB0()
{
  v1 = v0;
  v2 = (*(*v0 + 24))();
  (*((swift_isaMask & *v2) + 0xE0))();

  return _swift_deallocClassInstance(v1, 56, 7);
}

uint64_t sub_100013C6C(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(*v3 + 120))(v11);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  aBlock[4] = sub_10001900C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A088;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v19;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v9, v7);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_100013FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100014028(v6, a3, a4);
  }

  return result;
}

uint64_t sub_100014028(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a1;
  v7 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = v27 - v9;
  v35 = 0;
  v11 = *(v4 + 24);
  v12 = swift_allocObject();
  *(v12 + 16) = &v35;
  *(v12 + 24) = v4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100018F84;
  *(v13 + 24) = v12;
  v29 = v12;
  v33 = sub_100018FE4;
  v34 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001437C;
  v32 = &unk_10008A010;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_13:
    v16 = sub_1000176D4((v17 > 1), v11, 1, v16);
LABEL_4:
    *(v16 + 2) = v11;
    v18 = &v16[16 * v12];
    *(v18 + 4) = a2;
    *(v18 + 5) = a3;
    v19 = v35;
    if (v35)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a3)
  {

    v16 = sub_1000176D4(0, 1, 1, _swiftEmptyArrayStorage);
    v12 = *(v16 + 2);
    v17 = *(v16 + 3);
    v11 = (v12 + 1);
    if (v12 < v17 >> 1)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v16 = _swiftEmptyArrayStorage;
  v19 = v35;
  if (!v35)
  {
    goto LABEL_10;
  }

LABEL_5:
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v30 = *(v8 + 72);
    v27[1] = v19;
    v22 = v16;

    v23 = v28;
    do
    {
      sub_100006C44(v21, v10, &qword_100092FA8, &unk_100075380);
      sub_10000FA7C(v10, aBlock);
      sub_100006CAC(v10, &qword_100092FA8, &unk_100075380);
      v25 = v32;
      v24 = v33;
      sub_1000078C8(aBlock, v32);
      (*(v24 + 1))(v23, v22, v25, v24);
      sub_1000036EC(aBlock);
      v21 += v30;
      --v20;
    }

    while (v20);
  }

LABEL_11:
}

uint64_t sub_1000143A4()
{
  v0 = swift_allocObject();
  sub_1000143DC();
  return v0;
}

uint64_t sub_1000143DC()
{
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v13 - 8);
  __chkstk_darwin(v13);
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v12[0] = sub_100004890(0, &qword_100092CC0, OS_dispatch_queue_ptr);
  v14 = "internalStorageMigration";
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  v12[3] = sub_100002254(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v12[2] = sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_10000FA34(&qword_1000931B0, &unk_100092CD0, &unk_100072C60, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v5 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v6 = v0 + 104;
  v7 = *(v0 + 104);
  v12[1] = v6;
  v8 = v13;
  v7(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v15 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v7(v2, v5, v8);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = v15;
  *(v15 + 24) = v9;
  *(v10 + 32) = _swiftEmptyArrayStorage;
  *(v10 + 40) = 0;
  *(v10 + 48) = 0;
  return v10;
}

uint64_t sub_100014798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v21[-v8 - 8];
  sub_10000FA7C(a1, v21);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = sub_10000A45C(&qword_100093178, &qword_100073050);
  Subscription.init(subscriber:unsubscribeBlock:)(v21, sub_100019114, v10, v11, a3);
  sub_100006C44(a3, v9, &qword_100092FA8, &unk_100075380);
  v12 = (*(*a2 + 160))(v21);
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1000177E0(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1000177E0((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  sub_100017D84(v9, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18);
  return v12(v21, 0);
}

uint64_t sub_1000149B8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = v17 - v11;
  v17[1] = *(v1 + 24);
  sub_100006C44(a1, v17 - v11, &qword_100092FA8, &unk_100075380);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_100017D84(v12, v14 + v13);
  aBlock[4] = sub_100017DF4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_100089E78;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

void *sub_100014D3C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_100006C44(a3 + v15 + v16 * v13, v12, &qword_100092FA8, &unk_100075380);
      v17 = a1(v12);
      if (v3)
      {
        sub_100006CAC(v12, &qword_100092FA8, &unk_100075380);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_100017D84(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000179F0(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_1000179F0((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_100017D84(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_100006CAC(v12, &qword_100092FA8, &unk_100075380);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

void (*sub_100015028(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return sub_10000E7CC;
}

BOOL sub_100015134(char a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v13 = NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor();
    swift_beginAccess();
    v14 = *v13;
    v15 = String._bridgeToObjectiveC()();

    v16 = [v14 objectForKey:v15];

LABEL_9:
    v19 = v16 != 0;
    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v55, 0, sizeof(v55));
    }

    v20 = v55;
LABEL_67:
    sub_100006CAC(v20, &qword_100092CB8, &qword_100072C40);
    return v19;
  }

  if (a1 != 1)
  {
    v17 = [objc_opt_self() standardUserDefaults];
    v18 = String._bridgeToObjectiveC()();

    v16 = [v17 valueForKey:v18];

    goto LABEL_9;
  }

  v53 = v6;
  v9 = 0xD00000000000001BLL;
  sub_10000A45C(&unk_100092D10, &unk_100072C00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100072BE0;
  v11 = "oreChanged";
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v21 = "APLogCloudCollectionEnabled";
        v22 = 0xD000000000000025;
      }

      else
      {
        v21 = "tionEnabledExpiration";
        v22 = 0xD00000000000002ELL;
      }
    }

    else
    {
      v22 = 0xD00000000000001BLL;
      v21 = "oreChanged";
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = "intelligenceManagerEnabledOverride";
      goto LABEL_18;
    }

    v21 = "gerEnabledOverride";
    v22 = 0xD000000000000018;
  }

  else
  {
    if (a2 == 3)
    {
      v12 = "cloudPairingManagerEnabledOverride";
LABEL_18:
      v21 = (v12 - 32);
      v22 = 0xD000000000000022;
      goto LABEL_23;
    }

    v21 = "gerEnabledOverride";
    v22 = 0xD00000000000001BLL;
  }

LABEL_23:
  v23 = v21 | 0x8000000000000000;
  v24 = objc_opt_self();
  *(v10 + 32) = v22;
  *(v10 + 40) = v23;
  isa = Array._bridgeToObjectiveC()().super.isa;

  *&v55[0] = 0;
  v26 = [v24 readPrefKeys:isa error:v55];

  v27 = *&v55[0];
  if (v26)
  {
    v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v27;

    if (a2 <= 2u)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v11 = "APLogCloudCollectionEnabled";
          v9 = 0xD000000000000025;
        }

        else
        {
          v11 = "tionEnabledExpiration";
          v9 = 0xD00000000000002ELL;
        }
      }

      goto LABEL_62;
    }

    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v30 = "intelligenceManagerEnabledOverride";
        goto LABEL_58;
      }

      v11 = "gerEnabledOverride";
      v9 = 0xD000000000000018;
    }

    else
    {
      if (a2 == 3)
      {
        v30 = "cloudPairingManagerEnabledOverride";
LABEL_58:
        v11 = (v30 - 32);
        v9 = 0xD000000000000022;
        goto LABEL_62;
      }

      v11 = "gerEnabledOverride";
    }

LABEL_62:
    *&v54[0] = v9;
    *(&v54[0] + 1) = v11 | 0x8000000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v28 + 16) && (v48 = sub_10000C7B0(v55), (v49 & 1) != 0))
    {
      sub_100003690(*(v28 + 56) + 32 * v48, v54);
      sub_10000C7F4(v55);

      v19 = 1;
    }

    else
    {

      sub_10000C7F4(v55);
      v19 = 0;
      memset(v54, 0, sizeof(v54));
    }

    v20 = v54;
    goto LABEL_67;
  }

  v31 = *&v55[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v32 = sub_100039280();
  (*(v5 + 16))(v8, v32, v53);
  swift_errorRetain();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v55[0] = v52;
    v37 = "debugManagerEnabledOverride";
    *v35 = 136315394;
    v38 = 0xD000000000000022;
    v39 = 0xD000000000000018;
    if (a2 == 5)
    {
      v39 = 0xD000000000000022;
    }

    else
    {
      v37 = "gerEnabledOverride";
    }

    v40 = "tionExpirationIntervalOverride";
    if (a2 != 3)
    {
      v38 = 0xD00000000000001BLL;
      v40 = "gerEnabledOverride";
    }

    if (a2 <= 4u)
    {
      v37 = v40;
    }

    else
    {
      v38 = v39;
    }

    v41 = "APLogCloudCollectionEnabled";
    v42 = 0xD000000000000025;
    if (a2 != 1)
    {
      v42 = 0xD00000000000002ELL;
      v41 = "tionEnabledExpiration";
    }

    if (a2)
    {
      v43 = v42;
    }

    else
    {
      v43 = 0xD00000000000001BLL;
    }

    if (!a2)
    {
      v41 = "oreChanged";
    }

    if (a2 <= 2u)
    {
      v44 = v43;
    }

    else
    {
      v44 = v38;
    }

    if (a2 <= 2u)
    {
      v45 = v41;
    }

    else
    {
      v45 = v37;
    }

    v46 = sub_1000034B8(v44, v45 | 0x8000000000000000, v55);

    *(v35 + 4) = v46;
    *(v35 + 12) = 2112;
    swift_errorRetain();
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 14) = v47;
    *v36 = v47;
    _os_log_impl(&_mh_execute_header, v33, v34, "Error reading %s from root defaults: %@", v35, 0x16u);
    sub_100006CAC(v36, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v52);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v53);
  return 0;
}

uint64_t sub_1000159B4@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = a1;
  v6 = 0xD00000000000001BLL;
  v7 = "oreChanged";
  v8 = "debugManagerEnabledOverride";
  v9 = 0xD000000000000022;
  v10 = 0xD000000000000018;
  if (a2 == 5)
  {
    v10 = 0xD000000000000022;
  }

  else
  {
    v8 = "gerEnabledOverride";
  }

  v11 = "tionExpirationIntervalOverride";
  if (a2 != 3)
  {
    v9 = 0xD00000000000001BLL;
    v11 = "gerEnabledOverride";
  }

  if (a2 <= 4u)
  {
    v8 = v11;
  }

  else
  {
    v9 = v10;
  }

  v12 = "APLogCloudCollectionEnabled";
  v13 = 0xD000000000000025;
  if (a2 != 1)
  {
    v13 = 0xD00000000000002ELL;
    v12 = "tionEnabledExpiration";
  }

  if (a2)
  {
    v6 = v13;
    v7 = v12;
  }

  if (a2 <= 2u)
  {
    v14 = v6;
  }

  else
  {
    v14 = v9;
  }

  if (a2 <= 2u)
  {
    v15 = v7;
  }

  else
  {
    v15 = v8;
  }

  sub_100015AAC(v14, v15 | 0x8000000000000000, v5, a3, a4);
}

uint64_t sub_100015AAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = __chkstk_darwin(v14);
  v17 = &v56 - v16;
  v61 = *(a4 - 8);
  v18 = __chkstk_darwin(v15);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (a3 == 1)
    {
      v57 = v19;
      v59 = v11;
      v60 = a5;
      v58 = v18;
      v22 = objc_opt_self();
      sub_10000A45C(&unk_100092D10, &unk_100072C00);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100072BE0;
      *(v23 + 32) = a1;
      *(v23 + 40) = a2;

      isa = Array._bridgeToObjectiveC()().super.isa;

      *&v62[0] = 0;
      v25 = [v22 readPrefKeys:isa error:v62];

      v26 = *&v62[0];
      if (v25)
      {
        v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v26;

        *&v63 = a1;
        *(&v63 + 1) = a2;

        AnyHashable.init<A>(_:)();
        if (*(v27 + 16))
        {
          v29 = sub_10000C7B0(v62);
          v30 = v60;
          v31 = v61;
          if (v32)
          {
            sub_100003690(*(v27 + 56) + 32 * v29, &v63);
            sub_10000C7F4(v62);
          }

          else
          {

            sub_10000C7F4(v62);
            v63 = 0u;
            v64 = 0u;
          }
        }

        else
        {

          sub_10000C7F4(v62);
          v63 = 0u;
          v64 = 0u;
          v30 = v60;
          v31 = v61;
        }

        sub_10000A45C(&qword_100092CB8, &qword_100072C40);
        v51 = swift_dynamicCast();
        v52 = *(v31 + 56);
        if (v51)
        {
          v52(v17, 0, 1, a4);
          v53 = *(v31 + 32);
          v53(v21, v17, a4);
          v53(v30, v21, a4);
          v54 = v30;
          v55 = 0;
        }

        else
        {
          v52(v17, 1, 1, a4);
          (*(v57 + 8))(v17, v58);
          v54 = v30;
          v55 = 1;
        }

        return (v52)(v54, v55, 1, a4);
      }

      else
      {
        v41 = *&v62[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v42 = sub_100039280();
        v43 = v59;
        (*(v59 + 16))(v13, v42, v10);

        swift_errorRetain();
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *&v62[0] = v58;
          *v46 = 136315394;
          *(v46 + 4) = sub_1000034B8(a1, a2, v62);
          *(v46 + 12) = 2080;
          swift_getErrorValue();
          v47 = Error.localizedDescription.getter();
          v49 = v43;
          v50 = sub_1000034B8(v47, v48, v62);

          *(v46 + 14) = v50;
          _os_log_impl(&_mh_execute_header, v44, v45, "Unable to get value for key: %s due to: %s", v46, 0x16u);
          swift_arrayDestroy();

          (*(v49 + 8))(v13, v10);
        }

        else
        {

          (*(v43 + 8))(v13, v10);
        }

        return (*(v61 + 56))(v60, 1, 1, a4);
      }
    }

    v34 = [objc_opt_self() standardUserDefaults];
    v35 = String._bridgeToObjectiveC()();
    v36 = [v34 valueForKey:v35];
  }

  else
  {
    v33 = NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor();
    swift_beginAccess();
    v34 = *v33;
    v35 = String._bridgeToObjectiveC()();
    v36 = [v34 objectForKey:v35];
  }

  v37 = v36;

  if (v37)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000C848(&v63, v62);
  }

  else
  {
    memset(v62, 0, 32);
  }

  v38 = v61;
  sub_10000A45C(&qword_100092CB8, &qword_100072C40);
  v39 = swift_dynamicCast();
  return (*(v38 + 56))(a5, v39 ^ 1u, 1, a4);
}

unint64_t sub_100016230(char a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      v51 = v6;
      v9 = 0xD00000000000001BLL;
      sub_10000A45C(&unk_100092D10, &unk_100072C00);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100072BE0;
      v11 = "oreChanged";
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v19 = "APLogCloudCollectionEnabled";
            v20 = 0xD000000000000025;
          }

          else
          {
            v19 = "tionEnabledExpiration";
            v20 = 0xD00000000000002ELL;
          }
        }

        else
        {
          v20 = 0xD00000000000001BLL;
          v19 = "oreChanged";
        }
      }

      else if (a2 > 4u)
      {
        if (a2 == 5)
        {
          v12 = "intelligenceManagerEnabledOverride";
          goto LABEL_14;
        }

        v19 = "gerEnabledOverride";
        v20 = 0xD000000000000018;
      }

      else
      {
        if (a2 == 3)
        {
          v12 = "cloudPairingManagerEnabledOverride";
LABEL_14:
          v19 = (v12 - 32);
          v20 = 0xD000000000000022;
          goto LABEL_19;
        }

        v19 = "gerEnabledOverride";
        v20 = 0xD00000000000001BLL;
      }

LABEL_19:
      v21 = v19 | 0x8000000000000000;
      v22 = objc_opt_self();
      *(v10 + 32) = v20;
      *(v10 + 40) = v21;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v54[0] = 0;
      v24 = [v22 readPrefKeys:isa error:v54];

      v25 = v54[0];
      if (!v24)
      {
        v29 = v54[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v30 = sub_100039280();
        (*(v5 + 16))(v8, v30, v51);
        swift_errorRetain();
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v54[0] = v50;
          v34 = "debugManagerEnabledOverride";
          *v33 = 136315394;
          v35 = 0xD000000000000022;
          v36 = 0xD000000000000018;
          if (a2 == 5)
          {
            v36 = 0xD000000000000022;
          }

          else
          {
            v34 = "gerEnabledOverride";
          }

          v37 = "tionExpirationIntervalOverride";
          if (a2 != 3)
          {
            v35 = 0xD00000000000001BLL;
            v37 = "gerEnabledOverride";
          }

          if (a2 <= 4u)
          {
            v34 = v37;
          }

          else
          {
            v35 = v36;
          }

          v38 = "APLogCloudCollectionEnabled";
          v39 = 0xD000000000000025;
          if (a2 != 1)
          {
            v39 = 0xD00000000000002ELL;
            v38 = "tionEnabledExpiration";
          }

          if (a2)
          {
            v40 = v39;
          }

          else
          {
            v40 = 0xD00000000000001BLL;
          }

          if (!a2)
          {
            v38 = "oreChanged";
          }

          if (a2 <= 2u)
          {
            v41 = v40;
          }

          else
          {
            v41 = v35;
          }

          if (a2 <= 2u)
          {
            v42 = v38;
          }

          else
          {
            v42 = v34;
          }

          v43 = sub_1000034B8(v41, v42 | 0x8000000000000000, v54);

          *(v33 + 4) = v43;
          *(v33 + 12) = 2080;
          swift_getErrorValue();
          v44 = Error.localizedDescription.getter();
          v46 = sub_1000034B8(v44, v45, v54);

          *(v33 + 14) = v46;
          _os_log_impl(&_mh_execute_header, v31, v32, "Unable to get BOOL for key: %s due to: %s", v33, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v5 + 8))(v8, v51);
        return 0;
      }

      v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v25;

      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v11 = "APLogCloudCollectionEnabled";
            v9 = 0xD000000000000025;
          }

          else
          {
            v11 = "tionEnabledExpiration";
            v9 = 0xD00000000000002ELL;
          }
        }
      }

      else
      {
        if (a2 > 4u)
        {
          if (a2 != 5)
          {
            v11 = "gerEnabledOverride";
            v9 = 0xD000000000000018;
            goto LABEL_58;
          }

          v28 = "intelligenceManagerEnabledOverride";
        }

        else
        {
          if (a2 != 3)
          {
            v11 = "gerEnabledOverride";
            goto LABEL_58;
          }

          v28 = "cloudPairingManagerEnabledOverride";
        }

        v11 = (v28 - 32);
        v9 = 0xD000000000000022;
      }

LABEL_58:
      v52 = v9;
      v53 = v11 | 0x8000000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v26 + 16) && (v47 = sub_10000C7B0(v54), (v48 & 1) != 0))
      {
        sub_100003690(*(v26 + 56) + 32 * v47, v55);
        sub_10000C7F4(v54);

        if (swift_dynamicCast())
        {
          return v52;
        }
      }

      else
      {

        sub_10000C7F4(v54);
      }

      return 0;
    }

    v17 = [objc_opt_self() standardUserDefaults];
    v18 = String._bridgeToObjectiveC()();

    v16 = [v17 BOOLForKey:v18];
  }

  else
  {
    v13 = NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor();
    swift_beginAccess();
    v14 = *v13;
    v15 = String._bridgeToObjectiveC()();

    v16 = [v14 BOOLForKey:v15];
  }

  return v16;
}

void sub_100016A58(char a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v13 = NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor();
    swift_beginAccess();
    v14 = *v13;
    v15 = String._bridgeToObjectiveC()();

    [v14 doubleForKey:v15];

    return;
  }

  if (a1 != 1)
  {
    v16 = [objc_opt_self() standardUserDefaults];
    v17 = String._bridgeToObjectiveC()();

    [v16 doubleForKey:v17];

    return;
  }

  v49 = v6;
  v9 = 0xD00000000000001BLL;
  sub_10000A45C(&unk_100092D10, &unk_100072C00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100072BE0;
  v11 = "oreChanged";
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v18 = "APLogCloudCollectionEnabled";
        v19 = 0xD000000000000025;
      }

      else
      {
        v18 = "tionEnabledExpiration";
        v19 = 0xD00000000000002ELL;
      }
    }

    else
    {
      v19 = 0xD00000000000001BLL;
      v18 = "oreChanged";
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = "intelligenceManagerEnabledOverride";
      goto LABEL_14;
    }

    v18 = "gerEnabledOverride";
    v19 = 0xD000000000000018;
  }

  else
  {
    if (a2 == 3)
    {
      v12 = "cloudPairingManagerEnabledOverride";
LABEL_14:
      v18 = (v12 - 32);
      v19 = 0xD000000000000022;
      goto LABEL_19;
    }

    v18 = "gerEnabledOverride";
    v19 = 0xD00000000000001BLL;
  }

LABEL_19:
  v20 = v18 | 0x8000000000000000;
  v21 = objc_opt_self();
  *(v10 + 32) = v19;
  *(v10 + 40) = v20;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v52[0] = 0;
  v23 = [v21 readPrefKeys:isa error:v52];

  v24 = v52[0];
  if (v23)
  {
    v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v24;

    if (a2 <= 2u)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v11 = "APLogCloudCollectionEnabled";
          v9 = 0xD000000000000025;
        }

        else
        {
          v11 = "tionEnabledExpiration";
          v9 = 0xD00000000000002ELL;
        }
      }

      goto LABEL_58;
    }

    if (a2 > 4u)
    {
      if (a2 != 5)
      {
        v11 = "gerEnabledOverride";
        v9 = 0xD000000000000018;
        goto LABEL_58;
      }

      v27 = "intelligenceManagerEnabledOverride";
    }

    else
    {
      if (a2 != 3)
      {
        v11 = "gerEnabledOverride";
        goto LABEL_58;
      }

      v27 = "cloudPairingManagerEnabledOverride";
    }

    v11 = (v27 - 32);
    v9 = 0xD000000000000022;
LABEL_58:
    v50 = v9;
    v51 = v11 | 0x8000000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v25 + 16) && (v46 = sub_10000C7B0(v52), (v47 & 1) != 0))
    {
      sub_100003690(*(v25 + 56) + 32 * v46, v53);
      sub_10000C7F4(v52);

      swift_dynamicCast();
    }

    else
    {

      sub_10000C7F4(v52);
    }

    return;
  }

  v28 = v52[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v29 = sub_100039280();
  (*(v5 + 16))(v8, v29, v49);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52[0] = v48;
    v33 = "debugManagerEnabledOverride";
    *v32 = 136315394;
    v34 = 0xD000000000000022;
    v35 = 0xD000000000000018;
    if (a2 == 5)
    {
      v35 = 0xD000000000000022;
    }

    else
    {
      v33 = "gerEnabledOverride";
    }

    v36 = "tionExpirationIntervalOverride";
    if (a2 != 3)
    {
      v34 = 0xD00000000000001BLL;
      v36 = "gerEnabledOverride";
    }

    if (a2 <= 4u)
    {
      v33 = v36;
    }

    else
    {
      v34 = v35;
    }

    v37 = "APLogCloudCollectionEnabled";
    v38 = 0xD000000000000025;
    if (a2 != 1)
    {
      v38 = 0xD00000000000002ELL;
      v37 = "tionEnabledExpiration";
    }

    if (a2)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0xD00000000000001BLL;
    }

    if (!a2)
    {
      v37 = "oreChanged";
    }

    if (a2 <= 2u)
    {
      v40 = v39;
    }

    else
    {
      v40 = v34;
    }

    if (a2 <= 2u)
    {
      v41 = v37;
    }

    else
    {
      v41 = v33;
    }

    v42 = sub_1000034B8(v40, v41 | 0x8000000000000000, v52);

    *(v32 + 4) = v42;
    *(v32 + 12) = 2080;
    swift_getErrorValue();
    v43 = Error.localizedDescription.getter();
    v45 = sub_1000034B8(v43, v44, v52);

    *(v32 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v30, v31, "Unable to get double for key: %s due to: %s", v32, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v5 + 8))(v8, v49);
}

uint64_t sub_1000172A4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = 0xD00000000000001BLL;
  v4 = "oreChanged";
  v5 = "debugManagerEnabledOverride";
  v6 = 0xD000000000000022;
  v7 = 0xD000000000000018;
  if (a3 == 5)
  {
    v7 = 0xD000000000000022;
  }

  else
  {
    v5 = "gerEnabledOverride";
  }

  v8 = "tionExpirationIntervalOverride";
  if (a3 != 3)
  {
    v6 = 0xD00000000000001BLL;
    v8 = "gerEnabledOverride";
  }

  if (a3 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v6 = v7;
  }

  v9 = "APLogCloudCollectionEnabled";
  v10 = 0xD000000000000025;
  if (a3 != 1)
  {
    v10 = 0xD00000000000002ELL;
    v9 = "tionEnabledExpiration";
  }

  if (a3)
  {
    v3 = v10;
    v4 = v9;
  }

  if (a3 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (a3 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v15 = (a1 + 32);
    do
    {
      v16 = *v15++;
      sub_10001801C(v16, v11, v12 | 0x8000000000000000, a2);
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1000173CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = 0xD00000000000001BLL;
  v5 = "oreChanged";
  v6 = "debugManagerEnabledOverride";
  v7 = 0xD000000000000022;
  v8 = 0xD000000000000018;
  if (a3 == 5)
  {
    v8 = 0xD000000000000022;
  }

  else
  {
    v6 = "gerEnabledOverride";
  }

  v9 = "tionExpirationIntervalOverride";
  if (a3 != 3)
  {
    v7 = 0xD00000000000001BLL;
    v9 = "gerEnabledOverride";
  }

  if (a3 <= 4u)
  {
    v6 = v9;
  }

  else
  {
    v7 = v8;
  }

  v10 = "APLogCloudCollectionEnabled";
  v11 = 0xD000000000000025;
  if (a3 != 1)
  {
    v11 = 0xD00000000000002ELL;
    v10 = "tionEnabledExpiration";
  }

  if (a3)
  {
    v4 = v11;
    v5 = v10;
  }

  if (a3 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v7;
  }

  if (a3 <= 2u)
  {
    v13 = v5;
  }

  else
  {
    v13 = v6;
  }

  sub_10001801C(a1, v12, v13 | 0x8000000000000000, a2);
}

uint64_t sub_1000174D8(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1000175D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100018B1C(*a1);
  *a2 = result;
  return result;
}

void sub_100017600(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001BLL;
  v3 = *v1;
  v4 = "oreChanged";
  v5 = "debugManagerEnabledOverride";
  v6 = 0xD000000000000022;
  v7 = 0xD000000000000018;
  if (v3 == 5)
  {
    v7 = 0xD000000000000022;
  }

  else
  {
    v5 = "gerEnabledOverride";
  }

  v8 = "tionExpirationIntervalOverride";
  if (v3 != 3)
  {
    v6 = 0xD00000000000001BLL;
    v8 = "gerEnabledOverride";
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v6 = v7;
  }

  v9 = "APLogCloudCollectionEnabled";
  v10 = 0xD000000000000025;
  if (v3 != 1)
  {
    v10 = 0xD00000000000002ELL;
    v9 = "tionEnabledExpiration";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 > 2u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

char *sub_1000176D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A45C(&unk_100092D10, &unk_100072C00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000177E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_100093168, &qword_100073048);
  v10 = *(sub_10000A45C(&qword_100092FA8, &unk_100075380) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A45C(&qword_100092FA8, &unk_100075380) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000179D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100017A10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000179F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100017B1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100017A10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A45C(&unk_100092D10, &unk_100072C00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100017B1C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_100093168, &qword_100073048);
  v10 = *(sub_10000A45C(&qword_100092FA8, &unk_100075380) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A45C(&qword_100092FA8, &unk_100075380) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100017D0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100089CD0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100017D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017DF4()
{
  v1 = *(sub_10000A45C(&qword_100092FA8, &unk_100075380) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = (*(*v2 + 144))();
  v7[2] = v3;
  v5 = sub_100014D3C(sub_100019070, v7, v4);
  return (*(*v2 + 152))(v5);
}

unint64_t sub_100017EE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A45C(&qword_100093B00, &qword_100074FA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006C44(v4, v13, &qword_100093160, &qword_100073040);
      result = sub_10000C7B0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000C848(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10001801C(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v75 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v70 - v12;
  if (a1)
  {
    if (a1 == 1)
    {
      v14 = String._bridgeToObjectiveC()();
      sub_100006C44(a4, &v77, &qword_100092CB8, &qword_100072C40);
      if (v78)
      {
        sub_10000C848(&v77, &v79);
      }

      else
      {
        v35 = [objc_allocWithZone(NSNull) init];
        v80 = sub_100004890(0, &qword_100093158, NSNull_ptr);
        *&v79 = v35;
        if (v78)
        {
          sub_100006CAC(&v77, &qword_100092CB8, &qword_100072C40);
        }
      }

      v36 = objc_opt_self();
      sub_1000078C8(&v79, v80);
      v37 = _bridgeAnythingToObjectiveC<A>(_:)();
      sub_1000036EC(&v79);
      *&v79 = 0;
      LOBYTE(v36) = [v36 writePrefKey:v14 value:v37 error:&v79];

      swift_unknownObjectRelease();
      if (v36)
      {
        v38 = v79;
        notify_post("com.apple.bluetooth.prefsChanged");
      }

      else
      {
        v39 = v79;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v40 = sub_100039280();
        (*(v8 + 16))(v11, v40, v7);

        swift_errorRetain();
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = v8;
          v44 = swift_slowAlloc();
          *&v79 = swift_slowAlloc();
          *v44 = 136315394;
          *(v44 + 4) = sub_1000034B8(a2, v75, &v79);
          *(v44 + 12) = 2080;
          swift_getErrorValue();
          v45 = Error.localizedDescription.getter();
          v47 = sub_1000034B8(v45, v46, &v79);

          *(v44 + 14) = v47;
          _os_log_impl(&_mh_execute_header, v41, v42, "Unable to get value for key: %s due to: %s", v44, 0x16u);
          swift_arrayDestroy();

          (*(v43 + 8))(v11, v7);
        }

        else
        {

          (*(v8 + 8))(v11, v7);
        }
      }
    }

    else
    {
      v27 = objc_opt_self();
      v28 = [v27 standardUserDefaults];
      sub_100006C44(a4, &v79, &qword_100092CB8, &qword_100072C40);
      v29 = v80;
      if (v80)
      {
        v30 = sub_1000078C8(&v79, v80);
        v31 = *(v29 - 8);
        __chkstk_darwin(v30);
        v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v31 + 16))(v33);
        v34 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v31 + 8))(v33, v29);
        sub_1000036EC(&v79);
      }

      else
      {
        v34 = 0;
      }

      v68 = String._bridgeToObjectiveC()();
      [v28 setValue:v34 forKey:v68];

      swift_unknownObjectRelease();
      v69 = [v27 standardUserDefaults];
      [v69 synchronize];
    }
  }

  else
  {
    *&v74 = v8;
    v15 = NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor();
    swift_beginAccess();
    v73 = v15;
    v16 = *v15;
    sub_100006C44(a4, &v79, &qword_100092CB8, &qword_100072C40);
    v17 = v80;
    if (v80)
    {
      v18 = sub_1000078C8(&v79, v80);
      v19 = *(v17 - 8);
      __chkstk_darwin(v18);
      v21 = v7;
      v22 = a2;
      v23 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v23);
      v24 = v16;
      v25 = _bridgeAnythingToObjectiveC<A>(_:)();
      v26 = v23;
      a2 = v22;
      v7 = v21;
      (*(v19 + 8))(v26, v17);
      sub_1000036EC(&v79);
    }

    else
    {
      v48 = v16;
      v25 = 0;
    }

    v49 = String._bridgeToObjectiveC()();
    [v16 setObject:v25 forKey:v49];

    swift_unknownObjectRelease();
    v50 = sub_100039280();
    v51 = v74;
    (*(v74 + 16))(v13, v50, v7);
    sub_100006C44(a4, &v79, &qword_100092CB8, &qword_100072C40);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v76 = v72;
      *v54 = 136315650;
      *(v54 + 4) = sub_1000034B8(a2, v75, &v76);
      *(v54 + 12) = 2080;
      sub_100006C44(&v79, &v77, &qword_100092CB8, &qword_100072C40);
      sub_10000A45C(&qword_100092CB8, &qword_100072C40);
      v55 = String.init<A>(describing:)();
      v71 = v7;
      v56 = v55;
      v58 = v57;
      sub_100006CAC(&v79, &qword_100092CB8, &qword_100072C40);
      v59 = sub_1000034B8(v56, v58, &v76);

      *(v54 + 14) = v59;
      *(v54 + 22) = 1024;
      v60 = v73;
      swift_beginAccess();
      *(v54 + 24) = [*v60 synchronize];
      _os_log_impl(&_mh_execute_header, v52, v53, "Cloud defaults update %s: %s, synchronized: %{BOOL}d", v54, 0x1Cu);
      swift_arrayDestroy();

      (*(v51 + 8))(v13, v71);
    }

    else
    {

      sub_100006CAC(&v79, &qword_100092CB8, &qword_100072C40);
      (*(v51 + 8))(v13, v7);
    }

    v61 = [objc_opt_self() defaultCenter];
    v62 = String._bridgeToObjectiveC()();
    sub_10000A45C(&unk_100093A50, &unk_100073030);
    inited = swift_initStackObject();
    v74 = xmmword_100072BE0;
    *(inited + 16) = xmmword_100072BE0;
    *&v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v79 + 1) = v64;
    AnyHashable.init<A>(_:)();
    sub_10000A45C(&unk_100092D10, &unk_100072C00);
    v65 = swift_allocObject();
    *(v65 + 16) = v74;
    v66 = v75;
    *(v65 + 32) = a2;
    *(v65 + 40) = v66;
    *(inited + 96) = sub_10000A45C(&qword_100094180, &qword_100074290);
    *(inited + 72) = v65;

    sub_100017EE0(inited);
    swift_setDeallocating();
    sub_100006CAC(inited + 32, &qword_100093160, &qword_100073040);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v61 postNotificationName:v62 object:0 userInfo:isa];
  }
}