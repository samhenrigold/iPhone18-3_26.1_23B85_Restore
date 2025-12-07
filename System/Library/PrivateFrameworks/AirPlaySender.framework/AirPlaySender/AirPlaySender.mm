uint64_t getkMRMediaRemoteNowPlayingInfoUniqueIdentifier()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoUniqueIdentifierSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoUniqueIdentifierSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoUniqueIdentifierSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoUniqueIdentifier");
    getkMRMediaRemoteNowPlayingInfoUniqueIdentifierSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoUniqueIdentifier_cold_1();
  }

  return *v0;
}

void sub_221FFBB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoTrackNumber()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoTrackNumberSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoTrackNumberSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTrackNumberSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoTrackNumber");
    getkMRMediaRemoteNowPlayingInfoTrackNumberSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoTrackNumber_cold_1();
  }

  return *v0;
}

void sub_221FFBC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoTotalTrackCount()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoTotalTrackCountSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoTotalTrackCountSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTotalTrackCountSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoTotalTrackCount");
    getkMRMediaRemoteNowPlayingInfoTotalTrackCountSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoTotalTrackCount_cold_1();
  }

  return *v0;
}

void sub_221FFBD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoTitle()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoTitle");
    getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoTitle_cold_1();
  }

  return *v0;
}

void sub_221FFBE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoTimestamp()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoTimestampSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoTimestampSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTimestampSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoTimestamp");
    getkMRMediaRemoteNowPlayingInfoTimestampSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoTimestamp_cold_1();
  }

  return *v0;
}

void sub_221FFBF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoMediaType()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr_0;
  v6 = getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr_0;
  if (!getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr_0)
  {
    v1 = MediaRemoteLibrary_0();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoMediaType");
    getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr_0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_4();
  }

  return *v0;
}

void sub_221FFC028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoElapsedTime()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoElapsedTimeSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoElapsedTimeSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoElapsedTimeSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoElapsedTime");
    getkMRMediaRemoteNowPlayingInfoElapsedTimeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoElapsedTime_cold_1();
  }

  return *v0;
}

void sub_221FFC11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoDuration()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoDurationSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoDurationSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoDurationSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoDuration");
    getkMRMediaRemoteNowPlayingInfoDurationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoDuration_cold_1();
  }

  return *v0;
}

void sub_221FFC210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoArtworkMIMEType()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoArtworkMIMEType");
    getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoArtworkMIMEType_cold_1();
  }

  return *v0;
}

void sub_221FFC304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoArtworkData()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoArtworkData");
    getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoArtworkData_cold_1();
  }

  return *v0;
}

void sub_221FFC3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoArtist()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoArtistSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoArtistSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoArtistSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoArtist");
    getkMRMediaRemoteNowPlayingInfoArtistSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoArtist_cold_1();
  }

  return *v0;
}

void sub_221FFC4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoAlbum()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoAlbumSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoAlbumSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoAlbumSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoAlbum");
    getkMRMediaRemoteNowPlayingInfoAlbumSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoAlbum_cold_1();
  }

  return *v0;
}

void sub_221FFC5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t emp_SetDiscoveryMode(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 96);
  if (v8)
  {
    v9 = CFRetain(v8);
    v10 = *(DerivedStorage + 96);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *(DerivedStorage + 96) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (dword_280FB1478 <= 40 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6(&dword_280FB1478, "OSStatus emp_SetDiscoveryMode(FigEndpointManagerRef, CFStringRef, CFDictionaryRef)", v7, "[%{ptr}] SetDiscoveryMode: %@ -> %@");
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (!FigCFEqual() && !FigCFEqual())
    {
      v11 = CMBaseObjectGetDerivedStorage();
      v13 = *(v11 + 104);
      if (v13)
      {
        v14 = v11;
        if (dword_280FB1478 > 40)
        {
          goto LABEL_22;
        }

        if (dword_280FB1478 != -1 || _LogCategory_Initialize())
        {
          OUTLINED_FUNCTION_6(&dword_280FB1478, "void emp_cancelCachePromotionDeadlineIfNecessary(FigEndpointManagerRef)", v12, "[%{ptr}] Cancel cache promotion deadline");
        }

        v13 = *(v14 + 104);
        if (v13)
        {
LABEL_22:
          dispatch_source_cancel(v13);
          dispatch_release(v13);
          *(v14 + 104) = 0;
        }
      }
    }
  }

  else
  {
    emp_restartCachePromotionDeadlineIfNecessary(a1);
  }

  FigSimpleMutexUnlock();
  if (v9)
  {
    CFRelease(v9);
  }

  v15 = *(DerivedStorage + 8);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v15, a2, a3);
}

uint64_t manager_SetDiscoveryMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v7 = *(DerivedStorage + 72) + 1;
    *(DerivedStorage + 72) = v7;
    if (gLogCategory_APEndpointManager <= 50)
    {
      if (gLogCategory_APEndpointManager != -1 || (v8 = _LogCategory_Initialize(), v7 = *(DerivedStorage + 72), v8))
      {
        LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_SetDiscoveryMode(FigEndpointManagerRef, CFStringRef, CFDictionaryRef)", 33554482, "[%{ptr}] SetDiscoveryMode: %@ with seed %llu\n", a1, a2, v7);
        v7 = *(DerivedStorage + 72);
      }
    }

    v9 = APBrowserControllerSetRequestedDiscoveryMode(*(DerivedStorage + 312), a2, v7, a3);
    v10 = v9;
    if (v9)
    {
      manager_SetDiscoveryMode_cold_1(v9);
    }
  }

  else
  {
    manager_SetDiscoveryMode_cold_2(&v12);
    v10 = v12;
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t browserController_setRequestedDiscoveryModeInternal(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APBrowserController <= 30 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_setRequestedDiscoveryModeInternal_cold_1(a1, a2, a3);
  }

  v4 = a1[1];
  if (!v4)
  {
    v4 = *MEMORY[0x277CC0C08];
    a1[1] = *MEMORY[0x277CC0C08];
  }

  v5 = *MEMORY[0x277CC0C00];
  if (CFEqual(v4, *MEMORY[0x277CC0C00]) && CFEqual(*(*a1 + 64), v5))
  {
    CFRetain(*a1);
    dispatch_async_f(*(*a1 + 32), *a1, browserController_tickleDetailedMode);
  }

  v6 = a1[1];
  v7 = *a1;
  v8 = *(*a1 + 56);
  *(v7 + 48) = a1[2];
  *(v7 + 56) = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(*a1 + 72);
  v10 = a1[3];
  *(*a1 + 72) = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  browserController_updateDiscoveryMode(*a1);
  return 0;
}

uint64_t browserController_updateDiscoveryMode(uint64_t a1)
{
  DiscoveryModeRequiredByEndpoints = browserController_getDiscoveryModeRequiredByEndpoints(a1);
  v3 = APSIsVirtualMachine();
  v4 = MEMORY[0x277CC0C00];
  if (v3 && (v5 = IsAppleInternalBuild(), !v5))
  {
    v9 = *MEMORY[0x277CC0C08];
    if (gLogCategory_APBrowserController <= 50)
    {
      if (gLogCategory_APBrowserController != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        browserController_updateDiscoveryMode_cold_1(v5, v6, v7);
      }
    }
  }

  else
  {
    Count = CFSetGetCount(*(a1 + 128));
    v9 = *v4;
    if (Count < 1)
    {
      v10 = CFEqual(DiscoveryModeRequiredByEndpoints, *v4);
      if (v10)
      {
        if (gLogCategory_APBrowserController <= 30)
        {
          if (gLogCategory_APBrowserController != -1 || (v10 = _LogCategory_Initialize(), v10))
          {
            browserController_updateDiscoveryMode_cold_2(v10, v11, v12);
          }
        }
      }

      else
      {
        v13 = *MEMORY[0x277CC0C10];
        v14 = CFEqual(DiscoveryModeRequiredByEndpoints, *MEMORY[0x277CC0C10]);
        v17 = *(a1 + 56);
        if (v14)
        {
          if (CFEqual(*(a1 + 56), v9) || (v20 = CFEqual(*(a1 + 56), *MEMORY[0x277CC0BF8]), v20))
          {
            v9 = *(a1 + 56);
            if (gLogCategory_APBrowserController <= 30 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
            {
              browserController_updateDiscoveryMode_cold_3(v9, v18, v19);
            }
          }

          else
          {
            if (gLogCategory_APBrowserController <= 30)
            {
              if (gLogCategory_APBrowserController != -1 || (v20 = _LogCategory_Initialize(), v20))
              {
                browserController_updateDiscoveryMode_cold_4(v20, v18, v19);
              }
            }

            v9 = v13;
          }
        }

        else
        {
          if (gLogCategory_APBrowserController <= 30 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
          {
            browserController_updateDiscoveryMode_cold_5(v17, v15, v16);
          }

          v9 = v17;
        }
      }
    }

    else if (gLogCategory_APBrowserController <= 50 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
    {
      browserController_updateDiscoveryMode_cold_6((a1 + 128));
    }
  }

  if (CFEqual(v9, *v4) && (APSIsAPMSpeaker() && (!APSSettingsIsFeatureEnabled() || !APSIsMemberOfStereoPair()) || IsAppleTV() && !APSIsMemberOfHTGroup()))
  {
    v9 = *MEMORY[0x277CC0BF8];
  }

  CFRetain(a1);
  if (v9)
  {
    CFRetain(v9);
  }

  v21 = *(a1 + 72);
  if (v21)
  {
    CFRetain(v21);
  }

  if (!CFEqual(v9, *(a1 + 64)))
  {
    v22 = *(a1 + 64);
    *(a1 + 64) = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }

  return APSDispatchAsyncFHelper();
}

uint64_t browserController_getDiscoveryModeRequiredByEndpoints(uint64_t a1)
{
  if (CFDictionaryGetCountOfValue(*(a1 + 120), @"Detailed") <= 0)
  {
    CountOfValue = CFDictionaryGetCountOfValue(*(a1 + 120), @"Presence");
    v2 = MEMORY[0x277CC0C08];
    if (CountOfValue > 0)
    {
      v2 = MEMORY[0x277CC0C10];
    }
  }

  else
  {
    v2 = MEMORY[0x277CC0C00];
  }

  return *v2;
}

void browserController_setBrowserMode(CFTypeRef *a1)
{
  v2 = a1 + 1;
  if (CFEqual(a1[1], *MEMORY[0x277CC0C08]))
  {
    v3 = *(*a1 + 5);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v4)
    {
      v5 = 4294954514;
LABEL_14:
      browserController_setBrowserMode_cold_1(v5);
      goto LABEL_27;
    }

    v5 = v4(v3, 0);
    if (v5)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  if (!CFEqual(*v2, *MEMORY[0x277CC0C10]))
  {
    if (!CFEqual(*v2, *MEMORY[0x277CC0BF8]))
    {
      if (!CFEqual(*v2, *MEMORY[0x277CC0C00]))
      {
        if (gLogCategory_APBrowserController <= 90 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
        {
          browserController_setBrowserMode_cold_5(v2);
        }

        goto LABEL_24;
      }

      v12 = *(*a1 + 5);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v13)
      {
        v14 = v13(v12, 3);
        if (!v14)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v14 = 4294954514;
      }

      browserController_setBrowserMode_cold_4(v14);
      goto LABEL_27;
    }

    v9 = *(*a1 + 5);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v10)
    {
      v11 = v10(v9, 2);
      if (!v11)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = 4294954514;
    }

    browserController_setBrowserMode_cold_3(v11);
    goto LABEL_27;
  }

  v6 = *(*a1 + 5);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v7)
  {
    v8 = 4294954514;
LABEL_20:
    browserController_setBrowserMode_cold_2(v8);
    goto LABEL_27;
  }

  v8 = v7(v6, 1);
  if (v8)
  {
    goto LABEL_20;
  }

LABEL_24:
  v15 = *a1;
  if (!*(*a1 + 16))
  {
    v16 = v15[13];
    if (v16)
    {
      v16(a1[1], a1[2], v15[14]);
    }
  }

LABEL_27:
  CFRelease(*a1);
  v17 = a1[1];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = a1[3];
  if (v18)
  {

    CFRelease(v18);
  }
}

uint64_t manager_handleDiscoveryModeChanged(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 1))
  {
    if (gLogCategory_APEndpointManager <= 40 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_6(&gLogCategory_APEndpointManager, "void manager_handleDiscoveryModeChanged(CFStringRef, uint64_t, void *)", v7, "[%{ptr}] Updated discovery mode %@ with seed %llu\n");
    }

    if (FigCFEqual())
    {
      manager_setAVDevicePresence(a3, 0);
      manager_removeAllEndpointsIfNeeded(a3);
    }

    v8 = *(DerivedStorage + 88);
    *(DerivedStorage + 80) = a2;
    *(DerivedStorage + 88) = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    CFRetain(a3);
    dispatch_async_f(*(DerivedStorage + 8), a3, manager_notifyAvailableEndpointsChanged);
  }

  OUTLINED_FUNCTION_25_0();

  return FigSimpleMutexUnlock();
}

void manager_notifyAvailableEndpointsChanged(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = **&MEMORY[0x277CC0898];
  if (gLogCategory_APEndpointManager <= 40 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_notifyAvailableEndpointsChanged_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(DerivedStorage + 56);
    if (v4)
    {
      dispatch_release(v4);
      *(DerivedStorage + 56) = 0;
    }
  }

  APSSettingsIsFeatureEnabled();
  FigSimpleMutexLock();
  if (CFDictionaryGetCount(*(DerivedStorage + 168)) >= 10)
  {
    FigCFEqual();
  }

  LODWORD(v9.value) = 0;
  Int64 = APSSettingsGetInt64();
  FigSimpleMutexUnlock();
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v10, HostTimeClock);
  CMTimeMake(&rhs, Int64, 1000);
  v7 = v10;
  CMTimeAdd(&v9, &v7, &rhs);
  *(DerivedStorage + 32) = v9;
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554482, a4);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1)
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554522, a4);
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554462, a4);
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2)
{

  return CFDictionaryGetInt64Ranged();
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1, uint64_t a2)
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, char a29)
{

  return DataBuffer_Commit();
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1)
{

  return CFGetHardwareAddress();
}

CFTypeRef OUTLINED_FUNCTION_4_21()
{
  v2 = *v0;

  return CFRetain(v2);
}

uint64_t OUTLINED_FUNCTION_4_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return FigNotificationCenterAddWeakListener();
}

void emp_handleNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (FigCFEqual())
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __emp_handleNotification_block_invoke;
    v14 = &__block_descriptor_40_e5_v8__0l;
    v15 = a2;
    mach_absolute_time();
    __emp_handleNotification_block_invoke(&v11);
    mach_absolute_time();
    v9 = UpTicksToMilliseconds();
    if (dword_280FB1478 <= 40)
    {
      v10 = v9;
      if (dword_280FB1478 != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&dword_280FB1478, "uint64_t emp_timedBlock(FigEndpointManagerRef, const char *, void (^)(void))", 33554472, "[%{ptr}] [TIMED %llums] %s", a2, v10, "process available endpoint changes", v11, v12);
      }
    }

    if (!a5)
    {
      a5 = &unk_283584408;
    }
  }

  emp_postNotification(a1, a3, a2, a5);
}

void __emp_handleNotification_block_invoke(uint64_t a1)
{
  v156 = *MEMORY[0x277D85DE8];
  v128 = *(a1 + 32);
  CMBaseObjectGetDerivedStorage();
  v134 = 0;
  FigSimpleMutexLock();
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v129 = *MEMORY[0x277CBECE8];
    v3 = v2(CMBaseObject, *MEMORY[0x277CC0C30]);
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v4 setObject:objc_msgSend(MEMORY[0x277CBEB58] forKeyedSubscript:{"set"), &unk_283584430}];
      [v4 setObject:objc_msgSend(MEMORY[0x277CBEB58] forKeyedSubscript:{"set"), &unk_283584460}];
      obj = v4;
      [v4 setObject:objc_msgSend(MEMORY[0x277CBEB58] forKeyedSubscript:{"set"), &unk_283584448}];
      v5 = v134;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      v147 = 0u;
      v6 = [v134 countByEnumeratingWithState:&v144 objects:v154 count:16];
      v7 = MEMORY[0x277CC1368];
      if (!v6)
      {
        goto LABEL_137;
      }

      v8 = v6;
      v123 = *v145;
      v117 = *MEMORY[0x277CC1368];
      v108 = *MEMORY[0x277CC1450];
      v110 = *MEMORY[0x277CC14E8];
      v115 = v134;
      while (1)
      {
        v9 = 0;
        do
        {
          if (*v145 != v123)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v144 + 1) + 8 * v9);
          EndpointType = APEndpointPlusUtils_GetEndpointType(v10);
          cf = 0;
          if (APSGetFBOPropertyInt64())
          {
            __emp_handleNotification_block_invoke_cold_1();
            goto LABEL_66;
          }

          v125 = v10;
          v12 = FigEndpointGetCMBaseObject();
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v13)
          {
            v14 = 4294954514;
LABEL_11:
            __emp_handleNotification_block_invoke_cold_11(v14);
            goto LABEL_66;
          }

          v14 = v13(v12, v117, v129, &cf);
          if (v14)
          {
            goto LABEL_11;
          }

          v15 = [obj objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", EndpointType)}];
          if (!v15)
          {
            __emp_handleNotification_block_invoke_cold_10();
            goto LABEL_66;
          }

          [v15 addObject:cf];
          if (APSGetFBOPropertyInt64())
          {
            v16 = 40;
            if (EndpointType == 2)
            {
              v16 = 48;
            }

            v17 = *(DerivedStorage + v16);
            v18 = cf;
            *(DerivedStorage + v16) = cf;
            if (v18)
            {
              CFRetain(v18);
            }

            if (v17)
            {
              CFRelease(v17);
            }
          }

          v119 = v8;
          v121 = v9;
          v19 = cf;
          v20 = CMBaseObjectGetDerivedStorage();
          v21 = CMBaseObjectGetDerivedStorage();
          v22 = 56;
          if (EndpointType == 3)
          {
            v22 = 64;
          }

          if (EndpointType == 2)
          {
            v22 = 72;
          }

          v23 = *(v21 + v22);
          TypeString = APEndpointPlusUtils_GetTypeString(EndpointType);
          v136 = 0;
          v137 = 0;
          Value = CFDictionaryGetValue(v23, v19);
          if (!Value)
          {
            v142 = 0;
LABEL_28:
            v27 = APEndpointPlusCreateWithInnerEndpoint(v125, *(v20 + 8), &v142);
            v9 = v121;
            if (v27)
            {
              v31 = v27;
              __emp_handleNotification_block_invoke_cold_3(v27);
              goto LABEL_57;
            }

            emp_addEndpoint(v128, v19, v142, EndpointType);
            goto LABEL_30;
          }

          v26 = CFRetain(Value);
          v142 = v26;
          if (!v26)
          {
            goto LABEL_28;
          }

          v32 = APEndpointPlusCopyInner(v26, &v137);
          if (v32)
          {
            v31 = v32;
            __emp_handleNotification_block_invoke_cold_2(v32);
            goto LABEL_56;
          }

          if (v137 != v125)
          {
            v33 = FigEndpointGetCMBaseObject();
            v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v34)
            {
              v34(v33, v108, v129, &v136);
            }

            if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
            {
              if (v137)
              {
                v35 = "UPDATE";
              }

              else
              {
                v35 = "PROMOTE";
              }

              LogPrintF(&dword_280FB1478, "OSStatus emp_ensureRealEndpointWithType(FigEndpointManagerRef, CFStringRef, FigEndpointRef, APEndpointPlusType)", 33554482, "[%{ptr}] %s %s Plus [%{ptr}] %@ %'@", v128, v35, TypeString, v142, v19, v136);
            }

            APEndpointPlusSetInner(v142, v125);
          }

LABEL_30:
          v9 = v121;
          if (EndpointType != 2)
          {
            v31 = 0;
            goto LABEL_57;
          }

          v28 = v142;
          v148 = 0;
          v143 = 0;
          v29 = FigEndpointGetCMBaseObject();
          v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v30)
          {
            v31 = 4294954514;
LABEL_49:
            APSLogErrorAt();
            Table = 0;
            v40 = 0;
            goto LABEL_50;
          }

          v36 = v30(v29, v110, v129, &v148);
          if (v36)
          {
            v31 = v36;
            goto LABEL_49;
          }

          v37 = FigEndpointGetCMBaseObject();
          v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v38)
          {
            v31 = 4294954514;
            goto LABEL_49;
          }

          v41 = v38(v37, v110, v129, &v143);
          if (v41)
          {
            v31 = v41;
            goto LABEL_49;
          }

          Table = emp_syncSubEndpoints_createTable(v148);
          v40 = emp_syncSubEndpoints_createTable(v143);
          v42 = CMBaseObjectGetDerivedStorage();
          v138[0] = 0;
          v43 = FigEndpointGetCMBaseObject();
          v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v44)
          {
            v44(v43, v117, v129, v138);
          }

          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v45 = [v40 countByEnumeratingWithState:&v150 objects:v155 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v151;
            do
            {
              v48 = 0;
              do
              {
                if (*v151 != v47)
                {
                  objc_enumerationMutation(v40);
                }

                v49 = *(*(&v150 + 1) + 8 * v48);
                v130[0] = [Table objectForKeyedSubscript:v49];
                v50 = [v40 objectForKeyedSubscript:v49];
                v149 = 0;
                if (v130[0])
                {
                  CFRetain(v130[0]);
                  v51 = APEndpointPlusCopyInner(v130[0], &v149);
                  if (!v51)
                  {
                    v52 = v149;
                    if (v149 == v50)
                    {
                      goto LABEL_92;
                    }

                    if (v149)
                    {
                      v53 = "UPDATE";
                    }

                    else
                    {
                      v53 = "PROMOTE";
                    }

                    APEndpointPlusSetInner(v130[0], v50);
LABEL_87:
                    if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF(&dword_280FB1478, "OSStatus emp_syncSubEndpointAvailable(FigEndpointManagerRef, FigEndpointRef, NSMutableDictionary *, NSMutableDictionary *)", 33554482, "[%{ptr}] %s subEndpointPlus [%{ptr}] %@ for clusterPlus [%{ptr}] %@", v128, v53, v130[0], v49, v28, v138[0]);
                    }

                    goto LABEL_91;
                  }

                  __emp_handleNotification_block_invoke_cold_4(v51);
                }

                else
                {
                  v54 = APEndpointPlusCreateWithInnerEndpoint(v50, *(v42 + 8), v130);
                  if (v54)
                  {
                    __emp_handleNotification_block_invoke_cold_5(v54);
                  }

                  else
                  {
                    v55 = APEndpointPlusAddSubEndpoint(v28, v130[0]);
                    v53 = "ADD";
                    if (!v55)
                    {
                      goto LABEL_87;
                    }

                    __emp_handleNotification_block_invoke_cold_6(v55);
                  }
                }

LABEL_91:
                v52 = v149;
LABEL_92:
                if (v52)
                {
                  CFRelease(v52);
                  v149 = 0;
                }

                if (v130[0])
                {
                  CFRelease(v130[0]);
                }

                ++v48;
              }

              while (v46 != v48);
              v56 = [v40 countByEnumeratingWithState:&v150 objects:v155 count:16];
              v46 = v56;
            }

            while (v56);
          }

          if (v138[0])
          {
            CFRelease(v138[0]);
          }

          v138[0] = 0;
          v57 = FigEndpointGetCMBaseObject();
          v58 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v58)
          {
            v58(v57, v117, v129, v138);
          }

          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v59 = [Table countByEnumeratingWithState:&v150 objects:v155 count:16];
          if (!v59)
          {
            v31 = 0;
            goto LABEL_126;
          }

          v60 = v59;
          v31 = 0;
          v61 = *v151;
          do
          {
            v62 = 0;
            do
            {
              if (*v151 != v61)
              {
                objc_enumerationMutation(Table);
              }

              v63 = *(*(&v150 + 1) + 8 * v62);
              v64 = [Table objectForKeyedSubscript:v63];
              if (![v40 objectForKeyedSubscript:v63])
              {
                v65 = APEndpointPlusUtils_GetEndpointType(v64);
                if (emp_isEndpointCacheable(v128, v63, v65))
                {
                  if (APSGetFBOPropertyInt64())
                  {
                    goto LABEL_122;
                  }

                  APEndpointPlusSetInner(v64, 0);
                  v66 = "DEMOTE";
                }

                else
                {
                  v67 = APEndpointPlusRemoveSubEndpoint(v28, v63);
                  v31 = v67;
                  if (v67)
                  {
                    __emp_handleNotification_block_invoke_cold_7(v67);
                    goto LABEL_122;
                  }

                  v66 = "REMOVE";
                }

                if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&dword_280FB1478, "OSStatus emp_syncSubEndpointRemovals(FigEndpointManagerRef, FigEndpointRef, NSMutableDictionary *, NSMutableDictionary *)", 33554482, "[%{ptr}] %s subEndpointPlus [%{ptr}] %@ for clusterPlus [%{ptr}] %@", v128, v66, v64, v63, v28, v138[0]);
                }
              }

LABEL_122:
              ++v62;
            }

            while (v60 != v62);
            v68 = [Table countByEnumeratingWithState:&v150 objects:v155 count:16];
            v60 = v68;
          }

          while (v68);
LABEL_126:
          if (v138[0])
          {
            CFRelease(v138[0]);
          }

          v7 = MEMORY[0x277CC1368];
LABEL_50:
          if (v148)
          {
            CFRelease(v148);
          }

          if (v143)
          {
            CFRelease(v143);
          }

          if (v31)
          {
            __emp_handleNotification_block_invoke_cold_8(v31);
          }

LABEL_56:
          v9 = v121;
LABEL_57:
          if (v142)
          {
            CFRelease(v142);
          }

          if (v137)
          {
            CFRelease(v137);
          }

          if (v136)
          {
            CFRelease(v136);
          }

          if (v31)
          {
            __emp_handleNotification_block_invoke_cold_9(v31);
          }

          else
          {
            emp_reportEndpointToCache(v128, v125);
          }

          v5 = v115;
          v8 = v119;
