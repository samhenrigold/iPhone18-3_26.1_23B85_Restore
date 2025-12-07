@interface ACCBluetoothPairingService
- (ACCBluetoothPairingService)init;
- (id)_btDeviceGetMACAddress:(BTDeviceImpl *)address;
- (int)_createPairingAgent;
- (int)_deletePairingAgent;
- (void)_AttachToBTServer;
- (void)_cancelBTOOBPairing:(id)pairing;
- (void)_checkAlreadyPaired:(id)paired completionHandler:(id)handler;
- (void)_deviceSupportsContactsSync:(id)sync _withReply:(id)reply;
- (void)_getDeviceBTMacAddress:(id)address;
- (void)_setBTDeviceSyncSettings:(id)settings;
- (void)_startBTOOBPairing:(id)pairing pairingDataC192:(id)c192 pairingDataR192:(id)r192 pairingDataC256:(id)c256 pairingDataR256:(id)r256 completionHandler:(id)handler;
- (void)cancelBTOOBPairing:(id)pairing;
- (void)checkAlreadyPaired:(id)paired completionHandler:(id)handler;
- (void)cleanup;
- (void)dealloc;
- (void)deviceSupportsContactsSync:(id)sync withReply:(id)reply;
- (void)getDeviceBTMacAddress:(id)address;
- (void)setBTDeviceSyncSettings:(id)settings;
- (void)startBTOOBPairing:(id)pairing pairingDataC192:(id)c192 pairingDataR192:(id)r192 pairingDataC256:(id)c256 pairingDataR256:(id)r256 completionHandler:(id)handler;
@end

@implementation ACCBluetoothPairingService

- (ACCBluetoothPairingService)init
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 6;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACCBluetoothPairingService init", buf, 2u);
  }

  v26.receiver = self;
  v26.super_class = ACCBluetoothPairingService;
  v6 = [(ACCBluetoothPairingService *)&v26 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_isBTReady = 0;
    v6->_BTPairingAgent = 0;
    v6->_BTSession = 0;
    v6->_BTAccessoryManager = 0;
    pairingCompletionHandler = v6->_pairingCompletionHandler;
    v6->_pairingCompletionHandler = 0;

    v9 = dispatch_queue_create(kProcessingQueueName, 0);
    processingQueue = v7->_processingQueue;
    v7->_processingQueue = v9;

    v11 = dispatch_semaphore_create(0);
    setup_complete_semaphore = v7->_setup_complete_semaphore;
    v7->_setup_complete_semaphore = v11;

    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7->_processingQueue);
    pairingTimer = v7->_pairingTimer;
    v7->_pairingTimer = v13;

    objc_initWeak(buf, v7);
    v15 = v7->_pairingTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __34__ACCBluetoothPairingService_init__block_invoke;
    handler[3] = &unk_10000C378;
    objc_copyWeak(&v24, buf);
    dispatch_source_set_event_handler(v15, handler);
    dispatch_source_set_timer(v7->_pairingTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v7->_pairingTimer);
    v17 = _BTSessionQueue(v16);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __34__ACCBluetoothPairingService_init__block_invoke_4;
    v21[3] = &unk_10000C450;
    v22 = v7;
    dispatch_sync(v17, v21);

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v18 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v18 = &_os_log_default;
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService init];
  }

  return v7;
}

void __34__ACCBluetoothPairingService_init__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 6;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pairing timer fired, pairing timed out, cancelling pairing.", v7, 2u);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 macAddr];
  [v5 cancelBTOOBPairing:v6];
}

- (void)dealloc
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 6;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACCBluetoothPairingService dealloc", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = ACCBluetoothPairingService;
  [(ACCBluetoothPairingService *)&v6 dealloc];
}

- (void)cleanup
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 6;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACCBluetoothPairingService cleanup", buf, 2u);
  }

  if (self->_BTSession)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ACCBluetoothPairingService cleanup];
    }

    v9 = _BTSessionQueue(v8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __37__ACCBluetoothPairingService_cleanup__block_invoke;
    block[3] = &unk_10000C450;
    block[4] = self;
    dispatch_async(v9, block);
  }

  if (self->_pairingTimer)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v10 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v10 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ACCBluetoothPairingService cleanup];
    }

    v13 = _BTSessionQueue(v12);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __37__ACCBluetoothPairingService_cleanup__block_invoke_7;
    v16[3] = &unk_10000C450;
    v16[4] = self;
    dispatch_sync(v13, v16);
  }

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v14 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v14 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ACCBluetoothPairingService cleanup done!", buf, 2u);
  }
}

