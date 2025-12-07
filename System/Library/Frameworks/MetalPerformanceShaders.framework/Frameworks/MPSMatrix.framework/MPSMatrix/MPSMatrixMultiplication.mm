@interface MPSMatrixMultiplication
- (MPSMatrixMultiplication)initWithCoder:(id)coder device:(id)device;
- (MPSMatrixMultiplication)initWithDevice:(id)device transposeLeft:(BOOL)transposeLeft transposeRight:(BOOL)transposeRight resultRows:(NSUInteger)resultRows resultColumns:(NSUInteger)resultColumns interiorColumns:(NSUInteger)interiorColumns alpha:(double)alpha beta:(double)beta;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer leftMatrix:(MPSMatrix *)leftMatrix rightMatrix:(MPSMatrix *)rightMatrix resultMatrix:(MPSMatrix *)resultMatrix;
- (void)encodeWithCoder:(id)coder;
- (void)setLeftMatrixOrigin:(MTLOrigin *)leftMatrixOrigin;
- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin;
- (void)setRightMatrixOrigin:(MTLOrigin *)rightMatrixOrigin;
@end

@implementation MPSMatrixMultiplication

- (MPSMatrixMultiplication)initWithDevice:(id)device transposeLeft:(BOOL)transposeLeft transposeRight:(BOOL)transposeRight resultRows:(NSUInteger)resultRows resultColumns:(NSUInteger)resultColumns interiorColumns:(NSUInteger)interiorColumns alpha:(double)alpha beta:(double)beta
{
  v30.receiver = self;
  v30.super_class = MPSMatrixMultiplication;
  v18 = [(MPSKernel *)&v30 initWithDevice:?];
  v19 = v18;
  if (v18)
  {
    v18->_resultMatrixOrigin.y = 0;
    v18->_resultMatrixOrigin.z = 0;
    v18->_resultMatrixOrigin.x = 0;
    v18->_leftMatrixOrigin.y = 0;
    v18->_leftMatrixOrigin.z = 0;
    v18->_leftMatrixOrigin.x = 0;
    v18->_rightMatrixOrigin.y = 0;
    v18->_rightMatrixOrigin.z = 0;
    v18->_rightMatrixOrigin.x = 0;
    v18->_batchStart = 0;
    v18->_batchSize = -1;
    v18->_transA = transposeLeft;
    v18->_transB = transposeRight;
    v18->_alpha = alpha;
    v18->_beta = beta;
    v18->_M = resultRows;
    v18->_N = resultColumns;
    v18->_K = interiorColumns;
    v18->_useTiling = 0;
    v18->_plugin = 0;
    v18->_encode = 0;
    v18->_ndArrayKernel = 0;
    v20 = (*(&v18->super.super.isa + *MEMORY[0x277CD7350]))[368];
    if (v20 < 18)
    {
      v21 = sub_2399CE960;
      if (v20 <= 10)
      {
        v21 = sub_2399D1A44;
        if (v20 <= 6)
        {
          v21 = sub_2399D276C;
        }
      }
    }

    else
    {
      v21 = sub_2399CE960;
      if (v20 <= 0x17)
      {
        v22 = objc_alloc(NSClassFromString(&cfstr_Mpsndarraymatr.isa));
        v23 = [v22 getUid("initWithDevice:device sourceCount:3")];
        v19->_ndArrayKernel = v23;
        objc_msgSend_setBeta_(v23, v24, v25, beta);
        objc_msgSend_setAlpha_(v19->_ndArrayKernel, v26, v27, alpha);
        v21 = sub_2399CE398;
      }
    }

    v19->_encode = v21;
    v28 = (*(&v19->super.super.isa + *MEMORY[0x277CD7370]))[4];
    v19->_useTiling = (*(*v28 + 16))(v28, v19->_M, v19->_N, v19->_K);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v14.receiver = self;
  v14.super_class = MPSMatrixMultiplication;
  result = [(MPSKernel *)&v14 copyWithZone:zone device:device];
  if (result)
  {
    z = self->_resultMatrixOrigin.z;
    *(result + 184) = *&self->_resultMatrixOrigin.x;
    *(result + 25) = z;
    v7 = self->_leftMatrixOrigin.z;
    *(result + 13) = *&self->_leftMatrixOrigin.x;
    *(result + 28) = v7;
    v8 = self->_rightMatrixOrigin.z;
    *(result + 232) = *&self->_rightMatrixOrigin.x;
    *(result + 31) = v8;
    *(result + 16) = self->_batchStart;
    *(result + 17) = self->_batchSize;
    *(result + 120) = self->_transA;
    *(result + 121) = self->_transB;
    *(result + 18) = *&self->_alpha;
    *(result + 19) = *&self->_beta;
    *(result + 20) = self->_M;
    *(result + 21) = self->_N;
    *(result + 22) = self->_K;
    *(result + 88) = 0;
    *(result + 12) = 0;
    *(result + 13) = 0;
    v9 = (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[368];
    if (v9 < 18)
    {
      if (v9 < 11)
      {
        if (v9 < 7)
        {
          v11 = sub_2399D276C;
        }

        else
        {
          v11 = sub_2399D1A44;
        }
      }

      else
      {
        v11 = sub_2399CE960;
      }

      v10 = result;
      *(result + 13) = v11;
    }

    else
    {
      v10 = result;
      self->_encode = sub_2399CE398;
    }

    v12 = (*(&self->super.super.isa + *MEMORY[0x277CD7370]))[4];
    v13 = (*(*v12 + 16))(v12, self->_M, self->_N, self->_K);
    result = v10;
    v10[88] = v13;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358]) = *(&self->super.super.isa + *MEMORY[0x277CD7358]) | 0x10100;
  v23.receiver = self;
  v23.super_class = MPSMatrixMultiplication;
  [(MPSKernel *)&v23 encodeWithCoder:?];
  objc_msgSend_encodeBool_forKey_(coder, v5, self->_transA, @"MPSMatrixMultiplication.transA");
  objc_msgSend_encodeBool_forKey_(coder, v6, self->_transB, @"MPSMatrixMultiplication.transB");
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"MPSMatrixMultiplication.alpha", self->_alpha);
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"MPSMatrixMultiplication.beta", self->_beta);
  objc_msgSend_encodeInt64_forKey_(coder, v9, self->_M, @"MPSMatrixMultiplication.M");
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_N, @"MPSMatrixMultiplication.N");
  objc_msgSend_encodeInt64_forKey_(coder, v11, self->_K, @"MPSMatrixMultiplication.K");
  objc_msgSend_encodeInt64_forKey_(coder, v12, self->_leftMatrixOrigin.x, @"MPSMatrixMultiplication.leftMatrixOrigin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v13, self->_leftMatrixOrigin.y, @"MPSMatrixMultiplication.leftMatrixOrigin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v14, self->_leftMatrixOrigin.z, @"MPSMatrixMultiplication.leftMatrixOrigin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v15, self->_rightMatrixOrigin.x, @"MPSMatrixMultiplication.rightMatrixOrigin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v16, self->_rightMatrixOrigin.y, @"MPSMatrixMultiplication.rightMatrixOrigin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v17, self->_rightMatrixOrigin.z, @"MPSMatrixMultiplication.rightMatrixOrigin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v18, self->_resultMatrixOrigin.x, @"MPSMatrixMultiplication.resultMatrixOrigin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v19, self->_resultMatrixOrigin.y, @"MPSMatrixMultiplication.resultMatrixOrigin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v20, self->_resultMatrixOrigin.z, @"MPSMatrixMultiplication.resulttMatrixOrigin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v21, self->_batchStart, @"MPSMatrixMultiplication.batchStart");
  objc_msgSend_encodeInt64_forKey_(coder, v22, self->_batchSize, @"MPSMatrixMultiplication.batchSize");
}

