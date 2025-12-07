uint64_t sub_840(const __CFAllocator *a1, float a2, uint64_t a3, CFDataRef *a4)
{
  *bytes = a2;
  v10 = a2 <= -144.0;
  v5 = CFDataCreate(a1, bytes, 8);
  if (v5)
  {
    v7 = v5;
    result = 0;
    *a4 = v7;
  }

  else
  {
    sub_8B98(&v11, v6);
    return v11;
  }

  return result;
}

uint64_t sub_8AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void *a5, const void *a6, CFTypeRef *a7)
{
  FigHALAudioObjectGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    v19 = v12;
    sub_8C00(v12, v13);
  }

  else
  {
    v14 = FigHALAudioObjectMapperAddMapping();
    if (v14)
    {
      v19 = v14;
      sub_8C28(v14, v15);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = a3;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = a4;
      if (a5)
      {
        v17 = CFRetain(a5);
      }

      else
      {
        v17 = 0;
      }

      *(DerivedStorage + 24) = v17;
      if (a6)
      {
        v18 = CFRetain(a6);
      }

      else
      {
        v18 = 0;
      }

      *(DerivedStorage + 16) = v18;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      if (dword_14070 <= 50 && (dword_14070 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_14070, "OSStatus APHALAudioVolumeControlCreate(CFAllocatorRef, FigHALAudioObjectMapper, AudioServerPlugInHostRef, AudioObjectID, FigEndpointRef, CFDataRef, FigHALAudioObjectRef *)", 33554482, "[%{ptr}] HAL volumeControl object created for endpoint [%{ptr}]\n", 0, a5);
      }

      v19 = 0;
      *a7 = 0;
    }
  }

  return v19;
}

void sub_A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  APSGetFBOPropertyDouble();
  v10 = v9;
  if (dword_14070 <= 40 && (dword_14070 != -1 || _LogCategory_Initialize()))
  {
    sub_8C50(BytePtr, v10);
  }

  v11 = *(BytePtr + 1);
  if (v11)
  {
    v12 = v10 == -144.0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    if (dword_14070 <= 50)
    {
      if (dword_14070 != -1)
      {
LABEL_10:
        if (v11)
        {
          v13 = "yes";
        }

        else
        {
          v13 = "no";
        }

        LogPrintF(&dword_14070, "void volumeControl_DACPDeviceVolumeNotificationCallback(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] volumeControl DACP callback: muted = %s; volume %.3f -> %.3f", a2, v13, *BytePtr, v10, *"vdclbolg", *"", 1735159650);
        goto LABEL_19;
      }

      if (_LogCategory_Initialize())
      {
        v11 = *(BytePtr + 1);
        goto LABEL_10;
      }
    }

LABEL_19:
    *BytePtr = v10;
    FigHALAudioPropertySendChanges();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    return;
  }

  if (dword_14070 <= 50 && (dword_14070 != -1 || _LogCategory_Initialize()))
  {
    sub_8CB8(a2, v7, v8);
  }
}

uint64_t sub_C50(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void *a5, const void *a6, CFTypeRef *a7)
{
  cf = 0;
  FigHALAudioObjectGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    v20 = v12;
    sub_8CF4(v12, v13);
  }

  else
  {
    v14 = FigHALAudioObjectMapperAddMapping();
    if (v14)
    {
      v20 = v14;
      sub_8D1C(v14, v15);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = a3;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = a4;
      if (a5)
      {
        v17 = CFRetain(a5);
      }

      else
      {
        v17 = 0;
      }

      *(DerivedStorage + 24) = v17;
      if (a6)
      {
        v18 = CFRetain(a6);
      }

      else
      {
        v18 = 0;
      }

      *(DerivedStorage + 16) = v18;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      if (dword_14070 <= 50 && (dword_14070 != -1 || _LogCategory_Initialize()))
      {
        sub_8D44(&cf, DerivedStorage + 24, v19);
      }

      v20 = 0;
      *a7 = cf;
    }
  }

  return v20;
}

const UInt8 *sub_E00(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDataGetBytePtr(*(DerivedStorage + 16));
  v6 = result;
  if (dword_14070 <= 50)
  {
    if (dword_14070 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_8D88(v6, a2, v5);
    }
  }

  if (*(v6 + 1) && *v6 > -30.0)
  {

    return sub_1F0C(a2, 0, 1735159650, 0);
  }

  return result;
}

const UInt8 *sub_EBC(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  v5 = APSGetFBOPropertyInt64();
  if (dword_14070 <= 50 && (dword_14070 != -1 || _LogCategory_Initialize()))
  {
    sub_8DEC(BytePtr, v5 != 0, a2);
  }

  return sub_1F0C(a2, v5 != 0, 1735159650, 0);
}

void sub_F88(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(CMBaseObjectGetVTable() + 8);
    if (*v3 >= 2uLL)
    {
      v4 = v3[8];
      if (v4)
      {
        v4(CMBaseObject);
      }
    }
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 16) = 0;
  }

  v6 = *(DerivedStorage + 24);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 24) = 0;
  }
}

CFStringRef sub_108C(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  if (*(BytePtr + 1))
  {
    v3 = " MUTED";
  }

  else
  {
    v3 = "";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"APAudioVolumeControl ID %d Owner %d VolumeDB %f%s", *(DerivedStorage + 8), *(DerivedStorage + 12), *BytePtr, v3);
}

uint64_t sub_1130(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1818453105)
  {
    if (v3 > 1668047218)
    {
      v8 = v3 == 1668047219;
      v9 = 1668506480;
    }

    else
    {
      v8 = v3 == 1650682995;
      v9 = 1667591277;
    }

    goto LABEL_16;
  }

  if (v3 > 1818456931)
  {
    v8 = v3 == 1818456932 || v3 == 1937007734;
    v9 = 1818456950;
LABEL_16:
    if (v8 || v3 == v9)
    {
      return 1;
    }

    return result;
  }

  v4 = v3 - 1818453106;
  v5 = v4 > 4;
  v6 = (1 << v4) & 0x13;
  if (!v5 && v6 != 0)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1214(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1818453106)
  {
    if (v2 <= 1818456931)
    {
      if (v2 != 1818453107 && v2 != 1818453110)
      {
        return 0;
      }

      return 4;
    }

    if (v2 == 1818456932 || v2 == 1818456950)
    {
      return 4;
    }

    v6 = 1937007734;
LABEL_18:
    if (v2 == v6)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  if (v2 <= 1668047218)
  {
    if (v2 == 1650682995)
    {
      return 4;
    }

    v6 = 1667591277;
    goto LABEL_18;
  }

  if (v2 == 1668047219)
  {
    return 4;
  }

  if (v2 == 1818453106)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1668506480)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1300(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  v13 = *a2;
  if (*a2 <= 1818453106)
  {
    if (v13 <= 1668047218)
    {
      if (v13 != 1650682995)
      {
        if (v13 == 1667591277)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v14 = 0;
            *a7 = 0;
            return v14;
          }

          return 561211770;
        }

        return 2003332927;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      v14 = 0;
      v15 = 1818588780;
    }

    else
    {
      switch(v13)
      {
        case 1668047219:
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v14 = 0;
          v15 = 1986817381;
          break;
        case 1668506480:
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v14 = 0;
          v15 = 1869968496;
          break;
        case 1818453106:
          *a6 = 16;
          if (a5 >= 0x10)
          {
            v14 = 0;
            *a7 = xmmword_D980;
            return v14;
          }

          return 561211770;
        default:
          return 2003332927;
      }
    }

LABEL_33:
    *a7 = v15;
    return v14;
  }

  if (v13 <= 1818456931)
  {
    if (v13 != 1818453107)
    {
      if (v13 != 1818453110)
      {
        return 2003332927;
      }

      if (*(BytePtr + 1))
      {
        v16 = -144.0;
      }

      else
      {
        APSGetFBOPropertyDouble();
        v16 = v18;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        v20 = 561211770;
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (a5 != 4)
    {
      v20 = 561211770;
      goto LABEL_47;
    }

    v20 = 0;
    APSVolumeConvertDBToSliderValue();
  }

  else
  {
    if (v13 != 1818456932)
    {
      if (v13 != 1818456950)
      {
        if (v13 != 1937007734)
        {
          return 2003332927;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        v14 = 0;
        v15 = *(DerivedStorage + 12);
        goto LABEL_33;
      }

      v16 = 0.0;
      if (!*(BytePtr + 1))
      {
        APSGetFBOPropertyDouble();
        APSVolumeConvertDBToSliderValue();
      }

      *a6 = 4;
      if (a5 < 4)
      {
        v20 = 561211770;
LABEL_47:
        APSLogErrorAt();
        return v20;
      }

LABEL_45:
      *a7 = v16;
      return 0;
    }

    if (a5 != 4)
    {
      v20 = 561211770;
      goto LABEL_47;
    }

    v20 = 0;
    APSVolumeConvertSliderValueToDB();
  }

  *a6 = 4;
  *a7 = v17;
  return v20;
}

uint64_t sub_1688(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, float *a6)
{
  v10 = 1818453110;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  v13 = BytePtr;
  LODWORD(v20) = 1818453110;
  HIDWORD(v20) = a2[1];
  if (*a2 == 1818453110)
  {
    if (a5 == 4)
    {
      v16 = *a6;
      *BytePtr = *a6;
      if (dword_14070 <= 50)
      {
        if (dword_14070 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_19;
          }

          v10 = *a2;
          v16 = *v13;
        }

        LogPrintF(&dword_14070, "OSStatus volumeControl_SetPropertyData(FigHALAudioObjectRef, const AudioObjectPropertyAddress *, UInt32, const void *, UInt32, const void *)", 33554482, "[%{ptr}] [AirPlayVolume] selector = '%C', volumeDB = %.3f", a1, v10, v16, v19, v20);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    v17 = 561211770;
LABEL_15:
    APSLogErrorAt();
    return v17;
  }

  if (*a2 != 1818456950)
  {
    return 2003332927;
  }

  if (a5 != 4)
  {
    v17 = 561211770;
    goto LABEL_15;
  }

  v14 = *a6;
  APSVolumeConvertSliderValueToDB();
  *v13 = v15;
  if (dword_14070 <= 50)
  {
    if (dword_14070 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v15 = *v13;
    }

    LogPrintF(&dword_14070, "OSStatus volumeControl_SetPropertyData(FigHALAudioObjectRef, const AudioObjectPropertyAddress *, UInt32, const void *, UInt32, const void *)", 33554482, "[%{ptr}] [AirPlayVolume] selector = '%C', volumeDB = %.3f, volumeSliderValue = %.3f", a1, *a2, v15, v14, v20);
  }

LABEL_19:
  if (*(v13 + 1))
  {
    v17 = 0;
  }

  else
  {
    v17 = APSSetFBOPropertyDouble();
  }

  FigHALAudioPropertySendChanges();
  return v17;
}

void sub_18F0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_14070 <= 50 && (dword_14070 != -1 || _LogCategory_Initialize()))
  {
    sub_8EAC(a1, v2, v3);
  }

  if (*(DerivedStorage + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(CMBaseObjectGetVTable() + 8);
    if (*v6 >= 2uLL)
    {
      v7 = v6[8];
      if (v7)
      {
        v7(CMBaseObject);
      }
    }

    v8 = *(DerivedStorage + 16);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 16) = 0;
    }
  }

  v9 = *(DerivedStorage + 24);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 24) = 0;
  }
}

CFStringRef sub_1A58(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CFDataGetBytePtr(*(DerivedStorage + 16)) + 1))
  {
    v2 = "";
  }

  else
  {
    v2 = "Not ";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"APAudioMuteControl ID %d Owner %d %sMuted", *(DerivedStorage + 8), *(DerivedStorage + 12), v2);
}

uint64_t sub_1AD4(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 > 1668047218)
  {
    v4 = v3 == 1668047219 || v3 == 1937007734;
    v5 = 1668506480;
  }

  else
  {
    v4 = v3 == 1650682995 || v3 == 1650685548;
    v5 = 1667591277;
  }

  if (v4 || v3 == v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B58(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1668047218)
  {
    if (v2 != 1937007734 && v2 != 1668506480 && v2 != 1668047219)
    {
      return 0;
    }

    return 4;
  }

  if (v2 == 1650682995)
  {
    return 4;
  }

  if (v2 == 1667591277)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1650685548)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BE8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *a2;
  result = 2003332927;
  if (*a2 > 1668047218)
  {
    if (v12 == 1668047219)
    {
      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 1836414053;
        goto LABEL_21;
      }

      return 561211770;
    }

    if (v12 == 1668506480)
    {
      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 1869968496;
        goto LABEL_21;
      }

      return 561211770;
    }

    if (v12 != 1937007734)
    {
      return result;
    }

    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v15 = (DerivedStorage + 12);
    goto LABEL_18;
  }

  if (v12 != 1650682995)
  {
    if (v12 != 1650685548)
    {
      if (v12 != 1667591277)
      {
        return result;
      }

      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 0;
LABEL_21:
        result = 0;
        *a7 = v14;
        return result;
      }

      return 561211770;
    }

    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v15 = CFDataGetBytePtr(*(DerivedStorage + 16)) + 4;
LABEL_18:
    v14 = *v15;
    goto LABEL_21;
  }

  *a6 = 4;
  if (a5 > 3)
  {
    v14 = 1953458028;
    goto LABEL_21;
  }

  return 561211770;
}

uint64_t sub_1D58(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, unsigned int *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  if (*a2 != 1650685548)
  {
    return 2003332927;
  }

  if (a5 != 4)
  {
    v18 = 561211770;
    goto LABEL_16;
  }

  v13 = *a6;
  if (v13 != *(BytePtr + 1))
  {
    if (dword_14070 <= 50 && (dword_14070 != -1 || _LogCategory_Initialize()))
    {
      sub_8EE8(v13, a1, v12);
    }

    v14 = *(DerivedStorage + 24);
    if (v13)
    {
      v15 = &kCFBooleanTrue;
    }

    else
    {
      v15 = &kCFBooleanFalse;
    }

    v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v16)
    {
      v17 = v16(v14, kAPEndpointProperty_IsHALMuted, *v15);
      if (!v17)
      {
        goto LABEL_12;
      }

      v18 = v17;
    }

    else
    {
      v18 = 4294954514;
    }

LABEL_16:
    APSLogErrorAt();
    return v18;
  }