LABEL_66:
          if (cf)
          {
            CFRelease(cf);
          }

          ++v9;
        }

        while (v9 != v8);
        v69 = [v5 countByEnumeratingWithState:&v144 objects:v154 count:16];
        v8 = v69;
        if (!v69)
        {
LABEL_137:
          *v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          v105 = [obj countByEnumeratingWithState:v130 objects:&v150 count:16];
          if (!v105)
          {
            goto LABEL_212;
          }

          v104 = *v131;
          v111 = *MEMORY[0x277CC1450];
          v109 = *MEMORY[0x277CC14E8];
          v70 = *v7;
          while (1)
          {
            v71 = 0;
            do
            {
              if (*v131 != v104)
              {
                objc_enumerationMutation(obj);
              }

              v107 = v71;
              v72 = *(v130[1] + v71);
              v73 = [v72 unsignedIntValue];
              v74 = [obj objectForKeyedSubscript:v72];
              if (dword_280FB1478 <= 30 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
              {
                v75 = APEndpointPlusUtils_GetTypeString(v73);
                LogPrintF(&dword_280FB1478, "void emp_processAvailableEndpointChanges(FigEndpointManagerRef)", 33554462, "[%{ptr}] Available %s IDs: %@", v128, v75, v74);
              }

              v76 = CMBaseObjectGetDerivedStorage();
              v77 = CMBaseObjectGetDerivedStorage();
              v78 = 56;
              if (v73 == 3)
              {
                v78 = 64;
              }

              if (v73 == 2)
              {
                v78 = 72;
              }

              v124 = v78;
              v79 = *(v77 + v78);
              *v138 = 0u;
              v139 = 0u;
              v140 = 0u;
              v141 = 0u;
              v116 = [v79 allKeys];
              v126 = [v116 countByEnumeratingWithState:v138 objects:v154 count:16];
              if (v126)
              {
                v120 = (v76 + 40);
                v122 = *v139;
                v118 = (v76 + 48);
                v114 = v73;
                v113 = v74;
                do
                {
                  v80 = 0;
                  do
                  {
                    if (*v139 != v122)
                    {
                      objc_enumerationMutation(v116);
                    }

                    v81 = *(v138[1] + v80);
                    if (!CFSetContainsValue(v74, v81))
                    {
                      v127 = v80;
                      if (v73 == 2)
                      {
                        if (FigCFEqual())
                        {
                          v82 = v118;
LABEL_161:
                          if (*v82)
                          {
                            CFRelease(*v82);
                            *v82 = 0;
                          }
                        }
                      }

                      else if (FigCFEqual())
                      {
                        v82 = v120;
                        goto LABEL_161;
                      }

                      CMBaseObjectGetDerivedStorage();
                      v83 = *(CMBaseObjectGetDerivedStorage() + v124);
                      v84 = APEndpointPlusUtils_GetTypeString(v73);
                      v142 = 0;
                      v85 = CFDictionaryGetValue(v83, v81);
                      if (v85)
                      {
                        v86 = CFRetain(v85);
                        if (v86)
                        {
                          v87 = v86;
                          if (emp_isEndpointCacheable(v128, v81, v73))
                          {
                            if (!APSGetFBOPropertyInt64())
                            {
                              v88 = FigEndpointGetCMBaseObject();
                              v89 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                              if (v89)
                              {
                                v89(v88, v111, v129, &v142);
                              }

                              if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
                              {
                                LogPrintF(&dword_280FB1478, "OSStatus emp_removeRealEndpointWithType(FigEndpointManagerRef, CFStringRef, APEndpointPlusType)", 33554482, "[%{ptr}] %s %s Plus [%{ptr}] %@ %'@", v128, "DEMOTE", v84, v87, v81, v142);
                              }

                              APEndpointPlusSetInner(v87, 0);
                              if (v73 == 2)
                              {
                                v148 = 0;
                                v149 = 0;
                                v90 = FigEndpointGetCMBaseObject();
                                v91 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                if (!v91)
                                {
                                  v92 = 4294954514;
                                  goto LABEL_176;
                                }

                                v92 = v91(v90, v109, v129, &v149);
                                if (v92)
                                {
LABEL_176:
                                  __emp_handleNotification_block_invoke_cold_12(v92);
                                }

                                else
                                {
                                  v93 = FigEndpointGetCMBaseObject();
                                  v94 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                  if (v94)
                                  {
                                    v94(v93, v70, v129, &v148);
                                  }

                                  v146 = 0u;
                                  v147 = 0u;
                                  v144 = 0u;
                                  v145 = 0u;
                                  v95 = v149;
                                  v96 = [v149 countByEnumeratingWithState:&v144 objects:v155 count:16];
                                  if (v96)
                                  {
                                    v97 = v96;
                                    v98 = *v145;
                                    do
                                    {
                                      for (i = 0; i != v97; ++i)
                                      {
                                        if (*v145 != v98)
                                        {
                                          objc_enumerationMutation(v95);
                                        }

                                        v100 = *(*(&v144 + 1) + 8 * i);
                                        v143 = 0;
                                        if (!APSGetFBOPropertyInt64())
                                        {
                                          v101 = FigEndpointGetCMBaseObject();
                                          v102 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                          if (v102)
                                          {
                                            v102(v101, v70, v129, &v143);
                                          }

                                          if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
                                          {
                                            LogPrintF(&dword_280FB1478, "OSStatus emp_demoteSubEndpoints(FigEndpointManagerRef, FigEndpointRef)", 33554482, "[%{ptr}] %s subEndpointPlus [%{ptr}] %@ for clusterPlus [%{ptr}] %@", v128, "DEMOTE", v100, v143, v87, v148);
                                          }

                                          APEndpointPlusSetInner(v100, 0);
                                        }

                                        if (v143)
                                        {
                                          CFRelease(v143);
                                        }
                                      }

                                      v97 = [v95 countByEnumeratingWithState:&v144 objects:v155 count:16];
                                    }

                                    while (v97);
                                  }
                                }

                                if (v149)
                                {
                                  CFRelease(v149);
                                }

                                v73 = v114;
                                v74 = v113;
                                if (v148)
                                {
                                  CFRelease(v148);
                                }
                              }

                              emp_restartCachePromotionDeadlineIfNecessary(v128);
                            }
                          }

                          else
                          {
                            __emp_handleNotification_block_invoke_cold_13(v128, v81, v73);
                          }

                          CFRelease(v87);
                          if (v142)
                          {
                            CFRelease(v142);
                          }
                        }
                      }

                      v80 = v127;
                    }

                    ++v80;
                  }

                  while (v80 != v126);
                  v103 = [v116 countByEnumeratingWithState:v138 objects:v154 count:16];
                  v126 = v103;
                }

                while (v103);
              }

              v71 = v107 + 1;
            }

            while (v107 + 1 != v105);
            v105 = [obj countByEnumeratingWithState:v130 objects:&v150 count:16];
            if (!v105)
            {
              goto LABEL_212;
            }
          }
        }
      }
    }
  }

  else
  {
    v3 = 4294954514;
  }

  __emp_handleNotification_block_invoke_cold_14(v3);
  obj = 0;
LABEL_212:
  FigSimpleMutexUnlock();
  if (v134)
  {
    CFRelease(v134);
  }
}

uint64_t manager_CopyProperty(const void *a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 10 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554442, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus manager_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (*(DerivedStorage + 1))
  {
    manager_CopyProperty_cold_1();
    return 4294950584;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C50]))
  {
    v9 = CFRetain(*MEMORY[0x277CC0C68]);
    result = 0;
    *a4 = v9;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C60]))
  {
    valuePtr = 31;
    if (APSIsLowLatencyAudioSendingEnabled())
    {
      valuePtr = 63;
    }

    v11 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    *a4 = v11;
    if (!v11)
    {
      manager_CopyProperty_cold_2();
      return 4294950585;
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C58]))
  {
    valuePtr = 7;
    v12 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    *a4 = v12;
    if (!v12)
    {
      manager_CopyProperty_cold_3();
      return 4294950585;
    }

    return 0;
  }

  v13 = *MEMORY[0x277CEA2E8];
  if (CFEqual(a2, *MEMORY[0x277CEA2E8]))
  {
    if (*(DerivedStorage + 320))
    {
      CMBaseObject = APSPSGDataSourceGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {

        return v15(CMBaseObject, v13, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      manager_CopyProperty_cold_4();
      return 4294960591;
    }
  }

  else
  {
    FigSimpleMutexLock();
    v16 = manager_copyPropertyInternal(a1, a2, a3, a4);
    FigSimpleMutexUnlock();
    return v16;
  }
}

uint64_t manager_copyPropertyInternal(const void *a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CC0C30]))
  {
    if (FigCFEqual() || FigCFEqual())
    {
      v7 = 0;
      *a4 = manager_copyEndpoints(a1, 0);
      return v7;
    }

    LODWORD(v107) = 0;
    CMBaseObjectGetDerivedStorage();
    v18 = manager_copyEndpoints(a1, 0);
    if (!v18)
    {
      manager_copyPropertyInternal_cold_3();
      return 4294950585;
    }

    v19 = v18;
    v20 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v20, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      Count = CFArrayGetCount(v19);
      if (Count >= 1)
      {
        v22 = Count;
        for (i = 0; i != v22; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v19, i);
          v25 = APSGetFBOPropertyInt64();
          v26 = APSGetFBOPropertyInt64();
          if (v25 | APSGetFBOPropertyInt64())
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          else if (v26)
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
            if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
            {
              manager_copyPropertyInternal_cold_1(ValueAtIndex);
            }
          }
        }
      }

      *a4 = Mutable;
    }

    else
    {
      manager_copyPropertyInternal_cold_2(&v107);
    }

    CFRelease(v19);
    return v107;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C40]))
  {
    manager_copyPropertyInternal_cold_6(a1, a4);
    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C48]))
  {
    manager_copyPropertyInternal_cold_5(a1, a4, &v107);
    return v107;
  }

  if (CFEqual(a2, @"ShowInfo"))
  {
    v119 = 0;
    v120 = &v119;
    v121 = 0x2020000000;
    v122 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v117 = 0;
    v118 = 0;
    v115 = 0;
    v116 = 0;
    v107 = 0;
    v108 = &v107;
    v109 = 0x5810000000;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = "";
    v114 = 0;
    cf = 0;
    v106 = 0;
    DataBuffer_Init();
    v9 = CMBaseObjectGetDerivedStorage();
    theDict[0] = 0;
    theString = CFStringCreateMutable(a3, 0);
    if (theString)
    {
      v10 = APBrowserControllerCopyProperty(*(v9 + 312), @"showInfo", a3, theDict);
      if (v10)
      {
        APSLogErrorAt();
        CFRelease(theString);
        theString = 0;
      }

      else
      {
        Value = CFDictionaryGetValue(theDict[0], @"detailedDescription");
        CFStringAppendFormat(theString, 0, @"\n%@", Value);
        CFStringAppend(theString, @"\n");
        CFStringAppend(theString, @"+-+ APEndpointManager state +-+\n");
        CFStringAppend(theString, @"\n");
        CFStringAppendFormat(theString, 0, @"DiscoveryMode: %@ (seed %llu/%llu) ", *(v9 + 88), *(v9 + 72), *(v9 + 80));
        CFStringAppend(theString, @"\n");
        v12 = CMBaseObjectGetDerivedStorage();
        v13 = CFSetGetCount(*(v12 + 224));
        CFStringAppendFormat(theString, 0, @"NonBuddyConnectionActive: %d\n", v13 > 0);
        if (*(v9 + 402))
        {
          v14 = "true";
        }

        else
        {
          v14 = "false";
        }

        CFStringAppendFormat(theString, 0, @"disableRCEndpoint: %s\n", v14);
      }

      if (theDict[0])
      {
        CFRelease(theDict[0]);
      }

      *(v120 + 6) = v10;
      if (!v10)
      {
        v93 = CFDictionaryCreateMutable(a3, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v93)
        {
          APSLogErrorAt();
          v92 = 0;
          v93 = 0;
          v83 = 0;
          v97 = 0;
          v100 = 0;
          theArray = 0;
          *(v120 + 6) = -16711;
          goto LABEL_131;
        }

        v92 = CFStringCreateMutable(a3, 0);
        CFStringAppend(v92, theString);
        v15 = manager_copyEndpoints(a1, 0);
        theArray = v15;
        if (v15)
        {
          v16 = CFArrayGetCount(v15);
          manager_copyEndpointInfoForShowInfo(theArray, &v116, &v117);
          manager_copyEndpointInfoForShowInfo(*(DerivedStorage + 192), 0, &v115);
          if (v116)
          {
            v17 = CFArrayGetCount(v116);
          }

          else
          {
            v17 = 0;
          }

          if (v117)
          {
            v27 = CFArrayGetCount(v117);
          }

          else
          {
            v27 = 0;
          }

          v28 = "s";
          if (v17 == 1)
          {
            v28 = "";
          }

          DataBuffer_AppendF((v108 + 4), "\n%ld Activated Endpoint%s\n", v17, v28);
          if (v17)
          {
            if (v17 >= 1)
            {
              for (j = 0; j != v17; ++j)
              {
                v118 = CFArrayGetValueAtIndex(v116, j);
                manager_AppendEndpointShowInfo(v118, 1, (v108 + 4));
              }
            }

            CFDictionarySetValue(v93, @"ActivatedEndpointShowInfos", v116);
            if (v116)
            {
              CFRelease(v116);
              v116 = 0;
            }
          }

          if (v115)
          {
            v30 = CFArrayGetCount(v115);
            v31 = v108;
            v32 = "s";
            if (v30 == 1)
            {
              v32 = "";
            }
          }

          else
          {
            v30 = 0;
            v32 = "s";
            v31 = v108;
          }

          DataBuffer_AppendF((v31 + 4), "\n%ld Aggregate Endpoint%s\n", v30, v32);
          if (v30)
          {
            v89 = v27;
            v103 = v30;
            if (v30 >= 1)
            {
              v33 = 0;
              alloc = *MEMORY[0x277CBECE8];
              do
              {
                v34 = CFArrayGetValueAtIndex(v115, v33);
                v35 = v34;
                v118 = v34;
                if (v34)
                {
                  v36 = v108;
                  v37 = CFDictionaryGetValue(v34, @"RoutingContextID");
                  v38 = CFDictionaryGetValue(v35, @"EndpointHash");
                  v39 = CFDictionaryGetValue(v35, @"EndpointID");
                  v40 = &stru_283570B70;
                  if (v37)
                  {
                    v40 = v37;
                  }

                  v41 = CFStringCreateWithFormat(alloc, 0, @"%@[%@][%@]", v38, v39, v40);
                  v42 = v41;
                  if (v41)
                  {
                    DataBuffer_AppendF((v36 + 4), "%@\n", v41);
                    v43 = CFDictionaryGetValue(v35, @"SubEndpointShowInfoDicts");
                    v44 = v43;
                    if (v43)
                    {
                      v45 = CFArrayGetCount(v43);
                      if (v45 >= 1)
                      {
                        for (k = 0; k != v45; ++k)
                        {
                          DataBuffer_AppendF((v36 + 4), "\t");
                          v47 = CFArrayGetValueAtIndex(v44, k);
                          v48 = CFDictionaryGetValue(v47, @"EndpointHash");
                          DataBuffer_AppendF((v36 + 4), "%@ ", v48);
                          v49 = CFDictionaryGetValue(v47, @"Name");
                          DataBuffer_AppendF((v36 + 4), "%''-*@\n", 22, v49);
                        }
                      }
                    }

                    CFRelease(v42);
                  }
                }

                ++v33;
              }

              while (v33 != v103);
            }

            CFDictionarySetValue(v93, @"AggregateShowInfos", v115);
            v27 = v89;
            if (v115)
            {
              CFRelease(v115);
              v115 = 0;
            }
          }

          v50 = "s";
          if (v16 == 1)
          {
            v50 = "";
          }

          DataBuffer_AppendF((v108 + 4), "\n%d endpoint%s available\n", v16, v50);
          v51 = v117;
          if (v117)
          {
            if (v27 >= 1)
            {
              for (m = 0; m != v27; ++m)
              {
                v118 = CFArrayGetValueAtIndex(v117, m);
                manager_AppendEndpointShowInfo(v118, 0, (v108 + 4));
              }

              v51 = v117;
            }

            CFDictionarySetValue(v93, @"EndpointShowInfos", v51);
            if (v117)
            {
              CFRelease(v117);
              v117 = 0;
            }
          }

          CMBaseObjectGetDerivedStorage();
          v100 = CFDictionaryCreateMutable(a3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v100)
          {
            v53 = FigCFDictionaryCopyArrayOfValues();
            v54 = v53;
            if (v53)
            {
              if (CFArrayGetCount(v53) >= 1)
              {
                v55 = 0;
                v56 = *MEMORY[0x277CC1340];
                v57 = MEMORY[0x277CBF128];
                do
                {
                  v58 = CFArrayGetValueAtIndex(v54, v55);
                  theDict[0] = 0;
                  CMBaseObject = FigEndpointGetCMBaseObject();
                  v60 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v60)
                  {
                    v60(CMBaseObject, v56, a3, theDict);
                  }

                  if (theDict[0])
                  {
                    if (CFDictionaryContainsKey(v100, theDict[0]))
                    {
                      v61 = CFDictionaryGetValue(v100, theDict[0]);
                      v62 = CFRetain(v61);
                    }

                    else
                    {
                      v62 = CFArrayCreateMutable(a3, 0, v57);
                      CFDictionarySetValue(v100, theDict[0], v62);
                    }

                    CFArrayAppendValue(v62, v58);
                    if (v62)
                    {
                      CFRelease(v62);
                    }

                    if (theDict[0])
                    {
                      CFRelease(theDict[0]);
                    }
                  }

                  ++v55;
                }

                while (v55 < CFArrayGetCount(v54));
              }

              CFRelease(v54);
            }
          }

          v63 = FigCFDictionaryGetCount();
          v96 = v63;
          v64 = "s";
          if (v63 == 1)
          {
            v64 = "";
          }

          DataBuffer_AppendF((v108 + 4), "\n%d group%s available\n", v63, v64);
          v97 = FigCFDictionaryCopyArrayOfKeys();
          if (v97)
          {
            if (v96 >= 1)
            {
              v65 = 0;
              key = *MEMORY[0x277CBECE8];
              do
              {
                alloca = v65;
                v66 = CFArrayGetValueAtIndex(v97, v65);
                v67 = CFDictionaryGetValue(v100, v66);
                v68 = v67;
                if (v67)
                {
                  v69 = CFArrayGetCount(v67);
                }

                else
                {
                  v69 = 0;
                }

                DataBuffer_AppendF((v108 + 4), "\t%@\n", v66);
                if (v69 >= 1)
                {
                  for (n = 0; n != v69; ++n)
                  {
                    CFArrayGetValueAtIndex(v68, n);
                    v118 = 0;
                    v71 = FigEndpointGetCMBaseObject();
                    v72 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v72)
                    {
                      v72(v71, @"EndpointShowInfo", key, &v118);
                    }

                    v73 = v118;
                    if (v118)
                    {
                      v74 = v108;
                      v75 = CFDictionaryGetValue(v118, @"Name");
                      DataBuffer_AppendF((v74 + 4), "\t\t%''-*@", 22, v75);
                      v76 = CFDictionaryGetValue(v73, @"DiscoveryID");
                      if (v76)
                      {
                        DataBuffer_AppendF((v74 + 4), " discoveryID=%15@", v76);
                      }

                      v77 = CFDictionaryGetValue(v73, @"DeviceID");
                      DataBuffer_AppendF((v74 + 4), " %@", v77);
                      v78 = CFDictionaryGetValue(v73, @"Model");
                      DataBuffer_AppendF((v74 + 4), " %-*@", 15, v78);
                      DataBuffer_AppendF((v74 + 4), "\n");
                      if (v118)
                      {
                        CFRelease(v118);
                        v118 = 0;
                      }
                    }
                  }
                }

                v65 = alloca + 1;
              }

              while ((alloca + 1) != v96);
            }

            if (!*(DerivedStorage + 320))
            {
              v83 = 0;
LABEL_128:
              v86 = DataBuffer_Append();
              *(v120 + 6) = v86;
              if (!v86)
              {
                v87 = DataBuffer_Commit();
                *(v120 + 6) = v87;
                if (!v87)
                {
                  CFStringAppendFormat(v92, 0, @"%s", v106);
                  CFDictionarySetValue(v93, @"DetailedDescription", v92);
                  goto LABEL_131;
                }
              }

              APSLogErrorAt();
LABEL_126:
              CFRelease(v93);
              v93 = 0;
LABEL_131:
              DataBuffer_Free();
              if (theArray)
              {
                CFRelease(theArray);
              }

              if (v92)
              {
                CFRelease(v92);
              }

              if (theString)
              {
                CFRelease(theString);
              }

              if (v116)
              {
                CFRelease(v116);
              }

              if (v115)
              {
                CFRelease(v115);
              }

              if (v117)
              {
                CFRelease(v117);
              }

              if (v100)
              {
                CFRelease(v100);
              }

              if (v97)
              {
                CFRelease(v97);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (v83)
              {
                CFRelease(v83);
              }

              v7 = *(v120 + 6);
              _Block_object_dispose(&v107, 8);
              _Block_object_dispose(&v119, 8);
              if (!v7)
              {
                *a4 = v93;
              }

              return v7;
            }

            v79 = APSPSGDataSourceGetCMBaseObject();
            v80 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v80)
            {
              v81 = *MEMORY[0x277CBECE8];
              v82 = v80(v79, *MEMORY[0x277CEA2E8], *MEMORY[0x277CBECE8], &cf);
              *(v120 + 6) = v82;
              if (!v82)
              {
                v83 = CFDictionaryCreateMutable(v81, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v83)
                {
                  theDict[0] = MEMORY[0x277D85DD0];
                  theDict[1] = 3221225472;
                  theDict[2] = __manager_copyShowInfo_block_invoke;
                  theDict[3] = &unk_27849BC40;
                  theDict[4] = &v119;
                  theDict[5] = v83;
                  CFDictionaryApplyBlock();
                  v84 = CFDictionaryGetCount(v83);
                  v85 = "s";
                  if (v84 == 1)
                  {
                    v85 = "";
                  }

                  DataBuffer_AppendF((v108 + 4), "\n%d PSG%s available\n", v84, v85);
                  CFDictionaryApplyBlock();
                  goto LABEL_128;
                }

                APSLogErrorAt();
                v88 = -6728;
LABEL_167:
                v83 = 0;
                *(v120 + 6) = v88;
                goto LABEL_126;
              }
            }

            else
            {
              *(v120 + 6) = -12782;
            }

            APSLogErrorAt();
            v83 = 0;
            goto LABEL_126;
          }

          APSLogErrorAt();
          v97 = 0;
        }

        else
        {
          APSLogErrorAt();
          v97 = 0;
          v100 = 0;
        }

        v88 = -16711;
        goto LABEL_167;
      }
    }

    else
    {
      APSLogErrorAt();
      theString = 0;
      *(v120 + 6) = -6728;
    }

    APSLogErrorAt();
    v92 = 0;
    v93 = 0;
    v83 = 0;
    v97 = 0;
    v100 = 0;
    theArray = 0;
    goto LABEL_131;
  }

  if (!CFEqual(a2, @"HierarchyDump"))
  {
    if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_copyPropertyInternal_cold_4(a2);
    }

    return 4294954512;
  }

  return manager_copyHierarchy(a1, a3, a4);
}

void sub_222000088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 136), 8);
  _Unwind_Resume(a1);
}

__CFArray *manager_copyEndpoints(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    manager_copyEndpoints_cold_4();
    return Mutable;
  }

  v7 = FigCFDictionaryCopyArrayOfValues();
  if (!v7)
  {
    manager_copyEndpoints_cold_3();
    return Mutable;
  }

  v8 = v7;
  MutableCopy = CFArrayCreateMutableCopy(v5, 0, v7);
  if (!MutableCopy)
  {
    manager_copyEndpoints_cold_2(v8);
    return Mutable;
  }

  v10 = MutableCopy;
  v11 = *(DerivedStorage + 296);
  if (v11)
  {
    CFArrayAppendValue(MutableCopy, v11);
  }

  if (a2)
  {
    v21.length = CFArrayGetCount(v10);
    v21.location = 0;
    CFArrayAppendArray(Mutable, v10, v21);
    v12 = 0;
  }

  else
  {
    v12 = FigCFDictionaryCopyArrayOfValues();
    if (!v12)
    {
      manager_copyEndpoints_cold_1();
      v19 = 0;
      v18 = 0;
      goto LABEL_22;
    }

    v13 = *(DerivedStorage + 232);
    if (CFArrayGetCount(v10) >= 1)
    {
      v14 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
        if ((!v13 || !CFDictionaryContainsKey(v13, ValueAtIndex)) && !manager_isEndpointLocalAndSuppressed(a1, ValueAtIndex))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }

        ++v14;
      }

      while (v14 < CFArrayGetCount(v10));
    }

    if (CFArrayGetCount(v12) >= 1)
    {
      v16 = 0;
      do
      {
        v17 = CFArrayGetValueAtIndex(v12, v16);
        if (!manager_isEndpointLocalAndSuppressed(a1, v17))
        {
          CFArrayAppendValue(Mutable, v17);
        }

        ++v16;
      }

      while (v16 < CFArrayGetCount(v12));
    }
  }

  v18 = FigCFDictionaryCopyArrayOfValues();
  v22.length = CFArrayGetCount(v18);
  v22.location = 0;
  CFArrayAppendArray(Mutable, v18, v22);
  v19 = FigCFDictionaryCopyArrayOfValues();
  v23.length = CFArrayGetCount(v19);
  v23.location = 0;
  CFArrayAppendArray(Mutable, v19, v23);
LABEL_22:
  CFRelease(v8);
  CFRelease(v10);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return Mutable;
}

void emp_postNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(CMBaseObjectGetDerivedStorage() + 112);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __emp_postNotification_block_invoke;
  v9[3] = &unk_27849DE78;
  v9[4] = a3;
  v9[5] = a2;
  v9[6] = a4;
  v9[7] = a1;
  dispatch_async(v8, v9);
}

uint64_t __emp_postNotification_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 32);
  FigSimpleMutexUnlock();
  if (v3)
  {
    return __emp_postNotification_block_invoke_cold_1();
  }

  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    __emp_postNotification_block_invoke_cold_2();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 48) objectForKeyedSubscript:@"Private"];
  }

  return CMNotificationCenterPostNotification();
}

uint64_t __emp_postNotification_block_invoke_cold_2()
{
  if (IsAppleInternalBuild() && dword_280FB1478 == -1)
  {
    _LogCategory_Initialize();
  }

  return OUTLINED_FUNCTION_2(&dword_280FB1478, "void emp_postNotification(CMNotificationCenterRef, CFStringRef, FigEndpointManagerRef, CFTypeRef)_block_invoke", v0, "[%{ptr}] Posting %@%?{end} %@");
}

const void *OUTLINED_FUNCTION_2_3(void *key)
{

  return CFDictionaryGetValue(v1, key);
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return FigNotificationCenterAddWeakListener();
}

CMTime *OUTLINED_FUNCTION_2_14(uint64_t a1, CMTime *time, CMTime *a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t timea, uint64_t time_8, uint64_t time_16, uint64_t a14)
{
  *(v14 + 8) = a4;

  return CMTimeConvertScale(&a14, &timea, time, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return APSLogErrorAt();
}

uint64_t emp_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_280FB1478, "OSStatus emp_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554482, "[%{ptr}] CopyProperty: %@", a1, a2);
  }

  if (!a2)
  {
    emp_CopyProperty_cold_2();
    return 4294950586;
  }

  if (!a4)
  {
    emp_CopyProperty_cold_1();
    return 4294950586;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C30]))
  {
    v9 = a1;
    v10 = a3;
    v11 = 1;
LABEL_11:
    v12 = emp_copyAvailableEndpoints(v9, v10, v11);
LABEL_12:
    v13 = v12;
    result = 0;
    *a4 = v13;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C38]))
  {
    v9 = a1;
    v10 = a3;
    v11 = 0;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"ShowInfo"))
  {
    CMBaseObjectGetDerivedStorage();
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    FigSimpleMutexLock();
    v16 = emp_introspector_copyDescription(a1);
    FigSimpleMutexUnlock();
    [v15 setObject:v16 forKeyedSubscript:@"DetailedDescription"];

    result = 0;
    *a4 = v15;
  }

  else
  {
    if (CFEqual(a2, @"HierarchyDump"))
    {
      v12 = CFRetain(&stru_283570B70);
      goto LABEL_12;
    }

    v17 = *(DerivedStorage + 8);

    return FigEndpointManagerCopyProperty(v17, a2, a3, a4);
  }

  return result;
}

