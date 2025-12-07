@interface MPSMatrixCopy
- (MPSMatrixCopy)copyWithZone:(_NSZone *)zone device:(id)device;
- (MPSMatrixCopy)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixCopy)initWithDevice:(id)device copyRows:(NSUInteger)copyRows copyColumns:(NSUInteger)copyColumns sourcesAreTransposed:(BOOL)sourcesAreTransposed destinationsAreTransposed:(BOOL)destinationsAreTransposed;
- (id)debugDescription;
- (void)encodeToCommandBuffer:(id)buffer encoder:(id)encoder copyDescriptor:(id)descriptor rowPermuteIndices:(id)indices rowPermuteOffset:(unint64_t)offset columnPermuteIndices:(id)permuteIndices columnPermuteOffset:(unint64_t)permuteOffset;
- (void)encodeToCommandBuffer:(id)commandBuffer copyDescriptor:(MPSMatrixCopyDescriptor *)copyDescriptor rowPermuteIndices:(MPSVector *)rowPermuteIndices rowPermuteOffset:(NSUInteger)rowPermuteOffset columnPermuteIndices:(MPSVector *)columnPermuteIndices columnPermuteOffset:(NSUInteger)columnPermuteOffset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSMatrixCopy

- (MPSMatrixCopy)initWithDevice:(id)device copyRows:(NSUInteger)copyRows copyColumns:(NSUInteger)copyColumns sourcesAreTransposed:(BOOL)sourcesAreTransposed destinationsAreTransposed:(BOOL)destinationsAreTransposed
{
  if (*(&self->super.super.isa + *MEMORY[0x277CD7378]))
  {
    goto LABEL_4;
  }

  if (!copyRows)
  {
    selfCopy2 = self;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (!copyColumns)
  {
    selfCopy2 = self;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_10:
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      MTLReportFailure();
    }

LABEL_11:

    return 0;
  }

LABEL_4:
  v14.receiver = self;
  v14.super_class = MPSMatrixCopy;
  result = [(MPSKernel *)&v14 initWithDevice:device];
  if (result)
  {
    result->_copyColumns = copyColumns;
    result->_copyRows = copyRows;
    result->_sourcesAreTransposed = sourcesAreTransposed;
    result->_destinationsAreTransposed = destinationsAreTransposed;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer copyDescriptor:(MPSMatrixCopyDescriptor *)copyDescriptor rowPermuteIndices:(MPSVector *)rowPermuteIndices rowPermuteOffset:(NSUInteger)rowPermuteOffset columnPermuteIndices:(MPSVector *)columnPermuteIndices columnPermuteOffset:(NSUInteger)columnPermuteOffset
{
  v15 = objc_msgSend_filledCount(copyDescriptor, a2, commandBuffer);
  if (v15)
  {
    v16 = v15;
    v17 = objc_alloc(MEMORY[0x277CD7210]);
    v21 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v17, v18, commandBuffer, 0);
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v20 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v20 || (v22 = objc_opt_class(), v23 = NSStringFromClass(v22), objc_msgSend_setLabel_(self, v24, v23), (v20 = v23) != 0))
      {
        objc_msgSend_setLabel_(v21, v19, v20);
      }
    }

    v25 = objc_msgSend_sourceMatrices(copyDescriptor, v19, v20);
    objc_msgSend_encodeToCommandBuffer_encoder_copyDescriptor_rowPermuteIndices_rowPermuteOffset_columnPermuteIndices_columnPermuteOffset_(self, v26, commandBuffer, v21, copyDescriptor, rowPermuteIndices, rowPermuteOffset, columnPermuteIndices, columnPermuteOffset);
    v29 = MEMORY[0x277CD7388];
    do
    {
      v30 = *v25;
      if (*v25 && *(&v30[3].super.super.isa + *v29))
      {
        MPSDecrementReadCount(v30);
      }

      ++v25;
      --v16;
    }

    while (v16);
    v31 = MEMORY[0x277CD74A0];
    if (columnPermuteIndices && *(&columnPermuteIndices[3].super.isa + *MEMORY[0x277CD74A0]))
    {
      MPSDecrementReadCount(columnPermuteIndices);
    }

    if (rowPermuteIndices)
    {
      if (*(&rowPermuteIndices[3].super.isa + *v31))
      {
        MPSDecrementReadCount(rowPermuteIndices);
      }
    }

    objc_msgSend_endEncoding(v21, v27, v28);
  }
}

