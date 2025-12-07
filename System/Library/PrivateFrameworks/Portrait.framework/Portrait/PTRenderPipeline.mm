@interface PTRenderPipeline
+ (BOOL)isMetalDeviceSupported:(id)supported;
+ (int)prewarmForCameraCaptured;
+ (int)prewarmWithDescriptor:(id)descriptor;
+ (void)prewarmForCameraCaptured;
- (PTRenderPipeline)initWithDescriptor:(id)descriptor;
- (id)createRenderStateWithQuality:(int)quality;
- (int)encodeRenderTo:(id)to withRenderRequest:(id)request;
- (unint64_t)minimumResourceHeapSize;
- (void)minimumResourceHeapSize;
- (void)prewarm;
- (void)setResourceHeap:(id)heap;
@end

@implementation PTRenderPipeline

- (PTRenderPipeline)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v43.receiver = self;
  v43.super_class = PTRenderPipeline;
  v5 = [(PTRenderPipeline *)&v43 init];
  if (v5 && (objc_msgSend_device(descriptorCopy), v6 = objc_claimAutoreleasedReturnValue(), v7 = [PTRenderPipeline isMetalDeviceSupported:v6], v6, v7))
  {
    PTKTraceInit(v8, v9);
    v10 = kdebug_trace();
    v11 = _PTLogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PTRenderPipeline initWithDescriptor:v11];
    }

    if (!descriptorCopy)
    {
      v13 = _PTLogSystem(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PTRenderPipeline initWithDescriptor:];
      }
    }

    v14 = [descriptorCopy copy];
    descriptor = v5->_descriptor;
    v5->_descriptor = v14;

    v5->_activeVersion = [descriptorCopy version];
    options = [descriptorCopy options];
    v17 = [options objectForKeyedSubscript:&unk_2837F3778];
    metalContext = v5->_metalContext;
    v5->_metalContext = v17;

    if (!v5->_metalContext)
    {
      v19 = [PTMetalContext alloc];
      v20 = objc_msgSend_device(descriptorCopy);
      v21 = [(PTMetalContext *)v19 initWithDevice:v20 bundleClass:objc_opt_class()];
      v22 = v5->_metalContext;
      v5->_metalContext = v21;

      [(PTMetalContext *)v5->_metalContext setAllowCommandbufferAllocation:0];
    }

    v23 = MEMORY[0x277CCACA8];
    objc_msgSend_disparitySize(descriptorCopy);
    v25 = v24;
    objc_msgSend_disparitySize(descriptorCopy);
    v27 = v26;
    objc_msgSend_disparitySize(descriptorCopy);
    v29 = v28;
    objc_msgSend_disparitySize(descriptorCopy);
    v31 = v30;
    [descriptorCopy colorInputSize];
    v33 = v32;
    [descriptorCopy colorInputSize];
    v35 = v34;
    [descriptorCopy colorOutputSize];
    v37 = v36;
    [descriptorCopy colorOutputSize];
    v39 = [v23 stringWithFormat:@"i-disp: %lux%lu u-disp: %lux%lu colorInput: %lux%lu colorOutput: %lux%lu", v25, v27, v29, v31, v33, v35, v37, v38];
    description = v5->_description;
    v5->_description = v39;

    kdebug_trace();
    v41 = v5;
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

+ (BOOL)isMetalDeviceSupported:(id)supported
{
  supportsNonUniformThreadgroupSize = [supported supportsNonUniformThreadgroupSize];
  v4 = supportsNonUniformThreadgroupSize;
  if ((supportsNonUniformThreadgroupSize & 1) == 0)
  {
    v5 = _PTLogSystem(supportsNonUniformThreadgroupSize);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      +[PTRenderPipeline isMetalDeviceSupported:];
    }
  }

  return v4;
}

+ (int)prewarmWithDescriptor:(id)descriptor
{
  v19 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  kdebug_trace();
  v4 = [[PTRenderPipeline alloc] initWithDescriptor:descriptorCopy];
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [&unk_2837F39B8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(&unk_2837F39B8);
          }

          v9 = -[PTRenderPipeline createRenderStateWithQuality:](v4, "createRenderStateWithQuality:", [*(*(&v14 + 1) + 8 * i) intValue]);
          v10 = [v9 prepareForRendering:1];
          if ((v10 & 1) == 0)
          {
            v12 = _PTLogSystem(v10);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              +[PTRenderPipeline prewarmWithDescriptor:];
            }

            goto LABEL_14;
          }
        }

        v6 = [&unk_2837F39B8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    kdebug_trace();
    v11 = 0;
  }

  else
  {
LABEL_14:
    v11 = -1;
  }

  return v11;
}

