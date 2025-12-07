@interface DPAnalytics
- (BOOL)_startEventMonitoring;
- (DPAnalytics)init;
- (void)_handleServiceMatched:(unsigned int)matched;
- (void)_startEventMonitoring;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation DPAnalytics

- (DPAnalytics)init
{
  v12.receiver = self;
  v12.super_class = DPAnalytics;
  v2 = [(DPAnalytics *)&v12 init];
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

  queue = [(DPAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __20__DPAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __20__DPAnalytics_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) started];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = objc_msgSend_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __20__DPAnalytics_start__block_invoke_cold_1();
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

  queue = [(DPAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __19__DPAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __19__DPAnalytics_stop__block_invoke(uint64_t a1)
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
      __19__DPAnalytics_stop__block_invoke_cold_1();
    }
  }
}

- (BOOL)_startEventMonitoring
{
  if (![(DPAnalytics *)self monitoring]&& [(DPAnalytics *)self started])
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

    [(DPAnalytics *)self setMonitoring:1];
    [(DPAnalytics *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
    ioNotificationPort = [(DPAnalytics *)self ioNotificationPort];
    queue = [(DPAnalytics *)self queue];
    IONotificationPortSetDispatchQueue(ioNotificationPort, queue);

    v7 = IOServiceMatching("IOPortTransportStateDisplayPort");
    v9 = v7;
    if (v7)
    {
      [(__CFDictionary *)v7 setObject:&off_24100 forKey:@"IOPropertyExistsMatch"];
      [(__CFDictionary *)v9 setObject:&off_24168 forKey:@"IOPropertyMatch"];
      v10 = objc_msgSend_log(self);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(AUVDMAnalytics *)v9 _startEventMonitoring];
      }

      v11 = IOServiceAddMatchingNotification([(DPAnalytics *)self ioNotificationPort], "IOServiceMatched", v9, _servicesMatched_4, self, &self->_ioServiceMatchingIterator);
      if (!v11)
      {
        _servicesMatched_4(self, self->_ioServiceMatchingIterator);
        v12 = 1;
LABEL_12:

        return v12;
      }

      [(AUVDMAnalytics *)self _startEventMonitoring];
    }

    else
    {
      [(DPAnalytics *)self _startEventMonitoring];
    }

    v12 = 0;
    goto LABEL_12;
  }

  return [(DPAnalytics *)self monitoring];
}

