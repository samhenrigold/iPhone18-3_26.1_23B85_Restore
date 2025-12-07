uint64_t glpVertProgram_GenerateMetadata(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v40 = a4;
  v48 = *MEMORY[0x277D85DE8];
  v41 = a1;
  v8 = *(a1 + 48);
  if (!*(v8 + 152))
  {
    a1 = LLVMInt32TypeInContext();
    *(v8 + 152) = a1;
  }

  LODWORD(v38) = a5;
  v36 = (2 * a5) | 1;
  v37 = v36 + a3;
  v9 = 8 * v37;
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v35[-v10];
  bzero(&v35[-v10], 8 * v37);
  bzero(v11, v9);
  LODWORD(v39) = a3;
  if (a3 >= 1)
  {
    v12 = 0;
    v13 = v39;
    do
    {
      v14 = gleLLVMGetArgTypeName(*(a2 + 4 * v12));
      if (*(v8 + 220))
      {
        v15 = v14;
        memset(__str, 0, sizeof(__str));
        snprintf(__str, 0x1FuLL, "attr%d", v12);
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        *&v42 = gleLLVMGetConstantInt32(v8, v12);
        *(&v42 + 1) = LLVMMDStringInContext();
        *&v43 = LLVMMDStringInContext();
        *(&v43 + 1) = LLVMConstInt();
        *&v44 = LLVMConstInt();
        *(&v44 + 1) = LLVMMDStringInContext();
        strlen(v15);
        *&v45 = LLVMMDStringInContext();
        *(&v45 + 1) = LLVMMDStringInContext();
        strlen(__str);
        v46 = LLVMMDStringInContext();
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
        *&v42 = gleLLVMGetConstantInt32(v8, v12);
        *(&v42 + 1) = LLVMMDStringInContext();
        v43 = LLVMMDStringInContext();
      }

      *&v11[8 * v12++] = LLVMMDNodeInContext();
    }

    while (v13 != v12);
  }

  v16 = *(v41 + 104);
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  gleLLVMAddCommonMetaData(v8, &v11[8 * v39], v36, v39, v17, v38);
  v38 = LLVMMDNodeInContext();
  v18 = v40;
  v19 = 8 * v40;
  MEMORY[0x28223BE20](v38, v20);
  v22 = &v35[-v21];
  bzero(&v35[-v21], v19);
  v39 = v22;
  bzero(v22, v19);
  if (v18 >= 1)
  {
    v23 = v39;
    v24 = v40;
    v25 = 8;
    do
    {
      v26 = 0;
      v27 = *(*(v41 + 136) + v25);
      v28 = (v27 >> 8) & 0x1F;
      if (v28 > 8)
      {
        switch(v28)
        {
          case 9u:
            *&v43 = 0;
            v42 = 0uLL;
            goto LABEL_30;
          case 0xAu:
            v43 = 0u;
            v44 = 0u;
            v42 = 0u;
            *&v42 = LLVMMDStringInContext();
            *(&v42 + 1) = LLVMConstInt();
            *&v43 = LLVMMDStringInContext();
            *(&v43 + 1) = LLVMConstInt();
            *&v44 = LLVMMDStringInContext();
            *(&v44 + 1) = LLVMMDStringInContext();
            goto LABEL_49;
          case 0x11u:
LABEL_22:
            memset(__str, 0, sizeof(__str));
            switch(v28)
            {
              case 0x11u:
                v32 = HIDWORD(v27);
                v30 = HIDWORD(v27) & 0x3F;
                if ((v32 & 0x38) == 8)
                {
                  if (!*(v8 + 220))
                  {
                    goto LABEL_48;
                  }

                  snprintf(__str, 0x1FuLL, "user(tex_coord%u)", v30 - 8);
                }

                break;
              case 5u:
                v31 = *(v8 + 220);
                if ((v27 & 0x100000000) != 0)
                {
                  if (v31)
                  {
                    strcpy(__str, "user(sec_back_color)");
                    LODWORD(v30) = 4;
                    goto LABEL_45;
                  }
                }

                else if (v31)
                {
                  strcpy(__str, "user(sec_front_color)");
                  LODWORD(v30) = 3;
                  goto LABEL_45;
                }

LABEL_48:
                *&v44 = 0;
                v42 = 0u;
                v43 = 0u;
                *&v42 = LLVMMDStringInContext();
                *(&v42 + 1) = LLVMMDStringInContext();
                *&v43 = LLVMConstInt();
                *(&v43 + 1) = LLVMMDStringInContext();
                *&v44 = LLVMMDStringInContext();
                goto LABEL_49;
              case 4u:
                v29 = *(v8 + 220);
                if ((v27 & 0x100000000) != 0)
                {
                  if (v29)
                  {
                    strcpy(__str, "user(back_color)");
                    LODWORD(v30) = 1;
                    goto LABEL_45;
                  }
                }

                else if (v29)
                {
                  strcpy(__str, "user(front_color)");
                  LODWORD(v30) = 2;
LABEL_45:
                  if (!__str[0])
                  {
                    snprintf(__str, 0x1FuLL, "user(slot%u)", v30);
                  }

                  v42 = 0u;
                  v43 = 0u;
                  *&v42 = LLVMMDStringInContext();
                  strlen(__str);
                  *(&v42 + 1) = LLVMMDStringInContext();
                  *&v43 = LLVMMDStringInContext();
                  *(&v43 + 1) = LLVMMDStringInContext();
                  goto LABEL_49;
                }

                goto LABEL_48;
              default:
                LODWORD(v30) = 0;
                break;
            }

            if (*(v8 + 220))
            {
              goto LABEL_45;
            }

            goto LABEL_48;
        }
      }

      else
      {
        if (v28 - 4 < 2)
        {
          goto LABEL_22;
        }

        if (v28 == 1)
        {
          *&v43 = 0;
          v42 = 0uLL;
LABEL_30:
          *&v42 = LLVMMDStringInContext();
          *(&v42 + 1) = LLVMMDStringInContext();
          *&v43 = LLVMMDStringInContext();
LABEL_49:
          v26 = LLVMMDNodeInContext();
          goto LABEL_50;
        }

        if (v28 == 3)
        {
          *&v43 = 0;
          v42 = 0uLL;
          goto LABEL_30;
        }
      }

LABEL_50:
      *v23++ = v26;
      v25 += 8;
      --v24;
    }

    while (v24);
  }

  v33 = LLVMMDNodeInContext();
  return gleLLVMCreateFunctionMetadata(v8, "air.vertex", v38, v33);
}

double glp_strtod(char *a1, char **a2)
{
  v2 = 0;
  v3 = *a1;
  if (v3 != 43)
  {
    if (v3 != 45)
    {
      goto LABEL_5;
    }

    v2 = 1;
  }

  v4 = *++a1;
  v3 = v4;
LABEL_5:
  v5 = 0;
  result = 0.0;
  if (v3 <= 100)
  {
    if (v3 && v3 != 46 && v3 != 69)
    {
      goto LABEL_47;
    }

LABEL_17:
    v9 = a1;
    goto LABEL_18;
  }

  switch(v3)
  {
    case 'e':
      goto LABEL_17;
    case 'i':
      v37 = a1[1];
      v36 = a1 + 1;
      if (v37 == 110)
      {
        v9 = v36 + 1;
      }

      else
      {
        v9 = v36;
      }

      v10 = INFINITY;
      goto LABEL_57;
    case 'n':
      v8 = a1[1];
      v7 = a1 + 1;
      if (v8 == 97)
      {
        v9 = v7 + 1;
      }

      else
      {
        v9 = v7;
      }

      v10 = NAN;
LABEL_57:
      result = v10;
      goto LABEL_58;
  }

LABEL_47:
  v9 = a1 - 1;
  do
  {
    v32 = *++v9;
    v3 = v32;
  }

  while ((v32 - 48) < 0xA);
  v33 = v9 - 1;
  if (v9 - 1 >= a1)
  {
    result = 0.0;
    v34 = 1.0;
    do
    {
      v35 = *v33--;
      result = result + (v35 - 48) * v34;
      v34 = v34 * 10.0;
    }

    while (v33 >= a1);
  }

  v5 = 1;
LABEL_18:
  if (v3 == 46)
  {
    v11 = 0;
    do
    {
      v3 = v9[++v11];
    }

    while ((v3 - 48) < 0xA);
    v12 = &v9[v11];
    v13 = 0.0;
    if (v11 >= 2)
    {
      v14 = v11 - 1;
      do
      {
        v13 = (v9[v14] - 48) + v13 * 0.1;
        v15 = v14-- + 1;
      }

      while (v15 > 2);
      v13 = v13 * 0.1;
    }

    result = result + v13;
    v5 = 1;
    v9 = v12;
  }

  if (!v5 || (v3 & 0xFFFFFFDF) != 0x45)
  {
LABEL_58:
    if (!a2)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v16 = v9 + 2;
  v19 = v9[1];
  v17 = v9 + 1;
  v18 = v19;
  if (v19 == 43)
  {
    v17 = v16;
  }

  v20 = v18 == 45;
  if (v18 == 45)
  {
    v21 = v16;
  }

  else
  {
    v21 = v17;
  }

  v22 = v20;
  v9 = (v21 - 1);
  do
  {
    v23 = *++v9;
  }

  while ((v23 - 48) < 0xA);
  v24 = v9 - 1;
  v25 = 0.0;
  if ((v9 - 1) >= v21)
  {
    v26 = 1.0;
    do
    {
      v27 = *v24--;
      v25 = v25 + (v27 - 48) * v26;
      v26 = v26 * 10.0;
    }

    while (v24 >= v21);
  }

  if (v22)
  {
    v25 = -v25;
  }

  v28 = v25;
  v29 = 1.0;
  if (v28 < 1)
  {
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    if (v28 > 0xFFFFFFDF)
    {
      v38 = v28;
    }

    else
    {
      do
      {
        v29 = v29 * 1.0e-32;
        v38 = v28 + 32;
        v39 = __CFADD__(v28, 64);
        v28 += 32;
      }

      while (!v39);
    }

    v40 = ~v38;
    v41 = &pow_10_down;
  }

  else
  {
    if (v28 < 0x21)
    {
      v30 = v28;
    }

    else
    {
      do
      {
        v29 = v29 * 1.0e32;
        v30 = v28 - 32;
        v31 = v28 > 0x40;
        v28 -= 32;
      }

      while (v31);
    }

    v40 = v30 - 1;
    v41 = &pow_10_up;
  }

  v29 = v29 * v41[v40];
LABEL_71:
  result = result * v29;
  if (a2)
  {
LABEL_59:
    *a2 = v9;
  }

LABEL_60:
  if (v2)
  {
    return -result;
  }

  return result;
}

uint64_t glpStringHashPut(uint64_t a1, const char *a2, size_t __n, double a4, uint64_t a5)
{
  LODWORD(a4) = *(a1 + 36);
  v9 = *(a1 + 32);
  if (*&a4 / v9 > 0.65)
  {
    v10 = 0;
    do
    {
      v11 = HT_PRIMES[v10++];
    }

    while (v11 <= v9);
    _glpStringHashRehash(a1, v11);
  }

  return _glpStringHashRealPut(a1, a2, __n, a5);
}

uint64_t _glpStringHashRehash(uint64_t *a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  v4 = a1[5];
  *(a1 + 8) = a2;
  *(a1 + 9) = 0;
  v5 = 32 * a2;
  v6 = (a1[1])(*a1, v5, "Hash Storage (String, growth)");
  a1[5] = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 16);
    do
    {
      v8 = *(v7 - 2);
      if (v8)
      {
        _glpStringHashRealPut(a1, *(v7 - 1), *v7, v8);
      }

      v7 += 4;
      --v3;
    }

    while (v3);
  }

  v9 = a1[3];
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpStringHashRealPut(uint64_t result, const char *a2, size_t __n, uint64_t a4)
{
  v7 = result;
  v8 = (HIDWORD(__n) % *(result + 32));
  for (i = *(result + 40); ; i = *(v7 + 40))
  {
    v10 = i + 32 * v8;
    if (!*v10)
    {
      break;
    }

    result = glpStringsEqual(a2, __n, *(v10 + 8), *(v10 + 16));
    if (result)
    {
      --*(v7 + 36);
      i = *(v7 + 40);
      break;
    }

    v8 = (v8 + 1) % *(v7 + 32);
  }

  v11 = i + 32 * v8;
  *(v11 + 8) = a2;
  *(v11 + 16) = __n;
  *(*(v7 + 40) + 32 * v8) = a4;
  ++*(v7 + 36);
  return result;
}

uint64_t glpStringHashGet(uint64_t a1, const char *a2, size_t __n)
{
  v3 = (HIDWORD(__n) % *(a1 + 32));
  v4 = *(a1 + 40) + 32 * v3;
  if (!*v4)
  {
    return 0;
  }

  while (!glpStringsEqual(a2, __n, *(v4 + 8), *(v4 + 16)))
  {
    v3 = (v3 + 1) % *(a1 + 32);
    v4 = *(a1 + 40) + 32 * v3;
    if (!*v4)
    {
      return 0;
    }
  }

  return *(*(a1 + 40) + 32 * v3);
}

uint64_t glpMakePointerHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (Pointer)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES[0];
  *(v2 + 32) = HT_PRIMES[0];
  v5 = (a1[1])(*a1, 24 * v4, "Hash Storage (Pointer)");
  *(v2 + 40) = v5;
  bzero(v5, 24 * HT_PRIMES[0]);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t *glpDestroyPointerHash(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 48))
    {
      (result[3])(*result, result[5]);
      v2 = v1[3];
      v3 = *v1;

      return v2(v3, v1);
    }
  }

  return result;
}

uint64_t glpPointerHashPut(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  LODWORD(a4) = *(a1 + 36);
  v7 = *(a1 + 32);
  if (*&a4 / v7 > 0.65)
  {
    v8 = 0;
    do
    {
      v9 = HT_PRIMES[v8++];
    }

    while (v9 <= v7);
    _glpPointerHashRehash(a1, v9);
  }

  return _glpPointerHashRealPut(a1, a2, a3);
}

uint64_t _glpPointerHashRehash(uint64_t *a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  v4 = a1[5];
  *(a1 + 8) = a2;
  *(a1 + 9) = 0;
  v5 = 24 * a2;
  v6 = (a1[1])(*a1, v5, "Hash Storage (Pointer, growth)");
  a1[5] = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 8);
    do
    {
      v8 = *(v7 - 1);
      if (v8)
      {
        _glpPointerHashRealPut(a1, *v7, v8);
      }

      v7 += 3;
      --v3;
    }

    while (v3);
  }

  v9 = a1[3];
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpPointerHashRealPut(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  v5 = (a2 >> 4) % v3;
  v6 = (v4 + 24 * v5);
  if (*v6)
  {
    if (v6[1] == a2)
    {
LABEL_8:
      --*(result + 36);
    }

    else
    {
      while (1)
      {
        if (v5 + 1 == v3)
        {
          v5 = 0;
        }

        else
        {
          ++v5;
        }

        v6 = (v4 + 24 * v5);
        if (!*v6)
        {
          break;
        }

        if (v6[1] == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  *(v4 + 24 * v5 + 8) = a2;
  *v6 = a3;
  ++*(result + 36);
  return result;
}

uint64_t glpPointerHashGet(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = (a2 >> 4) % v2;
  for (result = *(v3 + 24 * v4); result && *(v3 + 24 * v4 + 8) != a2; result = *(v3 + 24 * v4))
  {
    if (v4 + 1 == v2)
    {
      v4 = 0;
    }

    else
    {
      ++v4;
    }
  }

  return result;
}

uint64_t glpMakeDataHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (Data)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES[0];
  *(v2 + 32) = HT_PRIMES[0];
  v5 = (a1[1])(*a1, 32 * v4, "Hash Storage (Data)");
  *(v2 + 40) = v5;
  bzero(v5, 32 * HT_PRIMES[0]);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t glpAlignTypeSize(uint64_t result, unsigned int a2)
{
  if (result != -1)
  {
    return (result + a2 - 1) / a2 * a2;
  }

  return result;
}

uint64_t glpABIGetMinimumBufferBytesForType(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = &ABIs + 6 * a1;
  v4 = (*v3)(a2, a3);
  return ((v3[4])(v4) + 15) & 0xFFFFFFF0;
}

uint64_t applevec4TypeSize(unsigned int *a1, uint64_t a2)
{
  Kind = glpTypeGetKind(a1);
  if (Kind <= 1)
  {
    if (Kind)
    {
      if (Kind == 1)
      {
        v14 = 0;
        glpStructTypeGetSizesAndAlignments(0, a1, a2, &v14, 0, 0);
        return v14;
      }
    }

    else
    {
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);
      Category = glpPrimitiveTypeGetCategory(PrimitiveType);
      if (Category > 2)
      {
        if (Category == 3)
        {
          Columns = glpPrimitiveMatrixGetColumns(PrimitiveType);
          ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
          return glpPrimitiveTypeGetNumVec4s(ColumnType) * Columns;
        }

        if (Category == 4)
        {
          return 1;
        }
      }

      else if ((Category - 1) < 2)
      {

        return glpPrimitiveTypeGetNumVec4s(PrimitiveType);
      }
    }

    abort();
  }

  if (Kind != 2)
  {
    if (Kind != 5)
    {
      abort();
    }

    return 1;
  }

  result = glpArrayTypeGetElementCount(a1);
  if (result != -1)
  {
    ElementType = glpArrayTypeGetElementType(a1);
    v9 = applevec4TypeSize(ElementType, a2);
    ElementCount = glpArrayTypeGetElementCount(a1);
    if (ElementCount == -1 || v9 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return (ElementCount * v9);
    }
  }

  return result;
}

uint64_t applevec4MatrixStride(uint64_t a1)
{
  ColumnType = glpPrimitiveMatrixGetColumnType(a1);

  return glpPrimitiveTypeGetNumVec4s(ColumnType);
}

uint64_t std140TypeSize(unsigned int *a1, uint64_t a2)
{
  Kind = glpTypeGetKind(a1);
  if (Kind == 2)
  {
    result = glpArrayTypeGetElementCount(a1);
    if (result != -1)
    {
      ElementType = glpArrayTypeGetElementType(a1);
      v8 = std140TypeSize(ElementType, a2);
      if (v8 == -1)
      {
        v9 = -1;
      }

      else
      {
        v9 = (v8 + 15) & 0xFFFFFFF0;
      }

      ElementCount = glpArrayTypeGetElementCount(a1);
      if (ElementCount == -1 || v8 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v9 * ElementCount;
      }
    }
  }

  else if (Kind == 1)
  {
    v12 = 0;
    glpStructTypeGetSizesAndAlignments(1u, a1, a2, &v12, 0, 0);
    return v12;
  }

  else
  {
    if (Kind)
    {
      abort();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);

    return std140PrimitiveTypeSize(PrimitiveType, a2);
  }

  return result;
}

uint64_t std140TypeAlign(unsigned int *a1, uint64_t a2)
{
  Kind = glpTypeGetKind(a1);
  if (Kind == 2)
  {
    ElementType = glpArrayTypeGetElementType(a1);
    return (std140TypeAlign(ElementType, a2) + 15) & 0xFFFFFFF0;
  }

  else if (Kind == 1)
  {
    v8 = 0;
    glpStructTypeGetSizesAndAlignments(1u, a1, a2, 0, &v8, 0);
    return v8;
  }

  else
  {
    if (Kind)
    {
      abort();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);

    return std140PrimitiveTypeAlign(PrimitiveType);
  }
}

uint64_t std140MatrixStride(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x400) != 0)
  {
    RowType = glpPrimitiveMatrixGetRowType(a1);
  }

  else
  {
    RowType = glpPrimitiveMatrixGetColumnType(a1);
  }

  return (std140PrimitiveTypeAlign(RowType) + 15) & 0xFFFFFFF0;
}

uint64_t std140PrimitiveTypeSize(uint64_t a1, uint64_t a2)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category <= 2)
  {
    if (Category == 1)
    {
      if (a1 == 62)
      {
        return 8;
      }

      else
      {
        return 4;
      }
    }

    if (Category == 2)
    {
      Length = glpPrimitiveVectorGetLength(a1);
      ElementType = glpPrimitiveVectorGetElementType(a1);
      v7 = std140PrimitiveTypeSize(ElementType, a2);
      if (v7 == -1 || Length == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return (v7 * Length);
      }
    }

LABEL_20:
    abort();
  }

  if (Category != 3)
  {
    if (Category == 4)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_20;
  }

  if ((a2 & 0x400) != 0)
  {
    Rows = glpPrimitiveMatrixGetRows(a1);
  }

  else
  {
    Rows = glpPrimitiveMatrixGetColumns(a1);
  }

  return std140MatrixStride(a1, a2) * Rows;
}

