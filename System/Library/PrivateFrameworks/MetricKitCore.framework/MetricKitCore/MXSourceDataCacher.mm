@interface MXSourceDataCacher
- (BOOL)saveToSourceDirectoryWithDiagnosticSourcePayload:(id)payload;
- (BOOL)saveToSourceDirectoryWithMetricSourcePayload:(id)payload;
- (MXSourceDataCacher)initWithSourcePathUtil:(id)util andStorageUtil:(id)storageUtil andBundleUtil:(id)bundleUtil;
@end

@implementation MXSourceDataCacher

- (MXSourceDataCacher)initWithSourcePathUtil:(id)util andStorageUtil:(id)storageUtil andBundleUtil:(id)bundleUtil
{
  utilCopy = util;
  storageUtilCopy = storageUtil;
  bundleUtilCopy = bundleUtil;
  v17.receiver = self;
  v17.super_class = MXSourceDataCacher;
  v12 = [(MXSourceDataCacher *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourcePathUtil, util);
    objc_storeStrong(&v13->_storageUtil, storageUtil);
    objc_storeStrong(&v13->_bundleUtil, bundleUtil);
    v14 = os_log_create("com.apple.metrickit", "source.cache.manager");
    logHandle = v13->_logHandle;
    v13->_logHandle = v14;

    if (!v13->_logHandle)
    {
      objc_storeStrong(&v13->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v13;
}

- (BOOL)saveToSourceDirectoryWithMetricSourcePayload:(id)payload
{
  payloadCopy = payload;
  storageUtil = self->_storageUtil;
  v18 = 0;
  v6 = [(MXStorageUtilProtocol *)storageUtil archivedDataWithObject:payloadCopy error:&v18];
  v7 = v18;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
    }

    sourcePathUtil = self->_sourcePathUtil;
    sourceID = [payloadCopy sourceID];
    bundleID = [payloadCopy bundleID];
    datestamp = [payloadCopy datestamp];
    v14 = [(MXSourcePathUtilProtocol *)sourcePathUtil filePathOfMetricSourcePayloadForSourceID:sourceID andBundleID:bundleID andDate:datestamp];

    if (!v14)
    {
      v16 = 0;
      goto LABEL_19;
    }

    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
    }

    if (([(MXStorageUtilProtocol *)self->_storageUtil saveData:v6 withFilePath:v14]& 1) == 0 && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
    }
  }

  else if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
  }

  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    [(MXSourceDataCacher *)logHandle saveToSourceDirectoryWithMetricSourcePayload:payloadCopy];
  }

  v16 = 1;
LABEL_19:

  return v16;
}

- (BOOL)saveToSourceDirectoryWithDiagnosticSourcePayload:(id)payload
{
  payloadCopy = payload;
  storageUtil = self->_storageUtil;
  v20 = 0;
  v6 = [(MXStorageUtilProtocol *)storageUtil archivedDataWithObject:payloadCopy error:&v20];
  v7 = v20;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
    }

    bundleID = [payloadCopy bundleID];
    if ([(MXBundleUtilProtocol *)self->_bundleUtil isAppExtensionFromBundleID:bundleID]&& ([(MXBundleUtilProtocol *)self->_bundleUtil mainAppBundleIDforExtension:bundleID], v11 = objc_claimAutoreleasedReturnValue(), bundleID, (bundleID = v11) == 0))
    {
      logHandle = self->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [(MXSourceDataCacher *)logHandle saveToSourceDirectoryWithDiagnosticSourcePayload:payloadCopy];
      }
    }

    else
    {
      sourcePathUtil = self->_sourcePathUtil;
      sourceID = [payloadCopy sourceID];
      datestamp = [payloadCopy datestamp];
      v15 = [(MXSourcePathUtilProtocol *)sourcePathUtil filePathOfDiagnosticSourcePayloadForSourceID:sourceID andBundleID:bundleID andDate:datestamp];

      if (v15)
      {
        if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
        {
          [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
        }

        if (([(MXStorageUtilProtocol *)self->_storageUtil saveData:v6 withFilePath:v15]& 1) == 0 && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
        {
          [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
        }

        goto LABEL_18;
      }
    }

    v17 = 0;
    goto LABEL_25;
  }

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
  }

LABEL_18:
  v16 = self->_logHandle;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(MXSourceDataCacher *)v16 saveToSourceDirectoryWithMetricSourcePayload:payloadCopy];
  }

  v17 = 1;
LABEL_25:

  return v17;
}

- (void)saveToSourceDirectoryWithMetricSourcePayload:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)saveToSourceDirectoryWithMetricSourcePayload:(void *)a1 .cold.5(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 metrics];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1(&dword_258D6F000, v5, v6, "Interested source data is now available : %@", v7, v8, v9, v10);
}

- (void)saveToSourceDirectoryWithDiagnosticSourcePayload:(void *)a1 .cold.4(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 bundleID];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_258D6F000, v3, OS_LOG_TYPE_ERROR, "Could not resolve Main App bunldeID for extension: %@", v5, 0xCu);
}

@end