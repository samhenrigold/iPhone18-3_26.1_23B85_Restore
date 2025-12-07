@interface FTCServiceAvailabilityCenter
+ (id)sharedInstance;
- (BOOL)addListenerID:(id)d forService:(int64_t)service;
- (BOOL)hasListenerID:(id)d forService:(int64_t)service;
- (BOOL)removeListenerID:(id)d forService:(int64_t)service;
- (FTCServiceAvailabilityCenter)init;
- (id)containerForService:(int64_t)service create:(BOOL)create;
- (int64_t)availabilityForListenerID:(id)d forService:(int64_t)service;
- (void)_handleServiceMonitorNotification:(id)notification;
- (void)_postNotificationForService:(int64_t)service availability:(int64_t)availability;
- (void)_startListeningToMonitor:(id)monitor;
- (void)_stopListeningToMonitor:(id)monitor;
- (void)dealloc;
@end

@implementation FTCServiceAvailabilityCenter

+ (id)sharedInstance
{
  if (qword_280B21A78 != -1)
  {
    sub_24A9AE0A0();
  }

  return qword_280B21A70;
}

- (FTCServiceAvailabilityCenter)init
{
  v4.receiver = self;
  v4.super_class = FTCServiceAvailabilityCenter;
  v2 = [(FTCServiceAvailabilityCenter *)&v4 init];
  if (v2)
  {
    v2->_availabilityHandlers = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v2;
}

- (void)dealloc
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_removeObserver_name_object_(v5, v6, self, 0, 0);

  v7.receiver = self;
  v7.super_class = FTCServiceAvailabilityCenter;
  [(FTCServiceAvailabilityCenter *)&v7 dealloc];
}

- (void)_postNotificationForService:(int64_t)service availability:(int64_t)availability
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = OSLogHandleForRegistrationCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v33 = 2112;
    v34 = FTCServiceNameForServiceType(service);
    v35 = 2048;
    availabilityCopy = availability;
    _os_log_impl(&dword_24A9AC000, v7, OS_LOG_TYPE_DEFAULT, "%@ posting availability change notification (%@) - available: %ld", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
  {
    FTCServiceNameForServiceType(service);
    sub_24A9ACE54(@"ServiceAvailability", @"%@ posting availability change notification (%@) - available: %ld", v8, v9, v10, v11, v12, v13, self);
  }

  v14 = objc_alloc(MEMORY[0x277CCABB0]);
  v17 = objc_msgSend_initWithInteger_(v14, v15, availability, v16);
  v18 = objc_alloc(MEMORY[0x277CCABB0]);
  v21 = objc_msgSend_initWithInteger_(v18, v19, service, v20);
  v22 = objc_alloc(MEMORY[0x277CBEAC0]);
  v25 = objc_msgSend_initWithObjectsAndKeys_(v22, v23, v17, v24, @"availability", v21, @"servicetype", 0);
  v29 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v26, v27, v28);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v29, v30, @"__FTCServiceAvailabilityDidChangeNotification", self, v25);
}

- (void)_handleServiceMonitorNotification:(id)notification
{
  v6 = objc_msgSend_object(notification, a2, notification, v3);
  v10 = objc_msgSend_userInfo(notification, v7, v8, v9);
  v13 = objc_msgSend_objectForKey_(v10, v11, @"availability", v12);
  v17 = objc_msgSend_serviceType(v6, v14, v15, v16);
  v21 = objc_msgSend_integerValue(v13, v18, v19, v20);

  MEMORY[0x2821F9670](self, sel__postNotificationForService_availability_, v17, v21);
}

- (void)_startListeningToMonitor:(id)monitor
{
  if (monitor)
  {
    v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, monitor, v3);

    MEMORY[0x2821F9670](v5, sel_addObserver_selector_name_object_, self, sel__handleServiceMonitorNotification_);
  }
}

- (void)_stopListeningToMonitor:(id)monitor
{
  if (monitor)
  {
    v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, monitor, v3);

    objc_msgSend_removeObserver_name_object_(v6, v7, self, @"__kFTCServiceMonitorAvailabilityDidChangeNotification", monitor);
  }
}

