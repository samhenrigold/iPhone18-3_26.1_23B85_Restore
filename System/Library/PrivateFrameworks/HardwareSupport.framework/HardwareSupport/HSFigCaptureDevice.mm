@interface HSFigCaptureDevice
+ (id)statusDescription:(int)description;
- (BOOL)invalidate:(id *)invalidate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDevice:(id)device;
- (BOOL)relinquishControlOfStreams:(id)streams error:(id *)error;
- (BOOL)requestControlOfStreams:(id)streams error:(id *)error;
- (BOOL)setValue:(id)value forProperty:(__CFString *)property error:(id *)error;
- (HSFigCaptureDevice)initWithCaptureDevice:(OpaqueFigCaptureDevice *)device;
- (id)description;
- (id)valueForKey:(id)key;
- (id)valueForProperty:(__CFString *)property error:(id *)error;
- (void)dealloc;
@end

@implementation HSFigCaptureDevice

+ (id)statusDescription:(int)description
{
  if ((description + 12683) > 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___HSFigCaptureDevice;
    v5 = objc_msgSendSuper2(&v7, sel_statusDescription_);
  }

  else
  {
    v5 = off_2796AB608[description + 12683];
  }

  return v5;
}

- (HSFigCaptureDevice)initWithCaptureDevice:(OpaqueFigCaptureDevice *)device
{
  FigBaseObject = FigCaptureDeviceGetFigBaseObject();
  v7.receiver = self;
  v7.super_class = HSFigCaptureDevice;
  result = [(HSCMBaseObject *)&v7 initWithBaseObject:FigBaseObject];
  result->_underlyingDevice = device;
  return result;
}

- (void)dealloc
{
  underlyingDevice = self->_underlyingDevice;
  if (underlyingDevice)
  {
    CFRelease(underlyingDevice);
  }

  v4.receiver = self;
  v4.super_class = HSFigCaptureDevice;
  [(HSFigCaptureDevice *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HSFigCaptureDevice *)self isEqualToDevice:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToDevice:(id)device
{
  deviceCopy = device;
  underlyingDevice = [device underlyingDevice];
  return underlyingDevice == [(HSFigCaptureDevice *)self underlyingDevice];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = HSFigCaptureDevice;
  v4 = [(HSFigCaptureDevice *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ [deviceRef: %p]", v4, self->_underlyingDevice];

  return v5;
}

- (BOOL)invalidate:(id *)invalidate
{
  v22[1] = *MEMORY[0x277D85DE8];
  FigBaseObject = FigCaptureDeviceGetFigBaseObject();
  if (FigBaseObject)
  {
    v6 = FigBaseObject;
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 8);
    FigBaseObject = VTable + 8;
    v9 = *(v8 + 24);
    if (v9)
    {
      FigBaseObject = v9(v6);
      v10 = FigBaseObject;
      if (!FigBaseObject)
      {
        return 1;
      }
    }

    else
    {
      v10 = 4294954514;
    }
  }

  else
  {
    v10 = 4294954516;
  }

  v12 = HSLogHandle(FigBaseObject);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(HSFigCaptureDevice *)self invalidate:v10];
  }

  if (invalidate)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [objc_opt_class() statusDescription:v10];
    v15 = [v13 stringWithFormat:@"Failed to invalidate device! %@", v14];

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA590];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = v15;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19 = [v16 errorWithDomain:v17 code:v10 userInfo:v18];

    v20 = v19;
    *invalidate = v19;
  }

  return 0;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = NSStringFromSelector(sel_underlyingDevice);
  v6 = [keyCopy isEqualToString:v5];

  if (v6)
  {
    v7 = self->_underlyingDevice;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HSFigCaptureDevice;
    v7 = [(HSFigCaptureDevice *)&v10 valueForKey:keyCopy];
  }

  v8 = v7;

  return v8;
}

- (BOOL)setValue:(id)value forProperty:(__CFString *)property error:(id *)error
{
  v8 = _unwrapFigCaptureValue(value);
  v10.receiver = self;
  v10.super_class = HSFigCaptureDevice;
  LOBYTE(error) = [(HSCMBaseObject *)&v10 setValue:v8 forProperty:property error:error];

  return error;
}

- (id)valueForProperty:(__CFString *)property error:(id *)error
{
  v8.receiver = self;
  v8.super_class = HSFigCaptureDevice;
  v5 = [(HSCMBaseObject *)&v8 valueForProperty:property error:error];
  v6 = _wrapFigCaptureValue(v5, self);

  return v6;
}

