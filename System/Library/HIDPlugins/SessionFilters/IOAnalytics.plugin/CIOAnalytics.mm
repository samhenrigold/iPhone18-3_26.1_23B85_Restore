@interface CIOAnalytics
- (BOOL)_startEventMonitoring;
- (CIOAnalytics)init;
- (void)_handleServiceMatched:(unsigned int)matched;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation CIOAnalytics

- (CIOAnalytics)init
{
  v12.receiver = self;
  v12.super_class = CIOAnalytics;
  v2 = [(CIOAnalytics *)&v12 init];
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

  queue = [(CIOAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __21__CIOAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __21__CIOAnalytics_start__block_invoke(uint64_t a1)
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

  queue = [(CIOAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __20__CIOAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __20__CIOAnalytics_stop__block_invoke(uint64_t a1)
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
  if ([(CIOAnalytics *)self monitoring]|| ![(CIOAnalytics *)self started])
  {

    return [(CIOAnalytics *)self monitoring];
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
      *v13 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v13, 2u);
    }

    [(CIOAnalytics *)self setMonitoring:1];
    [(CIOAnalytics *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
    ioNotificationPort = [(CIOAnalytics *)self ioNotificationPort];
    queue = [(CIOAnalytics *)self queue];
    IONotificationPortSetDispatchQueue(ioNotificationPort, queue);

    v7 = IOServiceMatching("IOThunderboltSwitch");
    v8 = objc_msgSend_log(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(AUVDMAnalytics *)v7 _startEventMonitoring];
    }

    ioNotificationPort2 = [(CIOAnalytics *)self ioNotificationPort];
    v10 = v7;
    v11 = IOServiceAddMatchingNotification(ioNotificationPort2, "IOServiceFirstMatch", v10, _servicesMatched_0, self, &self->_ioServiceMatchingIterator);
    if (v11)
    {
      [(AUVDMAnalytics *)self _startEventMonitoring];
    }

    else
    {
      _servicesMatched_0(self, self->_ioServiceMatchingIterator);
    }

    return v11 == 0;
  }
}

- (void)_stopEventMonitoring
{
  if ([(CIOAnalytics *)self monitoring])
  {
    v3 = objc_msgSend_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v5, 2u);
    }

    [(CIOAnalytics *)self setMonitoring:0];
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    if ([(CIOAnalytics *)self ioNotificationPort])
    {
      IONotificationPortDestroy([(CIOAnalytics *)self ioNotificationPort]);
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
      v196 = name;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Service matched! (serviceName: %s)", buf, 0xCu);
    }

    if ([(CIOAnalytics *)self analyticsEventsEnabled])
    {
      HIDWORD(v190) = 0;
      if (!IORegistryEntryGetParentEntry(matched, "IOPort", &v190 + 1) && HIDWORD(v190))
      {
        if (!IOObjectConformsTo(HIDWORD(v190), "IOPortTransportStateCIO"))
        {
          v17 = objc_msgSend_log(self);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v196 = "IOPort";
            _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Could not find CIO transport in %s plane!", buf, 0xCu);
          }

          goto LABEL_100;
        }

        v6 = objc_alloc_init(NSMutableDictionary);
        OUTLINED_FUNCTION_2_1();
        CFProperty = IORegistryEntryCreateCFProperty(v7, v8, v9, v10);
        objc_opt_class();
        v12 = OUTLINED_FUNCTION_3();
        v14 = castNSObjectToType(v12, v13);

        if (v14)
        {
          [v6 setObject:v14 forKey:@"PortType"];
        }

        else
        {
          v18 = objc_msgSend_log(self);
          if (OUTLINED_FUNCTION_5_0(v18))
          {
            *buf = 0;
            OUTLINED_FUNCTION_0_1(&dword_0, v19, v20, "Could not find parent port type!", v21, v22, v23, v24, v178, v180, v182, v184, v185, v186, v187, v188, cf, v190, v191, v192, v193, v194);
          }
        }

        OUTLINED_FUNCTION_2_1();
        IORegistryEntryCreateCFProperty(v25, v26, v27, v28);
        OUTLINED_FUNCTION_6_0();
        v29 = OUTLINED_FUNCTION_3();
        v31 = castNSObjectToType(v29, v30);

        v32 = &IOIteratorNext_ptr;
        v181 = v31;
        if (v31)
        {
          [v6 setObject:v31 forKey:@"PortNumber"];
          if (v14)
          {
            v33 = IOServiceMatching("IOPort");
            v191 = @"PortType";
            v192 = @"PortNumber";
            v193 = v14;
            v194 = v31;
            v34 = [NSDictionary dictionaryWithObjects:&v193 forKeys:&v191 count:2];
            [(__CFDictionary *)v33 setObject:v34 forKey:@"IOPropertyMatch"];

            v35 = objc_msgSend_log(self);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v196 = v33;
              OUTLINED_FUNCTION_1_1();
              _os_log_debug_impl(v174, v175, OS_LOG_TYPE_DEBUG, v176, v177, 0xCu);
            }

            v32 = kIOMainPortDefault;
            v36 = v33;
            MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v36);
            if (MatchingService)
            {
              v38 = MatchingService;
              OUTLINED_FUNCTION_2_1();
              IORegistryEntryCreateCFProperty(v39, v40, v41, v42);
              OUTLINED_FUNCTION_6_0();
              v43 = OUTLINED_FUNCTION_3();
              v45 = castNSObjectToType(v43, v44);

              if (v45)
              {
                [v6 setObject:v45 forKey:@"PortBuiltIn"];
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                OUTLINED_FUNCTION_4(&dword_0, &_os_log_default, v58, "Could not find if parent port is built-in!", buf);
              }

              OUTLINED_FUNCTION_2_1();
              v32 = IORegistryEntryCreateCFProperty(v59, v60, v61, v62);
              objc_opt_class();
              v63 = OUTLINED_FUNCTION_3();
              v35 = castNSObjectToType(v63, v64);

              if (v35)
              {
                OUTLINED_FUNCTION_7_0();
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                OUTLINED_FUNCTION_4(&dword_0, &_os_log_default, v65, "Could not find parent port connection UUID!", buf);
              }

              IOObjectRelease(v38);
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              OUTLINED_FUNCTION_4(&dword_0, &_os_log_default, v57, "Could not find parent port!", buf);
            }

LABEL_44:
            OUTLINED_FUNCTION_2_1();
            IORegistryEntryCreateCFProperty(v66, v67, v68, v69);
            OUTLINED_FUNCTION_6_0();
            v70 = OUTLINED_FUNCTION_3();
            v72 = castNSObjectToType(v70, v71);

            if (v72)
            {
              [v6 setObject:v72 forKey:@"Generation"];
            }

            else
            {
              v73 = objc_msgSend_log(self);
              if (OUTLINED_FUNCTION_5_0(v73))
              {
                *buf = 0;
                OUTLINED_FUNCTION_0_1(&dword_0, v74, v75, "Could not find generation!", v76, v77, v78, v79, v178, v181, v182, v184, v185, v186, v187, v188, cf, v190, v191, v192, v193, v194);
              }
            }

            OUTLINED_FUNCTION_2_1();
            IORegistryEntryCreateCFProperty(v80, v81, v82, v83);
            OUTLINED_FUNCTION_6_0();
            v84 = OUTLINED_FUNCTION_3();
            v86 = castNSObjectToType(v84, v85);

            if (v86)
            {
              [v6 setObject:v86 forKey:@"LegacyAdapter"];
            }

            else
            {
              v87 = objc_msgSend_log(self);
              if (OUTLINED_FUNCTION_5_0(v87))
              {
                *buf = 0;
                OUTLINED_FUNCTION_0_1(&dword_0, v88, v89, "Could not find Legacy Adapter!", v90, v91, v92, v93, v178, v181, v182, v184, v185, v186, v187, v188, cf, v190, v191, v192, v193, v194);
              }
            }

            OUTLINED_FUNCTION_2_1();
            IORegistryEntryCreateCFProperty(v94, v95, v96, v97);
            OUTLINED_FUNCTION_6_0();
            v98 = OUTLINED_FUNCTION_3();
            v100 = castNSObjectToType(v98, v99);

            v183 = v14;
            if (v100)
            {
              [v6 setObject:v100 forKey:@"LinkTrainingMode"];
            }

            else
            {
              v101 = objc_msgSend_log(self);
              if (OUTLINED_FUNCTION_5_0(v101))
              {
                *buf = 0;
                OUTLINED_FUNCTION_0_1(&dword_0, v102, v103, "Could not find link training mode!", v104, v105, v106, v107, v178, v181, v14, v184, v185, v186, v187, v188, cf, v190, v191, v192, v193, v194);
              }
            }

            OUTLINED_FUNCTION_2_1();
            IORegistryEntryCreateCFProperty(v108, v109, v110, v111);
            OUTLINED_FUNCTION_6_0();
            v112 = OUTLINED_FUNCTION_3();
            v114 = castNSObjectToType(v112, v113);

            if (v114)
            {
              [v6 setObject:v114 forKey:@"CableSpeed"];
            }

            else
            {
              v115 = objc_msgSend_log(self);
              if (OUTLINED_FUNCTION_5_0(v115))
              {
                *buf = 0;
                OUTLINED_FUNCTION_0_1(&dword_0, v116, v117, "Could not find cable speed!", v118, v119, v120, v121, v178, v181, v183, v184, v185, v186, v187, v188, cf, v190, v191, v192, v193, v194);
              }
            }

            OUTLINED_FUNCTION_2_1();
            IORegistryEntryCreateCFProperty(v122, v123, v124, v125);
            OUTLINED_FUNCTION_6_0();
            v126 = OUTLINED_FUNCTION_3();
            v128 = castNSObjectToType(v126, v127);

            if (v128)
            {
              [v6 setObject:v128 forKey:@"CableGeneration"];
            }

            else
            {
              v129 = objc_msgSend_log(self);
              if (OUTLINED_FUNCTION_5_0(v129))
              {
                *buf = 0;
                OUTLINED_FUNCTION_0_1(&dword_0, v130, v131, "Could not find cable generation!", v132, v133, v134, v135, v178, v181, v183, v184, v185, v186, v187, v188, cf, v190, v191, v192, v193, v194);
              }
            }

            OUTLINED_FUNCTION_2_1();
            v140 = IORegistryEntryCreateCFProperty(v136, v137, v138, v139);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v141 = [v140 objectForKeyedSubscript:@"Device Vendor ID"];
              if (v141)
              {
                OUTLINED_FUNCTION_8_0();
              }

              v142 = [v140 objectForKeyedSubscript:@"Device Vendor Name"];

              if (v142)
              {
                OUTLINED_FUNCTION_7_0();
              }

              v143 = [v140 objectForKeyedSubscript:@"Device Model ID"];

              if (v143)
              {
                OUTLINED_FUNCTION_8_0();
              }

              v144 = [v140 objectForKeyedSubscript:{@"Device Model Revision", v114}];

              if (v144)
              {
                OUTLINED_FUNCTION_7_0();
              }

              v145 = v100;
              v146 = [v140 objectForKeyedSubscript:@"Device Model Name"];

              if (v146)
              {
                OUTLINED_FUNCTION_8_0();
              }

              v147 = v86;
              v148 = [v140 objectForKeyedSubscript:@"Vendor ID"];

              if (v148)
              {
                OUTLINED_FUNCTION_7_0();
              }

              v149 = v72;
              v150 = [v140 objectForKeyedSubscript:@"Device ID"];

              if (v150)
              {
                OUTLINED_FUNCTION_8_0();
              }

              v151 = [v140 objectForKeyedSubscript:@"ROM Version"];

              if (v151)
              {
                [v6 setObject:v151 forKey:@"ROMVersion"];
              }

              v35 = [v140 objectForKeyedSubscript:@"EEPROM Version"];

              if (v35)
              {
                OUTLINED_FUNCTION_7_0();
              }

              v72 = v149;
              v86 = v147;
              v100 = v145;
              v114 = v179;
            }

            else
            {
              v152 = objc_msgSend_log(self);
              if (OUTLINED_FUNCTION_5_0(v152))
              {
                *buf = 0;
                OUTLINED_FUNCTION_0_1(&dword_0, v153, v154, "Could not find metadata!", v155, v156, v157, v158, v178, v181, v183, v184, v185, v186, v187, v188, cf, v190, v191, v192, v193, v194);
              }
            }

            v159 = objc_msgSend_log(self);
            if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v196 = @"com.apple.ioport.transport.CIO.published";
              OUTLINED_FUNCTION_1_1();
              _os_log_impl(v160, v161, OS_LOG_TYPE_DEFAULT, v162, v163, 0xCu);
            }

            v164 = objc_msgSend_log(self);
            if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v196 = v6;
              OUTLINED_FUNCTION_1_1();
              _os_log_debug_impl(v166, v167, OS_LOG_TYPE_DEBUG, v168, v169, 0xCu);
            }

            v17 = v6;
            if ((AnalyticsSendEventLazy() & 1) == 0)
            {
              v165 = objc_msgSend_log(self);
              if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v196 = @"com.apple.ioport.transport.CIO.published";
                _os_log_error_impl(&dword_0, v165, OS_LOG_TYPE_ERROR, "Failed to send analytics event! (eventName: %@)", buf, 0xCu);
              }
            }

