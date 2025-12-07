@interface PowerInAnalytics
- (BOOL)_getMutualPowerSourceProperties:(unsigned int)properties dict:(id)dict;
- (BOOL)_startEventMonitoring;
- (PowerInAnalytics)init;
- (void)_handleServiceMatched:(unsigned int)matched;
- (void)_startEventMonitoring;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation PowerInAnalytics

- (PowerInAnalytics)init
{
  v12.receiver = self;
  v12.super_class = PowerInAnalytics;
  v2 = [(PowerInAnalytics *)&v12 init];
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

  queue = [(PowerInAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __25__PowerInAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_async(queue, block);
}

void __25__PowerInAnalytics_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) started];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = objc_msgSend_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __25__PowerInAnalytics_start__block_invoke_cold_1();
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

  queue = [(PowerInAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __24__PowerInAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_async(queue, block);
}

void __24__PowerInAnalytics_stop__block_invoke(uint64_t a1)
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
      __24__PowerInAnalytics_stop__block_invoke_cold_1();
    }
  }
}

- (BOOL)_startEventMonitoring
{
  if (![(PowerInAnalytics *)self monitoring]&& [(PowerInAnalytics *)self started])
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
      *v20 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v20, 2u);
    }

    [(PowerInAnalytics *)self setMonitoring:1];
    [(PowerInAnalytics *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
    ioNotificationPort = [(PowerInAnalytics *)self ioNotificationPort];
    queue = [(PowerInAnalytics *)self queue];
    IONotificationPortSetDispatchQueue(ioNotificationPort, queue);

    v7 = IOServiceMatching("IOPortFeaturePowerSource");
    v9 = v7;
    if (v7)
    {
      [(__CFDictionary *)v7 setObject:&off_240B8 forKey:@"IOPropertyExistsMatch"];
      v10 = objc_msgSend_log(self);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(PowerInAnalytics *)v9 _startEventMonitoring:v10];
      }

      v17 = IOServiceAddMatchingNotification([(PowerInAnalytics *)self ioNotificationPort], "IOServiceMatched", v9, _servicesMatched_1, self, &self->_ioServiceMatchingIterator);
      if (!v17)
      {
        _servicesMatched_1(self, self->_ioServiceMatchingIterator);
        v18 = 1;
LABEL_12:

        return v18;
      }

      [(AUVDMAnalytics *)self _startEventMonitoring];
    }

    else
    {
      [(PowerInAnalytics *)self _startEventMonitoring];
    }

    v18 = 0;
    goto LABEL_12;
  }

  return [(PowerInAnalytics *)self monitoring];
}

- (void)_stopEventMonitoring
{
  if ([(PowerInAnalytics *)self monitoring])
  {
    v3 = objc_msgSend_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v5, 2u);
    }

    [(PowerInAnalytics *)self setMonitoring:0];
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    if ([(PowerInAnalytics *)self ioNotificationPort])
    {
      IONotificationPortDestroy([(PowerInAnalytics *)self ioNotificationPort]);
    }
  }
}

