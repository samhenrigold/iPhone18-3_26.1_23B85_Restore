@interface PTEspressoGenericExecutor
+ (unint64_t)getEspressoMetalDeviceId:(id)id;
- (PTEspressoGenericExecutor)initWithMetalContext:(id)context;
- (PTEspressoGenericExecutor)initWithMetalContext:(id)context url:(id)url inputNames:(id)names outputNames:(id)outputNames tensorSwapNames:(id)swapNames reshapeNetworkSize:(id *)size configuration:(id)configuration;
- (PTEspressoGenericExecutor)initWithMetalContext:(id)context url:(id)url inputNames:(id)names outputNames:(id)outputNames tensorSwapNames:(id)swapNames reshapeNetworkSize:(id *)size configuration:(id)configuration ANEConfig:(id)self0;
- (signed)bindBuffers:(id)buffers toMap:(id)map isInput:(BOOL)input;
- (signed)bindTensorSwaps:(id)swaps;
- (unsigned)bindInputResourceWithName:(id)name to:(__CVBuffer *)to;
- (unsigned)convertBindInput:(id)input;
- (unsigned)convertBindOutput:(id)output;
- (unsigned)execute;
- (unsigned)executeAsync:(id)async metalContext:(id)context;
- (unsigned)tensorSwap:(int)swap;
- (void)convertInterleavedWithMetalContext:(id)context inInterleaved:(id)interleaved outPlanar:(id)planar;
- (void)convertPlanarWithMetalContext:(id)context inPlanarTexture:(id)texture outInterleaved:(id)interleaved;
- (void)dealloc;
- (void)execute;
@end

@implementation PTEspressoGenericExecutor

- (PTEspressoGenericExecutor)initWithMetalContext:(id)context
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = PTEspressoGenericExecutor;
  v6 = [(PTEspressoGenericExecutor *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v8 = [contextCopy computePipelineStateFor:@"interleavedToPlanar" withConstants:0];
  interleavedToPlanar = v7->_interleavedToPlanar;
  v7->_interleavedToPlanar = v8;

  if (!v7->_interleavedToPlanar)
  {
    v15 = _PTLogSystem(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEspressoGenericExecutor initWithMetalContext:];
    }

    goto LABEL_9;
  }

  v11 = [contextCopy computePipelineStateFor:@"planarToInterleaved" withConstants:0];
  planarToInterleaved = v7->_planarToInterleaved;
  v7->_planarToInterleaved = v11;

  if (!v7->_planarToInterleaved)
  {
    v15 = _PTLogSystem(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTEspressoGenericExecutor initWithMetalContext:];
    }

LABEL_9:

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v14 = v7;
LABEL_11:

  return v14;
}

- (PTEspressoGenericExecutor)initWithMetalContext:(id)context url:(id)url inputNames:(id)names outputNames:(id)outputNames tensorSwapNames:(id)swapNames reshapeNetworkSize:(id *)size configuration:(id)configuration
{
  configurationCopy = configuration;
  swapNamesCopy = swapNames;
  outputNamesCopy = outputNames;
  namesCopy = names;
  urlCopy = url;
  contextCopy = context;
  v22 = +[PTInference ANEConfigForSynchronousWork];
  v23 = [(PTEspressoGenericExecutor *)self initWithMetalContext:contextCopy url:urlCopy inputNames:namesCopy outputNames:outputNamesCopy tensorSwapNames:swapNamesCopy reshapeNetworkSize:size configuration:configurationCopy ANEConfig:v22];

  return v23;
}

