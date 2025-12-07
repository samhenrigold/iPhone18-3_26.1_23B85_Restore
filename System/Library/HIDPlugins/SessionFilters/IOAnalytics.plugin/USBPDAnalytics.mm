@interface USBPDAnalytics
- (BOOL)_startEventMonitoring;
- (USBPDAnalytics)init;
- (void)_handleServiceMatched:(unsigned int)matched;
- (void)_startEventMonitoring;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation USBPDAnalytics

- (USBPDAnalytics)init
{
  v12.receiver = self;
  v12.super_class = USBPDAnalytics;
  v2 = [(USBPDAnalytics *)&v12 init];
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

  queue = [(USBPDAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __23__USBPDAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __23__USBPDAnalytics_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) started];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = objc_msgSend_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43__AppleUSBCLightningAdapterAnalytics_start__block_invoke_cold_1(v4);
    }
  }

  else
  {
    [v3 setStarted:1];
    v5 = *(a1 + 32);

    [v5 _startEventMonitoring];
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

  queue = [(USBPDAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __22__USBPDAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __22__USBPDAnalytics_stop__block_invoke(uint64_t a1)
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
      __42__AppleUSBCLightningAdapterAnalytics_stop__block_invoke_cold_1(v5);
    }
  }
}

- (BOOL)_startEventMonitoring
{
  if (![(USBPDAnalytics *)self monitoring]&& [(USBPDAnalytics *)self started])
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
      *v14 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v14, 2u);
    }

    [(USBPDAnalytics *)self setMonitoring:1];
    [(USBPDAnalytics *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
    ioNotificationPort = [(USBPDAnalytics *)self ioNotificationPort];
    queue = [(USBPDAnalytics *)self queue];
    IONotificationPortSetDispatchQueue(ioNotificationPort, queue);

    v7 = IOServiceMatching("IOPortTransportComponentCCUSBPD");
    v9 = v7;
    if (v7)
    {
      [(__CFDictionary *)v7 setObject:&off_240E8 forKey:@"IOPropertyExistsMatch"];
      v10 = objc_msgSend_log(self);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(AUVDMAnalytics *)v9 _startEventMonitoring];
      }

      v11 = IOServiceAddMatchingNotification([(USBPDAnalytics *)self ioNotificationPort], "IOServiceMatched", v9, _servicesMatched_3, self, &self->_ioServiceMatchingIterator);
      if (!v11)
      {
        _servicesMatched_3(self, self->_ioServiceMatchingIterator);
        v12 = 1;
LABEL_12:

        return v12;
      }

      [(AUVDMAnalytics *)self _startEventMonitoring];
    }

    else
    {
      [(USBPDAnalytics *)self _startEventMonitoring];
    }

    v12 = 0;
    goto LABEL_12;
  }

  return [(USBPDAnalytics *)self monitoring];
}

- (void)_stopEventMonitoring
{
  if ([(USBPDAnalytics *)self monitoring])
  {
    v3 = objc_msgSend_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v5, 2u);
    }

    [(USBPDAnalytics *)self setMonitoring:0];
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    if ([(USBPDAnalytics *)self ioNotificationPort])
    {
      IONotificationPortDestroy([(USBPDAnalytics *)self ioNotificationPort]);
    }
  }
}