id __37__ACCBluetoothPairingService_cleanup__block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingTimer];
  dispatch_source_cancel(v2);

  [*(a1 + 32) setPairingTimer:0];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 6;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __37__ACCBluetoothPairingService_cleanup__block_invoke_7_cold_2();
  }

  return [*(a1 + 32) _deletePairingAgent];
}

- (void)_AttachToBTServer
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __47__ACCBluetoothPairingService__AttachToBTServer__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 6;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Blocking the processing queue while waiting for the BT session initialization to finish...", buf, 2u);
  }

  v5 = [*(a1 + 32) setup_complete_semaphore];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v6 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unblocking the processing queue", v8, 2u);
  }
}

- (void)_getDeviceBTMacAddress:(id)address
{
  addressCopy = address;
  v23 = 0;
  v22 = -21846;
  v21 = -1431655766;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v5;
  v31 = v5;
  v28 = v5;
  v29 = v5;
  if (gLogObjects)
  {
    v6 = gNumLogObjects <= 5;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (self->_BTSession)
  {
    if (v7)
    {
      v8 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v8 = &_os_log_default;
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "_getDeviceBTMacAddress", buf, 2u);
    }

    Default = BTLocalDeviceGetDefault();
    if (Default)
    {
      v12 = Default;
      if (gLogObjects && gNumLogObjects >= 6)
      {
        v13 = *(gLogObjects + 40);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ServiceDelegate listener:shouldAcceptNewConnection:];
        }

        v13 = &_os_log_default;
        v15 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ACCBluetoothPairingService _getDeviceBTMacAddress:];
      }
    }

    else
    {
      AddressString = BTLocalDeviceGetAddressString();
      if (AddressString)
      {
        v12 = AddressString;
        if (gLogObjects && gNumLogObjects >= 6)
        {
          v13 = *(gLogObjects + 40);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [ServiceDelegate listener:shouldAcceptNewConnection:];
          }

          v13 = &_os_log_default;
          v17 = &_os_log_default;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [ACCBluetoothPairingService _getDeviceBTMacAddress:];
        }
      }

      else
      {
        v12 = BTDeviceAddressFromString();
        if (v12)
        {
          if (gLogObjects && gNumLogObjects >= 6)
          {
            v13 = *(gLogObjects + 40);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [ServiceDelegate listener:shouldAcceptNewConnection:];
            }

            v13 = &_os_log_default;
            v18 = &_os_log_default;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [ACCBluetoothPairingService _getDeviceBTMacAddress:];
          }
        }

        else
        {
          v13 = [NSData dataWithBytes:&v21 length:6];
          addressCopy[2](addressCopy, v13);
        }
      }
    }

    if (gLogObjects && gNumLogObjects >= 6)
    {
      v19 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v25 = v12;
      v26 = 1024;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "_getDeviceBTMacAddress Finished, result %d (0x%x)", buf, 0xEu);
    }

    if (addressCopy && v12)
    {
      addressCopy[2](addressCopy, 0);
    }
  }

  else
  {
    if (v7)
    {
      v9 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v9 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ERROR: _getDeviceBTMacAddress: No BTSession!", buf, 2u);
    }
  }
}

- (void)_deviceSupportsContactsSync:(id)sync _withReply:(id)reply
{
  syncCopy = sync;
  replyCopy = reply;
  v19 = 0;
  v18 = -1431655766;
  v17 = -21846;
  v16 = -1431655766;
  if (!self->_BTSession)
  {
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 6;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v14 = &_os_log_default;
      v13 = &_os_log_default;
    }

    else
    {
      v14 = *(gLogObjects + 40);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ERROR: _showOOB2PairingContactsSync: No BTSession!", v15, 2u);
    }

    goto LABEL_22;
  }

  [syncCopy getBytes:&v16 length:6];
  v8 = BTDeviceFromAddress();
  if (v8)
  {
    [ACCBluetoothPairingService _deviceSupportsContactsSync:v8 _withReply:?];
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  if (!v19)
  {
    [ACCBluetoothPairingService _deviceSupportsContactsSync:_withReply:];
    goto LABEL_22;
  }

  DeviceType = BTDeviceGetDeviceType();
  if (DeviceType)
  {
    [ACCBluetoothPairingService _deviceSupportsContactsSync:? _withReply:?];
    goto LABEL_22;
  }

  v11 = v18 == 22 || v18 == 17;
LABEL_23:
  replyCopy[2](replyCopy, v11);
}

