@interface CWFNearbyDeviceDiscoveryManager
- (CWFNearbyDeviceDiscoveryManager)init;
- (id)getEDSResultFromReport:(id)report;
- (id)getRequestDataFromParams:(id)params;
- (int)handleEvent:(int64_t)event withData:(id)data interface:(id)interface;
- (int)handleNDDDoneEvent:(id)event interface:(id)interface;
- (int)handleNDDRequestWithParams:(id)params clientName:(id)name interface:(id)interface;
- (int)handleNDDResultEvent:(id)event interface:(id)interface;
- (int)handleRequest:(int64_t)request withData:(id)data interface:(id)interface;
- (int)isNDDRequestValid:(id)valid;
- (void)handleDextCrashEvent;
- (void)handleDriverAvailableEvent;
- (void)setSendNDDRequest:(id)request;
@end

@implementation CWFNearbyDeviceDiscoveryManager

- (CWFNearbyDeviceDiscoveryManager)init
{
  v6.receiver = self;
  v6.super_class = CWFNearbyDeviceDiscoveryManager;
  v2 = [(CWFNearbyDeviceDiscoveryManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CWFNearbyDeviceDiscoveryManager *)v2 set_didDriverCrash:0];
    [(CWFNearbyDeviceDiscoveryManager *)v3 set_currentNDDRequest:0];
    [(CWFNearbyDeviceDiscoveryManager *)v3 set_interface:0];
    v4 = dispatch_queue_create("com.apple.wifi.CWFNDDManager", 0);
    [(CWFNearbyDeviceDiscoveryManager *)v3 set_serviceQueue:v4];
  }

  return v3;
}

- (void)setSendNDDRequest:(id)request
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [request copy];
  sendNDDRequest = self->_sendNDDRequest;
  self->_sendNDDRequest = v4;

  v6 = objc_alloc_init(CWFNearbyDeviceDiscoveryParameter);
  v7 = v6;
  if (v6)
  {
    [(CWFNearbyDeviceDiscoveryParameter *)v6 setOperation:2];
    v8 = [(CWFNearbyDeviceDiscoveryManager *)self handleNDDRequestWithParams:v7 clientName:0 interface:0];
    if (v8)
    {
      v9 = v8;
      v10 = CWFGetOSLog();
      if (v10)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 136447234;
        v14 = "[CWFNearbyDeviceDiscoveryManager setSendNDDRequest:]";
        v15 = 2082;
        v16 = "CWFNearbyDeviceDiscoveryManager.m";
        v17 = 1024;
        v18 = 93;
        v19 = 2114;
        v20 = v7;
        v21 = 1024;
        v22 = v9;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to set NDD stop request %{public}@ to driver[%d]", &v13, 44);
      }
    }
  }
}

