@interface SCNMTLDeformerStack
- (Class)deformerClassForMeshlesshGeometry:(__C3DGeometry *)geometry;
- (MTLBlitCommandEncoder)currentBlitEncoder;
- (SCNMTLComputeCommandEncoder)currentComputeEncoder;
- (__CFString)_baseEntityName;
- (__n128)_currentFrustumInfo;
- (__n128)currentTransforms;
- (id)deindexedToFirstDeindexedTableBufferWithBlitEncoder:(id)encoder indexSizeOut:(unint64_t *)out;
- (id)deindexedToOriginalTableBufferWithBlitEncoder:(id)encoder indexSizeOut:(unint64_t *)out;
- (id)dependencyBufferForInput:(unint64_t)input dependencyMesh:(id)mesh;
- (id)dependencyBufferForInput:(unint64_t)input dependencyStack:(id)stack;
- (id)newBufferForDataKind:(unsigned __int8)kind meshSource:(__C3DMeshSource *)source dataType:(signed __int16)type forStageInputOutputDescriptor:(BOOL)descriptor usePrivateStorageMode:(BOOL)mode outStride:(unint64_t *)stride;
- (id)newBufferForDataKind:(unsigned __int8)kind positionSource:(__C3DMeshSource *)source normalSource:(__C3DMeshSource *)normalSource positionDataType:(signed __int16)type normalDataType:(signed __int16)dataType forStageInputOutputDescriptor:(BOOL)descriptor usePrivateStorageMode:(BOOL)mode outStride:(unint64_t *)self0 outPositionOffset:(unint64_t *)self1 outNormalOffset:(unint64_t *)self2;
- (id)originalToFirstDeindexedTableBufferWithBlitEncoder:(id)encoder indexSizeOut:(unint64_t *)out;
- (uint64_t)bufferForCommonProfileArgumentNamed:(uint64_t)result;
- (uint64_t)computeDeformedMeshForContext:(unsigned __int8)context programHashCodeRequirements:(const void *)requirements transforms:(const void *)transforms frustumInfo:(_BOOL8 *)info status:;
- (uint64_t)computeDeformedMeshReliesOnFrustum;
- (uint64_t)computeDeformedMeshReliesOnTransforms;
- (uint64_t)invalidate;
- (uint64_t)setNextUpdateRequiresResetForIncrementalDeformers;
- (unint64_t)currentFrameHash;
- (void)dealloc;
- (void)drawAuthoringEnvironment:(uint64_t)environment context:;
- (void)encodeCommandsInNewCommandBufferUsingBlock:(id)block;
- (void)enumerateInternalDeformersUsingBlock:(id)block;
- (void)initWithDeformerStack:(uint64_t)stack node:(char)node dataKind:(uint64_t)kind resourceManager:;
- (void)reconfigureIfNeededWithContext:(id)context programHashCodeRequirements:(id)requirements;
- (void)setStageInputOutputBuffersToEncoder:(SCNMTLComputeCommandEncoder *)encoder;
- (void)setupFinalMeshFromBaseMeshWithInfo:(id)info;
- (void)setupFinalMeshFromMeshlessBaseGeometryWithInfo:(id)info;
- (void)setupInitialBuffersWithBasePositionSourceProvider:(id)provider baseNormalSourceProvider:(id)sourceProvider baseTangentSourceProvider:(id)tangentSourceProvider info:(id)info;
- (void)updateDataForAuthoringEnvironment:(uint64_t)environment transforms:(uint64_t)transforms context:;
- (void)updateDependencyBuffersInBufferArray:(id *)array forDeformer:(id)deformer;
@end

@implementation SCNMTLDeformerStack

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLDeformerStack;
  [(SCNMTLDeformerStack *)&v3 dealloc];
}

- (__CFString)_baseEntityName
{
  baseMesh = self->_baseMesh;
  if (!baseMesh || (result = C3DEntityGetName(baseMesh, a2)) == 0)
  {
    baseGeometry = self->_baseGeometry;

    return C3DEntityGetName(baseGeometry, a2);
  }

  return result;
}

- (Class)deformerClassForMeshlesshGeometry:(__C3DGeometry *)geometry
{
  v3 = CFGetTypeID(geometry);
  TypeID = C3DBezierCurveGeometryGetTypeID(v3, v4);
  if (v3 == TypeID)
  {

    return objc_opt_class();
  }

  else
  {
    v8 = scn_default_log(TypeID, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLDeformerStack deformerClassForMeshlesshGeometry:];
    }

    return 0;
  }
}

- (void)enumerateInternalDeformersUsingBlock:(id)block
{
  if (self->_morphDeformer)
  {
    (*(block + 2))(block);
  }

  if (self->_skinDeformer)
  {
    (*(block + 2))(block);
  }

  if (self->_meshlessDeformer)
  {
    (*(block + 2))(block);
  }

  if (self->_smoothNormalsDeformer)
  {
    v5 = *(block + 2);

    v5(block);
  }
}

- (void)setupInitialBuffersWithBasePositionSourceProvider:(id)provider baseNormalSourceProvider:(id)sourceProvider baseTangentSourceProvider:(id)tangentSourceProvider info:(id)info
{
  v6 = *&info.var0;
  initialPositionBuffer = self->_initialPositionBuffer;
  if (initialPositionBuffer)
  {
    CFRelease(initialPositionBuffer);
    self->_initialPositionBuffer = 0;
  }

  initialNormalBuffer = self->_initialNormalBuffer;
  if (initialNormalBuffer)
  {
    CFRelease(initialNormalBuffer);
    self->_initialNormalBuffer = 0;
  }

  initialTangentBuffer = self->_initialTangentBuffer;
  if (initialTangentBuffer)
  {
    CFRelease(initialTangentBuffer);
    self->_initialTangentBuffer = 0;
  }

  initialBuffersStageInputDescriptor = self->_initialBuffersStageInputDescriptor;
  if (initialBuffersStageInputDescriptor)
  {
    CFRelease(initialBuffersStageInputDescriptor);
    self->_initialBuffersStageInputDescriptor = 0;
  }

  self->_initialPositionStageInputOutputDescriptorInfo.isActive = 0;
  self->_initialNormalStageInputOutputDescriptorInfo.isActive = 0;
  self->_initialTangentStageInputOutputDescriptorInfo.isActive = 0;
  if ((v6 & 0x100010001) != 0)
  {
    self->_initialBuffersStageInputDescriptor = objc_alloc_init(MEMORY[0x277CD6FF0]);
    v15 = (*(provider + 2))(provider, self->_deformDataKind);
    C3DMeshSourceGetCount(v15, v16);
    if (v6)
    {
      v17 = [(MTLAttributeDescriptorArray *)[(MTLStageInputOutputDescriptor *)self->_initialBuffersStageInputDescriptor attributes] objectAtIndexedSubscript:0];
      [(MTLAttributeDescriptor *)v17 setFormat:30];
      [(MTLAttributeDescriptor *)v17 setOffset:0];
      [(MTLAttributeDescriptor *)v17 setBufferIndex:10];
      v18 = [(MTLBufferLayoutDescriptorArray *)[(MTLStageInputOutputDescriptor *)self->_initialBuffersStageInputDescriptor layouts] objectAtIndexedSubscript:[(MTLAttributeDescriptor *)v17 bufferIndex]];
      [(MTLBufferLayoutDescriptor *)v18 setStepFunction:5];
      if ((v6 & 0x100) != 0)
      {
        v64 = 0;
        self->_initialPositionBuffer = [(SCNMTLDeformerStack *)self newBufferForDataKind:self->_deformDataKind meshSource:v15 dataType:9 forStageInputOutputDescriptor:1 usePrivateStorageMode:1 outStride:&v64];
        v22 = v64;
        v21 = v18;
      }

      else
      {
        Size = SCNMTLVertexFormatGetSize(30);
        [SCNMTLResourceManager newBufferWithLength:? options:?];
        self->_initialPositionBuffer = v20;
        v21 = v18;
        v22 = Size;
      }

      [(MTLBufferLayoutDescriptor *)v21 setStride:v22];
      format = [(MTLAttributeDescriptor *)v17 format];
      offset = [(MTLAttributeDescriptor *)v17 offset];
      stride = [(MTLBufferLayoutDescriptor *)v18 stride];
      self->_initialPositionStageInputOutputDescriptorInfo.isActive = 1;
      self->_initialPositionStageInputOutputDescriptorInfo.bufferAttributeFormat = format;
      self->_initialPositionStageInputOutputDescriptorInfo.bufferAttributeOffset = offset;
      self->_initialPositionStageInputOutputDescriptorInfo.bufferLayoutStride = stride;
      if ((v6 & 0x10000) == 0)
      {
LABEL_12:
        if ((v6 & 0x100000000) == 0)
        {
          return;
        }

        goto LABEL_25;
      }
    }

    else if ((v6 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    v26 = [(MTLAttributeDescriptorArray *)[(MTLStageInputOutputDescriptor *)self->_initialBuffersStageInputDescriptor attributes] objectAtIndexedSubscript:1];
    [(MTLAttributeDescriptor *)v26 setFormat:30];
    [(MTLAttributeDescriptor *)v26 setOffset:0];
    [(MTLAttributeDescriptor *)v26 setBufferIndex:11];
    v27 = [(MTLBufferLayoutDescriptorArray *)[(MTLStageInputOutputDescriptor *)self->_initialBuffersStageInputDescriptor layouts] objectAtIndexedSubscript:[(MTLAttributeDescriptor *)v26 bufferIndex]];
    [(MTLBufferLayoutDescriptor *)v27 setStepFunction:5];
    if ((v6 & 0x1000000) != 0)
    {
      v33 = (*(sourceProvider + 2))(sourceProvider, self->_deformDataKind);
      if (!v33)
      {
        v34 = scn_default_log(0, v32);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          [(SCNMTLDeformerStack *)v34 setupInitialBuffersWithBasePositionSourceProvider:v35 baseNormalSourceProvider:v36 baseTangentSourceProvider:v37 info:v38, v39, v40, v41];
        }
      }

      v64 = 0;
      self->_initialNormalBuffer = [(SCNMTLDeformerStack *)self newBufferForDataKind:self->_deformDataKind meshSource:v33 dataType:9 forStageInputOutputDescriptor:1 usePrivateStorageMode:1 outStride:&v64];
      v31 = v64;
      v30 = v27;
    }

    else
    {
      v28 = SCNMTLVertexFormatGetSize(30);
      [SCNMTLResourceManager newBufferWithLength:? options:?];
      self->_initialNormalBuffer = v29;
      v30 = v27;
      v31 = v28;
    }

    [(MTLBufferLayoutDescriptor *)v30 setStride:v31];
    format2 = [(MTLAttributeDescriptor *)v26 format];
    offset2 = [(MTLAttributeDescriptor *)v26 offset];
    stride2 = [(MTLBufferLayoutDescriptor *)v27 stride];
    self->_initialNormalStageInputOutputDescriptorInfo.isActive = 1;
    self->_initialNormalStageInputOutputDescriptorInfo.bufferAttributeFormat = format2;
    self->_initialNormalStageInputOutputDescriptorInfo.bufferAttributeOffset = offset2;
    self->_initialNormalStageInputOutputDescriptorInfo.bufferLayoutStride = stride2;
    if ((v6 & 0x100000000) != 0)
    {
LABEL_25:
      v45 = [(MTLAttributeDescriptorArray *)[(MTLStageInputOutputDescriptor *)self->_initialBuffersStageInputDescriptor attributes] objectAtIndexedSubscript:2];
      [(MTLAttributeDescriptor *)v45 setFormat:31];
      [(MTLAttributeDescriptor *)v45 setOffset:0];
      [(MTLAttributeDescriptor *)v45 setBufferIndex:12];
      v46 = [(MTLBufferLayoutDescriptorArray *)[(MTLStageInputOutputDescriptor *)self->_initialBuffersStageInputDescriptor layouts] objectAtIndexedSubscript:[(MTLAttributeDescriptor *)v45 bufferIndex]];
      [(MTLBufferLayoutDescriptor *)v46 setStepFunction:5];
      if ((v6 & 0x10000000000) != 0)
      {
        v52 = (*(tangentSourceProvider + 2))(tangentSourceProvider, self->_deformDataKind);
        if (!v52)
        {
          v53 = scn_default_log(0, v51);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
            [(SCNMTLDeformerStack *)v53 setupInitialBuffersWithBasePositionSourceProvider:v54 baseNormalSourceProvider:v55 baseTangentSourceProvider:v56 info:v57, v58, v59, v60];
          }
        }

        v64 = 0;
        self->_initialTangentBuffer = [(SCNMTLDeformerStack *)self newBufferForDataKind:self->_deformDataKind meshSource:v52 dataType:10 forStageInputOutputDescriptor:1 usePrivateStorageMode:1 outStride:&v64];
        v50 = v64;
        v49 = v46;
      }

      else
      {
        v47 = SCNMTLVertexFormatGetSize(31);
        [SCNMTLResourceManager newBufferWithLength:? options:?];
        self->_initialTangentBuffer = v48;
        v49 = v46;
        v50 = v47;
      }

      [(MTLBufferLayoutDescriptor *)v49 setStride:v50];
      format3 = [(MTLAttributeDescriptor *)v45 format];
      offset3 = [(MTLAttributeDescriptor *)v45 offset];
      stride3 = [(MTLBufferLayoutDescriptor *)v46 stride];
      self->_initialTangentStageInputOutputDescriptorInfo.isActive = 1;
      self->_initialTangentStageInputOutputDescriptorInfo.bufferAttributeFormat = format3;
      self->_initialTangentStageInputOutputDescriptorInfo.bufferAttributeOffset = offset3;
      self->_initialTangentStageInputOutputDescriptorInfo.bufferLayoutStride = stride3;
    }
  }
}

