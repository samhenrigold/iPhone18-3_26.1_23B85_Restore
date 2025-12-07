@interface ACCFeaturePluginHIDDescriptor
- (ACCFeaturePluginHIDDescriptor)initWithDecriptorInfo:(id)info sendOutReport:(id)report sendGetReport:(id)getReport sendComponentUpdate:(id)update;
- (BOOL)handleGetReport:(int)report reportID:(unsigned __int8)d report:(id)a5;
- (BOOL)handleGetReportResponse:(unsigned __int8)response reportID:(unsigned __int8)d report:(id)report;
- (BOOL)handleHIDComponentUpdate:(BOOL)update;
- (BOOL)handleInReport:(id)report;
- (BOOL)handleOutReport:(id)report;
- (void)dealloc;
- (void)removeDescriptor;
- (void)startHIDEventSystemListener:(id)listener;
@end

@implementation ACCFeaturePluginHIDDescriptor

- (ACCFeaturePluginHIDDescriptor)initWithDecriptorInfo:(id)info sendOutReport:(id)report sendGetReport:(id)getReport sendComponentUpdate:(id)update
{
  v99 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  reportCopy = report;
  getReportCopy = getReport;
  updateCopy = update;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 1;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
    }

    v16 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  else
  {
    v16 = *gLogObjects;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v96 = "[ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:]";
    v97 = 2112;
    v98 = infoCopy;
    _os_log_impl(&dword_2335CB000, v16, OS_LOG_TYPE_DEFAULT, "%s: descriptorInfo %@ ", buf, 0x16u);
  }

  v94.receiver = self;
  v94.super_class = ACCFeaturePluginHIDDescriptor;
  v17 = [(ACCFeaturePluginHIDDescriptor *)&v94 init];
  if (v17)
  {
    v18 = v17;
    v17->_isShuttingDown = 0;
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = *(v18 + 104);
    *(v18 + 104) = v19;

    *(v18 + 10) = 0;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v23 = *(v18 + 24);
    *(v18 + 24) = uUIDString;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v24)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithInt:0];
      v26 = [infoCopy objectForKey:v25];

      if (v26)
      {
        v27 = [MEMORY[0x277CCABB0] numberWithInt:0];
        v28 = [infoCopy objectForKey:v27];
        [v24 setObject:v28 forKey:@"Transport"];
      }

      v29 = [MEMORY[0x277CCABB0] numberWithInt:1];
      v30 = [infoCopy objectForKey:v29];

      if (v30)
      {
        v31 = [MEMORY[0x277CCABB0] numberWithInt:1];
        v32 = [infoCopy objectForKey:v31];
        [v24 setObject:v32 forKey:@"VendorID"];
      }

      v33 = [MEMORY[0x277CCABB0] numberWithInt:2];
      v34 = [infoCopy objectForKey:v33];

      if (v34)
      {
        v35 = [MEMORY[0x277CCABB0] numberWithInt:2];
        v36 = [infoCopy objectForKey:v35];
        [v24 setObject:v36 forKey:@"ProductID"];
      }

      v37 = [MEMORY[0x277CCABB0] numberWithInt:3];
      v38 = [infoCopy objectForKey:v37];

      if (v38)
      {
        v39 = [MEMORY[0x277CCABB0] numberWithInt:3];
        v40 = [infoCopy objectForKey:v39];
        [v24 setObject:v40 forKey:@"VersionNumber"];
      }

      v41 = [MEMORY[0x277CCABB0] numberWithInt:4];
      v42 = [infoCopy objectForKey:v41];

      if (v42)
      {
        v43 = [MEMORY[0x277CCABB0] numberWithInt:4];
        v44 = [infoCopy objectForKey:v43];
        [v24 setObject:v44 forKey:@"Manufacturer"];
      }

      v45 = [MEMORY[0x277CCABB0] numberWithInt:12];
      v46 = [infoCopy objectForKey:v45];

      if (v46)
      {
        v47 = [MEMORY[0x277CCABB0] numberWithInt:12];
        v48 = [infoCopy objectForKey:v47];
        [v24 setObject:v48 forKey:@"Product"];
      }

      v49 = [MEMORY[0x277CCABB0] numberWithInt:6];
      v50 = [infoCopy objectForKey:v49];

      if (v50)
      {
        v51 = [MEMORY[0x277CCABB0] numberWithInt:6];
        v52 = [infoCopy objectForKey:v51];
        [v24 setObject:v52 forKey:@"SerialNumber"];
      }

      v53 = [MEMORY[0x277CCABB0] numberWithInt:7];
      v54 = [infoCopy objectForKey:v53];

      if (v54)
      {
        v55 = [MEMORY[0x277CCABB0] numberWithInt:7];
        v56 = [infoCopy objectForKey:v55];
        [v24 setObject:v56 forKey:@"CountryCode"];
      }

      v57 = [MEMORY[0x277CCABB0] numberWithInt:9];
      v58 = [infoCopy objectForKey:v57];

      if (v58)
      {
        v59 = [MEMORY[0x277CCABB0] numberWithInt:9];
        v60 = [infoCopy objectForKey:v59];
        [v24 setObject:v60 forKey:@"ReportDescriptor"];
      }

      v61 = [MEMORY[0x277CCABB0] numberWithInt:10];
      v62 = [infoCopy objectForKey:v61];

      if (v62)
      {
        v63 = [MEMORY[0x277CCABB0] numberWithInt:10];
        v64 = [infoCopy objectForKey:v63];
        [v24 setObject:v64 forKey:@"IAPHIDAccessoryCategory"];
      }

      v65 = [MEMORY[0x277CCABB0] numberWithInt:11];
      v66 = [infoCopy objectForKey:v65];

      if (v66)
      {
        v67 = [MEMORY[0x277CCABB0] numberWithInt:11];
        v68 = [infoCopy objectForKey:v67];
        [v24 setObject:v68 forKey:@"Authenticated"];
      }

      [v24 setObject:*(v18 + 24) forKey:@"PhysicalDeviceUniqueID"];
      v69 = [MEMORY[0x277CCABB0] numberWithInt:12];
      v70 = [infoCopy objectForKey:v69];

      if (v70)
      {
        v71 = v70;
      }

      else
      {
        v71 = &stru_2848E5F08;
      }

      v72 = [MEMORY[0x277CCAB68] stringWithString:v71];
      [v72 appendFormat:@"HIDDeviceQueue%@", *(v18 + 24)];
      v73 = dispatch_queue_create([v72 UTF8String], 0);
      v74 = *(v18 + 48);
      *(v18 + 48) = v73;

      v75 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v18 + 48));
      v76 = *(v18 + 64);
      *(v18 + 64) = v75;

      v77 = *(v18 + 64);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __103__ACCFeaturePluginHIDDescriptor_initWithDecriptorInfo_sendOutReport_sendGetReport_sendComponentUpdate___block_invoke;
      handler[3] = &unk_2789E2AE8;
      v78 = v18;
      v93 = v78;
      dispatch_source_set_event_handler(v77, handler);
      dispatch_source_set_timer(*(v18 + 64), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(*(v18 + 64));
      [(ACCFeaturePluginHIDDescriptor *)v78 startHIDEventSystemListener:*(v18 + 24)];
      v79 = IOHIDUserDeviceCreate();
      v78->_deviceRef = v79;
      if (v79)
      {
        IOHIDUserDeviceScheduleWithDispatchQueue();
        IOHIDUserDeviceRegisterGetReportCallback();
        IOHIDUserDeviceRegisterSetReportCallback();
        v80 = dispatch_semaphore_create(0);
        getReportSemaphore = v78->_getReportSemaphore;
        v78->_getReportSemaphore = v80;

        v82 = MEMORY[0x2383A6230](reportCopy);
        sendOutReport = v78->_sendOutReport;
        v78->_sendOutReport = v82;

        v84 = MEMORY[0x2383A6230](getReportCopy);
        sendGetReport = v78->_sendGetReport;
        v78->_sendGetReport = v84;

        v86 = MEMORY[0x2383A6230](updateCopy);
        sendComponentUpdate = v78->_sendComponentUpdate;
        v78->_sendComponentUpdate = v86;
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v88 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
          }

          v88 = MEMORY[0x277D86220];
          v90 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
        }

        sendComponentUpdate = v78;
        v78 = 0;
      }

      v18 = v70;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v72 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
        }

        v72 = MEMORY[0x277D86220];
        v89 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
      }

      v78 = 0;
    }
  }

  else
  {
    v78 = 0;
  }

  return v78;
}

