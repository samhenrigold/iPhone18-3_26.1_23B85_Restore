uint64_t sub_1001D47E0(uint64_t result)
{
  if (dword_1002F61A0 <= 90)
  {
    v1 = result;
    if (dword_1002F61A0 != -1)
    {
      return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _deviceLost:]", 90, "CBDevice identifier not found, %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _deviceLost:]", 90, "CBDevice identifier not found, %@", v1);
    }
  }

  return result;
}

void sub_1001D4A18(uint64_t a1)
{
  v2 = [*(a1 + 32) headGesture];
  v4 = [*(a1 + 32) avgConfidence];
  v3 = [*(a1 + 32) timestamp];
  LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager didDetectedWithHeadGesture:]_block_invoke", 30, "HeadGesture: Type: %lu, Confidence: %@, timestamp: %@", v2, v4, v3);
}

uint64_t sub_1001D4AB0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = @"IS";
  }

  else
  {
    v1 = @"IS NOT";
  }

  return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager didStartStreamingWithIsStreaming:]_block_invoke", 30, "HeadGesture Data %@ streaming", v1);
}

uint64_t sub_1001D4B28(char a1)
{
  v1 = "yes";
  if (a1)
  {
    v2 = "no";
  }

  else
  {
    v2 = "yes";
  }

  if ((a1 & 1) == 0)
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _registerForWirelessSplitterStateChanges]_block_invoke", 30, "Wireless splitter is running changed: %s -> %s", v2, v1);
}

void sub_1001D4BA0(id *a1, void *a2)
{
  v4 = [*a1 btAddress];
  v3 = [a2 btAddress];
  LogPrintF(&dword_1002F6270, "[SRSourceDevice setActiveHRMDevice:]", 30, "Setting Active HRM device %@ -> %@", v4, v3);
}

void sub_1001D4C2C(uint64_t a1)
{
  [*(a1 + 40) identifier];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_100020838() _deviceWithIdentifier:?];

  v3 = v5;
  if (v5)
  {
    [v5 setBatteryInfo:*(a1 + 40)];
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon deviceBatteryInfoUpdated:]_block_invoke", 30, "AADevice battery info updated: %@", *(a1 + 40));
    }

    v4 = +[AAServicesDaemon sharedAAServicesDaemon];
    [v4 reportDeviceFound:v5];

    v3 = v5;
  }
}

void sub_1001D4D18(uint64_t a1)
{
  [*(a1 + 40) identifier];
  objc_claimAutoreleasedReturnValue();
  v7 = [sub_100020838() _deviceWithIdentifier:?];

  v3 = v7;
  if (v7)
  {
    if (*(a1 + 48))
    {
      if ([v7 optimizedBatteryChargingState] == *(a1 + 48))
      {
        v4 = 0;
      }

      else
      {
        [v7 setOptimizedBatteryChargingState:?];
        v4 = 1;
      }

      v3 = v7;
    }

    else
    {
      v4 = 0;
    }

    if (*(a1 + 49) && (v5 = [v7 dynamicEndOfChargeTempDisabled], v3 = v7, v5 != *(a1 + 49)))
    {
      [v7 setDynamicEndOfChargeTempDisabled:?];
    }

    else if (!v4)
    {
      goto LABEL_14;
    }

    v6 = +[AAServicesDaemon sharedAAServicesDaemon];
    [v6 reportDeviceFound:v7];

    v3 = v7;
  }

LABEL_14:
}

void sub_1001D5498(uint64_t a1)
{
  [*(a1 + 40) identifier];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_100020838() _deviceWithIdentifier:?];

  if (v3)
  {
    if ([v3 updateWithPairedAADevice:*(a1 + 40)])
    {
      if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon pairedDeviceUpdated:]_block_invoke", 30, "Connected AADevice updated with paired device: %@", *(a1 + 40));
      }

      [*(a1 + 32) _accessoryDeviceUpdated:v3];
    }
  }

  else if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon pairedDeviceUpdated:]_block_invoke", 30, "Paired AADevice updated, but device not connected: %@", *(a1 + 40));
  }
}

void sub_1001D5A20(uint64_t a1)
{
  v3 = [*(a1 + 32) identifier];
  v2 = [*(a1 + 40) xpcObjectRepresentation];
  LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _sendConfigOverAAController:device:completion:]_block_invoke", 30, "AAConfig sent: destination %@, data <%@>\n", v3, v2);
}

void sub_1001D5AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F62E0, "[AADeviceManagerDaemon _accessoryDeviceUpdated:]", a3, "## connected device is not yet paired, don't proceed");
  }
}

void sub_1001D5B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F62E0, "[AADeviceManagerDaemon _accessoryDeviceUpdated:]", a3, "## identifier not found while updating device config");
  }
}

void sub_1001D5BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F62E0, "[AADeviceManagerDaemon _accessoryDeviceUpdated:]", a3, "## bluetooth address not found while updating device config");
  }
}

uint64_t sub_1001D5C4C(uint64_t a1, uint64_t *a2)
{
  if (dword_1002F62E0 > 90)
  {
    return 1;
  }

  if (dword_1002F62E0 == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  v3 = CUPrintNSError();
  *a2 = v3;
  LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _accessoryDeviceInfoChanged:]", 90, "## Failed to receive accessory device info: %@", v3);
  return 0;
}

uint64_t sub_1001D5CF0(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (dword_1002F62E0 <= 90)
  {
    if (dword_1002F62E0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _accessoryDeviceInfoChanged:]", 90, "## Device %@ is not connected", v3);
    }
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1001D5D74(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (dword_1002F62E0 <= 90)
  {
    if (dword_1002F62E0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _accessoryDeviceInfoChanged:]", 90, "## identifier not found in deviceInfo");
    }
  }

  *a2 = v3;
  return result;
}

void sub_1001D5DEC(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _accessoryDevicePerformActionsOnConnection:]", 30, "Performing actions on connect", v1);
}

void sub_1001D5EA4(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _submitHeadphoneFeaturesMetricsFor:]", 30, "Submitted headphone features snapshot for %@", v1);
}

uint64_t sub_1001D6080(uint64_t result)
{
  if (dword_1002F62E0 <= 90)
  {
    v1 = result;
    if (dword_1002F62E0 != -1)
    {
      return LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _coreBluetoothDeviceLost:]", 90, "CBDevice identifier not found, %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _coreBluetoothDeviceLost:]", 90, "CBDevice identifier not found, %@", v1);
    }
  }

  return result;
}

uint64_t sub_1001D60FC(uint64_t a1, uint64_t *a2)
{
  v3 = [*(a1 + 32) identifier];
  *a2 = v3;
  return LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _sendDEOCTempDisableIntervalIfNeeded:]_block_invoke", 30, "Sent DEOC Temp disable interval to device with identifier: %@", v3);
}

void sub_1001D6158(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _sendEnableDEOCIfNeeded:]_block_invoke", 90, "Failed to enable DEOC: %@", v1);
}

void sub_1001D61B4(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _sendEnableDEOCIfNeeded:]_block_invoke", 30, "DEOC enabled sent to device: %@", v1);
}

void sub_1001D6214(id *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = [*a1 headGesture];
  v11 = [*a1 avgConfidence];
  v7 = [*a1 timestamp];
  v8 = v7;
  v9 = *(*a2 + 76);
  if (v9 > 4)
  {
    v10 = "?";
  }

  else
  {
    v10 = off_1002B72F0[v9];
  }

  LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon didDetectedWithHeadGesture:]_block_invoke", 30, "HeadGesture: Type: %lu, Confidence: %@, timestamp: %@ previouslyDetectedHeadGesture %s AADetectedHeadGesture %s, ", v6, v11, v7, v10, off_1002B7318[a3]);
}

uint64_t sub_1001D62F8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = @"IS";
  }

  else
  {
    v1 = @"IS NOT";
  }

  return LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon didStartStreamingWithIsStreaming:]_block_invoke", 30, "HeadGesture Data %@ streaming", v1);
}

uint64_t sub_1001D6354(char a1)
{
  v1 = @"YES";
  if (a1)
  {
    v1 = @"NO";
  }

  return LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _runHeadGestureDetection:]", 30, "shouldStartHeadGestureManager %@", v1);
}

void sub_1001D6484(uint64_t *a1, void *a2, unsigned int *a3)
{
  v3 = *a1;
  [a2 smartRoutingStateFlags];
  v5 = CUPrintFlags32();
  v4 = CUPrintFlags32();
  LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon smartRoutingStateUpdated:ForDeviceIdentifier:]_block_invoke", 30, "AADevice identifier %@ updated with SR state %@ --> %@", v3, v5, v4);
}

void *sub_1001D6530(void *result)
{
  if (dword_1002F62E0 <= 30)
  {
    v1 = result;
    if (dword_1002F62E0 != -1)
    {
      return LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon smartRoutingStateUpdated:ForDeviceIdentifier:]_block_invoke", 30, "smartRoutingStateUpdated: No AudioAccessoryDevice found for identifier %@", *v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon smartRoutingStateUpdated:ForDeviceIdentifier:]_block_invoke", 30, "smartRoutingStateUpdated: No AudioAccessoryDevice found for identifier %@", *v1);
    }
  }

  return result;
}

void sub_1001D65F0(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _sendSiriMultitoneConfigToDevice:]_block_invoke", 30, "AAConfig sent: destination %@, config <%@>\n", v2, *(a1 + 40));
}

void sub_1001D6F88(void *a1)
{
  v1 = [a1 xpcCnx];
  LogPrintF(&dword_1002F6480, "-[AAServicesDaemon _xpcConnectionInvalidated:]", 20, "XPC connection ended: %#{pid}", [v1 processIdentifier]);
}

void sub_1001D6FEC(void *a1)
{
  v2 = [a1 xpcCnx];
  LogPrintF(&dword_1002F6480, "-[AAServicesDaemon _xpcConnectionInterrupted:]", 20, "XPC connection interrupted: %#{pid}, connectionID: %u", [v2 processIdentifier], objc_msgSend(a1, "connectionID"));
}

uint64_t sub_1001D7640(uint64_t a1)
{
  if (*(*a1 + 176))
  {
    v1 = "yes";
  }

  else
  {
    v1 = "no";
  }

  if (*(*a1 + 177))
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  return LogPrintF(&dword_1002F6480, "[AAServicesDaemon _handleCallIsActiveDidChangeNotification:]_block_invoke", 30, "Mute Control: call state changed, isCallActive: %s, isCallHighPriority: %s", v1, v2);
}

uint64_t sub_1001D76E4(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v1 = "yes";
  }

  else
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1002F6480, "[AAServicesDaemon _handlePTTCallStatusChangedNotification:]_block_invoke", 30, "Mute Control: TUCall state changed, isPTTCall: %s, callState: %d", v1, *(*(*(a1 + 48) + 8) + 24));
}

uint64_t sub_1001D776C(unsigned int a1, uint64_t a2)
{
  if (a1 > 6)
  {
    v2 = "?";
  }

  else
  {
    v2 = (&off_1002B7590)[a1];
  }

  v3 = *(a2 + 48);
  if (v3 > 6)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1002B7748)[v3];
  }

  return LogPrintF(&dword_1002F6480, "[AAServicesDaemon _createBannerSessionMuteActionForIOS:auditToken:appName:appBundleID:]_block_invoke", 30, "Mute Control: banner action: %s, mute control applied: %s", v2, v4);
}

uint64_t sub_1001D7900(unsigned int a1)
{
  if (a1 > 6)
  {
    v1 = "?";
  }

  else
  {
    v1 = (&off_1002B76B0)[a1];
  }

  return LogPrintF(&dword_1002F6480, "[AAServicesDaemon _createBannerSessionMuteActionForMacOS:auditToken:appName:appBundleID:]", 30, "Mute Control: Invalid Mute Action %s, Don't show banner", v1);
}

uint64_t sub_1001D797C(unsigned int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1002B75C8)[a1];
  }

  return LogPrintF(&dword_1002F6480, "[AAServicesDaemon _createBannerSessionMuteActionForMacOS:auditToken:appName:appBundleID:]_block_invoke_2", 30, "Mute Control UINotificationSession action: %s, %{error}", v4, a2, v2, v3);
}

uint64_t sub_1001D7CD0(char a1)
{
  v1 = "no";
  if (a1)
  {
    v1 = "yes";
  }

  return LogPrintF(&dword_1002F6480, "[AAServicesDaemon _reverseMuteActionForToken:shouldMute:]", 30, "Mute Control: setInputMuted: %s succeeded", v1);
}

void *sub_1001D8384(uint64_t a1, int a2)
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _handleNowPlayingStateChangedNotification]_block_invoke", 30, "_handleNowPlayingStateChangedNotification previouslyIsPlaying %d newIsPlaying %d", *(*(a1 + 32) + 81), a2);
  }

  result = *(a1 + 32);
  v5 = *(result + 81);
  if (v5 != a2)
  {
    if (!result[19])
    {
      goto LABEL_17;
    }

    if (dword_1002F6550 <= 30)
    {
      if (dword_1002F6550 != -1)
      {
LABEL_9:
        v6 = @"NotStreaming";
        if (v5)
        {
          v7 = @"Streaming";
        }

        else
        {
          v7 = @"NotStreaming";
        }

        if (a2)
        {
          v6 = @"Streaming";
        }

        LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _handleNowPlayingStateChangedNotification]_block_invoke", 30, "AudioStreamState changed from %@ to %@, stopping the coolOffTimer", v7, v6);
        result = *(a1 + 32);
        goto LABEL_16;
      }

      v8 = _LogCategory_Initialize();
      result = *(a1 + 32);
      if (v8)
      {
        LOBYTE(v5) = *(result + 81);
        goto LABEL_9;
      }
    }

LABEL_16:
    [result _sendSleepDetectionFailureMetric:4];
    [*(a1 + 32) _stopCoolOffTimer];
    [*(a1 + 32) _sendSleepDetectionReset:*(*(a1 + 32) + 160) withResetReason:3];
    result = *(a1 + 32);
    v5 = *(result + 81);
LABEL_17:
    if (v5 != a2)
    {
      *(result + 81) = a2 != 0;
      result = *(a1 + 32);
    }
  }

  if (*(result + 136) == 1 && *(result + 81) == 1 && result[21])
  {
    [result _stopRewindMediaTimer];
    *(*(a1 + 32) + 104) = 0;
    [*(a1 + 32) _sendSleepDetectionUserResumedMedia:1];
    v9 = *(a1 + 32);
    v10 = v9[20];

    return [v9 _sendSleepDetectionReset:v10 withResetReason:4];
  }

  return result;
}

void sub_1001D860C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6550, "[AASleepDetectionManager _aaControllerEnsureStarted]_block_invoke_2", a3, "Invalid identifier for received Sleep Detection message");
  }
}

void sub_1001D87A0(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  v4 = *(a2 + 160);
  if (!v4)
  {
    v4 = @"nil";
  }

  v5 = v3;
  LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _connectedDeviceLost:]", 30, "Device Lost: identifier: %@ _sleepDetectionDeviceIdentifier %@ _sleepDetected %d", v3, v4, *(a2 + 136));
}

uint64_t sub_1001D885C(char a1)
{
  v1 = @"No";
  if (a1)
  {
    v1 = @"Yes";
  }

  return LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _fileRadarForSleepDetection:]", 30, "%@ Sleep Detection tapped -  File Radar", v1);
}

uint64_t sub_1001D88D0(char a1)
{
  v1 = "yes";
  if (a1)
  {
    v2 = "no";
  }

  else
  {
    v2 = "yes";
  }

  if ((a1 & 1) == 0)
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _registerForWirelessSplitterStateChanges]_block_invoke", 30, "Wireless splitter is running changed: %s -> %s", v2, v1);
}

uint64_t sub_1001D892C(char a1)
{
  v1 = @"NO";
  if (a1)
  {
    v1 = @"YES";
  }

  return LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _sendMediaRemoteCommand:startRewindMediaTimer:]", 30, "MR command %@ startRewindMediaTimer %@", @"PauseMedia", v1);
}

void sub_1001D898C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _sendMediaRemoteCommand:startRewindMediaTimer:]_block_invoke", 90, "Failed to %@ due to error: %@", v2, v3);
}

void sub_1001D89FC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 120);
  v4 = [NSNumber numberWithDouble:*(v2 + 128)];
  LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _sendMediaRemoteCommand:startRewindMediaTimer:]_block_invoke", 30, "Playback rewound by %@ seconds current elapsed time %@ _isStreaming %d", v3, v4, *(*(a1 + 40) + 81));
}

void sub_1001D8AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6550, "[AASleepDetectionManager _sendSDConfidenceThresholdIfNeeded]", a3, "_sendSDConfidenceThresholdIfNeeded nil devices");
  }
}

void sub_1001D8B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6550, "[AASleepDetectionManager _sendSDConfidenceThresholdIfNeeded]", a3, "_aaDeviceManagerDaemon is nil");
  }
}

uint64_t sub_1001D8BF4(uint64_t a1)
{
  v3 = *(a1 + 48);
  if (v3 > 4)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1002B7A10)[v3];
  }

  return LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _sendSleepDetectionConfidenceThreshold:]_block_invoke", 30, "Sleep Detection Message sent: destination %@, data <%@> message.subType %s, message.confidenceThreshold %d\n", *(a1 + 40), *(a1 + 32), v4, *(a1 + 49), v1, v2);
}

uint64_t sub_1001D8C64(uint64_t a1)
{
  v3 = *(a1 + 48);
  if (v3 > 4)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1002B7A10)[v3];
  }

  v5 = *(a1 + 49);
  if (v5 > 4)
  {
    v6 = "?";
  }

  else
  {
    v6 = (&off_1002B79E8)[v5];
  }

  return LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _sendSleepDetectionReset:withResetReason:]_block_invoke", 30, "Sleep Detection Message sent: destination %@, data <%@> message.subType %s message.sleepDetectionResetReason %s\n", *(a1 + 40), *(a1 + 32), v4, v6, v1, v2);
}

uint64_t sub_1001D8CF4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 4)
  {
    v2 = "?";
  }

  else
  {
    v2 = (&off_1002B7A10)[v1];
  }

  v3 = a1[1];
  if (v3 > 2)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1002B7A38)[v3];
  }

  return LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _sleepDetectionMessageReceived:]", 30, "Sleep Detection inMessageData AAPauseOnMediaMsgSubtype %s, AAPauseOnMediaMsgSleepStatus %s, budSOC %d, otherBudSOC %d, rewindEpochs %d, confidenceLevel %d", v2, v4, a1[3], a1[4], a1[5], a1[6]);
}

void sub_1001D8D94()
{
  if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _sleepDetectionMessageReceived:]", 90, "Buds don't have sleepDetectionCapability or sleepDetection isn't enabled", v0, v1);
  }
}

void sub_1001D8DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6550, "[AASleepDetectionManager _sleepDetectionMessageReceived:]", a3, "invalid inMessageData");
  }
}

uint64_t sub_1001D8F4C(unsigned __int8 a1, char a2)
{
  if (a1 > 2u)
  {
    v2 = "?";
  }

  else
  {
    v2 = (&off_1002B7A38)[a1];
  }

  return LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _updateSleepStatus:deviceLost:]", 30, "Sleep Detection %s is DeviceLost %d", v2, a2 & 1);
}

uint64_t sub_1001D8FB8(char a1)
{
  v1 = "?";
  if (a1 == 2)
  {
    v1 = "SleepInterrupted";
  }

  if (!a1)
  {
    v1 = "Unknown";
  }

  return LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _updateSleepStatus:deviceLost:]", 30, "Sleep interrupted, status %s", v1);
}

uint64_t sub_1001D9024(uint64_t result)
{
  if (dword_1002F6550 <= 90)
  {
    v1 = result;
    if (dword_1002F6550 != -1)
    {
      return LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _updateSleepStatus:deviceLost:]", 90, "Sleep Detection confidence level '%d' is not greater than the threshold for the platform '%d'.", v1, 65);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _updateSleepStatus:deviceLost:]", 90, "Sleep Detection confidence level '%d' is not greater than the threshold for the platform '%d'.", v1, 65);
    }
  }

  return result;
}

uint64_t sub_1001D911C(uint64_t result, _BYTE *a2)
{
  v3 = result;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _isDeviceIsMoving:]", 30, "_previousMotionActivity is nil");
    }
  }

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1001D9210(uint64_t a1, char a2)
{
  v2 = *(*a1 + 24);
  if (v2 > 0xE)
  {
    v3 = "?";
  }

  else
  {
    v3 = (&off_1002B7A50)[*(*a1 + 24)];
  }

  v4 = "yes";
  if (a2)
  {
    v4 = "no";
  }

  return LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _processUserActivity]_block_invoke", 30, "Activity Level %d (%s), UserActive %s\n", v2, v3, v4);
}

void sub_1001D92CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C(&dword_1002F6550, "[AASleepDetectionManager _sendSleepDetectionFailureMetric:]", a3, "_sleepDetectedConfidenceLevel is zero returning from _sendSleepDetectionFailureMetric");
  }
}

void sub_1001D932C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C(&dword_1002F6550, "[AASleepDetectionManager _sendSleepDetectionFailureMetric:]", a3, "_currentAudioDevice is nil returning from _sendSleepDetectionFailureMetric");
  }
}

void sub_1001D938C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C(&dword_1002F6550, "[AASleepDetectionManager _sendSleepDetectionMediaMetricWithMediaPaused:rewoundMediaInSeconds:mediaStreamingAfterRewinding:]", a3, "_sleepDetectedConfidenceLevel is zero returning from _sendSleepDetectionMediaMetricWithMediaPaused");
  }
}

