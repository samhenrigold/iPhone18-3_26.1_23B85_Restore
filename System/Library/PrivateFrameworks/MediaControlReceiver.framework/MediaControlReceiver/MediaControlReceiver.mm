void AirPlayReceiverXPCClient_SetDelegateWithQueue(NSObject *a1, NSObject *a2)
{
  v2 = gAirPlayReceiverXPCClient;
  if (a1)
  {
    if (!gAirPlayReceiverXPCClient)
    {
      v5 = malloc_type_calloc(1uLL, 0x48uLL, 0x108004037DC1CDFuLL);
      if (v5)
      {
        v6 = v5;
        v7 = dispatch_queue_create("AirPlayReceiverXPCClient", 0);
        *v6 = v7;
        if (v7)
        {
          dispatch_set_context(v7, v6);
          dispatch_set_finalizer_f(*v6, _AirPlayReceiverXPCClient_Finalize);
          if (gLogCategory_AirPlayReceiverXPCClientCore <= 30 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "OSStatus AirPlayReceiverXPCClient_Create(AirPlayReceiverXPCClientRef *)", 33554462, "Created %{ptr}\n", v6);
          }

          gAirPlayReceiverXPCClient = v6;
          v6[4] = a1;
          if (a2)
          {
            v10 = a2;
          }

          else
          {
            v10 = MEMORY[0x277D85CD0];
          }

          v6[1] = v10;
          dispatch_retain(v10);
          v11 = *gAirPlayReceiverXPCClient;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __AirPlayReceiverXPCClient_Connect_block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = gAirPlayReceiverXPCClient;
          dispatch_async(v11, block);
        }

        else
        {
          APSLogErrorAt();

          free(v6);
        }
      }

      else
      {

        APSLogErrorAt();
      }
    }
  }

  else if (gAirPlayReceiverXPCClient)
  {
    if (gLogCategory_AirPlayReceiverXPCClientCore <= 30 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void AirPlayReceiverXPCClient_Delete(AirPlayReceiverXPCClientRef)", 33554462, "Deleting %{ptr}\n", v2);
    }

    v8 = dispatch_semaphore_create(0);
    *(v2 + 16) = v8;
    dispatch_async_f(*v2, v2, _AirPlayReceiverXPCClient_Delete);
    if (v8)
    {
      dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v8);
    }

    v9 = *(v2 + 8);
    if (v9)
    {
      dispatch_release(v9);
    }

    gAirPlayReceiverXPCClient = 0;
  }
}

void _AirPlayReceiverXPCClient_Delete(uint64_t a1)
{
  _AirPlayReceiverXPCClient_StopAllActiveSessions(a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    xpc_connection_cancel(*(a1 + 24));
    xpc_release(v2);
    *(a1 + 24) = 0;
  }

  dispatch_release(*a1);
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 30 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_Delete(void *)", 33554462, "Deleted   %{ptr}\n", a1);
  }
}

void _AirPlayReceiverXPCClient_StopAllActiveSessions(_BYTE *result)
{
  if (!result[56])
  {
    if (result[57])
    {
      _AirPlayReceiverXPCClient_StopAudio(result, 0);
    }

    if (result[58])
    {
      _AirPlayReceiverXPCClient_StopPresentation(result, 0);
    }

    if (result[59])
    {

      _AirPlayReceiverXPCClient_StopVideo(result, 0);
    }
  }
}

void _AirPlayReceiverXPCClient_StopAudio(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v4 = xpc_dictionary_copy_cf_object();
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        APSLogErrorAt();
        *(v9 + 6) = -6756;
LABEL_7:
        reply = xpc_dictionary_create_reply(a2);
        xpc_dictionary_set_int64(reply, "error", *(v9 + 6));
        xpc_connection_send_message(*(a1 + 24), reply);
        xpc_release(reply);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 57) = 0;
  v5 = *(a1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___AirPlayReceiverXPCClient_StopAudio_block_invoke;
  block[3] = &unk_27989A228;
  block[5] = &v8;
  block[6] = a1;
  block[4] = v4;
  dispatch_sync(v5, block);
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_8:

  _Block_object_dispose(&v8, 8);
}

