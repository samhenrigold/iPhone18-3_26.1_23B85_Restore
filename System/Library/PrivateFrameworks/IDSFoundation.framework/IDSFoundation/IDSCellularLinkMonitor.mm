@interface IDSCellularLinkMonitor
+ (id)sharedInstance;
- (BOOL)_dataContextUsable:(id)usable dataStatus:(id)status;
- (BOOL)_updateCellularDataInterface:(BOOL)interface;
- (BOOL)_updateCellularDataInterfaceNameByConnectionState:(int)state isStateActiveRequired:(BOOL)required interfaceName:(id)name;
- (BOOL)_updateCellularMTU;
- (BOOL)_updateDataBearerSoMask;
- (BOOL)_updateDataBearerSoMaskWithCTDataStatus:(id)status;
- (BOOL)_updateRadioAccessTechnology;
- (BOOL)_updateRadioAccessTechnologyWithCTDataStatus:(id)status;
- (BOOL)dataUsable;
- (BOOL)dropIPPackets:(id)packets localAddress:(sockaddr *)address remoteAddress:(sockaddr *)remoteAddress isRelay:(BOOL)relay channelNumberMSB:(unsigned __int8)b ifname:(id)ifname;
- (BOOL)isSlicedCellularInterfaceActive:(id)active;
- (BOOL)setPacketNotificationFilter:(const sockaddr *)filter remote:(const sockaddr *)remote uniqueTag:(unsigned int)tag callType:(unsigned __int8)type ifname:(id)ifname;
- (IDSCellularLinkMonitor)init;
- (NSString)cellularDataInterfaceName;
- (id)_getCTXPCServiceSubscriptionContext;
- (id)_getCurrentDataSimContext:(id)context inContextArray:(id)array;
- (id)_getDataStatus;
- (unsigned)cellularMTU;
- (unsigned)dataSoMaskBits;
- (unsigned)radioAccessTechnology;
- (void)_notifyClientDataBearerSoMask:(id)mask;
- (void)_setupCTServerConnection;
- (void)_updateDataStatus;
- (void)addCellularLinkDelegate:(id)delegate;
- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info;
- (void)currentCellularSignalStrength:(int *)strength signalStrength:(int *)signalStrength signalGrade:(int *)grade;
- (void)dataStatus:(id)status dataStatusInfo:(id)info;
- (void)dealloc;
- (void)preferredDataSimChanged:(id)changed;
- (void)processCTConnectionStateChangeNotification:(id)notification connectionStatus:(id)status;
- (void)registerCellularDataStatusNotification:(BOOL)notification;
- (void)removeCellularLinkDelegate:(id)delegate;
- (void)removePacketNotificationFilter;
- (void)reset;
- (void)setRemoteDeviceVersion:(unsigned int)version;
- (void)updateProtocolQualityOfService:(BOOL)service localAddress:(sockaddr *)address;
@end

@implementation IDSCellularLinkMonitor

+ (id)sharedInstance
{
  if (qword_1ED5DF6C0 != -1)
  {
    sub_1A7E14574();
  }

  v3 = qword_1ED5DF710;

  return v3;
}

- (IDSCellularLinkMonitor)init
{
  v15.receiver = self;
  v15.super_class = IDSCellularLinkMonitor;
  v2 = [(IDSCellularLinkMonitor *)&v15 init];
  if (v2)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "IDSCellularLinkMonitor init", v14, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"IDSCellularLinkMonitor init", v4, v5, v6, v7, v8, *v14);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSCellularLinkMonitor init", v9, v10, v11, v12, *v14);
        }
      }
    }

    [(IDSCellularLinkMonitor *)v2 _setupCTServerConnection];
    [(IDSCellularLinkMonitor *)v2 _updateCellularDataInterface:0];
    [(IDSCellularLinkMonitor *)v2 _updateRadioAccessTechnology];
    [(IDSCellularLinkMonitor *)v2 _updateCellularMTU];
    [(IDSCellularLinkMonitor *)v2 _updateDataStatus];
  }

  return v2;
}

- (void)dealloc
{
  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
    self->_ctServerConnection = 0;
  }

  [(CoreTelephonyClient *)self->_ctClient setDelegate:0];
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "IDSCellularLinkMonitor dealloc", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"IDSCellularLinkMonitor dealloc", v5, v6, v7, v8, v9, v14.receiver);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSCellularLinkMonitor dealloc", v10, v11, v12, v13, v14.receiver);
      }
    }
  }

  v14.receiver = self;
  v14.super_class = IDSCellularLinkMonitor;
  [(IDSCellularLinkMonitor *)&v14 dealloc];
}

- (void)addCellularLinkDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A7B55A04;
    v6[3] = &unk_1E77E0250;
    v6[4] = self;
    v7 = delegateCopy;
    IDSTransportThreadAddBlock(v6);
  }
}

- (void)removeCellularLinkDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A7B55C1C;
    v6[3] = &unk_1E77E0250;
    v7 = delegateCopy;
    selfCopy = self;
    IDSTransportThreadAddBlock(v6);
  }
}

- (void)_setupCTServerConnection
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_ctServerConnection)
  {
    v3 = im_primary_queue();
    self->_ctServerConnection = _CTServerConnectionCreateOnTargetQueue();

    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      ctServerConnection = self->_ctServerConnection;
      *buf = 138412290;
      v20 = ctServerConnection;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "created CT server connection %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"created CT server connection %@.", v6, v7, v8, v9, v10, self->_ctServerConnection);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"created CT server connection %@.", v11, v12, v13, v14, self->_ctServerConnection);
      }
    }

    v15 = objc_alloc(MEMORY[0x1E69650A0]);
    v16 = im_primary_queue();
    v17 = [v15 initWithQueue:v16];
    ctClient = self->_ctClient;
    self->_ctClient = v17;
  }
}

- (id)_getCurrentDataSimContext:(id)context inContextArray:(id)array
{
  v33 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  arrayCopy = array;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = contextCopy;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "currentDataSimContext: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"currentDataSimContext: %@", v8, v9, v10, v11, v12, contextCopy);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"currentDataSimContext: %@", v13, v14, v15, v16, contextCopy);
      }
    }
  }

  if (!contextCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = arrayCopy;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = *v27;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v26 + 1) + 8 * i);
          userDataPreferred = [v22 userDataPreferred];
          v24 = [userDataPreferred intValue] == 0;

          if (!v24)
          {
            v17 = v22;

            goto LABEL_19;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = contextCopy;
LABEL_19:

  return v17;
}

