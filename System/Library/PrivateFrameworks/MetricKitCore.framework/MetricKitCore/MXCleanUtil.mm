@interface MXCleanUtil
- (BOOL)_isDiagnosticDeliveryStaleForDirectory:(id)directory;
- (BOOL)_isDiagnosticSourceFilename:(id)filename;
- (BOOL)_isMetricDeliveryStaleForDirectory:(id)directory;
- (BOOL)_isMetricSourceFilename:(id)filename;
- (BOOL)_isStaleDiagnosticSourceForFilename:(id)filename;
- (BOOL)_isStaleForDate:(id)date;
- (BOOL)_isStaleMetricSourceForFilename:(id)filename;
- (BOOL)_isStaleSourceForFilename:(id)filename;
- (MXCleanUtil)initWithClientUtil:(id)util andDeliveryPathUtil:(id)pathUtil;
- (MXCleanUtil)initWithClientUtil:(id)util andDeliveryPathUtil:(id)pathUtil andDateUtil:(id)dateUtil;
- (id)_clientfulSourceDirectories;
- (id)_clientlessSourceDirectories;
- (id)_dateFromDateString:(id)string;
- (id)_dateFromDiagnosticFilename:(id)filename;
- (id)_dateFromMetricFilename:(id)filename;
- (id)_dateStringFromDiagnosticSourceFilename:(id)filename;
- (id)_dateStringFromMetricSourceFilename:(id)filename;
- (id)_dateStringFromUnprefixedFilename:(id)filename;
- (id)_datesFromDiagnosticFilenames:(id)filenames;
- (id)_datesFromMetricFilenames:(id)filenames;
- (id)_diagnosticDeliveryDirectories;
- (id)_diagnosticDeliveryDirectoryForClient:(id)client;
- (id)_diagnosticDeliveryParentDirectory;
- (id)_filenamesFromDirectory:(id)directory;
- (id)_lastFileDateFromDiagnosticFilenames:(id)filenames;
- (id)_lastFileDateFromMetricFilenames:(id)filenames;
- (id)_latestDateFromDates:(id)dates;
- (id)_metricDeliveryDirectories;
- (id)_metricDeliveryDirectoryForClient:(id)client;
- (id)_metricDeliveryParentDirectory;
- (id)_sourceDirectoryForSource:(id)source andClient:(id)client;
- (id)_subdirectoriesFromDirectory:(id)directory;
- (void)_cleanClientfulSourceDirectoriesForStaleData;
- (void)_cleanClientlessSourceDirectoriesForStaleData;
- (void)_cleanDeliveryDirectoriesForClient:(id)client;
- (void)_cleanDeliveryDirectoriesForStaleData;
- (void)_cleanDiagnosticDeliveryDirectoriesForStaleData;
- (void)_cleanDiagnosticDeliveryDirectoryForStaleDataForDirectory:(id)directory;
- (void)_cleanDirectoriesForStaleData;
- (void)_cleanDirectoriesForUninstalledClient:(id)client;
- (void)_cleanDirectoriesForUninstalledClients;
- (void)_cleanDirectory:(id)directory;
- (void)_cleanFileFromFilePath:(id)path;
- (void)_cleanMetricDeliveryDirectoriesForStaleData;
- (void)_cleanMetricDeliveryDirectoryForStaleDataForDirectory:(id)directory;
- (void)_cleanSourceDirectoriesForClient:(id)client;
- (void)_cleanSourceDirectoriesForStaleData;
- (void)_cleanSourceDirectoryForSource:(id)source andClient:(id)client;
- (void)_cleanStaleDataForSourceDirectory:(id)directory;
- (void)cleanStaleData;
@end

@implementation MXCleanUtil

