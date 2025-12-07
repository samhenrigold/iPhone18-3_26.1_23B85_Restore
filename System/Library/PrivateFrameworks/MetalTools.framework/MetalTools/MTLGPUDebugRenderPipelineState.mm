@interface MTLGPUDebugRenderPipelineState
- (MTLGPUDebugBuffer)fragmentConstantsBuffer;
- (MTLGPUDebugBuffer)meshConstantsBuffer;
- (MTLGPUDebugBuffer)objectConstantsBuffer;
- (MTLGPUDebugBuffer)tileConstantsBuffer;
- (MTLGPUDebugBuffer)vertexConstantsBuffer;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state descriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor device:(id)device;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state descriptor:(id)descriptor unwrappedDescriptor:(id)unwrappedDescriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state meshDescriptor:(id)descriptor unwrappedDescriptor:(id)unwrappedDescriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state originalObject:(id)object descriptor:(id)descriptor device:(id)device;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state tileDescriptor:(id)descriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state vertexBinaryFunctions:(id)functions fragmentBinaryFunctions:(id)binaryFunctions tileBinaryFunctions:(id)tileBinaryFunctions objectBinaryFunctions:(id)objectBinaryFunctions meshBinaryFunctions:(id)meshBinaryFunctions withState:(id)withState device:(id)self0;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state vertexBinaryFunctions:(id)functions fragmentBinaryFunctions:(id)binaryFunctions tileBinaryFunctions:(id)tileBinaryFunctions objectBinaryFunctions:(id)objectBinaryFunctions meshBinaryFunctions:(id)meshBinaryFunctions withState:(id)withState device:(id)self0 pipelineOptions:(unint64_t)self1;
- (id)functionHandleWithBinaryFunction:(id)function stage:(unint64_t)stage;
- (id)functionHandleWithName:(id)name stage:(unint64_t)stage;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions fragmentAdditionalBinaryFunctions:(id)binaryFunctions error:(id *)error;
- (id)newRenderPipelineStateWithBinaryFunctions:(id)functions error:(id *)error;
- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage;
- (id)unwrapBinaryFunctions:(id)functions;
- (void)_initConstantsBuffer:(id)buffer;
- (void)dealloc;
- (void)releaseReflection;
@end

@implementation MTLGPUDebugRenderPipelineState