LABEL_12:
  sub_1F0C(a1, v13, a2[1], a2[2]);
  return 0;
}

const UInt8 *sub_1F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDataGetBytePtr(*(DerivedStorage + 16));
  v10 = result;
  if (dword_14070 <= 50)
  {
    if (dword_14070 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_8F40(v10, a2, a1);
    }
  }

  if (*(v10 + 1) != a2)
  {
    *(v10 + 1) = a2;
    v11 = *DerivedStorage;
    v12 = *(DerivedStorage + 8);

    return _FigHALAudioPropertySendOneChange(v11, v12, 1650685548, a3, a4);
  }

  return result;
}

uint64_t sub_1FEC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554482, a4);
}

uint64_t sub_2004(const __CFAllocator *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, CFDictionaryRef theDict, CFTypeRef *a7, __n128 a8)
{
  v124 = 0;
  v125 = 0;
  v122 = 0;
  v123 = 0;
  if (!theDict)
  {
    sub_9688(a8);
    v62 = 0;
    v61 = 0;
    v26 = 0;
    v24 = 0;
    v37 = 4294950576;
    goto LABEL_167;
  }

  *label = 0;
  v130 = 0;
  cf = 0;
  v127 = 0;
  v128 = 0;
  v126 = 0;
  Value = CFDictionaryGetValue(theDict, kAPHALAudioDeviceCreationOption_AudioStreamOverride);
  v14 = kFigHALAudioConduitDeviceBrokeredDeviceCreationOption_Conduit;
  v15 = CFDictionaryGetValue(theDict, kFigHALAudioConduitDeviceBrokeredDeviceCreationOption_Conduit);
  v117 = a7;
  v120 = a1;
  if (!v15)
  {
    if (a4)
    {
      v24 = CFRetain(a4);
    }

    else
    {
      v24 = 0;
    }

    v25 = CFRetain(theDict);
    if (!Value)
    {
      if (a5)
      {
        v26 = CFRetain(a5);
      }

      else
      {
        v26 = 0;
      }

      MutableCopy = v25;
      v118 = 0;
      v32 = 0;
      v29 = kCFAllocatorDefault;
      goto LABEL_22;
    }

    if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_140E0, "OSStatus device_copyEndpointAndEndpointStreamFromCreationParameters(CFAllocatorRef, FigEndpointRef, FigEndpointStreamRef, CFDictionaryRef, FigEndpointRef *, FigEndpointStreamRef *, CFStringRef *, Boolean *, CFDictionaryRef *, CFDictionaryRef *)", 33554482, "Replacing Audio endpoint stream[%{ptr}] with BufferedAudio endpoint stream[%{ptr}]\n", a5, Value);
    }

    v26 = CFRetain(Value);
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v39)
    {
      MutableCopy = v25;
      v29 = kCFAllocatorDefault;
      v40 = v39(CMBaseObject, kFigEndpointStreamProperty_AudioEngineClone, kCFAllocatorDefault, &v130);
      if (v40)
      {
        v37 = v40;
      }

      else
      {
        v41 = FigEndpointStreamAudioEngineGetCMBaseObject();
        v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v42)
        {
          v43 = v42(v41, kAPEndpointStreamAudioEngineProperty_StartupOptions, kCFAllocatorDefault, &cf);
          if (!v43)
          {
            v118 = cf;
            cf = 0;
            v32 = 1;
            goto LABEL_22;
          }

          v37 = v43;
        }

        else
        {
          v37 = 4294954514;
        }
      }
    }

    else
    {
      v37 = 4294954514;
      MutableCopy = v25;
    }

    APSLogErrorAt();
LABEL_39:
    v118 = 0;
    v32 = 0;
    goto LABEL_40;
  }

  v16 = v15;
  v17 = sub_330C(v15, kFigHALAudioConduitDeviceProperty_DeviceUID, "Default DeviceUID", &v127);
  if (v17)
  {
    v37 = v17;
    sub_8FA4(v17, v18);
    v24 = 0;
    v26 = 0;
    MutableCopy = 0;
    goto LABEL_39;
  }

  v19 = sub_330C(v16, kFigHALAudioConduitDeviceProperty_ModelUID, "Default ModelUID", &v126);
  v21 = a2;
  if (v19)
  {
    v37 = v19;
    sub_8FB4(v19, v20);
LABEL_201:
    v24 = 0;
    v26 = 0;
    MutableCopy = 0;
    v118 = 0;
    v32 = 0;
    goto LABEL_41;
  }

  v22 = sub_330C(v16, kFigHALAudioConduitDeviceProperty_DeviceName, "Default DeviceName", &v128);
  if (v22)
  {
    v37 = v22;
    sub_8FC4(v22, v23);
    goto LABEL_201;
  }

  if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_140E0, "OSStatus device_copyEndpointAndEndpointStreamFromCreationParameters(CFAllocatorRef, FigEndpointRef, FigEndpointStreamRef, CFDictionaryRef, FigEndpointRef *, FigEndpointStreamRef *, CFStringRef *, Boolean *, CFDictionaryRef *, CFDictionaryRef *)", 33554482, "Conduit [%{ptr}] properties: deviceName=%@ deviceUID=%@ modelUID=%@", v16, v128, v127, v126);
  }

  v27 = APEndpointStreamAudioAVCCreate();
  if (v27)
  {
    v37 = v27;
    sub_8FD4(v27, v28);
    goto LABEL_201;
  }

  v29 = kCFAllocatorDefault;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    sub_8FFC(v31);
    v24 = 0;
    v26 = 0;
    v118 = 0;
    v32 = 0;
    v37 = 4294960568;
    goto LABEL_41;
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  v24 = 0;
  v118 = 0;
  v32 = 0;
  v26 = *label;
  *label = 0;
LABEL_22:
  v33 = FigEndpointStreamGetCMBaseObject();
  v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v34)
  {
    v37 = 4294954514;
LABEL_27:
    APSLogErrorAt();
LABEL_40:
    v21 = a2;
    goto LABEL_41;
  }

  v35 = v34(v33, kFigEndpointStreamProperty_ID, v29, &v123);
  if (v35)
  {
    v37 = v35;
    goto LABEL_27;
  }

  v21 = a2;
  if (v123)
  {
    v37 = 0;
  }

  else
  {
    sub_9028(&v131, v36);
    v37 = v131;
  }

LABEL_41:
  if (*label)
  {
    CFRelease(*label);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v130)
  {
    CFRelease(v130);
  }

  if (v127)
  {
    CFRelease(v127);
  }

  if (v126)
  {
    CFRelease(v126);
  }

  if (v128)
  {
    CFRelease(v128);
  }

  if (v37)
  {
    sub_909C(v37, v36);
LABEL_193:
    v61 = 0;
    v62 = 0;
    Intersection = 0;
    goto LABEL_160;
  }

  FigHALAudioDeviceGetClassID();
  v44 = CMDerivedObjectCreate();
  if (v44)
  {
    v37 = v44;
    sub_90C4(v44, v45);
    goto LABEL_193;
  }

  v46 = FigHALAudioObjectMapperAddMapping();
  if (v46)
  {
    v37 = v46;
    sub_90EC(v46, v47);
    goto LABEL_193;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a3;
  *(DerivedStorage + 16) = v21;
  *DerivedStorage = 0;
  if (v24)
  {
    v49 = CFRetain(v24);
  }

  else
  {
    v49 = 0;
  }

  *(DerivedStorage + 96) = v49;
  if (v26)
  {
    v50 = CFRetain(v26);
  }

  else
  {
    v50 = 0;
  }

  *(DerivedStorage + 104) = v50;
  *(DerivedStorage + 89) = v32;
  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 24) = v123;
  v123 = 0;
  *(DerivedStorage + 64) = 0;
  if (qword_141E0 != -1)
  {
    sub_9114();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 160) = 0;
    *(Instance + 168) = 0;
    *(DerivedStorage + 120) = Instance;
  }

  else if ((sub_913C(label, v52) & 1) == 0)
  {
    v61 = 0;
    v62 = 0;
    Intersection = 0;
    v37 = *label;
    goto LABEL_160;
  }

  SNPrintF(label, 64, "APHALAudioDevice.%{ptr}.notification", v125);
  v53 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 160) = v53;
  if (!v53)
  {
    sub_9614(&v130, v54);
    v61 = 0;
    v62 = 0;
    Intersection = 0;
    v37 = v130;
    goto LABEL_160;
  }

  v55 = CFDictionaryGetValue(theDict, v14);
  *(*(DerivedStorage + 120) + 80) = v55;
  if (v55)
  {
    CFRetain(v55);
  }

  v56 = FigEndpointStreamGetCMBaseObject();
  v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v57)
  {
    v37 = 4294954514;
LABEL_75:
    APSLogErrorAt();
    v61 = 0;
    v62 = 0;
    Intersection = 0;
LABEL_160:
    v74 = v118;
    goto LABEL_161;
  }

  v58 = v57(v56, kFigEndpointStreamProperty_AudioEngineClone, kCFAllocatorDefault, DerivedStorage + 112);
  if (v58)
  {
    v37 = v58;
    goto LABEL_75;
  }

  if (*(DerivedStorage + 89))
  {
    v116 = *(DerivedStorage + 112);
    v59 = APAudioEngineBufferedAdapterCreate();
    if (v59)
    {
      v37 = v59;
      sub_91D4(v59, v60);
LABEL_204:
      v61 = 0;
LABEL_210:
      Intersection = 0;
      goto LABEL_105;
    }
  }

  else
  {
    v116 = 0;
  }

  if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
  {
    sub_91FC();
  }

  v64 = APSRealTimeWritableCreate();
  if (v64)
  {
    v37 = v64;
    sub_9240(v64, v65);
    goto LABEL_204;
  }

  v66 = CFDictionaryGetValue(MutableCopy, kAPHALAudioDeviceCreationOption_AudioDeviceType);
  if (!v66 || (v68 = CFRetain(v66)) == 0)
  {
    sub_95E8(v67);
    v61 = 0;
    Intersection = 0;
    v37 = 4294950576;
    goto LABEL_105;
  }

  v61 = v68;
  v69 = CFDictionaryGetValue(MutableCopy, kAPHALAudioDeviceCreationOption_NetworkClockType);
  if (v69)
  {
    v69 = CFRetain(v69);
  }

  *(DerivedStorage + 72) = v69;
  v70 = CFDictionaryGetValue(MutableCopy, kAPHALAudioDeviceCreationOption_EndpointName);
  if (v70)
  {
    v70 = CFRetain(v70);
  }

  *(DerivedStorage + 32) = v70;
  v71 = CFDictionaryGetValue(MutableCopy, kAPHALAudioDeviceCreationOption_ModelUID);
  if (v71)
  {
    v71 = CFRetain(v71);
  }

  *(DerivedStorage + 40) = v71;
  if (FigCFDictionaryGetInt32IfPresent())
  {
    *(DerivedStorage + 48) = 0;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetFloatIfPresent();
  if (-999.0 == -999 && dword_140E0 <= 60 && (dword_140E0 != -1 || _LogCategory_Initialize()))
  {
    sub_9268();
  }

  if (FigCFEqual())
  {
    v72 = 1668506482;
  }

  else
  {
    v72 = 1634300528;
  }

  *(DerivedStorage + 80) = v72;
  if (FigCFEqual())
  {
    v73 = 1885433975;
  }

  else if (FigCFEqual())
  {
    v73 = 1885433971;
  }

  else if (FigCFEqual())
  {
    v73 = 1885433953;
  }

  else
  {
    v75 = FigCFEqual();
    v73 = 1885433964;
    if (!v75)
    {
      if (!FigCFEqual())
      {
        goto LABEL_110;
      }

      v73 = 1885565807;
    }
  }

  *(DerivedStorage + 84) = v73;
LABEL_110:
  v76 = kFigEndpointStreamProperty_SupportedAudioFormatDescriptions;
  v77 = FigEndpointStreamGetCMBaseObject();
  v114 = MutableCopy;
  v115 = v24;
  if (sub_3458(v77, v76, kCFAllocatorDefault, &v122) == -12784)
  {
    v78 = kFigEndpointStreamProperty_SupportedPCMFormats;
    v79 = *(DerivedStorage + 120);
    v80 = FigEndpointStreamGetCMBaseObject();
    v81 = sub_3458(v80, v78, kCFAllocatorDefault, v79 + 64);
    if (v81)
    {
      v37 = v81;
      sub_93EC(v81, v82);
      Intersection = 0;
      v24 = v115;
      goto LABEL_105;
    }

    Intersection = 0;
    goto LABEL_130;
  }

  v83 = APSAudioFormatDescriptionListCreateWithFigEndpointStreamAudioFormatDescriptionArray();
  if (v83)
  {
    v37 = v83;
    sub_92AC(v83, v84);
    goto LABEL_210;
  }

  if (!*(*(DerivedStorage + 120) + 72))
  {
    APSLogErrorAt();
    if (dword_140E0 <= 90 && (dword_140E0 != -1 || _LogCategory_Initialize()))
    {
      sub_93B0();
    }

    Intersection = 0;
    goto LABEL_215;
  }

  if (!APSAudioFormatDescriptionListGetFormatCount())
  {
    v92 = kFigEndpointStreamProperty_SupportedPCMFormats;
    v93 = *(DerivedStorage + 120);
    v94 = FigEndpointStreamGetCMBaseObject();
    v95 = sub_3458(v94, v92, kCFAllocatorDefault, v93 + 64);
    if (v95)
    {
      v37 = v95;
      sub_9388(v95, v96);
      Intersection = 0;
      goto LABEL_223;
    }

    Intersection = 0;
    goto LABEL_128;
  }

  APSSettingsGetIntWithDefault();
  Intersection = APSAudioFormatDescriptionListCreateIntersection();
  if (!APSAudioFormatDescriptionListGetFormatCount())
  {
    v97 = kFigEndpointStreamProperty_SupportedPCMFormats;
    v98 = *(DerivedStorage + 120);
    v99 = FigEndpointStreamGetCMBaseObject();
    v100 = sub_3458(v99, v97, kCFAllocatorDefault, v98 + 64);
    if (v100)
    {
      v37 = v100;
      sub_9360(v100, v101);
      goto LABEL_223;
    }

LABEL_128:
    v102 = *(*(DerivedStorage + 120) + 72);
    if (v102)
    {
      CFRelease(v102);
      *(*(DerivedStorage + 120) + 72) = 0;
    }

    goto LABEL_130;
  }

  ASRDArrayPCM = APSAudioFormatDescriptionListCreateASRDArrayPCM();
  if (ASRDArrayPCM)
  {
    v37 = ASRDArrayPCM;
    sub_92D4(ASRDArrayPCM, v86);
    goto LABEL_105;
  }

  v87 = *(DerivedStorage + 120);
  v88 = *(v87 + 72);
  *(v87 + 72) = Intersection;
  if (Intersection)
  {
    CFRetain(Intersection);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  DefaultFormat = APSAudioFormatDescriptionListGetDefaultFormat();
  *(*(DerivedStorage + 120) + 56) = DefaultFormat;
  if (!DefaultFormat)
  {
    APSLogErrorAt();
    if (dword_140E0 <= 90 && (dword_140E0 != -1 || _LogCategory_Initialize()))
    {
      sub_9324();
    }

LABEL_215:
    v37 = 4294960579;
    goto LABEL_105;
  }

  PCMASBD = APSAudioFormatDescriptionGetPCMASBD();
  if (PCMASBD)
  {
    v37 = PCMASBD;
    sub_92FC(PCMASBD, v91);
LABEL_223:
    v24 = v115;
    goto LABEL_105;
  }

LABEL_130:
  v103 = *(*(DerivedStorage + 120) + 64);
  if (v103)
  {
    Length = CFDataGetLength(v103);
    BytePtr = CFDataGetBytePtr(*(*(DerivedStorage + 120) + 64));
    if (Length >= 0x38)
    {
      v106 = BytePtr;
      v107 = 0;
      do
      {
        if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_140E0, "OSStatus APHALAudioDeviceCreateForEndpointStream(CFAllocatorRef, FigHALAudioObjectMapper, AudioServerPlugInHostRef, FigEndpointRef, FigEndpointStreamRef, CFDictionaryRef, FigHALAudioDeviceRef *)", 33554482, "[%{ptr}] AudioDeviceType [%@]. SupportedPCMFormat[%d]: [%{asbd}]\n", v125, v61, v107, v106);
        }

        ++v107;
        v106 += 56;
      }

      while (Length / 0x38 != v107);
    }
  }

  if (*(*(DerivedStorage + 120) + 72))
  {
    v130 = 0;
    MutableCopy = v114;
    v24 = v115;
    v108 = a2;
    if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
    {
      APSAudioFormatDescriptionListCopyDebugString();
      if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
      {
        sub_9414();
      }

      if (v130)
      {
        CFRelease(v130);
      }
    }
  }

  else
  {
    MutableCopy = v114;
    v24 = v115;
    v108 = a2;
    if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
    {
      sub_9454();
    }
  }

  v109 = sub_6820(v120, v108, 0, *(DerivedStorage + 112), a3, *(DerivedStorage + 120), (DerivedStorage + 136));
  if (v109)
  {
    v37 = v109;
    sub_9490(v109, v110);
  }

  else
  {
    if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
    {
      sub_94B8();
    }

    v111 = sub_3208(v125);
    if (!v111)
    {
      v62 = v116;
      if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
      {
        sub_9598();
      }

      v37 = 0;
      *v117 = v125;
      v125 = 0;
      goto LABEL_160;
    }

    v37 = v111;
    sub_9570(v111, v112);
  }

