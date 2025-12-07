void _btServiceEventCallback(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v10 = objc_autoreleasePoolPush();
  v11 = +[BluetoothManager sharedInstance];
  v12 = [(BluetoothManager *)v11 addDeviceIfNeeded:a1];
  v14 = v12;
  if (a2 != -1 && (a2 & 0x40) != 0)
  {
    goto LABEL_3;
  }

  if (a3 == 2)
  {
    switch(a2)
    {
      case -1:
        if (a4 != 701 || a5)
        {
          goto LABEL_3;
        }

        [v12 _clearName];
        v30 = @"BluetoothDeviceUpdatedNotification";
        goto LABEL_66;
      case 16:
        if (a4 == 201 && !a5)
        {
          v33 = sharedBluetoothManagerLogComponent(v12, v13);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            _btServiceEventCallback_cold_1();
          }
        }

        goto LABEL_3;
      case 2:
        if (a4 != 303 || a5)
        {
          goto LABEL_3;
        }

        v32 = sharedBluetoothManagerLogComponent(v12, v13);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          _btServiceEventCallback_cold_2();
        }

        break;
      case 1:
        v24 = sharedBluetoothManagerLogComponent(v12, v13);
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
        if (v25)
        {
          _btServiceEventCallback_cold_3();
        }

        if (a4 == 101 && !a5)
        {
          v27 = sharedBluetoothManagerLogComponent(v25, v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            _btServiceEventCallback_cold_10();
          }

          v28 = v11;
          v29 = 1;
LABEL_55:
          [(BluetoothManager *)v28 setAudioConnected:v29];
          goto LABEL_3;
        }

        if (a4 == 102 && !a5)
        {
          v34 = sharedBluetoothManagerLogComponent(v25, v26);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            _btServiceEventCallback_cold_9();
          }

          v28 = v11;
          v29 = 0;
          goto LABEL_55;
        }

        if (a4 == 103 && !a5)
        {
          v36 = sharedBluetoothManagerLogComponent(v25, v26);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            _btServiceEventCallback_cold_8();
          }

          v30 = @"BluetoothHandsfreeInitiatedVoiceCommand";
          goto LABEL_66;
        }

        if (a4 == 104 && !a5)
        {
          v37 = sharedBluetoothManagerLogComponent(v25, v26);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            _btServiceEventCallback_cold_7();
          }

          v30 = @"BluetoothHandsfreeEndedVoiceCommand";
          goto LABEL_66;
        }

        if (a4 != 303 || a5)
        {
          if (a4 != 702 || a5)
          {
            if (a4 != 703 || a5)
            {
              goto LABEL_3;
            }

            v40 = sharedBluetoothManagerLogComponent(v25, v26);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              _btServiceEventCallback_cold_4();
            }

            v30 = @"BluetoothHighPowerDisabled";
          }

          else
          {
            v39 = sharedBluetoothManagerLogComponent(v25, v26);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              _btServiceEventCallback_cold_5();
            }

            v30 = @"BluetoothHighPowerEnabled";
          }

          goto LABEL_66;
        }

        v38 = sharedBluetoothManagerLogComponent(v25, v26);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          _btServiceEventCallback_cold_6();
        }

        break;
      default:
        goto LABEL_3;
    }

    v30 = @"BluetoothDeviceSupportsContactSyncNotification";
    goto LABEL_66;
  }

  if (a3 == 1)
  {
    v19 = [v12 connectedServicesCount];
    if (a4 == 12)
    {
      v21 = v19;
      v22 = sharedBluetoothManagerLogComponent(v19, v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        if (a5)
        {
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed with error %d", a5];
        }

        else
        {
          v23 = @"succeeded";
        }

        *buf = 67109634;
        *&buf[4] = a2;
        *&buf[8] = 2112;
        *&buf[10] = v14;
        *&buf[18] = 2112;
        *&buf[20] = v23;
        _os_log_impl(&dword_241BC5000, v22, OS_LOG_TYPE_INFO, "disconnection to service 0x%08x on device %@ %@", buf, 0x1Cu);
      }

      if (!v21)
      {
        if (a5)
        {
          -[BluetoothManager postNotificationName:object:error:](v11, "postNotificationName:object:error:", @"BluetoothDeviceDisconnectFailedNotification", v14, [MEMORY[0x277CCABB0] numberWithInt:a5]);
          goto LABEL_3;
        }

        v30 = @"BluetoothDeviceDisconnectSuccessNotification";
        goto LABEL_66;
      }
    }
  }

  else
  {
    if (a3)
    {
      goto LABEL_3;
    }

    Name = [v12 _isNameCached];
    if ((Name & 1) == 0)
    {
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      memset(buf, 0, sizeof(buf));
      Name = BTDeviceGetName();
      if (!Name)
      {
        Name = [(BluetoothManager *)v11 postNotificationName:@"BluetoothDeviceUpdatedNotification" object:v14];
      }
    }

    if (a4 != 1)
    {
      if (a4 != 11)
      {
        goto LABEL_3;
      }

      v17 = sharedBluetoothManagerLogComponent(Name, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        if (a5)
        {
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed with error %d", a5];
        }

        else
        {
          v18 = @"succeeded";
        }

        *buf = 67109634;
        *&buf[4] = a2;
        *&buf[8] = 2112;
        *&buf[10] = v14;
        *&buf[18] = 2112;
        *&buf[20] = v18;
        _os_log_impl(&dword_241BC5000, v17, OS_LOG_TYPE_INFO, "connection to service 0x%08x on device %@ %@", buf, 0x1Cu);
      }

      if (a2 == 512)
      {
        [(BluetoothManager *)v11 postNotificationName:@"BluetoothDeviceSupportsMAPClientNotification" object:v14];
      }

      v35 = [v14 getConnectingServiceMask] & ~a2;
      [v14 setConnectingServicemask:v35];
      if (a5)
      {
        if (!v35 && ![v14 connectedServicesCount])
        {
          -[BluetoothManager postNotificationName:object:error:](v11, "postNotificationName:object:error:", @"BluetoothDeviceConnectFailedNotification", v14, [MEMORY[0x277CCABB0] numberWithInt:a5]);
          [(BluetoothManager *)v11 _updateBluetoothState];
        }

        goto LABEL_3;
      }

      v30 = @"BluetoothDeviceConnectSuccessNotification";
LABEL_66:
      [(BluetoothManager *)v11 postNotificationName:v30 object:v14];
      goto LABEL_3;
    }

    v31 = sharedBluetoothManagerLogComponent(Name, v16);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = a2;
      *&buf[8] = 2112;
      *&buf[10] = v14;
      _os_log_impl(&dword_241BC5000, v31, OS_LOG_TYPE_INFO, "attempting to connect to service 0x%08x on device %@", buf, 0x12u);
    }

    [v14 setConnectingServicemask:{objc_msgSend(v14, "getConnectingServiceMask") | a2}];
  }

