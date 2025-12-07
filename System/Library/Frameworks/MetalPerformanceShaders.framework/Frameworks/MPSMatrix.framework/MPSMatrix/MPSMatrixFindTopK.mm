@interface MPSMatrixFindTopK
- (MPSMatrixFindTopK)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSMatrixFindTopK)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixFindTopK)initWithDevice:(id)device numberOfTopKValues:(NSUInteger)numberOfTopKValues;
- (id)debugDescription;
- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix resultIndexMatrix:(MPSMatrix *)resultIndexMatrix resultValueMatrix:(MPSMatrix *)resultValueMatrix;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSMatrixFindTopK

- (MPSMatrixFindTopK)initWithDevice:(id)device numberOfTopKValues:(NSUInteger)numberOfTopKValues
{
  v6.receiver = self;
  v6.super_class = MPSMatrixFindTopK;
  result = [(MPSMatrixUnaryKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_sourceColumns = -1;
    result->_sourceRows = -1;
    result->_numberOfTopKValues = numberOfTopKValues;
    result->_indexOffset = 0;
    result->_alongColumns = 0;
  }

  return result;
}

- (MPSMatrixFindTopK)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v14.receiver = self;
  v14.super_class = MPSMatrixFindTopK;
  v5 = [(MPSMatrixUnaryKernel *)&v14 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (v5)
  {
    if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v5->_sourceColumns = -1;
      v5->_sourceRows = -1;
      v5->_sourceColumns = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPMatrixFindTopK._sourceColumns;");
      v7->_sourceRows = objc_msgSend_decodeInt64ForKey_(aDecoder, v8, @"MPMatrixFindTopK._sourceRows");
      v7->_numberOfTopKValues = objc_msgSend_decodeInt64ForKey_(aDecoder, v9, @"MPMatrixFindTopK._numberOfTopKValues;");
      v7->_indexOffset = objc_msgSend_decodeInt64ForKey_(aDecoder, v10, @"MPMatrixFindTopK._indexOffset");
      v7->_alongColumns = objc_msgSend_decodeBoolForKey_(aDecoder, v11, @"MPSMatrixFindTopK._alongColumns");
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v12 = objc_opt_class();
        NSStringFromClass(v12);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v10.receiver = self;
  v10.super_class = MPSMatrixFindTopK;
  [(MPSMatrixUnaryKernel *)&v10 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_sourceColumns, @"MPMatrixFindTopK._sourceColumns;");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_sourceRows, @"MPMatrixFindTopK._sourceRows");
  objc_msgSend_encodeInt64_forKey_(coder, v7, self->_numberOfTopKValues, @"MPMatrixFindTopK._numberOfTopKValues;");
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->_indexOffset, @"MPMatrixFindTopK._indexOffset");
  objc_msgSend_encodeBool_forKey_(coder, v9, self->_alongColumns, @"MPSMatrixFindTopK._alongColumns");
}

