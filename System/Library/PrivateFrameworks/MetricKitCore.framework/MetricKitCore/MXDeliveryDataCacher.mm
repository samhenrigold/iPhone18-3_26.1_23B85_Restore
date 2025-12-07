@interface MXDeliveryDataCacher
- (BOOL)_writeDiagnosticReport:(id)report atAppContainerPath:(id)path forClient:(id)client withError:(id *)error;
- (BOOL)_writeMetricReport:(id)report atAppContainerPath:(id)path forClient:(id)client withError:(id *)error;
- (BOOL)saveDiagnostic:(id)diagnostic toDeliveryDirectoryForBundleID:(id)d;
- (BOOL)saveMetrics:(id)metrics toDeliveryDirectoryForBundleID:(id)d;
- (MXDeliveryDataCacher)initWithClientUtil:(id)util andDeliveryPathUtil:(id)pathUtil andStorageUtil:(id)storageUtil;
- (id)_diagnosticsFromFilepaths:(id)filepaths;
- (id)_metricsFromFilepaths:(id)filepaths;
- (id)diagnosticsForClient:(id)client;
- (id)metricsForClient:(id)client;
@end

@implementation MXDeliveryDataCacher

- (MXDeliveryDataCacher)initWithClientUtil:(id)util andDeliveryPathUtil:(id)pathUtil andStorageUtil:(id)storageUtil
{
  utilCopy = util;
  pathUtilCopy = pathUtil;
  storageUtilCopy = storageUtil;
  v17.receiver = self;
  v17.super_class = MXDeliveryDataCacher;
  v12 = [(MXDeliveryDataCacher *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientUtil, util);
    objc_storeStrong(&v13->_deliveryPathUtil, pathUtil);
    objc_storeStrong(&v13->_storageUtil, storageUtil);
    v14 = os_log_create("com.apple.metrickit", "delivery.cache.manager");
    logHandle = v13->_logHandle;
    v13->_logHandle = v14;

    if (!v13->_logHandle)
    {
      objc_storeStrong(&v13->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v13;
}

- (BOOL)saveMetrics:(id)metrics toDeliveryDirectoryForBundleID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  dCopy = d;
  v8 = [(MXDeliveryPathUtilProtocol *)self->_deliveryPathUtil applicationContainerPathForBundleID:dCopy];
  if (v8)
  {
    deliveryPathUtil = self->_deliveryPathUtil;
    v31 = 0;
    v10 = [(MXDeliveryPathUtilProtocol *)deliveryPathUtil createMetricDirectoryAtPath:v8 forClient:dCopy withError:&v31];
    v11 = v31;
    if (v10)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = metricsCopy;
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (!v13)
      {

        v23 = 1;
        goto LABEL_27;
      }

      v14 = v13;
      v25 = metricsCopy;
      v15 = 0;
      v16 = *v28;
      do
      {
        v17 = 0;
        v18 = v11;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v27 + 1) + 8 * v17);
          v26 = v18;
          [(MXDeliveryDataCacher *)self _writeMetricReport:v19 atAppContainerPath:v8 forClient:dCopy withError:&v26];
          v11 = v26;

          if (v11)
          {
            logHandle = self->_logHandle;
            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v33 = v11;
              v34 = 2112;
              v35 = dCopy;
              _os_log_error_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_ERROR, "Encountered error: %@ while writing payload for client: %@", buf, 0x16u);
            }

            ++v15;
          }

          ++v17;
          v18 = v11;
        }

        while (v14 != v17);
        v14 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v14);

      if (v15 < 1)
      {
        v23 = 1;
        metricsCopy = v25;
        goto LABEL_27;
      }

      v21 = self->_logHandle;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [(MXDeliveryDataCacher *)v8 saveMetrics:v15 toDeliveryDirectoryForBundleID:v21];
      }

      v22 = self->_logHandle;
      metricsCopy = v25;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(MXDeliveryDataCacher *)v11 saveMetrics:dCopy toDeliveryDirectoryForBundleID:v22];
      }
    }

    else if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXDeliveryDataCacher saveMetrics:toDeliveryDirectoryForBundleID:];
    }

    v23 = 0;
LABEL_27:

    goto LABEL_28;
  }

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXDeliveryDataCacher saveMetrics:toDeliveryDirectoryForBundleID:];
  }

  [(MXClientUtilProtocol *)self->_clientUtil removeClientFromPersistenceForBundleID:dCopy];
  v23 = 0;
LABEL_28:

  return v23;
}