LABEL_3:
  objc_autoreleasePoolPop(v10);
}

void _btLocalStatusEventCallback(uint64_t a1, int a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[BluetoothManager sharedInstance];
  v6 = v4;
  if (a2 <= 5)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        [(BluetoothManager *)v4 _pairedStatusChanged];
      }

      else
      {
        [(BluetoothManager *)v4 _connectedStatusChanged];
      }
    }

    else if (a2)
    {
      if (a2 == 3)
      {
        [(BluetoothManager *)v4 _connectabilityChanged];
      }
    }

    else
    {
      v7 = sharedBluetoothManagerLogComponent(v4, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "local device power state changed", buf, 2u);
      }

      [(BluetoothManager *)v6 _updateDenylistMode];
      [(BluetoothManager *)v6 _powerChanged];
    }
  }

  else if (a2 > 8)
  {
    switch(a2)
    {
      case 9:
        v8 = sharedBluetoothManagerLogComponent(v4, v5);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          _os_log_impl(&dword_241BC5000, v8, OS_LOG_TYPE_INFO, "local device airplane mode state changed", v9, 2u);
        }

        [(BluetoothManager *)v6 _updateAirplaneModeStatus];
        break;
      case 10:
        [(BluetoothManager *)v4 _updateDenylistMode];
        break;
      case 11:
        [(BluetoothManager *)v4 _notifyFirstDeviceUnlockCompleted];
        break;
    }
  }

  else if ((a2 - 6) >= 2)
  {
    if (a2 == 8)
    {
      [(BluetoothManager *)v4 _advertisingChanged];
    }
  }

  else
  {
    [(BluetoothManager *)v4 _discoveryStateChanged];
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t sharedBluetoothManagerLogComponent(uint64_t a1, uint64_t a2)
{
  if (sharedBluetoothManagerLogComponent_onceToken != -1)
  {
    sharedBluetoothManagerLogComponent_cold_1();
  }

  return sharedBluetoothManagerLogComponent_sharedBTMLog;
}

uint64_t AddressForBTDevice(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  AddressString = BTDeviceGetAddressString();
  if (!AddressString)
  {
    return [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  }

  v3 = sharedBluetoothManagerLogComponent(AddressString, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    AddressForBTDevice_cold_1();
  }

  return 0;
}

os_log_t __sharedBluetoothManagerLogComponent_block_invoke()
{
  result = os_log_create("com.apple.bluetooth", "BluetoothManager");
  sharedBluetoothManagerLogComponent_sharedBTMLog = result;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

BOOL isDebugModeEnabled()
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  if (CFPreferencesGetAppBooleanValue(@"FitTestOptions", @"com.apple.BTServer", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

void _btSessionEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = objc_autoreleasePoolPush();
  v10 = v8;
  if (!(v5 | a2))
  {
    v11 = sharedBluetoothManagerLogComponent(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241BC5000, v11, OS_LOG_TYPE_DEFAULT, "Got a session, lets continue with setup", buf, 2u);
    }

    v12 = [a4 _setup:a1];
    v14 = v12;
    if (v12)
    {
      v15 = sharedBluetoothManagerLogComponent(v12, v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 0;
        v16 = "Sending attached posting BluetoothAvailabilityChangedNotification with availability set to YES";
        v17 = &v25;
LABEL_21:
        _os_log_impl(&dword_241BC5000, v15, OS_LOG_TYPE_DEFAULT, v16, v17, 2u);
      }
    }

    else
    {
      v22 = [a4 _cleanup:1];
      v15 = sharedBluetoothManagerLogComponent(v22, v23);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        v16 = "Session attached posting BluetoothAvailabilityChangedNotification with availability set to NO";
        v17 = v26;
        goto LABEL_21;
      }
    }

    [a4 postNotificationName:@"BluetoothAvailabilityChangedNotification" object:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v14)}];
    [a4 _updateBluetoothState];
    goto LABEL_23;
  }

  if (a2 >= 4)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a2];
  }

  v18 = sharedBluetoothManagerLogComponent(v8, v9);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    _btSessionEventCallback_cold_1();
  }

  v19 = [a4 available];
  if (v19)
  {
    if (!a2)
    {
      v19 = [a4 _updateBluetoothState];
    }

    v21 = sharedBluetoothManagerLogComponent(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_241BC5000, v21, OS_LOG_TYPE_DEFAULT, "Sending BluetoothAvailabilityChangedNotification with availability set to NO", v24, 2u);
    }

    [a4 postNotificationName:@"BluetoothAvailabilityChangedNotification" object:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  }

  [a4 _cleanup:0];
  [a4 _attach];
