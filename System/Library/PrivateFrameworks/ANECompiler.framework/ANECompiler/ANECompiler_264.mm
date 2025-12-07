float32_t mlir::copyElementsAttrData<float>(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v152[5] = *MEMORY[0x1E69E9840];
  v149 = a1;
  v150 = a2;
  Type = mlir::ElementsAttr::getType(&v149);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawStringData = Type;
    mlir::Builder::getI32VectorAttr();
    Type = RawStringData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v148[0] = Type;
  v148[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v148);
  v18 = mlir::ElementsAttr::isSplat(&v149);
  v19 = v149;
  if (mlir::DenseElementsAttr::classof(v149))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v151[0] = v20;
  if (v20)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(v151);
    v4 = v21;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_27:
    NumElements = mlir::ElementsAttr::getNumElements(v149, v150);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_39;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_52;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_58;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_73;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_88;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_103;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_118;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_133;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements >= 1)
      {
        v67 = 0;
        if (NumElements < 8)
        {
          goto LABEL_153;
        }

        if ((a3 - RawStringData) <= 0x1F)
        {
          goto LABEL_153;
        }

        v67 = NumElements & 0x7FFFFFFFFFFFFFF8;
        v68 = (RawStringData + 16);
        f32 = a3[1].f32;
        v70 = NumElements & 0x7FFFFFFFFFFFFFF8;
        do
        {
          _Q0 = v68[-1];
          v71 = *v68;
          *(f32 - 1) = _Q0;
          *f32 = v71;
          v68 += 2;
          f32 += 8;
          v70 -= 8;
        }

        while (v70);
        if (NumElements != v67)
        {
LABEL_153:
          v72 = v67;
          v73 = &RawStringData[4 * v67];
          v74 = NumElements - v67;
          v75 = &a3->f32[v72];
          do
          {
            v76 = *v73;
            v73 += 4;
            _Q0.i32[0] = v76;
            *v75++ = v76;
            --v74;
          }

          while (v74);
        }
      }

      return _Q0.f32[0];
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return _Q0.f32[0];
      }

      goto LABEL_169;
    }

    if (!mlir::Type::isBF16(&isSplat))
    {
LABEL_187:
      if (!mlir::Type::isInteger(&isSplat, 1))
      {
        mlir::Type::getIntOrFloatBitWidth(&isSplat);
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
        mlir::detail::unpackQuantizedData<float>(RawStringData, v4, a3->f32, NumElements, IntOrFloatBitWidth);
        return _Q0.f32[0];
      }

      llvm::SmallVector<char,40u>::SmallVector(v151, NumElements);
      mlir::detail::unpackBooleanData(RawStringData, v4, v151[0], v151[1]);
      v96 = v151[0];
      if (NumElements < 1)
      {
        goto LABEL_206;
      }

      if (v18)
      {
        if (NumElements < 4 || v151[0] + 1 > a3 && v151[0] < &a3->f32[NumElements])
        {
          v97 = 0;
          goto LABEL_194;
        }

        if (NumElements >= 0x10)
        {
          v97 = NumElements & 0x7FFFFFFFFFFFFFF0;
          v122 = vld1_dup_s8(v151[0]);
          _Q0 = vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(v122, 8uLL), 8uLL)));
          v123 = NumElements & 0x7FFFFFFFFFFFFFF0;
          v124 = a3;
          do
          {
            *v124 = _Q0;
            *(v124 + 1) = _Q0;
            *(v124 + 2) = _Q0;
            *(v124 + 3) = _Q0;
            v124 += 16;
            v123 -= 16;
          }

          while (v123);
          if (NumElements == v97)
          {
            goto LABEL_206;
          }

          if ((NumElements & 0xC) == 0)
          {
LABEL_194:
            v98 = NumElements - v97;
            v99 = &a3->f32[v97];
            do
            {
              _Q0.i8[0] = *v96;
              _Q0.i64[0] = vmovl_s16(*&vmovl_s8(*_Q0.f32)).u64[0];
              _Q0.f32[0] = _Q0.i32[0];
              *v99++ = _Q0.f32[0];
              --v98;
            }

            while (v98);
            goto LABEL_206;
          }
        }

        else
        {
          v97 = 0;
        }

        v125 = v97;
        v97 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
        _Q0 = vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vdup_n_s16(*v96), 8uLL), 8uLL)));
        v126 = &a3->f32[v125];
        v127 = v125 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
        do
        {
          *v126 = _Q0;
          v126 += 4;
          v127 += 4;
        }

        while (v127);
        if (NumElements != v97)
        {
          goto LABEL_194;
        }

