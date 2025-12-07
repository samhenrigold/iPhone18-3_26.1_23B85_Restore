@interface IdcContentPreservingWarping
+ (void)getDefaultConfigurationParameters:(id *)parameters;
- (IdcContentPreservingWarping)initWithMetalContext:(id)context idcUtilities:(id)utilities;
- (int)compileShaders:(BOOL)shaders;
- (int)computeSizeOfSharedMetalBuffer:(id *)buffer maximumInputImageWidth:(unsigned int)width maximumInputImageHeight:(unsigned int)height maximumSegmentationMaskWidth:(unsigned int)maskWidth maximumSegmentationMaskHeight:(unsigned int)maskHeight meshWidth:(unsigned int)meshWidth meshHeight:(unsigned int)meshHeight paddedMeshWidth:(unsigned int)self0 paddedMeshHeight:(unsigned int)self1;
- (int)memoryAllocationHandler:(id *)handler paddedMeshWidth:(unsigned int)width paddedMeshHeight:(unsigned int)height memoryAllocationParameters:(id *)parameters sharedMemoryBuffer:(id)buffer sharedMetalBufferOffset:(unint64_t)offset sharedMetalBufferSize:(unint64_t)size;
- (int)process:(id *)process maximumInputImageWidth:(unsigned int)width maximumInputImageHeight:(unsigned int)height maximumSegmentationMaskWidth:(unsigned int)maskWidth maximumSegmentationMaskHeight:(unsigned int)maskHeight meshWidth:(unsigned int)meshWidth meshHeight:(unsigned int)meshHeight paddedMeshWidth:(unsigned int)self0 paddedMeshHeight:(unsigned int)self1 segmentationMaskTex:(id)self2 extendedMeshTex:(id)self3 invertedMeshTex:(id)self4 detectedLines:(id *)self5 executionErrorInformation:(id *)self6;
- (int)setSharedMetalBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size;
- (void)dealloc;
- (void)fillEdParameters:(id *)parameters meshWidth:(unsigned int)width meshHeight:(unsigned int)height;
- (void)releaseResources;
@end

@implementation IdcContentPreservingWarping

+ (void)getDefaultConfigurationParameters:(id *)parameters
{
  if (parameters)
  {
    *&parameters->var21[2].var0[1] = xmmword_2957C7DC0;
    *&parameters->var21[2].var0[5] = 10;
  }

  else
  {
    sub_2957C2880(self, a2);
  }
}

- (IdcContentPreservingWarping)initWithMetalContext:(id)context idcUtilities:(id)utilities
{
  contextCopy = context;
  utilitiesCopy = utilities;
  v9 = utilitiesCopy;
  if (!contextCopy)
  {
    sub_2957C2A00(self);
LABEL_8:
    v11 = 0;
    goto LABEL_5;
  }

  if (!utilitiesCopy)
  {
    sub_2957C2970(self);
    goto LABEL_8;
  }

  v13.receiver = self;
  v13.super_class = IdcContentPreservingWarping;
  v10 = [(IdcContentPreservingWarping *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_metalContext, context);
    objc_storeStrong(&v11->_idcUtilities, utilities);
    v11->_sharedMetalBuffer.resourcesAssigned = 0;
  }

  else
  {
    sub_2957C28F8();
  }

LABEL_5:

  return v11;
}

- (int)compileShaders:(BOOL)shaders
{
  v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEdStage1" constants:0];
  generateEdStage1 = self->_kernels.generateEdStage1;
  self->_kernels.generateEdStage1 = v5;

  if (!self->_kernels.generateEdStage1)
  {
    sub_2957C3210();
    return -12786;
  }

  v7 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEdStage2" constants:0];
  generateEdStage2 = self->_kernels.generateEdStage2;
  self->_kernels.generateEdStage2 = v7;

  if (!self->_kernels.generateEdStage2)
  {
    sub_2957C3198();
    return -12786;
  }

  v9 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEdStage3" constants:0];
  generateEdStage3 = self->_kernels.generateEdStage3;
  self->_kernels.generateEdStage3 = v9;

  if (!self->_kernels.generateEdStage3)
  {
    sub_2957C3120();
    return -12786;
  }

  v11 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEdColumns" constants:0];
  generateEdColumns = self->_kernels.generateEdColumns;
  self->_kernels.generateEdColumns = v11;

  if (!self->_kernels.generateEdColumns)
  {
    sub_2957C30A8();
    return -12786;
  }

  v13 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEdBuildAtA_Atb" constants:0];
  generateEdBuildAtA_Atb = self->_kernels.generateEdBuildAtA_Atb;
  self->_kernels.generateEdBuildAtA_Atb = v13;

  if (!self->_kernels.generateEdBuildAtA_Atb)
  {
    sub_2957C3030();
    return -12786;
  }

  v15 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEsPresetWeightArray" constants:0];
  generateEsPresetWeightArray = self->_kernels.generateEsPresetWeightArray;
  self->_kernels.generateEsPresetWeightArray = v15;

  if (!self->_kernels.generateEsPresetWeightArray)
  {
    sub_2957C2FB8();
    return -12786;
  }

  v17 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEsBuildWeightArray" constants:0];
  generateEsBuildWeightArray = self->_kernels.generateEsBuildWeightArray;
  self->_kernels.generateEsBuildWeightArray = v17;

  if (!self->_kernels.generateEsBuildWeightArray)
  {
    sub_2957C2F40();
    return -12786;
  }

  v19 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEsStage1" constants:0];
  generateEsStage1 = self->_kernels.generateEsStage1;
  self->_kernels.generateEsStage1 = v19;

  if (!self->_kernels.generateEsStage1)
  {
    sub_2957C2EC8();
    return -12786;
  }

  v21 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEsStage2" constants:0];
  generateEsStage2 = self->_kernels.generateEsStage2;
  self->_kernels.generateEsStage2 = v21;

  if (!self->_kernels.generateEsStage2)
  {
    sub_2957C2E50();
    return -12786;
  }

  v23 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateEsStage3" constants:0];
  generateEsStage3 = self->_kernels.generateEsStage3;
  self->_kernels.generateEsStage3 = v23;

  if (!self->_kernels.generateEsStage3)
  {
    sub_2957C2DD8();
    return -12786;
  }

  v25 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateElStage1" constants:0];
  generateElStage1 = self->_kernels.generateElStage1;
  self->_kernels.generateElStage1 = v25;

  if (!self->_kernels.generateElStage1)
  {
    sub_2957C2D60();
    return -12786;
  }

  v27 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateElStage2" constants:0];
  generateElStage2 = self->_kernels.generateElStage2;
  self->_kernels.generateElStage2 = v27;

  if (!self->_kernels.generateElStage2)
  {
    sub_2957C2CE8();
    return -12786;
  }

  v29 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::substitution" constants:0];
  substitution = self->_kernels.substitution;
  self->_kernels.substitution = v29;

  if (!self->_kernels.substitution)
  {
    sub_2957C2C70();
    return -12786;
  }

  v31 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::generateExtendedMesh" constants:0];
  generateExtendedMesh = self->_kernels.generateExtendedMesh;
  self->_kernels.generateExtendedMesh = v31;

  if (!self->_kernels.generateExtendedMesh)
  {
    sub_2957C2BF8();
    return -12786;
  }

  v33 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::validateExtendedMesh" constants:0];
  validateExtendedMesh = self->_kernels.validateExtendedMesh;
  self->_kernels.validateExtendedMesh = v33;

  if (!self->_kernels.validateExtendedMesh)
  {
    sub_2957C2B80();
    return -12786;
  }

  v35 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"icpw_kernels::invertMesh" constants:0];
  invertMesh = self->_kernels.invertMesh;
  self->_kernels.invertMesh = v35;

  if (!self->_kernels.invertMesh)
  {
    sub_2957C2B08();
    return -12786;
  }

  if (!shaders)
  {
    v37 = objc_alloc(MEMORY[0x29EDBB818]);
    device = [(FigMetalContext *)self->_metalContext device];
    v39 = [v37 initWithDevice:device lower:1 order:216];
    choleskyDecomposition = self->_choleskyDecomposition;
    self->_choleskyDecomposition = v39;

    if (self->_choleskyDecomposition)
    {
      v43[0] = 0;
      v43[1] = v43;
      v43[2] = 0x2020000000;
      v44 = 0;
      v42[0] = MEMORY[0x29EDCA5F8];
      v42[1] = 3221225472;
      v42[2] = sub_2957B8FD4;
      v42[3] = &unk_29EDDA0B8;
      v42[4] = self;
      v42[5] = v43;
      if (qword_2A18AB0E0 != -1)
      {
        dispatch_once(&qword_2A18AB0E0, v42);
      }

      _Block_object_dispose(v43, 8);
    }

    else
    {
      sub_2957C2A90();
    }
  }

  return 0;
}