- (MPSMatrixMultiplication)initWithCoder:(id)coder device:(id)device
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7358]) & 0xFFFF0000) == 0x10000)
  {
    v42.receiver = self;
    v42.super_class = MPSMatrixMultiplication;
    v6 = [(MPSKernel *)&v42 initWithCoder:coder device:device];
    if (v6)
    {
      v6->_transA = objc_msgSend_decodeBoolForKey_(coder, v5, @"MPSMatrixMultiplication.transA");
      v6->_transB = objc_msgSend_decodeBoolForKey_(coder, v7, @"MPSMatrixMultiplication.transB");
      objc_msgSend_decodeDoubleForKey_(coder, v8, @"MPSMatrixMultiplication.alpha");
      v6->_alpha = v9;
      objc_msgSend_decodeDoubleForKey_(coder, v10, @"MPSMatrixMultiplication.beta");
      v6->_beta = v11;
      v6->_M = objc_msgSend_decodeInt64ForKey_(coder, v12, @"MPSMatrixMultiplication.M");
      v6->_N = objc_msgSend_decodeInt64ForKey_(coder, v13, @"MPSMatrixMultiplication.N");
      v6->_K = objc_msgSend_decodeInt64ForKey_(coder, v14, @"MPSMatrixMultiplication.K");
      v16 = objc_msgSend_decodeInt64ForKey_(coder, v15, @"MPSMatrixMultiplication.leftMatrixOrigin.x");
      v18 = objc_msgSend_decodeInt64ForKey_(coder, v17, @"MPSMatrixMultiplication.leftMatrixOrigin.y");
      v20 = objc_msgSend_decodeInt64ForKey_(coder, v19, @"MPSMatrixMultiplication.leftMatrixOrigin.z");
      v6->_leftMatrixOrigin.x = v16;
      v6->_leftMatrixOrigin.y = v18;
      v6->_leftMatrixOrigin.z = v20;
      v22 = objc_msgSend_decodeInt64ForKey_(coder, v21, @"MPSMatrixMultiplication.rightMatrixOrigin.x");
      v24 = objc_msgSend_decodeInt64ForKey_(coder, v23, @"MPSMatrixMultiplication.rightMatrixOrigin.y");
      v26 = objc_msgSend_decodeInt64ForKey_(coder, v25, @"MPSMatrixMultiplication.rightMatrixOrigin.z");
      v6->_rightMatrixOrigin.x = v22;
      v6->_rightMatrixOrigin.y = v24;
      v6->_rightMatrixOrigin.z = v26;
      v28 = objc_msgSend_decodeInt64ForKey_(coder, v27, @"MPSMatrixMultiplication.resultMatrixOrigin.x");
      v30 = objc_msgSend_decodeInt64ForKey_(coder, v29, @"MPSMatrixMultiplication.resultMatrixOrigin.y");
      v32 = objc_msgSend_decodeInt64ForKey_(coder, v31, @"MPSMatrixMultiplication.resulttMatrixOrigin.z");
      v6->_resultMatrixOrigin.x = v28;
      v6->_resultMatrixOrigin.y = v30;
      v6->_resultMatrixOrigin.z = v32;
      v6->_batchStart = objc_msgSend_decodeInt64ForKey_(coder, v33, @"MPSMatrixMultiplication.batchStart");
      v6->_batchSize = objc_msgSend_decodeInt64ForKey_(coder, v34, @"MPSMatrixMultiplication.batchSize");
      v35 = (*(&v6->super.super.isa + *MEMORY[0x277CD7350]))[368];
      if (v35 < 18)
      {
        if (v35 < 11)
        {
          if (v35 < 7)
          {
            v36 = sub_2399D276C;
          }

          else
          {
            v36 = sub_2399D1A44;
          }
        }

        else
        {
          v36 = sub_2399CE960;
        }
      }

      else
      {
        v36 = sub_2399CE398;
      }

      v6->_encode = v36;
      v37 = (*(&v6->super.super.isa + *MEMORY[0x277CD7370]))[4];
      v6->_useTiling = (*(*v37 + 16))(v37, v6->_M, v6->_N, v6->_K);
    }
  }

  else
  {
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7358]) & 0xFF00) != 0x100)
    {
      selfCopy = self;
      v40 = MTLReportFailureTypeEnabled();
      self = selfCopy;
      if (v40)
      {
        v41 = objc_opt_class();
        NSStringFromClass(v41);
        MTLReportFailure();
        self = selfCopy;
      }
    }

    return 0;
  }

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = MPSMatrixMultiplication;
  v4 = [(MPSKernel *)&v16 debugDescription];
  v5 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
  if (!v5)
  {
    v5 = &stru_284CAA7D8;
  }

  v6 = *&self->_leftMatrixOrigin.x;
  z = self->_leftMatrixOrigin.z;
  v8 = *&self->_rightMatrixOrigin.x;
  v9 = self->_rightMatrixOrigin.z;
  v10 = *&self->_resultMatrixOrigin.x;
  v11 = self->_resultMatrixOrigin.z;
  if (self->_transA)
  {
    v12 = @"transposed";
  }

  else
  {
    v12 = @"non-transposed";
  }

  M = self->_M;
  K = self->_K;
  if (self->_transB)
  {
    return objc_msgSend_stringWithFormat_(v3, 0xA8, @"%@ %@\n\tleftMatrixOrigin: {%ld,%ld,%ld}\n\trightMatrixOrigin: {%ld,%ld,%ld}\n\tresultMatrixOrigin{%ld,%ld,%ld}\n\tleftMatrix (%@) Size: {%ld x %ld}\n\trightMatrix (%@) Size: {%ld x %ld}\n\tresultMatrixSize: {%ld x %ld}\n\tdevice: %p", v4, v5, v6, z, v8, v9, v10, v11, v12, M, K, @"transposed", K, self->_N, M, self->_N, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, 0xA8, @"%@ %@\n\tleftMatrixOrigin: {%ld,%ld,%ld}\n\trightMatrixOrigin: {%ld,%ld,%ld}\n\tresultMatrixOrigin{%ld,%ld,%ld}\n\tleftMatrix (%@) Size: {%ld x %ld}\n\trightMatrix (%@) Size: {%ld x %ld}\n\tresultMatrixSize: {%ld x %ld}\n\tdevice: %p", v4, v5, v6, z, v8, v9, v10, v11, v12, M, K, @"non-transposed", K, self->_N, M, self->_N, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
  }
}