CFMutableArrayRef emp_copyAvailableEndpoints(uint64_t a1, const __CFAllocator *a2, char a3)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  FigSimpleMutexLock();
  if (emp_getAllowCachedEndpointsAlways_onceToken != -1)
  {
    emp_copyAvailableEndpoints_cold_1();
  }

  v7 = !emp_getAllowCachedEndpointsAlways_enabled && !FigCFEqual() && FigCFEqual() == 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __emp_copyAvailableEndpoints_block_invoke;
  v9[3] = &__block_descriptor_41_e47_v28__0i8____CFString__12__OpaqueFigEndpoint__20l;
  v10 = v7 | a3;
  v9[4] = Mutable;
  emp_forEachEndpoint(a1, v9);
  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t vdsink_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APVirtualDisplayTestSink, "OSStatus vdsink_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "virtual display sink %p copy property %@\n", a1, a2);
  }

  if (CFEqual(a2, *MEMORY[0x277CD6750]))
  {
    v7 = 0;
    *a4 = CFRetain(@"AirPlay");
    return v7;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6708]))
  {
    v26 = 0;
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v11 = *MEMORY[0x277CBECE8];
      v12 = v10(CMBaseObject, *MEMORY[0x277CD6700], *MEMORY[0x277CBECE8], &v26);
      if (!v12)
      {
        v13 = v26;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v30 = 0;
        value = 0;
        v28 = 0;
        cf = 0;
        v27 = 0;
        if (vdsink_getVirtualDisplaySizeOverrideFromPrefs_sCheckPrefsOnce != -1)
        {
          vdsink_CopyProperty_cold_1();
        }

        v15 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0;
        v16 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1;
        v18 = *MEMORY[0x277CBF3A8];
        v17 = *(MEMORY[0x277CBF3A8] + 8);
        if ((*&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0 != *MEMORY[0x277CBF3A8] || *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1 != v17) && gLogCategory_APVirtualDisplayTestSink <= 50)
        {
          if (gLogCategory_APVirtualDisplayTestSink != -1 || (v23 = _LogCategory_Initialize(), v15 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0, v16 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1, v23))
          {
            LogPrintF(&gLogCategory_APVirtualDisplayTestSink, "CGSize vdsink_getVirtualDisplaySizeOverrideFromPrefs()", 33554482, "virtual screen override to %.0fx%.0f\n", v15, v16);
            v15 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0;
            v16 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1;
          }
        }

        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetCGSizeIfPresent();
        if (v15 == v18 && v16 == v17)
        {
          *(DerivedStorage + 72) = *(DerivedStorage + 56);
        }

        else
        {
          *(DerivedStorage + 72) = v15;
          *(DerivedStorage + 80) = v16;
        }

        FigDisplayModes_BuildColorAndTimingModes();
        v24 = cf;
        if (cf)
        {
          if (v28)
          {
            FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode();
            MutableCopy = 0;
            if (value && v30)
            {
              MutableCopy = CFDictionaryCreateMutableCopy(v11, 0, v13);
              CFDictionarySetValue(MutableCopy, *MEMORY[0x277CD6630], value);
              CFDictionarySetValue(MutableCopy, *MEMORY[0x277CD6680], v30);
            }

            v24 = cf;
            if (!cf)
            {
              goto LABEL_39;
            }
          }

          else
          {
            MutableCopy = 0;
          }

          CFRelease(v24);
        }

        else
        {
          MutableCopy = 0;
        }

LABEL_39:
        if (v28)
        {
          CFRelease(v28);
        }

        if (value)
        {
          CFRelease(value);
        }

        if (v30)
        {
          CFRelease(v30);
        }

        *a4 = MutableCopy;
        if (v26)
        {
          CFRelease(v26);
        }

        return 0;
      }

      v7 = v12;
    }

    else
    {
      v7 = 4294954514;
    }

    APSLogErrorAt();
    return v7;
  }

  v20 = FigEndpointStreamGetCMBaseObject();
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v21)
  {
    return 4294954514;
  }

  v22 = *MEMORY[0x277CBECE8];

  return v21(v20, a2, v22, a4);
}

uint64_t vdsink_CopyProperty_0(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplaySink <= 30 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    v8 = *(DerivedStorage + 8);
    if (!v8)
    {
      v8 = &stru_283570B70;
    }

    LogPrintF(&gLogCategory_APVirtualDisplaySink, "OSStatus vdsink_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "%@ virtual display sink %{ptr} copy property %@\n", v8, a1, a2);
  }

  if (CFEqual(a2, *MEMORY[0x277CD6750]))
  {
    v9 = 0;
    *a4 = CFRetain(@"AirPlay");
    return v9;
  }

  v11 = CFEqual(a2, *MEMORY[0x277CD6708]);
  v12 = MEMORY[0x277CBECE8];
  if (v11)
  {
    v30 = 0;
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v15 = *v12;
      v16 = v14(CMBaseObject, *MEMORY[0x277CD6700], *v12, &v30);
      if (!v16)
      {
        v17 = v30;
        v18 = CMBaseObjectGetDerivedStorage();
        v37 = 0;
        value = 0;
        v35 = 0;
        v36 = 0;
        cf = 0;
        v32 = 60;
        v33 = 0;
        v31 = 0;
        if (vdsink_getVirtualDisplaySizeOverrideFromPrefs_sCheckPrefsOnce_0 != -1)
        {
          vdsink_CopyProperty_cold_1_0();
        }

        v19 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0_0;
        v20 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1_0;
        v22 = *MEMORY[0x277CBF3A8];
        v21 = *(MEMORY[0x277CBF3A8] + 8);
        if ((*&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0_0 != *MEMORY[0x277CBF3A8] || *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1_0 != v21) && gLogCategory_APVirtualDisplaySink <= 50)
        {
          if (gLogCategory_APVirtualDisplaySink != -1 || (v26 = _LogCategory_Initialize(), v19 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0_0, v20 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1_0, v26))
          {
            LogPrintF(&gLogCategory_APVirtualDisplaySink, "CGSize vdsink_getVirtualDisplaySizeOverrideFromPrefs(void)", 33554482, "virtual screen override to %.0fx%.0f\n", v19, v20);
            v19 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0_0;
            v20 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1_0;
          }
        }

        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetCGSizeIfPresent();
        v27 = CFDictionaryGetValue(v17, *MEMORY[0x277CD6660]);
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        if (v19 == v22 && v20 == v21)
        {
          *(v18 + 72) = *(v18 + 56);
          if (!v27)
          {
LABEL_31:
            FigDisplayModes_BuildColorAndTimingModes();
            goto LABEL_34;
          }
        }

        else
        {
          *(v18 + 72) = v19;
          *(v18 + 80) = v20;
          if (!v27)
          {
            goto LABEL_31;
          }
        }

        CFDictionaryGetValue(v27, *MEMORY[0x277CD6540]);
        FigDisplayModes_BuildColorAndTimingModes();
        FigDisplayModes_BuildColorModesFromHDRMode();
LABEL_34:
        if (v36)
        {
          if (v35)
          {
            if (v33 >= 1)
            {
              FigDisplayModes_CopyTimingModeAppendingPreferredUIScale();
              if (!cf)
              {
                vdsink_CopyProperty_cold_4();
                goto LABEL_61;
              }

              v28 = v35;
              v35 = cf;
              CFRetain(cf);
              if (v28)
              {
                CFRelease(v28);
              }
            }

            FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode();
            if (value)
            {
              if (v37)
              {
                MutableCopy = CFDictionaryCreateMutableCopy(v15, 0, v17);
                CFDictionarySetValue(MutableCopy, *MEMORY[0x277CD6630], value);
                CFDictionarySetValue(MutableCopy, *MEMORY[0x277CD6680], v37);
LABEL_43:
                if (v36)
                {
                  CFRelease(v36);
                }

                if (v35)
                {
                  CFRelease(v35);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                if (value)
                {
                  CFRelease(value);
                }

                if (v37)
                {
                  CFRelease(v37);
                }

                *a4 = MutableCopy;
                if (v30)
                {
                  CFRelease(v30);
                }

                return 0;
              }

              vdsink_CopyProperty_cold_2();
            }

            else
            {
              vdsink_CopyProperty_cold_3();
            }
          }

          else
          {
            vdsink_CopyProperty_cold_5();
          }
        }

        else
        {
          vdsink_CopyProperty_cold_6();
        }

LABEL_61:
        MutableCopy = 0;
        goto LABEL_43;
      }

      v9 = v16;
    }

    else
    {
      v9 = 4294954514;
    }

    APSLogErrorAt();
    return v9;
  }

  v23 = FigEndpointStreamGetCMBaseObject();
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v24)
  {
    return 4294954514;
  }

  v25 = *v12;

  return v24(v23, a2, v25, a4);
}

CFMutableDictionaryRef screenstream_copyNetworkInfo(uint64_t a1)
{
  cf = 0;
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!*(a1 + 136))
  {
    screenstream_copyNetworkInfo_cold_1();
    return Mutable;
  }

  CMBaseObject = FigTransportStreamGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x277CE5068], v2, &cf);
  }

  v6 = *(a1 + 456);
  if (v6 <= 0.0)
  {
    if (*(a1 + 394) && *(a1 + 396))
    {
      if (*(a1 + 360) > 27648000.0)
      {
        v7 = 25.0;
      }

      else
      {
        v7 = 17.5;
      }

      if (gLogCategory_APEndpointStreamScreen <= 20 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointStreamScreen, "CFDictionaryRef screenstream_copyNetworkInfo(StreamScreenStorage *)", 33554452, "%@ using %.2f Mbps for wired car connection\n", *(a1 + 40), *&v7);
      }

      v6 = v7 * 1000000.0;
    }

    else if (*(a1 + 410) && *(a1 + 385))
    {
      v6 = 80000000.0;
    }

    else
    {
      if (FigCFDictionaryGetDoubleIfPresent())
      {
        *(a1 + 448) = 0;
        v8 = 0.0 * *(a1 + 424);
      }

      else
      {
        v8 = 0.0;
      }

      if (v8 <= *(a1 + 432))
      {
        v8 = *(a1 + 432);
      }

      if (v8 >= *(a1 + 440))
      {
        v6 = *(a1 + 440);
      }

      else
      {
        v6 = v8;
      }
    }
  }

  FigCFDictionarySetInt32();
  *(a1 + 464) = v6;
  v9 = *(a1 + 476);
  if (v9 >= 1)
  {
    goto LABEL_27;
  }

  if (!*(a1 + 394) || !*(a1 + 396))
  {
    v12 = *(a1 + 480);
    v13 = *(a1 + 472);
    if (v12 > v13)
    {
      *(a1 + 480) = v13;
      v12 = v13;
    }

    if (v6 >= 500000.0)
    {
      if (v6 >= 1000000.0)
      {
        if (v6 >= 4000000.0)
        {
          v14 = 60;
        }

        else
        {
          v14 = 30;
        }
      }

      else
      {
        v14 = 20;
      }
    }

    else
    {
      v14 = 10;
    }

    if (v14 >= v13)
    {
      v14 = v13;
    }

    v15 = v14 <= v12;
    if (v14 < v12)
    {
      v16 = *(a1 + 484);
      if (v16 >= v12)
      {
        if (v12 <= 30)
        {
          v17 = 20;
        }

        else
        {
          v17 = 30;
        }

        if (v12 >= 21)
        {
          v18 = v17;
        }

        else
        {
          v18 = 10;
        }

        if (v18 >= v13)
        {
          v19 = v13;
        }

        else
        {
          v19 = v18;
        }

        if (gLogCategory_APEndpointStreamScreen > 20)
        {
          goto LABEL_80;
        }

        if (gLogCategory_APEndpointStreamScreen == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_80;
          }

          v16 = *(a1 + 484);
          v6 = *(a1 + 464);
        }

        LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_updateFPS(StreamScreenStorage *)", 33554452, "%@ lowering FPS target: %d -> %d (BW %.2f)\n", *(a1 + 40), v16, v19, *&v6);
LABEL_80:
        *(a1 + 484) = v19;
        *(a1 + 488) = mach_absolute_time();
        goto LABEL_83;
      }

      goto LABEL_83;
    }

    v20 = *(a1 + 484);
    if (!v15)
    {
      if (v20 <= v12)
      {
        if (v12 >= 20)
        {
          v21 = 30;
        }

        else
        {
          v21 = 20;
        }

        if (v12 <= 29)
        {
          v22 = v21;
        }

        else
        {
          v22 = 60;
        }

        if (v22 >= v13)
        {
          v19 = v13;
        }

        else
        {
          v19 = v22;
        }

        if (gLogCategory_APEndpointStreamScreen > 20)
        {
          goto LABEL_80;
        }

        if (gLogCategory_APEndpointStreamScreen == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_80;
          }

          v20 = *(a1 + 484);
          v6 = *(a1 + 464);
        }

        LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_updateFPS(StreamScreenStorage *)", 33554452, "%@ raising FPS target: %d -> %d (BW %.2f)\n", *(a1 + 40), v20, v19, *&v6);
        goto LABEL_80;
      }

LABEL_83:
      if (*(a1 + 484) != *(a1 + 480) && mach_absolute_time() - *(a1 + 488) >= *(a1 + 496))
      {
        if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_updateFPS(StreamScreenStorage *)", 33554472, "%@ changing encoder FPS: %d -> %d (BW %.2f)\n", *(a1 + 40), *(a1 + 480), *(a1 + 484), *(a1 + 464));
        }

        *(a1 + 480) = *(a1 + 484);
      }

      goto LABEL_28;
    }

    if (v20 == v12)
    {
      goto LABEL_83;
    }

    if (gLogCategory_APEndpointStreamScreen <= 20)
    {
      if (gLogCategory_APEndpointStreamScreen == -1)
      {
        v23 = _LogCategory_Initialize();
        v12 = *(a1 + 480);
        if (!v23)
        {
          goto LABEL_82;
        }

        v20 = *(a1 + 484);
        v6 = *(a1 + 464);
      }

      LogPrintF(&gLogCategory_APEndpointStreamScreen, "void screenstream_updateFPS(StreamScreenStorage *)", 33554452, "%@ cancel FPS adjustment: %d -> %d (BW %.2f)\n", *(a1 + 40), v20, v12, *&v6);
      LODWORD(v12) = *(a1 + 480);
    }

LABEL_82:
    *(a1 + 484) = v12;
    goto LABEL_83;
  }

  v9 = *(a1 + 472);
LABEL_27:
  *(a1 + 480) = v9;
  *(a1 + 484) = v9;
LABEL_28:
  v10 = *(a1 + 504);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __screenstream_updateFPS_block_invoke;
  block[3] = &__block_descriptor_tmp_95_3;
  block[4] = a1;
  dispatch_sync(v10, block);
  FigCFDictionarySetInt32();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetDouble();
  if (cf)
  {
    CFRelease(cf);
  }

  return Mutable;
}

CMBlockBufferRef screenstream_dequeueAndProcessSampleBuffer(const void *a1, int a2, _DWORD *a3)
{
  v231 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1148))
  {
    return v231;
  }

  v7 = DerivedStorage;
  if (!a2)
  {
    v8 = CMBufferQueueDequeueAndRetain(*(DerivedStorage + 104));
    if (!v8)
    {
      return v231;
    }

    v9 = v8;
    v230 = (v7 + 528);
    OUTLINED_FUNCTION_9_12();
    DataBuffer = CMSampleBufferGetDataBuffer(v10);
    v12 = MEMORY[0x277CBECF0];
    v13 = MEMORY[0x277CBED28];
    if (DataBuffer)
    {
      v235 = 0;
      v236 = 0;
      theBuffer = 0;
      v14 = CMSampleBufferGetDataBuffer(v9);
      DataLength = CMBlockBufferGetDataLength(v14);
      v16 = *(v7 + 944);
      v225 = *(MEMORY[0x277CBF3A0] + 16);
      v227 = *MEMORY[0x277CBF3A0];
      block.origin = *MEMORY[0x277CBF3A0];
      block.size = v225;
      valuePtr = 0;
      AttachmentCGRect = sbufGetAttachmentCGRect(v9, *MEMORY[0x277CC1AB8], &block);
      if (AttachmentCGRect)
      {
        BlockBufferWithCFDataNoCopy = AttachmentCGRect;
        goto LABEL_270;
      }

      v224 = v16;
      if (CGRectEqualToRect(block, *(v7 + 560)))
      {
        v18 = 0;
      }

      else
      {
        if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0(&gLogCategory_APEndpointStreamScreen)))
        {
          OUTLINED_FUNCTION_19_7();
          OUTLINED_FUNCTION_6(&gLogCategory_APEndpointStreamScreen, "OSStatus sbpd_createFrameBBuf(SBufProcessingData *, CMSampleBufferRef, CMBlockBufferRef *)", v31, "%@ sourceRect changed to {{%.1f, %.1f}, {%.1f, %.1f}}\n");
        }

        size = block.size;
        *(v7 + 560) = block.origin;
        *(v7 + 576) = size;
        v18 = 1;
      }

      block.origin = v227;
      block.size = v225;
      v39 = sbufGetAttachmentCGRect(v9, *MEMORY[0x277CC1A98], &block);
      if (v39)
      {
        BlockBufferWithCFDataNoCopy = v39;
        APSLogErrorAt();
LABEL_273:
        OUTLINED_FUNCTION_9_12();
LABEL_230:
        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

        if (v235)
        {
          CFRelease(v235);
        }

        v104 = v236;
        if (!v236)
        {
          goto LABEL_236;
        }

        goto LABEL_235;
      }

      if (!CGRectEqualToRect(block, *(v7 + 592)))
      {
        if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0(&gLogCategory_APEndpointStreamScreen)))
        {
          OUTLINED_FUNCTION_19_7();
          OUTLINED_FUNCTION_6(&gLogCategory_APEndpointStreamScreen, "OSStatus sbpd_createFrameBBuf(SBufProcessingData *, CMSampleBufferRef, CMBlockBufferRef *)", v40, "%@ destRect changed to {{%.1f, %.1f}, {%.1f, %.1f}}\n");
        }

        v41 = block.size;
        *(v7 + 592) = block.origin;
        *(v7 + 608) = v41;
        v18 = 1;
      }

      v228 = DataLength;
      v42 = OUTLINED_FUNCTION_137();
      v45 = CMGetAttachment(v42, v43, v44);
      if (v45 && (v46 = v45, v47 = CFGetTypeID(v45), v47 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(v46, kCFNumberSInt32Type, &valuePtr);
      }

      else
      {
        APSLogErrorAt();
      }

      v49 = valuePtr;
      if (valuePtr != *(v7 + 624))
      {
        if (gLogCategory_APEndpointStreamScreen <= 40)
        {
          if (gLogCategory_APEndpointStreamScreen != -1 || (v50 = OUTLINED_FUNCTION_13_0(&gLogCategory_APEndpointStreamScreen), v49 = valuePtr, v50))
          {
            OUTLINED_FUNCTION_6(&gLogCategory_APEndpointStreamScreen, "OSStatus sbpd_createFrameBBuf(SBufProcessingData *, CMSampleBufferRef, CMBlockBufferRef *)", v48, "%@ transform changed to 0x%x\n");
            v49 = valuePtr;
          }
        }

        *(v7 + 624) = v49;
        v18 = 1;
      }

      v226 = v14;
      v229 = a3;
      FormatDescription = CMSampleBufferGetFormatDescription(v9);
      MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
      if (!FormatDescription)
      {
        goto LABEL_112;
      }

      v53 = MediaSubType;
      v54 = *(v7 + 952);
      if (MediaSubType != 1635148593 || *(v7 + 976))
      {
        if (*(v7 + 975))
        {
          if (!CMFormatDescriptionEqual(FormatDescription, *(v7 + 536)))
          {
            Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
            if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0(&gLogCategory_APEndpointStreamScreen)))
            {
              v221 = Dimensions;
              v222 = HIDWORD(Dimensions);
              OUTLINED_FUNCTION_6(&gLogCategory_APEndpointStreamScreen, "Boolean sbpd_updateCodecConfig(SBufProcessingData *, CMSampleBufferRef)", *&v55, "%@ format description changed (%'C, %d x %d)\n");
            }

            v76 = *(v7 + 536);
            *(v7 + 536) = FormatDescription;
            CFRetain(FormatDescription);
            v77 = MEMORY[0x277CBED28];
            if (v76)
            {
              CFRelease(v76);
            }

            *(v7 + 544) = Dimensions;
            *(v7 + 552) = SHIDWORD(Dimensions);
            v18 = 1;
LABEL_113:
            SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v9, 0);
            if (SampleAttachmentsArray)
            {
              v109 = SampleAttachmentsArray;
              Count = CFArrayGetCount(SampleAttachmentsArray);
              LOBYTE(hostTime.value) = 0;
              v111 = Count - 1;
              if (Count >= 1)
              {
                v112 = 0;
                do
                {
                  CFArrayGetValueAtIndex(v109, v112);
                  if (FigCFDictionaryGetBooleanIfPresent())
                  {
                    break;
                  }
                }

                while (v111 != v112++);
                v114 = LOBYTE(hostTime.value) == 0;
LABEL_122:
                *(v7 + 1125) = v114;
                if (gLogCategory_APEndpointStreamScreen > 20)
                {
                  goto LABEL_129;
                }

                if (gLogCategory_APEndpointStreamScreen == -1)
                {
                  OUTLINED_FUNCTION_6_17();
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_129;
                  }

                  v114 = *(v7 + 1125);
                }

                if (v114)
                {
                  v115 = "Full";
                }

                else
                {
                  v115 = "Not";
                }

                LogPrintF(&gLogCategory_APEndpointStreamScreen, "void sbpd_updateKeyFrameStatus(SBufProcessingData *, CMSampleBufferRef)", 33554452, "%@ sending %sSync frame\n", *(v7 + 952), v115, v221, v222);
LABEL_129:
                v116 = OUTLINED_FUNCTION_137();
                v119 = CMGetAttachment(v116, v117, v118);
                v120 = *v77;
                v121 = v119 == *v77;
                if (*(v7 + 628) != v121)
                {
                  *(v7 + 628) = v121;
                  v18 = 1;
                }

                v122 = OUTLINED_FUNCTION_137();
                *(v7 + 1124) = CMGetAttachment(v122, v123, v124) == v120;
                v125 = OUTLINED_FUNCTION_137();
                v128 = CMGetAttachment(v125, v126, v127);
                v129 = OUTLINED_FUNCTION_137();
                v132 = CMGetAttachment(v129, v130, v131);
                *(v7 + 1120) = 0;
                *(v7 + 1000) = 0;
                if (v128)
                {
                  v133 = CFGetTypeID(v128);
                  if (v133 == CFNumberGetTypeID())
                  {
                    CFNumberGetValue(v128, kCFNumberSInt64Type, (v7 + 1000));
                  }
                }

                if (!v132 || (v134 = CFGetTypeID(v132), v134 != CFArrayGetTypeID()))
                {
LABEL_156:
                  CMSampleBufferGetOutputPresentationTimeStamp(&hostTime, v9);
                  *(v7 + 992) = CMClockConvertHostTimeToSystemUnits(&hostTime);
                  if (*(v7 + 978))
                  {
                    v148 = OUTLINED_FUNCTION_137();
                    v151 = CMGetAttachment(v148, v149, v150);
                  }

                  else
                  {
                    v151 = 0;
                  }

                  v152 = v224 + v228;
                  v3 = MEMORY[0x277CC0638];
                  if (*(v7 + 979))
                  {
                    goto LABEL_163;
                  }

                  if (qword_280FB1C18 != -1)
                  {
                    dispatch_once(&qword_280FB1C18, &__block_literal_global_33);
                  }

                  if (_MergedGlobals_25)
                  {
LABEL_163:
                    v153 = CMSampleBufferGetSampleAttachmentsArray(v9, 0);
                    Value = v153;
                    if (v153)
                    {
                      if (CFArrayGetCount(v153) < 1)
                      {
                        Value = 0;
                      }

                      else
                      {
                        CFArrayGetValueAtIndex(Value, 0);
                        Value = FigCFDictionaryGetValue();
                      }
                    }

                    if (qword_280FB1C18 != -1)
                    {
                      dispatch_once(&qword_280FB1C18, &__block_literal_global_33);
                    }

                    if (_MergedGlobals_25 && gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0(&gLogCategory_APEndpointStreamScreen)))
                    {
                      OUTLINED_FUNCTION_6(&gLogCategory_APEndpointStreamScreen, "OSStatus sbpd_createUserDataBBuf(SBufProcessingData *, CMSampleBufferRef, CMBlockBufferRef *)", v154, "%@ cryptor subsample aux data: %@\n");
                    }

                    if (*(v7 + 979))
                    {
                      v156 = Value;
                    }

                    else
                    {
                      v156 = 0;
                    }
                  }

                  else
                  {
                    v156 = 0;
                  }

                  if (v151 | v156)
                  {
                    v157 = *MEMORY[0x277CBECE8];
                    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    FigCFDictionarySetValue();
                    FigCFDictionarySetValue();
                    Data = CFPropertyListCreateData(v157, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
                    if (Data)
                    {
                      OUTLINED_FUNCTION_19_1();
                      BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
                      if (BlockBufferWithCFDataNoCopy)
                      {
                        APSLogErrorAt();
                      }
                    }

                    else
                    {
                      APSLogErrorAt();
                      BlockBufferWithCFDataNoCopy = 0;
                      theBuffer = 0;
                    }

                    if (Mutable)
                    {
                      CFRelease(Mutable);
                    }

                    if (Data)
                    {
                      CFRelease(Data);
                    }

                    if (BlockBufferWithCFDataNoCopy)
                    {
                      goto LABEL_272;
                    }

                    if (theBuffer)
                    {
                      v160 = *(v7 + 944) + CMBlockBufferGetDataLength(theBuffer);
                      v152 += v160;
                      if (!v18)
                      {
                        goto LABEL_192;
                      }
                    }

                    else
                    {
                      LODWORD(v160) = 0;
                      if (!v18)
                      {
                        goto LABEL_192;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v160) = 0;
                    theBuffer = 0;
                    if (!v18)
                    {
LABEL_192:
                      v162 = malloc_type_calloc(1uLL, 0x80uLL, 0x73CF7482uLL);
                      *v162 = v152;
                      v162[4] = 0;
                      v163 = *(v7 + 992);
                      v164 = *(v7 + 960);
                      memset(&hostTime, 0, sizeof(hostTime));
                      v165 = *(v7 + 984);
                      v171 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                      if (v171)
                      {
                        v172 = v171(v165, v164 + v163, &hostTime);
                        if (!v172)
                        {
                          *(v7 + 632) = hostTime;
                          goto LABEL_201;
                        }
                      }

                      else
                      {
                        v172 = 4294954514;
                      }

                      if (gLogCategory_APEndpointStreamScreen <= 90)
                      {
                        if (gLogCategory_APEndpointStreamScreen != -1 || (OUTLINED_FUNCTION_6_17(), _LogCategory_Initialize()))
                        {
                          blockBufferOut = *(v7 + 952);
                          OUTLINED_FUNCTION_6_17();
                          LogPrintF(v174, v175, (v173 + 50), v176, blockBufferOut, v172);
                        }
                      }

                      hostTime = *(v7 + 632);
LABEL_201:
                      v177 = hostTime.value;
                      *(&v178 + 1) = LODWORD(hostTime.epoch);
                      *&v178 = *&hostTime.timescale;
                      *(v162 + 1) = v178 >> 32;
                      *(v162 + 5) = v177;
                      *(v162 + 2) = *(v7 + 1000);
                      *(v162 + 6) = 0;
                      *(v162 + 7) = v160;
                      v179 = *(v7 + 1008);
                      memset(&hostTime, 0, sizeof(hostTime));
                      if (v179)
                      {
                        v180 = *(v7 + 984);
                        epoch_low = *(*(CMBaseObjectGetVTable() + 16) + 16);
                        if (epoch_low)
                        {
                          epoch_low(v180, v179, &hostTime);
                          v182 = *&hostTime.timescale;
                          epoch_low = LODWORD(hostTime.epoch);
LABEL_206:
                          *(&v184 + 1) = epoch_low;
                          *&v184 = v182;
                          v183 = v184 >> 32;
                          *(v162 + 4) = v183;
                          if (*(v7 + 1124))
                          {
                            v185 = 0x80;
                          }

                          else
                          {
                            v185 = 0;
                          }

                          v162[5] = (*(v7 + 1124) != 0) << 7;
                          if (*(v7 + 1125))
                          {
                            v162[5] = v185 | 0x10;
                          }

                          *(v162 + 11) = v183;
                          if (*(v7 + 1120))
                          {
                            v186 = 0;
                            v3 = (v162 + 96);
                            v187 = v7 + 1016;
                            do
                            {
                              if (v186 + 1 >= *(v7 + 1120))
                              {
                                break;
                              }

                              v188 = UpTicksToMilliseconds();
                              if (v188 >= 0x10000)
                              {
                                if (gLogCategory_APEndpointStreamScreen <= 60)
                                {
                                  if (gLogCategory_APEndpointStreamScreen != -1 || (OUTLINED_FUNCTION_6_17(), _LogCategory_Initialize()))
                                  {
                                    LogPrintF(&gLogCategory_APEndpointStreamScreen, "void sbpd_setFrameHeaderTimestamps(const SBufProcessingData *, APScreenProtocolHeader *)", 33554492, "%@ ### bad timestamp[%d] (> 65 seconds): %llu ms\n", *(v7 + 952), v186 + 1, v188);
                                  }
                                }

                                LOWORD(v188) = -1;
                              }

                              *(v3 + v186++) = v188;
                              v187 += 8;
                            }

                            while (v186 != 16);
                          }

                          v189 = OUTLINED_FUNCTION_20_6(*MEMORY[0x277CBECE8], v162, v166, *MEMORY[0x277CBECF0], v167, v168, v169, v170, &v235);
                          if (!v189)
                          {
                            sbpd_encryptBBuf(v230, v235, v226);
                            OUTLINED_FUNCTION_9_12();
                            if (v190)
                            {
                              BlockBufferWithCFDataNoCopy = v190;
                              APSLogErrorAt();
                              a3 = v229;
                              goto LABEL_230;
                            }

                            a3 = v229;
                            if (theBuffer)
                            {
                              sbpd_encryptBBuf(v230, v235, theBuffer);
                              if (v212)
                              {
                                BlockBufferWithCFDataNoCopy = v212;
                                goto LABEL_270;
                              }

                              OUTLINED_FUNCTION_19_1();
                              appended = CMBlockBufferAppendBufferReference(v213, v214, v215, v216, 0);
                              if (appended)
                              {
                                BlockBufferWithCFDataNoCopy = appended;
                                goto LABEL_270;
                              }
                            }

                            v191 = v235;
                            v192 = v236;
                            if (v236)
                            {
                              OUTLINED_FUNCTION_19_1();
                              v197 = CMBlockBufferAppendBufferReference(v193, v194, v195, v196, 0);
                              v191 = v192;
                              if (v197)
                              {
                                BlockBufferWithCFDataNoCopy = v197;
LABEL_270:
                                APSLogErrorAt();
                                goto LABEL_230;
                              }
                            }

                            else
                            {
                              v235 = 0;
                              v236 = v191;
                            }

                            OUTLINED_FUNCTION_19_1();
                            BlockBufferWithCFDataNoCopy = CMBlockBufferAppendBufferReference(v198, v199, v200, v201, 0);
                            if (!BlockBufferWithCFDataNoCopy)
                            {
                              ++*(v7 + 1144);
                              CMBlockBufferGetDataLength(v191);
                              OUTLINED_FUNCTION_19_1();
                              kdebug_trace();
                              v231 = v191;
                              v236 = 0;
                              goto LABEL_230;
                            }

                            goto LABEL_270;
                          }

                          BlockBufferWithCFDataNoCopy = v189;
                          APSLogErrorAt();
                          free(v162);
                          goto LABEL_272;
                        }
                      }

                      else
                      {
                        epoch_low = 0;
                      }

                      v182 = 0;
                      goto LABEL_206;
                    }
                  }

                  v161 = sbpd_createConfigBBuf(v230, &v236);
                  if (!v161)
                  {
                    goto LABEL_192;
                  }

                  BlockBufferWithCFDataNoCopy = v161;
LABEL_272:
                  APSLogErrorAt();
                  a3 = v229;
                  goto LABEL_273;
                }

                v135 = CFArrayGetCount(v132);
                v136 = v135;
                v137 = v7 + 1008;
                if (v135 < 1)
                {
                  v147 = mach_absolute_time();
                  v140 = 0;
                }

                else
                {
                  v138 = 0;
                  if (v135 >= 0xE)
                  {
                    v139 = 14;
                  }

                  else
                  {
                    v139 = v135;
                  }

                  v140 = v139;
                  do
                  {
                    CFArrayGetValueAtIndex(v132, v138);
                    *(v137 + 8 * v138++) = CFGetInt64();
                  }

                  while (v139 != v138);
                  v141 = v139 - 1;
                  v142 = (v7 + 1008);
                  do
                  {
                    v144 = *v142++;
                    v143 = v144;
                    if (v144)
                    {
                      break;
                    }
                  }

                  while (v141--);
                  v146 = (v7 + 1008);
                  do
                  {
                    if (*v146)
                    {
                      v143 = *v146;
                    }

                    *v146++ = v143;
                    --v139;
                  }

                  while (v139);
                  v147 = mach_absolute_time();
                  if (v136 > 13)
                  {
                    goto LABEL_153;
                  }
                }

                *(v137 + 8 * v140++) = v147;
LABEL_153:
                if (v140 <= 13)
                {
                  *(v137 + 8 * v140++) = v147;
                }

                *(v7 + 1120) = v140;
                goto LABEL_156;
              }
            }

            else
            {
              LOBYTE(hostTime.value) = 0;
            }

            v114 = 1;
            goto LABEL_122;
          }
        }

        else if (gLogCategory_APEndpointStreamScreen <= 90)
        {
          if (gLogCategory_APEndpointStreamScreen != -1 || (OUTLINED_FUNCTION_6_17(), _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_6_17();
            LogPrintF(v58, v59, (v57 + 50), v60, v54, v53);
          }
        }

        goto LABEL_112;
      }

      Extension = CMFormatDescriptionGetExtension(FormatDescription, *MEMORY[0x277CC03B0]);
      if (!Extension)
      {
        goto LABEL_103;
      }

      v62 = Extension;
      v63 = CFGetTypeID(Extension);
      if (v63 == CFDictionaryGetTypeID())
      {
        ValueAtIndex = CFDictionaryGetValue(v62, @"avcC");
      }

      else
      {
        v65 = CFGetTypeID(v62);
        if (v65 != CFArrayGetTypeID())
        {
          goto LABEL_103;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v62, 0);
      }

      v66 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v67 = CFGetTypeID(ValueAtIndex);
        if (v67 == CFDataGetTypeID())
        {
          if (!FigCFEqual())
          {
            if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0(&gLogCategory_APEndpointStreamScreen)))
            {
              CFDataGetLength(v66);
              OUTLINED_FUNCTION_6(&gLogCategory_APEndpointStreamScreen, "Boolean sbpd_updateCodecConfig(SBufProcessingData *, CMSampleBufferRef)", v68, "%@ codec config (avcC) changed to %d bytes\n");
            }

            v218 = *v230;
            *v230 = v66;
            CFRetain(v66);
            if (v218)
            {
              CFRelease(v218);
            }

            v105 = 0;
            goto LABEL_104;
          }
        }

        else if (gLogCategory_APEndpointStreamScreen <= 90)
        {
          if (gLogCategory_APEndpointStreamScreen != -1 || (OUTLINED_FUNCTION_6_17(), _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_6_17();
            LogPrintF(v79, v80, (v78 + 50), v81, v54, v66);
          }
        }
      }