- (void)setupFinalMeshFromBaseMeshWithInfo:(id)info
{
  *&v66[5] = *MEMORY[0x277D85DE8];
  deformPositionBuffer = self->_deformPositionBuffer;
  if (deformPositionBuffer)
  {
    CFRelease(deformPositionBuffer);
    self->_deformPositionBuffer = 0;
  }

  deformNormalBuffer = self->_deformNormalBuffer;
  if (deformNormalBuffer)
  {
    CFRelease(deformNormalBuffer);
    self->_deformNormalBuffer = 0;
  }

  deformTangentBuffer = self->_deformTangentBuffer;
  if (deformTangentBuffer)
  {
    CFRelease(deformTangentBuffer);
    self->_deformTangentBuffer = 0;
  }

  finalMesh = self->_finalMesh;
  if (finalMesh)
  {
    CFRelease(finalMesh);
    self->_finalMesh = 0;
  }

  finalPositionBuffer = self->_finalPositionBuffer;
  if (finalPositionBuffer)
  {
    CFRelease(finalPositionBuffer);
    self->_finalPositionBuffer = 0;
  }

  finalNormalBuffer = self->_finalNormalBuffer;
  if (finalNormalBuffer)
  {
    CFRelease(finalNormalBuffer);
    self->_finalNormalBuffer = 0;
  }

  finalTangentBuffer = self->_finalTangentBuffer;
  if (finalTangentBuffer)
  {
    CFRelease(finalTangentBuffer);
    self->_finalTangentBuffer = 0;
  }

  finalDataKind = self->_finalDataKind;
  vertexDescriptor = [MEMORY[0x277CD7090] vertexDescriptor];
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:C3DMeshGetSourcesCount(self->_baseMesh)];
  baseMesh = self->_baseMesh;
  v16 = self->_finalDataKind;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __58__SCNMTLDeformerStack_setupFinalMeshFromBaseMeshWithInfo___block_invoke;
  v63[3] = &unk_2782FC510;
  v63[4] = self;
  v63[5] = v14;
  v63[6] = vertexDescriptor;
  v64 = finalDataKind == 0;
  C3DMeshApplySources(baseMesh, v16, v63);
  if (info.var0)
  {
    Size = SCNMTLVertexFormatGetSize(30);
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, self->_deformDataKind);
    C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v20);
    if ((*&info.var0 & 0x100) != 0)
    {
      v21 = [(SCNMTLDeformerStack *)self newBufferForDataKind:self->_deformDataKind meshSource:SourceWithSemanticAtIndex dataType:9 forStageInputOutputDescriptor:0 usePrivateStorageMode:0 outStride:0];
    }

    else
    {
      [SCNMTLResourceManager newBufferWithLength:? options:?];
    }

    self->_deformNormalBuffer = v21;
    v22 = self->_finalDataKind;
    if (v22 == self->_deformDataKind)
    {
      v23 = v21;
    }

    else
    {
      v24 = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, v22);
      C3DMeshSourceGetCount(v24, v25);
      [SCNMTLResourceManager newBufferWithLength:? options:?];
    }

    self->_finalNormalBuffer = v23;
    v26 = [v14 count];
    [v14 addObject:self->_finalNormalBuffer];
    v27 = [objc_msgSend(vertexDescriptor "attributes")];
    [v27 setFormat:30];
    [v27 setOffset:0];
    [v27 setBufferIndex:v26 + 18];
    v28 = [objc_msgSend(vertexDescriptor "layouts")];
    [v28 setStride:Size];
    [v28 setStepFunction:1];
    offset = [v27 offset];
    stride = [v28 stride];
    self->_deformNormalStageInputOutputDescriptorInfo.isActive = 1;
    self->_deformNormalStageInputOutputDescriptorInfo.bufferAttributeFormat = 30;
    self->_deformNormalStageInputOutputDescriptorInfo.bufferAttributeOffset = offset;
    self->_deformNormalStageInputOutputDescriptorInfo.bufferLayoutStride = stride;
  }

  if ((*&info & 0x10000) != 0)
  {
    v31 = SCNMTLVertexFormatGetSize(31);
    v32 = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, self->_deformDataKind);
    C3DMeshSourceGetCount(v32, v33);
    if ((*&info & 0x1000000) != 0)
    {
      v34 = [(SCNMTLDeformerStack *)self newBufferForDataKind:self->_deformDataKind meshSource:v32 dataType:10 forStageInputOutputDescriptor:0 usePrivateStorageMode:0 outStride:0];
    }

    else
    {
      [SCNMTLResourceManager newBufferWithLength:? options:?];
    }

    self->_deformTangentBuffer = v34;
    v35 = self->_finalDataKind;
    if (v35 == self->_deformDataKind)
    {
      v36 = v34;
    }

    else
    {
      v37 = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, v35);
      C3DMeshSourceGetCount(v37, v38);
      [SCNMTLResourceManager newBufferWithLength:? options:?];
    }

    self->_finalTangentBuffer = v36;
    v39 = [v14 count];
    [v14 addObject:self->_finalTangentBuffer];
    v40 = [objc_msgSend(vertexDescriptor "attributes")];
    [v40 setFormat:31];
    [v40 setOffset:0];
    [v40 setBufferIndex:v39 + 18];
    v41 = [objc_msgSend(vertexDescriptor "layouts")];
    [v41 setStride:v31];
    [v41 setStepFunction:1];
    offset2 = [v40 offset];
    stride2 = [v41 stride];
    self->_deformTangentStageInputOutputDescriptorInfo.isActive = 1;
    self->_deformTangentStageInputOutputDescriptorInfo.bufferAttributeFormat = 31;
    self->_deformTangentStageInputOutputDescriptorInfo.bufferAttributeOffset = offset2;
    self->_deformTangentStageInputOutputDescriptorInfo.bufferLayoutStride = stride2;
  }

  ElementsCount = C3DMeshGetElementsCount(self->_baseMesh, v17);
  v45 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ElementsCount];
  if (ElementsCount >= 1)
  {
    for (i = 0; i != ElementsCount; ++i)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(self->_baseMesh, i, self->_finalDataKind);
      Type = C3DMeshElementGetType(ElementAtIndex, v48);
      v50 = C3DMeshElementTypeMapsToMTLPrimitiveType(Type);
      if (v50)
      {
        [v45 addObject:-[SCNMTLResourceManager renderResourceForMeshElement:](self->_resourceManager)];
      }

      else if (self->_finalDataKind | finalDataKind)
      {
        v52 = scn_default_log(v50, v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
        {
          [(SCNMTLDeformerStack *)v65 setupFinalMeshFromBaseMeshWithInfo:v66, v52];
        }
      }
    }
  }

  v53 = self->_finalDataKind;
  if (self->_deformDataKind != v53)
  {
    v54 = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, v53);
    self->_splatUniforms.maxIndex = C3DMeshSourceGetCount(v54, v55);
    v62 = 0;
    [(SCNMTLDeformerStack *)self deindexedToOriginalTableBufferWithBlitEncoder:[(SCNMTLDeformerStack *)self currentBlitEncoder] indexSizeOut:&v62];
    v61 = v62;
    v56 = self->_deformTangentBuffer;
    v60 = self->_deformNormalBuffer != 0;
    v59 = v56 != 0;
    v57 = objc_alloc_init(MEMORY[0x277CD6D70]);
    [v57 setConstantValue:&v61 type:33 atIndex:0];
    [v57 setConstantValue:&v60 type:53 atIndex:1];
    [v57 setConstantValue:&v59 type:53 atIndex:2];
    self->_splatDeformedToFinalPipeline = -[SCNMTLResourceManager computePipelineStateForKernel:constants:constantsHash:](self->_resourceManager, "computePipelineStateForKernel:constants:constantsHash:", @"deformer_splat", v57, [MEMORY[0x277CCACA8] stringWithFormat:@"UInt%d-%d-%d", (8 * v61), v60, v59]);
  }

  v58 = objc_alloc_init(SCNMTLMesh);
  self->_finalMesh = v58;
  [(SCNMTLMesh *)v58 setVertexDescriptor:vertexDescriptor];
  [(SCNMTLMesh *)self->_finalMesh setBuffers:v14];
  [(SCNMTLMesh *)self->_finalMesh setElements:v45];
}

void __58__SCNMTLDeformerStack_setupFinalMeshFromBaseMeshWithInfo___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 7 && (a3 == 3 || a4 <= 0) && (a3 != 3 || a4 <= 7))
  {
    IsVolatile = C3DMeshSourceIsVolatile(a2);
    if (IsVolatile)
    {
      v10 = scn_default_log(IsVolatile, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __58__SCNMTLDeformerStack_setupFinalMeshFromBaseMeshWithInfo___block_invoke_cold_1();
      }
    }

    else if (a3 != 4 && a3 != 1)
    {
      if (a3)
      {
        if ((*(result + 56) & 1) == 0)
        {
          v17 = [SCNMTLResourceManager renderResourceForMeshSource:?];
          if (v17)
          {
            v18 = v17;
            v19 = [*(result + 40) indexOfObject:v17];
            if (v19 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v19 = [*(result + 40) count];
              [*(result + 40) addObject:v18];
            }

            v20 = *(result + 48);

            [SCNMTLResourceManager _fillVertexDescriptor:v20 withMeshSource:a2 semantic:a3 inputSet:a4 bufferIndex:v19];
          }
        }
      }

      else
      {
        Size = SCNMTLVertexFormatGetSize(30);
        C3DMeshSourceGetCount(a2, v12);
        [SCNMTLResourceManager newBufferWithLength:? options:?];
        *(*(result + 32) + 120) = v13;
        v14 = *(result + 32);
        v15 = *(v14 + 49);
        if (v15 == *(v14 + 48))
        {
          v16 = *(v14 + 120);
        }

        else
        {
          SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(*(v14 + 40), 0, 0, v15);
          C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v22);
          [SCNMTLResourceManager newBufferWithLength:? options:?];
        }

        *(*(result + 32) + 88) = v16;
        v23 = [*(result + 40) count];
        [*(result + 40) addObject:*(*(result + 32) + 120)];
        v24 = [objc_msgSend(*(result + 48) "attributes")];
        [v24 setFormat:30];
        [v24 setOffset:0];
        [v24 setBufferIndex:v23 + 18];
        v25 = [objc_msgSend(*(result + 48) "layouts")];
        [v25 setStride:Size];
        [v25 setStepFunction:1];
        v26 = [v24 offset];
        v27 = [v25 stride];
        v28 = *(result + 32);
        *(v28 + 240) = 1;
        *(v28 + 248) = 30;
        *(v28 + 256) = v26;
        *(v28 + 264) = v27;
      }
    }
  }
}