- (void)deviceSupportsContactsSync:(id)sync withReply:(id)reply
{
  syncCopy = sync;
  replyCopy = reply;
  v8 = +[NSXPCConnection currentConnection];
  processingQueue = self->_processingQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __67__ACCBluetoothPairingService_deviceSupportsContactsSync_withReply___block_invoke;
  v13[3] = &unk_10000C478;
  v14 = v8;
  selfCopy = self;
  v16 = syncCopy;
  v17 = replyCopy;
  v10 = replyCopy;
  v11 = syncCopy;
  v12 = v8;
  dispatch_async(processingQueue, v13);
}

id __67__ACCBluetoothPairingService_deviceSupportsContactsSync_withReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasEntitlement:@"com.apple.accessories.ACCBluetoothPairingService.access"];
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v5 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deviceSupportsPBAP, call _deviceSupportsPBAP in _processingQueue", buf, 2u);
    }

    return [*(a1 + 40) _deviceSupportsContactsSync:*(a1 + 48) _withReply:*(a1 + 56)];
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: deviceSupportsPBAP, caller does not have necessary entitlement!", v10, 2u);
    }

    return (*(*(a1 + 56) + 16))();
  }
}

- (void)_setBTDeviceSyncSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  v27 = 0;
  v26 = -21846;
  v25 = -1431655766;
  if (!self->_BTSession)
  {
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v16 = &_os_log_default;
      v10 = &_os_log_default;
    }

    else
    {
      v16 = *(gLogObjects + 40);
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v17 = "ERROR: _setBTDeviceSyncSettings: No BTSession!";
    v18 = v16;
    v19 = 2;
    goto LABEL_28;
  }

  [settingsCopy getBytes:&v25 length:6];
  v6 = BTDeviceFromAddress();
  if (v6)
  {
    v7 = v6;
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v8 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v8 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 67109376;
    v29 = v7;
    v30 = 1024;
    v31 = v7;
    v15 = "ERROR: Failed BTDeviceFromAddress, result %d (0x%x)";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v15, buf, 0xEu);
LABEL_25:

    goto LABEL_30;
  }

  if (!v27)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v16 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v16 = &_os_log_default;
      v24 = &_os_log_default;
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 67109376;
    v29 = 0;
    v30 = 1024;
    v31 = 0;
    v17 = "ERROR: BTDeviceFromAddress did not return a valid device, result %d (0x%x)";
    v18 = v16;
    v19 = 14;
LABEL_28:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_29:

    goto LABEL_30;
  }

  SyncSettings = BTDeviceGetSyncSettings();
  if (SyncSettings)
  {
    v12 = SyncSettings;
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v13 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v13 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v29 = v12;
      v30 = 1024;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ERROR: Failed BTDeviceGetSyncSettings, result %d (0x%x)", buf, 0xEu);
    }
  }

  v21 = BTDeviceSetSyncSettings();
  if (v21)
  {
    v22 = v21;
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v8 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v8 = &_os_log_default;
      v23 = &_os_log_default;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 67109376;
    v29 = v22;
    v30 = 1024;
    v31 = v22;
    v15 = "ERROR: Failed BTDeviceSetSyncSettings, result %d (0x%x)";
    goto LABEL_24;
  }

LABEL_30:
}

- (void)setBTDeviceSyncSettings:(id)settings
{
  settingsCopy = settings;
  v5 = +[NSXPCConnection currentConnection];
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __54__ACCBluetoothPairingService_setBTDeviceSyncSettings___block_invoke;
  block[3] = &unk_10000C4A0;
  v10 = v5;
  selfCopy = self;
  v12 = settingsCopy;
  v7 = settingsCopy;
  v8 = v5;
  dispatch_async(processingQueue, block);
}