- (MXCleanUtil)initWithClientUtil:(id)util andDeliveryPathUtil:(id)pathUtil
{
  utilCopy = util;
  pathUtilCopy = pathUtil;
  v14.receiver = self;
  v14.super_class = MXCleanUtil;
  v9 = [(MXCleanUtil *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientUtil, util);
    objc_storeStrong(&v10->_deliveryPathUtil, pathUtil);
    v11 = os_log_create("com.apple.metrickit", "cache.clean.utility");
    logHandle = v10->_logHandle;
    v10->_logHandle = v11;

    if (!v10->_logHandle)
    {
      objc_storeStrong(&v10->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v10;
}

- (MXCleanUtil)initWithClientUtil:(id)util andDeliveryPathUtil:(id)pathUtil andDateUtil:(id)dateUtil
{
  utilCopy = util;
  pathUtilCopy = pathUtil;
  dateUtilCopy = dateUtil;
  v17.receiver = self;
  v17.super_class = MXCleanUtil;
  v12 = [(MXCleanUtil *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientUtil, util);
    objc_storeStrong(&v13->_deliveryPathUtil, pathUtil);
    objc_storeStrong(&v13->_dateUtil, dateUtil);
    v14 = os_log_create("com.apple.metrickit", "cache.clean.utility");
    logHandle = v13->_logHandle;
    v13->_logHandle = v14;

    if (!v13->_logHandle)
    {
      objc_storeStrong(&v13->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v13;
}

- (void)cleanStaleData
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cleanDirectoriesForUninstalledClients
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cleanDirectoriesForUninstalledClient:(id)client
{
  clientCopy = client;
  if (([MEMORY[0x277D28708] isAppInstalledForBundleID:clientCopy] & 1) == 0)
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXCleanUtil _cleanDirectoriesForUninstalledClient:];
    }

    [(MXCleanUtil *)self _cleanDeliveryDirectoriesForClient:clientCopy];
    [(MXCleanUtil *)self _cleanSourceDirectoriesForClient:clientCopy];
  }
}

- (void)_cleanDeliveryDirectoriesForClient:(id)client
{
  clientCopy = client;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanDeliveryDirectoriesForClient:];
  }

  v5 = [(MXCleanUtil *)self _metricDeliveryDirectoryForClient:clientCopy];
  [(MXCleanUtil *)self _cleanDirectory:v5];
  v6 = [(MXCleanUtil *)self _diagnosticDeliveryDirectoryForClient:clientCopy];
  [(MXCleanUtil *)self _cleanDirectory:v6];
}

- (id)_metricDeliveryDirectoryForClient:(id)client
{
  clientCopy = client;
  _metricDeliveryParentDirectory = [(MXCleanUtil *)self _metricDeliveryParentDirectory];
  v6 = [_metricDeliveryParentDirectory stringByAppendingPathComponent:clientCopy];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _metricDeliveryDirectoryForClient:];
  }

  return v6;
}

- (id)_metricDeliveryParentDirectory
{
  applicationContainerPath = [(MXDeliveryPathUtilProtocol *)self->_deliveryPathUtil applicationContainerPath];
  v4 = [applicationContainerPath stringByAppendingPathComponent:@"Reports"];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _metricDeliveryParentDirectory];
  }

  return v4;
}

- (id)_diagnosticDeliveryDirectoryForClient:(id)client
{
  clientCopy = client;
  _diagnosticDeliveryParentDirectory = [(MXCleanUtil *)self _diagnosticDeliveryParentDirectory];
  v6 = [_diagnosticDeliveryParentDirectory stringByAppendingPathComponent:clientCopy];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _diagnosticDeliveryDirectoryForClient:];
  }

  return v6;
}

- (id)_diagnosticDeliveryParentDirectory
{
  applicationContainerPath = [(MXDeliveryPathUtilProtocol *)self->_deliveryPathUtil applicationContainerPath];
  v4 = [applicationContainerPath stringByAppendingPathComponent:@"Diagnostics"];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _diagnosticDeliveryParentDirectory];
  }

  return v4;
}