_BYTE *__103__ACCFeaturePluginHIDDescriptor_initWithDecriptorInfo_sendOutReport_sendGetReport_sendComponentUpdate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 24);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2335CB000, v4, OS_LOG_TYPE_DEFAULT, "registerDeviceMatchingTimer fired! %@ call handleHIDComponentUpdate true", &v7, 0xCu);
  }

  result = *(a1 + 32);
  if ((result[8] & 1) == 0)
  {
    return [result handleHIDComponentUpdate:1];
  }

  return result;
}

- (void)removeDescriptor
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ACCFeaturePluginHIDDescriptor;
  [(ACCFeaturePluginHIDDescriptor *)&v2 dealloc];
}

- (void)startHIDEventSystemListener:(id)listener
{
  v15[1] = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  v5 = listenerCopy;
  if (!self->_hidEventSystemClientRef)
  {
    v14 = @"PhysicalDeviceUniqueID";
    v15[0] = listenerCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    self->_hidEventSystemClientRef = IOHIDEventSystemClientCreate();
    IOHIDEventSystemClientScheduleWithDispatchQueue();
    IOHIDEventSystemClientSetMatching();
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      hidDeviceUUIDStr = self->_hidDeviceUUIDStr;
      v12 = 138412290;
      v13 = hidDeviceUUIDStr;
      _os_log_impl(&dword_2335CB000, v7, OS_LOG_TYPE_DEFAULT, "start registerDeviceMatchingTimer, %@", &v12, 0xCu);
    }

    registerDeviceMatchingTimerSource = self->_registerDeviceMatchingTimerSource;
    v11 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(registerDeviceMatchingTimerSource, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    IOHIDEventSystemClientRegisterDeviceMatchingCallback();
  }
}

