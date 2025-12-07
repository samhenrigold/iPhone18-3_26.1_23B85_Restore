uint64_t sub_1001192AC()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon prefsChanged]", 30, "Guest client enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_100119304()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon prefsChanged]", 30, "Server RSSI disabled: %s -> %s\n", v2, v0);
}

void sub_100119420(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v7 descriptionWithLevel:50];
    }

    else
    {
      [v7 description];
    }
    v8 = ;
  }

  v9 = v8;

  LogPrintF(&dword_1001D3D90, "-[RPNearbyInvitationDaemon _clientBLENearbyActionDiscoveryDeviceFound:]", 30, "Evaluating target AuthTag <%@> from device (%@) using BLE addr %.6a selfAuthTag <%@>\n", a3, v9, [a2 bytes], a4);
}

void sub_100119508(void *a1, uint64_t a2)
{
  v3 = [a1 bleDevice];
  LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _clientBLENearbyActionDiscoveryDeviceFound:]", 30, "Replaced BLE device %@ -> %@", v3, a2);
}

void sub_100119574(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _clientBLENearbyActionDiscoveryDeviceFound:]", 10, "BLE device changed: %@\n", v1);
}

void sub_1001195D4(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _clientBLENearbyActionDiscoveryDeviceFound:]", 10, "BLE device in cache: %@\n", v1);
}

void sub_100119634(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _clientBLENearbyActionDiscoveryDeviceFound:]", 30, "BLE device found: %@\n", v1);
}

uint64_t sub_100119694(uint64_t result)
{
  if (dword_1001D3D90 <= 90)
  {
    v1 = result;
    if (dword_1001D3D90 != -1)
    {
      return LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _clientBLENearbyActionDiscoveryDeviceFound:]", 90, "### Ignoring BLE device found: no ID, %@\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _clientBLENearbyActionDiscoveryDeviceFound:]", 90, "### Ignoring BLE device found: no ID, %@\n", v1);
    }
  }

  return result;
}

uint64_t sub_100119710(uint64_t result)
{
  if (dword_1001D3D90 <= 90)
  {
    v1 = result;
    if (dword_1001D3D90 != -1)
    {
      return LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _clientBLENearbyActionDiscoveryDeviceLost:]", 90, "### Ignoring BLE device lost: no ID, %@\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _clientBLENearbyActionDiscoveryDeviceLost:]", 90, "### Ignoring BLE device lost: no ID, %@\n", v1);
    }
  }

  return result;
}

void sub_10011983C(uint64_t a1)
{
  v2 = [*(a1 + 40) daemonDevice];
  v1 = [v2 bleTargetData];
  LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _clientBLENearbyActionAdvertiserEnsureStarted]_block_invoke", 30, "BLE NearbyAction advertiser started. targeting %@ \n", v1);
}

void sub_1001198D4(void *a1)
{
  v1 = [a1 activatedSession];
  LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _clientBLENearbyActionAdvertiserStartTimer]_block_invoke", 50, "Timed out waiting for session to start: %@", v1);
}

void sub_100119BDC(void *a1)
{
  v2 = [a1 bleDevice];
  LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _serverBLENearbyInfoDiscoveryDeviceFound:]", 30, "BLE NearbyInfo scanner found device: %@ %@\n", a1, v2);
}

uint64_t sub_100119D4C(uint64_t result)
{
  if (dword_1001D3D90 <= 10)
  {
    v1 = result;
    if (dword_1001D3D90 != -1)
    {
      return LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _serverBLENearbyActionDiscoveryDeviceFound:]", 10, "### Ignoring BLE device with wrong action type: %@\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _serverBLENearbyActionDiscoveryDeviceFound:]", 10, "### Ignoring BLE device with wrong action type: %@\n", v1);
    }
  }

  return result;
}

uint64_t sub_10011ACBC()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon prefsChanged]", 40, "Family resolve: %s -> %s\n", v2, v0);
}

uint64_t sub_10011AD14()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon prefsChanged]", 40, "Friend resolve: %s -> %s\n", v2, v0);
}

uint64_t sub_10011AD6C()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon prefsChanged]", 40, "Owner resolve: %s -> %s\n", v2, v0);
}

uint64_t sub_10011ADC4()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon prefsChanged]", 40, "Paired resolve: %s -> %s\n", v2, v0);
}

uint64_t sub_10011AE1C()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon prefsChanged]", 40, "SharedHome resolve: %s -> %s\n", v2, v0);
}

void sub_10011AF94()
{
  sub_100009994();
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon resolveIdentityForBonjourDevice:typeFlags:]", 10, "Ignoring device with no BLE address: %@, %#m\n", v1, *v0);
}

void sub_10011AFF4()
{
  sub_100009994();
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon resolveIdentityForBonjourDevice:typeFlags:]", 20, "Ignoring device with no DeviceAuthTag: %@, %#m\n", v1, *v0);
}

void sub_10011B054()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon resolveIdentityForBonjourDevice:typeFlags:]", 20, "Resolved DeviceAuthTag: owner, %@ -> %@\n");
}

void sub_10011B0AC()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon resolveIdentityForBonjourDevice:typeFlags:]", 20, "Resolved DeviceAuthTag: shared home, %@ -> %@\n");
}

void sub_10011B104()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon resolveIdentityForBonjourDevice:typeFlags:]", 20, "Resolved DeviceAuthTag: family, %@ -> %@\n");
}

void sub_10011B15C()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon resolveIdentityForBonjourDevice:typeFlags:]", 20, "Resolved DeviceAuthTag: friend, %@ -> %@\n");
}

void sub_10011B1B4()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon resolveIdentityForBonjourDevice:typeFlags:]", 20, "Resolved DeviceAuthTag: SharedTVUser, %@ -> %@\n");
}

void sub_10011B20C()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon resolveIdentityForBonjourDevice:typeFlags:]", 20, "Resolved DeviceAuthTag: paired, %@ -> %@\n");
}

void sub_10011B264()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon resolveIdentityForBonjourDevice:typeFlags:]", 20, "Resolved DeviceAuthTag: SessionPaired, %@ -> %@\n");
}

void sub_10011B2BC()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon resolveIdentityForBonjourDevice:typeFlags:]", 20, "Resolved DeviceAuthTag: AdHocPaired, %@ -> %@\n");
}

void sub_10011B314(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon resolveIdentityForBonjourDevice:typeFlags:]", 9, "Ignoring unresolved DeviceAuthTag: %@\n", v1);
}

void sub_10011B5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 40) contactID];
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon isContactValidForIdentity:completionBlock:]_block_invoke", 60, "### Contact with ID %@ is invalid: '%{mask}', %{error}\n", v5, a2, a3);
}

void sub_10011B704(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 48) accountID];
  v3 = [a2 contactIdentifier];
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon isContactValidForIdentity:completionBlock:]_block_invoke_2", 30, "### Updatating identity: %@ with new contactID: %s \n", v4, v3);
}

void sub_10011B790(id *a1, void *a2, const char *a3)
{
  v6 = [*a1 accountID];
  v5 = [a2 contactIdentifier];
  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon isContactValidForIdentity:completionBlock:]_block_invoke_2", 30, a3, v6, v5);
}

uint64_t sub_10011BFD4(uint64_t result)
{
  if (dword_1001D3F50 <= 90)
  {
    v1 = result;
    if (dword_1001D3F50 != -1)
    {
      return LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _updatePairedDeviceIdentities]_block_invoke", 90, "### Get paired peers failed: %{error}\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _updatePairedDeviceIdentities]_block_invoke", 90, "### Get paired peers failed: %{error}\n", v1);
    }
  }

  return result;
}

uint64_t sub_10011C54C(char a1)
{
  v1 = "no";
  if (a1)
  {
    v1 = "yes";
  }

  return LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _removeSelfIdentityPublicWithPrivateIdentity:]", 30, "SelfIdentity public removed: %s\n", v1);
}