- (id)_getCTXPCServiceSubscriptionContext
{
  v26 = *MEMORY[0x1E69E9840];
  ctClient = self->_ctClient;
  v23 = 0;
  v4 = [(CoreTelephonyClient *)ctClient getSubscriptionInfoWithError:&v23];
  v5 = v23;
  subscriptions = [v4 subscriptions];

  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = subscriptions;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "getCTXPCServiceSubscriptionContext: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"getCTXPCServiceSubscriptionContext: %@", v8, v9, v10, v11, v12, subscriptions);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"getCTXPCServiceSubscriptionContext: %@", v13, v14, v15, v16, subscriptions);
      }
    }
  }

  v17 = self->_ctClient;
  v22 = v5;
  v18 = [(CoreTelephonyClient *)v17 getCurrentDataSubscriptionContextSync:&v22];
  v19 = v22;

  v20 = [(IDSCellularLinkMonitor *)self _getCurrentDataSimContext:v18 inContextArray:subscriptions];

  return v20;
}

- (BOOL)_updateCellularDataInterfaceNameByConnectionState:(int)state isStateActiveRequired:(BOOL)required interfaceName:(id)name
{
  requiredCopy = required;
  v51 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!state && requiredCopy)
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "_updateCellularDataInterfaceNameByConnectionState: connectionStatus state is inactive, return", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_updateCellularDataInterfaceNameByConnectionState: connectionStatus state is inactive, return", v11, v12, v13, v14, v15, v45);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateCellularDataInterfaceNameByConnectionState: connectionStatus state is inactive, return", v16, v17, v18, v19, v46);
        }
      }
    }

LABEL_16:
    v32 = 0;
    goto LABEL_24;
  }

  v20 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = nameCopy;
    _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "newCelularDataInterfaceName: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"newCelularDataInterfaceName: %@", v21, v22, v23, v24, v25, nameCopy);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"newCelularDataInterfaceName: %@", v26, v27, v28, v29, nameCopy);
      }
    }
  }

  cellularDataInterfaceName = self->_cellularDataInterfaceName;
  p_cellularDataInterfaceName = &self->_cellularDataInterfaceName;
  if (([(NSString *)cellularDataInterfaceName isEqualToIgnoringCase:nameCopy]& 1) != 0)
  {
    goto LABEL_16;
  }

  v33 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = *p_cellularDataInterfaceName;
    *buf = 138412546;
    v48 = v34;
    v49 = 2112;
    v50 = nameCopy;
    _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "update cellular data interface name [%@->%@].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update cellular data interface name [%@->%@].", v35, v36, v37, v38, v39, *p_cellularDataInterfaceName);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update cellular data interface name [%@->%@].", v40, v41, v42, v43, *p_cellularDataInterfaceName);
      }
    }
  }

  objc_storeStrong(p_cellularDataInterfaceName, name);
  v32 = 1;
LABEL_24:

  return v32;
}

- (BOOL)_updateCellularDataInterface:(BOOL)interface
{
  v61 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    interfaceCopy = interface;
    _getCTXPCServiceSubscriptionContext = [(IDSCellularLinkMonitor *)self _getCTXPCServiceSubscriptionContext];
    if (_getCTXPCServiceSubscriptionContext)
    {
      ctClient = self->_ctClient;
      v56 = 0;
      v7 = [(CoreTelephonyClient *)ctClient getConnectionState:_getCTXPCServiceSubscriptionContext connectionType:0 error:&v56];
      v8 = v56;
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v7;
        _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "_updateCellularDataInterface: connectionStatus: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"_updateCellularDataInterface: connectionStatus: %@", v10, v11, v12, v13, v14, v7);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateCellularDataInterface: connectionStatus: %@", v15, v16, v17, v18, v7);
          }
        }
      }

      if (v7)
      {
        state = [v7 state];
        interfaceName = [v7 interfaceName];
        v21 = [(IDSCellularLinkMonitor *)self _updateCellularDataInterfaceNameByConnectionState:state isStateActiveRequired:interfaceCopy interfaceName:interfaceName];
      }

      else
      {
        v42 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v58 = v8;
          v59 = 2112;
          v60 = _getCTXPCServiceSubscriptionContext;
          _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "getConnectionState failed: %@ %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"getConnectionState failed: %@ %@", v43, v44, v45, v46, v47, v8);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"getConnectionState failed: %@ %@", v48, v49, v50, v51, v8);
            }
          }
        }

        v21 = 0;
      }
    }

    else
    {
      v32 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "_updateCellularDataInterface: failed to get context", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"_updateCellularDataInterface: failed to get context", v33, v34, v35, v36, v37, v53);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateCellularDataInterface: failed to get context", v38, v39, v40, v41, v55);
          }
        }
      }

      v8 = 0;
      v21 = 0;
    }
  }

  else
  {
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "failed to get cellular data interface name due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get cellular data interface name due to invalid CT server connection.", v23, v24, v25, v26, v27, v53);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get cellular data interface name due to invalid CT server connection.", v28, v29, v30, v31, v54);
        }
      }
    }

    return 0;
  }

  return v21;
}

