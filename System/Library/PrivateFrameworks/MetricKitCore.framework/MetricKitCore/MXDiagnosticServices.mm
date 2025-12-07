@interface MXDiagnosticServices
- (MXDiagnosticServices)initWithSourcePathUtil:(id)util andDateUtil:(id)dateUtil;
- (id)_diagnosticPayloadForClient:(id)client andDate:(id)date;
- (id)_diagnosticsFromServicesForClient:(id)client dateString:(id)string;
- (id)diagnosticPayloadForClient:(id)client andDate:(id)date;
- (id)diagnosticPayloadForClient:(id)client isExtension:(BOOL)extension andMainAppBundleID:(id)d andDate:(id)date;
- (void)_createServicesForClient:(id)client;
- (void)_startServices;
- (void)_stopServices;
- (void)cleanServiceDiagnosticsDirectoriesForClient:(id)client;
@end

@implementation MXDiagnosticServices

- (MXDiagnosticServices)initWithSourcePathUtil:(id)util andDateUtil:(id)dateUtil
{
  utilCopy = util;
  dateUtilCopy = dateUtil;
  v15.receiver = self;
  v15.super_class = MXDiagnosticServices;
  v9 = [(MXDiagnosticServices *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    services = v9->_services;
    v9->_services = v10;

    objc_storeStrong(&v9->_sourcePathUtil, util);
    objc_storeStrong(&v9->_dateUtil, dateUtil);
    v12 = os_log_create("com.apple.metrickit", "diagnostic.service.manager");
    logHandle = v9->_logHandle;
    v9->_logHandle = v12;

    if (!v9->_logHandle)
    {
      objc_storeStrong(&v9->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v9;
}

- (id)diagnosticPayloadForClient:(id)client andDate:(id)date
{
  clientCopy = client;
  dateCopy = date;
  if ([MEMORY[0x277D28708] verifySDKVersionForClient:clientCopy])
  {
    [(MXDiagnosticServices *)self _createServicesForClient:clientCopy];
    [(MXDiagnosticServices *)self _startServices];
    v8 = [(MXDiagnosticServices *)self _diagnosticPayloadForClient:clientCopy andDate:dateCopy];
    [(MXDiagnosticServices *)self _stopServices];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)cleanServiceDiagnosticsDirectoriesForClient:(id)client
{
  v24 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  services = [(MXDiagnosticServices *)self services];

  if (services)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEFAULT, "Cleaning MXSource Services Data Directories\n", buf, 2u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    services2 = [(MXDiagnosticServices *)self services];
    allObjects = [services2 allObjects];

    v9 = [allObjects countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v18;
      *&v10 = 138412290;
      v16 = v10;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(allObjects);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if ([v14 isStarted])
          {
            v15 = self->_logHandle;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v16;
              v22 = v14;
              _os_log_error_impl(&dword_258D6F000, v15, OS_LOG_TYPE_ERROR, "Cannot clean %@ data directory when service is started", buf, 0xCu);
            }
          }

          else
          {
            -[MXSourcePathUtilProtocol cleanDiagnosticsDirectoryForSource:andClient:](self->_sourcePathUtil, "cleanDiagnosticsDirectoryForSource:andClient:", [v14 sourceID], clientCopy);
          }
        }

        v11 = [allObjects countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v11);
    }
  }
}

- (void)_createServicesForClient:(id)client
{
  v25 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  services = [(MXDiagnosticServices *)self services];

  if (services)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEFAULT, "Initializing MXSource Services\n", buf, 2u);
    }

    services2 = [(MXDiagnosticServices *)self services];
    mEMORY[0x277D286E0] = [MEMORY[0x277D286E0] sharedHangTracerService];
    [services2 addObject:mEMORY[0x277D286E0]];

    services3 = [(MXDiagnosticServices *)self services];
    mEMORY[0x277D28700] = [MEMORY[0x277D28700] sharedSpinTracerService];
    [services3 addObject:mEMORY[0x277D28700]];

    services4 = [(MXDiagnosticServices *)self services];
    mEMORY[0x277D286F0] = [MEMORY[0x277D286F0] sharedReportCrashService];
    [services4 addObject:mEMORY[0x277D286F0]];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    services5 = [(MXDiagnosticServices *)self services];
    allObjects = [services5 allObjects];

    v15 = [allObjects countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v19 + 1) + 8 * i) setCurrentClient:clientCopy];
        }

        v16 = [allObjects countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v16);
    }
  }
}