- (void)setupFinalMeshFromMeshlessBaseGeometryWithInfo:(id)info
{
  deformPositionBuffer = self->_deformPositionBuffer;
  if (deformPositionBuffer)
  {
    CFRelease(deformPositionBuffer);
    self->_deformPositionBuffer = 0;
  }

  deformNormalBuffer = self->_deformNormalBuffer;
  if (deformNormalBuffer)
  {
    CFRelease(deformNormalBuffer);
    self->_deformNormalBuffer = 0;
  }

  deformTangentBuffer = self->_deformTangentBuffer;
  if (deformTangentBuffer)
  {
    CFRelease(deformTangentBuffer);
    self->_deformTangentBuffer = 0;
  }

  finalMesh = self->_finalMesh;
  if (finalMesh)
  {
    CFRelease(finalMesh);
    self->_finalMesh = 0;
  }

  finalPositionBuffer = self->_finalPositionBuffer;
  if (finalPositionBuffer)
  {
    CFRelease(finalPositionBuffer);
    self->_finalPositionBuffer = 0;
  }

  finalNormalBuffer = self->_finalNormalBuffer;
  if (finalNormalBuffer)
  {
    CFRelease(finalNormalBuffer);
    self->_finalNormalBuffer = 0;
  }

  finalTangentBuffer = self->_finalTangentBuffer;
  if (finalTangentBuffer)
  {
    CFRelease(finalTangentBuffer);
    self->_finalTangentBuffer = 0;
  }

  if (!self->_meshlessDeformer)
  {
    v12 = scn_default_log(finalTangentBuffer, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLDeformerStack *)v12 setupFinalMeshFromMeshlessBaseGeometryWithInfo:v13, v14, v15, v16, v17, v18, v19];
    }
  }

  self->_finalMesh = [(SCNMTLMeshlessDeformer *)self->_meshlessDeformer finalMesh];
  SCNMTLVertexFormatGetSize(30);
  commandQueue = [(SCNMTLResourceManager *)self->_finalMesh commandQueue];
  v21 = [objc_msgSend(commandQueue "attributes")];
  v22 = [objc_msgSend(commandQueue "layouts")];
  PositionSourceForDeformerBasedDynamicMesh = C3DGeometryCreatePositionSourceForDeformerBasedDynamicMesh(self->_baseGeometry);
  C3DMeshSourceGetCount(PositionSourceForDeformerBasedDynamicMesh, v24);
  [SCNMTLResourceManager newBufferWithLength:? options:?];
  self->_deformPositionBuffer = v25;
  CFRelease(PositionSourceForDeformerBasedDynamicMesh);
  if (info.var0 && (v28 = scn_default_log(v26, v27), v26 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT)))
  {
    [(SCNMTLDeformerStack *)v28 setupFinalMeshFromMeshlessBaseGeometryWithInfo:v27, v29, v30, v31, v32, v33, v34];
    if ((*&info & 0x10000) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*&info & 0x10000) == 0)
  {
    goto LABEL_23;
  }

  v35 = scn_default_log(v26, v27);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
  {
    [(SCNMTLDeformerStack *)v35 setupFinalMeshFromMeshlessBaseGeometryWithInfo:v36, v37, v38, v39, v40, v41, v42];
  }

LABEL_23:
  offset = [v21 offset];
  stride = [v22 stride];
  self->_deformPositionStageInputOutputDescriptorInfo.isActive = 1;
  self->_deformPositionStageInputOutputDescriptorInfo.bufferAttributeFormat = 30;
  self->_deformPositionStageInputOutputDescriptorInfo.bufferAttributeOffset = offset;
  self->_deformPositionStageInputOutputDescriptorInfo.bufferLayoutStride = stride;
}

- (id)deindexedToOriginalTableBufferWithBlitEncoder:(id)encoder indexSizeOut:(unint64_t *)out
{
  *&v31[5] = *MEMORY[0x277D85DE8];
  if (!self->_deindexedToOriginalTableBuffer)
  {
    C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, 1);
    v29 = 0;
    PositionDeindexedToOriginalTable = C3DMeshGetPositionDeindexedToOriginalTable(self->_baseMesh, &v29);
    result = C3DMeshGetPositionOriginalToFirstDeindexedTable(self->_baseMesh);
    if (!result)
    {
      return result;
    }

    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, 0);
    Count = C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v10);
    v12 = v29;
    v13 = v29 - 1;
    encoderCopy = encoder;
    if ((v29 - 1) < 0)
    {
      v16 = 8;
    }

    else
    {
      v14 = v13 >> 15;
      v15 = v13 > 0x7F;
      v16 = 1;
      if (v15)
      {
        v16 = 2;
      }

      if (v14)
      {
        v16 = 4;
      }
    }

    self->_deindexedToOriginalTableBufferIndexSize = v16;
    *out = v16;
    v27 = self->_deindexedToOriginalTableBufferIndexSize * v12;
    v17 = malloc_type_malloc(v27, 0x7583B073uLL);
    v19 = v17;
    deindexedToOriginalTableBufferIndexSize = self->_deindexedToOriginalTableBufferIndexSize;
    if (deindexedToOriginalTableBufferIndexSize == 1)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    if (deindexedToOriginalTableBufferIndexSize == 2)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    if (deindexedToOriginalTableBufferIndexSize == 4)
    {
      v23 = v17;
    }

    else
    {
      v23 = 0;
    }

    if (!v29)
    {
LABEL_31:
      self->_deindexedToOriginalTableBuffer = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v19 length:v27 blitEncoder:encoderCopy];
      free(v19);
      return self->_deindexedToOriginalTableBuffer;
    }

    v24 = 0;
    while (1)
    {
      v25 = *(PositionDeindexedToOriginalTable + 4 * v24);
      if (v25 >= Count && (v26 = scn_default_log(v17, v18), v17 = os_log_type_enabled(v26, OS_LOG_TYPE_FAULT), v17))
      {
        [(SCNMTLDeformerStack *)v30 deindexedToOriginalTableBufferWithBlitEncoder:v31 indexSizeOut:v26];
        if (!v21)
        {
LABEL_27:
          if (v22)
          {
            *(v22 + 2 * v24) = v25;
          }

          else
          {
            *(v23 + 4 * v24) = v25;
          }

          goto LABEL_30;
        }
      }

      else if (!v21)
      {
        goto LABEL_27;
      }

      *(v21 + v24) = v25;
LABEL_30:
      if (++v24 >= v29)
      {
        goto LABEL_31;
      }
    }
  }

  *out = self->_deindexedToOriginalTableBufferIndexSize;
  return self->_deindexedToOriginalTableBuffer;
}

- (id)deindexedToFirstDeindexedTableBufferWithBlitEncoder:(id)encoder indexSizeOut:(unint64_t *)out
{
  *&v37[5] = *MEMORY[0x277D85DE8];
  if (self->_deindexedToFirstDeindexedTableBuffer)
  {
    *out = self->_deindexedToFirstDeindexedTableBufferIndexSize;
  }

  else
  {
    C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, 1);
    v33 = 0;
    PositionDeindexedToOriginalTable = C3DMeshGetPositionDeindexedToOriginalTable(self->_baseMesh, &v33);
    result = C3DMeshGetPositionOriginalToFirstDeindexedTable(self->_baseMesh);
    if (!result)
    {
      return result;
    }

    v9 = result;
    encoderCopy = encoder;
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, 0);
    Count = C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v11);
    v13 = v33;
    v14 = v33 - 1;
    if ((v33 - 1) < 0)
    {
      v17 = 8;
    }

    else
    {
      v15 = v14 >> 15;
      v16 = v14 > 0x7F;
      v17 = 1;
      if (v16)
      {
        v17 = 2;
      }

      if (v15)
      {
        v17 = 4;
      }
    }

    self->_deindexedToFirstDeindexedTableBufferIndexSize = v17;
    *out = v17;
    v30 = self->_deindexedToFirstDeindexedTableBufferIndexSize * v13;
    v18 = malloc_type_malloc(v30, 0xB0A4F3C8uLL);
    v20 = v18;
    deindexedToFirstDeindexedTableBufferIndexSize = self->_deindexedToFirstDeindexedTableBufferIndexSize;
    if (deindexedToFirstDeindexedTableBufferIndexSize == 1)
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    if (deindexedToFirstDeindexedTableBufferIndexSize == 2)
    {
      v23 = v18;
    }

    else
    {
      v23 = 0;
    }

    if (deindexedToFirstDeindexedTableBufferIndexSize == 4)
    {
      v24 = v18;
    }

    else
    {
      v24 = 0;
    }

    v32 = v24;
    if (v33)
    {
      for (i = 0; i < v33; ++i)
      {
        v26 = *(PositionDeindexedToOriginalTable + 4 * i);
        v27 = v9[v26];
        if (v26 >= Count)
        {
          v28 = scn_default_log(v18, v19);
          v18 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
          if (v18)
          {
            [(SCNMTLDeformerStack *)v36 deindexedToOriginalTableBufferWithBlitEncoder:v37 indexSizeOut:v28];
          }
        }

        if (v27 >= v33)
        {
          v29 = scn_default_log(v18, v19);
          v18 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);
          if (v18)
          {
            [(SCNMTLDeformerStack *)v34 deindexedToFirstDeindexedTableBufferWithBlitEncoder:v29 indexSizeOut:?];
          }
        }

        if (i == v27)
        {
          if (v22)
          {
            *(v22 + i) = -1;
          }

          else if (v23)
          {
            *(v23 + 2 * i) = -1;
          }

          else
          {
            *(v32 + 4 * i) = -1;
          }
        }

        else if (v22)
        {
          *(v22 + i) = v27;
        }

        else if (v23)
        {
          *(v23 + 2 * i) = v27;
        }

        else
        {
          *(v32 + 4 * i) = v27;
        }
      }
    }

    self->_deindexedToFirstDeindexedTableBuffer = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v20 length:v30 blitEncoder:encoderCopy];
    free(v20);
  }

  return self->_deindexedToFirstDeindexedTableBuffer;
}

