uint64_t ApplePhotonDetectorServicesGetLuxAsync()
{
  v0 = MEMORY[0x28223BE20]();
  v5 = v3;
  v6 = v2;
  v7 = v1;
  v8 = v0;
  v70 = *MEMORY[0x277D85DE8];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2000000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2000000000;
  v50 = 0;
  if (v0 && v1 && v2 && v3)
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2000000000;
    v46 = v0;
    if (v0->isa)
    {
      if (*(v2 + 36))
      {
        v9 = *v2;
        if (*v2 && v2[2] && v2[1] && v2[3])
        {
          v10 = v4;
          dispatch_retain(v1);
          v41[0] = 0;
          v41[1] = v41;
          v41[2] = 0x2000000000;
          v42 = 0;
          bzero(buf, 0xE60uLL);
          v11 = xpc_dictionary_create(0, 0, 0);
          if (v11)
          {
            v12 = *v44[3];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 0x40000000;
            block[2] = __ApplePhotonDetectorServicesGetLuxAsync_block_invoke;
            block[3] = &unk_278CBC568;
            block[4] = &v43;
            block[5] = &v47;
            block[6] = &v51;
            dispatch_sync(v12, block);
            if (!*(v52 + 6))
            {
              if ((v48[3] & 1) == 0)
              {
                xpc_connection_set_event_handler(*(v44[3] + 8), &__block_literal_global_0);
              }

              xpc_connection_activate(*(v44[3] + 8));
              if (isCameraStreaming(v44[3] + 8) && *(v6 + 36) <= 4u)
              {
                *buf = 104;
                xpc_dictionary_set_uint64(v11, *(v44[3] + 32), 2uLL);
                xpc_dictionary_set_data(v11, *(v44[3] + 40), buf, 0xE60uLL);
                v25 = v44[3];
                v26 = *(v25 + 8);
                v27 = *(v25 + 16);
                handler[0] = MEMORY[0x277D85DD0];
                handler[1] = 0x40000000;
                handler[2] = __ApplePhotonDetectorServicesGetLuxAsync_block_invoke_22;
                handler[3] = &unk_278CBC5D0;
                handler[4] = &v43;
                handler[5] = v41;
                handler[6] = v6;
                handler[7] = v5;
                handler[8] = v7;
                handler[9] = v10;
                xpc_connection_send_message_with_reply(v26, v11, v27, handler);
              }

              else
              {
                *&v57 = 0;
                *(&v57 + 1) = &v57;
                v58 = 0x2000000000;
                v59 = 0;
                v35 = 0;
                v36 = &v35;
                v37 = 0x2000000000;
                v38 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
                v28 = v36[3];
                if (v28)
                {
                  v29 = *(v6 + 36);
                  *v28 = v29;
                  if (v29)
                  {
                    v30 = 0;
                    do
                    {
                      *buf = 100;
                      xpc_dictionary_set_uint64(v11, *(v44[3] + 32), 2uLL);
                      xpc_dictionary_set_data(v11, *(v44[3] + 40), buf, 0xE60uLL);
                      v31 = v44[3];
                      v32 = *(v31 + 8);
                      v33 = *(v31 + 16);
                      v34[0] = MEMORY[0x277D85DD0];
                      v34[1] = 0x40000000;
                      v34[2] = __ApplePhotonDetectorServicesGetLuxAsync_block_invoke_26;
                      v34[3] = &unk_278CBC618;
                      v34[4] = &v43;
                      v34[5] = v41;
                      v34[6] = &v57;
                      v34[7] = &v35;
                      v34[8] = v6;
                      v34[9] = v5;
                      v34[10] = v7;
                      v34[11] = v10;
                      xpc_connection_send_message_with_reply(v32, v11, v33, v34);
                      ++v30;
                    }

                    while (v30 < *(v6 + 36));
                  }
                }

                else
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *v55 = 136315138;
                    v56 = "ApplePhotonDetectorServicesGetLuxAsync";
                    _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Could not allocate memory for counter \n", v55, 0xCu);
                  }

                  disconnectFromDaemon(v44[3]);
                }

                _Block_object_dispose(&v35, 8);
                _Block_object_dispose(&v57, 8);
              }

              goto LABEL_48;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
LABEL_48:
              _Block_object_dispose(v41, 8);
              _Block_object_dispose(&v43, 8);
              if (v11)
              {
                xpc_release(v11);
              }

              goto LABEL_30;
            }

            LODWORD(v57) = 136315138;
            *(&v57 + 4) = "ApplePhotonDetectorServicesGetLuxAsync";
            v13 = MEMORY[0x277D86220];
            v14 = "%s: Could not establish a connection with the daemon, exiting\n";
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_48;
            }

            LODWORD(v57) = 136315138;
            *(&v57 + 4) = "ApplePhotonDetectorServicesGetLuxAsync";
            v13 = MEMORY[0x277D86220];
            v14 = "%s: Could not create dictionary, exiting\n";
          }

          _os_log_impl(&dword_240F08000, v13, OS_LOG_TYPE_DEFAULT, v14, &v57, 0xCu);
          goto LABEL_48;
        }

        v16 = -536870211;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v21 = v6[1];
          v20 = v6[2];
          v22 = v6[3];
          *buf = 136316162;
          v61 = "ApplePhotonDetectorServicesGetLuxAsync";
          v62 = 2048;
          v63 = v9;
          v64 = 2048;
          v65 = v20;
          v66 = 2048;
          v67 = v21;
          v68 = 2048;
          v69 = v22;
          v17 = MEMORY[0x277D86220];
          v18 = "%s: Error! Client has not allocated the required memory: lux samples = %p, abs time = %p, gains = %p, coex = %p\n";
          v19 = 52;
          goto LABEL_23;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v61 = "ApplePhotonDetectorServicesGetLuxAsync";
          _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Error! Client requested 0 samples\n", buf, 0xCu);
          v16 = -536870911;
          goto LABEL_26;
        }

        v16 = -536870911;
      }
    }

    else
    {
      v16 = -536870195;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v61 = "ApplePhotonDetectorServicesGetLuxAsync";
        v17 = MEMORY[0x277D86220];
        v18 = "%s: APDS dispatch queue is unavailable. Was it not allocated ?\n";
        v19 = 12;
LABEL_23:
        _os_log_impl(&dword_240F08000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
LABEL_26:
        v23 = v52;
LABEL_29:
        *(v23 + 6) = v16;
        _Block_object_dispose(&v43, 8);
        goto LABEL_30;
      }
    }

    v23 = &v51;
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v61 = "ApplePhotonDetectorServicesGetLuxAsync";
    v62 = 2048;
    v63 = v7;
    v64 = 2048;
    v65 = v6;
    v66 = 2048;
    v67 = v5;
    v68 = 2048;
    v69 = v8;
    _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Invalid arguments, replyQueue = 0x%p, info = 0x%p, UserCallback = 0x%p, handle = %p exiting\n", buf, 0x34u);
    v15 = v52;
  }

  else
  {
    v15 = &v51;
  }

  *(v15 + 6) = -536870911;