void sub_10011C82C(os_unfair_lock_s *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_lock(a1 + 2);
    v3[2](v3);

    os_unfair_lock_unlock(a1 + 2);
  }
}

uint64_t sub_10011CD58(int a1)
{
  v1 = "yes";
  if (!a1)
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1001D4060, "[RPMediaControlDaemon _mediaControlEnsureStarted]_block_invoke", 30, "Volume control available initial: MR %s\n", v1);
}

uint64_t sub_10011CECC(int a1)
{
  v1 = "yes";
  if (!a1)
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1001D4060, "[RPMediaControlDaemon _mediaRemoteVolumeControlChanged:]_block_invoke", 30, "Volume control available changed MR: %s\n", v1);
}

uint64_t sub_10011CF24(unsigned int a1, char a2, uint64_t a3)
{
  if (a1 > 0xD)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1001AD2F8[a2 & 0xF];
  }

  return LogPrintF(&dword_1001D4060, "[RPMediaControlDaemon _handleCommand:responseHandler:]", 30, "Command <%s>, %##.16@\n", v5, a3, v3, v4);
}

void sub_10011D28C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF(&dword_1001D40E8, "[RPNWNearbyInvitationPeer startDiscovery:foundHandler:updateHandler:lostHandler:invalidationHandler:]", 30, "Starting RPNWNearbyInvitationPeer[%@] discovery", v2);
}

void sub_10011D358(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF(&dword_1001D40E8, "[RPNWNearbyInvitationPeer stopDiscovery]", 30, "Stopping RPNWNearbyInvitationPeer[%@] discovery", v2);
}

void sub_10011D400(void *a1, uint64_t a2)
{
  v3 = objc_retainBlock(a1);
  LogPrintF(&dword_1001D40E8, "[RPNWNearbyInvitationPeer startServer:withCompletion:disconnectHandler:]_block_invoke", 30, "Server: Session start: %@, completion: %@\n", a2, v3);
}

void sub_10011D484(uint64_t a1)
{
  v1 = [*(a1 + 32) destinationDevice];
  LogPrintF(&dword_1001D40E8, "[RPNWNearbyInvitationPeer startServer:withCompletion:disconnectHandler:]_block_invoke_2", 30, "Server: Lost connectivity to '%@'", v1);
}

void sub_10011D544(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) serviceType];
}

void sub_10011D5E8(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) serviceType];
}

uint64_t sub_10011D7D0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = "SERVER";
  }

  else
  {
    v1 = "CLIENT";
  }

  return LogPrintF(&dword_1001D40E8, "[RPNWNearbyInvitationPeer handleConnectionData:]_block_invoke", 30, "RPNW-DATA %s Received data from peer", v1);
}

void sub_10011D9F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 destinationDevice];
  v7 = [v8 name];
  LogPrintF(&dword_1001D40E8, "[RPNWNearbyInvitationPeer sendWithRequestID:data:status:applicationService:listenerID:connectionID:responseHandler:]", 30, "TX REQ to '%@': requestID=%@ appSvc=%@%@\n", v7, a2, a3, a4);
}

void sub_10011DAC8(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) destinationDevice];
  v4 = [v5 name];
}

void sub_10011DB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(a1 + 32) destinationDevice];
  v6 = [v7 name];
  LogPrintF(&dword_1001D40E8, "[RPNWNearbyInvitationPeer sendWithRequestID:data:status:applicationService:listenerID:connectionID:responseHandler:]_block_invoke", 30, "RX RESP from '%@': requestID=%@ appSvc=%@ response=%s bytes listener=%@ error=%@\n", v6, *(a1 + 40), *(a1 + 48), [RPNWNearbyInvitationPeer responseCodeToString:a2], a3, 0);
}

void sub_10011DC10(uint64_t a1)
{
  v3 = [*(a1 + 32) destinationDevice];
  v2 = [v3 name];
}

void sub_10011DF38(void *a1)
{
  v1 = [a1 connectionUUID];
  LogPrintF(&dword_1001D4248, "+[RPNWNearbyInvitationConnection addConnection:]", 30, "addConnection for key=%@\n", v1);
}

void sub_10011DF94(void *a1)
{
  v1 = [a1 connectionUUID];
  LogPrintF(&dword_1001D4248, "+[RPNWNearbyInvitationConnection removeConnection:]", 30, "removeConnection for key=%@\n", v1);
}

uint64_t sub_10011E154(int *a1)
{
  v3 = *a1;
  if (!v2 & v1)
  {
    switch(v3)
    {
      case 196608:
        v4 = "DigitalIDTSA";
        break;
      case 262144:
        v4 = "DigitalCarKeyThirdParty";
        break;
      case 327680:
        v4 = "RapportThirdParty";
        break;
      case 458752:
        v4 = "PrecisionFindingFinder";
        break;
      case 458753:
        v4 = "PrecisionFindingFindee";
        break;
      case 458754:
        v4 = "SpatialHandoffHome";
        break;
      case 589824:
        v4 = "FindNearbyRemote";
        break;
      case 589825:
        v4 = "FindNearbyPencil";
        break;
      case 655360:
        v4 = "AccessDigitalHomeKey";
        break;
      case 720896:
        v4 = "SoftwareUpdateBTWake";
        break;
      case 720897:
        v4 = "SofrwareUpdateOutboxControllerAuth";
        break;
      case 786432:
        v4 = "ProxControlDeviceClose";
        break;
      case 851968:
        v4 = "DCTProtocolTelephony";
        break;
      case 851969:
        v4 = "DCTProtocolDataAndTelephony";
        break;
      case 917504:
        v4 = "NearbyFaceTime";
        break;
      case 917505:
        v4 = "NearbyFaceTimeData";
        break;
      case 1048576:
        v4 = "DOS";
        break;
      case 1048577:
        v4 = "DOD";
        break;
      case 1114112:
        v4 = "ProximityServiceDeviceSetup";
        break;
      default:
        v4 = "?";
        break;
    }
  }

  else
  {
    switch(v3)
    {
      case 65536:
        v4 = "FindMyAction";
        break;
      case 65537:
        v4 = "FindMyBackground";
        break;
      case 65538:
        v4 = "FindMyActionHELE";
        break;
      case 65539:
        v4 = "FindMyBackgroundHELE";
        break;
      case 65540:
        v4 = "FindMyActionTransient";
        break;
      case 65541:
        v4 = "FindMyBackgroundTransient";
        break;
      case 65542:
        v4 = "FindMyActionHELETransient";
        break;
      case 65543:
        v4 = "FindMyBackgroundHELETransient";
        break;
      case 65544:
        v4 = "FindMyNotOptedIn";
        break;
      case 65545:
        v4 = "FindMyOptedIn";
        break;
      case 65546:
        v4 = "FindMySepAlertsEnabled";
        break;
      case 65547:
        v4 = "FindMyTemporaryAggressiveLegacy";
        break;
      case 65548:
        v4 = "FindMyTemporaryLongAggressive";
        break;
      case 65549:
        v4 = "FindMyBTFindingUserInitiated";
        break;
      case 65550:
        v4 = "FindMyHELE";
        break;
      case 65551:
        v4 = "FindMyBeaconOnDemand";
        break;
      case 65552:
        v4 = "FindMyWildTimedScan";
        break;
      case 65553:
        v4 = "FindMyBackgroundLeechScan";
        break;
      case 65554:
        v4 = "FindMySnifferMode";
        break;
      case 65555:
        v4 = "FindMyUnpair";
        break;
      case 65556:
        v4 = "FindMyUnpairHELE";
        break;
      case 65557:
        v4 = "FindMyPlaySound";
        break;
      case 65558:
        v4 = "FindMyPlaySoundHELE";
        break;
      case 65559:
        v4 = "FindMyNotOptedInBeepOnMoveWaking";
        break;
      case 65560:
        v4 = "FindMyUTTransient";
        break;
      case 65561:
        v4 = "FindMyUTHELETransient";
        break;
      case 65562:
        v4 = "FindMyActionExtendedRange";
        break;
      case 65563:
        v4 = "FindMyActionExtendedRangeLE2M";
        break;
      case 65564:
        v4 = "FindMyActionExtendedRangeTransient";
        break;
      case 65565:
        v4 = "FindMyPlaySoundExtendedRange";
        break;
      case 65566:
        v4 = "FindMyPair";
        break;
      case 65567:
        v4 = "FindMyTemporaryAggressiveLegacyExtendedRange";
        break;
      default:
        JUMPOUT(0);
    }
  }

  return LogPrintF(&dword_1001D42B8, "[RPNearbyInfoV2Discovery activateWithCompletion:]", 30, "Activating NearbyInfoV2 discovery with: %s (0x%x)\n", v4, v3);
}