- (id)originalToFirstDeindexedTableBufferWithBlitEncoder:(id)encoder indexSizeOut:(unint64_t *)out
{
  if (self->_originalToFirstDeindexedTableBuffer)
  {
    *out = self->_originalToFirstDeindexedTableBufferIndexSize;
  }

  else
  {
    C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, 1);
    result = C3DMeshGetPositionOriginalToFirstDeindexedTable(self->_baseMesh);
    if (!result)
    {
      return result;
    }

    v8 = result;
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(self->_baseMesh, 0, 0, 0);
    Count = C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v10);
    v12 = Count;
    v13 = 1;
    if (Count - 1 > 0xFF)
    {
      v13 = 2;
    }

    v14 = 4;
    if (!((Count - 1) >> 16))
    {
      v14 = v13;
    }

    self->_originalToFirstDeindexedTableBufferIndexSize = v14;
    *out = v14;
    v15 = Count;
    v16 = self->_originalToFirstDeindexedTableBufferIndexSize * Count;
    v17 = malloc_type_malloc(v16, 0xEED24FFuLL);
    v18 = v17;
    originalToFirstDeindexedTableBufferIndexSize = self->_originalToFirstDeindexedTableBufferIndexSize;
    if (originalToFirstDeindexedTableBufferIndexSize == 1)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    if (originalToFirstDeindexedTableBufferIndexSize == 2)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    if (originalToFirstDeindexedTableBufferIndexSize == 4)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    if (v12)
    {
      v23 = v21;
      v24 = v20;
      do
      {
        v26 = *v8++;
        v25 = v26;
        if (v20)
        {
          *v24 = v25;
        }

        else if (v21)
        {
          *v23 = v25;
        }

        else
        {
          *v22 = v25;
        }

        ++v24;
        ++v23;
        ++v22;
        --v15;
      }

      while (v15);
    }

    self->_originalToFirstDeindexedTableBuffer = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v17 length:v16 blitEncoder:encoder];
    free(v18);
  }

  return self->_originalToFirstDeindexedTableBuffer;
}

- (id)newBufferForDataKind:(unsigned __int8)kind meshSource:(__C3DMeshSource *)source dataType:(signed __int16)type forStageInputOutputDescriptor:(BOOL)descriptor usePrivateStorageMode:(BOOL)mode outStride:(unint64_t *)stride
{
  descriptorCopy = descriptor;
  typeCopy = type;
  Count = C3DMeshSourceGetCount(source, a2);
  v16 = C3DSizeOfBaseType(typeCopy, v15);
  if (descriptorCopy)
  {
    computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)self->_resourceManager computeEvaluator];
    if (SCNMTLDeviceRequiresOffsetAndStrideForStageInAsMultipleOf4Bytes(computeEvaluator))
    {
      v16 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  v18 = malloc_type_malloc(v16 * Count, 0x100004077774924uLL);
  v29 = 0u;
  v30 = 0u;
  C3DMeshSourceGetContent(source, v19, &v29);
  if (Count)
  {
    v23 = 0;
    v24 = v18;
    do
    {
      *v25.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v30), (v29 + v23 * BYTE6(v30)), v20, v21, v22);
      C3DConvertFloatingTypeFromFloat4(typeCopy, v24, v25);
      v24 += v16;
      ++v23;
    }

    while (Count != v23);
  }

  if (mode)
  {
    v26 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v18 length:v16 * Count blitEncoder:[(SCNMTLDeformerStack *)self currentBlitEncoder]];
  }

  else
  {
    [SCNMTLResourceManager newBufferWithBytes:? length:? options:?];
  }

  v27 = v26;
  free(v18);
  if (stride)
  {
    *stride = v16;
  }

  return v27;
}

- (id)newBufferForDataKind:(unsigned __int8)kind positionSource:(__C3DMeshSource *)source normalSource:(__C3DMeshSource *)normalSource positionDataType:(signed __int16)type normalDataType:(signed __int16)dataType forStageInputOutputDescriptor:(BOOL)descriptor usePrivateStorageMode:(BOOL)mode outStride:(unint64_t *)self0 outPositionOffset:(unint64_t *)self1 outNormalOffset:(unint64_t *)self2
{
  descriptorCopy = descriptor;
  dataTypeCopy = dataType;
  typeCopy = type;
  if (kind == 1 && normalSource && (v18 = C3DMeshSourceGetCount(source, a2), v20 = C3DMeshSourceGetCount(normalSource, v19), v18 != v20))
  {
    v41 = scn_default_log(v20, a2);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLDeformerStack newBufferForDataKind:positionSource:normalSource:positionDataType:normalDataType:forStageInputOutputDescriptor:usePrivateStorageMode:outStride:outPositionOffset:outNormalOffset:];
    }

    return 0;
  }

  else
  {
    Count = C3DMeshSourceGetCount(source, a2);
    v23 = C3DSizeOfBaseType(typeCopy, v22);
    v25 = C3DSizeOfBaseType(dataTypeCopy, v24);
    v26 = v25 + v23;
    if (descriptorCopy)
    {
      v27 = v25;
      computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)self->_resourceManager computeEvaluator];
      if (SCNMTLDeviceRequiresOffsetAndStrideForStageInAsMultipleOf4Bytes(computeEvaluator))
      {
        v26 = (v27 + ((v23 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v23 = (v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      }
    }

    selfCopy = self;
    v29 = malloc_type_malloc(v26 * Count, 0x100004077774924uLL);
    v46 = 0u;
    v47 = 0u;
    C3DMeshSourceGetContent(source, v30, &v46);
    v34 = 0uLL;
    v44 = 0u;
    v45 = 0u;
    if (normalSource)
    {
      C3DMeshSourceGetContent(normalSource, v31, &v44);
    }

    if (Count)
    {
      v35 = 0;
      v36 = v29;
      do
      {
        *v37.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v47), (v46 + v35 * BYTE6(v47)), v34, v32, v33);
        C3DConvertFloatingTypeFromFloat4(typeCopy, v36, v37);
        if (normalSource)
        {
          *v38.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v45), (v44 + v35 * BYTE6(v45)), v34, v32, v33);
          C3DConvertFloatingTypeFromFloat4(dataTypeCopy, v36 + v23, v38);
        }

        v36 += v26;
        ++v35;
      }

      while (Count != v35);
    }

    if (mode)
    {
      v39 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](selfCopy[1], v29, v26 * Count, [selfCopy currentBlitEncoder]);
    }

    else
    {
      [SCNMTLResourceManager newBufferWithBytes:? length:? options:?];
    }

    v40 = v39;
    free(v29);
    if (stride)
    {
      *stride = v26;
    }

    if (offset)
    {
      *offset = 0;
    }

    if (normalOffset)
    {
      *normalOffset = v23;
    }
  }

  return v40;
}

- (MTLBlitCommandEncoder)currentBlitEncoder
{
  result = self->_currentInitResourceBlitEncoder;
  if (!result)
  {
    result = *[(SCNMTLRenderContext *)self->_currentInitRenderContext resourceBlitEncoder];
    self->_currentInitResourceBlitEncoder = result;
  }

  return result;
}

- (void)reconfigureIfNeededWithContext:(id)context programHashCodeRequirements:(id)requirements
{
  v4 = *&requirements.var0;
  v214 = *MEMORY[0x277D85DE8];
  if (self->_isValid && (!requirements.var0 || self->_finalTangentBuffer))
  {
    return;
  }

  self->_currentInitRenderContext = context;
  BaseGeometry = C3DDeformerStackGetBaseGeometry(self->_c3dDeformerStack, a2);
  v7 = BaseGeometry;
  v143 = self->_baseGeometry;
  if (v143 != BaseGeometry)
  {
    self->_baseGeometry = BaseGeometry;
  }

  v8 = C3DGeometryUsesDeformerBasedDynamicMesh(BaseGeometry);
  v148 = v7;
  if (v8)
  {
    v9 = [(SCNMTLDeformerStack *)self deformerClassForMeshlesshGeometry:v7];
    LODWORD(v135) = [(objc_class *)v9 deformsControlPointsForMeshlessGeometry:v7];
    Mesh = 0;
  }

  else
  {
    LODWORD(v135) = [0 deformsControlPointsForMeshlessGeometry:v7];
    Mesh = C3DGeometryGetMesh(v7, v12);
    v9 = 0;
  }

  baseMesh = self->_baseMesh;
  if (baseMesh != Mesh)
  {
    self->_baseMesh = Mesh;
  }

  finalDataKind = self->_finalDataKind;
  Morpher = C3DDeformerStackGetMorpher(self->_c3dDeformerStack, v10);
  Skinner = C3DDeformerStackGetSkinner(self->_c3dDeformerStack, v14);
  if (Skinner)
  {
    v17 = C3DDeformerStackGetBaseGeometry(self->_c3dDeformerStack, v15);
    v156 = C3DSkinnerGetEffectiveCalculationMode(Skinner, v17) == 2;
  }

  else
  {
    v156 = 0;
  }

  PostMorphingDeformers = C3DDeformerStackGetPostMorphingDeformers(self->_c3dDeformerStack, v15);
  PostSkinningDeformers = C3DDeformerStackGetPostSkinningDeformers(self->_c3dDeformerStack, v19);
  v141 = [PostMorphingDeformers count];
  v140 = [PostSkinningDeformers count];
  if (Morpher)
  {
    v21 = +[SCNMTLMorphDeformer requiredInputs];
  }

  else
  {
    v21 = 0;
  }

  if (v156)
  {
    v21 |= +[SCNMTLSkinDeformer requiredInputs];
  }

  v151 = v9;
  if (v9)
  {
    v21 |= [(objc_class *)v9 requiredInputs];
  }

  v145 = Skinner;
  v204 = 0u;
  v203 = 0u;
  v202 = 0u;
  v201 = 0u;
  v22 = [PostMorphingDeformers countByEnumeratingWithState:&v201 objects:v213 count:{16, v135}];
  selfCopy = self;
  if (v22)
  {
    v23 = v22;
    v24 = *v202;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v202 != v24)
        {
          objc_enumerationMutation(PostMorphingDeformers);
        }

        v21 |= [*(*(&v201 + 1) + 8 * i) requiredInputs];
      }

      v23 = [PostMorphingDeformers countByEnumeratingWithState:&v201 objects:v213 count:16];
    }

    while (v23);
  }

  v200 = 0u;
  v199 = 0u;
  v198 = 0u;
  v197 = 0u;
  v26 = [PostSkinningDeformers countByEnumeratingWithState:&v197 objects:v212 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v198;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v198 != v28)
        {
          objc_enumerationMutation(PostSkinningDeformers);
        }

        LODWORD(v21) = [*(*(&v197 + 1) + 8 * j) requiredInputs] | v21;
      }

      v27 = [PostSkinningDeformers countByEnumeratingWithState:&v197 objects:v212 count:16];
    }

    while (v27);
  }

  if (Mesh)
  {
    v30 = selfCopy;
    v153 = (C3DMeshHasSourcesWithSemantic(Mesh, 1, 0, 0) | (v21 >> 1)) & (finalDataKind != 0);
    v139 = (selfCopy->_finalNormalBuffer == 0) ^ v153;
    HasSourcesWithSemantic = C3DMeshHasSourcesWithSemantic(Mesh, 4, 0, 0);
  }

  else
  {
    HasSourcesWithSemantic = 0;
    v30 = selfCopy;
    v153 = (finalDataKind != 0) & (v21 >> 1);
    v139 = (selfCopy->_finalNormalBuffer == 0) ^ v153;
  }

  v150 = Mesh;
  v146 = v8;
  v32 = finalDataKind != 0;
  v138 = *(v30 + 136);
  LODWORD(v30) = Morpher;
  if (Morpher)
  {
    v33 = [SCNMTLMorphDeformer supportedOutputsForMorpher:?];
    v34 = v33;
  }

  else
  {
    v34 = 0;
    v33 = -1;
  }

  if (v156)
  {
    v35 = +[SCNMTLSkinDeformer supportedOutputs];
    v34 |= v35;
    v33 &= v35;
  }

  if (v151)
  {
    supportedOutputs = [(objc_class *)v151 supportedOutputs];
    v34 |= supportedOutputs;
    v33 &= supportedOutputs;
  }

  v196 = 0u;
  v195 = 0u;
  v37 = v4 | HasSourcesWithSemantic | (v21 >> 2);
  v194 = 0u;
  v193 = 0u;
  v38 = [PostMorphingDeformers countByEnumeratingWithState:&v193 objects:v211 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v194;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v194 != v40)
        {
          objc_enumerationMutation(PostMorphingDeformers);
        }

        supportedOutputs2 = [*(*(&v193 + 1) + 8 * k) supportedOutputs];
        v34 |= supportedOutputs2;
        v33 &= supportedOutputs2;
      }

      v39 = [PostMorphingDeformers countByEnumeratingWithState:&v193 objects:v211 count:16];
    }

    while (v39);
  }

  v152 = v37 & v32;
  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  v43 = [PostSkinningDeformers countByEnumeratingWithState:&v189 objects:v210 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v190;
    v46 = v151;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v190 != v45)
        {
          objc_enumerationMutation(PostSkinningDeformers);
        }

        supportedOutputs3 = [*(*(&v189 + 1) + 8 * m) supportedOutputs];
        v34 |= supportedOutputs3;
        v33 &= supportedOutputs3;
      }

      v44 = [PostSkinningDeformers countByEnumeratingWithState:&v189 objects:v210 count:16];
    }

    while (v44);
  }

  else
  {
    v46 = v151;
  }

  v149 = v153 & ((v33 & 2) == 0);
  v49 = 3;
  if (v149)
  {
    v49 = 1;
  }

  if (!v153)
  {
    v49 = 1;
  }

  if (v152)
  {
    v50 = v49 | 4;
  }

  else
  {
    v50 = v49;
  }

  if (Morpher)
  {
    v51 = +[SCNMTLMorphDeformer requiredOutputs];
    v50 |= v51;
    v30 = (v51 >> 9) & 1;
  }

  if (v156)
  {
    v52 = +[SCNMTLSkinDeformer requiredOutputs];
    v50 |= v52;
    v53 = (v52 >> 9) & 1 | v30;
    if ((v52 & 0x200) == 0)
    {
      v54 = v30 ^ 1;
      v55 = selfCopy;
      if ((v54 & 1) == 0)
      {
        [SCNMTLDeformerStack reconfigureIfNeededWithContext:programHashCodeRequirements:];
      }

      goto LABEL_76;
    }
  }

  else
  {
    v53 = v30;
  }

  v55 = selfCopy;
