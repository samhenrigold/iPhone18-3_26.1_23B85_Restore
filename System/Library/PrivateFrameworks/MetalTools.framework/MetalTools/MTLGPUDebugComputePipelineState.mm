@interface MTLGPUDebugComputePipelineState
- (MTLGPUDebugBuffer)globalConstantsBuffer;
- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)state binaryFunctions:(id)functions withState:(id)withState device:(id)device;
- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)state binaryFunctions:(id)functions withState:(id)withState device:(id)device pipelineOptions:(unint64_t)options;
- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)state descriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor device:(id)device;
- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)state descriptor:(id)descriptor unwrappedDescriptor:(id)unwrappedDescriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options;
- (id)functionHandleWithFunction:(id)function;
- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error;
- (id)newComputePipelineStateWithBinaryFunctions:(id)functions error:(id *)error;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor;
- (void)_initConstantsBuffer:(id)buffer;
- (void)dealloc;
- (void)releaseReflection;
@end

@implementation MTLGPUDebugComputePipelineState

- (void)_initConstantsBuffer:(id)buffer
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(buffer "debugInstrumentationData")];
  self->_threadgroupArgumentOffset = [objc_msgSend(buffer "debugInstrumentationData")];
  self->_activeThreadgroupMask = [objc_msgSend(buffer "debugInstrumentationData")];
  if ([v5 length])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
    if ([v5 length])
    {
      [v6 appendData:v5];
      self->_constantOffset = 0;
      [v5 length];
    }

    [(MTLGPUDebugImageData *)self->_kernelFunctionData setConstantData:v6];
  }

  if (self->_supportsIndirectCommandBuffers && (HIBYTE(self->super.super._device[2].dynamicLibraryObjectCache) & 0x20) != 0)
  {
    v7 = [[MTLGPUDebugPipelineStateInfoEncoder alloc] initWithDevice:self->super.super._device];
    v8 = [-[MTLToolsObject baseObject](self->super.super._device "baseObject")];
    self->_indirectStateBuffer = -[MTLGPUDebugBuffer initWithBuffer:device:offset:length:track:]([MTLGPUDebugBuffer alloc], "initWithBuffer:device:offset:length:track:", v8, self->super.super._device, 0, [v8 length], 0);

    [(MTLGPUDebugPipelineStateInfoEncoder *)v7 setArgumentBuffer:self->_indirectStateBuffer offset:0];
    [(MTLGPUDebugPipelineStateInfoEncoder *)v7 setComputePipelineState:self];

    if (self->_supportsIndirectCommandBuffers)
    {
      v9 = *(self->_kernelFunctionData + 1);
      if (v9)
      {
        GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, v9);
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      binaryFunctionData = self->_binaryFunctionData;
      v11 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(binaryFunctionData);
            }

            v15 = *(*(*(&v16 + 1) + 8 * i) + 8);
            if (v15)
            {
              GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, v15);
            }
          }

          v12 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }
    }

    GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, self->_indirectStateBuffer);
  }
}

- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)state descriptor:(id)descriptor unwrappedDescriptor:(id)unwrappedDescriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options
{
  v46 = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = MTLGPUDebugComputePipelineState;
  v14 = [(MTLToolsObject *)&v43 initWithBaseObject:state parent:device];
  if (v14)
  {
    reflectionCopy = reflection;
    computeFunction = [descriptor computeFunction];
    v14->_kernelFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", computeFunction, [state debugInstrumentationData]);
    if ((BYTE4(v14->super.super._device[2].sourceLibraryObjectCache) & 2) != 0)
    {
      v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v14->_retainedFunctions = v16;
      [(NSMutableArray *)v16 addObject:computeFunction];
    }

    v14->_supportsIndirectCommandBuffers = [descriptor supportIndirectCommandBuffers];
    v17 = 1;
    if ((options & 0x800000000) == 0)
    {
      v17 = 2;
    }

    v14->_shaderValidation = v17;
    v14->_shaderValidationState = v17;
    v18 = [objc_msgSend(descriptor "preloadedLibraries")];
    v19 = [objc_msgSend(objc_msgSend(descriptor "linkedFunctions")] + v18;
    if (v19)
    {
      unwrappedDescriptorCopy = unwrappedDescriptor;
      v14->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v19];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v20 = [objc_msgSend(descriptor "linkedFunctions")];
      v21 = [v20 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v40;
        do
        {
          v24 = 0;
          do
          {
            if (*v40 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [(NSMutableArray *)v14->_binaryFunctionData addObject:*(*(*(&v39 + 1) + 8 * v24++) + 48), unwrappedDescriptorCopy];
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v22);
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      preloadedLibraries = [descriptor preloadedLibraries];
      v26 = [preloadedLibraries countByEnumeratingWithState:&v35 objects:v44 count:16];
      unwrappedDescriptor = v33;
      if (v26)
      {
        v27 = v26;
        v28 = *v36;
        do
        {
          v29 = 0;
          do
          {
            if (*v36 != v28)
            {
              objc_enumerationMutation(preloadedLibraries);
            }

            -[NSMutableArray addObject:](v14->_binaryFunctionData, "addObject:", [*(*(&v35 + 1) + 8 * v29++) imageData]);
          }

          while (v27 != v29);
          v27 = [preloadedLibraries countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v27);
      }
    }

    v14->_internalReflection = reflectionCopy;
    if ([objc_msgSend(state "debugInstrumentationData")])
    {
      v30 = [unwrappedDescriptor newSerializedComputeDataWithFlags:0 options:3];
      v14->_userReflection = [objc_alloc(MEMORY[0x277CD6D38]) initWithSerializedData:objc_msgSend(objc_msgSend(state dynamicLibraries:"debugInstrumentationData") serializedStageInputDescriptor:"userReflectionData") device:objc_msgSend(objc_msgSend(state options:"debugInstrumentationData") flags:{"linkedDynamicLibraries"), v30, objc_msgSend(device, "baseObject"), 3, 0}];
      [objc_msgSend(state "debugInstrumentationData")];
      dispatch_release(v30);
    }

    [(MTLComputePipelineReflection *)v14->_userReflection setPerformanceStatistics:[(MTLComputePipelineReflection *)v14->_internalReflection performanceStatistics]];
    [(MTLGPUDebugComputePipelineState *)v14 _initConstantsBuffer:state];
  }

  return v14;
}

- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)state binaryFunctions:(id)functions withState:(id)withState device:(id)device pipelineOptions:(unint64_t)options
{
  v28 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = MTLGPUDebugComputePipelineState;
  v11 = [(MTLToolsObject *)&v26 initWithBaseObject:state parent:device];
  v12 = v11;
  if (v11)
  {
    if ((BYTE4(v11->super.super._device[2].sourceLibraryObjectCache) & 2) != 0)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(withState + 16), "count") + objc_msgSend(functions, "count")}];
      v12->_retainedFunctions = v13;
      [(NSMutableArray *)v13 addObjectsFromArray:functions];
      [(NSMutableArray *)v12->_retainedFunctions addObjectsFromArray:*(withState + 16)];
    }

    v12->_kernelFunctionData = *(withState + 6);
    v14 = [*(withState + 9) count];
    v15 = [functions count] + v14;
    if (v15)
    {
      v12->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v15];
    }

    if (*(withState + 9))
    {
      [(NSMutableArray *)v12->_binaryFunctionData addObjectsFromArray:?];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = [functions countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        v19 = 0;
        do
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(functions);
          }

          [(NSMutableArray *)v12->_binaryFunctionData addObject:*(*(*(&v22 + 1) + 8 * v19++) + 48)];
        }

        while (v17 != v19);
        v17 = [functions countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v17);
    }

    v12->_userReflection = *(withState + 8);
    v12->_internalReflection = *(withState + 7);
    v12->_supportsIndirectCommandBuffers = [withState supportIndirectCommandBuffers];
    v20 = 1;
    if ((options & 0x800000000) == 0)
    {
      v20 = 2;
    }

    v12->_shaderValidation = v20;
    v12->_shaderValidationState = v20;
    [(MTLGPUDebugComputePipelineState *)v12 _initConstantsBuffer:state];
  }

  return v12;
}

- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)state descriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor device:(id)device
{
  v40 = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = MTLGPUDebugComputePipelineState;
  v9 = [(MTLToolsObject *)&v37 initWithBaseObject:state parent:device];
  if (v9)
  {
    computeFunctionDescriptor = [descriptor computeFunctionDescriptor];
    v11 = [MTLGPUDebugImageData alloc];
    v9->_kernelFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:](v11, "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName(computeFunctionDescriptor, v12), 3, [state debugInstrumentationData], v9->super.super._device);
    if (linkingDescriptor)
    {
      v13 = [objc_msgSend(linkingDescriptor "preloadedLibraries")];
      v14 = [objc_msgSend(linkingDescriptor "binaryLinkedFunctions")] + v13;
      if (v14)
      {
        v9->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v14];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        binaryLinkedFunctions = [linkingDescriptor binaryLinkedFunctions];
        v16 = [binaryLinkedFunctions countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v34;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(binaryLinkedFunctions);
              }

              [(NSMutableArray *)v9->_binaryFunctionData addObject:*(*(*(&v33 + 1) + 8 * i) + 48)];
            }

            v17 = [binaryLinkedFunctions countByEnumeratingWithState:&v33 objects:v39 count:16];
          }

          while (v17);
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        preloadedLibraries = [linkingDescriptor preloadedLibraries];
        v21 = [preloadedLibraries countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v30;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v30 != v23)
              {
                objc_enumerationMutation(preloadedLibraries);
              }

              -[NSMutableArray addObject:](v9->_binaryFunctionData, "addObject:", [*(*(&v29 + 1) + 8 * j) imageData]);
            }

            v22 = [preloadedLibraries countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v22);
        }
      }
    }

    v25 = [objc_msgSend(descriptor "options")];
    if ([v25 enableBoundsChecking] & 1) != 0 || (objc_msgSend(v25, "enableThreadgroupMemoryChecks") & 1) != 0 || (objc_msgSend(v25, "enableTextureChecks") & 1) != 0 || (objc_msgSend(v25, "enableResourceUsageValidation"))
    {
      v26 = 1;
    }

    else
    {
      enableStackOverflow = [v25 enableStackOverflow];
      v26 = 1;
      if (!enableStackOverflow)
      {
        v26 = 2;
      }
    }

    v9->_shaderValidation = v26;
    v9->_supportsIndirectCommandBuffers = [descriptor supportIndirectCommandBuffers] != 0;
    [(MTLGPUDebugComputePipelineState *)v9 _initConstantsBuffer:state];
  }

  return v9;
}

- (MTLGPUDebugComputePipelineState)initWithComputePipelineState:(id)state binaryFunctions:(id)functions withState:(id)withState device:(id)device
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = MTLGPUDebugComputePipelineState;
  v9 = [(MTLToolsObject *)&v21 initWithBaseObject:state parent:device];
  if (v9)
  {
    v9->_kernelFunctionData = [withState kernelFunctionData];
    v10 = [objc_msgSend(withState "binaryFunctionData")];
    v11 = [functions count] + v10;
    if (v11)
    {
      v9->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11];
    }

    if ([withState binaryFunctionData])
    {
      -[NSMutableArray addObjectsFromArray:](v9->_binaryFunctionData, "addObjectsFromArray:", [withState binaryFunctionData]);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [functions countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(functions);
          }

          [(NSMutableArray *)v9->_binaryFunctionData addObject:*(*(*(&v17 + 1) + 8 * i) + 48)];
        }

        v13 = [functions countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }

    v9->_shaderValidation = [withState shaderValidation];
    v9->_supportsIndirectCommandBuffers = [withState supportIndirectCommandBuffers];
    [(MTLGPUDebugComputePipelineState *)v9 _initConstantsBuffer:state];
  }

  return v9;
}

MTLGPUDebugFunctionHandle *__58__MTLGPUDebugComputePipelineState_functionHandleWithName___block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugFunctionHandle alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLGPUDebugFunctionHandle *)v2 initWithFunctionHandle:v3 computePipelineState:v4];
}