LABEL_23:
  objc_autoreleasePoolPop(v10);
}

void _btAccessoryEventCallback(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = +[BluetoothManager sharedInstanceQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___btAccessoryEventCallback_block_invoke;
  v11[3] = &__block_descriptor_64_e5_v8__0l;
  v11[4] = a1;
  v11[5] = a3;
  v12 = a2;
  v13 = a4;
  v11[6] = a5;
  dispatch_async(v10, v11);
}

void _btAccessorySetupCommandCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v67 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  v10 = +[BluetoothManager sharedInstance];
  v11 = [(BluetoothManager *)v10 addDeviceIfNeeded:a2];
  v13 = sharedBluetoothManagerLogComponent(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68157954;
    *v64 = a6;
    *&v64[4] = 2096;
    *&v64[6] = a5;
    _os_log_impl(&dword_241BC5000, v13, OS_LOG_TYPE_DEFAULT, "DebugFitTest : Seal received data  %.*P", buf, 0x12u);
  }

  if (a6 == 178)
  {
    v14 = *(a5 + 2);
    v15 = *(a5 + 6);
    v16 = *(a5 + 18);
    v17 = *(a5 + 22);
    v18 = *(a5 + 26);
    v19 = *(a5 + 90);
    v20 = *(a5 + 94);
    v21 = *(a5 + 106);
    v22 = *(a5 + 110);
    v23 = *(a5 + 114);
    v24 = isDebugModeEnabled() || [v11 productId] == 8212;
    v25 = [v11 productId];
    if (v25 == 8228 || v24)
    {
      v18 = v16;
      v17 = v16;
      v23 = v21;
      v22 = v21;
    }

    v28 = sharedBluetoothManagerLogComponent(v25, v26);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v29)
    {
      *buf = 134217984;
      *v64 = v19;
      _os_log_impl(&dword_241BC5000, v28, OS_LOG_TYPE_DEFAULT, "DebugFitTest : Confidence Left : %.6f", buf, 0xCu);
    }

    v31 = sharedBluetoothManagerLogComponent(v29, v30);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (v32)
    {
      *buf = 134217984;
      *v64 = v20;
      _os_log_impl(&dword_241BC5000, v31, OS_LOG_TYPE_DEFAULT, "DebugFitTest : Coherence Left : %.6f", buf, 0xCu);
    }

    v34 = sharedBluetoothManagerLogComponent(v32, v33);
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      *buf = 134217984;
      *v64 = v14;
      _os_log_impl(&dword_241BC5000, v34, OS_LOG_TYPE_DEFAULT, "DebugFitTest : Confidence Right : %.6f", buf, 0xCu);
    }

    v37 = sharedBluetoothManagerLogComponent(v35, v36);
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
    if (v38)
    {
      *buf = 134217984;
      *v64 = v15;
      _os_log_impl(&dword_241BC5000, v37, OS_LOG_TYPE_DEFAULT, "DebugFitTest : Coherence Right : %.6f", buf, 0xCu);
    }

    v40 = sharedBluetoothManagerLogComponent(v38, v39);
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    if (v41)
    {
      *buf = 134218496;
      *v64 = v21;
      *&v64[8] = 2048;
      *&v64[10] = v22;
      v65 = 2048;
      v66 = v23;
      _os_log_impl(&dword_241BC5000, v40, OS_LOG_TYPE_DEFAULT, "DebugFitTest : SealMetricL input : %.6f, %.6f, %.6f", buf, 0x20u);
    }

    v43 = sharedBluetoothManagerLogComponent(v41, v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v64 = v16;
      *&v64[8] = 2048;
      *&v64[10] = v17;
      v65 = 2048;
      v66 = v18;
      _os_log_impl(&dword_241BC5000, v43, OS_LOG_TYPE_DEFAULT, "DebugFitTest : SealMetricR input : %.6f, %.6f, %.6f", buf, 0x20u);
    }

    v44 = log10f(v21);
    v45 = (log10f(v22) * 10.0) + (v44 * 10.0);
    v46 = (v45 + (log10f(v23) * 10.0)) * 0.3333;
    v47 = log10f(v16);
    v48 = (log10f(v17) * 10.0) + (v47 * 10.0);
    v49 = v48 + (log10f(v18) * 10.0);
    v52 = sharedBluetoothManagerLogComponent(v50, v51);
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
    if (v53)
    {
      *buf = 134217984;
      *v64 = v46;
      _os_log_impl(&dword_241BC5000, v52, OS_LOG_TYPE_DEFAULT, "DebugFitTest : SealMetricL %.6f", buf, 0xCu);
    }

    v55 = v49 * 0.3333;
    v56 = sharedBluetoothManagerLogComponent(v53, v54);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v64 = v55;
      _os_log_impl(&dword_241BC5000, v56, OS_LOG_TYPE_DEFAULT, "DebugFitTest : SealMetricR %.6f", buf, 0xCu);
    }

    v62[0] = v11;
    *&v57 = v46;
    v62[1] = [MEMORY[0x277CCABB0] numberWithFloat:{v57, @"device", @"sealLeft"}];
    v61[2] = @"sealRight";
    *&v58 = v55;
    v62[2] = [MEMORY[0x277CCABB0] numberWithFloat:v58];
    v61[3] = @"confidenceLeft";
    *&v59 = v19;
    v62[3] = [MEMORY[0x277CCABB0] numberWithFloat:v59];
    v61[4] = @"confidenceRight";
    *&v60 = v14;
    v62[4] = [MEMORY[0x277CCABB0] numberWithFloat:v60];
    -[BluetoothManager postNotificationName:object:](v10, "postNotificationName:object:", @"BluetoothAccessorySealValueStatusNotification", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:5]);
  }

  objc_autoreleasePoolPop(v9);
}