LABEL_103:
      v105 = 1;
LABEL_104:
      v107 = CMVideoFormatDescriptionGetDimensions(FormatDescription);
      if (*(v7 + 544) == v107 && *(v7 + 552) == SHIDWORD(v107))
      {
        if (v105)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0(&gLogCategory_APEndpointStreamScreen)))
        {
          v221 = HIDWORD(v107);
          OUTLINED_FUNCTION_6(&gLogCategory_APEndpointStreamScreen, "Boolean sbpd_updateCodecConfig(SBufProcessingData *, CMSampleBufferRef)", *&v106, "%@ video dimensions changed to %d x %d\n");
        }

        *(v7 + 544) = v107;
        *(v7 + 552) = SHIDWORD(v107);
      }

      v18 = 1;
LABEL_112:
      v77 = MEMORY[0x277CBED28];
      goto LABEL_113;
    }

    v19 = OUTLINED_FUNCTION_137();
    v22 = CMGetAttachment(v19, v20, v21);
    if (!v22)
    {
      v32 = OUTLINED_FUNCTION_137();
      *(v7 + 628) = CMGetAttachment(v32, v33, v34) == *v13;
      *(v7 + 992) = mach_absolute_time();
      BlockBufferWithCFDataNoCopy = sbpd_createConfigBBuf(v230, &v231);
      OUTLINED_FUNCTION_9_12();
LABEL_236:
      if (!BlockBufferWithCFDataNoCopy)
      {
        v202 = CMBlockBufferGetDataLength(v231);
        mach_absolute_time();
        v203 = UpTicksToNanoseconds();
        v204 = 0;
        v205 = *(v7 + 928);
        *(v7 + 1136) += v202;
        v206 = (v7 + 672 + 16 * (v205 & 0xF));
        *v206 = v203;
        v206[1] = v202;
        v207 = -16;
        v208 = v205;
        do
        {
          v209 = (v7 + 672 + 16 * (v208 & 0xF));
          if (v203 - *v209 > v3)
          {
            break;
          }

          v204 += v209[1];
          --v208;
        }

        while (!__CFADD__(v207++, 1));
        if (v204 >> 3 >= 0xC35)
        {
          *(v7 + 664) = v203;
        }

        *(v7 + 928) = v205 + 1;
        *a3 = 0;
LABEL_244:
        CFRelease(v9);
        return v231;
      }

      APSLogErrorAt();
      goto LABEL_259;
    }

    v23 = v22;
    hostTime.value = 0;
    v235 = 0;
    v236 = 0;
    mach_absolute_time();
    v24 = UpTicksToNanoseconds();
    v25 = CFGetTypeID(v23);
    if (v25 == CFDictionaryGetTypeID())
    {
      if (!*(v7 + 973))
      {
        v26 = v24;
        v36 = 0;
        v37 = 0;
        goto LABEL_65;
      }

      v3 = v12;
      v26 = v24;
      v27 = 1000000000.0 / (v24 - *(v7 + 656));
      *&v28 = (8 * *(v7 + 1136));
      v29 = v27 * *&v28;
      LODWORD(v28) = *(v7 + 1144);
      v30 = (v28 * v27 + 0.5);
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus sbpd_createStatsBBuf(SBufProcessingData *, CFTypeRef, CMBlockBufferRef *)", 33554462, "%@ sending stats dictionary: %@\n", *(v7 + 952), v23);
      }

      v69 = CFPropertyListCreateData(*MEMORY[0x277CBECE8], v23, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      if (v69)
      {
        v36 = v69;
        OUTLINED_FUNCTION_19_1();
        v70 = FigCreateBlockBufferWithCFDataNoCopy();
        if (v70)
        {
          BlockBufferWithCFDataNoCopy = v70;
          APSLogErrorAt();
          OUTLINED_FUNCTION_9_12();
LABEL_95:
          CFRelease(v36);
          goto LABEL_96;
        }

        v37 = CMBlockBufferGetDataLength(v236);
        Int64 = CFDictionaryGetInt64();
        sbpd_addHistogramValue(v230, @"Source Frames", Int64);
        sbpd_addHistogramValue(v230, @"Sent Frames", v30);
        v72 = CFDictionaryGetInt64();
        sbpd_addHistogramValue(v230, @"Dropped Overflow Frames", v72);
        sbpd_addHistogramValue(v230, @"Used Bandwidth", v29 / 1000000.0);
        CFDictionaryGetDouble();
        sbpd_addHistogramValue(v230, @"Available Bandwidth", v73 / 1000000.0);
LABEL_65:
        OUTLINED_FUNCTION_9_12();
        if (v75 < v3 + v74 + 1 && *(v7 + 974))
        {
          if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus sbpd_createStatsBBuf(SBufProcessingData *, CFTypeRef, CMBlockBufferRef *)", 33554462, "%@ sending data burst %d bytes\n", *(v7 + 952), 25000);
          }

          v82 = *MEMORY[0x277CBECE8];
          *&block.origin.x = MEMORY[0x277D85DD0];
          *&block.origin.y = 0x40000000;
          *&block.size.width = __getRandomDataBlob_block_invoke;
          *&block.size.height = &__block_descriptor_tmp_199_0;
          v238 = 25000;
          if (qword_280FB1C20 != -1)
          {
            dispatch_once(&qword_280FB1C20, &block);
          }

          v83 = CMBlockBufferCreateWithMemoryBlock(v82, qword_280FB1C28, 0x61A8uLL, *MEMORY[0x277CBED00], 0, 0, 0x61A8uLL, 0, &v235);
          if (v83)
          {
            BlockBufferWithCFDataNoCopy = v83;
            goto LABEL_285;
          }

          v37 += CMBlockBufferGetDataLength(v235);
        }

        v84 = malloc_type_calloc(1uLL, 0x80uLL, 0x79074DEEuLL);
        v90 = v84;
        *v84 = v37;
        if (*(v7 + 973))
        {
          v91 = 5;
        }

        else
        {
          v91 = 2;
        }

        *(v84 + 4) = v91;
        *(v84 + 5) = *(v7 + 968);
        if (v236)
        {
          v92 = CMBlockBufferGetDataLength(v236);
        }

        else
        {
          v92 = 0.0;
        }

        v90[31] = v92;
        v93 = OUTLINED_FUNCTION_20_6(*MEMORY[0x277CBECE8], v90, v85, *v12, v86, v87, v88, v89, &hostTime);
        if (v93)
        {
          BlockBufferWithCFDataNoCopy = v93;
          APSLogErrorAt();
          free(v90);
          goto LABEL_94;
        }

        if (v236 && (OUTLINED_FUNCTION_19_1(), v98 = CMBlockBufferAppendBufferReference(v94, v95, v96, v97, 0), v98))
        {
          BlockBufferWithCFDataNoCopy = v98;
        }

        else
        {
          if (!v235 || (OUTLINED_FUNCTION_19_1(), v103 = CMBlockBufferAppendBufferReference(v99, v100, v101, v102, 0), !v103))
          {
            BlockBufferWithCFDataNoCopy = 0;
            *(v7 + 656) = v26;
            *(v7 + 1136) = 0;
            *(v7 + 1144) = 0;
            v231 = hostTime.value;
            hostTime.value = 0;
            goto LABEL_94;
          }

          BlockBufferWithCFDataNoCopy = v103;
        }

LABEL_285:
        APSLogErrorAt();
LABEL_94:
        if (!v36)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }
    }

    APSLogErrorAt();
    BlockBufferWithCFDataNoCopy = 4294950536;
    OUTLINED_FUNCTION_9_12();
LABEL_96:
    if (v236)
    {
      CFRelease(v236);
    }

    if (v235)
    {
      CFRelease(v235);
    }

    v104 = hostTime.value;
    if (!hostTime.value)
    {
      goto LABEL_236;
    }

LABEL_235:
    CFRelease(v104);
    goto LABEL_236;
  }

  v219 = APSSignalErrorAt();
  if (!v219)
  {
    return v231;
  }

  BlockBufferWithCFDataNoCopy = v219;
  v9 = 0;
LABEL_259:
  *(v7 + 1148) = 1;
  if (gLogCategory_APEndpointStreamScreen <= 90 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreen, "CMBlockBufferRef screenstream_dequeueAndProcessSampleBuffer(void *, OSStatus, OSType *)", 33554522, "%@ ### sample buffer processing failed, error: %d\n", *(v7 + 40), BlockBufferWithCFDataNoCopy);
  }

  screenstream_handleFatalError(a1, BlockBufferWithCFDataNoCopy, @"sbuf processing failed");
  if (v9)
  {
    goto LABEL_244;
  }

  return v231;
}

uint64_t screenstream_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "%@ copy propertyKey: '%@'\n", *(DerivedStorage + 40), a2);
  }

  if (CFEqual(a2, *MEMORY[0x277CC1900]))
  {
    v8 = MEMORY[0x277CC1980];
LABEL_10:
    v9 = *v8;
LABEL_11:
    Int64 = CFRetain(v9);
LABEL_12:
    v11 = Int64;
LABEL_13:
    result = 0;
    *a4 = v11;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18B0]))
  {
    v8 = MEMORY[0x277CC1950];
    if (*(DerivedStorage + 88) != 110)
    {
      v8 = MEMORY[0x277CC1948];
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1878]))
  {
    v9 = *(DerivedStorage + 80);
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6700]))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v14 = MEMORY[0x277CBF3A8];
    if (*(DerivedStorage + 368) == 1)
    {
      v25 = *MEMORY[0x277CBF3A8];
      v24 = 0;
      APSScreenGetMediaPresentationParams();
      if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
      {
        screenstream_CopyProperty_cold_2();
      }

      FigCFDictionarySetCGSize();
      if (*(DerivedStorage + 385))
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD6660], *(DerivedStorage + 320));
      }

LABEL_44:
      FigCFDictionarySetInt32();
      if (*(DerivedStorage + 264) != *v14 || *(DerivedStorage + 272) != v14[1])
      {
        FigCFDictionarySetCGSize();
      }

      if (*(DerivedStorage + 394))
      {
        FigCFDictionarySetDouble();
        if (*(DerivedStorage + 288) >= 1)
        {
          FigCFDictionarySetInt32();
        }
      }

      v15 = *(DerivedStorage + 304);
      if (v15)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD6640], v15);
      }

      v16 = *(DerivedStorage + 208);
      if (v16)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD6638], v16);
      }

      v17 = *(DerivedStorage + 312);
      if (v17)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD6658], v17);
      }

      v18 = *MEMORY[0x277CBED28];
      v19 = *MEMORY[0x277CBED10];
      if (*(DerivedStorage + 377))
      {
        v20 = *MEMORY[0x277CBED28];
      }

      else
      {
        v20 = *MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(Mutable, *MEMORY[0x277CD6668], v20);
      if (*(DerivedStorage + 378))
      {
        v21 = v18;
      }

      else
      {
        v21 = v19;
      }

      CFDictionarySetValue(Mutable, *MEMORY[0x277CD6678], v21);
      result = 0;
      *a4 = Mutable;
      return result;
    }

    if (*(DerivedStorage + 386) && *(DerivedStorage + 1196) <= 0)
    {
      FigCFDictionarySetCGSize();
      if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_40;
      }
    }

    else
    {
      FigCFDictionarySetCGSize();
      if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
      {
LABEL_40:
        screenstream_CopyProperty_cold_1();
      }
    }

    if (*(DerivedStorage + 410) && *(DerivedStorage + 385))
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD6660], *(DerivedStorage + 320));
    }

    goto LABEL_44;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6730]))
  {
    Int64 = screenstream_copyNetworkInfo(DerivedStorage);
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1880]) || CFEqual(a2, @"IsPlaying"))
  {
    v8 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 26))
    {
      v8 = MEMORY[0x277CBED10];
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"EndpointStreamShowInfo"))
  {
    Int64 = screenstreamudp_copyShowInfo(DerivedStorage);
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1898]))
  {
    Int64 = screenstream_copyOutputLatency(DerivedStorage);
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1908]))
  {
    v9 = *(DerivedStorage + 352);
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_70:
    v11 = 0;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"screenStreamType"))
  {
    v9 = @"screenStreamTCP";
    goto LABEL_11;
  }

  if (CFEqual(a2, @"transportGlitchCount"))
  {
    atomic_load((DerivedStorage + 1200));
    Int64 = CFNumberCreateInt64();
    goto LABEL_12;
  }

  if (CFEqual(a2, @"usageMode"))
  {
    v9 = *(DerivedStorage + 184);
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_70;
  }

  if (CFEqual(a2, @"RTCStats"))
  {
    v22 = *(DerivedStorage + 1160);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __screenstream_CopyProperty_block_invoke;
    block[3] = &__block_descriptor_tmp_85_0;
    block[4] = a4;
    block[5] = a3;
    block[6] = DerivedStorage;
    dispatch_sync(v22, block);
    if (*a4)
    {
      return 0;
    }

    else
    {
      screenstream_CopyProperty_cold_3();
      return 4294950535;
    }
  }

  else
  {
    if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "%@ unknown property %@\n", *(DerivedStorage + 40), a2);
    }

    return 4294954512;
  }
}

uint64_t APHIDClientHandleHIDReport(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v4 = gLogCategory_APHIDClient;
  if (gLogCategory_APHIDClient <= 20)
  {
    if (gLogCategory_APHIDClient == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v4 = gLogCategory_APHIDClient;
    }

    if (v4 > 10)
    {
      v6 = 0;
      v5 = "";
    }

    else
    {
      v5 = "\n";
      if (v4 != -1)
      {
        goto LABEL_8;
      }

      if (!_LogCategory_Initialize())
      {
        v5 = "";
      }

      v4 = gLogCategory_APHIDClient;
      if (gLogCategory_APHIDClient > 10)
      {
        v6 = 0;
      }

      else
      {
LABEL_8:
        v6 = v4 != -1 || _LogCategory_Initialize() != 0;
      }
    }

    LogPrintF(&gLogCategory_APHIDClient, "OSStatus APHIDClientHandleHIDReport(APHIDClientRef, CFDictionaryRef)", 33554452, "[%{ptr}] Network HID report received%s%?@\n", a1, v5, v6, a2);
  }

LABEL_16:
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  v9 = mach_absolute_time();
  v10 = v9;
  if (APHIDClientHandleHIDReport_lastLogTime && (v11 = (v9 - APHIDClientHandleHIDReport_lastLogTime), (v11 / UpTicksPerSecond()) < 1.0))
  {
    v12 = 0;
  }

  else
  {
    APHIDClientHandleHIDReport_lastLogTime = v10;
    v12 = 1;
  }

  CFDictionaryGetInt64();
  v13 = NTPtoUpTicks();
  v14 = v13;
  if (v13 <= v10)
  {
    v15 = v10 - v13;
  }

  else
  {
    v15 = v13 - v10;
  }

  if (v15 <= UpTicksPerSecond())
  {
    v10 = v14;
  }

  else if (gLogCategory_APHIDClient <= 50 && (gLogCategory_APHIDClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APHIDClient, "OSStatus APHIDClientHandleHIDReport(APHIDClientRef, CFDictionaryRef)", 33554482, "### [%{ptr}] Bad HID timestamp %llu, using 'now' %llu\n", a1, v14, v10);
  }

  Value = CFDictionaryGetValue(*(a1 + 24), v8);
  if (Value)
  {
    v17 = Value;
    BytePtr = CFDataGetBytePtr(TypedValue);
    Length = CFDataGetLength(TypedValue);
    v20 = IOHIDUserDeviceHandleReportWithTimeStamp(v17, v10, BytePtr, Length);
    v23 = v20;
    if (!v20)
    {
      if (v12 && gLogCategory_APHIDClient <= 50 && (gLogCategory_APHIDClient != -1 || _LogCategory_Initialize()))
      {
        APHIDClientHandleHIDReport_cold_4(a1);
      }

      return v23;
    }

    APHIDClientHandleHIDReport_cold_3(v20);
    v22 = v23;
  }

  else
  {
    APHIDClientHandleHIDReport_cold_5();
    v22 = 4294895254;
  }

  if (gLogCategory_APHIDClient <= 50)
  {
    if (gLogCategory_APHIDClient == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v23;
      }

      v22 = v23;
    }

    LogPrintF(&gLogCategory_APHIDClient, "OSStatus APHIDClientHandleHIDReport(APHIDClientRef, CFDictionaryRef)", 33554482, "### [%{ptr}] Network HID report failed: %#m\n", a1, v22);
  }

  return v23;
}

uint64_t carEndpoint_handleEventCreatingReply(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v86 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (carEndpoint_isDissociated(DerivedStorage))
  {
    return 4294950573;
  }

  if (a2 != 1668116068)
  {
    if (gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_handleEventCreatingReply(FigTransportStreamRef, OSType, CMBlockBufferRef, void *, CMBlockBufferRef *)", 33554492, "[%{ptr}] ### Unsupported messageType %'C\n", a4, a2);
    }

    v12 = 0;
    v17 = 0;
    goto LABEL_68;
  }

  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  if (CFDataWithBlockBufferNoCopy)
  {
    v9 = CFDataWithBlockBufferNoCopy;
    carEndpoint_handleEventCreatingReply_cold_1(CFDataWithBlockBufferNoCopy);
    v17 = 0;
    v12 = 0;
LABEL_102:
    Data = 0;
    goto LABEL_70;
  }

  v11 = CFPropertyListCreateWithData(0, 0, 0, 0, 0);
  v12 = v11;
  if (!v11 || (v13 = CFGetTypeID(v11), v13 != CFDictionaryGetTypeID()))
  {
    carEndpoint_handleEventCreatingReply_cold_19();
    v17 = 0;
    Data = 0;
    v9 = 4294950576;
    goto LABEL_70;
  }

  v14 = CMBaseObjectGetDerivedStorage();
  v59 = 0;
  v60 = &v59;
  v61 = 0x2000000000;
  v62 = 0;
  v15 = CFDictionaryGetValue(v12, @"type");
  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!v15)
  {
    carEndpoint_handleEventCreatingReply_cold_15();
    v17 = 0;
    v9 = 4294950576;
    goto LABEL_52;
  }

  v17 = TypedValue;
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_processEventCreatingResponse(FigEndpointRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "[%{ptr}] Processing '%@' command\n", a4, v15);
  }

  if (CFEqual(v15, @"forceKeyFrame"))
  {
    v18 = CMBaseObjectGetDerivedStorage();
    *&v65 = 0;
    *(&v65 + 1) = &v65;
    v66 = 0x2000000000uLL;
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_forceKeyFrame(FigEndpointRef, CFDictionaryRef)", 33554482, "[%{ptr}] Force Key Frame, params: %@", a4, v17);
    }

    CFStringGetTypeID();
    v29 = CFDictionaryGetTypedValue();
    v30 = *(v18 + 168);
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 0x40000000;
    *&v71 = __carEndpoint_forceKeyFrame_block_invoke;
    *(&v71 + 1) = &unk_27849E938;
    *&v72 = &v65;
    *(&v72 + 1) = v29;
    *&v73 = a4;
    *(&v73 + 1) = v18;
    dispatch_sync(v30, &block);
    v31 = *(*(&v65 + 1) + 24);
    if (v31)
    {
      restarted = APEndpointStreamScreenRestartBitstream(v31);
      v9 = restarted;
      if (restarted)
      {
        carEndpoint_handleEventCreatingReply_cold_2(restarted);
      }

      goto LABEL_47;
    }

LABEL_106:
    v9 = 0;
