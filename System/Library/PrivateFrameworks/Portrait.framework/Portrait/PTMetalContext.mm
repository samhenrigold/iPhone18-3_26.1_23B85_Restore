@interface PTMetalContext
- (BOOL)supportsFamily:(int64_t)family;
- (MTLCommandBuffer)commandBuffer;
- (PTMetalContext)initWithCommandQueue:(id)queue bundleClass:(Class)class;
- (PTMetalContext)initWithDevice:(id)device bundleClass:(Class)class;
- (PTMetalContext)initWithFigMetalContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)functionWithName:(id)name withConstants:(id)constants;
- (void)commit;
- (void)commitAndWaitUntilCompleted;
- (void)commitAndWaitUntilScheduled;
- (void)waitForIdle;
@end

@implementation PTMetalContext

- (PTMetalContext)initWithFigMetalContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = PTMetalContext;
  v5 = [(PTMetalContext *)&v8 init];
  figMetalContext = v5->_figMetalContext;
  v5->_figMetalContext = contextCopy;

  return v5;
}

- (PTMetalContext)initWithDevice:(id)device bundleClass:(Class)class
{
  newCommandQueue = [device newCommandQueue];
  v7 = [(PTMetalContext *)self initWithCommandQueue:newCommandQueue bundleClass:class];

  return v7;
}

- (PTMetalContext)initWithCommandQueue:(id)queue bundleClass:(Class)class
{
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = PTMetalContext;
  v8 = [(PTMetalContext *)&v23 init];
  if (v8)
  {
    v9 = objc_msgSend_device(queueCopy);
    device = v8->_device;
    v8->_device = v9;

    objc_storeStrong(&v8->_commandQueue, queue);
    v8->_allowCommandbufferAllocation = 0;
    v8->_imageblocksSupported = [(PTMetalContext *)v8 supportsFamily:1006];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:class];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CF6C78]) initWithbundle:v11 andOptionalCommandQueue:v8->_commandQueue];
      figMetalContext = v8->_figMetalContext;
      v8->_figMetalContext = v12;

      library = [(FigMetalContext *)v8->_figMetalContext library];
      library = v8->_library;
      v8->_library = library;

      pipelineLibrary = [(FigMetalContext *)v8->_figMetalContext pipelineLibrary];
      pipelineLibrary = v8->_pipelineLibrary;
      v8->_pipelineLibrary = pipelineLibrary;

      v18 = [[PTMetalTextureUtil alloc] initWithMetalContext:v8];
      textureUtil = v8->_textureUtil;
      v8->_textureUtil = v18;

      v20 = v8;
    }

    else
    {
      v21 = _PTLogSystem(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PTMetalContext initWithCommandQueue:bundleClass:];
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (MTLCommandBuffer)commandBuffer
{
  if (self->_allowCommandbufferAllocation)
  {
    status = [(MTLCommandBuffer *)self->_commandBuffer status];
    if (status)
    {
      v4 = _PTLogSystem(status);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(PTMetalContext *)v4 commandBuffer:v5];
      }
    }

    commandBuffer = self->_commandBuffer;
    if (!commandBuffer)
    {
      commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
      v14 = self->_commandBuffer;
      self->_commandBuffer = commandBuffer;

      v15 = self->_commandBuffer;
      if (!v15)
      {
        v16 = _PTLogSystem(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
        }

        v15 = self->_commandBuffer;
      }

      [(MTLCommandBuffer *)v15 setLabel:@"Portrait.framework"];
      commandBuffer = self->_commandBuffer;
    }

    v24 = commandBuffer;
  }

  else
  {
    v25 = _PTLogSystem(self);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(PTMetalContext *)v25 commandBuffer:v26];
    }

    v24 = 0;
  }

  return v24;
}

- (void)commit
{
  [(PTMetalContext *)self checkCurrentThreadEqualsCommandBufferThread];
  [(MTLCommandBuffer *)self->_commandBuffer commit];
  commandBuffer = self->_commandBuffer;
  self->_commandBuffer = 0;
}

- (void)commitAndWaitUntilCompleted
{
  [(PTMetalContext *)self checkCurrentThreadEqualsCommandBufferThread];
  [(MTLCommandBuffer *)self->_commandBuffer commit];
  [(MTLCommandBuffer *)self->_commandBuffer waitUntilCompleted];
  commandBuffer = self->_commandBuffer;
  self->_commandBuffer = 0;
}