void sub_2585664F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_StopPresentation(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v4 = xpc_dictionary_copy_cf_object();
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        APSLogErrorAt();
        *(v9 + 6) = -6756;
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 48) removeFromSuperlayer];

  *(a1 + 48) = 0;
  *(a1 + 58) = 0;
  *(a1 + 64) = 0;
  [MEMORY[0x277CD9FF0] flush];
  [MEMORY[0x277CD9FF0] synchronize];
  if (*(a1 + 40))
  {
    if (gLogCategory_AirPlayReceiverXPCClientCore <= 40 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_StopPresentation(AirPlayReceiverXPCClientRef, xpc_object_t)", 33554472, "Stopping presentation\n");
    }

    *(a1 + 40) = 0;
    if (*(a1 + 32))
    {
      v5 = *(a1 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___AirPlayReceiverXPCClient_StopPresentation_block_invoke;
      block[3] = &unk_27989A228;
      block[5] = &v8;
      block[6] = a1;
      block[4] = v4;
      dispatch_sync(v5, block);
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      APSLogErrorAt();
      *(v9 + 6) = -6745;
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  if (gLogCategory_AirPlayReceiverXPCClientCore <= 50 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_StopPresentation(AirPlayReceiverXPCClientRef, xpc_object_t)", 33554482, "Ignoring stop of inactive presentation\n");
  }

  *(v9 + 6) = 0;
  if (a2)
  {
LABEL_19:
    reply = xpc_dictionary_create_reply(a2);
    xpc_dictionary_set_int64(reply, "error", *(v9 + 6));
    xpc_connection_send_message(*(a1 + 24), reply);
    xpc_release(reply);
  }

LABEL_20:

  _Block_object_dispose(&v8, 8);
}

void sub_258566794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_StopVideo(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v4 = xpc_dictionary_copy_cf_object();
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        APSLogErrorAt();
        *(v9 + 6) = -6756;
LABEL_7:
        reply = xpc_dictionary_create_reply(a2);
        xpc_dictionary_set_int64(reply, "error", *(v9 + 6));
        xpc_connection_send_message(*(a1 + 24), reply);
        xpc_release(reply);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 59) = 0;
  v5 = *(a1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___AirPlayReceiverXPCClient_StopVideo_block_invoke;
  block[3] = &unk_27989A228;
  block[5] = &v8;
  block[6] = a1;
  block[4] = v4;
  dispatch_sync(v5, block);
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_8:

  _Block_object_dispose(&v8, 8);
}

void sub_258566904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258567BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_SendPingMsg(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "function", "ping");
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 30 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_SendPingMsg(AirPlayReceiverXPCClientRef)", 33554462, "Posting Ping message(%{ptr})\n", *(a1 + 24));
  }

  xpc_connection_send_message(*(a1 + 24), v2);

  xpc_release(v2);
}

void _AirPlayReceiverXPCClient_HideProgress(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 40 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_HideProgress(AirPlayReceiverXPCClientRef, xpc_object_t)", 33554472, "Hiding presentation progress\n");
  }

  if (*(a1 + 32))
  {
    v4 = *(a1 + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___AirPlayReceiverXPCClient_HideProgress_block_invoke;
    v6[3] = &unk_27989A308;
    v6[4] = &v7;
    v6[5] = a1;
    dispatch_sync(v4, v6);
  }

  else
  {
    APSLogErrorAt();
    *(v8 + 6) = -6745;
  }

  reply = xpc_dictionary_create_reply(a2);
  xpc_dictionary_set_int64(reply, "error", *(v8 + 6));
  xpc_connection_send_message(*(a1 + 24), reply);
  xpc_release(reply);
  _Block_object_dispose(&v7, 8);
}