LABEL_105:
  v74 = v118;
  v62 = v116;
LABEL_161:
  if (v74)
  {
    CFRelease(v74);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Intersection)
  {
    CFRelease(Intersection);
  }

LABEL_167:
  if (v122)
  {
    CFRelease(v122);
  }

  if (v123)
  {
    CFRelease(v123);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v124)
  {
    CFRelease(v124);
  }

  if (v125)
  {
    CFRelease(v125);
  }

  return v37;
}

uint64_t sub_3208(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  v1 = FigNotificationCenterAddWeakListener();
  if (v1)
  {
    v5 = v1;
    sub_969C(v1, v2);
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = FigNotificationCenterAddWeakListener();
    v5 = v3;
    if (v3)
    {
      sub_96AC(v3, v4);
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v6 = FigNotificationCenterAddWeakListener();
      if (v6)
      {
        v9 = v6;
        sub_96BC(v6, v7);
        return v9;
      }
    }
  }

  return v5;
}

uint64_t sub_330C(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString **a4)
{
  theString = 0;
  v8 = FigHALAudioConduitDeviceCopyProperty();
  v14 = v8;
  if (v8)
  {
    sub_96CC(v8, v9);
  }

  else
  {
    if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_140E0, "OSStatus device_copyPropertyFromConduitDevice(FigHALAudioConduitDeviceRef, const CFStringRef, const char *, CFStringRef *)", 33554482, "Conduit [%{ptr}] property: %@ is %s. A default value will be used.", a1, a2, "null");
    }

    v10 = CFStringCreateF(&v14, "%s:%{ptr}", a3, a1);
    theString = v10;
    if (!v14)
    {
      *a4 = v10;
      return v14;
    }

    sub_9770(v14, v11);
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v14;
}

uint64_t sub_3458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

void sub_3514(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  sub_37CC(a1);
  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[3] = 0;
  }

  v6 = DerivedStorage[5];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[5] = 0;
  }

  v7 = DerivedStorage[4];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[4] = 0;
  }

  v8 = DerivedStorage[7];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[7] = 0;
  }

  v9 = DerivedStorage[12];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[12] = 0;
  }

  v10 = DerivedStorage[13];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[13] = 0;
  }

  v11 = DerivedStorage[14];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[14] = 0;
  }

  if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_140E0, "void device_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] Releasing APHALAudioStream [%{ptr}]\n", a1, DerivedStorage[17]);
  }

  v12 = DerivedStorage[17];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[17] = 0;
  }

  v13 = DerivedStorage[18];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[18] = 0;
  }

  v14 = DerivedStorage[19];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[19] = 0;
  }

  v15 = DerivedStorage[22];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[22] = 0;
  }

  v16 = DerivedStorage[9];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[9] = 0;
  }

  v17 = DerivedStorage[16];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[16] = 0;
  }

  v18 = DerivedStorage[20];
  if (v18)
  {
    dispatch_release(v18);
    DerivedStorage[20] = 0;
  }

  v19 = DerivedStorage[15];
  if (v19)
  {
    if (v19[10])
    {
      CFRelease(v19[10]);
      v19 = DerivedStorage[15];
      v19[10] = 0;
    }

    CFRelease(v19);
    DerivedStorage[15] = 0;
  }

  if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
  {
    sub_9798(a1, v3, v4);
  }
}

uint64_t sub_37CC(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  mach_absolute_time();
  if (*(DerivedStorage + 168) < 1)
  {
    return 0;
  }

  *(DerivedStorage + 168) = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    CFDictionarySetInt64();
  }

  v4 = FigEndpointStreamAudioEngineSuspendSync();
  v7 = v4;
  if (v4)
  {
    if (v4 == -15486)
    {
      if (dword_140E0 <= 90 && (dword_140E0 != -1 || _LogCategory_Initialize()))
      {
        sub_97D4(a1, v5, v6);
      }

      v7 = 0;
    }

    else if (dword_140E0 <= 90 && (dword_140E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_140E0, "OSStatus device_StopIO(FigHALAudioDeviceRef)", 33554522, "### [%{ptr}] ESAE suspend failed err=%#m\n", a1, v7);
    }
  }

  v8 = *(DerivedStorage + 136);
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v9)
  {
    v9(v8);
  }

  v10 = *(*(DerivedStorage + 120) + 144);
  if (v10)
  {
    CFRelease(v10);
    *(*(DerivedStorage + 120) + 144) = 0;
  }

  v11 = *(DerivedStorage + 176);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 176) = 0;
  }

  v12 = *(DerivedStorage + 56);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 56) = 0;
  }

  v13 = *(DerivedStorage + 120);
  v14 = *(v13 + 88);
  if (v14)
  {
    CFRelease(v14);
    v13 = *(DerivedStorage + 120);
    *(v13 + 88) = 0;
  }

  *(v13 + 184) = 0;
  if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
  {
    sub_9810();
    if (!Mutable)
    {
      return v7;
    }

    goto LABEL_29;
  }

  if (Mutable)
  {
LABEL_29:
    CFRelease(Mutable);
  }

  return v7;
}

uint64_t sub_3A48(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  *(DerivedStorage + 172) = 1;
  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v4(v3);
    }

    FigHALAudioObjectMapperRemoveMapping();
  }

  return FigHALAudioObjectMapperRemoveMapping();
}

uint64_t sub_3B48(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = APSGetFBOPropertyInt64();
  result = 0;
  *(DerivedStorage + 64) = v4;
  if (dword_140E0 <= 50)
  {
    if (dword_140E0 != -1)
    {
      return LogPrintF(&dword_140E0, "void AudioEngineDynamicLatencyOffsetChangedCallback(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Updated dynamic latency offset to %d ms\n", a2, v4);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_140E0, "void AudioEngineDynamicLatencyOffsetChangedCallback(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Updated dynamic latency offset to %d ms\n", a2, v4);
    }
  }

  return result;
}

uint64_t sub_3C14(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

BOOL sub_3CC8(uint64_t a1, int *a2)
{
  result = 0;
  v5 = *a2;
  if (*a2 > 1818850925)
  {
    if (v5 <= 1919512166)
    {
      if (v5 > 1836411235)
      {
        if (v5 > 1853059699)
        {
          if (v5 == 1853059700)
          {
            return 1;
          }

          v6 = 1870098020;
        }

        else
        {
          if (v5 == 1836411236)
          {
            return 1;
          }

          v6 = 1853059619;
        }

        goto LABEL_61;
      }

      if (v5 <= 1819173228)
      {
        if (v5 == 1818850926)
        {
          return 1;
        }

        v6 = 1819107691;
        goto LABEL_61;
      }

      if (v5 == 1819173229)
      {
        return 1;
      }

      v7 = 1819569763;
      goto LABEL_51;
    }

    if (v5 > 1937007733)
    {
      if (v5 > 1953653101)
      {
        if (v5 != 1953653102)
        {
          if (v5 == 1987012963)
          {

            return sub_5480(a1);
          }

          v6 = 1969841184;
          goto LABEL_61;
        }

        return 1;
      }

      if (v5 == 1937007734)
      {
        return 1;
      }

      v6 = 1937009955;
      goto LABEL_61;
    }

    if (v5 <= 1936092275)
    {
      if (v5 == 1919512167)
      {
        return 1;
      }

      v7 = 1935763060;
      goto LABEL_51;
    }

    if (v5 != 1936092276)
    {
      v7 = 1936879204;
LABEL_51:
      if (v5 != v7)
      {
        return result;
      }
    }

LABEL_52:
    v8 = a2[1];
    return v8 == 1768845428 || v8 == 1869968496;
  }

  if (v5 > 1668510817)
  {
    if (v5 <= 1684434035)
    {
      if (v5 <= 1668641651)
      {
        if (v5 == 1668510818)
        {
          return 1;
        }

        v6 = 1668575852;
        goto LABEL_61;
      }

      if (v5 == 1668641652)
      {
        return 1;
      }

      v7 = 1684236338;
      goto LABEL_51;
    }

    if (v5 > 1735354733)
    {
      if (v5 == 1735354734)
      {
        return 1;
      }

      v6 = 1751737454;
      goto LABEL_61;
    }

    if (v5 != 1684434036)
    {
      if (v5 == 1718383987)
      {

        return sub_5390(a1);
      }

      return result;
    }

    goto LABEL_52;
  }

  if (v5 > 1651798131)
  {
    if (v5 <= 1668047218)
    {
      if (v5 != 1651798132)
      {
        if (v5 == 1667658618)
        {
          return sub_557C(a1) != 0;
        }

        return result;
      }

      return 1;
    }

    if (v5 == 1668047219)
    {
      return 1;
    }

    v6 = 1668049764;
  }

  else if (v5 > 1634759531)
  {
    if (v5 == 1634759532)
    {
      return 1;
    }

    v6 = 1650682995;
  }

  else
  {
    if (v5 == 1634429294)
    {
      return 1;
    }

    v6 = 1634758772;
  }

LABEL_61:
  if (v5 == v6)
  {
    return 1;
  }

  return result;
}

uint64_t sub_4064(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 > 1818850925)
  {
    if (v5 > 1919512166)
    {
      if (v5 > 1937007733)
      {
        if (v5 > 1953653101)
        {
          v6 = 1953653102;
          v7 = 4;
          if (v5 == 1987012963)
          {
            v8 = 4;
          }

          else
          {
            v8 = 0;
          }

          if (v5 == 1969841184)
          {
            v9 = 8;
          }

          else
          {
            v9 = v8;
          }

LABEL_65:
          if (v5 == v6)
          {
            return v7;
          }

          else
          {
            return v9;
          }
        }

        if (v5 != 1937007734)
        {
          if (v5 != 1937009955)
          {
            return result;
          }

          v21 = a2[1];
          v22 = v21 == 1869968496 || v21 == 1735159650;
          goto LABEL_70;
        }

        return 4;
      }

      if (v5 <= 1936092275)
      {
        v6 = 1919512167;
        v7 = 4;
        v10 = 1935763060;
        goto LABEL_32;
      }

      if (v5 == 1936092276)
      {
        return 4;
      }

      if (v5 == 1936879204)
      {
        return (20 * *(DerivedStorage[7].i64[1] + 44) + 12);
      }

      return result;
    }

    if (v5 <= 1836411235)
    {
      v12 = 1819173228;
      if (v5 == 1819569763)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      if (v5 == 1819173229)
      {
        v14 = 8;
      }

      else
      {
        v14 = v13;
      }

      v15 = 1818850926;
      v16 = 1819107691;
LABEL_40:
      if (v5 == v16)
      {
        v19 = 8;
      }

      else
      {
        v19 = 0;
      }

      if (v5 == v15)
      {
        v20 = 4;
      }

      else
      {
        v20 = v19;
      }

      if (v5 <= v12)
      {
        return v20;
      }

      else
      {
        return v14;
      }
    }

    if (v5 > 1853059699)
    {
      if (v5 == 1853059700)
      {
        return 8;
      }

      if (v5 == 1870098020)
      {
        v23 = a2[1];
        if (v23 == 1869968496 || v23 == 1735159650)
        {
          v24 = vmovn_s64(vtstq_s64(DerivedStorage[9], DerivedStorage[9]));
          return 4 * ((v24.i8[4] & 1u) - v24.i32[0]) + 4;
        }

        else
        {
          return 0;
        }
      }

      return result;
    }

    v6 = 1836411236;
    v7 = 8;
    v17 = v5 == 1853059619;
    v9 = 32;
    goto LABEL_63;
  }

  if (v5 > 1668510817)
  {
    if (v5 > 1684434035)
    {
      v12 = 1735354733;
      if (v5 == 1751737454)
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      if (v5 == 1735354734)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }

      v15 = 1684434036;
      v16 = 1718383987;
      goto LABEL_40;
    }

    if (v5 <= 1668641651)
    {
      if (v5 == 1668510818)
      {
        return 4;
      }

      if (v5 == 1668575852)
      {
        v11 = vmovn_s64(vtstq_s64(DerivedStorage[9], DerivedStorage[9]));
        return 4 * ((v11.i8[4] & 1u) - v11.i32[0]);
      }

      return result;
    }

    v6 = 1668641652;
    v7 = 60;
    v17 = v5 == 1684236338;
    v9 = 8;
LABEL_63:
    if (!v17)
    {
      v9 = 0;
    }

    goto LABEL_65;
  }

  if (v5 > 1651798131)
  {
    if (v5 > 1668047218)
    {
      if (v5 != 1668047219)
      {
        v22 = v5 == 1668049764;
LABEL_70:
        if (v22)
        {
          return 4;
        }

        else
        {
          return 0;
        }
      }

      return 4;
    }

    v6 = 1651798132;
    v7 = 40;
    v10 = 1667658618;
    goto LABEL_32;
  }

  if (v5 <= 1634759531)
  {
    v6 = 1634429294;
    v7 = 4;
    v10 = 1634758772;
LABEL_32:
    v17 = v5 == v10;
    v9 = 4;
    goto LABEL_63;
  }

  if (v5 == 1634759532 || v5 == 1650682995)
  {
    return 4;
  }

  return result;
}