LABEL_76:
  obj = PostSkinningDeformers;
  if (v46)
  {
    requiredOutputs = [(objc_class *)v46 requiredOutputs];
    v50 |= requiredOutputs;
    v57 = (requiredOutputs >> 9) & 1 | v53;
    if ((requiredOutputs & 0x200) == 0 && ((v53 ^ 1) & 1) == 0)
    {
      [SCNMTLDeformerStack reconfigureIfNeededWithContext:programHashCodeRequirements:];
    }
  }

  else
  {
    v57 = v53;
  }

  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v58 = [PostMorphingDeformers countByEnumeratingWithState:&v185 objects:v209 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v186;
    do
    {
      for (n = 0; n != v59; ++n)
      {
        if (*v186 != v60)
        {
          objc_enumerationMutation(PostMorphingDeformers);
        }

        requiredOutputs2 = [*(*(&v185 + 1) + 8 * n) requiredOutputs];
        if ((requiredOutputs2 & 0x200) == 0 && ((v57 ^ 1) & 1) == 0)
        {
          [SCNMTLDeformerStack reconfigureIfNeededWithContext:programHashCodeRequirements:];
        }

        v57 |= (requiredOutputs2 >> 9) & 1;
        v50 |= requiredOutputs2;
      }

      v59 = [PostMorphingDeformers countByEnumeratingWithState:&v185 objects:v209 count:16];
    }

    while (v59);
  }

  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  v181 = 0u;
  v63 = [obj countByEnumeratingWithState:&v181 objects:v208 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v182;
    do
    {
      for (ii = 0; ii != v64; ++ii)
      {
        if (*v182 != v65)
        {
          objc_enumerationMutation(obj);
        }

        requiredOutputs3 = [*(*(&v181 + 1) + 8 * ii) requiredOutputs];
        if ((requiredOutputs3 & 0x200) == 0 && ((v57 ^ 1) & 1) == 0)
        {
          [SCNMTLDeformerStack reconfigureIfNeededWithContext:programHashCodeRequirements:];
        }

        v57 |= (requiredOutputs3 >> 9) & 1;
        v50 |= requiredOutputs3;
      }

      v64 = [obj countByEnumeratingWithState:&v181 objects:v208 count:16];
    }

    while (v64);
  }

  v137 = v55->_smoothNormalsDeformer != 0;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  elements = [(SCNMTLMesh *)v55->_finalMesh elements];
  v69 = [elements countByEnumeratingWithState:&v177 objects:v207 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = 0;
    v72 = *v178;
    do
    {
      for (jj = 0; jj != v70; ++jj)
      {
        if (*v178 != v72)
        {
          objc_enumerationMutation(elements);
        }

        v71 |= v57 ^ ([(SCNMTLMesh *)*(*(&v177 + 1) + 8 * jj) buffers]!= 0);
      }

      v70 = [elements countByEnumeratingWithState:&v177 objects:v207 count:16];
    }

    while (v70);
  }

  else
  {
    v71 = 0;
  }

  v74 = v140 + v141;
  v142 = v140 + v141;
  if (v156)
  {
    v75 = 1;
  }

  else
  {
    v75 = v136;
    if (v74)
    {
      v75 = 1;
    }
  }

  v76 = selfCopy;
  v77 = v143;
  v78 = v149 ^ v137;
  initialBuffersStageInputDescriptor = selfCopy->_initialBuffersStageInputDescriptor;
  morphDeformer = selfCopy->_morphDeformer;
  v81 = (v153 ^ v149) & ((v33 & 2) == 0);
  v82 = v34 & 2;
  v83 = (v82 << 7) ^ 0x100;
  if (((v153 ^ v149) & ((v33 & 2) == 0)) == 0)
  {
    v83 = 0;
  }

  v155 = v83;
  v84 = v152 & ((v33 & 4) == 0);
  v85 = v34 & 4;
  v86 = (v85 << 22) ^ 0x1000000;
  if (!v84)
  {
    v86 = 0;
  }

  v144 = v86;
  v87 = v139 ^ 1;
  v88 = (v138 != 0) ^ v152;
  v89 = v75 ^ (initialBuffersStageInputDescriptor != 0);
  v90 = (Morpher == 0) ^ (morphDeformer == 0);
  if (baseMesh != v150 || !*(v76 + 56) || (v87 & 1) != 0 || (v88 & 1) != 0 || ((v75 ^ (initialBuffersStageInputDescriptor != 0)) & 1) != 0 || v90)
  {
    v91 = v84 & (v85 != 0);
    if (!Morpher)
    {
      v91 = 1;
    }

    v92 = v81 & (v82 != 0);
    if (!Morpher)
    {
      v92 = 1;
    }

    v175[0] = MEMORY[0x277D85DD0];
    v175[1] = 3221225472;
    v175[2] = __82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke;
    v175[3] = &__block_descriptor_49_e192_____C3DMeshSource____C3DGenericSource____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DSourceAccessor________CFData__v_v_qb1b1b1_SCC_12__0C8l;
    v176 = v146;
    v175[4] = v148;
    v175[5] = v150;
    v173[0] = MEMORY[0x277D85DD0];
    v173[1] = 3221225472;
    v173[2] = __82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke_2;
    v173[3] = &unk_2782FC558;
    v174 = v146;
    v173[5] = v150;
    v173[4] = v76;
    v171[0] = MEMORY[0x277D85DD0];
    v171[1] = 3221225472;
    v171[2] = __82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke_28;
    v171[3] = &unk_2782FC558;
    v172 = v146;
    v171[5] = v150;
    v171[4] = v76;
    v93 = v91 == 0;
    v94 = 0x10000000000;
    if (v93)
    {
      v94 = 0;
    }

    v95 = 0x100000000;
    if ((v152 & v75) == 0)
    {
      v95 = 0;
    }

    v93 = v92 == 0;
    v96 = 0x1000000;
    if (v93)
    {
      v96 = 0;
    }

    v97 = 0x10000;
    if ((v153 & v75) == 0)
    {
      v97 = 0;
    }

    [v76 setupInitialBuffersWithBasePositionSourceProvider:v175 baseNormalSourceProvider:v173 baseTangentSourceProvider:v171 info:v94 | ((Morpher == 0) << 8) | v96 | v75 | v95 | v97];
    morphDeformer = *(v76 + 832);
  }

  if (([(SCNMTLOpenSubdivComputeEvaluator *)morphDeformer computeEvaluator]!= Morpher) | (v87 | v88 | v78) & 1)
  {
    v98 = *(v76 + 832);
    if (v98)
    {
      CFRelease(v98);
      *(v76 + 832) = 0;
    }

    v99 = v146;
    if (Morpher)
    {
      *(v76 + 832) = [[SCNMTLMorphDeformer alloc] initWithMorpher:v50 outputs:*(v76 + 49) dataKind:*(v76 + 8) resourceManager:v76 computeContext:?];
    }
  }

  else
  {
    v100 = v89 | v90;
    v99 = v146;
    if (v100)
    {
      [(SCNMTLMorphDeformer *)*(v76 + 832) setNextFrameRequiresFullMeshReset];
    }
  }

  if (([(SCNMTLOpenSubdivComputeEvaluator *)*(v76 + 840) computeEvaluator]!= v145) | (v87 | v88 | v78) & 1)
  {
    v101 = *(v76 + 840);
    if (v101)
    {
      CFRelease(v101);
      *(v76 + 840) = 0;
    }

    if (v156)
    {
      *(v76 + 840) = [[SCNMTLSkinDeformer alloc] initWithSkinner:v145 baseGeometry:v148 outputs:v50 dataKind:*(v76 + 49) resourceManager:*(v76 + 8) computeContext:v76];
    }
  }

  v102 = v77 != v148 && v99;

  if (v102 == 1)
  {
    v103 = [[(objc_class *)v151 alloc] initWithMeshlessGeometry:*(v76 + 32) outputs:v50 deformDataKind:*(v76 + 49) finalDataKind:*(v76 + 48) resourceManager:*(v76 + 8) computeContext:v76];
  }

  else
  {
    v103 = 0;
  }

  *(v76 + 848) = v103;

  if (v149 & v78)
  {
    v104 = [[SCNMTLSmoothNormalsDeformer alloc] initWithMesh:*(v76 + 48) dataKind:*(v76 + 8) resourceManager:v76 computeContext:?];
  }

  else
  {
    v104 = 0;
  }

  *(v76 + 856) = v104;
  if (!*(v76 + 112) || (baseMesh != v150 ? (v105 = 1) : (v105 = v102), ((v105 | v87 | v88 | v71) & 1) != 0))
  {
    v106 = 0x10000;
    if (!v152)
    {
      v106 = 0;
    }

    v107 = v106 | v153 | v144;
    if (v99)
    {
      [v76 setupFinalMeshFromMeshlessBaseGeometryWithInfo:v107 | v155];
    }

    else
    {
      [v76 setupFinalMeshFromBaseMeshWithInfo:v107 | v155];
    }
  }

  *(v76 + 864) = 0;
  *(v76 + 872) = 0;
  if (!*(v76 + 112))
  {
    [SCNMTLDeformerStack reconfigureIfNeededWithContext:programHashCodeRequirements:];
  }

  v108 = *(v76 + 256);
  __src[0] = *(v76 + 240);
  __src[1] = v108;
  __src[2] = __src[0];
  __src[3] = v108;
  v109 = *(v76 + 288);
  __src[4] = *(v76 + 272);
  __src[5] = v109;
  __src[6] = __src[4];
  __src[7] = v109;
  v110 = *(v76 + 320);
  __src[8] = *(v76 + 304);
  __src[9] = v110;
  __src[10] = __src[8];
  __src[11] = v110;
  memset(&__src[12], 0, 192);
  if (v142)
  {
    ObjCWrapper = C3DEntityGetObjCWrapper(*(v76 + 24));
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(*(v76 + 40), 0, 0, *(v76 + 49));
    Count = C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v112);
    v113 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:v142];
    v114 = obj;
    if ([PostMorphingDeformers count])
    {
      *(v76 + 864) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(PostMorphingDeformers, "count")}];
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v115 = [PostMorphingDeformers countByEnumeratingWithState:&v166 objects:v206 count:16];
      if (v115)
      {
        v116 = v115;
        v117 = *v167;
        do
        {
          v118 = 0;
          do
          {
            if (*v167 != v117)
            {
              objc_enumerationMutation(PostMorphingDeformers);
            }

            v119 = *(*(&v166 + 1) + 8 * v118);
            v120 = [*(v76 + 880) objectForKey:v119];
            if (v120)
            {
              v121 = v120;
              [*(v76 + 864) addObject:v120];
              [v113 setObject:v121 forKey:v119];
            }

            else
            {
              v122 = [SCNGeometryDeformerInstanceWrapper alloc];
              memcpy(__dst, __src, sizeof(__dst));
              v123 = [(SCNGeometryDeformerInstanceWrapper *)v122 initWithWrappedInstanceForStack:v76 deformer:v119 node:ObjCWrapper outputs:v50 computeVertexCount:Count stageInputOutputDescriptors:__dst];
              [*(v76 + 864) addObject:v123];
              [v113 setObject:v123 forKey:v119];
            }

            ++v118;
            v114 = obj;
          }

          while (v116 != v118);
          v124 = [PostMorphingDeformers countByEnumeratingWithState:&v166 objects:v206 count:16];
          v116 = v124;
        }

        while (v124);
      }
    }

    if ([v114 count])
    {
      *(v76 + 872) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v114, "count")}];
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v125 = [v114 countByEnumeratingWithState:&v161 objects:v205 count:16];
      if (v125)
      {
        v126 = v125;
        v127 = *v162;
        do
        {
          v128 = 0;
          do
          {
            if (*v162 != v127)
            {
              objc_enumerationMutation(obj);
            }

            v129 = *(*(&v161 + 1) + 8 * v128);
            v130 = [*(v76 + 880) objectForKey:v129];
            if (v130)
            {
              v131 = v130;
              [*(v76 + 872) addObject:v130];
              [v113 setObject:v131 forKey:v129];
            }

            else
            {
              v132 = [SCNGeometryDeformerInstanceWrapper alloc];
              memcpy(__dst, __src, sizeof(__dst));
              v133 = [(SCNGeometryDeformerInstanceWrapper *)v132 initWithWrappedInstanceForStack:v76 deformer:v129 node:ObjCWrapper outputs:v50 computeVertexCount:Count stageInputOutputDescriptors:__dst];
              [*(v76 + 872) addObject:v133];
              [v113 setObject:v133 forKey:v129];
            }

            ++v128;
          }

          while (v126 != v128);
          v134 = [obj countByEnumeratingWithState:&v161 objects:v205 count:16];
          v126 = v134;
        }

        while (v134);
      }
    }
  }

  else
  {
    v113 = 0;
  }

  *(v76 + 880) = v113;
  *(v76 + 50) = 1;
  *(v76 + 400) = 0;
  *(v76 + 408) = 0;
}