- (void)_cleanSourceDirectoriesForClient:(id)client
{
  v14 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanSourceDirectoriesForClient:];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [&unk_286A1B9E8 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(&unk_286A1B9E8);
        }

        [(MXCleanUtil *)self _cleanSourceDirectoryForSource:*(*(&v9 + 1) + 8 * v8++) andClient:clientCopy];
      }

      while (v6 != v8);
      v6 = [&unk_286A1B9E8 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_cleanSourceDirectoryForSource:(id)source andClient:(id)client
{
  sourceCopy = source;
  clientCopy = client;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanSourceDirectoryForSource:andClient:];
  }

  v8 = [(MXCleanUtil *)self _sourceDirectoryForSource:sourceCopy andClient:clientCopy];
  [(MXCleanUtil *)self _cleanDirectory:v8];
}

- (void)_cleanDirectory:(id)directory
{
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = 0;
  [defaultManager removeItemAtPath:directoryCopy error:&v7];
  v6 = v7;
  if (v6 && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXCleanUtil _cleanDirectory:];
  }
}

- (id)_sourceDirectoryForSource:(id)source andClient:(id)client
{
  sourceCopy = source;
  clientCopy = client;
  containerPath = [MEMORY[0x277D28708] containerPath];
  v9 = [containerPath stringByAppendingPathComponent:sourceCopy];
  v10 = [v9 stringByAppendingPathComponent:clientCopy];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _sourceDirectoryForSource:andClient:];
  }

  return v10;
}

- (void)_cleanDirectoriesForStaleData
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cleanDeliveryDirectoriesForStaleData
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cleanMetricDeliveryDirectoriesForStaleData
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)_metricDeliveryDirectories
{
  _metricDeliveryParentDirectory = [(MXCleanUtil *)self _metricDeliveryParentDirectory];
  v4 = [(MXCleanUtil *)self _subdirectoriesFromDirectory:_metricDeliveryParentDirectory];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _metricDeliveryDirectories];
  }

  return v4;
}

- (id)_subdirectoriesFromDirectory:(id)directory
{
  v23 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v6 = [defaultManager contentsOfDirectoryAtPath:directoryCopy error:&v21];
  v7 = v21;
  if (v7)
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXCleanUtil _subdirectoriesFromDirectory:];
    }

    v8 = 0;
  }

  else
  {
    v8 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [directoryCopy stringByAppendingPathComponent:*(*(&v17 + 1) + 8 * i)];
          v16 = 0;
          if ([defaultManager fileExistsAtPath:v14 isDirectory:&v16] && v16 == 1)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

- (void)_cleanMetricDeliveryDirectoryForStaleDataForDirectory:(id)directory
{
  directoryCopy = directory;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanMetricDeliveryDirectoryForStaleDataForDirectory:];
  }

  if ([(MXCleanUtil *)self _isMetricDeliveryStaleForDirectory:directoryCopy])
  {
    [(MXCleanUtil *)self _cleanDirectory:directoryCopy];
  }
}

- (BOOL)_isMetricDeliveryStaleForDirectory:(id)directory
{
  directoryCopy = directory;
  v5 = [(MXCleanUtil *)self _filenamesFromDirectory:directoryCopy];
  v6 = [(MXCleanUtil *)self _lastFileDateFromMetricFilenames:v5];
  v7 = [(MXCleanUtil *)self _isStaleForDate:v6];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isMetricDeliveryStaleForDirectory:];
  }

  return v7;
}

- (id)_filenamesFromDirectory:(id)directory
{
  v26 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  v6 = [defaultManager contentsOfDirectoryAtPath:directoryCopy error:&v24];
  v7 = v24;
  if (v7)
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXCleanUtil _filenamesFromDirectory:];
    }

    v8 = 0;
  }

  else
  {
    selfCopy = self;
    v8 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [directoryCopy stringByAppendingPathComponent:v14];
          v19 = 0;
          if ([defaultManager fileExistsAtPath:v15 isDirectory:&v19] && (v19 & 1) == 0)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    if (os_log_type_enabled(selfCopy->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXCleanUtil _filenamesFromDirectory:];
    }

    v6 = v18;
  }

  return v8;
}