+ (int)prewarmForCameraCaptured
{
  v34[4] = *MEMORY[0x277D85DE8];
  v2 = CACurrentMediaTime();
  kdebug_trace();
  v3 = MTLCreateSystemDefaultDevice();
  v4 = [[PTRenderPipelineDescriptor alloc] initWithDevice:v3 version:1 colorSize:2112.0 disparitySize:1188.0, 320.0, 180.0];
  v34[0] = v4;
  v5 = [[PTRenderPipelineDescriptor alloc] initWithDevice:v3 version:2 colorSize:2112.0 disparitySize:1188.0, 512.0, 288.0];
  v34[1] = v5;
  v6 = [[PTRenderPipelineDescriptor alloc] initWithDevice:v3 version:3 colorSize:2112.0 disparitySize:1188.0, 512.0, 288.0];
  v34[2] = v6;
  v26 = v3;
  v7 = [[PTRenderPipelineDescriptor alloc] initWithDevice:v3 version:+[PTRenderPipeline colorSize:"latestVersion"]disparitySize:2112.0, 1188.0, 512.0, 288.0];
  v34[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [PTRenderPipeline prewarmWithDescriptor:v15];
        if (v17)
        {
          v18 = v17;
          v19 = _PTLogSystem(v17);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v32 = v18;
            _os_log_error_impl(&dword_2243FB000, v19, OS_LOG_TYPE_ERROR, "Failed to prewarm PTRenderPipeline (%d)", buf, 8u);
          }

          v12 = v18;
        }

        objc_autoreleasePoolPop(v16);
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v20 = CACurrentMediaTime() - v2;
  v21 = kdebug_trace();
  v22 = _PTLogSystem(v21);
  v23 = v22;
  if (v20 <= 1.0)
  {
    v24 = v26;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      +[(PTRenderPipeline *)v23];
    }
  }

  else
  {
    v24 = v26;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[PTRenderPipeline prewarmForCameraCaptured];
    }
  }

  return v12;
}

- (void)prewarm
{
  v3 = [PTRenderPipelineDescriptor alloc];
  v4 = objc_msgSend_device(self->_metalContext);
  v5 = +[PTRenderPipeline latestVersion];
  [(PTRenderPipelineDescriptor *)self->_descriptor colorInputSize];
  v7 = v6;
  v9 = v8;
  objc_msgSend_disparitySize(self->_descriptor);
  v12 = [(PTRenderPipelineDescriptor *)v3 initWithDevice:v4 version:v5 colorSize:v7 disparitySize:v9, v10, v11];

  [PTRenderPipeline prewarmWithDescriptor:v12];
}

- (id)createRenderStateWithQuality:(int)quality
{
  v3 = [[PTRenderPipelineState alloc] initWithPipelineDescriptor:self->_descriptor metalContext:self->_metalContext quality:*&quality];

  return v3;
}

- (int)encodeRenderTo:(id)to withRenderRequest:(id)request
{
  requestCopy = request;
  toCopy = to;
  renderState = [requestCopy renderState];
  v8 = [renderState encodeRenderTo:toCopy withRenderRequest:requestCopy];

  return v8;
}

- (unint64_t)minimumResourceHeapSize
{
  v2 = _PTLogSystem(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [PTRenderPipeline minimumResourceHeapSize];
  }

  return 0;
}

- (void)setResourceHeap:(id)heap
{
  v3 = _PTLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [PTRenderPipeline setResourceHeap:];
  }
}

- (void)initWithDescriptor:(os_log_t)log .cold.1(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 20250708;
  _os_log_debug_impl(&dword_2243FB000, log, OS_LOG_TYPE_DEBUG, "PortraitRuntimeAPIVersion %i", v1, 8u);
}

+ (void)prewarmWithDescriptor:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)prewarmForCameraCaptured
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_2243FB000, log, OS_LOG_TYPE_DEBUG, "Prewarm PTRenderPipeline took %f seconds", &v2, 0xCu);
}

- (void)minimumResourceHeapSize
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setResourceHeap:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end