void __54__ACCBluetoothPairingService_setBTDeviceSyncSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasEntitlement:@"com.apple.accessories.ACCBluetoothPairingService.access"];
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v5 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "setBTDeviceSyncSettings, call _setBTDeviceSyncSettings in _processingQueue", buf, 2u);
    }

    [*(a1 + 40) _setBTDeviceSyncSettings:*(a1 + 48)];
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: setBTDeviceSyncSettings, caller does not have necessary entitlement!", v9, 2u);
    }
  }
}

- (void)getDeviceBTMacAddress:(id)address
{
  addressCopy = address;
  v5 = +[NSXPCConnection currentConnection];
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__ACCBluetoothPairingService_getDeviceBTMacAddress___block_invoke;
  block[3] = &unk_10000C4C8;
  v10 = v5;
  selfCopy = self;
  v12 = addressCopy;
  v7 = addressCopy;
  v8 = v5;
  dispatch_async(processingQueue, block);
}

id __52__ACCBluetoothPairingService_getDeviceBTMacAddress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasEntitlement:@"com.apple.accessories.ACCBluetoothPairingService.access"];
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v5 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "getDeviceBTMacAddress, call _getDeviceBTMacAddress in _processingQueue", buf, 2u);
    }

    return [*(a1 + 40) _getDeviceBTMacAddress:*(a1 + 48)];
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: getDeviceBTMacAddress, caller does not have necessary entitlement!", v10, 2u);
    }

    return (*(*(a1 + 48) + 16))();
  }
}

- (int)_createPairingAgent
{
  if (self->_BTSession)
  {
    if (self->_BTPairingAgent)
    {
      return 0;
    }

    else
    {
      v12 = 0;
      v11 = 0u;
      v10 = 0u;
      v9 = __BTPairingAgentStatusEventCallback;
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 6;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ServiceDelegate listener:shouldAcceptNewConnection:];
        }

        v8 = &_os_log_default;
        v6 = &_os_log_default;
      }

      else
      {
        v8 = *(gLogObjects + 40);
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [ACCBluetoothPairingService _createPairingAgent];
      }

      return BTPairingAgentCreate();
    }
  }

  else
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 6;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v7 = &_os_log_default;
      v4 = &_os_log_default;
    }

    else
    {
      v7 = *(gLogObjects + 40);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ERROR: _createPairingAgent: No BTSession!", &v9, 2u);
    }

    return 1;
  }
}

- (int)_deletePairingAgent
{
  if (!self->_BTPairingAgent)
  {
    return 0;
  }

  if (gLogObjects)
  {
    v2 = gNumLogObjects < 6;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v5 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _deletePairingAgent];
  }

  return BTPairingAgentDestroy();
}