CFTypeRef __82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    PositionSourceForDeformerBasedDynamicMesh = C3DGeometryCreatePositionSourceForDeformerBasedDynamicMesh(*(a1 + 32));

    return CFAutorelease(PositionSourceForDeformerBasedDynamicMesh);
  }

  else
  {
    v5 = *(a1 + 40);

    return C3DMeshGetSourceWithSemanticAtIndex(v5, 0, 0, a2);
  }
}

const void *__82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    __82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke_2_cold_2();
  }

  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(*(a1 + 40), 1, 0, *(*(a1 + 32) + 49));
  if (!SourceWithSemanticAtIndex)
  {
    SourceWithSemanticAtIndex = C3DCreateNormalsWithMesh(*(a1 + 40), *(*(a1 + 32) + 49), 0);
    if (!SourceWithSemanticAtIndex)
    {
      v4 = scn_default_log(0, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLDeformerStack *)v4 setupInitialBuffersWithBasePositionSourceProvider:v5 baseNormalSourceProvider:v6 baseTangentSourceProvider:v7 info:v8, v9, v10, v11];
      }
    }

    CFAutorelease(SourceWithSemanticAtIndex);
  }

  return SourceWithSemanticAtIndex;
}

const void *__82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke_28(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    __82__SCNMTLDeformerStack_reconfigureIfNeededWithContext_programHashCodeRequirements___block_invoke_28_cold_2();
  }

  result = C3DMeshGetSourceWithSemanticAtIndex(*(a1 + 40), 4, 0, *(*(a1 + 32) + 49));
  if (!result)
  {
    C3DMeshCreateTangentsIfNeeded(*(a1 + 40), *(*(a1 + 32) + 49));
    result = C3DMeshGetSourceWithSemanticAtIndex(*(a1 + 40), 4, 0, *(*(a1 + 32) + 49));
    if (!result)
    {
      v4 = scn_default_log(0, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLDeformerStack *)v4 setupInitialBuffersWithBasePositionSourceProvider:v5 baseNormalSourceProvider:v6 baseTangentSourceProvider:v7 info:v8, v9, v10, v11];
      }

      return 0;
    }
  }

  return result;
}

- (unint64_t)currentFrameHash
{
  currentUpdateRenderContext = self->_currentUpdateRenderContext;
  engineContext = [(SCNMTLRenderContext *)currentUpdateRenderContext engineContext];
  SystemTime = C3DEngineContextGetSystemTime(engineContext);
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)currentUpdateRenderContext computeEvaluator];
  v6 = 0x9DDFEA08EB382D69 * (computeEvaluator ^ ((0x9DDFEA08EB382D69 * (computeEvaluator ^ currentUpdateRenderContext)) >> 47) ^ (0x9DDFEA08EB382D69 * (computeEvaluator ^ currentUpdateRenderContext)));
  v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&SystemTime) ^ ((0xC6A4A7935BD1E995 * *&SystemTime) >> 47))) ^ 0x35253C9ADE8F4CA8 ^ (0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47))));
  return (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
}

- (__n128)currentTransforms
{
  v2 = *(self + 560);
  *(a2 + 128) = *(self + 544);
  *(a2 + 144) = v2;
  v3 = *(self + 592);
  *(a2 + 160) = *(self + 576);
  *(a2 + 176) = v3;
  v4 = *(self + 496);
  *(a2 + 64) = *(self + 480);
  *(a2 + 80) = v4;
  v5 = *(self + 528);
  *(a2 + 96) = *(self + 512);
  *(a2 + 112) = v5;
  v6 = *(self + 432);
  *a2 = *(self + 416);
  *(a2 + 16) = v6;
  result = *(self + 448);
  v8 = *(self + 464);
  *(a2 + 32) = result;
  *(a2 + 48) = v8;
  return result;
}

- (__n128)_currentFrustumInfo
{
  v2 = *(self + 688);
  *(a2 + 64) = *(self + 672);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(self + 704);
  v3 = *(self + 624);
  *a2 = *(self + 608);
  *(a2 + 16) = v3;
  result = *(self + 656);
  *(a2 + 32) = *(self + 640);
  *(a2 + 48) = result;
  return result;
}

- (SCNMTLComputeCommandEncoder)currentComputeEncoder
{
  result = self->_currentUpdateComputeCommandEncoder;
  if (!result)
  {
    result = [(SCNMTLRenderContext *)self->_currentUpdateRenderContext resourceComputeEncoder];
    self->_currentUpdateComputeCommandEncoder = result;
  }

  return result;
}

- (void)encodeCommandsInNewCommandBufferUsingBlock:(id)block
{
  self->_currentUpdateComputeCommandEncoder = 0;
  resourceCommandBuffer = [(SCNMTLRenderContext *)self->_currentUpdateRenderContext resourceCommandBuffer];
  v5 = *(block + 2);

  v5(block, resourceCommandBuffer);
}

- (void)setStageInputOutputBuffersToEncoder:(SCNMTLComputeCommandEncoder *)encoder
{
  srcPositions = self->_currentUpdateBuffers.srcPositions;
  if (encoder->_buffers[10] == srcPositions)
  {
    if (!encoder->_offsets[10])
    {
      goto LABEL_5;
    }
  }

  else
  {
    encoder->_buffers[10] = srcPositions;
  }

  encoder->_offsets[10] = 0;
  encoder->_buffersToBind[0] |= 0x400uLL;
LABEL_5:
  srcNormals = self->_currentUpdateBuffers.srcNormals;
  if (encoder->_buffers[11] == srcNormals)
  {
    if (!encoder->_offsets[11])
    {
      goto LABEL_9;
    }
  }

  else
  {
    encoder->_buffers[11] = srcNormals;
  }

  encoder->_offsets[11] = 0;
  encoder->_buffersToBind[0] |= 0x800uLL;
LABEL_9:
  srcTangents = self->_currentUpdateBuffers.srcTangents;
  if (encoder->_buffers[12] == srcTangents)
  {
    if (!encoder->_offsets[12])
    {
      return;
    }
  }

  else
  {
    encoder->_buffers[12] = srcTangents;
  }

  encoder->_offsets[12] = 0;
  encoder->_buffersToBind[0] |= 0x1000uLL;
}

uint64_t __111__SCNMTLDeformerStack_computeDeformedMeshForContext_programHashCodeRequirements_transforms_frustumInfo_status___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = C3DDeformerStackWantsGPU(a2, a2);
  if (result)
  {
    v9 = [*(*(a1 + 32) + 8) renderResourceForDeformerStack:a2 node:a3 dataKind:a4];
    v11 = v9;
    if (v9)
    {
      if (*(v9 + 51) == 1)
      {
        v12 = scn_default_log(v9, v10);
        v9 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
        if (v9)
        {
          __111__SCNMTLDeformerStack_computeDeformedMeshForContext_programHashCodeRequirements_transforms_frustumInfo_status___block_invoke_cold_1(v12, v10, v13, v14, v15, v16, v17, v18);
        }
      }

      if (*(v11 + 52) == 1)
      {
        v19 = scn_default_log(v9, v10);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          __111__SCNMTLDeformerStack_computeDeformedMeshForContext_programHashCodeRequirements_transforms_frustumInfo_status___block_invoke_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
        }
      }
    }

    return [(SCNMTLDeformerStack *)v11 computeDeformedMeshForContext:*(a1 + 48) programHashCodeRequirements:&v27 transforms:v29 frustumInfo:&v28 status:?];
  }

  return result;
}

uint64_t __111__SCNMTLDeformerStack_computeDeformedMeshForContext_programHashCodeRequirements_transforms_frustumInfo_status___block_invoke_36(uint64_t a1)
{
  v1 = [*(a1 + 32) currentComputeEncoder];
  bzero(v1, 0x678uLL);
  return v1[207];
}

- (id)dependencyBufferForInput:(unint64_t)input dependencyStack:(id)stack
{
  if (input <= 8)
  {
    if (((1 << input) & 0x48) != 0)
    {
      return *(stack + 11);
    }

    if (((1 << input) & 0x90) != 0)
    {
      return *(stack + 12);
    }

    if (((1 << input) & 0x120) != 0)
    {
      return *(stack + 13);
    }
  }

  v5 = scn_default_log(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLDeformerStack dependencyBufferForInput:dependencyStack:];
  }

  return 0;
}

- (id)dependencyBufferForInput:(unint64_t)input dependencyMesh:(id)mesh
{
  v4 = scn_default_log(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_ERROR, "Unreachable code: Not implemented", v5, 2u);
  }

  __assert_rtn("[SCNMTLDeformerStack dependencyBufferForInput:dependencyMesh:]", "SCNMTLDeformerStack.mm", 1985, "0");
}