uint64_t std140PrimitiveTypeAlign(uint64_t a1)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category > 2)
  {
    if (Category == 3)
    {
      ColumnType = glpPrimitiveMatrixGetColumnType(a1);
      return (std140PrimitiveTypeAlign(ColumnType) + 15) & 0xFFFFFFF0;
    }

    if (Category == 4)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (Category == 1)
  {
    if (a1 == 62)
    {
      return 8;
    }

    else
    {
      return 4;
    }
  }

  if (Category != 2)
  {
LABEL_15:
    abort();
  }

  Length = glpPrimitiveVectorGetLength(a1);
  ElementType = glpPrimitiveVectorGetElementType(a1);
  v5 = std140PrimitiveTypeAlign(ElementType);
  if (Length == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  return (v5 << v6);
}

void *glpMallocAlloc(int a1, size_t size)
{
  result = malloc_type_malloc(size, 0x75808E6AuLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void *glpMallocRealloc(int a1, void *ptr, size_t size)
{
  result = malloc_type_realloc(ptr, size, 0x7A98113FuLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void *glpInitPoolAllocator(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = malloc_type_malloc(0x20uLL, 0x75808E6AuLL);
  if (!v6)
  {
    abort();
  }

  v7 = v6;
  v8 = sysconf(29);
  *v7 = (a2 + v8 - 1) / v8 * v8;
  v9 = sysconf(29);
  result = makePoolNode((a1 + v9 - 1) / v9 * v9, 0);
  v7[1] = result;
  *(v7 + 24) = 0;
  *a3 = v7;
  a3[1] = poolAlloc;
  a3[2] = poolRealloc;
  a3[3] = poolFree;
  return result;
}

void *makePoolNode(size_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x75808E6AuLL);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  v6 = mmap(0, a1, 3, 4098, 1107296256, 0);
  *v5 = v6;
  v5[1] = v6;
  v5[2] = a1;
  v5[3] = a1;
  v5[4] = a2;
  return v5;
}

size_t poolAlloc(size_t *a1, uint64_t a2)
{
  v3 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = *a1;
  if (v3 > v4)
  {
    v5 = sysconf(29);
    v4 = (v3 + v5 - 1) / v5 * v5;
    PoolNode = a1[1];
LABEL_4:
    PoolNode = makePoolNode(v4, PoolNode);
    a1[1] = PoolNode;
    goto LABEL_5;
  }

  PoolNode = a1[1];
  if (PoolNode[3] < v3)
  {
    goto LABEL_4;
  }

LABEL_5:
  result = PoolNode[1];
  a1[2] = result;
  PoolNode[1] = result + v3;
  PoolNode[3] -= v3;
  return result;
}

uint64_t poolFree(uint64_t result, uint64_t a2)
{
  if (*(result + 24))
  {
    if (*(result + 16) == a2)
    {
      v2 = *(result + 8);
      *(v2 + 24) += *(v2 + 8) - a2;
      *(v2 + 8) = a2;
    }
  }

  return result;
}

void *glpInitTempPoolAllocator(uint64_t a1, uint64_t a2, void *a3)
{
  result = glpInitPoolAllocator(a1, a2, a3);
  *(*a3 + 24) = 1;
  return result;
}

void glpDestroyPoolAllocator(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 32);
      munmap(*v2, *(v2 + 16));
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(v1);
}

void glpLLVMCGTopLevel(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  if ((a1[104] & 4) != 0)
  {
    glpInitTempPoolAllocator(0x4000, 0x4000, a1 + 45);
    a1[49] = glpMakeDataHash(a1 + 45);
  }

  v4 = LLVMModuleCreateWithNameInContext();
  a1[1] = v4;
  glpLLVMSetupModule(v4);
  a1[4] = LLVMInt64TypeInContext();
  a1[5] = LLVMInt32TypeInContext();
  a1[6] = LLVMInt16TypeInContext();
  a1[7] = LLVMInt8TypeInContext();
  a1[8] = LLVMInt1TypeInContext();
  a1[9] = LLVMFloatTypeInContext();
  a1[10] = LLVMHalfTypeInContext();
  a1[11] = LLVMVoidTypeInContext();
  a1[12] = LLVMDoubleTypeInContext();
  if (*(a1 + 197))
  {
    glpLLVMDIBuilderCreate(a1[1]);
  }

  v5 = *(a1 + 29);
  if (v5 > 0x10)
  {
    if (v5 > 0x20)
    {
      v6 = 0;
    }

    else
    {
      v6 = a1[5];
    }
  }

  else
  {
    v6 = LLVMInt16TypeInContext();
  }

  a1[57] = v6;
  v7 = *(a1 + 30);
  if (v7 > 0x10)
  {
    if (v7 > 0x20)
    {
      v8 = 0;
    }

    else
    {
      v8 = a1[5];
    }
  }

  else
  {
    v8 = LLVMInt16TypeInContext();
  }

  a1[58] = v8;
  v9 = *(a1 + 31);
  if (v9 > 0x10)
  {
    if (v9 > 0x20)
    {
      v10 = 0;
    }

    else
    {
      v10 = a1[5];
    }
  }

  else
  {
    v10 = LLVMInt16TypeInContext();
  }

  a1[59] = v10;
  a1[60] = glpLLVMGetFloatTypeFromBits(a1, *(a1 + 26));
  a1[61] = glpLLVMGetFloatTypeFromBits(a1, *(a1 + 27));
  a1[62] = glpLLVMGetFloatTypeFromBits(a1, *(a1 + 28));
  if (*(a1 + 80) != 3)
  {
LABEL_33:
    glpLLVMBuildSubroutinesTypeClasses(a1, a2);
    if (glpTopLevelNodeGetDefCount(a2))
    {
      v14 = 0;
      do
      {
        Def = glpTopLevelNodeGetDef(a2, v14);
        if (*(a1 + 417))
        {
          glpLLVMCleanUpASTObjects(a1, Def);
        }

        glpLLVMCGFindSamplersAndBuffers(a1, Def);
        ++v14;
      }

      while (v14 < glpTopLevelNodeGetDefCount(a2));
    }

    if (glpTopLevelNodeGetDefCount(a2))
    {
      v17 = 0;
      do
      {
        v18 = glpTopLevelNodeGetDef(a2, v17);
        glpLLVMCGNode(a1, v18, 0);
        ++v17;
      }

      while (v17 < glpTopLevelNodeGetDefCount(a2));
    }

    v19 = *(a1 + 80);
    if (v19 <= 1)
    {
      if (!v19)
      {
        if (!*(a1 + 417))
        {
          glpLLVMCreateAttributeDescription(a1);
        }

        glpLLVMVertexMetaData(a1, "air.vertex");
LABEL_58:
        if (*(a1 + 417))
        {
          goto LABEL_67;
        }

        v27 = *(a1 + 206);
        if (v27)
        {
          v28 = a1[63];
          v29 = malloc_type_malloc(4 * v27 + 4, 0x75808E6AuLL);
          if (!v29)
          {
            goto LABEL_78;
          }

          *v29 = v27;
          v30 = v29 + 1;
          do
          {
            v31 = *v28++;
            *v30++ = v31;
            --v27;
          }

          while (v27);
        }

        v32 = *(a1 + 207);
        if (!v32)
        {
          goto LABEL_67;
        }

        v33 = a1[64];
        v34 = malloc_type_malloc(4 * v32 + 4, 0x75808E6AuLL);
        if (v34)
        {
          *v34 = v32;
          v35 = v34 + 1;
          do
          {
            v36 = *v33++;
            *v35++ = v36;
            --v32;
          }

          while (v32);
LABEL_67:
          v37 = a1[3];
          if (v37)
          {
            glpLLVMDIBuilderDelete(v37);
          }

          if (a1[104])
          {
            v45 = 0uLL;
            *&v44 = LLVMMDStringInContext();
            v38 = a1[66];
            if (!v38)
            {
              v38 = LLVMConstInt();
              a1[66] = v38;
            }

            *(&v44 + 1) = v38;
            v39 = a1[65];
            if (v39)
            {
              *&v45 = a1[65];
            }

            else
            {
              v39 = LLVMConstInt();
              a1[65] = v39;
              *&v45 = v39;
              if (!v39)
              {
                v39 = LLVMConstInt();
                a1[65] = v39;
              }
            }

            *(&v45 + 1) = v39;
            v40 = LLVMMDNodeInContext();
            glpAddNamedMetadataOperand(a1[1], "air.language_version", v40);
          }

          *&v44 = LLVMMDStringInContext();
          v41 = LLVMMDNodeInContext();
          glpAddNamedMetadataOperand(a1[1], "air.compile_options", v41);
          *&v44 = LLVMMDStringInContext();
          v42 = LLVMMDNodeInContext();
          glpAddNamedMetadataOperand(a1[1], "air.compile_options", v42);
          *&v44 = LLVMMDStringInContext();
          v43 = LLVMMDNodeInContext();
          glpAddNamedMetadataOperand(a1[1], "air.compile_options", v43);
          createBitCodeStorage();
        }

LABEL_78:
        abort();
      }

      if (v19 != 1)
      {
        goto LABEL_58;
      }

      *&v44 = a1[21];
      v20 = LLVMMDNodeInContext();
      v21 = a1[24];
      *(&v44 + 1) = v20;
      *&v45 = v21;
      v22 = LLVMMDNodeInContext();
      v23 = a1[1];
      v24 = "air.tess_control";
    }

    else
    {
      if (v19 == 2)
      {
        glpLLVMVertexMetaData(a1, "air.tess_evaluation");
        goto LABEL_58;
      }

      if (v19 != 3)
      {
        if (v19 == 4)
        {
          if ((a1[104] & 1) != 0 && !*(a1 + 417))
          {
            glpLLVMCreateAttributeDescription(a1);
          }

          glpLLVMFragmentMetaData(a1, v16);
        }

        goto LABEL_58;
      }

      *&v44 = a1[21];
      v25 = LLVMMDNodeInContext();
      v26 = a1[24];
      *(&v44 + 1) = v25;
      *&v45 = v26;
      v22 = LLVMMDNodeInContext();
      v23 = a1[1];
      v24 = "air.geometry";
    }

    glpAddNamedMetadataOperand(v23, v24, v22);
    goto LABEL_58;
  }

  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  glpLinkedProgramGetOverrides(a1[17], &v44);
  if (SHIDWORD(v44) > 3)
  {
    if (HIDWORD(v44) != 4)
    {
      if (HIDWORD(v44) == 10)
      {
        v11 = 4;
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v11 = 3;
  }

  else
  {
    if (HIDWORD(v44))
    {
      if (HIDWORD(v44) == 1)
      {
        v11 = 2;
        goto LABEL_31;
      }

LABEL_28:
      v11 = 6;
      goto LABEL_31;
    }

    v11 = 1;
  }

LABEL_31:
  *(a1 + 198) = v11;
  GlobalTypeQualifier = glpTopLevelNodeGetGlobalTypeQualifier(a2, 0x20000000);
  if (GlobalTypeQualifier)
  {
    Layout = glpGlobalTypeQualifierNodeGetLayout(GlobalTypeQualifier);
    glpLayoutObjectGetGeomInOut(Layout, a1 + 198, 0, 0, 0, 0);
  }

  goto LABEL_33;
}

uint64_t glpLLVMGetFloatTypeFromBits(void *a1, unsigned int a2)
{
  if (a2 <= 0x10)
  {
    return LLVMHalfTypeInContext();
  }

  if (a2 > 0x20)
  {
    return 0;
  }

  return LLVMFloatTypeInContext();
}

void glpLLVMBuildSubroutinesTypeClasses(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v64 = a1;
  v66 = *MEMORY[0x277D85DE8];
  if (glpTopLevelNodeGetDefCount(a2))
  {
    v3 = 0;
    PointerHash = 0;
    v63 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v61 = v2;
    do
    {
      Def = glpTopLevelNodeGetDef(v2, v7);
      if (Def)
      {
        v9 = Def;
        if (glpASTNodeGetKind(Def) == 51)
        {
          Prototype = glpFunctionDefinitionNodeGetPrototype(v9);
          Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
          if ((*(Extra + 10) & 0x10) != 0)
          {
            v12 = Extra;
            if (!PointerHash)
            {
              PointerHash = glpMakePointerHash(*(v64 + 152));
              v6 = (*(*(v64 + 152) + 8))(**(v64 + 152), 32, "Vector Storage (unsigned)");
              v5 = 0;
              v63 = 8;
            }

            v13 = *(v12 + 96);
            if (v13 == 1)
            {
              v14 = **(v12 + 104);
              if (!glpPointerHashGet(PointerHash, v14))
              {
                v62 = v3;
                v16 = (v3 + 1);
                glpPointerHashPut(PointerHash, v14, v16, v15);
                v17 = v5;
                v5 = (v5 + 1);
                if (v5 <= v63)
                {
                  v25 = v17;
                }

                else
                {
                  if (v63 <= 1)
                  {
                    v18 = 1;
                  }

                  else
                  {
                    v18 = v63;
                  }

                  v19 = 2 * v18;
                  if (v19 <= v5)
                  {
                    v20 = v5;
                  }

                  else
                  {
                    v20 = v19;
                  }

                  v21 = *(v64 + 152);
                  v22 = *v21;
                  v23 = v21[1];
                  v63 = v20;
                  v24 = v23(v22, 4 * v20, "Vector Storage (unsigned, growth)");
                  v25 = v17;
                  memcpy(v24, v6, 4 * v17);
                  (v21[3])(*v21, v6);
                  v6 = v24;
                }

                v6[v25] = v62;
                v3 = v16;
              }
            }

            else
            {
              if (v13 < 1)
              {
                goto LABEL_38;
              }

              v26 = v5;
              v27 = 0;
              v62 = v3;
              v28 = v3;
              do
              {
                v29 = glpPointerHashGet(PointerHash, *(*(v12 + 104) + v27));
                if (v29 && v6[v29 - 1] < v28)
                {
                  v28 = v6[v29 - 1];
                }

                v27 += 8;
              }

              while (8 * v13 != v27);
              v30 = 0;
              v65 = v26;
              do
              {
                v31 = v6;
                v32 = *(*(v12 + 104) + 8 * v30);
                v33 = glpPointerHashGet(PointerHash, v32);
                if (v33)
                {
                  v6 = v31;
                  v35 = v31[v33 - 1];
                  if (v35 != v28 && v26 != 0)
                  {
                    v37 = v65;
                    v38 = v31;
                    do
                    {
                      if (*v38 == v35)
                      {
                        *v38 = v28;
                      }

                      ++v38;
                      --v37;
                    }

                    while (v37);
                  }
                }

                else
                {
                  glpPointerHashPut(PointerHash, v32, v28 + 1, v34);
                  v6 = v31;
                }

                ++v30;
              }

              while (v30 != v13);
              v2 = v61;
              v3 = v62;
              v5 = v26;
              if (v28 == v62)
              {
LABEL_38:
                v39 = v5 + 1;
                if (v5 + 1 <= v63)
                {
                  v5 = v5;
                }

                else
                {
                  if (v63 <= 1)
                  {
                    v40 = 1;
                  }

                  else
                  {
                    v40 = v63;
                  }

                  v41 = 2 * v40;
                  v42 = v6;
                  v43 = v3;
                  if (v41 <= v39)
                  {
                    v3 = v39;
                  }

                  else
                  {
                    v3 = v41;
                  }

                  v44 = *(v64 + 152);
                  v45 = (v44[1])(*v44, 4 * v3, "Vector Storage (unsigned, growth)");
                  v5 = v5;
                  memcpy(v45, v42, 4 * v5);
                  (v44[3])(*v44, v42);
                  v63 = v3;
                  LODWORD(v3) = v43;
                  v6 = v45;
                }

                v6[v5] = v3;
                v3 = (v3 + 1);
                v5 = (v5 + 1);
              }
            }
          }
        }
      }

      ++v7;
    }

    while (v7 < glpTopLevelNodeGetDefCount(v2));
    if (PointerHash)
    {
      v46 = glpMakePointerHash(*(v64 + 152));
      v65 = &v61;
      *(v64 + 400) = v46;
      MEMORY[0x28223BE20](v46, v47);
      v49 = &v61 - v48;
      bzero(&v61 - v48, 8 * v3);
      bzero(v49, 8 * v3);
      v51 = *(PointerHash + 32);
      if (v51)
      {
        v52 = 0;
        v53 = 0;
        v54 = v64;
        do
        {
          v55 = *(PointerHash + 40);
          v56 = *(v55 + v52);
          if (v56)
          {
            v57 = *(v55 + v52 + 8);
            v58 = v6;
            v59 = v6[(v56 - 1)];
            v60 = *&v49[8 * v59];
            if (!v60)
            {
              v60 = (*(*(v54 + 152) + 8))(**(v54 + 152), 16, "functionParameters");
              *v60 = glpMakePointerHash(*(v54 + 152));
              *(v60 + 8) = 0;
              *&v49[8 * v59] = v60;
            }

            glpPointerHashPut(*(v64 + 400), v57, v60, v50);
            v51 = *(PointerHash + 32);
            v6 = v58;
          }

          ++v53;
          v52 += 24;
        }

        while (v53 < v51);
      }
    }
  }
}

void *glpLLVMCleanUpASTObjects(void *result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  result = glpASTNodeGetKind(a2);
  if (result <= 50)
  {
    if (result == 44)
    {
      Extra = glpParameterDeclarationNodeGetExtra(a2);
      (*(v3[19] + 24))(*v3[19], *(Extra + 144));
      *(Extra + 144) = 0;
    }

    else if (result != 46)
    {
LABEL_9:
      result = glpASTNodeGetChildCount(a2);
      if (result)
      {
        v4 = result;
        for (i = 0; i != v4; ++i)
        {
          Child = glpASTNodeGetChild(a2, i);
          result = glpLLVMCleanUpASTObjects(v3, Child);
        }
      }

      return result;
    }

    result = glpVariableDeclarationNodeGetExtra(a2);
    v13 = result;
    v14 = result[6];
    if ((v14 & 0x100000000) != 0)
    {
      if ((v14 & 0x400000000) != 0)
      {
        *(result[11] + 24) = 0;
      }
    }

    else
    {
      result = (*(v3[19] + 24))(*v3[19], result[18]);
      v13[18] = 0;
    }
  }

  else
  {
    switch(result)
    {
      case '3':
        Body = glpFunctionDefinitionNodeGetBody(a2);

        return glpLLVMCleanUpFunctionVariableObjects(v3, Body);
      case '9':
        v8 = glpInterfaceBlockNodeGetExtra(a2);
        result = glpInterfaceBlockObjectGetVariableObjectCount(v8);
        if (result)
        {
          v9 = 0;
          v10 = 8 * result;
          do
          {
            v11 = *(*(v8 + 72) + v9);
            if ((*(v11 + 52) & 8) != 0)
            {
              *(*(v11 + 88) + 24) = 0;
            }

            else
            {
              result = (*(v3[19] + 24))(*v3[19], *(v11 + 144));
              *(v11 + 144) = 0;
            }

            v9 += 8;
          }

          while (v10 != v9);
        }

        break;
      case 'U':
        return result;
      default:
        goto LABEL_9;
    }
  }

  return result;
}

uint64_t glpLLVMCGFindSamplersAndBuffers(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  Kind = glpASTNodeGetKind(a2);
  if (Kind > 56)
  {
    if (Kind == 57)
    {
      Extra = glpInterfaceBlockNodeGetExtra(a2);
      result = glpInterfaceBlockObjectGetVariableObjectCount(Extra);
      if (result)
      {
        v25 = 0;
        v26 = 8 * result;
        do
        {
          v27 = *(*(Extra + 72) + v25);
          if ((*(v27 + 52) & 8) != 0)
          {
            result = glpLLVMCGDeclareUniformBufferObject(v3, *(v27 + 88));
          }

          v25 += 8;
        }

        while (v26 != v25);
      }
    }

    else
    {
      if (Kind != 85)
      {
LABEL_17:
        result = glpASTNodeGetChildCount(a2);
        if (result)
        {
          v19 = result;
          for (i = 0; i != v19; ++i)
          {
            Child = glpASTNodeGetChild(a2, i);
            result = glpLLVMCGFindSamplersAndBuffers(v3, Child);
          }
        }

        return result;
      }

      v9 = glpSubroutineUniformNodeGetExtra(a2);
      v10 = *(v9 + 16);
      v11 = (*(*(v3 + 19) + 8))(**(v3 + 19), 24, "subroutines");
      v11[1] = 0;
      v11[2] = 0;
      *v11 = 0;
      *v11 = v10;
      *(v11 + 4) = *(v9 + 40);
      v12 = v3[153];
      *(v9 + 24) = v12;
      v13 = v3[152];
      if (v12 + 1 <= v13)
      {
        v17 = *(v3 + 77);
        v18 = v12;
      }

      else
      {
        if (v13 <= 1)
        {
          v13 = 1;
        }

        v14 = 2 * v13;
        if (v14 <= v12 + 1)
        {
          v15 = v12 + 1;
        }

        else
        {
          v15 = v14;
        }

        v16 = *(v3 + 19);
        v17 = (v16[1])(*v16, 8 * v15, "Vector Storage (GLPLLVMSubroutine *, growth)");
        memcpy(v17, *(v3 + 77), 8 * v3[153]);
        (v16[3])(*v16, *(v3 + 77));
        v3[152] = v15;
        *(v3 + 77) = v17;
        v18 = v3[153];
      }

      result = memmove(&v17[8 * v12 + 8], &v17[8 * v12], 8 * (v18 - v12));
      *(*(v3 + 77) + 8 * v12) = v11;
      ++v3[153];
    }
  }

  else
  {
    if (Kind != 46)
    {
      if (Kind == 51)
      {
        Prototype = glpFunctionDefinitionNodeGetPrototype(a2);
        v6 = glpFunctionPrototypeNodeGetExtra(Prototype);
        Name = glpFunctionPrototypeNodeGetName(Prototype);
        result = glpStringsEqual(Name, v8, "main", 0x83863A00000004);
        if (!*(v3 + 417))
        {
          if (result)
          {
            result = (*(*(v3 + 19) + 8))(**(v3 + 19), 16, "functionParameters");
            *result = 0;
            *(result + 8) = 15;
            *(v6 + 152) = result;
          }

          else
          {
            Body = glpFunctionDefinitionNodeGetBody(a2);
            v46 = glpLLVMAllocateFunctionParameters(v3, 0);
            result = glpLLVMGetFunctionGlobalVariableUse(v3, Body, *v46, (v46 + 8));
            *(v6 + 152) = v46;
          }
        }

        return result;
      }

      goto LABEL_17;
    }

    result = glpVariableDeclarationNodeGetExtra(a2);
    v22 = result;
    v23 = *(result + 48);
    if ((v23 & 0x100000000) != 0)
    {
      result = glpTypeGetSamplerCount(*result);
      if (result)
      {
        v47 = v22;
        if (result >= 1)
        {
          v28 = 0;
          v29 = v3[149];
          v30 = *(*(v22 + 18) + 8);
          v31 = 16 * result;
          do
          {
            v32 = (*(v30 + 8) + v28);
            v32[1] = v29;
            v48 = 0u;
            v49 = 0u;
            DWORD1(v49) = v32[3];
            glpLLVMGetTextureTypeFromSampler(v3, &v48, DWORD1(v49));
            *(&v48 + 1) = v33;
            v34 = *v32;
            LODWORD(v49) = v32[2];
            DWORD2(v49) = v34;
            v35 = v3[149];
            v36 = v3[148];
            if (v35 + 1 <= v36)
            {
              v40 = *(v3 + 75);
              v41 = v3[149];
            }

            else
            {
              if (v36 <= 1)
              {
                v36 = 1;
              }

              v37 = 2 * v36;
              if (v37 <= v35 + 1)
              {
                v38 = v35 + 1;
              }

              else
              {
                v38 = v37;
              }

              v39 = *(v3 + 19);
              v40 = (v39[1])(*v39, 48 * v38, "Vector Storage (GLPLLVMTextureSampler, growth)");
              memcpy(v40, *(v3 + 75), 48 * v3[149]);
              (v39[3])(*v39, *(v3 + 75));
              v3[148] = v38;
              *(v3 + 75) = v40;
              v41 = v3[149];
            }

            result = memmove(&v40[48 * v35 + 48], &v40[48 * v35], 48 * (v41 - v35));
            v42 = (*(v3 + 75) + 48 * v35);
            v43 = v49;
            v42[1] = v48;
            v42[2] = v43;
            *v42 = 0u;
            ++v3[149];
            v28 += 16;
            ++v29;
          }

          while (v31 != v28);
        }

        v22 = v47;
      }

      if ((v22[13] & 4) != 0)
      {
        v44 = *(v22 + 11);

        return glpLLVMCGDeclareUniformBufferObject(v3, v44);
      }
    }

    else if ((v23 & 0x80000000) != 0)
    {
      result = *(result + 8);
      if (result)
      {
        result = glpLayoutObjectFind(result, 46);
        if (result)
        {
          if (*(result + 16) == 10)
          {

            return glpLLVMCGDeclareTFBuffer(v3, v22);
          }
        }
      }
    }
  }

  return result;
}

void glpLLVMCGNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    Expr = a2;
    while (2)
    {
      if (!*(a1 + 332))
      {
        Kind = glpASTNodeGetKind(Expr);
        switch(Kind)
        {
          case 10:
          case 18:
          case 41:
          case 63:
          case 85:
            return;
          case 11:
          case 12:
          case 13:
          case 14:
          case 15:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 27:
          case 28:
          case 29:
          case 30:
          case 31:
          case 32:
          case 33:
          case 34:
          case 35:
          case 36:
          case 37:
          case 38:
          case 40:
          case 48:
          case 49:
          case 50:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 58:
          case 59:
          case 60:
          case 61:
          case 62:
          case 64:
          case 76:
          case 77:
          case 80:
          case 83:
            goto LABEL_68;
          case 16:

            glpLLVMCGNegate(a1, Expr);
            return;
          case 17:

            glpLLVMCGLogicalNot(a1, Expr);
            return;
          case 39:

            glpLLVMCGAssign(a1, Expr);
            return;
          case 42:
            glpLLVMWriteOutput(a1, Expr);
            return;
          case 43:

            glpLLVMCGCommaExpr(a1, Expr, a3);
            return;
          case 44:
            glpLLVMCGParameterDeclaration(a1, Expr);
            return;
          case 45:

            glpLLVMCGFunctionPrototype(a1, Expr);
            return;
          case 46:
            Extra = glpVariableDeclarationNodeGetExtra(Expr);

            glpLLVMCGDeclareVariable(a1, Extra);
            return;
          case 47:
            glpLLVMCGVariableDeclarationGroup(a1, Expr);
            return;
          case 51:

            glpLLVMCGFunctionDefinition(a1, Expr);
            return;
          case 57:
            glpLLVMCGInterfaceBlock(a1, Expr);
            return;
          case 65:
            Expr = glpExpressionStatementNodeGetExpr(Expr);
            if (!Expr)
            {
              return;
            }

            continue;
          case 66:
            glpLLVMCGBlock(a1, Expr);
            return;
          case 67:
            glpLLVMCGIfStatement(a1, Expr);
            return;
          case 68:
            glpLLVMCGLoopStatement(a1, Expr);
            return;
          case 69:
            glpLLVMCGSwitchStatement(a1, Expr);
            return;
          case 70:
            glpLLVMCGCaseStatement(a1, Expr);
            return;
          case 71:
            glpLLVMCGDefaultStatement(a1, Expr);
            return;
          case 72:
            glpLLVMCGBreakStatement(a1, Expr);
            return;
          case 73:
            glpLLVMCGContinueStatement(a1, Expr);
            return;
          case 74:

            glpLLVMCGDiscardStatement(a1, Expr);
            return;
          case 75:

            glpLLVMCGReturnStatement(a1, Expr);
            return;
          case 78:

            glpLLVMCGRawCallNode(a1, Expr);
            return;
          case 79:
            glpLLVMCGSubroutineRawCall(a1, Expr);
            return;
          case 81:

            glpLLVMCGLValue(a1, Expr, a3);
            return;
          case 82:

            glpLLVMCGRValue(a1, Expr);
            return;
          case 84:

            glpLLVMCGPPStreamOpNode(a1, Expr);
            return;
          default:
            if (Kind == 3)
            {

              glpLLVMCGConstant(a1, Expr);
            }

            else
            {
              if (Kind)
              {
LABEL_68:
                abort();
              }

              glpLLVMCGImplicitConversion(a1, Expr, a3);
            }

            break;
        }
      }

      break;
    }
  }
}

_DWORD *glpLLVMCreateAttributeDescription(uint64_t a1)
{
  v2 = *(a1 + 644);
  v3 = 8 * v2 + 8;
  v4 = malloc_type_malloc(v3, 0x75808E6AuLL);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  bzero(v4, v3);
  *v5 = v2;
  if (v2 >= 1)
  {
    v6 = 0;
    for (i = v5; ; i += 2)
    {
      v8 = *(*(a1 + 648) + 8 * v6);
      i[2] = i[2] & 0xFFFFC000 | 0xC0;
      v9 = *(v8 + 48);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v8);
      v11 = PrimitiveType;
      v12 = __ROR8__(v9 & 0x1F, 2) - 1;
      v13 = v12 > 3 ? 0 : dword_23A300E00[v12];
      i[2] = i[2] & 0xFFFFFFF8 | v13;
      Category = glpPrimitiveTypeGetCategory(PrimitiveType);
      if (Category == 1)
      {
        break;
      }

      if (Category == 2)
      {
        ElementType = glpPrimitiveVectorGetElementType(v11);
        v16 = i[2] & 0xFFFFFF3F | (((((glpPrimitiveVectorGetLength(v11) << 6) + 192) >> 6) & 3) << 6);
        LODWORD(v11) = ElementType;
LABEL_11:
        v17 = v16 & 0xFFFFFFC7;
        v18 = v16 & 0xFFFFFFC7 | 8;
        v19 = v16 & 0xFFFFFFC7 | 0x18;
        v20 = v16 & 0xFFFFFFC7 | 0x20;
        if (v11 != 62)
        {
          v20 = v16;
        }

        if (v11 != 36)
        {
          v19 = v20;
        }

        if (v11 != 9)
        {
          v18 = v19;
        }

        if (v11 == 5)
        {
          v16 = v17 | 0x10;
        }

        if (v11 == 1)
        {
          v16 = v17;
        }

        if (v11 > 8)
        {
          v16 = v18;
        }

        goto LABEL_25;
      }

      v16 = i[2];
LABEL_25:
      i[2] = (v9 >> 27) & 0xC000 | (v9 >> 23) & 0x2000 | v16 & 0xFFFF1FFF;
      v21 = glpLayoutObjectFind(*(v8 + 8), 34);
      if (v21)
      {
        i[2] = i[2] & 0xFFFFE0FF | ((v21[2] & 0x1F) << 8);
      }

      v22 = glpLayoutObjectFind(*(v8 + 8), 35);
      if (v22)
      {
        i[3] = i[3] & 0xFFFFFFC0 | v22[2] & 0x3F;
      }

      v23 = glpLayoutObjectFind(*(v8 + 8), 36);
      if (v23)
      {
        i[3] = i[3] & 0xFFFFFFBF | ((v23[2] & 1) << 6);
      }

      v24 = glpLayoutObjectFind(*(v8 + 8), 37);
      if (v24)
      {
        i[3] = i[3] & 0xFFFFFF7F | ((v24[2] & 1) << 7);
      }

      v25 = glpLayoutObjectFind(*(v8 + 8), 38);
      if (v25)
      {
        i[3] = i[3] & 0xFFFFFEFF | ((v25[2] & 1) << 8);
      }

      v26 = glpLayoutObjectFind(*(v8 + 8), 41);
      if (v26)
      {
        i[3] = i[3] & 0xFFFFFFFE | v26[2] & 1;
      }

      v27 = glpLayoutObjectFind(*(v8 + 8), 42);
      if (v27)
      {
        i[3] = i[3] & 0xFFFFFFFE | v27[2] & 1;
      }

      v28 = glpLayoutObjectFind(*(v8 + 8), 43);
      if (v28)
      {
        i[3] = i[3] & 0xFFFFFFE0 | v28[2] & 0x1F;
      }

      if (v2 == ++v6)
      {
        return v5;
      }
    }

    v16 = i[2] & 0xFFFFFF3F;
    goto LABEL_11;
  }

  return v5;
}

uint64_t glpLLVMVertexMetaData(void *a1, char *a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 173);
  MEMORY[0x28223BE20](a1, a2);
  bzero(v10 - ((8 * v4 + 15) & 0xFFFFFFFF0), 8 * v4);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      *(&v10[i] - ((8 * v4 + 15) & 0xFFFFFFFF0)) = glpLLVMVertexGeometryMetadata(a1, *(a1[87] + i * 8), 0xFFFFFFFF);
    }
  }

  v10[0] = a1[21];
  v6 = LLVMMDNodeInContext();
  v7 = a1[24];
  v10[1] = v6;
  v10[2] = v7;
  v8 = LLVMMDNodeInContext();
  return glpAddNamedMetadataOperand(a1[1], a2, v8);
}

uint64_t glpLLVMFragmentMetaData(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 173);
  MEMORY[0x28223BE20](a1, a2);
  bzero(&v19 - ((8 * v3 + 15) & 0xFFFFFFFF0), 8 * v3);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a1 + 65;
    while (1)
    {
      v6 = *(a1[87] + v4);
      v7 = *(glpLayoutObjectFind(*(v6 + 8), 68) + 4);
      if (v7 == 15)
      {
        break;
      }

      if (v7 == 7)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v19 = LLVMMDStringInContext();
        v20 = LLVMMDStringInContext();
        v12 = LLVMMDStringInContext();
        goto LABEL_18;
      }

      if (v7 == 4)
      {
        v8 = glpLayoutObjectFind(*(v6 + 8), 72);
        v9 = glpLayoutObjectFind(*(v6 + 8), 73);
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v19 = LLVMMDStringInContext();
        v10 = *(v8 + 4);
        if (v10 > 7)
        {
          v11 = LLVMConstInt();
        }

        else
        {
          v11 = v5[v10];
          if (!v11)
          {
            v11 = LLVMConstInt();
            v5[v10] = v11;
          }
        }

        v20 = v11;
        if (v9)
        {
          v13 = *(v9 + 4);
          if (v13 > 7)
          {
            v12 = LLVMConstInt();
            goto LABEL_18;
          }
        }

        else
        {
          v13 = 0;
        }

        v12 = v5[v13];
        if (!v12)
        {
          v14 = v13;
          v12 = LLVMConstInt();
          v5[v14] = v12;
        }

LABEL_18:
        v21 = v12;
LABEL_19:
        *(&v19 + v4 - ((8 * v3 + 15) & 0xFFFFFFFF0)) = LLVMMDNodeInContext();
      }

      v4 += 8;
      if (8 * v3 == v4)
      {
        goto LABEL_21;
      }
    }

    v19 = 0;
    v19 = LLVMMDStringInContext();
    goto LABEL_19;
  }