- (BOOL)_getMutualPowerSourceProperties:(unsigned int)properties dict:(id)dict
{
  dictCopy = dict;
  if (properties)
  {
    CFProperty = IORegistryEntryCreateCFProperty(properties, @"ParentPortType", kCFAllocatorDefault, 0);
    v8 = objc_opt_class();
    v9 = castNSObjectToType(CFProperty, v8);

    if (v9)
    {
      [dictCopy setObject:v9 forKey:@"PortType"];
      v10 = IORegistryEntryCreateCFProperty(properties, @"ParentPortNumber", kCFAllocatorDefault, 0);
      v11 = objc_opt_class();
      v12 = castNSObjectToType(v10, v11);

      v13 = v12 != 0;
      if (v12)
      {
        [dictCopy setObject:v12 forKey:@"PortNumber"];
        v14 = IOServiceMatching("IOPort");
        v119[0] = @"PortType";
        v119[1] = @"PortNumber";
        v120[0] = v9;
        v120[1] = v12;
        v15 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:2];
        [(__CFDictionary *)v14 setObject:v15 forKey:@"IOPropertyMatch"];

        v16 = objc_msgSend_log(self);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [(PowerInAnalytics *)v14 _startEventMonitoring:v16];
        }

        v23 = v14;
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v23);
        selfCopy = self;
        if (MatchingService)
        {
          v25 = MatchingService;
          v106 = v12;
          v26 = IORegistryEntryCreateCFProperty(MatchingService, @"BuiltIn", kCFAllocatorDefault, 0);
          v27 = objc_opt_class();
          v28 = castNSObjectToType(v26, v27);

          if (v28)
          {
            v29 = v13;
            [dictCopy setObject:v28 forKey:@"PortBuiltIn"];
          }

          else
          {
            v39 = objc_msgSend_log(self);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              [PowerInAnalytics _getMutualPowerSourceProperties:dict:];
            }

            v29 = v13;
          }

          v40 = IORegistryEntryCreateCFProperty(v25, @"ConnectionUUID", kCFAllocatorDefault, 0);
          v41 = objc_opt_class();
          v42 = castNSObjectToType(v40, v41);

          if (v42)
          {
            [dictCopy setObject:v42 forKey:@"ConnectionUUID"];
          }

          else
          {
            v43 = objc_msgSend_log(selfCopy);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              [PowerInAnalytics _getMutualPowerSourceProperties:dict:];
            }
          }

          v13 = v29;
          IOObjectRelease(v25);

          v12 = v106;
          self = selfCopy;
        }

        else
        {
          v31 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v31)
          {
            [(PowerInAnalytics *)v31 _getMutualPowerSourceProperties:v32 dict:v33, v34, v35, v36, v37, v38];
          }
        }

        v44 = kCFAllocatorDefault;
        v45 = IORegistryEntryCreateCFProperty(properties, @"PowerSourceName", kCFAllocatorDefault, 0);
        v46 = objc_opt_class();
        v47 = castNSObjectToType(v45, v46);

        v110 = v47;
        if (v47)
        {
          [dictCopy setObject:v47 forKey:@"PowerSourceName"];
        }

        else
        {
          v48 = objc_msgSend_log(self);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            [PowerInAnalytics _getMutualPowerSourceProperties:dict:];
          }
        }

        v49 = IORegistryEntryCreateCFProperty(properties, @"PowerSourceType", kCFAllocatorDefault, 0);
        v50 = objc_opt_class();
        v51 = castNSObjectToType(v49, v50);

        if (v51)
        {
          [dictCopy setObject:v51 forKey:@"PowerSourceType"];
        }

        else
        {
          v52 = objc_msgSend_log(self);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            [PowerInAnalytics _getMutualPowerSourceProperties:dict:];
          }
        }

        v53 = IORegistryEntryCreateCFProperty(properties, @"PowerSourceOptions", kCFAllocatorDefault, 0);
        v108 = v53;
        v109 = v51;
        if (v53 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v54 = v53;
          *v113 = 0u;
          v114 = 0u;
          v115 = 0u;
          v116 = 0u;
          v55 = [v54 countByEnumeratingWithState:v113 objects:buf count:16];
          if (v55)
          {
            v56 = v55;
            v103 = v13;
            v105 = dictCopy;
            v107 = v12;
            v104 = v9;
            v112 = 0;
            unsignedIntValue = 0;
            v58 = *v114;
            do
            {
              for (i = 0; i != v56; i = i + 1)
              {
                if (*v114 != v58)
                {
                  objc_enumerationMutation(v54);
                }

                v60 = *(*&v113[8] + 8 * i);
                if (v60)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v61 = [v60 objectForKeyedSubscript:@"Max Current (mA)"];
                    v62 = [v60 objectForKeyedSubscript:@"Voltage (mV)"];
                    v63 = [v60 objectForKeyedSubscript:@"Max Power (mW)"];
                    v64 = v63;
                    if (v61)
                    {
                      v65 = v62 == 0;
                    }

                    else
                    {
                      v65 = 1;
                    }

                    v66 = v65 || v63 == 0;
                    if (!v66 && ([v63 unsignedIntegerValue] > unsignedIntValue || objc_msgSend(v64, "unsignedIntegerValue") == unsignedIntValue && objc_msgSend(v62, "unsignedIntegerValue") > HIDWORD(v112)))
                    {
                      LODWORD(v112) = [v61 unsignedIntValue];
                      HIDWORD(v112) = [v62 unsignedIntValue];
                      unsignedIntValue = [v64 unsignedIntValue];
                    }
                  }
                }
              }

              v56 = [v54 countByEnumeratingWithState:v113 objects:buf count:16];
            }

            while (v56);
            v67 = v112;
            v68 = HIDWORD(v112);
            v69 = unsignedIntValue;
            v9 = v104;
            dictCopy = v105;
            v12 = v107;
            v13 = v103;
          }

          else
          {
            v68 = 0;
            v69 = 0;
            v67 = 0;
          }

          v72 = [NSNumber numberWithUnsignedInteger:v67];
          [dictCopy setObject:v72 forKey:@"MaxPowerSourceOptionVoltageMV"];

          v73 = [NSNumber numberWithUnsignedInteger:v68];
          [dictCopy setObject:v73 forKey:@"MaxPowerSourceOptionMaxCurrentMA"];

          v70 = [NSNumber numberWithUnsignedInteger:v69];
          [dictCopy setObject:v70 forKey:@"MaxPowerSourceOptionMaxPowerMW"];
          self = selfCopy;
          v44 = kCFAllocatorDefault;
          v71 = &IOIteratorNext_ptr;
        }

        else
        {
          v70 = objc_msgSend_log(self);
          v71 = &IOIteratorNext_ptr;
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            [(PowerInAnalytics *)v53 == 0 _getMutualPowerSourceProperties:v53 dict:v70];
          }
        }

        v74 = IOServiceMatching("IOPortTransportProtocolAppleUVDM");
        v117[0] = @"ParentPortType";
        v117[1] = @"ParentPortNumber";
        v118[0] = v9;
        v118[1] = v12;
        v117[2] = @"ParentComponentName";
        v118[2] = @"SOP";
        v75 = [v71[120] dictionaryWithObjects:v118 forKeys:v117 count:3];
        [(__CFDictionary *)v74 setObject:v75 forKey:@"IOPropertyMatch"];

        v76 = objc_msgSend_log(self);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          [(PowerInAnalytics *)v74 _getMutualPowerSourceProperties:v76 dict:v77, v78, v79, v80, v81, v82];
        }

        v83 = v74;
        v84 = IOServiceGetMatchingService(kIOMainPortDefault, v83);
        v85 = objc_msgSend_log(self);
        v86 = os_log_type_enabled(v85, OS_LOG_TYPE_INFO);
        if (v84)
        {
          if (v86)
          {
            *buf = 0;
            _os_log_impl(&dword_0, v85, OS_LOG_TYPE_INFO, "Found AUVDM service!", buf, 2u);
          }

          v87 = IORegistryEntryCreateCFProperty(v84, @"Manufacturer", v44, 0);
          v88 = objc_opt_class();
          v85 = castNSObjectToType(v87, v88);

          if (v85 && [v85 length])
          {
            v89 = [NSScanner scannerWithString:v85];
            *buf = 0;
            if ([v89 scanHexInt:buf])
            {
              v90 = [NSNumber numberWithUnsignedInt:*buf];
              [dictCopy setObject:v90 forKey:@"AUVDM_VendorID"];

              v91 = objc_msgSend_log(selfCopy);
              if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
              {
                *v113 = 0;
                _os_log_impl(&dword_0, v91, OS_LOG_TYPE_INFO, "Converted AUVDM Manufacturer to VID!", v113, 2u);
              }
            }
          }

          v92 = IORegistryEntryCreateCFProperty(v84, @"Model", v44, 0);
          v93 = objc_opt_class();
          v94 = castNSObjectToType(v92, v93);

          if (v94 && [v94 length])
          {
            v95 = [NSScanner scannerWithString:v94];
            *buf = 0;
            if ([v95 scanHexInt:buf])
            {
              v96 = [NSNumber numberWithUnsignedInt:*buf];
              [dictCopy setObject:v96 forKey:@"AUVDM_ProductID"];

              v97 = objc_msgSend_log(selfCopy);
              if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
              {
                *v113 = 0;
                _os_log_impl(&dword_0, v97, OS_LOG_TYPE_INFO, "Converted AUVDM Model to PID!", v113, 2u);
              }

              v44 = kCFAllocatorDefault;
            }
          }

          v98 = IORegistryEntryCreateCFProperty(v84, @"User String", v44, 0);
          v99 = objc_opt_class();
          v100 = castNSObjectToType(v98, v99);

          if (v100 && [v100 length])
          {
            [dictCopy setObject:v100 forKey:@"AUVDM_AccessoryName"];
            v101 = objc_msgSend_log(selfCopy);
            if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v101, OS_LOG_TYPE_INFO, "Converted AUVDM User String to Accessory Name!", buf, 2u);
            }
          }

          v30 = v110;
        }

        else
        {
          v30 = v110;
          if (v86)
          {
            *buf = 0;
            _os_log_impl(&dword_0, v85, OS_LOG_TYPE_INFO, "Could not find AUVDM service!", buf, 2u);
          }
        }
      }

      else
      {
        v30 = objc_msgSend_log(self);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [PowerInAnalytics _getMutualPowerSourceProperties:dict:];
        }
      }
    }

    else
    {
      v12 = objc_msgSend_log(self);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PowerInAnalytics _getMutualPowerSourceProperties:dict:];
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_handleServiceMatched:(unsigned int)matched
{
  if (!matched)
  {
    return;
  }

  v3 = *&matched;
  memset(name, 0, 128);
  IORegistryEntryGetName(matched, name);
  v5 = objc_msgSend_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Service matched! (serviceName: %s)", buf, 0xCu);
  }

  if (![(PowerInAnalytics *)self analyticsEventsEnabled])
  {
    v11 = objc_msgSend_log(self);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v100 = @"com.apple.ioport.feature.PowerIn.WinningPowerSourceOption";
      v12 = "Analytics disabled for this event - ignoring... (eventName: %@)";
LABEL_15:
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, v12, buf, 0xCu);
    }