LABEL_47:
    v33 = *(*(&v65 + 1) + 24);
    if (v33)
    {
      CFRelease(v33);
    }

    _Block_object_dispose(&v65, 8);
    goto LABEL_50;
  }

  if (CFEqual(v15, @"hidSendReport"))
  {
    v19 = CMBaseObjectGetDerivedStorage();
    *&v65 = 0;
    *(&v65 + 1) = &v65;
    v66 = 0x2000000000uLL;
    v20 = *(v19 + 168);
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 0x40000000;
    *&v71 = __carEndpoint_sendHIDReport_block_invoke;
    *(&v71 + 1) = &unk_27849E960;
    *&v72 = &v65;
    *(&v72 + 1) = v19;
    dispatch_sync(v20, &block);
    v21 = *(*(&v65 + 1) + 24);
    if (v21)
    {
      v22 = APHIDClientHandleHIDReport(v21, v12);
      v9 = v22;
      if (v22)
      {
        carEndpoint_handleEventCreatingReply_cold_3(v22);
      }

      goto LABEL_47;
    }

    goto LABEL_106;
  }

  if (CFEqual(v15, @"changeModes"))
  {
    v23 = CMBaseObjectGetDerivedStorage();
    v69 = 0;
    v68 = 0u;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    block = 0u;
    v71 = 0u;
    memset(v64, 0, sizeof(v64));
    value = 0;
    if (v17)
    {
      if (*(v23 + 520))
      {
        v24 = APStarkModeChangeRequestMakeFromDictionary(v17, 1, &v65);
        if (v24)
        {
          v9 = v24;
          carEndpoint_handleEventCreatingReply_cold_4(v24);
          v17 = 0;
          v25 = 0;
        }

        else
        {
          v25 = CFDictionaryCopyCString();
          if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            carEndpoint_handleEventCreatingReply_cold_5(v25, &v65, &block);
          }

          v26 = FigStarkModeControllerRequestModeChange();
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!Mutable)
          {
            carEndpoint_handleEventCreatingReply_cold_7();
            v17 = 0;
            v9 = 4294950575;
            goto LABEL_39;
          }

          CFDictionarySetInt64();
          if (!v26)
          {
            DictionaryRepresentation = APStarkModeCreateDictionaryRepresentation(v64, &value);
            if (DictionaryRepresentation)
            {
              v9 = DictionaryRepresentation;
              carEndpoint_handleEventCreatingReply_cold_6(DictionaryRepresentation);
              v17 = 0;
              goto LABEL_39;
            }

            if (value)
            {
              CFDictionarySetValue(Mutable, @"params", value);
            }
          }

          v9 = 0;
          v17 = Mutable;
        }

        Mutable = 0;
      }

      else
      {
        carEndpoint_handleEventCreatingReply_cold_8();
        v17 = 0;
        v25 = 0;
        Mutable = 0;
        v9 = 4294949690;
      }
    }

    else
    {
      carEndpoint_handleEventCreatingReply_cold_9();
      v25 = 0;
      Mutable = 0;
      v9 = 4294950576;
    }

LABEL_39:
    free(v25);
    if (value)
    {
      CFRelease(value);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

LABEL_51:
    if (v9)
    {
      APSLogErrorAt();
      if (v17)
      {
        CFRelease(v17);
LABEL_105:
        v17 = 0;
        goto LABEL_52;
      }
    }

    goto LABEL_52;
  }

  if (CFEqual(v15, @"iAPSendMessage"))
  {
    v49 = CMBaseObjectGetDerivedStorage();
    *&v65 = 0;
    *(&v65 + 1) = &v65;
    v66 = 0x2000000000uLL;
    if (v17)
    {
      v50 = *(v49 + 168);
      *&block = MEMORY[0x277D85DD0];
      *(&block + 1) = 0x40000000;
      *&v71 = __carEndpoint_sendiAPMessage_block_invoke;
      *(&v71 + 1) = &unk_27849E988;
      *&v72 = &v65;
      *(&v72 + 1) = v49;
      dispatch_sync(v50, &block);
      if (*(*(&v65 + 1) + 24))
      {
        CFDataGetTypeID();
        v51 = CFDictionaryGetTypedValue();
        if (v51)
        {
          v54 = v51;
          if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            carEndpoint_handleEventCreatingReply_cold_10(a4, v52, v53);
          }

          v55 = APAccTransportClientEndpointForwardData(*(*(&v65 + 1) + 24), v54);
          v9 = v55;
          if (v55)
          {
            carEndpoint_handleEventCreatingReply_cold_11(v55);
          }
        }

        else
        {
          carEndpoint_handleEventCreatingReply_cold_12();
          v9 = 4294954516;
        }
      }

      else
      {
        v9 = 4294954514;
      }
    }

    else
    {
      carEndpoint_handleEventCreatingReply_cold_13();
      v9 = 4294950576;
    }

    goto LABEL_47;
  }

  if (CFEqual(v15, @"requestSiri"))
  {
    updated = carEndpoint_requestSiri(a4, v17);
    goto LABEL_110;
  }

  if (CFEqual(v15, @"requestUI"))
  {
    updated = carEndpoint_requestUI(a4, v17);
LABEL_110:
    v9 = updated;
LABEL_50:
    v17 = 0;
    goto LABEL_51;
  }

  if (CFEqual(v15, @"updateViewArea"))
  {
    updated = carEndpoint_updateViewArea(a4, v17);
    goto LABEL_110;
  }

  if (CFEqual(v15, @"setLimitedUI"))
  {
    updated = carEndpoint_setLimitedUI(a4, v17);
    goto LABEL_110;
  }

  if (CFEqual(v15, @"setNightMode"))
  {
    updated = carEndpoint_setNightMode(a4, v17);
    goto LABEL_110;
  }

  if (CFEqual(v15, @"setVideoPlaybackAllowed"))
  {
    updated = carEndpoint_updateVideoPlaybackAllowed(a4, v17, 1);
    goto LABEL_110;
  }

  if (CFEqual(v15, @"updateVehicleInformation"))
  {
    updated = carEndpoint_updateVehicleInformation(a4, v17);
    goto LABEL_110;
  }

  v57 = carEndpoint_validateRuntimeFeaturesWithAccessory(a4, v15, 0);
  if (v57)
  {
    v9 = v57;
    carEndpoint_handleEventCreatingReply_cold_14(v57);
    goto LABEL_105;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_processEventCreatingResponse(FigEndpointRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "[%{ptr}] Unhandled command '%@' dict '%@', forwarding to clients\n", a4, v15, v12);
  }

  v58 = *(v14 + 168);
  *&block = MEMORY[0x277D85DD0];
  *(&block + 1) = 0x40000000;
  *&v71 = __carEndpoint_processEventCreatingResponse_block_invoke;
  *(&v71 + 1) = &unk_27849E910;
  *&v72 = &v59;
  *(&v72 + 1) = v14;
  dispatch_sync(v58, &block);
  carEndpoint_postNotification(a4, *MEMORY[0x277CC0D98], *(v60 + 6), v12);
  v17 = 0;
  v9 = 0;
LABEL_52:
  _Block_object_dispose(&v59, 8);
  CFDictionaryGetValue(v12, @"type");
  CFDataGetLength(0);
  v34 = CMBaseObjectGetDerivedStorage();
  LODWORD(v65) = 0;
  LODWORD(v64[0]) = 0;
  LODWORD(v59) = 0;
  if (*(v34 + 576))
  {
    v35 = v34;
    v36 = *MEMORY[0x277CBECE8];
    v37 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v37)
    {
      v38 = v37;
      Current = CFAbsoluteTimeGetCurrent();
      v40 = CFCalendarCreateWithIdentifier(v36, *MEMORY[0x277CBEE80]);
      v41 = v40;
      if (v40)
      {
        CFCalendarDecomposeAbsoluteTime(v40, Current, "Hms", &v65, v64, &v59);
        v42 = v65;
        v43 = v64[0];
        v44 = v59;
      }

      else
      {
        v44 = 0;
        v43 = 0;
        v42 = 0;
      }

      snprintf(&block, 0x14uLL, "%02d:%02d:%02d.%d", v42, v43, v44, ((Current - floor(Current)) * 1000000.0));
      v45 = CFStringCreateWithCString(v36, &block, 0x8000100u);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (CFArrayGetCount(*(v35 + 576)) >= *(v35 + 584))
      {
        CFArrayRemoveValueAtIndex(*(v35 + 576), 0);
      }

      CFArrayAppendValue(*(v35 + 576), v38);
      if (v45)
      {
        CFRelease(v45);
      }

      CFRelease(v38);
      if (v41)
      {
        CFRelease(v41);
      }
    }
  }

  if (v9)
  {
    carEndpoint_handleEventCreatingReply_cold_16(v9);
    goto LABEL_102;
  }

  if (!v17)
  {
LABEL_68:
    Data = 0;
LABEL_69:
    v9 = 0;
    *a5 = 0;
    goto LABEL_70;
  }

  Data = CFPropertyListCreateData(0, v17, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    carEndpoint_handleEventCreatingReply_cold_18();
    v9 = 4294950575;
    goto LABEL_70;
  }

  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (!BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_69;
  }

  v9 = BlockBufferWithCFDataNoCopy;
  carEndpoint_handleEventCreatingReply_cold_17(BlockBufferWithCFDataNoCopy);
LABEL_70:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  return v9;
}

uint64_t apsession_eventStreamCreateReplyCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 344))
  {
    v6 = MEMORY[0x223DB15F0](DerivedStorage + 344);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(DerivedStorage + 368);
  FigSimpleMutexUnlock();
  if (v6)
  {
    if (v7)
    {
      v8 = APSDispatchSyncTask();
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    apsession_eventStreamCreateReplyCallback_cold_1();
    return 4294895467;
  }

  return v8;
}

uint64_t carEndpoint_isDissociated(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 168);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __carEndpoint_isDissociated_block_invoke;
  v4[3] = &unk_27849E610;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFTypeRef __carEndpoint_sendHIDReport_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 296);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t vdsink_PushFrame(uint64_t a1, void *a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  valuePtr = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = *(DerivedStorage + 72);
  v21 = *(DerivedStorage + 80);
  v24 = *(DerivedStorage + 56);
  v23 = *(DerivedStorage + 64);
  if (v22 != v24 || v21 != v23)
  {
    v26 = v24 / v22;
    if (v24 / v22 >= v23 / v21)
    {
      v26 = v23 / v21;
    }

    a10 = a10 * v26;
    a11 = a11 * v26;
    a8 = (v24 - v22 * v26) * 0.5 + a8 * v26;
    a9 = (v23 - v21 * v26) * 0.5 + a9 * v26;
  }

  v56.origin.x = a4;
  v56.origin.y = a5;
  v56.size.width = a6;
  v56.size.height = a7;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v56);
  v57.origin.x = a8;
  v57.origin.y = a9;
  v57.size.width = a10;
  v57.size.height = a11;
  v28 = CGRectCreateDictionaryRepresentation(v57);
  v29 = *MEMORY[0x277CBECE8];
  v30 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  CMSetAttachment(a2, *MEMORY[0x277CC1AB8], DictionaryRepresentation, 0);
  CMSetAttachment(a2, *MEMORY[0x277CC1A98], v28, 0);
  CMSetAttachment(a2, *MEMORY[0x277CC1AC0], v30, 0);
  v31 = *(DerivedStorage + 96);
  if (v31)
  {
    CMSetAttachment(a2, @"APTimestamps", v31, 0);
    v32 = *(DerivedStorage + 96);
    if (v32)
    {
      CFRelease(v32);
      *(DerivedStorage + 96) = 0;
    }
  }

  v33 = *(DerivedStorage + 104);
  if (v33)
  {
    CMSetAttachment(a2, @"APSubmitSurfaceTimestamp", v33, 0);
    v34 = *(DerivedStorage + 104);
    if (v34)
    {
      CFRelease(v34);
      *(DerivedStorage + 104) = 0;
    }
  }

  v35 = *(DerivedStorage + 112);
  if (v35)
  {
    CMSetAttachment(a2, @"APInterestingFrame", v35, 0);
    v36 = *(DerivedStorage + 112);
    if (v36)
    {
      CFRelease(v36);
      *(DerivedStorage + 112) = 0;
    }
  }

  if (*DerivedStorage == 1)
  {
    CMBufferQueueEnqueue(*(DerivedStorage + 16), a2);
  }

  if (gLogCategory_APVirtualDisplayTestSink <= 10 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APVirtualDisplayTestSink, "OSStatus vdsink_PushFrame(FigVirtualDisplaySinkRef, CMSampleBufferRef, CGRect, CGRect, uint32_t)", 33554442, "pushed frame %p\n", a2);
  }

  v37 = CMBaseObjectGetDerivedStorage();
  if (*(v37 + 88))
  {
    v38 = v37;
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a2, 0);
    if (SampleAttachmentsArray)
    {
      v40 = SampleAttachmentsArray;
      Count = CFArrayGetCount(SampleAttachmentsArray);
      if (Count >= 1)
      {
        v42 = Count;
        v52 = v30;
        v53 = DictionaryRepresentation;
        Mutable = 0;
        v44 = 0;
        v45 = *MEMORY[0x277CE2A60];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v40, v44);
          if (ValueAtIndex)
          {
            Value = CFDictionaryGetValue(ValueAtIndex, v45);
            if (Value)
            {
              v48 = Value;
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(v29, 0, MEMORY[0x277CBF128]);
              }

              if (gLogCategory_APVirtualDisplayTestSink <= 10 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APVirtualDisplayTestSink, "void vdsink_handleFrameAcknowledgements(FigVirtualDisplaySinkRef, CMSampleBufferRef)", 33554442, "acknowledging token %@\n", v48);
              }

              CFArrayAppendValue(Mutable, v48);
            }
          }

          ++v44;
        }

        while (v42 != v44);
        DictionaryRepresentation = v53;
        v30 = v52;
        if (Mutable)
        {
          v49 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(v49, *MEMORY[0x277CD66A0], Mutable);
          v50 = *(v38 + 24);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __vdsink_handleFrameAcknowledgements_block_invoke;
          block[3] = &__block_descriptor_tmp_33;
          block[4] = v38;
          block[5] = v49;
          dispatch_async(v50, block);
          CFRelease(Mutable);
        }
      }
    }
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return 0;
}

uint64_t vdsink_PushFrame_0(uint64_t a1, void *a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  valuePtr = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = *(DerivedStorage + 72);
  v21 = *(DerivedStorage + 80);
  v24 = *(DerivedStorage + 56);
  v23 = *(DerivedStorage + 64);
  if (v22 != v24 || v21 != v23)
  {
    v26 = v24 / v22;
    if (v24 / v22 >= v23 / v21)
    {
      v26 = v23 / v21;
    }

    a10 = a10 * v26;
    a11 = a11 * v26;
    a8 = (v24 - v22 * v26) * 0.5 + a8 * v26;
    a9 = (v23 - v21 * v26) * 0.5 + a9 * v26;
  }

  v58.origin.x = a4;
  v58.origin.y = a5;
  v58.size.width = a6;
  v58.size.height = a7;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v58);
  v59.origin.x = a8;
  v59.origin.y = a9;
  v59.size.width = a10;
  v59.size.height = a11;
  v28 = CGRectCreateDictionaryRepresentation(v59);
  v29 = *MEMORY[0x277CBECE8];
  v30 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  CMSetAttachment(a2, *MEMORY[0x277CC1AB8], DictionaryRepresentation, 0);
  CMSetAttachment(a2, *MEMORY[0x277CC1A98], v28, 0);
  CMSetAttachment(a2, *MEMORY[0x277CC1AC0], v30, 0);
  v31 = *(DerivedStorage + 96);
  if (v31)
  {
    CMSetAttachment(a2, @"APTimestamps", v31, 0);
    v32 = *(DerivedStorage + 96);
    if (v32)
    {
      CFRelease(v32);
      *(DerivedStorage + 96) = 0;
    }
  }

  v33 = *(DerivedStorage + 104);
  if (v33)
  {
    CMSetAttachment(a2, @"APSubmitSurfaceTimestamp", v33, 0);
    v34 = *(DerivedStorage + 104);
    if (v34)
    {
      CFRelease(v34);
      *(DerivedStorage + 104) = 0;
    }
  }

  v35 = *(DerivedStorage + 112);
  if (v35)
  {
    CMSetAttachment(a2, @"APInterestingFrame", v35, 0);
    v36 = *(DerivedStorage + 112);
    if (v36)
    {
      CFRelease(v36);
      *(DerivedStorage + 112) = 0;
    }
  }

  CMBufferQueueEnqueue(*(DerivedStorage + 16), a2);
  if (gLogCategory_APVirtualDisplaySink <= 10 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    v37 = *(DerivedStorage + 8);
    if (!v37)
    {
      v37 = &stru_283570B70;
    }

    LogPrintF(&gLogCategory_APVirtualDisplaySink, "OSStatus vdsink_PushFrame(FigVirtualDisplaySinkRef, CMSampleBufferRef, CGRect, CGRect, uint32_t)", 33554442, "%@ pushed frame %@\n", v37, a2);
  }

  v38 = CMBaseObjectGetDerivedStorage();
  if (*(v38 + 88))
  {
    v39 = v38;
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a2, 0);
    if (SampleAttachmentsArray)
    {
      v41 = SampleAttachmentsArray;
      Count = CFArrayGetCount(SampleAttachmentsArray);
      if (Count >= 1)
      {
        v43 = Count;
        v54 = v30;
        v55 = DictionaryRepresentation;
        Mutable = 0;
        v45 = 0;
        v46 = *MEMORY[0x277CE2A60];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v41, v45);
          if (ValueAtIndex)
          {
            Value = CFDictionaryGetValue(ValueAtIndex, v46);
            if (Value)
            {
              v49 = Value;
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(v29, 0, MEMORY[0x277CBF128]);
              }

              if (gLogCategory_APVirtualDisplaySink <= 10 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
              {
                v50 = *(v39 + 8);
                if (!v50)
                {
                  v50 = &stru_283570B70;
                }

                LogPrintF(&gLogCategory_APVirtualDisplaySink, "void vdsink_handleFrameAcknowledgements(FigVirtualDisplaySinkRef, CMSampleBufferRef)", 33554442, "%@ acknowledging token %@\n", v50, v49);
              }

              CFArrayAppendValue(Mutable, v49);
            }
          }

          ++v45;
        }

        while (v43 != v45);
        DictionaryRepresentation = v55;
        v30 = v54;
        if (Mutable)
        {
          v51 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(v51, *MEMORY[0x277CD66A0], Mutable);
          v52 = *(v39 + 24);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __vdsink_handleFrameAcknowledgements_block_invoke_0;
          block[3] = &__block_descriptor_tmp_48;
          block[4] = v39;
          block[5] = v51;
          dispatch_async(v52, block);
          CFRelease(Mutable);
        }
      }
    }
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return 0;
}

void __APEndpointStreamScreenCreate_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v36 = 0;
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  v33 = 0;
  cf = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2000000000;
  v28 = 0;
  if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    __APEndpointStreamScreenCreate_block_invoke_cold_1();
  }

  if (*(DerivedStorage + 136))
  {
    v2 = *MEMORY[0x277CBECE8];
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 8);
    v6 = VTable + 8;
    v8 = *(v7 + 48);
    if (v8)
    {
      v6 = v8(CMBaseObject, *MEMORY[0x277CE5068], v2, &cf);
    }

    if (*(DerivedStorage + 972) || *(DerivedStorage + 968))
    {
      Shared = APSenderStatsCollectorGetShared(v6, v5);
      APSenderStatsCollectorCopySystemStats(Shared, &v33);
    }

    v10 = *(DerivedStorage + 504);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __screenstream_statsTimerFired_block_invoke;
    block[3] = &unk_2784A11E8;
    block[4] = v27;
    block[5] = &v29;
    block[6] = DerivedStorage;
    dispatch_sync(v10, block);
    v11 = cf;
    v12 = v30[3];
    if (v33)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, v33);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v14 = MutableCopy;
    if (v11)
    {
      Value = CFDictionaryGetValue(v11, *MEMORY[0x277CE4FD8]);
      if (Value)
      {
        CFDictionarySetValue(v14, @"txCapacityAvg", Value);
      }

      v16 = CFDictionaryGetValue(v11, *MEMORY[0x277CE4FC8]);
      if (v16)
      {
        CFDictionarySetValue(v14, @"lossAvg", v16);
      }

      v17 = CFDictionaryGetValue(v11, *MEMORY[0x277CE4FD0]);
      if (v17)
      {
        CFDictionarySetValue(v14, @"rttAvg", v17);
      }
    }

    if (v12)
    {
      Count = CFArrayGetCount(v12);
      v19 = Count >= 7 ? 7 : Count;
      if (Count >= 1)
      {
        v20 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v12, v20);
          CFDictionarySetValue(v14, screenstream_createCombinedStats_fpsKeys[v20++], ValueAtIndex);
        }

        while (v19 != v20);
      }
    }

    FigCFDictionarySetInt32();
    if (CFDictionaryGetInt64() >= 1)
    {
      atomic_fetch_add((DerivedStorage + 1200), 1u);
    }

    *&sampleTimingArray.duration.value = *MEMORY[0x277CC08F0];
    v22 = *(MEMORY[0x277CC08F0] + 16);
    *&sampleTimingArray.presentationTimeStamp.value = *MEMORY[0x277CC0898];
    v23 = *(MEMORY[0x277CC0898] + 16);
    sampleTimingArray.duration.epoch = v22;
    sampleTimingArray.presentationTimeStamp.epoch = v23;
    *&sampleTimingArray.decodeTimeStamp.value = *&sampleTimingArray.presentationTimeStamp.value;
    sampleTimingArray.decodeTimeStamp.epoch = v23;
    v24 = CMSampleBufferCreate(v2, 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v36);
    if (v24)
    {
      __APEndpointStreamScreenCreate_block_invoke_cold_2(v24);
    }

    else
    {
      CMSetAttachment(v36, @"APStats", v14, 0);
      CMBufferQueueEnqueue(*(DerivedStorage + 104), v36);
    }
  }

  else
  {
    __APEndpointStreamScreenCreate_block_invoke_cold_3();
    v14 = 0;
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  v25 = v30[3];
  if (v25)
  {
    CFRelease(v25);
  }

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
}

uint64_t screenstream_signalDataAvailable(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1)
  {
    return screenstream_signalDataAvailable_cold_2();
  }

  v2 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v2)
  {
    result = 4294954514;
    return screenstream_signalDataAvailable_cold_1(result);
  }

  result = v2(v1);
  if (result)
  {
    return screenstream_signalDataAvailable_cold_1(result);
  }

  return result;
}

CFTypeRef __screenstream_statsTimerFired_block_invoke(void *a1)
{
  v1 = a1[6];
  *(*(a1[4] + 8) + 24) = *(v1 + 520);
  *(*(a1[5] + 8) + 24) = *(v1 + 512);
  result = *(*(a1[5] + 8) + 24);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t vdsink_ShouldDropFrame(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v9, 0, sizeof(v9));
  CMBufferQueueGetDuration(&v9, *(DerivedStorage + 16));
  time1 = v9;
  v7 = *(DerivedStorage + 32);
  if (CMTimeCompare(&time1, &v7) < 0)
  {
    v3 = 0;
    v2 = *(DerivedStorage + 136);
  }

  else
  {
    if (gLogCategory_APVirtualDisplayTestSink <= 40 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
    {
      vdsink_ShouldDropFrame_cold_1(&v9);
    }

    v2 = *(DerivedStorage + 136) + 1;
    *(DerivedStorage + 136) = v2;
    v3 = 1;
  }

  if (v2 >= 1)
  {
    v4 = mach_absolute_time();
    if (v4 - *(DerivedStorage + 128) >= *(DerivedStorage + 120))
    {
      v5 = v4;
      if (gLogCategory_APVirtualDisplayTestSink <= 60 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
      {
        vdsink_ShouldDropFrame_cold_2((DerivedStorage + 136));
      }

      *(DerivedStorage + 136) = 0;
      *(DerivedStorage + 128) = v5;
    }
  }

  return v3;
}

uint64_t vdsink_ShouldDropFrame_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v8, 0, sizeof(v8));
  CMBufferQueueGetDuration(&v8, *(DerivedStorage + 16));
  if ((v8.flags & 0x1D) != 1 || (time1 = v8, v6 = *(DerivedStorage + 32), CMTimeCompare(&time1, &v6) < 0))
  {
    v2 = 0;
  }

  else
  {
    if (gLogCategory_APVirtualDisplaySink <= 40 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
    {
      vdsink_ShouldDropFrame_cold_1_0(DerivedStorage, &v8);
    }

    ++*(DerivedStorage + 136);
    v2 = 1;
  }

  if (*(DerivedStorage + 136) >= 1)
  {
    v3 = mach_absolute_time();
    if (v3 - *(DerivedStorage + 128) >= *(DerivedStorage + 120))
    {
      v4 = v3;
      if (gLogCategory_APVirtualDisplaySink <= 60 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
      {
        vdsink_ShouldDropFrame_cold_2_0(DerivedStorage, (DerivedStorage + 136));
      }

      *(DerivedStorage + 136) = 0;
      *(DerivedStorage + 128) = v4;
    }
  }

  return v2;
}

void __vdsink_handleFrameAcknowledgements_block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 88) + 16))();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __vdsink_handleFrameAcknowledgements_block_invoke_0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    (*(v2 + 16))(v2, *MEMORY[0x277CD6698], *(a1 + 40));
  }

  v3 = *(a1 + 40);

  CFRelease(v3);
}

uint64_t vdsink_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = gLogCategory_APVirtualDisplayTestSink;
  if (gLogCategory_APVirtualDisplayTestSink <= 30)
  {
    if (gLogCategory_APVirtualDisplayTestSink == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v7 = gLogCategory_APVirtualDisplayTestSink;
    }

    if (v7 > 20)
    {
      v8 = 0;
    }

    else
    {
      if (v7 != -1)
      {
        v8 = 1;
        goto LABEL_11;
      }

      v8 = _LogCategory_Initialize() != 0;
      v7 = gLogCategory_APVirtualDisplayTestSink;
      if (gLogCategory_APVirtualDisplayTestSink <= 20)
      {
LABEL_11:
        v9 = v7 != -1 || _LogCategory_Initialize() != 0;
        goto LABEL_14;
      }
    }

    v9 = 0;
LABEL_14:
    LogPrintF(&gLogCategory_APVirtualDisplayTestSink, "OSStatus vdsink_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "virtual display sink %p set property %@%?s%?@\n", a1, a2, v8, " = ", v9, a3);
  }

LABEL_15:
  if (CFEqual(a2, *MEMORY[0x277CD6720]))
  {
    v10 = DerivedStorage[14];
    DerivedStorage[14] = a3;
    if (!a3)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6748]))
  {
    v10 = DerivedStorage[12];
    DerivedStorage[12] = a3;
    if (!a3)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6738]))
  {
    v10 = DerivedStorage[13];
    DerivedStorage[13] = a3;
    if (!a3)
    {
LABEL_18:
      if (v10)
      {
        CFRelease(v10);
      }

      return 0;
    }

LABEL_17:
    CFRetain(a3);
    goto LABEL_18;
  }

  if (CFEqual(a2, *MEMORY[0x277CD66F0]) || CFEqual(a2, *MEMORY[0x277CD6740]))
  {
    return 0;
  }

  v12 = DerivedStorage[1];

  return FigEndpointStreamSetProperty(v12, a2, a3);
}

