void sub_11D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_1214(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  v3 = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v4 = v3;
    if (v3)
    {
      v5 = Weak;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_12B4;
      block[3] = &unk_8388;
      block[4] = Weak;
      dispatch_async(v4, block);
    }
  }
}

void sub_12B4(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    v2 = [objc_msgSend(+[AVOutputContext sharedSystemRemoteDisplayContext](AVOutputContext "sharedSystemRemoteDisplayContext")];
    if (v2 == &dword_0 + 2)
    {
      if (dword_C9B0 <= 50)
      {
        if (dword_C9B0 != -1 || (v2 = _LogCategory_Initialize(), v2))
        {
          sub_34D4(v2, v3, v4);
        }
      }

      [*(a1 + 32) createNewDevice];
    }

    else
    {
      if (dword_C9B0 <= 50)
      {
        if (dword_C9B0 != -1 || (v2 = _LogCategory_Initialize(), v2))
        {
          sub_34B8(v2, v3, v4);
        }
      }

      if ([*(*(a1 + 32) + 24) count])
      {
        v5 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:0];
        if (v5)
        {
          v6 = v5;
          [v5 stopRecordingWithOptionalForcedError:1919115630];
          [*(a1 + 32) destroyDevice:v6];
        }
      }
    }
  }

  v7 = *(a1 + 32);
}

void sub_14D4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v1);
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    *(*(a1 + 32) + 24) = 0;
  }
}

uint64_t sub_1828(const void *a1)
{
  if (dword_C9B0 <= 30 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
  {
    sub_3534(a1);
  }

  return avvcDevice_clientDeadConnection(a1);
}

uint64_t sub_1898(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (dword_C9B0 <= 50)
  {
    if (dword_C9B0 != -1)
    {
      return sub_3578(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_3578(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_18FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554482, a4);
}

void sub_2124(uint64_t a1)
{
  cf = 0;
  v31 = 0;
  v29 = 0;
  v2 = (a1 + 32);
  v28 = *[*(*(a1 + 32) + 176) streamDescription];
  if (dword_CAE0 <= 50 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
  {
    sub_3B7C(v2, v3, v4);
  }

  *(*(a1 + 32) + 160) = _Block_copy(*(a1 + 48));
  *(*(a1 + 32) + 144) = [[NSMutableDictionary alloc] initWithCapacity:{1, v28}];
  if (!*(*(a1 + 32) + 144))
  {
    sub_3C74();
    v27 = 4294960568;
    goto LABEL_28;
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v27 = 4294954514;
LABEL_27:
    APSLogErrorAt();
    goto LABEL_28;
  }

  v7 = v6(CMBaseObject, kAPEndpointStreamCarPlayAudioProperty_CarPlayAudioFormats, 0, &v31);
  if (v7)
  {
    v27 = v7;
    goto LABEL_27;
  }

  v8 = APCarPlayAudioFormatsCopyFormatInfoForStreamDescription();
  if (v8)
  {
    v27 = v8;
    sub_3BC0(v8);
    goto LABEL_28;
  }

  v9 = FigEndpointStreamGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v10)
  {
    v27 = 4294954514;
    goto LABEL_27;
  }

  v11 = v10(v9, kAPEndpointStreamCarPlayAudioProperty_AudioFormatInfo, cf);
  if (v11)
  {
    v27 = v11;
    goto LABEL_27;
  }

  [*(*v2 + 22) streamDescription];
  v12 = APAudioSinkSharedMemRemoteCreate();
  if (v12)
  {
    v27 = v12;
    sub_3BE8(v12);
    goto LABEL_28;
  }

  v13 = *(*v2 + 4);
  v14 = FigEndpointStreamGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v15)
  {
    v27 = 4294954514;
    goto LABEL_27;
  }

  v16 = v15(v14, kFigEndpointStreamProperty_AudioSink, v13);
  if (v16)
  {
    v27 = v16;
    goto LABEL_27;
  }

  v17 = *(*v2 + 4);
  v18 = *(CMBaseObjectGetVTable() + 16);
  if (*v18 < 2uLL)
  {
    v27 = 4294954515;
    goto LABEL_27;
  }

  v19 = v18[3];
  if (!v19)
  {
    v27 = 4294954514;
    goto LABEL_27;
  }

  v20 = v19(v17);
  if (v20)
  {
    v27 = v20;
    goto LABEL_27;
  }

  [*(a1 + 32) insertStreamStartTimestamp:*(a1 + 40) returnOptions:&v29];
  v21 = FigEndpointStreamResumeSync();
  if (v21)
  {
    v27 = v21;
    sub_3C10(v21);
  }

  else
  {
    v22 = *v2;
    *(v22 + 120) = 0u;
    *(v22 + 104) = 0u;
    *(v22 + 88) = 0u;
    *(v22 + 72) = 0u;
    *(*v2 + 10) = *(*v2 + 8);
    *(*v2 + 32) = 3;
    *(*v2 + 48) = 1;
    APSPowerAssertionRaise();
    dispatch_source_set_timer(*(*v2 + 7), 0, 0x4C4B40uLL, 0xFAuLL);
    dispatch_resume(*(*v2 + 7));
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, *v2, sub_1C68, kAPCarPlayAVVCNotification_StateIncompatibleWithAuxIn, 0, 0);
    if (dword_CAE0 <= 30)
    {
      if (dword_CAE0 != -1 || (v24 = _LogCategory_Initialize(), v24))
      {
        sub_3C38(v24, v25, v26);
      }
    }

    v27 = 0;
  }

LABEL_28:
  [*v2 actionCompleted:@"Start recording" WithResult:v27];
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v29)
  {
    CFRelease(v29);
  }
}

void sub_2668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (!v4[48])
  {
    goto LABEL_11;
  }

  if (dword_CAE0 <= 50)
  {
    if (dword_CAE0 != -1 || (v6 = _LogCategory_Initialize(), v4 = *v5, v6))
    {
      LogPrintF(&dword_CAE0, "[APCarPlayAVVCDevice stopRecordingWithOptionalForcedError:]_block_invoke", 33554482, "Stopping recording; numPacketsProcessed = %d\n", *(v4 + 39));
      v4 = *v5;
    }
  }

  v4[48] = 0;
  dispatch_suspend(*(*v5 + 7));
  v7 = FigEndpointStreamSuspendSync();
  if (v7)
  {
    v12 = v7;
    sub_3C88(v7);
  }

  else
  {
    v8 = *(*v5 + 4);
    v9 = *(CMBaseObjectGetVTable() + 16);
    if (*v9 < 2uLL)
    {
      v12 = -12781;
    }

    else
    {
      v10 = v9[4];
      if (v10)
      {
        v11 = v10(v8);
        if (!v11)
        {
          sub_3CDC(v5);
LABEL_11:
          sub_3DD8(&v16, a2, a3);
          v12 = v16;
          goto LABEL_18;
        }

        v12 = v11;
      }

      else
      {
        v12 = -12782;
      }
    }

    APSLogErrorAt();
  }

  if (dword_CAE0 <= 90 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
  {
    sub_3C98(v12);
  }

LABEL_18:
  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  [*(a1 + 32) actionCompleted:@"Stop recording" WithResult:v14];
  v15 = *(*(a1 + 32) + 160);
  if (v15)
  {
    _Block_release(v15);
    *(*v5 + 20) = 0;
  }
}

void *sub_28F8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 160);
  if (v2)
  {
    _Block_release(v2);
    *(*(a1 + 32) + 160) = 0;
  }

  result = _Block_copy(*(a1 + 40));
  *(*(a1 + 32) + 160) = result;
  return result;
}

