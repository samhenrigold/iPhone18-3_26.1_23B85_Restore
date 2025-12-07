dispatch_queue_t _MediaControlClient_GlobalInit()
{
  v0 = getprogname();
  if (v0)
  {
    v1 = v0;
    if (!strcasecmp(v0, "mediaserverd") || !strcasecmp(v1, "audiomxd") || !strcasecmp(v1, "airplayd"))
    {
      gMediaControlForLegacyURLFlinging = 1;
      goto LABEL_8;
    }
  }

  if (gMediaControlForLegacyURLFlinging == 1)
  {
LABEL_8:
    LogSetAppID();
  }

  Int64 = APSSettingsGetInt64();
  if (Int64 >= 1)
  {
    v3 = Int64;
  }

  else
  {
    v3 = 30;
  }

  gMediaControlTimeoutDataSecs = v3;
  v4 = APSSettingsGetInt64() != 0;
  gMediaControlUseSecurity = v4;
  if (gLogCategory_MediaControlClientAuth <= 40)
  {
    if (gLogCategory_MediaControlClientAuth == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v4 = gMediaControlUseSecurity;
    }

    if (v4)
    {
      v5 = "enabled";
    }

    else
    {
      v5 = "disabled";
    }

    LogPrintF(&gLogCategory_MediaControlClientAuth, "void _MediaControlClient_GlobalInit(void *)", 33554472, "Security: %s\n", v5);
  }

LABEL_19:
  gMediaControlMetaData = APSSettingsGetInt64() != 0;
  gAirPlayRouteLock = dispatch_semaphore_create(1);
  result = dispatch_queue_create("AirPlayEventQueue", 0);
  gAirPlayEventQueue = result;
  return result;
}

char *AirPlayGlobalRoute_CopyDestination(int a1, int a2)
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (!gAirPlayRouteLock)
  {
    APSLogErrorAt();
    return 0;
  }

  dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
  if ((a1 - 1) >= 4)
  {
    if (gLogCategory_MediaControlRouting <= 90 && (gLogCategory_MediaControlRouting != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlRouting, "char *AirPlayGlobalRoute_CopyDestination(uint32_t, Boolean)", 33554522, "### Get of bad AirPlay route type: %u\n", a1);
    }

LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  v4 = **(&off_27989AA08 + (a1 - 1));
  if (v4)
  {
    v5 = strdup(v4);
    if (!v5)
    {
      APSLogErrorAt();
    }

    goto LABEL_18;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  v6 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v7 = [v6 attributeForKey:*MEMORY[0x277D26C70]];
  if (([objc_msgSend(v7 objectForKey:{*MEMORY[0x277D26D20]), "BOOLValue"}] & 1) == 0 && !objc_msgSend(objc_msgSend(v7, "objectForKey:", *MEMORY[0x277D26D18]), "BOOLValue"))
  {
    goto LABEL_17;
  }

  v8 = [objc_msgSend(objc_msgSend(v7 objectForKey:{@"AirPlayPortExtendedInfo", "objectForKey:", @"dnsNameAirPlay", "UTF8String"}];
  if (!v8)
  {
    goto LABEL_17;
  }

  v5 = strdup(v8);
LABEL_18:
  dispatch_semaphore_signal(gAirPlayRouteLock);
  return v5;
}

uint64_t AirPlayGlobalRoute_SetDestination(int a1, const char *a2)
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (gAirPlayRouteLock)
  {
    if ((a1 - 1) >= 4)
    {
      if (gLogCategory_MediaControlRouting <= 90 && (gLogCategory_MediaControlRouting != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlRouting, "OSStatus AirPlayGlobalRoute_SetDestination(uint32_t, const char *)", 33554522, "### Set of bad AirPlay route type: %u to %s\n", a1, a2);
      }

      return 4294960591;
    }

    else
    {
      v4 = off_27989AA28[a1 - 1];
      dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
      v5 = ReplaceDifferentString();
      dispatch_semaphore_signal(gAirPlayRouteLock);
      if (v5)
      {
        APSLogErrorAt();
      }

      else
      {
        if (gLogCategory_MediaControlRouting <= 40 && (gLogCategory_MediaControlRouting != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlRouting, "OSStatus AirPlayGlobalRoute_SetDestination(uint32_t, const char *)", 33554472, "AirPlay global %-6s route changed to '%s'\n", v4, a2);
        }

        return 0;
      }
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960534;
  }

  return v5;
}

uint64_t AirPlayGlobalRoute_CopyInfo()
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (gAirPlayRouteLock)
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
    v0 = gAirPlayRouteInfo;
    if (gAirPlayRouteInfo)
    {
      CFRetain(gAirPlayRouteInfo);
    }

    dispatch_semaphore_signal(gAirPlayRouteLock);
  }

  else
  {
    APSLogErrorAt();
    return 0;
  }

  return v0;
}

uint64_t AirPlayGlobalRoute_SetInfo(const void *a1)
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (!gAirPlayRouteLock)
  {
    APSLogErrorAt();
    return 0;
  }

  dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
  v2 = gAirPlayRouteInfo;
  if (a1)
  {
    CFRetain(a1);
  }

  gAirPlayRouteInfo = a1;
  if (v2)
  {
    CFRelease(v2);
  }

  dispatch_semaphore_signal(gAirPlayRouteLock);
  v3 = gLogCategory_MediaControlRouting;
  if (gLogCategory_MediaControlRouting <= 20)
  {
    if (gLogCategory_MediaControlRouting != -1)
    {
LABEL_10:
      if (v3 != -1 || _LogCategory_Initialize())
      {
        v4 = "\n";
        if (!a1)
        {
          v4 = "";
        }

        LogPrintF(&gLogCategory_MediaControlRouting, "OSStatus AirPlayGlobalRoute_SetInfo(CFDictionaryRef)", 33554452, "AirPlay global route info changed to:%s%@\n", v4, a1);
      }

      return 0;
    }

    v5 = _LogCategory_Initialize();
    v3 = gLogCategory_MediaControlRouting;
    if (v5)
    {
      if (gLogCategory_MediaControlRouting > 20)
      {
        return 0;
      }

      goto LABEL_10;
    }
  }

  if (v3 <= 40 && (v3 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlRouting, "OSStatus AirPlayGlobalRoute_SetInfo(CFDictionaryRef)", 33554472, "AirPlay global route info changed\n");
  }

  return 0;
}

char *AirPlayGlobalRoute_CopyPassword()
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (!gAirPlayRouteLock)
  {
    APSLogErrorAt();
    return 0;
  }

  dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
  if (!gAirPlayRoutePassword)
  {
    dispatch_semaphore_signal(gAirPlayRouteLock);
    return 0;
  }

  v0 = strdup(gAirPlayRoutePassword);
  dispatch_semaphore_signal(gAirPlayRouteLock);
  if (!v0)
  {
    APSLogErrorAt();
  }

  return v0;
}

uint64_t AirPlayGlobalRoute_SetPassword(uint64_t a1)
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (gAirPlayRouteLock)
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
    v1 = ReplaceDifferentString();
    dispatch_semaphore_signal(gAirPlayRouteLock);
    if (v1)
    {
      APSLogErrorAt();
    }

    else
    {
      if (gLogCategory_MediaControlRouting <= 40 && (gLogCategory_MediaControlRouting != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlRouting, "OSStatus AirPlayGlobalRoute_SetPassword(const char *)", 33554472, "AirPlay global password changed\n");
      }

      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960534;
  }

  return v1;
}

uint64_t AirPlayGetEventQueue()
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  return gAirPlayEventQueue;
}

uint64_t AirPlaySetProperty(CFTypeRef cf1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (gAirPlayRouteLock)
  {
    if (CFEqual(cf1, @"quiesceScreen"))
    {
      v4 = [MEMORY[0x277D26E58] sharedAVSystemController];
      v5 = [v4 attributeForKey:*MEMORY[0x277D26C70]];
      result = [objc_msgSend(v5 objectForKey:{*MEMORY[0x277D26D18]), "BOOLValue"}];
      if (result)
      {
        v7 = [v4 attributeForKey:*MEMORY[0x277D26C60]];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        result = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (result)
        {
          v8 = result;
          v9 = *v20;
          v10 = MEMORY[0x277D26D28];
          v11 = MEMORY[0x277D26C48];
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v19 + 1) + 8 * i);
              if ([objc_msgSend(v13 objectForKey:{*v10), "isEqual:", *v11}])
              {
                if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus AirPlaySetProperty(CFStringRef, CFTypeRef, CFTypeRef)", 40, "Routing away from AirPlay Screen\n");
                }

                [v4 setPickedRouteWithPassword:v13 withPassword:&stru_28699A3A0];
                return 0;
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
            result = 0;
            if (v8)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    else if (CFEqual(cf1, @"volume"))
    {
      CFGetDouble();
      v15 = v14;
      dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
      if (*&gMediaControlCurrentVolume != v15)
      {
        gMediaControlCurrentVolume = LODWORD(v15);
        if (gMediaControlAudioClient)
        {
          v16 = *(gMediaControlAudioClient + 16);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __AirPlaySetProperty_block_invoke;
          block[3] = &__block_descriptor_36_e5_v8__0l;
          v18 = v15;
          dispatch_async(v16, block);
        }
      }

      dispatch_semaphore_signal(gAirPlayRouteLock);
      return 0;
    }

    else
    {
      if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus AirPlaySetProperty(CFStringRef, CFTypeRef, CFTypeRef)", 60, "### Set of unknown AirPlay property '%@'\n", cf1);
      }

      return 4294960561;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960534;
  }

  return result;
}

void __AirPlaySetProperty_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = gMediaControlAudioClient;
  if (gMediaControlAudioClient)
  {
    v2 = *(a1 + 32);
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoVolumeSet(MediaControlClientRef, float)", 50, "Set volume to %f\n", v2);
    }

    v3 = MediaControlClient_EnsureConnected(v1);
    if (v3)
    {
      v4 = v3;
      APSLogErrorAt();
    }

    else
    {
      snprintf(__str, 0x80uLL, "/volume?volume=%f", v2);
      HTTPHeader_InitRequest();
      v4 = _MediaControlClient_DoTransaction(50, v1, v1 + 416, 0, 0);
    }

    v5 = *(v1 + 279600);
    if (v5)
    {
      free(v5);
      *(v1 + 279600) = 0;
    }

    if (v4 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoVolumeSet(MediaControlClientRef, float)", 60, "### Set volume failed: %#m\n", v4);
    }
  }
}

uint64_t MediaControlClient_EnsureConnected(uint64_t a1)
{
  v2 = a1 + 844952;
  if (!*(a1 + 424))
  {
    *v2 = CFAbsoluteTimeGetCurrent();
    *(a1 + 844960) = 0u;
    *(a1 + 844976) = 0u;
    *(a1 + 844992) = 0u;
    *(a1 + 845008) = 0u;
    *(a1 + 845024) = 0u;
    *(a1 + 845040) = 0;
  }

  v3 = _MediaControlClient_EnsureConnected(a1, a1 + 416);
  if (v3)
  {
    return v3;
  }

  v4 = (a1 + 279600);
  if (!*(a1 + 281756))
  {
    APSGetDeviceNameCString();
    *(a1 + 281756) = 1;
    HTTPHeader_InitRequest();
    HTTPHeader_SetField(a1 + 496, "X-Apple-Client-Name", "%s", (a1 + 256));
    v5 = NROcmM();
    HTTPHeader_SetField(a1 + 496, "X-Apple-VV", "%u", v5);
    v6 = _MediaControlClient_DoTransaction(50, a1, a1 + 416, 0, 0);
    if (v6)
    {
      if (v6 == 200404)
      {
        v7 = 0;
      }

      else
      {
        v7 = v6;
      }

      if (v6 != 200404)
      {
        v8 = 0;
        v9 = 0;
LABEL_18:
        if (*v4)
        {
          free(*v4);
          *v4 = 0;
        }

        if (v9)
        {
          CFRelease(v9);
        }

        if (v7 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_CopyServerInfo(MediaControlClientRef, CFDictionaryRef *)", 60, "### Get server info failed: %#m\n", v7);
        }

        if (v8)
        {
          CFDictionaryGetInt64();
          v14 = *(a1 + 281768);
          if (v14)
          {
            CFRelease(v14);
          }

          v15 = APSFeaturesCreateFromLegacyFlags();
          *(a1 + 281768) = v15;
          if (!v15)
          {
            APSLogErrorAt();
            return 4294960568;
          }

          CFDictionaryGetCString();
          *(a1 + 281776) = TextToSourceVersion();
          v16 = *(a1 + 281760);
          CFRetain(v8);
          *(a1 + 281760) = v8;
          if (v16)
          {
            CFRelease(v16);
          }

          CFRelease(v8);
        }

        if (*(v2 + 40) == 0.0)
        {
          Current = CFAbsoluteTimeGetCurrent();
          *(v2 + 40) = Current;
          *(v2 + 80) = ((Current - *(v2 + 32)) * 1000.0);
        }

        v18 = _MediaControlClient_EnsureAuthenticated(a1, a1 + 416);
        if (v18)
        {
          v20 = v18;
          APSLogErrorAt();
          return v20;
        }

        if (*(v2 + 48) == 0.0)
        {
          v19 = CFAbsoluteTimeGetCurrent();
          *(v2 + 48) = v19;
          *(v2 + 84) = ((v19 - *(v2 + 40)) * 1000.0);
        }

        *(a1 + 281780) = 0;
        APSSettingsGetCString();
        *(a1 + 281796) = *(a1 + 281776) > 0x16E61Bu;
        *(a1 + 281797) = APSSettingsGetInt64() != 0;
        goto LABEL_40;
      }

      v13 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v9 = 0;
      if (v13)
      {
        v8 = v13;
        goto LABEL_17;
      }

      v7 = 4294960596;
      v8 = 0;
    }

    else
    {
      v10 = CFDataCreate(0, *(a1 + 279608), *(a1 + 279616));
      if (v10)
      {
        v11 = v10;
        v8 = CFPropertyListCreateWithData(0, v10, 0, 0, 0);
        CFRelease(v11);
        if (v8)
        {
          v12 = CFGetTypeID(v8);
          if (v12 == CFDictionaryGetTypeID())
          {
            v9 = 0;
LABEL_17:
            v7 = 0;
            goto LABEL_18;
          }

          v7 = 4294960540;
        }

        else
        {
          v7 = 4294960579;
        }
      }

      else
      {
        v8 = 0;
        v7 = 4294960568;
      }
    }

    v9 = v8;
    APSLogErrorAt();
    v8 = 0;
    goto LABEL_18;
  }

LABEL_40:
  if (*(a1 + 563216))
  {
    _MediaControlClient_EnsureReverseConnected(a1, (a1 + 281824), "event");
  }

  return 0;
}

uint64_t _MediaControlClient_DoTransaction(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, size_t a5)
{
  if (!*(a3 + 8))
  {
    APSLogErrorAt();
    v17 = 4294960551;
    goto LABEL_24;
  }

  v10 = 200401;
  v11 = a3 + 80;
  HTTPHeader_SetField(a3 + 80, "Content-Length", "%zu", a5);
  HTTPHeader_SetField(v11, "X-Apple-Device-ID", "0x%llx", *(a2 + 384));
  HTTPHeader_SetField(v11, "X-Apple-Session-ID", "%#U", a2 + 398);
  ShortVersionLength = APSVersionUtilsGetShortVersionLength();
  HTTPHeader_SetField(v11, "User-Agent", "AirPlay/%.*s", ShortVersionLength, "920.10.1");
  v13 = _MediaControlClient_SendRequest(a1, a3, a4, a5);
  if (v13)
  {
    goto LABEL_12;
  }

  v13 = _MediaControlClient_ReceiveResponse(a1, a3);
  if (v13 != 200401)
  {
    goto LABEL_12;
  }

  if (_MediaControlClient_GetPassword(a2))
  {
    if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_DoTransaction(LogLevel, MediaControlClientRef, MediaControlClientConnection *, const void *, size_t)", 40, "Retrying request to %s with password\n", *(a2 + 24));
    }

    v14 = *(a2 + 32);
    *(a2 + 88) = "AirPlay";
    *(a2 + 96) = v14;
    *(a2 + 104) = v11;
    *(a2 + 112) = a3 + 8560;
    v15 = HTTPClientAuthorization_Apply();
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v16 = _MediaControlClient_SendRequest(a1, a3, a4, a5);
      if (!v16)
      {
        v13 = _MediaControlClient_ReceiveResponse(a1, a3);
LABEL_12:
        v17 = v13;
        goto LABEL_13;
      }

      v17 = v16;
    }

    APSLogErrorAt();
LABEL_13:
    if (v17 == -6723 || !v17)
    {
      return v17;
    }

    if (v17 == 200401)
    {
      goto LABEL_16;
    }

LABEL_24:
    if ((v17 - 100) < 0x1F4 || (v17 - 200100) <= 0x1F3)
    {
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        v20 = *(a2 + 24);
        if (!v20)
        {
          v20 = "";
        }

        LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_HandleError(MediaControlClientRef, OSStatus)", 50, "### MC message error with %s/%##a: %#m\n", v20, a2 + 456, v17);
      }
    }

    else
    {
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        v19 = *(a2 + 24);
        if (!v19)
        {
          v19 = "";
        }

        LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_HandleError(MediaControlClientRef, OSStatus)", 50, "### MC transport error with %s/%##a: %#m\n", v19, a2 + 456, v17);
      }

      if (*(a2 + 563216))
      {
        cf = 0;
        CFPropertyListCreateFormatted(0, &cf, "{%kO=%O%kO={%kO=%O%kO=%i}}", @"state", @"disconnected", @"error", @"domain", @"NSOSStatusErrorDomain", @"code", v17);
        if (cf)
        {
          if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_HandleError(MediaControlClientRef, OSStatus)", 50, "### Simulating stop due to error: %#m\n", v17);
          }

          (*(a2 + 563216))(a2, cf, *(a2 + 563224));
          CFRelease(cf);
        }
      }

      MediaControlClient_EnsureDisconnected(a2);
    }

    return v17;
  }

LABEL_16:
  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    v18 = *(a2 + 24);
    if (!v18)
    {
      v18 = "";
    }

    LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_HandleError(MediaControlClientRef, OSStatus)", 50, "MC bad/missing password for %s/%##a: %#m\n", v18, a2 + 456, 200401);
  }

  return v10;
}

uint64_t _MediaControlClient_SendRequest(uint64_t a1, void *a2, const char *a3, size_t a4)
{
  v7 = a1;
  v8 = HTTPHeader_Commit();
  if (v8)
  {
    v10 = v8;
LABEL_16:
    APSLogErrorAt();
    return v10;
  }

  if (a4 == -1)
  {
    strlen(a3);
  }

  if (gLogCategory_MediaControlClientHTTPClient <= v7 && (gLogCategory_MediaControlClientHTTPClient != -1 || _LogCategory_Initialize()))
  {
    LogHTTP();
  }

  v9 = (*(*a2 + 40))();
  v10 = v9;
  if (v9 != -6723 && v9 != 32 && v9 != 0)
  {
    goto LABEL_16;
  }

  return v10;
}