- (int)handleEvent:(int64_t)event withData:(id)data interface:(id)interface
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  interfaceCopy = interface;
  if (!dataCopy)
  {
    v15 = CWFGetOSLog();
    if (v15)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v34 = 136446722;
      v35 = "[CWFNearbyDeviceDiscoveryManager handleEvent:withData:interface:]";
      v36 = 2082;
      v37 = "CWFNearbyDeviceDiscoveryManager.m";
      v38 = 1024;
      v39 = 105;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 16, "[corewifi] %{public}s (%{public}s:%u) NULL data", &v34, 28);
    }

    goto LABEL_17;
  }

  if (event == 55)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _serviceQueue = [(CWFNearbyDeviceDiscoveryManager *)self _serviceQueue];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_1E0D03E64;
      v25[3] = &unk_1E86E6420;
      v26 = dataCopy;
      selfCopy = self;
      dispatch_sync(_serviceQueue, v25);

      v11 = v26;
      goto LABEL_11;
    }

    v20 = CWFGetOSLog();
    if (v20)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v34 = 136446978;
      v35 = "[CWFNearbyDeviceDiscoveryManager handleEvent:withData:interface:]";
      v36 = 2082;
      v37 = "CWFNearbyDeviceDiscoveryManager.m";
      v38 = 1024;
      v39 = 134;
      v40 = 2114;
      v41 = dataCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 16, "[corewifi] %{public}s (%{public}s:%u) APPLE80211_M_DRIVER_AVAILABLE data not valid %{public}@", &v34, 38);
    }

    goto LABEL_17;
  }

  if (event == 239)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _serviceQueue2 = [(CWFNearbyDeviceDiscoveryManager *)self _serviceQueue];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1E0D03D34;
      v28[3] = &unk_1E86E6060;
      v28[4] = self;
      v29 = dataCopy;
      v30 = interfaceCopy;
      dispatch_sync(_serviceQueue2, v28);

      v11 = v29;
      goto LABEL_11;
    }

    v19 = CWFGetOSLog();
    if (v19)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v34 = 136446978;
      v35 = "[CWFNearbyDeviceDiscoveryManager handleEvent:withData:interface:]";
      v36 = 2082;
      v37 = "CWFNearbyDeviceDiscoveryManager.m";
      v38 = 1024;
      v39 = 123;
      v40 = 2114;
      v41 = dataCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 16, "[corewifi] %{public}s (%{public}s:%u) APPLE80211_M_NDD_REPORT data not valid %{public}@", &v34, 38);
    }

    goto LABEL_17;
  }

  if (event != 238)
  {
LABEL_18:
    v14 = -3900;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = CWFGetOSLog();
    if (v21)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v34 = 136446978;
      v35 = "[CWFNearbyDeviceDiscoveryManager handleEvent:withData:interface:]";
      v36 = 2082;
      v37 = "CWFNearbyDeviceDiscoveryManager.m";
      v38 = 1024;
      v39 = 112;
      v40 = 2114;
      v41 = dataCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 16, "[corewifi] %{public}s (%{public}s:%u) APPLE80211_M_NDD_DONE data not valid %{public}@", &v34, 38);
    }

LABEL_17:

    goto LABEL_18;
  }

  _serviceQueue3 = [(CWFNearbyDeviceDiscoveryManager *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D03C04;
  block[3] = &unk_1E86E6060;
  block[4] = self;
  v32 = dataCopy;
  v33 = interfaceCopy;
  dispatch_sync(_serviceQueue3, block);

  v11 = v32;
LABEL_11:

  v14 = 0;
LABEL_19:

  return v14;
}

- (int)handleRequest:(int64_t)request withData:(id)data interface:(id)interface
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  interfaceCopy = interface;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (!dataCopy)
  {
    v13 = CWFGetOSLog();
    if (v13)
    {
      v14 = CWFGetOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v26 = 136446722;
      v27 = "[CWFNearbyDeviceDiscoveryManager handleRequest:withData:interface:]";
      v28 = 2082;
      v29 = "CWFNearbyDeviceDiscoveryManager.m";
      v30 = 1024;
      v31 = 163;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 16, "[corewifi] %{public}s (%{public}s:%u) NULL data", &v26, 28);
    }

    goto LABEL_18;
  }

  if (request != 238)
  {
    v11 = -3900;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = CWFGetOSLog();
    if (v15)
    {
      v14 = CWFGetOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v26 = 136446978;
      v27 = "[CWFNearbyDeviceDiscoveryManager handleRequest:withData:interface:]";
      v28 = 2082;
      v29 = "CWFNearbyDeviceDiscoveryManager.m";
      v30 = 1024;
      v31 = 170;
      v32 = 2114;
      v33 = dataCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 16, "[corewifi] %{public}s (%{public}s:%u) Data not valid %{public}@", &v26, 38);
    }