LABEL_30:
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  return 0;
}

void sub_240F08F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

uint64_t __ApplePhotonDetectorServicesGetLuxAsync_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(*(*(result + 32) + 8) + 24);
  if (*(v2 + 8))
  {
    ++*(v2 + 88);
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(result + 40) + 8) + 24) = 0;
    result = connect(*(*(*(result + 32) + 8) + 24) + 8, "com.apple.applephotondetectorservicesqueue");
    *(*(*(v1 + 48) + 8) + 24) = result;
    if (!*(*(*(v1 + 48) + 8) + 24))
    {
      v3 = *(*(*(v1 + 32) + 8) + 24);
      ++*(v3 + 88);
    }
  }

  return result;
}

uint64_t connect(uint64_t a1, const char *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  existing = 0;
  if (!a1)
  {
    return 3758096385;
  }

  v4 = 0;
  v5 = *MEMORY[0x277CD2898];
  while (1)
  {
    v6 = IOServiceMatching(off_278CBC430[v4]);
    MatchingServices = IOServiceGetMatchingServices(v5, v6, &existing);
    if (existing)
    {
      break;
    }

    if (++v4 == 3)
    {
      return 3758097086;
    }
  }

  v8 = MatchingServices;
  v9 = IOServiceNameMatching(off_278CBC430[v4]);
  MatchingService = IOServiceGetMatchingService(v5, v9);
  v11 = MatchingService;
  if (MatchingService)
  {
    v12 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"RestoreMode", *MEMORY[0x277CBECE8], 3u);
    v13 = v12;
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
    }
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 16) = v4;
  if (v4 == 2)
  {
    if (valuePtr == 1 || os_variant_is_recovery())
    {
      v21 = "com.apple.restorecameraispd";
    }

    else if (os_variant_is_darwinos())
    {
      v21 = "com.apple.cameraispdarwind";
    }

    else
    {
      v21 = "com.apple.cameraispd";
    }

    *(a1 + 40) = v21;
    v15 = "ISPServicesRemoteIORegPropertyDataKey";
    v16 = "ISPServicesRemoteIORegPropertyNameKey";
    v17 = "ISPServicesRemoteFusingLengthKey";
    v18 = "ISPServicesRemoteFusingDataKey";
    v19 = "ISPServicesRemoteDataKey";
    v20 = "ISPServicesRemoteTypeKey";
    goto LABEL_21;
  }

  if (v4 == 1)
  {
    if (valuePtr == 1 || os_variant_is_recovery())
    {
      v14 = "com.apple.dietappleh16camerad";
    }

    else if (os_variant_is_darwinos())
    {
      v14 = "com.apple.appleh16darwincamerad";
    }

    else
    {
      v14 = "com.apple.appleh16camerad";
    }

    *(a1 + 40) = v14;
    v15 = "H16ISPServicesRemoteIORegPropertyDataKey";
    v16 = "H16ISPServicesRemoteIORegPropertyNameKey";
    v17 = "H16ISPServicesRemoteFusingLengthKey";
    v18 = "H16ISPServicesRemoteFusingDataKey";
    v19 = "H16ISPServicesRemoteDataKey";
    v20 = "H16ISPServicesRemoteTypeKey";
LABEL_21:
    v22 = 72;
    *(a1 + 24) = v20;
    v23 = 64;
    v24 = 56;
    v25 = 48;
    v26 = 32;
    goto LABEL_27;
  }

  v19 = "com.apple.dietappleh13camerad";
  if (valuePtr == 1)
  {
    v15 = "H13ISPServicesRemoteFusingLengthKey";
  }

  else
  {
    is_recovery = os_variant_is_recovery();
    v15 = "H13ISPServicesRemoteFusingLengthKey";
    if (!is_recovery)
    {
      v19 = "com.apple.appleh13camerad";
    }
  }

  v16 = "H13ISPServicesRemoteFusingDataKey";
  v17 = "H13ISPServicesRemoteDataKey";
  v22 = 56;
  v23 = 48;
  v24 = 32;
  v25 = 24;
  v26 = 40;
  v18 = "H13ISPServicesRemoteTypeKey";
LABEL_27:
  *(a1 + v26) = v19;
  *(a1 + v25) = v18;
  *(a1 + v24) = v17;
  *(a1 + v23) = v16;
  *(a1 + v22) = v15;
  v28 = dispatch_queue_create(a2, 0);
  *(a1 + 8) = v28;
  if (v28)
  {
    mach_service = xpc_connection_create_mach_service(*(a1 + 40), v28, 0);
    *a1 = mach_service;
    if (mach_service)
    {
      goto LABEL_34;
    }

    v8 = 3758097086;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 136315138;
    v36 = "connect";
    v30 = MEMORY[0x277D86220];
    v31 = "%s: Could not establish a connection\n";
    goto LABEL_33;
  }

  v8 = 3758097086;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "connect";
    v30 = MEMORY[0x277D86220];
    v31 = "%s: Could not create a serial dispatch queue, exiting\n";
LABEL_33:
    _os_log_impl(&dword_240F08000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
  }

LABEL_34:
  if (existing)
  {
    IOObjectRelease(existing);
    existing = 0;
  }

  if (v11)
  {
    IOObjectRelease(v11);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v8;
}

void disconnectFromDaemon(NSObject **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZL20disconnectFromDaemonP27ApplePhotonDetectorServices_block_invoke;
      block[3] = &__block_descriptor_tmp_53;
      block[4] = a1;
      dispatch_sync(v2, block);
    }
  }
}

void ___ZL20disconnectFromDaemonP27ApplePhotonDetectorServices_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    v3 = *(v2 + 88) - 1;
    *(v2 + 88) = v3;
    if (!v3)
    {
      disconnect((v2 + 8));
      v4 = *(*(a1 + 32) + 16);
      if (v4)
      {
        dispatch_release(v4);
        *(*(a1 + 32) + 16) = 0;
      }
    }
  }
}

BOOL isCameraStreaming(_BOOL8 result)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    return result;
  }

  v1 = *(result + 16);
  if (v1 >= 3)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    valuePtr = 136315394;
    v19 = "isCameraStreaming";
    v20 = 1024;
    LODWORD(v21) = v1;
    v13 = MEMORY[0x277D86220];
    v14 = "%s: Could not get a matching driver name, driver version = %d\n";
    v15 = 18;
