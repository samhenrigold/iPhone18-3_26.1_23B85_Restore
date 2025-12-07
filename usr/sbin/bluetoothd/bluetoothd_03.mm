const char *sub_10002F16C(int a1)
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

const char *sub_10002FC04(int a1)
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

const char *sub_10003069C(int a1)
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

uint64_t sub_100032658(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100498738;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E488 != -1)
  {
    dispatch_once(&qword_100B6E488, block);
  }

  return byte_100B6E480;
}

void sub_1000326E8(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = &off_100AE0A78;
  v3 = *(a2 + 40);
  if (v3)
  {
    sub_10000C808(v3);
  }

  *(a2 + 16) = &off_100AE0A78;
  v4 = *(a2 + 24);
  if (v4)
  {
    sub_10000C808(v4);
  }

  v5 = *a2;
}

void sub_100032784(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, void *a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, int a19)
{
  v20 = a3;
  v21 = a2;
  sub_10003B304(v34, v21, v20, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, SHIBYTE(a13), a14, a15, a16, a17, a18, SHIDWORD(a18), a19);
  v22 = *(a1 + 96);
  if (v22 >= *(a1 + 104))
  {
    v23 = sub_10006CAFC((a1 + 88), v34);
  }

  else
  {
    sub_100032A04(a1 + 88, *(a1 + 96), v34);
    v23 = v22 + 96;
    *(a1 + 96) = v22 + 96;
  }

  *(a1 + 96) = v23;

  v36 = &off_100AE0A78;
  if (v37)
  {
    sub_10000C808(v37);
  }

  v34[2] = &off_100AE0A78;
  if (v35)
  {
    sub_10000C808(v35);
  }

  v24 = *(a1 + 176);
  v25 = [NSMutableSet setWithSet:v24];

  [v25 addObject:v21];
  v26 = *(a1 + 176);
  *(a1 + 176) = v25;

  if (a9 == 1)
  {
    v27 = v20 >> 6;
    v28 = 1 << v20;
    *(a1 + 8 * v27 + 248) |= 1 << v20;
  }

  else
  {
    *(a1 + 312) = 1;
    v27 = v20 >> 6;
    v28 = 1 << v20;
  }

  *(a1 + 8 * v27 + 280) |= v28;
}

void sub_1000329C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_100138984(va);

  _Unwind_Resume(a1);
}

void sub_100032A04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  *a2 = v5;
  *(a2 + 8) = *(a3 + 4);
  v6 = a3[3];
  *(a2 + 16) = &off_100AE0A78;
  *(a2 + 24) = v6;
  if (v6)
  {
    sub_10000C69C(v6);
  }

  v7 = a3[5];
  *(a2 + 32) = &off_100AE0A78;
  *(a2 + 40) = v7;
  if (v7)
  {
    sub_10000C69C(v7);
  }

  v8 = *(a3 + 12);
  *(a2 + 52) = *(a3 + 52);
  *(a2 + 48) = v8;
  v9 = a3[7];
  a3[7] = 0;
  *(a2 + 56) = v9;
  LODWORD(v9) = *(a3 + 16);
  *(a2 + 68) = *(a3 + 68);
  *(a2 + 64) = v9;
  v10 = a3[9];
  a3[9] = 0;
  *(a2 + 72) = v10;
  v11 = a3[10];
  *(a2 + 88) = *(a3 + 22);
  *(a2 + 80) = v11;
}

void sub_100032AE8(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  v4 = *(v1 + 24);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100032B20(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A12BC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E770 != -1)
  {
    dispatch_once(&qword_100B6E770, block);
  }

  return byte_100B6E768;
}

void sub_100032BB0(uint64_t result)
{
  if ((byte_100B6E798 & 1) == 0)
  {
    v2 = *(result + 32);
    byte_100B6E798 = 1;
    if (qword_100B50910 != -1)
    {
      sub_10083161C();
    }

    sub_1005BB5D4(off_100B50908, v2 + 1352);
    if (qword_100B50AA0 != -1)
    {
      sub_100831630();
    }

    v3 = off_100B50A98 + 64;

    sub_100312650(v3, v2 + 1360);
  }
}

uint64_t sub_100032C48(uint64_t a1, unsigned __int8 *a2)
{
  if (sub_10003663C(a1))
  {
    v350 = 1;
  }

  else
  {
    v350 = sub_1000365D8(a1);
  }

  v388 = a1;
  v8 = sub_1000365D8(a1);
  v358 = v8;
  v10 = sub_10000C798(v8, v9);
  v11 = (*(*v10 + 656))(v10);
  v348 = v11;
  v13 = *sub_10000C798(v11, v12);
  v14 = (*(v13 + 688))();
  v347 = v14;
  v16 = *sub_10000C798(v14, v15);
  v17 = (*(v16 + 872))();
  v363 = v17;
  v19 = *sub_10000C7D0(v17, v18);
  v20 = (*(v19 + 3184))();
  v344 = v20;
  v22 = *sub_10000C798(v20, v21);
  v357 = (*(v22 + 1024))();
  v386 = +[NSMutableDictionary dictionary];
  v23 = a2;
  *a2 = 0;
  a2[2] = 0;
  *(a2 + 4) = 0;
  *(a2 + 10) = 0;
  v341 = a2 + 10;
  *(a2 + 17) = 0;
  a2[16] = 1;
  *(a2 + 7) = 0;
  a2[25] = 0;
  if (qword_100B50910 != -1)
  {
    sub_100874380();
    v23 = a2;
  }

  v24 = a1;
  v25 = sub_10003C714(off_100B50908, 0, 1u);
  if (v25)
  {
    v26 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "coexStateBitmap:0x%llX", buf, 0xCu);
    }
  }

  v394 = 0;
  v27 = sub_100017E6C();
  if ((*(*v27 + 128))(v27, &v394))
  {
    v28 = 1;
  }

  else
  {
    v28 = v394 == 0;
  }

  v29 = !v28;
  v339 = v29;
  v387 = +[NSMutableArray array];
  v30 = *(v388 + 2064);
  v31 = &xpc_dictionary_set_uint64_ptr;
  if (v30 != (v388 + 2072))
  {
    v345 = 0;
    v364 = 0;
    v366 = 0;
    v346 = 0;
    v351 = 0;
    v353 = 0;
    v342 = 0;
    v343 = 0;
    v340 = 0;
    v338 = 0;
    v349 = 0;
    v377 = 0;
    v379 = 0;
    v355 = 0;
    v361 = 0;
    v376 = 0;
    v384 = 0;
    v32 = 3;
    v372 = 1;
    v2 = 0.0;
    v359 = 4;
    WORD1(v3) = 17521;
    LODWORD(v4) = 30.0;
    v5 = 0.625;
    v33 = 0.0;
    v34 = 0.0;
    v362 = 3;
    while (1)
    {
      v35 = *(*(v30[5] + 8) + 192);
      v397 = 0;
      memset(v396, 0, sizeof(v396));
      memset(buf, 0, sizeof(buf));
      sub_10000CBF0(buf, (*(v30[5] + 8) + 320));
      v36 = +[NSMutableDictionary dictionary];
      v37 = [NSNumber numberWithBool:*(*(v30[5] + 8) + 3)];
      [v36 setObject:v37 forKeyedSubscript:@"isAllowedInScreenOff"];

      v38 = [NSNumber numberWithBool:sub_10003C8E8(v30[5])];
      [v36 setObject:v38 forKeyedSubscript:@"allowDupes"];

      v39 = [NSNumber numberWithUnsignedInt:0];
      [v36 setObject:v39 forKeyedSubscript:@"window"];

      v40 = [NSNumber numberWithUnsignedInt:0];
      [v36 setObject:v40 forKeyedSubscript:@"interval"];

      v41 = [NSNumber numberWithBool:0];
      [v36 setObject:v41 forKeyedSubscript:@"active"];

      v42 = [NSNumber numberWithBool:sub_10003A26C(v30[5])];
      [v36 setObject:v42 forKeyedSubscript:@"requiresActiveScan"];

      v43 = [NSNumber numberWithBool:*(v30[5] + 81) == 32];
      [v36 setObject:v43 forKeyedSubscript:@"daemon"];

      v44 = [NSNumber numberWithBool:*(v30[5] + 81) == 16];
      [v36 setObject:v44 forKeyedSubscript:@"ForegroundApp"];

      v45 = [NSNumber numberWithBool:sub_100028FB4(v30[5])];
      [v36 setObject:v45 forKeyedSubscript:@"isAnyHWObjectDiscoveryEnabled"];

      v46 = [NSNumber numberWithDouble:v34];
      [v36 setObject:v46 forKeyedSubscript:@"HWADVBufferWindowMs"];

      v47 = [NSNumber numberWithDouble:v33];
      [v36 setObject:v47 forKeyedSubscript:@"HWADVBufferIntervalMs"];

      v48 = [NSNumber numberWithBool:sub_10003BC78(v30[5])];
      [v36 setObject:v48 forKeyedSubscript:@"isRangeScan"];

      v49 = [NSNumber numberWithBool:sub_10003BC84(v30[5])];
      [v36 setObject:v49 forKeyedSubscript:@"isPriorityCritical"];

      v50 = [NSNumber numberWithBool:*(*(v30[5] + 8) + 171)];
      [v36 setObject:v50 forKeyedSubscript:@"holdPowerAssert"];

      v51 = [NSNumber numberWithBool:*(*(v30[5] + 8) + 172)];
      [v36 setObject:v51 forKeyedSubscript:@"isContactTracing"];

      v52 = [NSNumber numberWithUnsignedInt:*(v30[5] + 208)];
      [v36 setObject:v52 forKeyedSubscript:@"scanAgentType"];

      v53 = [NSNumber numberWithInt:*(v30[5] + 96)];
      [v36 setObject:v53 forKeyedSubscript:@"agentScanLevel"];

      v54 = [v31[477] stringWithUTF8String:sub_10002F16C(v35)];
      [v36 setObject:v54 forKeyedSubscript:@"usecase"];

      if (buf[8] == 1)
      {
        v55 = v31[477];
        sub_10003BC90(buf);
        v56 = v418[9] >= 0 ? v417 : *v417;
        v57 = [v55 stringWithUTF8String:v56];
        [v36 setObject:v57 forKeyedSubscript:@"usecaseParams"];

        if ((v418[9] & 0x80000000) != 0)
        {
          operator delete(*v417);
        }
      }

      v58 = v31[477];
      sub_100018384(v30[4], v417);
      if (v418[9] >= 0)
      {
        v59 = v417;
      }

      else
      {
        v59 = *v417;
      }

      v60 = [v58 stringWithUTF8String:v59];
      [v386 setObject:v36 forKeyedSubscript:v60];

      if ((v418[9] & 0x80000000) != 0)
      {
        operator delete(*v417);
      }

      if ((sub_1000178BC(v30[5]) & 1) == 0)
      {
        goto LABEL_200;
      }

      ++v384;
      v61 = v30[5];
      if ((*(*(v61 + 8) + 3) & 1) == 0 && *(v388 + 1988) == 2)
      {
        goto LABEL_200;
      }

      v62 = sub_100028FB4(v61);
      v63 = v30[5];
      v64 = *(v63 + 8);
      if (v62)
      {
        v65 = *(v64 + 144);
        if (v65 == 1)
        {
          v67 = *(v64 + 152);
          v66 = *(v64 + 156);
          v374 = *(v64 + 160);
        }

        else
        {
          v374 = 0;
          v66 = 0;
          v67 = 0;
        }

        v73 = v33;
        if (v73 < v67)
        {
          v73 = v67;
        }

        v33 = v73;
        v74 = v34;
        if (v74 < v66)
        {
          v74 = v66;
        }

        v34 = v74;
        v75 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v30[4], v415);
          v76 = v415;
          if (v416 < 0)
          {
            v76 = *v415;
          }

          *v417 = 136447746;
          *&v417[4] = v76;
          *&v417[12] = 2048;
          *v418 = v33;
          *&v418[8] = 2048;
          *v419 = v34;
          *&v419[8] = 1024;
          *v420 = v67;
          *&v420[4] = 1024;
          v421 = v66;
          v422 = 1024;
          v423 = v374;
          v424 = 1024;
          v425 = v65;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery Client (%{public}s) HWADVBufferIntervalMs:%f HWADVBufferWindowMs:%f _interval:%d _window:%d _active:%d specifiedParams:%d", v417, 0x38u);
          if (v416 < 0)
          {
            operator delete(*v415);
          }

          v63 = v30[5];
          v64 = *(v63 + 8);
        }

        if (*(v64 + 16) == *(v64 + 8))
        {
          v77 = 0;
          v78 = 0;
          v358 = 0;
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v358 = 0;
          v364 |= sub_10003C8E8(v63);
        }

        goto LABEL_143;
      }

      if (*(v64 + 172) == 1)
      {
        if (*(v388 + 1255) == 1)
        {
          v68 = v33;
          if (v68 < 965.62)
          {
            v68 = 965.62;
          }

          v33 = v68;
          v69 = v34;
          if (v69 < 30.0)
          {
            v69 = 30.0;
          }

          v34 = v69;
          v70 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(v30[4], v415);
            v71 = v415;
            if (v416 < 0)
            {
              v71 = *v415;
            }

            *v417 = 136446722;
            *&v417[4] = v71;
            *&v417[12] = 2048;
            *v418 = v33;
            *&v418[8] = 2048;
            *v419 = v34;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "EN Client (%{public}s) HWADVBufferIntervalMs:%f HWADVBufferWindowMs:%f", v417, 0x20u);
            if (v416 < 0)
            {
              v72 = *v415;
              goto LABEL_77;
            }
          }
        }

        else
        {
          v86 = *(v63 + 96);
          if (v359 >= v86)
          {
            v87 = v86;
          }

          else
          {
            v87 = v359;
          }

          v359 = v87;
          v364 |= sub_10003C8E8(v63);
          v88 = qword_100BCEA38;
          if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(v30[4], v417);
            v89 = v418[9] >= 0 ? v417 : *v417;
            *v415 = 136446210;
            *&v415[4] = v89;
            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "EN Client (%{public}s) ", v415, 0xCu);
            if ((v418[9] & 0x80000000) != 0)
            {
              v72 = *v417;
LABEL_77:
              operator delete(v72);
            }
          }
        }

        v374 = 0;
        v77 = 0;
        v78 = 0;
        goto LABEL_143;
      }

      v79 = *(v64 + 192);
      if (v79 != 265)
      {
        v80 = *(v63 + 81);
        if (v80 != 32 && v80 != 16)
        {
          v374 = 0;
          v77 = 0;
          v78 = 0;
          v82 = v388;
          goto LABEL_141;
        }
      }

      v82 = v388;
      if ((sub_10003C8E8(v30[5]) & 1) != 0 || sub_10000D124((*(v30[5] + 8) + 248), 0, 0x100uLL))
      {
LABEL_63:
        v83 = 1;
      }

      else
      {
        v105 = *(v30[5] + 8);
        v106 = *(v105 + 120);
        v107 = *(v105 + 128);
        while (v106 != v107)
        {
          if (*(v106 + 104) == 1 && *(v106 + 73))
          {
            goto LABEL_63;
          }

          v106 += 112;
        }

        v83 = 0;
      }

      v346 |= v83;
      v84 = v30[5];
      if (v79 == 265)
      {
        v85 = sub_10003C8E8(v84);
        v364 |= v85;
        v63 = v30[5];
        if (*(v63 + 81) != 32)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v90 = *(v84 + 8);
        if (v90[2] == v90[1] && v90[11] != v90[12] && (v108 = sub_10000C798(v84, v81), v109 = (*(*v108 + 632))(v108), v84 = v30[5], (v109 & 1) != 0))
        {
          if (sub_10003C8E8(v84) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            sub_100877224(&v392, v393);
            v82 = v388;
          }
        }

        else
        {
          if (sub_10003C8E8(v84))
          {
            v91 = *(v30[5] + 224);
          }

          else
          {
            v91 = 0;
          }

          v364 = v91 | v364 & 1;
        }

        v63 = v30[5];
        if (*(v63 + 81) != 32)
        {
LABEL_112:
          v374 = 0;
          v77 = 0;
          v78 = 0;
          v103 = *(v63 + 96);
          if (v359 >= v103)
          {
            v104 = v103;
          }

          else
          {
            v104 = v359;
          }

          v359 = v104;
          goto LABEL_141;
        }
      }

      v85 = sub_10003D460(v63);
      v92 = v85 ^ 1;
      v63 = v30[5];
      if (v79 == 265)
      {
        v92 = 0;
      }

      if (v92)
      {
        goto LABEL_112;
      }

LABEL_88:
      v93 = *(v63 + 8);
      if (*(v93 + 144) == 1)
      {
        v78 = *(v93 + 152);
        v77 = *(v93 + 156);
        v374 = *(v93 + 160);
        if (v374 == 1)
        {
          v94 = qword_100BCE918;
          v85 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
          if (v85)
          {
            *v417 = 67109634;
            *&v417[4] = v77;
            *&v417[8] = 1024;
            *&v417[10] = v78;
            *v418 = 2082;
            *&v418[2] = "active";
            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "Daemon is requesting scan parameters %d/%d (%{public}s)", v417, 0x18u);
          }
        }

        if (v339)
        {
          v95 = sub_10003C8F4(v85, v30[5]);
          if (v95)
          {
            v96 = sub_10003CEAC(v95, (v78 / 0.625), (v77 / 0.625));
            if (v96 == 5)
            {
              v77 = 30;
            }

            else
            {
              v77 = v77;
            }

            if (v96 == 5)
            {
              v78 = 300;
            }

            else
            {
              v78 = v78;
            }
          }
        }

        v97 = v353;
        if (!v353 || v78 / v77 < v351 / v353)
        {
          v97 = v77;
          v351 = v78;
        }

        v353 = v97;
        v63 = v30[5];
        v98 = *(v63 + 8);
        if (*(v98 + 313) == 1)
        {
          BYTE4(v343) = 1;
          if (v351)
          {
            if (v97)
            {
              if (HIDWORD(v342))
              {
                v99 = v342;
                v100 = HIDWORD(v342);
                v101 = SHIDWORD(v342) / v342;
                v102 = v351 / v97;
                if (SHIDWORD(v342) / v342 < v351 / v353)
                {
                  v99 = v353;
                }

                LODWORD(v342) = v99;
                if (v101 < v102)
                {
                  v100 = v351;
                }

                HIDWORD(v342) = v100;
                BYTE4(v343) = 1;
              }

              else
              {
                BYTE4(v343) = 1;
                v342 = __PAIR64__(v351, v97);
              }
            }
          }
        }

        v345 = v374 | v345 & 1;
        if (*(v98 + 170) != 1)
        {
          goto LABEL_141;
        }

        if (!v78)
        {
          goto LABEL_141;
        }

        v110 = *(v98 + 168);
        if (!v110)
        {
          goto LABEL_141;
        }

        if (v343)
        {
          if (v340)
          {
            if (SHIDWORD(v340) / v340 > v78 / v110)
            {
              goto LABEL_136;
            }
          }

          else
          {
            LODWORD(v340) = 0;
          }
        }

        else
        {
LABEL_136:
          v338 = (v77 / 0.625);
          LODWORD(v340) = (v110 / 0.625);
          HIDWORD(v340) = (v78 / 0.625);
        }

        v111 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          v112 = sub_100028FA8(v63);
          v113 = sub_10002F16C(v112);
          *v417 = 136316162;
          *&v417[4] = v113;
          *&v417[12] = 2080;
          *v418 = "Y";
          *&v418[8] = 1024;
          *v419 = v78;
          *&v419[4] = 1024;
          *&v419[6] = v338;
          *v420 = 1024;
          *&v420[2] = v340;
          _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%s MC preferred %s interval %d orig window %d mc only window %d", v417, 0x28u);
          v63 = v30[5];
        }

        LOBYTE(v343) = 1;
        goto LABEL_141;
      }

      v374 = 0;
      v77 = 0;
      v78 = 0;
LABEL_141:
      v358 = 0;
      v350 = 0;
      if (*(*(v63 + 8) + 3) == 1)
      {
        v349 |= *(v82 + 1988) == 2;
      }

LABEL_143:
      v114 = sub_10003BC84(v30[5]);
      v370 = v114;
      if (!v363)
      {
        goto LABEL_167;
      }

      v114 = v388;
      if (byte_100BC7CC6)
      {
        goto LABEL_167;
      }

      if (sub_10002904C(v388, v30[5]))
      {
        v377 = 1;
        v115 = v388;
      }

      else
      {
        v115 = v388;
        if (*(*(v30[5] + 8) + 240) == 1)
        {
          v116 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            *v417 = 0;
            _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "Scanning Prioritization for double boost with allowed use cases.", v417, 2u);
          }

          v377 = 1;
        }
      }

      if ((byte_100BC7CC7 & 1) != 0 || sub_1000292A4(v115, v30[5]))
      {
        v355 = v344 | v377;
      }

      if (qword_100B50910 != -1)
      {
        sub_100874420();
      }

      v114 = sub_100028FC8();
      if ((v377 & 1) == 0)
      {
        goto LABEL_164;
      }

      v118 = v114 & 0xFFFFFFFD;
      if (v114 == 2)
      {
        v119 = sub_10000C7D0(v114, v117);
        v114 = (*(*v119 + 3176))(v119);
        if (v118 == 1)
        {
          v120 = 0;
        }

        else
        {
          v120 = v114;
        }

        if ((v120 & 1) == 0)
        {
LABEL_162:
          v355 &= v344;
          v121 = qword_100BCE918;
          v114 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
          if (v114)
          {
            *v417 = 0;
            _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "Scanning Prioritization is not enabled with HIDs connected.", v417, 2u);
          }

LABEL_164:
          v377 = 0;
          goto LABEL_167;
        }
      }

      else if (v118 == 1)
      {
        goto LABEL_162;
      }

      v377 = 1;
