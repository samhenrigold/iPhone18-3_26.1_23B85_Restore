uint64_t __usb_clientThreadSetup_block_invoke_2(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5)
{
  if (!a3)
  {
    a3 = &v9;
  }

  result = (*(**(*(a1 + 32) + 264) + 256))(*(*(a1 + 32) + 264), *(*(a1 + 32) + 274), a3);
  if (result)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  *a5 = v8;
  return result;
}

void usb_clientSendStartupPing(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = malloc_type_malloc(0x10uLL, 0x10000403E1C8BA9uLL);
  v2[2] = 1;
  *v2 = 0x70696E6700000010;
  v2[3] = *(DerivedStorage + 28);
  if (!(*(**(DerivedStorage + 264) + 224))(*(DerivedStorage + 264), *(DerivedStorage + 274)) && !(*(**(DerivedStorage + 264) + 272))(*(DerivedStorage + 264), *(DerivedStorage + 274), v2, 16, usb_pingAsyncCallback, v2))
  {
    v2 = 0;
  }

  free(v2);
}

void __usb_didReceivePackage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      (*(v3 + 16))(v3, 0, *(a1 + 40));
    }
  }

  CFRelease(*(a1 + 40));
  v4 = *(a1 + 48);

  CFRelease(v4);
}

uint64_t usb_deviceSendStartupPing(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  result = (*(**(DerivedStorage + 296) + 192))(*(DerivedStorage + 296), *(DerivedStorage + 312));
  if (!result)
  {
    v3 = *(DerivedStorage + 392);
    v4 = usb_deviceSendStartupPing_pingHeader;
    *(v3 + 8) = dword_1EAF1B708;
    *v3 = v4;
    *(*(DerivedStorage + 392) + 12) = *(DerivedStorage + 28);
    v5 = *(**(DerivedStorage + 296) + 176);

    return v5();
  }

  return result;
}

void __usb_setConnected_block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*v2)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      (*(v3 + 16))(v3, 1, a1[5]);
    }
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];

  CFRelease(v5);
}

uint64_t usb_serverThreadMain(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v25 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v25, &type);
  v4 = v25;
  v5 = type;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 0xFFFFFFFE;
  }

  if (v6)
  {
    v26 = 136315138;
    v27 = "usb_serverThreadMain";
    v7 = _os_log_send_and_compose_impl(v6, 0, v28, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v5, "<<< transportusb >>> %s: Called", &v26);
    LOBYTE(v4) = v25;
  }

  else
  {
    v7 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, v7, v7 != v28, v4);
  v8 = CMBaseObjectGetDerivedStorage(a1);
  v25 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v25, &type);
  v10 = v25;
  v11 = type;
  if (os_log_type_enabled(v9, type))
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 0xFFFFFFFE;
  }

  if (v12)
  {
    v26 = 136315138;
    v27 = "usb_serverThreadSetup";
    v13 = _os_log_send_and_compose_impl(v12, 0, v28, 128, &dword_196FA7000, v9, v11, "<<< transportusb >>> %s: Called", &v26);
    LOBYTE(v10) = v25;
  }

  else
  {
    v13 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, v13, v13 != v28, v10);
  Current = CFRunLoopGetCurrent();
  *(v8 + 136) = Current;
  if (!Current)
  {
    goto LABEL_25;
  }

  v15 = IOServiceMatching("IOUSBDeviceInterface");
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = v15;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable || (v18 = Mutable, CFDictionarySetValue(Mutable, @"USBDeviceFunction", *(v8 + 32)), CFDictionarySetValue(v16, @"IOPropertyMatch", v18), CFRelease(v18), v19 = IONotificationPortCreate(*MEMORY[0x1E696CD60]), (*(v8 + 256) = v19) == 0) || (RunLoopSource = IONotificationPortGetRunLoopSource(v19), (*(v8 + 264) = RunLoopSource) == 0))
  {
    CFRelease(v16);
LABEL_25:
    v22 = -12051;
    goto LABEL_19;
  }

  CFRunLoopAddSource(*(v8 + 136), RunLoopSource, *MEMORY[0x1E695E8E0]);
  v21 = (v8 + 272);
  v22 = IOServiceAddMatchingNotification(*(v8 + 256), "IOServiceFirstMatch", v16, usb_handleDeviceAttached, a1, (v8 + 272));
  if (v22)
  {
LABEL_19:
    usb_serverThreadTearDown(a1);
    goto LABEL_21;
  }

  usb_handleDeviceAttached(a1, *v21);
LABEL_21:
  *(DerivedStorage + 152) = v22;
  dispatch_semaphore_signal(*(DerivedStorage + 144));
  if (!v22)
  {
    CFRunLoopRun();
    usb_setDisconnected(a1);
    usb_serverThreadTearDown(a1);
  }

  return 0;
}

void usb_serverThreadTearDown(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  usb_deviceTearDown(a1);
  v3 = *(DerivedStorage + 272);
  if (v3)
  {
    IOObjectRelease(v3);
    *(DerivedStorage + 272) = 0;
  }

  v4 = *(DerivedStorage + 264);
  if (v4)
  {
    CFRunLoopRemoveSource(*(DerivedStorage + 136), v4, *MEMORY[0x1E695E8E0]);
  }

  v5 = *(DerivedStorage + 256);
  if (v5)
  {
    IONotificationPortDestroy(v5);
    *(DerivedStorage + 256) = 0;
  }

  *(DerivedStorage + 136) = 0;
}

uint64_t usb_handleDeviceAttached(void *a1, io_iterator_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  result = IOIteratorNext(a2);
  if (result)
  {
    v6 = result;
    v26 = *MEMORY[0x1E695E8E0];
    while (*(DerivedStorage + 280))
    {
LABEL_33:
      result = IOIteratorNext(a2);
      v6 = result;
      if (!result)
      {
        return result;
      }
    }

    v7 = CMBaseObjectGetDerivedStorage(a1);
    theInterface = 0;
    theScore = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v28, &type);
    v9 = v28;
    v10 = type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v33 = 136315138;
      v34 = "usb_deviceSetup";
      v12 = _os_log_send_and_compose_impl(v11, 0, v35, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v10, "<<< transportusb >>> %s: Called", &v33);
      LOBYTE(v9) = v28;
    }

    else
    {
      v12 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, v12, v12 != v35, v9);
    if (!IOServiceAddInterestNotification(*(v7 + 256), v6, "IOGeneralInterest", usb_generalInterestNotification, a1, (v7 + 276)))
    {
      v13 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Eu, 0x72u, 0x21u, 0x7Eu, 0x8Au, 0x60u, 0x11u, 0xDBu, 0xBFu, 0x57u, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
      v14 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      if (!IOCreatePlugInInterfaceForService(v6, v13, v14, &theInterface, &theScore))
      {
        v15 = theInterface;
        if (theInterface)
        {
          *(v7 + 288) = theInterface;
          QueryInterface = (*v15)->QueryInterface;
          v17 = CFUUIDGetConstantUUIDWithBytes(0, 0xEAu, 0x33u, 0xBAu, 0x4Fu, 0x8Au, 0x60u, 0x11u, 0xDBu, 0x84u, 0xDBu, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
          v18 = CFUUIDGetUUIDBytes(v17);
          if (!(QueryInterface)(v15, *&v18.byte0, *&v18.byte8, &v30))
          {
            v19 = v30;
            if (v30)
            {
              *(v7 + 296) = v30;
              if (!(*(*v19 + 32))(v19, 0))
              {
                *(v7 + 304) = 1;
                (*(*v30 + 80))(v30, *(v7 + 32));
                if (!(*(*v30 + 88))(v30, 255, 0) && !(*(*v30 + 96))(v30, 42, 0) && !(*(*v30 + 104))(v30, 255, 0) && !(*(*v30 + 128))(v30, 2, 1, 0xFFFFFFFFLL, 10, 0, 0, v7 + 312) && !(*(*v30 + 128))(v30, 2, 0, 0xFFFFFFFFLL, 10, 0, 0, v7 + 320) && !(*(*v30 + 72))(v30, usb_deviceHandleInterfaceMessage, 0, a1) && !(*(*v30 + 64))(v30, usb_deviceHandleSetupAction, 0, 0, a1, a1, *(v7 + 136), v26) && !(*(*v30 + 48))(v30, *(v7 + 136), v26))
                {
                  v28 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v28, &type);
                  v21 = v28;
                  v22 = type;
                  v23 = os_log_type_enabled(v20, type) ? v21 : v21 & 0xFFFFFFFE;
                  if (v23)
                  {
                    v33 = 136315138;
                    v34 = "usb_deviceSetup";
                    v24 = _os_log_send_and_compose_impl(v23, 0, v35, 128, &dword_196FA7000, v20, v22, "<<< transportusb >>> %s: Committing usb device configuration", &v33);
                    LOBYTE(v21) = v28;
                  }

                  else
                  {
                    v24 = 0;
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, v24, v24 != v35, v21);
                  if (!(*(*v30 + 136))(v30))
                  {
                    IOObjectRetain(v6);
                    *(v7 + 280) = v6;
                    v25 = (*(*v30 + 288))(v30, &v29 + 4, &v29);
                    if (!v25 && HIDWORD(v29))
                    {
                      usb_deviceActivate(a1);
                      goto LABEL_32;
                    }

                    if (!v25)
                    {
                      goto LABEL_32;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    usb_deviceTearDown(a1);
LABEL_32:
    IOObjectRelease(v6);
    goto LABEL_33;
  }

  return result;
}

uint64_t usb_generalInterestNotification(const void *a1, uint64_t a2, int a3)
{
  result = CMBaseObjectGetDerivedStorage(a1);
  if (a3 == -536870896)
  {

    return usb_deviceTearDown(a1);
  }

  return result;
}

void usb_deviceHandleInterfaceMessage(uint64_t a1, int a2, uint64_t a3, const void *a4)
{
  if (a2 == -469794543)
  {
    usb_deviceDeactivate(a4);
  }

  else if (a2 == -469794544)
  {
    usb_deviceActivate(a4);
  }
}

void usb_deviceActivate(const void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v19 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v19, &type);
  v4 = v19;
  v5 = type;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 0xFFFFFFFE;
  }

  if (v6)
  {
    v20 = 136315138;
    v21 = "usb_deviceActivate";
    v7 = _os_log_send_and_compose_impl(v6, 0, v22, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v5, "<<< transportusb >>> %s: Called", &v20);
    LOBYTE(v4) = v19;
  }

  else
  {
    v7 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, v7, v7 != v22, v4);
  if (!(*(**(DerivedStorage + 296) + 200))(*(DerivedStorage + 296), *(DerivedStorage + 320), &v19 + 4))
  {
    *(DerivedStorage + 248) = SHIDWORD(v19);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __usb_deviceActivate_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_57_0;
    aBlock[4] = DerivedStorage;
    *(DerivedStorage + 232) = _Block_copy(aBlock);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __usb_deviceActivate_block_invoke_2;
    v16[3] = &__block_descriptor_tmp_58;
    v16[4] = DerivedStorage;
    v8 = _Block_copy(v16);
    v9 = 0;
    *(DerivedStorage + 240) = v8;
    v10 = 1;
    while (1)
    {
      v11 = v10;
      v12 = (DerivedStorage + 328 + 24 * v9);
      *v12 = a1;
      if ((*(**(DerivedStorage + 296) + 208))(*(DerivedStorage + 296), 0x10000, v12 + 1))
      {
        break;
      }

      BytePtr = IOUSBDeviceDataGetBytePtr();
      v10 = 0;
      v12[2] = BytePtr;
      v9 = 1;
      if ((v11 & 1) == 0)
      {
        if (!(*(**(DerivedStorage + 296) + 208))(*(DerivedStorage + 296), 0x10000, DerivedStorage + 384))
        {
          *(DerivedStorage + 392) = IOUSBDeviceDataGetBytePtr();
          for (i = 1; ; i = 0)
          {
            v15 = i;
            if ((*(*(DerivedStorage + 232) + 16))())
            {
              break;
            }

            if ((v15 & 1) == 0)
            {
              *(DerivedStorage + 305) = 1;
              usb_deviceSendStartupPing(a1);
              return;
            }
          }
        }

        break;
      }
    }
  }

  usb_deviceDeactivate(a1);
}

uint64_t usb_deviceTearDown(const void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v13 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v13, &type);
  v4 = v13;
  v5 = type;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 0xFFFFFFFE;
  }

  if (v6)
  {
    v14 = 136315138;
    v15 = "usb_deviceTearDown";
    v7 = _os_log_send_and_compose_impl(v6, 0, v16, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v5, "<<< transportusb >>> %s: Called", &v14);
    LOBYTE(v4) = v13;
  }

  else
  {
    v7 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, v7, v7 != v16, v4);
  usb_deviceDeactivate(a1);
  v8 = *(DerivedStorage + 276);
  if (v8)
  {
    IOObjectRelease(v8);
    *(DerivedStorage + 276) = 0;
  }

  if (*(DerivedStorage + 312))
  {
    (*(**(DerivedStorage + 296) + 192))(*(DerivedStorage + 296));
    *(DerivedStorage + 312) = 0;
  }

  if (*(DerivedStorage + 320))
  {
    (*(**(DerivedStorage + 296) + 192))(*(DerivedStorage + 296));
    *(DerivedStorage + 320) = 0;
  }

  if (*(DerivedStorage + 304))
  {
    (*(**(DerivedStorage + 296) + 40))(*(DerivedStorage + 296), 0);
    *(DerivedStorage + 304) = 0;
  }

  v9 = *(DerivedStorage + 296);
  if (v9)
  {
    (*(*v9 + 24))(v9);
    *(DerivedStorage + 296) = 0;
  }

  v10 = *(DerivedStorage + 288);
  if (v10)
  {
    IODestroyPlugInInterface(v10);
    *(DerivedStorage + 288) = 0;
  }

  result = *(DerivedStorage + 280);
  if (result)
  {
    result = IOObjectRelease(result);
    *(DerivedStorage + 280) = 0;
  }

  return result;
}

void usb_deviceDeactivate(const void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v19 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v19, &type);
  v4 = v19;
  v5 = type;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 0xFFFFFFFE;
  }

  if (v6)
  {
    v20 = 136315138;
    v21 = "usb_deviceDeactivate";
    v7 = _os_log_send_and_compose_impl(v6, 0, v22, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v5, "<<< transportusb >>> %s: Called", &v20);
    LOBYTE(v4) = v19;
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, v7, v7 != v22, v4);
  usb_setDisconnected(a1);
  v9 = 0;
  do
  {
    v10 = v8;
    v11 = DerivedStorage + 328 + 24 * v9;
    v14 = *(v11 + 8);
    v13 = (v11 + 8);
    v12 = v14;
    if (v14)
    {
      CFRelease(v12);
      *v13 = 0;
    }

    v8 = 0;
    v9 = 1;
  }

  while ((v10 & 1) != 0);
  v15 = *(DerivedStorage + 232);
  if (v15)
  {
    _Block_release(v15);
    *(DerivedStorage + 232) = 0;
  }

  v16 = *(DerivedStorage + 240);
  if (v16)
  {
    _Block_release(v16);
    *(DerivedStorage + 240) = 0;
  }

  v17 = *(DerivedStorage + 384);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 384) = 0;
  }

  if (*(DerivedStorage + 305))
  {
    *(DerivedStorage + 305) = 0;
  }
}

uint64_t __usb_deviceActivate_block_invoke_2(uint64_t a1, int a2, char *__src, unint64_t a4, void *a5)
{
  if (a4)
  {
    v7 = a4;
    v9 = 0;
    while (1)
    {
      v10 = v7 >= 0x10000 ? 0x10000 : v7;
      memcpy(*(*(a1 + 32) + 392), __src, v10);
      v13 = v10;
      result = (*(**(*(a1 + 32) + 296) + 168))(*(*(a1 + 32) + 296), *(*(a1 + 32) + 312), *(*(a1 + 32) + 384), &v13);
      if (result)
      {
        break;
      }

      v9 += v13;
      v7 -= v13;
      __src += v13;
      if (v13 < v10 || v7 == 0)
      {
        result = 0;
        break;
      }
    }
  }

  else
  {
    v13 = 0;
    result = (*(**(*(a1 + 32) + 296) + 168))(*(*(a1 + 32) + 296), *(*(a1 + 32) + 312), *(*(a1 + 32) + 384), &v13);
    v9 = 0;
  }

  *a5 = v9;
  return result;
}

void __usb_enqueuePackageWithPriority_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    CFRelease(*(a1 + 40));
  }

  else
  {
    v3 = v2 + 48;
    v4 = *(a1 + 56);
    v5 = *(v3 + 8 * v4);
    v6 = *(a1 + 40);
    if (v5)
    {
      CMBlockBufferAppendBufferReference(v5, v6, 0, 0, 0);
      CFRelease(*(a1 + 40));
    }

    else
    {
      *(v3 + 8 * v4) = v6;
    }

    dispatch_semaphore_signal(*(*(a1 + 32) + 200));
  }

  v7 = *(a1 + 48);

  CFRelease(v7);
}

uint64_t FigXPCCreateBasicMessage(unsigned int a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    if (v6)
    {
      xpc_dictionary_set_uint64(v6, ".Operation", a1);
      if (a2)
      {
        xpc_dictionary_set_uint64(v7, ".objectID", a2);
      }

      result = 0;
    }

    else
    {
      FigXPCCreateBasicMessage_cold_1(&v9);
      result = v9;
    }
  }

  else
  {
    FigXPCCreateBasicMessage_cold_2(&v10);
    v7 = 0;
    result = v10;
  }

  *a3 = v7;
  return result;
}

uint64_t FigXPCRemoteClientSendSyncMessageCreatingReply(uint64_t a1, void *a2, xpc_object_t *a3)
{
  object = 0;
  if (!a1)
  {
    FigXPCRemoteClientSendSyncMessageCreatingReply_cold_3(&v10);
    goto LABEL_18;
  }

  if (!a2)
  {
    FigXPCRemoteClientSendSyncMessageCreatingReply_cold_2(&v10);
    goto LABEL_18;
  }

  if (*(*(a1 + 16) + 152))
  {
    FigXPCRemoteClientSendSyncMessageCreatingReply_cold_1(&v10);
LABEL_18:
    v4 = v10;
    if (!a3)
    {
      return v4;
    }

    goto LABEL_13;
  }

  v4 = FigXPCConnectionSendSyncMessageCreatingReply(*(a1 + 24), a2, &object);
  v5 = object;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3 == 0;
  }

  if (v6 && object != 0)
  {
    object = 0;
    xpc_release(v5);
  }

  if (a3)
  {
LABEL_13:
    *a3 = object;
  }

  return v4;
}

uint64_t FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply(uint64_t a1, xpc_object_t xdict, void *a3)
{
  if (!a1)
  {
    FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply_cold_4(&v8);
    return v8;
  }

  if (*(a1 + 80))
  {
    FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply_cold_1(&v8);
    return v8;
  }

  if (!xdict)
  {
    FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply_cold_3(&v8);
    return v8;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, ".Operation");
  if (!uint64)
  {
    FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply_cold_2(&v8);
    return v8;
  }

  xpc_dictionary_set_uint64(xdict, ".Operation", uint64 | 0x200000000);

  return FigXPCConnectionSendSyncMessageCreatingReply(a1, xdict, a3);
}

uint64_t FigXPCConnectionSendSyncMessageCreatingReply(uint64_t a1, void *a2, void *a3)
{
  v25 = 0;
  v6 = FigAtomicIncrement64(&FigXPCConnectionSendSyncMessageCreatingReply_sAbortActionID);
  if (!a1)
  {
    FigXPCConnectionSendSyncMessageCreatingReply_cold_4(__dst);
    goto LABEL_30;
  }

  if (*(a1 + 80))
  {
    FigXPCConnectionSendSyncMessageCreatingReply_cold_1(__dst);
    goto LABEL_30;
  }

  if (!a2)
  {
    FigXPCConnectionSendSyncMessageCreatingReply_cold_3(__dst);
    goto LABEL_30;
  }

  if (*(*(a1 + 16) + 152))
  {
    FigXPCConnectionSendSyncMessageCreatingReply_cold_2(__dst);
LABEL_30:
    v18 = *__dst;
    if (!a3)
    {
      return v18;
    }

    goto LABEL_22;
  }

  v7 = v6;
  if (!*(a1 + 84))
  {
    xpc_dictionary_get_uint64(a2, ".Operation");
    if (gGMFigKTraceEnabled == 1)
    {
      v8 = *(a1 + 16);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = strlen(*(v8 + 16));
        strncpy(__dst, (v9 + v10 - 8), 8uLL);
      }

      kdebug_trace();
    }

    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    xpc_dictionary_set_int64(a2, ".Date", UpTimeNanoseconds);
  }

  *__dst = v7;
  v24 = a1;
  xpc_dictionary_set_int64(a2, ".AbortActionID", v7);
  FigThreadRegisterAbortAction(figXPCConnection_forwardThreadAbortForSyncXPCMessage, __dst, &v25, v12, v13, v14, v15, v16, v22);
  v17 = xpc_connection_send_message_with_reply_sync(*(a1 + 40), a2);
  v18 = figXPCConnection_processServerReply(a1, v17);
  if (v25)
  {
    FigThreadUnregisterAbortAction(v25);
  }

  if (a3)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = !v19;
  if (v17 && v20)
  {
    xpc_release(v17);
    if (a3)
    {
LABEL_22:
      v17 = 0;
LABEL_24:
      *a3 = v17;
    }
  }

  else if (a3)
  {
    goto LABEL_24;
  }

  return v18;
}

uint64_t FigXPCConnectionSendAsyncMessage(uint64_t a1, xpc_object_t xdict)
{
  if (!a1)
  {
    FigXPCConnectionSendAsyncMessage_cold_4(__dst);
    return *__dst;
  }

  if (*(a1 + 80))
  {
    FigXPCConnectionSendAsyncMessage_cold_1(__dst);
    return *__dst;
  }

  if (!xdict)
  {
    FigXPCConnectionSendAsyncMessage_cold_3(__dst);
    return *__dst;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, ".Operation");
  if (!uint64)
  {
    FigXPCConnectionSendAsyncMessage_cold_2(__dst);
    return *__dst;
  }

  xpc_dictionary_set_uint64(xdict, ".Operation", uint64 | 0x100000000);
  if (!*(a1 + 84))
  {
    if (gGMFigKTraceEnabled == 1)
    {
      v5 = *(a1 + 16);
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = strlen(*(v5 + 16));
        strncpy(__dst, (v6 + v7 - 8), 8uLL);
      }

      kdebug_trace();
    }

    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    xpc_dictionary_set_int64(xdict, ".Date", UpTimeNanoseconds);
  }

  xpc_connection_send_message(*(a1 + 40), xdict);
  return 0;
}

uint64_t FigXPCConnectionSendAsyncMessageWithReplyHandler(uint64_t a1, xpc_object_t xdict, uint64_t a3)
{
  if (!a1)
  {
    FigXPCConnectionSendAsyncMessageWithReplyHandler_cold_4(__dst);
    return *__dst;
  }

  if (*(a1 + 80))
  {
    FigXPCConnectionSendAsyncMessageWithReplyHandler_cold_1(__dst);
    return *__dst;
  }

  if (!xdict)
  {
    FigXPCConnectionSendAsyncMessageWithReplyHandler_cold_3(__dst);
    return *__dst;
  }

  if (!a3)
  {
    FigXPCConnectionSendAsyncMessageWithReplyHandler_cold_2(__dst);
    return *__dst;
  }

  if (!*(a1 + 84))
  {
    xpc_dictionary_get_uint64(xdict, ".Operation");
    if (gGMFigKTraceEnabled == 1)
    {
      v6 = *(a1 + 16);
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = strlen(*(v6 + 16));
        strncpy(__dst, (v7 + v8 - 8), 8uLL);
      }

      kdebug_trace();
    }

    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    xpc_dictionary_set_int64(xdict, ".Date", UpTimeNanoseconds);
  }

  v10 = *(a1 + 40);
  v11 = *(a1 + 72);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __FigXPCConnectionSendAsyncMessageWithReplyHandler_block_invoke;
  handler[3] = &unk_1E74A6098;
  handler[4] = a3;
  handler[5] = a1;
  xpc_connection_send_message_with_reply(v10, xdict, v11, handler);
  return 0;
}

uint64_t FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler(uint64_t a1, xpc_object_t xdict, uint64_t a3)
{
  if (!a1)
  {
    FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_5(&v8);
    return v8;
  }

  if (*(a1 + 80))
  {
    FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_1(&v8);
    return v8;
  }

  if (!xdict)
  {
    FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_4(&v8);
    return v8;
  }

  if (!a3)
  {
    FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_3(&v8);
    return v8;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, ".Operation");
  if (!uint64)
  {
    FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_2(&v8);
    return v8;
  }

  xpc_dictionary_set_uint64(xdict, ".Operation", uint64 | 0x200000000);

  return FigXPCConnectionSendAsyncMessageWithReplyHandler(a1, xdict, a3);
}

size_t FigXPConnectionLookupAndRetainAssociatedObject(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    v11 = FigCFWeakReferenceTableCopyValue(*(a1 + 32), a2, a3, a4, a5, a6, a7, a8);
    *a3 = v11;
    if (v11)
    {
      return 0;
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E8uLL, "<< FigXPC >>", 0x693, v9, v14, v15, a9);
    }
  }

  else
  {
    FigXPConnectionLookupAndRetainAssociatedObject_cold_1(&v16);
    return v16;
  }
}

uint64_t figXPC_RetainCopiedObjectApplierFunction(uint64_t result, CFTypeRef cf, void *a3)
{
  if (!a3[1])
  {
    v4 = result;
    if (*a3 == (result & 0xFFFFFFFFFFFFFF00))
    {
      result = CFRetain(cf);
      a3[1] = result;
      a3[2] = v4;
    }
  }

  return result;
}

uint64_t FigXPCConnectionGetServerPID(uint64_t a1, pid_t *a2)
{
  pid = xpc_connection_get_pid(*(a1 + 40));
  *a2 = pid;
  if (pid > 0)
  {
    return 0;
  }

  FigXPCConnectionGetServerPID_cold_1(&v5);
  return v5;
}

uint64_t FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 24);

      return FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply(v3, a2, a3);
    }

    else
    {
      FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply_cold_2(&v6);
    return v6;
  }
}

uint64_t FigXPCRemoteClientSendAsyncMessage(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 24);

      return FigXPCConnectionSendAsyncMessage(v2, a2);
    }

    else
    {
      FigXPCRemoteClientSendAsyncMessage_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigXPCRemoteClientSendAsyncMessage_cold_2(&v5);
    return v5;
  }
}