LABEL_16:
    _os_log_impl(&dword_240F08000, v13, OS_LOG_TYPE_DEFAULT, v14, &valuePtr, v15);
    return 0;
  }

  v2 = (&off_278CBC6E0)[v1];
  v3 = *MEMORY[0x277CD2898];
  v4 = IOServiceNameMatching(v2);
  MatchingService = IOServiceGetMatchingService(v3, v4);
  if (!MatchingService)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    valuePtr = 136315394;
    v19 = "isCameraStreaming";
    v20 = 2080;
    v21 = v2;
    v13 = MEMORY[0x277D86220];
    v14 = "%s: Could not match to the driver %s\n";
    v15 = 22;
    goto LABEL_16;
  }

  v6 = MatchingService;
  valuePtr = 0;
  v17 = 0;
  v16 = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"FrontCameraStreaming", *MEMORY[0x277CBECE8], 3u);
  v9 = IORegistryEntrySearchCFProperty(v6, "IOService", @"BackCameraStreaming", v7, 3u);
  v10 = IORegistryEntrySearchCFProperty(v6, "IOService", @"BackTeleCameraStreaming", v7, 3u);
  v11 = IORegistryEntrySearchCFProperty(v6, "IOService", @"BackSuperWideCameraStreaming", v7, 3u);
  if (v8)
  {
    CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
  }

  if (v9)
  {
    CFNumberGetValue(v9, kCFNumberSInt32Type, &v17 + 4);
  }

  if (v10)
  {
    CFNumberGetValue(v10, kCFNumberSInt32Type, &v17);
  }

  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberSInt32Type, &v16);
    v12 = v16;
  }

  else
  {
    v12 = 0;
  }

  return (HIDWORD(v17) | valuePtr | v17 | v12) != 0;
}

void disconnect(xpc_connection_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    xpc_connection_set_event_handler(v2, &__block_literal_global);
    xpc_connection_cancel(*a1);
    xpc_release(*a1);
    *a1 = 0;
  }
}

void __ApplePhotonDetectorServicesGetLuxAsync_block_invoke_26(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x245CD4080](a2) == MEMORY[0x277D86468])
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, *(*(*(*(a1 + 32) + 8) + 24) + 40), &length);
    if (data)
    {
      v9 = length;
      if (length == 3680)
      {
        v6 = *(data + 2);
        v7 = *(data + 3);
        v4 = *(data + 2);
        v5 = *(data + 24);
        v10 = *(data + 7);
LABEL_14:
        *(*(*(a1 + 40) + 8) + 24) = v10;
        goto LABEL_15;
      }

      v6 = 0.0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v29 = "ApplePhotonDetectorServicesGetLuxAsync_block_invoke";
        v30 = 2048;
        *v31 = v9;
        *&v31[8] = 2048;
        v32 = 3680;
        v11 = MEMORY[0x277D86220];
        v12 = "%s: Received reply with unexpected length %lu. Expected %lu\n";
        v13 = 32;
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0.0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v29 = "ApplePhotonDetectorServicesGetLuxAsync_block_invoke";
        v11 = MEMORY[0x277D86220];
        v12 = "%s: Could not get the required data\n";
        v13 = 12;
LABEL_12:
        _os_log_impl(&dword_240F08000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
      }
    }

    v4 = 0;
    v5 = 0;
    v10 = -536870209;
    v7 = 0.0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "ApplePhotonDetectorServicesGetLuxAsync_block_invoke";
    _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received a response of an unknown type\n", buf, 0xCu);
  }

  v4 = 0;
  v5 = 0;
  *(*(*(a1 + 40) + 8) + 24) = -536870199;
  v6 = 0.0;
  v7 = 0.0;
LABEL_15:
  if (!*(*(*(*(a1 + 32) + 8) + 24) + 88))
  {
    goto LABEL_33;
  }

  v14 = *(a1 + 64);
  v15 = *(*(a1 + 48) + 8);
  v16 = *(*(*(a1 + 56) + 8) + 24);
  v17 = *v16;
  v18 = *(v14 + 36);
  v19 = v18 - *v16;
  if (v18 >= *v16)
  {
    v21 = 0;
    v20 = *(*(*(a1 + 40) + 8) + 24);
    if (v20)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v6;
    }

    if (v20)
    {
      v4 = 0;
    }

    *(*v14 + 4 * v19) = v22;
    *(*(v14 + 16) + 8 * v19) = v4;
    if (v20)
    {
      v7 = 0.0;
    }

    *(*(v14 + 8) + 4 * v19) = v7;
    if (v20)
    {
      v5 = 0;
    }

    *(*(v14 + 24) + v19) = v5;
    *v16 = v17 - 1;
    if (v17 != 1)
    {
      goto LABEL_32;
    }

    v21 = 1;
  }

  else
  {
    v20 = -536870168;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v29 = "UpdateLuxInfo";
      v30 = 1024;
      *v31 = v17;
      *&v31[4] = 1024;
      *&v31[6] = v18;
      _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: currentCount is greater than the number of samples requested, currentCount = %d, numSamples = %d\n", buf, 0x18u);
    }

    v21 = 0;
  }

  *(v14 + 32) = v20;
LABEL_32:
  *(v15 + 24) = v21;
LABEL_33:
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v23 = *(a1 + 72);
    if (v23)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 0x40000000;
      v26[2] = __ApplePhotonDetectorServicesGetLuxAsync_block_invoke_27;
      v26[3] = &__block_descriptor_tmp_28;
      v24 = *(a1 + 64);
      v26[4] = v23;
      v26[5] = v24;
      v25 = *(a1 + 80);
      v26[6] = *(a1 + 88);
      dispatch_async(v25, v26);
      dispatch_release(*(a1 + 80));
    }

    disconnectFromDaemon(*(*(*(a1 + 32) + 8) + 24));
    free(*(*(*(a1 + 56) + 8) + 24));
  }
}