uint64_t vdsink_SetProperty_0(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = gLogCategory_APVirtualDisplaySink;
  if (gLogCategory_APVirtualDisplaySink <= 30)
  {
    if (gLogCategory_APVirtualDisplaySink == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v7 = gLogCategory_APVirtualDisplaySink;
    }

    if (DerivedStorage[1])
    {
      v8 = DerivedStorage[1];
    }

    else
    {
      v8 = &stru_283570B70;
    }

    if (v7 > 20)
    {
      v9 = 0;
    }

    else
    {
      if (v7 != -1)
      {
        v9 = 1;
        goto LABEL_14;
      }

      v9 = _LogCategory_Initialize() != 0;
      v7 = gLogCategory_APVirtualDisplaySink;
      if (gLogCategory_APVirtualDisplaySink <= 20)
      {
LABEL_14:
        v10 = v7 != -1 || _LogCategory_Initialize() != 0;
        goto LABEL_17;
      }
    }

    v10 = 0;
LABEL_17:
    LogPrintF(&gLogCategory_APVirtualDisplaySink, "OSStatus vdsink_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "%@ virtual display sink %{ptr} set property %@%?s%?@\n", v8, a1, a2, v9, " = ", v10, a3);
  }

LABEL_18:
  if (CFEqual(a2, *MEMORY[0x277CD6720]))
  {
    v11 = DerivedStorage[14];
    DerivedStorage[14] = a3;
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6748]))
  {
    v11 = DerivedStorage[12];
    DerivedStorage[12] = a3;
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6738]))
  {
    v11 = DerivedStorage[13];
    DerivedStorage[13] = a3;
    if (!a3)
    {
LABEL_21:
      if (v11)
      {
        CFRelease(v11);
      }

      return 0;
    }

LABEL_20:
    CFRetain(a3);
    goto LABEL_21;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6728]))
  {
    if (a3)
    {
      v13 = CFGetTypeID(a3);
      if (v13 == CFStringGetTypeID() && !DerivedStorage[1])
      {
        DerivedStorage[1] = CFStringCreateF(0, "%@ [%{ptr}]", a3, a1);
      }
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CD66F0]) || CFEqual(a2, *MEMORY[0x277CD6740]))
  {
    return 0;
  }

  v14 = *DerivedStorage;

  return FigEndpointStreamSetProperty(v14, a2, a3);
}

uint64_t FigEndpointStreamSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(CMBaseObject, a2, a3);
}

uint64_t screenstream_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "%@ set propertyKey: '%@'\n", DerivedStorage[5], a2);
  }

  if (CFEqual(a2, *MEMORY[0x277CD6718]))
  {
    if (a3)
    {
      v6 = CFGetTypeID(a3);
      if (v6 == CFArrayGetTypeID())
      {
        v7 = DerivedStorage[63];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __screenstream_SetProperty_block_invoke;
        block[3] = &__block_descriptor_tmp_97_0;
        block[4] = DerivedStorage;
        block[5] = a3;
        dispatch_sync(v7, block);
        return 0;
      }
    }

    screenstream_SetProperty_cold_1();
    return 4294950536;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6710]))
  {
    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1908]))
  {
    v8 = DerivedStorage[44];
    DerivedStorage[44] = a3;
    if (!a3)
    {
LABEL_18:
      if (v8)
      {
        CFRelease(v8);
      }

      return 0;
    }

LABEL_17:
    CFRetain(a3);
    goto LABEL_18;
  }

  if (CFEqual(a2, @"ExtraStreamOptions"))
  {
    if (!a3 || (v9 = CFGetTypeID(a3), v9 != CFDictionaryGetTypeID()))
    {
      screenstream_SetProperty_cold_2();
      return 4294950536;
    }

    v8 = DerivedStorage[15];
    DerivedStorage[15] = a3;
    goto LABEL_17;
  }

  if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "%@ unknown property %@\n", DerivedStorage[5], a2);
  }

  return 4294954512;
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554472, a4);
}

uint64_t OUTLINED_FUNCTION_20_6(const __CFAllocator *a1, void *a2, uint64_t a3, const __CFAllocator *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return CMBlockBufferCreateWithMemoryBlock(a1, a2, 0x80uLL, a4, 0, 0, 0x80uLL, 0, a9);
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigDispatchAsyncPostNotification();
}

uint64_t OUTLINED_FUNCTION_9_6()
{

  return apPlayback_sendPlistMessageCreatingReply(v0, 1886151033, v1, 0);
}

uint64_t OUTLINED_FUNCTION_9_8(uint64_t a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, __int16 a17, char a18)
{

  return FigCreateBlockBufferCopyingMemoryBlock();
}

uint64_t OUTLINED_FUNCTION_9_11(uint64_t a1)
{

  return APSWrapperCreate();
}

const __CFDictionary *sbpd_addHistogramValue(uint64_t a1, const void *a2, double a3)
{
  result = *(a1 + 600);
  if (result)
  {
    CFDictionaryGetValue(result, a2);

    return APSStatsHistogramAddValue();
  }

  return result;
}

uint64_t sbufGetAttachmentCGRect(const void *a1, const __CFString *a2, CGRect *a3)
{
  v4 = CMGetAttachment(a1, a2, 0);
  if (v4 && (v5 = v4, v6 = CFGetTypeID(v4), v6 == CFDictionaryGetTypeID()))
  {
    if (CGRectMakeWithDictionaryRepresentation(v5, a3))
    {
      return 0;
    }

    v8 = 461;
  }

  else
  {
    v8 = 459;
  }

  sbufGetAttachmentCGRect_cold_1(v8);
  return 4294950536;
}

void sbpd_encryptBBuf(uint64_t a1, CMBlockBufferRef theBuffer, OpaqueCMBlockBuffer *a3)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v20 = 0;
  v21 = 0;
  blockBufferOut = 0;
  totalLengthOut = 0;
  if (!*(a1 + 408))
  {
    goto LABEL_18;
  }

  if (CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut) || CMBlockBufferGetDataPointer(a3, 0, &v20, &totalLengthOut, &v21))
  {
LABEL_20:
    APSLogErrorAt();
    goto LABEL_16;
  }

  v5 = v20;
  if (v20 == totalLengthOut)
  {
    v6 = *(a1 + 416);
    if (v6)
    {
      v7 = malloc_type_calloc(1uLL, v6, 0x7B0DFF91uLL);
      v5 = v20;
      v8 = *(a1 + 416);
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v9 = *(a1 + 408);
    v11 = lengthAtOffsetOut;
    v10 = dataPointerOut;
    v12 = v21;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v13 || v13(v9, v10, v11, v12, v5, v12, v5, v7, v8))
    {
      APSLogErrorAt();
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_16;
      }

      if (!CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v7, *(a1 + 416), *MEMORY[0x277CBECF0], 0, 0, *(a1 + 416), 0, &blockBufferOut))
      {
        OUTLINED_FUNCTION_19_1();
        if (!CMBlockBufferAppendBufferReference(v14, v15, v16, v17, 0))
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }

      APSLogErrorAt();
    }

    free(v7);
    goto LABEL_16;
  }

  APSLogErrorAt();
LABEL_16:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

LABEL_18:
  OUTLINED_FUNCTION_30_3();
}

BOOL OUTLINED_FUNCTION_26(NSObject *a1)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_signpost_enabled(v3);
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t *a1)
{

  return APSAudioFormatDescriptionCopyDebugString();
}

void OUTLINED_FUNCTION_26_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  carEndpoint_sendCommandInfoAppend(v20, v21, va, a1, v19);
}

Float64 OUTLINED_FUNCTION_26_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 timea, uint64_t time_16)
{
  timea = *v14;
  time_16 = *(v14 + 16);

  return CMTimeGetSeconds(&timea);
}

void apsession_postFeedbackReceivedNotificationCallback(CFTypeRef *a1)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  CFRelease(*a1);
  v2 = a1[1];
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1, uint64_t a2, unsigned __int16 a3, const char *a4)
{
  v5 = a3 | 0x2000000u;

  return LogPrintF(a1, a2, v5, a4);
}

CFUUIDRef OUTLINED_FUNCTION_1_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, UInt8 byte7, int a10, __int16 byte15, char a12, UInt8 a13)
{

  return CFUUIDGetConstantUUIDWithBytes(0, 0x26u, 0x5Au, 0xC5u, 0x1Bu, 0x30u, 0xC0u, 0x40u, 0xADu, 0x90u, 0xC8u, 0xF6u, 0x9Cu, 0x26u, 0xD1u, 0x88u, 0x26u);
}

uint64_t OUTLINED_FUNCTION_1_22(uint64_t a1)
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_1_30(uint64_t a1, uint64_t a2, ...)
{

  return APSDispatchAsyncFHelper();
}

uint64_t OUTLINED_FUNCTION_1_42(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, v4, 33554462, a4);
}

void apsession_handleTransportSessionKeepAliveResponseReceived(int a1, const void *a2, int a3, int a4, CFTypeRef cf)
{
  v5 = cf;
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFDictionaryGetTypeID() && (CMBlockBufferGetTypeID(), CFDictionaryGetTypedValue()))
    {
      v8 = *MEMORY[0x277CBECE8];
      CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
      if (CFDataWithBlockBufferNoCopy)
      {
        apsession_handleTransportSessionKeepAliveResponseReceived_cold_1(CFDataWithBlockBufferNoCopy);
        v5 = 0;
        goto LABEL_15;
      }

      v5 = CFPropertyListCreateWithData(v8, 0, 0, 0, 0);
      if (!v5)
      {
        apsession_handleTransportSessionKeepAliveResponseReceived_cold_2();
        goto LABEL_15;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionAirPlay, "void apsession_handleTransportSessionKeepAliveResponseReceived(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554462, "[%{ptr}] Keep-alive response received with reply: %@\n", a2, v5);
  }

  CMBaseObjectGetDerivedStorage();
  CFRetain(a2);
  if (v5)
  {
    CFRetain(v5);
  }

  APSDispatchAsyncFHelper();
LABEL_15:
  if (v5)
  {
    CFRelease(v5);
  }
}

void carEndpoint_getMetrics(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (a5)
  {
    v8 = DerivedStorage;
    v9 = CFGetTypeID(a5);
    if (v9 == CFDictionaryGetTypeID())
    {
      CFArrayGetTypeID();
      v16[3] = CFDictionaryGetTypedValue();
      Value = CFDictionaryGetValue(a5, @"statsDictionary");
      v20[3] = Value;
      v11 = v16[3];
      if (v11 | Value)
      {
        if (a2)
        {
          CFRetain(a2);
          v11 = v16[3];
        }

        if (v11)
        {
          CFRetain(v11);
        }

        v12 = v20[3];
        if (v12)
        {
          CFRetain(v12);
        }

        OUTLINED_FUNCTION_4_7();
        v14[1] = 0x40000000;
        v14[2] = __carEndpoint_getMetrics_block_invoke;
        v14[3] = &unk_27849ED48;
        v14[4] = &v15;
        v14[5] = &v19;
        v14[6] = a2;
        v14[7] = v8;
        dispatch_async(v13, v14);
      }
    }
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

void __carEndpoint_getMetrics_block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2 && CFArrayGetCount(v2) >= 1 && gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCarPlay)))
  {
    OUTLINED_FUNCTION_2_16();
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointCarPlay, "void carEndpoint_getMetrics(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)_block_invoke", v3, "Feedback received, streams:\n %@");
  }

  OUTLINED_FUNCTION_23_4();
  if (*(v4 + 24))
  {
    v5 = *(a1 + 48);
    CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    v34 = 0;
    StreamInfoForSubtype = carEndpoint_getStreamInfoForSubtype(v5, *MEMORY[0x277CC1938]);
    if (StreamInfoForSubtype)
    {
      v7 = CFGetAllocator(v5);
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9 && !v9(CMBaseObject, @"AudioInputStatistics", v7, cf) && (v10 = CFGetAllocator(v5), v11 = FigEndpointStreamGetCMBaseObject(), (v12 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
      {
        v13 = v12(v11, @"ConnectionID", v10, &v34);
        StreamInfoForSubtype = 0;
        v14 = cf[0];
        MutableCopy = 0;
        if (v13 || !cf[0])
        {
LABEL_20:
          if (v14)
          {
            CFRelease(v14);
          }

          if (StreamInfoForSubtype)
          {
            CFRelease(StreamInfoForSubtype);
          }

          if (MutableCopy)
          {
            OUTLINED_FUNCTION_23_4();
            v18 = *(v17 + 24);
            *(v17 + 24) = MutableCopy;
            CFRetain(MutableCopy);
            if (v18)
            {
              CFRelease(v18);
            }
          }

          CFDictionaryApplyFunction(*(*(*(a1 + 40) + 8) + 24), carEndpoint_collectStreamAnalyticsFromStats, *(a1 + 48));
          v19 = *(a1 + 48);
          v20 = *(*(*(a1 + 40) + 8) + 24);
          CMBaseObjectGetDerivedStorage();
          v34 = 0;
          v35 = &v34;
          v36 = 0x2000000000;
          v37 = 0;
          if (!CFDictionaryGetValue(v20, @"showTime"))
          {
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_2_22();
          cf[1] = 0x40000000;
          cf[2] = __carEndpoint_logStats_block_invoke;
          cf[3] = &unk_27849ED98;
          cf[4] = &v34;
          cf[5] = v19;
          cf[6] = v21;
          FigCFDictionaryApplyBlock();
          v22 = *(v35 + 6);
          if (!v22 || gLogCategory_APEndpointCarPlay > 60)
          {
            goto LABEL_33;
          }

          if (gLogCategory_APEndpointCarPlay == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_33;
            }

            v22 = *(v35 + 6);
          }

          LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_logStats(FigEndpointRef, CFDictionaryRef)", 33554492, "[%{ptr}] Feedback received, statsDictionary: numStaleStreams: %u", v19, v22);
LABEL_33:
          _Block_object_dispose(&v34, 8);
          v23 = *(a1 + 56);
          v24 = v23[44];
          if (v24)
          {
            v25 = v23[45] % v23[46];
            v26 = *(v24 + 8 * v25);
            v27 = *(*(*(a1 + 40) + 8) + 24);
            *(v24 + 8 * v25) = v27;
            if (v27)
            {
              CFRetain(v27);
            }

            if (v26)
            {
              CFRelease(v26);
            }

            ++*(*(a1 + 56) + 360);
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          goto LABEL_41;
        }

        v16 = *MEMORY[0x277CBECE8];
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
          StreamInfoForSubtype = 0;
          goto LABEL_19;
        }

        StreamInfoForSubtype = CFStringCreateWithFormat(v16, 0, @"%llu-AudioInput", v34);
        if (StreamInfoForSubtype)
        {
          FigCFDictionarySetValue();
LABEL_19:
          v14 = cf[0];
          goto LABEL_20;
        }

        CFRelease(MutableCopy);
      }

      else
      {
        StreamInfoForSubtype = 0;
      }
    }

    MutableCopy = 0;
    goto LABEL_19;
  }

LABEL_41:
  OUTLINED_FUNCTION_23_4();
  v29 = *(v28 + 24);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    CFRelease(v30);
  }

  OUTLINED_FUNCTION_2_16();
  v32 = *(v31 + 24);
  if (v32)
  {
    CFRelease(v32);
  }
}

uint64_t carAudioStream_copyProperty(uint64_t a1, void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_copyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %@: Copy property for key: %'@\n", a1, *(DerivedStorage + 40), a2);
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  v9 = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"AudioInputStatistics"))
  {
    v10 = *(v9 + 168);
    block = MEMORY[0x277D85DD0];
    v27 = 0x40000000;
    v28 = __carAudioStream_copyNonStateProperty_block_invoke;
    v29 = &unk_27849B358;
    v30 = &v36;
    v31 = v9;
    v32 = a4;
    dispatch_sync(v10, &block);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"ConnectionID"))
  {
    v11 = *(v9 + 184);
LABEL_9:
    *a4 = v11;
    goto LABEL_16;
  }

  if (CFEqual(a2, @"AudioZeroTimeStampProvider"))
  {
    v12 = *(v9 + 56);
LABEL_12:
    *a4 = CFRetain(v12);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"CarPlayAudioFormats"))
  {
    APEndpointDescriptionGetCMBaseObject();
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v16 = v15(v14, @"CarPlayAudioFormats", a3, a4);
      *(v37 + 6) = v16;
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 4294954514;
      *(v37 + 6) = -12782;
    }

    carAudioStream_copyProperty_cold_1(v16);
    goto LABEL_16;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1878]))
  {
    v12 = *(v9 + 48);
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1880]))
  {
    v21 = MEMORY[0x277CBED28];
    if (!*(v9 + 176))
    {
      v21 = MEMORY[0x277CBED10];
    }

    goto LABEL_29;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18B0]))
  {
    v12 = *(v9 + 40);
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18D0]))
  {
    if (APSGetFBOPropertyInt64() || APSGetFBOPropertyInt64() <= 2803308)
    {
      v21 = MEMORY[0x277CBED10];
    }

    else
    {
      v21 = MEMORY[0x277CBED28];
    }

LABEL_29:
    v12 = *v21;
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18E8]))
  {
    if (!FigCFEqual())
    {
      v11 = *MEMORY[0x277CBED10];
      goto LABEL_9;
    }

    APEndpointDescriptionGetCMBaseObject();
    v23 = CMBaseObjectCopyProperty(v22, @"SupportsVocoderInfo", a3, a4);
    *(v37 + 6) = v23;
    if (v23)
    {
      carAudioStream_copyProperty_cold_2(v23);
    }
  }

  else
  {
    if (CFEqual(a2, *MEMORY[0x277CC1900]))
    {
      v12 = *(v9 + 32);
      goto LABEL_12;
    }

    if (CFEqual(a2, @"ReceiverModifiesMainHighLatency"))
    {
      APEndpointDescriptionGetCMBaseObject();
      v25 = CMBaseObjectCopyProperty(v24, @"ReceiverModifiesMainHighLatency", a3, a4);
      *(v37 + 6) = v25;
      if (v25)
      {
        carAudioStream_copyProperty_cold_3(v25);
      }
    }

    else
    {
      *(v37 + 6) = -12784;
    }
  }

LABEL_16:
  v17 = *(v37 + 6);
  _Block_object_dispose(&v36, 8);
  if (v17 == -12784)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2000000000;
    v39 = 0;
    v18 = CMBaseObjectGetDerivedStorage();
    v19 = *(v18 + 120);
    block = MEMORY[0x277D85DD0];
    v27 = 0x40000000;
    v28 = __carAudioStream_copyStateProperty_block_invoke;
    v29 = &unk_27849B380;
    v30 = &v36;
    v31 = v18;
    v32 = a2;
    v33 = a4;
    v34 = a1;
    v35 = a3;
    dispatch_sync(v19, &block);
    v17 = *(v37 + 6);
    _Block_object_dispose(&v36, 8);
    if (v17 == -12784)
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus carAudioStream_copyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %@: Copy property for unrecognized key: %'@\n", a1, *(DerivedStorage + 40), a2);
      }

      return 4294954512;
    }
  }

  return v17;
}

uint64_t __carAudioStream_copyStateProperty_block_invoke(uint64_t result)
{
  v1 = result;
  if (*(*(result + 40) + 128))
  {
    v2 = *(*(result + 32) + 8);
    v3 = -16762;
  }

  else
  {
    if (CFEqual(*(result + 48), @"AudioFormatInfo"))
    {
      result = *(*(v1 + 40) + 136);
      if (!result)
      {
LABEL_7:
        **(v1 + 56) = result;
        return result;
      }

LABEL_4:
      result = CFRetain(result);
      goto LABEL_7;
    }

    if (CFEqual(*(v1 + 48), @"EndpointStreamShowInfo"))
    {
      result = carAudioStream_copyShowInfo(*(v1 + 64), *(v1 + 72));
      goto LABEL_7;
    }

    result = CFEqual(*(v1 + 48), *MEMORY[0x277CC1910]);
    if (result)
    {
      result = *(*(v1 + 40) + 144);
      if (!result)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }

    v2 = *(*(v1 + 32) + 8);
    v3 = -12784;
  }

  *(v2 + 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2)
{

  return FigCFDictionarySetValueFromKeyInDict();
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1, void *a2)
{
  result = *(a1 + 8);
  *a2 = MEMORY[0x277D85DD0];
  return result;
}

__n128 OUTLINED_FUNCTION_7_6()
{
  result = *(v0 - 144);
  *(v0 - 112) = result;
  *(v0 - 96) = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_7(const __CFString *a1, char *a2)
{

  return CFStringGetCString(a1, a2, 128, 0x8000100u);
}

uint64_t OUTLINED_FUNCTION_7_9(uint64_t a1)
{

  return CMBaseObjectCopyProperty(a1, v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_7_10()
{
  v7 = *(v1 + 112);

  return MEMORY[0x28213CC28](v2, v4, v3, v0, v5, v7);
}

uint64_t carEndpoint_getStreamInfoForSubtype(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (*(DerivedStorage + 264))
  {
    CFArrayGetCount(*(DerivedStorage + 264));
    CFArrayApplyBlock();
    v3 = v6[3];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(v9, 8);
  return v3;
}

uint64_t __carEndpoint_getStreamInfoForSubtype_block_invoke(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v13[5] = v2;
    v13[6] = v3;
    v5 = result;
    v13[0] = 0;
    v6 = CFGetAllocator(*(result + 48));
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v9 = *(VTable + 8);
    result = VTable + 8;
    v10 = *(v9 + 48);
    if (v10)
    {
      result = v10(CMBaseObject, *MEMORY[0x277CC18B0], v6, v13);
      if (!result)
      {
        result = FigCFEqual();
        if (result)
        {
          v11 = *(v5[5] + 8);
          v12 = *(v11 + 24);
          *(v11 + 24) = v12 + 1;
          if (v12 == v5[8])
          {
            *(*(v5[4] + 8) + 24) = a2;
          }
        }
      }
    }
  }

  return result;
}

uint64_t __carAudioStream_copyNonStateProperty_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(v2 + 368);
  if (v3)
  {
    v4 = CFGetAllocator(*(v2 + 368));
    v5 = a1[6];
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      result = v6(v3, @"Statistics", v4, v5);
    }

    else
    {
      result = 4294954514;
    }
  }

  else
  {
    result = 4294954512;
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void carEndpoint_collectStreamAnalyticsFromStats(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    v6 = CFGetTypeID(a2);
    if (v6 == CFDictionaryGetTypeID())
    {
      if (FigCFDictionaryGetInt32IfPresent())
      {
        if (FigCFDictionaryGetInt32IfPresent())
        {
          *(v5 + 376) = 1;
          FigCFDictionaryGetInt32IfPresent();
        }
      }
    }
  }
}

void __carEndpoint_logStats_block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  v6 = OUTLINED_FUNCTION_8_4();
  if (CFStringCompare(v6, v7, v8))
  {
    CMBaseObjectGetDerivedStorage();
    __endptr = 0;
    v18 = 0;
    if (a3 && (v9 = CFGetTypeID(a3), v9 == CFDictionaryGetTypeID()) && CFDictionaryContainsKey(a3, @"stty") && (CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree()) != 0 && (v11 = CStringPtrAndBufferToFree, *__error() = 0, v12 = strtoull(v11, &__endptr, 0), !*__error()) && __endptr == &v11[strlen(v11)] && v12)
    {
      v13 = FigCFArrayContainsInt64();
      free(v18);
      if (!v13)
      {
        OUTLINED_FUNCTION_1_33();
        return;
      }
    }

    else
    {
      free(v18);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v15 = Mutable;
      CFDictionaryAddValue(Mutable, @"showTime", *(a1 + 48));
      CFDictionaryAddValue(v15, a2, a3);
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointCarPlay)))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointCarPlay, "void carEndpoint_logStats(FigEndpointRef, CFDictionaryRef)_block_invoke", v16, "[%{ptr}] Feedback received, statsDictionary:\n %@");
      }

      CFRelease(v15);
    }
  }
}

