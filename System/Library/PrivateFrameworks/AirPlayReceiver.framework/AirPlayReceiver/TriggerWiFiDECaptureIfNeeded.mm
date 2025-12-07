@interface TriggerWiFiDECaptureIfNeeded
@end

@implementation TriggerWiFiDECaptureIfNeeded

void ___TriggerWiFiDECaptureIfNeeded_block_invoke(uint64_t a1)
{
  v17[3] = *MEMORY[0x277D85DE8];
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _TriggerWiFiDECaptureIfNeeded(AirPlayReceiverServerRef, CFDictionaryRef)_block_invoke", 33554482, "Now running on HTTP queue in order to call WiFiDiagnosticExtension for stall state: %u\n", *(a1 + 40));
  }

  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 40);
  switch(v4)
  {
    case 0:
      v12 = *(v3 + 72) - 1;
      *(v3 + 72) = v12;
      if (v12)
      {
        goto LABEL_34;
      }

      v11 = @"abort";
      goto LABEL_29;
    case 2:
      if (!*(v3 + 72))
      {
        APSLogErrorAt();
        goto LABEL_34;
      }

      *(v3 + 72) = 0;
      v11 = @"post";
LABEL_29:
      v16[0] = @"DEExtensionHostAppKey";
      v16[1] = @"uuid";
      v14 = *(v3 + 64);
      v17[0] = @"AirPlay Transport";
      v17[1] = v14;
      v16[2] = @"trigger";
      v17[2] = v11;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _TriggerWiFiDECaptureIfNeeded(AirPlayReceiverServerRef, CFDictionaryRef)_block_invoke", 33554482, "Calling into WiFiDiagnosticExtension for stall state: %u\n", *(a1 + 40));
      }

      [*(v3 + 56) attachmentsForParameters:v15 andHandler:0];
      goto LABEL_34;
    case 1:
      v5 = *(v3 + 72);
      *(v3 + 72) = v5 + 1;
      if (v5)
      {
        goto LABEL_34;
      }

      v6 = *(v3 + 64);
      v7 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
      v8 = v7;
      *(v3 + 64) = v7;

      IsAppleInternalBuild();
      if (IsAppleInternalBuild())
      {
        v9 = 50;
      }

      else
      {
        v9 = 30;
      }

      if (v9 >= gLogCategory_AirPlayReceiverPlatform)
      {
        if (gLogCategory_AirPlayReceiverPlatform != -1 || (IsAppleInternalBuild(), _LogCategory_Initialize()))
        {
          if (IsAppleInternalBuild())
          {
            v10 = 33554482;
          }

          else
          {
            v10 = 33554462;
          }

          LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _TriggerWiFiDECaptureIfNeeded(AirPlayReceiverServerRef, CFDictionaryRef)_block_invoke", v10, "[%{ptr}] Posting system-wide notification of AirPlay network stall", *(a1 + 32));
        }
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.airplay.connection.stalled", 0, 0, 1u);
      v11 = @"pre";
      goto LABEL_29;
  }

  if (gLogCategory_AirPlayReceiverPlatform <= 60)
  {
    if (gLogCategory_AirPlayReceiverPlatform == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_34;
      }

      v4 = *(a1 + 40);
    }

    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _TriggerWiFiDECaptureIfNeeded(AirPlayReceiverServerRef, CFDictionaryRef)_block_invoke", 33554492, "Unsupported stall state: %u\n", v4);
  }

LABEL_34:
  CFRelease(*(a1 + 32));
  objc_autoreleasePoolPop(v2);
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _TriggerWiFiDECaptureIfNeeded(AirPlayReceiverServerRef, CFDictionaryRef)_block_invoke", 33554482, "Call to WiFiDiagnosticExtension for stall state: %u finished\n", *(a1 + 40));
  }
}

@end