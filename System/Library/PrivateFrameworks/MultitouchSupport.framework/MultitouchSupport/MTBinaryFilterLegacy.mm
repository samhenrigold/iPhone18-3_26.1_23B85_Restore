@interface MTBinaryFilterLegacy
- (id)initFromURL:(id)l device:(__MTDevice *)device;
- (id)mtDevice;
- (void)dealloc;
- (void)filterFrame:(char *)frame size:(unsigned int *)size maxSize:(unsigned int *)maxSize extraFrame:(id)extraFrame;
- (void)reset;
@end

@implementation MTBinaryFilterLegacy

- (id)initFromURL:(id)l device:(__MTDevice *)device
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v26.receiver = self;
  v26.super_class = MTBinaryFilterLegacy;
  v11 = [(MTBinaryFilterLegacy *)&v26 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_18;
  }

  objc_storeStrong(&v11->_bundleURL, l);
  v13 = CFBundleCreate(*MEMORY[0x277CBECE8], lCopy);
  cfBundle = v12->_cfBundle;
  v12->_cfBundle = v13;

  if (!v12->_cfBundle)
  {
    if (!device)
    {
      [MTBinaryFilterLegacy initFromURL:lCopy device:v16];
      goto LABEL_19;
    }

    if (device->var37)
    {
      mt_CachePropertiesForDevice(device);
    }

    v19 = MTLoggingFramework(v15, v16);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    var13 = device->var13;
    *buf = 138543618;
    v28 = lCopy;
    v29 = 2048;
    v30 = var13;
    v21 = "Could not create bundle %{public}@ (deviceID 0x%llX)";
    v22 = v19;
    v23 = 22;
    goto LABEL_16;
  }

  objc_storeWeak(&v12->_mtDevice, device);
  FunctionPointerForName = CFBundleGetFunctionPointerForName(v12->_cfBundle, @"MTCreateBinaryFilter");
  v12->_createBinaryFilter = FunctionPointerForName;
  if (!FunctionPointerForName)
  {
    if (!device)
    {
      [MTBinaryFilterLegacy initFromURL:lCopy device:v18];
      goto LABEL_19;
    }

    if (device->var37)
    {
      mt_CachePropertiesForDevice(device);
    }

    v19 = MTLoggingFramework(FunctionPointerForName, v18);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v24 = device->var13;
    *buf = 136446722;
    v28 = "MTCreateBinaryFilter";
    v29 = 2114;
    v30 = lCopy;
    v31 = 2048;
    v32 = v24;
    v21 = "Did not find function pointer %{public}s in bundle %{public}@ (deviceID 0x%llX)";
    v22 = v19;
    v23 = 32;
LABEL_16:
    _os_log_impl(&dword_25AD59000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
LABEL_17:

    goto LABEL_18;
  }

  [(MTBinaryFilterLegacy *)v12 reset];
  if (!v12->_legacyFilter)
  {
LABEL_18:
    device = 0;
    goto LABEL_19;
  }

  device = v12;
LABEL_19:

  return device;
}

- (void)filterFrame:(char *)frame size:(unsigned int *)size maxSize:(unsigned int *)maxSize extraFrame:(id)extraFrame
{
  extraFrame;
  legacyFilter = self->_legacyFilter;
  if (legacyFilter)
  {
    v11 = *frame;
    (legacyFilter->var1)(legacyFilter, frame, size, *maxSize);
    if (*frame != v11)
    {
      *maxSize = *size;
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)reset
{
  v2 = MTLoggingFramework(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)dealloc
{
  legacyFilter = self->_legacyFilter;
  if (legacyFilter)
  {
    (legacyFilter->var2)(legacyFilter, a2);
  }

  v4.receiver = self;
  v4.super_class = MTBinaryFilterLegacy;
  [(MTBinaryFilterLegacy *)&v4 dealloc];
}

- (id)mtDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_mtDevice);

  return WeakRetained;
}

- (void)initFromURL:(uint64_t)a1 device:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = MTLoggingFramework(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)initFromURL:(uint64_t)a1 device:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = MTLoggingFramework(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

@end