uint64_t _MediaControlClient_ReceiveResponse(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = NetSocket_HTTPReadHeader();
  if (v5)
  {
    return v5;
  }

  v6 = (a2 + 34898);
  v7 = a2[2128];
  if (v7 >= 0x20000)
  {
    if (v7 >= 0x400000)
    {
      APSLogErrorAt();
      return 4294960553;
    }

    v17 = a2[2128];
    if (*v6)
    {
      free(*v6);
    }

    v10 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
    *v6 = v10;
    if (!v10)
    {
      APSLogErrorAt();
      return 4294960568;
    }

    a2[34899] = v10;
  }

  else
  {
    v17 = a2[2128];
    v8 = a2 + 18514;
    a2[34899] = (a2 + 18514);
    if (!v7)
    {
      v9 = 0;
      goto LABEL_13;
    }
  }

  v11 = (*(v4 + 24))(v4, v7, v7);
  v12 = v11;
  if (v11 == -6723)
  {
    return v12;
  }

  if (v11)
  {
    APSLogErrorAt();
    return v12;
  }

  v8 = a2[34899];
  v9 = v17;
LABEL_13:
  *(v8 + v9) = 0;
  a2[34900] = v17;
  if (*(v4 + 64) == *(v4 + 72))
  {
    if (gLogCategory_MediaControlClientHTTPClient <= v3 && (gLogCategory_MediaControlClientHTTPClient != -1 || _LogCategory_Initialize()))
    {
      LogHTTP();
    }

    v13 = *(a2 + 4248);
    v14 = v13 - 200;
    if (v13 == 101)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13 + 200000;
    }

    if (v14 >= 0x64)
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960584;
  }
}

uint64_t _MediaControlClient_GetPassword(uint64_t a1)
{
  v2 = AirPlayGlobalRoute_CopyPassword();
  if (v2)
  {
    v3 = v2;
    ReplaceDifferentString();
    free(v3);
  }

  v6 = *(a1 + 32);
  v5 = a1 + 32;
  v4 = v6;
  if (!v6 || !*v4)
  {
    if (gMediaControlClientInitOnce != -1)
    {
      dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
    }

    if (!gAirPlayRouteLock)
    {
      goto LABEL_15;
    }

    if ((gMediaControlForLegacyURLFlinging & 1) == 0)
    {
      v7 = [MEMORY[0x277D26E58] sharedAVSystemController];
      v8 = [objc_msgSend(v7 attributeForKey:{*MEMORY[0x277D26C70]), "objectForKey:", @"AirPlayPortExtendedInfo"}];
      if (([objc_msgSend(v8 objectForKey:{@"systemFlags", "intValue"}] & 8) != 0)
      {
        v9 = [objc_msgSend(v8 objectForKey:{@"pin", "UTF8String"}];
        if (v9)
        {
          if (*v9)
          {
            v10 = strdup(v9);
            if (v10)
            {
              v11 = v10;
              ReplaceDifferentString();
              free(v11);
              return *v5;
            }

LABEL_15:
            APSLogErrorAt();
          }
        }
      }
    }
  }

  return *v5;
}

uint64_t MediaControlClient_EnsureDisconnected(void *a1)
{
  v2 = a1 + 105604;
  v3 = a1 + 281756;
  _MediaControlClientNowPlayingEnsureTornDown(a1);
  _MediaControlClient_LogPhotoEnded(a1);
  _MediaControlClient_LogSlideshowEnded(a1);
  _MediaControlClient_LogVideoEnded(a1);
  if (*v2)
  {
    HTTPServer_Delete();
    *v2 = 0;
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_release(v4);
    v2[1] = 0;
  }

  _MediaControlClient_EnsureDisconnected(a1, (a1 + 52));
  _MediaControlClient_EnsureReverseDisconnected(a1, a1 + 35228);
  _MediaControlClient_EnsureReverseDisconnected(a1, a1 + 70411);
  _MediaControlClient_PlaybackStopped(a1);
  *v3 = 0;
  v5 = *(v3 + 4);
  if (v5)
  {
    CFRelease(v5);
    *(v3 + 4) = 0;
  }

  return 0;
}

void _MediaControlClientNowPlayingEnsureTornDown(uint64_t a1)
{
  v1 = a1 + 843776;
  if (*(a1 + 844817))
  {
    *(a1 + 844817) = 0;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    _MediaControlClient_ControlNowPlaying(0);
    if (gLogCategory_MediaControlClientMetaData <= 30 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientMetaData, "void _MediaControlClientNowPlayingEnsureTornDown(MediaControlClientRef)", 33554462, "MC NowPlaying stopped (stop)\n");
    }
  }

  v2 = *(v1 + 1048);
  if (v2)
  {
    CFRelease(v2);
    *(v1 + 1048) = 0;
  }
}

void _MediaControlClient_LogPhotoEnded(uint64_t a1)
{
  v1 = a1 + 561152;
  if (*(a1 + 563256) != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (gLogCategory_MediaControlClientCore <= 50)
    {
      v4 = Current;
      v5 = *(v1 + 2104);
      if (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_LogPhotoEnded(MediaControlClientRef)", 50, "AirPlay Photo session ended: %#U (%{dur})\n", a1 + 563240, (v4 - v5));
      }

      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_LogPhotoEnded(MediaControlClientRef)", 50, "Stats: %u photos, %u/%u min/max bytes, %u/%u min/max BPS\n", *(v1 + 2116), *(v1 + 2120), *(v1 + 2124), *(v1 + 2128), *(v1 + 2132));
      }
    }

    *(v1 + 2104) = 0;
  }
}

void _MediaControlClient_LogSlideshowEnded(uint64_t a1)
{
  v1 = a1 + 843776;
  if (*(a1 + 844720) != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (gLogCategory_MediaControlClientCore <= 50)
    {
      v4 = Current;
      v5 = *(v1 + 944);
      if (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_LogSlideshowEnded(MediaControlClientRef)", 50, "AirPlay Slideshow session ended: %#U (%{dur})\n", a1 + 844704, (v4 - v5));
      }

      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_LogSlideshowEnded(MediaControlClientRef)", 50, "Stats: %u photos\n", *(v1 + 956));
      }
    }

    *(v1 + 944) = 0;
  }
}

void _MediaControlClient_LogVideoEnded(uint64_t a1)
{
  v1 = a1 + 843776;
  if (*(a1 + 844768) != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (gLogCategory_MediaControlClientCore <= 50)
    {
      v3 = Current;
      v4 = *(v1 + 992);
      if (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize())
      {
        if (*(v1 + 1158))
        {
          v5 = "Audio";
        }

        else
        {
          v5 = "Video";
        }

        LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_LogVideoEnded(MediaControlClientRef)", 50, "AirPlay %s session ended after %{dur}, Ready %u ms, %u Stalls, BW-Mean %.2f Mbps, BW-Max %.2f Mbps, BW-std %.2f Mbps, %u LFP, %u LNFP, %u RFP, %u RNFP\n", v5, (v3 - v4), *(v1 + 1008), *(v1 + 1012), *(v1 + 1024) * 0.000000953674316, *(v1 + 1032) * 0.000000953674316, *(v1 + 1016) * 0.000000953674316, *(v1 + 1164), *(v1 + 1160), *(v1 + 1172), *(v1 + 1168));
      }
    }

    *(v1 + 992) = 0;
  }
}

uint64_t _MediaControlClient_EnsureDisconnected(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    NetSocket_Delete();
    *a2 = 0;
  }

  if (*(a2 + 8))
  {
    *(a2 + 8) = 0;
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_EnsureDisconnected(MediaControlClientRef, MediaControlClientConnection *, Boolean)", 50, "Disconnected %-9s from %##a\n", *(a2 + 279208), a2 + 40);
    }
  }

  v4 = *(a2 + 281272);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 281272) = 0;
  }

  *(a2 + 281312) = 0;
  *(a2 + 279216) = 0;
  if (_MediaControlClient_RemoveTrafficRegistration(a1) && gLogCategory_MediaControlClientCore <= 90 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_EnsureDisconnected(MediaControlClientRef, MediaControlClientConnection *, Boolean)", 90, "%s: de-register traffic failed with error %m\n", "void _MediaControlClient_EnsureDisconnected(MediaControlClientRef, MediaControlClientConnection *, Boolean)");
  }

  result = *(a1 + 56);
  if (result)
  {
    if (*(a2 + 281268))
    {
      result = APSConnectionInterfaceManagerReleaseInterfaceSelection();
      *(a2 + 281268) = 0;
    }
  }

  return result;
}

uint64_t _MediaControlClient_EnsureReverseDisconnected(uint64_t a1, void *a2)
{
  v4 = a2 + 34816;
  if (*a2)
  {
    NetSocket_Cancel();
  }

  if (v4[353])
  {
    v4[354] = dispatch_semaphore_create(0);
    dispatch_async_f(v4[353], a2, _MediaControlClient_ReverseConnectionStop);
    dispatch_release(v4[353]);
    v5 = v4[354];
    if (v5)
    {
      dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v4[354]);
      v4[354] = 0;
    }

    v4[353] = 0;
  }

  return _MediaControlClient_EnsureDisconnected(a1, a2);
}

void _MediaControlClient_PlaybackStopped(uint64_t a1)
{
  v2 = a1 + 843776;
  if (*(a1 + 844934))
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
    if (gMediaControlAudioClient == a1)
    {
      gMediaControlAudioClient = 0;
    }

    dispatch_semaphore_signal(gAirPlayRouteLock);
  }

  if (gMediaControlForLegacyURLFlinging == 1)
  {
    if (*(v2 + 1304))
    {
      if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_PlaybackStopped(MediaControlClientRef)", 40, "Releasing WiFiManager\n");
      }

      CFRelease(*(v2 + 1304));
      *(v2 + 1304) = 0;
    }

    if (*(v2 + 1156))
    {
      if (*(a1 + 64))
      {
        v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, (a1 + 64));
        *(v2 + 1156) = 0;
        if (v3)
        {
          CFRelease(v3);
        }
      }

      else
      {
        *(v2 + 1156) = 0;
      }
    }
  }

  _MediaControlClient_PlaybackPaused(a1, 0);
}

void _MediaControlClient_PlaybackPaused(uint64_t a1, int a2)
{
  if (gMediaControlForLegacyURLFlinging == 1)
  {
    v2 = a2;
    v4 = a1 + 843776;
    if (!a2)
    {
      v8 = *(a1 + 845068);
      if (v8)
      {
        IOPMAssertionRelease(v8);
        *(v4 + 1292) = 0;
        if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_PlaybackPaused(MediaControlClientRef, Boolean)", 40, "Allowing idle sleep after resume\n");
        }
      }

      v9 = *(v4 + 1296);
      if (v9)
      {
        dispatch_source_cancel(*(v4 + 1296));
        dispatch_release(v9);
        *(v4 + 1296) = 0;
      }

      goto LABEL_18;
    }

    if (*(a1 + 844933))
    {
LABEL_18:
      *(v4 + 1157) = v2;
      return;
    }

    if (*(a1 + 845072))
    {
LABEL_7:
      if (!*(v4 + 1292))
      {
        IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.airplay.pause-grace-period", (v4 + 1292));
        if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_PlaybackPaused(MediaControlClientRef, Boolean)", 40, "Preventing idle sleep for grace period after pause\n");
        }
      }

      goto LABEL_18;
    }

    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 16));
    *(v4 + 1296) = v5;
    if (v5)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = ___MediaControlClient_PlaybackPaused_block_invoke;
      handler[3] = &__block_descriptor_40_e5_v8__0l;
      handler[4] = a1;
      dispatch_source_set_event_handler(v5, handler);
      v6 = *(v4 + 1296);
      v7 = dispatch_time(0, 900000000000);
      dispatch_source_set_timer(v6, v7, 0x7FFFFFFFFFFFFFFFuLL, 0x3B9ACA00uLL);
      dispatch_resume(*(v4 + 1296));
      goto LABEL_7;
    }

    APSLogErrorAt();
  }
}

void _MediaControlClient_ReverseConnectionStop(uint64_t a1)
{
  v1 = a1 + 278528;
  v2 = *(a1 + 281368);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 281368));
    dispatch_release(v2);
    *(v1 + 2840) = 0;
  }

  v3 = *(v1 + 2856);
  if (v3)
  {
    dispatch_source_cancel(*(v1 + 2856));
    dispatch_release(v3);
    *(v1 + 2856) = 0;
  }
}

uint64_t _MediaControlClient_RemoveTrafficRegistration(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 + 278528;
    if (*(a1 + 281822))
    {
      v2 = *(a1 + 281800);
      if (v2)
      {
        CFRelease(v2);
        *(v1 + 3272) = 0;
      }
    }

    if (*(v1 + 3295))
    {
      v3 = *(v1 + 3280);
      if (v3)
      {
        CFRelease(v3);
        *(v1 + 3280) = 0;
      }
    }

    result = 0;
    *(v1 + 3288) = 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return result;
}

intptr_t _MediaControlClient_ControlNowPlaying(unsigned int a1)
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (gAirPlayRouteLock)
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
    v2 = gAirPlayNowPlayingFlags & 0xFFFFFFFD | (2 * ((a1 >> 1) & 1));
    gAirPlayNowPlayingFlags = v2;
    if (v2)
    {
      if ((gAirPlayNowPlayingRegistered & 1) == 0)
      {
        MRMediaRemoteRegisterForNowPlayingNotifications();
LABEL_9:
        gAirPlayNowPlayingRegistered = v2 != 0;
      }
    }

    else if (gAirPlayNowPlayingRegistered)
    {
      MRMediaRemoteUnregisterForNowPlayingNotifications();
      goto LABEL_9;
    }

    v3 = gAirPlayRouteLock;

    return dispatch_semaphore_signal(v3);
  }

  return APSLogErrorAt();
}

uint64_t _MediaControlClientNowPlayingInfoDidChange(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return MRMediaRemoteGetNowPlayingInfo();
}