LABEL_206:
        if (v96 != v152)
        {
          free(v96);
        }

        return _Q0.f32[0];
      }

      if (NumElements < 4 || v151[0] + NumElements > a3 && v151[0] < &a3->f32[NumElements])
      {
        v101 = 0;
        goto LABEL_204;
      }

      if (NumElements >= 0x10)
      {
        v101 = NumElements & 0x7FFFFFFFFFFFFFF0;
        _Q0.i32[0] = 218103807;
        v95 = xmmword_1A75EBD20;
        v128 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v129 = a3;
        v130 = v151[0];
        do
        {
          v131 = *v130++;
          v129[2] = vcvtq_n_f32_s32(vqtbl1q_s8(v131, xmmword_1A75EBD20), 0x18uLL);
          v129[3] = vcvtq_n_f32_s32(vqtbl1q_s8(v131, xmmword_1A75EBD10), 0x18uLL);
          *v129 = vcvtq_n_f32_s32(vqtbl1q_s8(v131, xmmword_1A75EBD40), 0x18uLL);
          v129[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v131, xmmword_1A75EBD30), 0x18uLL);
          v129 += 4;
          v128 -= 16;
        }

        while (v128);
        if (NumElements == v101)
        {
          goto LABEL_206;
        }

        if ((NumElements & 0xC) == 0)
        {
LABEL_204:
          v102 = &v96[v101];
          v103 = NumElements - v101;
          v104 = &a3->f32[v101];
          do
          {
            v105 = *v102++;
            _Q0.f32[0] = v105;
            *v104++ = v105;
            --v103;
          }

          while (v103);
          goto LABEL_206;
        }
      }

      else
      {
        v101 = 0;
      }

      v132 = v101;
      v101 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v133 = &v96[v132];
      v134 = &a3->f32[v132];
      v135 = v132 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      _Q0.i32[0] = 0xFFFFFF;
      do
      {
        v136 = *v133++;
        v95.i32[0] = v136;
        v95 = vcvtq_n_f32_s32(vqtbl1q_s8(v95, xmmword_1A75EBD40), 0x18uLL);
        *v134 = v95;
        v134 += 4;
        v135 += 4;
      }

      while (v135);
      if (NumElements == v101)
      {
        goto LABEL_206;
      }

      goto LABEL_204;
    }

    if (NumElements < 1)
    {
      return _Q0.f32[0];
    }

    if (NumElements < 4)
    {
      v89 = 0;
      goto LABEL_215;
    }

    if (NumElements >= 0x10)
    {
      v89 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v106 = (RawStringData + 16);
      v107 = a3[2].f32;
      v108 = NumElements & 0x7FFFFFFFFFFFFFF0;
      do
      {
        _Q0 = *v106[-2].i8;
        _Q1 = *v106->i8;
        v111 = vshll_n_s16(*&_Q0, 0x10uLL);
        __asm { SHLL2           V0.4S, V0.8H, #0x10 }

        v112 = vshll_n_s16(*v106, 0x10uLL);
        __asm { SHLL2           V1.4S, V1.8H, #0x10 }

        *(v107 - 2) = v111;
        *(v107 - 1) = _Q0;
        *v107 = v112;
        *(v107 + 1) = _Q1;
        v107 += 16;
        v106 += 4;
        v108 -= 16;
      }

      while (v108);
      if (NumElements == v89)
      {
        return _Q0.f32[0];
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_215:
        v118 = &RawStringData[2 * v89];
        v119 = NumElements - v89;
        v120 = &a3->f32[v89];
        do
        {
          v121 = *v118;
          v118 += 2;
          *v120++ = v121 << 16;
          --v119;
        }

        while (v119);
        return _Q0.f32[0];
      }
    }

    else
    {
      v89 = 0;
    }

    v113 = v89;
    v89 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v114 = &RawStringData[2 * v113];
    v115 = &a3->f32[v113];
    v116 = v113 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v117 = *v114++;
      _Q0 = vshll_n_s16(v117, 0x10uLL);
      *v115 = _Q0;
      v115 += 4;
      v116 += 4;
    }

    while (v116);
    if (NumElements == v89)
    {
      return _Q0.f32[0];
    }

    goto LABEL_215;
  }

  if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  v151[0] = v24;
  if (v24)
  {
    RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(v151);
    v4 = v25;
    if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_29:
    for (i = 0; i != NumElements; ++i)
    {
      if (v18)
      {
        v27 = 0;
      }

      else
      {
        v27 = i;
      }

      _Q0.i8[0] = RawStringData[v27];
      _Q0.f32[0] = _Q0.u32[0];
      a3->i32[i] = _Q0.i32[0];
    }

    return _Q0.f32[0];
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_39:
    for (j = 0; j != NumElements; ++j)
    {
      if (v18)
      {
        v29 = 0;
      }

      else
      {
        v29 = j;
      }

      _Q0.i8[0] = RawStringData[v29];
      _Q0.i64[0] = vmovl_s16(*&vmovl_s8(*_Q0.f32)).u64[0];
      _Q0.f32[0] = _Q0.i32[0];
      a3->i32[j] = _Q0.i32[0];
    }

    return _Q0.f32[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_52:
    if (NumElements >= 2)
    {
      v34 = 0;
      v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v35 = &a3->f32[1];
      do
      {
        if (v18)
        {
          v36 = 0;
        }

        else
        {
          v36 = v34;
        }

        if (v18)
        {
          v37 = 0;
        }

        else
        {
          v37 = v34 + 1;
        }

        _Q0.i16[0] = *&RawStringData[2 * v36];
        _Q0.f32[0] = _Q0.u32[0];
        LOWORD(v30) = *&RawStringData[2 * v37];
        v30 = LODWORD(v30);
        *(v35 - 1) = _Q0.f32[0];
        *v35 = v30;
        v35 += 2;
        v34 += 2;
      }

      while (v34 != v31);
      goto LABEL_242;
    }

    v31 = 0;
    do
    {
      if (v18)
      {
        v137 = 0;
      }

      else
      {
        v137 = v31;
      }

      _Q0.i16[0] = *&RawStringData[2 * v137];
      _Q0.f32[0] = _Q0.u32[0];
      a3->i32[v31++] = _Q0.i32[0];
LABEL_242:
      ;
    }

    while (NumElements != v31);
    return _Q0.f32[0];
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_58:
    if (NumElements >= 2)
    {
      v39 = 0;
      v33 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v40 = &a3->f32[1];
      do
      {
        if (v18)
        {
          v41 = 0;
        }

        else
        {
          v41 = v39;
        }

        _Q0.i16[0] = *&RawStringData[2 * v41];
        if (v18)
        {
          v42 = 0;
        }

        else
        {
          v42 = v39 + 1;
        }

        _Q0.i64[0] = vmovl_s16(*_Q0.f32).u64[0];
        _Q0.f32[0] = _Q0.i32[0];
        v32.i16[0] = *&RawStringData[2 * v42];
        v32 = vmovl_s16(v32).u64[0];
        *v32.i32 = v32.i32[0];
        *(v40 - 1) = _Q0.f32[0];
        *v40 = *v32.i32;
        v40 += 2;
        v39 += 2;
      }

      while (v39 != v33);
      goto LABEL_248;
    }

    v33 = 0;
    do
    {
      if (v18)
      {
        v138 = 0;
      }

      else
      {
        v138 = v33;
      }

      _Q0.i16[0] = *&RawStringData[2 * v138];
      _Q0.i64[0] = vmovl_s16(*_Q0.f32).u64[0];
      _Q0.f32[0] = _Q0.i32[0];
      a3->i32[v33++] = _Q0.i32[0];
LABEL_248:
      ;
    }

    while (NumElements != v33);
    return _Q0.f32[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_73:
    if (NumElements >= 2)
    {
      v44 = 0;
      v38 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v45 = &a3->f32[1];
      do
      {
        if (v18)
        {
          v46 = 0;
        }

        else
        {
          v46 = v44;
        }

        if (v18)
        {
          v47 = 0;
        }

        else
        {
          v47 = v44 + 1;
        }

        _Q0.f32[0] = *&RawStringData[4 * v46];
        v48 = *&RawStringData[4 * v47];
        *(v45 - 1) = _Q0.f32[0];
        *v45 = v48;
        v45 += 2;
        v44 += 2;
      }

      while (v44 != v38);
      goto LABEL_254;
    }

    v38 = 0;
    do
    {
      if (v18)
      {
        v139 = 0;
      }

      else
      {
        v139 = v38;
      }

      _Q0.f32[0] = *&RawStringData[4 * v139];
      a3->i32[v38++] = _Q0.i32[0];
LABEL_254:
      ;
    }

    while (NumElements != v38);
    return _Q0.f32[0];
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_88:
    if (NumElements >= 2)
    {
      v50 = 0;
      v43 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v51 = &a3->f32[1];
      do
      {
        if (v18)
        {
          v52 = 0;
        }

        else
        {
          v52 = v50;
        }

        if (v18)
        {
          v53 = 0;
        }

        else
        {
          v53 = v50 + 1;
        }

        _Q0.f32[0] = *&RawStringData[4 * v52];
        v54 = *&RawStringData[4 * v53];
        *(v51 - 1) = _Q0.f32[0];
        *v51 = v54;
        v51 += 2;
        v50 += 2;
      }

      while (v50 != v43);
      goto LABEL_260;
    }

    v43 = 0;
    do
    {
      if (v18)
      {
        v140 = 0;
      }

      else
      {
        v140 = v43;
      }

      _Q0.f32[0] = *&RawStringData[4 * v140];
      a3->i32[v43++] = _Q0.i32[0];
LABEL_260:
      ;
    }

    while (NumElements != v43);
    return _Q0.f32[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_103:
    if (NumElements >= 2)
    {
      v56 = 0;
      v49 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v57 = &a3->f32[1];
      do
      {
        if (v18)
        {
          v58 = 0;
        }

        else
        {
          v58 = v56;
        }

        if (v18)
        {
          v59 = 0;
        }

        else
        {
          v59 = v56 + 1;
        }

        _Q0.f32[0] = *&RawStringData[8 * v58];
        v60 = *&RawStringData[8 * v59];
        *(v57 - 1) = _Q0.f32[0];
        *v57 = v60;
        v57 += 2;
        v56 += 2;
      }

      while (v56 != v49);
      goto LABEL_266;
    }

    v49 = 0;
    do
    {
      if (v18)
      {
        v141 = 0;
      }

      else
      {
        v141 = v49;
      }

      _Q0.f32[0] = *&RawStringData[8 * v141];
      a3->f32[v49++] = _Q0.f32[0];
LABEL_266:
      ;
    }

    while (NumElements != v49);
    return _Q0.f32[0];
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_118:
    if (NumElements >= 2)
    {
      v62 = 0;
      v55 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v63 = &a3->f32[1];
      do
      {
        if (v18)
        {
          v64 = 0;
        }

        else
        {
          v64 = v62;
        }

        if (v18)
        {
          v65 = 0;
        }

        else
        {
          v65 = v62 + 1;
        }

        _Q0.f32[0] = *&RawStringData[8 * v64];
        v66 = *&RawStringData[8 * v65];
        *(v63 - 1) = _Q0.f32[0];
        *v63 = v66;
        v63 += 2;
        v62 += 2;
      }

      while (v62 != v55);
      goto LABEL_272;
    }

    v55 = 0;
    do
    {
      if (v18)
      {
        v142 = 0;
      }

      else
      {
        v142 = v55;
      }

      _Q0.f32[0] = *&RawStringData[8 * v142];
      a3->f32[v55++] = _Q0.f32[0];
LABEL_272:
      ;
    }

    while (NumElements != v55);
    return _Q0.f32[0];
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_133:
    if (NumElements >= 2)
    {
      v77 = 0;
      v61 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v78 = &a3->f32[1];
      do
      {
        if (v18)
        {
          v79 = 0;
        }

        else
        {
          v79 = v77;
        }

        if (v18)
        {
          v80 = 0;
        }

        else
        {
          v80 = v77 + 1;
        }

        _H0 = *&RawStringData[2 * v79];
        _H1 = *&RawStringData[2 * v80];
        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H1
        }

        *(v78 - 1) = _Q0.f32[0];
        *v78 = _S1;
        v78 += 2;
        v77 += 2;
      }

      while (v77 != v61);
      goto LABEL_278;
    }

    v61 = 0;
    do
    {
      if (v18)
      {
        v143 = 0;
      }

      else
      {
        v143 = v61;
      }

      _H0 = *&RawStringData[2 * v143];
      __asm { FCVT            S0, H0 }

      a3->i32[v61++] = _Q0.i32[0];
LABEL_278:
      ;
    }

    while (NumElements != v61);
    return _Q0.f32[0];
  }

  if (mlir::Type::isF32(&isSplat))
  {
    _Q0.i32[0] = *RawStringData;
    a3->i32[0] = *RawStringData;
    return _Q0.f32[0];
  }

  if (!mlir::Type::isF64(&isSplat))
  {
    if (mlir::Type::isBF16(&isSplat))
    {
      a3->i32[0] = *RawStringData << 16;
      return _Q0.f32[0];
    }

    NumElements = 1;
    goto LABEL_187;
  }

  NumElements = 1;
LABEL_169:
  if (NumElements >= 2)
  {
    v90 = 0;
    v88 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v91 = &a3->f32[1];
    do
    {
      if (v18)
      {
        v92 = 0;
      }

      else
      {
        v92 = v90;
      }

      if (v18)
      {
        v93 = 0;
      }

      else
      {
        v93 = v90 + 1;
      }

      _Q0.f32[0] = *&RawStringData[8 * v92];
      v94 = *&RawStringData[8 * v93];
      *(v91 - 1) = _Q0.f32[0];
      *v91 = v94;
      v91 += 2;
      v90 += 2;
    }

    while (v90 != v88);
    goto LABEL_284;
  }

  v88 = 0;
  do
  {
    if (v18)
    {
      v145 = 0;
    }

    else
    {
      v145 = v88;
    }

    _Q0.f32[0] = *&RawStringData[8 * v145];
    a3->i32[v88++] = _Q0.i32[0];
LABEL_284:
    ;
  }

  while (NumElements != v88);
  return _Q0.f32[0];
}

float64_t mlir::copyElementsAttrData<double>(uint64_t a1, uint64_t a2, double *a3)
{
  v181[5] = *MEMORY[0x1E69E9840];
  v178 = a1;
  v179 = a2;
  Type = mlir::ElementsAttr::getType(&v178);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawData = Type;
    mlir::Builder::getI32VectorAttr();
    Type = RawData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v177[0] = Type;
  v177[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v177);
  v18 = mlir::ElementsAttr::isSplat(&v178);
  v19 = v178;
  if (mlir::DenseElementsAttr::classof(v178))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v180[0] = v20;
  if (!v20)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    v180[0] = v24;
    if (v24)
    {
      RawData = mlir::mps::MPSBufferTensorAttr::getRawData(v180);
      v4 = v25;
      if ((v18 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_20:
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_29:
      for (i = 0; i != NumElements; ++i)
      {
        if (v18)
        {
          v27 = 0;
        }

        else
        {
          v27 = i;
        }

        LOBYTE(_Q0.f64[0]) = RawData[v27];
        _Q0.f64[0] = *&_Q0.f64[0];
        a3[i] = _Q0.f64[0];
      }

      return _Q0.f64[0];
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_39:
      for (j = 0; j != NumElements; ++j)
      {
        if (v18)
        {
          v29 = 0;
        }

        else
        {
          v29 = j;
        }

        _Q0.f64[0] = RawData[v29];
        a3[j] = _Q0.f64[0];
      }

      return _Q0.f64[0];
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_52:
      if (NumElements >= 2)
      {
        v34 = 0;
        v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v35 = a3 + 1;
        do
        {
          if (v18)
          {
            v36 = 0;
          }

          else
          {
            v36 = v34;
          }

          if (v18)
          {
            v37 = 0;
          }

          else
          {
            v37 = v34 + 1;
          }

          LOWORD(_Q0.f64[0]) = *&RawData[2 * v36];
          _Q0.f64[0] = *&_Q0.f64[0];
          LOWORD(v30) = *&RawData[2 * v37];
          v30 = *&v30;
          *(v35 - 1) = _Q0.f64[0];
          *v35 = v30;
          v35 += 2;
          v34 += 2;
        }

        while (v34 != v31);
        goto LABEL_238;
      }

      v31 = 0;
      do
      {
        if (v18)
        {
          v165 = 0;
        }

        else
        {
          v165 = v31;
        }

        LOWORD(_Q0.f64[0]) = *&RawData[2 * v165];
        _Q0.f64[0] = *&_Q0.f64[0];
        a3[v31++] = _Q0.f64[0];
LABEL_238:
        ;
      }

      while (NumElements != v31);
      return _Q0.f64[0];
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_58:
      if (NumElements >= 2)
      {
        v40 = 0;
        v33 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v41 = a3 + 1;
        do
        {
          if (v18)
          {
            v42 = 0;
          }

          else
          {
            v42 = v40;
          }

          if (v18)
          {
            v43 = 0;
          }

          else
          {
            v43 = v40 + 1;
          }

          LOWORD(_Q0.f64[0]) = *&RawData[2 * v42];
          _Q0.f64[0] = vmovl_s16(*&_Q0.f64[0]).i32[0];
          LOWORD(v32) = *&RawData[2 * v43];
          v32 = vmovl_s16(*&v32).i32[0];
          *(v41 - 1) = _Q0.f64[0];
          *v41 = v32;
          v41 += 2;
          v40 += 2;
        }

        while (v40 != v33);
        goto LABEL_244;
      }

      v33 = 0;
      do
      {
        if (v18)
        {
          v166 = 0;
        }

        else
        {
          v166 = v33;
        }

        LOWORD(_Q0.f64[0]) = *&RawData[2 * v166];
        _Q0.f64[0] = vmovl_s16(*&_Q0.f64[0]).i32[0];
        a3[v33++] = _Q0.f64[0];
LABEL_244:
        ;
      }

      while (NumElements != v33);
      return _Q0.f64[0];
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_73:
      if (NumElements >= 2)
      {
        v45 = 0;
        v39 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v46 = a3 + 1;
        do
        {
          if (v18)
          {
            v47 = 0;
          }

          else
          {
            v47 = v45;
          }

          if (v18)
          {
            v48 = 0;
          }

          else
          {
            v48 = v45 + 1;
          }

          LODWORD(_Q0.f64[0]) = *&RawData[4 * v47];
          _Q0.f64[0] = *&_Q0.f64[0];
          LODWORD(v38) = *&RawData[4 * v48];
          v38 = *&v38;
          *(v46 - 1) = _Q0.f64[0];
          *v46 = v38;
          v46 += 2;
          v45 += 2;
        }

        while (v45 != v39);
        goto LABEL_250;
      }

      v39 = 0;
      do
      {
        if (v18)
        {
          v167 = 0;
        }

        else
        {
          v167 = v39;
        }

        LODWORD(_Q0.f64[0]) = *&RawData[4 * v167];
        _Q0.f64[0] = *&_Q0.f64[0];
        a3[v39++] = _Q0.f64[0];
LABEL_250:
        ;
      }

      while (NumElements != v39);
      return _Q0.f64[0];
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_88:
      if (NumElements >= 2)
      {
        v50 = 0;
        v44 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v51 = a3 + 1;
        do
        {
          if (v18)
          {
            v52 = 0;
          }

          else
          {
            v52 = v50;
          }

          v53 = *&RawData[4 * v52];
          if (v18)
          {
            v54 = 0;
          }

          else
          {
            v54 = v50 + 1;
          }

          _Q0.f64[0] = v53;
          v55 = *&RawData[4 * v54];
          *(v51 - 1) = _Q0.f64[0];
          *v51 = v55;
          v51 += 2;
          v50 += 2;
        }

        while (v50 != v44);
        goto LABEL_256;
      }

      v44 = 0;
      do
      {
        if (v18)
        {
          v168 = 0;
        }

        else
        {
          v168 = v44;
        }

        _Q0.f64[0] = *&RawData[4 * v168];
        a3[v44++] = _Q0.f64[0];
LABEL_256:
        ;
      }

      while (NumElements != v44);
      return _Q0.f64[0];
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      NumElements = 1;
LABEL_103:
      if (NumElements >= 2)
      {
        v57 = 0;
        v49 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v58 = a3 + 1;
        do
        {
          if (v18)
          {
            v59 = 0;
          }

          else
          {
            v59 = v57;
          }

          if (v18)
          {
            v60 = 0;
          }

          else
          {
            v60 = v57 + 1;
          }

          _Q0.f64[0] = *&RawData[8 * v59];
          v61 = *&RawData[8 * v60];
          *(v58 - 1) = _Q0.f64[0];
          *v58 = v61;
          v58 += 2;
          v57 += 2;
        }

        while (v57 != v49);
        goto LABEL_262;
      }

      v49 = 0;
      do
      {
        if (v18)
        {
          v169 = 0;
        }

        else
        {
          v169 = v49;
        }

        _Q0.f64[0] = *&RawData[8 * v169];
        a3[v49++] = _Q0.f64[0];
LABEL_262:
        ;
      }

      while (NumElements != v49);
      return _Q0.f64[0];
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      NumElements = 1;
LABEL_118:
      if (NumElements >= 2)
      {
        v63 = 0;
        v56 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v64 = a3 + 1;
        do
        {
          if (v18)
          {
            v65 = 0;
          }

          else
          {
            v65 = v63;
          }

          if (v18)
          {
            v66 = 0;
          }

          else
          {
            v66 = v63 + 1;
          }

          _Q0.f64[0] = *&RawData[8 * v65];
          v67 = *&RawData[8 * v66];
          *(v64 - 1) = _Q0.f64[0];
          *v64 = v67;
          v64 += 2;
          v63 += 2;
        }

        while (v63 != v56);
        goto LABEL_268;
      }

      v56 = 0;
      do
      {
        if (v18)
        {
          v170 = 0;
        }

        else
        {
          v170 = v56;
        }

        _Q0.f64[0] = *&RawData[8 * v170];
        a3[v56++] = _Q0.f64[0];
LABEL_268:
        ;
      }

      while (NumElements != v56);
      return _Q0.f64[0];
    }

    if (mlir::Type::isF16(&isSplat))
    {
      NumElements = 1;
LABEL_133:
      if (NumElements >= 2)
      {
        v69 = 0;
        v62 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v70 = a3 + 1;
        do
        {
          if (v18)
          {
            v71 = 0;
          }

          else
          {
            v71 = v69;
          }

          if (v18)
          {
            v72 = 0;
          }

          else
          {
            v72 = v69 + 1;
          }

          _H0 = *&RawData[2 * v71];
          _H1 = *&RawData[2 * v72];
          __asm
          {
            FCVT            D0, H0
            FCVT            D1, H1
          }

          *(v70 - 1) = *&_Q0.f64[0];
          *v70 = _D1;
          v70 += 2;
          v69 += 2;
        }

        while (v69 != v62);
        goto LABEL_274;
      }

      v62 = 0;
      do
      {
        if (v18)
        {
          v171 = 0;
        }

        else
        {
          v171 = v62;
        }

        _H0 = *&RawData[2 * v171];
        __asm { FCVT            D0, H0 }

        a3[v62++] = _Q0.f64[0];
LABEL_274:
        ;
      }

      while (NumElements != v62);
      return _Q0.f64[0];
    }

    if (mlir::Type::isF32(&isSplat))
    {
      NumElements = 1;
LABEL_148:
      if (NumElements >= 2)
      {
        v90 = 0;
        v68 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v91 = a3 + 1;
        do
        {
          if (v18)
          {
            v92 = 0;
          }

          else
          {
            v92 = v90;
          }

          if (v18)
          {
            v93 = 0;
          }

          else
          {
            v93 = v90 + 1;
          }

          _Q0.f64[0] = *&RawData[4 * v92];
          v94 = *&RawData[4 * v93];
          *(v91 - 1) = _Q0.f64[0];
          *v91 = v94;
          v91 += 2;
          v90 += 2;
        }

        while (v90 != v68);
        goto LABEL_280;
      }

      v68 = 0;
      do
      {
        if (v18)
        {
          v173 = 0;
        }

        else
        {
          v173 = v68;
        }

        _Q0.f64[0] = *&RawData[4 * v173];
        a3[v68++] = _Q0.f64[0];
LABEL_280:
        ;
      }

      while (NumElements != v68);
      return _Q0.f64[0];
    }

    if (mlir::Type::isF64(&isSplat))
    {
      _Q0.f64[0] = *RawData;
      *a3 = *RawData;
      return _Q0.f64[0];
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_186;
    }

    goto LABEL_184;
  }

  RawData = mlir::DenseElementsAttr::getRawStringData(v180);
  v4 = v21;
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_27:
  NumElements = mlir::ElementsAttr::getNumElements(v178, v179);
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_29;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_39;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_52;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_58;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_73;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_88;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_103;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_118;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_133;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    if (NumElements < 1)
    {
      return _Q0.f64[0];
    }

    goto LABEL_148;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    if (NumElements >= 1)
    {
      v80 = 0;
      if (NumElements < 4)
      {
        goto LABEL_168;
      }

      if ((a3 - RawData) <= 0x1F)
      {
        goto LABEL_168;
      }

      v80 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v81 = (RawData + 16);
      v82 = (a3 + 2);
      v83 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        _Q0 = v81[-1];
        v84 = *v81;
        v82[-1] = _Q0;
        *v82 = v84;
        v81 += 2;
        v82 += 2;
        v83 -= 4;
      }

      while (v83);
      if (NumElements != v80)
      {
LABEL_168:
        v85 = v80;
        v86 = &RawData[8 * v80];
        v87 = NumElements - v80;
        v88 = &a3[v85];
        do
        {
          v89 = *v86;
          v86 += 8;
          _Q0.f64[0] = v89;
          *v88++ = v89;
          --v87;
        }

        while (v87);
      }
    }

    return _Q0.f64[0];
  }

  if (!mlir::Type::isBF16(&isSplat))
  {
LABEL_186:
    if (!mlir::Type::isInteger(&isSplat, 1))
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<double>(RawData, v4, a3, NumElements, IntOrFloatBitWidth);
      return _Q0.f64[0];
    }

    llvm::SmallVector<char,40u>::SmallVector(v180, NumElements);
    mlir::detail::unpackBooleanData(RawData, v4, v180[0], v180[1]);
    v96 = v180[0];
    if (NumElements < 1)
    {
      goto LABEL_212;
    }

    if (v18)
    {
      if (NumElements < 4 || v180[0] + 1 > a3 && v180[0] < &a3[NumElements])
      {
        v97 = 0;
        goto LABEL_193;
      }

      if (NumElements >= 0x10)
      {
        v97 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v110 = vld1_dup_s8(v180[0]);
        v111.i32[0] = v110.u8[6];
        v111.i32[1] = v110.u8[7];
        v112 = vshr_n_s32(vshl_n_s32(v111, 0x18uLL), 0x18uLL);
        v113.i64[0] = v112.i32[0];
        v113.i64[1] = v112.i32[1];
        _Q0 = vcvtq_f64_s64(v113);
        v114.i32[0] = v110.u8[4];
        v114.i32[1] = v110.u8[5];
        v115 = vshr_n_s32(vshl_n_s32(v114, 0x18uLL), 0x18uLL);
        v113.i64[0] = v115.i32[0];
        v113.i64[1] = v115.i32[1];
        v116.i32[0] = v110.u8[2];
        v116.i32[1] = v110.u8[3];
        v117 = vcvtq_f64_s64(v113);
        v118 = vshr_n_s32(vshl_n_s32(v116, 0x18uLL), 0x18uLL);
        v113.i64[0] = v118.i32[0];
        v113.i64[1] = v118.i32[1];
        v119 = vcvtq_f64_s64(v113);
        v120.i32[0] = v110.u8[0];
        v120.i32[1] = v110.u8[1];
        v121 = vshr_n_s32(vshl_n_s32(v120, 0x18uLL), 0x18uLL);
        v113.i64[0] = v121.i32[0];
        v113.i64[1] = v121.i32[1];
        v122 = vcvtq_f64_s64(v113);
        v123 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v124 = a3;
        do
        {
          *v124 = v122;
          *(v124 + 1) = v119;
          *(v124 + 2) = v117;
          *(v124 + 3) = _Q0;
          *(v124 + 4) = v122;
          *(v124 + 5) = v119;
          *(v124 + 6) = v117;
          *(v124 + 7) = _Q0;
          v124 += 16;
          v123 -= 16;
        }

        while (v123);
        if (NumElements == v97)
        {
          goto LABEL_212;
        }

        if ((NumElements & 0xC) == 0)
        {
LABEL_193:
          v98 = NumElements - v97;
          v99 = &a3[v97];
          do
          {
            _Q0.f64[0] = *v96;
            *v99++ = _Q0.f64[0];
            --v98;
          }

          while (v98);
          goto LABEL_212;
        }
      }

      else
      {
        v97 = 0;
      }

      v125 = v97;
      v97 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v126 = vshr_n_s32(vshl_n_s32(vdup_n_s32(*v96), 0x18uLL), 0x18uLL);
      v127.i64[0] = v126.i32[0];
      v127.i64[1] = v126.i32[1];
      _Q0 = vcvtq_f64_s64(v127);
      v128 = &a3[v125];
      v129 = v125 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        *v128 = _Q0;
        v128[1] = _Q0;
        v128 += 2;
        v129 += 4;
      }

      while (v129);
      if (NumElements != v97)
      {
        goto LABEL_193;
      }

LABEL_212:
      if (v96 != v181)
      {
        free(v96);
      }

      return _Q0.f64[0];
    }

    if (NumElements < 4 || v180[0] + NumElements > a3 && v180[0] < &a3[NumElements])
    {
      v105 = 0;
      goto LABEL_210;
    }

    if (NumElements >= 0x10)
    {
      v105 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v130 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v131 = a3;
      v132 = v180[0];
      do
      {
        v133 = *v132++;
        v134 = vextq_s8(v133, v133, 8uLL).u64[0];
        v135.i32[0] = v134;
        v135.i32[1] = BYTE1(v134);
        v136 = vshr_n_s32(vshl_n_s32(v135, 0x18uLL), 0x18uLL);
        v137.i64[0] = v136.i32[0];
        v137.i64[1] = v136.i32[1];
        _Q0 = vcvtq_f64_s64(v137);
        v138.i32[0] = BYTE2(v134);
        v138.i32[1] = BYTE3(v134);
        v139 = vshr_n_s32(vshl_n_s32(v138, 0x18uLL), 0x18uLL);
        v137.i64[0] = v139.i32[0];
        v137.i64[1] = v139.i32[1];
        v140 = v137;
        v141.i32[0] = BYTE4(v134);
        v141.i32[1] = BYTE5(v134);
        v142 = vshr_n_s32(vshl_n_s32(v141, 0x18uLL), 0x18uLL);
        v137.i64[0] = v142.i32[0];
        v137.i64[1] = v142.i32[1];
        v143.i32[0] = BYTE6(v134);
        v143.i32[1] = HIBYTE(v134);
        v144 = vcvtq_f64_s64(v137);
        v145 = vshr_n_s32(vshl_n_s32(v143, 0x18uLL), 0x18uLL);
        v137.i64[0] = v145.i32[0];
        v137.i64[1] = v145.i32[1];
        v146 = vcvtq_f64_s64(v137);
        v143.i32[0] = v133.u8[0];
        v143.i32[1] = v133.u8[1];
        v147 = vshr_n_s32(vshl_n_s32(v143, 0x18uLL), 0x18uLL);
        v137.i64[0] = v147.i32[0];
        v137.i64[1] = v147.i32[1];
        v148 = vcvtq_f64_s64(v137);
        v149.i32[0] = v133.u8[2];
        v149.i32[1] = v133.u8[3];
        v150 = vshr_n_s32(vshl_n_s32(v149, 0x18uLL), 0x18uLL);
        v151.i32[0] = v133.u8[4];
        v151.i32[1] = v133.u8[5];
        v152 = vshr_n_s32(vshl_n_s32(v151, 0x18uLL), 0x18uLL);
        v137.i64[0] = v152.i32[0];
        v137.i64[1] = v152.i32[1];
        v153.i32[0] = v133.u8[6];
        v153.i32[1] = v133.u8[7];
        v154 = vcvtq_f64_s64(v137);
        v155 = vshr_n_s32(vshl_n_s32(v153, 0x18uLL), 0x18uLL);
        v137.i64[0] = v155.i32[0];
        v137.i64[1] = v155.i32[1];
        *(v131 + 2) = v154;
        *(v131 + 3) = vcvtq_f64_s64(v137);
        v137.i64[0] = v150.i32[0];
        v137.i64[1] = v150.i32[1];
        *v131 = v148;
        *(v131 + 1) = vcvtq_f64_s64(v137);
        *(v131 + 6) = v144;
        *(v131 + 7) = v146;
        *(v131 + 4) = _Q0;
        *(v131 + 5) = vcvtq_f64_s64(v140);
        v131 += 16;
        v130 -= 16;
      }

      while (v130);
      if (NumElements == v105)
      {
        goto LABEL_212;
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_210:
        v106 = &v96[v105];
        v107 = NumElements - v105;
        v108 = &a3[v105];
        do
        {
          v109 = *v106++;
          _Q0.f64[0] = v109;
          *v108++ = v109;
          --v107;
        }

        while (v107);
        goto LABEL_212;
      }
    }

    else
    {
      v105 = 0;
    }

    v156 = v105;
    v105 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v157 = &v96[v156];
    v158 = &a3[v156];
    v159 = v156 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v160 = *v157;
      v157 += 4;
      LODWORD(_Q0.f64[0]) = v160;
      v161 = vmovl_u16(*&vmovl_u8(*&_Q0.f64[0]));
      v162 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v161, v161, 8uLL), 0x18uLL), 0x18uLL);
      v163.i64[0] = v162.i32[0];
      v163.i64[1] = v162.i32[1];
      v164 = vcvtq_f64_s64(v163);
      *v161.i8 = vshr_n_s32(vshl_n_s32(*v161.i8, 0x18uLL), 0x18uLL);
      v163.i64[0] = v161.i32[0];
      v163.i64[1] = v161.i32[1];
      _Q0 = vcvtq_f64_s64(v163);
      *v158 = _Q0;
      v158[1] = v164;
      v158 += 2;
      v159 += 4;
    }

    while (v159);
    if (NumElements == v105)
    {
      goto LABEL_212;
    }

    goto LABEL_210;
  }

  if (NumElements < 1)
  {
    return _Q0.f64[0];
  }

LABEL_184:
  if (NumElements >= 2)
  {
    v101 = 0;
    v95 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v102 = a3;
    do
    {
      if (v18)
      {
        v103 = 0;
      }

      else
      {
        v103 = v101;
      }

      if (v18)
      {
        v104 = 0;
      }

      else
      {
        v104 = v101 + 1;
      }

      LOWORD(_Q0.f64[0]) = *&RawData[2 * v103];
      WORD2(_Q0.f64[0]) = *&RawData[2 * v104];
      _Q0 = vcvtq_f64_f32(vshl_n_s32(*&_Q0.f64[0], 0x10uLL));
      *v102 = _Q0;
      v102 += 2;
      v101 += 2;
    }

    while (v101 != v95);
    goto LABEL_286;
  }

  v95 = 0;
  do
  {
    if (v18)
    {
      v174 = 0;
    }

    else
    {
      v174 = v95;
    }

    _Q0.f64[0] = COERCE_FLOAT(*&RawData[2 * v174] << 16);
    a3[v95++] = _Q0.f64[0];
LABEL_286:
    ;
  }

  while (NumElements != v95);
  return _Q0.f64[0];
}