uint64_t FigXPCRemoteClientSendAsyncMessageWithReplyHandler(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v3 = *(a1 + 24);

        return FigXPCConnectionSendAsyncMessageWithReplyHandler(v3, a2, a3);
      }

      else
      {
        FigXPCRemoteClientSendAsyncMessageWithReplyHandler_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      FigXPCRemoteClientSendAsyncMessageWithReplyHandler_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FigXPCRemoteClientSendAsyncMessageWithReplyHandler_cold_3(&v7);
    return v7;
  }
}

uint64_t FigXPCRemoteClientSendAsyncMessageWithNoTimeoutWithReplyHandler(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v3 = *(a1 + 24);

        return FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler(v3, a2, a3);
      }

      else
      {
        FigXPCRemoteClientSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      FigXPCRemoteClientSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FigXPCRemoteClientSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_3(&v7);
    return v7;
  }
}

size_t FigXPCRemoteClientDisassociateObject(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    if (a2)
    {
      v12 = *(a1 + 24);

      return FigXPCConnectionDisassociateObject(v12, a2, a3, a4, a5, a6, a7, a8, a9);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = v9;
    v15 = v10;
    FigXPCRemoteClientDisassociateObject_cold_1(&v13);
    return v13;
  }
}

size_t FigXPCRemoteClientAssociateObject(uint64_t a1, uint64_t a2, CMBlockBufferRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    v11 = *(a1 + 24);

    return FigXPCConnectionAssociateObject(v11, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    v14 = v9;
    v15 = v10;
    FigXPCRemoteClientAssociateObject_cold_1(&v13);
    return v13;
  }
}

size_t FigXPCRemoteClientLookupAndRetainAssociatedObject(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    v11 = *(a1 + 24);

    return FigXPConnectionLookupAndRetainAssociatedObject(v11, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    v14 = v9;
    v15 = v10;
    FigXPCRemoteClientLookupAndRetainAssociatedObject_cold_1(&v13);
    return v13;
  }
}

uint64_t FigXPCRemoteClientRetainCopiedObject(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = *(a1 + 24);

    return FigXPCConnectionRetainCopiedObject(v5, a2, a3);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    FigXPCRemoteClientRetainCopiedObject_cold_1(&v7);
    return v7;
  }
}

uint64_t FigXPCRemoteClientCreate(uint64_t a1, unint64_t *a2, CFDictionaryRef theDict, unint64_t **a4)
{
  if (theDict)
  {
    v8 = 2 * (CFDictionaryGetValue(theDict, @"xpcRemoteClientOption_PrivilegedConnection") == *MEMORY[0x1E695E4D0]);
  }

  else
  {
    v8 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __FigXPCRemoteClientCreate_block_invoke;
  v10[3] = &__block_descriptor_tmp_94;
  v10[4] = a1;
  v10[5] = v8;
  return FigXPCRemoteClientCreateWithConnectionCreatingBlockSync(a1, a2, theDict, 0, a4, v10);
}

uint64_t FigXPCRemoteClientCreateWithConnectionCreatingBlockSync(uint64_t a1, unint64_t *a2, const void *a3, uint64_t a4, unint64_t **a5, uint64_t a6)
{
  cf = 0;
  v19 = 0;
  v9 = FigXPCRemoteClientCreateWithConnectionCreatingBlockCommon(a1, a2, a3, &v19);
  v13 = v19;
  if (v9)
  {
    v14 = v9;
    if (!v19)
    {
      return v14;
    }

    goto LABEL_9;
  }

  v14 = figXPCCreateXPCConnectionInternalSync(v19, *(v19 + 2), a4, &cf, a6, v10, v11, v12);
  if (v14)
  {
    if (cf)
    {
      CFRelease(cf);
    }

LABEL_9:
    CFRelease(v13);
    return v14;
  }

  v13[3] = cf;
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener(DefaultLocalCenter, v13, figXPCRemoteClient_PrimaryConnectionNotificationCallback, 0, v13[3], 0, 0, v16, cf);
  *a5 = v13;
  return v14;
}

uint64_t FigXPCRemoteClientCreateAsync(uint64_t a1, unint64_t *a2, CFDictionaryRef theDict, uint64_t a4)
{
  if (theDict)
  {
    v8 = 2 * (CFDictionaryGetValue(theDict, @"xpcRemoteClientOption_PrivilegedConnection") == *MEMORY[0x1E695E4D0]);
  }

  else
  {
    v8 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __FigXPCRemoteClientCreateAsync_block_invoke;
  v10[3] = &__block_descriptor_tmp_95_0;
  v10[4] = a1;
  v10[5] = v8;
  return FigXPCRemoteClientCreateWithConnectionCreatingBlockAsync(a1, a2, theDict, 0, v10, a4);
}

uint64_t FigXPCRemoteClientCreateWithConnectionCreatingBlockAsync(uint64_t a1, unint64_t *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  cf = 0;
  v9 = FigXPCRemoteClientCreateWithConnectionCreatingBlockCommon(a1, a2, a3, &cf);
  v13 = cf;
  if (v9)
  {
    v20 = v9;
    if (!cf)
    {
      return v20;
    }

    goto LABEL_14;
  }

  v14 = *(cf + 2);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = __FigXPCRemoteClientCreateWithConnectionCreatingBlockAsync_block_invoke;
  v22[3] = &unk_1E74A6240;
  v22[4] = a6;
  v22[5] = cf;
  v25 = 0;
  v15 = figXPCCreateXPCConnectionInternalCommon(cf, v14, a4, &v25, a5, v10, v11, v12);
  v17 = v25;
  if (v15)
  {
    v20 = v15;
    goto LABEL_12;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 0x40000000;
  v24[2] = __figXPCCreateXPCConnectionInternalAsync_block_invoke;
  v24[3] = &unk_1E74A6268;
  v24[4] = v22;
  v24[5] = v25;
  v27 = 0;
  v18 = figXPCConnection_createPingMessage(&v27, v16);
  if (v18)
  {
    v20 = v18;
    FigXPCRelease(v27);
LABEL_12:
    if (v17)
    {
      CFRelease(v17);
    }

LABEL_14:
    CFRelease(v13);
    return v20;
  }

  if (v17)
  {
    CFRetain(v17);
  }

  v19 = v27;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v26[2] = __figXPCConnection_PingServerConnectionAsync_block_invoke;
  v26[3] = &unk_1E74A63B0;
  v26[4] = v24;
  v26[5] = v17;
  v20 = FigXPCConnectionSendAsyncMessageWithReplyHandler(v17, v27, v26);
  FigXPCRelease(v19);
  if (v20)
  {
    goto LABEL_12;
  }

  return v20;
}

uint64_t FigXPCRemoteClientCreateWithXPCService(uint64_t a1, unint64_t *a2, const void *a3, unint64_t **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __FigXPCRemoteClientCreateWithXPCService_block_invoke;
  v5[3] = &__block_descriptor_tmp_96;
  v5[4] = a1;
  return FigXPCRemoteClientCreateWithConnectionCreatingBlockSync(a1, a2, a3, 0x400000000, a4, v5);
}

uint64_t FigXPCRemoteClientCreateWithXPCEndpoint(uint64_t a1, uint64_t a2, unint64_t *a3, const void *a4, unint64_t **a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __FigXPCRemoteClientCreateWithXPCEndpoint_block_invoke;
  v6[3] = &__block_descriptor_tmp_97;
  v6[4] = a2;
  return FigXPCRemoteClientCreateWithConnectionCreatingBlockSync(a1, a3, a4, 0x400000000, a5, v6);
}

_xpc_connection_s *__FigXPCRemoteClientCreateWithXPCEndpoint_block_invoke(uint64_t a1, NSObject *a2)
{
  v3 = xpc_connection_create_from_endpoint(*(a1 + 32));
  xpc_connection_set_target_queue(v3, a2);
  return v3;
}

uint64_t FigXPCRemoteClientCreateWithXPCEndpointAsync(uint64_t a1, uint64_t a2, unint64_t *a3, const void *a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __FigXPCRemoteClientCreateWithXPCEndpointAsync_block_invoke;
  v6[3] = &__block_descriptor_tmp_98;
  v6[4] = a2;
  return FigXPCRemoteClientCreateWithConnectionCreatingBlockAsync(a1, a3, a4, 0x400000000, v6, a5);
}

_xpc_connection_s *__FigXPCRemoteClientCreateWithXPCEndpointAsync_block_invoke(uint64_t a1, NSObject *a2)
{
  v3 = xpc_connection_create_from_endpoint(*(a1 + 32));
  xpc_connection_set_target_queue(v3, a2);
  return v3;
}

void FigXPCRemoteClientDispose(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigXPCRemoteClientGetServerPID(uint64_t a1, int *a2)
{
  if (a1)
  {
    v2 = *(*(a1 + 24) + 88);
    if (v2 <= 0)
    {
      FigXPCRemoteClientGetServerPID_cold_1(&v4);
      return v4;
    }

    else
    {
      result = 0;
      *a2 = v2;
    }
  }

  else
  {
    FigXPCRemoteClientGetServerPID_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigXPCRemoteClientGetServerPIDSync(uint64_t a1, pid_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        pid = xpc_connection_get_pid(*(v3 + 40));
        *a2 = pid;
        if (pid <= 0)
        {
          FigXPCRemoteClientGetServerPIDSync_cold_1(&v6);
          return v6;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 4294951137;
      }
    }

    else
    {
      FigXPCRemoteClientGetServerPIDSync_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigXPCRemoteClientGetServerPIDSync_cold_3(&v8);
    return v8;
  }
}

uint64_t FigXPCRemoteClientCopyPrimaryConnection(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      if (v2[20])
      {
        FigXPCRemoteClientCopyPrimaryConnection_cold_1(&v6);
        return v6;
      }

      else
      {
        v4 = CFRetain(v2);
        result = 0;
        *a2 = v4;
      }
    }

    else
    {
      FigXPCRemoteClientCopyPrimaryConnection_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigXPCRemoteClientCopyPrimaryConnection_cold_3(&v8);
    return v8;
  }

  return result;
}

uint64_t FigXPCRemoteClientCreateSecondaryConnection(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, uint64_t a5, int a6, int a7, int a8)
{
  v13 = 0;
  v9 = *(a1 + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __FigXPCRemoteClientCreateSecondaryConnection_block_invoke;
  v12[3] = &__block_descriptor_tmp_99;
  v12[4] = a1;
  v10 = figXPCCreateXPCConnectionInternalSync(a1, v9, a2 | 0x600000000, &v13, v12, a6, a7, a8);
  if (v10)
  {
    if (v13)
    {
      CFRelease(v13);
    }
  }

  else
  {
    *a4 = v13;
  }

  return v10;
}

uint64_t figXPCCreateXPCConnectionInternalSync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, int a7, int a8)
{
  v16 = 0;
  v9 = figXPCCreateXPCConnectionInternalCommon(a1, a2, a3, &v16, a5, a6, a7, a8);
  v11 = v16;
  if (v9)
  {
    v14 = v9;
  }

  else
  {
    xdict = 0;
    v18 = 0;
    v12 = figXPCConnection_createPingMessage(&v18, v10);
    v13 = v18;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = FigXPCConnectionSendSyncMessageCreatingReply(v11, v18, &xdict);
      if (!v14)
      {
        v11[8] = xpc_dictionary_get_int64(xdict, ".Token");
      }
    }

    FigXPCRelease(v13);
    FigXPCRelease(xdict);
    if (!v14)
    {
      *a4 = v11;
      return v14;
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v14;
}

BOOL FigXPCIsObjectIDLocallyServed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return (a2 & 0xFFFFFF0000000000) == *(a1 + 8);
  }

  FigXPCIsObjectIDLocallyServed_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v8);
  return 0;
}

uint64_t FigXPCServerCopyMemoryOrigin(_xpc_connection_s *a1, CFTypeRef *a2)
{
  context = xpc_connection_get_context(a1);
  v4 = FigCFWeakReferenceLoadAndRetain(context + 2);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = CFGetTypeID(v4);
  if (_MergedGlobals_66 != -1)
  {
    FigXPCServerCopyMemoryOrigin_cold_1();
  }

  if (v6 == qword_1ED4CDB18)
  {
    v7 = v5[8];
    if (v7)
    {
      v8 = 0;
      *a2 = CFRetain(v7);
    }

    else
    {
      FigXPCServerCopyMemoryOrigin_cold_2(&v11);
      v8 = v11;
    }
  }

  else
  {
LABEL_9:
    v10 = FigXPCServerCopyMemoryOrigin_cold_3(v5 == 0, &v12);
    v8 = v12;
    if (v10)
    {
      return v8;
    }
  }

  CFRelease(v5);
  return v8;
}

uint64_t FigXPCServerCopyMemoryRecipient(_xpc_connection_s *a1, CFTypeRef *a2)
{
  context = xpc_connection_get_context(a1);
  v4 = FigCFWeakReferenceLoadAndRetain(context + 2);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = CFGetTypeID(v4);
  if (_MergedGlobals_66 != -1)
  {
    FigXPCServerCopyMemoryOrigin_cold_1();
  }

  if (v6 == qword_1ED4CDB18)
  {
    v7 = v5[9];
    if (v7)
    {
      v8 = 0;
      *a2 = CFRetain(v7);
    }

    else
    {
      FigXPCServerCopyMemoryRecipient_cold_2(&v11);
      v8 = v11;
    }
  }

  else
  {
LABEL_9:
    v10 = FigXPCServerCopyMemoryRecipient_cold_3(v5 == 0, &v12);
    v8 = v12;
    if (v10)
    {
      return v8;
    }
  }

  CFRelease(v5);
  return v8;
}

uint64_t FigXPCServerDisassociateObjectWithConnection(_xpc_connection_s *a1, uint64_t a2)
{
  context = xpc_connection_get_context(a1);
  v4 = FigCFWeakReferenceLoadAndRetain(context + 2);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = CFGetTypeID(v4);
  if (_MergedGlobals_66 != -1)
  {
    FigXPCServerCopyMemoryOrigin_cold_1();
  }

  if (v6 == qword_1ED4CDB18)
  {
    figXPCServer_DisassociateObjectWithPerProcessInfo(v5, a2);
    v7 = 0;
  }

  else
  {
LABEL_8:
    v9 = FigXPCServerDisassociateObjectWithConnection_cold_2(v5 == 0, &v10);
    v7 = v10;
    if (v9)
    {
      return v7;
    }
  }

  CFRelease(v5);
  return v7;
}

uint64_t figXPCServer_DisassociateObjectWithPerProcessInfo(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    FigSimpleMutexLock(*(result + 80));
    Count = CFArrayGetCount(*(v3 + 88));
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 88), v6);
        if (ValueAtIndex[3] == a2)
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_9;
        }
      }

      v8 = ValueAtIndex;
      figXPC_ForgetNotificationsForServedObject(*(v3 + 112), ValueAtIndex);
      FigCFWeakReferenceTableRemoveValue(*(v3 + 48), v8[3]);
      CFArrayRemoveValueAtIndex(*(v3 + 88), v6);
    }

LABEL_9:
    v9 = *(v3 + 80);

    return FigSimpleMutexUnlock(v9);
  }

  return result;
}

size_t FigXPCServerAssociateObjectWithConnectionWithFlags(_xpc_connection_s *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferRef **a7)
{
  v11 = a3;
  context = xpc_connection_get_context(a1);
  v15 = FigCFWeakReferenceLoadAndRetain(context + 2);
  if (v15)
  {
    v16 = v15;
    FigSimpleMutexLock(v15[10]);
    v17 = figXPC_RegisterServedObject(v16, a1, a2, v11, a4, a5, a6, a7, v19);
    FigSimpleMutexUnlock(v16[10]);
    CFRelease(v16);
    return v17;
  }

  else
  {
    FigXPCServerAssociateObjectWithConnectionWithFlags_cold_1(&v20);
    return v20;
  }
}

uint64_t FigXPCServerAssociateCopiedObjectWithConnection(_xpc_connection_s *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, CMBlockBufferRef **a6)
{
  context = xpc_connection_get_context(a1);
  v13 = FigCFWeakReferenceLoadAndRetain(context + 2);
  if (v13)
  {
    v14 = v13;
    FigSimpleMutexLock(v13[10]);
    v16 = figXPC_RegisterCopiedObject(v14, a1, a2, a3, a4, a5, a6, v15, v18);
    FigSimpleMutexUnlock(v14[10]);
    CFRelease(v14);
    return v16;
  }

  else
  {
    FigXPCServerAssociateCopiedObjectWithConnection_cold_1(&v19);
    return v19;
  }
}

uint64_t figXPC_RegisterCopiedObject(uint64_t a1, void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferRef **a7, uint64_t a8, CMBlockBufferRef *a9)
{
  Count = CFArrayGetCount(*(a1 + 88));
  v15 = 0;
  v16 = 2;
  while (2)
  {
    if (Count >= 1)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v17);
        if (ValueAtIndex[2] == a3 && ValueAtIndex[7] == a2)
        {
          v20 = ValueAtIndex[3];
          v15 = v20 & 0xFFFFFFFFFFFFFF00;
          v21 = v16;
          if (v16 == v20)
          {
            ++v16;
            if (((v21 + 1) & 0x100) != 0)
            {
              figXPC_RegisterCopiedObject_cold_1(&v25);
              return v25;
            }

            v18 = 1;
          }
        }

        ++v17;
      }

      while (Count != v17);
      if (v18)
      {
        continue;
      }
    }

    break;
  }

  if (v15)
  {
    result = figXPC_RegisterServedObjectWithID(a1, a2, a3, 0, a4, a5, a6, (v15 | v16));
    *a7 = (v15 | v16);
  }

  else
  {

    return figXPC_RegisterServedObject(a1, a2, a3, 0, a4, a5, a6, a7, a9);
  }

  return result;
}

uint64_t FigXPCServerFindUniqueObjectIDForObjectAssociatedWithConnection(_xpc_connection_s *a1, uint64_t a2, void *a3)
{
  context = xpc_connection_get_context(a1);
  v7 = FigCFWeakReferenceLoadAndRetain(context + 2);
  if (v7)
  {
    v8 = v7;
    FigSimpleMutexLock(v7[10]);
    Count = CFArrayGetCount(v8[11]);
    if (Count < 1)
    {
LABEL_13:
      FigXPCServerFindUniqueObjectIDForObjectAssociatedWithConnection_cold_2(&v17);
      v14 = v17;
    }

    else
    {
      v10 = Count;
      v11 = 0;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8[11], i);
        if (ValueAtIndex[2] == a2 && ValueAtIndex[7] == a1)
        {
          if (v11)
          {
            FigXPCServerFindUniqueObjectIDForObjectAssociatedWithConnection_cold_1(&v16);
            v14 = v16;
            goto LABEL_11;
          }

          v11 = ValueAtIndex[3];
        }
      }

      if (!v11)
      {
        goto LABEL_13;
      }

      v14 = 0;
      *a3 = v11;
    }

LABEL_11:
    FigSimpleMutexUnlock(v8[10]);
    CFRelease(v8);
  }

  else
  {
    FigXPCServerFindUniqueObjectIDForObjectAssociatedWithConnection_cold_3(&v18);
    return v18;
  }

  return v14;
}

size_t _figXPCServerLookupAndRetainAssociatedObject(_xpc_connection_s *a1, uint64_t a2, int a3, void *a4, void *a5)
{
  context = xpc_connection_get_context(a1);
  v11 = FigCFWeakReferenceLoadAndRetain(context + 2);
  if (!v11)
  {
    _figXPCServerLookupAndRetainAssociatedObject_cold_1(&v27);
    return v27;
  }

  v12 = v11;
  FigSimpleMutexLock(v11[10]);
  Count = CFArrayGetCount(v12[11]);
  if (Count < 1)
  {
LABEL_6:
    FigSimpleMutexUnlock(v12[10]);
  }

  else
  {
    v14 = Count;
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12[11], v15);
      if (ValueAtIndex[3] == a2)
      {
        break;
      }

      if (v14 == ++v15)
      {
        goto LABEL_6;
      }
    }

    v23 = CFRetain(ValueAtIndex);
    FigSimpleMutexUnlock(v12[10]);
    if (v23)
    {
      v24 = v23[2];
      if (v24)
      {
        v24 = CFRetain(v24);
      }

      *a4 = v24;
      if (a5)
      {
        if (a3)
        {
          v25 = v23[4];
          if (v25)
          {
            CFRetain(v25);
          }
        }

        *a5 = v23[4];
      }

      CFRelease(v23);
      v21 = 0;
      goto LABEL_11;
    }
  }

  FigSimpleMutexLock(v12[10]);
  if ((a2 & 0xFFFFFFFFFFFFFF00) >= (v12[12] & 0xFFFFFFFFFFFFFF00))
  {
    v17 = 4294951144;
  }

  else
  {
    v17 = 4294948086;
  }

  FigSimpleMutexUnlock(v12[10]);
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v21 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v17, "<< FigXPC >>", 0x1893, v5, v19, v20, v26);
LABEL_11:
  CFRelease(v12);
  return v21;
}

size_t FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon(_xpc_connection_s *a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {

    return _figXPCServerLookupAndRetainAssociatedObject(a1, a2, 1, a3, a4);
  }

  else
  {
    v8 = v4;
    v9 = v5;
    FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon_cold_1(&v7);
    return v7;
  }
}

uint64_t FigXPCServerRetainNeighborObjectFromID(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a3)
    {
      v9 = FigCFWeakReferenceTableCopyValue(*a1, a2, a3, a4, a5, a6, a7, a8);
      *a3 = v9;
      if (v9)
      {
        return 0;
      }

      else
      {
        FigXPCServerRetainNeighborObjectFromID_cold_1(&v11);
        return v11;
      }
    }

    else
    {
      FigXPCServerRetainNeighborObjectFromID_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    FigXPCServerRetainNeighborObjectFromID_cold_3(&v13);
    return v13;
  }
}

size_t FigXPCServerRetainNeighborObjectFromIDWithProcessID(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  if (!a1)
  {
    FigXPCServerRetainNeighborObjectFromIDWithProcessID_cold_3(&v25);
    return v25;
  }

  if (!a4)
  {
    FigXPCServerRetainNeighborObjectFromIDWithProcessID_cold_2(&v25);
    return v25;
  }

  FigSimpleMutexLock(*(a1 + 112));
  v25 = 0;
  v13 = figXPC_CopyInfoForProcess(a1, a2, &v25, v8, v9, v10, v11, v12, v24);
  if (!v13)
  {
    v21 = v25;
    v22 = FigCFWeakReferenceTableCopyValue(v25[6], a3, v14, v15, v16, v17, v18, v19);
    CFRelease(v21);
    FigSimpleMutexUnlock(*(a1 + 112));
    if (v22)
    {
      v20 = 0;
      *a4 = v22;
      return v20;
    }

    FigXPCServerRetainNeighborObjectFromIDWithProcessID_cold_1(&v25);
    return v25;
  }

  v20 = v13;
  FigSimpleMutexUnlock(*(a1 + 112));
  return v20;
}

size_t FigXPCServerRetainNeighborObjectFromIDWithConnection(uint64_t a1, xpc_connection_t connection, uint64_t a3, uint64_t *a4)
{
  pid = xpc_connection_get_pid(connection);

  return FigXPCServerRetainNeighborObjectFromIDWithProcessID(a1, pid, a3, a4);
}

size_t FigXPCServerDisassociateObjectWithNeighborClientPID(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    FigSimpleMutexLock(*(a1 + 112));
    v11 = figXPC_CopyInfoForProcess(a1, a2, &cf, v6, v7, v8, v9, v10, 0);
    v12 = cf;
    if (!v11)
    {
      figXPCServer_DisassociateObjectWithPerProcessInfo(cf, a3);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    FigSimpleMutexUnlock(*(a1 + 112));
  }

  else
  {
    FigXPCServerDisassociateObjectWithNeighborClientPID_cold_1(&v15);
    return v15;
  }

  return v11;
}

size_t FigXPCServerDisassociateObjectWithNeighborClientConnection(uint64_t a1, xpc_connection_t connection, uint64_t a3)
{
  pid = xpc_connection_get_pid(connection);

  return FigXPCServerDisassociateObjectWithNeighborClientPID(a1, pid, a3);
}

size_t FigXPCServerConfirmNeighborProcessByPID(uint64_t a1, int a2)
{
  if (a1)
  {
    FigSimpleMutexLock(*(a1 + 112));
    Value = CFDictionaryGetValue(*(a1 + 104), a2);
    if (Value && Value[4])
    {
      v6 = 0;
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E3uLL, "<< FigXPC >>", 0x19D0, v2, v8, v9, v11);
    }

    FigSimpleMutexUnlock(*(a1 + 112));
  }

  else
  {
    FigXPCServerConfirmNeighborProcessByPID_cold_1(&v12);
    return v12;
  }

  return v6;
}

uint64_t FigXPCServerSetConnectionRefcon(_xpc_connection_s *a1, uint64_t a2, uint64_t a3)
{
  context = xpc_connection_get_context(a1);
  if (context && (v6 = CFRetain(context)) != 0)
  {
    v7 = v6;
    if (a2)
    {
      if (a3)
      {
        if (*(v6 + 22))
        {
          FigXPCServerSetConnectionRefcon_cold_1(&v10);
          v8 = v10;
        }

        else
        {
          v8 = 0;
          *(v6 + 22) = a2;
          *(v6 + 23) = a3;
        }
      }

      else
      {
        FigXPCServerSetConnectionRefcon_cold_2(&v11);
        v8 = v11;
      }
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    FigXPCServerSetConnectionRefcon_cold_3(&v12);
    return v12;
  }

  return v8;
}

uint64_t FigXPCServerSelfTerminateDueToError(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 136))
    {
      v4[1] = v2;
      v4[2] = v3;
      FigXPCServerSelfTerminateDueToError_cold_1(v4, result, a2);
    }
  }

  return result;
}

uint64_t FigXPCServerGetConnectionRefcon(_xpc_connection_s *a1)
{
  context = xpc_connection_get_context(a1);
  if (context && (context = CFRetain(context)) != 0)
  {
    v9 = context[22];
    CFRelease(context);
  }

  else
  {
    FigXPCServerGetConnectionRefcon_cold_1(context, v2, v3, v4, v5, v6, v7, v8, v11);
    return 0;
  }

  return v9;
}

xpc_object_t FigXPCServerCopyPrimaryConnection(_xpc_connection_s *a1)
{
  context = xpc_connection_get_context(a1);
  if (context && (context = CFRetain(context)) != 0)
  {
    v9 = context;
    v10 = FigCFWeakReferenceLoadAndRetain(context + 2);
    if (v10)
    {
      v11 = v10;
      v12 = FigXPCRetain(v10[4]);
      CFRelease(v9);
      CFRelease(v11);
      return v12;
    }

    CFRelease(v9);
  }

  else
  {
    FigXPCServerCopyPrimaryConnection_cold_1(context, v2, v3, v4, v5, v6, v7, v8, v14);
  }

  return 0;
}