xpc_object_t sendSynchronousXpcMsgWithReply()
{
  v0 = MEMORY[0x28223BE20]();
  *&v28[3329] = *MEMORY[0x277D85DE8];
  if (*v0)
  {
    v4 = v3;
    v5 = v2;
    v6 = v1;
    v7 = v0;
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = v8;
      if (v5 != 1)
      {
        if (v5 != 2)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            bytes = 136315138;
            *v28 = "sendSynchronousXpcMsgWithReply";
            _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Unexpected property type, returning\n", &bytes, 0xCu);
          }

          v12 = 0;
          goto LABEL_41;
        }

        bzero(&bytes, 0xE60uLL);
        bytes = v6;
        xpc_dictionary_set_uint64(v9, v7[3], 2uLL);
        xpc_dictionary_set_data(v9, v7[4], &bytes, 0xE60uLL);
LABEL_40:
        v12 = xpc_connection_send_message_with_reply_sync(*v7, v9);
LABEL_41:
        xpc_release(v9);
        return v12;
      }

      v13 = 13320;
      bzero(&bytes, 0x3408uLL);
      bytes = v6;
      v14 = *(v7 + 4);
      v15 = v14 == 0;
      v16 = v14 <= 0;
      v17 = 13176;
      if (!v15)
      {
        v17 = 0;
      }

      if (v16)
      {
        v13 = v17;
      }

      if (v6 > 207)
      {
        if (v6 == 208)
        {
          xpc_dictionary_set_uint64(v9, v7[3], 1uLL);
          xpc_dictionary_set_data(v9, v7[4], &bytes, v13);
          goto LABEL_40;
        }

        if (v6 == 211)
        {
          if (v4)
          {
            v23 = *(v4 + 24);
            v22 = (v4 + 24);
            *&v28[1] = *(v22 - 1);
            *&v28[5] = v23;
            xpc_dictionary_set_uint64(v9, v7[3], 1uLL);
            xpc_dictionary_set_data(v9, v7[4], &bytes, v13);
            xpc_dictionary_set_string(v9, v7[8], *&v28[1]);
            xpc_dictionary_set_data(v9, v7[9], *&v28[3], *v22);
            goto LABEL_40;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          v25 = 136315138;
          v26 = "sendSynchronousXpcMsgWithReply";
          v18 = MEMORY[0x277D86220];
          v19 = "%s: Missing property information to set, returning\n";
          goto LABEL_39;
        }

        if (v6 != 212)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v6 == 105)
        {
          v28[1] = *(v4 + 8);
          xpc_dictionary_set_uint64(v9, v7[3], 1uLL);
          xpc_dictionary_set_data(v9, v7[4], &bytes, v13);
          goto LABEL_40;
        }

        if (v6 != 204 && v6 != 207)
        {
LABEL_21:
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          v25 = 136315138;
          v26 = "sendSynchronousXpcMsgWithReply";
          v18 = MEMORY[0x277D86220];
          v19 = "%s: Unhandled property\n";
LABEL_39:
          _os_log_impl(&dword_240F08000, v18, OS_LOG_TYPE_DEFAULT, v19, &v25, 0xCu);
          goto LABEL_40;
        }
      }

      if (v4)
      {
        v21 = *(v4 + 16);
        v20 = (v4 + 16);
        *&v28[1] = *(v20 - 1);
        *&v28[3] = v21;
        xpc_dictionary_set_uint64(v9, v7[3], 1uLL);
        xpc_dictionary_set_data(v9, v7[4], &bytes, v13);
        xpc_dictionary_set_data(v9, v7[6], *&v28[1], *v20);
        xpc_dictionary_set_uint64(v9, v7[7], *&v28[3]);
        goto LABEL_40;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      v25 = 136315138;
      v26 = "sendSynchronousXpcMsgWithReply";
      v18 = MEMORY[0x277D86220];
      v19 = "%s: Missing property information to set, returning\n";
      goto LABEL_39;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      bytes = 136315138;
      *v28 = "sendSynchronousXpcMsgWithReply";
      v10 = MEMORY[0x277D86220];
      v11 = "%s: Could not create dictionary, exiting\n";
      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    bytes = 136315138;
    *v28 = "sendSynchronousXpcMsgWithReply";
    v10 = MEMORY[0x277D86220];
    v11 = "%s: Connection is invalid, exiting \n";
LABEL_10:
    _os_log_impl(&dword_240F08000, v10, OS_LOG_TYPE_DEFAULT, v11, &bytes, 0xCu);
  }

  return 0;
}

uint64_t ApplePhotonDetectorServicesGetGlobalCorrectionFactor(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x7802000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  memset(v21, 0, sizeof(v21));
  if (a1)
  {
    v2 = connect(v21, "com.apple.applephotondetectorservicesqueue");
    if (v2)
    {
      goto LABEL_18;
    }

    v3 = v17[5];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __ApplePhotonDetectorServicesGetGlobalCorrectionFactor_block_invoke;
    handler[3] = &unk_278CBC470;
    handler[4] = &v16;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_activate(v17[5]);
    v4 = sendSynchronousXpcMsgWithReply();
    v5 = v4;
    if (v4)
    {
      if (MEMORY[0x245CD4080](v4) == MEMORY[0x277D86468])
      {
        length = 0;
        data = xpc_dictionary_get_data(v5, v17[9], &length);
        v10 = length;
        if (length == 3680)
        {
          v2 = 0;
          *a1 = data[1];
        }

        else
        {
          v2 = 3758097087;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v23 = "ApplePhotonDetectorServicesGetGlobalCorrectionFactor";
            v24 = 2048;
            v25 = v10;
            v26 = 2048;
            v27 = 3680;
            v6 = MEMORY[0x277D86220];
            v7 = "%s: Received reply with unexpected length %lu. Expected %lu\n";
            v8 = 32;
            goto LABEL_16;
          }
        }
      }

      else
      {
        v2 = 3758097097;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v23 = "ApplePhotonDetectorServicesGetGlobalCorrectionFactor";
          v6 = MEMORY[0x277D86220];
          v7 = "%s: Received an unexpected event\n";
          v8 = 12;
LABEL_16:
          _os_log_impl(&dword_240F08000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, v8);
        }
      }

      xpc_release(v5);
      goto LABEL_18;
    }

    v2 = 3758097087;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "ApplePhotonDetectorServicesGetGlobalCorrectionFactor";
      _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Did not receive a reply from daemon\n", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "ApplePhotonDetectorServicesGetGlobalCorrectionFactor";
      _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Invalid arguments, exiting\n", buf, 0xCu);
    }

    v2 = 3758096385;
  }

LABEL_18:
  v11 = v17[6];
  if (v11)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = __ApplePhotonDetectorServicesGetGlobalCorrectionFactor_block_invoke_2;
    v13[3] = &unk_278CBC498;
    v13[4] = &v16;
    dispatch_sync(v11, v13);
    dispatch_release(v17[6]);
    v17[6] = 0;
  }

  _Block_object_dispose(&v16, 8);
  return v2;
}

void sub_240F0A418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  v3 = *(a2 + 72);
  v4 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v4;
  *(a1 + 72) = v3;
  *(a1 + 56) = result;
  return result;
}

void __ApplePhotonDetectorServicesGetGlobalCorrectionFactor_block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x245CD4080](a2) == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F8])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "ApplePhotonDetectorServicesGetGlobalCorrectionFactor_block_invoke";
        v4 = MEMORY[0x277D86220];
        v5 = "%s: Received error XPC_ERROR_CONNECTION_INVALID\n";
