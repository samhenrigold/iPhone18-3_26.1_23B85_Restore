@interface TSCEDecimalMatrix
+ (id)identityMatrixOfSize:(unsigned int)size;
- (TSCEDecimalMatrix)init;
- (TSCEDecimalMatrix)initWithDimensions:(const TSCEGridDimensions *)dimensions;
- (TSUDecimal)cofactorAtCoord:(TSCEGridCoord)coord;
- (TSUDecimal)determinantWithError:(id *)error;
- (TSUDecimal)productOfDiagonal;
- (TSUDecimal)simpleRecursiveDeterminant;
- (TSUDecimal)valueAt1DIndex:(unint64_t)index;
- (TSUDecimal)valueAtCoord:(const TSCEGridCoord *)coord;
- (id).cxx_construct;
- (id)adjointMatrix;
- (id)cofactorMatrix;
- (id)copyWithZone:(_NSZone *)zone;
- (id)inverseWithError:(id *)error;
- (id)multiplyBy:(id)by outError:(id *)error;
- (id)pivotMatrixOutDet:(TSUDecimal *)det;
- (id)transpose;
- (unint64_t)classifyMatrix;
- (vector<TSCEDecimalMatrix)pluDecompositionWithPivotDet:(TSCEDecimalMatrix *)self;
- (void)enumerateValuesUsingBlock:(id)block;
- (void)multiplyByScalar:(const TSUDecimal *)scalar;
- (void)setValue:(const TSUDecimal *)value atCoord:(const TSCEGridCoord *)coord;
- (void)swapColumnAtIndex:(unsigned int)index withColumnAtIndex:(unsigned int)atIndex;
- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex;
- (void)swapValueAtCoord:(const TSCEGridCoord *)coord withCoord:(const TSCEGridCoord *)withCoord;
@end

@implementation TSCEDecimalMatrix

- (TSCEDecimalMatrix)init
{
  v3.receiver = self;
  v3.super_class = TSCEDecimalMatrix;
  result = [(TSCEDecimalMatrix *)&v3 init];
  if (result)
  {
    result->_dimensions = 0;
  }

  return result;
}

- (TSCEDecimalMatrix)initWithDimensions:(const TSCEGridDimensions *)dimensions
{
  v7.receiver = self;
  v7.super_class = TSCEDecimalMatrix;
  v4 = [(TSCEDecimalMatrix *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_dimensions = *dimensions;
    sub_2215A4C10(&v4->_values.__begin_, dimensions->height * dimensions->width);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEDecimalMatrix alloc];
  v7 = objc_msgSend_initWithDimensions_(v4, v5, &self->_dimensions, v6);
  v8 = v7;
  if (v7 != self)
  {
    sub_2210BD068((v7 + 16), self->_values.__begin_, self->_values.__end_, self->_values.__end_ - self->_values.__begin_);
  }

  return v8;
}

+ (id)identityMatrixOfSize:(unsigned int)size
{
  v4 = [TSCEDecimalMatrix alloc];
  v12[0] = size;
  v12[1] = size;
  v7 = objc_msgSend_initWithDimensions_(v4, v5, v12, v6);
  TSUDecimal::operator=();
  if (size)
  {
    v9 = 0;
    do
    {
      v11[0] = v9;
      v11[1] = v9;
      objc_msgSend_setValue_atCoord_(v7, v8, v12, v11);
      ++v9;
    }

    while (size != v9);
  }

  return v7;
}

- (TSUDecimal)valueAtCoord:(const TSCEGridCoord *)coord
{
  TSUDecimal::operator=();
  if (coord->row < self->_dimensions.height && coord->column < self->_dimensions.width)
  {
    v7 = TSCEGridDimensions::oneDIndexForCoord(&self->_dimensions, coord);
    begin = self->_values.__begin_;
    if (v7 >= self->_values.__end_ - begin)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCEDecimalMatrix valueAtCoord:]", v6);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDecimalMatrix.mm", v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 89, 0, "Vector index exceeds current size: %lu", v7);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
      begin = self->_values.__begin_;
    }

    v20 = begin[v7];
  }

  v19 = v20._decimal.w[1];
  v18 = v20._decimal.w[0];
  result._decimal.w[1] = v19;
  result._decimal.w[0] = v18;
  return result;
}

- (TSUDecimal)valueAt1DIndex:(unint64_t)index
{
  begin = self->_values.__begin_;
  if (index >= self->_values.__end_ - begin)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDecimalMatrix valueAt1DIndex:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDecimalMatrix.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 99, 0, "Vector index exceeds current size: %lu", index);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    begin = self->_values.__begin_;
  }

  v16 = &begin[index];
  v17 = v16->_decimal.w[0];
  v18 = v16->_decimal.w[1];
  result._decimal.w[1] = v18;
  result._decimal.w[0] = v17;
  return result;
}