- (void)releaseResources
{
  selfCopy = self;
  buffer = self->_sharedMetalBuffer.buffer;
  self->_sharedMetalBuffer.buffer = 0;

  selfCopy->_sharedMetalBuffer.offset = 0;
  selfCopy->_sharedMetalBuffer.size = 0;
  selfCopy->_sharedMetalBuffer.resourcesAssigned = 0;
  FigMetalDecRef();
  *&selfCopy->_offsets.es.arrayOfContainers = 0u;
  selfCopy = (selfCopy + 184);
  *&selfCopy->_sharedMetalBuffer.resourcesAssigned = 0u;
  selfCopy = (selfCopy + 176);
  selfCopy[-1]._offsets.vectorAtb = 0;
  *&selfCopy[-1]._offsets.edColumnHeaders = 0u;
  *&selfCopy[-1]._offsets.elFullMatrix = 0u;
  *&selfCopy[-1]._offsets.edPk = 0u;
  *&selfCopy[-1]._offsets.edRowSubSeqHeader = 0u;
  *&selfCopy[-1]._offsets.es.numElementsPerContainer = 0u;
  *&selfCopy[-1]._maximumMemoryAllocationParameters.numCells = 0;
  *&selfCopy[-1]._maximumMemoryAllocationParameters.meshNumNodes = 0;
  *&selfCopy[-1]._maximumMemoryAllocationParameters.segmentationMaskWidth = 0;
  *&selfCopy[-1]._currentMemoryAllocationParameters.numCells = 0;
  *&selfCopy[-1]._currentMemoryAllocationParameters.meshNumNodes = 0;
  *&selfCopy[-1]._currentMemoryAllocationParameters.segmentationMaskWidth = 0;
  *&selfCopy->_idcUtilities = 0u;
  *&selfCopy->_kernels.generateEdStage2 = 0u;
  *&selfCopy->_kernels.generateEdColumns = 0u;
  *&selfCopy->_kernels.generateEsPresetWeightArray = 0u;
  *&selfCopy->_kernels.generateEsStage1 = 0u;
  *&selfCopy->_kernels.generateEsStage3 = 0u;
  *&selfCopy->_kernels.generateElStage2 = 0u;
}

- (void)dealloc
{
  [(IdcContentPreservingWarping *)self releaseResources];
  v3.receiver = self;
  v3.super_class = IdcContentPreservingWarping;
  [(IdcContentPreservingWarping *)&v3 dealloc];
}

- (int)computeSizeOfSharedMetalBuffer:(id *)buffer maximumInputImageWidth:(unsigned int)width maximumInputImageHeight:(unsigned int)height maximumSegmentationMaskWidth:(unsigned int)maskWidth maximumSegmentationMaskHeight:(unsigned int)maskHeight meshWidth:(unsigned int)meshWidth meshHeight:(unsigned int)meshHeight paddedMeshWidth:(unsigned int)self0 paddedMeshHeight:(unsigned int)self1
{
  if (buffer)
  {
    buffer->var0 = 0;
    v14 = (meshHeight - 1) * (meshWidth - 1);
    v15 = height / (10 * (meshHeight - 1)) * (width / (10 * (meshWidth - 1)));
    v16 = meshHeight * meshWidth;
    v17 = 2 * meshHeight * meshWidth;
    LODWORD(v21) = meshHeight * meshWidth;
    HIDWORD(v21) = v17;
    v18 = [(IdcContentPreservingWarping *)self memoryAllocationHandler:0 paddedMeshWidth:__PAIR64__(v15 paddedMeshHeight:v14) memoryAllocationParameters:v21 sharedMemoryBuffer:__PAIR64__(maskHeight sharedMetalBufferOffset:maskWidth) sharedMetalBufferSize:?];
    v19 = v18;
    if (v18)
    {
      sub_2957C3420(v18);
    }

    else
    {
      self->_maximumMemoryAllocationParameters.numCells = v14;
      self->_maximumMemoryAllocationParameters.storageSizePerCell = v15;
      self->_maximumMemoryAllocationParameters.meshNumNodes = v16;
      self->_maximumMemoryAllocationParameters.aDimensions = v17;
      self->_maximumMemoryAllocationParameters.segmentationMaskWidth = maskWidth;
      self->_maximumMemoryAllocationParameters.segmentationMaskHeight = maskHeight;
    }
  }

  else
  {
    sub_2957C349C(self, a2, 0, *&width, *&height, *&maskWidth, *&maskHeight, *&meshWidth);
    return -12780;
  }

  return v19;
}