LABEL_18:

    v11 = -3900;
    *(v23 + 6) = -3900;
    goto LABEL_6;
  }

  _serviceQueue = [(CWFNearbyDeviceDiscoveryManager *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D04278;
  block[3] = &unk_1E86E92B8;
  v21 = &v22;
  block[4] = self;
  v19 = dataCopy;
  v20 = interfaceCopy;
  dispatch_sync(_serviceQueue, block);

  v11 = *(v23 + 6);
LABEL_6:
  _Block_object_dispose(&v22, 8);

  return v11;
}

- (int)isNDDRequestValid:(id)valid
{
  v48 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v4 = validCopy;
  if (!validCopy)
  {
    v35 = CWFGetOSLog();
    if (v35)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v42 = 136446978;
      v43 = "[CWFNearbyDeviceDiscoveryManager isNDDRequestValid:]";
      v44 = 2082;
      *v45 = "CWFNearbyDeviceDiscoveryManager.m";
      *&v45[8] = 1024;
      *&v45[10] = 194;
      v46 = 2114;
      v47 = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 16, "[corewifi] %{public}s (%{public}s:%u) NULL request %{public}@", &v42, 38);
    }

    goto LABEL_37;
  }

  if ([validCopy operation] < 1 || objc_msgSend(v4, "operation") >= 3)
  {
    v34 = CWFGetOSLog();
    if (v34)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v42 = 136446978;
      v43 = "[CWFNearbyDeviceDiscoveryManager isNDDRequestValid:]";
      v44 = 2082;
      *v45 = "CWFNearbyDeviceDiscoveryManager.m";
      *&v45[8] = 1024;
      *&v45[10] = 199;
      v46 = 2114;
      v47 = v4;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid operation mode %{public}@", &v42, 38);
    }

    goto LABEL_37;
  }

  if ([v4 operation] != 2 && (objc_msgSend(v4, "type") < 1 || objc_msgSend(v4, "type") >= 4))
  {
    v27 = CWFGetOSLog();
    if (v27)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v42 = 136446978;
      v43 = "[CWFNearbyDeviceDiscoveryManager isNDDRequestValid:]";
      v44 = 2082;
      *v45 = "CWFNearbyDeviceDiscoveryManager.m";
      *&v45[8] = 1024;
      *&v45[10] = 204;
      v46 = 2114;
      v47 = v4;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid type %{public}@", &v42, 38);
    }

LABEL_37:

    v26 = -3900;
    goto LABEL_38;
  }

  if ([v4 operation] == 1)
  {
    filters = [v4 filters];
    if (![filters count])
    {

      goto LABEL_10;
    }

    filters2 = [v4 filters];
    v7 = [filters2 count];

    if (v7 > 8)
    {
LABEL_10:
      v8 = CWFGetOSLog();
      if (v8)
      {
        v9 = CWFGetOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v28 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v42 = 136315650;
        v43 = "[CWFNearbyDeviceDiscoveryManager isNDDRequestValid:]";
        v44 = 1024;
        *v45 = 210;
        *&v45[4] = 2114;
        *&v45[6] = v4;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 16, "[corewifi] %s:CWFNDDManager[%d]: Invalid macId list %{public}@\n", &v42, 28);
      }

      goto LABEL_37;
    }

    filters3 = [v4 filters];
    v11 = [filters3 count];

    if (v11)
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        filters4 = [v4 filters];
        v15 = [filters4 objectAtIndexedSubscript:v12];
        receiverMacAddress = [v15 receiverMacAddress];
        if (receiverMacAddress)
        {
          goto LABEL_19;
        }

        receiverMacAddress = [v4 filters];
        v17 = [receiverMacAddress objectAtIndexedSubscript:v12];
        transmitterMacAddress = [v17 transmitterMacAddress];
        if (transmitterMacAddress)
        {
          goto LABEL_18;
        }

        filters5 = [v4 filters];
        v20 = [filters5 objectAtIndexedSubscript:v12];
        bssid = [v20 bssid];
        if (bssid)
        {
          break;
        }

        filters6 = [v4 filters];
        v24 = [filters6 objectAtIndexedSubscript:v12];
        frameType = [v24 frameType];

        if (!frameType)
        {
          v25 = CWFGetOSLog();
          if (v25)
          {
            v9 = CWFGetOSLog();
          }

          else
          {
            v9 = MEMORY[0x1E69E9C10];
            v31 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            filters7 = [v4 filters];
            v33 = [filters7 objectAtIndexedSubscript:v12];
            v42 = 136315650;
            v43 = "[CWFNearbyDeviceDiscoveryManager isNDDRequestValid:]";
            v44 = 1024;
            *v45 = 216;
            *&v45[4] = 2112;
            *&v45[6] = v33;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 16, "[corewifi] %s:CWFNDDManager[%d]: Invalid filter %@\n", &v42, 28);
          }

          goto LABEL_37;
        }