LABEL_21:
  v19 = a1[21];
  v15 = LLVMMDNodeInContext();
  v16 = a1[24];
  v20 = v15;
  v21 = v16;
  v17 = LLVMMDNodeInContext();
  return glpAddNamedMetadataOperand(a1[1], "air.fragment", v17);
}

uint64_t glpLLVMStringMetadata(uint64_t *a1, char *__s)
{
  strlen(__s);

  return LLVMMDStringInContext();
}

uint64_t glpGetConstantInt32(uint64_t a1, unsigned int a2)
{
  if (a2 > 7)
  {

    return LLVMConstInt();
  }

  else
  {
    v3 = a1 + 520;
    v4 = *(a1 + 520 + 8 * a2);
    if (!v4)
    {
      v5 = a2;
      v4 = LLVMConstInt();
      *(v3 + 8 * v5) = v4;
    }

    return v4;
  }
}

uint64_t glpLLVMAllocateFunctionParameters(uint64_t a1, int a2)
{
  v4 = (*(*(a1 + 152) + 8))(**(a1 + 152), 16, "functionParameters");
  if (a2)
  {
    PointerHash = 0;
    v6 = 15;
  }

  else
  {
    PointerHash = glpMakePointerHash(*(a1 + 152));
    v6 = 0;
  }

  *v4 = PointerHash;
  *(v4 + 8) = v6;
  return v4;
}

uint64_t glpLLVMCleanUpFunctionVariableObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (glpASTNodeGetKind(a2) == 46)
    {
      Extra = glpVariableDeclarationNodeGetExtra(a2);
      result = (*(*(v3 + 152) + 24))(**(v3 + 152), *(Extra + 144));
      *(Extra + 144) = 0;
    }

    else
    {
      result = glpASTNodeGetChildCount(a2);
      if (result)
      {
        v5 = result;
        for (i = 0; i != v5; ++i)
        {
          Child = glpASTNodeGetChild(a2, i);
          result = glpLLVMCleanUpFunctionVariableObjects(v3, Child);
        }
      }
    }
  }

  return result;
}

_DWORD *glpLLVMCGDeclareUniformBufferObject(_DWORD *result, _DWORD *a2)
{
  if (!a2[6])
  {
    v3 = result;
    a2[6] = result[177] + 1;
    v4 = a2[3];
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = glpLinkerPoolAlloc(*(v3 + 16));
        *v6 = i + a2[7];
        *(v6 + 4) = glpBufferObjectGetMinimumBufferSize(a2);
        *(v6 + 8) = 0;
        v7 = v3[177];
        v8 = v3[176];
        if (v7 + 1 <= v8)
        {
          v12 = *(v3 + 89);
          v13 = v3[177];
        }

        else
        {
          if (v8 <= 1)
          {
            v8 = 1;
          }

          v9 = 2 * v8;
          if (v9 <= v7 + 1)
          {
            v10 = v7 + 1;
          }

          else
          {
            v10 = v9;
          }

          v11 = *(v3 + 19);
          v12 = (v11[1])(*v11, 8 * v10, "Vector Storage (GLPLLVMBufferDescription *, growth)");
          memcpy(v12, *(v3 + 89), 8 * v3[177]);
          (v11[3])(*v11, *(v3 + 89));
          v3[176] = v10;
          *(v3 + 89) = v12;
          v13 = v3[177];
        }

        result = memmove(&v12[8 * v7 + 8], &v12[8 * v7], 8 * (v13 - v7));
        *(*(v3 + 89) + 8 * v7) = v6;
        ++v3[177];
      }
    }
  }

  return result;
}

void *glpLLVMCGDeclareTFBuffer(void *result, uint64_t a2)
{
  v3 = result;
  if ((result[40] & 0xFFFFFFFE) == 2 || (result[104] & 2) != 0)
  {
    v4 = glpLinkerPoolAlloc(result[16]);
    v5 = glpLayoutObjectFind(*(a2 + 8), 65);
    v6 = glpLayoutObjectFind(*(a2 + 8), 66);
    v7 = glpLayoutObjectFind(*(a2 + 8), 67);
    v8 = *(v5 + 4);
    *v4 = v8;
    v4[1] = *(v6 + 4);
    v4[2] = *(v7 + 4);
    *(v4 + 2) = 0;
    *(v3 + 191) |= 1 << v8;
    v9 = *(v3 + 181);
    v10 = *(v3 + 180);
    if (v9 + 1 <= v10)
    {
      v14 = v3[91];
      v15 = *(v3 + 181);
    }

    else
    {
      if (v10 <= 1)
      {
        v10 = 1;
      }

      v11 = 2 * v10;
      if (v11 <= v9 + 1)
      {
        v12 = v9 + 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = v3[19];
      v14 = (v13[1])(*v13, 8 * v12, "Vector Storage (GLPLLVMTFBufferDescription *, growth)");
      memcpy(v14, v3[91], 8 * *(v3 + 181));
      (v13[3])(*v13, v3[91]);
      *(v3 + 180) = v12;
      v3[91] = v14;
      v15 = *(v3 + 181);
    }

    result = memmove(&v14[8 * v9 + 8], &v14[8 * v9], 8 * (v15 - v9));
    *(v3[91] + 8 * v9) = v4;
    ++*(v3 + 181);
    *(v3 + *v4 + 192) = v4[2];
    v16 = *(a2 + 144);
    if (!v16)
    {
      result = (*(v3[19] + 8))(*v3[19], 40, "llvm codegen extra");
      *(a2 + 144) = result;
      *result = 0u;
      *(result + 1) = 0u;
      result[4] = 0;
      v16 = *(a2 + 144);
    }

    *v16 = 0;
    v16[2] = v4;
  }

  return result;
}

uint64_t glpLLVMGetFunctionGlobalVariableUse(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (!a2)
  {
    return result;
  }

  v7 = result;
  Kind = glpASTNodeGetKind(a2);
  if (Kind > 80)
  {
    if (Kind == 84)
    {
      if (glpPPStreamOpNodeGetHasSrctex(a2))
      {
        *a4 |= 8u;
      }

      if (glpPPStreamOpNodeGetOpcode(a2) != 153)
      {
        goto LABEL_39;
      }

      v32 = *a4 | 4;
    }

    else
    {
      if (Kind != 81)
      {
        goto LABEL_39;
      }

      VariableExtra = glpLValueNodeGetVariableExtra(a2);
      v27 = *(VariableExtra + 48);
      if ((v27 & 0x100000000) == 0)
      {
        if ((v27 & 0x86000000) != 0)
        {
          v28 = VariableExtra;
          v29 = *(VariableExtra + 8);
          if (!v29 || !glpLayoutObjectFind(v29, 28))
          {
            v30 = *(v28 + 144);
            if (!v30 || !*(v30 + 16))
            {
              glpLLVMAddParameterToHash(v28, a3);
            }
          }
        }

        goto LABEL_39;
      }

      v33 = *a4;
      if ((v27 & 0x800000000) != 0)
      {
        v32 = v33 | 2;
      }

      else
      {
        v32 = v33 | 1;
      }
    }
  }

  else
  {
    if (Kind != 78)
    {
      if (Kind == 79)
      {
        *a4 |= 1u;
        v9 = glpSubroutineRawCallNodeGetExtra(a2);
        SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(*(v7 + 136), *(v7 + 320));
        v11 = 0;
        v12 = *(SubroutineUniformHash + 32);
        v13 = *(SubroutineUniformHash + 40);
        do
        {
          v14 = *v13;
          if (*v13)
          {
            v15 = *(v14 + 4);
            v16 = v14 + 64;
            if (v15 == *(v9 + 40))
            {
              v11 = v16;
            }
          }

          v13 += 4;
          --v12;
        }

        while (v12);
        if (*(v11 + 4))
        {
          v17 = 0;
          do
          {
            v18 = *(*(v11 + 8) + 4 * v17);
            glpTopLevelNodeGetDefCount(*(*(v7 + 128) + 8 * *(v7 + 320) + 184));
            v19 = 0;
            v20 = 0;
            do
            {
              Def = glpTopLevelNodeGetDef(*(*(v7 + 128) + 8 * *(v7 + 320) + 184), v20);
              if (Def)
              {
                v22 = Def;
                if (glpASTNodeGetKind(Def) == 51)
                {
                  Prototype = glpFunctionDefinitionNodeGetPrototype(v22);
                  Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
                  if ((*(Extra + 10) & 0x10) != 0 && *(Extra + 160) == v18)
                  {
                    v19 = Extra;
                  }
                }
              }

              ++v20;
            }

            while (v20 < glpTopLevelNodeGetDefCount(*(*(v7 + 128) + 8 * *(v7 + 320) + 184)));
            v25 = *(v19 + 152);
            glpLLVMAddSortedParameters(a3, *v25);
            *a4 |= *(v25 + 8);
            ++v17;
          }

          while (v17 < *(v11 + 4));
        }
      }

      goto LABEL_39;
    }

    v31 = *(glpRawCallNodeGetExtra(a2) + 152);
    glpLLVMAddSortedParameters(a3, *v31);
    v32 = *a4 | *(v31 + 8);
  }

  *a4 = v32;
LABEL_39:
  result = glpASTNodeGetChildCount(a2);
  if (result)
  {
    v34 = result;
    for (i = 0; i != v34; ++i)
    {
      Child = glpASTNodeGetChild(a2, i);
      result = glpLLVMGetFunctionGlobalVariableUse(v7, Child, a3, a4);
    }
  }

  return result;
}

void glpLLVMGetTextureTypeFromSampler(uint64_t *a1, void *a2, uint64_t a3)
{
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(a3);
  if (PPTextarget < 0x12)
  {
    v6 = (&off_278B4DD88)[PPTextarget];
    v7 = glpLLVMGetNamedTypeInner(a1, "struct._sampler_t");
    *a2 = MEMORY[0x23EE85440](v7, 2);
    glpLLVMGetNamedTypeInner(a1, v6);

    JUMPOUT(0x23EE85440);
  }

  abort();
}

uint64_t glpLLVMAddParameterToHash(unint64_t a1, uint64_t a2)
{
  result = glpPointerHashGet(a2, a1);
  if (!result)
  {
    v6 = (*(a2 + 36) + 1);

    return glpPointerHashPut(a2, a1, v6, v5);
  }

  return result;
}

void glpLLVMAddSortedParameters(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 36);
  MEMORY[0x28223BE20](a1, 8 * v4);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFF0));
  bzero(v6, v5);
  v7 = *(a2 + 32);
  if (v7)
  {
    v8 = (*(a2 + 40) + 8);
    do
    {
      v9 = *(v8 - 1);
      if (v9)
      {
        *(v6 + (((v9 << 32) - 0x100000000) >> 29)) = *v8;
      }

      v8 += 3;
      --v7;
    }

    while (v7);
  }

  if (v4 >= 1)
  {
    do
    {
      v10 = *v6;
      if (!glpPointerHashGet(a1, *v6))
      {
        glpPointerHashPut(a1, v10, (*(a1 + 36) + 1), v11);
      }

      ++v6;
      --v4;
    }

    while (v4);
  }
}

uint64_t glpLLVMCGImplicitConversion(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  glpLLVMAddLineInformation(a1, a2);
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  v7 = glpLLVMCGNode(a1, Expr, a3);
  SaType = glpASTNodeGetSaType(Expr);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  SaFlags = glpASTNodeGetSaFlags(Expr);
  v11 = glpPrecisionIndexFromSAFlags(SaFlags);
  v12 = glpTypeConversionNodeGetToType(a2);
  v13 = glpPrimitiveTypeGetPrimitiveType(v12);
  v14 = glpASTNodeGetSaFlags(a2);
  v15 = glpPrecisionIndexFromSAFlags(v14);
  v16 = glpPrimitiveTypeToLLVMType(a1, v13, v15);
  v17 = LLVMTypeOf();
  if (glpPrimitiveTypeGetCategory(v13) == 4)
  {
    return v7;
  }

  ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
  v20 = glpPrimitiveTypeGetScalarType(v13);
  if (v20 == 9)
  {
    if (ScalarType == 62 || ScalarType == 1)
    {
      MEMORY[0x23EE85200](v17);

      return LLVMBuildFCmp();
    }

    else
    {
      MEMORY[0x23EE85200](v17);

      return LLVMBuildICmp();
    }
  }

  if (ScalarType == 1 || ScalarType == 62)
  {
    if (v20 == 62 || v20 == 1)
    {

      return LLVMBuildFPCast();
    }

    goto LABEL_24;
  }

  if (v20 == 1 || v20 == 62)
  {
    if (ScalarType == 9)
    {
      if (glpPrimitiveTypeGetCategory(PrimitiveType) == 2)
      {
        Length = glpPrimitiveVectorGetLength(PrimitiveType);
        PrimitiveType = glpGetVectorType(36, Length);
      }

      else
      {
        PrimitiveType = 36;
      }

      glpPrimitiveTypeToLLVMType(a1, PrimitiveType, v11);
      v23 = LLVMBuildZExt();
      v22 = a1;
      goto LABEL_31;
    }

LABEL_24:
    v22 = a1;
    v23 = v7;
LABEL_31:

    return glpLLVMBuildConversion(v22, v23, v16, PrimitiveType, v11, v13, v15);
  }

  if (ScalarType == 9)
  {
    goto LABEL_26;
  }

  v24 = v11 > 3 || *(a1 + qword_23A300E60[v11]) <= 0x10u;
  if (v15 > 3)
  {
    goto LABEL_47;
  }

  v25 = !v24;
  if (*(a1 + qword_23A300E60[v15]) < 0x11u)
  {
    v25 = 1;
  }

  if (v25)
  {
LABEL_47:

    return LLVMBuildTrunc();
  }

  else
  {
    v26 = glpPrimitiveTypeGetScalarType(PrimitiveType);
    if (v26 == 36 || v26 == 9)
    {
LABEL_26:

      return LLVMBuildZExt();
    }

    return LLVMBuildSExt();
  }
}

