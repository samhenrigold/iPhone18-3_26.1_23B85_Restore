@interface NPKTargetDeviceAssertionManager
- (NPKTargetDeviceAssertionManager)initWithTransportationService:(id)service;
- (id)_IDSSendOptions;
- (id)_outstandingAssertionStatusUpdaterWithRequest:(id)request assertionType:(unint64_t)type assertionUUID:(id)d;
- (id)_removeOutstandingAssertionStatusUpdaterWithUUID:(id)d;
- (id)_sendAssertionRequest:(id)request;
- (id)acquireAssertionOfType:(unint64_t)type;
- (id)assertionsUUIDsOfType:(unint64_t)type;
- (void)_addOutstandingAssertionStatusUpdater:(id)updater withAssertType:(int)type;
- (void)invalidateAssertionWithUUID:(id)d;
@end

@implementation NPKTargetDeviceAssertionManager

- (NPKTargetDeviceAssertionManager)initWithTransportationService:(id)service
{
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = NPKTargetDeviceAssertionManager;
  v6 = [(NPKTargetDeviceAssertionManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transportationService, service);
    v8 = dispatch_queue_create("com.apple.NanoPassKit.TargetDevice.AssertionManager", 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v8;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    outstandingAssertionStatusUpdaters = v7->_outstandingAssertionStatusUpdaters;
    v7->_outstandingAssertionStatusUpdaters = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    assertTypesUUIDsMap = v7->_assertTypesUUIDsMap;
    v7->_assertTypesUUIDsMap = dictionary2;
  }

  return v7;
}

- (id)acquireAssertionOfType:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = pk_Payment_log(uUID);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      typeCopy = type;
      v20 = 2112;
      v21 = uUID;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Remote Assertion - Request acquire assertion of type:%lu with UUID:%@", buf, 0x16u);
    }
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPKTargetDeviceAssertionManager_acquireAssertionOfType___block_invoke;
  block[3] = &unk_279945F18;
  typeCopy2 = type;
  v11 = uUID;
  v15 = v11;
  selfCopy = self;
  dispatch_async(internalQueue, block);
  v12 = v11;

  return v11;
}

void __58__NPKTargetDeviceAssertionManager_acquireAssertionOfType___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = protobufAssertionTypeWithPKAssertionType(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    v4 = objc_alloc_init(NPKProtoAssertionRequest);
    [(NPKProtoAssertionRequest *)v4 setAssertionType:v3];
    v5 = [*(a1 + 32) UUIDString];
    [(NPKProtoAssertionRequest *)v4 setRequestUUIDString:v5];

    [(NPKProtoAssertionRequest *)v4 setPending:1];
    v6 = [*(a1 + 40) _sendAssertionRequest:v4];
    if (v6)
    {
      v7 = [*(a1 + 40) _outstandingAssertionStatusUpdaterWithRequest:v4 assertionType:*(a1 + 48) assertionUUID:*(a1 + 32)];
      [*(a1 + 40) _addOutstandingAssertionStatusUpdater:v7 withAssertType:v3];
    }

    else
    {
      v11 = pk_Payment_log(0);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (v12)
      {
        v14 = pk_Payment_log(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          if (v3 == 1)
          {
            v15 = @"Provisioning";
          }

          else if (v3 == 2)
          {
            v15 = @"ProvisioningRequiringUpgradedPasscode";
          }

          else
          {
            v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v3];
          }

          *buf = 138412290;
          v17 = v15;
          _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_ERROR, "Error: Remote Assertion - Failed to send Assertion request type:%@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v8 = pk_Payment_log(v2);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (!v9)
    {
      return;
    }

    v4 = pk_Payment_log(v10);
    if (os_log_type_enabled(&v4->super.super.super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = @"Unknown";
      _os_log_impl(&dword_25B300000, &v4->super.super.super, OS_LOG_TYPE_ERROR, "Error: Remote Assertion - Unknown assertion request type:%@", buf, 0xCu);
    }
  }
}

- (void)invalidateAssertionWithUUID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = pk_Payment_log(dCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = dCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Remote Assertion - Request to invalidate assertion with UUID:%@", buf, 0xCu);
    }
  }

  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__NPKTargetDeviceAssertionManager_invalidateAssertionWithUUID___block_invoke;
  v11[3] = &unk_2799454E0;
  v11[4] = self;
  v12 = dCopy;
  v10 = dCopy;
  dispatch_async(internalQueue, v11);
}

void __63__NPKTargetDeviceAssertionManager_invalidateAssertionWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _removeOutstandingAssertionStatusUpdaterWithUUID:*(a1 + 40)];
  if (v2)
  {
    v7 = v2;
    v3 = objc_alloc_init(NPKProtoAssertionRequest);
    -[NPKProtoAssertionRequest setAssertionType:](v3, "setAssertionType:", [v7 assertType]);
    v4 = [v7 assertionUUID];
    v5 = [v4 UUIDString];
    [(NPKProtoAssertionRequest *)v3 setRequestUUIDString:v5];

    [(NPKProtoAssertionRequest *)v3 setPending:0];
    v6 = [*(a1 + 32) _sendAssertionRequest:v3];

    v2 = v7;
  }
}

- (id)assertionsUUIDsOfType:(unint64_t)type
{
  v4 = protobufAssertionTypeWithPKAssertionType(type);
  if (v4 >= 3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v4];
  }

  else
  {
    v5 = off_279947430[v4];
  }

  assertTypesUUIDsMap = [(NPKTargetDeviceAssertionManager *)self assertTypesUUIDsMap];
  v7 = [assertTypesUUIDsMap objectForKeyedSubscript:v5];

  if (v7)
  {
    array = [v7 copy];
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v9 = array;

  return v9;
}