LABEL_167:
      if (v357)
      {
        v114 = sub_10003D484(v30[5]);
        if ((v114 & 1) != 0 || (v114 = sub_10003CB84(v114, v30[5]), v114))
        {
          v366 = 1;
        }
      }

      if (*(v388 + 4424) == 1)
      {
        v114 = sub_1007AA218(v114, v30[5]);
        v361 |= v114;
      }

      v122 = sub_10003D490(v114, v30[5]);
      v123 = v376;
      if (v122 > v376)
      {
        v123 = v122;
      }

      v376 = v123;
      if (v372)
      {
        v372 = sub_10003BC78(v30[5]);
      }

      else
      {
        v372 = 0;
      }

      v124 = v30[5];
      v125 = *(v124 + 8);
      v126 = *(v125 + 163);
      if (!v126)
      {
        v126 = 1;
        *(v125 + 163) = 1;
      }

      a2[16] |= v126;
      v127 = *(v124 + 208);
      if (v127 == 3)
      {
        v128 = v32;
      }

      else
      {
        v128 = v127;
        if (v32 != 3)
        {
          if (v32 == v127)
          {
            v128 = v32;
          }

          else
          {
            v128 = 2;
          }
        }
      }

      v369 = v128;
      v362 = v127;
      v129 = *(v125 + 174);
      if (v129 > a2[18])
      {
        a2[18] = v129;
      }

      v130 = v31[477];
      sub_100018384(v30[4], v417);
      v131 = v418[9];
      v132 = *v417;
      v133 = [v31[477] defaultCStringEncoding];
      if (v131 >= 0)
      {
        v134 = v417;
      }

      else
      {
        v134 = v132;
      }

      v135 = [v130 stringWithCString:v134 encoding:v133];
      v367 = v78;
      v368 = v77;
      v371 = v36;
      if ((v418[9] & 0x80000000) != 0)
      {
        operator delete(*v417);
      }

      v136 = v31[477];
      v137 = v30[5];
      v138 = *(*(v137 + 8) + 3);
      v139 = sub_10003C8E8(v137);
      v140 = sub_10003A26C(v30[5]);
      v141 = v30[5];
      v142 = *(v141 + 81);
      v143 = v142 == 32;
      v144 = v142 == 16;
      v145 = sub_100028FB4(v141);
      if (sub_100028FB4(v30[5]))
      {
        v6 = v34;
      }

      else
      {
        v6 = 0.0;
      }

      if (sub_100028FB4(v30[5]))
      {
        v146 = v33;
      }

      else
      {
        v146 = 0.0;
      }

      v147 = sub_10003BC78(v30[5]);
      v148 = [v136 stringWithFormat:@"[%@] AP:%d AD:%d(%d/%d) AS:%d RAS:%d DMN:%d FG:%d ADVBF:%d(%.0f/%.0f) Rg:%d Cri:%d pBT:%d pwrAsrt:%d CT:%d type:%d level:%d MRC:%d", v135, v138, v139, v368, v367, v374, v140, v143, v144, v145, *&v6, *&v146, v147, sub_10003BC84(v30[5]), v377 & 1, *(*(v30[5] + 8) + 171), *(*(v30[5] + 8) + 172), *(v30[5] + 208), *(v30[5] + 96), v366 & 1];
      [v387 addObject:v148];

      v31 = &xpc_dictionary_set_uint64_ptr;
      v36 = v371;

      v379 |= v370;
      v32 = v369;
LABEL_200:

      *v417 = &v396[5];
      sub_10000CF30(v417);
      sub_10000CEDC(&v396[3], *(&v396[3] + 1));
      if (*(&v396[1] + 1))
      {
        *&v396[2] = *(&v396[1] + 1);
        operator delete(*(&v396[1] + 1));
      }

      *v417 = v396;
      sub_10000CFB0(v417);

      v149 = v30[1];
      if (v149)
      {
        do
        {
          v150 = v149;
          v149 = *v149;
        }

        while (v149);
      }

      else
      {
        do
        {
          v150 = v30[2];
          v28 = *v150 == v30;
          v30 = v150;
        }

        while (!v28);
      }

      v30 = v150;
      v24 = v388;
      v23 = a2;
      if (v150 == (v388 + 2072))
      {
        v151 = (v384 != 0) & v372;
        v152 = v346 ^ 1;
        v375 = 100 * v338;
        v154 = v353;
        v153 = v355;
        v156 = v377;
        v155 = v379;
        v157 = v359;
        v158 = v351;
        v159 = v364;
        v160 = v345;
        goto LABEL_210;
      }
    }
  }

  v151 = 0;
  v376 = 0;
  v361 = 0;
  v366 = 0;
  v153 = 0;
  v156 = 0;
  v155 = 0;
  v349 = 0;
  v375 = 0;
  v340 = 0;
  v342 = 0;
  v343 = 0;
  v154 = 0;
  v158 = 0;
  v159 = 0;
  v160 = 0;
  v152 = 1;
  v157 = 4;
  v34 = 0.0;
  v362 = 3;
  v33 = 0.0;
  v32 = 3;
LABEL_210:
  *(v24 + 3248) = v32;
  v380 = v155;
  v381 = v32;
  v354 = v154;
  v356 = v153;
  v378 = v156;
  v383 = v151;
  v352 = v158;
  v360 = v157;
  v382 = [v31[477] stringWithFormat:@"AD:%d RD:%d AS:%d PHYS:%d MSL:%d (%d/%d) PSV:%d Rg:%d Cri:%d pBT:%d pWiFi:%d pCfg:%d type:%d", v159 & 1, *(v24 + 2384), v160 & 1, v23[16], v157, v154, v158, *v23, v151, v155 & 1, v156 & 1, v153 & 1, v23[18], v32];
  v161 = v159;
  v162 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v163 = *(v24 + 2080);
    *buf = 134218242;
    *&buf[4] = v163;
    *&buf[12] = 2114;
    *&buf[14] = v382;
    _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "ScanParams: numScanAgents %lu, combined params %{public}@", buf, 0x16u);
  }

  v373 = v152;
  v365 = v161;
  v164 = [v387 count];
  if (v164 >= -1)
  {
    v165 = 0;
    v166 = v164 - 1;
    v167 = ((v164 - 1) / 3 + 1);
    v168 = 2;
    v169 = 1;
    do
    {
      if (v168 >= v166)
      {
        v170 = v166;
      }

      else
      {
        v170 = v168;
      }

      v171 = [v387 subarrayWithRange:{v165, v170 + v169}];
      v172 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v173 = [v171 componentsJoinedByString:@"|"];
        *buf = 138543362;
        *&buf[4] = v173;
        _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "ScanParams: %{public}@", buf, 0xCu);
      }

      v168 += 3;
      v169 -= 3;
      v165 += 3;
      --v167;
      v23 = a2;
    }

    while (v167);
  }

  if (v360 == 1)
  {
    *(v23 + 1) = 3145792;
    v174 = BYTE4(v343);
    v175 = v160;
    goto LABEL_229;
  }

  v174 = BYTE4(v343);
  v175 = v160;
  if (v360 == 4)
  {
    *(v23 + 1) = 3147273;
    *v23 = 1;
  }

  else
  {
    if (v360 == 3)
    {
      v176 = 480;
    }

    else
    {
      if (v360 != 2)
      {
        goto LABEL_229;
      }

      v176 = 96;
    }

    *(v23 + 1) = v176 | 0x300000;
  }

LABEL_229:
  if (v352)
  {
    v177 = v354 == 0;
  }

  else
  {
    v177 = 1;
  }

  v178 = !v177;
  if (v177)
  {
    v180 = *(v23 + 3);
    v179 = *(v23 + 2);
    v181 = v365;
  }

  else
  {
    if (v175)
    {
      *v23 = 0;
    }

    v179 = *(v23 + 2);
    v180 = *(v23 + 3);
    v181 = v365;
    if (v352 / v354 <= (v179 / v180))
    {
      v179 = (v352 / 0.625);
      *(v23 + 2) = v179;
      v180 = (v354 / 0.625);
      *(v23 + 3) = v180;
    }
  }

  if (qword_100B50910 != -1)
  {
    sub_100874420();
    v23 = a2;
    v181 = v365;
    v174 = BYTE4(v343);
  }

  v182 = sub_10003CE34(off_100B50908);
  v183 = v182;
  v185 = sub_10000C798(v182, v184);
  v186 = (*(*v185 + 1032))(v185);
  v385 = v186;
  if (v183 & 1 | ((v186 & 1) == 0))
  {
    v188 = 0;
  }

  else
  {
    v186 = _os_feature_enabled_impl();
    v188 = v186;
  }

  *v417 = 100;
  if (SHIDWORD(v342) / v342 == *(v23 + 2) / *(v23 + 3))
  {
    v186 = _os_feature_enabled_impl();
    if (v186)
    {
      v188 |= v174;
    }
  }

  if ((v183 & 1) == 0)
  {
    v189 = sub_1000154A8(v186, v187);
    v186 = (*(*v189 + 96))(v189);
    v190 = 100 * v180 / v179;
    if (v186)
    {
      goto LABEL_251;
    }

    if (v360 == 1)
    {
      if (v190 >= 0x32)
      {
LABEL_263:
        v195 = qword_100BCE918;
        v186 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
        if (v186)
        {
          LOWORD(v196) = *(v23 + 3);
          LOWORD(v197) = *(v23 + 2);
          *buf = 134219264;
          *&buf[4] = v196 * 0.625;
          *&buf[12] = 2048;
          *&buf[14] = v197 * 0.625;
          *&buf[22] = 1024;
          *&buf[24] = v190;
          *&buf[28] = 2048;
          *&buf[30] = 0x403E000000000000;
          *&buf[38] = 2048;
          *&buf[40] = 0x404E000000000000;
          *&buf[48] = 1024;
          *&buf[50] = v360;
          _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_INFO, "Limiting scan duty cycle based on other activities from %.2fms/%.2fms (scanPercentage %d)to %.2fms/%.2fms minScanLevel %d", buf, 0x36u);
        }

        *(v23 + 1) = 3145824;
        goto LABEL_266;
      }
    }

    else
    {
      if (v190 > 0x31)
      {
        v194 = v178;
      }

      else
      {
        v194 = 0;
      }

      if (v194)
      {
        goto LABEL_263;
      }
    }

LABEL_251:
    if (v190 < 0x22)
    {
      v188 = 0;
    }

    else
    {
      v191 = qword_100BCE918;
      v186 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
      if (v186)
      {
        LOWORD(v192) = *(v23 + 3);
        LOWORD(v193) = *(v23 + 2);
        *buf = 134219264;
        *&buf[4] = v192 * 0.625;
        *&buf[12] = 2048;
        *&buf[14] = v193 * 0.625;
        *&buf[22] = 1024;
        *&buf[24] = v190;
        *&buf[28] = 2048;
        *&buf[30] = 0x403E000000000000;
        *&buf[38] = 2048;
        *&buf[40] = 0x4056800000000000;
        *&buf[48] = 1024;
        *&buf[50] = v360;
        _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_INFO, "Limiting scan duty cycle based on other activities from %.2fms/%.2fms (scanPercentage %d)to %.2fms/%.2fms minScanLevel %d", buf, 0x36u);
      }

      *(v23 + 1) = 3145872;
      v417[0] = v190 + (v190 >> 1) - 50;
    }
  }

LABEL_266:
  if (*(v388 + 2376))
  {
    if (qword_100B54770 != -1)
    {
      sub_1008743D0();
      v23 = a2;
      v181 = v365;
      v174 = BYTE4(v343);
    }

    v198 = sub_100512BEC(off_100B54768);
    *(v23 + 2) = v198;
    *(v23 + 3) = 48;
    v199 = qword_100BCEA38;
    v186 = os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_INFO);
    if (v186)
    {
      *buf = 67109376;
      *&buf[4] = v198;
      *&buf[8] = 1024;
      *&buf[10] = 48;
      _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_INFO, "ExposureNotification scan active, setting params interval:%d window:%d", buf, 0xEu);
    }

    v188 = 0;
    v350 = 0;
  }

  if ((*v23 & 1) == 0 && ((*(v388 + 144) | v349) & 1) == 0)
  {
    v200 = qword_100BCE918;
    v186 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
    if (v186)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_DEFAULT, "Forcing passive scans based on screen state", buf, 2u);
    }

    *v23 = 1;
    if (*(v388 + 2278) == 1)
    {
      v201 = qword_100BCE918;
      v186 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
      if (v186)
      {
        v202 = *(v388 + 2279);
        *buf = 67109120;
        *&buf[4] = v202;
        _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "ForcePassiveScan is now %d", buf, 8u);
      }

      *v23 = *(v388 + 2279);
    }
  }

  if (v350)
  {
    v203 = qword_100BCE918;
    v186 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
    if (v186)
    {
      *buf = 134218240;
      *&buf[4] = v33;
      *&buf[12] = 2048;
      *&buf[14] = v34;
      _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_INFO, "ADV buffer only, overriding settings HWADVBufferIntervalMs:%f HWADVBufferWindowMs:%f", buf, 0x16u);
    }

    v188 = 0;
    *(v23 + 2) = (v33 / 0.625);
    *(v23 + 3) = (v34 / 0.625);
    *v23 = 1;
  }

  v204 = sub_10000C7D0(v186, v187);
  v205 = (*(*v204 + 3232))(v204);
  if (v205)
  {
    if (qword_100B50910 != -1)
    {
      sub_100874420();
      v23 = a2;
      v181 = v365;
      v174 = BYTE4(v343);
    }

    if (*(off_100B50908 + 209) == 1)
    {
      v207 = *(v23 + 3);
      v208 = *(v23 + 2);
      if (100 * v207 / v208 >= 0xB)
      {
        v209 = qword_100BCE918;
        v205 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
        if (v205)
        {
          *buf = 134219264;
          *&buf[4] = v207 * 0.625;
          *&buf[12] = 2048;
          *&buf[14] = v208 * 0.625;
          *&buf[22] = 1024;
          *&buf[24] = 100 * v207 / v208;
          *&buf[28] = 2048;
          *&buf[30] = 0x403E000000000000;
          *&buf[38] = 2048;
          *&buf[40] = 0x4072C00000000000;
          *&buf[48] = 1024;
          *&buf[50] = v360;
          _os_log_impl(&_mh_execute_header, v209, OS_LOG_TYPE_INFO, "Limiting scan duty cycle due to BT ACL protect mode from %.2fms/%.2fms (scanPercentage %d)to %.2fms/%.2fms minScanLevel %d", buf, 0x36u);
        }

        *(v23 + 1) = 3146208;
      }
    }
  }

  v210 = *(v388 + 2368);
  if (v358)
  {
    if (v210 == 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      *(v388 + 2368) = Current;
      *(v388 + 2360) = Current;
    }
  }

  else
  {
    if (v210 != 0.0)
    {
      v212 = CFAbsoluteTimeGetCurrent();
      *(v388 + 2336) = (v212 - *(v388 + 2368) + *(v388 + 2336));
      *(v388 + 2368) = v212;
    }

    *(v388 + 2368) = 0;
  }

  if (((v348 | v347) & 1) != 0 && (*(v23 + 3) == 0xFFFF || !*(v23 + 3)))
  {
    v205 = sub_10003663C(v388);
    if (v205)
    {
      *(v23 + 2) = 4800;
    }
  }

  v213 = v174 | v188;
  v214 = 100 * *(v23 + 3) / *(v23 + 2);
  if (v214 < 0x1E)
  {
    if ((v378 | v356))
    {
      v215 = qword_100BCE918;
      v205 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
      if (v205)
      {
        v216 = "No";
        if (v378)
        {
          v217 = "Yes";
        }

        else
        {
          v217 = "No";
        }

        *buf = 136315650;
        *&buf[4] = v217;
        if (v356)
        {
          v216 = "Yes";
        }

        *&buf[12] = 2080;
        *&buf[14] = v216;
        *&buf[22] = 1024;
        *&buf[24] = v214;
        _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, "Do not prioritize scanning over BT %s WiFi %s for scan duty cycle %u.", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v23[24] = v378 & 1;
    v23[25] = v356 & 1;
  }

  if (*(v388 + 4424) == 1)
  {
    v218 = *(v23 + 3);
    v219 = *(v23 + 2);
    v2 = v218 * 100.0 / v219;
    v220 = qword_100BCE918;
    v205 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
    if (v205)
    {
      *buf = 67110144;
      *&buf[4] = v218;
      *&buf[8] = 1024;
      *&buf[10] = v219;
      *&buf[14] = 2048;
      *&buf[16] = v218 * 100.0 / v219;
      *&buf[24] = 2048;
      *&buf[26] = 0x4008DAB7EC1DD343;
      *&buf[34] = 1024;
      *&buf[36] = v2 > 3.10679612;
      _os_log_impl(&_mh_execute_header, v220, OS_LOG_TYPE_DEFAULT, "Checking if throttling down our scan during SDP is needed window:%d interval:%d dutyCycle:%f throttledDutyCycle:%f needToThrottle:%d", buf, 0x28u);
    }

    if (v2 > 3.10679612)
    {
      v221 = qword_100BCE918;
      v205 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
      if (v205)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_DEFAULT, "Throttling down our scan during SDP", buf, 2u);
      }

      *(v23 + 1) = 3147273;
      if (v361)
      {
        *v417 = 72745216;
        v213 = 1;
      }
    }
  }

  v222 = sub_10000C7D0(v205, v206);
  v223 = (*(*v222 + 2824))(v222);
  if (v223)
  {
    v225 = 1;
  }

  else
  {
    v226 = sub_10000C7D0(v223, v224);
    v223 = (*(*v226 + 2816))(v226);
    v225 = v223;
  }

  if (*a2 == 1)
  {
    v227 = sub_10000C798(v223, v224);
    v228 = (*(*v227 + 352))(v227);
    v229 = v181 ^ 1;
    if (v228)
    {
      v230 = v225 | v229;
      a2[3] = v230 & 1;
      v231 = a2 + 3;
      if (v230)
      {
        goto LABEL_330;
      }
    }

    else
    {
      a2[3] = v229 & 1;
      v231 = a2 + 3;
      if ((v181 & 1) == 0)
      {
        goto LABEL_330;
      }
    }

    goto LABEL_329;
  }

  a2[3] = v373 & 1;
  v231 = a2 + 3;
  if ((v373 & 1) == 0)
  {
LABEL_329:
    *(v388 + 2384) = 0;
  }

