@interface FTCServiceMonitor
- (FTCServiceMonitor)initWithServiceType:(int64_t)type;
- (void)_postAvailability:(int64_t)availability;
- (void)_updateAvailability;
- (void)dealloc;
@end

@implementation FTCServiceMonitor

- (FTCServiceMonitor)initWithServiceType:(int64_t)type
{
  v12.receiver = self;
  v12.super_class = FTCServiceMonitor;
  v4 = [(FTCServiceMonitor *)&v12 init];
  v7 = v4;
  if (v4)
  {
    v4->_type = type;
    if (type <= 2)
    {
      IMUserScopedNotification();
    }

    objc_msgSend_weakRefWithObject_(MEMORY[0x277CFB990], v5, v7, v6);
    v7->_token = IMDispatchForNotify();
    objc_msgSend__updateAvailability(v7, v8, v9, v10);
  }

  return v7;
}

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = FTCServiceMonitor;
  [(FTCServiceMonitor *)&v3 dealloc];
}

- (void)_postAvailability:(int64_t)availability
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  v17 = objc_msgSend_initWithInteger_(v5, v6, availability, v7);
  v8 = objc_alloc(MEMORY[0x277CBEAC0]);
  v11 = objc_msgSend_initWithObjectsAndKeys_(v8, v9, v17, v10, @"availability", 0);
  v15 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v12, v13, v14);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v15, v16, @"__kFTCServiceMonitorAvailabilityDidChangeNotification", self, v11);
}

- (void)_updateAvailability
{
  v33 = *MEMORY[0x277D85DE8];
  p_availability = &self->_availability;
  availability = self->_availability;
  state64 = 0;
  notify_get_state(self->_token, &state64);
  v5 = state64 != 0;
  *p_availability = v5;
  if (availability != v5)
  {
    v6 = OSLogHandleForRegistrationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_msgSend_serviceType(self, v7, v8, v9);
      if ((v10 + 1) > 3)
      {
        v11 = @"Unknown";
      }

      else
      {
        v11 = off_278FF1950[v10 + 1];
      }

      if ((availability + 2) > 3)
      {
        v12 = @"Unknown";
      }

      else
      {
        v12 = off_278FF1970[availability + 2];
      }

      v13 = self->_availability + 2;
      if (v13 > 3)
      {
        v14 = @"Unknown";
      }

      else
      {
        v14 = off_278FF1970[v13];
      }

      *buf = 138413058;
      selfCopy = self;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_24A9AC000, v6, OS_LOG_TYPE_DEFAULT, "%@ updating availability for %@   => from %@ to %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLogRegistration())
      {
        objc_msgSend_serviceType(self, v15, v17, v16);
        sub_24A9ACE54(@"ServiceAvailability", @"%@ updating availability for %@   => from %@ to %@", v18, v19, v20, v21, v22, v23, self);
      }
    }

    objc_msgSend__postAvailability_(self, v15, self->_availability, v16);
  }
}

@end