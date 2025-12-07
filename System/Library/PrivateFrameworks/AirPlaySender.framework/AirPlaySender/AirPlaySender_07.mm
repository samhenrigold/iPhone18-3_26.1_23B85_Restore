BOOL apsession_isClusterSession(int a1, uint64_t a2, _DWORD *a3, BOOL *a4, BOOL *a5)
{
  cf = 0;
  APEndpointDescriptionGetCMBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v12 = 4294954514;
    goto LABEL_19;
  }

  v12 = v11(v10, @"ClusterType", *MEMORY[0x277CBECE8], &cf);
  if (v12)
  {
LABEL_19:
    apsession_isClusterSession_cold_1(v12);
    UInt32 = 0;
    goto LABEL_13;
  }

  UInt32 = FigCFNumberGetUInt32();
  if (UInt32)
  {
    v14 = APSGetFBOPropertyInt64() != 0;
    if ((a1 | 8) == 0xB)
    {
      isTightSyncBuddyConnection = 1;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      isTightSyncBuddyConnection = apsession_isTightSyncBuddyConnection();
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v14 = 0;
  isTightSyncBuddyConnection = 0;
  if (a3)
  {
LABEL_8:
    *a3 = UInt32;
  }

LABEL_9:
  if (a4)
  {
    *a4 = v14;
  }

  if (a5)
  {
    *a5 = isTightSyncBuddyConnection;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return UInt32 != 0;
}

BOOL apsession_isTightSyncBuddyConnection()
{
  cf2 = 0;
  cf1 = 0;
  APSCopyTightSyncInfo();
  APEndpointDescriptionGetCMBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    v3 = 4294954514;
    goto LABEL_7;
  }

  v3 = v2(v1, @"TightSyncUUID", *MEMORY[0x277CBECE8], &cf2);
  if (v3)
  {
LABEL_7:
    apsession_isTightSyncBuddyConnection_cold_1(v3);
    v4 = 0;
    goto LABEL_8;
  }

  v4 = 0;
  if (cf1 && cf2)
  {
    v4 = CFEqual(cf1, cf2) != 0;
  }

LABEL_8:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf2)
  {
    CFRelease(cf2);
  }

  return v4;
}

uint64_t APSenderSessionGetFallbackConnectionType(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a3 == -71890 && !a4[2])
  {
    a4[2] = 1;
  }

  v6 = a4[1];
  switch(a1)
  {
    case 4:
      if ((a2 & 2) != 0 && (v6 & 2) == 0)
      {
        result = 2;
        break;
      }

LABEL_16:
      if (v6)
      {
        result = 0;
      }

      else
      {
        result = a2 & 1;
      }

      break;
    case 2:
      if ((a2 & 4) != 0 && (v6 & 4) == 0)
      {
        result = 4;
        break;
      }

      goto LABEL_16;
    case 1:
      if (v6)
      {
        if (a4[2] == 1)
        {
          result = 2;
          a4[2] = 2;
          break;
        }

LABEL_23:
        result = 0;
        break;
      }

      if ((a2 & 4) != 0)
      {
        result = 4;
      }

      else
      {
        result = a2 & 2;
      }

      break;
    default:
      if (gLogCategory_APSenderSessionAirPlay > 90)
      {
        goto LABEL_23;
      }

      if (gLogCategory_APSenderSessionAirPlay != -1 || (result = _LogCategory_Initialize(), result))
      {
        APSenderSessionGetFallbackConnectionType_cold_1(a1, a2, a3);
        goto LABEL_23;
      }

      break;
  }

  v8 = a4[1] | a1;
  *a4 = a1;
  a4[1] = v8;
  return result;
}

uint64_t APSenderSessionAirPlayPerformPairingPeersListManagement(uint64_t a1, CFArrayRef theArray, const __CFArray *a3, __CFArray **a4)
{
  v38 = 0;
  v36 = 0;
  v37 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a3)
    {
LABEL_3:
      v9 = CFArrayGetCount(a3);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  apsession_copyTransportControlStream(a1, &v38);
  if (v38)
  {
    cf = v38;
    v10 = APPairingClientCoreUtilsCreate(*MEMORY[0x277CBECE8], 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, v38, &v37);
    if (v10)
    {
      v31 = v10;
      APSenderSessionAirPlayPerformPairingPeersListManagement_cold_1(v10);
    }

    else
    {
      v33 = a4;
      theArraya = a3;
      if (Count < 1)
      {
LABEL_16:
        if (v9 < 1)
        {
LABEL_22:
          if (APPairingClientCoreUtilsPerformListPairings(v37, &v36))
          {
            APSLogErrorAt();
            v31 = 0;
            Mutable = 0;
            *v33 = 0;
            goto LABEL_33;
          }

          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
          if (!Mutable)
          {
            APSenderSessionAirPlayPerformPairingPeersListManagement_cold_4();
            v31 = 4294895476;
            goto LABEL_33;
          }

          if (v36)
          {
            v26 = CFArrayGetCount(v36);
            if (v26 >= 1)
            {
              v27 = v26;
              v28 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v36, v28);
                CFDictionaryGetValue(ValueAtIndex, @"identifier");
                CFDictionaryGetValue(ValueAtIndex, @"pk");
                CFDictionaryGetValue(ValueAtIndex, @"permissions");
                Formatted = CFPropertyListCreateFormatted();
                if (Formatted)
                {
                  break;
                }

                CFArrayAppendValue(Mutable, 0);
                if (v27 == ++v28)
                {
                  goto LABEL_29;
                }
              }

              v31 = Formatted;
              APSLogErrorAt();
              goto LABEL_33;
            }
          }

LABEL_29:
          if (!v33)
          {
            v31 = 0;
            goto LABEL_33;
          }

          v31 = 0;
          *v33 = Mutable;
        }

        else
        {
          v21 = 0;
          v22 = *MEMORY[0x277CC0B48];
          while (1)
          {
            v23 = CFArrayGetValueAtIndex(theArraya, v21);
            if (!v23)
            {
              v31 = 4294895475;
              APSenderSessionAirPlayPerformPairingPeersListManagement_cold_6();
              goto LABEL_31;
            }

            Value = CFDictionaryGetValue(v23, v22);
            if (!Value)
            {
              v31 = 4294895475;
              APSenderSessionAirPlayPerformPairingPeersListManagement_cold_5();
              goto LABEL_31;
            }

            v25 = APPairingClientCoreUtilsPerformRemovePairing(v37, Value);
            if (v25)
            {
              break;
            }

            if (v9 == ++v21)
            {
              goto LABEL_22;
            }
          }

          v31 = v25;
          APSenderSessionAirPlayPerformPairingPeersListManagement_cold_3(v25);
        }
      }

      else
      {
        v11 = 0;
        v12 = *MEMORY[0x277CC0B48];
        v13 = *MEMORY[0x277CC0B58];
        v14 = *MEMORY[0x277CC0B50];
        while (1)
        {
          v15 = CFArrayGetValueAtIndex(theArray, v11);
          Mutable = v15;
          if (!v15)
          {
            v31 = 4294895475;
            APSenderSessionAirPlayPerformPairingPeersListManagement_cold_10();
            goto LABEL_33;
          }

          v17 = CFDictionaryGetValue(v15, v12);
          v18 = CFDictionaryGetValue(Mutable, v13);
          v19 = CFDictionaryGetValue(Mutable, v14);
          if (!v17)
          {
            v31 = 4294895475;
            APSenderSessionAirPlayPerformPairingPeersListManagement_cold_9();
            goto LABEL_31;
          }

          if (!v18)
          {
            v31 = 4294895475;
            APSenderSessionAirPlayPerformPairingPeersListManagement_cold_8();
            goto LABEL_31;
          }

          if (!v19)
          {
            v31 = 4294895475;
            APSenderSessionAirPlayPerformPairingPeersListManagement_cold_7();
            goto LABEL_31;
          }

          v20 = APPairingClientCoreUtilsPerformAddPairing(v37, v17, v18, v19);
          if (v20)
          {
            break;
          }

          if (Count == ++v11)
          {
            goto LABEL_16;
          }
        }

        v31 = v20;
        APSenderSessionAirPlayPerformPairingPeersListManagement_cold_2(v20);
      }
    }

LABEL_31:
    Mutable = 0;
LABEL_33:
    CFRelease(cf);
    goto LABEL_34;
  }

  APSenderSessionAirPlayPerformPairingPeersListManagement_cold_11();
  Mutable = 0;
  v31 = 4294895467;
LABEL_34:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v31;
}

uint64_t apsession_Invalidate(const void *a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_Invalidate_cold_1(DerivedStorage, a1);
  }

  apsession_recordActivationMessageTiming(a1);
  FigSimpleMutexLock();
  apsession_invalidateAndClearTransportStreams(a1);
  FigSimpleMutexUnlock();
  v3 = *(DerivedStorage + 184);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __apsession_Invalidate_block_invoke;
  v6[3] = &unk_27849B900;
  v6[4] = &v7;
  v6[5] = a1;
  dispatch_sync(v3, v6);
  if (*(v8 + 6))
  {
    APSLogErrorAt();
    v4 = *(v8 + 6);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t apsession_Finalize(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (gLogCategory_APSenderSessionAirPlay <= 50)
  {
    if (gLogCategory_APSenderSessionAirPlay != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APSenderSessionAirPlay, "void apsession_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] APSenderSessionAirPlay with name %@ finalizing.\n", a1, *(v4 + 8));
    }
  }

  if (*v4)
  {
    if (*(v4 + 288) && *(v4 + 264))
    {
      Shared = APMulticastProbeSenderGetShared(result, v3);
      APMulticastProbeSenderReleaseSSMGroupInfo(Shared, *(v4 + 264));
      *(v4 + 288) = 0;
    }

    MEMORY[0x223DB15B0](v4 + 344);
    *(v4 + 344) = 0;
    v6 = *(v4 + 320);
    if (!v6)
    {
      goto LABEL_16;
    }

    if (gLogCategory_APSenderSessionAirPlay > 50)
    {
      goto LABEL_15;
    }

    if (gLogCategory_APSenderSessionAirPlay == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_14:
        v6 = *(v4 + 320);
        if (!v6)
        {
LABEL_16:
          v7 = *(v4 + 496);
          if (v7)
          {
            CFRelease(v7);
            *(v4 + 496) = 0;
          }

          v8 = *(v4 + 504);
          if (v8)
          {
            CFRelease(v8);
            *(v4 + 504) = 0;
          }

          v9 = *(v4 + 512);
          if (v9)
          {
            CFRelease(v9);
            *(v4 + 512) = 0;
          }

          v10 = *(v4 + 552);
          if (v10)
          {
            CFRelease(v10);
            *(v4 + 552) = 0;
          }

          v11 = *(v4 + 560);
          if (v11)
          {
            CFRelease(v11);
            *(v4 + 560) = 0;
          }

          v12 = *(v4 + 568);
          if (v12)
          {
            CFRelease(v12);
            *(v4 + 568) = 0;
          }

          v13 = *(v4 + 160);
          if (v13)
          {
            CFRelease(v13);
            *(v4 + 160) = 0;
          }

          v14 = *(v4 + 168);
          if (v14)
          {
            CFRelease(v14);
            *(v4 + 168) = 0;
          }

          v15 = *(v4 + 176);
          if (v15)
          {
            CFRelease(v15);
            *(v4 + 176) = 0;
          }

          v16 = *(v4 + 528);
          if (v16)
          {
            CFRelease(v16);
            *(v4 + 528) = 0;
          }

          v17 = *(v4 + 536);
          if (v17)
          {
            CFRelease(v17);
            *(v4 + 536) = 0;
          }

          v18 = *(v4 + 96);
          if (v18)
          {
            CFRelease(v18);
            *(v4 + 96) = 0;
          }

          v19 = *(v4 + 104);
          if (v19)
          {
            CFRelease(v19);
            *(v4 + 104) = 0;
          }

          v20 = *(v4 + 80);
          if (v20)
          {
            CFRelease(v20);
            *(v4 + 80) = 0;
          }

          v21 = *(v4 + 48);
          if (v21)
          {
            dispatch_release(v21);
            *(v4 + 48) = 0;
          }

          v22 = *(v4 + 40);
          if (v22)
          {
            dispatch_release(v22);
            *(v4 + 40) = 0;
          }

          v23 = *(v4 + 184);
          if (v23)
          {
            dispatch_release(v23);
            *(v4 + 184) = 0;
          }

          v24 = *(v4 + 32);
          if (v24)
          {
            dispatch_release(v24);
            *(v4 + 32) = 0;
          }

          v25 = *(v4 + 8);
          if (v25)
          {
            CFRelease(v25);
            *(v4 + 8) = 0;
          }

          v26 = *(v4 + 16);
          if (v26)
          {
            CFRelease(v26);
            *(v4 + 16) = 0;
          }

          v27 = *(v4 + 24);
          if (v27)
          {
            CFRelease(v27);
            *(v4 + 24) = 0;
          }

          v28 = *(v4 + 200);
          if (v28)
          {
            CFRelease(v28);
            *(v4 + 200) = 0;
          }

          v29 = *(v4 + 248);
          if (v29)
          {
            CFRelease(v29);
            *(v4 + 248) = 0;
          }

          v30 = *(v4 + 256);
          if (v30)
          {
            CFRelease(v30);
            *(v4 + 256) = 0;
          }

          v31 = *(v4 + 264);
          if (v31)
          {
            CFRelease(v31);
            *(v4 + 264) = 0;
          }

          v32 = *(v4 + 280);
          if (v32)
          {
            CFRelease(v32);
            *(v4 + 280) = 0;
          }

          v33 = *(v4 + 576);
          if (v33)
          {
            CFRelease(v33);
            *(v4 + 576) = 0;
          }

          return FigSimpleMutexDestroy();
        }

LABEL_15:
        CFRelease(v6);
        *(v4 + 320) = 0;
        goto LABEL_16;
      }

      v6 = *(v4 + 320);
    }

    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "void apsession_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] Disconnected transport session [%{ptr}] during Finalize.\n", a1, v6);
    goto LABEL_14;
  }

  if (gLogCategory_APSenderSessionAirPlay <= 100)
  {
    if (gLogCategory_APSenderSessionAirPlay != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = apsession_Finalize_cold_1(a1);
    }
  }

  __break(1u);
  return result;
}

__CFString *apsession_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSenderSessionAirPlay %p %@>", a1, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t apsession_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s propertyKey: '%@', propertyValue: '%@'\n", a1, "OSStatus apsession_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2, a3);
  }

  if (*DerivedStorage)
  {
    apsession_SetProperty_cold_1();
    return 4294954511;
  }

  else
  {
    if (a2)
    {
      FigSimpleMutexLock();
      v7 = CMBaseObjectGetDerivedStorage();
      if (CFEqual(a2, @"AuthorizationString"))
      {
        if (!a3)
        {
          v9 = (v7 + 392);
          v10 = *(v7 + 392);
          *(v7 + 392) = 0;
          if (!v10)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        v8 = CFGetTypeID(a3);
        if (v8 == CFStringGetTypeID())
        {
          v9 = (v7 + 392);
          v10 = *(v7 + 392);
          *(v7 + 392) = a3;
          CFRetain(a3);
          if (!v10)
          {
LABEL_12:
            if (*(v7 + 328))
            {
              v11 = *v9;
              CMBaseObject = FigTransportStreamGetCMBaseObject();
              v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v13)
              {
                v13(CMBaseObject, *MEMORY[0x277CE5070], v11);
              }
            }

            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
            goto LABEL_18;
          }

LABEL_11:
          CFRelease(v10);
          goto LABEL_12;
        }

        apsession_SetProperty_cold_2();
LABEL_18:
        FigSimpleMutexUnlock();
        return 0;
      }

      if (CFEqual(a2, @"DACPID"))
      {
        *(v7 + 440) = CFGetInt64();
        goto LABEL_18;
      }

      if (CFEqual(a2, @"DACPRemoteID"))
      {
        *(v7 + 448) = CFGetInt64();
        goto LABEL_18;
      }

      if (CFEqual(a2, @"PublishEncryptionKeyDiagnosticMode"))
      {
        *(v7 + 384) = CFGetInt64() != 0;
        goto LABEL_18;
      }

      if (CFEqual(a2, @"GroupID"))
      {
        if (a3)
        {
          v15 = CFGetTypeID(a3);
          if (v15 != CFStringGetTypeID())
          {
            apsession_SetProperty_cold_6();
            goto LABEL_18;
          }

          v16 = *(v7 + 552);
          *(v7 + 552) = a3;
          goto LABEL_29;
        }

        v16 = *(v7 + 552);
        *(v7 + 552) = 0;
LABEL_35:
        if (v16)
        {
          CFRelease(v16);
        }

        goto LABEL_18;
      }

      if (!CFEqual(a2, @"IsMediaSession"))
      {
        if (CFEqual(a2, @"RCServerInfo"))
        {
          if (!a3)
          {
            v16 = *(v7 + 568);
            *(v7 + 568) = 0;
            goto LABEL_35;
          }

          v18 = CFGetTypeID(a3);
          if (v18 != CFDictionaryGetTypeID())
          {
            apsession_SetProperty_cold_8();
            goto LABEL_18;
          }

          v16 = *(v7 + 568);
          *(v7 + 568) = a3;
        }

        else
        {
          if (CFEqual(a2, @"ShouldUseNANDiversifiedPIN"))
          {
            *(v7 + 464) = CFGetInt64() != 0;
            goto LABEL_18;
          }

          if (!CFEqual(a2, @"NANMACAddress"))
          {
            goto LABEL_18;
          }

          if (!a3)
          {
            v16 = *(v7 + 472);
            *(v7 + 472) = 0;
            goto LABEL_35;
          }

          v24 = CFGetTypeID(a3);
          if (v24 != CFStringGetTypeID())
          {
            apsession_SetProperty_cold_10();
            goto LABEL_18;
          }

          v16 = *(v7 + 472);
          *(v7 + 472) = a3;
        }

LABEL_29:
        CFRetain(a3);
        goto LABEL_35;
      }

      v17 = *(v7 + 72);
      if (v17 <= 8 && ((1 << v17) & 0x1C2) != 0)
      {
        APSLogErrorAt();
        goto LABEL_18;
      }

      v19 = CFGetInt64();
      v20 = v19 != 0;
      v21 = *(v7 + 310);
      if (v21 == v20)
      {
        goto LABEL_18;
      }

      if (gLogCategory_APSenderSessionAirPlay <= 50)
      {
        if (gLogCategory_APSenderSessionAirPlay != -1)
        {
LABEL_46:
          v22 = "yes";
          if (v21)
          {
            v23 = "yes";
          }

          else
          {
            v23 = "no";
          }

          if (!v19)
          {
            v22 = "no";
          }

          LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_setPropertyInternal(APSenderSessionRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] isMediaSession changed: %s -> %s", a1, v23, v22);
          goto LABEL_62;
        }

        if (_LogCategory_Initialize())
        {
          v21 = *(v7 + 310);
          goto LABEL_46;
        }
      }

LABEL_62:
      *(v7 + 310) = v20;
      goto LABEL_18;
    }

    apsession_SetProperty_cold_11();
    return 4294895475;
  }
}

void apsession_invalidateAndClearTransportStreams(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64) && *(DerivedStorage + 240))
  {
    APSConnectionInterfaceManagerReleaseInterfaceSelection();
    *(DerivedStorage + 240) = 0;
  }

  if (*(DerivedStorage + 320))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CFRetain(a1);
    *(DerivedStorage + 328) = 0;
    *(DerivedStorage + 336) = 0;
    *(DerivedStorage + 376) = 0;
    APSDispatchAsyncFHelper();
    *(DerivedStorage + 306) = 0;
    *(DerivedStorage + 304) = 0;
    v3 = *(DerivedStorage + 560);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 560) = 0;
    }

    v4 = *(DerivedStorage + 568);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 568) = 0;
    }
  }
}

void apsession_invalidateTransportStreams(const void **a1)
{
  v2 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v4)
    {
      v4(v3, 0, 0, 0);
    }

    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v6 = CMBaseObject;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }

    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      apsession_invalidateTransportStreams_cold_1();
    }

    CFRelease(*v2);
  }

  v8 = a1[2];
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v9)
    {
      v9(v8, 0, 0, 0);
    }

    v10 = FigTransportStreamGetCMBaseObject();
    if (v10)
    {
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v12)
      {
        v12(v11);
      }
    }

    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      apsession_invalidateTransportStreams_cold_2();
    }

    CFRelease(a1[2]);
  }

  v13 = a1[3];
  if (v13)
  {
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v14)
    {
      v14(v13, 0, 0, 0);
    }

    v15 = FigTransportStreamGetCMBaseObject();
    if (v15)
    {
      v16 = v15;
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v17)
      {
        v17(v16);
      }
    }

    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      apsession_invalidateTransportStreams_cold_3();
    }

    CFRelease(a1[3]);
  }

  v18 = *a1;

  CFRelease(v18);
}

uint64_t apsession_dispatchPostFailedNotification(const void *a1, unsigned int a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

void __apsession_handleTransportSessionDisconnected_block_invoke(uint64_t *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 320);
  if (v2 == v3)
  {
    apsession_disconnectControlStream(a1[6]);
  }

  else
  {
    if (gLogCategory_APSenderSessionAirPlay > 50)
    {
      goto LABEL_7;
    }

    if (gLogCategory_APSenderSessionAirPlay != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      v2 = a1[4];
      v3 = *(a1[5] + 320);
LABEL_4:
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "void apsession_handleTransportSessionDisconnected(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)_block_invoke", 33554482, "[%{ptr}] %###s: Skipping control stream disconnection as the transport session [%{ptr}] is no longer used. (current: [%{ptr}])", a1[6], "void apsession_handleTransportSessionDisconnected(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)_block_invoke", v2, v3);
    }
  }

LABEL_7:
  CFRelease(a1[4]);
  v4 = a1[6];

  CFRelease(v4);
}

void apsession_disconnectControlStream(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_disconnectControlStream_cold_1(DerivedStorage, a1);
  }

  apsession_stopSenderNetworkClockIfNeeded(a1);
  apsession_ensureDisconnected(a1);
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 408);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 408) = 0;
  }

  v4 = *(DerivedStorage + 416);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 416) = 0;
  }

  v5 = *(DerivedStorage + 424);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 424) = 0;
  }

  FigSimpleMutexUnlock();
  v6 = *(DerivedStorage + 224);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 224) = 0;
  }

  v7 = *(DerivedStorage + 200);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 200) = 0;
  }

  *(DerivedStorage + 193) = 0;
  *(DerivedStorage + 195) = 0;
}

void apsession_postFailedNotificationCallback(uint64_t a1)
{
  apsession_postFailedNotification(*a1, *(a1 + 8), *(a1 + 16));
  v2 = *a1;

  CFRelease(v2);
}

void apsession_postFailedNotification(const void *a1, int a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDictionarySetInt64();
    CFDictionarySetValue(v7, @"SessionState", a3);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();

    CFRelease(v7);
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
  }
}

const void *apsession_getTimingPeerIdentifier(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 280);
  if (!v2)
  {
    return *(DerivedStorage + 248);
  }

  v3 = *MEMORY[0x277CEA238];

  return CFDictionaryGetValue(v2, v3);
}

void apsession_setTransportSession(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 320);
  if (v5 == a2)
  {
    if (a2)
    {
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  v6 = DerivedStorage;
  if (v5 && gLogCategory_APSenderSessionAirPlay <= 50)
  {
    if (gLogCategory_APSenderSessionAirPlay == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v5 = *(v6 + 320);
    }

    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "void apsession_setTransportSession(APSenderSessionRef, FigTransportSessionRef)", 33554482, "[%{ptr}] Disconnected transport session [%{ptr}].\n", a1, v5);
  }

LABEL_9:
  if (a2)
  {
    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "void apsession_setTransportSession(APSenderSessionRef, FigTransportSessionRef)", 33554482, "[%{ptr}] created a new transport session [%{ptr}]\n", a1, a2);
    }

    *(v6 + 319) = 0;
    *(v6 + 311) = 0;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "void apsession_setTransportSession(APSenderSessionRef, FigTransportSessionRef)", 33554462, "[%{ptr}] Registered for Transport Session [%{ptr}] notifications", a1, a2);
    }

    v5 = *(v6 + 320);
    *(v6 + 320) = a2;
LABEL_24:
    CFRetain(a2);
    if (!v5)
    {
      return;
    }

    goto LABEL_15;
  }

  v5 = *(v6 + 320);
  *(v6 + 320) = 0;
LABEL_14:
  if (!v5)
  {
    return;
  }

LABEL_15:

  CFRelease(v5);
}