void sub_1001D93EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C(&dword_1002F6550, "[AASleepDetectionManager _sendSleepDetectionMediaMetricWithMediaPaused:rewoundMediaInSeconds:mediaStreamingAfterRewinding:]", a3, "_currentAudioDevice is nil returning from _sendSleepDetectionMediaMetricWithMediaPaused");
  }
}

void sub_1001D944C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C(&dword_1002F6550, "[AASleepDetectionManager _sendSleepDetectionUserResumedMedia:]", a3, "_sleepDetectedConfidenceLevel is zero returning from _sendSleepDetectionUserResumedMedia");
  }
}

void sub_1001D94AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C(&dword_1002F6550, "[AASleepDetectionManager _sendSleepDetectionUserResumedMedia:]", a3, "_currentAudioDevice is nil returning from _sendSleepDetectionUserResumedMedia");
  }
}

void sub_1001D950C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C(&dword_1002F6550, "[AASleepDetectionManager _sendSleepDuration]", a3, "_currentAudioDevice is nil returning from _sendSleepDuration");
  }
}

uint64_t sub_1001D95A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314(&dword_1002F6550, "[AASleepDetectionManager _processRewindMediaRequest]_block_invoke", a3, "activeOrigin is unsuccessful failed rewinding media");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314(&dword_1002F6550, "[AASleepDetectionManager _processRewindMediaRequest]_block_invoke", a3, "activeOrigin is unsuccessful failed rewinding media");
    }
  }

  return result;
}

void sub_1001D963C(uint64_t a1)
{
  v2 = *(*a1 + 120);
  v4 = [NSNumber numberWithDouble:?];
  v3 = [NSNumber numberWithDouble:*(*a1 + 128)];
  LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _processRewindMediaRequest]_block_invoke_2", 30, "Rewind media by _rewindMediaInSeconds %@ elapsedTime %@ _seekToPosition %@", v2, v4, v3);
}

void sub_1001D9780(void *a1)
{
  v2 = [a1 identifier];
  LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _addSleepDetectionNotificationCategory]", 10, "Adding Sleep Detection notification category: %@, %@", v2, a1);
}

void sub_1001D97DC(uint64_t a1, id *a2, uint64_t *a3)
{
  v5 = [*(*(a1 + 40) + 40) identifier];
  *a3 = v5;
  v6 = [*a2 localizedDescription];
  LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _showSleepDetectionInternalDataCollectionNotification]_block_invoke_3", 90, "Sleep Detection notification not delivered. deviceId: %@, error: %@", v5, v6);
}

uint64_t sub_1001D9870(uint64_t a1, uint64_t *a2)
{
  v3 = [*(*(a1 + 40) + 40) identifier];
  *a2 = v3;
  return LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _showSleepDetectionInternalDataCollectionNotification]_block_invoke_3", 30, "Sleep Detection notification delivered. deviceId: %@", v3);
}

void *sub_1001D9910(void *result)
{
  v1 = result;
  if (dword_1002F6550 <= 90)
  {
    if (dword_1002F6550 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _notificationContentForSleepDetectionNotificationForDevice:]", 90, "_sleepEventTimeStamp is nil");
    }
  }

  *v1 = 0;
  return result;
}

void sub_1001DA2D8(char a1, uint64_t a2)
{
  v4 = CUPrintDurationDouble();
  v5 = "no";
  if (a1)
  {
    v5 = "yes";
  }

  v6 = v4;
  LogPrintF(&dword_1002F6620, "[AADeviceBatteryInfo(BatteryAlerts) wasConnectedInLast:]", 10, "Paired device was connected[%@] in last %@: %s", a2, v4, v5);
}

uint64_t sub_1001DA360(uint64_t result, _BYTE *a2)
{
  if (dword_1002F6620 <= 90)
  {
    v3 = result;
    if (dword_1002F6620 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F6620, "[AADeviceBatteryInfo(BatteryAlerts) wasConnectedInLast:]", 90, "Paired device does not have last connected time: %@", v3);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t sub_1001DA3E4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (dword_1002F6620 <= 90 && ((sub_10003BE10(), !v6) || _LogCategory_Initialize()))
  {
    v7 = [v4 identifier];
    *v3 = v7;
    LogPrintF(&dword_1002F6620, "[AADeviceBatteryInfo(BatteryAlerts) wasConnectedInLast:]", 90, "Paired device not found: %@", v7);
    return 0;
  }

  else
  {
    *a3 = 0;
    return 1;
  }
}

void sub_1001DA498(void *a1)
{
  [a1 localizedDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10003BE20();
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _loadPersistedLastSeenBatteryInfo]", 90, "Failed to deserialize last seen battery info: %@");
}

void sub_1001DA4EC(void *a1)
{
  v2 = [a1 lastSeenBatteryInfoMap];
  [v2 count];
  [a1 lastSeenBatteryInfoMap];
  objc_claimAutoreleasedReturnValue();
  sub_10003BE40();
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _loadPersistedLastSeenBatteryInfo]", 30, "Last seen battery info loaded[%lu]: %@");
}

uint64_t sub_1001DA5EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (dword_1002F6620 > 90)
  {
    return 1;
  }

  sub_10003BE10();
  if (v6 && !_LogCategory_Initialize())
  {
    return 1;
  }

  *a3 = [v4 localizedDescription];
  [v3 lastSeenBatteryInfoMap];
  objc_claimAutoreleasedReturnValue();
  sub_10003BE40();
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _persistLastSeenBatteryInfoWithUrgency:]", 90, "Failed to serialize last seen battery info '%@' for map: %@");

  return 0;
}

uint64_t sub_1001DA6A8(void *a1, void *a2)
{
  v3 = [a1 lastSeenBatteryInfoMap];
  *a2 = v3;
  return LogPrintF(&dword_1002F6620, "-[AALowBatteryAlertDaemon _persistLastSeenBatteryInfoWithUrgency:]", 30, "Last seen battery info persisted: %lu total", [v3 count]);
}

uint64_t sub_1001DA73C(char a1, void *a2, char a3)
{
  if (a1)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if ([a2 systemEffectiveScreenLocked])
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if ([a2 lowBatteryAlertVisible])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if ([a2 systemUIProxCardPresent])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (a3)
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  return LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _checkIfUIStateConditionsForLowBatteryBannerAreMet]", 30, "Low battery banner UI conditions not met, screenActive: %s , screenLocked: %s, lowBatteryBanner: %s, proxCard: %s, srBanner: %s", v5, v6, v7, v8, v9);
}

void sub_1001DA834(void *a1)
{
  v2 = [a1 deviceAddress];
  v3 = [a1 type];
  if (v3 > 2)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B7BE8[v3];
  }

  v5 = [a1 name];
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _removeStaleLowBatteryDevices]", 30, "Low battery removed stale: %@ %s '%@'", v2, v4, v5);
}

void sub_1001DA8F4(void *a1)
{
  v3 = [a1 deviceAddress];
  v4 = [a1 productID];
  v5 = [a1 name];
  [a1 lastBatteryLevel];
  sub_10003BE00();
  v6 = [a1 lastBatteryType];
  if (v6 > 5)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1002B7C00[v6];
  }

  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _reportLowBatteriesWithBatteryInfo:]", 10, "Low Battery banner skipped, device not connected: DA %@, PID %u, Name '%@', Battery %.0f%% (%s)", v3, v4, v5, v1, v7);
}

void sub_1001DA9C0(void *a1)
{
  v3 = [a1 deviceAddress];
  v4 = [a1 productID];
  v5 = [a1 name];
  [a1 lastBatteryLevel];
  sub_10003BE00();
  v6 = [a1 lastBatteryType];
  if (v6 > 5)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1002B7C00[v6];
  }

  [a1 reportTime];
  v8 = CUPrintDateCF();
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _reportLowBatteriesWithBatteryInfo:]", 10, "Low Battery banner skipped, already reported: DA %@, PID %u, Name '%@', Battery %.0f%% (%s), reported at: %@", v3, v4, v5, v1, v7, v8);
}

void sub_1001DAAAC(void *a1)
{
  v7 = [a1 deviceAddress];
  v3 = [a1 productID];
  v4 = [a1 name];
  [a1 lastBatteryLevel];
  sub_10003BE00();
  v5 = [a1 lastBatteryType];
  if (v5 > 5)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1002B7C00[v5];
  }

  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _showAlertForLowBatteryDevice:]", 30, "Low Battery banner: DA %@, PID %u, Name '%@', Battery %.0f%% (%s)", v7, v3, v4, v1, v6);
}

uint64_t sub_1001DAB8C(unsigned int a1, uint64_t a2)
{
  if (a1 > 6)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B7BB0[a1];
  }

  return LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _showAlertForLowBatteryDevice_iOS:]_block_invoke", 30, "LowBattery banner action: %s, %{error}", v4, a2, v2, v3);
}

uint64_t sub_1001DABEC(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v1 = "yes";
  }

  else
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _showLowBatteryBannerIfNeededForDevice:withType:completion:]_block_invoke", 30, "Showing low battery banner if needed for device %s", v1);
}

void sub_1001DAC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6620, "[AALowBatteryAlertDaemon _updateCurrentLowBatteryDevicesWithBatteryInfo:]", a3, "Low battery check, no battery info available.");
  }
}

void sub_1001DACF0(void *a1)
{
  v3 = [a1 deviceAddress];
  v4 = [a1 name];
  [a1 lastBatteryLevel];
  sub_10003BE00();
  v5 = [a1 lastBatteryType];
  if (v5 > 5)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1002B7C00[v5];
  }

  [a1 reportTime];
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _loadPersistedLowBatteryDevices]", 30, "Low battery loaded: DA %@, Name '%@', Battery %.0f%% (%s), ReportTime %{DateCF}", v3, v4, v1, v6, v7);
}

void sub_1001DAF04(uint64_t a1, id *a2)
{
  v14 = [*(a1 + 40) identifier];
  v3 = [*a2 localizedDescription];
  sub_10003BE2C(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _chargingCompleteWithBatteryInfo:]_block_invoke_2", 90, "Charging Reminder was not delivered. deviceId: %@, error: %@");
}

void sub_1001DAF84(uint64_t a1)
{
  v2 = [*(a1 + 40) identifier];
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _chargingCompleteWithBatteryInfo:]_block_invoke_2", 30, "Charging complete notification delivered. deviceId: %@, notificationId: %@", v2, *(a1 + 48));
}

void sub_1001DAFF8()
{
  if (dword_1002F6620 <= 30)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _checkChargingCompleteNotificationWithUpdatedBatteryInfo:]", 30, "Skip charging complete notification, reason: feature disabled for device: %@.", v0);
    }
  }
}

uint64_t sub_1001DB130(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    if (a2 != -1)
    {
      return LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _checkChargingCompleteNotificationWithUpdatedBatteryInfo:]", 30, "Skip charging complete notification, reason: AirPods connected: %@.", a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _checkChargingCompleteNotificationWithUpdatedBatteryInfo:]", 30, "Skip charging complete notification, reason: AirPods connected: %@.", a3);
    }
  }

  return result;
}

void sub_1001DB1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6620, "[AALowBatteryAlertDaemon _checkChargingCompleteNotificationWithUpdatedBatteryInfo:]", a3, "Skip charging complete notification, reason: no case battery");
  }
}

void sub_1001DB2D8(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _dismissChargingCompleteNotificationWithBatteryInfo:]", 30, "Dismiss charging complete notification %@, with reason: %s", v3, off_1002B7C30[a2 - 6]);
}

void sub_1001DB354(char a1, int a2, void *a3)
{
  if ((a1 & 1) != 0 && (a2 != -1 || _LogCategory_Initialize()))
  {
    v4 = [a3 identifier];
    LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _dismissChargingCompleteNotificationWithBatteryInfo:]", 30, "Charging complete notification %@, already dismissed", v4);
  }
}

void sub_1001DB3F0()
{
  if (dword_1002F6620 <= 30)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      v2 = [v0 identifier];
      LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _dismissChargingCompleteNotificationWithBatteryInfo:]", 30, "No reminder to dismiss for device: %@", v2);
    }
  }
}

void sub_1001DB51C(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _checkShouldClearChargingReminderWithUpdatedBatteryInfo:]", 30, "Clearing reminder %@, with reason: %s", v3, off_1002B7C48[a2]);
}

void sub_1001DB594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6620, "[AALowBatteryAlertDaemon _checkShouldClearChargingReminderWithUpdatedBatteryInfo:]", a3, "Skip clear charging reminder, reason: last outstanding notification cleared");
  }
}

void sub_1001DB5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6620, "[AALowBatteryAlertDaemon _checkShouldClearChargingReminderWithUpdatedBatteryInfo:]", a3, "Skip clear charging reminder, reason: no outstanding notification");
  }
}

void sub_1001DB654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6620, "[AALowBatteryAlertDaemon _checkShouldClearChargingReminderWithUpdatedBatteryInfo:]", a3, "Skip clear charging reminder, reason: no case battery");
  }
}

void sub_1001DB6B4()
{
  if (dword_1002F6620 <= 30)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _shouldPostChargingReminderForLowBatteryCaseWithBatteryInfo:]", 30, "Skipping Charging Complete notification, feature disabled for device: %@.", v0);
    }
  }
}

void sub_1001DB72C(void *a1, uint64_t a2)
{
  [a1 prefChargingReminderRepeatBackoffInterval];
  v4 = CUPrintDurationDouble();
  v3 = CUPrintDateCF();
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _shouldPostChargingReminderForLowBatteryCaseWithBatteryInfo:]", 30, "Skip charging reminder, reason: backoff interval[%@] not cleared yet[%@]: %@.", v4, v3, a2);
}

void sub_1001DB7C4(void *a1, uint64_t a2)
{
  [a1 prefChargingReminderRepeatLastConnectedInterval];
  v3 = CUPrintDurationDouble();
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _shouldPostChargingReminderForLowBatteryCaseWithBatteryInfo:]", 30, "Skip charging reminder, reason: device not recently[in last %@] connected: %@.", v3, a2);
}

void sub_1001DB834(void *a1, uint64_t a2)
{
  [a1 prefChargingReminderRepeatLastConnectedInterval];
  v3 = CUPrintDurationDouble();
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _shouldPostChargingReminderForLowBatteryCaseWithBatteryInfo:]", 30, "Charging Reminder should be repeated, device was connected in last %@. Clearing old reminder: %@", v3, a2);
}

void sub_1001DB924(uint64_t a1, id *a2)
{
  v14 = [*(a1 + 40) identifier];
  v3 = [*a2 localizedDescription];
  sub_10003BE2C(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _shouldPostChargingReminderForLowBatteryCaseWithBatteryInfo:]_block_invoke_2", 90, "Charging Reminder was not delivered. deviceId: %@, error: %@");
}

void sub_1001DB9A4(uint64_t a1)
{
  v2 = [*(a1 + 40) identifier];
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _shouldPostChargingReminderForLowBatteryCaseWithBatteryInfo:]_block_invoke_2", 30, "Charging Reminder Delivered. deviceId: %@, notificationId: %@", v2, *(a1 + 48));
}

void sub_1001DBBA0(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _clearUserDismissedChargingNotificationsWhileProcessNotRunning]_block_invoke_2", 30, "User Notifications with notificationId: %@ and deviceId: %@, not found in visible notifications, dismissing tracker", a2, v3);
}

void sub_1001DBBFC(void *a1, unint64_t a2)
{
  v3 = [a1 identifier];
  if (a2 > 0xC)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B7C90[a2];
  }

  v5 = v3;
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _clearNotification:withReason:]", 90, "Charging notification %@ being unexpectedly dismissed before it is posted. Reason: %s", v3, v4);
}

void sub_1001DBC88(void *a1)
{
  v2 = [a1 type];
  if (v2 > 2)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1002B7C78[v2];
  }

  v4 = [a1 identifier];
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _clearNotification:withReason:]", 30, "%s Notification Cleared %@", v3, v4);
}

void sub_1001DBD1C(void *a1, unint64_t a2)
{
  v4 = [a1 type];
  if (v4 > 2)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1002B7C78[v4];
  }

  v6 = [a1 identifier];
  if (a2 > 0xC)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1002B7C90[a2];
  }

  v8 = v6;
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _dismissNotification:withReason:]", 30, "%s Notification: %@ Dismissed with reason: %s", v5, v6, v7);
}

void sub_1001DBDE0(void *a1)
{
  [a1 localizedDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10003BE20();
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _loadNotificationsFromPref]", 90, "Failed to deserialize charging notification trackers: %@");
}

void sub_1001DBE34(void *a1)
{
  v2 = [a1 chargingNotificationMap];
  [v2 count];
  [a1 chargingNotificationMap];
  objc_claimAutoreleasedReturnValue();
  sub_10003BE40();
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _loadNotificationsFromPref]", 30, "Notification trackers loaded[%lu total]: %@");
}

void sub_1001DBEB0(void *a1)
{
  v2 = [a1 identifier];
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _persistNotificationsToPrefs]", 30, "Removing tracker for unpaired device[%@]: %@", v2, a1);
}

uint64_t sub_1001DBF0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (dword_1002F6620 > 90)
  {
    return 1;
  }

  sub_10003BE10();
  if (v6 && !_LogCategory_Initialize())
  {
    return 1;
  }

  *a3 = [v4 localizedDescription];
  [v3 chargingNotificationMap];
  objc_claimAutoreleasedReturnValue();
  sub_10003BE40();
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _persistNotificationsToPrefs]", 90, "Failed to serialize charging notifications '%@' for map: %@");

  return 0;
}

uint64_t sub_1001DBFC8(void *a1, void *a2)
{
  v3 = [a1 chargingNotificationMap];
  *a2 = v3;
  return LogPrintF(&dword_1002F6620, "-[AALowBatteryAlertDaemon _persistNotificationsToPrefs]", 30, "Charging notifications persisted: %lu total", [v3 count]);
}

void sub_1001DC0AC(id *a1)
{
  v1 = [*a1 identifier];
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon pairedDeviceUpdated:]_block_invoke", 10, "Charging reminders disabled for device %@, clearing all notifications", v1);
}

void sub_1001DC10C(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon pairedDeviceLost:]_block_invoke", 30, "Paired device lost %@, clearing all state", v1);
}

uint64_t sub_1001DC1F8(void *a1, char a2)
{
  v3 = [a1 systemIsCharging];
  v4 = "no";
  if (v3)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if (a2)
  {
    v4 = "yes";
  }

  return LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _updateSystemCharging]", 30, "System is charging changed: %s -> %s", v5, v4);
}

uint64_t sub_1001DC268(void *a1, char a2)
{
  v3 = [a1 systemEffectiveScreenLocked];
  v4 = "no";
  if (v3)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if (a2)
  {
    v4 = "yes";
  }

  return LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _updateSystemEffectiveScreenLocked]", 30, "Effective ScreenLocked changed: %s -> %s", v5, v4);
}

uint64_t sub_1001DC2D8(char a1)
{
  v1 = "yes";
  if (a1)
  {
    v2 = "no";
  }

  else
  {
    v2 = "yes";
  }

  if ((a1 & 1) == 0)
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _loadPreferences]", 30, "LowBatteryEnabled: %s -> %s", v2, v1);
}

uint64_t sub_1001DC424(char a1)
{
  v1 = "yes";
  if (a1)
  {
    v2 = "no";
  }

  else
  {
    v2 = "yes";
  }

  if ((a1 & 1) == 0)
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _loadPreferences]", 30, "ChargingReminderEnabled: %s -> %s", v2, v1);
}

uint64_t sub_1001DC5C8(char a1)
{
  v1 = "yes";
  if (a1)
  {
    v2 = "no";
  }

  else
  {
    v2 = "yes";
  }

  if ((a1 & 1) == 0)
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon _systemUIUpdatedWithLayout:]", 30, "System UI monitor: prox card: %s -> %s", v2, v1);
}

void sub_1001DC624()
{
  if (dword_1002F6620 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon receivedNotificationResponse:forRequest:]_block_invoke", 90, "Notification Response unexpected actionId: %@", v0);
    }
  }
}

void sub_1001DC69C()
{
  if (dword_1002F6620 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      v2 = [*v0 content];
      [v2 userInfo];
      objc_claimAutoreleasedReturnValue();
      sub_10003BE20();
      LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon receivedNotificationResponse:forRequest:]_block_invoke", 90, "Notification type not found in notification userinfo: %@");
    }
  }
}

void sub_1001DC750()
{
  if (dword_1002F6620 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      v2 = [*v0 content];
      [v2 userInfo];
      objc_claimAutoreleasedReturnValue();
      sub_10003BE20();
      LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon receivedNotificationResponse:forRequest:]_block_invoke", 90, "Device identifier not found in notification userinfo: %@");
    }
  }
}

uint64_t sub_1001DCB84(uint64_t a1)
{
  v1 = "no";
  if (*(a1 + 12))
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  if (*(a1 + 21))
  {
    v1 = "yes";
  }

  return LogPrintF(&dword_1002F6700, "[SRWxDevice checkActiveHRMDeviceUpdate]", 30, "Check Active HRM Device update inEar %s routed %s", v2, v1);
}

uint64_t sub_1001DCBEC(uint64_t a1)
{
  v1 = "no";
  if (*(a1 + 20))
  {
    v1 = "yes";
  }

  return LogPrintF(&dword_1002F6700, "[SRWxDevice checkSiriHijackEligibility]", 30, "Check Siri Hijack eligibility otherTipiAudioCategory %d otherTipiDeviceBTAddress %@ otherTipiDeviceSiriEnablement %s", *(a1 + 36), *(a1 + 88), v1);
}