- (BOOL)requestControlOfStreams:(id)streams error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  streamsCopy = streams;
  v6 = HSLogHandle(streamsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(HSFigCaptureDevice *)v6 requestControlOfStreams:v7 error:v8, v9, v10, v11, v12, v13];
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = NSStringFromSelector(sel_underlyingStream);
  v16 = [v14 stringWithFormat:@"self.%@", v15];

  v40 = v16;
  v41 = [streamsCopy valueForKeyPath:v16];
  v17 = 0;
  do
  {
    underlyingDevice = self->_underlyingDevice;
    VTable = CMBaseObjectGetVTable();
    v22 = *(VTable + 16);
    v20 = VTable + 16;
    v21 = v22;
    if (*v22 >= 2uLL && (v23 = v21[2]) != 0)
    {
      v20 = v23(underlyingDevice, v41, 0);
      v24 = v20;
      if (!v20)
      {
        errorCopy = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v24 = 4294954514;
    }

    v25 = HSLogHandle(v20);
    ++v17;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v45 = streamsCopy;
      v46 = 1024;
      *v47 = v17;
      *&v47[4] = 1024;
      *&v47[6] = 6;
      _os_log_impl(&dword_2510E6000, v25, OS_LOG_TYPE_DEFAULT, "Trying to get control of the streams %@. Iteration %d/%d", buf, 0x18u);
    }

    v26 = usleep(0x7A120u);
  }

  while (v17 != 6);
  v27 = HSLogHandle(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v38 = [objc_opt_class() statusDescription:v24];
    *buf = 138413058;
    v45 = streamsCopy;
    v46 = 2112;
    *v47 = self;
    *&v47[8] = 1024;
    v48 = 6;
    v49 = 2112;
    v50 = v38;
    _os_log_error_impl(&dword_2510E6000, v27, OS_LOG_TYPE_ERROR, "Failed to request control of streams %@ from device %@ after %d attempts! %@", buf, 0x26u);
  }

  errorCopy = error;
  if (error)
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = [objc_opt_class() statusDescription:v24];
    v30 = [v28 stringWithFormat:@"Failed to request control of streams %@ from device %@ after %d attempts! %@", streamsCopy, self, 6, v29];

    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA590];
    v42 = *MEMORY[0x277CCA450];
    v43 = v30;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v34 = [v31 errorWithDomain:v32 code:v24 userInfo:v33];

    v35 = v34;
    *error = v34;

    errorCopy = 0;
  }

LABEL_16:

  return errorCopy;
}

- (BOOL)relinquishControlOfStreams:(id)streams error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  streamsCopy = streams;
  v7 = HSLogHandle(streamsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(HSFigCaptureDevice *)v7 relinquishControlOfStreams:v8 error:v9, v10, v11, v12, v13, v14];
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromSelector(sel_underlyingStream);
  v17 = [v15 stringWithFormat:@"self.%@", v16];

  v18 = [streamsCopy valueForKeyPath:v17];
  underlyingDevice = self->_underlyingDevice;
  VTable = CMBaseObjectGetVTable();
  v23 = *(VTable + 16);
  v21 = VTable + 16;
  v22 = v23;
  if (*v23 >= 2uLL && (v24 = v22[3]) != 0)
  {
    v21 = v24(underlyingDevice, v18, 0);
    v25 = v21;
    if (!v21)
    {
      LOBYTE(error) = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v25 = 4294954514;
  }

  v26 = HSLogHandle(v21);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v36 = [objc_opt_class() statusDescription:v25];
    *buf = 138412802;
    v40 = streamsCopy;
    v41 = 2112;
    selfCopy = self;
    v43 = 2112;
    v44 = v36;
    _os_log_error_impl(&dword_2510E6000, v26, OS_LOG_TYPE_ERROR, "Failed to relinquish control of streams %@ from device %@! %@", buf, 0x20u);
  }

  if (error)
  {
    v27 = MEMORY[0x277CCACA8];
    v28 = [objc_opt_class() statusDescription:v25];
    v29 = [v27 stringWithFormat:@"Failed to relinquish control of streams %@ from device %@! %@", streamsCopy, self, v28];

    v30 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA590];
    v37 = *MEMORY[0x277CCA450];
    v38 = v29;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v33 = [v30 errorWithDomain:v31 code:v25 userInfo:v32];

    v34 = v33;
    *error = v33;

    LOBYTE(error) = 0;
  }

LABEL_12:

  return error;
}

- (void)invalidate:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v7 = [objc_opt_class() statusDescription:a2];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)requestControlOfStreams:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HSFigCaptureDevice requestControlOfStreams:error:]";
  OUTLINED_FUNCTION_0_0(&dword_2510E6000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)relinquishControlOfStreams:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HSFigCaptureDevice relinquishControlOfStreams:error:]";
  OUTLINED_FUNCTION_0_0(&dword_2510E6000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end