uint64_t apsession_getConnectionLatencyHint(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 320))
  {
    if (*(DerivedStorage + 328))
    {
      v4 = APSGetFBOPropertyInt64();
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v6(CMBaseObject, *MEMORY[0x277CE4ED8], *MEMORY[0x277CBECE8], &cf);
      }

      if (v4 == 2)
      {
        v7 = 0;
        v8 = 1;
      }

      else
      {
        v7 = 0;
        if (APSIsDirectLinkInterface())
        {
          v8 = -1;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v7 = 4294895466;
      apsession_getConnectionLatencyHint_cold_1();
      v8 = 0;
    }
  }

  else
  {
    apsession_getConnectionLatencyHint_cold_2();
    v8 = 0;
    v7 = 4294895467;
  }

  if (a2)
  {
    *a2 = v8;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

__CFDictionary *apsession_copyShowInfo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = Mutable;
  v5 = *MEMORY[0x277CBED28];
  v6 = *MEMORY[0x277CBED10];
  if (*(DerivedStorage + 304))
  {
    v7 = *MEMORY[0x277CBED28];
  }

  else
  {
    v7 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"isConnected", v7);
  if (*(DerivedStorage + 306))
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  CFDictionarySetValue(v4, @"isSessionStarted", v8);
  if (*(DerivedStorage + 307))
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  CFDictionarySetValue(v4, @"isCancelled", v9);
  if (*(DerivedStorage + 320))
  {
    CMBaseObject = FigTransportSessionGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v12 = v11(CMBaseObject, *MEMORY[0x277CE4FA8], v2, &value);
      if (!v12)
      {
        CFDictionarySetValue(v4, @"TransportSessionInfo", value);
        goto LABEL_14;
      }
    }

    else
    {
      v12 = 4294954514;
    }

    apsession_copyShowInfo_cold_1(v12);
  }

LABEL_14:
  if (value)
  {
    CFRelease(value);
  }

  return v4;
}

uint64_t apsession_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 320);
  if (v10)
  {
    v11 = CFRetain(v10);
  }

  else
  {
    v11 = 0;
  }

  FigSimpleMutexUnlock();
  v12 = *(DerivedStorage + 72);
  if (v12 >= 0xB)
  {
    if (v12 == 11)
    {
      v13 = "SPPCPlayback";
    }

    else
    {
      v13 = "?";
    }
  }

  else
  {
    v13 = off_27849BA10[v12];
  }

  v14 = (*(a5 + 16))(a5, a3, "SenderSession:[%{ptr}] (%s) Parent:[%{ptr}]\n", a1, v13, a2);
  if (v14)
  {
    v19 = v14;
    apsession_DumpHierarchy_cold_1(v14);
    goto LABEL_22;
  }

  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v16 = *(ProtocolVTable + 16)) == 0)
  {
    v19 = 4294954508;
LABEL_19:
    v19 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v11, 0, " ", 0, 0, v19, a1);
    goto LABEL_20;
  }

  v17 = *(v16 + 8);
  if (!v17)
  {
    v19 = 4294954514;
    goto LABEL_19;
  }

  v18 = v17(v11, a1, a3 + 1, 0, a5);
  v19 = v18;
  if (v18 == -12782 || v18 == -12788)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v19)
  {
    apsession_DumpHierarchy_cold_2(v19);
  }

LABEL_22:
  if (v11)
  {
    CFRelease(v11);
  }

  return v19;
}

uint64_t apsession_EnsureStarted(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();

  return APSDispatchSyncTask();
}

uint64_t apsession_UpdateSession(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();

  return APSDispatchSyncTask();
}

uint64_t apsession_CreateTransportStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    apsession_CreateTransportStream_cold_1(&v11);
    return v11;
  }

  apsession_copyTransportSession(a1, &v10);
  v6 = v10;
  if (!v10)
  {
    apsession_CreateTransportStream_cold_2();
    return 4294895467;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    v8 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v8 = v7(v6, a2, a3);
  if (v8)
  {
    goto LABEL_7;
  }

LABEL_8:
  CFRelease(v6);
  return v8;
}

uint64_t apsession_PrepareForTeardown(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_PrepareForTeardown_cold_1(a1);
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 307) = 1;
  FigSimpleMutexUnlock();
  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 184), a1, apsession_prepareForTeardownInternal);
  return 0;
}

uint64_t apsession_EnsureStopped(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 307) = 1;
  FigSimpleMutexUnlock();

  return APSDispatchSyncTask();
}

uint64_t apsession_SetEventCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  MEMORY[0x223DB15B0](DerivedStorage + 43);
  DerivedStorage[43] = 0;
  DerivedStorage[44] = a3;
  DerivedStorage[45] = a4;
  DerivedStorage[46] = a5;
  if (a2)
  {
    FigCFWeakReferenceStore();
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t apsession_PerformStage1StartTransaction(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (*(CMBaseObjectGetDerivedStorage() + 72) != 5)
  {
    return 0;
  }

  v5 = APSDispatchSyncTask();
  if (v5)
  {
    APSLogErrorAt();
  }

  else
  {
    *a4 = 0;
  }

  return v5;
}

uint64_t apsession_PerformStage2StartTransaction(uint64_t a1, uint64_t a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 72) == 5)
  {
    return APSDispatchSyncTask();
  }

  else
  {
    return 0;
  }
}

uint64_t apsession_ensureConnectedInternal(const void *a1)
{
  v296 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v295 = 0;
  v293 = 0;
  v294 = 0;
  v292 = 0;
  *buffer = 0;
  v289 = 0;
  v291 = 0;
  v290 = 0;
  v285 = 0;
  v286 = 0;
  v287 = 0;
  v3 = 0x280FB0000uLL;
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureConnectedInternal(void *)", 33554462, "[%{ptr}] %###s %@.\n", a1, "OSStatus apsession_ensureConnectedInternal(void *)", *(DerivedStorage + 8));
  }

  if (*DerivedStorage)
  {
    apsession_ensureConnectedInternal_cold_1(&v296);
    goto LABEL_685;
  }

  v4 = APSGetFBOPropertyInt64();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 304))
  {
    v5 = *(DerivedStorage + 305);
    FigSimpleMutexUnlock();
    if (v5)
    {
      if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        apsession_ensureConnectedInternal_cold_2(a1);
      }

      goto LABEL_685;
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  LODWORD(buf.value) = 0;
  v6 = CMBaseObjectGetDerivedStorage();
  LODWORD(v297) = 0;
  LODWORD(v303[0]) = 0;
  LODWORD(v302) = 0;
  if (apsession_isCancelled(a1))
  {
    APSLogErrorAt();
    v296 = -71832;
    goto LABEL_617;
  }

  APSenderSessionGetPreferredAndEligibleTransportsBasedOnUsage(*(v6 + 72), *(v6 + 56), &v297, &v302, &v295);
  v7 = apsession_determineTransportAvailabilityAndWaitIfNeeded(a1, 8, v302, v303, 0, &buf);
  v8 = v7 == 0;
  if (LODWORD(buf.value))
  {
    apsession_ensureConnectedInternal_cold_3(LODWORD(buf.value));
LABEL_627:
    v11 = 0;
    v16 = 0;
    goto LABEL_47;
  }

  apsession_determineTransportAvailabilityAndWaitIfNeeded(a1, 1, v302, v303, 0, &buf);
  if (LODWORD(buf.value))
  {
    apsession_ensureConnectedInternal_cold_4(LODWORD(buf.value));
    goto LABEL_627;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v297 == 4;
  }

  v10 = v9;
  if (apsession_determineTransportAvailabilityAndWaitIfNeeded(a1, 4, v302, v303, v10, &buf))
  {
    if (v7)
    {
      v8 = 0;
      v11 = 8;
    }

    else if (v297 != 4 && (v303[0] & 1) != 0)
    {
      v11 = 0;
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v11 = 4;
    }
  }

  else
  {
    v11 = 8 * (v7 != 0);
    if (v297 == 4)
    {
      LODWORD(v297) = 2;
    }
  }

  if (LODWORD(buf.value))
  {
    apsession_ensureConnectedInternal_cold_5(LODWORD(buf.value));
    goto LABEL_627;
  }

  v12 = v297 == 2 && v8;
  v13 = apsession_determineTransportAvailabilityAndWaitIfNeeded(a1, 2, v302, v303, v12, &buf);
  if (!v11 && v13)
  {
    if (v297 != 2 && (v303[0] & 1) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }
  }

  if (LODWORD(buf.value))
  {
    apsession_ensureConnectedInternal_cold_6(LODWORD(buf.value));
    goto LABEL_627;
  }

  if (v11 <= 1)
  {
    v11 = 1;
  }

  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_ensureConnectedInternal_cold_7(v11, a1);
  }

  v16 = v303[0];
LABEL_47:
  v296 = buf.value;
  if (LODWORD(buf.value))
  {
    if (LODWORD(buf.value) != -71832)
    {
      goto LABEL_628;
    }

LABEL_617:
    if (gLogCategory_APSenderSessionAirPlay > 50 || gLogCategory_APSenderSessionAirPlay == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_685;
    }

    goto LABEL_615;
  }

  if ((v16 & 0xF) == 0)
  {
    if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      apsession_ensureConnectedInternal_cold_57(a1, v14, v15);
    }

    v26 = 0;
    v296 = -6705;
    goto LABEL_686;
  }

  v277 = v16;
  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  if (*(DerivedStorage + 72) == 5)
  {
    v17 = LogCategoryCopyOSLogHandle();
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v19))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v19, OS_SIGNPOST_EVENT, 0x2B8D08D4uLL, "AP_SIGNPOST_CAR_INITIALCONNECTION_START", &unk_2222A918B, &buf, 2u);
    }

    if (v18)
    {
      os_release(v18);
    }
  }

  v280 = v4;
  mach_absolute_time();
  v20 = CMBaseObjectGetDerivedStorage();
  if (v11 == 8)
  {
    v21 = 1;
  }

  else
  {
    v21 = v11;
  }

  FigSimpleMutexLock();
  v22 = *(v20 + 304);
  FigSimpleMutexUnlock();
  if (v22)
  {
    LODWORD(v23) = 0;
    LODWORD(v24) = 1;
    v25 = 4294895464;
    goto LABEL_322;
  }

  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_ensureConnectedInternal_cold_8(v11, v20, v277, a1);
  }

  v273 = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v298 = 0;
  v297 = 0;
  key = *MEMORY[0x277CE4F50];
  value = *MEMORY[0x277CBED28];
  v271 = *MEMORY[0x277CE4F58];
  v269 = *MEMORY[0x277CE4F80];
  v266 = *MEMORY[0x277CE4F60];
  v265 = *MEMORY[0x277CE4F98];
  v267 = *MEMORY[0x277CE4F88];
  v268 = *MEMORY[0x277CE4F90];
  v261 = *MEMORY[0x277CE4E78];
  v262 = *MEMORY[0x277CE4E70];
  v263 = *MEMORY[0x277CE4EA0];
  v264 = *MEMORY[0x277CE4E80];
  v258 = *MEMORY[0x277CE50C0];
  v259 = *MEMORY[0x277CE50B8];
  v257 = *MEMORY[0x277CE5070];
  v260 = *MEMORY[0x277CBED10];
  v255 = *MEMORY[0x277CE5008];
  v256 = *MEMORY[0x277CE50B0];
  allocator = *MEMORY[0x277CBECE8];
  v25 = 4294895464;
  v24 = v21;
  while (1)
  {
    FallbackConnectionType = APSenderSessionGetFallbackConnectionType(v24, v277, v23, &v297);
    ++*(v273 + 480);
    v27 = CMBaseObjectGetDerivedStorage();
    if (apsession_isCancelled(a1))
    {
      apsession_ensureConnectedInternal_cold_9();
      v51 = 0;
LABEL_298:
      v58 = 0;
LABEL_299:
      v23 = 4294895464;
      goto LABEL_227;
    }

    v28 = CMBaseObjectGetDerivedStorage();
    v29 = v28;
    v302 = 0;
    v303[0] = 0;
    if (v24 == 4)
    {
      v30 = (*(v28 + 72) & 0xFFFFFFF7) != 3 && APSGetFBOPropertyInt64() == 0;
      CMBaseObjectGetDerivedStorage();
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      v30 = 0;
    }

    v300 = 0;
    APEndpointDescriptionGetCMBaseObject();
    v32 = v31;
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v33)
    {
      v34 = 4294954514;
      v301 = -12782;
LABEL_140:
      apsession_ensureConnectedInternal_cold_13(v34);
      v51 = 0;
      Mutable = 0;
      v46 = 0;
      goto LABEL_114;
    }

    v34 = v33(v32, @"TransportDevice", allocator, v303);
    v301 = v34;
    if (v34)
    {
      goto LABEL_140;
    }

    APTransportDeviceGetTransportsRequiringBroker();
    if (v24 == 4)
    {
      apsession_supportsLowLatencyNAN(*(v29 + 56));
    }

    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      apsession_ensureConnectedInternal_cold_12();
      v51 = 0;
      v46 = 0;
      v25 = 4294895464;
      goto LABEL_114;
    }

    CFDictionarySetInt64();
    CFDictionarySetInt64();
    if (APSGetAllowPersistentGroupsOnInfra())
    {
      CFDictionarySetValue(Mutable, key, value);
    }

    v25 = 4294895464;
    if (FallbackConnectionType)
    {
      if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        apsession_ensureConnectedInternal_cold_10(a1, v36, v37);
      }

      CMTimeMake(&buf, 15000, 1000);
      FigCFDictionarySetCMTime();
    }

    if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_createTransportSession(APSenderSessionRef, APSenderSessionConnectionType, Boolean, Boolean, FigTransportSessionRef *)", 33554462, "[%{ptr}] %###s: create a new transport session with preferAWDL flag %d requireNAN flag %d\n", a1, "OSStatus apsession_createTransportSession(APSenderSessionRef, APSenderSessionConnectionType, Boolean, Boolean, FigTransportSessionRef *)", v24 == 2, v24 == 4);
    }

    v38 = *(v29 + 176);
    if (v38)
    {
      CFDictionarySetValue(Mutable, v271, v38);
    }

    if (*(v29 + 72) == 5)
    {
      CFDictionarySetValue(Mutable, v269, value);
    }

    if (!v30)
    {
      v46 = 0;
LABEL_110:
      SharedTransport = APTransportGetSharedTransport();
      v48 = *(v29 + 8);
      v49 = v303[0];
      v50 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v50)
      {
        v51 = 0;
        v301 = -12782;
        goto LABEL_114;
      }

      v301 = v50(SharedTransport, allocator, v48, v49, Mutable, &v302);
      if (!v301)
      {
        v51 = v302;
        v302 = 0;
        goto LABEL_114;
      }

      goto LABEL_302;
    }

    v39 = *(v29 + 120);
    if (v39)
    {
      CFDictionarySetValue(Mutable, v266, v39);
    }

    v40 = *(v29 + 128);
    if (v40)
    {
      CFDictionarySetValue(Mutable, v265, v40);
    }

    v41 = CFGetAllocator(a1);
    APEndpointDescriptionGetCMBaseObject();
    v43 = v42;
    v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v44)
    {
      v44(v43, @"AirPlaySecurity", v41, &v300);
      v45 = v300;
    }

    else
    {
      v45 = 0;
    }

    CFDictionarySetValue(Mutable, v268, v45);
    v46 = CFStringCreateF(&v301, "[%{ptr}]", a1);
    if (!v301)
    {
      CFDictionarySetValue(Mutable, v267, v46);
      goto LABEL_110;
    }

    apsession_ensureConnectedInternal_cold_11(v301);
LABEL_302:
    v51 = 0;
LABEL_114:
    if (v300)
    {
      CFRelease(v300);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (v303[0])
    {
      CFRelease(v303[0]);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v302)
    {
      CFRelease(v302);
    }

    v23 = v301;
    if (v301)
    {
      goto LABEL_135;
    }

    apsession_recordActivationMessageTiming(a1);
    FigSimpleMutexLock();
    if (*(v27 + 320))
    {
      apsession_invalidateAndClearTransportStreams(a1);
      CMBaseObject = FigTransportSessionGetCMBaseObject();
      if (CMBaseObject)
      {
        v53 = CMBaseObject;
        v54 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v54)
        {
          v54(v53);
        }
      }
    }

    apsession_setTransportSession(a1, v51);
    FigSimpleMutexUnlock();
    if (apsession_isCancelled(a1))
    {
      APSLogErrorAt();
      goto LABEL_298;
    }

    v55 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v55)
    {
      v23 = 4294954514;
LABEL_135:
      APSLogErrorAt();
      v58 = 0;
      goto LABEL_227;
    }

    v56 = v55(v51);
    if (v56)
    {
      v23 = v56;
      goto LABEL_135;
    }

    FigSimpleMutexLock();
    v57 = CMBaseObjectGetDerivedStorage();
    buf.value = 0;
    if (*(v57 + 328))
    {
      v23 = 0;
      goto LABEL_206;
    }

    v59 = v57;
    v60 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v60)
    {
      apsession_ensureConnectedInternal_cold_17();
      v71 = 0;
      v23 = 4294895476;
      goto LABEL_200;
    }

    APEndpointDescriptionGetCMBaseObject();
    v62 = v61;
    v63 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    v275 = v24;
    v270 = v60;
    if (v63)
    {
      v63(v62, @"TransportDevice", allocator, &buf);
      v64 = buf.value;
    }

    else
    {
      v64 = 0;
    }

    v65 = CMBaseObjectGetDerivedStorage();
    v66 = 0;
    v67 = *(v65 + 72);
    if (v67 <= 5)
    {
      v68 = "RC session";
      switch(v67)
      {
        case 1:
          goto LABEL_153;
        case 3:
          v66 = 0;
          v68 = "HT session";
          goto LABEL_153;
        case 5:
          v66 = 0;
          v68 = "CarPlay session";
          goto LABEL_153;
      }

LABEL_148:
      if ((v275 & 4) != 0)
      {
        v66 = 0;
        v68 = "NAN connection";
        goto LABEL_153;
      }

      if (!v64)
      {
LABEL_152:
        v68 = 0;
        v66 = 1;
        goto LABEL_153;
      }

      if ((v275 & 1) == 0)
      {
LABEL_151:
        APTransportDeviceShouldPerformTrafficRegistration();
        goto LABEL_152;
      }

      LOBYTE(v303[0]) = 0;
      LOBYTE(v302) = 0;
      APTransportDeviceGetInfraReachability();
      if (apsession_isDirectLinkEligible(*(v65 + 56)) && LOBYTE(v303[0]))
      {
        v68 = "DirectLink reachability";
      }

      else
      {
        if (!v302)
        {
          goto LABEL_151;
        }

        v68 = "Ethernet reachability";
      }

      v66 = 0;
      v25 = 4294895464;
      goto LABEL_153;
    }

    v68 = "RC session";
    if ((v67 - 6) >= 3)
    {
      goto LABEL_148;
    }

LABEL_153:
    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      v69 = "skip";
      if (v66)
      {
        v69 = "perform";
      }

      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "Boolean apsession_shouldSkipInitialTrafficRegistration(APSenderSessionRef, APSenderSessionConnectionType, APTransportDeviceRef)", 33554482, "[%{ptr}] Should %s Traffic Registration%?{end} due to %s", a1, v69, v68 == 0, v68);
    }

    v60 = v270;
    if (!v66)
    {
      cf = 0;
      LODWORD(v24) = v275;
      goto LABEL_170;
    }

    v70 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v71 = v70;
    if (!v70)
    {
      apsession_ensureConnectedInternal_cold_16();
      v23 = 4294895476;
      LODWORD(v24) = v275;
      goto LABEL_200;
    }

    CFDictionarySetValue(v70, v264, value);
    v72 = *(v59 + 104);
    LODWORD(v24) = v275;
    if (v72)
    {
      if (gLogCategory_APSenderSessionAirPlay <= 50)
      {
        if (gLogCategory_APSenderSessionAirPlay != -1)
        {
          goto LABEL_164;
        }

        if (_LogCategory_Initialize())
        {
          v72 = *(v59 + 104);
LABEL_164:
          LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureTransportControlStreamCreated(APSenderSessionRef, APSenderSessionConnectionType)", 33554482, "[%{ptr}] Setting traffic registration options for AirPlay to ht group: %@.\n", a1, v72);
        }
      }

      CFDictionarySetValue(v71, v262, value);
      CFDictionarySetValue(v71, v261, *(v59 + 104));
    }

    cf = v71;
    CFDictionarySetValue(v270, v263, v71);
LABEL_170:
    CFDictionarySetInt64();
    v73 = *(v59 + 320);
    v74 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v74)
    {
      v75 = v74(v73, 1668575852, v270, v59 + 328);
      if (v75)
      {
        v23 = v75;
      }

      else
      {
        v76 = *(v59 + 328);
        v77 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v77)
        {
          v78 = v77(v76, apsession_controlStreamMessageCallback, 0, a1);
          if (!v78)
          {
            ShortVersionLength = APSVersionUtilsGetShortVersionLength();
            v80 = CFStringCreateWithFormat(allocator, 0, @"AirPlay/%.*s", ShortVersionLength, "920.10.1");
            if (v80)
            {
              v81 = v80;
              v82 = APSGetFBOPropertyInt64();
              v83 = FigTransportStreamGetCMBaseObject();
              v84 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v84)
              {
                v84(v83, v259, v81);
              }

              v253 = v81;
              v85 = FigTransportStreamGetCMBaseObject();
              v86 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v86)
              {
                v86(v85, v258, @"iTunes");
              }

              v87 = *(v59 + 392);
              v88 = FigTransportStreamGetCMBaseObject();
              v89 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v89)
              {
                v89(v88, v257, v87);
              }

              v90 = *(v59 + 328);
              if (v82)
              {
                v91 = value;
              }

              else
              {
                v91 = v260;
              }

              VTable = CMBaseObjectGetVTable();
              v95 = *(VTable + 8);
              v94 = VTable + 8;
              v96 = *(v95 + 56);
              if (v96)
              {
                v94 = v96(v90, v256, v91);
              }

              APSenderSessionMessageSendTimeout(v94, v93);
              APSSetFBOPropertyInt64();
              v97 = *(v59 + 72);
              if (v97 > 8)
              {
                v60 = v270;
              }

              else
              {
                v60 = v270;
                if (((1 << v97) & 0x1C2) != 0)
                {
                  v98 = *(v59 + 328);
                  v99 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v99)
                  {
                    v99(v98, v255, value);
                  }

                  v97 = *(v59 + 72);
                }
              }

              if ((v97 > 8 || ((1 << v97) & 0x1C2) == 0) && (!*(v59 + 440) || !*(v59 + 448)) && gLogCategory_APSenderSessionAirPlay <= 60 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
              {
                apsession_ensureConnectedInternal_cold_14(a1);
              }

              APSSetFBOPropertyInt64();
              APSSetFBOPropertyInt64();
              v71 = cf;
              if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureTransportControlStreamCreated(APSenderSessionRef, APSenderSessionConnectionType)", 33554482, "[%{ptr}] created a new transport control stream [%{ptr}]\n", a1, *(v59 + 328));
              }

              CFRelease(v253);
              v23 = 0;
              goto LABEL_200;
            }

            apsession_ensureConnectedInternal_cold_15();
            v23 = 4294960568;
            v60 = v270;
            goto LABEL_199;
          }

          v23 = v78;
        }

        else
        {
          v23 = 4294954514;
        }
      }
    }

    else
    {
      v23 = 4294954514;
    }

    APSLogErrorAt();
LABEL_199:
    v71 = cf;
LABEL_200:
    if (buf.value)
    {
      CFRelease(buf.value);
    }

    if (v60)
    {
      CFRelease(v60);
    }

    if (v71)
    {
      CFRelease(v71);
    }

LABEL_206:
    v100 = *(v27 + 328);
    if (v100)
    {
      v58 = CFRetain(v100);
    }

    else
    {
      v58 = 0;
    }

    FigSimpleMutexUnlock();
    if (!v23)
    {
      if (apsession_isCancelled(a1))
      {
        apsession_ensureConnectedInternal_cold_19();
      }

      else
      {
        if (*(v27 + 64))
        {
          v103 = APSConnectionInterfaceManagerSelectInterface();
          if (v103)
          {
            v23 = v103;
            apsession_ensureConnectedInternal_cold_20(v103);
            goto LABEL_227;
          }
        }

        else if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
        {
          apsession_ensureConnectedInternal_cold_21(a1, v101, v102);
        }

        v104 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v104)
        {
          v23 = 4294954514;
LABEL_226:
          APSLogErrorAt();
          goto LABEL_227;
        }

        v105 = v104(v58);
        if (v105)
        {
          v23 = v105;
          goto LABEL_226;
        }

        if (apsession_isCancelled(a1))
        {
          apsession_ensureConnectedInternal_cold_22();
        }

        else
        {
          v106 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v106)
          {
            v23 = 4294954514;
            goto LABEL_226;
          }

          v107 = v106(v58);
          if (v107)
          {
            v23 = v107;
            goto LABEL_226;
          }

          if (!apsession_isCancelled(a1))
          {
            FigSimpleMutexLock();
            *(v27 + 304) = 1;
            FigSimpleMutexUnlock();
            v23 = 0;
            goto LABEL_227;
          }

          apsession_ensureConnectedInternal_cold_23();
        }
      }

      goto LABEL_299;
    }

    apsession_ensureConnectedInternal_cold_18(v23);