- (id)_getDataStatus
{
  v47 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    _getCTXPCServiceSubscriptionContext = [(IDSCellularLinkMonitor *)self _getCTXPCServiceSubscriptionContext];
    if (_getCTXPCServiceSubscriptionContext)
    {
      ctClient = self->_ctClient;
      v42 = 0;
      v5 = [(CoreTelephonyClient *)ctClient getDataStatus:_getCTXPCServiceSubscriptionContext error:&v42];
      v6 = v42;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v28 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v44 = v6;
          v45 = 2112;
          v46 = _getCTXPCServiceSubscriptionContext;
          _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "getDataStatus failed: %@ %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"getDataStatus failed: %@ %@", v29, v30, v31, v32, v33, v6);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"getDataStatus failed: %@ %@", v34, v35, v36, v37, v6);
            }
          }
        }
      }
    }

    else
    {
      v18 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "_getDataStatus: failed to get context", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"_getDataStatus: failed to get context", v19, v20, v21, v22, v23, v39);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"_getDataStatus: failed to get context", v24, v25, v26, v27, v41);
          }
        }
      }

      v5 = 0;
    }
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "failed to get data status due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get data status due to invalid CT server connection.", v9, v10, v11, v12, v13, v39);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get data status due to invalid CT server connection.", v14, v15, v16, v17, v40);
        }
      }
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)_updateRadioAccessTechnology
{
  _getDataStatus = [(IDSCellularLinkMonitor *)self _getDataStatus];
  if (_getDataStatus)
  {
    v4 = [(IDSCellularLinkMonitor *)self _updateRadioAccessTechnologyWithCTDataStatus:_getDataStatus];
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "_updateRadioAccessTechnology failed to get data status", v16, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_updateRadioAccessTechnology failed to get data status", v6, v7, v8, v9, v10, *v16);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateRadioAccessTechnology failed to get data status", v11, v12, v13, v14, *v16);
        }
      }
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)_updateRadioAccessTechnologyWithCTDataStatus:(id)status
{
  v62 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  indicator = [statusCopy indicator];
  radioTechnology = [statusCopy radioTechnology];
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    remoteDeviceVersion = self->_remoteDeviceVersion;
    *buf = 67109890;
    *v58 = radioTechnology;
    *&v58[4] = 1024;
    *&v58[6] = indicator;
    *v59 = 2112;
    *&v59[2] = statusCopy;
    v60 = 1024;
    v61 = remoteDeviceVersion;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "_updateRadioAccessTechnology: radioAccessTech: %d, data indicator: %d, data status: %@, _remoteDeviceVersion: %u", buf, 0x1Eu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_updateRadioAccessTechnology: radioAccessTech: %d, data indicator: %d, data status: %@, _remoteDeviceVersion: %u", v9, v10, v11, v12, v13, radioTechnology);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateRadioAccessTechnology: radioAccessTech: %d, data indicator: %d, data status: %@, _remoteDeviceVersion: %u", v14, v15, v16, v17, radioTechnology);
      }
    }
  }

  if (radioTechnology > 6)
  {
    if ((radioTechnology - 7) >= 2)
    {
      if (radioTechnology == 9)
      {
        v18 = 7;
        goto LABEL_39;
      }

      if (radioTechnology != 10)
      {
        goto LABEL_31;
      }

      if (self->_remoteDeviceVersion != 1)
      {
        v18 = 8;
        goto LABEL_39;
      }

      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "remote is preAzul that doesn't support NR, change NR to LTE", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"remote is preAzul that doesn't support NR, change NR to LTE", v20, v21, v22, v23, v24, v55);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"remote is preAzul that doesn't support NR, change NR to LTE", v25, v26, v27, v28, v56);
          }
        }
      }
    }

    v18 = 5;
    goto LABEL_39;
  }

  if (radioTechnology > 3)
  {
    if ((radioTechnology - 4) < 2)
    {
      v18 = 3;
      goto LABEL_39;
    }
  }

  else
  {
    switch(radioTechnology)
    {
      case 0:
        v18 = 2;
        goto LABEL_39;
      case 2:
        if ((indicator - 3) >= 3)
        {
          v18 = 1;
        }

        else
        {
          v18 = 6;
        }

        goto LABEL_39;
      case 3:
        v18 = 4;
        goto LABEL_39;
    }
  }

LABEL_31:
  v29 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v58 = radioTechnology;
    _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "receive unknown RAT: %d.", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"receive unknown RAT: %d.", v30, v31, v32, v33, v34, radioTechnology);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive unknown RAT: %d.", v35, v36, v37, v38, radioTechnology);
      }
    }
  }

  v18 = 10;
LABEL_39:
  radioAccessTechnology = self->_radioAccessTechnology;
  if (radioAccessTechnology != v18)
  {
    v40 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = IDSRadioAccessTechnologyToString(self->_radioAccessTechnology);
      v42 = IDSRadioAccessTechnologyToString(v18);
      *buf = 136315394;
      *v58 = v41;
      *&v58[8] = 2080;
      *v59 = v42;
      _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "update cellular RAT [%s->%s].", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v43 = IDSRadioAccessTechnologyToString(self->_radioAccessTechnology);
        IDSRadioAccessTechnologyToString(v18);
        _IDSLogTransport(@"GL", @"IDS", @"update cellular RAT [%s->%s].", v44, v45, v46, v47, v48, v43);
        if (_IDSShouldLog(0))
        {
          v49 = IDSRadioAccessTechnologyToString(self->_radioAccessTechnology);
          IDSRadioAccessTechnologyToString(v18);
          _IDSLogV(0, @"IDSFoundation", @"GL", @"update cellular RAT [%s->%s].", v50, v51, v52, v53, v49);
        }
      }
    }

    self->_radioAccessTechnology = v18;
  }

  return radioAccessTechnology != v18;
}

- (BOOL)_updateDataBearerSoMask
{
  _getDataStatus = [(IDSCellularLinkMonitor *)self _getDataStatus];
  if (_getDataStatus)
  {
    v4 = [(IDSCellularLinkMonitor *)self _updateDataBearerSoMaskWithCTDataStatus:_getDataStatus];
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "_updateDataBearerSoMask failed  to get data status", v16, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_updateDataBearerSoMask failed  to get data status", v6, v7, v8, v9, v10, *v16);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateDataBearerSoMask failed  to get data status", v11, v12, v13, v14, *v16);
        }
      }
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)_updateDataBearerSoMaskWithCTDataStatus:(id)status
{
  v44 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v5 = statusCopy;
  if (!statusCopy)
  {
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "_updateDataBearerSoMask: No CTDataStatus", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_updateDataBearerSoMask: No CTDataStatus", v22, v23, v24, v25, v26, v32);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateDataBearerSoMask: No CTDataStatus", v27, v28, v29, v30, v33);
        }
      }
    }

    goto LABEL_16;
  }

  indicator = [statusCopy indicator];
  radioTechnology = [v5 radioTechnology];
  dataBearerSoMask = [v5 dataBearerSoMask];
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    dataSoMaskBits = self->_dataSoMaskBits;
    *buf = 67110146;
    v35 = radioTechnology;
    v36 = 1024;
    v37 = indicator;
    v38 = 1024;
    v39 = dataBearerSoMask;
    v40 = 1024;
    v41 = dataSoMaskBits;
    v42 = 2112;
    v43 = v5;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "_updateDataBearerSoMask: radioAccessTech: %d, data indicator: %d, soMask: %u, _dataSoMaskBits: %u, data status: %@", buf, 0x24u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_updateDataBearerSoMask: radioAccessTech: %d, data indicator: %d, soMask: %u, _dataSoMaskBits: %u, data status: %@", v11, v12, v13, v14, v15, radioTechnology);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateDataBearerSoMask: radioAccessTech: %d, data indicator: %d, soMask: %u, _dataSoMaskBits: %u, data status: %@", v16, v17, v18, v19, radioTechnology);
      }
    }
  }

  if (dataBearerSoMask == self->_dataSoMaskBits)
  {
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  self->_dataSoMaskBits = dataBearerSoMask;
  v20 = 1;
LABEL_17:

  return v20;
}

