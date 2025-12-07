uint64_t glpMatchInputSize(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  if (v3 != a3[1])
  {
    v6 = result;
    if (glpPrimitiveTypeGetCategory(*a3) == 2)
    {
      Length = glpPrimitiveVectorGetLength(v3);
    }

    else
    {
      Length = 1;
    }

    v9[0] = Length;
    v8 = a3[1];
    if (glpPrimitiveTypeGetCategory(v8) == 2)
    {
      result = glpPrimitiveVectorGetLength(v8);
    }

    else
    {
      result = 1;
    }

    v9[1] = result;
    if (Length != result)
    {
      result = glpLLVMSplatScalar(v6, *(a2 + 8 * (Length > 1)), v9[Length < 2]);
      *(a2 + 8 * (Length > 1)) = result;
    }
  }

  return result;
}

uint64_t glpLLVMBuildBuiltinNoPrefix(void *a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, int a7)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v12 = glpLLVMGetTypeString(&v14, a6, a7);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  snprintf_l(v15, 0x200uLL, 0, "%s.%s", a2, v12);
  v47[0] = 0x300000001;
  return glpLLVMCallFunctionInner(a1, v15, a5, a4, a3, v47, 2u, "");
}

uint64_t glpBuildConstantIntVector(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (glpPrimitiveTypeGetCategory(a2) == 2)
  {
    Length = glpPrimitiveVectorGetLength(a2);
  }

  else
  {
    Length = 1;
  }

  ScalarType = glpPrimitiveTypeGetScalarType(a2);
  glpPrimitiveTypeToLLVMType(a1, ScalarType, a3);
  v9 = LLVMConstInt();
  v10 = v9;
  if (Length >= 2)
  {
    MEMORY[0x28223BE20](v9, 8 * Length);
    v12 = v21 - v11;
    bzero(v21 - v11, v13);
    v14 = (Length + 1) & 0xFFFFFFFE;
    v15 = vdupq_n_s64(Length - 1);
    v16 = (v12 + 8);
    v17 = xmmword_23A300E20;
    v18 = vdupq_n_s64(2uLL);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v15, v17));
      if (v19.i8[0])
      {
        *(v16 - 1) = v10;
      }

      if (v19.i8[4])
      {
        *v16 = v10;
      }

      v17 = vaddq_s64(v17, v18);
      v16 += 2;
      v14 -= 2;
    }

    while (v14);
    return LLVMConstVector();
  }

  return v10;
}

uint64_t glpLLVMCastToHalf(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  if (a4 == 3 || !a4)
  {
    v6 = glpLLVMGetTypeString(&v10, a3, a4);
    v7 = "v2f16";
    if (glpPrimitiveTypeGetCategory(a3) == 2 && glpPrimitiveVectorGetLength(a3) == 4)
    {
      v7 = "v4f16";
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *v12 = 0u;
    v13 = 0u;
    snprintf_l(v12, 0x200uLL, 0, "air.convert.f.%s.f.%s", v7, v6);
    v8 = LLVMHalfTypeInContext();
    v44[0] = 0x300000001;
    return glpLLVMCallFunctionInner(a1, v12, v8, &v11, 1, v44, 2u, "");
  }

  return a2;
}

uint64_t glpMatchInputSize3(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 != a3[1])
  {
    v6 = result;
    if (glpPrimitiveTypeGetCategory(*a3) == 2)
    {
      Length = glpPrimitiveVectorGetLength(v3);
    }

    else
    {
      Length = 1;
    }

    v8 = a3[1];
    if (glpPrimitiveTypeGetCategory(v8) == 2)
    {
      result = glpPrimitiveVectorGetLength(v8);
    }

    else
    {
      result = 1;
    }

    if (Length != result)
    {
      *(a2 + 8) = glpLLVMSplatScalar(v6, *(a2 + 8), Length);
      result = glpLLVMSplatScalar(v6, *(a2 + 16), Length);
      *(a2 + 16) = result;
    }
  }

  return result;
}

uint64_t glpLLVMBuildBuiltinWithPrefix(void *a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, int a7)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v12 = glpLLVMGetTypeString(&v14, a6, a7);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  snprintf_l(v15, 0x200uLL, 0, "%s%s.%s", a2, v14, v12);
  v47[0] = 0x300000001;
  return glpLLVMCallFunctionInner(a1, v15, a5, a4, a3, v47, 2u, "");
}

uint64_t glpLLVMBuildLength(void *a1, uint64_t *a2, int *a3, int a4, uint64_t a5)
{
  v60[1] = *MEMORY[0x277D85DE8];
  if (glpPrimitiveTypeGetCategory(*a3) == 1)
  {
    v10 = glpLLVMGetTypeString(&v27, *a3, a4);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v28 = 0u;
    v29 = 0u;
    snprintf_l(v28, 0x200uLL, 0, "%s.%s", "air.fabs", v10);
    v60[0] = 0x300000001;
    v11 = a1;
    v12 = a5;
    v13 = a2;
  }

  else
  {
    v14 = *a3;
    if (glpPrimitiveTypeGetCategory(*a3) == 1)
    {
      v15 = LLVMBuildFMul();
    }

    else
    {
      Length = glpPrimitiveVectorGetLength(v14);
      if (Length < 1)
      {
        v15 = 0;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = a1 + 65;
        v20 = Length;
        do
        {
          if (v17 > 7)
          {
            LLVMConstInt();
          }

          else if (!v19[v17])
          {
            v19[v17] = LLVMConstInt();
          }

          LLVMBuildExtractElement();
          v15 = LLVMBuildFMul();
          if (v18)
          {
            v15 = LLVMBuildFAdd();
          }

          ++v17;
          v18 = v15;
        }

        while (v20 != v17);
      }
    }

    v26 = v15;
    ScalarType = glpPrimitiveTypeGetScalarType(*a3);
    if (a4)
    {
      v22 = a4 == 3;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v23 = "air.fast_sqrt";
    }

    else
    {
      v23 = "air.sqrt";
    }

    v24 = glpLLVMGetTypeString(&v27, ScalarType, a4);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v28 = 0u;
    v29 = 0u;
    snprintf_l(v28, 0x200uLL, 0, "%s.%s", v23, v24);
    v60[0] = 0x300000001;
    v13 = &v26;
    v11 = a1;
    v12 = a5;
  }

  return glpLLVMCallFunctionInner(v11, v28, v12, v13, 1, v60, 2u, "");
}

uint64_t glpLLVMBuildNormalize(void *a1, uint64_t *a2, int *a3, int a4, uint64_t a5)
{
  if (glpPrimitiveTypeGetCategory(*a3) == 1)
  {
    v9 = LLVMTypeOf();
    MEMORY[0x23EE85200](v9);
    LLVMBuildFCmp();
    llvm::ConstantFP::get();
    llvm::ConstantFP::get();

    return LLVMBuildSelect();
  }

  else
  {
    Length = glpPrimitiveVectorGetLength(*a3);
    v12 = LLVMGetElementType();
    v13 = glpLLVMBuildLength(a1, a2, a3, a4, v12);
    glpLLVMSplatElement(a1, v13, Length);

    return LLVMBuildFDiv();
  }
}

uint64_t glpLLVMBuildConvert(void *a1, void *a2, unsigned int *a3, double a4)
{
  if (glpPrimitiveTypeGetCategory(*a3) == 1)
  {
    LLVMTypeOf();
    llvm::ConstantFP::get();
  }

  else
  {
    Length = glpPrimitiveVectorGetLength(*a3);
    LLVMTypeOf();
    LLVMGetElementType();
    v7 = llvm::ConstantFP::get();
    glpLLVMSplatElement(a1, v7, Length);
  }

  return LLVMBuildFMul();
}

uint64_t glpLLVMBuildCross(uint64_t a1, void *a2)
{
  v2 = 0;
  v8[3] = *MEMORY[0x277D85DE8];
  memset(v8, 0, 24);
  memset(v7, 0, sizeof(v7));
  v3 = a1 + 520;
  do
  {
    if (!*(v3 + 8 * v2))
    {
      *(v3 + 8 * v2) = LLVMConstInt();
    }

    v8[v2] = LLVMBuildExtractElement();
    v7[v2++] = LLVMBuildExtractElement();
  }

  while (v2 != 3);
  v4 = LLVMTypeOf();
  MEMORY[0x23EE85370](v4);
  for (i = 0; i != 3; ++i)
  {
    LLVMBuildFMul();
    LLVMBuildFMul();
    LLVMBuildFSub();
    LLVMConstInt();
    result = LLVMBuildInsertElement();
  }

  return result;
}

uint64_t glpLLVMBuildReflect(void *a1, uint64_t *a2, uint64_t a3, int a4)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 4);
  if (glpPrimitiveTypeGetCategory(*(a3 + 4)) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v8);
    v10 = LLVMTypeOf();
    if (Length < 2)
    {
      v11 = 0;
    }

    else
    {
      v10 = LLVMGetElementType();
      v11 = 1;
    }
  }

  else
  {
    v10 = LLVMTypeOf();
    v11 = 0;
    Length = 1;
  }

  v12 = glpLLVMGetTypeString(&v15, *a3, a4);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  snprintf_l(v16, 0x200uLL, 0, "%s.%s", "air.dot", v12);
  v48[0] = 0x300000001;
  glpLLVMCallFunctionInner(a1, v16, v10, a2, 2, v48, 2u, "");
  llvm::ConstantFP::get();
  v13 = LLVMBuildFMul();
  if (v11)
  {
    glpLLVMSplatElement(a1, v13, Length);
  }

  LLVMBuildFMul();
  return LLVMBuildFSub();
}

uint64_t glpLLVMBuildFaceForward(void *a1, uint64_t *a2, unsigned int *a3, int a4)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v8 = *a3;
  if (glpPrimitiveTypeGetCategory(*a3) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v8);
    v10 = LLVMTypeOf();
    if (Length < 2)
    {
      v11 = 0;
    }

    else
    {
      v10 = LLVMGetElementType();
      v11 = 1;
    }
  }

  else
  {
    v10 = LLVMTypeOf();
    v11 = 0;
    Length = 1;
  }

  v12 = glpLLVMGetTypeString(&v15, *a3, a4);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  snprintf_l(v16, 0x200uLL, 0, "%s.%s", "air.dot", v12);
  v48[0] = 0x300000001;
  glpLLVMCallFunctionInner(a1, v16, v10, a2 + 1, 2, v48, 2u, "");
  MEMORY[0x23EE85200](v10);
  LLVMBuildFCmp();
  v13 = llvm::ConstantFP::get();
  if (v11)
  {
    glpLLVMSplatElement(a1, v13, Length);
  }

  LLVMBuildFMul();
  return LLVMBuildSelect();
}

uint64_t glpLLVMBuildMix(void *a1, uint64_t *a2, unsigned int *a3, uint64_t a4, int a5)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = a3[2];
  if (glpPrimitiveTypeGetCategory(a3[2]) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v12);
  }

  else
  {
    Length = 1;
  }

  Category = glpPrimitiveTypeGetCategory(*a3);
  if (glpPrimitiveTypeGetScalarType(*a3) == 9)
  {
    if (Category == 1)
    {
      glpLLVMSplatElement(a1, v10, Length);
    }

    return LLVMBuildSelect();
  }

  else
  {
    if (Length >= 2 && Category == 1)
    {
      v10 = glpLLVMSplatElement(a1, v10, Length);
    }

    v18[0] = v11;
    v18[1] = v9;
    v18[2] = v10;
    v16 = glpLLVMGetTypeString(&v17, a3[2], a5);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *v19 = 0u;
    v20 = 0u;
    snprintf_l(v19, 0x200uLL, 0, "%s.%s", "air.mix", v16);
    v51[0] = 0x300000001;
    return glpLLVMCallFunctionInner(a1, v19, a4, v18, 3, v51, 2u, "");
  }
}

uint64_t glpLLVMBuildSmoothStep(void *a1, uint64_t *a2, unsigned int *a3, int a4, uint64_t a5)
{
  v51[1] = *MEMORY[0x277D85DE8];
  LLVMTypeOf();
  if (glpPrimitiveTypeGetCategory(a3[2]) == 2)
  {
    Length = glpPrimitiveVectorGetLength(a3[2]);
    LLVMGetElementType();
    if (glpPrimitiveTypeGetCategory(*a3) != 2)
    {
      *a2 = glpLLVMSplatElement(a1, *a2, Length);
      a2[1] = glpLLVMSplatElement(a1, a2[1], Length);
    }
  }

  else
  {
    Length = 1;
  }

  LLVMBuildFSub();
  LLVMBuildFSub();
  v10 = llvm::ConstantFP::get();
  v11 = llvm::ConstantFP::get();
  if (Length >= 2)
  {
    v10 = glpLLVMSplatConstantVector(v10, Length);
    v11 = glpLLVMSplatConstantVector(v11, Length);
  }

  v18[0] = LLVMBuildFDiv();
  v18[1] = v10;
  v18[2] = v11;
  v12 = glpLLVMGetTypeString(&v17, a3[2], a4);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  snprintf_l(v19, 0x200uLL, 0, "%s.%s", "air.clamp", v12);
  v51[0] = 0x300000001;
  glpLLVMCallFunctionInner(a1, v19, a5, v18, 3, v51, 2u, "");
  LLVMBuildFMul();
  v13 = llvm::ConstantFP::get();
  v14 = llvm::ConstantFP::get();
  if (Length >= 2)
  {
    glpLLVMSplatConstantVector(v13, Length);
    glpLLVMSplatConstantVector(v14, Length);
  }

  LLVMBuildFMul();
  LLVMBuildFSub();
  return LLVMBuildFMul();
}

uint64_t glpBuildTextureOperation(uint64_t *a1, uint64_t a2, const char **a3, unsigned int *a4, int *a5, int a6)
{
  v168 = a5;
  v213[1] = *MEMORY[0x277D85DE8];
  Opcode = glpPPStreamOpNodeGetOpcode(a2);
  ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
  SaFlags = glpASTNodeGetSaFlags(a2);
  v13 = glpPrecisionIndexFromSAFlags(SaFlags);
  v179 = 0;
  v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  v174 = 0u;
  v14 = a3[a6 - 2];
  if (Opcode == 130)
  {
    v15 = 1;
  }

  else
  {
    *&v174 = a3[a6 - 1];
    v15 = 2;
  }

  v162 = v15;
  v146 = a6;
  v159 = v13;
  v173 = v14;
  v154 = *a3;
  ChildCount = glpASTNodeGetChildCount(a2);
  Child = glpASTNodeGetChild(a2, ChildCount - 1);
  SaType = glpASTNodeGetSaType(Child);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(PrimitiveType);
  v20 = PPTextarget;
  v21 = (PPTextarget - 5) < 8 && ((0xCFu >> (PPTextarget - 5)) & 1) != 0 || PPTextarget == 17;
  v170 = v21;
  v24 = Opcode == 99 || (Opcode & 0xFFFFFFFB) == 67 || Opcode == 69;
  v161 = v24 & ((PPTextarget > 0x11) | (0xFEFEu >> PPTextarget));
  v25 = *a4;
  if (glpPrimitiveTypeGetCategory(*a4) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v25);
  }

  else
  {
    Length = 1;
  }

  v27 = (Length - 1);
  v169 = v20;
  v166 = a4;
  if (v161)
  {
    if (v27 > 7)
    {
      LLVMConstInt();
    }

    else if (!a1[v27 + 65])
    {
      a1[v27 + 65] = LLVMConstInt();
    }

    Element = LLVMBuildExtractElement();
    v27 = (Length - 2);
    LODWORD(v20) = v169;
    a4 = v166;
  }

  else
  {
    Element = 0;
  }

  v148 = v27;
  if (v21)
  {
    v28 = a1[66];
    if (!v28)
    {
      v28 = LLVMConstInt();
      a1[66] = v28;
    }

    v29 = v162;
    (&v173)[v162] = v28;
    v162 = v29 + 1;
  }

  v155 = v20 > 0x11;
  TextureSize = glpGetTextureSize(v20, &v170);
  v151 = (v20 > 0x10 || ((1 << v20) & 0x10101) == 0) && v20 != 17;
  v150 = *(a1 + 416);
  HasOffset = glpPPStreamOpNodeGetHasOffset(a2);
  v160 = 0;
  HIDWORD(v157) = 1;
  v156 = HasOffset;
  if (Opcode > 97)
  {
    if (Opcode > 164)
    {
      if (Opcode == 165)
      {
        if (v156)
        {
          v41 = v146 - 3;
        }

        else
        {
          v41 = 0;
        }

        v160 = v170 == 0;
        v157 = v170 | 0x100000000;
        v152 = 1;
        v153 = v41;
        goto LABEL_48;
      }

      v152 = v160;
      v153 = v160;
      v32 = 1;
      LODWORD(v157) = v160;
      if (Opcode != 166)
      {
        goto LABEL_55;
      }

      v151 = 0;
      v153 = 0;
      v157 = v170;
      v160 = v170 == 0;
    }

    else
    {
      if ((Opcode - 98) >= 2)
      {
        v152 = v160;
        v153 = v160;
        v32 = 1;
        LODWORD(v157) = v160;
        if (Opcode != 130)
        {
          goto LABEL_55;
        }

        v160 = 0;
        v151 = 0;
      }

      else
      {
        v160 = 0;
        v32 = 0;
      }

      v33 = v146 - 3;
      if (!HasOffset)
      {
        v33 = 0;
      }

      v153 = v33;
      v157 = 0x100000000;
    }

    v152 = 1;
  }

  else
  {
    if ((Opcode - 66) < 2)
    {
      v160 = 0;
      v152 = 0;
      LODWORD(v157) = 0;
      v31 = HasOffset != 0;
      goto LABEL_47;
    }

    if ((Opcode - 68) < 2 || (Opcode - 70) < 2)
    {
      v160 = 0;
      v152 = 0;
      LODWORD(v157) = 0;
      v31 = 2 * (HasOffset != 0);
LABEL_47:
      v153 = v31;
      HIDWORD(v157) = 1;
LABEL_48:
      v32 = 1;
      goto LABEL_55;
    }

    v152 = v160;
    v153 = v160;
    v32 = 1;
    LODWORD(v157) = v160;
  }

LABEL_55:
  memset(v180, 0, sizeof(v180));
  v34 = *a3;
  v167 = a3;
  v164 = Opcode;
  if (v161)
  {
    v35 = *a4;
    v36 = *v168;
    v172 = v34;
    v37 = glpLLVMGetTypeString(&v171, v35, 3);
    v38 = glpPrimitiveTypeToLLVMType(a1, v35, 3);
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    snprintf_l(&v181, 0x200uLL, 0, "%s.%s", "air.projective_coordinates", v37);
    if (v36)
    {
      a4 = v166;
      if (v36 != 3)
      {
        v39 = LLVMFloatTypeInContext();
        if (glpPrimitiveTypeGetCategory(v35) == 2)
        {
          v40 = glpPrimitiveVectorGetLength(v35);
        }

        else
        {
          v40 = 1;
        }

        v38 = MEMORY[0x23EE854F0](v39, v40);
        v172 = LLVMBuildFPExt();
      }
    }

    else
    {
      a4 = v166;
    }

    v213[0] = 0x300000001;
    v34 = glpLLVMCallFunctionInner(a1, &v181, v38, &v172, 1, v213, 2u, "");
    Opcode = v164;
  }

  v42 = *a4;
  Category = glpPrimitiveTypeGetCategory(*a4);
  v44 = TextureSize;
  if (TextureSize == 1)
  {
    if (Category == 2 && glpPrimitiveVectorGetLength(v42) >= 2)
    {
      if (!a1[65])
      {
        a1[65] = LLVMConstInt();
      }

      v34 = LLVMBuildExtractElement();
    }
  }

  else
  {
    if (Category == 2)
    {
      Category = glpPrimitiveVectorGetLength(v42);
      v44 = TextureSize;
    }

    v45 = v44;
    MEMORY[0x28223BE20](Category, 8 * v44);
    v47 = &Element - v46;
    bzero(&Element - v46, v48);
    v49 = 0;
    v50 = a1 + 65;
    do
    {
      v51 = v50[v49];
      if (!v51)
      {
        v51 = LLVMConstInt();
        v50[v49] = v51;
      }

      *&v47[8 * v49++] = v51;
    }

    while (v45 != v49);
    LLVMConstVector();
    v52 = LLVMTypeOf();
    MEMORY[0x23EE85370](v52);
    v34 = LLVMBuildShuffleVector();
    Opcode = v164;
    LOBYTE(v20) = v169;
  }

  ScalarType = glpPrimitiveTypeGetScalarType(*v166);
  if (!*v168)
  {
    goto LABEL_94;
  }

  v54 = v156;
  if (*v168 != 3)
  {
    if (ScalarType == 5)
    {
      if (TextureSize >= 2)
      {
        MEMORY[0x23EE854F0](a1[5]);
      }

      v55 = LLVMBuildSExt();
LABEL_93:
      v34 = v55;
LABEL_94:
      v54 = v156;
      goto LABEL_95;
    }

    if (ScalarType == 1)
    {
      if (v161)
      {
        v145 = v156 != 0;
LABEL_100:
        v58 = v162;
        goto LABEL_105;
      }

      v56 = LLVMFloatTypeInContext();
      if (TextureSize >= 2)
      {
        MEMORY[0x23EE854F0](v56);
      }

      v55 = LLVMBuildFPExt();
      goto LABEL_93;
    }
  }

LABEL_95:
  v145 = v54 != 0;
  if (Opcode != 130 || !v54)
  {
    goto LABEL_100;
  }

  v57 = v168[v153];
  if (v57 && v57 != 3)
  {
    v58 = v162;
    if (TextureSize >= 2)
    {
      MEMORY[0x23EE854F0](a1[5]);
    }

    LLVMBuildSExt();
  }

  else
  {
    v58 = v162;
  }

  v34 = LLVMBuildAdd();
  v145 = 1;
LABEL_105:
  v59 = 0x61FFu >> v20;
  (&v173)[v58] = v34;
  v158 = v170;
  v147 = v32;
  if (!v170)
  {
    switch(Opcode)
    {
      case 130:
        v63 = glpTextureNameFromSamplerType(PrimitiveType);
        v61 = "air.read_";
        goto LABEL_123;
      case 165:
        v61 = "air.gather_";
        break;
      case 166:
        v61 = "air.gather_offsets_";
        break;
      default:
        v61 = "air.sample_";
        goto LABEL_111;
    }

    v63 = glpTextureNameFromSamplerType(PrimitiveType);
    v143 = 0;
    v144 = 0;
    v64 = "";
    goto LABEL_124;
  }

  v60 = "air.sample_compare_";
  if (Opcode == 166)
  {
    v60 = "air.gather_compare_offsets_";
  }

  if (Opcode == 165)
  {
    v61 = "air.gather_compare_";
  }

  else
  {
    v61 = v60;
  }

LABEL_111:
  v62 = Opcode;
  v63 = glpTextureNameFromSamplerType(PrimitiveType);
  v64 = "";
  v65 = v62 - 70;
  if ((v62 - 70) > 0x3C)
  {
    v143 = 0;
    v144 = 0;
    goto LABEL_124;
  }

  if (((1 << v65) & 0x1000000000000003) != 0)
  {
LABEL_123:
    v64 = "";
    v144 = 1;
    v143 = 1;
    goto LABEL_124;
  }

  v144 = 0;
  v143 = 0;
  if (((1 << v65) & 0x30000000) != 0)
  {
    v64 = "_grad";
  }