- (void)setValue:(const TSUDecimal *)value atCoord:(const TSCEGridCoord *)coord
{
  if (coord->row >= self->_dimensions.height || coord->column >= self->_dimensions.width)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDecimalMatrix setValue:atCoord:]", coord);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDecimalMatrix.mm", v12);
    v17 = sub_2211786FC(coord, v14, v15, v16);
    v21 = TSCEGridDimensions::description(&self->_dimensions, v18, v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v22, v10, v13, 112, 0, "ERROR: Can't set at %@, outside matrix dimensions: %@", v17, v21);

    v26 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v26, v23, v24, v25);
  }

  else
  {
    v7 = TSCEGridDimensions::oneDIndexForCoord(&self->_dimensions, coord);
    begin = self->_values.__begin_;
    if (v7 < self->_values.__end_ - begin)
    {
      begin[v7] = *value;
    }
  }
}

- (void)enumerateValuesUsingBlock:(id)block
{
  blockCopy = block;
  v14 = 0;
  if (objc_msgSend_area(self, v5, v6, v7))
  {
    v13 = 0;
    do
    {
      v12[0] = objc_msgSend_valueAtCoord_(self, v8, &v13, v9);
      v12[1] = v10;
      blockCopy[2](blockCopy, &v13, v12, &v14);
      v11 = TSCEGridDimensions::nextCoordRowMajorOrder(&self->_dimensions, &v13);
      v13 = v11;
    }

    while ((v14 & 1) == 0 && v11 != 0x7FFFFFFFLL && (v11 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
  }
}

- (void)swapValueAtCoord:(const TSCEGridCoord *)coord withCoord:(const TSCEGridCoord *)withCoord
{
  if (*coord != *withCoord)
  {
    v12[0] = objc_msgSend_valueAtCoord_(self, a2, withCoord, withCoord);
    v12[1] = v7;
    v11[0] = objc_msgSend_valueAtCoord_(self, v7, coord, v8);
    v11[1] = v9;
    objc_msgSend_setValue_atCoord_(self, v9, v11, withCoord);
    objc_msgSend_setValue_atCoord_(self, v10, v12, coord);
  }
}

- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex
{
  if (index != atIndex)
  {
    v11 = v4;
    v12 = v5;
    v7 = 0;
    v10[1] = index;
    v9[1] = atIndex;
    v8 = self->_dimensions.width - 1;
    do
    {
      v10[0] = v7;
      v9[0] = v7;
      objc_msgSend_swapValueAtCoord_withCoord_(self, a2, v10, v9);
      ++v7;
    }

    while (v7 <= v8);
  }
}

- (void)swapColumnAtIndex:(unsigned int)index withColumnAtIndex:(unsigned int)atIndex
{
  if (index != atIndex)
  {
    v11 = v4;
    v12 = v5;
    v7 = 0;
    v10[0] = index;
    v9[0] = atIndex;
    v8 = self->_dimensions.height - 1;
    do
    {
      v10[1] = v7;
      v9[1] = v7;
      objc_msgSend_swapValueAtCoord_withCoord_(self, a2, v10, v9);
      ++v7;
    }

    while (v7 <= v8);
  }
}

- (unint64_t)classifyMatrix
{
  p_dimensions = &self->_dimensions;
  width = self->_dimensions.width;
  v7 = 8;
  if (objc_msgSend_isSquareMatrix(self, a2, v2, v3) && width)
  {
    TSUIndexSet::TSUIndexSet(&v21);
    TSUIndexSet::TSUIndexSet(&v20);
    v10 = 0;
    v11 = 0;
    v19 = 0;
    do
    {
      v18._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v8, &v19, v9);
      v18._decimal.w[1] = v12;
      if ((TSUDecimal::isZero(&v18) & 1) == 0)
      {
        TSUIndexSet::addIndex(&v21);
        TSUIndexSet::addIndex(&v20);
        v13 = (v19.column < v19.row) | v10;
        if (v19.column <= v19.row)
        {
          v14 = v11;
        }

        else
        {
          v14 = 1;
        }

        if (v19.column > v19.row)
        {
          v13 = v10;
        }

        if (v19.row != v19.column)
        {
          v11 = v14;
          v10 = v13;
        }
      }

      v15 = TSCEGridDimensions::nextCoordRowMajorOrder(p_dimensions, &v19);
      v19 = v15;
    }

    while (v15 != 0x7FFFFFFF && (v15 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
    if (v10)
    {
      v7 = (v11 & 1) == 0;
    }

    else
    {
      v7 = ((v11 & 1) == 0) | 2;
    }

    v16 = TSUIndexSet::count(&v21);
    if (v16 != width || TSUIndexSet::count(&v20) != v16)
    {
      v7 |= 4uLL;
    }

    TSUIndexSet::~TSUIndexSet(&v20);
    TSUIndexSet::~TSUIndexSet(&v21);
  }

  return v7;
}

- (id)transpose
{
  p_dimensions = &self->_dimensions;
  v16 = vrev64_s32(self->_dimensions);
  v4 = [TSCEDecimalMatrix alloc];
  v9 = objc_msgSend_initWithDimensions_(v4, v5, &v16, v6);
  v15 = 0;
  do
  {
    v14[0] = objc_msgSend_valueAtCoord_(self, v7, &v15, v8);
    v14[1] = v10;
    v13 = vrev64_s32(v15);
    objc_msgSend_setValue_atCoord_(v9, v10, v14, &v13);
    v11 = TSCEGridDimensions::nextCoordRowMajorOrder(p_dimensions, &v15);
    v15 = v11;
  }

  while (v11 != 0x7FFFFFFF && (v11 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);

  return v9;
}

- (id)multiplyBy:(id)by outError:(id *)error
{
  byCopy = by;
  dimensions = self->_dimensions;
  v11 = objc_msgSend_dimensions(byCopy, v8, v9, v10);
  v15 = v11;
  if (dimensions.height * dimensions.width)
  {
    v16 = HIDWORD(v11) * v11 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = objc_msgSend_emptyArrayError(TSCEError, v12, v13, v14);
LABEL_19:
    v21 = 0;
    *error = v17;
    goto LABEL_20;
  }

  if (dimensions.width != HIDWORD(v11))
  {
    v17 = objc_msgSend_wrongSizeForMatrixMultiplyError(TSCEError, v12, v13, v14);
    goto LABEL_19;
  }

  v36[0] = v11;
  v36[1] = dimensions.height;
  v18 = [TSCEDecimalMatrix alloc];
  v21 = objc_msgSend_initWithDimensions_(v18, v19, v36, v20);
  TSUDecimal::operator=();
  if (HIDWORD(*&dimensions))
  {
    v22 = 0;
    do
    {
      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          TSUDecimal::operator=();
          if (dimensions.width)
          {
            v26 = 0;
            do
            {
              v32._decimal.w[0] = __PAIR64__(v22, v26);
              v33._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v24, &v32, v25);
              v33._decimal.w[1] = v27;
              v31[0] = i;
              v31[1] = v26;
              v32._decimal.w[0] = objc_msgSend_valueAtCoord_(byCopy, v27, v31, v28);
              v32._decimal.w[1] = v29;
              TSUDecimal::multiply(&v33, &v32, &v35);
              TSUDecimal::operator+=();
              ++v26;
            }

            while (dimensions.width != v26);
          }

          v33._decimal.w[0] = __PAIR64__(v22, i);
          objc_msgSend_setValue_atCoord_(v21, v24, v34, &v33);
        }
      }

      ++v22;
    }

    while (v22 != dimensions.height);
  }

LABEL_20:

  return v21;
}

- (void)multiplyByScalar:(const TSUDecimal *)scalar
{
  v11 = 0;
  do
  {
    v10._decimal.w[0] = objc_msgSend_valueAtCoord_(self, a2, &v11, v3);
    v10._decimal.w[1] = v6;
    TSUDecimal::operator=();
    TSUDecimal::multiply(&v10, scalar, &v9);
    objc_msgSend_setValue_atCoord_(self, v7, &v9, &v11);
    v8 = TSCEGridDimensions::nextCoordRowMajorOrder(&self->_dimensions, &v11);
    v11 = v8;
  }

  while (v8 != 0x7FFFFFFF && (v8 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
}

- (id)pivotMatrixOutDet:(TSUDecimal *)det
{
  v5 = objc_msgSend_identityMatrixOfSize_(TSCEDecimalMatrix, a2, self->_dimensions.width, v3);
  TSUDecimal::operator=();
  width = self->_dimensions.width;
  if (width)
  {
    v7 = 0;
    height = self->_dimensions.height;
    do
    {
      TSUDecimal::operator=();
      v11 = 0x7FFFFFFFLL;
      if (v7 < height)
      {
        v12 = v7;
        do
        {
          v15[0] = v7;
          v15[1] = v12;
          v16._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v9, v15, v10);
          v16._decimal.w[1] = v13;
          TSUDecimal::abs(&v16);
          if (v11 == 0x7FFFFFFF || (TSUDecimal::operator<=() & 1) == 0)
          {
            v17 = v16;
            v11 = v12;
          }

          v12 = (v12 + 1);
        }

        while (height != v12);
      }

      if (v7 != v11)
      {
        objc_msgSend_swapRowAtIndex_withRowAtIndex_(v5, v9, v7, v11);
        TSUDecimal::operator=();
        TSUDecimal::operator*=();
      }

      v7 = (v7 + 1);
    }

    while (v7 != width);
  }

  return v5;
}

- (TSUDecimal)productOfDiagonal
{
  TSUDecimal::operator=();
  width = self->_dimensions.width;
  if (width)
  {
    for (i = 0; i != width; ++i)
    {
      v10[0] = i;
      v10[1] = i;
      v11 = objc_msgSend_valueAtCoord_(self, v3, v10, v4);
      v12 = v7;
      TSUDecimal::operator*=();
    }
  }

  v8 = v13;
  v9 = v14;
  result._decimal.w[1] = v9;
  result._decimal.w[0] = v8;
  return result;
}

- (vector<TSCEDecimalMatrix)pluDecompositionWithPivotDet:(TSCEDecimalMatrix *)self
{
  selfCopy = self;
  v10 = objc_msgSend_dimensions(selfCopy, v7, v8, v9);
  v67 = objc_msgSend_pivotMatrixOutDet_(selfCopy, v11, a4, v12);
  v66 = 0;
  v55 = selfCopy;
  v14 = objc_msgSend_multiplyBy_outError_(v67, v13, selfCopy, &v66);
  v54 = v66;
  v17 = objc_msgSend_identityMatrixOfSize_(TSCEDecimalMatrix, v15, v10, v16);
  v53 = retstr;
  v65 = v17;
  v18 = [TSCEDecimalMatrix alloc];
  v68 = objc_msgSend_dimensions(selfCopy, v19, v20, v21);
  v24 = objc_msgSend_initWithDimensions_(v18, v22, &v68, v23);
  v64 = v24;
  if (v10)
  {
    v25 = 0;
    v26 = 1;
    do
    {
      v27 = 0;
      do
      {
        TSUDecimal::operator=();
        if (v27)
        {
          for (i = 0; i != v27; ++i)
          {
            v60 = v25;
            v61 = i;
            v31 = objc_msgSend_valueAtCoord_(v24, v28, &v60, v29, v53);
            v33 = v32;
            v56 = i;
            v57 = v27;
            v58 = objc_msgSend_valueAtCoord_(v17, v32, &v56, v34);
            v59 = v35;
            v68 = v31;
            v69 = v33;
            TSUDecimal::operator*=();
            v62 = v68;
            v63 = v69;
            TSUDecimal::operator+=();
          }
        }

        v62 = __PAIR64__(v27, v25);
        v68 = objc_msgSend_valueAtCoord_(v14, v28, &v62, v29, v53);
        v69 = v36;
        TSUDecimal::operator-=();
        v62 = __PAIR64__(v27, v25);
        objc_msgSend_setValue_atCoord_(v24, v37, &v68, &v62);
        ++v27;
      }

      while (v27 != v26);
      v38 = v25;
      do
      {
        TSUDecimal::operator=();
        if (v25)
        {
          for (j = 0; j != v25; ++j)
          {
            v60 = v25;
            v61 = j;
            v42 = objc_msgSend_valueAtCoord_(v24, v39, &v60, v40);
            v44 = v43;
            v17 = v65;
            v56 = j;
            v57 = v38;
            v58 = objc_msgSend_valueAtCoord_(v65, v43, &v56, v45);
            v59 = v46;
            v68 = v42;
            v69 = v44;
            TSUDecimal::operator*=();
            v62 = v68;
            v63 = v69;
            TSUDecimal::operator+=();
          }
        }

        v62 = __PAIR64__(v38, v25);
        v68 = objc_msgSend_valueAtCoord_(v14, v39, &v62, v40);
        v69 = v47;
        TSUDecimal::operator-=();
        LODWORD(v58) = v25;
        HIDWORD(v58) = v25;
        v62 = objc_msgSend_valueAtCoord_(v24, v48, &v58, v49);
        v63 = v50;
        TSUDecimal::operator/=();
        v58 = __PAIR64__(v38, v25);
        objc_msgSend_setValue_atCoord_(v17, v51, &v68, &v58);
        ++v38;
      }

      while (v38 != v10);
      ++v25;
      ++v26;
    }

    while (v25 != v10);
  }

  v53->var0 = 0;
  v53->var1 = 0;
  v53->var2 = 0;
  sub_2215A5D94(v53, &v67);
  sub_2215A5D94(v53, &v65);
  sub_2215A5D94(v53, &v64);

  return result;
}

- (TSUDecimal)determinantWithError:(id *)error
{
  if ((objc_msgSend_isSquareMatrix(self, a2, error, v3) & 1) == 0)
  {
    *error = objc_msgSend_matrixNotSquareError(TSCEError, v6, v7, v8);
    goto LABEL_8;
  }

  width = self->_dimensions.width;
  if (width > 1)
  {
    switch(width)
    {
      case 2:
        *&v160[0] = 0;
        v77 = objc_msgSend_valueAtCoord_(self, v6, v160, v8);
        v79 = v78;
        *&v160[0] = 1;
        v81 = objc_msgSend_valueAtCoord_(self, v78, v160, v80);
        v83 = v82;
        *&v160[0] = 0x100000000;
        v173._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v82, v160, v84);
        v173._decimal.w[1] = v85;
        *&v160[0] = 0x100000001;
        v171._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v85, v160, v86);
        v171._decimal.w[1] = v87;
        *&v160[0] = v77;
        *(&v160[0] + 1) = v79;
        TSUDecimal::operator*=();
        v88 = v160[0];
        *&v160[0] = v81;
        *(&v160[0] + 1) = v83;
        TSUDecimal::operator*=();
        v170 = v160[0];
        v160[0] = v88;
        goto LABEL_14;
      case 3:
        *&v160[0] = 0;
        v89 = objc_msgSend_valueAtCoord_(self, v6, v160, v8);
        v91 = v90;
        *&v160[0] = 1;
        v93 = objc_msgSend_valueAtCoord_(self, v90, v160, v92);
        v95 = v94;
        *&v160[0] = 2;
        v97 = objc_msgSend_valueAtCoord_(self, v94, v160, v96);
        v158 = v98;
        v159 = v97;
        *&v160[0] = 0x100000000;
        v100 = objc_msgSend_valueAtCoord_(self, v98, v160, v99);
        v102 = v101;
        *&v160[0] = 0x100000001;
        v104 = objc_msgSend_valueAtCoord_(self, v101, v160, v103);
        v106 = v105;
        *&v160[0] = 0x100000002;
        v173._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v105, v160, v107);
        v173._decimal.w[1] = v108;
        *&v160[0] = 0x200000000;
        v171._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v108, v160, v109);
        v171._decimal.w[1] = v110;
        *&v160[0] = 0x200000001;
        *&v170 = objc_msgSend_valueAtCoord_(self, v110, v160, v111);
        *(&v170 + 1) = v112;
        *&v160[0] = 0x200000002;
        *&v169 = objc_msgSend_valueAtCoord_(self, v112, v160, v113);
        *(&v169 + 1) = v114;
        *&v160[0] = v104;
        *(&v160[0] + 1) = v106;
        TSUDecimal::operator*=();
        v115 = v160[0];
        v160[0] = v173;
        TSUDecimal::operator*=();
        v167 = v160[0];
        v160[0] = v115;
        TSUDecimal::operator-=();
        v168 = v160[0];
        *&v160[0] = v89;
        *(&v160[0] + 1) = v91;
        TSUDecimal::operator*=();
        v116 = v160[0];
        *&v160[0] = v100;
        *(&v160[0] + 1) = v102;
        TSUDecimal::operator*=();
        v117 = v160[0];
        v160[0] = v171;
        TSUDecimal::operator*=();
        v164 = v160[0];
        v160[0] = v117;
        TSUDecimal::operator-=();
        v165 = v160[0];
        *&v160[0] = v93;
        *(&v160[0] + 1) = v95;
        TSUDecimal::operator*=();
        v166 = v160[0];
        v160[0] = v116;
        TSUDecimal::operator-=();
        v118 = v160[0];
        *&v160[0] = v100;
        *(&v160[0] + 1) = v102;
        TSUDecimal::operator*=();
        v119 = v160[0];
        *&v160[0] = v104;
        *(&v160[0] + 1) = v106;
        TSUDecimal::operator*=();
        v161 = v160[0];
        v160[0] = v119;
        TSUDecimal::operator-=();
        v162 = v160[0];
        *&v160[0] = v159;
        *(&v160[0] + 1) = v158;
        TSUDecimal::operator*=();
        v163 = v160[0];
        v160[0] = v118;
        TSUDecimal::operator+=();
        goto LABEL_16;
      case 4:
        *&v160[0] = 0;
        v10 = objc_msgSend_valueAtCoord_(self, v6, v160, v8);
        v142 = v11;
        v144 = v10;
        *&v160[0] = 1;
        v13 = objc_msgSend_valueAtCoord_(self, v11, v160, v12);
        v146 = v14;
        v148 = v13;
        *&v160[0] = 2;
        v16 = objc_msgSend_valueAtCoord_(self, v14, v160, v15);
        v150 = v17;
        v151 = v16;
        *&v160[0] = 3;
        v19 = objc_msgSend_valueAtCoord_(self, v17, v160, v18);
        v152 = v20;
        v153 = v19;
        *&v160[0] = 0x100000000;
        v154 = objc_msgSend_valueAtCoord_(self, v20, v160, v21);
        v23 = v22;
        *&v160[0] = 0x100000001;
        v25 = objc_msgSend_valueAtCoord_(self, v22, v160, v24);
        v156 = v26;
        v27 = v26;
        *&v160[0] = 0x100000002;
        v29 = objc_msgSend_valueAtCoord_(self, v26, v160, v28);
        v157 = v30;
        v31 = v30;
        *&v160[0] = 0x100000003;
        v33 = objc_msgSend_valueAtCoord_(self, v30, v160, v32);
        v155 = v34;
        v35 = v34;
        *&v160[0] = 0x200000000;
        v141 = objc_msgSend_valueAtCoord_(self, v34, v160, v36);
        v38 = v37;
        *&v160[0] = 0x200000001;
        v173._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v37, v160, v39);
        v173._decimal.w[1] = v40;
        *&v160[0] = 0x200000002;
        v171._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v40, v160, v41);
        v171._decimal.w[1] = v42;
        *&v160[0] = 0x200000003;
        *&v170 = objc_msgSend_valueAtCoord_(self, v42, v160, v43);
        *(&v170 + 1) = v44;
        *&v160[0] = 0x300000000;
        v46 = objc_msgSend_valueAtCoord_(self, v44, v160, v45);
        v139 = v47;
        v140 = v46;
        *&v160[0] = 0x300000001;
        *&v169 = objc_msgSend_valueAtCoord_(self, v47, v160, v48);
        *(&v169 + 1) = v49;
        *&v160[0] = 0x300000002;
        *&v168 = objc_msgSend_valueAtCoord_(self, v49, v160, v50);
        *(&v168 + 1) = v51;
        *&v160[0] = 0x300000003;
        *&v167 = objc_msgSend_valueAtCoord_(self, v51, v160, v52);
        *(&v167 + 1) = v53;
        v160[0] = v171;
        TSUDecimal::operator*=();
        v54 = v160[0];
        v160[0] = v168;
        TSUDecimal::operator*=();
        v164 = v160[0];
        v160[0] = v54;
        TSUDecimal::operator-=();
        v165 = v160[0];
        *&v160[0] = v25;
        *(&v160[0] + 1) = v27;
        TSUDecimal::operator*=();
        v55 = v160[0];
        v160[0] = v173;
        TSUDecimal::operator*=();
        v56 = v160[0];
        v160[0] = v169;
        TSUDecimal::operator*=();
        v161 = v160[0];
        v160[0] = v56;
        TSUDecimal::operator-=();
        v162 = v160[0];
        *&v160[0] = v29;
        *(&v160[0] + 1) = v31;
        TSUDecimal::operator*=();
        v163 = v160[0];
        v160[0] = v55;
        TSUDecimal::operator-=();
        v57 = v160[0];
        v160[0] = v173;
        TSUDecimal::operator*=();
        v58 = v160[0];
        v160[0] = v169;
        TSUDecimal::operator*=();
        v160[32] = v160[0];
        v160[0] = v58;
        TSUDecimal::operator-=();
        v160[33] = v160[0];
        *&v160[0] = v33;
        *(&v160[0] + 1) = v35;
        TSUDecimal::operator*=();
        v160[34] = v160[0];
        v160[0] = v57;
        TSUDecimal::operator+=();
        v166 = v160[0];
        *&v160[0] = v144;
        *(&v160[0] + 1) = v142;
        TSUDecimal::operator*=();
        v143 = *(&v160[0] + 1);
        v145 = *&v160[0];
        v160[0] = v171;
        TSUDecimal::operator*=();
        v59 = v160[0];
        v160[0] = v168;
        TSUDecimal::operator*=();
        v160[28] = v160[0];
        v160[0] = v59;
        TSUDecimal::operator-=();
        v160[29] = v160[0];
        *&v160[0] = v154;
        *(&v160[0] + 1) = v23;
        TSUDecimal::operator*=();
        v60 = v160[0];
        *(&v160[0] + 1) = v38;
        *&v160[0] = v141;
        TSUDecimal::operator*=();
        v61 = v160[0];
        *&v160[0] = v140;
        *(&v160[0] + 1) = v139;
        TSUDecimal::operator*=();
        v160[25] = v160[0];
        v160[0] = v61;
        TSUDecimal::operator-=();
        v160[26] = v160[0];
        *&v160[0] = v29;
        *(&v160[0] + 1) = v157;
        TSUDecimal::operator*=();
        v160[27] = v160[0];
        v160[0] = v60;
        TSUDecimal::operator-=();
        v62 = v160[0];
        *&v160[0] = v141;
        *(&v160[0] + 1) = v38;
        TSUDecimal::operator*=();
        v63 = v160[0];
        *&v160[0] = v140;
        *(&v160[0] + 1) = v139;
        TSUDecimal::operator*=();
        v160[22] = v160[0];
        v160[0] = v63;
        TSUDecimal::operator-=();
        v160[23] = v160[0];
        *&v160[0] = v33;
        *(&v160[0] + 1) = v155;
        TSUDecimal::operator*=();
        v160[24] = v160[0];
        v160[0] = v62;
        TSUDecimal::operator+=();
        v160[30] = v160[0];
        *&v160[0] = v148;
        *(&v160[0] + 1) = v146;
        TSUDecimal::operator*=();
        v160[31] = v160[0];
        *&v160[0] = v145;
        *(&v160[0] + 1) = v143;
        TSUDecimal::operator-=();
        v147 = *(&v160[0] + 1);
        v149 = *&v160[0];
        v160[0] = v173;
        TSUDecimal::operator*=();
        v64 = v160[0];
        v160[0] = v169;
        TSUDecimal::operator*=();
        v160[18] = v160[0];
        v160[0] = v64;
        TSUDecimal::operator-=();
        v160[19] = v160[0];
        *&v160[0] = v154;
        *(&v160[0] + 1) = v23;
        TSUDecimal::operator*=();
        v65 = v160[0];
        *&v160[0] = v141;
        *(&v160[0] + 1) = v38;
        TSUDecimal::operator*=();
        v66 = v160[0];
        *&v160[0] = v140;
        *(&v160[0] + 1) = v139;
        TSUDecimal::operator*=();
        v160[15] = v160[0];
        v160[0] = v66;
        TSUDecimal::operator-=();
        v160[16] = v160[0];
        *&v160[0] = v25;
        *(&v160[0] + 1) = v156;
        TSUDecimal::operator*=();
        v160[17] = v160[0];
        v160[0] = v65;
        TSUDecimal::operator-=();
        v67 = v160[0];
        *&v160[0] = v141;
        *(&v160[0] + 1) = v38;
        TSUDecimal::operator*=();
        v68 = v160[0];
        *&v160[0] = v140;
        *(&v160[0] + 1) = v139;
        TSUDecimal::operator*=();
        v160[12] = v160[0];
        v160[0] = v68;
        TSUDecimal::operator-=();
        v160[13] = v160[0];
        *&v160[0] = v33;
        *(&v160[0] + 1) = v155;
        TSUDecimal::operator*=();
        v160[14] = v160[0];
        v160[0] = v67;
        TSUDecimal::operator+=();
        v160[20] = v160[0];
        *&v160[0] = v151;
        *(&v160[0] + 1) = v150;
        TSUDecimal::operator*=();
        v160[21] = v160[0];
        *&v160[0] = v149;
        *(&v160[0] + 1) = v147;
        TSUDecimal::operator+=();
        v69 = v160[0];
        v160[0] = v173;
        TSUDecimal::operator*=();
        v70 = v160[0];
        v160[0] = v169;
        TSUDecimal::operator*=();
        v160[8] = v160[0];
        v160[0] = v70;
        TSUDecimal::operator-=();
        v160[9] = v160[0];
        *&v160[0] = v154;
        *(&v160[0] + 1) = v23;
        TSUDecimal::operator*=();
        v71 = v160[0];
        *&v160[0] = v141;
        *(&v160[0] + 1) = v38;
        TSUDecimal::operator*=();
        v72 = v160[0];
        *&v160[0] = v140;
        *(&v160[0] + 1) = v139;
        TSUDecimal::operator*=();
        v160[5] = v160[0];
        v160[0] = v72;
        TSUDecimal::operator-=();
        v160[6] = v160[0];
        *&v160[0] = v25;
        *(&v160[0] + 1) = v156;
        TSUDecimal::operator*=();
        v160[7] = v160[0];
        v160[0] = v71;
        TSUDecimal::operator-=();
        v73 = v160[0];
        *&v160[0] = v141;
        *(&v160[0] + 1) = v38;
        TSUDecimal::operator*=();
        v74 = v160[0];
        *&v160[0] = v140;
        *(&v160[0] + 1) = v139;
        TSUDecimal::operator*=();
        v160[2] = v160[0];
        v160[0] = v74;
        TSUDecimal::operator-=();
        v160[3] = v160[0];
        *&v160[0] = v29;
        *(&v160[0] + 1) = v157;
        TSUDecimal::operator*=();
        v160[4] = v160[0];
        v160[0] = v73;
        TSUDecimal::operator+=();
        v160[10] = v160[0];
        *&v160[0] = v153;
        *(&v160[0] + 1) = v152;
        TSUDecimal::operator*=();
        v160[11] = v160[0];
        v160[0] = v69;