- (BOOL)handleInReport:(id)report
{
  reportCopy = report;
  if (!self->_isReady)
  {
    initialReportCache = self->_initialReportCache;
    if (initialReportCache)
    {
      [(NSMutableArray *)initialReportCache addObject:reportCopy];
    }

    else
    {
      if (gLogObjects)
      {
        v8 = gNumLogObjects < 1;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
        }

        v11 = MEMORY[0x277D86220];
        v9 = MEMORY[0x277D86220];
      }

      else
      {
        v11 = *gLogObjects;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ACCFeaturePluginHIDDescriptor handleInReport:];
      }
    }

    goto LABEL_26;
  }

  [(ACCFeaturePluginHIDDescriptor *)self deviceRef];
  [reportCopy bytes];
  [reportCopy length];
  if (IOHIDUserDeviceHandleReport())
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v5 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
      }

      v5 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ACCFeaturePluginHIDDescriptor handleInReport:];
    }

LABEL_26:
    v7 = 0;
    goto LABEL_27;
  }

  v7 = 1;
LABEL_27:

  return v7;
}

- (BOOL)handleOutReport:(id)report
{
  if (report)
  {
    reportCopy = report;
    sendOutReport = [(ACCFeaturePluginHIDDescriptor *)self sendOutReport];
    hidDeviceUUIDStr = [(ACCFeaturePluginHIDDescriptor *)self hidDeviceUUIDStr];
    (sendOutReport)[2](sendOutReport, hidDeviceUUIDStr, reportCopy);
  }

  return report != 0;
}

- (BOOL)handleGetReport:(int)report reportID:(unsigned __int8)d report:(id)a5
{
  dCopy = d;
  v6 = *&report;
  v8 = a5;
  [(ACCFeaturePluginHIDDescriptor *)self setGetReportResult:3758097084];
  [(ACCFeaturePluginHIDDescriptor *)self setGetReportType:v6];
  [(ACCFeaturePluginHIDDescriptor *)self setGetReportID:dCopy];
  [(ACCFeaturePluginHIDDescriptor *)self setGetReportBuffer:v8];
  sendGetReport = [(ACCFeaturePluginHIDDescriptor *)self sendGetReport];
  hidDeviceUUIDStr = [(ACCFeaturePluginHIDDescriptor *)self hidDeviceUUIDStr];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v6];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:dCopy];
  (sendGetReport)[2](sendGetReport, hidDeviceUUIDStr, v11, v12);

  v13 = dispatch_time(0, 1000000000);
  getReportSemaphore = [(ACCFeaturePluginHIDDescriptor *)self getReportSemaphore];
  v15 = dispatch_semaphore_wait(getReportSemaphore, v13);

  v16 = 0;
  if (![(ACCFeaturePluginHIDDescriptor *)self isShuttingDown]&& !v15)
  {
    if ([(ACCFeaturePluginHIDDescriptor *)self getReportResult])
    {
      v16 = 0;
    }

    else
    {
      getReportBuffer = [(ACCFeaturePluginHIDDescriptor *)self getReportBuffer];
      [getReportBuffer getBytes:objc_msgSend(v8 length:{"bytes"), objc_msgSend(v8, "length")}];

      v16 = 1;
    }
  }

  [(ACCFeaturePluginHIDDescriptor *)self setGetReportType:3];
  [(ACCFeaturePluginHIDDescriptor *)self setGetReportID:0];
  [(ACCFeaturePluginHIDDescriptor *)self setGetReportBuffer:0];

  return v16;
}