LABEL_227:
    FigSimpleMutexLock();
    *(v27 + 311) = 1;
    if (!v23)
    {
      v23 = *(v27 + 312);
    }

    *(v27 + 316) = v23;
    FigSimpleMutexUnlock();
    if (v23)
    {
      buf.value = 0;
      CMBaseObjectGetDerivedStorage();
      v108 = CFGetAllocator(a1);
      APEndpointDescriptionGetCMBaseObject();
      v110 = v109;
      v111 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v111)
      {
        v111(v110, @"TransportDevice", v108, &buf);
        if (buf.value)
        {
          if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APSenderSessionAirPlay, "void apsession_reconfirmDeviceIfNeeded(APSenderSessionRef, OSStatus)", 33554482, "[%{ptr}] Reconfirming device on connection failure %#m...\n", a1, v23);
          }

          APTransportDeviceReconfirm();
          if (buf.value)
          {
            CFRelease(buf.value);
          }
        }
      }

      if (*(v27 + 64) && *(v27 + 240))
      {
        APSConnectionInterfaceManagerReleaseInterfaceSelection();
        *(v27 + 240) = 0;
      }
    }

    if (v58)
    {
      CFRelease(v58);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (!v23)
    {
      break;
    }

    v113 = v23 == -71832 || v23 == 301031 || v23 == 200453;
    v114 = FallbackConnectionType;
    v116 = v113 || FallbackConnectionType == 0;
    v3 = 0x280FB0000uLL;
    if (gLogCategory_APSenderSessionAirPlay <= 50)
    {
      if (gLogCategory_APSenderSessionAirPlay != -1 || (v118 = _LogCategory_Initialize(), v114 = FallbackConnectionType, v118))
      {
        if (v24 > 3)
        {
          if (v24 == 4)
          {
            v117 = @"NAN";
          }

          else
          {
            v117 = @"UNKNOWN";
            if (v24 == 8)
            {
              v117 = @"DirectLink";
            }
          }
        }

        else
        {
          v117 = @"Infra";
          if (v24 != 1)
          {
            v117 = @"UNKNOWN";
            if (v24 == 2)
            {
              v117 = @"AWDL";
            }
          }
        }

        if (v114 == 4)
        {
          v119 = @"NAN";
        }

        else
        {
          v119 = @"AWDL";
          if (v114 != 2)
          {
            v119 = @"UNKNOWN";
            if (v114 == 1)
            {
              v119 = @"Infra";
            }
          }
        }

        LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_connectWithRetry(APSenderSessionRef, APSenderSessionConnectionType, APSenderSessionConnectionType, Boolean, APSenderSessionConnectionType *)", 33554482, "[%{ptr}] Connection over %@ failed%?{end}, trying again over %@\n", a1, v117, v116, v119);
        v114 = FallbackConnectionType;
      }
    }

    if (v114)
    {
      if (v23 != -71832 && v23 != 200453)
      {
        v24 = v114;
        if (v23 != 301031)
        {
          continue;
        }
      }
    }

    APSLogErrorAt();
    APSLogErrorAt();
    LODWORD(v24) = 1;
    goto LABEL_322;
  }

  v3 = 0x280FB0000;
LABEL_322:
  v296 = v23;
  mach_absolute_time();
  FigSimpleMutexLock();
  *(DerivedStorage + 520) = UpTicksToMilliseconds();
  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  if (*(DerivedStorage + 72) == 5)
  {
    v120 = LogCategoryCopyOSLogHandle();
    v121 = v120;
    if (v120)
    {
      v122 = v120;
    }

    else
    {
      v122 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v122))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v122, OS_SIGNPOST_EVENT, 0x2B8D08D8uLL, "AP_SIGNPOST_CAR_INITIALCONNECTION_COMPLETE", &unk_2222A918B, &buf, 2u);
    }

    if (v121)
    {
      os_release(v121);
    }
  }

  if (IsAppleInternalBuild())
  {
    v123 = *(v3 + 3424);
    if (v123 <= 50 && (v123 != -1 || _LogCategory_Initialize()))
    {
      v124 = *(DerivedStorage + 8);
      v125 = UpTicksToMilliseconds();
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureConnectedInternal(void *)", 33554482, "WHAPRO [%{ptr}] %###s %@ connected (if needed) (%lu ms)\n", a1, "OSStatus apsession_ensureConnectedInternal(void *)", v124, v125);
    }
  }

  if (v23)
  {
    if (v23 == -71832)
    {
      v228 = *(v3 + 3424);
      if (v228 > 50 || v228 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_685;
      }

LABEL_615:
      apsession_ensureConnectedInternal_cold_56(a1);
      goto LABEL_685;
    }

LABEL_628:
    APSLogErrorAt();
    goto LABEL_685;
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 488) = v24;
  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 72) == 5)
  {
    goto LABEL_353;
  }

  APSEventRecorderRecordEvent();
  mach_absolute_time();
  InitialInfo = apsession_fetchInitialInfo(a1);
  v296 = InitialInfo;
  mach_absolute_time();
  APSEventRecorderRecordEvent();
  if (IsAppleInternalBuild())
  {
    v127 = *(v3 + 3424);
    if (v127 <= 50 && (v127 != -1 || _LogCategory_Initialize()))
    {
      v128 = v24;
      v24 = *(DerivedStorage + 8);
      v129 = UpTicksToMilliseconds();
      v252 = v24;
      LODWORD(v24) = v128;
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureConnectedInternal(void *)", 33554482, "WHAPRO [%{ptr}] %###s %@ info fetched (%lu ms)\n", a1, "OSStatus apsession_ensureConnectedInternal(void *)", v252, v129);
    }
  }

  if (InitialInfo == -71831)
  {
    goto LABEL_685;
  }

  if (InitialInfo)
  {
    v130 = *(v3 + 3424);
    if (v130 <= 40 && (v130 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureConnectedInternal(void *)", 33554472, "[%{ptr}] Attempt to fetch initial info failed: %m", a1, InitialInfo);
    }

    v296 = 0;
  }

LABEL_353:
  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  if (*(DerivedStorage + 72) == 5)
  {
    v131 = LogCategoryCopyOSLogHandle();
    v132 = v131;
    if (v131)
    {
      v133 = v131;
    }

    else
    {
      v133 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v133))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v133, OS_SIGNPOST_EVENT, 0x2B8D0814uLL, "AP_SIGNPOST_CAR_PAIRING_START", &unk_2222A918B, &buf, 2u);
    }

    if (v132)
    {
      os_release(v132);
    }
  }

  v134 = CMBaseObjectGetDerivedStorage();
  v135 = APSGetFBOPropertyInt64();
  v136 = CMBaseObjectGetDerivedStorage();
  if (*(v136 + 72) == 10)
  {
    v283 = 0;
  }

  else if (*(v136 + 114))
  {
    v283 = 0;
  }

  else
  {
    v137 = APSGetFBOPropertyInt64() || APSGetFBOPropertyInt64() || apsession_getTransportsRequiringBroker(a1) != 0;
    v283 = v137;
  }

  LOBYTE(v300) = 0;
  if (APSGetFBOPropertyInt64() && (IsAppleInternalBuild() || APSSettingsGetInt64()))
  {
    buf.value = 0;
    APEndpointDescriptionGetCMBaseObject();
    v139 = v138;
    v140 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v140)
    {
      v140(v139, @"SerialNumber", *MEMORY[0x277CBECE8], &buf);
    }

    v141 = *(v3 + 3424);
    if (v141 <= 50 && (v141 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensurePaired(APSenderSessionRef, APSenderSessionConnectionType)", 33554482, "[%{ptr}] Pairing with %''@ S/N %@...\n", a1, *(v134 + 8), buf.value);
    }

    if (buf.value)
    {
      CFRelease(buf.value);
    }
  }

  v276 = v24;
  if (v283 && !v135)
  {
    apsession_ensureConnectedInternal_cold_24();
    v25 = 4294895469;
    goto LABEL_643;
  }

  v142 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (APSGetFBOPropertyInt64() || APSGetFBOPropertyInt64() || APSGetFBOPropertyInt64() || APSGetFBOPropertyInt64() || APSGetFBOPropertyInt64() == 2 || *(v142 + 432))
  {
    FigSimpleMutexUnlock();
    goto LABEL_391;
  }

  v227 = *(v142 + 72);
  FigSimpleMutexUnlock();
  if ((v227 - 7) >= 3)
  {
LABEL_565:
    v25 = 0;
    goto LABEL_643;
  }

LABEL_391:
  if (apsession_isCancelled(a1))
  {
    apsession_ensureConnectedInternal_cold_25();
    goto LABEL_643;
  }

  v143 = CMBaseObjectGetDerivedStorage();
  v144 = APSGetFBOPropertyInt64();
  v145 = APSGetFBOPropertyInt64();
  v146 = APSGetFBOPropertyInt64();
  buf.value = 0;
  if (v145 != 2)
  {
    if (v144)
    {
      if (v146 && !*(v143 + 192))
      {
        goto LABEL_399;
      }

      v154 = 0;
      v153 = 0;
      LODWORD(v144) = 0;
      goto LABEL_413;
    }

    goto LABEL_412;
  }

  if (!v144)
  {
    apsession_ensureConnectedInternal_cold_28();
LABEL_634:
    v154 = 0;
    v153 = 0;
    LODWORD(v144) = -71827;
    goto LABEL_413;
  }

  if (!v146)
  {
    apsession_ensureConnectedInternal_cold_27();
    goto LABEL_634;
  }

LABEL_399:
  ++*(v143 + 456);
  PairingClient = apsession_createPairingClient(a1, 1, 0, 0, v283, 0, 0, &buf);
  if (PairingClient)
  {
    LODWORD(v144) = PairingClient;
    apsession_ensureConnectedInternal_cold_26(PairingClient);
LABEL_412:
    v154 = 0;
    v153 = 0;
LABEL_413:
    v152 = 1;
    goto LABEL_415;
  }

  v144 = buf.value;
  v148 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v148)
  {
    LODWORD(v144) = -12782;
LABEL_410:
    if (v145 == 2)
    {
      LODWORD(v144) = -72279;
      APSLogErrorAt();
    }

    goto LABEL_412;
  }

  v149 = v148(v144, 0);
  LODWORD(v144) = v149;
  if (v149 == -71164 || v149 == -71145)
  {
    APSLogErrorAt();
    v154 = 0;
    v152 = 1;
    v153 = 1;
    goto LABEL_415;
  }

  if (v149)
  {
    goto LABEL_410;
  }

  FigSimpleMutexLock();
  v150 = *(v143 + 416);
  v151 = buf.value;
  *(v143 + 416) = buf.value;
  if (v151)
  {
    CFRetain(v151);
  }

  if (v150)
  {
    CFRelease(v150);
  }

  FigSimpleMutexUnlock();
  v152 = 0;
  v153 = 0;
  LODWORD(v144) = 0;
  v154 = 1;
LABEL_415:
  if (v145 == 2)
  {
    v155 = v154;
  }

  else
  {
    v155 = 1;
  }

  if (v144)
  {
    v155 = 1;
  }

  if (v155)
  {
    v144 = v144;
  }

  else
  {
    v144 = 4294895469;
  }

  if (v144)
  {
    v156 = v145 == 2;
  }

  else
  {
    v156 = 0;
  }

  if (v156)
  {
    v157 = 1;
  }

  else
  {
    v157 = v153;
  }

  v158 = buf.value;
  if (v144 || buf.value)
  {
    if (((v144 != 0) & v157) != 0)
    {
      v159 = 90;
    }

    else
    {
      v159 = 50;
    }

    if (v159 >= gLogCategory_APSenderSessionAirPlay)
    {
      if (gLogCategory_APSenderSessionAirPlay != -1 || (v161 = _LogCategory_Initialize(), v158 = buf.value, v161))
      {
        v160 = "succeeded";
        if (v144)
        {
          v160 = "failed";
        }

        LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_tryAccountOwnerPairVerifyIfApplicable(APSenderSessionRef, Boolean, Boolean *, Boolean *)", v159 | 0x2000000u, "[%{ptr}] Account owner pair verify with client [%{ptr}] %s%?{end}, error: %#m\n", a1, v158, v160, v144 == 0, v144);
        v158 = buf.value;
      }
    }

    LOBYTE(v300) = v154;
    if (v158)
    {
      CFRelease(v158);
    }
  }

  else
  {
    LOBYTE(v300) = v154;
  }

  if (!v152)
  {
    goto LABEL_637;
  }

  if (v144 && v157)
  {
    apsession_ensureConnectedInternal_cold_29(v144);
LABEL_637:
    v25 = v144;
    goto LABEL_643;
  }

  if (apsession_isCancelled(a1))
  {
    apsession_ensureConnectedInternal_cold_30();
    goto LABEL_643;
  }

  v162 = CMBaseObjectGetDerivedStorage();
  v163 = APSGetFBOPropertyInt64();
  v164 = APSGetFBOPropertyInt64();
  buf.value = 0;
  v297 = 0;
  v165 = v163 == 1 || *(v162 + 72) == 3;
  isTransientPairingSupported = apsession_isTransientPairingSupported(a1);
  v167 = *(v162 + 72);
  if (!isTransientPairingSupported)
  {
    v165 |= v167 == 10;
  }

  v168 = 0;
  v169 = 1;
  v170 = 0;
  v171 = 0;
  if (v167 == 7 || v167 == 9)
  {
    goto LABEL_493;
  }

  if (v167 != 8)
  {
LABEL_457:
    if (v167 != 10 && ((v165 & 1) == 0 && *(v162 + 192) || !APSGetFBOPropertyInt64()))
    {
      v168 = 0;
      v170 = 0;
LABEL_484:
      v171 = 0;
      goto LABEL_493;
    }

    ++*(v162 + 456);
    v174 = apsession_createPairingClient(a1, 0, 1, 0, v283, 0, 0, &v297);
    if (v174)
    {
      v171 = v174;
      apsession_ensureConnectedInternal_cold_32(v174);
      goto LABEL_492;
    }

    v175 = v297;
    v176 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v176)
    {
      v171 = v176(v175, &buf);
      if (!v171)
      {
        goto LABEL_477;
      }
    }

    else
    {
      v171 = -12782;
    }

    if (*(v162 + 72) == 8)
    {
      if (buf.value)
      {
        CFRelease(buf.value);
        buf.value = 0;
      }

      if (v297)
      {
        CFRelease(v297);
        v297 = 0;
      }

      ++*(v162 + 456);
      v177 = apsession_createPairingClient(a1, 0, 1, 1, v283, 0, 0, &v297);
      if (v177)
      {
        v171 = v177;
        apsession_ensureConnectedInternal_cold_33(v177);
        goto LABEL_492;
      }

      v178 = v297;
      v179 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v179)
      {
        v171 = -12782;
LABEL_487:
        if (*(v162 + 72) == 8)
        {
          v171 = -17602;
LABEL_489:
          APSLogErrorAt();
          v170 = 0;
          v168 = 1;
          goto LABEL_493;
        }

        if (v165)
        {
          v171 = -17602;
          APSLogErrorAt();
        }

LABEL_492:
        v168 = 0;
        v170 = 0;
        goto LABEL_493;
      }

      v171 = v179(v178, &buf);
    }

    if (v171 == -71164 || v171 == -71145)
    {
      goto LABEL_489;
    }

    if (!v171)
    {
LABEL_477:
      FigSimpleMutexLock();
      v180 = *(v162 + 416);
      v181 = v297;
      *(v162 + 416) = v297;
      if (v181)
      {
        CFRetain(v181);
      }

      if (v180)
      {
        CFRelease(v180);
      }

      FigSimpleMutexUnlock();
      v182 = *(v162 + 72);
      if (v182 > 8 || (v170 = 1, ((1 << v182) & 0x1C2) == 0))
      {
        v168 = 0;
        v225 = buf.value;
        v170 = 1;
        v169 = 0;
        v171 = 0;
        if (!buf.value || !v164)
        {
          goto LABEL_493;
        }

        v226 = *(v162 + 232);
        *(v162 + 232) = buf.value;
        CFRetain(v225);
        if (v226)
        {
          CFRelease(v226);
        }
      }

      v168 = 0;
      v169 = 0;
      goto LABEL_484;
    }

    goto LABEL_487;
  }

  if (APSGetFBOPropertyInt64())
  {
    v167 = *(v162 + 72);
    goto LABEL_457;
  }

  if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_ensureConnectedInternal_cold_31(a1, v172, v173);
  }

  v168 = 0;
  v170 = 0;
  v171 = 0;
LABEL_493:
  if (v170 & 1 | ((v165 & 1) == 0) | (v171 != 0))
  {
    v183 = v171;
  }

  else
  {
    v183 = 4294895469;
  }

  if ((v165 & (v183 != 0)) != 0)
  {
    v184 = 1;
  }

  else
  {
    v184 = v168;
  }

  v185 = v297;
  if (v183 || v297)
  {
    v186 = ((v183 != 0) & v184) != 0 ? 90 : 50;
    if (v186 >= gLogCategory_APSenderSessionAirPlay)
    {
      if (gLogCategory_APSenderSessionAirPlay != -1)
      {
        goto LABEL_506;
      }

      if (_LogCategory_Initialize())
      {
        v185 = v297;
LABEL_506:
        v187 = "succeeded";
        if (v183)
        {
          v187 = "failed";
        }

        LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_tryHKPairVerifyIfApplicable(APSenderSessionRef, Boolean, Boolean *, Boolean *)", v186 | 0x2000000u, "[%{ptr}] HK pair verify with client [%{ptr}] %s%?{end}, error: %#m\n", a1, v185, v187, v183 == 0, v183);
      }
    }
  }

  LOBYTE(v300) = v170;
  if (buf.value)
  {
    CFRelease(buf.value);
  }

  if (v297)
  {
    CFRelease(v297);
  }

  if (!v169)
  {
    goto LABEL_642;
  }

  if (v183 && v184)
  {
    apsession_ensureConnectedInternal_cold_34(v183);
LABEL_642:
    v25 = v183;
    goto LABEL_643;
  }

  if (apsession_isCancelled(a1))
  {
    apsession_ensureConnectedInternal_cold_35();
    goto LABEL_706;
  }

  v188 = CMBaseObjectGetDerivedStorage();
  v189 = APSGetFBOPropertyInt64();
  v190 = APSGetFBOPropertyInt64();
  v191 = APSGetFBOPropertyInt64();
  v192 = APSGetFBOPropertyInt64();
  v193 = apsession_isTransientPairingSupported(a1);
  v194 = *(v188 + 72);
  v196 = v194 != 9 && v194 != 7;
  v297 = 0;
  v302 = 0;
  v303[0] = 0;
  if (*(v188 + 192))
  {
    v197 = 0;
    v198 = 0;
    v144 = 0;
    v199 = 1;
    v200 = 1;
    goto LABEL_526;
  }

  allocatora = v193;
  v284 = v189;
  buf.value = 0;
  v202 = apsession_createPairingClient(a1, 0, 0, 0, 0, 0, 0, &buf);
  v203 = v202;
  v282 = v192;
  if (v202)
  {
    apsession_ensureConnectedInternal_cold_36(v202);
    v206 = 0;
    v209 = 90;
  }

  else
  {
    v204 = buf.value;
    v205 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v205)
    {
      v206 = v205(v204);
    }

    else
    {
      v206 = 0;
    }

    v209 = 50;
  }

  if (v209 >= gLogCategory_APSenderSessionAirPlay && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    v210 = "failed";
    if (!v203)
    {
      v210 = "succeeded";
    }

    v211 = "yes";
    if (!v206)
    {
      v211 = "no";
    }

    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "Boolean apsession_isPeerKnown(APSenderSessionRef)", v209 | 0x2000000u, "[%{ptr}] Peer known with client [%{ptr}] %s (isPeerKnown: %s)%?{end}, error: %#m\n", a1, buf.value, v210, v211, v203 == 0, v203);
  }

  if (buf.value)
  {
    CFRelease(buf.value);
  }

  v197 = 0;
  if (v190)
  {
    v214 = v191 == 0;
  }

  else
  {
    v214 = 1;
  }

  v215 = v214;
  if (v284)
  {
    v216 = 0;
  }

  else
  {
    v216 = v206 == 0;
  }

  v199 = 1;
  v198 = 0;
  v200 = 1;
  v144 = 0;
  if (!v216 && v215)
  {
    if (allocatora)
    {
      v217 = v282 == 0;
    }

    else
    {
      v217 = 1;
    }

    v218 = !v217;
    if (v218 & v196)
    {
      v197 = 0;
      v198 = 0;
      v144 = 0;
      goto LABEL_526;
    }

    apsession_copyAPPairingGroupInfo(a1, v303, &v302);
    ++*(v188 + 456);
    v219 = apsession_createPairingClient(a1, 0, 0, 0, v283, v303[0], v302, &v297);
    if (v219)
    {
      v144 = v219;
      apsession_ensureConnectedInternal_cold_37(v219);
    }

    else
    {
      v220 = v297;
      v221 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v221)
      {
        v197 = 0;
        v198 = 0;
        v144 = 4294954514;
        goto LABEL_526;
      }

      v222 = v221(v220, 0);
      v144 = v222;
      if (v222 == -71164 || v222 == -71145)
      {
        APSLogErrorAt();
        v197 = 0;
        v200 = 0;
        v198 = 1;
        goto LABEL_526;
      }

      if (!v222)
      {
        FigSimpleMutexLock();
        v223 = *(v188 + 416);
        v224 = v297;
        *(v188 + 416) = v297;
        if (v224)
        {
          CFRetain(v224);
        }

        if (v223)
        {
          CFRelease(v223);
        }

        FigSimpleMutexUnlock();
        v199 = 0;
        v198 = 0;
        v144 = 0;
        v197 = 1;
        goto LABEL_526;
      }
    }

    v197 = 0;
    v198 = 0;
  }

LABEL_526:
  if (v303[0])
  {
    CFRelease(v303[0]);
  }

  if (v302)
  {
    CFRelease(v302);
  }

  if (!v297)
  {
    v201 = 0;
    if (v144)
    {
      goto LABEL_538;
    }

LABEL_537:
    if (v201)
    {
      goto LABEL_538;
    }

    goto LABEL_556;
  }

  CFRelease(v297);
  v201 = v297;
  if (!v144)
  {
    goto LABEL_537;
  }

LABEL_538:
  if ((v198 & (v144 != 0)) != 0)
  {
    v207 = 90;
  }

  else
  {
    v207 = 50;
  }

  if (v207 >= gLogCategory_APSenderSessionAirPlay)
  {
    if (gLogCategory_APSenderSessionAirPlay != -1)
    {
      goto LABEL_543;
    }

    if (_LogCategory_Initialize())
    {
      v201 = v297;
LABEL_543:
      v208 = "succeeded";
      if (v144)
      {
        v208 = "failed";
      }

      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_tryAPPairVerifyIfApplicable(APSenderSessionRef, Boolean, Boolean *, Boolean *)", v207 | 0x2000000u, "[%{ptr}] AP pair verify with client [%{ptr}] %s%?{end}, error: %#m\n", a1, v201, v208, v144 == 0, v144);
    }
  }

LABEL_556:
  LOBYTE(v300) = v197;
  if (!v199)
  {
    v25 = v144;
    goto LABEL_643;
  }

  if (v144)
  {
    v212 = v200;
  }

  else
  {
    v212 = 1;
  }

  if ((v212 & 1) == 0)
  {
    apsession_ensureConnectedInternal_cold_38(v144);
    goto LABEL_637;
  }

  if (apsession_isCancelled(a1))
  {
    apsession_ensureConnectedInternal_cold_39();
    goto LABEL_706;
  }

  v213 = apsession_tryAPPairSetupAndVerify(a1, v276, v283, &v300);
  if (v213)
  {
    v25 = v213;
    apsession_ensureConnectedInternal_cold_40(v213);
  }

  else if (v300)
  {
    if (!apsession_isCancelled(a1))
    {
      goto LABEL_565;
    }

    apsession_ensureConnectedInternal_cold_41();
LABEL_706:
    v25 = 4294895464;
  }

  else
  {
    apsession_ensureConnectedInternal_cold_42();
    v25 = 4294895467;
  }

