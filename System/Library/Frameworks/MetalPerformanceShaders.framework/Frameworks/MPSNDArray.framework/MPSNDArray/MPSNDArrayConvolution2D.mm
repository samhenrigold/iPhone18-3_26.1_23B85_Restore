@interface MPSNDArrayConvolution2D
+ (BOOL)supportsPostfixForDevice:(void *)device convolutionDescriptor:(id)descriptor sourceTensorDescriptor:(MPSNDArrayDataTensorDescriptor *)tensorDescriptor destinationTensorDescriptor:(MPSNDArrayDataTensorDescriptor *)destinationTensorDescriptor weightsTensorDescriptor:(MPSNDArrayWeightsTensorDescriptor *)weightsTensorDescriptor;
- (BOOL)advanceAutoTuneIteration;
- (MPSNDArrayConvolution2D)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayConvolution2D)initWithDevice:(id)device;
- (MPSNDArrayConvolution2D)initWithDevice:(id)device ndArrayConvolution2DDescriptor:(id)descriptor sourceCount:(unint64_t)count;
- (MPSNDArrayConvolutionOffsets)offsets;
- (MPSNDArrayConvolutionSizes)dilationRates;
- (MPSNDArrayConvolutionSizes)kernelSizes;
- (MPSNDArrayConvolutionSizes)strideInPixels;
- (double)destinationStrides;
- (double)stridesAtSourceIndex:(uint64_t)index@<X0>;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAutoTuningParameters:(void *)parameters;
@end

@implementation MPSNDArrayConvolution2D

+ (BOOL)supportsPostfixForDevice:(void *)device convolutionDescriptor:(id)descriptor sourceTensorDescriptor:(MPSNDArrayDataTensorDescriptor *)tensorDescriptor destinationTensorDescriptor:(MPSNDArrayDataTensorDescriptor *)destinationTensorDescriptor weightsTensorDescriptor:(MPSNDArrayWeightsTensorDescriptor *)weightsTensorDescriptor
{
  v7 = *(device + 368);
  LOBYTE(dataFormat) = 1;
  if (v7 >= 26 && v7 != 38)
  {
    if (IsPluginDisabled())
    {
LABEL_4:
      LOBYTE(dataFormat) = 1;
      return dataFormat;
    }

    LOBYTE(dataFormat) = 0;
    if (destinationTensorDescriptor && tensorDescriptor && weightsTensorDescriptor)
    {
      var5 = tensorDescriptor->var5;
      if (var5 != weightsTensorDescriptor->var5 || var5 != destinationTensorDescriptor->var5)
      {
        goto LABEL_4;
      }

      v35 = [descriptor kernelWidth] == 1 && objc_msgSend(descriptor, "kernelHeight") == 1 && objc_msgSend(descriptor, "strideInPixelsX") == 1 && objc_msgSend(descriptor, "strideInPixelsY") == 1;
      kernelWidth = [descriptor kernelWidth];
      kernelHeight = [descriptor kernelHeight];
      strideInPixelsX = [descriptor strideInPixelsX];
      strideInPixelsY = [descriptor strideInPixelsY];
      dilationRateInX = [descriptor dilationRateInX];
      dilationRateInY = [descriptor dilationRateInY];
      groups = [descriptor groups];
      v22 = kernelWidth == 3 && kernelHeight == 3;
      v23 = v22 && strideInPixelsX == 1;
      v24 = v23 && strideInPixelsY == 1;
      v25 = v24 && dilationRateInX == 1;
      v26 = v25 && dilationRateInY == 1;
      v27 = v26 && groups == 1;
      v28 = v27;
      if (!v35 && !v28)
      {
        goto LABEL_4;
      }

      if (MPSForcePlugin())
      {
        LOBYTE(dataFormat) = 0;
      }

      else
      {
        dataFormat = [descriptor dataFormat];
        if (dataFormat == 1)
        {
          return dataFormat;
        }

        v29 = tensorDescriptor->var5;
        if (v29 == 268435472)
        {
          goto LABEL_4;
        }

        if (v28)
        {
          var3 = destinationTensorDescriptor->var3;
          v32 = destinationTensorDescriptor->var0 < 0x1F || destinationTensorDescriptor->var1 < 0x1F;
          if (*(device + 368) > 32)
          {
            LOBYTE(dataFormat) = var3 < 9 || v32;
          }

          else
          {
            LOBYTE(dataFormat) = var3 < 8 || var3 == 96 || v32;
          }
        }

        else
        {
          LOBYTE(dataFormat) = v29 == 268435488;
        }
      }
    }
  }

  return dataFormat;
}