void sub_1001DCC54(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = [v7 identifier];
  v11 = [v10 UUIDString];

  if (v11)
  {
    v12 = [v7 bleDevice];
    v13 = [v12 bluetoothAddress];

    v14 = CUPrintNSDataAddress();
    v15 = [v7 bleDevice];
    v16 = [v15 advertisementFields];

    v51 = v14;
    if (!sub_100072EDC(v16, @"paired"))
    {
      v28 = *(a1 + 32);
      v29 = *(*(a1 + 40) + 8);
      v60 = *(v29 + 40);
      [v28 _generateEvaluatorError:@"Ignoring device that is not paired" errorReason:&v60];
      v30 = v60;
      v21 = *(v29 + 40);
      *(v29 + 40) = v30;
      goto LABEL_23;
    }

    v49 = v13;
    v50 = v11;
    v17 = sub_100072EDC(v16, @"hsStatus");
    v18 = sub_100072EDC(v16, @"asCount");
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v20 = sub_100072EDC(v16, @"CnSv");
    if (([sub_100072FB0() _supportsTipi:?] & 1) == 0)
    {
      v31 = *(a1 + 32);
      v32 = *(*(a1 + 40) + 8);
      v59 = *(v32 + 40);
      [v31 _generateEvaluatorError:@"Ignoring device that is not SR enabled" errorReason:&v59];
      v33 = v59;
      v21 = *(v32 + 40);
      *(v32 + 40) = v33;
      goto LABEL_22;
    }

    v21 = CFDictionaryGetCFDataOfLength();
    v22 = *(a1 + 32);
    if (v20)
    {
      v34 = *(*(a1 + 40) + 8);
      v35 = *(v34 + 40);
      Int64Ranged = v34 + 40;
      v58 = v35;
      [v22 _generateEvaluatorError:@"Ignoring device that is already connected" errorReason:&v58];
      v36 = v58;
      goto LABEL_35;
    }

    [v22[161] setTipiWithCompanion:0];
    if (v18)
    {
      if (([sub_100072FB0() _isMyAddress:?] & 1) == 0 && (objc_msgSend(sub_100072FB0(), "_isDevicePairedCheck:") & 1) == 0)
      {
        v47 = sub_100072F1C();
        v57 = v48;
        [v47 _generateEvaluatorError:@"lastConnectedHost is not signed into the same iCloud account as this device" errorReason:&v57];
        v36 = v57;
        goto LABEL_35;
      }

      if ([sub_100072FB0() _isMagnetConnectedDeviceforConnectionCheck:?])
      {
        [*(*(a1 + 32) + 1288) setTipiWithCompanion:1];
      }

      if (CFDictionaryGetInt64Ranged() == 8)
      {
        v39 = sub_100072F1C();
        v56 = v40;
        [v39 _generateEvaluatorError:@"Ignoring device that is connected to SR disabled source device" errorReason:&v56];
        v36 = v56;
        goto LABEL_35;
      }
    }

    v23 = (Int64Ranged << 32);
    if (v23 < 1 || ([sub_100072FB0() _isMagnetConnectedDeviceforConnectionCheck:?] & 1) != 0)
    {
      if (v23 != 0x200000000)
      {
        if (v23 == &_mh_execute_header && [sub_100072FB0() _isMagnetConnectedDeviceforConnectionCheck:?] && *(a1 + 56) == 1)
        {
          v24 = sub_100072F1C();
          obj = v25;
          [v24 _generateEvaluatorError:@"Ignoring device streaming A2DP from companion device" errorReason:&obj];
          objc_storeStrong(v23, obj);
          v26 = *(a1 + 48);
          if (v26)
          {
            *v26 = 1;
          }

          goto LABEL_22;
        }

        goto LABEL_20;
      }

      if (![sub_100072FB0() _isMagnetConnectedDeviceforConnectionCheck:?])
      {
LABEL_20:
        v27 = *(a1 + 32);
        if ((v17 & 0x24) != 0)
        {
          objc_storeStrong(v27 + 50, a3);
          *a4 = 1;
LABEL_22:
          v13 = v49;
          v11 = v50;
LABEL_23:

          goto LABEL_24;
        }

        v37 = *(*(a1 + 40) + 8);
        v38 = *(v37 + 40);
        Int64Ranged = v37 + 40;
        v52 = v38;
        [v27 _generateEvaluatorError:@"Ignoring devices that are not in-ear" errorReason:&v52];
        v36 = v52;
LABEL_35:
        objc_storeStrong(Int64Ranged, v36);
        goto LABEL_22;
      }

      v44 = sub_100072F1C();
      v53 = v45;
      [v44 _generateEvaluatorError:@"Ignoring device streaming HFP from companion device" errorReason:&v53];
      v43 = v53;
    }

    else
    {
      v41 = sub_100072F1C();
      v55 = v42;
      [v41 _generateEvaluatorError:@"Ignoring device streaming from non-companion device" errorReason:&v55];
      v43 = v55;
    }

    objc_storeStrong(v23, v43);
    v46 = *(a1 + 48);
    v13 = v49;
    v11 = v50;
    if (v46)
    {
      *v46 = 1;
    }

    goto LABEL_23;
  }

LABEL_24:
}

BOOL sub_1001E0CE4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 UTF8String])
  {
    sub_100072E50();
    v3 = NSDataWithHex();
    if ([v3 length] == 6 && objc_msgSend(v3, "bytes"))
    {
      v7 = 0;
      __s1 = 0;
      v4 = memcmp(&__s1, [v3 bytes], objc_msgSend(v3, "length")) != 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1001E1F34(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = [v10 aaNearbyDevice];
  if ([v7 heartRateMonitorCapability] == 2)
  {
    v8 = [v10 aaNearbyDevice];
    v9 = [v8 healthKitDataWriteAllowed];

    if (v9 == 1 && [v10 isNearby])
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
      *a4 = 1;
    }
  }

  else
  {
  }
}

void sub_1001E2000(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = a3;
  v8 = [*(*(a1 + 32) + 1240) objectForKeyedSubscript:a2];
  if (!v8 && [v18 connectionState] == 2 && objc_msgSend(v18, "inEar"))
  {
    v9 = [v18 btAddress];
    v10 = [*(*(a1 + 32) + 40) deviceWithBluetoothAddress:v9];
    v11 = [v10 heartRateMonitorCapability];
    v12 = [v10 healthKitDataWriteAllowed];
    v13 = v12 == 1;
    if ([v10 productID] == 8221)
    {
      v14 = [v10 heartRateMonitorEnabled];
      v13 = v12 == 1 && v14 == 1;
    }

    if (v11 == 2 && v13)
    {
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v17 = [v18 btAddress];
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _selectHRMCapableDeviceFromDiscoveredDevices]_block_invoke", 90, "Selected discovered device as HRM %@", v17);
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
      *a4 = 1;
    }
  }
}

void sub_1001E2F0C()
{
  sub_10007317C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v7 = [*(v3 + 32) _getWxFWVersion:v5];
  if ([*(v3 + 32) _wxFwSupportsTipiScore:v7])
  {
    mach_absolute_time();
    [v6 otherTipiDeviceIdleTick];
    v8 = UpTicksToSeconds();
    if (*(v3 + 40) == 1 && v8 <= 0x1DF)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _sendNowPlayingTemporaryOverrideIfNeeded:]_block_invoke", 30, "Other tipi device has been idle less than 8 mins");
      }
    }

    else if ([v6 otherTipiAudioCategory] >= 0x65)
    {
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v12 = "Other tipi device has non-Idle audio category";
LABEL_18:
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _sendNowPlayingTemporaryOverrideIfNeeded:]_block_invoke", 90, v12);
      }
    }

    else
    {
      if (*(*(v3 + 32) + 1016) != 1 || ![v6 otherTipiDeviceIsWatch])
      {
        v9 = [NSData dataWithBytes:v3 + 41 length:3];
        v10 = objc_alloc_init(CBDevice);
        [v10 setIdentifier:v5];
        *(*(v3 + 32) + 712) = *(v3 + 40);
        sub_100072E30();
        v13 = v5;
        v14 = v9;
        v11 = v9;
        [sub_100073050() sendSmartRoutingInformation:? device:? completionHandler:?];

        goto LABEL_8;
      }

      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v12 = "Route changed due to proactive routing from a watch, sending override is not appropriate here";
        goto LABEL_18;
      }
    }
  }

LABEL_8:

  sub_100073168();
}

void sub_1001E3384(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) _getWxFWVersion:?];
  if ([*(a1 + 32) _wxFwSupportsTipiScore:v3])
  {
    [*(a1 + 32) _sendNowPlayingInfoUpdateToWx:v4 withMessage:*(a1 + 48) withLastPlayedTarget:*(a1 + 56) | (*(a1 + 60) << 32) andHeadsetAddress:{*(a1 + 62), *(a1 + 40)}];
  }
}

uint64_t sub_1001E355C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = "no";
  v4 = *(*a1 + 1184);
  if (v4 == 10721)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if (v4 == 328)
  {
    v3 = "yes";
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _activate]_block_invoke_2", 30, "Smart Routing disconnect notification from bluetoothd, wx address raw %@, parsed addr %@, reason %llu, Idle budswap %s Hfp budswap %s", a2, a3, v4, v5, v3);
}

void sub_1001E3664()
{
  sub_100072F64();
  v3 = v2;
  if ([v2 inEar])
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  if ([v3 inEarDisabled])
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  v6 = [*(*(v1 + 32) + 1240) count];
  v7 = [v3 otherTipiDeviceBTAddress];
  if (v7)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  v9 = v7;
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _activate]_block_invoke_4", 50, "Device address %@ is inEar %s inEarDisabled %s %d in Tipi %s", v0, v4, v5, v6, v8);
}

uint64_t sub_1001E3738()
{
  sub_100072F2C();
  if (v3)
  {
    v1 = v2;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _activate]_block_invoke_5", 30, "Smart Routing ringer state changed: %s -> %s", v0, v1);
}

uint64_t sub_1001E379C()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _activate]_block_invoke_6", 30, "Smart Routing wireless splitter state changed: %s -> %s", v2, v0);
}

uint64_t sub_1001E38A0()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SmartRoutingConnectionAlert: %s -> %s", v2, v0);
}

uint64_t sub_1001E38F8()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "WatchAutomaticSwitching: %s -> %s", v2, v0);
}

uint64_t sub_1001E3950()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SmartRoutingEnabledPhase3: %s -> %s", v2, v0);
}

uint64_t sub_1001E39A8()
{
  sub_100072EC4();
  if (*(v0 + 552))
  {
    v4 = v2;
  }

  else
  {
    v4 = v1;
  }

  if (*(v0 + 762))
  {
    v5 = v2;
  }

  else
  {
    v5 = v1;
  }

  if (*(v0 + 553))
  {
    v1 = v2;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SmartRoutingEnabledPhase3 %s _totalCloudDeviceCount %d _isHSA2Account %s _pairedDeviceSupportsSmartRouting %s _isFirstUpdated %s", v3, *(v0 + 1384), v4, v5, v1);
}

uint64_t sub_1001E3A2C()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SmartRoutingNoBackOffTimers: %s -> %s", v2, v0);
}

uint64_t sub_1001E3A84()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SmartRoutingPipeEnabled: %s -> %s", v2, v0);
}

uint64_t sub_1001E3ADC()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SmartRoutingTipiElection: %s -> %s", v2, v0);
}

uint64_t sub_1001E3B34()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SmartRoutingTiPiHealing2.0: %s -> %s", v2, v0);
}

uint64_t sub_1001E3B8C()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SmartRoutingForcedDisconnect: %s -> %s", v2, v0);
}

uint64_t sub_1001E3BE4()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SmartRoutingNoNearbyFallBack: %s -> %s", v2, v0);
}

uint64_t sub_1001E3C3C()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SmartRoutingEligible: %s -> %s", v2, v0);
}

uint64_t sub_1001E3C94()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SpeakRoute: %s -> %s", v2, v0);
}

uint64_t sub_1001E3CEC()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "RouteIndication Enable: %s -> %s", v2, v0);
}

uint64_t sub_1001E3D44()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "ProactiveOwnershipArbitration: %s -> %s", v2, v0);
}

uint64_t sub_1001E3D9C()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "NoAutoRouteMac: %s -> %s", v2, v0);
}

uint64_t sub_1001E3DF4()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "ForceRejectLePipe: %s -> %s", v2, v0);
}

uint64_t sub_1001E3E4C()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "ForceTipiv2: %s -> %s", v2, v0);
}

uint64_t sub_1001E3EA4()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "MacAutomaticSwitching: %s -> %s", v2, v0);
}

uint64_t sub_1001E3EFC()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "MxAudioScore: %s -> %s", v2, v0);
}

uint64_t sub_1001E3F54()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "Hijackv2: %s -> %s", v2, v0);
}

uint64_t sub_1001E3FAC()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "PriortizedCall: %s -> %s", v2, v0);
}

uint64_t sub_1001E4004()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "PriortizedCall muteMac: %s -> %s", v2, v0);
}

uint64_t sub_1001E405C()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "In-Use banner: %s -> %s", v2, v0);
}

uint64_t sub_1001E40B4()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "USB-C unified audio device: %s -> %s", v2, v0);
}

uint64_t sub_1001E410C()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "SRConnectionManager: %s -> %s", v2, v0);
}

uint64_t sub_1001E4164()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prefsChanged]", 30, "NowPlaying temporary override: %s -> %s", v2, v0);
}

uint64_t sub_1001E41D8()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _update]", 30, "Effective ScreenLocked changed: %s -> %s", v2, v0);
}

uint64_t sub_1001E4270(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 24);
  if (v1 > 4)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1002B8A78[v1];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon areHeadphonesNearbyAndEligibleToPlay:]_block_invoke_2", 30, "areHeadphonesNearbyAndEligibleToPlay: eligibilityStatus %s", v2);
}

void sub_1001E42DC(void *a1)
{
  [a1 btAddress];
  objc_claimAutoreleasedReturnValue();
  v1 = [sub_10007315C() tipiConnectType];
  if (v1 > 0xA)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1002B8FD0[v1];
  }

  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluateNearbyHRMDevice:]", 30, "EvaluateNearbyHRMDevice wx %@ TipiConnect %s", v3, v2);
}

uint64_t sub_1001E4370(void *a1, uint64_t a2)
{
  v3 = [a1 tipiConnectType];
  if (v3 > 0xA)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B8FD0[v3];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectToHeadphone:]", 30, "Evaluator: connect start: %@ type %s", a2, v4);
}

void sub_1001E4420(uint64_t a1)
{
  [*(a1 + 32) name];
  objc_claimAutoreleasedReturnValue();
  sub_100073080();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _startLEPipeConnect:]_block_invoke", 90, "Evaluator: Setting LE Pipe send failed: %@, %{error}");
}

void sub_1001E448C(uint64_t a1, void *a2)
{
  v4 = [sub_1000730D8(a1) isFirstConnectionAfterSREnable];
  v3 = [v4 objectForKeyedSubscript:*a2];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _startLEPipeConnect:]_block_invoke", 90, "###Evaluator: LE Pipe failure! Switch to phase1 connection, first connection after SR enable %@", v3);
}

uint64_t sub_1001E4510(id *a1, uint64_t a2)
{
  v3 = [*a1 nearbyAudioState];
  if (v3 > 3)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B8ED0[v3];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _startLEPipeConnect:]_block_invoke", 90, "Skip phase 1 fallback. WxFw %@ WxAudioState %s", a2, v4);
}

uint64_t sub_1001E47C4(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1002B8AA0[a1 - 1];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRun]", 30, "Evaluator: skip, Bluetooth unsupported state: %s", v1);
}

void sub_1001E4828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunInUseBanner:]", a3, "InUseBanner: Skip, not enabled");
  }
}

void sub_1001E4888(void *a1)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v2 = [a1 inUseBannerBackoffReason];
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunInUseBanner:]", 30, "InUseBanner: Skip, reason %@", v2);
  }
}

void sub_1001E4930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunInUseBanner:]", a3, "InUseBanner: Skip, Wx connecting/connected");
  }
}

void sub_1001E4990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunInUseBanner:]", a3, "InUseBanner: Skip, headset not supports SR");
  }
}

void sub_1001E49F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunInUseBanner:]", a3, "InUseBanner: Skip, USB plug-in to myself");
  }
}

void sub_1001E4A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunInUseBanner:]", a3, "InUseBanner: Skip, last routed to myself, assume Wx is already connecting");
  }
}

void sub_1001E4AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunInUseBanner:]", a3, "InUseBanner: Skip, connected source count is 0");
  }
}

void sub_1001E4B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunInUseBanner:]", a3, "InUseBanner: Skip, banner shown already");
  }
}

void sub_1001E4B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunInUseBanner:]", a3, "InUseBanner: Skip, screen locked");
  }
}

void sub_1001E4BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunInUseBanner:]", a3, "InUseBanner: Skip, Missing Wx address");
  }
}

void sub_1001E4C68(void *a1)
{
  v1 = [a1 name];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke", 30, "Evaluator: device %@ with higher or equal ASR", v1);
}

void sub_1001E4CC4(void *a1)
{
  [a1 name];
  objc_claimAutoreleasedReturnValue();
  sub_100073080();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: skip, headset %@ is not in status subtype, current subtype is %u");
}

void sub_1001E4D2C(void *a1)
{
  v1 = [a1 name];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: skip, headset %@ is in airplane mode", v1);
}

void sub_1001E4D88(void *a1)
{
  v1 = [a1 name];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: skip, headset %@ is in case with lid closed", v1);
}

void sub_1001E4DE4(void *a1)
{
  v1 = [a1 name];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: skip, we are already connected to %@", v1);
}

void sub_1001E4E40(void *a1)
{
  v1 = [a1 name];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: headset %@ not idle and we already have a SR device connected, back off", v1);
}

void sub_1001E4E9C(void *a1)
{
  v1 = [a1 name];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: already have an inEar SR device connected, and current headset is already inEar, back off", v1);
}

void sub_1001E4F30(void *a1)
{
  [a1 name];
  objc_claimAutoreleasedReturnValue();
  sub_100073080();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: skip, eligible headset %@ with address %@ is not in ear and a third party BT device is already connected");
}

void sub_1001E4F98(void *a1)
{
  v1 = [a1 name];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: skip, headset %@ is USB plugged in but last connected to another source", v1);
}

void sub_1001E5010(uint64_t a1, void *a2)
{
  [*(*a1 + 400) name];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10007315C() name];
  sub_10003BE2C(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: overwritting priority of headset based on inEar from %@ to %@");
}

void sub_1001E5090(void *a1)
{
  v1 = [a1 name];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: skip, we are already connected to %@ but haven't received connected event yet", v1);
}

void sub_1001E50EC(void *a1)
{
  v1 = [a1 name];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: skip, headset %@ is part of manual disconnection list.", v1);
}

void sub_1001E5148(void *a1)
{
  [a1 name];
  objc_claimAutoreleasedReturnValue();
  sub_100073080();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: skip, eligible headset %@ with address %@ is not running correct OS version");
}

void sub_1001E51B0()
{
  sub_10007317C();
  v1 = v0;
  [v0 identifier];
  v2 = [objc_claimAutoreleasedReturnValue() UUIDString];
  v3 = [v1 name];
  [v1 audioRoutingScore];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_3", 30, "Evaluator: comparing, Wx: %@, ND: %@, ID %@ Name '%@' NS %s");

  sub_100073168();
}

void sub_1001E5284(uint64_t a1, id *a2)
{
  v14 = [*(*(*a1 + 8) + 40) name];
  v3 = [a2[7] name];
  sub_10003BE2C(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_3", 30, "Evaluator: overwritting priority of headset based on inEar from %@ to %@");
}

void sub_1001E530C(uint64_t a1)
{
  v1 = [*(a1 + 56) name];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_3", 30, "Evaluator: headset %@ is inEar and it's connected to watch & it's idle, force phase1", v1);
}

void sub_1001E536C(uint64_t a1)
{
  [*(*(a1 + 32) + 592) name];
  objc_claimAutoreleasedReturnValue();
  sub_100073080();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_4", 90, "Evaluator: Setting LE Pipe send failed: %@, %{error}");
}

void sub_1001E53DC(uint64_t a1, void *a2)
{
  v4 = [sub_1000730D8(a1) isFirstConnectionAfterSREnable];
  v3 = [v4 objectForKeyedSubscript:*a2];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_4", 90, "###Evaluator: LE Pipe failure! Switch to phase1 connection, first connection after SR enable %@", v3);
}

void sub_1001E5460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(*a1 + 664) objectForKeyedSubscript:a2];
  v4 = [v6 audioState];
  if (v4 > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1002B8ED0[v4];
  }

  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_4", 90, "Skip phase 1 fallback. WxFw %@ WxAudioState %s", a3, v5);
}

void sub_1001E5588()
{
  sub_100072F7C();
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAddWxMapDevice:routingAction:otherAddress:otherName:otherSourceVersion:isRoutingInitialized:newWx:]", 30, "Skip creating SR Wx device since headset doesn't support SR");
  }

  *v0 = v1;
}

void sub_1001E5674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAddWxMapDeviceFromConnectedDevice:]", a3, "Skip creating SR Wx device since headset doesn't support SR");
  }
}

uint64_t sub_1001E5730(unsigned int a1, void *a2)
{
  if (a1 > 6)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1002B8B40[a1];
  }

  [a2 batteryLevelInfo];
  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingShowBanner:withDevice:andDeviceAddress:andProductID:andCentralContentItemTxt:andTimeout:andDeviceType:]", 30, "PostingBanner: Type %s, battery being shown %f", v2, v3);
}

