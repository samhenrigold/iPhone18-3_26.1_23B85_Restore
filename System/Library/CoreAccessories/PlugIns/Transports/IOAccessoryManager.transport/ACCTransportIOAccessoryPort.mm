@interface ACCTransportIOAccessoryPort
- (ACCTransportIOAccessoryPort)initWithDelegate:(id)delegate andIOService:(unsigned int)service;
- (ACCTransportIOAccessoryPortProtocol)delegate;
- (BOOL)transmitData:(id)data;
- (NSString)ioAccPortParentConnectionUUID;
- (void)_handleAccessoryPortDetach;
- (void)_handleIncomingData:(id)data;
- (void)_handlePropertyChange;
- (void)_handleResistorIDChange:(int)change;
- (void)_registerForIOAccessoryPortInterestNotifications;
- (void)dealloc;
- (void)portServiceRegistrationComplete;
@end

@implementation ACCTransportIOAccessoryPort

- (ACCTransportIOAccessoryPort)initWithDelegate:(id)delegate andIOService:(unsigned int)service
{
  v4 = *&service;
  v37 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v29.receiver = self;
  v29.super_class = ACCTransportIOAccessoryPort;
  v7 = [(ACCTransportIOAccessoryBase *)&v29 initWithIOAccessoryClass:1 ioService:v4];
  v8 = v7;
  if (v7)
  {
    v7->_isAuthenticated = 0;
    ioAccPortEndpointUUID = v7->_ioAccPortEndpointUUID;
    v7->_ioAccPortEndpointUUID = 0;

    objc_storeWeak(&v8->_ioAccPortParentConnectionUUID, 0);
    v8->_notificationRunLoopSource = 0;
    v8->_resistorID = 100;
    objc_storeWeak(&v8->_delegate, delegateCopy);
    ioService = [(ACCTransportIOAccessoryBase *)v8 ioService];
    if (IOServiceOpen(ioService, *MEMORY[0x277D85F48], 0, &v8->super._ioConnect))
    {
      if (gLogObjects && gNumLogObjects >= 5)
      {
        v11 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v11 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryPort initWithDelegate:andIOService:];
      }
    }

    v8->_portIDNumber = IOAccessoryPortGetPort();
    v8->_portTransportType = IOAccessoryPortGetTransportType();
    v13 = *MEMORY[0x277CBECE8];
    CFProperty = IORegistryEntryCreateCFProperty(v4, @"StreamType", *MEMORY[0x277CBECE8], 0);
    v15 = IORegistryEntryCreateCFProperty(v4, @"ProtocolType", v13, 0);
    valuePtr = 0;
    if (CFProperty && (v16 = v15) != 0)
    {
      CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr + 4);
      CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr == 1)
      {
        v17 = HIDWORD(valuePtr) == 1;
      }

      else if (valuePtr == 2 && HIDWORD(valuePtr) == 1)
      {
        v17 = 5;
      }

      else
      {
        v17 = 0;
      }

      v8->_portStreamType = v17;
      if (gLogObjects && gNumLogObjects >= 5)
      {
        v19 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v19 = MEMORY[0x277D86220];
        v20 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        portStreamType = v8->_portStreamType;
        *buf = 136316162;
        *v31 = "[ACCTransportIOAccessoryPort initWithDelegate:andIOService:]";
        *&v31[8] = 1024;
        *v32 = v4;
        *&v32[4] = 1024;
        *v33 = HIDWORD(valuePtr);
        *&v33[4] = 1024;
        v34 = valuePtr;
        v35 = 1024;
        v36 = portStreamType;
        _os_log_impl(&dword_233656000, v19, OS_LOG_TYPE_DEFAULT, "%s: init, service %d, (streamType %d, protocolType %d) -> portStreamType %d", buf, 0x24u);
      }
    }

    else
    {
      v8->_portStreamType = IOAccessoryPortGetStreamType();
    }

    if (gLogObjects && gNumLogObjects >= 5)
    {
      v22 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v22 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      portIDNumber = v8->_portIDNumber;
      portTransportType = v8->_portTransportType;
      v26 = v8->_portStreamType;
      *buf = 67109888;
      *v31 = v4;
      *&v31[4] = 1024;
      *&v31[6] = portIDNumber;
      *v32 = 1024;
      *&v32[2] = portTransportType;
      *v33 = 1024;
      *&v33[2] = v26;
      _os_log_impl(&dword_233656000, v22, OS_LOG_TYPE_DEFAULT, "ACCTransportIOAccessoryPort: init, service %d, portID %d, portTransportType %d, portStreamType %d", buf, 0x1Au);
    }

    [(ACCTransportIOAccessoryPort *)v8 _registerForIOAccessoryPortInterestNotifications];
  }

  return v8;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 5;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "Deallocating IOAccessoryPort with service: %d", buf, 8u);
  }

  ioAccPortEndpointUUID = self->_ioAccPortEndpointUUID;
  self->_ioAccPortEndpointUUID = 0;

  objc_storeWeak(&self->_ioAccPortParentConnectionUUID, 0);
  objc_storeWeak(&self->_delegate, 0);
  self->_portIDNumber = -1;
  if (self->_notificationRunLoopSource)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, self->_notificationRunLoopSource, *MEMORY[0x277CBF048]);
    CFRelease(self->_notificationRunLoopSource);
    self->_notificationRunLoopSource = 0;
  }

  v8.receiver = self;
  v8.super_class = ACCTransportIOAccessoryPort;
  [(ACCTransportIOAccessoryBase *)&v8 dealloc];
}