uint64_t avvcDevice_clientDeadConnection(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == FigEndpointStreamGetTypeID())
  {

    return _APEndpointStreamCarPlayAudioRemote_ServerDied(a1);
  }

  else
  {
    v3 = CFGetTypeID(a1);
    if (v3 == FigEndpointAudioSinkGetTypeID())
    {

      return _APAudioSinkSharedMemRemote_ServerDied(a1);
    }

    else
    {
      v4 = CFGetTypeID(a1);
      result = FigEndpointGetTypeID();
      if (v4 == result)
      {

        return _APEndpointCarPlayRemote_ServerDied(a1);
      }
    }
  }

  return result;
}

uint64_t sub_310C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554462, a4);
}

void sub_3330(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    if (CFEqual(*(a1 + 40), kFigEndpointNotification_EndpointActivated))
    {
      [*(a1 + 32) createNewDevice];
      goto LABEL_12;
    }

    if (CFEqual(*(a1 + 40), kFigEndpointNotification_EndpointDeactivated))
    {
      if (*(a1 + 48) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v2 = *(a1 + 48);
      }

      else
      {
        if (![*(*(a1 + 32) + 24) count])
        {
          goto LABEL_12;
        }

        v2 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:0];
      }

      if (v2)
      {
        [v2 stopRecordingWithOptionalForcedError:1919115630];
        [*(a1 + 32) destroyDevice:v2];
      }
    }
  }

LABEL_12:
  v3 = *(a1 + 32);
}

uint64_t sub_3CDC(const void **a1)
{
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v3)
  {
    v3(CMBaseObject, kFigEndpointStreamProperty_AudioSink, 0);
  }

  v4 = *a1;
  v5 = *(*a1 + 4);
  if (v5)
  {
    CFRelease(v5);
    *(*a1 + 4) = 0;
    v4 = *a1;
  }

  *(*a1 + 18) = 0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *a1, kAPCarPlayAVVCNotification_StateIncompatibleWithAuxIn, *(*a1 + 2));
  v7 = *(*a1 + 21);

  return _APSPowerAssertionRelease(v7);
}

_DWORD *sub_3DD8(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (dword_CAE0 <= 30)
  {
    if (dword_CAE0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_310C(&dword_CAE0, "[APCarPlayAVVCDevice stopRecordingWithOptionalForcedError:]_block_invoke", a3, "Stop-recording completed successfully\n");
    }
  }

  *v3 = 0;
  return result;
}