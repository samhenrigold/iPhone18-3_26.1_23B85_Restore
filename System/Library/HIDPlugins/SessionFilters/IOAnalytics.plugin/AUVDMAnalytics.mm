@interface AUVDMAnalytics
- (AUVDMAnalytics)init;
- (BOOL)_startEventMonitoring;
- (void)_handleServiceMatched:(unsigned int)matched;
- (void)_startEventMonitoring;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation AUVDMAnalytics

- (AUVDMAnalytics)init
{
  v12.receiver = self;
  v12.super_class = AUVDMAnalytics;
  v2 = [(AUVDMAnalytics *)&v12 init];
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

  queue = [(AUVDMAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __23__AUVDMAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __23__AUVDMAnalytics_start__block_invoke(uint64_t a1)
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

  queue = [(AUVDMAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __22__AUVDMAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __22__AUVDMAnalytics_stop__block_invoke(uint64_t a1)
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
  if (![(AUVDMAnalytics *)self monitoring]&& [(AUVDMAnalytics *)self started])
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
      *v13 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v13, 2u);
    }

    [(AUVDMAnalytics *)self setMonitoring:1];
    [(AUVDMAnalytics *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
    ioNotificationPort = [(AUVDMAnalytics *)self ioNotificationPort];
    queue = [(AUVDMAnalytics *)self queue];
    IONotificationPortSetDispatchQueue(ioNotificationPort, queue);

    v7 = IOServiceMatching("IOPortTransportProtocolAppleUVDM");
    v8 = objc_msgSend_log(self);
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(AUVDMAnalytics *)v7 _startEventMonitoring];
      }

      v10 = IOServiceAddMatchingNotification([(AUVDMAnalytics *)self ioNotificationPort], "IOServiceMatched", v7, _servicesMatched, self, &self->_ioServiceMatchingIterator);
      if (!v10)
      {
        _servicesMatched(self, self->_ioServiceMatchingIterator);
        v11 = 1;
LABEL_12:

        return v11;
      }

      [(AUVDMAnalytics *)self _startEventMonitoring];
    }

    else
    {
      [(AUVDMAnalytics *)v8 _startEventMonitoring];
    }

    v11 = 0;
    goto LABEL_12;
  }

  return [(AUVDMAnalytics *)self monitoring];
}

- (void)_stopEventMonitoring
{
  if ([(AUVDMAnalytics *)self monitoring])
  {
    v3 = objc_msgSend_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v5, 2u);
    }

    [(AUVDMAnalytics *)self setMonitoring:0];
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    if ([(AUVDMAnalytics *)self ioNotificationPort])
    {
      IONotificationPortDestroy([(AUVDMAnalytics *)self ioNotificationPort]);
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
      v201 = name;
      OUTLINED_FUNCTION_2();
      _os_log_impl(v6, v7, OS_LOG_TYPE_INFO, v8, v9, 0xCu);
    }

    if (![(AUVDMAnalytics *)self analyticsEventsEnabled])
    {
      v19 = objc_msgSend_log(self);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_8();
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Analytics disabled for this event - ignoring... (eventName: %@)", buf, 0xCu);
      }

      goto LABEL_100;
    }

    if (!IOObjectConformsTo(matched, "IOPortTransportProtocolAppleUVDM"))
    {
      v19 = objc_msgSend_log(self);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_8();
        _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Could not find AUVDM service in %s plane!", buf, 0xCu);
      }

      goto LABEL_100;
    }

    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = OUTLINED_FUNCTION_0();
    CFProperty = IORegistryEntryCreateCFProperty(v11, v12, v13, v14);
    objc_opt_class();
    v16 = OUTLINED_FUNCTION_3();
    v18 = castNSObjectToType(v16, v17);

    if (v18)
    {
      [v10 setObject:v18 forKey:@"PortType"];
    }

    else
    {
      v20 = objc_msgSend_log(self);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4(v167, v168, v169, v170, v171);
      }
    }

    v21 = OUTLINED_FUNCTION_0();
    v25 = IORegistryEntryCreateCFProperty(v21, v22, v23, v24);
    objc_opt_class();
    v26 = OUTLINED_FUNCTION_3();
    v28 = castNSObjectToType(v26, v27);

    v178 = v28;
    if (v28)
    {
      [v10 setObject:v28 forKey:@"PortNumber"];
      if (v18)
      {
        v29 = IOServiceMatching("IOPort");
        v196 = @"PortType";
        v197 = @"PortNumber";
        v198 = v18;
        v199 = v28;
        v30 = [NSDictionary dictionaryWithObjects:&v198 forKeys:&v196 count:2];
        [(__CFDictionary *)v29 setObject:v30 forKey:@"IOPropertyMatch"];

        v31 = objc_msgSend_log(self);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v201 = v29;
          _os_log_debug_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "matchingDict: %@", buf, 0xCu);
        }

        v32 = v29;
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v32);
        if (MatchingService)
        {
          v34 = MatchingService;
          v35 = IORegistryEntryCreateCFProperty(MatchingService, @"BuiltIn", kCFAllocatorDefault, 0);
          v36 = objc_opt_class();
          v37 = castNSObjectToType(v35, v36);

          if (v37)
          {
            [v10 setObject:v37 forKey:@"PortBuiltIn"];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_4(&dword_0, &_os_log_default, v44, "Could not find if parent port is built-in!", buf);
          }

          v45 = IORegistryEntryCreateCFProperty(v34, @"ConnectionUUID", kCFAllocatorDefault, 0);
          v46 = objc_opt_class();
          v47 = castNSObjectToType(v45, v46);

          if (v47)
          {
            [OUTLINED_FUNCTION_5() setObject:? forKey:?];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_4(&dword_0, &_os_log_default, v48, "Could not find parent port connection UUID!", buf);
          }

          IOObjectRelease(v34);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          OUTLINED_FUNCTION_4(&dword_0, &_os_log_default, v43, "Could not find parent port!", buf);
        }