size_t FigXPCServerStart(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __FigXPCServerStart_block_invoke;
  v10[3] = &__block_descriptor_tmp_101;
  v10[4] = a1;
  return FigXPCServerStartWithListenerCreatingBlock(a1, a2, a3, a4, v10, a6, a7, a8, v9);
}

size_t FigXPCServerStartWithListenerCreatingBlock(uint64_t a1, unint64_t *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  LODWORD(v88) = 44;
  HIDWORD(v87) = 0;
  WORD1(v87) = 0;
  BYTE1(v87) = 0;
  if (figXPC_ServerOneTimeInitialization_sInitFigXPCServerOnce != -1)
  {
    FigXPCServerStartWithListenerCreatingBlock_cold_1();
  }

  *a4 = 0;
  if (!a2)
  {
    FigXPCServerStartWithListenerCreatingBlock_cold_7(&v88 + 1);
    return HIDWORD(v88);
  }

  if (*a2 - 1 < 3)
  {
    if (a2[1] || a2[2])
    {
      v15 = malloc_type_calloc(1uLL, 0x90uLL, 0x10F00402F8FECFEuLL);
      if (v15)
      {
        v16 = v15;
        v17 = FigSimpleMutexCreate();
        *(v16 + 112) = v17;
        if (v17)
        {
          v18 = *MEMORY[0x1E695E480];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
          *(v16 + 104) = Mutable;
          if (Mutable)
          {
            FigCFWeakReferenceTableCreate(v18, 1, v16);
            FigCFDictionaryGetInt32IfPresent(a3, @"xpcServerOption_QueuePriority", &v88, v20, v21, v22, v23, v24, v73, handler, v83, v84, v85, v86, v87, v88, v89, v90);
            FigCFDictionaryGetBooleanIfPresent(a3, @"xpcServerOption_SiloObjectIDs", &v87 + 7, v25, v26, v27, v28, v29, v74, handler, v83, v84, v85, v86, v87, v88, v89, v90);
            FigCFDictionaryGetBooleanIfPresent(a3, @"xpcServerOption_ForwardClientSideAbortActions", &v87 + 6, v30, v31, v32, v33, v34, v75, handler, v83, v84, v85, v86, v87, v88, v89, v90);
            FigCFDictionaryGetBooleanIfPresent(a3, @"xpcServerOption_StartInactive", &v87 + 5, v35, v36, v37, v38, v39, v76, handler, v83, v84, v85, v86, v87, v88, v89, v90);
            FigCFDictionaryGetBooleanIfPresent(a3, @"xpcServerOption_SelfTerminateOnError", &v87 + 4, v40, v41, v42, v43, v44, v77, handler, v83, v84, v85, v86, v87, v88, v89, v90);
            FigCFDictionaryGetBooleanIfPresent(a3, @"xpcServerOption_OptOutOfPurge", &v87 + 3, v45, v46, v47, v48, v49, v78, handler, v83, v84, v85, v86, v87, v88, v89, v90);
            FigCFDictionaryGetBooleanIfPresent(a3, @"xpcServerOption_AllowSecondaryConnections", &v87 + 2, v50, v51, v52, v53, v54, v79, handler, v83, v84, v85, v86, v87, v88, v89, v90);
            FigCFDictionaryGetBooleanIfPresent(a3, @"xpcServerOption_RequestTTRIfPossible", &v87 + 1, v55, v56, v57, v58, v59, v80, handler, v83, v84, v85, v86, v87, v88, v89, v90);
            v60 = *a2;
            *(v16 + 40) = *a2;
            *(v16 + 48) = a2[1];
            *(v16 + 56) = a2[2];
            *(v16 + 64) = a2[3];
            *(v16 + 72) = a2[4];
            if (v60 >= 3)
            {
              *(v16 + 80) = a2[5];
            }

            *(v16 + 88) = a1;
            *(v16 + 24) = (*(a5 + 16))(a5, gCommonServerListenerQueue);
            *(v16 + 120) = v88;
            *(v16 + 124) = HIBYTE(v87) == 0;
            *(v16 + 125) = BYTE6(v87);
            *(v16 + 136) = BYTE4(v87);
            *(v16 + 137) = BYTE3(v87);
            *(v16 + 138) = BYTE2(v87);
            *(v16 + 139) = BYTE1(v87);
            v61 = FigDispatchQueueCreateWithPriority("com.apple.coremedia.terminateSecondaryConnectionsQueue", 0, 0);
            *(v16 + 128) = v61;
            if (v61)
            {
              figXPC_RegisterNewServer(v16);
              if (!FigCFDictionaryGetInt32IfPresent(a3, @"xpcServerOption_SelfTerminationTimeout", v16 + 96, v62, v63, v64, v65, v66, v81, handler, v83, v84, v85, v86, v87, v88, v89, v90))
              {
                TimeoutNanoseconds = FigRPCServer_GetTimeoutNanoseconds();
                *(v16 + 96) = TimeoutNanoseconds / 0x3B9ACA00;
                if ((TimeoutNanoseconds / 0x3B9ACA00))
                {
                  *(v16 + 100) = 90;
                }
              }

              v68 = *(v16 + 24);
              handler = MEMORY[0x1E69E9820];
              v83 = 0x40000000;
              v84 = __FigXPCServerStartWithListenerCreatingBlock_block_invoke;
              v85 = &__block_descriptor_tmp_177;
              v86 = v16;
              xpc_connection_set_event_handler(v68, &handler);
              *a4 = v16;
              if (!BYTE5(v87))
              {
                xpc_connection_activate(*(v16 + 24));
              }

              return 0;
            }

            FigXPCServerStartWithListenerCreatingBlock_cold_2(&v88 + 1);
          }

          else
          {
            FigXPCServerStartWithListenerCreatingBlock_cold_3(&v88 + 1);
          }
        }

        else
        {
          FigXPCServerStartWithListenerCreatingBlock_cold_4(&v88 + 1);
        }
      }

      else
      {
        FigXPCServerStartWithListenerCreatingBlock_cold_5(&v88 + 1);
      }
    }

    else
    {
      FigXPCServerStartWithListenerCreatingBlock_cold_6(&v88 + 1);
    }

    return HIDWORD(v88);
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1A6A, v9, v71, v72, a9);
}

uint64_t FigXPCServerCopyXPCEndpoint(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 32);
      *a2 = v2;
      FigXPCRetain(v2);
      return 0;
    }

    else
    {
      FigXPCServerCopyXPCEndpoint_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigXPCServerCopyXPCEndpoint_cold_2(&v5);
    return v5;
  }
}

uint64_t FigXPCServerStartWithClientXPCConnection(_xpc_connection_s *a1, uint64_t a2, void *a3, int a4, void *a5)
{
  LODWORD(cf) = 44;
  HIDWORD(v46) = 0;
  BYTE3(v46) = 0;
  if (figXPC_ServerOneTimeInitialization_sInitFigXPCServerOnce == -1)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_16:
    FigXPCServerStartWithClientXPCConnection_cold_8(&cf + 1);
    goto LABEL_13;
  }

  FigXPCServerStartWithListenerCreatingBlock_cold_1();
  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((*a3 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    FigXPCServerStartWithClientXPCConnection_cold_7(&cf + 1);
    goto LABEL_13;
  }

  if (!a3[1] && !a3[2])
  {
    FigXPCServerStartWithClientXPCConnection_cold_6(&cf + 1);
LABEL_13:
    v10 = 0;
LABEL_14:
    result = HIDWORD(cf);
    goto LABEL_11;
  }

  v10 = malloc_type_calloc(1uLL, 0x90uLL, 0x10F00402F8FECFEuLL);
  if (!v10)
  {
    FigXPCServerStartWithClientXPCConnection_cold_5(&cf + 1);
    goto LABEL_14;
  }

  v11 = FigSimpleMutexCreate();
  *(v10 + 14) = v11;
  if (!v11)
  {
    FigXPCServerStartWithClientXPCConnection_cold_4(&cf + 1);
    goto LABEL_14;
  }

  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  *(v10 + 13) = Mutable;
  if (!Mutable)
  {
    FigXPCServerStartWithClientXPCConnection_cold_3(&cf + 1);
    goto LABEL_14;
  }

  FigCFWeakReferenceTableCreate(v12, 1, v10);
  FigCFDictionaryGetInt32IfPresent(a4, @"xpcServerOption_QueuePriority", &cf, v14, v15, v16, v17, v18, v46, cf, v48, v49, v50, v51, v52, v53, v54, v55);
  FigCFDictionaryGetBooleanIfPresent(a4, @"xpcServerOption_SiloObjectIDs", &v46 + 7, v19, v20, v21, v22, v23, v46, cf, v48, v49, v50, v51, v52, v53, v54, v55);
  FigCFDictionaryGetBooleanIfPresent(a4, @"xpcServerOption_ForwardClientSideAbortActions", &v46 + 6, v24, v25, v26, v27, v28, v46, cf, v48, v49, v50, v51, v52, v53, v54, v55);
  FigCFDictionaryGetBooleanIfPresent(a4, @"xpcServerOption_SelfTerminateOnError", &v46 + 5, v29, v30, v31, v32, v33, v46, cf, v48, v49, v50, v51, v52, v53, v54, v55);
  FigCFDictionaryGetBooleanIfPresent(a4, @"xpcServerOption_OptOutOfPurge", &v46 + 4, v34, v35, v36, v37, v38, v46, cf, v48, v49, v50, v51, v52, v53, v54, v55);
  FigCFDictionaryGetBooleanIfPresent(a4, @"xpcServerOption_AllowSecondaryConnections", &v46 + 3, v39, v40, v41, v42, v43, v46, cf, v48, v49, v50, v51, v52, v53, v54, v55);
  __copy_assignment_8_8_t0w8_pa0_45604_8_pa0_22587_16_pa0_57319_24_pa0_49646_32_pa0_60888_40(v10 + 5, a3);
  *(v10 + 11) = a2;
  *(v10 + 3) = 0;
  *(v10 + 30) = cf;
  *(v10 + 124) = HIBYTE(v46) == 0;
  *(v10 + 125) = BYTE6(v46);
  *(v10 + 136) = BYTE5(v46);
  *(v10 + 137) = BYTE4(v46);
  *(v10 + 138) = BYTE3(v46);
  v44 = FigDispatchQueueCreateWithPriority("com.apple.coremedia.terminateSecondaryConnectionsQueue", 0, 0);
  *(v10 + 16) = v44;
  if (!v44)
  {
    FigXPCServerStartWithClientXPCConnection_cold_2(&cf + 1);
    goto LABEL_14;
  }

  figXPC_RegisterNewServer(v10);
  FigSimpleMutexLock(*(v10 + 14));
  figXPC_HandleNewClientConnection(v10, a1);
  FigSimpleMutexUnlock(*(v10 + 14));
  result = 0;
LABEL_11:
  *a5 = v10;
  return result;
}

void *__copy_assignment_8_8_t0w8_pa0_45604_8_pa0_22587_16_pa0_57319_24_pa0_49646_32_pa0_60888_40(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  return result;
}

void figXPC_RegisterNewServer(uint64_t a1)
{
  if (figXPC_ServerRegistryOneTimeInitialization_sInitServerRegistryOnce != -1)
  {
    figXPC_RegisterNewServer_cold_1();
  }

  *(a1 + 16) = FigAtomicIncrement32(gNextServerNumber);
  *(a1 + 8) = (*(a1 + 16) << 40) | (getpid() << 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __figXPC_RegisterNewServer_block_invoke;
  block[3] = &__block_descriptor_tmp_184;
  block[4] = a1;
  dispatch_sync(gServerRegistry_0, block);
}

void figXPC_HandleNewClientConnection(uint64_t a1, xpc_connection_t connection)
{
  cf = 0;
  v33 = 0;
  pid = xpc_connection_get_pid(connection);
  if (pid <= 0)
  {
    figXPC_HandleNewClientConnection_cold_1(pid, v5, v6, v7, v8, v9, v10, v11, v31[0]);
  }

  else
  {
    v12 = pid;
    v13 = &gHasProcessInitialized;
    if (gHasProcessInitialized)
    {
      v13 = &isFirstTime;
    }

    *v13 = 1;
    v14 = *(a1 + 64);
    if (v14 && !v14(connection))
    {
      xpc_connection_cancel(connection);
      goto LABEL_7;
    }

    if (!figXPC_CopyInfoForProcess(a1, v12, &v33, v7, v8, v9, v10, v11, v31[0]))
    {
      FigServer_CopyProcessName(v12, &cf, v15, v16, v17, v18, v19, v20);
      v21 = v33;
      if (*(v33 + 32))
      {
        xpc_connection_cancel(connection);
      }

      else
      {
        v34 = 0;
        *(v33 + 32) = connection;
        xpc_retain(connection);
        xpc_connection_set_target_queue(connection, *(v21 + 24));
        FigSimpleMutexLock(*(v21 + 80));
        Count = CFArrayGetCount(*(v21 + 88));
        if (Count >= 1)
        {
          v23 = Count;
          for (i = 0; i != v23; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v21 + 88), i);
            ValueAtIndex[7] = xpc_retain(connection);
          }
        }

        FigSimpleMutexUnlock(*(v21 + 80));
        figXPC_CreateNewConnectionInfo(v21, *(v21 + 24), &v34, v26, v27, v28, v29, v30);
        xpc_connection_set_context(connection, v34);
        xpc_connection_set_finalizer_f(connection, figXPC_ConnectionInfoFinalizer);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 0x40000000;
        v31[2] = __figXPC_HandleNewClientConnection_block_invoke;
        v31[3] = &__block_descriptor_tmp_189;
        v31[4] = a1;
        v31[5] = v21;
        v31[6] = connection;
        xpc_connection_set_event_handler(connection, v31);
        xpc_connection_resume(connection);
      }

      goto LABEL_17;
    }

    v21 = v33;
    if (v33)
    {
LABEL_17:
      CFRelease(v21);
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }
}

void FigXPCServerActivate(uint64_t a1)
{
  if (a1)
  {
    xpc_connection_activate(*(a1 + 24));
  }
}

uint64_t FigXPCPurgeObjectsForPIDWithReportingBlock(int a1, uint64_t a2)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigXPCPurgeObjectsForPIDWithReportingBlock_block_invoke;
  block[3] = &__block_descriptor_tmp_105;
  block[4] = a2;
  v7 = a1;
  v8 = 0;
  v9 = UpTimeNanoseconds;
  dispatch_sync(gServerRegistry_0, block);
  return 0;
}

void __FigXPCPurgeObjectsForPIDWithReportingBlock_block_invoke(uint64_t a1)
{
  v2 = gServerRegistry_1;
  v3.length = CFArrayGetCount(gServerRegistry_1);
  v3.location = 0;

  CFArrayApplyFunction(v2, v3, figXPC_PurgeObjectsForPIDArrayApplier, (a1 + 32));
}

size_t FigXPCRemoteClientCreateWithConnectionCreatingBlockCommon(uint64_t a1, unint64_t *a2, const void *a3, void *a4)
{
  if (figXPC_RemoteClientOneTimeInitialization_sInitFigXPCRemoteClientOnce != -1)
  {
    FigXPCRemoteClientCreateWithConnectionCreatingBlockCommon_cold_1();
  }

  v9 = *MEMORY[0x1E695E480];
  if (figXPCRemoteClient_GetTypeID_sRegisterFigXPCRemoteClientTypeOnce != -1)
  {
    FigXPCRemoteClientCreateWithConnectionCreatingBlockCommon_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigXPCRemoteClientCreateWithConnectionCreatingBlockCommon_cold_5(&v41 + 1);
    return HIDWORD(v41);
  }

  v11 = Instance;
  if (*a2 - 1 >= 4)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v35 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x488, v4, v33, v34, v38);
    if (v35)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (figXPCClientConnectionInfo_GetTypeID_sRegisterFigXPCClientConnectionInfoTypeOnce != -1)
    {
      FigXPCRemoteClientCreateWithConnectionCreatingBlockCommon_cold_3();
    }

    v12 = _CFRuntimeCreateInstance();
    if (v12)
    {
      v13 = v12;
      v14 = FigCFWeakReferenceTableCreate(v9, 1, (v12 + 112));
      if (!v14)
      {
        if (a3)
        {
          v15 = CFRetain(a3);
          v16 = @"SomeServerDiedSomewhere";
          *(v13 + 96) = @"SomeServerDiedSomewhere";
          *(v13 + 88) = v15;
          *(v13 + 16) = a1;
          if (v15)
          {
            CFDictionaryGetValueIfPresent(v15, @"xpcRemoteClientOption_DeathNoticeName", (v13 + 96));
            FigCFDictionaryGetBooleanIfPresent(*(v13 + 88), @"xpcRemoteClientOption_FilterHandlesNotificationsForUnknownObjects", v13 + 104, v17, v18, v19, v20, v21, v38, v41, v42, v43, v44, v45, v46, v47, v48, v49);
            FigCFDictionaryGetBooleanIfPresent(*(v13 + 88), @"xpcRemoteClientOption_DoNotMonitorConnection", v13 + 105, v22, v23, v24, v25, v26, v39, v41, v42, v43, v44, v45, v46, v47, v48, v49);
            FigCFDictionaryGetBooleanIfPresent(*(v13 + 88), @"xpcRemoteClientOption_DisallowSendingSyncMessages", v13 + 152, v27, v28, v29, v30, v31, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
            v16 = *(v13 + 96);
            if (!v16)
            {
LABEL_19:
              *(v13 + 128) = FigSimpleMutexCreate();
              v36 = *a2;
              *(v13 + 24) = *a2;
              *(v13 + 32) = a2[1];
              *(v13 + 40) = a2[2];
              *(v13 + 48) = a2[3];
              *(v13 + 56) = a2[4];
              if (v36 >= 2)
              {
                *(v13 + 64) = a2[5];
                if (v36 != 2)
                {
                  *(v13 + 72) = a2[6];
                  if (v36 >= 4)
                  {
                    *(v13 + 80) = a2[7];
                  }
                }
              }

              goto LABEL_23;
            }
          }
        }

        else
        {
          *(v13 + 16) = a1;
          v16 = @"SomeServerDiedSomewhere";
          *(v13 + 88) = 0;
          *(v13 + 96) = @"SomeServerDiedSomewhere";
        }

        CFRetain(v16);
        goto LABEL_19;
      }

      v35 = v14;
      CFRelease(v13);
LABEL_29:
      CFRelease(v11);
      return v35;
    }

    FigXPCRemoteClientCreateWithConnectionCreatingBlockCommon_cold_4(&v41);
    v35 = v41;
    if (v41)
    {
      goto LABEL_29;
    }
  }

  v13 = 0;
LABEL_23:
  v35 = 0;
  v11[2] = v13;
  *a4 = v11;
  return v35;
}

void *figXPCRemoteClient_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figXPCRemoteClient_Finalize(uint64_t a1)
{
  if (*(a1 + 24))
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener(DefaultLocalCenter, a1, figXPCRemoteClient_PrimaryConnectionNotificationCallback, 0, *(a1 + 24));
    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 24) = 0;
    }
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }
}

double figXPCClientConnectionInfo_Init(_OWORD *a1)
{
  result = 0.0;
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

void figXPCClientConnectionInfo_Finalize(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 112) = 0;
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 96) = 0;
  }

  FigSimpleMutexDestroy(*(a1 + 128));
  v5 = *(a1 + 136);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 136) = 0;
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 144) = 0;
  }
}

__CFString *figXPCClientConnectionInfo_CopyDebugDesc(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = a1[2];
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigXPCClientConnectionInfo %p %s> RC %d", a1, v3, v4);
  return Mutable;
}

uint64_t figXPCCreateXPCConnectionInternalCommon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, int a7, int a8)
{
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v41 = 0xFFFFFFFFLL;
  v13 = *(a2 + 88);
  if (v13)
  {
    FigCFDictionaryGetInt32IfPresent(v13, @"xpcRemoteClientOption_QueuePriority", &v41, a4, a5, a6, a7, a8, v33, v35, handler, v37, v38, v39, v40, v41, v42, v43);
  }

  v14 = *MEMORY[0x1E695E480];
  if (figXPCConnection_GetTypeID_sRegisterFigXPCConnectionTypeOnce != -1)
  {
    figXPCCreateXPCConnectionInternalCommon_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v16 = Instance;
  if (!a1)
  {
    v32 = figXPCCreateXPCConnectionInternalCommon_cold_7(Instance, &v45);
    v30 = v45;
    if (v32)
    {
      goto LABEL_22;
    }

LABEL_32:
    CFRelease(v16);
    goto LABEL_22;
  }

  if (!Instance)
  {
    figXPCCreateXPCConnectionInternalCommon_cold_6(&v45);
    v30 = v45;
    goto LABEL_22;
  }

  *(Instance + 16) = CFRetain(a2);
  *(v16 + 86) = (a3 & 0x400000000) != 0;
  v17 = FigCFWeakReferenceHolderCreateWithReferencedObject(a1);
  *(v16 + 24) = v17;
  if (!v17)
  {
    figXPCCreateXPCConnectionInternalCommon_cold_5(&v45);
LABEL_31:
    v30 = v45;
    goto LABEL_32;
  }

  v18 = FigSimpleMutexCreate();
  *(v16 + 96) = v18;
  if (!v18)
  {
    figXPCCreateXPCConnectionInternalCommon_cold_4(&v45);
    goto LABEL_31;
  }

  v19 = FigCFWeakReferenceTableCreate(v14, 1, (v16 + 32));
  if (v19)
  {
    v30 = v19;
    goto LABEL_32;
  }

  if ((a3 & 0x200000000) != 0)
  {
    *(v16 + 85) = 1;
    asprintf(&v44, "%s.secondary.%p.notifications", *(a2 + 16), v16);
    asprintf(&v43, "%s.secondary.%p.connection", *(a2 + 16), v16);
    v35 = v16;
    asprintf(&v42, "%s.secondary.%p.clientMessages");
  }

  else
  {
    asprintf(&v44, "%s.notifications", *(a2 + 16));
    asprintf(&v43, "%s.connections", *(a2 + 16));
    asprintf(&v42, "%s.clientMessages");
  }

  *(v16 + 56) = figXPC_CreateSerialDispatchQueueWithPriority(v44, v41);
  SerialDispatchQueueWithPriority = figXPC_CreateSerialDispatchQueueWithPriority(v43, v41);
  *(v16 + 48) = SerialDispatchQueueWithPriority;
  v21 = (*(a5 + 16))(a5, SerialDispatchQueueWithPriority);
  if (!v21)
  {
    figXPCCreateXPCConnectionInternalCommon_cold_3(&v45);
    goto LABEL_31;
  }

  v22 = v21;
  *(v16 + 40) = v21;
  xpc_connection_set_target_queue(v21, *(v16 + 48));
  v23 = *(v16 + 16);
  if (v23[6] || v23[3] >= 2uLL && v23[8])
  {
    *(v16 + 72) = figXPC_CreateSerialDispatchQueueWithPriority(v42, v41);
  }

  v24 = FigCFWeakReferenceHolderCreateWithReferencedObject(v16);
  if (!v24)
  {
    figXPCCreateXPCConnectionInternalCommon_cold_2(&v45);
    goto LABEL_31;
  }

  xpc_connection_set_context(v22, v24);
  xpc_connection_set_finalizer_f(v22, figXPC_ServerConnectionFinalizer);
  handler = MEMORY[0x1E69E9820];
  v37 = 0x40000000;
  v38 = __figXPCCreateXPCConnectionInternalCommon_block_invoke;
  v39 = &__block_descriptor_tmp_134;
  v40 = v22;
  xpc_connection_set_event_handler(v22, &handler);
  if (FigCFDictionaryGetInt32IfPresent(*(*(v16 + 16) + 88), @"xpcRemoteClientOption_UserID", &v41 + 4, v25, v26, v27, v28, v29, v34, v35, handler, v37, v38, v39, v40, v41, v42, v43))
  {
    xpc_connection_set_target_uid();
  }

  xpc_connection_activate(*(v16 + 40));
  v30 = 0;
  *a4 = v16;
LABEL_22:
  free(v44);
  free(v43);
  free(v42);
  return v30;
}

void __figXPCCreateXPCConnectionInternalAsync_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

NSObject *figXPC_CreateSerialDispatchQueueWithPriority(const char *a1, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return FigDispatchQueueCreateStandardDispatchQueue(a1, 0, 0, QOS_CLASS_UNSPECIFIED);
  }

  else
  {
    return FigDispatchQueueCreateWithPriority(a1, 0, a2);
  }
}