- (void)portServiceRegistrationComplete
{
  v28 = *MEMORY[0x277D85DE8];
  delegate = [(ACCTransportIOAccessoryPort *)self delegate];

  if (delegate)
  {
    delegate2 = [(ACCTransportIOAccessoryPort *)self delegate];
    if (delegate2)
    {
      v5 = delegate2;
      delegate3 = [(ACCTransportIOAccessoryPort *)self delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        portStreamType = self->_portStreamType;
        switch(portStreamType)
        {
          case 1:
            v9 = 0;
            v10 = 0;
            v11 = 1;
            v12 = 10;
            break;
          case 4:
            v9 = 0;
            v11 = 1;
            v12 = 15;
            v10 = 1;
            break;
          case 5:
            v9 = 0;
            v10 = 0;
            v11 = 1;
            v12 = 16;
            break;
          default:
            v12 = 0;
            v11 = 0;
            v10 = 0;
            v9 = 1;
            break;
        }

        if (gLogObjects && gNumLogObjects >= 5)
        {
          v13 = *(gLogObjects + 32);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v13 = MEMORY[0x277D86220];
          v14 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v26 = 67109120;
          v27 = v12;
          _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_INFO, " protocol:%{coreacc:ACCEndpoint_Protocol_t}d", &v26, 8u);
        }

        if (v9)
        {
          if (gLogObjects && gNumLogObjects >= 5)
          {
            v15 = *(gLogObjects + 32);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v15 = MEMORY[0x277D86220];
            v20 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v26 = 67109120;
            v27 = 0;
            _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, "Failed to create endpointUUID! wrong protocol! protocol:%{coreacc:ACCEndpoint_Protocol_t}d", &v26, 8u);
          }

          goto LABEL_49;
        }

        delegate4 = [(ACCTransportIOAccessoryPort *)self delegate];
        v15 = [delegate4 IOAccessoryPortArrived:self withEndpointProtocol:v12 publish:v10];

        if (v15)
        {
          v17 = [MEMORY[0x277CCACA8] stringWithString:v15];
          ioAccPortEndpointUUID = self->_ioAccPortEndpointUUID;
          self->_ioAccPortEndpointUUID = v17;

          if (v11)
          {
            delegate5 = [(ACCTransportIOAccessoryPort *)self delegate];
            [delegate5 IOAccessoryPortPublish:self];
LABEL_48:

LABEL_49:
            return;
          }

          if (gLogObjects && gNumLogObjects >= 5)
          {
            delegate5 = *(gLogObjects + 32);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            delegate5 = MEMORY[0x277D86220];
            v25 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(delegate5, OS_LOG_TYPE_INFO))
          {
            goto LABEL_48;
          }

          v26 = 67109120;
          v27 = v12;
          v22 = "Did not publish endpoint for protocol:%{coreacc:ACCEndpoint_Protocol_t}d";
          v23 = delegate5;
          v24 = OS_LOG_TYPE_INFO;
        }

        else
        {
          if (gLogObjects && gNumLogObjects >= 5)
          {
            delegate5 = *(gLogObjects + 32);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            delegate5 = MEMORY[0x277D86220];
            v21 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(delegate5, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_48;
          }

          v26 = 67109120;
          v27 = v12;
          v22 = "Failed to create endpointUUID! protocol:%{coreacc:ACCEndpoint_Protocol_t}d";
          v23 = delegate5;
          v24 = OS_LOG_TYPE_DEFAULT;
        }

        _os_log_impl(&dword_233656000, v23, v24, v22, &v26, 8u);
        goto LABEL_48;
      }
    }
  }
}

- (void)_registerForIOAccessoryPortInterestNotifications
{
  if (IOServiceAddInterestNotification(self->super._ioNotificationPort, [(ACCTransportIOAccessoryBase *)self ioService], "IOGeneralInterest", PortNotifyEvent, 0, &self->super._ioNotificationObject))
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 5;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 32);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryPort _registerForIOAccessoryPortInterestNotifications];
    }
  }

  else
  {
    RunLoopSource = IOAccessoryPortCreateRunLoopSource();
    self->_notificationRunLoopSource = RunLoopSource;
    if (RunLoopSource)
    {
      Main = CFRunLoopGetMain();
      notificationRunLoopSource = self->_notificationRunLoopSource;
      v8 = *MEMORY[0x277CBF048];

      CFRunLoopAddSource(Main, notificationRunLoopSource, v8);
    }
  }
}