void _MediaControlClientNowPlayingUpdate(uint64_t a1, const __CFDictionary *a2)
{
  v136 = 0;
  valuePtr = 0;
  v135 = 0;
  v4 = *(a1 + 844824);
  v5 = v4;
  if (!v4)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      goto LABEL_325;
    }

    v5 = Mutable;
    *(a1 + 844824) = Mutable;
  }

  v7 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v7)
  {
    v8 = v7;
    v130 = a1;
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, *MEMORY[0x277D27B60]);
    }

    else
    {
      Value = 0;
    }

    if (Value)
    {
      v10 = Value;
    }

    else
    {
      v10 = &stru_28699A3A0;
    }

    v11 = CFGetTypeID(v10);
    if (v11 != CFStringGetTypeID())
    {
      goto LABEL_326;
    }

    v12 = CFDictionaryGetValue(v5, @"album");
    if (!v4 || v10 != v12 && (!v12 || !CFEqual(v10, v12)))
    {
      CFDictionarySetValue(v8, @"album", v10);
      CFDictionarySetValue(v5, @"album", v10);
    }

    v13 = a2 ? CFDictionaryGetValue(a2, *MEMORY[0x277D27B70]) : 0;
    v14 = v13 ? v13 : &stru_28699A3A0;
    v15 = CFGetTypeID(v14);
    if (v15 != CFStringGetTypeID())
    {
      goto LABEL_326;
    }

    v16 = CFDictionaryGetValue(v5, @"artist");
    if (!v4 || v14 != v16 && (!v16 || !CFEqual(v14, v16)))
    {
      CFDictionarySetValue(v8, @"artist", v14);
      CFDictionarySetValue(v5, @"artist", v14);
    }

    cf = v10;
    v17 = a2 ? CFDictionaryGetValue(a2, *MEMORY[0x277D27BB0]) : 0;
    v18 = v17 ? v17 : &stru_28699A3A0;
    v19 = CFGetTypeID(v18);
    if (v19 != CFStringGetTypeID())
    {
      goto LABEL_326;
    }

    v20 = CFDictionaryGetValue(v5, @"composer");
    if (!v4 || v18 != v20 && (!v20 || !CFEqual(v18, v20)))
    {
      CFDictionarySetValue(v8, @"composer", v18);
      CFDictionarySetValue(v5, @"composer", v18);
    }

    v21 = a2 ? CFDictionaryGetValue(a2, *MEMORY[0x277D27C00]) : 0;
    v22 = v21 ? v21 : &stru_28699A3A0;
    v23 = CFGetTypeID(v22);
    if (v23 != CFStringGetTypeID())
    {
      goto LABEL_326;
    }

    v24 = CFDictionaryGetValue(v5, @"genre");
    if (!v4 || v22 != v24 && (!v24 || !CFEqual(v22, v24)))
    {
      CFDictionarySetValue(v8, @"genre", v22);
      CFDictionarySetValue(v5, @"genre", v22);
    }

    v25 = a2 ? CFDictionaryGetValue(a2, *MEMORY[0x277D27C88]) : 0;
    v26 = v25 ? v25 : &stru_28699A3A0;
    v27 = CFGetTypeID(v26);
    if (v27 != CFStringGetTypeID())
    {
      goto LABEL_326;
    }

    v28 = CFDictionaryGetValue(v5, @"title");
    if (!v4 || v26 != v28 && (!v28 || !CFEqual(v26, v28)))
    {
      CFDictionarySetValue(v8, @"title", v26);
      CFDictionarySetValue(v5, @"title", v26);
    }

    v132 = v26;
    if (a2)
    {
      v29 = CFDictionaryGetValue(a2, *MEMORY[0x277D27C48]);
      v30 = CFDictionaryGetValue(a2, *MEMORY[0x277D27CA0]);
      if (v29)
      {
        v31 = v30;
        v32 = CFGetTypeID(v29);
        if (v32 == CFNumberGetTypeID())
        {
          if (v31)
          {
            v33 = CFGetTypeID(v31);
            if (v33 == CFNumberGetTypeID())
            {
              CFGetInt64();
              Int64 = CFNumberCreateInt64();
              if (!Int64)
              {
LABEL_318:
                APSLogErrorAt();
                v128 = -6728;
LABEL_327:
                v136 = v128;
LABEL_305:
                CFRelease(v8);
                v127 = v136;
                if (!v136)
                {
                  return;
                }

                goto LABEL_306;
              }

              v35 = Int64;
              v36 = CFDictionaryGetValue(v5, @"trackNumber");
              if (!v4 || v35 != v36 && (!v36 || !CFEqual(v35, v36)))
              {
                CFDictionarySetValue(v8, @"trackNumber", v35);
                CFDictionarySetValue(v5, @"trackNumber", v35);
              }

              CFRelease(v35);
              v37 = CFDictionaryGetValue(v5, @"totalTracks");
              if (!v4 || v31 != v37 && (!v37 || !CFEqual(v31, v37)))
              {
                CFDictionarySetValue(v8, @"totalTracks", v31);
                CFDictionarySetValue(v5, @"totalTracks", v31);
              }

              goto LABEL_119;
            }
          }
        }
      }

      v38 = CFDictionaryGetValue(a2, *MEMORY[0x277D27CB0]);
      v29 = v38;
      if (v38)
      {
        v39 = CFGetTypeID(v38);
        if (v39 != CFNumberGetTypeID())
        {
          goto LABEL_326;
        }

        v40 = 0;
      }

      else
      {
        v40 = 1;
      }
    }

    else
    {
      v29 = 0;
      v40 = 1;
    }

    v41 = CFDictionaryGetValue(v5, @"trackNumber");
    if (!v4 || v29 != v41 && (!v40 ? (v42 = v29) : (v42 = *MEMORY[0x277CBEEE8]), v41 ? (v43 = v41) : (v43 = *MEMORY[0x277CBEEE8]), !CFEqual(v42, v43)))
    {
      if (v40)
      {
        CFDictionarySetInt64();
        v44 = *MEMORY[0x277CBEEE8];
        v45 = v5;
      }

      else
      {
        CFDictionarySetValue(v8, @"trackNumber", v29);
        v45 = v5;
        v44 = v29;
      }

      CFDictionarySetValue(v45, @"trackNumber", v44);
    }

    if (a2)
    {
      v46 = CFDictionaryGetValue(a2, *MEMORY[0x277D27CA8]);
      v47 = v46;
      if (v46)
      {
        v48 = CFGetTypeID(v46);
        if (v48 != CFNumberGetTypeID())
        {
          goto LABEL_326;
        }

        v49 = 0;
LABEL_105:
        v50 = CFDictionaryGetValue(v5, @"totalTracks");
        if (!v4 || v47 != v50 && (!v49 ? (v51 = v47) : (v51 = *MEMORY[0x277CBEEE8]), v50 ? (v52 = v50) : (v52 = *MEMORY[0x277CBEEE8]), !CFEqual(v51, v52)))
        {
          if (v49)
          {
            CFDictionarySetInt64();
            v53 = *MEMORY[0x277CBEEE8];
            v54 = v5;
          }

          else
          {
            CFDictionarySetValue(v8, @"totalTracks", v47);
            v54 = v5;
            v53 = v47;
          }

          CFDictionarySetValue(v54, @"totalTracks", v53);
        }

        if (!a2)
        {
          v56 = 0;
          goto LABEL_123;
        }

LABEL_119:
        v55 = CFDictionaryGetValue(a2, *MEMORY[0x277D27BD0]);
        v56 = v55;
        if (v55)
        {
          v57 = CFGetTypeID(v55);
          if (v57 != CFNumberGetTypeID())
          {
            goto LABEL_326;
          }

          v58 = 0;
LABEL_124:
          v59 = CFDictionaryGetValue(v5, @"discNumber");
          if (!v4 || v56 != v59 && (!v58 ? (v60 = v56) : (v60 = *MEMORY[0x277CBEEE8]), v59 ? (v61 = v59) : (v61 = *MEMORY[0x277CBEEE8]), !CFEqual(v60, v61)))
          {
            if (v58)
            {
              CFDictionarySetInt64();
              v62 = *MEMORY[0x277CBEEE8];
              v63 = v5;
            }

            else
            {
              CFDictionarySetValue(v8, @"discNumber", v56);
              v63 = v5;
              v62 = v56;
            }

            CFDictionarySetValue(v63, @"discNumber", v62);
          }

          v131 = v14;
          if (a2)
          {
            v64 = CFDictionaryGetValue(a2, *MEMORY[0x277D27C98]);
            v65 = v64;
            if (v64)
            {
              v66 = CFGetTypeID(v64);
              if (v66 != CFNumberGetTypeID())
              {
                goto LABEL_326;
              }

              v67 = 0;
LABEL_143:
              v68 = CFDictionaryGetValue(v5, @"totalDiscs");
              v69 = v8;
              if (v4 && (v65 == v68 || (!v67 ? (v70 = v65) : (v70 = *MEMORY[0x277CBEEE8]), v68 ? (v71 = v68) : (v71 = *MEMORY[0x277CBEEE8]), CFEqual(v70, v71))) || ((v67 & 1) == 0 ? (CFDictionarySetValue(v8, @"totalDiscs", v65), v73 = v5, v72 = v65) : (CFDictionarySetInt64(), v72 = *MEMORY[0x277CBEEE8], v73 = v5), CFDictionarySetValue(v73, @"totalDiscs", v72), v4))
              {
                if (a2)
                {
                  goto LABEL_157;
                }

LABEL_165:
                v75 = 0;
                goto LABEL_166;
              }

              if (a2 && (v78 = CFDictionaryGetValue(a2, *MEMORY[0x277D27BE0])) != 0)
              {
                v79 = v78;
                v80 = CFGetTypeID(v78);
                if (v80 != CFNumberGetTypeID())
                {
                  goto LABEL_326;
                }

                CFDictionaryGetValue(v5, @"elapsedTime");
                CFDictionarySetValue(v8, @"elapsedTime", v79);
                CFDictionarySetValue(v5, @"elapsedTime", v79);
              }

              else
              {
                CFDictionaryGetValue(v5, @"elapsedTime");
                CFDictionarySetInt64();
                CFDictionarySetValue(v5, @"elapsedTime", *MEMORY[0x277CBEEE8]);
                if (!a2)
                {
                  goto LABEL_165;
                }
              }

LABEL_157:
              v74 = CFDictionaryGetValue(a2, *MEMORY[0x277D27BD8]);
              v75 = v74;
              if (v74)
              {
                v76 = CFGetTypeID(v74);
                if (v76 == CFNumberGetTypeID())
                {
                  v77 = 0;
LABEL_167:
                  v81 = CFDictionaryGetValue(v5, @"duration");
                  if (!v4 || v75 != v81 && (!v77 ? (v82 = v75) : (v82 = *MEMORY[0x277CBEEE8]), v81 ? (v83 = v81) : (v83 = *MEMORY[0x277CBEEE8]), !CFEqual(v82, v83)))
                  {
                    if (v77)
                    {
                      CFDictionarySetInt64();
                      v84 = *MEMORY[0x277CBEEE8];
                      v85 = v5;
                    }

                    else
                    {
                      CFDictionarySetValue(v69, @"duration", v75);
                      v85 = v5;
                      v84 = v75;
                    }

                    CFDictionarySetValue(v85, @"duration", v84);
                  }

                  if (a2)
                  {
                    v86 = CFDictionaryGetValue(a2, *MEMORY[0x277D27B80]);
                    v87 = v86;
                    if (v86)
                    {
                      v88 = CFGetTypeID(v86);
                      if (v88 != CFDataGetTypeID())
                      {
                        goto LABEL_323;
                      }

                      v89 = 0;
LABEL_186:
                      v90 = CFDictionaryGetValue(v5, @"artworkData");
                      if (!v4 || v87 != v90 && (!v89 ? (v91 = v87) : (v91 = *MEMORY[0x277CBEEE8]), v90 ? (v92 = v90) : (v92 = *MEMORY[0x277CBEEE8]), !CFEqual(v91, v92)))
                      {
                        if ((v89 & 1) == 0)
                        {
                          CFDictionarySetValue(v69, @"artworkData", v87);
                        }

                        if (v89)
                        {
                          v93 = *MEMORY[0x277CBEEE8];
                        }

                        else
                        {
                          v93 = v87;
                        }

                        CFDictionarySetValue(v5, @"artworkData", v93);
                      }

                      if (a2)
                      {
                        v94 = CFDictionaryGetValue(a2, *MEMORY[0x277D27B90]);
                      }

                      else
                      {
                        v94 = 0;
                      }

                      if (v94)
                      {
                        v95 = v94;
                      }

                      else
                      {
                        v95 = &stru_28699A3A0;
                      }

                      v96 = CFGetTypeID(v95);
                      if (v96 == CFStringGetTypeID())
                      {
                        v97 = CFDictionaryGetValue(v5, @"artworkMIMEType");
                        if (v4 && (v95 == v97 || v97 && CFEqual(v95, v97)))
                        {
                          if (v77)
                          {
                            goto LABEL_217;
                          }
                        }

                        else
                        {
                          CFDictionarySetValue(v69, @"artworkMIMEType", v95);
                          CFDictionarySetValue(v5, @"artworkMIMEType", v95);
                          if (v77)
                          {
                            goto LABEL_217;
                          }
                        }

                        CFGetDouble();
                        if (v98 > 0.0)
                        {
                          v99 = MEMORY[0x277CBED10];
LABEL_218:
                          v8 = v69;
                          v100 = *v99;
                          v101 = CFDictionaryGetValue(v5, @"isStream");
                          if (!v4 || v100 != v101 && (!v100 || !v101 || !CFEqual(v100, v101)))
                          {
                            CFDictionarySetValue(v69, @"isStream", v100);
                            CFDictionarySetValue(v5, @"isStream", v100);
                          }

                          if (a2)
                          {
                            v102 = CFDictionaryGetInt64();
                            v135 = v102;
                            v103 = @"none";
                            v104 = 1;
                            if (!v136)
                            {
                              v105 = v102;
                              if (v102 != 1)
                              {
                                if (v102 == 2)
                                {
                                  v103 = @"one";
                                }

                                else if (v102 == 3)
                                {
                                  v103 = @"all";
                                }

                                else
                                {
                                  if (gLogCategory_MediaControlClientMetaData <= 50 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
                                  {
                                    LogPrintF(&gLogCategory_MediaControlClientMetaData, "OSStatus _MediaControlClientNowPlayingUpdate(MediaControlClientRef, CFDictionaryRef)", 33554482, "### MC Bad repeat mode: %lld\n", v105);
                                  }

                                  v104 = 0;
                                  v103 = 0;
                                }
                              }
                            }
                          }

                          else
                          {
                            v136 = -6727;
                            v103 = @"none";
                            v104 = 1;
                          }

                          v106 = CFDictionaryGetValue(v5, @"repeatMode");
                          if (!v4 || v103 != v106 && (v106 ? (v107 = v104) : (v107 = 0), v107 != 1 || !CFEqual(v103, v106)))
                          {
                            CFDictionarySetValue(v69, @"repeatMode", v103);
                            CFDictionarySetValue(v5, @"repeatMode", v103);
                          }

                          if (a2)
                          {
                            v108 = CFDictionaryGetInt64();
                            v135 = v108;
                            v109 = @"off";
                            v110 = 1;
                            if (!v136)
                            {
                              v111 = v108;
                              if (v108 != 1)
                              {
                                if (v108 == 2)
                                {
                                  v109 = @"albums";
                                }

                                else if (v108 == 3)
                                {
                                  v109 = @"songs";
                                }

                                else
                                {
                                  if (gLogCategory_MediaControlClientMetaData <= 50 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
                                  {
                                    LogPrintF(&gLogCategory_MediaControlClientMetaData, "OSStatus _MediaControlClientNowPlayingUpdate(MediaControlClientRef, CFDictionaryRef)", 33554482, "### MC Bad shuffle mode: %lld\n", v111);
                                  }

                                  v110 = 0;
                                  v109 = 0;
                                }
                              }
                            }
                          }

                          else
                          {
                            v136 = -6727;
                            v109 = @"off";
                            v110 = 1;
                          }

                          v112 = CFDictionaryGetValue(v5, @"shuffleMode");
                          if (!v4 || v109 != v112 && (v112 ? (v113 = v110) : (v113 = 0), v113 != 1 || !CFEqual(v109, v112)))
                          {
                            CFDictionarySetValue(v69, @"shuffleMode", v109);
                            CFDictionarySetValue(v5, @"shuffleMode", v109);
                          }

                          if (a2)
                          {
                            CFDictionaryGetDouble();
                            valuePtr = v114;
                            if (!v136)
                            {
LABEL_271:
                              v115 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
                              if (v115)
                              {
                                v116 = v115;
                                v117 = CFDictionaryGetValue(v5, @"rate");
                                if (!v4 || v116 != v117 && (!v117 || !CFEqual(v116, v117)))
                                {
                                  CFDictionarySetValue(v69, @"rate", v116);
                                  CFDictionarySetValue(v5, @"rate", v116);
                                }

                                CFRelease(v116);
                                if (a2)
                                {
                                  v135 = CFDictionaryGetInt64();
                                  if (!v136)
                                  {
LABEL_283:
                                    v121 = CFNumberCreate(0, kCFNumberSInt64Type, &v135);
                                    if (v121)
                                    {
                                      v122 = v121;
                                      v123 = CFDictionaryGetValue(v5, @"uniqueID");
                                      if (!v4 || v122 != v123 && (!v123 || !CFEqual(v122, v123)))
                                      {
                                        CFDictionarySetValue(v69, @"uniqueID", v122);
                                        CFDictionarySetValue(v5, @"uniqueID", v122);
                                      }

                                      CFRelease(v122);
                                      v8 = v69;
                                      if (CFDictionaryGetCount(v69) < 1)
                                      {
                                        goto LABEL_304;
                                      }

                                      v124 = gLogCategory_MediaControlClientMetaData;
                                      if (gLogCategory_MediaControlClientMetaData <= 20)
                                      {
                                        if (gLogCategory_MediaControlClientMetaData != -1)
                                        {
                                          goto LABEL_292;
                                        }

                                        if (_LogCategory_Initialize())
                                        {
                                          v124 = gLogCategory_MediaControlClientMetaData;
                                          if (gLogCategory_MediaControlClientMetaData > 21)
                                          {
                                            v125 = 0;
LABEL_298:
                                            LogPrintF(&gLogCategory_MediaControlClientMetaData, "OSStatus _MediaControlClientNowPlayingUpdate(MediaControlClientRef, CFDictionaryRef)", 33554452, "MC meta data update %?1.64@\n", v125, v69);
                                            goto LABEL_299;
                                          }

LABEL_292:
                                          v125 = v124 != -1 || _LogCategory_Initialize() != 0;
                                          goto LABEL_298;
                                        }
                                      }

LABEL_299:
                                      v126 = MediaControlClient_SetProperty(v130, @"metaData", 0, v69);
                                      v136 = v126;
                                      if (!v126 || gLogCategory_MediaControlClientMetaData > 50)
                                      {
                                        goto LABEL_304;
                                      }

                                      if (gLogCategory_MediaControlClientMetaData == -1)
                                      {
                                        if (!_LogCategory_Initialize())
                                        {
                                          goto LABEL_304;
                                        }

                                        v126 = v136;
                                      }

                                      LogPrintF(&gLogCategory_MediaControlClientMetaData, "OSStatus _MediaControlClientNowPlayingUpdate(MediaControlClientRef, CFDictionaryRef)", 33554482, "### Meta data update failed: %#m\n", v126);
LABEL_304:
                                      v136 = 0;
                                      goto LABEL_305;
                                    }

                                    APSLogErrorAt();
                                    v129 = -6728;
                                    goto LABEL_324;
                                  }
                                }

                                else
                                {
                                  v136 = -6727;
                                }

                                v118 = CFHash(cf);
                                v119 = v118 ^ CFHash(v131);
                                v135 = v119 ^ CFHash(v132);
                                if (v29)
                                {
                                  v120 = CFHash(v29);
                                  v135 ^= v120;
                                }

                                goto LABEL_283;
                              }

                              goto LABEL_318;
                            }
                          }

                          else
                          {
                            v136 = -6727;
                          }

                          valuePtr = 0x3FF0000000000000;
                          goto LABEL_271;
                        }

LABEL_217:
                        v99 = MEMORY[0x277CBED28];
                        goto LABEL_218;
                      }

LABEL_323:
                      APSLogErrorAt();
                      v129 = -6756;
LABEL_324:
                      v136 = v129;
                      v8 = v69;
                      goto LABEL_305;
                    }
                  }

                  else
                  {
                    v87 = 0;
                  }

                  v89 = 1;
                  goto LABEL_186;
                }

LABEL_326:
                APSLogErrorAt();
                v128 = -6756;
                goto LABEL_327;
              }

LABEL_166:
              v77 = 1;
              goto LABEL_167;
            }
          }

          else
          {
            v65 = 0;
          }

          v67 = 1;
          goto LABEL_143;
        }

LABEL_123:
        v58 = 1;
        goto LABEL_124;
      }
    }

    else
    {
      v47 = 0;
    }

    v49 = 1;
    goto LABEL_105;
  }

LABEL_325:
  APSLogErrorAt();
  v127 = 4294960568;
  v136 = -6728;
LABEL_306:
  if (gLogCategory_MediaControlClientMetaData <= 90)
  {
    if (gLogCategory_MediaControlClientMetaData != -1)
    {
LABEL_308:
      LogPrintF(&gLogCategory_MediaControlClientMetaData, "OSStatus _MediaControlClientNowPlayingUpdate(MediaControlClientRef, CFDictionaryRef)", 33554522, "### MC Bad Now Playing Info: %#m %.64@\n", v127, a2);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v127 = v136;
      goto LABEL_308;
    }
  }
}

uint64_t MediaControlClient_SetProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v17 = 0;
  v8 = MediaControlClient_EnsureConnected(a1);
  if (v8)
  {
    v14 = v8;
    APSLogErrorAt();
  }

  else
  {
    v17 = 0;
    ASPrintF(&v17, "/setProperty?%@", a2);
    if (v17 && (HTTPHeader_InitRequest(), free(v17), (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) != 0))
    {
      v10 = Mutable;
      if (a3)
      {
        CFDictionarySetValue(Mutable, @"qualifier", a3);
      }

      if (a4)
      {
        CFDictionarySetValue(v10, @"value", a4);
      }

      Data = CFPropertyListCreateData(0, v10, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      CFRelease(v10);
      if (Data)
      {
        HTTPHeader_SetField(a1 + 496, "Content-Type", "application/x-apple-binary-plist");
        BytePtr = CFDataGetBytePtr(Data);
        Length = CFDataGetLength(Data);
        v14 = _MediaControlClient_DoTransaction(50, a1, a1 + 416, BytePtr, Length);
        CFRelease(Data);
      }

      else
      {
        APSLogErrorAt();
        v14 = 4294960596;
      }
    }

    else
    {
      APSLogErrorAt();
      v14 = 4294960568;
    }
  }

  v15 = *(a1 + 279600);
  if (v15)
  {
    free(v15);
    *(a1 + 279600) = 0;
  }

  if (v14 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_SetProperty(MediaControlClientRef, CFStringRef, CFTypeRef, CFTypeRef)", 60, "### Set property '%@' failed: %#m\n", a2, v14);
  }

  return v14;
}