uint64_t sub_446C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int *a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = DerivedStorage;
  v15 = *a2;
  if (*a2 <= 1818850925)
  {
    if (v15 <= 1668510817)
    {
      if (v15 <= 1651798131)
      {
        if (v15 > 1634759531)
        {
          if (v15 == 1634759532)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v16 = 0;
              v17 = *(DerivedStorage + 48);
              goto LABEL_136;
            }

            return 561211770;
          }

          if (v15 == 1650682995)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v16 = 0;
              v17 = 1634689642;
              goto LABEL_136;
            }

            return 561211770;
          }
        }

        else
        {
          if (v15 == 1634429294)
          {
            *a6 = 4;
            if (a5 < 4)
            {
              return 0;
            }

            v16 = 0;
            v17 = *DerivedStorage;
            goto LABEL_136;
          }

          if (v15 == 1634758772)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v16 = 0;
              v17 = *(DerivedStorage + 84);
              goto LABEL_136;
            }

            return 561211770;
          }
        }

        return 2003332927;
      }

      if (v15 > 1668047218)
      {
        if (v15 == 1668047219)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v16 = 0;
            v17 = 1633969526;
            goto LABEL_136;
          }

          return 561211770;
        }

        v25 = 1668049764;
        goto LABEL_81;
      }

      if (v15 == 1651798132)
      {
        CMBaseObjectGetDerivedStorage();
        APSRealTimeWritableRead();
        *a6 = 40;
        if (a5 < 0x28)
        {
          return 561211770;
        }

        v16 = 0;
        *a7 = 0;
        *(a7 + 8) = 0uLL;
        __asm { FMOV            V0.2D, #1.0 }

        *(a7 + 24) = _Q0;
      }

      else
      {
        if (v15 != 1667658618)
        {
          return 2003332927;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        v16 = 0;
        *a7 = sub_557C(a1);
      }

      return v16;
    }

    if (v15 > 1684434035)
    {
      if (v15 > 1735354733)
      {
        if (v15 == 1735354734)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v16 = 0;
            v17 = *(DerivedStorage + 168) > 0;
            goto LABEL_136;
          }

          return 561211770;
        }

        v25 = 1751737454;
        goto LABEL_81;
      }

      if (v15 == 1684434036)
      {
        goto LABEL_82;
      }

      if (v15 != 1718383987)
      {
        return 2003332927;
      }

      return 1970171760;
    }

    if (v15 > 1668641651)
    {
      if (v15 != 1668641652)
      {
        if (v15 != 1684236338)
        {
          return 2003332927;
        }

        if (a5 <= 7)
        {
          v16 = 561211770;
          sub_98C4(v13);
          return v16;
        }

        v16 = 0;
        *a7 = 0x200000001;
        v30 = 8;
LABEL_171:
        *a6 = v30;
        return v16;
      }

      *a6 = 60;
      if (a5 <= 0x3B)
      {
        v16 = 561211770;
        sub_989C(v13);
      }

      else
      {
        v16 = 0;
        *a7 = *"tppawwar";
        *(a7 + 16) = *"wwar";
        *(a7 + 32) = xmmword_D9E8;
        *(a7 + 44) = *(&xmmword_D9E8 + 12);
      }

      return v16;
    }

    if (v15 == 1668510818)
    {
      goto LABEL_82;
    }

    if (v15 != 1668575852)
    {
      return 2003332927;
    }

    v18 = a5 >> 2;
    v19 = a2[1];
    switch(v19)
    {
      case 1869968496:
        goto LABEL_24;
      case 1768845428:
        v18 = 0;
        break;
      case 1735159650:
LABEL_24:
        v21 = *(DerivedStorage + 144);
        v20 = *(DerivedStorage + 152);
        v22 = v21 != 0;
        if (v20)
        {
          ++v22;
        }

        if (v18 >= v22)
        {
          v18 = v22;
        }

        if (!v18)
        {
          break;
        }

        if (!v21)
        {
          v23 = 0;
LABEL_168:
          if (v20)
          {
            *(a7 + 4 * v23) = sub_3C14(v20);
          }

          break;
        }

        *a7 = sub_3C14(v14[18]);
        if (v18 != 1)
        {
          v20 = v14[19];
          v23 = 1;
          goto LABEL_168;
        }

        break;
    }

    v16 = 0;
    v30 = 4 * v18;
    goto LABEL_171;
  }

  if (v15 > 1919512166)
  {
    if (v15 > 1937007733)
    {
      if (v15 > 1953653101)
      {
        if (v15 == 1953653102)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v16 = 0;
            v17 = *(DerivedStorage + 80);
            goto LABEL_136;
          }

          return 561211770;
        }

        if (v15 != 1969841184)
        {
          if (v15 == 1987012963)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v16 = 0;
              v17 = *(DerivedStorage + 88);
LABEL_136:
              *a7 = v17;
              return v16;
            }

            return 561211770;
          }

          return 2003332927;
        }

LABEL_123:
        *a6 = 8;
        if (a5 < 8)
        {
          return 561211770;
        }

        v24 = v14[3];
        if (!v24)
        {
          goto LABEL_126;
        }

        goto LABEL_125;
      }

      if (v15 == 1937007734)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          v16 = 0;
          v17 = 1;
          goto LABEL_136;
        }

        return 561211770;
      }

      if (v15 != 1937009955)
      {
        return 2003332927;
      }

      v29 = a2[1];
      if (v29 != 1869968496)
      {
        if (v29 == 1768845428)
        {
          goto LABEL_139;
        }

        if (v29 != 1735159650)
        {
          v30 = a5 & 0xFFFFFFFC;
          goto LABEL_148;
        }
      }

      if (a5 >= 4)
      {
        *a7 = sub_3C14(*(DerivedStorage + 136));
        v30 = 4;
LABEL_148:
        v16 = 0;
        goto LABEL_171;
      }

LABEL_139:
      v30 = 0;
      goto LABEL_148;
    }

    if (v15 <= 1936092275)
    {
      if (v15 == 1919512167)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          v16 = 0;
          v17 = 11025;
          goto LABEL_136;
        }

        return 561211770;
      }

      v25 = 1935763060;
LABEL_81:
      if (v15 != v25)
      {
        return 2003332927;
      }

      goto LABEL_82;
    }

    if (v15 != 1936092276)
    {
      if (v15 != 1936879204)
      {
        return 2003332927;
      }

      v26 = *(*(DerivedStorage + 120) + 44);
      v27 = 20 * v26 + 12;
      if (v27 > a5)
      {
        v16 = 561211770;
        sub_98B0(v13);
      }

      else
      {
        bzero(a7, (20 * v26 + 12));
        if (v26 == 8)
        {
          *(a7 + 8) = 0x100000008;
          *(a7 + 32) = 2;
          *(a7 + 52) = 3;
          *(a7 + 72) = 4;
          *(a7 + 92) = 5;
          *(a7 + 112) = 6;
          *(a7 + 132) = 49;
          *(a7 + 152) = 51;
        }

        else
        {
          if (v26 == 1)
          {
            v28 = 6553601;
          }

          else
          {
            v28 = 6619138;
          }

          *a7 = v28;
        }

        v16 = 0;
        *a6 = v27;
      }

      return v16;
    }

LABEL_82:
    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v16 = 0;
    *a7 = 0;
    return v16;
  }

  if (v15 <= 1836411235)
  {
    if (v15 > 1819173228)
    {
      if (v15 == 1819173229)
      {
        v41 = *(DerivedStorage + 32);
        if (!v41 || (v42 = CFRetain(v41)) == 0)
        {
          v42 = CFRetain(@"No Name Endpoint");
        }

        *a6 = 8;
        if (a5 < 8)
        {
          v16 = 561211770;
        }

        else
        {
          v16 = 0;
          *a7 = CFRetain(v42);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        return v16;
      }

      v25 = 1819569763;
      goto LABEL_81;
    }

    if (v15 == 1818850926)
    {
      *a6 = 4;
      if (a5 >= 4)
      {
        v16 = 0;
        v17 = *(DerivedStorage + 172) == 0;
        goto LABEL_136;
      }

      return 561211770;
    }

    if (v15 != 1819107691)
    {
      return 2003332927;
    }

    *a6 = 8;
    if (a5 < 8)
    {
      return 561211770;
    }

    v24 = @"Apple, Inc.";
LABEL_125:
    v24 = CFRetain(v24);
LABEL_126:
    v16 = 0;
    *a7 = v24;
    return v16;
  }

  if (v15 > 1853059699)
  {
    if (v15 == 1853059700)
    {
      *a6 = 8;
      if (a5 < 8)
      {
        return 561211770;
      }

      v16 = 0;
      *a7 = *(*(DerivedStorage + 120) + 16);
      return v16;
    }

    if (v15 != 1870098020)
    {
      return 2003332927;
    }

    LODWORD(v31) = a5 >> 2;
    v32 = a2[1];
    if (v32 == 1869968496)
    {
      if (*(DerivedStorage + 144))
      {
        v43 = 2;
      }

      else
      {
        v43 = 1;
      }

      if (*(DerivedStorage + 152))
      {
        ++v43;
      }

      if (v31 >= v43)
      {
        v34 = v43;
      }

      else
      {
        v34 = a5 >> 2;
      }

      if (a5 >= 4)
      {
        *a7 = sub_3C14(*(DerivedStorage + 136));
        if (v34 >= 2)
        {
          v44 = v14[18];
          if (v44)
          {
            *(a7 + 4) = sub_3C14(v44);
            v45 = 2;
            LODWORD(v31) = 2;
            if (v34 == 2)
            {
              goto LABEL_159;
            }
          }

          else
          {
            v45 = 1;
          }

          v47 = v14[19];
          if (v47)
          {
            *(a7 + 4 * v45) = sub_3C14(v47);
          }

          goto LABEL_179;
        }

        goto LABEL_166;
      }
    }

    else if (v32 != 1768845428)
    {
      if (v32 != 1735159650)
      {
        goto LABEL_159;
      }

      if (*(DerivedStorage + 144))
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      if (*(DerivedStorage + 152))
      {
        ++v33;
      }

      v34 = v31 >= v33 ? v33 : a5 >> 2;
      if (a5 >= 4)
      {
        *a7 = sub_3C14(*(DerivedStorage + 136));
        if (v34 >= 2)
        {
          v35 = v14[18];
          if (!v35)
          {
            v31 = 1;
            goto LABEL_177;
          }

          *(a7 + 4) = sub_3C14(v35);
          v31 = 2;
          if (v34 != 2)
          {
LABEL_177:
            v48 = v14[19];
            if (v48)
            {
              *(a7 + 4 * v31) = sub_3C14(v48);
            }

LABEL_179:
            LODWORD(v31) = v34;
          }

LABEL_159:
          v16 = 0;
          v30 = 4 * v31;
          goto LABEL_171;
        }

LABEL_166:
        LODWORD(v31) = 1;
        goto LABEL_159;
      }
    }

    LODWORD(v31) = 0;
    goto LABEL_159;
  }

  if (v15 == 1836411236)
  {
    v24 = *(DerivedStorage + 40);
    if (!v24)
    {
      goto LABEL_123;
    }

    *a6 = 8;
    if (a5 < 8)
    {
      return 561211770;
    }

    goto LABEL_125;
  }

  if (v15 != 1853059619)
  {
    return 2003332927;
  }

  v16 = 0;
  *a6 = 0;
  return v16;
}

uint64_t sub_4E28(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, double *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  v46 = 0;
  v47 = 0;
  v12 = *a2;
  if (*a2 == 1718383987)
  {
    if (sub_5390(a1))
    {
      v26 = 0;
      *(*(v11 + 120) + 168) = 1;
    }

    else
    {
      v26 = 1970171760;
      sub_9914(v37);
    }

    goto LABEL_47;
  }

  if (v12 == 1987012963)
  {
    if (!sub_5480(a1))
    {
      v26 = 1970171760;
      sub_9900(v28);
      goto LABEL_47;
    }

    if (a5 != 4)
    {
      v26 = 561211770;
      goto LABEL_38;
    }

    v29 = *a6;
    *(v11 + 88) = *a6;
    v30 = CMBaseObjectGetDerivedStorage();
    *&__s2[0] = 0;
    if (v29)
    {
      v31 = &kCFBooleanTrue;
    }

    else
    {
      v31 = &kCFBooleanFalse;
    }

    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v33)
    {
      v35 = v33(CMBaseObject, kFigEndpointStreamProperty_Type, kCFAllocatorDefault, __s2);
      if (!v35)
      {
        if (FigCFEqual())
        {
          if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
          {
            v36 = "true";
            if (!v29)
            {
              v36 = "false";
            }

            LogPrintF(&dword_140E0, "void device_setHTFTIsActive(FigHALAudioObjectRef, Boolean)", 33554482, "[%{ptr}] Updating 'usingVoice' property with value: %s; endpoint stream [%{ptr}].\n", a1, v36, *(v30 + 104));
          }

          v38 = FigEndpointStreamGetCMBaseObject();
          v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v39)
          {
            v39(v38, kAPEndpointStreamProperty_IsHomeTheaterFaceTime, *v31);
          }
        }

        goto LABEL_44;
      }
    }

    else
    {
      v35 = 4294954514;
    }

    sub_98D8(v35, v34);