void sub_258568044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_StartVideo(uint64_t a1, void *a2)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v4 = xpc_dictionary_copy_cf_object();
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v5 = [v4 objectForKey:@"Content-Location"], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    APSLogErrorAt();
    *(v30 + 6) = -6756;
    goto LABEL_28;
  }

  Value = CFDictionaryGetValue(v4, @"cookies");
  v7 = Value;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 == CFArrayGetTypeID())
    {
      if (_CFHTTPCookieStorageGetDefault())
      {
        v9 = CFURLCreateWithString(0, v5, 0);
        if (v9)
        {
          v10 = CFHTTPCookieStorageCopyCookiesForURL();
          CFRelease(v9);
          if (v10)
          {
            Count = CFArrayGetCount(v10);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                CFArrayGetValueAtIndex(v10, i);
                CFHTTPCookieStorageDeleteCookie();
              }
            }

            CFRelease(v10);
          }

          v13 = CFArrayGetCount(v7);
          if (v13 < 1)
          {
LABEL_19:
            *(v30 + 6) = 0;
            if (gLogCategory_AirPlayReceiverXPCClientCore <= 20 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_StartVideo(AirPlayReceiverXPCClientRef, xpc_object_t)", 33554452, "Set cookies for URL '%@':\n%@\n", v5, v7);
            }

            goto LABEL_23;
          }

          v14 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, v14);
            if (!ValueAtIndex || (v16 = CFGetTypeID(ValueAtIndex), v16 != CFDictionaryGetTypeID()))
            {
              v21 = 4294960540;
              goto LABEL_33;
            }

            v17 = CFHTTPCookieCreateWithProperties();
            if (!v17)
            {
              break;
            }

            CFHTTPCookieStorageSetCookie();
            CFRelease(v17);
            if (v13 == ++v14)
            {
              goto LABEL_19;
            }
          }

          v21 = 4294960596;
        }

        else
        {
          v21 = 4294960596;
        }
      }

      else
      {
        v21 = 4294960596;
      }

LABEL_33:
      APSLogErrorAt();
      *(v30 + 6) = v21;
      if (gLogCategory_AirPlayReceiverXPCClientCore <= 60)
      {
        if (gLogCategory_AirPlayReceiverXPCClientCore != -1)
        {
LABEL_35:
          LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_StartVideo(AirPlayReceiverXPCClientRef, xpc_object_t)", 33554492, "### Set cookies failed for URL %@: %#m\n", v5, v21);
          goto LABEL_23;
        }

        if (_LogCategory_Initialize())
        {
          v21 = *(v30 + 6);
          goto LABEL_35;
        }
      }
    }
  }

LABEL_23:
  *(v30 + 6) = -6700;
  v18 = *(a1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___AirPlayReceiverXPCClient_StartVideo_block_invoke;
  block[3] = &unk_27989A2E0;
  block[4] = v4;
  block[5] = &v29;
  block[6] = &v23;
  block[7] = a1;
  dispatch_sync(v18, block);
  if (!*(v30 + 6))
  {
    *(a1 + 59) = 1;
    if (v4)
    {
      Int64 = CFDictionaryGetInt64();
    }

    else
    {
      Int64 = 0;
    }

    *(a1 + 68) = Int64;
  }

LABEL_28:
  reply = xpc_dictionary_create_reply(a2);
  xpc_dictionary_set_int64(reply, "error", *(v30 + 6));
  if (v24[5])
  {
    xpc_dictionary_set_cf_object();
  }

  xpc_connection_send_message(*(a1 + 24), reply);
  xpc_release(reply);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
}

void sub_25856850C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 120), 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_StartAudio(uint64_t a1, void *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v4 = xpc_dictionary_copy_cf_object();
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    APSLogErrorAt();
    *(v16 + 6) = -6756;
  }

  else
  {
    *(v16 + 6) = -6700;
    v5 = *(a1 + 8);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___AirPlayReceiverXPCClient_StartAudio_block_invoke;
    v8[3] = &unk_27989A2E0;
    v8[4] = v4;
    v8[5] = &v15;
    v8[6] = &v9;
    v8[7] = a1;
    dispatch_sync(v5, v8);
    if (!*(v16 + 6))
    {
      *(a1 + 57) = 1;
      if (v4)
      {
        Int64 = CFDictionaryGetInt64();
      }

      else
      {
        Int64 = 0;
      }

      *(a1 + 60) = Int64;
    }
  }

  reply = xpc_dictionary_create_reply(a2);
  xpc_dictionary_set_int64(reply, "error", *(v16 + 6));
  if (v10[5])
  {
    xpc_dictionary_set_cf_object();
  }

  xpc_connection_send_message(*(a1 + 24), reply);
  xpc_release(reply);

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);
}