uint64_t sub_1001E57A4(id *a1, uint64_t a2, char a3)
{
  if ([*a1 screenActive])
  {
    v6 = "active";
  }

  else
  {
    v6 = "inactive";
  }

  [*a1 screenLocked];
  sub_100072F38();
  if (*(a2 + 1320))
  {
    v8 = "present";
  }

  else
  {
    v8 = "not present";
  }

  v9 = "no";
  if (a3)
  {
    v9 = "yes";
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingShowBanner:withDevice:andDeviceAddress:andProductID:andCentralContentItemTxt:andTimeout:andDeviceType:]", 30, "SmartRouting unable to post banner screen is %s and it's %s and prox status card is %s inEarState is %s", v6, v7, v8, v9);
}

uint64_t sub_1001E5874(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 6)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1002B8B08[a1];
  }

  v4 = *(a2 + 64);
  if (v4 > 6)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1002B8B40[v4];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingShowBanner:withDevice:andDeviceAddress:andProductID:andCentralContentItemTxt:andTimeout:andDeviceType:]_block_invoke", 30, "PostingBanner: Action: %s, type %s %{error}", v3, v5, a3);
}

uint64_t sub_1001E5A3C(uint64_t result, void *a2)
{
  if (dword_1002F6778 <= 90)
  {
    v3 = result;
    if (dword_1002F6778 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _lowestBatteryForDeviceWithAddress:]", 90, "Battery info lookup failed. Unable to find battery info for device with identifier: %@", v3);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t sub_1001E5AC0(uint64_t result, void *a2)
{
  if (dword_1002F6778 <= 90)
  {
    v3 = result;
    if (dword_1002F6778 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _lowestBatteryForDeviceWithAddress:]", 90, "Battery info lookup failed. Unable to find identifier for device with address: %@", v3);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t sub_1001E5B44()
{
  sub_100072F2C();
  if (*(v4 + 1536))
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  if (v0)
  {
    v2 = v3;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingConnectionCompleted:]", 30, "Evaluator: smartRoutingConnectionCompleted cleaning up items, FD %s, tipi election %s OnDemand %s", v1, v5, v2);
}

void sub_1001E5CCC(void *a1)
{
  v2 = [a1 action];
  if (v2 > 5)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1002B90F8[v2];
  }

  v6 = [a1 reason];
  v4 = [a1 clientID];
  v5 = [a1 deviceAddress];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _respondRoutingRequest:withResponseHandler:wxAddress:]", 50, "RoutingRequestResponse: Action %s reason %@ CID 0x%X address %@", v3, v6, v4, v5);
}

uint64_t sub_1001E5D90(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314(&dword_1002F6778, "[BTSmartRoutingDaemon _respondRoutingRequest:withResponseHandler:wxAddress:]", a3, "RoutingRequestResponse: Skip, response is  null");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314(&dword_1002F6778, "[BTSmartRoutingDaemon _respondRoutingRequest:withResponseHandler:wxAddress:]", a3, "RoutingRequestResponse: Skip, response is  null");
    }
  }

  return result;
}

void sub_1001E5DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6778, "[BTSmartRoutingDaemon _respondRoutingRequest:withResponseHandler:wxAddress:]", a3, "RoutingRequestResponse: Skip, no response handler");
  }
}

void sub_1001E5E48(void *a1)
{
  v1 = [a1 deviceAddress];
  sub_100072FE0();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _hijackBlockingModeChangedFromClient:mode:completion:]", 50, "HijackBlockingModeChangedFromClient: Wx %@ mode %s control %@");
}

void sub_1001E5EE4()
{
  sub_1000731A4();
  sub_100072F64();
  v2 = v1;
  [v1 inEar];
  [v2 inEarDisabled];
  [*(*(v0 + 32) + 1240) count];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAudioRoutingRequest:withResponseHandler:]_block_invoke_2", 50, "Device address %@ is inEar %s inEarDisabled %s %d");
  sub_100073190();
}

uint64_t sub_1001E5FDC(void *a1)
{
  if ([a1 hasOwnership])
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  return LogPrintF(&dword_1002F6778, "-[BTSmartRoutingDaemon _smartRoutingAudioRoutingRequest:withResponseHandler:]_block_invoke_3", 30, "Hijack: buds went in ear but we don't want to route ownership %s otherTipi %u", v2, [a1 otherTipiAudioCategory]);
}

void sub_1001E6068()
{
  sub_100072F64();
  v2 = UpTicksToSeconds();
  v3 = [*(*v1 + 1240) objectForKeyedSubscript:v0];
  LogPrintF(&dword_1002F6778, "-[BTSmartRoutingDaemon _smartRoutingAudioRoutingRequest:withResponseHandler:]_block_invoke_3", 30, "Hijackblocking: Hijack Request, device %@ with %ll{dur} remaining, last ticks are %llu", v0, v2, [v3 hijackBackoffTicks]);
}

void sub_1001E6130(void *a1, uint64_t a2)
{
  v3 = [a1 otherTipiDeviceVersion];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAudioRoutingRequest:withResponseHandler:]_block_invoke_3", 30, "Device setup doesn't support HijackV2: fwVersion %@, tipi version %@", a2, v3);
}

uint64_t sub_1001E61EC(void *a1, uint64_t a2)
{
  [a1 inEar];
  sub_100072F38();
  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAudioRoutingRequest:withResponseHandler:]_block_invoke_3", 30, "Connected banner cool off period is %llus, inEar state is %s", a2, v3);
}

uint64_t sub_1001E648C(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v3 = *(*a1 + 64);
  if (v3 > 0xE)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B8DF8[*(*a1 + 64)];
  }

  if (a3 > 0xEu)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1002B8DF8[a2 & 0xF];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _activityMonitorEnsureStarted]_block_invoke", 30, "Activity level changed %d (%s) -> %d (%s)\n", v3, v4, a2, v5);
}

uint64_t sub_1001E6570(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1256) bluetoothState];
  if (v2 > 0xA)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1002B8BF8[v2];
  }

  v4 = [*(*(a1 + 32) + 232) bluetoothState];
  if (v4 > 0xA)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1002B8BF8[v4];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceMonitorEnsureStarted]_block_invoke_2", 30, "Bluetooth state changed %s -> %s", v3, v5);
}

uint64_t sub_1001E6654(uint64_t a1)
{
  v2 = [sub_1000730D8(a1) bluetoothState];
  if (v2 > 0xA)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1002B8BF8[v2];
  }

  v4 = [*(*a1 + 232) bluetoothState];
  if (v4 > 0xA)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1002B8BF8[v4];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceMonitorEnsureStarted]_block_invoke_4", 30, "Setting Bluetooth state after activation %s -> %s", v3, v5);
}

uint64_t sub_1001E6710(void *a1, uint64_t a2)
{
  v3 = [a1 routingAction];
  if (v3 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B90F8[v3];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedDeviceFound:]_block_invoke", 30, "Change unmanaged %@ to tipi device %s", a2, v4);
}

void sub_1001E6780()
{
  sub_10007317C();
  sub_100072F7C();
  [*(v0 + 40) isUSBPlugIn];
  sub_100072F38();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _constructAndSendTipiScoreMessageToWx:withScore:]_block_invoke", 30, "SendTipiScoreToWx: %@ score %s srMode %s USB %s byte %@ result %{error}\n");
  sub_100073168();
}

uint64_t sub_1001E68DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 30)
  {
    if (result != -1)
    {
      return sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _dataRelayAddRequestedDataTypesForServer:]_block_invoke", a3, "SRDataRelay Add data types success");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _dataRelayAddRequestedDataTypesForServer:]_block_invoke", a3, "SRDataRelay Add data types success");
    }
  }

  return result;
}

uint64_t sub_1001E6974(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 30)
  {
    if (result != -1)
    {
      return sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _dataRelayAddRequestedDataTypesForServer:]_block_invoke_2", a3, "SRDataRelay Add data types success");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _dataRelayAddRequestedDataTypesForServer:]_block_invoke_2", a3, "SRDataRelay Add data types success");
    }
  }

  return result;
}

uint64_t sub_1001E6A0C(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _dataRelayRemoveRequestedDataTypesForServer:]_block_invoke", a3, "SRDataRelay Remove data types success");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _dataRelayRemoveRequestedDataTypesForServer:]_block_invoke", a3, "SRDataRelay Remove data types success");
    }
  }

  return result;
}

uint64_t sub_1001E6AA0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 30)
  {
    if (result != -1)
    {
      return sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _dataRelayRemoveRequestedDataTypesForServer:]_block_invoke_2", a3, "SRDataRelay Remove data types success");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _dataRelayRemoveRequestedDataTypesForServer:]_block_invoke_2", a3, "SRDataRelay Remove data types success");
    }
  }

  return result;
}

uint64_t sub_1001E6BC4(const __CFString *a1, const __CFString *a2, uint64_t *a3)
{
  v3 = &stru_1002C1358;
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = &stru_1002C1358;
  }

  if (a2)
  {
    v3 = a2;
  }

  v5 = *a3;
  if (*(*a3 + 537))
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if (*(v5 + 576))
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if (*(v5 + 538))
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteMonitorActiveAudioRouteChanged:]_block_invoke", 30, "Active audio route changed: nameOutputContext %@ nameOutputContextPresentation %@, BT %s Speaker %s, Receiver %s", v4, v3, v6, v7, v8);
}

uint64_t sub_1001E6C5C(void *a1, uint64_t a2)
{
  [a1 routed];
  sub_100072F38();
  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteMonitorActiveAudioRouteChanged:]_block_invoke", 30, "BT route, make Wx %@ Routed, currently routed %s", a2, v3);
}

uint64_t sub_1001E6D74(void *a1)
{
  v1 = [a1 routingAction];
  if (v1 > 5)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1002B90F8[v1];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteMonitorActiveAudioRouteChanged:]_block_invoke_3", 30, "Current route action is %s, change to DontRoute", v2);
}

uint64_t sub_1001E6FBC(void *a1, int a2)
{
  [a1 routed];
  sub_100072F38();
  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteHijackResponseHandlerFor:allowedToHijack:withReason:]", 30, "Show connected banner after hijack routed %s secondSinceLastBanner %d", v3, a2);
}

void sub_1001E7098(char a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  v7 = [*a2 objectForKeyedSubscript:a3];
  v6 = [v7 otherTipiDeviceVersion];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteHijackResponse:wxAddress:andAudioResponseID:andAllowedToHijack:withReason:]", 30, "Legacy routing behavior = %s %@ %@", v5, v6, a4);
}

uint64_t sub_1001E7504(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 88))
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  if ([*(v1 + 184) activeCallCount])
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyInfoActivityChanged]_block_invoke", 30, "NearbyInfoActivityChanged: audio is playing. Continue to keep High score, Media %s, phone call %s", v2, v3);
}

uint64_t sub_1001E7844(uint64_t a1)
{
  v1 = *(*a1 + 64);
  if (v1 > 0xE)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1002B8DF8[v1];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _powerMonitorEnsureStarted]_block_invoke", 30, "Screen inactive, activity %s", v2);
}

void sub_1001E7994()
{
  sub_100073104();
  v6 = [*(*v4 + 1248) objectForKeyedSubscript:v5];
  *v0 = v6;
  v7 = [v6 thV2WxCount];
  v8 = [*(*v3 + 1248) objectForKeyedSubscript:v2];
  LogPrintF(&dword_1002F6778, "-[BTSmartRoutingDaemon _relayConduitMessageEnsureStarted]_block_invoke_3", 30, "TipiTableEvent: Update TiPiV2 Ticks, wx device %@, connectDeviceCount %u, thV2WxCount %u, ticks %u", v2, v1, v7, [v8 thV2Ticks]);
}

void sub_1001E7A2C(void *a1, uint64_t a2)
{
  v3 = [a1 otherTipiDeviceBTAddress];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _relayConduitMessageEnsureStarted]_block_invoke_3", 30, "TipiTableEvent: Updating other Tipi device to %@, currently other Tipi device %@", a2, v3);
}

uint64_t sub_1001E7B70(uint64_t a1)
{
  v2 = [*(a1 + 32) bluetoothState];
  if (v2 > 0xA)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1002B8BF8[v2];
  }

  v4 = [*(a1 + 32) discoverableState];
  if (v4 > 2)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1002B8B98[v4];
  }

  v6 = [*(a1 + 32) inquiryState];
  if (v6 > 2)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1002B8B98[v6];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _relayConduitMessageEnsureStarted]_block_invoke_4", 30, "Activated: Bluetooth state %s, Discoverable %s, Inquiry %s\n", v3, v5, v7);
}

void sub_1001E7C54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 conduitDeviceID];
  v7 = [*(*(*a2 + 8) + 40) identifier];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _relayConduitMessageSend:withOptions:andWxAddress:andOtherAddress:]_block_invoke", 90, "Relaying via %@ inWxAddress %@ to %@ with options %@", v8, a4, v7, *(a3 + 48));
}

void sub_1001E7DD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [*(a1 + 1240) objectForKeyedSubscript:a2];
  v5 = [v4 otherTipiDeviceBTAddress];
  LogPrintF(&dword_1002F6778, "-[BTSmartRoutingDaemon _relayConduitMessageReceived:andSourceDevice:messageType:messageData:]", 40, "Received Hijack request from %@ audioScore %u", v5, [a3 intValue]);
}

void sub_1001E7F00()
{
  sub_100072F64();
  v2 = UpTicksToSeconds();
  v3 = [*v1 objectForKeyedSubscript:v0];
  LogPrintF(&dword_1002F6778, "-[BTSmartRoutingDaemon _relayConduitMessageReceived:andSourceDevice:messageType:messageData:]", 30, "Hijackblocking: Relay message from remote updates hijack blocking ticks, device %@ hijack block with %ll{dur} remaining, last ticks %llu", v0, v2, [v3 hijackBackoffTicks]);
}

uint64_t sub_1001E8098(void *a1, int a2)
{
  [a1 routed];
  sub_100072F38();
  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _relayConduitMessageReceived:andSourceDevice:messageType:messageData:]_block_invoke", 30, "Show connected banner after hijack routed %s secondSinceLastBanner %d", v3, a2);
}

uint64_t sub_1001E8250(void *a1, void *a2)
{
  v4 = [a1 audioRoutingScore];
  v5 = [a1 otherTipiAudioCategory];
  v6 = [a2 audioStreamState];
  if (v6 > 3)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1002B9128[v6];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _shouldDelayRouteToSpeaker:]", 90, "Checking delay speaker route routingScore %d remoteScore %d WxSt %s", v4, v5, v7);
}

void sub_1001E82E8(void *a1)
{
  v1 = [a1 version];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateAccessoryID:connectionDeviceAddresses:completion:]_block_invoke", 30, "Pipe Version %@", v1);
}

uint64_t sub_1001E83BC()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _systemUIMonitorEnsureStarted]_block_invoke_2", 30, "System UI monitor: prox card: %s -> %s", v2, v0);
}

void sub_1001E8430(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _workoutStateChanged]_block_invoke", 30, "Found Fitness+ server %@", v1);
}

void sub_1001E848C(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _workoutStateChanged]_block_invoke", 30, "Found DR Server %@", v1);
}

void sub_1001E84E8(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _workoutStateChanged]_block_invoke_2", 30, "Found DR Server to remove data types %@", v1);
}

uint64_t sub_1001E85A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDiscoveryEnsureStopped]", a3, "Workout Wx discovery timer running");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314(&dword_1002F6778, "[BTSmartRoutingDaemon _wxDiscoveryEnsureStopped]", a3, "Workout Wx discovery timer running");
    }
  }

  return result;
}

uint64_t sub_1001E8714(unsigned int a1, uint64_t a2)
{
  if (a1 > 4)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B8BD0[a1];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunForUSBDevice:trigger:]", 30, "EvaluatorRunForUSBDevice: Wx %@ trigger %s", a2, v4, v2, v3);
}

void sub_1001E881C(id *a1, id *a2)
{
  v3 = [*a1 bluetoothState];
  if (v3 > 0xA)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B8BF8[v3];
  }

  v9 = [*a2 snapshotLocalRoute];
  v5 = [*a2 snapshotLocalPlayingApp];
  v6 = [*a2 snapshotLocalDeviceAudioScore];
  v7 = [*a2 snapshotRemoteDeviceAudioScore];
  v8 = [*a2 snapshotLocalNumOfApps];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon updateCurrentAudioSnapshot]", 30, "AudioStateSnapshot: BtState %s Route %@ App %@, Score %@, Remote %@ NumofApp %@", v4, v9, v5, v6, v7, v8);
}

void sub_1001E8958()
{
  sub_100072F7C();
  v3 = [v2 otherTipiDeviceBTAddress];
  LogPrintF(&dword_1002F6778, "-[BTSmartRoutingDaemon _handleTUCallStateChange:]_block_invoke", 30, "TUNotification: Sending relinquish ownership Wx %@ otherTip %@ %d", v0, v3, [v1 otherTipiAudioCategory]);
}

void sub_1001E89D4(void *a1)
{
  v1 = [a1 providerBundleIdentifier];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _isPhoneCall:]", 30, "TUNotification: New Call is conferencing call %@", v1);
}

void sub_1001E8BE8(void *a1)
{
  v1 = [a1 btAddress];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon activeHRMDeviceUpdateToDeviceWithAddress:]", 30, "Setting Active HRM device to device %@", v1);
}

uint64_t sub_1001E8C44(uint64_t result)
{
  if (dword_1002F6778 <= 30)
  {
    v1 = result;
    if (dword_1002F6778 != -1)
    {
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon activeHRMDeviceUpdateToDeviceWithAddress:]", 30, "No discovered device with address %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon activeHRMDeviceUpdateToDeviceWithAddress:]", 30, "No discovered device with address %@", v1);
    }
  }

  return result;
}

void sub_1001E8CC0(void *a1)
{
  v1 = [a1 btAddress];
  sub_100072FE0();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon activeHRMDeviceUpdateWithPushRequired:]", 30, "Setting Active HRM device %@ SR enabled for device %s");
}

void sub_1001E8F40(void *a1, uint64_t a2)
{
  v14 = [a1 address];
  if ([a1 isUTPConnected])
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  v12 = v3;
  v4 = [a1 sourceCount];
  v5 = [a1 lastConnectHost];
  v6 = [a1 zeroSourceLastRouteHost];
  if ([a1 lidClosed])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if ([a1 primaryInEar])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if ([a1 secondaryInEar])
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  if ([a1 primaryInCase])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if ([a1 secondaryInCase])
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _dumpNearbyWxDevice]_block_invoke", 50, "Dumping nearby Wx device %@ addr %@ UTP %s sourceCount %u lastConnect %@ zeroSourceLastConnect %@ lidClosed %s primaryInEar %s secondaryInEar %s primaryInCase %s secondaryInCase %s", a2, v14, v12, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001E9094()
{
  sub_100072F7C();
  v3 = [v2 routingAction];
  if (v3 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B90F8[v3];
  }

  [v1 routed];
  sub_100072F38();
  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _dumpSrWxDevice]_block_invoke", 30, "Wx %@ routingAction %s routed %s", v0, v4, v5);
}

void sub_1001E912C(void *a1)
{
  v1 = [a1 deviceAddress];
  sub_100072FE0();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _findActiveWxDevice]_block_invoke", 30, "Smart Routing device %@ inEarStatus %s");
}

void sub_1001E9278(void *a1)
{
  v1 = [a1 uniqueID];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _getIDSDeviceFromWxLastConnectedHost:]", 30, "Found IDS device %@", v1);
}

void sub_1001E9310(uint64_t a1)
{
  v1 = CUPrintFlags32();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon getSmartRoutingStateForDeviceAddress:]_block_invoke", 30, "getSmartRoutingStateForDeviceAddress %@", v1);
}

void sub_1001E9374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon getSmartRoutingStateForDeviceAddress:]_block_invoke", a3, "getSmartRoutingStateForDeviceAddress error: No SR Wx device");
  }
}

void sub_1001E9524(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleFitnessPlusDRServerTeardown]_block_invoke", 30, "Bringing down Fitness+ server %@", v1);
}

uint64_t sub_1001E95EC(char a1, uint64_t a2)
{
  v2 = @"Off";
  if (a1)
  {
    v2 = @"On";
  }

  v3 = *(*a2 + 64);
  if (v3 > 0xE)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B8DF8[v3];
  }

  v5 = *(*a2 + 1092);
  if (v5 > 0xF)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1002B8F50[v5];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleHijackBlockingwithDevice:]_block_invoke", 30, "Hijackblocking timer has fired; current media stream is %@, user activity level is %s, audio routing score is %s", v2, v4, v6);
}

uint64_t sub_1001E9694(uint64_t a1)
{
  v1 = *(*a1 + 505) + 1;
  *(*a1 + 505) = v1;
  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleHijackBlockingwithDevice:]_block_invoke", 30, "Hijackblocking continue, current count %d", v1);
}

uint64_t sub_1001E9740(void *a1, char a2, char a3, uint64_t a4)
{
  v7 = [a1 routed];
  v8 = "no";
  if (v7)
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  if (a2)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (a3)
  {
    v8 = "yes";
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleSmartRoutingDisabled:]", 30, "SR disabled: routed %s otherTipi %@ inEar %s isOtherTipiLegacyBuild %s", v9, a4, v10, v8);
}

uint64_t sub_1001E9884(uint64_t a1)
{
  v1 = @"nearbyWx";
  if (!a1)
  {
    v1 = @"address";
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleTriangleRecoveryInitiated:]_block_invoke", 30, "TriangleRecovery: connect via %@", v1);
}