LABEL_330:
  v232 = *(a2 + 2);
  if (v232 != 48)
  {
    if (*(a2 + 2))
    {
      v233 = *(a2 + 3);
      if (*(a2 + 3))
      {
        if (v233 == v232)
        {
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            sub_100877258(v233);
          }

          *(a2 + 1) = 3145776;
        }
      }
    }
  }

  if ((v213 & 1) == 0 || (*a2 & 1) == 0)
  {
    v417[0] = 0;
    *&v417[2] = 0;
  }

  if (v376)
  {
    v234 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v235 = "No";
      if (v339)
      {
        v235 = "Yes";
      }

      *buf = 67109378;
      *&buf[4] = v394;
      *&buf[8] = 2080;
      *&buf[10] = v235;
      _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_DEFAULT, "powerSource %d is wall powered %s\n", buf, 0x12u);
    }
  }

  if ((v343 & 1) != 0 && ((v236 = qword_100BCE918, v237 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT), v238 = *(a2 + 3), v239 = *(a2 + 2), !v237) ? (v240 = v375 / SHIDWORD(v340)) : (*buf = 67110400, *&buf[4] = 100 * v238 / v239, *&buf[8] = 1024, v240 = v375 / SHIDWORD(v340), *&buf[10] = v375 / SHIDWORD(v340), *&buf[14] = 1024, *&buf[16] = v238, *&buf[20] = 1024, *&buf[22] = v239, *&buf[26] = 1024, *&buf[28] = v340, *&buf[32] = 1024, *&buf[34] = HIDWORD(v340), _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, "isMCOnlyPreferred original duty %d mc only duty %d window %d interval %d windowMCOnlyPreferred %d intervalMCOnlyPreferred %d", buf, 0x26u), v238 = *(a2 + 3), v239 = *(a2 + 2)), 100 * v238 / v239 == v240))
  {
    *(a2 + 3) = v340;
    *(a2 + 2) = WORD2(v340);
    v241 = 1;
  }

  else
  {
    v241 = 0;
  }

  sub_10003D8DC(v388, a2, v348, v347, v380 & 1, v383, v417, v376, v241);
  v244 = sub_10000C7D0(v242, v243);
  v245 = (*(*v244 + 3192))(v244, *(a2 + 2), *(a2 + 3));
  if (v245)
  {
    a2[25] = 1;
  }

  v247 = sub_10000C798(v245, v246);
  v248 = (*(*v247 + 952))(v247);
  if (v248 && (*(v388 + 4360) & 1) == 0 && !(v366 & 1 | ((*a2 & 1) == 0)))
  {
    v249 = sub_100083A98(v248, *(a2 + 2), *(a2 + 3));
    if (v249 == 4)
    {
      v252 = 48;
      goto LABEL_367;
    }

    if (v249 == 5)
    {
      v251 = sub_10000C798(v249, v250);
      if ((*(*v251 + 384))(v251))
      {
        if (qword_100B50910 != -1)
        {
          sub_100874420();
        }

        if (sub_1005BCB34(off_100B50908))
        {
          v252 = *(a2 + 6) + *(a2 + 3);
LABEL_367:
          *(a2 + 6) = v252;
          *(a2 + 6) = 0;
        }
      }
    }
  }

  a2[15] = v366 & 1;
  v253 = _os_feature_enabled_impl();
  if (*(a2 + 2) == 144)
  {
    v254 = v253;
  }

  else
  {
    v254 = 0;
  }

  v255 = qword_100BCE918;
  if (v254 == 1 && *(a2 + 3) == 48)
  {
    *(a2 + 2) = 0;
    *(a2 + 6) = 0;
    *(a2 + 2) = 48;
    if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v255, OS_LOG_TYPE_DEFAULT, "Override scan parameters by 30/0/0/0 // 30 with feature flag AudioFriendlyBLEScanParams.", buf, 2u);
      v255 = qword_100BCE918;
    }
  }

  v256 = os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT);
  if (v256)
  {
    LOWORD(v6) = *(a2 + 3);
    LOWORD(v4) = *(a2 + 2);
    LOWORD(v5) = *(a2 + 4);
    if (v348)
    {
      v258 = "supported";
    }

    else
    {
      v258 = "unsupported";
    }

    LOWORD(v3) = *(a2 + 6);
    LOWORD(v2) = *(a2 + 5);
    if (a2[14])
    {
      v259 = "concurrent";
    }

    else
    {
      v259 = "non-concurrent";
    }

    if (v347)
    {
      v260 = "supported";
    }

    else
    {
      v260 = "unspported";
    }

    if (qword_100B50910 != -1)
    {
      sub_100874420();
    }

    *buf = 134225154;
    v261 = *(off_100B50908 + 212);
    v262 = *(v388 + 144);
    if (*a2)
    {
      v263 = "passive";
    }

    else
    {
      v263 = "active";
    }

    v264 = a2[19];
    v265 = *(a2 + 10);
    if (a2[3])
    {
      v266 = "Enabled";
    }

    else
    {
      v266 = "Disabled";
    }

    v267 = *(a2 + 11);
    v268 = "No";
    v269 = a2[24];
    v270 = a2[25];
    if (v183)
    {
      v271 = "Yes";
    }

    else
    {
      v271 = "No";
    }

    *&buf[4] = *&v6 * 0.625;
    if (v264)
    {
      v268 = "Yes";
    }

    *&buf[12] = 2048;
    *&buf[14] = v4 * 0.625;
    *&buf[22] = 2048;
    if (v225)
    {
      v272 = "supported";
    }

    else
    {
      v272 = "unsupported";
    }

    *&buf[24] = v5 * 0.625;
    v273 = "N";
    *&buf[32] = 2048;
    if (v366)
    {
      v273 = "Y";
    }

    *&buf[34] = v4 * 0.625;
    *&buf[42] = 2082;
    *&buf[44] = v258;
    *&buf[52] = 2048;
    *&buf[54] = v3 * 0.625;
    *&buf[62] = 2048;
    *v396 = *&v2 * 0.625;
    WORD4(v396[0]) = 2082;
    *(v396 + 10) = v259;
    WORD1(v396[1]) = 2082;
    *(&v396[1] + 4) = v260;
    WORD6(v396[1]) = 1024;
    *(&v396[1] + 14) = v354;
    WORD1(v396[2]) = 1024;
    DWORD1(v396[2]) = v352;
    WORD4(v396[2]) = 1024;
    *(&v396[2] + 10) = v261;
    HIWORD(v396[2]) = 1024;
    LODWORD(v396[3]) = v183;
    WORD2(v396[3]) = 1024;
    *(&v396[3] + 6) = v385;
    WORD5(v396[3]) = 1024;
    HIDWORD(v396[3]) = v213 & 1;
    LOWORD(v396[4]) = 1024;
    *(&v396[4] + 2) = v349 & 1;
    WORD3(v396[4]) = 1024;
    DWORD2(v396[4]) = v262;
    WORD6(v396[4]) = 2082;
    *(&v396[4] + 14) = v263;
    WORD3(v396[5]) = 2082;
    *(&v396[5] + 1) = v266;
    LOWORD(v397) = 1024;
    *(&v397 + 2) = v360;
    HIWORD(v397) = 2082;
    v398 = v271;
    v399 = 2082;
    v400 = v268;
    v401 = 1024;
    v402 = v265;
    v403 = 1024;
    v404 = v267;
    v405 = 1024;
    v406 = v269;
    v407 = 1024;
    v408 = v270;
    v409 = 1024;
    v410 = v394;
    v411 = 2080;
    v412 = v272;
    v413 = 2080;
    v414 = v273;
    _os_log_impl(&_mh_execute_header, v255, OS_LOG_TYPE_DEFAULT, "Returning scan parameters: Main:%.2fms/%.2fms LP:%.2fms/%.2fms(%{public}s) SC:%.2fms/%.2fms/%{public}s(%{public}s) Dm:(m:%d/%d) Cond:%d:%d:%d:%d:%d Sc:%d (%{public}s) Dupfilter:%{public}s minScanLevel:%d HD:%{public}s Comp:%{public}s(%d,%d) Pri:%d/%d PS:%d UUIDPerRuleDup:%s mrc:%s", buf, 0xECu);
  }

  v274 = a2;
  if (*(v388 + 2246) == 1)
  {
    *(a2 + 2) = *(v388 + 2248);
    *(a2 + 6) = *(v388 + 2250);
    v275 = *(v388 + 2260);
    if (*(v388 + 2258))
    {
      v276 = *(v388 + 2260);
    }

    else
    {
      v276 = 0;
    }

    if (*(v388 + 2258))
    {
      v275 = 0;
    }

    *(a2 + 6) = v276;
    *(a2 + 5) = v275;
    v277 = sub_10000C798(v256, v257);
    if ((*(*v277 + 952))(v277) && (*(v388 + 4360) & 1) == 0 && *a2 == 1 && *(v388 + 2247) == 1)
    {
      if (*(v388 + 2254))
      {
        *(a2 + 6) = *(v388 + 2254);
      }

      if (*(v388 + 2256))
      {
        *v341 = *(v388 + 2256);
      }
    }

    v278 = *(v388 + 2262);
    a2[14] = v278;
    if (*(v388 + 2263) == 1)
    {
      a2[15] = *(v388 + 2264);
    }

    if (*(v388 + 2266) == 1)
    {
      a2[16] = *(v388 + 2265);
    }

    if (*(v388 + 2267) == 1)
    {
      v279 = *(v388 + 2270);
    }

    else
    {
      v279 = 0;
    }

    a2[19] = v279 & 1;
    if (*(v388 + 2268) == 1)
    {
      v280 = *(v388 + 2272);
    }

    else
    {
      v280 = 0;
    }

    *(a2 + 10) = v280;
    if (*(v388 + 2269) == 1)
    {
      v281 = *(v388 + 2274);
    }

    else
    {
      v281 = 0;
    }

    v274 = a2;
    *(a2 + 11) = v281;
    v282 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v283 = *(a2 + 2);
      v284 = *(a2 + 3);
      v285 = *(a2 + 4);
      v286 = *(a2 + 6);
      v287 = *(a2 + 5);
      v288 = "No";
      if (v278)
      {
        v289 = "Yes";
      }

      else
      {
        v289 = "No";
      }

      if (v279)
      {
        v288 = "Yes";
      }

      v290 = a2[15];
      *buf = 67112706;
      *&buf[4] = v283;
      *&buf[8] = 2048;
      *&buf[10] = v283 * 0.625;
      *&buf[18] = 1024;
      *&buf[20] = v284;
      *&buf[24] = 1024;
      *&buf[26] = v285;
      *&buf[30] = 1024;
      *&buf[32] = v286;
      *&buf[36] = 1024;
      *&buf[38] = v287;
      *&buf[42] = 2048;
      *&buf[44] = v284 * 0.625;
      *&buf[52] = 2048;
      *&buf[54] = v285 * 0.625;
      *&buf[62] = 2048;
      *v396 = v286 * 0.625;
      WORD4(v396[0]) = 2048;
      *(v396 + 10) = v287 * 0.625;
      WORD1(v396[1]) = 2082;
      *(&v396[1] + 4) = v289;
      WORD6(v396[1]) = 2082;
      *(&v396[1] + 14) = v288;
      WORD3(v396[2]) = 1024;
      DWORD2(v396[2]) = v280;
      WORD6(v396[2]) = 1024;
      *(&v396[2] + 14) = v281;
      WORD1(v396[3]) = 1024;
      DWORD1(v396[3]) = v290;
      _os_log_impl(&_mh_execute_header, v282, OS_LOG_TYPE_DEFAULT, "Returning scan parameters (overridden with ScanCore) Interval %d(%.2fms) Window %d/%d/%d/%d(%.2fms/%.2fms/%.2fms/%.2fms) Concurrent %{public}s Compensation %{public}s percent %d query %d MRC:%d", buf, 0x78u);
    }
  }

  v291 = *(v274 + 3);
  v292 = *(v274 + 2);
  v293 = +[NSMutableDictionary dictionary];
  v294 = [NSNumber numberWithBool:*v274];
  [v293 setObject:v294 forKeyedSubscript:@"scanParams.passive"];

  v295 = [NSNumber numberWithBool:a2[1]];
  [v293 setObject:v295 forKeyedSubscript:@"scanParams.limited"];

  v296 = [NSNumber numberWithBool:*v231];
  [v293 setObject:v296 forKeyedSubscript:@"scanParams.filterDups"];

  LOWORD(v297) = *(a2 + 2);
  v298 = [NSNumber numberWithDouble:v297 * 0.625];
  [v293 setObject:v298 forKeyedSubscript:@"scanParams.interval"];

  LOWORD(v299) = *(a2 + 3);
  v300 = [NSNumber numberWithDouble:v299 * 0.625];
  [v293 setObject:v300 forKeyedSubscript:@"scanParams.window"];

  LOWORD(v301) = *(a2 + 4);
  v302 = [NSNumber numberWithDouble:v301 * 0.625];
  [v293 setObject:v302 forKeyedSubscript:@"scanParams.windowLPCore"];

  LOWORD(v303) = *v341;
  v304 = [NSNumber numberWithDouble:v303 * 0.625];
  [v293 setObject:v304 forKeyedSubscript:@"scanParams.windowScanCoreELNABypass"];

  LOWORD(v305) = *(a2 + 6);
  v306 = [NSNumber numberWithDouble:v305 * 0.625];
  [v293 setObject:v306 forKeyedSubscript:@"scanParams.windowScanCoreELNAOn"];

  v307 = [NSNumber numberWithBool:a2[14]];
  [v293 setObject:v307 forKeyedSubscript:@"scanParams.concurrencyMode"];

  v308 = [NSNumber numberWithUnsignedChar:a2[16]];
  [v293 setObject:v308 forKeyedSubscript:@"scanParams.scanningPhys"];

  v309 = [NSNumber numberWithBool:a2[17]];
  [v293 setObject:v309 forKeyedSubscript:@"scanParams.retainDuplicates"];

  v310 = [NSNumber numberWithUnsignedChar:a2[18]];
  [v293 setObject:v310 forKeyedSubscript:@"scanParams.priorityConfig"];

  v311 = [NSNumber numberWithBool:a2[19]];
  [v293 setObject:v311 forKeyedSubscript:@"scanParams.isScanCoreCompensated"];

  v312 = [NSNumber numberWithUnsignedShort:*(a2 + 10)];
  [v293 setObject:v312 forKeyedSubscript:@"scanParams.scanCoreCompensationPercent"];

  v313 = [NSNumber numberWithUnsignedShort:*(a2 + 11)];
  [v293 setObject:v313 forKeyedSubscript:@"scanParams.scanCoreCoexQueryPeriod"];

  v314 = [NSNumber numberWithBool:a2[24]];
  [v293 setObject:v314 forKeyedSubscript:@"scanParams.isPrioritizedOverBT"];

  v315 = [NSNumber numberWithBool:a2[25]];
  [v293 setObject:v315 forKeyedSubscript:@"scanParams.isPrioritizedOverWiFi"];

  v316 = [NSNumber numberWithBool:*(v388 + 144)];
  [v293 setObject:v316 forKeyedSubscript:@"fScreenState"];

  v317 = [NSNumber numberWithInt:v352];
  [v293 setObject:v317 forKeyedSubscript:@"daemonInterval"];

  v318 = [NSNumber numberWithInt:v354];
  [v293 setObject:v318 forKeyedSubscript:@"daemonWindow"];

  v319 = [NSNumber numberWithInt:v360];
  [v293 setObject:v319 forKeyedSubscript:@"minScanLevel"];

  v320 = [NSNumber numberWithUnsignedInt:100 * v291 / v292];
  [v293 setObject:v320 forKeyedSubscript:@"scanPercentage"];

  v321 = [NSNumber numberWithBool:v349 & 1];
  [v293 setObject:v321 forKeyedSubscript:@"allowInPause"];

  v322 = [NSNumber numberWithBool:v350 & 1];
  [v293 setObject:v322 forKeyedSubscript:@"onlyDoingHWADVBuffer"];

  v323 = [NSNumber numberWithBool:v358 & 1];
  [v293 setObject:v323 forKeyedSubscript:@"onlyDoingENHWADVBuffer"];

  v324 = [NSNumber numberWithDouble:v33];
  [v293 setObject:v324 forKeyedSubscript:@"HWADVBufferIntervalMs"];

  v325 = [NSNumber numberWithDouble:v34];
  [v293 setObject:v325 forKeyedSubscript:@"HWADVBufferWindowMs"];

  v326 = [NSNumber numberWithBool:v348];
  [v293 setObject:v326 forKeyedSubscript:@"scanLPCoreEnable"];

  v327 = [NSNumber numberWithBool:v347];
  [v293 setObject:v327 forKeyedSubscript:@"isScanCoreEnabled"];

  v328 = [NSNumber numberWithBool:v363];
  [v293 setObject:v328 forKeyedSubscript:@"supportsDiscoveryScanPrioritization"];

  v329 = [NSNumber numberWithBool:v383];
  [v293 setObject:v329 forKeyedSubscript:@"isRangeScan"];

  v330 = [NSNumber numberWithBool:v380 & 1];
  [v293 setObject:v330 forKeyedSubscript:@"isPriorityCritical"];

  v331 = [NSNumber numberWithUnsignedInt:v381];
  [v293 setObject:v331 forKeyedSubscript:@"combinedScanAgentType"];

  v332 = [NSNumber numberWithUnsignedInt:v362];
  [v293 setObject:v332 forKeyedSubscript:@"scanAgentType"];

  v333 = [NSNumber numberWithBool:v378 & 1];
  [v293 setObject:v333 forKeyedSubscript:@"isPrioritizedOverBT"];

  v334 = [NSNumber numberWithBool:v356 & 1];
  [v293 setObject:v334 forKeyedSubscript:@"isPrioritizedOverWiFi"];

  v335 = [NSNumber numberWithUnsignedInt:*(v388 + 1988)];
  [v293 setObject:v335 forKeyedSubscript:@"fObserverState"];

  [v386 setObject:v293 forKeyedSubscript:@"Controller"];
  v390[0] = _NSConcreteStackBlock;
  v390[1] = 3221225472;
  v390[2] = sub_10003DDE4;
  v390[3] = &unk_100B0D250;
  v336 = v386;
  v391 = v336;
  sub_10000D058((v388 + 1896), v390);

  return 1;
}

void sub_100036144(_Unwind_Exception *a1)
{
  sub_100138880(&STACK[0x270]);

  _Unwind_Resume(a1);
}