- (PTEspressoGenericExecutor)initWithMetalContext:(id)context url:(id)url inputNames:(id)names outputNames:(id)outputNames tensorSwapNames:(id)swapNames reshapeNetworkSize:(id *)size configuration:(id)configuration ANEConfig:(id)self0
{
  v55 = *MEMORY[0x277D85DE8];
  urlCopy = url;
  namesCopy = names;
  outputNamesCopy = outputNames;
  swapNamesCopy = swapNames;
  configurationCopy = configuration;
  configCopy = config;
  v23 = [(PTEspressoGenericExecutor *)self initWithMetalContext:context];
  v24 = v23;
  if (!v23)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v23->_url, url);
  v25 = dispatch_queue_create("com.apple.portrait.espresso_callback", 0);
  espressoCallbackQueue = v24->_espressoCallbackQueue;
  v24->_espressoCallbackQueue = v25;

  v27 = objc_opt_new();
  inputInterleavedToPlanarConversion = v24->_inputInterleavedToPlanarConversion;
  v24->_inputInterleavedToPlanarConversion = v27;

  v29 = objc_opt_new();
  outputPlanarToInterleavedConversion = v24->_outputPlanarToInterleavedConversion;
  v24->_outputPlanarToInterleavedConversion = v29;

  [configCopy espressoEngine];
  context = espresso_create_context();
  v24->_ctx = context;
  if (!context)
  {
    v35 = _PTLogSystem(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
    }

    goto LABEL_11;
  }

  v24->_plan = espresso_create_plan();
  path = [urlCopy path];
  [path UTF8String];
  v33 = espresso_plan_add_network();

  if (v33)
  {
    v35 = _PTLogSystem(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
    }
  }

  else
  {
    [configCopy espressoPlanPriority];
    v36 = espresso_plan_set_priority();
    if (v36)
    {
      v35 = _PTLogSystem(v36);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
      }
    }

    else
    {
      version = espresso_network_get_version();
      v40 = version;
      v41 = _PTLogSystem(version);
      networkVersion = v41;
      if (v40)
      {
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
        }
      }

      else
      {
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
        }

        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:v54];
        networkVersion = v24->_networkVersion;
        v24->_networkVersion = v43;
      }

      if (!configurationCopy || ([configurationCopy UTF8String], v44 = espresso_network_select_configuration(), !v44))
      {
        if (size)
        {
          v35 = [namesCopy objectAtIndexedSubscript:0];
          [v35 UTF8String];
          v45 = espresso_network_change_input_blob_shapes_seq();
          if (v45)
          {
            v46 = _PTLogSystem(v45);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
            }

            goto LABEL_11;
          }
        }

        v47 = espresso_plan_build();
        if (v47)
        {
          v35 = _PTLogSystem(v47);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
          }
        }

        else
        {
          [(PTEspressoGenericExecutor *)v24 bindTensorSwaps:swapNamesCopy];
          v48 = objc_opt_new();
          inputsMap = v24->_inputsMap;
          v24->_inputsMap = v48;

          v50 = [(PTEspressoGenericExecutor *)v24 bindBuffers:namesCopy toMap:v24->_inputsMap isInput:1];
          if (v50)
          {
            v35 = _PTLogSystem(v50);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
            }
          }

          else
          {
            v51 = objc_opt_new();
            outputsMap = v24->_outputsMap;
            v24->_outputsMap = v51;

            v53 = [(PTEspressoGenericExecutor *)v24 bindBuffers:outputNamesCopy toMap:v24->_outputsMap isInput:0];
            if (!v53)
            {
              v37 = v24;
              goto LABEL_13;
            }

            v35 = _PTLogSystem(v53);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
            }
          }
        }

        goto LABEL_11;
      }

      v35 = _PTLogSystem(v44);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
      }
    }
  }

LABEL_11:

LABEL_12:
  v37 = 0;
LABEL_13:

  return v37;
}