LABEL_643:
  FigSimpleMutexLock();
  CFDictionarySetInt64();
  FigSimpleMutexUnlock();
  v296 = v25;
  if (*(DerivedStorage + 176))
  {
    APSEventRecorderRecordEvent();
  }

  if (*(DerivedStorage + 72) == 5)
  {
    v229 = LogCategoryCopyOSLogHandle();
    v230 = v229;
    if (v229)
    {
      v231 = v229;
    }

    else
    {
      v231 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v231))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v231, OS_SIGNPOST_EVENT, 0x2B8D0818uLL, "AP_SIGNPOST_CAR_PAIRING_COMPLETE", &unk_2222A918B, &buf, 2u);
    }

    if (v230)
    {
      os_release(v230);
    }
  }

  if (v25)
  {
    apsession_ensureConnectedInternal_cold_43(v25);
LABEL_685:
    v26 = 0;
    goto LABEL_686;
  }

  v26 = v294;
  if (!v294)
  {
    apsession_copyTransportControlStream(a1, &v294);
    v26 = v294;
    if (!v294)
    {
      apsession_ensureConnectedInternal_cold_55();
      goto LABEL_688;
    }
  }

  v232 = *(DerivedStorage + 248);
  if (v232)
  {
    CFRelease(v232);
    *(DerivedStorage + 248) = 0;
  }

  v233 = *(DerivedStorage + 256);
  if (v233)
  {
    CFRelease(v233);
    *(DerivedStorage + 256) = 0;
  }

  v234 = *(DerivedStorage + 264);
  if (v234)
  {
    CFRelease(v234);
    *(DerivedStorage + 264) = 0;
  }

  v235 = *MEMORY[0x277CE5090];
  v236 = *MEMORY[0x277CBECE8];
  v237 = FigTransportStreamGetCMBaseObject();
  v238 = CMBaseObjectCopyProperty(v237, v235, v236, &v293);
  v296 = v238;
  if (v238)
  {
    apsession_ensureConnectedInternal_cold_44(v238);
    goto LABEL_685;
  }

  v239 = APSNetworkAddressCopyStringRepresentationWithFlags();
  v296 = v239;
  if (v239)
  {
    apsession_ensureConnectedInternal_cold_45(v239);
    goto LABEL_685;
  }

  v240 = *MEMORY[0x277CE5030];
  v241 = FigTransportStreamGetCMBaseObject();
  v242 = CMBaseObjectCopyProperty(v241, v240, v236, DerivedStorage + 256);
  v296 = v242;
  if (v242)
  {
    apsession_ensureConnectedInternal_cold_46(v242);
    goto LABEL_685;
  }

  v243 = *MEMORY[0x277CE5020];
  v244 = FigTransportStreamGetCMBaseObject();
  v245 = CMBaseObjectCopyProperty(v244, v243, v236, DerivedStorage + 264);
  v296 = v245;
  if (v245)
  {
    apsession_ensureConnectedInternal_cold_47(v245);
    goto LABEL_685;
  }

  if (*(DerivedStorage + 154))
  {
    v246 = apsession_ensureUsableLocalNetworkAddresses(a1);
    v296 = v246;
    if (v246)
    {
      apsession_ensureConnectedInternal_cold_48(v246);
      goto LABEL_685;
    }
  }

  if (!v280)
  {
LABEL_668:
    v26 = 0;
    goto LABEL_669;
  }

  v247 = apsession_ensureKeyHolderSetUp(a1);
  v296 = v247;
  if (v247)
  {
    apsession_ensureConnectedInternal_cold_49(v247);
    goto LABEL_685;
  }

  v296 = FigTransportStreamConfigureEncryption(v26, *(DerivedStorage + 224), @"Ctrl");
  if (!*(DerivedStorage + 384))
  {
    goto LABEL_668;
  }

  APSGetFBOPropertyInt64();
  if (v296)
  {
    apsession_ensureConnectedInternal_cold_50(v296);
    goto LABEL_685;
  }

  v248 = FigTransportStreamGetCMBaseObject();
  v249 = CMBaseObjectCopyProperty(v248, v240, v236, &v292);
  v296 = v249;
  if (v249)
  {
    apsession_ensureConnectedInternal_cold_51(v249);
    goto LABEL_685;
  }

  if (!v292)
  {
    apsession_ensureConnectedInternal_cold_54();
    goto LABEL_685;
  }

  v304.location = 0;
  v304.length = 28;
  CFDataGetBytes(v292, v304, buffer);
  SockAddrGetPort();
  v26 = CFDictionaryCreateMutable(v236, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v26)
  {
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetValue(v26, @"localSendsWithReadKey", *MEMORY[0x277CBED10]);
    v285 = a1;
    v286 = @"Ctrl";
    v287 = v26;
    v250 = apsession_broadcastKeysForDiagnosticsDataInternal(&v285);
    v296 = v250;
    if (v250)
    {
      apsession_ensureConnectedInternal_cold_52(v250);
    }

    else
    {
LABEL_669:
      FigSimpleMutexLock();
      *(DerivedStorage + 305) = 1;
      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }
  }

  else
  {
    apsession_ensureConnectedInternal_cold_53();
  }

LABEL_686:
  if (v294)
  {
    CFRelease(v294);
  }

LABEL_688:
  if (v293)
  {
    CFRelease(v293);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v292)
  {
    CFRelease(v292);
  }

  if (!v296)
  {
    return 0;
  }

  apsession_recordActivationMessageTiming(a1);
  apsession_ensureDisconnected(a1);
  return v296;
}

uint64_t apsession_ensureSenderNetworkClockStarted(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *buffer = 0;
  v14 = 0;
  v16 = 0;
  v15 = 0;
  if (apsession_isCancelled(a1))
  {
    v4 = 0;
    v11 = 4294895464;
    goto LABEL_26;
  }

  if (*(DerivedStorage + 194))
  {
    v4 = 0;
    goto LABEL_17;
  }

  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 328);
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  FigSimpleMutexUnlock();
  if (gLogCategory_APSenderSessionAirPlay <= 40 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_ensureSenderNetworkClockStarted_cold_1(DerivedStorage, a1, v5);
  }

  v6 = *(DerivedStorage + 80);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v7)
  {
    v11 = 4294954514;
LABEL_25:
    APSLogErrorAt();
LABEL_26:
    if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureSenderNetworkClockStarted(APSenderSessionRef)", 33554522, "### [%{ptr}] Failed to set up senderNetworkClock [%{ptr}], err = %#m\n", a1, *(DerivedStorage + 80), v11);
    }

    apsession_stopSenderNetworkClockIfNeeded(a1);
    if (v4)
    {
      goto LABEL_22;
    }

    return v11;
  }

  v8 = v7(v6, a1);
  if (v8)
  {
    v11 = v8;
    goto LABEL_25;
  }

  *(DerivedStorage + 194) = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v9 = APSGetFBOPropertyInt64();
  *(DerivedStorage + 272) = v9;
  if (gLogCategory_APSenderSessionAirPlay <= 30)
  {
    if (gLogCategory_APSenderSessionAirPlay == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v9 = *(DerivedStorage + 272);
    }

    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureSenderNetworkClockStarted(APSenderSessionRef)", 33554462, "[%{ptr}] senderNetworkClock timingPort = %d\n", a1, v9);
  }

LABEL_15:
  if (*(DerivedStorage + 24) == @"PTP")
  {
    v17.location = 0;
    v17.length = 28;
    CFDataGetBytes(*(DerivedStorage + 256), v17, buffer);
    updated = APSNetworkClockDetermineAndSetOrUpdateLocalPeerInfo();
    if (updated)
    {
      v11 = updated;
      apsession_ensureSenderNetworkClockStarted_cold_2(updated);
      goto LABEL_26;
    }
  }

LABEL_17:
  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_ensureSenderNetworkClockStarted(APSenderSessionRef)", 33554482, "[%{ptr}] Network clock [%{ptr}] started\n", a1, *(DerivedStorage + 80));
  }

  v11 = 0;
  if (v4)
  {
LABEL_22:
    CFRelease(v4);
  }

  return v11;
}

uint64_t apsession_addPeerToNetworkClock(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage[33])
  {
    v7 = 4294895467;
    apsession_addPeerToNetworkClock_cold_4();
    return v7;
  }

  v3 = DerivedStorage;
  if (DerivedStorage[35])
  {
    updated = APSNetworkClockAddOrUpdatePeerFromSerializablePeerDictionary();
    if (updated)
    {
      v7 = updated;
      apsession_addPeerToNetworkClock_cold_1(updated);
      return v7;
    }

    if (gLogCategory_APSenderSessionAirPlay > 30 || gLogCategory_APSenderSessionAirPlay == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

    v5 = v3[35];
  }

  else
  {
    if (!DerivedStorage[31])
    {
      v7 = 4294895467;
      apsession_addPeerToNetworkClock_cold_3();
      return v7;
    }

    v6 = APSNetworkClockAddOrUpdatePeerWithAddressAndInterfaceNameStrings();
    if (v6)
    {
      v7 = v6;
      apsession_addPeerToNetworkClock_cold_2(v6);
      return v7;
    }

    if (gLogCategory_APSenderSessionAirPlay > 30 || gLogCategory_APSenderSessionAirPlay == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

    v5 = v3[31];
  }

  LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_addPeerToNetworkClock(APSenderSessionRef)", 33554462, "[%{ptr}] Added peer %@ to sender network clock\n", a1, v5);
  return 0;
}

uint64_t apsession_ensureEventStreamCreated(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  if (!a2)
  {
    return 0;
  }

  v5 = DerivedStorage;
  v6 = APSGetFBOPropertyInt64();
  apsession_copyTransportSession(a1, &v42);
  v7 = v42;
  if (!v42)
  {
    v22 = 4294895475;
    apsession_ensureEventStreamCreated_cold_13();
    return v22;
  }

  if (v6)
  {
    v6 = *(v5 + 224);
  }

  LODWORD(v43[0]) = 0;
  v8 = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v21 = 0;
    v22 = 4294895476;
    goto LABEL_74;
  }

  v10 = Mutable;
  if (*(v8 + 72) == 5)
  {
    v11 = APSGetFBOPropertyInt64();
    if (LODWORD(v43[0]))
    {
      apsession_ensureEventStreamCreated_cold_1(LODWORD(v43[0]));
      goto LABEL_26;
    }

    if (v11 == 2)
    {
      CFDictionarySetValue(v10, *MEMORY[0x277CE4FC0], *MEMORY[0x277CBED28]);
    }
  }

  CFDictionarySetInt64();
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v12)
  {
    v13 = 4294954514;
    LODWORD(v43[0]) = -12782;
    goto LABEL_21;
  }

  v13 = v12(v7, 1702260340, v10, cf);
  LODWORD(v43[0]) = v13;
  if (v13)
  {
LABEL_21:
    apsession_ensureEventStreamCreated_cold_5(v13);
    goto LABEL_26;
  }

  v14 = cf[0];
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v15)
  {
    v16 = 4294954514;
    LODWORD(v43[0]) = -12782;
    goto LABEL_23;
  }

  v16 = v15(v14, apsession_eventStreamMessageCallback, apsession_eventStreamCreateReplyCallback, a1);
  LODWORD(v43[0]) = v16;
  if (v16)
  {
LABEL_23:
    apsession_ensureEventStreamCreated_cold_4(v16);
    goto LABEL_26;
  }

  v17 = APSSetFBOPropertyInt64();
  LODWORD(v43[0]) = v17;
  if (v17)
  {
    apsession_ensureEventStreamCreated_cold_2(v17);
  }

  else
  {
    if (!v6)
    {
LABEL_18:
      v21 = cf[0];
      cf[0] = 0;
      goto LABEL_27;
    }

    v18 = cf[0];
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v19)
    {
      v20 = v19(v18, v6, @"Events");
      LODWORD(v43[0]) = v20;
      if (!v20)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v20 = 4294954514;
      LODWORD(v43[0]) = -12782;
    }

    apsession_ensureEventStreamCreated_cold_3(v20);
  }

LABEL_26:
  v21 = 0;
LABEL_27:
  CFRelease(v10);
  if (cf[0])
  {
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v24 = CMBaseObject;
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v25)
      {
        v25(v24);
      }
    }

    CFRelease(cf[0]);
  }

  v22 = LODWORD(v43[0]);
  if (!LODWORD(v43[0]))
  {
    v26 = FigSimpleMutexLock();
    v28 = *(v5 + 336);
    *(v5 + 336) = v21;
    if (v21)
    {
      v26 = CFRetain(v21);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    APSenderSessionMessageSendTimeout(v26, v27);
    APSSetFBOPropertyInt64();
    FigSimpleMutexUnlock();
    memset(cf, 0, sizeof(cf));
    v46 = 0;
    theDict = 0;
    v29 = CMBaseObjectGetDerivedStorage();
    if (!v21)
    {
      apsession_ensureEventStreamCreated_cold_11();
      goto LABEL_62;
    }

    v30 = v29;
    v31 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v31)
    {
      v32 = v31(v21);
      v47 = v32;
      if (!v32)
      {
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 96);
        if (v33)
        {
          v34 = v33(v21, &theDict);
          v47 = v34;
          if (!v34)
          {
            v35 = APSGetFBOPropertyInt64();
            if (*(v30 + 384) && v35)
            {
              CFDictionaryGetInt64();
              v36 = v47;
              if (v47 == -6727 || !v47)
              {
                v47 = 0;
                Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CE5030]);
                if (Value)
                {
                  v48.location = 0;
                  v48.length = 28;
                  CFDataGetBytes(Value, v48, cf);
                  SockAddrGetPort();
                }

                else if (gLogCategory_APSenderSessionAirPlay <= 60 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
                {
                  apsession_ensureEventStreamCreated_cold_6(a1);
                }

                v38 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v38)
                {
                  v39 = v38;
                  CFDictionarySetInt64();
                  CFDictionarySetInt64();
                  CFDictionarySetValue(v39, @"localSendsWithReadKey", *MEMORY[0x277CBED28]);
                  v43[0] = a1;
                  v43[1] = @"Events";
                  v43[2] = v39;
                  v40 = apsession_broadcastKeysForDiagnosticsDataInternal(v43);
                  v47 = v40;
                  if (v40)
                  {
                    apsession_ensureEventStreamCreated_cold_7(v40);
                  }

                  CFRelease(v39);
                }

                else
                {
                  apsession_ensureEventStreamCreated_cold_8();
                }

                goto LABEL_62;
              }

              if (gLogCategory_APSenderSessionAirPlay <= 60)
              {
                if (gLogCategory_APSenderSessionAirPlay == -1)
                {
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_62;
                  }

                  v36 = v47;
                }
              }
            }

LABEL_62:
            if (theDict)
            {
              CFRelease(theDict);
            }

            v22 = v47;
            if (v47)
            {
              apsession_ensureEventStreamCreated_cold_12(v47);
            }

            goto LABEL_66;
          }
        }

        else
        {
          v34 = 4294954514;
          v47 = -12782;
        }

        apsession_ensureEventStreamCreated_cold_9(v34);
        goto LABEL_62;
      }
    }

    else
    {
      v32 = 4294954514;
      v47 = -12782;
    }

    apsession_ensureEventStreamCreated_cold_10(v32);
    goto LABEL_62;
  }

LABEL_74:
  APSLogErrorAt();
LABEL_66:
  CFRelease(v7);
  if (v21)
  {
    CFRelease(v21);
  }

  return v22;
}

uint64_t apsession_fetchInitialInfo(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_fetchInitialInfo_cold_1(a1);
  }

  Info = apsession_fetchInfo(a1, 1, 0, 0);
  v3 = Info;
  if (Info)
  {
    apsession_fetchInitialInfo_cold_2(Info);
  }

  return v3;
}

uint64_t FigTransportStreamConfigureEncryption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t apsession_broadcastKeysForDiagnosticsDataInternal(uint64_t *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v55 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v53 = 0;
  theData = 0;
  propertyList = 0;
  *buffer = 0;
  v49 = 0;
  v51 = 0;
  v50 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = -1;
  v42 = -1;
  v40 = 0;
  v41 = 0;
  cf = 0;
  if (!*(DerivedStorage + 384))
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_20();
    goto LABEL_50;
  }

  v3 = DerivedStorage;
  if (!*(DerivedStorage + 224))
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_19();
    goto LABEL_50;
  }

  if (!*(DerivedStorage + 248))
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_18();
    goto LABEL_50;
  }

  if (!*(DerivedStorage + 256))
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_17();
    goto LABEL_50;
  }

  if (!*(DerivedStorage + 264))
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_16();
    goto LABEL_50;
  }

  if (!a1[2])
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_15();
    goto LABEL_50;
  }

  APEndpointDescriptionGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v8 = 4294954514;
    v55 = -12782;
    goto LABEL_43;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = v6(v5, @"Name", *MEMORY[0x277CBECE8], &v40);
  v55 = v8;
  if (v8)
  {
LABEL_43:
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_14(v8);
LABEL_50:
    Data = 0;
    goto LABEL_51;
  }

  APEndpointDescriptionGetCMBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v12 = 4294954514;
    v55 = -12782;
    goto LABEL_45;
  }

  v12 = v11(v10, @"DeviceID", v7, &cf);
  v55 = v12;
  if (v12)
  {
LABEL_45:
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_13(v12);
    goto LABEL_50;
  }

  v13 = *(v3 + 224);
  v14 = a1[1];
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v15)
  {
    v16 = 4294954514;
    v55 = -12782;
    goto LABEL_47;
  }

  v16 = v15(v13, v14, 0, &theData, 0, &v53);
  v55 = v16;
  if (v16)
  {
LABEL_47:
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_12(v16);
    goto LABEL_50;
  }

  if (CFDataGetLength(theData) <= 31)
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_11();
    goto LABEL_50;
  }

  if (CFDataGetLength(v53) <= 31)
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_10();
    goto LABEL_50;
  }

  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v58.location = 0;
  v58.length = 28;
  CFDataGetBytes(*(v3 + 256), v58, buffer);
  if (buffer[1] != 2 && buffer[1] != 30)
  {
    APSLogErrorAt();
    Data = 0;
    v55 = -71821;
    goto LABEL_51;
  }

  v17 = SockAddrToString();
  v55 = v17;
  if (v17)
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_1(v17);
    goto LABEL_50;
  }

  APSGetDeviceID();
  if (v55)
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_2(v55);
    goto LABEL_50;
  }

  GestaltGetData();
  if (v55)
  {
    LOBYTE(v44) = 0;
  }

  APEndpointDescriptionGetCMBaseObject();
  v19 = v18;
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v20)
  {
    v21 = 4294954514;
    v55 = -12782;
    goto LABEL_49;
  }

  v21 = v20(v19, @"MACAddress", v7, &v41);
  v55 = v21;
  if (v21)
  {
LABEL_49:
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_9(v21);
    goto LABEL_50;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v23 = CFDataGetBytePtr(v53);
  v24 = *(v3 + 248);
  v25 = CFDataGetBytePtr(v41);
  v26 = *(v3 + 72);
  if (v26 - 1) < 8 && ((0xE1u >> (v26 - 1)))
  {
    v27 = @"RC";
  }

  else
  {
    v28 = @"AP";
    if (v26 == 5)
    {
      v28 = @"CP";
    }

    if (v26 == 10)
    {
      v27 = @"SP";
    }

    else
    {
      v27 = v28;
    }
  }

  v38 = v27;
  v37 = cf;
  v36 = v40;
  v35 = v42;
  v34 = v25;
  Formatted = CFPropertyListCreateFormatted();
  v55 = Formatted;
  if (Formatted)
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_3(Formatted);
    goto LABEL_50;
  }

  if (FigCFDictionaryGetInt32IfPresent())
  {
    appended = CFPropertyListAppendFormatted(0, propertyList, "%kO=%i", @"LocalPort", v43, @"ReadKey", BytePtr, 32, @"WriteKey", v23, 32, @"LocalIPAddress", v56, @"LocalMACAddress", &v46, @"LocalWiFiMACAddress", &v44, @"LocalSendsWithReadKey", 0, @"RemoteIPAddress", v24, @"RemoteMACAddress", v34, @"RemotePort", v35, @"EndpointName", v36, @"DeviceID", v37, @"SessionType", v38);
    v55 = appended;
    if (appended)
    {
      apsession_broadcastKeysForDiagnosticsDataInternal_cold_4(appended);
      goto LABEL_50;
    }
  }

  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_5(a1, &propertyList);
  }

  Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    if (CFGetCString())
    {
      v32 = APTDiagnosticMulticastDataToAllHosts();
      v55 = v32;
      if (v32)
      {
        apsession_broadcastKeysForDiagnosticsDataInternal_cold_6(v32);
      }
    }

    else
    {
      apsession_broadcastKeysForDiagnosticsDataInternal_cold_7();
    }
  }

  else
  {
    apsession_broadcastKeysForDiagnosticsDataInternal_cold_8(&v55);
  }

LABEL_51:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (propertyList)
  {
    CFRelease(propertyList);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  return v55;
}

uint64_t apsession_isTransportTypeAvailable(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  APEndpointDescriptionGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(v6, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
    if (!v8)
    {
      if (a2 <= 3)
      {
        if (a2 == 1 || a2 == 2)
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }

      if (a2 == 4)
      {
        apsession_supportsLowLatencyNAN(*(DerivedStorage + 56));
      }

      else if (a2 != 8)
      {
LABEL_9:
        if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSenderSessionAirPlay, "Boolean apsession_isTransportTypeAvailable(APSenderSessionRef, APSenderSessionConnectionType)", 33554522, "[%{ptr}] %###s: unknown connection type %d\n", a1, "Boolean apsession_isTransportTypeAvailable(APSenderSessionRef, APSenderSessionConnectionType)", a2);
        }

        goto LABEL_18;
      }

LABEL_14:
      IsReachable = APTransportDeviceIsReachable();
      goto LABEL_19;
    }
  }

  else
  {
    v8 = 4294954514;
  }

  apsession_isTransportTypeAvailable_cold_1(v8);
LABEL_18:
  IsReachable = 0;
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  return IsReachable;
}

uint64_t apsession_controlStreamMessageCallback(const void *a1, unsigned int a2, uint64_t a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

void apsession_controlStreamMessageCallbackInternal(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 1651470958)
  {
    if (v2 == 1684628836)
    {
      apsession_handleTransportStreamDisconnected(*(a1 + 16), *a1);
      goto LABEL_8;
    }

    if (gLogCategory_APSenderSessionAirPlay <= 50)
    {
      if (gLogCategory_APSenderSessionAirPlay != -1)
      {
LABEL_6:
        LogPrintF(&gLogCategory_APSenderSessionAirPlay, "void apsession_controlStreamMessageCallbackInternal(void *)", 33554482, "[%{ptr}] Received unhandled message %'C from control stream.\n", *(a1 + 16), v2);
        goto LABEL_8;
      }

      if (_LogCategory_Initialize())
      {
        v2 = *(a1 + 8);
        goto LABEL_6;
      }
    }
  }

LABEL_8:
  CFRelease(*(a1 + 16));
  v3 = *a1;

  CFRelease(v3);
}

void apsession_handleTransportStreamDisconnected(void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "void apsession_handleTransportStreamDisconnected(APSenderSessionRef, FigTransportStreamRef)", 33554522, "[%{ptr}] Transport Stream %{ptr} disconnected\n", a1, a2);
  }

  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 184), a1, apsession_handleDeferredTeardownControlStream);

  apsession_postFailedNotification(a1, -16613, @"InProgress");
}

void apsession_handleDeferredTeardownControlStream(const void *a1)
{
  apsession_disconnectControlStream(a1);

  CFRelease(a1);
}

uint64_t apsession_tryAPPairSetupAndVerify(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v4 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  isTransientPairingSupported = apsession_isTransientPairingSupported(a1);
  v8 = APSGetFBOPropertyInt64();
  v9 = APSGetFBOPropertyInt64();
  v65 = APSGetFBOPropertyInt64();
  v69 = *(DerivedStorage + 72);
  v75 = 0;
  v76 = 0;
  v74 = 0;
  v72 = 0;
  cf = 0;
  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_tryAPPairSetupAndVerify_cold_1(v4, DerivedStorage, a1);
  }

  v10 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v11 = APSGetFBOPropertyInt64();
  if (APSGetFBOPropertyInt64() || *(v10 + 432))
  {
    v13 = 1;
    goto LABEL_20;
  }

  v67 = v4;
  v12 = *(v10 + 72);
  v13 = 1;
  if (v12 == 7)
  {
LABEL_20:
    v17 = 1;
LABEL_21:
    v71 = v17;
    goto LABEL_22;
  }

  v71 = 1;
  if (v12 != 9)
  {
    if (!APSGetFBOPropertyInt64())
    {
      v14 = APSGetFBOPropertyInt64();
      v13 = 0;
      v17 = v67 == 2 && v11 == 0 || v14 != 0;
      goto LABEL_21;
    }

    v13 = 0;
    goto LABEL_20;
  }

LABEL_22:
  FigSimpleMutexUnlock();
  v18 = 0;
  if (isTransientPairingSupported && (v13 & 1) == 0)
  {
    v18 = ((v8 | v9) != 0) | v71 ^ 1;
  }

  v19 = v18 & 1;
  FigSimpleMutexLock();
  v20 = *(DerivedStorage + 392);
  if (!v20)
  {
    v21 = v9;
    v22 = 0;
LABEL_28:
    v24 = 0;
    goto LABEL_30;
  }

  v21 = v9;
  v22 = CFStringGetLength(v20) != 0;
  v23 = *(DerivedStorage + 392);
  if (!v23)
  {
    goto LABEL_28;
  }

  v24 = CFRetain(v23);