uint64_t _MediaControlClient_EnsureConnected(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8))
  {
    return 0;
  }

  v39[0] = 0;
  v38[0] = 0;
  v37 = 0;
  v5 = *(a1 + 48);
  if (v5)
  {
    CFRetain(*(a1 + 48));
    goto LABEL_6;
  }

  v5 = AirPlayGlobalRoute_CopyInfo();
  if (v5)
  {
LABEL_6:
    if (*(a1 + 424))
    {
      __strlcpy_chk();
      __strlcpy_chk();
      v6 = 0;
      v7 = 0;
      v8 = 1;
    }

    else
    {
      CFDictionaryGetCString();
      Int64 = CFDictionaryGetInt64();
      v8 = CFDictionaryGetInt64() == 0;
      if (*(a1 + 40))
      {
        v10 = Int64 == 0;
      }

      else
      {
        v10 = 1;
      }

      v7 = v10;
      CFDictionaryGetValue(v5, @"MediaControlClientRouteInfo_TransportDevice");
      if (APTransportDeviceGetAddress() && gLogCategory_MediaControlClientAuth <= 30 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_EnsureConnected(MediaControlClientRef, MediaControlClientConnection *)", 33554462, "### MC Attempt to resolve Infra DNS failed\n");
      }

      if ((v7 & 1) == 0 && APTransportDeviceGetAddress() && gLogCategory_MediaControlClientAuth <= 30 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_EnsureConnected(MediaControlClientRef, MediaControlClientConnection *)", 33554462, "### MC Attempt to resolve P2P DNS failed\n");
      }

      __strlcpy_chk();
      __strlcpy_chk();
      v6 = &v37;
    }

    Value = CFDictionaryGetValue(v5, @"MediaControlClientRouteInfo_PublicKey");
    v12 = Value;
    if (Value)
    {
      if (CFDataGetLength(Value) == 32)
      {
        v41.location = 0;
        v41.length = 32;
        CFDataGetBytes(v12, v41, buffer);
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    if (!(v39[0] | v38[0]))
    {
      if (gLogCategory_MediaControlClientAuth <= 90 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_EnsureConnected(MediaControlClientRef, MediaControlClientConnection *)", 33554522, "### MC Connection attempt failed: Infrastructure and p2p DNS names both return empty.\n");
      }

LABEL_47:
      v34 = -6705;
LABEL_48:
      _MediaControlClient_EnsureDisconnected(a1, a2);
LABEL_149:
      CFRelease(v5);
      return v34;
    }

    if (*(a1 + 424))
    {
      if (*(a1 + 279633))
      {
        v39[0] = 0;
        if (v38[0])
        {
          goto LABEL_37;
        }
      }

      else
      {
        v38[0] = 0;
        if (v39[0])
        {
          goto LABEL_37;
        }
      }

      if (gLogCategory_MediaControlClientAuth <= 90 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_EnsureConnected(MediaControlClientRef, MediaControlClientConnection *)", 33554522, "### The interface used for MC control connection became unavailable.\n");
      }

      goto LABEL_47;
    }

LABEL_37:
    if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
    {
      v13 = "intentionally disabled";
      if (!v7)
      {
        v13 = v38;
      }

      LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_EnsureConnected(MediaControlClientRef, MediaControlClientConnection *)", 33554482, "MC Available DNS names: Infra [%s], P2P [%s]\n", v39, v13);
    }

    *(a2 + 281330) = 1;
    v14 = *(a2 + 281312);
    v15 = v12 ^ 1;
    if (*(a2 + 281312))
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      v16 = v36;
      *(a2 + 281280) = *buffer;
      *(a2 + 281296) = v16;
      *(a2 + 281312) = 1;
      v14 = 1;
    }

    if (*(a2 + 281272))
    {
      if (!v14)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v34 = gQblcfSzZBQsYCCV();
      if (v34)
      {
        goto LABEL_151;
      }

      if (!*(a2 + 281312))
      {
        goto LABEL_61;
      }
    }

    if (xOvZekdnwD6())
    {
      v17 = 0;
LABEL_87:
      if (!*(a2 + 8))
      {
        v23 = v39[0];
        if (v39[0])
        {
          v24 = v39;
        }

        else
        {
          v24 = v38;
        }

        if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
        {
          v25 = "Infra";
          if (!v23)
          {
            v25 = "P2P";
          }

          LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_EnsureConnected(MediaControlClientRef, MediaControlClientConnection *)", 33554482, "Connect over %s with %s via %s\n", v25, v6, v24);
        }

        v26 = _MediaControlClient_Connect(a1, a2, v24, v23 == 0, v39[0] == 0);
        v34 = v26;
        if (v26 && v38[0] && v39[0])
        {
          v39[0] = 0;
          if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_EnsureConnected(MediaControlClientRef, MediaControlClientConnection *)", 33554482, "Connection over Infra failed, try over P2P.\n");
          }

          v26 = _MediaControlClient_Connect(a1, a2, v38, 1, 1);
          v34 = v26;
        }

        if (v26)
        {
          goto LABEL_151;
        }
      }

      v27 = _MediaControlClient_DoPairVerify(a1, a2);
      v34 = v27;
      if (v27)
      {
        v28 = v17;
      }

      else
      {
        v28 = 1;
      }

      if ((v28 & 1) == 0)
      {
        if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_EnsureConnected(MediaControlClientRef, MediaControlClientConnection *)", 33554482, "Re-pair-setup: %s\n", v6);
        }

        if (v8 && !*(a1 + 74) && v39[0] && (v29 = _MediaControlClient_DoPairSetupUnauthenticated(a1, a2), v34 = v29, v29 != 200470))
        {
          if (v29)
          {
            goto LABEL_151;
          }
        }

        else
        {
          v34 = _MediaControlClient_DoPairSetupPIN(a1, a2);
          if (v34)
          {
            goto LABEL_48;
          }
        }

        v27 = _MediaControlClient_DoPairVerify(a1, a2);
        v34 = v27;
      }

      if (v27)
      {
        goto LABEL_148;
      }

      if (*(a2 + 8))
      {
        goto LABEL_144;
      }

      v30 = v39[0];
      if (v39[0])
      {
        v31 = v39;
      }

      else
      {
        v31 = v38;
      }

      if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
      {
        v32 = "Infra";
        if (!v30)
        {
          v32 = "P2P";
        }

        LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_EnsureConnected(MediaControlClientRef, MediaControlClientConnection *)", 33554482, "Pairing not required. Connect over %s with %s via %s\n", v32, v6, v31);
      }

      v33 = _MediaControlClient_Connect(a1, a2, v31, v30 == 0, v39[0] == 0);
      v34 = v33;
      if (v33 && v38[0] && v39[0])
      {
        v39[0] = 0;
        if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_EnsureConnected(MediaControlClientRef, MediaControlClientConnection *)", 33554482, "Connection over Infra failed, try over P2P.\n");
        }

        v33 = _MediaControlClient_Connect(a1, a2, v38, 1, 1);
        v34 = v33;
      }

      if (!v33)
      {
LABEL_144:
        v34 = 0;
        if (gLogCategory_MediaControlClientCore > 50)
        {
          goto LABEL_149;
        }

        if (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_EnsureConnected(MediaControlClientRef, MediaControlClientConnection *)", 50, "MC connected to endpoint: %s\n", v6);
        }

        goto LABEL_148;
      }

LABEL_151:
      APSLogErrorAt();
LABEL_148:
      if (!v34)
      {
        goto LABEL_149;
      }

      goto LABEL_48;
    }

LABEL_61:
    v18 = v39[0];
    if (v39[0])
    {
      v19 = v39;
    }

    else
    {
      v19 = v38;
    }

    if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
    {
      v20 = "Infra";
      if (!v18)
      {
        v20 = "P2P";
      }

      LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_EnsureConnected(MediaControlClientRef, MediaControlClientConnection *)", 33554482, "First-time pair-setup over %s with %s via %s\n", v20, v6, v19);
    }

    v21 = _MediaControlClient_Connect(a1, a2, v19, v39[0] == 0, v39[0] == 0);
    v34 = v21;
    if (v21 && v38[0] && v39[0])
    {
      v39[0] = 0;
      if (gLogCategory_MediaControlClientAuth <= 50 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_EnsureConnected(MediaControlClientRef, MediaControlClientConnection *)", 33554482, "Connection over Infra failed, try over P2P.\n");
      }

      v21 = _MediaControlClient_Connect(a1, a2, v38, 1, 1);
      v34 = v21;
    }

    if (v21)
    {
      goto LABEL_151;
    }

    if (v8 && !*(a1 + 74) && v39[0] && (v22 = _MediaControlClient_DoPairSetupUnauthenticated(a1, a2), v34 = v22, v22 != 200470))
    {
      if (v22)
      {
        goto LABEL_151;
      }
    }

    else
    {
      v34 = _MediaControlClient_DoPairSetupPIN(a1, a2);
      if (v34)
      {
        goto LABEL_48;
      }
    }

    v17 = 1;
    goto LABEL_87;
  }

  APSLogErrorAt();
  _MediaControlClient_EnsureDisconnected(a1, a2);
  return 4294960587;
}

uint64_t _MediaControlClient_EnsureAuthenticated(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a2 + 278528;
  if (*(a2 + 279216))
  {
    v3 = 1;
  }

  else
  {
    v3 = gMediaControlUseSecurity == 0;
  }

  if (v3 || !APSFeaturesHasFeature())
  {
    return 0;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v6 = APCUGetFairPlayHWInfoEx();
  if (v6)
  {
    v9 = v6;
    goto LABEL_47;
  }

  cp2g1b9ro();
  if (v7)
  {
    v9 = v7;
    goto LABEL_47;
  }

  Mib5yocT();
  if (v8)
  {
    v9 = v8;
    goto LABEL_47;
  }

  v10 = RandomBytes();
  if (v10)
  {
    v9 = v10;
    goto LABEL_47;
  }

  v11 = RandomBytes();
  if (v11)
  {
    v9 = v11;
    goto LABEL_47;
  }

  v12 = RandomBytes();
  if (v12)
  {
    v9 = v12;
    goto LABEL_47;
  }

  v13 = RandomBytes();
  if (v13)
  {
    v9 = v13;
    goto LABEL_47;
  }

  U4HBs();
  if (v14)
  {
    v9 = v14;
    goto LABEL_47;
  }

  HTTPHeader_InitRequest();
  HTTPHeader_SetField(a2 + 80, "Content-Type", "application/octet-stream");
  v9 = _MediaControlClient_DoTransaction(50, a1, a2, 0, 0);
  if (v9)
  {
    goto LABEL_47;
  }

  if (!*(v2 + 2802))
  {
LABEL_21:
    v17 = NetSocketGCM_Configure();
    if (!v17)
    {
      for (i = 0; i != 64; ++i)
      {
        *(&v21 + i) = 0;
      }

      v9 = 0;
      *(v2 + 688) = 1;
      goto LABEL_25;
    }

    v9 = v17;
    goto LABEL_47;
  }

  if (*(v2 + 2744))
  {
    v15 = PCFdAVst();
    if (v15)
    {
      v9 = v15;
    }

    else
    {
      v16 = PCFdAVst();
      if (!v16)
      {
        goto LABEL_21;
      }

      v9 = v16;
    }

LABEL_47:
    APSLogErrorAt();
    goto LABEL_25;
  }

  APSLogErrorAt();
  v9 = 4294960534;
LABEL_25:
  v19 = *(v2 + 656);
  if (v19)
  {
    free(v19);
    *(v2 + 656) = 0;
  }

  if (v9)
  {
    if (gLogCategory_MediaControlClientAuth <= 60 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus adfi74Kk(MediaControlClientRef, MediaControlClientConnection *)", 33554492, "### %s failed: %#m (%s)\n", "kRxyKAS7Ik", v9);
    }

    APSLogErrorAt();
  }

  return v9;
}

uint64_t _MediaControlClient_EnsureReverseConnected(uint64_t a1, _BYTE *a2, const char *a3)
{
  v5 = a2 + 278528;
  if (a2[281344])
  {
    v6 = 4294960573;
    goto LABEL_5;
  }

  if (a2[8])
  {
    goto LABEL_4;
  }

  v9 = _MediaControlClient_EnsureConnected(a1, a2);
  v6 = v9;
  if (v9 == -6723)
  {
    goto LABEL_5;
  }

  if (v9)
  {
LABEL_35:
    APSLogErrorAt();
    goto LABEL_5;
  }

  v10 = _MediaControlClient_EnsureAuthenticated(a1, a2);
  if (v10)
  {
    v6 = v10;
    goto LABEL_35;
  }

  HTTPHeader_InitRequest();
  HTTPHeader_SetField((a2 + 80), "Upgrade", "PTTH/1.0");
  HTTPHeader_SetField((a2 + 80), "Connection", "Upgrade");
  HTTPHeader_SetField((a2 + 80), "X-Apple-Purpose", "%s", a3);
  HTTPHeader_SetField((a2 + 80), "X-Apple-Client-Name", "%s", (a1 + 256));
  v11 = _MediaControlClient_DoTransaction(50, a1, a2, 0, 0);
  if (v11)
  {
    v6 = v11;
  }

  else
  {
    if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_EnsureReverseConnected(MediaControlClientRef, MediaControlClientReverseConnection *, const char *)", 40, "Reverse connected %s to %##a\n", *(v5 + 85), a2 + 40);
    }

    v13 = dispatch_queue_create("MediaControlClientReverse", 0);
    *(v5 + 353) = v13;
    if (v13)
    {
      dispatch_set_context(v13, a2);
      dispatch_set_finalizer_f(*(v5 + 353), _MediaControlClient_ReverseConnectionFinalizer);
      Native = NetSocket_GetNative();
      v15 = dispatch_source_create(MEMORY[0x277D85D28], Native, 0, *(v5 + 353));
      *(v5 + 355) = v15;
      if (v15)
      {
        dispatch_set_context(v15, a2);
        dispatch_source_set_event_handler_f(*(v5 + 355), _MediaControlClient_ReverseConnectionReadHandler);
        dispatch_resume(*(v5 + 355));
        if ((*(a1 + 281776) - 2206800) > 0x326A3)
        {
LABEL_4:
          v6 = 0;
          goto LABEL_5;
        }

        if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_EnsureReverseConnected(MediaControlClientRef, MediaControlClientReverseConnection *, const char *)", 40, "Reverse connection to a Stowe AppleTV, so enabling periodic pings.\n");
        }

        v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v5 + 353));
        *(v5 + 357) = v16;
        if (v16)
        {
          v17 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
          if (v17)
          {
            *v17 = a1;
            v17[1] = a2;
            dispatch_set_context(*(v5 + 357), v17);
            dispatch_source_set_event_handler_f(*(v5 + 357), _MediaControlClient_ReverseConnectionPingHandler);
            dispatch_source_set_cancel_handler_f(*(v5 + 357), _MediaControlClient_ReverseConnectionPingCancel);
            v18 = *(v5 + 357);
            v19 = dispatch_time(0, 15000000000);
            dispatch_source_set_timer(v18, v19, 0x37E11D600uLL, 0x3B9ACA00uLL);
            dispatch_resume(*(v5 + 357));
            goto LABEL_4;
          }
        }
      }

      APSLogErrorAt();
      v6 = 4294960596;
    }

    else
    {
      APSLogErrorAt();
      v6 = 4294960568;
    }
  }

LABEL_5:
  v7 = *(v5 + 82);
  if (v7)
  {
    free(v7);
    *(v5 + 82) = 0;
  }

  if (v6 == -6723)
  {
    goto LABEL_20;
  }

  if (v6)
  {
    if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_EnsureReverseConnected(MediaControlClientRef, MediaControlClientReverseConnection *, const char *)", 60, "### Reverse failed: %#m\n", v6);
    }

LABEL_20:
    _MediaControlClient_EnsureReverseDisconnected(a1, a2);
  }

  return v6;
}

uint64_t _MediaControlClient_ReverseConnectionPingHandler()
{
  v0 = MEMORY[0x28223BE20]();
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v1 = v0[1];
  memset(v8, 0, 512);
  inited = HTTPHeader_InitResponse();
  if (inited)
  {
    v7 = inited;
LABEL_17:
    result = APSLogErrorAt();
    goto LABEL_10;
  }

  HTTPHeader_SetField(v8, "Content-Length", "%zu", 0);
  HTTPHeader_SetField(v8, "X-Apple-Device-ID", "0x%llx", *(v2 + 384));
  HTTPHeader_SetField(v8, "X-Apple-Session-ID", "%#U", v2 + 398);
  ShortVersionLength = APSVersionUtilsGetShortVersionLength();
  HTTPHeader_SetField(v8, "User-Agent", "AirPlay/%.*s", ShortVersionLength, "920.10.1");
  v5 = HTTPHeader_Commit();
  if (v5)
  {
    v7 = v5;
    goto LABEL_17;
  }

  if (gLogCategory_MediaControlClientHTTPClient <= 50 && (gLogCategory_MediaControlClientHTTPClient != -1 || _LogCategory_Initialize()))
  {
    LogHTTP();
  }

  result = (*(*v1 + 32))();
  v7 = result;
  if (result != -6723 && result != 32 && result)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (gLogCategory_MediaControlClientCore <= 10)
  {
    if (gLogCategory_MediaControlClientCore != -1)
    {
      return LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_ReverseConnectionPing(MediaControlClientRef, MediaControlClientReverseConnection *)", 10, "_MediaControlClient_ReverseConnectionPing returned %d\n", v7);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_ReverseConnectionPing(MediaControlClientRef, MediaControlClientReverseConnection *)", 10, "_MediaControlClient_ReverseConnectionPing returned %d\n", v7);
    }
  }

  return result;
}

void _MediaControlClient_ReverseConnectionReadHandler(void *a1)
{
  v2 = a1 + 34816;
  v3 = NetSocket_HTTPReadHeader();
  if (v3 != -6753 && v3 != -6723)
  {
    if (!v3)
    {
      LogHTTP();
      if (!(v2[356])(a1))
      {
        return;
      }
    }

    APSLogErrorAt();
  }

  v5 = v2[355];

  dispatch_source_cancel(v5);
}

NSObject *_MediaControlClient_ReverseConnectionFinalizer(uint64_t a1)
{
  result = *(a1 + 281360);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

uint64_t _MediaControlClient_Connect(uint64_t a1, uint64_t a2, const char *a3, int a4, int a5)
{
  v9 = a2 + 278528;
  v17 = 0;
  if (*(a1 + 56))
  {
    v10 = APSConnectionInterfaceManagerSelectInterface();
    if (v10)
    {
      InterfaceInfo = v10;
      goto LABEL_26;
    }
  }

  *(v9 + 689) = a4;
  v11 = NetSocket_Create();
  if (v11)
  {
    InterfaceInfo = v11;
    goto LABEL_26;
  }

  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_Connect(MediaControlClientRef, MediaControlClientConnection *, const char *, Boolean, Boolean)", 50, "MC Connecting %-9s to %s. P2P %d\n", *(v9 + 680), a3, a4);
  }

  v16 = *a2 + 4;
  v12 = AsyncConnection_ConnectSyncEx();
  if (v12)
  {
    InterfaceInfo = v12;
    if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_Connect(MediaControlClientRef, MediaControlClientConnection *, const char *, Boolean, Boolean)", 60, "### MC Connect to %s failed: %#m\n", a3);
    }

    goto LABEL_29;
  }

  Native = NetSocket_GetNative();
  v17 = 28;
  if (getsockname(Native, (a2 + 12), &v17))
  {
    if (!*__error())
    {
      InterfaceInfo = 4294960596;
      goto LABEL_26;
    }

    InterfaceInfo = *__error();
    if (InterfaceInfo)
    {
LABEL_26:
      APSLogErrorAt();
LABEL_29:
      if (*a2)
      {
        NetSocket_Delete();
        *a2 = 0;
      }

      if (*(a1 + 56) && *(v9 + 2740))
      {
        APSConnectionInterfaceManagerReleaseInterfaceSelection();
        *(v9 + 2740) = 0;
      }

      return InterfaceInfo;
    }
  }

  v17 = 28;
  if (getpeername(Native, (a2 + 40), &v17))
  {
    if (*__error())
    {
      InterfaceInfo = *__error();
      if (!InterfaceInfo)
      {
        goto LABEL_18;
      }
    }

    else
    {
      InterfaceInfo = 4294960596;
    }

    goto LABEL_26;
  }

LABEL_18:
  InterfaceInfo = SocketGetInterfaceInfo();
  *(a2 + 8) = 1;
  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_Connect(MediaControlClientRef, MediaControlClientConnection *, const char *, Boolean, Boolean)", 50, "Connected  %-9s to %##a\n", *(v9 + 680), a2 + 40, v16);
  }

  if (InterfaceInfo)
  {
    goto LABEL_29;
  }

  return InterfaceInfo;
}

