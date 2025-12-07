@interface MPSNDArrayConvolution2DGradientWithInput
- (MPSNDArrayConvolution2DGradientWithInput)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayConvolution2DGradientWithInput)initWithDevice:(id)device;
- (MPSNDArrayConvolution2DGradientWithInput)initWithDevice:(id)device ndArrayConvolution2DDescriptor:(id)descriptor;
- (MPSNDArrayConvolutionOffsets)kernelOffsets;
- (MPSNDArrayConvolutionOffsets)offsets;
- (MPSNDArrayConvolutionSizes)dilationRates;
- (MPSNDArrayConvolutionSizes)kernelSizes;
- (MPSNDArrayConvolutionSizes)strideInPixels;
- (double)destinationStrides;
- (double)stridesAtSourceIndex:(uint64_t)index@<X0>;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAutoTuningParameters:(void *)parameters;
@end

@implementation MPSNDArrayConvolution2DGradientWithInput

- (void)setAutoTuningParameters:(void *)parameters
{
  free(self->_autoTuningParams);
  if ((*(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7350]))[368] < 26)
  {
    autoTuningTarget = self->_autoTuningTarget;
    if (autoTuningTarget == 2)
    {
      v11 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
      self->_autoTuningParams = v11;
      *v11 = *parameters;
      v11[4] = *(parameters + 4);
    }

    else if (autoTuningTarget == 1)
    {
      v10 = malloc_type_malloc(0x10uLL, 0x100004099076E91uLL);
      self->_autoTuningParams = v10;
      *v10 = *parameters;
      *(v10 + 2) = *(parameters + 2);
      *(v10 + 6) = *(parameters + 6);
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

- (MPSNDArrayConvolutionOffsets)kernelOffsets
{
  p_kernelOffsets = &self->_kernelOffsets;
  v3 = self->_kernelOffsets.offset[0];
  v4 = p_kernelOffsets->offset[1];
  result.offset[1] = v4;
  result.offset[0] = v3;
  return result;
}

- (MPSNDArrayConvolution2DGradientWithInput)initWithDevice:(id)device ndArrayConvolution2DDescriptor:(id)descriptor
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayConvolution2DGradientWithInput;
  v6 = [(MPSNDArrayBinaryPrimaryGradientKernel *)&v11 initWithDevice:?];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v8 = *(descriptor + 7);
  if (*(descriptor + 3) % v8)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_11:
      MTLReportFailure();
    }
  }

  else
  {
    if (!(*(descriptor + 4) % v8))
    {
      v6->_kernelWidth = *(descriptor + 1);
      v6->_kernelHeight = *(descriptor + 2);
      v6->_inputFeatureChannels = *(descriptor + 3);
      v6->_outputFeatureChannels = *(descriptor + 4);
      v6->_strideInPixelsX = *(descriptor + 5);
      v6->_strideInPixelsY = *(descriptor + 6);
      v6->_groups = *(descriptor + 7);
      v6->_dilationRateInX = *(descriptor + 8);
      v6->_dilationRateInY = *(descriptor + 9);
      v6->_channelMultiplier = *(descriptor + 10);
      v9 = *(descriptor + 23);
      v6->_dataFormat = *(descriptor + 22);
      v6->_weightsFormat = v9;
      v6->_offsets.offset[0] = 0;
      v6->_offsets.offset[1] = 0;
      v6->_kernelOffsets.offset[0] = 0;
      v6->_kernelOffsets.offset[1] = 0;
      v6->_ndArrayIdentity = [[MPSNDArrayIdentity alloc] initWithDevice:device];
      v7->_forcePlugin = 0;
      v7->_autoTuningParams = 0;
      v7->_autoTuningTarget = 0;
      if (MPSIsReducedPrecision())
      {
        *(&v7->super.super.super.super.super.isa + *MEMORY[0x277CD7378]) = (*(&v7->super.super.super.super.super.isa + *MEMORY[0x277CD7378]) | 2);
      }

      v7->super.super.super._encodeGradient = EncodeNDArrayConvolution2DGradientWithIntput;
      v7->super.super.super._encodeData = v7;
      return v7;
    }

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_11;
    }
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSNDArrayConvolution2DGradientWithInput;
  v5 = [(MPSNDArrayMultiaryGradientKernel *)&v13 copyWithZone:zone device:device];
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
    *(v5 + 248) = self->_kernelOffsets;
    *(v5 + 34) = self->_ndArrayIdentity;
    v6[74] = 0;
    if (self->_autoTuningParams)
    {
      autoTuningTarget = self->_autoTuningTarget;
      if (autoTuningTarget == 2)
      {
        v9 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
        *(v6 + 36) = v9;
        autoTuningParams = self->_autoTuningParams;
        v11 = autoTuningParams[4];
        *v9 = *autoTuningParams;
        v9[4] = v11;
      }

      else if (autoTuningTarget == 1)
      {
        v8 = malloc_type_malloc(0x10uLL, 0x100004099076E91uLL);
        *(v6 + 36) = v8;
        *v8 = *self->_autoTuningParams;
      }
    }

    *(v6 + 13) = EncodeNDArrayConvolution2DGradientWithIntput;
    *(v6 + 12) = v6;
  }

  return v6;
}