- (void)setAutoTuningParameters:(void *)parameters
{
  free(self->_autoTuningParams);
  if ((*(&self->super.super.super.super.isa + *MEMORY[0x277CD7350]))[368] < 26)
  {
    autoTuningTarget = self->_autoTuningTarget;
    switch(autoTuningTarget)
    {
      case 1:
        v12 = malloc_type_malloc(0x10uLL, 0x100004099076E91uLL);
        self->_autoTuningParams = v12;
        *v12 = *parameters;
        *(v12 + 2) = *(parameters + 2);
        *(v12 + 6) = *(parameters + 6);
        break;
      case 2:
        v11 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
        self->_autoTuningParams = v11;
        *v11 = *parameters;
        v11[4] = *(parameters + 4);
        break;
      case 4:
        v10 = malloc_type_malloc(0x24uLL, 0x10000402FE4F506uLL);
        self->_autoTuningParams = v10;
        *v10 = *parameters;
        *(v10 + 2) = *(parameters + 2);
        *(v10 + 12) = *(parameters + 12);
        *(v10 + 12) = *(parameters + 12);
        *(v10 + 5) = *(parameters + 5);
        *(v10 + 7) = *(parameters + 7);
        break;
    }
  }

  else
  {
    v5 = malloc_type_malloc(0x50uLL, 0x10000404247E4FDuLL);
    self->_autoTuningParams = v5;
    *v5 = *parameters;
    v6 = *(parameters + 4);
    v8 = *(parameters + 1);
    v7 = *(parameters + 2);
    v5[3] = *(parameters + 3);
    v5[4] = v6;
    v5[1] = v8;
    v5[2] = v7;
  }
}

- (MPSNDArrayConvolutionSizes)kernelSizes
{
  kernelHeight = self->_kernelHeight;
  kernelWidth = self->_kernelWidth;
  result.size[1] = kernelHeight;
  result.size[0] = kernelWidth;
  return result;
}

- (MPSNDArrayConvolutionSizes)strideInPixels
{
  strideInPixelsY = self->_strideInPixelsY;
  strideInPixelsX = self->_strideInPixelsX;
  result.size[1] = strideInPixelsY;
  result.size[0] = strideInPixelsX;
  return result;
}

- (MPSNDArrayConvolutionSizes)dilationRates
{
  dilationRateInY = self->_dilationRateInY;
  dilationRateInX = self->_dilationRateInX;
  result.size[1] = dilationRateInY;
  result.size[0] = dilationRateInX;
  return result;
}

- (MPSNDArrayConvolutionOffsets)offsets
{
  p_offsets = &self->_offsets;
  v3 = self->_offsets.offset[0];
  v4 = p_offsets->offset[1];
  result.offset[1] = v4;
  result.offset[0] = v3;
  return result;
}