- (BOOL)_updateCellularMTU
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    v2 = _CTServerConnectionCopyCurrentMTU();
    v3 = v2;
    if (!v2)
    {
LABEL_15:
      LOBYTE(v6) = 0;
      return v6;
    }

    v4 = HIDWORD(v2);
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v30 = v3;
      v31 = 1024;
      v32 = v4;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "failed to get cellular MTU (error:%d.%d)", buf, 0xEu);
    }

    v6 = os_log_shim_legacy_logging_enabled();
    if (v6)
    {
      v6 = _IDSShouldLogTransport();
      if (v6)
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get cellular MTU (error:%d.%d)", v7, v8, v9, v10, v11, v3);
        v6 = _IDSShouldLog(0);
        if (v6)
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get cellular MTU (error:%d.%d)", v12, v13, v14, v15, v3);
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "failed to get cellular MTU due to invalid CT server connection.", buf, 2u);
    }

    v6 = os_log_shim_legacy_logging_enabled();
    if (v6)
    {
      v6 = _IDSShouldLogTransport();
      if (v6)
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get cellular MTU due to invalid CT server connection.", v17, v18, v19, v20, v21, v27);
        v6 = _IDSShouldLog(0);
        if (v6)
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get cellular MTU due to invalid CT server connection.", v22, v23, v24, v25, v28);
          goto LABEL_15;
        }
      }
    }
  }

  return v6;
}

- (BOOL)_dataContextUsable:(id)usable dataStatus:(id)status
{
  result = 0;
  if (usable && status)
  {
    statusCopy = status;
    usableCopy = usable;
    cellularDataPossible = [statusCopy cellularDataPossible];
    state = [usableCopy state];

    LODWORD(usableCopy) = [statusCopy indicator];
    if (usableCopy)
    {
      v10 = state == 2;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    return v11 & cellularDataPossible;
  }

  return result;
}

- (void)_updateDataStatus
{
  v71 = *MEMORY[0x1E69E9840];
  _getCTXPCServiceSubscriptionContext = [(IDSCellularLinkMonitor *)self _getCTXPCServiceSubscriptionContext];
  if (_getCTXPCServiceSubscriptionContext)
  {
    ctClient = self->_ctClient;
    v65 = 0;
    v5 = [(CoreTelephonyClient *)ctClient getConnectionState:_getCTXPCServiceSubscriptionContext connectionType:0 error:&v65];
    v6 = v65;
    if (v5)
    {
      _getDataStatus = [(IDSCellularLinkMonitor *)self _getDataStatus];
      if (_getDataStatus)
      {
        v8 = [(IDSCellularLinkMonitor *)self _dataContextUsable:v5 dataStatus:_getDataStatus];
        v9 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          dataUsable = self->_dataUsable;
          *buf = 67109890;
          *v67 = v8;
          *&v67[4] = 1024;
          *&v67[6] = dataUsable;
          *v68 = 2112;
          *&v68[2] = v5;
          v69 = 2112;
          v70 = _getDataStatus;
          _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "_updateDataStatus: %d %d, connection status: %@, data status: %@", buf, 0x22u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"_updateDataStatus: %d %d, connection status: %@, data status: %@", v11, v12, v13, v14, v15, v8);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateDataStatus: %d %d, connection status: %@, data status: %@", v16, v17, v18, v19, v8);
            }
          }
        }

        if (self->_dataUsable != v8)
        {
          self->_dataUsable = v8;
          v20 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = @"NO";
            if (v8)
            {
              v21 = @"YES";
            }

            *buf = 138412290;
            *v67 = v21;
            _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "cellular data usable: %@.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            if (v8)
            {
              v27 = @"YES";
            }

            else
            {
              v27 = @"NO";
            }

            _IDSLogTransport(@"GL", @"IDS", @"cellular data usable: %@.", v22, v23, v24, v25, v26, v27);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"cellular data usable: %@.", v28, v29, v30, v31, v27);
            }
          }
        }
      }

      else
      {
        v52 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v52, OS_LOG_TYPE_DEFAULT, "_updateDataStatus failed to get data status", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"_updateDataStatus failed to get data status", v53, v54, v55, v56, v57, v62);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateDataStatus failed to get data status", v58, v59, v60, v61, v64);
            }
          }
        }
      }
    }

    else
    {
      v42 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v67 = v6;
        *&v67[8] = 2112;
        *v68 = _getCTXPCServiceSubscriptionContext;
        _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "getConnectionState failed: %@ %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"getConnectionState failed: %@ %@", v43, v44, v45, v46, v47, v6);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"getConnectionState failed: %@ %@", v48, v49, v50, v51, v6);
          }
        }
      }
    }
  }

  else
  {
    v32 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "_updateDataStatus: failed to get context", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_updateDataStatus: failed to get context", v33, v34, v35, v36, v37, v62);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateDataStatus: failed to get context", v38, v39, v40, v41, v63);
        }
      }
    }

    v6 = 0;
  }
}

- (void)processCTConnectionStateChangeNotification:(id)notification connectionStatus:(id)status
{
  v73 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  statusCopy = status;
  ctClient = self->_ctClient;
  v63 = 0;
  v9 = [(CoreTelephonyClient *)ctClient getDataStatus:notificationCopy error:&v63];
  v58 = v63;
  if (v9)
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v66 = statusCopy;
      v67 = 2112;
      *v68 = v9;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "processCTConnectionStateChangeNotification: %@ %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"processCTConnectionStateChangeNotification: %@ %@", v11, v12, v13, v14, v15, statusCopy);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"processCTConnectionStateChangeNotification: %@ %@", v16, v17, v18, v19, statusCopy);
        }
      }
    }

    indicator = [v9 indicator];
    v21 = [(IDSCellularLinkMonitor *)self _dataContextUsable:statusCopy dataStatus:v9];
    v22 = v21;
    dataUsable = self->_dataUsable;
    if (dataUsable != v21)
    {
      self->_dataUsable = v21;
    }

    v24 = dataUsable != v21;
    v25 = [(IDSCellularLinkMonitor *)self _updateCellularDataInterface:0];
    _updateCellularMTU = [(IDSCellularLinkMonitor *)self _updateCellularMTU];
    if ([(IDSCellularLinkMonitor *)self _updateRadioAccessTechnologyWithCTDataStatus:v9]|| _updateCellularMTU || v24 || v25)
    {
      v27 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        cellularDataInterfaceName = self->_cellularDataInterfaceName;
        cellularMTU = self->_cellularMTU;
        v30 = IDSRadioAccessTechnologyToString(self->_radioAccessTechnology);
        v31 = @"NO";
        *buf = 138413314;
        if (v22)
        {
          v31 = @"YES";
        }

        v66 = v31;
        v67 = 1024;
        *v68 = indicator;
        *&v68[4] = 2112;
        *&v68[6] = cellularDataInterfaceName;
        v69 = 1024;
        v70 = cellularMTU;
        v71 = 2080;
        v72 = v30;
        _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "cellular data usable: %@ (indicator:%d, if:[%@], mtu:%u, RAT:[%s]).", buf, 0x2Cu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v32 = v22 ? @"YES" : @"NO";
        IDSRadioAccessTechnologyToString(self->_radioAccessTechnology);
        _IDSLogTransport(@"GL", @"IDS", @"cellular data usable: %@ (indicator:%d, if:[%@], mtu:%u, RAT:[%s]).", v33, v34, v35, v36, v37, v32);
        if (_IDSShouldLog(0))
        {
          IDSRadioAccessTechnologyToString(self->_radioAccessTechnology);
          _IDSLogV(0, @"IDSFoundation", @"GL", @"cellular data usable: %@ (indicator:%d, if:[%@], mtu:%u, RAT:[%s]).", v38, v39, v40, v41, v32);
        }
      }

      allObjects = [(NSHashTable *)self->_cellularLinkDelegates allObjects];
      v43 = [allObjects copy];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v44 = v43;
      v45 = [v44 countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (v45)
      {
        v46 = *v60;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v60 != v46)
            {
              objc_enumerationMutation(v44);
            }

            [*(*(&v59 + 1) + 8 * i) cellularRadioAccessTechnologyDidChange:v22];
          }

          v45 = [v44 countByEnumeratingWithState:&v59 objects:v64 count:16];
        }

        while (v45);
      }
    }
  }

  else
  {
    v48 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v66 = v58;
      v67 = 2112;
      *v68 = notificationCopy;
      _os_log_impl(&dword_1A7AD9000, v48, OS_LOG_TYPE_DEFAULT, "getDataStatus failed: %@ %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"getDataStatus failed: %@ %@", v49, v50, v51, v52, v53, v58);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"getDataStatus failed: %@ %@", v54, v55, v56, v57, v58);
        }
      }
    }
  }
}

