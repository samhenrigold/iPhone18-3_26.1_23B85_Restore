@interface MPSNDArrayMatrixMultiplicationGradient
- (MPSNDArrayMatrixMultiplicationGradient)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayMatrixMultiplicationGradient)initWithDevice:(id)device sourceCount:(unint64_t)count sourceGradientIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayMatrixMultiplicationGradient

- (MPSNDArrayMatrixMultiplicationGradient)initWithDevice:(id)device sourceCount:(unint64_t)count sourceGradientIndex:(unint64_t)index
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayMatrixMultiplicationGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v9 initWithDevice:device sourceCount:count sourceGradientIndex:?];
  if (result)
  {
    if (index >= 2)
    {
      v7 = result;
      v8 = MTLReportFailureTypeEnabled();
      result = v7;
      if (v8)
      {
        MTLReportFailure();
        result = v7;
      }
    }

    result->_alpha = 1.0;
    result->_beta = 1.0;
    result->super.super._encodeGradient = EncodeArrayMultiplyGradient;
    result->super.super._encodeData = result;
  }

  return result;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v13[16] = *MEMORY[0x277D85DE8];
  v6 = [arrays objectAtIndexedSubscript:{self->super._sourceGradientIndex, state}];
  v7 = MEMORY[0x277CD7410];
  v13[0] = *(v6 + *MEMORY[0x277CD7410]);
  v13[1] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 4);
  v13[2] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 8);
  v13[3] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 12);
  v13[4] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 16);
  v13[5] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 20);
  v13[6] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 24);
  v13[7] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 28);
  v13[8] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 32);
  v13[9] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 36);
  v13[10] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 40);
  v13[11] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 44);
  v13[12] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 48);
  v13[13] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 52);
  v13[14] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 56);
  v13[15] = *([arrays objectAtIndexedSubscript:self->super._sourceGradientIndex] + *v7 + 60);
  v8 = MEMORY[0x277CD7268];
  v9 = [arrays objectAtIndexedSubscript:self->super._sourceGradientIndex];
  v10 = *(v9 + *MEMORY[0x277CD73C8]);
  v11 = [arrays objectAtIndexedSubscript:self->super._sourceGradientIndex];
  return [v8 descriptorWithDataType:v10 dimensionCount:*(v11 + *MEMORY[0x277CD73F0]) dimensionSizes:v13];
}

- (MPSNDArrayMatrixMultiplicationGradient)initWithCoder:(id)coder device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayMatrixMultiplicationGradient;
  v5 = [(MPSNDArrayMultiaryGradientKernel *)&v9 initWithCoder:coder device:device];
  if (v5)
  {
    [coder decodeDoubleForKey:@"MPSNDArrayMatrixMultiplicationGradient.alpha"];
    v5->_alpha = v6;
    [coder decodeDoubleForKey:@"MPSNDArrayMatrixMultiplicationGradient.beta"];
    v5->_beta = v7;
    v5->super.super._encodeGradient = EncodeArrayMultiplyGradient;
    v5->super.super._encodeData = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMatrixMultiplicationGradient;
  [(MPSNDArrayMultiaryGradientKernel *)&v5 encodeWithCoder:?];
  [coder encodeDouble:@"MPSNDArrayMatrixMultiplicationGradient.alpha" forKey:self->_alpha];
  [coder encodeDouble:@"MPSNDArrayMatrixMultiplicationGradient.beta" forKey:self->_beta];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayMatrixMultiplicationGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 18) = *&self->_alpha;
    *(result + 19) = *&self->_beta;
    self->super.super._encodeGradient = EncodeArrayMultiplyGradient;
    self->super.super._encodeData = self;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v64.receiver = self;
  v64.super_class = MPSNDArrayMatrixMultiplicationGradient;
  v9 = [(MPSNDArrayMultiaryBase *)&v64 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state];
  graph = [object graph];
  v11 = *(graph + 64);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 == v13)
  {
    v16 = 0;
  }

  else
  {
    v14 = graph;
    v15 = 0;
    v16 = -1;
    v17 = -1;
    do
    {
      v18 = *v12;
      if (v18 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        v16 = v15;
      }

      v19 = *v12;
      if (v19 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        v17 = v15;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v14) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v14);
      }

      ++v15;
      ++v12;
    }

    while (v12 != v13);
    if (v16 == -1)
    {
      v16 = 0;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v17 != -1)
    {
      goto LABEL_17;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_15:
    MTLReportFailure();
  }

LABEL_16:
  v17 = 0;
LABEL_17:
  v20 = [arrays objectAtIndexedSubscript:v16];
  v21 = [arrays objectAtIndexedSubscript:v17];
  v22 = *MEMORY[0x277CD73D8];
  v23 = *(v20 + v22);
  v24 = BYTE1(*(v20 + v22));
  v56 = *(v21 + v22);
  v25 = BYTE1(*(v21 + v22));
  v26 = *MEMORY[0x277CD7410];
  v27 = *(v20 + v26 + 4 * (WORD1(*(v20 + v22)) & 0xF));
  v28 = *(destArrays + v26);
  v29 = *(destArrays + v26 + 16);
  v30 = *(destArrays + v26 + 48);
  v31 = *(destArrays + v22);
  v61 = *(destArrays + v26 + 32);
  v62 = v30;
  v60[0] = v28;
  v60[1] = v29;
  v32 = *(v60 + (BYTE1(v31) & 0xF));
  v63[2] = v61;
  v63[3] = v30;
  v63[0] = v28;
  v63[1] = v29;
  v33 = *(v63 + (v31 & 0xF));
  if (v56 <= v25)
  {
    v34 = v23;
  }

  else
  {
    v34 = v24;
  }

  v35 = *(v21 + v26 + 4 * (v34 & 0xF));
  v57 = v27;
  v36 = (v32 * v27 * v33 * v35);
  if ((*(destArrays + *MEMORY[0x277CD73C8]) & 0xFFF8) == 0x20)
  {
    [v9 setFloat32Ops:v36];
    [v9 setFloat16Ops:0.0];
  }

  else
  {
    [v9 setFloat16Ops:v36];
    [v9 setFloat32Ops:0.0];
  }

  [v9 float32Ops];
  v38 = v37;
  [v9 float16Ops];
  v40 = v38 + v39;
  [v9 deviceMemoryBytesRead];
  v42 = v41;
  [v9 deviceMemoryBytesWrite];
  v44 = v40 / (v42 + v43);
  v45 = MPSGetDataTypeName();
  v46 = MPSGetDataTypeName();
  v47 = MPSGetDataTypeName();
  MPSKernel_LogInfo(kernel, 2uLL, "Matrix Multiply: M=%lu, N=%lu, K=%lu, Batch Size: %lu, transposeA=%d, transposeB=%d, A Datatype: %s, B Datatype: %s C Datatype: %s\t", v32, v33, v35, v57, v23 > v24, v56 > v25, v45, v46, v47);
  [v9 float16Ops];
  v49 = v48;
  [v9 float32Ops];
  v51 = v50;
  [v9 deviceMemoryBytesRead];
  v53 = v52;
  [v9 deviceMemoryBytesWrite];
  MPSKernel_LogInfo(kernel, 2uLL, "Matrix Multiply: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v49, v51, v53, v54, v44);
  return v9;
}

@end