__n128 OUTLINED_FUNCTION_25_1()
{
  result = *(v0 - 192);
  *&STACK[0x310] = result;
  STACK[0x320] = *(v0 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_3(uint64_t a1)
{

  return APSGetFBOPropertyInt64();
}

Float64 OUTLINED_FUNCTION_25_4@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

uint64_t airPlayDescription_CopyProperty(const void *a1, const void *a2, const __CFAllocator *a3, CFStringRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointDescriptionAirPlay, "OSStatus airPlayDescription_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%p] %###s propertyKey: '%@'\n", a1, "OSStatus airPlayDescription_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (a2)
  {
    if (a4)
    {
      FigSimpleMutexLock();
      v8 = airPlayDescription_copyPropertyInternal(a1, a2, a3, a4);
      FigSimpleMutexUnlock();
    }

    else
    {
      v8 = 4294895545;
      airPlayDescription_CopyProperty_cold_1();
    }
  }

  else
  {
    v8 = 4294895545;
    airPlayDescription_CopyProperty_cold_2();
  }

  return v8;
}

uint64_t airPlayDescription_copyPropertyInternal(const void *a1, const void *a2, const __CFAllocator *a3, CFStringRef *a4)
{
  v77 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"DeviceID"))
  {
    return airPlayDescription_copyDeviceID(a1, a4);
  }

  if (CFEqual(a2, @"TransportDevice"))
  {
    v10 = *(DerivedStorage + 8);
    if (v10)
    {
LABEL_6:
      v10 = CFRetain(v10);
LABEL_13:
      *a4 = v10;
      return v77;
    }

    return -71754;
  }

  if (CFEqual(a2, @"Name"))
  {
    return airPlayDescription_copyName(a1, a4);
  }

  if (CFEqual(a2, @"NameIsFactoryDefault"))
  {
    goto LABEL_12;
  }

  if (CFEqual(a2, @"OSBuildVersion"))
  {
    return airPlayDescription_copyOSBuildVersion(a1);
  }

  if (CFEqual(a2, @"SourceVersion"))
  {
    return airPlayDescription_copySourceVersion(a1, a4);
  }

  if (CFEqual(a2, @"OSVersion"))
  {
    goto LABEL_12;
  }

  if (CFEqual(a2, @"Model"))
  {
    airPlayDescription_copyModel(a1, a4);
    return 0;
  }

  if (CFEqual(a2, @"Manufacturer"))
  {
    return airPlayDescription_copyManufacturer(a1);
  }

  if (CFEqual(a2, @"Company"))
  {
    return airPlayDescription_copyCompany(a1);
  }

  if (CFEqual(a2, @"VolumeControlType"))
  {
    v13 = @"volumeControlType";
LABEL_26:
    airPlayDescription_copyEndpointInfoValue(a1, v13, a4);
    return 0;
  }

  if (CFEqual(a2, @"VolumeControlTypeEx"))
  {
    return airPlayDescription_copyVolumeControlTypeEx(a1, a3, a4);
  }

  if (CFEqual(a2, @"MuteControlType"))
  {
    return airPlayDescription_copyMuteControlType(a1, a3, a4);
  }

  if (CFEqual(a2, @"FirmwareVersion") || CFEqual(a2, @"SerialNumber") || CFEqual(a2, @"BluetoothIdentifier"))
  {
    goto LABEL_12;
  }

  if (CFEqual(a2, @"MACAddress"))
  {
    return airPlayDescription_copyMACAddress(a1, a3, a4);
  }

  if (CFEqual(a2, @"AudioLatencyForAV"))
  {
    return airPlayDescription_copyAudioLatencyForAV(a3, a4);
  }

  if (CFEqual(a2, @"AudioLatencyOffsetForAV"))
  {
    return airPlayDescription_copyAudioLatencyOffsetForAV(a3, a4);
  }

  if (CFEqual(a2, @"AuthenticationType"))
  {
    return airPlayDescription_copyAuthenticationType(a1, a4);
  }

  if (CFEqual(a2, @"PasswordRequired"))
  {
    airPlayDescription_copyPasswordRequired(a1, a4);
    return 0;
  }

  if (CFEqual(a2, @"PINRequired"))
  {
    v14 = a1;
    v15 = 8;
LABEL_49:
    airplayDescription_copyStatusFlagsContainsFlag(v14, v15, a4);
    return 0;
  }

  if (CFEqual(a2, @"PairingPeerCUAirPlayIdentifier"))
  {
    airPlayDescription_copyPairingPeerCUAirPlayIdentifier(a1, a4);
    return 0;
  }

  if (CFEqual(a2, @"PairingPeerCUSystemIdentifier"))
  {
    airPlayDescription_copyPairingPeerCUSystemIdentifier(a1, a4);
    return 0;
  }

  if (CFEqual(a2, @"PairingPeerPublicKey"))
  {
    return airPlayDescription_copyPairingPeerPublicKey(a1, a3, a4);
  }

  if (CFEqual(a2, @"OneTimePairingRequired"))
  {
    airPlayDescription_copyOneTimePairingRequired(a1, a4);
    return 0;
  }

  if (CFEqual(a2, @"AirPlaySecurity"))
  {
    airPlayDescription_copyAirPlaySecurity(a1, a4);
    return 0;
  }

  if (!CFEqual(a2, @"StatusFlags"))
  {
    if (CFEqual(a2, @"SubType"))
    {
      airPlayDescription_copyDeviceSubType(a1, a4);
      return 0;
    }

    if (CFEqual(a2, @"HIDs"))
    {
      v17 = airPlayDescription_copyEndpointInfoValueCFArray(a1, @"hidDevices", a4);
      v77 = v17;
      if (v17)
      {
        airPlayDescription_copyPropertyInternal_cold_2(v17);
      }

      return v77;
    }

    if (CFEqual(a2, @"IgnoresVolumeChangesBeforeAudioSetup"))
    {
      isSourceVersionAtLeast = airPlayDescription_isSourceVersionAtLeast(a1, 0x24D2F4u);
      goto LABEL_71;
    }

    if (CFEqual(a2, @"IsAppleTV") || CFEqual(a2, @"IsAppleAudioAccessory"))
    {
      isDeviceOfSubType = airPlayDescription_isDeviceOfSubType(a1);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"IsAppleReceiver"))
    {
      isDeviceOfSubType = airPlayDescription_isAppleReceiver(a1);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"IsAirPortExpress"))
    {
      CMBaseObjectGetDerivedStorage();
      isDeviceOfSubType = airPlayDescription_modelHasPrefix(a1, @"AirPort");
LABEL_98:
      v19 = MEMORY[0x277CBED28];
      v24 = MEMORY[0x277CBED10];
LABEL_99:
      v25 = isDeviceOfSubType == 0;
      goto LABEL_100;
    }

    if (CFEqual(a2, @"IsLegacyAirPlaySpeaker"))
    {
      isDeviceOfSubType = airPlayDescription_isLegacyAirPlaySpeaker(a1);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"IsThirdPartyReceiver"))
    {
      isSourceVersionAtLeast = airPlayDescription_isAppleReceiver(a1);
LABEL_71:
      v19 = MEMORY[0x277CBED28];
      if (isSourceVersionAtLeast)
      {
        v19 = MEMORY[0x277CBED10];
      }

      goto LABEL_102;
    }

    if (CFEqual(a2, @"IsThirdPartyTVFamily"))
    {
      isDeviceOfSubType = airPlayDescription_isThirdPartyTVFamily(a1);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"HasUnifiedAdvertiserInfo"))
    {
      v21 = a1;
      v22 = 30;
LABEL_85:
      isDeviceOfSubType = airPlayDescription_hasFeatureInternal(v21, v22);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"RequiredSenderFeatures"))
    {
      v10 = APAdvertiserInfoCopyProperty();
      if (v10)
      {
        goto LABEL_13;
      }

      Int64 = CFNumberCreateInt64();
      *a4 = Int64;
      if (Int64)
      {
        return v77;
      }

      goto LABEL_91;
    }

    if (CFEqual(a2, @"CanBeRemoteControlled"))
    {
      isDeviceOfSubType = airplayDescription_canBeRemoteControlled(a1);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"SupportsAnyMedia"))
    {
      isDeviceOfSubType = airplayDescription_supportsAnyMedia(a1);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"SupportsSharePlayHandoff"))
    {
      if (!airPlayDescription_hasFeatureInternal(a1, 67))
      {
        goto LABEL_500;
      }

      v26 = a1;
      v27 = 5950101;
      goto LABEL_106;
    }

    if (CFEqual(a2, @"SupportsOverlayUI"))
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1, 32))
      {
        isDeviceOfSubType = airPlayDescription_hasCarPlayVideoFeatureInternal(a1);
        goto LABEL_98;
      }

      v21 = a1;
      v22 = 70;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SilentPrimary"))
    {
      v14 = a1;
      v15 = 4096;
      goto LABEL_49;
    }

    if (CFEqual(a2, @"SupportsBufferedAudio"))
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1, 32))
      {
        v28 = *(CMBaseObjectGetDerivedStorage() + 65);
      }

      else
      {
        v28 = airPlayDescription_isSourceVersionAtLeast(a1, 0x36193Eu) && airPlayDescription_hasFeatureInternal(a1, 40) != 0;
      }

      if (v28)
      {
        v19 = MEMORY[0x277CBED28];
      }

      else
      {
        v19 = MEMORY[0x277CBED10];
      }

      goto LABEL_102;
    }

    if (CFEqual(a2, @"SupportsReceiverChoosesAnchor"))
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1, 32))
      {
        if (!*(CMBaseObjectGetDerivedStorage() + 65))
        {
          goto LABEL_500;
        }
      }

      else if (!airPlayDescription_hasFeatureInternal(a1, 68))
      {
        goto LABEL_500;
      }

      if (APSSettingsGetIntWithDefault())
      {
        goto LABEL_107;
      }