- (void)_handleIncomingData:(id)data
{
  dataCopy = data;
  notificationPortQueue = self->super._notificationPortQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ACCTransportIOAccessoryPort__handleIncomingData___block_invoke;
  v7[3] = &unk_2789E8900;
  v8 = dataCopy;
  selfCopy = self;
  v6 = dataCopy;
  dispatch_async(notificationPortQueue, v7);
}

void __51__ACCTransportIOAccessoryPort__handleIncomingData___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 5;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __51__ACCTransportIOAccessoryPort__handleIncomingData___block_invoke_cold_2(a1, v4);
  }

  v5 = (a1 + 40);
  v6 = objc_msgSend_ioAccPortEndpointUUID(*(a1 + 40));

  if (!v6)
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v7 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*v5 + 17);
      v10 = *(*v5 + 18);
      v11 = *(*v5 + 20);
      v36[0] = 67109632;
      v36[1] = v9;
      v37 = 1024;
      v38 = v10;
      v39 = 1024;
      v40 = v11;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "_handleIncomingData: on incoming data, endpoint not created yet, portID %d, portTransportType %d, portStreamType %d", v36, 0x14u);
    }

    v12 = [*v5 delegate];
    if (v12 && (v13 = v12, [*v5 delegate], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_opt_respondsToSelector(), v14, v13, (v15 & 1) != 0))
    {
      v16 = *(*v5 + 20) - 1;
      if (v16 > 4)
      {
        v17 = 0;
      }

      else
      {
        v17 = dword_2336C02B0[v16];
      }

      v20 = [*v5 delegate];
      v18 = [v20 IOAccessoryPortArrived:*v5 withEndpointProtocol:v17 publish:1];

      if (v18)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithString:v18];
        v22 = *(*v5 + 12);
        *(*v5 + 12) = v21;
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 5)
        {
          v22 = *(gLogObjects + 32);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v22 = MEMORY[0x277D86220];
          v23 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36[0]) = 0;
          _os_log_impl(&dword_233656000, v22, OS_LOG_TYPE_DEFAULT, "Failed to create endpointUUID!", v36, 2u);
        }
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 5)
      {
        v18 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v18 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __51__ACCTransportIOAccessoryPort__handleIncomingData___block_invoke_cold_6(v18);
      }
    }
  }

  v24 = objc_msgSend_ioAccPortEndpointUUID(*v5);

  if (v24)
  {
    v25 = [*v5 delegate];
    if (v25 && (v26 = v25, [*v5 delegate], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_opt_respondsToSelector(), v27, v26, (v28 & 1) != 0))
    {
      v29 = [*(a1 + 40) delegate];
      v30 = *(a1 + 32);
      v31 = objc_msgSend_ioAccPortEndpointUUID(*(a1 + 40));
      LOBYTE(v30) = [v29 IOAccessoryPortDataArrived:v30 endpointUUID:v31];

      if (v30)
      {
        return;
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 5)
      {
        v32 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v32 = MEMORY[0x277D86220];
        v33 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        __51__ACCTransportIOAccessoryPort__handleIncomingData___block_invoke_cold_8(v32);
      }
    }
  }

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v34 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v34 = MEMORY[0x277D86220];
    v35 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    __51__ACCTransportIOAccessoryPort__handleIncomingData___block_invoke_cold_10(v5, v34);
  }
}

- (BOOL)transmitData:(id)data
{
  dataCopy = data;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 5;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportIOAccessoryPort *)dataCopy transmitData:v7];
  }

  [dataCopy bytes];
  [dataCopy length];
  v8 = IOAccessoryPortTransmitData();
  if (v8)
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v9 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryPort transmitData:];
    }
  }

  return v8 == 0;
}

- (void)_handleAccessoryPortDetach
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_ioAccPortEndpointUUID(self, a2);

  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 4;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (v3)
  {
    if (v5)
    {
      v6 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_msgSend_ioAccPortEndpointUUID(self);
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "detaching endpointUUID %@", &v16, 0xCu);
    }

    delegate = [(ACCTransportIOAccessoryPort *)self delegate];
    if (delegate)
    {
      v11 = delegate;
      delegate2 = [(ACCTransportIOAccessoryPort *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        delegate3 = [(ACCTransportIOAccessoryPort *)self delegate];
        [delegate3 IOAccessoryPortDetach:self];
      }
    }

    [(ACCTransportIOAccessoryPort *)self setIoAccPortEndpointUUID:0];
    [(ACCTransportIOAccessoryPort *)self setIoAccPortParentConnectionUUID:0];
  }

  else
  {
    if (v5)
    {
      v7 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "no endpointUUID to detach", &v16, 2u);
    }
  }
}