- (BOOL)saveDiagnostic:(id)diagnostic toDeliveryDirectoryForBundleID:(id)d
{
  diagnosticCopy = diagnostic;
  dCopy = d;
  v8 = [(MXDeliveryPathUtilProtocol *)self->_deliveryPathUtil applicationContainerPathForBundleID:dCopy];
  deliveryPathUtil = self->_deliveryPathUtil;
  v16 = 0;
  v10 = [(MXDeliveryPathUtilProtocol *)deliveryPathUtil createDiagnosticDirectoryAtPath:v8 forClient:dCopy withError:&v16];
  v11 = v16;
  if ((v10 & 1) == 0 && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXDeliveryDataCacher saveMetrics:toDeliveryDirectoryForBundleID:];
  }

  v15 = v11;
  v12 = [(MXDeliveryDataCacher *)self _writeDiagnosticReport:diagnosticCopy atAppContainerPath:v8 forClient:dCopy withError:&v15];
  v13 = v15;

  if (!v12 && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXDeliveryDataCacher saveDiagnostic:toDeliveryDirectoryForBundleID:];
  }

  return v12;
}

- (BOOL)_writeMetricReport:(id)report atAppContainerPath:(id)path forClient:(id)client withError:(id *)error
{
  reportCopy = report;
  pathCopy = path;
  clientCopy = client;
  if (reportCopy)
  {
    v13 = [(MXStorageUtilProtocol *)self->_storageUtil archivedDataWithObject:reportCopy error:error];
    if (v13 && !*error)
    {
      logHandle = self->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        [MXDeliveryDataCacher _writeMetricReport:? atAppContainerPath:? forClient:? withError:?];
      }

      if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
      {
        [MXDeliveryDataCacher _writeMetricReport:atAppContainerPath:forClient:withError:];
      }

      deliveryPathUtil = self->_deliveryPathUtil;
      timeStampEnd = [reportCopy timeStampEnd];
      v25 = [(MXDeliveryPathUtilProtocol *)deliveryPathUtil filepathOfMetricForDeliveryFromAppContainerPath:pathCopy forClient:clientCopy atDate:timeStampEnd];

      if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
      {
        [MXDeliveryDataCacher _writeMetricReport:atAppContainerPath:forClient:withError:];
      }

      v21 = [(MXStorageUtilProtocol *)self->_storageUtil saveData:v13 withFilePath:v25];
      if ((v21 & 1) == 0)
      {
        v26 = self->_logHandle;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [MXDeliveryDataCacher _writeMetricReport:v26 atAppContainerPath:? forClient:? withError:?];
        }
      }
    }

    else
    {
      v14 = self->_logHandle;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(MXDeliveryDataCacher *)error _writeMetricReport:v14 atAppContainerPath:v15 forClient:v16 withError:v17, v18, v19, v20];
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)_writeDiagnosticReport:(id)report atAppContainerPath:(id)path forClient:(id)client withError:(id *)error
{
  reportCopy = report;
  pathCopy = path;
  clientCopy = client;
  if (reportCopy)
  {
    v13 = [(MXStorageUtilProtocol *)self->_storageUtil archivedDataWithObject:reportCopy error:error];
    if (v13 && !*error)
    {
      deliveryPathUtil = self->_deliveryPathUtil;
      timeStampEnd = [reportCopy timeStampEnd];
      v24 = [(MXDeliveryPathUtilProtocol *)deliveryPathUtil filepathOfDiagnosticForDeliveryFromAppContainerPath:pathCopy forClient:clientCopy atDate:timeStampEnd];

      if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
      {
        [MXDeliveryDataCacher _writeDiagnosticReport:atAppContainerPath:forClient:withError:];
      }

      v21 = [(MXStorageUtilProtocol *)self->_storageUtil saveData:v13 withFilePath:v24];
      if ((v21 & 1) == 0 && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
      {
        [MXDeliveryDataCacher _writeDiagnosticReport:atAppContainerPath:forClient:withError:];
      }
    }

    else
    {
      logHandle = self->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [(MXDeliveryDataCacher *)error _writeMetricReport:v15 atAppContainerPath:v16 forClient:v17 withError:v18, v19, v20];
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)metricsForClient:(id)client
{
  clientCopy = client;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXDeliveryDataCacher metricsForClient:];
  }

  deliveryPathUtil = self->_deliveryPathUtil;
  v9 = 0;
  v6 = [(MXDeliveryPathUtilProtocol *)deliveryPathUtil metricReportFilepathsFromClient:clientCopy withError:&v9];
  v7 = 0;
  if (!v9)
  {
    v7 = [(MXDeliveryDataCacher *)self _metricsFromFilepaths:v6];
    if (![v7 count])
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)_metricsFromFilepaths:(id)filepaths
{
  v37 = *MEMORY[0x277D85DE8];
  filepathsCopy = filepaths;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = filepathsCopy;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v29;
    *&v6 = 138412290;
    v23 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        logHandle = self->_logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = v23;
          v35 = v11;
          _os_log_debug_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEBUG, "Metric report: %@", buf, 0xCu);
        }

        v13 = [(MXStorageUtilProtocol *)self->_storageUtil dataFromPath:v11, v23];
        storageUtil = self->_storageUtil;
        v15 = objc_opt_class();
        v27 = v8;
        v16 = [(MXStorageUtilProtocol *)storageUtil unarchivedObjectOfClass:v15 fromData:v13 error:&v27];
        v17 = v27;

        if (v16)
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          [v24 addObject:v16];
        }

        else if (v17)
        {
          v19 = self->_logHandle;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(MXDeliveryDataCacher *)&v32 _metricsFromFilepaths:v19, v17, &v33];
          }
        }

        v20 = self->_storageUtil;
        v26 = v17;
        [(MXStorageUtilProtocol *)v20 removeFile:v11 error:&v26];
        v8 = v26;
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v7);
  }

  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v24];

  return v21;
}

