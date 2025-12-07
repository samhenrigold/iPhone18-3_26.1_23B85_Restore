@interface AVTMetalHelper
+ (id)helperForDevice:(uint64_t)device;
- (id)_initWithDevice:(id)device;
- (id)_locked_computePipelineStateWithFunctionName:(id)name;
- (id)_locked_functionNamed:(id)named;
- (id)_locked_renderPipelineStateWithDescriptor:(id *)descriptor hashNumber:(id)number;
- (id)computePipelineStateWithFunctionName:(id)name;
- (id)device;
- (id)functionNamed:(id)named;
- (id)renderPipelineStateWithDescriptor:(void *)descriptor;
- (os_unfair_lock_s)library;
- (void)_locked_instanciateLibraryIfNeeded;
@end

@implementation AVTMetalHelper

- (id)_initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = AVTMetalHelper;
  v6 = [(AVTMetalHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

+ (id)helperForDevice:(uint64_t)device
{
  v2 = a2;
  objc_opt_self();
  os_unfair_lock_lock(&helperForDevice___lock);
  if (!helperForDevice___helpers)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = helperForDevice___helpers;
    helperForDevice___helpers = v3;
  }

  v5 = MEMORY[0x1E696AD98];
  [v2 registryID];
  v6 = [v5 numberWithUnsignedLongLong:?];
  v7 = [helperForDevice___helpers objectForKeyedSubscript:?];
  if (!v7)
  {
    v7 = [[AVTMetalHelper alloc] _initWithDevice:?];
    [helperForDevice___helpers setObject:? forKeyedSubscript:?];
  }

  os_unfair_lock_unlock(&helperForDevice___lock);

  return v7;
}

- (void)_locked_instanciateLibraryIfNeeded
{
  if (!self->_library)
  {
    v4 = +[AVTResourceLocator sharedResourceLocator];
    v7 = [(AVTResourceLocator *)v4 urlForFrameworkResourceAtPath:0 isDirectory:?];

    v5 = [MTLDevice newLibraryWithURL:"newLibraryWithURL:error:" error:?];
    library = self->_library;
    self->_library = v5;
  }
}

- (id)_locked_functionNamed:(id)named
{
  namedCopy = named;
  functions = self->_functions;
  if (!functions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_functions;
    self->_functions = v6;

    functions = self->_functions;
  }

  v8 = [(NSMutableDictionary *)functions objectForKeyedSubscript:?];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    [(AVTMetalHelper *)self _locked_instanciateLibraryIfNeeded];
    v9 = [(MTLLibrary *)self->_library newFunctionWithName:?];
    v10 = [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    if (!v9)
    {
      v11 = avt_default_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(AVTMetalHelper *)v11 _locked_functionNamed:v12, v13, v14, v15, v16, v17, v18];
      }

      v9 = 0;
    }
  }

  return v9;
}

- (id)renderPipelineStateWithDescriptor:(void *)descriptor
{
  descriptorCopy = descriptor;
  if (descriptor)
  {
    [*(a2 + 72) hash];
    [*(a2 + 80) hash];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    v5 = [*(descriptorCopy + 5) objectForKeyedSubscript:?];
    if (!v5)
    {
      os_unfair_lock_lock(descriptorCopy + 6);
      v5 = [descriptorCopy _locked_renderPipelineStateWithDescriptor:*a2 hashNumber:{*(a2 + 16), *(a2 + 32), *(a2 + 48), *(a2 + 64), *(a2 + 72), *(a2 + 80), *(a2 + 88)}];
      os_unfair_lock_unlock(descriptorCopy + 6);
    }

    descriptorCopy = v5;
  }

  return descriptorCopy;
}