LABEL_14:
        TSUDecimal::operator-=();
LABEL_16:
        v172 = v160[0];
        goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!width)
  {
LABEL_8:
    TSUDecimal::operator=();
    goto LABEL_17;
  }

  if (width == 1)
  {
    *&v160[0] = 0;
    v75 = objc_msgSend_valueAtCoord_(self, v6, v160, v8);
LABEL_12:
    v172._decimal.w[0] = v75;
    v172._decimal.w[1] = v76;
    goto LABEL_17;
  }

LABEL_18:
  v122 = objc_msgSend_classifyMatrix(self, v6, v7, v8);
  if ((v122 & 4) != 0)
  {
    goto LABEL_8;
  }

  if ((v122 - 1) < 3)
  {
    v75 = objc_msgSend_productOfDiagonal(self, v123, v124, v125);
    goto LABEL_12;
  }

  if (v122 == 8 || v122 == 4)
  {
    goto LABEL_8;
  }

  TSUDecimal::operator=();
  objc_msgSend_pluDecompositionWithPivotDet_(self, v126, &v171, v127);
  *&v170 = objc_msgSend_productOfDiagonal(*(*&v160[0] + 8), v128, v129, v130);
  *(&v170 + 1) = v131;
  *&v169 = objc_msgSend_productOfDiagonal(*(*&v160[0] + 16), v131, v132, v133);
  *(&v169 + 1) = v134;
  v173 = v171;
  TSUDecimal::operator*=();
  TSUDecimal::operator*=();
  v172 = v173;
  if ((TSUDecimal::isNaN(&v172) & 1) != 0 || TSUDecimal::isInf(&v172))
  {
    v172._decimal.w[0] = objc_msgSend_simpleRecursiveDeterminant(self, v135, v136, v137);
    v172._decimal.w[1] = v138;
  }

  v173._decimal.w[0] = v160;
  sub_22107C2C0(&v173);