void ___btAccessoryEventCallback_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = +[BluetoothManager sharedInstance];
  v5 = [(BluetoothManager *)v4 addDeviceIfNeeded:v2];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if (v1 > 13)
    {
      if (v1 > 21)
      {
        if (v1 == 22)
        {
          v19 = sharedBluetoothManagerLogComponent(isKindOfClass, v7);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241BC5000, v19, OS_LOG_TYPE_DEFAULT, "BT_ACCESSORY_AACP_CAPABILITIES_RECEIVED", buf, 2u);
          }

          v8 = @"BluetoothAccessoryAACPCapabilitiesReceived";
          goto LABEL_38;
        }

        if (v1 == 23)
        {
          v16 = sharedBluetoothManagerLogComponent(isKindOfClass, v7);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241BC5000, v16, OS_LOG_TYPE_DEFAULT, "BT_ACCESSORY_SENSOR_STREAMING_FREQUENCY_CHANGED", buf, 2u);
          }

          v8 = @"BluetoothAccessorySensorStreamingFrequencyChanged";
          goto LABEL_38;
        }
      }

      else
      {
        if (v1 == 14)
        {
          v17 = sharedBluetoothManagerLogComponent(isKindOfClass, v7);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241BC5000, v17, OS_LOG_TYPE_DEFAULT, "BT_ACCESSORY_HEADTRACKING_CHANGED", buf, 2u);
          }

          v8 = @"BluetoothAccessibilityHeadTrackChanged";
          goto LABEL_38;
        }

        if (v1 == 15)
        {
          v10 = sharedBluetoothManagerLogComponent(isKindOfClass, v7);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241BC5000, v10, OS_LOG_TYPE_DEFAULT, "BT_ACCESSORY_HEADTRACKING_AVAILABILITY_CHANGED", buf, 2u);
          }

          v8 = @"BluetoothHeadTrackingAvailable";
          goto LABEL_38;
        }
      }
    }

    else if (v1 > 4)
    {
      if (v1 == 5)
      {
        v18 = sharedBluetoothManagerLogComponent(isKindOfClass, v7);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241BC5000, v18, OS_LOG_TYPE_DEFAULT, "BT_ACCESSORY_SETTINGS_CHANGED", buf, 2u);
        }

        v8 = @"BluetoothAccessorySettingsChanged";
        goto LABEL_38;
      }

      if (v1 == 6)
      {
        [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
        v11 = BTAccessoryManagerGetInEarStatus();
        v12 = v11;
        v14 = sharedBluetoothManagerLogComponent(v11, v13);
        v15 = v14;
        if (!v12)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            *&buf[4] = v5;
            *&buf[12] = 1024;
            *&buf[14] = 3;
            *&buf[18] = 1024;
            *&buf[20] = 3;
            _os_log_impl(&dword_241BC5000, v15, OS_LOG_TYPE_DEFAULT, "received 'AACP In Ear Status Changed' event from device %@ inEarStatus Primary : %u, Secondary : %u", buf, 0x18u);
          }

          *buf = v5;
          v22[0] = @"device";
          v22[1] = @"primaryInEarStatus";
          *&buf[8] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
          v22[2] = @"secondaryInEarStatus";
          *&buf[16] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v22 count:3];
          v8 = @"BluetoothAccessoryInEarStatusNotification";
          v20 = v4;
          goto LABEL_39;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          ___btAccessoryEventCallback_block_invoke_cold_2();
        }
      }
    }

    else if (v1 == 1)
    {
      buf[0] = 0;
      if (!BTAccessoryManagerGetDeviceBatteryLevel())
      {
        v8 = @"BluetoothDeviceBatteryChangedNotification";
        goto LABEL_38;
      }
    }

    else if (v1 == 4 && (objc_opt_respondsToSelector() & 1) != 0 && [v5 pairedDeviceNameUpdated])
    {
      v8 = @"BluetoothMagicPairedDeviceNameChangedNotification";
LABEL_38:
      v20 = v4;
      v21 = v5;
LABEL_39:
      [(BluetoothManager *)v20 postNotificationName:v8 object:v21];
    }
  }

  else
  {
    v9 = sharedBluetoothManagerLogComponent(isKindOfClass, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ___btAccessoryEventCallback_block_invoke_cold_1();
    }
  }

  objc_autoreleasePoolPop(v3);
}