LABEL_500:
      v19 = MEMORY[0x277CBED10];
      goto LABEL_102;
    }

    if (CFEqual(a2, @"SupportsReceiverSideSoundCheck"))
    {
      hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1, 77);
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1, 32))
      {
        hasFeatureInternal = airPlayDescription_isCarPlaySpatialAudioSupported(a1);
      }

      v19 = MEMORY[0x277CBED28];
      v24 = MEMORY[0x277CBED10];
      v25 = hasFeatureInternal == 0;
      goto LABEL_100;
    }

    if (CFEqual(a2, @"SupportsSetMRInfoCommand"))
    {
      v21 = a1;
      v22 = 83;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"ReceiverSupportsSeekToTimeAsyncResponse"))
    {
      v30 = a1;
      v31 = 6354200;
LABEL_432:
      isDeviceOfSubType = airPlayDescription_isSourceVersionAtLeast(v30, v31);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"SupportsLowLatencyAudio"))
    {
      Mutable = APSFeaturesCreateMutable();
      if (!Mutable)
      {
        airPlayDescription_copyPropertyInternal_cold_3();
        return v77;
      }

      v33 = Mutable;
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      if (!airPlayDescription_hasFeaturesInternal(a1, v33) || APSSettingsGetIntWithDefault())
      {
        goto LABEL_149;
      }

LABEL_147:
      if (!APSSettingsGetIntWithDefault() && !APSSettingsGetIntWithDefault())
      {
        v35 = MEMORY[0x277CBED28];
        goto LABEL_155;
      }

LABEL_149:
      v35 = MEMORY[0x277CBED10];
LABEL_155:
      *a4 = CFRetain(*v35);
      v36 = v33;
      goto LABEL_472;
    }

    if (CFEqual(a2, @"SupportsAudioMediaDataControl"))
    {
      v34 = APSFeaturesCreateMutable();
      if (!v34)
      {
        airPlayDescription_copyPropertyInternal_cold_4();
        return v77;
      }

      v33 = v34;
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      if (!airPlayDescription_hasFeaturesInternal(a1, v33) || !airPlayDescription_isSourceVersionAtLeast(a1, 0x44AA84u))
      {
        goto LABEL_149;
      }

      goto LABEL_147;
    }

    if (CFEqual(a2, @"IsLowFidelitySpeaker"))
    {
      v21 = a1;
      v22 = 64;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsAudioStreamConnectionSetup"))
    {
      if (airPlayDescription_hasFeatureInternal(a1, 59) && !APSSettingsGetIntWithDefault())
      {
        goto LABEL_107;
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"SupportsExtendedWHA"))
    {
      if (airPlayDescription_hasFeatureInternal(a1, 41))
      {
        v37 = 0;
      }

      else
      {
        v37 = CFPreferencesGetAppBooleanValue(@"forceAirPlay2NTP", @"com.apple.airplay", 0) == 0;
      }

      if (airPlayDescription_isSourceVersionAtLeast(a1, 0x37D8E0u) && airPlayDescription_hasFeatureInternal(a1, 40) != 0 && !v37)
      {
        goto LABEL_107;
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"PostsAdvertiserUpdatesOverEventChannel"))
    {
      if (!airPlayDescription_isAppleReceiver(a1))
      {
        goto LABEL_500;
      }

      v26 = a1;
      v27 = 3660000;
      goto LABEL_106;
    }

    if (CFEqual(a2, @"SupportsHangdogRemoteControl"))
    {
      if (airPlayDescription_isAppleReceiver(a1))
      {
        Value = airPlayDescription_hasFeatureInternal(a1, 58);
      }

      else
      {
        if (!airPlayDescription_isThirdPartyTVFamily(a1))
        {
          goto LABEL_500;
        }

        BOOLean = 0;
        airplayDescription_copyStatusFlagsContainsFlag(a1, 1024, &BOOLean);
        v39 = BOOLean;
        if (BOOLean)
        {
          Value = CFBooleanGetValue(BOOLean);
          CFRelease(v39);
        }

        else
        {
          Value = 0;
        }
      }

      if (Value)
      {
        goto LABEL_107;
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"SupportsDedicatedRemoteControlSocket"))
    {
      if (airPlayDescription_isSourceVersionAtLeast(a1, 0x44B63Eu) && airPlayDescription_isAppleReceiver(a1))
      {
        goto LABEL_107;
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"SupportsRapportRemoteControlTransport"))
    {
      v21 = a1;
      v22 = 63;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsRFC2198Redundancy"))
    {
      v21 = a1;
      v22 = 61;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsBufferedAPAP"))
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1, 32))
      {
        isDeviceOfSubType = airPlayDescription_isCarPlaySpatialAudioSupported(a1);
        goto LABEL_98;
      }

      v21 = a1;
      v22 = 72;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsBufferedAPAT"))
    {
      v21 = a1;
      v22 = 92;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"IsMediaRemoteControllable"))
    {
      if (!airPlayDescription_isDeviceOfSubType(a1) && !airPlayDescription_isDeviceOfSubType(a1) && (!*(DerivedStorage + 121) || !airPlayDescription_isDeviceOfSubType(a1)))
      {
        goto LABEL_500;
      }

      v26 = a1;
      v27 = 3561800;
LABEL_106:
      if (airPlayDescription_isSourceVersionAtLeast(v26, v27))
      {
LABEL_107:
        v19 = MEMORY[0x277CBED28];
LABEL_102:
        v10 = *v19;
        goto LABEL_6;
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"SupportedAudioFormats"))
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1, 32))
      {
        airPlayDescription_copyCarPlayAudioFormats(a1, a3, a4);
        return v77;
      }

      return airPlayDescription_copyAirPlayAudioFormats(a1, a3, a4);
    }

    if (CFEqual(a2, @"SupportedAudioFormatsExtended"))
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1, 32))
      {
        return airPlayDescription_copyCarPlayAudioFormatsExtended(a1);
      }

      else
      {
        return airPlayDescription_copyAirPlayAudioFormatsExtended(a1, a4);
      }
    }

    if (CFEqual(a2, @"SupportsMuteCommand"))
    {
      v30 = a1;
      v31 = 3703500;
      goto LABEL_432;
    }

    if (CFEqual(a2, @"SupoortsRFC2617DigestAuth"))
    {
      airPlayDescription_copySupportsRFC2617DigestAuth(a1, a4);
      return 0;
    }

    if (CFEqual(a2, @"SupportsCoreUtilsPairingAndEncryption"))
    {
      isDeviceOfSubType = airPlayDescription_supportsCUPairingAndEncryption(a1);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"SupportsAccountOwnerPairVerification"))
    {
      v21 = a1;
      v22 = 65;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsHKPairingAndAccessControl"))
    {
      v21 = a1;
      v22 = 46;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsLegacyPairing"))
    {
      v21 = a1;
      v22 = 27;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsSystemPairing"))
    {
      v21 = a1;
      v22 = 43;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsTransientPairing"))
    {
      if (airPlayDescription_hasFeatureInternal(a1, 48))
      {
        goto LABEL_107;
      }

      v40 = a1;
      v41 = 43;
LABEL_374:
      v57 = airPlayDescription_hasFeatureInternal(v40, v41);
      v19 = MEMORY[0x277CBED28];
      v24 = MEMORY[0x277CBED10];
      v25 = v57 == 0;
LABEL_100:
      if (v25)
      {
        v19 = v24;
      }

      goto LABEL_102;
    }

    if (CFEqual(a2, @"SupportsKeepAlive"))
    {
      v30 = a1;
      v31 = 1900900;
      goto LABEL_432;
    }

    if (CFEqual(a2, @"SupportsCBCSEncryption"))
    {
      if (airPlayDescription_isSourceVersionAtLeast(a1, 0x2DFF1Eu))
      {
        goto LABEL_107;
      }

      v42 = APAdvertiserInfoCopyProperty();
      v43 = v42;
      if (v42)
      {
        Length = CFStringGetLength(v42);
        CFRelease(v43);
        if (Length > 0)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"SupportsScreenIdle"))
    {
      v30 = a1;
      v31 = 1503500;
      goto LABEL_432;
    }

    if (CFEqual(a2, @"SupportsScreenMultiCodec"))
    {
      v21 = a1;
      v22 = 42;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsUnifiedPairingAndMFi"))
    {
      v21 = a1;
      v22 = 51;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsWoL"))
    {
      if (airPlayDescription_hasFeatureInternal(a1, 55))
      {
        goto LABEL_107;
      }

      v40 = a1;
      v41 = 56;
      goto LABEL_374;
    }

    if (CFEqual(a2, @"AdvertisesHAPSupport"))
    {
      v21 = a1;
      v22 = 62;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"DisplayDescriptionArray"))
    {
      return airPlayDescription_copyDisplayDescriptionArray(a1, a3, a4);
    }

    if (CFEqual(a2, @"CanRecordScreenStream"))
    {
      v13 = @"canRecordScreenStream";
      goto LABEL_26;
    }

    if (CFEqual(a2, @"IsScreenDemoMode"))
    {
      v14 = a1;
      v15 = 0x40000;
      goto LABEL_49;
    }

    if (CFEqual(a2, @"ForwardFrameUserData"))
    {
      v13 = @"forwardFrameUserData";
      goto LABEL_26;
    }

    if (CFEqual(a2, @"ForwardCryptorSubsampleAuxData"))
    {
      v13 = @"forwardCryptorSubsampleAuxData";
      goto LABEL_26;
    }

    if (CFEqual(a2, @"HasUDPMirroringSupport"))
    {
      v13 = @"hasUDPMirroringSupport";
      goto LABEL_26;
    }

    if (CFEqual(a2, @"receiverHDRCapability"))
    {
      v13 = @"receiverHDRCapability";
      goto LABEL_26;
    }

    if (CFEqual(a2, @"SupportHDRSubframe"))
    {
      BOOLean = 0;
      airPlayDescription_copyEndpointInfoValue(a1, @"hasUDPMirroringSupport", &BOOLean);
      v77 = 0;
      v45 = airPlayDescription_isSourceVersionAtLeast(a1, 0x7A1264u);
      v46 = BOOLean;
      if (BOOLean != *MEMORY[0x277CBED28] || !v45)
      {
        v48 = *MEMORY[0x277CBED10];
      }

      else
      {
        v48 = *MEMORY[0x277CBED28];
      }

LABEL_412:
      *a4 = CFRetain(v48);
      if (!v46)
      {
        return v77;
      }

      v36 = v46;
LABEL_472:
      CFRelease(v36);
      return v77;
    }

    if (CFEqual(a2, @"VodkaVersion"))
    {
      v10 = APAdvertiserInfoCopyProperty();
      if (v10)
      {
        goto LABEL_13;
      }

      v49 = CFNumberCreateInt64();
      *a4 = v49;
      if (v49)
      {
        return v77;
      }

LABEL_91:
      APSLogErrorAt();
      return -71750;
    }

    if (CFEqual(a2, @"SupportsAirPlayFromCloud"))
    {
      airplayDescription_copySupportsAirPlayFromCloud(a1, a4);
      return 0;
    }

    if (CFEqual(a2, @"DoesNotRequireVodkaForHLS"))
    {
      v30 = a1;
      v31 = 4500100;
      goto LABEL_432;
    }

    if (CFEqual(a2, @"SupportsAirPlayVideoPlayQueue"))
    {
      v21 = a1;
      v22 = 33;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsAirPlayVideoV2"))
    {
      v21 = a1;
      v22 = 49;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsAirPlayVideoPausedStart"))
    {
      v30 = a1;
      v31 = 2206800;
      goto LABEL_432;
    }

    if (CFEqual(a2, @"AccessControlType"))
    {
      airPlayDescription_getAccessControlType(a1);
      v50 = CFNumberCreateInt64();
      *a4 = v50;
      if (!v50)
      {
        airPlayDescription_copyPropertyInternal_cold_5();
      }

      return v77;
    }

    if (CFEqual(a2, @"GroupPublicName"))
    {
      BOOLean = 0;
      airPlayDescription_copyClusterInfoInternal(a1, 0, 0, 0, 0, 0, 0, &BOOLean, 0, 0);
      v10 = BOOLean;
      if (BOOLean)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (CFEqual(a2, @"GroupID"))
    {
LABEL_12:
      v10 = APAdvertiserInfoCopyProperty();
      goto LABEL_13;
    }

    if (CFEqual(a2, @"GroupContainsDiscoverableLeader"))
    {
LABEL_312:
      PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
      v56 = PropertyInt64Sync != 0;
      if (*(DerivedStorage + 121))
      {
        v56 = (PropertyInt64Sync | *(DerivedStorage + 88)) != 0;
      }

      if (v56)
      {
        v19 = MEMORY[0x277CBED28];
      }

      else
      {
        v19 = MEMORY[0x277CBED10];
      }

      goto LABEL_102;
    }

    if (CFEqual(a2, @"IsGroupLeader"))
    {
      v10 = APAdvertiserInfoCopyProperty();
      if (v10)
      {
        goto LABEL_13;
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"ClusterSize"))
    {
      v74 = 0;
      v75 = 0;
      v51 = a1;
      v52 = 0;
      v53 = a4;
    }

    else
    {
      if (CFEqual(a2, @"ClusterType"))
      {
        v74 = 0;
        v75 = 0;
        v51 = a1;
        v52 = 0;
        v53 = 0;
        v54 = a4;
LABEL_310:
        airPlayDescription_copyClusterInfoInternal(v51, v52, v53, v54, 0, 0, 0, 0, v74, v75);
        return v77;
      }

      if (CFEqual(a2, @"ClusterUUID"))
      {
        v74 = 0;
        v75 = 0;
        v51 = a1;
        v52 = a4;
      }

      else
      {
        if (CFEqual(a2, @"IsClusterLeader"))
        {
          BOOLean = 0;
          airPlayDescription_copyClusterInfoInternal(a1, 0, 0, 0, 0, &BOOLean, 0, 0, 0, 0);
          v10 = BOOLean;
          if (BOOLean)
          {
            goto LABEL_13;
          }

          goto LABEL_500;
        }

        if (CFEqual(a2, @"ClusterModel"))
        {
          airPlayDescription_copyClusterInfoInternal(a1, 0, 0, 0, 0, 0, a4, 0, 0, 0);
          return v77;
        }

        if (CFEqual(a2, @"RoomUUID"))
        {
          v74 = a4;
          v75 = 0;
        }

        else
        {
          if (!CFEqual(a2, @"RoomName"))
          {
            if (CFEqual(a2, @"ParentGroupID"))
            {
              goto LABEL_12;
            }

            if (CFEqual(a2, @"ParentGroupContainsDiscoverableLeader"))
            {
              goto LABEL_312;
            }

            if (CFEqual(a2, @"ReceiverSessionIsActive"))
            {
              v14 = a1;
              v15 = 0x20000;
              goto LABEL_49;
            }

            if (CFEqual(a2, @"TightSyncUUID"))
            {
              if (*(DerivedStorage + 8) && !APTransportDeviceIsModernPresentOnInfra())
              {
                v10 = 0;
                goto LABEL_13;
              }

              goto LABEL_12;
            }

            if (CFEqual(a2, @"TightSyncIsGroupLeader"))
            {
              v14 = a1;
              v15 = 0x2000;
              goto LABEL_49;
            }

            if (CFEqual(a2, @"TightSyncClusterInfo"))
            {
              return airPlayDescription_copyTightSyncClusterInfo(a1, a4);
            }

            if (CFEqual(a2, @"IsAppleMusicSubscriber"))
            {
              v14 = a1;
              v15 = 0x8000;
              goto LABEL_49;
            }

            if (CFEqual(a2, @"CloudLibraryIsOn"))
            {
              v14 = a1;
              v15 = 0x10000;
              goto LABEL_49;
            }

            if (CFEqual(a2, @"HKAccessControlLevel"))
            {
              return airPlayDescription_copyHKAccessControlLevel(a1, a4);
            }

            if (CFEqual(a2, @"DeviceWasSetupForHKAccessControl"))
            {
              v14 = a1;
              v15 = 1024;
              goto LABEL_49;
            }

            if (CFEqual(a2, @"IsHKAccessControlEnabled"))
            {
              airPlayDescription_copyIsHKAccessControlEnabled(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"DeviceSupportsRelay"))
            {
              airPlayDescription_copyDeviceSupportsRelay(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsAWDL"))
            {
              airplayDescription_copySupportsAWDL(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsNAN"))
            {
              airplayDescription_copySupportsNAN(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsSetPeersExtendedMessage"))
            {
              v21 = a1;
              v22 = 52;
              goto LABEL_85;
            }

            if (CFEqual(a2, @"SupportsPTP"))
            {
              airplayDescription_copySupportsPTP(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsSharedReceiverClock"))
            {
              airplayDescription_copySupportsSharedReceiverClock(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsUnifiedMediaControl"))
            {
              airPlayDescription_copySupportsUnifiedMediaControl(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsStatsAsBody"))
            {
              BOOLean = 0;
              if (airPlayDescription_hasFeatureInternal(a1, 32))
              {
                airPlayDescription_copyEndpointInfoValue(a1, @"keepAliveSendStatsAsBody", &BOOLean);
                v10 = BOOLean;
                if (BOOLean)
                {
                  goto LABEL_13;
                }
              }

              v30 = a1;
              v31 = 2109800;
              goto LABEL_432;
            }

            if (CFEqual(a2, @"IsCarPlay"))
            {
              v21 = a1;
              v22 = 32;
              goto LABEL_85;
            }

            if (CFEqual(a2, @"AssistedModeType"))
            {
              airplayDescription_getAssistedModeType(a1);
              v10 = CFNumberCreateInt64();
              if (!v10)
              {
                airPlayDescription_copyPropertyInternal_cold_6();
                return v77;
              }

              goto LABEL_13;
            }

            if (CFEqual(a2, @"IsConnectedOverUSB"))
            {
              airPlayDescription_copyIsConnectedOverUSB(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"MetadataFeatures"))
            {
              airPlayDescription_copyMetadataFeatures(a1, a3, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsAirPlaySlideshow"))
            {
              v21 = a1;
              v22 = 5;
              goto LABEL_85;
            }

            if (CFEqual(a2, @"SupportsAirPlayScreen"))
            {
              v21 = a1;
              v22 = 7;
              goto LABEL_85;
            }

            if (CFEqual(a2, @"SupportsAirPlayPhoto"))
            {
              v21 = a1;
              v22 = 1;
              goto LABEL_85;
            }

            if (CFEqual(a2, @"SupportsAirPlayVideo"))
            {
              if (airPlayDescription_hasFeatureInternal(a1, 0))
              {
                goto LABEL_107;
              }

              v40 = a1;
              v41 = 49;
              goto LABEL_374;
            }

            if (CFEqual(a2, @"SupportsInitialVolume"))
            {
              if (airPlayDescription_hasFeatureInternal(a1, 32))
              {
                goto LABEL_500;
              }

              v26 = a1;
              v27 = 1200200;
              goto LABEL_106;
            }

            if (CFEqual(a2, @"SupportsVolume"))
            {
              isDeviceOfSubType = airPlayDescription_hasFeatureInternal(a1, 32);
LABEL_425:
              v19 = MEMORY[0x277CBED10];
              v24 = MEMORY[0x277CBED28];
              goto LABEL_99;
            }

            if (CFEqual(a2, @"SupportsMultiplayer"))
            {
              v14 = a1;
              v15 = 0x80000;
              goto LABEL_49;
            }

            if (CFEqual(a2, @"BluetoothDeviceIDs"))
            {
              v58 = airPlayDescription_copyEndpointInfoValueCFArray(a1, @"bluetoothIDs", a4);
              v77 = v58;
              if (v58)
              {
                airPlayDescription_copyPropertyInternal_cold_7(v58);
              }

              else if (!*a4)
              {
                airPlayDescription_copyPropertyInternal_cold_8(&v77);
              }

              return v77;
            }

            if (CFEqual(a2, @"CarPlayAudioFormats"))
            {
              v10 = *(DerivedStorage + 56);
              if (!v10)
              {
                airPlayDescription_copyPropertyInternal_cold_9(&v77);
                return v77;
              }

              goto LABEL_6;
            }

            if (CFEqual(a2, @"HasCarPlayAudioFormats"))
            {
              v19 = MEMORY[0x277CBED28];
              v59 = MEMORY[0x277CBED10];
              v60 = *(DerivedStorage + 56) == 0;
              goto LABEL_449;
            }

            if (CFEqual(a2, @"InitialMode"))
            {
              v61 = @"modes";
              return airPlayDescription_copyEndpointInfoValueCFDictionary(a1, v61, a4);
            }

            if (CFEqual(a2, @"VehicleInformation"))
            {
              BOOLean = 0;
              v62 = airPlayDescription_copyEndpointInfoValueCFDictionary(a1, @"vehicleInformation", &BOOLean);
              v77 = v62;
              if (v62)
              {
                airPlayDescription_copyPropertyInternal_cold_10(v62);
                return v77;
              }

              if (BOOLean)
              {
                *a4 = BOOLean;
                return v77;
              }

              return -12784;
            }

            if (CFEqual(a2, @"IsLimitedUI"))
            {
              v63 = @"limitedUI";
            }

            else
            {
              if (CFEqual(a2, @"LimitedUIElements"))
              {
                BOOLean = 0;
                airPlayDescription_copyEndpointInfoValueCFArray(a1, @"limitedUIElements", &BOOLean);
                v10 = BOOLean;
                if (!BOOLean)
                {
                  v10 = CFArrayCreate(a3, 0, 0, MEMORY[0x277CBF128]);
                  if (!v10)
                  {
                    airPlayDescription_copyPropertyInternal_cold_11(&v77);
                    return v77;
                  }
                }

                goto LABEL_13;
              }

              if (!CFEqual(a2, @"IsNightMode"))
              {
                if (CFEqual(a2, @"IsNightModeSupported"))
                {
                  BOOLean = 0;
                  airPlayDescription_copyEndpointInfoValueCFBoolean(a1, @"nightMode", &BOOLean);
                  v64 = MEMORY[0x277CBED28];
                  v46 = BOOLean;
                  if (!BOOLean)
                  {
                    v64 = MEMORY[0x277CBED10];
                  }

                  v48 = *v64;
                  goto LABEL_412;
                }

                if (CFEqual(a2, @"IsOEMIconVisible"))
                {
                  BOOLean = 0;
                  airPlayDescription_copyEndpointInfoValueCFBoolean(a1, @"oemIconVisible", &BOOLean);
                  v10 = BOOLean;
                  if (BOOLean)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_107;
                }

                if (CFEqual(a2, @"IsRightHandDrive"))
                {
                  v13 = @"rightHandDrive";
                  goto LABEL_26;
                }

                if (CFEqual(a2, @"OEMIconLabel"))
                {
                  return airPlayDescription_copyEndpointInfoValueCFString(a1, @"oemIconLabel", a4);
                }

                if (CFEqual(a2, @"OEMIcons"))
                {
                  return airPlayDescription_copyOEMIcons(a1, a3, a4);
                }

                if (CFEqual(a2, @"UseLegacyStarkModeActions"))
                {
                  isDeviceOfSubType = airPlayDescription_isSourceVersionAtLeast(a1, 0x24D2F4u);
                  goto LABEL_425;
                }

                if (CFEqual(a2, @"UseIndirectStarkSpeechModeTransitions"))
                {
                  if (!APSSettingsGetInt64())
                  {
                    BOOLean = 0;
                    v66 = *MEMORY[0x277CBED10];
                    v77 = airPlayDescription_copyManufacturer(a1);
                    v67 = 0;
                    if (!v77)
                    {
                      if (FigCFEqual())
                      {
                        airPlayDescription_copyModel(a1, &BOOLean);
                        v77 = 0;
                        v67 = BOOLean;
                        if (FigCFEqual())
                        {
                          v66 = *MEMORY[0x277CBED28];
                        }
                      }
                    }

                    if (v67)
                    {
                      CFRelease(v67);
                    }

                    v10 = v66;
                    goto LABEL_6;
                  }

                  v65 = *(DerivedStorage + 72);
                  if (!v65)
                  {
                    airPlayDescription_copyPropertyInternal_cold_12(a4);
                    return v77;
                  }

                  isDeviceOfSubType = CFDictionaryContainsKey(v65, @"kAPCarPlay_UseIndirectStarkSpeechModeTransitions");
                  goto LABEL_98;
                }

                if (CFEqual(a2, @"AllowCarPlaySpeechStateForMediaAudioType"))
                {
                  v30 = a1;
                  v31 = 3500000;
                  goto LABEL_432;
                }

                if (CFEqual(a2, @"ExtendedFeatures"))
                {
                  BOOLean = 0;
                  airPlayDescription_copyEndpointInfoValueCFArray(a1, @"extendedFeatures", &BOOLean);
                  v10 = BOOLean;
                  if (!BOOLean)
                  {
                    v10 = CFArrayCreate(a3, 0, 0, MEMORY[0x277CBF128]);
                    if (!v10)
                    {
                      airPlayDescription_copyPropertyInternal_cold_13(&v77);
                      return v77;
                    }
                  }

                  goto LABEL_13;
                }

                if (CFEqual(a2, @"SupportsVocoderInfo"))
                {
                  isDeviceOfSubType = airPlayDescription_extendedFeaturesHasKey(a1, @"vocoderInfo");
                  goto LABEL_98;
                }

                if (CFEqual(a2, @"SupportsJarvis"))
                {
                  v68 = CMBaseObjectGetDerivedStorage();
                  v19 = MEMORY[0x277CBED28];
                  v59 = MEMORY[0x277CBED10];
                  v60 = *(v68 + 64) == 0;
LABEL_449:
                  if (v60)
                  {
                    v19 = v59;
                  }

                  goto LABEL_102;
                }

                if (CFEqual(a2, @"SupportsJarvisVoice"))
                {
                  isDeviceOfSubType = airPlayDescription_isJarvisFeatureSupported(a1);
                  goto LABEL_98;
                }

                if (CFEqual(a2, @"SupportsMixableSiriAudio"))
                {
                  if (*(CMBaseObjectGetDerivedStorage() + 64) && !airPlayDescription_isJarvisFeatureSupported(a1))
                  {
                    goto LABEL_107;
                  }

                  goto LABEL_500;
                }

                if (CFEqual(a2, @"ExternalPlaybackCapabilities"))
                {
                  v61 = @"playbackCapabilities";
                  return airPlayDescription_copyEndpointInfoValueCFDictionary(a1, v61, a4);
                }

                if (CFEqual(a2, @"HeadUnitRestrictions"))
                {
                  v10 = *(DerivedStorage + 72);
                  if (!v10)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_6;
                }

                if (CFEqual(a2, @"TXTRecordAirPlay"))
                {
                  return APAdvertiserInfoCopyAirPlayData();
                }

                if (CFEqual(a2, @"TXTRecordAirPlayClusterCompatible"))
                {
                  BOOLean = 0;
                  airPlayDescription_copyClusterInfoInternal(a1, 0, 0, &BOOLean, 0, 0, 0, 0, 0, 0);
                  if (!BOOLean)
                  {
                    return v77;
                  }

                  CFGetInt64();
                  v77 = APAdvertiserInfoCopyClusterCompatibleAirPlayData();
                  v36 = BOOLean;
                  goto LABEL_472;
                }

                if (CFEqual(a2, @"EndpointInfo"))
                {
                  v10 = *(DerivedStorage + 24);
                  if (!v10)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_6;
                }

                if (CFEqual(a2, @"VoiceModelLanguages"))
                {
                  v69 = @"voiceModelSupportedLanguages";
                }

                else
                {
                  if (!CFEqual(a2, @"CurrentVoiceModelLanguage"))
                  {
                    if (CFEqual(a2, @"AltScreenSuggestUIURLs"))
                    {
                      BOOLean = 0;
                      airPlayDescription_copyEndpointInfoValueCFArray(a1, @"altScreenSuggestUIURLs", &BOOLean);
                      v10 = BOOLean;
                      if (!BOOLean)
                      {
                        v10 = CFArrayCreate(a3, 0, 0, MEMORY[0x277CBF128]);
                        if (!v10)
                        {
                          airPlayDescription_copyPropertyInternal_cold_14(&v77);
                          return v77;
                        }
                      }

                      goto LABEL_13;
                    }

                    if (CFEqual(a2, @"AirPlayEndpointProperties"))
                    {
                      v70 = a1;
                      v71 = 0;
                    }

                    else
                    {
                      if (!CFEqual(a2, @"AirPlayClusterCompatibleEndpointProperties"))
                      {
                        if (CFEqual(a2, @"SupportsBufferedPKDDecryption"))
                        {
                          v21 = a1;
                          v22 = 79;
                          goto LABEL_85;
                        }

                        if (CFEqual(a2, @"Descriptor"))
                        {
                          return airPlayDescription_copyMXDescriptor(a1, a4);
                        }

                        if (CFEqual(a2, @"SupportsMixedSampleRates"))
                        {
                          v21 = a1;
                          v22 = 81;
                          goto LABEL_85;
                        }

                        if (CFEqual(a2, @"WASCalibrationSupportsMATAtmos"))
                        {
                          v21 = a1;
                          v22 = 90;
                          goto LABEL_85;
                        }

                        if (CFEqual(a2, @"SupportsSenderUIEventsChannel"))
                        {
                          v13 = @"supportsSenderUIEvents";
                          goto LABEL_26;
                        }

                        if (CFEqual(a2, @"SupportsDCXForSpatialAudio"))
                        {
                          CMBaseObjectGetDerivedStorage();
                          if (airPlayDescription_hasFeatureInternal(a1, 32) && airPlayDescription_isDCXSupportedForSpatialAudio(a1))
                          {
                            goto LABEL_107;
                          }

                          goto LABEL_500;
                        }

                        if (CFEqual(a2, @"SupportsUGLAssistedDiscovery"))
                        {
                          v21 = a1;
                          v22 = 91;
                          goto LABEL_85;
                        }

                        if (CFEqual(a2, @"uglServerInfo"))
                        {
                          v10 = *(DerivedStorage + 88);
                          if (!v10)
                          {
                            goto LABEL_13;
                          }

                          goto LABEL_6;
                        }

                        if (CFEqual(a2, @"IsUGLReceiverSessionActive"))
                        {
                          v14 = a1;
                          v15 = 0x400000;
                          goto LABEL_49;
                        }

                        if (CFEqual(a2, @"ReceiverModifiesMainHighLatency"))
                        {
                          return airplayDescription_copyReceiverModifiesMainHighLatency(a1, a4);
                        }

                        if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
                        {
                          airPlayDescription_copyPropertyInternal_cold_15(a2, v72, v73);
                        }

                        return -12784;
                      }

                      v70 = a1;
                      v71 = 1;
                    }

                    airPlayDescription_copyAirPlayEndpointProperties(v70, v71, a4);
                    return 0;
                  }

                  v69 = @"voiceModelCurrentLanguage";
                }

                return airPlayDescription_copyEndpointInfoNestedCFData(a1, @"enhancedSiriInfo", v69, a4);
              }

              v63 = @"nightMode";
            }

            airPlayDescription_copyEndpointInfoValueCFBoolean(a1, v63, a4);
            return 0;
          }

          v74 = 0;
          v75 = a4;
        }

        v51 = a1;
        v52 = 0;
      }

      v53 = 0;
    }

    v54 = 0;
    goto LABEL_310;
  }

  v10 = APAdvertiserInfoCopyProperty();
  if (v10)
  {
    goto LABEL_13;
  }

  v16 = CFNumberCreateInt64();
  *a4 = v16;
  if (!v16)
  {
    airPlayDescription_copyPropertyInternal_cold_1();
  }

  return v77;
}

BOOL airPlayDescription_isSourceVersionAtLeast(uint64_t a1, unsigned int a2)
{
  v7 = 0;
  CMBaseObjectGetDerivedStorage();
  if (airPlayDescription_copySourceVersion(a1, &v7))
  {
    APSLogErrorAt();
    v5 = 0;
    v4 = v7;
    if (!v7)
    {
      return v5;
    }

    goto LABEL_3;
  }

  v4 = v7;
  v5 = CFGetInt64Ranged() >= a2;
  if (v4)
  {
LABEL_3:
    CFRelease(v4);
  }

  return v5;
}

uint64_t CMBaseObjectCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t CMBaseObjectCopyProperty_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  result = VTable + 8;
  v11 = *(v10 + 48);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t __carEndpoint_getStreamInfoForDisplayUUID_block_invoke(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v3 = result;
    result = FigCFEqual();
    if (result)
    {
      *(*(*(v3 + 32) + 8) + 24) = a2;
    }
  }

  return result;
}

uint64_t carEndpoint_CopyCurrentViewArea(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 62))
  {
    v7 = *(DerivedStorage + 168);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = __carEndpoint_CopyCurrentViewArea_block_invoke;
    v13[3] = &unk_27849F6A8;
    v13[6] = a1;
    v13[7] = a2;
    v13[4] = &v18;
    v13[5] = &v14;
    dispatch_sync(v7, v13);
  }

  v8 = v15;
  v9 = v15[3];
  if (v9)
  {
    v9 = CFRetain(v9);
    v8 = v15;
  }

  *a3 = v9;
  v10 = v8[3];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(v19 + 6);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v11;
}

uint64_t carEndpoint_getScreenStreamForDisplayUUID(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 264))
  {
    CFArrayGetCount(*(DerivedStorage + 264));
    CFArrayApplyBlock();
  }

  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

uint64_t APStarkModeCreateStructRepresentation(CFDictionaryRef theDict, _OWORD *a2)
{
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2000000000;
  v21[3] = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2000000000;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v18 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v16 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3800000000;
  v13 = 0u;
  v14 = 0u;
  if (theDict)
  {
    if (a2)
    {
      for (i = 24; i != 56; ++i)
      {
        *(&v10 + i) = 0;
      }

      Value = CFDictionaryGetValue(theDict, @"appStates");
      v6 = CFDictionaryGetValue(theDict, @"resources");
      if (Value)
      {
        CFArrayGetCount(Value);
        CFArrayApplyBlock();
      }

      if (v6)
      {
        CFArrayGetCount(v6);
        CFArrayApplyBlock();
      }

      v7 = 0;
      v8 = *(v11 + 5);
      *a2 = *(v11 + 3);
      a2[1] = v8;
    }

    else
    {
      v7 = 4294895245;
      APStarkModeCreateStructRepresentation_cold_1();
    }
  }

  else
  {
    v7 = 4294895245;
    APStarkModeCreateStructRepresentation_cold_2();
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
  return v7;
}

uint64_t carEndpoint_packetizeCommandAndSend(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v28 = 0;
  v27.tv_sec = 0;
  *&v27.tv_usec = 0;
  cf = 0;
  if (carEndpoint_isDissociated(DerivedStorage))
  {
    Data = 0;
    v8 = 0;
    goto LABEL_32;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = Mutable;
  if (!Mutable)
  {
    carEndpoint_packetizeCommandAndSend_cold_5();
    Data = 0;
LABEL_46:
    v12 = 4294950575;
    goto LABEL_22;
  }

  CFDictionarySetValue(Mutable, @"type", a2);
  if (a3)
  {
    CFDictionarySetValue(v8, @"params", a3);
  }

  Data = CFPropertyListCreateData(0, v8, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    carEndpoint_packetizeCommandAndSend_cold_4();
    goto LABEL_46;
  }

  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (!BlockBufferWithCFDataNoCopy)
  {
    if (gLogCategory_APEndpointCarPlay <= 20 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_packetizeCommandAndSend(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean)", 33554452, "[%{ptr}] %###s called %'@\n", a1, "OSStatus carEndpoint_packetizeCommandAndSend(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean)", a2);
    }

    v11 = *(DerivedStorage + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_packetizeCommandAndSend_block_invoke;
    block[3] = &unk_27849F478;
    block[4] = &v29;
    block[5] = DerivedStorage;
    dispatch_sync(v11, block);
    v12 = v30[3];
    if (!v12)
    {
      goto LABEL_33;
    }

    v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v13 && v13(v12))
    {
      APSenderSessionGetCMBaseObject();
      v15 = v14;
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v16)
      {
        v17 = v16(v15, @"TransportControlStream", 0, &v28);
        if (!v17)
        {
          if (gLogCategory_APEndpointCarPlay <= 30)
          {
            carEndpoint_packetizeCommandAndSend_cold_2(gLogCategory_APEndpointCarPlay, &cf, a1);
          }

          gettimeofday(&v27, 0);
          v18 = v28;
          v19 = cf;
          v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v20)
          {
            v12 = v20(v18, 1668246893, v19);
          }

          else
          {
            v12 = 4294954514;
          }

          Length = CFDataGetLength(Data);
          carEndpoint_sendCommandInfoAppend(a1, a2, &v27, Length, v12);
          if (v12)
          {
            carEndpoint_packetizeCommandAndSend_cold_3(v12);
            goto LABEL_22;
          }

LABEL_33:
          v21 = v28;
          if (!v28)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v12 = v17;
      }

      else
      {
        v12 = 4294954514;
      }

      APSLogErrorAt();
      goto LABEL_22;
    }

LABEL_32:
    v12 = 0;
    goto LABEL_33;
  }

  v12 = BlockBufferWithCFDataNoCopy;
  carEndpoint_packetizeCommandAndSend_cold_1(BlockBufferWithCFDataNoCopy);
LABEL_22:
  v21 = v28;
  if (!v28)
  {
    goto LABEL_35;
  }

  if (gLogCategory_APEndpointCarPlay <= 90)
  {
    if (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_packetizeCommandAndSend(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean)", 33554522, "[%{ptr}] %###s: failed to send %'@ command with error: %d (inSendAsync=%d)\n", a1, "OSStatus carEndpoint_packetizeCommandAndSend(FigEndpointRef, CFStringRef, CFDictionaryRef, Boolean)", a2, v12, 1);
    }

    goto LABEL_33;
  }

LABEL_34:
  CFRelease(v21);
LABEL_35:
  v23 = v30[3];
  if (v23)
  {
    CFRelease(v23);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v29, 8);
  return v12;
}

void carEndpoint_sendCommandInfoAppend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 560))
  {
    v7 = DerivedStorage;
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      v13.tv_sec = 0;
      *&v13.tv_usec = 0;
      gettimeofday(&v13, 0);
      v11 = localtime(a3);
      snprintf(__str, 0x14uLL, "%02d:%02d:%02d.%d", v11->tm_hour, v11->tm_min, v11->tm_sec, *(a3 + 8));
      v12 = CFStringCreateWithCString(v8, __str, 0x8000100u);
      FigCFDictionarySetValue();
      FigCFDictionarySetDouble();
      FigCFDictionarySetValue();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigSimpleMutexLock();
      if (CFArrayGetCount(*(v7 + 560)) >= *(v7 + 568))
      {
        CFArrayRemoveValueAtIndex(*(v7 + 560), 0);
      }

      CFArrayAppendValue(*(v7 + 560), v10);
      FigSimpleMutexUnlock();
      if (v12)
      {
        CFRelease(v12);
      }

      CFRelease(v10);
    }
  }
}

uint64_t carEndpoint_CopyProperty(const void *a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  if (gLogCategory_APEndpointCarPlay <= 10 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554442, "[%{ptr}] Copy property for key: %'@\n", a1, a2);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CC1568]))
  {
    v9 = MEMORY[0x277CC1A30];
LABEL_7:
    Value = *v9;
LABEL_8:
    Value = CFRetain(Value);
LABEL_9:
    v11 = 0;
    *a4 = Value;
    return v11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1288]))
  {
    APEndpointDescriptionGetCMBaseObject();
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v11 = v15(v14, @"BluetoothDeviceIDs", a3, a4);
      if (!v11)
      {
        return v11;
      }
    }

    else
    {
      v11 = 4294954514;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, @"CarPlayControlSupported"))
  {
    v23 = *(DerivedStorage + 8);
    v24 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v24 && v24(v23, 37))
    {
LABEL_26:
      v9 = MEMORY[0x277CBED28];
      goto LABEL_7;
    }

LABEL_118:
    v9 = MEMORY[0x277CBED10];
    goto LABEL_7;
  }

  if (CFEqual(a2, @"EndpointDescription"))
  {
    Value = *(DerivedStorage + 8);
    if (!Value)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1368]))
  {
    Value = *(DerivedStorage + 32);
    if (!Value)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1398]))
  {
    isEndpointConnected = carEndpoint_isEndpointConnected(a1);
    v9 = MEMORY[0x277CBED28];
    if (!isEndpointConnected)
    {
      v9 = MEMORY[0x277CBED10];
    }

    goto LABEL_7;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1418]))
  {
    APEndpointDescriptionGetCMBaseObject();
    v11 = CMBaseObjectCopyProperty(v26, @"LimitedUIElements", 0, a4);
    if (!v11)
    {
      return v11;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1440]))
  {
    APEndpointDescriptionGetCMBaseObject();
    v11 = OUTLINED_FUNCTION_7_9(v27);
    if (!v11)
    {
      return v11;
    }

    goto LABEL_16;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC1430]))
  {
    if (CFEqual(a2, *MEMORY[0x277CC1328]))
    {
      APEndpointDescriptionGetCMBaseObject();
      v11 = OUTLINED_FUNCTION_7_9(v30);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1558]))
    {
      v31 = MEMORY[0x277CC1A10];
      if (!*(DerivedStorage + 40))
      {
        v31 = MEMORY[0x277CC1A08];
      }

      Value = *v31;
      if (!*v31)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1450]))
    {
      Value = *(DerivedStorage + 24);
      if (!Value)
      {
        Value = *(DerivedStorage + 16);
        if (!Value)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1508]))
    {
      APEndpointDescriptionGetCMBaseObject();
      v11 = OUTLINED_FUNCTION_7_9(v32);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1460]))
    {
      APEndpointDescriptionGetCMBaseObject();
      v11 = OUTLINED_FUNCTION_7_9(v33);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1470]))
    {
      APEndpointDescriptionGetCMBaseObject();
      v11 = OUTLINED_FUNCTION_7_9(v34);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1580]))
    {
      APEndpointDescriptionGetCMBaseObject();
      v11 = OUTLINED_FUNCTION_7_9(v35);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1578]))
    {
      APEndpointDescriptionGetCMBaseObject();
      v11 = OUTLINED_FUNCTION_7_9(v36);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1240]))
    {
      APEndpointDescriptionGetCMBaseObject();
      v11 = OUTLINED_FUNCTION_7_9(v37);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"ScreenIsOverscanned"))
    {
      v11 = carEndpoint_copyPropertyForDisplay(a1, @"IsOverscanned", a3, a4);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"ScreenSize"))
    {
      v11 = carEndpoint_copyPropertyForDisplay(a1, @"PixelSize", a3, a4);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"SourceVersion"))
    {
      APEndpointDescriptionGetCMBaseObject();
      v11 = OUTLINED_FUNCTION_7_9(v38);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"StatusFlags") || CFEqual(a2, *MEMORY[0x277CC1540]))
    {
      APEndpointDescriptionGetCMBaseObject();
      v11 = OUTLINED_FUNCTION_7_9(v39);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12E8]))
    {
      APEndpointDescriptionGetCMBaseObject();
      v11 = OUTLINED_FUNCTION_7_9(v40);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1530]))
    {
      APEndpointDescriptionGetCMBaseObject();
      v11 = OUTLINED_FUNCTION_7_9(v41);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"EndpointInfo"))
    {
      APEndpointDescriptionGetCMBaseObject();
      v43 = OUTLINED_FUNCTION_7_9(v42);
      if (!v43)
      {
        v44 = *a4;
        if (*a4 && (CFDictionaryContainsKey(*a4, @"videoPlaybackInfo") || CFDictionaryContainsKey(v44, @"video2Info")))
        {
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          FigCFDictionaryGetDictionaryValue();
          FigCFDictionarySetValue();
          if (MutableCopy)
          {
            v46 = *a4;
            *a4 = MutableCopy;
            CFRetain(MutableCopy);
            if (v46)
            {
              CFRelease(v46);
            }

            CFRelease(MutableCopy);
          }
        }

        return 0;
      }

      v11 = v43;
LABEL_16:
      APSLogErrorAt();
      goto LABEL_17;
    }

    if (CFEqual(a2, @"CornerMasksSupported"))
    {
      v9 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 65))
      {
        v9 = MEMORY[0x277CBED10];
      }

      goto LABEL_7;
    }

    if (CFEqual(a2, @"VoiceTriggerSupported"))
    {
      APEndpointDescriptionGetCMBaseObject();
      v11 = OUTLINED_FUNCTION_7_9(v47);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15B0]))
    {
      goto LABEL_118;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14D8]))
    {
      v48 = *(DerivedStorage + 48);
      if (v48)
      {
        Value = CFDictionaryGetValue(v48, @"requestIdentifier");
        if (!Value)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      goto LABEL_164;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1238]))
    {
      if (*(DerivedStorage + 162))
      {
        APEndpointDescriptionGetCMBaseObject();
        v11 = OUTLINED_FUNCTION_7_9(v49);
      }

      else
      {
        v11 = 0;
        *a4 = CFNumberCreateInt64();
      }

      OUTLINED_FUNCTION_25_2();
      if (v21 ^ v22 | v20 && (v54 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCarPlay)))
      {
        OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_copyNonStateProperty(FigEndpointRef, CFStringRef, CFAllocatorRef, void *)", v53, "[%{ptr}] copy %@: %@ err = %#m");
      }

      goto LABEL_17;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1230]))
    {
      v50 = MEMORY[0x277CBED28];
      v51 = *(DerivedStorage + 60);
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x277CC1220]))
      {
        v50 = MEMORY[0x277CBED10];
        v51 = *(DerivedStorage + 161);
        v52 = MEMORY[0x277CBED28];
LABEL_136:
        if (!v51)
        {
          v50 = v52;
        }

        *a4 = CFRetain(*v50);
        OUTLINED_FUNCTION_25_2();
        if (!(v21 ^ v22 | v20) || v56 == -1 && !OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCarPlay))
        {
          return 0;
        }

        goto LABEL_141;
      }

      if (!CFEqual(a2, *MEMORY[0x277CC13F8]) && !CFEqual(a2, *MEMORY[0x277CC1588]))
      {
        if (!CFEqual(a2, *MEMORY[0x277CC12F8]))
        {
          if (CFEqual(a2, *MEMORY[0x277CC12F0]))
          {
            if (*(DerivedStorage + 162))
            {
              HasFeature = APEndpointDescriptionHasFeature(*(DerivedStorage + 8), 35);
              v9 = MEMORY[0x277CBED28];
              if (HasFeature)
              {
                v9 = MEMORY[0x277CBED10];
              }

              goto LABEL_7;
            }

            goto LABEL_26;
          }

          if (CFEqual(a2, *MEMORY[0x277CC1300]))
          {
LABEL_164:
            v11 = 0;
            *a4 = 0;
            return v11;
          }

          if (!CFEqual(a2, *MEMORY[0x277CC14F8]))
          {
            goto LABEL_18;
          }

          block[0] = 0;
          SupportedFeatures = carEndpoint_getSupportedFeatures(a1, block);
          if (SupportedFeatures)
          {
            v11 = SupportedFeatures;
            goto LABEL_16;
          }

          v62 = CFNumberCreate(a3, kCFNumberSInt64Type, block);
          *a4 = v62;
          if (v62)
          {
            OUTLINED_FUNCTION_25_2();
            if (v21 ^ v22 | v20 && (v64 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCarPlay)))
            {
              OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_copyNonStateProperty(FigEndpointRef, CFStringRef, CFAllocatorRef, void *)", v63, "[%{ptr}] copy %@: %@ err = %#m");
            }

            v11 = 0;
          }

          else
          {
            APSLogErrorAt();
            v11 = 4294950575;
          }

LABEL_17:
          if (v11 != -12784)
          {
            return v11;
          }

          goto LABEL_18;
        }

        APEndpointDescriptionGetCMBaseObject();
        v58 = OUTLINED_FUNCTION_7_9(v57);
        if (v58)
        {
          v11 = v58;
          goto LABEL_16;
        }

        if (!a4)
        {
          return 0;
        }

        OUTLINED_FUNCTION_25_2();
        if (!(v21 ^ v22 | v20) || v59 == -1 && !OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCarPlay))
        {
          return 0;
        }

LABEL_141:
        OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_copyNonStateProperty(FigEndpointRef, CFStringRef, CFAllocatorRef, void *)", v55, "[%{ptr}] copy %@: %@ err = %#m");
        return 0;
      }

      v50 = MEMORY[0x277CBED28];
      v51 = *(DerivedStorage + 162);
    }

    v52 = MEMORY[0x277CBED10];
    goto LABEL_136;
  }

  APEndpointDescriptionGetCMBaseObject();
  v29 = OUTLINED_FUNCTION_7_9(v28);
  v11 = v29;
  if (!*(DerivedStorage + 48) || v29 != -12784)
  {
    if (!v29)
    {
      return v11;
    }

    goto LABEL_16;
  }

LABEL_18:
  v66 = 0;
  v67 = &v66;
  v68 = 0x2000000000;
  v69 = 0;
  v16 = CMBaseObjectGetDerivedStorage();
  v17 = *(v16 + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_copyStateProperty_block_invoke;
  block[3] = &unk_27849E420;
  block[4] = &v66;
  block[5] = v16;
  block[6] = a2;
  block[7] = a4;
  block[8] = a3;
  block[9] = a1;
  dispatch_sync(v17, block);
  v11 = *(v67 + 6);
  _Block_object_dispose(&v66, 8);
  if (v11 == -12784)
  {
    OUTLINED_FUNCTION_25_2();
    if (v21 ^ v22 | v20 && (v19 != -1 || OUTLINED_FUNCTION_10(&gLogCategory_APEndpointCarPlay)))
    {
      OUTLINED_FUNCTION_4_1(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", v18, "[%{ptr}] Copy property for unrecognized key: %'@\n");
    }

    return 4294954512;
  }

  return v11;
}