- (void)_handleServiceMatched:(unsigned int)matched
{
  if (matched)
  {
    memset(name, 0, sizeof(name));
    IORegistryEntryGetName(matched, name);
    v5 = objc_msgSend_log(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v161 = name;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Service matched! (serviceName: %s)", buf, 0xCu);
    }

    if (![(USBPDAnalytics *)self analyticsEventsEnabled])
    {
      v15 = objc_msgSend_log(self);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_5_3();
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Analytics disabled for this event - ignoring... (eventName: %@)", buf, 0xCu);
      }

      goto LABEL_79;
    }

    if (!IOObjectConformsTo(matched, "IOPortTransportComponentCCUSBPD"))
    {
      v15 = objc_msgSend_log(self);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_5_3();
        _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Could not find AUVDM service in %s plane!", buf, 0xCu);
      }

      goto LABEL_79;
    }

    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = OUTLINED_FUNCTION_0();
    CFProperty = IORegistryEntryCreateCFProperty(v7, v8, v9, v10);
    objc_opt_class();
    v12 = OUTLINED_FUNCTION_1_5();
    v14 = castNSObjectToType(v12, v13);

    if (v14)
    {
      [v6 setObject:v14 forKey:@"PortType"];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v16, "Could not find parent port type!", v17, v18, v19, v20, v134, v135, v136, v137, v138, v139, v140, v142, v143, selfCopy, v146, v148, v150, v151, v152, v153, v154, cf, v156, v157, v158, v159);
    }

    v21 = OUTLINED_FUNCTION_0();
    v25 = IORegistryEntryCreateCFProperty(v21, v22, v23, v24);
    v26 = objc_opt_class();
    v27 = castNSObjectToType(v25, v26);

    v149 = v14;
    if (v27)
    {
      OUTLINED_FUNCTION_7_0();
      if (v14)
      {
        v28 = IOServiceMatching("IOPort");
        v156 = @"PortType";
        v157 = @"PortNumber";
        v158 = v14;
        v159 = v27;
        v29 = [NSDictionary dictionaryWithObjects:&v158 forKeys:&v156 count:2];
        [(__CFDictionary *)v28 setObject:v29 forKey:@"IOPropertyMatch"];

        v30 = objc_msgSend_log(self);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v161 = v28;
          _os_log_debug_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "matchingDict: %@", buf, 0xCu);
        }

        v31 = v28;
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v31);
        if (MatchingService)
        {
          v33 = MatchingService;
          v143 = v27;
          selfCopy = self;
          v34 = IORegistryEntryCreateCFProperty(MatchingService, @"BuiltIn", kCFAllocatorDefault, 0);
          v35 = objc_opt_class();
          v36 = castNSObjectToType(v34, v35);

          if (v36)
          {
            [v6 setObject:v36 forKey:@"PortBuiltIn"];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v52, "Could not find if parent port is built-in!", v53, v54, v55, v56, v134, v135, v136, v137, v138, v139, v140, v142, v27, self, v146, v149, v150, v151, v152, v153, v154, cf, v156, v157, v158, v159);
          }

          v57 = IORegistryEntryCreateCFProperty(v33, @"ConnectionUUID", kCFAllocatorDefault, 0);
          objc_opt_class();
          v58 = OUTLINED_FUNCTION_1_5();
          v60 = castNSObjectToType(v58, v59);

          if (v60)
          {
            [v6 setObject:v60 forKey:@"ConnectionUUID"];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v61, "Could not find parent port connection UUID!", v62, v63, v64, v65, v134, v135, v136, v137, v138, v139, v140, v142, v143, selfCopy, v146, v149, v150, v151, v152, v153, v154, cf, v156, v157, v158, v159);
          }

          IOObjectRelease(v33);

          v27 = v143;
          self = selfCopy;
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v47, "Could not find parent port!", v48, v49, v50, v51, v134, v135, v136, v137, v138, v139, v140, v142, v143, selfCopy, v146, v14, v150, v151, v152, v153, v154, cf, v156, v157, v158, v159);
        }