- (signed)bindTensorSwaps:(id)swaps
{
  v19[2] = *MEMORY[0x277D85DE8];
  swapsCopy = swaps;
  v5 = objc_opt_new();
  tensorSwap = self->_tensorSwap;
  self->_tensorSwap = v5;

  v19[0] = 0;
  v19[1] = 0;
  if ([swapsCopy count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [swapsCopy objectAtIndexedSubscript:{v7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
      [v8 UTF8String];
      v9 = espresso_network_bind_buffer();

      if (v9)
      {
        break;
      }

      v19[v7 & 1] = v18;
      if (v7)
      {
        v11 = [PTTensorSwapPair alloc];
        v12 = [swapsCopy subarrayWithRange:{v7 - 1, 2}];
        v13 = [(PTTensorSwapPair *)v11 initWithIOSurfaces:v19 names:v12];

        [(NSMutableArray *)self->_tensorSwap addObject:v13];
      }

      if ([swapsCopy count] <= ++v7)
      {
        goto LABEL_7;
      }
    }

    v15 = _PTLogSystem(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(PTEspressoGenericExecutor *)swapsCopy bindTensorSwaps:v7];
    }

    v14 = 1;
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  return v14 << 31 >> 31;
}

- (signed)bindBuffers:(id)buffers toMap:(id)map isInput:(BOOL)input
{
  inputCopy = input;
  v72 = *MEMORY[0x277D85DE8];
  buffersCopy = buffers;
  mapCopy = map;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = buffersCopy;
  v50 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (!v50)
  {
    v42 = 0;
    goto LABEL_47;
  }

  v49 = *v64;
  v46 = inputCopy;
  allocator = *MEMORY[0x277CBECE8];
  v10 = 64;
  if (inputCopy)
  {
    v10 = 56;
  }

  v45 = v10;
  while (2)
  {
    for (i = 0; i != v50; ++i)
    {
      if (*v64 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v63 + 1) + 8 * i);
      v13 = [mapCopy objectForKeyedSubscript:{v12, v45}];

      if (v13)
      {
        v43 = _PTLogSystem(v14);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [PTEspressoGenericExecutor bindBuffers:toMap:isInput:];
        }

        goto LABEL_46;
      }

      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      *surface = 0u;
      v53 = 0u;
      [v12 UTF8String];
      v15 = espresso_network_bind_buffer();
      if (v15)
      {
        v43 = _PTLogSystem(v15);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [PTEspressoGenericExecutor bindBuffers:toMap:isInput:];
        }

LABEL_46:

        v42 = -1;
        goto LABEL_47;
      }

      v16 = surface[0];
      pixelBufferOut = 0;
      v17 = CVPixelBufferCreateWithIOSurface(allocator, surface[0], 0, &pixelBufferOut);
      if (v17)
      {
        v18 = _PTLogSystem(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [(PTTensorSwapPair *)buf initWithIOSurfaces:v18 names:?];
        }
      }

      v19 = pixelBufferOut;
      v20 = objc_msgSend_device(self->_metalContext);
      v21 = [PTPixelBufferUtil getMTLTextureDescriptor:v19 device:v20];

      height = [v21 height];
      if (height == *(&v57 + 1))
      {
        width = [v21 width];
        if (width == v57)
        {
          v24 = objc_msgSend_device(self->_metalContext);
          v25 = [v24 newTextureWithDescriptor:v21 iosurface:v16 plane:0];
          [mapCopy setObject:v25 forKeyedSubscript:v12];
          goto LABEL_38;
        }
      }

      v26 = v58;
      v27 = pixelBufferOut;
      v28 = objc_msgSend_device(self->_metalContext);
      v24 = [PTPixelBufferUtil getMTLTextureDescriptor:v27 device:v28];

      if ([v24 pixelFormat] == 10)
      {
        v29 = v26 == 2;
        v30 = 80;
        v31 = 30;
      }

      else
      {
        pixelFormat = [v24 pixelFormat];
        if (pixelFormat != 25)
        {
          v34 = _PTLogSystem(pixelFormat);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [(PTEspressoGenericExecutor *)v67 bindBuffers:v24 toMap:&v68 isInput:v34];
          }

          goto LABEL_28;
        }

        v29 = v26 == 2;
        v30 = 115;
        v31 = 65;
      }

      if (v29)
      {
        v33 = v31;
      }

      else
      {
        v33 = v30;
      }

      [v24 setPixelFormat:v33];
LABEL_28:
      height2 = [v24 height];
      if (height2 == *(&v57 + 1))
      {
        [v24 setWidth:v57];
        v25 = objc_msgSend_device(self->_metalContext);
        v36 = [v25 newTextureWithDescriptor:v24 iosurface:v16 plane:0];
        v37 = v36;
      }

      else
      {
        [v24 setHeight:?];
        v38 = objc_msgSend_device(self->_metalContext);
        v36 = [v38 newTextureWithDescriptor:v24];

        v39 = objc_msgSend_device(self->_metalContext);
        v37 = [v39 newTextureWithDescriptor:v21 iosurface:v16 plane:0];

        if (v46)
        {
          v40 = v36;
        }

        else
        {
          v40 = v37;
        }

        if (v46)
        {
          v41 = v37;
        }

        else
        {
          v41 = v36;
        }

        [*(&self->super.isa + v45) addObject:v40];
        [*(&self->super.isa + v45) addObject:v41];
        v25 = v36;
      }

      [mapCopy setObject:v36 forKeyedSubscript:v12];

LABEL_38:
      CVPixelBufferRelease(pixelBufferOut);
    }

    v42 = 0;
    v50 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v50)
    {
      continue;
    }

    break;
  }

LABEL_47:

  return v42;
}