- (void)encodeToCommandBuffer:(id)buffer encoder:(id)encoder copyDescriptor:(id)descriptor rowPermuteIndices:(id)indices rowPermuteOffset:(unint64_t)offset columnPermuteIndices:(id)permuteIndices columnPermuteOffset:(unint64_t)permuteOffset
{
  v217 = *MEMORY[0x277D85DE8];
  v197 = objc_msgSend_filledCount(descriptor, a2, buffer);
  if (v197)
  {
    encoderCopy = encoder;
    v186 = objc_msgSend_sourceMatrices(descriptor, v14, v15);
    v193 = objc_msgSend_destinationMatrices(descriptor, v16, v17);
    v194 = objc_msgSend_cpuOffsetsVector(descriptor, v18, v19);
    selfCopy = self;
    indicesCopy = indices;
    permuteIndicesCopy = permuteIndices;
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
    {
      if (objc_msgSend_allocCount(descriptor, v20, v21) != v197 && MTLReportFailureTypeEnabled())
      {
        v164 = objc_opt_class();
        v168 = NSStringFromClass(v164);
        MTLReportFailure();
      }

      if (!buffer && MTLReportFailureTypeEnabled())
      {
        v165 = objc_opt_class();
        v168 = NSStringFromClass(v165);
        MTLReportFailure();
      }

      if (!v186 && MTLReportFailureTypeEnabled())
      {
        v166 = objc_opt_class();
        v168 = NSStringFromClass(v166);
        MTLReportFailure();
      }

      if (!v193 && MTLReportFailureTypeEnabled())
      {
        v167 = objc_opt_class();
        v168 = NSStringFromClass(v167);
        MTLReportFailure();
      }

      v22 = 0;
      v23 = (v194 + 8);
      do
      {
        if (v194)
        {
          v191 = *(v23 - 2);
          v24 = *v23;
          v189 = *(v23 - 1);
          v25 = v23[1];
        }

        else
        {
          v25 = 0;
          v24 = 0;
          v189 = 0;
          v191 = 0;
        }

        if (v197 == 1)
        {
          v26 = 0;
        }

        else
        {
          v26 = v22;
        }

        v27 = v186[v26];
        v28 = *(v193 + 8 * v26);
        v29 = objc_msgSend_columns(v28, v20, v21, v168);
        v32 = objc_msgSend_rows(v28, v30, v31);
        objc_msgSend_matrices(v28, v33, v34);
        if (selfCopy->_destinationsAreTransposed)
        {
          v37 = v24;
        }

        else
        {
          v37 = v25;
        }

        if (selfCopy->_destinationsAreTransposed)
        {
          v38 = v25;
        }

        else
        {
          v38 = v24;
        }

        destinationsAreTransposed = selfCopy->_destinationsAreTransposed;
        v40 = *(&selfCopy->super.super.isa + OBJC_IVAR___MPSMatrixCopy__copyColumns[destinationsAreTransposed]);
        v41 = !selfCopy->_destinationsAreTransposed;
        v42 = *(&selfCopy->super.super.isa + OBJC_IVAR___MPSMatrixCopy__copyColumns[v41]);
        v184 = v40;
        if (v37 + v40 > v29)
        {
          v56 = v42;
          v57 = MTLReportFailureTypeEnabled();
          v42 = v56;
          if (v57)
          {
            v58 = objc_opt_class();
            v169 = NSStringFromClass(v58);
            MTLReportFailure();
            v42 = v56;
          }
        }

        v187 = v42;
        if (v42 + v38 > v32 && MTLReportFailureTypeEnabled())
        {
          v59 = objc_opt_class();
          v169 = NSStringFromClass(v59);
          MTLReportFailure();
        }

        if (selfCopy->_sourcesAreTransposed)
        {
          v43 = v191;
        }

        else
        {
          v43 = v189;
        }

        if (selfCopy->_sourcesAreTransposed)
        {
          v44 = v189;
        }

        else
        {
          v44 = v191;
        }

        v45 = objc_msgSend_columns(v27, v35, v36, v169);
        v48 = objc_msgSend_rows(v27, v46, v47);
        objc_msgSend_matrices(v27, v49, v50);
        v51 = 1;
        sourcesAreTransposed = selfCopy->_sourcesAreTransposed;
        v53 = *(&selfCopy->super.super.isa + OBJC_IVAR___MPSMatrixCopy__copyColumns[sourcesAreTransposed]);
        if (selfCopy->_sourcesAreTransposed)
        {
          v51 = 0;
        }

        v54 = *(&selfCopy->super.super.isa + OBJC_IVAR___MPSMatrixCopy__copyColumns[v51]);
        if (v53 + v43 > v45 && MTLReportFailureTypeEnabled())
        {
          v60 = objc_opt_class();
          v168 = NSStringFromClass(v60);
          MTLReportFailure();
        }

        if (v54 + v44 > v48 && MTLReportFailureTypeEnabled())
        {
          v61 = objc_opt_class();
          v168 = NSStringFromClass(v61);
          MTLReportFailure();
        }

        if (permuteIndicesCopy && v184 + permuteOffset > objc_msgSend_length(permuteIndicesCopy, v20, v21) && MTLReportFailureTypeEnabled())
        {
          v62 = objc_opt_class();
          v168 = NSStringFromClass(v62);
          MTLReportFailure();
        }

        if (indicesCopy && v187 + offset > objc_msgSend_length(indicesCopy, v20, v21) && MTLReportFailureTypeEnabled())
        {
          v55 = objc_opt_class();
          v168 = NSStringFromClass(v55);
          MTLReportFailure();
        }

        ++v22;
        v23 += 4;
      }

      while (v197 != v22);
    }

    v172 = objc_msgSend_gpuOffsetsVector(descriptor, v20, v21, v168);
    v171 = objc_msgSend_gpuBufferOffset(descriptor, v63, v64);
    v65 = selfCopy->_destinationsAreTransposed;
    v66 = selfCopy->_sourcesAreTransposed;
    copyRows = selfCopy->_copyRows;
    copyColumns = selfCopy->_copyColumns;
    v205 = copyRows;
    v206 = objc_msgSend_matrices(*v186, v68, v69);
    v192 = v65;
    v207 = v65;
    v190 = v66;
    v208 = v66;
    if ((objc_msgSend_dataType(*v186, v70, v71) & 0xFFF8) == 0x20)
    {
      v74 = 2;
    }

    else
    {
      v74 = (objc_msgSend_dataType(*v186, v72, v73) & 0xFFF8) == 16;
    }

    v188 = v74;
    v75 = 0;
    v170 = 4 * offset;
    v76 = (v194 + 8);
    v77 = MEMORY[0x277CD7388];
    v78 = v197;
    do
    {
      v81 = 0;
      v216 = 0;
      v180 = v78 - 13;
      if (v78 >= 0xD)
      {
        v82 = 13;
      }

      else
      {
        v82 = v78;
      }

      if (v82 <= 1)
      {
        v82 = 1;
      }

      v177 = v78;
      v178 = 13 - v82;
      v83 = (13 - v82) & 0xFFFFFFFFFFFFFFFCLL;
      v176 = v82;
      v84 = &v214[v82 + 2];
      v196 = 8 * v82;
      v85 = &v211[v82 + 2];
      memset(v215, 0, sizeof(v215));
      v213 = 0;
      memset(v212, 0, sizeof(v212));
      v182 = v76;
      v185 = v75;
      v86 = v75;
      v87 = &v209;
      v88 = *MEMORY[0x277CD73B0];
      v89 = v186;
      do
      {
        if (v197 == 1)
        {
          v103 = 0;
        }

        else
        {
          v103 = v86;
        }

        v104 = v89[v103];
        v105 = *(v193 + 8 * v103);
        v106 = &v203[v81];
        v107 = *MEMORY[0x277CD73A0];
        v108 = *&v104[v107] >> v188;
        *v106 = *&v104[v88] >> v188;
        v106[1] = v108;
        v109 = *(v105 + v107) >> v188;
        v106[26] = *(v105 + v88) >> v188;
        v106[27] = v109;
        v110 = &v104[*v77];
        explicit = atomic_load_explicit(v110, memory_order_acquire);
        if (explicit)
        {
          v214[v81 / 8] = explicit;
          v112 = (v105 + *v77);
          v113 = atomic_load_explicit(v112, memory_order_acquire);
          if (v113)
          {
            goto LABEL_93;
          }
        }

        else
        {
          MPSAutoBuffer::AllocateBuffer(v110, 0);
          v77 = MEMORY[0x277CD7388];
          v89 = v186;
          v214[v81 / 8] = atomic_load_explicit(v110, memory_order_acquire);
          v112 = (v105 + *v77);
          v113 = atomic_load_explicit(v112, memory_order_acquire);
          if (v113)
          {
LABEL_93:
            v211[v81 / 8] = v113;
            v92 = v194;
            if (v194)
            {
              goto LABEL_70;
            }

            goto LABEL_97;
          }
        }

        MPSAutoBuffer::AllocateBuffer(v112, 0);
        v77 = MEMORY[0x277CD7388];
        v89 = v186;
        v211[v81 / 8] = atomic_load_explicit(v112, memory_order_acquire);
        v92 = v194;
        if (v194)
        {
LABEL_70:
          v90 = *(v76 - 2);
          v91 = *(v76 - 1);
          v92 = *v76;
          v93 = v76[1];
          goto LABEL_71;
        }

LABEL_97:
        v93 = 0;
        v91 = 0;
        v90 = 0;
LABEL_71:
        if (v190)
        {
          v94 = v90;
        }

        else
        {
          v94 = v91;
        }

        if (v190)
        {
          v90 = v91;
        }

        v95 = *MEMORY[0x277CD73A8];
        v96 = *MEMORY[0x277CD7398];
        v97 = *MEMORY[0x277CD73B0];
        *(v215 + v81) = *&v104[v95] + *&v104[v97] * v90 + v94 * (*&v104[v96] >> 3);
        if (v192)
        {
          v98 = v92;
        }

        else
        {
          v98 = v93;
        }

        if (v192)
        {
          v92 = v93;
        }

        v99 = *(v105 + *MEMORY[0x277CD7390]);
        if (v99 <= v98)
        {
          v100 = 0;
        }

        else
        {
          v100 = v99 - v98;
        }

        *v87 = v100;
        v101 = *(v105 + *MEMORY[0x277CD73B8]);
        if (v101 <= v92)
        {
          v102 = 0;
        }

        else
        {
          v102 = v101 - v92;
        }

        *(v212 + v81) = *(v105 + v95) + *(v105 + v97) * v92 + v98 * (*(v105 + v96) >> 3);
        v81 += 8;
        v87[13] = v102;
        ++v87;
        ++v86;
        v76 += 4;
        v88 = v97;
      }

      while (v196 != v81);
      v114 = v197 - v185;
      if (v197 - v185 >= 0xD)
      {
        v114 = 13;
      }

      v179 = v114;
      if (v177 <= 0xC)
      {
        bzero(v215 + v196, 104 - v196);
        bzero(v212 + v196, 104 - v196);
        v115 = v214[0];
        v116 = v211[0];
        if (v178 <= 3)
        {
          goto LABEL_105;
        }

        v176 += v178 & 0xFFFFFFFFFFFFFFFCLL;
        v117 = vdupq_n_s64(v214[0]);
        v118 = vdupq_n_s64(v211[0]);
        do
        {
          *(v84 - 1) = v117;
          *v84 = v117;
          v84 += 4;
          *(v85 - 1) = v118;
          *v85 = v118;
          v85 += 4;
          v83 -= 4;
        }

        while (v83);
        if (v178 != (v178 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_105:
          v119 = v176;
          do
          {
            v214[v119] = v115;
            v211[v119++] = v116;
          }

          while (v119 != 13);
        }
      }

      ComputeState = MPSLibrary::GetComputeState();
      objc_msgSend_setComputePipelineState_(encoderCopy, v121, ComputeState);
      v124 = objc_msgSend_threadExecutionWidth(ComputeState, v122, v123);
      if (v124 <= 1)
      {
        v125 = 1;
      }

      else
      {
        v125 = v124;
      }

      MPSLibrary::ReleaseComputeState();
      v127 = v205;
      v128 = copyColumns;
      if (v205 <= copyColumns)
      {
        v129 = 1;
      }

      else
      {
        v129 = v125;
      }

      if (v205 > copyColumns)
      {
        v130 = 1;
      }

      else
      {
        v130 = v125;
      }

      objc_msgSend_setBuffers_offsets_withRange_(encoderCopy, v126, v214, v215, 1, 13);
      objc_msgSend_setBuffers_offsets_withRange_(encoderCopy, v131, v211, v212, 14, 13);
      if (!v172)
      {
        objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v132, v214[0], 0, 27);
        v210 = 0;
        if (indicesCopy)
        {
          goto LABEL_123;
        }

LABEL_129:
        objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v140, v214[0], 0, 28);
        v151 = v185;
        if (!permuteIndicesCopy)
        {
          goto LABEL_62;
        }

        goto LABEL_130;
      }

      v133 = v129;
      v134 = *MEMORY[0x277CD74A0];
      v135 = (v172 + v134);
      v136 = atomic_load_explicit((v172 + v134), memory_order_acquire);
      if (!v136)
      {
        MPSAutoBuffer::AllocateBuffer((v172 + v134), 0);
        v136 = atomic_load_explicit(v135, memory_order_acquire);
      }

      objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v132, v136, v171 + 16 * v185, 27);
      v210 = 1;
      v139 = objc_msgSend_retainedReferences(buffer, v137, v138);
      v129 = v133;
      if (!v185 && (v139 & 1) == 0)
      {
        v142 = v136;
        v202[0] = MEMORY[0x277D85DD0];
        v202[1] = 3221225472;
        v202[2] = sub_2399DB2D8;
        v202[3] = &unk_278AFD238;
        v202[4] = v136;
        objc_msgSend_addCompletedHandler_(buffer, v143, v202);
      }

      if (!indicesCopy)
      {
        goto LABEL_129;
      }

LABEL_123:
      v144 = objc_msgSend_data(indicesCopy, v140, v141);
      objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v145, v144, v170, 28);
      v148 = objc_msgSend_retainedReferences(buffer, v146, v147);
      v151 = v185;
      if (!v185 && (v148 & 1) == 0)
      {
        v152 = objc_msgSend_data(indicesCopy, v149, v150);
        v153 = v152;
        v201[0] = MEMORY[0x277D85DD0];
        v201[1] = 3221225472;
        v201[2] = sub_2399DB2E0;
        v201[3] = &unk_278AFD238;
        v201[4] = v152;
        objc_msgSend_addCompletedHandler_(buffer, v154, v201);
      }

      if (!permuteIndicesCopy)
      {
LABEL_62:
        objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v149, v214[0], 0, 29);
        goto LABEL_63;
      }