uint64_t _MediaControlClient_DoPairSetupPIN(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2 + 278528;
  v5 = &unk_27F953000;
  if (gLogCategory_MediaControlClientAuth <= 30 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_DoPairSetupPIN(MediaControlClientRef, MediaControlClientConnection *)", 33554462, "MC pair-setup PIN (%s)\n", *(v4 + 680));
  }

  Password = _MediaControlClient_GetPassword(a1);
  if (!Password || (v7 = Password, !*Password))
  {
    HTTPHeader_InitRequest();
    v16 = _MediaControlClient_DoTransaction(50, a1, a2, 0, 0);
    if (v16)
    {
      v11 = v16;
    }

    else
    {
      v11 = 200401;
    }

    goto LABEL_23;
  }

  if (!*(v4 + 2744))
  {
    v8 = gQblcfSzZBQsYCCV();
    if (v8)
    {
      v11 = v8;
      goto LABEL_38;
    }
  }

  XoN3GgjZNCvkN1T8I3();
  HardwareAddressToCString();
  v9 = CFStringCreateWithCString(0, cStr, 0x600u);
  if (!v9)
  {
    goto LABEL_35;
  }

  v10 = v9;
  v11 = rJPl3sdBfc0E3yB();
  CFRelease(v10);
  if (v11)
  {
LABEL_38:
    APSLogErrorAt();
    goto LABEL_23;
  }

  v12 = CFStringCreateWithCString(0, v7, 0x600u);
  if (!v12)
  {
LABEL_35:
    APSLogErrorAt();
    v11 = 4294960596;
    goto LABEL_23;
  }

  v13 = v12;
  v11 = GvMGlTNs();
  CFRelease(v13);
  if (v11)
  {
    goto LABEL_38;
  }

  v11 = 200401;
  v20 = 0;
  while (!SrtySZG0())
  {
    HTTPHeader_InitRequest();
    HTTPHeader_SetField(a2 + 80, "Content-Type", "application/x-apple-binary-plist");
    v14 = _MediaControlClient_DoTransaction(50, a1, a2, 0, v20);
    if (v14 == 200470)
    {
      v15 = 200401;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      v11 = v15;
      break;
    }

    v20 = *(v4 + 672);
  }

  v5 = &unk_27F953000;
LABEL_23:
  v17 = *(v4 + 656);
  if (v17)
  {
    free(v17);
    *(v4 + 656) = 0;
  }

  if (v11)
  {
    v18 = v5[402];
    if (v18 <= 60 && (v18 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_DoPairSetupPIN(MediaControlClientRef, MediaControlClientConnection *)", 33554492, "### MC pair-setup PIN failed: %#m (%s)\n", v11);
    }
  }

  return v11;
}

const char *_MediaControlClient_DoPairSetupUnauthenticated(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2 + 278528;
  if (gLogCategory_MediaControlClientAuth <= 30 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_DoPairSetupUnauthenticated(MediaControlClientRef, MediaControlClientConnection *)", 33554462, "MC pair-setup UA (%s)\n", *(v4 + 680));
  }

  if (!*(v4 + 2744) && (v5 = gQblcfSzZBQsYCCV(), v5))
  {
    v10 = v5;
  }

  else
  {
    XoN3GgjZNCvkN1T8I3();
    for (i = 0; ; i = *(v4 + 672))
    {
      v6 = h4BvW7X();
      if (v6)
      {
        v10 = v6;
        goto LABEL_11;
      }

      HTTPHeader_InitRequest();
      HTTPHeader_SetField(a2 + 80, "Content-Type", "application/octet-stream");
      v7 = _MediaControlClient_DoTransaction(50, a1, a2, v12, i);
      if (v7)
      {
        break;
      }
    }

    v10 = v7;
  }

  APSLogErrorAt();
LABEL_11:
  v8 = *(v4 + 656);
  if (v8)
  {
    free(v8);
    *(v4 + 656) = 0;
  }

  if (v10 && gLogCategory_MediaControlClientAuth <= 60 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_DoPairSetupUnauthenticated(MediaControlClientRef, MediaControlClientConnection *)", 33554492, "### MC pair-setup UA failed: %#m (%s)\n", v10);
  }

  return v10;
}

uint64_t _MediaControlClient_DoPairVerify(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2 + 278528;
  if (gLogCategory_MediaControlClientAuth <= 30 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_DoPairVerify(MediaControlClientRef, MediaControlClientConnection *)", 33554462, "MC pair-verify (%s)\n", *(v4 + 680));
  }

  if (!*(v4 + 2744) && (v5 = gQblcfSzZBQsYCCV(), v5))
  {
    v8 = v5;
    APSLogErrorAt();
  }

  else if (*(v4 + 2784))
  {
    XoN3GgjZNCvkN1T8I3();
    Dk7hjUuq();
    for (i = 0; ; i = *(v4 + 672))
    {
      v6 = VBAEFt();
      if (v6)
      {
        break;
      }

      HTTPHeader_InitRequest();
      if (*(v4 + 2802))
      {
        HTTPHeader_SetField(a2 + 80, "X-Apple-PD", "1");
      }

      if (TMIsAutomaticTimeEnabled())
      {
        Current = CFAbsoluteTimeGetCurrent();
        HTTPHeader_SetField(a2 + 80, "X-Apple-AbsoluteTime", "%lld", Current);
      }

      HTTPHeader_SetField(a2 + 80, "Content-Type", "application/octet-stream");
      v6 = _MediaControlClient_DoTransaction(50, a1, a2, v12, i);
      if (v6)
      {
        break;
      }
    }

    v8 = v6;
  }

  else
  {
    APSLogErrorAt();
    v8 = 4294960534;
  }

  v9 = *(v4 + 656);
  if (v9)
  {
    free(v9);
    *(v4 + 656) = 0;
  }

  if (v8 && gLogCategory_MediaControlClientAuth <= 60 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus _MediaControlClient_DoPairVerify(MediaControlClientRef, MediaControlClientConnection *)", 33554492, "### MC pair-verify failed: %#m (%s)\n", v8);
  }

  return v8;
}

uint64_t _MediaControlClient_ConnectWaitCallBack(uint64_t a1)
{
  if (*(a1 + 281752))
  {
    return 4294960573;
  }

  else
  {
    return 0;
  }
}

void _MediaControlClient_ConnectProgress(int a1, const char *a2, CFAbsoluteTime *a3)
{
  v4 = a3 + 105472;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      if (a3[105622] == 0.0)
      {
        a3[105622] = CFAbsoluteTimeGetCurrent();
        if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_ConnectProgress(int, const void *, void *)", 50, "Connecting to address: %##a\n", a2);
        }

        v8 = _MediaControlClient_AddTrafficRegistration(a3, 0, a2);
        if (v8)
        {
          if (gLogCategory_MediaControlClientCore <= 90)
          {
            v9 = v8;
            if (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize())
            {
              v10 = "void _MediaControlClient_ConnectProgress(int, const void *, void *)";
              v11 = v9;
              v5 = "%s: register traffic failed with error %m\n";
              v6 = 90;
              goto LABEL_34;
            }
          }
        }
      }
    }

    else if (a1 == 4 && a3[105623] == 0.0)
    {
      a3[105623] = CFAbsoluteTimeGetCurrent();
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_ConnectProgress(int, const void *, void *)", 50, "Connected  to address: %##a\n", a2);
      }

      *(v4 + 313) = ((v4[151] - v4[150]) * 1000.0);
    }
  }

  else if (a1 == 1)
  {
    if (a3[105620] == 0.0)
    {
      a3[105620] = CFAbsoluteTimeGetCurrent();
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        v10 = a2;
        v5 = "Querying SRV: %s\n";
        goto LABEL_18;
      }
    }
  }

  else if (a1 == 2 && a3[105621] == 0.0)
  {
    a3[105621] = CFAbsoluteTimeGetCurrent();
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      v10 = a2;
      v5 = "Resolving DNS: %s\n";
LABEL_18:
      v6 = 50;
LABEL_34:
      LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_ConnectProgress(int, const void *, void *)", v6, v5, v10, v11);
    }
  }
}

uint64_t _MediaControlClient_AddTrafficRegistration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  PeerMACAddress = 0;
  v9 = 0;
  v8 = 0;
  if (!a1)
  {
    APSLogErrorAt();
    return -6705;
  }

  v4 = a1 + 278528;
  if (*(a1 + 279633))
  {
    v5 = a2;
    if (*(a1 + 281760))
    {
      CFDictionaryGetHardwareAddress();
      if (*(v4 + 3232))
      {
        goto LABEL_54;
      }
    }

    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_AddTrafficRegistration(MediaControlClientRef, Boolean, sockaddr_ip *)", 50, "Could not get MAC address from endpoint info, querying it from NDP table\n");
    }

    PeerMACAddress = GetPeerMACAddress();
    if (!PeerMACAddress)
    {
LABEL_54:
      if (*(v4 + 3294))
      {
        if (*(v4 + 3295) != v5 || (v8 == *(v4 + 3288) ? (v6 = v9 == *(v4 + 3292)) : (v6 = 0), !v6))
        {
LABEL_26:
          PeerMACAddress = _MediaControlClient_RemoveTrafficRegistration(a1);
          if (PeerMACAddress)
          {
            if (gLogCategory_MediaControlClientCore <= 90 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_AddTrafficRegistration(MediaControlClientRef, Boolean, sockaddr_ip *)", 90, "%s: de-register traffic failed with error %m\n", "OSStatus _MediaControlClient_AddTrafficRegistration(MediaControlClientRef, Boolean, sockaddr_ip *)");
            }

            PeerMACAddress = 0;
          }
        }
      }

      else if (*(v4 + 3295))
      {
        goto LABEL_26;
      }

      if (!*(v4 + 3294))
      {
        PeerMACAddress = _MediaControlClient_addRegistration(&v8, 1, v5, a1 + 281800, a1 + 281808);
        if (PeerMACAddress)
        {
          if (gLogCategory_MediaControlClientCore <= 90 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_AddTrafficRegistration(MediaControlClientRef, Boolean, sockaddr_ip *)", 90, "%s: register traffic failed with error %m\n", "OSStatus _MediaControlClient_AddTrafficRegistration(MediaControlClientRef, Boolean, sockaddr_ip *)");
          }

          PeerMACAddress = 0;
        }

        *(a1 + 281816) = v8;
        *(a1 + 281820) = v9;
        *(v4 + 3294) = 1;
        *(v4 + 3295) = v5;
      }

      return PeerMACAddress;
    }

    if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_AddTrafficRegistration(MediaControlClientRef, Boolean, sockaddr_ip *)", 60, "Peer's MAC address is not available. Cannot perform traffic registration.\n");
    }
  }

  else
  {
    if (*(a1 + 281822))
    {
      _MediaControlClient_RemoveTrafficRegistration(a1);
    }

    if (!*(v4 + 3295))
    {
      PeerMACAddress = _MediaControlClient_addRegistration(&v8, 0, 1, 0, a1 + 281808);
      if (PeerMACAddress)
      {
        if (gLogCategory_MediaControlClientCore <= 90 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_AddTrafficRegistration(MediaControlClientRef, Boolean, sockaddr_ip *)", 90, "%s: register traffic failed with error %m\n", "OSStatus _MediaControlClient_AddTrafficRegistration(MediaControlClientRef, Boolean, sockaddr_ip *)");
        }

        PeerMACAddress = 0;
      }

      *(v4 + 3294) = 256;
    }
  }

  return PeerMACAddress;
}

uint64_t _MediaControlClient_addRegistration(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  APTransportGetSharedTransport();
  CMBaseObject = FigTransportGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v11 = 4294954514;
LABEL_9:
    APSLogErrorAt();
    goto LABEL_10;
  }

  v9 = v8(CMBaseObject, *MEMORY[0x277CE4F30], *MEMORY[0x277CBECE8], &cf);
  if (v9)
  {
    v11 = v9;
    goto LABEL_9;
  }

  if (a2)
  {
    v10 = APTransportTrafficRegistrarAWDLTrafficRegistrationCreate();
    if (v10)
    {
      v11 = v10;
      goto LABEL_9;
    }
  }

  if (a3)
  {
    v11 = APTransportTrafficRegistrarInfraTransactionCreate();
    if (!v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v11 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t MediaControlClient_Create(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (gMediaControlClientInitOnce != -1)
  {
    dispatch_once_f(&gMediaControlClientInitOnce, 0, _MediaControlClient_GlobalInit);
  }

  if (MediaControlClientImp_getTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&MediaControlClientImp_getTypeID_sInitOnce, &MediaControlClientImp_getTypeID_sTypeID, MediaControlClientImp_registerTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    v7 = Instance + 842496;
    v8 = (Instance + 561032);
    bzero((Instance + 16), 0xCE510uLL);
    v9 = MEMORY[0x277D85CD0];
    dispatch_retain(MEMORY[0x277D85CD0]);
    v10 = *(v6 + 16);
    if (v10)
    {
      dispatch_release(v10);
    }

    *(v6 + 16) = v9;
    *(v6 + 384) = APSGetDeviceID();
    *(v6 + 64) = a2;
    *(v6 + 40) = APSSettingsGetInt64() != 0;
    *(v6 + 72) = APSSettingsGetInt64() != 0;
    *(v6 + 73) = APSSettingsGetInt64() != 0;
    *(v6 + 74) = APSSettingsGetInt64() != 0;
    HTTPClientAuthorization_Init();
    *(v6 + 80) = 2;
    UUIDGet();
    result = 0;
    *(v6 + 279624) = "control";
    *v8 = "event";
    v8[266] = v6;
    v8[271] = _MediaControlClient_HandleEventRequest;
    *(v7 + 2432) = -1;
    *v7 = "slideshow";
    *(v7 + 2128) = v6;
    *(v7 + 2168) = _MediaControlClient_HandleSlideshowRequest;
    *a3 = v6;
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }

  return result;
}

uint64_t _MediaControlClient_HandleSlideshowRequest(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!strnicmpx())
  {
    v7 = 0xFFFFFFFFLL;
LABEL_20:
    APSLogErrorAt();
    return v7;
  }

  v16 = 0;
  v17 = 0;
  v14 = 0;
  cf = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    if (SNScanF(a1[1050], a1[1051], "/slideshows/1/assets/%&s", &v17, &v16) == 1)
    {
      v3 = CFStringCreateWithBytes(0, v17, v16, 0x8000100u, 0);
      if (!v3)
      {
LABEL_41:
        APSLogErrorAt();
        goto LABEL_42;
      }

      CFDictionarySetValue(Mutable, @"key", v3);
      CFRelease(v3);
      v4 = (*(a1[35167] + 844688))(Mutable, &cf, &v14, *(a1[35167] + 844696));
      if (v4 == -6752)
      {
        v3 = 0;
        v5 = 0;
        v6 = 204;
        goto LABEL_7;
      }

      if (!v4)
      {
        HTTPHeader_InitResponse();
        if (HTTPGetHeaderField())
        {
          BytePtr = CFDataGetBytePtr(cf);
          Length = CFDataGetLength(cf);
          v3 = 0;
          v5 = 0;
          goto LABEL_30;
        }

        v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v3 = v11;
        if (v11)
        {
          CFDictionarySetValue(v11, @"data", cf);
          if (v14)
          {
            CFDictionarySetValue(v3, @"info", v14);
          }

          Data = CFPropertyListCreateData(0, v3, kCFPropertyListBinaryFormat_v1_0, 0, 0);
          v5 = Data;
          if (!Data)
          {
LABEL_48:
            APSLogErrorAt();
            goto LABEL_49;
          }

          BytePtr = CFDataGetBytePtr(Data);
          Length = CFDataGetLength(v5);
          HTTPHeader_SetField((a1 + 1070), "Content-Type", "%s", "application/x-apple-binary-plist");
LABEL_30:
          HTTPHeader_SetField((a1 + 1070), "Content-Length", "%zu", Length);
          if (!HTTPHeader_Commit())
          {
            LogHTTP();
            v13 = *(a1 + 4188);
            v18 = a1 + 1070;
            v19 = v13;
            v20 = BytePtr;
            v21 = Length;
            v7 = (*(*a1 + 40))();
            if ((v7 & 0xFFFFFFDF) != 0 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_HandleSlideshowGetAsset(MediaControlClientReverseConnection *)", 60, "### Send asset error: %#m\n", v7);
            }

            ++*(a1[35167] + 844732);
            goto LABEL_37;
          }

          goto LABEL_48;
        }

        goto LABEL_41;
      }
    }

    APSLogErrorAt();
    v3 = 0;
    v5 = 0;
    v6 = 404;
    goto LABEL_7;
  }

  APSLogErrorAt();
  v3 = 0;
LABEL_42:
  v5 = 0;
LABEL_49:
  v6 = 500;
LABEL_7:
  v7 = _MediaControlClient_SendStatusResponse(a1, v6);
  if (v7)
  {
    APSLogErrorAt();
    if (!Mutable)
    {
LABEL_9:
      if (!v3)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (!Mutable)
  {
    goto LABEL_9;
  }

LABEL_37:
  CFRelease(Mutable);
  if (v3)
  {
LABEL_10:
    CFRelease(v3);
  }

LABEL_11:
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v7)
  {
    goto LABEL_20;
  }

  return v7;
}

uint64_t _MediaControlClient_SendStatusResponse(void *a1, uint64_t a2)
{
  HTTPHeader_InitResponse();
  HTTPHeader_SetField((a1 + 1070), "Content-Length", "0");
  v3 = HTTPHeader_Commit();
  if (v3)
  {
    v4 = v3;
    goto LABEL_5;
  }

  LogHTTP();
  v4 = (*(*a1 + 32))();
  if (v4)
  {
LABEL_5:
    APSLogErrorAt();
  }

  return v4;
}

uint64_t _MediaControlClient_HandleEventRequest(UInt8 *a1)
{
  if (*(a1 + 1068) >= 0x20000uLL)
  {
    APSLogErrorAt();
    return 4294960553;
  }

  v2 = *(a1 + 35167);
  length = *(a1 + 1068);
  v3 = (*(*a1 + 24))();
  v4 = v3;
  if (v3 == -6723)
  {
    return v4;
  }

  if (v3)
  {
    APSLogErrorAt();
    return v4;
  }

  LogHTTP();
  if (strnicmpx())
  {
    if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus _MediaControlClient_HandleEventRequest(MediaControlClientReverseConnection *)", 60, "### Bad event URL: '%.*s'\n", *(a1 + 1041), *(a1 + 1040));
    }

    v7 = 0;
    v11 = 404;
    goto LABEL_43;
  }

  v5 = CFDataCreate(0, a1 + 17040, length);
  if (v5)
  {
    v6 = v5;
    v7 = CFPropertyListCreateWithData(0, v5, 0, 0, 0);
    CFRelease(v6);
    if (v7)
    {
      v8 = CFGetTypeID(v7);
      if (v8 == CFDictionaryGetTypeID())
      {
        v9 = gLogCategory_MediaControlClientEvents;
        if (gLogCategory_MediaControlClientEvents > 30)
        {
          goto LABEL_23;
        }

        if (gLogCategory_MediaControlClientEvents == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_23;
          }

          v9 = gLogCategory_MediaControlClientEvents;
        }

        if (v9 > 20)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9 != -1 || _LogCategory_Initialize() != 0;
        }

        LogPrintF(&gLogCategory_MediaControlClientEvents, "OSStatus _MediaControlClient_HandleEventRequest(MediaControlClientReverseConnection *)", 33554462, "Event received from %##a %?@\n", a1 + 40, v10, v7);
LABEL_23:
        CFStringGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (TypedValue)
        {
          context[0] = v2;
          context[1] = CFEqual(TypedValue, @"paused");
          dispatch_sync_f(*(v2 + 16), context, _MediaControlClient_PlaybackPausedCallback);
        }

        CFStringGetTypeID();
        v13 = CFDictionaryGetTypedValue();
        if (!v13)
        {
          goto LABEL_40;
        }

        v14 = v13;
        if (CFEqual(v13, @"previous"))
        {
          if (gLogCategory_MediaControlClientEvents <= 30 && (gLogCategory_MediaControlClientEvents != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_MediaControlClientEvents, "OSStatus _MediaControlClient_HandleEventRequest(MediaControlClientReverseConnection *)", 33554462, "Posting MR previous track\n");
          }
        }

        else
        {
          if (!CFEqual(v14, @"next"))
          {
LABEL_40:
            v15 = *(v2 + 563216);
            if (v15)
            {
              v15(v2, v7, *(v2 + 563224));
            }

            v11 = 200;
            goto LABEL_43;
          }

          if (gLogCategory_MediaControlClientEvents <= 30 && (gLogCategory_MediaControlClientEvents != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_MediaControlClientEvents, "OSStatus _MediaControlClient_HandleEventRequest(MediaControlClientReverseConnection *)", 33554462, "Posting MR next track\n");
          }
        }

        MRMediaRemoteSendCommand();
        goto LABEL_40;
      }
    }

    APSLogErrorAt();
    v11 = 400;
  }

  else
  {
    APSLogErrorAt();
    v7 = 0;
    v11 = 500;
  }

LABEL_43:
  v4 = _MediaControlClient_SendStatusResponse(a1, v11);
  if (v4)
  {
    APSLogErrorAt();
    if (!v7)
    {
      return v4;
    }

    goto LABEL_45;
  }

  if (v7)
  {
LABEL_45:
    CFRelease(v7);
  }

  return v4;
}