- (void)commitAndWaitUntilScheduled
{
  [(PTMetalContext *)self checkCurrentThreadEqualsCommandBufferThread];
  [(MTLCommandBuffer *)self->_commandBuffer commit];
  [(MTLCommandBuffer *)self->_commandBuffer waitUntilScheduled];
  commandBuffer = self->_commandBuffer;
  self->_commandBuffer = 0;
}

- (void)waitForIdle
{
  commandBuffer = [(PTMetalContext *)self commandBuffer];

  [(PTMetalContext *)self commitAndWaitUntilCompleted];
}

- (id)functionWithName:(id)name withConstants:(id)constants
{
  nameCopy = name;
  constantsCopy = constants;
  if (!constantsCopy)
  {
    v17 = [(MTLLibrary *)self->_library newFunctionWithName:nameCopy];
    v10 = v17;
    if (v17)
    {
      goto LABEL_20;
    }

    v12 = 0;
    goto LABEL_12;
  }

  pipelineLibrary = self->_pipelineLibrary;
  library = self->_library;
  if (pipelineLibrary)
  {
    v21 = 0;
    v10 = [(MTLLibrary *)library newFunctionWithName:nameCopy constantValues:constantsCopy pipelineLibrary:pipelineLibrary error:&v21];
    v11 = v21;
    v12 = v11;
    if (!v10)
    {
      v13 = _PTLogSystem(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PTMetalContext functionWithName:nameCopy withConstants:?];
      }

      v14 = self->_library;
      v20 = v12;
      v10 = [(MTLLibrary *)v14 newFunctionWithName:nameCopy constantValues:constantsCopy error:&v20];
      v15 = v20;

      v12 = v15;
      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v22 = 0;
    v10 = [(MTLLibrary *)library newFunctionWithName:nameCopy constantValues:constantsCopy error:&v22];
    v11 = v22;
    v12 = v11;
    if (!v10)
    {
LABEL_7:
      v16 = _PTLogSystem(v11);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PTMetalContext functionWithName:v12 withConstants:?];
      }

LABEL_12:
      v18 = _PTLogSystem(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PTMetalContext functionWithName:nameCopy withConstants:?];
      }

      v10 = 0;
      goto LABEL_19;
    }
  }

  if (!v12)
  {
    goto LABEL_20;
  }

  v18 = _PTLogSystem(v11);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [PTMetalContext functionWithName:v12 withConstants:v18];
  }

LABEL_19:

LABEL_20:

  return v10;
}

- (BOOL)supportsFamily:(int64_t)family
{
  v5 = PTDefaultsPublicGetDictionary();
  v6 = [v5 objectForKeyedSubscript:@"harvesting.gpufamily"];
  intValue = [v6 intValue];

  if (intValue)
  {
    return intValue >= family;
  }

  device = self->_device;

  return [(MTLDevice *)device supportsFamily:family];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PTMetalContext alloc] initWithFigMetalContext:self->_figMetalContext];
  [(PTMetalContext *)v4 setDevice:self->_device];
  [(PTMetalContext *)v4 setCommandQueue:self->_commandQueue];
  [(PTMetalContext *)v4 setLibrary:self->_library];
  [(PTMetalContext *)v4 setCommandBuffer:0];
  [(PTMetalContext *)v4 setPipelineLibrary:self->_pipelineLibrary];
  [(PTMetalContext *)v4 setAllowCommandbufferAllocation:self->_allowCommandbufferAllocation];
  [(PTMetalContext *)v4 setImageblocksSupported:self->_imageblocksSupported];
  [(PTMetalContext *)v4 setTextureUtil:self->_textureUtil];
  return v4;
}

- (void)initWithCommandQueue:bundleClass:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_2243FB000, v0, OS_LOG_TYPE_ERROR, "Cannot load bundle from %@", v1, 0xCu);
}

- (void)functionWithName:(void *)a1 withConstants:.cold.1(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v1, v2, "Unable to load function %s from pipeline library. Retrying from library.", v3, v4, v5, v6);
}

- (void)functionWithName:(void *)a1 withConstants:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  [v3 UTF8String];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_2243FB000, a2, OS_LOG_TYPE_DEBUG, "Metal shader compilation warnings: %s", v4, 0xCu);
}

- (void)functionWithName:(void *)a1 withConstants:.cold.3(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v2, v3, "Metal shader compilation error: %s", v4, v5, v6, v7);
}

- (void)functionWithName:(void *)a1 withConstants:.cold.4(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v1, v2, "Unable to load function %s.", v3, v4, v5, v6);
}

@end