void sub_25856873C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_UpdateAudioMetaData(uint64_t a1, void *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = xpc_dictionary_copy_cf_object();
  if (!v4)
  {
    APSLogErrorAt();
    v7 = v11;
    v8 = -6705;
LABEL_7:
    *(v7 + 6) = v8;
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    APSLogErrorAt();
    v7 = v11;
    v8 = -6756;
    goto LABEL_7;
  }

  v5 = *(a1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___AirPlayReceiverXPCClient_UpdateAudioMetaData_block_invoke;
  block[3] = &unk_27989A228;
  block[5] = &v10;
  block[6] = a1;
  block[4] = v4;
  dispatch_sync(v5, block);
LABEL_4:
  reply = xpc_dictionary_create_reply(a2);
  xpc_dictionary_set_int64(reply, "error", *(v11 + 6));
  xpc_connection_send_message(*(a1 + 24), reply);
  xpc_release(reply);

  _Block_object_dispose(&v10, 8);
}

void sub_2585688D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_UpdateAudioProgress(uint64_t a1, xpc_object_t xdict)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = xpc_dictionary_get_double(xdict, "position");
  v5 = xpc_dictionary_get_double(xdict, "duration");
  v6 = *(a1 + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___AirPlayReceiverXPCClient_UpdateAudioProgress_block_invoke;
  v8[3] = &unk_27989A330;
  v8[4] = &v9;
  v8[5] = a1;
  *&v8[6] = v4;
  *&v8[7] = v5;
  dispatch_sync(v6, v8);
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_int64(reply, "error", *(v10 + 6));
  xpc_connection_send_message(*(a1 + 24), reply);
  xpc_release(reply);
  _Block_object_dispose(&v9, 8);
}

void sub_2585689F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_Detach(uint64_t a1, xpc_object_t original)
{
  *(a1 + 56) = 1;
  reply = xpc_dictionary_create_reply(original);
  xpc_dictionary_set_int64(reply, "error", 0);
  xpc_connection_send_message(*(a1 + 24), reply);

  xpc_release(reply);
}

void _AirPlayReceiverXPCClient_Finalize(void *a1)
{
  *a1 = 0;
  v2 = a1[2];
  if (v2)
  {
    dispatch_semaphore_signal(v2);
  }

  if (gLogCategory_AirPlayReceiverXPCClientCore <= 30 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_Finalize(void *)", 33554462, "Finalized %{ptr}\n", a1);
  }

  free(a1);
}

void AirPlayReceiverXPCClient_PostEvent(char *__s1, CFTypeRef cf)
{
  v2 = gAirPlayReceiverXPCClient;
  if (!gAirPlayReceiverXPCClient)
  {
    return;
  }

  if (!cf)
  {
    v7 = strdup(__s1);
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_9:

    APSLogErrorAt();
    return;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFDictionaryGetTypeID())
  {
    v6 = strdup(__s1);
    if (v6)
    {
      v7 = v6;
      CFRetain(cf);
LABEL_7:
      v8 = *v2;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __AirPlayReceiverXPCClient_PostEvent_block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = v2;
      block[5] = v7;
      block[6] = cf;
      dispatch_async(v8, block);
      return;
    }

    goto LABEL_9;
  }

  APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 60 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void AirPlayReceiverXPCClient_PostEvent(const char *, CFTypeRef)", 33554492, "### Bad event params:\n%1@\n", cf);
  }
}

id APReceiverMediaRemoteXPCClient_SetDelegate(void *a1)
{
  if (APReceiverMediaRemoteXPCClientGetShared_once != -1)
  {
    dispatch_once(&APReceiverMediaRemoteXPCClientGetShared_once, &__block_literal_global);
  }

  v2 = APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient;
  APSXPCClientAddEventHandler();
  APSXPCClientAddEventHandler();
  APSXPCClientAddEventHandler();
  APSXPCClientAddEventHandler();
  result = a1;
  *v2 = result;
  return result;
}