void __figXPCCreateXPCConnectionInternalCommon_block_invoke(uint64_t a1, __CFDictionary *a2)
{
  v2 = a2;
  v4 = MEMORY[0x19A8DA4F0](a2);
  context = xpc_connection_get_context(*(a1 + 32));
  v6 = FigCFWeakReferenceHolderCopyReferencedObject(context);
  if (v6)
  {
    v7 = v6;
    if (v4 == MEMORY[0x1E69E9E98])
    {
      if (v2 == MEMORY[0x1E69E9E20])
      {
        v19 = xpc_connection_copy_invalidation_reason();
        xpc_dictionary_get_string(MEMORY[0x1E69E9E20], *MEMORY[0x1E69E9E28]);
        *(v7 + 80) = 1;
        free(v19);
      }

      v91 = 0;
      *(v7 + 64) = 0;
      if (*(v7 + 86))
      {
        *(v7 + 80) = 1;
      }

      *(v7 + 84) = 0;
      FigAtomicCompareAndSwap32(1, 0, (v7 + 92));
      FigSimpleMutexLock(*(*(v7 + 16) + 128));
      v20 = *(v7 + 16);
      v21 = *(v20 + 136);
      if (v21)
      {
        CFRelease(v21);
        v20 = *(v7 + 16);
        *(v20 + 136) = 0;
      }

      v22 = *(v20 + 144);
      if (v22)
      {
        CFRelease(v22);
        v20 = *(v7 + 16);
        *(v20 + 144) = 0;
      }

      FigSimpleMutexUnlock(*(v20 + 128));
      FigCFWeakReferenceTableCopyValues(*(v7 + 32), &v91);
      CFRetain(v7);
      if (v91)
      {
        CFRetain(v91);
        v23 = v91;
      }

      else
      {
        v23 = 0;
      }

      v24 = gCommonRemoteClientCleanupQueue;
      block = MEMORY[0x1E69E9820];
      v82 = 0x40000000;
      v83 = __figXPCConnection_HandleConnectionDemise_block_invoke;
      v84 = &__block_descriptor_tmp_143;
      v85 = v23;
      v86 = v7;
      goto LABEL_25;
    }

    if (v4 != MEMORY[0x1E69E9E80])
    {
      goto LABEL_28;
    }

    uint64 = xpc_dictionary_get_uint64(v2, ".Operation");
    if (uint64 > 778989427)
    {
      if (uint64 == 779118369)
      {
        v38 = *(v7 + 16);
        if (*(v38 + 24) >= 3uLL && *(v38 + 72))
        {
          CFRetain(v7);
          FigXPCRetain(v2);
          v39 = *(v7 + 56);
          block = MEMORY[0x1E69E9820];
          v82 = 0x40000000;
          v83 = __figXPCConnection_CallObjectPurgedCallback_block_invoke;
          v84 = &__block_descriptor_tmp_149;
          v85 = v2;
          v86 = v7;
          dispatch_async(v39, &block);
        }

        int64 = xpc_dictionary_get_int64(v2, ".PurgeIdentifier");
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetInt64(Mutable, @"xpcConnectionNotificationServerStatePurgedPayloadKey_PurgeIdentifier", int64, v42, v43, v44, v45, v46);
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification(DefaultLocalCenter, @"xpcConnectionNotification_ServerStatePurged", v7, Mutable, 0, v48, v49, v50, v80);
        if (!Mutable)
        {
          goto LABEL_28;
        }

        v25 = Mutable;
        goto LABEL_27;
      }

      if (uint64 == 778989428)
      {
        v91 = 0;
        FigXPCMessageCopyCFString(v2, ".NotificationName", &v91);
        if (!v91)
        {
          goto LABEL_28;
        }

        v9 = xpc_dictionary_get_uint64(v2, ".objectID");
        v16 = figXPCConnection_copyObjectForID(v7, v9, v10, v11, v12, v13, v14, v15);
        if (v16)
        {
          v17 = v16;
          if (v91)
          {
            CFRetain(v91);
          }

          FigXPCRetain(v2);
          if (*(*(v7 + 16) + 40))
          {
            v18 = *(*(v7 + 16) + 40);
          }

          else
          {
            v18 = 0;
          }

          v24 = *(v7 + 56);
          block = MEMORY[0x1E69E9820];
          v82 = 0x40000000;
          v83 = __figXPCConnection_HandleNotificationMessage_block_invoke;
          v84 = &__block_descriptor_tmp_144;
          v85 = v2;
          v86 = v18;
          v87 = v17;
          v88 = v91;
        }

        else
        {
          v61 = *(v7 + 16);
          if (!*(v61 + 104) || !*(v61 + 40))
          {
LABEL_26:
            v25 = v91;
            if (v91)
            {
LABEL_27:
              CFRelease(v25);
            }

LABEL_28:
            CFRelease(v7);
            return;
          }

          v62 = *(v61 + 40);
          if (v91)
          {
            CFRetain(v91);
          }

          FigXPCRetain(v2);
          v24 = *(v7 + 56);
          block = MEMORY[0x1E69E9820];
          v82 = 0x40000000;
          v83 = __figXPCConnection_HandleNotificationMessage_block_invoke_2;
          v84 = &__block_descriptor_tmp_145;
          v85 = v2;
          v86 = v62;
          v87 = v91;
        }

LABEL_25:
        dispatch_async(v24, &block);
        goto LABEL_26;
      }

LABEL_48:
      v51 = *(v7 + 16);
      if (!v51[6] && (v51[3] < 2uLL || !v51[8]))
      {
        goto LABEL_28;
      }

      v52 = xpc_dictionary_get_uint64(v2, ".objectID");
      v59 = *(v7 + 16);
      if (v59[6] && v52)
      {
        v63 = figXPCConnection_copyObjectForID(v7, v52, v53, v54, v55, v56, v57, v58);
        if (!v63)
        {
          goto LABEL_28;
        }

        v64 = v63;
        xpc_retain(v2);
        v60 = *(v7 + 72);
        block = MEMORY[0x1E69E9820];
        v82 = 0x40000000;
        v83 = __figXPCConnection_CallClientMessageHandlers_block_invoke;
        v84 = &__block_descriptor_tmp_153;
        v85 = v7;
        v86 = v64;
        v87 = v2;
      }

      else
      {
        if (v59[3] < 2uLL || !v59[8])
        {
          goto LABEL_28;
        }

        xpc_retain(v2);
        v60 = *(v7 + 72);
        block = MEMORY[0x1E69E9820];
        v82 = 0x40000000;
        v83 = __figXPCConnection_CallClientMessageHandlers_block_invoke_2;
        v84 = &__block_descriptor_tmp_154;
        v85 = v7;
        v86 = v2;
      }

      dispatch_async(v60, &block);
      goto LABEL_28;
    }

    if (uint64 == 778264932)
    {
      v91 = 0;
      reply = xpc_dictionary_create_reply(v2);
      remote_connection = xpc_dictionary_get_remote_connection(v2);
      v28 = FigCFWeakReferenceHolderCopyReferencedObject(*(v7 + 24));
      v36 = v28;
      if (v28)
      {
        v37 = v28[2];
        block = MEMORY[0x1E69E9820];
        v82 = 0x40000000;
        v83 = __figXPCConnection_handleCreateAdminConnectionReplyMessageFromServer_block_invoke;
        v84 = &__block_descriptor_tmp_146;
        v85 = v2;
        if (!figXPCCreateXPCConnectionInternalSync(v28, v37, 0x600000000, &v91, &block))
        {
          v36[4] = v91;
          v91 = 0;
        }

        if (!remote_connection)
        {
          goto LABEL_37;
        }
      }

      else
      {
        __figXPCCreateXPCConnectionInternalCommon_block_invoke_cold_3(0, v29, v30, v31, v32, v33, v34, v35, v80);
        if (!remote_connection)
        {
LABEL_37:
          if (v36)
          {
            CFRelease(v36);
          }

          if (v91)
          {
            CFRelease(v91);
          }

          FigXPCRelease(reply);
          goto LABEL_28;
        }
      }

      if (reply)
      {
        xpc_connection_send_message(remote_connection, reply);
      }

      goto LABEL_37;
    }

    if (uint64 != 778398819)
    {
      goto LABEL_48;
    }

    block = 0;
    v90 = 0;
    v91 = 0;
    value = 0;
    v65 = xpc_dictionary_create_reply(v2);
    v73 = v65;
    if (*(*(v7 + 16) + 24) <= 3uLL)
    {
      __figXPCCreateXPCConnectionInternalCommon_block_invoke_cold_2(v65, v66, v67, v68, v69, v70, v71, v72, v80);
    }

    else
    {
      if (!v2)
      {
        __figXPCCreateXPCConnectionInternalCommon_block_invoke_cold_1(v65, v66, v67, v68, v69, v70, v71, v72, v80);
        goto LABEL_93;
      }

      if (!FigXPCConnectionCopyMemoryOriginForConnectedProcess(v7, &v90))
      {
        if (!FigXPCConnectionCopyMemoryRecipientForConnectedProcess(v7, &v91))
        {
          v74 = *MEMORY[0x1E695E480];
          v75 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s.%d.eventlink", *(*(v7 + 16) + 16), *(v7 + 88));
          v76 = CFDictionaryCreateMutable(v74, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(v76, @"FigMemoryPool_LoggingName", v75);
          v77 = CMMemoryPoolCreate(v76);
          if (v76)
          {
            CFRelease(v76);
          }

          v78 = xpc_dictionary_get_int64(v2, "ServerEventLinkMachThreadPriority");
          v79 = xpc_dictionary_get_uint64(v2, "ServerEventLinkFigThreadPriority");
          v2 = v91;
          if (!FigOSEventLinkServerCreate(v74, v79, v78, v75, 0, v77, v90, v91, &block) && !FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection(block, *(v7 + 40)) && !FigOSEventLinkServerCopyRemoteCreationInfoXPCObject(block, &value))
          {
            xpc_dictionary_set_value(v73, "RemoteEventLinkCreationInfo", value);
            (*(*(v7 + 16) + 80))(block, 0);
          }

          xpc_connection_send_message(*(v7 + 40), v73);
          if (v77)
          {
            CFRelease(v77);
          }

          if (v2)
          {
            goto LABEL_80;
          }

          goto LABEL_81;
        }

        v2 = v91;
LABEL_93:
        xpc_connection_send_message(*(v7 + 40), v73);
        v75 = 0;
        if (v2)
        {
LABEL_80:
          CFRelease(v2);
        }

LABEL_81:
        if (v90)
        {
          CFRelease(v90);
        }

        if (v75)
        {
          CFRelease(v75);
        }

        FigXPCRelease(value);
        FigXPCRelease(v73);
        v25 = block;
        if (!block)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    v2 = 0;
    goto LABEL_93;
  }
}

double figXPCConnection_Init(_OWORD *a1)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void figXPCConnection_Finalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    xpc_connection_cancel(v2);
    v3 = *(a1 + 40);
    if (v3)
    {
      *(a1 + 40) = 0;
      xpc_release(v3);
    }
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 72) = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 48) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 32) = 0;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 16) = 0;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 24) = 0;
  }

  FigSimpleMutexDestroy(*(a1 + 96));
  *(a1 + 96) = 0;
  v10 = *(a1 + 104);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 104) = 0;
  }
}

__CFString *figXPCConnection_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = *(*(a1 + 16) + 16);
  v4 = CFGetRetainCount(a1);
  if (*(a1 + 80))
  {
    v5 = " INVALID";
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigXPCConnection %p %s> RC %d%s", a1, v3, v4, v5);
  return Mutable;
}

size_t figXPCConnection_DeadConnectionObjectApplierFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v11 = *(a3 + 16);
  v12 = *(v11 + 32);
  if (v12)
  {
    v12(a2);
    v11 = *(a3 + 16);
  }

  v13 = *(a3 + 88);
  v14 = *(v11 + 120);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32(Mutable, @"PID", v13, v16, v17, v18, v19, v20);
  v26 = FigCFDictionarySetInt64(Mutable, @"ServerCapabilities", v14, v21, v22, v23, v24, v25);
  IsServerProcess = FigServer_IsServerProcess(v26, v27);
  v29 = MEMORY[0x1E695E4D0];
  if (!IsServerProcess)
  {
    v29 = MEMORY[0x1E695E4C0];
  }

  FigCFDictionarySetValue(Mutable, @"IsIndirectConnection", *v29);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification(DefaultLocalCenter, @"MediaServicesProcessDeath", a2, Mutable, 0, v31, v32, v33, v40);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v34 = CMNotificationCenterGetDefaultLocalCenter();
  v38 = *(*(a3 + 16) + 96);

  return CMNotificationCenterPostNotification(v34, v38, a2, 0, 0, v35, v36, v37, a9);
}

id figXPCConnection_copyObjectForID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = FigCFWeakReferenceTableCopyValue(*(a1 + 32), a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    v17 = *(*(a1 + 16) + 112);

    return FigCFWeakReferenceTableCopyValue(v17, a2, v11, v12, v13, v14, v15, v16);
  }

  return result;
}

xpc_connection_t __figXPCConnection_handleCreateAdminConnectionReplyMessageFromServer_block_invoke(uint64_t a1)
{
  value = xpc_dictionary_get_value(*(a1 + 32), ".SecondaryEndpoint");
  if (!value)
  {
    v11 = 3308;
LABEL_8:
    __figXPCConnection_handleCreateAdminConnectionReplyMessageFromServer_block_invoke_cold_1(v11, v2, v3, v4, v5, v6, v7, v8, v12);
    return 0;
  }

  v9 = value;
  if (MEMORY[0x19A8DA4F0]() != MEMORY[0x1E69E9E90])
  {
    v11 = 3309;
    goto LABEL_8;
  }

  result = xpc_connection_create_from_endpoint(v9);
  if (!result)
  {
    v11 = 3313;
    goto LABEL_8;
  }

  return result;
}

uint64_t figXPCConnection_createPingMessage(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  xdict = 0;
  memset(buffer, 0, sizeof(buffer));
  IsServerProcess = FigServer_IsServerProcess(a1, a2);
  v4 = FigXPCCreateBasicMessage(0x2E706E67u, 0, &xdict);
  if (v4)
  {
    v7 = xdict;
  }

  else
  {
    v5 = getpid();
    proc_name(v5, buffer, 0x80u);
    v6 = xdict;
    xpc_dictionary_set_string(xdict, ".ProcessName", buffer);
    xpc_dictionary_set_BOOL(v6, ".IsDaemon", IsServerProcess);
    v7 = 0;
    *a1 = v6;
  }

  FigXPCRelease(v7);
  return v4;
}

double figXPCPerProcessInfo_Init(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figXPCPerProcessInfo_Finalize(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 88);
  if (v2)
  {
    if (*(a1 + 48))
    {
      Count = CFArrayGetCount(v2);
      if (Count >= 1)
      {
        v4 = Count;
        for (i = 0; i != v4; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), i);
          figXPC_ForgetNotificationsForServedObject(*(a1 + 112), ValueAtIndex);
          FigCFWeakReferenceTableRemoveValue(*(a1 + 48), ValueAtIndex[3]);
        }
      }
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 88) = 0;
    }
  }

  FigSimpleMutexDestroy(*(a1 + 80));
  *(a1 + 80) = 0;
  v8 = *(a1 + 32);
  if (v8)
  {
    xpc_connection_cancel(v8);
    v9 = *(a1 + 32);
    if (v9)
    {
      *(a1 + 32) = 0;
      xpc_release(v9);
    }
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    dispatch_release(v10);
    *(a1 + 24) = 0;
  }

  v11 = *(a1 + 144);
  if (v11)
  {
    v12 = CFArrayGetCount(v11);
    if (v12 >= 1)
    {
      v13 = v12;
      v14 = 0;
      v15 = MEMORY[0x1E69E9E68];
      do
      {
        v16 = CFArrayGetValueAtIndex(*(a1 + 144), v14);
        v17 = v16;
        if (v16 && MEMORY[0x19A8DA4F0](v16) == v15)
        {
          xpc_connection_cancel(v17);
          xpc_release(v17);
        }

        else
        {
          v38 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, &v38, &type);
          v19 = v38;
          v20 = type;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v21 = v19;
          }

          else
          {
            v21 = v19 & 0xFFFFFFFE;
          }

          if (v21)
          {
            v22 = *(*(a1 + 56) + 88);
            v23 = *(a1 + 16);
            v39 = 136315906;
            v40 = "figXPCPerProcessInfo_DisposeSecondaryConnections";
            v41 = 2048;
            v42 = v17;
            v43 = 2082;
            v44 = v22;
            v45 = 1024;
            v46 = v23;
            LODWORD(v36) = 38;
            v24 = _os_log_send_and_compose_impl(v21, 0, v47, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v20, "<< FigXPC >> %s: Invalid secondary connection(%p) detected for server %{public}s clientPID %d", &v39, v36);
            LOBYTE(v19) = v38;
          }

          else
          {
            v24 = 0;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v24, v24 != v47, v19);
        }

        ++v14;
      }

      while (v13 != v14);
    }

    v25 = *(a1 + 144);
    if (v25)
    {
      CFRelease(v25);
      *(a1 + 144) = 0;
    }
  }

  v26 = *(a1 + 136);
  if (v26)
  {
    *(a1 + 136) = 0;
    xpc_release(v26);
  }

  v27 = *(a1 + 128);
  if (v27)
  {
    *(a1 + 128) = 0;
    xpc_release(v27);
  }

  v28 = *(a1 + 120);
  if (v28)
  {
    dispatch_release(v28);
    *(a1 + 120) = 0;
  }

  v29 = *(a1 + 48);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 48) = 0;
  }

  v30 = *(a1 + 104);
  if (v30)
  {
    dispatch_source_cancel(v30);
    *(a1 + 104) = 0;
  }

  v31 = *(a1 + 112);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 112) = 0;
  }

  v32 = *(a1 + 64);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 64) = 0;
  }

  v33 = *(a1 + 72);
  if (v33)
  {
    CFRelease(v33);
    *(a1 + 72) = 0;
  }

  v34 = *(a1 + 160);
  if (v34)
  {
    CFRelease(v34);
    *(a1 + 160) = 0;
  }

  v35 = *(a1 + 168);
  if (v35)
  {
    CFRelease(v35);
    *(a1 + 168) = 0;
  }
}

uint64_t figXPC_ForgetNotificationsForServedObject(uint64_t a1, CFTypeRef a2)
{
  FigSimpleMutexLock(*(a1 + 152));
  v4 = *(a1 + 160);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 160), v7);
        if (*ValueAtIndex == a2)
        {
          v9 = ValueAtIndex;
          CFArrayRemoveValueAtIndex(*(a1 + 160), v7);
          v10 = v9[1];
          if (v10)
          {
            CFRelease(v10);
          }

          v11 = v9[2];
          if (v11)
          {
            CFRelease(v11);
          }

          if (*v9)
          {
            CFRelease(*v9);
          }

          free(v9);
          --v6;
        }

        else
        {
          ++v7;
        }
      }

      while (v7 < v6);
    }
  }

  v12 = *(a1 + 152);

  return FigSimpleMutexUnlock(v12);
}

size_t figXPC_RegisterServedObjectWithID(uint64_t a1, void *a2, const void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, CMBlockBufferRef *a8)
{
  if (figXPCServedObject_GetTypeID_sRegisterServedObjectTypeOnce != -1)
  {
    figXPC_RegisterServedObjectWithID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v17 = Instance;
    *(Instance + 16) = CFRetain(a3);
    *(v17 + 40) = a6;
    *(v17 + 48) = a7;
    *(v17 + 32) = a5;
    *(v17 + 56) = FigXPCRetain(a2);
    *(v17 + 24) = a8;
    v18 = FigCFWeakReferenceTableAddValueAssociatedWithKey(*(a1 + 48), a3, a8);
    if (!v18)
    {
      CFArrayAppendValue(*(a1 + 88), v17);
      FigCFWeakReferenceStore((v17 + 64), a1);
      if (a4)
      {
        v21 = 0;
      }

      else
      {
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener(DefaultLocalCenter, v17, figXPCServedObject_NotificationCallback, 0, a3, 0, 0, v20, v23);
        v21 = 1;
      }

      *(v17 + 72) = v21;
    }

    CFRelease(v17);
  }

  else
  {
    figXPC_RegisterServedObjectWithID_cold_2(&v24);
    return v24;
  }

  return v18;
}

double figXPCServedObject_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void figXPCServedObject_Finalize(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v2();
      *(a1 + 32) = 0;
    }
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (!*(a1 + 72) || (DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter(), FigNotificationCenterRemoveWeakListener(DefaultLocalCenter, a1, figXPCServedObject_NotificationCallback, 0, *(a1 + 16)), (v3 = *(a1 + 16)) != 0))
    {
      CFRelease(v3);
      *(a1 + 16) = 0;
    }
  }

  FigCFWeakReferenceDestroy((a1 + 64));
  v5 = *(a1 + 56);
  if (v5)
  {
    *(a1 + 56) = 0;

    xpc_release(v5);
  }
}

void figXPC_EnqueueNotification(uint64_t a1, uint64_t a2, CFTypeRef a3, const void *a4, const void *a5)
{
  v9 = *(a1 + 56);
  if (*(v9 + 40) < 2uLL)
  {
    goto LABEL_17;
  }

  v10 = *(v9 + 72);
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10(a4);
  if (v11 == 3)
  {
    return;
  }

  if (v11 != 2)
  {
    if (v11 == 1)
    {
      Count = CFArrayGetCount(*(a2 + 160));
      if (Count >= 1)
      {
        v13 = Count;
        v14 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 160), v14);
          if (*ValueAtIndex == a3)
          {
            if (CFEqual(a4, ValueAtIndex[1]))
            {
              return;
            }
          }
        }

        while (v13 != ++v14);
      }
    }

LABEL_17:
    v21 = malloc_type_malloc(0x18uLL, 0xE00406B48E91AuLL);
    if (v21)
    {
      v22 = v21;
      *v21 = CFRetain(a3);
      v22[1] = CFRetain(a4);
      if (a5)
      {
        v23 = CFRetain(a5);
      }

      else
      {
        v23 = 0;
      }

      v22[2] = v23;
      v24 = *(a2 + 160);

      CFArrayAppendValue(v24, v22);
    }

    return;
  }

  v16 = CFArrayGetCount(*(a2 + 160));
  if (v16 < 1)
  {
    goto LABEL_17;
  }

  v17 = v16;
  v18 = 0;
  while (1)
  {
    v19 = CFArrayGetValueAtIndex(*(a2 + 160), v18);
    if (*v19 == a3)
    {
      v20 = v19;
      if (CFEqual(a4, v19[1]))
      {
        break;
      }
    }

    if (v17 == ++v18)
    {
      goto LABEL_17;
    }
  }

  v25 = v20[2];
  v20[2] = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  if (v25)
  {

    CFRelease(v25);
  }
}

void figXPC_SendNotificationCheckpoint(const void *a1, _xpc_connection_s *a2)
{
  CFRetain(a1);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __figXPC_SendNotificationCheckpoint_block_invoke;
  v4[3] = &__block_descriptor_tmp_166;
  v4[4] = a1;
  v4[5] = a2;
  xpc_connection_send_barrier(a2, v4);
}

double figXPCEnqueuedNotifications_Init(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void figXPCEnqueuedNotifications_Finalize(uint64_t a1)
{
  FigSimpleMutexDestroy(*(a1 + 152));
  v2 = *(a1 + 160);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 160) = 0;
  }

  v3 = *(a1 + 144);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void figXPC_ForgetProcessInfo(uint64_t a1, int a2)
{
  v3 = a2;
  Value = CFDictionaryGetValue(*(a1 + 104), a2);
  if (Value)
  {
    v5 = Value;
    CFRetain(Value);
    CFDictionaryRemoveValue(*(a1 + 104), v3);
    v6 = v5[14];
    FigSimpleMutexLock(*(v6 + 152));
    *(v6 + 172) = 3;
    v7 = *(v6 + 152);
    v8 = *(v6 + 160);
    *(v6 + 160) = 0;
    FigSimpleMutexUnlock(v7);
    if (v8)
    {
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
          if (*ValueAtIndex)
          {
            CFRelease(*ValueAtIndex);
          }

          v13 = ValueAtIndex[1];
          if (v13)
          {
            CFRelease(v13);
          }

          v14 = ValueAtIndex[2];
          if (v14)
          {
            CFRelease(v14);
          }

          free(ValueAtIndex);
        }
      }

      CFRelease(v8);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __figXPC_ForgetProcessInfo_block_invoke;
    block[3] = &__block_descriptor_tmp_176;
    block[4] = v5;
    dispatch_async(gCommonServerProcessCleanupQueue, block);
  }

  else
  {
    v15 = *(a1 + 104);

    CFDictionaryRemoveValue(v15, v3);
  }
}

void __FigXPCServerStartWithListenerCreatingBlock_block_invoke(uint64_t a1, _xpc_connection_s *a2)
{
  v4 = MEMORY[0x19A8DA4F0](a2);
  if (v4 == MEMORY[0x1E69E9E68])
  {
    FigSimpleMutexLock(*(*(a1 + 32) + 112));
    figXPC_HandleNewClientConnection(*(a1 + 32), a2);
    v6 = *(*(a1 + 32) + 112);

    FigSimpleMutexUnlock(v6);
  }

  else if (a2 == MEMORY[0x1E69E9E20] && v4 == MEMORY[0x1E69E9E98])
  {
    v7 = xpc_connection_copy_invalidation_reason();

    free(v7);
  }
}

void figXPC_CreateNewConnectionInfo(uint64_t a1, NSObject *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (figXPCConnectionInfo_GetTypeID_sRegisterConnectionInfoTypeOnce != -1)
    {
      figXPC_CreateNewConnectionInfo_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v19 = Instance;
      FigCFWeakReferenceStore((Instance + 16), a1);
      *(v19 + 160) = *(a1 + 16);
      *(v19 + 240) = a2;
      dispatch_retain(a2);
      strncpy((v19 + 32), *(*(a1 + 56) + 88), 0x7FuLL);
      *(v19 + 192) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED4CDB30);
      *(v19 + 200) = FigRemote_GetServerTimeoutToken();
      v20 = *(a1 + 56);
      v21 = *(v20 + 96);
      if (v21)
      {
        *(v19 + 224) = 1000000000 * v21;
      }

      v22 = *(v20 + 100);
      if (v22)
      {
        *(v19 + 232) = 1000000000 * v22;
      }

      v23 = *(v19 + 192);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = __figXPC_CreateNewConnectionInfo_block_invoke;
      handler[3] = &__block_descriptor_tmp_190;
      handler[4] = v19;
      dispatch_source_set_event_handler(v23, handler);
      dispatch_resume(*(v19 + 192));
      *a3 = v19;
    }

    else
    {
      figXPC_CreateNewConnectionInfo_cold_2(0, v12, v13, v14, v15, v16, v17, v18, v24);
    }
  }

  else
  {
    figXPC_CreateNewConnectionInfo_cold_3(a1, 0, a3, a4, a5, a6, a7, a8, v24);
  }
}

void figXPC_ConnectionInfoFinalizer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

double figXPCConnectionInfo_Init(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figXPCConnectionInfo_Finalize(uint64_t a1)
{
  FigCFWeakReferenceDestroy((a1 + 16));
  if (*(a1 + 176))
  {
    (*(a1 + 184))();
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  v2 = *(a1 + 192);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 192);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 192) = 0;
    }
  }

  v4 = *(a1 + 240);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }
}

