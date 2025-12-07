@interface MPSNDArrayConvolution2DGradientWithWeights
- (MPSNDArrayConvolution2DGradientWithWeights)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayConvolution2DGradientWithWeights)initWithDevice:(id)device;
- (MPSNDArrayConvolution2DGradientWithWeights)initWithDevice:(id)device ndArrayConvolution2DDescriptor:(id)descriptor;
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

@implementation MPSNDArrayConvolution2DGradientWithWeights

- (void)setAutoTuningParameters:(void *)parameters
{
  free(self->_autoTuningParams);
  if (((*(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7350]))[1477] & 4) != 0)
  {
    v7 = malloc_type_malloc(0x30uLL, 0x10000400D0814F3uLL);
    self->_autoTuningParams = v7;
    v9 = *(parameters + 1);
    v8 = *(parameters + 2);
    *v7 = *parameters;
    v7[1] = v9;
    v7[2] = v8;
  }

  else
  {
    v5 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    self->_autoTuningParams = v5;
    v6 = *(parameters + 1);
    *v5 = *parameters;
    v5[1] = v6;
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

- (MPSNDArrayConvolution2DGradientWithWeights)initWithDevice:(id)device ndArrayConvolution2DDescriptor:(id)descriptor
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayConvolution2DGradientWithWeights;
  result = [(MPSNDArrayBinarySecondaryGradientKernel *)&v9 initWithDevice:device];
  if (result)
  {
    v6 = *(descriptor + 7);
    if (*(descriptor + 3) % v6)
    {
      v8 = result;
      if (MTLReportFailureTypeEnabled())
      {
LABEL_9:
        MTLReportFailure();
      }
    }

    else
    {
      if (!(*(descriptor + 4) % v6))
      {
        result->_kernelWidth = *(descriptor + 1);
        result->_kernelHeight = *(descriptor + 2);
        result->_inputFeatureChannels = *(descriptor + 3);
        result->_outputFeatureChannels = *(descriptor + 4);
        result->_strideInPixelsX = *(descriptor + 5);
        result->_strideInPixelsY = *(descriptor + 6);
        result->_groups = *(descriptor + 7);
        result->_dilationRateInX = *(descriptor + 8);
        result->_dilationRateInY = *(descriptor + 9);
        result->_channelMultiplier = *(descriptor + 10);
        v7 = *(descriptor + 23);
        result->_dataFormat = *(descriptor + 22);
        result->_weightsFormat = v7;
        result->_offsets.offset[0] = 0;
        result->_offsets.offset[1] = 0;
        result->_autoTuning = 0;
        result->_autoTuningParams = 0;
        result->_forcePlugin = 0;
        result->super.super.super._encodeGradient = EncodeNDArrayConvolution2DGradientWithWeights;
        result->super.super.super._encodeData = result;
        return result;
      }

      v8 = result;
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayConvolution2DGradientWithWeights;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 18) = self->_kernelWidth;
    *(result + 19) = self->_kernelHeight;
    *(result + 20) = self->_inputFeatureChannels;
    *(result + 21) = self->_outputFeatureChannels;
    *(result + 22) = self->_strideInPixelsX;
    *(result + 23) = self->_strideInPixelsY;
    *(result + 24) = self->_groups;
    *(result + 25) = self->_dilationRateInX;
    *(result + 26) = self->_dilationRateInY;
    *(result + 27) = self->_channelMultiplier;
    *(result + 56) = self->_dataFormat;
    *(result + 57) = self->_weightsFormat;
    *(result + 232) = self->_offsets;
    *(result + 272) = 0;
    *(result + 13) = EncodeNDArrayConvolution2DGradientWithWeights;
    *(result + 12) = result;
  }

  return result;
}