- (void)_startBTOOBPairing:(id)pairing pairingDataC192:(id)c192 pairingDataR192:(id)r192 pairingDataC256:(id)c256 pairingDataR256:(id)r256 completionHandler:(id)handler
{
  pairingCopy = pairing;
  c192Copy = c192;
  r192Copy = r192;
  c256Copy = c256;
  r256Copy = r256;
  handlerCopy = handler;
  v58 = 0;
  v57 = -21846;
  v56 = -1431655766;
  if (gLogObjects)
  {
    v21 = gNumLogObjects <= 5;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  if (!self->_BTSession)
  {
    if (v22)
    {
      v24 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v24 = &_os_log_default;
      v26 = &_os_log_default;
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v27 = "ERROR: _startBTOOBPairing: No BTSession!";
    v28 = v24;
    v29 = 2;
    goto LABEL_45;
  }

  if (v22)
  {
    v23 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v23 = &_os_log_default;
    v25 = &_os_log_default;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    *&buf[4] = pairingCopy;
    *&buf[12] = 2112;
    *&buf[14] = c192Copy;
    v63 = 2112;
    v64 = r192Copy;
    v65 = 2112;
    v66 = c256Copy;
    v67 = 2112;
    v68 = r256Copy;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "_startBTOOBPairing: macAddr: %@ C192:%@ R192:%@ C256:%@ R256:%@", buf, 0x34u);
  }

  if (!pairingCopy || !c192Copy || !r192Copy)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v24 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v24 = &_os_log_default;
      v30 = &_os_log_default;
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    *buf = 138412802;
    *&buf[4] = pairingCopy;
    *&buf[12] = 2112;
    *&buf[14] = c192Copy;
    v63 = 2112;
    v64 = r192Copy;
    v27 = "ERROR: macAddr(%@) and both pairingData C192(%@) and R192(%@) are required!";
    v28 = v24;
    v29 = 32;
    goto LABEL_45;
  }

  if (c256Copy && !r256Copy || !c256Copy && r256Copy)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v24 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v24 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    *buf = 138412546;
    *&buf[4] = c256Copy;
    *&buf[12] = 2112;
    *&buf[14] = r256Copy;
    v27 = "ERROR: both pairingData C256(%@) and R256(%@) are required!";
    v28 = v24;
    v29 = 22;
LABEL_45:
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
LABEL_46:

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }

    goto LABEL_48;
  }

  pairingTimer = self->_pairingTimer;
  v33 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(pairingTimer, v33, 0xFFFFFFFFFFFFFFFFLL, 0);
  [pairingCopy getBytes:&v56 length:6];
  _createPairingAgent = [(ACCBluetoothPairingService *)self _createPairingAgent];
  if (gLogObjects)
  {
    v35 = gNumLogObjects <= 5;
  }

  else
  {
    v35 = 1;
  }

  v36 = !v35;
  v55 = _createPairingAgent;
  if (_createPairingAgent)
  {
    if (v36)
    {
      v37 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v37 = &_os_log_default;
      v39 = &_os_log_default;
    }

    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 67109376;
    *&buf[4] = v55;
    *&buf[8] = 1024;
    *&buf[10] = v55;
    v40 = "ERROR: Failed BTPairingAgentCreate, result %d (0x%x)";
LABEL_65:
    v41 = buf;
LABEL_66:
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v40, v41, 0xEu);
LABEL_67:

    goto LABEL_68;
  }

  if (v36)
  {
    v38 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v38 = &_os_log_default;
    v46 = &_os_log_default;
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  v55 = BTDeviceFromAddress();
  if (v55)
  {
    v47 = logObjectForModule();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v55;
      *&buf[8] = 1024;
      *&buf[10] = v55;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "ERROR: Failed BTDeviceFromAddress, result %d (0x%x)", buf, 0xEu);
    }

    if (v58)
    {
      goto LABEL_68;
    }

    goto LABEL_93;
  }

  if (!v58)
  {
LABEL_93:
    v49 = logObjectForModule();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v55;
      *&buf[8] = 1024;
      *&buf[10] = v55;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "ERROR: BTDeviceFromAddress did not return a valid device, result %d (0x%x)", buf, 0xEu);
    }

    v55 = 1;
    goto LABEL_68;
  }

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v48 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v48 = &_os_log_default;
    v50 = &_os_log_default;
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  v55 = BTPairingAgentClearOOBDataForDevice();
  if (v55)
  {
    v37 = logObjectForModule();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 67109376;
    *&buf[4] = v55;
    *&buf[8] = 1024;
    *&buf[10] = v55;
    v40 = "ERROR: Failed BTPairingAgentClearOOBDataForDevice, result %d (0x%x)";
    goto LABEL_65;
  }

  *buf = 0;
  *&buf[8] = 0;
  [c192Copy bytes];
  [r192Copy bytes];
  if (c256Copy)
  {
    [c256Copy bytes];
  }

  if (r256Copy)
  {
    [r256Copy bytes];
  }

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v51 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v51 = &_os_log_default;
    v52 = &_os_log_default;
  }

  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  v55 = BTPairingAgentSetOOBDataForDevice();
  if (v55)
  {
    v37 = logObjectForModule();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    v59[0] = 67109376;
    v59[1] = v55;
    v60 = 1024;
    v61 = v55;
    v40 = "ERROR: Failed BTPairingAgentSetOOBDataForDevice, result %d (0x%x)";
    v41 = v59;
    goto LABEL_66;
  }

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v53 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v53 = &_os_log_default;
    v54 = &_os_log_default;
  }

  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  v55 = BTDeviceConnectServices();
  if (v55)
  {
    v37 = logObjectForModule();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 67109376;
    *&buf[4] = v55;
    *&buf[8] = 1024;
    *&buf[10] = v55;
    v40 = "ERROR: Failed BTDeviceConnectServices, result %d (0x%x)";
    goto LABEL_65;
  }

  v55 = 0;