LABEL_30:
  isBrokerAssistedConnection = apsession_isBrokerAssistedConnection(a1);
  v64 = *(DerivedStorage + 464);
  v63 = *(DerivedStorage + 472);
  v26 = *MEMORY[0x277CBED28];
  v27 = *MEMORY[0x277CBED10];
  v68 = v19;
  if (v19)
  {
    v28 = *MEMORY[0x277CBED28];
  }

  else
  {
    v28 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(*(DerivedStorage + 496), @"transientPairing", v28);
  if (v71)
  {
    v29 = v26;
  }

  else
  {
    v29 = v27;
  }

  CFDictionarySetValue(*(DerivedStorage + 496), @"pairingRequiresCode", v29);
  FigSimpleMutexUnlock();
  if (v22)
  {
    v30 = v69;
    if (isBrokerAssistedConnection)
    {
      v31 = 1;
    }

    else
    {
      v31 = v69 == 6;
    }

    v32 = (v21 == 0) & ~v13;
    if (v31)
    {
      v32 = 1;
    }

    v33 = 0x280FB0000;
  }

  else
  {
    v32 = 0;
    v33 = 0x280FB0000uLL;
    v30 = v69;
  }

  if ((v71 ^ 1 | v32))
  {
    goto LABEL_90;
  }

  if (v30 == 6)
  {
    v34 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v35 = *(v34 + 328);
    if (v35)
    {
      v36 = CFRetain(v35);
      FigSimpleMutexUnlock();
      if (v36)
      {
        v37 = *(v33 + 3424);
        if (v37 <= 50 && (v37 != -1 || _LogCategory_Initialize()))
        {
          apsession_tryAPPairSetupAndVerify_cold_2(a1);
        }

        v38 = APTransportStreamSendPlistMessageCreatingPlistReply();
        if (v38)
        {
          v39 = v38;
          v40 = 0;
          goto LABEL_54;
        }

        CFRelease(v36);
        goto LABEL_89;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    apsession_tryAPPairSetupAndVerify_cold_4();
    v36 = 0;
    v40 = 1;
    v39 = 4294895467;
LABEL_54:
    v41 = *(v33 + 3424);
    if (v41 <= 50 && (v41 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_sendEnsurePairPIN(APSenderSessionRef)", 33554482, "[%{ptr}] Failed to send ensure pair PIN request due to error: %#m.\n", a1, v39);
    }

    if ((v40 & 1) == 0)
    {
      CFRelease(v36);
    }

    goto LABEL_60;
  }

LABEL_89:
  if (*(DerivedStorage + 113))
  {
    apsession_tryAPPairSetupAndVerify_cold_3();
    v42 = 0;
    v39 = 4294949696;
    goto LABEL_62;
  }

LABEL_90:
  apsession_copyAPPairingGroupInfo(a1, &cf, &v72);
  ++*(DerivedStorage + 456);
  v47 = apsession_createPairingClient(a1, 0, 0, 0, a3, cf, v72, &v76);
  if (v47)
  {
    v39 = v47;
    apsession_tryAPPairSetupAndVerify_cold_5(v47);
    goto LABEL_61;
  }

  APSEventRecorderRecordEvent();
  v48 = v76;
  v49 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v49)
  {
    v39 = v49(v48, v24, v71, v19, v64, v63, &v75, &v74, 0, 0);
  }

  else
  {
    v39 = 4294954514;
  }

  APSEventRecorderRecordEvent();
  *(DerivedStorage + 192) = v39 != 0;
  if (v39)
  {
    apsession_tryAPPairSetupAndVerify_cold_6(v39);
    goto LABEL_61;
  }

  if (!v65 && (v68 & 1) == 0)
  {
    v50 = v74;
    v51 = v75;
    CMBaseObjectGetDerivedStorage();
    if (v51)
    {
      APEndpointDescriptionGetCMBaseObject();
      v53 = v52;
      v54 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v54)
      {
        v54(v53, @"PairingPeerCUAirPlayIdentifier", v51);
      }
    }

    if (v50)
    {
      APEndpointDescriptionGetCMBaseObject();
      v56 = v55;
      v57 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v57)
      {
        v57(v56, @"PairingPeerPublicKey", v50);
      }
    }
  }

  if ((v68 & 1) == 0)
  {
    ++*(DerivedStorage + 456);
  }

  v58 = v76;
  v59 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v59)
  {
    v39 = 4294954514;
LABEL_60:
    APSLogErrorAt();
LABEL_61:
    v42 = 0;
    goto LABEL_62;
  }

  v60 = v59(v58, 0);
  if (v60)
  {
    v39 = v60;
    goto LABEL_60;
  }

  FigSimpleMutexLock();
  v61 = *(DerivedStorage + 416);
  v62 = v76;
  *(DerivedStorage + 416) = v76;
  if (v62)
  {
    CFRetain(v62);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  FigSimpleMutexUnlock();
  v39 = 0;
  v42 = 1;
LABEL_62:
  if (a4)
  {
    *a4 = v42;
  }

  if (v39)
  {
    v43 = 90;
  }

  else
  {
    v43 = 50;
  }

  v44 = *(v33 + 3424);
  if (v43 >= v44 && (v44 != -1 || _LogCategory_Initialize()))
  {
    v45 = "failed";
    if (!v39)
    {
      v45 = "succeeded";
    }

    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_tryAPPairSetupAndVerify(APSenderSessionRef, APSenderSessionConnectionType, Boolean, Boolean *)", v43 | 0x2000000u, "[%{ptr}] Pair setup with client [%{ptr}] %s%?{end}, error: %#m\n", a1, v76, v45, v39 == 0, v39);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  return v39;
}

uint64_t apsession_createPairingClient(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, const void *a6, const void *a7, CFTypeRef *a8)
{
  v13 = a3;
  v14 = a2;
  v64 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v53 = 0;
  cf = 0;
  if (!a8)
  {
    apsession_createPairingClient_cold_5();
    goto LABEL_58;
  }

  v16 = DerivedStorage;
  v17 = APSGetFBOPropertyInt64();
  v18 = APSGetFBOPropertyInt64();
  v19 = *(v16 + 72);
  v21 = v19 == 9 || v19 == 7;
  if (v13)
  {
    v22 = v19 == 8;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v48 = v23;
  v49 = v21;
  v57 = 0;
  v25 = v19 != 5 && v18 != 0;
  v52 = v25;
  v56 = 0;
  v55 = 0;
  APSGetDeviceID();
  v50 = a7;
  v51 = a6;
  HardwareAddressToCString();
  v26 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v26)
  {
    v60 = 0;
    v59 = 0;
    v61 = v55;
    v62 = v56;
    UUIDtoCString();
    v27 = CFStringCreateWithCString(0, v58, 0x8000100u);
    if (!v27)
    {
      apsession_createPairingClient_cold_2(&v57, v26);
      v26 = 0;
    }

    *v58 = v57;
    if (!v57)
    {
      v47 = a5;
      v28 = a4;
      v29 = *MEMORY[0x277CBECE8];
      if (v17)
      {
        if (v52)
        {
          APEndpointDescriptionGetCMBaseObject();
          v31 = v30;
          v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v32)
          {
            v33 = kAPEndpointDescriptionProperty_PairingPeerCUSystemIdentifier;
LABEL_32:
            v35 = *v33;
            p_cf = &cf;
            goto LABEL_33;
          }
        }

        else
        {
          APEndpointDescriptionGetCMBaseObject();
          v31 = v37;
          v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v32)
          {
            v33 = kAPEndpointDescriptionProperty_PairingPeerCUAirPlayIdentifier;
            goto LABEL_32;
          }
        }
      }

      else
      {
        APEndpointDescriptionGetCMBaseObject();
        v31 = v34;
        v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v32)
        {
          v35 = @"PairingPeerPublicKey";
          p_cf = &v53;
LABEL_33:
          v32(v31, v35, v29, p_cf);
        }
      }

      FigSimpleMutexLock();
      v40 = *(v16 + 328);
      if (v40)
      {
        if (v17)
        {
          v41 = APSGetFBOPropertyInt64();
          if (*v58)
          {
            v42 = 0;
          }

          else
          {
            v42 = v41 == 32;
          }

          v43 = v42;
          v44 = APPairingClientCoreUtilsCreate(v29, v27, *(v16 + 113), v52, v49, v14, v13, v48, v28, v47, v43, cf, v51, v50, *(v16 + 328), a8);
        }

        else
        {
          v44 = APPairingClientLegacyCreate(v29, v26, v53, v40, a8);
        }

        *v58 = v44;
      }

      else
      {
        if (gLogCategory_APSenderSessionAirPlay <= 90 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
        {
          apsession_createPairingClient_cold_3(a1, v38, v39);
        }

        *v58 = -71829;
      }

      FigSimpleMutexUnlock();
      if (*v58)
      {
        apsession_createPairingClient_cold_4(*v58);
      }

      else if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_createPairingClient(APSenderSessionRef, Boolean, Boolean, Boolean, Boolean, CFStringRef, CFDataRef, APPairingClientRef *)", 33554482, "[%{ptr}] Created pairing client [%{ptr}]\n", a1, *a8);
      }

      goto LABEL_54;
    }
  }

  else
  {
    APSLogErrorAt();
    v27 = 0;
    *v58 = -71820;
  }

  APSLogErrorAt();
LABEL_54:
  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_58:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  return *v58;
}

uint64_t apsession_isTransientPairingSupported(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LOBYTE(result) = APSGetFBOPropertyInt64() != 0;
  if (*(DerivedStorage + 72) == 10)
  {
    LOBYTE(result) = APSSettingsGetIntWithDefault();
  }

  return result;
}

uint64_t APAuthenticationClientAuthenticateEndpoint(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t apsession_requestControlSetupWithResponse(uint64_t a1, void *a2, int a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  cf = 0;
  apsession_copyTransportControlStream(a1, &v17);
  v9 = v17;
  if (v17)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = MEMORY[0x277CBED28];
      if (!a3)
      {
        v12 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(Mutable, @"updateSessionRequest", *v12);
      *(DerivedStorage + 155) = APSSettingsIsFeatureEnabled();
      appended = apsession_appendControlSetupRequest(a1, v11, a2);
      if (appended)
      {
        v15 = appended;
        apsession_requestControlSetupWithResponse_cold_1(appended);
      }

      else
      {
        if (gLogCategory_APSenderSessionAirPlay <= 10 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_requestControlSetupWithResponse(APSenderSessionRef, CFArrayRef, Boolean, CFDictionaryRef *)", 33554442, "[%{ptr}] Setup request to %''@: %@\n", a1, *(DerivedStorage + 8), v11);
        }

        v14 = APTransportStreamSendPlistMessageCreatingPlistReply();
        if (v14)
        {
          v15 = v14;
          apsession_requestControlSetupWithResponse_cold_2(v14);
        }

        else
        {
          if (gLogCategory_APSenderSessionAirPlay <= 10 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_requestControlSetupWithResponse(APSenderSessionRef, CFArrayRef, Boolean, CFDictionaryRef *)", 33554442, "[%{ptr}] Setup response from %''@: %@\n", a1, *(DerivedStorage + 8), cf);
          }

          v15 = 0;
          if (a4)
          {
            *a4 = cf;
            cf = 0;
          }
        }
      }

      CFRelease(v9);
      CFRelease(v11);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      apsession_requestControlSetupWithResponse_cold_3(v9);
      return 4294895476;
    }
  }

  else
  {
    v15 = 4294895475;
    apsession_requestControlSetupWithResponse_cold_4();
  }

  return v15;
}

uint64_t apsession_appendControlSetupRequest(uint64_t a1, __CFDictionary *a2, void *a3)
{
  v100 = *MEMORY[0x277D85DE8];
  v86 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  uuid = 0;
  theData = 0;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v82 = 0;
  value = 0;
  v81 = 0;
  v80 = 0;
  v6 = APSGetFBOPropertyInt64();
  v79 = 0;
  v70 = APSGetFBOPropertyInt64();
  v77 = 0;
  v78 = 0;
  v7 = APSGetFBOPropertyInt64() != 0;
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 320);
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(DerivedStorage + 328);
  if (v10)
  {
    v11 = CFRetain(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(DerivedStorage + 552);
  if (v12)
  {
    v13 = CFRetain(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(DerivedStorage + 310);
  FigSimpleMutexUnlock();
  if (v9)
  {
    if (!v11)
    {
      apsession_appendControlSetupRequest_cold_13(&v86);
      v15 = 0;
      goto LABEL_131;
    }

    if (a2)
    {
      v73 = CFDictionaryGetInt64() != 0;
    }

    else
    {
      v73 = 0;
    }

    if (*(DerivedStorage + 72) == 5)
    {
      v15 = MGCopyAnswer();
      if (v15)
      {
        CFDictionarySetValue(a2, @"deviceID", v15);
      }

      else
      {
        APSGetDeviceID();
        HardwareAddressToCString();
        CFDictionarySetCString();
      }
    }

    else
    {
      APSGetDeviceID();
      HardwareAddressToCString();
      CFDictionarySetCString();
      v15 = 0;
    }

    v72 = a3;
    v16 = *(DerivedStorage + 72);
    if (v16 <= 5 && v16 != 3)
    {
      APSCopyBootUUID();
      FigCFDictionarySetValue();
    }

    v17 = *(DerivedStorage + 224);
    if (v17 && !v6)
    {
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v18)
      {
        v18(v17);
      }

      CFDictionarySetInt64();
      v19 = *(DerivedStorage + 224);
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v20)
      {
        v21 = v20(v19, &value, &v82);
        v86 = v21;
        if (!v21)
        {
          v22 = *(DerivedStorage + 224);
          v23 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v23)
          {
            v24 = v23(v22);
            v86 = v24;
            if (!v24)
            {
              CFDictionarySetValue(a2, @"ekey", value);
              CFDictionarySetValue(a2, @"eiv", v82);
              goto LABEL_32;
            }
          }

          else
          {
            v24 = 4294954514;
            v86 = -12782;
          }

          apsession_appendControlSetupRequest_cold_1(v24);
          goto LABEL_131;
        }
      }

      else
      {
        v21 = 4294954514;
        v86 = -12782;
      }

      apsession_appendControlSetupRequest_cold_2(v21);
      goto LABEL_131;
    }

LABEL_32:
    v69 = v7;
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v26)
    {
      v27 = *MEMORY[0x277CBECE8];
      v28 = v26(CMBaseObject, *MEMORY[0x277CE5028], *MEMORY[0x277CBECE8], &theData);
      v86 = v28;
      if (!v28)
      {
        CFDataGetBytePtr(theData);
        HardwareAddressToCString();
        CFDictionarySetCString();
        LOBYTE(v92) = 0;
        GetDeviceModelString();
        CFDictionarySetCString();
        LOBYTE(v92) = 0;
        APSGetDeviceNameCString();
        CFDictionarySetCString();
        LOBYTE(v92) = 0;
        GetSystemBuildVersionString();
        CFDictionarySetCString();
        v29 = FigTransportSessionGetCMBaseObject();
        v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v30)
        {
          v75 = v15;
          v31 = v30(v29, *MEMORY[0x277CC1B00], v27, &uuid);
          v86 = v31;
          if (!v31)
          {
            v32 = CFUUIDCreateString(v27, uuid);
            if (!v32)
            {
              apsession_appendControlSetupRequest_cold_10();
              v48 = 0;
              goto LABEL_132;
            }

            v33 = v32;
            v68 = v14;
            CFDictionarySetValue(a2, @"sessionUUID", v32);
            APSVersionUtilsGetShortVersionLength();
            CFDictionarySetCString();
            v34 = *MEMORY[0x277CBED28];
            v71 = *MEMORY[0x277CBED10];
            if (*(DerivedStorage + 152))
            {
              v35 = *MEMORY[0x277CBED28];
            }

            else
            {
              v35 = *MEMORY[0x277CBED10];
            }

            CFDictionarySetValue(a2, @"statsCollectionEnabled", v35);
            if (*(DerivedStorage + 153))
            {
              CFDictionarySetValue(a2, @"highFreqStatsCollectionEnabled", v34);
            }

            if (*(DerivedStorage + 272))
            {
              CFDictionarySetInt64();
            }

            v36 = *(DerivedStorage + 72);
            if (v36 <= 8 && ((1 << v36) & 0x1C2) != 0)
            {
              CFDictionarySetValue(a2, @"isRemoteControlOnly", v34);
              v36 = *(DerivedStorage + 72);
            }

            if (v36 == 9 || v36 == 4)
            {
              CFDictionarySetValue(a2, @"isScreenMirroringSession", v34);
              v36 = *(DerivedStorage + 72);
            }

            v37 = 0;
            if (v36 <= 0xB)
            {
              v37 = ((1 << v36) & 0x80C) != 0;
            }

            if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_appendControlSetupRequest(APSenderSessionRef, CFMutableDictionaryRef, CFArrayRef)", 33554462, "[%{ptr}] Mc2UcDetectionEnabled=%d, isGroupPlaybackSession=%d, interfaceName=%@", a1, *(DerivedStorage + 155), v37, *(DerivedStorage + 264));
            }

            v38 = !v37;
            if (!*(DerivedStorage + 155))
            {
              v38 = 1;
            }

            if (v38)
            {
              goto LABEL_64;
            }

            v39 = CMBaseObjectGetDerivedStorage();
            cf[0] = 0;
            Shared = APMulticastProbeSenderGetShared(v39, v40);
            if (!Shared)
            {
              goto LABEL_64;
            }

            v42 = APMulticastProbeSenderCopySSMGroupInfo(Shared, *(v39 + 264), cf);
            if (v42)
            {
              goto LABEL_183;
            }

            *(v39 + 288) = 1;
            CFDictionarySetValue(a2, @"mc2ucDetectionSSMGroupInfo", cf[0]);
            while (1)
            {
              if (cf[0])
              {
                CFRelease(cf[0]);
              }

LABEL_64:
              v88 = 0;
              v89 = &v88;
              v90 = 0x2000000000;
              v44 = getDiagnosticLogSubmissionEnabledSymbolLoc_ptr;
              v91 = getDiagnosticLogSubmissionEnabledSymbolLoc_ptr;
              if (!getDiagnosticLogSubmissionEnabledSymbolLoc_ptr)
              {
                cf[0] = MEMORY[0x277D85DD0];
                cf[1] = 0x40000000;
                cf[2] = __getDiagnosticLogSubmissionEnabledSymbolLoc_block_invoke;
                cf[3] = &unk_27849B968;
                cf[4] = &v88;
                __getDiagnosticLogSubmissionEnabledSymbolLoc_block_invoke(cf);
                v44 = v89[3];
              }

              _Block_object_dispose(&v88, 8);
              if (v44)
              {
                break;
              }

              apsession_appendControlSetupRequest_cold_9();
LABEL_183:
              apsession_appendControlSetupRequest_cold_3(a1, v42, v43);
            }

            v74 = v33;
            if (v44())
            {
              CFDictionarySetValue(a2, @"diagnosticsAndUsage", v34);
              if (IsAppleInternalBuild())
              {
                v45 = v34;
              }

              else
              {
                v45 = v71;
              }

              CFDictionarySetValue(a2, @"internalBuild", v45);
            }

            v46 = _CFCopySystemVersionDictionary();
            FigCFDictionaryGetValue();
            FigCFDictionaryGetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            if (v46)
            {
              CFRelease(v46);
            }

            if (*(DerivedStorage + 72) == 5)
            {
              v47 = APSGetFBOPropertyInt64();
              if (!v86)
              {
                v48 = v33;
                if (v47 == 2)
                {
                  CFDictionarySetValue(a2, @"keepAliveLowPower", v34);
                }

                v15 = v75;
                if (v72)
                {
                  CFDictionarySetValue(a2, @"features", v72);
                }

                goto LABEL_132;
              }

              apsession_appendControlSetupRequest_cold_8(v86);
LABEL_175:
              v48 = v74;
              v15 = v75;
              goto LABEL_132;
            }

            if (IsAppleInternalBuild())
            {
              LOBYTE(v92) = 0;
              GetDeviceInternalModelString();
              CFDictionarySetCString();
              LOBYTE(v92) = 0;
              GetDeviceUniqueID();
              CFDictionarySetCString();
            }

            CFDictionarySetValue(a2, @"timingProtocol", *(DerivedStorage + 24));
            if (*(DerivedStorage + 24) == @"PTP" && !v73)
            {
              v49 = *(DerivedStorage + 80);
              v50 = *(DerivedStorage + 72) == 3;
              v51 = *(*(CMBaseObjectGetVTable() + 16) + 64);
              if (v51)
              {
                v52 = v51(v49, v50, &v77, &v78);
                v86 = v52;
                if (!v52)
                {
                  CFDictionarySetValue(a2, @"timingPeerInfo", v78);
                  CFDictionarySetValue(a2, @"timingPeerList", v77);
                  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
                  {
                    apsession_appendControlSetupRequest_cold_4(&v77, &v78, a1);
                  }

                  goto LABEL_88;
                }
              }

              else
              {
                v52 = 4294954514;
                v86 = -12782;
              }

              apsession_appendControlSetupRequest_cold_5(v52);
              goto LABEL_175;
            }

LABEL_88:
            v53 = *(DerivedStorage + 72);
            if (v53 <= 8 && ((1 << v53) & 0x1C2) != 0)
            {
LABEL_90:
              v53 = *(DerivedStorage + 72);
              goto LABEL_91;
            }

            if (!v70)
            {
LABEL_91:
              v48 = v74;
              v15 = v75;
              if (v53 == 10)
              {
                CelestialGetModelSpecificName();
                v54 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
                if (v54 || (v54 = CelestialCFCreatePropertyList()) != 0)
                {
                  v55 = v54;
                  CFDictionarySetValue(a2, @"sidePlaySessionBehaviors", v54);
                  CFRelease(v55);
                }
              }

              if (*(DerivedStorage + 568) && *(DerivedStorage + 560))
              {
                MutableCopy = FigCFDictionaryCreateMutableCopy();
                if (MutableCopy)
                {
                  v57 = MutableCopy;
                  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
                  {
                    apsession_appendControlSetupRequest_cold_6(v57, a1);
                  }

                  FigCFDictionarySetValue();
                  FigCFDictionarySetValue();
                  CFRelease(v57);
                }

                else
                {
                  apsession_appendControlSetupRequest_cold_7(&v86);
                }
              }

LABEL_132:
              CFRelease(v9);
              if (!v11)
              {
                goto LABEL_134;
              }

              goto LABEL_133;
            }

            v58 = 1;
            if (v53 <= 0xB && ((1 << v53) & 0x80C) != 0)
            {
              CFDictionarySetValue(a2, @"supportsGroupCohesion", v34);
              v58 = 0;
            }

            if (!APSIsAPMSpeaker() && !IsAppleTV())
            {
              v69 = 1;
            }

            if (v58)
            {
              v59 = v71;
            }

            else
            {
              v59 = v34;
            }

            CFDictionarySetValue(a2, @"isMultiSelectAirPlay", v59);
            if (v13)
            {
              if (v69)
              {
                v60 = v71;
              }

              else
              {
                v60 = v34;
              }

              CFDictionarySetValue(a2, @"groupContainsGroupLeader", v60);
              CFDictionarySetValue(a2, @"groupUUID", v13);
              if ((v58 & 1) != 0 || (v61 = v34, !*(DerivedStorage + 112)))
              {
                v61 = v71;
              }

              CFDictionarySetValue(a2, @"senderSupportsRelay", v61);
            }

            if (IsAppleTV() && *(DerivedStorage + 72) == 3)
            {
              CFDictionarySetValue(a2, @"isHomeTheaterSession", v34);
              APSHDMIVideoLatencyMs();
              CFDictionarySetInt64();
              v62 = @"isPersistentConnection";
              v63 = @"surviveAudioInterruption";
            }

            else
            {
              if (!APSIsAPMSpeaker() || *(DerivedStorage + 72) != 11)
              {
LABEL_162:
                v66 = *(DerivedStorage + 96);
                if (v66)
                {
                  CFDictionarySetValue(a2, @"hijackID", v66);
                }

                if (*(DerivedStorage + 88))
                {
                  CFDictionarySetInt64();
                }

                if (*(DerivedStorage + 136))
                {
                  CFDictionarySetValue(a2, @"applyFadeOnFirstMediaAudioSession", v34);
                  CFDictionarySetDouble();
                }

                if (APSIsAPMSpeaker())
                {
                  if (apsession_isTightSyncBuddyConnection())
                  {
                    v67 = v34;
                  }

                  else
                  {
                    v67 = v71;
                  }

                  CFDictionarySetValue(a2, @"isTightSyncBuddyConnection", v67);
                }

                goto LABEL_90;
              }

              v62 = @"surviveAudioInterruption";
              v63 = @"isPersistentConnection";
            }

            CFDictionarySetValue(a2, v63, v34);
            CFDictionarySetValue(a2, v62, v34);
            if (v68)
            {
              v65 = v71;
            }

            else
            {
              v65 = v34;
            }

            CFDictionarySetValue(a2, @"isNonMediaSession", v65);
            goto LABEL_162;
          }
        }

        else
        {
          v31 = 4294954514;
          v86 = -12782;
        }

        apsession_appendControlSetupRequest_cold_11(v31);
LABEL_131:
        v48 = 0;
        goto LABEL_132;
      }
    }

    else
    {
      v28 = 4294954514;
      v86 = -12782;
    }

    apsession_appendControlSetupRequest_cold_12(v28);
    goto LABEL_131;
  }

  apsession_appendControlSetupRequest_cold_14(&v86);
  v15 = 0;
  v48 = 0;
  if (v11)
  {
LABEL_133:
    CFRelease(v11);
  }

LABEL_134:
  if (value)
  {
    CFRelease(value);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (uuid)
  {
    CFRelease(uuid);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  return v86;
}

void *__getDiagnosticLogSubmissionEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CrashReporterSupportLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 0x40000000;
    v5[3] = __CrashReporterSupportLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_tmp_527;
    v5[5] = v5;
    v6 = xmmword_27849B988;
    v7 = 0;
    CrashReporterSupportLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = CrashReporterSupportLibraryCore_frameworkLibrary;
    if (CrashReporterSupportLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CrashReporterSupportLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "DiagnosticLogSubmissionEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDiagnosticLogSubmissionEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CrashReporterSupportLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CrashReporterSupportLibraryCore_frameworkLibrary = result;
  return result;
}

void apsession_eventStreamMessageCallback(const void *a1, int a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 344))
  {
    v8 = MEMORY[0x223DB15F0](DerivedStorage + 344);
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    CFRetain(a1);
    if (a3)
    {
      CFRetain(a3);
    }

    CFRetain(a4);
    CFRetain(v8);
    APSDispatchAsyncFHelper();
    CFRelease(v8);
  }

  else
  {
    apsession_eventStreamMessageCallback_cold_1(a4);
  }
}

