@interface MPSNDArrayStencilKernel
- (MPSNDArrayStencilKernel)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayStencilKernel)initWithDevice:(id)device;
- (MPSNDArrayStencilOffsets_s)stencilOffsets;
- (MPSNDArrayStencilSizes_s)stencilDilationRates;
- (MPSNDArrayStencilSizes_s)stencilStrides;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)encodeWithCoder:(id)coder;
- (void)setStencilDilationRates:(MPSNDArrayStencilSizes_s *)rates;
- (void)setStencilOffsets:(MPSNDArrayStencilOffsets_s *)offsets;
- (void)setStencilStrides:(MPSNDArrayStencilSizes_s *)strides;
@end

@implementation MPSNDArrayStencilKernel

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSNDArrayStencilKernel;
  v4 = [(MPSKernel *)&v10 debugDescription];
  reductionMode = self->_reductionMode;
  if (reductionMode > 7)
  {
    v6 = "<UNKNOWN POOLING MODE - invalid object?>";
    paddingMode = self->_paddingMode;
    if (paddingMode > 6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = off_278B0D8E0[paddingMode];
    return [v3 stringWithFormat:@"%@\n\t%s\n\t%s\n\tstride       =(%2lu, %2lu, %2lu, %2lu )\n\toffset       =(%2d, %2d, %2d, %2d )\n\tdilationRate =(%2lu, %2lu, %2lu, %2lu )\n\tpaddingConst = %f\n\t", v4, v6, v8, self->_stencilStrides.sizes[0], self->_stencilStrides.sizes[1], self->_stencilStrides.sizes[2], self->_stencilStrides.sizes[3], self->_stencilOffsets.offsets[0], self->_stencilOffsets.offsets[1], self->_stencilOffsets.offsets[2], self->_stencilOffsets.offsets[3], self->_stencilDilationRates.sizes[0], self->_stencilDilationRates.sizes[1], self->_stencilDilationRates.sizes[2], self->_stencilDilationRates.sizes[3], self->_paddingConstant];
  }

  v6 = off_278B0D8A0[reductionMode];
  paddingMode = self->_paddingMode;
  if (paddingMode <= 6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = "<UNKNOWN POOLING MODE - invalid object?>";
  return [v3 stringWithFormat:@"%@\n\t%s\n\t%s\n\tstride       =(%2lu, %2lu, %2lu, %2lu )\n\toffset       =(%2d, %2d, %2d, %2d )\n\tdilationRate =(%2lu, %2lu, %2lu, %2lu )\n\tpaddingConst = %f\n\t", v4, v6, v8, self->_stencilStrides.sizes[0], self->_stencilStrides.sizes[1], self->_stencilStrides.sizes[2], self->_stencilStrides.sizes[3], self->_stencilOffsets.offsets[0], self->_stencilOffsets.offsets[1], self->_stencilOffsets.offsets[2], self->_stencilOffsets.offsets[3], self->_stencilDilationRates.sizes[0], self->_stencilDilationRates.sizes[1], self->_stencilDilationRates.sizes[2], self->_stencilDilationRates.sizes[3], self->_paddingConstant];
}

- (MPSNDArrayStencilKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayStencilKernel;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:device];
  result->super.super._encode = EncodeStencil;
  result->super.super.super._encodeGradient = 0;
  result->super.super.super._encodeData = result;
  result->_paddingMode = 0;
  result->_paddingConstant = 0.0;
  result->_reductionMode = 4;
  result->_stencilOffsets.offsets[0] = 0;
  result->_stencilStrides.sizes[0] = 1;
  result->_stencilDilationRates.sizes[0] = 1;
  result->_stencilOffsets.offsets[1] = 0;
  result->_stencilStrides.sizes[1] = 1;
  result->_stencilDilationRates.sizes[1] = 1;
  result->_stencilOffsets.offsets[2] = 0;
  result->_stencilStrides.sizes[2] = 1;
  result->_stencilDilationRates.sizes[2] = 1;
  result->_stencilOffsets.offsets[3] = 0;
  result->_stencilStrides.sizes[3] = 1;
  result->_stencilDilationRates.sizes[3] = 1;
  return result;
}