LABEL_20:
        v12 = ++v13;
        filters8 = [v4 filters];
        v23 = [filters8 count];

        if (v23 <= v13)
        {
          goto LABEL_25;
        }
      }

      transmitterMacAddress = 0;
LABEL_18:

LABEL_19:
      goto LABEL_20;
    }

LABEL_25:
    if ([v4 type] == 2 && (objc_msgSend(v4, "channel") < 1 || objc_msgSend(v4, "band") <= 0))
    {
      v38 = CWFGetOSLog();
      if (v38)
      {
        v9 = CWFGetOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v39 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v42 = 136446978;
        v43 = "[CWFNearbyDeviceDiscoveryManager isNDDRequestValid:]";
        v44 = 2082;
        *v45 = "CWFNearbyDeviceDiscoveryManager.m";
        *&v45[8] = 1024;
        *&v45[10] = 223;
        v46 = 2114;
        v47 = v4;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid channel and band for active request %{public}@", &v42, 38);
      }

      goto LABEL_37;
    }
  }

  v26 = 0;
LABEL_38:

  return v26;
}

- (id)getRequestDataFromParams:(id)params
{
  paramsCopy = params;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  filters = [paramsCopy filters];
  v5 = [filters count];

  if (v5)
  {
    v6 = 0;
    v7 = v49 + 4;
    do
    {
      filters2 = [paramsCopy filters];
      v9 = [filters2 objectAtIndexedSubscript:v6];
      receiverMacAddress = [v9 receiverMacAddress];

      if (receiverMacAddress)
      {
        filters3 = [paramsCopy filters];
        v12 = [filters3 objectAtIndexedSubscript:v6];
        receiverMacAddress2 = [v12 receiverMacAddress];
        v14 = ether_aton([receiverMacAddress2 UTF8String]);

        if (v14)
        {
          v15 = *v14->octet;
          *(v7 + 6) = *&v14->octet[4];
          *(v7 + 2) = v15;
        }
      }

      filters4 = [paramsCopy filters];
      v17 = [filters4 objectAtIndexedSubscript:v6];
      transmitterMacAddress = [v17 transmitterMacAddress];

      if (transmitterMacAddress)
      {
        filters5 = [paramsCopy filters];
        v20 = [filters5 objectAtIndexedSubscript:v6];
        transmitterMacAddress2 = [v20 transmitterMacAddress];
        v22 = ether_aton([transmitterMacAddress2 UTF8String]);

        if (v22)
        {
          v23 = *v22->octet;
          *(v7 + 9) = *&v22->octet[4];
          *(v7 + 14) = v23;
        }
      }

      filters6 = [paramsCopy filters];
      v25 = [filters6 objectAtIndexedSubscript:v6];
      bssid = [v25 bssid];

      if (bssid)
      {
        filters7 = [paramsCopy filters];
        v28 = [filters7 objectAtIndexedSubscript:v6];
        bssid2 = [v28 bssid];
        v30 = ether_aton([bssid2 UTF8String]);

        if (v30)
        {
          v31 = *v30->octet;
          *(v7 + 12) = *&v30->octet[4];
          *(v7 + 5) = v31;
        }
      }

      filters8 = [paramsCopy filters];
      v33 = [filters8 objectAtIndexedSubscript:v6];
      *v7 = [v33 frameType];

      filters9 = [paramsCopy filters];
      v35 = [filters9 objectAtIndexedSubscript:v6];
      if ([v35 numReports])
      {
        filters10 = [paramsCopy filters];
        v37 = [filters10 objectAtIndexedSubscript:v6];
        if ([v37 numReports] > 0x31)
        {
          *(v7 + 1) = 50;
        }

        else
        {
          filters11 = [paramsCopy filters];
          v39 = [filters11 objectAtIndexedSubscript:v6];
          *(v7 + 1) = [v39 numReports];
        }
      }

      else
      {
        *(v7 + 1) = 50;
      }

      ++v6;
      filters12 = [paramsCopy filters];
      v41 = [filters12 count];

      v7 += 28;
    }

    while (v6 < v41);
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v48 = v6;
  LOWORD(v49[0]) = v49[0] & 0xC700 | [paramsCopy channel] | 0x2000;
  if ([paramsCopy band] == 1)
  {
    v42 = v49[0] & 0x3FFF;
  }

  else if ([paramsCopy band] == 2)
  {
    v42 = LOWORD(v49[0]) | 0xC000;
  }

  else
  {
    if ([paramsCopy band] != 4)
    {
      goto LABEL_28;
    }

    v42 = v49[0] & 0x3FFF | 0x4000;
  }

  LOWORD(v49[0]) = v42;
LABEL_28:
  if ([paramsCopy operation] == 1)
  {
    v43 = 1;
  }

  else
  {
    v43 = 2;
  }

  *v47 = v43;
  if ([paramsCopy type] == 1)
  {
    v44 = 0x12C00000001;
  }

  else
  {
    v44 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32([paramsCopy type] == 2), 0x1FuLL)), 0x12C00000001, 0x753000000002);
  }

  *&v47[4] = v44;
  v45 = [MEMORY[0x1E695DEF0] dataWithBytes:v47 length:244];

  return v45;
}