LABEL_44:
    if (*&__s2[0])
    {
      CFRelease(*&__s2[0]);
    }

    goto LABEL_46;
  }

  if (v12 != 1853059700)
  {
    v26 = 2003332927;
    goto LABEL_47;
  }

  memset(__s2, 0, 40);
  v13 = *(DerivedStorage + 120);
  v14 = *(v13 + 32);
  __s1 = *(v13 + 16);
  v43 = v14;
  v44 = *(v13 + 48);
  if (a5 != 8)
  {
    v26 = 561211770;
LABEL_38:
    APSLogErrorAt();
    goto LABEL_47;
  }

  v15 = *a6;
  if (*a6 == *&__s1)
  {
LABEL_46:
    v26 = 0;
    goto LABEL_47;
  }

  v16 = FigHALAudioStreamGetCMBaseObject();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    v26 = 4294954514;
    goto LABEL_38;
  }

  v18 = v17(v16, kFigHALAudioStreamProperty_SupportedPCMFormats, kCFAllocatorDefault, &v46);
  if (v18)
  {
    v26 = v18;
    goto LABEL_38;
  }

  v19 = v46;
  Length = CFDataGetLength(v46);
  if (Length < 0x70)
  {
    v26 = 4294967246;
    v41 = 1341;
LABEL_55:
    sub_9928(v41, v26, v21);
  }

  else
  {
    v22 = Length / 0x38;
    BytePtr = CFDataGetBytePtr(v19);
    v24 = 0;
    do
    {
      v21.n128_u64[0] = *(BytePtr + 5);
      if (v21.n128_f64[0] <= v15)
      {
        v21.n128_u64[0] = *(BytePtr + 6);
        if (v21.n128_f64[0] >= v15)
        {
          v24 = BytePtr;
          if (*(BytePtr + 7) == HIDWORD(v43))
          {
            v24 = BytePtr;
            if (*(BytePtr + 8) >= v44)
            {
              v24 = BytePtr;
              goto LABEL_16;
            }
          }
        }
      }

      BytePtr += 56;
      --v22;
    }

    while (v22);
    if (!v24)
    {
      v26 = 1970171760;
      v41 = 1358;
      goto LABEL_55;
    }

LABEL_16:
    *__s2 = v15;
    v25 = *(v24 + 24);
    *(__s2 + 8) = *(v24 + 8);
    *(&__s2[1] + 8) = v25;
    if (!memcmp(&__s1, __s2, 0x28uLL))
    {
      goto LABEL_46;
    }

    sub_3C14(*(v11 + 136));
    v26 = FigHALAudioConfigChangeCreateRecord();
    if (v26)
    {
      APSLogErrorAt();
    }

    else
    {
      v27 = v47;
      *(v47 + 16) = __s2[0];
      *(v27 + 32) = __s2[1];
      *(v27 + 48) = *&__s2[2];
      FigHALAudioConfigChangeSendRequest();
      v47 = 0;
    }
  }

LABEL_47:
  FigHALAudioConfigChangeDisposeRecord();
  if (v46)
  {
    CFRelease(v46);
  }

  return v26;
}

BOOL sub_5390(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  cf1 = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v4 = v2(CMBaseObject, kFigEndpointStreamProperty_Type, kCFAllocatorDefault, &cf1);
    if (!v4)
    {
      v5 = CFEqual(cf1, kFigEndpointStreamType_LowLatencyAudio) == 0;
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 4294954514;
  }

  sub_9978(v4, v3);
  v5 = 1;
LABEL_4:
  if (cf1)
  {
    CFRelease(cf1);
  }

  return v5;
}

BOOL sub_5480(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  cf1 = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    v4 = 4294954514;
    goto LABEL_9;
  }

  v4 = v2(CMBaseObject, kFigEndpointStreamProperty_Type, kCFAllocatorDefault, &cf1);
  if (v4)
  {
LABEL_9:
    sub_99CC(v4, v3);
    goto LABEL_10;
  }

  if (cf1)
  {
    v5 = CFEqual(cf1, kFigEndpointStreamType_LowLatencyAudio) != 0;
    goto LABEL_5;
  }

  sub_99A0(v3);
LABEL_10:
  v5 = 0;
LABEL_5:
  if (cf1)
  {
    CFRelease(cf1);
  }

  return v5;
}

uint64_t sub_557C(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf1 = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    v6 = 4294954514;
    goto LABEL_16;
  }

  v6 = v4(CMBaseObject, kFigEndpointStreamProperty_Type, kCFAllocatorDefault, &cf1);
  if (v6)
  {
LABEL_16:
    sub_99F4(v6, v5);
    v10 = 0;
    goto LABEL_33;
  }

  if (CFEqual(cf1, kFigEndpointStreamType_LowLatencyAudio) && !*(DerivedStorage + 88))
  {
    UInt32 = 128;
  }

  else if (*(*(DerivedStorage + 120) + 80))
  {
    v7 = FigHALAudioConduitDeviceCopyProperty();
    if (v7)
    {
      if (dword_140E0 <= 90 && ((v8 = v7, dword_140E0 != -1) || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_140E0, "UInt32 device_getCalculatedBufferFrameSize(FigHALAudioObjectRef)", 33554522, "[%{ptr}] Conduit device %{ptr} returned %d for DesiredNumberPackets; using %u for BufferFrameSize\n", a1, *(*(DerivedStorage + 120) + 80), v8, 480);
        UInt32 = 480;
      }

      else
      {
        UInt32 = 480;
      }
    }

    else
    {
      UInt32 = FigCFNumberGetUInt32();
      if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_140E0, "UInt32 device_getCalculatedBufferFrameSize(FigHALAudioObjectRef)", 33554482, "[%{ptr}] Conduit device %{ptr} DesiredNumberPackets for BufferFrameSize: %u\n", a1, *(*(DerivedStorage + 120) + 80), UInt32);
      }
    }
  }

  else
  {
    UInt32 = 0;
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  if (IntWithDefault)
  {
    v10 = IntWithDefault;
    if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_140E0, "UInt32 device_getCalculatedBufferFrameSize(FigHALAudioObjectRef)", 33554482, "[%{ptr}] Using forced BufferFrameSize %u instead of %u for stream type %@.\n", a1, v10, UInt32, cf1);
    }
  }

  else
  {
    if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
    {
      if (*(DerivedStorage + 88))
      {
        v12 = "true";
      }

      else
      {
        v12 = "false";
      }

      LogPrintF(&dword_140E0, "UInt32 device_getCalculatedBufferFrameSize(FigHALAudioObjectRef)", 33554482, "[%{ptr}] BufferFrameSize set to %u; and 'usingVoice' property is %s.\n", a1, UInt32, v12);
    }

    v10 = UInt32;
  }

LABEL_33:
  if (cf1)
  {
    CFRelease(cf1);
  }

  return v10;
}

uint64_t sub_58B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(CMBaseObject, a2, a3);
  }

  return result;
}

CFTypeRef sub_5968(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t sub_59A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 != 1818326115 && a2 != 1718579821)
  {
    fig_log_get_emitter();
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v11[1]);
    goto LABEL_10;
  }

  if (!a3)
  {
    sub_9A1C(v11, v6);
    v9 = v11[0];
    goto LABEL_10;
  }

  v7 = *(DerivedStorage + 136);
  v8 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (!v8)
  {
    v9 = 4294954514;
    goto LABEL_8;
  }

  v9 = v8(v7, a2, a3);
  if (v9)
  {
LABEL_8:
    APSLogErrorAt();
    goto LABEL_10;
  }

  FigHALAudioPropertySendChanges();
LABEL_10:
  FigHALAudioConfigChangeDisposeRecord();
  return v9;
}

uint64_t sub_5B4C(uint64_t a1)
{
  v69[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v67 = kCMTimeInvalid;
  v68 = 0;
  v66 = v67;
  v64 = 0;
  v65 = 0;
  *bytes = 0u;
  v63 = 0u;
  mach_absolute_time();
  if (!*(DerivedStorage + 112))
  {
    sub_9E38(v69, &time, v3);
    goto LABEL_100;
  }

  if (*(DerivedStorage + 172))
  {
    sub_9A94(v69, &time, v3);
LABEL_100:
    Mutable = 0;
    SInt32 = 0;
    v6 = 0;
    if (!LODWORD(time.value))
    {
      goto LABEL_76;
    }

    goto LABEL_65;
  }

  APSRealTimeAllocatorGetDefault();
  if (*(DerivedStorage + 168))
  {
LABEL_4:
    Mutable = 0;
LABEL_5:
    SInt32 = 0;
    v6 = 0;
    goto LABEL_64;
  }

  v8 = DerivedStorage + 120;
  v7 = *(DerivedStorage + 120);
  v9 = *(v7 + 32);
  *(v7 + 104) = *(v7 + 16);
  *(v7 + 120) = v9;
  *(v7 + 136) = *(v7 + 48);
  v10 = *(DerivedStorage + 120);
  v11 = *(v10 + 128);
  v12 = *(v10 + 104);
  *(v10 + 172) = 0;
  *(v10 + 176) = v12;
  *(v10 + 180) = v11;
  *(v10 + 168) = 0;
  *(*(DerivedStorage + 120) + 160) = 0;
  v14 = (DerivedStorage + 176);
  v13 = *(DerivedStorage + 176);
  if (v13)
  {
    CFRelease(v13);
    *v14 = 0;
  }

  if (FigCFEqual())
  {
    v15 = kCFAllocatorDefault;
    v16 = CMTimeSyncClockCreateForSystemDomainClockIdentifier();
    v69[0] = v16;
    if (v16)
    {
      sub_9B1C(v16, v17);
      goto LABEL_4;
    }

    v18 = v68;
  }

  else
  {
    HostTimeClock = CMClockGetHostTimeClock();
    if (HostTimeClock)
    {
      v18 = CFRetain(HostTimeClock);
    }

    else
    {
      v18 = 0;
    }

    v68 = v18;
    v15 = kCFAllocatorDefault;
  }

  v20 = CMTimebaseCreateWithSourceClock(v15, v18, (DerivedStorage + 176));
  v69[0] = v20;
  if (v20)
  {
    sub_9B44(v20, v21);
    goto LABEL_4;
  }

  CMClockGetTime(&v67, v68);
  v22 = v68;
  v23 = CMClockGetHostTimeClock();
  time = v67;
  CMSyncConvertTime(&v66, &time, v22, v23);
  v24 = *v14;
  time = kCMTimeZero;
  immediateSourceTime = v67;
  v25 = CMTimebaseSetRateAndAnchorTime(v24, 1.0, &time, &immediateSourceTime);
  v69[0] = v25;
  if (v25)
  {
    sub_9B6C(v25, v26);
    goto LABEL_4;
  }

  v27 = APAudioSourceConduitCreate();
  v69[0] = v27;
  if (v27)
  {
    sub_9B94(v27, v28);
    goto LABEL_4;
  }

  if (IsAppleInternalBuild())
  {
    APSRingBufferCreate();
  }

  v29 = *(DerivedStorage + 136);
  v30 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (!v30)
  {
    v32 = 4294954514;
    v69[0] = -12782;
    goto LABEL_92;
  }

  v32 = v30(v29);
  v69[0] = v32;
  if (v32)
  {
LABEL_92:
    sub_9E10(v32, v31);
    goto LABEL_4;
  }

  Mutable = CFDictionaryCreateMutable(v15, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    time = v66;
    v34 = FigCFDictionarySetCMTime();
    v69[0] = v34;
    if (v34)
    {
      sub_9BBC(v34, v35);
      goto LABEL_5;
    }

    FigCFDictionarySetValue();
    if (*(*v8 + 56))
    {
      ASBD = APSAudioFormatDescriptionGetASBD();
      v6 = CFDataCreate(v15, ASBD, 40);
      if (v6)
      {
        FigCFDictionarySetValue();
        if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
        {
          sub_9BE4(DerivedStorage + 120);
        }

        goto LABEL_39;
      }

      sub_9C38(v69, v37);
    }

    else
    {
      if (*(DerivedStorage + 84) != 1885433964 || *(*v8 + 44) < 3u)
      {
        v6 = 0;
        goto LABEL_39;
      }

      v38 = ASBDToAPAudioFormat();
      v69[0] = v38;
      if (v38)
      {
        sub_9C78(v38, v39);
        goto LABEL_5;
      }

      APAudioFormatGetTransportAudioFormatForPCMFormatSender();
      v40 = APAudioFormatToASBD();
      v69[0] = v40;
      if (v40)
      {
        sub_9CA0(v40, v41);
        goto LABEL_5;
      }

      v6 = CFDataCreate(v15, bytes, 40);
      if (v6)
      {
        FigCFDictionarySetValue();
        if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_140E0, "OSStatus device_StartIO(FigHALAudioDeviceRef)", 33554482, "[%{ptr}] LLA Multichannel Audio format %{asbd} sent to audio engine for transport format.\n", a1, bytes);
        }

LABEL_39:
        if (*(DerivedStorage + 89))
        {
          FigCFDictionarySetValue();
        }

        v43 = FigEndpointStreamAudioEngineResumeSync();
        v69[0] = v43;
        if (v43)
        {
          sub_9CC8(v43, v44);
          SInt32 = 0;
          goto LABEL_64;
        }

        mach_absolute_time();
        SInt32 = FigCFNumberCreateSInt32();
        sub_58B4(*(DerivedStorage + 104), kFigEndpointStreamProperty_SubStreamResumptionTimeOutMs, SInt32);
        v45 = FigEndpointStreamAudioEngineSetEndpointStreamSync();
        v69[0] = v45;
        if (v45 <= 200400)
        {
          if (v45 == -15486)
          {
            if (dword_140E0 <= 90 && (dword_140E0 != -1 || _LogCategory_Initialize()))
            {
              sub_9D2C(a1, v46, v47);
            }

            goto LABEL_53;
          }

          if (!v45)
          {
            goto LABEL_55;
          }
        }

        else if (v45 == 200401 || v45 == 200470)
        {
          if (dword_140E0 <= 90 && (dword_140E0 != -1 || _LogCategory_Initialize()))
          {
            sub_9CF0(a1, v46, v47);
          }

LABEL_53:
          v69[0] = 0;
LABEL_55:
          mach_absolute_time();
          v48 = APSGetFBOPropertyInt64();
          if (v69[0])
          {
            v49 = 0;
          }

          else
          {
            v49 = v48;
          }

          *(DerivedStorage + 64) = v49;
          if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_140E0, "OSStatus device_StartIO(FigHALAudioDeviceRef)", 33554482, "[%{ptr}] Setting dynamic latency offset to %d\n", a1, v49);
          }

          APSSettingsGetDouble();
          v50 = APSZTSControllerCreate();
          v69[0] = v50;
          if (v50)
          {
            sub_9D68(v50, v51);
          }

          else
          {
            *(*(DerivedStorage + 120) + 184) = 1;
            *(DerivedStorage + 168) = 1;
          }

          goto LABEL_64;
        }

        APSLogErrorAt();
        if (dword_140E0 <= 90 && (dword_140E0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_140E0, "OSStatus device_StartIO(FigHALAudioDeviceRef)", 33554522, "### [%{ptr}] ESAE resume failed err=%#m\n", a1, v69[0]);
        }

LABEL_64:
        if (!v69[0])
        {
          goto LABEL_76;
        }

        goto LABEL_65;
      }

      sub_9D90(v69, v42);
    }
  }

  else
  {
    sub_9DD0(v69, v33);
    v6 = 0;
  }

  SInt32 = 0;
