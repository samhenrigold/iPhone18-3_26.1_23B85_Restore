@interface MPSNDArrayMultiaryGradientKernel
- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArrays:(NSArray *)sources sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state;
- (MPSNDArrayMultiaryGradientKernel)initWithCoder:(NSCoder *)coder device:(id)device;
- (MPSNDArrayMultiaryGradientKernel)initWithDevice:(id)device sourceCount:(NSUInteger)count sourceGradientIndex:(NSUInteger)sourceGradientIndex;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeToCommandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array kernelDAGObject:(id)object;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array kernelDAGObject:(id)object;
- (void)encodeToMPSCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array kernelDAGObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayMultiaryGradientKernel

- (MPSNDArrayMultiaryGradientKernel)initWithDevice:(id)device sourceCount:(NSUInteger)count sourceGradientIndex:(NSUInteger)sourceGradientIndex
{
  self->_sourceGradientIndex = sourceGradientIndex;
  v6.receiver = self;
  v6.super_class = MPSNDArrayMultiaryGradientKernel;
  return [(MPSNDArrayMultiaryBase *)&v6 initWithDevice:device sourceCount:count];
}

- (MPSNDArrayMultiaryGradientKernel)initWithCoder:(NSCoder *)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayMultiaryGradientKernel;
  result = [(MPSNDArrayMultiaryBase *)&v8 initWithCoder:coder device:device];
  if (result)
  {
    v6 = result;
    v7 = [(NSCoder *)coder decodeInt64ForKey:@"MPSNDArrayMath.sourceGradient"];
    result = v6;
    v6->_sourceGradientIndex = v7;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMultiaryGradientKernel;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeInt64:self->_sourceGradientIndex forKey:@"MPSNDArrayMath.sourceGradient"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayMultiaryGradientKernel;
  result = [(MPSNDArrayMultiaryBase *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 17) = self->_sourceGradientIndex;
  }

  return result;
}

- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArrays:(NSArray *)sources sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state
{
  v11 = [(MPSNDArrayAllocator *)self->super._destinationArrayAllocator arrayForCommandBuffer:cmdBuf arrayDescriptor:[(MPSNDArrayMultiaryBase *)self destinationArrayDescriptorForSourceArrays:sources sourceState:state] kernel:self];
  v12 = v11;
  if (*(&self->super.super.super.isa + *MEMORY[0x277CD7378]))
  {
    if (!v11)
    {
      return v12;
    }

LABEL_6:
    [(MPSNDArrayMultiaryGradientKernel *)self encodeToCommandBuffer:cmdBuf sourceArrays:sources sourceGradient:gradient gradientState:state destinationArray:v11];
    return v12;
  }

  if (v11)
  {
    goto LABEL_6;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v13 = objc_opt_class();
    NSStringFromClass(v13);
    MTLReportFailure();
  }

  return v12;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array kernelDAGObject:(id)object
{
  v15 = objc_alloc(MEMORY[0x277CD7210]);
  if (encoder)
  {
    v16 = [v15 initWithComputeCommandEncoder:encoder];
  }

  else
  {
    v16 = [v15 initWithCommandBuffer:buffer withDispatchType:0];
  }

  v17 = v16;
  [(MPSNDArrayMultiaryGradientKernel *)self encodeToMPSCommandEncoder:v16 commandBuffer:buffer sourceArrays:arrays sourceGradient:gradient gradientState:0 destinationArray:array kernelDAGObject:object];
}

- (void)encodeToMPSCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array kernelDAGObject:(id)object
{
  gradientCopy3 = state;
  v191 = *MEMORY[0x277D85DE8];
  v169 = 0x2B2B032C2B2B0328;
  v170 = 0u;
  v171 = 0u;
  kdebug_trace();
  [(MPSNDArrayMultiaryBase *)self kernelDAGObjectSetup:&object sourceArrays:arrays sourceGradient:gradient destination:array];
  v15 = [(MPSNDArrayMultiaryBase *)self kernelDimensionalityForSourceArrays:arrays];
  [(MPSNDArrayMultiaryBase *)self setIndexingArithmaticTypeMask:&object sourceArrays:arrays sourceGradient:gradient destination:array tileDimensions:v15];
  numberOfDimensions = [array numberOfDimensions];
  v16 = [(MPSNDArrayMultiaryBase *)self maxSupportedDimensionsForSourceArrays:arrays destinationArray:array];
  for (i = 0; i < [arrays count]; ++i)
  {
    v18 = [objc_msgSend(arrays objectAtIndexedSubscript:{i), "numberOfDimensions"}];
    v19 = numberOfDimensions;
    if (numberOfDimensions <= v18)
    {
      v19 = v18;
    }

    numberOfDimensions = v19;
  }

  if (numberOfDimensions > v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v148 = v15;
  v20 = [arrays count];
  v145[1] = v145;
  v21 = v20 + 1;
  v28 = MEMORY[0x28223BE20](v20, v22, v23, v24, v25, v26, v27);
  v36 = v145 - v35;
  selfCopy = self;
  encoderCopy = encoder;
  bufferCopy = buffer;
  if (v37)
  {
    v38 = &v172;
  }

  else
  {
    gradientCopy = gradient;
    *&v40 = 0x100000001;
    *(&v40 + 1) = 0x100000001;
    v41 = v145 - v35;
    do
    {
      *(v41 + 2) = v40;
      *(v41 + 3) = v40;
      *v41 = v40;
      *(v41 + 1) = v40;
      *(v41 + 8) = 0;
      v41 += 80;
    }

    while (v41 != &v36[80 * v21]);
    MEMORY[0x28223BE20](v28, v29, v30, v31, v32, v33, v34);
    v38 = v145 - v42;
    v43 = 0;
    v44 = &v145[8] - v42;
    v45 = (v36 + 64);
    do
    {
      if (selfCopy)
      {
        objc_msgSend_stridesAtSourceIndex_(selfCopy);
        v49 = v167;
        v48 = v168;
        v50 = v165;
        v51 = v166;
      }

      else
      {
        v50 = 0uLL;
        v51 = 0uLL;
        v49 = 0uLL;
        v48 = 0uLL;
      }

      *(v45 - 4) = v50;
      *(v45 - 3) = v51;
      *(v45 - 2) = v49;
      *(v45 - 1) = v48;
      if (v43 >= [arrays count])
      {
        v46 = 0;
      }

      else
      {
        v46 = [objc_msgSend(arrays objectAtIndexedSubscript:{v43), "offset"}];
      }

      v44[8] = 0;
      *&v47 = 0x100000001;
      *(&v47 + 1) = 0x100000001;
      *(v44 - 2) = v47;
      *(v44 - 1) = v47;
      *(v44 - 4) = v47;
      *(v44 - 3) = v47;
      ++v43;
      *v44 = 0;
      v44 += 80;
      *v45 = v46;
      v45 += 10;
    }

    while (v21 != v43);
    gradient = gradientCopy;
    self = selfCopy;
  }

  v174[0] = self->super._srcCount;
  v174[1] = v36;
  v174[2] = arrays;
  v174[3] = gradientCopy3;
  *&v52 = 0x100000001;
  *(&v52 + 1) = 0x100000001;
  v178 = v52;
  v177 = v52;
  v176 = v52;
  v175 = v52;
  gradientCopy2 = gradient;
  v184 = v52;
  v183 = v52;
  v182 = v52;
  v181 = v52;
  offset = [array offset];
  v186 = 0;
  arrayCopy = array;
  objectCopy = object;
  offset2 = [gradient offset];
  gradientCopy3 = gradient;
  v179 = offset2;
  v188 = v38;
  v189 = 0;
  if (*(&self->super.super.super.isa + *MEMORY[0x277CD7378]))
  {
    goto LABEL_74;
  }

  v54 = selfCopy;
  v55 = [(MPSNDArrayMultiaryBase *)selfCopy maxSupportedArraySizeForIsDestination:1];
  v56 = [(MPSNDArrayMultiaryBase *)v54 maxSupportedArraySizeForIsDestination:0];
  v57 = gradientCopy3;
  v58 = v56;
  v59 = MEMORY[0x277CD73C8];
  if (array)
  {
    v60 = *(array + *MEMORY[0x277CD73F0]);
    if (v60)
    {
      v61 = 0;
      v62 = 0;
      v63 = (array + *MEMORY[0x277CD7428]);
      v65 = v63[6];
      v64 = v63[7];
      v67 = v63[4];
      v66 = v63[5];
      v69 = v63[2];
      v68 = v63[3];
      v71 = *v63;
      v70 = v63[1];
      v72 = *(array + *MEMORY[0x277CD73D8]);
      v73 = (array + *MEMORY[0x277CD7410]);
      v75 = v73[2];
      v74 = v73[3];
      v77 = *v73;
      v76 = v73[1];
      do
      {
        v158 = v72;
        v160[0] = v71;
        v160[1] = v70;
        v160[2] = v69;
        v160[3] = v68;
        v160[4] = v67;
        v160[5] = v66;
        v160[6] = v65;
        v160[7] = v64;
        v78 = *(&v158 | v62 & 0xF) & 0xF;
        v79 = *(v160 + v78);
        v159[0] = v77;
        v159[1] = v76;
        v159[2] = v75;
        v159[3] = v74;
        v80 = v79 * *(v159 + v78);
        if (v80 > v61)
        {
          v61 = v80;
        }

        ++v62;
      }

      while (v60 != v62);
      v81 = *(array + *MEMORY[0x277CD73C8]);
      v82 = v81;
      if (v81 < 8u)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v61 = 0;
      v81 = *(array + *MEMORY[0x277CD73C8]);
      v82 = v81;
      if (v81 < 8u)
      {
LABEL_28:
        if (v82)
        {
          v83 = (v81 + 7) / v81;
        }

        else
        {
          v83 = 1;
        }

        v84 = (v61 + v83 - 1) / v83;
LABEL_34:
        if (v84 > v55 && MTLReportFailureTypeEnabled())
        {
          v143 = objc_opt_class();
          NSStringFromClass(v143);
          [array debugDescription];
          MTLReportFailure();
        }

        goto LABEL_35;
      }
    }

    v84 = v61 * (v81 >> 3);
    goto LABEL_34;
  }

LABEL_35:
  if (!v57)
  {
    goto LABEL_49;
  }

  v85 = *(&v57->super.super.isa + *MEMORY[0x277CD73F0]);
  if (v85)
  {
    v86 = 0;
    v87 = 0;
    v88 = v57 + *MEMORY[0x277CD7428];
    v90 = *(v88 + 6);
    v89 = *(v88 + 7);
    v92 = *(v88 + 4);
    v91 = *(v88 + 5);
    v94 = *(v88 + 2);
    v93 = *(v88 + 3);
    v96 = *v88;
    v95 = *(v88 + 1);
    v97 = *(&v57->super.super.isa + *MEMORY[0x277CD73D8]);
    v98 = v57 + *MEMORY[0x277CD7410];
    v100 = *(v98 + 2);
    v99 = *(v98 + 3);
    v102 = *v98;
    v101 = *(v98 + 1);
    do
    {
      v155 = v97;
      v157[0] = v96;
      v157[1] = v95;
      v157[2] = v94;
      v157[3] = v93;
      v157[4] = v92;
      v157[5] = v91;
      v157[6] = v90;
      v157[7] = v89;
      v103 = *(&v155 | v87 & 0xF) & 0xF;
      v104 = *(v157 + v103);
      v156[0] = v102;
      v156[1] = v101;
      v156[2] = v100;
      v156[3] = v99;
      v105 = v104 * *(v156 + v103);
      if (v105 > v86)
      {
        v86 = v105;
      }

      ++v87;
    }

    while (v85 != v87);
    v106 = *(&v57->super.super.isa + *v59);
    v107 = v106;
    if (v106 < 8u)
    {
      goto LABEL_42;
    }

LABEL_45:
    v109 = v86 * (v106 >> 3);
    goto LABEL_48;
  }

  v86 = 0;
  v106 = *(&v57->super.super.isa + *v59);
  v107 = v106;
  if (v106 >= 8u)
  {
    goto LABEL_45;
  }

LABEL_42:
  if (v107)
  {
    v108 = (v106 + 7) / v106;
  }

  else
  {
    v108 = 1;
  }

  v109 = (v86 + v108 - 1) / v108;
LABEL_48:
  if (v109 > v58 && MTLReportFailureTypeEnabled())
  {
    v144 = objc_opt_class();
    NSStringFromClass(v144);
    [(MPSTemporaryNDArray *)v57 debugDescription];
    MTLReportFailure();
  }

LABEL_49:
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v110 = [arrays countByEnumeratingWithState:&v161 objects:v173 count:16];
  if (v110)
  {
    v111 = *v162;
    do
    {
      v112 = 0;
      do
      {
        if (*v162 != v111)
        {
          objc_enumerationMutation(arrays);
        }

        v113 = *(*(&v161 + 1) + 8 * v112);
        if (v113)
        {
          v114 = *&v113[*MEMORY[0x277CD73F0]];
          if (v114)
          {
            v115 = 0;
            v116 = 0;
            v117 = &v113[*MEMORY[0x277CD7428]];
            v119 = *(v117 + 6);
            v118 = *(v117 + 7);
            v121 = *(v117 + 4);
            v120 = *(v117 + 5);
            v123 = *(v117 + 2);
            v122 = *(v117 + 3);
            v125 = *v117;
            v124 = *(v117 + 1);
            v126 = *&v113[*MEMORY[0x277CD73D8]];
            v127 = &v113[*MEMORY[0x277CD7410]];
            v129 = *(v127 + 2);
            v128 = *(v127 + 3);
            v131 = *v127;
            v130 = *(v127 + 1);
            do
            {
              v152 = v126;
              v154[0] = v125;
              v154[1] = v124;
              v154[2] = v123;
              v154[3] = v122;
              v154[4] = v121;
              v154[5] = v120;
              v154[6] = v119;
              v154[7] = v118;
              v132 = *(&v152 | v116 & 0xF) & 0xF;
              v133 = *(v154 + v132);
              v153[0] = v131;
              v153[1] = v130;
              v153[2] = v129;
              v153[3] = v128;
              v134 = v133 * *(v153 + v132);
              if (v134 > v115)
              {
                v115 = v134;
              }

              ++v116;
            }

            while (v114 != v116);
            v135 = *&v113[*v59];
            v136 = v135;
            if (v135 < 8u)
            {
              goto LABEL_65;
            }

LABEL_52:
            if (v115 * (v135 >> 3) <= v58)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v115 = 0;
            v135 = *&v113[*v59];
            v136 = v135;
            if (v135 >= 8u)
            {
              goto LABEL_52;
            }

LABEL_65:
            if (v136)
            {
              v137 = (v135 + 7) / v135;
              if ((v115 + v137 - 1) / v137 <= v58)
              {
                goto LABEL_69;
              }
            }

            else if (v115 <= v58)
            {
              goto LABEL_69;
            }
          }

          if (MTLReportFailureTypeEnabled())
          {
            v138 = objc_opt_class();
            v145[0] = NSStringFromClass(v138);
            [v113 debugDescription];
            MTLReportFailure();
          }
        }

LABEL_69:
        ++v112;
      }

      while (v112 != v110);
      v139 = [arrays countByEnumeratingWithState:&v161 objects:v173 count:16];
      v110 = v139;
    }

    while (v139);
  }

LABEL_74:
  CallNDArrayGradientEncode(selfCopy, encoderCopy, bufferCopy, numberOfDimensions - 1, v148, v174, 0);
  v140 = gradientCopy3;
  for (j = 0; j < [arrays count]; ++j)
  {
    v142 = [arrays objectAtIndexedSubscript:j];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      MPSDecrementReadCount(v142);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    MPSDecrementReadCount(v140);
  }

  kdebug_trace();
}

- (void)encodeToCommandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array kernelDAGObject:(id)object
{
  v15 = [objc_alloc(MEMORY[0x277CD7210]) initWithCommandBuffer:buffer withDispatchType:0];
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v16 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v16 || (v17 = objc_opt_class(), v18 = NSStringFromClass(v17), [(MPSKernel *)self setLabel:v18], (v16 = v18) != 0))
    {
      [v15 setLabel:v16];
    }
  }

  [(MPSNDArrayMultiaryGradientKernel *)self encodeToMPSCommandEncoder:v15 commandBuffer:buffer sourceArrays:arrays sourceGradient:gradient gradientState:state destinationArray:array kernelDAGObject:object];
  [v15 endEncoding];
}

@end