- (void)reset
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "reset cellular link monitor %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"reset cellular link monitor %@.", v4, v5, v6, v7, v8, self);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"reset cellular link monitor %@.", v9, v10, v11, v12, self);
      }
    }
  }

  cellularDataInterfaceName = self->_cellularDataInterfaceName;
  self->_cellularDataInterfaceName = 0;

  *&self->_radioAccessTechnology = 10;
  self->_dataUsable = 0;
  *&self->_dataSoMaskBits = 0;
}

- (NSString)cellularDataInterfaceName
{
  cellularDataInterfaceName = self->_cellularDataInterfaceName;
  if (!cellularDataInterfaceName)
  {
    [(IDSCellularLinkMonitor *)self _updateCellularDataInterface:1];
    cellularDataInterfaceName = self->_cellularDataInterfaceName;
  }

  return cellularDataInterfaceName;
}

- (unsigned)radioAccessTechnology
{
  result = self->_radioAccessTechnology;
  if (result == 10)
  {
    [(IDSCellularLinkMonitor *)self _updateRadioAccessTechnology];
    return self->_radioAccessTechnology;
  }

  else if (result == 8 && self->_remoteDeviceVersion == 1)
  {
    result = 5;
    self->_radioAccessTechnology = 5;
  }

  return result;
}

- (unsigned)cellularMTU
{
  result = self->_cellularMTU;
  if (!result)
  {
    [(IDSCellularLinkMonitor *)self _updateCellularMTU];
    return self->_cellularMTU;
  }

  return result;
}

- (BOOL)dataUsable
{
  if (self->_dataUsable)
  {
    return 1;
  }

  else
  {
    [(IDSCellularLinkMonitor *)self _updateDataStatus];
    return self->_dataUsable;
  }
}

- (unsigned)dataSoMaskBits
{
  result = self->_dataSoMaskBits;
  if (!result)
  {
    [(IDSCellularLinkMonitor *)self _updateDataBearerSoMask];
    return self->_dataSoMaskBits;
  }

  return result;
}

- (void)removePacketNotificationFilter
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection && self->_notificationRegInfo)
  {
    _CTServerConnectionSetPacketNotificationFilter();
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      notificationRegInfo = self->_notificationRegInfo;
      *buf = 138412290;
      v16 = notificationRegInfo;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "removed packet notification filter for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"removed packet notification filter for %@.", v5, v6, v7, v8, v9, self->_notificationRegInfo);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"removed packet notification filter for %@.", v10, v11, v12, v13, self->_notificationRegInfo);
      }
    }

    v14 = self->_notificationRegInfo;
    self->_notificationRegInfo = 0;
  }
}

- (BOOL)setPacketNotificationFilter:(const sockaddr *)filter remote:(const sockaddr *)remote uniqueTag:(unsigned int)tag callType:(unsigned __int8)type ifname:(id)ifname
{
  typeCopy = type;
  *&v77[5] = *MEMORY[0x1E69E9840];
  ifnameCopy = ifname;
  if (!self->_ctServerConnection)
  {
    v24 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "failed to set packet notification filter due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to set packet notification filter due to invalid CT server connection.", v25, v26, v27, v28, v29, v73);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to set packet notification filter due to invalid CT server connection.", v30, v31, v32, v33, v74);
        }
      }
    }

    goto LABEL_34;
  }

  if (filter->sa_family != remote->sa_family)
  {
    v34 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "failed to set packet notification filter due to address family mismatch.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to set packet notification filter due to address family mismatch.", v35, v36, v37, v38, v39, v73);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to set packet notification filter due to address family mismatch.", v40, v41, v42, v43, v75);
        }
      }
    }

LABEL_34:
    v44 = 0;
    goto LABEL_60;
  }

  [(IDSCellularLinkMonitor *)self removePacketNotificationFilter];
  if (!self->_notificationRegInfo)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    notificationRegInfo = self->_notificationRegInfo;
    self->_notificationRegInfo = Mutable;
  }

  if (ifnameCopy)
  {
    CFDictionarySetValue(self->_notificationRegInfo, *MEMORY[0x1E6965278], ifnameCopy);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:typeCopy];
  if (v16)
  {
    CFDictionarySetValue(v15, *MEMORY[0x1E69652F0], v16);
  }

  v17 = [MEMORY[0x1E696AD98] numberWithInt:bswap32(tag)];
  if (v17)
  {
    CFDictionarySetValue(v15, *MEMORY[0x1E6965368], v17);
  }

  v18 = *filter->sa_data;
  if (filter->sa_family == 2)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithShort:v18];
    if (v19)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E6965300], v19);
    }

    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&filter->sa_data[2] length:4];
    if (v20)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E69652F8], v20);
    }

    v21 = [MEMORY[0x1E696AD98] numberWithShort:*remote->sa_data];
    if (v21)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E6965350], v21);
    }

    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&remote->sa_data[2] length:4];

    if (v22)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E6965348], v22);
    }

    if (!v15)
    {
      goto LABEL_46;
    }

    v23 = MEMORY[0x1E6965318];
  }

  else
  {
    v45 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v18];
    if (v45)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E6965300], v45);
    }

    v46 = [MEMORY[0x1E695DEF0] dataWithBytes:&filter->sa_data[6] length:16];
    if (v46)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E69652F8], v46);
    }

    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*remote->sa_data];
    if (v47)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E6965350], v47);
    }

    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&remote->sa_data[6] length:16];

    if (v22)
    {
      CFDictionarySetValue(v15, *MEMORY[0x1E6965348], v22);
    }

    if (!v15)
    {
      goto LABEL_46;
    }

    v23 = MEMORY[0x1E6965320];
  }

  CFDictionarySetValue(self->_notificationRegInfo, *v23, v15);