- (int)handleNDDRequestWithParams:(id)params clientName:(id)name interface:(id)interface
{
  v47 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  nameCopy = name;
  interfaceCopy = interface;
  v11 = [(CWFNearbyDeviceDiscoveryManager *)self isNDDRequestValid:paramsCopy];
  if (v11)
  {
    v18 = v11;
    v25 = CWFGetOSLog();
    if (v25)
    {
      v26 = CWFGetOSLog();
    }

    else
    {
      v26 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v37 = 136447234;
      v38 = "[CWFNearbyDeviceDiscoveryManager handleNDDRequestWithParams:clientName:interface:]";
      v39 = 2082;
      v40 = "CWFNearbyDeviceDiscoveryManager.m";
      v41 = 1024;
      v42 = 296;
      v43 = 2114;
      v44 = paramsCopy;
      v45 = 1024;
      v46 = v18;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v26, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid NDDRequest %{public}@[%d]", &v37, 44);
    }

    v14 = 0;
  }

  else
  {
    sendNDDRequest = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDRequest];

    if (sendNDDRequest)
    {
      v13 = [(CWFNearbyDeviceDiscoveryManager *)self getRequestDataFromParams:paramsCopy];
      if (v13)
      {
        v14 = v13;
        if ([paramsCopy operation] == 2 || objc_msgSend(paramsCopy, "type") == 3 || (-[CWFNearbyDeviceDiscoveryManager isNDDAllowed](self, "isNDDAllowed"), v15 = objc_claimAutoreleasedReturnValue(), v16 = (v15)[2](v15, nameCopy, objc_msgSend(paramsCopy, "band") == 2), v15, (v16 & 1) != 0))
        {
          sendNDDRequest2 = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDRequest];
          v18 = (sendNDDRequest2)[2](sendNDDRequest2, v14);

          if (!v18)
          {
            if ([paramsCopy operation] == 1)
            {
              [(CWFNearbyDeviceDiscoveryManager *)self set_currentNDDRequest:paramsCopy];
              selfCopy2 = self;
              v20 = interfaceCopy;
            }

            else
            {
              if ([paramsCopy operation] != 2)
              {
LABEL_13:
                v18 = 0;
                goto LABEL_14;
              }

              [(CWFNearbyDeviceDiscoveryManager *)self set_currentNDDRequest:0];
              selfCopy2 = self;
              v20 = 0;
            }

            [(CWFNearbyDeviceDiscoveryManager *)selfCopy2 set_interface:v20];
            goto LABEL_13;
          }

          v31 = CWFGetOSLog();
          if (v31)
          {
            v32 = CWFGetOSLog();
          }

          else
          {
            v32 = MEMORY[0x1E69E9C10];
            v36 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v37 = 136447234;
            v38 = "[CWFNearbyDeviceDiscoveryManager handleNDDRequestWithParams:clientName:interface:]";
            v39 = 2082;
            v40 = "CWFNearbyDeviceDiscoveryManager.m";
            v41 = 1024;
            v42 = 317;
            v43 = 2114;
            v44 = paramsCopy;
            v45 = 1024;
            v46 = v18;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v32, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to set NDDRequest %{public}@ to driver[%d]", &v37, 44);
          }
        }

        else
        {
          v22 = CWFGetOSLog();
          if (v22)
          {
            v23 = CWFGetOSLog();
          }

          else
          {
            v23 = MEMORY[0x1E69E9C10];
            v24 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v37 = 136446978;
            v38 = "[CWFNearbyDeviceDiscoveryManager handleNDDRequestWithParams:clientName:interface:]";
            v39 = 2082;
            v40 = "CWFNearbyDeviceDiscoveryManager.m";
            v41 = 1024;
            v42 = 311;
            v43 = 2114;
            v44 = paramsCopy;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 16, "[corewifi] %{public}s (%{public}s:%u) NDD not allowed %{public}@", &v37, 38);
          }

          v18 = -3930;
        }
      }

      else
      {
        v29 = CWFGetOSLog();
        if (v29)
        {
          v30 = CWFGetOSLog();
        }

        else
        {
          v30 = MEMORY[0x1E69E9C10];
          v35 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v37 = 136446978;
          v38 = "[CWFNearbyDeviceDiscoveryManager handleNDDRequestWithParams:clientName:interface:]";
          v39 = 2082;
          v40 = "CWFNearbyDeviceDiscoveryManager.m";
          v41 = 1024;
          v42 = 306;
          v43 = 2114;
          v44 = paramsCopy;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v30, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to get NDDData from params %{public}@", &v37, 38);
        }

        v14 = 0;
        v18 = -3900;
      }
    }

    else
    {
      v27 = CWFGetOSLog();
      if (v27)
      {
        v28 = CWFGetOSLog();
      }

      else
      {
        v28 = MEMORY[0x1E69E9C10];
        v34 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v37 = 136446722;
        v38 = "[CWFNearbyDeviceDiscoveryManager handleNDDRequestWithParams:clientName:interface:]";
        v39 = 2082;
        v40 = "CWFNearbyDeviceDiscoveryManager.m";
        v41 = 1024;
        v42 = 300;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v28, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid sendRequest callback", &v37, 28);
      }

      v14 = 0;
      v18 = -3931;
    }
  }

