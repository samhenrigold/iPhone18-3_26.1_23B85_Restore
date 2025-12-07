@interface GrimaldiAPDSEventSource
- (GrimaldiAPDSEventSource)init;
- (int)requestEventOn:(id)on withNsamples:(unsigned __int8)nsamples withCallback:(id)callback;
- (void)dealloc;
@end

@implementation GrimaldiAPDSEventSource

- (GrimaldiAPDSEventSource)init
{
  selfCopy = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = GrimaldiAPDSEventSource;
  selfCopy = [(GrimaldiAPDSEventSource *)&v10 init];
  if (selfCopy)
  {
    v2 = os_log_create(CBGrimaldiModuleName, "APDSEventSource");
    selfCopy->_logHandle = v2;
    if (selfCopy->_logHandle)
    {
      if (!ApplePhotonDetectorServicesOpen())
      {
        return selfCopy;
      }
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v9 = inited;
      v8 = 16;
      if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
      {
        log = v9;
        type = v8;
        __os_log_helper_16_0_0(v7);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create log handle", v7, 2u);
      }
    }

    MEMORY[0x1E69E5920](selfCopy);
    return 0;
  }

  return 0;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->_apdsHandle)
  {
    ApplePhotonDetectorServicesClose();
  }

  *&v2 = MEMORY[0x1E69E5920](selfCopy->_logHandle).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = GrimaldiAPDSEventSource;
  [(GrimaldiAPDSEventSource *)&v3 dealloc];
}

- (int)requestEventOn:(id)on withNsamples:(unsigned __int8)nsamples withCallback:(id)callback
{
  v48 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v44 = a2;
  onCopy = on;
  nsamplesCopy = nsamples;
  callbackCopy = callback;
  v40 = 0;
  if (callback)
  {
    v36 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    if (v36)
    {
      *v36 = _Block_copy(callbackCopy);
      if (*v36)
      {
        v30 = malloc_type_calloc(1uLL, 0x28uLL, 0x1090040653BC2AFuLL);
        if (v30)
        {
          *v30 = malloc_type_calloc(nsamplesCopy, 4uLL, 0x100004052888210uLL);
          *(v30 + 1) = malloc_type_calloc(nsamplesCopy, 4uLL, 0x100004052888210uLL);
          *(v30 + 2) = malloc_type_calloc(nsamplesCopy, 8uLL, 0x100004000313F17uLL);
          *(v30 + 3) = malloc_type_calloc(nsamplesCopy, 1uLL, 0x100004077774924uLL);
          if (*v30 && *(v30 + 1) && *(v30 + 2) && *(v30 + 3))
          {
            *(v30 + 8) = 0;
            *(v30 + 36) = nsamplesCopy;
            return ApplePhotonDetectorServicesGetLuxAsync();
          }

          if (selfCopy->_logHandle)
          {
            logHandle = selfCopy->_logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              inited = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              inited = init_default_corebrightness_log();
            }

            logHandle = inited;
          }

          v26 = logHandle;
          v25 = 16;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
          {
            v6 = v26;
            v7 = v25;
            __os_log_helper_16_0_0(v24);
            _os_log_error_impl(&dword_1DE8E5000, v6, v7, "Failed to allocate memory for luxInfo member", v24, 2u);
          }

          v40 = -536870211;
          free(*v30);
          free(*(v30 + 1));
          free(*(v30 + 2));
          free(*(v30 + 3));
          free(v30);
        }

        else
        {
          if (selfCopy->_logHandle)
          {
            v13 = selfCopy->_logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v12 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v12 = init_default_corebrightness_log();
            }

            v13 = v12;
          }

          v29 = v13;
          v28 = 16;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v10 = v29;
            v11 = v28;
            __os_log_helper_16_0_0(v27);
            _os_log_error_impl(&dword_1DE8E5000, v10, v11, "Failed to allocate memory for luxInfo", v27, 2u);
          }

          v40 = -536870211;
        }

        _Block_release(*v36);
      }

      else
      {
        if (selfCopy->_logHandle)
        {
          v15 = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v14 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v14 = init_default_corebrightness_log();
          }

          v15 = v14;
        }

        v32 = v15;
        v31 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_1_8_0(v47, callbackCopy);
          _os_log_error_impl(&dword_1DE8E5000, v32, v31, "Failed to copy block from %p", v47, 0xCu);
        }

        v40 = -536870211;
      }

      free(v36);
      return v40;
    }

    if (selfCopy->_logHandle)
    {
      v19 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v18 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v18 = init_default_corebrightness_log();
      }

      v19 = v18;
    }

    v35 = v19;
    v34 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v16 = v35;
      v17 = v34;
      __os_log_helper_16_0_0(v33);
      _os_log_error_impl(&dword_1DE8E5000, v16, v17, "Failed to allocate memory for APDSCallbackWrapper", v33, 2u);
    }

    return -536870211;
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      v23 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v22 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v22 = init_default_corebrightness_log();
      }

      v23 = v22;
    }

    v39 = v23;
    v38 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      log = v39;
      type = v38;
      __os_log_helper_16_0_0(v37);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Callback is NULL", v37, 2u);
    }

    return -536870911;
  }
}

@end