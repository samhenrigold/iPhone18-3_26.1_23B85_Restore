@interface IDSServiceMonitor
- (IDSServiceMonitor)initWithService:(id)service;
- (id)description;
- (void)_postAvailability:(int64_t)availability;
- (void)_updateAvailability;
- (void)dealloc;
@end

@implementation IDSServiceMonitor

- (void)_updateAvailability
{
  v14 = *MEMORY[0x1E69E9840];
  availability = self->_availability;
  state64 = 0;
  notify_get_state(self->_token, &state64);
  v4 = state64;
  v5 = +[IDSLogging ServiceAvailability];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    selfCopy = self;
    v10 = 2048;
    v11 = state64;
    v12 = 2048;
    v13 = availability;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "[IDSServiceMonitor _updateAvailability] {self: %p, state: %llu, previousAvailability: %llu}", buf, 0x20u);
  }

  v6 = v4 != 0;

  self->_availability = v6;
  if (availability != v6)
  {
    [(IDSServiceMonitor *)self _postAvailability:v6];
  }
}

- (IDSServiceMonitor)initWithService:(id)service
{
  v18 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  if (!_IDSRunningInDaemon())
  {
    v13.receiver = self;
    v13.super_class = IDSServiceMonitor;
    v8 = [(IDSServiceMonitor *)&v13 init];
    v9 = v8;
    if (!v8)
    {
LABEL_14:
      self = v9;
      selfCopy = self;
      goto LABEL_15;
    }

    objc_storeStrong(&v8->_service, service);
    v10 = +[IDSLogging ServiceAvailability];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v15 = v9;
      v16 = 2112;
      v17 = serviceCopy;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "[IDSServiceMonitor init] {self: %p, service: %@}", buf, 0x16u);
    }

    if ([serviceCopy isEqualToString:@"com.apple.madrid"] & 1) != 0 || (objc_msgSend(serviceCopy, "isEqualToString:", @"com.apple.ess") & 1) != 0 || (objc_msgSend(serviceCopy, "isEqualToString:", @"com.apple.private.ac"))
    {
      goto LABEL_11;
    }

    if (([serviceCopy isEqualToString:@"com.apple.private.alloy.bulletinboard"] & 1) == 0)
    {
      if ([serviceCopy isEqualToString:@"com.apple.private.alloy.screensharing"])
      {
LABEL_11:
        if (IMUserScopedNotification())
        {
          v12 = v9;
          v12->_token = IMDispatchForNotify();
        }

        goto LABEL_13;
      }

      [serviceCopy isEqualToString:@"com.apple.private.alloy.photostream"];
    }

LABEL_13:
    [(IDSServiceMonitor *)v9 _updateAvailability];
    goto LABEL_14;
  }

  v6 = +[IDSLogging ServiceAvailability];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_195B268D8(self, v6);
  }

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging ServiceAvailability];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "[IDSServiceMonitor dealloc] {self: %p}", buf, 0xCu);
  }

  notify_cancel(self->_token);
  v4.receiver = self;
  v4.super_class = IDSServiceMonitor;
  [(IDSServiceMonitor *)&v4 dealloc];
}

- (void)_postAvailability:(int64_t)availability
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:availability];
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"availability", 0}];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIDSServiceMonitorAvailabilityDidChangeNotification" object:self userInfo:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p service:%@, serviceAvailability: %llu>", v5, self, self->_service, self->_availability];

  return v6;
}

@end