- (MPSNDArrayStencilKernel)initWithCoder:(id)coder device:(id)device
{
  v20.receiver = self;
  v20.super_class = MPSNDArrayStencilKernel;
  result = [(MPSNDArrayBinaryKernel *)&v20 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeStencil;
    result->super.super.super._encodeGradient = 0;
    result->super.super.super._encodeData = result;
    v19 = result;
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.offsets", 0];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.strides", 0];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.dilationRates", 0];
    v19->_stencilOffsets.offsets[0] = [coder decodeIntegerForKey:v6];
    v19->_stencilStrides.sizes[0] = [coder decodeIntegerForKey:v7];
    v19->_stencilDilationRates.sizes[0] = [coder decodeIntegerForKey:v8];

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.offsets", 1];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.strides", 1];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.dilationRates", 1];
    v19->_stencilOffsets.offsets[1] = [coder decodeIntegerForKey:v9];
    v19->_stencilStrides.sizes[1] = [coder decodeIntegerForKey:v10];
    v19->_stencilDilationRates.sizes[1] = [coder decodeIntegerForKey:v11];

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.offsets", 2];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.strides", 2];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.dilationRates", 2];
    v19->_stencilOffsets.offsets[2] = [coder decodeIntegerForKey:v12];
    v19->_stencilStrides.sizes[2] = [coder decodeIntegerForKey:v13];
    v19->_stencilDilationRates.sizes[2] = [coder decodeIntegerForKey:v14];

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.offsets", 3];
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.strides", 3];
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.dilationRates", 3];
    v19->_stencilOffsets.offsets[3] = [coder decodeIntegerForKey:v15];
    v19->_stencilStrides.sizes[3] = [coder decodeIntegerForKey:v16];
    v19->_stencilDilationRates.sizes[3] = [coder decodeIntegerForKey:v17];

    v19->_paddingMode = [coder decodeIntegerForKey:@"MPSNDArrayStencil.PadMode"];
    v19->_reductionMode = [coder decodeIntegerForKey:@"MPSNDArrayStencil.ReductionMode"];
    [coder decodeFloatForKey:@"MPSNDArrayStencil.padConst"];
    result = v19;
    v19->_paddingConstant = v18;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v21.receiver = self;
  v21.super_class = MPSNDArrayStencilKernel;
  selfCopy = self;
  [(MPSNDArrayMultiaryBase *)&v21 encodeWithCoder:?];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.offsets", 0];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.strides", 0];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.dilationRates", 0];
  v20 = selfCopy;
  [coder encodeInteger:selfCopy->_stencilOffsets.offsets[0] forKey:v5];
  p_stencilStrides = &selfCopy->_stencilStrides;
  [coder encodeInteger:selfCopy->_stencilStrides.sizes[0] forKey:v6];
  p_stencilDilationRates = &selfCopy->_stencilDilationRates;
  [coder encodeInteger:selfCopy->_stencilDilationRates.sizes[0] forKey:v7];

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.offsets", 1];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.strides", 1];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.dilationRates", 1];
  selfCopy = (selfCopy + 160);
  [coder encodeInteger:selfCopy->super.super.super.super._options forKey:v9];
  [coder encodeInteger:p_stencilStrides->sizes[1] forKey:v10];
  [coder encodeInteger:p_stencilDilationRates->sizes[1] forKey:v11];

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.offsets", 2];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.strides", 2];
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.dilationRates", 2];
  [coder encodeInteger:selfCopy->super.super.super.super._verbosityLevel forKey:v12];
  [coder encodeInteger:p_stencilStrides->sizes[2] forKey:v13];
  [coder encodeInteger:p_stencilDilationRates->sizes[2] forKey:v14];

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.offsets", 3];
  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.strides", 3];
  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%u", @"MPSNDArrayStencil.dilationRates", 3];
  [coder encodeInteger:selfCopy->super.super.super.super._device forKey:v15];
  [coder encodeInteger:p_stencilStrides->sizes[3] forKey:v16];
  [coder encodeInteger:p_stencilDilationRates->sizes[3] forKey:v17];

  [coder encodeInteger:v20->_paddingMode forKey:@"MPSNDArrayStencil.PadMode"];
  [coder encodeInteger:v20->_reductionMode forKey:@"MPSNDArrayStencil.ReductionMode"];
  *&v18 = v20->_paddingConstant;
  [coder encodeFloat:@"MPSNDArrayStencil.padConst" forKey:v18];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayStencilKernel;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 20) = self->_stencilOffsets.offsets[0];
    *(result + 24) = self->_stencilStrides.sizes[0];
    *(result + 28) = self->_stencilDilationRates.sizes[0];
    *(result + 21) = self->_stencilOffsets.offsets[1];
    *(result + 25) = self->_stencilStrides.sizes[1];
    *(result + 29) = self->_stencilDilationRates.sizes[1];
    *(result + 22) = self->_stencilOffsets.offsets[2];
    *(result + 26) = self->_stencilStrides.sizes[2];
    *(result + 30) = self->_stencilDilationRates.sizes[2];
    *(result + 23) = self->_stencilOffsets.offsets[3];
    *(result + 27) = self->_stencilStrides.sizes[3];
    *(result + 31) = self->_stencilDilationRates.sizes[3];
    *(result + 37) = self->_paddingMode;
    *(result + 38) = LODWORD(self->_paddingConstant);
    *(result + 36) = self->_reductionMode;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v89.receiver = self;
  v89.super_class = MPSNDArrayStencilKernel;
  object = [(MPSNDArrayMultiaryBase *)&v89 workloadStatisticsForSourceArrays:arrays sourceState:state, kernel, object];
  if ([arrays count] >= 2)
  {
    v11 = [objc_msgSend(arrays objectAtIndexedSubscript:{0), "numberOfDimensions"}];
    if (v11)
    {
      v12 = v11;
      do
      {
        [arrays objectAtIndexedSubscript:0];
        --v12;
      }

      while (v12);
    }

    numberOfDimensions = [destArrays numberOfDimensions];
    v14 = MEMORY[0x277CD7410];
    if (numberOfDimensions)
    {
      v15 = 0;
      v16 = (destArrays + *MEMORY[0x277CD7410]);
      v18 = v16[2];
      v17 = v16[3];
      v20 = *v16;
      v19 = v16[1];
      v21 = 1;
      do
      {
        v88[0] = v20;
        v88[1] = v19;
        v88[2] = v18;
        v88[3] = v17;
        v21 *= *(v88 + (v15++ & 0xF));
      }

      while (numberOfDimensions != v15);
    }

    else
    {
      v21 = 1;
    }

    v22 = [arrays objectAtIndexedSubscript:1];
    v23 = MEMORY[0x277CD73F0];
    if (*(v22 + *MEMORY[0x277CD73F0]))
    {
      v24 = ([arrays objectAtIndexedSubscript:1] + *v14);
      v80 = v24[1];
      v82 = *v24;
      v72 = v24[3];
      v76 = v24[2];
      v25 = [arrays objectAtIndexedSubscript:1];
      v26 = MEMORY[0x277CD73D8];
      v27 = *(v25 + *MEMORY[0x277CD73D8]);
      v87[2] = v76;
      v87[3] = v72;
      v87[0] = v82;
      v87[1] = v80;
      v28 = *(v87 + (v27 & 0xF));
      v29 = vdupq_n_s64(1uLL);
      v81 = v29;
      v29.i64[0] = v28;
      v83 = v29;
      if (*([arrays objectAtIndexedSubscript:1] + *v23) >= 2uLL)
      {
        v30 = ([arrays objectAtIndexedSubscript:1] + *v14);
        v73 = v30[1];
        v77 = *v30;
        v66 = v30[3];
        v69 = v30[2];
        v31 = BYTE1(*([arrays objectAtIndexedSubscript:1] + *v26));
        v86[2] = v69;
        v86[3] = v66;
        v86[0] = v77;
        v86[1] = v73;
        v32.i64[0] = v83.i64[0];
        v32.i64[1] = *(v86 + (v31 & 0xF));
        v83 = v32;
        v28 = v28 * v32.u32[2];
        if (*([arrays objectAtIndexedSubscript:1] + *v23) >= 3uLL)
        {
          v33 = ([arrays objectAtIndexedSubscript:1] + *v14);
          v74 = v33[1];
          v78 = *v33;
          v67 = v33[3];
          v70 = v33[2];
          v34 = BYTE2(*([arrays objectAtIndexedSubscript:1] + *v26));
          v85[2] = v70;
          v85[3] = v67;
          v85[0] = v78;
          v85[1] = v74;
          v35.i64[1] = v81.i64[1];
          v35.i64[0] = *(v85 + (v34 & 0xF));
          v81 = v35;
          v28 *= v35.i64[0];
          if (*([arrays objectAtIndexedSubscript:1] + *v23) >= 4uLL)
          {
            v36 = ([arrays objectAtIndexedSubscript:1] + *v14);
            v75 = v36[1];
            v79 = *v36;
            v68 = v36[3];
            v71 = v36[2];
            v37 = BYTE3(*([arrays objectAtIndexedSubscript:1] + *v26));
            v84[2] = v71;
            v84[3] = v68;
            v84[0] = v79;
            v84[1] = v75;
            v38.i64[0] = v81.i64[0];
            v38.i64[1] = *(v84 + (v37 & 0xF));
            v81 = v38;
            v28 *= v38.i64[1];
            [arrays objectAtIndexedSubscript:1];
          }
        }
      }

      v39 = v28 - 1;
    }

    else
    {
      v39 = 0;
      v81 = vdupq_n_s64(1uLL);
      v83 = v81;
    }

    [object setFloat32Ops:0.0];
    [object setFloat16Ops:0.0];
    [arrays objectAtIndexedSubscript:0];
    [object setFloat32Ops:(v39 * v21)];
    [object float32Ops];
    v41 = v40;
    [object float16Ops];
    v43 = v41 + v42;
    [object deviceMemoryBytesRead];
    v45 = v44;
    [object deviceMemoryBytesWrite];
    v47 = v43 / (v45 + v46);
    v48 = *([arrays objectAtIndexedSubscript:0] + *v14 + 12);
    v49 = *([arrays objectAtIndexedSubscript:0] + *v14 + 8);
    v50 = *([arrays objectAtIndexedSubscript:0] + *v14 + 4);
    v51 = *([arrays objectAtIndexedSubscript:0] + *v14);
    [arrays objectAtIndexedSubscript:0];
    v52 = MPSGetDataTypeName();
    v53 = MPSGetDataTypeName();
    v64 = vextq_s8(v81, v81, 8uLL);
    v65 = vextq_s8(v83, v83, 8uLL);
    MPSKernel_LogInfo(kernel, v54, "4d Stencil: T=%u, D=%u, H=%u, W=%u, kT=%lu, kD=%lu, kH=%lu, kW=%lu, src0 Datatype: %s dest Datatype: %s\t", v48, v49, v50, v51, v64.i64[0], v64.i64[1], v65.i64[0], v65.i64[1], v52, v53);
    [object float16Ops];
    v56 = v55;
    [object float32Ops];
    v58 = v57;
    [object deviceMemoryBytesRead];
    v60 = v59;
    [object deviceMemoryBytesWrite];
    MPSKernel_LogInfo(kernel, v61, "Stencil: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v56, v58, v60, v62, v47);
  }

  return object;
}