- (id)_sendAssertionRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = pk_Payment_log(requestCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      assertionType = [requestCopy assertionType];
      if (assertionType >= 3)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", assertionType];
      }

      else
      {
        v10 = off_279947430[assertionType];
      }

      requestUUIDString = [requestCopy requestUUIDString];
      *buf = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = requestUUIDString;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Remote Assertion - Sending assertion request of type:%@ UUID:%@", buf, 0x16u);
    }
  }

  v12 = objc_alloc(MEMORY[0x277D189F0]);
  data = [requestCopy data];
  v14 = [v12 initWithProtobufData:data type:59 isResponse:0];

  transportationService = [(NPKTargetDeviceAssertionManager *)self transportationService];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__NPKTargetDeviceAssertionManager__sendAssertionRequest___block_invoke;
  v20[3] = &unk_279945058;
  v21 = requestCopy;
  v16 = requestCopy;
  _IDSSendOptions = [(NPKTargetDeviceAssertionManager *)self _IDSSendOptions];
  v18 = NPKProtoSendWithOptions(transportationService, v14, 200, 0, 0, v20, _IDSSendOptions);

  return v18;
}

void __57__NPKTargetDeviceAssertionManager__sendAssertionRequest___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) assertionType];
      if (v6 >= 3)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v6];
      }

      else
      {
        v7 = off_279947430[v6];
      }

      v8 = [*(a1 + 32) requestUUIDString];
      *buf = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Remote Assertion - Failed to sendAssertionrequest of type:%@ UUID:%@", buf, 0x16u);
    }
  }
}

- (id)_IDSSendOptions
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D185D0];
  v6[0] = *MEMORY[0x277D185A0];
  v6[1] = v2;
  v7[0] = MEMORY[0x277CBEC38];
  v7[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D18650];
  v6[2] = *MEMORY[0x277D18630];
  v6[3] = v3;
  v7[2] = @"AssertRequest";
  v7[3] = &unk_286CE77F8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];

  return v4;
}

- (id)_outstandingAssertionStatusUpdaterWithRequest:(id)request assertionType:(unint64_t)type assertionUUID:(id)d
{
  v8 = MEMORY[0x277D189F0];
  dCopy = d;
  requestCopy = request;
  v11 = [v8 alloc];
  data = [requestCopy data];

  v13 = [v11 initWithProtobufData:data type:59 isResponse:0];
  _IDSSendOptions = [(NPKTargetDeviceAssertionManager *)self _IDSSendOptions];
  if (type == 6)
  {
    v15 = -1;
  }

  else
  {
    v15 = 12;
  }

  v16 = [NPKOutstandingAssertionStatusUpdater alloc];
  transportationService = [(NPKTargetDeviceAssertionManager *)self transportationService];
  v18 = [(NPKIDSHeartbeat *)v16 initWithPendingStatusProtobuf:v13 service:transportationService priority:200 maxUpdates:v15 responseIdentifier:0 sendOptions:_IDSSendOptions queue:30.0 updateInterval:self->_internalQueue];

  [(NPKOutstandingAssertionStatusUpdater *)v18 setAssertType:protobufAssertionTypeWithPKAssertionType(type)];
  [(NPKOutstandingAssertionStatusUpdater *)v18 setAssertionUUID:dCopy];

  return v18;
}

- (void)_addOutstandingAssertionStatusUpdater:(id)updater withAssertType:(int)type
{
  v4 = *&type;
  updaterCopy = updater;
  dispatch_assert_queue_V2(self->_internalQueue);
  outstandingAssertionStatusUpdaters = [(NPKTargetDeviceAssertionManager *)self outstandingAssertionStatusUpdaters];
  assertionUUID = [updaterCopy assertionUUID];
  [outstandingAssertionStatusUpdaters setObject:updaterCopy forKeyedSubscript:assertionUUID];

  if (v4 >= 3)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v4];
  }

  else
  {
    v8 = off_279947430[v4];
  }

  assertTypesUUIDsMap = [(NPKTargetDeviceAssertionManager *)self assertTypesUUIDsMap];
  array = [assertTypesUUIDsMap objectForKeyedSubscript:v8];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    assertTypesUUIDsMap2 = [(NPKTargetDeviceAssertionManager *)self assertTypesUUIDsMap];
    [assertTypesUUIDsMap2 setObject:array forKeyedSubscript:v8];
  }

  assertionUUID2 = [updaterCopy assertionUUID];
  [array addObject:assertionUUID2];
}

- (id)_removeOutstandingAssertionStatusUpdaterWithUUID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_internalQueue);
  outstandingAssertionStatusUpdaters = [(NPKTargetDeviceAssertionManager *)self outstandingAssertionStatusUpdaters];
  v6 = [outstandingAssertionStatusUpdaters objectForKeyedSubscript:dCopy];

  if (v6)
  {
    [v6 invalidate];
    outstandingAssertionStatusUpdaters2 = [(NPKTargetDeviceAssertionManager *)self outstandingAssertionStatusUpdaters];
    [outstandingAssertionStatusUpdaters2 removeObjectForKey:dCopy];

    assertType = [v6 assertType];
    if (assertType >= 3)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", assertType];
    }

    else
    {
      v9 = off_279947430[assertType];
    }

    assertTypesUUIDsMap = [(NPKTargetDeviceAssertionManager *)self assertTypesUUIDsMap];
    v11 = [assertTypesUUIDsMap objectForKeyedSubscript:v9];
    [v11 removeObject:dCopy];
  }

  return v6;
}

@end