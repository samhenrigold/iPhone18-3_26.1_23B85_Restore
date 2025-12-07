@interface HSFigCaptureStream
+ (id)statusDescription:(int)description;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStream:(id)stream;
- (BOOL)start:(id *)start;
- (BOOL)stop:(id *)stop;
- (HSFigCaptureStream)initWithCaptureStream:(OpaqueFigCaptureStream *)stream fromDevice:(id)device;
- (id)description;
- (id)valueForKey:(id)key;
@end

@implementation HSFigCaptureStream

+ (id)statusDescription:(int)description
{
  v3 = *&description;
  v5 = __HSDescribeFigStreamStatus(description);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___HSFigCaptureStream;
    v7 = objc_msgSendSuper2(&v10, sel_statusDescription_, v3);
  }

  v8 = v7;

  return v8;
}

- (HSFigCaptureStream)initWithCaptureStream:(OpaqueFigCaptureStream *)stream fromDevice:(id)device
{
  deviceCopy = device;
  FigBaseObject = FigCaptureStreamGetFigBaseObject();
  v11.receiver = self;
  v11.super_class = HSFigCaptureStream;
  v8 = [(HSCMBaseObject *)&v11 initWithBaseObject:FigBaseObject];
  v8->_underlyingStream = stream;
  device = v8->_device;
  v8->_device = deviceCopy;

  return v8;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HSFigCaptureStream *)self isEqualToStream:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToStream:(id)stream
{
  streamCopy = stream;
  underlyingStream = [stream underlyingStream];
  return underlyingStream == [(HSFigCaptureStream *)self underlyingStream];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HSFigCaptureStream;
  v4 = [(HSFigCaptureStream *)&v10 description];
  underlyingStream = self->_underlyingStream;
  device = [(HSFigCaptureStream *)self device];
  v7 = [device description];
  v8 = [v3 stringWithFormat:@"%@ [streamRef: %p, device: %@]", v4, underlyingStream, v7];

  return v8;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = NSStringFromSelector(sel_underlyingStream);
  v6 = [keyCopy isEqualToString:v5];

  if (v6)
  {
    v7 = self->_underlyingStream;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HSFigCaptureStream;
    v7 = [(HSFigCaptureStream *)&v10 valueForKey:keyCopy];
  }

  v8 = v7;

  return v8;
}

- (BOOL)start:(id *)start
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = HSLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(HSFigCaptureStream *)v5 start:v6, v7, v8, v9, v10, v11, v12];
  }

  underlyingStream = self->_underlyingStream;
  VTable = CMBaseObjectGetVTable();
  v16 = *(VTable + 16);
  v15 = VTable + 16;
  v17 = *(v16 + 8);
  if (v17)
  {
    v15 = v17(underlyingStream);
    v18 = v15;
    if (!v15)
    {
      return 1;
    }
  }

  else
  {
    v18 = 4294954514;
  }

  v20 = HSLogHandle(v15);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [(HSFigCaptureStream *)self start:v18];
  }

  if (start)
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [objc_opt_class() statusDescription:v18];
    v25 = [v21 stringWithFormat:@"%@ failed to start stream! %@", v23, v24];

    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA590];
    v31 = *MEMORY[0x277CCA450];
    v32[0] = v25;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v29 = [v26 errorWithDomain:v27 code:v18 userInfo:v28];

    v30 = v29;
    *start = v29;
  }

  return 0;
}

- (BOOL)stop:(id *)stop
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = HSLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(HSFigCaptureStream *)v5 stop:v6, v7, v8, v9, v10, v11, v12];
  }

  underlyingStream = self->_underlyingStream;
  VTable = CMBaseObjectGetVTable();
  v16 = *(VTable + 16);
  v15 = VTable + 16;
  v17 = *(v16 + 16);
  if (v17)
  {
    v15 = v17(underlyingStream);
    v18 = v15;
    if (!v15)
    {
      return 1;
    }
  }

  else
  {
    v18 = 4294954514;
  }

  v20 = HSLogHandle(v15);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [(HSFigCaptureStream *)self stop:v18];
  }

  if (stop)
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [objc_opt_class() statusDescription:v18];
    v25 = [v21 stringWithFormat:@"%@ failed to stop stream! %@", v23, v24];

    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA590];
    v31 = *MEMORY[0x277CCA450];
    v32[0] = v25;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v29 = [v26 errorWithDomain:v27 code:v18 userInfo:v28];

    v30 = v29;
    *stop = v29;
  }

  return 0;
}

- (void)start:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HSFigCaptureStream start:]";
  OUTLINED_FUNCTION_0_0(&dword_2510E6000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)start:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [objc_opt_class() statusDescription:a2];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)stop:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HSFigCaptureStream stop:]";
  OUTLINED_FUNCTION_0_0(&dword_2510E6000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)stop:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [objc_opt_class() statusDescription:a2];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

@end