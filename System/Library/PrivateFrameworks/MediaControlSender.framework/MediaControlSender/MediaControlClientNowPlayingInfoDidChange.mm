@interface MediaControlClientNowPlayingInfoDidChange
@end

@implementation MediaControlClientNowPlayingInfoDidChange

void ___MediaControlClientNowPlayingInfoDidChange_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = gLogCategory_MediaControlClientMetaData;
  if (!theDict)
  {
    if (gLogCategory_MediaControlClientMetaData <= 40 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_MediaControlClientMetaData, "void _MediaControlClientNowPlayingInfoDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)_block_invoke", 33554472, "MC Now Playing Info Cleared\n");
    }

    v16 = *(a1 + 32);
    v17 = 0;
    goto LABEL_33;
  }

  if (gLogCategory_MediaControlClientMetaData <= 10)
  {
    if (gLogCategory_MediaControlClientMetaData != -1)
    {
LABEL_4:
      if (v3 != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_MediaControlClientMetaData, "void _MediaControlClientNowPlayingInfoDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)_block_invoke", 33554442, "MC Now Playing Info Updated:\n%.64@\n", theDict);
      }

      goto LABEL_26;
    }

    v5 = _LogCategory_Initialize();
    v3 = gLogCategory_MediaControlClientMetaData;
    if (v5)
    {
      if (gLogCategory_MediaControlClientMetaData > 10)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }
  }

  if (v3 <= 40 && (v3 != -1 || _LogCategory_Initialize()))
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x277D27B80]);
    if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFDataGetTypeID()))
    {
      Length = CFDataGetLength(v7);
    }

    else
    {
      Length = 0xFFFFFFFFLL;
    }

    if (gLogCategory_MediaControlClientMetaData <= 40 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
    {
      v20 = CFDictionaryGetValue(theDict, *MEMORY[0x277D27B70]);
      v10 = CFDictionaryGetValue(theDict, *MEMORY[0x277D27B60]);
      v11 = CFDictionaryGetValue(theDict, *MEMORY[0x277D27C88]);
      v12 = CFDictionaryGetValue(theDict, *MEMORY[0x277D27CB0]);
      v13 = CFDictionaryGetValue(theDict, *MEMORY[0x277D27CA8]);
      v14 = CFDictionaryGetValue(theDict, *MEMORY[0x277D27BE0]);
      v15 = CFDictionaryGetValue(theDict, *MEMORY[0x277D27BD8]);
      v19 = CFDictionaryGetValue(theDict, *MEMORY[0x277D27B90]);
      LogPrintF(&gLogCategory_MediaControlClientMetaData, "void _MediaControlClientNowPlayingInfoDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)_block_invoke", 33554472, "MC Now Playing Info Updated: Ar=%@, Al=%@, Ti=%@, T#=%@ of TT=%@, ET=%@ of Du=%@, Art=%@ (%d bytes)\n", v20, v10, v11, v12, v13, v14, v15, v19, Length);
    }
  }

LABEL_26:
  if (CFDictionaryGetCount(theDict) != 2 || !CFDictionaryGetInt64() || !CFDictionaryGetValue(theDict, *MEMORY[0x277D27C80]))
  {
    v16 = *(a1 + 32);
    v17 = theDict;
LABEL_33:
    _MediaControlClientNowPlayingUpdate(v16, v17);
    goto LABEL_34;
  }

  if (gLogCategory_MediaControlClientMetaData <= 40 && (gLogCategory_MediaControlClientMetaData != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_MediaControlClientMetaData, "void _MediaControlClientNowPlayingInfoDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)_block_invoke", 33554472, "MC Ignoring Music app at the end of the playlist\n");
  }

LABEL_34:
  v18 = *(a1 + 32);
  if (v18)
  {

    CFRelease(v18);
  }
}

@end