uint64_t MediaControlClientImp_registerTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void MediaControlClient_Finalize(void *a1)
{
  _MediaControlClient_EnsureMirroringResumed(a1);
  MediaControlClient_EnsureDisconnected(a1);
  _MediaControlClient_PlaybackStopped(a1);
  v2 = a1[3];
  if (v2)
  {
    free(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  v4 = (a1 + 105606);
  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
    a1[7] = 0;
  }

  v7 = (a1 + 35225);
  HTTPClientAuthorization_Free();
  if (*v4)
  {
    free(*v4);
    *v4 = 0;
  }

  v8 = a1[105607];
  if (v8)
  {
    CFRelease(v8);
    a1[105607] = 0;
  }

  if (*v7)
  {
    CFRelease(*v7);
    *v7 = 0;
  }

  v9 = a1[35226];
  if (v9)
  {
    CFRelease(v9);
    a1[35226] = 0;
  }

  v10 = a1[2];
  if (v10)
  {
    dispatch_release(v10);
    a1[2] = 0;
  }
}

NSObject *_MediaControlClient_EnsureMirroringResumed(uint64_t a1)
{
  if (gAirPlayRouteLock)
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (*(a1 + 563232))
  {
    if (!--gAirPlayMirroringSuspendCount)
    {
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_EnsureMirroringResumed(MediaControlClientRef)", 50, "Resuming mirroring for photo/slideshow\n");
      }

      v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
      v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
      [v2 setAttribute:v3 forKey:*MEMORY[0x277D26B18] error:0];
    }

    *(a1 + 563232) = 0;
  }

  result = gAirPlayRouteLock;
  if (gAirPlayRouteLock)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

uint64_t MediaControlClient_Cancel(uint64_t a1)
{
  v2 = a1 + 563168;
  v3 = a1 + 281752;
  *(a1 + 281752) = 1;
  if (*(a1 + 416))
  {
    NetSocket_Cancel();
  }

  *v2 = 1;
  if (*(v3 + 72))
  {
    NetSocket_Cancel();
  }

  *(a1 + 844632) = 1;
  if (*(v2 + 120))
  {
    NetSocket_Cancel();
  }

  return 0;
}

void MediaControlClient_Invalidate(uint64_t a1)
{
  v2 = MEMORY[0x277D85CD0];
  dispatch_retain(MEMORY[0x277D85CD0]);
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
  }

  *(a1 + 16) = v2;
}

void MediaControlClient_SetDispatchQueue(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(a1 + 16) = v3;
}

uint64_t MediaControlClient_SetInfo(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 48);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 48) = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t MediaControlClient_SetConnectionInterfaceManager(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 56);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 56) = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t MediaControlClient_DoAuthorize(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, _BYTE *a5, size_t a6, void *a7, void *a8)
{
  v13 = a1 + 845008;
  if (gLogCategory_MediaControlClientAuth <= 30 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus MediaControlClient_DoAuthorize(MediaControlClientRef, const void *, size_t, const char *, char *, size_t, uint8_t **, size_t *)", 33554462, "Authorize for %s\n", a4);
  }

  v14 = (a1 + 279600);
  v15 = MediaControlClient_EnsureConnected(a1);
  if (*v13 == 0.0)
  {
    *v13 = CFAbsoluteTimeGetCurrent();
  }

  if (!v15)
  {
    v16 = Base64EncodeCopyEx();
    if (v16)
    {
      v15 = v16;
    }

    else
    {
      v17 = snprintf((a1 + 17456), 0x20000uLL, "%s: %s\n", "PIC-Request", 0);
      free(0);
      if (v17 - 0x20000 <= 0xFFFE0000)
      {
        goto LABEL_32;
      }

      HTTPHeader_InitRequest();
      if (a4)
      {
        HTTPHeader_SetField(a1 + 496, "X-Apple-UUID", "%s", a4);
      }

      v18 = _MediaControlClient_DoTransaction(50, a1, a1 + 416, (a1 + 17456), v17);
      if (v18)
      {
        v15 = v18;
        goto LABEL_17;
      }

      v19 = HTTPGetHeaderField();
      if (!v19)
      {
        if (a6)
        {
          *a5 = 0;
          v20 = HTTPGetHeaderField();
          if (!v20)
          {
            v15 = 0;
            *a7 = 0;
            *a8 = 0;
            goto LABEL_17;
          }

          v15 = v20;
          goto LABEL_34;
        }

LABEL_32:
        APSLogErrorAt();
        v15 = 4294960553;
        goto LABEL_17;
      }

      v15 = v19;
    }
  }

LABEL_34:
  APSLogErrorAt();
LABEL_17:
  if (*(v13 + 8) == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    *(v13 + 8) = Current;
    *(v13 + 32) = ((Current - *v13) * 1000.0);
  }

  if (*v14)
  {
    free(*v14);
    *v14 = 0;
  }

  if (v15 && gLogCategory_MediaControlClientAuth <= 60 && (gLogCategory_MediaControlClientAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientAuth, "OSStatus MediaControlClient_DoAuthorize(MediaControlClientRef, const void *, size_t, const char *, char *, size_t, uint8_t **, size_t *)", 33554492, "### Authorize for %s failed: %#m\n", a4);
  }

  return v15;
}

uint64_t MediaControlClient_DoPlayLocal(uint64_t a1, const char *a2, const __CFDictionary *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a1 + 844832;
  memset(&v41, 0, sizeof(v41));
  v37 = 0;
  v38 = 0;
  LODWORD(v40) = 0;
  v39 = 0;
  memset(&c, 0, sizeof(c));
  *(a1 + 844934) = CFDictionaryGetInt64() != 0;
  v7 = MediaControlClient_EnsureConnected(a1);
  v41.st_size = 0;
  stat(a2, &v41);
  v8 = _MediaControlClient_LogVideoStarted(a1, a3, v41.st_size);
  if (v7)
  {
    goto LABEL_60;
  }

  v9 = v8;
  if (*(v6 + 102))
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
    gMediaControlAudioClient = a1;
    dispatch_semaphore_signal(gAirPlayRouteLock);
  }

  v10 = _MediaControlClient_EnsureServerListening(a1);
  if (v10)
  {
    v7 = v10;
    goto LABEL_60;
  }

  v11 = strdup(a2);
  if (!v11)
  {
LABEL_56:
    APSLogErrorAt();
    v7 = 4294960568;
    goto LABEL_66;
  }

  v12 = v11;
  v13 = *(v6 + 16);
  if (v13)
  {
    free(v13);
  }

  *(v6 + 16) = v12;
  if (!*(a1 + 281796) && *(a1 + 429) != 2)
  {
    LocalHostName = GetLocalHostName();
    if (!LocalHostName)
    {
      snprintf(__s, 0x20uLL, ":%d", *(*v6 + 128));
      __strlcat_chk();
      goto LABEL_11;
    }

    v7 = LocalHostName;
LABEL_60:
    APSLogErrorAt();
    goto LABEL_66;
  }

  SockAddrCopy();
  SockAddrSetPort();
  v14 = SockAddrToString();
  if (v14)
  {
    v7 = v14;
    goto LABEL_60;
  }

LABEL_11:
  CC_SHA1_Init(&c);
  CC_SHA1_Update(&c, "\xD9\x1D\xC0\x69_\x1AH\v\x94\x95\xBC\xB5\x84O\xF1\x764v", 0x10u);
  v43 = 0.0;
  __s[0] = 0;
  APSSettingsGetCString();
  v15 = strchr(__s, 58);
  if (v15 && (v16 = v15, !StringToUUID()) && sscanf(v16 + 1, "%lf", &v43) == 1 && (v17 = CFAbsoluteTimeGetCurrent() - v43, v43 = v17, v17 >= 0.0) && v17 < 604800.0)
  {
    if (gLogCategory_MediaControlClientCore <= 20 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientCore, "void _GetSemiPersistentUUID(uint8_t *)", 20, "Reused host UUID %s\n");
    }
  }

  else
  {
    UUIDGet();
    Current = CFAbsoluteTimeGetCurrent();
    SNPrintF(__s, 128, "%#U:%f", data, *&Current, *&c.h0, *&c.h2, *&c.h4, *&c.Nh, *&c.data[1], *&c.data[3], *&c.data[5], *&c.data[7], *&c.data[9], *&c.data[11], *&c.data[13], *&c.data[15], v37, v38, v39, v40, *&v41.st_dev, v41.st_ino, *&v41.st_uid, *&v41.st_rdev, v41.st_atimespec.tv_sec, v41.st_atimespec.tv_nsec, v41.st_mtimespec.tv_sec, v41.st_mtimespec.tv_nsec, v41.st_ctimespec.tv_sec, v41.st_ctimespec.tv_nsec, v41.st_birthtimespec.tv_sec, v41.st_birthtimespec.tv_nsec);
    APSSettingsSetCString();
    APSSettingsSynchronize();
    if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientCore, "void _GetSemiPersistentUUID(uint8_t *)", 40, "Generated host UUID %s\n");
    }
  }

  CC_SHA1_Update(&c, data, 0x10u);
  v20 = strlen(a2);
  CC_SHA1_Update(&c, a2, v20);
  CC_SHA1_Final(__s, &c);
  v44 = *__s;
  BYTE6(v44) = __s[6] & 0xF | 0x50;
  BYTE8(v44) = __s[8] & 0x3F | 0x80;
  FileExtensionFromString = GetFileExtensionFromString();
  if (*FileExtensionFromString)
  {
    v22 = FileExtensionFromString;
  }

  else
  {
    v22 = "m4v";
  }

  if (SNPrintF(a1 + 844864, 64, "%#U.%s", &v44, v22) - 64 > 0xFFFFFFC0)
  {
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v24 = MutableCopy;
    if (MutableCopy)
    {
      LOBYTE(v43) = 0;
      GetDeviceModelString();
      CFDictionarySetCString();
      LOBYTE(v43) = 0;
      GetSystemBuildVersionString();
      CFDictionarySetCString();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      if (*(a1 + 281796))
      {
        v25 = CFDictionarySetCString();
        if (v25)
        {
          v7 = v25;
          goto LABEL_64;
        }

        if ((snprintf(__s, 0x100uLL, "/1/%s", (a1 + 844864)) - 256) > 0xFFFFFF00)
        {
          v26 = CFDictionarySetCString();
          if (v26)
          {
            v7 = v26;
LABEL_64:
            APSLogErrorAt();
            goto LABEL_65;
          }

LABEL_40:
          HasFeature = APSFeaturesHasFeature();
          v29 = MEMORY[0x277CBED28];
          if (HasFeature && *(a1 + 281688))
          {
            CFDictionarySetValue(v24, @"tlsPSKEnabled", *MEMORY[0x277CBED28]);
          }

          if (*(a1 + 281797))
          {
            CFDictionarySetValue(v24, @"videoCacheClear", *v29);
          }

          LOBYTE(v43) = 0;
          HardwareAddressToCString();
          v30 = CFDictionarySetCString();
          if (!v30)
          {
            dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
            CFDictionarySetDouble();
            dispatch_semaphore_signal(gAirPlayRouteLock);
            v31 = CFPropertyListCreateData(0, v24, kCFPropertyListBinaryFormat_v1_0, 0, 0);
            if (v31)
            {
              v32 = v31;
              HTTPHeader_InitRequest();
              HTTPHeader_SetField(a1 + 496, "Content-Type", "application/x-apple-binary-plist");
              BytePtr = CFDataGetBytePtr(v32);
              Length = CFDataGetLength(v32);
              v7 = _MediaControlClient_DoTransaction(50, a1, a1 + 416, BytePtr, Length);
              CFRelease(v32);
              if (!v7)
              {
                _MediaControlClient_PlaybackStarted(a1, v9);
                _MediaControlClientNowPlayingEnsureSetUp(a1, v24);
                CFRelease(v24);
                return v7;
              }
            }

            else
            {
              APSLogErrorAt();
              v7 = 4294960596;
            }

            goto LABEL_65;
          }

          v7 = v30;
          goto LABEL_64;
        }
      }

      else if ((snprintf(__s, 0x100uLL, "http://%s/1/%s", v46, (a1 + 844864)) - 256) > 0xFFFFFF00)
      {
        v27 = CFDictionarySetCString();
        if (v27)
        {
          v7 = v27;
          goto LABEL_64;
        }

        goto LABEL_40;
      }

      APSLogErrorAt();
      v7 = 4294960553;
LABEL_65:
      CFRelease(v24);
      goto LABEL_66;
    }

    goto LABEL_56;
  }

  APSLogErrorAt();
  v7 = 4294960553;
LABEL_66:
  if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoPlayLocal(MediaControlClientRef, const char *, CFDictionaryRef)", 60, "### AirPlay Video failed: %#m %@\n", v7, a3);
  }

  return v7;
}

uint64_t _MediaControlClient_LogVideoStarted(uint64_t a1, const __CFDictionary *a2, unint64_t a3)
{
  v6 = a1 + 844768;
  UUIDGet();
  if (*v6 == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    *v6 = Current;
    v8 = *(v6 + 248);
    if (v8 != 0.0)
    {
      *(v6 + 276) = ((Current - v8) * 1000.0);
    }
  }

  *(v6 + 168) = 0;
  *(v6 + 176) = 0;
  *(a1 + 844784) = 0u;
  *(a1 + 844800) = 0u;
  if (CFDictionaryGetInt64())
  {
    v9 = "Audio";
  }

  else
  {
    v9 = "Video";
  }

  Value = CFDictionaryGetValue(a2, @"Start-Position");
  if (!Value)
  {
    Value = CFDictionaryGetValue(a2, @"Start-Date");
    if (!Value)
    {
      Value = CFDictionaryGetValue(a2, @"Start-Estimated-Date");
    }
  }

  if (Value)
  {
    v11 = Value;
  }

  else
  {
    v11 = @"?";
  }

  v12 = *(a1 + 279633);
  v13 = MediaControlPlayParamsToStreamType(a2);
  v14 = v13;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        v38 = CFDictionaryGetValue(a2, @"uuid");
        if (gLogCategory_MediaControlClientCore > 40)
        {
          v16 = 0;
        }

        else
        {
          v16 = gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize() != 0;
        }

        v25 = CFDictionaryGetValue(a2, @"path");
        v26 = vcvtd_n_f64_u64(a3, 0x14uLL);
        if (v12)
        {
          v27 = "AWDL";
        }

        else
        {
          v27 = "WiFi";
        }

        if (gLogCategory_MediaControlClientCore > 20)
        {
          v28 = 0;
        }

        else
        {
          v28 = gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize() != 0;
        }

        LogPrintF(&gLogCategory_MediaControlClientCore, "uint32_t _MediaControlClient_LogVideoStarted(MediaControlClientRef, CFDictionaryRef, uint64_t)", 50, "AirPlay %s of local file FP %'@ (%?@), Size=%.2f MB, Start=%@, TP=%s %?@\n", v9, v38, v16, v25, *&v26, v11, v27, v28, a2);
      }

      ++*(v6 + 172);
    }

    else
    {
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        v19 = CFDictionaryGetValue(a2, @"uuid");
        if (gLogCategory_MediaControlClientCore > 40)
        {
          v20 = 0;
        }

        else
        {
          v20 = gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize() != 0;
        }

        v32 = CFDictionaryGetValue(a2, @"Content-Location");
        if (v12)
        {
          v33 = "AWDL";
        }

        else
        {
          v33 = "WiFi";
        }

        if (gLogCategory_MediaControlClientCore > 20)
        {
          v34 = 0;
        }

        else
        {
          v34 = gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize() != 0;
        }

        LogPrintF(&gLogCategory_MediaControlClientCore, "uint32_t _MediaControlClient_LogVideoStarted(MediaControlClientRef, CFDictionaryRef, uint64_t)", 50, "AirPlay %s of remote stream FP %'@ (%?@), Start=%@, TP=%s %?@\n", v9, v19, v20, v32, v11, v33, v34, a2);
      }

      ++*(v6 + 180);
    }
  }

  else if (v13)
  {
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      v17 = CFDictionaryGetValue(a2, @"uuid");
      if (gLogCategory_MediaControlClientCore > 40)
      {
        v18 = 0;
      }

      else
      {
        v18 = gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize() != 0;
      }

      v29 = CFDictionaryGetValue(a2, @"Content-Location");
      if (v12)
      {
        v30 = "AWDL";
      }

      else
      {
        v30 = "WiFi";
      }

      if (gLogCategory_MediaControlClientCore > 20)
      {
        v31 = 0;
      }

      else
      {
        v31 = gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize() != 0;
      }

      LogPrintF(&gLogCategory_MediaControlClientCore, "uint32_t _MediaControlClient_LogVideoStarted(MediaControlClientRef, CFDictionaryRef, uint64_t)", 50, "AirPlay %s of remote stream %'@ (%?@), Start=%@, TP=%s %?@\n", v9, v17, v18, v29, v11, v30, v31, a2);
    }

    ++*(v6 + 176);
  }

  else
  {
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      v37 = CFDictionaryGetValue(a2, @"uuid");
      if (gLogCategory_MediaControlClientCore > 40)
      {
        v36 = 0;
      }

      else
      {
        v15 = gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize() != 0;
        v36 = v15;
      }

      v21 = CFDictionaryGetValue(a2, @"path");
      v22 = vcvtd_n_f64_u64(a3, 0x14uLL);
      if (v12)
      {
        v23 = "AWDL";
      }

      else
      {
        v23 = "WiFi";
      }

      if (gLogCategory_MediaControlClientCore > 20)
      {
        v24 = 0;
      }

      else
      {
        v24 = gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize() != 0;
      }

      LogPrintF(&gLogCategory_MediaControlClientCore, "uint32_t _MediaControlClient_LogVideoStarted(MediaControlClientRef, CFDictionaryRef, uint64_t)", 50, "AirPlay %s of local file %'@ (%?@), Size=%.2f MB, Start=%@ TP=%s %?@\n", v9, v37, v36, v21, *&v22, v11, v23, v24, a2);
    }

    ++*(v6 + 168);
  }

  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "uint32_t _MediaControlClient_LogVideoStarted(MediaControlClientRef, CFDictionaryRef, uint64_t)", 50, "MC start summary: Bonjour=%u ms, Connect=%u ms, Info=%u ms, SAP=%u ms, Auth=%u ms, PostAuth=%u ms\n", *(v6 + 256), *(v6 + 260), *(v6 + 264), *(v6 + 268), *(v6 + 272), *(v6 + 276));
  }

  return v14;
}

uint64_t _MediaControlClient_EnsureServerListening(uint64_t a1)
{
  v2 = (a1 + 844832);
  if (*(a1 + 844840) || (v3 = dispatch_semaphore_create(1), (v2[1] = v3) != 0))
  {
    if (*v2)
    {
      return 0;
    }

    v4 = HTTPServer_Create();
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v5 = *v2;
      *(v5 + 200) = &gLogCategory_MediaControlClientHTTPServer;
      *(v5 + 208) = &gLogCategory_MediaControlClientHTTPServer;
      if (*(a1 + 279633))
      {
        *(v5 + 104) = 1;
      }

      if (!APSFeaturesHasFeature() || !*(a1 + 281688))
      {
        *(a1 + 281745) = 0;
        if (gLogCategory_MediaControlClientHTTPServer <= 30 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_EnsureServerListening(MediaControlClientRef)", 33554462, "Not enabling AirPlay Video TLS\n");
        }

        goto LABEL_20;
      }

      v6 = PCFdAVst();
      if (!v6)
      {
        *(a1 + 281745) = 1;
        if (gLogCategory_MediaControlClientHTTPServer <= 30 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_EnsureServerListening(MediaControlClientRef)", 33554462, "Enabling AirPlay Video TLS\n");
        }

LABEL_20:
        v7 = HTTPServer_Start();
        if (!v7)
        {
          if (gLogCategory_MediaControlClientHTTPServer <= 40 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_EnsureServerListening(MediaControlClientRef)", 33554472, "Listening on port %d\n", *(*v2 + 128));
          }

          return 0;
        }

        v8 = v7;
        goto LABEL_31;
      }

      v8 = v6;
    }

LABEL_31:
    APSLogErrorAt();
    goto LABEL_32;
  }

  APSLogErrorAt();
  v8 = 4294960596;