uint64_t sub_10011EBD4(uint64_t result)
{
  if (dword_1001D42B8 <= 90)
  {
    v1 = result;
    if (dword_1001D42B8 != -1)
    {
      return LogPrintF(&dword_1001D42B8, "[RPNearbyInfoV2Discovery _deviceFound:]", 90, "### Ignoring BLE NearbyInfoV2 device found: No ID, %@\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1001D42B8, "[RPNearbyInfoV2Discovery _deviceFound:]", 90, "### Ignoring BLE NearbyInfoV2 device found: No ID, %@\n", v1);
    }
  }

  return result;
}

uint64_t sub_10011ECE8(uint64_t a1)
{
  v1 = @"Stopped";
  if (a1 == 1)
  {
    v1 = @"Started";
  }

  if (a1 == 2)
  {
    v1 = @"Stopping";
  }

  return LogPrintF(&dword_1001D4330, "[RPNFCTransactionController setInitiatorState:]", 30, "initiator state changed:%@\n", v1);
}

uint64_t sub_10011ED50(uint64_t a1)
{
  v1 = @"Stopped";
  if (a1 == 1)
  {
    v1 = @"Started";
  }

  if (a1 == 2)
  {
    v1 = @"Stopping";
  }

  return LogPrintF(&dword_1001D4330, "[RPNFCTransactionController setReceiverState:]", 30, "receiver state changed:%@\n", v1);
}

void sub_10011EDF0(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&dword_1001D4330, "[RPNFCTransactionController invalidateTransaction:]", 30, "invalidate transaction:%@\n", v1);
}

void sub_10011EE4C(void *a1)
{
  v2 = [a1 currentTransaction];
  v1 = [v2 identifier];
  LogPrintF(&dword_1001D4330, "[RPNFCTransactionController invalidateTransaction:]", 90, "failed to invalidate current transaction:%@ - mismatching\n", v1);
}

void sub_10011F188(void *a1, uint64_t a2)
{
  v3 = [a1 currentTransaction];
  LogPrintF(&dword_1001D4330, "[RPNFCTransactionController _finishCurrentTransactionWithError:]", 30, "finish current transaction:%@ error:%@\n", v3, a2);
}

void sub_10011F374(char a1, uint64_t a2, uint64_t a3)
{
  v5 = NSStringFromBOOL();
  LogPrintF(&dword_1001D4330, "[RPNFCTransactionController controller:didInvalidate:]", 30, "did invalidate controller:%@ isInitiator:%@ error:%@\n", a2, v5, a3);
}

void sub_10011F428(void *a1)
{
  [a1 pendingReceiver];
  v3 = NSStringFromBOOL();
  [a1 pendingInitiator];
  v2 = NSStringFromBOOL();
  LogPrintF(&dword_1001D4330, "[RPNFCTransactionController controller:didInvalidate:]", 30, "pendingReceiver:%@ pendingInitiator:%@\n", v3, v2);
}

void sub_10011F6D8(void *a1)
{
  v1 = [a1 currentTransaction];
  LogPrintF(&dword_1001D4330, "[RPNFCTransactionController controller:didReceiveRequest:]", 115, "validation request received but transaction is missing the authentication request message :%@", v1);
}

void sub_10011F8F4(void *a1)
{
  v1 = [a1 URL];
  LogPrintF(&dword_1001D4330, "[RPNFCTransactionController _fileTTRForError:]", 90, "### Filing tap to radar url: %@", v1);
}

void sub_10011F9B4(void *a1, void *a2, uint64_t a3)
{
  v6 = [a1 name];
  v5 = [a2 name];
  LogPrintF(&dword_1001D4478, "[RPNIProximityEstimator session:object:didUpdateRegion:previousRegion:]", 30, "Device moved '%@' -> '%@': %@\n", v6, v5, a3);
}

void sub_10011FB0C(id *a1)
{
  v4 = [a1[9] browseToken];
  v2 = a1;
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"%p", v2];

  LogPrintF(&dword_1001D45C8, "[RPNWDiscoverySession removeAllDevices]", 30, "%@ DISCOVER: RPNWDiscoverySession[%@]: Ending discovery session", v4, v3);
}

void sub_10011FBB4(id *a1, id *a2, uint64_t a3)
{
  v10 = [a1[9] browseToken];
  v6 = a1;
  v7 = objc_alloc_init(NSMutableString);
  [v7 appendFormat:@"%p", v6];

  v8 = *a2;
  v9 = objc_alloc_init(NSMutableString);
  [v9 appendFormat:@"%p", v8];

  LogPrintF(&dword_1001D45C8, "[RPNWDiscoverySession startDiscovery:controlFlags:deviceFilter:]", 30, "%@ DISCOVER: Starting RPNWDiscoverySession[%@], _discoveryClient=%@ with controlFlags %ll{flags}", v10, v7, v9, a3, &unk_100148980);
}

void sub_10011FCB8(id *a1)
{
  v4 = [a1[9] browseToken];
  v2 = a1;
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"%p", v2];

  LogPrintF(&dword_1001D45C8, "[RPNWDiscoverySession stopDiscovery]", 30, "%@ DISCOVER: Stopping RPNWDiscoverySession[%@]", v4, v3);
}

void sub_10011FECC(void *a1)
{
  v1 = [a1 browseDescriptor];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent discoverDevices:response:context:]", 30, "Called discoverDevices for pairing, browse_descriptor=%@\n", v1);
}

void sub_1001200EC(void *a1)
{
  [a1 localEndpoint];
  objc_claimAutoreleasedReturnValue();
  sub_100088E7C();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createListenerFramer:]", 30, "%@ createListenerFramer calling assign with local endpoint=%@\n");
}

void sub_100120194(uint64_t a1, id *a2)
{
  v2 = *(a1 + 40);
  v14 = [*a2 listen_framer];
  v3 = objc_alloc_init(NSMutableString);
  sub_10000D530(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  [v3 appendFormat:@"%p"];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createListenerFramer:]_block_invoke", 30, "%@ Creating listener framer=%@\n", v2, v3);
}

void sub_10012022C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_alloc_init(NSMutableString);
  [v4 appendFormat:@"%p", v3];

  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createListenerFramer:]_block_invoke_2", 30, "%@ Cleaning up listening framer=%@\n", v2, v4);
}

void sub_1001202C8()
{
  sub_10000D18C();
  v3 = [v2 flowToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]", 30, "%@ Setting connection framer options, local=%@, remote=%@\n", v3, v1, v0);
}

void sub_100120334(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099C8();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]", 90, "%@ Received connection framer request on invalid agent client type (%@)\n");
}

void sub_10012039C(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099C8();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]", 30, "%@ Received connection framer request on incoming connection (%@)\n");
}

void sub_100120404(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099C8();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]", 30, "%@ Using incoming connection=%@\n");
}

void sub_10012046C(void *a1)
{
  v1 = [a1 flowToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]", 90, "%@ No incoming connection provided\n", v1);
}