uint64_t *sub_10003650C(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1000365D8(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    result = *(*(v1[5] + 8) + 172);
    if (result)
    {
      break;
    }

    v4 = v1[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

uint64_t sub_10003663C(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 != (a1 + 2072))
  {
    v3 = 0;
    while (1)
    {
      v4 = v1[5];
      v5 = *(v4 + 8);
      if (*(v5 + 192))
      {
        v21 = 0;
        v20 = 0u;
        v18 = 0u;
        memset(v19, 0, sizeof(v19));
        v16 = 0u;
        *__p = 0u;
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        sub_10000CBF0(&v12, (*(v4 + 8) + 320));
        if (v13)
        {
          v6 = BYTE8(v12);
        }

        else
        {
          v6 = 0;
        }

        v22 = &v20;
        sub_10000CF30(&v22);
        sub_10000CEDC(v19, *(&v19[0] + 1));
        if (__p[1])
        {
          *&v18 = __p[1];
          operator delete(__p[1]);
        }

        v3 |= v6;
        v22 = &v16;
        sub_10000CFB0(&v22);

        v5 = *(v4 + 8);
      }

      v7 = *(v5 + 146) != 0;
      if ((*(v5 + 282) & 4) != 0 && !*(v5 + 146))
      {
        break;
      }

      v8 = v1[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v1[2];
          v10 = *v9 == v1;
          v1 = v9;
        }

        while (!v10);
      }

      v3 |= v7;
      v1 = v9;
      if (v9 == v2)
      {
        return v3 & 1;
      }
    }
  }

  LOBYTE(v3) = 0;
  return v3 & 1;
}

uint64_t sub_100036790(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (v1 >> 3 < 0x271)
  {
    if (v1 - 3000 < 0x3E8)
    {
      return 1;
    }
  }

  else if (v1 >> 4 < 0x177)
  {
    return 1;
  }

  return 0;
}

void sub_1000367C8(uint64_t a1)
{
  v1 = *(a1 + 2224);
  if (v1)
  {
    v3 = qword_100BCE9C8;
    if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v4 = (*(*v1 + 16))(v1), v5 = 136446210, v6 = v4, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Destroying %{public}s", &v5, 0xCu), (v1 = *(a1 + 2224)) != 0))
    {
      (*(*v1 + 8))(v1);
    }

    *(a1 + 2224) = 0;
  }
}

void sub_1000368D8(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3;
  v208 = v7;
  if ((atomic_load_explicit(&qword_100BC7CE8, memory_order_acquire) & 1) == 0)
  {
    v7 = __cxa_guard_acquire(&qword_100BC7CE8);
    if (v7)
    {
      dword_100BC7CE0 = *(sub_10000C7D0(v7, v8) + 800);
      __cxa_guard_release(&qword_100BC7CE8);
    }
  }

  v9 = 0uLL;
  v220 = 0u;
  v221 = 0uLL;
  v230 = 1;
  v223 = 0;
  BYTE1(v220) = 1;
  *(&v220 + 2) = 0x1000000;
  BYTE6(v220) = 1;
  *(&v220 + 7) = 256;
  *&v222 = 0;
  *(&v222 + 7) = 0;
  HIBYTE(v222) = 1;
  v228 = 0;
  v229 = 0;
  memset(v226, 0, sizeof(v226));
  v224 = 0u;
  v225 = 0u;
  v227 = &v228;
  v231 = 0uLL;
  v232 = 0;
  v209 = 0u;
  v210 = 0uLL;
  v217 = 1;
  v212 = 0;
  BYTE1(v209) = 1;
  BYTE6(v209) = 1;
  *(&v209 + 7) = 0;
  *&v211 = 0;
  *(&v211 + 7) = 0;
  HIBYTE(v211) = 1;
  *(&v215 + 1) = 0;
  v216 = 0;
  memset(v213, 0, sizeof(v213));
  memset(__p_8, 0, sizeof(__p_8));
  *&v215 = &v215 + 8;
  v218 = 0uLL;
  v219 = 0;
  if (a2 < 851968)
  {
    if (a2 <= 65548)
    {
      if (a2 > 65543)
      {
        if ((a2 - 65545) < 2)
        {
          v245[5].n128_u16[7] = 0;
          memset(v245, 0, 32);
          *(v245[1].n128_u32 + 1) = 65793;
          *(&v245[1].n128_u32[1] + 3) = 33620224;
          *(&v245[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
          v245[2].n128_u32[1] = 0xFFFF;
          *(&v245[2] + 8) = 0uLL;
          *(&v245[3] + 8) = 0uLL;
          *(&v245[4] + 8) = 0uLL;
          *(v245[5].n128_u64 + 6) = 0;
          *(&v245[1].n128_u16[2] + 1) = 4764;
          v56 = _os_feature_enabled_impl();
          if (v56)
          {
            LOBYTE(v217) = 0;
          }

          v58 = sub_10000C798(v56, v57);
          v59 = (*(*v58 + 416))(v58);
          if (v59)
          {
            WORD4(v211) = 30;
            WORD6(v211) = 300;
            LOWORD(v210) = 0;
            LOBYTE(v209) = 0;
            *(&v210 + 1) = 0;
            v245[1].n128_u8[4] = *(a1 + 144);
            sub_10003ABD0(v213 + 8, v245);
            if (_os_feature_enabled_impl())
            {
              LOBYTE(v217) = *(a1 + 144);
              v239[0] = xmmword_1008A4F0C;
              v239[1].n128_u32[0] = 0;
              sub_10000D03C(v244, v239);
              sub_10000CDB8(__p_8, v244);
              if (_os_feature_enabled_impl())
              {
                v239[0] = xmmword_1008A4F20;
                v239[1].n128_u32[0] = 0;
                sub_10000D03C(v244, v239);
                sub_10000CDB8(__p_8, v244);
              }
            }
          }

          else
          {
            v118 = sub_10000C798(v59, v60);
            if ((*(*v118 + 408))(v118))
            {
              WORD4(v211) = 0;
              WORD6(v211) = 0;
              LOWORD(v210) = 0;
              LOBYTE(v209) = 0;
              *(&v210 + 1) = 0;
              BYTE4(v209) = 1;
              v245[1].n128_u8[4] = 1;
              sub_10003ABD0(v213 + 8, v245);
              if (_os_feature_enabled_impl())
              {
                LOBYTE(v217) = 1;
                v239[0] = xmmword_1008A4F0C;
                v239[1].n128_u32[0] = 0;
                sub_10000D03C(v244, v239);
                sub_10000CDB8(__p_8, v244);
                if (_os_feature_enabled_impl())
                {
                  v239[0] = xmmword_1008A4F20;
                  v239[1].n128_u32[0] = 0;
                  sub_10000D03C(v244, v239);
                  sub_10000CDB8(__p_8, v244);
                }
              }

              if ((*(a1 + 144) & 1) == 0)
              {
                goto LABEL_171;
              }
            }

            else
            {
              v145 = dword_100BC7CE0 - 22;
              v146 = dword_100BC7CE0 - 3000;
              v147 = (dword_100BC7CE0 - 3000) < 0x3E8;
              v148 = dword_100BC7CE0 - 5000;
              if ((dword_100BC7CE0 - 19) < 0x7BD || v148 < 0x3E8)
              {
                v147 = 1;
              }

              if (v146 < 0x3E8 || v145 < 0x7BA || v148 <= 0x3E7)
              {
                v150 = *(a1 + 144);
              }

              else
              {
                v150 = 0;
              }

              LOBYTE(v209) = v150 & 1;
              if (v147)
              {
                LOBYTE(v147) = *(a1 + 144);
              }

              v171 = v146 >= 0x3E8 && v145 >= 0x7BA && v148 >= 0x3E8;
              v245[1].n128_u8[7] = v147 & 1;
              *(&v210 + 1) = 0;
              v172 = 2 * (dword_100BC7CE0 > 0x12);
              if (!v171)
              {
                v172 = 3;
              }

              LOWORD(v210) = v172;
              v245[1].n128_u8[4] = *(a1 + 144);
              sub_10003ABD0(v213 + 8, v245);
              if (_os_feature_enabled_impl())
              {
                LOBYTE(v217) = *(a1 + 144);
                v239[0] = xmmword_1008A4F0C;
                v239[1].n128_u32[0] = 0;
                sub_10000D03C(v244, v239);
                sub_10000CDB8(__p_8, v244);
                if (_os_feature_enabled_impl())
                {
                  v239[0] = xmmword_1008A4F20;
                  v239[1].n128_u32[0] = 0;
                  sub_10000D03C(v244, v239);
                  sub_10000CDB8(__p_8, v244);
                }
              }

              WORD4(v211) = 30;
              v173 = *(a1 + 144);
              if (v173)
              {
                v174 = 300;
              }

              else
              {
                v174 = 966;
              }

              WORD6(v211) = v174;
              if ((v173 & 1) == 0 && dword_100BC7CE0 <= 0x12)
              {
                goto LABEL_171;
              }
            }
          }

          LODWORD(v212) = 1;
          BYTE8(v209) = 1;
          v175 = v211;
          *(a4 + 16) = v210;
          *(a4 + 32) = v175;
          *(a4 + 48) = 1;
          *a4 = v209;
          v176 = v213[0];
          v213[0] = 0uLL;
          *(a4 + 56) = v176;
          *(a4 + 72) = v213[1];
          v213[1] = 0uLL;
          *(a4 + 88) = *__p_8;
          memset(__p_8, 0, sizeof(__p_8));
          v177 = v215;
          *(a4 + 104) = *&__p_8[16];
          *(a4 + 112) = v177;
          v178 = *(&v215 + 1);
          v179 = v216;
          *(a4 + 120) = *(&v215 + 1);
          *(a4 + 128) = v179;
          v180 = a4 + 120;
          if (v179)
          {
            *(v178 + 16) = v180;
            *&v215 = &v215 + 8;
            *(&v215 + 1) = 0;
            v216 = 0;
          }

          else
          {
            *(a4 + 112) = v180;
          }

          *(a4 + 136) = v217;
          *(a4 + 144) = v218;
          *(a4 + 160) = v219;
          v219 = 0;
          v218 = 0uLL;
          goto LABEL_297;
        }

        if ((a2 - 65547) >= 2)
        {
          if (a2 != 65544)
          {
            goto LABEL_158;
          }

LABEL_88:
          v245[5].n128_u16[7] = 0;
          memset(v245, 0, 32);
          *(v245[1].n128_u32 + 1) = 65793;
          *(&v245[1].n128_u32[1] + 3) = 33620224;
          *(&v245[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
          v245[2].n128_u32[1] = 0xFFFF;
          *(&v245[2] + 8) = 0uLL;
          *(&v245[3] + 8) = 0uLL;
          *(&v245[4] + 8) = 0uLL;
          *(v245[5].n128_u64 + 6) = 0;
          *(&v245[1].n128_u16[2] + 1) = 4737;
          v61 = _os_feature_enabled_impl();
          if (v61)
          {
            LOBYTE(v217) = 0;
          }

          v63 = sub_10000C798(v61, v62);
          v64 = (*(*v63 + 416))(v63);
          if (v64)
          {
            WORD4(v211) = 30;
            WORD6(v211) = 300;
            LOWORD(v210) = 0;
            LOBYTE(v209) = 0;
            *(&v210 + 1) = 0;
            v245[1].n128_u8[4] = *(a1 + 144);
            sub_10003ABD0(v213 + 8, v245);
            if (_os_feature_enabled_impl())
            {
              v239[0] = xmmword_1008A4F0C;
              v239[1].n128_u32[0] = 0;
              sub_10000D03C(v244, v239);
              sub_10000CDB8(__p_8, v244);
              if (_os_feature_enabled_impl())
              {
                v239[0] = xmmword_1008A4F20;
                v239[1].n128_u32[0] = 0;
                sub_10000D03C(v244, v239);
                sub_10000CDB8(__p_8, v244);
              }

              LOBYTE(v217) = *(a1 + 144);
            }

LABEL_330:
            LODWORD(v212) = 1;
            BYTE8(v209) = 1;
            v197 = v211;
            *(a4 + 16) = v210;
            *(a4 + 32) = v197;
            *(a4 + 48) = 1;
            *a4 = v209;
            v198 = v213[0];
            v213[0] = 0uLL;
            *(a4 + 56) = v198;
            *(a4 + 72) = v213[1];
            v213[1] = 0uLL;
            *(a4 + 88) = *__p_8;
            memset(__p_8, 0, sizeof(__p_8));
            v199 = v215;
            *(a4 + 104) = *&__p_8[16];
            *(a4 + 112) = v199;
            v200 = *(&v215 + 1);
            v201 = v216;
            *(a4 + 120) = *(&v215 + 1);
            *(a4 + 128) = v201;
            v202 = a4 + 120;
            if (v201)
            {
              *(v200 + 16) = v202;
              *&v215 = &v215 + 8;
              *(&v215 + 1) = 0;
              v216 = 0;
            }

            else
            {
              *(a4 + 112) = v202;
            }

            *(a4 + 136) = v217;
            *(a4 + 144) = v218;
            *(a4 + 160) = v219;
            v219 = 0;
            v218 = 0uLL;
            goto LABEL_297;
          }

          v119 = sub_10000C798(v64, v65);
          if ((*(*v119 + 408))(v119))
          {
            WORD4(v211) = 0;
            WORD6(v211) = 0;
            LOWORD(v210) = 0;
            LOBYTE(v209) = 0;
            *(&v210 + 1) = 0;
            BYTE4(v209) = 1;
            v245[1].n128_u8[4] = 1;
            sub_10003ABD0(v213 + 8, v245);
            if (_os_feature_enabled_impl())
            {
              LOBYTE(v217) = 1;
              v239[0] = xmmword_1008A4F0C;
              v239[1].n128_u32[0] = 0;
              sub_10000D03C(v244, v239);
              sub_10000CDB8(__p_8, v244);
              if (_os_feature_enabled_impl())
              {
                v239[0] = xmmword_1008A4F20;
                v239[1].n128_u32[0] = 0;
                sub_10000D03C(v244, v239);
                sub_10000CDB8(__p_8, v244);
              }
            }

            if (*(a1 + 144))
            {
              goto LABEL_330;
            }

LABEL_171:
            sub_10079D428(a4, &v220);
LABEL_297:

            goto LABEL_221;
          }

          v151 = (dword_100BC7CE0 - 19) < 0x7BD;
          v152 = (dword_100BC7CE0 - 22) < 0x7BA;
          if ((dword_100BC7CE0 - 5000) < 0x3E8)
          {
            v151 = 1;
            v152 = 1;
          }

          if ((dword_100BC7CE0 - 3000) >= 0x3E8)
          {
            v153 = v152;
          }

          else
          {
            v151 = 1;
            v153 = 1;
          }

          v204 = v153;
          if (v153)
          {
            LOBYTE(v153) = *(a1 + 144);
          }

          LOBYTE(v209) = v153 & 1;
          v154 = *(a1 + 144);
          v205 = v151;
          v245[1].n128_u8[7] = v151 & v154;
          *(&v210 + 1) = 0;
          v245[1].n128_u8[4] = v154;
          memset(v244, 0, sizeof(v244));
          sub_100039F24(v244);
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          memset(v239, 0, sizeof(v239));
          sub_100039F24(v239);
          if (_os_feature_enabled_impl())
          {
            LOBYTE(v217) = *(a1 + 144);
            v237 = xmmword_1008A4F0C;
            v238 = 0;
            sub_10000D03C(buf, &v237);
            *(v244 + 8) = *buf;
            v244[1].n128_u32[2] = v234;
            v244[1].n128_u8[12] = -127;
            v206 = sub_10002F16C(a2);
            v155 = [NSString stringWithFormat:@"%s-standard", v206];
            v156 = v244[0].n128_u64[0];
            v244[0].n128_u64[0] = v155;

            v244[2].n128_u8[0] = *(a1 + 144);
            v244[1].n128_u8[13] = v209;
            if (_os_feature_enabled_impl())
            {
              v237 = xmmword_1008A4F20;
              v238 = 0;
              sub_10000D03C(buf, &v237);
              *(v239 + 8) = *buf;
              v239[1].n128_u32[2] = v234;
              v239[1].n128_u8[12] = -127;
              v157 = [NSString stringWithFormat:@"%s-legacy", v206];
              v158 = v239[0].n128_u64[0];
              v239[0].n128_u64[0] = v157;

              LOBYTE(v240) = *(a1 + 144);
              v239[1].n128_u8[13] = v209;
            }
          }

          if ((dword_100BC7CE0 - 3000) < 0x3E8 || (dword_100BC7CE0 - 22) < 0x7BA || (dword_100BC7CE0 - 5000) <= 0x3E7)
          {
            LOWORD(v210) = 3;
            v207 = _os_feature_enabled_impl();
            v181 = qword_100BCE918;
            v182 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
            if (v182)
            {
              v203 = dword_100BC7CE0;
              v184 = sub_10002F16C(a2);
              v185 = *(a1 + 144);
              *buf = 67109890;
              *&buf[4] = v207;
              *&buf[8] = 1024;
              *&buf[10] = v203;
              *&buf[14] = 2080;
              v234 = v184;
              v235 = 1024;
              v236 = v185;
              _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "bomEnabled:%d chipset:%d usecase:%s fScreenState:%d", buf, 0x1Eu);
            }

            if (v207)
            {
              if (a2 == 65559 && (*(a1 + 144) & 1) == 0)
              {
                v186 = sub_10000C798(v182, v183);
                v187 = (*(*v186 + 384))(v186);
                if (v187)
                {
                  v189 = sub_10000C7D0(v187, v188);
                  v190 = (*(*v189 + 4128))(v189);
                  if (v190 == 25)
                  {
                    v245[1].n128_u8[4] = 1;
                    v245[2].n128_u64[1] = 0;
                    v245[3].n128_u64[0] = 0;
                    *(v245[3].n128_u64 + 7) = 0;
                    memset(v245[4].n128_u64 + 1, 0, 23);
                    *(&v245[3].n128_u16[7] + 1) = 4;
                    v245[5].n128_u16[4] = 4;
                    *(&v245[5].n128_u32[2] + 2) = 1638425;
                    v245[1].n128_u8[7] = v205;
                  }

                  v192 = sub_10000C7D0(v190, v191);
                  if ((*(*v192 + 4144))(v192) == 27 && _os_feature_enabled_impl())
                  {
                    memset(&v244[3].n128_f64[1] + 6, 0, 23);
                    memset(v244[2].n128_u32 + 2, 0, 24);
                    *(&v244[3].n128_u32[2] + 2) = 33488900;
                    *(&v244[5].n128_u16[2] + 1) = 4;
                    v244[5].n128_u32[2] = 1769499;
                    v244[2].n128_u16[0] = 257;
                    v244[1].n128_u8[13] = v204;
                    LOBYTE(v217) = 1;
                  }
                }
              }
            }
          }

          else if ((dword_100BC7CE0 - 19) > 0x7BC)
          {
            LOWORD(v210) = 0;
          }

          else
          {
            LOWORD(v210) = 2;
          }

          if ((dword_100BC7CE0 - 3000) < 0x3E8 || (dword_100BC7CE0 - 20) < 0x7BC || (dword_100BC7CE0 - 5000) <= 0x3E7)
          {
            v195 = *(a1 + 144) == 0;
            if (*(a1 + 144))
            {
              v196 = 30;
            }

            else
            {
              v196 = 0;
            }

            WORD4(v211) = v196;
            if (v195)
            {
              v194 = 0;
            }

            else
            {
              v194 = 300;
            }
          }

          else
          {
            if (!*(a1 + 144))
            {
              WORD4(v211) = 0;
              WORD6(v211) = 0;
              BYTE4(v209) = 1;
LABEL_326:
              sub_10003ABD0(v213 + 8, v245);
              if (_os_feature_enabled_impl())
              {
                sub_10003ACA0(&v218, v244);
                if (_os_feature_enabled_impl())
                {
                  sub_10003ACA0(&v218, v239);
                }
              }

              goto LABEL_330;
            }

            WORD4(v211) = 30;
            v194 = 300;
          }

          WORD6(v211) = v194;
          goto LABEL_326;
        }

LABEL_74:
        v245[5].n128_u16[7] = 0;
        memset(v245, 0, 32);
        *(v245[1].n128_u32 + 1) = 16843009;
        *(&v245[1].n128_u32[1] + 3) = 33620224;
        *(&v245[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
        v245[2].n128_u32[1] = 0xFFFF;
        *(&v245[2] + 8) = 0uLL;
        *(&v245[3] + 8) = 0uLL;
        *(&v245[4] + 8) = 0uLL;
        *(v245[5].n128_u64 + 6) = 0;
        *(&v245[1].n128_u16[2] + 1) = 4764;
        BYTE2(v209) = 1;
        v46 = sub_10000C798(v7, v8);
        v47 = (*(*v46 + 416))(v46);
        if ((v47 & 1) != 0 || (v49 = sub_10000C798(v47, v48), v47 = (*(*v49 + 408))(v49), v47))
        {
          v50 = sub_10000C798(v47, v48);
          v51 = (*(*v50 + 408))(v50);
          v245[1].n128_u8[7] = v51;
          v53 = sub_10000C798(v51, v52);
          LOBYTE(v209) = (*(*v53 + 408))(v53);
          WORD4(v211) = 30;
          WORD6(v211) = 30;
          LOWORD(v210) = 0;
          sub_10003ABD0(v213 + 8, v245);
          v54 = _os_feature_enabled_impl();
          if (!v54)
          {
            goto LABEL_184;
          }

          v239[0] = xmmword_1008A4F0C;
          v239[1].n128_u32[0] = 0;
          sub_10000D03C(v244, v239);
          sub_10000CDB8(__p_8, v244);
          v54 = _os_feature_enabled_impl();
          if (!v54)
          {
            goto LABEL_184;
          }
        }

        else
        {
          v121 = (dword_100BC7CE0 - 19) < 0x7BD;
          v122 = (dword_100BC7CE0 - 22) < 0x7BA;
          if ((dword_100BC7CE0 - 5000) < 0x3E8)
          {
            v121 = 1;
            v122 = 1;
          }

          v123 = (dword_100BC7CE0 - 3000) < 0x3E8 || v121;
          v245[1].n128_u8[7] = v123;
          v124 = (dword_100BC7CE0 - 3000) < 0x3E8 || v122;
          LOBYTE(v209) = v124;
          WORD4(v211) = 30;
          WORD6(v211) = 30;
          LOWORD(v210) = 0;
          sub_10003ABD0(v213 + 8, v245);
          v54 = _os_feature_enabled_impl();
          if (!v54)
          {
            goto LABEL_184;
          }

          v239[0] = xmmword_1008A4F0C;
          v239[1].n128_u32[0] = 0;
          sub_10000D03C(v244, v239);
          sub_10000CDB8(__p_8, v244);
          v54 = _os_feature_enabled_impl();
          if (!v54)
          {
            goto LABEL_184;
          }
        }

        v239[0] = xmmword_1008A4F20;
        v239[1].n128_u32[0] = 0;
        sub_10000D03C(v244, v239);
        sub_10000CDB8(__p_8, v244);
LABEL_184:
        if (a2 == 65567)
        {
          *&v211 = 6000;
          BYTE13(v209) = 1;
        }

        else if (a2 == 65547)
        {
          *&v211 = 6000;
        }

        else
        {
          v125 = sub_10000C798(v54, v55);
          if (((*(*v125 + 416))(v125) & 1) == 0)
          {
            *(&v210 + 1) = 39000;
            if ((a2 & 0xFFFFFFFE) == 0x1000C)
            {
              v126 = 63;
            }

            else
            {
              v126 = 0;
            }

            if (qword_100B50910 != -1)
            {
              sub_100874420();
            }

            v127 = sub_10003C714(off_100B50908, v126, 1u);
            if (~v127 & 6) == 0 || (v127)
            {
              WORD6(v211) = 90;
              BYTE7(v209) = 1;
              BYTE14(v211) = 1;
            }

            *&v211 = 120000;
            *(&v209 + 9) = 257;
            BYTE11(v209) = 1;
          }
        }

        LODWORD(v212) = 1;
        BYTE8(v209) = 1;
        v128 = v211;
        *(a4 + 16) = v210;
        *(a4 + 32) = v128;
        *(a4 + 48) = 1;
        *a4 = v209;
        v129 = v213[0];
        v213[0] = 0uLL;
        *(a4 + 56) = v129;
        *(a4 + 72) = v213[1];
        v213[1] = 0uLL;
        *(a4 + 88) = *__p_8;
        memset(__p_8, 0, sizeof(__p_8));
        v130 = v215;
        *(a4 + 104) = *&__p_8[16];
        *(a4 + 112) = v130;
        v131 = *(&v215 + 1);
        v132 = v216;
        *(a4 + 120) = *(&v215 + 1);
        *(a4 + 128) = v132;
        v133 = a4 + 120;
        if (v132)
        {
          *(v131 + 16) = v133;
          *&v215 = &v215 + 8;
          *(&v215 + 1) = 0;
          v216 = 0;
        }

        else
        {
          *(a4 + 112) = v133;
        }

        goto LABEL_254;
      }

      if (a2 > 267)
      {
        if (a2 == 268)
        {
          if (*(a1 + 144) != 1)
          {
            goto LABEL_125;
          }

          v84 = sub_10000C798(v7, v8);
          if (((*(*v84 + 352))(v84) & 1) == 0)
          {
LABEL_204:
            v9 = v224;
            v91 = v225;
            v92 = *v226;
            v89 = *&v226[16];
            v88 = v228;
            v90 = v227;
            v87 = v229;
            goto LABEL_205;
          }

          if (qword_100B50910 != -1)
          {
            sub_100874420();
          }

          v85 = sub_10003C714(off_100B50908, 0xFFFFu, 1u);
          WORD4(v211) = 30;
          WORD6(v211) = 40;
          *(&v209 + 9) = 257;
          BYTE11(v209) = 1;
          LODWORD(v209) = 0x1000000;
          *&v211 = 5000;
          if (~v85 & 6) == 0 || (v85)
          {
            WORD6(v211) = 90;
            BYTE7(v209) = 1;
            BYTE14(v211) = 1;
          }

          BYTE8(v209) = 1;
          v86 = &v209;
LABEL_150:
          sub_10079D428(a4, v86);
          goto LABEL_221;
        }

        if (a2 == 269)
        {
          BYTE4(v209) = 1;
          BYTE8(v209) = 1;
          LODWORD(v212) = 1;
LABEL_159:
          v116 = v210;
          *a4 = v209;
          *(a4 + 16) = v116;
          *(a4 + 32) = v211;
          *(a4 + 48) = v212;
          v213[0] = 0uLL;
          *(a4 + 56) = 0u;
          *(a4 + 72) = 0u;
          v213[1] = 0uLL;
          *(a4 + 96) = 0;
          *(a4 + 104) = 0;
          *(a4 + 88) = 0;
          memset(__p_8, 0, sizeof(__p_8));
          *(a4 + 120) = 0;
          *(a4 + 128) = 0;
          v117 = a4 + 120;
          *(v117 - 8) = v117;
          *(v117 + 16) = 1;
          *(v117 + 32) = 0;
          *(v117 + 40) = 0;
          *(v117 + 24) = 0;
LABEL_220:
          v219 = 0;
          v218 = 0uLL;
          goto LABEL_221;
        }

        goto LABEL_158;
      }

      if (a2 != 259)
      {
        if (a2 != 265)
        {
          goto LABEL_158;
        }

        if (qword_100B50910 != -1)
        {
          sub_100874420();
        }

        v23 = sub_10003C714(off_100B50908, 0x6Fu, 0);
        v24 = v23;
        WORD4(v211) = 30;
        v26 = sub_10000C798(v23, v25);
        v27 = (*(*v26 + 352))(v26);
        if (v27)
        {
          if ((~v24 & 6) == 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v138 = sub_10000C798(v27, v28);
          v27 = (*(*v138 + 456))(v138);
          if ((~v24 & 6) != 0)
          {
            v139 = 0;
          }

          else
          {
            v139 = v27;
          }

          if (v139)
          {
LABEL_45:
            WORD6(v211) = 60;
            v29 = sub_10000C798(v27, v28);
            if ((*(*v29 + 688))(v29))
            {
              BYTE14(v211) = 1;
            }

            goto LABEL_214;
          }
        }

        WORD6(v211) = 40;
LABEL_214:
        LODWORD(v209) = 16843009;
        *(&v210 + 1) = 0;
        WORD4(v209) = 257;
        BYTE10(v209) = 1;
        LODWORD(v212) = 1;
        v140 = v211;
        *(a4 + 16) = v210;
        *(a4 + 32) = v140;
        *(a4 + 48) = 1;
        *a4 = v209;
        v141 = v213[0];
        v213[0] = 0uLL;
        *(a4 + 56) = v141;
        *(a4 + 72) = v213[1];
        v213[1] = 0uLL;
        *(a4 + 88) = *__p_8;
        memset(__p_8, 0, sizeof(__p_8));
        v114 = *&__p_8[16];
        v115 = v215;
        goto LABEL_215;
      }

      if (*(a1 + 144) != 1)
      {
        goto LABEL_149;
      }

      v245[5].n128_u16[7] = 0;
      memset(v245, 0, 32);
      *(v245[1].n128_u64 + 1) = 0x101079C00010101;
      *(&v245[1].n128_u16[4] + 1) = 513;
      *(&v245[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
      v245[2].n128_u32[1] = 0xFFFF;
      *(&v245[2] + 8) = 0uLL;
      *(&v245[3] + 8) = 0uLL;
      *(&v245[4] + 8) = 0uLL;
      *(v245[5].n128_u64 + 6) = 0;
      sub_10003ABD0(v213 + 8, v245);
      if (_os_feature_enabled_impl())
      {
        LOBYTE(v217) = 0;
        v239[0] = xmmword_1008A4F0C;
        v239[1].n128_u32[0] = 0;
        sub_10000D03C(v244, v239);
        sub_10000CDB8(__p_8, v244);
        if (_os_feature_enabled_impl())
        {
          v239[0] = xmmword_1008A4F20;
          v239[1].n128_u32[0] = 0;
          sub_10000D03C(v244, v239);
          sub_10000CDB8(__p_8, v244);
        }
      }

LABEL_116:
      WORD4(v211) = 30;
      WORD6(v211) = 300;
      LOWORD(v210) = 0;
      LOWORD(v209) = 257;
      *(&v210 + 1) = 0;
      BYTE4(v209) = 1;
      BYTE8(v209) = 1;
      LODWORD(v212) = 1;
      sub_10079D428(a4, &v209);

      goto LABEL_221;
    }

    if (a2 > 65552)
    {
      if (a2 > 65558)
      {
        if (a2 == 65559)
        {
          goto LABEL_88;
        }

        if (a2 != 65567)
        {
          goto LABEL_158;
        }

        goto LABEL_74;
      }

      if (a2 == 65553)
      {
        if (*(a1 + 144) != 1)
        {
          goto LABEL_149;
        }

        v245[5].n128_u16[7] = 0;
        memset(v245, 0, 32);
        *(v245[1].n128_u64 + 1) = 0x101129C00010101;
        *(&v245[1].n128_u16[4] + 1) = 513;
        *(&v245[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
        v245[2].n128_u32[1] = 0xFFFF;
        *(&v245[2] + 8) = 0uLL;
        *(&v245[3] + 8) = 0uLL;
        *(&v245[4] + 8) = 0uLL;
        *(v245[5].n128_u64 + 6) = 0;
        sub_10003ABD0(v213 + 8, v245);
        if (_os_feature_enabled_impl())
        {
          LOBYTE(v217) = 0;
          v239[0] = xmmword_1008A4F0C;
          v239[1].n128_u32[0] = 0;
          sub_10000D03C(v244, v239);
          sub_10000CDB8(__p_8, v244);
          if (_os_feature_enabled_impl())
          {
            v239[0] = xmmword_1008A4F20;
            v239[1].n128_u32[0] = 0;
            sub_10000D03C(v244, v239);
            sub_10000CDB8(__p_8, v244);
          }
        }

        goto LABEL_116;
      }

      if (a2 != 65554)
      {
        goto LABEL_158;
      }

      v245[5].n128_u16[7] = 0;
      memset(v245, 0, 32);
      *(v245[1].n128_u64 + 1) = 0x101129C01010101;
      *(&v245[1].n128_u16[4] + 1) = 513;
      *(&v245[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
      v245[2].n128_u32[1] = 0xFFFF;
      *(&v245[2] + 8) = 0uLL;
      *(&v245[3] + 8) = 0uLL;
      *(&v245[4] + 8) = 0uLL;
      *(v245[5].n128_u64 + 6) = 0;
      LOBYTE(v209) = 1;
      WORD4(v211) = 30;
      WORD6(v211) = 30;
      LOWORD(v210) = 0;
      sub_10003ABD0(v213 + 8, v245);
      if (_os_feature_enabled_impl())
      {
        v239[0] = xmmword_1008A4F0C;
        v239[1].n128_u32[0] = 0;
        sub_10000D03C(v244, v239);
        sub_10000CDB8(__p_8, v244);
        if (_os_feature_enabled_impl())
        {
          v239[0] = xmmword_1008A4F20;
          v239[1].n128_u32[0] = 0;
          sub_10000D03C(v244, v239);
          sub_10000CDB8(__p_8, v244);
        }
      }

      LODWORD(v212) = 1;
      BYTE8(v209) = 1;
      v30 = v211;
      *(a4 + 16) = v210;
      *(a4 + 32) = v30;
      *(a4 + 48) = 1;
      *a4 = v209;
      *(a4 + 56) = v213[0];
      *(a4 + 72) = v213[1];
      memset(v213 + 8, 0, 24);
      *(a4 + 88) = *__p_8;
      *&v213[0] = 0;
      memset(__p_8, 0, sizeof(__p_8));
      v31 = v215;
      *(a4 + 104) = *&__p_8[16];
      *(a4 + 112) = v31;
      v32 = *(&v215 + 1);
      v33 = v216;
      *(a4 + 120) = *(&v215 + 1);
      *(a4 + 128) = v33;
      v34 = a4 + 120;
      if (v33)
      {
        *(v32 + 16) = v34;
        *&v215 = &v215 + 8;
        *(&v215 + 1) = 0;
        v216 = 0;
      }

      else
      {
        *(a4 + 112) = v34;
      }
    }

    else if (a2 > 65550)
    {
      if (a2 == 65551)
      {
        v245[5].n128_u16[7] = 0;
        memset(v245, 0, 32);
        *(v245[1].n128_u64 + 1) = 0x101129C01010101;
        *(&v245[1].n128_u16[4] + 1) = 513;
        *(&v245[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
        v245[2].n128_u32[1] = 0xFFFF;
        *(&v245[2] + 8) = 0uLL;
        *(&v245[3] + 8) = 0uLL;
        *(&v245[4] + 8) = 0uLL;
        *(v245[5].n128_u64 + 6) = 0;
        LOBYTE(v209) = 1;
        WORD4(v211) = 30;
        WORD6(v211) = 40;
        LOWORD(v210) = 0;
        *&v211 = 6000;
        sub_10003ABD0(v213 + 8, v245);
        if (_os_feature_enabled_impl())
        {
          v239[0] = xmmword_1008A4F0C;
          v239[1].n128_u32[0] = 0;
          sub_10000D03C(v244, v239);
          sub_10000CDB8(__p_8, v244);
          if (_os_feature_enabled_impl())
          {
            v239[0] = xmmword_1008A4F20;
            v239[1].n128_u32[0] = 0;
            sub_10000D03C(v244, v239);
            sub_10000CDB8(__p_8, v244);
          }
        }

        LODWORD(v212) = 1;
        BYTE8(v209) = 1;
        v107 = v211;
        *(a4 + 16) = v210;
        *(a4 + 32) = v107;
        *(a4 + 48) = 1;
        *a4 = v209;
        *(a4 + 56) = v213[0];
        *(a4 + 72) = v213[1];
        memset(v213 + 8, 0, 24);
        *(a4 + 88) = *__p_8;
        *&v213[0] = 0;
        memset(__p_8, 0, sizeof(__p_8));
        v108 = v215;
        *(a4 + 104) = *&__p_8[16];
        *(a4 + 112) = v108;
        v109 = *(&v215 + 1);
        v110 = v216;
        *(a4 + 120) = *(&v215 + 1);
        *(a4 + 128) = v110;
        v111 = a4 + 120;
        if (v110)
        {
          *(v109 + 16) = v111;
          *&v215 = &v215 + 8;
          *(&v215 + 1) = 0;
          v216 = 0;
        }

        else
        {
          *(a4 + 112) = v111;
        }
      }

      else
      {
        v245[5].n128_u16[7] = 0;
        memset(v245, 0, 32);
        *(v245[1].n128_u64 + 1) = 0x101129C01010101;
        *(&v245[1].n128_u16[4] + 1) = 513;
        *(&v245[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
        v245[2].n128_u32[1] = 0xFFFF;
        *(&v245[2] + 8) = 0uLL;
        *(&v245[3] + 8) = 0uLL;
        *(&v245[4] + 8) = 0uLL;
        *(v245[5].n128_u64 + 6) = 0;
        LOBYTE(v209) = 1;
        LOWORD(v210) = 0;
        *&v211 = 60000;
        v39 = *(a1 + 144);
        BYTE5(v209) = (v39 & 1) == 0;
        if (v39)
        {
          sub_10003ABD0(v213 + 8, v245);
          if (_os_feature_enabled_impl())
          {
            v239[0] = xmmword_1008A4F0C;
            v239[1].n128_u32[0] = 0;
            sub_10000D03C(v244, v239);
            sub_10000CDB8(__p_8, v244);
            if (_os_feature_enabled_impl())
            {
              v239[0] = xmmword_1008A4F20;
              v239[1].n128_u32[0] = 0;
              sub_10000D03C(v244, v239);
              sub_10000CDB8(__p_8, v244);
            }
          }

          WORD4(v211) = 30;
          WORD6(v211) = 90;
          v9 = v213[0];
          v40 = v213[1];
          v41 = *__p_8;
          v42 = *&__p_8[16];
          v43 = *(&v215 + 1);
          v45 = v215;
          v44 = v216;
        }

        else
        {
          v44 = 0;
          v43 = 0;
          v42 = 0;
          WORD4(v211) = 0;
          WORD6(v211) = 0;
          v45 = &v215 + 8;
          v40 = 0uLL;
          v41 = 0uLL;
        }

        LODWORD(v212) = 1;
        BYTE8(v209) = 1;
        v134 = v211;
        *(a4 + 16) = v210;
        *(a4 + 32) = v134;
        *(a4 + 48) = 1;
        *a4 = v209;
        v213[0] = 0uLL;
        *(a4 + 56) = v9;
        *(a4 + 72) = v40;
        v213[1] = 0uLL;
        *(a4 + 88) = v41;
        *(a4 + 104) = v42;
        memset(__p_8, 0, sizeof(__p_8));
        *(a4 + 120) = v43;
        v135 = a4 + 120;
        *(a4 + 112) = v45;
        *(a4 + 128) = v44;
        if (v44)
        {
          *(v43 + 16) = v135;
          *&v215 = &v215 + 8;
          *(&v215 + 1) = 0;
          v216 = 0;
        }

        else
        {
          *(a4 + 112) = v135;
        }
      }
    }

    else
    {
      if (a2 == 65549)
      {
        v245[5].n128_u16[7] = 0;
        memset(v245, 0, 32);
        *(v245[1].n128_u32 + 1) = 16843009;
        *(&v245[1].n128_u32[1] + 3) = 33620224;
        *(&v245[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
        v245[2].n128_u32[1] = 0xFFFF;
        *(&v245[2] + 8) = 0uLL;
        *(&v245[3] + 8) = 0uLL;
        *(&v245[4] + 8) = 0uLL;
        *(v245[5].n128_u64 + 6) = 0;
        *(&v245[1].n128_u16[2] + 1) = 4764;
        v101 = sub_10000C798(v7, v8);
        if ((*(*v101 + 416))(v101))
        {
          goto LABEL_172;
        }

        if (qword_100B50910 != -1)
        {
          sub_100874420();
        }

        v102 = sub_10003C714(off_100B50908, 0x3Fu, 1u);
        v245[1].n128_u8[7] = 1;
        LOBYTE(v209) = 1;
        BYTE2(v209) = 1;
        if (*(a1 + 144) != 1)
        {
LABEL_172:
          sub_10079D428(a4, &v220);
          v120 = 0;
        }

        else
        {
          v104 = v102;
          v105 = sub_10000C798(v102, v103);
          v106 = (*(*v105 + 408))(v105);
          WORD4(v211) = 30;
          if (v106)
          {
            WORD6(v211) = 40;
          }

          else
          {
            if ((v104 & 3) != 0)
            {
              if ((v104 & 5) != 0)
              {
                v193 = 90;
              }

              else
              {
                v193 = 60;
              }

              WORD6(v211) = v193;
              BYTE7(v209) = 1;
              BYTE14(v211) = 1;
            }

            else
            {
              WORD6(v211) = 30;
            }

            *(&v209 + 9) = 16843009;
          }

          LOWORD(v210) = 0;
          *(&v210 + 1) = 0;
          sub_10003ABD0(v213 + 8, v245);
          if (_os_feature_enabled_impl())
          {
            v239[0] = xmmword_1008A4F0C;
            v239[1].n128_u32[0] = 0;
            sub_10000D03C(v244, v239);
            sub_10000CDB8(__p_8, v244);
            if (_os_feature_enabled_impl())
            {
              v239[0] = xmmword_1008A4F20;
              v239[1].n128_u32[0] = 0;
              sub_10000D03C(v244, v239);
              sub_10000CDB8(__p_8, v244);
            }
          }

          LODWORD(v212) = 1;
          BYTE8(v209) = 1;
          sub_10079D428(a4, &v209);
          v120 = v245[0].n128_u64[1];
        }

        goto LABEL_221;
      }

      v245[5].n128_u16[7] = 0;
      memset(v245, 0, 32);
      *(v245[1].n128_u64 + 1) = 0x101129C01010101;
      *(&v245[1].n128_u16[4] + 1) = 513;
      *(&v245[1].n128_u64[1] + 4) = 0xFFFF0000FFFFLL;
      v245[2].n128_u32[1] = 0xFFFF;
      *(&v245[2] + 8) = 0uLL;
      *(&v245[3] + 8) = 0uLL;
      *(&v245[4] + 8) = 0uLL;
      *(v245[5].n128_u64 + 6) = 0;
      LOBYTE(v209) = 1;
      BYTE2(v209) = 1;
      WORD4(v211) = 30;
      WORD6(v211) = 300;
      LOWORD(v210) = 0;
      sub_10003ABD0(v213 + 8, v245);
      if (_os_feature_enabled_impl())
      {
        v239[0] = xmmword_1008A4F0C;
        v239[1].n128_u32[0] = 0;
        sub_10000D03C(v244, v239);
        sub_10000CDB8(__p_8, v244);
        if (_os_feature_enabled_impl())
        {
          v239[0] = xmmword_1008A4F20;
          v239[1].n128_u32[0] = 0;
          sub_10000D03C(v244, v239);
          sub_10000CDB8(__p_8, v244);
        }
      }

      *&v211 = 60000;
      LODWORD(v212) = 1;
      BYTE8(v209) = 1;
      *(a4 + 48) = 1;
      v18 = v210;
      *a4 = v209;
      *(a4 + 16) = v18;
      *(a4 + 32) = v211;
      *(a4 + 56) = v213[0];
      *(a4 + 72) = v213[1];
      memset(v213 + 8, 0, 24);
      *(a4 + 88) = *__p_8;
      *&v213[0] = 0;
      memset(__p_8, 0, sizeof(__p_8));
      v19 = v215;
      *(a4 + 104) = *&__p_8[16];
      *(a4 + 112) = v19;
      v20 = *(&v215 + 1);
      v21 = v216;
      *(a4 + 120) = *(&v215 + 1);
      *(a4 + 128) = v21;
      v22 = a4 + 120;
      if (v21)
      {
        *(v20 + 16) = v22;
        *&v215 = &v215 + 8;
        *(&v215 + 1) = 0;
        v216 = 0;
      }

      else
      {
        *(a4 + 112) = v22;
      }
    }

LABEL_254:
    *(a4 + 136) = v217;
    *(a4 + 144) = v218;
    *(a4 + 160) = v219;
    v219 = 0;
    v218 = 0uLL;

    goto LABEL_221;
  }

  if (a2 > 2147418114)
  {
    if (a2 > 2147418117)
    {
      if ((a2 - 2147418118) <= 0xC)
      {
        if (((1 << (a2 - 6)) & 0x10C8) != 0)
        {
          *&__p_8[8] = 0;
          sub_10000CEDC(&v215, 0);
          v216 = 0;
          v215 = &v215 + 8;
          WORD4(v211) = 30;
          if (a2 == 2147418125)
          {
            v17 = 300;
          }

          else
          {
            v17 = 30;
          }

          WORD6(v211) = v17;
          LOWORD(v209) = 257;
          *(&v210 + 1) = 0;
          v244[0] = xmmword_1008A4F98;
          v244[1].n128_u32[0] = 0;
          sub_10000D03C(v245, v244);
          sub_10000CDB8(__p_8, v245);
          v244[0] = xmmword_1008A4F98;
          v244[1].n128_u32[0] = 0;
          sub_10000D03C(v245, v244);
          v244[0].n128_u64[0] = v245;
          *(sub_1007B25FC(&v215, v245, &unk_1008A9BD0, v244) + 48) = -127;
          BYTE8(v209) = 1;
          LODWORD(v212) = 1;
          LOBYTE(v217) = 1;
          if (a2 == 2147418130)
          {
            HIBYTE(v211) = 4;
          }

          else if (a2 == 2147418121)
          {
            BYTE13(v209) = 1;
          }

          v66 = v210;
          *a4 = v209;
          *(a4 + 16) = v66;
          *(a4 + 32) = v211;
          *(a4 + 48) = v212;
          v67 = v213[0];
          v213[0] = 0uLL;
          *(a4 + 56) = v67;
          *(a4 + 72) = v213[1];
          v213[1] = 0uLL;
          *(a4 + 88) = *__p_8;
          memset(__p_8, 0, sizeof(__p_8));
          v68 = v215;
          *(a4 + 104) = *&__p_8[16];
          *(a4 + 112) = v68;
          v69 = *(&v215 + 1);
          v70 = v216;
          *(a4 + 120) = *(&v215 + 1);
          *(a4 + 128) = v70;
          v71 = a4 + 120;
          if (v70)
          {
            *(v69 + 16) = v71;
            *&v215 = &v215 + 8;
            *(&v215 + 1) = 0;
            v216 = 0;
          }

          else
          {
            *(a4 + 112) = v71;
          }

          v72 = 1;
          goto LABEL_219;
        }

        if (a2 == 2147418118)
        {
          *&__p_8[8] = 0;
          WORD4(v211) = 30;
          WORD6(v211) = 30;
          LOWORD(v210) = 0;
          LOWORD(v209) = 257;
          *(&v210 + 1) = 0;
          v244[0] = xmmword_1008A4F98;
          v244[1].n128_u32[0] = 0;
          sub_10000D03C(v245, v244);
          sub_10000CDB8(__p_8, v245);
          v244[0] = xmmword_1008A4FAC;
          v244[1].n128_u32[0] = 0;
          sub_10000D03C(v245, v244);
          sub_10000CDB8(__p_8, v245);
          BYTE8(v209) = 1;
          v112 = v211;
          *(a4 + 16) = v210;
          *(a4 + 32) = v112;
          *(a4 + 48) = v212;
          *a4 = v209;
          v113 = v213[0];
          v213[0] = 0uLL;
          *(a4 + 56) = v113;
          *(a4 + 72) = v213[1];
          v213[1] = 0uLL;
          goto LABEL_157;
        }

        if (a2 == 2147418119)
        {
          WORD4(v211) = 30;
          WORD6(v211) = 30;
          LOWORD(v210) = 0;
          LOWORD(v209) = 256;
          *&v211 = 10000;
LABEL_130:
          BYTE8(v209) = 1;
          *(a4 + 48) = v212;
          v94 = v210;
          *a4 = v209;
          *(a4 + 16) = v94;
          *(a4 + 32) = v211;
          goto LABEL_131;
        }
      }

      goto LABEL_158;
    }

    if (a2 == 2147418115)
    {
      WORD4(v211) = 30;
      WORD6(v211) = 30;
      LOWORD(v210) = 0;
      v36 = 257;
      goto LABEL_128;
    }

    if (a2 == 2147418116)
    {
      WORD4(v211) = 30;
      WORD6(v211) = 30;
      LOWORD(v210) = 0;
      LOWORD(v209) = 256;
      *(&v210 + 1) = 20000;
      BYTE8(v209) = 1;
      *(a4 + 48) = v212;
      v93 = v211;
      *(a4 + 16) = v210;
      *(a4 + 32) = v93;
      *a4 = v209;
LABEL_131:
      *(a4 + 56) = 0u;
      *(a4 + 72) = 0u;
      goto LABEL_132;
    }

    WORD4(v211) = 30;
    WORD6(v211) = 30;
    LOWORD(v210) = 0;
    LOWORD(v209) = 256;
    *(&v210 + 1) = 0;
    BYTE3(v209) = 1;
    BYTE8(v209) = 1;
    *(a4 + 48) = v212;
    v35 = v210;
    *a4 = v209;
    *(a4 + 16) = v35;
    *(a4 + 32) = v211;
LABEL_111:
    *(a4 + 72) = 0u;
    *(a4 + 56) = 0u;
LABEL_132:
    memset(v213, 0, sizeof(v213));
    *(a4 + 88) = 0;
    *(a4 + 96) = 0;
    *(a4 + 104) = 0;
    memset(__p_8, 0, sizeof(__p_8));
    *(a4 + 120) = 0;
    *(a4 + 128) = 0;
    v95 = a4 + 120;
    *(v95 - 8) = v95;
    *(v95 + 16) = 1;
    *(v95 + 24) = 0;
    *(v95 + 32) = 0;
    *(v95 + 40) = 0;
    v218 = 0uLL;
    v219 = 0;
    goto LABEL_221;
  }

  if (a2 <= 983044)
  {
    if (a2 <= 983042)
    {
      if ((a2 - 851968) < 2)
      {
        if (*(a1 + 144) == 1)
        {
          v10 = sub_10000C798(v7, v8);
          v11 = (*(*v10 + 392))(v10);
          if (v11 & 1) != 0 || (v13 = sub_10000C798(v11, v12), ((*(*v13 + 384))(v13)))
          {
            LOBYTE(v217) = 1;
            WORD4(v211) = 30;
            WORD6(v211) = 40;
            LOBYTE(v209) = 0;
            *(&v210 + 1) = 15000;
            v244[0] = xmmword_1008A4F70;
            v244[1].n128_u32[0] = 0;
            sub_10000D03C(v245, v244);
            sub_10000CDB8(__p_8, v245);
            BYTE8(v209) = 1;
            v14 = *&v213[0];
            *&v213[0] = &stru_100B0CE28;

            v15 = v210;
            *a4 = v209;
            *(a4 + 16) = v15;
            *(a4 + 32) = v211;
            *(a4 + 48) = v212;
            v16 = v213[0];
            *&v213[0] = 0;
            *(a4 + 56) = v16;
            *(a4 + 72) = v213[1];
            memset(v213 + 8, 0, 24);
LABEL_157:
            *(a4 + 88) = *__p_8;
            memset(__p_8, 0, sizeof(__p_8));
            v114 = *&__p_8[16];
            v115 = v215;
LABEL_215:
            *(a4 + 104) = v114;
            *(a4 + 112) = v115;
            v142 = *(&v215 + 1);
            v143 = v216;
            *(a4 + 120) = *(&v215 + 1);
            *(a4 + 128) = v143;
            v144 = a4 + 120;
            if (v143)
            {
              *(v142 + 16) = v144;
              *&v215 = &v215 + 8;
              *(&v215 + 1) = 0;
              v216 = 0;
            }

            else
            {
              *(a4 + 112) = v144;
            }

            v72 = v217;
LABEL_219:
            *(a4 + 136) = v72;
            *(a4 + 144) = v218;
            *(a4 + 160) = v219;
            goto LABEL_220;
          }

          goto LABEL_204;
        }

LABEL_125:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        v90 = &v228;
        v91 = 0uLL;
        v92 = 0uLL;
LABEL_205:
        v136 = v221;
        *a4 = v220;
        *(a4 + 16) = v136;
        *(a4 + 32) = v222;
        *(a4 + 48) = v223;
        v224 = 0uLL;
        *(a4 + 56) = v9;
        *(a4 + 72) = v91;
        v225 = 0uLL;
        *(a4 + 88) = v92;
        *(a4 + 104) = v89;
        memset(v226, 0, sizeof(v226));
        *(a4 + 120) = v88;
        v137 = a4 + 120;
        *(a4 + 112) = v90;
        *(a4 + 128) = v87;
        if (v87)
        {
          v88[2] = v137;
          v227 = &v228;
          v228 = 0;
          v229 = 0;
        }

        else
        {
          *(a4 + 112) = v137;
        }

        *(a4 + 136) = v230;
        *(a4 + 144) = v231;
        *(a4 + 160) = v232;
        v232 = 0;
        v231 = 0uLL;
        goto LABEL_221;
      }

      if (a2 == 983042)
      {
        if (_os_feature_enabled_impl())
        {
          *&__p_8[8] = *__p_8;
          sub_10000CEDC(&v215, *(&v215 + 1));
          v216 = 0;
          v215 = &v215 + 8;
          WORD4(v211) = 30;
          WORD6(v211) = 30;
          LOWORD(v209) = 256;
          *(&v210 + 1) = 0;
          BYTE8(v209) = 1;
          LODWORD(v212) = 1;
          v244[0] = xmmword_1008A4F84;
          v244[1].n128_u32[0] = 0;
          sub_10000D03C(v245, v244);
          v244[0].n128_u64[0] = v245;
          *(sub_1007B25FC(&v215, v245, &unk_1008A9BD0, v244) + 48) = -127;
          BYTE13(v209) = 1;
          memset(v245, 0, sizeof(v245));
          sub_100039F24(v245);
          LOBYTE(v217) = 1;
          v239[0] = xmmword_1008A4F84;
          v239[1].n128_u32[0] = 0;
          sub_10000D03C(v244, v239);
          *(v245 + 8) = v244[0];
          v245[1].n128_u32[2] = v244[1].n128_u32[0];
          v245[1].n128_u8[12] = -127;
          v73 = [NSString stringWithFormat:@"%s", "SOSBeaconPrecisionFindResponse"];
          v74 = v245[0].n128_u64[0];
          v245[0].n128_u64[0] = v73;

          v75 = [v208 objectForKey:@"CBUseCaseOptionSOSBeaconSubjectID"];
          v76 = [v208 objectForKey:@"CBUseCaseOptionSOSBeaconSearcherID"];
          v244[0] = xmmword_1008C5687;
          *(v244 + 11) = *(&xmmword_1008C5687 + 11);
          if (v75 && [v75 length] == 4)
          {
            [v75 getBytes:v244[0].n128_u32 + 2 length:4];
            v77 = -1;
          }

          else
          {
            v77 = 0;
          }

          if (v76 && [v76 length] == 4)
          {
            [v76 getBytes:&v244[0].n128_i32[1] + 2 length:4];
            v159 = -1;
          }

          else
          {
            v159 = 0;
          }

          *(&v245[2] + 1) = v244[0];
          *(&v245[2] + 12) = *(v244 + 11);
          v245[3].n128_u16[6] = -16144;
          *(&v245[3].n128_u32[3] + 2) = v77;
          *(v245[4].n128_u32 + 2) = v159;
          memset(&v245[4].n128_i32[1] + 2, 0, 17);
          v245[5].n128_u32[2] = 1769499;
          v245[2].n128_u8[0] = 1;
          sub_10003ACA0(&v218, v245);
          sub_10079D428(a4, &v209);

          goto LABEL_221;
        }

        goto LABEL_149;
      }

      goto LABEL_158;
    }

    if (a2 != 983043)
    {
      if (_os_feature_enabled_impl())
      {
        *&__p_8[8] = *__p_8;
        sub_10000CEDC(&v215, *(&v215 + 1));
        v216 = 0;
        v215 = &v215 + 8;
        WORD4(v211) = 30;
        WORD6(v211) = 30;
        LOWORD(v209) = 257;
        *(&v210 + 1) = 0;
        BYTE8(v209) = 1;
        LODWORD(v212) = 1;
        v244[0] = xmmword_1008A4F84;
        v244[1].n128_u32[0] = 0;
        sub_10000D03C(v245, v244);
        v244[0].n128_u64[0] = v245;
        *(sub_1007B25FC(&v215, v245, &unk_1008A9BD0, v244) + 48) = -127;
        BYTE13(v209) = 1;
        memset(v245, 0, sizeof(v245));
        sub_100039F24(v245);
        LOBYTE(v217) = 1;
        v239[0] = xmmword_1008A4F84;
        v239[1].n128_u32[0] = 0;
        sub_10000D03C(v244, v239);
        *(v245 + 8) = v244[0];
        v245[1].n128_u32[2] = v244[1].n128_u32[0];
        v245[1].n128_u8[12] = -127;
        v37 = [NSString stringWithFormat:@"%s", "SOSBeaconScan"];
        v38 = v245[0].n128_u64[0];
        v245[0].n128_u64[0] = v37;

        v245[1].n128_u8[13] = 1;
        memset(v245[2].n128_u64 + 1, 0, 24);
        *(&v245[3] + 12) = xmmword_1008C5630;
        *(&v245[4] + 7) = *(&xmmword_1008C5630 + 11);
        v245[3].n128_u32[2] = 0;
        v245[5].n128_u32[2] = 1769499;
        v245[2].n128_u8[0] = 1;
        sub_10003ACA0(&v218, v245);
        sub_10079D428(a4, &v209);

        goto LABEL_221;
      }

      goto LABEL_149;
    }

    if (_os_feature_enabled_impl())
    {
      *&__p_8[8] = *__p_8;
      sub_10000CEDC(&v215, *(&v215 + 1));
      v216 = 0;
      v215 = &v215 + 8;
      WORD4(v211) = 30;
      v98 = sub_10000C798(v96, v97);
      if ((*(*v98 + 1024))(v98))
      {
        if (qword_100BC7CD8 != -1)
        {
          sub_1008743F8();
        }

        LOWORD(v99) = word_100B54F88;
        v100 = (v99 * 0.625);
      }

      else
      {
        LOWORD(v100) = 30;
      }

      WORD5(v211) = v100;
      BYTE14(v209) = 1;
      WORD6(v211) = 966;
      LOWORD(v209) = 256;
      *(&v210 + 1) = 0;
      BYTE8(v209) = 1;
      LODWORD(v212) = 1;
      v244[0] = xmmword_1008A4F84;
      v244[1].n128_u32[0] = 0;
      sub_10000D03C(v245, v244);
      v244[0].n128_u64[0] = v245;
      *(sub_1007B25FC(&v215, v245, &unk_1008A9BD0, v244) + 48) = -127;
      BYTE13(v209) = 1;
      memset(v245, 0, sizeof(v245));
      sub_100039F24(v245);
      LOBYTE(v217) = 1;
      v239[0] = xmmword_1008A4F84;
      v239[1].n128_u32[0] = 0;
      sub_10000D03C(v244, v239);
      *(v245 + 8) = v244[0];
      v245[1].n128_u32[2] = v244[1].n128_u32[0];
      v245[1].n128_u8[12] = -127;
      v165 = [NSString stringWithFormat:@"%s", "SOSBeaconPrecisionFindRequest"];
      v166 = v245[0].n128_u64[0];
      v245[0].n128_u64[0] = v165;

      v167 = [v208 objectForKey:@"CBUseCaseOptionSOSBeaconSubjectID"];
      v168 = v167;
      v244[0] = xmmword_1008C564B;
      *(v244 + 11) = *(&xmmword_1008C564B + 11);
      if (v167 && [v167 length] == 4)
      {
        [v168 getBytes:v244[0].n128_u32 + 2 length:4];
        v169 = -1;
      }

      else
      {
        v169 = 0;
      }

      *(&v245[2] + 1) = v244[0];
      *(&v245[2] + 12) = *(v244 + 11);
      v245[3].n128_u16[6] = -7952;
      *(&v245[3].n128_u32[3] + 2) = v169;
      memset(v245[4].n128_u32 + 2, 0, 21);
      v245[5].n128_u32[2] = 1769499;
      v245[2].n128_u8[0] = 1;
      sub_10003ACA0(&v218, v245);
      sub_10079D428(a4, &v209);

      goto LABEL_221;
    }

LABEL_149:
    v86 = &v220;
    goto LABEL_150;
  }

  if (a2 > 2147418112)
  {
    if (a2 != 2147418113)
    {
      WORD4(v211) = 30;
      WORD6(v211) = 30;
      LOWORD(v210) = 0;
      v36 = 256;
LABEL_128:
      LOWORD(v209) = v36;
      goto LABEL_129;
    }

    WORD4(v211) = 30;
    WORD6(v211) = 30;
    LOWORD(v210) = 0;
    LOWORD(v209) = 256;
    *(&v210 + 1) = 0;
    BYTE4(v209) = *(a1 + 144) ^ 1;
    BYTE8(v209) = 1;
    *(a4 + 48) = v212;
    v83 = v211;
    *(a4 + 16) = v210;
    *(a4 + 32) = v83;
    *a4 = v209;
    goto LABEL_111;
  }

  if (a2 != 983045)
  {
    if (a2 == 2147418112)
    {
      WORD4(v211) = 30;
      WORD6(v211) = 30;
      LOWORD(v210) = 0;
      LOWORD(v209) = 0;
LABEL_129:
      *(&v210 + 1) = 0;
      goto LABEL_130;
    }

LABEL_158:
    BYTE8(v209) = 0;
    goto LABEL_159;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    goto LABEL_149;
  }

  *&__p_8[8] = *__p_8;
  sub_10000CEDC(&v215, *(&v215 + 1));
  v216 = 0;
  v215 = &v215 + 8;
  WORD4(v211) = 30;
  v80 = sub_10000C798(v78, v79);
  if ((*(*v80 + 1024))(v80))
  {
    if (qword_100BC7CD8 != -1)
    {
      sub_1008743F8();
    }

    LOWORD(v81) = word_100B54F8A;
    v82 = (v81 * 0.625);
  }

  else
  {
    LOWORD(v82) = 30;
  }

  WORD5(v211) = v82;
  BYTE14(v209) = 1;
  WORD6(v211) = 966;
  LOWORD(v209) = 256;
  *(&v210 + 1) = 0;
  BYTE8(v209) = 1;
  LODWORD(v212) = 1;
  v244[0] = xmmword_1008A4F84;
  v244[1].n128_u32[0] = 0;
  sub_10000D03C(v245, v244);
  v244[0].n128_u64[0] = v245;
  *(sub_1007B25FC(&v215, v245, &unk_1008A9BD0, v244) + 48) = -127;
  BYTE13(v209) = 1;
  memset(v245, 0, sizeof(v245));
  sub_100039F24(v245);
  LOBYTE(v217) = 1;
  v239[0] = xmmword_1008A4F84;
  v239[1].n128_u32[0] = 0;
  sub_10000D03C(v244, v239);
  *(v245 + 8) = v244[0];
  v245[1].n128_u32[2] = v244[1].n128_u32[0];
  v245[1].n128_u8[12] = -127;
  v160 = [NSString stringWithFormat:@"%s", "SOSBeaconActivateScan"];
  v161 = v245[0].n128_u64[0];
  v245[0].n128_u64[0] = v160;

  v162 = [v208 objectForKey:@"CBUseCaseOptionSOSBeaconSubjectID"];
  v163 = v162;
  v244[0] = xmmword_1008C5669;
  *(v244 + 11) = *(&xmmword_1008C5669 + 11);
  if (v162 && [v162 length] == 4)
  {
    [v163 getBytes:v244[0].n128_u32 + 2 length:4];
    v164 = -1;
  }

  else
  {
    v164 = 0;
  }

  *(&v245[2] + 1) = v244[0];
  *(&v245[2] + 12) = *(v244 + 11);
  v245[3].n128_u16[6] = 240;
  *(&v245[3].n128_u32[3] + 2) = v164;
  memset(v245[4].n128_u32 + 2, 0, 21);
  v245[5].n128_u32[2] = 1769499;
  v245[2].n128_u8[0] = 1;
  sub_10003ACA0(&v218, v245);
  sub_10079D428(a4, &v209);

LABEL_221:
  v245[0].n128_u64[0] = &v218;
  sub_10000CF30(v245);
  sub_10000CEDC(&v215, *(&v215 + 1));
  if (*__p_8)
  {
    *&__p_8[8] = *__p_8;
    operator delete(*__p_8);
  }

  v245[0].n128_u64[0] = v213 + 8;
  sub_10000CFB0(v245);

  *&v209 = &v231;
  sub_10000CF30(&v209);
  sub_10000CEDC(&v227, v228);
  if (*v226)
  {
    *&v226[8] = *v226;
    operator delete(*v226);
  }

  *&v209 = &v224 + 8;
  sub_10000CFB0(&v209);
}

void sub_100039C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_guard_abort(&qword_100BC7CE8);

  _Unwind_Resume(a1);
}

uint64_t sub_100039F24(uint64_t a1)
{
  *a1 = 0;
  sub_10003A364((a1 + 8));
  *(a1 + 28) = 16842881;
  *(a1 + 32) = 1;
  *(a1 + 88) = 0;
  *(a1 + 33) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 65) = 0u;
  *(a1 + 79) = 0;
  return a1;
}

uint64_t sub_100039F90(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 194) == a2)
  {
    return 1;
  }

  v3 = *(a1 + 216);
  if (!v3)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v2 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v6 = *v13;
    v7 = a2;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = v7 == [v9 longLongValue] >> 16;

        if (v10)
        {
          v2 = 1;
          goto LABEL_14;
        }
      }

      v2 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v2;
}

uint64_t sub_10003A100(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 192) == a2)
  {
    return 1;
  }

  v3 = *(a1 + 216);
  if (!v3)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v2 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v6 = *v13;
    v7 = a2;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 longLongValue] == v7;

        if (v10)
        {
          v2 = 1;
          goto LABEL_14;
        }
      }

      v2 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v2;
}

void sub_10003A278(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
  }
}

uint64_t sub_10003A2D4(int a1, uint64_t a2, uint64_t a3, id *location)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    objc_storeStrong(location, *v5);
    objc_storeStrong(location + 1, *(v5 + 8));
    *(location + 1) = *(v5 + 16);
    v7 = *(v5 + 32);
    v8 = *(v5 + 48);
    v9 = *(v5 + 64);
    *(location + 78) = *(v5 + 78);
    *(location + 3) = v8;
    *(location + 4) = v9;
    *(location + 2) = v7;
    v5 += 96;
    location += 12;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_10003A36C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  v7 = objc_retainBlock(*(a2 + 7));
  v8 = *(a1 + 56);
  *(a1 + 56) = v7;

  if (a1 == a2)
  {
    *(a1 + 136) = *(a2 + 136);
  }

  else
  {
    sub_10003A44C((a1 + 64), *(a2 + 8), *(a2 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 9) - *(a2 + 8)) >> 5));
    sub_10003A598((a1 + 88), *(a2 + 11), *(a2 + 12), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 12) - *(a2 + 11)) >> 2));
    sub_10003B0E0((a1 + 112), *(a2 + 14), a2 + 15);
    *(a1 + 136) = *(a2 + 136);
    sub_10003AEF8((a1 + 144), *(a2 + 18), *(a2 + 19), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 19) - *(a2 + 18)) >> 5));
  }

  return a1;
}