- (int)setSharedMetalBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size
{
  bufferCopy = buffer;
  if (bufferCopy)
  {
    objc_storeStrong(&self->_sharedMetalBuffer.buffer, buffer);
    v10 = 0;
    self->_sharedMetalBuffer.offset = offset;
    self->_sharedMetalBuffer.size = size;
    self->_sharedMetalBuffer.resourcesAssigned = 0;
  }

  else
  {
    sub_2957C3514();
    v10 = -12780;
  }

  return v10;
}

- (int)process:(id *)process maximumInputImageWidth:(unsigned int)width maximumInputImageHeight:(unsigned int)height maximumSegmentationMaskWidth:(unsigned int)maskWidth maximumSegmentationMaskHeight:(unsigned int)maskHeight meshWidth:(unsigned int)meshWidth meshHeight:(unsigned int)meshHeight paddedMeshWidth:(unsigned int)self0 paddedMeshHeight:(unsigned int)self1 segmentationMaskTex:(id)self2 extendedMeshTex:(id)self3 invertedMeshTex:(id)self4 detectedLines:(id *)self5 executionErrorInformation:(id *)self6
{
  v16 = *&meshWidth;
  texCopy = tex;
  meshTexCopy = meshTex;
  invertedMeshTexCopy = invertedMeshTex;
  if (!process)
  {
    sub_2957C3F84();
LABEL_6:
    v28 = -12780;
    goto LABEL_7;
  }

  var3 = process->var16.var3;
  if (var3 < 32 || var3 > width)
  {
    goto LABEL_6;
  }

  var4 = process->var16.var4;
  v28 = -12780;
  if (var4 >= 32)
  {
    p_var3 = &process->var16.var3;
    if (var4 <= height)
    {
      if (!texCopy)
      {
        sub_2957C3F0C();
        goto LABEL_7;
      }

      width = [texCopy width];
      height = [texCopy height];
      if (width >= 0x20 && width <= maskWidth && height >= 0x20 && height <= maskHeight)
      {
        if (!lines)
        {
          sub_2957C3E94();
          goto LABEL_7;
        }

        v103 = invertedMeshTexCopy;
        v113 = meshTexCopy;
        if (lines->var3)
        {
          [(IdcContentPreservingWarping *)self fillEdParameters:process meshWidth:v16 meshHeight:?];
          generateEdBuildAtA_Atb_high = HIDWORD(self[1]._kernels.generateEdBuildAtA_Atb);
          generateElStage1 = self[1]._kernels.generateElStage1;
          generateEdColumns = self[1]._kernels.generateEdColumns;
          generateElStage1_high = HIDWORD(self[1]._kernels.generateElStage1);
          width2 = [texCopy width];
          height2 = [texCopy height];
          if (generateEdBuildAtA_Atb_high > self->_maximumMemoryAllocationParameters.numCells)
          {
            sub_2957C3DA4(height2);
          }

          else if (generateElStage1 > self->_maximumMemoryAllocationParameters.storageSizePerCell)
          {
            sub_2957C3D2C(height2);
          }

          else if (generateEdColumns > self->_maximumMemoryAllocationParameters.meshNumNodes)
          {
            sub_2957C3CB4(height2);
          }

          else if (generateElStage1_high > self->_maximumMemoryAllocationParameters.aDimensions)
          {
            sub_2957C3C3C(height2);
          }

          else
          {
            if (!self->_sharedMetalBuffer.resourcesAssigned || generateEdBuildAtA_Atb_high != self->_currentMemoryAllocationParameters.numCells || generateElStage1 != self->_currentMemoryAllocationParameters.storageSizePerCell || generateEdColumns != self->_currentMemoryAllocationParameters.meshNumNodes || generateElStage1_high != self->_currentMemoryAllocationParameters.aDimensions || self->_currentMemoryAllocationParameters.segmentationMaskWidth != width2 || self->_currentMemoryAllocationParameters.segmentationMaskHeight != height2)
            {
              v105 = v16;
              self->_sharedMetalBuffer.resourcesAssigned = 0;
              buffer = self->_sharedMetalBuffer.buffer;
              offset = self->_sharedMetalBuffer.offset;
              size = self->_sharedMetalBuffer.size;
              *v120 = generateEdBuildAtA_Atb_high;
              *&v120[4] = generateElStage1;
              *&v120[8] = generateEdColumns;
              *&v120[12] = generateElStage1_high;
              *&v120[16] = width2;
              *&v120[20] = height2;
              v42 = height2;
              v43 = [(IdcContentPreservingWarping *)self memoryAllocationHandler:0 paddedMeshWidth:paddedMeshWidth paddedMeshHeight:paddedMeshHeight memoryAllocationParameters:v120 sharedMemoryBuffer:buffer sharedMetalBufferOffset:offset sharedMetalBufferSize:size];
              if (v43)
              {
                v28 = v43;
                sub_2957C358C();
                meshTexCopy = v113;
                invertedMeshTexCopy = v103;
                goto LABEL_7;
              }

              self->_sharedMetalBuffer.resourcesAssigned = 1;
              self->_currentMemoryAllocationParameters.numCells = generateEdBuildAtA_Atb_high;
              self->_currentMemoryAllocationParameters.storageSizePerCell = generateElStage1;
              self->_currentMemoryAllocationParameters.meshNumNodes = generateEdColumns;
              self->_currentMemoryAllocationParameters.aDimensions = generateElStage1_high;
              self->_currentMemoryAllocationParameters.segmentationMaskWidth = width2;
              self->_currentMemoryAllocationParameters.segmentationMaskHeight = v42;
              LODWORD(v16) = v105;
            }

            v44 = HIDWORD(self[1]._kernels.generateElStage1);
            v127[0] = HIDWORD(self[1]._kernels.generateElStage1);
            var1 = lines->var1;
            v106 = var1;
            if (var1 >= 0x800)
            {
              v46 = 2048;
            }

            else
            {
              v46 = var1;
            }

            v104 = v46;
            commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
            commandBuffer = [commandQueue commandBuffer];

            if (commandBuffer)
            {
              v49 = [commandBuffer computeCommandEncoderWithDispatchType:1];
              meshTexCopy = v113;
              if (v49)
              {
                v50 = v49;
                v51 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities zeroMetalBuffer:information->var0 range:0 commandEncoder:16, v49];
                if (v51)
                {
                  v28 = v51;
                  sub_2957C3608();
                  goto LABEL_75;
                }

                v52 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities zeroMetalBuffer:self->_sharedMetalBuffer.buffer range:self->_offsets.es.numElementsPerContainer commandEncoder:4 * v44, v50];
                if (v52)
                {
                  v28 = v52;
                  sub_2957C3694();
                  goto LABEL_75;
                }

                v53 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities zeroMetalBuffer:self->_sharedMetalBuffer.buffer range:self->_offsets.edNumSamplesPerCell commandEncoder:4 * (HIDWORD(self[1]._kernels.generateEdBuildAtA_Atb) + 1), v50];
                if (v53)
                {
                  v28 = v53;
                  sub_2957C3720();
                  goto LABEL_75;
                }

                v100 = 2 * v104 + 3;
                v102 = v44;
                v54 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities zeroMetalBuffer:self->_sharedMetalBuffer.buffer range:self->_offsets.elFullMatrix commandEncoder:v44 * (16 * (v100 >> 2)), v50];
                if (v54)
                {
                  v28 = v54;
                  sub_2957C37AC();
                  goto LABEL_75;
                }

                [v50 endEncoding];
                v126[0] = MEMORY[0x29EDCA5F8];
                v126[1] = 3221225472;
                v126[2] = sub_2957BA50C;
                v126[3] = &unk_29EDDA0D8;
                v126[4] = information;
                [commandBuffer addCompletedHandler:v126];
                [commandBuffer commit];
                commandQueue2 = [(FigMetalContext *)self->_metalContext commandQueue];
                commandBuffer2 = [commandQueue2 commandBuffer];

                if (commandBuffer2)
                {
                  v101 = commandBuffer2;
                  computeCommandEncoder = [commandBuffer2 computeCommandEncoder];

                  if (computeCommandEncoder)
                  {
                    *v117 = process->var21[2].var0[1];
                    [computeCommandEncoder setComputePipelineState:self->_kernels.generateEsPresetWeightArray];
                    [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.es.weights atIndex:0];
                    [computeCommandEncoder setBytes:v117 length:4 atIndex:1];
                    *v120 = paddedMeshHeight * paddedMeshWidth;
                    v107 = vdupq_n_s64(1uLL);
                    *&v120[8] = v107;
                    *v125 = [(MTLComputePipelineState *)self->_kernels.generateEsPresetWeightArray maxTotalThreadsPerThreadgroup];
                    *&v125[8] = v107;
                    [computeCommandEncoder dispatchThreads:v120 threadsPerThreadgroup:v125];
                    if (v106 && LOBYTE(process->var21[3].var0[0]) == 1)
                    {
                      *&v120[24] = 0;
                      generateEsBuildWeightArray = self[1]._kernels.generateEsBuildWeightArray;
                      *v120 = vcvt_f32_s32(vadd_s32(*p_var3, 0x100000001));
                      *&v120[8] = generateEsBuildWeightArray;
                      *&v120[16] = process->var21[2].var0[2];
                      *&v120[20] = meshHeight + v16;
                      *&v120[24] = paddedMeshWidth;
                      [computeCommandEncoder setComputePipelineState:self->_kernels.generateEsBuildWeightArray];
                      [computeCommandEncoder setBuffer:lines->var3 offset:lines->var2 atIndex:0];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.es.weights atIndex:1];
                      [computeCommandEncoder setBytes:v120 length:32 atIndex:2];
                      *v125 = v104;
                      v108 = vdupq_n_s64(1uLL);
                      *&v125[8] = v108;
                      maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_kernels.generateEsBuildWeightArray maxTotalThreadsPerThreadgroup];
                      v124 = v108;
                      [computeCommandEncoder dispatchThreads:v125 threadsPerThreadgroup:&maxTotalThreadsPerThreadgroup];
                    }

                    *&v120[16] = 0;
                    v59 = vcvt_f32_u32(vadd_s32(__PAIR64__(meshHeight, v16), -1));
                    *v120 = vdiv_f32(vcvt_f32_s32(vadd_s32(*&process->var17.var3, -1)), v59);
                    *&v120[8] = __PAIR64__(meshHeight, v16);
                    *&v120[16] = paddedMeshWidth;
                    [computeCommandEncoder setComputePipelineState:self->_kernels.generateEsStage1];
                    [computeCommandEncoder setBytes:v120 length:24 atIndex:0];
                    [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.es.arrayOfContainers atIndex:1];
                    [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.es.numElementsPerContainer atIndex:2];
                    [computeCommandEncoder setBuffer:information->var0 offset:8 atIndex:3];
                    [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.es.weights atIndex:4];
                    threadExecutionWidth = [(MTLComputePipelineState *)self->_kernels.generateEsStage1 threadExecutionWidth];
                    maxTotalThreadsPerThreadgroup2 = [(MTLComputePipelineState *)self->_kernels.generateEsStage1 maxTotalThreadsPerThreadgroup];
                    *v125 = v16;
                    *&v125[8] = meshHeight;
                    *&v125[16] = 1;
                    maxTotalThreadsPerThreadgroup = threadExecutionWidth;
                    v124.i64[0] = maxTotalThreadsPerThreadgroup2 / threadExecutionWidth;
                    v124.i64[1] = 1;
                    [computeCommandEncoder dispatchThreads:v125 threadsPerThreadgroup:&maxTotalThreadsPerThreadgroup];
                    [computeCommandEncoder setComputePipelineState:self->_kernels.generateEsStage2];
                    [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.es.arrayOfContainers atIndex:0];
                    [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.es.numElementsPerContainer atIndex:1];
                    *v125 = v102;
                    v109 = vdupq_n_s64(1uLL);
                    *&v125[8] = v109;
                    maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_kernels.generateEsStage2 maxTotalThreadsPerThreadgroup];
                    v124 = v109;
                    [computeCommandEncoder dispatchThreads:v125 threadsPerThreadgroup:&maxTotalThreadsPerThreadgroup];
                    v122 = v102;
                    [computeCommandEncoder setComputePipelineState:self->_kernels.generateEsStage3];
                    [computeCommandEncoder setBytes:&v122 length:4 atIndex:0];
                    [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.es.arrayOfContainers atIndex:1];
                    [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.es.numElementsPerContainer atIndex:2];
                    [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.matrixAtA atIndex:3];
                    *v125 = (v127[0] * v127[0]);
                    *&v125[8] = v109;
                    maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_kernels.generateEsStage3 maxTotalThreadsPerThreadgroup];
                    v124 = v109;
                    [computeCommandEncoder dispatchThreads:v125 threadsPerThreadgroup:&maxTotalThreadsPerThreadgroup];
                    v62 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities erodeSegmentationMask:texCopy to:self->_textures.erodedSegmentationMask radius:LODWORD(process->var21[2].var0[6]) commandEncoder:computeCommandEncoder];
                    if (!v62)
                    {
                      [computeCommandEncoder setComputePipelineState:self->_kernels.generateEdStage1];
                      [computeCommandEncoder setTexture:self->_textures.erodedSegmentationMask atIndex:0];
                      [computeCommandEncoder setBytes:&self[1] length:128 atIndex:0];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edPhatk atIndex:1];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edPk atIndex:2];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edNumSamplesPerCell atIndex:3];
                      threadExecutionWidth2 = [(MTLComputePipelineState *)self->_kernels.generateEdStage1 threadExecutionWidth];
                      maxTotalThreadsPerThreadgroup3 = [(MTLComputePipelineState *)self->_kernels.generateEdStage1 maxTotalThreadsPerThreadgroup];
                      v65 = *(&self[1]._kernels.generateEsStage1 + 4);
                      *&v66 = v65;
                      *(&v66 + 1) = HIDWORD(v65);
                      *v120 = v66;
                      *&v120[16] = 1;
                      *v125 = threadExecutionWidth2;
                      *&v125[8] = maxTotalThreadsPerThreadgroup3 / threadExecutionWidth2;
                      *&v125[16] = 1;
                      [computeCommandEncoder dispatchThreads:v120 threadsPerThreadgroup:v125];
                      [computeCommandEncoder setComputePipelineState:self->_kernels.generateEdStage2];
                      [computeCommandEncoder setBytes:&self[1] length:128 atIndex:0];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edNumSamplesPerCell atIndex:1];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edOffset atIndex:2];
                      v110 = vdupq_n_s64(1uLL);
                      *v120 = v110;
                      *&v120[16] = 1;
                      *v125 = v110;
                      *&v125[16] = 1;
                      [computeCommandEncoder dispatchThreads:v120 threadsPerThreadgroup:v125];
                      [computeCommandEncoder setComputePipelineState:self->_kernels.generateEdStage3];
                      [computeCommandEncoder setBytes:&self[1] length:128 atIndex:0];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edPhatk atIndex:1];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edNumSamplesPerCell atIndex:2];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edOffset atIndex:3];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edRowSubSeqHeader atIndex:4];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edRowSubSeqData atIndex:5];
                      threadExecutionWidth3 = [(MTLComputePipelineState *)self->_kernels.generateEdStage3 threadExecutionWidth];
                      maxTotalThreadsPerThreadgroup4 = [(MTLComputePipelineState *)self->_kernels.generateEdStage3 maxTotalThreadsPerThreadgroup];
                      generateEsPresetWeightArray = self[1]._kernels.generateEsPresetWeightArray;
                      *&v66 = generateEsPresetWeightArray;
                      *(&v66 + 1) = HIDWORD(generateEsPresetWeightArray);
                      *v120 = v66;
                      *&v120[16] = 1;
                      *v125 = threadExecutionWidth3;
                      *&v125[8] = maxTotalThreadsPerThreadgroup4 / threadExecutionWidth3;
                      *&v125[16] = 1;
                      [computeCommandEncoder dispatchThreads:v120 threadsPerThreadgroup:v125];
                      [computeCommandEncoder setComputePipelineState:self->_kernels.generateEdColumns];
                      [computeCommandEncoder setBytes:&self[1] length:128 atIndex:0];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edRowSubSeqHeader atIndex:1];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edRowSubSeqData atIndex:2];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edColumnHeaders atIndex:3];
                      v70 = v127[0];
                      *v120 = v127[0];
                      *&v120[8] = v110;
                      *v125 = [(MTLComputePipelineState *)self->_kernels.generateEdColumns maxTotalThreadsPerThreadgroup];
                      *&v125[8] = v110;
                      [computeCommandEncoder dispatchThreads:v120 threadsPerThreadgroup:v125];
                      [computeCommandEncoder setComputePipelineState:self->_kernels.generateEdBuildAtA_Atb];
                      [computeCommandEncoder setBytes:&self[1] length:128 atIndex:0];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edRowSubSeqHeader atIndex:1];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edRowSubSeqData atIndex:2];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edColumnHeaders atIndex:3];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.matrixAtA atIndex:4];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.vectorAtb atIndex:5];
                      [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.edPk atIndex:6];
                      threadExecutionWidth4 = [(MTLComputePipelineState *)self->_kernels.generateEdBuildAtA_Atb threadExecutionWidth];
                      maxTotalThreadsPerThreadgroup5 = [(MTLComputePipelineState *)self->_kernels.generateEdBuildAtA_Atb maxTotalThreadsPerThreadgroup];
                      *v120 = v70;
                      *&v120[8] = v70;
                      *&v120[16] = 1;
                      *v125 = threadExecutionWidth4;
                      *&v125[8] = maxTotalThreadsPerThreadgroup5 / threadExecutionWidth4;
                      *&v125[16] = 1;
                      [computeCommandEncoder dispatchThreads:v120 threadsPerThreadgroup:v125];
                      if (v106)
                      {
                        *&v120[32] = 0;
                        v73 = *(&self[1]._kernels.generateEdColumns + 4);
                        *v120 = self[1]._kernels.generateEsBuildWeightArray;
                        *&v120[8] = v73;
                        *&v120[16] = process->var21[2].var0[4];
                        *&v120[20] = 256;
                        *&v120[24] = v100 & 0x3FFC;
                        v74 = *&process->var16.var5;
                        *&v120[28] = *p_var3;
                        v121 = vcvt_f32_s32(vsub_s32(*&process->var15.var0.var5, v74));
                        [computeCommandEncoder setComputePipelineState:self->_kernels.generateElStage1];
                        [computeCommandEncoder setBytes:v120 length:48 atIndex:0];
                        [computeCommandEncoder setBuffer:lines->var3 offset:lines->var2 atIndex:1];
                        [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.elFullMatrix atIndex:2];
                        *v125 = v104;
                        v111 = vdupq_n_s64(1uLL);
                        *&v125[8] = v111;
                        maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_kernels.generateElStage1 maxTotalThreadsPerThreadgroup];
                        v124 = v111;
                        [computeCommandEncoder dispatchThreads:v125 threadsPerThreadgroup:&maxTotalThreadsPerThreadgroup];
                        LODWORD(v117[0]) = v70;
                        HIDWORD(v117[0]) = v100 >> 2;
                        [computeCommandEncoder setComputePipelineState:self->_kernels.generateElStage2];
                        [computeCommandEncoder setBytes:v117 length:8 atIndex:0];
                        [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.elFullMatrix atIndex:1];
                        [computeCommandEncoder setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.matrixAtA atIndex:2];
                        threadExecutionWidth5 = [(MTLComputePipelineState *)self->_kernels.generateEdBuildAtA_Atb threadExecutionWidth];
                        maxTotalThreadsPerThreadgroup6 = [(MTLComputePipelineState *)self->_kernels.generateEdBuildAtA_Atb maxTotalThreadsPerThreadgroup];
                        *v125 = v70;
                        *&v125[8] = v70;
                        *&v125[16] = 1;
                        maxTotalThreadsPerThreadgroup = threadExecutionWidth5;
                        v124.i64[0] = maxTotalThreadsPerThreadgroup6 / threadExecutionWidth5;
                        v124.i64[1] = 1;
                        [computeCommandEncoder dispatchThreads:v125 threadsPerThreadgroup:&maxTotalThreadsPerThreadgroup];
                      }

                      [computeCommandEncoder endEncoding];
                      v119[0] = MEMORY[0x29EDCA5F8];
                      v119[1] = 3221225472;
                      v119[2] = sub_2957BA53C;
                      v119[3] = &unk_29EDDA0D8;
                      v119[4] = information;
                      [v101 addCompletedHandler:v119];
                      [v101 commit];
                      commandQueue3 = [(FigMetalContext *)self->_metalContext commandQueue];
                      commandBuffer3 = [commandQueue3 commandBuffer];

                      if (commandBuffer3)
                      {
                        [(MPSMatrixDecompositionCholesky *)self->_choleskyDecomposition encodeToCommandBuffer:commandBuffer3 sourceMatrix:self->_AtA_matrix resultMatrix:self->_AtA_matrix status:information->var0];
                        v118[0] = MEMORY[0x29EDCA5F8];
                        v118[1] = 3221225472;
                        v118[2] = sub_2957BA56C;
                        v118[3] = &unk_29EDDA0D8;
                        v118[4] = information;
                        [commandBuffer3 addCompletedHandler:v118];
                        [commandBuffer3 commit];
                        commandQueue4 = [(FigMetalContext *)self->_metalContext commandQueue];
                        commandBuffer4 = [commandQueue4 commandBuffer];

                        if (commandBuffer4)
                        {
                          computeCommandEncoder2 = [commandBuffer4 computeCommandEncoder];

                          if (computeCommandEncoder2)
                          {
                            v112 = commandBuffer4;
                            maxTotalThreadsPerThreadgroup7 = [(MTLComputePipelineState *)self->_kernels.substitution maxTotalThreadsPerThreadgroup];
                            maxTotalThreadsPerThreadgroup8 = v127[0];
                            if (maxTotalThreadsPerThreadgroup7 < v127[0])
                            {
                              maxTotalThreadsPerThreadgroup8 = [(MTLComputePipelineState *)self->_kernels.substitution maxTotalThreadsPerThreadgroup];
                            }

                            [computeCommandEncoder2 setComputePipelineState:self->_kernels.substitution];
                            [computeCommandEncoder2 setBytes:v127 length:4 atIndex:0];
                            [computeCommandEncoder2 setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.matrixAtA atIndex:1];
                            [computeCommandEncoder2 setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.vectorAtb atIndex:2];
                            [computeCommandEncoder2 setThreadgroupMemoryLength:128 atIndex:0];
                            *v120 = v127[0];
                            *&v120[8] = vdupq_n_s64(1uLL);
                            *v125 = maxTotalThreadsPerThreadgroup8;
                            *&v125[8] = *&v120[8];
                            [computeCommandEncoder2 dispatchThreads:v120 threadsPerThreadgroup:v125];
                            *&v120[16] = 0;
                            *v120 = self[1]._kernels.generateEsBuildWeightArray;
                            *&v120[8] = meshHeight;
                            *&v120[12] = *&process->var17.var3;
                            threadExecutionWidth6 = [(MTLComputePipelineState *)self->_kernels.generateExtendedMesh threadExecutionWidth];
                            v85 = [(MTLComputePipelineState *)self->_kernels.generateExtendedMesh maxTotalThreadsPerThreadgroup]/ threadExecutionWidth6;
                            [computeCommandEncoder2 setComputePipelineState:self->_kernels.generateExtendedMesh];
                            [computeCommandEncoder2 setTexture:v113 atIndex:0];
                            [computeCommandEncoder2 setBytes:v120 length:24 atIndex:0];
                            [computeCommandEncoder2 setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.vectorAtb atIndex:1];
                            width3 = [v113 width];
                            height3 = [v113 height];
                            *v125 = width3;
                            *&v125[8] = height3;
                            *&v125[16] = 1;
                            maxTotalThreadsPerThreadgroup = threadExecutionWidth6;
                            v124.i64[0] = v85;
                            v124.i64[1] = 1;
                            [computeCommandEncoder2 dispatchThreads:v125 threadsPerThreadgroup:&maxTotalThreadsPerThreadgroup];
                            threadExecutionWidth7 = [(MTLComputePipelineState *)self->_kernels.validateExtendedMesh threadExecutionWidth];
                            v89 = [(MTLComputePipelineState *)self->_kernels.validateExtendedMesh maxTotalThreadsPerThreadgroup]/ threadExecutionWidth7;
                            [computeCommandEncoder2 setComputePipelineState:self->_kernels.validateExtendedMesh];
                            [computeCommandEncoder2 setTexture:v113 atIndex:0];
                            [computeCommandEncoder2 setBytes:v120 length:24 atIndex:1];
                            [computeCommandEncoder2 setBuffer:information->var0 offset:12 atIndex:2];
                            v90 = [v113 width] - 1;
                            height4 = [v113 height];
                            *v125 = v90;
                            *&v125[8] = height4 - 1;
                            meshTexCopy = v113;
                            *&v125[16] = 1;
                            maxTotalThreadsPerThreadgroup = threadExecutionWidth7;
                            v124.i64[0] = v89;
                            v124.i64[1] = 1;
                            [computeCommandEncoder2 dispatchThreads:v125 threadsPerThreadgroup:&maxTotalThreadsPerThreadgroup];
                            v92 = vcvt_f32_s32(vadd_s32(*&process->var17.var3, -1));
                            v117[0] = vdiv_f32(v92, v59);
                            v115 = v92.f32[0] / ([v103 width] - 1);
                            v93 = (process->var17.var4 - 1);
                            height5 = [v103 height];
                            *&v95 = v115;
                            *(&v95 + 1) = v93 / (height5 - 1);
                            v117[1] = v95;
                            threadExecutionWidth8 = [(MTLComputePipelineState *)self->_kernels.invertMesh threadExecutionWidth];
                            v97 = [(MTLComputePipelineState *)self->_kernels.invertMesh maxTotalThreadsPerThreadgroup]/ threadExecutionWidth8;
                            [computeCommandEncoder2 setComputePipelineState:self->_kernels.invertMesh];
                            [computeCommandEncoder2 setTexture:v113 atIndex:0];
                            [computeCommandEncoder2 setTexture:v103 atIndex:1];
                            [computeCommandEncoder2 setBytes:v117 length:16 atIndex:0];
                            [computeCommandEncoder2 setBuffer:information->var0 offset:4 atIndex:1];
                            width4 = [v103 width];
                            height6 = [v103 height];
                            *v125 = width4;
                            *&v125[8] = height6;
                            *&v125[16] = 1;
                            maxTotalThreadsPerThreadgroup = threadExecutionWidth8;
                            v124.i64[0] = v97;
                            invertedMeshTexCopy = v103;
                            v124.i64[1] = 1;
                            [computeCommandEncoder2 dispatchThreads:v125 threadsPerThreadgroup:&maxTotalThreadsPerThreadgroup];
                            [computeCommandEncoder2 endEncoding];
                            v116[0] = MEMORY[0x29EDCA5F8];
                            v116[1] = 3221225472;
                            v116[2] = sub_2957BA59C;
                            v116[3] = &unk_29EDDA0D8;
                            v116[4] = information;
                            [v112 addCompletedHandler:v116];
                            [v112 commit];

                            v28 = 0;
                            goto LABEL_7;
                          }

                          sub_2957C38C4(commandBuffer4);
                        }

                        else
                        {
                          sub_2957C3944(computeCommandEncoder);
                        }
                      }

                      else
                      {
                        sub_2957C39C4(computeCommandEncoder);
                      }

                      goto LABEL_74;
                    }

                    v28 = v62;
                    sub_2957C3838();