- (void)_initConstantsBuffer:(id)buffer
{
  v18 = *MEMORY[0x277D85DE8];
  -[MTLGPUDebugImageData setConstantData:](self->_vertexFunctionData, "setConstantData:", [objc_msgSend(buffer "vertexDebugInstrumentationData")]);
  -[MTLGPUDebugImageData setConstantData:](self->_fragmentFunctionData, "setConstantData:", [objc_msgSend(buffer "fragmentDebugInstrumentationData")]);
  -[MTLGPUDebugImageData setConstantData:](self->_tileFunctionData, "setConstantData:", [objc_msgSend(buffer "tileDebugInstrumentationData")]);
  -[MTLGPUDebugImageData setConstantData:](self->_objectFunctionData, "setConstantData:", [objc_msgSend(buffer "objectDebugInstrumentationData")]);
  -[MTLGPUDebugImageData setConstantData:](self->_meshFunctionData, "setConstantData:", [objc_msgSend(buffer "meshDebugInstrumentationData")]);
  if (self->_supportsIndirectCommandBuffers && (HIBYTE(self->super.super._device[2].dynamicLibraryObjectCache) & 0x20) != 0)
  {
    v5 = [[MTLGPUDebugPipelineStateInfoEncoder alloc] initWithDevice:self->super.super._device];
    v6 = [-[MTLToolsObject baseObject](self->super.super._device "baseObject")];
    self->_indirectStateBuffer = -[MTLGPUDebugBuffer initWithBuffer:device:offset:length:track:]([MTLGPUDebugBuffer alloc], "initWithBuffer:device:offset:length:track:", v6, self->super.super._device, 0, [v6 length], 0);

    [(MTLGPUDebugPipelineStateInfoEncoder *)v5 setArgumentBuffer:self->_indirectStateBuffer offset:0];
    [(MTLGPUDebugPipelineStateInfoEncoder *)v5 setRenderPipelineState:self];

    if ([(MTLGPUDebugRenderPipelineState *)self vertexConstantsBuffer])
    {
      GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self vertexConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self fragmentConstantsBuffer])
    {
      GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self fragmentConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self tileConstantsBuffer])
    {
      GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self tileConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self objectConstantsBuffer])
    {
      GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self objectConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self meshConstantsBuffer])
    {
      GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self meshConstantsBuffer]);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    binaryFunctionData = self->_binaryFunctionData;
    v8 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(binaryFunctionData);
          }

          v12 = *(*(*(&v13 + 1) + 8 * i) + 8);
          if (v12)
          {
            GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, v12);
          }
        }

        v9 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, self->_indirectStateBuffer);
  }
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state descriptor:(id)descriptor unwrappedDescriptor:(id)unwrappedDescriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options
{
  v72 = *MEMORY[0x277D85DE8];
  v67.receiver = self;
  v67.super_class = MTLGPUDebugRenderPipelineState;
  v14 = [(MTLToolsRenderPipelineState *)&v67 initWithBaseObject:state parent:device];
  if (v14)
  {
    if ((*(device + 292) & 2) != 0)
    {
      v14->_retainedFunctions = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    }

    if ([descriptor vertexFunction])
    {
      v14->_vertexMaxCallStackDepth = [descriptor maxVertexCallStackDepth];
      vertexFunction = [descriptor vertexFunction];
      v14->_vertexFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", vertexFunction, [state vertexDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:vertexFunction];
    }

    if ([descriptor fragmentFunction])
    {
      v14->_fragmentMaxCallStackDepth = [descriptor maxFragmentCallStackDepth];
      fragmentFunction = [descriptor fragmentFunction];
      v14->_fragmentFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", fragmentFunction, [state fragmentDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:fragmentFunction];
    }

    if ([descriptor meshFunction])
    {
      v14->_meshMaxCallStackDepth = [descriptor maxMeshCallStackDepth];
      meshFunction = [descriptor meshFunction];
      v14->_meshFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", meshFunction, [state meshDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:meshFunction];
    }

    deviceCopy = device;
    if ([descriptor objectFunction])
    {
      v14->_objectMaxCallStackDepth = [descriptor maxObjectCallStackDepth];
      objectFunction = [descriptor objectFunction];
      v14->_objectFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", objectFunction, [state objectDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:objectFunction];
    }

    v14->_supportsIndirectCommandBuffers = [descriptor supportIndirectCommandBuffers];
    optionsCopy = options;
    v19 = 1;
    if ((options & 0x800000000) == 0)
    {
      v19 = 2;
    }

    v14->_shaderValidation = v19;
    v14->_shaderValidationState = v19;
    v20 = [objc_msgSend(descriptor "vertexPreloadedLibraries")];
    v21 = [objc_msgSend(descriptor "fragmentPreloadedLibraries")];
    v22 = [objc_msgSend(objc_msgSend(descriptor "vertexLinkedFunctions")];
    v23 = v21 + v20 + v22 + [objc_msgSend(objc_msgSend(descriptor "fragmentLinkedFunctions")];
    if (v23)
    {
      unwrappedDescriptorCopy = unwrappedDescriptor;
      v14->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v23];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v24 = [objc_msgSend(descriptor "vertexLinkedFunctions")];
      v25 = [v24 countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v64;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v64 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [(NSMutableArray *)v14->_binaryFunctionData addObject:*(*(*(&v63 + 1) + 8 * i) + 48)];
          }

          v26 = [v24 countByEnumeratingWithState:&v63 objects:v71 count:16];
        }

        while (v26);
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v29 = [objc_msgSend(descriptor "fragmentLinkedFunctions")];
      v30 = [v29 countByEnumeratingWithState:&v59 objects:v70 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v60;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v60 != v32)
            {
              objc_enumerationMutation(v29);
            }

            [(NSMutableArray *)v14->_binaryFunctionData addObject:*(*(*(&v59 + 1) + 8 * j) + 48)];
          }

          v31 = [v29 countByEnumeratingWithState:&v59 objects:v70 count:16];
        }

        while (v31);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      vertexPreloadedLibraries = [descriptor vertexPreloadedLibraries];
      v35 = [vertexPreloadedLibraries countByEnumeratingWithState:&v55 objects:v69 count:16];
      unwrappedDescriptor = unwrappedDescriptorCopy;
      if (v35)
      {
        v36 = v35;
        v37 = *v56;
        do
        {
          for (k = 0; k != v36; ++k)
          {
            if (*v56 != v37)
            {
              objc_enumerationMutation(vertexPreloadedLibraries);
            }

            -[NSMutableArray addObject:](v14->_binaryFunctionData, "addObject:", [*(*(&v55 + 1) + 8 * k) imageData]);
          }

          v36 = [vertexPreloadedLibraries countByEnumeratingWithState:&v55 objects:v69 count:16];
        }

        while (v36);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      fragmentPreloadedLibraries = [descriptor fragmentPreloadedLibraries];
      v40 = [fragmentPreloadedLibraries countByEnumeratingWithState:&v51 objects:v68 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v52;
        do
        {
          for (m = 0; m != v41; ++m)
          {
            if (*v52 != v42)
            {
              objc_enumerationMutation(fragmentPreloadedLibraries);
            }

            -[NSMutableArray addObject:](v14->_binaryFunctionData, "addObject:", [*(*(&v51 + 1) + 8 * m) imageData]);
          }

          v41 = [fragmentPreloadedLibraries countByEnumeratingWithState:&v51 objects:v68 count:16];
        }

        while (v41);
      }
    }

    v14->_internalReflection = reflection;
    v44 = 0x27DA5C000;
    if ([objc_msgSend(state "vertexDebugInstrumentationData")] || objc_msgSend(objc_msgSend(state, "fragmentDebugInstrumentationData"), "userReflectionData"))
    {
      v50 = 0;
      v45 = [unwrappedDescriptor newSerializedVertexDataWithFlags:28 options:optionsCopy error:&v50];
      v44 = 0x27DA5C000uLL;
      v14->_userReflection = [objc_alloc(MEMORY[0x277CD6F90]) initWithVertexData:objc_msgSend(objc_msgSend(state vertexDynamicLibraries:"vertexDebugInstrumentationData") fragmentData:"userReflectionData") fragmentDynamicLibraries:objc_msgSend(objc_msgSend(state serializedVertexDescriptor:"vertexDebugInstrumentationData") device:"linkedDynamicLibraries") options:objc_msgSend(objc_msgSend(state flags:{"fragmentDebugInstrumentationData"), "userReflectionData"), objc_msgSend(objc_msgSend(state, "fragmentDebugInstrumentationData"), "linkedDynamicLibraries"), v45, objc_msgSend(deviceCopy, "baseObject"), optionsCopy, 0}];
      [objc_msgSend(state "vertexDebugInstrumentationData")];
      [objc_msgSend(state "fragmentDebugInstrumentationData")];
      dispatch_release(v45);
    }

    [*(&v14->super.super.super.isa + *(v44 + 3064)) setPerformanceStatistics:{-[MTLRenderPipelineReflection performanceStatistics](v14->_internalReflection, "performanceStatistics")}];
    [(MTLGPUDebugRenderPipelineState *)v14 _initConstantsBuffer:state];
  }

  return v14;
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state vertexBinaryFunctions:(id)functions fragmentBinaryFunctions:(id)binaryFunctions tileBinaryFunctions:(id)tileBinaryFunctions objectBinaryFunctions:(id)objectBinaryFunctions meshBinaryFunctions:(id)meshBinaryFunctions withState:(id)withState device:(id)self0 pipelineOptions:(unint64_t)self1
{
  v74 = *MEMORY[0x277D85DE8];
  v68.receiver = self;
  v68.super_class = MTLGPUDebugRenderPipelineState;
  v17 = [(MTLToolsRenderPipelineState *)&v68 initWithBaseObject:state parent:device];
  if (v17)
  {
    [functions count];
    [binaryFunctions count];
    [tileBinaryFunctions count];
    [objectBinaryFunctions count];
    [meshBinaryFunctions count];
    v17->_vertexFunctionData = *(withState + 8);
    v17->_fragmentFunctionData = *(withState + 9);
    v17->_tileFunctionData = *(withState + 10);
    v17->_objectFunctionData = *(withState + 11);
    v17->_meshFunctionData = *(withState + 12);
    meshBinaryFunctionsCopy = meshBinaryFunctions;
    v19 = [*(withState + 7) count];
    v20 = [functions count];
    v21 = v20 + [binaryFunctions count];
    v22 = v21 + [tileBinaryFunctions count];
    v23 = v22 + [objectBinaryFunctions count];
    v47 = meshBinaryFunctionsCopy;
    v24 = v23 + [meshBinaryFunctionsCopy count] + v19;
    if (v24)
    {
      v17->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v24];
    }

    if (*(withState + 7))
    {
      [(NSMutableArray *)v17->_binaryFunctionData addObjectsFromArray:?];
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v25 = [functions countByEnumeratingWithState:&v64 objects:v73 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v65;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v65 != v27)
          {
            objc_enumerationMutation(functions);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v64 + 1) + 8 * i) + 48)];
        }

        v26 = [functions countByEnumeratingWithState:&v64 objects:v73 count:16];
      }

      while (v26);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v29 = [binaryFunctions countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v61;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v61 != v31)
          {
            objc_enumerationMutation(binaryFunctions);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v60 + 1) + 8 * j) + 48)];
        }

        v30 = [binaryFunctions countByEnumeratingWithState:&v60 objects:v72 count:16];
      }

      while (v30);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v33 = [tileBinaryFunctions countByEnumeratingWithState:&v56 objects:v71 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v57;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v57 != v35)
          {
            objc_enumerationMutation(tileBinaryFunctions);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v56 + 1) + 8 * k) + 48)];
        }

        v34 = [tileBinaryFunctions countByEnumeratingWithState:&v56 objects:v71 count:16];
      }

      while (v34);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v37 = [objectBinaryFunctions countByEnumeratingWithState:&v52 objects:v70 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v53;
      do
      {
        for (m = 0; m != v38; ++m)
        {
          if (*v53 != v39)
          {
            objc_enumerationMutation(objectBinaryFunctions);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v52 + 1) + 8 * m) + 48)];
        }

        v38 = [objectBinaryFunctions countByEnumeratingWithState:&v52 objects:v70 count:16];
      }

      while (v38);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v41 = [v47 countByEnumeratingWithState:&v48 objects:v69 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v49;
      do
      {
        for (n = 0; n != v42; ++n)
        {
          if (*v49 != v43)
          {
            objc_enumerationMutation(v47);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v48 + 1) + 8 * n) + 48)];
        }

        v42 = [v47 countByEnumeratingWithState:&v48 objects:v69 count:16];
      }

      while (v42);
    }

    v17->_userReflection = *(withState + 6);
    v17->_internalReflection = *(withState + 5);
    v17->_supportsIndirectCommandBuffers = [withState supportIndirectCommandBuffers];
    v45 = 1;
    if ((options & 0x800000000) == 0)
    {
      v45 = 2;
    }

    v17->_shaderValidation = v45;
    v17->_shaderValidationState = v45;
    [(MTLGPUDebugRenderPipelineState *)v17 _initConstantsBuffer:state];
  }

  return v17;
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state descriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor device:(id)device
{
  v62.receiver = self;
  v62.super_class = MTLGPUDebugRenderPipelineState;
  v9 = [(MTLToolsRenderPipelineState *)&v62 initWithBaseObject:state parent:device];
  v10 = v9;
  if (v9)
  {
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v58 = __105__MTLGPUDebugRenderPipelineState_initWithRenderPipelineState_descriptor_dynamicLinkingDescriptor_device___block_invoke;
    v59 = &unk_2787B3DD8;
    v60 = v9;
    linkingDescriptorCopy = linkingDescriptor;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      vertexFunctionDescriptor = [descriptor vertexFunctionDescriptor];
      vertexDebugInstrumentationData = [state vertexDebugInstrumentationData];
      device = v10->super.super._device;
      v14 = [MTLGPUDebugImageData alloc];
      v10->_vertexFunctionData = [(MTLGPUDebugImageData *)v14 initWithFunctionName:getFunctionDescriptorName(vertexFunctionDescriptor functionType:v15) debugInstrumentationData:1 device:vertexDebugInstrumentationData, device];
      fragmentFunctionDescriptor = [descriptor fragmentFunctionDescriptor];
      fragmentDebugInstrumentationData = [state fragmentDebugInstrumentationData];
      v18 = v10->super.super._device;
      v19 = [MTLGPUDebugImageData alloc];
      v10->_fragmentFunctionData = [(MTLGPUDebugImageData *)v19 initWithFunctionName:getFunctionDescriptorName(fragmentFunctionDescriptor functionType:v20) debugInstrumentationData:2 device:fragmentDebugInstrumentationData, v18];
      if (linkingDescriptor)
      {
        v21 = [objc_msgSend(objc_msgSend(linkingDescriptor "vertexLinkingDescriptor")];
        v22 = [objc_msgSend(objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")] + v21;
        v23 = [objc_msgSend(objc_msgSend(linkingDescriptor "vertexLinkingDescriptor")];
        v24 = v22 + v23 + [objc_msgSend(objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")];
        v10->_vertexMaxCallStackDepth = [objc_msgSend(linkingDescriptor "vertexLinkingDescriptor")];
        v10->_fragmentMaxCallStackDepth = [objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")];
      }

      else
      {
        v24 = 0;
      }

      v58(v57, 1, v24);
      v58(v57, 2, v24);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        meshFunctionDescriptor = [descriptor meshFunctionDescriptor];
        meshDebugInstrumentationData = [(MTLToolsObject *)v10->super.super._baseObject meshDebugInstrumentationData];
        v27 = v10->super.super._device;
        v28 = [MTLGPUDebugImageData alloc];
        v10->_meshFunctionData = [(MTLGPUDebugImageData *)v28 initWithFunctionName:getFunctionDescriptorName(meshFunctionDescriptor functionType:v29) debugInstrumentationData:7 device:meshDebugInstrumentationData, v27];
        fragmentFunctionDescriptor2 = [descriptor fragmentFunctionDescriptor];
        fragmentDebugInstrumentationData2 = [(MTLToolsObject *)v10->super.super._baseObject fragmentDebugInstrumentationData];
        v32 = v10->super.super._device;
        v33 = [MTLGPUDebugImageData alloc];
        v10->_fragmentFunctionData = [(MTLGPUDebugImageData *)v33 initWithFunctionName:getFunctionDescriptorName(fragmentFunctionDescriptor2 functionType:v34) debugInstrumentationData:2 device:fragmentDebugInstrumentationData2, v32];
        objectFunctionDescriptor = [descriptor objectFunctionDescriptor];
        objectDebugInstrumentationData = [(MTLToolsObject *)v10->super.super._baseObject objectDebugInstrumentationData];
        v37 = v10->super.super._device;
        v38 = [MTLGPUDebugImageData alloc];
        v10->_objectFunctionData = [(MTLGPUDebugImageData *)v38 initWithFunctionName:getFunctionDescriptorName(objectFunctionDescriptor functionType:v39) debugInstrumentationData:8 device:objectDebugInstrumentationData, v37];
        if (linkingDescriptor)
        {
          v40 = [objc_msgSend(objc_msgSend(linkingDescriptor "meshLinkingDescriptor")];
          v41 = [objc_msgSend(objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")] + v40;
          v42 = [objc_msgSend(objc_msgSend(linkingDescriptor "objectLinkingDescriptor")];
          v43 = v41 + v42 + [objc_msgSend(objc_msgSend(linkingDescriptor "meshLinkingDescriptor")];
          v44 = [objc_msgSend(objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")];
          v45 = v43 + v44 + [objc_msgSend(objc_msgSend(linkingDescriptor "objectLinkingDescriptor")];
          v10->_meshMaxCallStackDepth = [objc_msgSend(linkingDescriptor "meshLinkingDescriptor")];
          v10->_fragmentMaxCallStackDepth = [objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")];
          v10->_objectMaxCallStackDepth = [objc_msgSend(linkingDescriptor "objectLinkingDescriptor")];
        }

        else
        {
          v45 = 0;
        }

        v58(v57, 16, v45);
        v58(v57, 2, v45);
        v58(v57, 8, v45);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          tileFunctionDescriptor = [descriptor tileFunctionDescriptor];
          tileDebugInstrumentationData = [(MTLToolsObject *)v10->super.super._baseObject tileDebugInstrumentationData];
          v48 = v10->super.super._device;
          v49 = [MTLGPUDebugImageData alloc];
          v10->_tileFunctionData = [(MTLGPUDebugImageData *)v49 initWithFunctionName:getFunctionDescriptorName(tileFunctionDescriptor functionType:v50) debugInstrumentationData:3 device:tileDebugInstrumentationData, v48];
          if (linkingDescriptor)
          {
            v51 = [objc_msgSend(objc_msgSend(linkingDescriptor "tileLinkingDescriptor")];
            v52 = [objc_msgSend(objc_msgSend(linkingDescriptor "tileLinkingDescriptor")] + v51;
            v10->_tileMaxCallStackDepth = [objc_msgSend(linkingDescriptor "tileLinkingDescriptor")];
          }

          else
          {
            v52 = 0;
          }

          v58(v57, 4, v52);
        }
      }
    }

    v53 = [objc_msgSend(descriptor "options")];
    if ([v53 enableBoundsChecking] & 1) != 0 || (objc_msgSend(v53, "enableThreadgroupMemoryChecks") & 1) != 0 || (objc_msgSend(v53, "enableTextureChecks") & 1) != 0 || (objc_msgSend(v53, "enableResourceUsageValidation"))
    {
      v54 = 1;
    }

    else
    {
      enableStackOverflow = [v53 enableStackOverflow];
      v54 = 1;
      if (!enableStackOverflow)
      {
        v54 = 2;
      }
    }

    v10->_shaderValidation = v54;
    v10->_supportsIndirectCommandBuffers = [state supportIndirectCommandBuffers];
    [(MTLGPUDebugRenderPipelineState *)v10 _initConstantsBuffer:state];
  }

  return v10;
}

void *__105__MTLGPUDebugRenderPipelineState_initWithRenderPipelineState_descriptor_dynamicLinkingDescriptor_device___block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return result;
  }

  v4 = result;
  *(result[4] + 56) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v4[5];
  if (!v5)
  {
    v6 = 0;
    goto LABEL_16;
  }

  v6 = 0;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v7 = [v5 vertexLinkingDescriptor];
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_16;
      }

      v7 = [v5 fragmentLinkingDescriptor];
    }
  }

  else
  {
    switch(a2)
    {
      case 4:
        v7 = [v5 tileLinkingDescriptor];
        break;
      case 8:
        v7 = [v5 objectLinkingDescriptor];
        break;
      case 16:
        v7 = [v5 meshLinkingDescriptor];
        break;
      default:
        goto LABEL_16;
    }
  }

  v6 = [v7 binaryLinkedFunctions];
LABEL_16:
  v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [*(v4[4] + 56) addObject:*(*(*(&v22 + 1) + 8 * i) + 48)];
      }

      v9 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v4[5];
  if (!v12)
  {
    v13 = 0;
    goto LABEL_37;
  }

  v13 = 0;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v14 = [v12 vertexLinkingDescriptor];
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_37;
      }

      v14 = [v12 fragmentLinkingDescriptor];
    }
  }

  else
  {
    switch(a2)
    {
      case 4:
        v14 = [v12 tileLinkingDescriptor];
        break;
      case 8:
        v14 = [v12 objectLinkingDescriptor];
        break;
      case 16:
        v14 = [v12 meshLinkingDescriptor];
        break;
      default:
        goto LABEL_37;
    }
  }

  v13 = [v14 preloadedLibraries];
LABEL_37:
  result = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (result)
  {
    v15 = result;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(v4[4] + 56) addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * v17), "imageData", v18)}];
        v17 = (v17 + 1);
      }

      while (v15 != v17);
      result = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      v15 = result;
    }

    while (result);
  }

  return result;
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state originalObject:(id)object descriptor:(id)descriptor device:(id)device
{
  v48.receiver = self;
  v48.super_class = MTLGPUDebugRenderPipelineState;
  v9 = [(MTLToolsRenderPipelineState *)&v48 initWithBaseObject:state parent:device];
  if (v9)
  {
    v9->_supportsIndirectCommandBuffers = [object supportIndirectCommandBuffers];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v44 = __95__MTLGPUDebugRenderPipelineState_initWithRenderPipelineState_originalObject_descriptor_device___block_invoke;
    v45 = &unk_2787B3E00;
    v46 = v9;
    objectCopy = object;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      vertexFunctionDescriptor = [descriptor vertexFunctionDescriptor];
      vertexDebugInstrumentationData = [state vertexDebugInstrumentationData];
      device = v9->super.super._device;
      v13 = [MTLGPUDebugImageData alloc];
      v9->_vertexFunctionData = [(MTLGPUDebugImageData *)v13 initWithFunctionName:getFunctionDescriptorName(vertexFunctionDescriptor functionType:v14) debugInstrumentationData:1 device:vertexDebugInstrumentationData, device];
      fragmentFunctionDescriptor = [descriptor fragmentFunctionDescriptor];
      fragmentDebugInstrumentationData = [state fragmentDebugInstrumentationData];
      v17 = v9->super.super._device;
      v18 = [MTLGPUDebugImageData alloc];
      v9->_fragmentFunctionData = [(MTLGPUDebugImageData *)v18 initWithFunctionName:getFunctionDescriptorName(fragmentFunctionDescriptor functionType:v19) debugInstrumentationData:2 device:fragmentDebugInstrumentationData, v17];
      v9->_vertexMaxCallStackDepth = *(object + 36);
      v20 = &OBJC_IVAR___MTLGPUDebugRenderPipelineState__fragmentMaxCallStackDepth;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        meshFunctionDescriptor = [descriptor meshFunctionDescriptor];
        meshDebugInstrumentationData = [(MTLToolsObject *)v9->super.super._baseObject meshDebugInstrumentationData];
        v23 = v9->super.super._device;
        v24 = [MTLGPUDebugImageData alloc];
        v9->_meshFunctionData = [(MTLGPUDebugImageData *)v24 initWithFunctionName:getFunctionDescriptorName(meshFunctionDescriptor functionType:v25) debugInstrumentationData:7 device:meshDebugInstrumentationData, v23];
        fragmentFunctionDescriptor2 = [descriptor fragmentFunctionDescriptor];
        fragmentDebugInstrumentationData2 = [(MTLToolsObject *)v9->super.super._baseObject fragmentDebugInstrumentationData];
        v28 = v9->super.super._device;
        v29 = [MTLGPUDebugImageData alloc];
        v9->_fragmentFunctionData = [(MTLGPUDebugImageData *)v29 initWithFunctionName:getFunctionDescriptorName(fragmentFunctionDescriptor2 functionType:v30) debugInstrumentationData:2 device:fragmentDebugInstrumentationData2, v28];
        objectFunctionDescriptor = [descriptor objectFunctionDescriptor];
        objectDebugInstrumentationData = [(MTLToolsObject *)v9->super.super._baseObject objectDebugInstrumentationData];
        v33 = v9->super.super._device;
        v34 = [MTLGPUDebugImageData alloc];
        v9->_objectFunctionData = [(MTLGPUDebugImageData *)v34 initWithFunctionName:getFunctionDescriptorName(objectFunctionDescriptor functionType:v35) debugInstrumentationData:8 device:objectDebugInstrumentationData, v33];
        v9->_meshMaxCallStackDepth = *(object + 38);
        v9->_fragmentMaxCallStackDepth = *(object + 37);
        v20 = &OBJC_IVAR___MTLGPUDebugRenderPipelineState__objectMaxCallStackDepth;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_9:
          v9->_shaderValidation = *(object + 16);
          [(MTLGPUDebugRenderPipelineState *)v9 _initConstantsBuffer:state];
          return v9;
        }

        tileFunctionDescriptor = [descriptor tileFunctionDescriptor];
        tileDebugInstrumentationData = [(MTLToolsObject *)v9->super.super._baseObject tileDebugInstrumentationData];
        v38 = v9->super.super._device;
        v39 = [MTLGPUDebugImageData alloc];
        v9->_tileFunctionData = [(MTLGPUDebugImageData *)v39 initWithFunctionName:getFunctionDescriptorName(tileFunctionDescriptor functionType:v40) debugInstrumentationData:3 device:tileDebugInstrumentationData, v38];
        v20 = &OBJC_IVAR___MTLGPUDebugRenderPipelineState__tileMaxCallStackDepth;
      }
    }

    *(&v9->super.super.super.isa + *v20) = *(object + *v20);
    v41 = [*(object + 7) count];
    v44(v43, v41);
    goto LABEL_9;
  }

  return v9;
}