- (void)_startServices
{
  v25 = *MEMORY[0x277D85DE8];
  services = [(MXDiagnosticServices *)self services];

  if (services)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    services2 = [(MXDiagnosticServices *)self services];
    allObjects = [services2 allObjects];

    v6 = [allObjects countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v19;
      *&v7 = 138412290;
      v17 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(allObjects);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          if (([v11 startService] & 1) == 0)
          {
            logHandle = self->_logHandle;
            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = v17;
              v23 = v11;
              _os_log_error_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_ERROR, "%@ service failed to start", buf, 0xCu);
            }

            services3 = [(MXDiagnosticServices *)self services];
            [services3 removeObject:v11];
          }
        }

        v8 = [allObjects countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v8);
    }

    v14 = self->_logHandle;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      services4 = [(MXDiagnosticServices *)self services];
      *buf = 138412290;
      v23 = services4;
      _os_log_impl(&dword_258D6F000, v15, OS_LOG_TYPE_INFO, "Services started:%@", buf, 0xCu);
    }
  }
}

- (void)_stopServices
{
  v23 = *MEMORY[0x277D85DE8];
  services = [(MXDiagnosticServices *)self services];

  if (services)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEFAULT, "Stopping MXSource Services\n", buf, 2u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    services2 = [(MXDiagnosticServices *)self services];
    allObjects = [services2 allObjects];

    v7 = [allObjects countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v17;
      *&v8 = 138412290;
      v15 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(allObjects);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if (([v12 stopService] & 1) == 0)
          {
            v13 = self->_logHandle;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = v15;
              v21 = v12;
              _os_log_error_impl(&dword_258D6F000, v13, OS_LOG_TYPE_ERROR, "%@ service failed to stop", buf, 0xCu);
            }

            services3 = [(MXDiagnosticServices *)self services];
            [services3 removeObject:v12];
          }
        }

        v9 = [allObjects countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v9);
    }
  }
}

- (id)_diagnosticPayloadForClient:(id)client andDate:(id)date
{
  clientCopy = client;
  dateCopy = date;
  dateUtil = [(MXDiagnosticServices *)self dateUtil];
  v9 = [dateUtil stringFromDate:dateCopy];

  v10 = [(MXDiagnosticServices *)self _diagnosticsFromServicesForClient:clientCopy dateString:v9];
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXDiagnosticServices _diagnosticPayloadForClient:v10 andDate:logHandle];
  }

  v12 = [MXCorePayloadConstructor buildDiagnosticPayloadForClient:clientCopy fromClientDiagnosticsDictionary:v10 withDateString:v9];

  return v12;
}

- (id)_diagnosticsFromServicesForClient:(id)client dateString:(id)string
{
  v31 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  stringCopy = string;
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  services = [(MXDiagnosticServices *)self services];
  v10 = [services countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v23;
    *&v11 = 138412546;
    v20 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(services);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 getDiagnosticsForClient:clientCopy dateString:{stringCopy, v20}];
        if (v16)
        {
          logHandle = selfCopy->_logHandle;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = v20;
            v27 = v15;
            v28 = 2112;
            v29 = v16;
            _os_log_debug_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEBUG, "Service: %@ returned data: %@", buf, 0x16u);
          }

          v18 = [&unk_286A1B9D0 objectAtIndexedSubscript:{objc_msgSend(v15, "sourceID")}];
          [v21 setObject:v16 forKey:v18];
        }
      }

      v12 = [services countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v12);
  }

  return v21;
}

- (id)diagnosticPayloadForClient:(id)client isExtension:(BOOL)extension andMainAppBundleID:(id)d andDate:(id)date
{
  extensionCopy = extension;
  clientCopy = client;
  dCopy = d;
  v12 = dCopy;
  if (extensionCopy)
  {
    v13 = dCopy;
  }

  else
  {
    v13 = clientCopy;
  }

  v14 = v13;
  dateCopy = date;
  [(MXDiagnosticServices *)self _createServicesForClient:v14];
  [(MXDiagnosticServices *)self _startServices];
  v16 = [(MXDiagnosticServices *)self _diagnosticPayloadForClient:clientCopy andDate:dateCopy];

  [(MXDiagnosticServices *)self _stopServices];

  return v16;
}

- (void)_diagnosticPayloadForClient:(uint64_t)a1 andDate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_258D6F000, a2, OS_LOG_TYPE_DEBUG, "Client Diagnostics to Parse: %@", &v2, 0xCu);
}

@end