void _btDiscoveryStatusEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  [a5 _setScanState:a2];
  if (a2 == 1)
  {
    [a5 _restartScan];
  }

  objc_autoreleasePoolPop(v7);
}

void _btDiscoveryEventCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [a5 addDeviceIfNeeded:a3];
  if (v9)
  {
    v11 = v9;
    if (a2 == 1)
    {
      v14 = sharedBluetoothManagerLogComponent(v9, v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        _btDiscoveryEventCallback_cold_1();
      }

      v15 = v11;
      [a5 _removeDevice:v11];
      v13 = @"BluetoothDeviceRemovedNotification";
      goto LABEL_10;
    }

    if (!a2)
    {
      v12 = sharedBluetoothManagerLogComponent(v9, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        _btDiscoveryEventCallback_cold_2();
      }

      v13 = @"BluetoothDeviceDiscoveredNotification";
LABEL_10:
      [a5 postNotificationName:v13 object:v11];
    }
  }

  objc_autoreleasePoolPop(v8);
}

void pairingAgentStatusEventCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = objc_autoreleasePoolPush();
  v11 = v9;
  if (a3 == 4294901761)
  {
    v12 = 0;
  }

  else
  {
    v9 = [a5 addDeviceIfNeeded:a3];
    v12 = v9;
  }

  if (a2 == 3)
  {
    v13 = sharedBluetoothManagerLogComponent(v9, v10);
    if (a4)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        pairingAgentStatusEventCallback_cold_1();
      }

      [a5 postNotificationName:@"BluetoothPairingPINResultFailedNotification" object:v12 error:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", a4)}];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        pairingAgentStatusEventCallback_cold_2();
      }

      [a5 postNotificationName:@"BluetoothPairingPINResultSuccessNotification" object:v12];
    }
  }

  objc_autoreleasePoolPop(v11);
}

void pairingAgentPincodeCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = [a4 addDeviceIfNeeded:a2];
  v9 = sharedBluetoothManagerLogComponent(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_241BC5000, v9, OS_LOG_TYPE_INFO, "received pincode request for device %@", &v10, 0xCu);
  }

  [a4 postNotificationName:@"BluetoothPairingPINRequestNotification" object:v7];
  objc_autoreleasePoolPop(v6);
}

void pairingAgentUserConfirmationCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  v10 = [a5 addDeviceIfNeeded:a2];
  v12 = sharedBluetoothManagerLogComponent(v10, v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (a4)
  {
    if (v13)
    {
      *buf = 67109378;
      v18[0] = a3;
      LOWORD(v18[1]) = 2112;
      *(&v18[1] + 2) = v10;
      _os_log_impl(&dword_241BC5000, v12, OS_LOG_TYPE_INFO, "received user confirmation request (numeric comparison to %06u) for device %@", buf, 0x12u);
    }

    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v10, @"device", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", a3), @"value", 0}];
    v15 = @"BluetoothPairingUserNumericComparisionNotification";
    v16 = a5;
  }

  else
  {
    if (v13)
    {
      *buf = 138412290;
      *v18 = v10;
      _os_log_impl(&dword_241BC5000, v12, OS_LOG_TYPE_INFO, "received user confirmation request for device %@", buf, 0xCu);
    }

    v15 = @"BluetoothPairingUserConfirmationNotification";
    v16 = a5;
    v14 = v10;
  }

  [v16 postNotificationName:v15 object:v14];
  objc_autoreleasePoolPop(v9);
}

void pairingAgentPassKeyDisplayCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = [a4 addDeviceIfNeeded:a2];
  v10 = sharedBluetoothManagerLogComponent(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_241BC5000, v10, OS_LOG_TYPE_INFO, "received passkey display request for device %@", buf, 0xCu);
  }

  [a4 postNotificationName:@"BluetoothPairingPassKeyDisplayNotification" object:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v8, @"device", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", a3), @"value", 0)}];
  objc_autoreleasePoolPop(v7);
}

void pairingAgentLocalOOBDataReadyCallback(uint64_t a1, uint64_t a2)
{
  v2 = sharedBluetoothManagerLogComponent(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241BC5000, v2, OS_LOG_TYPE_INFO, "received Local OOB Data Ready callback, unsupported", v3, 2u);
  }
}

Class ___bluetoothIsBeingManaged_block_invoke()
{
  result = NSClassFromString(&cfstr_Mcprofileconne.isa);
  if (result)
  {
    result = [-[objc_class sharedConnection](result "sharedConnection")];
    _bluetoothIsBeingManaged_isManaged = result ^ 1;
  }

  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void ___btAccessoryEventCallback_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}