LABEL_38:
        v49 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v49, v50, v51, v52);
        OUTLINED_FUNCTION_6();
        v53 = OUTLINED_FUNCTION_3();
        v55 = castNSObjectToType(v53, v54);

        if (v55)
        {
          [v10 setObject:v55 forKey:@"AUVDM_Vendor"];
        }

        else
        {
          v56 = objc_msgSend_log(self);
          if (OUTLINED_FUNCTION_7(v56))
          {
            *buf = 0;
            OUTLINED_FUNCTION_1(&dword_0, v57, v58, "Could not find AUVDM Vendor!", v59, v60, v61, v62, v177, v178, v179, v181, v183, v185, v187, v189, v190, v191, v192, v193, cf, v195, v196, v197, v198, v199);
          }
        }

        v63 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v63, v64, v65, v66);
        OUTLINED_FUNCTION_6();
        v67 = OUTLINED_FUNCTION_3();
        v69 = castNSObjectToType(v67, v68);

        if (v69)
        {
          [v10 setObject:v69 forKey:@"AUVDM_Product"];
        }

        else
        {
          v70 = objc_msgSend_log(self);
          if (OUTLINED_FUNCTION_7(v70))
          {
            *buf = 0;
            OUTLINED_FUNCTION_1(&dword_0, v71, v72, "Could not find AUVDM Product!", v73, v74, v75, v76, v177, v178, v179, v181, v183, v185, v187, v189, v190, v191, v192, v193, cf, v195, v196, v197, v198, v199);
          }
        }

        v77 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v77, v78, v79, v80);
        OUTLINED_FUNCTION_6();
        v81 = OUTLINED_FUNCTION_3();
        v83 = castNSObjectToType(v81, v82);

        v188 = v18;
        v182 = v83;
        if (v83)
        {
          [v10 setObject:v83 forKey:@"AUVDM_Manufacturer"];
        }

        else
        {
          v84 = objc_msgSend_log(self);
          if (OUTLINED_FUNCTION_7(v84))
          {
            *buf = 0;
            OUTLINED_FUNCTION_1(&dword_0, v85, v86, "Could not find AUVDM Manufacturer!", v87, v88, v89, v90, v177, v178, v179, 0, v183, v185, v18, v189, v190, v191, v192, v193, cf, v195, v196, v197, v198, v199);
          }
        }

        v91 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v91, v92, v93, v94);
        OUTLINED_FUNCTION_6();
        v95 = OUTLINED_FUNCTION_3();
        v97 = castNSObjectToType(v95, v96);

        v186 = v55;
        v180 = v97;
        if (v97)
        {
          [v10 setObject:v97 forKey:@"AUVDM_Model"];
        }

        else
        {
          v98 = objc_msgSend_log(self);
          if (OUTLINED_FUNCTION_7(v98))
          {
            *buf = 0;
            OUTLINED_FUNCTION_1(&dword_0, v99, v100, "Could not find AUVDM Model!", v101, v102, v103, v104, v177, v178, 0, v182, v183, v55, v188, v189, v190, v191, v192, v193, cf, v195, v196, v197, v198, v199);
          }
        }

        v105 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v105, v106, v107, v108);
        OUTLINED_FUNCTION_6();
        v109 = OUTLINED_FUNCTION_3();
        v111 = castNSObjectToType(v109, v110);

        v184 = v69;
        if (v111)
        {
          [v10 setObject:v111 forKey:@"AUVDM_FirmwareVersion"];
        }

        else
        {
          v112 = objc_msgSend_log(self);
          if (OUTLINED_FUNCTION_7(v112))
          {
            *buf = 0;
            OUTLINED_FUNCTION_1(&dword_0, v113, v114, "Could not find AUVDM FirmwareVersion!", v115, v116, v117, v118, v177, v178, v180, v182, v69, v186, v188, v189, v190, v191, v192, v193, cf, v195, v196, v197, v198, v199);
          }
        }

        v119 = OUTLINED_FUNCTION_0();
        v123 = IORegistryEntryCreateCFProperty(v119, v120, v121, v122);
        v124 = objc_opt_class();
        v125 = castNSObjectToType(v123, v124);

        if (v125)
        {
          [v10 setObject:v125 forKey:@"AUVDM_HardwareVersion"];
        }

        else
        {
          v126 = objc_msgSend_log(self);
          if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            OUTLINED_FUNCTION_9(&dword_0, v127, v128, "Could not find AUVDM HardwareVersion!", v129, v130, v131, v132, v177, v178, v180, v182, v184, v186, v188, v189, v190, v191, v192, v193, cf, v195, v196, v197, v198, v199);
          }
        }

        v133 = OUTLINED_FUNCTION_0();
        v137 = IORegistryEntryCreateCFProperty(v133, v134, v135, v136);
        v138 = objc_opt_class();
        v139 = castNSObjectToType(v137, v138);

        if (v139)
        {
          [v10 setObject:v139 forKey:@"AUVDM_UserString"];
        }

        else
        {
          v140 = objc_msgSend_log(self);
          if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            OUTLINED_FUNCTION_9(&dword_0, v141, v142, "Could not find AUVDM UserString!", v143, v144, v145, v146, v177, v178, v180, v182, v184, v186, v188, v189, v190, v191, v192, v193, cf, v195, v196, v197, v198, v199);
          }
        }

        v147 = [v10 objectForKeyedSubscript:@"AUVDM_Manufacturer"];
        v148 = v147;
        if (v147 && [v147 length])
        {
          v149 = [NSScanner scannerWithString:v148];
          *buf = 0;
          if ([v149 scanHexInt:buf])
          {
            v150 = [NSNumber numberWithUnsignedInt:*buf];
            [OUTLINED_FUNCTION_5() setObject:? forKey:?];

            v151 = objc_msgSend_log(self);
            if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
            {
              LOWORD(cf) = 0;
              _os_log_impl(&dword_0, v151, OS_LOG_TYPE_INFO, "Converted AUVDM Manufacturer to VID!", &cf, 2u);
            }
          }
        }

        v152 = [v10 objectForKeyedSubscript:@"AUVDM_Model"];
        v153 = v152;
        if (v152 && [v152 length])
        {
          v154 = [NSScanner scannerWithString:v153];
          *buf = 0;
          if ([v154 scanHexInt:buf])
          {
            v155 = [NSNumber numberWithUnsignedInt:*buf];
            [v10 setObject:v155 forKey:@"ProductID"];

            v156 = objc_msgSend_log(self);
            if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
            {
              LOWORD(cf) = 0;
              _os_log_impl(&dword_0, v156, OS_LOG_TYPE_INFO, "Converted AUVDM Model to PID!", &cf, 2u);
            }
          }
        }

        v157 = [OUTLINED_FUNCTION_5() objectForKeyedSubscript:?];

        if (v157)
        {
          v158 = [OUTLINED_FUNCTION_5() objectForKeyedSubscript:?];
          [OUTLINED_FUNCTION_5() setObject:? forKey:?];
        }

        else
        {
          v158 = objc_msgSend_log(self);
          if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_4(&dword_0, v158, v159, "Could not find AUVDM AccessoryName!", buf);
          }
        }

        v160 = objc_msgSend_log(self);
        if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_8();
          _os_log_impl(&dword_0, v160, OS_LOG_TYPE_DEFAULT, "Sending analytics event... (eventName: %@)", buf, 0xCu);
        }

        v161 = objc_msgSend_log(self);
        if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v201 = v10;
          _os_log_debug_impl(&dword_0, v161, OS_LOG_TYPE_DEBUG, "eventDict: %@", buf, 0xCu);
        }

        v19 = v10;
        if ((AnalyticsSendEventLazy() & 1) == 0)
        {
          v162 = objc_msgSend_log(self);
          if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v201 = @"com.apple.ioport.transport.protocol.AppleUVDM.published";
            _os_log_error_impl(&dword_0, v162, OS_LOG_TYPE_ERROR, "Failed to send analytics event! (eventName: %@)", buf, 0xCu);
          }
        }

LABEL_100:
        return;
      }
    }

    else
    {
      v38 = objc_msgSend_log(self);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4(v172, v173, v174, v175, v176);
      }
    }

    cf = 0;
    v39 = OUTLINED_FUNCTION_0();
    IORegistryEntryCreateCFProperties(v39, v40, v41, v42);
    v32 = objc_msgSend_log(self);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_2();
      _os_log_fault_impl(v163, v164, OS_LOG_TYPE_FAULT, v165, v166, 0xCu);
    }

    goto LABEL_38;
  }
}

- (void)_startEventMonitoring
{
  if (os_log_type_enabled(self, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    OUTLINED_FUNCTION_4(&dword_0, self, v2, "IOServiceMatching failed", v3);
  }
}

@end