LABEL_100:
            IOObjectRelease(HIDWORD(v190));
            return;
          }
        }

        else
        {
          v46 = objc_msgSend_log(self);
          if (OUTLINED_FUNCTION_5_0(v46))
          {
            *buf = 0;
            OUTLINED_FUNCTION_0_1(&dword_0, v47, v48, "Could not find parent port number!", v49, v50, v51, v52, v178, 0, v182, v184, v185, v186, v187, v188, cf, v190, v191, v192, v193, v194);
          }
        }

        cf = 0;
        OUTLINED_FUNCTION_2_1();
        IORegistryEntryCreateCFProperties(v53, v54, v55, v56);
        v35 = objc_msgSend_log(self);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v196 = 0;
          OUTLINED_FUNCTION_1_1();
          _os_log_fault_impl(v170, v171, OS_LOG_TYPE_FAULT, v172, v173, 0xCu);
        }

        goto LABEL_44;
      }

      v15 = objc_msgSend_log(self);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v196 = "IOPort";
        v16 = "Could not find parent entry in %s plane!";
        goto LABEL_14;
      }
    }

    else
    {
      v15 = objc_msgSend_log(self);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v196 = @"com.apple.ioport.transport.CIO.published";
        v16 = "Analytics disabled for this event - ignoring... (eventName: %@)";
LABEL_14:
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, v16, buf, 0xCu);
      }
    }
  }
}

@end