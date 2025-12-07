@interface HSISPCapturePlugIn
+ (id)defaultPlugIn;
- (HSISPCapturePlugIn)init;
- (id)device:(id *)device;
- (void)init;
@end

@implementation HSISPCapturePlugIn

+ (id)defaultPlugIn
{
  v2 = objc_opt_new();

  return v2;
}

- (HSISPCapturePlugIn)init
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/arm-io");
  if (!v3)
  {
    CFProperty = HSLogHandle(v3);
    if (os_log_type_enabled(CFProperty, OS_LOG_TYPE_ERROR))
    {
      [(HSISPCapturePlugIn *)CFProperty init];
    }

    goto LABEL_12;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(v3, @"soc-generation", *MEMORY[0x277CBECE8], 0);
  v6 = IOObjectRelease(v4);
  if (!CFProperty)
  {
    v13 = HSLogHandle(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(HSISPCapturePlugIn *)v13 init];
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:CFProperty encoding:4];
  if (socVersionFromSOCGen_onceToken != -1)
  {
    [HSISPCapturePlugIn init];
  }

  v8 = [socVersionFromSOCGen_regex firstMatchInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
  if ([v8 numberOfRanges] == 2)
  {
    v9 = [v8 rangeAtIndex:1];
    v11 = [v7 substringWithRange:{v9, v10}];
    integerValue = [v11 integerValue];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(HSISPCapturePlugIn *)v7 init];
    }

    integerValue = 0;
  }

  if (integerValue < 1)
  {
    v14 = 0;
    goto LABEL_14;
  }

  selfCopy = self;
  while (1)
  {
    CFProperty = [MEMORY[0x277CCACA8] stringWithFormat:@"H%ld", integerValue];
    cFProperty = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ISPCaptureDeviceCreate", CFProperty];
    cFProperty2 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/MediaCapture/%@ISP.mediacapture", CFProperty];
    v18 = cFProperty;
    v19 = cFProperty2;
    v20 = HSLogHandle(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v38 = v19;
      _os_log_debug_impl(&dword_2510E6000, v20, OS_LOG_TYPE_DEBUG, "Will attempt to create plugin at path %@.", buf, 0xCu);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v22 = [defaultManager fileExistsAtPath:v19];

    if ((v22 & 1) == 0)
    {
      v24 = HSLogHandle(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = v19;
        _os_log_debug_impl(&dword_2510E6000, v24, OS_LOG_TYPE_DEBUG, "No mediacapture plugin found at path %@. (May still exist in shared cache.)", buf, 0xCu);
      }
    }

    v25 = dlopen([v19 cStringUsingEncoding:4], 4);
    if (v25)
    {
      break;
    }

    v29 = HSLogHandle(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v34 = dlerror();
      *buf = 138412546;
      v38 = v19;
      v39 = 2080;
      v40 = v34;
      v31 = v29;
      v32 = "Failed to dlopen the plugin %@. (dlerror: %s)";
      goto LABEL_35;
    }

LABEL_31:

    if (integerValue-- < 2)
    {
      v14 = 0;
      self = selfCopy;
      goto LABEL_14;
    }
  }

  v26 = v25;
  uTF8String = [v18 UTF8String];
  v28 = dlsym(v26, uTF8String);
  if (!v28)
  {
    v29 = HSLogHandle(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = dlerror();
      *buf = 136315394;
      v38 = uTF8String;
      v39 = 2080;
      v40 = v30;
      v31 = v29;
      v32 = "Failed to find symbol %s in dylib. (dlerror: %s)";
LABEL_35:
      _os_log_error_impl(&dword_2510E6000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x16u);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v35 = v28;

  self = selfCopy;
  selfCopy->_createFunction = v35;
  v14 = selfCopy;

LABEL_13:
LABEL_14:

  return v14;
}

- (id)device:(id *)device
{
  v27[1] = *MEMORY[0x277D85DE8];
  cf = 0;
  v4 = (self->_createFunction)(*MEMORY[0x277CBECE8], 0, &cf);
  if (v4)
  {
    v5 = v4;
    v6 = __HSDescribeFigDeviceStatus(v4);
    if (v6)
    {
      if (device)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create FigCaptureDeviceRef! %@!", v6];
        v8 = MEMORY[0x277CCA9B8];
        v9 = *MEMORY[0x277CCA590];
        v10 = v5;
        v26 = *MEMORY[0x277CCA450];
        v27[0] = v7;
        v11 = MEMORY[0x277CBEAC0];
        v12 = v27;
        v13 = &v26;
LABEL_12:
        v19 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
        v20 = [v8 errorWithDomain:v9 code:v10 userInfo:v19];

        v21 = v20;
        *device = v20;
      }
    }

    else if (device)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create FigCaptureDeviceRef!"];
      v7 = v17;
      v8 = MEMORY[0x277CCA9B8];
      v18 = MEMORY[0x277CCA4A8];
      if (v5 >> 26 != 56)
      {
        v18 = MEMORY[0x277CCA590];
      }

      v9 = *v18;
      v10 = v5;
      v24 = *MEMORY[0x277CCA450];
      v25 = v17;
      v11 = MEMORY[0x277CBEAC0];
      v12 = &v25;
      v13 = &v24;
      goto LABEL_12;
    }

    v16 = 0;
    goto LABEL_14;
  }

  if (!cf)
  {
    [HSISPCapturePlugIn device:];
  }

  TypeID = FigCaptureDeviceGetTypeID();
  if (TypeID != CFGetTypeID(cf))
  {
    [HSISPCapturePlugIn device:];
  }

  v15 = [HSFigCaptureDevice alloc];
  v16 = [(HSFigCaptureDevice *)v15 initWithCaptureDevice:cf];
LABEL_14:

  return v16;
}

- (void)init
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2510E6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Expected to find 2 matched regex groups {H\\d+, \\d+} in %@.", &v1, 0xCu);
}

@end