uint64_t glpLLVMCGConstant(uint64_t *a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  SaFlags = glpASTNodeGetSaFlags(a2);
  v5 = glpPrecisionIndexFromSAFlags(SaFlags);
  Type = glpConstantNodeGetType(a2);
  Value = glpConstantNodeGetValue(a2);
  Kind = glpTypeGetKind(Type);
  if ((Kind - 1) >= 2)
  {
    if (Kind)
    {
      abort();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(Type);
    if (glpPrimitiveTypeGetCategory(PrimitiveType) != 3)
    {
      v16[0] = 0;
      glpLLVMPrimitiveConstant(a1, Value, v16, 0, PrimitiveType, PrimitiveType, v5);
      return v16[0];
    }

    if (glpPrimitiveTypeGetScalarType(PrimitiveType) != 62)
    {
      ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
      glpABIGetTypeSize(0, Type, 0);
      glpTypeSizeGetSize();
      MEMORY[0x28223BE20](v12, 8 * v12);
      v14 = v16 - v13;
      bzero(v16 - v13, v15);
      glpLLVMPrimitiveConstant(a1, Value, v14, 0, PrimitiveType, ColumnType, v5);
      glpPrimitiveTypeToLLVMType(a1, ColumnType, v5);
      return LLVMConstArray();
    }
  }

  return glpLLVMAggregateConstant(a1, Type, v5, Value);
}

uint64_t glpLLVMCGPPStreamOpNode(uint64_t a1, uint64_t a2)
{
  v274[1] = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  Opcode = glpPPStreamOpNodeGetOpcode(a2);
  v5 = 0;
  if (Opcode > 166)
  {
    LODWORD(v235) = Opcode;
    if ((Opcode - 167) < 3)
    {
      Child = glpASTNodeGetChild(a2, 0);
      v5 = *(glpLValueNodeGetVariableExtra(Child) + 51) & 1;
    }

    goto LABEL_10;
  }

  if (Opcode != 78)
  {
    if (Opcode == 121)
    {
      v45 = glpASTNodeGetChild(a2, 0);
      glpLLVMCGNode(a1, v45, 1);
      if (!*(a1 + 584))
      {
        v46 = LLVMTypeOf();
        *(a1 + 584) = glpBuildAlloca(a1, v46);
      }

      LLVMBuildStore();
    }

    else
    {
      LODWORD(v235) = Opcode;
      if (Opcode != 153)
      {
LABEL_10:
        HasSrctex = glpPPStreamOpNodeGetHasSrctex(a2);
        ChildCount = glpASTNodeGetChildCount(a2);
        v234 = &v232;
        MEMORY[0x28223BE20](ChildCount, 8 * (ChildCount + HasSrctex));
        v10 = (&v232 - v9);
        bzero(&v232 - v9, v11);
        OpPrimitiveType = glpPPStreamOpNodeGetOpPrimitiveType(a2);
        if (OpPrimitiveType)
        {
          OpPrimitiveType = glpPrimitiveTypeGetScalarType(OpPrimitiveType);
          LODWORD(v232) = OpPrimitiveType;
        }

        else
        {
          LODWORD(v232) = 0;
        }

        v14 = 4 * (ChildCount + HasSrctex);
        MEMORY[0x28223BE20](OpPrimitiveType, v13);
        v15 = (v14 + 15) & 0x7FFFFFFF0;
        v236 = (&v232 - v15);
        bzero(&v232 - v15, v14);
        MEMORY[0x28223BE20](v16, v17);
        v18 = (&v232 - v15);
        bzero(&v232 - v15, v14);
        v233 = ChildCount;
        v19 = (ChildCount - HasSrctex);
        if (v19)
        {
          for (i = 0; i != v19; ++i)
          {
            if (i)
            {
              v21 = 0;
            }

            else
            {
              v21 = v5;
            }

            if ((v21 & 1) == 0)
            {
              v22 = glpASTNodeGetChild(a2, i);
              v10[i] = glpLLVMCGNode(a1, v22, 1);
              SaType = glpASTNodeGetSaType(v22);
              PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
              v236[i] = PrimitiveType;
              SaFlags = glpASTNodeGetSaFlags(v22);
              v18[i] = glpPrecisionIndexFromSAFlags(SaFlags);
              v26 = glpASTNodeGetSaType(v22);
              if (!glpTypeGetKind(v26))
              {
                v27 = glpPrimitiveTypeGetPrimitiveType(v26);
                glpPrimitiveTypeGetScalarType(v27);
              }
            }
          }
        }

        v28 = a1;
        v29 = v10;
        if (HasSrctex)
        {
          v30 = v233;
          v31 = glpASTNodeGetChild(a2, v233 - 1);
          v10[v30 - 1] = glpLLVMCGSamplerNode(a1, v31, &v10[v30]);
        }

        ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
        v33 = glpASTNodeGetSaFlags(a2);
        v34 = glpPrecisionIndexFromSAFlags(v33);
        v35 = glpPrimitiveTypeToLLVMType(a1, ReturnPrimitiveType, v34);
        v274[0] = 0;
        v36 = v35;
        switch(v235)
        {
          case 2:
            if (v233 == 2)
            {
              glpMatchInputSize(v28, v10, v236);
            }

            if (v232 <= 0x24 && ((1 << v232) & 0x1000000220) != 0)
            {
              v159 = "air.abs";
              v162 = v28;
              v163 = 1;
              goto LABEL_256;
            }

            v125 = "air.fabs";
            goto LABEL_305;
          case 3:
            v125 = "air.ceil";
            goto LABEL_305;
          case 4:
            v125 = "air.fract";
            goto LABEL_305;
          case 5:
            v125 = "air.floor";
            goto LABEL_305;
          case 6:
            v125 = "air.fwidth";
            goto LABEL_305;
          case 7:
            if (v232 <= 0x24 && ((1 << v232) & 0x1000000220) != 0)
            {
              v164 = *v236;
              v165 = *v18;
              glpBuildConstantIntVector(v28, v164, v165, -1);
              glpBuildConstantIntVector(v28, v164, v165, 0);
              glpBuildConstantIntVector(v28, v164, v165, 1);
              LLVMBuildICmp();
              LLVMBuildSelect();
              LLVMBuildICmp();
              goto LABEL_365;
            }

            v125 = "air.sign";
LABEL_305:
            v148 = v28;
            v149 = 1;
            goto LABEL_306;
          case 8:
            v166 = *(v28 + 64);
            v157 = *v236;
            v158 = *v18;
            v125 = "air.any";
            goto LABEL_221;
          case 9:
            v166 = *(v28 + 64);
            v157 = *v236;
            v158 = *v18;
            v125 = "air.all";
LABEL_221:
            v148 = v28;
            v149 = 1;
            v156 = v10;
            goto LABEL_309;
          case 10:
            LODOperation = LLVMBuildNot();
            goto LABEL_310;
          case 11:
            if (glpPrimitiveTypeGetCategory(ReturnPrimitiveType) == 1)
            {
              v157 = *v236;
              v158 = *v18;
              v125 = "air.noise1";
            }

            else
            {
              Length = glpPrimitiveVectorGetLength(ReturnPrimitiveType);
              switch(Length)
              {
                case 4:
                  v157 = *v236;
                  v158 = *v18;
                  v125 = "air.noise4";
                  break;
                case 3:
                  v157 = *v236;
                  v158 = *v18;
                  v125 = "air.noise3";
                  break;
                case 2:
                  v157 = *v236;
                  v158 = *v18;
                  v125 = "air.noise2";
                  break;
                default:
                  return v274[0];
              }
            }

LABEL_229:
            v148 = v28;
            v149 = 1;
LABEL_269:
            v156 = v10;
            v166 = v36;
            goto LABEL_309;
          case 12:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_sqrt";
            v144 = "air.sqrt";
            goto LABEL_302;
          case 16:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_exp2";
            v144 = "air.exp2";
            goto LABEL_302;
          case 18:
            LODOperation = glpLLVMBuildLength(v28, v10, v236, v34, v35);
            goto LABEL_310;
          case 19:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_log2";
            v144 = "air.log2";
            goto LABEL_302;
          case 21:
            LODOperation = glpLLVMBuildNormalize(v28, v10, v236, v34, v35);
            goto LABEL_310;
          case 22:
            v167 = 0.0174532925;
            goto LABEL_238;
          case 23:
            v167 = 57.2957795;
LABEL_238:
            LODOperation = glpLLVMBuildConvert(v28, v10, v236, v167);
            goto LABEL_310;
          case 25:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_sin";
            v144 = "air.sin";
            goto LABEL_302;
          case 26:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_cos";
            v144 = "air.cos";
            goto LABEL_302;
          case 27:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_tan";
            v144 = "air.tan";
            goto LABEL_302;
          case 28:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_asin";
            v144 = "air.asin";
            goto LABEL_302;
          case 29:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_acos";
            v144 = "air.acos";
            goto LABEL_302;
          case 30:
            v161 = v34 != 3 && v34 != 0;
            v157 = *v236;
            v149 = v233;
            if (v233 == 2)
            {
              if (v161)
              {
                v125 = "air.atan2";
              }

              else
              {
                v125 = "air.fast_atan2";
              }

              v148 = v28;
            }

            else
            {
              if (v161)
              {
                v125 = "air.atan";
              }

              else
              {
                v125 = "air.fast_atan";
              }

              v148 = v28;
            }

            goto LABEL_368;
          case 31:
            glpMatchInputSize(v28, v10, v236);
            if (v232 <= 0x24 && ((1 << v232) & 0x1000000220) != 0)
            {
              LODOperation = LLVMBuildAdd();
            }

            else
            {
              LODOperation = LLVMBuildFAdd();
            }

            goto LABEL_310;
          case 32:
            glpMatchInputSize(v28, v10, v236);
            if (v232 <= 0x24 && ((1 << v232) & 0x1000000220) != 0)
            {
              goto LABEL_358;
            }

            LODOperation = LLVMBuildFSub();
            goto LABEL_310;
          case 33:
            glpMatchInputSize(v28, v10, v236);
            if (v232 <= 0x24 && ((1 << v232) & 0x1000000220) != 0)
            {
              if (v232 == 5)
              {
                LODOperation = LLVMBuildSRem();
              }

              else
              {
                LODOperation = LLVMBuildURem();
              }

              goto LABEL_310;
            }

            v157 = *v236;
            v125 = "air.mod";
            v148 = v28;
            v149 = 2;
LABEL_368:
            v156 = v10;
            v166 = v36;
            goto LABEL_308;
          case 34:
            glpMatchInputSize(v28, v10, v236);
            if (v232 <= 0x24 && ((1 << v232) & 0x1000000220) != 0)
            {
              LODOperation = LLVMBuildMul();
            }

            else
            {
              LODOperation = LLVMBuildFMul();
            }

            goto LABEL_310;
          case 36:
          case 125:
            glpMatchInputSize(v28, v10, v236);
            LODOperation = LLVMBuildAnd();
            goto LABEL_310;
          case 37:
          case 126:
            glpMatchInputSize(v28, v10, v236);
            LODOperation = LLVMBuildOr();
            goto LABEL_310;
          case 38:
          case 127:
            glpMatchInputSize(v28, v10, v236);
            goto LABEL_248;
          case 39:
            v157 = *v236;
            v158 = *v18;
            v125 = "air.dot";
            goto LABEL_268;
          case 44:
            if (v233 == 2)
            {
              glpMatchInputSize(v28, v10, v236);
            }

            if (v232 <= 0x24 && ((1 << v232) & 0x1000000220) != 0)
            {
              v159 = "air.min";
              goto LABEL_198;
            }

            if (v34)
            {
              v145 = v34 == 3;
            }

            else
            {
              v145 = 1;
            }

            v146 = "air.fast_fmin";
            v147 = "air.fmin";
            goto LABEL_98;
          case 45:
            if (v233 == 2)
            {
              glpMatchInputSize(v28, v10, v236);
            }

            if (v232 <= 0x24 && ((1 << v232) & 0x1000000220) != 0)
            {
              v159 = "air.max";
LABEL_198:
              v162 = v28;
              v163 = 2;
              goto LABEL_256;
            }

            if (v34)
            {
              v145 = v34 == 3;
            }

            else
            {
              v145 = 1;
            }

            v146 = "air.fast_fmax";
            v147 = "air.fmax";
LABEL_98:
            if (v145)
            {
              v125 = v146;
            }

            else
            {
              v125 = v147;
            }

            v148 = v28;
            v149 = 2;
            goto LABEL_306;
          case 46:
            LODOperation = glpLLVMBuildCross(v28, v10);
            goto LABEL_310;
          case 47:
            LODOperation = glpLLVMBuildReflect(v28, v10, v236, v34);
            goto LABEL_310;
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
            v108 = v235;
            glpMatchInputSize(v28, v10, v236);
            v109 = glpASTNodeGetChild(a2, 0);
            v110 = glpASTNodeGetSaType(v109);
            v111 = glpPrimitiveTypeGetPrimitiveType(v110);
            ScalarType = glpPrimitiveTypeGetScalarType(v111);
            v113 = 1;
            if (ScalarType > 35)
            {
              if (ScalarType != 62)
              {
                goto LABEL_65;
              }
            }

            else if (ScalarType != 1)
            {
              goto LABEL_65;
            }

            v113 = 0;
LABEL_65:
            if (v113)
            {
              v131 = LLVMBuildICmp();
            }

            else
            {
              v131 = LLVMBuildFCmp();
            }

            v132 = v131;
            if (glpPrimitiveTypeGetCategory(ReturnPrimitiveType) == 2)
            {
              v133 = glpPrimitiveVectorGetLength(ReturnPrimitiveType);
            }

            else
            {
              v133 = 1;
            }

            v134 = *v236;
            if (glpPrimitiveTypeGetCategory(*v236) == 2)
            {
              v135 = glpPrimitiveVectorGetLength(v134);
              if (v133 < v135)
              {
                if (v135 < 1)
                {
                  Element = 0;
                  goto LABEL_89;
                }

                goto LABEL_78;
              }
            }

            else if (v133 < 1)
            {
              v135 = 1;
LABEL_78:
              v137 = 0;
              v138 = 0;
              v139 = v28 + 520;
              v140 = v135;
              do
              {
                if (v137 > 7)
                {
                  LLVMConstInt();
                }

                else if (!*(v139 + 8 * v137))
                {
                  *(v139 + 8 * v137) = LLVMConstInt();
                }

                Element = LLVMBuildExtractElement();
                if (v138)
                {
                  if (v108 == 49)
                  {
                    v141 = LLVMBuildAnd();
                  }

                  else
                  {
                    v141 = LLVMBuildOr();
                  }

                  Element = v141;
                }

                ++v137;
                v138 = Element;
              }

              while (v140 != v137);
LABEL_89:
              v274[0] = Element;
              return v274[0];
            }

            Element = v132;
            goto LABEL_89;
          case 56:
            if (v34)
            {
              v180 = v34 == 3;
            }

            else
            {
              v180 = 1;
            }

            if (v180)
            {
              v125 = "air.fast_powr";
            }

            else
            {
              v125 = "air.powr";
            }

            v157 = *v236;
            v158 = *v18;
LABEL_268:
            v148 = v28;
            v149 = 2;
            goto LABEL_269;
          case 57:
            LLVMBuildExtractElement();
            ComponentCount = glpGetComponentCount(*v236);
            if (!*(v28 + 520))
            {
              *(v28 + 520) = LLVMConstInt();
            }

            v182 = LLVMTypeOf();
            MEMORY[0x23EE85370](v182);
            LLVMBuildInsertElement();
            v183 = MEMORY[0x23EE854F0](*(v28 + 40), ComponentCount);
            MEMORY[0x23EE85200](v183);
            LODOperation = LLVMBuildShuffleVector();
            goto LABEL_310;
          case 58:
            glpMatchInputSize(v28, v10, v236);
            if (v232 <= 0x24 && ((1 << v232) & 0x1000000220) != 0)
            {
              if (v232 == 5)
              {
                LODOperation = LLVMBuildSDiv();
              }

              else
              {
                LODOperation = LLVMBuildUDiv();
              }
            }

            else
            {
              LODOperation = LLVMBuildFDiv();
            }

            goto LABEL_310;
          case 59:
            LODOperation = glpLLVMBuildFaceForward(v28, v10, v236, v34);
            goto LABEL_310;
          case 60:
            LODOperation = glpLLVMBuildMix(v28, v10, v236, v35, v34);
            goto LABEL_310;
          case 61:
            glpMatchInputSize3(v28, v10, v236);
            if (v232 <= 0x24 && ((1 << v232) & 0x1000000220) != 0)
            {
              v159 = "air.clamp";
              v162 = v28;
              v163 = 3;
LABEL_256:
              LODOperation = glpLLVMBuildBuiltinWithPrefix(v162, v159, v163, v10, v36, ReturnPrimitiveType, v34);
            }

            else
            {
              v125 = "air.clamp";
LABEL_164:
              v148 = v28;
              v149 = 3;
LABEL_306:
              v156 = v10;
LABEL_307:
              v166 = v36;
              v157 = ReturnPrimitiveType;
LABEL_308:
              v158 = v34;
LABEL_309:
              LODOperation = glpLLVMBuildBuiltinNoPrefix(v148, v125, v149, v156, v166, v157, v158);
            }

            goto LABEL_310;
          case 62:
            if (v232 <= 0x24 && ((1 << v232) & 0x1000000220) != 0)
            {
              if (v232 == 5 || v232 == 36 || v232 == 9)
              {
                v229 = LLVMTypeOf();
                MEMORY[0x23EE85200](v229);
                LLVMBuildICmp();
              }
            }

            else
            {
              v230 = LLVMTypeOf();
              MEMORY[0x23EE85200](v230);
              LLVMBuildFCmp();
            }

            goto LABEL_365;
          case 63:
            v125 = "air.mad";
            goto LABEL_164;
          case 64:
            LODOperation = glpLLVMBuildSmoothStep(v28, v10, v236, v34, v35);
            goto LABEL_310;
          case 66:
          case 67:
          case 68:
          case 69:
          case 70:
          case 71:
          case 98:
          case 99:
          case 130:
          case 165:
          case 166:
            LODOperation = glpBuildTextureOperation(v28, a2, v10, v236, v18, v233 + 1);
            goto LABEL_310;
          case 78:
          case 161:
            v125 = "air.popcount";
            goto LABEL_305;
          case 80:
            v125 = "air.dfdx";
            goto LABEL_305;
          case 81:
            v125 = "air.dfdy";
            goto LABEL_305;
          case 92:
            glpLLVMCastToHalf(v28, *v10, *v236, *v18);
            goto LABEL_130;
          case 93:
            v157 = *v236;
            v158 = *v18;
            v125 = "air.pack.unorm2x16";
            goto LABEL_229;
          case 94:
            v157 = *v236;
            v158 = *v18;
            v125 = "air.pack.snorm4x8";
            goto LABEL_229;
          case 95:
            v157 = *v236;
            v158 = *v18;
            v125 = "air.pack.unorm4x8";
            goto LABEL_229;
          case 100:
            v197 = LLVMHalfTypeInContext();
            MEMORY[0x23EE854F0](v197, 2);
            v274[0] = LLVMBuildBitCast();
            if (v34 != 3 && v34)
            {
              return v274[0];
            }

            *&v242 = 0x300000001;
            LODOperation = glpLLVMCallFunctionInner(v28, "air.convert.f.v2f32.f.v2f16", v36, v274, 1, &v242, 2u, "");
            goto LABEL_310;
          case 101:
            v125 = "air.unpack.unorm2x16";
            goto LABEL_305;
          case 102:
            v125 = "air.unpack.snorm4x8";
            goto LABEL_305;
          case 103:
            v125 = "air.unpack.unorm4x8";
            goto LABEL_305;
          case 105:
            LODOperation = glpLLVMBuildRefract(v28, v10, v236, v34, v35);
            goto LABEL_310;
          case 112:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_exp";
            v144 = "air.exp";
            goto LABEL_302;
          case 113:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_log";
            v144 = "air.log";
            goto LABEL_302;
          case 119:
          case 120:
            v239 = *v10;
            v118 = v235;
            v119 = LLVMVoidTypeInContext();
            if (v118 == 119)
            {
              v120 = "air.emit_vertex";
            }

            else
            {
              v120 = "air.end_primitive";
            }

            *&v242 = 0x300000001;
            v121 = &v239;
            v122 = &v242;
            v123 = v28;
            v124 = 1;
            goto LABEL_133;
          case 123:
            v125 = "air.round";
            goto LABEL_305;
          case 124:
            v125 = "air.trunc";
            goto LABEL_305;
          case 128:
            glpMatchInputSize(v28, v10, v236);
            LODOperation = LLVMBuildShl();
            goto LABEL_310;
          case 129:
            glpMatchInputSize(v28, v10, v236);
            if (v232 == 5)
            {
              LODOperation = LLVMBuildAShr();
            }

            else
            {
              LODOperation = LLVMBuildLShr();
            }

            goto LABEL_310;
          case 131:
            LODOperation = glpBuildTextureSizeOperation(v28, a2, v10, v233);
            goto LABEL_310;
          case 132:
            v174 = LLVMTypeOf();
            MEMORY[0x23EE851D0](v174);
LABEL_248:
            LODOperation = LLVMBuildXor();
            goto LABEL_310;
          case 133:
            LODOperation = glpLLVMBuildDistance(v28, v10, v236, v34, v35);
            goto LABEL_310;
          case 134:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_rsqrt";
            v144 = "air.rsqrt";
            goto LABEL_302;
          case 137:
            v125 = "air.rint";
            goto LABEL_305;
          case 138:
            v200 = *v236;
            *&v242 = glpLLVMf32Extend(v28, *v10, v200, *v18);
            v201 = LLVMTypeOf();
            *&v242 = glpLLVMBuildBuiltinNoPrefix(v28, "air.fabs", 1, &v242, v201, v200, 3);
            LLVMTypeOf();
            glpLLVMGetInfinity();
            v202 = *(v28 + 40);
            if (glpPrimitiveTypeGetScalarType(v200) == 62)
            {
              v202 = LLVMInt64TypeInContext();
            }

            v203 = glpGetComponentCount(v200);
            if (v203 >= 2)
            {
              MEMORY[0x23EE854F0](v202, v203);
            }

            *&v242 = LLVMBuildBitCast();
            LLVMBuildBitCast();
            LODOperation = LLVMBuildICmp();
            goto LABEL_310;
          case 139:
            v198 = *v236;
            *&v242 = glpLLVMf32Extend(v28, *v10, *v236, *v18);
            v199 = LLVMTypeOf();
            *&v242 = glpLLVMBuildBuiltinNoPrefix(v28, "air.fabs", 1, &v242, v199, v198, 3);
            LLVMTypeOf();
            glpLLVMGetInfinity();
            LODOperation = LLVMBuildFCmp();
            goto LABEL_310;
          case 144:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_sinh";
            v144 = "air.sinh";
            goto LABEL_302;
          case 145:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_cosh";
            v144 = "air.cosh";
            goto LABEL_302;
          case 146:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_tanh";
            v144 = "air.tanh";
            goto LABEL_302;
          case 147:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_asinh";
            v144 = "air.asinh";
            goto LABEL_302;
          case 148:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_acosh";
            v144 = "air.acosh";
            goto LABEL_302;
          case 149:
            if (v34)
            {
              v142 = v34 == 3;
            }

            else
            {
              v142 = 1;
            }

            v143 = "air.fast_atanh";
            v144 = "air.atanh";
LABEL_302:
            if (v142)
            {
              v125 = v143;
            }

            else
            {
              v125 = v144;
            }

            goto LABEL_305;
          case 150:
          case 151:
          case 157:
          case 158:
            goto LABEL_130;
          case 153:
            if ((*(v28 + 320) & 0xFFFFFFFE) == 2)
            {
              v184 = glpASTNodeGetChild(a2, 1u);
              v185 = *(*(glpLValueNodeGetVariableExtra(v184) + 144) + 16);
              v186 = LLVMInt8TypeInContext();
              MEMORY[0x23EE85440](v186, 1);
              v187 = LLVMBuildPointerCast();
              ConstantInt32 = glpGetConstantInt32(v28, *(v185 + 4));
              v189 = v29;
              v190 = v28;
              v191 = glpGetConstantInt32(v28, *(v185 + 8));
              v192 = LLVMTypeOf();
              glpBuildAlloca(v190, v192);
              LLVMBuildStore();
              v193 = LLVMInt8TypeInContext();
              MEMORY[0x23EE85440](v193, 0);
              v194 = LLVMBuildPointerCast();
              ScalarCount = glpPrimitiveTypeGetScalarCount(v236[2]);
              v196 = glpGetConstantInt32(v190, 4 * ScalarCount);
              v119 = LLVMVoidTypeInContext();
              *&v242 = *v189;
              *(&v242 + 1) = v187;
              *&v243 = ConstantInt32;
              *(&v243 + 1) = v191;
              *&v244 = v194;
              *(&v244 + 1) = v196;
              v239 = 0x300000001;
              v120 = "air.gs_tf_store";
              v121 = &v242;
              v122 = &v239;
              v123 = v190;
              v124 = 6;
LABEL_133:
              glpLLVMCallFunctionInner(v123, v120, v119, v121, v124, v122, 2u, "");
              return v274[0];
            }

            if ((*(v28 + 832) & 2) == 0)
            {
              return v274[0];
            }

            v220 = LLVMFloatTypeInContext();
            MEMORY[0x23EE85440](v220, 1);
            v235 = LLVMBuildPointerCast();
            LLVMTypeOf();
            LLVMConstInt();
            *&v242 = LLVMBuildAShr();
            if (*(v28 + 832))
            {
              v233 = LLVMBuildLoad();
              v221 = *(v28 + 528);
              if (!v221)
              {
                v221 = LLVMConstInt();
                *(v28 + 528) = v221;
              }

              v239 = v221;
              LLVMBuildGEP();
              v232 = LLVMBuildLoad();
              v222 = *(v28 + 536);
              if (!v222)
              {
                v222 = LLVMConstInt();
                *(v28 + 536) = v222;
              }

              v238 = v222;
              LLVMBuildGEP();
              LLVMBuildLoad();
              v223 = glpASTNodeGetChild(a2, 1u);
              v224 = *(*(glpLValueNodeGetVariableExtra(v223) + 144) + 16);
              LLVMGetParam();
              LLVMGetParam();
              LLVMBuildAdd();
              LLVMBuildSub();
              LLVMBuildMul();
              LLVMBuildAdd();
              glpGetConstantInt32(v28, *(v224 + 8) >> 2);
              LLVMBuildMul();
              *&v242 = LLVMBuildAdd();
              v29 = v10;
            }

            LLVMBuildGEP();
            v225 = v18[2];
            if (v225 && v225 != 3)
            {
              v226 = v236[2];
              v227 = glpPrimitiveTypeGetScalarType(v226);
              glpPrimitiveTypeToLLVMType(v28, v226, 3);
              if (v227 > 8)
              {
                if (v227 == 36 || v227 == 9)
                {
                  LLVMBuildZExt();
                }
              }

              else if (v227 == 1)
              {
                LLVMBuildFPCast();
              }

              else if (v227 == 5)
              {
                LLVMBuildSExt();
              }
            }

            v231 = LLVMTypeOf();
            MEMORY[0x23EE85440](v231, 1);
            LLVMBuildPointerCast();
            LLVMBuildStore();
            v117 = v29[2];
            goto LABEL_52;
          case 154:
            v150 = *v236;
            v151 = glpGetComponentCount(v150);
            if (glpPrimitiveTypeGetScalarType(v150) == 1)
            {
              v152 = *(v28 + 40);
              if (v151 >= 2)
              {
                v152 = MEMORY[0x23EE854F0](*(v28 + 40), v151);
              }

              LLVMBuildBitCast();
              v153 = LLVMConstInt();
              glpLLVMSplatConstantVector(v153, v151);
              v274[0] = LLVMBuildLShr();
              v154 = LLVMConstInt();
              glpLLVMSplatConstantVector(v154, v151);
              LLVMBuildAnd();
              MEMORY[0x23EE85200](v152);
              LLVMBuildICmp();
              v155 = LLVMConstInt();
              glpLLVMSplatConstantVector(v155, v151);
              LLVMBuildSub();
              MEMORY[0x23EE85200](v152);
LABEL_365:
              LODOperation = LLVMBuildSelect();
            }

            else
            {
              v210 = LLVMInt64TypeInContext();
              v211 = v210;
              if (v151 >= 2)
              {
                v211 = MEMORY[0x23EE854F0](v210, v151);
              }

              LLVMBuildBitCast();
              v212 = LLVMConstInt();
              glpLLVMSplatConstantVector(v212, v151);
              LLVMBuildLShr();
              v213 = LLVMConstInt();
              glpLLVMSplatConstantVector(v213, v151);
              v274[0] = LLVMBuildAnd();
              MEMORY[0x23EE85200](v211);
              LLVMBuildICmp();
              v214 = LLVMConstInt();
              glpLLVMSplatConstantVector(v214, v151);
              LLVMBuildSub();
              MEMORY[0x23EE85200](v211);
              LLVMBuildSelect();
              LODOperation = LLVMBuildTrunc();
            }

            goto LABEL_310;
          case 155:
            v235 = v35;
            v175 = *v236;
            v176 = glpGetComponentCount(v175);
            if (glpPrimitiveTypeGetScalarType(v175) == 1)
            {
              v177 = *(v28 + 40);
              if (v176 >= 2)
              {
                v177 = MEMORY[0x23EE854F0](*(v28 + 40), v176);
              }

              LLVMBuildBitCast();
              v178 = LLVMConstInt();
              glpLLVMSplatConstantVector(v178, v176);
              LLVMBuildAnd();
              MEMORY[0x23EE85200](v177);
              LLVMBuildICmp();
              LLVMBuildNot();
              LLVMBuildAnd();
              v179 = LLVMConstInt();
              glpLLVMSplatConstantVector(v179, v176);
              LLVMBuildOr();
              MEMORY[0x23EE85200](v177);
            }

            else
            {
              v216 = LLVMInt64TypeInContext();
              v217 = v216;
              if (v176 >= 2)
              {
                v217 = MEMORY[0x23EE854F0](v216, v176);
              }

              v274[0] = LLVMBuildBitCast();
              v218 = LLVMConstInt();
              glpLLVMSplatConstantVector(v218, v176);
              LLVMBuildAnd();
              MEMORY[0x23EE85200](v217);
              LLVMBuildICmp();
              LLVMBuildNot();
              LLVMBuildAnd();
              v219 = LLVMConstInt();
              glpLLVMSplatConstantVector(v219, v176);
              LLVMBuildOr();
              MEMORY[0x23EE85200](v217);
            }

            LLVMBuildSelect();
LABEL_130:
            LODOperation = LLVMBuildBitCast();
            goto LABEL_310;
          case 156:
            if (v34)
            {
              v145 = v34 == 3;
            }

            else
            {
              v145 = 1;
            }

            v146 = "air.fast_ldexp";
            v147 = "air.ldexp";
            goto LABEL_98;
          case 159:
            v159 = "air.mul_hi";
            goto LABEL_198;
          case 160:
            v125 = "air.reverse_bits";
            goto LABEL_305;
          case 162:
            *&v242 = *v10;
            *(&v242 + 1) = LLVMConstInt();
            v125 = "air.ctz";
            v156 = &v242;
            v148 = v28;
            v149 = 2;
            goto LABEL_307;
          case 163:
            v168 = ReturnPrimitiveType;
            v169 = *v236;
            v170 = glpGetComponentCount(v169);
            v171 = glpPrimitiveTypeGetScalarType(v169);
            if (v171 == 36)
            {
              v173 = *v10;
            }

            else
            {
              if (v171 != 5)
              {
                abort();
              }

              v172 = LLVMConstInt();
              glpLLVMSplatConstantVector(v172, v170);
              LLVMBuildAShr();
              v173 = LLVMBuildXor();
            }

            *&v242 = v173;
            *(&v242 + 1) = LLVMConstInt();
            v274[0] = glpLLVMBuildBuiltinNoPrefix(v28, "air.clz", 2, &v242, v36, v168, v34);
            v228 = LLVMConstInt();
            glpLLVMSplatConstantVector(v228, v170);
LABEL_358:
            LODOperation = LLVMBuildSub();
            goto LABEL_310;
          case 164:
            LODOperation = glpBuildGetLODOperation(v28, a2, v10, v236);
            goto LABEL_310;
          case 167:
          case 168:
          case 169:
            v114 = v235;
            v115 = glpASTNodeGetChild(a2, 0);
            VariableExtra = glpLValueNodeGetVariableExtra(v115);
            if (*(VariableExtra + 51))
            {
              v126 = VariableExtra;
              v127 = glpLLVMGetVariablePointer(v28, VariableExtra);
              v128 = *(v126 + 48) & 0x2000000000;
              if (v114 == 169)
              {
                v129 = v128 | 0x800000;
                LLVMFloatTypeInContext();
                *&v242 = llvm::ConstantFP::get();
                *(&v242 + 1) = v242;
                LLVMConstVector();
                v130 = LLVMBuildFAdd();
              }

              else if (v114 == 168)
              {
                v129 = v128 | 0x40000000000;
                v130 = v29[1];
              }

              else
              {
                v130 = 0;
                v129 = v128 | 0x4000000000;
              }

              v274[0] = glpBuildInterpolateAt(v28, v127, v126, v129, "", v130);
              v204 = *(*(v126 + 144) + 24);
              Offset = glpDerefNodeGetOffset(v115);
              if (Offset)
              {
                v206 = Offset;
                v207 = v274[0];
                Swizzle = glpOffsetNodeGetSwizzle(Offset);
                v274[0] = glpCGSwizzle(v28, 0, 0, v207, v204, Swizzle);
                VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v206);
                if (VectorElementExpr)
                {
                  glpLLVMCGNode(v28, VectorElementExpr, 1);
                  if (LLVMTypeOf() != *(v28 + 40))
                  {
                    LLVMBuildIntCast();
                  }

                  LODOperation = LLVMBuildExtractElement();
LABEL_310:
                  v274[0] = LODOperation;
                }
              }
            }

            else
            {
              v117 = *v10;
LABEL_52:
              v274[0] = v117;
            }

            return v274[0];
          case 170:
            v119 = LLVMVoidTypeInContext();
            *&v242 = 0x300000001;
            v120 = "air.cs_barrier";
            v122 = &v242;
            v123 = v28;
            v121 = 0;
            v124 = 0;
            goto LABEL_133;
          case 171:
            v125 = "air.gamma_compress";
            goto LABEL_305;
          case 172:
            v125 = "air.gamma_expand";
            goto LABEL_305;
          case 173:
            v125 = "air.gamma_compress_xr";
            goto LABEL_305;
          case 174:
            v125 = "air.gamma_expand_xr";
            goto LABEL_305;
          default:
            return v274[0];
        }
      }

      if ((*(a1 + 320) & 0xFFFFFFFE) == 2 || (*(a1 + 832) & 2) != 0)
      {
        v5 = 0;
        goto LABEL_10;
      }
    }

    return 0;
  }

  v38 = a1;
  v39 = glpASTNodeGetChild(a2, 0);
  v40 = glpASTNodeGetChild(a2, 1u);
  v41 = glpLValueNodeGetVariableExtra(v39);
  v42 = glpDerefNodeGetOffset(v39);
  if (v42 && (OffsetExpr = glpOffsetNodeGetOffsetExpr(v42), glpIsConstantNode(OffsetExpr)))
  {
    v44 = *glpConstantNodeGetValue(OffsetExpr);
  }

  else
  {
    v44 = 0;
  }

  v48 = *(v41 + 156) + v44;
  if (!glpFindGep(v38, v41, 0, v48))
  {
    *&v242 = LLVMConstInt();
    LLVMGetInsertBlock();
    LLVMPositionBuilderAtEnd();
    v49 = LLVMBuildGEP();
    LLVMPositionBuilderAtEnd();
    glpAddGep(v38, v41, 0, v48, v49);
  }

  v50 = glpLLVMCGNode(v38, v40, 1);
  v51 = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
  v52 = glpASTNodeGetSaFlags(a2);
  v53 = glpPrecisionIndexFromSAFlags(v52);
  v235 = glpPrimitiveTypeToLLVMType(v38, v51, v53);
  v54 = v40;
  v55 = v50;
  v56 = glpASTNodeGetSaType(v54);
  v57 = glpPrimitiveTypeGetPrimitiveType(v56);
  v65 = glpMakeSwizzle(v57, v58, v59, v60, v61, v62, v63, v64, 0);
  glpCGSwizzle(v38, 0, 0, v55, v57, v65);
  v66 = v38[65];
  if (!v66)
  {
    v66 = LLVMConstInt();
    v38[65] = v66;
  }

  *&v242 = v66;
  LLVMBuildGEP();
  LLVMBuildLoad();
  v67 = LLVMBuildFMul();
  v75 = glpMakeSwizzle(v67, v68, v69, v70, v71, v72, v73, v74, 1);
  v76 = glpCGSwizzle(v38, 0, 0, v55, v57, v75);
  v77 = v38[66];
  v236 = v55;
  if (!v77)
  {
    v77 = LLVMConstInt();
    v38[66] = v77;
  }

  v237 = v77;
  LLVMBuildGEP();
  v78 = LLVMBuildLoad();
  v239 = v76;
  v240 = v78;
  v241 = v67;
  v79 = v53;
  v80 = glpLLVMGetTypeString(&v238, v51, v53);
  v272 = 0u;
  v273 = 0u;
  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  snprintf_l(&v242, 0x200uLL, 0, "%s.%s", "air.fma", v80);
  v274[0] = 0x300000001;
  v81 = v235;
  v82 = glpLLVMCallFunctionInner(v38, &v242, v235, &v239, 3, v274, 2u, "");
  v90 = glpMakeSwizzle(v82, v83, v84, v85, v86, v87, v88, v89, 2);
  v91 = glpCGSwizzle(v38, 0, 0, v236, v57, v90);
  v92 = v38[67];
  if (!v92)
  {
    v92 = LLVMConstInt();
    v38[67] = v92;
  }

  v237 = v92;
  LLVMBuildGEP();
  v93 = LLVMBuildLoad();
  v239 = v91;
  v240 = v93;
  v241 = v82;
  v94 = glpLLVMGetTypeString(&v238, v51, v79);
  v272 = 0u;
  v273 = 0u;
  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  snprintf_l(&v242, 0x200uLL, 0, "%s.%s", "air.fma", v94);
  v274[0] = 0x300000001;
  v95 = glpLLVMCallFunctionInner(v38, &v242, v81, &v239, 3, v274, 2u, "");
  v103 = glpMakeSwizzle(v95, v96, v97, v98, v99, v100, v101, v102, 3);
  v104 = glpCGSwizzle(v38, 0, 0, v236, v57, v103);
  v105 = v38[68];
  if (!v105)
  {
    v105 = LLVMConstInt();
    v38[68] = v105;
  }

  v237 = v105;
  LLVMBuildGEP();
  v106 = LLVMBuildLoad();
  v239 = v104;
  v240 = v106;
  v241 = v95;
  v107 = glpLLVMGetTypeString(&v238, v51, v79);
  v272 = 0u;
  v273 = 0u;
  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  snprintf_l(&v242, 0x200uLL, 0, "%s.%s", "air.fma", v107);
  v274[0] = 0x300000001;
  return glpLLVMCallFunctionInner(v38, &v242, v81, &v239, 3, v274, 2u, "");
}

uint64_t glpLLVMCGNegate(void *a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  v5 = glpLLVMCGNode(a1, Expr, 1);
  v6 = glpUnaryOperatorNodeGetExpr(a2);
  SaType = glpASTNodeGetSaType(v6);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
  if (ScalarType == 62 || ScalarType == 1)
  {

    return LLVMBuildFNeg();
  }

  else
  {
    v11 = a1[2];

    return MEMORY[0x2821F1568](v11, v5, "");
  }
}

uint64_t glpLLVMCGLogicalNot(void *a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  glpLLVMCGNode(a1, Expr, 1);

  return LLVMBuildNot();
}