void sub_1001204C8(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099C8();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]", 30, "%@ Received connection framer request on outgoing connection (%@)\n");
}

void sub_100120530()
{
  sub_10000D18C();
  v3 = [v2 flowToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]", 30, "%@ Found remote endpoint=%@, created connection=%@\n", v3, v1, v0);
}

void sub_100120598(void *a1, void *a2)
{
  v3 = [a1 flowToken];
  v4 = [a2 peer];
  v5 = [v4 destinationDevice];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]", 30, "%@ Connecting to peer device '%@'", v3, v5);
}

void sub_100120620(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]", 40, "%@ Setting peer protocol definition: '%@'");
}

void sub_100120678()
{
  sub_10000D18C();
  v3 = [v2 flowToken];
  v4 = v3;
  v5 = @"<NULL>";
  if (v1)
  {
    v6 = v1;
  }

  else
  {
    v6 = @"<NULL>";
  }

  if (v0)
  {
    v5 = v0;
  }

  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]", 30, "%@ assigning connection %@ <-> %@", v3, v6, v5);
}

void sub_1001206F8(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]", 90, "%@ Failed to find endpoint\n");
}

void sub_10012074C(uint64_t a1)
{
  v1 = [*(a1 + 32) flowToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]_block_invoke", 90, "%@ Failed to connect to peer\n", v1);
}

void sub_1001207AC(uint64_t a1)
{
  v14 = [*(a1 + 32) flowToken];
  v2 = [*(a1 + 40) peer];
  v3 = [v2 destinationDevice];
  v4 = [v3 name];
  sub_10000D530(v4, v5, v6, v7, v8, v9, v10, v11, v12, v4, v13, v14);
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]_block_invoke", 30, "%@ Successfully connected to peer='%@'\n");
}

void sub_10012085C(id *a1)
{
  v1 = [*a1 flowToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]_block_invoke", 30, "%@ Incoming connection ready signaling READY", v1);
}

void sub_1001208BC(id *a1)
{
  v1 = [*a1 flowToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]_block_invoke", 30, "%@ Outgoing connection ready, starting connection", v1);
}

void sub_10012091C(uint64_t a1)
{
  v1 = [*(a1 + 32) flowToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]_block_invoke_2", 90, "%@ Lost connection to peer\n", v1);
}

void sub_10012097C(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 40) flowToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]_block_invoke_3", 30, "%@ Framer start received, saved framer on agentClient %@, connection %@\n", v4, *(a1 + 40), *a2);
}

void sub_1001209F8(uint64_t a1, char a2, uint64_t a3)
{
  v5 = [*(a1 + 32) flowToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]_block_invoke_4", 10, "%@ DATA (%d bytes) from Agent Client, more: %d", v5, a3, a2 & 1);
}

void sub_100120A70()
{
  sub_10000D18C();
  v15 = [*(v2 + 32) flowToken];
  v3 = [v1 length];
  v4 = [*v0 peer];
  v5 = [v4 destinationDevice];
  v6 = [v5 name];
  sub_10000D530(v6, v7, v8, v9, v10, v11, v12, v13, v14, v3, v6, v15);
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]_block_invoke_4", 10, "%@ RX DATA (%d bytes) from Agent Client, sending to peer '%@'");
}

void sub_100120B2C(uint64_t a1, id *a2)
{
  v13 = [*(a1 + 32) flowToken];
  v3 = [*a2 outgoingBuffer];
  v4 = [v3 length];
  sub_10000D530(v4, v5, v6, v7, v8, v9, v10, v11, v12, v4, 1, v13);
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]_block_invoke_4", 10, "%@ RX DATA (%d bytes) from Agent Client, more: %d");
}

void sub_100120BBC(uint64_t a1, uint64_t a2)
{
  v13 = [*(a1 + 32) flowToken];
  v3 = [RPNWPeer responseCodeToString:a2];
  sub_10000D530(v3, v4, v5, v6, v7, v8, v9, v10, v11, v3, v12, v13);
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]_block_invoke_5", 30, "%@ Received peer response %s");
}

void sub_100120C40(uint64_t a1)
{
  v1 = [*(a1 + 32) flowToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createConnectionFramer:assign:local:remote:incomingConnection:]_block_invoke_6", 30, "%@ RX close connection status, sending CLOSED status update to peer\n", v1);
}

uint64_t sub_100120DBC(const __CFString *a1, const __CFString *a2)
{
  v2 = @"<NULL>";
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = @"<NULL>";
  }

  if (a2)
  {
    v2 = a2;
  }

  return LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createNearbyInvitationConnectionFramer:assign:local:remote:incomingConnection:]", 30, "assigning connection %@ <-> %@", v3, v2);
}

void sub_100120E70(uint64_t a1)
{
  v3 = [*(a1 + 32) peer];
  v1 = [v3 destinationDevice];
  v2 = [v1 name];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createNearbyInvitationConnectionFramer:assign:local:remote:incomingConnection:]_block_invoke", 30, "Successfully connected to peer='%@'\n", v2);
}

void sub_100120F90(void *a1, uint64_t a2)
{
  v3 = [a1 length];
  v6 = [*(a2 + 32) peer];
  v4 = [v6 destinationDevice];
  v5 = [v4 name];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createNearbyInvitationConnectionFramer:assign:local:remote:incomingConnection:]_block_invoke_4", 30, "RX DATA (%d bytes) from Agent Client, sending to peer '%@'", v3, v5);
}

void sub_100121554(void *a1)
{
  v1 = [a1 browseToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createListener:context:]", 30, "%@ LISTEN: Creating listen framer\n", v1);
}

void sub_1001215B0(void *a1)
{
  v1 = [a1 browseToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createListener:context:]", 30, "%@ LISTEN: Creating pairing listener framer\n", v1);
}

void sub_10012160C(void *a1)
{
  v1 = [a1 browseToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createListener:context:]", 30, "%@ LISTEN: Creating NearbyInvitation server\n", v1);
}

void sub_100121668(void *a1)
{
  [a1 browseToken];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createListener:context:]", 30, "%@ LISTEN: Creating NearbyInvitation listen framer\n");
}

void sub_1001216BC(uint64_t a1)
{
  [*(a1 + 32) browseToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099C8();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createListener:context:]_block_invoke", 90, "%@ LISTEN: Error activating NearbyInvitation server: %@\n");
}

void sub_100121728(uint64_t a1)
{
  v1 = [*(a1 + 32) browseToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createListener:context:]_block_invoke_2", 90, "%@ LISTEN: Lost connection to peer\n", v1);
}

void sub_1001217E4(void *a1)
{
  [a1 browseToken];
  objc_claimAutoreleasedReturnValue();
  sub_100088E7C();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent setupListenHandlers]_block_invoke", 90, "%@ ADVERTISE: agentClient already has a browse token (%@) set\n");
}

void sub_1001219A8(void *a1)
{
  v1 = [a1 flowToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent startFlow:listener:client:assign:parameters:]", 30, "%@ FLOW: Checking for outstanding connections\n", v1);
}

void sub_100121A04(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent startFlow:listener:client:assign:parameters:]", 30, "%@ FLOW: Connection %@ is not triggerable, skipping\n");
}

void sub_100121A5C(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent startFlow:listener:client:assign:parameters:]", 30, "%@ FLOW: Found triggerable connection %@\n");
}

void sub_100121AB4(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_1000099A0();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent startFlow:listener:client:assign:parameters:]", 30, "%@ FLOW: Created local endpoint=%@\n");
}

void sub_100121B0C(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent startFlow:listener:client:assign:parameters:]", 90, "%@ Failed to create outgoing connection\n");
}

void sub_100121B60(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent startFlow:listener:client:assign:parameters:]", 30, "%@ FLOW: Creating listen framer\n");
}