void sub_1001E9914()
{
  sub_100072F7C();
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleWorkoutSessionStart]", 30, "HRM capable device is already routed");
  }

  *v0 = v1;
}

void sub_1001E9988(void *a1)
{
  v1 = [a1 deviceAddress];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleWorkoutSessionStart]", 30, "Workout Session Start: Eligible headset found %@", v1);
}

void sub_1001E99E4(void *a1)
{
  v1 = [a1 btAddress];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleWorkoutSessionStart]", 30, "Setting Active HRM device %@", v1);
}

void sub_1001E9AF4(id *a1, void *a2)
{
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"_localDeviceAudioCategory check failed, _localDeviceAudioCategory : %d", [*a1 intValue]);
  [a2 _logPreemptiveBannerEvalError:v3];
}

void sub_1001E9B68(uint64_t a1)
{
  v1 = "?";
  if (a1 == 2)
  {
    v1 = "HFP Call";
  }

  if (a1 == 3)
  {
    v2 = "HFP Other";
  }

  else
  {
    v2 = v1;
  }

  v4 = [NSString stringWithUTF8String:v2];
  v3 = [NSString stringWithFormat:@"audioState is %@", v4];
  [sub_100072FBC() _logPreemptiveBannerEvalError:?];
}

void sub_1001E9C08()
{
  sub_10007317C();
  sub_100072F64();
  [*v2 objectForKeyedSubscript:?];
  [objc_claimAutoreleasedReturnValue() primaryPlacement];
  v3 = [*v1 objectForKeyedSubscript:v0];
  [v3 secondaryPlacement];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _inEarConnectedCheck:]", 30, "SmartRouting CONNECTED STATE shows inEar: %s for device %@ primary:%s secondary:%s");

  sub_100073168();
}

void sub_1001E9D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6778, "[BTSmartRoutingDaemon _connectedHRMEnabledDevice]_block_invoke", a3, "Other device is not DR compatible");
  }
}

void sub_1001E9DD4(void *a1, uint64_t a2, _BYTE *a3)
{
  v10 = [a1 btAddress];
  v6 = [*(*(a2 + 32) + 40) deviceWithBluetoothAddress:?];
  v7 = [v6 healthKitDataWriteAllowed];
  if ([v6 productID] == 8221)
  {
    v8 = [v6 heartRateMonitorEnabled];
    if (v7 != 1 || v8 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v7 == 1)
  {
LABEL_7:
    objc_storeStrong((*(*(a2 + 40) + 8) + 40), a1);
    *a3 = 1;
  }

LABEL_8:
}

void sub_1001E9EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _hrmEnabledDeviceEligibleToRoute]_block_invoke", a3, "Device not eligible to stream HR");
  }
}

void sub_1001E9F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _hrmEnabledDeviceEligibleToRoute]_block_invoke", a3, "Other tipi device score is not low");
  }
}

uint64_t sub_1001E9FD8(uint64_t a1)
{
  if (*(a1 + 1440))
  {
    v1 = @"YES";
  }

  else
  {
    v1 = @"NO";
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _iPhoneScreenOnPowerEvent]", 30, "Smart Routing Screen On. Existing banner %@", v1);
}

void sub_1001EA06C()
{
  sub_10007317C();
  sub_100072F64();
  v2 = v1;
  [v1 inEar];
  [v2 inEarDisabled];
  [*(*(v0 + 32) + 1240) count];
  [v2 routingAction];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _iPhoneScreenOnPowerEvent]_block_invoke", 50, "Device address %@ is inEar %s inEarDisabled %s %d %s");
  sub_100073168();
}

uint64_t sub_1001EA2E4(void *a1, double a2)
{
  v3 = [a1 batteryType];
  if ((v3 - 1) > 3)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B8EB0[(v3 - 1)];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _lowestBatteryInfoForSFDevice:]", 30, "wxDevice found %s battery, LowestBatteryInfo: %f", v4, a2);
}

uint64_t sub_1001EA3D4(uint64_t a1, char a2)
{
  v4 = [sub_1000730D8(a1) magnetConnected];
  v5 = "no";
  if (v4)
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if (a2)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if (*(*a1 + 1536))
  {
    v5 = "yes";
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyDeviceInfoTriangleRecoveryTimer]_block_invoke", 30, "TriangleRecovery: Magnet %s inAnyTipi %s TipiInProgress %s", v6, v7, v5);
}

uint64_t sub_1001EA558(unsigned int a1, unsigned int a2, char a3, uint64_t a4)
{
  if (a1 > 0xF)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1002B8F50[a1];
  }

  if (a2 > 0xF)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1002B8F50[a2];
  }

  v8 = "yes";
  if (a3)
  {
    v8 = "no";
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _otherTipiDeviceTipiScoreChanged:withOptions:]", 30, "ProactiveRouting: Received other Tipi device update %@ %s -> %s newTipi %s", a4, v6, v7, v8, v4, v5);
}

uint64_t sub_1001EA5EC(int a1)
{
  if ((a1 - 4) > 0xB)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1002B8EF0[a1 - 4];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _otherTipiDeviceTipiScoreChanged:withOptions:]", 30, "ProactiveRouting: Cancel high activity timer since other Tipi device is %s", v1);
}

void sub_1001EA650(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 otherTipiDeviceBTAddress];
  v6 = *(a2 + 1092);
  if (v6 > 0xF)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1002B8F50[v6];
  }

  v8 = v5;
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _otherTipiDeviceTipiScoreChanged:withOptions:]", 30, "ProactiveRouting: Other Tipi %@ has been idle for %ds, my audio score %s", v5, a3, v7);
}

void sub_1001EA768()
{
  sub_100072F7C();
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prewarmAudioAccessoriesForFitnessWorkout]", 30, "HRM capable device is already routed");
  }

  *v0 = v1;
}

void *sub_1001EA7DC(void *result)
{
  v1 = result;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _prewarmAudioAccessoriesForFitnessWorkout]", 30, "Active HRM device elected");
    }
  }

  *v1 = 0;
  return result;
}

uint64_t sub_1001EA978(void *a1, unsigned int a2, uint64_t a3)
{
  v5 = [a1 action];
  if (v5 > 5)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1002B90F8[v5];
  }

  if (a2 > 3)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1002B9128[a2];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _relayConduitMessageStartTimer:withOptions:]_block_invoke", 90, "Hijack relay message timeout, audioScore %ld, RoutingAction %s, wxStreamState %s", a3, v6, v7);
}

void sub_1001EAB24(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v7 = [a1 otherTipiDeviceBTAddress];
  v8 = *(*a2 + 1092);
  if (v8 > 0xF)
  {
    v9 = "?";
  }

  else
  {
    v9 = off_1002B8F50[v8];
  }

  if (*a3)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  v11 = v7;
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _sendAudioScoreChanged:]_block_invoke", 30, "ProactiveRouting: Sending relay via %@ to %@ TipiScore %s newTipi %s", a4, v7, v9, v10);
}

void sub_1001EABE8()
{
  sub_100072F7C();
  v3 = [*(v1 + 32) identifier];
  v2 = CUPrintNSDataHex();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _sendIntendedRouteInfoUpdateToWx:withIntendedRoutingStatus:]_block_invoke", 30, "SendManualRouteInfoToWx: %@ manualRouteMessageBytes <%@> result %{error}\n", v3, v2, v0);
}

void sub_1001EAC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6778, "[BTSmartRoutingDaemon _sendTipiScoreUpdateToWx]", a3, "SendTipiScoreToWx: Active HRM session, skip sending score to the buds");
  }
}

void sub_1001EACDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = CUPrintNSDataHex();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _sendNowPlayingInfoUpdateToWx:withMessage:withLastPlayedTarget:andHeadsetAddress:]_block_invoke", 30, "SendNowPlayingInfoUpdateToWx: %@ nowPlayingMessageBytes <%@> result %{error}\n", v3, v4, a2);
}

void sub_1001EAD54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = CUPrintNSDataHex();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _sendNowPlayingTemporaryOverrideIfNeeded:]_block_invoke_2", 30, "SendNowPlayingTemporaryOverride: %@ overrideMessageBytes <%@> result %{error}\n", v3, v4, a2);
}

uint64_t sub_1001EAF9C(unsigned int a1, uint64_t a2)
{
  if (a1 > 0xA)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B8FD0[a1];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _setPhase1ConnectConfig:andType:]", 30, "Setting phase1 connect Wx %@ type %s", a2, v4, v2, v3);
}

uint64_t sub_1001EAFFC(uint64_t result)
{
  if (dword_1002F6778 <= 90)
  {
    v1 = result;
    if (dword_1002F6778 != -1)
    {
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _setTipiAndRoutedStateFlags:forAddress:]", 90, "No discovered device for address %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _setTipiAndRoutedStateFlags:forAddress:]", 90, "No discovered device for address %@", v1);
    }
  }

  return result;
}

void sub_1001EB078(id *a1, uint64_t a2)
{
  v4 = [*a1 isFirstConnectionAfterSREnable];
  v3 = [v4 objectForKeyedSubscript:a2];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _setIsFirstConnentionAfterSREnable:forDevice:]", 30, "Marking _isFirstConnectionAfterSREnable as NO for %@ %@", a2, v3);
}

void sub_1001EB0FC()
{
  sub_100072F64();
  v3 = [*v2 isFirstConnectionAfterSREnable];
  *v0 = v3;
  v4 = [v3 objectForKeyedSubscript:v1];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _setIsFirstConnentionAfterSREnable:forDevice:]", 30, "Marking _isFirstConnectionAfterSREnable as YES for %@ %@", v1, v4);
}

uint64_t sub_1001EB1F4(void *a1, uint64_t a2)
{
  v3 = [a1 smartRoutingMode];
  if (v3 > 2)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B90A0[v3];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingModeCheck:]", 30, "Checking SR mode %@ %s", a2, v4);
}

void sub_1001EB4C0(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _startHighActivityLevelTimer:]", 30, "ProactiveRouting: Skip, backoff for %@", v1);
}

uint64_t sub_1001EB700(unsigned int a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a1 > 0xE)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B9028[a1];
  }

  return LogPrintF(&dword_1002F6778, "-[BTSmartRoutingDaemon _startRouteCheckTimer:andType:]", 30, "Start route check timer for Wx %@ type %s timeout %fs score %u", a3, v4, *&a4, [*(a2 + 1288) hijackScore]);
}

void sub_1001EB7C0(void *a1)
{
  [a1 idsIdentifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10007315C() model];
  [v2 containsString:@"Mac"];
  sub_100072F38();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _startTipiHealing:withLastConnect:]_block_invoke", 30, "Evaluator: Tipi healing ND %@ idsId %@ isMac %s", a1, v4, v3);
}

void sub_1001EB864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6778, "[BTSmartRoutingDaemon _startWxDiscoveryForWorkout]", a3, "SR is not enabled on this device");
  }
}

id sub_1001EB8C4(void *a1)
{
  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _startWxDiscoveryForWorkout]", 90, "Wx discovery in progress");
  }

  return [a1 _startWxDiscoveryForWorkoutTimer:60];
}

uint64_t sub_1001EB968(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314(&dword_1002F6778, "[BTSmartRoutingDaemon _startWxDiscoveryForWorkout]", a3, "Not routed to default route, return!");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314(&dword_1002F6778, "[BTSmartRoutingDaemon _startWxDiscoveryForWorkout]", a3, "Not routed to default route, return!");
    }
  }

  return result;
}

void sub_1001EBAA8()
{
  sub_10007317C();
  sub_100073104();
  [v1 inEar];
  [v0 otherTipiDeviceBTAddress];
  objc_claimAutoreleasedReturnValue();
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _tipiHealingAttempt]_block_invoke", 30, "Tipi healing inWxAddress %@ sourceCount %u inEar %s lastConnect %@ otherTipi %@");
  sub_100073168();
}

uint64_t sub_1001EBD04(void *a1)
{
  v1 = [a1 routingAction];
  if (v1 > 5)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1002B90F8[v1];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _tipihHealingV2Handling:]", 30, "TipiTableEvent: current route action is %s", v2);
}

uint64_t sub_1001EBDCC(void *a1, uint64_t a2)
{
  v2 = a1[1];
  [a1 _aacpConnectedCheck:a2];
  sub_100072F38();
  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _triggerTipiTableUpdate:]", 30, "TriggerTipiTableUpdate: aaController %@ AACP connected %s", v2, v3);
}

uint64_t sub_1001EBF44(id *a1, int a2, uint64_t a3)
{
  v5 = [*a1 audioRoute];
  if (v5 > 4)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1002B9148[v5];
  }

  if (a2 > 4)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1002B9170[a2 - 1];
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateAudioRoute:withUUID:]", 30, "Device audio route changed: %s -> %s %@", v6, v7, a3);
}

void sub_1001EC09C()
{
  sub_10007317C();
  sub_100072F64();
  [*v2 objectForKeyedSubscript:?];
  [objc_claimAutoreleasedReturnValue() inEar];
  v3 = [*v1 objectForKeyedSubscript:v0];
  v6 = [v3 otherTipiDeviceBTAddress];
  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _verifyWxConnectedRouted:]", 30, "Smart Routing %@ routed %s inEar %s otherTipiAddress %@");

  sub_100073168();
}

uint64_t sub_1001EC61C(unsigned int a1, uint64_t a2)
{
  if (a1 > 2)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1002B9250)[a1];
  }

  return LogPrintF(&dword_1002F6848, "[AAContextManager _ensureStartedContextMonitorWithCompletion:]_block_invoke_3", 30, "Context changed, %@ fusedState %s\n", a2, v4, v2, v3);
}

void sub_1001EC8F8(void *a1, uint64_t a2)
{
  v2 = [a1 stringFromDate:a2];
  LogPrintF(&dword_1002F68B8, "[AAManagedSettingsDaemon _nextCleanupAlarmTime]", 50, "Temporary pairing info will be cleared at: %@", v2);
}

void sub_1001ED7A4(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF(&dword_1002F6928, "[AAChargingManager _loadUserTempDisableDEOCIntervals]", 90, "Failed to deserialize user temp disable deoc intervals: %@", v1);
}

void sub_1001ED7FC(void *a1)
{
  v2 = [a1 userTempDisableDEOCIntervalMap];
  v3 = [v2 count];
  v4 = [a1 userTempDisableDEOCIntervalMap];
  LogPrintF(&dword_1002F6928, "[AAChargingManager _loadUserTempDisableDEOCIntervals]", 30, "User temp disable DEOC intervals loaded[%lu]: %@", v3, v4);
}

uint64_t sub_1001ED87C()
{
  if (dword_1002F6928 > 90)
  {
    return 1;
  }

  sub_1000769FC();
  if (v3 == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  v4 = [v2 localizedDescription];
  *v1 = v4;
  v5 = [v0 userTempDisableDEOCIntervalMap];
  LogPrintF(&dword_1002F6928, "[AAChargingManager _persistUserTempDisableDEOCIntervals]", 90, "Failed to serialize user temp disable DEOC intervals '%@' for map: %@", v4, v5);

  return 0;
}

uint64_t sub_1001ED93C(void *a1, void *a2)
{
  v3 = [a1 userTempDisableDEOCIntervalMap];
  *a2 = v3;
  return LogPrintF(&dword_1002F6928, "-[AAChargingManager _persistUserTempDisableDEOCIntervals]", 30, "User temp disable DEOC intervals persisted: %lu total", [v3 count]);
}

uint64_t sub_1001ED998()
{
  if (dword_1002F6928 > 90)
  {
    return 1;
  }

  sub_1000769FC();
  if (v3 == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  v4 = [*(v2 + 32) bluetoothAddress];
  *v1 = v4;
  v5 = [v0 localizedDescription];
  LogPrintF(&dword_1002F6928, "[AAChargingManager _fetchOptimizedBatteryChargingEnabledForDevice:]_block_invoke", 90, "Unable to fetch OBC status for device[%@] with error %@", v4, v5);

  return 0;
}

void sub_1001EDA58(uint64_t a1, unsigned __int8 a2)
{
  v5 = [*(a1 + 32) identifier];
  v4 = [*(a1 + 32) bluetoothAddress];
  LogPrintF(&dword_1002F6928, "[AAChargingManager _fetchOptimizedBatteryChargingEnabledForDevice:]_block_invoke", 30, "Device[%@] (%@) OBC State: %s", v5, v4, (&off_1002B92F8)[a2]);
}

void sub_1001EDAF8()
{
  sub_1000769FC();
  v4 = *(v3 + 40);
  if (v4 > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = (&off_1002B92F8)[v4];
  }

  v6 = [*(v2 + 32) identifier];
  *v1 = v6;
  v8 = [*(v2 + 32) bluetoothAddress];
  v7 = [v0 localizedDescription];
  LogPrintF(&dword_1002F6928, "[AAChargingManager _changeOptimizedBatteryChargingState:forDevice:]_block_invoke", 90, "Failed to %s OBC for Device[%@] (%@), with error: %@", v5, v6, v8, v7);
}

void *sub_1001EDBD0(void *result)
{
  v1 = result;
  if (dword_1002F6998 <= 30)
  {
    if (dword_1002F6998 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F6998, "[AccessoryUsageSummaryPayload initWithData:]", 30, "invalid payloadData");
    }
  }

  *v1 = 0;
  return result;
}

void sub_1001EDC44(void *a1, void *a2)
{
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    [a1 length];
    sub_10007BF3C();
    v4 = CUPrintNSDataHex();
    LogPrintF(&dword_1002F6998, "[A2dpSummaryPayload initWithData:]", 30, "A2dpSummaryPayload failed to initialize: invalid payloadData '%@'", v4);
  }

  *a2 = 0;
}

void sub_1001EDCE4(void *a1, void *a2)
{
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    [a1 length];
    sub_10007BF3C();
    v4 = CUPrintNSDataHex();
    LogPrintF(&dword_1002F6998, "[HfpSummaryPayload initWithData:]", 30, "HfpSummaryPayload failed to initialize: invalid payloadData '%@'", v4);
  }

  *a2 = 0;
}

void sub_1001EDD84(void *a1, void *a2)
{
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    [a1 length];
    sub_10007BF3C();
    v4 = CUPrintNSDataHex();
    LogPrintF(&dword_1002F6998, "[A2dpFlushSummaryPayload initWithData:]", 30, "A2dpFlushSummaryPayload failed to initialize: invalid payloadData '%@'", v4);
  }

  *a2 = 0;
}

void sub_1001EDE24(id *a1, void *a2)
{
  v4 = [*a1 bluetoothAddress];
  v3 = [a2 bluetoothAddress];
  LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummary setAaDevice:]", 30, "Setting AADevice %@ -> %@", v4, v3);
}

void sub_1001EDEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummary updateConnectionErrorReason:]", a3, "UpdateConnectionErrorReason: Failed. ErrorReason is null");
  }
}

void sub_1001EDF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummary addA2DPRssi:]", a3, "AddA2DPRssi: Skip. invalid RSSI");
  }
}

void sub_1001EDFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummary addA2DPPacketFlushRssi:]", a3, "AddA2DPPacketFlushRssi: Skip. invalid RSSI");
  }
}

void sub_1001EE028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummary _updateInEarState:]", a3, "UpdateInEarState: Failed. aaDevice is null");
  }
}

uint64_t sub_1001EE088(unsigned int a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  if (a1 > 4)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B9420[a1];
  }

  if (a2 > 4)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1002B9420[a2];
  }

  return LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummary _updateListeningMode:]", 30, "CheckListeningModeChanged: oldLM %s newLM %s secondsSinceOldLM %llus ANCDuration %dm transparencyDuration %dm autoANCDuration %dm", v4, v5, a4, a3[30], a3[31], a3[32]);
}

void sub_1001EE110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummary _updateListeningMode:]", a3, "CheckListeningModeChanged: Failed. aaDevice is null");
  }
}

void sub_1001EE3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _aaDeviceFound:]", a3, "AADeviceFound: No btAddress");
  }
}

void sub_1001EE490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _aaDeviceLost:]", a3, "AADeviceLost: No btAddress");
  }
}

uint64_t sub_1001EE4F0(unsigned __int8 a1)
{
  if (a1 > 6u)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1002B9448[a1];
  }

  return LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _accessoryUsageSummaryMessageReceived:forWxAddress:]", 30, "AccessoryUsageSummaryMessageReceived type %s", v1);
}

uint64_t sub_1001EE558(char a1)
{
  v1 = "?";
  if (a1 == 1)
  {
    v1 = "A2DP";
  }

  if (!a1)
  {
    v1 = "Invalid";
  }

  return LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _accessoryUsageSummaryMessageReceived:forWxAddress:]", 90, "AccessoryUsageSummaryMessageReceived type invalid %s", v1);
}

uint64_t *sub_1001EE5E0(uint64_t *result, uint64_t a2)
{
  if (dword_1002F6998 <= 90)
  {
    if (dword_1002F6998 != -1)
    {
      return LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _createPowerLogIdentifier]", 90, "CreatePowerLogIdentifier: Skip, PowerLog streamID exists %@", a2);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      a2 = *v2;
      return LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _createPowerLogIdentifier]", 90, "CreatePowerLogIdentifier: Skip, PowerLog streamID exists %@", a2);
    }
  }

  return result;
}

void *sub_1001EE6D0(void *result)
{
  v1 = result;
  if (dword_1002F6998 <= 90)
  {
    if (dword_1002F6998 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _getTopMagicPairingErrorCount:]", 90, "GetTopMagicPairingErrorCount: No btAddress");
    }
  }

  *v1 = 0;
  return result;
}

void sub_1001EE744(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _handleRepeatingTask:]", 30, "HandleRepeatingTask: Starting task %@", v1);
}

