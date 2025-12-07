@interface USBAnalytics
- (BOOL)_startEventMonitoring;
- (USBAnalytics)init;
- (void)_handleServiceMatched:(unsigned int)matched;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation USBAnalytics

- (USBAnalytics)init
{
  v12.receiver = self;
  v12.super_class = USBAnalytics;
  v2 = [(USBAnalytics *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = os_log_create("com.apple.accessories", [v8 UTF8String]);
    log = v2->_log;
    v2->_log = v9;

    v2->_started = 0;
  }

  return v2;
}

- (void)start
{
  v3 = objc_msgSend_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting %@...", buf, 0xCu);
  }

  queue = [(USBAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __21__USBAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __21__USBAnalytics_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) started];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = objc_msgSend_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __23__AUVDMAnalytics_start__block_invoke_cold_1(v4, v5, v6);
    }
  }

  else
  {
    [v3 setStarted:1];
    v7 = *(a1 + 32);

    [v7 _startEventMonitoring];
  }
}

- (void)stop
{
  v3 = objc_msgSend_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping %@...", buf, 0xCu);
  }

  queue = [(USBAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __20__USBAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __20__USBAnalytics_stop__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) started];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setStarted:0];
    v4 = *(a1 + 32);

    [v4 _stopEventMonitoring];
  }

  else
  {
    v5 = objc_msgSend_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __22__AUVDMAnalytics_stop__block_invoke_cold_1(v5, v6, v7);
    }
  }
}

- (BOOL)_startEventMonitoring
{
  if ([(USBAnalytics *)self monitoring]|| ![(USBAnalytics *)self started])
  {

    return [(USBAnalytics *)self monitoring];
  }

  else
  {
    v3 = objc_msgSend_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting matching notifications...", buf, 2u);
    }

    v4 = objc_msgSend_log(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v12, 2u);
    }

    [(USBAnalytics *)self setMonitoring:1];
    [(USBAnalytics *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
    ioNotificationPort = [(USBAnalytics *)self ioNotificationPort];
    queue = [(USBAnalytics *)self queue];
    IONotificationPortSetDispatchQueue(ioNotificationPort, queue);

    v7 = IOServiceMatching("IOUSBHostDevice");
    ioNotificationPort2 = [(USBAnalytics *)self ioNotificationPort];
    v9 = v7;
    v10 = IOServiceAddMatchingNotification(ioNotificationPort2, "IOServiceFirstMatch", v9, _servicesMatched_2, self, &self->_ioServiceMatchingIterator);
    if (v10)
    {
      [(AUVDMAnalytics *)self _startEventMonitoring];
    }

    else
    {
      _servicesMatched_2(self, self->_ioServiceMatchingIterator);
    }

    return v10 == 0;
  }
}

- (void)_stopEventMonitoring
{
  if ([(USBAnalytics *)self monitoring])
  {
    v3 = objc_msgSend_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v5, 2u);
    }

    [(USBAnalytics *)self setMonitoring:0];
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    if ([(USBAnalytics *)self ioNotificationPort])
    {
      IONotificationPortDestroy([(USBAnalytics *)self ioNotificationPort]);
    }
  }
}