LABEL_46:
  v48 = _CTServerConnectionSetPacketNotificationFilter();
  v49 = v48;
  v44 = v48 == 0;
  if (v48)
  {
    v50 = HIDWORD(v48);
    v51 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v77[0] = v49;
      LOWORD(v77[1]) = 1024;
      *(&v77[1] + 2) = v50;
      _os_log_impl(&dword_1A7AD9000, v51, OS_LOG_TYPE_DEFAULT, "failed to set packet notification filter (error: %d.%d).", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to set packet notification filter (error: %d.%d).", v52, v53, v54, v55, v56, v49);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to set packet notification filter (error: %d.%d).", v57, v58, v59, v60, v49);
        }
      }
    }
  }

  else
  {
    v61 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = self->_notificationRegInfo;
      *buf = 138412290;
      *v77 = v62;
      _os_log_impl(&dword_1A7AD9000, v61, OS_LOG_TYPE_DEFAULT, "set packet notification filter for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"set packet notification filter for %@.", v63, v64, v65, v66, v67, self->_notificationRegInfo);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"set packet notification filter for %@.", v68, v69, v70, v71, self->_notificationRegInfo);
        }
      }
    }
  }

LABEL_60:
  return v44;
}

- (void)setRemoteDeviceVersion:(unsigned int)version
{
  v3 = *&version;
  v17 = *MEMORY[0x1E69E9840];
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v3;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "CellularLinkMonitor: set remote device version: %u", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"CellularLinkMonitor: set remote device version: %u", v6, v7, v8, v9, v10, v3);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"CellularLinkMonitor: set remote device version: %u", v11, v12, v13, v14, v3);
      }
    }
  }

  self->_remoteDeviceVersion = v3;
}

- (BOOL)dropIPPackets:(id)packets localAddress:(sockaddr *)address remoteAddress:(sockaddr *)remoteAddress isRelay:(BOOL)relay channelNumberMSB:(unsigned __int8)b ifname:(id)ifname
{
  bCopy = b;
  relayCopy = relay;
  v126 = *MEMORY[0x1E69E9840];
  packetsCopy = packets;
  value = ifname;
  v102 = packetsCopy;
  if (!self->_ctServerConnection)
  {
    v43 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v43, OS_LOG_TYPE_DEFAULT, "failed to drop IP packets due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to drop IP packets due to invalid CT server connection.", v44, v45, v46, v47, v48, v98);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to drop IP packets due to invalid CT server connection.", v49, v50, v51, v52, v99);
        }
      }
    }

    goto LABEL_98;
  }

  if (!address || !remoteAddress)
  {
    v53 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v53, OS_LOG_TYPE_DEFAULT, "failed to drop IP packets due to invalid address.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to drop IP packets due to invalid address.", v54, v55, v56, v57, v58, v98);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to drop IP packets due to invalid address.", v59, v60, v61, v62, v100);
        }
      }
    }

LABEL_98:
    v63 = 0;
    goto LABEL_123;
  }

  if (address->sa_family == 2)
  {
    v15 = 28;
  }

  else
  {
    v15 = 48;
  }

  if (address->sa_family == 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v114 = *address->sa_data;
  v115 = v15;
  v113 = *remoteAddress->sa_data;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = packetsCopy;
  v17 = [obj countByEnumeratingWithState:&v118 objects:v125 count:16];
  if (!v17)
  {

    goto LABEL_114;
  }

  v18 = 0;
  v19 = 0;
  if (relayCopy)
  {
    v20 = 4;
  }

  else
  {
    v20 = 0;
  }

  v103 = v20 + v115;
  v111 = *MEMORY[0x1E6965310];
  v110 = *MEMORY[0x1E6965350];
  v109 = *MEMORY[0x1E6965300];
  v108 = *MEMORY[0x1E6965338];
  v104 = *MEMORY[0x1E6965340];
  v107 = *MEMORY[0x1E6965360];
  v106 = *MEMORY[0x1E6965358];
  v105 = *MEMORY[0x1E6965308];
  v112 = *v119;
  for (i = *v119; ; i = *v119)
  {
    if (i != v112)
    {
      objc_enumerationMutation(obj);
    }

    v22 = *(*(&v118 + 1) + 8 * v19);
    v23 = v115;
    if (!bCopy)
    {
      if (v22)
      {
        v24 = @"qos-family-offset-bytes" == 0;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = CFDictionaryGetValue(*(*(&v118 + 1) + 8 * v19), @"qos-family-offset-bytes");
      }

      v23 = v103 + [v25 intValue];
    }

    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = [MEMORY[0x1E696AD98] numberWithChar:v16];
    if (v27)
    {
      CFDictionarySetValue(v26, v111, v27);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v123 = v111;
      *&v123[8] = 2080;
      v124 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v114];
    if (v28)
    {
      CFDictionarySetValue(v26, v110, v28);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v123 = v110;
      *&v123[8] = 2080;
      v124 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v113];
    if (v29)
    {
      CFDictionarySetValue(v26, v109, v29);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v123 = v109;
      *&v123[8] = 2080;
      v124 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    v30 = [MEMORY[0x1E696AD98] numberWithChar:v23];
    if (v30)
    {
      CFDictionarySetValue(v26, v108, v30);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v123 = v108;
      *&v123[8] = 2080;
      v124 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    if (bCopy)
    {
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:bCopy];
      if (v31)
      {
        CFDictionarySetValue(v26, v104, v31);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v123 = v104;
        *&v123[8] = 2080;
        v124 = "newPayloadDictionary";
        _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
      }
    }

    else if (v22 && @"qos-family-payload-type" && (v32 = CFDictionaryGetValue(v22, @"qos-family-payload-type")) != 0)
    {
      v33 = v32;
      CFDictionarySetValue(v26, v104, v32);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v123 = v104;
      *&v123[8] = 2080;
      v124 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    v34 = 0;
    if (v22 && @"qos-family-transaction-id")
    {
      v34 = CFDictionaryGetValue(v22, @"qos-family-transaction-id");
    }

    unsignedShortValue = [v34 unsignedShortValue];
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(unsignedShortValue)];
    if (v36)
    {
      CFDictionarySetValue(v26, v107, v36);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v123 = v107;
      *&v123[8] = 2080;
      v124 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    v37 = v22 != 0 && @"qos-family-timestamp-value" != 0 ? CFDictionaryGetValue(v22, @"qos-family-timestamp-value") : 0;
    unsignedIntValue = [v37 unsignedIntValue];
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(unsignedIntValue)];
    if (v39)
    {
      CFDictionarySetValue(v26, v106, v39);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v123 = v106;
      *&v123[8] = 2080;
      v124 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    v40 = v22 != 0 && @"qos-family-drop-operation" != 0 ? CFDictionaryGetValue(v22, @"qos-family-drop-operation") : 0;
    unsignedShortValue2 = [v40 unsignedShortValue];
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:__rev16(unsignedShortValue2)];
    if (v42)
    {
      CFDictionarySetValue(v26, v105, v42);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v123 = v105;
      *&v123[8] = 2080;
      v124 = "newPayloadDictionary";
      _os_log_error_impl(&dword_1A7AD9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
    }

    if (!v18)
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if (value && v18)
    {
      CFArrayAppendValue(v18, value);
    }

    if (v18 && v26)
    {
      CFArrayAppendValue(v18, v26);
    }

    if (++v19 >= v17)
    {
      break;
    }

LABEL_85:
    ;
  }

  v17 = [obj countByEnumeratingWithState:&v118 objects:v125 count:16];
  if (v17)
  {
    v19 = 0;
    goto LABEL_85;
  }

  if (!v18)
  {
LABEL_114:
    v87 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v87, OS_LOG_TYPE_DEFAULT, "dropIPPackets failed due to invalid payloadArray.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"dropIPPackets failed due to invalid payloadArray.", v88, v89, v90, v91, v92, v98);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"dropIPPackets failed due to invalid payloadArray.", v93, v94, v95, v96, v101);
        }
      }
    }

    v18 = 0;
LABEL_121:
    v63 = 0;
    goto LABEL_122;
  }

  v64 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v123 = v18;
    _os_log_impl(&dword_1A7AD9000, v64, OS_LOG_TYPE_DEFAULT, "drop IP packets for payload array %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"drop IP packets for payload array %@.", v65, v66, v67, v68, v69, v18);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"drop IP packets for payload array %@.", v70, v71, v72, v73, v18);
      }
    }
  }

  v74 = _CTServerConnectionDropIPPackets();
  v75 = v74;
  if (v74)
  {
    v76 = HIDWORD(v74);
    v77 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v123 = v75;
      *&v123[4] = 1024;
      *&v123[6] = v76;
      _os_log_impl(&dword_1A7AD9000, v77, OS_LOG_TYPE_DEFAULT, "CTServerConnectionDropIPPackets failed (error: %d.%d).", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"CTServerConnectionDropIPPackets failed (error: %d.%d).", v78, v79, v80, v81, v82, v75);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"CTServerConnectionDropIPPackets failed (error: %d.%d).", v83, v84, v85, v86, v75);
        }
      }
    }

    goto LABEL_121;
  }

  v63 = 1;