- (void)encodeToCommandBuffer:(id)commandBuffer leftMatrix:(MPSMatrix *)leftMatrix rightMatrix:(MPSMatrix *)rightMatrix resultMatrix:(MPSMatrix *)resultMatrix
{
  v11 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v11))
  {
    goto LABEL_51;
  }

  if (!commandBuffer && MTLReportFailureTypeEnabled())
  {
    v106 = objc_opt_class();
    v113 = NSStringFromClass(v106);
    MTLReportFailure();
  }

  if (!leftMatrix && MTLReportFailureTypeEnabled())
  {
    v107 = objc_opt_class();
    v113 = NSStringFromClass(v107);
    MTLReportFailure();
  }

  if (!rightMatrix && MTLReportFailureTypeEnabled())
  {
    v108 = objc_opt_class();
    v113 = NSStringFromClass(v108);
    MTLReportFailure();
  }

  if (!resultMatrix && MTLReportFailureTypeEnabled())
  {
    v109 = objc_opt_class();
    v113 = NSStringFromClass(v109);
    MTLReportFailure();
  }

  p_leftMatrixOrigin = &self->_leftMatrixOrigin;
  if (self->_leftMatrixOrigin.z && MTLReportFailureTypeEnabled())
  {
    v110 = objc_opt_class();
    v113 = NSStringFromClass(v110);
    MTLReportFailure();
  }

  if (self->_rightMatrixOrigin.z && MTLReportFailureTypeEnabled())
  {
    v111 = objc_opt_class();
    v113 = NSStringFromClass(v111);
    MTLReportFailure();
  }

  v114 = v11;
  if (self->_resultMatrixOrigin.z && MTLReportFailureTypeEnabled())
  {
    v112 = objc_opt_class();
    v113 = NSStringFromClass(v112);
    MTLReportFailure();
  }

  batchStart = self->_batchStart;
  if (batchStart < objc_msgSend_matrices(leftMatrix, a2, commandBuffer, v113))
  {
    v16 = self->_batchStart;
    if (v16 < objc_msgSend_matrices(rightMatrix, v14, v15))
    {
      objc_msgSend_matrices(resultMatrix, v14, v15);
    }
  }

  v17 = self->_batchStart;
  if (v17 >= objc_msgSend_matrices(leftMatrix, v14, v15) || (v20 = self->_batchStart, v20 >= objc_msgSend_matrices(rightMatrix, v18, v19)) || (v23 = self->_batchStart, v23 >= objc_msgSend_matrices(resultMatrix, v21, v22)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  objc_msgSend_rows(resultMatrix, v24, v25);
  v26 = self->_M + self->_resultMatrixOrigin.x;
  if (v26 > objc_msgSend_rows(resultMatrix, v27, v28) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_columns(resultMatrix, v29, v30);
  v31 = self->_N + self->_resultMatrixOrigin.y;
  if (v31 > objc_msgSend_columns(resultMatrix, v32, v33) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v36 = objc_msgSend_dataType(leftMatrix, v34, v35);
  v39 = objc_msgSend_dataType(rightMatrix, v37, v38);
  v42 = objc_msgSend_dataType(leftMatrix, v40, v41);
  if (v36 == v39)
  {
    if (v42 != 268435488 && objc_msgSend_dataType(leftMatrix, v43, v44) != 268435472 && objc_msgSend_dataType(leftMatrix, v43, v44) != 536870920)
    {
      objc_msgSend_dataType(leftMatrix, v43, v44);
    }

    if (objc_msgSend_dataType(leftMatrix, v43, v44) != 268435488 && objc_msgSend_dataType(leftMatrix, v45, v46) != 268435472 && objc_msgSend_dataType(leftMatrix, v45, v46) != 536870920 && objc_msgSend_dataType(leftMatrix, v45, v46) != 536870928 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(leftMatrix, v45, v46) == 268435488 || objc_msgSend_dataType(leftMatrix, v47, v48) == 536870928)
    {
      objc_msgSend_dataType(resultMatrix, v47, v48);
      if (objc_msgSend_dataType(resultMatrix, v49, v50) != 268435488 && MTLReportFailureTypeEnabled())
      {
LABEL_74:
        MTLReportFailure();
      }
    }

    else if (objc_msgSend_dataType(leftMatrix, v47, v48) == 268435472 || objc_msgSend_dataType(leftMatrix, v51, v52) == 536870920)
    {
      if (objc_msgSend_dataType(resultMatrix, v51, v52) != 268435472)
      {
        objc_msgSend_dataType(resultMatrix, v104, v105);
      }

      if (objc_msgSend_dataType(resultMatrix, v104, v105) != 268435472 && objc_msgSend_dataType(resultMatrix, v51, v52) != 268435488 && MTLReportFailureTypeEnabled())
      {
        goto LABEL_74;
      }
    }
  }

  else
  {
    if (v42 == 268435488 && objc_msgSend_dataType(rightMatrix, v43, v44) == 268435472)
    {
      objc_msgSend_dataType(resultMatrix, v43, v44);
    }

    if ((objc_msgSend_dataType(leftMatrix, v43, v44) != 268435488 || objc_msgSend_dataType(rightMatrix, v53, v54) != 268435472 || objc_msgSend_dataType(resultMatrix, v55, v56) != 268435488) && MTLReportFailureTypeEnabled())
    {
      goto LABEL_74;
    }
  }

  if (self->_transA)
  {
    objc_msgSend_rows(leftMatrix, v51, v52);
    v57 = self->_K + p_leftMatrixOrigin->x;
    p_rightMatrixOrigin = &self->_rightMatrixOrigin;
    if (v57 > objc_msgSend_rows(leftMatrix, v58, v59) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(leftMatrix, v60, v61);
    v63 = self->_M + self->_leftMatrixOrigin.y;
    if (v63 > objc_msgSend_columns(leftMatrix, v64, v65) && MTLReportFailureTypeEnabled())
    {
LABEL_100:
      MTLReportFailure();
    }
  }

  else
  {
    objc_msgSend_rows(leftMatrix, v51, v52);
    v68 = self->_M + p_leftMatrixOrigin->x;
    p_rightMatrixOrigin = &self->_rightMatrixOrigin;
    if (v68 > objc_msgSend_rows(leftMatrix, v69, v70) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(leftMatrix, v71, v72);
    v73 = self->_K + self->_leftMatrixOrigin.y;
    if (v73 > objc_msgSend_columns(leftMatrix, v74, v75) && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
      goto LABEL_100;
    }
  }

  if (self->_transB)
  {
    objc_msgSend_rows(rightMatrix, v66, v67);
    v76 = self->_N + p_rightMatrixOrigin->x;
    if (v76 > objc_msgSend_rows(rightMatrix, v77, v78) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(rightMatrix, v79, v80);
    v81 = self->_K + p_rightMatrixOrigin->y;
    v11 = v114;
    if (v81 > objc_msgSend_columns(rightMatrix, v82, v83) && MTLReportFailureTypeEnabled())
    {
LABEL_104:
      MTLReportFailure();
    }
  }

  else
  {
    objc_msgSend_rows(rightMatrix, v66, v67);
    v84 = self->_K + p_rightMatrixOrigin->x;
    v11 = v114;
    if (v84 > objc_msgSend_rows(rightMatrix, v85, v86) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(rightMatrix, v87, v88);
    v89 = self->_N + p_rightMatrixOrigin->y;
    if (v89 > objc_msgSend_columns(rightMatrix, v90, v91) && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
      goto LABEL_104;
    }
  }

LABEL_51:
  v92 = objc_alloc(MEMORY[0x277CD7210]);
  v95 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v92, v93, commandBuffer, 0);
  if ((*(&self->super.super.isa + v11) & 0x18) != 0)
  {
    v96 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v96 || (v97 = objc_opt_class(), v98 = NSStringFromClass(v97), objc_msgSend_setLabel_(self, v99, v98), (v96 = v98) != 0))
    {
      objc_msgSend_setLabel_(v95, v94, v96);
    }
  }

  sub_2399CDE90(self, v95, commandBuffer, leftMatrix, rightMatrix, resultMatrix);
  v102 = MEMORY[0x277CD7388];
  v103 = *MEMORY[0x277CD7388];
  if (*(&leftMatrix[3].super.isa + v103))
  {
    MPSDecrementReadCount(leftMatrix);
    v103 = *v102;
  }

  if (*(&rightMatrix[3].super.isa + v103))
  {
    MPSDecrementReadCount(rightMatrix);
  }

  if (self->_beta != 0.0 && *(&resultMatrix[3].super.isa + *v102))
  {
    MPSDecrementReadCount(resultMatrix);
  }

  objc_msgSend_endEncoding(v95, v100, v101);
}

- (void)dealloc
{
  ndArrayKernel = self->_ndArrayKernel;
  if (ndArrayKernel)
  {
  }

  v4.receiver = self;
  v4.super_class = MPSMatrixMultiplication;
  [(MPSKernel *)&v4 dealloc];
}

- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin
{
  z = resultMatrixOrigin->z;
  *&self->_resultMatrixOrigin.x = *&resultMatrixOrigin->x;
  self->_resultMatrixOrigin.z = z;
}

- (void)setLeftMatrixOrigin:(MTLOrigin *)leftMatrixOrigin
{
  z = leftMatrixOrigin->z;
  *&self->_leftMatrixOrigin.x = *&leftMatrixOrigin->x;
  self->_leftMatrixOrigin.z = z;
}

- (void)setRightMatrixOrigin:(MTLOrigin *)rightMatrixOrigin
{
  z = rightMatrixOrigin->z;
  *&self->_rightMatrixOrigin.x = *&rightMatrixOrigin->x;
  self->_rightMatrixOrigin.z = z;
}

@end