LABEL_14:

  return v18;
}

- (id)getEDSResultFromReport:(id)report
{
  v26 = *MEMORY[0x1E69E9840];
  reportCopy = report;
  v4 = objc_alloc_init(CWFNearbyDeviceDiscoveryReport);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!reportCopy || ![reportCopy bytes] || objc_msgSend(reportCopy, "length") != 48)
  {
    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v23 = 136446722;
      *&v23[4] = "[CWFNearbyDeviceDiscoveryManager getEDSResultFromReport:]";
      *&v23[12] = 2082;
      *&v23[14] = "CWFNearbyDeviceDiscoveryManager.m";
      *&v23[22] = 1024;
      LODWORD(v24) = 339;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid reportData", v23, 28, *v23, *&v23[8], v24, v25);
    }

    goto LABEL_31;
  }

  if (!v4 || !v5)
  {
    v21 = CWFGetOSLog();
    if (v21)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v23 = 136447234;
      *&v23[4] = "[CWFNearbyDeviceDiscoveryManager getEDSResultFromReport:]";
      *&v23[12] = 2082;
      *&v23[14] = "CWFNearbyDeviceDiscoveryManager.m";
      *&v23[22] = 1024;
      LODWORD(v24) = 343;
      WORD2(v24) = 2048;
      *(&v24 + 6) = v4;
      HIWORD(v24) = 2048;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 16, "[corewifi] %{public}s (%{public}s:%u) unable to allocate result %p and rssi object %p", v23, 48, *v23, *&v23[8], v24, v5);
    }