uint64_t sub_1001EE868(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (dword_1002F6998 <= 30)
  {
    if (dword_1002F6998 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _registerBackgroundSystemTaskScheduler]", 30, "RegisterBackgroundSystemTaskScheduler: Skip, task already exists");
    }
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1001EE9A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _submitDeviceSummaryToPowerLog:]", a3, "SubmitDeviceSummaryToPowerLog: No btAddress");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _submitDeviceSummaryToPowerLog:]", a3, "SubmitDeviceSummaryToPowerLog: No btAddress");
    }
  }

  return result;
}

void sub_1001EE9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateBasicInfo:]", a3, "UpdateBasicInfo: No btAddress");
  }
}

void sub_1001EEA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateBasicInfo:]", a3, "UpdateBasicInfo: Failed. aaDevice is null");
  }
}

uint64_t sub_1001EEABC(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateA2DPSummary:wxAddress:]", 90, "UpdateA2DPSummary: Skip, duration is 0", v1, v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateA2DPSummary:wxAddress:]", 90, "UpdateA2DPSummary: Skip, duration is 0", v1, v2);
    }
  }

  return result;
}

void sub_1001EEB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateA2DPSummary:wxAddress:]", a3, "UpdateA2DPSummary: Failed. No btAddress");
  }
}

void sub_1001EEB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateA2DPSummary:wxAddress:]", a3, "UpdateA2DPSummary: Failed. No data");
  }
}

void sub_1001EEBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateAirPodsConnectionSummary:wxAddress:]", a3, "UpdateAirPodsConnectionSummary: Failed. No btAddress");
  }
}

void sub_1001EEC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateAirPodsConnectionSummary:wxAddress:]", a3, "UpdateAirPodsConnectionSummary: Failed. No data");
  }
}

void sub_1001EEC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateAirPodsDisconnectionSummary:wxAddress:]", a3, "UpdateAirPodsDisconnectionSummary: Skip. it's L2CAP profile disconnect");
  }
}

void sub_1001EECFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateAirPodsDisconnectionSummary:wxAddress:]", a3, "UpdateAirPodsDisconnectionSummary: Failed. No btAddress");
  }
}

uint64_t sub_1001EED5C(int a1, uint64_t a2)
{
  if ((a1 + 1) > 3)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B9480[a1 + 1];
  }

  return LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateAirPodsVolumeSummary:]_block_invoke", 30, "UpdateAirPodsVolumeSummary: %@ audioCategory %s", a2, v4, v2, v3);
}

void sub_1001EEDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateAirPodsVolumeSummary:]_block_invoke", a3, "UpdateAirPodsVolumeSummary: No btAddress");
  }
}

uint64_t sub_1001EEE20(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateHFPSummary:wxAddress:]", 90, "UpdateHFPSummary: Skip, duration is 0", v1, v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateHFPSummary:wxAddress:]", 90, "UpdateHFPSummary: Skip, duration is 0", v1, v2);
    }
  }

  return result;
}

void sub_1001EEE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateHFPSummary:wxAddress:]", a3, "UpdateHFPSummary: Failed. No btAddress");
  }
}

void sub_1001EEEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateHFPSummary:wxAddress:]", a3, "UpdateHFPSummary: Failed. No data");
  }
}

void sub_1001EEF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updatePacketFlushSummary:wxAddress:]", a3, "UpdatePacketFlushSummary: Failed. No btAddress");
  }
}

void sub_1001EEFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updatePacketFlushSummary:wxAddress:]", a3, "UpdatePacketFlushSummary: Failed. No data");
  }
}

void sub_1001EF048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updatePairingSummary:wxAddress:]", a3, "UpdatemPairingSummary: Failed. No btAddress");
  }
}

void sub_1001EF0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updatePairingSummary:wxAddress:]", a3, "UpdatemPairingSummary: Failed. No data");
  }
}

uint64_t sub_1001EF108(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_1000148D4(&dword_1002F6A08, "[SRNowPlayingObserver handleNowPlayingRouteChangedFrom:toRoute:]", a3, "SRNowPlayingObserver: NowPlaying state isn't playing, skip updating the current route");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000148D4(&dword_1002F6A08, "[SRNowPlayingObserver handleNowPlayingRouteChangedFrom:toRoute:]", a3, "SRNowPlayingObserver: NowPlaying state isn't playing, skip updating the current route");
    }
  }

  return result;
}

void sub_1001EF15C(id *a1)
{
  v1 = [*a1 identifier];
  LogPrintF(&dword_1002F6A08, "[SRNowPlayingObserver handlePlaybackQueueChangedTo:]", 30, "SRNowPlayingObserver: Current playing content item changed to %@", v1);
}

void sub_1001EF2E8(int a1, void **a2, void *a3, void *a4)
{
  if (a1 <= 60)
  {
    if (a1 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      a3 = *a2;
    }

    v7 = [a3 peer];
    v5 = [a4 peer];
    LogPrintF(&dword_1002F6AD8, "[BTShareAudioService _handleSessionStarted:]", 60, "### Ignoring session when already active: existing peer %@, new peer %@\n", v7, v5);
  }
}

void sub_1001EF3B4(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&dword_1002F6AD8, "[BTShareAudioService _handleSessionStarted:]", 30, "Session start: peer %@\n", v1);
}

void sub_1001EF7E0()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001EF894()
{
  sub_10008DCC4();
  v2 = 2112;
  v3 = &off_1002CB7F8;
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "XPC Version Check Failure, recieved version: %@, current version: %@", v1, 0x16u);
}

void sub_1001EF91C()
{
  sub_10008DCC4();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001EF98C()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001EF9C8()
{
  sub_10008DCC4();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001EFA38()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001EFA74(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10008DCDC(a1 a2)];
  v5 = [v4 UTF8String];
  *v3 = 136380675;
  *v2 = v5;
  sub_10008DCFC(&_mh_execute_header, v6, v7, "Account %{private}s is not active!");
}

void sub_1001EFAD8(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10008DCDC(a1 a2)];
  v5 = [v4 UTF8String];
  *v3 = 136380675;
  *v2 = v5;
  sub_10008DCFC(&_mh_execute_header, v6, v7, "Account %{private}s can't send!");
}

void sub_1001EFB3C(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10008DCDC(a1 a2)];
  v5 = [v4 UTF8String];
  *v3 = 136380675;
  *v2 = v5;
  sub_10008DCFC(&_mh_execute_header, v6, v7, "Bad Account details %{private}s can't send!");
}

void sub_1001EFBA0()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001EFBDC(void *a1, uint64_t a2)
{
  [a1 totalCloudDeviceCount];
  v7 = _IDSStringFromIDSRegistrationStatus();
  sub_10008DCA4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1001EFCA0(void *a1, void *a2)
{
  [a1 UTF8String];
  v3 = [a2 description];
  [v3 UTF8String];
  sub_10008DCA4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1001EFD60(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"MessageType"];
  sub_10008DCC4();
  sub_10008DCA4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001EFDF4(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"DeviceName"];
  sub_10008DCC4();
  sub_10008DCA4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001EFE88(void *a1, void *a2)
{
  v3 = [a1 description];
  [v3 UTF8String];
  [a2 UTF8String];
  sub_10008DC8C();
  sub_10008DCA4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1001EFF38(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_10008DCC4();
  sub_10008DCA4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001EFFCC()
{
  sub_10008DCF0();
  v2 = [v1 description];
  [v2 UTF8String];
  v3 = [v0 cloudIdentifier];
  [v3 UTF8String];
  sub_10008DC8C();
  sub_10008DCB4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1001F0178(uint64_t a1)
{
  v1 = [*(a1 + 48) description];
  [v1 UTF8String];
  sub_10008DCC4();
  sub_10008DCA4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001F0210(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_10008DCC4();
  sub_10008DCA4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001F02A4(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_10008DCC4();
  sub_10008DCA4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001F0338()
{
  sub_10008DCF0();
  v1 = [v0 description];
  [v1 UTF8String];
  v2 = [sub_10008DD1C() cloudIdentifier];
  [v2 UTF8String];
  sub_10008DC8C();
  sub_10008DCB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1001F03F0()
{
  sub_10008DCF0();
  v1 = [v0 description];
  [v1 UTF8String];
  v2 = [sub_10008DD1C() cloudIdentifier];
  [v2 UTF8String];
  sub_10008DC8C();
  sub_10008DCB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1001F04A8()
{
  sub_10008DCF0();
  v1 = [v0 description];
  [v1 UTF8String];
  v2 = [sub_10008DD1C() cloudIdentifier];
  [v2 UTF8String];
  sub_10008DC8C();
  sub_10008DCB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1001F0560()
{
  sub_10008DCF0();
  v1 = [v0 description];
  [v1 UTF8String];
  v2 = [sub_10008DD1C() cloudIdentifier];
  [v2 UTF8String];
  sub_10008DC8C();
  sub_10008DCB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1001F0618()
{
  sub_10008DCF0();
  v2 = [v1 description];
  [v2 UTF8String];
  v3 = [v0 objectForKeyedSubscript:@"FailureReason"];
  [v3 UTF8String];
  sub_10008DC8C();
  sub_10008DCB4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1001F06DC(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_10008DCC4();
  sub_10008DCA4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001F0770(uint64_t a1, id *a2)
{
  v4 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 64) == 1)
    {
      v5 = "pairing";
    }

    else
    {
      v5 = "security";
    }

    v6 = [*a2 description];
    v7 = 136315395;
    v8 = v5;
    v9 = 2081;
    v10 = [v6 UTF8String];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MUC - Dropping sending '%s request' message to unpaired IDS device %{private}s", &v7, 0x16u);
  }
}

void sub_1001F086C(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_10008DCC4();
  sub_10008DCA4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001F0904(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_10008DCC4();
  sub_10008DCA4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001F0998(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 idsDevice];
  v6 = [v5 cpDescription];
  v7 = [v6 UTF8String];
  v8 = [a2 description];
  v9 = 136380931;
  v10 = v7;
  v11 = 2080;
  v12 = [v8 UTF8String];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to create destination identifier to IDS device %{private}s - cannot send message %s", &v9, 0x16u);
}

void sub_1001F0A88(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "cloudpaird: sendRePairRequest: Failed to find existing CloudDevice - Maybe a new device - do we still allow repairing?", buf, 2u);
}

void sub_1001F0AC8(NSObject **a1)
{
  v2 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10008DCB4();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  *a1 = v2;
}

void sub_1001F0B38()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F0B74()
{
  sub_10008DCF0();
  v1 = [v0 cpDescription];
  [v1 UTF8String];
  v2 = [sub_10008DD1C() description];
  [v2 UTF8String];
  sub_10008DC8C();
  sub_10008DCB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1001F0C2C()
{
  sub_10008DCC4();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001F0C9C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 48);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_10008DD34(&_mh_execute_header, a2, a3, "Unable to unpair Cloud Device: %@ with error: %@", *v3, *&v3[8], *&v3[16]);
}

void sub_1001F0D18(uint64_t a1)
{
  v1 = [*(a1 + 40) idsDevice];
  v2 = [v1 uniqueID];
  sub_10008DCC4();
  sub_10008DCA4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001F0E34(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
}

void sub_1001F0EA4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  sub_10008EE34(&_mh_execute_header, a2, a3, "Criteria unavailable - %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001F0F14(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  sub_10008EE34(&_mh_execute_header, a2, a3, "self not available anymore for - %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001F0F84()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  sub_10008F27C(&_mh_execute_header, v0, v1, "### _set_user_dir_suffix failed: %d", v2, v3, v4, v5, v6);
}

void sub_1001F1004()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  sub_10008F27C(&_mh_execute_header, v0, v1, "### _CS_DARWIN_USER_TEMP_DIR failed: %d", v2, v3, v4, v5, v6);
}

void sub_1001F11C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6BE8 <= 90 && (dword_1002F6BE8 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6BE8, "[AASensorServiceDaemon _personalTranslationMessageReceived:fromDeviceAddress:]_block_invoke", a3, "No address found for received PT message");
  }
}

void sub_1001F1228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F6BE8 <= 90 && (dword_1002F6BE8 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F6BE8, "[AASensorServiceDaemon _personalTranslationMessageReceived:fromDeviceAddress:]_block_invoke", a3, "Invalid PT inMessageData");
  }
}

void sub_1001F1288(void *a1)
{
  v1 = [a1 description];
  LogPrintF(&dword_1002F6C58, "[AADevicePowerSources publishWithUpdatedBatteryInfo:]", 30, "Published: %@", v1);
}

uint64_t sub_1001F1364(uint64_t a1, uint64_t a2)
{
  v2 = "yes";
  if (a1)
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  if (!a2)
  {
    v2 = "no";
  }

  return LogPrintF(&dword_1002F6C58, "[AADevicePowerSources _updateCombinedPartsInDetails:]", 10, "Power source combined parts updated left: %s, right: %s", v3, v2);
}

void sub_1001F13C4(void *a1)
{
  v1 = [a1 batteryInfo];
  LogPrintF(&dword_1002F6C58, "[AADevicePowerSources _updateCombinedPartsInDetails:]", 90, "Power source combined parts missing left battery: %@", v1);
}

void sub_1001F1420(void *a1)
{
  v1 = [a1 batteryInfo];
  LogPrintF(&dword_1002F6C58, "[AADevicePowerSources _updateCombinedPartsInDetails:]", 90, "Power source combined parts missing right battery: %@", v1);
}

uint64_t sub_1001F147C(unint64_t a1)
{
  if (a1 > 5)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1002B9B20[a1];
  }

  return LogPrintF(&dword_1002F6C58, "[AADevicePowerSources _publishPowerSourceForBatteryWithType:details:]", 30, "Power source creating id for battery: %s", v1);
}

uint64_t sub_1001F14DC(unint64_t a1, uint64_t a2)
{
  if (a1 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B9B20[a1];
  }

  return LogPrintF(&dword_1002F6C58, "[AADevicePowerSources _publishPowerSourceForBatteryWithType:details:]", 30, "Power source publish update for battery: '%s' with details:\n%@", v4, a2, v2, v3);
}

uint64_t sub_1001F153C(unint64_t a1)
{
  if (a1 > 5)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1002B9B20[a1];
  }

  return LogPrintF(&dword_1002F6C58, "[AADevicePowerSources _unpublishPowerSourceForBatteryWithType:]", 30, "Power source unpublish for battery: %s", v1);
}

uint64_t sub_1001F159C(unint64_t a1)
{
  if (a1 > 5)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1002B9B20[a1];
  }

  return LogPrintF(&dword_1002F6C58, "[AADevicePowerSources _unpublishPowerSourceForBatteryWithType:]", 30, "Power source clear details for battery: %s", v1);
}

uint64_t sub_1001F15FC(unint64_t a1, uint64_t a2)
{
  if (a1 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002B9B20[a1];
  }

  return LogPrintF(&dword_1002F6C58, "[AADevicePowerSources _setPowerSourceDetails:forType:]", 10, "Power source set details for battery: %s, %@", v4, a2, v2, v3);
}

uint64_t sub_1001F165C(unint64_t a1)
{
  if (a1 > 5)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1002B9B20[a1];
  }

  return LogPrintF(&dword_1002F6C58, "[AADevicePowerSources _setPowerSourceID:forType:]", 10, "Power source SET psID for battery: %s", v1);
}

uint64_t sub_1001F16BC(unint64_t a1)
{
  if (a1 > 5)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1002B9B20[a1];
  }

  return LogPrintF(&dword_1002F6C58, "[AADevicePowerSources _setPowerSourceID:forType:]", 10, "Power source UNSET psID for battery: %s", v1);
}

void sub_1001F171C()
{
  v0 = CUPrintErrorCode();
  LogPrintF(&dword_1002F6C58, "[AADevicePowerSources _createPowerSource]", 90, "Power source creation failed with error: %@", v0);
}

void sub_1001F17A8()
{
  v0 = CUPrintErrorCode();
  LogPrintF(&dword_1002F6C58, "[AADevicePowerSources _releasePowerSource:]", 90, "Power source release failed with error: %@", v0);
}

void sub_1001F1824()
{
  v0 = CUPrintErrorCode();
  LogPrintF(&dword_1002F6C58, "[AADevicePowerSources _setPowerSource:details:]", 90, "Power source details setting failed with error: %@", v0);
}

void sub_1001F1EF0()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F1F94()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F2250()
{
  sub_10009DC70(__stack_chk_guard);
  sub_10009DC00();
  sub_10008DD34(&_mh_execute_header, v0, v1, "Error Saving the modified record [%@] - %@");
}

void sub_1001F22B8()
{
  sub_10009DC70(__stack_chk_guard);
  sub_10009DC00();
  sub_10008DD34(&_mh_execute_header, v0, v1, "MP Error caching the modified record in services layer [%@] - %@");
}

void sub_1001F2604()
{
  sub_10009DC70(__stack_chk_guard);
  sub_10009DC00();
  sub_10008DD34(&_mh_execute_header, v0, v1, "MP Error caching the new record in services layer [%@] - %@");
}

void sub_1001F27A4()
{
  sub_10009DC70(__stack_chk_guard);
  sub_10009DC00();
  sub_10008DD34(&_mh_execute_header, v0, v1, "Error fetching subscription with ID (%@): %@");
}

void sub_1001F2874()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F2A8C(NSObject *a1, void *a2)
{
  if (sub_10009DC58(a1))
  {
    v10 = 0;
    sub_10009DC18(&_mh_execute_header, v4, v5, " >>> Network offline to upgrade legacy manatee container", v6, v7, v8, v9, v10);
  }

  *a2 = v2;
}

void sub_1001F2ADC(void *a1)
{
  v3 = sub_100005C14("MagicPairing");
  if (sub_10009DC58(v3))
  {
    v10 = 0;
    sub_10009DC18(&_mh_execute_header, v4, v5, " >>> Legacy manatee container unavailable", v6, v7, v8, v9, v10);
  }

  *a1 = v1;
}

void sub_1001F2B3C(void *a1)
{
  v3 = sub_100005C14("MagicPairing");
  if (sub_10009DC58(v3))
  {
    v10 = 0;
    sub_10009DC18(&_mh_execute_header, v4, v5, " >>> Already upgraded to legacy manatee container", v6, v7, v8, v9, v10);
  }

  *a1 = v1;
}

void sub_1001F2B9C(void *a1)
{
  v3 = sub_100005C14("MagicPairing");
  if (sub_10009DC58(v3))
  {
    v10 = 0;
    sub_10009DC18(&_mh_execute_header, v4, v5, "Cannot upgrade bad account keys", v6, v7, v8, v9, v10);
  }

  *a1 = v1;
}

void sub_1001F2BFC(void *a1)
{
  v3 = sub_100005C14("MagicPairing");
  if (sub_10009DC58(v3))
  {
    v10 = 0;
    sub_10009DC18(&_mh_execute_header, v4, v5, "Cannot upgrade bad accessory keys", v6, v7, v8, v9, v10);
  }

  *a1 = v1;
}

void sub_1001F2CC4()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F2EEC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v17 = a3;
  v7 = [v17 bleDevice];
  v8 = [v7 advertisementFields];

  v9 = CFDictionaryGetCFDataOfLength();
  v10 = [v17 model];
  v11 = [v10 containsString:@"Mac"];

  if (v11)
  {
    v12 = *(*(a1 + 32) + 16);
    v13 = [v17 idsIdentifier];
    v14 = [v12 _nearbyMacAddressTranslate:v13];

    v9 = v14;
  }

  if (v9)
  {
    v15 = [v9 bytes];
    v16 = [*(a1 + 40) nearbyLastRouteHost];
    LODWORD(v15) = memcmp([v16 bytes], v15 + 3, 3uLL);

    if (!v15)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
      *a4 = 1;
    }
  }
}

void sub_1001F34A8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = a2;
  v7 = a3;
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphoneEligibleForTakingConnectionFromWatch:]_block_invoke", 30, "ForceDisconnectWatchCheck: NB %@", v7);
  }

  v8 = [v7 bleDevice];
  v9 = [v8 advertisementFields];

  v10 = CFDictionaryGetCFDataOfLength();
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = [v7 model];
    v14 = [v13 containsString:@"Mac"];

    if (!v14 || (v15 = *(*(a1 + 32) + 16), [v7 idsIdentifier], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "_nearbyMacAddressTranslate:", v16), v17 = objc_claimAutoreleasedReturnValue(), v12, v16, (v12 = v17) != 0))
    {
      v18 = [v12 bytes];
      v19 = [v7 model];
      v20 = [v19 hasPrefix:@"Watch"];

      v21 = [*(a1 + 40) nearbyLastRouteHost];
      v22 = memcmp([v21 bytes], v18 + 3, 3uLL);
      if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
      {
        v29 = a4;
        v30 = a1;
        if (v20)
        {
          v23 = "yes";
        }

        else
        {
          v23 = "no";
        }

        v24 = v9;
        if (v22)
        {
          v25 = "no";
        }

        else
        {
          v25 = "yes";
        }

        v26 = CUPrintNSDataAddress();
        v27 = v23;
        v28 = v25;
        v9 = v24;
        a4 = v29;
        a1 = v30;
        LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphoneEligibleForTakingConnectionFromWatch:]_block_invoke", 30, "ForceDisconnectWatchCheck: isNearbySourceWatch %s foundMatchedSource %s WxLh %@ nbAddr %@", v27, v28, v21, v26);
      }

      if (!v22 && (([*(a1 + 40) nearbyInEar] == 1) & v20) == 1 && !objc_msgSend(*(a1 + 40), "nearbyAudioState") && objc_msgSend(*(a1 + 40), "nearbyForceDisconnectBit"))
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }
}