LABEL_68:
  if (gLogObjects && gNumLogObjects >= 6)
  {
    v42 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v42 = &_os_log_default;
    v43 = &_os_log_default;
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  if (v55)
  {
    [(ACCBluetoothPairingService *)self _cancelBTOOBPairing:pairingCopy];
  }

  else
  {
    objc_storeStrong(&self->_macAddr, pairing);
    v44 = objc_retainBlock(handlerCopy);
    pairingCompletionHandler = self->_pairingCompletionHandler;
    self->_pairingCompletionHandler = v44;

    self->_pairingStarted = 1;
  }

LABEL_48:
}

- (void)startBTOOBPairing:(id)pairing pairingDataC192:(id)c192 pairingDataR192:(id)r192 pairingDataC256:(id)c256 pairingDataR256:(id)r256 completionHandler:(id)handler
{
  pairingCopy = pairing;
  c192Copy = c192;
  r192Copy = r192;
  c256Copy = c256;
  r256Copy = r256;
  handlerCopy = handler;
  v20 = +[NSXPCConnection currentConnection];
  processingQueue = self->_processingQueue;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __130__ACCBluetoothPairingService_startBTOOBPairing_pairingDataC192_pairingDataR192_pairingDataC256_pairingDataR256_completionHandler___block_invoke;
  v29[3] = &unk_10000C4F0;
  v30 = v20;
  selfCopy = self;
  v32 = pairingCopy;
  v33 = c192Copy;
  v34 = r192Copy;
  v35 = c256Copy;
  v36 = r256Copy;
  v37 = handlerCopy;
  v22 = handlerCopy;
  v23 = r256Copy;
  v24 = c256Copy;
  v25 = r192Copy;
  v26 = c192Copy;
  v27 = pairingCopy;
  v28 = v20;
  dispatch_async(processingQueue, v29);
}

uint64_t (**__130__ACCBluetoothPairingService_startBTOOBPairing_pairingDataC192_pairingDataR192_pairingDataC256_pairingDataR256_completionHandler___block_invoke(uint64_t a1))(void *, void)
{
  v2 = [*(a1 + 32) hasEntitlement:@"com.apple.accessories.ACCBluetoothPairingService.access"];
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v5 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "startBTOOBPairing, call _startBTOOBPairing in _processingQueue", buf, 2u);
    }

    return [*(a1 + 40) _startBTOOBPairing:*(a1 + 48) pairingDataC192:*(a1 + 56) pairingDataR192:*(a1 + 64) pairingDataC256:*(a1 + 72) pairingDataR256:*(a1 + 80) completionHandler:*(a1 + 88)];
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: startBTOOBPairing, caller does not have necessary entitlement!", v10, 2u);
    }

    result = *(a1 + 88);
    if (result)
    {
      return result[2](result, 0);
    }
  }

  return result;
}

- (void)_cancelBTOOBPairing:(id)pairing
{
  pairingCopy = pairing;
  v32 = 0;
  v31 = -21846;
  v30 = -1431655766;
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 5;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!self->_BTSession)
  {
    if (v6)
    {
      v8 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v8 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    *buf = 0;
    v15 = "ERROR: _cancelBTOOBPairing: No BTSession!";
    v16 = v8;
    v17 = 2;
    goto LABEL_56;
  }

  if (v6)
  {
    v7 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v7 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34[0] = pairingCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "_cancelBTOOBPairing: macAddr: %@", buf, 0xCu);
  }

  if (!pairingCopy)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v8 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v8 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    *buf = 138412290;
    v34[0] = 0;
    v15 = "ERROR: macAddr(%@) is required!";
    v16 = v8;
    v17 = 12;