- (MPSNDArrayConvolution2DGradientWithInput)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayConvolution2DGradientWithInput;
  v6 = [MPSNDArrayBinaryPrimaryGradientKernel initWithCoder:sel_initWithCoder_device_ device:?];
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
    v6->_kernelOffsets.offset[0] = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelOffset0"];
    v6->_kernelOffsets.offset[1] = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelOffset1"];
    v6->_ndArrayIdentity = [[MPSNDArrayIdentity alloc] initWithDevice:device];
    v6->super.super.super._encodeGradient = EncodeNDArrayConvolution2DGradientWithIntput;
    v6->super.super.super._encodeData = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v5.receiver = self;
  v5.super_class = MPSNDArrayConvolution2DGradientWithInput;
  [(MPSNDArrayMultiaryGradientKernel *)&v5 encodeWithCoder:?];
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
  [coder encodeInt64:selfCopy->_offsets.offset[0] forKey:@"MPSNDArrayConvolution2D.offset0"];
  [coder encodeInt64:selfCopy->_offsets.offset[1] forKey:@"MPSNDArrayConvolution2D.offset1"];
  selfCopy = (selfCopy + 248);
  [coder encodeInt64:selfCopy->super.super.super.super.super.isa forKey:@"MPSNDArrayConvolution2D.kernelOffset0"];
  [coder encodeInt64:selfCopy->super.super.super.super._options forKey:@"MPSNDArrayConvolution2D.kernelOffset1"];
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

- (MPSNDArrayConvolution2DGradientWithInput)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v195.receiver = self;
  v195.super_class = MPSNDArrayConvolution2DGradientWithInput;
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
  MPSKernel_LogInfo(kernelCopy, 4uLL, "Convolution2DGradientWithInput: N=%lu, C=%lu, H=%lu, W=%lu, kH=%lu, kW=%lu, O=%lu, matrixM=%lu, matrixN=%lu, matrixK=%lu, A Datatype: %s, B Datatype: %s C Datatype: %s\t", v51, v26, v161, v175, v78, v77, v76, v76, v79, v80, v90, v91, v92);
  [object float16Ops];
  v94 = v93;
  [object float32Ops];
  v96 = v95;
  [object deviceMemoryBytesRead];
  v98 = v97;
  [object deviceMemoryBytesWrite];
  MPSKernel_LogInfo(kernelCopy, 4uLL, "Convolution2DGradientWithInput: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v94, v96, v98, v99, v89);
  return object;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayConvolution2DGradientWithInput;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end