LABEL_122:

LABEL_123:
  return v63;
}

- (void)updateProtocolQualityOfService:(BOOL)service localAddress:(sockaddr *)address
{
  v57 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    if (address)
    {
      serviceCopy = service;
      if (address->sa_family == 30)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      updated = _CTServerConnectionUpdateProtocolQualityOfService();
      v7 = updated;
      if (updated)
      {
        v8 = HIDWORD(updated);
        v9 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v55 = v7;
          *&v55[4] = 1024;
          *&v55[6] = v8;
          _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "failed to update protocol QoS (error: %d.%d)", buf, 0xEu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to update protocol QoS (error: %d.%d)", v10, v11, v12, v13, v14, v7);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to update protocol QoS (error: %d.%d)", v15, v16, v17, v18, v7);
          }
        }
      }

      else
      {
        v39 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = @"NO";
          if (serviceCopy)
          {
            v40 = @"YES";
          }

          *buf = 138412546;
          *v55 = v40;
          *&v55[8] = 1024;
          v56 = v5;
          _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, "update procotol QoS (isGood:%@, addressFamily:%d).", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          v46 = serviceCopy ? @"YES" : @"NO";
          _IDSLogTransport(@"GL", @"IDS", @"update procotol QoS (isGood:%@, addressFamily:%d).", v41, v42, v43, v44, v45, v46);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"update procotol QoS (isGood:%@, addressFamily:%d).", v47, v48, v49, v50, v46);
          }
        }
      }
    }

    else
    {
      v29 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "updateProtocolQualityOfService failed due to invalid address.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"updateProtocolQualityOfService failed due to invalid address.", v30, v31, v32, v33, v34, v51);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"updateProtocolQualityOfService failed due to invalid address.", v35, v36, v37, v38, v53);
          }
        }
      }
    }
  }

  else
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "failed to update protocol QoS due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to update protocol QoS due to invalid CT server connection.", v20, v21, v22, v23, v24, v51);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to update protocol QoS due to invalid CT server connection.", v25, v26, v27, v28, v52);
        }
      }
    }
  }
}

- (void)currentCellularSignalStrength:(int *)strength signalStrength:(int *)signalStrength signalGrade:(int *)grade
{
  v64 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    *strength = 0;
    *signalStrength = 100;
    *grade = 0;
    _getCTXPCServiceSubscriptionContext = [(IDSCellularLinkMonitor *)self _getCTXPCServiceSubscriptionContext];
    if (_getCTXPCServiceSubscriptionContext)
    {
      ctClient = self->_ctClient;
      v60 = 0;
      v11 = [(CoreTelephonyClient *)ctClient getSignalStrengthInfo:_getCTXPCServiceSubscriptionContext error:&v60];
      v12 = v60;
      if (v11)
      {
        bars = [v11 bars];
        *grade = [bars intValue];

        v14 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *strength;
          v16 = *signalStrength;
          v17 = *grade;
          *buf = 67109632;
          *v62 = v15;
          *&v62[4] = 1024;
          *&v62[6] = v16;
          LOWORD(v63) = 1024;
          *(&v63 + 2) = v17;
          _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "current cellular signal strength  [Raw: %d Strength: %d  Grade: %d]", buf, 0x14u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"current cellular signal strength  [Raw: %d Strength: %d  Grade: %d]", v18, v19, v20, v21, v22, *strength);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"current cellular signal strength  [Raw: %d Strength: %d  Grade: %d]", v23, v24, v25, v26, *strength);
          }
        }
      }

      else
      {
        v47 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v62 = v12;
          *&v62[8] = 2112;
          v63 = _getCTXPCServiceSubscriptionContext;
          _os_log_impl(&dword_1A7AD9000, v47, OS_LOG_TYPE_DEFAULT, "getSignalStrengthInfo failed: %@ %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"getSignalStrengthInfo failed: %@ %@", v48, v49, v50, v51, v52, v12);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"getSignalStrengthInfo failed: %@ %@", v53, v54, v55, v56, v12);
            }
          }
        }
      }
    }

    else
    {
      v37 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "currentCellularSignalStrength: failed to get context", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"currentCellularSignalStrength: failed to get context", v38, v39, v40, v41, v42, v57);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"currentCellularSignalStrength: failed to get context", v43, v44, v45, v46, v59);
          }
        }
      }
    }
  }

  else
  {
    v27 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "failed to get cellular signal strength due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get cellular signal strength due to invalid CT server connection.", v28, v29, v30, v31, v32, v57);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get cellular signal strength due to invalid CT server connection.", v33, v34, v35, v36, v58);
        }
      }
    }
  }
}