void *__95__MTLGPUDebugRenderPipelineState_initWithRenderPipelineState_originalObject_descriptor_device___block_invoke(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a2];
    *(v2[4] + 56) = result;
    if (*(v2[5] + 56))
    {
      v3 = *(v2[4] + 56);

      return [v3 addObjectsFromArray:?];
    }
  }

  return result;
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state vertexBinaryFunctions:(id)functions fragmentBinaryFunctions:(id)binaryFunctions tileBinaryFunctions:(id)tileBinaryFunctions objectBinaryFunctions:(id)objectBinaryFunctions meshBinaryFunctions:(id)meshBinaryFunctions withState:(id)withState device:(id)self0
{
  v47[5] = *MEMORY[0x277D85DE8];
  self->_supportsIndirectCommandBuffers = [withState supportIndirectCommandBuffers];
  v44.receiver = self;
  v44.super_class = MTLGPUDebugRenderPipelineState;
  v17 = [(MTLToolsRenderPipelineState *)&v44 initWithBaseObject:state parent:device];
  if (v17)
  {
    stateCopy = state;
    [functions count];
    [binaryFunctions count];
    [tileBinaryFunctions count];
    [objectBinaryFunctions count];
    [meshBinaryFunctions count];
    v17->_vertexFunctionData = [withState vertexFunctionData];
    v17->_fragmentFunctionData = [withState fragmentFunctionData];
    v17->_tileFunctionData = [withState tileFunctionData];
    v17->_objectFunctionData = [withState objectFunctionData];
    v17->_meshFunctionData = [withState meshFunctionData];
    v18 = [objc_msgSend(withState "binaryFunctionData")];
    v19 = [functions count];
    v20 = v19 + [binaryFunctions count];
    v21 = v20 + [tileBinaryFunctions count];
    v22 = v21 + [objectBinaryFunctions count];
    v23 = v22 + [meshBinaryFunctions count] + v18;
    if (v23)
    {
      v17->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v23];
    }

    if ([withState binaryFunctionData])
    {
      -[NSMutableArray addObjectsFromArray:](v17->_binaryFunctionData, "addObjectsFromArray:", [withState binaryFunctionData]);
    }

    v47[0] = functions;
    v47[1] = binaryFunctions;
    v47[2] = tileBinaryFunctions;
    v47[3] = objectBinaryFunctions;
    v47[4] = meshBinaryFunctions;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:5];
    v24 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v41;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v40 + 1) + 8 * i);
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v29 = [v28 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v37;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v37 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v36 + 1) + 8 * j) + 48)];
              }

              v30 = [v28 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v30);
          }
        }

        v25 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v25);
    }

    v17->_shaderValidation = [withState shaderValidation];
    [(MTLGPUDebugRenderPipelineState *)v17 _initConstantsBuffer:stateCopy];
  }

  return v17;
}