uint64_t OpCodeChar(unsigned int a1, unsigned int a2)
{
  v8 = a1;
  if (a1 > 0x7Fu)
  {
    if (!__maskrune(a1, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  if (BYTE1(a1) > 0x7Fu)
  {
    if (!__maskrune(BYTE1(a1), 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * BYTE1(a1) + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  if (BYTE2(a1) > 0x7Fu)
  {
    if (!__maskrune(BYTE2(a1), 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * BYTE2(a1) + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v4 = HIBYTE(a1);
  if ((a1 & 0x80000000) != 0)
  {
    if (__maskrune(v4, 0x40000uLL))
    {
      return *(&v8 + a2);
    }

LABEL_17:
    snprintf(__str, 5uLL, "%4d", a1);
    return __str[-a2 + 3];
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  return *(&v8 + a2);
}

xpc_endpoint_t figXPCServer_EstablishSecondaryConnectionManagement(xpc_endpoint_t result, uint64_t a2)
{
  if (!*(a2 + 128))
  {
    v8[8] = v2;
    v8[9] = v3;
    v5 = result;
    v6 = xpc_connection_create(0, gCommonServerListenerQueue);
    *(a2 + 128) = v6;
    xpc_connection_set_context(v6, a2);
    *(a2 + 144) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v7 = *(a2 + 128);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __figXPCServer_EstablishSecondaryConnectionManagement_block_invoke;
    v8[3] = &__block_descriptor_tmp_210;
    v8[4] = v5;
    v8[5] = a2;
    xpc_connection_set_event_handler(v7, v8);
    xpc_connection_activate(*(a2 + 128));
    result = xpc_endpoint_create(*(a2 + 128));
    *(a2 + 136) = result;
  }

  return result;
}

void figXPC_willHandleAbortableEventLinkMessage(uint64_t a1, const void *a2, const void *a3)
{
  os_unfair_lock_lock((a1 + 176));
  CFDictionarySetValue(*(a1 + 168), a3, a2);

  os_unfair_lock_unlock((a1 + 176));
}

void figXPC_didHandleAbortableEventLinkMessage(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 176));
  CFDictionaryRemoveValue(*(a1 + 168), a2);

  os_unfair_lock_unlock((a1 + 176));
}

size_t OUTLINED_FUNCTION_10_17(uint64_t a1, CMBlockBufferRef *a2, ...)
{
  va_start(va, a2);
  v8 = *(v6 + 32);

  return figXPC_RegisterServedObject(v6, v8, v5, 0, v4, v3, v2, va, a2);
}

uint64_t OUTLINED_FUNCTION_11_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;

  return FigXPCCreateBasicMessage(0x2E637079u, a2, &a11);
}

uint64_t OUTLINED_FUNCTION_13_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return FigXPCCreateBasicMessage(0x2E736574u, a2, &a10);
}

uint64_t OUTLINED_FUNCTION_14_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9, ...)
{
  va_start(va, a9);
  v15 = *(v13 + 32);

  return figXPC_RegisterCopiedObject(v13, v15, v12, v11, v10, v9, va, a8, a9);
}

void OUTLINED_FUNCTION_18_15()
{

  figXPC_EnqueueNotification(v0, v4, v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_23_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a9 + 80);

  return FigSimpleMutexLock(v10);
}

uint64_t OUTLINED_FUNCTION_24_11()
{
  v2 = *(v0 + 80);

  return FigSimpleMutexUnlock(v2);
}

xpc_object_t FigXPCRetain(xpc_object_t object)
{
  if (object)
  {
    return xpc_retain(object);
  }

  return object;
}

void FigXPCRelease(xpc_object_t object)
{
  if (object)
  {
    xpc_release(object);
  }
}

uint64_t FigXPCMessageSetCFObject(void *a1, const char *a2, void *cf)
{
  if (!cf)
  {
    return 0;
  }

  if (!a1)
  {
    FigXPCMessageSetCFObject_cold_3(&v12);
    return v12;
  }

  if (!a2)
  {
    FigXPCMessageSetCFObject_cold_2(&v11);
    return v11;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFDictionaryGetTypeID())
  {
    v8 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v8)
    {
      FigXPCMessageSetCFObject_cold_1(&v10);
      return v10;
    }

    v9 = v8;
    xpc_dictionary_set_value(a1, a2, v8);
    xpc_release(v9);
    return 0;
  }

  return FigXPCMessageSetCFDictionary(a1, a2, cf);
}

uint64_t FigXPCMessageSetCFDictionary(void *a1, const char *a2, void *cf)
{
  if (cf)
  {
    if (a1)
    {
      if (a2)
      {
        v8 = CFGetTypeID(cf);
        if (v8 == CFDictionaryGetTypeID())
        {
          v9 = figXPCCopySanitizedCFDictionary(cf);
          v10 = _CFXPCCreateXPCObjectFromCFObject();
          if (v10)
          {
            v11 = v10;
            xpc_dictionary_set_value(a1, a2, v10);
            xpc_release(v11);
            v3 = 0;
            if (!v9)
            {
              return v3;
            }
          }

          else
          {
            FigXPCMessageSetCFDictionary_cold_2(&v12);
            v3 = v12;
            if (!v9)
            {
              return v3;
            }
          }

          CFRelease(v9);
          return v3;
        }

        FigXPCMessageSetCFDictionary_cold_1(&v12);
      }

      else
      {
        FigXPCMessageSetCFDictionary_cold_3(&v12);
      }
    }

    else
    {
      FigXPCMessageSetCFDictionary_cold_4(&v12);
    }

    return v12;
  }

  return 0;
}

uint64_t FigXPCMessageSetCFURL(void *a1, const char *a2, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (!a1)
  {
    FigXPCMessageSetCFURL_cold_4(&v9);
    return v9;
  }

  if (!a2)
  {
    FigXPCMessageSetCFURL_cold_3(&v9);
    return v9;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFURLGetTypeID())
  {
    FigXPCMessageSetCFURL_cold_1(&v9);
    return v9;
  }

  v6 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v6)
  {
    FigXPCMessageSetCFURL_cold_2(&v9);
    return v9;
  }

  v7 = v6;
  xpc_dictionary_set_value(a1, a2, v6);
  xpc_release(v7);
  return 0;
}

uint64_t FigXPCMessageSetCFString(void *a1, const char *a2, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (!a1)
  {
    FigXPCMessageSetCFString_cold_4(&v9);
    return v9;
  }

  if (!a2)
  {
    FigXPCMessageSetCFString_cold_3(&v9);
    return v9;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFStringGetTypeID())
  {
    FigXPCMessageSetCFString_cold_1(&v9);
    return v9;
  }

  v6 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v6)
  {
    FigXPCMessageSetCFString_cold_2(&v9);
    return v9;
  }

  v7 = v6;
  xpc_dictionary_set_value(a1, a2, v6);
  xpc_release(v7);
  return 0;
}

uint64_t FigXPCMessageSetCFNumber(void *a1, const char *a2, void *cf)
{
  if (!cf)
  {
    return 0;
  }

  if (a1)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFNumberGetTypeID())
    {

      return FigXPCMessageSetCFObject(a1, a2, cf);
    }

    else
    {
      FigXPCMessageSetCFNumber_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigXPCMessageSetCFNumber_cold_2(&v9);
    return v9;
  }
}

uint64_t FigXPCMessageSetCFBoolean(void *a1, const char *a2, void *cf)
{
  if (!cf)
  {
    return 0;
  }

  if (a1)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFBooleanGetTypeID())
    {

      return FigXPCMessageSetCFObject(a1, a2, cf);
    }

    else
    {
      FigXPCMessageSetCFBoolean_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigXPCMessageSetCFBoolean_cold_2(&v9);
    return v9;
  }
}

uint64_t FigXPCMessageSetCFArray(void *a1, const char *a2, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (!a1)
  {
    FigXPCMessageSetCFArray_cold_4(&v9);
    return v9;
  }

  if (!a2)
  {
    FigXPCMessageSetCFArray_cold_3(&v9);
    return v9;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFArrayGetTypeID())
  {
    FigXPCMessageSetCFArray_cold_1(&v9);
    return v9;
  }

  v6 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v6)
  {
    FigXPCMessageSetCFArray_cold_2(&v9);
    return v9;
  }

  v7 = v6;
  xpc_dictionary_set_value(a1, a2, v6);
  xpc_release(v7);
  return 0;
}

uint64_t FigXPCMessageSetCFDate(void *a1, const char *a2, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (a1)
  {
    if (a2)
    {
      v6 = CFGetTypeID(cf);
      if (v6 == CFDateGetTypeID())
      {
        v7 = MEMORY[0x19A8D7730](cf);
        xpc_dictionary_set_double(a1, a2, v7);
        return 0;
      }

      else
      {
        FigXPCMessageSetCFDate_cold_1(&v9);
        return v9;
      }
    }

    else
    {
      FigXPCMessageSetCFDate_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    FigXPCMessageSetCFDate_cold_3(&v11);
    return v11;
  }
}

uint64_t FigXPCMessageSetCFData(void *a1, const char *a2, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v9 = 0;
  if (!a1)
  {
    FigXPCMessageSetCFData_cold_3(__dst);
    return *__dst;
  }

  if (!a2)
  {
    FigXPCMessageSetCFData_cold_2(__dst);
    return *__dst;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFDataGetTypeID())
  {
    FigXPCMessageSetCFData_cold_1(__dst);
    return *__dst;
  }

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(a1, a2, v7);
  xpc_release(v7);
  FigXPCMessageGetOpCode(a1, &v9);
  if (gGMFigKTraceEnabled == 1)
  {
    strncpy(__dst, a2, 8uLL);
    CFDataGetLength(cf);
    kdebug_trace();
  }

  return 0;
}

uint64_t FigXPCMessageSetAndConsumeVMData(xpc_object_t xdict, char *key, void *bytes, size_t size)
{
  if (xdict)
  {
    if (key)
    {
      if (!size)
      {
        xpc_dictionary_set_data(xdict, key, bytes, 0);
        return 0;
      }

      if (!bytes)
      {
        FigXPCMessageSetAndConsumeVMData_cold_3(&v13);
        return v13;
      }

      v8 = dispatch_data_create(bytes, size, 0, *MEMORY[0x1E69E9660]);
      if (v8)
      {
        v9 = v8;
        v10 = xpc_data_create_with_dispatch_data(v8);
        dispatch_release(v9);
        if (v10)
        {
          xpc_dictionary_set_value(xdict, key, v10);
          xpc_release(v10);
          return 0;
        }

        FigXPCMessageSetAndConsumeVMData_cold_1(&v13);
        return v13;
      }

      FigXPCMessageSetAndConsumeVMData_cold_2(&v13);
    }

    else
    {
      FigXPCMessageSetAndConsumeVMData_cold_4(&v13);
    }
  }

  else
  {
    FigXPCMessageSetAndConsumeVMData_cold_5(&v13);
  }

  v11 = v13;
  if (bytes && size)
  {
    MEMORY[0x19A8DA090](*MEMORY[0x1E69E9A60], bytes, size);
  }

  return v11;
}

uint64_t FigXPCMessageSetCFError(void *a1, const char *a2, __CFError *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (a1)
  {
    if (a2)
    {
      v5 = FigCFCopyCFErrorAsPropertyList(a3);
      v6 = FigXPCMessageSetCFDictionary(a1, a2, v5);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      FigXPCMessageSetCFError_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigXPCMessageSetCFError_cold_2(&v9);
    return v9;
  }

  return v6;
}

size_t FigXPCMessageCopyCFError(void *a1, const char *a2, const __CFDictionary **a3)
{
  cf = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v12 = FigXPCMessageCopyCFDictionary(a1, a2, &cf);
        v13 = cf;
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = FigCFErrorCreateFromPropertyList(cf, v5, v6, v7, v8, v9, v10, v11);
          v13 = cf;
        }

        *a3 = v14;
        if (v13)
        {
          CFRelease(v13);
        }
      }

      else
      {
        FigXPCMessageCopyCFError_cold_1(&v21);
        return v21;
      }

      return v12;
    }

    v16 = 547;
  }

  else
  {
    v16 = 546;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", v16, v3, v18, v19, cf);
  if (a3)
  {
    *a3 = 0;
  }

  return v12;
}

unint64_t FigXPCMessageCopyCFDictionary(void *a1, const char *a2, void *a3)
{
  cf = 0;
  if (!a1 || !a2)
  {
    v5 = v13;
    if (FigXPCMessageCopyCFDictionary_cold_2())
    {
      return v5;
    }

LABEL_18:
    v6 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    FigXPCMessageCopyCFDictionary_cold_1(&v13);
    return v13;
  }

  v5 = FigXPCMessageCopyCFObject(a1, a2, &cf);
  v6 = cf;
  if (v5)
  {
LABEL_15:
    if (!v5 || !v6)
    {
      goto LABEL_9;
    }

    CFRelease(v6);
    goto LABEL_18;
  }

  if (!cf)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFDictionaryGetTypeID())
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x29D, v3, v10, v11, cf);
    v6 = cf;
    goto LABEL_15;
  }

  v5 = 0;
  v6 = cf;
LABEL_9:
  *a3 = v6;
  return v5;
}

unint64_t FigXPCMessageCopyCFObject(void *a1, const char *a2, __CFDictionary **a3)
{
  if (a1 && a2)
  {
    if (!a3)
    {
      FigXPCMessageCopyCFObject_cold_2(v11);
      return v11[0];
    }

    result = xpc_dictionary_get_value(a1, a2);
    if (result)
    {
      v5 = _CFXPCCreateCFObjectFromXPCObject();
      v6 = v5;
      if (v5)
      {
        v7 = CFGetTypeID(v5);
        if (v7 == CFDictionaryGetTypeID())
        {
          v8 = figXPCCopySanitizedCFDictionary(v6);
          CFRelease(v6);
          result = 0;
          v6 = v8;
        }

        else
        {
          result = 0;
        }
      }

      else
      {
        FigXPCMessageCopyCFObject_cold_1(&v10);
        result = v10;
      }

      goto LABEL_8;
    }

LABEL_12:
    v6 = 0;
LABEL_8:
    *a3 = v6;
    return result;
  }

  v9 = FigXPCMessageCopyCFDictionary_cold_2();
  result = v11[1];
  if (!v9)
  {
    goto LABEL_12;
  }

  return result;
}

unint64_t FigXPCMessageCopyCFString(void *a1, const char *a2, void *a3)
{
  cf = 0;
  if (!a1 || !a2)
  {
    v5 = v13;
    if (FigXPCMessageCopyCFDictionary_cold_2())
    {
      return v5;
    }

LABEL_18:
    v6 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    FigXPCMessageCopyCFString_cold_1(&v13);
    return v13;
  }

  v5 = FigXPCMessageCopyCFObject(a1, a2, &cf);
  v6 = cf;
  if (v5)
  {
LABEL_15:
    if (!v5 || !v6)
    {
      goto LABEL_9;
    }

    CFRelease(v6);
    goto LABEL_18;
  }

  if (!cf)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFStringGetTypeID())
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x25B, v3, v10, v11, cf);
    v6 = cf;
    goto LABEL_15;
  }

  v5 = 0;
  v6 = cf;
LABEL_9:
  *a3 = v6;
  return v5;
}

unint64_t FigXPCMessageCopyCFNumber(void *a1, const char *a2, void *a3)
{
  cf = 0;
  if (!a1 || !a2)
  {
    v5 = v13;
    if (FigXPCMessageCopyCFDictionary_cold_2())
    {
      return v5;
    }

LABEL_18:
    v6 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    FigXPCMessageCopyCFNumber_cold_1(&v13);
    return v13;
  }

  v5 = FigXPCMessageCopyCFObject(a1, a2, &cf);
  v6 = cf;
  if (v5)
  {
LABEL_15:
    if (!v5 || !v6)
    {
      goto LABEL_9;
    }

    CFRelease(v6);
    goto LABEL_18;
  }

  if (!cf)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFNumberGetTypeID())
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x271, v3, v10, v11, cf);
    v6 = cf;
    goto LABEL_15;
  }

  v5 = 0;
  v6 = cf;
LABEL_9:
  *a3 = v6;
  return v5;
}

unint64_t FigXPCMessageCopyCFBoolean(void *a1, const char *a2, void *a3)
{
  cf = 0;
  if (!a1 || !a2)
  {
    v5 = v13;
    if (FigXPCMessageCopyCFDictionary_cold_2())
    {
      return v5;
    }

LABEL_18:
    v6 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    FigXPCMessageCopyCFBoolean_cold_1(&v13);
    return v13;
  }

  v5 = FigXPCMessageCopyCFObject(a1, a2, &cf);
  v6 = cf;
  if (v5)
  {
LABEL_15:
    if (!v5 || !v6)
    {
      goto LABEL_9;
    }

    CFRelease(v6);
    goto LABEL_18;
  }

  if (!cf)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFBooleanGetTypeID())
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x287, v3, v10, v11, cf);
    v6 = cf;
    goto LABEL_15;
  }

  v5 = 0;
  v6 = cf;
LABEL_9:
  *a3 = v6;
  return v5;
}

unint64_t FigXPCMessageCopyCFArray(void *a1, const char *a2, void *a3)
{
  cf = 0;
  if (!a1 || !a2)
  {
    v5 = v13;
    if (FigXPCMessageCopyCFDictionary_cold_2())
    {
      return v5;
    }

LABEL_18:
    v6 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    FigXPCMessageCopyCFArray_cold_1(&v13);
    return v13;
  }

  v5 = FigXPCMessageCopyCFObject(a1, a2, &cf);
  v6 = cf;
  if (v5)
  {
LABEL_15:
    if (!v5 || !v6)
    {
      goto LABEL_9;
    }

    CFRelease(v6);
    goto LABEL_18;
  }

  if (!cf)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFArrayGetTypeID())
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x2B3, v3, v10, v11, cf);
    v6 = cf;
    goto LABEL_15;
  }

  v5 = 0;
  v6 = cf;
LABEL_9:
  *a3 = v6;
  return v5;
}

uint64_t FigXPCMessageCopyCFDate(void *a1, const char *a2, CFDateRef *a3)
{
  if (a1 && a2)
  {
    if (!a3)
    {
      FigXPCMessageCopyCFDate_cold_2(v10);
      return v10[0];
    }

    v4 = xpc_dictionary_get_double(a1, a2);
    v5 = CFDateCreate(*MEMORY[0x1E695E480], v4);
    if (v5)
    {
      v6 = v5;
      result = 0;
    }

    else
    {
      FigXPCMessageCopyCFDate_cold_1(&v9);
      v6 = 0;
      result = v9;
    }

    goto LABEL_6;
  }

  v8 = FigXPCMessageCopyCFDictionary_cold_2();
  result = v10[1];
  if (!v8)
  {
    v6 = 0;
LABEL_6:
    *a3 = v6;
  }

  return result;
}

unint64_t FigXPCMessageCopyCFData(void *a1, const char *a2, void *a3)
{
  cf = 0;
  if (!a1 || !a2)
  {
    v5 = v13;
    if (FigXPCMessageCopyCFDictionary_cold_2())
    {
      return v5;
    }

LABEL_18:
    v6 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    FigXPCMessageCopyCFData_cold_1(&v13);
    return v13;
  }

  v5 = FigXPCMessageCopyCFObject(a1, a2, &cf);
  v6 = cf;
  if (v5)
  {
LABEL_15:
    if (!v5 || !v6)
    {
      goto LABEL_9;
    }

    CFRelease(v6);
    goto LABEL_18;
  }

  if (!cf)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFDataGetTypeID())
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x2EA, v3, v10, v11, cf);
    v6 = cf;
    goto LABEL_15;
  }

  v5 = 0;
  v6 = cf;
LABEL_9:
  *a3 = v6;
  return v5;
}

unint64_t FigXPCMessageCopyCFURL(void *a1, const char *a2, void *a3)
{
  cf = 0;
  if (!a1 || !a2)
  {
    v5 = v13;
    if (FigXPCMessageCopyCFDictionary_cold_2())
    {
      return v5;
    }

LABEL_18:
    v6 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    FigXPCMessageCopyCFURL_cold_1(&v13);
    return v13;
  }

  v5 = FigXPCMessageCopyCFObject(a1, a2, &cf);
  v6 = cf;
  if (v5)
  {
LABEL_15:
    if (!v5 || !v6)
    {
      goto LABEL_9;
    }

    CFRelease(v6);
    goto LABEL_18;
  }

  if (!cf)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFURLGetTypeID())
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x300, v3, v10, v11, cf);
    v6 = cf;
    goto LABEL_15;
  }

  v5 = 0;
  v6 = cf;
LABEL_9:
  *a3 = v6;
  return v5;
}

uint64_t FigXPCMessageCreateBlockBufferDataWithSize(const __CFAllocator *a1, xpc_object_t xdict, char *key, size_t a4, CMBlockBufferRef *a5)
{
  blockBufferOut = 0;
  HIDWORD(customBlockSource.AllocateBlock) = 0;
  *&customBlockSource.version = 0;
  customBlockSource.refCon = xdict;
  customBlockSource.FreeBlock = BBufUtilXPCObjectReleaser;
  if (xdict && key)
  {
    if (a5)
    {
      length = 0;
      result = xpc_dictionary_get_data(xdict, key, &length);
      if (result)
      {
        v10 = length;
        if (a4 && length > a4)
        {
          length = a4;
          v10 = a4;
        }

        result = CMBlockBufferCreateWithMemoryBlock(a1, result, v10, 0, &customBlockSource, 0, v10, 0, &blockBufferOut);
        if (!result)
        {
          xpc_retain(xdict);
          result = 0;
        }
      }

      goto LABEL_10;
    }

    FigXPCMessageCreateBlockBufferDataWithSize_cold_1(&length);
    return length;
  }

  else
  {
    v11 = FigXPCMessageCopyCFDictionary_cold_2();
    result = length;
    if (!v11)
    {
LABEL_10:
      *a5 = blockBufferOut;
    }
  }

  return result;
}

uint64_t FigXPCMessageSetCMTime(void *a1, const char *a2, const void *a3)
{
  if (a1)
  {
    if (a2)
    {
      xpc_dictionary_set_data(a1, a2, a3, 0x18uLL);
      return 0;
    }

    else
    {
      FigXPCMessageSetCMTime_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigXPCMessageSetCMTime_cold_2(&v5);
    return v5;
  }
}

uint64_t FigXPCMessageGetCMTime(void *a1, const char *a2, uint64_t a3)
{
  length = 0;
  v8 = *&kCMTimeInvalid.value;
  v9 = 0;
  if (a1 && a2)
  {
    if (a3)
    {
      data = xpc_dictionary_get_data(a1, a2, &length);
      if (data)
      {
        if (length == 24)
        {
          v5 = data;
          result = 0;
          v8 = *v5;
          v9 = v5[2];
        }

        else
        {
          FigXPCMessageGetCMTime_cold_1(&v11);
          result = v11;
        }
      }

      else
      {
        result = 4294950011;
      }

      goto LABEL_7;
    }

    FigXPCMessageGetCMTime_cold_2(&v11);
    return v11;
  }

  else
  {
    v7 = FigXPCMessageCopyCFDictionary_cold_2();
    result = v11;
    if (!v7)
    {
LABEL_7:
      *a3 = v8;
      *(a3 + 16) = v9;
    }
  }

  return result;
}

uint64_t FigXPCArraySetCMTime(void *a1, uint64_t a2, const void *a3)
{
  if (a1)
  {
    if (a2 == -1)
    {
      if ((xpc_array_get_count(a1) & 0x80000000) != 0)
      {
        FigXPCArraySetCMTime_cold_2(&v7);
        return v7;
      }

      else
      {
        xpc_array_set_data(a1, 0xFFFFFFFFFFFFFFFFLL, a3, 0x18uLL);
        return 0;
      }
    }

    else
    {
      FigXPCArraySetCMTime_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigXPCArraySetCMTime_cold_3(&v8);
    return v8;
  }
}

uint64_t FigXPCArrayAppendCMTime(void *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  return FigXPCArraySetCMTime(a1, -1, &v3);
}

uint64_t FigXPCArrayGetCMTime(void *a1, int64_t a2, uint64_t a3)
{
  length = 0;
  v10 = *&kCMTimeInvalid.value;
  v11 = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    if (!a3)
    {
      FigXPCArrayGetCMTime_cold_3(&v13);
      return v13;
    }

    if (a2 >= xpc_array_get_count(a1))
    {
      FigXPCArrayGetCMTime_cold_1(&v13);
    }

    else
    {
      data = xpc_array_get_data(a1, a2, &length);
      if (!data)
      {
        result = 4294950013;
        goto LABEL_8;
      }

      if (length == 24)
      {
        v7 = data;
        result = 0;
        v10 = *v7;
        v11 = v7[2];
LABEL_8:
        *a3 = v10;
        *(a3 + 16) = v11;
        return result;
      }

      FigXPCArrayGetCMTime_cold_2(&v13);
    }

    result = v13;
    goto LABEL_8;
  }

  v9 = FigXPCMessageCopyCFDictionary_cold_2();
  result = v13;
  if (!v9)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t FigXPCMessageSetCMTimeRange(void *a1, const char *a2, const void *a3)
{
  if (a1)
  {
    if (a2)
    {
      xpc_dictionary_set_data(a1, a2, a3, 0x30uLL);
      return 0;
    }

    else
    {
      FigXPCMessageSetCMTimeRange_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigXPCMessageSetCMTimeRange_cold_2(&v5);
    return v5;
  }
}

uint64_t FigXPCMessageGetCMTimeRange(void *a1, const char *a2, CMTimeRange *a3)
{
  length = 0;
  v8 = kCMTimeRangeInvalid;
  if (a1 && a2)
  {
    if (a3)
    {
      data = xpc_dictionary_get_data(a1, a2, &length);
      if (data)
      {
        if (length == 48)
        {
          v5 = data;
          result = 0;
          v8 = *v5;
        }

        else
        {
          FigXPCMessageGetCMTimeRange_cold_1(&v10);
          result = v10;
        }
      }

      else
      {
        result = 4294950011;
      }

      goto LABEL_7;
    }

    FigXPCMessageGetCMTimeRange_cold_2(&v10);
    return v10;
  }

  else
  {
    v7 = FigXPCMessageCopyCFDictionary_cold_2();
    result = v10;
    if (!v7)
    {
LABEL_7:
      *a3 = v8;
    }
  }

  return result;
}

uint64_t FigXPCMessageSetCMTimeMapping(void *a1, const char *a2, const void *a3)
{
  if (a1)
  {
    if (a2)
    {
      xpc_dictionary_set_data(a1, a2, a3, 0x60uLL);
      return 0;
    }

    else
    {
      FigXPCMessageSetCMTimeMapping_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigXPCMessageSetCMTimeMapping_cold_2(&v5);
    return v5;
  }
}

uint64_t FigXPCMessageGetCMTimeMapping(void *a1, const char *a2, CMTimeMapping *a3)
{
  length = 0;
  v8 = kCMTimeMappingInvalid;
  if (a1 && a2)
  {
    if (a3)
    {
      data = xpc_dictionary_get_data(a1, a2, &length);
      if (data)
      {
        if (length == 96)
        {
          v5 = data;
          result = 0;
          v8 = *v5;
        }

        else
        {
          FigXPCMessageGetCMTimeMapping_cold_1(&v10);
          result = v10;
        }
      }

      else
      {
        result = 4294950011;
      }

      goto LABEL_7;
    }

    FigXPCMessageGetCMTimeMapping_cold_2(&v10);
    return v10;
  }

  else
  {
    v7 = FigXPCMessageCopyCFDictionary_cold_2();
    result = v10;
    if (!v7)
    {
LABEL_7:
      *a3 = v8;
    }
  }

  return result;
}

void FigXPCMessageSetOSStatus(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {

      xpc_dictionary_set_int64(a1, a2, a3);
    }

    else
    {
      FigXPCMessageSetOSStatus_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, vars0);
    }
  }

  else
  {
    FigXPCMessageSetOSStatus_cold_2(0, a2, a3, a4, a5, a6, a7, a8, vars0);
  }
}

size_t FigXPCMessageGetOSStatus(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    if (a2)
    {
      result = xpc_dictionary_get_int64(a1, a2);
      if (result != result)
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x427, v9, v12, v13, a9);
      }
    }

    else
    {
      FigXPCMessageGetOSStatus_cold_1(&v14);
      return v14;
    }
  }

  else
  {
    FigXPCMessageGetOSStatus_cold_2(&v15);
    return v15;
  }

  return result;
}