- (id)_lastFileDateFromMetricFilenames:(id)filenames
{
  v4 = [(MXCleanUtil *)self _datesFromMetricFilenames:filenames];
  v5 = [(MXCleanUtil *)self _latestDateFromDates:v4];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _lastFileDateFromMetricFilenames:];
  }

  return v5;
}

- (id)_datesFromMetricFilenames:(id)filenames
{
  v18 = *MEMORY[0x277D85DE8];
  filenamesCopy = filenames;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = filenamesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MXCleanUtil *)self _dateFromMetricFilename:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _datesFromMetricFilenames:];
  }

  return v5;
}

- (void)_cleanDiagnosticDeliveryDirectoriesForStaleData
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)_diagnosticDeliveryDirectories
{
  _diagnosticDeliveryParentDirectory = [(MXCleanUtil *)self _diagnosticDeliveryParentDirectory];
  v4 = [(MXCleanUtil *)self _subdirectoriesFromDirectory:_diagnosticDeliveryParentDirectory];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _diagnosticDeliveryDirectories];
  }

  return v4;
}

- (void)_cleanDiagnosticDeliveryDirectoryForStaleDataForDirectory:(id)directory
{
  directoryCopy = directory;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanDiagnosticDeliveryDirectoryForStaleDataForDirectory:];
  }

  if ([(MXCleanUtil *)self _isDiagnosticDeliveryStaleForDirectory:directoryCopy])
  {
    [(MXCleanUtil *)self _cleanDirectory:directoryCopy];
  }
}

- (BOOL)_isDiagnosticDeliveryStaleForDirectory:(id)directory
{
  directoryCopy = directory;
  v5 = [(MXCleanUtil *)self _filenamesFromDirectory:directoryCopy];
  v6 = [(MXCleanUtil *)self _lastFileDateFromDiagnosticFilenames:v5];
  v7 = [(MXCleanUtil *)self _isStaleForDate:v6];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isDiagnosticDeliveryStaleForDirectory:];
  }

  return v7;
}

- (id)_lastFileDateFromDiagnosticFilenames:(id)filenames
{
  v4 = [(MXCleanUtil *)self _datesFromDiagnosticFilenames:filenames];
  v5 = [(MXCleanUtil *)self _latestDateFromDates:v4];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _lastFileDateFromDiagnosticFilenames:];
  }

  return v5;
}

- (id)_datesFromDiagnosticFilenames:(id)filenames
{
  v18 = *MEMORY[0x277D85DE8];
  filenamesCopy = filenames;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = filenamesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MXCleanUtil *)self _dateFromDiagnosticFilename:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _datesFromDiagnosticFilenames:];
  }

  return v5;
}

- (id)_dateFromDiagnosticFilename:(id)filename
{
  v4 = [filename stringByReplacingOccurrencesOfString:@"diagnostic_report_" withString:&stru_286A18718];
  v5 = [(MXCleanUtil *)self _dateStringFromUnprefixedFilename:v4];
  v6 = [(MXCleanUtil *)self _dateFromDateString:v5];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _dateFromDiagnosticFilename:];
  }

  return v6;
}

- (id)_dateFromMetricFilename:(id)filename
{
  v4 = [filename stringByReplacingOccurrencesOfString:@"report_" withString:&stru_286A18718];
  v5 = [(MXCleanUtil *)self _dateStringFromUnprefixedFilename:v4];
  v6 = [(MXCleanUtil *)self _dateFromDateString:v5];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _dateFromMetricFilename:];
  }

  return v6;
}

- (id)_dateFromDateString:(id)string
{
  v4 = [(MXDateUtil *)self->_dateUtil dateFromString:string];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _dateFromDateString:];
  }

  return v4;
}