void sub_100121C50(uint64_t a1)
{
  nw_agent_client_copy_endpoint();
  sub_100088E7C();
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent setupFlowHandlers]_block_invoke_3", 30, "%@ FLOW: Stop flow request to endpoint=%@\n");
}

void sub_10012221C(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent exchangeQUICPublicKeyFor:publicKey:completion:]", 60, "Calling existing key exchange handler for %@", v1);
}

void sub_1001222A0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_alloc_init(NSMutableString);
  [v4 appendFormat:@"%p", v3];

  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient stopAgentClient]", 30, "%@ Stopping RPNWAgentClient[%@]", a2, v4);
}

void sub_10012233C()
{
  sub_10000D18C();
  v2 = v1;
  sub_10008BDDC();
  sub_10000D1B4();
  [v3 appendFormat:@"%p"];

  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient stopAgentClient]", 30, "Stopping RPNWDiscoverySession[%@]", NSMutableString);
  sub_100003DDC();
}

void sub_1001223BC()
{
  sub_10000D18C();
  v2 = v1;
  sub_10008BDDC();
  sub_10000D1B4();
  [v3 appendFormat:@"%p"];

  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient stopAgentClient]", 30, "Stopping RPNWNearbyInvitationDiscoverySession[%@]", NSMutableString);
  sub_100003DDC();
}

void sub_10012243C()
{
  sub_10000D18C();
  v3 = v2;
  sub_10008BDDC();
  sub_10000D1B4();
  [v4 appendFormat:@"%p"];

  v5 = [*v0 isConnected];
  v6 = "no";
  if (v5)
  {
    v6 = "yes";
  }

  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient stopAgentClient]", 30, "Stopping RPNWConnection[%@], isConnected=%s", NSMutableString, v6);

  sub_100003DDC();
}

void sub_1001224DC()
{
  sub_10000D18C();
  v3 = v2;
  sub_10008BDDC();
  sub_10000D1B4();
  [v4 appendFormat:@"%p"];

  v5 = [*v0 isConnected];
  v6 = "no";
  if (v5)
  {
    v6 = "yes";
  }

  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient stopAgentClient]", 30, "Stopping RPNWNearbyInvitationConnection[%@], isConnected=%s", NSMutableString, v6);

  sub_100003DDC();
}

void sub_10012257C(uint64_t a1)
{
  v2 = [*(a1 + 32) destinationDevice];
  v1 = [v2 name];
  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient stopAgentClient]_block_invoke", 30, "Invalidating requestID=%@ to peer=%@", @"com.apple.oneapi.data", v1);
}

void sub_100122638(unsigned int *a1, id *a2)
{
  v3 = *a1;
  v4 = a2[15];
  v7 = objc_alloc_init(NSMutableString);
  [v7 appendFormat:@"%p", v4];

  v5 = a2;
  v6 = objc_alloc_init(NSMutableString);
  [v6 appendFormat:@"%p", v5];

  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient removeCachedBundleID]", 90, "[%d:%@] RPNWAgentClient[%@] uses bundle ID but no bundle ID found", v3, v7, v6);
}

void sub_100122718(void *a1)
{
  v2 = a1[9];
  v3 = a1;
  v4 = objc_alloc_init(sub_10000D6A4());
  [v4 appendFormat:@"%p", v1];

  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient startDiscovery:deviceTypes:controlFlags:deviceFilter:agentUUID:rssiThreshold:applicationService:predicate:]", 30, "%@ RPNWAgentClient[%@] starting discovery...", v2, v4);
}

void sub_1001227B0(void *a1)
{
  v2 = a1;
  v3 = objc_alloc_init(sub_10000D6A4());
  [v3 appendFormat:@"%p", v1];

  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient startPairingDiscovery:agentUUID:applicationService:browseMode:]", 30, "RPNWAgentClient[%@] starting pairing discovery...", v3);
}

void sub_1001228D0(void *a1)
{
  v1 = [a1 description];
  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient updateAgentClientInfo:browseResponse:listener:advertiseDescriptor:browseDescriptor:isFlowHandler:isUsingQUIC:isTCP:agentClientPID:persona:context:parameters:]", 30, "Updated %@", v1);
}

void sub_100122A0C(void *a1, void *a2)
{
  v16 = [a1 flowToken];
  v4 = [a2 peer];
  v5 = [v4 destinationDevice];
  sub_1000099D4(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient handleStatusCode:]", 30, "%@ Connection %@ to device '%@' is ready");
}

void sub_100122AA0(void *a1, void *a2)
{
  v16 = [a1 flowToken];
  v4 = [a2 peer];
  v5 = [v4 destinationDevice];
  sub_1000099D4(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient handleStatusCode:]", 30, "%@ Connection %@ to device '%@' is viable");
}

void sub_100122B34(void *a1, void *a2, unsigned __int8 a3)
{
  v7 = [a1 flowToken];
  v5 = [a2 peer];
  v6 = [v5 destinationDevice];
  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient handleStatusCode:]", 30, "%@ Connection %@ to device '%@' got an error %d", v7, a2, v6, a3);
}

void sub_100122BDC(uint64_t a1)
{
  v1 = [*(a1 + 32) flowToken];
  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient handleStatusCode:]_block_invoke", 90, "%@ Failed to connect to peer\n", v1);
}

void sub_100122C3C(uint64_t a1)
{
  v4 = [*(a1 + 32) flowToken];
  v2 = [*(a1 + 40) peer];
  v3 = [v2 destinationDevice];
  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient handleStatusCode:]_block_invoke", 30, "%@ Successfully connected to peer='%@'\n", v4, v3);
}

void sub_100122CD8(id *a1)
{
  v1 = [*a1 flowToken];
  LogPrintF(&dword_1001D46B8, "[RPNWAgentClient handleStatusCode:]_block_invoke", 30, "%@ Outgoing connection ready, starting connection", v1);
}

void sub_100122D38(void *a1)
{
  v2 = a1;
  v3 = objc_alloc_init(sub_10000D6A4());
  [v3 appendFormat:@"%p", v1];

  LogPrintF(&dword_1001D46B8, "+[RPNWAgentClient findAgentClient:tryPort:isTCP:isFlowHandler:]", 30, "Looking up agent client from client=%@", v3);
}

void sub_100122E00(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10000D6A4() browseToken];
  LogPrintF(&dword_1001D46B8, "+[RPNWAgentClient findListenerAgentClientFromApplicationServiceName:]", 30, "%@ %@ Listener found agentClient=%@", v1, v3, a1);
}

void sub_100122EEC(void *a1)
{
  [a1 flowToken];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10000D6A4() connection];
  LogPrintF(&dword_1001D46B8, "+[RPNWAgentClient findAgentClientFromConnectionID:]", 30, "%@ Found agentClient=%@, connection=%@", v1, a1, v3);
}

void sub_100122F98(char a1, void *a2)
{
  if (a1)
  {
    [a2 flowToken];
  }

  else
  {
    [a2 browseToken];
  }
  v3 = ;
  LogPrintF(&dword_1001D46B8, "+[RPNWAgentClient removeAgentClient:isFlowHandler:]", 30, "%@ Removing client %@", v3, a2);
}

void sub_10012301C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF(&dword_1001D4728, "[RPNWPeer startDiscovery:applicationService:controlFlags:deviceFilter:startHandler:connectedHandler:updateHandler:lostHandler:invalidationHandler:]", 30, "Starting RPNWPeer[%@] discovery", v2);
}

void sub_100123174(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF(&dword_1001D4728, "[RPNWPeer stopDiscovery]", 30, "Stopping RPNWPeer[%@] discovery", v2);
}

void sub_100123490(void *a1)
{
  v1 = [a1 token];
  LogPrintF(&dword_1001D4728, "[RPNWPeer findListenerAndCreateConnection:version:applicationService:listenerID:connectionID:]", 30, "%@ Agent client process no longer live, rejecting connection", v1);
}