void FigXPCMessageSetInt32(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {

      xpc_dictionary_set_int64(a1, a2, a3);
    }

    else
    {
      FigXPCMessageSetInt32_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, vars0);
    }
  }

  else
  {
    FigXPCMessageSetInt32_cold_2(0, a2, a3, a4, a5, a6, a7, a8, vars0);
  }
}

int64_t FigXPCMessageGetInt32(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      result = xpc_dictionary_get_int64(a1, a2);
      if (result == result)
      {
        return result;
      }

      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x444, v8, v11, v12, v13);
    }

    else
    {
      FigXPCMessageGetInt32_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, v13);
    }
  }

  else
  {
    FigXPCMessageGetInt32_cold_2(0, a2, a3, a4, a5, a6, a7, a8, v13);
  }

  return 0;
}

void FigXPCMessageSetUInt32(void *a1, const char *a2, uint64_t value, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {

      xpc_dictionary_set_uint64(a1, a2, value);
    }

    else
    {
      FigXPCMessageSetUInt32_cold_1(a1, 0, value, a4, a5, a6, a7, a8, vars0);
    }
  }

  else
  {
    FigXPCMessageSetUInt32_cold_2(0, a2, value, a4, a5, a6, a7, a8, vars0);
  }
}

uint64_t FigXPCMessageGetUInt32(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      result = xpc_dictionary_get_uint64(a1, a2);
      if (!HIDWORD(result))
      {
        return result;
      }

      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x461, v8, v11, v12, v13);
    }

    else
    {
      FigXPCMessageGetUInt32_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, v13);
    }
  }

  else
  {
    FigXPCMessageGetUInt32_cold_2(0, a2, a3, a4, a5, a6, a7, a8, v13);
  }

  return 0;
}

BOOL FigXPCMessageGetBoolean(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    FigXPCMessageGetBoolean_cold_2(0, a2, a3, a4, a5, a6, a7, a8, vars0);
    return 0;
  }

  if (!a2)
  {
    FigXPCMessageGetBoolean_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, vars0);
    return 0;
  }

  return xpc_dictionary_get_BOOL(a1, a2);
}

uint64_t FigXPCMessageCopyFormatDescriptionArray(void *a1, const char *a2, __CFArray **a3)
{
  length = 0;
  v8 = 0;
  if (!a1 || !a2)
  {
    v6 = FigXPCMessageCopyCFDictionary_cold_2();
    result = v9;
    if (v6)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!a3)
  {
    FigXPCMessageCopyFormatDescriptionArray_cold_1(&v9);
    return v9;
  }

  result = xpc_dictionary_get_data(a1, a2, &length);
  if (!result)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  result = FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData(result, length, &v8);
  v5 = v8;
LABEL_8:
  *a3 = v5;
  return result;
}

size_t FigXPCMessageSetFormatDescription(void *a1, char *a2, void *a3)
{
  cf = 0;
  if (!a3)
  {
    return 0;
  }

  if (!a1)
  {
    FigXPCMessageSetFormatDescription_cold_2(&v10);
    return v10;
  }

  if (!a2)
  {
    FigXPCMessageSetFormatDescription_cold_1(&v10);
    return v10;
  }

  SerializedAtomDataBlockBufferForFormatDescription = FigRemote_CreateSerializedAtomDataBlockBufferForFormatDescription(*MEMORY[0x1E695E480], a3, &cf);
  v6 = cf;
  if (SerializedAtomDataBlockBufferForFormatDescription)
  {
    v7 = SerializedAtomDataBlockBufferForFormatDescription;
    if (!cf)
    {
      return v7;
    }

    goto LABEL_6;
  }

  v7 = FigXPCMessageSetBlockBuffer(a1, a2, cf);
  v6 = cf;
  if (cf)
  {
LABEL_6:
    CFRelease(v6);
  }

  return v7;
}

size_t FigXPCMessageCopyFormatDescription2(const __CFAllocator *a1, void *a2, char *a3, void *a4)
{
  v16 = 0;
  cf = 0;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        BlockBufferDataWithSize = FigXPCMessageCreateBlockBufferDataWithSize(a1, a2, a3, 0, &cf);
        v8 = 0;
        v9 = cf;
        if (!BlockBufferDataWithSize && cf)
        {
          BlockBufferDataWithSize = FigRemote_CreateFormatDescriptionFromSerializedAtomDataBlockBuffer(a1, cf, 0, &v16);
          v8 = v16;
          v9 = cf;
        }

        *a4 = v8;
        if (v9)
        {
          CFRelease(v9);
        }
      }

      else
      {
        FigXPCMessageCopyFormatDescription2_cold_1(&v18);
        return v18;
      }

      return BlockBufferDataWithSize;
    }

    v11 = 1221;
  }

  else
  {
    v11 = 1220;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  BlockBufferDataWithSize = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", v11, v4, v13, v14, v15);
  if (a4)
  {
    *a4 = 0;
  }

  return BlockBufferDataWithSize;
}

BOOL FigXPCConnectionHasEntitlement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    FigXPCConnectionHasEntitlement_cold_2(0, a2, a3, a4, a5, a6, a7, a8, v12);
    return 0;
  }

  if (!a2)
  {
    FigXPCConnectionHasEntitlement_cold_1(a1, 0, a3, a4, a5, a6, a7, a8, v12);
    return 0;
  }

  v8 = xpc_connection_copy_entitlement_value();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = MEMORY[0x19A8DA4F0]() == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v9);
  xpc_release(v9);
  return v10;
}

xpc_object_t FigXPCArrayGetCount(xpc_object_t xarray)
{
  if (xarray)
  {
    return xpc_array_get_count(xarray);
  }

  return xarray;
}

size_t FigXPCMessageCopyBlockBufferUsingMemoryRecipient(const __CFAllocator *a1, xpc_object_t xdict, char *key, uint64_t a4, CMBlockBufferRef *a5)
{
  if (!xdict)
  {
    FigXPCMessageCopyBlockBufferUsingMemoryRecipient_cold_4(&v6);
    return v6;
  }

  if (!key)
  {
    FigXPCMessageCopyBlockBufferUsingMemoryRecipient_cold_3(&v6);
    return v6;
  }

  if (!a4)
  {
    FigXPCMessageCopyBlockBufferUsingMemoryRecipient_cold_2(&v6);
    return v6;
  }

  if (!a5)
  {
    FigXPCMessageCopyBlockBufferUsingMemoryRecipient_cold_1(&v6);
    return v6;
  }

  return FigMemoryRecipientCopyBlockBufferFromXPCMessage(a1, a4, xdict, key, a5);
}

OpaqueCMBlockBuffer *FigXPCMessageAddDataBufferFromCMSampleBuffer(void *a1, CMSampleBufferRef sbuf)
{
  if (sbuf)
  {
    if (CMSampleBufferDataIsReady(sbuf) == 1)
    {
      result = CMSampleBufferGetDataBuffer(sbuf);
      if (result)
      {
        v5 = result;
        if (CMBlockBufferGetDataLength(result) <= 0x3000)
        {

          return FigXPCMessageSetBlockBuffer(a1, "SampleData-Inline", v5);
        }

        else
        {

          return FigXPCMessageSetBlockBufferUsingMemoryOrigin(a1, "SampleData-PooledBBuf", v5);
        }
      }
    }

    else
    {
      FigXPCMessageAddDataBufferFromCMSampleBuffer_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigXPCMessageAddDataBufferFromCMSampleBuffer_cold_2(&v7);
    return v7;
  }

  return result;
}

size_t OUTLINED_FUNCTION_4_34(const char *a1, uint64_t *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8, CMBlockBufferRef *a9)
{

  return FigSignalErrorAtGM(a1, a2, 0xFFFFBC80uLL, a4, v9, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_7_25(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{

  return CMBlockBufferGetDataPointer(a1, 0, 0, 0, a5);
}

uint64_t FigMetricEventTimelineGetClassID(uint64_t a1, uint64_t a2)
{
  if (sRegisterFigMetricEventTimelineClassIDOnce != -1)
  {
    FigMetricEventTimelineGetClassID_cold_1();
  }

  return sFigMetricEventTimelineClassID;
}

size_t RegisterFigMetricEventTimelineType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigMetricEventTimelineClassDesc, ClassID, 1, &sFigMetricEventTimelineClassID, v10, v11, v12, v13, a9);
}

uint64_t FigMetricEventTimelineGetTypeID(uint64_t a1, uint64_t a2)
{
  if (sRegisterFigMetricEventTimelineClassIDOnce != -1)
  {
    FigMetricEventTimelineGetClassID_cold_1();
  }

  v3 = sFigMetricEventTimelineClassID;

  return CMBaseClassGetCFTypeID(v3);
}

size_t FigMetricEventTimelineCreate(uint64_t a1, uint64_t a2, uint64_t *a3, const void *a4, const void *a5, CFTypeRef *a6)
{
  v83 = *MEMORY[0x1E69E9840];
  cf = 0;
  ensureMetricEventTrace(a1, a2);
  if (a6)
  {
    if (sRegisterFigMetricEventTimelineClassIDOnce != -1)
    {
      FigMetricEventTimelineGetClassID_cold_1();
    }

    v19 = CMDerivedObjectCreate(a1, kigMetricEventTimeline_VTable, sFigMetricEventTimelineClassID, &cf, v15, v16, v17, v18, v74);
    if (v19)
    {
      v72 = v19;
      goto LABEL_42;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
    if (a2 < 1)
    {
      v25 = 0;
    }

    else
    {
      v21 = 0;
      v22 = a3;
      v23 = a2;
      do
      {
        v24 = *v22++;
        v21 += v24;
        --v23;
      }

      while (v23);
      v25 = 8 * v21;
    }

    MallocZoneForMedia = FigGetMallocZoneForMedia();
    v27 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, v25, 0x10040436913F5uLL);
    DerivedStorage[5] = v27;
    if (v27)
    {
      if (a4)
      {
        v35 = CFRetain(a4);
      }

      else
      {
        v35 = 0;
      }

      DerivedStorage[8] = v35;
      if (a2 < 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = 0;
        v37 = DerivedStorage[5];
        v38 = a2;
        do
        {
          *v37++ = v36;
          v39 = *a3++;
          v36 += v39;
          --v38;
        }

        while (v38);
      }

      v40 = FigGetMallocZoneForMedia();
      v41 = malloc_type_zone_calloc(v40, 1uLL, 8 * v36, 0x80040B8603338uLL);
      DerivedStorage[6] = v41;
      if (v41)
      {
        DerivedStorage[2] = v36;
        DerivedStorage[3] = a2;
        if (a5)
        {
          v49 = CFRetain(a5);
        }

        else
        {
          v49 = 0;
        }

        DerivedStorage[4] = v49;
        AllocatorForMedia = FigGetAllocatorForMedia();
        Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        DerivedStorage[1] = Mutable;
        if (Mutable)
        {
          v59 = dispatch_queue_create("com.apple.coremedia.figmetriceventtimeline", 0);
          *DerivedStorage = v59;
          if (v59)
          {
            if (dword_1EAF1CF68)
            {
              v76 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF60, 1, &v76, &type);
              v68 = v76;
              v69 = type;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v70 = v68;
              }

              else
              {
                v70 = v68 & 0xFFFFFFFE;
              }

              if (v70)
              {
                v78 = 136315394;
                v79 = "FigMetricEventTimelineCreate";
                v80 = 2048;
                v81 = cf;
                v71 = _os_log_send_and_compose_impl(v70, 0, v82, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v69, "metricevent %s: %p", &v78, 22);
                LOBYTE(v68) = v76;
              }

              else
              {
                v71 = 0;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF60, 1, 1, v71, v71 != v82, v68);
            }

            v72 = 0;
            *a6 = cf;
            return v72;
          }

          FigMetricEventTimelineCreate_cold_2(v82, v60, v61, v62, v63, v64, v65, v66);
        }

        else
        {
          FigMetricEventTimelineCreate_cold_3(v82, v52, v53, v54, v55, v56, v57, v58);
        }
      }

      else
      {
        FigMetricEventTimelineCreate_cold_4(v82, v42, v43, v44, v45, v46, v47, v48);
      }
    }

    else
    {
      FigMetricEventTimelineCreate_cold_5(v82, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    FigMetricEventTimelineCreate_cold_6(v82, v12, v13, v14, v15, v16, v17, v18);
  }

  v72 = v82[0];
LABEL_42:
  if (cf)
  {
    CFRelease(cf);
  }

  return v72;
}

uint64_t met_invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  dispatch_sync_f(*DerivedStorage, a1, met_invalidateOnQueue);
  return 0;
}

void met_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  met_invalidateOnQueue(a1);
  v4 = *DerivedStorage;
  if (*DerivedStorage)
  {

    dispatch_release(v4);
  }
}

void met_setPropertyOnQueue(uint64_t a1)
{
  *(a1 + 24) = 0;
  if (FigCFEqual(*(a1 + 8), @"MetricEventTimelineProperty_Timebase"))
  {
    v2 = *(*a1 + 32);
    v3 = *(a1 + 16);
    *(*a1 + 32) = v3;
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!FigCFEqual(*(a1 + 8), @"MetricEventTimelineProperty_SessionID"))
  {
    *(a1 + 24) = -12787;
    return;
  }

  v2 = *(*a1 + 64);
  v3 = *(a1 + 16);
  *(*a1 + 64) = v3;
  if (v3)
  {
LABEL_3:
    CFRetain(v3);
  }

LABEL_4:
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t met_registerSubscriber(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  if (!a1)
  {
    met_registerSubscriber_cold_4(&v21, v9, v10, v11, v12, v13, v14, v15);
    return v21;
  }

  if (!a2)
  {
    met_registerSubscriber_cold_3(&v21, v9, v10, v11, v12, v13, v14, v15);
    return v21;
  }

  if (!a3)
  {
    met_registerSubscriber_cold_2(&v21, v9, v10, v11, v12, v13, v14, v15);
    return v21;
  }

  if (!a4)
  {
    met_registerSubscriber_cold_1(&v21, v9, v10, v11, v12, v13, v14, v15);
    return v21;
  }

  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  dispatch_sync_f(*DerivedStorage, v17, met_registerSubscriberDispatch);
  return v20;
}

uint64_t met_subscribeByEventID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  if (!a1)
  {
    met_subscribeByEventID_cold_2(&v20, v7, v8, v9, v10, v11, v12, v13);
    return v20;
  }

  if (!a2)
  {
    met_subscribeByEventID_cold_1(&v20, v7, v8, v9, v10, v11, v12, v13);
    return v20;
  }

  v15[0] = a1;
  v15[1] = a2;
  *&v17 = a3;
  dispatch_sync_f(*DerivedStorage, v15, met_subscribeByEventIDOnQueue);
  return v19;
}

uint64_t met_subscribeByClassID(uint64_t a1, uint64_t a2, char a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  if (!a1)
  {
    met_subscribeByClassID_cold_2(&v20, v7, v8, v9, v10, v11, v12, v13);
    return v20;
  }

  if (!a2)
  {
    met_subscribeByClassID_cold_1(&v20, v7, v8, v9, v10, v11, v12, v13);
    return v20;
  }

  v15[0] = a1;
  v15[1] = a2;
  BYTE8(v17) = a3;
  dispatch_sync_f(*DerivedStorage, v15, met_subscribeByClassIDOnQueue);
  return v19;
}

uint64_t met_subscribetoAllEvents(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  if (!a1)
  {
    met_subscribetoAllEvents_cold_2(&v18, v5, v6, v7, v8, v9, v10, v11);
    return v18;
  }

  if (!a2)
  {
    met_subscribetoAllEvents_cold_1(&v18, v5, v6, v7, v8, v9, v10, v11);
    return v18;
  }

  v13[0] = a1;
  v13[1] = a2;
  dispatch_sync_f(*DerivedStorage, v13, met_subscribeToAllEventsOnQueue);
  return v17;
}

uint64_t met_publishEvent(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!a1)
  {
    met_publishEvent_cold_3(&v49, v7, v8, v9, v10, v11, v12, v13);
    return LODWORD(v49.value);
  }

  if (!a3)
  {
    met_publishEvent_cold_2(&v49, v7, v8, v9, v10, v11, v12, v13);
    return LODWORD(v49.value);
  }

  v14 = DerivedStorage;
  v15 = *(*(CMBaseObjectGetVTable(a3) + 16) + 40);
  if (v15 && (v16 = v15(a3)) != 0)
  {
    v17 = v16;
    v18 = 0;
  }

  else
  {
    v19 = *(*(CMBaseObjectGetVTable(a3) + 16) + 16);
    if (v19 && v19(a3))
    {
      v20 = *(*(CMBaseObjectGetVTable(a1) + 16) + 48);
      v21 = v20 ? v20(a1) : 0;
      v22 = *(*(CMBaseObjectGetVTable(a3) + 16) + 48);
      if (v22)
      {
        v22(a3, v21);
      }
    }

    v17 = 0;
    v18 = 1;
  }

  v23 = *(*(CMBaseObjectGetVTable(a3) + 16) + 56);
  if (v23)
  {
    v23(&v47, a3);
  }

  else
  {
    v47 = *&kCMTimeInvalid.value;
    v48 = 0;
  }

  if ((BYTE12(v47) & 1) == 0)
  {
    v24 = *(*(CMBaseObjectGetVTable(a1) + 16) + 56);
    if (v24)
    {
      if (v24(a1))
      {
        memset(&v46, 0, sizeof(v46));
        v29 = *(*(CMBaseObjectGetVTable(a1) + 16) + 56);
        v30 = v29 ? v29(a1) : 0;
        CMTimebaseGetTimeClampedAboveAnchorTime(&v46, v30, 0, v25, v26, v27, v28);
        v45 = v46;
        v31 = *(*(CMBaseObjectGetVTable(a3) + 16) + 64);
        if (v31)
        {
          v49 = v45;
          v31(a3, &v49);
        }
      }
    }
  }

  v32 = *(*(CMBaseObjectGetVTable(a3) + 16) + 8);
  if (v32)
  {
    v32(a3);
  }

  if ((v18 & 1) == 0)
  {
    CFRelease(v17);
  }

  MallocZoneForMedia = FigGetMallocZoneForMedia();
  v34 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, 0x48uLL, 0x10E0040608237F2uLL);
  if (!v34)
  {
    met_publishEvent_cold_1(&v49, v35, v36, v37, v38, v39, v40, v41);
    return LODWORD(v49.value);
  }

  v42 = v34;
  *v34 = CFRetain(a1);
  if (a2)
  {
    v43 = CFRetain(a2);
  }

  else
  {
    v43 = 0;
  }

  v42[6] = v43;
  v42[7] = CFRetain(a3);
  dispatch_async_f(*v14, v42, met_publishEventDispatch);
  return 0;
}

uint64_t met_getSessionID(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  v2[0] = CMBaseObjectGetDerivedStorage(a1);
  v2[1] = 0;
  dispatch_sync_f(*v2[0], v2, met_getSessionIDOnQueue);
  return v3;
}

uint64_t met_getTimebase(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  v2[0] = CMBaseObjectGetDerivedStorage(a1);
  v2[1] = 0;
  dispatch_sync_f(*v2[0], v2, met_getTimebaseOnQueue);
  return v3;
}

size_t met_registerSubscriberDispatch(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  if (!CFDictionaryContainsKey(*(DerivedStorage + 8), v3))
  {
    FigGetAllocatorForMedia();
    v13 = xmmword_1E74A6670;
    if (metSubscriberCallbackData_getTypeID_once != -1)
    {
      dispatch_once_f(&metSubscriberCallbackData_getTypeID_once, &v13, metutil_registerClass_0);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v10 = Instance;
      if (v3)
      {
        v11 = CFRetain(v3);
      }

      else
      {
        v11 = 0;
      }

      v10[2] = v11;
      v10[3] = v4;
      v10[4] = v5;
      if (v5)
      {
        dispatch_retain(v5);
      }

      CFDictionarySetValue(*(DerivedStorage + 8), v3, v10);
      CFRelease(v10);
    }

    else
    {
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0x98, v1, v8, v9, v13, *(&v13 + 1));
      if (result)
      {
        goto LABEL_12;
      }

      CFDictionarySetValue(*(DerivedStorage + 8), v3, 0);
    }
  }

  result = 0;
LABEL_12:
  *(a1 + 64) = result;
  return result;
}

void metSubscriberCallbackData_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

uint64_t metutil_registerClass_0(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t met_subscribeByEventIDOnQueue(uint64_t a1)
{
  result = met_addSubscriberForEventID(*a1, *(a1 + 32), *(a1 + 8));
  *(a1 + 64) = result;
  return result;
}

uint64_t met_addSubscriberForEventID(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  Value = CFDictionaryGetValue(*(DerivedStorage + 8), a3);
  if (Value)
  {
    v14 = *(*(DerivedStorage + 40) + 8 * (a2 >> 56)) + (a2 & 0xFFFFFFFFFFFFFFLL);
    if (v14 >= *(DerivedStorage + 16))
    {
      met_addSubscriberForEventID_cold_1(&v26, v7, v8, v9, v10, v11, v12, v13);
      return v26;
    }

    else
    {
      v15 = Value;
      v16 = *(*(DerivedStorage + 48) + 8 * v14);
      if (v16 || (AllocatorForMedia = FigGetAllocatorForMedia(), *(*(DerivedStorage + 48) + 8 * v14) = CFSetCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9F8]), (v16 = *(*(DerivedStorage + 48) + 8 * v14)) != 0))
      {
        CFSetSetValue(v16, v15);
        return 0;
      }

      else
      {
        met_addSubscriberForEventID_cold_2(&v27, v18, v19, v20, v21, v22, v23, v24);
        return v27;
      }
    }
  }

  else
  {
    met_addSubscriberForEventID_cold_3(&v28, v7, v8, v9, v10, v11, v12, v13);
    return v28;
  }
}

void met_subscribeByClassIDOnQueue(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  Value = CFDictionaryGetValue(*(DerivedStorage + 8), v3);
  if (!Value)
  {
    met_subscribeByClassIDOnQueue_cold_4(&v30, v6, v7, v8, v9, v10, v11, v12);
    goto LABEL_14;
  }

  v13 = *(DerivedStorage + 40);
  v14 = *(v13 + 8 * v2);
  v15 = *(DerivedStorage + 16);
  if (v14 >= v15)
  {
    met_subscribeByClassIDOnQueue_cold_1(&v30, v6, v7, v8, v9, v10, v11, v12);
    goto LABEL_14;
  }

  v16 = Value;
  if (v2 + 1 < *(DerivedStorage + 24))
  {
    v17 = *(v13 + 8 * (v2 + 1));
    v18 = v17 <= v15;
    v15 = v17;
    if (!v18)
    {
      met_subscribeByClassIDOnQueue_cold_3(&v30, v6, v7, v8, v9, v10, v11, v12);
LABEL_14:
      v29 = v30;
      goto LABEL_12;
    }
  }

  if (v14 < v15)
  {
    v19 = MEMORY[0x1E695E9F8];
    while (1)
    {
      v20 = *(*(DerivedStorage + 48) + 8 * v14);
      if (!v20)
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        *(*(DerivedStorage + 48) + 8 * v14) = CFSetCreateMutable(AllocatorForMedia, 0, v19);
        v20 = *(*(DerivedStorage + 48) + 8 * v14);
        if (!v20)
        {
          break;
        }
      }

      CFSetSetValue(v20, v16);
      if (v15 == ++v14)
      {
        goto LABEL_11;
      }
    }

    met_subscribeByClassIDOnQueue_cold_2(&v30, v22, v23, v24, v25, v26, v27, v28);
    goto LABEL_14;
  }

LABEL_11:
  v29 = 0;
LABEL_12:
  *(a1 + 64) = v29;
}

void met_issueSubscriberCallbackOnCallbackQueue(void *a1)
{
  (*(a1[4] + 8))(a1[1], *a1, a1[2], a1[3]);
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
  }

  MallocZoneForMedia = FigGetMallocZoneForMedia();

  malloc_zone_free(MallocZoneForMedia, a1);
}

uint64_t FigEndpointXPCRemoteGetSource(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a2)
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *(v4 + 8);
  }

  else
  {
    FigEndpointXPCRemoteGetSource_cold_1(&v6);
    return v6;
  }

  return result;
}

size_t FigEndpointXPCRemoteRetainCopiedEndpoint(CMBlockBufferRef *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (qword_1ED4CDB50 != -1)
  {
    FigEndpointXPCRemoteRetainCopiedEndpoint_cold_1();
  }

  return remoteXPCEndpoint_retainCopiedEndpointForSource(a1, 0, 0, 0, a2, a6, a7, a8, a9);
}

void *FigEndpointXPCRemoteRetainCopiedEndpointFromArray(void *a1, size_t a2, CMBlockBufferRef **a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a4)
  {
    value = xpc_array_get_value(a1, a2);

    return FigEndpointXPCRemoteRetainCopiedEndpointFromReply(value, a3, a4, v12, v13, v14, v15, v16, a9);
  }

  else
  {
    FigEndpointXPCRemoteRetainCopiedEndpointFromArray_cold_1(&v18);
    return v18;
  }
}

void *FigEndpointXPCRemoteRetainCopiedEndpointsFromArrayToCFArray(void *a1, __CFArray **a2)
{
  if (a2)
  {
    if (a1)
    {
      Count = FigXPCArrayGetCount(a1);
      Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
      if (Count)
      {
        v6 = 0;
        while (1)
        {
          value = 0;
          v7 = xpc_array_get_value(a1, v6);
          v13 = FigEndpointXPCRemoteRetainCopiedEndpointFromReply(v7, 0, &value, v8, v9, v10, v11, v12, value);
          if (v13)
          {
            break;
          }

          CFArrayAppendValue(Mutable, value);
          if (value)
          {
            CFRelease(value);
          }

          if (Count == ++v6)
          {
            goto LABEL_9;
          }
        }

        v14 = v13;
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
LABEL_9:
        v14 = 0;
        *a2 = Mutable;
      }
    }

    else
    {
      v14 = 0;
      *a2 = 0;
    }
  }

  else
  {
    FigEndpointXPCRemoteRetainCopiedEndpointsFromArrayToCFArray_cold_1(&v17);
    return v17;
  }

  return v14;
}