- (id)_latestDateFromDates:(id)dates
{
  v18 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [datesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(datesCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (!v7)
        {
          v7 = v10;
        }

        v11 = v7;
        v7 = [v10 laterDate:v7];
      }

      v6 = [datesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _latestDateFromDates:];
  }

  return v7;
}

- (BOOL)_isStaleForDate:(id)date
{
  dateCopy = date;
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [dateCopy dateByAddingTimeInterval:1209600.0];
  v7 = [v5 laterDate:v6];
  v8 = [v7 isEqualToDate:v5];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isStaleForDate:];
  }

  return v8;
}

- (void)_cleanSourceDirectoriesForStaleData
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cleanClientlessSourceDirectoriesForStaleData
{
  v13 = *MEMORY[0x277D85DE8];
  _clientlessSourceDirectories = [(MXCleanUtil *)self _clientlessSourceDirectories];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [_clientlessSourceDirectories countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(_clientlessSourceDirectories);
        }

        [(MXCleanUtil *)self _cleanStaleDataForSourceDirectory:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [_clientlessSourceDirectories countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_cleanStaleDataForSourceDirectory:(id)directory
{
  v17 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanStaleDataForSourceDirectory:];
  }

  v5 = [(MXCleanUtil *)self _filenamesFromDirectory:directoryCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([(MXCleanUtil *)self _isStaleSourceForFilename:v10])
        {
          v11 = [directoryCopy stringByAppendingPathComponent:v10];
          [(MXCleanUtil *)self _cleanFileFromFilePath:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (BOOL)_isStaleSourceForFilename:(id)filename
{
  filenameCopy = filename;
  if ([(MXCleanUtil *)self _isMetricSourceFilename:filenameCopy])
  {
    v5 = [(MXCleanUtil *)self _isStaleMetricSourceForFilename:filenameCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MXCleanUtil *)self _isDiagnosticSourceFilename:filenameCopy];
  if (v6)
  {
    LOBYTE(v6) = [(MXCleanUtil *)self _isStaleDiagnosticSourceForFilename:filenameCopy];
  }

  v7 = v5 || v6;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isStaleSourceForFilename:];
  }

  return v7;
}

- (BOOL)_isMetricSourceFilename:(id)filename
{
  v4 = [filename containsString:@"log-"];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isMetricSourceFilename:];
  }

  return v4;
}

- (BOOL)_isStaleMetricSourceForFilename:(id)filename
{
  filenameCopy = filename;
  v5 = [(MXCleanUtil *)self _dateStringFromMetricSourceFilename:filenameCopy];
  v6 = [(MXCleanUtil *)self _dateFromDateString:v5];
  v7 = [(MXCleanUtil *)self _isStaleForDate:v6];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isStaleMetricSourceForFilename:];
  }

  return v7;
}

- (id)_dateStringFromMetricSourceFilename:(id)filename
{
  filenameCopy = filename;
  v5 = [filenameCopy stringByReplacingOccurrencesOfString:@"log-" withString:&stru_286A18718];
  v6 = [(MXCleanUtil *)self _dateStringFromUnprefixedFilename:v5];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _dateStringFromMetricSourceFilename:];
  }

  return v6;
}

- (id)_dateStringFromUnprefixedFilename:(id)filename
{
  filenameCopy = filename;
  v5 = [filenameCopy substringToIndex:{objc_msgSend(@"yyyy-MM-dd", "length")}];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _dateStringFromUnprefixedFilename:];
  }

  return v5;
}

- (BOOL)_isDiagnosticSourceFilename:(id)filename
{
  v4 = [filename containsString:@"diag-log-"];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isDiagnosticSourceFilename:];
  }

  return v4;
}

- (BOOL)_isStaleDiagnosticSourceForFilename:(id)filename
{
  filenameCopy = filename;
  v5 = [(MXCleanUtil *)self _dateStringFromDiagnosticSourceFilename:filenameCopy];
  v6 = [(MXCleanUtil *)self _dateFromDateString:v5];
  v7 = [(MXCleanUtil *)self _isStaleForDate:v6];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isStaleDiagnosticSourceForFilename:];
  }

  return v7;
}