void sub_1001F3824(void *a1)
{
  v3 = [a1 btAddress];
  v2 = sub_10009F210([a1 tipiConnectType]);
  LogPrintF(&dword_1002F6E08, "[SRConnectionManager _findHeadphoneToConnectWithResult:]_block_invoke_2", 30, "IsSRConnectEligible %@ YES type %s", v3, v2);
}

void sub_1001F38A4(uint64_t a1)
{
  [sub_1000A2CCC(a1) btAddress];
  objc_claimAutoreleasedReturnValue();
  sub_1000A2CB4();
  LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHRMHeadphonePrerequisiteMet:connectType:]_block_invoke", 30, "IsHeadphonePrerequisiteMet: Skip, Wx %@ reason %@");
}

void sub_1001F390C(uint64_t a1)
{
  [sub_1000A2CCC(a1) btAddress];
  objc_claimAutoreleasedReturnValue();
  sub_1000A2CB4();
  LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphonePrerequisiteMet:]_block_invoke", 30, "IsHeadphonePrerequisiteMet: Skip, Wx %@ reason %@");
}

uint64_t sub_1001F3974(char a1)
{
  v1 = "no";
  if (a1)
  {
    v1 = "yes";
  }

  return LogPrintF(&dword_1002F6E08, "[SRConnectionManager screenLockStateChanged:]", 30, "Screen lock state changed isLocked %s", v1);
}

void sub_1001F39E8(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 40) btAddress];
  v4 = [*(a1 + 40) nearbyLastRouteHost];
  LogPrintF(&dword_1002F6E08, "[SRConnectionManager _getNearbyConnectedSourceFromWx:]_block_invoke", 30, "getNearbyConnectedSourceFromWx: comparing Wx %@ LH %@ NB %@", v5, v4, a2);
}

void sub_1001F3A78(uint64_t a1)
{
  [sub_1000A2CCC(a1) btAddress];
  objc_claimAutoreleasedReturnValue();
  sub_1000A2CB4();
  LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isOnDemandConnectEligible:result:]_block_invoke", 30, "IsOnDemandConnectEligible: Skip, Wx %@ reason %@");
}

void sub_1001F3AE0(int *a1)
{
  v1 = sub_1000A0708(*a1);
  LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isSRConnectEligible:]", 30, "Trying LE pipe reason %@", v1);
}

void sub_1001F3C54(uint64_t a1)
{
  [sub_1000A2CCC(a1) btAddress];
  objc_claimAutoreleasedReturnValue();
  sub_1000A2CB4();
  LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHRMHeadphoneEligibleForTipiV2:]_block_invoke", 30, "IsHRMHeadphoneEligibleForTipiV2: Skip, Wx %@ reason: %@");
}

void sub_1001F3CBC(uint64_t a1)
{
  v2 = [sub_1000A2CCC(a1) btAddress];
  v3 = *(*(*v1 + 8) + 24) - 1;
  if (v3 > 7)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = *(&off_1002BA3C0 + v3);
  }

  v5 = v2;
  LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphoneEligibleForTipiV2:result:]_block_invoke", 30, "IsHeadphoneEligibleForTipiV2: Skip, Wx %@ reason: %@", v2, v4);
}

uint64_t sub_1001F3F04(char a1, unsigned int a2)
{
  v2 = "no";
  if (a1)
  {
    v2 = "yes";
  }

  if (a2 > 3)
  {
    v3 = "?";
  }

  else
  {
    v3 = (&off_1002BA400)[a2];
  }

  return LogPrintF(&dword_1002F6E08, "[SRConnectionManager onDemandEventStarted:withEvent:]", 30, "onDemandEventStarted %s event %s", v2, v3);
}

void sub_1001F4038(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Starting to watch for existence of %@/%@", buf, 0x16u);
}

void sub_1001F40A8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to open %@", buf, 0xCu);
}

void sub_1001F4100(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Started monitoring changes to directory: %@", buf, 0xCu);
}

void sub_1001F4160(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Started monitoring for removal of directory: %@", buf, 0xCu);
}

void sub_1001F41C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_100076A0C() directoryURL];
  v5 = [v4 path];
  sub_10008DCC4();
  sub_1000A4E0C(&_mh_execute_header, v6, v7, "Monitored directory changed: %@", v8, v9, v10, v11);
}

void sub_1001F4268(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_100076A0C() directoryURL];
  v5 = [v4 path];
  sub_10008DCC4();
  sub_1000A4E0C(&_mh_execute_header, v6, v7, "Monitored directory went away: %@", v8, v9, v10, v11);
}

void sub_1001F4354(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 directoryURL];
  sub_10008DCC4();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error while trying to read the contents of directory %@: %@", v7, 0x16u);
}

void sub_1001F4410(void *a1)
{
  v2 = a1;
  v3 = [sub_100076A0C() targetFilename];
  sub_10008DCC4();
  sub_1000A4E0C(&_mh_execute_header, v4, v5, "File was not found in the directory yet: %@", v6, v7, v8, v9);
}

void sub_1001F44A0(void *a1)
{
  v2 = a1;
  v3 = [sub_100076A0C() targetFilename];
  sub_10008DCC4();
  sub_1000A4E0C(&_mh_execute_header, v4, v5, "Found file being watched: %@", v6, v7, v8, v9);
}

void sub_1001F467C(void *a1)
{
  v1 = [a1 xpcCnx];
  LogPrintF(&dword_1002F6ED8, "-[BTUserCloudServicesDaemon _xpcConnectionInvalidated:]", 20, "XPC connection ended: %#{pid}", [v1 processIdentifier]);
}

uint64_t sub_1001F4CD4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [a1 UTF8String];
  }

  else
  {
    v3 = "Unknown";
  }

  return LogPrintF(&dword_1002F6ED8, "[BTCloudServicesXPCConnection forceCloudPairingForIdentifiers:completion:]", 30, "BundleID: %s forcing Cloud Pairing for Identifers: %@", v3, a2);
}

void sub_1001F4DD0()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F4E0C()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F4E48()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F4E84()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F4EC0()
{
  sub_10009DC70(__stack_chk_guard);
  sub_1000B4DE8();
  sub_10008EE34(&_mh_execute_header, v0, v1, "Invalid reference to send CK XPC object: %@", v2, v3, v4, v5);
}

void sub_1001F4F28()
{
  sub_10009DC70(__stack_chk_guard);
  sub_1000B4DE8();
  sub_10008EE34(&_mh_execute_header, v0, v1, "Invalid reference to send CK XPC message: %@", v2, v3, v4, v5);
}

void sub_1001F4F90()
{
  sub_1000B4DE8();
  sub_1000B4DF4();
  sub_1000B4DD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1001F5008()
{
  sub_10009DC70(__stack_chk_guard);
  sub_1000B4DE8();
  sub_10008EE34(&_mh_execute_header, v0, v1, "Invalid reference to reply: Sending CK XPC message: %@", v2, v3, v4, v5);
}

void sub_1001F5070()
{
  sub_10009DC70(__stack_chk_guard);
  sub_1000B4DE8();
  sub_1000B4E10();
  sub_1000B4DD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001F50E8()
{
  sub_10009DC70(__stack_chk_guard);
  sub_1000B4DE8();
  sub_1000B4E10();
  sub_1000B4DD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001F5160()
{
  sub_1000B4DE8();
  sub_1000B4DF4();
  sub_1000B4DD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1001F51D8()
{
  sub_1000B4DE8();
  sub_1000B4E10();
  sub_1000B4DD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001F5254()
{
  sub_1000B4DE8();
  sub_1000B4E10();
  sub_1000B4DD8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001F554C(void *a1)
{
  LODWORD(v7) = 67109120;
  HIDWORD(v7) = [a1 accountAvailable];
  sub_10008F27C(&_mh_execute_header, v1, v2, "Error removing nickname device, Account status - %d", v3, v4, v5, v6, v7);
}

void sub_1001F55C8(void *a1)
{
  LODWORD(v7) = 67109120;
  HIDWORD(v7) = [a1 accountAvailable];
  sub_10008F27C(&_mh_execute_header, v1, v2, "Error nicknaming device, Account status - %d", v3, v4, v5, v6, v7);
}

void sub_1001F5644()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

_BYTE *sub_1001F5840(uint64_t a1)
{
  v2 = a1 + 32;
  result = *(a1 + 32);
  v3 = *(v2 + 8) & 0x60;
  if (result[16] != (v3 == 96))
  {
    return [result _captureAppStatusChanged:v3 == 96];
  }

  return result;
}

uint64_t sub_1001F5AC0(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_1000148D4(&dword_1002F7008, "[AAGestureControl _aaControllerEnsureStarted]_block_invoke_2", a3, "Invalid Identifier");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000148D4(&dword_1002F7008, "[AAGestureControl _aaControllerEnsureStarted]_block_invoke_2", a3, "Invalid Identifier");
    }
  }

  return result;
}

void sub_1001F5BB8(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  LogPrintF(&dword_1002F7008, "[AAGestureControl _captureAppStatusChanged:]", 30, "Notifying connected device:%@ for capture app status: %u", v3, a2);
}

uint64_t sub_1001F5D5C(uint64_t result, _BYTE *a2)
{
  if (dword_1002F7008 <= 90)
  {
    v3 = result;
    if (dword_1002F7008 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F7008, "[AAGestureControl _handleCameraControlGesture:forSide:forIdentifier:]", 90, "Unable to find BT address to route to device identifier %@", v3);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t sub_1001F5DE0(unsigned __int8 a1)
{
  if (a1 > 9u)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1002BA970[a1];
  }

  return LogPrintF(&dword_1002F7008, "[AAGestureControl _handleCameraControlGesture:forSide:forIdentifier:]", 90, "Camera Control does not handle Raw Gesture Type %s", v1);
}

uint64_t sub_1001F5E48(char a1, char a2)
{
  v2 = "?";
  if (a1)
  {
    v2 = "Press Once";
  }

  if (a2)
  {
    v2 = "Press Hold";
  }

  return LogPrintF(&dword_1002F7008, "[AAGestureControl _updateCameraGestureforDevice:]", 30, "Setting camera gesture to be %s", v2);
}

uint64_t sub_1001F6000(char a1, unsigned __int8 a2)
{
  if ((a1 - 1) > 3u)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1002BA9C0[(a1 - 1)];
  }

  if (a2 > 9u)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1002BA9E0[a2];
  }

  return LogPrintF(&dword_1002F7008, "[AAGestureControl _rawGestureMessageReceived:fromDeviceIdentifier:]", 30, "Raw Gesture on Side %s of Type %s received", v2, v3);
}

void sub_1001F6094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F7008 <= 90 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314(&dword_1002F7008, "[AAGestureControl _rawGestureMessageReceived:fromDeviceIdentifier:]", a3, "invalid inMessageData");
  }
}

uint64_t sub_1001F61DC(uint64_t a1)
{
  v1 = @"terminated";
  if (a1 == 10)
  {
    v1 = @"enumerated";
  }

  return LogPrintF(&dword_1002F7008, "[AAGestureControl notification:withProperty:forService:]", 30, "Camera Control HID - notification: %@", v1);
}

uint64_t sub_1001F6380(char a1, uint64_t a2)
{
  v2 = "no";
  if (a1)
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  if ((a1 & 1) == 0)
  {
    v2 = "yes";
  }

  return LogPrintF(&dword_1002F7008, "[AAGestureControl _handleFarFieldStatusChanged:]", 50, "Far field session ongoing btAddress: %@ changed: %s -> %s", a2, v3, v2);
}

void sub_1001F63E0(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = byte_1002FA1B0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "isBuddyComplete: %i", v1, 8u);
}

void sub_1001F6464(os_log_t log)
{
  if (byte_1002FA1B1)
  {
    v1 = @"YES";
  }

  else
  {
    v1 = @"NO";
  }

  v2 = 138543362;
  v3 = v1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Unlocked since boot = %{public}@", &v2, 0xCu);
}

void sub_1001F6700()
{
  v0 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Manatee Upgrade Check: Network is not up", v1, 2u);
  }
}

void sub_1001F6770()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F67AC()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F67E8()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F6824()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F6860()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F689C()
{
  sub_10008DD28();
  sub_10008DCD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001F6C34()
{
  sub_10009DC70(__stack_chk_guard);
  sub_10009DC00();
  sub_10008DD34(&_mh_execute_header, v0, v1, "Manatee: Error Saving the modified record [%@] - %@");
}

void sub_1001F6C9C()
{
  sub_10009DC70(__stack_chk_guard);
  sub_10009DC00();
  sub_10008DD34(&_mh_execute_header, v0, v1, "Manatee: Error caching the modified record in services layer [%@] - %@");
}

void sub_1001F6F74()
{
  sub_10009DC70(__stack_chk_guard);
  sub_10009DC00();
  sub_10008DD34(&_mh_execute_header, v0, v1, "Manatee: Error caching the new record in services layer [%@] - %@");
}

void sub_1001F7114()
{
  sub_10009DC70(__stack_chk_guard);
  sub_10009DC00();
  sub_10008DD34(&_mh_execute_header, v0, v1, "Manatee: Error fetching subscription with ID (%@): %@");
}

void sub_1001F7BCC(uint64_t a1, id *a2, uint64_t *a3)
{
  v5 = [*(a1 + 40) identifier];
  *a3 = v5;
  v6 = [*a2 localizedDescription];
  LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding _presentDeocNotification:]_block_invoke_2", 90, "DEOC onboarding was not delivered. deviceId: %@, error: %@", v5, v6);
}

void sub_1001F7C5C(uint64_t a1)
{
  v2 = [*(a1 + 40) identifier];
  LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding _presentDeocNotification:]_block_invoke_2", 30, "DEOC onboarding notification delivered. deviceId: %@, notificationId: %@", v2, *(a1 + 48));
}

void sub_1001F7D6C(uint64_t a1)
{
  v13 = [sub_1000CA794(a1) identifier];
  v2 = [*v1 localizedDescription];
  sub_10003BE2C(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding showFitEducationNotificationForIdentifier:withErrorHandler:]_block_invoke_4", 90, "Fit education notification not delivered. deviceId: %@, error: %@");
}

void sub_1001F7DE8(uint64_t a1)
{
  v1 = [*(a1 + 40) identifier];
  LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding showFitEducationNotificationForIdentifier:withErrorHandler:]_block_invoke_4", 90, "Fit education notification delivered. deviceId: %@", v1);
}

void sub_1001F7EA8(uint64_t a1)
{
  v13 = [sub_1000CA794(a1) identifier];
  v2 = [*v1 localizedDescription];
  sub_10003BE2C(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding showAssetManagerShowDownloadNotificationForDevice:withErrorHandler:]_block_invoke_4", 90, "AssetManager download notification not delivered. deviceId: %@, error: %@");
}

uint64_t sub_1001F7F24(uint64_t a1)
{
  v2 = [sub_1000CA794(a1) identifier];
  *v1 = v2;
  return LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding showAssetManagerShowDownloadNotificationForDevice:withErrorHandler:]_block_invoke_4", 90, "AssetManager download notification delivered. deviceId: %@", v2);
}

void sub_1001F7F7C(uint64_t a1)
{
  v13 = [sub_1000CA794(a1) identifier];
  v2 = [*v1 localizedDescription];
  sub_10003BE2C(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding showAssetManagerDownloadPTAppNotificationForDevice:withErrorHandler:]_block_invoke_4", 90, "AssetManager PT App download notification not delivered. deviceId: %@, error: %@");
}

uint64_t sub_1001F7FF8(uint64_t a1)
{
  v2 = [sub_1000CA794(a1) identifier];
  *v1 = v2;
  return LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding showAssetManagerDownloadPTAppNotificationForDevice:withErrorHandler:]_block_invoke_4", 90, "AssetManager PT App download notification delivered. deviceId: %@", v2);
}

void sub_1001F8130()
{
  if (dword_1002F71B8 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      v2 = [*v0 content];
      [v2 userInfo];
      objc_claimAutoreleasedReturnValue();
      sub_10003BE20();
      LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding receivedNotificationResponse:forRequest:]_block_invoke", 90, "Device address not found in notification userinfo: %@");
    }
  }
}

void sub_1001F81E4()
{
  if (dword_1002F71B8 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      v2 = [*v0 content];
      [v2 userInfo];
      objc_claimAutoreleasedReturnValue();
      sub_10003BE20();
      LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding receivedNotificationResponse:forRequest:]_block_invoke", 90, "Identifier not found in notification userinfo: %@");
    }
  }
}

uint64_t sub_1001F8298(uint64_t a1, id *a2)
{
  v3 = a1;
  if (dword_1002F71B8 <= 90)
  {
    v7 = a1;
    if (dword_1002F71B8 != -1 || (a1 = _LogCategory_Initialize(), v3 = v7, a1))
    {
      v4 = [*a2 content];
      v5 = [v4 userInfo];
      LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding receivedNotificationResponse:forRequest:]_block_invoke", 90, "Device address not found in notification userinfo: %@", v5);

      v3 = v7;
    }
  }

  return _objc_release_x1(a1, v3);
}

void sub_1001F8538(void *a1, uint64_t a2)
{
  v4 = [a1 pipePendingRequest];
  v3 = [v4 senderIDS];
  LogPrintF(&dword_1002F7228, "[SRLEPipe _pipeReceivedRouteRequest:options:responseHandler:]", 30, "Received route request: from %@ however we already have requesting pending with %@ reject this.", a2, v3);
}

void sub_1001F865C(void *a1, uint64_t a2)
{
  v5 = [a1 senderIDS];
  v4 = [a1 request];
  LogPrintF(&dword_1002F7228, "[SRLEPipe _pipeRequestCompleted:error:]", 30, "Route request completed: senderIDS %@ version %@, request %##@, response %##@", v5, &off_1002CB638, v4, a2);
}

void sub_1001F86F4(void *a1, uint64_t a2)
{
  v5 = [a1 senderIDS];
  v4 = [a1 request];
  LogPrintF(&dword_1002F7228, "[SRLEPipe pipeRequestResponse:error:]", 90, "### Route request failed: senderIDS %@, request %##@, %{error}", v5, v4, a2);
}

void sub_1001F8780(void *a1, uint64_t a2)
{
  v5 = [a1 senderIDS];
  v4 = [a1 request];
  LogPrintF(&dword_1002F7228, "[SRLEPipe pipeRequestResponse:error:]", 30, "Route request response: senderIDS %@ version %@, request %##@, response %##@", v5, &off_1002CB638, v4, a2);
}

BOOL sub_1001F8818(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 UTF8String])
  {
    v3 = NSDataWithHex();
    if ([v3 length] == 6 && objc_msgSend(v3, "bytes"))
    {
      v7 = 0;
      __s1 = 0;
      v4 = memcmp(&__s1, [v3 bytes], objc_msgSend(v3, "length")) != 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1001F8AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon _bluetoothDeviceFound:]", a3, "BluetoothDeviceFound: Not in USB device cache");
  }
}

void sub_1001F8B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon _bluetoothDeviceFound:]", a3, "BluetoothDeviceFound: No btAddress");
  }
}

void sub_1001F8B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon _bluetoothDeviceLost:]", a3, "BluetoothDeviceLost: Not in USB device cache");
  }
}

void sub_1001F8BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon _bluetoothDeviceLost:]", a3, "BluetoothDeviceLost: No btAddress");
  }
}

uint64_t sub_1001F8C34(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 > 0xA)
  {
    v3 = "?";
  }

  else
  {
    v3 = (&off_1002BB170)[v2];
  }

  if (a2 > 0xA)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1002BB170)[a2];
  }

  return LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon _bluetoothStateChanged:]", 30, "Bluetooth state changed %s -> %s", v3, v4);
}

uint64_t sub_1001F8D70(char a1, uint64_t a2)
{
  v2 = "?";
  if (!a1)
  {
    v2 = "Invalid";
  }

  return LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon _invokeAnyProxCardUserActionCompletion:result:]", 90, "ProxCardCompletion: Skip, invalid result %s for %@", v2, a2);
}

uint64_t sub_1001F8DC8(char a1)
{
  v1 = "yes";
  if (a1)
  {
    v2 = "no";
  }

  else
  {
    v2 = "yes";
  }

  if ((a1 & 1) == 0)
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon _prefsChanged]", 30, "USB-C unified audio device: %s -> %s", v2, v1);
}

uint64_t sub_1001F9158(uint64_t a1)
{
  v3 = *(a1 + 56);
  if (v3 > 4)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_1002BB1C8)[v3];
  }

  return LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon proxCardUserActionOnHeadphone:btAddress:withAction:completion:]_block_invoke", 30, "Prox Card user action on USBDevice %@ action %s", *(a1 + 40), v4, v1, v2);
}

void sub_1001F991C(uint64_t a1)
{
  v1 = CUPrintXPC();
  LogPrintF_safe(&dword_1002F7310, "+[AAXPCEventSubscription subscriptionWithToken:descriptor:]", 90, "%s is not specified in XPC event subscription descriptor %@", "discoveryTypes", v1);
}

void sub_1001F9A88(void *a1, void *a2)
{
  v3 = [a1 token];
  v4 = [a2 identifier];
  LogPrintF_safe(&dword_1002F7310, "[AAXPCEventPublisherDaemon _fireEventIfNeededForDevice:subscription:]", 40, "Firing XPC event with token %llu for %@", v3, v4);
}

void sub_1001F9B00(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF_safe(&dword_1002F7310, "[AAXPCEventPublisherDaemon _deviceDiscoveryEnsureStarted]_block_invoke_3", 90, "### Activate failed: %@", v1);
}