void mlir::copyElementsAttrData<char>(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  v117[5] = *MEMORY[0x1E69E9840];
  v114 = a1;
  v115 = a2;
  Type = mlir::ElementsAttr::getType(&v114);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawStringData = Type;
    mlir::Builder::getI32VectorAttr();
    Type = RawStringData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v113[0] = Type;
  v113[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v113);
  v18 = mlir::ElementsAttr::isSplat(&v114);
  v19 = v114;
  if (mlir::DenseElementsAttr::classof(v114))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v116[0] = v20;
  if (v20)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(v116);
    v4 = v21;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_27:
    NumElements = mlir::ElementsAttr::getNumElements(v114, v115);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_39;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_52;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_62;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_72;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_82;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      if (NumElements < 8 || &RawStringData[8 * NumElements] > a3 && &a3->i8[NumElements] > RawStringData)
      {
        v37 = 0;
        goto LABEL_97;
      }

      if (NumElements >= 0x20)
      {
        v37 = NumElements & 0x7FFFFFFFFFFFFFE0;
        v56 = (RawStringData + 128);
        v57 = &a3[1];
        v58 = NumElements & 0x7FFFFFFFFFFFFFE0;
        do
        {
          *&v59 = vqtbl4q_s8(v56[-2], xmmword_1A7600F10).u64[0];
          *&v60 = vqtbl4q_s8(*v56, xmmword_1A7600F10).u64[0];
          *(&v59 + 1) = vqtbl4q_s8(v56[-1], xmmword_1A7600F10).u64[0];
          *(&v60 + 1) = vqtbl4q_s8(v56[1], xmmword_1A7600F10).u64[0];
          *(v57 - 1) = v59;
          *v57 = v60;
          v56 += 4;
          v57 += 32;
          v58 -= 32;
        }

        while (v58);
        if (NumElements == v37)
        {
          return;
        }

        if ((NumElements & 0x18) == 0)
        {
LABEL_97:
          v38 = &RawStringData[8 * v37];
          v39 = NumElements - v37;
          v40 = &a3->u8[v37];
          do
          {
            v41 = *v38;
            v38 += 8;
            *v40++ = v41;
            --v39;
          }

          while (v39);
          return;
        }
      }

      else
      {
        v37 = 0;
      }

      v61 = v37;
      v37 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v62 = &RawStringData[8 * v61];
      v63 = &a3->u8[v61];
      v64 = v61 - (NumElements & 0x7FFFFFFFFFFFFFF8);
      do
      {
        *v63 = vqtbl4q_s8(*v62, xmmword_1A7600F20).u64[0];
        v63 += 8;
        ++v62;
        v64 += 8;
      }

      while (v64);
      if (NumElements == v37)
      {
        return;
      }

      goto LABEL_97;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      if (NumElements < 8 || &RawStringData[8 * NumElements] > a3 && &a3->i8[NumElements] > RawStringData)
      {
        v42 = 0;
        goto LABEL_106;
      }

      if (NumElements >= 0x20)
      {
        v42 = NumElements & 0x7FFFFFFFFFFFFFE0;
        v70 = (RawStringData + 128);
        v71 = &a3[1];
        v72 = NumElements & 0x7FFFFFFFFFFFFFE0;
        do
        {
          *&v73 = vqtbl4q_s8(v70[-2], xmmword_1A7600F10).u64[0];
          *&v74 = vqtbl4q_s8(*v70, xmmword_1A7600F10).u64[0];
          *(&v73 + 1) = vqtbl4q_s8(v70[-1], xmmword_1A7600F10).u64[0];
          *(&v74 + 1) = vqtbl4q_s8(v70[1], xmmword_1A7600F10).u64[0];
          *(v71 - 1) = v73;
          *v71 = v74;
          v70 += 4;
          v71 += 32;
          v72 -= 32;
        }

        while (v72);
        if (NumElements == v42)
        {
          return;
        }

        if ((NumElements & 0x18) == 0)
        {
LABEL_106:
          v43 = &RawStringData[8 * v42];
          v44 = NumElements - v42;
          v45 = &a3->u8[v42];
          do
          {
            v46 = *v43;
            v43 += 8;
            *v45++ = v46;
            --v44;
          }

          while (v44);
          return;
        }
      }

      else
      {
        v42 = 0;
      }

      v75 = v42;
      v42 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v76 = &RawStringData[8 * v75];
      v77 = &a3->u8[v75];
      v78 = v75 - (NumElements & 0x7FFFFFFFFFFFFFF8);
      do
      {
        *v77 = vqtbl4q_s8(*v76, xmmword_1A7600F20).u64[0];
        v77 += 8;
        ++v76;
        v78 += 8;
      }

      while (v78);
      if (NumElements == v42)
      {
        return;
      }

      goto LABEL_106;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_113;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_123;
    }

    if (!mlir::Type::isF64(&isSplat))
    {
      if (!mlir::Type::isBF16(&isSplat))
      {
        goto LABEL_162;
      }

      if (NumElements < 1)
      {
        return;
      }

LABEL_156:
      for (i = 0; i != NumElements; ++i)
      {
        if (v18)
        {
          v66 = 0;
        }

        else
        {
          v66 = i;
        }

        a3->i8[i] = COERCE_FLOAT(*&RawStringData[2 * v66] << 16);
      }

      return;
    }

    if (NumElements < 1)
    {
      return;
    }

    if (NumElements < 4 || &RawStringData[8 * NumElements] > a3 && &a3->i8[NumElements] > RawStringData)
    {
      v51 = 0;
      goto LABEL_139;
    }

    if (NumElements >= 0x10)
    {
      v51 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v81 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v82 = a3;
      v83 = RawStringData;
      do
      {
        *v82++ = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(*v83), vcvtq_s64_f64(v83[1])), vuzp1q_s32(vcvtq_s64_f64(v83[2]), vcvtq_s64_f64(v83[3]))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(v83[4]), vcvtq_s64_f64(v83[5])), vuzp1q_s32(vcvtq_s64_f64(v83[6]), vcvtq_s64_f64(v83[7]))));
        v83 += 8;
        v81 -= 16;
      }

      while (v81);
      if (NumElements == v51)
      {
        return;
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_139:
        v52 = &RawStringData[8 * v51];
        v53 = NumElements - v51;
        v54 = &a3->u8[v51];
        do
        {
          v55 = *v52++;
          *v54++ = v55;
          --v53;
        }

        while (v53);
        return;
      }
    }

    else
    {
      v51 = 0;
    }

    v84 = v51;
    v51 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v85 = &RawStringData[8 * v84];
    v86 = &a3->u8[v84];
    v87 = v84 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v88 = *v85;
      v89 = v85[1];
      v85 += 2;
      *&v88.f64[0] = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v88), vcvtq_s64_f64(v89)));
      *v86 = vuzp1_s8(*&v88.f64[0], *&v88.f64[0]).u32[0];
      v86 += 4;
      v87 += 4;
    }

    while (v87);
    if (NumElements == v51)
    {
      return;
    }

    goto LABEL_139;
  }

  if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0;
  }

  v116[0] = v23;
  if (v23)
  {
    RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(v116);
    v4 = v24;
    if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_29:
    for (j = 0; j != NumElements; ++j)
    {
      if (v18)
      {
        v26 = 0;
      }

      else
      {
        v26 = j;
      }

      a3->i8[j] = RawStringData[v26];
    }

    return;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_39:
    for (k = 0; k != NumElements; ++k)
    {
      if (v18)
      {
        v28 = 0;
      }

      else
      {
        v28 = k;
      }

      a3->i8[k] = RawStringData[v28];
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_52:
    for (m = 0; m != NumElements; ++m)
    {
      if (v18)
      {
        v30 = 0;
      }

      else
      {
        v30 = m;
      }

      a3->i8[m] = *&RawStringData[2 * v30];
    }

    return;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_62:
    for (n = 0; n != NumElements; ++n)
    {
      if (v18)
      {
        v32 = 0;
      }

      else
      {
        v32 = n;
      }

      a3->i8[n] = *&RawStringData[2 * v32];
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_72:
    for (ii = 0; ii != NumElements; ++ii)
    {
      if (v18)
      {
        v34 = 0;
      }

      else
      {
        v34 = ii;
      }

      a3->i8[ii] = *&RawStringData[4 * v34];
    }

    return;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_82:
    for (jj = 0; jj != NumElements; ++jj)
    {
      if (v18)
      {
        v36 = 0;
      }

      else
      {
        v36 = jj;
      }

      a3->i8[jj] = *&RawStringData[4 * v36];
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isInteger(&isSplat, 64))
  {
    a3->i8[0] = *RawStringData;
    return;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_113:
    for (kk = 0; kk != NumElements; ++kk)
    {
      if (v18)
      {
        v48 = 0;
      }

      else
      {
        v48 = kk;
      }

      a3->i8[kk] = *&RawStringData[2 * v48];
    }

    return;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_123:
    for (mm = 0; mm != NumElements; ++mm)
    {
      if (v18)
      {
        v50 = 0;
      }

      else
      {
        v50 = mm;
      }

      a3->i8[mm] = *&RawStringData[4 * v50];
    }

    return;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    a3->i8[0] = *RawStringData;
    return;
  }

  NumElements = 1;
  if (mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_156;
  }

LABEL_162:
  if (!mlir::Type::isInteger(&isSplat, 1))
  {
    mlir::Type::getIntOrFloatBitWidth(&isSplat);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
    mlir::detail::unpackQuantizedData<unsigned char>(RawStringData, v4, a3, NumElements, IntOrFloatBitWidth);
    return;
  }

  llvm::SmallVector<char,40u>::SmallVector(v116, NumElements);
  mlir::detail::unpackBooleanData(RawStringData, v4, v116[0], v116[1]);
  v67 = v116[0];
  if (NumElements < 1)
  {
    goto LABEL_211;
  }

  if ((v18 & 1) == 0)
  {
    v80 = 0;
    if (NumElements < 8 || (a3 - v116[0]) < 0x20)
    {
      goto LABEL_209;
    }

    if (NumElements >= 0x20)
    {
      v80 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v99 = (v116[0] + 16);
      v100 = &a3[1];
      v101 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v102 = *v99;
        *(v100 - 1) = *(v99 - 1);
        *v100 = v102;
        v99 += 2;
        v100 += 32;
        v101 -= 32;
      }

      while (v101);
      if (NumElements == v80)
      {
        goto LABEL_211;
      }

      if ((NumElements & 0x18) == 0)
      {
LABEL_209:
        v108 = &v67[v80];
        v109 = NumElements - v80;
        v110 = &a3->u8[v80];
        do
        {
          v111 = *v108++;
          *v110++ = v111;
          --v109;
        }

        while (v109);
        goto LABEL_211;
      }
    }

    else
    {
      v80 = 0;
    }

    v103 = v80;
    v80 = NumElements & 0x7FFFFFFFFFFFFFF8;
    v104 = &v67[v103];
    v105 = &a3->u8[v103];
    v106 = v103 - (NumElements & 0x7FFFFFFFFFFFFFF8);
    do
    {
      v107 = *v104;
      v104 += 8;
      *v105 = v107;
      v105 += 8;
      v106 += 8;
    }

    while (v106);
    if (NumElements == v80)
    {
      goto LABEL_211;
    }

    goto LABEL_209;
  }

  v68 = *v116[0];
  if (NumElements < 8)
  {
    v69 = 0;
    goto LABEL_199;
  }

  if (NumElements >= 0x20)
  {
    v69 = NumElements & 0x7FFFFFFFFFFFFFE0;
    v90 = vdupq_n_s8(v68);
    v91 = &a3[1];
    v92 = NumElements & 0x7FFFFFFFFFFFFFE0;
    do
    {
      *(v91 - 1) = v90;
      *v91 = v90;
      v91 += 32;
      v92 -= 32;
    }

    while (v92);
    if (NumElements == v69)
    {
      goto LABEL_211;
    }

    if ((NumElements & 0x18) == 0)
    {
LABEL_199:
      v97 = NumElements - v69;
      v98 = &a3->u8[v69];
      do
      {
        *v98++ = v68;
        --v97;
      }

      while (v97);
      goto LABEL_211;
    }
  }

  else
  {
    v69 = 0;
  }

  v93 = v69;
  v69 = NumElements & 0x7FFFFFFFFFFFFFF8;
  v94 = vdup_n_s8(v68);
  v95 = &a3->u8[v93];
  v96 = v93 - (NumElements & 0x7FFFFFFFFFFFFFF8);
  do
  {
    *v95 = v94;
    v95 += 8;
    v96 += 8;
  }

  while (v96);
  if (NumElements != v69)
  {
    goto LABEL_199;
  }

LABEL_211:
  if (v67 != v117)
  {
    free(v67);
  }
}

_BYTE *mlir::detail::packBooleanData(_BYTE *result, unint64_t a2, char *a3, uint64_t a4)
{
  if (a2 == 1)
  {
    if (*result)
    {
      v4 = -1;
    }

    else
    {
      v4 = 0;
    }

    *a3 = v4;
  }

  else if (a4)
  {
    v5 = result + 3;
    do
    {
      if (a2)
      {
        v6 = *(v5 - 3);
        if (a2 > 1)
        {
          v6 |= 2 * *(v5 - 2);
          if (a2 != 2)
          {
            v6 |= 4 * *(v5 - 1);
            if (a2 != 3)
            {
              v6 |= 8 * *v5;
              if (a2 != 4)
              {
                v6 |= 16 * v5[1];
                if (a2 != 5)
                {
                  v6 |= 32 * v5[2];
                  if (a2 != 6)
                  {
                    v6 |= v5[3] << 6;
                    if (a2 != 7)
                    {
                      v6 |= v5[4] << 7;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v6 = 0;
      }

      *a3++ = v6;
      a2 -= 8;
      v5 += 8;
      --a4;
    }

    while (a4);
  }

  return result;
}

void mlir::copyElementsAttrData<complex_support::complex_fp<float,(void *)0>>(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v105[5] = *MEMORY[0x1E69E9840];
  v102 = a1;
  v103 = a2;
  Type = mlir::ElementsAttr::getType(&v102);
  if (!Type)
  {
    goto LABEL_14;
  }

  v6 = *Type;
  {
    v16 = Type;
    mlir::Builder::getI32VectorAttr();
    Type = v16;
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    goto LABEL_14;
  }

  v17 = v10[1];
LABEL_15:
  v101[0] = Type;
  v101[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v101);
  v18 = mlir::ElementsAttr::isSplat(&v102);
  RawStringData = v102;
  if (mlir::DenseElementsAttr::classof(v102))
  {
    v20 = RawStringData;
  }

  else
  {
    v20 = 0;
  }

  v104[0] = v20;
  if (v20)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(v104);
    v3 = v21;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_27:
    NumElements = mlir::ElementsAttr::getNumElements(v102, v103);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_39;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_52;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_62;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_72;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_82;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_92;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_102;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_112;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_122;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_132;
    }

    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_148;
    }

    if (NumElements < 1)
    {
      return;
    }

LABEL_142:
    v69 = 0;
    v70 = a3 + 4;
    do
    {
      if (v18)
      {
        v71 = 0;
      }

      else
      {
        v71 = v69;
      }

      *(v70 - 4) = *&RawStringData[2 * v71] << 16;
      ++v69;
      v70 += 8;
    }

    while (NumElements != v69);
    return;
  }

  if (*(*RawStringData + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v24 = RawStringData;
  }

  else
  {
    v24 = 0;
  }

  v104[0] = v24;
  if (v24)
  {
    RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(v104);
    v3 = v25;
    if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_29:
    v26 = 0;
    v27 = (a3 + 4);
    do
    {
      if (v18)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26;
      }

      LOBYTE(v22) = RawStringData[v28];
      v22 = LODWORD(v22);
      *(v27 - 1) = v22;
      *v27 = 0.0;
      v27 += 2;
      ++v26;
    }

    while (NumElements != v26);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_39:
    v30 = 0;
    v31 = (a3 + 4);
    do
    {
      if (v18)
      {
        v32 = 0;
      }

      else
      {
        v32 = v30;
      }

      v29.i8[0] = RawStringData[v32];
      v29 = vmovl_s16(*&vmovl_s8(v29)).u64[0];
      *v29.i32 = v29.i32[0];
      *(v31 - 1) = v29.i32[0];
      *v31 = 0;
      v31 += 2;
      ++v30;
    }

    while (NumElements != v30);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_52:
    v34 = 0;
    v35 = (a3 + 4);
    do
    {
      if (v18)
      {
        v36 = 0;
      }

      else
      {
        v36 = v34;
      }

      LOWORD(v33) = *&RawStringData[2 * v36];
      v33 = LODWORD(v33);
      *(v35 - 1) = v33;
      *v35 = 0.0;
      v35 += 2;
      ++v34;
    }

    while (NumElements != v34);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_62:
    v38 = 0;
    v39 = (a3 + 4);
    do
    {
      if (v18)
      {
        v40 = 0;
      }

      else
      {
        v40 = v38;
      }

      v37.i16[0] = *&RawStringData[2 * v40];
      v37 = vmovl_s16(v37).u64[0];
      *v37.i32 = v37.i32[0];
      *(v39 - 1) = v37.i32[0];
      *v39 = 0;
      v39 += 2;
      ++v38;
    }

    while (NumElements != v38);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_72:
    v41 = 0;
    v42 = (a3 + 4);
    do
    {
      if (v18)
      {
        v43 = 0;
      }

      else
      {
        v43 = v41;
      }

      *(v42 - 1) = *&RawStringData[4 * v43];
      *v42 = 0.0;
      v42 += 2;
      ++v41;
    }

    while (NumElements != v41);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_82:
    v44 = 0;
    v45 = (a3 + 4);
    do
    {
      if (v18)
      {
        v46 = 0;
      }

      else
      {
        v46 = v44;
      }

      *(v45 - 1) = *&RawStringData[4 * v46];
      *v45 = 0.0;
      v45 += 2;
      ++v44;
    }

    while (NumElements != v44);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_92:
    v47 = 0;
    v48 = (a3 + 4);
    do
    {
      if (v18)
      {
        v49 = 0;
      }

      else
      {
        v49 = v47;
      }

      *(v48 - 1) = *&RawStringData[8 * v49];
      *v48 = 0.0;
      v48 += 2;
      ++v47;
    }

    while (NumElements != v47);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_102:
    v50 = 0;
    v51 = (a3 + 4);
    do
    {
      if (v18)
      {
        v52 = 0;
      }

      else
      {
        v52 = v50;
      }

      *(v51 - 1) = *&RawStringData[8 * v52];
      *v51 = 0.0;
      v51 += 2;
      ++v50;
    }

    while (NumElements != v50);
    return;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_112:
    v53 = 0;
    v54 = (a3 + 4);
    do
    {
      if (v18)
      {
        v55 = 0;
      }

      else
      {
        v55 = v53;
      }

      _H0 = *&RawStringData[2 * v55];
      __asm { FCVT            S0, H0 }

      *(v54 - 1) = _S0;
      *v54 = 0;
      v54 += 2;
      ++v53;
    }

    while (NumElements != v53);
    return;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_122:
    v62 = 0;
    v63 = a3 + 4;
    do
    {
      if (v18)
      {
        v64 = 0;
      }

      else
      {
        v64 = v62;
      }

      *(v63 - 4) = *&RawStringData[4 * v64];
      ++v62;
      v63 += 8;
    }

    while (NumElements != v62);
    return;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    NumElements = 1;
LABEL_132:
    v65 = 0;
    v66 = (a3 + 4);
    do
    {
      if (v18)
      {
        v67 = 0;
      }

      else
      {
        v67 = v65;
      }

      v68 = *&RawStringData[8 * v67];
      *(v66 - 1) = v68;
      *v66 = 0.0;
      v66 += 2;
      ++v65;
    }

    while (NumElements != v65);
    return;
  }

  NumElements = 1;
  if (mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_142;
  }

LABEL_148:
  if (mlir::Type::isInteger(&isSplat, 1))
  {
    llvm::SmallVector<char,40u>::SmallVector(v104, NumElements);
    mlir::detail::unpackBooleanData(RawStringData, v3, v104[0], v104[1]);
    v73 = v104[0];
    if (NumElements >= 1)
    {
      v74 = 0;
      v75 = (a3 + 4);
      do
      {
        if (v18)
        {
          v76 = 0;
        }

        else
        {
          v76 = v74;
        }

        v72.i8[0] = v73[v76];
        v72 = vmovl_s16(*&vmovl_s8(v72)).u64[0];
        *v72.i32 = v72.i32[0];
        *(v75 - 1) = v72.i32[0];
        *v75 = 0;
        v75 += 2;
        ++v74;
      }

      while (NumElements != v74);
    }

    if (v73 != v105)
    {
      free(v73);
    }
  }

  else
  {
    v77 = isSplat;
    v78 = *(*isSplat + 136);
    if (v78 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v77 = 0;
    }

    v104[0] = v77;
    if (v78 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<complex_support::complex_fp<float,(void *)0>>(RawStringData, v3, a3, NumElements, IntOrFloatBitWidth);
      return;
    }

    Value = mlir::AffineMapAttr::getValue(v104);
    if (mlir::Type::isF32(&Value))
    {
      if (NumElements < 1)
      {
        return;
      }

      if (v18)
      {
        if (NumElements >= 8 && ((RawStringData + 8) <= a3 || a3 + 8 * NumElements <= RawStringData))
        {
          v80 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
          v96 = vld1q_dup_f64(RawStringData);
          v97 = (a3 + 16);
          v98 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v97[-1] = v96;
            *v97 = v96;
            v97 += 2;
            v98 -= 4;
          }

          while (v98);
          if (NumElements == v80)
          {
            return;
          }
        }

        else
        {
          v80 = 0;
        }

        v81 = NumElements - v80;
        v82 = (a3 + 8 * v80);
        do
        {
          *v82++ = *RawStringData;
          --v81;
        }

        while (v81);
        return;
      }

      v86 = 0;
      if (NumElements < 4)
      {
        goto LABEL_184;
      }

      if (a3 - RawStringData <= 0x1F)
      {
        goto LABEL_184;
      }

      v86 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v87 = (RawStringData + 16);
      v88 = (a3 + 16);
      v89 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v90 = *v87;
        *(v88 - 1) = *(v87 - 1);
        *v88 = v90;
        v87 += 2;
        v88 += 2;
        v89 -= 4;
      }

      while (v89);
      if (NumElements != v86)
      {
LABEL_184:
        v91 = 8 * v86;
        v92 = &RawStringData[8 * v86];
        v93 = NumElements - v86;
        v94 = (a3 + v91);
        do
        {
          v95 = *v92;
          v92 += 8;
          *v94++ = v95;
          --v93;
        }

        while (v93);
      }
    }

    else
    {
      Value = mlir::AffineMapAttr::getValue(v104);
      mlir::Type::isF16(&Value);
      if (NumElements >= 1)
      {
        for (i = 0; i != NumElements; ++i)
        {
          if (v18)
          {
            v85 = 0;
          }

          else
          {
            v85 = i;
          }

          v83.i32[0] = *&RawStringData[4 * v85];
          v83 = vcvtq_f32_f16(v83).u64[0];
          *(a3 + 8 * i) = v83;
        }
      }
    }
  }
}

void mlir::copyElementsAttrData<complex_support::complex_fp<half,(void *)0>>(unsigned __int8 *a1, uint64_t a2, float32x4_t *a3)
{
  v110[5] = *MEMORY[0x1E69E9840];
  v107 = a1;
  v108 = a2;
  Type = mlir::ElementsAttr::getType(&v107);
  if (!Type)
  {
    goto LABEL_14;
  }

  v6 = *Type;
  {
    v16 = Type;
    mlir::Builder::getI32VectorAttr();
    Type = v16;
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    goto LABEL_14;
  }

  v17 = v10[1];
LABEL_15:
  v106[0] = Type;
  v106[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v106);
  v18 = mlir::ElementsAttr::isSplat(&v107);
  RawStringData = v107;
  if (mlir::DenseElementsAttr::classof(v107))
  {
    v20 = RawStringData;
  }

  else
  {
    v20 = 0;
  }

  v109[0] = v20;
  if (v20)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(v109);
    v3 = v21;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_27:
    NumElements = mlir::ElementsAttr::getNumElements(v107, v108);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_39;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_52;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_62;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_72;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_82;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_92;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_102;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_112;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_122;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_132;
    }

    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_148;
    }

    if (NumElements < 1)
    {
      return;
    }

LABEL_142:
    v70 = 0;
    v71 = &a3->i16[1];
    do
    {
      if (v18)
      {
        v72 = 0;
      }

      else
      {
        v72 = v70;
      }

      _S0 = *&RawStringData[2 * v72] << 16;
      __asm { FCVT            H0, S0 }

      *(v71 - 1) = _S0;
      *v71 = 0;
      v71 += 2;
      ++v70;
    }

    while (NumElements != v70);
    return;
  }

  if (*(*RawStringData + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v24 = RawStringData;
  }

  else
  {
    v24 = 0;
  }

  v109[0] = v24;
  if (v24)
  {
    RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(v109);
    v3 = v25;
    if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_29:
    v26 = 0;
    v27 = &a3->i16[1];
    do
    {
      if (v18)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26;
      }

      LOBYTE(v22) = RawStringData[v28];
      v22 = LOWORD(v22);
      *(v27 - 1) = v22;
      *v27 = 0;
      v27 += 2;
      ++v26;
    }

    while (NumElements != v26);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_39:
    v30 = 0;
    v31 = &a3->i16[1];
    do
    {
      if (v18)
      {
        v32 = 0;
      }

      else
      {
        v32 = v30;
      }

      v29.i8[0] = RawStringData[v32];
      v29 = vmovl_s8(v29).u64[0];
      *v29.i16 = v29.i16[0];
      *(v31 - 1) = v29.i16[0];
      *v31 = 0;
      v31 += 2;
      ++v30;
    }

    while (NumElements != v30);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_52:
    v33 = 0;
    v34 = &a3->i16[1];
    do
    {
      if (v18)
      {
        v35 = 0;
      }

      else
      {
        v35 = v33;
      }

      *(v34 - 1) = *&RawStringData[2 * v35];
      *v34 = 0;
      v34 += 2;
      ++v33;
    }

    while (NumElements != v33);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_62:
    v36 = 0;
    v37 = &a3->i16[1];
    do
    {
      if (v18)
      {
        v38 = 0;
      }

      else
      {
        v38 = v36;
      }

      *(v37 - 1) = *&RawStringData[2 * v38];
      *v37 = 0;
      v37 += 2;
      ++v36;
    }

    while (NumElements != v36);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_72:
    v39 = 0;
    v40 = &a3->i16[1];
    do
    {
      if (v18)
      {
        v41 = 0;
      }

      else
      {
        v41 = v39;
      }

      _S0 = *&RawStringData[4 * v41];
      __asm { FCVT            H0, S0 }

      *(v40 - 1) = LOWORD(_S0);
      *v40 = 0;
      v40 += 2;
      ++v39;
    }

    while (NumElements != v39);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_82:
    v47 = 0;
    v48 = &a3->i16[1];
    do
    {
      if (v18)
      {
        v49 = 0;
      }

      else
      {
        v49 = v47;
      }

      _S0 = *&RawStringData[4 * v49];
      __asm { FCVT            H0, S0 }

      *(v48 - 1) = LOWORD(_S0);
      *v48 = 0;
      v48 += 2;
      ++v47;
    }

    while (NumElements != v47);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_92:
    v51 = 0;
    v52 = &a3->i16[1];
    do
    {
      if (v18)
      {
        v53 = 0;
      }

      else
      {
        v53 = v51;
      }

      _S0 = *&RawStringData[8 * v53];
      __asm { FCVT            H0, S0 }

      *(v52 - 1) = LOWORD(_S0);
      *v52 = 0;
      v52 += 2;
      ++v51;
    }

    while (NumElements != v51);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_102:
    v55 = 0;
    v56 = &a3->i16[1];
    do
    {
      if (v18)
      {
        v57 = 0;
      }

      else
      {
        v57 = v55;
      }

      _S0 = *&RawStringData[8 * v57];
      __asm { FCVT            H0, S0 }

      *(v56 - 1) = LOWORD(_S0);
      *v56 = 0;
      v56 += 2;
      ++v55;
    }

    while (NumElements != v55);
    return;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_112:
    v59 = 0;
    v60 = a3->i64 + 2;
    do
    {
      if (v18)
      {
        v61 = 0;
      }

      else
      {
        v61 = v59;
      }

      *(v60 - 2) = *&RawStringData[2 * v61];
      v60 += 4;
      ++v59;
    }

    while (NumElements != v59);
    return;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_122:
    v62 = 0;
    v63 = &a3->i16[1];
    do
    {
      if (v18)
      {
        v64 = 0;
      }

      else
      {
        v64 = v62;
      }

      _S0 = *&RawStringData[4 * v64];
      __asm { FCVT            H0, S0 }

      *(v63 - 1) = _S0;
      *v63 = 0;
      v63 += 2;
      ++v62;
    }

    while (NumElements != v62);
    return;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    NumElements = 1;
LABEL_132:
    v66 = 0;
    v67 = &a3->i16[1];
    do
    {
      if (v18)
      {
        v68 = 0;
      }

      else
      {
        v68 = v66;
      }

      _S0 = *&RawStringData[8 * v68];
      __asm { FCVT            H0, S0 }

      *(v67 - 1) = LOWORD(_S0);
      *v67 = 0;
      v67 += 2;
      ++v66;
    }

    while (NumElements != v66);
    return;
  }

  NumElements = 1;
  if (mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_142;
  }

LABEL_148:
  if (mlir::Type::isInteger(&isSplat, 1))
  {
    llvm::SmallVector<char,40u>::SmallVector(v109, NumElements);
    mlir::detail::unpackBooleanData(RawStringData, v3, v109[0], v109[1]);
    v75 = v109[0];
    if (NumElements >= 1)
    {
      v76 = 0;
      v77 = &a3->i16[1];
      do
      {
        if (v18)
        {
          v78 = 0;
        }

        else
        {
          v78 = v76;
        }

        v74.i8[0] = v75[v78];
        v74 = vmovl_s8(v74).u64[0];
        *v74.i16 = v74.i16[0];
        *(v77 - 1) = v74.i16[0];
        *v77 = 0;
        v77 += 2;
        ++v76;
      }

      while (NumElements != v76);
    }

    if (v75 != v110)
    {
      free(v75);
    }
  }

  else
  {
    v79 = isSplat;
    v80 = *(*isSplat + 136);
    if (v80 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v79 = 0;
    }

    v109[0] = v79;
    if (v80 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<complex_support::complex_fp<half,(void *)0>>(RawStringData, v3, a3, NumElements, IntOrFloatBitWidth);
      return;
    }

    Value = mlir::AffineMapAttr::getValue(v109);
    if (mlir::Type::isF32(&Value))
    {
      if (NumElements >= 1)
      {
        v82 = 0;
        v83 = &a3->i16[1];
        do
        {
          if (v18)
          {
            v84 = 0;
          }

          else
          {
            v84 = v82;
          }

          v85 = &RawStringData[8 * v84];
          _S0 = *v85;
          _S1 = *(v85 + 1);
          __asm
          {
            FCVT            H0, S0
            FCVT            H1, S1
          }

          *(v83 - 1) = _S0;
          *v83 = _S1;
          ++v82;
          v83 += 2;
        }

        while (NumElements != v82);
      }
    }

    else
    {
      Value = mlir::AffineMapAttr::getValue(v109);
      mlir::Type::isF16(&Value);
      if (NumElements < 1)
      {
        return;
      }

      if (v18)
      {
        if (NumElements >= 8 && (RawStringData + 4 <= a3 || &a3->f32[NumElements] <= RawStringData))
        {
          v88 = NumElements & 0x7FFFFFFFFFFFFFF8;
          v101 = vld1q_dup_f32(RawStringData);
          v102 = a3 + 1;
          v103 = NumElements & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v102[-1] = v101;
            *v102 = v101;
            v102 += 2;
            v103 -= 8;
          }

          while (v103);
          if (NumElements == v88)
          {
            return;
          }
        }

        else
        {
          v88 = 0;
        }

        v89 = NumElements - v88;
        v90 = &a3->i32[v88];
        do
        {
          *v90++ = *RawStringData;
          --v89;
        }

        while (v89);
        return;
      }

      v91 = 0;
      if (NumElements < 8)
      {
        goto LABEL_184;
      }

      if ((a3 - RawStringData) <= 0x1F)
      {
        goto LABEL_184;
      }

      v91 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v92 = (RawStringData + 16);
      f32 = a3[1].f32;
      v94 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v95 = *v92;
        *(f32 - 1) = *(v92 - 1);
        *f32 = v95;
        v92 += 2;
        f32 += 2;
        v94 -= 8;
      }

      while (v94);
      if (NumElements != v91)
      {
LABEL_184:
        v96 = 4 * v91;
        v97 = &RawStringData[4 * v91];
        v98 = NumElements - v91;
        v99 = (a3 + v96);
        do
        {
          v100 = *v97;
          v97 += 4;
          *v99++ = v100;
          --v98;
        }

        while (v98);
      }
    }
  }
}