LABEL_11:
        _os_log_impl(&dword_240F08000, v4, OS_LOG_TYPE_DEFAULT, v5, &v6, 0xCu);
      }
    }

    else
    {
      if (a2 != MEMORY[0x277D863F0])
      {
        if (a2 != MEMORY[0x277D86420] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        v6 = 136315138;
        v7 = "ApplePhotonDetectorServicesGetGlobalCorrectionFactor_block_invoke";
        v4 = MEMORY[0x277D86220];
        v5 = "%s: Received error XPC_ERROR_TERMINATION_IMMINENT\n";
        goto LABEL_11;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "ApplePhotonDetectorServicesGetGlobalCorrectionFactor_block_invoke";
        v4 = MEMORY[0x277D86220];
        v5 = "%s: Received error XPC_ERROR_CONNECTION_INTERRUPTED\n";
        goto LABEL_11;
      }
    }

LABEL_12:
    disconnect((*(*(a1 + 32) + 8) + 40));
  }
}

void ApplePhotonDetectorServicesGetLux(dispatch_object_t object, uint64_t *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  if (!object || !a2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = "ApplePhotonDetectorServicesGetLux";
    v20 = MEMORY[0x277D86220];
    v21 = "%s: Invalid arguments, exiting\n";
    goto LABEL_25;
  }

  if (!*(a2 + 36))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = "ApplePhotonDetectorServicesGetLux";
    v20 = MEMORY[0x277D86220];
    v21 = "%s: Error! Client requested 0 samples. Exiting\n";
LABEL_25:
    _os_log_impl(&dword_240F08000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    return;
  }

  v4 = *a2;
  if ((!*a2 || !a2[2] || !a2[1]) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = a2[1];
    v5 = a2[2];
    LODWORD(buf[0]) = 136315906;
    *(buf + 4) = "ApplePhotonDetectorServicesGetLux";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v4;
    HIWORD(buf[2]) = 2048;
    buf[3] = v5;
    LOWORD(buf[4]) = 2048;
    *(&buf[4] + 2) = v6;
    _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: lux samples = %p, abs time = %p, gains = %p\n", buf, 0x2Au);
  }

  if (!a2[3] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = "ApplePhotonDetectorServicesGetLux";
    _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Memory for coexFlags not allocated by the client\n", buf, 0xCu);
  }

  dispatch_retain(object);
  v7 = malloc_type_calloc(*(a2 + 36), 4uLL, 0x100004052888210uLL);
  v8 = malloc_type_calloc(*(a2 + 36), 4uLL, 0x100004052888210uLL);
  v9 = malloc_type_calloc(*(a2 + 36), 8uLL, 0x100004000313F17uLL);
  v10 = malloc_type_calloc(*(a2 + 36), 1uLL, 0x100004077774924uLL);
  v45 = 0;
  v46 = &v45;
  v47 = 0x7802000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  bzero(buf, 0xE60uLL);
  memset(v50, 0, sizeof(v50));
  if (!v7 || !v9 || !v8)
  {
    v11 = -536870211;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *v53 = 136315138;
    v54 = "ApplePhotonDetectorServicesGetLux";
    v22 = MEMORY[0x277D86220];
    v23 = "%s: Could not allocate memory to store lux information\n";
LABEL_30:
    _os_log_impl(&dword_240F08000, v22, OS_LOG_TYPE_DEFAULT, v23, v53, 0xCu);
    goto LABEL_31;
  }

  if (!v10)
  {
    v11 = -536870211;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *v53 = 136315138;
    v54 = "ApplePhotonDetectorServicesGetLux";
    v22 = MEMORY[0x277D86220];
    v23 = "%s: Could not allocate memory to store coex flags information\n";
    goto LABEL_30;
  }

  v11 = connect(v50, "com.apple.applephotondetectorservicesqueue");
  if (!v11)
  {
    v12 = v46[5];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __ApplePhotonDetectorServicesGetLux_block_invoke;
    handler[3] = &unk_278CBC4E0;
    handler[4] = &v45;
    handler[5] = object;
    handler[6] = a2;
    xpc_connection_set_event_handler(v12, handler);
    xpc_connection_activate(v46[5]);
    v13 = v46;
    v14 = sendSynchronousXpcMsgWithReply();
    v15 = v14;
    if (!v14)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v53 = 136315138;
        v54 = "isIspPowered";
        _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Did not receive a reply from daemon\n", v53, 0xCu);
      }

      goto LABEL_59;
    }

    if (MEMORY[0x245CD4080](v14) == MEMORY[0x277D86468])
    {
      length = 0;
      data = xpc_dictionary_get_data(v15, v13[9], &length);
      v28 = length;
      if (length == 3680)
      {
        v16 = data[8];
        goto LABEL_54;
      }

      v16 = 0;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_54:
        xpc_release(v15);
        if (v16)
        {
          if (*(a2 + 36) <= 4u)
          {
            v29 = sendSynchronousXpcMsgWithReply();
            v25 = v29;
            v11 = -536870209;
            if (v29)
            {
              if (MEMORY[0x245CD4080](v29) != MEMORY[0x277D86468])
              {
LABEL_58:
                LOBYTE(v24) = 0;
LABEL_67:
                v11 = 0;
                goto LABEL_33;
              }

              length = 0;
              v33 = xpc_dictionary_get_data(v25, v46[9], &length);
              v34 = length;
              if (length == 3680)
              {
                memcpy(buf, v33, sizeof(buf));
                if ((buf[13] & 0x100000000) != 0)
                {
                  if (*(a2 + 36))
                  {
                    v24 = 0;
                    v35 = buf[13];
                    do
                    {
                      v36 = &buf[3 * v35 + 1];
                      v7[v24] = *v36;
                      v9[v24] = v36[1];
                      v8[v24] = *(v36 + 1);
                      v10[v24] = *(v36 + 16);
                      v35 = (v35 + 1) & 3;
                      ++v24;
                    }

                    while (v24 < *(a2 + 36));
                    v11 = 0;
                    goto LABEL_33;
                  }

                  goto LABEL_58;
                }

                v11 = -536870184;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v53 = 136315138;
                  v54 = "ApplePhotonDetectorServicesGetLux";
                  v37 = MEMORY[0x277D86220];
                  v38 = "%s: lux cache is not ready with valid data\n";
                  v39 = 12;
                  goto LABEL_85;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *v53 = 136315650;
                v54 = "ApplePhotonDetectorServicesGetLux";
                v55 = 2048;
                v56 = v34;
                v57 = 2048;
                v58 = 3680;
                v37 = MEMORY[0x277D86220];
                v38 = "%s: Received reply with unexpected length %lu. Expected %lu\n";
                v39 = 32;
LABEL_85:
                _os_log_impl(&dword_240F08000, v37, OS_LOG_TYPE_DEFAULT, v38, v53, v39);
              }
            }

            LOBYTE(v24) = 0;
            goto LABEL_33;
          }

          goto LABEL_60;
        }

LABEL_59:
        if (!*(a2 + 36))
        {
          LOBYTE(v24) = 0;
          v25 = 0;
          goto LABEL_67;
        }

LABEL_60:
        v24 = 0;
        while (1)
        {
          v30 = sendSynchronousXpcMsgWithReply();
          v25 = v30;
          if (!v30)
          {
            break;
          }

          if (MEMORY[0x245CD4080](v30) != MEMORY[0x277D86468])
          {
            v11 = -536870199;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v53 = 136315138;
              v54 = "ApplePhotonDetectorServicesGetLux";
              _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received an unexpected event\n", v53, 0xCu);
            }

            goto LABEL_33;
          }

          length = 0;
          v31 = xpc_dictionary_get_data(v25, v46[9], &length);
          v32 = length;
          if (length != 3680)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v53 = 136315650;
              v54 = "ApplePhotonDetectorServicesGetLux";
              v55 = 2048;
              v56 = v32;
              v57 = 2048;
              v58 = 3680;
              _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received reply with unexpected length %lu. Expected %lu\n", v53, 0x20u);
            }

            v11 = -536870209;
            goto LABEL_33;
          }

          memcpy(buf, v31, sizeof(buf));
          v7[v24] = buf[1];
          v9[v24] = buf[2];
          v8[v24] = HIDWORD(buf[1]);
          v11 = HIDWORD(buf[3]);
          v10[v24] = buf[3];
          xpc_release(v25);
          if (++v24 >= *(a2 + 36))
          {
            goto LABEL_32;
          }
        }

        v11 = -536870209;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v53 = 136315138;
          v54 = "ApplePhotonDetectorServicesGetLux";
          _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Did not receive a reply from daemon\n", v53, 0xCu);
        }

        goto LABEL_32;
      }

      *v53 = 136315650;
      v54 = "isIspPowered";
      v55 = 2048;
      v56 = v28;
      v57 = 2048;
      v58 = 3680;
      v17 = MEMORY[0x277D86220];
      v18 = "%s: Received reply with unexpected length %lu. Expected %lu\n";
      v19 = 32;
    }

    else
    {
      v16 = 0;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      *v53 = 136315138;
      v54 = "isIspPowered";
      v17 = MEMORY[0x277D86220];
      v18 = "%s: Received an unexpected event\n";
      v19 = 12;
    }

    _os_log_impl(&dword_240F08000, v17, OS_LOG_TYPE_DEFAULT, v18, v53, v19);
    v16 = 0;
    goto LABEL_54;
  }