uint64_t glpLLVMCGAssign(uint64_t *a1, uint64_t a2)
{
  v61[3] = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  Lhs = glpBinaryOperatorNodeGetLhs(a2);
  VariableExtra = glpLValueNodeGetVariableExtra(Lhs);
  Rhs = glpBinaryOperatorNodeGetRhs(a2);
  v7 = glpLLVMCGNode(a1, Rhs, 1);
  if (v7)
  {
    SaType = glpASTNodeGetSaType(Rhs);
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    v10 = glpLLVMGetVariablePointer(a1, VariableExtra);
    Offset = glpDerefNodeGetOffset(Lhs);
    SaFlags = glpASTNodeGetSaFlags(Lhs);
    v13 = glpPrecisionIndexFromSAFlags(SaFlags);
    if (!v13)
    {
      v14 = glpLValueNodeGetVariableExtra(Lhs);
      v13 = glpPrecisionIndexFromSAFlags(*(v14 + 48));
    }

    v61[0] = 0;
    LODWORD(v59) = PrimitiveType;
    if (Offset)
    {
      PreSwizzlePrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(Offset);
      if (!PreSwizzlePrimitiveType)
      {
        v16 = glpASTNodeGetSaType(Lhs);
        PreSwizzlePrimitiveType = glpPrimitiveTypeGetPrimitiveType(v16);
      }

      BankIndex = glpOffsetNodeGetBankIndex(Offset);
      if (BankIndex)
      {
        v18 = glpLLVMCGNode(a1, BankIndex, 1);
        v19 = a1[65];
        if (!v19)
        {
          v19 = LLVMConstInt();
          a1[65] = v19;
        }

        v61[1] = v19;
        v61[2] = v18;
        v10 = LLVMBuildGEP();
      }

      else
      {
        v18 = 0;
      }

      OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
      if (OffsetExpr)
      {
        v21 = OffsetExpr;
        if (*(*(VariableExtra + 144) + 24) && (PreSwizzlePrimitiveType & 0xFFFFFFFE) == 0x40)
        {
          v22 = v61;
          v23 = a1;
          v24 = VariableExtra;
          v25 = v10;
        }

        else
        {
          v23 = a1;
          v24 = VariableExtra;
          v25 = v10;
          v22 = 0;
        }

        v10 = glpBuildArrayElementPtr(v23, v24, v25, v21, v22, v18);
      }
    }

    else
    {
      PreSwizzlePrimitiveType = 0;
    }

    v26 = glpASTNodeGetSaType(Lhs);
    v27 = glpPrimitiveTypeGetPrimitiveType(v26);
    v28 = glpASTNodeGetSaFlags(Lhs);
    v29 = glpPrecisionIndexFromSAFlags(v28);
    if (Offset)
    {
      v60 = PreSwizzlePrimitiveType;
      VectorElementExpr = glpOffsetNodeGetVectorElementExpr(Offset);
      if (glpOffsetNodeGetSwizzle(Offset) || (inserted = v7, VectorElementExpr))
      {
        v27 = v60;
        v32 = glpLLVMLoadVector(a1, VariableExtra, v10, v60, v13, *(*(VariableExtra + 144) + 24), *(*(VariableExtra + 144) + 28));
        if (VectorElementExpr)
        {
          v33 = glpLLVMCGNode(a1, VectorElementExpr, 1);
          v34 = glpASTNodeGetSaFlags(VectorElementExpr);
          v35 = glpPrecisionIndexFromSAFlags(v34);
          if (v35)
          {
            v36 = v60;
            if (v35 == 3)
            {
              v59 = v33;
            }

            else
            {
              v59 = LLVMBuildIntCast();
            }
          }

          else
          {
            v59 = v33;
            v36 = v60;
          }

          Swizzle = glpOffsetNodeGetSwizzle(Offset);
          if (Swizzle)
          {
            v39 = Swizzle;
            v56 = v13;
            v55[1] = v55;
            v55[2] = v32;
            v40 = Swizzle & 7;
            MEMORY[0x28223BE20](Swizzle, 8 * v40);
            v57 = (v55 - v41);
            bzero(v55 - v41, v42);
            v58 = v40;
            if (v40)
            {
              v43 = a1 + 65;
              v44 = 3;
              v45 = v57;
              v46 = v58;
              do
              {
                v47 = (v39 >> v44) & 3;
                v48 = v43[v47];
                if (!v48)
                {
                  v48 = LLVMConstInt();
                  v43[v47] = v48;
                }

                *v45++ = v48;
                v44 += 2;
                --v46;
              }

              while (v46);
            }

            LLVMConstVector();
            LLVMBuildExtractElement();
            LODWORD(v13) = v56;
            v36 = v60;
          }

          inserted = LLVMBuildInsertElement();
          v29 = v13;
          v27 = v36;
        }

        else
        {
          v37 = glpOffsetNodeGetSwizzle(Offset);
          inserted = glpCGSwizzle(a1, v32, v60, v7, v59, v37);
          v29 = v13;
        }
      }
    }

    else
    {
      inserted = v7;
    }

    v49 = *(VariableExtra + 144);
    v50 = *(v49 + 24);
    v51 = *(v49 + 28);
    Category = glpPrimitiveTypeGetCategory(v27);
    if ((Category - 1) >= 3)
    {
      if (Category == 4)
      {
        MEMORY[0x23EE85440](a1[5], 0);
        LLVMBuildPointerCast();
      }

      else if (!Category)
      {
        abort();
      }
    }

    else if (v50 && !glpLLVMTypesEqual(a1, v50, v51, v27, v29))
    {
      LLVMTypeOf();
      v53 = LLVMGetElementType();
      glpLLVMPackVectorInner(a1, inserted, v53);
    }

    LLVMBuildStore();
  }

  return v7;
}