- (void)_handleResistorIDChange:(int)change
{
  v8 = *MEMORY[0x277D85DE8];
  self->_resistorID = change;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 5;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [(ACCTransportIOAccessoryPort *)self resistorID];
    _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "IO Accessory Port Connected resistorID %d, not doing anything with it", v7, 8u);
  }
}

- (void)_handlePropertyChange
{
  v39 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  ManagerService = IOAccessoryPortGetManagerService();
  if (ManagerService == [(ACCTransportIOAccessoryBase *)self upstreamManagerService])
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects <= 4;
    }

    else
    {
      v4 = 1;
    }

    v5 = !v4;
    if (ManagerService)
    {
      if (v5)
      {
        v6 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v6 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "parent service matches current io acc port upstream service, ignore property change", &v31, 2u);
      }

      IOObjectRelease(ManagerService);
    }

    else
    {
      if (v5)
      {
        v10 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v10 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "ERROR: No parent service for io acc port", &v31, 2u);
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 32);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 67109888;
      upstreamManagerService = [(ACCTransportIOAccessoryBase *)self upstreamManagerService];
      v33 = 1024;
      v34 = ManagerService;
      v35 = 1024;
      portIDNumber = [(ACCTransportIOAccessoryPort *)self portIDNumber];
      v37 = 1024;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "changing io acc port parent service from %d to %d upstream service for portIDNumber %d, service %d", &v31, 0x1Au);
    }

    IOObjectRelease([(ACCTransportIOAccessoryBase *)self upstreamManagerService]);
    [(ACCTransportIOAccessoryBase *)self setUpstreamManagerService:ManagerService];
  }

  [(ACCTransportIOAccessoryBase *)self ioService];
  ManagerPrimaryPort = IOAccessoryPortGetManagerPrimaryPort();
  primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
  if (gLogObjects)
  {
    v15 = gNumLogObjects <= 4;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (ManagerPrimaryPort == primaryPortNumber)
  {
    if (v16)
    {
      v17 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v17 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      primaryPortNumber2 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
      v31 = 67109120;
      upstreamManagerService = primaryPortNumber2;
      _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_DEFAULT, "NOT changing io acc port parent primary port from %d", &v31, 8u);
    }
  }

  else
  {
    if (v16)
    {
      v18 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v18 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      primaryPortNumber3 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
      portIDNumber2 = [(ACCTransportIOAccessoryPort *)self portIDNumber];
      ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
      v31 = 67109888;
      upstreamManagerService = primaryPortNumber3;
      v33 = 1024;
      v34 = ManagerPrimaryPort;
      v35 = 1024;
      portIDNumber = portIDNumber2;
      v37 = 1024;
      ioService = ioService2;
      _os_log_impl(&dword_233656000, v18, OS_LOG_TYPE_DEFAULT, "changing io acc port parent primary port from %d to %d for portIDNumber %d, service %d", &v31, 0x1Au);
    }

    [(ACCTransportIOAccessoryBase *)self setPrimaryPortNumber:ManagerPrimaryPort];
  }

  delegate = [(ACCTransportIOAccessoryPort *)self delegate];
  if (delegate && (v26 = delegate, [(ACCTransportIOAccessoryPort *)self delegate], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_opt_respondsToSelector(), v27, v26, (v28 & 1) != 0))
  {
    delegate2 = [(ACCTransportIOAccessoryPort *)self delegate];
    [delegate2 IOAccessoryPortPropertyChanged:self];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      delegate2 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      delegate2 = MEMORY[0x277D86220];
      v30 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryPort _handlePropertyChange];
    }
  }
}

- (NSString)ioAccPortParentConnectionUUID
{
  WeakRetained = objc_loadWeakRetained(&self->_ioAccPortParentConnectionUUID);
  v3 = [WeakRetained copy];

  return v3;
}

- (ACCTransportIOAccessoryPortProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __51__ACCTransportIOAccessoryPort__handleIncomingData___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_233656000, a2, OS_LOG_TYPE_DEBUG, "Received data %@", &v3, 0xCu);
}

void __51__ACCTransportIOAccessoryPort__handleIncomingData___block_invoke_cold_10(void **a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_ioAccPortEndpointUUID(*a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_233656000, a2, OS_LOG_TYPE_DEBUG, "dataReceivedSuccessfully failed for endpointUUID %@", &v4, 0xCu);
}

- (void)transmitData:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_ioAccPortEndpointUUID(a2);
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_233656000, a3, OS_LOG_TYPE_DEBUG, "IOAccessoryPort (lowest level of data); transmitting data %@ for endpointUUID %@", &v6, 0x16u);
}

@end