- (void)_stopEventMonitoring
{
  if ([(DPAnalytics *)self monitoring])
  {
    v3 = objc_msgSend_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v5, 2u);
    }

    [(DPAnalytics *)self setMonitoring:0];
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    if ([(DPAnalytics *)self ioNotificationPort])
    {
      IONotificationPortDestroy([(DPAnalytics *)self ioNotificationPort]);
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
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v6, v7, OS_LOG_TYPE_INFO, v8, v9, 0xCu);
    }

    if (![(DPAnalytics *)self analyticsEventsEnabled])
    {
      v5 = objc_msgSend_log(self);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v19, v20, OS_LOG_TYPE_INFO, v21, v22, 0xCu);
      }

      goto LABEL_154;
    }

    if (!IOObjectConformsTo(matched, "IOPortTransportStateDisplayPort"))
    {
      v23 = objc_msgSend_log(self);
      if (OUTLINED_FUNCTION_18(v23))
      {
        OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_8_1();
        _os_log_error_impl(v24, v25, OS_LOG_TYPE_ERROR, v26, v27, 0xCu);
      }

      goto LABEL_154;
    }

    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = OUTLINED_FUNCTION_1_6();
    CFProperty = IORegistryEntryCreateCFProperty(v11, v12, v13, v14);
    objc_opt_class();
    v16 = OUTLINED_FUNCTION_1_5();
    v18 = castNSObjectToType(v16, v17);

    if (v18)
    {
      [(__CFString *)v10 setObject:v18 forKey:@"PortType"];
    }

    else
    {
      v28 = objc_msgSend_log(self);
      if (OUTLINED_FUNCTION_5_0(v28))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4_3(&dword_0, v29, v30, "Could not find parent port type!", v31, v32, v33, v34, v320, v321, v322, v323, v324, v326, v328, v329, v333, v335, v337, v339, v341, v343, v345, v348, v350, v351, v352, v353, v354, cf);
      }
    }

    v35 = OUTLINED_FUNCTION_1_6();
    v39 = IORegistryEntryCreateCFProperty(v35, v36, v37, v38);
    objc_opt_class();
    v40 = OUTLINED_FUNCTION_1_5();
    v42 = castNSObjectToType(v40, v41);

    if (v42)
    {
      [(__CFString *)v10 setObject:v42 forKey:@"PortNumber"];
      if (v18)
      {
        v43 = IOServiceMatching("IOPort");
        v364[0] = @"PortType";
        v364[1] = @"PortNumber";
        v365[0] = v18;
        v365[1] = v42;
        v346 = v42;
        v44 = [NSDictionary dictionaryWithObjects:v365 forKeys:v364 count:2];
        [(__CFDictionary *)v43 setObject:v44 forKey:@"IOPropertyMatch"];

        v45 = objc_msgSend_log(self);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_15();
          _os_log_debug_impl(&dword_0, v45, OS_LOG_TYPE_DEBUG, "matchingDict: %@", buf, 0xCu);
        }

        v46 = v43;
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v46);
        if (MatchingService)
        {
          v48 = MatchingService;
          v49 = IORegistryEntryCreateCFProperty(MatchingService, @"BuiltIn", kCFAllocatorDefault, 0);
          v50 = objc_opt_class();
          v51 = castNSObjectToType(v49, v50);

          selfCopy = self;
          if (v51)
          {
            v53 = v18;
            [(__CFString *)v10 setObject:v51 forKey:@"PortBuiltIn"];
          }

          else
          {
            v72 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              OUTLINED_FUNCTION_5_4();
              _os_log_error_impl(v288, v289, v290, v291, v292, v293);
            }

            v53 = v18;
          }

          v73 = IORegistryEntryCreateCFProperty(v48, @"ConnectionUUID", kCFAllocatorDefault, 0);
          v74 = objc_opt_class();
          v75 = castNSObjectToType(v73, v74);

          if (v75)
          {
            [(__CFString *)v10 setObject:v75 forKey:@"ConnectionUUID"];
          }

          else
          {
            v76 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              OUTLINED_FUNCTION_5_4();
              _os_log_error_impl(v294, v295, v296, v297, v298, v299);
            }
          }

          v18 = v53;
          IOObjectRelease(v48);

          self = selfCopy;
        }

        else
        {
          v51 = &_os_log_default;
          v66 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            OUTLINED_FUNCTION_0_6();
            _os_log_error_impl(v67, v68, v69, v70, v71, 2u);
          }
        }

        v42 = v346;
        goto LABEL_40;
      }
    }

    else
    {
      v54 = objc_msgSend_log(self);
      if (OUTLINED_FUNCTION_5_0(v54))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4_3(&dword_0, v55, v56, "Could not find parent port number!", v57, v58, v59, v60, v320, v321, v322, v323, v324, v326, v328, v329, v333, v335, v337, v339, v341, v343, v345, v348, v350, v351, v352, v353, v354, cf);
      }
    }

    cf = 0;
    v61 = OUTLINED_FUNCTION_1_6();
    IORegistryEntryCreateCFProperties(v61, v62, v63, v64);
    v65 = objc_msgSend_log(self);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_5_3();
      _os_log_fault_impl(&dword_0, v65, OS_LOG_TYPE_FAULT, "Could not find parent port type and number! (serviceProperties: %@)", buf, 0xCu);
    }