LABEL_31:

    goto LABEL_18;
  }

  bytes = [reportCopy bytes];
  date = [MEMORY[0x1E695DF00] date];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setTimeStamp:date];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ether_ntoa((bytes + 16))];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setReceiver:v8];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ether_ntoa((bytes + 22))];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setTransmitter:v9];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ether_ntoa((bytes + 28))];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setBssid:v10];

  [(CWFNearbyDeviceDiscoveryReport *)v4 setFrameType:*(bytes + 8)];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setBandwidth:(*(bytes + 34) >> 11) & 7];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setChannel:*(bytes + 34)];
  v11 = *(bytes + 34);
  if (v11 >= 0x4000)
  {
    v13 = v11 >> 14;
    if (v13 == 3)
    {
      v12 = 2;
    }

    else
    {
      if (v13 != 1)
      {
        goto LABEL_13;
      }

      v12 = 4;
    }
  }

  else
  {
    v12 = 1;
  }

  [(CWFNearbyDeviceDiscoveryReport *)v4 setBand:v12];
LABEL_13:
  for (i = 0; i != 4; ++i)
  {
    v15 = *(bytes + 2 + i);
    if ((v15 | 0x80) != 0x80)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
      [v5 addObject:v16];
    }
  }

  [(CWFNearbyDeviceDiscoveryReport *)v4 setRssi:v5];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setRateMbps:*(bytes + 12)];
LABEL_18:

  return v4;
}

- (int)handleNDDResultEvent:(id)event interface:(id)interface
{
  v33 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  interfaceCopy = interface;
  v8 = objc_alloc_init(CWFXPCEvent);
  sendNDDXPCEvent = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDXPCEvent];

  if (!sendNDDXPCEvent)
  {
    v17 = CWFGetOSLog();
    if (v17)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v25 = 136446722;
      v26 = "[CWFNearbyDeviceDiscoveryManager handleNDDResultEvent:interface:]";
      v27 = 2082;
      v28 = "CWFNearbyDeviceDiscoveryManager.m";
      v29 = 1024;
      v30 = 386;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid sendReport callback", &v25, 28);
    }

    goto LABEL_21;
  }

  if (!eventCopy)
  {
    v18 = CWFGetOSLog();
    if (v18)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v25 = 136446978;
      v26 = "[CWFNearbyDeviceDiscoveryManager handleNDDResultEvent:interface:]";
      v27 = 2082;
      v28 = "CWFNearbyDeviceDiscoveryManager.m";
      v29 = 1024;
      v30 = 391;
      v31 = 2048;
      v32 = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid report data %p", &v25, 38);
    }

    goto LABEL_21;
  }

  v10 = [(CWFNearbyDeviceDiscoveryManager *)self getEDSResultFromReport:eventCopy];
  if (!v10)
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v25 = 136446978;
      v26 = "[CWFNearbyDeviceDiscoveryManager handleNDDResultEvent:interface:]";
      v27 = 2082;
      v28 = "CWFNearbyDeviceDiscoveryManager.m";
      v29 = 1024;
      v30 = 397;
      v31 = 2048;
      v32 = eventCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to get result from report %p", &v25, 38);
    }

LABEL_21:
    v15 = -3931;
    goto LABEL_5;
  }

  v11 = v10;
  [(CWFXPCEvent *)v8 setType:35];
  date = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v8 setTimestamp:date];

  [(CWFXPCEvent *)v8 setInterfaceName:interfaceCopy];
  v23 = @"NDDResult";
  v24 = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  [(CWFXPCEvent *)v8 setInfo:v13];

  sendNDDXPCEvent2 = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDXPCEvent];
  (sendNDDXPCEvent2)[2](sendNDDXPCEvent2, v8);

  v15 = 0;
LABEL_5:

  return v15;
}