void sub_1001234E8(void *a1)
{
  v1 = [a1 token];
  LogPrintF(&dword_1001D4728, "[RPNWPeer findListenerAndCreateConnection:version:applicationService:listenerID:connectionID:]", 30, "%@ Listener mapping has listener agent client, starting connection", v1);
}

void sub_100123540(void *a1)
{
  v1 = [a1 token];
  LogPrintF(&dword_1001D4728, "[RPNWPeer findListenerAndCreateConnection:version:applicationService:listenerID:connectionID:]", 30, "%@ Already have outstanding triggered connection, not triggering this connection", v1);
}

void sub_100123598(void *a1)
{
  v2 = [a1 token];
  v3 = [a1 peer];
  v4 = [v3 destinationDevice];
  LogPrintF(&dword_1001D4728, "[RPNWPeer findListenerAndCreateConnection:version:applicationService:listenerID:connectionID:]", 30, "%@ Listener mapping has no listener agent client - connecting to peer device '%@'", v2, v4);
}

void sub_10012363C(uint64_t a1)
{
  v4 = [*(a1 + 32) token];
  v2 = [*(a1 + 32) peer];
  v3 = [v2 destinationDevice];
  LogPrintF(&dword_1001D4728, "[RPNWPeer findListenerAndCreateConnection:version:applicationService:listenerID:connectionID:]_block_invoke", 30, "%@ Successfully connected to peer='%@'\n", v4, v3);
}

void sub_1001236F4(void *a1, uint64_t a2)
{
  v3 = [a1 flowToken];
  v5 = v3;
  if (*(a2 + 32))
  {
    v4 = "SERVER";
  }

  else
  {
    v4 = "CLIENT";
  }

  LogPrintF(&dword_1001D4728, "[RPNWPeer handleConnectionData:]_block_invoke", 30, "%@ RPNW-DATA %s Received data from peer", v3, v4);
}

void sub_10012377C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 flowToken];
  LogPrintF(&dword_1001D4728, "[RPNWPeer handleConnectionData:]_block_invoke_2", 40, "%@ Received connection status %s for connection %@", v5, [RPNWPeer statusCodeToString:a2], a3);
}

void sub_100123804(void *a1)
{
  v3 = [a1 flowToken];
  v2 = [a1 connection];
  LogPrintF(&dword_1001D4728, "[RPNWPeer handleConnectionData:]_block_invoke_2", 40, "%@ Agent client %@ has no connection framer for connection %@", v3, a1, v2);
}

void sub_10012388C(void *a1)
{
  v2 = [a1 flowToken];
  LogPrintF(&dword_1001D4728, "[RPNWPeer handleConnectionData:]_block_invoke_2", 90, "%@ Agent client %@ has no connection", v2, a1);
}

void sub_1001239E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = [a1 name];
  v8 = a1;
  v9 = objc_alloc_init(NSMutableString);
  [v9 appendFormat:@"%p", v8];

  LogPrintF(&dword_1001D4728, "[RPNWPeer receiveWithRequestID:receiveHandler:]_block_invoke", 30, "Request from %@:%@, senderID=%@, connectionID=%@ listenerID=%@\n", v10, v9, a2, a3, a4);
}

void sub_100123B0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v6 = [*(a1 + 40) destinationDevice];
  v5 = [v6 name];
}

void sub_100123BA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) destinationDevice];
  v3 = [v4 name];
}

void sub_100123ED8(id *a1)
{
  v1 = [*a1 _description];
  LogPrintF(&dword_1001D4810, "[RPAssertionInfo trackerStartAssertion]_block_invoke", 30, "Assertion Starting: %@\n", v1);
}

void sub_100123F38(id *a1)
{
  v1 = [*a1 _description];
  LogPrintF(&dword_1001D4810, "[RPAssertionInfo trackerCheckAssertion]_block_invoke", 90, "Assertion Expired: %@\n", v1);
}

void sub_100123F98(id *a1)
{
  v1 = [*a1 _description];
  LogPrintF(&dword_1001D4810, "[RPAssertionInfo trackerStopAssertion]_block_invoke", 30, "Assertion Stopping: %@\n", v1);
}

void sub_100124370(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v7 = [v8 bleDeviceAddress];
  if ([v7 isEqual:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_1001243FC(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 bleDevice];
  v5 = [v4 advertisementFields];
  CFDataGetTypeID();
  v6 = CFDictionaryGetTypedValue();

  if (v6)
  {
    v7 = objc_alloc_init(CURangingPeer);
    [v7 setDeviceAddress:v6];
    v8 = [v9 model];
    [v7 setDeviceModel:v8];

    [*(a1 + 32) addObject:v7];
  }
}

uint64_t sub_1001244F8(uint64_t a1)
{
  v1 = *(*a1 + 12);
  if ((v1 - 1) > 2)
  {
    v2 = "?";
  }

  else
  {
    v2 = (&off_1001AEBC8)[v1 - 1];
  }

  return LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _activate]_block_invoke", 30, "AirDrop mode changed: %s (%d)\n", v2, v1);
}

uint64_t sub_100124824()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "DisableSelfIdentityRolling: %s -> %s\n", v2, v0);
}

uint64_t sub_10012487C()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "PeopleDiscoveryFamily: %s -> %s\n", v2, v0);
}

uint64_t sub_1001248D4()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "PeopleDiscoveryFriends: %s -> %s\n", v2, v0);
}

uint64_t sub_10012492C()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "PeopleDiscoveryRanging: %s -> %s\n", v2, v0);
}

uint64_t sub_100124984()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "PeopleStrangers: %s -> %s\n", v2, v0);
}

uint64_t sub_1001249DC()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4910, "[RPPeopleDaemon prefsChanged]", 30, "OneTimeDateRequestedResetCompleted: %s -> %s\n", v2, v0);
}

uint64_t sub_100124AF4()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _discoveryEnsureStarted]", 30, "Device discovery update track peers %s -> %s\n", v2, v0);
}

uint64_t sub_100124B4C()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _discoveryEnsureStarted]", 30, "Device discovery update screen off %s -> %s\n", v2, v0);
}

uint64_t sub_100124BA4()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _discoveryEnsureStarted]", 30, "Device discovery update PTS %s -> %s\n", v2, v0);
}

uint64_t sub_100124BFC(uint64_t a1)
{
  v1 = "Background";
  switch(a1)
  {
    case 1:
      v1 = "BackgroundOld";
      break;
    case 2:
      v1 = "NormalOld";
      break;
    case 3:
      v1 = "HighOld";
      break;
    case 4:
      v1 = "AggressiveOld";
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      goto LABEL_8;
    case 10:
      return LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _discoveryEnsureStarted]", 30, "Device discovery scan rate: %s\n", v1);
    default:
      switch(a1)
      {
        case 20:
          v1 = "Normal";
          break;
        case 30:
          v1 = "HighNormal";
          break;
        case 40:
          v1 = "High";
          break;
        case 50:
          v1 = "Aggressive";
          break;
        default:
LABEL_8:
          v1 = "?";
          break;
      }

      break;
  }

  return LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _discoveryEnsureStarted]", 30, "Device discovery scan rate: %s\n", v1);
}

void sub_100126058(char a1)
{
  v1 = [NSNumber numberWithBool:a1 & 1];
  LogPrintF(&dword_1001D4910, "[RPPeopleDaemon sendFriendRequest:nonWakingRequest:sendersKnownAlias:]_block_invoke", 30, "Sent friend request - success: %@", v1);
}