LABEL_36:
        v66 = v27;
        v67 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v67, v68, v69, v70);
        OUTLINED_FUNCTION_3_4();
        v71 = OUTLINED_FUNCTION_1_5();
        v73 = castNSObjectToType(v71, v72);

        if (v73)
        {
          [v6 setObject:v73 forKey:@"USBPD_ComponentAddress"];
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v74, "Could not find component address!", v75, v76, v77, v78, v134, v135, v136, v137, v138, v139, v140, v142, v143, selfCopy, v146, v149, v150, v151, v152, v153, v154, cf, v156, v157, v158, v159);
        }

        v79 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v79, v80, v81, v82);
        OUTLINED_FUNCTION_3_4();
        v83 = OUTLINED_FUNCTION_1_5();
        v85 = castNSObjectToType(v83, v84);

        v147 = v85;
        if (v85)
        {
          [v6 setObject:v85 forKey:@"USBPD_SpecificationRevision"];
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v86, "Could not find specification revision!", v87, v88, v89, v90, v134, v135, v136, v137, v138, v139, v140, v142, v143, selfCopy, 0, v149, v150, v151, v152, v153, v154, cf, v156, v157, v158, v159);
        }

        v91 = OUTLINED_FUNCTION_0();
        v95 = IORegistryEntryCreateCFProperty(v91, v92, v93, v94);
        objc_opt_class();
        v96 = OUTLINED_FUNCTION_1_5();
        v98 = castNSObjectToType(v96, v97);

        v99 = v66;
        v100 = v98;
        v101 = v149;
        if (v98)
        {
          [v98 objectForKeyedSubscript:@"Vendor ID"];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_3_4();
          v102 = OUTLINED_FUNCTION_1_5();
          v104 = castNSObjectToType(v102, v103);

          if (v104)
          {
            v101 = [v100 objectForKeyedSubscript:@"Vendor ID"];
            OUTLINED_FUNCTION_7_0();
          }

          [v100 objectForKeyedSubscript:@"Product ID"];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_3_4();
          v105 = OUTLINED_FUNCTION_1_5();
          v107 = castNSObjectToType(v105, v106);

          if (v107)
          {
            v101 = [v100 objectForKeyedSubscript:@"Product ID"];
            OUTLINED_FUNCTION_7_0();
          }

          [v100 objectForKeyedSubscript:@"bcdDevice"];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_3_4();
          v108 = OUTLINED_FUNCTION_1_5();
          v110 = castNSObjectToType(v108, v109);

          if (v110)
          {
            v101 = [v100 objectForKeyedSubscript:@"bcdDevice"];
            OUTLINED_FUNCTION_7_0();
          }

          selfCopy2 = self;
          if (v73 == &dword_0 + 2)
          {
            [v100 objectForKeyedSubscript:@"Product Type"];
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_4();
            v111 = OUTLINED_FUNCTION_1_5();
            v113 = castNSObjectToType(v111, v112);

            if (v113)
            {
              v114 = [v100 objectForKeyedSubscript:@"Product Type"];
              OUTLINED_FUNCTION_7_0();
            }
          }

          v115 = v6;
          v141 = v100;
          v116 = [v100 objectForKeyedSubscript:@"VDOs"];
          objc_opt_class();
          v117 = OUTLINED_FUNCTION_1_5();
          v119 = castNSObjectToType(v117, v118);

          if (v119 && [v119 count])
          {
            v120 = 0;
            do
            {
              v121 = [v119 objectAtIndexedSubscript:v120];
              objc_opt_class();
              v122 = OUTLINED_FUNCTION_1_5();
              v124 = castNSObjectToType(v122, v123);

              if (v124)
              {
                v125 = [v119 objectAtIndexedSubscript:v120];
                v126 = *[v125 bytes];

                v127 = @"USBPD_VDO_DiscoverIdentity_IDHeader";
                switch(v120)
                {
                  case 0:
                    goto LABEL_64;
                  case 1:
                    v127 = @"USBPD_VDO_DiscoverIdentity_CertStat";
                    goto LABEL_64;
                  case 2:
                    v127 = @"USBPD_VDO_DiscoverIdentity_Product";
                    goto LABEL_64;
                  case 3:
                    v127 = @"USBPD_VDO_DiscoverIdentity_4";
                    goto LABEL_64;
                  case 4:
                    v127 = @"USBPD_VDO_DiscoverIdentity_5";
                    goto LABEL_64;
                  case 5:
                    v127 = @"USBPD_VDO_DiscoverIdentity_6";
LABEL_64:
                    v128 = [NSNumber numberWithUnsignedInt:bswap32(v126)];
                    [v115 setObject:v128 forKey:v127];

                    break;
                  default:
                    break;
                }
              }

              v129 = [v119 count];
              if (v129 >= 6)
              {
                v130 = 6;
              }

              else
              {
                v130 = v129;
              }

              ++v120;
            }

            while (v130 > v120);
          }

          v101 = v149;
          v6 = v115;
          self = selfCopy2;
          v100 = v141;
        }

        v131 = objc_msgSend_log(self);
        if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_5_3();
          _os_log_impl(&dword_0, v131, OS_LOG_TYPE_DEFAULT, "Sending analytics event... (eventName: %@)", buf, 0xCu);
        }

        v132 = objc_msgSend_log(self);
        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v161 = v6;
          _os_log_debug_impl(&dword_0, v132, OS_LOG_TYPE_DEBUG, "eventDict: %@", buf, 0xCu);
        }

        v15 = v6;
        if ((AnalyticsSendEventLazy() & 1) == 0)
        {
          v133 = objc_msgSend_log(self);
          if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v161 = @"com.apple.ioport.transport.component.USBPD.published";
            _os_log_error_impl(&dword_0, v133, OS_LOG_TYPE_ERROR, "Failed to send analytics event! (eventName: %@)", buf, 0xCu);
          }
        }

LABEL_79:
        return;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v37, "Could not find parent port number!", v38, v39, v40, v41, v134, v135, v136, v137, v138, v139, v140, v142, v143, selfCopy, v146, v14, v150, v151, v152, v153, v154, cf, v156, v157, v158, v159);
    }

    cf = 0;
    v42 = OUTLINED_FUNCTION_0();
    IORegistryEntryCreateCFProperties(v42, v43, v44, v45);
    v46 = objc_msgSend_log(self);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_5_3();
      _os_log_fault_impl(&dword_0, v46, OS_LOG_TYPE_FAULT, "Could not find parent port type and number! (serviceProperties: %@)", buf, 0xCu);
    }

    goto LABEL_36;
  }
}

- (void)_startEventMonitoring
{
  v3 = objc_msgSend_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "IOServiceMatching failed", v4, 2u);
  }
}

@end