- (MPSNDArrayConvolution2DGradientWithWeights)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayConvolution2DGradientWithWeights;
  v5 = [(MPSNDArrayBinarySecondaryGradientKernel *)&v8 initWithCoder:coder device:device];
  if (v5)
  {
    v5->_kernelWidth = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelWidth"];
    v5->_kernelHeight = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelHeight"];
    v5->_inputFeatureChannels = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.inputChannels"];
    v5->_outputFeatureChannels = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.outputChannels"];
    v5->_strideInPixelsX = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.strideInPixelsX"];
    v5->_strideInPixelsY = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.strideInPixelsY"];
    v5->_groups = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.groups"];
    v5->_dilationRateInX = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.dilationRateInX"];
    v5->_dilationRateInY = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.dilationRateInY"];
    v5->_channelMultiplier = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.channelMultiplier"];
    v5->_dataFormat = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.dataFormat"];
    v5->_weightsFormat = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.weightsFormat"];
    v5->_offsets.offset[0] = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.offset0"];
    v6 = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.offset1"];
    v5->_autoTuning = 0;
    v5->_offsets.offset[1] = v6;
    v5->super.super.super._encodeGradient = EncodeNDArrayConvolution2DGradientWithWeights;
    v5->super.super.super._encodeData = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v5.receiver = self;
  v5.super_class = MPSNDArrayConvolution2DGradientWithWeights;
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
  selfCopy = (selfCopy + 232);
  [coder encodeInt64:selfCopy->super.super.super.super.super.isa forKey:@"MPSNDArrayConvolution2D.offset0"];
  [coder encodeInt64:selfCopy->super.super.super.super._options forKey:@"MPSNDArrayConvolution2D.offset1"];
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

- (MPSNDArrayConvolution2DGradientWithWeights)initWithDevice:(id)device
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
  v195.super_class = MPSNDArrayConvolution2DGradientWithWeights;
  object = [(MPSNDArrayMultiaryBase *)&v195 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
  v10 = *(kernel + 56);
  if (v10)
  {
    if (v10 == 2)
    {
      v27 = [arrays objectAtIndexedSubscript:0];
      v28 = MEMORY[0x277CD7410];
      v29 = (v27 + *MEMORY[0x277CD7410]);
      v154 = v29[1];
      v167 = *v29;
      v117 = v29[3];
      v135 = v29[2];
      v30 = [arrays objectAtIndexedSubscript:0];
      v31 = MEMORY[0x277CD73D8];
      v32 = *(v30 + *MEMORY[0x277CD73D8] + 3) & 0xF;
      v194[3] = v117;
      v194[2] = v135;
      v194[1] = v154;
      v194[0] = v167;
      v26 = *(v194 + v32);
      v33 = ([arrays objectAtIndexedSubscript:0] + *v28);
      v155 = v33[1];
      v168 = *v33;
      v118 = v33[3];
      v136 = v33[2];
      v34 = *([arrays objectAtIndexedSubscript:0] + *v31 + 2) & 0xF;
      v193[3] = v118;
      v193[2] = v136;
      v193[1] = v155;
      v193[0] = v168;
      v20 = *(v193 + v34);
      v35 = ([arrays objectAtIndexedSubscript:0] + *v28);
      v156 = v35[1];
      v169 = *v35;
      v119 = v35[3];
      v137 = v35[2];
      v36 = *([arrays objectAtIndexedSubscript:0] + *v31 + 1) & 0xF;
      v192[3] = v119;
      v192[2] = v137;
      v192[1] = v156;
      v192[0] = v169;
      v23 = *(v192 + v36);
      v37 = ([arrays objectAtIndexedSubscript:0] + *v28);
      v157 = v37[1];
      v170 = *v37;
      v120 = v37[3];
      v138 = v37[2];
      v38 = *([arrays objectAtIndexedSubscript:0] + *v31);
      v191[3] = v120;
      v191[2] = v138;
      v191[1] = v157;
      v191[0] = v170;
      v17 = *(v191 + (v38 & 0xF));
    }

    else if (v10 == 1)
    {
      v11 = [arrays objectAtIndexedSubscript:0];
      v12 = MEMORY[0x277CD7410];
      v13 = (v11 + *MEMORY[0x277CD7410]);
      v150 = v13[1];
      v163 = *v13;
      v113 = v13[3];
      v131 = v13[2];
      v14 = [arrays objectAtIndexedSubscript:0];
      v15 = MEMORY[0x277CD73D8];
      v16 = *(v14 + *MEMORY[0x277CD73D8] + 3) & 0xF;
      v186[2] = v131;
      v186[3] = v113;
      v186[0] = v163;
      v186[1] = v150;
      v17 = *(v186 + v16);
      v18 = ([arrays objectAtIndexedSubscript:0] + *v12);
      v151 = v18[1];
      v164 = *v18;
      v114 = v18[3];
      v132 = v18[2];
      v19 = *([arrays objectAtIndexedSubscript:0] + *v15 + 2) & 0xF;
      v185[2] = v132;
      v185[3] = v114;
      v185[0] = v164;
      v185[1] = v151;
      v20 = *(v185 + v19);
      v21 = ([arrays objectAtIndexedSubscript:0] + *v12);
      v152 = v21[1];
      v165 = *v21;
      v115 = v21[3];
      v133 = v21[2];
      v22 = *([arrays objectAtIndexedSubscript:0] + *v15 + 1) & 0xF;
      v184[2] = v133;
      v184[3] = v115;
      v184[0] = v165;
      v184[1] = v152;
      v23 = *(v184 + v22);
      v24 = ([arrays objectAtIndexedSubscript:0] + *v12);
      v153 = v24[1];
      v166 = *v24;
      v116 = v24[3];
      v134 = v24[2];
      v25 = *([arrays objectAtIndexedSubscript:0] + *v15);
      v183[2] = v134;
      v183[3] = v116;
      v183[0] = v166;
      v183[1] = v153;
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
    v158 = v41[1];
    v171 = *v41;
    v121 = v41[3];
    v139 = v41[2];
    v42 = [arrays objectAtIndexedSubscript:0];
    v43 = MEMORY[0x277CD73D8];
    v44 = *(v42 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v190[3] = v121;
    v190[2] = v139;
    v190[1] = v158;
    v190[0] = v171;
    v17 = *(v190 + v44);
    v45 = ([arrays objectAtIndexedSubscript:0] + *v40);
    v159 = v45[1];
    v172 = *v45;
    v122 = v45[3];
    v140 = v45[2];
    v46 = *([arrays objectAtIndexedSubscript:0] + *v43 + 2) & 0xF;
    v189[3] = v122;
    v189[2] = v140;
    v189[0] = v172;
    v189[1] = v159;
    v26 = *(v189 + v46);
    v47 = ([arrays objectAtIndexedSubscript:0] + *v40);
    v160 = v47[1];
    v173 = *v47;
    v123 = v47[3];
    v141 = v47[2];
    v48 = *([arrays objectAtIndexedSubscript:0] + *v43 + 1) & 0xF;
    v188[2] = v141;
    v188[3] = v123;
    v188[0] = v173;
    v188[1] = v160;
    v20 = *(v188 + v48);
    v49 = ([arrays objectAtIndexedSubscript:0] + *v40);
    v161 = v49[1];
    v174 = *v49;
    v124 = v49[3];
    v142 = v49[2];
    v50 = *([arrays objectAtIndexedSubscript:0] + *v43);
    v187[2] = v142;
    v187[3] = v124;
    v187[0] = v174;
    v187[1] = v161;
    v23 = *(v187 + (v50 & 0xF));
  }

  v175 = v23;
  kernelCopy = kernel;
  v162 = v17;
  v51 = *(kernel + 57);
  if (v51 == 1)
  {
    v65 = [arrays objectAtIndexedSubscript:1];
    v66 = MEMORY[0x277CD7410];
    v67 = (v65 + *MEMORY[0x277CD7410]);
    v128 = v67[1];
    v146 = *v67;
    v104 = v67[3];
    v110 = v67[2];
    v68 = [arrays objectAtIndexedSubscript:1];
    v69 = MEMORY[0x277CD73D8];
    v70 = *(v68 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v182[2] = v110;
    v182[3] = v104;
    v182[0] = v146;
    v182[1] = v128;
    v64 = *(v182 + v70);
    v71 = ([arrays objectAtIndexedSubscript:1] + *v66);
    v129 = v71[1];
    v147 = *v71;
    v105 = v71[3];
    v111 = v71[2];
    v72 = *([arrays objectAtIndexedSubscript:1] + *v69 + 1) & 0xF;
    v181[2] = v111;
    v181[3] = v105;
    v181[0] = v147;
    v181[1] = v129;
    v58 = *(v181 + v72);
    v73 = ([arrays objectAtIndexedSubscript:1] + *v66);
    v130 = v73[1];
    v148 = *v73;
    v106 = v73[3];
    v112 = v73[2];
    v74 = *([arrays objectAtIndexedSubscript:1] + *v69);
    v180[2] = v112;
    v180[3] = v106;
    v180[0] = v148;
    v180[1] = v130;
    v61 = *(v180 + (v74 & 0xF));
  }

  else if (v51)
  {
    v58 = 0;
    v61 = 0;
    v64 = 0;
  }

  else
  {
    v52 = [arrays objectAtIndexedSubscript:1];
    v53 = MEMORY[0x277CD7410];
    v54 = (v52 + *MEMORY[0x277CD7410]);
    v125 = v54[1];
    v143 = *v54;
    v101 = v54[3];
    v107 = v54[2];
    v55 = [arrays objectAtIndexedSubscript:1];
    v56 = MEMORY[0x277CD73D8];
    v57 = *(v55 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v179[2] = v107;
    v179[3] = v101;
    v179[0] = v143;
    v179[1] = v125;
    v58 = *(v179 + v57);
    v59 = ([arrays objectAtIndexedSubscript:1] + *v53);
    v126 = v59[1];
    v144 = *v59;
    v102 = v59[3];
    v108 = v59[2];
    v60 = *([arrays objectAtIndexedSubscript:1] + *v56 + 2) & 0xF;
    v178[2] = v108;
    v178[3] = v102;
    v178[0] = v144;
    v178[1] = v126;
    v61 = *(v178 + v60);
    v62 = ([arrays objectAtIndexedSubscript:1] + *v53);
    v127 = v62[1];
    v145 = *v62;
    v103 = v62[3];
    v109 = v62[2];
    v63 = *([arrays objectAtIndexedSubscript:1] + *v56);
    v177[2] = v109;
    v177[3] = v103;
    v177[0] = v145;
    v177[1] = v127;
    v64 = *(v177 + (v63 & 0xF));
  }

  v75 = v64;
  v76 = v61;
  v77 = v58;
  v78 = v26 * v58 * v61;
  v79 = v20;
  v80 = v20 * v162 * v175;
  v81 = (v80 * v75 * v78);
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
  MPSKernel_LogInfo(kernelCopy, 4uLL, "Convolution2DGradientWithWeights: N=%lu, C=%lu, H=%lu, W=%lu, kH=%lu, kW=%lu, O=%lu, matrixM=%lu, matrixN=%lu, matrixK=%lu, A Datatype: %s, B Datatype: %s C Datatype: %s\t", v162, v26, v79, v175, v77, v76, v75, v75, v78, v80, v90, v91, v92);
  [object float16Ops];
  v94 = v93;
  [object float32Ops];
  v96 = v95;
  [object deviceMemoryBytesRead];
  v98 = v97;
  [object deviceMemoryBytesWrite];
  MPSKernel_LogInfo(kernelCopy, 4uLL, "Convolution2DGradientWithWeights: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v94, v96, v98, v99, v89);
  return object;
}

- (void)dealloc
{
  free(self->_autoTuningParams);
  v3.receiver = self;
  v3.super_class = MPSNDArrayConvolution2DGradientWithWeights;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end