LABEL_16:

    return;
  }

  parent = 0;
  if (IORegistryEntryGetParentEntry(v3, "IOPort", &parent) || !parent)
  {
    v11 = objc_msgSend_log(self);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_5_1();
      v12 = "Could not find parent entry in %s plane!";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (IOObjectConformsTo(parent, "IOPortFeaturePowerIn"))
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    CFProperty = IORegistryEntryCreateCFProperty(v3, @"WinningPowerSourceOption", kCFAllocatorDefault, 0);
    v8 = objc_opt_class();
    v9 = castNSObjectToType(CFProperty, v8);

    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:@"Max Current (mA)"];
      if (v10)
      {
        [v6 setObject:v10 forKey:@"WinningPowerSourceOptionMaxCurrentMA"];
      }

      else
      {
        v18 = objc_msgSend_log(self);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          OUTLINED_FUNCTION_4(&dword_0, v18, v19, "Could not find winningPowerSourceOption current!", buf);
        }
      }

      v20 = [v9 objectForKeyedSubscript:@"Voltage (mV)"];
      if (v20)
      {
        [v6 setObject:v20 forKey:@"WinningPowerSourceOptionVoltageMV"];
      }

      else
      {
        v21 = objc_msgSend_log(self);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          OUTLINED_FUNCTION_4(&dword_0, v21, v22, "Could not find winningPowerSourceOption voltage!", buf);
        }
      }

      v23 = [v9 objectForKeyedSubscript:@"Max Power (mW)"];
      if (v23)
      {
        [v6 setObject:v23 forKey:@"WinningPowerSourceOptionMaxPowerMW"];
      }

      else
      {
        v24 = v9;
        v25 = objc_msgSend_log(self);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          OUTLINED_FUNCTION_4(&dword_0, v25, v26, "Could not find winningPowerSourceOption power!", buf);
        }

        v9 = v24;
      }
    }

    else
    {
      v10 = objc_msgSend_log(self);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        OUTLINED_FUNCTION_3_1();
        OUTLINED_FUNCTION_4(v13, v14, v15, v16, v17);
      }
    }

    v27 = +[NSUUID UUID];
    v28 = v27;
    if (v27)
    {
      uUIDString = [v27 UUIDString];
      [v6 setObject:uUIDString forKey:@"EventUUID"];

      v30 = objc_msgSend_log(self);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        uUIDString2 = [v28 UUIDString];
        *buf = 138412290;
        v100 = uUIDString2;
        OUTLINED_FUNCTION_3_1();
        _os_log_impl(v32, v33, OS_LOG_TYPE_INFO, v34, v35, 0xCu);
      }
    }

    else
    {
      v30 = objc_msgSend_log(self);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        OUTLINED_FUNCTION_3_1();
        OUTLINED_FUNCTION_4(v82, v83, v84, v85, v86);
      }
    }

    HIDWORD(v91) = [(PowerInAnalytics *)self _getMutualPowerSourceProperties:v3 dict:v6];
    if ((v91 & 0x100000000) == 0)
    {
      v36 = objc_msgSend_log(self);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v77 = copyIORegistryEntryProperties(v3);
        *buf = 138412290;
        v100 = v77;
        OUTLINED_FUNCTION_3_1();
        _os_log_error_impl(v78, v79, OS_LOG_TYPE_ERROR, v80, v81, 0xCu);
      }
    }

    existing = 0;
    v37 = IOServiceMatching("IOPortFeaturePowerSource");
    if (!IOServiceGetMatchingServices(kIOMainPortDefault, v37, &existing))
    {
      v89 = v9;
      v90 = v6;
      v38 = IOIteratorNext(existing);
      if (v38)
      {
        v40 = v38;
        v92 = v95;
        *&v39 = 138412290;
        v93 = v39;
        do
        {
          if (IOObjectConformsTo(v40, "IOPortFeaturePowerSource"))
          {
            v41 = objc_alloc_init(NSMutableDictionary);
            if (v28)
            {
              uUIDString3 = [v28 UUIDString];
              [v41 setObject:uUIDString3 forKey:@"EventUUID"];
            }

            v43 = [(PowerInAnalytics *)self _getMutualPowerSourceProperties:v40 dict:v41];
            if ((v43 & 1) == 0)
            {
              v44 = objc_msgSend_log(self);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                v88 = copyIORegistryEntryProperties(v40);
                *buf = v93;
                v100 = v88;
                _os_log_error_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "error getting PowerSourceProperties, full properties: %@", buf, 0xCu);
              }
            }

            v45 = objc_msgSend_log(self);
            v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
            if (v46)
            {
              OUTLINED_FUNCTION_6_1(v46, v47, v48, v49, v50, v51, v52, v53, v87, v88, v89, v90, v91, v92, v93);
              _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "Sending analytics event... (eventName: %@)", v54, 0xCu);
            }

            v55 = objc_msgSend_log(self);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              OUTLINED_FUNCTION_5_1();
              _os_log_debug_impl(&dword_0, v55, OS_LOG_TYPE_DEBUG, "eventDict: %@", buf, 0xCu);
            }

            if (v43)
            {
              v94[1] = _NSConcreteStackBlock;
              v94[2] = 3221225472;
              v95[0] = __42__PowerInAnalytics__handleServiceMatched___block_invoke;
              v95[1] = &unk_20430;
              v96 = v41;
              if (AnalyticsSendEventLazy())
              {
                goto LABEL_63;
              }
            }

            v56 = objc_msgSend_log(self);
            v57 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
            if (v57)
            {
              OUTLINED_FUNCTION_6_1(v57, v58, v59, v60, v61, v62, v63, v64, v87, v88, v89, v90, v91, v92, v93);
              _os_log_error_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "Failed to send analytics event! (eventName: %@)", v65, 0xCu);
            }

            if (v43)
            {
LABEL_63:
            }
          }

          IOObjectRelease(v40);
          v40 = IOIteratorNext(existing);
        }

        while (v40);
      }

      v9 = v89;
      v6 = v90;
      if (existing)
      {
        IOObjectRelease(existing);
      }
    }

    v66 = objc_msgSend_log(self);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v100 = @"com.apple.ioport.feature.PowerIn.WinningPowerSourceOption";
      OUTLINED_FUNCTION_3_1();
      _os_log_impl(v67, v68, OS_LOG_TYPE_DEFAULT, v69, v70, 0xCu);
    }

    v71 = objc_msgSend_log(self);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v100 = v6;
      OUTLINED_FUNCTION_3_1();
      _os_log_debug_impl(v73, v74, OS_LOG_TYPE_DEBUG, v75, v76, 0xCu);
    }

    if (HIDWORD(v91))
    {
      v71 = v94;
      v94[0] = v6;
      if (AnalyticsSendEventLazy())
      {
        goto LABEL_77;
      }
    }

    v72 = objc_msgSend_log(self);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v100 = @"com.apple.ioport.feature.PowerIn.WinningPowerSourceOption";
      _os_log_error_impl(&dword_0, v72, OS_LOG_TYPE_ERROR, "Failed to send analytics event! (eventName: %@)", buf, 0xCu);
    }

    if (HIDWORD(v91))
    {
LABEL_77:
    }
  }

  else
  {
    v6 = objc_msgSend_log(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_1();
      _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Could not find PowerIn feature in %s plane!", buf, 0xCu);
    }
  }

  IOObjectRelease(parent);
}

- (void)_startEventMonitoring
{
  v3 = objc_msgSend_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    OUTLINED_FUNCTION_4(&dword_0, v3, v4, "IOServiceMatching failed", v5);
  }
}

- (void)_getMutualPowerSourceProperties:(NSObject *)a3 dict:.cold.8(char a1, uint64_t a2, NSObject *a3)
{
  if (a1)
  {
    v5 = @"None";
  }

  else
  {
    v6 = objc_opt_class();
    v5 = NSStringFromClass(v6);
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = 136315650;
  v10 = "PowerSourceOptions";
  v11 = 2112;
  v12 = v5;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Incorrect data type for '%s' key! (class: %@, expecting: %@", &v9, 0x20u);
  if ((a1 & 1) == 0)
  {
  }
}

- (void)_getMutualPowerSourceProperties:(uint64_t)a3 dict:(uint64_t)a4 .cold.9(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_4_0(&dword_0, a2, a3, "uvdmMatchingDict: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end