LABEL_130:
      v155 = objc_msgSend_data(permuteIndicesCopy, v149, v150);
      objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v156, v155, 4 * permuteOffset, 29);
      v159 = objc_msgSend_retainedReferences(buffer, v157, v158);
      if (!v151 && (v159 & 1) == 0)
      {
        v161 = objc_msgSend_data(permuteIndicesCopy, v79, v160);
        v162 = v161;
        v200[0] = MEMORY[0x277D85DD0];
        v200[1] = 3221225472;
        v200[2] = sub_2399DB2E8;
        v200[3] = &unk_278AFD238;
        v200[4] = v161;
        objc_msgSend_addCompletedHandler_(buffer, v163, v200);
      }

LABEL_63:
      objc_msgSend_setBytes_length_atIndex_(encoderCopy, v79, v203, 332, 0);
      v199[0] = (v128 + v130 - 1) / v130;
      v199[1] = (v127 + v129 - 1) / v129;
      v199[2] = v179;
      v198[0] = v130;
      v198[1] = v129;
      v198[2] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoderCopy, v80, v199, v198);
      v75 = v151 + 13;
      v78 = v180;
      v76 = v182 + 52;
      v77 = MEMORY[0x277CD7388];
    }

    while (v75 < v197);
  }
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358]) = *(&self->super.super.isa + *MEMORY[0x277CD7358]) | 0x10100;
  v9.receiver = self;
  v9.super_class = MPSMatrixCopy;
  [(MPSKernel *)&v9 encodeWithCoder:?];
  objc_msgSend_encodeBool_forKey_(coder, v5, self->_sourcesAreTransposed, @"MPSMatrixLookUpAndCopy.transposeSource");
  objc_msgSend_encodeBool_forKey_(coder, v6, self->_destinationsAreTransposed, @"MPSMatrixLookUpAndCopy.transposeDestination");
  objc_msgSend_encodeInt64_forKey_(coder, v7, self->_copyRows, @"MPSMatrixLookUpAndCopy.copyRows");
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->_copyColumns, @"MPSMatrixLookUpAndCopy.copyColumns");
}