+ (unint64_t)getEspressoMetalDeviceId:(id)id
{
  v13[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v4 = MTLCreateSystemDefaultDevice();
  v13[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v6 = [v5 count];
  registryID = [idCopy registryID];
  if (v6)
  {
    v8 = registryID;
    v9 = 0;
    while (1)
    {
      v10 = [v5 objectAtIndexedSubscript:v9];
      registryID2 = [v10 registryID];

      if (registryID2 == v8)
      {
        break;
      }

      if (v6 == ++v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v9 = -1;
  }

  return v9;
}

- (unsigned)bindInputResourceWithName:(id)name to:(__CVBuffer *)to
{
  nameCopy = name;
  [name UTF8String];
  v6 = espresso_network_bind_cvpixelbuffer();
  if (v6)
  {
    v7 = _PTLogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTEspressoGenericExecutor bindInputResourceWithName:to:];
    }

    LODWORD(v6) = -1;
  }

  return v6;
}

- (unsigned)convertBindInput:(id)input
{
  inputCopy = input;
  if ([(NSMutableArray *)self->_inputInterleavedToPlanarConversion count])
  {
    commandBuffer = [inputCopy commandBuffer];

    if (!commandBuffer)
    {
      v7 = _PTLogSystem(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PTEspressoGenericExecutor convertBindInput:];
      }
    }

    commandBuffer2 = [inputCopy commandBuffer];
    [commandBuffer2 setLabel:@"PTEspressoGenericExecutor convertBindInput"];

    if ([(NSMutableArray *)self->_inputInterleavedToPlanarConversion count])
    {
      v9 = 0;
      do
      {
        v10 = [(NSMutableArray *)self->_inputInterleavedToPlanarConversion objectAtIndexedSubscript:v9];
        v11 = [(NSMutableArray *)self->_inputInterleavedToPlanarConversion objectAtIndexedSubscript:v9 + 1];
        [(PTEspressoGenericExecutor *)self convertInterleavedWithMetalContext:inputCopy inInterleaved:v10 outPlanar:v11];

        v9 += 2;
      }

      while ([(NSMutableArray *)self->_inputInterleavedToPlanarConversion count]> v9);
    }

    [inputCopy commitAndWaitUntilScheduled];
  }

  return 0;
}

- (unsigned)convertBindOutput:(id)output
{
  outputCopy = output;
  if ([(NSMutableArray *)self->_outputPlanarToInterleavedConversion count])
  {
    commandBuffer = [outputCopy commandBuffer];

    if (!commandBuffer)
    {
      v7 = _PTLogSystem(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PTEspressoGenericExecutor convertBindInput:];
      }
    }

    commandBuffer2 = [outputCopy commandBuffer];
    [commandBuffer2 setLabel:@"PTEspressoGenericExecutor convertBindOutput"];

    if ([(NSMutableArray *)self->_outputPlanarToInterleavedConversion count])
    {
      v9 = 0;
      do
      {
        v10 = [(NSMutableArray *)self->_outputPlanarToInterleavedConversion objectAtIndexedSubscript:v9];
        v11 = [(NSMutableArray *)self->_outputPlanarToInterleavedConversion objectAtIndexedSubscript:v9 + 1];
        [(PTEspressoGenericExecutor *)self convertPlanarWithMetalContext:outputCopy inPlanarTexture:v10 outInterleaved:v11];

        v9 += 2;
      }

      while ([(NSMutableArray *)self->_outputPlanarToInterleavedConversion count]> v9);
    }

    [outputCopy commitAndWaitUntilScheduled];
  }

  return 0;
}

- (unsigned)execute
{
  result = [(PTEspressoGenericExecutor *)self convertBindInput:self->_metalContext];
  if (!result)
  {
    v4 = espresso_plan_execute_sync();
    if (v4)
    {
      v5 = _PTLogSystem(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [PTEspressoGenericExecutor execute];
      }

      return -2;
    }

    else
    {
      metalContext = self->_metalContext;

      return [(PTEspressoGenericExecutor *)self convertBindOutput:metalContext];
    }
  }

  return result;
}

- (unsigned)executeAsync:(id)async metalContext:(id)context
{
  asyncCopy = async;
  v7 = [(PTEspressoGenericExecutor *)self convertBindInput:context];
  if (!v7)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = asyncCopy;
    v8 = espresso_plan_submit();
    if (v8)
    {
      v9 = _PTLogSystem(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PTEspressoGenericExecutor executeAsync:metalContext:];
      }

      v7 = -2;
    }

    else
    {
      v7 = [(PTEspressoGenericExecutor *)self convertBindOutput:self->_metalContext, v11, 3221225472, __55__PTEspressoGenericExecutor_executeAsync_metalContext___block_invoke, &unk_278523208, self, v12];
    }
  }

  return v7;
}