void apsession_eventStreamMessageCallbackInternal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (*(a1 + 8) == 1684628836)
  {
    apsession_handleTransportStreamDisconnected(*(a1 + 24), *a1);
  }

  else if (*(a1 + 48))
  {
    CFRetain(*a1);
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRetain(v2);
    }

    CFRetain(*(a1 + 32));
    APSDispatchAsyncFHelper();
  }

  CFRelease(*(a1 + 24));
  CFRelease(*a1);
  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);

  CFRelease(v4);
}

void apsession_eventStreamDeferredMessageCallback(uint64_t a1)
{
  (*(a1 + 48))(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 40));
  CFRelease(*a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);

  CFRelease(v3);
}

uint64_t __apsession_getKeepAliveMode_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CFDictionaryGetInt64();
  if (result == 130)
  {
    --*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

uint64_t apsession_updateSessionInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "OSStatus apsession_updateSessionInternal(void *)", 33554462, "[%{ptr}] %###s %@\n", a1, "OSStatus apsession_updateSessionInternal(void *)", *(DerivedStorage + 8));
  }

  if (*DerivedStorage)
  {
    apsession_updateSessionInternal_cold_1();
    return 4294954511;
  }

  else if (*(DerivedStorage + 217))
  {
    apsession_updateSessionInternal_cold_2();
    return 4294895467;
  }

  else
  {
    v3 = *(DerivedStorage + 72) - 1;
    if (v3 < 8 && ((0xE1u >> v3) & 1) != 0)
    {
      return 0;
    }

    else
    {

      return apsession_requestControlSetupWithResponse(a1, 0, 1, 0);
    }
  }
}

uint64_t __apsession_generateUniqueStreamIDFromRegistry_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Int64 = CFDictionaryGetInt64();
  result = CFDictionaryGetInt64();
  if (result == *(a1 + 40))
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 24);
    if (v7 <= Int64)
    {
      v7 = Int64;
    }

    *(v6 + 24) = v7 + 1;
  }

  return result;
}

void apsession_prepareForTeardownInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_prepareForTeardownInternal_cold_1(a1);
  }

  if (*(DerivedStorage + 24) == @"PTP")
  {
    apsession_stopSenderNetworkClockIfNeeded(a1);
  }

  *(DerivedStorage + 217) = 1;

  CFRelease(a1);
}

uint64_t apsession_sendAudioContentTypeUpdateInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  if (*DerivedStorage)
  {
    return 0;
  }

  if (*(DerivedStorage + 72) == 5)
  {
    return 0;
  }

  apsession_copyTransportControlStream(*a1, &v7);
  v3 = v7;
  if (!v7)
  {
    return 0;
  }

  v4 = APTransportStreamSendPlistMessage();
  v5 = v4;
  if (v4)
  {
    apsession_sendAudioContentTypeUpdateInternal_cold_1(v4);
  }

  CFRelease(v3);
  return v5;
}

uint64_t APAudioSinkSharedMemRemote_ServerDied(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 24) = 0;
  return result;
}

uint64_t APAudioSinkSharedMemRemoteCreate(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, CFTypeRef *a5)
{
  if (!a5)
  {
    APAudioSinkSharedMemRemoteCreate_cold_6();
    return 4294950504;
  }

  if (!a3)
  {
    APAudioSinkSharedMemRemoteCreate_cold_5();
    return 4294950504;
  }

  FigEndpointAudioSinkGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v19 = v9;
    APAudioSinkSharedMemRemoteCreate_cold_1(v9);
    return v19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 0;
  *(DerivedStorage + 8) = a4;
  *(DerivedStorage + 24) = 0;
  v11 = a3[4];
  v12 = *(a3 + 1);
  *(DerivedStorage + 80) = *a3;
  *(DerivedStorage + 96) = v12;
  *(DerivedStorage + 112) = v11;
  v14 = *a2;
  v13 = a2[1];
  *(DerivedStorage + 72) = *(a2 + 4);
  *(DerivedStorage + 40) = v14;
  *(DerivedStorage + 56) = v13;
  v15 = CMBaseObjectGetDerivedStorage();
  v16 = FigXPCCreateBasicMessage();
  if (v16)
  {
    v19 = v16;
    APAudioSinkSharedMemRemoteCreate_cold_2(v16);
LABEL_15:
    APSLogErrorAt();
    return v19;
  }

  xpc_dictionary_set_data(0, kAPCarPlayAVVCMsgParam_XPCSinkOutputFormat[0], a3, 0x28uLL);
  v17 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v17)
  {
    v19 = v17;
    APAudioSinkSharedMemRemoteCreate_cold_3(v17);
    goto LABEL_15;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x277CC0990]);
  *(v15 + 16) = uint64;
  if (!uint64)
  {
    APAudioSinkSharedMemRemoteCreate_cold_4();
    v19 = 4294960578;
    goto LABEL_15;
  }

  FigXPCRemoteClientAssociateObject();
  v19 = 0;
  *(v15 + 24) = 1;
  *a5 = 0;
  return v19;
}

uint64_t sharedMemSinkRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSinkSharedMemRemote <= 30 && (gLogCategory_APAudioSinkSharedMemRemote != -1 || _LogCategory_Initialize()))
  {
    sharedMemSinkRemote_Finalize_cold_1(a1);
  }

  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 32) = 0;
  }

  v4 = CMBaseObjectGetDerivedStorage();
  if (*(v4 + 24))
  {
    v5 = FigXPCCreateBasicMessage();
    if (v5)
    {
      result = sharedMemSinkRemote_Finalize_cold_2(v5);
      goto LABEL_10;
    }

    v6 = FigXPCRemoteClientSendSyncMessage();
    if (v6)
    {
      result = sharedMemSinkRemote_Finalize_cold_3(v6);
      goto LABEL_10;
    }
  }

  result = FigXPCRemoteClientDisassociateObject();
  *(v4 + 16) = 0;
LABEL_10:
  *(v4 + 24) = 0;
  return result;
}

CFMutableStringRef sharedMemSinkRemote_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendF(Mutable, "<RemoteAudioSink %p>: \n", a1);
  if (*(DerivedStorage + 24))
  {
    v4 = "Connected";
  }

  else
  {
    v4 = "Disconnected";
  }

  CFStringAppendF(Mutable, "\t Connection state: %s\n", v4);
  CFStringAppendF(Mutable, "\t Remote object id: %lu\n", *(DerivedStorage + 16));
  v5 = CFGetRetainCount(a1);
  CFStringAppendF(Mutable, "\t Ref count: %u\n", v5);
  return Mutable;
}

uint64_t sharedMemSinkRemote_CopyProperty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    if (*(DerivedStorage + 24))
    {
      return FigXPCSendStdCopyPropertyMessage();
    }

    else
    {
      sharedMemSinkRemote_CopyProperty_cold_1();
      return 4294960587;
    }
  }

  else
  {
    sharedMemSinkRemote_CopyProperty_cold_2();
    return 4294960578;
  }
}

uint64_t sharedMemSinkRemote_SetProperty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    if (*(DerivedStorage + 24))
    {

      return FigXPCSendStdSetPropertyMessage();
    }

    else
    {
      sharedMemSinkRemote_SetProperty_cold_1();
      return 4294960587;
    }
  }

  else
  {
    sharedMemSinkRemote_SetProperty_cold_2();
    return 4294960578;
  }
}

uint64_t sharedMemSinkRemote_GetInputFormat(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    if (*(DerivedStorage + 24))
    {
      v4 = FigXPCCreateBasicMessage();
      if (v4)
      {
        v7 = v4;
        sharedMemSinkRemote_GetInputFormat_cold_1(v4);
      }

      else
      {
        v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (v5)
        {
          v7 = v5;
          sharedMemSinkRemote_GetInputFormat_cold_2(v5);
        }

        else
        {
          v6 = APCarPlayXPCUtils_UnpackASBD(0, kAPCarPlayAVVCMsgParam_XPCSinkInputFormat[0], 1, a2);
          v7 = v6;
          if (v6)
          {
            sharedMemSinkRemote_GetInputFormat_cold_3(v6);
          }
        }
      }
    }

    else
    {
      sharedMemSinkRemote_GetInputFormat_cold_4();
      return 4294960587;
    }
  }

  else
  {
    sharedMemSinkRemote_GetInputFormat_cold_5();
    return 4294960578;
  }

  return v7;
}

uint64_t sharedMemSinkRemote_SetInputFormat(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    if (*(DerivedStorage + 24))
    {
      v4 = FigXPCCreateBasicMessage();
      if (v4)
      {
        v6 = v4;
        sharedMemSinkRemote_SetInputFormat_cold_1(v4);
      }

      else
      {
        xpc_dictionary_set_data(0, kAPCarPlayAVVCMsgParam_XPCSinkInputFormat[0], a2, 0x28uLL);
        v5 = FigXPCRemoteClientSendSyncMessage();
        v6 = v5;
        if (v5)
        {
          sharedMemSinkRemote_SetInputFormat_cold_2(v5);
        }
      }
    }

    else
    {
      sharedMemSinkRemote_SetInputFormat_cold_3();
      return 4294960587;
    }
  }

  else
  {
    sharedMemSinkRemote_SetInputFormat_cold_4();
    return 4294960578;
  }

  return v6;
}

uint64_t sharedMemSinkRemote_Resume(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 24))
    {
      if (gLogCategory_APAudioSinkSharedMemRemote <= 30 && (gLogCategory_APAudioSinkSharedMemRemote != -1 || _LogCategory_Initialize()))
      {
        sharedMemSinkRemote_Resume_cold_1(a1);
      }

      v4 = FigXPCCreateBasicMessage();
      if (v4)
      {
        value = v4;
        sharedMemSinkRemote_Resume_cold_2(v4);
      }

      else
      {
        v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (v5)
        {
          value = v5;
          sharedMemSinkRemote_Resume_cold_3(v5);
        }

        else
        {
          value = xpc_dictionary_get_value(0, kAPCarPlayAVVCMsgParam_SharedMemoryBuffer[0]);
          if (value)
          {
            if (xpc_dictionary_get_value(0, kAPCarPlayAVVCMsgParam_SharedMemoryState))
            {
              v7 = APSSharedRingBuffer_CreateWithBufferAndState();
              value = v7;
              if (v7)
              {
                sharedMemSinkRemote_Resume_cold_4(v7);
              }

              else
              {
                *(v3 + 120) = 1;
                *(v3 + 124) = 4;
                *v3 = 1;
              }
            }

            else
            {
              sharedMemSinkRemote_Resume_cold_5();
              return 0;
            }
          }

          else
          {
            sharedMemSinkRemote_Resume_cold_6();
          }
        }
      }
    }

    else
    {
      sharedMemSinkRemote_Resume_cold_7();
      return 4294960587;
    }
  }

  else
  {
    sharedMemSinkRemote_Resume_cold_8();
    return 4294960578;
  }

  return value;
}

uint64_t APGetEndpointManagerCarPlay(void *a1)
{
  if (!MGGetBoolAnswer())
  {
    _MergedGlobals_3 = APSSignalErrorAt();
    return _MergedGlobals_3;
  }

  if (APGetEndpointManagerCarPlay_sCreateOnce != -1)
  {
    APGetEndpointManagerCarPlay_cold_1();
    if (!a1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a1)
  {
LABEL_4:
    *a1 = qword_280FB1A50;
  }

LABEL_5:
  if (gLogCategory_APEndpointManagerCarPlayFactory <= 50 && (gLogCategory_APEndpointManagerCarPlayFactory != -1 || _LogCategory_Initialize()))
  {
    APGetEndpointManagerCarPlay_cold_2();
  }

  return _MergedGlobals_3;
}

uint64_t __APGetEndpointManagerCarPlay_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointManagerCarPlayFactory <= 50)
  {
    if (gLogCategory_APEndpointManagerCarPlayFactory != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __APGetEndpointManagerCarPlay_block_invoke_cold_1(a1, a2, a3);
    }
  }

  v3 = MEMORY[0x223DAEBE0]();
  if (!v3 || (v6 = getprogname(), v3 = strcmp(v6, "audiomxd"), v3))
  {
    if (gLogCategory_APEndpointManagerCarPlayFactory <= 50)
    {
      if (gLogCategory_APEndpointManagerCarPlayFactory != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __APGetEndpointManagerCarPlay_block_invoke_cold_4(v3, v4, v5);
      }
    }

    v11 = 0;
    v7 = APEndpointManagerCarPlayCreate(*MEMORY[0x277CBECE8], 0, &v11);
    if (!v7)
    {
      result = APSIsExplicitEndpointManagerInitializationEnabledInMX();
      if (!result)
      {
        result = CMSessionMgrRegisterEndpointManager();
        if (result)
        {
          if (gLogCategory_APEndpointManagerCarPlayFactory <= 90)
          {
            v10 = result;
            if (gLogCategory_APEndpointManagerCarPlayFactory != -1 || (result = _LogCategory_Initialize(), result))
            {
              result = __APGetEndpointManagerCarPlay_block_invoke_cold_7(v10);
            }
          }
        }
      }

      LODWORD(v9) = 0;
      qword_280FB1A50 = v11;
      goto LABEL_21;
    }

    v9 = v7;
    result = __APGetEndpointManagerCarPlay_block_invoke_cold_5(v7, &v11);
    goto LABEL_27;
  }

  if (gLogCategory_APEndpointManagerCarPlayFactory <= 50)
  {
    if (gLogCategory_APEndpointManagerCarPlayFactory != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      __APGetEndpointManagerCarPlay_block_invoke_cold_2(v3, v4, v5);
    }
  }

  result = FigEndpointManagerRemoteCopyCarPlayManager();
  v9 = result;
  if (result)
  {
    result = __APGetEndpointManagerCarPlay_block_invoke_cold_3(result);
LABEL_27:
    if (gLogCategory_APEndpointManagerCarPlayFactory <= 90)
    {
      if (gLogCategory_APEndpointManagerCarPlayFactory != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __APGetEndpointManagerCarPlay_block_invoke_cold_6(v9);
      }
    }
  }

LABEL_21:
  _MergedGlobals_3 = v9;
  return result;
}

uint64_t APEndpointManagerCreate(void *a1)
{
  if (APEndpointManagerGetShared_once != -1)
  {
    APEndpointManagerCreate_cold_1();
  }

  v2 = APEndpointManagerGetShared_sAPEndpointManager;
  if (APEndpointManagerGetShared_sAPEndpointManager)
  {
    v2 = CFRetain(APEndpointManagerGetShared_sAPEndpointManager);
  }

  *a1 = v2;
  return gCreationErr_0;
}

uint64_t APEndpointManagerGetShared(uint64_t a1, uint64_t a2)
{
  if (APEndpointManagerGetShared_once != -1)
  {
    APEndpointManagerCreate_cold_1();
  }

  return APEndpointManagerGetShared_sAPEndpointManager;
}

uint64_t manager_create(void *a1)
{
  v105 = 0;
  LogSetAppID();
  if (!a1)
  {
    manager_create_cold_47();
    return 4294950586;
  }

  v2 = *MEMORY[0x277CBECE8];
  FigEndpointManagerGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    v52 = v3;
    manager_create_cold_1(v3);
    goto LABEL_167;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = dispatch_queue_create("com.apple.airplay.apendpointManager.notification", 0);
  *(DerivedStorage + 8) = v5;
  if (!v5)
  {
    manager_create_cold_46();
LABEL_212:
    v52 = 4294950585;
    goto LABEL_167;
  }

  v6 = FigSimpleMutexCreate();
  *(DerivedStorage + 64) = v6;
  if (!v6)
  {
    manager_create_cold_45();
    goto LABEL_212;
  }

  *(DerivedStorage + 88) = CFRetain(*MEMORY[0x277CC0C08]);
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 168) = Mutable;
  if (!Mutable)
  {
    manager_create_cold_44();
    goto LABEL_212;
  }

  v8 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 176) = v8;
  if (!v8)
  {
    manager_create_cold_43();
    goto LABEL_212;
  }

  v9 = CFSetCreateMutable(v2, 0, MEMORY[0x277CBF158]);
  *(DerivedStorage + 184) = v9;
  if (!v9)
  {
    manager_create_cold_42();
    goto LABEL_212;
  }

  v10 = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 192) = v10;
  if (!v10)
  {
    manager_create_cold_41();
    goto LABEL_212;
  }

  v11 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 208) = v11;
  if (!v11)
  {
    manager_create_cold_40();
    goto LABEL_212;
  }

  v12 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 216) = v12;
  if (!v12)
  {
    manager_create_cold_39();
    goto LABEL_212;
  }

  v13 = CFSetCreateMutable(v2, 0, MEMORY[0x277CBF158]);
  *(DerivedStorage + 224) = v13;
  if (!v13)
  {
    manager_create_cold_38();
    goto LABEL_212;
  }

  IsFeatureEnabled = APSSettingsIsFeatureEnabled();
  *(DerivedStorage + 400) = IsFeatureEnabled;
  if (IsFeatureEnabled)
  {
    v15 = CFSetCreateMutable(v2, 0, MEMORY[0x277CBF158]);
    *(DerivedStorage + 272) = v15;
    if (!v15)
    {
      manager_create_cold_2();
      goto LABEL_212;
    }
  }

  APSPreCacheSystemPairingIdentity();
  *DerivedStorage = 1;
  v16 = APSIsEndpointClusteringEnabled();
  *(DerivedStorage + 2) = v16;
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_21;
      }

      v16 = *(DerivedStorage + 2);
    }

    v17 = "";
    if (!v16)
    {
      v17 = " not";
    }

    LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_create(CFDictionaryRef, FigEndpointManagerRef *)", 33554482, "Cluster endpoints are%s enabled\n", v17);
  }

LABEL_21:
  v18 = APSMultiPrimariesEnabled();
  *(DerivedStorage + 3) = v18;
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_28:
        if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          manager_create_cold_3();
        }

        goto LABEL_32;
      }

      v18 = *(DerivedStorage + 3);
    }

    v19 = "";
    if (!v18)
    {
      v19 = " not";
    }

    LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_create(CFDictionaryRef, FigEndpointManagerRef *)", 33554482, "Multi player is%s enabled\n", v19);
    goto LABEL_28;
  }

LABEL_32:
  if (APSSettingsIsFeatureEnabled())
  {
    APBrokerManagerCreate();
    v20 = *(DerivedStorage + 328);
    if (!v20)
    {
      manager_create_cold_4();
      v52 = 4294960568;
      goto LABEL_167;
    }

    if (gLogCategory_APEndpointManager <= 50)
    {
      if (gLogCategory_APEndpointManager != -1)
      {
LABEL_38:
        LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_create(CFDictionaryRef, FigEndpointManagerRef *)", 33554482, "[%{ptr}] Created BrokerManager [%{ptr}]\n", v105, v20);
        goto LABEL_39;
      }

      if (_LogCategory_Initialize())
      {
        v20 = *(DerivedStorage + 328);
        goto LABEL_38;
      }
    }
  }

LABEL_39:
  *(DerivedStorage + 401) = APSSettingsGetIntWithDefault() != 0;
  *(DerivedStorage + 396) = GestaltGetDeviceClass();
  *(DerivedStorage + 4) = 0;
  if (IsAppleInternalBuild() && APSSettingsGetBooleanIfPresent() && gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_create_cold_5(&v105, (DerivedStorage + 402));
  }

  if (*(DerivedStorage + 2))
  {
    v21 = *(DerivedStorage + 396);
    if ((v21 > 0xD || ((1 << v21) & 0x2090) == 0) && !APSIsLocalClusterWithStaticLeadershipEnabled())
    {
      if (*(DerivedStorage + 396) == 100)
      {
        *(DerivedStorage + 4) = 1;
        if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          manager_create_cold_7();
        }
      }

      goto LABEL_58;
    }

    *(DerivedStorage + 4) = 2;
    v22 = APEndpointLocalCreateWithEndpointDescription(v2, 0, 0, (DerivedStorage + 296));
    if (v22)
    {
      v52 = v22;
      manager_create_cold_6(v22);
      goto LABEL_167;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    manager_updateEndpointPSGInfoIfNeeded(v105, *(DerivedStorage + 296));
    v23 = APSGetFBOPropertyInt64() == 0;
    *(DerivedStorage + 161) = v23;
    if (gLogCategory_APEndpointManager <= 50)
    {
      if (gLogCategory_APEndpointManager != -1)
      {
LABEL_53:
        if (v23)
        {
          v24 = "yes";
        }

        else
        {
          v24 = "no";
        }

        LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_create(CFDictionaryRef, FigEndpointManagerRef *)", 33554482, "[%{ptr}] Cluster change: Adding listener to local endpoint [%{ptr}] at time of creation; needs update = %s\n", v105, *(DerivedStorage + 296), v24);
        goto LABEL_57;
      }

      if (_LogCategory_Initialize())
      {
        v23 = *(DerivedStorage + 161);
        goto LABEL_53;
      }
    }

LABEL_57:
    FigSimpleMutexLock();
    manager_updateExposedLocalEndpoint(v105, *(DerivedStorage + 296));
    FigSimpleMutexUnlock();
  }