- (MPSMatrixCopy)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7358]) & 0xFFFF0000) == 0x10000)
  {
    v15.receiver = self;
    v15.super_class = MPSMatrixCopy;
    result = [(MPSKernel *)&v15 initWithCoder:aDecoder device:device];
    if (result)
    {
      v7 = result;
      result->_sourcesAreTransposed = objc_msgSend_decodeBoolForKey_(aDecoder, v6, @"MPSMatrixLookUpAndCopy.transposeSource");
      v7->_destinationsAreTransposed = objc_msgSend_decodeBoolForKey_(aDecoder, v8, @"MPSMatrixLookUpAndCopy.transposeDestination");
      v7->_copyRows = objc_msgSend_decodeInt64ForKey_(aDecoder, v9, @"MPSMatrixLookUpAndCopy.copyRows");
      v11 = objc_msgSend_decodeInt64ForKey_(aDecoder, v10, @"MPSMatrixLookUpAndCopy.copyColumns");
      result = v7;
      v7->_copyColumns = v11;
    }
  }

  else
  {
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7358]) & 0xFF00) != 0x100)
    {
      selfCopy = self;
      v13 = MTLReportFailureTypeEnabled();
      self = selfCopy;
      if (v13)
      {
        v14 = objc_opt_class();
        NSStringFromClass(v14);
        MTLReportFailure();
        self = selfCopy;
      }
    }

    return 0;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MPSMatrixCopy;
  v4 = [(MPSKernel *)&v9 debugDescription];
  v6 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
  if (!v6)
  {
    v6 = &stru_284CAA7D8;
  }

  if (self->_destinationsAreTransposed)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_sourcesAreTransposed)
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@ %@\n\transposeDestination (%@) transposeSource (%@) subMatrixRows: %ld \n\tsubMatrixColumns: %ld \n\tdevice: %p", v4, v6, v7, @"YES", self->_copyRows, self->_copyColumns, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@ %@\n\transposeDestination (%@) transposeSource (%@) subMatrixRows: %ld \n\tsubMatrixColumns: %ld \n\tdevice: %p", v4, v6, v7, @"NO", self->_copyRows, self->_copyColumns, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
  }
}

- (MPSMatrixCopy)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSMatrixCopy;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    result->_destinationsAreTransposed = self->_destinationsAreTransposed;
    result->_sourcesAreTransposed = self->_sourcesAreTransposed;
    result->_copyColumns = self->_copyColumns;
    result->_copyRows = self->_copyRows;
  }

  return result;
}

@end