LABEL_65:
  v52 = *(DerivedStorage + 136);
  v53 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v53)
  {
    v53(v52);
  }

  v54 = *(*(DerivedStorage + 120) + 144);
  if (v54)
  {
    CFRelease(v54);
    *(*(DerivedStorage + 120) + 144) = 0;
  }

  v55 = *(DerivedStorage + 176);
  if (v55)
  {
    CFRelease(v55);
    *(DerivedStorage + 176) = 0;
  }

  v56 = *(DerivedStorage + 56);
  if (v56)
  {
    CFRelease(v56);
    *(DerivedStorage + 56) = 0;
  }

  v57 = *(DerivedStorage + 112);
  if (v57)
  {
    v58 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v58)
    {
      v58(v57, 0, 0, 0);
    }
  }

LABEL_76:
  if (v68)
  {
    CFRelease(v68);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  mach_absolute_time();
  if (dword_140E0 <= 50)
  {
    if (dword_140E0 != -1 || _LogCategory_Initialize())
    {
      sub_9EC0();
    }

    if (dword_140E0 <= 50 && (dword_140E0 != -1 || _LogCategory_Initialize()))
    {
      sub_9F1C();
    }
  }

  return v69[0];
}

uint64_t sub_64FC(uint64_t a1, double *a2, void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(*(DerivedStorage + 120) + 184))
  {
    v9 = DerivedStorage;
    mach_absolute_time();
    ZeroTimeStamp = APSZTSControllerGetZeroTimeStamp();
    if (ZeroTimeStamp)
    {
      v12 = ZeroTimeStamp;
      sub_9F78(ZeroTimeStamp, v11);
    }

    else
    {
      *a2 = 0.0;
      *a3 = 0;
      *a4 = 0;
      if (*(*(v9 + 120) + 88))
      {
        APSRingBufferEnqueueBytes();
      }

      kdebug_trace();
      return 0;
    }
  }

  else
  {
    sub_9FA0(v8);
    return 1937010544;
  }

  return v12;
}

uint64_t sub_6618(uint64_t a1, int a2, BOOL *a3, BOOL *a4)
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 120) + 184))
  {
    result = 0;
    *a3 = a2 == 1919513701;
    *a4 = a2 == 1919513701;
  }

  else
  {
    sub_9FB4(v7);
    return 1937010544;
  }

  return result;
}

uint64_t sub_6684(uint64_t a1)
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 120) + 184))
  {
    return 0;
  }

  sub_9FC8(v1);
  return 1937010544;
}

uint64_t sub_66BC(uint64_t a1)
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 120) + 184))
  {
    return 0;
  }

  sub_9FDC(v1);
  return 1937010544;
}

void sub_66F4(id a1)
{
  qword_141F0 = 0;
  *algn_141F8 = "APHALAudioSharedState";
  qword_14200 = sub_6754;
  unk_14208 = 0;
  qword_14210 = sub_6778;
  unk_14218 = 0u;
  unk_14228 = 0u;
  qword_141E8 = _CFRuntimeRegisterClass();
}

double sub_6754(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void sub_6778(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[7] = 0;
}

uint64_t sub_67F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554522, a4);
}

uint64_t sub_6820(uint64_t a1, uint64_t a2, int a3, const void *a4, uint64_t a5, const void *a6, CFTypeRef *a7)
{
  cf = 0;
  v34 = 0;
  kdebug_trace();
  FigHALAudioStreamGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    v29 = v12;
    sub_9FF0(v12, v13);
    goto LABEL_27;
  }

  v14 = FigHALAudioObjectMapperAddMapping();
  if (v14)
  {
    v29 = v14;
    sub_A018(v14, v15);
    goto LABEL_27;
  }

  if (a4)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListeners();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = DerivedStorage;
  *DerivedStorage = v34;
  *(DerivedStorage + 16) = a3;
  *(DerivedStorage + 8) = a5;
  if (!a4)
  {
    *(DerivedStorage + 24) = 0;
    v18 = DerivedStorage + 32;
LABEL_8:
    *v18 = *&kCMTimeInvalid.value;
    epoch = kCMTimeInvalid.epoch;
    goto LABEL_10;
  }

  v19 = CFRetain(a4);
  *(v17 + 24) = v19;
  v18 = v17 + 32;
  if (!v19)
  {
    goto LABEL_8;
  }

  APSGetFBOPropertyCMTime();
  *v18 = v32;
  epoch = v33;
LABEL_10:
  *(v18 + 16) = epoch;
  *(v17 + 64) = CFRetain(a6);
  *(v17 + 56) = 1;
  *(v17 + 112) = 0;
  APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
  Typed = CFAllocatorAllocateTyped();
  *(v17 + 96) = Typed;
  if (!Typed)
  {
    sub_A250(v22);
    v29 = 4294954510;
    goto LABEL_27;
  }

  bzero(Typed, 0x800uLL);
  IntWithDefault = APSSettingsGetIntWithDefault();
  *(v17 + 80) = IntWithDefault;
  *(v17 + 81) = 0;
  if (IntWithDefault)
  {
    v24 = CM8021ASClockCreate();
    if (v24)
    {
      v29 = v24;
      sub_A040(v24, v25);
      goto LABEL_27;
    }
  }

  if (CFDataGetLength(*(*(v17 + 64) + 64)) < 0x38)
  {
    if ((sub_A068(&v32, v26) & 1) == 0)
    {
      v29 = v32;
      goto LABEL_27;
    }
  }

  else
  {
    sub_A100((v17 + 64));
  }

  if (APSSettingsGetIntWithDefault())
  {
    v27 = IsAppleInternalBuild();
    *(v17 + 72) = v27 != 0;
    if (v27)
    {
      v29 = APRealTimeAudioFileWriterCreate();
      if (dword_14150 <= 50 && (dword_14150 != -1 || _LogCategory_Initialize()))
      {
        sub_A20C(v17 + 64, v29, v28);
      }
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
    *(v17 + 72) = 0;
  }

  APSAsyncLoggerGetSharedLogger();
  v30 = cf;
  *a7 = cf;
  cf = 0;
  if (dword_14150 <= 40)
  {
    if (dword_14150 != -1)
    {
LABEL_25:
      LogPrintF(&dword_14150, "OSStatus APHALAudioStreamCreate(CFAllocatorRef, FigHALAudioObjectMapper, AudioObjectID, FigEndpointStreamAudioEngineRef, AudioServerPlugInHostRef, APHALAudioSharedStateRef, FigHALAudioStreamRef *)", 33554472, "APHALAudioStreamCreate - outstream %p, [streamObjectID %d, ownerDeviceID %d, audioEngine %p]", v30, *v17, *(v17 + 16), a4);
      goto LABEL_27;
    }

    if (_LogCategory_Initialize())
    {
      v30 = *a7;
      goto LABEL_25;
    }

LABEL_27:
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v29;
}

void sub_6B78(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    v2 = *(DerivedStorage + 24);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 24) = 0;
    }
  }

  v3 = *(DerivedStorage + 64);
  if (*(DerivedStorage + 72))
  {
    APRealTimeAudioFileWriterInvalidate();
    v3 = *(DerivedStorage + 64);
    if (v3[12])
    {
      CFRelease(v3[12]);
      v3 = *(DerivedStorage + 64);
      v3[12] = 0;
    }

    goto LABEL_8;
  }

  if (v3)
  {
LABEL_8:
    CFRelease(v3);
    *(DerivedStorage + 64) = 0;
  }

  if (*(DerivedStorage + 80))
  {
    v4 = *(DerivedStorage + 88);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 88) = 0;
    }
  }

  *(DerivedStorage + 80) = 0;
  if (*(DerivedStorage + 96))
  {
    DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
    CFAllocatorDeallocate(DefaultAirPlayMallocZoneCFAllocator, *(DerivedStorage + 96));
  }

  v7 = *(DerivedStorage + 104);
  v6 = (DerivedStorage + 104);
  if (v7)
  {
    APSAudioStats_TerminateSession();
    if (dword_14150 <= 50 && (dword_14150 != -1 || _LogCategory_Initialize()))
    {
      sub_A27C(v6, v8, v9);
    }

    if (*v6)
    {
      CFRelease(*v6);
      *v6 = 0;
    }
  }
}

uint64_t sub_6D14(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v8 = DerivedStorage;
    if (CFEqual(a2, kFigHALAudioStreamProperty_SupportedPCMFormats))
    {
      v9 = *(*(v8 + 64) + 64);
      if (v9)
      {
        v10 = CFRetain(v9);
      }

      else
      {
        v10 = 0;
      }

      result = 0;
      *a4 = v10;
    }

    else
    {
      return 4294954509;
    }
  }

  else
  {
    sub_A2BC(v7);
    return 4294954516;
  }

  return result;
}

uint64_t sub_6DB8(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1935762291)
  {
    if (v3 > 1870098019)
    {
      v4 = v3 == 1870098020 || v3 == 1885762592;
      v5 = 1885762657;
    }

    else
    {
      v4 = v3 == 1650682995 || v3 == 1668047219;
      v5 = 1819569763;
    }
  }

  else if (v3 <= 1936092512)
  {
    v4 = v3 == 1935762292 || v3 == 1935894638;
    v5 = 1935960434;
  }

  else if (v3 > 1937007733)
  {
    v4 = v3 == 1952805485;
    v5 = 1937007734;
  }

  else
  {
    v4 = v3 == 1936092513;
    v5 = 1936092532;
  }

  if (v4 || v3 == v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_6EDC(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 > 1935894637)
  {
    if (v5 <= 1936092531)
    {
      if (v5 == 1935894638 || v5 == 1935960434)
      {
        return 4;
      }

      if (v5 != 1936092513)
      {
        return result;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 64) + 64)) / 0x38uLL);
    }

    if (v5 != 1936092532)
    {
      if (v5 == 1937007734)
      {
        return 4;
      }

      v7 = 1952805485;
LABEL_21:
      if (v5 != v7)
      {
        return result;
      }

      return 4;
    }

    return 40;
  }

  if (v5 > 1885762591)
  {
    if (v5 != 1885762592)
    {
      if (v5 != 1885762657)
      {
        v7 = 1935762292;
        goto LABEL_21;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 64) + 64)) / 0x38uLL);
    }

    return 40;
  }

  if (v5 != 1650682995 && v5 != 1668047219)
  {
    v7 = 1819569763;
    goto LABEL_21;
  }

  return 4;
}

uint64_t sub_702C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *a2;
  result = 2003332927;
  if (*a2 > 1935894637)
  {
    if (v12 <= 1936092531)
    {
      if (v12 == 1935894638)
      {
        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        result = 0;
        v19 = 1;
        goto LABEL_37;
      }

      if (v12 == 1935960434)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          *a7 = 0;
          return result;
        }

        return 561211770;
      }

      if (v12 != 1936092513)
      {
        return result;
      }

LABEL_23:
      v20 = 56 * (CFDataGetLength(*(*(DerivedStorage + 64) + 64)) / 0x38uLL);
      *a6 = v20;
      if (v20 <= a5)
      {
        BytePtr = CFDataGetBytePtr(*(*(DerivedStorage + 64) + 64));
        memcpy(a7, BytePtr, v20);
        return 0;
      }

      return 561211770;
    }

    if (v12 != 1936092532)
    {
      if (v12 == 1937007734)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          v19 = *(DerivedStorage + 16);
          goto LABEL_37;
        }

        return 561211770;
      }

      if (v12 != 1952805485)
      {
        return result;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      result = 0;
      v19 = 1936747378;
LABEL_37:
      *a7 = v19;
      return result;
    }