- (int)handleNDDDoneEvent:(id)event interface:(id)interface
{
  v31 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  eventCopy = event;
  v8 = objc_alloc_init(CWFXPCEvent);
  v9 = *MEMORY[0x1E696A798];
  integerValue = [eventCopy integerValue];
  integerValue2 = [eventCopy integerValue];

  v12 = CWFErrorDescription(v9, integerValue2);
  v13 = CWFErrorWithDescription(v9, integerValue, v12);

  sendNDDXPCEvent = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDXPCEvent];

  if (sendNDDXPCEvent)
  {
    [(CWFXPCEvent *)v8 setType:36];
    date = [MEMORY[0x1E695DF00] date];
    [(CWFXPCEvent *)v8 setTimestamp:date];

    [(CWFXPCEvent *)v8 setInterfaceName:interfaceCopy];
    v23 = @"NDDDone";
    v24 = v13;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [(CWFXPCEvent *)v8 setInfo:v16];

    sendNDDXPCEvent2 = [(CWFNearbyDeviceDiscoveryManager *)self sendNDDXPCEvent];
    (sendNDDXPCEvent2)[2](sendNDDXPCEvent2, v8);

    [(CWFNearbyDeviceDiscoveryManager *)self set_currentNDDRequest:0];
    [(CWFNearbyDeviceDiscoveryManager *)self set_interface:0];
    v18 = 0;
  }

  else
  {
    v20 = CWFGetOSLog();
    if (v20)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = 136446722;
      v26 = "[CWFNearbyDeviceDiscoveryManager handleNDDDoneEvent:interface:]";
      v27 = 2082;
      v28 = "CWFNearbyDeviceDiscoveryManager.m";
      v29 = 1024;
      v30 = 417;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v21, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid sendDone callback", &v25, 28);
    }

    v18 = -3931;
  }

  return v18;
}

- (void)handleDextCrashEvent
{
  [(CWFNearbyDeviceDiscoveryManager *)self set_didDriverCrash:1];
  _currentNDDRequest = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
  if (_currentNDDRequest)
  {
    v4 = _currentNDDRequest;
    _currentNDDRequest2 = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
    type = [_currentNDDRequest2 type];

    if (type != 3)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:-3931];
      _interface = [(CWFNearbyDeviceDiscoveryManager *)self _interface];
      [(CWFNearbyDeviceDiscoveryManager *)self handleNDDDoneEvent:v8 interface:_interface];
    }
  }
}

- (void)handleDriverAvailableEvent
{
  v25 = *MEMORY[0x1E69E9840];
  if (-[CWFNearbyDeviceDiscoveryManager _didDriverCrash](self, "_didDriverCrash") && (-[CWFNearbyDeviceDiscoveryManager _currentNDDRequest](self, "_currentNDDRequest"), (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, -[CWFNearbyDeviceDiscoveryManager _currentNDDRequest](self, "_currentNDDRequest"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 type], v5, v4, v6 == 3) && (-[CWFNearbyDeviceDiscoveryManager sendNDDRequest](self, "sendNDDRequest"), v7 = objc_claimAutoreleasedReturnValue(), -[CWFNearbyDeviceDiscoveryManager _currentNDDRequest](self, "_currentNDDRequest"), v8 = objc_claimAutoreleasedReturnValue(), -[CWFNearbyDeviceDiscoveryManager getRequestDataFromParams:](self, "getRequestDataFromParams:", v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = (v7)[2](v7, v9), v9, v8, v7, v10 != -3931))
  {
    v11 = CWFGetOSLog();
    if (v11)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _currentNDDRequest = [(CWFNearbyDeviceDiscoveryManager *)self _currentNDDRequest];
      v15 = 136447234;
      v16 = "[CWFNearbyDeviceDiscoveryManager handleDriverAvailableEvent]";
      v17 = 2082;
      v18 = "CWFNearbyDeviceDiscoveryManager.m";
      v19 = 1024;
      v20 = 447;
      v21 = 2114;
      v22 = _currentNDDRequest;
      v23 = 1024;
      v24 = v10;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to set NDDRequest %{public}@ to driver[%d]", &v15, 44);
    }
  }

  else
  {

    [(CWFNearbyDeviceDiscoveryManager *)self set_didDriverCrash:0];
  }
}

@end