LABEL_40:
    v77 = OUTLINED_FUNCTION_1_6();
    v81 = IORegistryEntryCreateCFProperty(v77, v78, v79, v80);
    objc_opt_class();
    v82 = OUTLINED_FUNCTION_1_5();
    v84 = castNSObjectToType(v82, v83);

    v347 = v84;
    selfCopy2 = self;
    if (v84)
    {
      v85 = v10;
      [(__CFString *)v10 setObject:v84 forKey:@"TransportTunneled"];
    }

    else
    {
      v85 = v10;
      v86 = objc_msgSend_log(self);
      if (OUTLINED_FUNCTION_5_0(v86))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4_3(&dword_0, v87, v88, "Could not find if transport is tunneled!", v89, v90, v91, v92, v320, v321, v322, v323, v324, v326, v328, v329, v333, v335, v337, v339, v341, v343, 0, self, v350, v351, v352, v353, v354, cf);
      }
    }

    v93 = v42;
    v94 = OUTLINED_FUNCTION_1_6();
    IORegistryEntryCreateCFProperty(v94, v95, v96, v97);
    OUTLINED_FUNCTION_14();
    v98 = OUTLINED_FUNCTION_1_5();
    v100 = castNSObjectToType(v98, v99);

    if (v100)
    {
      v101 = v18;
      OUTLINED_FUNCTION_12();
    }

    else
    {
      v102 = objc_msgSend_log(selfCopy2);
      if (OUTLINED_FUNCTION_5_0(v102))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4_3(&dword_0, v103, v104, "Could not find role!", v105, v106, v107, v108, v320, v321, v322, v323, v324, v326, v328, v329, v333, v335, v337, v339, v341, v343, v347, selfCopy2, v350, v351, v352, v353, v354, cf);
      }

      v101 = v18;
    }

    v109 = OUTLINED_FUNCTION_1_6();
    IORegistryEntryCreateCFProperty(v109, v110, v111, v112);
    OUTLINED_FUNCTION_14();
    v113 = OUTLINED_FUNCTION_1_5();
    v115 = castNSObjectToType(v113, v114);

    v342 = v115;
    v338 = v101;
    if (v115)
    {
      [(__CFString *)v85 setObject:v115 forKey:@"MaxLaneCount"];
    }

    else
    {
      v116 = objc_msgSend_log(selfCopy2);
      if (OUTLINED_FUNCTION_5_0(v116))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4_3(&dword_0, v117, v118, "Could not find maxLaneCount!", v119, v120, v121, v122, v320, v321, v322, v323, v324, v326, v328, v329, v333, v335, v101, v339, 0, v343, v347, selfCopy2, v350, v351, v352, v353, v354, cf);
      }
    }

    v123 = OUTLINED_FUNCTION_1_6();
    IORegistryEntryCreateCFProperty(v123, v124, v125, v126);
    OUTLINED_FUNCTION_14();
    v127 = OUTLINED_FUNCTION_1_5();
    v129 = castNSObjectToType(v127, v128);

    v340 = v129;
    if (v129)
    {
      [(__CFString *)v85 setObject:v129 forKey:@"LaneCount"];
      v130 = v93;
    }

    else
    {
      v131 = objc_msgSend_log(selfCopy2);
      v130 = v93;
      if (OUTLINED_FUNCTION_5_0(v131))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4_3(&dword_0, v132, v133, "Could not find laneCount!", v134, v135, v136, v137, v320, v321, v322, v323, v324, v326, v328, v329, v333, v335, v338, 0, v342, v343, v347, selfCopy2, v350, v351, v352, v353, v354, cf);
      }
    }

    v138 = OUTLINED_FUNCTION_1_6();
    IORegistryEntryCreateCFProperty(v138, v139, v140, v141);
    OUTLINED_FUNCTION_14();
    v142 = OUTLINED_FUNCTION_1_5();
    v144 = castNSObjectToType(v142, v143);

    v145 = selfCopy2;
    v336 = v144;
    if (v144)
    {
      [(__CFString *)v85 setObject:v144 forKey:@"SinkCount"];
    }

    else
    {
      v146 = objc_msgSend_log(selfCopy2);
      if (OUTLINED_FUNCTION_5_0(v146))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4_3(&dword_0, v147, v148, "Could not find sinkCount!", v149, v150, v151, v152, v320, v321, v322, v323, v324, v326, v328, v329, v333, 0, v338, v340, v342, v343, v347, selfCopy2, v350, v351, v352, v353, v354, cf);
      }
    }

    v153 = OUTLINED_FUNCTION_1_6();
    IORegistryEntryCreateCFProperty(v153, v154, v155, v156);
    OUTLINED_FUNCTION_14();
    v157 = OUTLINED_FUNCTION_1_5();
    v159 = castNSObjectToType(v157, v158);

    v160 = v159;
    v344 = v100;
    if (v159)
    {
      [(__CFString *)v85 setObject:v159 forKey:@"LinkRate"];
    }

    else
    {
      v161 = objc_msgSend_log(v145);
      if (OUTLINED_FUNCTION_5_0(v161))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4_3(&dword_0, v162, v163, "Could not find link rate!", v164, v165, v166, v167, v320, v321, v322, v323, v324, v326, v328, v329, v333, v336, v338, v340, v342, v100, v347, selfCopy2, v350, v351, v352, v353, v354, cf);
      }

      v160 = 0;
    }

    v168 = OUTLINED_FUNCTION_1_6();
    v172 = IORegistryEntryCreateCFProperty(v168, v169, v170, v171);
    v173 = objc_opt_class();
    v174 = castNSObjectToType(v172, v173);

    if (v174)
    {
      [(__CFString *)v85 setObject:v174 forKey:@"TransportIndex"];
      v175 = v130;
    }

    else
    {
      v176 = objc_msgSend_log(v145);
      v175 = v130;
      if (OUTLINED_FUNCTION_10(v176))
      {
        *buf = 0;
        OUTLINED_FUNCTION_0_6();
        _os_log_error_impl(v252, v253, v254, v255, v256, 2u);
      }
    }

    v177 = OUTLINED_FUNCTION_1_6();
    v181 = IORegistryEntryCreateCFProperty(v177, v178, v179, v180);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_145;
    }

    v182 = [v181 objectForKeyedSubscript:@"ManufacturerName"];
    v334 = v174;
    if (v182)
    {
      v183 = objc_opt_class();
      v172 = kACCCoreAnalytics_IOPort_Transport_DP_Field_ManufacturerID;
      if ((OUTLINED_FUNCTION_13(v183) & 1) == 0)
      {
        v191 = objc_opt_class();
        if (OUTLINED_FUNCTION_13(v191))
        {
          OUTLINED_FUNCTION_8_0();
          goto LABEL_90;
        }

        v193 = objc_msgSend_log(v145);
        if (OUTLINED_FUNCTION_10(v193))
        {
          v300 = objc_opt_class();
          v327 = NSStringFromClass(v300);
          v301 = objc_opt_class();
          v328 = NSStringFromClass(v301);
          v302 = objc_opt_class();
          v303 = NSStringFromClass(v302);
          *buf = 138413058;
          v357 = @"ManufacturerID";
          v175 = v130;
          v358 = 2112;
          v359 = v327;
          v360 = 2112;
          v361 = v328;
          v362 = 2112;
          v363 = v303;
          v304 = v303;
          v325 = v303;
          OUTLINED_FUNCTION_0_6();
          _os_log_error_impl(v305, v306, v307, v308, v309, 0x2Au);
        }

LABEL_89:

LABEL_90:
        v194 = [v181 objectForKeyedSubscript:@"ProductID"];

        if (v194)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            OUTLINED_FUNCTION_12();
LABEL_98:
            v203 = [v181 objectForKeyedSubscript:@"ProductName"];

            if (v203)
            {
              v204 = objc_opt_class();
              if (OUTLINED_FUNCTION_13(v204))
              {
                OUTLINED_FUNCTION_8_0();
              }

              else
              {
                v205 = objc_msgSend_log(v145);
                if (OUTLINED_FUNCTION_10(v205))
                {
                  v269 = objc_opt_class();
                  v332 = NSStringFromClass(v269);
                  v270 = objc_opt_class();
                  v271 = NSStringFromClass(v270);
                  *buf = 136315650;
                  OUTLINED_FUNCTION_2_5();
                  OUTLINED_FUNCTION_0_6();
                  _os_log_error_impl(v272, v273, v274, v275, v276, 0x20u);
                }
              }
            }

            v206 = [v181 objectForKeyedSubscript:@"Model Year"];

            if (v206)
            {
              goto LABEL_105;
            }

            v207 = [v181 objectForKeyedSubscript:@"Week of Manufacture"];
            v208 = v207;
            if (v207 && [v207 unsignedIntegerValue])
            {
              OUTLINED_FUNCTION_8_0();
            }

            else
            {
              v209 = objc_msgSend_log(v145);
              if (OUTLINED_FUNCTION_10(v209))
              {
                *buf = 0;
                OUTLINED_FUNCTION_0_6();
                _os_log_error_impl(v277, v278, v279, v280, v281, 2u);
              }
            }

            v206 = [v181 objectForKeyedSubscript:@"Year of Manufacture"];

            if (v206 && [v206 unsignedIntegerValue])
            {
LABEL_105:
              OUTLINED_FUNCTION_12();
            }

            else
            {
              v210 = objc_msgSend_log(v145);
              if (OUTLINED_FUNCTION_18(v210))
              {
                *buf = 0;
                OUTLINED_FUNCTION_8_1();
                OUTLINED_FUNCTION_5_4();
                _os_log_error_impl(v282, v283, v284, v285, v286, v287);
              }
            }

            v211 = [v181 objectForKeyedSubscript:@"SinkDeviceOUI"];

            if (v211)
            {
              v212 = objc_opt_class();
              if (OUTLINED_FUNCTION_13(v212))
              {
                if ([v211 length] == &dword_0 + 3)
                {
                  [v211 bytes];
                  [OUTLINED_FUNCTION_9_0() bytes];
                  [v211 bytes];
                  OUTLINED_FUNCTION_6_3();
                  v206 = [NSString stringWithFormat:@"%02X-%02X-%02X"];
                  OUTLINED_FUNCTION_12();
                }

                else
                {
                  v224 = objc_msgSend_log(v145);
                  if (OUTLINED_FUNCTION_10(v224))
                  {
                    [v211 length];
                    OUTLINED_FUNCTION_15();
                    OUTLINED_FUNCTION_3_5();
                    OUTLINED_FUNCTION_0_6();
                    _os_log_error_impl(v310, v311, v312, v313, v314, 0x1Cu);
                  }
                }
              }

              else
              {
                v213 = objc_msgSend_log(v145);
                if (OUTLINED_FUNCTION_10(v213))
                {
                  v214 = objc_opt_class();
                  v215 = NSStringFromClass(v214);
                  v216 = objc_opt_class();
                  v217 = NSStringFromClass(v216);
                  OUTLINED_FUNCTION_15();
                  v358 = 2112;
                  v359 = v215;
                  v360 = 2112;
                  v361 = v218;
                  OUTLINED_FUNCTION_0_6();
                  _os_log_error_impl(v219, v220, v221, v222, v223, 0x20u);
                }
              }

              v174 = v334;
            }

            v225 = [v181 objectForKeyedSubscript:@"SinkDeviceID"];

            if (v225)
            {
              OUTLINED_FUNCTION_12();
            }

            v226 = [v181 objectForKeyedSubscript:@"BranchDeviceOUI"];

            if (v226)
            {
              v227 = objc_opt_class();
              if (OUTLINED_FUNCTION_13(v227))
              {
                if ([v226 length] == &dword_0 + 3)
                {
                  [v226 bytes];
                  [OUTLINED_FUNCTION_9_0() bytes];
                  [v226 bytes];
                  OUTLINED_FUNCTION_6_3();
                  v174 = v334;
                  v225 = [NSString stringWithFormat:@"%02X-%02X-%02X"];
                  OUTLINED_FUNCTION_12();
                }

                else
                {
                  v237 = objc_msgSend_log(v145);
                  if (OUTLINED_FUNCTION_10(v237))
                  {
                    [v226 length];
                    *buf = 136315650;
                    v357 = "BranchDeviceOUI";
                    OUTLINED_FUNCTION_3_5();
                    OUTLINED_FUNCTION_0_6();
                    _os_log_error_impl(v315, v316, v317, v318, v319, 0x1Cu);
                  }
                }
              }

              else
              {
                v228 = objc_msgSend_log(v145);
                if (OUTLINED_FUNCTION_10(v228))
                {
                  v229 = objc_opt_class();
                  v330 = NSStringFromClass(v229);
                  v230 = objc_opt_class();
                  v231 = NSStringFromClass(v230);
                  *buf = 136315650;
                  OUTLINED_FUNCTION_2_5();
                  OUTLINED_FUNCTION_0_6();
                  _os_log_error_impl(v232, v233, v234, v235, v236, 0x20u);
                }
              }
            }

            v238 = [v181 objectForKeyedSubscript:@"BranchDeviceID"];

            if (v238)
            {
              OUTLINED_FUNCTION_12();
            }

            v239 = [v181 objectForKeyedSubscript:@"DFP Type"];

            if (v239)
            {
              OUTLINED_FUNCTION_8_0();
            }

            else
            {
              v240 = objc_msgSend_log(v145);
              if (OUTLINED_FUNCTION_10(v240))
              {
                *buf = 0;
                OUTLINED_FUNCTION_0_6();
                _os_log_error_impl(v257, v258, v259, v260, v261, 2u);
              }
            }

LABEL_145:
            v241 = objc_msgSend_log(v145);
            if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_5_3();
              OUTLINED_FUNCTION_8_1();
              _os_log_impl(v242, v243, OS_LOG_TYPE_DEFAULT, v244, v245, 0xCu);
            }

            v246 = objc_msgSend_log(v145);
            if (os_log_type_enabled(v246, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v357 = v85;
              OUTLINED_FUNCTION_8_1();
              _os_log_debug_impl(v248, v249, OS_LOG_TYPE_DEBUG, v250, v251, 0xCu);
            }

            v5 = v85;
            if ((AnalyticsSendEventLazy() & 1) == 0)
            {
              v247 = objc_msgSend_log(v145);
              if (os_log_type_enabled(v247, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v357 = @"com.apple.ioport.transport.DP.published";
                _os_log_error_impl(&dword_0, v247, OS_LOG_TYPE_ERROR, "Failed to send analytics event! (eventName: %@)", buf, 0xCu);
              }
            }

LABEL_154:
            return;
          }

          v202 = objc_msgSend_log(v145);
          if (OUTLINED_FUNCTION_18(v202))
          {
            v262 = objc_opt_class();
            v331 = NSStringFromClass(v262);
            v263 = objc_opt_class();
            v264 = NSStringFromClass(v263);
            *buf = 136315650;
            OUTLINED_FUNCTION_2_5();
            OUTLINED_FUNCTION_8_1();
            _os_log_error_impl(v265, v266, OS_LOG_TYPE_ERROR, v267, v268, 0x20u);
          }
        }

        else
        {
          v195 = objc_msgSend_log(v145);
          if (OUTLINED_FUNCTION_18(v195))
          {
            *buf = 0;
            OUTLINED_FUNCTION_8_1();
            OUTLINED_FUNCTION_5_4();
            _os_log_error_impl(v196, v197, v198, v199, v200, v201);
          }
        }

        goto LABEL_98;
      }

      if ([v182 length] == &dword_0 + 3)
      {
        [v182 bytes];
        [OUTLINED_FUNCTION_9_0() bytes];
        [v182 bytes];
        OUTLINED_FUNCTION_6_3();
        v172 = [NSString stringWithFormat:@"%02X-%02X-%02X"];
        OUTLINED_FUNCTION_12();
        goto LABEL_89;
      }

      v192 = objc_msgSend_log(v145);
      if (!OUTLINED_FUNCTION_10(v192))
      {
        goto LABEL_89;
      }

      [v182 length];
      *buf = 138412802;
      v357 = @"ManufacturerID";
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_0_6();
      v190 = 28;
    }

    else
    {
      v184 = objc_msgSend_log(v145);
      if (!OUTLINED_FUNCTION_10(v184))
      {
        goto LABEL_89;
      }

      *buf = 0;
      OUTLINED_FUNCTION_0_6();
      v190 = 2;
    }

    _os_log_error_impl(v185, v186, v187, v188, v189, v190);
    goto LABEL_89;
  }
}

- (void)_startEventMonitoring
{
  v3 = objc_msgSend_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_5_4();
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
  }
}

@end