uint64_t remoteXPCEndpointClient_NotificationFilter(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(a2, @"Endpoint_ConnectedStateChanged"))
  {
    if (a4)
    {
      Value = CFDictionaryGetValue(a4, @"ConnectedState");
    }

    else
    {
      Value = 0;
    }

    v9 = @"IsConnected";
    v10 = DerivedStorage;
    goto LABEL_14;
  }

  if (CFEqual(a2, @"Endpoint_Dissociated"))
  {
    v8 = kFigEndpointProperty_IsDissociated;
LABEL_13:
    v9 = *v8;
    v10 = DerivedStorage;
    Value = 0;
LABEL_14:
    remoteXPCFigEndpoint_setCachedProperty(v10, v9, Value);
    return 0;
  }

  if (CFEqual(a2, @"Endpoint_EndpointActivated"))
  {
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"ExternalPlaybackCompetingStreams", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"HIDs", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"IsActivated", *MEMORY[0x1E695E4D0]);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"IsPerAppDisplay", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"NightMode", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"PrimaryUsage", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"ScreenInfo", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"Streams", 0);
    v11 = kFigEndpointProperty_VehicleInformation;
LABEL_12:
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, *v11, 0);
    v8 = kFigEndpointProperty_Volume;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"Endpoint_EndpointDeactivated"))
  {
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"ExternalPlaybackCompetingStreams", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"IsActivated", *MEMORY[0x1E695E4C0]);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"IsPerAppDisplay", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"PrimaryUsage", 0);
    v11 = kFigEndpointProperty_Streams;
    goto LABEL_12;
  }

  if (CFEqual(a2, @"Endpoint_StreamsChanged"))
  {
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"ExternalPlaybackCompetingStreams", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"Streams", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"AirPlayVodkaVersion", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"AirPlayFromCloud", 0);
    v8 = kFigEndpointProperty_SupportedFeatures;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"Endpoint_AuthenticationSucceeded"))
  {
    v8 = kFigEndpointProperty_AuthenticationData;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"Endpoint_LimitedUIChanged"))
  {
    v8 = kFigEndpointProperty_LimitedUI;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"Endpoint_EndpointDescriptionChanged"))
  {
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"AirPlayVodkaVersion", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"AirPlayFromCloud", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"AudioWithScreenMirroringOnly", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"AuthenticationType", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"AuthorizationType", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"EndpointInfo", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"ExtendedFeatures", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"FirmwareVersion", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"ID", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"LimitedUIElements", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"MACAddress", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"Manufacturer", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"Model", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"Name", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"OEMIcons", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"OEMIconVisible", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"OEMIconLabel", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"RightHandDrive", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"SubType", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"SupportedFeatures", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"SystemFlags", 0);
    v8 = kFigEndpointProperty_TransportType;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"EndpointAdded") || CFEqual(a2, @"EndpointRemoved"))
  {
    remoteXPCFigEndpoint_clearAggregateSubEndpointsDependentCache(DerivedStorage);
    return 0;
  }

  if (CFEqual(a2, @"EnhancedSiriParametersChanged"))
  {
    v8 = kFigEndpointProperty_VoiceActivationType;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"Endpoint_NightModeChanged"))
  {
    v8 = kFigEndpointProperty_NightMode;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"Endpoint_VehicleInformationChanged"))
  {
    v8 = kFigEndpointProperty_VehicleInformation;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"Endpoint_VolumeControlTypeDidChange"))
  {
    v8 = kFigEndpointProperty_VolumeControlType;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"Endpoint_VolumeControlSupportedDidChange"))
  {
    v8 = kFigEndpointProperty_VolumeControlSupported;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"Endpoint_VolumeDidChange"))
  {
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"Volume", 0);
    v8 = kFigEndpointProperty_VolumeDB;
    goto LABEL_13;
  }

  result = CFEqual(a2, @"Endpoint_VolumeCacheShouldBeCleared");
  if (result)
  {
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"Volume", 0);
    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"VolumeDB", 0);
    return 1;
  }

  return result;
}

void *remoteXPCEndpointClient_runCallback(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
  v9 = result[1];
  if (v9)
  {
    v10 = *result;
    v11 = v8[8];

    return v9(v10, a3, a2, a5, v11);
  }

  if (result[2])
  {
    v12 = *result;
    if (!*result || (ClassID = FigEndpointExtendedGetClassID(result, a2), !CMBaseObjectIsMemberOfClass(v12, ClassID)))
    {
      v12 = 0;
    }

    v14 = v8[2];
    v15 = v8[8];
    v16 = v12;
    v17 = a5;
    v18 = a4;

    return v14(v16, v17, v18, v15);
  }

  if (result[3])
  {
    v19 = *result;
    if (!*result || (v20 = FigEndpointExtendedGetClassID(result, a2), !CMBaseObjectIsMemberOfClass(v19, v20)))
    {
      v19 = 0;
    }

    v14 = v8[3];
    v17 = v8[6];
    v15 = v8[8];
    v16 = v19;
    v18 = a5;

    return v14(v16, v17, v18, v15);
  }

  v21 = result[4];
  if (v21)
  {
    v22 = *result;
    v23 = v8[7];
    v24 = v8[8];

    return v21(v22, v23, a3, a2, a5, v24);
  }

  return result;
}

void __remoteXPCEndpointClient_callDelegateHandleFailed_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t remoteXPCFigEndpoint_setCachedProperty(uint64_t a1, const void *a2, const void *a3)
{
  FigSimpleMutexLock(*(a1 + 32));
  v6 = *(a1 + 56);
  if (a3)
  {
    CFDictionarySetValue(v6, a2, a3);
  }

  else
  {
    CFDictionaryRemoveValue(v6, a2);
  }

  v7 = *(a1 + 32);

  return FigSimpleMutexUnlock(v7);
}

uint64_t remoteXPCFigEndpoint_clearAggregateSubEndpointsDependentCache(uint64_t a1)
{
  remoteXPCFigEndpoint_setCachedProperty(a1, @"Endpoints", 0);
  remoteXPCFigEndpoint_setCachedProperty(a1, @"AirPlayVodkaVersion", 0);
  remoteXPCFigEndpoint_setCachedProperty(a1, @"AirPlayFromCloud", 0);
  remoteXPCFigEndpoint_setCachedProperty(a1, @"ExternalPlaybackCompetingStreams", 0);
  remoteXPCFigEndpoint_setCachedProperty(a1, @"Streams", 0);
  remoteXPCFigEndpoint_setCachedProperty(a1, @"Volume", 0);
  remoteXPCFigEndpoint_setCachedProperty(a1, @"VolumeDB", 0);
  remoteXPCFigEndpoint_setCachedProperty(a1, @"VolumeControlSupported", 0);

  return remoteXPCFigEndpoint_setCachedProperty(a1, @"VolumeControlType", 0);
}

CFTypeRef remoteXPCEndpointClient_retainCompletionCallbackEntryFields(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRetain(v2);
  }

  if (*a1)
  {
    CFRetain(*a1);
  }

  result = *(a1 + 56);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void __remoteXPCEndpointClient_handleCompletionCallback_block_invoke(uint64_t a1)
{
  remoteXPCEndpointClient_runCallback((a1 + 32), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128));
  v2 = *(a1 + 120);
  if (v2)
  {
    CFRelease(v2);
  }

  remoteXPCEndpointClient_releaseCompletionCallbackEntryFields(a1 + 32);
}

void remoteXPCEndpointClient_releaseCompletionCallbackEntryFields(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __remoteXPCEndpointClient_handleRemoteControlDelegateCallback_block_invoke(uint64_t a1)
{
  if (CFStringCompare(*(a1 + 40), @"hrcd", 0))
  {
    if (CFStringCompare(*(a1 + 40), @"hrcc", 0) == kCFCompareEqualTo)
    {
      v2 = *(a1 + 112);
      if (v2)
      {
        v2(*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
      }
    }
  }

  else if (*(a1 + 104))
  {
    FigXPCMessageCopyCFData(*(a1 + 48), "Data", (*(*(a1 + 32) + 8) + 24));
    (*(a1 + 104))(*(a1 + 56), *(a1 + 64), *(a1 + 72), *(*(*(a1 + 32) + 8) + 24), *(a1 + 80));
  }

  CFRelease(*(a1 + 56));
  FigXPCRelease(*(a1 + 48));
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    CFRelease(v6);
  }
}

void __remoteXPCEndpointClient_callDelegateHandleAuthRequired_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), remoteXPCEndpointClient_handleAuthCompletionCallback, *(a1 + 80));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t __ensureActiveEndpointNotificationsRegistered_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.coremedia.remoteendpoint.notify-active", 0);
  ensureActiveEndpointNotificationsRegistered_notifyQueue = v0;

  return notify_register_dispatch("com.apple.coremedia.active-endpoint-changed", &ensureActiveEndpointNotificationsRegistered_notifyToken, v0, &__block_literal_global_28);
}

size_t __ensureActiveEndpointNotificationsRegistered_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification(DefaultLocalCenter, @"Endpoint_ActiveCarPlayEndpointChanged", @"Endpoint_ActiveCarPlayEndpointChanged", 0, 0, v10, v11, v12, a9);
}

void __remoteXPCEndpoint_retainCarPlayDemuxEndpointForSource_block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  qword_1ED4CDB70 = FigSimpleMutexCreate();
  if (!qword_1ED4CDB70)
  {
    v6 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, &v6, &type);
    v1 = v6;
    v2 = type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v3 = v1;
    }

    else
    {
      v3 = v1 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v7 = 136315138;
      v8 = "remoteXPCEndpoint_retainCarPlayDemuxEndpointForSource_block_invoke";
      v4 = _os_log_send_and_compose_impl(v3, 0, v9, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v2, "<< FigEndpointXPCRemote >> %s: Could not create mutex for protecting cached demux endpoint!", &v7);
      LOBYTE(v1) = v6;
    }

    else
    {
      v4 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v4, v4 != v9, v1);
  }
}

uint64_t remoteXPCEndpoint_cloneCompletionCallback(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8D7200](a1, 72, 0x10E0040F2737523, 0);
  *v3 = *a2;
  v5 = *(a2 + 32);
  v4 = *(a2 + 48);
  v6 = *(a2 + 16);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
  *(v3 + 16) = v6;
  remoteXPCEndpointClient_retainCompletionCallbackEntryFields(v3);
  return v3;
}

void remoteXPCEndpoint_freeCompletionCallback(const __CFAllocator *a1, void *a2)
{
  remoteXPCEndpointClient_releaseCompletionCallbackEntryFields(a2);

  CFAllocatorDeallocate(a1, a2);
}

uint64_t remoteXPCFigEndpoint_copyCachedProperty(uint64_t a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*(DerivedStorage + 32));
  Value = CFDictionaryGetValue(*(DerivedStorage + 56), a2);
  v7 = Value;
  if (Value)
  {
    CFRetain(Value);
    FigSimpleMutexUnlock(*(DerivedStorage + 32));
    if (v7 == *MEMORY[0x1E695E738])
    {
      CFRelease(v7);
      v7 = 0;
    }

    result = 1;
  }

  else
  {
    FigSimpleMutexUnlock(*(DerivedStorage + 32));
    result = 0;
  }

  *a3 = v7;
  return result;
}

size_t FigEndpointRemoteXPC_SendData(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  FigEndpointExtendedGetFigEndpoint();
  v11 = v10;
  DerivedStorage = CMBaseObjectGetDerivedStorage(v10);
  v21 = 0;
  *v20 = 0;
  if (!a2)
  {
    v16 = 2145;
LABEL_10:
    FigEndpointRemoteXPC_SendData_cold_1(v16, &v22);
    v14 = v22;
    goto LABEL_11;
  }

  if (!a3)
  {
    v16 = 2146;
    goto LABEL_10;
  }

  ObjectID = FigEndpointXPCRemoteGetObjectID(v11, &v21);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage(0x64617461u, v21, v20);
    if (!ObjectID)
    {
      FigXPCMessageSetCFString(*v20, "CommChannelUUID", a2);
      FigXPCMessageSetCFData(*v20, "Data", a3);
      v14 = FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(v11, *v20, 0, 0, a4, a2, 0, 0, 0, a5);
      goto LABEL_6;
    }
  }

  v14 = ObjectID;
LABEL_11:
  if (a4 && v14)
  {
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    v17 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigEndpointRemoteXPC_SendData_block_invoke;
    block[3] = &__block_descriptor_tmp_41_0;
    block[4] = a4;
    block[5] = a1;
    v19 = v14;
    block[6] = a2;
    block[7] = a5;
    dispatch_async(v17, block);
  }

LABEL_6:
  FigXPCRelease(*v20);
  return v14;
}

size_t OUTLINED_FUNCTION_5_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  v11 = *(a1 + 8);

  return remoteXPCFigEndpoint_getSharedXPCClient(v11, &a10);
}

void OUTLINED_FUNCTION_16_14(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t block, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  a15 = v18;
  a16 = v20;
  a18 = v21;
  a17 = v19;

  dispatch_async(a1, &block);
}

void OUTLINED_FUNCTION_17_13()
{

  FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_18_16(uint64_t a1)
{
  *(v1 - 72) = 0;

  return CMBaseObjectGetDerivedStorage(a1);
}

void OUTLINED_FUNCTION_19_14(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, a4, a4 != v4, v5);
}

uint64_t OUTLINED_FUNCTION_20_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return _os_log_send_and_compose_impl(v20, 0, va, 128, a5, v18, v19, a8);
}

uint64_t OUTLINED_FUNCTION_21_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, int a17)
{
  a17 = 0;
  a16 = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &a17, &a16);
}

uint64_t OUTLINED_FUNCTION_23_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = a11;

  return FigXPCRemoteClientSendSyncMessageCreatingReply(a9, v12, &a10);
}

size_t OUTLINED_FUNCTION_24_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = 0;
  v10 = *(a1 + 8);

  return remoteXPCFigEndpoint_getSharedXPCClient(v10, &a9);
}

BOOL OUTLINED_FUNCTION_27_10(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

void OUTLINED_FUNCTION_28_10()
{

  FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_29_8()
{

  return FigCFEqual(v0, v1);
}

uint64_t FigEndpointAudioSourceGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_68 != -1)
  {
    FigEndpointAudioSourceGetClassID_cold_1();
  }

  return qword_1ED4CDBB0;
}

size_t source_getClassID(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&source_getClassID_sClassDesc, ClassID, 1, a1, v11, v12, v13, v14, a9);
}

uint64_t FigEndpointAudioSourceGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_68 != -1)
  {
    FigEndpointAudioSourceGetClassID_cold_1();
  }

  v3 = qword_1ED4CDBB0;

  return CMBaseClassGetCFTypeID(v3);
}

size_t FigEndpointStartServerEx(const char *a1)
{
  v14[0] = 1;
  v14[1] = HandleEndpointRemoteMessage;
  v14[2] = HandleNoReplyEndpointMessage;
  memset(&v14[3], 0, 24);
  if (!a1)
  {
    FigEndpointStartServerEx_cold_2(&v15);
    return v15;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32(Mutable, @"xpcServerOption_SelfTerminationTimeout", 30, v3, v4, v5, v6, v7);
  v12 = FigXPCServerStart(a1, v14, Mutable, &_MergedGlobals_69, v8, v9, v10, v11);
  if (!v12)
  {
    qword_1ED4CDBC0 = 2 * (strcmp(a1, "com.apple.airplay.endpoint.xpc") == 0);
    if (qword_1ED4CDBC8 != -1)
    {
      FigEndpointStartServerEx_cold_1();
      if (!Mutable)
      {
        return v12;
      }

      goto LABEL_5;
    }
  }

  if (Mutable)
  {
LABEL_5:
    CFRelease(Mutable);
  }

  return v12;
}

size_t FigEndpointStartServer(uint64_t a1, uint64_t a2)
{
  if (FigIsAirplaydEnabled(a1, a2))
  {
    v2 = "com.apple.mediaexperience.endpoint.xpc";
  }

  else
  {
    v2 = "com.apple.coremedia.endpoint.xpc";
  }

  return FigEndpointStartServerEx(v2);
}

const char *FigEndpointXPCServerNameForSource(uint64_t a1, uint64_t a2)
{
  if (a1 == 2)
  {
    return "com.apple.airplay.endpoint.xpc";
  }

  if (a1)
  {
    return 0;
  }

  if (FigIsAirplaydEnabled(a1, a2))
  {
    return "com.apple.mediaexperience.endpoint.xpc";
  }

  return "com.apple.coremedia.endpoint.xpc";
}

void FigEndpointServerSetActiveEndpoint(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (qword_1ED4CDBC8 != -1)
  {
    FigEndpointServerSetActiveEndpoint_cold_1();
  }

  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = __FigEndpointServerSetActiveEndpointAndForceNotify_block_invoke;
  v2[3] = &__block_descriptor_tmp_74;
  v2[4] = cf;
  v3 = 0;
  dispatch_async(qword_1ED4CDBD0, v2);
}

uint64_t FigXPCEndpointServerAssociateNeighborFigEndpointWithRegistration(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  if (cf && (v6 = CFGetTypeID(cf), v6 == FigEndpointGetTypeID(v6, v7)))
  {
    v8 = _MergedGlobals_69;

    return FigXPCServerAssociateCopiedObjectWithNeighborProcess(v8, a1, cf, 0, 0, 0, a3);
  }

  else
  {
    FigXPCEndpointServerAssociateNeighborFigEndpointWithRegistration_cold_1(&v10);
    return v10;
  }
}

uint64_t FigXPCEndpointServerRetainEndpointForID(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = FigXPCServerRetainNeighborObjectFromID(_MergedGlobals_69, a1, a2, a4, a5, a6, a7, a8);
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    if (*a2)
    {
      v10 = CFGetTypeID(*a2);
      if (v10 == FigEndpointGetTypeID(v10, v11))
      {
        return 0;
      }
    }

    FigXPCEndpointServerRetainEndpointForID_cold_1(&v14);
    v12 = v14;
  }

  if (a2 && v12 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v12;
}

size_t LookupEndpointByObjectIDForConnection(_xpc_connection_s *a1, uint64_t a2, CFTypeRef *a3, void *a4)
{
  cf = 0;
  v5 = FigXPCServerLookupAndRetainAssociatedObject(a1, a2, &cf, a4);
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      if (v6 == FigEndpointGetTypeID(v6, v7))
      {
        v8 = 0;
        *a3 = cf;
        return v8;
      }
    }

    LookupEndpointByObjectIDForConnection_cold_1(&v11);
    v8 = v11;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t HandleEndpointCreatePlaybackSessionMessage(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  v6 = *(*(CMBaseObjectGetVTable(a1) + 16) + 72);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = v6(a1, &cf);
  v8 = cf;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = cf == 0;
  }

  if (v9)
  {
    v10 = v7;
    if (!cf)
    {
      return v10;
    }

    goto LABEL_7;
  }

  value = 0;
  v10 = FigXPCEndpointPlaybackSessionServerAssociateCopiedNeighborFigEndpointPlaybackSession(a2, cf, &value);
  xpc_dictionary_set_uint64(a3, "PlaybackSessionID", value);
  v8 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v8);
  }

  return v10;
}

uint64_t HandleEndpointAcquireAndCopyResourceMessage(char *a1, uint64_t a2, void *a3, void *a4)
{
  v25 = 0;
  cf = 0;
  value = 0;
  v24 = 0;
  v8 = FigXPCMessageCopyCFString(a3, "ResourceType", &cf);
  if (v8)
  {
    goto LABEL_26;
  }

  v8 = FigXPCMessageCopyCFDictionary(a3, "ResourceOptions", &v25);
  if (v8)
  {
    goto LABEL_26;
  }

  if (!a1 || (ClassID = FigEndpointExtendedGetClassID(v8, v9), v11 = a1, !CMBaseObjectIsMemberOfClass(a1, ClassID)))
  {
    v11 = 0;
  }

  v13 = v25;
  v12 = cf;
  VTable = CMBaseObjectGetVTable(v11);
  v15 = *(VTable + 24);
  v8 = VTable + 24;
  v16 = *(v15 + 128);
  if (!v16)
  {
    v17 = 4294954514;
    goto LABEL_12;
  }

  v8 = v16(v11, v12, v13, &v24);
  if (v8)
  {
LABEL_26:
    v17 = v8;
  }

  else
  {
    v8 = FigCFEqual(cf, @"endpointStream");
    if (v8)
    {
      v8 = FigXPCEndpointStreamServerAssociateCopiedNeighborFigEndpointStream(a2, v24, &value);
      v17 = v8;
      if (!v8)
      {
        xpc_dictionary_set_uint64(a4, "ResourceID", value);
        goto LABEL_18;
      }
    }

    else
    {
      v17 = 4294950570;
    }
  }

LABEL_12:
  if (v24)
  {
    if (!a1 || (v18 = FigEndpointExtendedGetClassID(v8, v9), !CMBaseObjectIsMemberOfClass(a1, v18)))
    {
      a1 = 0;
    }

    v19 = cf;
    v20 = v24;
    v21 = *(*(CMBaseObjectGetVTable(a1) + 24) + 136);
    if (v21)
    {
      v21(a1, v19, v20);
    }
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v17;
}

uint64_t HandleEndpointDissociateMessage(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable(a1) + 16) + 32);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t HandleEndpointAddRemoveEndpointMessage(char *a1, uint64_t a2, _xpc_connection_s *a3, void *a4)
{
  v19 = 0;
  cf = 0;
  if (!a1)
  {
    return 4294950576;
  }

  v6 = a2;
  ClassID = FigEndpointAggregateGetClassID(a1, a2);
  if (CMBaseObjectIsMemberOfClass(a1, ClassID))
  {
    v9 = FigXPCMessageCopyCFDictionary(a4, "AggregateOptions", &cf);
    if (v9)
    {
      goto LABEL_15;
    }

    uint64 = xpc_dictionary_get_uint64(a4, "SubEndpointObjectID");
    v9 = LookupEndpointByObjectIDForConnection(a3, uint64, &v19, 0);
    if (v9)
    {
      goto LABEL_15;
    }

    CompletionCallbackParametersFromMessageAndConnection_1 = CreateCompletionCallbackParametersFromMessageAndConnection_1(a4, a3);
    v12 = v19;
    v13 = cf;
    if (CompletionCallbackParametersFromMessageAndConnection_1)
    {
      v14 = AggregateEndpointAddRemoveEndpointCallback;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(CMBaseObjectGetVTable(a1) + 32);
    if (v6)
    {
      v16 = *(v15 + 8);
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = *(v15 + 16);
      if (v16)
      {
LABEL_14:
        v9 = v16(a1, v12, v13, v14, CompletionCallbackParametersFromMessageAndConnection_1);
LABEL_15:
        v17 = v9;
        goto LABEL_17;
      }
    }

    v17 = 4294954514;
    goto LABEL_17;
  }

  v17 = 4294950576;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v17;
}

CFTypeRef __HandleEndpointCopyActiveEndpointMessage_block_invoke(uint64_t a1)
{
  result = gActiveEndpoint;
  if (gActiveEndpoint)
  {
    result = CFRetain(gActiveEndpoint);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CreateDelegateCallbackParameters(uint64_t a1, void *a2, uint64_t *a3)
{
  if (delegateCallbackParameters_GetTypeID_sRegisterDelegateCallbackParametersTypeOnce != -1)
  {
    CreateDelegateCallbackParameters_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v7 = Instance;
    *(Instance + 16) = a1;
    v8 = FigXPCRetain(a2);
    result = 0;
    *(v7 + 24) = v8;
    *a3 = v7;
  }

  else
  {
    CreateDelegateCallbackParameters_cold_2(&v10);
    return v10;
  }

  return result;
}

void delegateCallbackParameters_Finalize(uint64_t a1)
{
  *(a1 + 16) = 0;
  v1 = *(a1 + 24);
  if (v1)
  {
    *(a1 + 24) = 0;
    xpc_release(v1);
  }
}

__CFString *delegateCallbackParameters_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"DelegateCallbackParameters %p objectID %llx connection %p", a1, *(a1 + 16), *(a1 + 24));
  return Mutable;
}

void SendHandleAuthRequiredCallback(const void *a1, void *a2, uint64_t a3, uint64_t a4, const void *a5, void (*a6)(const void *, void, uint64_t, uint64_t), uint64_t a7)
{
  xdict = 0;
  if (!a4 || FigXPCCreateBasicMessage(0x72746463u, *(a4 + 16), &xdict) || a2 && FigEndpointXPCServerWriteNeighborEndpointToReply(*(a4 + 24), a2, xdict, 0, a5, v14, v15, v16, v18))
  {
    if (a6)
    {
      (a6)(a1, 0, 4294950568, a7, a5);
    }
  }

  else
  {
    xpc_dictionary_set_uint64(xdict, "ActivationSeed", a3);
    FigXPCMessageSetCFString(xdict, "AuthorizationType", a5);
    FigXPCMessageSetCFString(xdict, "DelegateFunctionType", @"hrar");
    CFRetain(a1);
    if (a5)
    {
      CFRetain(a5);
    }

    v17 = *(a4 + 24);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __SendHandleAuthRequiredCallback_block_invoke;
    handler[3] = &__block_descriptor_tmp_68;
    handler[4] = a6;
    handler[5] = a1;
    handler[6] = a7;
    handler[7] = a5;
    xpc_connection_send_message_with_reply(v17, xdict, 0, handler);
  }

  FigXPCRelease(xdict);
}

void __SendHandleAuthRequiredCallback_block_invoke(uint64_t a1, void *a2)
{
  cf = 0;
  if (MEMORY[0x19A8DA4F0](a2) == MEMORY[0x1E69E9E98])
  {
    v5 = 0;
    int64 = 4294950568;
  }

  else
  {
    int64 = xpc_dictionary_get_int64(a2, "AuthorizationResult");
    FigXPCMessageCopyCFString(a2, "AuthorizationString", &cf);
    v5 = cf;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v6(*(a1 + 40), v5, int64, *(a1 + 48));
    v5 = cf;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(*(a1 + 40));
  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
  }
}

void *CreateCompletionCallbackParametersFromMessageAndConnection_1(void *a1, void *a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, "CompletionID");
  if (!uint64)
  {
    return 0;
  }

  v5 = uint64;
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
  v14 = v6;
  if (v6)
  {
    *v6 = v5;
    v6[1] = xpc_dictionary_get_uint64(a1, ".objectID");
    v14[2] = FigXPCRetain(a2);
  }

  else
  {
    CreateCompletionCallbackParametersFromMessageAndConnection_cold_1_1(0, v7, v8, v9, v10, v11, v12, v13, v16);
  }

  return v14;
}