- (MPSNDArrayConvolution2D)initWithDevice:(id)device ndArrayConvolution2DDescriptor:(id)descriptor sourceCount:(unint64_t)count
{
  v12.receiver = self;
  v12.super_class = MPSNDArrayConvolution2D;
  v7 = [(MPSNDArrayMultiaryKernel *)&v12 initWithDevice:device sourceCount:count];
  v8 = v7;
  if (v7)
  {
    v7->_kernelWidth = *(descriptor + 1);
    v7->_kernelHeight = *(descriptor + 2);
    v7->_inputFeatureChannels = *(descriptor + 3);
    v7->_outputFeatureChannels = *(descriptor + 4);
    v7->_strideInPixelsX = *(descriptor + 5);
    v7->_strideInPixelsY = *(descriptor + 6);
    v7->_groups = *(descriptor + 7);
    v7->_dilationRateInX = *(descriptor + 8);
    v7->_dilationRateInY = *(descriptor + 9);
    v7->_channelMultiplier = *(descriptor + 10);
    v9 = *(descriptor + 23);
    v7->_dataFormat = *(descriptor + 22);
    v7->_weightsFormat = v9;
    v7->_offsets.offset[0] = 0;
    v7->_offsets.offset[1] = 0;
    v7->_ndArrayIdentity = [[MPSNDArrayIdentity alloc] initWithDevice:device];
    v8->_autoTuningParams = 0;
    v8->_autoTuningTarget = 0;
    v8->_autoTuneIteration = -1;
    v8->_nextAutoTuneIteration = -1;
    v8->_logNextAutoTuneParams = 0;
    v8->_allowFP16WinogradTransformIntermediate = 0;
    v8->_forcePlugin = 0;
    if (MPSIsReducedPrecision())
    {
      *(&v8->super.super.super.super.isa + *MEMORY[0x277CD7378]) = (*(&v8->super.super.super.super.isa + *MEMORY[0x277CD7378]) | 2);
    }

    groups = v8->_groups;
    if (v8->_inputFeatureChannels % groups)
    {
      if (MTLReportFailureTypeEnabled())
      {
LABEL_11:
        MTLReportFailure();
      }
    }

    else
    {
      if (!(v8->_outputFeatureChannels % groups))
      {
        v8->super._encode = EncodeNDArrayConvolution2D;
        v8->super.super._encodeData = v8;
        return v8;
      }

      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSNDArrayConvolution2D;
  v5 = [(MPSNDArrayMultiaryKernel *)&v13 copyWithZone:zone device:device];
  v6 = v5;
  if (v5)
  {
    *(v5 + 18) = self->_kernelWidth;
    *(v5 + 19) = self->_kernelHeight;
    *(v5 + 20) = self->_inputFeatureChannels;
    *(v5 + 21) = self->_outputFeatureChannels;
    *(v5 + 22) = self->_strideInPixelsX;
    *(v5 + 23) = self->_strideInPixelsY;
    *(v5 + 24) = self->_groups;
    *(v5 + 25) = self->_dilationRateInX;
    *(v5 + 26) = self->_dilationRateInY;
    *(v5 + 27) = self->_channelMultiplier;
    *(v5 + 56) = self->_dataFormat;
    *(v5 + 57) = self->_weightsFormat;
    *(v5 + 232) = self->_offsets;
    *(v5 + 32) = self->_ndArrayIdentity;
    autoTuningTarget = self->_autoTuningTarget;
    v6[76] = autoTuningTarget;
    if (self->_autoTuningParams)
    {
      if (autoTuningTarget == 2)
      {
        v9 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
        *(v6 + 37) = v9;
        autoTuningParams = self->_autoTuningParams;
        v11 = autoTuningParams[4];
        *v9 = *autoTuningParams;
        v9[4] = v11;
      }

      else if (autoTuningTarget == 1)
      {
        v8 = malloc_type_malloc(0x10uLL, 0x100004099076E91uLL);
        *(v6 + 37) = v8;
        *v8 = *self->_autoTuningParams;
      }
    }

    *(v6 + 17) = EncodeNDArrayConvolution2D;
    *(v6 + 12) = v6;
  }

  return v6;
}

- (MPSNDArrayConvolution2D)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayConvolution2D;
  v6 = [MPSNDArrayMultiaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (v6)
  {
    v6->_kernelWidth = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelWidth"];
    v6->_kernelHeight = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelHeight"];
    v6->_inputFeatureChannels = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.inputChannels"];
    v6->_outputFeatureChannels = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.outputChannels"];
    v6->_strideInPixelsX = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.strideInPixelsX"];
    v6->_strideInPixelsY = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.strideInPixelsY"];
    v6->_groups = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.groups"];
    v6->_dilationRateInX = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.dilationRateInX"];
    v6->_dilationRateInY = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.dilationRateInY"];
    v6->_channelMultiplier = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.channelMultiplier"];
    v6->_dataFormat = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.dataFormat"];
    v6->_weightsFormat = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.weightsFormat"];
    v6->_offsets.offset[0] = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.offset0"];
    v6->_offsets.offset[1] = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.offset1"];
    v6->_ndArrayIdentity = [[MPSNDArrayIdentity alloc] initWithDevice:device];
    v6->_autoTuningParams = 0;
    v6->_autoTuningTarget = 0;
    v6->_autoTuneIteration = -1;
    v6->_nextAutoTuneIteration = -1;
    v6->_logNextAutoTuneParams = 0;
    v6->_allowFP16WinogradTransformIntermediate = 0;
    v6->super._encode = EncodeNDArrayConvolution2D;
    v6->super.super._encodeData = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v5.receiver = self;
  v5.super_class = MPSNDArrayConvolution2D;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeInt64:selfCopy->_kernelWidth forKey:@"MPSNDArrayConvolution2D.kernelWidth"];
  [coder encodeInt64:selfCopy->_kernelHeight forKey:@"MPSNDArrayConvolution2D.kernelHeight"];
  [coder encodeInt64:selfCopy->_inputFeatureChannels forKey:@"MPSNDArrayConvolution2D.inputChannels"];
  [coder encodeInt64:selfCopy->_outputFeatureChannels forKey:@"MPSNDArrayConvolution2D.outputChannels"];
  [coder encodeInt64:selfCopy->_strideInPixelsX forKey:@"MPSNDArrayConvolution2D.strideInPixelsX"];
  [coder encodeInt64:selfCopy->_strideInPixelsY forKey:@"MPSNDArrayConvolution2D.strideInPixelsY"];
  [coder encodeInt64:selfCopy->_groups forKey:@"MPSNDArrayConvolution2D.groups"];
  [coder encodeInt64:selfCopy->_dilationRateInX forKey:@"MPSNDArrayConvolution2D.dilationRateInX"];
  [coder encodeInt64:selfCopy->_dilationRateInY forKey:@"MPSNDArrayConvolution2D.dilationRateInY"];
  [coder encodeInt64:selfCopy->_channelMultiplier forKey:@"MPSNDArrayConvolution2D.channelMultiplier"];
  [coder encodeInt64:selfCopy->_dataFormat forKey:@"MPSNDArrayConvolution2D.dataFormat"];
  [coder encodeInt64:selfCopy->_weightsFormat forKey:@"MPSNDArrayConvolution2D.weightsFormat"];
  selfCopy = (selfCopy + 232);
  [coder encodeInt64:selfCopy->super.super.super.super.isa forKey:@"MPSNDArrayConvolution2D.offset0"];
  [coder encodeInt64:selfCopy->super.super.super._options forKey:@"MPSNDArrayConvolution2D.offset1"];
}

- (double)stridesAtSourceIndex:(uint64_t)index@<X0>
{
  *(&v2 + 1) = 0x100000001;
  LODWORD(v2) = *(index + 176);
  DWORD1(v2) = *(index + 184);
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  a2[2] = v3;
  a2[3] = v3;
  *a2 = v2;
  a2[1] = v3;
  return *&v2;
}

- (double)destinationStrides
{
  result = 0.0;
  self[2] = 0u;
  self[3] = 0u;
  *self = xmmword_239B0A0D0;
  self[1] = 0u;
  return result;
}

- (MPSNDArrayConvolution2D)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v26.receiver = self;
  v26.super_class = MPSNDArrayConvolution2D;
  v6 = [(MPSNDArrayMultiaryBase *)&v26 destinationArrayDescriptorForSourceArrays:arrays sourceState:state];
  v7 = [arrays objectAtIndexedSubscript:0];
  v8 = (v7 + *MEMORY[0x277CD7410]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13.i32[0] = GetAxisIndexForDataFormat(MPSNDArrayConvolution2DDataFormat)::axis[self->_dataFormat];
  v21 = vmovl_u8(v13).u64[0];
  v22 = vzip1_s8(*(v7 + *MEMORY[0x277CD73D8]), *(v7 + *MEMORY[0x277CD73D8]));
  v23[2] = v11;
  v23[3] = v12;
  v23[0] = v9;
  v23[1] = v10;
  v14 = *(v23 + (*(&v22 & 0xFFFFFFFFFFFFFFF9 | (2 * (v21 & 3))) & 0xF));
  v24[2] = v11;
  v24[3] = v12;
  v24[0] = v9;
  v24[1] = v10;
  v15 = *(v24 + (*(&v22 & 0xFFFFFFFFFFFFFFF9 | (2 * (BYTE4(v21) & 3))) & 0xF));
  v25[2] = v11;
  v25[3] = v12;
  v25[0] = v9;
  v25[1] = v10;
  outputFeatureChannels = self->_outputFeatureChannels;
  v17 = (*(v25 + (*(&v22 & 0xFFFFFFFFFFFFFFF9 | (2 * (BYTE6(v21) & 3))) & 0xF)) + self->_strideInPixelsX - 1) / self->_strideInPixelsX;
  v18 = (v15 + self->_strideInPixelsY - 1) / self->_strideInPixelsY;
  v19 = MEMORY[0x277CD7438];
  *(&v6->super.isa + *MEMORY[0x277CD7438]) = 0;
  *(&v6->super.isa + *v19 + 1) = 1;
  *(&v6->super.isa + *v19 + 2) = 2;
  *(&v6->super.isa + *v19 + 3) = 3;
  [(MPSNDArrayDescriptor *)v6 setLengthOfDimension:v14 atIndex:v21];
  [(MPSNDArrayDescriptor *)v6 setLengthOfDimension:outputFeatureChannels atIndex:WORD1(v21)];
  [(MPSNDArrayDescriptor *)v6 setLengthOfDimension:v18 atIndex:WORD2(v21)];
  [(MPSNDArrayDescriptor *)v6 setLengthOfDimension:v17 atIndex:HIWORD(v21)];
  [(MPSNDArrayDescriptor *)v6 sliceDimension:v21 withSubrange:0, v14];
  [(MPSNDArrayDescriptor *)v6 sliceDimension:WORD1(v21) withSubrange:0, outputFeatureChannels];
  [(MPSNDArrayDescriptor *)v6 sliceDimension:WORD2(v21) withSubrange:0, v18];
  [(MPSNDArrayDescriptor *)v6 sliceDimension:HIWORD(v21) withSubrange:0, v17];
  return v6;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v195.receiver = self;
  v195.super_class = MPSNDArrayConvolution2D;
  object = [(MPSNDArrayMultiaryBase *)&v195 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
  v10 = *(kernel + 56);
  if (v10)
  {
    if (v10 == 2)
    {
      v27 = [arrays objectAtIndexedSubscript:0];
      v28 = MEMORY[0x277CD7410];
      v29 = (v27 + *MEMORY[0x277CD7410]);
      v167 = *v29;
      v129 = v29[2];
      v147 = v29[1];
      v111 = v29[3];
      v30 = [arrays objectAtIndexedSubscript:0];
      v31 = MEMORY[0x277CD73D8];
      v32 = *(v30 + *MEMORY[0x277CD73D8] + 3) & 0xF;
      v194[3] = v111;
      v194[2] = v129;
      v194[1] = v147;
      v194[0] = v167;
      v26 = *(v194 + v32);
      v33 = ([arrays objectAtIndexedSubscript:0] + *v28);
      v168 = *v33;
      v130 = v33[2];
      v148 = v33[1];
      v112 = v33[3];
      v34 = *([arrays objectAtIndexedSubscript:0] + *v31 + 2) & 0xF;
      v193[3] = v112;
      v193[2] = v130;
      v193[1] = v148;
      v193[0] = v168;
      v20 = *(v193 + v34);
      v35 = ([arrays objectAtIndexedSubscript:0] + *v28);
      v169 = *v35;
      v131 = v35[2];
      v149 = v35[1];
      v113 = v35[3];
      v36 = *([arrays objectAtIndexedSubscript:0] + *v31 + 1) & 0xF;
      v192[3] = v113;
      v192[2] = v131;
      v192[1] = v149;
      v192[0] = v169;
      v23 = *(v192 + v36);
      v37 = ([arrays objectAtIndexedSubscript:0] + *v28);
      v170 = *v37;
      v132 = v37[2];
      v150 = v37[1];
      v114 = v37[3];
      v38 = *([arrays objectAtIndexedSubscript:0] + *v31);
      v191[3] = v114;
      v191[2] = v132;
      v191[1] = v150;
      v191[0] = v170;
      v17 = *(v191 + (v38 & 0xF));
    }

    else if (v10 == 1)
    {
      v11 = [arrays objectAtIndexedSubscript:0];
      v12 = MEMORY[0x277CD7410];
      v13 = (v11 + *MEMORY[0x277CD7410]);
      v163 = *v13;
      v125 = v13[2];
      v143 = v13[1];
      v107 = v13[3];
      v14 = [arrays objectAtIndexedSubscript:0];
      v15 = MEMORY[0x277CD73D8];
      v16 = *(v14 + *MEMORY[0x277CD73D8] + 3) & 0xF;
      v186[2] = v125;
      v186[3] = v107;
      v186[0] = v163;
      v186[1] = v143;
      v17 = *(v186 + v16);
      v18 = ([arrays objectAtIndexedSubscript:0] + *v12);
      v164 = *v18;
      v126 = v18[2];
      v144 = v18[1];
      v108 = v18[3];
      v19 = *([arrays objectAtIndexedSubscript:0] + *v15 + 2) & 0xF;
      v185[2] = v126;
      v185[3] = v108;
      v185[0] = v164;
      v185[1] = v144;
      v20 = *(v185 + v19);
      v21 = ([arrays objectAtIndexedSubscript:0] + *v12);
      v165 = *v21;
      v127 = v21[2];
      v145 = v21[1];
      v109 = v21[3];
      v22 = *([arrays objectAtIndexedSubscript:0] + *v15 + 1) & 0xF;
      v184[2] = v127;
      v184[3] = v109;
      v184[0] = v165;
      v184[1] = v145;
      v23 = *(v184 + v22);
      v24 = ([arrays objectAtIndexedSubscript:0] + *v12);
      v166 = *v24;
      v128 = v24[2];
      v146 = v24[1];
      v110 = v24[3];
      v25 = *([arrays objectAtIndexedSubscript:0] + *v15);
      v183[2] = v128;
      v183[3] = v110;
      v183[0] = v166;
      v183[1] = v146;
      v26 = *(v183 + (v25 & 0xF));
    }

    else
    {
      v17 = 0;
      v26 = 0;
      v20 = 0;
      v23 = 0;
    }
  }

  else
  {
    v39 = [arrays objectAtIndexedSubscript:0];
    v40 = MEMORY[0x277CD7410];
    v41 = (v39 + *MEMORY[0x277CD7410]);
    v171 = *v41;
    v133 = v41[2];
    v151 = v41[1];
    v115 = v41[3];
    v42 = [arrays objectAtIndexedSubscript:0];
    v43 = MEMORY[0x277CD73D8];
    v44 = *(v42 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v190[3] = v115;
    v190[2] = v133;
    v190[1] = v151;
    v190[0] = v171;
    v17 = *(v190 + v44);
    v45 = ([arrays objectAtIndexedSubscript:0] + *v40);
    v172 = *v45;
    v134 = v45[2];
    v152 = v45[1];
    v116 = v45[3];
    v46 = *([arrays objectAtIndexedSubscript:0] + *v43 + 2) & 0xF;
    v189[3] = v116;
    v189[1] = v152;
    v189[2] = v134;
    v189[0] = v172;
    v26 = *(v189 + v46);
    v47 = ([arrays objectAtIndexedSubscript:0] + *v40);
    v173 = *v47;
    v135 = v47[2];
    v153 = v47[1];
    v117 = v47[3];
    v48 = *([arrays objectAtIndexedSubscript:0] + *v43 + 1) & 0xF;
    v188[2] = v135;
    v188[3] = v117;
    v188[0] = v173;
    v188[1] = v153;
    v20 = *(v188 + v48);
    v49 = ([arrays objectAtIndexedSubscript:0] + *v40);
    v174 = *v49;
    v136 = v49[2];
    v154 = v49[1];
    v118 = v49[3];
    v50 = *([arrays objectAtIndexedSubscript:0] + *v43);
    v187[2] = v136;
    v187[3] = v118;
    v187[0] = v174;
    v187[1] = v154;
    v23 = *(v187 + (v50 & 0xF));
  }

  kernelCopy = kernel;
  v175 = v23;
  v51 = v17;
  v52 = *(kernel + 57);
  if (v52 == 1)
  {
    v66 = [arrays objectAtIndexedSubscript:1];
    v67 = MEMORY[0x277CD7410];
    v68 = (v66 + *MEMORY[0x277CD7410]);
    v140 = v68[1];
    v158 = *v68;
    v104 = v68[3];
    v122 = v68[2];
    v69 = [arrays objectAtIndexedSubscript:1];
    v70 = MEMORY[0x277CD73D8];
    v71 = *(v69 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v182[2] = v122;
    v182[3] = v104;
    v182[0] = v158;
    v182[1] = v140;
    v65 = *(v182 + v71);
    v72 = ([arrays objectAtIndexedSubscript:1] + *v67);
    v141 = v72[1];
    v159 = *v72;
    v105 = v72[3];
    v123 = v72[2];
    v73 = *([arrays objectAtIndexedSubscript:1] + *v70 + 1) & 0xF;
    v181[2] = v123;
    v181[3] = v105;
    v181[0] = v159;
    v181[1] = v141;
    v59 = *(v181 + v73);
    v74 = ([arrays objectAtIndexedSubscript:1] + *v67);
    v142 = v74[1];
    v160 = *v74;
    v106 = v74[3];
    v124 = v74[2];
    v75 = *([arrays objectAtIndexedSubscript:1] + *v70);
    v180[2] = v124;
    v180[3] = v106;
    v180[0] = v160;
    v180[1] = v142;
    v62 = *(v180 + (v75 & 0xF));
  }

  else if (v52)
  {
    v59 = 0;
    v62 = 0;
    v65 = 0;
  }

  else
  {
    v53 = [arrays objectAtIndexedSubscript:1];
    v54 = MEMORY[0x277CD7410];
    v55 = (v53 + *MEMORY[0x277CD7410]);
    v137 = v55[1];
    v155 = *v55;
    v101 = v55[3];
    v119 = v55[2];
    v56 = [arrays objectAtIndexedSubscript:1];
    v57 = MEMORY[0x277CD73D8];
    v58 = *(v56 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v179[2] = v119;
    v179[3] = v101;
    v179[0] = v155;
    v179[1] = v137;
    v59 = *(v179 + v58);
    v60 = ([arrays objectAtIndexedSubscript:1] + *v54);
    v138 = v60[1];
    v156 = *v60;
    v102 = v60[3];
    v120 = v60[2];
    v61 = *([arrays objectAtIndexedSubscript:1] + *v57 + 2) & 0xF;
    v178[2] = v120;
    v178[3] = v102;
    v178[0] = v156;
    v178[1] = v138;
    v62 = *(v178 + v61);
    v63 = ([arrays objectAtIndexedSubscript:1] + *v54);
    v139 = v63[1];
    v157 = *v63;
    v103 = v63[3];
    v121 = v63[2];
    v64 = *([arrays objectAtIndexedSubscript:1] + *v57);
    v177[2] = v121;
    v177[3] = v103;
    v177[0] = v157;
    v177[1] = v139;
    v65 = *(v177 + (v64 & 0xF));
  }

  v76 = v65;
  v77 = v62;
  v78 = v59;
  v161 = v20;
  v79 = v20 * v51 * v175;
  v80 = v26 * v59 * v77;
  v81 = (v79 * v76 * v80);
  if ((*(destArrays + *MEMORY[0x277CD73C8]) & 0xFFF8) == 0x20)
  {
    [object setFloat32Ops:v81];
    [object setFloat16Ops:0.0];
  }

  else
  {
    [object setFloat16Ops:v81];
    [object setFloat32Ops:0.0];
  }

  [object float32Ops];
  v83 = v82;
  [object float16Ops];
  v85 = v83 + v84;
  [object deviceMemoryBytesRead];
  v87 = v86;
  [object deviceMemoryBytesWrite];
  v89 = v85 / (v87 + v88);
  [arrays objectAtIndexedSubscript:0];
  v90 = MPSGetDataTypeName();
  [arrays objectAtIndexedSubscript:1];
  v91 = MPSGetDataTypeName();
  v92 = MPSGetDataTypeName();
  MPSKernel_LogInfo(kernelCopy, 4uLL, "Convolution2D: N=%lu, C=%lu, H=%lu, W=%lu, kH=%lu, kW=%lu, O=%lu, matrixM=%lu, matrixN=%lu, matrixK=%lu, A Datatype: %s, B Datatype: %s C Datatype: %s\t", v51, v26, v161, v175, v78, v77, v76, v76, v79, v80, v90, v91, v92);
  [object float16Ops];
  v94 = v93;
  [object float32Ops];
  v96 = v95;
  [object deviceMemoryBytesRead];
  v98 = v97;
  [object deviceMemoryBytesWrite];
  MPSKernel_LogInfo(kernelCopy, 4uLL, "Convolution2D: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v94, v96, v98, v99, v89);
  return object;
}

- (BOOL)advanceAutoTuneIteration
{
  nextAutoTuneIteration = self->_nextAutoTuneIteration;
  self->_autoTuneIteration = nextAutoTuneIteration;
  return nextAutoTuneIteration > 0;
}

- (void)dealloc
{
  free(self->_autoTuningParams);
  v3.receiver = self;
  v3.super_class = MPSNDArrayConvolution2D;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end