LABEL_124:
  v66 = v58 + 1;
  v67 = v155 | v59;
  v172 = 0;
  v68 = ReturnPrimitiveType;
  if (v158)
  {
    v69 = 1;
  }

  else
  {
    v69 = ReturnPrimitiveType;
  }

  if (glpPrimitiveTypeGetScalarType(ReturnPrimitiveType) == 1)
  {
    v70 = v159;
  }

  else
  {
    v70 = 3;
  }

  PrimitiveType = v70;
  v71 = glpLLVMGetTypeString(&v172, v69, v70);
  if (glpPrimitiveTypeGetScalarType(v68) == 1)
  {
    v72 = "";
    v172 = "";
  }

  else
  {
    v72 = v172;
  }

  snprintf_l(v180, 0x200uLL, 0, "%s%s%s%s.%s", v61, v63, v64, v72, v71);
  v73 = v167;
  v74 = v169;
  if ((v67 & 1) == 0)
  {
    if (!a1[TextureSize + 65])
    {
      v75 = TextureSize;
      a1[v75 + 65] = LLVMConstInt();
    }

    v171 = LLVMBuildExtractElement();
    v76 = v166;
    v77 = glpPrimitiveTypeGetScalarType(*v166);
    v78 = v162;
    if (v77 == 1)
    {
      v79 = LLVMTypeOf();
      llvm::ConstantFP::get();
      v73 = v167;
      v74 = v169;
      v171 = LLVMBuildFAdd();
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      v191 = 0u;
      v192 = 0u;
      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      snprintf_l(&v181, 0x200uLL, 0, "%s.%s", "air.floor", "f32");
      v213[0] = 0x300000001;
      v171 = glpLLVMCallFunctionInner(a1, &v181, v79, &v171, 1, v213, 2u, "");
      v80 = glpLLVMBuildConversion(a1, v171, a1[5], 1, 0, 36, 0);
    }

    else
    {
      v81 = glpPrimitiveTypeGetScalarType(*v76);
      v80 = v171;
      if (v81 == 5)
      {
        v82 = LLVMTypeOf();
        MEMORY[0x23EE85200](v82);
        LLVMBuildICmp();
        v80 = LLVMBuildSelect();
      }
    }

    (&v173)[(v66 - 12 * ((357913942 * v66) >> 32))] = v80;
    v66 = v78 + 2;
  }

  if (v158)
  {
    if (v74 == 17 || v157)
    {
      v85 = v73[1];
      v86 = v168[1];
      if (v86)
      {
        v84 = ReturnPrimitiveType;
        if (v86 != 3)
        {
          v87 = v166[1];
          v88 = LLVMFloatTypeInContext();
          if (glpPrimitiveTypeGetCategory(v87) == 2)
          {
            v89 = glpPrimitiveVectorGetLength(v87);
            MEMORY[0x23EE854F0](v88, v89);
          }

          v85 = LLVMBuildFPCast();
          v73 = v167;
        }
      }

      else
      {
        v84 = ReturnPrimitiveType;
      }
    }

    else
    {
      if (v148 > 7)
      {
        LLVMConstInt();
      }

      else if (!a1[v148 + 65])
      {
        v83 = v148;
        a1[v83 + 65] = LLVMConstInt();
      }

      v85 = LLVMBuildExtractElement();
      v84 = ReturnPrimitiveType;
      if (v161)
      {
        v85 = LLVMBuildFDiv();
      }
    }

    (&v173)[(v66 - 12 * ((357913942 * v66) >> 32))] = v85;
    ++v66;
  }

  else
  {
    v84 = ReturnPrimitiveType;
  }

  if ((v147 & 1) == 0)
  {
    v90 = v73[1];
    v91 = v168[1];
    if (v91 && v91 != 3)
    {
      v92 = v166[1];
      v93 = LLVMFloatTypeInContext();
      if (glpPrimitiveTypeGetCategory(v92) == 2)
      {
        v94 = glpPrimitiveVectorGetLength(v92);
        MEMORY[0x23EE854F0](v93, v94);
      }

      v73 = v167;
      v90 = LLVMBuildFPCast();
    }

    (&v173)[(v66 - 12 * ((357913942 * v66) >> 32))] = v90;
    v95 = v73[2];
    v96 = v168[2];
    if (v96 && v96 != 3)
    {
      v97 = v166[2];
      v98 = LLVMFloatTypeInContext();
      if (glpPrimitiveTypeGetCategory(v97) == 2)
      {
        v99 = glpPrimitiveVectorGetLength(v97);
        MEMORY[0x23EE854F0](v98, v99);
      }

      v95 = LLVMBuildFPCast();
      v73 = v167;
    }

    (&v173)[(v66 + 1 - 12 * ((357913942 * (v66 + 1)) >> 32))] = v95;
    v100 = LLVMFloatTypeInContext();
    (&v173)[(v66 + 2 - 12 * ((357913942 * (v66 + 2)) >> 32))] = MEMORY[0x23EE85200](v100);
    v66 += 3;
    v84 = ReturnPrimitiveType;
    v74 = v169;
  }

  if (v151)
  {
    v101 = v153;
    (&v173)[(v66 - 12 * ((357913942 * v66) >> 32))] = LLVMConstInt();
    if (v101 < 1)
    {
      v103 = a1[5];
      if (TextureSize >= 2)
      {
        v103 = MEMORY[0x23EE854F0](v103);
      }

      v102 = MEMORY[0x23EE85200](v103);
    }

    else
    {
      v102 = v73[v101];
    }

    (&v173)[(v66 + 1 - 12 * ((357913942 * (v66 + 1)) >> 32))] = v102;
    v66 += 2;
  }

  if ((v157 & 0x100000000) == 0)
  {
    MEMORY[0x23EE854F0](a1[5], 2);
    v104 = LLVMArrayType();
    MEMORY[0x23EE85370](v104);
    v105 = 0;
    v106 = 0;
    v107 = a1 + 66;
    do
    {
      v181 = 0uLL;
      v108 = *(v107 - 1);
      if (!v108)
      {
        v108 = LLVMConstInt();
        *(v107 - 1) = v108;
      }

      *&v181 = v108;
      v109 = *v107;
      if (!*v107)
      {
        v109 = LLVMConstInt();
        *v107 = v109;
      }

      *(&v181 + 1) = v109;
      LLVMConstVector();
      LLVMBuildShuffleVector();
      inserted = LLVMBuildInsertValue();
      ++v106;
      v105 += 2;
      v107 += 2;
    }

    while (v106 != 4);
    (&v173)[(v66 - 12 * ((357913942 * v66) >> 32))] = inserted;
    ++v66;
    v84 = ReturnPrimitiveType;
    v73 = v167;
    v74 = v169;
  }

  if ((v152 & 1) == 0)
  {
    v111 = v155 | (0x1EFDBu >> v74);
    v112 = (v164 & 0xFFFFFFFE) == 68;
    (&v173)[(v66 - 12 * ((357913942 * v66) >> 32))] = LLVMConstInt();
    if ((v144 | v112 & v111) == 1)
    {
      v113 = v73[1];
      v114 = v168[1];
      if (!v114 || v114 == 3)
      {
        goto LABEL_194;
      }

      v115 = v166[1];
      v116 = LLVMFloatTypeInContext();
      if (glpPrimitiveTypeGetCategory(v115) == 2)
      {
        v117 = glpPrimitiveVectorGetLength(v115);
        MEMORY[0x23EE854F0](v116, v117);
      }

      v118 = LLVMBuildFPCast();
    }

    else
    {
      v119 = LLVMFloatTypeInContext();
      v118 = MEMORY[0x23EE85200](v119);
    }

    v113 = v118;
LABEL_194:
    (&v173)[(v66 + 1 - 12 * ((357913942 * (v66 + 1)) >> 32))] = v113;
    v120 = LLVMFloatTypeInContext();
    (&v173)[(v66 + 2 - 12 * ((357913942 * (v66 + 2)) >> 32))] = MEMORY[0x23EE85200](v120);
    v66 += 3;
    v74 = v169;
  }

  if (!v160)
  {
    goto LABEL_211;
  }

  if (v164 == 165)
  {
    v121 = v145;
    if (v146 != 5)
    {
      v121 = 0;
    }

    if (v156)
    {
      v122 = 0;
    }

    else
    {
      v122 = v146 == 4;
    }

    v123 = 1;
    if (v122 || v121)
    {
      goto LABEL_207;
    }

LABEL_208:
    v124 = a1[65];
    if (!v124)
    {
      v124 = LLVMConstInt();
      a1[65] = v124;
    }

    goto LABEL_210;
  }

  if (v146 != 6)
  {
    goto LABEL_208;
  }

  v123 = 3;
LABEL_207:
  v124 = v73[v123];
LABEL_210:
  (&v173)[(v66 - 12 * ((357913942 * v66) >> 32))] = v124;
  ++v66;
LABEL_211:
  if (v164 == 130)
  {
    if (v74 == 13 || v74 == 2)
    {
      v125 = a1[65];
      v127 = PrimitiveType;
      v126 = v150;
      if (!v125)
      {
        v125 = LLVMConstInt();
        a1[65] = v125;
      }
    }

    else
    {
      v125 = v73[1];
      v128 = v168[1];
      if (v128)
      {
        v127 = PrimitiveType;
        v126 = v150;
        if (v128 != 3)
        {
          v125 = LLVMBuildSExt();
        }
      }

      else
      {
        v127 = PrimitiveType;
        v126 = v150;
      }
    }

    (&v173)[(v66 - 12 * ((357913942 * v66) >> 32))] = v125;
    ++v66;
  }

  else
  {
    v127 = PrimitiveType;
    v126 = v150;
  }

  v129 = a1[65];
  if (!v129)
  {
    v129 = LLVMConstInt();
    a1[65] = v129;
  }

  (&v173)[(v66 - 12 * ((357913942 * v66) >> 32))] = v129;
  if (v170)
  {
    v130 = v157 == 0;
  }

  else
  {
    v130 = 0;
  }

  v131 = !v130;
  if (v130)
  {
    v132 = 1;
  }

  else
  {
    v132 = v84;
  }

  v133 = glpPrimitiveTypeToLLVMType(a1, v132, v127);
  if (v126)
  {
    *&v181 = v133;
    *(&v181 + 1) = LLVMInt8TypeInContext();
    v135 = LLVMStructTypeInContext();
    *&v181 = 0x400000001;
    glpLLVMCallFunctionInner(a1, v180, v135, &v173, v66 + 1, &v181, 2u, "");
    Value = LLVMBuildExtractValue();
  }

  else
  {
    *&v181 = 0x400000001;
    Value = glpLLVMCallFunctionInner(a1, v180, v133, &v173, v66 + 1, &v181, 2u, "");
  }

  v136 = Value;
  if (v84 == 1)
  {
    v137 = 1;
  }

  else
  {
    v137 = v131;
  }

  v138 = v159;
  if ((v137 & 1) == 0)
  {
    v139 = glpPrimitiveTypeToLLVMType(a1, v84, v127);
    MEMORY[0x23EE85370](v139);
    if (!a1[65])
    {
      a1[65] = LLVMConstInt();
    }

    v136 = LLVMBuildInsertElement();
  }

  if (!glpLLVMTypesEqual(a1, v84, v127, v84, v138))
  {
    v140 = glpPrimitiveTypeToLLVMType(a1, v84, v138);
    return glpLLVMBuildConversion(a1, v136, v140, v84, v127, v84, v138);
  }

  return v136;
}

uint64_t glpBuildTextureSizeOperation(uint64_t *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v50[1] = *MEMORY[0x277D85DE8];
  ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
  SaFlags = glpASTNodeGetSaFlags(a2);
  v10 = glpPrecisionIndexFromSAFlags(SaFlags);
  ChildCount = glpASTNodeGetChildCount(a2);
  Child = glpASTNodeGetChild(a2, ChildCount - 1);
  SaType = glpASTNodeGetSaType(Child);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(PrimitiveType);
  v49 = 0;
  v48 = 0;
  if (a4 == 1)
  {
    v48 = *a3;
    v16 = a1[65];
    if (!v16)
    {
      v16 = LLVMConstInt();
      a1[65] = v16;
    }
  }

  else
  {
    v16 = *a3;
    v48 = a3[1];
  }

  v49 = v16;
  if (PPTextarget - 13 < 3)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v44 = glpPrimitiveTypeToLLVMType(a1, ReturnPrimitiveType, v10);
  TextureSize = glpGetTextureSize(PPTextarget, &v46);
  v19 = TextureSize;
  if (PPTextarget <= 0x11 && ((1 << PPTextarget) & 0x30101) != 0)
  {
    v19 = TextureSize - 1;
  }

  memset(v47, 0, sizeof(v47));
  v20 = glpTextureNameFromSamplerType(PrimitiveType);
  snprintf_l(v47, 0x200uLL, 0, "%s%s", "air.get_width_", v20);
  v45 = PrimitiveType;
  if (PPTextarget <= 0x11 && ((1 << PPTextarget) & 0x39E00) != 0)
  {
    v21 = v17;
    v22 = v19 > 1;
    v23 = 1;
  }

  else
  {
    if (v19 <= 1)
    {
      v50[0] = 0x400000001;
      return glpLLVMCallFunctionInner(a1, v47, v44, &v48, v17, v50, 2u, "");
    }

    v21 = v17;
    v23 = 0;
    v22 = 1;
  }

  v24 = v19;
  v25 = v44;
  v26 = LLVMGetElementType();
  v50[0] = 0x400000001;
  v27 = glpLLVMCallFunctionInner(a1, v47, v26, &v48, v21, v50, 2u, "");
  v43 = &v41;
  v41 = v23;
  v42 = v24;
  v28 = v24 + v23;
  MEMORY[0x28223BE20](v27, 8 * v28);
  v30 = (&v41 - v29);
  bzero(&v41 - v29, v31);
  *v30 = v27;
  v32 = v21;
  inserted = MEMORY[0x23EE85370](v25);
  if (v22)
  {
    v34 = glpTextureNameFromSamplerType(v45);
    snprintf_l(v47, 0x200uLL, 0, "%s%s", "air.get_height_", v34);
    v50[0] = 0x400000001;
    v30[1] = glpLLVMCallFunctionInner(a1, v47, v26, &v48, v32, v50, 2u, "");
  }

  if (v41)
  {
    v35 = glpTextureNameFromSamplerType(v45);
    snprintf_l(v47, 0x200uLL, 0, "%s%s", "air.get_array_size_", v35);
    v50[0] = 0x400000001;
    v36 = glpLLVMCallFunctionInner(a1, v47, v26, &v48, v32, v50, 2u, "");
    v30[v42] = v36;
  }

  else if (v42 >= 3)
  {
    v37 = glpTextureNameFromSamplerType(v45);
    snprintf_l(v47, 0x200uLL, 0, "%s%s", "air.get_depth_", v37);
    v50[0] = 0x400000001;
    v30[2] = glpLLVMCallFunctionInner(a1, v47, v26, &v48, v32, v50, 2u, "");
  }

  if (v28)
  {
    v38 = 0;
    v39 = a1 + 65;
    do
    {
      if (!v39[v38])
      {
        v39[v38] = LLVMConstInt();
      }

      inserted = LLVMBuildInsertElement();
      ++v38;
    }

    while (v28 != v38);
  }

  return inserted;
}

uint64_t glpLLVMBuildRefract(void *a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v9 = a2[2];
  v10 = *(a3 + 4);
  if (glpPrimitiveTypeGetCategory(*(a3 + 4)) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v10);
    v12 = LLVMTypeOf();
    v19 = Length;
    if (Length >= 2)
    {
      v12 = LLVMGetElementType();
    }
  }

  else
  {
    v12 = LLVMTypeOf();
    v19 = 1;
  }

  v13 = glpLLVMGetTypeString(&v22, *a3, a4);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  snprintf_l(v23, 0x200uLL, 0, "%s.%s", "air.dot", v13);
  v55[0] = 0x300000001;
  glpLLVMCallFunctionInner(a1, v23, v12, a2, 2, v55, 2u, "");
  LLVMBuildFMul();
  llvm::ConstantFP::get();
  LLVMBuildFMul();
  LLVMBuildFSub();
  LLVMBuildFMul();
  v21 = LLVMBuildFSub();
  MEMORY[0x23EE85200](v12);
  LLVMBuildFCmp();
  if (a4)
  {
    v14 = a4 == 3;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = "air.fast_sqrt";
  }

  else
  {
    v15 = "air.sqrt";
  }

  v16 = glpLLVMGetTypeString(&v22, *(a3 + 8), a4);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  snprintf_l(v23, 0x200uLL, 0, "%s.%s", v15, v16);
  v55[0] = 0x300000001;
  glpLLVMCallFunctionInner(a1, v23, v12, &v21, 1, v55, 2u, "");
  LLVMBuildFMul();
  v17 = LLVMBuildFAdd();
  glpLLVMSplatElement(a1, v17, v19);
  glpLLVMSplatElement(a1, v9, v19);
  LLVMBuildFMul();
  LLVMBuildFMul();
  LLVMBuildFSub();
  MEMORY[0x23EE85200](a5);
  return LLVMBuildSelect();
}

uint64_t glpLLVMf32Extend(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4 || a4 == 3)
  {
    return a2;
  }

  v6 = LLVMFloatTypeInContext();
  if (glpPrimitiveTypeGetCategory(a3) == 2)
  {
    Length = glpPrimitiveVectorGetLength(a3);
    MEMORY[0x23EE854F0](v6, Length);
  }

  return LLVMBuildFPCast();
}

uint64_t glpLLVMSplatConstantVector(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  if (a2 != 1)
  {
    v3 = a2;
    MEMORY[0x28223BE20](a1, 8 * a2);
    v5 = v14 - v4;
    bzero(v14 - v4, v6);
    if (v3 >= 1)
    {
      v7 = (v3 + 1) & 0xFFFFFFFE;
      v8 = vdupq_n_s64(v3 - 1);
      v9 = xmmword_23A300E20;
      v10 = (v5 + 8);
      v11 = vdupq_n_s64(2uLL);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v8, v9));
        if (v12.i8[0])
        {
          *(v10 - 1) = v2;
        }

        if (v12.i8[4])
        {
          *v10 = v2;
        }

        v9 = vaddq_s64(v9, v11);
        v10 += 2;
        v7 -= 2;
      }

      while (v7);
    }

    return LLVMConstVector();
  }

  return v2;
}

uint64_t glpBuildGetLODOperation(uint64_t *a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v6 = a2;
  v39[1] = *MEMORY[0x277D85DE8];
  ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
  SaFlags = glpASTNodeGetSaFlags(v6);
  v10 = glpPrecisionIndexFromSAFlags(SaFlags);
  v37 = 0u;
  v38 = 0u;
  *v35 = 0u;
  v36 = 0u;
  v11 = 1;
  Child = glpASTNodeGetChild(v6, 1u);
  SaType = glpASTNodeGetSaType(Child);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  LODWORD(v6) = PrimitiveType;
  v15 = glpTextureNameFromSamplerType(PrimitiveType);
  snprintf_l(v35, 0x40uLL, 0, "air.compute_lod_%s", v15);
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(v6);
  TextureSize = glpGetTextureSize(PPTextarget, &v31);
  v18 = *a3;
  v19 = *a4;
  Category = glpPrimitiveTypeGetCategory(v19);
  if (Category == 2)
  {
    Category = glpPrimitiveVectorGetLength(v19);
    v11 = Category;
  }

  if (TextureSize != v11)
  {
    MEMORY[0x28223BE20](Category, 8 * TextureSize);
    v22 = &v30[-v21];
    bzero(&v30[-v21], v23);
    v24 = 0;
    v25 = a1 + 65;
    do
    {
      v26 = v25[v24];
      if (!v26)
      {
        v26 = LLVMConstInt();
        v25[v24] = v26;
      }

      *&v22[8 * v24++] = v26;
    }

    while (TextureSize != v24);
    LLVMConstVector();
    v27 = LLVMTypeOf();
    MEMORY[0x23EE85370](v27);
    v18 = LLVMBuildShuffleVector();
  }

  v32 = *(a3 + 1);
  v33 = v18;
  v34 = LLVMConstInt();
  v28 = glpPrimitiveTypeToLLVMType(a1, ReturnPrimitiveType, v10);
  v39[0] = 0x400000001;
  return glpLLVMCallFunctionInner(a1, v35, v28, &v32, 4, v39, 2u, "");
}

uint64_t glpLLVMGetVariablePointer(uint64_t a1, unint64_t a2)
{
  v2 = *(a2 + 144);
  v3 = *v2;
  if (*v2 && (*(a2 + 51) & 0x86) != 0)
  {
    v3 = glpPointerHashGet(*(a1 + 344), a2);
    if (!v3)
    {
      if (*(a1 + 324))
      {
        v6 = LLVMGetElementType();
        v7 = glpBuildAlloca(a1, v6);
      }

      else
      {
        glpPointerHashGet(*(a1 + 336), a2);
        v7 = LLVMGetParam();
      }

      v3 = v7;
      glpPointerHashPut(*(a1 + 344), a2, v7, v8);
    }

    if ((*(v2 + 32) & 4) != 0)
    {
      LLVMBuildLoad();
      if (!*(a1 + 520))
      {
        *(a1 + 520) = LLVMConstInt();
      }

      return LLVMBuildGEP();
    }
  }

  return v3;
}

uint64_t glpBuildInterpolateAt(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 144);
  v11 = *(v10 + 24);
  v12 = *(v10 + 28);
  v13 = glpPrimitiveTypeToLLVMType(a1, v11, v12);
  v52 = LLVMBuildLoad();
  v14 = a4 & 0x46000800000;
  if ((a4 & 0x46000800000uLL) > 0x3FFFFFFFFFLL)
  {
    if ((a4 & 0x46000800000uLL) > 0x3FFFFFFFFFFLL)
    {
      if (v14 == 0x40000000000)
      {
        v15 = "air.interpolate_sample_perspective";
      }

      else
      {
        if (v14 != 0x42000000000)
        {
          goto LABEL_24;
        }

        v15 = "air.interpolate_sample_no_perspective";
      }
    }

    else if (v14 == 0x4000000000)
    {
      v15 = "air.interpolate_centroid_perspective";
    }

    else
    {
      if (v14 != 0x6000000000)
      {
        goto LABEL_24;
      }

      v15 = "air.interpolate_centroid_no_perspective";
    }
  }

  else if ((a4 & 0x46000800000uLL) > 0x1FFFFFFFFFLL)
  {
    if (v14 == 0x2000000000)
    {
      v15 = "air.interpolate_center_no_perspective";
    }

    else
    {
      if (v14 != 0x2000800000)
      {
        goto LABEL_24;
      }

      v15 = "air.interpolate_offset_no_perspective";
    }
  }

  else
  {
    if (v14)
    {
      if (v14 == 0x800000)
      {
        v15 = "air.interpolate_offset_perspective";
        goto LABEL_20;
      }

LABEL_24:
      abort();
    }

    v15 = "air.interpolate_center_perspective";
  }

LABEL_20:
  v53 = 0;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *v20 = 0u;
  v21 = 0u;
  snprintf_l(v20, 0x200uLL, 0, "%s%s", v15, a5);
  if (a6)
  {
    v53 = a6;
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = glpLLVMGetTypeString(&v19, v11, v12);
  memset(v54, 0, sizeof(v54));
  snprintf_l(v54, 0x200uLL, 0, "%s.%s", v20, v17);
  v55[0] = 0x300000001;
  return glpLLVMCallFunctionInner(a1, v54, v13, &v52, v16, v55, 2u, "");
}