uint64_t sub_1001262EC(_DWORD *a1, uint64_t a2, char a3)
{
  v5 = *a1 - 1;
  if (v5 > 2)
  {
    v6 = "?";
  }

  else
  {
    v6 = (&off_1001AEBC8)[v5];
  }

  v7 = [*(a2 + 408) count];
  v8 = [*(a2 + 416) count];
  v9 = "no";
  if (a3)
  {
    v9 = "yes";
  }

  return LogPrintF(&dword_1001D4910, "[RPPeopleDaemon _rangingResponderUpdateForAirDropChange]", 30, "Update for AirDrop mode: %s, %d active, %d other, changed %s\n", v6, v7, v8, v9);
}

void sub_100126548()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10000D1C0();
  LogPrintF(&dword_1001D4910, "[RPPeopleXPCConnection clientDeviceFound:report:]", 30, "Person changed: %@, %#{flags}\n");
}

void sub_1001265B8(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4910, "[RPPeopleXPCConnection clientDeviceFound:report:]", 30, "Person found: %@\n", v1);
}

void sub_100126658()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10000D1C0();
  LogPrintF(&dword_1001D4910, "[RPPeopleXPCConnection clientDeviceLost:]", 30, "Person changed: %@, %#{flags}\n");
}

void sub_1001266C8()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10000D1C0();
  LogPrintF(&dword_1001D4910, "[RPPeopleXPCConnection clientDeviceLost:]", 30, "Person lost: %@, %#{flags}\n");
}

void sub_1001267B8()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10000D1C0();
  LogPrintF(&dword_1001D4910, "[RPPeopleXPCConnection clientDeviceChanged:changes:]", 30, "Person changed: %@, %#{flags}\n");
}

void sub_100126B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C(&dword_1001D4A70, "[RPPrivateDaemon _processPacketPtr:end:]", a3, "No header\n");
  }
}

void sub_100126B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C(&dword_1001D4A70, "[RPPrivateDaemon _processProbePtr:end:]", a3, "No SIG1\n");
  }
}

void sub_100126BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C(&dword_1001D4A70, "[RPPrivateDaemon _processProbePtr:end:]", a3, "No EPK1\n");
  }
}

void sub_100126C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C(&dword_1001D4A70, "[RPPrivateDaemon _processResponsePtr:end:]", a3, "No ESIG2\n");
  }
}

void sub_100126C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C(&dword_1001D4A70, "[RPPrivateDaemon _processResponsePtr:end:]", a3, "No EPK2\n");
  }
}

void sub_100126CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C(&dword_1001D4A70, "[RPPrivateDaemon _processAnnouncementPtr:end:]", a3, "No SIG1\n");
  }
}

void sub_100126D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001D4A70 <= 30 && (dword_1001D4A70 != -1 || _LogCategory_Initialize()))
  {
    sub_10000357C(&dword_1001D4A70, "[RPPrivateDaemon _processAnnouncementPtr:end:]", a3, "No EPK1\n");
  }
}

uint64_t sub_100126DB0(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_10000357C(&dword_1001D4A70, "[RPPrivateDaemon _processQueryPtr:end:]", a3, "No EMSG1\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000357C(&dword_1001D4A70, "[RPPrivateDaemon _processQueryPtr:end:]", a3, "No EMSG1\n");
    }
  }

  return result;
}

uint64_t sub_100126E04(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_10000357C(&dword_1001D4A70, "[RPPrivateDaemon _processAnswerPtr:end:]", a3, "No EMSG2\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000357C(&dword_1001D4A70, "[RPPrivateDaemon _processAnswerPtr:end:]", a3, "No EMSG2\n");
    }
  }

  return result;
}

void sub_100126E9C(void *a1)
{
  v1 = [a1 xpcCnx];
  LogPrintF(&dword_1001D4A70, "-[RPPrivateDaemon _xpcConnectionInvalidated:]", 20, "XPC connection ended: %#{pid}\n", [v1 processIdentifier]);
}

uint64_t sub_1001276EC()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon diagnosticCommand:params:]", 30, "Diag: AWDL advertiser force: %s -> %s\n", v2, v0);
}

uint64_t sub_100127744()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon diagnosticCommand:params:]", 30, "Diag: AWDL browser force: %s -> %s\n", v2, v0);
}

uint64_t sub_1001277B8()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon prefsChanged]", 30, "BLE client enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_100127810()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon prefsChanged]", 30, "BLE server enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_100127868()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon prefsChanged]", 30, "Client enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_1001278C0()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon prefsChanged]", 30, "Ignore RemoteDisplay Checks: %s -> %s\n", v2, v0);
}

uint64_t sub_100127918()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon prefsChanged]", 30, "NearbyActionV2: %s -> %s\n", v2, v0);
}

uint64_t sub_100127970()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon prefsChanged]", 30, "NoInfra: %s -> %s\n", v2, v0);
}

uint64_t sub_1001279C8()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon prefsChanged]", 30, "NoUSB: %s -> %s\n", v2, v0);
}

uint64_t sub_100127A20()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon prefsChanged]", 30, "Allow pairing server: %s -> %s\n", v2, v0);
}

uint64_t sub_100127A78()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon prefsChanged]", 30, "Server enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_100127AD0()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon prefsChanged]", 30, "Server Bonjour Infra: %s -> %s\n", v2, v0);
}

void sub_100127E88(uint64_t a1)
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBLEDiscoveryDeviceFound:]", 30, "BLE device changed: %@\n");
}

void sub_100127EE0(uint64_t a1)
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBLEDiscoveryDeviceFound:]", 30, "BLE device found: %@\n");
}

void sub_10012800C(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBLEDiscoveryDeviceLost:]", 30, "BLE device lost (changed): %@\n", v1);
}

void sub_10012806C(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBLEDiscoveryDeviceLost:]", 30, "BLE device lost (removed): %@\n", v1);
}

void sub_100128214(void *a1)
{
  [a1 modelIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBLENearbyActionV2AdvertiserShouldRun]", 30, "Skip using NearbyActionV2 advertiser, destination device model did not match '%@'\n");
}

void sub_1001283CC()
{
  sub_100009994();
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourFoundDevice:reevaluate:]", 10, v0, v1);
}

void sub_100128430()
{
  sub_100009994();
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourFoundDevice:reevaluate:]", 20, "Ignoring device with unsupported requirements: %#ll{flags}, %@\n", v0, &unk_100149280, v1);
}

void sub_1001284A4(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourFoundDevice:reevaluate:]", 10, "Ignoring ConnectOnly Bonjour device: %@\n", v1);
}

void sub_100128504(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourFoundDevice:reevaluate:]", 90, "Ignoring found device with missing IDS device ID: %@\n", v1);
}

void sub_100128564()
{
  sub_100009994();
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourFoundDevice:reevaluate:]", 30, "Bonjour device changed %@, %@\n", v0, v1);
}

void sub_1001285D0()
{
  sub_100009994();
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourFoundDevice:reevaluate:]", 30, "Bonjour device found: %@, %@\n", v0, v1);
}

void sub_10012863C(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourFoundDevice:reevaluate:]", 10, "Ignoring found unresolved device: %@\n", v1);
}

void sub_10012872C()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10000D1CC();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _processPendingLostDevices]", 30, "Bonjour device lost (changed): %@, %@\n");
}

void sub_100128784()
{
  sub_100009994();
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_10000D1CC();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _processPendingLostDevices]", 30, "Bonjour device lost (removed): %@, %@\n");
}

void sub_100128870()
{
  sub_100009994();
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourAWDLBrowserFoundDevice:]", 30, "Ignoring AWDL device with unsupported requirements: %#ll{flags}, %@\n", v0, &unk_100149280, v1);
}

void sub_1001288E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = CUDescriptionWithLevel();
  v5 = [*(a2 + 160) objectForKeyedSubscript:a3];
  v6 = "(update)";
  if (!v5)
  {
    v6 = "(new)";
  }

  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourAWDLBrowserFoundDevice:]", 30, "Found AWDL device: %@, %@ %s\n", a3, v7, v6);
}