void sub_10003A44C(id **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) < a4)
  {
    sub_1000677B8(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
      {
        v10 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10000CD6C(a1, v10);
    }

    sub_1000C7698();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 5) >= a4)
  {
    sub_10003A2D4(&v14, a2, a3, v8);
    sub_10003A9EC(a1, v12);
  }

  else
  {
    sub_10003A2D4(&v13, a2, a2 + v11, v8);
    a1[1] = sub_100018078(a1, a2 + v11, a3, a1[1]);
  }
}

char *sub_10003A598(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - result) >> 2) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xCCCCCCCCCCCCCCCLL)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x666666666666666)
      {
        v11 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v11 = v10;
      }

      sub_10003B814(a1, v11);
    }

    sub_1000C7698();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 2) >= a4)
  {
    while (v5 != a3)
    {
      v19 = *v5;
      *(result + 4) = *(v5 + 4);
      *result = v19;
      result += 20;
      v5 = (v5 + 20);
    }

    a1[1] = result;
  }

  else
  {
    v14 = (a2 + v13);
    if (v12 != result)
    {
      do
      {
        v15 = *v5;
        *(result + 4) = *(v5 + 4);
        *result = v15;
        result += 20;
        v5 = (v5 + 20);
        v13 -= 20;
      }

      while (v13);
      v12 = a1[1];
    }

    v16 = v12;
    if (v14 != a3)
    {
      v16 = v12;
      v17 = v12;
      do
      {
        v18 = *v14;
        *(v17 + 4) = *(v14 + 4);
        *v17 = v18;
        v17 += 20;
        v14 = (v14 + 20);
        v16 += 20;
      }

      while (v14 != a3);
    }

    a1[1] = v16;
  }

  return result;
}