uint64_t glpCGSwizzle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t inserted, uint64_t a5, unsigned int a6)
{
  v99 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    return inserted;
  }

  Category = glpPrimitiveTypeGetCategory(a5);
  v13 = Category;
  v14 = a6 & 7;
  if (!a2)
  {
    MEMORY[0x28223BE20](Category, 8 * (a6 & 7));
    v44 = v95 - v43;
    bzero(v95 - v43, v45);
    if ((a6 & 7) == 0)
    {
      goto LABEL_47;
    }

    v97 = inserted;
    v98 = v95;
    v46 = 0;
    v47 = a1 + 520;
    v48 = 3;
    do
    {
      v49 = (a6 >> v48) & 3;
      v50 = *(v47 + 8 * v49);
      if (!v50)
      {
        v50 = LLVMConstInt();
        *(v47 + 8 * v49) = v50;
      }

      *&v44[v46] = v50;
      v48 += 2;
      v46 += 8;
    }

    while (8 * v14 != v46);
    inserted = v97;
    if (v14 == 1)
    {
      if (v13 != 2)
      {
        return inserted;
      }

      return LLVMBuildExtractElement();
    }

    else
    {
LABEL_47:
      if (v13 != 2)
      {
        v54 = LLVMTypeOf();
        v55 = MEMORY[0x23EE854F0](v54, a6 & 7);
        MEMORY[0x23EE85370](v55);
        LLVMBuildInsertElement();
      }

      LLVMConstVector();
      return LLVMBuildShuffleVector();
    }
  }

  v15 = glpPrimitiveTypeGetCategory(a3);
  if (v13 == 2)
  {
    Length = glpPrimitiveVectorGetLength(a3);
    v17 = Length;
    MEMORY[0x28223BE20](Length, 8 * Length);
    v98 = (v95 - v18);
    bzero(v95 - v18, v19);
    MEMORY[0x28223BE20](v20, 4 * Length);
    v22 = (v95 - v21);
    bzero(v95 - v21, v23);
    v24 = glpPrimitiveVectorGetLength(a5);
    v96 = Length;
    if (Length == v24)
    {
      if (Length)
      {
        v25 = 0;
        v26 = vdupq_n_s64(Length - 1);
        v27 = xmmword_23A300E30;
        v28 = xmmword_23A300E20;
        v29 = v22 + 2;
        v30 = vdupq_n_s64(4uLL);
        do
        {
          v31 = vmovn_s64(vcgeq_u64(v26, v28));
          if (vuzp1_s16(v31, *v26.i8).u8[0])
          {
            *(v29 - 2) = v25;
          }

          if (vuzp1_s16(v31, *&v26).i8[2])
          {
            *(v29 - 1) = v25 + 1;
          }

          if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, *&v27))).i32[1])
          {
            *v29 = v25 + 2;
            v29[1] = v25 + 3;
          }

          v25 += 4;
          v27 = vaddq_s64(v27, v30);
          v28 = vaddq_s64(v28, v30);
          v29 += 4;
        }

        while (((Length + 3) & 0x1FFFFFFFCLL) != v25);
      }

      if ((a6 & 7) != 0)
      {
        v32 = 0;
        v33 = vdupq_n_s32(v14 - 1);
        v34 = xmmword_23A300DF0;
        v35.i64[0] = 0x400000004;
        v35.i64[1] = 0x400000004;
        v36 = Length;
        do
        {
          v37 = vmovn_s32(vcgeq_u32(v33, v34));
          if (v37.i8[0])
          {
            v22[(a6 >> (v32 + 3)) & 3] = v36;
          }

          if (v37.i8[2])
          {
            v22[(a6 >> (v32 + 5)) & 3] = v36 + 1;
          }

          if (v37.i8[4])
          {
            v22[(a6 >> (v32 + 7)) & 3] = v36 + 2;
          }

          if (v37.i8[6])
          {
            v22[(a6 >> (v32 + 9)) & 3] = v36 + 3;
          }

          v34 = vaddq_s32(v34, v35);
          v32 += 8;
          v36 += 4;
        }

        while (((2 * (a6 & 7) + 6) & 0x18) != v32);
      }

      if (Length)
      {
        v38 = a1 + 520;
        v39 = v98;
        do
        {
          v41 = *v22++;
          v40 = v41;
          if (v41 > 7)
          {
            v42 = LLVMConstInt();
          }

          else
          {
            v42 = *(v38 + 8 * v40);
            if (!v42)
            {
              v42 = LLVMConstInt();
              *(v38 + 8 * v40) = v42;
            }
          }

          *v39++ = v42;
          --v17;
        }

        while (v17);
      }
    }

    else
    {
      if (Length)
      {
        v56 = (Length + 3) & 0x1FFFFFFFCLL;
        v57 = vdupq_n_s64(Length - 1);
        v58 = xmmword_23A300E30;
        v59 = xmmword_23A300E20;
        v60 = v22 + 2;
        v61 = vdupq_n_s64(4uLL);
        do
        {
          v62 = vmovn_s64(vcgeq_u64(v57, v59));
          if (vuzp1_s16(v62, *v57.i8).u8[0])
          {
            *(v60 - 2) = v14;
          }

          if (vuzp1_s16(v62, *&v57).i8[2])
          {
            *(v60 - 1) = v14;
          }

          if (vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v58))).i32[1])
          {
            *v60 = v14;
            v60[1] = v14;
          }

          v58 = vaddq_s64(v58, v61);
          v59 = vaddq_s64(v59, v61);
          v60 += 4;
          v56 -= 4;
        }

        while (v56);
      }

      if ((a6 & 7) != 0)
      {
        v63 = vdupq_n_s32(v14 - 1);
        v64 = xmmword_23A300DF0;
        v65 = 9;
        v66 = 3;
        v67.i64[0] = 0x400000004;
        v67.i64[1] = 0x400000004;
        do
        {
          v68 = vmovn_s32(vcgeq_u32(v63, v64));
          if (v68.i8[0])
          {
            v22[(a6 >> (v65 - 6)) & 3] = v66 - 3;
          }

          if (v68.i8[2])
          {
            v22[(a6 >> (v65 - 4)) & 3] = v66 - 2;
          }

          if (v68.i8[4])
          {
            v22[(a6 >> (v65 - 2)) & 3] = v66 - 1;
          }

          if (v68.i8[6])
          {
            v22[(a6 >> v65) & 3] = v66;
          }

          v64 = vaddq_s32(v64, v67);
          v65 += 8;
          v66 += 4;
        }

        while (v66 - (((a6 & 7) + 3) & 0xC) != 3);
      }

      v97 = inserted;
      v95[0] = v95;
      v95[1] = a2;
      if (Length)
      {
        v69 = a1 + 520;
        Length = Length;
        v70 = v98;
        v71 = v22;
        do
        {
          v73 = *v71++;
          v72 = v73;
          if (v73 > 7)
          {
            v74 = LLVMConstInt();
          }

          else
          {
            v74 = *(v69 + 8 * v72);
            if (!v74)
            {
              v74 = LLVMConstInt();
              *(v69 + 8 * v72) = v74;
            }
          }

          *v70++ = v74;
          --Length;
        }

        while (Length);
      }

      v75 = v96;
      LLVMConstVector();
      v76 = LLVMTypeOf();
      MEMORY[0x23EE85370](v76);
      LLVMBuildShuffleVector();
      if (v75)
      {
        v77 = 0;
        v78 = vdupq_n_s64(v17 - 1);
        v79 = xmmword_23A300E30;
        v80 = xmmword_23A300E20;
        v81 = v22 + 2;
        v82 = vdupq_n_s64(4uLL);
        do
        {
          v83 = vmovn_s64(vcgeq_u64(v78, v80));
          if (vuzp1_s16(v83, *v78.i8).u8[0])
          {
            *(v81 - 2) = v77;
          }

          if (vuzp1_s16(v83, *&v78).i8[2])
          {
            *(v81 - 1) = v77 + 1;
          }

          if (vuzp1_s16(*&v78, vmovn_s64(vcgeq_u64(v78, *&v79))).i32[1])
          {
            *v81 = v77 + 2;
            v81[1] = v77 + 3;
          }

          v77 += 4;
          v79 = vaddq_s64(v79, v82);
          v80 = vaddq_s64(v80, v82);
          v81 += 4;
        }

        while (((v17 + 3) & 0x1FFFFFFFCLL) != v77);
      }

      if ((a6 & 7) != 0)
      {
        v84 = ((a6 & 7) + 3) & 0xC;
        v85 = xmmword_23A300DF0;
        v86 = vdupq_n_s32(v14 - 1);
        v87 = 9;
        v88.i64[0] = 0x400000004;
        v88.i64[1] = 0x400000004;
        do
        {
          v89 = vmovn_s32(vcgeq_u32(v86, v85));
          if (v89.i8[0])
          {
            v22[(a6 >> (v87 - 6)) & 3] = ((a6 >> (v87 - 6)) & 3) + v75;
          }

          if (v89.i8[2])
          {
            v22[(a6 >> (v87 - 4)) & 3] = ((a6 >> (v87 - 4)) & 3) + v75;
          }

          if (v89.i8[4])
          {
            v22[(a6 >> (v87 - 2)) & 3] = ((a6 >> (v87 - 2)) & 3) + v75;
          }

          if (v89.i8[6])
          {
            v22[(a6 >> v87) & 3] = ((a6 >> v87) & 3) + v75;
          }

          v85 = vaddq_s32(v85, v88);
          v87 += 8;
          v84 -= 4;
        }

        while (v84);
      }

      if (v75)
      {
        v90 = a1 + 520;
        v91 = v98;
        do
        {
          v93 = *v22++;
          v92 = v93;
          if (v93 > 7)
          {
            v94 = LLVMConstInt();
          }

          else
          {
            v94 = *(v90 + 8 * v92);
            if (!v94)
            {
              v94 = LLVMConstInt();
              *(v90 + 8 * v92) = v94;
            }
          }

          *v91++ = v94;
          --v17;
        }

        while (v17);
      }
    }

    LLVMConstVector();
    return LLVMBuildShuffleVector();
  }

  if (v15 != 2)
  {
    return inserted;
  }

  v52 = (a6 >> 3) & 3;
  if (!*(a1 + 520 + 8 * v52))
  {
    *(a1 + 520 + 8 * v52) = LLVMConstInt();
  }

  return LLVMBuildInsertElement();
}

BOOL glpGetConstantOffset(uint64_t a1, _DWORD *a2)
{
  result = glpIsConstantNode(a1);
  if (result)
  {
    *a2 = *glpConstantNodeGetValue(a1);
    return 1;
  }

  return result;
}

uint64_t glpBuildUniformElementPtr(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  Gep = glpFindGep(a1, a2, a5, a6);
  if (!Gep)
  {
    LLVMConstInt();
    LLVMGetInsertBlock();
    LLVMPositionBuilderAtEnd();
    if (a4)
    {
      LLVMBuildPointerCast();
    }

    Gep = LLVMBuildGEP();
    LLVMPositionBuilderAtEnd();
    glpAddGep(a1, a2, v7, v6, Gep);
  }

  return Gep;
}

uint64_t glpMakeSwizzle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = 0;
  v12 = &a9;
  LODWORD(result) = 4;
  do
  {
    v11 = v12;
    v12 += 8;
    result = (*v11 << (v9 + 3)) | result & ~(24 << v9);
    v9 += 2;
  }

  while (v9 != 8);
  return result;
}

uint64_t glpFindGep(uint64_t a1, unint64_t a2, int a3, int a4)
{
  result = glpPointerHashGet(*(a1 + 352), a2);
  if (result)
  {
    v7 = *(result + 4);
    if (v7)
    {
      for (i = *(result + 8) + 8; *(i - 4) != a4 || *(i - 8) != a3; i += 16)
      {
        if (!--v7)
        {
          return 0;
        }
      }

      return *i;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *glpAddGep(void *a1, unint64_t a2, int a3, int a4, uint64_t a5)
{
  v10 = glpPointerHashGet(a1[44], a2);
  if (!v10)
  {
    v10 = glpLinkerPoolAlloc(a1[16]);
    v11 = a1[19];
    *v10 = 4;
    *(v10 + 8) = (*(v11 + 8))(*v11, 64, "Vector Storage (GLPGepEntry)");
    glpPointerHashPut(a1[44], a2, v10, v12);
  }

  v13 = *v10;
  v14 = *(v10 + 4);
  if ((v14 + 1) <= *v10)
  {
    v18 = *(v10 + 8);
    v19 = *(v10 + 4);
  }

  else
  {
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v15 = 2 * v13;
    if (v15 <= v14 + 1)
    {
      v16 = v14 + 1;
    }

    else
    {
      v16 = v15;
    }

    v17 = a1[19];
    v18 = (v17[1])(*v17, 16 * v16, "Vector Storage (GLPGepEntry, growth)");
    memcpy(v18, *(v10 + 8), 16 * *(v10 + 4));
    (v17[3])(*v17, *(v10 + 8));
    *v10 = v16;
    *(v10 + 8) = v18;
    v19 = *(v10 + 4);
  }

  result = memmove(&v18[16 * v14 + 16], &v18[16 * v14], 16 * (v19 - v14));
  v21 = *(v10 + 8) + 16 * v14;
  *v21 = a3;
  *(v21 + 4) = a4;
  *(v21 + 8) = a5;
  ++*(v10 + 4);
  return result;
}

uint64_t glpLLVMCGInsertBasicBlock(uint64_t a1, uint64_t a2)
{
  v3 = LLVMAppendBasicBlock();
  if (*(a1 + 432))
  {
    LLVMMoveBasicBlockBefore();
  }

  return v3;
}

uint64_t glpLLVMSplatScalar(void *a1, uint64_t a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a1[65];
  if (!v5)
  {
    v5 = LLVMConstInt();
    a1[65] = v5;
  }

  v6 = LLVMTypeOf();
  v7 = MEMORY[0x23EE854F0](v6, a3);
  MEMORY[0x23EE85370](v7);
  inserted = LLVMBuildInsertElement();
  MEMORY[0x28223BE20](inserted, 8 * a3);
  v10 = v19 - v9;
  bzero(v19 - v9, v11);
  if (a3)
  {
    v12 = (a3 + 1) & 0x1FFFFFFFELL;
    v13 = vdupq_n_s64(a3 - 1);
    v14 = xmmword_23A300E20;
    v15 = (v10 + 8);
    v16 = vdupq_n_s64(2uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v13, v14));
      if (v17.i8[0])
      {
        *(v15 - 1) = v5;
      }

      if (v17.i8[4])
      {
        *v15 = v5;
      }

      v14 = vaddq_s64(v14, v16);
      v15 += 2;
      v12 -= 2;
    }

    while (v12);
  }

  LLVMConstVector();
  return LLVMBuildShuffleVector();
}

uint64_t glpLLVMSplatElement(void *a1, uint64_t a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (a3 != 1)
  {
    v6 = LLVMTypeOf();
    v7 = MEMORY[0x23EE854F0](v6, a3);
    MEMORY[0x23EE85370](v7);
    v8 = a1[65];
    if (!v8)
    {
      v8 = LLVMConstInt();
      a1[65] = v8;
    }

    inserted = LLVMBuildInsertElement();
    MEMORY[0x28223BE20](inserted, 8 * a3);
    v11 = v20 - v10;
    bzero(v20 - v10, v12);
    if (a3 >= 1)
    {
      v13 = (a3 + 1) & 0xFFFFFFFE;
      v14 = vdupq_n_s64(a3 - 1);
      v15 = xmmword_23A300E20;
      v16 = (v11 + 8);
      v17 = vdupq_n_s64(2uLL);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v14, v15));
        if (v18.i8[0])
        {
          *(v16 - 1) = v8;
        }

        if (v18.i8[4])
        {
          *v16 = v8;
        }

        v15 = vaddq_s64(v15, v17);
        v16 += 2;
        v13 -= 2;
      }

      while (v13);
    }

    LLVMConstVector();
    return LLVMBuildShuffleVector();
  }

  return a2;
}