LABEL_31:
  LOBYTE(v24) = 0;
LABEL_32:
  v25 = 0;
LABEL_33:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __ApplePhotonDetectorServicesGetLux_block_invoke_8;
  block[3] = &__block_descriptor_tmp_9;
  v43 = v24;
  block[4] = a2;
  block[5] = v7;
  block[6] = v8;
  block[7] = v9;
  block[8] = v10;
  v42 = v11;
  dispatch_sync(object, block);
  if (v25)
  {
    xpc_release(v25);
  }

  v26 = v46[6];
  if (v26)
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 0x40000000;
    v40[2] = __ApplePhotonDetectorServicesGetLux_block_invoke_2;
    v40[3] = &unk_278CBC528;
    v40[4] = &v45;
    dispatch_sync(v26, v40);
    dispatch_release(v46[6]);
    v46[6] = 0;
  }

  dispatch_release(object);
  if (v7)
  {
    free(v7);
  }

  if (v9)
  {
    free(v9);
  }

  if (v8)
  {
    free(v8);
  }

  if (v10)
  {
    free(v10);
  }

  _Block_object_dispose(&v45, 8);
}

void sub_240F0B0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ApplePhotonDetectorServicesGetLux_block_invoke(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x245CD4080](a2) == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F8])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v9 = "ApplePhotonDetectorServicesGetLux_block_invoke";
        v4 = MEMORY[0x277D86220];
        v5 = "%s: Received error XPC_ERROR_CONNECTION_INVALID\n";
LABEL_11:
        _os_log_impl(&dword_240F08000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
      }
    }

    else
    {
      if (a2 != MEMORY[0x277D863F0])
      {
        if (a2 != MEMORY[0x277D86420] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        *buf = 136315138;
        v9 = "ApplePhotonDetectorServicesGetLux_block_invoke";
        v4 = MEMORY[0x277D86220];
        v5 = "%s: Received error XPC_ERROR_TERMINATION_IMMINENT\n";
        goto LABEL_11;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v9 = "ApplePhotonDetectorServicesGetLux_block_invoke";
        v4 = MEMORY[0x277D86220];
        v5 = "%s: Received error XPC_ERROR_CONNECTION_INTERRUPTED\n";
        goto LABEL_11;
      }
    }

LABEL_12:
    disconnect((*(a1[4] + 8) + 40));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __ApplePhotonDetectorServicesGetLux_block_invoke_5;
    block[3] = &__block_descriptor_tmp_6;
    v6 = a1[5];
    block[4] = a1[6];
    dispatch_sync(v6, block);
  }
}

uint64_t ApplePhotonDetectorServicesGetCoex(io_iterator_t *a1)
{
  *existing = 0;
  v1 = 3758097097;
  valuePtr = 0;
  if (a1)
  {
    v3 = 0;
    *a1 = 0;
    v4 = *MEMORY[0x277CD2898];
    while (1)
    {
      v5 = IOServiceMatching(off_278CBC548[v3]);
      IOServiceGetMatchingServices(v4, v5, &existing[1]);
      if (existing[1])
      {
        break;
      }

      if (++v3 == 3)
      {
        return 3758097086;
      }
    }

    v9 = IOServiceNameMatching(off_278CBC548[v3]);
    MatchingService = IOServiceGetMatchingService(v4, v9);
    v6 = MatchingService;
    if (MatchingService)
    {
      v11 = *MEMORY[0x277CBECE8];
      v12 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"StrobeState", *MEMORY[0x277CBECE8], 3u);
      v7 = v12;
      if (v12)
      {
        CFNumberGetValue(v12, kCFNumberSInt32Type, existing);
        v13 = IORegistryEntrySearchCFProperty(v6, "IOService", @"LidarState", v11, 3u);
        v8 = v13;
        if (v13)
        {
          CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
          v1 = 0;
          *a1 = existing[0] | (2 * valuePtr);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v1 = 0;
      v7 = 0;
    }

    v8 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v1 = 3758097090;
  }

LABEL_13:
  if (existing[1])
  {
    IOObjectRelease(existing[1]);
    existing[1] = 0;
  }

  if (v6)
  {
    IOObjectRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v1;
}

void __ApplePhotonDetectorServicesGetLuxAsync_block_invoke_20(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x245CD4080](a2) == MEMORY[0x277D86480] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    v4 = 136315394;
    v5 = "ApplePhotonDetectorServicesGetLuxAsync_block_invoke";
    v6 = 2080;
    v7 = string;
    _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received error %s\n", &v4, 0x16u);
  }
}