- (id)functionHandleWithName:(id)name stage:(unint64_t)stage
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  functionHandleObjectCache = self->super.super._device->functionHandleObjectCache;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __63__MTLGPUDebugRenderPipelineState_functionHandleWithName_stage___block_invoke;
  v12 = &unk_2787B3E28;
  v13 = v6;
  selfCopy = self;
  stageCopy = stage;
  return [MTLToolsObjectCache getCachedObjectForKey:"getCachedObjectForKey:onMiss:" onMiss:?];
}

MTLGPUDebugFunctionHandle *__63__MTLGPUDebugRenderPipelineState_functionHandleWithName_stage___block_invoke(void *a1)
{
  v2 = [MTLGPUDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLGPUDebugFunctionHandle *)v2 initWithFunctionHandle:v3 renderPipelineState:v4 stage:v5];
}

- (id)functionHandleWithBinaryFunction:(id)function stage:(unint64_t)stage
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  functionHandleObjectCache = self->super.super._device->functionHandleObjectCache;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __73__MTLGPUDebugRenderPipelineState_functionHandleWithBinaryFunction_stage___block_invoke;
  v12 = &unk_2787B3E28;
  v13 = v6;
  selfCopy = self;
  stageCopy = stage;
  return [MTLToolsObjectCache getCachedObjectForKey:"getCachedObjectForKey:onMiss:" onMiss:?];
}