LABEL_25:
    *a6 = 40;
    if (a5 >= 0x28)
    {
      result = 0;
      v22 = *(DerivedStorage + 64);
      v23 = *(v22 + 16);
      v24 = *(v22 + 32);
      *(a7 + 4) = *(v22 + 48);
      *a7 = v23;
      *(a7 + 1) = v24;
      return result;
    }

    return 561211770;
  }

  if (v12 > 1885762591)
  {
    if (v12 != 1885762592)
    {
      if (v12 != 1885762657)
      {
        if (v12 != 1935762292)
        {
          return result;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        result = 0;
        v19 = *(DerivedStorage + 56);
        goto LABEL_37;
      }

      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (v12 == 1650682995)
  {
    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    result = 0;
    v19 = 1634689642;
    goto LABEL_37;
  }

  if (v12 != 1668047219)
  {
    if (v12 != 1819569763)
    {
      return result;
    }

    v14 = *(*(DerivedStorage + 64) + 16);
    v25 = *(DerivedStorage + 32);
    v15 = CMTimeConvertScale(&v26, &v25, v14, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    if ((v26.flags & 0x1D) == 1)
    {
      value = v26.value;
    }

    else
    {
      if (dword_14150 <= 50)
      {
        if (dword_14150 != -1 || (v15 = _LogCategory_Initialize(), v15))
        {
          sub_A2D0(v15, v16, v17);
        }
      }

      value = kCMTimeZero.value;
    }

    *a6 = 4;
    if (a5 >= 4)
    {
      result = 0;
      *a7 = value;
      return result;
    }

    return 561211770;
  }

  *a6 = 4;
  if (a5 >= 4)
  {
    result = 0;
    v19 = 1634956402;
    goto LABEL_37;
  }

  return 561211770;
}

uint64_t sub_7384(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, __int128 *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  if (dword_14150 <= 40 && (dword_14150 != -1 || _LogCategory_Initialize()))
  {
    sub_A300(a2, v9, v10);
  }

  v12 = *a2;
  if (*a2 != 1885762592 && v12 != 1936092532)
  {
    if (v12 != 1935762292)
    {
      v20 = 2003332927;
      goto LABEL_27;
    }

    if (a5 == 4)
    {
      v19 = *a6 != 0;
      if (*(DerivedStorage + 56) != v19)
      {
        *(DerivedStorage + 56) = v19;
        FigHALAudioPropertySendChanges();
      }

      goto LABEL_19;
    }

    v20 = 561211770;
LABEL_23:
    APSLogErrorAt();
    goto LABEL_27;
  }

  if (a5 != 40)
  {
    v20 = 561211770;
    goto LABEL_23;
  }

  v14 = a6[1];
  __s1 = *a6;
  v24 = v14;
  v25 = *(a6 + 4);
  if (!memcmp(&__s1, (*(DerivedStorage + 64) + 16), 0x28uLL))
  {
LABEL_19:
    v20 = 0;
    goto LABEL_27;
  }

  v15 = FigHALAudioConfigChangeCreateRecord();
  if (v15)
  {
    v20 = v15;
    APSLogErrorAt();
  }

  else
  {
    v17 = v25;
    v16 = v26;
    v18 = v24;
    *(v26 + 16) = __s1;
    *(v16 + 32) = v18;
    *(v16 + 48) = v17;
    if (dword_14150 <= 50)
    {
      if (dword_14150 != -1 || (v21 = _LogCategory_Initialize(), v16 = v26, v21))
      {
        LogPrintF(&dword_14150, "OSStatus stream_SetPropertyData(FigHALAudioObjectRef, const AudioObjectPropertyAddress *, UInt32, const void *, UInt32, const void *)", 33554482, "[%s] newASBD: [%{asbd}] \n", "stream_SetPropertyData", v16 + 16);
      }
    }

    FigHALAudioConfigChangeSendRequest();
    v20 = 0;
    v26 = 0;
  }

LABEL_27:
  FigHALAudioConfigChangeDisposeRecord();
  return v20;
}

uint64_t sub_75E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 24))
  {
    sub_A4A4(&v26, v9);
    goto LABEL_31;
  }

  if (a2 == 1818326115)
  {
    memset(&v26, 0, sizeof(v26));
    APSGetFBOPropertyCMTime();
    if (dword_14150 <= 50 && (dword_14150 != -1 || _LogCategory_Initialize()))
    {
      time = *(DerivedStorage + 32);
      Seconds = CMTimeGetSeconds(&time);
      time = v26;
      v20 = CMTimeGetSeconds(&time);
      LogPrintF(&dword_14150, "OSStatus stream_PerformConfigChange(FigHALAudioDeviceRef, UInt64, void *)", 33554482, "[%{ptr}] latency changed from %1.3f to %1.3f\n", a1, *&Seconds, *&v20);
    }

    *(DerivedStorage + 32) = v26;
    FigHALAudioPropertySendChanges();
    goto LABEL_25;
  }

  if (a2 != 1718579821)
  {
    fig_log_get_emitter();
    value_low = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
    goto LABEL_26;
  }

  v11 = DerivedStorage + 64;
  v10 = *(DerivedStorage + 64);
  v12 = *(a3 + 16);
  v13 = *(a3 + 32);
  *(v10 + 48) = *(a3 + 48);
  *(v10 + 16) = v12;
  *(v10 + 32) = v13;
  if (dword_14150 <= 50 && (dword_14150 != -1 || _LogCategory_Initialize()))
  {
    sub_A348(DerivedStorage + 64, v6, v7);
  }

  FigHALAudioPropertySendChanges();
  if (*(*(DerivedStorage + 64) + 72))
  {
    CompatibleTransportFromPCMAndSetDefault = APSAudioFormatDescriptionListFindCompatibleTransportFromPCMAndSetDefault();
    if (dword_14150 > 50 || dword_14150 == -1 && !_LogCategory_Initialize())
    {
      if (!CompatibleTransportFromPCMAndSetDefault)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }

    sub_A3A0(DerivedStorage + 64);
    if (CompatibleTransportFromPCMAndSetDefault)
    {
LABEL_29:
      sub_A3F0(CompatibleTransportFromPCMAndSetDefault, &v26, v15);
LABEL_31:
      value_low = LODWORD(v26.value);
      goto LABEL_26;
    }
  }

LABEL_12:
  if (!*(DerivedStorage + 72))
  {
LABEL_25:
    value_low = 0;
    goto LABEL_26;
  }

  APRealTimeAudioFileWriterInvalidate();
  v16 = *(*v11 + 96);
  if (v16)
  {
    CFRelease(v16);
    *(*v11 + 96) = 0;
  }

  value_low = APRealTimeAudioFileWriterCreate();
  if (dword_14150 <= 50 && (dword_14150 != -1 || _LogCategory_Initialize()))
  {
    sub_A460(v11, value_low, v17);
  }

LABEL_26:
  FigHALAudioConfigChangeDisposeRecord();
  return value_low;
}

uint64_t sub_78F4(uint64_t a1)
{
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  if (*(DerivedStorage + 24))
  {
    if (dword_14150 <= 40 && (dword_14150 != -1 || _LogCategory_Initialize()))
    {
      sub_A518();
    }

    if (*(DerivedStorage + 56))
    {
      *(*(DerivedStorage + 64) + 152) = 0;
      if (IsAppleInternalBuild())
      {
        if (FigGetCFPreferenceNumberWithDefault())
        {
          v4 = CFStringCreateF(&v8, "APHALAudioStream-%{ptr}", a1);
          v5 = APSAudioStatsCreate();
          v8 = v5;
          if (v5)
          {
            sub_A554(v5, v6);
          }

          else
          {
            CFRelease(v4);
          }
        }
      }
    }
  }

  else
  {
    sub_A57C(&v8, v3);
  }

  kdebug_trace();
  return v8;
}

uint64_t sub_7A44(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  if (dword_14150 <= 40 && (dword_14150 != -1 || _LogCategory_Initialize()))
  {
    sub_A5F0();
  }

  v3 = *(DerivedStorage + 104);
  v2 = (DerivedStorage + 104);
  if (v3)
  {
    APSAudioStats_TerminateSession();
    if (dword_14150 <= 50 && (dword_14150 != -1 || _LogCategory_Initialize()))
    {
      sub_A62C(v2, v4, v5);
    }

    if (*v2)
    {
      CFRelease(*v2);
      *v2 = 0;
    }
  }

  kdebug_trace();
  return 0;
}

uint64_t sub_7B4C(CMTimeValue a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v83 = *&kCMTimeInvalid.value;
  *&v85.value = *&kCMTimeInvalid.value;
  epoch = kCMTimeInvalid.epoch;
  v85.epoch = epoch;
  kdebug_trace();
  if (dword_14150 <= 40 && (dword_14150 != -1 || _LogCategory_Initialize()))
  {
    sub_A66C();
  }

  v13 = *(DerivedStorage + 64);
  if (!*(v13 + 184))
  {
    sub_A91C(v12);
    value_low = 1937010544;
    goto LABEL_42;
  }

  if (a2 != 1919513701)
  {
    sub_A6A8(&v90, v12);
LABEL_87:
    value_low = LODWORD(v90.value);
    goto LABEL_42;
  }

  if (!*(DerivedStorage + 24))
  {
    sub_A8A8(&v90, v12);
    goto LABEL_87;
  }

  if (!*(DerivedStorage + 56))
  {
    value_low = 0;
LABEL_42:
    kdebug_trace();
    return value_low;
  }

  if (*(DerivedStorage + 104))
  {
    APSAudioStats_ProcessAudioBuffer();
    v13 = *(DerivedStorage + 64);
  }

  v81 = epoch;
  if (*(v13 + 96))
  {
    v91[0] = 0.0;
    v90.value = a1;
    *&v90.timescale = 0;
    v90.timescale = *(v13 + 180) * a3;
    v90.epoch = *(a4 + 144);
    APSAsyncLoggerGetSharedLogger();
    APSAsyncLoggerLogMessage();
    APRealTimeAudioFileWriterWriteAudioBytes();
  }

  v14 = CMBaseObjectGetDerivedStorage();
  v15 = v14 + 64;
  v82 = a5;
  if (*(*(v14 + 64) + 152) == 0.0)
  {
    goto LABEL_39;
  }

  v16 = v14;
  v17 = *(a4 + 144);
  v18 = CMBaseObjectGetDerivedStorage();
  memset(&v88, 0, sizeof(v88));
  memset(time, 0, sizeof(time));
  v19 = *(v18 + 64);
  v20 = v17 - *(v19 + 152);
  if (v20 == 0.0)
  {
    goto LABEL_39;
  }

  v21 = v18;
  v84 = a4;
  atomic_fetch_add_explicit((v19 + 160), 1uLL, memory_order_relaxed);
  v90.value = a1;
  v22 = *(v18 + 64);
  v23 = *(v22 + 152);
  *&v90.timescale = v20 / *(v22 + 16) * 1000.0;
  v90.epoch = v23;
  v91[0] = v17;
  APSAsyncLoggerGetSharedLogger();
  APSAsyncLoggerLogMessage();
  if (*(*(v21 + 64) + 88))
  {
    if (APSRingBufferGetBytesUsed() >= 0x121)
    {
      APSRingBufferGetBytesUsed();
      if (APSRingBufferDequeueBytes())
      {
        goto LABEL_22;
      }
    }

    v24 = 12;
    do
    {
      if (APSRingBufferGetBytesUsed() < 0x18)
      {
        break;
      }

      if (APSRingBufferDequeueBytes())
      {
        goto LABEL_22;
      }

      *time = a1;
      *&time[8] = v88;
      APSAsyncLoggerGetSharedLogger();
      APSAsyncLoggerLogMessage();
      --v24;
    }

    while (v24);
  }

  sub_A71C(&v90.timescale, &v90.epoch, v91);
LABEL_22:
  v25 = *v15;
  if (*(*v15 + 80))
  {
    goto LABEL_39;
  }

  v26 = v20 / *(v25 + 16);
  if (v26 <= 0.0 || v26 >= 3.94)
  {
    if (v20 >= 0.0 || -v20 >= a3)
    {
      v37 = 0;
      *(v25 + 168) = 1;
    }

    else
    {
      v37 = -v20;
    }

    goto LABEL_40;
  }

  v27 = v20;
  if (!v20)
  {
LABEL_39:
    v37 = 0;
    goto LABEL_40;
  }

  v80 = DerivedStorage;
  v28 = *(v25 + 152);
  while (1)
  {
    v29 = *(v16 + 64);
    v30 = *(v29 + 180);
    v31 = v27 >= 0x800 / v30 ? 0x800 / v30 : v27;
    v32 = *(v29 + 144);
    v33 = *(v16 + 96);
    v34 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v34)
    {
      break;
    }

    v36 = v34(v32, v33, v31 * v30, v28);
    if (v36)
    {
      goto LABEL_81;
    }

    v28 += v31;
    v27 -= v31;
    if (!v27)
    {
      goto LABEL_33;
    }
  }

  v36 = 4294954514;
LABEL_81:
  sub_A760(v36, v15, v35);
LABEL_33:
  v37 = 0;
  DerivedStorage = v80;
  a4 = v84;
LABEL_40:
  if (*(*(DerivedStorage + 64) + 80))
  {
    FigHALAudioConduitDeviceHALSendAudio();
    value_low = 0;
    *(*(DerivedStorage + 64) + 152) = *(a4 + 144) + a3;
    goto LABEL_42;
  }

  v40 = CMBaseObjectGetDerivedStorage();
  v41.n128_u64[1] = *(&v83 + 1);
  *&v90.value = v83;
  v90.epoch = v81;
  v42 = (*(v40 + 64) + 168);
  __swp(v42, v42);
  if (v42)
  {
    v43 = v40;
    Default = APSRealTimeAllocatorGetDefault();
    Mutable = CFDictionaryCreateMutable(Default, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v47 = Mutable;
      CMTimeMake(&v90, *(a4 + 144), *(*(v43 + 64) + 176));
      v48 = APSRealTimeAllocatorGetDefault();
      *time = v90;
      v49 = CMTimeCopyAsDictionary(time, v48);
      if (v49)
      {
        v51 = v49;
        CFDictionarySetValue(v47, kFigEndpointStreamAudioEngineFlushOption_AnchorTime, v49);
        CFDictionarySetValue(v47, kFigEndpointStreamAudioEngineFlushOption_TimelineReset, kCFBooleanTrue);
        v52 = *(*(v43 + 64) + 144);
        v53 = *(*(CMBaseObjectGetVTable() + 16) + 128);
        if (v53)
        {
          v53(v52);
        }

        v54 = *(v43 + 24);
        v55 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v55)
        {
          v55(v54, v47);
        }

        CFRelease(v47);
        CFRelease(v51);
        v37 = 0;
      }

      else
      {
        sub_A7A0(v47, v50);
      }
    }

    else
    {
      sub_A7E0(v46);
    }
  }

  v56 = *(DerivedStorage + 64);
  if (*(v56 + 152) == 0.0)
  {
    CMTimeMake(&v85, *(a4 + 144), *(v56 + 176));
    v57 = APSRealTimeAllocatorGetDefault();
    v90 = v85;
    v58 = CMTimeCopyAsDictionary(&v90, v57);
    if (!v58)
    {
      sub_A87C(v59);
      value_low = 4294954510;
      goto LABEL_42;
    }

    v60 = v58;
    CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject();
    v62 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v62)
    {
      v63 = v62(CMBaseObject, kAPAudioEngineProperty_AudioSourceFirstFrameAnchorTime, v60);
      if (!v63)
      {
        v56 = *(DerivedStorage + 64);
        goto LABEL_58;
      }

      value_low = v63;
    }

    else
    {
      value_low = 4294954514;
    }

    sub_A838(value_low, v41);