void sub_10003A720(uint64_t a1)
{
  v4 = *(a1 + 88);
  v3 = *(a1 + 96);
  v2 = a1 + 88;
  while (v3 != v4)
  {
    v3 -= 96;
    sub_1000326E8(v2, v3);
  }

  *(a1 + 96) = v4;
  v5 = a1 + 280;
  v6 = 0;
  sub_10003B254(&v5, 0x100uLL);
  v5 = a1 + 248;
  v6 = 0;
  sub_10003B254(&v5, 0x100uLL);
}

uint64_t sub_10003A7A8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049CC0C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E5E0 != -1)
  {
    dispatch_once(&qword_100B6E5E0, block);
  }

  return byte_100B6E5D8;
}

uint64_t sub_10003A838(uint64_t a1)
{
  sub_10003A278(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10003A870(uint64_t a1, void **a2, void **a3, _OWORD *a4)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      v4[1] = 0;
      *a4 = v5;
      a4[1] = *(v4 + 1);
      v6 = *(v4 + 2);
      v7 = *(v4 + 3);
      v8 = *(v4 + 4);
      *(a4 + 78) = *(v4 + 78);
      a4[3] = v7;
      a4[4] = v8;
      a4[2] = v6;
      v4 += 12;
      a4 += 6;
    }

    while (v4 != a3);
  }

  sub_10003AC58(a1, a2, a3);
}