- (BOOL)handleGetReportResponse:(unsigned __int8)response reportID:(unsigned __int8)d report:(id)report
{
  dCopy = d;
  responseCopy = response;
  reportCopy = report;
  if ([(ACCFeaturePluginHIDDescriptor *)self getReportType]== responseCopy && [(ACCFeaturePluginHIDDescriptor *)self getReportID]== dCopy && ([(ACCFeaturePluginHIDDescriptor *)self getReportBuffer], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    [(ACCFeaturePluginHIDDescriptor *)self setGetReportResult:0];
    getReportBuffer = [(ACCFeaturePluginHIDDescriptor *)self getReportBuffer];
    v11 = [getReportBuffer length];

    v12 = [reportCopy length];
    if (v11 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    getReportBuffer2 = [(ACCFeaturePluginHIDDescriptor *)self getReportBuffer];
    memcpy([getReportBuffer2 mutableBytes], objc_msgSend(reportCopy, "bytes"), v13);

    getReportBuffer3 = [(ACCFeaturePluginHIDDescriptor *)self getReportBuffer];
    [getReportBuffer3 setLength:v13];

    getReportSemaphore = [(ACCFeaturePluginHIDDescriptor *)self getReportSemaphore];
    dispatch_semaphore_signal(getReportSemaphore);

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)handleHIDComponentUpdate:(BOOL)update
{
  updateCopy = update;
  v34 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    hidDeviceUUIDStr = self->_hidDeviceUUIDStr;
    *buf = 138412290;
    v33 = hidDeviceUUIDStr;
    _os_log_impl(&dword_2335CB000, v7, OS_LOG_TYPE_DEFAULT, "stop registerDeviceMatchingTimer, %@", buf, 0xCu);
  }

  dispatch_source_set_timer(self->_registerDeviceMatchingTimerSource, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  sendComponentUpdate = [(ACCFeaturePluginHIDDescriptor *)self sendComponentUpdate];
  hidDeviceUUIDStr = [(ACCFeaturePluginHIDDescriptor *)self hidDeviceUUIDStr];
  (sendComponentUpdate)[2](sendComponentUpdate, hidDeviceUUIDStr, updateCopy);

  self->_isReady = updateCopy;
  if (!updateCopy)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v15 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
      }

      v15 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(&v15->super.super, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(NSMutableArray *)self->_initialReportCache count];
      *buf = 134217984;
      v33 = v17;
      _os_log_impl(&dword_2335CB000, &v15->super.super, OS_LOG_TYPE_DEFAULT, "handleHIDComponentUpdate: not ready, remove %lu cached reports.", buf, 0xCu);
    }

    goto LABEL_43;
  }

  v11 = [(NSMutableArray *)self->_initialReportCache count];
  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v11)
  {
    if (v13)
    {
      v14 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
      }

      v14 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(NSMutableArray *)self->_initialReportCache count];
      *buf = 134217984;
      v33 = v20;
      _os_log_impl(&dword_2335CB000, v14, OS_LOG_TYPE_DEFAULT, "handleHIDComponentUpdate: ready, handle %lu cached reports.", buf, 0xCu);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = self->_initialReportCache;
    v21 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v15);
          }

          [(ACCFeaturePluginHIDDescriptor *)self handleInReport:*(*(&v27 + 1) + 8 * i), v27];
        }

        v22 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v22);
    }

LABEL_43:

    [(NSMutableArray *)self->_initialReportCache removeAllObjects];
    return 1;
  }

  if (v13)
  {
    v18 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCFeaturePluginHIDDescriptor initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:];
    }

    v18 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335CB000, v18, OS_LOG_TYPE_DEFAULT, "handleHIDComponentUpdate: ready, no cached reports.", buf, 2u);
  }

  return 1;
}

- (void)initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithDecriptorInfo:sendOutReport:sendGetReport:sendComponentUpdate:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleInReport:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end