@interface MXPayloadValidator
- (BOOL)_validateHangTracerData:(id)data;
- (BOOL)_validatePayload:(id)payload;
- (BOOL)_validatePowerlogData:(id)data;
- (BOOL)_validateReportCrashData:(id)data;
- (BOOL)_validateSpaceAttributionData:(id)data;
- (BOOL)_validateSpinTracerData:(id)data;
- (BOOL)validatePayload:(id)payload;
- (MXPayloadValidator)initWithLogHandle:(id)handle;
- (void)_sanitizeDeviceMetadataForDiagnostic:(id)diagnostic;
@end

@implementation MXPayloadValidator

- (MXPayloadValidator)initWithLogHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = MXPayloadValidator;
  v6 = [(MXPayloadValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logHandle, handle);
  }

  return v7;
}

- (BOOL)validatePayload:(id)payload
{
  payloadCopy = payload;
  v5 = [(MXPayloadValidator *)self _validatePayload:payloadCopy];
  if (!v5)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [(MXPayloadValidator *)payloadCopy validatePayload:?];
    }
  }

  return v5;
}

- (BOOL)_validatePayload:(id)payload
{
  payloadCopy = payload;
  v5 = payloadCopy;
  if (payloadCopy)
  {
    datestamp = [payloadCopy datestamp];

    if (datestamp)
    {
      sourceID = [v5 sourceID];
      metrics = [v5 metrics];
      if (!metrics)
      {
        logHandle = self->_logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          [(MXPayloadValidator *)v5 _validatePayload:?];
        }

        v9 = 0;
        goto LABEL_24;
      }

      v9 = 0;
      if (sourceID <= 3)
      {
        if (sourceID == 2)
        {
          v10 = [(MXPayloadValidator *)self _validatePowerlogData:metrics];
          goto LABEL_23;
        }

        if (sourceID == 3)
        {
          v10 = [(MXPayloadValidator *)self _validateHangTracerData:metrics];
          goto LABEL_23;
        }
      }

      else
      {
        switch(sourceID)
        {
          case 4:
            v10 = [(MXPayloadValidator *)self _validateSpinTracerData:metrics];
            goto LABEL_23;
          case 5:
            v10 = [(MXPayloadValidator *)self _validateReportCrashData:metrics];
            goto LABEL_23;
          case 6:
            v10 = [(MXPayloadValidator *)self _validateSpaceAttributionData:metrics];
LABEL_23:
            v9 = v10;
            break;
        }
      }

LABEL_24:

      goto LABEL_25;
    }

    v11 = self->_logHandle;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(MXPayloadValidator *)v5 _validatePayload:v11];
    }
  }

  else if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXPayloadValidator _validatePayload:];
  }

  v9 = 0;
LABEL_25:

  return v9;
}

- (BOOL)_validatePowerlogData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  dataCopy = data;
  v5 = [dataCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(dataCopy);
        }

        v9 = [dataCopy objectForKey:{*(*(&v12 + 1) + 8 * i), v12}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
          {
            [MXPayloadValidator _validatePowerlogData:];
          }

          v10 = 0;
          goto LABEL_15;
        }
      }

      v6 = [dataCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_15:

  return v10;
}

- (BOOL)_validateHangTracerData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  dataCopy = data;
  v5 = [dataCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(dataCopy);
        }

        v9 = [dataCopy objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
          {
            [MXPayloadValidator _validateHangTracerData:];
          }

          v13 = 0;
          goto LABEL_15;
        }

        v10 = v9;
        hangDiagnostic = [v10 hangDiagnostic];
        [(MXPayloadValidator *)self _sanitizeDeviceMetadataForDiagnostic:hangDiagnostic];

        appLaunchDiagnostic = [v10 appLaunchDiagnostic];

        [(MXPayloadValidator *)self _sanitizeDeviceMetadataForDiagnostic:appLaunchDiagnostic];
      }

      v6 = [dataCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      v13 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_15:

  return v13;
}

- (BOOL)_validateSpinTracerData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  dataCopy = data;
  v5 = [dataCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(dataCopy);
        }

        v9 = [dataCopy objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
          {
            [MXPayloadValidator _validateSpinTracerData:];
          }

          v13 = 0;
          goto LABEL_15;
        }

        v10 = v9;
        cpuExceptionDiagnostic = [v10 cpuExceptionDiagnostic];
        [(MXPayloadValidator *)self _sanitizeDeviceMetadataForDiagnostic:cpuExceptionDiagnostic];

        diskWriteExceptionDiagnostic = [v10 diskWriteExceptionDiagnostic];

        [(MXPayloadValidator *)self _sanitizeDeviceMetadataForDiagnostic:diskWriteExceptionDiagnostic];
      }

      v6 = [dataCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      v13 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_15:

  return v13;
}

