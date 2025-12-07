void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void __socVersionFromSOCGen_block_invoke()
{
  v3 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"H(\\d+)" options:0 error:&v3];
  v1 = v3;
  v2 = socVersionFromSOCGen_regex;
  socVersionFromSOCGen_regex = v0;
}

id HSLogHandle(uint64_t a1)
{
  if (HSLogHandle_onceToken != -1)
  {
    HSLogHandle_cold_1();
  }

  v2 = HSLogHandle__handle;

  return v2;
}

uint64_t __HSLogHandle_block_invoke()
{
  HSLogHandle__handle = os_log_create("com.apple.osdiags", "hardware-support");

  return MEMORY[0x2821F96F8]();
}

__CFString *__HSDescribeFigStreamStatus(int a1)
{
  if (a1 > -12687)
  {
    v1 = -12686;
    v2 = @"Buffer allocation failed!";
    if (a1 == -12684)
    {
      v4 = @"Not available while streaming!";
    }

    else
    {
      v4 = 0;
    }

    if (a1 == -12685)
    {
      v3 = @"Unknown stream error!";
    }

    else
    {
      v3 = v4;
    }
  }

  else
  {
    if (a1 == -12689)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = NSStringFromSelector(sel_requestControlOfStreams_error_);
      v5 = [v7 stringWithFormat:@"Stream not controlled! Please ensure to request with %@.", v8];

      goto LABEL_15;
    }

    v1 = -12688;
    v2 = @"Stream is busy!";
    v3 = @"Data was dropped!";
    if (a1 != -12687)
    {
      v3 = 0;
    }
  }

  if (a1 == v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

LABEL_15:

  return v5;
}

id _unwrapFigCaptureValue(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 underlyingStream];
LABEL_5:
    v3 = v2;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 underlyingSyncStreamsGroup];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v1;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = _unwrapFigCaptureValue(*(*(&v29 + 1) + 8 * i));
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    v13 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
LABEL_18:
    v3 = v13;

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v1 allObjects];
    v3 = _unwrapFigCaptureValue(v14);
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16 = v1;
    v3 = v16;
    if (isKindOfClass)
    {
      v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v7 = v3;
      v17 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v26;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v7);
            }

            v21 = *(*(&v25 + 1) + 8 * j);
            v22 = [v7 objectForKeyedSubscript:{v21, v25}];
            v23 = _unwrapFigCaptureValue(v22);
            v24 = _unwrapFigCaptureValue(v21);
            [v6 setObject:v23 forKey:v24];
          }

          v18 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v18);
      }

      v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v6];
      goto LABEL_18;
    }
  }

LABEL_6:

  return v3;
}

id _wrapFigCaptureValue(void *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v5 = CFGetTypeID(v3);
  if (v5 == FigCaptureStreamGetTypeID())
  {
    v6 = [[HSFigCaptureStream alloc] initWithCaptureStream:v3 fromDevice:v4];
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  v8 = CFGetTypeID(v3);
  if (v8 == FigCaptureSynchronizedStreamsGroupGetTypeID())
  {
    v6 = [[HSFigCaptureSyncStreamsGroup alloc] initWithCaptureSyncStreamsGroup:v3 fromDevice:v4];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v3;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = _wrapFigCaptureValue(*(*(&v34 + 1) + 8 * i), v4);
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v14);
    }

    v18 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
LABEL_20:
    v7 = v18;

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v3 allObjects];
    v7 = _wrapFigCaptureValue(v19, v4);
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v21 = v3;
    v7 = v21;
    if (isKindOfClass)
    {
      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v21, "count")}];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = v7;
      v22 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v31;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v31 != v24)
            {
              objc_enumerationMutation(v12);
            }

            v26 = *(*(&v30 + 1) + 8 * j);
            v27 = [v12 objectForKeyedSubscript:{v26, v30}];
            v28 = _wrapFigCaptureValue(v27, v4);
            v29 = _wrapFigCaptureValue(v26, v4);
            [v11 setObject:v28 forKey:v29];
          }

          v23 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v23);
      }

      v18 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v11];
      goto LABEL_20;
    }
  }

LABEL_8:

  return v7;
}

__CFString *__HSDescribeFigDeviceStatus(int a1)
{
  if ((a1 + 12683) > 3)
  {
    return 0;
  }

  else
  {
    return off_2796AB608[a1 + 12683];
  }
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void HSRequestConcreteImplementation(void *a1, const char *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  Name = sel_getName(a2);
  v7 = objc_opt_class();
  v8 = class_getName(v7);
  [v4 raise:v5 format:{@"-%s is abstract. Define -[%s %s]!", Name, v8, sel_getName(a2)}];
  abort();
}

void __deviceRemovedCallback(void *a1, int a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (a2)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device removal failed!"];
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CCA4A8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v4;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v5 errorWithDomain:v6 code:a2 userInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 deviceRemovedCallback];

  if (v9)
  {
    v10 = [v3 deviceRemovedCallback];
    (v10)[2](v10, v8);
  }
}

void __deviceInputReportCallback(void *a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v11 = a1;
  if (a2)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Input report callback failed!"];
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA4A8];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v16 = [v13 errorWithDomain:v14 code:a2 userInfo:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v11 inputReportCallback];

  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:a6 length:a7];
    v19 = [v11 inputReportCallback];
    (v19)[2](v19, a5, v18, v16);
  }
}

void __managerDeviceMatchingCallback(void *a1, int a2, uint64_t a3, const void *a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a1;
  if (a2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device failed to enumerate!"];
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA4A8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [v8 errorWithDomain:v9 code:a2 userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  CFRetain(a4);
  v12 = [[HSHIDDevice alloc] initWithDeviceRef:a4];
  v13 = [v6 deviceEnumeratedCallback];

  if (v13)
  {
    v14 = [v6 deviceEnumeratedCallback];
    (v14)[2](v14, v12, v11);
  }
}

void __managerDeviceRemovalCallback(void *a1, int a2, uint64_t a3, const void *a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a1;
  if (a2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device removal failed!"];
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA4A8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [v8 errorWithDomain:v9 code:a2 userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  CFRetain(a4);
  v12 = [[HSHIDDevice alloc] initWithDeviceRef:a4];
  v13 = [v6 deviceRemovedCallback];

  if (v13)
  {
    v14 = [v6 deviceRemovedCallback];
    (v14)[2](v14, v12, v11);
  }
}