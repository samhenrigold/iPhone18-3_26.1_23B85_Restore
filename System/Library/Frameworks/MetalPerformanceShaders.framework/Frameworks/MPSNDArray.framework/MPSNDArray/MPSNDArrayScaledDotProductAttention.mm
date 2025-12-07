@interface MPSNDArrayScaledDotProductAttention
- (MPSNDArrayScaledDotProductAttention)initWithDevice:(id)device kernelType:(int)type sourceCount:(unint64_t)count;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (int64_t)createFallbackKernels:(id)kernels;
- (void)dealloc;
@end

@implementation MPSNDArrayScaledDotProductAttention

- (int64_t)createFallbackKernels:(id)kernels
{
  if (!self->_createdFallbackKernels)
  {
    self->_QKTMatmulKernel = [[MPSNDArrayMatrixMultiplication alloc] initWithDevice:kernels sourceCount:2];
    self->_softmaxKernel = [[MPSNDArrayStitchedReductionSoftmax alloc] initWithDevice:kernels axis:0];
    self->_finalMatmulKernel = [[MPSNDArrayMatrixMultiplication alloc] initWithDevice:kernels sourceCount:2];
    self->_softMaxMatMulKernel = [[MPSNDArrayMatrixMultiplication alloc] initWithDevice:kernels sourceCount:2];
    v5 = objc_alloc_init(MPSNDArrayNormFusionDescriptor);
    [(MPSNDArrayNormFusionDescriptor *)v5 setIsLeftFused:1];
    [(MPSNDArrayNormFusionDescriptor *)v5 setNormFusionType:1];
    [(MPSNDArrayMatrixMultiplication *)self->_softMaxMatMulKernel setNormFusionDescriptor:v5];
    self->_createdFallbackKernels = 1;
  }

  return 0;
}

- (MPSNDArrayScaledDotProductAttention)initWithDevice:(id)device kernelType:(int)type sourceCount:(unint64_t)count
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayScaledDotProductAttention;
  result = [(MPSNDArrayMultiaryKernel *)&v10 initWithDevice:device sourceCount:count];
  if (result)
  {
    result->super._encode = EncodeSDPA;
    result->_kernelType = type;
    result->_alpha = 0.0;
    result->_layout = 0;
    result->_createdFallbackKernels = 0;
    v8 = result;
    v9 = [[MPSNDArrayIdentity alloc] initWithDevice:device];
    result = v8;
    v8->_identity = v9;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v60.receiver = self;
  v60.super_class = MPSNDArrayScaledDotProductAttention;
  object = [(MPSNDArrayMultiaryBase *)&v60 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
  if ([kernel layout] == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if ([kernel layout] == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = [arrays objectAtIndexedSubscript:0];
  v14 = [arrays objectAtIndexedSubscript:1];
  v15 = *MEMORY[0x277CD7410];
  v16 = *(v13 + v15);
  v17 = *(v13 + v15 + 16);
  v18 = *(v13 + v15 + 48);
  v19 = *MEMORY[0x277CD73D8];
  v20 = *(v13 + v19);
  v57 = *(v13 + v15 + 32);
  v58 = v18;
  v56[0] = v16;
  v56[1] = v17;
  v21 = *(v56 + (v20 & 0xF));
  v53 = *(v14 + v19);
  v22 = *(v14 + v15 + 4 * (*(&v53 | v12 & 0xF) & 0xF));
  v52 = v20;
  v55[2] = v57;
  v55[3] = v18;
  v55[0] = v16;
  v55[1] = v17;
  v23 = *(v55 + (*(&v52 | v12 & 0xF) & 0xF));
  v54[2] = v57;
  v54[3] = v18;
  v54[0] = v16;
  v54[1] = v17;
  v24 = *(v54 + (*(&v52 | v11 & 0xF) & 0xF));
  v59[2] = v57;
  v59[3] = v18;
  v59[0] = v16;
  v59[1] = v17;
  v25 = *(v59 + (BYTE3(v20) & 0xF));
  v50 = v22;
  v51 = v21;
  v26 = (v25 * v24 * v23 * v22 * (2 * v21 + 10));
  if ((*(destArrays + *MEMORY[0x277CD73C8]) & 0xFFF8) == 0x20)
  {
    [object setFloat32Ops:v26];
    [object setFloat16Ops:0.0];
  }

  else
  {
    [object setFloat16Ops:v26];
    [object setFloat32Ops:0.0];
  }

  [object float32Ops];
  v28 = v27;
  [object float16Ops];
  v30 = v28 + v29;
  [object deviceMemoryBytesRead];
  v32 = v31;
  [object deviceMemoryBytesWrite];
  v34 = v30 / (v32 + v33);
  [arrays objectAtIndexedSubscript:0];
  v35 = MPSGetDataTypeName();
  [arrays objectAtIndexedSubscript:1];
  v36 = MPSGetDataTypeName();
  [arrays objectAtIndexedSubscript:2];
  v37 = MPSGetDataTypeName();
  [arrays objectAtIndexedSubscript:3];
  v38 = MPSGetDataTypeName();
  v39 = MPSGetDataTypeName();
  MPSKernel_LogInfo(kernel, v40, "SDPA: Batches=%lu, PromptSize=%lu, Contexts=%lu, Heads=%lu, Features=%lu, Q Datatype: %s, K Datatype: %s, V Datatype: %s, Mask Datatype: %s, Dest Datatype: %s\t", v25, v23, v50, v24, v51, v35, v36, v37, v38, v39);
  [object float16Ops];
  v42 = v41;
  [object float32Ops];
  v44 = v43;
  [object deviceMemoryBytesRead];
  v46 = v45;
  [object deviceMemoryBytesWrite];
  MPSKernel_LogInfo(kernel, v47, "SDPA: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v42, v44, v46, v48, v34);
  return object;
}

- (void)dealloc
{
  kernelDAGObject = self->_kernelDAGObject;
  if (kernelDAGObject)
  {
  }

  QKTMatmulKernel = self->_QKTMatmulKernel;
  if (QKTMatmulKernel)
  {
  }

  softmaxKernel = self->_softmaxKernel;
  if (softmaxKernel)
  {
  }

  finalMatmulKernel = self->_finalMatmulKernel;
  if (finalMatmulKernel)
  {
  }

  softMaxMatMulKernel = self->_softMaxMatMulKernel;
  if (softMaxMatMulKernel)
  {
  }

  v8.receiver = self;
  v8.super_class = MPSNDArrayScaledDotProductAttention;
  [(MPSNDArrayMultiaryBase *)&v8 dealloc];
}

@end