- (void)updateDependencyBuffersInBufferArray:(id *)array forDeformer:(id)deformer
{
  v4 = MEMORY[0x277D85DD0];
  *&array->var8 = 0u;
  *&array->var10 = 0u;
  *&array->var6 = 0u;
  v5[0] = v4;
  v5[1] = 3221225472;
  v5[2] = __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke;
  v5[3] = &unk_2782FC5D0;
  v5[4] = self;
  v5[5] = array;
  [deformer _enumerateDependencyNodesUsingBlock:v5];
}

void __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke(uint64_t a1, uint64_t a2, void *a3, __int16 a4)
{
  v7 = [a3 nodeRef];
  DeformerStack = C3DNodeGetDeformerStack(v7, v8);
  if (!DeformerStack)
  {
    Geometry = C3DNodeGetGeometry(v7, v10);
    Mesh = C3DGeometryGetMesh(Geometry, v43);
    v45 = [(SCNMTLResourceManager *)*(*(a1 + 32) + 8) renderResourceForMesh:*(*(a1 + 32) + 49) dataKind:?];
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      if ((a4 & 8) != 0 && (v46 = [*(a1 + 32) dependencyBufferForInput:3 dependencyMesh:v45], (*(*(a1 + 40) + 48) = v46) == 0) && (v48 = scn_default_log(0, v47), os_log_type_enabled(v48, OS_LOG_TYPE_FAULT)))
      {
        __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_4(v48, v49, v50, v51, v52, v53, v54, v55);
        if ((a4 & 0x10) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((a4 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      v56 = [*(a1 + 32) dependencyBufferForInput:4 dependencyMesh:v45];
      *(*(a1 + 40) + 56) = v56;
      if (!v56)
      {
        v58 = scn_default_log(0, v57);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
        {
          __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_5(v58, v59, v60, v61, v62, v63, v64, v65);
        }
      }

LABEL_24:
      if ((a4 & 0x20) != 0)
      {
        v66 = [*(a1 + 32) dependencyBufferForInput:5 dependencyMesh:v45];
        *(*(a1 + 40) + 64) = v66;
        if (!v66)
        {
          v34 = scn_default_log(0, v67);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_14;
          }
        }
      }

      return;
    }

    if ((a4 & 0x40) != 0 && (v98 = [*(a1 + 32) dependencyBufferForInput:6 dependencyMesh:v45], (*(*(a1 + 40) + 72) = v98) == 0) && (v100 = scn_default_log(0, v99), os_log_type_enabled(v100, OS_LOG_TYPE_FAULT)))
    {
      __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_1(v100, v101, v102, v103, v104, v105, v106, v107);
      if ((a4 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    else if ((a4 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    v108 = [*(a1 + 32) dependencyBufferForInput:7 dependencyMesh:v45];
    *(*(a1 + 40) + 80) = v108;
    if (!v108)
    {
      v110 = scn_default_log(0, v109);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
      {
        __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_2(v110, v111, v112, v113, v114, v115, v116, v117);
      }
    }

LABEL_46:
    if ((a4 & 0x100) == 0)
    {
      return;
    }

    v118 = [*(a1 + 32) dependencyBufferForInput:8 dependencyMesh:v45];
    *(*(a1 + 40) + 88) = v118;
    if (v118)
    {
      return;
    }

    v90 = scn_default_log(0, v119);
    if (!os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_49:
    __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_3(v90, v91, v92, v93, v94, v95, v96, v97);
    return;
  }

  v11 = [*(*(a1 + 32) + 8) renderResourceForDeformerStack:DeformerStack node:v7 dataKind:*(*(a1 + 32) + 49)];
  if (a2 == 1)
  {
    if ((a4 & 0x40) != 0 && (v68 = [*(a1 + 32) dependencyBufferForInput:6 dependencyStack:v11], (*(*(a1 + 40) + 72) = v68) == 0) && (v70 = scn_default_log(0, v69), os_log_type_enabled(v70, OS_LOG_TYPE_FAULT)))
    {
      __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_1(v70, v71, v72, v73, v74, v75, v76, v77);
      if ((a4 & 0x80) == 0)
      {
        goto LABEL_35;
      }
    }

    else if ((a4 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    v78 = [*(a1 + 32) dependencyBufferForInput:7 dependencyStack:v11];
    *(*(a1 + 40) + 80) = v78;
    if (!v78)
    {
      v80 = scn_default_log(0, v79);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
      {
        __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_2(v80, v81, v82, v83, v84, v85, v86, v87);
      }
    }

LABEL_35:
    if ((a4 & 0x100) == 0)
    {
      return;
    }

    v88 = [*(a1 + 32) dependencyBufferForInput:8 dependencyStack:v11];
    *(*(a1 + 40) + 88) = v88;
    if (v88)
    {
      return;
    }

    v90 = scn_default_log(0, v89);
    if (!os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_49;
  }

  if (a2)
  {
    return;
  }

  if ((a4 & 8) != 0 && (v12 = [*(a1 + 32) dependencyBufferForInput:3 dependencyStack:v11], (*(*(a1 + 40) + 48) = v12) == 0) && (v14 = scn_default_log(0, v13), os_log_type_enabled(v14, OS_LOG_TYPE_FAULT)))
  {
    __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_4(v14, v15, v16, v17, v18, v19, v20, v21);
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a4 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  v22 = [*(a1 + 32) dependencyBufferForInput:4 dependencyStack:v11];
  *(*(a1 + 40) + 56) = v22;
  if (!v22)
  {
    v24 = scn_default_log(0, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_5(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

LABEL_11:
  if ((a4 & 0x20) != 0)
  {
    v32 = [*(a1 + 32) dependencyBufferForInput:5 dependencyStack:v11];
    *(*(a1 + 40) + 64) = v32;
    if (!v32)
    {
      v34 = scn_default_log(0, v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
LABEL_14:
        __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_6(v34, v35, v36, v37, v38, v39, v40, v41);
      }
    }
  }
}

uint64_t __76__SCNMTLDeformerStack_updateDataForAuthoringEnvironment_transforms_context___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 232);
    v6 = *(*(a1 + 224) + 24);
    v7 = *(a1 + 176);
    v14[8] = *(a1 + 160);
    v14[9] = v7;
    v8 = *(a1 + 208);
    v14[10] = *(a1 + 192);
    v14[11] = v8;
    v9 = *(a1 + 112);
    v14[4] = *(a1 + 96);
    v14[5] = v9;
    v10 = *(a1 + 144);
    v14[6] = *(a1 + 128);
    v14[7] = v10;
    v11 = *(a1 + 48);
    v14[0] = *(a1 + 32);
    v14[1] = v11;
    v12 = *(a1 + 80);
    v13 = *(a1 + 240);
    v14[2] = *(a1 + 64);
    v14[3] = v12;
    return [a2 updateDataForAuthoringEnvironment:v13 node:v6 transforms:v14 context:v5];
  }

  return result;
}

uint64_t __56__SCNMTLDeformerStack_drawAuthoringEnvironment_context___block_invoke(void *a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = a1[5];
    v5 = a1[6];
    v7 = *(a1[4] + 24);

    return [a2 drawAuthoringEnvironment:v5 node:v7 context:v6];
  }

  return result;
}

- (void)initWithDeformerStack:(uint64_t)stack node:(char)node dataKind:(uint64_t)kind resourceManager:
{
  v91 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v90.receiver = self;
  v90.super_class = SCNMTLDeformerStack;
  v9 = objc_msgSendSuper2(&v90, sel_init);
  v11 = v9;
  if (v9)
  {
    v9[1] = kind;
    v9[2] = a2;
    v9[3] = stack;
    *(v9 + 48) = node;
    *(v9 + 49) = node;
    PostMorphingDeformers = C3DDeformerStackGetPostMorphingDeformers(a2, v10);
    PostSkinningDeformers = C3DDeformerStackGetPostSkinningDeformers(v11[2], v13);
    v22 = OUTLINED_FUNCTION_9(PostSkinningDeformers, v15, v16, v17, v18, v19, v20, v21, v56, v59, v62, v65, v68, v71, v74, v77);
    if (v22)
    {
      v30 = v22;
      v31 = MEMORY[0];
      do
      {
        v32 = 0;
        do
        {
          if (MEMORY[0] != v31)
          {
            objc_enumerationMutation(PostMorphingDeformers);
          }

          v33 = *(8 * v32);
          *(v11 + 49) = 0;
          *(v11 + 51) |= [v33 deformedMeshReliesOnTransforms];
          deformedMeshReliesOnFrustum = [v33 deformedMeshReliesOnFrustum];
          *(v11 + 52) |= deformedMeshReliesOnFrustum;
          ++v32;
        }

        while (v30 != v32);
        v22 = OUTLINED_FUNCTION_9(deformedMeshReliesOnFrustum, v35, v36, v37, v38, v39, v40, v41, v57, v60, v63, v66, v69, v72, v75, v78);
        v30 = v22;
      }

      while (v22);
    }

    v42 = OUTLINED_FUNCTION_10(v22, v23, v24, v25, v26, v27, v28, v29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v88, v90.receiver, v90.super_class);
    if (v42)
    {
      v43 = v42;
      v44 = *v64;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v64 != v44)
          {
            objc_enumerationMutation(PostSkinningDeformers);
          }

          v46 = *(v61 + 8 * i);
          *(v11 + 49) = 0;
          *(v11 + 51) |= [v46 deformedMeshReliesOnTransforms];
          deformedMeshReliesOnFrustum2 = [v46 deformedMeshReliesOnFrustum];
          *(v11 + 52) |= deformedMeshReliesOnFrustum2;
        }

        v43 = OUTLINED_FUNCTION_10(deformedMeshReliesOnFrustum2, v48, v49, v50, v51, v52, v53, v54, v58, v61, v64, v67, v70, v73, v76, v79, v80, v81, v82, v83, v84, v85, v86, v87, v89, v90.receiver, v90.super_class);
      }

      while (v43);
    }
  }

  return v11;
}

- (uint64_t)invalidate
{
  if (result)
  {
    *(result + 50) = 0;
  }

  return result;
}

- (uint64_t)setNextUpdateRequiresResetForIncrementalDeformers
{
  if (result)
  {
    return [(SCNMTLMorphDeformer *)*(result + 832) setNextFrameRequiresFullMeshReset];
  }

  return result;
}

- (uint64_t)computeDeformedMeshReliesOnTransforms
{
  if (self)
  {
    v1 = *(self + 51);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)computeDeformedMeshReliesOnFrustum
{
  if (self)
  {
    v1 = *(self + 52);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)computeDeformedMeshForContext:(unsigned __int8)context programHashCodeRequirements:(const void *)requirements transforms:(const void *)transforms frustumInfo:(_BOOL8 *)info status:
{
  if (!self)
  {
    return 0;
  }

  v12 = *(self + 16);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __111__SCNMTLDeformerStack_computeDeformedMeshForContext_programHashCodeRequirements_transforms_frustumInfo_status___block_invoke;
  v60[3] = &unk_2782FC580;
  v60[4] = self;
  v60[5] = a2;
  contextCopy = context;
  C3DDeformerStackEnumerateDependencyStacks(v12, v60);
  memcpy((self + 416), requirements, 0xC0uLL);
  memcpy((self + 608), transforms, 0x70uLL);
  *(self + 720) = a2;
  [self reconfigureIfNeededWithContext:a2 programHashCodeRequirements:context];
  OUTLINED_FUNCTION_2_4();
  v13 = *(self + 56);
  v14 = *(self + 64);
  v15 = *(self + 88);
  v16 = *(self + 96);
  if (!v13)
  {
    v13 = *(self + 88);
  }

  if (!v14)
  {
    v14 = *(self + 96);
  }

  v17 = *(self + 72);
  v18 = *(self + 104);
  meshForDeformedTopology = *(self + 112);
  if (!v17)
  {
    v17 = *(self + 104);
  }

  *(self + 736) = v13;
  *(self + 744) = v15;
  *(self + 752) = v14;
  *(self + 760) = v16;
  *(self + 768) = v17;
  *(self + 776) = v18;
  OUTLINED_FUNCTION_5();
  v24 = *(self + 832);
  if (v24)
  {
    *(self + 744) = v21;
    *(self + 760) = v22;
    *(self + 776) = v23;
    v25 = OUTLINED_FUNCTION_11(v24, v20) == 1;
    v26 = *(self + 96);
    *(self + 744) = *(self + 88);
    *(self + 760) = v26;
    *(self + 776) = *(self + 104);
  }

  else
  {
    v25 = 0;
  }

  if (*(self + 864) && (PostMorphingDeformers = C3DDeformerStackGetPostMorphingDeformers(*(self + 16), v20), (v28 = [*(self + 864) count]) != 0))
  {
    v29 = v28;
    v30 = 0;
    for (i = 0; i != v29; ++i)
    {
      v32 = [*(self + 864) objectAtIndexedSubscript:i];
      if (v32)
      {
        [OUTLINED_FUNCTION_6() updateDependencyBuffersInBufferArray:? forDeformer:?];
        OUTLINED_FUNCTION_8();
        v33 = [*(v32 + 24) updateWithContext:v32];
        *(v32 + 416) = 0;
        *(v32 + 424) = 0;
        if (v33 == 1)
        {
          v25 = 1;
        }

        v30 |= v33 == 1;
      }

      else
      {
        [OUTLINED_FUNCTION_6() updateDependencyBuffersInBufferArray:? forDeformer:?];
      }

      OUTLINED_FUNCTION_0_5();
      if (([objc_msgSend(PostMorphingDeformers objectAtIndexedSubscript:{i, OUTLINED_FUNCTION_5()), "requiredOutputs"}] & 0x200) != 0)
      {
        if (v32)
        {
          v34 = *(v32 + 24);
        }

        else
        {
          v34 = 0;
        }

        meshForDeformedTopology = [v34 meshForDeformedTopology];
      }
    }
  }

  else
  {
    v30 = 0;
  }

  v35 = *(self + 840);
  if (v35)
  {
    if (OUTLINED_FUNCTION_11(v35, v20) == 1)
    {
      v25 = 1;
    }

    OUTLINED_FUNCTION_0_5();
  }

  if (*(self + 872))
  {
    PostSkinningDeformers = C3DDeformerStackGetPostSkinningDeformers(*(self + 16), v20);
    v37 = [*(self + 872) count];
    if (v37)
    {
      v38 = v37;
      for (j = 0; j != v38; ++j)
      {
        v40 = [*(self + 872) objectAtIndexedSubscript:j];
        if (v40)
        {
          [OUTLINED_FUNCTION_6() updateDependencyBuffersInBufferArray:? forDeformer:?];
          OUTLINED_FUNCTION_8();
          v41 = [*(v40 + 24) updateWithContext:v40];
          *(v40 + 416) = 0;
          *(v40 + 424) = 0;
          if (v41 == 1)
          {
            v25 = 1;
          }

          v30 |= v41 == 1;
        }

        else
        {
          [OUTLINED_FUNCTION_6() updateDependencyBuffersInBufferArray:? forDeformer:?];
        }

        OUTLINED_FUNCTION_0_5();
        if (([objc_msgSend(PostSkinningDeformers objectAtIndexedSubscript:{j, OUTLINED_FUNCTION_5()), "requiredOutputs"}] & 0x200) != 0)
        {
          if (v40)
          {
            v42 = *(v40 + 24);
          }

          else
          {
            v42 = 0;
          }

          meshForDeformedTopology = [v42 meshForDeformedTopology];
        }
      }
    }
  }

  v43 = *(self + 848);
  if (v43)
  {
    v44 = OUTLINED_FUNCTION_11(v43, v20);
    if (v44 == 1)
    {
      v25 = 1;
    }

    v30 |= v44 == 1;
    OUTLINED_FUNCTION_0_5();
  }

  if (*(self + 48) != *(self + 49))
  {
    currentComputeEncoder = [self currentComputeEncoder];
    v46 = currentComputeEncoder;
    v47 = *(self + 88);
    if (currentComputeEncoder->_buffers[0] == v47)
    {
      if (!currentComputeEncoder->_offsets[0])
      {
        goto LABEL_55;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[0] = v47;
    }

    currentComputeEncoder->_offsets[0] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 1uLL;
LABEL_55:
    v48 = *(self + 120);
    if (currentComputeEncoder->_buffers[1] == v48)
    {
      if (!currentComputeEncoder->_offsets[1])
      {
        goto LABEL_59;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[1] = v48;
    }

    currentComputeEncoder->_offsets[1] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 2uLL;
LABEL_59:
    v49 = *(self + 96);
    if (!v49)
    {
      goto LABEL_68;
    }

    if (currentComputeEncoder->_buffers[2] == v49)
    {
      if (!currentComputeEncoder->_offsets[2])
      {
        goto LABEL_64;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[2] = v49;
    }

    currentComputeEncoder->_offsets[2] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 4uLL;
LABEL_64:
    v50 = *(self + 128);
    if (currentComputeEncoder->_buffers[3] == v50)
    {
      if (!currentComputeEncoder->_offsets[3])
      {
        goto LABEL_68;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[3] = v50;
    }

    currentComputeEncoder->_offsets[3] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 8uLL;
LABEL_68:
    v51 = *(self + 104);
    if (!v51)
    {
      goto LABEL_77;
    }

    if (currentComputeEncoder->_buffers[4] == v51)
    {
      if (!currentComputeEncoder->_offsets[4])
      {
        goto LABEL_73;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[4] = v51;
    }

    currentComputeEncoder->_offsets[4] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 0x10uLL;
LABEL_73:
    v52 = *(self + 136);
    if (currentComputeEncoder->_buffers[5] == v52)
    {
      if (!currentComputeEncoder->_offsets[5])
      {
        goto LABEL_77;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[5] = v52;
    }

    currentComputeEncoder->_offsets[5] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 0x20uLL;
LABEL_77:
    v53 = *(self + 352);
    if (currentComputeEncoder->_buffers[6] == v53)
    {
      if (!currentComputeEncoder->_offsets[6])
      {
LABEL_81:
        SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, (self + 336), 4uLL, 7uLL);
        computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)*(self + 344) computeEvaluator];
        v55 = *(self + 336);
        if (v46->_computePipelineState != computeEvaluator)
        {
          v46->_computePipelineState = computeEvaluator;
          [(MTLComputeCommandEncoder *)v46->_encoder setComputePipelineState:computeEvaluator];
        }

        SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v46, v55);
        goto LABEL_84;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[6] = v53;
    }

    currentComputeEncoder->_offsets[6] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 0x40uLL;
    goto LABEL_81;
  }

LABEL_84:
  v56 = *(self + 128);
  *(self + 744) = *(self + 120);
  *(self + 760) = v56;
  *(self + 776) = *(self + 136);
  if (v25)
  {
    OUTLINED_FUNCTION_11(*(self + 856), v20);
  }

  v57 = *(self + 728);
  if (v57)
  {
    bzero(v57, 0x678uLL);
  }

  *info = v25;
  bzero((self + 416), 0xC0uLL);
  *(self + 688) = 0u;
  *(self + 704) = 0u;
  *(self + 656) = 0u;
  *(self + 672) = 0u;
  *(self + 624) = 0u;
  *(self + 640) = 0u;
  *(self + 608) = 0u;
  *(self + 720) = 0;
  *(self + 728) = 0;
  if (v30)
  {
    C3DNodeBoundingBoxDidUpdate(*(self + 24), v58);
  }

  return meshForDeformedTopology;
}

- (uint64_t)bufferForCommonProfileArgumentNamed:(uint64_t)result
{
  v10 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if ((result & 1) == 0 || (result = [*(v3 + 848) bufferForCommonProfileArgumentNamed:a2]) == 0)
    {
      v5 = scn_default_log(result, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = 136315394;
        v7 = "buffer != nil";
        v8 = 2112;
        v9 = a2;
        _os_log_fault_impl(&dword_21BEF7000, v5, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Deformer stack failed to find buffer for shader argument %@", &v6, 0x16u);
      }

      return 0;
    }
  }

  return result;
}

- (void)updateDataForAuthoringEnvironment:(uint64_t)environment transforms:(uint64_t)transforms context:
{
  if (result)
  {
    v5 = result;
    OUTLINED_FUNCTION_2_4();
    v10[1] = 3221225472;
    v10[2] = __76__SCNMTLDeformerStack_updateDataForAuthoringEnvironment_transforms_context___block_invoke;
    v10[3] = &unk_2782FC5F8;
    v10[30] = v6;
    v10[28] = v7;
    memcpy((v8 + 32), v9, 0xC0uLL);
    v10[29] = transforms;
    return [v5 enumerateInternalDeformersUsingBlock:v10];
  }

  return result;
}

- (void)drawAuthoringEnvironment:(uint64_t)environment context:
{
  if (result)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __56__SCNMTLDeformerStack_drawAuthoringEnvironment_context___block_invoke;
    v3[3] = &unk_2782FC620;
    v3[5] = environment;
    v3[6] = a2;
    v3[4] = result;
    return [result enumerateInternalDeformersUsingBlock:v3];
  }

  return result;
}

- (void)setupInitialBuffersWithBasePositionSourceProvider:(uint64_t)a3 baseNormalSourceProvider:(uint64_t)a4 baseTangentSourceProvider:(uint64_t)a5 info:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "baseNormalSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setupInitialBuffersWithBasePositionSourceProvider:(uint64_t)a3 baseNormalSourceProvider:(uint64_t)a4 baseTangentSourceProvider:(uint64_t)a5 info:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "baseTangentSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setupFinalMeshFromBaseMeshWithInfo:(NSObject *)a3 .cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "_finalDataKind == kC3DMeshDataKindOriginal && subdivIsUsed";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Only original data kind can have non 'GPU' primitive type", a1);
}

- (void)setupFinalMeshFromMeshlessBaseGeometryWithInfo:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_meshlessDeformer";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setupFinalMeshFromMeshlessBaseGeometryWithInfo:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "info.wantsFinalNormalsBuffer == false";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Meshless deformers do not support deforming normals", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setupFinalMeshFromMeshlessBaseGeometryWithInfo:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "info.wantsFinalTangentsBuffer == false";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Meshless deformers do not support deforming tangents", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)deindexedToOriginalTableBufferWithBlitEncoder:(NSObject *)a3 indexSizeOut:.cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "orig < originalVertexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. buffer overflow", a1);
}

- (void)deindexedToFirstDeindexedTableBufferWithBlitEncoder:(NSObject *)a3 indexSizeOut:.cold.2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "prov < deindexedVertexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. buffer overflow", a1);
}

void __111__SCNMTLDeformerStack_computeDeformedMeshForContext_programHashCodeRequirements_transforms_frustumInfo_status___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[dependencyDeformerStack computeDeformedMeshReliesOnTransforms] == NO";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Transform of dependency node is not available", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __111__SCNMTLDeformerStack_computeDeformedMeshForContext_programHashCodeRequirements_transforms_frustumInfo_status___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[dependencyDeformerStack computeDeformedMeshReliesOnFrustum] == NO";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Frustum info for dependency node is not available", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "buffers->dependency1Positions";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "buffers->dependency1Normals";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "buffers->dependency1Tangents";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "buffers->dependency0Positions";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "buffers->dependency0Normals";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __72__SCNMTLDeformerStack_updateDependencyBuffersInBufferArray_forDeformer___block_invoke_cold_6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "buffers->dependency0Tangents";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end