LABEL_32:
  if (*v2)
  {
    HTTPServer_Delete();
    *v2 = 0;
  }

  v10 = v2[1];
  if (v10)
  {
    dispatch_release(v10);
    v2[1] = 0;
  }

  return v8;
}

void _MediaControlClient_PlaybackStarted(uint64_t a1, int a2)
{
  if (gMediaControlForLegacyURLFlinging == 1)
  {
    if (!*(a1 + 845080))
    {
      if (gLogCategory_MediaControlClientCore <= 40 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_PlaybackStarted(MediaControlClientRef, uint32_t)", 40, "Acquiring WiFiManager\n");
      }

      v4 = WiFiManagerClientCreate();
      *(a1 + 845080) = v4;
      if (!v4 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_PlaybackStarted(MediaControlClientRef, uint32_t)", 60, "### Acquire WiFiManager failed\n");
      }
    }

    if (!*(a1 + 844932))
    {
      if (*(a1 + 64))
      {
        v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, (a1 + 64));
        *(a1 + 844932) = 1;
        if (v5)
        {
          CFRelease(v5);
        }
      }

      else
      {
        *(a1 + 844932) = 1;
      }
    }
  }

  if (_MediaControlClient_AddTrafficRegistration(a1, (a2 & 0xFFFFFFFD) == 1, a1 + 456) && gLogCategory_MediaControlClientCore <= 90 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_PlaybackStarted(MediaControlClientRef, uint32_t)", 90, "%s: register traffic failed with error %m\n", "void _MediaControlClient_PlaybackStarted(MediaControlClientRef, uint32_t)");
  }

  _MediaControlClient_PlaybackPaused(a1, 0);
}

_BYTE *_MediaControlClientNowPlayingEnsureSetUp(_BYTE *result, uint64_t a2)
{
  v2 = result;
  if (gMediaControlMetaData && (result = CFDictionaryGetInt64()) != 0)
  {
    if (!v2[844817])
    {
      _MediaControlClient_ControlNowPlaying(2u);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      v2[844817] = 1;
      if (gLogCategory_MediaControlClientMetaData <= 30 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_MediaControlClientMetaData, "OSStatus _MediaControlClientNowPlayingEnsureSetUp(MediaControlClientRef, CFDictionaryRef)", 33554462, "MC NowPlaying started\n");
      }

      CFRetain(v2);
      return MRMediaRemoteGetNowPlayingInfo();
    }
  }

  else if (v2[844817])
  {
    v2[844817] = 0;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    result = _MediaControlClient_ControlNowPlaying(0);
    if (gLogCategory_MediaControlClientMetaData <= 30)
    {
      if (gLogCategory_MediaControlClientMetaData != -1 || (result = _LogCategory_Initialize(), result))
      {

        return LogPrintF(&gLogCategory_MediaControlClientMetaData, "OSStatus _MediaControlClientNowPlayingEnsureSetUp(MediaControlClientRef, CFDictionaryRef)", 33554462, "MC NowPlaying stopped (non-audio play)\n");
      }
    }
  }

  return result;
}

uint64_t _MediaControlClient_ProcessRequest(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 96);
  v3 = *(a1 + 8400);
  v4 = *(a1 + 8408);
  if (gLogCategory_MediaControlClientHTTPServer <= 11 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_ProcessRequest(HTTPServerConnectionRef)", 33554443, "AirPlay Video request: %.*s %.*s\n", *(a1 + 8384), *(a1 + 8376), v4, v3);
  }

  v5 = v2 + 105472;
  if (strnicmpx())
  {
    if (gLogCategory_MediaControlClientHTTPServer <= 50 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_ProcessRequest(HTTPServerConnectionRef)", 33554482, "### Bad method '%.*s' for URL: '%.*s'\n", *(a1 + 8384), *(a1 + 8376), v4, v3);
    }

    v19 = 0;
    TypedValue = 0;
    goto LABEL_43;
  }

  v23 = 0;
  if (!HTTPServer_GetNextURLSegment() || strnicmpx())
  {
    if (gLogCategory_MediaControlClientHTTPServer <= 50 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_ProcessRequest(HTTPServerConnectionRef)", 33554482, "### Bad session ID in URL: '%.*s'\n");
    }

    goto LABEL_77;
  }

  if (!HTTPServer_GetNextURLSegment() || *(a1 + 8528) != *(a1 + 8536))
  {
    if (gLogCategory_MediaControlClientHTTPServer <= 50 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_ProcessRequest(HTTPServerConnectionRef)", 33554482, "### Bad item ID in URL: '%.*s'\n");
    }

LABEL_77:
    v19 = 0;
    TypedValue = 0;
    goto LABEL_43;
  }

  v6 = v2[105605];
  if (!v6)
  {
    if (gLogCategory_MediaControlClientHTTPServer <= 50 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_ProcessRequest(HTTPServerConnectionRef)", 33554482, "### No local lock for URL: '%.*s'\n", v4, v3);
    }

    v19 = 0;
    TypedValue = 0;
    goto LABEL_43;
  }

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if (strnicmpx())
  {
    if (v2[105607])
    {
      v7 = 0;
      v8 = memrchr();
      if (v8)
      {
        v7 = v8;
        v23 = v8;
      }

      v9 = CFStringCreateWithBytes(0, 0, v7, 0x8000100u, 0);
      if (!v9)
      {
        if (gLogCategory_MediaControlClientHTTPServer <= 50 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_ProcessRequest(HTTPServerConnectionRef)", 33554482, "### Bad UUID in URL: '%.*s'\n");
        }

        goto LABEL_42;
      }

      v10 = v9;
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      CFRelease(v10);
      if (TypedValue)
      {
        CFRetain(TypedValue);
        goto LABEL_20;
      }
    }

LABEL_23:
    if (gLogCategory_MediaControlClientHTTPServer <= 50 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_ProcessRequest(HTTPServerConnectionRef)", 33554482, "### URL not found: '%.*s'\n");
    }

LABEL_42:
    TypedValue = 0;
    v19 = 1;
    goto LABEL_43;
  }

  v12 = v2[105606];
  if (!v12)
  {
    if (gLogCategory_MediaControlClientHTTPServer <= 50 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_ProcessRequest(HTTPServerConnectionRef)", 33554482, "### No local path for URL: '%.*s'\n", v4, v3);
    }

    TypedValue = 0;
    v19 = 1;
    goto LABEL_43;
  }

  TypedValue = CFStringCreateWithCString(0, v12, 0x8000100u);
  if (!TypedValue)
  {
    goto LABEL_23;
  }

LABEL_20:
  dispatch_semaphore_signal(v5[133]);
  v13 = APSHTTPOpenLocalFile();
  v24 = v13;
  if (v13)
  {
    if (gLogCategory_MediaControlClientHTTPServer <= 50)
    {
      if (gLogCategory_MediaControlClientHTTPServer == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_68;
        }

        v13 = v24;
      }

      LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_ProcessRequest(HTTPServerConnectionRef)", 33554482, "### Open '%@' for serving '%.*s' failed: %#m\n", TypedValue, v4, v3, v13);
    }

LABEL_68:
    v19 = 0;
    goto LABEL_43;
  }

  v14 = HTTPGetHeaderField();
  if (v14)
  {
    HTTPServer_InitResponse();
LABEL_28:
    HTTPHeader_SetField(a1 + 139720, "Accept-Ranges", "bytes");
    HTTPHeader_SetField(a1 + 139720, "Content-Type", "application/octet-stream");
    HTTPHeader_SetField(a1 + 139720, "Content-Length", "%lld", 0);
    v15 = HTTPMakeDateString();
    HTTPHeader_SetField(a1 + 139720, "Last-Modified", "%s", v15);
    if (!HTTPHeader_Commit())
    {
      LogHTTP();
      if (gLogCategory_MediaControlClientHTTPServer <= 40 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
      {
        v16 = "(full)";
        if (!v14)
        {
          v16 = "(byte range)";
        }

        LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_ProcessRequest(HTTPServerConnectionRef)", 33554472, "Starting request for '%.*s' Range %lld-%lld/%lld %s\n", v4, v3, 0, -1, 0, v16);
      }

      Current = CFAbsoluteTimeGetCurrent();
      v18 = (*(*(a1 + 24) + 48))(*(a1 + 24));
      v19 = 0;
      v25 = v18;
      if (v18 == -6723)
      {
        goto LABEL_48;
      }

      v20 = v18;
      if (!v18 || v18 == 32)
      {
        goto LABEL_48;
      }

      if (gLogCategory_MediaControlClientHTTPServer > 60)
      {
        goto LABEL_47;
      }

      if (gLogCategory_MediaControlClientHTTPServer == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_47;
        }

        v20 = v25;
      }

      v21 = CFAbsoluteTimeGetCurrent();
      LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_ProcessRequest(HTTPServerConnectionRef)", 33554492, "### Stream file to %##a error: %#m (%.2f seconds)\n", a1 + 60, v20, v21 - Current);
LABEL_47:
      v19 = 0;
      goto LABEL_48;
    }

    APSLogErrorAt();
    goto LABEL_68;
  }

  if (!APSHTTPParseByteRangeRequest())
  {
    HTTPServer_InitResponse();
    HTTPHeader_SetField(a1 + 139720, "Content-Range", "bytes %lld-%lld/%lld", 0, -1, 0);
    goto LABEL_28;
  }

  if (gLogCategory_MediaControlClientHTTPServer <= 50 && (gLogCategory_MediaControlClientHTTPServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientHTTPServer, "OSStatus _MediaControlClient_ProcessRequest(HTTPServerConnectionRef)", 33554482, "### Bad range request '%.*s' for serving '%.*s' failed: %#m\n", v23, 0, v4, v3);
  }

  v19 = 0;
LABEL_43:
  v25 = HTTPServer_SendStatusResponse();
  if (v25)
  {
    APSLogErrorAt();
    if (TypedValue)
    {
      goto LABEL_48;
    }
  }

  else if (TypedValue)
  {
LABEL_48:
    CFRelease(TypedValue);
  }

  if (v19)
  {
    dispatch_semaphore_signal(v5[133]);
  }

  return v25;
}

uint64_t _MediaControlClient_ConnectionInit(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 8) + 96) + 281745))
  {
    return 0;
  }

  __s[0] = 0;
  SockAddrToString();
  strlen(__s);
  v1 = NetSocketTLS_Configure();
  if (v1)
  {
    APSLogErrorAt();
  }

  return v1;
}

uint64_t MediaControlPlayParamsToStreamType(const __CFDictionary *a1)
{
  if (CFDictionaryGetValue(a1, @"Content-Location"))
  {
    Value = CFDictionaryGetValue(a1, @"buyParams");
    goto LABEL_3;
  }

  v4 = CFDictionaryGetValue(a1, @"path");
  Value = CFDictionaryGetValue(a1, @"buyParams");
  if (!v4)
  {
LABEL_3:
    v3 = 3;
    if (!Value)
    {
      if (CFDictionaryGetValue(a1, @"PD-Info"))
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    return v3;
  }

  if (Value || CFDictionaryGetValue(a1, @"PD-Info"))
  {
    return 2;
  }

  else
  {
    return 2 * (CFDictionaryGetValue(a1, @"Play-Info") != 0);
  }
}

uint64_t MediaControlClient_DoPlayRemote(_BYTE *a1, const __CFDictionary *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a1 + 844934;
  a1[844934] = CFDictionaryGetInt64() != 0;
  v5 = MediaControlClient_EnsureConnected(a1);
  v6 = _MediaControlClient_LogVideoStarted(a1, a2, 0);
  if (v5)
  {
    APSLogErrorAt();
    goto LABEL_29;
  }

  v7 = v6;
  v8 = (a1 + 279600);
  if (*v4)
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
    gMediaControlAudioClient = a1;
    dispatch_semaphore_signal(gAirPlayRouteLock);
  }

  if (APSFeaturesHasFeature())
  {
    v9 = MediaControlClient_EnsureConnected(a1);
    if (v9)
    {
      v5 = v9;
      APSLogErrorAt();
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a2);
      if (MutableCopy)
      {
        v11 = MutableCopy;
        if (a1[281797])
        {
          CFDictionarySetValue(MutableCopy, @"videoCacheClear", *MEMORY[0x277CBED28]);
        }

        dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
        CFDictionarySetDouble();
        dispatch_semaphore_signal(gAirPlayRouteLock);
        GetDeviceModelString();
        CFDictionarySetCString();
        GetSystemBuildVersionString();
        CFDictionarySetCString();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        LOBYTE(v28) = 0;
        HardwareAddressToCString();
        CFDictionarySetCString();
        Data = CFPropertyListCreateData(0, v11, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        if (Data)
        {
          v13 = Data;
          HTTPHeader_InitRequest();
          LOBYTE(v28) = 0;
          FractionalDateString = MakeFractionalDateString();
          HTTPHeader_SetField((a1 + 496), "X-Transmit-Date", "%s", FractionalDateString);
          HTTPHeader_SetField((a1 + 496), "Content-Type", "application/x-apple-binary-plist");
          BytePtr = CFDataGetBytePtr(v13);
          Length = CFDataGetLength(v13);
          v5 = _MediaControlClient_DoTransaction(50, a1, (a1 + 416), BytePtr, Length);
          CFRelease(v13);
        }

        else
        {
          APSLogErrorAt();
          v5 = 4294960596;
        }

        CFRelease(v11);
      }

      else
      {
        APSLogErrorAt();
        v5 = 4294960568;
      }
    }

    if (*v8)
    {
      free(*v8);
      *v8 = 0;
    }

    goto LABEL_25;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  valuePtr = 0.0;
  DataBuffer_Init();
  v17 = MediaControlClient_EnsureConnected(a1);
  if (v17)
  {
    v5 = v17;
LABEL_44:
    APSLogErrorAt();
    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(a2, @"Content-Location");
  if (!Value)
  {
    goto LABEL_41;
  }

  v19 = Value;
  v20 = CFGetTypeID(Value);
  if (v20 != CFStringGetTypeID())
  {
    goto LABEL_42;
  }

  v21 = DataBuffer_AppendF(&v28, "%s: %@\n", "Content-Location", v19);
  if (v21)
  {
    v5 = v21;
    goto LABEL_44;
  }

  v22 = CFDictionaryGetValue(a2, @"Start-Position");
  if (!v22)
  {
LABEL_41:
    APSLogErrorAt();
    v5 = 4294960591;
    goto LABEL_22;
  }

  v23 = v22;
  v24 = CFGetTypeID(v22);
  if (v24 != CFNumberGetTypeID())
  {
LABEL_42:
    APSLogErrorAt();
    v5 = 4294960540;
    goto LABEL_22;
  }

  CFNumberGetValue(v23, kCFNumberDoubleType, &valuePtr);
  v25 = DataBuffer_AppendF(&v28, "%s: %f\n", "Start-Position", valuePtr);
  if (v25)
  {
    v5 = v25;
    goto LABEL_44;
  }

  HTTPHeader_InitRequest();
  v5 = _MediaControlClient_DoTransaction(50, a1, (a1 + 416), *(&v29 + 1), v30);
LABEL_22:
  if (*v8)
  {
    free(*v8);
    *v8 = 0;
  }

  DataBuffer_Free();
LABEL_25:
  if (!v5)
  {
    _MediaControlClient_PlaybackStarted(a1, v7);
    _MediaControlClientNowPlayingEnsureSetUp(a1, a2);
    return v5;
  }

LABEL_29:
  if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoPlayRemote(MediaControlClientRef, CFDictionaryRef)", 60, "### AirPlay Video failed: %#m %@\n", v5, a2);
  }

  return v5;
}

uint64_t MediaControlClient_DoInsertPlaylistItem(uint64_t a1, const __CFDictionary *a2, const void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a1 + 844832;
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v8 = MediaControlPlayParamsToStreamType(a2);
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        Value = CFDictionaryGetValue(a2, @"uuid");
        if (gLogCategory_MediaControlClientCore > 40)
        {
          v18 = 0;
        }

        else
        {
          v18 = gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize() != 0;
        }

        v23 = CFDictionaryGetValue(a2, @"Content-Location");
        if (gLogCategory_MediaControlClientCore > 20)
        {
          v24 = 0;
        }

        else
        {
          v24 = gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize() != 0;
        }

        LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoInsertPlaylistItem(MediaControlClientRef, CFDictionaryRef, CFDictionaryRef)", 50, "AirPlay playlist insert of remote stream FP %'@ (%?@) %?@\n", Value, v18, v23, v24, a2);
      }

      ++*(v6 + 116);
      goto LABEL_66;
    }

    if (gLogCategory_MediaControlClientCore > 50 || gLogCategory_MediaControlClientCore == -1 && !_LogCategory_Initialize())
    {
LABEL_49:
      ++*(v6 + 108);
      goto LABEL_66;
    }

    v12 = CFDictionaryGetValue(a2, @"uuid");
    v13 = gLogCategory_MediaControlClientCore;
    if (gLogCategory_MediaControlClientCore > 40)
    {
      v14 = 0;
    }

    else
    {
      if (gLogCategory_MediaControlClientCore == -1)
      {
        v14 = _LogCategory_Initialize() != 0;
        v13 = gLogCategory_MediaControlClientCore;
      }

      else
      {
        v14 = 1;
      }

      if (v13 <= 20)
      {
        v20 = v13 != -1 || _LogCategory_Initialize() != 0;
        goto LABEL_48;
      }
    }

    v20 = 0;
LABEL_48:
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoInsertPlaylistItem(MediaControlClientRef, CFDictionaryRef, CFDictionaryRef)", 50, "AirPlay playlist insert of local file FP %'@ (%?@) %?@\n", v12, v14, TypedValue, v20, a2);
    goto LABEL_49;
  }

  if (!v8)
  {
    if (gLogCategory_MediaControlClientCore > 50 || gLogCategory_MediaControlClientCore == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_42;
    }

    v9 = CFDictionaryGetValue(a2, @"uuid");
    v10 = gLogCategory_MediaControlClientCore;
    if (gLogCategory_MediaControlClientCore > 40)
    {
      v11 = 0;
    }

    else
    {
      if (gLogCategory_MediaControlClientCore == -1)
      {
        v11 = _LogCategory_Initialize() != 0;
        v10 = gLogCategory_MediaControlClientCore;
      }

      else
      {
        v11 = 1;
      }

      if (v10 <= 20)
      {
        v19 = v10 != -1 || _LogCategory_Initialize() != 0;
        goto LABEL_41;
      }
    }

    v19 = 0;
LABEL_41:
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoInsertPlaylistItem(MediaControlClientRef, CFDictionaryRef, CFDictionaryRef)", 50, "AirPlay playlist insert of local file %'@ (%?@) %?@\n", v9, v11, TypedValue, v19, a2);
LABEL_42:
    ++*(v6 + 104);
    goto LABEL_66;
  }

  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    v15 = CFDictionaryGetValue(a2, @"uuid");
    if (gLogCategory_MediaControlClientCore > 40)
    {
      v16 = 0;
    }

    else
    {
      v16 = gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize() != 0;
    }

    v21 = CFDictionaryGetValue(a2, @"Content-Location");
    if (gLogCategory_MediaControlClientCore > 20)
    {
      v22 = 0;
    }

    else
    {
      v22 = gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize() != 0;
    }

    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoInsertPlaylistItem(MediaControlClientRef, CFDictionaryRef, CFDictionaryRef)", 50, "AirPlay playlist insert of remote stream %'@ (%?@) %?@\n", v15, v16, v21, v22, a2);
  }

  ++*(v6 + 112);