MTLGPUDebugFunctionHandle *__73__MTLGPUDebugRenderPipelineState_functionHandleWithBinaryFunction_stage___block_invoke(void *a1)
{
  v2 = [MTLGPUDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLGPUDebugFunctionHandle *)v2 initWithFunctionHandle:v3 renderPipelineState:v4 stage:v5];
}

- (id)newRenderPipelineStateWithBinaryFunctions:(id)functions error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(MTLDevice *)[(MTLToolsRenderPipelineState *)self device] newUnwrappedMTL4RenderPipelineBinaryFunctionsDescriptor:functions];
  v19 = 0;
  if (!error)
  {
    error = &v19;
  }

  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v20[0] = xmmword_22E27C140;
  v20[1] = unk_22E27C150;
  v21 = 16;
  v17 = 0;
  v18 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, v20, &v22, 5uLL);
  v8 = __p;
  v9 = v17;
  while (v8 != v9)
  {
    v10 = 0;
    v11 = *v8;
    if (*v8 <= 3)
    {
      if (v11 == 1)
      {
        vertexDebugInstrumentationData = [v7 vertexDebugInstrumentationData];
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_27;
        }

        vertexDebugInstrumentationData = [v7 fragmentDebugInstrumentationData];
      }
    }

    else
    {
      switch(v11)
      {
        case 4:
          vertexDebugInstrumentationData = [v7 tileDebugInstrumentationData];
          break;
        case 8:
          vertexDebugInstrumentationData = [v7 objectDebugInstrumentationData];
          break;
        case 16:
          vertexDebugInstrumentationData = [v7 meshDebugInstrumentationData];
          break;
        default:
          goto LABEL_27;
      }
    }

    if (vertexDebugInstrumentationData)
    {
      goto LABEL_28;
    }

    if (v11 <= 3)
    {
      if (v11 == 1)
      {
        vertexDebugInstrumentationData2 = [(MTLToolsRenderPipelineState *)self vertexDebugInstrumentationData];
      }

      else
      {
        vertexDebugInstrumentationData2 = [(MTLToolsRenderPipelineState *)self fragmentDebugInstrumentationData];
      }
    }

    else if (v11 == 4)
    {
      vertexDebugInstrumentationData2 = [(MTLToolsRenderPipelineState *)self tileDebugInstrumentationData];
    }

    else if (v11 == 8)
    {
      vertexDebugInstrumentationData2 = [(MTLToolsRenderPipelineState *)self objectDebugInstrumentationData];
    }

    else
    {
      vertexDebugInstrumentationData2 = [(MTLToolsRenderPipelineState *)self meshDebugInstrumentationData];
    }

    v10 = vertexDebugInstrumentationData2;