- (void)_handleServiceMatched:(unsigned int)matched
{
  if (matched)
  {
    memset(name, 0, 128);
    IORegistryEntryGetName(matched, name);
    v5 = objc_msgSend_log(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v152 = name;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Service matched! (serviceName: %s)", buf, 0xCu);
    }

    if ([(USBAnalytics *)self analyticsEventsEnabled])
    {
      HIDWORD(v146) = 0;
      if (!IORegistryEntryGetParentEntry(matched, "IOPort", &v146 + 1) && HIDWORD(v146))
      {
        if (!IOObjectConformsTo(HIDWORD(v146), "IOPortTransportStateUSB"))
        {
          v16 = objc_msgSend_log(self);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v152 = "IOPort";
            _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Could not find USB transport in %s plane!", buf, 0xCu);
          }

          goto LABEL_101;
        }

        v6 = objc_alloc_init(NSMutableDictionary);
        OUTLINED_FUNCTION_2_1();
        CFProperty = IORegistryEntryCreateCFProperty(v7, v8, v9, v10);
        v12 = objc_opt_class();
        v13 = castNSObjectToType(CFProperty, v12);

        if (v13)
        {
          OUTLINED_FUNCTION_3_2();
        }

        else
        {
          v17 = objc_msgSend_log(self);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_4(&dword_0, v17, v18, "Could not find parent port type!", buf);
          }
        }

        OUTLINED_FUNCTION_2_1();
        v23 = IORegistryEntryCreateCFProperty(v19, v20, v21, v22);
        v24 = objc_opt_class();
        v25 = castNSObjectToType(v23, v24);

        if (v25)
        {
          [v6 setObject:v25 forKey:{@"PortNumber", v13}];
          if (v13)
          {
            v26 = IOServiceMatching("IOPort");
            v147 = @"PortType";
            v148 = @"PortNumber";
            v149 = v13;
            v150 = v25;
            v27 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v147 count:2];
            [(__CFDictionary *)v26 setObject:v27 forKey:@"IOPropertyMatch"];

            v28 = v26;
            MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v28);
            if (MatchingService)
            {
              v30 = MatchingService;
              OUTLINED_FUNCTION_2_1();
              v35 = IORegistryEntryCreateCFProperty(v31, v32, v33, v34);
              v36 = objc_opt_class();
              v37 = castNSObjectToType(v35, v36);

              if (v37)
              {
                [v6 setObject:v37 forKey:@"PortBuiltIn"];
              }

              else
              {
                v56 = objc_msgSend_log(self);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  OUTLINED_FUNCTION_5_2();
                  OUTLINED_FUNCTION_4(v134, v135, v136, v137, v138);
                }
              }

              OUTLINED_FUNCTION_2_1();
              v61 = IORegistryEntryCreateCFProperty(v57, v58, v59, v60);
              v62 = objc_opt_class();
              v63 = castNSObjectToType(v61, v62);

              if (v63)
              {
                OUTLINED_FUNCTION_3_2();
              }

              else
              {
                v64 = objc_msgSend_log(self);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  OUTLINED_FUNCTION_4(&dword_0, v64, v65, "Could not find parent port connection UUID!", buf);
                }
              }

              IOObjectRelease(v30);
            }

            else
            {
              v37 = objc_msgSend_log(self);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                OUTLINED_FUNCTION_1_3(&dword_0, v50, v51, "Could not find parent port!", v52, v53, v54, v55, v139, v140, v141, v142, v143, v144, cf, v146, v147, v148, v149, v150);
              }
            }

            goto LABEL_44;
          }
        }

        else
        {
          v38 = objc_msgSend_log(self, v13);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_1_3(&dword_0, v39, v40, "Could not find parent port number!", v41, v42, v43, v44, v139, v140, v141, v142, v143, v144, cf, v146, v147, v148, v149, v150);
          }
        }

        cf = 0;
        OUTLINED_FUNCTION_2_1();
        IORegistryEntryCreateCFProperties(v45, v46, v47, v48);
        v49 = objc_msgSend_log(self);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v152 = 0;
          _os_log_fault_impl(&dword_0, v49, OS_LOG_TYPE_FAULT, "Could not find parent port type and number! (serviceProperties: %@)", buf, 0xCu);
        }

LABEL_44:
        OUTLINED_FUNCTION_2_1();
        v70 = IORegistryEntryCreateCFProperty(v66, v67, v68, v69);
        v71 = objc_opt_class();
        v72 = castNSObjectToType(v70, v71);

        if (v72)
        {
          [v6 setObject:v72 forKey:@"TransportTunneled"];
        }

        else
        {
          v73 = objc_msgSend_log(self);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_1_3(&dword_0, v74, v75, "Could not find if transport is tunneled!", v76, v77, v78, v79, v139, v140, v141, v142, v143, v144, cf, v146, v147, v148, v149, v150);
          }
        }

        OUTLINED_FUNCTION_2_1();
        v84 = IORegistryEntryCreateCFProperty(v80, v81, v82, v83);
        v85 = objc_opt_class();
        v86 = castNSObjectToType(v84, v85);

        if (v86)
        {
          [v6 setObject:v86 forKey:@"DataRole"];
        }

        else
        {
          v87 = objc_msgSend_log(self);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_4(&dword_0, v87, v88, "USB data role not found!", buf);
          }
        }

        if (IOObjectConformsTo(HIDWORD(v146), "IOPortTransportStateUSB2"))
        {
          v89 = 1;
        }

        else
        {
          if (!IOObjectConformsTo(HIDWORD(v146), "IOPortTransportStateUSB3"))
          {
            v89 = 0;
            v96 = 0;
            goto LABEL_59;
          }

          v89 = 2;
        }

        OUTLINED_FUNCTION_2_1();
        v94 = IORegistryEntryCreateCFProperty(v90, v91, v92, v93);
        v95 = objc_opt_class();
        v96 = castNSObjectToType(v94, v95);