LABEL_17:
  v120 = v172._decimal.w[0];
  v121 = v172._decimal.w[1];
  result._decimal.w[1] = v121;
  result._decimal.w[0] = v120;
  return result;
}

- (TSUDecimal)simpleRecursiveDeterminant
{
  TSUDecimal::operator=();
  if (objc_msgSend_dimensions(self, v3, v4, v5) >> 32)
  {
    v8 = 0;
    do
    {
      LODWORD(v19[0]) = 0;
      HIDWORD(v19[0]) = v8;
      v18._decimal.w[0] = objc_msgSend_valueAtCoord_(self, v6, v19, v7);
      v18._decimal.w[1] = v9;
      if ((TSUDecimal::isZero(&v18) & 1) == 0)
      {
        v16 = objc_msgSend_cofactorAtCoord_(self, v10, v19[0], v12);
        v17 = v13;
        v20 = v18;
        TSUDecimal::operator*=();
        TSUDecimal::operator+=();
      }

      ++v8;
    }

    while (v8 < objc_msgSend_dimensions(self, v10, v11, v12, v16, v17) >> 32);
  }

  v14 = v19[1];
  v15 = v19[2];
  result._decimal.w[1] = v15;
  result._decimal.w[0] = v14;
  return result;
}

- (TSUDecimal)cofactorAtCoord:(TSCEGridCoord)coord
{
  column = coord.column;
  row = coord.row;
  p_dimensions = &self->_dimensions;
  v7 = LOBYTE(coord.row) + LOBYTE(coord.column);
  v28.width = self->_dimensions.width - 1;
  v28.height = v28.width;
  v8 = [TSCEDecimalMatrix alloc];
  v13 = objc_msgSend_initWithDimensions_(v8, v9, &v28, v10);
  LODWORD(v14) = 0;
  LODWORD(v15) = 0;
  v26 = 0;
  v27 = 0;
  do
  {
    if (v15 != column && v14 != row)
    {
      v25[0] = objc_msgSend_valueAtCoord_(self, v11, &v27, v12);
      v25[1] = v16;
      objc_msgSend_setValue_atCoord_(v13, v16, v25, &v26);
      v26 = TSCEGridDimensions::nextCoordRowMajorOrder(&v28, &v26);
    }

    v15 = TSCEGridDimensions::nextCoordRowMajorOrder(p_dimensions, &v27);
    v27 = v15;
    v14 = HIDWORD(v15);
  }

  while (v26.column != 0x7FFFFFFF && v26.row != 0x7FFFFFFF);
  v24 = 0;
  v18 = objc_msgSend_determinantWithError_(v13, v11, &v24, v12);
  v20 = v19;
  v21 = v24;
  v29._decimal.w[0] = v18;
  v29._decimal.w[1] = v20;
  if (v7)
  {
    TSUDecimal::negate(&v29);
  }

  v22 = v29._decimal.w[0];
  v23 = v29._decimal.w[1];
  result._decimal.w[1] = v23;
  result._decimal.w[0] = v22;
  return result;
}