uint64_t glpLLVMCGCommaExpr(void *a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  ExprCount = glpCommaExprNodeGetExprCount(a2);
  if (!ExprCount)
  {
    return 0;
  }

  v7 = ExprCount;
  v8 = 0;
  do
  {
    Expr = glpCommaExprNodeGetExpr(a2, v8);
    memset(v23, 0, sizeof(v23));
    v20 = 0;
    v21 = 0;
    memset(v22, 0, sizeof(v22));
    if (Expr)
    {
      v10 = 0;
      v11 = v23;
      while (1)
      {
        v12 = v10;
        if (!glpIsComponentAssigment(Expr, &v21, &v20 + 1, &v20, v11, 0))
        {
          v8 += v12;
          if (!v12)
          {
            goto LABEL_11;
          }

          goto LABEL_20;
        }

        *(v22 + v12) = Expr;
        v13 = v8 + v12 + 1;
        if (v13 >= v7)
        {
          break;
        }

        Expr = glpCommaExprNodeGetExpr(a2, v13);
        if (Expr)
        {
          ++v11;
          v10 = v12 + 1;
          if (v12 < 7)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      Expr = 0;
LABEL_19:
      v17 = v8 + v12++;
      v8 = v17 + 1;
      if (!v12)
      {
        goto LABEL_11;
      }

LABEL_20:
      if (a3)
      {
        v18 = v8 == v7;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      result = glpProcessComponentWiseVectorAssignment(a1, v21, v20, v22, v23, v19, v12);
    }

    else
    {
LABEL_11:
      ++v8;
      if (a3)
      {
        v14 = v8 == v7;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      result = glpLLVMCGNode(a1, Expr, v15);
    }
  }

  while (v8 < v7);
  return result;
}

uint64_t *glpLLVMCGParameterDeclaration(uint64_t a1, uint64_t a2)
{
  Extra = glpParameterDeclarationNodeGetExtra(a2);
  if (!*(Extra + 144))
  {
    v4 = (*(*(a1 + 152) + 8))(**(a1 + 152), 40, "llvm codegen extra");
    *(Extra + 144) = v4;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  return glpLLVMCGGlobalVariable(a1, Extra);
}

uint64_t glpLLVMCGFunctionPrototype(void *a1, uint64_t a2)
{
  v280 = *MEMORY[0x277D85DE8];
  Name = glpFunctionPrototypeNodeGetName(a2);
  v6 = glpStringsEqual(Name, v5, "main", 0x83863A00000004);
  Extra = glpFunctionPrototypeNodeGetExtra(a2);
  ParameterCount = glpFunctionPrototypeNodeGetParameterCount(a2);
  if (ParameterCount)
  {
    v9 = ParameterCount;
    for (i = 0; i != v9; ++i)
    {
      Parameter = glpFunctionPrototypeNodeGetParameter(a2, i);
      glpLLVMCGNode(a1, Parameter, 0);
    }
  }

  ReturnOutParam = glpFunctionPrototypeNodeGetReturnOutParam(a2);
  if (ReturnOutParam)
  {
    glpLLVMCGNode(a1, ReturnOutParam, 0);
  }

  if (!v6)
  {
    v15 = *(**(Extra + 152) + 36);
    goto LABEL_40;
  }

  v13 = *(a1 + 169);
  if (v13 >= 1)
  {
    LODWORD(v236) = v6;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 8 * v13;
    v18 = -1;
    v19 = -1;
    v20 = -1;
    while (1)
    {
      v21 = glpLayoutObjectFind(*(*(a1[85] + v14) + 8), 34);
      v22 = *(a1 + 80);
      if ((v22 - 1) < 3)
      {
        goto LABEL_10;
      }

      if (v22 == 4)
      {
        v24 = *(v21 + 4);
        if (v24 == 23)
        {
          v18 = v15;
        }

        if (v24 == 24)
        {
          v16 = 1;
        }

        else
        {
          ++v15;
        }

        goto LABEL_23;
      }

      if (!v22)
      {
        break;
      }

LABEL_23:
      v14 += 8;
      if (v17 == v14)
      {
        *(a1 + 201) = 0;
        if (v16)
        {
          if (v18 == -1)
          {
            *(a1 + 201) = 1;
            v18 = v15++;
          }

          v6 = v236;
          *(a1 + 200) = v18;
        }

        else
        {
          v6 = v236;
        }

        if ((~*(a1 + 416) & 3) == 0)
        {
          if (v19 == -1)
          {
LABEL_36:
            *(a1 + 203) = 1;
            v19 = v15++;
          }

          *(a1 + 202) = v19;
          if (v20 == -1)
          {
            *(a1 + 205) = 1;
            v20 = v15++;
          }

          *(a1 + 204) = v20;
        }

        goto LABEL_40;
      }
    }

    v23 = *(v21 + 4);
    if (v23 != 28)
    {
      if ((a1[104] & 1) == 0)
      {
        goto LABEL_23;
      }

      if (v23 == 18)
      {
        v20 = v15;
      }

      else
      {
        if (v23 != 17)
        {
          goto LABEL_23;
        }

        v19 = v15;
      }
    }

LABEL_10:
    ++v15;
    goto LABEL_23;
  }

  v15 = 0;
  *(a1 + 201) = 0;
  if ((~*(a1 + 416) & 3) == 0)
  {
    v20 = -1;
    goto LABEL_36;
  }

LABEL_40:
  if ((*(a1 + 80) | 2) == 3 && v6)
  {
    v25 = *(a1 + 173);
  }

  else
  {
    v25 = 0;
  }

  v26 = *(*(Extra + 152) + 8);
  if ((v26 & 2) != 0)
  {
    v27 = *(a1 + 177);
  }

  else
  {
    v27 = 0;
  }

  v236 = *(Extra + 152);
  if ((v26 & 4) != 0)
  {
    v28 = *(a1 + 181);
  }

  else
  {
    v28 = 0;
  }

  v29 = *(a1 + 416);
  v31 = (v29 & 2) == 0 || v28 < 1;
  v32 = (v29 & 1) == 0;
  v33 = (v29 & 1) == 0 || v31;
  LODWORD(v238) = v33;
  v34 = !v32 && !v31;
  LODWORD(v237) = v34;
  v242 = v27;
  v35 = v6;
  if ((v26 & 8) != 0)
  {
    v36 = *(a1 + 149);
  }

  else
  {
    v36 = 0;
  }

  LODWORD(v239) = v25 + v15;
  LODWORD(v241) = v26 & 1;
  v37 = v15;
  v39 = *(Extra + 40);
  v38 = *(Extra + 48);
  result = glpStringHashGet(a1[92], v39, v38);
  v240 = v36;
  v243 = v28;
  if (result)
  {
    if (!v35)
    {
      return result;
    }

LABEL_97:
    v231 = v229;
    v232 = result;
    v76 = v242;
    v230 = v241 + v239 + v242 + v28 + v237 + 2 * v36;
    v77 = 8 * (v230 + 1);
    MEMORY[0x28223BE20](result, v41);
    v79 = &v229[-v78];
    bzero(&v229[-v78], v77);
    v241 = v79;
    bzero(v79, v77);
    v80 = *(a1 + 169);
    v81 = *(a1 + 416);
    if (v81)
    {
      v82 = "air.vertex_id";
    }

    else
    {
      v82 = 0;
    }

    if (v81)
    {
      v83 = "air.instance_id";
    }

    else
    {
      v83 = 0;
    }

    v84 = "air.location_index";
    if ((v81 & 1) == 0)
    {
      v84 = "air.location";
    }

    v237 = v84;
    if (v80 >= 1)
    {
      v234 = v83;
      v235 = v82;
      v85 = 0;
      v86 = 0;
      v239 = 0;
      v87 = a1 + 65;
      if (v81)
      {
        v88 = 18;
      }

      else
      {
        v88 = 12;
      }

      LODWORD(v236) = v88;
      v89 = 8 * v80;
      while (1)
      {
        v90 = *(a1[85] + v85);
        v91 = glpLayoutObjectFind(*(v90 + 8), 34);
        v92 = *(a1 + 80);
        if ((v92 - 1) < 3)
        {
          v93 = glpLayoutObjectFind(*(v90 + 8), 34);
          if (v86 > 7)
          {
            v94 = LLVMConstInt();
          }

          else
          {
            v94 = v87[v86];
            if (!v94)
            {
              v94 = LLVMConstInt();
              v87[v86] = v94;
            }
          }

          v99 = 0;
          *(&v251[3] + 1) = 0;
          *(&v251[2] + 8) = 0u;
          *(&v251[1] + 8) = 0u;
          *(v251 + 8) = 0u;
          *&v251[0] = v94;
          switch(*(v93 + 4))
          {
            case 1:
            case 0xD:
            case 0xF:
            case 0x10:
            case 0x13:
            case 0x14:
            case 0x15:
            case 0x19:
            case 0x1A:
              *(&v251[0] + 1) = LLVMMDStringInContext();
              goto LABEL_229;
            case 2:
              glpLayoutObjectFind(*(v90 + 8), 41);
              *(&v251[0] + 1) = LLVMMDStringInContext();
              goto LABEL_227;
            case 3:
              glpLayoutObjectFind(*(v90 + 8), 42);
              *(&v251[0] + 1) = LLVMMDStringInContext();
              goto LABEL_227;
            case 0xE:
              v109 = glpLayoutObjectFind(*(v90 + 8), 43);
              *(&v251[0] + 1) = LLVMMDStringInContext();
              v110 = *(v109 + 4);
              if (v110 > 7)
              {
                v111 = LLVMConstInt();
              }

              else
              {
                v111 = v87[v110];
                if (!v111)
                {
                  v111 = LLVMConstInt();
                  v87[v110] = v111;
                }
              }

              goto LABEL_228;
            case 0x1C:
              v112 = glpLayoutObjectFind(*(v90 + 8), 35);
              *(&v251[0] + 1) = LLVMMDStringInContext();
              if (a1[104])
              {
                v244 = 0u;
                v245 = 0u;
                v129 = *(v112 + 4);
                v130 = glpLayoutObjectFind(*(v90 + 8), 38);
                if (v130 && *(v130 + 4) || (v129 & 0xFFFFFFF8) != 8)
                {
                  if ((*(v90 + 53) & 2) != 0)
                  {
                    snprintf(&v244, 0x1FuLL, "user(patch%u)");
                  }

                  else
                  {
                    snprintf(&v244, 0x1FuLL, "user(slot%u)");
                  }
                }

                else
                {
                  snprintf(&v244, 0x1FuLL, "user(tex_coord%u)");
                }

                strlen(&v244);
LABEL_227:
                v111 = LLVMMDStringInContext();
LABEL_228:
                *&v251[1] = v111;
              }

              else
              {
                *&v251[1] = LLVMMDStringInContext();
                v113 = *(v112 + 4);
                if (v113 > 7)
                {
                  v114 = LLVMConstInt();
                }

                else
                {
                  v114 = v87[v113];
                  if (!v114)
                  {
                    v114 = LLVMConstInt();
                    v87[v113] = v114;
                  }
                }

                *(&v251[1] + 1) = v114;
              }

              break;
            default:
              goto LABEL_230;
          }

          goto LABEL_229;
        }

        v95 = v91;
        if (v92 == 4)
        {
          if (*(v91 + 4) != 24)
          {
            v100 = glpLayoutObjectFind(*(v90 + 8), 34);
            v101 = glpPrecisionIndexFromSAFlags(*(v90 + 48));
            v278 = 0u;
            v279 = 0u;
            v276 = 0u;
            v277 = 0u;
            v274 = 0u;
            v275 = 0u;
            v272 = 0u;
            v273 = 0u;
            v270 = 0u;
            v271 = 0u;
            v268 = 0u;
            v269 = 0u;
            v266 = 0u;
            v267 = 0u;
            v264 = 0u;
            v265 = 0u;
            v262 = 0u;
            v263 = 0u;
            v260 = 0u;
            v261 = 0u;
            v258 = 0u;
            v259 = 0u;
            v256 = 0u;
            v257 = 0u;
            v254 = 0u;
            v255 = 0u;
            v252 = 0u;
            v253 = 0u;
            memset(v251, 0, sizeof(v251));
            glpMetalGetArgTypeNameFromASTType(v251, *v90, v101, 0);
            v246 = 0u;
            v247 = 0u;
            v244 = 0u;
            v245 = 0u;
            if (v86 > 7)
            {
              v102 = LLVMConstInt();
            }

            else
            {
              v102 = v87[v86];
              if (!v102)
              {
                v102 = LLVMConstInt();
                v87[v86] = v102;
              }
            }

            v99 = 0;
            *&v244 = v102;
            v106 = *(v100 + 4);
            if (v106 <= 13)
            {
              if (v106 <= 2)
              {
                if (v106 != 1)
                {
                  if (v106 == 2)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_230;
                }

                *(&v244 + 1) = LLVMMDStringInContext();
                *&v245 = LLVMMDStringInContext();
                *(&v245 + 1) = LLVMMDStringInContext();
                *&v246 = LLVMMDStringInContext();
                strlen(v251);
                *(&v246 + 1) = LLVMMDStringInContext();
              }

              else
              {
                if (v106 != 3 && v106 != 11 && v106 != 12)
                {
                  goto LABEL_230;
                }

LABEL_213:
                *(&v244 + 1) = LLVMMDStringInContext();
                *&v245 = LLVMMDStringInContext();
                strlen(v251);
                *(&v245 + 1) = LLVMMDStringInContext();
              }
            }

            else if (v106 > 22)
            {
              if (v106 == 23)
              {
                goto LABEL_213;
              }

              if (v106 == 27)
              {
                v132 = glpLayoutObjectFind(*(v90 + 8), 45);
                goto LABEL_208;
              }

              if (v106 != 28)
              {
                goto LABEL_230;
              }

              v115 = glpLayoutObjectFind(*(v90 + 8), 35);
              v116 = *(v90 + 48);
              v117 = "air.perspective";
              if ((v116 & 0x2000000000) != 0)
              {
                v117 = "air.no_perspective";
              }

              if ((v116 & 0x1000000000) != 0)
              {
                v117 = "air.flat";
              }

              v233 = v117;
              v118 = "air.center";
              if ((v116 & 0x1000000000) == 0)
              {
                v118 = "air.interpolation_function";
                if ((v116 & 0x1000000) == 0)
                {
                  v119 = "air.sample";
                  if ((v116 & 0x40000000000) == 0)
                  {
                    v119 = "air.center";
                  }

                  if ((v116 & 0x4000000000) != 0)
                  {
                    v118 = "air.centroid";
                  }

                  else
                  {
                    v118 = v119;
                  }
                }
              }

              *(&v244 + 1) = LLVMMDStringInContext();
              if (a1[104])
              {
                v249 = 0u;
                v250 = 0u;
                v136 = *(v115 + 4);
                v137 = glpLayoutObjectFind(*(v90 + 8), 38);
                if (v137)
                {
                  v138 = *(v137 + 4) == 0;
                }

                else
                {
                  v138 = 1;
                }

                v139 = v233;
                if (v138 && (v136 & 0xFFFFFFF8) == 8)
                {
                  snprintf(&v249, 0x1FuLL, "user(tex_coord%u)");
                }

                else
                {
                  snprintf(&v249, 0x1FuLL, "user(slot%u)");
                }

                strlen(&v249);
                *&v245 = LLVMMDStringInContext();
                strlen(v139);
                *(&v245 + 1) = LLVMMDStringInContext();
                strlen(v118);
                *&v246 = LLVMMDStringInContext();
                *(&v246 + 1) = LLVMMDStringInContext();
                strlen(v251);
                *&v247 = LLVMMDStringInContext();
              }

              else
              {
                *&v245 = LLVMMDStringInContext();
                v120 = *(v115 + 4);
                if (v120 > 7)
                {
                  v121 = LLVMConstInt();
                  v122 = v233;
                }

                else
                {
                  v121 = v87[v120];
                  v122 = v233;
                  if (!v121)
                  {
                    v121 = LLVMConstInt();
                    v87[v120] = v121;
                  }
                }

                *(&v245 + 1) = v121;
                strlen(v122);
                *&v246 = LLVMMDStringInContext();
                strlen(v118);
                *(&v246 + 1) = LLVMMDStringInContext();
                *&v247 = LLVMMDStringInContext();
                strlen(v251);
                *(&v247 + 1) = LLVMMDStringInContext();
              }
            }

            else
            {
              if (v106 != 14)
              {
                if (v106 == 16 || v106 == 22)
                {
                  goto LABEL_213;
                }

LABEL_230:
                *&v241[8 * v86++] = v99;
                goto LABEL_231;
              }

              v132 = glpLayoutObjectFind(*(v90 + 8), 43);
LABEL_208:
              *(&v244 + 1) = LLVMMDStringInContext();
              v133 = *(v132 + 4);
              if (v133 > 7)
              {
                v134 = LLVMConstInt();
              }

              else
              {
                v134 = v87[v133];
                if (!v134)
                {
                  v134 = LLVMConstInt();
                  v87[v133] = v134;
                }
              }

              *&v245 = v134;
              *(&v245 + 1) = LLVMMDStringInContext();
              strlen(v251);
              *&v246 = LLVMMDStringInContext();
            }

LABEL_229:
            v99 = LLVMMDNodeInContext();
            goto LABEL_230;
          }
        }

        else if (!v92)
        {
          v96 = *(a1 + 416);
          if (*(v91 + 4) == 28)
          {
            if ((v96 & 1) == 0)
            {
              v97 = glpLayoutObjectFind(*(v90 + 8), 35);
              memset(v251, 0, 32);
              if (v86 > 7)
              {
                v98 = LLVMConstInt();
              }

              else
              {
                v98 = v87[v86];
                if (!v98)
                {
                  v98 = LLVMConstInt();
                  v87[v86] = v98;
                }
              }

              *&v251[0] = v98;
              *(&v251[0] + 1) = LLVMMDStringInContext();
              *&v251[1] = LLVMMDStringInContext();
              v123 = *(v97 + 4);
              if (v123 > 7)
              {
                v124 = LLVMConstInt();
              }

              else
              {
                v124 = v87[v123];
                if (!v124)
                {
                  v124 = LLVMConstInt();
                  v87[v123] = v124;
                }
              }

              *(&v251[1] + 1) = v124;
              goto LABEL_219;
            }

            v107 = glpPrecisionIndexFromSAFlags(*(v90 + 48));
            v278 = 0u;
            v279 = 0u;
            v276 = 0u;
            v277 = 0u;
            v274 = 0u;
            v275 = 0u;
            v272 = 0u;
            v273 = 0u;
            v270 = 0u;
            v271 = 0u;
            v268 = 0u;
            v269 = 0u;
            v266 = 0u;
            v267 = 0u;
            v264 = 0u;
            v265 = 0u;
            v262 = 0u;
            v263 = 0u;
            v260 = 0u;
            v261 = 0u;
            v258 = 0u;
            v259 = 0u;
            v256 = 0u;
            v257 = 0u;
            v254 = 0u;
            v255 = 0u;
            v252 = 0u;
            v253 = 0u;
            memset(v251, 0, sizeof(v251));
            glpMetalGetArgTypeNameFromASTType(v251, *v90, v107, 0);
            v249 = 0u;
            v250 = 0u;
            snprintf(&v249, 0x1FuLL, "attrib%d", v239);
            v248 = 0;
            v246 = 0u;
            v247 = 0u;
            v244 = 0u;
            v245 = 0u;
            if (v86 > 7)
            {
              v108 = LLVMConstInt();
            }

            else
            {
              v108 = v87[v86];
              if (!v108)
              {
                v108 = LLVMConstInt();
                v87[v86] = v108;
              }
            }

            *&v244 = v108;
            *(&v244 + 1) = LLVMMDStringInContext();
            *&v245 = LLVMMDStringInContext();
            if (v239 > 7)
            {
              v125 = LLVMConstInt();
            }

            else
            {
              v125 = v87[v239];
              if (!v125)
              {
                v126 = v239;
                v125 = LLVMConstInt();
                v87[v126] = v125;
              }
            }

            *(&v245 + 1) = v125;
            v127 = a1[66];
            if (!v127)
            {
              v127 = LLVMConstInt();
              a1[66] = v127;
            }

            *&v246 = v127;
            *(&v246 + 1) = LLVMMDStringInContext();
            strlen(v251);
            *&v247 = LLVMMDStringInContext();
            *(&v247 + 1) = LLVMMDStringInContext();
            strlen(&v249);
            v248 = LLVMMDStringInContext();
            *&v241[8 * v86] = LLVMMDNodeInContext();
            v128 = v86 + 1;
            v239 = (v239 + 1);
LABEL_220:
            v86 = v128;
            goto LABEL_231;
          }

          if (v96)
          {
            v103 = glpPrecisionIndexFromSAFlags(*(v90 + 48));
            v278 = 0u;
            v279 = 0u;
            v276 = 0u;
            v277 = 0u;
            v274 = 0u;
            v275 = 0u;
            v272 = 0u;
            v273 = 0u;
            v270 = 0u;
            v271 = 0u;
            v268 = 0u;
            v269 = 0u;
            v266 = 0u;
            v267 = 0u;
            v264 = 0u;
            v265 = 0u;
            v262 = 0u;
            v263 = 0u;
            v260 = 0u;
            v261 = 0u;
            v258 = 0u;
            v259 = 0u;
            v256 = 0u;
            v257 = 0u;
            v254 = 0u;
            v255 = 0u;
            v252 = 0u;
            v253 = 0u;
            memset(v251, 0, sizeof(v251));
            glpMetalGetArgTypeNameFromASTType(v251, *v90, v103, 1);
            v104 = *(v95 + 4);
            if (v104 == 18)
            {
              v244 = 0u;
              v245 = 0u;
              if (v86 > 7)
              {
                v131 = LLVMConstInt();
              }

              else
              {
                v131 = v87[v86];
                if (!v131)
                {
                  v131 = LLVMConstInt();
                  v87[v86] = v131;
                }
              }

              *&v244 = v131;
              v135 = v234;
LABEL_218:
              strlen(v135);
              *(&v244 + 1) = LLVMMDStringInContext();
              *&v245 = LLVMMDStringInContext();
              strlen(v251);
              *(&v245 + 1) = LLVMMDStringInContext();
LABEL_219:
              *&v241[8 * v86] = LLVMMDNodeInContext();
              v128 = v86 + 1;
              goto LABEL_220;
            }

            if (v104 == 17)
            {
              v244 = 0u;
              v245 = 0u;
              if (v86 > 7)
              {
                v105 = LLVMConstInt();
              }

              else
              {
                v105 = v87[v86];
                if (!v105)
                {
                  v105 = LLVMConstInt();
                  v87[v86] = v105;
                }
              }

              *&v244 = v105;
              v135 = v235;
              goto LABEL_218;
            }
          }
        }

LABEL_231:
        v85 += 8;
        if (v89 == v85)
        {
          if (*(a1 + 201))
          {
            v251[0] = 0uLL;
            if (v86 > 7)
            {
              v140 = LLVMConstInt();
              v76 = v242;
              LODWORD(v28) = v243;
            }

            else
            {
              v76 = v242;
              LODWORD(v28) = v243;
LABEL_248:
              v140 = a1[v86 + 65];
              if (!v140)
              {
                v140 = LLVMConstInt();
                a1[v86 + 65] = v140;
              }
            }

            *&v251[0] = v140;
            *(&v251[0] + 1) = LLVMMDStringInContext();
            *&v241[8 * v86++] = LLVMMDNodeInContext();
          }

          else
          {
            v76 = v242;
            LODWORD(v28) = v243;
          }

          if (*(a1 + 203))
          {
            memset(v251, 0, 32);
            if (v86 > 7)
            {
              v141 = LLVMConstInt();
              goto LABEL_260;
            }

LABEL_258:
            v141 = a1[v86 + 65];
            if (!v141)
            {
              v141 = LLVMConstInt();
              a1[v86 + 65] = v141;
            }

LABEL_260:
            *&v251[0] = v141;
            *(&v251[0] + 1) = LLVMMDStringInContext();
            *&v251[1] = LLVMMDStringInContext();
            *(&v251[1] + 1) = LLVMMDStringInContext();
            *&v241[8 * v86++] = LLVMMDNodeInContext();
          }

          if (*(a1 + 205))
          {
            memset(v251, 0, 32);
            if (v86 > 7)
            {
              v142 = LLVMConstInt();
            }

            else
            {
LABEL_263:
              v142 = a1[v86 + 65];
              if (!v142)
              {
                v142 = LLVMConstInt();
                a1[v86 + 65] = v142;
              }
            }

            *&v251[0] = v142;
            *(&v251[0] + 1) = LLVMMDStringInContext();
            *&v251[1] = LLVMMDStringInContext();
            *(&v251[1] + 1) = LLVMMDStringInContext();
            *&v241[8 * v86++] = LLVMMDNodeInContext();
          }

          goto LABEL_267;
        }
      }
    }

    if (*(a1 + 201))
    {
      v86 = 0;
      v251[0] = 0uLL;
      goto LABEL_248;
    }

    if (*(a1 + 203))
    {
      v86 = 0;
      memset(v251, 0, 32);
      goto LABEL_258;
    }

    if (*(a1 + 205))
    {
      v86 = 0;
      memset(v251, 0, 32);
      goto LABEL_263;
    }

    v86 = 0;
LABEL_267:
    if ((*(a1 + 80) | 2) == 3)
    {
      v143 = *(a1 + 173);
      if (v143 >= 1)
      {
        v144 = 0;
        v145 = 8 * v143;
        v146 = &v241[8 * v86];
        do
        {
          *&v146[v144] = glpLLVMVertexGeometryMetadata(a1, *(a1[87] + v144), v86);
          v144 += 8;
          ++v86;
        }

        while (v145 != v144);
      }
    }

    v147 = *(a1 + 416);
    DefaultUniformLocationCount = glpLinkedProgramGetDefaultUniformLocationCount(a1[17]);
    v149 = 4 * glpLinkedProgramGetSubroutineUniformLocationCount(a1[17], *(a1 + 80)) + 16 * DefaultUniformLocationCount;
    if (v147)
    {
      memset(v251, 0, sizeof(v251));
      if (v86 > 7)
      {
        v151 = LLVMConstInt();
      }

      else
      {
        v151 = a1[v86 + 65];
        if (!v151)
        {
          v151 = LLVMConstInt();
          a1[v86 + 65] = v151;
        }
      }

      *&v251[0] = v151;
      *(&v251[0] + 1) = LLVMMDStringInContext();
      *&v251[1] = LLVMMDStringInContext();
      if (v149 > 7)
      {
        v153 = LLVMConstInt();
      }

      else
      {
        v153 = a1[v149 + 65];
        if (!v153)
        {
          v153 = LLVMConstInt();
          a1[v149 + 65] = v153;
        }
      }

      *(&v251[1] + 1) = v153;
      *&v251[2] = LLVMMDStringInContext();
      *(&v251[2] + 1) = LLVMConstInt();
      v154 = a1[66];
      if (!v154)
      {
        v154 = LLVMConstInt();
        a1[66] = v154;
      }

      *&v251[3] = v154;
      *(&v251[3] + 1) = LLVMMDStringInContext();
    }

    else
    {
      memset(v251, 0, 32);
      if (v86 > 7)
      {
        v150 = LLVMConstInt();
      }

      else
      {
        v150 = a1[v86 + 65];
        if (!v150)
        {
          v150 = LLVMConstInt();
          a1[v86 + 65] = v150;
        }
      }

      *&v251[0] = v150;
      *(&v251[0] + 1) = LLVMMDStringInContext();
      *&v251[1] = LLVMMDStringInContext();
      if (v149 > 7)
      {
        v152 = LLVMConstInt();
      }

      else
      {
        v152 = a1[v149 + 65];
        if (!v152)
        {
          v152 = LLVMConstInt();
          a1[v149 + 65] = v152;
        }
      }

      *(&v251[1] + 1) = v152;
    }

    *&v241[8 * v86] = LLVMMDNodeInContext();
    if (a1[104])
    {
      *(a1 + 206) = v76;
      if (!v76)
      {
        v156 = v86 + 1;
LABEL_330:
        if (v28 >= 1)
        {
          v176 = 0;
          v177 = v28;
          v178 = &v241[8 * v156];
          v179 = a1 + 65;
          v180 = &a1[v156 + 65];
          v242 = v156;
          do
          {
            v181 = v156 + v176;
            v182 = *(a1[91] + 8 * v176);
            if (a1[104])
            {
              memset(v251, 0, 48);
              if (v181 > 7)
              {
                v184 = LLVMConstInt();
              }

              else
              {
                v184 = v180[v176];
                if (!v184)
                {
                  v184 = LLVMConstInt();
                  v180[v176] = v184;
                }
              }

              *&v251[0] = v184;
              *(&v251[0] + 1) = LLVMMDStringInContext();
              *&v251[1] = LLVMMDStringInContext();
              v187 = *v182 + 32;
              if (v187 > 7)
              {
                v188 = LLVMConstInt();
              }

              else
              {
                v188 = v179[v187];
                if (!v188)
                {
                  v189 = v187;
                  v188 = LLVMConstInt();
                  v179[v189] = v188;
                }
              }

              *(&v251[1] + 1) = v188;
              v192 = a1[66];
              if (!v192)
              {
                v192 = LLVMConstInt();
                a1[66] = v192;
              }

              *&v251[2] = v192;
              *(&v251[2] + 1) = LLVMMDStringInContext();
            }

            else
            {
              memset(v251, 0, sizeof(v251));
              if (v181 > 7)
              {
                v183 = LLVMConstInt();
              }

              else
              {
                v183 = v180[v176];
                if (!v183)
                {
                  v183 = LLVMConstInt();
                  v180[v176] = v183;
                }
              }

              *&v251[0] = v183;
              *(&v251[0] + 1) = LLVMMDStringInContext();
              *&v251[1] = LLVMMDStringInContext();
              v185 = *v182;
              if (v185 > 7)
              {
                v186 = LLVMConstInt();
              }

              else
              {
                v186 = v179[v185];
                if (!v186)
                {
                  v186 = LLVMConstInt();
                  v179[v185] = v186;
                }
              }

              *(&v251[1] + 1) = v186;
              *&v251[2] = LLVMMDStringInContext();
              v190 = v182[2];
              if (v190 > 7)
              {
                v191 = LLVMConstInt();
              }

              else
              {
                v191 = v179[v190];
                if (!v191)
                {
                  v191 = LLVMConstInt();
                  v179[v190] = v191;
                }
              }

              *(&v251[2] + 1) = v191;
              *&v251[3] = LLVMMDStringInContext();
              v193 = v182[1];
              if (v193 > 7)
              {
                v194 = LLVMConstInt();
              }

              else
              {
                v194 = v179[v193];
                if (!v194)
                {
                  v194 = LLVMConstInt();
                  v179[v193] = v194;
                }
              }

              *(&v251[3] + 1) = v194;
            }

            *&v178[8 * v176++] = LLVMMDNodeInContext();
          }

          while (v177 != v176);
          LODWORD(v156) = v242 + v176;
        }

        v195 = v240;
        if ((v238 & 1) == 0)
        {
          v251[2] = 0uLL;
          if (v156 > 7)
          {
            v196 = LLVMConstInt();
          }

          else
          {
            v196 = a1[v156 + 65];
            if (!v196)
            {
              v196 = LLVMConstInt();
              a1[v156 + 65] = v196;
            }
          }

          *&v251[0] = v196;
          *(&v251[0] + 1) = LLVMMDStringInContext();
          *&v251[1] = LLVMMDStringInContext();
          *(&v251[1] + 1) = LLVMConstInt();
          v197 = a1[66];
          if (!v197)
          {
            v197 = LLVMConstInt();
            a1[66] = v197;
          }

          *&v251[2] = v197;
          *(&v251[2] + 1) = LLVMMDStringInContext();
          *&v241[8 * v156] = LLVMMDNodeInContext();
          LODWORD(v156) = v156 + 1;
        }

        if ((a1[104] & 1) == 0)
        {
LABEL_375:
          if (v195 >= 1)
          {
            v199 = 0;
            v200 = 0;
            v201 = v156;
            v202 = v195;
            v203 = v156 + v195;
            v239 = &v241[8 * v203];
            v240 = v203;
            v204 = "air.binding";
            v205 = "air.sampler";
            v238 = &v241[8 * v156];
            v235 = &a1[v156 + 65];
            v236 = &a1[v203 + 65];
            v206 = a1 + 65;
            v233 = v202;
            v234 = v201;
            do
            {
              v207 = &v201[v200];
              v208 = &v199[a1[75]];
              v243 = *(v208 + 10);
              v242 = v243;
              if (a1[104])
              {
                v237 = v199;
                v210 = v205;
                v211 = v204;
                v278 = 0u;
                v279 = 0u;
                v276 = 0u;
                v277 = 0u;
                v274 = 0u;
                v275 = 0u;
                v272 = 0u;
                v273 = 0u;
                v270 = 0u;
                v271 = 0u;
                v268 = 0u;
                v269 = 0u;
                v266 = 0u;
                v267 = 0u;
                v264 = 0u;
                v265 = 0u;
                v262 = 0u;
                v263 = 0u;
                v260 = 0u;
                v261 = 0u;
                v258 = 0u;
                v259 = 0u;
                v256 = 0u;
                v257 = 0u;
                v254 = 0u;
                v255 = 0u;
                v252 = 0u;
                v253 = 0u;
                memset(v251, 0, sizeof(v251));
                v212 = *(v208 + 9);
                PPTextarget = glpPrimitiveSamplerGetPPTextarget(v212);
                if (PPTextarget >= 0x12)
                {
                  goto LABEL_433;
                }

                v214 = (&off_278B4DE18)[PPTextarget];
                PPDatatype = glpPrimitiveSamplerGetPPDatatype(v212);
                if (PPDatatype)
                {
                  if (PPDatatype == 3)
                  {
                    v216 = "uint";
                  }

                  else
                  {
                    if (PPDatatype != 2)
                    {
                      goto LABEL_433;
                    }

                    v216 = "int";
                  }
                }

                else
                {
                  v216 = "float";
                }

                v219 = glpPrimitiveSamplerGetPPTextarget(v212);
                if (v219 >= 0x12)
                {
                  printf("Unsupported PP_TEX_TARGET: %d\n", v219);
                  abort();
                }

                snprintf_l(v251, 0x200uLL, 0, "%s<%s, %s>", v214, v216, (&off_278B4DEA8)[v219]);
                *(a1[64] + 4 * v200) = v243;
                v246 = 0u;
                v247 = 0u;
                v244 = 0u;
                v245 = 0u;
                if (v207 > 7)
                {
                  v220 = LLVMConstInt();
                  v202 = v233;
                  v201 = v234;
                  v204 = v211;
                }

                else
                {
                  v201 = v234;
                  v220 = *&v235[8 * v200];
                  v202 = v233;
                  v204 = v211;
                  if (!v220)
                  {
                    v220 = LLVMConstInt();
                    *&v235[8 * v200] = v220;
                  }
                }

                *&v244 = v220;
                *(&v244 + 1) = LLVMMDStringInContext();
                *&v245 = LLVMMDStringInContext();
                v205 = v210;
                if (v200 > 7)
                {
                  v221 = LLVMConstInt();
                  v199 = v237;
                }

                else
                {
                  v221 = v206[v200];
                  v199 = v237;
                  if (!v221)
                  {
                    v221 = LLVMConstInt();
                    v206[v200] = v221;
                  }
                }

                *(&v245 + 1) = v221;
                v222 = a1[66];
                if (!v222)
                {
                  v222 = LLVMConstInt();
                  a1[66] = v222;
                }

                *&v246 = v222;
                *(&v246 + 1) = LLVMMDStringInContext();
                *&v247 = LLVMMDStringInContext();
                strlen(v251);
                *(&v247 + 1) = LLVMMDStringInContext();
                *&v238[8 * v200] = LLVMMDNodeInContext();
                v217 = v243;
              }

              else
              {
                memset(v251, 0, 32);
                if (v207 > 7)
                {
                  v209 = LLVMConstInt();
                }

                else
                {
                  v209 = *&v235[8 * v200];
                  if (!v209)
                  {
                    v209 = LLVMConstInt();
                    *&v235[8 * v200] = v209;
                  }
                }

                *&v251[0] = v209;
                *(&v251[0] + 1) = LLVMMDStringInContext();
                *&v251[1] = LLVMMDStringInContext();
                v217 = v243;
                if (v243 > 7)
                {
                  v218 = LLVMConstInt();
                }

                else
                {
                  v218 = v206[v243];
                  if (!v218)
                  {
                    v218 = LLVMConstInt();
                    v206[v217] = v218;
                  }
                }

                *(&v251[1] + 1) = v218;
                *&v238[8 * v200] = LLVMMDNodeInContext();
              }

              v223 = v240 + v200;
              if (a1[104])
              {
                memset(v251, 0, 40);
                if (v223 > 7)
                {
                  v225 = LLVMConstInt();
                }

                else
                {
                  v225 = v236[v200];
                  if (!v225)
                  {
                    v225 = LLVMConstInt();
                    v236[v200] = v225;
                  }
                }

                *&v251[0] = v225;
                *(&v251[0] + 1) = LLVMMDStringInContext();
                *&v251[1] = LLVMMDStringInContext();
                if (v200 > 7)
                {
                  v227 = LLVMConstInt();
                }

                else
                {
                  v227 = v206[v200];
                  if (!v227)
                  {
                    v227 = LLVMConstInt();
                    v206[v200] = v227;
                  }
                }

                *(&v251[1] + 1) = v227;
                v228 = a1[66];
                if (!v228)
                {
                  v228 = LLVMConstInt();
                  a1[66] = v228;
                }

                *&v251[2] = v228;
              }

              else
              {
                memset(v251, 0, 32);
                if (v223 > 7)
                {
                  v224 = LLVMConstInt();
                }

                else
                {
                  v224 = v236[v200];
                  if (!v224)
                  {
                    v224 = LLVMConstInt();
                    v236[v200] = v224;
                  }
                }

                *&v251[0] = v224;
                *(&v251[0] + 1) = LLVMMDStringInContext();
                *&v251[1] = LLVMMDStringInContext();
                if (v217 > 7)
                {
                  v226 = LLVMConstInt();
                }

                else
                {
                  v226 = v206[v217];
                  if (!v226)
                  {
                    v226 = LLVMConstInt();
                    v206[v217] = v226;
                  }
                }

                *(&v251[1] + 1) = v226;
              }

              *(v239 + 8 * v200++) = LLVMMDNodeInContext();
              v199 += 48;
            }

            while (v202 != v200);
          }

          goto LABEL_428;
        }

        *(a1 + 207) = v195;
        if (!v195)
        {
LABEL_428:
          a1[24] = LLVMMDNodeInContext();
          return v232;
        }

        v198 = malloc_type_malloc(4 * v195, 0x75808E6AuLL);
        if (v198)
        {
          a1[64] = v198;
          bzero(v198, 4 * v195);
          goto LABEL_375;
        }

LABEL_433:
        abort();
      }

      v155 = malloc_type_malloc(4 * v76, 0x75808E6AuLL);
      if (!v155)
      {
        goto LABEL_433;
      }

      a1[63] = v155;
      bzero(v155, 4 * v76);
    }

    v156 = v86 + 1;
    if (v76 >= 1)
    {
      v157 = 0;
      v158 = v76;
      v159 = &v241[8 * v156];
      v160 = a1 + 65;
      v161 = v156;
      v162 = &a1[v156 + 65];
      v242 = v161;
      v163 = v161;
      do
      {
        v164 = v163 + v157;
        v165 = *(a1[89] + 8 * v157);
        if (a1[104])
        {
          *(a1[63] + 4 * v157) = *v165;
          memset(v251, 0, sizeof(v251));
          if (v164 > 7)
          {
            v167 = LLVMConstInt();
          }

          else
          {
            v167 = v162[v157];
            if (!v167)
            {
              v167 = LLVMConstInt();
              v162[v157] = v167;
            }
          }

          *&v251[0] = v167;
          *(&v251[0] + 1) = LLVMMDStringInContext();
          *&v251[1] = LLVMMDStringInContext();
          v170 = v165[1];
          if (v170 > 7)
          {
            v171 = LLVMConstInt();
          }

          else
          {
            v171 = v160[v170];
            if (!v171)
            {
              v171 = LLVMConstInt();
              v160[v170] = v171;
            }
          }

          *(&v251[1] + 1) = v171;
          *&v251[2] = LLVMMDStringInContext();
          if (v157 > 7)
          {
            v174 = LLVMConstInt();
          }

          else
          {
            v174 = v160[v157];
            if (!v174)
            {
              v174 = LLVMConstInt();
              v160[v157] = v174;
            }
          }

          *(&v251[2] + 1) = v174;
          v175 = a1[66];
          if (!v175)
          {
            v175 = LLVMConstInt();
            a1[66] = v175;
          }

          *&v251[3] = v175;
          *(&v251[3] + 1) = LLVMMDStringInContext();
        }

        else
        {
          memset(v251, 0, 48);
          if (v164 > 7)
          {
            v166 = LLVMConstInt();
          }

          else
          {
            v166 = v162[v157];
            if (!v166)
            {
              v166 = LLVMConstInt();
              v162[v157] = v166;
            }
          }

          *&v251[0] = v166;
          *(&v251[0] + 1) = LLVMMDStringInContext();
          *&v251[1] = LLVMMDStringInContext();
          v168 = *v165;
          if (v168 > 7)
          {
            v169 = LLVMConstInt();
          }

          else
          {
            v169 = v160[v168];
            if (!v169)
            {
              v169 = LLVMConstInt();
              v160[v168] = v169;
            }
          }

          *(&v251[1] + 1) = v169;
          *&v251[2] = LLVMMDStringInContext();
          v172 = v165[1];
          if (v172 > 7)
          {
            v173 = LLVMConstInt();
          }

          else
          {
            v173 = v160[v172];
            if (!v173)
            {
              v173 = LLVMConstInt();
              v160[v172] = v173;
            }
          }

          *(&v251[2] + 1) = v173;
        }

        *&v159[8 * v157++] = LLVMMDNodeInContext();
      }

      while (v158 != v157);
      LODWORD(v28) = v243;
      v156 = (v242 + v157);
    }

    goto LABEL_330;
  }

  v42 = v37;
  v43 = Extra;
  LODWORD(v235) = v25;
  v44 = strndup(v39, v38);
  v45 = v39;
  v46 = v35;
  v233 = v38;
  v234 = v45;
  if (v35)
  {
    v47 = 0;
    v48 = v235;
    v49 = v236;
  }

  else
  {
    v49 = v236;
    v47 = *v236;
    v48 = v235;
  }

  glpLLVMBuildFunctionType(a1, v47, v35, v42, v48, *(v49 + 2));
  v232 = LLVMAddFunction();
  glpLLVMAddFunctionAttrInner(a1, v232, 1);
  v51 = v242;
  if ((*(v43 + 10) & 0x10) != 0)
  {
    v52 = (*(a1[19] + 8))(*a1[19], 24, "subroutine");
    v52[1] = 0;
    v52[2] = 0;
    *v52 = 0;
    *v52 = v43;
    *(v52 + 4) = *(v43 + 160);
    v52[1] = v232;
    v53 = *(a1 + 157);
    v54 = *(a1 + 156);
    if (v53 + 1 <= v54)
    {
      v60 = a1[79];
      v61 = *(a1 + 157);
    }

    else
    {
      if (v54 <= 1)
      {
        v54 = 1;
      }

      v55 = 2 * v54;
      if (v55 <= v53 + 1)
      {
        v55 = v53 + 1;
      }

      v56 = a1[19];
      v57 = *v56;
      v58 = v56[1];
      v236 = v44;
      v59 = v55;
      v60 = v58(v57, 8 * v55, "Vector Storage (GLPLLVMSubroutineFunction *, growth)");
      memcpy(v60, a1[79], 8 * *(a1 + 157));
      (v56[3])(*v56, a1[79]);
      *(a1 + 156) = v59;
      v44 = v236;
      a1[79] = v60;
      v61 = *(a1 + 157);
    }

    memmove(&v60[8 * v53 + 8], &v60[8 * v53], 8 * (v61 - v53));
    *(a1[79] + 8 * v53) = v52;
    ++*(a1 + 157);
  }

  if (v241)
  {
    v63 = v239 + 1;
    v62 = LLVMGetParam();
  }

  else
  {
    v62 = 0;
    v63 = v239;
  }

  LODWORD(v236) = v46;
  a1[55] = v62;
  if (v51 < 1)
  {
    v67 = v63;
  }

  else
  {
    v64 = 0;
    v65 = 8 * v51;
    do
    {
      v66 = *(a1[89] + v64);
      v67 = v63 + 1;
      *(v66 + 8) = LLVMGetParam();
      v64 += 8;
      ++v63;
    }

    while (v65 != v64);
  }

  if (v243 >= 1)
  {
    v68 = 0;
    v69 = 8 * v243;
    do
    {
      v70 = *(a1[91] + v68);
      *(v70 + 16) = LLVMGetParam();
      v68 += 8;
      ++v67;
    }

    while (v69 != v68);
  }

  if ((v238 & 1) == 0)
  {
    a1[56] = LLVMGetParam();
  }

  v71 = v232;
  if (v240 >= 1)
  {
    v72 = 0;
    v73 = v240;
    v74 = 8;
    do
    {
      v75 = (a1[75] + v74);
      *(v75 - 1) = LLVMGetParam();
      *v75 = LLVMGetParam();
      ++v72;
      v74 += 48;
    }

    while (v73 != v72);
  }

  glpStringHashPut(a1[92], v234, v233, v50, v71);
  free(v44);
  result = v71;
  LODWORD(v36) = v240;
  LODWORD(v28) = v243;
  if (v236)
  {
    goto LABEL_97;
  }

  return result;
}

uint64_t glpLLVMCGVariableDeclarationGroup(uint64_t a1, uint64_t a2)
{
  result = glpVariableDeclarationGroupNodeGetDeclarationCount(a2);
  if (result)
  {
    v5 = 0;
    do
    {
      Declaration = glpVariableDeclarationGroupNodeGetDeclaration(a2, v5);
      glpLLVMCGNode(a1, Declaration, 1);
      ++v5;
      result = glpVariableDeclarationGroupNodeGetDeclarationCount(a2);
    }

    while (v5 < result);
  }

  return result;
}

llvm::Function *glpLLVMCGFunctionDefinition(void *a1, uint64_t a2)
{
  v113[1] = *MEMORY[0x277D85DE8];
  Prototype = glpFunctionDefinitionNodeGetPrototype(a2);
  Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
  if ((*(Extra + 9) & 0x20) != 0)
  {
    return 0;
  }

  v6 = Extra;
  v7 = glpLLVMCGNode(a1, Prototype, 0);
  *(v6 + 144) = v7;
  a1[54] = 0;
  a1[20] = v7;
  a1[42] = **(v6 + 152);
  v8 = LLVMCreateBuilderInContext();
  a1[2] = v8;
  glpLLVMSetFastMathFlags(v8, *(a1 + 163), (*(a1 + 416) >> 5) & 1);
  Body = glpFunctionDefinitionNodeGetBody(a2);
  a1[22] = LLVMAppendBasicBlock();
  v9 = LLVMAppendBasicBlock();
  a1[23] = v9;
  v76 = LLVMAppendBasicBlock();
  LLVMPositionBuilderAtEnd();
  if (a1[3])
  {
    Name = glpFunctionPrototypeNodeGetName(Prototype);
    v12 = strndup(Name, v11);
    glpLLVMDIBuilderCreateSubProgram(a1[3], v7, v12);
    glpLLVMAddLineInformation(a1, a2);
    free(v12);
  }

  v13 = glpFunctionPrototypeNodeGetName(Prototype);
  *(a1 + 162) = glpStringsEqual(v13, v14, "main", 0x83863A00000004);
  a1[43] = glpMakePointerHash(GLP_MALLOC_ALLOCATOR);
  a1[44] = glpMakePointerHash(GLP_MALLOC_ALLOCATOR);
  if (*(a1 + 162))
  {
    v15 = *(a1 + 169);
    if (v15 >= 1)
    {
      v73 = v9;
      v74 = v7;
      v16 = 0;
      v17 = 0;
      v18 = 8 * v15;
      v78 = 0;
      v79 = 8 * v15;
      while (1)
      {
        v19 = *(a1[85] + v16);
        v20 = *(a1 + 80);
        if ((v20 - 1) >= 3)
        {
          if (v20 == 4)
          {
            v38 = glpLayoutObjectFind(*(v19 + 8), 34);
            v39 = glpPrecisionIndexFromSAFlags(*(v19 + 48));
            v40 = glpTypeToLLVMTypeWithUnderlying(a1, *v19, v39, v19);
            v41 = *(v38 + 4);
            if (v41 > 0x1C)
            {
              goto LABEL_33;
            }

            if (((1 << v41) & 0x8C15800) != 0)
            {
              goto LABEL_34;
            }

            if (v41 == 24)
            {
              v113[0] = LLVMGetParam();
              v64 = MEMORY[0x23EE854F0](a1[62], 2);
              *__dst = 0x300000001;
              glpLLVMCallFunctionInner(a1, "air.get_sample_position.v2f32", v64, v113, 1, __dst, 2u, "");
              goto LABEL_36;
            }

            if (v41 == 28)
            {
              if ((*(*(v19 + 144) + 32) & 1) == 0)
              {
                v42 = *(a1 + 161);
                v43 = *(a1 + 160);
                if (v42 + 1 <= v43)
                {
                  v47 = a1[81];
                  v48 = *(a1 + 161);
                }

                else
                {
                  if (v43 <= 1)
                  {
                    v43 = 1;
                  }

                  v44 = 2 * v43;
                  if (v44 <= v42 + 1)
                  {
                    v45 = v42 + 1;
                  }

                  else
                  {
                    v45 = v44;
                  }

                  v46 = a1[19];
                  v47 = (v46[1])(*v46, 8 * v45, "Vector Storage (GLPVariableObject *, growth)");
                  memcpy(v47, a1[81], 8 * *(a1 + 161));
                  (v46[3])(*v46, a1[81]);
                  *(a1 + 160) = v45;
                  a1[81] = v47;
                  v48 = *(a1 + 161);
                }

                memmove(&v47[8 * v42 + 8], &v47[8 * v42], 8 * (v48 - v42));
                *(a1[81] + 8 * v42) = v19;
                ++*(a1 + 161);
                *(*(v19 + 144) + 32) |= 1u;
              }

LABEL_34:
              LLVMGetParam();
LABEL_35:
              ++v17;
            }

            else
            {
LABEL_33:
              if (v41 - 2 < 2)
              {
                goto LABEL_34;
              }

              if (v41 == 1)
              {
                v62 = glpLayoutObjectFind(*(v19 + 8), 20);
                LLVMGetParam();
                if (v62 && (a1[104] & 1) != 0)
                {
                  LLVMFloatTypeInContext();
                  v63 = llvm::ConstantFP::get();
                  LLVMFloatTypeInContext();
                  *__dst = llvm::ConstantFP::get();
                  *&__dst[8] = *__dst;
                  *&v82 = v63;
                  *(&v82 + 1) = v63;
                  LLVMConstVector();
                  LLVMBuildFSub();
                }

                goto LABEL_35;
              }
            }

LABEL_36:
            glpLLVMGetVariablePointer(a1, v19);
            MEMORY[0x23EE85440](v40, 0);
            LLVMBuildPointerCast();
            LLVMBuildStore();
            v18 = v79;
            goto LABEL_64;
          }

          if (!v20)
          {
            v25 = glpLayoutObjectFind(*(v19 + 8), 34);
            v26 = glpPrecisionIndexFromSAFlags(*(v19 + 48));
            v27 = v26;
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            *__dst = 0u;
            v82 = 0u;
            v80 = 0;
            if ((*(*(v19 + 144) + 32) & 1) == 0)
            {
              v77 = v25;
              v28 = v26;
              v29 = *(a1 + 161);
              v30 = *(a1 + 160);
              if (v29 + 1 <= v30)
              {
                v34 = a1[81];
                v37 = *(a1 + 161);
              }

              else
              {
                if (v30 <= 1)
                {
                  v30 = 1;
                }

                v31 = 2 * v30;
                if (v31 <= v29 + 1)
                {
                  v32 = v29 + 1;
                }

                else
                {
                  v32 = v31;
                }

                v33 = a1[19];
                v34 = (v33[1])(*v33, 8 * v32, "Vector Storage (GLPVariableObject *, growth)");
                memcpy(v34, a1[81], 8 * *(a1 + 161));
                v35 = v33[3];
                v36 = *v33;
                v18 = v79;
                v35(v36, a1[81]);
                *(a1 + 160) = v32;
                a1[81] = v34;
                v37 = *(a1 + 161);
              }

              memmove(&v34[8 * v29 + 8], &v34[8 * v29], 8 * (v37 - v29));
              *(a1[81] + 8 * v29) = v19;
              ++*(a1 + 161);
              *(*(v19 + 144) + 32) |= 1u;
              v27 = v28;
              v25 = v77;
            }

            v49 = v27;
            v50 = glpTypeToLLVMTypeWithUnderlying(a1, *v19, v27, v19);
            v51 = *(v25 + 4);
            switch(v51)
            {
              case 17:
                if ((a1[104] & 1) == 0)
                {
                  v58 = v78;
                  if (!v78)
                  {
                    strncpy(__dst, "air.get_vertex_id.i32", 0x200uLL);
                    v58 = 0;
                  }

                  v56 = 0;
                  v57 = a1[5];
                  if (!v58)
                  {
LABEL_52:
                    v113[0] = 0x400000001;
                    v59 = glpLLVMCallFunctionInner(a1, __dst, v57, &v80, v56, v113, 2u, "");
                    v60 = *(v25 + 4);
                    v61 = v78;
                    if (v60 == 17)
                    {
                      v61 = v59;
                    }

                    v78 = v61;
LABEL_58:
                    if ((v60 - 17) <= 1 && v49 && v49 != 3)
                    {
                      LLVMBuildTrunc();
                    }

                    glpLLVMGetVariablePointer(a1, v19);
                    MEMORY[0x23EE85440](v50, 0);
                    LLVMBuildPointerCast();
LABEL_63:
                    LLVMBuildStore();
                    break;
                  }

LABEL_57:
                  v60 = *(v25 + 4);
                  goto LABEL_58;
                }

LABEL_55:
                v55 = LLVMGetParam();
LABEL_56:
                ++v17;
                v56 = 1;
                v57 = v50;
                if (!v55)
                {
                  goto LABEL_52;
                }

                goto LABEL_57;
              case 18:
                if ((a1[104] & 1) == 0)
                {
                  strncpy(__dst, "air.get_instance_id.i32", 0x200uLL);
                  v56 = 0;
                  v57 = a1[5];
                  goto LABEL_52;
                }

                goto LABEL_55;
              case 28:
                if (a1[104])
                {
                  goto LABEL_55;
                }

                v52 = v78;
                if (!v78)
                {
                  v53 = a1[5];
                  v113[0] = 0x400000001;
                  v52 = glpLLVMCallFunctionInner(a1, "air.get_vertex_id.i32", v53, &v80, 0, v113, 2u, "");
                }

                v54 = v52;
                LLVMGetParam();
                v78 = v54;
                v113[0] = v54;
                LLVMBuildGEP();
                v55 = LLVMBuildLoad();
                goto LABEL_56;
            }
          }
        }

        else
        {
          glpLayoutObjectFind(*(v19 + 8), 34);
          v21 = LLVMGetParam();
          ++v17;
          if ((*(*(v19 + 144) + 32) & 4) == 0)
          {
            glpLLVMGetVariablePointer(a1, v19);
            v23 = glpPrecisionIndexFromSAFlags(*(v19 + 48));
            v24 = glpTypeToLLVMTypeWithUnderlying(a1, *v19, v23, v19);
            MEMORY[0x23EE85440](v24, 0);
            LLVMBuildPointerCast();
            goto LABEL_63;
          }

          glpPointerHashPut(a1[43], v19, v21, v22);
        }

LABEL_64:
        v16 += 8;
        if (v18 == v16)
        {
          v65 = v17;
          v9 = v73;
          v7 = v74;
          goto LABEL_76;
        }
      }
    }

    v65 = 0;
LABEL_76:
    a1[21] = v7;
    a1[26] = 0;
    if ((*(a1 + 80) | 2) == 3)
    {
      v66 = *(a1 + 173);
      if (v66 >= 1)
      {
        v67 = 0;
        v68 = 8 * v66;
        do
        {
          v69 = *(a1[87] + v67);
          v70 = LLVMGetParam();
          glpPointerHashPut(a1[43], v69, v70, v71);
          ++v65;
          v67 += 8;
        }

        while (v68 != v67);
      }
    }
  }

  glpLLVMCGNode(a1, Body, 0);
  glpDestroyPointerHash(a1[43]);
  a1[43] = 0;
  glpDestroyPointerHash(a1[44]);
  a1[44] = 0;
  if (a1[3])
  {
    glpLLVMClearCurrentLineInner(a1);
  }

  *(a1 + 83) = 0;
  a1[55] = 0;
  *(a1 + 162) = 0;
  a1[22] = 0;
  a1[23] = 0;
  LLVMPositionBuilderAtEnd();
  glpLLVMEmitBranchInnerReal(a1, v9);
  *(a1 + 83) = 0;
  LLVMPositionBuilderAtEnd();
  glpLLVMEmitBranchInnerReal(a1, v76);
  *(a1 + 83) = 0;
  LLVMDisposeBuilder();
  a1[2] = 0;
  a1[20] = 0;
  return v7;
}

uint64_t glpLLVMCGInterfaceBlock(uint64_t a1, uint64_t a2)
{
  Extra = glpInterfaceBlockNodeGetExtra(a2);
  result = glpInterfaceBlockObjectGetVariableObjectCount(Extra);
  if (result)
  {
    v5 = 0;
    v6 = 8 * result;
    do
    {
      result = glpLLVMCGDeclareVariable(a1, *(*(Extra + 72) + v5));
      v5 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t glpLLVMCGBlock(uint64_t *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  result = glpBlockNodeGetStatementCount(a2);
  v37 = result;
  if (result)
  {
    v4 = 0;
    v35 = a1 + 65;
    v5 = "";
    do
    {
      Statement = glpBlockNodeGetStatement(a2, v4);
      memset(v41, 0, sizeof(v41));
      memset(v40, 0, sizeof(v40));
      v38 = 0;
      v39 = 0;
      if (!glpIsSimpleComponentAssigment(Statement, &v39, &v38, v41, v40))
      {
        goto LABEL_23;
      }

      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v39);
      if (glpPrimitiveTypeGetCategory(PrimitiveType) != 2)
      {
        goto LABEL_23;
      }

      v8 = 0;
      v34 = v4;
      v9 = v4 + 1;
      v10 = v41 + 1;
      v11 = v40 + 1;
      v12 = 1;
      while (v8 != 7)
      {
        v13 = v8;
        if (v9 + v8 >= v37)
        {
          goto LABEL_11;
        }

        v14 = glpBlockNodeGetStatement(a2, v9 + v8);
        IsSimpleComponentAssigment = glpIsSimpleComponentAssigment(v14, &v39, &v38, v10, v11);
        ++v12;
        v8 = v13 + 1;
        ++v11;
        ++v10;
        if (!IsSimpleComponentAssigment)
        {
          v12 = v13 + 1;
          goto LABEL_11;
        }
      }

      v12 = 8;
LABEL_11:
      Length = glpPrimitiveVectorGetLength(PrimitiveType);
      v17 = v38;
      v18 = glpPrimitiveTypeGetPrimitiveType(*v38);
      v19 = glpPrimitiveVectorGetLength(v18);
      v20 = v12 == Length;
      v4 = v34;
      if (v20)
      {
        v21 = v19;
        v22 = 0;
        v23 = v12;
        while (v22 == *(v41 + v22))
        {
          if (v12 == ++v22)
          {
            goto LABEL_18;
          }
        }

        if (v12 != v22)
        {
          goto LABEL_23;
        }

LABEL_18:
        v24 = glpLLVMGetVariablePointer(a1, v17);
        glpLoadSourceVariable(a1, v24, v17);
        if (v21 == v12)
        {
          v25 = 0;
          v26 = v12;
          while (v25 == *(v40 + v25))
          {
            ++v25;
            if (!--v26)
            {
              glpLLVMGetVariablePointer(a1, v39);
              goto LABEL_39;
            }
          }

          glpLLVMGetVariablePointer(a1, v39);
          if (v26)
          {
            goto LABEL_28;
          }

LABEL_39:
          result = LLVMBuildStore();
        }

        else
        {
          glpLLVMGetVariablePointer(a1, v39);
LABEL_28:
          LLVMTypeOf();
          v27 = LLVMGetElementType();
          MEMORY[0x23EE85370](v27);
          v28 = v41;
          v29 = v40;
          do
          {
            v31 = *v29++;
            v30 = v31;
            if (v31 > 7)
            {
              LLVMConstInt();
            }

            else if (!v35[v30])
            {
              v35[v30] = LLVMConstInt();
            }

            v32 = v5;
            LLVMBuildExtractElement();
            v33 = *v28;
            if (v33 > 7)
            {
              LLVMConstInt();
            }

            else if (!v35[v33])
            {
              v35[v33] = LLVMConstInt();
            }

            v5 = v32;
            LLVMBuildInsertElement();
            ++v28;
            --v23;
          }

          while (v23);
          result = LLVMBuildStore();
          v4 = v34;
        }

        v4 += v12;
      }

      else
      {
LABEL_23:
        result = glpLLVMCGNode(a1, Statement, 0);
        ++v4;
      }
    }

    while (v4 < v37);
  }

  return result;
}

uint64_t glpLLVMCGIfStatement(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 432);
  Cond = glpIfStatementNodeGetCond(a2);
  glpLLVMCGNode(a1, Cond, 1);
  glpLLVMCGInsertBasicBlock(a1, "if.then");
  ElseStatement = glpIfStatementNodeGetElseStatement(a2);
  if (ElseStatement)
  {
    v7 = glpLLVMCGInsertBasicBlock(a1, "if.else");
  }

  else
  {
    v7 = 0;
  }

  v8 = glpLLVMCGInsertBasicBlock(a1, "if.end");
  glpLLVMClearCurrentLineInner(a1);
  LLVMBuildCondBr();
  LLVMPositionBuilderAtEnd();
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  *(a1 + 432) = v9;
  IfStatement = glpIfStatementNodeGetIfStatement(a2);
  glpLLVMCGNode(a1, IfStatement, 0);
  glpLLVMEmitBranchInnerReal(a1, v8);
  *(a1 + 332) = 0;
  if (ElseStatement)
  {
    LLVMPositionBuilderAtEnd();
    *(a1 + 432) = v8;
    glpLLVMCGNode(a1, ElseStatement, 0);
    glpLLVMEmitBranchInnerReal(a1, v8);
    *(a1 + 332) = 0;
  }

  result = LLVMPositionBuilderAtEnd();
  *(a1 + 432) = v4;
  return result;
}

uint64_t glpLLVMCGLoopStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v4 = *(a1 + 432);
  Body0 = glpLoopStatementNodeGetBody0(a2);
  Body1 = glpLoopStatementNodeGetBody1(a2);
  v7 = Body1;
  if (!Body0)
  {
    if (Body1)
    {
      v10 = glpLLVMCGInsertBasicBlock(a1, "while.body1");
      goto LABEL_7;
    }

    v11 = 1;
LABEL_12:
    v9 = glpLLVMCGInsertBasicBlock(a1, "while.header");
    glpLLVMEmitBranchInnerReal(a1, v9);
    *(a1 + 332) = 0;
    LLVMPositionBuilderAtEnd();
    goto LABEL_13;
  }

  v8 = glpLLVMCGInsertBasicBlock(a1, "while.body0");
  v9 = v8;
  if (v7)
  {
    v10 = glpLLVMCGInsertBasicBlock(a1, "while.body1");
    if (v9)
    {
      v11 = 0;
      goto LABEL_14;
    }

LABEL_7:
    v11 = 0;
    v9 = v10;
    if (v10)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v11 = 1;
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  v10 = 0;
LABEL_14:
  v12 = glpLLVMCGInsertBasicBlock(a1, "while.end");
  v13 = v12;
  v17 = *(a1 + 416);
  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v9;
  }

  *(a1 + 416) = v14;
  *(a1 + 424) = v12;
  if (Body0)
  {
    glpLLVMEmitBranchInnerReal(a1, v9);
    *(a1 + 332) = 0;
    LLVMPositionBuilderAtEnd();
    if (v11)
    {
      v15 = v13;
    }

    else
    {
      v15 = v10;
    }

    *(a1 + 432) = v15;
    glpLLVMCGNode(a1, Body0, 0);
  }

  if ((v11 & 1) == 0)
  {
    glpLLVMEmitBranchInnerReal(a1, v10);
    *(a1 + 332) = 0;
    LLVMPositionBuilderAtEnd();
    *(a1 + 432) = v13;
    glpLLVMCGNode(a1, v7, 0);
  }

  glpLLVMEmitBranchInnerReal(a1, v9);
  *(a1 + 332) = 0;
  *(a1 + 416) = v17;
  result = LLVMPositionBuilderAtEnd();
  *(a1 + 432) = v4;
  return result;
}

uint64_t glpLLVMCGSwitchStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v4 = *(a1 + 432);
  Expr = glpSwitchStatementNodeGetExpr(a2);
  glpLLVMCGNode(a1, Expr, 1);
  v6 = glpLLVMCGInsertBasicBlock(a1, "afterSwitch");
  v7 = *(a1 + 424);
  *(a1 + 424) = v6;
  *(a1 + 432) = v6;
  glpLLVMCGInsertBasicBlock(a1, "default");
  Body = glpSwitchStatementNodeGetBody(a2);
  ChildCount = glpASTNodeGetChildCount(Body);
  if (ChildCount >= 1)
  {
    v10 = ChildCount;
    v11 = 0;
    for (i = 0; i != v10; ++i)
    {
      Child = glpASTNodeGetChild(Body, i);
      if (glpIsCaseStatementNode(Child))
      {
        ++v11;
      }
    }
  }

  v14 = *(a1 + 408);
  *(a1 + 408) = LLVMBuildSwitch();
  glpLLVMCGNode(a1, Body, 0);
  glpLLVMEmitBranchInnerReal(a1, v6);
  *(a1 + 332) = 0;
  LLVMPositionBuilderAtEnd();
  glpLLVMEmitBranchInnerReal(a1, v6);
  *(a1 + 332) = 0;
  result = LLVMPositionBuilderAtEnd();
  *(a1 + 408) = v14;
  *(a1 + 424) = v7;
  *(a1 + 432) = v4;
  return result;
}

void glpLLVMCGCaseStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  ConstValue = glpCaseStatementNodeGetConstValue(a2);
  glpLLVMCGNode(a1, ConstValue, 1);
  inserted = LLVMGetInsertBlock();
  if (!glpLLVMBasicBlockEmpty(inserted))
  {
    v6 = glpLLVMCGInsertBasicBlock(a1, "case");
    glpLLVMEmitBranchInnerReal(a1, v6);
    *(a1 + 332) = 0;
  }

  LLVMPositionBuilderAtEnd();

  JUMPOUT(0x23EE84E40);
}

uint64_t glpLLVMCGDefaultStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v3 = LLVMGetSwitchDefaultDest();
  glpLLVMEmitBranchInnerReal(a1, v3);
  *(a1 + 332) = 0;

  return LLVMPositionBuilderAtEnd();
}

uint64_t glpLLVMCGBreakStatement(void *a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  glpLLVMClearCurrentLineInner(a1);

  return LLVMBuildBr();
}

uint64_t glpLLVMCGContinueStatement(void *a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  glpLLVMClearCurrentLineInner(a1);

  return LLVMBuildBr();
}

uint64_t glpLLVMCGDiscardStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v3 = LLVMVoidTypeInContext();
  *(a1 + 744) |= 2uLL;
  v5 = 2;
  return glpLLVMCallFunctionInner(a1, "air.discard_fragment", v3, 0, 0, &v5, (*(a1 + 832) & 0x10) == 0, "");
}

void glpLLVMCGReturnStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  if (!*(a1 + 408))
  {
    *(a1 + 332) = 1;
  }

  if (*(a1 + 324) && *(a1 + 208))
  {
    *(a1 + 208) = 0;

    JUMPOUT(0x23EE850B0);
  }

  JUMPOUT(0x23EE850C0);
}