- (void)registerCellularDataStatusNotification:(BOOL)notification
{
  v32 = *MEMORY[0x1E69E9840];
  if (self->_ctServerConnection)
  {
    notificationCopy = notification;
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (notificationCopy)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v31 = v6;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "registerCellularDataStatusNotification: %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      if (notificationCopy)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      _IDSLogTransport(@"GL", @"IDS", @"registerCellularDataStatusNotification: %@.", v7, v8, v9, v10, v11, v12);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"registerCellularDataStatusNotification: %@.", v13, v14, v15, v16, v12);
      }
    }

    ctClient = self->_ctClient;
    if (notificationCopy)
    {
      [(CoreTelephonyClient *)ctClient setDelegate:self];
    }

    else
    {
      [(CoreTelephonyClient *)ctClient setDelegate:0];
    }
  }

  else
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "registerCellularDataStatusNotification failed due to invalid CT server connection.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"registerCellularDataStatusNotification failed due to invalid CT server connection.", v19, v20, v21, v22, v23, v28);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"registerCellularDataStatusNotification failed due to invalid CT server connection.", v24, v25, v26, v27, v29);
        }
      }
    }
  }
}

- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info
{
  v6 = *&connection;
  v24 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  infoCopy = info;
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = v6;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "connectionStateChanged, connection type: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"connectionStateChanged, connection type: %d", v10, v11, v12, v13, v14, v6);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"connectionStateChanged, connection type: %d", v15, v16, v17, v18, v6);
      }
    }
  }

  if (!v6)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A7B5ADA4;
    v19[3] = &unk_1E77E0250;
    v20 = changedCopy;
    v21 = infoCopy;
    IDSTransportThreadAddBlock(v19);
  }
}

- (void)dataStatus:(id)status dataStatusInfo:(id)info
{
  v30 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  infoCopy = info;
  ctClient = self->_ctClient;
  v23 = 0;
  v9 = [(CoreTelephonyClient *)ctClient getPreferredDataSubscriptionContextSync:&v23];
  v10 = v23;
  v11 = [v9 isEqual:statusCopy];

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    *buf = 138412802;
    v25 = statusCopy;
    v26 = 2112;
    if (v11)
    {
      v13 = @"YES";
    }

    v27 = v13;
    v28 = 2112;
    v29 = infoCopy;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "Received CT data status changed callback { context: %@, isRelevant: %@, dataStatus: %@ }", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"Received CT data status changed callback { context: %@, isRelevant: %@, dataStatus: %@ }", v14, v15, v16, v17, v18, statusCopy);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"Received CT data status changed callback { context: %@, isRelevant: %@, dataStatus: %@ }", v19, v20, v21, v22, statusCopy);
      }
    }
  }

  if (v11)
  {
    [(IDSCellularLinkMonitor *)self _notifyClientDataBearerSoMask:infoCopy];
  }
}

- (void)_notifyClientDataBearerSoMask:(id)mask
{
  v42 = *MEMORY[0x1E69E9840];
  maskCopy = mask;
  if ([(IDSCellularLinkMonitor *)self _updateDataBearerSoMaskWithCTDataStatus:maskCopy])
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      dataSoMaskBits = self->_dataSoMaskBits;
      *buf = 67109120;
      v41 = dataSoMaskBits;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "_updateClientDataBearerSoMask: update AVC cellular so Mask: %u", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_updateClientDataBearerSoMask: update AVC cellular so Mask: %u", v7, v8, v9, v10, v11, self->_dataSoMaskBits);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_updateClientDataBearerSoMask: update AVC cellular so Mask: %u", v12, v13, v14, v15, self->_dataSoMaskBits);
        }
      }
    }

    allObjects = [(NSHashTable *)self->_cellularLinkDelegates allObjects];
    v17 = [allObjects copy];

    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 count];
      *buf = 67109120;
      v41 = v19;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "[delegates count]: %u", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v20 = [v17 count];
        _IDSLogTransport(@"GL", @"IDS", @"[delegates count]: %u", v21, v22, v23, v24, v25, v20);
        if (_IDSShouldLog(0))
        {
          v26 = [v17 count];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"[delegates count]: %u", v27, v28, v29, v30, v26);
        }
      }
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = v17;
    v32 = [v31 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v32)
    {
      v33 = *v36;
      do
      {
        v34 = 0;
        do
        {
          if (*v36 != v33)
          {
            objc_enumerationMutation(v31);
          }

          [*(*(&v35 + 1) + 8 * v34++) cellularSoMaskDidChange:self->_dataSoMaskBits];
        }

        while (v32 != v34);
        v32 = [v31 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v32);
    }
  }
}

- (void)preferredDataSimChanged:(id)changed
{
  v16 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = changedCopy;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "preferredDataSimChanged %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"preferredDataSimChanged %@", v5, v6, v7, v8, v9, changedCopy);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"preferredDataSimChanged %@", v10, v11, v12, v13, changedCopy);
      }
    }
  }
}

- (BOOL)isSlicedCellularInterfaceActive:(id)active
{
  activeCopy = active;
  v5 = activeCopy;
  if (activeCopy && [activeCopy length])
  {
    v6 = [(CoreTelephonyClient *)self->_ctClient getPreferredDataSubscriptionContextSync:0];
    if (v6)
    {
      v7 = 28;
      while (1)
      {
        v8 = [(CoreTelephonyClient *)self->_ctClient getConnectionState:v6 connectionType:v7 error:0];
        if (v8)
        {
          v9 = v8;
          interfaceName = [v8 interfaceName];
          v11 = [interfaceName isEqualToIgnoringCase:v5];

          if (v11)
          {
            break;
          }
        }

        v7 = (v7 + 1);
        if (v7 == 36)
        {
          goto LABEL_8;
        }
      }

      v12 = 1;
    }

    else
    {
LABEL_8:
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end