LABEL_75:
                    invertedMeshTexCopy = v103;
                    goto LABEL_7;
                  }

                  sub_2957C3A44(commandBuffer2);
                }

                else
                {
                  sub_2957C3AC4(v50);
                }
              }

              else
              {
                sub_2957C3B44(commandBuffer);
              }

LABEL_74:
              v28 = -12786;
              goto LABEL_75;
            }

            sub_2957C3BC4();
            v28 = -12786;
          }
        }

        else
        {
          sub_2957C3E1C();
        }

        meshTexCopy = v113;
        goto LABEL_75;
      }
    }
  }

LABEL_7:

  return v28;
}

- (void)fillEdParameters:(id *)parameters meshWidth:(unsigned int)width meshHeight:(unsigned int)height
{
  v5 = 0;
  v6 = LODWORD(parameters->var21[2].var0[5]);
  var3 = parameters->var17.var3;
  var4 = parameters->var17.var4;
  self[1].super.isa = vdiv_f32(vdup_n_s32(0x3A83126Fu), *&parameters->var4);
  do
  {
    *(&self[1]._metalContext + v5) = *(&parameters->var14.var2.var5 + v5);
    v5 += 4;
  }

  while (v5 != 24);
  v9 = (var3 - 1) / (width - 1);
  v10 = v9 / v6;
  *&v11 = ((v9 % v6) >> 1);
  v12 = (var4 - 1) / (height - 1);
  v13 = v12 / v6;
  *(&v11 + 1) = ((v12 % v6) >> 1);
  self[1]._kernels.generateEdStage2 = vdiv_f32(vcvt_f32_s32(*&parameters->var21[0].var0[3]), vcvt_f32_s32(*&parameters->var15.var0.var3));
  *&self[1]._kernels.generateEdStage3 = parameters->var21[2].var0[3];
  *(&self[1]._kernels.generateEdStage3 + 1) = v6;
  LODWORD(self[1]._kernels.generateEdColumns) = height * width;
  HIDWORD(self[1]._kernels.generateEdColumns) = width;
  LODWORD(self[1]._kernels.generateEdBuildAtA_Atb) = height;
  HIDWORD(self[1]._kernels.generateEdBuildAtA_Atb) = (height - 1) * (width - 1);
  LODWORD(self[1]._kernels.generateEsPresetWeightArray) = width - 1;
  HIDWORD(self[1]._kernels.generateEsPresetWeightArray) = height - 1;
  *&self[1]._kernels.generateEsBuildWeightArray = v9;
  *(&self[1]._kernels.generateEsBuildWeightArray + 1) = v12;
  LODWORD(self[1]._kernels.generateEsStage1) = v10 * v13;
  HIDWORD(self[1]._kernels.generateEsStage1) = v10;
  LODWORD(self[1]._kernels.generateEsStage2) = v13;
  self[1]._kernels.generateEsStage3 = v11;
  LODWORD(self[1]._kernels.generateElStage1) = v10 * v13;
  HIDWORD(self[1]._kernels.generateElStage1) = 2 * height * width;
  *&v14 = *&parameters->var16.var5;
  *(&v14 + 1) = *&parameters->var17.var3;
  *&self[1]._kernels.generateElStage2 = v14;
}