- (id)containerForService:(int64_t)service create:(BOOL)create
{
  createCopy = create;
  v39 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend__isValidServiceType_(self, a2, service, create))
  {
    return 0;
  }

  v7 = objc_alloc(MEMORY[0x277CCABB0]);
  v10 = objc_msgSend_initWithInteger_(v7, v8, service, v9);
  v13 = objc_msgSend_objectForKey_(self->_availabilityHandlers, v11, v10, v12);
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = !createCopy;
  }

  if (!v14)
  {
    v15 = OSLogHandleForRegistrationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v37 = 2112;
      v38 = FTCServiceNameForServiceType(service);
      _os_log_impl(&dword_24A9AC000, v15, OS_LOG_TYPE_DEFAULT, "%@ creating monitor for service: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
    {
      FTCServiceNameForServiceType(service);
      sub_24A9ACE54(@"ServiceAvailability", @"%@ creating monitor for service: %@", v16, v17, v18, v19, v20, v21, self);
    }

    v22 = [FTCServiceContainer alloc];
    v25 = objc_msgSend_initWithServiceType_(v22, v23, service, v24);
    v29 = v25;
    if (v25)
    {
      v30 = objc_msgSend_monitor(v25, v26, v27, v28);
      objc_msgSend__startListeningToMonitor_(self, v31, v30, v32);
      objc_msgSend_setObject_forKey_(self->_availabilityHandlers, v33, v29, v10);
    }

    v13 = v29;
  }

  return v13;
}

- (BOOL)hasListenerID:(id)d forService:(int64_t)service
{
  if (!d)
  {
    return 0;
  }

  v5 = objc_msgSend_containerForService_create_(self, a2, service, 0);
  if (!v5)
  {
    return 0;
  }

  return objc_msgSend_hasListenerID_(v5, v6, d, v7);
}

- (BOOL)addListenerID:(id)d forService:(int64_t)service
{
  v25 = *MEMORY[0x277D85DE8];
  if (d)
  {
    v7 = objc_msgSend_length(d, a2, d, service);
    if (v7)
    {
      v8 = OSLogHandleForRegistrationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy = self;
        v21 = 2112;
        dCopy = d;
        v23 = 2112;
        v24 = FTCServiceNameForServiceType(service);
      }

      if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
      {
        FTCServiceNameForServiceType(service);
      }

      v7 = objc_msgSend_containerForService_create_(self, v9, service, 1);
      if (v7)
      {
        LOBYTE(v7) = objc_msgSend_addListenerID_(v7, v16, d, v17);
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)removeListenerID:(id)d forService:(int64_t)service
{
  v53 = *MEMORY[0x277D85DE8];
  if (d)
  {
    v7 = OSLogHandleForRegistrationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v49 = 2112;
      dCopy = d;
      v51 = 2112;
      v52 = FTCServiceNameForServiceType(service);
    }

    if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
    {
      FTCServiceNameForServiceType(service);
    }

    v15 = objc_msgSend_containerForService_create_(self, v8, service, 0);
    v18 = v15;
    if (v15)
    {
      objc_msgSend_removeListenerID_(v15, v16, d, v17);
      v22 = objc_msgSend_listeners(v18, v19, v20, v21);
      if (!objc_msgSend_count(v22, v23, v24, v25))
      {
        v26 = OSLogHandleForRegistrationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = FTCServiceNameForServiceType(service);
          *buf = 138412546;
          selfCopy2 = self;
          v49 = 2112;
          dCopy = v27;
          _os_log_impl(&dword_24A9AC000, v26, OS_LOG_TYPE_DEFAULT, "%@ no more listeners for service: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
        {
          FTCServiceNameForServiceType(service);
          sub_24A9ACE54(@"ServiceAvailability", @"%@ no more listeners for service: %@", v31, v32, v33, v34, v35, v36, self);
        }

        v37 = objc_msgSend_monitor(v18, v28, v29, v30);
        objc_msgSend__stopListeningToMonitor_(self, v38, v37, v39);
        v40 = objc_alloc(MEMORY[0x277CCABB0]);
        v43 = objc_msgSend_initWithInteger_(v40, v41, service, v42);
        objc_msgSend_removeObjectForKey_(self->_availabilityHandlers, v44, v43, v45);
      }
    }
  }

  return d != 0;
}

- (int64_t)availabilityForListenerID:(id)d forService:(int64_t)service
{
  if (!d)
  {
    return -2;
  }

  v5 = objc_msgSend_containerForService_create_(self, a2, service, 0);
  if (!v5)
  {
    return -2;
  }

  v8 = v5;
  if (!objc_msgSend_hasListenerID_(v5, v6, d, v7))
  {
    return -2;
  }

  v12 = objc_msgSend_monitor(v8, v9, v10, v11);

  return MEMORY[0x2821F9670](v12, sel_serviceAvailability, v13, v14);
}

@end