- (MPSNDArrayStencilOffsets_s)stencilOffsets
{
  v3 = *&self[5].offsets[2];
  *retstr->offsets = *self[5].offsets;
  *&retstr->offsets[2] = v3;
  return self;
}

- (void)setStencilOffsets:(MPSNDArrayStencilOffsets_s *)offsets
{
  v3 = *&offsets->offsets[2];
  *self->_stencilOffsets.offsets = *offsets->offsets;
  *&self->_stencilOffsets.offsets[2] = v3;
}

- (MPSNDArrayStencilSizes_s)stencilStrides
{
  v3 = *&self[6].sizes[2];
  *retstr->sizes = *self[6].sizes;
  *&retstr->sizes[2] = v3;
  return self;
}

- (void)setStencilStrides:(MPSNDArrayStencilSizes_s *)strides
{
  v3 = *&strides->sizes[2];
  *self->_stencilStrides.sizes = *strides->sizes;
  *&self->_stencilStrides.sizes[2] = v3;
}

- (MPSNDArrayStencilSizes_s)stencilDilationRates
{
  v3 = *&self[7].sizes[2];
  *retstr->sizes = *self[7].sizes;
  *&retstr->sizes[2] = v3;
  return self;
}

- (void)setStencilDilationRates:(MPSNDArrayStencilSizes_s *)rates
{
  v3 = *&rates->sizes[2];
  *self->_stencilDilationRates.sizes = *rates->sizes;
  *&self->_stencilDilationRates.sizes[2] = v3;
}

@end