void __ApplePhotonDetectorServicesGetLuxAsync_block_invoke_22(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x245CD4080](a2);
  bzero(__dst, 0xE60uLL);
  if (v4 == MEMORY[0x277D86468])
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, *(*(*(*(a1 + 32) + 8) + 24) + 40), &length);
    if (data)
    {
      v6 = length;
      if (length == 3680)
      {
        memcpy(__dst, data, sizeof(__dst));
        if ((__dst[13] & 0x100000000) != 0)
        {
          goto LABEL_17;
        }

        v7 = -536870184;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *buf = 136315138;
        v22 = "ApplePhotonDetectorServicesGetLuxAsync_block_invoke";
        v8 = MEMORY[0x277D86220];
        v9 = "%s: lux cache is not ready with valid data\n";
        goto LABEL_12;
      }

      v7 = -536870209;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = "ApplePhotonDetectorServicesGetLuxAsync_block_invoke";
        v23 = 2048;
        v24 = v6;
        v25 = 2048;
        v26 = 3680;
        v8 = MEMORY[0x277D86220];
        v9 = "%s: Received reply with unexpected length %lu. Expected %lu\n";
        v10 = 32;
        goto LABEL_15;
      }
    }

    else
    {
      v7 = -536870209;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = "ApplePhotonDetectorServicesGetLuxAsync_block_invoke";
        v8 = MEMORY[0x277D86220];
        v9 = "%s: Could not get the required data\n";
LABEL_12:
        v10 = 12;
LABEL_15:
        _os_log_impl(&dword_240F08000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
      }
    }

LABEL_16:
    *(*(*(a1 + 40) + 8) + 24) = v7;
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "ApplePhotonDetectorServicesGetLuxAsync_block_invoke";
    _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received a response of an unknown type\n", buf, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = -536870199;
LABEL_17:
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v11 = *(a1 + 48);
    *(v11 + 36) = 0;
  }

  else
  {
    v11 = *(a1 + 48);
    if (*(v11 + 36))
    {
      v12 = 0;
      v13 = __dst[13];
      do
      {
        v14 = &__dst[3 * v13 + 1];
        v15 = *(v14 + 1);
        *(*v11 + 4 * v12) = *v14;
        *(*(v11 + 16) + 8 * v12) = v14[1];
        *(*(v11 + 24) + v12) = *(v14 + 16);
        v11 = *(a1 + 48);
        *(*(v11 + 8) + 4 * v12) = v15;
        v13 = (v13 + 1) & 3;
        ++v12;
      }

      while (v12 < *(v11 + 36));
    }
  }

  *(v11 + 32) = *(*(*(a1 + 40) + 8) + 24);
  v16 = *(a1 + 56);
  if (v16)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 0x40000000;
    v18[2] = __ApplePhotonDetectorServicesGetLuxAsync_block_invoke_23;
    v18[3] = &__block_descriptor_tmp_24;
    v18[4] = v16;
    v18[5] = v11;
    v17 = *(a1 + 64);
    v18[6] = *(a1 + 72);
    dispatch_async(v17, v18);
    dispatch_release(*(a1 + 64));
  }

  disconnectFromDaemon(*(*(*(a1 + 32) + 8) + 24));
}

uint64_t ApplePhotonDetectorServicesOpen(dispatch_object_t **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x1070040F3C029C4uLL);
  if (!v2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v7 = 136315394;
    v8 = "ApplePhotonDetectorServicesOpen";
    v9 = 1024;
    v10 = 894;
    v5 = MEMORY[0x277D86220];
    v6 = "%s: %d: Could not open an interface to APDS\n";
LABEL_8:
    _os_log_impl(&dword_240F08000, v5, OS_LOG_TYPE_DEFAULT, v6, &v7, 0x12u);
LABEL_9:
    if (*v2)
    {
      dispatch_release(*v2);
    }

    goto LABEL_11;
  }

  v3 = dispatch_queue_create("com.apple.applephotondetectorservicesprivatequeue", 0);
  *v2 = v3;
  if (!v3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:
      free(v2);
      v2 = 0;
      result = 3758097085;
      goto LABEL_12;
    }

    v7 = 136315394;
    v8 = "ApplePhotonDetectorServicesOpen";
    v9 = 1024;
    v10 = 902;
    v5 = MEMORY[0x277D86220];
    v6 = "%s: %d: Could not create a serial queue\n";
    goto LABEL_8;
  }

  result = 0;
LABEL_12:
  *a1 = v2;
  return result;
}

uint64_t ApplePhotonDetectorServicesClose(NSObject **a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      dispatch_release(v2);
    }

    free(a1);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = "ApplePhotonDetectorServicesClose";
      v6 = 1024;
      v7 = 937;
      v8 = 2048;
      v9 = 0;
      _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %d: Invalid handle provided %p\n", &v4, 0x1Cu);
    }

    return 3758096385;
  }
}

uint64_t ApplePhotonDetectorServicesSetCILDutyCycle()
{
  v0 = MEMORY[0x28223BE20]();
  v16 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = &v6;
  v8 = 0x7802000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  bzero(v14, 0x3408uLL);
  memset(v11, 0, sizeof(v11));
  v1 = connect(v11, "com.apple.applephotondetectorservicesqueue");
  if (!v1)
  {
    xpc_connection_set_event_handler(v7[5], &__block_literal_global_33);
    xpc_connection_activate(v7[5]);
    v15 = v0;
    v2 = sendSynchronousXpcMsgWithReply();
    if (v2)
    {
      xpc_release(v2);
      v1 = 0;
    }

    else
    {
      v1 = 3758097087;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v13 = "ApplePhotonDetectorServicesSetCILDutyCycle";
        _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Did not receive a reply from daemon\n", buf, 0xCu);
      }
    }
  }

  v3 = v7[6];
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = __ApplePhotonDetectorServicesSetCILDutyCycle_block_invoke_34;
    v5[3] = &unk_278CBC660;
    v5[4] = &v6;
    dispatch_sync(v3, v5);
    dispatch_release(v7[6]);
    v7[6] = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v1;
}

void sub_240F0BE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ApplePhotonDetectorServicesSetCILDutyCycle_block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x245CD4080](a2) == MEMORY[0x277D86480] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    v4 = 136315394;
    v5 = "ApplePhotonDetectorServicesSetCILDutyCycle_block_invoke";
    v6 = 2080;
    v7 = string;
    _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received error %s\n", &v4, 0x16u);
  }
}