LABEL_27:
    [v7 setDebugInstrumentationDataForStage:v10 stage:v11];
LABEL_28:
    ++v8;
  }

  v14 = -[MTLGPUDebugRenderPipelineState initWithRenderPipelineState:vertexBinaryFunctions:fragmentBinaryFunctions:tileBinaryFunctions:objectBinaryFunctions:meshBinaryFunctions:withState:device:]([MTLGPUDebugRenderPipelineState alloc], "initWithRenderPipelineState:vertexBinaryFunctions:fragmentBinaryFunctions:tileBinaryFunctions:objectBinaryFunctions:meshBinaryFunctions:withState:device:", v7, [v6 vertexAdditionalBinaryFunctions], objc_msgSend(v6, "fragmentAdditionalBinaryFunctions"), objc_msgSend(v6, "tileAdditionalBinaryFunctions"), objc_msgSend(v6, "objectAdditionalBinaryFunctions"), objc_msgSend(v6, "meshAdditionalBinaryFunctions"), self, self->super.super._device);

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return v14;
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state tileDescriptor:(id)descriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options
{
  v41 = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = MTLGPUDebugRenderPipelineState;
  v12 = [(MTLToolsRenderPipelineState *)&v38 initWithBaseObject:state parent:device];
  if (v12)
  {
    if ((*(device + 292) & 2) != 0)
    {
      v12->_retainedFunctions = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    }

    optionsCopy = options;
    if ([descriptor tileFunction])
    {
      v12->_tileMaxCallStackDepth = [descriptor maxCallStackDepth];
      tileFunction = [descriptor tileFunction];
      v12->_tileFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", tileFunction, [state tileDebugInstrumentationData]);
      [(NSMutableArray *)v12->_retainedFunctions addObject:tileFunction];
    }

    v14 = [objc_msgSend(objc_msgSend(descriptor "linkedFunctions")];
    v15 = [objc_msgSend(descriptor "preloadedLibraries")] + v14;
    if (v15)
    {
      v12->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v15];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v16 = [objc_msgSend(descriptor "linkedFunctions")];
      v17 = [v16 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v35;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [(NSMutableArray *)v12->_binaryFunctionData addObject:*(*(*(&v34 + 1) + 8 * i) + 48)];
          }

          v18 = [v16 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v18);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      preloadedLibraries = [descriptor preloadedLibraries];
      v22 = [preloadedLibraries countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v31;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v31 != v24)
            {
              objc_enumerationMutation(preloadedLibraries);
            }

            -[NSMutableArray addObject:](v12->_binaryFunctionData, "addObject:", [*(*(&v30 + 1) + 8 * j) imageData]);
          }

          v23 = [preloadedLibraries countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v23);
      }
    }

    v12->_internalReflection = v28;
    v12->_supportsIndirectCommandBuffers = 0;
    v26 = 1;
    if ((optionsCopy & 0x800000000) == 0)
    {
      v26 = 2;
    }

    v12->_shaderValidation = v26;
    v12->_shaderValidationState = v26;
    v12->_userReflection = [objc_alloc(MEMORY[0x277CD6F90]) initWithTileData:objc_msgSend(objc_msgSend(state tileDynamicLibraries:"tileDebugInstrumentationData") functionType:"userReflectionData") device:objc_msgSend(objc_msgSend(state options:"tileDebugInstrumentationData") flags:{"linkedDynamicLibraries"), objc_msgSend(objc_msgSend(descriptor, "tileFunction"), "functionType"), objc_msgSend(device, "baseObject"), 3, 0}];
    [objc_msgSend(state "tileDebugInstrumentationData")];
    [(MTLRenderPipelineReflection *)v12->_userReflection setPerformanceStatistics:[(MTLRenderPipelineReflection *)v12->_internalReflection performanceStatistics]];
    [(MTLGPUDebugRenderPipelineState *)v12 _initConstantsBuffer:state];
  }

  return v12;
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)state meshDescriptor:(id)descriptor unwrappedDescriptor:(id)unwrappedDescriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options
{
  v84 = *MEMORY[0x277D85DE8];
  v77.receiver = self;
  v77.super_class = MTLGPUDebugRenderPipelineState;
  unwrappedDescriptor = [(MTLToolsRenderPipelineState *)&v77 initWithBaseObject:state parent:device, unwrappedDescriptor];
  if (unwrappedDescriptor)
  {
    if ((*(device + 292) & 2) != 0)
    {
      unwrappedDescriptor->_retainedFunctions = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    }

    if ([descriptor meshFunction])
    {
      unwrappedDescriptor->_meshMaxCallStackDepth = [descriptor maxMeshCallStackDepth];
      meshFunction = [descriptor meshFunction];
      unwrappedDescriptor->_meshFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", meshFunction, [state meshDebugInstrumentationData]);
      [(NSMutableArray *)unwrappedDescriptor->_retainedFunctions addObject:meshFunction];
    }

    if ([descriptor objectFunction])
    {
      unwrappedDescriptor->_objectMaxCallStackDepth = [descriptor maxObjectCallStackDepth];
      objectFunction = [descriptor objectFunction];
      unwrappedDescriptor->_objectFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", objectFunction, [state objectDebugInstrumentationData]);
      [(NSMutableArray *)unwrappedDescriptor->_retainedFunctions addObject:objectFunction];
    }

    if ([descriptor fragmentFunction])
    {
      unwrappedDescriptor->_fragmentMaxCallStackDepth = [descriptor maxFragmentCallStackDepth];
      fragmentFunction = [descriptor fragmentFunction];
      unwrappedDescriptor->_fragmentFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", fragmentFunction, [state fragmentDebugInstrumentationData]);
      [(NSMutableArray *)unwrappedDescriptor->_retainedFunctions addObject:fragmentFunction];
    }

    v16 = [objc_msgSend(objc_msgSend(descriptor "meshLinkedFunctions")];
    v17 = [objc_msgSend(objc_msgSend(descriptor "objectLinkedFunctions")] + v16;
    v18 = [objc_msgSend(descriptor "meshPreloadedLibraries")];
    v19 = v17 + v18 + [objc_msgSend(descriptor "objectPreloadedLibraries")];
    if (v19)
    {
      unwrappedDescriptor->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v19];
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v20 = [objc_msgSend(descriptor "meshLinkedFunctions")];
      v21 = [v20 countByEnumeratingWithState:&v73 objects:v83 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v74;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v74 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [(NSMutableArray *)unwrappedDescriptor->_binaryFunctionData addObject:*(*(*(&v73 + 1) + 8 * i) + 48)];
          }

          v22 = [v20 countByEnumeratingWithState:&v73 objects:v83 count:16];
        }

        while (v22);
      }

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v25 = [objc_msgSend(descriptor "objectLinkedFunctions")];
      v26 = [v25 countByEnumeratingWithState:&v69 objects:v82 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v70;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v70 != v28)
            {
              objc_enumerationMutation(v25);
            }

            [(NSMutableArray *)unwrappedDescriptor->_binaryFunctionData addObject:*(*(*(&v69 + 1) + 8 * j) + 48)];
          }

          v27 = [v25 countByEnumeratingWithState:&v69 objects:v82 count:16];
        }

        while (v27);
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v30 = [objc_msgSend(descriptor "fragmentLinkedFunctions")];
      v31 = [v30 countByEnumeratingWithState:&v65 objects:v81 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v66;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v66 != v33)
            {
              objc_enumerationMutation(v30);
            }

            [(NSMutableArray *)unwrappedDescriptor->_binaryFunctionData addObject:*(*(*(&v65 + 1) + 8 * k) + 48)];
          }

          v32 = [v30 countByEnumeratingWithState:&v65 objects:v81 count:16];
        }

        while (v32);
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      meshPreloadedLibraries = [descriptor meshPreloadedLibraries];
      v36 = [meshPreloadedLibraries countByEnumeratingWithState:&v61 objects:v80 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v62;
        do
        {
          for (m = 0; m != v37; ++m)
          {
            if (*v62 != v38)
            {
              objc_enumerationMutation(meshPreloadedLibraries);
            }

            -[NSMutableArray addObject:](unwrappedDescriptor->_binaryFunctionData, "addObject:", [*(*(&v61 + 1) + 8 * m) imageData]);
          }

          v37 = [meshPreloadedLibraries countByEnumeratingWithState:&v61 objects:v80 count:16];
        }

        while (v37);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      objectPreloadedLibraries = [descriptor objectPreloadedLibraries];
      v41 = [objectPreloadedLibraries countByEnumeratingWithState:&v57 objects:v79 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v58;
        do
        {
          for (n = 0; n != v42; ++n)
          {
            if (*v58 != v43)
            {
              objc_enumerationMutation(objectPreloadedLibraries);
            }

            -[NSMutableArray addObject:](unwrappedDescriptor->_binaryFunctionData, "addObject:", [*(*(&v57 + 1) + 8 * n) imageData]);
          }

          v42 = [objectPreloadedLibraries countByEnumeratingWithState:&v57 objects:v79 count:16];
        }

        while (v42);
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      fragmentPreloadedLibraries = [descriptor fragmentPreloadedLibraries];
      v46 = [fragmentPreloadedLibraries countByEnumeratingWithState:&v53 objects:v78 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v54;
        do
        {
          for (ii = 0; ii != v47; ++ii)
          {
            if (*v54 != v48)
            {
              objc_enumerationMutation(fragmentPreloadedLibraries);
            }

            -[NSMutableArray addObject:](unwrappedDescriptor->_binaryFunctionData, "addObject:", [*(*(&v53 + 1) + 8 * ii) imageData]);
          }

          v47 = [fragmentPreloadedLibraries countByEnumeratingWithState:&v53 objects:v78 count:16];
        }

        while (v47);
      }
    }

    unwrappedDescriptor->_supportsIndirectCommandBuffers = [descriptor supportIndirectCommandBuffers];
    v50 = 1;
    if ((options & 0x800000000) == 0)
    {
      v50 = 2;
    }

    unwrappedDescriptor->_shaderValidation = v50;
    unwrappedDescriptor->_shaderValidationState = v50;
    unwrappedDescriptor->_internalReflection = reflection;
    if ([objc_msgSend(state "objectDebugInstrumentationData")] || objc_msgSend(objc_msgSend(state, "meshDebugInstrumentationData"), "userReflectionData") || objc_msgSend(objc_msgSend(state, "fragmentDebugInstrumentationData"), "userReflectionData"))
    {
      unwrappedDescriptor->_userReflection = [objc_alloc(MEMORY[0x277CD6F90]) initWithObjectData:objc_msgSend(objc_msgSend(state objectDynamicLibraries:"objectDebugInstrumentationData") meshData:"userReflectionData") meshDynamicLibraries:objc_msgSend(objc_msgSend(state fragmentData:"objectDebugInstrumentationData") fragmentDynamicLibraries:"linkedDynamicLibraries") device:objc_msgSend(objc_msgSend(state options:"meshDebugInstrumentationData") flags:{"userReflectionData"), objc_msgSend(objc_msgSend(state, "meshDebugInstrumentationData"), "linkedDynamicLibraries"), objc_msgSend(objc_msgSend(state, "fragmentDebugInstrumentationData"), "userReflectionData"), objc_msgSend(objc_msgSend(state, "fragmentDebugInstrumentationData"), "linkedDynamicLibraries"), objc_msgSend(device, "baseObject"), options, 0}];
      [objc_msgSend(state "objectDebugInstrumentationData")];
      [objc_msgSend(state "meshDebugInstrumentationData")];
      [objc_msgSend(state "fragmentDebugInstrumentationData")];
    }

    [(MTLRenderPipelineReflection *)unwrappedDescriptor->_userReflection setPerformanceStatistics:[(MTLRenderPipelineReflection *)unwrappedDescriptor->_internalReflection performanceStatistics]];
    [(MTLGPUDebugRenderPipelineState *)unwrappedDescriptor _initConstantsBuffer:state];
  }

  return unwrappedDescriptor;
}