- (id)cofactorMatrix
{
  v3 = [TSCEDecimalMatrix alloc];
  v8 = objc_msgSend_initWithDimensions_(v3, v4, &self->_dimensions, v5);
  if (self->_dimensions.height * self->_dimensions.width == 1)
  {
    TSUDecimal::operator=();
    v14 = 0;
    objc_msgSend_setValue_atCoord_(v8, v9, v15, &v14);
  }

  else
  {
    v10 = 0;
    v14 = 0;
    do
    {
      v15[0] = objc_msgSend_cofactorAtCoord_(self, v6, v10, v7);
      v15[1] = v11;
      objc_msgSend_setValue_atCoord_(v8, v11, v15, &v14);
      v12 = TSCEGridDimensions::nextCoordRowMajorOrder(&self->_dimensions, &v14);
      v10 = v12;
      v14 = v12;
    }

    while (v12 != 0x7FFFFFFF && (v12 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
  }

  return v8;
}

- (id)adjointMatrix
{
  v4 = objc_msgSend_cofactorMatrix(self, a2, v2, v3);
  v8 = objc_msgSend_transpose(v4, v5, v6, v7);

  return v8;
}

- (id)inverseWithError:(id *)error
{
  if (self->_dimensions.height * self->_dimensions.width)
  {
    v19._decimal.w[0] = objc_msgSend_determinantWithError_(self, a2, error, v3);
    v19._decimal.w[1] = v6;
    if (!TSUDecimal::isZero(&v19))
    {
      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      v10 = objc_msgSend_adjointMatrix(self, v12, v13, v14);
      objc_msgSend_multiplyByScalar_(v10, v15, &v18, v16);
      goto LABEL_9;
    }

    if (*error)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v11 = objc_msgSend_noMatrixInverseError(TSCEError, v7, v8, v9);
  }

  else
  {
    v11 = objc_msgSend_emptyArrayError(TSCEError, a2, error, v3);
  }

  v10 = 0;
  *error = v11;
LABEL_9:

  return v10;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end