unsigned __int8 *mlir::detail::unpackQuantizedData<unsigned char>(unsigned __int8 *result, unint64_t a2, _BYTE *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      v12 = a4 - v9 * v11;
      if (v12 >= v11)
      {
        v12 = 8 / a5;
      }

      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = vdupq_n_s64(v12 - 1);
      v14 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v13, xmmword_1A7598670), vcgeq_u64(v13, xmmword_1A7598660)), vuzp1q_s32(vcgeq_u64(v13, xmmword_1A759D330), vcgeq_u64(v13, xmmword_1A759D320))));
      v15 = &a3[v9 * v11];
      v16 = *result;
      v17 = (v16 >> a5) & v10;
      v18 = (v16 >> (2 * a5)) & v10;
      v19 = (v16 >> (3 * a5)) & v10;
      v20 = (v16 >> (4 * a5)) & v10;
      v21 = (v16 >> (5 * a5)) & v10;
      v22 = (v16 >> (6 * a5)) & v10;
      v23 = (v16 >> (7 * a5)) & v10;
      if (v14.i8[0])
      {
        if (v14.i8[1])
        {
          v15[1] = v17;
          if (v14.i8[2])
          {
            goto LABEL_36;
          }

LABEL_21:
          if ((v14.i8[3] & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_37:
          v15[3] = v19;
          if (v14.i8[4])
          {
            goto LABEL_38;
          }

LABEL_23:
          if ((v14.i8[5] & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_39:
          v15[5] = v21;
          if (v14.i8[6])
          {
            goto LABEL_40;
          }

LABEL_25:
          if (v14.i8[7])
          {
LABEL_41:
            v15[7] = v23;
          }
        }

        else
        {
          if ((v14.i8[2] & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_36:
          v15[2] = v18;
          if (v14.i8[3])
          {
            goto LABEL_37;
          }

LABEL_22:
          if ((v14.i8[4] & 1) == 0)
          {
            goto LABEL_23;
          }

LABEL_38:
          v15[4] = v20;
          if (v14.i8[5])
          {
            goto LABEL_39;
          }

LABEL_24:
          if ((v14.i8[6] & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_40:
          v15[6] = v22;
          if (v14.i8[7])
          {
            goto LABEL_41;
          }
        }

        *v15 = v16 & v10;
        goto LABEL_14;
      }

      if (v14.i8[1])
      {
        v15[1] = v17;
        if ((v14.i8[2] & 1) == 0)
        {
LABEL_29:
          if ((v14.i8[3] & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_44;
        }
      }

      else if ((v14.i8[2] & 1) == 0)
      {
        goto LABEL_29;
      }

      v15[2] = v18;
      if ((v14.i8[3] & 1) == 0)
      {
LABEL_30:
        if ((v14.i8[4] & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_45;
      }

LABEL_44:
      v15[3] = v19;
      if ((v14.i8[4] & 1) == 0)
      {
LABEL_31:
        if ((v14.i8[5] & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_46;
      }

LABEL_45:
      v15[4] = v20;
      if ((v14.i8[5] & 1) == 0)
      {
LABEL_32:
        if ((v14.i8[6] & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_47;
      }

LABEL_46:
      v15[5] = v21;
      if ((v14.i8[6] & 1) == 0)
      {
LABEL_33:
        if (v14.i8[7])
        {
          goto LABEL_48;
        }

        goto LABEL_14;
      }

LABEL_47:
      v15[6] = v22;
      if (v14.i8[7])
      {
LABEL_48:
        v15[7] = v23;
      }

LABEL_14:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = v7 & ~(-1 << a5);
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<unsigned short>(unsigned __int8 *result, unint64_t a2, _WORD *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      v12 = a4 - v9 * v11;
      if (v12 >= v11)
      {
        v12 = 8 / a5;
      }

      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = vdupq_n_s64(v12 - 1);
      v14 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v13, xmmword_1A7598670), vcgeq_u64(v13, xmmword_1A7598660)), vuzp1q_s32(vcgeq_u64(v13, xmmword_1A759D330), vcgeq_u64(v13, xmmword_1A759D320))));
      v15 = &a3[v9 * v11];
      v16 = *result;
      v17 = (v16 >> a5) & v10;
      v18 = (v16 >> (2 * a5)) & v10;
      v19 = (v16 >> (3 * a5)) & v10;
      v20 = (v16 >> (4 * a5)) & v10;
      v21 = (v16 >> (5 * a5)) & v10;
      v22 = (v16 >> (6 * a5)) & v10;
      v23 = (v16 >> (7 * a5)) & v10;
      if (v14.i8[0])
      {
        if (v14.i8[1])
        {
          v15[1] = v17;
          if (v14.i8[2])
          {
            goto LABEL_36;
          }

LABEL_21:
          if ((v14.i8[3] & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_37:
          v15[3] = v19;
          if (v14.i8[4])
          {
            goto LABEL_38;
          }

LABEL_23:
          if ((v14.i8[5] & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_39:
          v15[5] = v21;
          if (v14.i8[6])
          {
            goto LABEL_40;
          }

LABEL_25:
          if (v14.i8[7])
          {
LABEL_41:
            v15[7] = v23;
          }
        }

        else
        {
          if ((v14.i8[2] & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_36:
          v15[2] = v18;
          if (v14.i8[3])
          {
            goto LABEL_37;
          }

LABEL_22:
          if ((v14.i8[4] & 1) == 0)
          {
            goto LABEL_23;
          }

LABEL_38:
          v15[4] = v20;
          if (v14.i8[5])
          {
            goto LABEL_39;
          }

LABEL_24:
          if ((v14.i8[6] & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_40:
          v15[6] = v22;
          if (v14.i8[7])
          {
            goto LABEL_41;
          }
        }

        *v15 = v10 & v16;
        goto LABEL_14;
      }

      if (v14.i8[1])
      {
        v15[1] = v17;
        if ((v14.i8[2] & 1) == 0)
        {
LABEL_29:
          if ((v14.i8[3] & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_44;
        }
      }

      else if ((v14.i8[2] & 1) == 0)
      {
        goto LABEL_29;
      }

      v15[2] = v18;
      if ((v14.i8[3] & 1) == 0)
      {
LABEL_30:
        if ((v14.i8[4] & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_45;
      }

LABEL_44:
      v15[3] = v19;
      if ((v14.i8[4] & 1) == 0)
      {
LABEL_31:
        if ((v14.i8[5] & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_46;
      }

LABEL_45:
      v15[4] = v20;
      if ((v14.i8[5] & 1) == 0)
      {
LABEL_32:
        if ((v14.i8[6] & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_47;
      }

LABEL_46:
      v15[5] = v21;
      if ((v14.i8[6] & 1) == 0)
      {
LABEL_33:
        if (v14.i8[7])
        {
          goto LABEL_48;
        }

        goto LABEL_14;
      }

LABEL_47:
      v15[6] = v22;
      if (v14.i8[7])
      {
LABEL_48:
        v15[7] = v23;
      }

LABEL_14:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = (v7 & ~(-1 << a5));
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<unsigned int>(unsigned __int8 *result, unint64_t a2, int *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (!v12)
      {
        goto LABEL_13;
      }

      v13 = *result;
      v14 = vdupq_n_s64(v12 - 1);
      v15 = &a3[v9 * v11];
      v16 = vmovn_s64(vcgeq_u64(v14, xmmword_1A7598670));
      if (vuzp1_s16(v16, 0).u8[0])
      {
        *v15 = v10 & v13;
        if ((vuzp1_s16(v16, 0).i8[2] & 1) == 0)
        {
LABEL_20:
          v17 = vmovn_s64(vcgeq_u64(v14, xmmword_1A7598660));
          if ((vuzp1_s16(0, v17).i32[1] & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_26;
        }
      }

      else if ((vuzp1_s16(v16, 0).i8[2] & 1) == 0)
      {
        goto LABEL_20;
      }

      v15[1] = (v13 >> a5) & v10;
      v17 = vmovn_s64(vcgeq_u64(v14, xmmword_1A7598660));
      if ((vuzp1_s16(0, v17).i32[1] & 1) == 0)
      {
LABEL_21:
        if (vuzp1_s16(0, v17).i8[6])
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      }

LABEL_26:
      v15[2] = (v13 >> (2 * a5)) & v10;
      if (vuzp1_s16(0, v17).i8[6])
      {
LABEL_27:
        v15[3] = (v13 >> (3 * a5)) & v10;
        if (((v12 + 3) & 0x1C) == 4)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }

LABEL_22:
      if (((v12 + 3) & 0x1C) == 4)
      {
        goto LABEL_13;
      }

LABEL_28:
      v18 = vmovn_s64(vcgtq_u64(v14, xmmword_1A75DA400));
      if (vuzp1_s16(v18, 0).u8[0])
      {
        v15[4] = (v13 >> (4 * a5)) & v10;
        if ((vuzp1_s16(v18, 0).i8[2] & 1) == 0)
        {
LABEL_30:
          v19 = vmovn_s64(vcgtq_u64(v14, xmmword_1A75DA6A0));
          if ((vuzp1_s16(0, v19).i32[1] & 1) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_35;
        }
      }

      else if ((vuzp1_s16(v18, 0).i8[2] & 1) == 0)
      {
        goto LABEL_30;
      }

      v15[5] = (v13 >> (5 * a5)) & v10;
      v19 = vmovn_s64(vcgtq_u64(v14, xmmword_1A75DA6A0));
      if ((vuzp1_s16(0, v19).i32[1] & 1) == 0)
      {
LABEL_31:
        if (vuzp1_s16(0, v19).i8[6])
        {
          goto LABEL_36;
        }

        goto LABEL_13;
      }

LABEL_35:
      v15[6] = (v13 >> (6 * a5)) & v10;
      if (vuzp1_s16(0, v19).i8[6])
      {
LABEL_36:
        v15[7] = (v13 >> (7 * a5)) & v10;
      }

LABEL_13:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = v7 & ~(-1 << a5);
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<half>(unsigned __int8 *result, unint64_t a2, short float *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = *result;
      v14 = vdupq_n_s64(v12 - 1);
      v24 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v14, xmmword_1A7598670), vcgeq_u64(v14, xmmword_1A7598660)), vuzp1q_s32(vcgeq_u64(v14, xmmword_1A759D330), vcgeq_u64(v14, xmmword_1A759D320))));
      v15 = v24.i8[0];
      v16 = &a3[v9 * v11];
      v17 = v24.i8[1];
      v18 = ((v13 >> a5) & v10);
      v19 = ((v13 >> (2 * a5)) & v10);
      v20 = ((v13 >> (3 * a5)) & v10);
      v21 = ((v13 >> (4 * a5)) & v10);
      v22 = ((v13 >> (5 * a5)) & v10);
      v23 = ((v13 >> (6 * a5)) & v10);
      *v24.i16 = ((v13 >> (7 * a5)) & v10);
      if (v15)
      {
        if (v17)
        {
          v16[1] = v18;
          if (v24.i8[2])
          {
            goto LABEL_37;
          }

LABEL_22:
          if ((v24.i8[3] & 1) == 0)
          {
            goto LABEL_23;
          }

LABEL_38:
          v16[3] = v20;
          if (v24.i8[4])
          {
            goto LABEL_39;
          }

LABEL_24:
          if ((v24.i8[5] & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_40:
          v16[5] = v22;
          if (v24.i8[6])
          {
            goto LABEL_41;
          }

LABEL_26:
          if (v24.i8[7])
          {
LABEL_42:
            v16[7] = *v24.i16;
          }
        }

        else
        {
          if ((v24.i8[2] & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_37:
          v16[2] = v19;
          if (v24.i8[3])
          {
            goto LABEL_38;
          }

LABEL_23:
          if ((v24.i8[4] & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_39:
          v16[4] = v21;
          if (v24.i8[5])
          {
            goto LABEL_40;
          }

LABEL_25:
          if ((v24.i8[6] & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_41:
          v16[6] = v23;
          if (v24.i8[7])
          {
            goto LABEL_42;
          }
        }

        *v16 = (v10 & v13);
        goto LABEL_14;
      }

      if (v17)
      {
        v16[1] = v18;
        if ((v24.i8[2] & 1) == 0)
        {
LABEL_30:
          if ((v24.i8[3] & 1) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_45;
        }
      }

      else if ((v24.i8[2] & 1) == 0)
      {
        goto LABEL_30;
      }

      v16[2] = v19;
      if ((v24.i8[3] & 1) == 0)
      {
LABEL_31:
        if ((v24.i8[4] & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_46;
      }

LABEL_45:
      v16[3] = v20;
      if ((v24.i8[4] & 1) == 0)
      {
LABEL_32:
        if ((v24.i8[5] & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_47;
      }

LABEL_46:
      v16[4] = v21;
      if ((v24.i8[5] & 1) == 0)
      {
LABEL_33:
        if ((v24.i8[6] & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_48;
      }

LABEL_47:
      v16[5] = v22;
      if ((v24.i8[6] & 1) == 0)
      {
LABEL_34:
        if (v24.i8[7])
        {
          goto LABEL_49;
        }

        goto LABEL_14;
      }

LABEL_48:
      v16[6] = v23;
      if (v24.i8[7])
      {
LABEL_49:
        v16[7] = *v24.i16;
      }

LABEL_14:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = (v7 & ~(-1 << a5));
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<__emulated_bf16>(unsigned __int8 *result, unint64_t a2, _WORD *a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      do
      {
        v7 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v8 = (v5 >> 3) + 1;
          if (v8 < a2)
          {
            v7 |= result[v8] << (8 - (v5 & 7));
          }
        }

        *a3++ = HIWORD(COERCE_UNSIGNED_INT((v7 & ~(-1 << a5)) + (COERCE_FLOAT(COERCE_UNSIGNED_INT((v7 & ~(-1 << a5))) & 0x7F800000) * 0.0039062)));
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    do
    {
      v12 = a4 - v9 * v11;
      if (v12 >= v11)
      {
        v12 = 8 / a5;
      }

      if (v12)
      {
        v13 = *result;
        v14 = &a3[v9 * v11];
        v15 = (v10 & v13) + (COERCE_FLOAT(COERCE_UNSIGNED_INT((v10 & v13)) & 0x7F800000) * 0.0039062);
        *v14 = HIWORD(v15);
        if (v12 != 1)
        {
          v16 = ((v13 >> a5) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> a5) & v10)) & 0x7F800000) * 0.0039062);
          v14[1] = HIWORD(v16);
          if (v12 >= 3)
          {
            v17 = ((v13 >> (2 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (2 * a5)) & v10)) & 0x7F800000) * 0.0039062);
            v14[2] = HIWORD(v17);
            if (v12 != 3)
            {
              v18 = ((v13 >> (3 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (3 * a5)) & v10)) & 0x7F800000) * 0.0039062);
              v14[3] = HIWORD(v18);
              if (v12 >= 5)
              {
                v19 = ((v13 >> (4 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (4 * a5)) & v10)) & 0x7F800000) * 0.0039062);
                v14[4] = HIWORD(v19);
                if (v12 != 5)
                {
                  v20 = ((v13 >> (5 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (5 * a5)) & v10)) & 0x7F800000) * 0.0039062);
                  v14[5] = HIWORD(v20);
                  if (v12 >= 7)
                  {
                    v21 = ((v13 >> (6 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (6 * a5)) & v10)) & 0x7F800000) * 0.0039062);
                    v14[6] = HIWORD(v21);
                    if (v12 != 7)
                    {
                      v22 = ((v13 >> (7 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (7 * a5)) & v10)) & 0x7F800000) * 0.0039062);
                      v14[7] = HIWORD(v22);
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v9;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<double>(unsigned __int8 *result, unint64_t a2, double *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (!v12)
      {
        goto LABEL_13;
      }

      v13 = *result;
      v14 = &a3[v9 * v11];
      v15 = vdupq_n_s64(v12 - 1);
      v16 = vmovn_s64(vcgeq_u64(v15, xmmword_1A7598670));
      if (v16.i8[0])
      {
        *v14 = (v10 & v13);
        if (v16.i8[4])
        {
LABEL_23:
          v14[1] = ((v13 >> a5) & v10);
          v17 = (v12 + 1) & 0x1E;
          if (v17 == 2)
          {
            goto LABEL_13;
          }

          goto LABEL_24;
        }
      }

      else if (v16.i8[4])
      {
        goto LABEL_23;
      }

      v17 = (v12 + 1) & 0x1E;
      if (v17 == 2)
      {
        goto LABEL_13;
      }

LABEL_24:
      v18 = vmovn_s64(vcgtq_u64(v15, xmmword_1A75989F0));
      if (v18.i8[0])
      {
        v14[2] = ((v13 >> (2 * a5)) & v10);
        if (v18.i8[4])
        {
LABEL_29:
          v14[3] = ((v13 >> (3 * a5)) & v10);
          if (v17 == 4)
          {
            goto LABEL_13;
          }

          goto LABEL_30;
        }
      }

      else if (v18.i8[4])
      {
        goto LABEL_29;
      }

      if (v17 == 4)
      {
        goto LABEL_13;
      }

LABEL_30:
      v19 = vmovn_s64(vcgtq_u64(v15, xmmword_1A75DA400));
      if (v19.i8[0])
      {
        v14[4] = ((v13 >> (4 * a5)) & v10);
        if ((v19.i8[4] & 1) == 0)
        {
LABEL_32:
          if (v17 != 6)
          {
            goto LABEL_36;
          }

          goto LABEL_13;
        }
      }

      else if ((v19.i8[4] & 1) == 0)
      {
        goto LABEL_32;
      }

      v14[5] = ((v13 >> (5 * a5)) & v10);
      if (v17 != 6)
      {
LABEL_36:
        v20 = vmovn_s64(vcgtq_u64(v15, xmmword_1A75DA6A0));
        if (v20.i8[0])
        {
          v14[6] = ((v13 >> (6 * a5)) & v10);
        }

        if (v20.i8[4])
        {
          v14[7] = ((v13 >> (7 * a5)) & v10);
        }
      }

LABEL_13:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = (v7 & ~(-1 << a5));
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<complex_support::complex_fp<float,(void *)0>>(unsigned __int8 *result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      v7 = (a3 + 4);
      do
      {
        v8 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v9 = (v5 >> 3) + 1;
          if (v9 < a2)
          {
            v8 |= result[v9] << (8 - (v5 & 7));
          }
        }

        *(v7 - 1) = (v8 & ~(-1 << a5));
        *v7 = 0.0;
        v7 += 2;
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v10 = 0;
    v11 = ~(-1 << a5);
    v12 = 8 / a5;
    do
    {
      v13 = a4 - v10 * v12;
      if (v13 >= v12)
      {
        v13 = 8 / a5;
      }

      if (v13)
      {
        v14 = *result;
        v15 = a3 + 8 * v10 * v12;
        *v15 = (v11 & v14);
        *(v15 + 4) = 0;
        if (v13 != 1)
        {
          *(v15 + 8) = ((v14 >> a5) & v11);
          *(v15 + 12) = 0;
          if (v13 >= 3)
          {
            *(v15 + 16) = ((v14 >> (2 * a5)) & v11);
            *(v15 + 20) = 0;
            if (v13 != 3)
            {
              *(v15 + 24) = ((v14 >> (3 * a5)) & v11);
              *(v15 + 28) = 0;
              if (v13 >= 5)
              {
                *(v15 + 32) = ((v14 >> (4 * a5)) & v11);
                *(v15 + 36) = 0;
                if (v13 != 5)
                {
                  *(v15 + 40) = ((v14 >> (5 * a5)) & v11);
                  *(v15 + 44) = 0;
                  if (v13 >= 7)
                  {
                    *(v15 + 48) = ((v14 >> (6 * a5)) & v11);
                    *(v15 + 52) = 0;
                    if (v13 != 7)
                    {
                      *(v15 + 56) = ((v14 >> (7 * a5)) & v11);
                      *(v15 + 60) = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v10;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<complex_support::complex_fp<half,(void *)0>>(unsigned __int8 *result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      v7 = (a3 + 2);
      do
      {
        v8 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v9 = (v5 >> 3) + 1;
          if (v9 < a2)
          {
            v8 |= result[v9] << (8 - (v5 & 7));
          }
        }

        *(v7 - 1) = (v8 & ~(-1 << a5));
        *v7 = 0;
        v7 += 2;
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v10 = 0;
    v11 = ~(-1 << a5);
    v12 = 8 / a5;
    do
    {
      v13 = a4 - v10 * v12;
      if (v13 >= v12)
      {
        v13 = 8 / a5;
      }

      if (v13)
      {
        v14 = *result;
        v15 = a3 + 4 * v10 * v12;
        *v15 = (v11 & v14);
        *(v15 + 2) = 0;
        if (v13 != 1)
        {
          *(v15 + 4) = ((v14 >> a5) & v11);
          *(v15 + 6) = 0;
          if (v13 >= 3)
          {
            *(v15 + 8) = ((v14 >> (2 * a5)) & v11);
            *(v15 + 10) = 0;
            if (v13 != 3)
            {
              *(v15 + 12) = ((v14 >> (3 * a5)) & v11);
              *(v15 + 14) = 0;
              if (v13 >= 5)
              {
                *(v15 + 16) = ((v14 >> (4 * a5)) & v11);
                *(v15 + 18) = 0;
                if (v13 != 5)
                {
                  *(v15 + 20) = ((v14 >> (5 * a5)) & v11);
                  *(v15 + 22) = 0;
                  if (v13 >= 7)
                  {
                    *(v15 + 24) = ((v14 >> (6 * a5)) & v11);
                    *(v15 + 26) = 0;
                    if (v13 != 7)
                    {
                      *(v15 + 28) = ((v14 >> (7 * a5)) & v11);
                      *(v15 + 30) = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v10;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

BOOL mlir::detail::upgradeFromVersion(mlir::ForwardIterator *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a3;
  v4[1] = a2;
  return mlir::detail::walk<mlir::ForwardIterator>(a1, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::detail::upgradeFromVersion(mlir::Operation *,llvm::StringRef const&,mlir::DialectVersion const&)::$_0>, v4, 1) != 0;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::detail::upgradeFromVersion(mlir::Operation *,llvm::StringRef const&,mlir::DialectVersion const&)::$_0>(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  if (*(v5 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    Context = *(v5 + 8);
    Values = mlir::SparseElementsAttr::getValues(&Context);
    v8 = *(Values + 8);
    v9 = *(Values + 16);
    v14 = *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id && v9 == 3;
    if (v14)
    {
      if (*v8 == 28781 && v8[2] == 115)
      {
        Context = mlir::Attribute::getContext((a2 + 24));
        v42 = 0;
        v33 = *(a2 + 16);
        ZinIrHalH13g::~ZinIrHalH13g(a2);
        v43 = v33;
        v44 = v34;
        v35 = *(a2 + 48);
        if (*(v35 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v38 = *(v35 + 8);
          mlir::SparseElementsAttr::getValues(&v38);
        }

        mlir::mps::MPSDialect::convertUnregisteredOperation(&Context, *a1, a2, &v38);
        v11 = 0;
        v6 = v38;
        v2 = v39;
        v10 = v40 ^ 1;
        v9 = 3;
        InterfaceFor = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
        if (!InterfaceFor)
        {
          goto LABEL_16;
        }

        goto LABEL_9;
      }

      v6 = 0;
      v10 = 1;
      v9 = 3;
      v11 = 1;
      InterfaceFor = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
      if (InterfaceFor)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = 0;
      v10 = 1;
      v11 = 1;
      InterfaceFor = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
      if (InterfaceFor)
      {
        goto LABEL_9;
      }
    }

LABEL_16:
    v36 = 0;
    v37 = InterfaceFor;
    goto LABEL_20;
  }

  v6 = 0;
  v7 = *(v5 + 24);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = 1;
  v11 = 1;
  InterfaceFor = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (!InterfaceFor)
  {
    goto LABEL_16;
  }

LABEL_9:
  v36 = a2;
  v37 = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (a2)
  {
    v16 = a1[1];
    if (v9 == *(v16 + 8) && (!v9 || !memcmp(v8, *v16, v9)))
    {
      Context = mlir::Attribute::getContext((a2 + 24));
      v42 = 0;
      v19 = *(a2 + 16);
      ZinIrHalH13g::~ZinIrHalH13g(a2);
      v43 = v19;
      v44 = v20;
      mlir::UpgraderInterface::upgradeFromVersion(&v36, &Context, *a1);
      if ((v40 & 1) == 0)
      {
        return 0;
      }

      v6 = v38;
      v2 = v39;
      if (!v39)
      {
        return 1;
      }

      goto LABEL_22;
    }
  }

LABEL_20:
  if (((v11 | v10) & 1) == 0)
  {
    if (!v2)
    {
      return 1;
    }

LABEL_22:
    v17 = 0;
    while (1)
    {
      Context = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, v17);
      if (mlir::Value::getDefiningOp(&Context) != a2)
      {
        break;
      }

      if (v2 == ++v17)
      {
        return 1;
      }
    }

    v21 = *(a2 + 36);
    if (v21)
    {
      v22 = a2 - 16;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = 0;
      v24 = v21 - 1;
      if (v2 - 1 >= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = v2 - 1;
      }

      do
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, v23);
        for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, v23); ; *i = v28)
        {
          v28 = *NextResultAtOffset;
          if (!*NextResultAtOffset)
          {
            break;
          }

          v29 = v28[1];
          if (v29)
          {
            v30 = *v28;
            *v29 = *v28;
            if (v30)
            {
              *(v30 + 8) = v29;
            }
          }

          v28[3] = i;
          v28[1] = i;
          v31 = *i;
          *v28 = *i;
          if (v31)
          {
            *(v31 + 8) = v28;
          }
        }

        v14 = v23++ == v25;
      }

      while (!v14);
    }

    mlir::Operation::erase(a2, v18);
    return 1;
  }

  return v11;
}

uint64_t mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::UpgraderInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1EB28F000;
    v5 = mlir::detail::TypeIDResolver<mlir::UpgraderInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneResult<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OpInvariants<mlir::mps::SoftplusParametricOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::Stitchable<mlir::mps::SoftplusParametricOp>,mlir::DowngraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::UpgraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SoftplusParametricOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1EB28F000;
    v5 = mlir::detail::TypeIDResolver<mlir::UpgraderInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneResult<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OpInvariants<mlir::mps::SoftplusParametricOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::Stitchable<mlir::mps::SoftplusParametricOp>,mlir::DowngraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::UpgraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SoftplusParametricOp>>();
    v4 = &unk_1EB28F000;
    v18 = v23;
  }

  v19 = v4[271];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

_OWORD *mlir::mps::buildConv2DDescriptor@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, unint64_t a11, unint64_t a12, int a13, int a14, int a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  memset(v61, 0, sizeof(v61));
  v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8));
  v60 = v25;
  if (v59 && mlir::ElementsAttr::getShapedType(&v59))
  {
    Shape = mlir::ShapedType::getShape(&v59);
    v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8));
    v60 = v27;
    if (!v59)
    {
      goto LABEL_8;
    }
  }

  else
  {
    Shape = v61;
    v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8));
    v60 = v28;
    if (!v59)
    {
      goto LABEL_8;
    }
  }

  if (mlir::ElementsAttr::getShapedType(&v59))
  {
    result = mlir::ShapedType::getShape(&v59);
    goto LABEL_9;
  }

LABEL_8:
  result = v61;
LABEL_9:
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 48) = a3;
  *(a9 + 120) = a13;
  *(a9 + 124) = a14;
  *(a9 + 128) = a15;
  if (a15 != 2)
  {
    if (a15 != 3)
    {
      v30 = *(a9 + 24);
      v31 = *(a9 + 32);
      v33 = a18;
      if (a14 == 1)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v31 = *Shape;
    v30 = Shape[1];
    *(a9 + 24) = v30;
    *(a9 + 32) = v31;
    v32 = Shape[3];
    if (a19)
    {
      *(a9 + 40) = Shape[2] * v32;
      v33 = a18;
      if (a14 == 1)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

LABEL_17:
    *(a9 + 40) = v32;
    v33 = a18;
    if (a14 == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v31 = Shape[2];
  v30 = Shape[3];
  *(a9 + 24) = v30;
  *(a9 + 32) = v31;
  v32 = *Shape;
  if (!a19)
  {
    goto LABEL_17;
  }

  *(a9 + 40) = Shape[1] * v32;
  v33 = a18;
  if (a14 == 1)
  {
LABEL_24:
    *a9 = *(result + 8);
    *(a9 + 16) = *(result + 3);
    if (a16)
    {
      a16[1] = a5;
      a16[2] = a4;
    }

    if (a17)
    {
      v34 = 16;
      v35 = 8;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

LABEL_18:
  if (!a14)
  {
    *a9 = result[1];
    *(a9 + 16) = *(result + 1);
    if (a16)
    {
      a16[2] = a5;
      a16[3] = a4;
    }

    if (a17)
    {
      v34 = 24;
      v35 = 16;
LABEL_28:
      *(a17 + v35) = a7;
      *(a17 + v34) = a6;
    }
  }

LABEL_29:
  if (a13 <= 1)
  {
    if (a13)
    {
      v38 = 0;
      v39 = 0;
      v37 = 0;
      v36 = 0;
      *(a9 + 104) = 0u;
      *(a9 + 88) = 0u;
      if (!v33)
      {
        return result;
      }
    }

    else
    {
      v36 = a11;
      v37 = a12;
      v38 = a10;
      v39 = a8;
      *(a9 + 88) = a8;
      *(a9 + 96) = a10;
      *(a9 + 104) = a11;
      *(a9 + 112) = a12;
      if (!v33)
      {
        return result;
      }
    }

    goto LABEL_50;
  }

  v40 = v31 - 1;
  v41 = (v30 - 1) * a6 + 1;
  v42 = v40 * a7 + 1;
  v43 = *a9;
  v44 = *(a9 + 8);
  v45 = v44 % a4;
  if (!(v44 % a4))
  {
    v45 = a4;
  }

  v46 = (v41 - v45) & ~((v41 - v45) >> 63);
  if (v43 < 1)
  {
    v37 = 0;
    v36 = 0;
    *(a9 + 104) = 0;
    *(a9 + 112) = 0;
    if (v44 > 0)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v47 = v43 % a5;
  if (!v47)
  {
    v47 = a5;
  }

  v48 = (v42 - v47) & ~((v42 - v47) >> 63);
  v49 = v48 >> 1;
  v36 = v48 - (v48 >> 1);
  *(a9 + 104) = v49;
  *(a9 + 112) = v36;
  if (a13 != 4)
  {
    v37 = v36;
    v36 = v49;
    if (v44 > 0)
    {
LABEL_47:
      v39 = v46 >> 1;
      v38 = v46 - (v46 >> 1);
      *(a9 + 96) = v38;
      v51 = (a9 + 96);
      *(v51 - 1) = v39;
      v50 = v51 - 1;
      if (a13 != 4)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

LABEL_44:
    v38 = 0;
    v39 = 0;
    *(a9 + 88) = 0;
    *(a9 + 96) = 0;
    if (!v33)
    {
      return result;
    }

    goto LABEL_50;
  }

  *(a9 + 104) = v36;
  *(a9 + 112) = v49;
  if (v44 < 1)
  {
    v37 = v49;
    v38 = 0;
    v39 = 0;
    *(a9 + 88) = 0;
    *(a9 + 96) = 0;
    if (!v33)
    {
      return result;
    }

    goto LABEL_50;
  }

  v39 = v46 >> 1;
  v50 = (a9 + 88);
  v38 = v46 - (v46 >> 1);
  v51 = (a9 + 96);
  v37 = v49;
LABEL_48:
  v52 = v38;
  *v50 = v38;
  *v51 = v39;
  v38 = v39;
  v39 = v52;
LABEL_49:
  if (!v33)
  {
    return result;
  }

LABEL_50:
  if (a14)
  {
    if (a14 != 1)
    {
      return result;
    }

    v53 = 40;
    v54 = 32;
    v55 = 24;
    v56 = 16;
  }

  else
  {
    v53 = 56;
    v54 = 48;
    v55 = 40;
    v56 = 32;
  }

  *(v33 + v56) = v36;
  *(v33 + v55) = v37;
  *(v33 + v54) = v39;
  *(v33 + v53) = v38;
  return result;
}

void mlir::mps::getBroadcastGradientArgs(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v30[0] = a1;
  v30[1] = a2;
  v29[0] = a3;
  v29[1] = a4;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  Shape = mlir::ShapedType::getShape(v29);
  v8 = v7;
  if (mlir::ElementsAttr::getShapedType(v30))
  {
    v9 = mlir::ShapedType::getShape(v30);
    if (v10)
    {
      v11 = 8 * v10;
      while (*v9 != 0x8000000000000000)
      {
        ++v9;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v12 = mlir::ShapedType::getShape(v30);
      if (v13 == v8 && !memcmp(v12, Shape, 8 * v13))
      {
        return;
      }
    }
  }

  mlir::ShapedType::getShape(v30);
  v15 = v14;
  mlir::ShapedType::getShape(v29);
  v17 = v16;
  v18 = mlir::ShapedType::getShape(v30);
  v19 = mlir::ShapedType::getShape(v29);
  v20 = v15 - v17;
  if (v15 == v17)
  {
    v28 = 0;
    if (v15 >= 1)
    {
      for (i = 0; i < v15; v28 = i)
      {
        if (*(v18 + 8 * i) != 1)
        {
          v22 = *(v19 + 8 * i);
          if (v22 == 1 || v22 == -1)
          {
            std::vector<long>::push_back[abi:nn200100](a5, &v28);
          }
        }

        i = v28 + 1;
      }
    }
  }

  else if (v15 >= v17)
  {
    v28 = 0;
    if (v20 >= 1)
    {
      for (j = 0; j < v20; v28 = j)
      {
        if (*(v18 + 8 * j) != 1)
        {
          std::vector<long>::push_back[abi:nn200100](a5, &v28);
          j = v28;
        }

        ++j;
      }
    }

    v28 = v15 - v17;
    if (v17 >= 1)
    {
      v27 = v19 + 8 * v17;
      do
      {
        if (*(v18 + 8 * v20) != 1 && *(v27 + 8 * (v20 - v15)) == 1)
        {
          std::vector<long>::push_back[abi:nn200100](a5, &v28);
          v20 = v28;
        }

        v28 = ++v20;
      }

      while (v20 < v15);
    }
  }

  else
  {
    v24 = v17 - v15;
    v28 = v17 - v15;
    if (v15 >= 1)
    {
      v25 = v18 + 8 * v15;
      do
      {
        if (*(v25 + 8 * (v24 - v17)) != 1 && *(v19 + 8 * v24) == 1)
        {
          std::vector<long>::push_back[abi:nn200100](a5, &v28);
          v24 = v28;
        }

        v28 = ++v24;
      }

      while (v24 < v17);
    }
  }
}

unint64_t mlir::mps::mergeDynamicDims(unint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x8000000000000000;
  }

  v2 = 8 * a2;
  v3 = 0x8000000000000000;
  do
  {
    v5 = *a1++;
    v4 = v5;
    if (v3 == 0x8000000000000000)
    {
      v3 = v4;
    }

    v2 -= 8;
  }

  while (v2);
  return v3;
}

void mlir::mps::mixed_precision::defaultMixedPrecisionCheck(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v7 = a5;
  v8 = a3;
  v9 = a2;
  v147 = *MEMORY[0x1E69E9840];
  v129 = 0;
  v130 = 0;
  v131 = 0;
  if (a5)
  {
    v124 = a1;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = mlir::TypeRange::dereference_iterator(a4, v14);
      v127[0] = mlir::getElementTypeOrSelf(v15);
      isF16 = mlir::Type::isF16(v127);
      isBF16 = mlir::Type::isBF16(v127);
      isF32 = mlir::Type::isF32(v127);
      v19 = *(*v127[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
      if (mlir::Type::isIntOrIndex(v127))
      {
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v129, v127, &v135);
      }

      v10 |= isF16;
      v11 |= isBF16;
      v12 |= isF32;
      v13 |= v19;
      ++v14;
    }

    while (v7 != v14);
    if (v130 >= 2 && (a7 & 1) == 0)
    {
      v128 = 257;
      mlir::Operation::emitOpError(v124, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with operands of different integer types which is not supported";
        v134 = 82;
        v20 = &v132;
        v21 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v111 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v21 = v137;
            v20 = (v137 + v111);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v20 = &v132;
            v21 = v137;
          }
        }

        v22 = &v21[24 * v138];
        v23 = *v20;
        *(v22 + 2) = *(v20 + 2);
        *v22 = v23;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 != 1)
      {
        goto LABEL_204;
      }

      if (v145 != &v146)
      {
        free(v145);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v144;
        v26 = __p;
        if (v144 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v144 = v24;
        operator delete(v26);
      }

      v27 = v141;
      if (v141)
      {
        v28 = v142;
        v29 = v141;
        if (v142 != v141)
        {
          do
          {
            v31 = *--v28;
            v30 = v31;
            *v28 = 0;
            if (v31)
            {
              MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
            }
          }

          while (v28 != v27);
          goto LABEL_199;
        }

        goto LABEL_200;
      }

      goto LABEL_201;
    }

    v32 = v130 == 0;
    LODWORD(v7) = v10 | v12 | v11;
    if ((v7 & 1) != 0 && (a6 & 1) == 0 && v130)
    {
      v128 = 257;
      mlir::Operation::emitOpError(v124, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with both float and integer operands which is not supported";
        v134 = 78;
        v41 = &v132;
        v42 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v112 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v42 = v137;
            v41 = (v137 + v112);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v41 = &v132;
            v42 = v137;
          }
        }

        v43 = &v42[24 * v138];
        v44 = *v41;
        *(v43 + 2) = *(v41 + 2);
        *v43 = v44;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 != 1)
      {
        goto LABEL_204;
      }

      if (v145 != &v146)
      {
        free(v145);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v144;
        v47 = __p;
        if (v144 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v144 = v45;
        operator delete(v47);
      }

      v27 = v141;
      if (v141)
      {
        v48 = v142;
        v29 = v141;
        if (v142 != v141)
        {
          do
          {
            v50 = *--v48;
            v49 = v50;
            *v48 = 0;
            if (v50)
            {
              MEMORY[0x1AC55A040](v49, 0x1000C8077774924);
            }
          }

          while (v48 != v27);
          goto LABEL_199;
        }

        goto LABEL_200;
      }

      goto LABEL_201;
    }

    a1 = v124;
    if (v130 && ((v13 ^ 1) & 1) == 0)
    {
      v128 = 257;
      mlir::Operation::emitOpError(v124, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with both complex and integer type operands which is not supported";
        v134 = 85;
        v51 = &v132;
        v52 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v113 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v52 = v137;
            v51 = (v137 + v113);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v51 = &v132;
            v52 = v137;
          }
        }

        v53 = &v52[24 * v138];
        v54 = *v51;
        *(v53 + 2) = *(v51 + 2);
        *v53 = v54;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 != 1)
      {
        goto LABEL_204;
      }

      if (v145 != &v146)
      {
        free(v145);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v144;
        v57 = __p;
        if (v144 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v144 = v55;
        operator delete(v57);
      }

      v27 = v141;
      if (v141)
      {
        v58 = v142;
        v29 = v141;
        if (v142 != v141)
        {
          do
          {
            v60 = *--v58;
            v59 = v60;
            *v58 = 0;
            if (v60)
            {
              MEMORY[0x1AC55A040](v59, 0x1000C8077774924);
            }
          }

          while (v58 != v27);
          goto LABEL_199;
        }

        goto LABEL_200;
      }

      goto LABEL_201;
    }

    if (v13 & v11)
    {
      v128 = 257;
      mlir::Operation::emitOpError(v124, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with both complex and BF16 type operands which is not supported";
        v134 = 82;
        v61 = &v132;
        v62 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v115 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v62 = v137;
            v61 = (v137 + v115);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v61 = &v132;
            v62 = v137;
          }
        }

        v63 = &v62[24 * v138];
        v64 = *v61;
        *(v63 + 2) = *(v61 + 2);
        *v63 = v64;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 != 1)
      {
        goto LABEL_204;
      }

      if (v145 != &v146)
      {
        free(v145);
      }

      v65 = __p;
      if (__p)
      {
        v66 = v144;
        v67 = __p;
        if (v144 != __p)
        {
          do
          {
            v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
          }

          while (v66 != v65);
          v67 = __p;
        }

        v144 = v65;
        operator delete(v67);
      }

      v27 = v141;
      if (v141)
      {
        v68 = v142;
        v29 = v141;
        if (v142 != v141)
        {
          do
          {
            v70 = *--v68;
            v69 = v70;
            *v68 = 0;
            if (v70)
            {
              MEMORY[0x1AC55A040](v69, 0x1000C8077774924);
            }
          }

          while (v68 != v27);
          goto LABEL_199;
        }

        goto LABEL_200;
      }

      goto LABEL_201;
    }

    if (v10 & v11)
    {
      v128 = 257;
      mlir::Operation::emitOpError(v124, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with both F16 and BF16 operands which is not supported";
        v134 = 73;
        v81 = &v132;
        v82 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v119 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v82 = v137;
            v81 = (v137 + v119);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v81 = &v132;
            v82 = v137;
          }
        }

        v83 = &v82[24 * v138];
        v84 = *v81;
        *(v83 + 2) = *(v81 + 2);
        *v83 = v84;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 != 1)
      {
        goto LABEL_204;
      }

      if (v145 != &v146)
      {
        free(v145);
      }

      v85 = __p;
      if (__p)
      {
        v86 = v144;
        v87 = __p;
        if (v144 != __p)
        {
          do
          {
            v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
          }

          while (v86 != v85);
          v87 = __p;
        }

        v144 = v85;
        operator delete(v87);
      }

      v27 = v141;
      if (v141)
      {
        v88 = v142;
        v29 = v141;
        if (v142 != v141)
        {
          do
          {
            v90 = *--v88;
            v89 = v90;
            *v88 = 0;
            if (v90)
            {
              MEMORY[0x1AC55A040](v89, 0x1000C8077774924);
            }
          }

          while (v88 != v27);
          goto LABEL_199;
        }

        goto LABEL_200;
      }

      goto LABEL_201;
    }

    v9 = a2;
    v8 = a3;
    if (!a3)
    {
      goto LABEL_204;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
    LOBYTE(v11) = 0;
    v32 = 1;
    if (!a3)
    {
      goto LABEL_204;
    }
  }

  v33 = a1;
  v34 = 0;
  if ((v32 & v7 & 1) == 0)
  {
    while (1)
    {
      v35 = mlir::TypeRange::dereference_iterator(v9, v34);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v35);
      mlir::Type::isIntOrIndex(&ElementTypeOrSelf);
      if (mlir::Type::isF16(&ElementTypeOrSelf) || mlir::Type::isF32(&ElementTypeOrSelf))
      {
        if (((v32 | v7) & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      else if (!(v32 | !mlir::Type::isBF16(&ElementTypeOrSelf) | v7 & 1))
      {
        goto LABEL_122;
      }

      if ((v10 & 1) != 0 && mlir::Type::isBF16(&ElementTypeOrSelf))
      {
        break;
      }

      if ((v11 & 1) != 0 && mlir::Type::isF16(&ElementTypeOrSelf))
      {
        goto LABEL_52;
      }

      if (v8 == ++v34)
      {
        goto LABEL_204;
      }
    }

LABEL_161:
    v128 = 257;
    mlir::Operation::emitOpError(v33, v127, &v135);
    if (v135)
    {
      v132 = 3;
      v133 = "detected operation with F16 inputs and BF16 result type which is not supported";
      v134 = 78;
      v91 = &v132;
      v92 = v137;
      if (v138 >= v139)
      {
        if (v137 <= &v132 && v137 + 24 * v138 > &v132)
        {
          v116 = &v132 - v137;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
          v92 = v137;
          v91 = (v137 + v116);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
          v91 = &v132;
          v92 = v137;
        }
      }

      v93 = &v92[24 * v138];
      v94 = *v91;
      *(v93 + 2) = *(v91 + 2);
      *v93 = v94;
      ++v138;
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
    if (v135)
    {
      mlir::InFlightDiagnostic::report(&v135);
    }

    if (v146 == 1)
    {
      if (v145 != &v146)
      {
        free(v145);
      }

      v95 = __p;
      if (__p)
      {
        v96 = v144;
        v97 = __p;
        if (v144 != __p)
        {
          do
          {
            v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
          }

          while (v96 != v95);
          v97 = __p;
        }

        v144 = v95;
        operator delete(v97);
      }

      v27 = v141;
      if (!v141)
      {
        goto LABEL_201;
      }

      v98 = v142;
      v29 = v141;
      if (v142 == v141)
      {
        goto LABEL_200;
      }

      do
      {
        v100 = *--v98;
        v99 = v100;
        *v98 = 0;
        if (v100)
        {
          MEMORY[0x1AC55A040](v99, 0x1000C8077774924);
        }
      }

      while (v98 != v27);
LABEL_199:
      v29 = v141;
      goto LABEL_200;
    }

    goto LABEL_204;
  }

  while (1)
  {
    v36 = mlir::TypeRange::dereference_iterator(v9, v34);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v36);
    if (mlir::Type::isIntOrIndex(&ElementTypeOrSelf))
    {
      v128 = 257;
      mlir::Operation::emitOpError(v33, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with float inputs and integer result type which is not supported";
        v134 = 83;
        v101 = &v132;
        v102 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v118 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v102 = v137;
            v101 = (v137 + v118);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v101 = &v132;
            v102 = v137;
          }
        }

        v103 = &v102[24 * v138];
        v104 = *v101;
        *(v103 + 2) = *(v101 + 2);
        *v103 = v104;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 == 1)
      {
        if (v145 != &v146)
        {
          free(v145);
        }

        v105 = __p;
        if (__p)
        {
          v106 = v144;
          v107 = __p;
          if (v144 != __p)
          {
            do
            {
              v106 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v106 - 1);
            }

            while (v106 != v105);
            v107 = __p;
          }

          v144 = v105;
          operator delete(v107);
        }

        v27 = v141;
        if (!v141)
        {
          goto LABEL_201;
        }

        v108 = v142;
        v29 = v141;
        if (v142 == v141)
        {
          goto LABEL_200;
        }

        do
        {
          v110 = *--v108;
          v109 = v110;
          *v108 = 0;
          if (v110)
          {
            MEMORY[0x1AC55A040](v109, 0x1000C8077774924);
          }
        }

        while (v108 != v27);
        goto LABEL_199;
      }

LABEL_204:
      llvm::deallocate_buffer(v129, (8 * v131));
    }

    if (!mlir::Type::isF16(&ElementTypeOrSelf) && !mlir::Type::isF32(&ElementTypeOrSelf))
    {
      break;
    }

    if (((v32 | v7) & 1) == 0)
    {
LABEL_122:
      v128 = 257;
      mlir::Operation::emitOpError(v33, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with integer inputs and float result type which is not supported";
        v134 = 83;
        v71 = &v132;
        v72 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v114 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v72 = v137;
            v71 = (v137 + v114);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v71 = &v132;
            v72 = v137;
          }
        }

        v73 = &v72[24 * v138];
        v74 = *v71;
        *(v73 + 2) = *(v71 + 2);
        *v73 = v74;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 != 1)
      {
        goto LABEL_204;
      }

      if (v145 != &v146)
      {
        free(v145);
      }

      v75 = __p;
      if (__p)
      {
        v76 = v144;
        v77 = __p;
        if (v144 != __p)
        {
          do
          {
            v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
          }

          while (v76 != v75);
          v77 = __p;
        }

        v144 = v75;
        operator delete(v77);
      }

      v27 = v141;
      if (v141)
      {
        v78 = v142;
        v29 = v141;
        if (v142 != v141)
        {
          do
          {
            v80 = *--v78;
            v79 = v80;
            *v78 = 0;
            if (v80)
            {
              MEMORY[0x1AC55A040](v79, 0x1000C8077774924);
            }
          }

          while (v78 != v27);
          goto LABEL_199;
        }

LABEL_200:
        v142 = v27;
        operator delete(v29);
      }

LABEL_201:
      if (v137 != v140)
      {
        free(v137);
      }

      goto LABEL_204;
    }

    if (v10)
    {
      goto LABEL_49;
    }

LABEL_50:
    if ((v11 & 1) != 0 && mlir::Type::isF16(&ElementTypeOrSelf))
    {
LABEL_52:
      v128 = 257;
      mlir::Operation::emitOpError(v33, v127, &v135);
      if (v135)
      {
        v132 = 3;
        v133 = "detected operation with BF16 inputs and F16 result type which is not supported";
        v134 = 78;
        v37 = &v132;
        v38 = v137;
        if (v138 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v117 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v38 = v137;
            v37 = (v137 + v117);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v37 = &v132;
            v38 = v137;
          }
        }

        v39 = &v38[24 * v138];
        v40 = *v37;
        *(v39 + 2) = *(v37 + 2);
        *v39 = v40;
        ++v138;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
      if (v135)
      {
        mlir::InFlightDiagnostic::report(&v135);
      }

      if (v146 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v136);
      }

      goto LABEL_204;
    }

    if (v8 == ++v34)
    {
      goto LABEL_204;
    }
  }

  mlir::Type::isBF16(&ElementTypeOrSelf);
  if ((v10 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_49:
  if (mlir::Type::isBF16(&ElementTypeOrSelf))
  {
    goto LABEL_161;
  }

  goto LABEL_50;
}

uint64_t mlir::detail::verifyLoopLikeOpInterface(mlir::detail *this, mlir::Operation *a2)
{
  v252 = *MEMORY[0x1E69E9840];
  if (this)
  {
    InterfaceFor = mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(this);
    v4 = (*(InterfaceFor + 64))(InterfaceFor, this);
    v6 = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  InterfaceFor = 0;
  v4 = MEMORY[0x40](0, 0);
  v6 = v83;
  if (v83)
  {
LABEL_3:
    mlir::OpOperand::getOperandNumber(v4);
  }

LABEL_4:
  (*(InterfaceFor + 72))(InterfaceFor, this);
  if (v6 != v7)
  {
    v237[0] = "different number of inits and region iter_args: ";
    v238 = 259;
    mlir::Operation::emitOpError(this, v237, &v239);
    v58 = (*(InterfaceFor + 64))(InterfaceFor, this);
    v60 = v59;
    if (v59)
    {
      mlir::OpOperand::getOperandNumber(v58);
    }

    if (v239)
    {
      LODWORD(v232) = 5;
      size = v60;
      v61 = &v232;
      v62 = v242;
      if (v243 >= v244)
      {
        if (v242 <= &v232 && v242 + 24 * v243 > &v232)
        {
          v205 = &v232 - v242;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
          v62 = v242;
          v61 = (v242 + v205);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
          v61 = &v232;
          v62 = v242;
        }
      }

      v63 = &v62[24 * v243];
      v64 = *v61;
      *(v63 + 2) = v61[2];
      *v63 = v64;
      v65 = ++v243;
      if (v239)
      {
        LODWORD(v232) = 3;
        size = " != ";
        v234 = 4;
        v66 = &v232;
        v67 = v242;
        if (v65 >= v244)
        {
          if (v242 <= &v232 && v242 + 24 * v65 > &v232)
          {
            v207 = &v232 - v242;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v65 + 1, 24);
            v67 = v242;
            v66 = (v242 + v207);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v65 + 1, 24);
            v66 = &v232;
            v67 = v242;
          }
        }

        v68 = &v67[24 * v243];
        v69 = *v66;
        *(v68 + 2) = v66[2];
        *v68 = v69;
        ++v243;
      }
    }

    (*(InterfaceFor + 72))(InterfaceFor, this);
    if (v239)
    {
      LODWORD(v232) = 5;
      size = v70;
      v71 = &v232;
      v72 = v242;
      if (v243 >= v244)
      {
        if (v242 <= &v232 && v242 + 24 * v243 > &v232)
        {
          v206 = &v232 - v242;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
          v72 = v242;
          v71 = (v242 + v206);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
          v71 = &v232;
          v72 = v242;
        }
      }

      v73 = &v72[24 * v243];
      v74 = *v71;
      *(v73 + 2) = v71[2];
      *v73 = v74;
      ++v243;
    }

    v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v239);
    if (v239)
    {
      mlir::InFlightDiagnostic::report(&v239);
    }

    if (v251 == 1)
    {
      if (v250 != &v251)
      {
        free(v250);
      }

      v75 = __p;
      if (__p)
      {
        v76 = v249;
        v77 = __p;
        if (v249 != __p)
        {
          do
          {
            v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
          }

          while (v76 != v75);
          v77 = __p;
        }

        v249 = v75;
        operator delete(v77);
      }

      v78 = v246;
      if (!v246)
      {
        goto LABEL_208;
      }

      v79 = v247;
      v80 = v246;
      if (v247 == v246)
      {
        goto LABEL_207;
      }

      do
      {
        v82 = *--v79;
        v81 = v82;
        *v79 = 0;
        if (v82)
        {
          MEMORY[0x1AC55A040](v81, 0x1000C8077774924);
        }
      }

      while (v79 != v78);
      goto LABEL_206;
    }

    return v51;
  }

  (*(InterfaceFor + 80))(&v239, InterfaceFor, this);
  if (v241 == 1 && v240)
  {
    mlir::detail::verifyLoopLikeOpInterface(&v239);
    if (!v237[1])
    {
      goto LABEL_11;
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(v237, 0, 0);
    if (!v237[1])
    {
LABEL_11:
      (*(InterfaceFor + 88))(&v239, InterfaceFor, this);
      if (v241 != 1 || ((*(InterfaceFor + 88))(v237, InterfaceFor, this), v10 = v237[1], (*(InterfaceFor + 72))(InterfaceFor, this), v10 == v11))
      {
        (*(InterfaceFor + 80))(&v239, InterfaceFor, this);
        if (v241 == 1 && v240)
        {
          mlir::detail::verifyLoopLikeOpInterface(&v239);
        }

        else
        {
          mlir::ValueRange::ValueRange(v237, 0, 0);
        }

        v235 = *v237;
        v12 = (*(InterfaceFor + 64))(InterfaceFor, this);
        if (v13)
        {
          v14 = v13;
          OperandNumber = mlir::OpOperand::getOperandNumber(v12);
          if ((*(this + 46) & 0x80) != 0)
          {
            v16 = *(this + 9);
          }

          else
          {
            v16 = 0;
          }

          v17 = OperandNumber;
          v18 = (*(InterfaceFor + 72))(InterfaceFor, this);
          v19 = 0;
          v20 = v16 + 32 * v17 + 24;
          while (1)
          {
            v21 = *v20;
            v22 = *(*v20 + 8) & 0xFFFFFFFFFFFFFFF8;
            if (v22 != (*(*(v18 + 8 * v19) + 8) & 0xFFFFFFFFFFFFFFF8))
            {
              break;
            }

            if (*(&v235 + 1) && v22 != (*(mlir::ValueRange::dereference_iterator(&v235, v19) + 8) & 0xFFFFFFFFFFFFFFF8))
            {
              std::to_string(&v236, v19);
              v238 = 260;
              v237[0] = &v236;
              mlir::Operation::emitOpError(this, v237, &v239);
              if (v239)
              {
                LODWORD(v232) = 3;
                size = "-th region iter_arg and ";
                v234 = 24;
                v23 = &v232;
                v24 = v242;
                if (v243 >= v244)
                {
                  if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                  {
                    v216 = &v232 - v242;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                    v24 = v242;
                    v23 = (v242 + v216);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                    v23 = &v232;
                    v24 = v242;
                  }
                }

                v25 = &v24[24 * v243];
                v26 = *v23;
                *(v25 + 2) = v23[2];
                *v25 = v26;
                v27 = ++v243;
                if (v239)
                {
                  LODWORD(v232) = 5;
                  size = v19;
                  v28 = &v232;
                  v29 = v242;
                  if (v27 >= v244)
                  {
                    if (v242 <= &v232 && v242 + 24 * v27 > &v232)
                    {
                      v220 = &v232 - v242;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v27 + 1, 24);
                      v29 = v242;
                      v28 = (v242 + v220);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v27 + 1, 24);
                      v28 = &v232;
                      v29 = v242;
                    }
                  }

                  v30 = &v29[24 * v243];
                  v31 = *v28;
                  *(v30 + 2) = v28[2];
                  *v30 = v31;
                  v32 = ++v243;
                  if (v239)
                  {
                    LODWORD(v232) = 3;
                    size = "-th yielded value have different type: ";
                    v234 = 39;
                    v33 = &v232;
                    v34 = v242;
                    if (v32 >= v244)
                    {
                      if (v242 <= &v232 && v242 + 24 * v32 > &v232)
                      {
                        v223 = &v232 - v242;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v32 + 1, 24);
                        v34 = v242;
                        v33 = (v242 + v223);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v32 + 1, 24);
                        v33 = &v232;
                        v34 = v242;
                      }
                    }

                    v35 = &v34[24 * v243];
                    v36 = *v33;
                    *(v35 + 2) = v33[2];
                    *v35 = v36;
                    ++v243;
                    if (v239)
                    {
                      v37 = &v232;
                      mlir::DiagnosticArgument::DiagnosticArgument(&v232, *(*(v18 + 8 * v19) + 8) & 0xFFFFFFFFFFFFFFF8);
                      v38 = v242;
                      if (v243 >= v244)
                      {
                        if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                        {
                          v226 = &v232 - v242;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                          v38 = v242;
                          v37 = (v242 + v226);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                          v37 = &v232;
                          v38 = v242;
                        }
                      }

                      v39 = &v38[24 * v243];
                      v40 = *v37;
                      *(v39 + 2) = v37[2];
                      *v39 = v40;
                      v41 = ++v243;
                      if (v239)
                      {
                        LODWORD(v232) = 3;
                        size = " != ";
                        v234 = 4;
                        v42 = &v232;
                        v43 = v242;
                        if (v41 >= v244)
                        {
                          if (v242 <= &v232 && v242 + 24 * v41 > &v232)
                          {
                            v229 = &v232 - v242;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v41 + 1, 24);
                            v43 = v242;
                            v42 = (v242 + v229);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v41 + 1, 24);
                            v42 = &v232;
                            v43 = v242;
                          }
                        }

                        v44 = &v43[24 * v243];
                        v45 = *v42;
                        *(v44 + 2) = v42[2];
                        *v44 = v45;
                        ++v243;
                      }
                    }
                  }
                }
              }

              v46 = mlir::ValueRange::dereference_iterator(&v235, v19);
              if (v239)
              {
                v47 = &v232;
                mlir::DiagnosticArgument::DiagnosticArgument(&v232, *(v46 + 8) & 0xFFFFFFFFFFFFFFF8);
                v48 = v242;
                if (v243 >= v244)
                {
                  if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                  {
                    v217 = &v232 - v242;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                    v48 = v242;
                    v47 = (v242 + v217);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                    v47 = &v232;
                    v48 = v242;
                  }
                }

                v49 = &v48[24 * v243];
                v50 = *v47;
                *(v49 + 2) = v47[2];
                *v49 = v50;
                ++v243;
              }

              v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v239);
              if (v239)
              {
                mlir::InFlightDiagnostic::report(&v239);
              }

              if (v251 != 1)
              {
                goto LABEL_175;
              }

              if (v250 != &v251)
              {
                free(v250);
              }

              v52 = __p;
              if (__p)
              {
                v53 = v249;
                v54 = __p;
                if (v249 != __p)
                {
                  do
                  {
                    v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
                  }

                  while (v53 != v52);
                  v54 = __p;
                }

                v249 = v52;
                operator delete(v54);
              }

              v55 = v246;
              if (v246)
              {
                v56 = v247;
                v57 = v246;
                if (v247 != v246)
                {
                  do
                  {
                    v85 = *--v56;
                    v84 = v85;
                    *v56 = 0;
                    if (v85)
                    {
                      MEMORY[0x1AC55A040](v84, 0x1000C8077774924);
                    }
                  }

                  while (v56 != v55);
                  goto LABEL_171;
                }

                goto LABEL_172;
              }

              goto LABEL_173;
            }

            ++v19;
            v20 += 32;
            if (v14 == v19)
            {
              goto LABEL_83;
            }
          }

          std::to_string(&v236, v19);
          v238 = 260;
          v237[0] = &v236;
          mlir::Operation::emitOpError(this, v237, &v239);
          if (v239)
          {
            LODWORD(v232) = 3;
            size = "-th init and ";
            v234 = 13;
            v113 = &v232;
            v114 = v242;
            if (v243 >= v244)
            {
              if (v242 <= &v232 && v242 + 24 * v243 > &v232)
              {
                v213 = &v232 - v242;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                v114 = v242;
                v113 = (v242 + v213);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                v113 = &v232;
                v114 = v242;
              }
            }

            v115 = &v114[24 * v243];
            v116 = *v113;
            *(v115 + 2) = v113[2];
            *v115 = v116;
            v117 = ++v243;
            if (v239)
            {
              LODWORD(v232) = 5;
              size = v19;
              v118 = &v232;
              v119 = v242;
              if (v117 >= v244)
              {
                if (v242 <= &v232 && v242 + 24 * v117 > &v232)
                {
                  v215 = &v232 - v242;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v117 + 1, 24);
                  v119 = v242;
                  v118 = (v242 + v215);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v117 + 1, 24);
                  v118 = &v232;
                  v119 = v242;
                }
              }

              v120 = &v119[24 * v243];
              v121 = *v118;
              *(v120 + 2) = v118[2];
              *v120 = v121;
              v122 = ++v243;
              if (v239)
              {
                LODWORD(v232) = 3;
                size = "-th region iter_arg have different type: ";
                v234 = 41;
                v123 = &v232;
                v124 = v242;
                if (v122 >= v244)
                {
                  if (v242 <= &v232 && v242 + 24 * v122 > &v232)
                  {
                    v219 = &v232 - v242;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v122 + 1, 24);
                    v124 = v242;
                    v123 = (v242 + v219);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v122 + 1, 24);
                    v123 = &v232;
                    v124 = v242;
                  }
                }

                v125 = &v124[24 * v243];
                v126 = *v123;
                *(v125 + 2) = v123[2];
                *v125 = v126;
                ++v243;
                if (v239)
                {
                  v127 = &v232;
                  mlir::DiagnosticArgument::DiagnosticArgument(&v232, *(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
                  v128 = v242;
                  if (v243 >= v244)
                  {
                    if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                    {
                      v222 = &v232 - v242;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                      v128 = v242;
                      v127 = (v242 + v222);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                      v127 = &v232;
                      v128 = v242;
                    }
                  }

                  v129 = &v128[24 * v243];
                  v130 = *v127;
                  *(v129 + 2) = v127[2];
                  *v129 = v130;
                  v131 = ++v243;
                  if (v239)
                  {
                    LODWORD(v232) = 3;
                    size = " != ";
                    v234 = 4;
                    v132 = &v232;
                    v133 = v242;
                    if (v131 >= v244)
                    {
                      if (v242 <= &v232 && v242 + 24 * v131 > &v232)
                      {
                        v225 = &v232 - v242;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v131 + 1, 24);
                        v133 = v242;
                        v132 = (v242 + v225);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v131 + 1, 24);
                        v132 = &v232;
                        v133 = v242;
                      }
                    }

                    v134 = &v133[24 * v243];
                    v135 = *v132;
                    *(v134 + 2) = v132[2];
                    *v134 = v135;
                    ++v243;
                    if (v239)
                    {
                      v136 = &v232;
                      mlir::DiagnosticArgument::DiagnosticArgument(&v232, *(*(v18 + 8 * v19) + 8) & 0xFFFFFFFFFFFFFFF8);
                      v137 = v242;
                      if (v243 >= v244)
                      {
                        if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                        {
                          v228 = &v232 - v242;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                          v137 = v242;
                          v136 = (v242 + v228);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                          v136 = &v232;
                          v137 = v242;
                        }
                      }

                      v138 = &v137[24 * v243];
                      v139 = *v136;
                      *(v138 + 2) = v136[2];
                      *v138 = v139;
                      ++v243;
                    }
                  }
                }
              }
            }
          }

          v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v239);
          if (v239)
          {
            mlir::InFlightDiagnostic::report(&v239);
          }

          if (v251 != 1)
          {
            goto LABEL_175;
          }

          if (v250 != &v251)
          {
            free(v250);
          }

          v140 = __p;
          if (__p)
          {
            v141 = v249;
            v142 = __p;
            if (v249 != __p)
            {
              do
              {
                v141 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v141 - 1);
              }

              while (v141 != v140);
              v142 = __p;
            }

            v249 = v140;
            operator delete(v142);
          }

          v55 = v246;
          if (v246)
          {
            v143 = v247;
            v57 = v246;
            if (v247 != v246)
            {
              do
              {
                v145 = *--v143;
                v144 = v145;
                *v143 = 0;
                if (v145)
                {
                  MEMORY[0x1AC55A040](v144, 0x1000C8077774924);
                }
              }

              while (v143 != v55);
LABEL_171:
              v57 = v246;
            }

LABEL_172:
            v247 = v55;
            operator delete(v57);
          }

LABEL_173:
          v183 = v242;
          if (v242 == v245)
          {
            goto LABEL_175;
          }
        }

        else
        {
          (*(InterfaceFor + 72))(InterfaceFor, this);
LABEL_83:
          (*(InterfaceFor + 88))(&v239, InterfaceFor, this);
          if (v241 != 1)
          {
            return 1;
          }

          v86 = (*(InterfaceFor + 72))(InterfaceFor, this);
          v88 = v87;
          (*(InterfaceFor + 88))(&v239, InterfaceFor, this);
          if (!v88)
          {
            return 1;
          }

          v89 = 0;
          v90 = v239;
          v91 = 8 * v88;
          while (1)
          {
            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v90, v89);
            if ((*(NextResultAtOffset + 8) ^ *(*(v86 + 8 * v89) + 8)) >= 8)
            {
              break;
            }

            ++v89;
            v91 -= 8;
            if (!v91)
            {
              return 1;
            }
          }

          v146 = NextResultAtOffset;
          std::to_string(&v236, 0);
          v238 = 260;
          v237[0] = &v236;
          mlir::Operation::emitOpError(this, v237, &v239);
          if (v239)
          {
            LODWORD(v232) = 3;
            size = "-th region iter_arg and ";
            v234 = 24;
            v147 = &v232;
            v148 = v242;
            if (v243 >= v244)
            {
              if (v242 <= &v232 && v242 + 24 * v243 > &v232)
              {
                v218 = &v232 - v242;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                v148 = v242;
                v147 = (v242 + v218);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                v147 = &v232;
                v148 = v242;
              }
            }

            v149 = &v148[24 * v243];
            v150 = *v147;
            *(v149 + 2) = v147[2];
            *v149 = v150;
            v151 = ++v243;
            if (v239)
            {
              LODWORD(v232) = 2;
              size = 0;
              v152 = &v232;
              v153 = v242;
              if (v151 >= v244)
              {
                if (v242 <= &v232 && v242 + 24 * v151 > &v232)
                {
                  v221 = &v232 - v242;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v151 + 1, 24);
                  v153 = v242;
                  v152 = (v242 + v221);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v151 + 1, 24);
                  v152 = &v232;
                  v153 = v242;
                }
              }

              v154 = &v153[24 * v243];
              v155 = *v152;
              *(v154 + 2) = v152[2];
              *v154 = v155;
              v156 = ++v243;
              if (v239)
              {
                LODWORD(v232) = 3;
                size = "-th loop result have different type: ";
                v234 = 37;
                v157 = &v232;
                v158 = v242;
                if (v156 >= v244)
                {
                  if (v242 <= &v232 && v242 + 24 * v156 > &v232)
                  {
                    v224 = &v232 - v242;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v156 + 1, 24);
                    v158 = v242;
                    v157 = (v242 + v224);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v156 + 1, 24);
                    v157 = &v232;
                    v158 = v242;
                  }
                }

                v159 = &v158[24 * v243];
                v160 = *v157;
                *(v159 + 2) = v157[2];
                *v159 = v160;
                ++v243;
                if (v239)
                {
                  v161 = &v232;
                  mlir::DiagnosticArgument::DiagnosticArgument(&v232, *(*(v86 + 8 * v89) + 8) & 0xFFFFFFFFFFFFFFF8);
                  v162 = v242;
                  if (v243 >= v244)
                  {
                    if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                    {
                      v227 = &v232 - v242;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                      v162 = v242;
                      v161 = (v242 + v227);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                      v161 = &v232;
                      v162 = v242;
                    }
                  }

                  v163 = v146;
                  v164 = &v162[24 * v243];
                  v165 = *v161;
                  *(v164 + 2) = v161[2];
                  *v164 = v165;
                  v166 = ++v243;
                  if (v239)
                  {
                    LODWORD(v232) = 3;
                    size = " != ";
                    v234 = 4;
                    v167 = &v232;
                    v168 = v242;
                    if (v166 >= v244)
                    {
                      if (v242 <= &v232 && v242 + 24 * v166 > &v232)
                      {
                        v230 = &v232 - v242;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v166 + 1, 24);
                        v168 = v242;
                        v167 = (v242 + v230);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v166 + 1, 24);
                        v167 = &v232;
                        v168 = v242;
                      }

                      v163 = v146;
                    }

                    v169 = &v168[24 * v243];
                    v170 = *v167;
                    *(v169 + 2) = v167[2];
                    *v169 = v170;
                    ++v243;
                    if (v239)
                    {
                      v171 = &v232;
                      mlir::DiagnosticArgument::DiagnosticArgument(&v232, *(v163 + 8) & 0xFFFFFFFFFFFFFFF8);
                      v172 = v242;
                      if (v243 >= v244)
                      {
                        if (v242 <= &v232 && v242 + 24 * v243 > &v232)
                        {
                          v231 = &v232 - v242;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                          v172 = v242;
                          v171 = (v242 + v231);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
                          v171 = &v232;
                          v172 = v242;
                        }
                      }

                      v173 = &v172[24 * v243];
                      v174 = *v171;
                      *(v173 + 2) = v171[2];
                      *v173 = v174;
                      ++v243;
                    }
                  }
                }
              }
            }
          }

          v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v239);
          if (v239)
          {
            mlir::InFlightDiagnostic::report(&v239);
          }

          if (v251 != 1)
          {
            goto LABEL_175;
          }

          if (v250 != &v251)
          {
            free(v250);
          }

          v175 = __p;
          if (__p)
          {
            v176 = v249;
            v177 = __p;
            if (v249 != __p)
            {
              do
              {
                v176 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v176 - 1);
              }

              while (v176 != v175);
              v177 = __p;
            }

            v249 = v175;
            operator delete(v177);
          }

          v178 = v246;
          if (v246)
          {
            v179 = v247;
            v180 = v246;
            if (v247 != v246)
            {
              do
              {
                v182 = *--v179;
                v181 = v182;
                *v179 = 0;
                if (v182)
                {
                  MEMORY[0x1AC55A040](v181, 0x1000C8077774924);
                }
              }

              while (v179 != v178);
              v180 = v246;
            }

            v247 = v178;
            operator delete(v180);
          }

          v183 = v242;
          if (v242 == v245)
          {
            goto LABEL_175;
          }
        }

        free(v183);
LABEL_175:
        if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v236.__r_.__value_.__l.__data_);
        }

        return v51;
      }

      v237[0] = "different number of loop results and region iter_args: ";
      v238 = 259;
      mlir::Operation::emitOpError(this, v237, &v239);
      (*(InterfaceFor + 88))(&v236, InterfaceFor, this);
      if (v239)
      {
        LODWORD(v232) = 5;
        size = v236.__r_.__value_.__l.__size_;
        v93 = &v232;
        v94 = v242;
        if (v243 >= v244)
        {
          if (v242 <= &v232 && v242 + 24 * v243 > &v232)
          {
            v211 = &v232 - v242;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
            v94 = v242;
            v93 = (v242 + v211);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
            v93 = &v232;
            v94 = v242;
          }
        }

        v95 = &v94[24 * v243];
        v96 = *v93;
        *(v95 + 2) = v93[2];
        *v95 = v96;
        v97 = ++v243;
        if (v239)
        {
          LODWORD(v232) = 3;
          size = " != ";
          v234 = 4;
          v98 = &v232;
          v99 = v242;
          if (v97 >= v244)
          {
            if (v242 <= &v232 && v242 + 24 * v97 > &v232)
            {
              v214 = &v232 - v242;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v97 + 1, 24);
              v99 = v242;
              v98 = (v242 + v214);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v97 + 1, 24);
              v98 = &v232;
              v99 = v242;
            }
          }

          v100 = &v99[24 * v243];
          v101 = *v98;
          *(v100 + 2) = v98[2];
          *v100 = v101;
          ++v243;
        }
      }

      (*(InterfaceFor + 72))(InterfaceFor, this);
      if (v239)
      {
        LODWORD(v232) = 5;
        size = v102;
        v103 = &v232;
        v104 = v242;
        if (v243 >= v244)
        {
          if (v242 <= &v232 && v242 + 24 * v243 > &v232)
          {
            v212 = &v232 - v242;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
            v104 = v242;
            v103 = (v242 + v212);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
            v103 = &v232;
            v104 = v242;
          }
        }

        v105 = &v104[24 * v243];
        v106 = *v103;
        *(v105 + 2) = v103[2];
        *v105 = v106;
        ++v243;
      }

      v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v239);
      if (v239)
      {
        mlir::InFlightDiagnostic::report(&v239);
      }

      if (v251 == 1)
      {
        if (v250 != &v251)
        {
          free(v250);
        }

        v107 = __p;
        if (__p)
        {
          v108 = v249;
          v109 = __p;
          if (v249 != __p)
          {
            do
            {
              v108 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v108 - 1);
            }

            while (v108 != v107);
            v109 = __p;
          }

          v249 = v107;
          operator delete(v109);
        }

        v78 = v246;
        if (!v246)
        {
          goto LABEL_208;
        }

        v110 = v247;
        v80 = v246;
        if (v247 == v246)
        {
LABEL_207:
          v247 = v78;
          operator delete(v80);
LABEL_208:
          if (v242 != v245)
          {
            free(v242);
          }

          return v51;
        }

        do
        {
          v112 = *--v110;
          v111 = v112;
          *v110 = 0;
          if (v112)
          {
            MEMORY[0x1AC55A040](v111, 0x1000C8077774924);
          }
        }

        while (v110 != v78);
LABEL_206:
        v80 = v246;
        goto LABEL_207;
      }

      return v51;
    }
  }

  (*(InterfaceFor + 72))(InterfaceFor, this);
  v9 = v8;
  (*(InterfaceFor + 80))(&v239, InterfaceFor, this);
  if (v241 == 1 && v240)
  {
    mlir::detail::verifyLoopLikeOpInterface(&v239);
    if (v9 == v237[1])
    {
      goto LABEL_11;
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(v237, 0, 0);
    if (v9 == v237[1])
    {
      goto LABEL_11;
    }
  }

  v237[0] = "different number of region iter_args and yielded values: ";
  v238 = 259;
  mlir::Operation::emitOpError(this, v237, &v239);
  (*(InterfaceFor + 72))(InterfaceFor, this);
  if (v239)
  {
    LODWORD(v232) = 5;
    size = v184;
    v185 = &v232;
    v186 = v242;
    if (v243 >= v244)
    {
      if (v242 <= &v232 && v242 + 24 * v243 > &v232)
      {
        v208 = &v232 - v242;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
        v186 = v242;
        v185 = (v242 + v208);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
        v185 = &v232;
        v186 = v242;
      }
    }

    v187 = &v186[24 * v243];
    v188 = *v185;
    *(v187 + 2) = v185[2];
    *v187 = v188;
    v189 = ++v243;
    if (v239)
    {
      LODWORD(v232) = 3;
      size = " != ";
      v234 = 4;
      v190 = &v232;
      v191 = v242;
      if (v189 >= v244)
      {
        if (v242 <= &v232 && v242 + 24 * v189 > &v232)
        {
          v210 = &v232 - v242;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v189 + 1, 24);
          v191 = v242;
          v190 = (v242 + v210);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v189 + 1, 24);
          v190 = &v232;
          v191 = v242;
        }
      }

      v192 = &v191[24 * v243];
      v193 = *v190;
      *(v192 + 2) = v190[2];
      *v192 = v193;
      ++v243;
    }
  }

  (*(InterfaceFor + 80))(&v232, InterfaceFor, this);
  if (v234 == 1 && size)
  {
    mlir::detail::verifyLoopLikeOpInterface(&v232);
    if (!v239)
    {
      goto LABEL_190;
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(&v236, 0, 0);
    if (!v239)
    {
      goto LABEL_190;
    }
  }

  LODWORD(v232) = 5;
  size = v236.__r_.__value_.__l.__size_;
  v194 = &v232;
  v195 = v242;
  if (v243 >= v244)
  {
    if (v242 <= &v232 && v242 + 24 * v243 > &v232)
    {
      v209 = &v232 - v242;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
      v195 = v242;
      v194 = (v242 + v209);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v242, v245, v243 + 1, 24);
      v194 = &v232;
      v195 = v242;
    }
  }

  v196 = &v195[24 * v243];
  v197 = *v194;
  *(v196 + 2) = v194[2];
  *v196 = v197;
  ++v243;
LABEL_190:
  v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v239);
  if (v239)
  {
    mlir::InFlightDiagnostic::report(&v239);
  }

  if (v251 == 1)
  {
    if (v250 != &v251)
    {
      free(v250);
    }

    v198 = __p;
    if (__p)
    {
      v199 = v249;
      v200 = __p;
      if (v249 != __p)
      {
        do
        {
          v199 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v199 - 1);
        }

        while (v199 != v198);
        v200 = __p;
      }

      v249 = v198;
      operator delete(v200);
    }

    v78 = v246;
    if (!v246)
    {
      goto LABEL_208;
    }

    v201 = v247;
    v80 = v246;
    if (v247 == v246)
    {
      goto LABEL_207;
    }

    do
    {
      v203 = *--v201;
      v202 = v203;
      *v201 = 0;
      if (v203)
      {
        MEMORY[0x1AC55A040](v202, 0x1000C8077774924);
      }
    }

    while (v201 != v78);
    goto LABEL_206;
  }

  return v51;
}

unint64_t OUTLINED_FUNCTION_0_39(mlir::OpOperand **a1)
{
  v2 = *a1;

  return mlir::OpOperand::getOperandNumber(v2);
}

unint64_t *OUTLINED_FUNCTION_1_39@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v3;

  return mlir::ValueRange::ValueRange(v2, a2 + 32 * a1, v5);
}

void mlir::anec::ANECDialect::ANECDialect(mlir::anec::ANECDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "anec", 4, a2, &mlir::detail::TypeIDResolver<mlir::anec::ANECDialect,void>::id);
  *v2 = &unk_1F1A2E990;
  mlir::Dialect::addOperations<mlir::anec::A11Legacy,mlir::anec::A12,mlir::anec::A13,mlir::anec::A14,mlir::anec::A15,mlir::anec::A16,mlir::anec::A17,mlir::anec::A18,mlir::anec::ArgMinMax,mlir::anec::AveragePool,mlir::anec::BatchNorm,mlir::anec::BatchToSpace,mlir::anec::Broadcast,mlir::anec::Cast,mlir::anec::Ceil,mlir::anec::ChannelToSpace,mlir::anec::ClampedRelu,mlir::anec::Concat,mlir::anec::Convolution,mlir::anec::Cos,mlir::anec::CropResize,mlir::anec::DeQuant,mlir::anec::Deconvolution,mlir::anec::Degamma,mlir::anec::Dirac,mlir::anec::ElementwiseAbs,mlir::anec::ElementwiseAdd,mlir::anec::ElementwiseDiv,mlir::anec::ElementwiseEqual,mlir::anec::ElementwiseEqualZero,mlir::anec::ElementwiseGreaterThan,mlir::anec::ElementwiseGreaterThanEqual,mlir::anec::ElementwiseGreaterThanEqualZero,mlir::anec::ElementwiseGreaterThanZero,mlir::anec::ElementwiseLessThan,mlir::anec::ElementwiseLessThanEqual,mlir::anec::ElementwiseLessThanEqualZero,mlir::anec::ElementwiseLessThanZero,mlir::anec::ElementwiseMax,mlir::anec::ElementwiseMin,mlir::anec::ElementwiseMult,mlir::anec::ElementwiseNotEqual,mlir::anec::ElementwiseNotEqualZero,mlir::anec::ElementwisePower,mlir::anec::ElementwiseSquare,mlir::anec::ElementwiseSub,mlir::anec::Elu,mlir::anec::Erf,mlir::anec::Exp2,mlir::anec::Flatten,mlir::anec::Floor,mlir::anec::GOC,mlir::anec::GatherND,mlir::anec::Gelu,mlir::anec::GlobalArgMinMax,mlir::anec::HighPrecisionSigmoid,mlir::anec::InputView,mlir::anec::InstanceNorm,mlir::anec::Invert,mlir::anec::L2NormPool,mlir::anec::LayerNorm,mlir::anec::LeakyRelu,mlir::anec::Linear,mlir::anec::Log2,mlir::anec::MatMul,mlir::anec::MaxPool,mlir::anec::NRelu,mlir::anec::Padding,mlir::anec::PixelShuffle,mlir::anec::PixelUnshuffle,mlir::anec::Quant,mlir::anec::ReduceAvg,mlir::anec::ReduceMax,mlir::anec::ReduceMin,mlir::anec::ReduceSum,mlir::anec::RegionReturn,mlir::anec::Relu,mlir::anec::Resample,mlir::anec::Reshape,mlir::anec::Resize,mlir::anec::RingBufferReader,mlir::anec::RingBufferWriter,mlir::anec::RoundNearest,mlir::anec::Rsqrt,mlir::anec::ScaledDotProductAttention,mlir::anec::ScaledElementWise,mlir::anec::Sigmoid,mlir::anec::Sign,mlir::anec::Sin,mlir::anec::Softmax,mlir::anec::SpaceToBatch,mlir::anec::SpaceToChannel,mlir::anec::Sqr,mlir::anec::Sqrt,mlir::anec::State,mlir::anec::Swish,mlir::anec::Tanh,mlir::anec::TensorBufferToTensor,mlir::anec::TensorToTensorBuffer,mlir::anec::Tile,mlir::anec::Transpose,mlir::anec::Trunc,mlir::anec::Unflatten,mlir::anec::UnrealizedConversionCast>(v2);
}

void sub_1A72A4B4C()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::anec::BoxCoordinateModeAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v19 = a1;
  Value = mlir::AffineMapAttr::getValue(&v19);
  result = mlir::Type::isSignlessInteger(&Value, 64);
  if (result)
  {
    v18 = a1;
    if (mlir::IntegerAttr::getInt(&v18))
    {
      v17 = a1;
      result = mlir::IntegerAttr::getInt(&v17);
      if (result == 1)
      {
        return result;
      }

      v16 = a1;
      if (mlir::IntegerAttr::getInt(&v16) != 2)
      {
        v15 = a1;
        if (mlir::IntegerAttr::getInt(&v15) != 3)
        {
          v14 = a1;
          if (mlir::IntegerAttr::getInt(&v14) != 4)
          {
            v13 = a1;
            if (mlir::IntegerAttr::getInt(&v13) != 5)
            {
              v12 = a1;
              if (mlir::IntegerAttr::getInt(&v12) != 6)
              {
                v11 = a1;
                if (mlir::IntegerAttr::getInt(&v11) != 7)
                {
                  v10 = a1;
                  if (mlir::IntegerAttr::getInt(&v10) != 8)
                  {
                    v9 = a1;
                    if (mlir::IntegerAttr::getInt(&v9) != 9)
                    {
                      v8 = a1;
                      if (mlir::IntegerAttr::getInt(&v8) != 10)
                      {
                        v7 = a1;
                        if (mlir::IntegerAttr::getInt(&v7) != 11)
                        {
                          v6 = a1;
                          if (mlir::IntegerAttr::getInt(&v6) != 12)
                          {
                            v5 = a1;
                            if (mlir::IntegerAttr::getInt(&v5) != 13)
                            {
                              v4 = a1;
                              if (mlir::IntegerAttr::getInt(&v4) != 14)
                              {
                                v3 = a1;
                                return mlir::IntegerAttr::getInt(&v3) == 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t mlir::anec::PaddingModeAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v12 = a1;
  Value = mlir::AffineMapAttr::getValue(&v12);
  result = mlir::Type::isSignlessInteger(&Value, 64);
  if (result)
  {
    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11))
    {
      v10 = a1;
      result = mlir::IntegerAttr::getInt(&v10);
      if (result == 1)
      {
        return result;
      }

      v9 = a1;
      if (mlir::IntegerAttr::getInt(&v9) != 2)
      {
        v8 = a1;
        if (mlir::IntegerAttr::getInt(&v8) != 3)
        {
          v7 = a1;
          if (mlir::IntegerAttr::getInt(&v7) != 4)
          {
            v6 = a1;
            if (mlir::IntegerAttr::getInt(&v6) != 5)
            {
              v5 = a1;
              if (mlir::IntegerAttr::getInt(&v5) != 6)
              {
                v4 = a1;
                if (mlir::IntegerAttr::getInt(&v4) != 7)
                {
                  v3 = a1;
                  return mlir::IntegerAttr::getInt(&v3) == 8;
                }
              }
            }
          }
        }
      }
    }

    return 1;
  }

  return result;
}

ZinIrHalH13g *mlir::anec::ANECDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8))
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8);
    v10 = a3;
    v11 = v8;
    if (a3)
    {
      return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>(a2, a5, &v12, &v10);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  return 0;
}

void mlir::anec::getANECInputName(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 24);
  v2[0] = "";
  v2[1] = 0;
  v2[2] = "__arg";
  v3 = 773;
  v4[0] = v2;
  v4[2] = &v6;
  v5 = 3330;
  llvm::Twine::str(v4, a2);
}

uint64_t mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  {
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
  }

  if ((*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0x100000000;
  }

  v12 = 259;
  mlir::Operation::emitOpError(a1, &v11, v13);
  mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v13[0])
  {
    mlir::InFlightDiagnostic::report(v13);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v19;
      v5 = __p;
      if (v19 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v19 = v3;
      operator delete(v5);
    }

    v6 = v16;
    if (v16)
    {
      v7 = v17;
      v8 = v16;
      if (v17 != v16)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x1AC55A040](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v16;
      }

      v17 = v6;
      operator delete(v8);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }

  return 0;
}

uint64_t mlir::anec::getOpMinimumFamily(mlir::anec *this, mlir::Operation *a2)
{
  {
    mlir::anec::getOpMinimumFamily();
  }

  v3 = 0x100000005;
  if ((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0x100000007;
  }

  {
    mlir::anec::getOpMinimumFamily();
  }

  if ((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0x100000006;
  }

  {
    mlir::anec::getOpMinimumFamily();
  }

  if (((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
  {
    return mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)4>(this) & 0xFFFFFFFFFFLL;
  }

  return v3;
}