LABEL_59:
        v97 = [NSNumber numberWithUnsignedInt:v89];
        OUTLINED_FUNCTION_4_1();

        if (v96)
        {
          intValue = [v96 intValue];
          if (intValue - 1 >= 3)
          {
            v99 = 0;
          }

          else
          {
            v99 = intValue + 3;
          }

          if (intValue - 1 >= 3)
          {
            v100 = 0;
          }

          else
          {
            v100 = intValue;
          }

          if (v89 != 1)
          {
            v100 = 0;
          }

          if (v89 == 2)
          {
            v101 = v99;
          }

          else
          {
            v101 = v100;
          }

          v102 = [NSNumber numberWithUnsignedInt:v101];
          OUTLINED_FUNCTION_3_2();
        }

        else
        {
          v102 = objc_msgSend_log(self);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_5_2();
            OUTLINED_FUNCTION_4(v129, v130, v131, v132, v133);
          }
        }

        OUTLINED_FUNCTION_2_1();
        v107 = IORegistryEntryCreateCFProperty(v103, v104, v105, v106);
        v108 = objc_opt_class();
        v109 = castNSObjectToType(v107, v108);

        if (v109)
        {
          v110 = [v109 objectForKeyedSubscript:@"Vendor ID"];
          if (v110)
          {
            OUTLINED_FUNCTION_4_1();
          }

          v111 = [v109 objectForKeyedSubscript:@"Product ID"];

          if (v111)
          {
            OUTLINED_FUNCTION_3_2();
          }

          v112 = [v109 objectForKeyedSubscript:@"Manufacturer"];

          if (v112)
          {
            OUTLINED_FUNCTION_4_1();
          }

          v113 = [v109 objectForKeyedSubscript:@"Product"];

          if (v113)
          {
            OUTLINED_FUNCTION_3_2();
          }

          v114 = [v109 objectForKeyedSubscript:@"Device Class"];

          if (v114)
          {
            OUTLINED_FUNCTION_4_1();
          }

          v115 = [v109 objectForKeyedSubscript:@"Device Subclass"];

          if (v115)
          {
            OUTLINED_FUNCTION_3_2();
          }

          v116 = [v109 objectForKeyedSubscript:@"Device Protocol"];

          if (v116)
          {
            OUTLINED_FUNCTION_4_1();
          }

          v117 = [v109 objectForKeyedSubscript:@"Device Function"];

          if (v117)
          {
            OUTLINED_FUNCTION_3_2();
          }
        }

        v118 = objc_msgSend_log(self);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v152 = @"com.apple.ioport.transport.USB.published";
          OUTLINED_FUNCTION_5_2();
          _os_log_impl(v119, v120, OS_LOG_TYPE_DEFAULT, v121, v122, 0xCu);
        }

        v123 = objc_msgSend_log(self);
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v152 = v6;
          OUTLINED_FUNCTION_5_2();
          _os_log_debug_impl(v125, v126, OS_LOG_TYPE_DEBUG, v127, v128, 0xCu);
        }

        v16 = v6;
        if ((AnalyticsSendEventLazy() & 1) == 0)
        {
          v124 = objc_msgSend_log(self);
          if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v152 = @"com.apple.ioport.transport.USB.published";
            _os_log_error_impl(&dword_0, v124, OS_LOG_TYPE_ERROR, "Failed to send analytics event! (eventName: %@)", buf, 0xCu);
          }
        }

LABEL_101:
        IOObjectRelease(HIDWORD(v146));
        return;
      }

      v14 = objc_msgSend_log(self);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v152 = "IOPort";
        v15 = "Could not find parent entry in %s plane!";
        goto LABEL_14;
      }
    }

    else
    {
      v14 = objc_msgSend_log(self);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v152 = @"com.apple.ioport.transport.USB.published";
        v15 = "Analytics disabled for this event - ignoring... (eventName: %@)";
LABEL_14:
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, v15, buf, 0xCu);
      }
    }
  }
}

@end