void aprmrc_handleEvents(CFTypeRef cf1, const __CFDictionary *a2)
{
  if (APReceiverMediaRemoteXPCClientGetShared_once != -1)
  {
    dispatch_once(&APReceiverMediaRemoteXPCClientGetShared_once, &__block_literal_global);
  }

  v4 = APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient;
  if (gLogCategory_APReceiverMediaRemoteXPCClient <= 40 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void aprmrc_handleEvents(CFStringRef, CFDictionaryRef)", 33554472, "Got event: %@\n", cf1);
  }

  if (CFEqual(cf1, @"didReceiveMediaRemoteData"))
  {
    Value = CFDictionaryGetValue(a2, @"objectID");
    v6 = CFDictionaryGetValue(a2, @"data");
    if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
    {
      Length = CFDataGetLength(v6);
      LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void aprmrc_handleEvents(CFStringRef, CFDictionaryRef)", 33554482, "Got event: %@ Payload size: %d\n", cf1, Length);
    }

    pthread_mutex_lock((v4 + 24));
    v14 = CFDictionaryGetValue(*(v4 + 8), Value);
    if (v14)
    {
      v13 = v14;
      CFRetain(v14);
    }

    else
    {
      v13 = [[APReceiverMediaRemoteCommunicationChannel alloc] initWithDictionary:a2];
      CFDictionaryAddValue(*(v4 + 8), Value, v13);
      if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void aprmrc_handleEvents(CFStringRef, CFDictionaryRef)", 33554482, "Client communication channels dictionary after addition: %@\n", *(v4 + 8));
      }
    }

    pthread_mutex_unlock((v4 + 24));
    [*v4 didReceiveData:v6 fromCommunicationChannel:v13];
    if (v13)
    {
LABEL_37:
      v17 = v13;
      goto LABEL_38;
    }
  }

  else if (CFEqual(cf1, @"didCloseCommChannel"))
  {
    v8 = CFDictionaryGetValue(a2, @"objectID");
    pthread_mutex_lock((v4 + 24));
    v9 = CFDictionaryGetValue(*(v4 + 8), v8);
    v10 = v9;
    if (v9)
    {
      CFRetain(v9);
      [(APReceiverMediaRemoteCommunicationChannel *)v10 invalidate];
      CFDictionaryRemoveValue(*(v4 + 8), v8);
      CFDictionaryRemoveValue(*(v4 + 16), v8);
    }

    if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void aprmrc_handleEvents(CFStringRef, CFDictionaryRef)", 33554482, "Client communication channels dictionary after deletion: %@\n", *(v4 + 8));
    }

    pthread_mutex_unlock((v4 + 24));
    [*v4 didCloseCommunicationChannel:v10];
    if (v10)
    {
      v17 = v10;
LABEL_38:

      CFRelease(v17);
    }
  }

  else if (CFEqual(cf1, @"didSetupReverseCommChannel"))
  {
    v11 = CFDictionaryGetValue(a2, @"objectID");
    pthread_mutex_lock((v4 + 24));
    v12 = CFDictionaryGetValue(*(v4 + 8), v11);
    if (v12)
    {
      v13 = v12;
      CFRetain(v12);
      if (gLogCategory_APReceiverMediaRemoteXPCClient < 91 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void aprmrc_handleEvents(CFStringRef, CFDictionaryRef)", 33554522, "### Comm channel with ID %@ UUID %@ already exists: %@\n", v11, [(APReceiverMediaRemoteCommunicationChannel *)v13 uuid], *(v4 + 8));
      }
    }

    else
    {
      v13 = [[APReceiverMediaRemoteCommunicationChannel alloc] initWithDictionary:a2];
      CFDictionaryAddValue(*(v4 + 8), v11, v13);
      CFDictionaryAddValue(*(v4 + 16), v11, v13);
      if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void aprmrc_handleEvents(CFStringRef, CFDictionaryRef)", 33554482, "Client communication channels dictionary after addition: %@\n", *(v4 + 8));
      }
    }

    pthread_mutex_unlock((v4 + 24));
    [*v4 didSetupReverseCommunicationChannel:v13];
    if (v13)
    {
      goto LABEL_37;
    }
  }

  else if (CFEqual(cf1, @"failedToSetupReverseCommChannel"))
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v16 = CFDictionaryGetValue(a2, @"clientUUID");
    if (gLogCategory_APReceiverMediaRemoteXPCClient <= 90 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void aprmrc_handleEvents(CFStringRef, CFDictionaryRef)", 33554522, "### Reverse communication channel creation for UUID %@ failed with err %m\n", v16, Int64Ranged);
    }

    v18 = *v4;

    [v18 failedToSetupReverseCommunicationChannel:v16];
  }

  else if (!CFEqual(cf1, @"connectAck") && gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void aprmrc_handleEvents(CFStringRef, CFDictionaryRef)", 33554482, "Event %@ not supported\n", cf1);
  }
}