uint64_t sub_10003A8BC(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000C7698();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    sub_1000180FC(a1, v6);
  }

  v7 = 96 * v2;
  v14[0] = 0;
  v14[1] = v7;
  v14[3] = 0;
  *v7 = *a2;
  v8 = *(a2 + 24);
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = v8;
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 88);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 88) = v11;
  *(v7 + 72) = v10;
  *(v7 + 56) = v9;
  v14[2] = v7 + 96;
  sub_10003AD2C(a1, v14);
  v12 = a1[1];
  sub_10003AE14(v14);
  return v12;
}

void sub_10003A9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10003AE14(va);
  _Unwind_Resume(a1);
}

void sub_10003A9EC(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 96)
  {

    v5 = *(i - 96);
  }

  *(a1 + 8) = a2;
}

uint64_t sub_10003AA40(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E358 != -1)
  {
    sub_1008312EC();
  }

  return byte_100B6E350;
}

uint64_t sub_10003AA78(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000C7698();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_10000CD14(a1, v6);
  }

  v7 = 96 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  v9 = *(a2 + 48);
  v8 = *(a2 + 64);
  v10 = *(a2 + 32);
  *(v7 + 78) = *(a2 + 78);
  *(v7 + 48) = v9;
  *(v7 + 64) = v8;
  *(v7 + 32) = v10;
  *&v19 = v7 + 96;
  v11 = *(a1 + 8);
  v12 = (v7 + *a1 - v11);
  sub_10003A870(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_10003A838(&v17);
  return v16;
}

void sub_10003ABBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10003A838(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003ABD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = sub_10003AA78(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 16) = *(a2 + 16);
    v6 = *(a2 + 48);
    v5 = *(a2 + 64);
    v7 = *(a2 + 32);
    *(v4 + 78) = *(a2 + 78);
    *(v4 + 48) = v6;
    *(v4 + 64) = v5;
    *(v4 + 32) = v7;
    result = v4 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_10003AC58(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 12;
    }

    while (v4 != a3);
  }
}

uint64_t sub_10003ACA0(void *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_10003A8BC(a1, a2);
  }

  else
  {
    *v4 = *a2;
    v5 = *(a2 + 24);
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 24) = v5;
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    *(v4 + 40) = *(a2 + 40);
    *(v4 + 88) = v8;
    *(v4 + 72) = v7;
    *(v4 + 56) = v6;
    result = v4 + 96;
  }

  a1[1] = result;
  return result;
}

void sub_10003AD2C(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      v10 = *(v7 + 1);
      *(v8 + 24) = *(v7 + 3);
      *(v8 + 8) = v10;
      v11 = *(v7 + 5);
      v12 = *(v7 + 7);
      v13 = *(v7 + 9);
      *(v8 + 88) = *(v7 + 22);
      *(v8 + 72) = v13;
      *(v8 + 56) = v12;
      *(v8 + 40) = v11;
      v7 += 12;
      v8 += 96;
    }

    while (v7 != v4);
    do
    {
      v14 = *v5;
      v5 += 12;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v15 = *a1;
  *a1 = v6;
  *(a1 + 8) = v15;
  a2[1] = v15;
  v16 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v16;
  v17 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

uint64_t sub_10003AE14(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10003AE68(int a1, uint64_t a2, uint64_t a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      objc_storeStrong(location, *v5);
      v7 = *(v5 + 8);
      *(location + 6) = *(v5 + 24);
      *(location + 1) = v7;
      v8 = *(v5 + 28);
      v9 = *(v5 + 44);
      v10 = *(v5 + 60);
      *(location + 76) = *(v5 + 76);
      *(location + 60) = v10;
      *(location + 44) = v9;
      *(location + 28) = v8;
      v5 += 96;
      location += 12;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_10003AEF8(char **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) < a4)
  {
    sub_1007B1B10(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
      {
        v9 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_100018154(a1, v9);
    }

    sub_1000C7698();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 5) >= a4)
  {
    sub_10003AE68(&v23, a2, a3, v7);
    v19 = v18;
    v20 = a1[1];
    if (v20 != v18)
    {
      do
      {
        v21 = *(v20 - 96);
        v20 -= 96;
      }

      while (v20 != v19);
    }

    a1[1] = v19;
  }

  else
  {
    v11 = a2 + v10;
    sub_10003AE68(&v22, a2, a2 + v10, v7);
    v12 = a1[1];
    if (v11 != a3)
    {
      v13 = a1[1];
      do
      {
        *v13 = *v11;
        v14 = *(v11 + 24);
        *(v13 + 8) = *(v11 + 8);
        *(v13 + 24) = v14;
        v15 = *(v11 + 56);
        v16 = *(v11 + 72);
        v17 = *(v11 + 88);
        *(v13 + 40) = *(v11 + 40);
        *(v13 + 88) = v17;
        *(v13 + 72) = v16;
        *(v13 + 56) = v15;
        v11 += 96;
        v13 += 96;
        v12 += 96;
      }

      while (v11 != a3);
    }

    a1[1] = v12;
  }
}

void *sub_10003B0E0(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v10 = *(v9 + 28);
          *(v8 + 11) = *(v9 + 11);
          *(v8 + 28) = v10;
          *(v8 + 48) = *(v9 + 48);
          sub_100713EE8(v5, v8);
          v8 = v14;
          v15 = v14;
          if (v14)
          {
            v14 = sub_100083B10(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_100084E60(&v13);
  }

  if (a2 != a3)
  {
    sub_1007B1A4C(v5, a2 + 28);
  }

  return result;
}

void sub_10003B240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

void sub_10003B254(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_10003B304(uint64_t a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, void *a12, char a13, char a14, char a15, char a16, char a17, void *a18, int a19, int a20, int a21)
{
  v28 = a2;
  v29 = a12;
  v30 = a18;
  v31 = v28;
  *a1 = v31;
  *(a1 + 8) = a3;
  *(a1 + 9) = a4;
  v32 = *(a5 + 8);
  *(a1 + 16) = &off_100AE0A78;
  *(a1 + 24) = v32;
  if (v32)
  {
    sub_10000C69C(v32);
  }

  v33 = *(a6 + 8);
  *(a1 + 32) = &off_100AE0A78;
  *(a1 + 40) = v33;
  if (v33)
  {
    sub_10000C69C(v33);
  }

  *(a1 + 48) = a7;
  *(a1 + 49) = a8;
  *(a1 + 50) = a9;
  *(a1 + 51) = a10;
  *(a1 + 52) = a11;
  *(a1 + 56) = v29;
  *(a1 + 64) = a13;
  *(a1 + 65) = a14;
  *(a1 + 66) = a15;
  *(a1 + 67) = a16;
  *(a1 + 68) = a17;
  *(a1 + 72) = v30;
  *(a1 + 80) = a19;
  *(a1 + 84) = a20;
  *(a1 + 88) = a21;

  return a1;
}

void sub_10003B454(_Unwind_Exception *a1)
{
  *(v1 + 16) = v5;
  v7 = *(v1 + 24);
  if (v7)
  {
    sub_10000C808(v7);
  }

  _Unwind_Resume(a1);
}

void sub_10003B48C(void **a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13)
{
  v17 = *a4;
  v18 = *(a4 + 16);
  sub_10003B610(v19, a2, a3, &v17, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  v15 = a1[16];
  if (v15 >= a1[17])
  {
    v16 = sub_10006E108((a1 + 15), v19);
  }

  else
  {
    sub_100018288((a1 + 15), a1[16], v19);
    v16 = (v15 + 112);
    a1[16] = v15 + 112;
  }

  a1[16] = v16;

  v22 = &off_100AE0A78;
  if (v23)
  {
    sub_10000C808(v23);
  }

  v20 = &off_100AE0A78;
  if (v21)
  {
    sub_10000C808(v21);
  }

  sub_10000CDB8(a1 + 1, a4);
}

void sub_10003B5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1001388F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003B610(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13)
{
  v20 = a2;
  v21 = a3;
  v22 = v20;
  *a1 = v22;
  v23 = v21;
  *(a1 + 8) = v23;
  *(a1 + 16) = 0;
  v24 = *(a4 + 16);
  *(a1 + 20) = *a4;
  *(a1 + 36) = v24;
  v25 = *(a5 + 8);
  *(a1 + 40) = &off_100AE0A78;
  *(a1 + 48) = v25;
  if (v25)
  {
    sub_10000C69C(v25);
  }

  v26 = *(a6 + 8);
  *(a1 + 56) = &off_100AE0A78;
  *(a1 + 64) = v26;
  if (v26)
  {
    sub_10000C69C(v26);
  }

  *(a1 + 72) = a7;
  *(a1 + 73) = a8;
  *(a1 + 75) = a9;
  *(a1 + 76) = a10;
  *(a1 + 77) = a11;
  *(a1 + 78) = a12;
  *(a1 + 79) = a13;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;

  return a1;
}

void sub_10003B748(_Unwind_Exception *a1)
{
  *(v1 + 40) = v4;
  v6 = *(v1 + 48);
  if (v6)
  {
    sub_10000C808(v6);
  }

  _Unwind_Resume(a1);
}

void sub_10003B78C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 96;
        sub_1000326E8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10003B814(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    sub_100018404(a1, a2);
  }

  sub_1000C7698();
}

size_t sub_10003B85C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__str = 0u;
  v10 = 0u;
  v3 = ((*a1 >> 1) | (*a1 << 7));
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v8 = *(a1 + 4);
      v4 = "0x%08X";
      goto LABEL_10;
    }

    if (v3 == 8)
    {
      snprintf(__str, 0x80uLL, "%02X%02X%02X%02X-%02X%02X-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X", *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 8), *(a1 + 9));
      goto LABEL_11;
    }

LABEL_19:
    v7 = sub_10000E92C();
    sub_100693F74(v7, 0);
  }

  if (!((*a1 >> 1) | (*a1 << 7)))
  {
    strcpy(__str, "(empty)");
    goto LABEL_11;
  }

  if (v3 != 1)
  {
    goto LABEL_19;
  }

  v8 = *(a1 + 4);
  v4 = "0x%04X";
LABEL_10:
  snprintf(__str, 0x80uLL, v4, v8);
LABEL_11:
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000C7698();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  *(a2 + v6) = 0;
  return result;
}

void sub_10003BA40(uint64_t a1, uint64_t a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100024C50;
  v6[3] = &unk_100AF6AC8;
  v7 = a3;
  v5 = v7;
  sub_100028B38(a1, a2, v6);
}

void sub_10003BAFC(uint64_t a1, uint64_t a2)
{
  if (qword_100BC7D08 != -1)
  {
    sub_100874624();
  }

  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 4072))(v3) && !*(a1 + 2232))
  {
    sub_100088DD4(2, 5, byte_100BC7D00);
  }

  if (qword_100B50910 != -1)
  {
    sub_100874420();
  }

  sub_10003C364(off_100B50908, 0);
  sub_10007AE00(a1);
}

uint64_t sub_10003BC90(unsigned __int8 *a1)
{
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v47 = 0u;
  v48 = 0u;
  *v46 = 0u;
  memset(v45, 0, sizeof(v45));
  v44 = 0u;
  v2 = &v44;
  sub_100008760(&v44);
  if (a1[5])
  {
    v3 = "disabled";
    v4 = 8;
  }

  else if (a1[8] == 1)
  {
    sub_100007774(&v44, "leech:", 6);
    v5 = std::ostream::operator<<();
    sub_100007774(v5, " ", 1);
    sub_100007774(&v44, "disabled:", 9);
    v6 = std::ostream::operator<<();
    sub_100007774(v6, " ", 1);
    sub_100007774(&v44, "AllowDups:", 10);
    v7 = std::ostream::operator<<();
    sub_100007774(v7, " ", 1);
    sub_100007774(&v44, "WhenLocked:", 11);
    v8 = std::ostream::operator<<();
    sub_100007774(v8, " ", 1);
    sub_100007774(&v44, "BeforeFirstUnlock:", 18);
    v9 = std::ostream::operator<<();
    sub_100007774(v9, " ", 1);
    sub_100007774(&v44, "activeScan:", 11);
    v10 = std::ostream::operator<<();
    sub_100007774(v10, " ", 1);
    sub_100007774(&v44, "advBufferConfig:", 16);
    v11 = std::ostream::operator<<();
    sub_100007774(v11, " ", 1);
    sub_100007774(&v44, "coexImpacted:", 13);
    v12 = std::ostream::operator<<();
    sub_100007774(v12, " ", 1);
    sub_100007774(&v44, "scanDurationMS:", 15);
    v13 = std::ostream::operator<<();
    sub_100007774(v13, " ", 1);
    sub_100007774(&v44, "ms scanDurationTimeoutMs:", 25);
    v14 = std::ostream::operator<<();
    sub_100007774(v14, " ", 1);
    sub_100007774(&v44, "ms scanWindow:", 14);
    v15 = std::ostream::operator<<();
    sub_100007774(v15, " ", 1);
    sub_100007774(&v44, "ms scanInterval:", 16);
    v16 = std::ostream::operator<<();
    sub_100007774(v16, " ", 1);
    sub_100007774(&v44, "ms isSCOffloading:", 18);
    v17 = std::ostream::operator<<();
    sub_100007774(v17, " ", 1);
    v18 = sub_100007774(&v44, "scanningPhys:", 13);
    LOBYTE(__p) = a1[47];
    v19 = sub_100007774(v18, &__p, 1);
    sub_100007774(v19, " ", 1);
    sub_100007774(&v44, "privileged:", 11);
    v20 = std::ostream::operator<<();
    sub_100007774(v20, " ", 1);
    v21 = sub_100007774(&v44, "operatorType:", 13);
    v22 = *(a1 + 12);
    if (v22)
    {
      v23 = "OR ";
    }

    else
    {
      v23 = "AND ";
    }

    if (v22)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    sub_100007774(v21, v23, v24);
    sub_100007774(&v44, "configureControllerUUIDs:", 25);
    v25 = std::ostream::operator<<();
    sub_100007774(v25, " ", 1);
    sub_100007774(&v44, "AppleTypes[", 11);
    v27 = *(a1 + 8);
    v26 = *(a1 + 9);
    if (v26 == v27)
    {
      sub_100007774(&v44, "none", 4);
    }

    else
    {
      do
      {
        v28 = std::ostream::operator<<();
        if (*(v27 + 20))
        {
          v29 = "Y";
        }

        else
        {
          v29 = "N";
        }

        v30 = sub_100007774(v28, v29, 1);
        if (*(v27 + 23))
        {
          v31 = "D";
        }

        else
        {
          v31 = "";
        }

        v32 = sub_100007774(v30, v31, *(v27 + 23) != 0);
        sub_100007774(v32, " ", 1);
        v27 += 96;
      }

      while (v27 != v26);
    }

    sub_100007774(&v44, "] uuids[", 8);
    v33 = *(a1 + 11);
    v34 = *(a1 + 12);
    if (v34 == v33)
    {
      sub_100007774(&v44, "none", 4);
    }

    else
    {
      do
      {
        sub_10003B85C(v33, &__p);
        if ((v43 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          LODWORD(p_p) = __p;
        }

        if ((v43 & 0x80u) == 0)
        {
          v36 = v43;
        }

        else
        {
          v36 = v42;
        }

        v37 = sub_100007774(&v44, p_p, v36);
        sub_100007774(v37, " ", 1);
        if (v43 < 0)
        {
          operator delete(__p);
        }

        v33 += 20;
      }

      while (v33 != v34);
    }

    sub_100007774(&v44, "]", 1);
    v38 = sub_100007774(&v44, "UseCaseFilterBlock:", 19);
    if (*(a1 + 7))
    {
      v39 = "N";
    }

    else
    {
      v39 = "Y";
    }

    v4 = 1;
    v2 = sub_100007774(v38, v39, 1);
    v3 = " ";
  }

  else
  {
    v3 = "NA";
    v2 = &v44;
    v4 = 2;
  }

  sub_100007774(v2, v3, v4);
  std::stringbuf::str();
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[1]);
  }

  std::locale::~locale(v45);
  std::ostream::~ostream();
  return std::ios::~ios();
}

BOOL sub_10003C330(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_10000C7D0(a1, a2) + 800);
  v3 = v2 - 5000;
  v4 = v2 - 1;
  return v3 < 0x3E8 || v4 < 0x12;
}

void sub_10003C364(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100017F4C(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003C3E8;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = v2;
  sub_10000CA94(v4, v5);
}

void sub_10003C3E8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4 != *(v3 + 516))
  {
    v7 = v1;
    v8 = v2;
    *(v3 + 516) = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10007BA24;
    v5[3] = &unk_100AFF980;
    v6 = *(a1 + 40);
    sub_100015514((v3 + 128), v5);
  }
}

void sub_10003C478(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 4072))(v3))
  {
    v4 = *(a1 + 2232);
    if (v4)
    {
      v5 = qword_100BCE9C8;
      if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v6 = (*(*v4 + 16))(v4), v7 = 136446210, v8 = v6, _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Destroying %{public}s", &v7, 0xCu), (v4 = *(a1 + 2232)) != 0))
      {
        (*(*v4 + 8))(v4);
      }

      *(a1 + 2232) = 0;
    }
  }

  if (qword_100B50910 != -1)
  {
    sub_100874420();
  }

  sub_10003C364(off_100B50908, 1);
  sub_10003C5EC(a1);
}

void sub_10003C5EC(uint64_t result)
{
  if (*(result + 2744) != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = *(result + 2744);
    if (Current <= v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = ((Current - v3) * 1000.0);
    }

    v5 = *(result + 2752);
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      sub_100874674();
    }

    v6 = result + 176 * v5;
    v7 = v6 + 2392;
    v8 = v4;
    v9 = *(v6 + 2524);
    if (v9 >= v4)
    {
      LOWORD(v9) = v4;
    }

    *(v6 + 2524) = v9;
    if (*(v6 + 2526) > v4)
    {
      v8 = *(v6 + 2526);
    }

    *(v6 + 2526) = v8;
    v10 = v4 / 0xA;
    if (v4 > 0xC7)
    {
      v10 = 19;
    }

    ++*(v7 + 4 * v10 + 8);
    if (*(result + 2753) == 1)
    {
      *(v7 + 152) += v4;
    }

    if (*(result + 2754) == 1)
    {
      *(v7 + 164) += v4;
    }

    *(result + 2751) = 0;
    *(result + 2744) = 0;
  }
}

uint64_t sub_10003C714(uint64_t a1, unsigned __int16 a2, unsigned __int8 a3)
{
  if ((*(a1 + 386) & a2 & 0x7FLL) != 0 && *(a1 + 280) == 1 && *(a1 + 284) == 1)
  {
    v3 = 4;
  }

  else if (*(a1 + 288) == 1 && *(a1 + 280) == 1)
  {
    if (((*(a1 + 284) == 1) & a3) != 0)
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 205) & 1) != 0 || (*(a1 + 206) & 1) != 0 || (*(a1 + 208))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a1 + 212);
  }

  if (*(a1 + 280) == 1)
  {
    v5 = 2 * (*(a1 + 284) == 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10003C888(a1);
  v7 = 8;
  if (!v6)
  {
    v7 = 0;
  }

  return v4 | v3 | v5 | v7;
}

uint64_t sub_10003C804(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E510 != -1)
  {
    sub_1008313F0();
  }

  return byte_100B6E508;
}

BOOL sub_10003C83C(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (!v1)
  {
    return 0;
  }

  if (v1 <= 0x7CF)
  {
    return v1 > 0x15;
  }

  if (v1 <= 0xF9F)
  {
    return v1 != 2000;
  }

  return v1 - 5000 < 0x3E8;
}

uint64_t sub_10003C888(uint64_t a1)
{
  if ((*(a1 + 205) & 1) == 0 && *(a1 + 206) != 1)
  {
    return 0;
  }

  if (qword_100B50B60 != -1)
  {
    sub_10084AA90();
  }

  v2 = qword_100B50B58;

  return sub_100379610(v2);
}