void sub_100128990(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = [a1 identifier];
  *a3 = v6;
  v7 = [a1 bleDevice];
  v8 = [v7 rapportIdentifier];
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourAWDLBrowserFoundDevice:]", 30, "AWDL device idsDeviceID %@ did not match identifier %@ rapportIdentifier %@\n", a2, v6, v8);
}

void sub_100128A24(void *a1)
{
  [a1 serviceType];
  objc_claimAutoreleasedReturnValue();
  sub_10000D1CC();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourAWDLBrowserFoundDevice:]", 30, "Start connection to found AWDL device (%@) for service type %@ \n");
}

void sub_100128A7C(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourAWDLBrowserFoundDevice:]", 90, "Ignoring found AWDL device with missing IDS device ID: %@\n", v1);
}

void sub_100128ADC(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourAWDLBrowserFoundDevice:]", 30, "Ignoring found unresolved AWDL device: %@\n", v1);
}

void sub_100128B3C(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourAWDLBrowserFoundDevice:]", 30, "Ignoring non-ConnectOnly AWDL device: %@\n", v1);
}

void sub_100128BDC(void *a1)
{
  [a1 serviceType];
  objc_claimAutoreleasedReturnValue();
  sub_10000D1CC();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientAWDLPairingSessionWithDevice:]", 30, "Start connection to found AWDL device (%@) for service type %@ \n");
}

void sub_100128C74()
{
  sub_100009994();
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourAWDLBrowserLostDevice:]", 30, "Lost AWDL device: %@, %@\n", v0, v1);
}

void sub_100128CE0(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourAWDLBrowserLostDevice:]", 90, "Ignoring lost AWDL device with missing IDS device ID: %@\n", v1);
}

uint64_t sub_100128D40(uint64_t a1)
{
  if (*(a1 + 65))
  {
    v1 = "enable";
  }

  else
  {
    v1 = "disable";
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientSendNeedsAWDLOverWiFi:]_block_invoke", 30, "Sent NeedsAWDL %s event over WiFi\n", v1);
}

void sub_100129140(void *a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _serverBonjourAWDLAdvertiserEnsureStarted]", 30, "Bonjour AWDL advertiser start: %@\n", v1);
}

void sub_100129524(void *a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _localDeviceUpdate]", 30, "Local device changed: %@\n", v1);
}

void sub_1001295A4(void *a1, uint64_t a2)
{
  v3 = [a1 angelJobLabel];
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _acquireRBSAssertionForEntry:error:]", 90, "### Failed to acquire runningboard assertion for launch angel '%@' error (%@) \n", v3, a2);
}

void sub_100129600(char a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  v5 = [a2 identifier];
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _receivedCameraCapabilitiesMessage:fromDevice:isFirstUpdate:]", 30, "inIsFirstUpdate: %s inDevice.identifier:%@ _devicePairedIdentifier:%@\n", v4, v5, *(a3 + 320));
}

void sub_100129840()
{
  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _registerForIncomingMessages]_block_invoke_3", 90, "### Received continuity camera confirmation but sender's IDS ID: %@\n", 0);
  }
}

void sub_1001298B0()
{
  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _registerForIncomingMessages]_block_invoke_4", 90, "### Received continuity camera exit session but sender's IDS ID: %@\n", 0);
  }
}

void sub_1001299E0(void *a1, uint64_t a2)
{
  v4 = [a1 idsDeviceIdentifier];
  LogPrintF(&dword_1001D4BA0, "-[RPRemoteDisplayDaemon _requestCameraCapabilitiesForDevice:]", 10, "Not requesting camera capabilities for %@. hasCameraCapabilities:%d, cameraCapabilityRequestIsActive:%d\n", v4, a2, [a1 cameraCapabilityRequestIsActive]);
}

void sub_100129ADC(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v4 = [*a2 _findMatchingDeviceWithIdentifier:*a1];
  v3 = "yes";
  if (!v4)
  {
    v3 = "no";
  }

  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _requestCameraCapabilitiesForDevice:]_block_invoke", 30, "Not scheduling camera capabilities, deviceIdentifier: %@ device known: %s\n", v2, v3);
}

void sub_100129D9C()
{
  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _registerForCameraCapabilitiesRequest]_block_invoke_3", 90, "### Received continuity camera exit session but sender's IDS ID: %@\n", 0);
  }
}

uint64_t sub_100129E0C(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = "?";
  }

  else
  {
    v1 = (&off_1001AF280)[a1];
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _postNotificationForWombatActivity:]", 30, "Posting notification for wombat activity change: %s (0x%x)\n", v1, a1);
}

uint64_t sub_100129E88(uint64_t a1)
{
  v1 = *(*a1 + 468);
  if (v1 > 3)
  {
    v2 = "?";
  }

  else
  {
    v2 = (&off_1001AF2B0)[v1];
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _registerForWombatStateNotifications]_block_invoke", 30, "Received wombat state change notification: %s (0x%x)\n", v2, v1);
}

uint64_t sub_100129F0C(char a1)
{
  v1 = "no";
  if (a1)
  {
    v1 = "yes";
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _onenessEnabled]", 30, "Oneness is enabled: %s\n", v1);
}

uint64_t sub_10012A080(uint64_t result)
{
  if (dword_1001D4BA0 <= 30)
  {
    v1 = result;
    if (dword_1001D4BA0 != -1)
    {
      return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon addNeedsAWDLPeer:]", 30, "Failed to send NeedsAWDL event over WiFi, no identifier: %@\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon addNeedsAWDLPeer:]", 30, "Failed to send NeedsAWDL event over WiFi, no identifier: %@\n", v1);
    }
  }

  return result;
}

uint64_t sub_10012A1AC(unint64_t a1, uint64_t a2)
{
  if (a1 > 7)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1001AF2F0)[a1];
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _handleConfirmationResult:fromDevice:]", 30, "Received '%s' for continuity camera confirmation from device: %@\n", v4, a2, v2, v3);
}

void sub_10012A20C(id *a1)
{
  v1 = [*a1 accountID];
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _handleConfirmationResult:fromDevice:]", 30, "Received non-accept response from all devices for selected person: %{mask}@\n", v1);
}

void sub_10012A2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100003DE8(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _handleConfirmationResult:fromDevice:]", a3, "### Skip continuity camera confirmation, no confirmation session ID\n");
  }
}

void sub_10012A328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100003DE8(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _handleConfirmationResult:fromDevice:]", a3, "### Skip continuity camera confirmation, empty result\n");
  }
}

void sub_10012A498(void *a1)
{
  v1 = [a1 bleDevice];
  v2 = [v1 rapportIdentifier];
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _processDiscoverySessionStateChangeForDevice:startReason:]", 30, "Removing session paired identity for rapport identifier %@ \n", v2);
}

uint64_t sub_10012A66C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 48) + 56) + 557);
  if (v4 > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = (&off_1001AF330)[v4];
  }

  return LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayXPCConnection netConnectionStartWithDevice:session:error:]_block_invoke_6", 30, "Discovery session state change after client session setup of session paired device: %@ with start reason %s\n", a2, v5, v2, v3);
}

void sub_10012A6D8(void *a1)
{
  [a1 requestID];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayXPCConnection sessionStartWithID:netCnx:completion:]", 30, "Delivering buffered requestID %@\n");
}

void sub_10012A72C(void *a1)
{
  [a1 eventID];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayXPCConnection sessionStartWithID:netCnx:completion:]", 30, "Delivering buffered eventID %@\n");
}

void sub_10012ACD8(uint64_t a1)
{
  [sub_1000454C4(a1) deviceConfirmedIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_10000D1CC();
  LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayXPCConnection remoteDisplayChangeDiscoverySessionStateForDevice:reason:]", 30, "Exit session with reason '%@' for dedicated device %@ -> clear dedicated device\n");
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}