LABEL_58:
  v25 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 232) = v25;
  if (!v25)
  {
    manager_create_cold_37();
    goto LABEL_212;
  }

  v26 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 240) = v26;
  if (!v26)
  {
    manager_create_cold_36();
    goto LABEL_212;
  }

  v101 = a1;
  if (*(DerivedStorage + 396) != 7 && APSIsRemoteHALPluginLoadingEnabled() && APSIsInAirPlaySenderSystemServer() && !APSIsInAudioSystemServer())
  {
    v27 = CFStringCreateMutable(v2, 0);
    handler = 0;
    CFStringAppendFormat(v27, 0, @"/System/Library/Audio/Plug-Ins/HAL/%@", @"AirPlayHalogen.driver");
    v28 = CFURLCreateWithFileSystemPath(0, v27, kCFURLPOSIXPathStyle, 1u);
    if (v28)
    {
      v29 = v28;
      v30 = CFPlugInCreate(0, v28);
      if (v30)
      {
        v31 = v30;
        v32 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
        FactoriesForPlugInTypeInPlugIn = CFPlugInFindFactoriesForPlugInTypeInPlugIn(v32, v31);
        if (FactoriesForPlugInTypeInPlugIn)
        {
          v34 = FactoriesForPlugInTypeInPlugIn;
          Count = CFArrayGetCount(FactoriesForPlugInTypeInPlugIn);
          if (Count <= 0)
          {
            manager_create_cold_12(Count, v36, v37);
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v34, 0);
            if (ValueAtIndex)
            {
              v39 = ValueAtIndex;
              v40 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
              v41 = CFPlugInInstanceCreate(0, v39, v40);
              if (v41)
              {
                v42 = v41;
                v43 = *(*v41 + 8);
                v44 = CFUUIDGetConstantUUIDWithBytes(0, 0xEEu, 0xA5u, 0x77u, 0x3Du, 0xCCu, 0x43u, 0x49u, 0xF1u, 0x8Eu, 0, 0x8Fu, 0x96u, 0xE7u, 0xD2u, 0x3Bu, 0x17u);
                v45 = CFUUIDGetUUIDBytes(v44);
                v46 = v43(v42, *&v45.byte0, *&v45.byte8, &handler);
                if (v46)
                {
                  manager_create_cold_8(v46);
                }

                else if (!handler)
                {
                  manager_create_cold_9();
                }

                (*(*v42 + 24))(v42);
              }

              else
              {
                manager_create_cold_10();
              }
            }

            else
            {
              manager_create_cold_11();
            }
          }

          CFRelease(v29);
        }

        else
        {
          manager_create_cold_13();
          v34 = v29;
        }

        CFRelease(v34);
        CFRelease(v31);
      }

      else
      {
        manager_create_cold_14(v29);
      }
    }

    else
    {
      manager_create_cold_15();
    }

    if (v27)
    {
      CFRelease(v27);
    }

    v47 = handler;
    *(DerivedStorage + 344) = handler;
    if (!v47)
    {
      manager_create_cold_16();
      v52 = 4294895506;
      goto LABEL_167;
    }

    v48 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __manager_create_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v105;
    dispatch_sync(v48, block);
  }

  Int64 = APSSettingsGetInt64();
  IntWithDefault = APSSettingsGetIntWithDefault();
  if (!Int64)
  {
    v51 = APSNetworkClockPTPCreate();
    if (v51)
    {
      v52 = v51;
      manager_create_cold_18(v51);
      goto LABEL_167;
    }

LABEL_84:
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_create_cold_19(&v105, Int64 == 0, (DerivedStorage + 304), IntWithDefault);
    }

    if (!IntWithDefault)
    {
      goto LABEL_98;
    }

    v54 = v105;
    v55 = CMBaseObjectGetDerivedStorage();
    v56 = dispatch_queue_create("com.apple.airplay.apendpointManager.clockstart", 0);
    if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManager, "void manager_asyncStartNetworkClock(FigEndpointManagerRef)", 33554462, "[%{ptr}] <AirPlayClock> Dispatching to start network clock [%{ptr}]\n", v54, *(v55 + 304));
    }

    CFRetain(v54);
    handler = MEMORY[0x277D85DD0];
    v107 = 3221225472;
    v108 = __manager_asyncStartNetworkClock_block_invoke;
    v109 = &__block_descriptor_48_e5_v8__0l;
    v110 = v55;
    v111 = v54;
    dispatch_async(v56, &handler);
    if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManager, "void manager_asyncStartNetworkClock(FigEndpointManagerRef)", 33554462, "[%{ptr}] <AirPlayClock> Done dispatching to start network clock [%{ptr}]\n", v54, *(v55 + 304));
      if (!v56)
      {
LABEL_98:
        if (APSIsInAirPlaySenderSystemServer() && APSSettingsIsFeatureEnabled() && FVDUtilsEncryptedEncodeSupported())
        {
          v57 = mach_absolute_time();
          if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
          {
            manager_create_cold_20();
          }

          global_queue = dispatch_get_global_queue(25, 0);
          v103[0] = MEMORY[0x277D85DD0];
          v103[1] = 3221225472;
          v103[2] = __manager_create_block_invoke_2;
          v103[3] = &__block_descriptor_48_e5_v8__0l;
          v103[4] = v105;
          v103[5] = v57;
          dispatch_async(global_queue, v103);
        }

        v59 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v59)
        {
          v60 = v59;
          APSEventRecorderCreate();
          v61 = *(DerivedStorage + 336);
          if (v61)
          {
            CFDictionarySetValue(v60, @"eventRecorder", v61);
          }

          v62 = v105;
          v63 = CMBaseObjectGetDerivedStorage();
          v64 = CFSetCreateMutable(v2, 0, MEMORY[0x277CBF158]);
          *(v63 + 264) = v64;
          if (v64)
          {
            v65 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v63 + 8));
            *(v63 + 352) = v65;
            if (v65)
            {
              handler = MEMORY[0x277D85DD0];
              v107 = 3221225472;
              v108 = __manager_initAndStartDeviceMetricsTimer_block_invoke;
              v109 = &__block_descriptor_40_e5_v8__0l;
              v110 = v62;
              dispatch_source_set_event_handler(v65, &handler);
              v66 = *(v63 + 352);
              v67 = dispatch_time(0, 10800000000000);
              dispatch_source_set_timer(v66, v67, 0x4E94914F0000uLL, 0x3B9ACA00uLL);
              dispatch_resume(*(v63 + 352));
LABEL_112:
              v68 = *(DerivedStorage + 396);
              if (v68 == 13 || v68 == 7)
              {
                v69 = *MEMORY[0x277CBED28];
                v70 = *MEMORY[0x277CBED10];
              }

              else
              {
                v99 = APSIsDemoModeEnabled();
                v69 = *MEMORY[0x277CBED28];
                v70 = *MEMORY[0x277CBED10];
                v71 = *MEMORY[0x277CBED28];
                if (!v99)
                {
LABEL_116:
                  CFDictionarySetValue(v60, @"fullAWDLAllowed", v71);
                  v72 = *(DerivedStorage + 396);
                  if (APSIsDemoModeEnabled())
                  {
                    v73 = 1;
                  }

                  else
                  {
                    v73 = v72 == 13;
                  }

                  if (v73 || v72 == 7)
                  {
                    v75 = v70;
                  }

                  else
                  {
                    v75 = v69;
                  }

                  CFDictionarySetValue(v60, @"partialAWDLAllowed", v75);
                  if (APSIsOpenNANSenderEnabled())
                  {
                    v76 = v69;
                  }

                  else
                  {
                    v76 = v70;
                  }

                  CFDictionarySetValue(v60, @"openNANAllowed", v76);
                  v77 = *(DerivedStorage + 396);
                  v78 = APSHasNANSupport();
                  v79 = v70;
                  if (!v78)
                  {
                    goto LABEL_142;
                  }

                  if (APSIsLowLatencyAudioSendingEnabled())
                  {
                    v81 = 1;
                  }

                  else
                  {
                    if (APSSettingsIsFeatureEnabled())
                    {
                      v80 = v77 == 7;
                    }

                    else
                    {
                      v80 = 0;
                    }

                    v81 = v80;
                  }

                  if (IsAppleInternalBuild())
                  {
                    v82 = APSSettingsGetIntWithDefault();
                    v79 = v70;
                    if (!v82)
                    {
LABEL_142:
                      CFDictionarySetValue(v60, @"securePartialNANAllowed", v79);
                      FigCFDictionarySetValue();
                      if (APSCanSendToAltReceiver())
                      {
                        v83 = v69;
                      }

                      else
                      {
                        v83 = v70;
                      }

                      CFDictionarySetValue(v60, @"browseForAltReceiver", v83);
                      v84 = APBrowserControllerCreate(v2, v60, (DerivedStorage + 312));
                      if (v84)
                      {
                        v52 = v84;
                        manager_create_cold_22(v84);
                      }

                      else
                      {
                        v85 = APBrowserControllerSetEventHandlers(*(DerivedStorage + 312), manager_handleDevicePresenceChanged, manager_handleBrowserAddOrUpdateEvent, manager_handleBrowserRemoveEvent, manager_handleDiscoveryModeChanged, v105);
                        if (v85)
                        {
                          v52 = v85;
                          manager_create_cold_23(v85);
                        }

                        else
                        {
                          v86 = AirPlayDebugIPCEnableForEndpointManager(v105, *MEMORY[0x277CC0C68]);
                          if (v86)
                          {
                            v52 = v86;
                            manager_create_cold_24(v86);
                          }

                          else
                          {
                            *(DerivedStorage + 16) = -1;
                            *(DerivedStorage + 24) = -1;
                            manager_registerForNotifications(v105);
                            manager_handlePreferencesChanged(v105, 1);
                            v87 = APSXPCServerAddCommandHandler();
                            if (v87)
                            {
                              v52 = v87;
                              manager_create_cold_25(v87);
                            }

                            else
                            {
                              v88 = APSXPCServerAddCommandHandler();
                              if (v88)
                              {
                                v52 = v88;
                                manager_create_cold_26(v88);
                              }

                              else
                              {
                                CMNotificationCenterGetDefaultLocalCenter();
                                FigNotificationCenterAddWeakListener();
                                v89 = APSXPCServerAddCommandHandler();
                                if (v89)
                                {
                                  v52 = v89;
                                  manager_create_cold_27(v89);
                                }

                                else
                                {
                                  CMNotificationCenterGetDefaultLocalCenter();
                                  FigNotificationCenterAddWeakListener();
                                  v90 = APSXPCServerAddCommandHandler();
                                  if (v90)
                                  {
                                    v52 = v90;
                                    manager_create_cold_28(v90);
                                  }

                                  else
                                  {
                                    v91 = APSXPCServerAddCommandHandler();
                                    if (v91)
                                    {
                                      v52 = v91;
                                      manager_create_cold_29(v91);
                                    }

                                    else
                                    {
                                      v92 = APSXPCServerAddCommandHandler();
                                      if (v92)
                                      {
                                        v52 = v92;
                                        manager_create_cold_30(v92);
                                      }

                                      else
                                      {
                                        if (introspector_getCollectionOfEndpointManagers_once != -1)
                                        {
                                          manager_create_cold_31();
                                        }

                                        if (introspector_getCollectionOfEndpointManagers_coll)
                                        {
                                          v93 = *introspector_getCollectionOfEndpointManagers_coll;
                                          v102[0] = MEMORY[0x277D85DD0];
                                          v102[1] = 3221225472;
                                          v102[2] = __manager_create_block_invoke_3;
                                          v102[3] = &__block_descriptor_48_e5_v8__0l;
                                          v102[4] = introspector_getCollectionOfEndpointManagers_coll;
                                          v102[5] = v105;
                                          dispatch_sync(v93, v102);
                                        }

                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        APSIntrospectorAddCommand();
                                        v94 = APSXPCServerAddCommandHandler();
                                        if (v94)
                                        {
                                          v52 = v94;
                                          manager_create_cold_32(v94);
                                        }

                                        else
                                        {
                                          if (*(DerivedStorage + 320))
                                          {
                                            CMNotificationCenterGetDefaultLocalCenter();
                                            FigNotificationCenterAddWeakListener();
                                          }

                                          FigInstallSysdiagnoseBlock();
                                          UGLRCServer = manager_createUGLRCServer(v105);
                                          if (UGLRCServer)
                                          {
                                            v52 = UGLRCServer;
                                            manager_create_cold_33(UGLRCServer);
                                          }

                                          else
                                          {
                                            if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
                                            {
                                              manager_create_cold_34();
                                            }

                                            v52 = 0;
                                            *v101 = v105;
                                            v105 = 0;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      CFRelease(v60);
                      goto LABEL_167;
                    }
                  }

                  else
                  {
                    v79 = v70;
                    if (!v81)
                    {
                      goto LABEL_142;
                    }
                  }

                  v79 = v69;
                  goto LABEL_142;
                }
              }

              v71 = v70;
              goto LABEL_116;
            }

            v100 = 7493;
          }

          else
          {
            v100 = 7490;
          }

          manager_create_cold_21((v63 + 264), v100, v63);
          goto LABEL_112;
        }

        manager_create_cold_35();
        goto LABEL_212;
      }
    }

    else if (!v56)
    {
      goto LABEL_98;
    }

    dispatch_release(v56);
    goto LABEL_98;
  }

  v53 = APSNetworkClockNTPServerCreate();
  if (!v53)
  {
    goto LABEL_84;
  }

  v52 = v53;
  manager_create_cold_17(v53);
LABEL_167:
  v96 = v105;
  if (v105)
  {
    v97 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v97)
    {
      v97(v96);
    }

    CFRelease(v105);
  }

  return v52;
}

uint64_t __APEndpointManagerGetShared_block_invoke()
{
  result = manager_create(&APEndpointManagerGetShared_sAPEndpointManager);
  gCreationErr_0 = result;
  return result;
}

uint64_t APEndpointManagerUpdateInternalClientNeedingDiscovery(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = *(DerivedStorage + 312);
    if (v6)
    {
      v7 = APBrowserControllerRegisterInternalClientNeedsDiscovery(v6, a2, v3);
      v8 = v7;
      if (v7)
      {
        APEndpointManagerUpdateInternalClientNeedingDiscovery_cold_1(v7);
      }
    }

    else
    {
      APEndpointManagerUpdateInternalClientNeedingDiscovery_cold_2();
      return 4294950582;
    }
  }

  else
  {
    APEndpointManagerUpdateInternalClientNeedingDiscovery_cold_3();
    return 4294950586;
  }

  return v8;
}

void manager_updateExposedLocalEndpoint(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManager, "void manager_updateExposedLocalEndpoint(FigEndpointManagerRef, FigEndpointRef)", 33554482, "[%{ptr}] Exposed local endpoint change: from [%{ptr}] to [%{ptr}]\n", a1, *(DerivedStorage + 256), a2);
  }

  if (FigCFEqual())
  {
    manager_updateExposedLocalEndpoint_cold_1();
  }

  else
  {
    if (*(DerivedStorage + 256))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (manager_exposedLocalEndpointIsPersistentlyConnectedCluster(a1))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        if (*(DerivedStorage + 396) == 4)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListener();
        }
      }

      v5 = *(DerivedStorage + 256);
    }

    else
    {
      v5 = 0;
    }

    *(DerivedStorage + 256) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (*(DerivedStorage + 256))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      if (manager_exposedLocalEndpointIsPersistentlyConnectedCluster(a1))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        if (*(DerivedStorage + 396) == 4)
        {
          CMNotificationCenterGetDefaultLocalCenter();

          FigNotificationCenterAddWeakListener();
        }
      }
    }
  }
}

uint64_t __manager_create_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  mach_absolute_time();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    __manager_create_block_invoke_2_cold_1(v1);
  }

  v2 = FigPWDKeyExchangeSenderInitializeAMS();
  result = mach_absolute_time();
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      v4 = UpTicksToMilliseconds();
      v5 = UpTicksToMilliseconds();
      return LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_create(CFDictionaryRef, FigEndpointManagerRef *)_block_invoke_2", 33554482, "[%{ptr}] <PWDKeyExchange> Done pre-roll: %#m. Task: %llu ms. Total: %llu ms\n", v1, v2, v4, v5);
    }
  }

  return result;
}

uint64_t manager_registerForNotifications(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __manager_registerForNotifications_block_invoke;
  handler[3] = &__block_descriptor_40_e8_v12__0i8l;
  handler[4] = a1;
  notify_register_dispatch("com.apple.airplay.prefsChanged", (DerivedStorage + 16), v3, handler);
  v4 = *(DerivedStorage + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __manager_registerForNotifications_block_invoke_2;
  v11[3] = &__block_descriptor_40_e8_v12__0i8l;
  v11[4] = a1;
  result = notify_register_dispatch("com.apple.airplay.stopSenderSession", (DerivedStorage + 24), v4, v11);
  v6 = *(DerivedStorage + 396);
  if (v6 <= 0xD && ((1 << v6) & 0x2090) != 0 && !*(DerivedStorage + 3))
  {
    v7 = *(DerivedStorage + 8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __manager_registerForNotifications_block_invoke_3;
    v10[3] = &__block_descriptor_48_e8_v12__0i8l;
    v10[4] = DerivedStorage;
    v10[5] = a1;
    result = notify_register_dispatch("com.apple.airplay.active", (DerivedStorage + 20), v7, v10);
    v6 = *(DerivedStorage + 396);
  }

  if (v6 == 7)
  {
    v8 = *(DerivedStorage + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __manager_registerForNotifications_block_invoke_4;
    v9[3] = &__block_descriptor_48_e8_v12__0i8l;
    v9[4] = DerivedStorage;
    v9[5] = a1;
    return notify_register_dispatch("kAirPlayWHANotification_GroupMemberInterruptedByPreWHASender", (DerivedStorage + 28), v8, v9);
  }

  return result;
}

void manager_handlePreferencesChanged(void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  APSSettingsSynchronize();
  FigSimpleMutexLock();
  if (APSIsLocalClusterWithStaticLeadershipEnabled())
  {
    v5 = *(DerivedStorage + 396);
    if (v5 != 100)
    {
      goto LABEL_22;
    }

    v30 = 0;
    v6 = *MEMORY[0x277CBECE8];
    v7 = APAdvertiserInfoCreate();
    if (v7)
    {
      manager_handlePreferencesChanged_cold_1(v7);
    }

    else
    {
      v8 = APSCopyDeviceName();
      if (v8)
      {
        v9 = v8;
        APSCopyPersistentGroupInfo();
        Mutable = APSFeaturesCreateMutable();
        if (Mutable)
        {
          APSFeaturesSetFeature();
          v11 = APAdvertiserInfoSetProperty();
          if (v11)
          {
            manager_handlePreferencesChanged_cold_8(v11);
          }

          else
          {
            v12 = APAdvertiserInfoSetProperty();
            if (v12)
            {
              manager_handlePreferencesChanged_cold_9(v12);
            }

            else
            {
              v13 = CFObjectSetPropertyInt64();
              if (v13)
              {
                manager_handlePreferencesChanged_cold_10(v13);
              }

              else
              {
                v14 = APAdvertiserInfoSetProperty();
                if (!v14)
                {
                  v15 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  if (v15)
                  {
                    FigCFDictionarySetValue();
                    v16 = APAdvertiserInfoCopyAirPlayData();
                    if (v16)
                    {
                      manager_handlePreferencesChanged_cold_12(v16);
                    }

                    else
                    {
                      FigCFDictionarySetValue();
                      manager_updateLocalInfoDict(a1, v15);
                      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_setLocalEndpointInfoFromPrefs(FigEndpointManagerRef)", 33554482, "Updated local info with properties: deviceName=%@ pgUUID=%@ pgType=%d pgSize=%d pgMemberID=%@ pgModel=%@ pgName=%@\n", v9, 0, 0, 0, 0, 0, 0);
                      }
                    }
                  }

                  else
                  {
                    manager_handlePreferencesChanged_cold_13();
                  }

                  goto LABEL_16;
                }

                manager_handlePreferencesChanged_cold_11(v14);
              }
            }
          }
        }

        else
        {
          manager_handlePreferencesChanged_cold_14();
        }

        v15 = 0;
LABEL_16:
        CFRelease(v9);
LABEL_17:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        goto LABEL_21;
      }

      manager_handlePreferencesChanged_cold_15();
    }

    v15 = 0;
    Mutable = 0;
    goto LABEL_17;
  }

LABEL_21:
  v5 = *(DerivedStorage + 396);
LABEL_22:
  v17 = v5 > 0xD;
  v18 = (1 << v5) & 0x2090;
  if (!v17 && v18 != 0)
  {
    *(DerivedStorage + 120) = APSSettingsGetIntWithDefault() != 0;
  }

  v30 = 0;
  APSCopyTightSyncInfo();
  v20 = (DerivedStorage + 136);
  if (!FigCFEqual())
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handlePreferencesChanged_cold_16((DerivedStorage + 136), &v30);
    }

    v21 = *v20;
    v22 = v30;
    *v20 = v30;
    if (v22)
    {
      CFRetain(v22);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (!a2 && !*v20)
    {
      v23 = *(DerivedStorage + 152);
      if (v23)
      {
        dispatch_source_cancel(*(DerivedStorage + 152));
        dispatch_release(v23);
        *(DerivedStorage + 152) = 0;
      }
    }
  }

  if (v30)
  {
    CFRelease(v30);
  }

  v24 = APSSettingsCopyValue();
  v25 = FigCFEqual();
  if (!v25)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handlePreferencesChanged_cold_17(v24);
    }

    v26 = *(DerivedStorage + 104);
    *(DerivedStorage + 104) = v24;
    if (v24)
    {
      CFRetain(v24);
    }

    if (v26)
    {
      CFRelease(v26);
    }
  }

  v27 = APSSettingsCopyValue();
  if (FigCFEqual())
  {
    if (v25)
    {
      if (!a2)
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    }
  }

  else
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handlePreferencesChanged_cold_18(v27);
    }

    v28 = *(DerivedStorage + 112);
    *(DerivedStorage + 112) = v27;
    if (v27)
    {
      CFRetain(v27);
    }

    if (v28)
    {
      CFRelease(v28);
    }
  }

  manager_updateAllowedDevices(a1, *(DerivedStorage + 168));
  manager_updateAllowedDevices(a1, *(DerivedStorage + 176));
  if (!a2)
  {
    goto LABEL_63;
  }

LABEL_61:
  v29 = *(DerivedStorage + 296);
  if (v29)
  {
    manager_updateEndpointClusterMembershipIfNeeded(a1, v29, 0, 0);
  }

LABEL_63:
  FigSimpleMutexUnlock();
  if (v24)
  {
    CFRelease(v24);
  }

  if (v27)
  {
    CFRelease(v27);
  }
}

uint64_t manager_handleActivateEndpointCommand(uint64_t a1, const void *a2, void *a3)
{
  if (a2)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handleActivateEndpointCommand_cold_1(a2);
    }

    if (IsAppleInternalBuild() && CFDictionaryGetInt64())
    {
      TestInfoDictionary = APAdvertiserInfoCreateTestInfoDictionary();
      CFDictionaryMergeDictionary();
    }

    else
    {
      TestInfoDictionary = CFRetain(a2);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    *a3 = 0;
    if (TestInfoDictionary)
    {
      CFRelease(TestInfoDictionary);
    }

    return 0;
  }

  else
  {
    manager_handleActivateEndpointCommand_cold_2();
    return 4294950586;
  }
}

void manager_handleCreateEndpointWithEndpointInfoNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize())
    {
      manager_handleCreateEndpointWithEndpointInfoNotification_cold_1(a2);
    }

    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManager, "void manager_handleCreateEndpointWithEndpointInfoNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 50, "%###s: manager %{ptr} received payload: %@\n", "void manager_handleCreateEndpointWithEndpointInfoNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", a2, a5);
    }
  }

  if (CFDictionaryContainsKey(a5, @"NetworkAddress"))
  {
    v23 = 0;
    v8 = *MEMORY[0x277CBECE8];
    v9 = APAdvertiserInfoCreate();
    v24 = v9;
    if (v9)
    {
      manager_handleCreateEndpointWithEndpointInfoNotification_cold_2(v9);
      v20 = 0;
      v10 = 0;
    }

    else
    {
      CFDictionaryApplyBlock();
      v10 = CFDictionaryCopyCString();
      TextToHardwareAddressScalar();
      if (CFDictionaryGetValue(a5, @"NetworkAddress"))
      {
        Int64 = CFDictionaryGetInt64();
        v12 = CFDictionaryGetInt64();
        v13 = CFDictionaryGetInt64();
        Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetInt64();
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4CF8], 0);
        v15 = *MEMORY[0x277CBED28];
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4D08], *MEMORY[0x277CBED28]);
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4D10], v15);
        if (v13)
        {
          v16 = 1;
        }

        else
        {
          v16 = v12 == 0;
        }

        if (v16)
        {
          v17 = *MEMORY[0x277CBED10];
        }

        else
        {
          v17 = v15;
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4D00], v17);
        v18 = APSNetworkAddressCreateWithString();
        v24 = v18;
        if (v18)
        {
          manager_handleCreateEndpointWithEndpointInfoNotification_cold_4(v18);
        }

        else
        {
          if (Int64)
          {
            APSNetworkAddressSetPort();
          }

          v19 = APTransportDeviceCreateWithNetworkAddress();
          v24 = v19;
          if (!v19)
          {
            v24 = APEndpointCreateWithTransportDevice(v8, 0, 0, a2, 0, &v23);
            if (v24)
            {
              APSLogErrorAt();
              v20 = v23;
              free(v10);
              if (v20)
              {
                CFRelease(v20);
                v20 = 0;
              }

              if (!Mutable)
              {
                goto LABEL_25;
              }

              goto LABEL_24;
            }

            v20 = v23;
            v23 = 0;
LABEL_23:
            free(v10);
            if (!Mutable)
            {
LABEL_25:
              if (v24)
              {
                manager_handleCreateEndpointWithEndpointInfoNotification_cold_7(v24);
              }

              else
              {
                v21 = manager_injectEndpoint(a2, a5, 0, v20);
                if (v21)
                {
                  manager_handleCreateEndpointWithEndpointInfoNotification_cold_8(v21);
                }
              }

              if (v20)
              {
                CFRelease(v20);
              }

              return;
            }

LABEL_24:
            CFRelease(Mutable);
            goto LABEL_25;
          }

          manager_handleCreateEndpointWithEndpointInfoNotification_cold_5(v19);
        }

        v20 = 0;
        goto LABEL_23;
      }

      manager_handleCreateEndpointWithEndpointInfoNotification_cold_6(&v24);
      v20 = 0;
    }

    Mutable = 0;
    goto LABEL_23;
  }

  v22 = APBrowserControllerDiscoverAndInjectEndpoint(*(DerivedStorage + 312));
  if (v22)
  {
    manager_handleCreateEndpointWithEndpointInfoNotification_cold_9(v22);
  }
}

uint64_t manager_handleClearEndpointCommand(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleClearEndpointCommand_cold_1(a2);
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else if (a2)
  {
LABEL_5:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    result = 0;
    *a3 = 0;
    return result;
  }

  manager_handleClearEndpointCommand_cold_2();
  return 4294950586;
}

void manager_handleClearEndpointWithEndpointIDNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  FigSimpleMutexLock();
  v6 = CFDictionaryCopyCString();
  if (v15)
  {
    APSLogErrorAt();
    goto LABEL_12;
  }

  v7 = TextToHardwareAddressScalar();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManager, "void manager_handleClearEndpointWithEndpointIDNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Clearing endpoint with discoveryID=%llu\n", a2, v7);
  }

  CFDictionaryApplyBlock();
  v8 = v12;
  v9 = v12[3];
  if (v9)
  {
    if (gLogCategory_APEndpointManager <= 50)
    {
      if (gLogCategory_APEndpointManager == -1)
      {
        v10 = _LogCategory_Initialize();
        v8 = v12;
        if (!v10)
        {
          goto LABEL_11;
        }

        v9 = v12[3];
      }

      LogPrintF(&gLogCategory_APEndpointManager, "void manager_handleClearEndpointWithEndpointIDNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Found existing endpoint [%{ptr}], removing...\n", a2, v9);
      v8 = v12;
    }

LABEL_11:
    manager_removeEndpointIfNeeded(a2, v8[3], 1);
  }

LABEL_12:
  FigSimpleMutexUnlock();
  free(v6);
  _Block_object_dispose(&v11, 8);
}

void sub_2220B1DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t manager_handleUpdateLocalEndpointAuthStringCommand(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  if (APEndpointManagerGetShared_once != -1)
  {
    APEndpointManagerCreate_cold_1();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    a2 = CFDictionaryGetValue(a2, @"AuthString");
  }

  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    v6 = 0;
  }

  else
  {
    v8 = *(DerivedStorage + 248);
    *(DerivedStorage + 248) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v6 = FigCFDictionaryCopyArrayOfValues();
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v6, v11);
        if (APSGetFBOPropertyInt64())
        {
          break;
        }

        if (v10 == ++v11)
        {
          goto LABEL_7;
        }
      }

      CMBaseObject = FigEndpointGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v13)
      {
        v13(CMBaseObject, *MEMORY[0x277CC1488], a2);
      }
    }
  }