uint64_t glpGetTextureSize(int a1, int *a2)
{
  v3 = 0;
  result = 2;
  if (a1 > 7)
  {
    if (a1 > 11)
    {
      if (a1 <= 15)
      {
        if (a1 != 12)
        {
          if (a1 != 13)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        goto LABEL_16;
      }

      if (a1 != 16)
      {
        if (a1 != 17)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }

LABEL_20:
      result = 3;
      goto LABEL_24;
    }

    if (a1 == 8)
    {
LABEL_19:
      v3 = 1;
      goto LABEL_20;
    }

    if (a1 != 9)
    {
      if (a1 != 11)
      {
        goto LABEL_24;
      }

LABEL_22:
      v3 = 1;
    }

LABEL_23:
    result = 1;
    goto LABEL_24;
  }

  if (a1 <= 4)
  {
    if (a1 < 2)
    {
      goto LABEL_20;
    }

    if (a1 != 4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((a1 - 5) >= 2)
  {
    if (a1 != 7)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_16:
  v3 = 1;
LABEL_24:
  *a2 = v3;
  return result;
}

char *glpTextureNameFromSamplerType(uint64_t a1)
{
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(a1);
  if (PPTextarget >= 0x12)
  {
    abort();
  }

  return (&off_278B4DF38)[PPTextarget];
}

BOOL glpLLVMTypesEqual(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v10 = glpPrimitiveTypeGetScalarType(a2) == 5 || glpPrimitiveTypeGetScalarType(a2) == 36;
  v11 = glpPrimitiveTypeGetScalarType(a4) == 5 || glpPrimitiveTypeGetScalarType(a4) == 36;
  if (glpPrimitiveTypeGetCategory(a2) == 2)
  {
    Length = glpPrimitiveVectorGetLength(a2);
  }

  else
  {
    Length = 1;
  }

  if (glpPrimitiveTypeGetCategory(a4) == 2)
  {
    v13 = glpPrimitiveVectorGetLength(a4);
  }

  else
  {
    v13 = 1;
  }

  if (a2 == a4 || (result = 0, v10 && v11) && Length == v13)
  {
    if (a3 == a5)
    {
      return 1;
    }

    ScalarType = glpPrimitiveTypeGetScalarType(a2);
    v16 = ScalarType;
    if (ScalarType <= 8)
    {
      if (ScalarType == 1)
      {
        v17 = &unk_23A300E40;
        goto LABEL_27;
      }

      if (ScalarType != 5)
      {
        return 0;
      }
    }

    else
    {
      result = 1;
      if (v16 == 9)
      {
        return result;
      }

      if (v16 != 36)
      {
        if (v16 == 62)
        {
          return result;
        }

        return 0;
      }
    }

    v17 = qword_23A300E60;
LABEL_27:
    if (a3 <= 3 && *(a1 + v17[a3]) > 0x10u)
    {
      v18 = 32;
    }

    else
    {
      v18 = 16;
    }

    if (a5 <= 3 && *(a1 + v17[a5]) > 0x10u)
    {
      v19 = 32;
    }

    else
    {
      v19 = 16;
    }

    return v18 == v19;
  }

  return result;
}

uint64_t glpBuildArrayElementPtr(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (glpIsConstantNode(a4) && (Value = glpConstantNodeGetValue(a4), !a6))
  {
    v15 = *Value;
    v13 = glpBuildArrayElementPtrCst(a1, a2, a3, *Value);
    if (a5)
    {
      v14 = glpBuildArrayElementPtrCst(a1, a2, a3, v15 + 1);
LABEL_11:
      *a5 = v14;
    }
  }

  else
  {
    if (!a1[65])
    {
      a1[65] = LLVMConstInt();
    }

    glpLLVMCGNode(a1, a4, 1);
    v13 = LLVMBuildGEP();
    if (a5)
    {
      if (!a1[66])
      {
        a1[66] = LLVMConstInt();
      }

      LLVMBuildAdd();
      v14 = LLVMBuildGEP();
      goto LABEL_11;
    }
  }

  return v13;
}

uint64_t glpLLVMLoadVector(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  SourceVariable = glpLoadSourceVariable(a1, a3, a2);
  v13 = glpPrimitiveTypeToLLVMType(a1, a4, a5);
  if (!a6)
  {
    return SourceVariable;
  }

  v14 = v13;
  if (glpLLVMTypesEqual(a1, a6, a7, a4, a5))
  {
    return SourceVariable;
  }

  return glpLLVMUnpackTypeInner(a1, SourceVariable, v14);
}

uint64_t glpBuildArrayElementPtrCst(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  Gep = glpFindGep(a1, a2, 0, a4);
  if (!Gep)
  {
    if (!a1[65])
    {
      a1[65] = LLVMConstInt();
    }

    LLVMConstInt();
    LLVMGetInsertBlock();
    LLVMPositionBuilderAtEnd();
    Gep = LLVMBuildGEP();
    LLVMPositionBuilderAtEnd();
    glpAddGep(a1, a2, 0, a4, Gep);
  }

  return Gep;
}

uint64_t glpLoadSourceVariable(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a3 + 51))
  {
    v7 = glpLayoutObjectFind(*(a3 + 8), 35);
    *__str = 0u;
    v9 = 0u;
    snprintf(__str, 0x1FuLL, "user(slot%u)", *(v7 + 4));
    return glpBuildInterpolateAt(a1, a2, a3, *(a3 + 48), __str, 0);
  }

  else
  {

    return LLVMBuildLoad();
  }
}

uint64_t glpIsComponentAssigment(uint64_t result, unsigned int ***a2, _DWORD *a3, _DWORD *a4, unsigned int *a5, int a6)
{
  if (result)
  {
    v11 = result;
    if (glpASTNodeGetKind(result) == 39)
    {
      Lhs = glpBinaryOperatorNodeGetLhs(v11);
      VariableExtra = glpLValueNodeGetVariableExtra(Lhs);
      result = glpDerefNodeGetOffset(Lhs);
      if (!result)
      {
        return result;
      }

      OffsetExpr = glpOffsetNodeGetOffsetExpr(result);
      if (OffsetExpr)
      {
        v15 = OffsetExpr;
        result = glpIsConstantNode(OffsetExpr);
        if (!result)
        {
          return result;
        }

        v16 = *glpConstantNodeGetValue(v15);
      }

      else
      {
        v16 = 0;
      }

      if (*a2)
      {
        if (*a2 == VariableExtra && !*a3 && *a4 == v16)
        {
LABEL_20:
          result = glpGetVectorSwizzle(Lhs, a5);
          if (result)
          {
            *a2 = VariableExtra;
            *a3 = 0;
            result = 1;
            *a4 = v16;
          }

          return result;
        }
      }

      else
      {
        v17 = *VariableExtra;
        if (!glpTypeGetKind(*VariableExtra))
        {
          PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v17);
          Category = glpPrimitiveTypeGetCategory(PrimitiveType);
          if (Category == 2 || Category == 3 && !a6 && glpPrimitiveTypeGetScalarType(PrimitiveType) != 62)
          {
            goto LABEL_20;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t glpProcessComponentWiseVectorAssignment(void *a1, unsigned int **a2, int a3, uint64_t *a4, unsigned int *a5, int a6, void *a7)
{
  v7 = a7;
  v10 = a3;
  v107 = a2;
  v110 = *MEMORY[0x277D85DE8];
  v11 = (a7 - 1);
  v108 = a1;
  if (a7 >= 1)
  {
    LODWORD(v106) = a6;
    LODWORD(v104) = a3;
    v12 = 0;
    v109 = 0;
    v13 = 1;
    v105 = a7;
    v14 = a7;
    while (1)
    {
      v15 = v13;
      Rhs = glpBinaryOperatorNodeGetRhs(a4[v12]);
      Kind = glpASTNodeGetKind(Rhs);
      if (Kind == 3)
      {
        v13 = v15;
      }

      else
      {
        if (Kind != 81 || (VariableExtra = glpLValueNodeGetVariableExtra(Rhs), glpTypeGetKind(*VariableExtra)) || (*(VariableExtra + 52) & 1) != 0 || (PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*VariableExtra), glpPrimitiveTypeGetCategory(PrimitiveType) != 2) || (Offset = glpDerefNodeGetOffset(Rhs), VectorElementExpr = glpOffsetNodeGetVectorElementExpr(Offset), OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset), glpOffsetNodeGetBankIndex(Offset)) || OffsetExpr || VectorElementExpr)
        {
          do
          {
            v27 = *a4++;
            v26 = v27;
            if (v106)
            {
              v28 = v11 == 0;
            }

            else
            {
              v28 = 0;
            }

            v29 = v28;
            v30 = glpLLVMCGNode(v108, v26, v29);
            --v11;
            --v14;
          }

          while (v14);
          return v30;
        }

        v13 = 0;
        v23 = v109 == VariableExtra || v109 == 0;
        if (v23 && (v15 & 1) != 0)
        {
          glpOffsetNodeGetSwizzle(Offset);
          v13 = 1;
          v109 = VariableExtra;
        }
      }

      if (++v12 >= v14)
      {
        v24 = v13 == 0;
        v25 = v108;
        v7 = v105;
        v10 = v104;
        goto LABEL_30;
      }
    }
  }

  v25 = a1;
  v109 = 0;
  v24 = 0;
LABEL_30:
  v32 = glpLLVMGetVariablePointer(v25, v107);
  v33 = *v107;
  v34 = glpTypeGetKind(*v107);
  if (v34)
  {
    v36 = 0;
  }

  else
  {
    v37 = glpPrimitiveTypeGetPrimitiveType(v33);
    Category = glpPrimitiveTypeGetCategory(v37);
    if (Category == 3)
    {
      ColumnType = glpPrimitiveMatrixGetColumnType(v37);
      Length = glpPrimitiveVectorGetLength(ColumnType);
      v41 = v10;
      v36 = Length;
      v34 = glpBuildArrayElementPtrCst(v25, v107, v32, v41);
      v32 = v34;
    }

    else
    {
      if (Category != 2)
      {
        abort();
      }

      v34 = glpPrimitiveVectorGetLength(v37);
      v36 = v34;
    }
  }

  v106 = v32;
  if (v36 != v7)
  {
    goto LABEL_45;
  }

  if (v7 < 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = 0;
    v43 = v7 - 1;
    do
    {
      v44 = 1 << a5[v43];
      if ((v44 & v42) != 0)
      {
        a4[v43] = 0;
      }

      v42 |= v44;
      v45 = v43-- + 1;
    }

    while (v45 > 1);
  }

  if ((((v42 ^ (-1 << v7)) == -1) & ~v24) != 0)
  {
    v51 = v7;
    MEMORY[0x28223BE20](v34, v35);
    v53 = (v103 - v52);
    bzero(v103 - v52, 8 * v7);
    if (v7 < 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = 0;
      v57 = v7;
      do
      {
        v54 = *a4;
        if (*a4)
        {
          v58 = glpBinaryOperatorNodeGetRhs(v54);
          v53[*a5] = v58;
          v54 = glpASTNodeGetKind(v58);
          if (v54 == 3)
          {
            ++v56;
          }
        }

        ++a5;
        ++a4;
        --v57;
      }

      while (v57);
    }

    v59 = 8 * v7;
    if (v56 == v7)
    {
      MEMORY[0x28223BE20](v54, v55);
      bzero(v103 - ((v59 + 15) & 0xFFFFFFFF0), 8 * v7);
      v60 = v108;
      if (v7)
      {
        v61 = (v103 - ((v59 + 15) & 0xFFFFFFFF0));
        do
        {
          v62 = *v53++;
          *v61++ = glpLLVMCGNode(v60, v62, 0);
          --v51;
        }

        while (v51);
      }

      LLVMConstVector();
    }

    else
    {
      v103[4] = v103;
      v63 = v108;
      v64 = v109;
      v65 = glpLLVMGetVariablePointer(v108, v109);
      SourceVariable = glpLoadSourceVariable(v63, v65, v64);
      v67 = LLVMTypeOf();
      v103[3] = v103;
      MEMORY[0x28223BE20](v67, v68);
      bzero(v103 - ((v59 + 15) & 0xFFFFFFFF0), 8 * v7);
      v107 = (v103 - ((v59 + 15) & 0xFFFFFFFF0));
      bzero(v107, 8 * v7);
      v69 = glpPrimitiveTypeGetPrimitiveType(*v64);
      v70 = glpPrimitiveVectorGetLength(v69);
      v71 = MEMORY[0x23EE85370](v67);
      v72 = 0;
      v109 = v70;
      v105 = v7;
      if (v56 && v70 >= v56)
      {
        v103[1] = v103;
        v103[2] = SourceVariable;
        MEMORY[0x28223BE20](v71, 8 * v70);
        v73 = v7;
        v75 = v103 - v74;
        bzero(v103 - v74, v76);
        if (v73)
        {
          v77 = 0;
          v78 = v107;
          v104 = (v108 + 65);
          v79 = v51;
          v80 = v53;
          do
          {
            v81 = *v80;
            if (glpASTNodeGetKind(*v80) == 3)
            {
              *&v75[8 * v77] = glpLLVMCGNode(v108, v81, 0);
              v82 = (v77 + v109);
              if (v82 > 7)
              {
                v83 = LLVMConstInt();
              }

              else
              {
                v83 = *(v104 + 8 * v82);
                if (!v83)
                {
                  v83 = LLVMConstInt();
                  *(v104 + 8 * v82) = v83;
                }
              }

              *v78 = v83;
              ++v77;
            }

            ++v78;
            ++v80;
            --v79;
          }

          while (v79);
        }

        v84 = v109 - v56;
        if (v109 > v56)
        {
          v85 = 8 * v56;
          do
          {
            v86 = LLVMTypeOf();
            *&v75[v85] = MEMORY[0x23EE85370](v86);
            v85 += 8;
            --v84;
          }

          while (v84);
        }

        LODWORD(v70) = v109;
        v71 = LLVMConstVector();
        v72 = 1;
        LODWORD(v7) = v105;
      }

      v104 = v71;
      if (v7)
      {
        v87 = 0;
        v88 = (2 * v70 - 1);
        v89 = 2 * v70 - 1;
        v90 = v108 + 65;
        do
        {
          v91 = v53[v87];
          if (glpASTNodeGetKind(v91) == 81)
          {
            v92 = glpDerefNodeGetOffset(v91);
            v93 = (glpOffsetNodeGetSwizzle(v92) >> 3) & 3;
            v94 = v90[v93];
            if (!v94)
            {
              v94 = LLVMConstInt();
              v90[v93] = v94;
            }

            v107[v87] = v94;
            if (v87 != v93)
            {
              v72 = 1;
            }
          }

          else if (!v107[v87])
          {
            if (v89 > 7)
            {
              v95 = LLVMConstInt();
            }

            else
            {
              v95 = v90[v88];
              if (!v95)
              {
                v95 = LLVMConstInt();
                v90[v88] = v95;
              }
            }

            v107[v87] = v95;
            v72 = 1;
          }

          ++v87;
        }

        while (v51 != v87);
      }

      v96 = v105;
      v97 = v109;
      if (v72 || v109 != v105)
      {
        LLVMConstVector();
        LLVMBuildShuffleVector();
      }

      if (v56 && v97 < v56 && v96)
      {
        v98 = 0;
        do
        {
          v99 = v53[v98];
          if (glpASTNodeGetKind(v99) == 3)
          {
            v100 = v108;
            glpLLVMCGNode(v108, v99, 0);
            if (v98 > 7)
            {
              LLVMConstInt();
            }

            else
            {
              v101 = v100 + 8 * v98;
              if (!*(v101 + 520))
              {
                *(v101 + 520) = LLVMConstInt();
              }
            }

            LLVMBuildInsertElement();
          }

          ++v98;
        }

        while (v51 != v98);
      }
    }

    LLVMBuildStore();
    return 0;
  }

  else
  {
LABEL_45:
    inserted = LLVMBuildLoad();
    if (v7 >= 1)
    {
      v46 = v25 + 65;
      v47 = v7;
      do
      {
        v48 = glpBinaryOperatorNodeGetRhs(*a4);
        glpLLVMCGNode(v25, v48, 1);
        v50 = *a5++;
        v49 = v50;
        if (v50 > 7)
        {
          LLVMConstInt();
        }

        else if (!v46[v49])
        {
          v46[v49] = LLVMConstInt();
        }

        inserted = LLVMBuildInsertElement();
        ++a4;
        --v47;
      }

      while (v47);
    }

    LLVMBuildStore();
  }

  return inserted;
}

uint64_t glpGetVectorSwizzle(uint64_t a1, unsigned int *a2)
{
  result = glpDerefNodeGetOffset(a1);
  if (result)
  {
    v4 = result;
    if (glpOffsetNodeGetVectorElementExpr(result))
    {
      return 0;
    }

    Swizzle = glpOffsetNodeGetSwizzle(v4);
    if ((Swizzle & 7) != 1)
    {
      return 0;
    }

    else
    {
      *a2 = (Swizzle >> 3) & 3;
      return 1;
    }
  }

  return result;
}

uint64_t *glpLLVMCGGlobalVariable(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 52) & 0x980) != 0)
  {
    *(a1 + 326) = 1;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    v15 = 0;
    v16 = 0;
LABEL_41:
    v31 = glpPrecisionIndexFromSAFlags(*(a2 + 48));
    v32 = glpTypeToLLVMTypeWithUnderlying(a1, *a2, v31, a2);
    v33 = *(a2 + 8);
    if (v33)
    {
      v34 = glpLayoutObjectFind(v33, 83) == 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = *(a1 + 320);
    switch(v35)
    {
      case 3:
        if ((v16 & v34) != 1)
        {
          goto LABEL_58;
        }

        v36 = 0;
        break;
      case 2:
        if (!v16)
        {
          goto LABEL_58;
        }

        v36 = 0;
        if ((*(a2 + 53) & 2) != 0 || !v34)
        {
          v37 = 0;
LABEL_60:
          result = MEMORY[0x23EE85440](v32, v36);
          v38 = *(a2 + 144);
          *v38 = result;
          *(v38 + 32) = *(v38 + 32) & 0xFFFFFFFB | v37;
          return result;
        }

        break;
      case 1:
        if (v15)
        {
          v36 = 3;
        }

        else
        {
          v36 = 0;
        }

        if (v16 & v34)
        {
          break;
        }

LABEL_59:
        v37 = 0;
        goto LABEL_60;
      default:
LABEL_58:
        v36 = 0;
        goto LABEL_59;
    }

    v32 = LLVMArrayType();
    v37 = 4;
    goto LABEL_60;
  }

  v5 = glpLayoutObjectFind(v4, 33);
  if (v5)
  {
    v6 = *(v5 + 4);
    switch(v6)
    {
      case 5:
        v7 = (a1 + 692);
        v8 = *(a1 + 692);
        v17 = *(a1 + 688);
        if (v8 + 1 <= v17)
        {
          v21 = *(a1 + 696);
          v22 = *(a1 + 692);
        }

        else
        {
          if (v17 <= 1)
          {
            v17 = 1;
          }

          v18 = 2 * v17;
          if (v18 <= v8 + 1)
          {
            v19 = v8 + 1;
          }

          else
          {
            v19 = v18;
          }

          v20 = *(a1 + 152);
          v21 = (v20[1])(*v20, 8 * v19, "Vector Storage (GLPVariableObject *, growth)");
          memcpy(v21, *(a1 + 696), 8 * *(a1 + 692));
          (v20[3])(*v20, *(a1 + 696));
          *(a1 + 688) = v19;
          *(a1 + 696) = v21;
          v22 = *(a1 + 692);
        }

        v29 = (a1 + 696);
        memmove(&v21[8 * v8 + 8], &v21[8 * v8], 8 * (v22 - v8));
        v16 = 0;
        v15 = 1;
        goto LABEL_38;
      case 3:
        if ((~*(a1 + 832) & 3) != 0)
        {
          v7 = (a1 + 692);
          v8 = *(a1 + 692);
          v23 = *(a1 + 688);
          if (v8 + 1 <= v23)
          {
            v27 = *(a1 + 696);
            v28 = *(a1 + 692);
          }

          else
          {
            if (v23 <= 1)
            {
              v23 = 1;
            }

            v24 = 2 * v23;
            if (v24 <= v8 + 1)
            {
              v25 = v8 + 1;
            }

            else
            {
              v25 = v24;
            }

            v26 = *(a1 + 152);
            v27 = (v26[1])(*v26, 8 * v25, "Vector Storage (GLPVariableObject *, growth)");
            memcpy(v27, *(a1 + 696), 8 * *(a1 + 692));
            (v26[3])(*v26, *(a1 + 696));
            *(a1 + 688) = v25;
            *(a1 + 696) = v27;
            v28 = *(a1 + 692);
          }

          v29 = (a1 + 696);
          memmove(&v27[8 * v8 + 8], &v27[8 * v8], 8 * (v28 - v8));
          v15 = 0;
          v16 = 0;
          goto LABEL_38;
        }

        break;
      case 0:
        v7 = (a1 + 676);
        v8 = *(a1 + 676);
        v9 = *(a1 + 672);
        if (v8 + 1 <= v9)
        {
          v13 = *(a1 + 680);
          v14 = *(a1 + 676);
        }

        else
        {
          if (v9 <= 1)
          {
            v9 = 1;
          }

          v10 = 2 * v9;
          if (v10 <= v8 + 1)
          {
            v11 = v8 + 1;
          }

          else
          {
            v11 = v10;
          }

          v12 = *(a1 + 152);
          v13 = (v12[1])(*v12, 8 * v11, "Vector Storage (GLPVariableObject *, growth)");
          memcpy(v13, *(a1 + 680), 8 * *(a1 + 676));
          (v12[3])(*v12, *(a1 + 680));
          *(a1 + 672) = v11;
          *(a1 + 680) = v13;
          v14 = *(a1 + 676);
        }

        v29 = (a1 + 680);
        memmove(&v13[8 * v8 + 8], &v13[8 * v8], 8 * (v14 - v8));
        v15 = 0;
        v16 = 1;
LABEL_38:
        *(*v29 + 8 * v8) = a2;
        ++*v7;
        goto LABEL_39;
    }
  }

  v15 = 0;
  v16 = 0;
LABEL_39:
  result = glpLayoutObjectFind(*(a2 + 8), 46);
  if (!result || (*(result + 4) - 9) >= 2)
  {
    goto LABEL_41;
  }

  return result;
}

uint64_t glpTypeToLLVMTypeWithUnderlying(uint64_t *a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *(a4[18] + 24) = 0;
  }

  Kind = glpTypeGetKind(a2);
  if (Kind >= 2)
  {
    if (Kind > 2)
    {
LABEL_37:
      abort();
    }

LABEL_16:
    v16 = glpLLVMGetAggregateType(a1, a2, a3, a4);
    goto LABEL_20;
  }

  if (!Kind)
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a2);
    if (glpPrimitiveTypeGetCategory(PrimitiveType) != 3 || glpPrimitiveTypeGetScalarType(PrimitiveType) != 62)
    {
      v16 = glpPrimitiveTypeToLLVMType(a1, PrimitiveType, a3);
LABEL_20:
      v18 = v16;
      if (!a4)
      {
        return v18;
      }

      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if (Kind != 1)
  {
    goto LABEL_37;
  }

  ElementCount = glpAggregateTypeGetElementCount(a2);
  v11 = ElementCount;
  if (!ElementCount)
  {
    MEMORY[0x28223BE20](ElementCount, v10);
    goto LABEL_27;
  }

  v12 = 0;
  v13 = 1;
  do
  {
    while (1)
    {
      ElementType = glpAggregateTypeGetElementType(a2, v12);
      if (glpTypeIsAtomic(ElementType))
      {
        break;
      }

      v13 = 0;
      if (++v12 == v11)
      {
        goto LABEL_16;
      }
    }

    v15 = glpPrimitiveTypeGetPrimitiveType(ElementType);
    if ((v15 & 0xFFFFFFFE) == 0x40)
    {
      v13 = 0;
    }

    ++v12;
  }

  while (v12 != v11);
  if (!v13)
  {
    goto LABEL_16;
  }

  MEMORY[0x28223BE20](v15, 8 * v11);
  v20 = v32 - v19;
  bzero(v32 - v19, v21);
  v22 = 0;
  do
  {
    v23 = glpAggregateTypeGetElementType(a2, v22);
    ElementFlags = glpAggregateTypeGetElementFlags(a2, v22);
    v25 = glpPrecisionIndexFromSAFlags(ElementFlags);
    *&v20[8 * v22++] = glpTypeToLLVMTypeWithUnderlying(a1, v23, v25, a4);
  }

  while (v11 != v22);
LABEL_27:
  v18 = LLVMStructTypeInContext();
  if (!a4)
  {
    return v18;
  }

LABEL_28:
  v26 = a4[1];
  if (!v26 || (v27 = glpLayoutObjectFind(v26, 34)) == 0)
  {
    v28 = a4[6];
LABEL_35:
    v31 = v28 & 0xFFFFFFFFFEFFFFFFLL;
    a4[6] = v31;
    if ((v31 & 0x1000000) == 0)
    {
      return v18;
    }

    goto LABEL_32;
  }

  v28 = a4[6];
  if (*(v27 + 4) != 28)
  {
    goto LABEL_35;
  }

  if ((v28 & 0x1000000) != 0)
  {
LABEL_32:
    *(a4[18] + 24) = glpPrimitiveTypeGetPrimitiveType(a2);
    v29 = glpLLVMGetNamedTypeInner(a1, "struct._interpolant_t");
    return MEMORY[0x23EE85440](v29, 1);
  }

  return v18;
}

uint64_t glpLLVMGetAggregateType(uint64_t *a1, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v15 = a3;
  v16 = 1;
  v7 = glpLLVMGetMinCommonType(a2, &v16, &v15);
  if (glpTypeGetKind(a2) == 3)
  {
    glpBankTypeGetElementCount(a2);
    ElementType = glpBankTypeGetElementType(a2);
    glpABIGetTypeSize(0, ElementType, 0);
    glpTypeSizeGetSize();
    if (a4)
    {
LABEL_3:
      v9 = v16;
      VectorType = glpGetVectorType(v7, v16);
      v11 = *(a4 + 144);
      v12 = v15;
      *(v11 + 24) = VectorType;
      *(v11 + 28) = v12;
      goto LABEL_6;
    }
  }

  else
  {
    glpABIGetTypeSize(0, a2, 0);
    glpTypeSizeGetSize();
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = v15;
  v9 = v16;
LABEL_6:
  v13 = glpPrimitiveTypeToLLVMType(a1, v7, v12);
  if (v9 >= 2)
  {
    MEMORY[0x23EE854F0](v13, v9);
  }

  return LLVMArrayType();
}

uint64_t glpLLVMBuildFunctionType(void *a1, uint64_t a2, int a3, int a4, int a5, char a6)
{
  v84 = *MEMORY[0x277D85DE8];
  v12 = LLVMVoidTypeInContext();
  v13 = v12;
  if ((a6 & 2) != 0)
  {
    v14 = *(a1 + 177);
    if ((a6 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if ((a6 & 4) != 0)
    {
LABEL_3:
      v15 = *(a1 + 181);
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_6:
  v16 = a5 + a4;
  v17 = *(a1 + 416);
  v19 = (v17 & 2) == 0 || v15 < 1;
  v20 = (v17 & 1) == 0 || v19;
  v21 = (v17 & 1) != 0 && !v19;
  v81 = v20;
  if ((a6 & 8) != 0)
  {
    v22 = *(a1 + 149);
  }

  else
  {
    v22 = 0;
  }

  v80 = a6 & 1;
  v82 = v22;
  v76 = v80 + v16 + v14 + v15 + v21;
  v23 = (v76 + 2 * v22);
  MEMORY[0x28223BE20](v12, 8 * v23);
  v83 = &v73 - v24;
  bzero(&v73 - v24, v25);
  if (a3)
  {
    v77 = v16;
    v78 = v23;
    v28 = *(a1 + 169);
    if (v28 >= 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 8 * v28;
      while (1)
      {
        v32 = *(a1[85] + v29);
        v33 = glpLayoutObjectFind(*(v32 + 8), 34);
        v26 = glpPrecisionIndexFromSAFlags(*(v32 + 48));
        v34 = *(a1 + 80);
        if ((v34 - 1) < 3)
        {
          break;
        }

        if (v34 == 4)
        {
          if (*(v33 + 4) != 24)
          {
            goto LABEL_33;
          }
        }

        else if (!v34)
        {
          v36 = *(v33 + 4);
          if ((v36 - 17) >= 2)
          {
            if (v36 != 28)
            {
              goto LABEL_35;
            }

            v26 = glpTypeToLLVMTypeWithUnderlying(a1, *v32, v26, v32);
            if ((a1[104] & 1) == 0)
            {
              v26 = MEMORY[0x23EE85440](v26, 1);
            }
          }

          else
          {
            if ((a1[104] & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_33:
            v26 = glpTypeToLLVMTypeWithUnderlying(a1, *v32, v26, v32);
          }

LABEL_34:
          *&v83[8 * v30++] = v26;
        }

LABEL_35:
        v29 += 8;
        if (v31 == v29)
        {
          goto LABEL_49;
        }
      }

      v35 = *(v32 + 144);
      v26 = *v35;
      if ((*(v35 + 32) & 4) == 0)
      {
        v26 = LLVMGetElementType();
      }

      goto LABEL_34;
    }

    v30 = 0;
LABEL_49:
    if (*(a1 + 201))
    {
      *&v83[8 * v30++] = a1[5];
    }

    if (*(a1 + 203))
    {
      *&v83[8 * v30++] = a1[5];
    }

    v45 = *(a1 + 205);
    v79 = v13;
    if (v45)
    {
      *&v83[8 * v30++] = a1[5];
    }

    v75 = &v73;
    v46 = *(a1 + 173);
    v47 = 8 * v46;
    MEMORY[0x28223BE20](v26, v27);
    v48 = &v73 - ((8 * v46 + 15) & 0xFFFFFFFF0);
    bzero(v48, 8 * v46);
    v74 = v46;
    if (v46 >= 1)
    {
      v49 = 0;
      while (1)
      {
        v50 = *(a1[87] + v49);
        v51 = glpPrecisionIndexFromSAFlags(*(v50 + 48));
        v52 = *(a1 + 80);
        if (v52 > 1)
        {
          break;
        }

        if (!v52)
        {
          goto LABEL_65;
        }

        if (v52 == 1)
        {
          goto LABEL_64;
        }

LABEL_78:
        v49 += 8;
        if (v47 == v49)
        {
          goto LABEL_79;
        }
      }

      switch(v52)
      {
        case 4:
          if (*(glpLayoutObjectFind(*(v50 + 8), 68) + 4) != 4)
          {
            goto LABEL_76;
          }

          PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v50);
          if (glpPrimitiveTypeGetCategory(PrimitiveType) == 2 && glpPrimitiveVectorGetLength(PrimitiveType) > 3)
          {
            goto LABEL_76;
          }

          ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
          v59 = glpPrimitiveTypeToLLVMType(a1, ScalarType, v51);
          v53 = MEMORY[0x23EE854F0](v59, 4);
          break;
        case 3:
LABEL_64:
          v53 = **(v50 + 144);
          break;
        case 2:
LABEL_65:
          if ((a1[104] & 1) == 0)
          {
            goto LABEL_76;
          }

          v54 = glpLayoutObjectFind(*(v50 + 8), 69);
          v55 = glpLayoutObjectFind(*(v50 + 8), 70);
          if (v55)
          {
            v56 = *(v55 + 4) == 0;
            if (!v54)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v56 = 1;
            if (!v54)
            {
              goto LABEL_76;
            }
          }

          if (*(v54 + 4) == 5 && v56)
          {
            v53 = glpPrimitiveTypeToLLVMType(a1, 4, v51);
            break;
          }

LABEL_76:
          v53 = glpTypeToLLVMTypeWithUnderlying(a1, *v50, v51, v50);
          break;
        default:
          goto LABEL_78;
      }

      *&v48[v49] = v53;
      goto LABEL_78;
    }

LABEL_79:
    if ((*(a1 + 80) | 2) == 3)
    {
      memcpy(&v83[8 * v30], &v73 - ((v47 + 15) & 0xFFFFFFFF0), v47);
      v60 = 0;
      v16 = v77;
    }

    else
    {
      v16 = v77;
      if (v74)
      {
        v60 = LLVMStructTypeInContext();
      }

      else
      {
        v60 = 0;
      }
    }

    a1[25] = v60;
  }

  else
  {
    v37 = *(a2 + 32);
    if (v37)
    {
      v77 = v16;
      v78 = v23;
      v79 = v13;
      v38 = 0;
      for (i = 0; i < v37; ++i)
      {
        v40 = *(a2 + 40);
        v41 = *(v40 + v38);
        if (v41)
        {
          v42 = *(v40 + v38 + 8);
          v43 = *(v42 + 144);
          if (!v43)
          {
            v44 = (*(a1[19] + 8))(*a1[19], 40, "llvm codegen extra");
            *(v42 + 144) = v44;
            *v44 = 0u;
            *(v44 + 16) = 0u;
            *(v44 + 32) = 0;
            glpLLVMCGGlobalVariable(a1, v42);
            v43 = *(v42 + 144);
            v37 = *(a2 + 32);
          }

          *&v83[((v41 << 32) - 0x100000000) >> 29] = *v43;
        }

        v38 += 24;
      }

      v16 = v77;
    }
  }

  v61 = LLVMFloatTypeInContext();
  v62 = MEMORY[0x23EE854F0](v61, 4);
  v63 = v62;
  if (v80)
  {
    v64 = MEMORY[0x23EE85440](v62, 2);
    *&v83[8 * v16++] = v64;
  }

  if (v14 >= 1)
  {
    v65 = &v83[8 * v16];
    v16 += v14;
    do
    {
      *v65 = MEMORY[0x23EE85440](v63, 2);
      v65 += 8;
      --v14;
    }

    while (v14);
  }

  if (v15 >= 1)
  {
    v66 = &v83[8 * v16];
    v16 += v15;
    do
    {
      *v66 = MEMORY[0x23EE85440](v63, 1);
      v66 += 8;
      --v15;
    }

    while (v15);
  }

  if ((v81 & 1) == 0)
  {
    v67 = MEMORY[0x23EE85440](a1[5], 1);
    *&v83[8 * v16] = v67;
  }

  if (v82 >= 1)
  {
    v68 = v82;
    v69 = &v83[8 * v76];
    v70 = &v83[8 * v82 + 8 * v76];
    v71 = (a1[75] + 24);
    do
    {
      *v69 = *v71;
      v69 += 8;
      *v70 = *(v71 - 1);
      v70 += 8;
      v71 += 6;
      --v68;
    }

    while (v68);
  }

  return LLVMFunctionType();
}

uint64_t glpMetalGetArgTypeNameFromASTType(char *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  result = glpTypeGetKind(a2);
  if (!result)
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a2);
    result = glpPrimitiveTypeGetCategory(PrimitiveType);
    if (result > 1)
    {
      if (result == 2)
      {
        glpPrimitiveVectorGetLength(PrimitiveType);
        ElementType = glpPrimitiveVectorGetElementType(PrimitiveType);
        glpScalarTypeGetMetalArgType(ElementType, v5, 0);
        return snprintf_l(a1, 0x200uLL, 0, "%s%u");
      }

      else if (result == 3)
      {
        ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
        glpPrimitiveMatrixGetColumns(PrimitiveType);
        glpPrimitiveMatrixGetRows(PrimitiveType);
        glpScalarTypeGetMetalArgType(ColumnType, v5, 0);
        return snprintf_l(a1, 0x200uLL, 0, "%s%ux%u");
      }
    }

    else if (result)
    {
      if (result == 1)
      {
        glpScalarTypeGetMetalArgType(PrimitiveType, v5, v4);
        return snprintf_l(a1, 0x200uLL, 0, "%s");
      }
    }

    else
    {

      return snprintf_l(a1, 0x200uLL, 0, "void");
    }
  }

  return result;
}

uint64_t glpLLVMVertexGeometryMetadata(void *a1, uint64_t a2, unsigned int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = glpLayoutObjectFind(*(a2 + 8), 68);
  memset(v30, 0, sizeof(v30));
  if ((*(a1 + 80) | 2) == 3)
  {
    if (a3 > 7)
    {
      v7 = LLVMConstInt();
    }

    else
    {
      v7 = a1[a3 + 65];
      if (!v7)
      {
        v7 = LLVMConstInt();
        a1[a3 + 65] = v7;
      }
    }

    *&v30[0] = v7;
    *(&v30[0] + 1) = LLVMMDStringInContext();
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 4);
  if (v9 > 10)
  {
    if (v9 <= 14 || v9 == 16)
    {
      goto LABEL_41;
    }

    if (v9 == 17)
    {
      v13 = glpLayoutObjectFind(*(a2 + 8), 69);
      v14 = *(a2 + 48);
      v15 = "air.no_perspective";
      if ((v14 & 0x2000000000) == 0)
      {
        v15 = "air.perspective";
      }

      if ((v14 & 0x1000000000) != 0)
      {
        v16 = "air.flat";
      }

      else
      {
        v16 = v15;
      }

      v17 = "air.center";
      if ((v14 & 0x1000000000) == 0)
      {
        if ((v14 & 0x4000000000) != 0)
        {
          v17 = "air.centroid";
        }

        else if ((v14 & 0x40000000000) != 0)
        {
          v17 = "air.sample";
        }
      }

      if ((*(a1 + 80) | 2) == 2)
      {
        *(v30 + v8) = LLVMMDStringInContext();
        v8 |= 1u;
      }

      if (a1[104])
      {
        *__str = 0u;
        v29 = 0u;
        v21 = *(v13 + 4);
        v22 = glpLayoutObjectFind(*(a2 + 8), 70);
        if (v22)
        {
          v23 = *(v22 + 4) == 0;
        }

        else
        {
          v23 = 1;
        }

        if (v23 && (v21 & 0xFFFFFFF8) == 8)
        {
          snprintf(__str, 0x1FuLL, "user(tex_coord%u)");
        }

        else if ((*(a2 + 53) & 2) != 0)
        {
          snprintf(__str, 0x1FuLL, "user(patch%u)");
        }

        else
        {
          snprintf(__str, 0x1FuLL, "user(slot%u)");
        }

        strlen(__str);
        v25 = v8 + 1;
        *(v30 + v8) = LLVMMDStringInContext();
        if (*(a1 + 80) == 1)
        {
          ElementType = *a2;
          if (glpTypeGetKind(ElementType) == 3)
          {
            ElementType = glpBankTypeGetElementType(ElementType);
          }

          *(v30 + v25) = glpLLVMStringMetadata(a1, "air.vec4_size");
          glpTypeGetVec4s(ElementType);
          *(&v30[1] + v8) = glpGetConstantInt32(a1, v27);
          v25 = v8 + 3;
        }

        v24 = v25;
      }

      else
      {
        *(v30 + v8) = LLVMMDStringInContext();
        v19 = *(v13 + 4);
        if (v19 > 7)
        {
          v20 = LLVMConstInt();
        }

        else
        {
          v20 = a1[v19 + 65];
          if (!v20)
          {
            v20 = LLVMConstInt();
            a1[v19 + 65] = v20;
          }
        }

        *(v30 + v8 + 1) = v20;
        v24 = v8 + 2;
      }

      if ((*(a1 + 80) | 2) != 2 || (a1[104] & 1) == 0)
      {
        strlen(v16);
        *(v30 + v24) = LLVMMDStringInContext();
        strlen(v17);
        *(v30 + v24 + 1) = LLVMMDStringInContext();
      }
    }
  }

  else if (v9 > 4)
  {
    switch(v9)
    {
      case 5:
        glpLayoutObjectFind(*(a2 + 8), 74);
        goto LABEL_41;
      case 9:
        a1[93] |= 4uLL;
        goto LABEL_41;
      case 10:
        v10 = glpLayoutObjectFind(*(a2 + 8), 75);
        *(v30 + v8) = LLVMMDStringInContext();
        v11 = *(v10 + 4);
        if (v11 > 7)
        {
          v12 = LLVMConstInt();
        }

        else
        {
          v12 = a1[v11 + 65];
          if (!v12)
          {
            v12 = LLVMConstInt();
            a1[v11 + 65] = v12;
          }
        }

        *(v30 + (v8 | 1)) = v12;
        break;
    }
  }

  else
  {
    if (v9 == 1 || v9 == 3)
    {
      goto LABEL_41;
    }

    if (v9 == 4)
    {
      glpLayoutObjectFind(*(a2 + 8), 71);
LABEL_41:
      *(v30 + v8) = LLVMMDStringInContext();
    }
  }

  return LLVMMDNodeInContext();
}

const char *glpScalarTypeGetMetalArgType(int a1, int a2, int a3)
{
  if (a3)
  {
    v3 = a1 == 5;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = 36;
  }

  else
  {
    v4 = a1;
  }

  if (v4 <= 8)
  {
    if (v4 == 1)
    {
      v6 = a2 - 1;
      v7 = "float";
      v8 = "half";
    }

    else
    {
      if (v4 != 5)
      {
        goto LABEL_21;
      }

      v6 = a2 - 1;
      v7 = "int";
      v8 = "short";
    }
  }

  else
  {
    if (v4 == 9)
    {
      return "BOOL";
    }

    if (v4 != 36)
    {
      if (v4 == 62)
      {
        return "double";
      }

LABEL_21:
      abort();
    }

    v6 = a2 - 1;
    v7 = "uint";
    v8 = "ushort";
  }

  if (v6 >= 2)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t glpLLVMCGDeclareVariable(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 52) & 0x980) != 0)
  {
    *(a1 + 326) = 1;
  }

  v4 = *(a2 + 144);
  if (v4)
  {
    result = *v4;
    if (*v4)
    {
      return result;
    }
  }

  else
  {
    v6 = (*(*(a1 + 152) + 8))(**(a1 + 152), 40, "llvm codegen extra");
    *(a2 + 144) = v6;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0;
  }

  v7 = *(a2 + 8);
  if ((!v7 || !glpLayoutObjectFind(v7, 28)) && *(a2 + 128))
  {
    v8 = *(a2 + 48);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = glpPrecisionIndexFromSAFlags(v8);
      v10 = glpTypeToLLVMTypeWithUnderlying(a1, *a2, v9, a2);
      result = glpBuildAlloca(a1, v10);
      **(a2 + 144) = result;
      return result;
    }

    if ((v8 & 0x100000000) != 0)
    {
      result = 0;
      **(a2 + 144) = 0;
      return result;
    }

    glpLLVMCGGlobalVariable(a1, a2);
  }

  return 0;
}

uint64_t glpIsSimpleComponentAssigment(uint64_t a1, unsigned int ***a2, uint64_t **a3, unsigned int *a4, unsigned int *a5)
{
  v9 = *a2;
  v15 = 0;
  v16 = v9;
  result = glpIsComponentAssigment(a1, &v16, &v15 + 1, &v15, a4, 1);
  if (result)
  {
    Rhs = glpBinaryOperatorNodeGetRhs(a1);
    if (glpASTNodeGetKind(Rhs) == 81)
    {
      VariableExtra = glpLValueNodeGetVariableExtra(Rhs);
      v13 = VariableExtra;
      if (*a3)
      {
        if (*a3 == VariableExtra)
        {
LABEL_8:
          result = glpGetVectorSwizzle(Rhs, a5);
          if (result)
          {
            *a2 = v16;
            *a3 = v13;
            return 1;
          }

          return result;
        }
      }

      else if (!glpTypeGetKind(*VariableExtra))
      {
        PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v13);
        if (glpPrimitiveTypeGetCategory(PrimitiveType) == 2)
        {
          goto LABEL_8;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t glpLLVMSharedRawCall(uint64_t a1, char a2, uint64_t a3, unint64_t *a4, int a5)
{
  v5 = a5;
  v42 = *MEMORY[0x277D85DE8];
  if ((a2 & 2) != 0)
  {
    v8 = *(a1 + 708);
    if ((a2 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 0;
    if ((a2 & 4) != 0)
    {
LABEL_3:
      v9 = *(a1 + 724);
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = a2 & 1;
  v11 = *(a1 + 832);
  v13 = (v11 & 2) == 0 || v9 < 1;
  v14 = (v11 & 1) == 0 || v13;
  v41 = a3;
  if ((a2 & 8) != 0)
  {
    v15 = *(a1 + 596);
  }

  else
  {
    v15 = 0;
  }

  v16 = v10 + a5 + v8 + v9 + 2 * v15;
  MEMORY[0x28223BE20](a1, 8 * v16);
  v18 = (&v38 - v17);
  bzero(&v38 - v17, v19);
  if (v5 < 1)
  {
    v5 = 0;
  }

  else
  {
    v39 = v14;
    v40 = v15;
    v20 = v10 + v5 + v8 + v9 + 2 * v15;
    v21 = v5;
    v22 = v18;
    do
    {
      v23 = *a4++;
      *v22++ = glpLLVMGetVariablePointer(a1, v23);
      --v21;
    }

    while (v21);
    v16 = v20;
    LOBYTE(v14) = v39;
    v15 = v40;
  }

  v24 = v41;
  if (v10)
  {
    v18[v5++] = *(a1 + 440);
  }

  if (v8 >= 1)
  {
    v25 = *(a1 + 712);
    v26 = &v18[v5];
    v5 += v8;
    v27 = v8;
    do
    {
      v28 = *v25++;
      *v26 = *(v28 + 8);
      v26 += 8;
      --v27;
    }

    while (v27);
  }

  if (v9 >= 1)
  {
    v29 = *(a1 + 728);
    v30 = &v18[v5];
    v5 += v9;
    v31 = v9;
    do
    {
      v32 = *v29++;
      *v30 = *(v32 + 16);
      v30 += 8;
      --v31;
    }

    while (v31);
  }

  if ((v14 & 1) == 0)
  {
    v18[v5++] = *(a1 + 448);
  }

  if (v15 >= 1)
  {
    v33 = (*(a1 + 600) + 8);
    v34 = &v18[v5];
    v35 = v15;
    do
    {
      *v34 = *(v33 - 1);
      v36 = *v33;
      v33 += 6;
      *&v34[8 * v15] = v36;
      v34 += 8;
      --v35;
    }

    while (v35);
  }

  return glpLLVMBuildFunctionCallInner(a1, *(a1 + 160), v24, v18, v16);
}

uint64_t glpLLVMReadUniform(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  ScalarType = glpPrimitiveTypeGetScalarType(a4);
  if (ScalarType == 9)
  {
    v10 = a1[5];
    if (glpPrimitiveTypeGetCategory(a4) != 2)
    {
      goto LABEL_13;
    }

    Length = glpPrimitiveVectorGetLength(a4);
    v12 = MEMORY[0x23EE854F0](v10, Length);
LABEL_12:
    v10 = v12;
LABEL_13:
    MEMORY[0x23EE85440](v10, 2);
    LLVMBuildPointerCast();
    LLVMBuildLoad();
    glpPrimitiveTypeToLLVMType(a1, a4, a5);
    if (ScalarType == 9)
    {
      MEMORY[0x23EE85200](v10);

      return LLVMBuildICmp();
    }

    else if (ScalarType == 1)
    {

      return LLVMBuildFPCast();
    }

    else
    {

      return LLVMBuildIntCast();
    }
  }

  if (a5 != 3 && a5)
  {
    v12 = glpPrimitiveTypeToLLVMType(a1, a4, 3);
    goto LABEL_12;
  }

  v13 = glpPrimitiveTypeToLLVMType(a1, a4, a5);
  MEMORY[0x23EE85440](v13, 2);
  if (a3 != a4)
  {
    LLVMBuildPointerCast();
  }

  return LLVMBuildLoad();
}

uint64_t glpLLVMCGWriteVertexOutput(uint64_t result, unsigned int **a2)
{
  if ((~*(result + 832) & 3) != 0)
  {
    v3 = result;
    if (!*(result + 208))
    {
      *(result + 208) = MEMORY[0x23EE85370](*(result + 200));
    }

    v4 = *(v3 + 692);
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*(*(v3 + 696) + 8 * i) == a2)
        {
          break;
        }
      }
    }

    glpLLVMGetVariablePointer(v3, a2);
    v6 = glpPrecisionIndexFromSAFlags(a2[6]);
    v7 = glpTypeToLLVMTypeWithUnderlying(v3, *a2, v6, a2);
    MEMORY[0x23EE85440](v7, 0);
    LLVMBuildPointerCast();
    LLVMBuildLoad();
    if ((*(v3 + 832) & 1) == 0)
    {
      goto LABEL_17;
    }

    v8 = glpLayoutObjectFind(a2[1], 69);
    v9 = glpLayoutObjectFind(a2[1], 70);
    if (v9)
    {
      v10 = *(v9 + 4) == 0;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 1;
      if (!v8)
      {
LABEL_17:
        result = LLVMBuildInsertValue();
        *(v3 + 208) = result;
        return result;
      }
    }

    if (*(v8 + 4) == 5 && v10)
    {
      v11 = MEMORY[0x23EE854F0](v7, 4);
      MEMORY[0x23EE85370](v11);
      if (!*(v3 + 520))
      {
        *(v3 + 520) = LLVMConstInt();
      }

      LLVMBuildInsertElement();
    }

    goto LABEL_17;
  }

  return result;
}

void _glpSetCrashLogMessage(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    _glpSetCrashLogMessage_cold_1(a1);
  }
}

void glpSetCrashLogMessagef(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  os_unfair_lock_lock(&message_lock);
  vsnprintf_l(message, 0x400uLL, 0, a1, va);
  os_unfair_lock_unlock(&message_lock);
  _glpSetCrashLogMessage(message);
}

uint64_t glpMangleNameLLVM(int a1, char *a2, size_t a3, char *__s, uint64_t a5, uint64_t *a6, unsigned int *a7, int a8)
{
  LODWORD(v8) = a8;
  v14 = strlen(__s);
  result = snprintf_l(a2, a3, 0, "_Z%d%s", v14, __s);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  if (v8)
  {
    v16 = result;
    v8 = v8;
    v17 = a7;
    do
    {
      if (a7)
      {
        v18 = *v17;
        if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v18 = 0;
        if ((v16 & 0x80000000) == 0)
        {
LABEL_7:
          if (a3 > v16)
          {
            result = glpMangleTypeName(&a2[v16], a3 - v16, *a6, v18, v19);
            v16 += result & ~(result >> 31);
          }
        }
      }

      ++v17;
      ++a6;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t glpMangleTypeName(char *a1, size_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v10 = LLVMGetTypeKind();
  result = 0xFFFFFFFFLL;
  if (v10 <= 7)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        v17 = "h";
      }

      else
      {
        if (v10 != 2)
        {
          return result;
        }

        v17 = "f";
      }
    }

    else
    {
      v17 = "v";
    }

    goto LABEL_30;
  }

  if (v10 > 11)
  {
    if (v10 == 12)
    {
      v24 = snprintf_l(a1, a2, 0, "P");
LABEL_37:
      if ((v24 & 0x80000000) == 0)
      {
        v25 = v24;
        if (a2 > v24)
        {
          v26 = LLVMGetElementType();
          v27 = glpMangleTypeName(&a1[v25], a2 - v25, v26, a4, a5);
          if ((v27 & 0x80000000) == 0)
          {
            return v27 + v25;
          }
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (v10 != 13)
    {
      return result;
    }

    if (LLVMGetTypeKind() == 13)
    {
      LLVMGetElementType();
      v18 = LLVMGetTypeKind();
      v19 = LLVMGetVectorSize();
      LODWORD(v20) = *a5;
      if (*a5 >= 1)
      {
        v21 = v19;
        v22 = 0;
        while (1)
        {
          LLVMGetElementType();
          if (v18 == LLVMGetTypeKind() && v21 == LLVMGetVectorSize() && a5[v22 + 42] == a4)
          {
            break;
          }

          ++v22;
          v20 = *a5;
          if (v22 >= v20)
          {
            goto LABEL_34;
          }
        }

        if (v22)
        {
          return snprintf_l(a1, a2, 0, "S%d_");
        }

        v17 = "S_";
        goto LABEL_30;
      }
    }

    else
    {
      LODWORD(v20) = *a5;
LABEL_34:
      if (v20 > 19)
      {
        goto LABEL_36;
      }
    }

    *&a5[2 * v20 + 2] = a3;
    a5[v20 + 42] = a4;
    ++*a5;
LABEL_36:
    LLVMGetVectorSize();
    v24 = snprintf_l(a1, a2, 0, "Dv%d_");
    goto LABEL_37;
  }

  if (v10 == 8)
  {
    v23 = LLVMGetIntTypeWidth();
    if (v23 == 16)
    {
      if (a4 == 2)
      {
        v17 = "t";
      }

      else
      {
        v17 = "s";
      }
    }

    else if (v23 == 1)
    {
      v17 = "b";
    }

    else if (a4 == 2)
    {
      v17 = "j";
    }

    else
    {
      v17 = "i";
    }

LABEL_30:

    return snprintf_l(a1, a2, 0, v17);
  }

  if (v10 != 10)
  {
    return result;
  }

  v12 = LLVMGetStructName();
  v13 = glpOpaqueTypeMangling[0];
  if (!glpOpaqueTypeMangling[0])
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v12;
  v15 = 0;
  while (strcmp(v14, v13))
  {
    v16 = &glpOpaqueTypeMangling[v15];
    v15 += 2;
    v13 = v16[2];
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return snprintf_l(a1, a2, 0, "%s");
}

uint64_t glpLLVMGetNamedTypeInner(uint64_t *a1, uint64_t a2)
{
  result = LLVMGetTypeByName();
  if (!result)
  {

    return LLVMStructCreateNamed();
  }

  return result;
}

uint64_t glpLLVMEmitBranchInnerReal(uint64_t a1, uint64_t a2)
{
  inserted = LLVMGetInsertBlock();
  if (inserted && !glpLLVMBasicBlockGetTerminator(inserted))
  {
    LLVMSetCurrentDebugLocation();
    LLVMBuildBr();
  }

  v4 = *(a1 + 16);

  return MEMORY[0x2821F1618](v4);
}

uint64_t glpLLVMPackVectorInner(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = LLVMTypeOf();
  if (LLVMGetTypeKind() == 13)
  {
    v7 = LLVMGetVectorSize();
  }

  else
  {
    v7 = 1;
  }

  if (LLVMGetTypeKind() == 13)
  {
    v8 = LLVMGetVectorSize();
  }

  else
  {
    v8 = 1;
  }

  if (v7 == v8)
  {
    inserted = a2;
  }

  else
  {
    v10 = LLVMGetTypeKind();
    v11 = v6;
    if (v10 == 13)
    {
      v11 = LLVMGetElementType();
    }

    v12 = MEMORY[0x23EE854F0](v11, v8);
    inserted = MEMORY[0x23EE85370](v12);
    if (v7 == 1)
    {
      LLVMConstInt();
      inserted = LLVMBuildInsertElement();
    }

    else if (v7 >= 1)
    {
      for (i = 0; i != v7; ++i)
      {
        LLVMConstInt();
        LLVMBuildExtractElement();
        inserted = LLVMBuildInsertElement();
      }
    }
  }

  if (LLVMTypeOf() == a3)
  {
    return inserted;
  }

  if (LLVMGetTypeKind() == 13)
  {
    LLVMGetElementType();
  }

  v14 = LLVMGetTypeKind();
  if (LLVMGetTypeKind() == 13)
  {
    LLVMGetElementType();
  }

  v15 = LLVMGetTypeKind();
  if (v14 != 1)
  {
    if (v14 != 8)
    {
      if (v14 == 2)
      {
LABEL_42:

        return LLVMBuildBitCast();
      }

      return inserted;
    }

    if (v15 == 1)
    {
      v16 = LLVMInt16TypeInContext();
      goto LABEL_39;
    }

    if (v15 == 2)
    {
      v16 = a1[5];
LABEL_39:
      if (v8 != 1)
      {
        MEMORY[0x23EE854F0](v16, v8);
      }

      LLVMBuildIntCast();
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  if (v15 != 2)
  {
    if (LLVMGetTypeKind() == 13)
    {
      LLVMGetElementType();
    }

    v18 = LLVMGetIntTypeWidth();
    v19 = LLVMInt16TypeInContext();
    if (v8 != 1)
    {
      MEMORY[0x23EE854F0](v19, v8);
    }

    inserted = LLVMBuildBitCast();
    if (v18 < 0x11)
    {
      return inserted;
    }

LABEL_45:

    return LLVMBuildIntCast();
  }

  return LLVMBuildFPCast();
}

uint64_t glpLLVMAddFunctionAttrInner(void *a1, uint64_t a2, int a3)
{
  v3 = (&glpLLVMConvertAttribute_functionAttribStrings)[a3];
  v4 = strlen(v3);
  MEMORY[0x23EE852E0](v3, v4);
  LLVMCreateEnumAttribute();

  return LLVMAddAttributeAtIndex();
}

uint64_t glpLLVMUnpackTypeInner(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = LLVMTypeOf();
  if (LLVMGetTypeKind() == 13)
  {
    v7 = LLVMGetVectorSize();
    if (LLVMGetTypeKind() != 13)
    {
      if (v7 > 1)
      {
LABEL_14:
        LLVMConstInt();
        Element = LLVMBuildExtractElement();
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (LLVMGetTypeKind() != 13)
    {
      goto LABEL_13;
    }

    v7 = 1;
  }

  v8 = LLVMGetVectorSize();
  if (v8 >= v7)
  {
    goto LABEL_13;
  }

  v9 = v8;
  if (v8 == 1)
  {
    goto LABEL_14;
  }

  v10 = LLVMGetTypeKind();
  v11 = v6;
  if (v10 == 13)
  {
    v11 = LLVMGetElementType();
  }

  MEMORY[0x23EE854F0](v11, v9);
  if (LLVMGetTypeKind() != 13)
  {
    goto LABEL_14;
  }

  LLVMTypeOf();
  v12 = LLVMGetVectorSize();
  v13 = LLVMGetVectorSize();
  if (v12 == v13)
  {
LABEL_13:
    Element = a2;
    goto LABEL_15;
  }

  v24 = v13;
  v25 = LLVMGetElementType();
  v26 = MEMORY[0x23EE854F0](v25, v24);
  Element = MEMORY[0x23EE85370](v26);
  if (v24 >= 1)
  {
    v27 = 0;
    do
    {
      LLVMConstInt();
      LLVMBuildExtractElement();
      LLVMConstInt();
      Element = LLVMBuildInsertElement();
      ++v27;
    }

    while (v24 != v27);
  }

LABEL_15:
  LLVMTypeOf();
  if (LLVMGetTypeKind() == 13)
  {
    v15 = LLVMGetVectorSize();
  }

  else
  {
    v15 = 1;
  }

  v16 = v6;
  if (LLVMGetTypeKind() == 13)
  {
    v16 = LLVMGetElementType();
  }

  v17 = a3;
  if (LLVMGetTypeKind() == 13)
  {
    v17 = LLVMGetElementType();
  }

  if (v16 == v17)
  {
    return Element;
  }

  v18 = LLVMGetTypeKind();
  v19 = LLVMGetTypeKind();
  if (v19 != 1)
  {
    if (v19 != 8)
    {
      if (v19 != 2)
      {
        return Element;
      }

      goto LABEL_40;
    }

    if (v18 == 1)
    {
      v21 = LLVMInt16TypeInContext();
    }

    else
    {
      if (v18 != 2)
      {
LABEL_47:

        return LLVMBuildIntCast();
      }

      v21 = a1[5];
    }

    if (v15 != 1)
    {
      MEMORY[0x23EE854F0](v21, v15);
    }

    LLVMBuildBitCast();
    goto LABEL_47;
  }

  if (v18 != 2)
  {
    if (LLVMGetTypeKind() == 13)
    {
      LLVMGetElementType();
    }

    v22 = LLVMGetIntTypeWidth();
    v23 = LLVMInt16TypeInContext();
    if (v22 >= 0x11)
    {
      if (v15 != 1)
      {
        MEMORY[0x23EE854F0](v23, v15);
      }

      LLVMBuildTrunc();
    }

LABEL_40:

    return LLVMBuildBitCast();
  }

  return LLVMBuildFPCast();
}

uint64_t glpLLVMSetCurrentLineInner(uint64_t a1, uint64_t a2)
{
  glpLLVMGetDebugLocation(*(a1 + 24), a2);

  return LLVMSetCurrentDebugLocation();
}

uint64_t glpLLVMCallFunctionInner(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int *a6, unsigned int a7, uint64_t a8)
{
  v25 = a8;
  v24 = a7;
  v9 = a5;
  v26 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1, 8 * a5);
  v13 = &v23[-v12];
  bzero(&v23[-v12], v14);
  if (v9)
  {
    v15 = v9;
    v16 = v13;
    v17 = a4;
    do
    {
      ++v17;
      *v16++ = LLVMTypeOf();
      --v15;
    }

    while (v15);
  }

  v18 = LLVMGetNamedFunction();
  LLVMFunctionType();
  if (!v18)
  {
    v19 = LLVMAddFunction();
    if (v24)
    {
      v20 = v24;
      do
      {
        v21 = *a6++;
        glpLLVMAddFunctionAttrInner(a1, v19, v21);
        --v20;
      }

      while (v20);
    }
  }

  return LLVMBuildCall();
}

uint64_t glpLLVMBuildFunctionCallInner(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, int a5)
{
  LODWORD(v5) = a5;
  v16[1] = *MEMORY[0x277D85DE8];
  LLVMTypeOf();
  LLVMGetElementType();
  v7 = LLVMCountParamTypes();
  LLVMTypeOf();
  LLVMGetElementType();
  v8 = LLVMCountParamTypes();
  v9 = v8 - v5;
  MEMORY[0x28223BE20](v8, 8 * v8);
  v11 = v16 - v10;
  bzero(v16 - v10, v12);
  if (v5 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
    memcpy(v11, a4, 8 * v5);
  }

  if (v9 >= 1)
  {
    v13 = v7 - v9;
    v14 = &v11[8 * v5];
    do
    {
      *v14++ = LLVMGetParam();
      ++v13;
      --v9;
    }

    while (v9);
  }

  return LLVMBuildCall();
}

uint64_t glpLLVMXXXXTypeInContext(void *a1, int a2)
{
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        result = LLVMInt64TypeInContext();
        goto LABEL_20;
      }

      if (a2 == 1)
      {
        result = LLVMInt32TypeInContext();
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    if (a2 == 2)
    {
      result = LLVMInt16TypeInContext();
    }

    else
    {
      result = LLVMInt8TypeInContext();
    }
  }

  else
  {
    if (a2 > 5)
    {
      switch(a2)
      {
        case 6:
          result = LLVMHalfTypeInContext();
          goto LABEL_20;
        case 7:
          result = LLVMVoidTypeInContext();
          goto LABEL_20;
        case 8:
          result = LLVMDoubleTypeInContext();
          goto LABEL_20;
      }

LABEL_21:
      abort();
    }

    if (a2 == 4)
    {
      result = LLVMInt1TypeInContext();
    }

    else
    {
      result = LLVMFloatTypeInContext();
    }
  }

LABEL_20:
  v4 = *(a1 + 95);
  *(a1 + 95) = v4 + 1;
  *(a1[50] + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMVectorType(uint64_t a1)
{
  v2 = glpDeserializeLLVMType(a1);
  v3 = glpDeserializeuint32(a1);
  result = MEMORY[0x23EE854F0](v2, v3);
  v5 = *(a1 + 380);
  *(a1 + 380) = v5 + 1;
  *(*(a1 + 400) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMPointerType(uint64_t a1)
{
  v2 = glpDeserializeLLVMType(a1);
  v3 = glpDeserializeuint32(a1);
  v4 = *(a1 + 380);
  *(a1 + 380) = v4 + 1;
  result = MEMORY[0x23EE85440](v2, v3);
  *(*(a1 + 400) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMFunctionType(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  glpDeserializeLLVMType(a1);
  v2 = glpDeserializeArraySize(a1);
  v3 = v2;
  v4 = v2;
  MEMORY[0x28223BE20](v2, 8 * v2);
  v6 = (v12 - v5);
  bzero(v12 - v5, v7);
  if (v3)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      *v8++ = glpDeserializeLLVMType(a1);
      --v9;
    }

    while (v9);
  }

  v10 = *(a1 + 380);
  *(a1 + 380) = v10 + 1;
  result = LLVMFunctionType();
  *(*(a1 + 400) + 8 * v10) = result;
  return result;
}

uint64_t glpLLVMAddFunctionAttr(void *a1)
{
  v2 = glpDeserializeLLVMValue(a1);
  v3 = glpDeserializeuint32(a1);

  return glpLLVMAddFunctionAttrInner(a1, v2, v3);
}

uint64_t glpLLVMAddFunction(uint64_t a1)
{
  v2 = *(a1 + 364);
  *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  glpDeserializeLLVMType(a1);
  result = LLVMAddFunction();
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMGetNamedFunction(uint64_t a1)
{
  v2 = *(a1 + 364);
  *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  result = LLVMGetNamedFunction();
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMSetGlobalConstant(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeuint32(a1);

  return LLVMSetGlobalConstant();
}

void glpLLVMSetInitializer(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);

  JUMPOUT(0x23EE854A0);
}

uint64_t glpLLVMGetParam(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeuint32(a1);
  result = LLVMGetParam();
  v3 = *(a1 + 384);
  *(a1 + 384) = v3 + 1;
  *(*(a1 + 408) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMCreateBuilderInContext(uint64_t a1)
{
  v2 = LLVMCreateBuilderInContext();
  *(a1 + 16) = v2;
  v3 = *(a1 + 364);
  if (v3 >= *(a1 + 360))
  {
    glpDeserialError(a1 + 104, 1u);
  }

  v4 = *(*(a1 + 352) + v3);
  *(a1 + 364) = v3 + 1;
  v5 = *(a1 + 396);

  return glpLLVMSetFastMathFlags(v2, v5, v4);
}

uint64_t glpLLVMDisposeBuilder(uint64_t a1)
{
  result = LLVMDisposeBuilder();
  *(a1 + 16) = 0;
  return result;
}

uint64_t glpLLVMAppendBasicBlock(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  v2 = *(a1 + 364);
  *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  v3 = *(a1 + 388);
  *(a1 + 388) = v3 + 1;
  result = LLVMAppendBasicBlockInContext();
  *(*(a1 + 416) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMGetInsertBlock(uint64_t a1)
{
  result = LLVMGetInsertBlock();
  v3 = *(a1 + 388);
  *(a1 + 388) = v3 + 1;
  *(*(a1 + 416) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMMoveBasicBlockBefore(uint64_t a1)
{
  glpDeserializeLLVMBlock(a1);
  glpDeserializeLLVMBlock(a1);

  return LLVMMoveBasicBlockBefore();
}

uint64_t glpLLVMPositionBuilderAtEnd(uint64_t a1)
{
  glpDeserializeLLVMBlock(a1);

  return LLVMPositionBuilderAtEnd();
}

uint64_t glpLLVMBuildRetVoid(uint64_t a1)
{
  v2 = *(a1 + 384);
  *(a1 + 384) = v2 + 1;
  result = MEMORY[0x23EE850C0](*(a1 + 16));
  *(*(a1 + 408) + 8 * v2) = result;
  return result;
}

uint64_t glpLLVMBuildRet(uint64_t a1)
{
  v2 = glpDeserializeLLVMValue(a1);
  v3 = *(a1 + 384);
  *(a1 + 384) = v3 + 1;
  result = MEMORY[0x23EE850B0](*(a1 + 16), v2);
  *(*(a1 + 408) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMEmitBranch(uint64_t a1)
{
  v2 = glpDeserializeLLVMBlock(a1);

  return glpLLVMEmitBranchInnerReal(a1, v2);
}

uint64_t glpLLVMMDNodeInContext(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = glpDeserializeArraySize(a1);
  v3 = v2;
  v4 = v2;
  MEMORY[0x28223BE20](v2, 8 * v2);
  v6 = (v12 - v5);
  bzero(v12 - v5, v7);
  if (v3)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      *v8++ = glpDeserializeLLVMValue(a1);
      --v9;
    }

    while (v9);
  }

  v10 = *(a1 + 384);
  *(a1 + 384) = v10 + 1;
  result = LLVMMDNodeInContext();
  *(*(a1 + 408) + 8 * v10) = result;
  return result;
}

uint64_t glpLLVMMDStringInContext(uint64_t a1)
{
  v2 = *(a1 + 352);
  v3 = *(a1 + 364);
  *(a1 + 364) = v3 + strnlen((v2 + v3), *(a1 + 360)) + 1;
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  strlen((v2 + v3));
  result = LLVMMDStringInContext();
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMNamedMetadata(uint64_t a1)
{
  v2 = *(a1 + 352);
  v3 = *(a1 + 364);
  *(a1 + 364) = v3 + strnlen((v2 + v3), *(a1 + 360)) + 1;
  v4 = glpDeserializeLLVMValue(a1);
  v5 = *(a1 + 8);

  return glpAddNamedMetadataOperand(v5, (v2 + v3), v4);
}

uint64_t glpLLVMConstInt(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  v2 = *(a1 + 364);
  v3 = *(a1 + 360);
  if (v2 >= v3)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 352);
  *(a1 + 364) = v2 + 1;
  if (v2 + 1 >= v3)
  {
    goto LABEL_33;
  }

  v5 = *(v4 + v2 + 1);
  v6 = *(v4 + v2 + 1);
  *(a1 + 364) = v2 + 2;
  if (v5 < 0)
  {
    v7 = (v6 >> 1) & 7;
    if (((v6 >> 1) & 7) <= 3)
    {
      if (((v6 >> 1) & 7) > 1)
      {
        if (v7 == 2)
        {
          v8 = v2 + 5;
          if (v8 <= v3)
          {
            goto LABEL_31;
          }
        }

        else if (v2 + 6 <= v3)
        {
          v8 = v2 + 6;
          goto LABEL_31;
        }
      }

      else if (v7)
      {
        if (v2 + 4 <= v3)
        {
          v8 = v2 + 4;
          goto LABEL_31;
        }
      }

      else if (v2 + 2 < v3)
      {
        v8 = v2 + 3;
LABEL_31:
        *(a1 + 364) = v8;
        goto LABEL_32;
      }

LABEL_33:
      glpDeserialError(a1 + 104, 1u);
    }

    if (((v6 >> 1) & 7) > 5)
    {
      if (v7 != 6)
      {
        if (v2 + 10 <= v3)
        {
          v8 = v2 + 10;
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      if (v2 + 6 > v3)
      {
        goto LABEL_33;
      }

      *(a1 + 364) = v2 + 6;
      v10 = v2 + 9;
      if (v10 > v3)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v9 = v2 + 6;
      if (v7 == 4)
      {
        if (v9 > v3)
        {
          goto LABEL_33;
        }

        *(a1 + 364) = v2 + 6;
        if (v2 + 6 >= v3)
        {
          goto LABEL_33;
        }

        v10 = v2 + 7;
      }

      else
      {
        if (v9 > v3)
        {
          goto LABEL_33;
        }

        v11 = (v2 + 6);
        *(a1 + 364) = v11;
        if (v11 + 2 > v3)
        {
          goto LABEL_33;
        }

        v10 = v2 + 8;
      }
    }

    *(a1 + 364) = v10;
  }

LABEL_32:
  result = LLVMConstInt();
  v13 = *(a1 + 384);
  *(a1 + 384) = v13 + 1;
  *(*(a1 + 408) + 8 * v13) = result;
  return result;
}

uint64_t glpLLVMConstUint64(uint64_t a1)
{
  v2 = *(a1 + 364);
  if (v2 + 8 > *(a1 + 360))
  {
    glpDeserialError(a1 + 104, 1u);
  }

  *(a1 + 364) = v2 + 8;
  LLVMInt64TypeInContext();
  result = LLVMConstInt();
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMConstReal(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  deserialize_double(a1 + 104);
  result = llvm::ConstantFP::get();
  v3 = *(a1 + 384);
  *(a1 + 384) = v3 + 1;
  *(*(a1 + 408) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMConstVector(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = glpDeserializeArraySize(a1);
  v3 = v2;
  v4 = v2;
  MEMORY[0x28223BE20](v2, 8 * v2);
  v6 = (v12 - v5);
  bzero(v12 - v5, v7);
  if (v3)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      *v8++ = glpDeserializeLLVMValue(a1);
      --v9;
    }

    while (v9);
  }

  result = LLVMConstVector();
  v11 = *(a1 + 384);
  *(a1 + 384) = v11 + 1;
  *(*(a1 + 408) + 8 * v11) = result;
  return result;
}

uint64_t glpLLVMConstArray(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  glpDeserializeLLVMType(a1);
  v2 = glpDeserializeArraySize(a1);
  v3 = v2;
  v4 = v2;
  MEMORY[0x28223BE20](v2, 8 * v2);
  v6 = (v12 - v5);
  bzero(v12 - v5, v7);
  if (v3)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      *v8++ = glpDeserializeLLVMValue(a1);
      --v9;
    }

    while (v9);
  }

  result = LLVMConstArray();
  v11 = *(a1 + 384);
  *(a1 + 384) = v11 + 1;
  *(*(a1 + 408) + 8 * v11) = result;
  return result;
}

uint64_t glpLLVMConstFromType(uint64_t a1, unsigned int a2)
{
  v4 = glpDeserializeLLVMType(a1);
  result = gOperations[4 * a2 + 3](v4);
  v6 = *(a1 + 384);
  *(a1 + 384) = v6 + 1;
  *(*(a1 + 408) + 8 * v6) = result;
  return result;
}

uint64_t glpLLVMArrayType(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  glpDeserializeuint32(a1);
  result = LLVMArrayType();
  v3 = *(a1 + 380);
  *(a1 + 380) = v3 + 1;
  *(*(a1 + 400) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMStructTypeInContext(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = glpDeserializeuint32(a1);
  v3 = v2;
  v4 = v2;
  MEMORY[0x28223BE20](v2, 8 * v2);
  v6 = (v21 - v5);
  bzero(v21 - v5, v7);
  if (v3)
  {
    v8 = v4;
    v9 = v6;
    do
    {
      *v9++ = glpDeserializeLLVMType(a1);
      --v8;
    }

    while (v8);
  }

  v10 = *(a1 + 364);
  v11 = *(a1 + 360);
  if (v10 >= v11)
  {
    goto LABEL_34;
  }

  v12 = *(a1 + 352);
  v13 = *(v12 + v10);
  v14 = *(v12 + v10);
  *(a1 + 364) = v10 + 1;
  if (v13 < 0)
  {
    v15 = (v14 >> 1) & 7;
    if (((v14 >> 1) & 7) > 3)
    {
      if (((v14 >> 1) & 7) > 5)
      {
        if (v15 == 6)
        {
          if (v10 + 5 <= v11)
          {
            *(a1 + 364) = v10 + 5;
            v16 = v10 + 8;
            if (v16 <= v11)
            {
              goto LABEL_32;
            }
          }
        }

        else if (v10 + 9 <= v11)
        {
          v16 = v10 + 9;
          goto LABEL_32;
        }
      }

      else
      {
        v17 = v10 + 5;
        if (v15 == 4)
        {
          if (v17 <= v11)
          {
            *(a1 + 364) = v10 + 5;
            if (v10 + 5 < v11)
            {
              v16 = v10 + 6;
              goto LABEL_32;
            }
          }
        }

        else if (v17 <= v11)
        {
          v18 = (v10 + 5);
          *(a1 + 364) = v18;
          if (v18 + 2 <= v11)
          {
            v16 = v10 + 7;
            goto LABEL_32;
          }
        }
      }
    }

    else if (((v14 >> 1) & 7) > 1)
    {
      if (v15 == 2)
      {
        v16 = v10 + 4;
        if (v16 <= v11)
        {
          goto LABEL_32;
        }
      }

      else if (v10 + 5 <= v11)
      {
        v16 = v10 + 5;
        goto LABEL_32;
      }
    }

    else if (v15)
    {
      if (v10 + 3 <= v11)
      {
        v16 = v10 + 3;
        goto LABEL_32;
      }
    }

    else if (v10 + 1 < v11)
    {
      v16 = v10 + 2;
LABEL_32:
      *(a1 + 364) = v16;
      goto LABEL_33;
    }

LABEL_34:
    glpDeserialError(a1 + 104, 1u);
  }

LABEL_33:
  result = LLVMStructTypeInContext();
  v20 = *(a1 + 380);
  *(a1 + 380) = v20 + 1;
  *(*(a1 + 400) + 8 * v20) = result;
  return result;
}

uint64_t glpLLVMTypeOf(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  result = LLVMTypeOf();
  v3 = *(a1 + 380);
  *(a1 + 380) = v3 + 1;
  *(*(a1 + 400) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMGetElementType(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  result = LLVMGetElementType();
  v3 = *(a1 + 380);
  *(a1 + 380) = v3 + 1;
  *(*(a1 + 400) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMGetNamedType(uint64_t a1)
{
  v2 = *(a1 + 352);
  v3 = *(a1 + 364);
  *(a1 + 364) = v3 + strnlen((v2 + v3), *(a1 + 360)) + 1;
  result = glpLLVMGetNamedTypeInner(a1, v2 + v3);
  v5 = *(a1 + 380);
  *(a1 + 380) = v5 + 1;
  *(*(a1 + 400) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMBuildFunctionCall(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = glpDeserializeLLVMValue(a1);
  v3 = glpDeserializeLLVMValue(a1);
  v4 = glpDeserializeArraySize(a1);
  v5 = v4;
  v6 = v4;
  MEMORY[0x28223BE20](v4, 8 * v4);
  v8 = (v14 - v7);
  bzero(v14 - v7, v9);
  if (v5)
  {
    v10 = v8;
    v11 = v6;
    do
    {
      *v10++ = glpDeserializeLLVMValue(a1);
      --v11;
    }

    while (v11);
  }

  result = glpLLVMBuildFunctionCallInner(a1, v2, v3, v8, v6);
  v13 = *(a1 + 384);
  *(a1 + 384) = v13 + 1;
  *(*(a1 + 408) + 8 * v13) = result;
  return result;
}

uint64_t glpLLVMBuildAlloca(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  result = LLVMBuildAlloca();
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMBuildLoad(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  result = LLVMBuildLoad();
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMBuildStore(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);

  return LLVMBuildStore();
}

uint64_t glpLLVMBuildExtractElement(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  result = LLVMBuildExtractElement();
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMBuildInsertElement(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  result = LLVMBuildInsertElement();
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMBuildShuffleVector(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  result = LLVMBuildShuffleVector();
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMBuildGEP(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  glpDeserializeLLVMValue(a1);
  v2 = glpDeserializeArraySize(a1);
  v3 = v2;
  v4 = v2;
  MEMORY[0x28223BE20](v2, 8 * v2);
  v6 = (v13 - v5);
  bzero(v13 - v5, v7);
  if (v3)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      *v8++ = glpDeserializeLLVMValue(a1);
      --v9;
    }

    while (v9);
  }

  if (*(a1 + 392))
  {
    v10 = *(a1 + 364);
    *(a1 + 364) = v10 + strnlen((*(a1 + 352) + v10), *(a1 + 360)) + 1;
  }

  result = LLVMBuildGEP();
  v12 = *(a1 + 384);
  *(a1 + 384) = v12 + 1;
  *(*(a1 + 408) + 8 * v12) = result;
  return result;
}

uint64_t glpLLVMBuildInsertValue(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  v2 = *(a1 + 364);
  v3 = *(a1 + 360);
  if (v2 >= v3)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 352);
  v5 = *(v4 + v2);
  v6 = *(v4 + v2);
  v7 = v2 + 1;
  *(a1 + 364) = v2 + 1;
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  v8 = (v6 >> 1) & 7;
  if (((v6 >> 1) & 7) > 3)
  {
    if (((v6 >> 1) & 7) > 5)
    {
      if (v8 == 6)
      {
        if (v2 + 5 <= v3)
        {
          *(a1 + 364) = v2 + 5;
          v7 = v2 + 8;
          if (v2 + 8 <= v3)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v2 + 9 <= v3)
      {
        v7 = v2 + 9;
        goto LABEL_29;
      }
    }

    else
    {
      v9 = v2 + 5;
      if (v8 == 4)
      {
        if (v9 <= v3)
        {
          *(a1 + 364) = v2 + 5;
          if (v2 + 5 < v3)
          {
            v7 = v2 + 6;
            goto LABEL_29;
          }
        }
      }

      else if (v9 <= v3)
      {
        v11 = (v2 + 5);
        *(a1 + 364) = v11;
        if (v11 + 2 <= v3)
        {
          v7 = v2 + 7;
          goto LABEL_29;
        }
      }
    }

LABEL_33:
    glpDeserialError(a1 + 104, 1u);
  }

  if (((v6 >> 1) & 7) > 1)
  {
    if (v8 == 2)
    {
      v10 = v2 + 4;
      if (v10 <= v3)
      {
        *(a1 + 364) = v10;
        v7 = v10;
        goto LABEL_30;
      }
    }

    else if (v2 + 5 <= v3)
    {
      v7 = v2 + 5;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v8)
  {
    if (v2 + 3 <= v3)
    {
      v7 = v2 + 3;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v7 >= v3)
  {
    goto LABEL_33;
  }

  v7 = v2 + 2;
LABEL_29:
  *(a1 + 364) = v7;
LABEL_30:
  if (*(a1 + 392))
  {
    *(a1 + 364) = v7 + strnlen((v4 + v7), v3) + 1;
  }

  result = LLVMBuildInsertValue();
  v13 = *(a1 + 384);
  *(a1 + 384) = v13 + 1;
  *(*(a1 + 408) + 8 * v13) = result;
  return result;
}

uint64_t glpLLVMBuildExtractValue(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  v2 = *(a1 + 364);
  v3 = *(a1 + 360);
  if (v2 >= v3)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 352);
  v5 = *(v4 + v2);
  v6 = *(v4 + v2);
  v7 = v2 + 1;
  *(a1 + 364) = v2 + 1;
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  v8 = (v6 >> 1) & 7;
  if (((v6 >> 1) & 7) > 3)
  {
    if (((v6 >> 1) & 7) > 5)
    {
      if (v8 == 6)
      {
        if (v2 + 5 <= v3)
        {
          *(a1 + 364) = v2 + 5;
          v7 = v2 + 8;
          if (v2 + 8 <= v3)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v2 + 9 <= v3)
      {
        v7 = v2 + 9;
        goto LABEL_29;
      }
    }

    else
    {
      v9 = v2 + 5;
      if (v8 == 4)
      {
        if (v9 <= v3)
        {
          *(a1 + 364) = v2 + 5;
          if (v2 + 5 < v3)
          {
            v7 = v2 + 6;
            goto LABEL_29;
          }
        }
      }

      else if (v9 <= v3)
      {
        v11 = (v2 + 5);
        *(a1 + 364) = v11;
        if (v11 + 2 <= v3)
        {
          v7 = v2 + 7;
          goto LABEL_29;
        }
      }
    }

LABEL_33:
    glpDeserialError(a1 + 104, 1u);
  }

  if (((v6 >> 1) & 7) > 1)
  {
    if (v8 == 2)
    {
      v10 = v2 + 4;
      if (v10 <= v3)
      {
        *(a1 + 364) = v10;
        v7 = v10;
        goto LABEL_30;
      }
    }

    else if (v2 + 5 <= v3)
    {
      v7 = v2 + 5;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v8)
  {
    if (v2 + 3 <= v3)
    {
      v7 = v2 + 3;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v7 >= v3)
  {
    goto LABEL_33;
  }

  v7 = v2 + 2;
LABEL_29:
  *(a1 + 364) = v7;
LABEL_30:
  if (*(a1 + 392))
  {
    *(a1 + 364) = v7 + strnlen((v4 + v7), v3) + 1;
  }

  result = LLVMBuildExtractValue();
  v13 = *(a1 + 384);
  *(a1 + 384) = v13 + 1;
  *(*(a1 + 408) + 8 * v13) = result;
  return result;
}

uint64_t glpLLVMBinaryOperation(uint64_t a1, unsigned int a2)
{
  v4 = glpDeserializeLLVMValue(a1);
  v5 = glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v6 = *(a1 + 364);
    v7 = (*(a1 + 352) + v6);
    *(a1 + 364) = v6 + strnlen(v7, *(a1 + 360)) + 1;
  }

  else
  {
    v7 = "";
  }

  result = (gOperations[4 * a2 + 3])(*(a1 + 16), v4, v5, v7);
  v9 = *(a1 + 384);
  *(a1 + 384) = v9 + 1;
  *(*(a1 + 408) + 8 * v9) = result;
  return result;
}

uint64_t glpLLVMUnaryOperation(uint64_t a1, unsigned int a2)
{
  v4 = glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v5 = *(a1 + 364);
    v6 = (*(a1 + 352) + v5);
    *(a1 + 364) = v5 + strnlen(v6, *(a1 + 360)) + 1;
  }

  else
  {
    v6 = "";
  }

  result = (gOperations[4 * a2 + 3])(*(a1 + 16), v4, v6);
  v8 = *(a1 + 384);
  *(a1 + 384) = v8 + 1;
  *(*(a1 + 408) + 8 * v8) = result;
  return result;
}

uint64_t glpLLVMCastOperation(uint64_t a1, unsigned int a2)
{
  v4 = glpDeserializeLLVMValue(a1);
  v5 = glpDeserializeLLVMType(a1);
  if (*(a1 + 392))
  {
    v6 = *(a1 + 364);
    v7 = (*(a1 + 352) + v6);
    *(a1 + 364) = v6 + strnlen(v7, *(a1 + 360)) + 1;
  }

  else
  {
    v7 = "";
  }

  result = LLVMTypeOf();
  if (result != v5)
  {
    result = (gOperations[4 * a2 + 3])(*(a1 + 16), v4, v5, v7);
    v4 = result;
  }

  v9 = *(a1 + 384);
  *(a1 + 384) = v9 + 1;
  *(*(a1 + 408) + 8 * v9) = v4;
  return result;
}

uint64_t glpLLVMBuildICmp(uint64_t a1)
{
  glpDeserializeuint32(a1);
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  result = LLVMBuildICmp();
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMBuildFCmp(uint64_t a1)
{
  glpDeserializeuint32(a1);
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  result = LLVMBuildFCmp();
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMBuildSelect(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  result = LLVMBuildSelect();
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMBuildSwitch(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMBlock(a1);
  glpDeserializeuint32(a1);
  result = LLVMBuildSwitch();
  v3 = *(a1 + 384);
  *(a1 + 384) = v3 + 1;
  *(*(a1 + 408) + 8 * v3) = result;
  return result;
}

void glpLLVMAddCase(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMBlock(a1);

  JUMPOUT(0x23EE84E40);
}

uint64_t glpLLVMBuildPhi(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  result = LLVMBuildPhi();
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMAddIncoming(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  glpDeserializeLLVMValue(a1);
  v2 = glpDeserializeuint32(a1);
  v3 = v2;
  v4 = v2;
  v5 = 8 * v2;
  MEMORY[0x28223BE20](v2, v6);
  bzero(v14 - ((v5 + 15) & 0xFFFFFFFF0), v5);
  MEMORY[0x28223BE20](v7, v8);
  v9 = v14 - ((v5 + 15) & 0xFFFFFFFF0);
  bzero(v9, v5);
  if (v3)
  {
    v10 = v4;
    v11 = (v14 - ((v5 + 15) & 0xFFFFFFFF0));
    v12 = v9;
    do
    {
      *v11++ = glpDeserializeLLVMValue(a1);
      *v12++ = glpDeserializeLLVMBlock(a1);
      --v10;
    }

    while (v10);
  }

  return LLVMAddIncoming();
}

uint64_t glpLLVMGetSwitchDefaultDest(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  result = LLVMGetSwitchDefaultDest();
  v3 = *(a1 + 388);
  *(a1 + 388) = v3 + 1;
  *(*(a1 + 416) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMBuildBr(uint64_t a1)
{
  v2 = glpDeserializeLLVMBlock(a1);

  return glpLLVMEmitBranchInnerReal(a1, v2);
}

uint64_t glpLLVMBuildCondBr(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMBlock(a1);
  glpDeserializeLLVMBlock(a1);

  return LLVMBuildCondBr();
}

GLPDebugInfoContext *glpLLVMDIBuilderDeleteStub(uint64_t a1)
{
  result = glpLLVMDIBuilderDelete(*(a1 + 24));
  *(a1 + 24) = 0;
  return result;
}

uint64_t glpLLVMDIBuilderCreateCompileUnitStub(uint64_t a1)
{
  v2 = *(a1 + 352);
  v3 = *(a1 + 364);
  *(a1 + 364) = v3 + strnlen((v2 + v3), *(a1 + 360)) + 1;
  v4 = *(a1 + 24);

  return glpLLVMDIBuilderCreateCompileUnit(v4, (v2 + v3));
}

uint64_t glpLLVMDIBuilderCreateFileStub(uint64_t a1)
{
  v2 = *(a1 + 352);
  v3 = *(a1 + 364);
  *(a1 + 364) = v3 + strnlen((v2 + v3), *(a1 + 360)) + 1;
  v4 = *(a1 + 24);

  return glpLLVMDIBuilderCreateFile(v4, (v2 + v3));
}

void glpLLVMDIBuilderCreateSubProgramStub(uint64_t a1)
{
  v2 = glpDeserializeLLVMValue(a1);
  v3 = *(a1 + 352);
  v4 = *(a1 + 364);
  *(a1 + 364) = v4 + strnlen((v3 + v4), *(a1 + 360)) + 1;
  v5 = *(a1 + 24);

  glpLLVMDIBuilderCreateSubProgram(v5, v2, (v3 + v4));
}

uint64_t glpLLVMSetCurrentLineStub(uint64_t a1)
{
  v1 = *(a1 + 364);
  v2 = *(a1 + 360);
  if (v1 >= v2)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 352);
  v4 = *(v3 + v1);
  v5 = *(v3 + v1);
  v6 = v1 + 1;
  *(a1 + 364) = v1 + 1;
  if (v4 < 0)
  {
    v7 = (v5 >> 1) & 7;
    if (((v5 >> 1) & 7) > 3)
    {
      if (((v5 >> 1) & 7) > 5)
      {
        if (v7 == 6)
        {
          if (v1 + 5 <= v2)
          {
            v8 = *(v3 + v6);
            *(a1 + 364) = v1 + 5;
            v9 = v1 + 8;
            if (v9 <= v2)
            {
LABEL_29:
              *(a1 + 364) = v9;
              v12 = -256 << (8 * v7);
              if (v4)
              {
                v13 = v12;
              }

              else
              {
                v13 = 0;
              }

              v5 = v8 | v13;
              goto LABEL_33;
            }
          }
        }

        else if (v1 + 9 <= v2)
        {
          v8 = *(v3 + v6);
          v9 = v1 + 9;
          goto LABEL_29;
        }
      }

      else
      {
        v10 = v1 + 5;
        if (v7 == 4)
        {
          if (v10 <= v2)
          {
            v8 = *(v3 + v6);
            *(a1 + 364) = v1 + 5;
            if (v1 + 5 < v2)
            {
              v9 = v1 + 6;
              goto LABEL_29;
            }
          }
        }

        else if (v10 <= v2)
        {
          v8 = *(v3 + v6);
          v11 = (v1 + 5);
          *(a1 + 364) = v11;
          if (v11 + 2 <= v2)
          {
            v9 = v1 + 7;
            goto LABEL_29;
          }
        }
      }
    }

    else if (((v5 >> 1) & 7) > 1)
    {
      if (v7 == 2)
      {
        v9 = v1 + 4;
        if (v9 <= v2)
        {
          v8 = *(v3 + v6) | (*(v3 + v6 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v1 + 5 <= v2)
      {
        v8 = *(v3 + v6);
        v9 = v1 + 5;
        goto LABEL_29;
      }
    }

    else if (v7)
    {
      if (v1 + 3 <= v2)
      {
        v8 = *(v3 + v6);
        v9 = v1 + 3;
        goto LABEL_29;
      }
    }

    else if (v6 < v2)
    {
      v8 = *(v3 + v6);
      v9 = v1 + 2;
      goto LABEL_29;
    }

LABEL_36:
    glpDeserialError(a1 + 104, 1u);
  }

LABEL_33:
  glpLLVMGetDebugLocation(*(a1 + 24), v5);

  return LLVMSetCurrentDebugLocation();
}

uint64_t glpLLVMPackVector(uint64_t a1)
{
  v2 = glpDeserializeLLVMValue(a1);
  v3 = glpDeserializeLLVMType(a1);
  result = glpLLVMPackVectorInner(a1, v2, v3);
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMUnpackVector(uint64_t a1)
{
  v2 = glpDeserializeLLVMValue(a1);
  v3 = glpDeserializeLLVMType(a1);
  result = glpLLVMUnpackTypeInner(a1, v2, v3);
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMCallFunction(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 352);
  v3 = *(a1 + 364);
  *(a1 + 364) = v3 + strnlen((v2 + v3), *(a1 + 360)) + 1;
  v4 = glpDeserializeLLVMType(a1);
  v5 = glpDeserializeArraySize(a1);
  v6 = v5;
  v7 = v5;
  MEMORY[0x28223BE20](v5, 8 * v5);
  v9 = (v25 - v8);
  bzero(v25 - v8, v10);
  if (v6)
  {
    v11 = v9;
    v12 = v7;
    do
    {
      *v11++ = glpDeserializeLLVMValue(a1);
      --v12;
    }

    while (v12);
  }

  v13 = glpDeserializeuint32(a1);
  v14 = v13;
  v15 = v13;
  MEMORY[0x28223BE20](v13, 4 * v13);
  v17 = (v25 - v16);
  bzero(v25 - v16, v18);
  if (v14)
  {
    v19 = v15;
    v20 = v17;
    do
    {
      *v20++ = glpDeserializeuint32(a1);
      --v19;
    }

    while (v19);
  }

  if (*(a1 + 392))
  {
    v21 = *(a1 + 364);
    v22 = (*(a1 + 352) + v21);
    *(a1 + 364) = v21 + strnlen(v22, *(a1 + 360)) + 1;
  }

  else
  {
    v22 = "";
  }

  result = glpLLVMCallFunctionInner(a1, v2 + v3, v4, v9, v7, v17, v15, v22);
  v24 = *(a1 + 384);
  *(a1 + 384) = v24 + 1;
  *(*(a1 + 408) + 8 * v24) = result;
  return result;
}

uint64_t glpLLVMGetInfinityProxy(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  result = glpLLVMGetInfinity();
  v3 = *(a1 + 384);
  *(a1 + 384) = v3 + 1;
  *(*(a1 + 408) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMAddGlobalInAddressSpace(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  glpDeserializeuint32(a1);
  v3 = LLVMAddGlobalInAddressSpace();
  result = LLVMSetGlobalConstant();
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = v3;
  return result;
}

uint64_t glpGenerateLLVMIRModule(int *a1, int a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0;
  memset(v24, 0, sizeof(v24));
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v6 = a1[1];
  v27 = a1[2];
  v28 = v6;
  v29 = a1[3];
  v7 = malloc_type_malloc(8 * v6, 0x75808E6AuLL);
  if (!v7 || (v8 = v7, v35 = v7, (v9 = malloc_type_malloc(8 * a1[2], 0x75808E6AuLL)) == 0) || (v10 = v9, v34 = v9, (v11 = malloc_type_malloc(8 * a1[3], 0x75808E6AuLL)) == 0))
  {
    abort();
  }

  v36 = v11;
  *v8 = 0;
  *v10 = 0;
  *v11 = 0;
  v30 = 1;
  v31 = 0x100000001;
  v12 = a1[4];
  v32 = v12 & 1;
  v33 = (v12 >> 1) & 1;
  v17 = a3;
  *(&v19 + 1) = LLVMInt64TypeInContext();
  *&v20 = LLVMInt32TypeInContext();
  *(&v20 + 1) = LLVMInt16TypeInContext();
  *&v21 = LLVMInt8TypeInContext();
  *(&v21 + 1) = LLVMInt1TypeInContext();
  *&v22 = LLVMFloatTypeInContext();
  *(&v22 + 1) = LLVMHalfTypeInContext();
  *&v23 = LLVMVoidTypeInContext();
  *(&v23 + 1) = LLVMDoubleTypeInContext();
  memset(v16, 0, sizeof(v16));
  glpInitPoolAllocator(4096, 4096, v16);
  glpInitDeserialContext(v24, v16, GLP_MALLOC_ALLOCATOR, (a1 + 6), a2 - 24);
  *&v18 = LLVMModuleCreateWithNameInContext();
  glpLLVMSetupModule(v18);
  v13 = *a1;
  if (v13 >= 1)
  {
    do
    {
      if (HIDWORD(v26) >= v26)
      {
        glpDeserialError(v24, 1u);
      }

      v14 = *(*(&v25 + 1) + HIDWORD(v26));
      ++HIDWORD(v26);
      gOperations[4 * v14 + 1](&v17);
      --v13;
    }

    while (v13);
  }

  glpDestroyDeserialContext(v24);
  glpDestroyPoolAllocator(v16);
  free(v35);
  free(v34);
  free(v36);
  return v18;
}

uint64_t glpDeserializeLLVMType(uint64_t a1)
{
  v1 = *(a1 + 364);
  v2 = *(a1 + 360);
  if (v1 >= v2)
  {
    goto LABEL_34;
  }

  v3 = *(a1 + 352);
  v4 = *(v3 + v1);
  v5 = *(v3 + v1);
  v6 = v1 + 1;
  *(a1 + 364) = v1 + 1;
  if ((v4 & 0x80000000) == 0)
  {
    return *(*(a1 + 400) + 8 * v5);
  }

  v7 = (v5 >> 1) & 7;
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = v1 + 4;
        if (v8 <= v2)
        {
          LODWORD(v3) = *(v3 + v6) | (*(v3 + v6 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v1 + 5 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        v8 = v1 + 5;
        goto LABEL_29;
      }
    }

    else if (v7)
    {
      if (v1 + 3 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        v8 = v1 + 3;
        goto LABEL_29;
      }
    }

    else if (v6 < v2)
    {
      LODWORD(v3) = *(v3 + v6);
      v8 = v1 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1 + 104, 1u);
  }

  if (v7 <= 5)
  {
    v9 = v1 + 5;
    if (v7 == 4)
    {
      if (v9 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        *(a1 + 364) = v1 + 5;
        if (v1 + 5 < v2)
        {
          v8 = v1 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v9 <= v2)
    {
      LODWORD(v3) = *(v3 + v6);
      v10 = (v1 + 5);
      *(a1 + 364) = v10;
      if (v10 + 2 <= v2)
      {
        v8 = v1 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v7 != 6)
  {
    if (v1 + 9 <= v2)
    {
      v3 = *(v3 + v6);
      v8 = v1 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v1 + 5 > v2)
  {
    goto LABEL_34;
  }

  LODWORD(v3) = *(v3 + v6);
  *(a1 + 364) = v1 + 5;
  v8 = v1 + 8;
  if (v8 > v2)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 364) = v8;
  v11 = -256 << (8 * v7);
  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  LODWORD(v5) = v3 | v12;
  return *(*(a1 + 400) + 8 * v5);
}

unint64_t glpDeserializeuint32(uint64_t a1)
{
  v1 = *(a1 + 364);
  v2 = *(a1 + 360);
  if (v1 >= v2)
  {
    goto LABEL_33;
  }

  v3 = *(a1 + 352);
  v4 = *(v3 + v1);
  v5 = *(v3 + v1);
  v6 = v1 + 1;
  *(a1 + 364) = v1 + 1;
  if ((v4 & 0x80000000) == 0)
  {
    return v5;
  }

  v7 = (v5 >> 1) & 7;
  if (v7 > 3)
  {
    if (v7 > 5)
    {
      if (v7 == 6)
      {
        if (v1 + 5 <= v2)
        {
          v8 = *(v3 + v6);
          *(a1 + 364) = v1 + 5;
          v9 = v1 + 8;
          if (v9 <= v2)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v1 + 9 <= v2)
      {
        v8 = *(v3 + v6);
        v9 = v1 + 9;
        goto LABEL_29;
      }
    }

    else
    {
      v10 = v1 + 5;
      if (v7 == 4)
      {
        if (v10 <= v2)
        {
          v8 = *(v3 + v6);
          *(a1 + 364) = v1 + 5;
          if (v1 + 5 < v2)
          {
            v9 = v1 + 6;
            goto LABEL_29;
          }
        }
      }

      else if (v10 <= v2)
      {
        v8 = *(v3 + v6);
        v11 = (v1 + 5);
        *(a1 + 364) = v11;
        if (v11 + 2 <= v2)
        {
          v9 = v1 + 7;
          goto LABEL_29;
        }
      }
    }

LABEL_33:
    glpDeserialError(a1 + 104, 1u);
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = v1 + 4;
      if (v9 <= v2)
      {
        v8 = *(v3 + v6) | (*(v3 + v6 + 2) << 16);
        goto LABEL_29;
      }
    }

    else if (v1 + 5 <= v2)
    {
      v8 = *(v3 + v6);
      v9 = v1 + 5;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v7)
  {
    if (v1 + 3 <= v2)
    {
      v8 = *(v3 + v6);
      v9 = v1 + 3;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v6 >= v2)
  {
    goto LABEL_33;
  }

  v8 = *(v3 + v6);
  v9 = v1 + 2;
LABEL_29:
  *(a1 + 364) = v9;
  v12 = -256 << (8 * v7);
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  return v8 | v12;
}

unint64_t glpDeserializeArraySize(uint64_t a1)
{
  v1 = *(a1 + 364);
  v2 = *(a1 + 360);
  if (v1 >= v2)
  {
    goto LABEL_33;
  }

  v3 = *(a1 + 352);
  v4 = *(v3 + v1);
  v5 = *(v3 + v1);
  v6 = v1 + 1;
  *(a1 + 364) = v1 + 1;
  if ((v4 & 0x80000000) == 0)
  {
    return v5;
  }

  v7 = (v5 >> 1) & 7;
  if (v7 > 3)
  {
    if (v7 > 5)
    {
      if (v7 == 6)
      {
        if (v1 + 5 <= v2)
        {
          v8 = *(v3 + v6);
          *(a1 + 364) = v1 + 5;
          v9 = v1 + 8;
          if (v9 <= v2)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v1 + 9 <= v2)
      {
        v8 = *(v3 + v6);
        v9 = v1 + 9;
        goto LABEL_29;
      }
    }

    else
    {
      v10 = v1 + 5;
      if (v7 == 4)
      {
        if (v10 <= v2)
        {
          v8 = *(v3 + v6);
          *(a1 + 364) = v1 + 5;
          if (v1 + 5 < v2)
          {
            v9 = v1 + 6;
            goto LABEL_29;
          }
        }
      }

      else if (v10 <= v2)
      {
        v8 = *(v3 + v6);
        v11 = (v1 + 5);
        *(a1 + 364) = v11;
        if (v11 + 2 <= v2)
        {
          v9 = v1 + 7;
          goto LABEL_29;
        }
      }
    }

LABEL_33:
    glpDeserialError(a1 + 104, 1u);
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = v1 + 4;
      if (v9 <= v2)
      {
        v8 = *(v3 + v6) | (*(v3 + v6 + 2) << 16);
        goto LABEL_29;
      }
    }

    else if (v1 + 5 <= v2)
    {
      v8 = *(v3 + v6);
      v9 = v1 + 5;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v7)
  {
    if (v1 + 3 <= v2)
    {
      v8 = *(v3 + v6);
      v9 = v1 + 3;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v6 >= v2)
  {
    goto LABEL_33;
  }

  v8 = *(v3 + v6);
  v9 = v1 + 2;
LABEL_29:
  *(a1 + 364) = v9;
  v12 = -256 << (8 * v7);
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  return v8 | v12;
}

uint64_t glpDeserializeLLVMValue(uint64_t a1)
{
  v1 = *(a1 + 364);
  v2 = *(a1 + 360);
  if (v1 >= v2)
  {
    goto LABEL_34;
  }

  v3 = *(a1 + 352);
  v4 = *(v3 + v1);
  v5 = *(v3 + v1);
  v6 = v1 + 1;
  *(a1 + 364) = v1 + 1;
  if ((v4 & 0x80000000) == 0)
  {
    return *(*(a1 + 408) + 8 * v5);
  }

  v7 = (v5 >> 1) & 7;
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = v1 + 4;
        if (v8 <= v2)
        {
          LODWORD(v3) = *(v3 + v6) | (*(v3 + v6 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v1 + 5 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        v8 = v1 + 5;
        goto LABEL_29;
      }
    }

    else if (v7)
    {
      if (v1 + 3 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        v8 = v1 + 3;
        goto LABEL_29;
      }
    }

    else if (v6 < v2)
    {
      LODWORD(v3) = *(v3 + v6);
      v8 = v1 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1 + 104, 1u);
  }

  if (v7 <= 5)
  {
    v9 = v1 + 5;
    if (v7 == 4)
    {
      if (v9 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        *(a1 + 364) = v1 + 5;
        if (v1 + 5 < v2)
        {
          v8 = v1 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v9 <= v2)
    {
      LODWORD(v3) = *(v3 + v6);
      v10 = (v1 + 5);
      *(a1 + 364) = v10;
      if (v10 + 2 <= v2)
      {
        v8 = v1 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v7 != 6)
  {
    if (v1 + 9 <= v2)
    {
      v3 = *(v3 + v6);
      v8 = v1 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v1 + 5 > v2)
  {
    goto LABEL_34;
  }

  LODWORD(v3) = *(v3 + v6);
  *(a1 + 364) = v1 + 5;
  v8 = v1 + 8;
  if (v8 > v2)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 364) = v8;
  v11 = -256 << (8 * v7);
  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  LODWORD(v5) = v3 | v12;
  return *(*(a1 + 408) + 8 * v5);
}

uint64_t glpDeserializeLLVMBlock(uint64_t a1)
{
  v1 = *(a1 + 364);
  v2 = *(a1 + 360);
  if (v1 >= v2)
  {
    goto LABEL_34;
  }

  v3 = *(a1 + 352);
  v4 = *(v3 + v1);
  v5 = *(v3 + v1);
  v6 = v1 + 1;
  *(a1 + 364) = v1 + 1;
  if ((v4 & 0x80000000) == 0)
  {
    return *(*(a1 + 416) + 8 * v5);
  }

  v7 = (v5 >> 1) & 7;
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = v1 + 4;
        if (v8 <= v2)
        {
          LODWORD(v3) = *(v3 + v6) | (*(v3 + v6 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v1 + 5 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        v8 = v1 + 5;
        goto LABEL_29;
      }
    }

    else if (v7)
    {
      if (v1 + 3 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        v8 = v1 + 3;
        goto LABEL_29;
      }
    }

    else if (v6 < v2)
    {
      LODWORD(v3) = *(v3 + v6);
      v8 = v1 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1 + 104, 1u);
  }

  if (v7 <= 5)
  {
    v9 = v1 + 5;
    if (v7 == 4)
    {
      if (v9 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        *(a1 + 364) = v1 + 5;
        if (v1 + 5 < v2)
        {
          v8 = v1 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v9 <= v2)
    {
      LODWORD(v3) = *(v3 + v6);
      v10 = (v1 + 5);
      *(a1 + 364) = v10;
      if (v10 + 2 <= v2)
      {
        v8 = v1 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v7 != 6)
  {
    if (v1 + 9 <= v2)
    {
      v3 = *(v3 + v6);
      v8 = v1 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v1 + 5 > v2)
  {
    goto LABEL_34;
  }

  LODWORD(v3) = *(v3 + v6);
  *(a1 + 364) = v1 + 5;
  v8 = v1 + 8;
  if (v8 > v2)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 364) = v8;
  v11 = -256 << (8 * v7);
  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  LODWORD(v5) = v3 | v12;
  return *(*(a1 + 416) + 8 * v5);
}

uint64_t glpPrecisionIndexFromSAFlags(char a1)
{
  result = 0;
  v3 = a1 & 0x1F;
  if (v3 <= 7)
  {
    if (!v3)
    {
      return result;
    }

    if (v3 == 4)
    {
      return 1;
    }

LABEL_11:
    abort();
  }

  if (v3 == 8)
  {
    return 2;
  }

  if (v3 == 16)
  {
    return 3;
  }

  if (v3 != 31)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t glpGetIBVariableObjectCount(uint64_t a1, unsigned int *a2)
{
  ElementType = a2;
  v10 = *MEMORY[0x277D85DE8];
  Kind = glpTypeGetKind(a2);
  v6 = a1 == 0x20000000 || a1 == 0x40000000;
  v9 = xmmword_23A300DF0;
  v7 = *(&v9 | (8 * (Kind == 3)) | (4 * v6));
  if (v7 != 1)
  {
    if (v7 != 3)
    {
      return 1;
    }

    ElementType = glpBankTypeGetElementType(ElementType);
  }

  return glpAggregateTypeGetElementCount(ElementType);
}

uint64_t *glpLayoutObjectFind(uint64_t *result, int a2)
{
  do
  {
    result = *result;
  }

  while (result && *(result + 2) != a2);
  return result;
}

uint64_t *glpLayoutObjectGetGeomInOut(uint64_t *result, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v6 = result;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (!*(v6 + 2))
    {
      if (a4)
      {
        *a4 = 0;
      }

      if (a5)
      {
        *a5 = 0;
      }

      if (a2)
      {
        *a2 = 1;
      }

      break;
    }
  }

  v7 = result;
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    if (*(v7 + 2) == 1)
    {
      if (a4)
      {
        *a4 = 1;
      }

      if (a2)
      {
        *a2 = 2;
      }

      break;
    }
  }

  v8 = result;
  while (1)
  {
    v8 = *v8;
    if (!v8)
    {
      break;
    }

    if (*(v8 + 2) == 2)
    {
      if (a4)
      {
        *a4 = 10;
      }

      if (a2)
      {
        *a2 = 4;
      }

      break;
    }
  }

  v9 = result;
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    if (*(v9 + 2) == 3)
    {
      if (a4)
      {
        *a4 = 4;
      }

      if (a2)
      {
        *a2 = 3;
      }

      break;
    }
  }

  v10 = result;
  while (1)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    if (*(v10 + 2) == 4)
    {
      if (a4)
      {
        *a4 = 12;
      }

      if (a2)
      {
        *a2 = 6;
      }

      break;
    }
  }

  v11 = result;
  do
  {
    v11 = *v11;
    if (!v11)
    {
      v12 = a5 != 0;
      goto LABEL_45;
    }
  }

  while (*(v11 + 2) != 6);
  if (a5)
  {
    *a5 = 3;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_45:
  v13 = result;
  while (1)
  {
    v13 = *v13;
    if (!v13)
    {
      break;
    }

    if (*(v13 + 2) == 7)
    {
      if (v12)
      {
        *a5 = 5;
      }

      break;
    }
  }

  v14 = result;
  while (1)
  {
    v14 = *v14;
    if (!v14)
    {
      break;
    }

    if (*(v14 + 2) == 8)
    {
      if (a3)
      {
        v15 = result;
        do
        {
          v15 = *v15;
        }

        while (v15 && *(v15 + 2) != 8);
        *a3 = *(v15 + 4);
      }

      break;
    }
  }

  v16 = result;
  while (1)
  {
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    if (*(v16 + 2) == 5)
    {
      if (a6)
      {
        do
        {
          result = *result;
        }

        while (result && *(result + 2) != 5);
        *a6 = *(result + 4);
      }

      return result;
    }
  }

  return result;
}

uint64_t glpLinkedProgramGetSubroutineUniformLocationCount(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8 * a2 + 144);
  v3 = *(v2 + 32);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(*(v2 + 40) + v4);
    if (v7)
    {
      glpABIGetTypeSize(0, *(v7 + 24), 0);
      glpTypeSizeGetSize();
      v6 = (v8 + v6);
      v3 = *(v2 + 32);
    }

    ++v5;
    v4 += 32;
  }

  while (v5 < v3);
  return v6;
}

__n128 glpLinkedProgramGetOverrides(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 272);
  v3 = *(a1 + 304);
  *(a2 + 16) = *(a1 + 288);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

char *glpPrimitiveTypeToString(unsigned int a1)
{
  if (a1 >= 0x4F)
  {
    abort();
  }

  return (&off_278B4DFF0)[a1];
}

uint64_t glpGetVectorType(int a1, int a2)
{
  if ((a2 - 5) <= 0xFFFFFFFB)
  {
    goto LABEL_14;
  }

  if (a1 <= 8)
  {
    if (a1 == 1)
    {
      v2 = &GLP_VECTOR_TYPES;
      return v2[a2 - 1];
    }

    if (a1 == 5)
    {
      v2 = &unk_23A300F20;
      return v2[a2 - 1];
    }

LABEL_14:
    abort();
  }

  if (a1 == 9)
  {
    v2 = &unk_23A300F30;
    return v2[a2 - 1];
  }

  if (a1 == 36)
  {
    v2 = &unk_23A300F40;
    return v2[a2 - 1];
  }

  if (a1 != 62)
  {
    goto LABEL_14;
  }

  v2 = &unk_23A300F10;
  return v2[a2 - 1];
}

uint64_t glpPrimitiveTypeGetCategory(unsigned int a1)
{
  if (a1 >= 0x4F)
  {
    abort();
  }

  return dword_23A300F50[a1];
}

uint64_t glpPrimitiveVectorGetLength(uint64_t a1)
{
  v1 = a1;
  result = 2;
  switch(v1)
  {
    case 2:
    case 6:
    case 10:
    case 37:
    case 63:
      return result;
    case 3:
    case 4:
      result = a1;
      break;
    case 7:
    case 11:
    case 38:
    case 64:
      result = 3;
      break;
    case 8:
    case 12:
    case 39:
    case 65:
      result = 4;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveVectorGetElementType(int a1)
{
  result = 1;
  switch(a1)
  {
    case 2:
    case 3:
    case 4:
      return result;
    case 6:
    case 7:
    case 8:
      result = 5;
      break;
    case 10:
    case 11:
    case 12:
      result = 9;
      break;
    case 37:
    case 38:
    case 39:
      result = 36;
      break;
    case 63:
    case 64:
    case 65:
      result = 62;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetColumns(int a1)
{
  result = 2;
  switch(a1)
  {
    case 13:
    case 22:
    case 23:
    case 66:
    case 69:
    case 70:
      return result;
    case 14:
    case 24:
    case 25:
    case 67:
    case 71:
    case 72:
      result = 3;
      break;
    case 15:
    case 26:
    case 27:
    case 68:
    case 73:
    case 74:
      result = 4;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetRows(int a1)
{
  result = 2;
  switch(a1)
  {
    case 13:
    case 24:
    case 26:
    case 66:
    case 71:
    case 73:
      return result;
    case 14:
    case 22:
    case 27:
    case 67:
    case 69:
    case 74:
      result = 3;
      break;
    case 15:
    case 23:
    case 25:
    case 68:
    case 70:
    case 72:
      result = 4;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetColumnType(int a1)
{
  result = 2;
  switch(a1)
  {
    case 13:
    case 24:
    case 26:
      return result;
    case 14:
    case 22:
    case 27:
      result = 3;
      break;
    case 15:
    case 23:
    case 25:
      result = 4;
      break;
    case 66:
    case 71:
    case 73:
      result = 63;
      break;
    case 67:
    case 69:
    case 74:
      result = 64;
      break;
    case 68:
    case 70:
    case 72:
      result = 65;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetRowType(int a1)
{
  result = 2;
  switch(a1)
  {
    case 13:
    case 22:
    case 23:
      return result;
    case 14:
    case 24:
    case 25:
      result = 3;
      break;
    case 15:
    case 26:
    case 27:
      result = 4;
      break;
    case 66:
    case 69:
    case 70:
      result = 63;
      break;
    case 67:
    case 71:
    case 72:
      result = 64;
      break;
    case 68:
    case 73:
    case 74:
      result = 65;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetElementType(int a1)
{
  result = 1;
  switch(a1)
  {
    case 13:
    case 14:
    case 15:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
      return result;
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
      result = 62;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveSamplerGetPPTextarget(int a1)
{
  result = 4;
  switch(a1)
  {
    case 16:
    case 40:
    case 48:
      return result;
    case 17:
    case 41:
    case 49:
      result = 3;
      break;
    case 18:
    case 42:
    case 50:
      result = 1;
      break;
    case 19:
    case 43:
    case 51:
      result = 0;
      break;
    case 20:
      result = 7;
      break;
    case 21:
      result = 6;
      break;
    case 28:
    case 44:
    case 52:
      result = 2;
      break;
    case 29:
      result = 5;
      break;
    case 30:
    case 45:
    case 53:
      result = 9;
      break;
    case 31:
    case 46:
    case 54:
      result = 10;
      break;
    case 32:
    case 47:
    case 55:
      result = 13;
      break;
    case 33:
      result = 11;
      break;
    case 34:
      result = 12;
      break;
    case 35:
      result = 8;
      break;
    case 56:
    case 58:
    case 60:
      result = 14;
      break;
    case 57:
    case 59:
    case 61:
      result = 15;
      break;
    case 75:
    case 77:
    case 78:
      result = 16;
      break;
    case 76:
      result = 17;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveSamplerGetPPDatatype(int a1)
{
  result = 0;
  switch(a1)
  {
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 56:
    case 57:
    case 75:
    case 76:
      return result;
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 58:
    case 59:
    case 77:
      result = 2;
      break;
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 60:
    case 61:
    case 78:
      result = 3;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveTypeGetScalarType(uint64_t a1)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category <= 1)
  {
    if (Category == 1)
    {
      return a1;
    }

    goto LABEL_12;
  }

  if (Category != 2)
  {
    if (Category == 3)
    {

      return glpPrimitiveMatrixGetElementType(a1);
    }

LABEL_12:
    abort();
  }

  return glpPrimitiveVectorGetElementType(a1);
}

uint64_t glpPrimitiveTypeGetScalarCount(uint64_t a1)
{
  result = glpPrimitiveTypeGetCategory(a1);
  if (result <= 1)
  {
    if (result != 1)
    {
      abort();
    }
  }

  else if (result == 2)
  {

    return glpPrimitiveVectorGetLength(a1);
  }

  else
  {
    if (result != 3)
    {
      abort();
    }

    Columns = glpPrimitiveMatrixGetColumns(a1);
    return glpPrimitiveMatrixGetRows(a1) * Columns;
  }

  return result;
}

uint64_t glpPrimitiveTypeGetMaxComponentsPerVec4(uint64_t a1)
{
  ScalarType = glpPrimitiveTypeGetScalarType(a1);
  if (ScalarType > 0x3E)
  {
    goto LABEL_7;
  }

  if (((1 << ScalarType) & 0x1000000222) == 0)
  {
    if (ScalarType == 62)
    {
      v2 = 8;
      return 0x10 / v2;
    }

LABEL_7:
    abort();
  }

  v2 = 4;
  return 0x10 / v2;
}

uint64_t glpPrimitiveTypeGetNumVec4s(uint64_t a1)
{
  ColumnType = a1;
  Category = glpPrimitiveTypeGetCategory(a1);
  if ((Category - 1) >= 2)
  {
    if (Category != 3)
    {
      abort();
    }

    Columns = glpPrimitiveMatrixGetColumns(ColumnType);
    ColumnType = glpPrimitiveMatrixGetColumnType(ColumnType);
  }

  else
  {
    Columns = 1;
  }

  ScalarCount = glpPrimitiveTypeGetScalarCount(ColumnType);
  MaxComponentsPerVec4 = glpPrimitiveTypeGetMaxComponentsPerVec4(ColumnType);
  return Columns * ((ScalarCount + MaxComponentsPerVec4 - 1) / MaxComponentsPerVec4);
}

char *deserialErrorString(unsigned int a1)
{
  if (a1 >= 7)
  {
    abort();
  }

  return (&off_278B4E268)[a1];
}

uint64_t glpInitDeserialContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1 + 200) = a2;
  *(a1 + 208) = 4096;
  result = (*(a2 + 8))(*a2, 0x8000, "Vector Storage (void *)");
  *(a1 + 216) = result;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a3;
  *(a1 + 248) = a4;
  *(a1 + 256) = a5;
  *(a1 + 260) = 0;
  return result;
}

uint64_t glpDestroyDeserialContext(void *a1)
{
  for (i = a1[28]; i; i = a1[28])
  {
    a1[28] = *i;
    (*(a1[25] + 24))(*a1[25]);
  }

  v3 = a1[25];
  v4 = v3[3];
  v5 = *v3;
  v6 = a1[27];

  return v4(v5, v6);
}

double deserialize_double(uint64_t a1)
{
  v1 = *(a1 + 260);
  if (v1 + 8 > *(a1 + 256))
  {
    glpDeserialError(a1, 1u);
  }

  result = *(*(a1 + 248) + v1);
  *(a1 + 260) = v1 + 8;
  return result;
}

void glpDeserialError(uint64_t a1, unsigned int a2)
{
  *md = 0;
  v6 = 0;
  v7 = 0;
  CC_SHA1(*(a1 + 248), *(a1 + 256), md);
  v4 = deserialErrorString(a2);
  glpSetCrashLogMessagef("GLProgrammability: deserial error (%s) at offset %u into data of length %u with SHA1 %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", BYTE2(v6), BYTE3(v6), BYTE4(v6), BYTE5(v6), BYTE6(v6), HIBYTE(v6), v7, v4, *(a1 + 260), *(a1 + 256), md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], v6, BYTE1(v6), BYTE2(v6), BYTE3(v6), BYTE4(v6), BYTE5(v6), BYTE6(v6), HIBYTE(v6), v7, BYTE1(v7), BYTE2(v7), HIBYTE(v7));
  _longjmp(a1, a2);
}

uint64_t glpTypeGetSamplerCount(uint64_t a1)
{
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_27;
      }

      v3 = *(a1 + 4);
      if (!v3)
      {
        return 0;
      }

      v4 = 0;
      LODWORD(v5) = 0;
      v6 = 8 * v3;
      do
      {
        SamplerCount = glpTypeGetSamplerCount(*(*(a1 + 8) + v4));
        if (SamplerCount == -1)
        {
          v5 = 0xFFFFFFFFLL;
        }

        else
        {
          v5 = (SamplerCount + v5);
        }

        v4 += 8;
      }

      while (v6 != v4);
    }

    else
    {
      Category = glpPrimitiveTypeGetCategory(*(a1 + 4));
      if (Category >= 5)
      {
        goto LABEL_27;
      }

      return dword_23A301098[Category];
    }
  }

  else
  {
    if (v2 != 2 && v2 != 3)
    {
      if (v2 != 5)
      {
LABEL_27:
        abort();
      }

      return 0;
    }

    v8 = glpTypeGetSamplerCount(*(a1 + 16));
    v9 = *(a1 + 4);
    if (v8)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9 * v8;
    if (v8 == -1)
    {
      v11 = -1;
    }

    if (v9 == -1)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  return v5;
}

uint64_t glpTypeIsAtomic(_DWORD *a1)
{
  if ((*a1 - 1) < 2)
  {
    return 0;
  }

  if (*a1)
  {
    goto LABEL_10;
  }

  Category = glpPrimitiveTypeGetCategory(a1[1]);
  result = 1;
  if (Category > 2)
  {
    if (Category == 3)
    {
      return 0;
    }

    if (Category == 4)
    {
      return result;
    }

LABEL_10:
    abort();
  }

  if ((Category - 1) >= 2)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t glpGetPrimitiveType(uint64_t a1)
{
  if (glpGetPrimitiveType_glProgrammabilityHandle)
  {
    v2 = glpGetPrimitiveType_LIB_glpGetPrimitiveType;
  }

  else
  {
    glpGetPrimitiveType_glProgrammabilityHandle = dlopen("/System/Library/Frameworks/OpenGLES.framework/libGLProgrammability.dylib", 5);
    v2 = dlsym(glpGetPrimitiveType_glProgrammabilityHandle, "glpGetPrimitiveType");
    glpGetPrimitiveType_LIB_glpGetPrimitiveType = v2;
  }

  return (v2)(a1);
}

uint64_t glpStructTypeGetSizesAndAlignments(unsigned int a1, uint64_t a2, uint64_t a3, _DWORD *a4, int *a5, unsigned int *a6)
{
  glpMakeTypeSize();
  v11 = v10;
  v31 = glpABIGetMinimumStructAlignment(a1);
  v12 = *(a2 + 4);
  if (v12 >= 1)
  {
    v30 = a3;
    v13 = 0;
    v29 = a6;
    do
    {
      if (glpTypeSizeIsValid(v11))
      {
        v14 = *(*(a2 + 8) + 8 * v13);
        v15 = *(*(a2 + 16) + 8 * v13);
        v16 = glpABIGetTypeSize(a1, v14, v15 | v30);
        if (glpTypeSizeIsValid(v16))
        {
          v17 = glpABIGetTypeAlign(a1, v14, v15 | v30);
          glpTypeSizeGetSize();
          v19 = (v17 + v18 - 1) / v17 * v17;
          glpTypeSizeGetSize();
          v21 = v20;
          v22 = v31;
          if (v17 > v31)
          {
            v22 = v17;
          }

          v31 = v22;
          glpMakeTypeSize();
          v11 = v23;
          if (v29)
          {
            *a6 = v19;
            a6[1] = v21;
          }
        }

        else
        {
          v11 = glpInvalidTypeSize();
        }
      }

      ++v13;
      a6 += 2;
    }

    while (v12 != v13);
  }

  result = glpTypeSizeIsValid(v11);
  if (result)
  {
    v25 = v31;
    if (a4)
    {
      result = glpAlignTypeSize(v11, v31);
      *a4 = result;
    }

    v26 = a5;
    if (!a5)
    {
      return result;
    }

LABEL_20:
    *v26 = v25;
    return result;
  }

  if (a4)
  {
    result = glpInvalidTypeSize();
    *a4 = result;
  }

  v26 = a5;
  if (a5)
  {
    v25 = -1;
    goto LABEL_20;
  }

  return result;
}

uint64_t writeByteCode(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v6 = 0uLL;
  v8 = 0u;
  v9 = 1;
  v7 = 0uLL;
  v5 = MEMORY[0x277D82200] + 16;
  llvm::raw_ostream::SetUnbuffered(&v5);
  llvm::WriteBitcodeToFile();
  v3 = *(a2 + 8);
  llvm::raw_ostream::~raw_ostream(&v5);
  return v3;
}

void *copyBitCodeStorage(void *a1, _DWORD *a2, unint64_t a3, int a4)
{
  if (a1[1] + 8 > a3)
  {
    copyBitCodeStorage_cold_1();
  }

  v7 = llvm::SmallString<0u>::c_str(a1);
  result = memcpy(a2 + 2, v7, a1[1]);
  *a2 = *(a1 + 2) + 4;
  a2[1] = a4;
  return result;
}

uint64_t llvm::SmallString<0u>::c_str(void *a1)
{
  llvm::SmallVectorTemplateBase<char,true>::push_back(a1, 0);
  v2 = a1[1] - 1;
  if (a1[2] < v2)
  {
    llvm::SmallString<0u>::c_str();
  }

  a1[1] = v2;
  return *a1;
}

void **deleteBitCodeStorage(void **result)
{
  if (result)
  {
    v2 = result + 3;
    v1 = *result;
    if (v1 != v2)
    {
      free(v1);
    }

    JUMPOUT(0x23EE856F0);
  }

  return result;
}

uint64_t glpLLVMSetupModule(uint64_t a1)
{
  LLVMSetTarget();

  return MEMORY[0x2821F17D0](a1, "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32");
}

uint64_t glpAddNamedMetadataOperand(uint64_t a1, char *__s, uint64_t a3)
{
  if (__s)
  {
    strlen(__s);
  }

  result = llvm::Module::getOrInsertNamedMetadata();
  if (a3 && result)
  {
    if (*(a3 + 16) == 23)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v6 + 24);
    v8 = v7;
    result = llvm::isa_impl_wrap<llvm::MDNode,llvm::Metadata const*,llvm::Metadata const*>::doit(&v8, v5);
    if ((result & 1) == 0)
    {
      glpAddNamedMetadataOperand_cold_1();
    }

    if (v7)
    {
      return llvm::NamedMDNode::addOperand();
    }
  }

  return result;
}