- (MPSMatrixFindTopK)copyWithZone:(NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSMatrixFindTopK;
  result = [(MPSMatrixUnaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    result->_sourceColumns = self->_sourceColumns;
    result->_sourceRows = self->_sourceRows;
    result->_indexOffset = self->_indexOffset;
    result->_numberOfTopKValues = self->_numberOfTopKValues;
    result->_alongColumns = self->_alongColumns;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix resultIndexMatrix:(MPSMatrix *)resultIndexMatrix resultValueMatrix:(MPSMatrix *)resultValueMatrix
{
  v10 = objc_alloc(MEMORY[0x277CD7210]);
  v14 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v10, v11, commandBuffer, 0);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v13 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v13 || (v15 = objc_opt_class(), v16 = NSStringFromClass(v15), objc_msgSend_setLabel_(self, v17, v16), (v13 = v16) != 0))
    {
      objc_msgSend_setLabel_(v14, v12, v13);
    }
  }

  alongColumns = self->_alongColumns;
  sourceColumns = self->_sourceColumns;
  sourceRows = self->_sourceRows;
  indexOffset = self->_indexOffset;
  v195 = 0;
  v196 = 0;
  v197 = 0;
  objc_msgSend_sourceMatrixOrigin(self, v12, v13);
  v192 = 0;
  v193 = 0;
  v194 = 0;
  objc_msgSend_resultMatrixOrigin(self, v20, v21);
  numberOfTopKValues = self->_numberOfTopKValues;
  if (!numberOfTopKValues)
  {
    goto LABEL_90;
  }

  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v140 = objc_opt_class();
      v152 = NSStringFromClass(v140);
      MTLReportFailure();
    }

    if (!inputMatrix && MTLReportFailureTypeEnabled())
    {
      v141 = objc_opt_class();
      v152 = NSStringFromClass(v141);
      MTLReportFailure();
    }

    if (!resultValueMatrix && MTLReportFailureTypeEnabled())
    {
      v142 = objc_opt_class();
      v152 = NSStringFromClass(v142);
      MTLReportFailure();
    }

    if (!resultIndexMatrix && MTLReportFailureTypeEnabled())
    {
      v143 = objc_opt_class();
      v152 = NSStringFromClass(v143);
      MTLReportFailure();
    }

    objc_msgSend_dataType(inputMatrix, v22, v23, v152);
    objc_msgSend_dataType(resultValueMatrix, v25, v26);
    v29 = objc_msgSend_dataType(inputMatrix, v27, v28);
    if (v29 != objc_msgSend_dataType(resultValueMatrix, v30, v31) && MTLReportFailureTypeEnabled())
    {
      v144 = objc_opt_class();
      v153 = NSStringFromClass(v144);
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(inputMatrix, v32, v33, v153) != 268435488)
    {
      objc_msgSend_dataType(inputMatrix, v34, v35);
    }

    if (objc_msgSend_dataType(inputMatrix, v34, v35) != 268435488 && objc_msgSend_dataType(inputMatrix, v22, v23) != 268435472 && MTLReportFailureTypeEnabled())
    {
      v146 = objc_opt_class();
      v152 = NSStringFromClass(v146);
      MTLReportFailure();
    }

    if (numberOfTopKValues >= 0x11 && MTLReportFailureTypeEnabled())
    {
      v145 = objc_opt_class();
      v152 = NSStringFromClass(v145);
      MTLReportFailure();
    }
  }

  v191 = numberOfTopKValues;
  v36 = *MEMORY[0x277CD73B0];
  v37 = *(&resultValueMatrix->super.isa + v36);
  v38 = *(&inputMatrix->super.isa + v36);
  v190 = indexOffset;
  v39 = *(&resultIndexMatrix->super.isa + v36);
  v184 = v37;
  v185 = v38;
  v40 = *MEMORY[0x277CD73A0];
  v41 = *(&resultValueMatrix->super.isa + v40);
  v42 = *(&inputMatrix->super.isa + v40);
  v186 = v41;
  v187 = v42;
  v43 = *(&resultIndexMatrix->super.isa + v40);
  v188 = v39;
  v189 = v43;
  v176 = objc_msgSend_batchStart(self, v22, v23, v152);
  v46 = objc_msgSend_batchSize(self, v44, v45);
  if (objc_msgSend_columns(inputMatrix, v47, v48) >= v196)
  {
    v51 = objc_msgSend_columns(inputMatrix, v49, v50);
    if (v51 - v196 < sourceColumns)
    {
      LODWORD(sourceColumns) = v51 - v196;
    }
  }

  else
  {
    LODWORD(sourceColumns) = 0;
  }

  if (objc_msgSend_rows(inputMatrix, v49, v50) >= v195)
  {
    v56 = objc_msgSend_rows(inputMatrix, v52, v53);
    v55 = v56 - v195 >= sourceRows ? sourceRows : v56 - v195;
  }

  else
  {
    v55 = 0;
  }

  v183 = v54;
  v182 = __PAIR64__(v55, sourceColumns);
  v59 = objc_msgSend_matrices(inputMatrix, v52, v53) <= v176 ? 0 : objc_msgSend_matrices(inputMatrix, v57, v58) - v176;
  if (objc_msgSend_matrices(resultValueMatrix, v57, v58) <= v176)
  {
    goto LABEL_90;
  }

  v60 = objc_msgSend_matrices(resultValueMatrix, v22, v23) - v176;
  if (v59 < v60)
  {
    v60 = v59;
  }

  if (v60 >= v46)
  {
    v60 = v46;
  }

  if (!v60 || !sourceColumns || !v55)
  {
    goto LABEL_90;
  }

  v173 = v60;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_rows(resultValueMatrix, v22, v23);
    v63 = objc_msgSend_rows(resultValueMatrix, v61, v62);
    if (alongColumns)
    {
      if (v192 + sourceColumns > v63 && MTLReportFailureTypeEnabled())
      {
        v147 = objc_opt_class();
        v154 = NSStringFromClass(v147);
        MTLReportFailure();
      }

      objc_msgSend_columns(resultValueMatrix, v64, v65, v154);
      if (v193 + numberOfTopKValues > objc_msgSend_columns(resultValueMatrix, v66, v67) && MTLReportFailureTypeEnabled())
      {
        v149 = objc_opt_class();
        v155 = NSStringFromClass(v149);
        MTLReportFailure();
      }

      objc_msgSend_rows(inputMatrix, v68, v69, v155);
      if (v195 + numberOfTopKValues <= objc_msgSend_rows(inputMatrix, v70, v71) || (MTLReportFailureTypeEnabled() & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v192 + v55 > v63 && MTLReportFailureTypeEnabled())
      {
        v148 = objc_opt_class();
        v154 = NSStringFromClass(v148);
        MTLReportFailure();
      }

      objc_msgSend_columns(resultValueMatrix, v64, v65, v154);
      if (v193 + numberOfTopKValues > objc_msgSend_columns(resultValueMatrix, v72, v73) && MTLReportFailureTypeEnabled())
      {
        v150 = objc_opt_class();
        v156 = NSStringFromClass(v150);
        MTLReportFailure();
      }

      objc_msgSend_columns(inputMatrix, v74, v75, v156);
      if (v196 + numberOfTopKValues <= objc_msgSend_columns(inputMatrix, v76, v77) || !MTLReportFailureTypeEnabled())
      {
        goto LABEL_49;
      }
    }

    v151 = objc_opt_class();
    v154 = NSStringFromClass(v151);
    MTLReportFailure();
  }