- (BOOL)_validateReportCrashData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dataCopy = data;
  v5 = [dataCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(dataCopy);
        }

        v9 = [dataCopy objectForKey:{*(*(&v13 + 1) + 8 * i), v13}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
          {
            [MXPayloadValidator _validateReportCrashData:];
          }

          v11 = 0;
          goto LABEL_15;
        }

        crashDiagnostic = [v9 crashDiagnostic];
        [(MXPayloadValidator *)self _sanitizeDeviceMetadataForDiagnostic:crashDiagnostic];
      }

      v6 = [dataCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_15:

  return v11;
}

- (BOOL)_validateSpaceAttributionData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  dataCopy = data;
  v5 = [dataCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(dataCopy);
        }

        v9 = [dataCopy objectForKey:{*(*(&v12 + 1) + 8 * i), v12}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
          {
            [MXPayloadValidator _validateSpaceAttributionData:];
          }

          v10 = 0;
          goto LABEL_15;
        }
      }

      v6 = [dataCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_15:

  return v10;
}

- (void)_sanitizeDeviceMetadataForDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  if (!diagnosticCopy)
  {
    goto LABEL_14;
  }

  v5 = objc_alloc_init(MXBundleUtil);
  metaData = [diagnosticCopy metaData];
  bundleIdentifier = [metaData bundleIdentifier];

  if ([(MXBundleUtil *)v5 isAppExtensionFromBundleID:bundleIdentifier])
  {
    v8 = [(MXBundleUtil *)v5 mainAppBundleIDforExtension:bundleIdentifier];

    bundleIdentifier = v8;
  }

  v28 = 0;
  v9 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v28];
  v10 = v28;
  v26 = bundleIdentifier;
  v27 = v5;
  v25 = v10;
  if (v10)
  {
    v11 = v10;
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [(MXPayloadValidator *)bundleIdentifier _sanitizeDeviceMetadataForDiagnostic:v11, logHandle];
    }

    isBeta = 0;
  }

  else
  {
    if (!v9)
    {
      isBeta = 0;
      goto LABEL_11;
    }

    isBeta = [v9 isBeta];
  }

LABEL_11:
  v13 = objc_alloc(MEMORY[0x277CD79F8]);
  regionFormat = [MEMORY[0x277D28708] regionFormat];
  osVersion = [MEMORY[0x277D28708] osVersion];
  modelIdentifier = [MEMORY[0x277D28708] modelIdentifier];
  metaData2 = [diagnosticCopy metaData];
  applicationBuildVersion = [metaData2 applicationBuildVersion];
  platformArchitecture = [MEMORY[0x277D28708] platformArchitecture];
  metaData3 = [diagnosticCopy metaData];
  bundleIdentifier2 = [metaData3 bundleIdentifier];
  BYTE4(v23) = isBeta;
  LODWORD(v23) = [diagnosticCopy pid];
  v22 = [v13 initWithRegionFormat:regionFormat osVersion:osVersion deviceType:modelIdentifier appBuildVersion:applicationBuildVersion platformArchitecture:platformArchitecture bundleID:bundleIdentifier2 pid:v23 isTestFlightApp:?];

  if (v22)
  {
    [diagnosticCopy setMetaData:v22];
  }

LABEL_14:
}

- (void)validatePayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_258D6F000, a2, OS_LOG_TYPE_ERROR, "Invalid payload: %@", &v2, 0xCu);
}

- (void)_validatePayload:(void *)a1 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 bundleID];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_258D6F000, v3, OS_LOG_TYPE_ERROR, "Invalid payload: %@ due to payload metrics of client: %@ is nil", &v5, 0x16u);
}

- (void)_validatePayload:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_258D6F000, a2, OS_LOG_TYPE_ERROR, "Invalid payload: %@ due to payload datestamp is nil", &v2, 0xCu);
}

- (void)_sanitizeDeviceMetadataForDiagnostic:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_258D6F000, log, OS_LOG_TYPE_ERROR, "There was an error querying the LS database for bundle id %@: %@", &v3, 0x16u);
}

@end