- (id)_dateStringFromDiagnosticSourceFilename:(id)filename
{
  filenameCopy = filename;
  v5 = [filenameCopy stringByReplacingOccurrencesOfString:@"diag-log-" withString:&stru_286A18718];
  v6 = [(MXCleanUtil *)self _dateStringFromUnprefixedFilename:v5];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _dateStringFromDiagnosticSourceFilename:];
  }

  return v6;
}

- (id)_clientlessSourceDirectories
{
  v20[2] = *MEMORY[0x277D85DE8];
  containerPath = [MEMORY[0x277D28708] containerPath];
  v4 = [&unk_286A1BA00 objectAtIndexedSubscript:2];
  v20[0] = v4;
  v5 = [&unk_286A1BA18 objectAtIndexedSubscript:6];
  v20[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];

  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [containerPath stringByAppendingPathComponent:{*(*(&v15 + 1) + 8 * i), v15}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _clientlessSourceDirectories];
  }

  return v7;
}

- (void)_cleanClientfulSourceDirectoriesForStaleData
{
  v13 = *MEMORY[0x277D85DE8];
  _clientfulSourceDirectories = [(MXCleanUtil *)self _clientfulSourceDirectories];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [_clientfulSourceDirectories countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(_clientfulSourceDirectories);
        }

        [(MXCleanUtil *)self _cleanStaleDataForSourceDirectory:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [_clientfulSourceDirectories countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_clientfulSourceDirectories
{
  v22[3] = *MEMORY[0x277D85DE8];
  containerPath = [MEMORY[0x277D28708] containerPath];
  v4 = [&unk_286A1BA30 objectAtIndexedSubscript:4];
  v22[0] = v4;
  v5 = [&unk_286A1BA48 objectAtIndexedSubscript:3];
  v22[1] = v5;
  v6 = [&unk_286A1BA60 objectAtIndexedSubscript:5];
  v22[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];

  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [containerPath stringByAppendingPathComponent:{*(*(&v17 + 1) + 8 * i), v17}];
        v15 = [(MXCleanUtil *)self _subdirectoriesFromDirectory:v14];
        [v8 addObjectsFromArray:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _clientlessSourceDirectories];
  }

  return v8;
}

- (void)_cleanFileFromFilePath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanFileFromFilePath:];
  }

  v7 = 0;
  [defaultManager removeItemAtPath:pathCopy error:&v7];
  v6 = v7;
  if (v6 && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXCleanUtil _cleanFileFromFilePath:];
  }
}

- (void)_metricDeliveryDirectoryForClient:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_diagnosticDeliveryDirectoryForClient:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_cleanSourceDirectoryForSource:andClient:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_cleanDirectory:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_258D6F000, v4, v5, "Error removing directory: %@ with error: %{public}@", v6, v7, v8, v9);
}

- (void)_sourceDirectoryForSource:andClient:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_subdirectoriesFromDirectory:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_258D6F000, v4, v5, "Error searching contents of directory: %@ with error %{public}@", v6, v7, v8, v9);
}

- (void)_isMetricDeliveryStaleForDirectory:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_filenamesFromDirectory:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_258D6F000, v4, v5, "Error searching contents of directory: %@ with error: %{public}@", v6, v7, v8, v9);
}

- (void)_filenamesFromDirectory:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isDiagnosticDeliveryStaleForDirectory:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_latestDateFromDates:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isStaleSourceForFilename:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_isMetricSourceFilename:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_isStaleMetricSourceForFilename:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_dateStringFromMetricSourceFilename:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_isDiagnosticSourceFilename:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_isStaleDiagnosticSourceForFilename:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_dateStringFromDiagnosticSourceFilename:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_cleanFileFromFilePath:.cold.2()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_258D6F000, v4, v5, "Error clean file from path: %@ with error: %{public}@", v6, v7, v8, v9);
}

@end