uint64_t glpLLVMCGRawCallNode(void *a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  v4 = glpRawCallNodeGetExtra(a2);
  v5 = *(v4 + 144);
  v6 = *(v4 + 152);
  v7 = *v6;
  v8 = *(*v6 + 36);
  MEMORY[0x28223BE20](v4, 8 * v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFF0);
  bzero(v10, v9);
  v11 = *(v7 + 32);
  if (v11)
  {
    v12 = (*(v7 + 40) + 8);
    do
    {
      v13 = *(v12 - 1);
      if (v13)
      {
        *&v10[((v13 << 32) - 0x100000000) >> 29] = *v12;
      }

      v12 += 3;
      --v11;
    }

    while (v11);
  }

  return glpLLVMSharedRawCall(a1, v6[2], v5, v10, v8);
}

uint64_t glpLLVMCGSubroutineRawCall(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  v4 = glpSubroutineRawCallNodeGetExtra(a2);
  v5 = glpSubroutineRawCallNodeGetIndexExpr(a2);
  v6 = *(v4 + 16);
  MEMORY[0x23EE85440](*(a1 + 40), 2);
  LLVMBuildPointerCast();
  v7 = *(v4 + 40) + 4 * glpLinkedProgramGetDefaultUniformLocationCount(*(a1 + 136));
  if (v7 > 7)
  {
    v8 = LLVMConstInt();
  }

  else
  {
    v8 = *(a1 + 520 + 8 * v7);
    if (!v8)
    {
      v9 = v7;
      v8 = LLVMConstInt();
      *(a1 + 520 + 8 * v9) = v8;
    }
  }

  v44 = v8;
  if (v5)
  {
    glpArrayTypeGetElementType(v6);
    glpLLVMCGNode(a1, v5, 1);
    v44 = LLVMBuildAdd();
  }

  LLVMBuildGEP();
  LLVMBuildLoad();
  SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(*(a1 + 136), *(a1 + 320));
  v11 = *(SubroutineUniformHash + 32);
  if (v11)
  {
    v12 = 0;
    v13 = *(SubroutineUniformHash + 40);
    do
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *(v14 + 4);
        v16 = v14 + 64;
        if (v15 == *(v4 + 40))
        {
          v12 = v16;
        }
      }

      v13 += 4;
      --v11;
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v43 = glpLLVMCGInsertBasicBlock(a1, "afterSwitch");
  v42 = LLVMBuildSwitch();
  if (*(v12 + 4))
  {
    v17 = 0;
    v40 = a1 + 520;
    v41 = v12;
    do
    {
      v18 = *(*(v12 + 8) + 4 * v17);
      v19 = glpLLVMCGInsertBasicBlock(a1, "case");
      LLVMPositionBuilderAtEnd();
      glpTopLevelNodeGetDefCount(*(*(a1 + 128) + 8 * *(a1 + 320) + 184));
      v20 = 0;
      v21 = 0;
      do
      {
        Def = glpTopLevelNodeGetDef(*(*(a1 + 128) + 8 * *(a1 + 320) + 184), v21);
        if (Def)
        {
          v23 = Def;
          if (glpASTNodeGetKind(Def) == 51)
          {
            Prototype = glpFunctionDefinitionNodeGetPrototype(v23);
            Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
            if ((*(Extra + 10) & 0x10) != 0 && *(Extra + 160) == v18)
            {
              v20 = Extra;
            }
          }
        }

        ++v21;
        DefCount = glpTopLevelNodeGetDefCount(*(*(a1 + 128) + 8 * *(a1 + 320) + 184));
      }

      while (v21 < DefCount);
      v27 = *(v20 + 152);
      v28 = *v27;
      v29 = *(*v27 + 36);
      MEMORY[0x28223BE20](DefCount, 8 * v29);
      v31 = &v40 - ((v30 + 15) & 0xFFFFFFFF0);
      bzero(v31, v30);
      v32 = *(v28 + 32);
      if (v32)
      {
        v33 = (*(v28 + 40) + 8);
        do
        {
          v34 = *(v33 - 1);
          if (v34)
          {
            *&v31[((v34 << 32) - 0x100000000) >> 29] = *v33;
          }

          v33 += 3;
          --v32;
        }

        while (v32);
      }

      v35 = *(a1 + 628);
      if (v35)
      {
        v36 = 0;
        v37 = *(a1 + 632);
        do
        {
          if (*(*v37 + 16) == v18)
          {
            v36 = *(*v37 + 8);
          }

          v37 += 8;
          --v35;
        }

        while (v35);
      }

      else
      {
        v36 = 0;
      }

      glpLLVMSharedRawCall(a1, v27[2], v36, v31, v29);
      glpLLVMEmitBranchInnerReal(a1, v43);
      *(a1 + 332) = 0;
      if (v18 > 7)
      {
        v38 = LLVMConstInt();
      }

      else
      {
        v38 = *(v40 + 8 * v18);
        if (!v38)
        {
          v38 = LLVMConstInt();
          *(v40 + 8 * v18) = v38;
        }
      }

      MEMORY[0x23EE84E40](v42, v38, v19);
      ++v17;
      v12 = v41;
    }

    while (v17 < *(v41 + 4));
  }

  return LLVMPositionBuilderAtEnd();
}