LABEL_7:
  FigSimpleMutexUnlock();
  *a3 = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t manager_handleUpdateLocalInfoDictCommand(uint64_t a1, CFDictionaryRef theDict, void *a3)
{
  if (APEndpointManagerGetShared_once != -1)
  {
    APEndpointManagerCreate_cold_1();
  }

  v5 = APEndpointManagerGetShared_sAPEndpointManager;
  *a3 = 0;
  Value = CFDictionaryGetValue(theDict, @"InfoDict");
  if (MEMORY[0x223DAEBE0]())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*(DerivedStorage + 376))
    {
      *(DerivedStorage + 376) = os_transaction_create();
    }
  }

  manager_updateLocalInfoDict(v5, Value);
  return 0;
}

uint64_t manager_handleDiscoveryBrokerRequest(uint64_t a1, uint64_t a2, void *a3)
{
  if (APEndpointManagerGetShared_once != -1)
  {
    APEndpointManagerCreate_cold_1();
  }

  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager > 30 || gLogCategory_APEndpointManager == -1 && !_LogCategory_Initialize())
  {
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_29:
    manager_handleDiscoveryBrokerRequest_cold_9();
LABEL_36:
    result = 4294960591;
    goto LABEL_21;
  }

  manager_handleDiscoveryBrokerRequest_cold_2(a2);
  if (!a2)
  {
    goto LABEL_29;
  }

LABEL_7:
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    manager_handleDiscoveryBrokerRequest_cold_8();
    goto LABEL_36;
  }

  v6 = TypedValue;
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if (!v7)
  {
    manager_handleDiscoveryBrokerRequest_cold_7();
    goto LABEL_36;
  }

  v8 = v7;
  if (CFEqual(v6, @"Authenticate"))
  {
    CFStringGetTypeID();
    if (CFDictionaryGetTypedValue())
    {
      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        manager_handleDiscoveryBrokerRequest_cold_3();
      }

      CFRetain(v8);
      APBrokerManagerAuthenticateBrokerGroup();
LABEL_20:
      result = 0;
      goto LABEL_21;
    }

    manager_handleDiscoveryBrokerRequest_cold_4();
    goto LABEL_36;
  }

  if (CFEqual(v6, @"GetInfo"))
  {
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handleDiscoveryBrokerRequest_cold_5();
    }

    CFRetain(v8);
    APBrokerManagerGetInfoFromBrokerGroup();
    goto LABEL_20;
  }

  if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleDiscoveryBrokerRequest_cold_6(v6, v9, v10);
  }

  result = 4294960561;
LABEL_21:
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

void manager_connectToAddressIntrospectorCmd(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  if (a3 < 2)
  {
LABEL_7:
    FPrintF(a2, "Usage: %s <address> [key1:type1:val1] [key2:type2:val2] ...\n", *a4);
    return;
  }

  v6 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[1], 0x8000100u);
  TestInfoDictionary = APAdvertiserInfoCreateTestInfoDictionary();
  CFDictionarySetValue(TestInfoDictionary, *MEMORY[0x277CE4B90], v6);
  CFDictionarySetValue(TestInfoDictionary, @"NetworkAddress", v6);
  if (CFDictionaryCreateFromNameTypeValueArgList())
  {
    FPrintF(a2, "%s: parameter parse error: %#m\n", *a4);
    if (v6)
    {
      CFRelease(v6);
    }

    if (TestInfoDictionary)
    {
      CFRelease(TestInfoDictionary);
    }

    goto LABEL_7;
  }

  CFDictionaryMergeDictionary();
  FPrintF(a2, "Posting CreateEndpointWithEndpointInfo notification with payload: %@\n", TestInfoDictionary);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v6)
  {
    CFRelease(v6);
  }

  if (TestInfoDictionary)
  {
    CFRelease(TestInfoDictionary);
  }
}

void manager_introspector_listEndpoints(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v45[0] = 0;
  if (!a1)
  {
    manager_introspector_listEndpoints_cold_3(a2);
    return;
  }

  v6 = a3;
  v8 = 0;
  for (i = 1; ; i = 0)
  {
    do
    {
      v10 = v8;
      v11 = getopt(v6, a4, "va");
      v8 = 1;
    }

    while (v11 == 118);
    if (v11 == -1)
    {
      break;
    }

    if (v11 != 97)
    {
      FPrintF(a2, "Error: Invalid option\n");
LABEL_12:
      FPrintF(a2, "Usage: %s [-va]\n", *a4);
      FPrintF(a2, "  -v: verbose mode - print extra information\n");

      FPrintF(a2, "  -a: available - list only available endpoints, instead of all known endpoints\n");
      return;
    }

    v8 = v10;
  }

  if (*MEMORY[0x277D85E78] < v6)
  {
    FPrintF(a2, "Error: Too many arguments at '%s'\n");
    goto LABEL_12;
  }

  if (i)
  {
    v12 = manager_copyEndpoints(a1, 0);
    v45[0] = v12;
    if (!v12)
    {
      manager_introspector_listEndpoints_cold_2(a2);
      return;
    }

    goto LABEL_18;
  }

  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v15 = v14(CMBaseObject, *MEMORY[0x277CC0C30], *MEMORY[0x277CBECE8], v45);
    if (!v15)
    {
      v12 = v45[0];
      if (!v45[0])
      {
LABEL_52:
        FPrintF(a2, "Retrieved endpoints (result %#m) - wrong type (not array). endpoints = %@\n", 0, v12);
        goto LABEL_53;
      }

LABEL_18:
      v16 = CFGetTypeID(v12);
      TypeID = CFArrayGetTypeID();
      v12 = v45[0];
      if (v16 == TypeID)
      {
        Count = CFArrayGetCount(v45[0]);
        FPrintF(a2, "Retrieved %d endpoints:\n", Count);
        if (Count >= 1)
        {
          v19 = 0;
          v39 = *MEMORY[0x277CC12C8];
          v40 = *MEMORY[0x277CBECE8];
          v38 = *MEMORY[0x277CC1368];
          v37 = *MEMORY[0x277CC1450];
          v36 = *MEMORY[0x277CC14E8];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v45[0], v19);
            if (APSGetFBOPropertyInt64())
            {
              v43 = 0;
              v44 = 0;
              v42 = 0;
              cf = 0;
              v21 = APSGetFBOPropertyInt64();
              v22 = FigEndpointGetCMBaseObject();
              v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v23)
              {
                v23(v22, v39, v40, &v44);
              }

              v24 = FigEndpointGetCMBaseObject();
              v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v25)
              {
                v25(v24, v38, v40, &v43);
              }

              v26 = FigEndpointGetCMBaseObject();
              v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v27)
              {
                v27(v26, v37, v40, &v42);
              }

              v28 = APSGetFBOPropertyInt64();
              v29 = FigEndpointGetCMBaseObject();
              v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v30)
              {
                v30(v29, v36, v40, &cf);
              }

              if (cf && (v31 = CFGetTypeID(cf), v31 == CFArrayGetTypeID()))
              {
                v32 = CFArrayGetCount(cf);
              }

              else
              {
                v32 = 0;
              }

              FPrintF(a2, "  ");
              if (v10)
              {
                FPrintF(a2, "[%p]/", ValueAtIndex);
              }

              v33 = "Local";
              if (!v21)
              {
                v33 = "Remote";
              }

              FPrintF(a2, "[%{ptr}]     %-*@ %''-*@ %s %@ Cluster (%d/%d)\n", ValueAtIndex, 36, v43, 20, v42, v33, v44, v32, v28);
              if (v32 >= 1)
              {
                for (j = 0; j != v32; ++j)
                {
                  v35 = CFArrayGetValueAtIndex(cf, j);
                  manager_introspector_showEndpointInfo(a2, 2, v35, v10);
                }
              }

              if (v44)
              {
                CFRelease(v44);
              }

              if (v43)
              {
                CFRelease(v43);
              }

              if (v42)
              {
                CFRelease(v42);
              }

              if (cf)
              {
                CFRelease(cf);
              }
            }

            else
            {
              manager_introspector_showEndpointInfo(a2, 0, ValueAtIndex, v10);
            }

            ++v19;
          }

          while (v19 != Count);
        }

        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v15 = 4294954514;
  }

  manager_introspector_listEndpoints_cold_1(v15, a2);
LABEL_53:
  if (v45[0])
  {
    CFRelease(v45[0]);
  }
}

void manager_introspector_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  cf = 0;
  v39 = 0;
  if (!a1)
  {
    manager_introspector_copyProperty_cold_2(a2);
    v28 = 0;
    goto LABEL_50;
  }

  v6 = a3;
  while (1)
  {
    v8 = getopt(v6, a4, "rw");
    if (v8 != 114)
    {
      break;
    }

    v9 = (&v39 + 1);
LABEL_7:
    *v9 = 1;
  }

  if (v8 == 119)
  {
    HIBYTE(v39) = 1;
    v9 = &v39;
    goto LABEL_7;
  }

  if (v8 != -1)
  {
    FPrintF(a2, "Error: Invalid option\n");
LABEL_13:
    FPrintF(a2, "Usage: %s [-r|w] [desc@]<name|ID|hash|ptr|-> <propertyKey>\n", *a4);
    manager_introspector_printRWUsage(a2);
    FPrintF(a2, "  'desc@' prefix indicates the property should be retrieved from the endpoint's description, rather than the endpoint itself\n");

    FPrintF(a2, "  The '-' identifier means read the property from APEndpointManager, rather than a specified endpoint\n");
    return;
  }

  v10 = MEMORY[0x277D85E78];
  v11 = *MEMORY[0x277D85E78];
  if (v11 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: name|ID|hash|ptr\n");
    goto LABEL_13;
  }

  v12 = a4[v11];
  v13 = strncmp(v12, "desc@", 5uLL);
  v14 = *MEMORY[0x277CBECE8];
  if (v13)
  {
    v15 = *MEMORY[0x277CBECE8];
    v16 = v12;
  }

  else
  {
    v16 = v12 + 5;
    v15 = *MEMORY[0x277CBECE8];
  }

  v17 = CFStringCreateWithCString(v15, v16, 0x8000100u);
  v18 = *v10 + 1;
  *v10 = v18;
  if (v18 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: propertyKey\n");
    v19 = 0;
LABEL_70:
    if (v17)
    {
      CFRelease(v17);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    goto LABEL_13;
  }

  v19 = CFStringCreateWithCString(v14, a4[v18], 0x8000100u);
  v20 = *v10 + 1;
  *v10 = v20;
  if (v20 < v6)
  {
    FPrintF(a2, "Error: Too many arguments at '%s'\n", a4[v20]);
    goto LABEL_70;
  }

  if (!FigCFEqual())
  {
    v24 = manager_introspector_copyMatchingEndpoint(a1, v17, HIBYTE(v39), v39);
    if (!v24)
    {
      FPrintF(a2, "Error: Couldn't find a matching endpoint for: %@\n", v17);
      goto LABEL_44;
    }

    if (v13)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v26)
      {
        v27 = v26(CMBaseObject, v19, v14, &cf);
        if (!v27)
        {
LABEL_29:
          v28 = 0;
LABEL_30:
          FPrintF(a2, "%@ = %@\n", v19, cf);
          goto LABEL_31;
        }
      }

      else
      {
        v27 = 4294954514;
      }

      FPrintF(a2, "Error: Error copying %@ from [%{ptr}]: %#m\n", v19, v24, v27);
      goto LABEL_44;
    }

    v29 = FigEndpointGetCMBaseObject();
    v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v30)
    {
      v31 = v30(v29, @"EndpointDescription", v14, &cf);
      if (!v31)
      {
        if (!cf || (v32 = CFGetTypeID(cf), v32 != APEndpointDescriptionGetTypeID(v32, v33)))
        {
          if (gLogCategory_APEndpointManager <= 60)
          {
            if (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize())
            {
              LogPrintF(&gLogCategory_APEndpointManager, "void manager_introspector_copyProperty(const void *, FILE *, int, char **)", 33554492, "Introspection: EndpointDescription [%{ptr}] for [%{ptr}] is not an APEndpointDescription!\n", cf, v24);
            }

            if (gLogCategory_APEndpointManager <= 60 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
            {
              manager_introspector_copyProperty_cold_1();
            }
          }

          FPrintF(a2, "Error: Invalid endpoint description for endpoint [%{ptr}]\n", v24, v38);
          goto LABEL_44;
        }

        v28 = cf;
        cf = 0;
        APEndpointDescriptionGetCMBaseObject();
        v35 = v34;
        v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v36)
        {
          v37 = v36(v35, v19, v14, &cf);
          if (!v37)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v37 = 4294954514;
        }

        FPrintF(a2, "Error: Error copying %@ from desc@[%{ptr}]: %#m\n", v19, v24, v37);
LABEL_31:
        if (v17)
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v31 = 4294954514;
    }

    FPrintF(a2, "Error: Error copying %@ from [%{ptr}]: %#m\n", @"EndpointDescription", v24, v31);
    goto LABEL_44;
  }

  v21 = FigEndpointManagerGetCMBaseObject();
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v22)
  {
    v23 = v22(v21, v19, v14, &cf);
    if (!v23)
    {
      v24 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v23 = 4294954514;
  }

  FPrintF(a2, "Error: Error copying %@ from manager [%{ptr}]: %#m\n", v19, a1, v23);
  v24 = 0;
LABEL_44:
  v28 = 0;
  if (v17)
  {
LABEL_45:
    CFRelease(v17);
  }

LABEL_46:
  if (v24)
  {
    CFRelease(v24);
  }

  if (v19)
  {
    CFRelease(v19);
  }

LABEL_50:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }
}

void manager_introspector_setProperty(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  cf = 0;
  v23 = 0;
  if (!a1)
  {
    manager_introspector_setProperty_cold_1(a2);
    goto LABEL_30;
  }

  v6 = a3;
  while (1)
  {
    v8 = getopt(v6, a4, "rw");
    if (v8 != 114)
    {
      break;
    }

    v9 = (&v23 + 1);
LABEL_7:
    *v9 = 1;
  }

  if (v8 == 119)
  {
    HIBYTE(v23) = 1;
    v9 = &v23;
    goto LABEL_7;
  }

  if (v8 != -1)
  {
    FPrintF(a2, "Error: Invalid option\n");
LABEL_19:
    if (cf)
    {
      CFRelease(cf);
    }

    FPrintF(a2, "Usage: %s [-r|w] <name|ID|hash|ptr> <propertyKey> <propertyValue>\n", *a4);
    manager_introspector_printRWUsage(a2);
    FPrintF(a2, "  propertyValue is passed to CFCreateObjectFromString() which guesses type from format.\n");
    return;
  }

  v10 = MEMORY[0x277D85E78];
  v11 = *MEMORY[0x277D85E78];
  if (v11 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: name|ID|hash|ptr\n");
    goto LABEL_19;
  }

  v12 = *MEMORY[0x277CBECE8];
  v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v11], 0x8000100u);
  v14 = *v10 + 1;
  *v10 = v14;
  if (v14 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: propertyKey\n");
    v15 = 0;
LABEL_39:
    if (v13)
    {
      CFRelease(v13);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    goto LABEL_19;
  }

  v15 = CFStringCreateWithCString(v12, a4[v14], 0x8000100u);
  v16 = *v10 + 1;
  *v10 = v16;
  if (v16 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: propertyValue\n");
    goto LABEL_39;
  }

  if (CFCreateObjectFromString())
  {
    FPrintF(a2, "Error: Couldn't parse value argument '%s'\n");
    goto LABEL_39;
  }

  v17 = *v10 + 1;
  *v10 = v17;
  if (v17 < v6)
  {
    FPrintF(a2, "Error: Too many arguments at '%s'\n");
    goto LABEL_39;
  }

  v18 = manager_introspector_copyMatchingEndpoint(a1, v13, HIBYTE(v23), v23);
  if (v18)
  {
    v19 = cf;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v21)
    {
      v22 = v21(CMBaseObject, v15, v19);
      if (!v22)
      {
        FPrintF(a2, "%@ => %@: success\n", v15, cf);
        goto LABEL_24;
      }
    }

    else
    {
      v22 = 4294954514;
    }

    FPrintF(a2, "Error: Error setting %@ => %@ on [%{ptr}]: %#m\n", v15, cf, v18, v22);
  }

  else
  {
    FPrintF(a2, "Error: Couldn't find a matching endpoint for: %@\n", v13);
  }

LABEL_24:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }
}

void manager_introspector_copySubEndpointProperty(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  cf = 0;
  v24 = 0;
  if (!a1)
  {
    manager_introspector_copySubEndpointProperty_cold_1(a2);
    goto LABEL_33;
  }

  v6 = a3;
  while (1)
  {
    v8 = getopt(v6, a4, "rw");
    if (v8 != 114)
    {
      break;
    }

    v9 = (&v24 + 1);
LABEL_7:
    *v9 = 1;
  }

  if (v8 == 119)
  {
    HIBYTE(v24) = 1;
    v9 = &v24;
    goto LABEL_7;
  }

  if (v8 != -1)
  {
    FPrintF(a2, "Error: Invalid option\n");
LABEL_20:
    FPrintF(a2, "Usage: %s [-r|w] <name|ID|hash|ptr> <subEndpointID> <propertyKey>\n", *a4);

    manager_introspector_printRWUsage(a2);
    return;
  }

  v10 = MEMORY[0x277D85E78];
  v11 = *MEMORY[0x277D85E78];
  if (v11 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: name|ID|hash|ptr\n");
    goto LABEL_20;
  }

  v12 = *MEMORY[0x277CBECE8];
  v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v11], 0x8000100u);
  v14 = *v10 + 1;
  *v10 = v14;
  if (v14 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: subEndpointID\n");
    v15 = 0;
LABEL_41:
    v17 = 0;
LABEL_43:
    if (v13)
    {
      CFRelease(v13);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    goto LABEL_20;
  }

  v15 = CFStringCreateWithCString(v12, a4[v14], 0x8000100u);
  v16 = *v10 + 1;
  *v10 = v16;
  if (v16 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: propertyKey\n");
    goto LABEL_41;
  }

  v17 = CFStringCreateWithCString(v12, a4[v16], 0x8000100u);
  v18 = *v10 + 1;
  *v10 = v18;
  if (v18 < v6)
  {
    FPrintF(a2, "Error: Too many arguments at '%s'\n", a4[v18]);
    goto LABEL_43;
  }

  v19 = manager_introspector_copyMatchingEndpoint(a1, v13, HIBYTE(v24), v24);
  if (v19)
  {
    FigEndpointSubEndpointSupportProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v21 = *(ProtocolVTable + 16)) != 0)
    {
      v22 = *(v21 + 8);
      if (v22)
      {
        v23 = v22(v19, v15, v17, v12, &cf);
        if (!v23)
        {
          FPrintF(a2, "%@ = %@\n", v17, cf);
          goto LABEL_25;
        }
      }

      else
      {
        v23 = 4294954514;
      }
    }

    else
    {
      v23 = 4294954508;
    }

    FPrintF(a2, "Error: Error copying %@ from [%{ptr}]: %#m\n", v17, v19, v23);
  }

  else
  {
    FPrintF(a2, "Error: Couldn't find a matching endpoint for: %@\n", v13);
  }

LABEL_25:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v17)
  {
    CFRelease(v17);
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }
}

void manager_introspector_setSubEndpointProperty(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  cf = 0;
  v26 = 0;
  if (!a1)
  {
    manager_introspector_setSubEndpointProperty_cold_1(a2);
    goto LABEL_35;
  }

  v6 = a3;
  while (1)
  {
    v8 = getopt(v6, a4, "rw");
    if (v8 != 114)
    {
      break;
    }

    v9 = (&v26 + 1);
LABEL_7:
    *v9 = 1;
  }

  if (v8 == 119)
  {
    HIBYTE(v26) = 1;
    v9 = &v26;
    goto LABEL_7;
  }

  if (v8 != -1)
  {
    FPrintF(a2, "Error: Invalid option\n");
LABEL_22:
    if (cf)
    {
      CFRelease(cf);
    }

    FPrintF(a2, "Usage: %s [-r|w] <name|ID|hash|ptr> <subEndpointID> <propertyKey> <propertyValue>\n", *a4);
    manager_introspector_printRWUsage(a2);
    FPrintF(a2, "  propertyValue is passed to CFCreateObjectFromString() which guesses type from format.\n");
    return;
  }

  v10 = MEMORY[0x277D85E78];
  v11 = *MEMORY[0x277D85E78];
  if (v11 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: name|ID|hash|ptr\n");
    goto LABEL_22;
  }

  v12 = *MEMORY[0x277CBECE8];
  v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v11], 0x8000100u);
  v14 = *v10 + 1;
  *v10 = v14;
  if (v14 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: subEndpointID\n");
    v15 = 0;
LABEL_43:
    v17 = 0;
LABEL_47:
    if (v13)
    {
      CFRelease(v13);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    goto LABEL_22;
  }

  v15 = CFStringCreateWithCString(v12, a4[v14], 0x8000100u);
  v16 = *v10 + 1;
  *v10 = v16;
  if (v16 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: propertyKey\n");
    goto LABEL_43;
  }

  v17 = CFStringCreateWithCString(v12, a4[v16], 0x8000100u);
  v18 = *v10 + 1;
  *v10 = v18;
  if (v18 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: propertyValue\n");
    goto LABEL_47;
  }

  if (CFCreateObjectFromString())
  {
    FPrintF(a2, "Error: Couldn't parse value argument '%s'\n");
    goto LABEL_47;
  }

  v19 = *v10 + 1;
  *v10 = v19;
  if (v19 < v6)
  {
    FPrintF(a2, "Error: Too many arguments at '%s'\n");
    goto LABEL_47;
  }

  v20 = manager_introspector_copyMatchingEndpoint(a1, v13, HIBYTE(v26), v26);
  if (v20)
  {
    v21 = cf;
    FigEndpointSubEndpointSupportProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v23 = *(ProtocolVTable + 16)) != 0)
    {
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v24(v20, v15, v17, v21);
        if (!v25)
        {
          FPrintF(a2, "%@ => %@: success\n", v17, cf);
          goto LABEL_27;
        }
      }

      else
      {
        v25 = 4294954514;
      }
    }

    else
    {
      v25 = 4294954508;
    }

    FPrintF(a2, "Error: Error setting %@ => %@ on [%{ptr}]: %#m\n", v17, cf, v20, v25);
  }

  else
  {
    FPrintF(a2, "Error: Couldn't find a matching endpoint for: %@\n", v13);
  }

LABEL_27:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v17)
  {
    CFRelease(v17);
  }

LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }
}

void manager_introspector_sendCommand(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  cf = 0;
  v20 = 0;
  if (!a1)
  {
    manager_introspector_sendCommand_cold_1(a2);
    goto LABEL_30;
  }

  v6 = a3;
  while (1)
  {
    v8 = getopt(v6, a4, "rw");
    if (v8 != 114)
    {
      break;
    }

    v9 = (&v20 + 1);
LABEL_7:
    *v9 = 1;
  }

  if (v8 == 119)
  {
    HIBYTE(v20) = 1;
    v9 = &v20;
    goto LABEL_7;
  }

  if (v8 != -1)
  {
    FPrintF(a2, "Error: Invalid option\n");
LABEL_18:
    if (cf)
    {
      CFRelease(cf);
    }

    FPrintF(a2, "Usage: %s [-r|w] <name|ID|hash|ptr> <command> [key1:type1:val1] [key2:type2:val2] ...\n", *a4);
    manager_introspector_printRWUsage(a2);
    FPrintF(a2, "  key/type/val are used to create a parameter dictionary. See CoreUtils documentation for CFDictionaryCreateFromNameTypeValueArgList for details.\n");
    FPrintF(a2, "  For example, %s 'HomePod' changeRelativeVolume increment:b:false\n", *a4);
    return;
  }

  v10 = MEMORY[0x277D85E78];
  v11 = *MEMORY[0x277D85E78];
  if (v11 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: name|ID|hash|ptr\n");
    goto LABEL_18;
  }

  v12 = *MEMORY[0x277CBECE8];
  v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v11], 0x8000100u);
  v14 = *v10 + 1;
  *v10 = v14;
  if (v14 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: command\n");
    v15 = 0;
LABEL_37:
    if (v13)
    {
      CFRelease(v13);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    goto LABEL_18;
  }

  v15 = CFStringCreateWithCString(v12, a4[v14], 0x8000100u);
  ++*v10;
  if (CFDictionaryCreateFromNameTypeValueArgList())
  {
    FPrintF(a2, "%s: parameter parse error starting at '%s': %#m\n", *a4, a4[*v10]);
    goto LABEL_37;
  }

  v16 = manager_introspector_copyMatchingEndpoint(a1, v13, HIBYTE(v20), v20);
  if (v16)
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v17 = cf;
      v18 = *(*(CMBaseObjectGetVTable() + 24) + 72);
      if (v18)
      {
        v19 = v18(v16, v15, v17, 0, 0);
        if (!v19)
        {
          FPrintF(a2, "Sent command %@ (%@) to [%{ptr}]: success\n", v15, cf, v16);
          goto LABEL_24;
        }
      }

      else
      {
        v19 = 4294954514;
      }

      FPrintF(a2, "Error: Failed to send command %@ (%@) to [%{ptr}]: %#m\n", v15, cf, v16, v19);
    }

    else
    {
      FPrintF(a2, "Error: Endpoint for %@ does not support FigEndpointExtended\n", v13);
    }
  }

  else
  {
    FPrintF(a2, "Error: Couldn't find a matching endpoint for: %@\n", v13);
  }

LABEL_24:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }
}