@interface CIImageProcessorOutput
- (CGColorSpace)workingColorSpace;
- (CIImageProcessorOutput)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds onlyMetal:(BOOL)metal context:(void *)context tileTask:(void *)self0;
- (MTLCommandBuffer)metalCommandBuffer;
- (MTLTexture)metalTexture;
- (__IOSurface)surface;
- (id)metalContext;
- (unsigned)contextID;
- (void)baseAddress;
- (void)dealloc;
- (void)metalCommandBuffer;
- (void)metalTexture;
- (void)setError:(id)error;
- (void)surface;
@end

@implementation CIImageProcessorOutput

- (CIImageProcessorOutput)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds onlyMetal:(BOOL)metal context:(void *)context tileTask:(void *)self0
{
  if (surface | texture)
  {
    v22.receiver = self;
    v22.super_class = CIImageProcessorOutput;
    v19 = [CIImageProcessorInOut initWithSurface:sel_initWithSurface_texture_digest_allowSRGB_bounds_onlyMetal_context_ texture:bounds.origin.x digest:bounds.origin.y allowSRGB:bounds.size.width bounds:bounds.size.height onlyMetal:? context:?];
    if (v19)
    {
      taskCopy = task;
      if (task)
      {
        taskCopy = CI::Object::ref(task);
      }

      v19->_task = taskCopy;
    }
  }

  else
  {
    v11 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CIImageProcessorOutput initWithSurface:v11 texture:v12 digest:v13 allowSRGB:v14 bounds:v15 onlyMetal:v16 context:v17 tileTask:v18];
    }

    return 0;
  }

  return v19;
}

- (void)dealloc
{
  self->_cmdBuffer = 0;
  if (self->super._surfaceLocked)
  {
    surface = self->super._surface;
    if (surface)
    {
      IOSurfaceUnlock(surface, 0, 0);
      self->super._surfaceLocked = 0;
    }
  }

  task = self->_task;
  if (task)
  {
    CI::Object::unref(task);
  }

  self->_task = 0;
  v5.receiver = self;
  v5.super_class = CIImageProcessorOutput;
  [(CIImageProcessorInOut *)&v5 dealloc];
}

- (__IOSurface)surface
{
  if (!self->super._onlyMetal)
  {
    return self->super._surface;
  }

  v2 = ci_logger_api(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(CIImageProcessorOutput *)v2 surface:v3];
  }

  return 0;
}

- (void)baseAddress
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImageProcessorOutput baseAddress]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, self, a3, "%{public}s a biplanar CIProcessorOutput cannot be accessed via its base address.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (MTLTexture)metalTexture
{
  PlaneCount = IOSurfaceGetPlaneCount(self->super._surface);
  if (PlaneCount < 2)
  {
    CIMetalFormatForFormat([(CIImageProcessorInOut *)self format], 0);
    [(CIImageProcessorInOut *)self device];
    InfoForDevice = MTLPixelFormatGetInfoForDevice();
    v15 = ci_logger_api(InfoForDevice, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CIImageProcessorOutput metalTexture];
    }
  }

  else
  {
    v5 = ci_logger_api(PlaneCount, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorOutput *)v5 metalTexture:v6];
    }
  }

  return 0;
}

- (MTLCommandBuffer)metalCommandBuffer
{
  if (self->_cmdBuffer)
  {
    return self->_cmdBuffer;
  }

  v3 = (*(*self->super._context + 16))(self->super._context, a2);
  context = self->super._context;
  if (v3 == 85)
  {
    cmdBuffer = context[231];
LABEL_8:
    self->_cmdBuffer = cmdBuffer;
    goto LABEL_9;
  }

  v6 = (*(*context + 16))(context);
  device = [(CIImageProcessorInOut *)self device];
  if (v6 != 84)
  {
    {
      v20 = device;
      {
        singletonMTLCommandQueue(objc_object  {objcproto9MTLDevice}*)::commandQueue = CIMetalCommandQueueCreate("com.apple.CoreImage", v20);
      }
    }

    cmdBuffer = CIMetalCommandBufferCreate("com.apple.CoreImage", singletonMTLCommandQueue(objc_object  {objcproto9MTLDevice}*)::commandQueue, 0, 0);
    goto LABEL_8;
  }

  v8 = CIMetalCommandQueueCreate("com.apple.CoreImage", device);
  self->_cmdBuffer = CIMetalCommandBufferCreate("com.apple.CoreImage", v8, 0, 0);
  CFRelease(v8);
  cmdBuffer = self->_cmdBuffer;
LABEL_9:
  retainedReferences = [(MTLCommandBuffer *)cmdBuffer retainedReferences];
  if ((retainedReferences & 1) == 0)
  {
    v11 = ci_logger_api(retainedReferences, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorOutput *)v11 metalCommandBuffer:v12];
    }
  }

  return self->_cmdBuffer;
}

- (CGColorSpace)workingColorSpace
{
  context = self->super._context;
  if (context)
  {
    return *(context + 3);
  }

  else
  {
    return 0;
  }
}

- (unsigned)contextID
{
  context = self->super._context;
  if (context)
  {
    LODWORD(context) = (*(*context + 280))();
  }

  return context;
}

- (id)metalContext
{
  context = self->super._context;
  if (!context)
  {
    return 0;
  }

  metalContext = self->super._metalContext;
  if (!metalContext)
  {
    if ((*(*context + 16))(context, a2) == 85)
    {
      operator new();
    }

    if ((*(*self->super._context + 16))(self->super._context) == 84)
    {
      operator new();
    }

    if ((*(*self->super._context + 16))(self->super._context) == 82)
    {
      operator new();
    }

    metalContext = 0;
    self->super._metalContext = 0;
  }

  return metalContext;
}

- (void)setError:(id)error
{
  if (error)
  {
    task = self->_task;
    if (task)
    {
      CI::TileTask::setCommandBufferError(task, error);
    }
  }
}

- (void)initWithSurface:(NSObject *)a1 texture:(uint64_t)a2 digest:(uint64_t)a3 allowSRGB:(uint64_t)a4 bounds:(uint64_t)a5 onlyMetal:(uint64_t)a6 context:(uint64_t)a7 tileTask:(uint64_t)a8 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImageProcessorOutput initWithSurface:texture:digest:allowSRGB:bounds:onlyMetal:context:tileTask:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Both surface and texture are nil.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)surface
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImageProcessorOutput surface]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, self, a3, "%{public}s a Metal-only CIProcessorOutput cannot be accessed via an IOSurface.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)metalTexture
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImageProcessorOutput metalTexture]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, self, a3, "%{public}s A biplanar CIProcessorOutput cannot be accessed via a Metal texture.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)metalCommandBuffer
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImageProcessorOutput metalCommandBuffer]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, self, a3, "%{public}s command buffer provided to processor does not hold strong references to resources.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end