LABEL_49:
  objc_msgSend_dataType(inputMatrix, v22, v23, v154);
  if (alongColumns)
  {
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(v14, v79, ComputeState);
    v82 = objc_msgSend_threadExecutionWidth(ComputeState, v80, v81);
    v85 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v83, v84);
    MPSLibrary::ReleaseComputeState();
    if (v182 >= (v82 << 6))
    {
      v82 <<= v85 >= 4 * v82;
      if (((*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[1477] & 4) != 0)
      {
        v119 = 1;
      }

      else
      {
        v119 = 2;
      }

      if (!v82)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v182 < 8)
      {
        v87 = 1;
LABEL_78:
        v119 = v82;
        v157 = (v182 + v87 - 1) / v87;
LABEL_81:
        v159 = v119;
        v160 = v87;
        v120 = 8 * v87 * v119;
        v121 = 2;
        if (numberOfTopKValues > 0xC)
        {
          v121 = 3;
        }

        objc_msgSend_setThreadgroupMemoryLength_atIndex_(v14, v86, (v120 << v121) + v120, 0);
        v123 = *MEMORY[0x277CD7398];
        v124 = *(&inputMatrix->super.isa + v123);
        v167 = *(&resultValueMatrix->super.isa + v123);
        v171 = *(&resultIndexMatrix->super.isa + v123);
        v125 = *MEMORY[0x277CD73B0];
        v126 = *(&inputMatrix->super.isa + v125);
        v127 = *MEMORY[0x277CD73A8];
        v128 = *(&inputMatrix->super.isa + v127);
        v165 = *(&resultValueMatrix->super.isa + v125);
        v163 = *(&resultValueMatrix->super.isa + v127);
        v169 = *(&resultIndexMatrix->super.isa + v125);
        v129 = (inputMatrix + *MEMORY[0x277CD7388]);
        v130 = *(&resultIndexMatrix->super.isa + v127);
        explicit = atomic_load_explicit(v129, memory_order_acquire);
        if (!explicit)
        {
          MPSAutoBuffer::AllocateBuffer(v129, 0);
          explicit = atomic_load_explicit(v129, memory_order_acquire);
        }

        objc_msgSend_setBuffer_offset_atIndex_(v14, v122, explicit, v196 * (v124 >> 3) + v126 * v195 + v128 + v176 * v187, 1);
        v133 = (resultIndexMatrix + *MEMORY[0x277CD7388]);
        v134 = atomic_load_explicit(v133, memory_order_acquire);
        if (!v134)
        {
          MPSAutoBuffer::AllocateBuffer(v133, 0);
          v134 = atomic_load_explicit(v133, memory_order_acquire);
        }

        objc_msgSend_setBuffer_offset_atIndex_(v14, v132, v134, v193 * (v171 >> 3) + v169 * v192 + v130 + v176 * v189, 2);
        v136 = (resultValueMatrix + *MEMORY[0x277CD7388]);
        v137 = atomic_load_explicit(v136, memory_order_acquire);
        if (!v137)
        {
          MPSAutoBuffer::AllocateBuffer(v136, 0);
          v137 = atomic_load_explicit(v136, memory_order_acquire);
        }

        objc_msgSend_setBuffer_offset_atIndex_(v14, v135, v137, v193 * (v167 >> 3) + v165 * v192 + v163 + v176 * v186, 3);
        objc_msgSend_setBytes_length_atIndex_(v14, v138, &v182, 48, 0);
        v179 = v157;
        v180 = v173;
        v181 = 1;
        v177 = v160;
        v178.i64[0] = v159;
        v178.i64[1] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v14, v139, &v179, &v177);
        goto LABEL_90;
      }

      if (v182 < 0x20)
      {
        v87 = 16;
        v82 = 16;
        goto LABEL_78;
      }

      v119 = 4;
      if (!v82)
      {
LABEL_80:
        v87 = 0;
        v157 = 0;
        goto LABEL_81;
      }
    }

    v87 = v82;
    v82 = v119;
    goto LABEL_78;
  }

  v88 = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(v14, v89, v88);
  v92 = objc_msgSend_threadExecutionWidth(v88, v90, v91);
  v95 = objc_msgSend_maxTotalThreadsPerThreadgroup(v88, v93, v94);
  MPSLibrary::ReleaseComputeState();
  v161 = HIDWORD(v182);
  v97 = 64;
  if (v182 <= 0x3FF)
  {
    v97 = v92;
  }

  if (v182 > 0x7FF)
  {
    v97 = 128;
  }

  if (v97 >= v95)
  {
    v97 = v95;
  }

  if (v97 >= v182)
  {
    v98 = v92;
  }

  else
  {
    v98 = v97;
  }

  v158 = v98;
  v99 = 8 * v98;
  v100 = 2;
  if (numberOfTopKValues > 0xC)
  {
    v100 = 3;
  }

  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v14, v96, (v99 << v100) + v99, 0);
  v102 = *MEMORY[0x277CD7398];
  v103 = *(&inputMatrix->super.isa + v102);
  v166 = *(&resultValueMatrix->super.isa + v102);
  v170 = *(&resultIndexMatrix->super.isa + v102);
  v104 = *MEMORY[0x277CD73B0];
  v105 = *(&inputMatrix->super.isa + v104);
  v106 = *MEMORY[0x277CD73A8];
  v107 = *(&inputMatrix->super.isa + v106);
  v164 = *(&resultValueMatrix->super.isa + v104);
  v162 = *(&resultValueMatrix->super.isa + v106);
  v168 = *(&resultIndexMatrix->super.isa + v104);
  v108 = (inputMatrix + *MEMORY[0x277CD7388]);
  v109 = *(&resultIndexMatrix->super.isa + v106);
  v110 = atomic_load_explicit(v108, memory_order_acquire);
  if (!v110)
  {
    MPSAutoBuffer::AllocateBuffer(v108, 0);
    v110 = atomic_load_explicit(v108, memory_order_acquire);
  }

  objc_msgSend_setBuffer_offset_atIndex_(v14, v101, v110, v196 * (v103 >> 3) + v105 * v195 + v107 + v176 * v187, 1);
  v112 = (resultIndexMatrix + *MEMORY[0x277CD7388]);
  v113 = atomic_load_explicit(v112, memory_order_acquire);
  if (!v113)
  {
    MPSAutoBuffer::AllocateBuffer(v112, 0);
    v113 = atomic_load_explicit(v112, memory_order_acquire);
  }

  objc_msgSend_setBuffer_offset_atIndex_(v14, v111, v113, v193 * (v170 >> 3) + v168 * v192 + v109 + v176 * v189, 2);
  v115 = (resultValueMatrix + *MEMORY[0x277CD7388]);
  v116 = atomic_load_explicit(v115, memory_order_acquire);
  if (!v116)
  {
    MPSAutoBuffer::AllocateBuffer(v115, 0);
    v116 = atomic_load_explicit(v115, memory_order_acquire);
  }

  objc_msgSend_setBuffer_offset_atIndex_(v14, v114, v116, v193 * (v166 >> 3) + v164 * v192 + v162 + v176 * v186, 3);
  objc_msgSend_setBytes_length_atIndex_(v14, v117, &v182, 48, 0);
  v179 = v161;
  v180 = v173;
  v181 = 1;
  v177 = v158;
  v178 = vdupq_n_s64(1uLL);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v14, v118, &v179, &v177);
LABEL_90:
  objc_msgSend_endEncoding(v14, v22, v23);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSMatrixFindTopK;
  v4 = [(MPSMatrixUnaryKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tsourceRows:  \t\t\t%lu\n\tsourceColumns: \t\t\t%lu\n\tnumberOfTopKValues:\t\t%lu\n\tindexOffset:\t%lu\n", v4, self->_sourceRows, self->_sourceColumns, self->_numberOfTopKValues, self->_indexOffset);
}

@end