- (id)unwrapBinaryFunctions:(id)functions
{
  v16 = *MEMORY[0x277D85DE8];
  device = [(MTLToolsRenderPipelineState *)self device];
  if (![functions count])
  {
    return 0;
  }

  [(MTLDevice *)device baseObject];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(functions, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [functions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(functions);
        }

        [v5 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "baseObject")}];
      }

      v7 = [functions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v5;
}

MTLGPUDebugFunctionHandle *__67__MTLGPUDebugRenderPipelineState_functionHandleWithFunction_stage___block_invoke(void *a1)
{
  v2 = [MTLGPUDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v5 = a1[7];

  return [(MTLGPUDebugFunctionHandle *)v2 initWithFunctionHandle:v3 renderPipelineState:v4 stage:v5 function:v6];
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions fragmentAdditionalBinaryFunctions:(id)binaryFunctions error:(id *)error
{
  v9 = objc_opt_new();
  [v9 setVertexAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", functions)}];
  [v9 setFragmentAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", binaryFunctions)}];
  v14 = 0;
  if (!error)
  {
    error = &v14;
  }

  v10 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (![v10 vertexDebugInstrumentationData])
  {
    [v10 setVertexDebugInstrumentationData:{-[MTLToolsRenderPipelineState vertexDebugInstrumentationData](self, "vertexDebugInstrumentationData")}];
  }

  if (![v10 fragmentDebugInstrumentationData])
  {
    [v10 setFragmentDebugInstrumentationData:{-[MTLToolsRenderPipelineState fragmentDebugInstrumentationData](self, "fragmentDebugInstrumentationData")}];
  }

  v11 = [MTLGPUDebugRenderPipelineState alloc];
  v12 = [(MTLGPUDebugRenderPipelineState *)v11 initWithRenderPipelineState:v10 vertexBinaryFunctions:functions fragmentBinaryFunctions:binaryFunctions tileBinaryFunctions:MEMORY[0x277CBEBF8] objectBinaryFunctions:MEMORY[0x277CBEBF8] meshBinaryFunctions:MEMORY[0x277CBEBF8] withState:self device:self->super.super._device pipelineOptions:0, v14];

  return v12;
}

- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error
{
  v6 = [(MTLGPUDebugRenderPipelineState *)self unwrapBinaryFunctions:functions];
  v12 = 0;
  if (error)
  {
    errorCopy = error;
  }

  else
  {
    errorCopy = &v12;
  }

  v8 = [(MTLToolsObject *)self->super.super._baseObject newTileRenderPipelineStateWithAdditionalBinaryFunctions:v6 error:errorCopy];

  if (![v8 tileDebugInstrumentationData])
  {
    [v8 setTileDebugInstrumentationData:{objc_msgSend(v8, "tileDebugInstrumentationData")}];
  }

  v9 = [MTLGPUDebugRenderPipelineState alloc];
  v10 = [(MTLGPUDebugRenderPipelineState *)v9 initWithRenderPipelineState:v8 vertexBinaryFunctions:MEMORY[0x277CBEBF8] fragmentBinaryFunctions:MEMORY[0x277CBEBF8] tileBinaryFunctions:v6 objectBinaryFunctions:MEMORY[0x277CBEBF8] meshBinaryFunctions:MEMORY[0x277CBEBF8] withState:self device:self->super.super._device pipelineOptions:0, v12];

  return v10;
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error
{
  v7 = objc_opt_new();
  [v7 setVertexAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(functions, "vertexAdditionalBinaryFunctions"))}];
  [v7 setFragmentAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(functions, "fragmentAdditionalBinaryFunctions"))}];
  [v7 setTileAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(functions, "tileAdditionalBinaryFunctions"))}];
  [v7 setObjectAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(functions, "objectAdditionalBinaryFunctions"))}];
  [v7 setMeshAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(functions, "meshAdditionalBinaryFunctions"))}];
  v17 = 0;
  if (!error)
  {
    error = &v17;
  }

  v8 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (![v8 vertexDebugInstrumentationData])
  {
    [v8 setVertexDebugInstrumentationData:{-[MTLToolsRenderPipelineState vertexDebugInstrumentationData](self, "vertexDebugInstrumentationData")}];
  }

  if (![v8 fragmentDebugInstrumentationData])
  {
    [v8 setFragmentDebugInstrumentationData:{-[MTLToolsRenderPipelineState fragmentDebugInstrumentationData](self, "fragmentDebugInstrumentationData")}];
  }

  if (![v8 tileDebugInstrumentationData])
  {
    [v8 setTileDebugInstrumentationData:{-[MTLToolsRenderPipelineState tileDebugInstrumentationData](self, "tileDebugInstrumentationData")}];
  }

  if (![v8 objectDebugInstrumentationData])
  {
    [v8 setObjectDebugInstrumentationData:{-[MTLToolsRenderPipelineState objectDebugInstrumentationData](self, "objectDebugInstrumentationData")}];
  }

  if (![v8 meshDebugInstrumentationData])
  {
    [v8 setMeshDebugInstrumentationData:{-[MTLToolsRenderPipelineState meshDebugInstrumentationData](self, "meshDebugInstrumentationData")}];
  }

  v9 = [MTLGPUDebugRenderPipelineState alloc];
  vertexAdditionalBinaryFunctions = [functions vertexAdditionalBinaryFunctions];
  fragmentAdditionalBinaryFunctions = [functions fragmentAdditionalBinaryFunctions];
  tileAdditionalBinaryFunctions = [functions tileAdditionalBinaryFunctions];
  objectAdditionalBinaryFunctions = [functions objectAdditionalBinaryFunctions];
  meshAdditionalBinaryFunctions = [functions meshAdditionalBinaryFunctions];
  v15 = [(MTLGPUDebugRenderPipelineState *)v9 initWithRenderPipelineState:v8 vertexBinaryFunctions:vertexAdditionalBinaryFunctions fragmentBinaryFunctions:fragmentAdditionalBinaryFunctions tileBinaryFunctions:tileAdditionalBinaryFunctions objectBinaryFunctions:objectAdditionalBinaryFunctions meshBinaryFunctions:meshAdditionalBinaryFunctions withState:self device:self->super.super._device pipelineOptions:0, v17];

  return v15;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLGPUDebugVisibleFunctionTable alloc] initWithVisibleFunctionTable:result descriptor:descriptor renderPipeline:self stage:stage];

    return v9;
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLGPUDebugIntersectionFunctionTable alloc] initWithIntersectionFunctionTable:result device:[(MTLToolsRenderPipelineState *)self device] descriptor:descriptor renderPipelineState:self stage:stage];

    return v9;
  }

  return result;
}