uint64_t __APReceiverMediaRemoteXPCClientGetShared_block_invoke()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A004096F084F8uLL);
  if (v0)
  {
    v1 = v0;
    v2 = *MEMORY[0x277CBECE8];
    v3 = MEMORY[0x277CBF138];
    v4 = MEMORY[0x277CBF150];
    v0[1] = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v1 + 16) = CFDictionaryCreateMutable(v2, 0, v3, v4);
    pthread_mutex_init((v1 + 24), 0);
    APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient = v1;
    LocalCenter = CFNotificationCenterGetLocalCenter();
    v6 = APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient;
    DisconnectNotificationName = APSXPCClientGetDisconnectNotificationName();
    CFNotificationCenterAddObserver(LocalCenter, v6, aprmrc_handleServerDeath, DisconnectNotificationName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    APSLogErrorAt();
    APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient = 0;
  }

  if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void _StartAgentService(void)", 33554482, "Starting %@ server", @"com.apple.airplay.receiver.mediaremote.agent.services");
  }

  v13 = *MEMORY[0x277CEA3A0];
  v14[0] = @"com.apple.airplay.receiver.mediaremote.agent.services.allow";
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  result = APSXPCServerStart();
  if (result)
  {
    if (gLogCategory_APReceiverMediaRemoteXPCClient <= 90)
    {
      if (gLogCategory_APReceiverMediaRemoteXPCClient != -1)
      {
        return LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void _StartAgentService(void)", 33554522, "Failed to start %@ with err: %d", @"com.apple.airplay.receiver.mediaremote.agent.services", result);
      }

      v9 = result;
      v10 = _LogCategory_Initialize();
      result = v9;
      if (v10)
      {
        return LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void _StartAgentService(void)", 33554522, "Failed to start %@ with err: %d", @"com.apple.airplay.receiver.mediaremote.agent.services", result);
      }
    }
  }

  else
  {
    result = APSXPCServerAddCommandHandler();
    if (result)
    {
      if (gLogCategory_APReceiverMediaRemoteXPCClient <= 90)
      {
        if (gLogCategory_APReceiverMediaRemoteXPCClient != -1)
        {
          return LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void _StartAgentService(void)", 33554522, "Failed to add command handler for %@ command with err: %d", @"connect", result);
        }

        v11 = result;
        v12 = _LogCategory_Initialize();
        result = v11;
        if (v12)
        {
          return LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void _StartAgentService(void)", 33554522, "Failed to add command handler for %@ command with err: %d", @"connect", result);
        }
      }
    }
  }

  return result;
}

uint64_t _HandleReceiverProcessConnect(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50)
  {
    if (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "OSStatus _HandleReceiverProcessConnect(CFStringRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Agent server received %'@ from the receiver process\n", a1);
    }

    if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "OSStatus _HandleReceiverProcessConnect(CFStringRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Sending %'@ to %@\n", @"connect", @"com.apple.airplay.receiver.mediaremote.services");
    }
  }

  v5 = APSXPCClientSendCommandCreatingReply();
  if (v5 && gLogCategory_APReceiverMediaRemoteXPCClient <= 90 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "OSStatus _HandleReceiverProcessConnect(CFStringRef, CFDictionaryRef, CFDictionaryRef *)", 33554522, "Connect to %@ failed with error: %#m\n", @"com.apple.airplay.receiver.mediaremote.services", v5);
  }

  *a3 = 0;
  return v5;
}

void aprmrc_handleServerDeath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
  {
    v4 = getprogname();
    LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void aprmrc_handleServerDeath(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)", 33554482, "### %s: got '%@' notification.\n", v4, a3);
  }

  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_async(global_queue, &__block_literal_global_89);
}

