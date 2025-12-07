@interface SCLTransportController
- (BOOL)sendSchedule:(id)schedule identifier:(id *)identifier error:(id *)error;
- (IDSDevice)device;
- (SCLSettingsSyncCoordinator)settingsSyncCoordinator;
- (SCLTransportController)initWithNRDevice:(id)device deviceRegistry:(id)registry service:(id)service deviceIdentifier:(id)identifier;
- (SCLTransportControllerDelegate)delegate;
- (SCLTransportService)transportService;
- (void)addUnlockHistoryItem:(id)item;
- (void)applySchedule:(id)schedule;
- (void)device;
- (void)handleIncomingHistoryItem:(id)item;
- (void)handleIncomingSchedule:(id)schedule forType:(int)type;
- (void)handleRemoteScheduleSettingsRequest;
- (void)requestRemoteSettings;
- (void)service:(id)service didDeliverMessageWithIdentifier:(id)identifier;
- (void)service:(id)service identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service incomingProtobuf:(id)protobuf fromID:(id)d context:(id)context;
@end

@implementation SCLTransportController

- (SCLTransportController)initWithNRDevice:(id)device deviceRegistry:(id)registry service:(id)service deviceIdentifier:(id)identifier
{
  deviceCopy = device;
  registryCopy = registry;
  serviceCopy = service;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = SCLTransportController;
  v15 = [(SCLTransportController *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_NRDevice, device);
    objc_storeStrong(&v16->_deviceRegistry, registry);
    objc_storeStrong(&v16->_service, service);
    v17 = [identifierCopy copy];
    IDSDeviceIdentifier = v16->_IDSDeviceIdentifier;
    v16->_IDSDeviceIdentifier = v17;
  }

  return v16;
}

- (IDSDevice)device
{
  service = [(SCLTransportController *)self service];
  v4 = [service linkedDevicesWithRelationship:2];

  deviceRegistry = [(SCLTransportController *)self deviceRegistry];
  nRDevice = [(SCLTransportController *)self NRDevice];
  v7 = [deviceRegistry deviceForNRDevice:nRDevice fromIDSDevices:v4];

  if (!v7)
  {
    v9 = scl_pairing_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(SCLTransportController *)self device];
    }
  }

  v10 = scl_pairing_log(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SCLTransportController device];
  }

  return v7;
}

- (void)service:(id)service incomingProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  delegate = [(SCLTransportController *)self delegate];

  if (!delegate)
  {
    v10 = scl_transport_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [SCLTransportController service:v10 incomingProtobuf:? fromID:? context:?];
    }
  }

  type = [protobufCopy type];
  if (type > 2)
  {
    if (type == 3)
    {
      [(SCLTransportController *)self handleRemoteScheduleSettingsRequest];
      goto LABEL_19;
    }

    if (type == 4)
    {
      v15 = [SCLPBScheduleRequestResponse alloc];
      data = [protobufCopy data];
      v14 = [(SCLPBScheduleRequestResponse *)v15 initWithData:data];

      if ([(SCLPBScheduleRequestResponse *)v14 hasScheduleSettings])
      {
        scheduleSettings = [(SCLPBScheduleRequestResponse *)v14 scheduleSettings];
        -[SCLTransportController handleIncomingSchedule:forType:](self, "handleIncomingSchedule:forType:", scheduleSettings, [protobufCopy type]);
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (type == 1)
    {
      v19 = [SCLPBScheduleSettings alloc];
      data2 = [protobufCopy data];
      v14 = [(SCLPBScheduleSettings *)v19 initWithData:data2];

      -[SCLTransportController handleIncomingSchedule:forType:](self, "handleIncomingSchedule:forType:", v14, [protobufCopy type]);
      goto LABEL_17;
    }

    if (type == 2)
    {
      v12 = [SCLPBUnlockHistoryItem alloc];
      data3 = [protobufCopy data];
      v14 = [(SCLPBUnlockHistoryItem *)v12 initWithData:data3];

      [(SCLTransportController *)self handleIncomingHistoryItem:v14];
LABEL_17:

      goto LABEL_19;
    }
  }

  v18 = scl_transport_log(type);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [SCLTransportController service:protobufCopy incomingProtobuf:v18 fromID:? context:?];
  }

LABEL_19:
}

- (void)service:(id)service didDeliverMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  settingsSyncCoordinator = [(SCLTransportController *)self settingsSyncCoordinator];
  [settingsSyncCoordinator didDeliverMessageWithIdentifier:identifierCopy];
}

- (void)service:(id)service identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  identifierCopy = identifier;
  settingsSyncCoordinator = [(SCLTransportController *)self settingsSyncCoordinator];
  [settingsSyncCoordinator identifier:identifierCopy didSendWithSuccess:successCopy error:errorCopy];
}

- (void)addUnlockHistoryItem:(id)item
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = SCLPBUnlockHistoryItemFromSCLUnlockHistoryItem(item);
  data = [v4 data];
  v6 = [objc_alloc(MEMORY[0x277D189F0]) initWithProtobufData:data type:2 isResponse:0];
  transportService = [(SCLTransportController *)self transportService];
  device = [(SCLTransportController *)self device];
  v15 = 0;
  v16 = 0;
  v9 = [transportService sendProtobuf:v6 toDevice:device options:0 identifier:&v16 error:&v15];
  v10 = v16;
  v11 = v15;

  v13 = scl_transport_log(v12);
  v14 = v13;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_264829000, v14, OS_LOG_TYPE_DEFAULT, "Sent history item with identifier %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [SCLTransportController addUnlockHistoryItem:];
  }
}