uint64_t sub_10003C8F4(uint64_t a1, uint64_t a2)
{
  if (!a2 || !*(a2 + 8))
  {
    return 0;
  }

  v3 = sub_100028FA8(a2);
  if (v3 == 2147418120 || v3 == 131101)
  {
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_100028FA8(a2);
      *buf = 136315138;
      v25 = sub_10002F16C(v5);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wall power scan boost for %s is allowed", buf, 0xCu);
    }

    return 1;
  }

  else
  {
    v8 = sub_100032B14(a2);
    v9 = v8;
    if (v8 && [v8 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = *v20;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            v15 = [v14 longLongValue];
            if (v15 == 2147418120 || v15 == 131101)
            {
              v17 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                v18 = sub_10002F16C([v14 longLongValue]);
                *buf = 136315138;
                v25 = v18;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Wall power scan boost for %s is allowed", buf, 0xCu);
              }

              v6 = 1;
              goto LABEL_29;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          v6 = 0;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v6 = 0;
      }

LABEL_29:
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t sub_10003CB84(uint64_t a1, uint64_t a2)
{
  if (!a2 || !*(a2 + 8))
  {
    return 0;
  }

  v3 = sub_100028FA8(a2);
  if ((v3 - 983043) < 3 || v3 == 2147418121 || v3 == 65567)
  {
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_100028FA8(a2);
      *buf = 136315138;
      v26 = sub_10002F16C(v5);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MRC for %s is allowed", buf, 0xCu);
    }

    return 1;
  }

  else
  {
    v8 = sub_100032B14(a2);
    v9 = v8;
    if (v8 && [v8 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        v12 = *v21;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            v15 = [v14 longLongValue];
            if (v15 - 983043 < 3 || v15 == 2147418121 || v15 == 65567)
            {
              v18 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                v19 = sub_10002F16C([v14 longLongValue]);
                *buf = 136315138;
                v26 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MRC for %s is allowed", buf, 0xCu);
              }

              v6 = 1;
              goto LABEL_33;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v6 = 0;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v6 = 0;
      }

LABEL_33:
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t sub_10003CE34(_BYTE *a1)
{
  if (a1[205] & 1) != 0 || (a1[206] & 1) != 0 || (a1[207])
  {
    v1 = 0;
  }

  else
  {
    v1 = a1[212] ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_10003CEAC(uint64_t a1, int a2, int a3)
{
  if (a2 == 48 && a3 == 48)
  {
    return 0;
  }

  if (a2 == 64 && a3 == 48)
  {
    return 1;
  }

  if (a2 == 96 && a3 == 48)
  {
    return 2;
  }

  if (a2 == 144 && a3 == 48)
  {
    return 3;
  }

  if (a2 == 480 && a3 == 48)
  {
    return 4;
  }

  if (a3 == 48 && (a2 & 0xFFFE) == 0x608)
  {
    return 5;
  }

  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2 == 4800;
  }

  if (v4)
  {
    return 6;
  }

  else
  {
    return 7;
  }
}

BOOL sub_10003CF58(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  if (a4)
  {
    v6 = 100 * (WORD1(a2) + WORD2(a2)) / a4 < 0x32;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_10000C798(a1, a2);
  v8 = (*(*v7 + 944))(v7);
  if (a3 == 6)
  {
    return (a2 & 0xFFFFFFFFFFFFLL) == 0x2000000020;
  }

  if (a3 != 5)
  {
    return 0;
  }

  if (v8 != 1)
  {
    return v8 == 2;
  }

  return v6;
}

uint64_t sub_10003D024(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A0434;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E6D8 != -1)
  {
    dispatch_once(&qword_100B6E6D8, block);
  }

  return dword_100B6E6D0;
}

uint64_t sub_10003D0B4(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E4E8 != -1)
  {
    sub_1008313DC();
  }

  return byte_100B6E4E0;
}

uint64_t sub_10003D0EC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_100B6E6E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6E6E8))
  {
    v2 = (*(*a1 + 352))(a1);
    if (v2)
    {
      v4 = sub_10000C7D0(v2, v3);
      LODWORD(v2) = (*(*v4 + 2592))(v4);
      if (v2)
      {
        LOBYTE(v2) = sub_10000C60C(a1);
      }
    }

    byte_100B6E6E0 = v2;
    __cxa_guard_release(&qword_100B6E6E8);
  }

  if (qword_100B6E6F0 != -1)
  {
    sub_100831508();
  }

  return byte_100B6E6E0;
}

void sub_10003D1F8(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 224);
  v4 = (a1 + 232);
  if (v3 != (a1 + 232))
  {
    do
    {
      v5 = v3[5];
      if (!(*(*v5 + 16))(v5))
      {
        sub_10003D2E0(v5, v9);
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }
}

void sub_10003D2E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 357) == 1 && *(a1 + 120))
  {
    sub_100052C08(a1, 141, v3);
  }
}

uint64_t sub_10003D35C(uint64_t a1, int *a2)
{
  v3 = IOPSCopyExternalPowerAdapterDetails();
  if (!v3)
  {
    v10 = IOPSCopyPowerSourcesInfo();
    if (!v10)
    {
      LODWORD(v6) = 0;
      return v6 ^ 1;
    }

    v4 = v10;
    v11 = IOPSGetProvidingPowerSourceType(v10);
    if (v11 && CFEqual(v11, @"Battery Power"))
    {
      *a2 = 0;
      LODWORD(v6) = 1;
      goto LABEL_15;
    }

LABEL_14:
    LODWORD(v6) = 0;
    goto LABEL_15;
  }

  v4 = v3;
  if (!CFDictionaryContainsKey(v3, @"FamilyCode"))
  {
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(v4, @"FamilyCode");
  v6 = Value;
  if (Value)
  {
    v7 = CFGetTypeID(Value);
    if (v7 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      v8 = CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
      LODWORD(v6) = v8 != 0;
      if (v8)
      {
        if (valuePtr == -536723452)
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }

        *a2 = v9;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
  CFRelease(v4);
  return v6 ^ 1;
}

uint64_t sub_10003D460(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 1) == 1)
  {
    v2 = *(v1 + 144);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_10003D490(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 8))
  {
    v3 = sub_100028FA8(a2);
    if (v3 == 2147418120 || v3 == 131101)
    {
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    if (v3 == 2147418120 || v3 == 131101)
    {
      v6 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_100028FA8(a2);
        *buf = 134218242;
        v28 = v5 * 0.625;
        v29 = 2080;
        v30 = sub_10002F16C(v7);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Scan boost incremental window %.2f msec for %s", buf, 0x16u);
      }
    }

    v8 = sub_100032B14(a2);
    v9 = v8;
    if (v8 && [v8 count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v21 = v9;
      if (v11)
      {
        v12 = *v23;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            v15 = [v14 longLongValue];
            if (v15 == 2147418120 || v15 == 131101)
            {
              v17 = 32;
            }

            else
            {
              v17 = 0;
            }

            if (v17 > v5)
            {
              v18 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                v19 = sub_10002F16C([v14 longLongValue]);
                *buf = 134218242;
                v28 = v17 * 0.625;
                v29 = 2080;
                v30 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Scan boost incremental window %.2f msec for %s", buf, 0x16u);
              }

              LOWORD(v5) = 32;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v11);
      }

      v9 = v21;
    }
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

uint64_t sub_10003D7A4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A0308;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E6C8 != -1)
  {
    dispatch_once(&qword_100B6E6C8, block);
  }

  return dword_100B6E6C0;
}

uint64_t sub_10003D834(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1392) == 1)
  {
    v3 = *(a1 + 1393);
  }

  else
  {
    v4 = *(a1 + 800);
    v5 = v4 - 1 > 0x7CE || v4 > 0x13;
    v6 = (1 << v4) & 0x83000;
    v7 = v5 || v6 == 0;
    if (v7 || (v8 = sub_10000C798(a1, a2), !(*(*v8 + 392))(v8)))
    {
      v3 = 0;
      *(a1 + 1393) = 0;
    }

    else
    {
      v3 = 1;
      *(a1 + 1393) = 1;
    }
  }

  return v3 & 1;
}

void sub_10003D8DC(uint64_t a1, unsigned __int8 *a2, char a3, int a4, unsigned int a5, unsigned int a6, uint64_t a7, int a8, char a9)
{
  v17 = sub_10003CEAC(a1, *(a2 + 2), *(a2 + 3));
  if (v17 != 7 && (a9 & 1) == 0)
  {
    v19 = v17;
    if (!a4 || (a3 & 1) != 0)
    {
      v20 = sub_10000C798(v17, v18);
      v21 = (*(*v20 + 936))(v20);
      v22 = v21;
      if ((v21 - 2) >= 2)
      {
        if (v21 == 1)
        {
          v30 = *a2;
          v23 = *(a1 + (v19 << 6) + 32 * v30 + 16 * a5 + 8 * a6 + 3304);
          v31 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            v32 = *(a2 + 3);
            v33 = *(a2 + 2);
            *buf = 67111424;
            *&buf[4] = v32;
            *&buf[8] = 1024;
            *&buf[10] = v33;
            *&buf[14] = 1024;
            *&buf[16] = v19;
            *&buf[20] = 1024;
            *&buf[22] = v30;
            v41 = 1024;
            v42 = a5;
            v43 = 1024;
            v44 = a6;
            v45 = 1024;
            v46 = v23;
            v47 = 1024;
            v48 = WORD1(v23);
            v49 = 1024;
            v50 = WORD2(v23);
            v51 = 1024;
            v52 = BYTE6(v23);
            _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "scanParamsMainCoreELNABypassTable: input [window %d interval %d type %d passive %d critical %d range %d] output [MCELNABypass %d SCELNAOn %d SCELNABypass %d concurrent %d]", buf, 0x3Eu);
          }
        }

        else
        {
          v23 = 0;
        }

        v28 = 0;
        v27 = 0;
        v29 = 0;
      }

      else
      {
        v23 = *(a1 + (v19 << 6) + 32 * *a2 + 16 * a5 + 8 * a6 + 3816);
        v39 = v23;
        if (*a7 || *(a7 + 2))
        {
          *buf = *a2;
          *&buf[10] = *(a2 + 10);
          v21 = sub_1007AA094(v21, &v39, v19, buf, a7);
          v23 = v39;
        }

        v24 = sub_10003CF58(v21, v23, v19, *(a2 + 2));
        v38 = v24;
        v25 = sub_10003DCB4(v24, &v39);
        v26 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
        {
          v34 = *(a2 + 3);
          v35 = *(a2 + 2);
          v36 = *a2;
          v37 = "N";
          *buf = 67112194;
          if (v38)
          {
            v37 = "Y";
          }

          *&buf[4] = v34;
          *&buf[8] = 1024;
          *&buf[10] = v35;
          *&buf[14] = 1024;
          *&buf[16] = v19;
          *&buf[20] = 1024;
          *&buf[22] = v36;
          v41 = 1024;
          v42 = a5;
          v43 = 1024;
          v44 = a6;
          v45 = 1024;
          v46 = v23;
          v47 = 1024;
          v48 = WORD1(v23);
          v49 = 1024;
          v50 = WORD2(v23);
          v51 = 1024;
          v52 = BYTE6(v23);
          v53 = 2082;
          v54 = v37;
          v55 = 1024;
          v56 = v25;
          v57 = 1024;
          v58 = 1;
          _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "scanParamsScanCoreTable: input [window %d interval %d type %d passive %d critical %d range %d] output [MCELNABypass %d SCELNAOn %d SCELNABypass %d concurrent %d] compensation [%{public}s, %d, query %d]", buf, 0x54u);
          v23 = v39;
        }

        v27 = v25 << 16;
        v28 = &_mh_execute_header;
        v29 = v38;
      }

      sub_10003DD48(a1, a2, v23, v27 | v28 | v29);
      if (a8 && v19 == 5 && v22 <= 3)
      {
        *&a2[qword_1008C56D0[v22]] += a8;
      }
    }

    else if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_1008771A0();
    }
  }
}

uint64_t sub_10003DCB4(uint64_t a1, _WORD *a2)
{
  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 944))(v3);
  if (v4 == 2)
  {
    return 100;
  }

  if (v4 != 1 || !a2[1] && !a2[2])
  {
    return 0;
  }

  if (*a2)
  {
    return 100;
  }

  return 50;
}

uint64_t sub_10003DD48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 8) = a3;
  *(a2 + 12) = WORD1(a3);
  *(a2 + 10) = WORD2(a3);
  *(a2 + 14) = BYTE6(a3) & 1;
  if (*(result + 2276) == 1)
  {
    v6 = sub_10000C798(result, a2);
    result = (*(*v6 + 712))(v6);
    if (result)
    {
      *(a2 + 19) = a4 & 1;
      *(a2 + 20) = WORD1(a4);
      *(a2 + 22) = WORD2(a4);
    }
  }

  return result;
}

void sub_10003DE9C(uint64_t a1)
{
  v1 = CUPrintPID();
  LogPrintF_safe(&dword_100B510A0, "[CBDaemonXPCConnection activate]", 20, "XPC connection start: %@", v1);
}

void sub_10003DF04(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  if (qword_100B508D0 == -1)
  {
    v3 = a1;
  }

  else
  {
    sub_100856AE8();
    v3 = a1;
  }

  v4 = sub_10003E228(off_100B508C8, *(v3 + 40));
  [v2 addObjectsFromArray:v4];

  v5 = a1;
  if (*(a1 + 32))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
      v5 = a1;
    }

    sub_10003EF30(off_100B508C8);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = *(v5 + 32);
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if (!sub_1007868D4(off_100B508C8, v10))
          {
            v12 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            *buf = 138412290;
            v24 = v10;
            v13 = v12;
            v14 = "Device %@ does not exist";
            goto LABEL_24;
          }

          if (qword_100B512F8 != -1)
          {
            sub_1008565BC();
          }

          if (sub_1003AF1AC(off_100B512F0, *(v1 + 128), v10))
          {
            v11 = sub_10005201C(v10, *(v1 + 168), *(v1 + 80));
            xpc_array_append_value(*(a1 + 64), v11);
            xpc_release(v11);
            goto LABEL_21;
          }

          v15 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v10;
            v13 = v15;
            v14 = "Cannot access device %@";
LABEL_24:
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
          }

LABEL_21:
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v16 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
        v7 = v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  v17 = *(*(*(v5 + 48) + 8) + 24);
  if (v17)
  {
    xpc_dictionary_set_value(v17, "kCBMsgArgDevices", *(v5 + 64));
    xpc_connection_send_message(*(v1 + 16), *(*(*(a1 + 48) + 8) + 24));
    xpc_release(*(*(*(a1 + 48) + 8) + 24));
    v5 = a1;
  }

  xpc_release(*(v5 + 64));
}

id sub_10003E228(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_100045AC4(*(a1 + 256), v3, &v15);
  v5 = v15;
  for (i = v16; v5 != i; v5 += 24)
  {
    __p[1] = 0;
    v14 = 0;
    __p[0] = 0;
    if (*(v5 + 23) < 0)
    {
      sub_100008904(__p, *v5, *(v5 + 8));
    }

    else
    {
      v7 = *v5;
      v14 = *(v5 + 16);
      *__p = v7;
    }

    v8 = [NSUUID alloc];
    if (v14 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = [NSString stringWithUTF8String:v9, __p[0], __p[1], v14];
    v11 = [v8 initWithUUIDString:v10];

    [v4 addObject:v11];
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = &v15;
  sub_1000161FC(__p);

  return v4;
}

void sub_10003E3E8(uint64_t a1)
{
  if (*a1)
  {
    sub_1000E3B80(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t *sub_10003E428(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_10035FD6C(result, a4);
  }

  return result;
}

void sub_10003E488(uint64_t a1, void *a2)
{
  v4 = xpc_array_create(0, 0);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v6 = sub_10003ED64(value, "kCBMsgArgTags");
  v7 = objc_opt_new();
  v9 = sub_100007EE8(v7, v8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003E5D4;
  v12[3] = &unk_100B04C20;
  v15 = a1;
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  v16 = v4;
  v17 = a2;
  sub_10000D334(v9, v12);
}

void sub_10003E5D4(uint64_t a1)
{
  v24 = *(a1 + 48);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v3)
  {
    v4 = *v32;
    do
    {
      v5 = 0;
      do
      {
        if (*v32 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v31 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        v8 = off_100B508C8;
        v9 = v6;
        sub_100007E30(__p, [v6 UTF8String]);
        v10 = sub_10003E9C4(v8, __p);
        [v7 addObjectsFromArray:v10];

        if (v30 < 0)
        {
          operator delete(__p[0]);
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v3);
  }

  if (*(a1 + 40))
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    sub_10003EF30(off_100B508C8);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = *(a1 + 40);
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v12)
    {
      v13 = *v26;
      do
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v25 + 1) + 8 * v14);
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if (!sub_1007868D4(off_100B508C8, v15))
          {
            v17 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_30;
            }

            *buf = 138412290;
            v36 = v15;
            v18 = v17;
            v19 = "Device %@ does not exist";
            goto LABEL_33;
          }

          if (qword_100B512F8 != -1)
          {
            sub_1008565BC();
          }

          if (sub_1003AF1AC(off_100B512F0, *(v24 + 128), v15))
          {
            v16 = sub_10005201C(v15, *(v24 + 168), *(v24 + 80));
            xpc_array_append_value(*(a1 + 56), v16);
            xpc_release(v16);
            goto LABEL_30;
          }

          v20 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v36 = v15;
            v18 = v20;
            v19 = "Cannot access device %@";
LABEL_33:
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
          }

LABEL_30:
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v21 = [v11 countByEnumeratingWithState:&v25 objects:v37 count:16];
        v12 = v21;
      }

      while (v21);
    }
  }

  reply = xpc_dictionary_create_reply(*(a1 + 64));
  v23 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", *(a1 + 56));
    xpc_connection_send_message(*(v24 + 16), v23);
    xpc_release(v23);
  }

  xpc_release(*(a1 + 56));
}

id sub_10003E9C4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSMutableArray array];
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 96);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(a1 + 176);
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [*(a1 + 176) objectForKey:{v9, __p[0], __p[1], v14}];
        if (*(a2 + 23) < 0)
        {
          sub_100008904(__p, *a2, *(a2 + 8));
        }

        else
        {
          *__p = *a2;
          v14 = *(a2 + 16);
        }

        v11 = sub_1000463C8((v10 + 176), __p);
        if (SHIBYTE(v14) < 0)
        {
          operator delete(__p[0]);
        }

        if (v10 + 184 != v11)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v6);
  }

  sub_10000801C(v19);
  sub_1000088CC(v19);

  return v4;
}

void sub_10003EB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_1000088CC(&a24);

  _Unwind_Resume(a1);
}

void sub_10003EBD4(uint64_t a1, void *a2)
{
  v4 = xpc_array_create(0, 0);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = xpc_dictionary_create_reply(a2);
  v6 = sub_10003ED64(value, "kCBMsgArgCustomProperties");
  v7 = objc_opt_new();
  v9 = sub_100007EE8(v7, v8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003DF04;
  v12[3] = &unk_100B04830;
  v16 = a1;
  v10 = v7;
  v13 = v10;
  v11 = v6;
  v17 = v4;
  v14 = v11;
  v15 = v18;
  sub_10000D334(v9, v12);

  _Block_object_dispose(v18, 8);
}

void sub_10003ED1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003ED64(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  v3 = value;
  if (value)
  {
    if (xpc_get_type(value) == &_xpc_type_array)
    {
      v4 = +[NSMutableArray array];
      for (i = 0; ; ++i)
      {
        if (i >= xpc_array_get_count(v3))
        {
          v3 = v4;
          goto LABEL_16;
        }

        v6 = xpc_array_get_value(v3, i);
        v7 = v6;
        if (!v6)
        {
          break;
        }

        if (xpc_get_type(v6) != &_xpc_type_string)
        {
          break;
        }

        v8 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v7)];
        if (!v8)
        {
          break;
        }

        [v4 addObject:v8];
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820DB0();
      }

      v3 = 0;
LABEL_16:
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820D40();
      }

      v3 = 0;
    }
  }

  return v3;
}

void sub_10003EF38(id a1)
{
  v1 = +[LeDeviceCache sharedInstance];
  [v1 tryLoadProtectedCache];
}

id sub_10003F060()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

void sub_10003F094(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void *sub_10003F120()
{

  return sub_10000C0FC();
}

void sub_10003F158(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void sub_10003F1B4(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_10003F1EC(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t sub_10003F204(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *result = a4;
  *(result + 4) = a2;
  *(result + 12) = 2048;
  *(result + 14) = a3;
  return result;
}

void sub_10003F250(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_error_impl(a1, v12, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_10003F280(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_10003F298(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t sub_10003F2DC(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

uint64_t sub_10003F2E8(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  return result;
}

void sub_10003F35C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

id sub_10003F390(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);

  return v3;
}

id sub_10003F3E8(uint64_t a1)
{
  v2 = *(a1 + 16);

  return v2;
}

void sub_10003F45C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_10003F484(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_10003F4E4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_10003F578(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_10003F594(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_10003F5E4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 8u);
}

void sub_10003F618(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_10003F634(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 8u);
}

void sub_10003F668(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

void sub_10003F6A8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_error_impl(a1, v12, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10003F710(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 4) = v2;
  *(a1 + 12) = 2082;
  *(a1 + 14) = a2;
}

uint64_t sub_100042184(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042194(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000421A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000421B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000421C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000421D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000421E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000421F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100042214(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}