- (id)diagnosticsForClient:(id)client
{
  clientCopy = client;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXDeliveryDataCacher diagnosticsForClient:];
  }

  deliveryPathUtil = self->_deliveryPathUtil;
  v9 = 0;
  v6 = [(MXDeliveryPathUtilProtocol *)deliveryPathUtil diagnosticReportFilepathsFromClient:clientCopy withError:&v9];
  v7 = 0;
  if (!v9)
  {
    v7 = [(MXDeliveryDataCacher *)self _diagnosticsFromFilepaths:v6];
    if (![v7 count])
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)_diagnosticsFromFilepaths:(id)filepaths
{
  v37 = *MEMORY[0x277D85DE8];
  filepathsCopy = filepaths;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = filepathsCopy;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v29;
    *&v6 = 138412290;
    v23 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        logHandle = self->_logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = v23;
          v35 = v11;
          _os_log_debug_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEBUG, "Diagnostic report: %@", buf, 0xCu);
        }

        v13 = [(MXStorageUtilProtocol *)self->_storageUtil dataFromPath:v11, v23];
        storageUtil = self->_storageUtil;
        v15 = objc_opt_class();
        v27 = v8;
        v16 = [(MXStorageUtilProtocol *)storageUtil unarchivedObjectOfClass:v15 fromData:v13 error:&v27];
        v17 = v27;

        if (v16)
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          [v24 addObject:v16];
        }

        else if (v17)
        {
          v19 = self->_logHandle;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(MXDeliveryDataCacher *)&v32 _diagnosticsFromFilepaths:v19, v17, &v33];
          }
        }

        v20 = self->_storageUtil;
        v26 = v17;
        [(MXStorageUtilProtocol *)v20 removeFile:v11 error:&v26];
        v8 = v26;
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v7);
  }

  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v24];

  return v21;
}

- (void)saveMetrics:(os_log_t)log toDeliveryDirectoryForBundleID:.cold.2(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_258D6F000, log, OS_LOG_TYPE_DEBUG, "Error count: %d, log path: %@", v3, 0x12u);
}

- (void)saveMetrics:(NSObject *)a3 toDeliveryDirectoryForBundleID:.cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  OUTLINED_FUNCTION_1_3(&dword_258D6F000, a2, a3, "Failed to write metric report for %@ with error: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)_writeMetricReport:(uint64_t)a3 atAppContainerPath:(uint64_t)a4 forClient:(uint64_t)a5 withError:(uint64_t)a6 .cold.5(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_3_0(&dword_258D6F000, a2, a3, "Error archiving data: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_writeDiagnosticReport:atAppContainerPath:forClient:withError:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_258D6F000, v0, OS_LOG_TYPE_DEBUG, "Writing data of diagnostic payload: %@ to path: %@ for delivery.", v1, 0x16u);
}

- (void)_metricsFromFilepaths:(void *)a3 .cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 description];
  *a1 = 138543362;
  *a4 = v8;
  OUTLINED_FUNCTION_5_0(&dword_258D6F000, v9, v10, "Error while processing metric data on disk: %{public}@");
}

- (void)_diagnosticsFromFilepaths:(void *)a3 .cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 description];
  *a1 = 138543362;
  *a4 = v8;
  OUTLINED_FUNCTION_5_0(&dword_258D6F000, v9, v10, "Error while processing diagnostic data on disk: %{public}@");
}

@end