LABEL_56:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
LABEL_57:

    goto LABEL_74;
  }

  [pairingCopy getBytes:&v30 length:6];
  if (gLogObjects && gNumLogObjects >= 6)
  {
    v10 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  v12 = BTDeviceFromAddress();
  if (v12)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v13 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v13 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      LODWORD(v34[0]) = v12;
      WORD2(v34[0]) = 1024;
      *(v34 + 6) = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ERROR: Failed BTDeviceFromAddress, result %d (0x%x)", buf, 0xEu);
    }

    if (v32)
    {
      goto LABEL_64;
    }
  }

  else if (v32)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v18 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v18 = &_os_log_default;
      v27 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
    }

    v28 = BTPairingAgentClearOOBDataForDevice();
    if (!v28)
    {
      goto LABEL_64;
    }

    if (gLogObjects && gNumLogObjects >= 6)
    {
      v20 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v20 = &_os_log_default;
      v29 = &_os_log_default;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      LODWORD(v34[0]) = v28;
      WORD2(v34[0]) = 1024;
      *(v34 + 6) = v28;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "ERROR: Failed BTPairingAgentClearOOBDataForDevice, result %d (0x%x)", buf, 0xEu);
    }

    goto LABEL_63;
  }

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v20 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v20 = &_os_log_default;
    v22 = &_os_log_default;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    LODWORD(v34[0]) = v12;
    WORD2(v34[0]) = 1024;
    *(v34 + 6) = v12;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "ERROR: BTDeviceFromAddress did not return a valid device, result %d (0x%x)", buf, 0xEu);
  }

LABEL_63:

LABEL_64:
  if (gLogObjects && gNumLogObjects >= 6)
  {
    v23 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v23 = &_os_log_default;
    v24 = &_os_log_default;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [ACCBluetoothPairingService _startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:];
  }

  *&self->_pairingStarted = 0;
  self->_pairingResultValid = 0;
  macAddr = self->_macAddr;
  self->_macAddr = 0;

  dispatch_source_set_timer(self->_pairingTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  pairingCompletionHandler = self->_pairingCompletionHandler;
  if (pairingCompletionHandler)
  {
    pairingCompletionHandler[2](pairingCompletionHandler, 0);
  }

LABEL_74:
}

- (void)cancelBTOOBPairing:(id)pairing
{
  pairingCopy = pairing;
  v5 = +[NSXPCConnection currentConnection];
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__ACCBluetoothPairingService_cancelBTOOBPairing___block_invoke;
  block[3] = &unk_10000C4A0;
  v10 = v5;
  selfCopy = self;
  v12 = pairingCopy;
  v7 = pairingCopy;
  v8 = v5;
  dispatch_async(processingQueue, block);
}

void __49__ACCBluetoothPairingService_cancelBTOOBPairing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasEntitlement:@"com.apple.accessories.ACCBluetoothPairingService.access"];
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v5 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "cancelBTOOBPairing, call _cancelBTOOBPairing in _processingQueue", buf, 2u);
    }

    [*(a1 + 40) _cancelBTOOBPairing:*(a1 + 48)];
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: cancelBTOOBPairing, caller does not have necessary entitlement!", v9, 2u);
    }
  }
}

- (void)_checkAlreadyPaired:(id)paired completionHandler:(id)handler
{
  pairedCopy = paired;
  handlerCopy = handler;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60 = v8;
  v61 = v8;
  v58 = v8;
  v59 = v8;
  v56 = v8;
  v57 = v8;
  v54 = v8;
  v55 = v8;
  v52 = v8;
  v53 = v8;
  v50 = v8;
  v51 = v8;
  v48 = v8;
  v49 = v8;
  v46 = v8;
  v47 = v8;
  v44 = v8;
  v45 = v8;
  v42 = v8;
  v43 = v8;
  v40 = v8;
  v41 = v8;
  v38 = v8;
  v39 = v8;
  v36 = v8;
  v37 = v8;
  v34 = v8;
  v35 = v8;
  v32 = v8;
  v33 = v8;
  v30 = v8;
  v31 = v8;
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 5;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (self->_BTSession)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v11 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ACCBluetoothPairingService _checkAlreadyPaired:completionHandler:];
    }

    v14 = [pairedCopy length];
    if (gLogObjects)
    {
      v15 = gNumLogObjects <= 5;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (v14 <= 5)
    {
      if (v16)
      {
        v17 = *(gLogObjects + 40);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ServiceDelegate listener:shouldAcceptNewConnection:];
        }

        v17 = &_os_log_default;
        v20 = &_os_log_default;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = pairedCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "invalid macAddr! %@", buf, 0xCu);
      }