LABEL_66:
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a2);
  if (!MutableCopy)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v26 = MutableCopy;
  CFDictionarySetInt64();
  if (!TypedValue)
  {
    goto LABEL_82;
  }

  buffer[0] = 0;
  CFStringGetCString(TypedValue, buffer, 1025, 0x8000100u);
  CFDictionaryRemoveValue(v26, @"path");
  if (APSFeaturesHasFeature() && *(a1 + 281688))
  {
    CFDictionarySetValue(v26, @"tlsPSKEnabled", *MEMORY[0x277CBED28]);
  }

  v27 = _MediaControlClient_EnsureServerListening(a1);
  if (v27)
  {
    v38 = v27;
LABEL_100:
    APSLogErrorAt();
    goto LABEL_90;
  }

  SockAddrCopy();
  SockAddrSetPort();
  v28 = SockAddrToString();
  if (v28)
  {
    v38 = v28;
    goto LABEL_100;
  }

  v29 = CFDictionarySetCString();
  if (v29)
  {
    v38 = v29;
    goto LABEL_100;
  }

  v30 = CFDictionaryGetValue(v26, @"uuid");
  if (!v30)
  {
    APSLogErrorAt();
    v38 = 4294960588;
    goto LABEL_90;
  }

  v31 = v30;
  FileExtensionFromString = GetFileExtensionFromString();
  if (*FileExtensionFromString)
  {
    v33 = FileExtensionFromString;
  }

  else
  {
    v33 = "m4v";
  }

  SNPrintF(v40, 128, "/1/%@.%s", v31, v33);
  CFDictionarySetCString();
  v34 = *(v6 + 8);
  if (!v34)
  {
    APSLogErrorAt();
    v38 = 4294960534;
    goto LABEL_90;
  }

  dispatch_semaphore_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v6 + 24) || (v35 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*(v6 + 24) = v35) != 0))
  {
    CFDictionarySetCString();
    dispatch_semaphore_signal(*(v6 + 8));
LABEL_82:
    if (gLogCategory_MediaControlClientCore <= 19 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoInsertPlaylistItem(MediaControlClientRef, CFDictionaryRef, CFDictionaryRef)", 19, "AirPlay Video playlist mappings:\n%@\n", *(v6 + 24));
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v37 = Mutable;
      CFDictionarySetValue(Mutable, @"item", v26);
      if (a3)
      {
        CFDictionarySetValue(v37, @"afterItem", a3);
      }

      v38 = MediaControlClient_DoAction(a1, @"playlistInsert", v37, 0, 0);
      CFRelease(v37);
      goto LABEL_90;
    }

    APSLogErrorAt();
    goto LABEL_96;
  }

  APSLogErrorAt();
  dispatch_semaphore_signal(*(v6 + 8));
LABEL_96:
  v38 = 4294960568;
LABEL_90:
  CFRelease(v26);
  return v38;
}

uint64_t MediaControlClient_DoAction(uint64_t a1, const void *a2, const void *a3, _DWORD *a4, void *a5)
{
  v10 = a1 + 278528;
  v11 = MediaControlClient_EnsureConnected(a1);
  if (v11)
  {
    v17 = v11;
    APSLogErrorAt();
    goto LABEL_31;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_34;
  }

  v13 = Mutable;
  CFDictionarySetValue(Mutable, @"type", a2);
  if (a3)
  {
    CFDictionarySetValue(v13, @"params", a3);
  }

  Data = CFPropertyListCreateData(0, v13, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  CFRelease(v13);
  if (!Data)
  {
    APSLogErrorAt();
    v20 = 0;
    v17 = 4294960596;
    goto LABEL_20;
  }

  HTTPHeader_InitRequest();
  HTTPHeader_SetField(a1 + 496, "Content-Type", "application/x-apple-binary-plist");
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  v17 = _MediaControlClient_DoTransaction(50, a1, a1 + 416, BytePtr, Length);
  CFRelease(Data);
  if (v17)
  {
LABEL_31:
    v20 = 0;
    goto LABEL_20;
  }

  v18 = CFDataCreate(0, *(v10 + 1080), *(v10 + 1088));
  if (!v18)
  {
LABEL_34:
    APSLogErrorAt();
    v20 = 0;
    v17 = 4294960568;
    goto LABEL_20;
  }

  v19 = v18;
  v20 = CFPropertyListCreateWithData(0, v18, 0, 0, 0);
  CFRelease(v19);
  if (!v20)
  {
    APSLogErrorAt();
    v17 = 4294960579;
    goto LABEL_20;
  }

  v21 = CFGetTypeID(v20);
  if (v21 != CFDictionaryGetTypeID())
  {
    goto LABEL_36;
  }

  if (!a4)
  {
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(v20, @"errorCode");
  if (!Value)
  {
    *a4 = 0;
    if (a5)
    {
      goto LABEL_15;
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  v23 = Value;
  v24 = CFGetTypeID(Value);
  if (v24 != CFNumberGetTypeID())
  {
LABEL_36:
    APSLogErrorAt();
    v17 = 4294960540;
    goto LABEL_20;
  }

  CFNumberGetValue(v23, kCFNumberSInt32Type, a4);
LABEL_14:
  if (!a5)
  {
    goto LABEL_19;
  }

LABEL_15:
  v25 = CFDictionaryGetValue(v20, @"params");
  v26 = v25;
  if (v25)
  {
    CFRetain(v25);
  }

  v17 = 0;
  *a5 = v26;
LABEL_20:
  v27 = *(v10 + 1072);
  if (v27)
  {
    free(v27);
    *(v10 + 1072) = 0;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v17 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoAction(MediaControlClientRef, CFStringRef, CFTypeRef, OSStatus *, CFTypeRef *)", 60, "### Action '%@' failed: %#m\n", a2, v17);
  }

  return v17;
}

uint64_t MediaControlClient_DoRemovePlaylistItem(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"uuid");
  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoRemovePlaylistItem(MediaControlClientRef, CFDictionaryRef)", 50, "AirPlay playlist remove %@\n", Value);
  }

  if (Value)
  {
    v5 = *(a1 + 844840);
    if (v5)
    {
      dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    }

    v6 = *(a1 + 844856);
    if (v6)
    {
      CFDictionaryRemoveValue(v6, Value);
    }

    v7 = *(a1 + 844840);
    if (v7)
    {
      dispatch_semaphore_signal(v7);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v9 = Mutable;
      CFDictionarySetValue(Mutable, @"item", theDict);
      v10 = MediaControlClient_DoAction(a1, @"playlistRemove", v9, 0, 0);
      CFRelease(v9);
      return v10;
    }

    else
    {
      APSLogErrorAt();
      return 4294960568;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960588;
  }
}

uint64_t MediaControlClient_DoStop(uint64_t a1)
{
  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoStop(MediaControlClientRef)", 50, "Stop request\n");
  }

  _MediaControlClientNowPlayingEnsureTornDown(a1);
  _MediaControlClient_LogPhotoEnded(a1);
  _MediaControlClient_LogSlideshowEnded(a1);
  _MediaControlClient_LogVideoEnded(a1);
  if (*(a1 + 424))
  {
    HTTPHeader_InitRequest();
    v2 = _MediaControlClient_DoTransaction(50, a1, a1 + 416, 0, 0);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 279600);
  if (v3)
  {
    free(v3);
    *(a1 + 279600) = 0;
  }

  _MediaControlClient_EnsureMirroringResumed(a1);
  _MediaControlClient_PlaybackStopped(a1);
  if (v2 != -6723 && v2 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoStop(MediaControlClientRef)", 60, "### Remote stop failed: %#m\n", v2);
  }

  return v2;
}

uint64_t MediaControlClient_CopyPlaybackInfo(uint64_t a1, __CFDictionary **a2)
{
  v4 = a1 + 279600;
  v32 = MediaControlClient_EnsureConnected(a1);
  if (v32)
  {
    APSLogErrorAt();
    goto LABEL_42;
  }

  if (!*(a1 + 844928))
  {
    goto LABEL_36;
  }

  HTTPHeader_InitRequest();
  v5 = _MediaControlClient_DoTransaction(10, a1, a1 + 416, 0, 0);
  v32 = v5;
  if (v5 == 200404)
  {
    *(a1 + 844928) = 0;
LABEL_36:
    LODWORD(valuePtr.tv_sec) = 0;
    LODWORD(v28) = 0;
    v32 = MediaControlClient_DoScrubGet(a1, &valuePtr, &v28);
    if (v32)
    {
LABEL_42:
      Mutable = 0;
      goto LABEL_43;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v22 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      if (v22)
      {
        v23 = v22;
        CFDictionarySetValue(Mutable, @"position", v22);
        CFRelease(v23);
        v24 = CFNumberCreate(0, kCFNumberFloatType, &v28);
        if (v24)
        {
          v25 = v24;
          CFDictionarySetValue(Mutable, @"duration", v24);
          CFRelease(v25);
LABEL_41:
          *a2 = Mutable;
          v32 = 0;
          goto LABEL_42;
        }
      }
    }

    APSLogErrorAt();
    goto LABEL_50;
  }

  Mutable = 0;
  if (v5)
  {
    goto LABEL_43;
  }

  v7 = CFDataCreate(0, *(v4 + 8), *(v4 + 16));
  if (!v7)
  {
    APSLogErrorAt();
    Mutable = 0;
LABEL_50:
    v27 = -6728;
    goto LABEL_51;
  }

  v8 = v7;
  Mutable = CFPropertyListCreateWithData(0, v7, 1uLL, 0, 0);
  CFRelease(v8);
  if (Mutable)
  {
    v9 = CFGetTypeID(Mutable);
    if (v9 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(Mutable, @"estimatedDate");
      if (!Value)
      {
LABEL_11:
        Int64 = CFDictionaryGetInt64();
        if (!v32)
        {
          *(a1 + 844784) = Int64;
        }

        v13 = CFDictionaryGetInt64();
        if (!v32)
        {
          *(a1 + 844788) = v13;
        }

        CFDictionaryGetDouble();
        if (!v32 && v14 > 0.0)
        {
          *(a1 + 844792) = v14;
        }

        CFDictionaryGetDouble();
        if (!v32 && v15 > 0.0)
        {
          *(a1 + 844800) = v15;
        }

        CFDictionaryGetDouble();
        if (!v32 && v16 > 0.0)
        {
          *(a1 + 844808) = v16;
        }

        CFDictionaryGetTypeID();
        if (CFDictionaryGetTypedValue())
        {
          CFDictionaryGetDouble();
          if (!v32)
          {
            *(a1 + 845048) = (v17 * 1000.0);
          }

          CFDictionaryGetDouble();
          if (!v32)
          {
            *(a1 + 845060) = (v18 * 1000.0);
          }

          CFDictionaryGetDouble();
          if (!v32)
          {
            *(a1 + 845056) = (v19 * 1000.0);
          }

          CFDictionaryGetDouble();
          if (!v32)
          {
            *(a1 + 845052) = (v20 * 1000.0);
          }

          CFDictionaryGetDouble();
          if (!v32)
          {
            *(a1 + 845064) = (v21 * 1000.0);
          }
        }

        goto LABEL_41;
      }

      v11 = CFGetTypeID(Value);
      if (v11 == CFDateGetTypeID())
      {
        v30 = 0;
        v31 = 0;
        HTTPGetHeaderField();
        goto LABEL_11;
      }
    }

    APSLogErrorAt();
    v27 = -6756;
  }

  else
  {
    APSLogErrorAt();
    v27 = -6717;
  }

LABEL_51:
  v32 = v27;
LABEL_43:
  if (*v4)
  {
    free(*v4);
    *v4 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v32;
}

uint64_t MediaControlClient_DoScrubGet(uint64_t a1, float *a2, float *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a1 + 278528;
  v7 = MediaControlClient_EnsureConnected(a1);
  if (v7)
  {
    v11 = v7;
    APSLogErrorAt();
  }

  else
  {
    HTTPHeader_InitRequest();
    v8 = _MediaControlClient_DoTransaction(10, a1, a1 + 416, 0, 0);
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      while (ParseLine())
      {
        __memcpy_chk();
        v14[0] = 0;
        if (sscanf(v14, "duration: %f", a3) == 1)
        {
          v9 = 1;
        }

        else if (sscanf(v14, "position: %f", a2) == 1)
        {
          v10 = 1;
        }
      }

      if (v10 == 0 || (v9 & 1) == 0)
      {
        v11 = 4294960569;
      }

      else
      {
        if (gLogCategory_MediaControlClientCore <= 10 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoScrubGet(MediaControlClientRef, float *, float *)", 10, "Current position %f of %f\n", *a2, *a3);
        }

        v11 = 0;
      }
    }
  }

  v12 = *(v6 + 1072);
  if (v12)
  {
    free(v12);
    *(v6 + 1072) = 0;
  }

  return v11;
}

uint64_t MediaControlClient_DoScrubSet(uint64_t a1, const __CFData *a2, float a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = gLogCategory_MediaControlClientCore;
  if (gLogCategory_MediaControlClientCore <= 50)
  {
    if (gLogCategory_MediaControlClientCore == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v6 = gLogCategory_MediaControlClientCore;
    }

    if (v6 > 20)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 != -1 || _LogCategory_Initialize() != 0;
    }

    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoScrubSet(MediaControlClientRef, float, CFDictionaryRef)", 50, "Set position to %f %?@\n", a3, v7, a2);
  }

LABEL_11:
  v8 = MediaControlClient_EnsureConnected(a1);
  if (v8)
  {
    v16 = v8;
    APSLogErrorAt();
    a2 = 0;
    goto LABEL_22;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 281776) < 0x1B90A4u)
  {
    a2 = 0;
LABEL_17:
    BytePtr = 0;
    Length = 0;
    goto LABEL_18;
  }

  Data = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  a2 = Data;
  if (!Data)
  {
    APSLogErrorAt();
    v16 = 4294960596;
    goto LABEL_22;
  }

  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(a2);
LABEL_18:
  snprintf(__str, 0x80uLL, "/scrub?position=%f", a3);
  HTTPHeader_InitRequest();
  if (Length)
  {
    HTTPHeader_SetField(a1 + 496, "Content-Type", "application/x-apple-binary-plist");
    HTTPHeader_SetField(a1 + 496, "Content-Length", "%zu", Length);
    v12 = a1 + 416;
    v13 = a1;
    v14 = BytePtr;
    v15 = Length;
  }

  else
  {
    HTTPHeader_SetField(a1 + 496, "Content-Length", "%zu", 0);
    v12 = a1 + 416;
    v13 = a1;
    v14 = BytePtr;
    v15 = 0;
  }

  v16 = _MediaControlClient_DoTransaction(50, v13, v12, v14, v15);
LABEL_22:
  v17 = *(a1 + 279600);
  if (v17)
  {
    free(v17);
    *(a1 + 279600) = 0;
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (v16 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoScrubSet(MediaControlClientRef, float, CFDictionaryRef)", 60, "### Set position failed: %#m\n", v16);
  }

  return v16;
}

uint64_t MediaControlClient_DoRate(uint64_t a1, float a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoRate(MediaControlClientRef, float)", 50, "Set rate to %f\n", a2);
  }

  v4 = MediaControlClient_EnsureConnected(a1);
  if (v4)
  {
    v5 = v4;
    APSLogErrorAt();
  }

  else
  {
    snprintf(__str, 0x80uLL, "/rate?value=%f", a2);
    HTTPHeader_InitRequest();
    v5 = _MediaControlClient_DoTransaction(50, a1, a1 + 416, 0, 0);
    if (!v5)
    {
      _MediaControlClient_PlaybackPaused(a1, a2 == 0.0);
      return v5;
    }
  }

  if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "OSStatus MediaControlClient_DoRate(MediaControlClientRef, float)", 60, "### Set rate failed: %#m\n", v5);
  }

  return v5;
}

NSObject *_MediaControlClient_EnsureMirroringSuspended(uint64_t a1)
{
  if (gAirPlayRouteLock)
  {
    dispatch_semaphore_wait(gAirPlayRouteLock, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (!*(a1 + 563232))
  {
    v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v3 = [v2 attributeForKey:*MEMORY[0x277D26C70]];
    if ([objc_msgSend(v3 objectForKey:{*MEMORY[0x277D26D18]), "BOOLValue"}])
    {
      if (!gAirPlayMirroringSuspendCount++)
      {
        if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_MediaControlClientCore, "void _MediaControlClient_EnsureMirroringSuspended(MediaControlClientRef)", 50, "Suspending mirroring for photo/slideshow\n");
        }

        v5 = [MEMORY[0x277D26E58] sharedAVSystemController];
        v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v5 setAttribute:v6 forKey:*MEMORY[0x277D26B18] error:0];
      }

      *(a1 + 563232) = 1;
    }
  }

  result = gAirPlayRouteLock;
  if (gAirPlayRouteLock)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

const void *MediaControlClient_CopyProperty(uint64_t a1, const void *a2, CFPropertyListRef a3, _DWORD *a4)
{
  v8 = a1 + 278528;
  v21 = 0;
  v9 = MediaControlClient_EnsureConnected(a1);
  if (v9)
  {
    Int64 = v9;
    APSLogErrorAt();
    goto LABEL_33;
  }

  if (CFEqual(a2, @"serverInfo"))
  {
    v10 = *(v8 + 3232);
    if (v10)
    {
      CFRetain(*(v8 + 3232));
    }

    Int64 = 0;
    a3 = 0;
    goto LABEL_19;
  }

  v21 = 0;
  ASPrintF(&v21, "/getProperty?%@", a2);
  if (!v21)
  {
LABEL_34:
    APSLogErrorAt();
    a3 = 0;
    v10 = 0;
    Int64 = 4294960568;
    goto LABEL_19;
  }

  HTTPHeader_InitRequest();
  free(v21);
  if (a3)
  {
    Data = CFPropertyListCreateData(0, a3, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    a3 = Data;
    if (!Data)
    {
      APSLogErrorAt();
      v10 = 0;
      Int64 = 4294960596;
      goto LABEL_19;
    }

    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(a3);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  HTTPHeader_SetField(a1 + 496, "Content-Type", "application/x-apple-binary-plist");
  Int64 = _MediaControlClient_DoTransaction(50, a1, a1 + 416, BytePtr, Length);
  if (a3)
  {
    CFRelease(a3);
  }

  if (Int64)
  {
LABEL_33:
    a3 = 0;
    v10 = 0;
    goto LABEL_19;
  }

  v15 = CFDataCreate(0, *(v8 + 1080), *(v8 + 1088));
  if (!v15)
  {
    goto LABEL_34;
  }

  v16 = v15;
  a3 = CFPropertyListCreateWithData(0, v15, 0, 0, 0);
  CFRelease(v16);
  if (a3)
  {
    v17 = CFGetTypeID(a3);
    if (v17 == CFDictionaryGetTypeID())
    {
      Int64 = CFDictionaryGetInt64();
      Value = CFDictionaryGetValue(a3, @"value");
      v10 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    else
    {
      APSLogErrorAt();
      v10 = 0;
      Int64 = 4294960540;
    }
  }

  else
  {
    APSLogErrorAt();
    v10 = 0;
    Int64 = 4294960579;
  }

LABEL_19:
  v19 = *(v8 + 1072);
  if (v19)
  {
    free(v19);
    *(v8 + 1072) = 0;
  }

  if (a3)
  {
    CFRelease(a3);
  }

  if (a4)
  {
    *a4 = Int64;
  }

  if (Int64 != -6727 && Int64 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientCore, "CFTypeRef MediaControlClient_CopyProperty(MediaControlClientRef, CFStringRef, CFTypeRef, OSStatus *)", 60, "### Copy property '%@' failed: %#m\n", a2, Int64);
  }

  return v10;
}

uint64_t MediaControlClient_SetEventHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 563216) = a2;
  *(result + 563224) = a3;
  return result;
}