uint64_t __aprmrc_handleServerDeath_block_invoke()
{
  if (APReceiverMediaRemoteXPCClientGetShared_once != -1)
  {
    dispatch_once(&APReceiverMediaRemoteXPCClientGetShared_once, &__block_literal_global);
  }

  v0 = APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient;
  pthread_mutex_lock((APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient + 24));
  v1 = *(v0 + 8);
  if (v1)
  {
    Count = CFDictionaryGetCount(v1);
    v3 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(*(v0 + 8), v3, 0);
    if (Count >= 1)
    {
      v4 = v3;
      do
      {
        v5 = *v4;
        Value = CFDictionaryGetValue(*(v0 + 8), *v4);
        if (Value)
        {
          v7 = Value;
          [Value invalidate];
          [*v0 didCloseCommunicationChannel:v7];
          CFDictionaryRemoveValue(*(v0 + 8), v5);
        }

        ++v4;
        --Count;
      }

      while (Count);
    }

    free(v3);
  }

  else if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void aprmrc_handleServerDeath(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)_block_invoke", 33554482, "No commChannels created until now.\n");
  }

  result = pthread_mutex_unlock((v0 + 24));
  if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50)
  {
    if (gLogCategory_APReceiverMediaRemoteXPCClient != -1)
    {
      return LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void aprmrc_handleServerDeath(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)_block_invoke", 33554482, "Client communication channels dictionary after comm channel closure: %@\n", *(v0 + 8));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void aprmrc_handleServerDeath(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)_block_invoke", 33554482, "Client communication channels dictionary after comm channel closure: %@\n", *(v0 + 8));
    }
  }

  return result;
}

const void *APReceiverMediaRemoteXPCClient_CopyProperty(const void *a1, int *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"propertyKey", a1);
    if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "CFTypeRef  _Nonnull APReceiverMediaRemoteXPCClient_CopyProperty(CFStringRef _Nonnull, OSStatus * _Nonnull)", 33554482, "Copy property %@ from server\n", a1);
    }

    v6 = APSXPCClientSendCommandCreatingReply();
    v7 = v6;
    if (v6 != -6727)
    {
      if (v6)
      {
        APSLogErrorAt();
      }

      else
      {
        APSLogErrorAt();
        v7 = -6700;
      }
    }
  }

  else
  {
    APSLogErrorAt();
    v7 = -6728;
  }

  if (a2)
  {
    *a2 = v7;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

uint64_t APReceiverMediaRemoteXPCClient_SetProperty(const void *a1, const void *a2)
{
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionarySetValue(Mutable, @"propertyKey", a1);
      CFDictionarySetValue(v5, @"propertyValue", a2);
      if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "OSStatus APReceiverMediaRemoteXPCClient_SetProperty(CFStringRef _Nonnull, CFTypeRef _Nonnull)", 33554482, "Set property %@ to value %@\n", a1, a2);
      }

      v6 = APSXPCClientSendCommandCreatingReply();
      if (v6)
      {
        APSLogErrorAt();
      }

      CFRelease(v5);
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
    return 4294960591;
  }

  return v6;
}

void APReceiverMediaRemoteXPCClient_SetupReverseRemoteCommunicationChannel(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, @"clientUUID", a1);
    if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "void APReceiverMediaRemoteXPCClient_SetupReverseRemoteCommunicationChannel(CFStringRef _Nonnull)", 33554482, "SetupReverseRemoteControlChannel with UUID %@ from server\n", a1);
    }

    if (APSXPCClientSendCommandCreatingReply())
    {
      APSLogErrorAt();
      CFDictionarySetInt64();
      aprmrc_handleEvents(@"failedToSetupReverseCommChannel", v3);
    }

    CFRelease(v3);
  }

  else
  {
    APSLogErrorAt();
    CFDictionarySetInt64();

    aprmrc_handleEvents(@"failedToSetupReverseCommChannel", 0);
  }
}

uint64_t APReceiverMediaRemoteXPCClient_TeardownReverseRemoteCommunicationChannel(void *a1)
{
  if (APReceiverMediaRemoteXPCClientGetShared_once != -1)
  {
    dispatch_once(&APReceiverMediaRemoteXPCClientGetShared_once, &__block_literal_global);
  }

  v2 = APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient;
  v3 = [a1 objectID];
  if (a1)
  {
    v4 = v3;
    pthread_mutex_lock((v2 + 24));
    v5 = CFDictionaryContainsValue(*(v2 + 16), a1);
    pthread_mutex_unlock((v2 + 24));
    if (v5)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v7 = Mutable;
        CFDictionarySetValue(Mutable, @"objectID", v4);
        if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverMediaRemoteXPCClient, "OSStatus APReceiverMediaRemoteXPCClient_TeardownReverseRemoteCommunicationChannel(APReceiverMediaRemoteCommunicationChannel * _Nonnull)", 33554482, "Teardown with objectID %@ from server\n", v4);
        }

        v8 = APSXPCClientSendCommandCreatingReply();
        if (v8)
        {
          APSLogErrorAt();
        }

        CFRelease(v7);
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
      return 4294960569;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return v8;
}