uint64_t __55__PTEspressoGenericExecutor_executeAsync_metalContext___block_invoke(uint64_t a1, int *a2)
{
  if (a2)
  {
    v4 = _PTLogSystem(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__PTEspressoGenericExecutor_executeAsync_metalContext___block_invoke_cold_1(a2, a1, v4);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = PTEspressoGenericExecutor;
  [(PTEspressoGenericExecutor *)&v3 dealloc];
}

- (void)convertInterleavedWithMetalContext:(id)context inInterleaved:(id)interleaved outPlanar:(id)planar
{
  planarCopy = planar;
  interleavedCopy = interleaved;
  contextCopy = context;
  height = [planarCopy height];
  v19 = height / [interleavedCopy height];
  commandBuffer = [contextCopy commandBuffer];

  computeCommandEncoder = [commandBuffer computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_interleavedToPlanar];
  [computeCommandEncoder setTexture:interleavedCopy atIndex:0];
  [computeCommandEncoder setTexture:planarCopy atIndex:1];

  [computeCommandEncoder setBytes:&v19 length:4 atIndex:0];
  width = [interleavedCopy width];
  height2 = [interleavedCopy height];

  v18[0] = width;
  v18[1] = height2;
  v18[2] = 1;
  v16 = xmmword_2244A5810;
  v17 = 1;
  [computeCommandEncoder dispatchThreads:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
}

- (void)convertPlanarWithMetalContext:(id)context inPlanarTexture:(id)texture outInterleaved:(id)interleaved
{
  interleavedCopy = interleaved;
  textureCopy = texture;
  contextCopy = context;
  height = [textureCopy height];
  v19 = height / [interleavedCopy height];
  commandBuffer = [contextCopy commandBuffer];

  computeCommandEncoder = [commandBuffer computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_planarToInterleaved];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:interleavedCopy atIndex:1];
  [computeCommandEncoder setBytes:&v19 length:4 atIndex:0];
  width = [interleavedCopy width];
  height2 = [interleavedCopy height];

  v18[0] = width;
  v18[1] = height2;
  v18[2] = 1;
  v16 = xmmword_2244A5810;
  v17 = 1;
  [computeCommandEncoder dispatchThreads:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
}

- (unsigned)tensorSwap:(int)swap
{
  v3 = *&swap;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_tensorSwap;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v5)
  {
    v16 = 0;
    goto LABEL_17;
  }

  v6 = v5;
  v7 = *v20;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v19 + 1) + 8 * i);
      v10 = [v9 tensorNameWithIndex:{0, v19}];
      [v10 UTF8String];
      [v9 tensorWithIndex:v3];
      v11 = espresso_network_bind_cvpixelbuffer();

      if (v11)
      {
        v17 = _PTLogSystem(v12);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      v13 = [v9 tensorNameWithIndex:1];
      [v13 UTF8String];
      [v9 tensorWithIndex:(v3 + 1)];
      v14 = espresso_network_bind_cvpixelbuffer();

      if (v14)
      {
        v17 = _PTLogSystem(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
LABEL_15:
          [PTEspressoGenericExecutor bindInputResourceWithName:to:];
        }

LABEL_16:

        v16 = -1;
        goto LABEL_17;
      }
    }

    v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    v16 = 0;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_17:

  return v16;
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.1()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.2()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.4()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_2243FB000, v1, OS_LOG_TYPE_DEBUG, "network version: %s for %@", v2, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.5()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.6()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.7()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.8()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.9()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.10()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)bindTensorSwaps:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v2 = [a1 objectAtIndexedSubscript:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)bindBuffers:toMap:isInput:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)bindBuffers:toMap:isInput:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)bindBuffers:(uint64_t *)a3 toMap:(NSObject *)a4 isInput:.cold.4(uint8_t *a1, void *a2, uint64_t *a3, NSObject *a4)
{
  v7 = [a2 pixelFormat];
  *a1 = 134217984;
  *a3 = v7;
  _os_log_error_impl(&dword_2243FB000, a4, OS_LOG_TYPE_ERROR, "MTLPixelFormatR16Float/MTLPixelFormatR8Unorm expected, got %lu", a1, 0xCu);
}

- (void)bindInputResourceWithName:to:.cold.1()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)execute
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)executeAsync:metalContext:.cold.1()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __55__PTEspressoGenericExecutor_executeAsync_metalContext___block_invoke_cold_1(int *a1, uint64_t a2, os_log_t log)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 1);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(*(a2 + 32) + 112);
  v7 = 136315906;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  v11 = 1024;
  v12 = v5;
  v13 = 2112;
  v14 = v6;
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "espresso_plan_submit callback. %s %i %i for %@", &v7, 0x22u);
}

@end