MTLGPUDebugFunctionHandle *__68__MTLGPUDebugComputePipelineState_functionHandleWithBinaryFunction___block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugFunctionHandle alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLGPUDebugFunctionHandle *)v2 initWithFunctionHandle:v3 computePipelineState:v4];
}

- (id)newComputePipelineStateWithBinaryFunctions:(id)functions error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(functions, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [functions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(functions);
        }

        [v7 addObject:*(*(&v15 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [functions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (![v12 debugInstrumentationData])
  {
    [v12 setDebugInstrumentationData:{-[MTLToolsComputePipelineState debugInstrumentationData](self, "debugInstrumentationData")}];
  }

  v13 = [[MTLGPUDebugComputePipelineState alloc] initWithComputePipelineState:v12 binaryFunctions:v7 withState:self device:self->super.super._device];

  return v13;
}

- (void)releaseReflection
{
  self->_internalReflection = 0;

  self->_userReflection = 0;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor
{
  result = [(MTLToolsObject *)self->super.super._baseObject newVisibleFunctionTableWithDescriptor:?];
  if (result)
  {
    v6 = result;
    v7 = [[MTLGPUDebugVisibleFunctionTable alloc] initWithVisibleFunctionTable:result descriptor:descriptor computePipeline:self];

    return v7;
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  result = [(MTLToolsObject *)self->super.super._baseObject newIntersectionFunctionTableWithDescriptor:?];
  if (result)
  {
    v6 = result;
    v7 = [[MTLGPUDebugIntersectionFunctionTable alloc] initWithIntersectionFunctionTable:result device:[(MTLToolsComputePipelineState *)self device] descriptor:descriptor computePipelineState:self];

    return v7;
  }

  return result;
}

- (id)functionHandleWithFunction:(id)function
{
  v5 = -[MTLToolsObject functionHandleWithFunction:](self->super.super._baseObject, "functionHandleWithFunction:", [function baseObject]);
  functionHandleObjectCache = self->super.super._device->functionHandleObjectCache;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __62__MTLGPUDebugComputePipelineState_functionHandleWithFunction___block_invoke;
  v11 = &unk_2787B4A20;
  v12 = v5;
  selfCopy = self;
  functionCopy = function;
  return [MTLToolsObjectCache getCachedObjectForKey:"getCachedObjectForKey:onMiss:" onMiss:?];
}

MTLGPUDebugFunctionHandle *__62__MTLGPUDebugComputePipelineState_functionHandleWithFunction___block_invoke(void *a1)
{
  v2 = [MTLGPUDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLGPUDebugFunctionHandle *)v2 initWithFunctionHandle:v3 computePiplineState:v4 function:v5];
}

- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(functions, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [functions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(functions);
        }

        [v7 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * v11++), "baseObject")}];
      }

      while (v9 != v11);
      v9 = [functions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v12 = [(MTLToolsObject *)self->super.super._baseObject newComputePipelineStateWithAdditionalBinaryFunctions:v7 error:error];

  if (![v12 debugInstrumentationData])
  {
    [v12 setDebugInstrumentationData:{-[MTLToolsComputePipelineState debugInstrumentationData](self, "debugInstrumentationData")}];
  }

  v13 = [[MTLGPUDebugComputePipelineState alloc] initWithComputePipelineState:v12 binaryFunctions:functions withState:self device:self->super.super._device pipelineOptions:0];

  return v13;
}

- (MTLGPUDebugBuffer)globalConstantsBuffer
{
  kernelFunctionData = self->_kernelFunctionData;
  if (kernelFunctionData)
  {
    return *(kernelFunctionData + 1);
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_supportsIndirectCommandBuffers)
  {
    v3 = *(self->_kernelFunctionData + 1);
    if (v3)
    {
      GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, v3);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    binaryFunctionData = self->_binaryFunctionData;
    v5 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(binaryFunctionData);
          }

          v9 = *(*(*(&v11 + 1) + 8 * i) + 8);
          if (v9)
          {
            GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, v9);
          }
        }

        v6 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, self->_indirectStateBuffer);
  }

  v10.receiver = self;
  v10.super_class = MTLGPUDebugComputePipelineState;
  [(MTLToolsComputePipelineState *)&v10 dealloc];
}

@end