- (void)handleIncomingSchedule:(id)schedule forType:(int)type
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = SCLScheduleSettingsFromSCLPBScheduleSettings(schedule);
  v7 = scl_transport_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 1024;
    v12 = type == 4;
    _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_DEFAULT, "Received incoming schedule: %@ forInitialSync: %{BOOL}u", &v9, 0x12u);
  }

  delegate = [(SCLTransportController *)self delegate];
  [delegate transportController:self didReceiveSchedule:v6 forInitialSync:type == 4];
}

- (void)handleIncomingHistoryItem:(id)item
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = SCLUnlockHistoryItemFromSCLPBUnlockHistoryItem(item);
  v5 = scl_transport_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_264829000, v5, OS_LOG_TYPE_INFO, "Handle incoming history item %@", &v7, 0xCu);
  }

  delegate = [(SCLTransportController *)self delegate];
  [delegate transportController:self didReceiveUnlockHistoryItem:v4];
}

- (void)handleRemoteScheduleSettingsRequest
{
  v23 = *MEMORY[0x277D85DE8];
  delegate = [(SCLTransportController *)self delegate];
  v4 = [delegate currentScheduleSettingsForTransportController:self];

  if (v4)
  {
    v6 = objc_alloc_init(SCLPBScheduleRequestResponse);
    v7 = SCLPBScheduleSettingsFromSCLScheduleSettings(v4);
    [(SCLPBScheduleRequestResponse *)v6 setScheduleSettings:v7];
    v8 = objc_alloc(MEMORY[0x277D189F0]);
    data = [(SCLPBScheduleRequestResponse *)v6 data];
    v10 = [v8 initWithProtobufData:data type:4 isResponse:0];

    transportService = [(SCLTransportController *)self transportService];
    device = [(SCLTransportController *)self device];
    v19 = 0;
    v20 = 0;
    v13 = [transportService sendProtobuf:v10 toDevice:device options:0 identifier:&v20 error:&v19];
    v14 = v20;
    v15 = v19;

    v17 = scl_transport_log(v16);
    v18 = v17;
    if (v13)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v14;
        _os_log_impl(&dword_264829000, v18, OS_LOG_TYPE_DEFAULT, "Sent remote schedule response with identifier %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SCLTransportController handleRemoteScheduleSettingsRequest];
    }
  }

  else
  {
    v6 = scl_transport_log(v5);
    if (os_log_type_enabled(&v6->super.super, OS_LOG_TYPE_DEBUG))
    {
      [(SCLTransportController *)&v6->super.super handleRemoteScheduleSettingsRequest];
    }
  }
}

- (BOOL)sendSchedule:(id)schedule identifier:(id *)identifier error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = SCLPBScheduleSettingsFromSCLScheduleSettings(schedule);
  data = [v8 data];
  v10 = [objc_alloc(MEMORY[0x277D189F0]) initWithProtobufData:data type:1 isResponse:0];
  v15 = *MEMORY[0x277D18678];
  v16[0] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  transportService = [(SCLTransportController *)self transportService];
  device = [(SCLTransportController *)self device];
  LOBYTE(error) = [transportService sendProtobuf:v10 toDevice:device options:v11 identifier:identifier error:error];

  return error;
}

- (void)applySchedule:(id)schedule
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = SCLPBScheduleSettingsFromSCLScheduleSettings(schedule);
  data = [v4 data];
  v6 = [objc_alloc(MEMORY[0x277D189F0]) initWithProtobufData:data type:1 isResponse:0];
  v20 = *MEMORY[0x277D18678];
  v21[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  transportService = [(SCLTransportController *)self transportService];
  device = [(SCLTransportController *)self device];
  v16 = 0;
  v17 = 0;
  v10 = [transportService sendProtobuf:v6 toDevice:device options:v7 identifier:&v17 error:&v16];
  v11 = v17;
  v12 = v16;

  v14 = scl_transport_log(v13);
  v15 = v14;
  if (v10)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_264829000, v15, OS_LOG_TYPE_DEFAULT, "Sent schedule with identifier %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [SCLTransportController applySchedule:];
  }
}

- (void)requestRemoteSettings
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SCLPBScheduleRequest);
  v4 = objc_alloc(MEMORY[0x277D189F0]);
  data = [(SCLPBScheduleRequest *)v3 data];
  v6 = [v4 initWithProtobufData:data type:3 isResponse:0];

  transportService = [(SCLTransportController *)self transportService];
  device = [(SCLTransportController *)self device];
  v15 = 0;
  v16 = 0;
  v9 = [transportService sendProtobuf:v6 toDevice:device options:0 identifier:&v16 error:&v15];
  v10 = v16;
  v11 = v15;

  v13 = scl_transport_log(v12);
  v14 = v13;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_264829000, v14, OS_LOG_TYPE_DEFAULT, "Sent remote schedule request %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [SCLTransportController requestRemoteSettings];
  }
}

- (SCLTransportService)transportService
{
  WeakRetained = objc_loadWeakRetained(&self->_transportService);

  return WeakRetained;
}

- (SCLTransportControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SCLSettingsSyncCoordinator)settingsSyncCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsSyncCoordinator);

  return WeakRetained;
}

- (void)device
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_264829000, v1, OS_LOG_TYPE_DEBUG, "<SCLTransportController %p> device %@", v2, 0x16u);
}

- (void)service:(void *)a1 incomingProtobuf:(NSObject *)a2 fromID:context:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 device];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_264829000, a2, OS_LOG_TYPE_FAULT, "No delegate for handling incoming protobuf for %@", v4, 0xCu);
}

- (void)service:(void *)a1 incomingProtobuf:(NSObject *)a2 fromID:context:.cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(a1, "type")}];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_264829000, a2, OS_LOG_TYPE_ERROR, "Unhandled protobuf message %@", v4, 0xCu);
}

@end