uint64_t ApplePhotonDetectorServicesConfigureCILDutyCycle()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v12 = *MEMORY[0x277D85DE8];
  bzero(v10, 0x3408uLL);
  if (v3)
  {
    v11 = v2;
    v4 = sendSynchronousXpcMsgWithReply();
    if (v4)
    {
      v5 = v4;
      if (MEMORY[0x245CD4080]() == MEMORY[0x277D86468])
      {
        v6 = 0;
      }

      else
      {
        v6 = 3758097097;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315138;
          v9 = "ApplePhotonDetectorServicesConfigureCILDutyCycle";
          _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received an unexpected event\n", &v8, 0xCu);
        }
      }

      xpc_release(v5);
    }

    else
    {
      v6 = 3758097087;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "ApplePhotonDetectorServicesConfigureCILDutyCycle";
        _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Did not receive a reply from daemon\n", &v8, 0xCu);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "ApplePhotonDetectorServicesConfigureCILDutyCycle";
      _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Invalid pointer to the connection object\n", &v8, 0xCu);
    }

    return 3758096385;
  }

  return v6;
}

uint64_t ApplePhotonDetectorServicesConfigureCILDutyCycleAsync()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v11 = *MEMORY[0x277D85DE8];
  bzero(bytes, 0x3408uLL);
  if (v3)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    if (v4)
    {
      v5 = v4;
      bytes[2] = v2;
      bytes[0] = 105;
      xpc_dictionary_set_uint64(v4, *(v3 + 24), 1uLL);
      xpc_dictionary_set_data(v5, *(v3 + 32), bytes, 0x3408uLL);
      xpc_connection_send_message(*v3, v5);
      xpc_release(v5);
      return 0;
    }

    else
    {
      v6 = 3758097085;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "ApplePhotonDetectorServicesConfigureCILDutyCycleAsync";
        _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Could not create dictionary, exiting\n", &v8, 0xCu);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "ApplePhotonDetectorServicesConfigureCILDutyCycleAsync";
      _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Invalid pointer to the connection object\n", &v8, 0xCu);
    }

    return 3758096385;
  }

  return v6;
}

int64_t ApplePhotonDetectorServicesGetCILDutyCycleRange(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  bzero(__dst, 0xE60uLL);
  if (a1)
  {
    v6 = sendSynchronousXpcMsgWithReply();
    if (v6)
    {
      v7 = v6;
      if (MEMORY[0x245CD4080]() == MEMORY[0x277D86468])
      {
        length = 0;
        data = xpc_dictionary_get_data(v7, *(a1 + 32), &length);
        v13 = length;
        if (length == 3680)
        {
          v14 = data;
          int64 = xpc_dictionary_get_int64(v7, "H16ISPServicesRemoteReturnKey");
          if (!int64)
          {
            memcpy(__dst, v14, length);
            v16 = v20;
            *a2 = v20;
            v17 = v21;
            *a3 = v21;
            if (v16 < v17)
            {
              int64 = 0;
              goto LABEL_18;
            }

            int64 = 3758097097;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_18;
            }

            *buf = 136315650;
            v23 = "ApplePhotonDetectorServicesGetCILDutyCycleRange";
            v24 = 1024;
            *v25 = v16;
            *&v25[4] = 1024;
            *&v25[6] = v17;
            v9 = MEMORY[0x277D86220];
            v10 = "%s: Error: Received incorrect duty cycle ranges min (%u), max (%u)\n";
            v11 = 24;
            goto LABEL_17;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v23 = "ApplePhotonDetectorServicesGetCILDutyCycleRange";
            v24 = 1024;
            *v25 = int64;
            v9 = MEMORY[0x277D86220];
            v10 = "%s: Received return code 0x%x\n";
            v11 = 18;
            goto LABEL_17;
          }
        }

        else
        {
          int64 = 3758097087;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v23 = "ApplePhotonDetectorServicesGetCILDutyCycleRange";
            v24 = 2048;
            *v25 = v13;
            *&v25[8] = 2048;
            v26 = 3680;
            v9 = MEMORY[0x277D86220];
            v10 = "%s: Received reply with unexpected length %lu. Expected %lu\n";
            v11 = 32;
            goto LABEL_17;
          }
        }
      }

      else
      {
        int64 = 3758097097;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v23 = "ApplePhotonDetectorServicesGetCILDutyCycleRange";
          v9 = MEMORY[0x277D86220];
          v10 = "%s: Received an unexpected event\n";
          v11 = 12;
LABEL_17:
          _os_log_impl(&dword_240F08000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, v11);
        }
      }

LABEL_18:
      xpc_release(v7);
      return int64;
    }

    int64 = 3758097087;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "ApplePhotonDetectorServicesGetCILDutyCycleRange";
      _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Did not receive a reply from the daemon\n", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "ApplePhotonDetectorServicesGetCILDutyCycleRange";
      _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Invalid pointer to the connection object\n", buf, 0xCu);
    }

    return 3758096385;
  }

  return int64;
}

uint64_t ApplePhotonDetectorServicesSetupConnection(xpc_connection_t **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x1070040327A9AA5uLL);
  if (v2)
  {
    v3 = v2;
    v4 = connect(v2, "com.apple.applephotondetectorservicesqueue");
    if (!v4)
    {
      xpc_connection_set_event_handler(*v3, &__block_literal_global_39);
      xpc_connection_activate(*v3);
      *a1 = v3;
      return v4;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "ApplePhotonDetectorServicesSetupConnection";
      v11 = 1024;
      v12 = v4;
      v5 = MEMORY[0x277D86220];
      v6 = "%s: Could not connect to the daemon, ret = 0x%x\n";
      v7 = 18;
LABEL_7:
      _os_log_impl(&dword_240F08000, v5, OS_LOG_TYPE_DEFAULT, v6, &v9, v7);
    }
  }

  else
  {
    v4 = 3758097085;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "ApplePhotonDetectorServicesSetupConnection";
      v5 = MEMORY[0x277D86220];
      v6 = "%s: Could not create an xpc connection object\n";
      v7 = 12;
      goto LABEL_7;
    }
  }

  return v4;
}

void __ApplePhotonDetectorServicesSetupConnection_block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x245CD4080](a2) == MEMORY[0x277D86480] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    v4 = 136315394;
    v5 = "ApplePhotonDetectorServicesSetupConnection_block_invoke";
    v6 = 2080;
    v7 = string;
    _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received error %s\n", &v4, 0x16u);
  }
}

uint64_t ApplePhotonDetectorServicesTearDownConnection(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __ApplePhotonDetectorServicesTearDownConnection_block_invoke;
      block[3] = &__block_descriptor_tmp_40;
      block[4] = a1;
      dispatch_sync(v2, block);
      dispatch_release(*(a1 + 1));
    }

    free(a1);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = "ApplePhotonDetectorServicesTearDownConnection";
      _os_log_impl(&dword_240F08000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Invalid pointer to the connection object\n", buf, 0xCu);
    }

    return 3758096385;
  }
}