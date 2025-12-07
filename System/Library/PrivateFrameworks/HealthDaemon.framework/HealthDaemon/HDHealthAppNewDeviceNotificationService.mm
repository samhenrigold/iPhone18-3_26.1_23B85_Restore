@interface HDHealthAppNewDeviceNotificationService
- (BOOL)sendNewDeviceNotificationWithMessageKind:(int64_t)kind error:(id *)error;
- (HDHealthAppNewDeviceNotificationService)init;
@end

@implementation HDHealthAppNewDeviceNotificationService

- (HDHealthAppNewDeviceNotificationService)init
{
  v6.receiver = self;
  v6.super_class = HDHealthAppNewDeviceNotificationService;
  v2 = [(HDHealthAppNewDeviceNotificationService *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.healthapp.messaging"];
    notificationService = v2->_notificationService;
    v2->_notificationService = v3;
  }

  return v2;
}

- (BOOL)sendNewDeviceNotificationWithMessageKind:(int64_t)kind error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC300];
  v7 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy4 = self;
    v37 = 2114;
    v38 = @"com.apple.private.alloy.healthapp.messaging";
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to send IDS notification with service: %{public}@", buf, 0x16u);
  }

  v8 = [(IDSService *)self->_notificationService linkedDevicesWithRelationship:1];
  v9 = [MEMORY[0x277CBEB58] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if ([v15 deviceType] == 2 || objc_msgSend(v15, "deviceType") == 4)
        {
          v16 = IDSCopyIDForDevice();
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  v17 = [objc_alloc(MEMORY[0x277CCD4A0]) initWithMessageKind:kind];
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:0];
  notificationService = self->_notificationService;
  v28 = 0;
  v29 = 0;
  v21 = [(IDSService *)notificationService sendData:v19 toDestinations:v9 priority:300 options:v18 identifier:&v29 error:&v28];
  v22 = v29;
  v23 = v28;
  _HKInitializeLogging();
  v24 = *v6;
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v25)
    {
      *buf = 138543618;
      selfCopy4 = self;
      v37 = 2114;
      v38 = v22;
      _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: Data successfully sent with identifier: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v25)
    {
      *buf = 138543362;
      selfCopy4 = self;
      _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: Data was not sent successfully.", buf, 0xCu);
    }

    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v37 = 2114;
      v38 = v23;
      _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@: Error occured when sending new device IDS notification: %{public}@", buf, 0x16u);
    }
  }

  return v21;
}

@end