LABEL_41:
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_66;
    }

    if (v16)
    {
      v18 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v18 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ACCBluetoothPairingService _checkAlreadyPaired:completionHandler:];
    }

    if (!BTLocalDeviceGetDefault())
    {
      if (gLogObjects && gNumLogObjects >= 6)
      {
        v22 = *(gLogObjects + 40);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ServiceDelegate listener:shouldAcceptNewConnection:];
        }

        v22 = &_os_log_default;
        v23 = &_os_log_default;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [ACCBluetoothPairingService _checkAlreadyPaired:completionHandler:];
      }

      BTLocalDeviceGetPairedDevices();
    }

    if (gLogObjects && gNumLogObjects >= 6)
    {
      v24 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v24 = &_os_log_default;
      v25 = &_os_log_default;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v27 = pairedCopy;
      v28 = 1024;
      v29 = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "_checkAlreadyPaired: %@, foundPaired %d", buf, 0x12u);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    if (v10)
    {
      v12 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v12 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ERROR: _checkAlreadyPaired: No BTSession!", buf, 2u);
    }

    if (handlerCopy)
    {
      goto LABEL_41;
    }
  }

LABEL_66:
}

- (void)checkAlreadyPaired:(id)paired completionHandler:(id)handler
{
  pairedCopy = paired;
  handlerCopy = handler;
  v8 = +[NSXPCConnection currentConnection];
  processingQueue = self->_processingQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __67__ACCBluetoothPairingService_checkAlreadyPaired_completionHandler___block_invoke;
  v13[3] = &unk_10000C478;
  v14 = v8;
  selfCopy = self;
  v16 = pairedCopy;
  v17 = handlerCopy;
  v10 = handlerCopy;
  v11 = pairedCopy;
  v12 = v8;
  dispatch_async(processingQueue, v13);
}

id __67__ACCBluetoothPairingService_checkAlreadyPaired_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasEntitlement:@"com.apple.accessories.ACCBluetoothPairingService.access"];
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v5 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "checkAlreadyPaired, call _checkAlreadyPaired in _processingQueue", buf, 2u);
    }

    return [*(a1 + 40) _checkAlreadyPaired:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ServiceDelegate listener:shouldAcceptNewConnection:];
      }

      v6 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: checkAlreadyPaired, caller does not have necessary entitlement!", v10, 2u);
    }

    return (*(*(a1 + 56) + 16))();
  }
}

- (id)_btDeviceGetMACAddress:(BTDeviceImpl *)address
{
  v10 = -21846;
  v9 = -1431655766;
  v11 = 0u;
  v12 = 0u;
  BTDeviceGetAddressString();
  if (BTDeviceAddressFromString())
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSData dataWithBytes:&v9 length:6];
  }

  if (gLogObjects)
  {
    v5 = gNumLogObjects < 6;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ServiceDelegate listener:shouldAcceptNewConnection:];
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCBluetoothPairingService *)address _btDeviceGetMACAddress:v4, v7];
  }

  return v4;
}

- (void)_getDeviceBTMacAddress:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getDeviceBTMacAddress:.cold.5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getDeviceBTMacAddress:.cold.7()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_deviceSupportsContactsSync:(int)a1 _withReply:.cold.1(int a1)
{
  v2 = logObjectForModule();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v9) = 67109376;
    HIDWORD(v9) = a1;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6(&_mh_execute_header, v3, v4, "ERROR: Failed BTDeviceFromAddress, result %d (0x%x)", v5, v6, v7, v8, v9);
  }
}

- (void)_deviceSupportsContactsSync:(int)a1 _withReply:.cold.2(int a1)
{
  v2 = logObjectForModule();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v9) = 67109376;
    HIDWORD(v9) = a1;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6(&_mh_execute_header, v3, v4, "ERROR: Failed BTDeviceGetDeviceType, result %d (0x%x)", v5, v6, v7, v8, v9);
  }
}

- (void)_deviceSupportsContactsSync:_withReply:.cold.3()
{
  v0 = logObjectForModule();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6(&_mh_execute_header, v1, v2, "ERROR: BTDeviceFromAddress did not return a valid device, result %d (0x%x)", v3, v4, v5, v6, 67109376);
  }
}

- (void)_startBTOOBPairing:pairingDataC192:pairingDataR192:pairingDataC256:pairingDataR256:completionHandler:.cold.12()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)_btDeviceGetMACAddress:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "_btDeviceGetMACAddress: btDevice %p, macAddr %@", &v3, 0x16u);
}

@end