- (id)_locked_renderPipelineStateWithDescriptor:(id *)descriptor hashNumber:(id)number
{
  v37 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  renderPipelineStates = self->_renderPipelineStates;
  if (!renderPipelineStates)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_renderPipelineStates;
    self->_renderPipelineStates = v8;

    renderPipelineStates = self->_renderPipelineStates;
  }

  v10 = [(NSMutableDictionary *)renderPipelineStates objectForKeyedSubscript:?];
  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E6974140]);
    colorAttachments = [v11 colorAttachments];
    v13 = [colorAttachments objectAtIndexedSubscript:?];

    [v13 setPixelFormat:?];
    [v11 setDepthAttachmentPixelFormat:?];
    [v13 setBlendingEnabled:?];
    [v13 setRgbBlendOperation:?];
    [v13 setSourceRGBBlendFactor:?];
    [v13 setDestinationRGBBlendFactor:?];
    [v13 setAlphaBlendOperation:?];
    [v13 setSourceAlphaBlendFactor:?];
    [v13 setDestinationAlphaBlendFactor:?];
    v14 = [(AVTMetalHelper *)self _locked_functionNamed:?];
    [v11 setVertexFunction:?];

    v15 = [(AVTMetalHelper *)self _locked_functionNamed:?];
    [v11 setFragmentFunction:?];

    [v11 setRasterSampleCount:?];
    v10 = [MTLDevice newRenderPipelineStateWithDescriptor:"newRenderPipelineStateWithDescriptor:error:" error:?];
    v16 = 0;
    v17 = v16;
    if (v16)
    {
      v18 = avt_default_log(v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        var9 = descriptor->var9;
        var10 = descriptor->var10;
        *buf = 138412802;
        v32 = var9;
        v33 = 2112;
        v34 = var10;
        v35 = 2112;
        v36 = v17;
        _os_log_error_impl(&dword_1BB472000, v18, OS_LOG_TYPE_ERROR, "Error: Failed to create render pipeline state for %@ + %@ with error %@", buf, 0x20u);
      }
    }

    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];

    if (!v10)
    {
      v20 = avt_default_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(AVTMetalHelper *)v20 _locked_renderPipelineStateWithDescriptor:v21 hashNumber:v22, v23, v24, v25, v26, v27];
      }

      v10 = 0;
    }
  }

  return v10;
}

- (id)_locked_computePipelineStateWithFunctionName:(id)name
{
  nameCopy = name;
  computePipelineStates = self->_computePipelineStates;
  if (!computePipelineStates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_computePipelineStates;
    self->_computePipelineStates = v6;

    computePipelineStates = self->_computePipelineStates;
  }

  v8 = [(NSMutableDictionary *)computePipelineStates objectForKeyedSubscript:?];
  if (!v8)
  {
    v9 = [(AVTMetalHelper *)self _locked_functionNamed:?];
    v8 = [MTLDevice newComputePipelineStateWithFunction:"newComputePipelineStateWithFunction:error:" error:?];
    v10 = 0;
    v11 = v10;
    if (v10)
    {
      v12 = avt_default_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(AVTMetalHelper *)nameCopy _locked_computePipelineStateWithFunctionName:v11, v12];
      }
    }

    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];

    if (!v8)
    {
      v14 = avt_default_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(AVTMetalHelper *)v14 _locked_renderPipelineStateWithDescriptor:v15 hashNumber:v16, v17, v18, v19, v20, v21];
      }

      v8 = 0;
    }
  }

  return v8;
}

- (id)device
{
  if (self)
  {
    self = self[1];
    v1 = vars8;
  }

  return self;
}

- (os_unfair_lock_s)library
{
  if (self)
  {
    selfCopy = self;
    v3 = *&self[4]._os_unfair_lock_opaque;
    if (!v3)
    {
      os_unfair_lock_lock(self + 6);
      [(os_unfair_lock_s *)selfCopy _locked_instanciateLibraryIfNeeded];
      os_unfair_lock_unlock(selfCopy + 6);
      v3 = *&selfCopy[4]._os_unfair_lock_opaque;
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)functionNamed:(id)named
{
  v3 = a2;
  if (named)
  {
    v4 = [*(named + 4) objectForKeyedSubscript:?];
    if (!v4)
    {
      os_unfair_lock_lock(named + 6);
      v4 = [named _locked_functionNamed:?];
      os_unfair_lock_unlock(named + 6);
    }

    named = v4;
  }

  return named;
}

- (id)computePipelineStateWithFunctionName:(id)name
{
  v3 = a2;
  if (name)
  {
    v4 = [*(name + 6) objectForKeyedSubscript:?];
    if (!v4)
    {
      os_unfair_lock_lock(name + 6);
      v4 = [name _locked_computePipelineStateWithFunctionName:?];
      os_unfair_lock_unlock(name + 6);
    }

    name = v4;
  }

  return name;
}

- (void)_locked_functionNamed:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "function";
}

- (void)_locked_renderPipelineStateWithDescriptor:(uint64_t)a3 hashNumber:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "pipelineState";
}

- (void)_locked_computePipelineStateWithFunctionName:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1BB472000, log, OS_LOG_TYPE_ERROR, "Error: Failed to create compute pipeline state for %@ with error %@", &v3, 0x16u);
}

@end