void sub_1001F9E88(uint64_t a1)
{
  v4 = [*(a1 + 32) identifier];
  v2 = [*(a1 + 40) deviceWithIdentifier:?];
  if (v2)
  {
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon pairedDeviceLost:]_block_invoke", 30, "AANearbyDevice unpaired: %@", v2);
    }

    [*(a1 + 40) _nearbyDeviceLost:v2];
  }

  v3 = [*(a1 + 40) _caseDeviceWithPrimaryIdentifier:v4];
  if (v3)
  {
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon pairedDeviceLost:]_block_invoke", 30, "AANearbyDevice case unpaired: %@", v3);
    }

    [*(a1 + 40) _nearbyDeviceLost:v3];
  }
}

void sub_1001FA038(uint64_t a1)
{
  v1 = CUPrintXPC();
  LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon _handleXPCLaunchEvent]_block_invoke", 5, "Got CBDiscovery XPC event: %@", v1);
}

void sub_1001FA108(id *a1)
{
  v1 = [*a1 cbDiscovery];
  LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon _cbDiscoveryEnsureStarted]_block_invoke_3", 30, "%@ Interrupted", v1);
}

void sub_1001FA168(id *a1)
{
  v1 = [*a1 cbDiscovery];
  LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon _cbDiscoveryEnsureStarted]_block_invoke_4", 30, "%@ Invalidated", v1);
}

void sub_1001FA208(id *a1)
{
  v1 = [*a1 cbDiscovery];
  LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon _cbDiscoveryEnsureStarted]_block_invoke_5", 30, "%@ Activated", v1);
}

uint64_t sub_1001FA284(uint64_t result)
{
  if (dword_1002F7380 <= 90)
  {
    v1 = result;
    if (dword_1002F7380 != -1)
    {
      return LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon _cbDeviceLost:]", 90, "CBDevice identifier not found, %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon _cbDeviceLost:]", 90, "CBDevice identifier not found, %@", v1);
    }
  }

  return result;
}

void sub_1001FA440(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) identifier];
  LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon _lookupPrimaryDeviceForCase:caseUpdated:]_block_invoke", 90, "Error, finding primary device for case with identifier '%@': %@", v3, a2);
}

void sub_1001FA4B0(void *a1, uint64_t a2)
{
  v3 = [a1 count];
  v4 = [*(a2 + 32) identifier];
  LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon _lookupPrimaryDeviceForCase:caseUpdated:]_block_invoke", 10, "Found %u primary devices for case with identifier '%@'", v3, v4);
}

void sub_1001FA528(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) identifier];
  LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon _lookupPrimaryDeviceForCase:caseUpdated:]_block_invoke", 30, "Updating nearby case device '%@' with primary device: %@", v3, a2);
}

void sub_1001FA598(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon _lookupPrimaryDeviceForCase:caseUpdated:]_block_invoke", 90, "Failed to find primary device for case with identifier '%@'", v1);
}

void sub_1001FA5F8(void *a1)
{
  v1 = [a1 description];
  LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon _notifySubscribersInvalidated]", 30, "Notify daemon invalidated to subscriber: %@", v1);
}

void sub_1001FA650(id *a1)
{
  v1 = [*a1 description];
  LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon subscribeToNearbyDiscovery:]_block_invoke", 30, "New subscriber: %@", v1);
}

void sub_1001FA6B0(id *a1)
{
  v1 = [*a1 description];
  LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon unsubscribeFromNearbyDiscovery:]_block_invoke", 30, "Subscriber unsubscribed: %@", v1);
}

uint64_t sub_1001FA710(uint64_t result)
{
  if (result <= 10)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon pairedDeviceUpdated:]_block_invoke", 10, "Nearby device did not update from paired device");
    }
  }

  return result;
}

void *sub_1001FA7B8(void *result)
{
  if (dword_1002F7380 <= 30)
  {
    v1 = result;
    if (dword_1002F7380 != -1)
    {
      return LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon pairedDeviceUpdated:]_block_invoke", 30, "Found paired device, but device not nearby yet %@", *v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F7380, "[AANearbyDeviceManagerDaemon pairedDeviceUpdated:]_block_invoke", 30, "Found paired device, but device not nearby yet %@", *v1);
    }
  }

  return result;
}

void sub_1001FA84C()
{
  if (dword_1002F73F0 <= 90 && (dword_1002F73F0 != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&dword_1002F73F0, "[AASettingsTelemetry _sendSettingsChanges:device:]", 90, "Invalid data");
  }
}

void sub_1001FA8BC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) unCenter];
    if (v2)
    {
      v6 = *(a1 + 32);
      v3 = [NSArray arrayWithObjects:&v6 count:1];
      [v2 removeDeliveredNotificationsWithIdentifiers:v3];

      v5 = *(a1 + 32);
      v4 = [NSArray arrayWithObjects:&v5 count:1];
      [v2 removePendingNotificationRequestsWithIdentifiers:v4];
    }
  }
}

uint64_t sub_1001FABA4(char a1)
{
  v1 = "no";
  if (a1)
  {
    v1 = "yes";
  }

  return LogPrintF(&dword_1002F7460, "[AAUserNotificationCenter requestSiriAnnounceWithNotificationContent:]_block_invoke_2", 30, "Siri did announce notification: %s", v1);
}

void sub_1001FABFC(void *a1)
{
  v2 = [a1 categoryMap];
  v1 = [v2 allKeys];
  LogPrintF(&dword_1002F7460, "[AAUserNotificationCenter _userNotificationCenterSetCategories]", 30, "Updating UserNotificationCenter Categories: %@", v1);
}

void sub_1001FACD0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 unCenter];
  LogPrintF(&dword_1002F7460, "[AAUserNotificationCenter userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]_block_invoke", 90, "Notification Response wrong center: %{ptr} vs %{ptr}\n", v2, v3);
}

uint64_t sub_1001FAD40(uint64_t result)
{
  if (dword_1002F7460 <= 30)
  {
    v1 = result;
    if (dword_1002F7460 != -1)
    {
      return LogPrintF(&dword_1002F7460, "[AAUserNotificationCenter userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]_block_invoke", 30, "No response delegate for category id: %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F7460, "[AAUserNotificationCenter userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]_block_invoke", 30, "No response delegate for category id: %@", v1);
    }
  }

  return result;
}

void sub_1001FADBC(id *a1, void *a2)
{
  v14 = [*a1 bluetoothAddress];
  v3 = [a2 bluetoothAddress];
  sub_10003BE2C(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setAADevice:]", 30, "Setting AADevice %@ -> %@");
}

void sub_1001FAE3C(id *a1, void *a2)
{
  v14 = [*a1 bluetoothAddress];
  v3 = [a2 bluetoothAddress];
  sub_10003BE2C(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setAANearbyDevice:]", 30, "Setting AANearbyDevice %@ -> %@");
}

uint64_t sub_1001FAEBC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 60);
  if (v2 > 7)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1002BB5C8[v2];
  }

  if (a2 > 7)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002BB5C8[a2];
  }

  return LogPrintF(&dword_1002F7530, "[SRDiscoveredDevice _setNearbyPrevInEar:]", 30, "Setting nearbyPrevInEar %@ %s -> %s", *(a1 + 112), v3, v4);
}

void sub_1001FB954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F75A0 <= 30 && (dword_1002F75A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F75A0, "[SRWorkoutObserver updateWithSnapshot:]", a3, "Ignore mirrored workouts on non-watch platforms");
  }
}

void sub_1001FBD38(uint64_t a1)
{
  v4 = [*(a1 + 32) identifier];
  v2 = [*(a1 + 40) _deviceWithIdentifier:?];
  v3 = v2;
  if (v2 && [v2 updateWithPairedDevice:*(a1 + 32)])
  {
    [*(a1 + 40) _aaDeviceBatteryInfoUpdated:v3];
  }
}

void sub_1001FBDBC(uint64_t a1)
{
  v3 = [*(a1 + 32) identifier];
  v2 = [*(a1 + 40) _deviceWithIdentifier:?];
  if (v2)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon pairedDeviceLost:]_block_invoke", 30, "Device was unpaired, removing device: %@", v2);
    }

    [*(a1 + 40) _removeDeviceInMapWithIdentifier:v3];
    [*(a1 + 40) _aaDeviceBatteryInfoLost:v2];
  }
}

uint64_t sub_1001FC088(uint64_t result, void *a2)
{
  if (dword_1002F7670 <= 30)
  {
    v3 = result;
    if (dword_1002F7670 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon _newDeviceWithIdentifier:]", 30, "AADeviceBatteryInfo not crated, device not paired (identifier: %@)", v3);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t sub_1001FC14C(uint64_t result)
{
  if (dword_1002F7670 <= 30)
  {
    v1 = result;
    if (dword_1002F7670 != -1)
    {
      return LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon _aaDeviceBatteryInfoUpdated:]", 30, "AADeviceBatteryInfo update not reported, missing batteries: %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon _aaDeviceBatteryInfoUpdated:]", 30, "AADeviceBatteryInfo update not reported, missing batteries: %@", v1);
    }
  }

  return result;
}

uint64_t sub_1001FC208(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    if (a2 != -1)
    {
      return LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon _aaDeviceBatteryInfoUpdated:]", 30, "AADeviceBatteryInfo update not reported, missing name: %@", a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon _aaDeviceBatteryInfoUpdated:]", 30, "AADeviceBatteryInfo update not reported, missing name: %@", a3);
    }
  }

  return result;
}

uint64_t sub_1001FC278(uint64_t result)
{
  if (dword_1002F7670 <= 30)
  {
    v1 = result;
    if (dword_1002F7670 != -1)
    {
      return LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon _aaDeviceBatteryInfoUpdated:]", 30, "AADeviceBatteryInfo update not reported, missing bluetooth address: %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon _aaDeviceBatteryInfoUpdated:]", 30, "AADeviceBatteryInfo update not reported, missing bluetooth address: %@", v1);
    }
  }

  return result;
}

uint64_t sub_1001FC2F4(uint64_t result)
{
  if (dword_1002F7670 <= 30)
  {
    v1 = result;
    if (dword_1002F7670 != -1)
    {
      return LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon _aaDeviceBatteryInfoUpdated:]", 30, "AADeviceBatteryInfo update not reported, missing product ID: %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon _aaDeviceBatteryInfoUpdated:]", 30, "AADeviceBatteryInfo update not reported, missing product ID: %@", v1);
    }
  }

  return result;
}

void sub_1001FC370(void *a1)
{
  v1 = [a1 description];
  LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon _notifySubscribersInvalidated]", 30, "Notify daemon invalidated to subscriber: %@", v1);
}

void sub_1001FC3C8(id *a1)
{
  v1 = [*a1 description];
  LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon subscribeToBatteryInfoUpdates:]_block_invoke", 30, "New subscriber: %@", v1);
}

void sub_1001FC428(id *a1)
{
  v1 = [*a1 description];
  LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon unsubscribeFromBatteryInfoUpdates:]_block_invoke", 30, "Subscriber unsubscribed: %@", v1);
}

uint64_t sub_1001FC5FC(void *a1, uint64_t a2)
{
  v3 = [a1 isCase];
  v4 = "Headset";
  if (v3)
  {
    v4 = "Case";
  }

  return LogPrintF(&dword_1002F7670, "[AABatteryMonitorDaemon _nearbyDeviceLost:]", 30, "%s no longer nearby: %@", v4, a2);
}

uint64_t sub_1001FCE24(unsigned int a1, uint64_t a2)
{
  if (a1 > 6)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002BB800[a1];
  }

  return LogPrintF(&dword_1002F76E0, "[BTServicesDaemon _audioQualityShowBanner:title:deviceAddressString:messageKey:messageArgs:timeoutSeconds:]_block_invoke", 30, "audioQuality: banner action: %s, %{error}", v4, a2, v2, v3);
}

uint64_t sub_1001FD0A0()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F76E0, "[BTServicesDaemon _prefsChanged]", 30, "ShareAudioActionScanner: %s -> %s", v2, v0);
}

uint64_t sub_1001FD0F8()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F76E0, "[BTServicesDaemon _prefsChanged]", 30, "DisableConnectNotification: %s -> %s", v2, v0);
}

uint64_t sub_1001FD150()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F76E0, "[BTServicesDaemon _prefsChanged]", 30, "DisableCrashNotification: %s -> %s", v2, v0);
}

uint64_t sub_1001FD1A8()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F76E0, "[BTServicesDaemon _prefsChanged]", 30, "DisableHIDLagNotification: %s -> %s", v2, v0);
}

uint64_t sub_1001FD200()
{
  sub_100072EC4();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1002F76E0, "[BTServicesDaemon _prefsChanged]", 30, "EnableHIDIntervalNotification: %s -> %s", v2, v0);
}

uint64_t sub_1001FD2AC(unsigned int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002BB838[a1];
  }

  return LogPrintF(&dword_1002F76E0, "[BTServicesDaemon showCrashBannerIfNeeded:]_block_invoke", 30, "Diag: Bluetooth firmware crash banner action: %s, %{error}", v4, a2, v2, v3);
}

uint64_t sub_1001FD388(unsigned int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002BB838[a1];
  }

  return LogPrintF(&dword_1002F76E0, "[BTServicesDaemon _showConnectBannerIfEnabled:]_block_invoke", 30, "Diag: Connect banner action: %s, %{error}", v4, a2, v2, v3);
}

uint64_t sub_1001FD43C(unsigned int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002BB838[a1];
  }

  return LogPrintF(&dword_1002F76E0, "[BTServicesDaemon _showHIDLagBannerIfEnabled:]_block_invoke", 30, "Diag: Bluetooth HID lag banner action: %s, %{error}", v4, a2, v2, v3);
}

uint64_t sub_1001FD4F8(unsigned int a1, uint64_t a2)
{
  if (a1 > 6)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002BB800[a1];
  }

  return LogPrintF(&dword_1002F76E0, "[BTServicesDaemon _showHIDConnected:]_block_invoke", 30, "HID Device banner action: %s, %{error}", v4, a2, v2, v3);
}

void sub_1001FD614(void *a1)
{
  v1 = [a1 xpcCnx];
  LogPrintF(&dword_1002F76E0, "-[BTServicesDaemon _xpcConnectionInvalidated:]", 20, "XPC connection ended: %#{pid}", [v1 processIdentifier]);
}

void sub_1001FD800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4(&dword_1002F7810, "[BTServicesDaemon _shareAudioShowConnectBanner:]", a3, "No connected ShareAudio device");
  }
}

uint64_t sub_1001FD860(unsigned int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002BB838[a1];
  }

  return LogPrintF(&dword_1002F7810, "[BTServicesDaemon _shareAudioShowConnectBanner:]_block_invoke", 30, "Banner action: %s, %{error}", v4, a2, v2, v3);
}

uint64_t sub_1001FD95C(int a1, const __CFString *a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 10:
        v4 = "Activated";
        break;
      case 20:
        v4 = "Invalidated";
        break;
      case 30:
        v4 = "Interrupted";
        break;
      case 40:
        v4 = "Succeeded";
        break;
      case 50:
        v4 = "Failed";
        break;
      case 100:
        v4 = "Confirm";
        break;
      case 120:
        v4 = "ShowPairInstructions";
        break;
      case 200:
        v4 = "GuestiOSConnecting";
        break;
      case 210:
        v4 = "GuestiOSAuthenticated";
        break;
      case 220:
        v4 = "GuestiOSWaitingForAccept";
        break;
      case 300:
        v4 = "GuestHeadphonesConnecting";
        break;
      case 310:
        v4 = "GuestHeadphonesConnected";
        break;
      case 320:
        v4 = "GuestHeadphonesWaitForRoute";
        break;
      default:
        v4 = "?";
        break;
    }
  }

  else
  {
    v4 = "Invalid";
  }

  v5 = &stru_1002C1358;
  if (a2)
  {
    v5 = a2;
  }

  return LogPrintF(&dword_1002F7810, "[BTServicesDaemon _shareAudioSessionProgressEvent:info:]", 30, "Session progress: %s %##@", v4, v5, v2, v3);
}

uint64_t sub_1001FDBF4(unsigned int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1002BB838[a1];
  }

  return LogPrintF(&dword_1002F76E0, "[BTServicesXPCConnection _diagnosticControlShareAudioBanner]_block_invoke", 30, "Diag: ShareAudio banner action: %s, %{error}", v4, a2, v2, v3);
}

uint64_t sub_1001FDFCC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 236);
  if (v1 > 2)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1002BB8E0[v1];
  }

  return LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon activate]_block_invoke", 30, "Activate: Mode %s", v2);
}

void sub_1001FE5E8(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _runGuestiOSShareAudioProcessResponse:error:]_block_invoke", 30, "Guest iOS proof result: ContactID %@, %{error}", v3, a2);
}

uint64_t sub_1001FE920(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (dword_1002F7880 <= 10)
  {
    v5 = result;
    if (dword_1002F7880 != -1)
    {
      return LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerNearbyInfoDeviceFound:]", 10, "Ignoring weak RSSI: %d < %d, %@", a2, *(v5 + 232), a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerNearbyInfoDeviceFound:]", 10, "Ignoring weak RSSI: %d < %d, %@", a2, *(v5 + 232), a3);
    }
  }

  return result;
}

void sub_1001FE9B4()
{
  if (dword_1002F7880 <= 10)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerNearbyInfoDeviceFound:]", 10, "Ignoring unshareable: %@", v0);
    }
  }
}

void sub_1001FEA2C()
{
  if (dword_1002F7880 <= 10)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerNearbyInfoDeviceFound:]", 10, "Ignoring same-account device: %@", v0);
    }
  }
}

void sub_1001FEAA4()
{
  if (dword_1002F7880 <= 10)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerProxPairingDeviceFound:]", 10, "Ignoring non-share device: %@", v0);
    }
  }
}

void sub_1001FEB1C()
{
  if (dword_1002F7880 <= 10)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerProxPairingDeviceFound:]", 10, "Ignoring in-ear device: %@", v0);
    }
  }
}

void sub_1001FEB94()
{
  if (dword_1002F7880 <= 10)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerProxPairingDeviceFound:]", 10, "Ignoring lid-closed device: %@", v0);
    }
  }
}

void sub_1001FEC4C(uint64_t a1, uint64_t a2)
{
  if (dword_1002F7880 <= 90)
  {
    sub_1000148E8();
    if (!v4 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerProxPairingDeviceFound:]", 90, "Ignoring bad address: <%@>, %@", v2, a2);
    }
  }
}

void sub_1001FECCC()
{
  if (dword_1002F7880 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerProxPairingDeviceFound:]", 90, "Ignoring no address: %@", v0);
    }
  }
}

uint64_t sub_1001FED48(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (dword_1002F7880 <= 10)
  {
    v5 = result;
    if (dword_1002F7880 != -1)
    {
      return LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerProxPairingDeviceFound:]", 10, "Ignoring weak RSSI: %d < %d, %@", v5, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerProxPairingDeviceFound:]", 10, "Ignoring weak RSSI: %d < %d, %@", v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1001FEDD8(uint64_t result, uint64_t a2)
{
  if (dword_1002F7880 <= 10)
  {
    v3 = result;
    if (dword_1002F7880 != -1)
    {
      return LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerProxPairingDeviceFound:]", 10, "Ignoring invalid RSSI: %d, %@", v3, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerProxPairingDeviceFound:]", 10, "Ignoring invalid RSSI: %d, %@", v3, a2);
    }
  }

  return result;
}

uint64_t sub_1001FEEF4(int a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 10:
        v1 = "Activated";
        break;
      case 20:
        v1 = "Invalidated";
        break;
      case 30:
        v1 = "Interrupted";
        break;
      case 40:
        v1 = "Succeeded";
        break;
      case 50:
        v1 = "Failed";
        break;
      case 100:
        v1 = "Confirm";
        break;
      case 120:
        v1 = "ShowPairInstructions";
        break;
      case 200:
        v1 = "GuestiOSConnecting";
        break;
      case 210:
        v1 = "GuestiOSAuthenticated";
        break;
      case 220:
        v1 = "GuestiOSWaitingForAccept";
        break;
      case 300:
        v1 = "GuestHeadphonesConnecting";
        break;
      case 310:
        v1 = "GuestHeadphonesConnected";
        break;
      case 320:
        v1 = "GuestHeadphonesWaitForRoute";
        break;
      default:
        v1 = "?";
        break;
    }
  }

  else
  {
    v1 = "Invalid";
  }

  return LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _reportProgress:]", 30, "Progress: %s", v1);
}

uint64_t sub_1001FF050(uint64_t a1)
{
  v1 = "no";
  if (*(a1 + 40))
  {
    v1 = "yes";
  }

  v2 = *(*(a1 + 32) + 68);
  if (v2 > 7)
  {
    if (v2 <= 9)
    {
      v3 = "?";
    }

    else
    {
      v3 = "User";
    }
  }

  else
  {
    v3 = off_1002BB8F8[v2];
  }

  return LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon userConfirmed:]_block_invoke", 30, "User confirmed: permanent %s, CS %s", v1, v3);
}

void sub_1001FF1F8(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF(&dword_1002F78F0, "[AAProxCardHandler remoteAlertHandle:didInvalidateWithError:]", 30, "RemoteAlertHandle error %@", v1);
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t CKRecordKeyValueSetting.subscript.getter()
{
  return CKRecordKeyValueSetting.subscript.getter();
}

{
  return CKRecordKeyValueSetting.subscript.getter();
}

Swift::String_optional __swiftcall NSScanner.scanCharacter()()
{
  v0 = NSScanner.scanCharacter()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}