uint64_t glpLLVMCGLValue(uint64_t *a1, uint64_t a2, int a3)
{
  v67[2] = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  VariableExtra = glpLValueNodeGetVariableExtra(a2);
  v7 = *(*(VariableExtra + 144) + 16);
  if (v7)
  {
    return *(v7 + 16);
  }

  v10 = VariableExtra;
  v11 = *(VariableExtra + 8);
  if (v11)
  {
    v12 = glpLayoutObjectFind(v11, 46);
    if (v12)
    {
      if (*(v12 + 4) == 9)
      {
        v13 = a1[5];
        v67[0] = 0x300000001;
        return glpLLVMCallFunctionInner(a1, "air.get_num_samples.i32", v13, 0, 0, v67, 2u, "");
      }
    }
  }

  v14 = glpLLVMGetVariablePointer(a1, v10);
  SaType = glpASTNodeGetSaType(a2);
  SaFlags = glpASTNodeGetSaFlags(a2);
  v17 = glpPrecisionIndexFromSAFlags(SaFlags);
  if (!v17)
  {
    v18 = glpLValueNodeGetVariableExtra(a2);
    v17 = glpPrecisionIndexFromSAFlags(*(v18 + 48));
  }

  Offset = glpDerefNodeGetOffset(a2);
  v63 = a1[5];
  IsAtomic = glpTypeIsAtomic(SaType);
  if (IsAtomic)
  {
    IsAtomic = glpPrimitiveTypeGetPrimitiveType(SaType);
  }

  if (Offset)
  {
    PreSwizzlePrimitiveType = IsAtomic;
    BankIndex = glpOffsetNodeGetBankIndex(Offset);
    if (BankIndex)
    {
      v22 = *glpConstantNodeGetValue(BankIndex);
    }

    else
    {
      v22 = 0;
    }

    CompStride = glpOffsetNodeGetCompStride(Offset);
    OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
    if (glpOffsetNodeGetPreSwizzlePrimitiveType(Offset))
    {
      PreSwizzlePrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(Offset);
    }

    if (!a3)
    {
      if (OffsetExpr)
      {
        glpLLVMCGNode(a1, OffsetExpr, 0);
        return 0;
      }

      return OffsetExpr;
    }
  }

  else
  {
    OffsetExpr = 0;
    if (!a3)
    {
      return OffsetExpr;
    }

    PreSwizzlePrimitiveType = IsAtomic;
    v22 = 0;
    CompStride = -1;
  }

  if (glpTypeIsAtomic(SaType))
  {
    v67[0] = 0;
    v67[1] = 0;
    v66 = 0;
    if ((*(v10 + 52) & 1) == 0)
    {
      if (OffsetExpr)
      {
        v23 = PreSwizzlePrimitiveType;
        if ((PreSwizzlePrimitiveType & 0xFFFFFFFE) != 0x40 || *(*(v10 + 144) + 24) == PreSwizzlePrimitiveType)
        {
          v25 = a1;
          v26 = v10;
          v27 = v14;
          v28 = OffsetExpr;
          v24 = 0;
        }

        else
        {
          v24 = &v66;
          v25 = a1;
          v26 = v10;
          v27 = v14;
          v28 = OffsetExpr;
        }

        v14 = glpBuildArrayElementPtr(v25, v26, v27, v28, v24, 0);
      }

      else
      {
        v23 = PreSwizzlePrimitiveType;
      }

      v34 = glpLLVMLoadVector(a1, v10, v14, v23, v17, *(*(v10 + 144) + 24), *(*(v10 + 144) + 28));
      goto LABEL_85;
    }

    v29 = glpASTNodeGetSaType(a2);
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v29);
    if (glpPrimitiveTypeGetCategory(PrimitiveType) == 4)
    {
      inserted = LLVMConstInt();
      if (!OffsetExpr)
      {
        return inserted;
      }

      glpLLVMCGNode(a1, OffsetExpr, 1);
      LLVMBuildZExt();
      return LLVMBuildAdd();
    }

    if ((*(v10 + 52) & 8) == 0)
    {
      LODWORD(v65) = 0;
      if (OffsetExpr)
      {
        v23 = PreSwizzlePrimitiveType;
        if (!glpGetConstantOffset(OffsetExpr, &v65))
        {
          if (glpLLVMCGNode(a1, OffsetExpr, 1))
          {
            LLVMTypeOf();
            LLVMConstInt();
            v45 = LLVMBuildAdd();
          }

          else
          {
            v45 = LLVMConstInt();
          }

          v23 = PreSwizzlePrimitiveType;
          v67[0] = v45;
          v42 = LLVMBuildGEP();
          goto LABEL_65;
        }

        v33 = v65;
      }

      else
      {
        v33 = 0;
        v23 = PreSwizzlePrimitiveType;
      }

      v42 = glpBuildUniformElementPtr(a1, v10, a1[55], 0, 0, (*(v10 + 156) + v33));
LABEL_65:
      v49 = v42;
      v61 = 4;
LABEL_73:
      if (glpPrimitiveTypeGetCategory(v23) == 2)
      {
        Length = glpPrimitiveVectorGetLength(v23);
        if (Length >= 2 && CompStride != -1)
        {
          v52 = Length;
          ScalarType = glpPrimitiveTypeGetScalarType(v23);
          v60 = ScalarType;
          glpLLVMReadUniform(a1, v49, v61, ScalarType, v17);
          v54 = LLVMTypeOf();
          v55 = MEMORY[0x23EE854F0](v54, v52);
          MEMORY[0x23EE85370](v55);
          v56 = 0;
          v65 = LLVMConstInt();
          do
          {
            if (v56 && (glpLLVMReadUniform(a1, v49, v61, v60, v17), v56 > 7))
            {
              LLVMConstInt();
            }

            else
            {
              v57 = &a1[v56];
              if (!v57[65])
              {
                v57[65] = LLVMConstInt();
              }
            }

            inserted = LLVMBuildInsertElement();
            v49 = LLVMBuildGEP();
            ++v56;
          }

          while (v52 != v56);
          v23 = PreSwizzlePrimitiveType;
          goto LABEL_86;
        }
      }

      v34 = glpLLVMReadUniform(a1, v49, v61, v23, v17);
LABEL_85:
      inserted = v34;
LABEL_86:
      if (!Offset)
      {
        return inserted;
      }

      Swizzle = glpOffsetNodeGetSwizzle(Offset);
      inserted = glpCGSwizzle(a1, 0, 0, inserted, v23, Swizzle);
      VectorElementExpr = glpOffsetNodeGetVectorElementExpr(Offset);
      if (!VectorElementExpr)
      {
        return inserted;
      }

      glpLLVMCGNode(a1, VectorElementExpr, 1);
      if (LLVMTypeOf() != v63)
      {
        LLVMBuildIntCast();
      }

      return LLVMBuildExtractElement();
    }

    v35 = *(v10 + 88);
    v36 = *(a1[89] + 8 * (v22 + *(v35 + 24) - 1));
    if (*(v35 + 8) == 1)
    {
      v37 = LLVMFloatTypeInContext();
      v38 = MEMORY[0x23EE85440](v37, 2);
    }

    else
    {
      v38 = 0;
    }

    LODWORD(v65) = 0;
    if (!OffsetExpr)
    {
      v41 = 0;
      v40 = *(v10 + 88);
      goto LABEL_52;
    }

    ConstantOffset = glpGetConstantOffset(OffsetExpr, &v65);
    v40 = *(v10 + 88);
    if (ConstantOffset)
    {
      v41 = v65;
LABEL_52:
      if (*(v40 + 8) == 1)
      {
        v43 = (v41 >> 2);
      }

      else
      {
        v43 = v41;
      }

      v44 = glpBuildUniformElementPtr(a1, v10, *(v36 + 8), v38, v22, v43);
      goto LABEL_69;
    }

    if (*(v40 + 8) == 1)
    {
      LLVMBuildPointerCast();
    }

    v46 = glpLLVMCGNode(a1, OffsetExpr, 1);
    if (v46)
    {
      v47 = v46;
      LLVMTypeOf();
      if (*(*(v10 + 88) + 8) != 1)
      {
LABEL_68:
        v67[0] = v47;
        v44 = LLVMBuildGEP();
LABEL_69:
        v49 = v44;
        if (*(*(v10 + 88) + 8) == 1)
        {
          v50 = 1;
        }

        else
        {
          v50 = 4;
        }

        v61 = v50;
        v23 = PreSwizzlePrimitiveType;
        goto LABEL_73;
      }

      LLVMConstInt();
      v48 = LLVMBuildAShr();
    }

    else
    {
      v48 = LLVMConstInt();
    }

    v47 = v48;
    goto LABEL_68;
  }

  return LLVMBuildLoad();
}

uint64_t glpLLVMCGRValue(uint64_t a1, uint64_t a2)
{
  SaType = glpASTNodeGetSaType(a2);
  if (!glpTypeIsAtomic(SaType))
  {
    return 0;
  }

  glpLLVMAddLineInformation(a1, a2);
  Base = glpRValueNodeGetBase(a2);
  v6 = glpLLVMCGNode(a1, Base, 1);
  Offset = glpDerefNodeGetOffset(a2);
  if (Offset)
  {
    v8 = Offset;
    OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
    if (OffsetExpr)
    {
      v10 = glpLLVMCGNode(a1, OffsetExpr, 1);
    }

    else
    {
      v10 = 0;
    }

    v11 = glpASTNodeGetSaType(a2);
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v11);
    if (glpOffsetNodeGetPreSwizzlePrimitiveType(v8))
    {
      PrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(v8);
    }

    if (v10)
    {
      if ((*(a1 + 832) & 8) != 0 && glpASTNodeGetKind(Base) == 3 && (glpASTNodeGetSaFlags(Base) & 0x60) != 0)
      {
        if (!glpPointerHashGet(*(a1 + 344), v6))
        {
          LLVMTypeOf();
          v13 = LLVMAddGlobalInAddressSpace();
          LLVMSetGlobalConstant();
          v14 = MEMORY[0x23EE854A0](v13, v6);
          glpPointerHashPut(*(a1 + 344), v6, v13, v14);
        }
      }

      else
      {
        v15 = LLVMTypeOf();
        glpBuildAlloca(a1, v15);
        LLVMBuildStore();
      }

      if (!*(a1 + 520))
      {
        *(a1 + 520) = LLVMConstInt();
      }

      LLVMBuildGEP();
      v6 = LLVMBuildLoad();
      SaFlags = glpASTNodeGetSaFlags(a2);
      v17 = glpPrecisionIndexFromSAFlags(SaFlags);
      glpPrimitiveTypeToLLVMType(a1, PrimitiveType, v17);
    }

    Swizzle = glpOffsetNodeGetSwizzle(v8);
    v6 = glpCGSwizzle(a1, 0, 0, v6, PrimitiveType, Swizzle);
    VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v8);
    if (VectorElementExpr)
    {
      glpLLVMCGNode(a1, VectorElementExpr, 1);
      v20 = *(a1 + 40);
      if (LLVMTypeOf() != v20)
      {
        LLVMBuildIntCast();
      }

      return LLVMBuildExtractElement();
    }
  }

  return v6;
}

unsigned int **glpLLVMWriteOutput(uint64_t a1, uint64_t a2)
{
  result = glpWriteOutputNodeGetExtra(a2);
  v4 = result;
  v5 = *(a1 + 320);
  if (v5 == 4)
  {
    if (!*(a1 + 208))
    {
      *(a1 + 208) = MEMORY[0x23EE85370](*(a1 + 200));
    }

    v6 = *(a1 + 692);
    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*(*(a1 + 696) + 8 * i) == v4)
        {
          break;
        }
      }
    }

    v8 = glpLayoutObjectFind(*(v4 + 8), 68);
    glpLLVMGetVariablePointer(a1, v4);
    v9 = glpPrecisionIndexFromSAFlags(*(v4 + 48));
    v10 = glpTypeToLLVMTypeWithUnderlying(a1, *v4, v9, v4);
    MEMORY[0x23EE85440](v10, 0);
    LLVMBuildPointerCast();
    LLVMBuildLoad();
    v11 = glpLayoutObjectFind(*(v4 + 8), 77);
    if (v11 && *(v11 + 4) == 2)
    {
      *(a1 + 760) |= 0x1000u;
    }

    if (*(v8 + 4) != 4)
    {
      goto LABEL_32;
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v4);
    if (glpPrimitiveTypeGetCategory(PrimitiveType) == 2)
    {
      Length = glpPrimitiveVectorGetLength(PrimitiveType);
      if (Length > 3)
      {
LABEL_32:
        result = LLVMBuildInsertValue();
        *(a1 + 208) = result;
        return result;
      }

      v14 = Length;
      if (Length > 1)
      {
        v10 = LLVMGetElementType();
      }
    }

    else
    {
      v14 = 1;
    }

    v15 = MEMORY[0x23EE854F0](v10, 4);
    MEMORY[0x23EE85370](v15);
    if (v14 >= 1)
    {
      v16 = 0;
      v17 = a1 + 520;
      do
      {
        if (v16 > 7)
        {
          LLVMConstInt();
        }

        else if (!*(v17 + 8 * v16))
        {
          *(v17 + 8 * v16) = LLVMConstInt();
        }

        if (v14 != 1)
        {
          LLVMBuildExtractElement();
        }

        LLVMBuildInsertElement();
        ++v16;
      }

      while (v14 != v16);
    }

    goto LABEL_32;
  }

  if (v5 == 2 || !v5)
  {

    return glpLLVMCGWriteVertexOutput(a1, result);
  }

  return result;
}

void glpLLVMAddLineInformation(void *result, uint64_t a2)
{
  if (result[3])
  {
    v3 = 0uLL;
    v4 = 0;
    glpASTNodeGetLocation(a2, &v3);
    if (v4 != -1)
    {
      glpLLVMSetCurrentLineInner(result, v4);
    }
  }
}

uint64_t glpPrimitiveTypeToLLVMType(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  Category = glpPrimitiveTypeGetCategory(a2);
  if (Category <= 1)
  {
    if (!Category)
    {

      return LLVMVoidTypeInContext();
    }

    if (Category != 1)
    {
      goto LABEL_37;
    }

    if (a2 <= 8)
    {
      if (a2 == 1)
      {
        if (a3 == 2)
        {
          return a1[61];
        }

        if (a3 == 1)
        {
          return a1[60];
        }

        return a1[62];
      }

      if (a2 != 5)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (a2 == 9)
      {
        return a1[8];
      }

      if (a2 != 36)
      {
        if (a2 == 62)
        {

          return LLVMDoubleTypeInContext();
        }

LABEL_26:
        glpPrimitiveVectorGetLength(a2);
        ElementType = glpPrimitiveVectorGetElementType(a2);
        glpPrimitiveTypeToLLVMType(a1, ElementType, a3);

        JUMPOUT(0x23EE854F0);
      }
    }

    if (a3 == 2)
    {
      return a1[58];
    }

    if (a3 == 1)
    {
      return a1[57];
    }

    return a1[59];
  }

  if (Category == 2)
  {
    goto LABEL_26;
  }

  if (Category != 3)
  {
    if (Category == 4)
    {
      return a1[5];
    }

LABEL_37:
    glpPrimitiveTypeToLLVMType_cold_1(a2);
  }

  ColumnType = glpPrimitiveMatrixGetColumnType(a2);
  PrimitiveType = glpGetPrimitiveType(a2);
  glpABIGetTypeSize(0, PrimitiveType, 0);
  glpTypeSizeGetSize();
  glpPrimitiveTypeToLLVMType(a1, ColumnType, a3);

  return LLVMArrayType();
}

uint64_t glpLLVMBuildConversion(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v49[1] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = a2;
  v11 = glpLLVMGetTypeString(&v15, a4, a5);
  v14 = 0;
  v12 = glpLLVMGetTypeString(&v14, v8, v7);
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
  v24 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v17 = 0u;
  snprintf_l(v17, 0x200uLL, 0, "%s%s.%s%s.%s", "air.convert", v14, v12, v15, v11);
  v49[0] = 0x300000001;
  return glpLLVMCallFunctionInner(a1, v17, a3, &v16, 1, v49, 2u, "");
}

void glpTypeGetVec4s(uint64_t a1)
{
  glpABIGetTypeSize(0, a1, 0);

  glpTypeSizeGetSize();
}

const char *glpLLVMGetTypeString(const char **a1, int a2, int a3)
{
  *a1 = "";
  if (a2 > 61)
  {
    if (a2 > 63)
    {
      if (a2 == 64)
      {
        *a1 = ".f";
        return "v3f64";
      }

      else if (a2 == 65)
      {
        *a1 = ".f";
        return "v4f64";
      }

      else
      {
        return "";
      }
    }

    else
    {
      *a1 = ".f";
      if (a2 == 62)
      {
        return "f64";
      }

      else
      {
        return "v2f64";
      }
    }
  }

  else
  {
    result = "i1";
    switch(a2)
    {
      case 1:
        *a1 = ".f";
        v5 = a3 - 1;
        v6 = "f32";
        v7 = "f16";
        break;
      case 2:
        *a1 = ".f";
        v5 = a3 - 1;
        v6 = "v2f32";
        v7 = "v2f16";
        break;
      case 3:
        *a1 = ".f";
        v5 = a3 - 1;
        v6 = "v3f32";
        v7 = "v3f16";
        break;
      case 4:
        *a1 = ".f";
        v5 = a3 - 1;
        v6 = "v4f32";
        v7 = "v4f16";
        break;
      case 5:
        v8 = ".s";
        goto LABEL_14;
      case 6:
        v9 = ".s";
        goto LABEL_20;
      case 7:
        v10 = ".s";
        goto LABEL_22;
      case 8:
        v11 = ".s";
        goto LABEL_25;
      case 9:
        return result;
      case 10:
        return "v2i1";
      case 11:
        return "v3i1";
      case 12:
        return "v4i1";
      case 36:
        v8 = ".u";
LABEL_14:
        *a1 = v8;
        v5 = a3 - 1;
        v6 = "i32";
        v7 = "i16";
        break;
      case 37:
        v9 = ".u";
LABEL_20:
        *a1 = v9;
        v5 = a3 - 1;
        v6 = "v2i32";
        v7 = "v2i16";
        break;
      case 38:
        v10 = ".u";
LABEL_22:
        *a1 = v10;
        v5 = a3 - 1;
        v6 = "v3i32";
        v7 = "v3i16";
        break;
      case 39:
        v11 = ".u";
LABEL_25:
        *a1 = v11;
        v5 = a3 - 1;
        v6 = "v4i32";
        v7 = "v4i16";
        break;
      default:
        return "";
    }

    if (v5 >= 2)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t glpLLVMAggregateConstant(uint64_t *a1, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = 1;
  v7 = glpLLVMGetMinCommonType(a2, &v19, &v18);
  glpABIGetTypeSize(0, a2, 0);
  glpTypeSizeGetSize();
  v9 = v8;
  v10 = v19;
  VectorType = glpGetVectorType(v7, v19);
  MEMORY[0x28223BE20](VectorType, 8 * v9);
  v13 = &v18 - v12;
  bzero(&v18 - v12, v14);
  v15 = v18;
  glpLLVMCreateConstantVectors(a1, v13, 0, a4, a2, VectorType, v18);
  v16 = glpPrimitiveTypeToLLVMType(a1, v7, v15);
  if (v10 >= 2)
  {
    MEMORY[0x23EE854F0](v16, v10);
  }

  return LLVMConstArray();
}

void glpLLVMPrimitiveConstant(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v14 = glpPrimitiveTypeToLLVMType(a1, a6, a7);
  Category = glpPrimitiveTypeGetCategory(a5);
  if ((Category - 1) >= 2)
  {
    if (Category == 3)
    {
      ColumnType = glpPrimitiveMatrixGetColumnType(a5);
      PrimitiveType = glpGetPrimitiveType(a5);
      glpABIGetTypeSize(0, PrimitiveType, 0);
      glpTypeSizeGetSize();
      if (v19)
      {
        v20 = v19;
        do
        {
          glpLLVMPrimitiveConstant(a1, a2, a3, a4, ColumnType, a6, a7);
          a4 = (a4 + 1);
          a2 += 16;
          --v20;
        }

        while (v20);
      }
    }
  }

  else
  {
    if (glpPrimitiveTypeGetCategory(a6) == 2)
    {
      Length = glpPrimitiveVectorGetLength(a6);
    }

    else
    {
      Length = 1;
    }

    if (glpPrimitiveTypeGetCategory(a5) == 2)
    {
      v21 = glpPrimitiveVectorGetLength(a5);
    }

    else
    {
      v21 = 1;
    }

    if (Length == 1)
    {
      *(a3 + 8 * a4) = glpGetPConst(v14, a6, a2, 0);
    }

    else
    {
      ElementType = glpPrimitiveVectorGetElementType(a6);
      v23 = LLVMGetElementType();
      v30[0] = v30;
      MEMORY[0x28223BE20](v23, 8 * Length);
      v25 = v30 - v24;
      bzero(v30 - v24, v26);
      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          *&v25[8 * i] = glpGetPConst(v23, ElementType, a2, i);
        }
      }

      v28 = Length - v21;
      if (Length > v21)
      {
        v29 = &v25[8 * v21];
        do
        {
          *v29 = MEMORY[0x23EE85370](v23);
          v29 += 8;
          --v28;
        }

        while (v28);
      }

      *(a3 + 8 * a4) = LLVMConstVector();
    }
  }
}

uint64_t glpLLVMGetMinCommonType(unsigned int *ElementType, unsigned int *a2, _DWORD *a3)
{
LABEL_1:
  v5 = ElementType;
  while (1)
  {
    Kind = glpTypeGetKind(v5);
    if (Kind > 2)
    {
      if (Kind == 3)
      {
        ElementType = glpBankTypeGetElementType(v5);
        goto LABEL_1;
      }

      return 0;
    }

    if (Kind != 2)
    {
      break;
    }

    do
    {
      v5 = glpArrayTypeGetElementType(v5);
    }

    while (glpTypeGetKind(v5) == 2);
  }

  if (Kind)
  {
    if (Kind == 1)
    {
      ElementCount = glpAggregateTypeGetElementCount(v5);
      if (ElementCount)
      {
        v8 = ElementCount;
        v9 = 0;
        LODWORD(v10) = 0;
        do
        {
          v11 = glpAggregateTypeGetElementType(v5, v9);
          ElementFlags = glpAggregateTypeGetElementFlags(v5, v9);
          v25 = 0;
          v24 = glpPrecisionIndexFromSAFlags(ElementFlags);
          v13 = glpLLVMGetMinCommonType(v11, &v25, &v24);
          if (v9)
          {
            if (v10 == v13)
            {
              v10 = v10;
            }

            else
            {
              v10 = 5;
            }

            if (!v24 || v24 == 3 || v24 == 2 && *a3 == 1)
            {
              *a3 = v24;
            }

            if (v25 > *a2)
            {
              *a2 = v25;
            }
          }

          else
          {
            v14 = v24;
            *a2 = v25;
            *a3 = v14;
            v10 = v13;
          }

          ++v9;
        }

        while (v8 != v9);
        return v10;
      }
    }

    return 0;
  }

  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v5);
  Category = glpPrimitiveTypeGetCategory(PrimitiveType);
  v10 = 0;
  if (Category > 2)
  {
    if (Category != 3)
    {
      if (Category != 4)
      {
        return v10;
      }

      *a2 = 1;
      *a3 = 3;
      return 5;
    }

    ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
    ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
    Length = glpPrimitiveVectorGetLength(ColumnType);
    if (ScalarType != 62)
    {
      *a2 = Length;
      v19 = ColumnType;
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  if (Category == 1)
  {
    if (PrimitiveType != 62)
    {
      *a2 = 1;
      return PrimitiveType;
    }

    v20 = 2;
    goto LABEL_40;
  }

  if (Category != 2)
  {
    return v10;
  }

  v17 = glpPrimitiveVectorGetElementType(PrimitiveType);
  Length = glpPrimitiveVectorGetLength(PrimitiveType);
  if (v17 == 62)
  {
LABEL_38:
    v20 = 2 * Length;
    if ((2 * Length) >= 4)
    {
      v20 = 4;
    }

LABEL_40:
    *a2 = v20;
    return 5;
  }

  *a2 = Length;
  v19 = PrimitiveType;
LABEL_45:

  return glpPrimitiveVectorGetElementType(v19);
}

void glpLLVMCreateConstantVectors(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  Kind = glpTypeGetKind(a5);
  if (Kind == 2)
  {
    ElementCount = glpArrayTypeGetElementCount(v9);
    ElementType = glpArrayTypeGetElementType(v9);
    glpABIGetTypeSize(0, ElementType, 0);
    glpTypeSizeGetSize();
    if (ElementCount)
    {
      v28 = v27;
      v29 = 16 * v27;
      do
      {
        glpLLVMCreateConstantVectors(a1, a2, a3, a4, ElementType, a6, a7);
        a3 = a3 + v28;
        a4 += v29;
        --ElementCount;
      }

      while (ElementCount);
    }
  }

  else if (Kind == 1)
  {
    v16 = glpAggregateTypeGetElementCount(v9);
    if (v16)
    {
      v17 = 0;
      v30 = v16;
      do
      {
        v18 = a6;
        v19 = a7;
        v20 = glpAggregateTypeGetElementType(v9, v17);
        glpABIGetTypeSize(0, v20, 0);
        glpTypeSizeGetSize();
        v21 = v9;
        v23 = v22;
        v24 = v20;
        a7 = v19;
        a6 = v18;
        glpLLVMCreateConstantVectors(a1, a2, a3, a4, v24, v18, a7);
        a4 += 16 * v23;
        a3 = v23 + a3;
        v9 = v21;
        ++v17;
      }

      while (v30 != v17);
    }
  }

  else
  {
    if (Kind)
    {
      abort();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v9);

    glpLLVMPrimitiveConstant(a1, a4, a2, a3, PrimitiveType, a6, a7);
  }
}

uint64_t glpGetComponentCount(uint64_t a1)
{
  if (glpPrimitiveTypeGetCategory(a1) != 2)
  {
    return 1;
  }

  return glpPrimitiveVectorGetLength(a1);
}

uint64_t glpGetPConst(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 <= 8)
  {
    if (a2 == 1)
    {
      return llvm::ConstantFP::get();
    }

    if (a2 != 5)
    {
      return 0;
    }

    return LLVMConstInt();
  }

  if (a2 == 9 || a2 == 36)
  {
    return LLVMConstInt();
  }

  if (a2 == 62)
  {
    return llvm::ConstantFP::get();
  }

  return 0;
}

uint64_t glpBuildAlloca(uint64_t a1, uint64_t a2)
{
  LLVMGetInsertBlock();
  LLVMPositionBuilderAtEnd();
  v2 = LLVMBuildAlloca();
  LLVMPositionBuilderAtEnd();
  return v2;
}

uint64_t glpLLVMCGSamplerNode(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v58[2] = *MEMORY[0x277D85DE8];
  VariableExtra = glpLValueNodeGetVariableExtra(a2);
  Offset = glpDerefNodeGetOffset(a2);
  if (Offset)
  {
    OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
  }

  else
  {
    OffsetExpr = 0;
  }

  if (*(VariableExtra + 52))
  {
    v14 = *(*(VariableExtra + 144) + 8);
    v15 = *(v14 + 4);
    if (OffsetExpr)
    {
      if (!glpIsConstantNode(OffsetExpr))
      {
        return 0;
      }

      v16 = *(VariableExtra + 156);
      v17 = *glpConstantNodeGetValue(OffsetExpr) + v16;
    }

    else
    {
      v17 = *(VariableExtra + 156);
    }

    if (v15 >= 1)
    {
      for (i = (*(v14 + 8) + 8); v17 != *i; i += 4)
      {
        if (!--v15)
        {
          return 0;
        }
      }

      v20 = (*(a1 + 600) + 48 * *(i - 1));
      goto LABEL_32;
    }

    return 0;
  }

  glpLLVMGetVariablePointer(a1, VariableExtra);
  v9 = *(a1 + 40);
  LLVMTypeOf();
  if (LLVMGetElementType() != v9)
  {
    MEMORY[0x23EE85440](v9, 0);
    if (OffsetExpr)
    {
      Value = glpConstantNodeGetValue(OffsetExpr);
      v11 = *(a1 + 520);
      if (!v11)
      {
        v11 = LLVMConstInt();
        *(a1 + 520) = v11;
      }

      v58[0] = v11;
      v12 = *Value;
      if (v12 > 7)
      {
        v13 = LLVMConstInt();
      }

      else
      {
        v13 = *(a1 + 520 + 8 * v12);
        if (!v13)
        {
          v13 = LLVMConstInt();
          *(a1 + 520 + 8 * v12) = v13;
        }
      }

      v58[1] = v13;
      LLVMBuildGEP();
    }

    LLVMBuildPointerCast();
  }

  LLVMBuildLoad();
  v21 = *(a1 + 596);
  SaType = glpASTNodeGetSaType(a2);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  v24 = PrimitiveType;
  if (v21 < 1)
  {
    v26 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = (*(a1 + 600) + 36);
    do
    {
      v29 = *v28;
      v28 += 12;
      if (v29 == PrimitiveType)
      {
        v27 = v25;
        ++v26;
      }

      ++v25;
    }

    while (v21 != v25);
    if (v26 == 1)
    {
      v20 = (*(a1 + 600) + 48 * v27);
LABEL_32:
      *a3 = v20[1];
      return *v20;
    }
  }

  v52 = a3;
  v58[0] = 0;
  glpLLVMGetTextureTypeFromSampler(a1, v58, PrimitiveType);
  v51[1] = v30;
  v31 = glpLLVMCGInsertBasicBlock(a1, "afterSwitch");
  v51[0] = *(a1 + 432);
  *(a1 + 432) = v31;
  inserted = LLVMGetInsertBlock();
  v56 = v31;
  v55 = LLVMBuildSwitch();
  v51[2] = v51;
  MEMORY[0x28223BE20](v55, v32);
  v33 = (8 * v26 + 15) & 0xFFFFFFFF0;
  v57 = (v51 - v33);
  bzero(v51 - v33, 8 * v26);
  MEMORY[0x28223BE20](v34, v35);
  v36 = (v51 - v33);
  bzero(v51 - v33, 8 * v26);
  MEMORY[0x28223BE20](v37, v38);
  v39 = (v51 - v33);
  bzero(v51 - v33, 8 * v26);
  if (v21 >= 1)
  {
    v40 = 0;
    v41 = 0;
    v54 = a1 + 520;
    v42 = 48 * v21;
    do
    {
      v43 = *(a1 + 600);
      if (*(v43 + v40 + 36) == v24)
      {
        if (v41)
        {
          v44 = glpLLVMCGInsertBasicBlock(a1, "case");
          LLVMPositionBuilderAtEnd();
          v45 = v56;
          v57[v41] = v44;
          v46 = v43 + v40;
          v36[v41] = *v46;
          v39[v41] = *(v46 + 8);
          glpLLVMEmitBranchInnerReal(a1, v45);
          *(a1 + 332) = 0;
          v47 = *(v46 + 32);
          if (v47 > 7)
          {
            v48 = LLVMConstInt();
          }

          else
          {
            v48 = *(v54 + 8 * v47);
            if (!v48)
            {
              v48 = LLVMConstInt();
              *(v54 + 8 * v47) = v48;
            }
          }

          MEMORY[0x23EE84E40](v55, v48, v44);
        }

        else
        {
          *v57 = inserted;
          *v36 = *(v43 + v40);
          *v39 = *(v43 + v40 + 8);
        }

        ++v41;
      }

      v40 += 48;
    }

    while (v42 != v40);
  }

  *(a1 + 432) = v51[0];
  LLVMPositionBuilderAtEnd();
  v19 = LLVMBuildPhi();
  LLVMAddIncoming();
  v49 = LLVMBuildPhi();
  LLVMAddIncoming();
  *v52 = v49;
  return v19;
}