LABEL_78:
    CFRelease(v60);
    return value_low;
  }

  v60 = 0;
LABEL_58:
  v64 = *(a4 + 144);
  v41.n128_f64[0] = v64 + a3;
  *(v56 + 152) = v41.n128_u64[0];
  v65 = *(v56 + 180);
  v66 = a3;
  *&v67 = v65 * a3;
  if (*(DerivedStorage + 80))
  {
    v68 = DerivedStorage;
    v69 = CMBaseObjectGetDerivedStorage();
    v89 = 0.0;
    v41 = *&kCMTimeZero.value;
    *time = v41;
    *&time[16] = kCMTimeZero.epoch;
    *&v88.value = v41;
    v88.epoch = *&time[16];
    if (LODWORD(v67) >= 8)
    {
      v70 = v69;
      if (!*(v69 + 81))
      {
        v71 = *&v67 >> 3;
        v72 = v82;
        while (!*v72)
        {
          ++v72;
          if (!--v71)
          {
            goto LABEL_67;
          }
        }

        *(v69 + 81) = 1;
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(time, HostTimeClock);
        v90 = *time;
        CM8021ASClockGetClockTimeForHostTime();
        v90.value = *(v70 + 88);
        v87 = *time;
        *&v90.timescale = CMTimeGetSeconds(&v87);
        v87 = v88;
        v90.epoch = CMTimeGetSeconds(&v87);
        v91[0] = v89;
        APSAsyncLoggerGetSharedLogger();
        APSAsyncLoggerLogMessage();
      }
    }

LABEL_67:
    v56 = *(v68 + 64);
    v65 = *(v56 + 180);
  }

  else
  {
    v68 = DerivedStorage;
  }

  v74 = v37 * v65;
  if (*&v67 < v74)
  {
    sub_A80C(v41);
    value_low = 4294960587;
  }

  else
  {
    v75 = v68;
    if (*(v68 + 112))
    {
      v76 = mach_absolute_time() - *(v68 + 112);
      value_low = 0;
      if (v76 > 60 * UpTicksPerSecond())
      {
        *(v75 + 112) = 0;
      }
    }

    else
    {
      v77 = *(v56 + 144);
      v78 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v78)
      {
        value_low = v78(v77, v82 + v74, *&v67 - v74, v37 + v64);
        v79 = CMBaseObjectGetDerivedStorage();
        if (value_low == -6710)
        {
          v90.value = (((*(*(v79 + 64) + 16) & 0xFFFFFFFF80000000) != 0) << 63) | ((*(*(v79 + 64) + 16) & 0x7FFFFFFF) << 32) | *(*(v79 + 64) + 180) & 0x7FFFFFFF | *(*(v79 + 64) + 180) & 0x80000000;
          *&v90.timescale = v37 & 0x7FFFFFFF | (v66 << 32) | (((v37 & 0xFFFFFFFF80000000) != 0) << 31);
          v90.epoch = v74;
          v91[0] = v67;
          APSAsyncLoggerGetSharedLogger();
          APSAsyncLoggerLogMessage();
          *(v68 + 112) = mach_absolute_time();
          value_low = 4294960586;
        }
      }

      else
      {
        CMBaseObjectGetDerivedStorage();
        value_low = 4294954514;
      }
    }
  }

  kdebug_trace();
  if (v60)
  {
    goto LABEL_78;
  }

  return value_low;
}

uint64_t sub_8590(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (a2)
  {
    v7 = *(DerivedStorage + 64);
    v8 = *(v7 + 16);
    v9 = *(v7 + 32);
    *(a2 + 32) = *(v7 + 48);
    *a2 = v8;
    *(a2 + 16) = v9;
  }

  if (dword_14150 <= 40 && (dword_14150 != -1 || _LogCategory_Initialize()))
  {
    sub_A930(v6, v4, v5);
  }

  return 0;
}

uint64_t sub_8610(uint64_t result, double a2, uint64_t a3, uint64_t a4)
{
  if (dword_14150 <= 40)
  {
    v4 = result;
    if (dword_14150 != -1)
    {
      return sub_A988(v4, a3, a4);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_A988(v4, a3, a4);
    }
  }

  return result;
}

uint64_t sub_8680(uint64_t result, double a2, uint64_t a3, uint64_t a4)
{
  if (dword_14150 <= 50)
  {
    v4 = result;
    if (dword_14150 != -1)
    {
      return sub_A9D4(v4, a3, a4);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_A9D4(v4, a3, a4);
    }
  }

  return result;
}

uint64_t sub_86F0(uint64_t result, double a2, uint64_t a3, uint64_t a4)
{
  if (dword_14150 <= 50)
  {
    v4 = result;
    if (dword_14150 != -1)
    {
      return sub_AA2C(v4, a3, a4);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_AA2C(v4, a3, a4);
    }
  }

  return result;
}

uint64_t sub_8760(uint64_t result, double a2, uint64_t a3, uint64_t a4)
{
  if (dword_14150 <= 50)
  {
    v4 = result;
    if (dword_14150 != -1)
    {
      return sub_AA8C(v4, a3, a4);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_AA8C(v4, a3, a4);
    }
  }

  return result;
}

void sub_87D0(unint64_t *a1, double a2)
{
  v16 = 0;
  v3 = a1[1];
  v4 = HIDWORD(*a1) & 0x7FFFFFFF;
  v5 = *a1 & 0x7FFFFFFF;
  v6 = HIDWORD(v3) & 0x7FFFFFFF;
  v7 = v3 & 0x7FFFFFFF;
  v8 = a1[2];
  v9 = a1[3];
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v10 = "bad";
  }

  else
  {
    v10 = "good";
  }

  if ((*a1 & 0x80000000) != 0)
  {
    v11 = "bad";
  }

  else
  {
    v11 = "good";
  }

  if (v3 < 0)
  {
    v12 = "bad";
  }

  else
  {
    v12 = "good";
  }

  if (v3 < 0)
  {
    v13 = "bad";
  }

  else
  {
    v13 = "good";
  }

  v14 = CFStringCreateF(&v16, "sampleRate=%u[%s] bytesPerFrame=%u[%s] ioBufferFrameSize=%u[%s] framesToDrop=%u[%s] bytesToDrop=%llu length=%llu", v4, v10, v5, v11, v6, v12, v7, v13, v8, v9);
  if (v16)
  {
    sub_AAE0(v16, v15);
    if (!v14)
    {
      return;
    }

    goto LABEL_19;
  }

  if (dword_14150 <= 50 && (dword_14150 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_14150, "void stream_ttrLogger(const APSAsyncLoggerParameters *, Float64)", 33554482, "Streaming Audio DoIO Bounds Checking Violation: %@ (log latency: %1.3f ms)\n", v14, *&a2);
  }

  APSTapToRadarInvoke();
  if (v14)
  {
LABEL_19:
    CFRelease(v14);
  }
}

uint64_t sub_8920(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_14150 <= 50 && (dword_14150 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_14150, "void stream_AudioEngineOutputLatencyChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] received LatencyChanged notification from AudioEngine [%{ptr}], reconfiguring...\n", a2, *(DerivedStorage + 24));
  }

  v4 = FigHALAudioConfigChangeCreateRecord();
  if (v4)
  {
    return sub_AB08(v4, v5);
  }

  else
  {
    return FigHALAudioConfigChangeSendRequest();
  }
}

uint64_t sub_8A1C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554472, a4);
}

uint64_t *AirPlayAVCHALPlugin_Create(uint64_t a1, const void *a2)
{
  if (dword_14000 <= 50 && (dword_14000 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_14000, "void *AirPlayAVCHALPlugin_Create(CFAllocatorRef, CFUUIDRef)", 33554482, "AVCHalogen plugin create is called");
  }

  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = &qword_141C0;
  qword_141C0 = FigHALPluginDriverGetInterface();
  if (FigHALAudioObjectMapperCreate() || FigHALAudioCreateBrokeredPluginObject())
  {
    APSLogErrorAt();
    return 0;
  }

  FigAtomicIncrement32();
  return v4;
}

uint64_t sub_8B98(_DWORD *a1, __n128 a2)
{
  APSLogErrorAt();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = result;
  return result;
}

uint64_t sub_8C50(uint64_t a1, float a2)
{
  v2 = "YES";
  if (!*(a1 + 4))
  {
    v2 = "NO";
  }

  return LogPrintF(&dword_14070, "void volumeControl_DACPDeviceVolumeNotificationCallback(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554472, "isMuted = %s, newVolume = %f", v2, a2);
}

uint64_t sub_9028(_DWORD *a1, __n128 a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_67E0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = result;
  return result;
}

uint64_t sub_913C(_DWORD *a1, __n128 a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_67E0();
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a1 = v3;
  if (!v3)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

uint64_t sub_9614(_DWORD *a1, __n128 a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_67E0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = result;
  return result;
}

uint64_t sub_96CC(uint64_t a1, __n128 a2)
{
  result = APSLogErrorAt();
  if (dword_140E0 <= 90)
  {
    if (dword_140E0 != -1)
    {
      return sub_67F0(&dword_140E0, "OSStatus device_copyPropertyFromConduitDevice(FigHALAudioConduitDeviceRef, const CFStringRef, const char *, CFStringRef *)", v3, "Copy property %@ from conduit [%{ptr}] failed with error=%d");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_67F0(&dword_140E0, "OSStatus device_copyPropertyFromConduitDevice(FigHALAudioConduitDeviceRef, const CFStringRef, const char *, CFStringRef *)", v3, "Copy property %@ from conduit [%{ptr}] failed with error=%d");
    }
  }

  return result;
}

uint64_t sub_9810()
{
  mach_absolute_time();
  v0 = UpTicksPerSecond();
  sub_67BC(v0);
  return sub_1FEC(&dword_140E0, "OSStatus device_StopIO(FigHALAudioDeviceRef)", v1, "[%{ptr}] StopIO total: %1.3f ms\n");
}

uint64_t sub_9A1C(_DWORD *a1, __n128 a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_67E0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = result;
  return result;
}

uint64_t sub_9A94(_DWORD *a1, _DWORD *a2, __n128 a3)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_67E0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a2 = result;
  *a1 = result;
  return result;
}

uint64_t sub_9C38(_DWORD *a1, __n128 a2)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t sub_9D90(_DWORD *a1, __n128 a2)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t sub_9DD0(_DWORD *a1, __n128 a2)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t sub_9E38(_DWORD *a1, _DWORD *a2, __n128 a3)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_67E0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a2 = result;
  *a1 = result;
  return result;
}

uint64_t sub_9EC0()
{
  v0 = UpTicksPerSecond();
  sub_67BC(v0);
  return sub_1FEC(&dword_140E0, "OSStatus device_StartIO(FigHALAudioDeviceRef)", v1, "[%{ptr}] StartIO total: %1.3f ms\n");
}

uint64_t sub_9F1C()
{
  v0 = UpTicksPerSecond();
  sub_67BC(v0);
  return sub_1FEC(&dword_140E0, "OSStatus device_StartIO(FigHALAudioDeviceRef)", v1, "[%{ptr}] StartIO setEndpointStream: %1.3f ms\n");
}

uint64_t sub_A068(_DWORD *a1, __n128 a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_67E0();
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a1 = v3;
  if (!v3)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

const UInt8 *sub_A100(uint64_t *a1)
{
  result = APSAudioFormatDescriptionListGetFormatCount();
  if (result)
  {
    if (dword_14150 < 51)
    {
      if (dword_14150 != -1 || (result = _LogCategory_Initialize(), result))
      {
        v4 = "Verifying default output format [%{asbd}]";
        return sub_1FEC(&dword_14150, "OSStatus VerifyDefaultOutputFormat(APHALAudioStreamStorage *)", v3, v4);
      }
    }
  }

  else
  {
    result = CFDataGetBytePtr(*(*a1 + 64));
    v5 = *a1;
    v6 = *result;
    v7 = *(result + 1);
    *(v5 + 48) = *(result + 4);
    *(v5 + 16) = v6;
    *(v5 + 32) = v7;
    *(*a1 + 16) = *(result + 5);
    if (dword_14150 < 51)
    {
      if (dword_14150 != -1)
      {
        v4 = "Initializing default output format [%{asbd}]";
        return sub_1FEC(&dword_14150, "OSStatus VerifyDefaultOutputFormat(APHALAudioStreamStorage *)", v3, v4);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        v4 = "Initializing default output format [%{asbd}]";
        return sub_1FEC(&dword_14150, "OSStatus VerifyDefaultOutputFormat(APHALAudioStreamStorage *)", v3, v4);
      }
    }
  }

  return result;
}

uint64_t sub_A3F0(uint64_t a1, _DWORD *a2, __n128 a3)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_67E0();
  sub_8A10();
  result = FigSignalErrorAtGM(v4);
  *a2 = result;
  return result;
}

uint64_t sub_A4A4(_DWORD *a1, __n128 a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_67E0();
  sub_8A10();
  result = FigSignalErrorAtGM(v3);
  *a1 = result;
  return result;
}

uint64_t sub_A57C(_DWORD *a1, __n128 a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_67E0();
  sub_8A10();
  result = FigSignalErrorAtGM(v3);
  *a1 = result;
  return result;
}

uint64_t sub_A6A8(_DWORD *a1, __n128 a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_67E0();
  sub_8A10();
  result = FigSignalErrorAtGM(v3);
  *a1 = result;
  return result;
}

uint64_t sub_A760(uint64_t a1, uint64_t a2, __n128 a3)
{
  result = APSLogErrorAt();
  *(*a2 + 168) = 1;
  return result;
}

uint64_t sub_A8A8(_DWORD *a1, __n128 a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_67E0();
  sub_8A10();
  result = FigSignalErrorAtGM(v3);
  *a1 = result;
  return result;
}