void DisposeEndpointRefCon(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      v2 = *a1;
      v3 = *(*(CMBaseObjectGetVTable(*a1) + 16) + 56);
      if (v3)
      {
        v3(v2, 0);
      }

      v4 = *(a1 + 16);
      if (v4)
      {
        CFRelease(v4);
        *(a1 + 16) = 0;
      }
    }

    if (*(a1 + 8))
    {
      v5 = *a1;
      v6 = *(*(CMBaseObjectGetVTable(*a1) + 16) + 48);
      if (v6)
      {
        v6(v5, 0);
      }

      v7 = *(a1 + 8);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 8) = 0;
      }
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    FigEndpointRPCCacheDispose(*(a1 + 24));

    free(a1);
  }
}

dispatch_queue_t __GetActiveEndpointQueue_block_invoke()
{
  result = dispatch_queue_create("FigEndpointServerActiveEndpointQueue", 0);
  qword_1ED4CDBD0 = result;
  return result;
}

void __FigEndpointServerSetActiveEndpointAndForceNotify_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = gActiveEndpoint;
  if (v2 == gActiveEndpoint)
  {
    if (!*(a1 + 40))
    {
      goto LABEL_8;
    }
  }

  else
  {
    gActiveEndpoint = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  notify_post("com.apple.coremedia.active-endpoint-changed");
  v2 = *(a1 + 32);
LABEL_8:
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t OUTLINED_FUNCTION_17_14(char *a1)
{

  return CMBaseObjectIsMemberOfClass(v1, a1);
}

uint64_t OUTLINED_FUNCTION_22_12()
{

  return CMBaseObjectGetVTable(v0);
}

void OUTLINED_FUNCTION_27_11(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t block, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, char a19)
{
  a16 = v20;
  a17 = v19;
  a18 = &a19;

  dispatch_sync(a1, &block);
}

size_t RegisterFigNetworkHistoryObserverType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigNetworkHistoryObserverClassDesc, ClassID, 1, &sFigNetworkHistoryObserverClassID, v10, v11, v12, v13, a9);
}

uint64_t FigNetworkHistoryObserverGetCFTypeID()
{
  FigThreadRunOnce(&FigNetworkHistoryObserverGetClassID_sRegisterFigNetworkHistoryObserverTypeOnce, RegisterFigNetworkHistoryObserverType);
  v0 = sFigNetworkHistoryObserverClassID;

  return CMBaseClassGetCFTypeID(v0);
}

size_t FigNetworkHistoryObserverCreate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, size_t a7, CMBlockBufferFlags a8)
{
  cf = 0;
  if (a6)
  {
    if (a5)
    {
      if (a2)
      {
        if (a4)
        {
          FigThreadRunOnce(&FigNetworkHistoryObserverGetClassID_sRegisterFigNetworkHistoryObserverTypeOnce, RegisterFigNetworkHistoryObserverType);
          v25 = CMDerivedObjectCreate(a1, kFigNetworkHistoryObserverVTable, sFigNetworkHistoryObserverClassID, &cf, v14, v15, v16, v17, cf);
          if (cf)
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
            *(DerivedStorage + 48) = a5;
            *(DerivedStorage + 32) = a3;
            v27 = FigCFWeakReferenceHolderCreateWithReferencedObject(a4);
            *(DerivedStorage + 40) = v27;
            if (v27)
            {
              v35 = *MEMORY[0x1E695E480];
              Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &kFigNetworkHistoryCondition_CompletionCallbackEntrySetCallbacks);
              *(DerivedStorage + 72) = Mutable;
              if (Mutable)
              {
                v44 = CFRetain(a2);
                *(DerivedStorage + 64) = v44;
                v52 = *(*(CMBaseObjectGetVTable(v44) + 8) + 48);
                if (v52)
                {
                  v52(v44, @"NetworkPredictorProperty_History", v35, DerivedStorage + 56);
                }

                if (*(DerivedStorage + 56))
                {
                  v53 = FigSimpleMutexCreate();
                  *DerivedStorage = v53;
                  if (v53)
                  {
                    v61 = FigDispatchQueueCreateWithPriority("com.apple.coremedia.networkhisotryobserver.timer", 0, 0);
                    *(DerivedStorage + 16) = v61;
                    if (v61)
                    {
                      v69 = FigDispatchQueueCreateWithPriority("com.apple.coremedia.networkhisotryobserver.callback", 0, 0);
                      *(DerivedStorage + 24) = v69;
                      if (v69)
                      {
                        v77 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(DerivedStorage + 16));
                        *(DerivedStorage + 8) = v77;
                        if (v77)
                        {
                          v85 = FigCFWeakReferenceHolderCreateWithReferencedObject(cf);
                          if (v85)
                          {
                            dispatch_set_context(*(DerivedStorage + 8), v85);
                            dispatch_source_set_event_handler_f(*(DerivedStorage + 8), fnho_callbacktimerProc);
                            dispatch_set_finalizer_f(*(DerivedStorage + 8), FigCFRelease_0);
                            dispatch_resume(*(DerivedStorage + 8));
                            v93 = FigNetworkHistoryAreAnyRequestsActive(*(DerivedStorage + 56));
                            *(DerivedStorage + 81) = v93;
                            if (v93)
                            {
                              fnho_ensureTimerIsScheduled(cf);
                            }

                            else
                            {
                              *(DerivedStorage + 80) = 1;
                              fnho_ensureTimerIsPaused(cf);
                            }

                            *(DerivedStorage + 96) = 0x10000000000000;
                            DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
                            FigNotificationCenterAddWeakListener(DefaultLocalCenter, cf, fnho_networkHistoryBecameActiveHandler, @"NetworkHistoryNotification_NetworkBecameActive", *(DerivedStorage + 56), 0, 0, v95, cf);
                            v96 = CMNotificationCenterGetDefaultLocalCenter();
                            FigNotificationCenterAddWeakListener(v96, cf, fnho_networkHistoryBecameInactiveHandler, @"NetworkHistoryNotification_NetworkBecameInactive", *(DerivedStorage + 56), 0, 0, v97, cf);
                            *a6 = cf;
                            return v25;
                          }

                          FigNetworkHistoryObserverCreate_cold_1(&v100, v86, v87, v88, v89, v90, v91, v92);
                        }

                        else
                        {
                          FigNetworkHistoryObserverCreate_cold_2(&v100, v78, v79, v80, v81, v82, v83, v84);
                        }
                      }

                      else
                      {
                        FigNetworkHistoryObserverCreate_cold_3(&v100, v70, v71, v72, v73, v74, v75, v76);
                      }
                    }

                    else
                    {
                      FigNetworkHistoryObserverCreate_cold_4(&v100, v62, v63, v64, v65, v66, v67, v68);
                    }
                  }

                  else
                  {
                    FigNetworkHistoryObserverCreate_cold_5(&v100, v54, v55, v56, v57, v58, v59, v60);
                  }
                }

                else
                {
                  FigNetworkHistoryObserverCreate_cold_6(&v100, v45, v46, v47, v48, v49, v50, v51);
                }
              }

              else
              {
                FigNetworkHistoryObserverCreate_cold_7(&v100, v37, v38, v39, v40, v41, v42, v43);
              }
            }

            else
            {
              FigNetworkHistoryObserverCreate_cold_8(&v100, v28, v29, v30, v31, v32, v33, v34);
            }
          }

          else
          {
            FigNetworkHistoryObserverCreate_cold_9(&v100, v18, v19, v20, v21, v22, v23, v24);
          }
        }

        else
        {
          FigNetworkHistoryObserverCreate_cold_10(&v100, a2, a3, 0, a5, a6, a7, a8);
        }
      }

      else
      {
        FigNetworkHistoryObserverCreate_cold_11(&v100, 0, a3, a4, a5, a6, a7, a8);
      }
    }

    else
    {
      FigNetworkHistoryObserverCreate_cold_12(&v100, a2, a3, a4, 0, a6, a7, a8);
    }
  }

  else
  {
    FigNetworkHistoryObserverCreate_cold_13(&v100, a2, a3, a4, a5, 0, a7, a8);
  }

  v25 = v100;
  if (cf)
  {
    CFRelease(cf);
  }

  return v25;
}

void FigCFRelease_0(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigNetworkHistoryObserverAddCondition(uint64_t a1, __int128 *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a3)
  {
    v13 = DerivedStorage;
    v14 = CFGetAllocator(*(DerivedStorage + 72));
    v15 = MEMORY[0x19A8D7200](v14, 240, 0x1060040B5C7698ELL, 0);
    if (v15)
    {
      v23 = v15;
      v24 = *a2;
      v25 = a2[2];
      v15[1] = a2[1];
      v15[2] = v25;
      *v15 = v24;
      v26 = a2[3];
      v27 = a2[4];
      v28 = a2[6];
      v15[5] = a2[5];
      v15[6] = v28;
      v15[3] = v26;
      v15[4] = v27;
      v29 = a2[7];
      v30 = a2[8];
      v31 = a2[10];
      v15[9] = a2[9];
      v15[10] = v31;
      v15[7] = v29;
      v15[8] = v30;
      v32 = a2[11];
      v33 = a2[12];
      v34 = a2[14];
      v15[13] = a2[13];
      v15[14] = v34;
      v15[11] = v32;
      v15[12] = v33;
      FigSimpleMutexLock(*v13);
      CFSetSetValue(*(v13 + 72), v23);
      FigSimpleMutexUnlock(*v13);
      result = 0;
      *a3 = v23;
    }

    else
    {
      FigNetworkHistoryObserverAddCondition_cold_1(&v36, v16, v17, v18, v19, v20, v21, v22);
      return v36;
    }
  }

  else
  {
    FigNetworkHistoryObserverAddCondition_cold_2(&v37, v6, v7, v8, v9, v10, v11, v12);
    return v37;
  }

  return result;
}

BOOL FigNetworkHistoryObserverTestCondition(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  if (CFSetContainsValue(*(DerivedStorage + 72), a2))
  {
    v5 = fnho_testCondition(a1, a2, 0);
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock(*DerivedStorage);
  return v5;
}

BOOL fnho_testCondition(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v7 = *(DerivedStorage + 64);
  v8 = *(DerivedStorage + 96);
  if (v8 <= 2.22507386e-308)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  }

  else
  {
    UpTimeNanoseconds = ((*(DerivedStorage + 88) - v8) * 1000000000.0);
  }

  valuePtr = 0;
  v10 = *(a2 + 192);
  v38 = *(a2 + 176);
  v39 = v10;
  v11 = *(a2 + 224);
  v40 = *(a2 + 208);
  v41 = v11;
  v12 = *(a2 + 128);
  v34 = *(a2 + 112);
  v35 = v12;
  v13 = *(a2 + 160);
  v36 = *(a2 + 144);
  v37 = v13;
  v14 = *(a2 + 64);
  v30 = *(a2 + 48);
  v31 = v14;
  v15 = *(a2 + 96);
  v32 = *(a2 + 80);
  v33 = v15;
  v16 = *(a2 + 32);
  v28 = *(a2 + 16);
  v29 = v16;
  v17 = *(*(CMBaseObjectGetVTable(v7) + 16) + 8);
  if (!v17 || (v48[10] = v38, v48[11] = v39, v48[12] = v40, v48[13] = v41, v48[6] = v34, v48[7] = v35, v48[8] = v36, v48[9] = v37, v48[2] = v30, v48[3] = v31, v48[4] = v32, v48[5] = v33, v48[0] = v28, v48[1] = v29, v17(v7, UpTimeNanoseconds, v48, &v42)) || (valuePtr = (*(&v43 + 1) * v42), (v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr)) == 0))
  {
    v23 = 0;
    if (!a3)
    {
      return v23;
    }

    v21 = 0;
    v24 = 0;
    goto LABEL_17;
  }

  v21 = v18;
  v22 = *(a2 + 8);
  if (v22 != 6)
  {
    if (v22 == 5)
    {
      *&v48[0] = 0;
      CFNumberGetValue(*a2, kCFNumberSInt64Type, v48);
      v23 = valuePtr >= *&v48[0];
      if (!a3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A8uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x119, v3, v19, v20, v26);
      v23 = 0;
      if (!a3)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_16;
  }

  *&v48[0] = 0;
  CFNumberGetValue(*a2, kCFNumberSInt64Type, v48);
  v23 = valuePtr <= *&v48[0];
  if (a3)
  {
LABEL_16:
    v24 = CFRetain(v21);
LABEL_17:
    *a3 = v24;
  }

LABEL_18:
  if (v21)
  {
    CFRelease(v21);
  }

  return v23;
}

uint64_t FigNetworkHistoryObserverSetTimeForUnitTest(uint64_t a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  if (*(DerivedStorage + 96) == 2.22507386e-308)
  {
    *(DerivedStorage + 96) = a2 + -1.0;
  }

  *(DerivedStorage + 88) = a2;
  v4 = *DerivedStorage;

  return FigSimpleMutexUnlock(v4);
}

void fnho_finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener(DefaultLocalCenter, a1, fnho_networkHistoryBecameActiveHandler, @"NetworkHistoryNotification_NetworkBecameActive", *(DerivedStorage + 56));
  v4 = CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener(v4, a1, fnho_networkHistoryBecameInactiveHandler, @"NetworkHistoryNotification_NetworkBecameInactive", *(DerivedStorage + 56));
  dispatch_source_cancel(*(DerivedStorage + 8));
  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(DerivedStorage + 24);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(DerivedStorage + 72);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(DerivedStorage + 40);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(DerivedStorage + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 64);
  if (v11)
  {
    CFRelease(v11);
  }

  FigSimpleMutexDestroy(*DerivedStorage);
  CMNotificationCenterGetDefaultLocalCenter();

  FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

CFStringRef fnho_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  Count = CFSetGetCount(*(DerivedStorage + 72));
  FigSimpleMutexUnlock(*DerivedStorage);
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigNetworkHistoryObserver <%p> timeInterval=%lld total condition=%ld]", a1, *(DerivedStorage + 32), Count);
}

void fnho_networkConditionReleaseCallback(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

void fnho_dispatchObserverConditionFn(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1[1]);
  (*a1)(a1[1], *(DerivedStorage + 40), a1[2], a1[3]);
  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t FigAudioRenderingPreferencesGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_70 != -1)
  {
    FigAudioRenderingPreferencesGetTypeID_cold_1();
  }

  return qword_1ED4CDBE0;
}

uint64_t RegisterAudioRenderingPreferencesType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t FigAudioRenderingPreferencesCreate(uint64_t AudioChannelCountFromLayout, uint64_t a2, size_t a3, _DWORD *a4, void *a5)
{
  if (!a5)
  {
    FigAudioRenderingPreferencesCreate_cold_7(&v19);
    return v19;
  }

  if ((a3 != 0) == (a4 == 0))
  {
    FigAudioRenderingPreferencesCreate_cold_1(&v19);
    return v19;
  }

  if (a4)
  {
    if (a3 <= 0x1F)
    {
      FigAudioRenderingPreferencesCreate_cold_6(&v19);
      return v19;
    }

    if (!*a4 && 20 * (a4[2] - 1) + 32 > a3)
    {
      FigAudioRenderingPreferencesCreate_cold_5(&v19);
      return v19;
    }

    if (FigGetAudioChannelCountFromLayout(a4, a3) != a2)
    {
      FigAudioRenderingPreferencesCreate_cold_2(&v19);
      return v19;
    }
  }

  if (_MergedGlobals_70 != -1)
  {
    FigAudioRenderingPreferencesGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigAudioRenderingPreferencesCreate_cold_4(&v19, v10, v11, v12, v13, v14, v15, v16);
    return v19;
  }

  v17 = Instance;
  Instance[2] = a2;
  Instance[3] = a3;
  if (a3)
  {
    if (a4)
    {
      memcpy(Instance + 4, a4, a3);
    }
  }

  result = 0;
  *a5 = v17;
  return result;
}

uint64_t FigAudioRenderingPreferencesGetMaximumChannelCountAndPreferredChannelLayout(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *(a1 + 24);
    if (a2)
    {
      *a2 = v9;
    }

    if (v9)
    {
      v10 = a1 + 32;
    }

    else
    {
      v10 = 0;
    }

    *a3 = v10;
    return *(a1 + 16);
  }

  else
  {
    FigAudioRenderingPreferencesGetMaximumChannelCountAndPreferredChannelLayout_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v8);
    return 0;
  }
}

uint64_t audioRenderingPreferences_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

CFStringRef audioRenderingPreferences_CopyDebugDesc(void *cf)
{
  v7 = 0;
  v2 = cf[3];
  if (v2)
  {
    v6 = 8;
    AudioToolbox_AudioFormatGetProperty(1819242093, v2, (cf + 4), &v6, &v7);
  }

  v3 = CFGetAllocator(cf);
  v4 = CFStringCreateWithFormat(v3, 0, @"FigAudioRenderingPreferences [%p]: maximum channel count %d, preferred channel layout size %d, preferred channel layout name %@", cf, cf[2], cf[3], v7);
  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

uint64_t FigMetricEventTimelineClientServerXPC_SerializeEvent(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  if (a3)
  {
    v10 = *(*(CMBaseObjectGetVTable(a3) + 16) + 72);
    if (v10)
    {
      v11 = v10(a3) != 0;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*(CMBaseObjectGetVTable(a3) + 16) + 24);
    if (v12)
    {
      v13 = v12(a3);
    }

    else
    {
      v13 = -12782;
    }

    xpc_dictionary_set_int64(a1, "EventID", v13);
    xpc_dictionary_set_BOOL(a1, "MockEvent", v11);
    if (!v11)
    {
      v14 = *(*(CMBaseObjectGetVTable(a3) + 16) + 80);
      if (v14)
      {
        v14(a3, a1);
      }
    }

    return 0;
  }

  else
  {
    FigMetricEventTimelineClientServerXPC_SerializeEvent_cold_1(&v16, a2, 0, a4, a5, a6, a7, a8);
    return v16;
  }
}

size_t FigMetricEventTimelineClientServerXPC_DeserializeAndCopyEvent(void *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  cf = 0;
  if (!a2)
  {
    FigMetricEventTimelineClientServerXPC_DeserializeAndCopyEvent_cold_1(&v21, 0, a3, a4, a5, a6, a7, a8);
    return v21;
  }

  int64 = xpc_dictionary_get_int64(a1, "EventID");
  if (xpc_dictionary_get_BOOL(a1, "MockEvent"))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v17 = FigMetricMockEventForTestCreate(AllocatorForMedia, int64, &cf, v12, v13, v14, v15, v16);
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = 0;
    *a2 = cf;
    return v18;
  }

  v17 = FigMetricEventDeserializeEventAndCopy(a1, &cf);
  if (!v17)
  {
    goto LABEL_7;
  }

LABEL_4:
  v18 = v17;
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t FigNotificationCenterSupportInitOnce()
{
  _MergedGlobals_71 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  result = FigSimpleMutexCreate();
  qword_1ED4CDBF0 = result;
  return result;
}

uint64_t FigNotificationCenterAddListeners(__CFNotificationCenter *a1, const void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (!a4)
  {
    return 0;
  }

  v11 = 0;
  v12 = (a3 + 8);
  for (i = a3; ; i += 16)
  {
    v14 = *(v12 - 1) ? *(v12 - 1) : 0;
    v15 = CMNotificationCenterAddListener(a1, a2, v14, **v12, a5);
    if (v15)
    {
      break;
    }

    ++v11;
    v12 += 2;
    if (a4 == v11)
    {
      return 0;
    }
  }

  v16 = v15;
  FigNotificationCenterRemoveListeners(a1, a2, a3, v11, a5);
  return v16;
}

uint64_t FigNotificationCenterRemoveListeners(__CFNotificationCenter *a1, const void *a2, uint64_t a3, uint64_t a4, void *object)
{
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  v7 = a3;
  LODWORD(v10) = 0;
  v11 = (a3 + 8);
  do
  {
    if (*(v11 - 1))
    {
      v12 = *(v11 - 1);
    }

    else
    {
      v12 = 0;
    }

    v13 = *v11;
    v11 += 2;
    v14 = CMNotificationCenterRemoveListener(a1, a2, v12, *v13, object);
    if (v10)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 == 0;
    }

    if (v15)
    {
      v10 = v10;
    }

    else
    {
      v10 = v14;
    }

    v7 += 16;
    --v6;
  }

  while (v6);
  return v10;
}

void figPowerLogOpenFramework()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = 1;
    if ([v0 rangeOfString:@"AudioAccessory" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v2 = v3 != [@"AudioAccessory" length];
    }

    isPowerLogEnabled = v2;
    CFRelease(v1);
  }

  if (isPowerLogEnabled)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/PowerLog.framework/PowerLog", 4);
    if (v4)
    {
      off_1ED4CDC00 = dlsym(v4, "PLLogTimeSensitiveRegisteredEvent");
    }
  }
}

uint64_t FigCFWeakReferenceHolderGetTypeID(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CDC10 != -1)
  {
    FigCFWeakReferenceHolderGetTypeID_cold_1();
  }

  return qword_1ED4CDC18;
}

uint64_t registerFigCFWeakReferenceHolder()
{
  _MergedGlobals_73 = 1;
  qword_1ED4CDC20 = FigSimpleMutexCreate();
  qword_1ED4CDC28 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  result = _CFRuntimeRegisterClass();
  qword_1ED4CDC18 = result;
  return result;
}

void FigCFWeakReferenceHolderCopyCachedInstance(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = -a1;
  CFDictionaryGetValue(qword_1ED4CDC28, -a1);
  CFRetain(a1);
  v7 = _CFTryRetain();
  v8 = v7;
  if (v7)
  {
    v9 = FigCFWeakReferenceLoadAndRetain((v7 + 24));
    if (v9 == a1)
    {
      CFRelease(v9);
      v10 = v8;
      v8 = 0;
      goto LABEL_6;
    }

    CFDictionaryRemoveValue(qword_1ED4CDC28, v6);
  }

  v10 = 0;
LABEL_6:
  *a2 = v10;
  *a3 = v8;
}

BOOL FigCFWeakReferenceHolderIsWeakReferenceNULL(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) == 0;
  }

  return result;
}

uint64_t FigCFWeakReferenceHolderInit(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void FigCFWeakReferenceHolderFinalize(uint64_t a1)
{
  if (_MergedGlobals_73 == 1 && *(a1 + 16))
  {
    FigSimpleMutexLock(qword_1ED4CDC20);
    if (!(CFDictionaryGetValue(qword_1ED4CDC28, *(a1 + 16)) + a1))
    {
      CFDictionaryRemoveValue(qword_1ED4CDC28, *(a1 + 16));
    }

    FigSimpleMutexUnlock(qword_1ED4CDC20);
  }

  FigCFWeakReferenceDestroy((a1 + 24));
}

uint64_t FigEndpointRPCCacheCreate(void *a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004039A5F366uLL);
  if (v4)
  {
    v5 = v4;
    *v4 = a2;
    *(v4 + 8) = xmmword_197166CA0;
    v6 = 0;
    *(v4 + 3) = malloc_type_calloc(0x20uLL, 0x10uLL, 0x10C004028F705ECuLL);
    *a1 = v5;
  }

  else
  {
    FigEndpointRPCCacheCreate_cold_1(&v8);
    v6 = v8;
  }

  FigEndpointRPCCacheDispose(0);
  return v6;
}

void FigEndpointRPCCacheDispose(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = a1[1];
      if (v3 >= 1)
      {
        v4 = 0;
        for (i = 0; i < v3; ++i)
        {
          if (*&v2[v4])
          {
            CFRelease(*&v2[v4]);
            v2 = a1[3];
            *&v2[v4] = 0;
            v3 = a1[1];
          }

          v4 += 16;
        }
      }

      a1[3] = 0;
      free(v2);
    }

    free(a1);
  }
}

uint64_t FigEndpointRPCCacheRemoveAllEndpoints(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a1 + 24);
    do
    {
      v6 = *(v5 + v3);
      if (v6)
      {
        CFRelease(v6);
        v5 = *(a1 + 24);
        *(v5 + v3) = 0;
        v2 = *(a1 + 8);
      }

      *(v5 + v3 + 8) = 0;
      ++v4;
      v3 += 16;
    }

    while (v4 < v2);
  }

  *(a1 + 8) = 0;
  return 0;
}

size_t FigEndpointRPCCacheComputeCacheDeltas(uint64_t a1, _xpc_connection_s *a2, CFArrayRef theArray, CMBlockBufferRef *a4, void *a5)
{
  MutableCopy = FigCFArrayCreateMutableCopy(*MEMORY[0x1E695E480], theArray);
  v9 = *(a1 + 8);
  if (v9 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(a1 + 24) + 16 * v11;
      v29.length = CFArrayGetCount(MutableCopy);
      v29.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(MutableCopy, v29, *v12);
      if (FirstIndexOfValue == -1)
      {
        if (a5)
        {
          if (!v10)
          {
            v10 = xpc_array_create(0, 0);
          }

          xpc_array_set_uint64(v10, 0xFFFFFFFFFFFFFFFFLL, *(v12 + 8));
        }

        if (*v12)
        {
          CFRelease(*v12);
          *v12 = 0;
        }

        *(*(a1 + 24) + 16 * v11) = *(*(a1 + 24) + 16 * v9 - 16);
        --*(a1 + 8);
        --v9;
      }

      else
      {
        CFArrayRemoveValueAtIndex(MutableCopy, FirstIndexOfValue);
        ++v11;
      }
    }

    while (v11 < v9);
  }

  Count = CFArrayGetCount(MutableCopy);
  if (!Count)
  {
    v16 = 0;
    if (!a4)
    {
LABEL_26:
      v23 = 0;
      if (a5)
      {
        *a5 = v10;
        v10 = 0;
      }

      goto LABEL_28;
    }

LABEL_25:
    *a4 = v16;
    v16 = 0;
    goto LABEL_26;
  }

  v15 = Count;
  v16 = xpc_array_create(0, 0);
  if (v15 < 1)
  {
LABEL_24:
    if (!a4)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v25 = a4;
  v17 = 0;
  while (1)
  {
    v28 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v17);
    if (*a1 == 1)
    {
      appended = FigEndpointXPCServerAppendNeighborEndpointToArray(a2, ValueAtIndex, v16, &v28);
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBCA8uLL, "<< FigEndpointCache >>", 0x9A, v27, v21, v22, v25);
    }

    v23 = appended;
    if (appended)
    {
      break;
    }

    figEndpointRPCCacheAddObject(a1, ValueAtIndex, v28);
    if (v15 == ++v17)
    {
      a4 = v25;
      goto LABEL_24;
    }
  }

LABEL_28:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  FigXPCRelease(v16);
  FigXPCRelease(v10);
  return v23;
}