- (int)memoryAllocationHandler:(id *)handler paddedMeshWidth:(unsigned int)width paddedMeshHeight:(unsigned int)height memoryAllocationParameters:(id *)parameters sharedMemoryBuffer:(id)buffer sharedMetalBufferOffset:(unint64_t)offset sharedMetalBufferSize:(unint64_t)size
{
  sizeCopy = size;
  bufferCopy = buffer;
  if (bufferCopy | offset | size)
  {
    v17 = 1;
  }

  else
  {
    v17 = handler == 0;
  }

  v69 = 0;
  v70 = 0;
  if (handler)
  {
    v18 = (bufferCopy | offset | size) == 0;
  }

  else
  {
    v18 = bufferCopy != 0;
  }

  if (v18)
  {
    var3 = parameters->var3;
    v20 = *&parameters->var4;
    *&v21 = v20;
    *(&v21 + 1) = HIDWORD(v20);
    v68[0] = v21;
    v68[1] = xmmword_2957C7D90;
    v22 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities computeTextureStrideForBufferAllocation:v68];
    if (v17)
    {
      if (v70 > size)
      {
        sub_2957C477C(v22);
        goto LABEL_61;
      }

      v23 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities textureFromBuffer:bufferCopy bufferOffset:offset textureDescriptor:v68];
      erodedSegmentationMask = self->_textures.erodedSegmentationMask;
      self->_textures.erodedSegmentationMask = v23;

      if (!self->_textures.erodedSegmentationMask)
      {
        sub_2957C4704();
        goto LABEL_66;
      }

      v25 = size - v70;
      v26 = (v70 + 63) & 0xFFFFFFC0;
      self->_offsets.matrixAtA = v26 + offset;
      if (v25 < 4 * (var3 * var3))
      {
        sub_2957C468C();
        goto LABEL_61;
      }

      v27 = 4 * (var3 * var3);
      v28 = v25 - v27;
      v29 = (v27 + v26 + 63) & 0xFFFFFFC0;
      self->_offsets.vectorAtb = v29 + offset;
      if (v28 < 4 * var3)
      {
        sub_2957C4614();
        goto LABEL_61;
      }

      v30 = 4 * var3;
      sizeCopy = v28 - 4 * var3;
    }

    else
    {
      v32 = (v70 + 63) & 0xFFFFFFC0;
      v30 = 4 * var3;
      v29 = (v32 + 4 * var3 * var3 + 63) & 0xFFFFFFC0;
      self->_offsets.matrixAtA = v32;
      self->_offsets.vectorAtb = v29;
    }

    v33 = 8 * (40 * var3);
    v34 = v30 + 63 + v29;
    self->_offsets.es.arrayOfContainers = (v34 & 0xFFFFFFC0) + offset;
    if (v17)
    {
      v35 = sizeCopy - v33;
      if (sizeCopy < v33)
      {
        sub_2957C459C();
        goto LABEL_61;
      }

      v36 = (v34 + 320 * var3) & 0xFFFFFFC0;
      self->_offsets.es.weights = v36 + offset;
      if (v35 < 4 * (height * width))
      {
        sub_2957C4524();
        goto LABEL_61;
      }

      v37 = 4 * height * width;
      v38 = v35 - v37;
      v39 = (v37 + v36 + 63) & 0xFFFFFFC0;
      self->_offsets.es.numElementsPerContainer = v39 + offset;
      sizeCopy = v38 - v30;
      if (v38 < v30)
      {
        sub_2957C44AC();
LABEL_61:
        v31 = -12780;
LABEL_62:
        [(IdcContentPreservingWarping *)self releaseResources];
        goto LABEL_46;
      }
    }

    else
    {
      v40 = (v34 + 320 * var3) & 0xFFFFFFC0;
      v39 = (v40 + 4 * height * width + 63) & 0xFFFFFFC0;
      self->_offsets.es.weights = v40;
      self->_offsets.es.numElementsPerContainer = v39;
    }

    var0 = parameters->var0;
    var1 = parameters->var1;
    v43 = 8 * var1 * var0;
    v44 = (v30 + 63 + v39) & 0xFFFFFFC0;
    self->_offsets.edPhatk = v44 + offset;
    if (v17)
    {
      v45 = sizeCopy - v43;
      if (sizeCopy < v43)
      {
        sub_2957C4434();
        goto LABEL_61;
      }

      v46 = (v43 + 63 + v44) & 0xFFFFFFC0;
      self->_offsets.edPk = v46 + offset;
      v47 = v45 - v43;
      if (v45 < v43)
      {
        sub_2957C43BC();
        goto LABEL_61;
      }

      v48 = (v43 + 63 + v46) & 0xFFFFFFC0;
      self->_offsets.edNumSamplesPerCell = v48 + offset;
      if (v47 < 4 * (var0 + 1))
      {
        sub_2957C4344();
        goto LABEL_61;
      }

      v49 = 4 * (var0 + 1);
      v50 = v47 - v49;
      v51 = (v49 + v48 + 63) & 0xFFFFFFC0;
      self->_offsets.edRowSubSeqHeader = v51 + offset;
      if (v47 - v49 < 36 * var0)
      {
        sub_2957C42CC();
        goto LABEL_61;
      }

      v52 = 36 * var0;
      sizeCopy = v50 - 36 * var0;
    }

    else
    {
      v53 = (v43 + 63 + v44) & 0xFFFFFFC0;
      v54 = (v43 + 63 + v53) & 0xFFFFFFC0;
      self->_offsets.edPk = v53;
      self->_offsets.edNumSamplesPerCell = v54;
      v52 = 36 * var0;
      v51 = (v54 + 4 * var0 + 67) & 0xFFFFFFC0;
      self->_offsets.edRowSubSeqHeader = v51;
    }

    v55 = 32 * var0 * var1;
    v56 = ((v51 | 0x3C) + v52) & 0xFFFFFFC0;
    self->_offsets.edRowSubSeqData = v56 + offset;
    if (v17)
    {
      v57 = sizeCopy >= v55;
      sizeCopy -= v55;
      if (!v57)
      {
        sub_2957C4254();
        goto LABEL_61;
      }
    }

    v58 = 72 * parameters->var2;
    v59 = v55 + v56 + 63;
    self->_offsets.edColumnHeaders = (v59 & 0xFFFFFFC0) + offset;
    if (v17)
    {
      v60 = sizeCopy - v58;
      if (sizeCopy < v58)
      {
        sub_2957C41DC();
        goto LABEL_61;
      }

      v61 = ((v59 | 0x38) + v58) & 0xFFFFFFC0;
      self->_offsets.edOffset = v61 + offset;
      if (v60 < 4 * var0)
      {
        sub_2957C4164();
        goto LABEL_61;
      }

      var0 *= 4;
      sizeCopy = v60 - var0;
    }

    else
    {
      LODWORD(var0) = 4 * var0;
      v61 = ((v59 | 0x38) + v58) & 0xFFFFFFC0;
      self->_offsets.edOffset = v61;
    }

    v62 = ((v61 | 0x3C) + var0) & 0xFFFFFFC0;
    self->_offsets.elFullMatrix = v62 + offset;
    if (var3 << 14 > sizeCopy && v17)
    {
      sub_2957C40EC();
      goto LABEL_61;
    }

    if (!v17)
    {
LABEL_45:
      v31 = 0;
      handler->var0 = v62 + (var3 << 14);
      goto LABEL_46;
    }

    v64 = [MEMORY[0x29EDBB7C8] matrixDescriptorWithRows:var3 columns:var3 rowBytes:? dataType:?];
    if (v64)
    {
      v65 = [objc_alloc(MEMORY[0x29EDBB7C0]) initWithBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.matrixAtA descriptor:v64];
      AtA_matrix = self->_AtA_matrix;
      self->_AtA_matrix = v65;

      if (self->_AtA_matrix)
      {

        if (!handler)
        {
          v31 = 0;
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      sub_2957C3FFC();
    }

    else
    {
      sub_2957C4074();
    }

LABEL_66:
    v31 = -12786;
    goto LABEL_62;
  }

  v31 = -12780;
LABEL_46:

  return v31;
}

@end