- (void)releaseReflection
{
  self->_internalReflection = 0;

  self->_userReflection = 0;
}

- (MTLGPUDebugBuffer)vertexConstantsBuffer
{
  vertexFunctionData = self->_vertexFunctionData;
  if (vertexFunctionData)
  {
    return *(vertexFunctionData + 1);
  }

  else
  {
    return 0;
  }
}

- (MTLGPUDebugBuffer)fragmentConstantsBuffer
{
  fragmentFunctionData = self->_fragmentFunctionData;
  if (fragmentFunctionData)
  {
    return *(fragmentFunctionData + 1);
  }

  else
  {
    return 0;
  }
}

- (MTLGPUDebugBuffer)tileConstantsBuffer
{
  tileFunctionData = self->_tileFunctionData;
  if (tileFunctionData)
  {
    return *(tileFunctionData + 1);
  }

  else
  {
    return 0;
  }
}

- (MTLGPUDebugBuffer)objectConstantsBuffer
{
  objectFunctionData = self->_objectFunctionData;
  if (objectFunctionData)
  {
    return *(objectFunctionData + 1);
  }

  else
  {
    return 0;
  }
}

- (MTLGPUDebugBuffer)meshConstantsBuffer
{
  meshFunctionData = self->_meshFunctionData;
  if (meshFunctionData)
  {
    return *(meshFunctionData + 1);
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_supportsIndirectCommandBuffers)
  {
    GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, self->_indirectStateBuffer);

    if ([(MTLGPUDebugRenderPipelineState *)self vertexConstantsBuffer])
    {
      GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self vertexConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self fragmentConstantsBuffer])
    {
      GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self fragmentConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self tileConstantsBuffer])
    {
      GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self tileConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self objectConstantsBuffer])
    {
      GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self objectConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self meshConstantsBuffer])
    {
      GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self meshConstantsBuffer]);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    binaryFunctionData = self->_binaryFunctionData;
    v4 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(binaryFunctionData);
          }

          v8 = *(*(*(&v10 + 1) + 8 * i) + 8);
          if (v8)
          {
            GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, v8);
          }
        }

        v5 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderPipelineState;
  [(MTLToolsRenderPipelineState *)&v9 dealloc];
}

@end