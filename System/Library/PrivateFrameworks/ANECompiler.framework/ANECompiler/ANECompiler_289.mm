void *llvm::itanium_demangle::FunctionType::printLeft(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));
  result = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 + 1 > v5)
  {
    v6 = v4 + 993;
    v7 = 2 * v5;
    if (v7 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    *(a2 + 16) = v8;
    result = malloc_type_realloc(result, v8, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v4 = *(a2 + 8);
  }

  *(result + v4) = 32;
  ++*(a2 + 8);
  return result;
}

uint64_t llvm::itanium_demangle::FunctionType::printRight(uint64_t a1, char **a2)
{
  ++*(a2 + 8);
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 + 1;
  v7 = a2[2];
  if ((v5 + 1) > v7)
  {
    v8 = (v5 + 993);
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_80;
    }

    v5 = a2[1];
    v6 = v5 + 1;
  }

  a2[1] = v6;
  v5[v4] = 40;
  v10 = a2[1];
  if (*(a1 + 32))
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = v10;
      if ((v12 & 1) == 0)
      {
        v14 = a2[2];
        v15 = *a2;
        if (v10 + 2 <= v14)
        {
          v18 = v10;
        }

        else
        {
          v16 = 2 * v14;
          if (v16 <= v10 + 994)
          {
            v17 = v10 + 994;
          }

          else
          {
            v17 = v16;
          }

          a2[2] = v17;
          v15 = malloc_type_realloc(v15, v17, 0x100004077774924uLL);
          *a2 = v15;
          if (!v15)
          {
            goto LABEL_80;
          }

          v18 = a2[1];
        }

        *&v15[v18] = 8236;
        v13 = (a2[1] + 2);
        a2[1] = v13;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 24) + 8 * v11), a2, 18, 0);
      if (v13 == a2[1])
      {
        a2[1] = v10;
        if (++v11 == *(a1 + 32))
        {
          break;
        }
      }

      else
      {
        v12 = 0;
        v10 = a2[1];
        if (++v11 == *(a1 + 32))
        {
          break;
        }
      }
    }
  }

  --*(a2 + 8);
  v19 = v10 + 1;
  v20 = a2[2];
  v21 = *a2;
  if (v10 + 1 > v20)
  {
    v22 = 2 * v20;
    if (v22 <= v10 + 993)
    {
      v23 = v10 + 993;
    }

    else
    {
      v23 = v22;
    }

    a2[2] = v23;
    v21 = malloc_type_realloc(v21, v23, 0x100004077774924uLL);
    *a2 = v21;
    if (!v21)
    {
      goto LABEL_80;
    }

    v10 = a2[1];
    v19 = v10 + 1;
  }

  a2[1] = v19;
  v21[v10] = 41;
  result = (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
  v25 = *(a1 + 40);
  if (v25)
  {
    result = *a2;
    v26 = a2[1];
    v27 = a2[2];
    if ((v26 + 6) > v27)
    {
      v28 = (v26 + 998);
      v29 = 2 * v27;
      if (v29 <= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      a2[2] = v30;
      result = malloc_type_realloc(result, v30, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v26 = a2[1];
    }

    v31 = &v26[result];
    *(v31 + 2) = 29811;
    *v31 = 1852793632;
    a2[1] += 6;
    v25 = *(a1 + 40);
  }

  if ((v25 & 2) != 0)
  {
    result = *a2;
    v32 = a2[1];
    v33 = a2[2];
    if ((v32 + 9) > v33)
    {
      v34 = (v32 + 1001);
      v35 = 2 * v33;
      if (v35 <= v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      a2[2] = v36;
      result = malloc_type_realloc(result, v36, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v32 = a2[1];
    }

    v37 = &v32[result];
    *v37 = *" volatile";
    v37[8] = 101;
    a2[1] += 9;
    v25 = *(a1 + 40);
  }

  if ((v25 & 4) != 0)
  {
    result = *a2;
    v38 = a2[1];
    v39 = a2[2];
    if ((v38 + 9) > v39)
    {
      v40 = (v38 + 1001);
      v41 = 2 * v39;
      if (v41 <= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      a2[2] = v42;
      result = malloc_type_realloc(result, v42, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v38 = a2[1];
    }

    v43 = &v38[result];
    *v43 = *" restrict";
    v43[8] = 116;
    a2[1] += 9;
  }

  v44 = *(a1 + 44);
  if (v44 == 2)
  {
    result = *a2;
    v51 = a2[1];
    v52 = a2[2];
    if ((v51 + 3) > v52)
    {
      v53 = (v51 + 995);
      v54 = 2 * v52;
      if (v54 <= v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = v54;
      }

      a2[2] = v55;
      result = malloc_type_realloc(result, v55, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v51 = a2[1];
    }

    v56 = &v51[result];
    v56[2] = 38;
    *v56 = 9760;
    v50 = 3;
  }

  else
  {
    if (v44 != 1)
    {
      goto LABEL_68;
    }

    result = *a2;
    v45 = a2[1];
    v46 = a2[2];
    if ((v45 + 2) > v46)
    {
      v47 = (v45 + 994);
      v48 = 2 * v46;
      if (v48 <= v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = v48;
      }

      a2[2] = v49;
      result = malloc_type_realloc(result, v49, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_80;
      }

      v45 = a2[1];
    }

    *&v45[result] = 9760;
    v50 = 2;
  }

  a2[1] += v50;
LABEL_68:
  if (!*(a1 + 48))
  {
    return result;
  }

  v57 = *a2;
  v58 = a2[1];
  v59 = v58 + 1;
  v60 = a2[2];
  if ((v58 + 1) > v60)
  {
    v61 = (v58 + 993);
    if (2 * v60 <= v61)
    {
      v62 = v61;
    }

    else
    {
      v62 = 2 * v60;
    }

    a2[2] = v62;
    v57 = malloc_type_realloc(v57, v62, 0x100004077774924uLL);
    *a2 = v57;
    if (v57)
    {
      v58 = a2[1];
      v59 = v58 + 1;
      goto LABEL_75;
    }

LABEL_80:
    abort();
  }

LABEL_75:
  a2[1] = v59;
  v58[v57] = 32;
  v63 = *(a1 + 48);
  result = (*(*v63 + 32))(v63, a2);
  if ((*(v63 + 9) & 0xC0) != 0x40)
  {
    v64 = *(*v63 + 40);

    return v64(v63, a2);
  }

  return result;
}

char *llvm::itanium_demangle::ObjCProtoName::printLeft(void *a1, char **a2)
{
  v4 = a1[2];
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 1) > v7)
  {
    v8 = v6 + 993;
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_24;
    }

    v6 = a2[1];
  }

  v6[v5] = 60;
  v11 = a2[1] + 1;
  a2[1] = v11;
  v12 = a1[4];
  if (v12)
  {
    v13 = a1[3];
    v14 = &v11[v12];
    v15 = a2[2];
    v16 = *a2;
    if (&v11[v12] > v15)
    {
      if (2 * v15 <= (v14 + 992))
      {
        v17 = v14 + 992;
      }

      else
      {
        v17 = (2 * v15);
      }

      a2[2] = v17;
      v16 = malloc_type_realloc(v16, v17, 0x100004077774924uLL);
      *a2 = v16;
      if (!v16)
      {
        goto LABEL_24;
      }

      v11 = a2[1];
    }

    memcpy(&v11[v16], v13, v12);
    v11 = &a2[1][v12];
    a2[1] = v11;
  }

  v18 = a2[2];
  result = *a2;
  if ((v11 + 1) > v18)
  {
    v20 = v11 + 993;
    v21 = 2 * v18;
    if (v21 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    a2[2] = v22;
    result = malloc_type_realloc(result, v22, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v11 = a2[1];
      goto LABEL_23;
    }

LABEL_24:
    abort();
  }

LABEL_23:
  v11[result] = 62;
  ++a2[1];
  return result;
}

uint64_t llvm::itanium_demangle::VendorExtQualType::printLeft(void *a1, char **a2)
{
  v4 = a1[2];
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  result = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 1) > v7)
  {
    v8 = v6 + 993;
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    result = malloc_type_realloc(result, v10, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      goto LABEL_23;
    }

    v6 = a2[1];
  }

  v6[result] = 32;
  v11 = a2[1] + 1;
  a2[1] = v11;
  v12 = a1[4];
  if (v12)
  {
    v13 = a1[3];
    v14 = &v11[v12];
    v15 = a2[2];
    v16 = *a2;
    if (&v11[v12] <= v15)
    {
LABEL_16:
      result = memcpy(&v11[v16], v13, v12);
      a2[1] += v12;
      goto LABEL_17;
    }

    if (2 * v15 <= (v14 + 992))
    {
      v17 = v14 + 992;
    }

    else
    {
      v17 = (2 * v15);
    }

    a2[2] = v17;
    v16 = malloc_type_realloc(v16, v17, 0x100004077774924uLL);
    *a2 = v16;
    if (v16)
    {
      v11 = a2[1];
      goto LABEL_16;
    }

LABEL_23:
    abort();
  }

LABEL_17:
  v18 = a1[5];
  if (v18)
  {
    result = (*(*v18 + 32))(v18, a2);
    if ((*(v18 + 9) & 0xC0) != 0x40)
    {
      v19 = *(*v18 + 40);

      return v19(v18, a2);
    }
  }

  return result;
}

uint64_t llvm::itanium_demangle::QualType::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

uint64_t llvm::itanium_demangle::QualType::hasArraySlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1[10] & 3;
  if (v2 == 2)
  {
    return (*(*v1 + 8))();
  }

  else
  {
    return v2 == 0;
  }
}

uint64_t llvm::itanium_demangle::QualType::hasFunctionSlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (*(v1 + 9) >> 10) & 3;
  if (v2 == 2)
  {
    return (*(*v1 + 16))();
  }

  else
  {
    return v2 == 0;
  }
}

_DWORD *llvm::itanium_demangle::QualType::printLeft(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));

  return llvm::itanium_demangle::QualType::printQuals(a1, a2);
}

_DWORD *llvm::itanium_demangle::QualType::printQuals(_DWORD *result, uint64_t a2)
{
  v3 = result;
  v4 = result[3];
  if (v4)
  {
    result = *a2;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    if (v5 + 6 > v6)
    {
      v7 = v5 + 998;
      v8 = 2 * v6;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      *(a2 + 16) = v9;
      result = malloc_type_realloc(result, v9, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_26;
      }

      v5 = *(a2 + 8);
    }

    v10 = result + v5;
    *(v10 + 2) = 29811;
    *v10 = 1852793632;
    *(a2 + 8) += 6;
    v4 = v3[3];
  }

  if ((v4 & 2) != 0)
  {
    result = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    if (v11 + 9 > v12)
    {
      v13 = v11 + 1001;
      v14 = 2 * v12;
      if (v14 <= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      *(a2 + 16) = v15;
      result = malloc_type_realloc(result, v15, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_26;
      }

      v11 = *(a2 + 8);
    }

    v16 = result + v11;
    *v16 = *" volatile";
    v16[8] = 101;
    *(a2 + 8) += 9;
    v4 = v3[3];
  }

  if ((v4 & 4) == 0)
  {
    return result;
  }

  result = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  if (v17 + 9 > v18)
  {
    v19 = v17 + 1001;
    v20 = 2 * v18;
    if (v20 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    *(a2 + 16) = v21;
    result = malloc_type_realloc(result, v21, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v17 = *(a2 + 8);
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

LABEL_24:
  v22 = result + v17;
  *v22 = *" restrict";
  v22[8] = 116;
  *(a2 + 8) += 9;
  return result;
}

char *llvm::itanium_demangle::TransformedType::printLeft(void *a1, char **a2)
{
  v4 = a1[3];
  v5 = a2[1];
  if (v4)
  {
    v6 = a1[2];
    v7 = &v5[v4];
    v8 = a2[2];
    v9 = *a2;
    if (&v5[v4] > v8)
    {
      if (2 * v8 <= (v7 + 992))
      {
        v10 = v7 + 992;
      }

      else
      {
        v10 = (2 * v8);
      }

      a2[2] = v10;
      v9 = malloc_type_realloc(v9, v10, 0x100004077774924uLL);
      *a2 = v9;
      if (!v9)
      {
        goto LABEL_24;
      }

      v5 = a2[1];
    }

    memcpy(&v5[v9], v6, v4);
    v5 = &a2[1][v4];
    a2[1] = v5;
  }

  v11 = v5 + 1;
  v12 = a2[2];
  v13 = *a2;
  if ((v5 + 1) > v12)
  {
    v14 = (v5 + 993);
    if (2 * v12 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = (2 * v12);
    }

    a2[2] = v15;
    v13 = malloc_type_realloc(v13, v15, 0x100004077774924uLL);
    *a2 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v5 = a2[1];
    v11 = v5 + 1;
  }

  a2[1] = v11;
  v5[v13] = 40;
  v16 = a1[4];
  (*(*v16 + 32))(v16, a2);
  if ((*(v16 + 9) & 0xC0) != 0x40)
  {
    (*(*v16 + 40))(v16, a2);
  }

  result = *a2;
  v18 = a2[1];
  v19 = v18 + 1;
  v20 = a2[2];
  if ((v18 + 1) > v20)
  {
    v21 = (v18 + 993);
    if (2 * v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = (2 * v20);
    }

    a2[2] = v22;
    result = malloc_type_realloc(result, v22, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v18 = a2[1];
      v19 = v18 + 1;
      goto LABEL_23;
    }

LABEL_24:
    abort();
  }

LABEL_23:
  a2[1] = v19;
  v18[result] = 41;
  return result;
}

uint64_t llvm::itanium_demangle::BinaryFPType::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 6) > v6)
  {
    v7 = v5 + 998;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      abort();
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *(v10 + 2) = 29793;
  *v10 = 1869366879;
  a2[1] += 6;
  v11 = *(a1 + 16);
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

char *llvm::itanium_demangle::BitIntType::printLeft(uint64_t a1, char **a2)
{
  v4 = a2[1];
  if ((*(a1 + 24) & 1) == 0)
  {
    v5 = a2[2];
    v6 = *a2;
    if (v4 + 9 > v5)
    {
      v7 = v4 + 1001;
      v8 = 2 * v5;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      a2[2] = v9;
      v6 = malloc_type_realloc(v6, v9, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        goto LABEL_28;
      }

      v4 = a2[1];
    }

    v10 = &v6[v4];
    *v10 = *"unsigned ";
    v10[8] = 32;
    v4 = (a2[1] + 9);
    a2[1] = v4;
  }

  v11 = a2[2];
  v12 = *a2;
  if (v4 + 7 > v11)
  {
    v13 = v4 + 999;
    v14 = 2 * v11;
    if (v14 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    a2[2] = v15;
    v12 = malloc_type_realloc(v12, v15, 0x100004077774924uLL);
    *a2 = v12;
    if (!v12)
    {
      goto LABEL_28;
    }

    v4 = a2[1];
  }

  v16 = &v12[v4];
  *(v16 + 3) = 1953384820;
  *v16 = 1953055327;
  v17 = *a2;
  v18 = a2[1];
  v19 = v18 + 7;
  a2[1] = v18 + 7;
  ++*(a2 + 8);
  v20 = v18 + 8;
  v21 = a2[2];
  if ((v18 + 8) > v21)
  {
    if (2 * v21 <= (v18 + 1000))
    {
      v22 = (v18 + 1000);
    }

    else
    {
      v22 = 2 * v21;
    }

    a2[2] = v22;
    v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_28;
    }

    v19 = a2[1];
    v20 = v19 + 1;
  }

  a2[1] = v20;
  v19[v17] = 40;
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, 19, 0);
  --*(a2 + 8);
  result = *a2;
  v24 = a2[1];
  v25 = v24 + 1;
  v26 = a2[2];
  if ((v24 + 1) > v26)
  {
    v27 = (v24 + 993);
    if (2 * v26 <= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = 2 * v26;
    }

    a2[2] = v28;
    result = malloc_type_realloc(result, v28, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v24 = a2[1];
      v25 = v24 + 1;
      goto LABEL_27;
    }

LABEL_28:
    abort();
  }

LABEL_27:
  a2[1] = v25;
  v24[result] = 41;
  return result;
}

void *llvm::itanium_demangle::PostfixQualifiedType::printLeft(uint64_t a1, char **a2)
{
  result = (*(**(a1 + 16) + 32))(*(a1 + 16));
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = *a2;
    v8 = a2[1];
    v9 = &v8[v5];
    v10 = a2[2];
    if (&v8[v5] > v10)
    {
      if (2 * v10 <= (v9 + 992))
      {
        v11 = v9 + 992;
      }

      else
      {
        v11 = (2 * v10);
      }

      a2[2] = v11;
      v7 = malloc_type_realloc(v7, v11, 0x100004077774924uLL);
      *a2 = v7;
      if (!v7)
      {
        abort();
      }

      v8 = a2[1];
    }

    result = memcpy(&v8[v7], v6, v5);
    a2[1] += v5;
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PixelVectorType,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 30;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A38BC0;
  *(v6 + 4) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::VectorType,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 29;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = &unk_1F1A38C38;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

char *llvm::itanium_demangle::PixelVectorType::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 13) > v6)
  {
    v7 = v5 + 1005;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  qmemcpy(&v5[v4], "pixel vector[", 13);
  a2[1] += 13;
  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  result = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 1) > v13)
  {
    v14 = v12 + 993;
    v15 = 2 * v13;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    a2[2] = v16;
    result = malloc_type_realloc(result, v16, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v12 = a2[1];
      goto LABEL_15;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  v12[result] = 93;
  ++a2[1];
  return result;
}

char *llvm::itanium_demangle::VectorType::printLeft(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if ((v6 + 8) > v7)
  {
    v8 = v6 + 1000;
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = a2[1];
  }

  *&v6[v5] = 0x5B726F7463657620;
  a2[1] += 8;
  v11 = *(a1 + 24);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2);
    if ((*(v11 + 9) & 0xC0) != 0x40)
    {
      (*(*v11 + 40))(v11, a2);
    }
  }

  result = *a2;
  v13 = a2[1];
  v14 = a2[2];
  if ((v13 + 1) > v14)
  {
    v15 = v13 + 993;
    v16 = 2 * v14;
    if (v16 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    a2[2] = v17;
    result = malloc_type_realloc(result, v17, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v13 = a2[1];
      goto LABEL_18;
    }

LABEL_19:
    abort();
  }

LABEL_18:
  v13[result] = 93;
  ++a2[1];
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ArrayType,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 15;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x400;
  *(v8 + 2) = &unk_1F1A38CB0;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

uint64_t llvm::itanium_demangle::ArrayType::printRight(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(*a2 + v5 - 1) != 93)
  {
    v6 = *(a2 + 16);
    if (v5 + 1 > v6)
    {
      v7 = v5 + 993;
      v8 = 2 * v6;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      *(a2 + 16) = v9;
      v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
      *a2 = v4;
      if (!v4)
      {
        goto LABEL_27;
      }

      v5 = *(a2 + 8);
    }

    *(v4 + v5) = 32;
    v4 = *a2;
    v5 = *(a2 + 8) + 1;
    *(a2 + 8) = v5;
  }

  v10 = *(a2 + 16);
  if (v5 + 1 > v10)
  {
    v11 = v5 + 993;
    v12 = 2 * v10;
    if (v12 <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    *(a2 + 16) = v13;
    v4 = malloc_type_realloc(v4, v13, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_27;
    }

    v5 = *(a2 + 8);
  }

  *(v4 + v5) = 91;
  ++*(a2 + 8);
  v14 = *(a1 + 24);
  if (v14)
  {
    (*(*v14 + 32))(*(a1 + 24), a2);
    if ((*(v14 + 9) & 0xC0) != 0x40)
    {
      (*(*v14 + 40))(v14, a2);
    }
  }

  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  if (v16 + 1 > v17)
  {
    v18 = v16 + 993;
    v19 = 2 * v17;
    if (v19 <= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    *(a2 + 16) = v20;
    v15 = malloc_type_realloc(v15, v20, 0x100004077774924uLL);
    *a2 = v15;
    if (v15)
    {
      v16 = *(a2 + 8);
      goto LABEL_24;
    }

LABEL_27:
    abort();
  }

LABEL_24:
  *(v15 + v16) = 93;
  ++*(a2 + 8);
  v21 = *(**(a1 + 16) + 40);

  return v21();
}

uint64_t llvm::itanium_demangle::ArrayType::printInitListAsType(uint64_t a1, char **a2, uint64_t **a3)
{
  v3 = *(a1 + 16);
  if (*(v3 + 8) == 8 && *(v3 + 24) == 4 && **(v3 + 16) == 1918986339)
  {
    return llvm::itanium_demangle::NodeArray::printAsString(a3, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::itanium_demangle::NodeArray::printAsString(uint64_t **a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 1) > v6)
  {
    v7 = 2 * v6;
    if (v7 <= (v5 + 993))
    {
      v8 = v5 + 993;
    }

    else
    {
      v8 = v7;
    }

    a2[2] = v8;
    v9 = malloc_type_realloc(v4, v8, 0x100004077774924uLL);
    *a2 = v9;
    if (!v9)
    {
      goto LABEL_160;
    }

    v10 = a2[1];
    a2[1] = v10 + 1;
    v10[v9] = 34;
    v11 = a1[1];
    if (!v11)
    {
      goto LABEL_153;
    }

    goto LABEL_9;
  }

  a2[1] = v5 + 1;
  v5[v4] = 34;
  v11 = a1[1];
  if (v11)
  {
LABEL_9:
    v12 = 0;
    v13 = *a1;
    v14 = &v13[v11];
    do
    {
      v15 = *v13;
      if (*(*v13 + 8) != 77)
      {
LABEL_152:
        result = 0;
        a2[1] = v5;
        return result;
      }

      v16 = *(v15 + 40);
      if (v16)
      {
        v17 = 0;
        v18 = *(v15 + 32);
        do
        {
          v19 = *v18;
          if ((v19 - 48) > 9 || v17 > 25)
          {
            goto LABEL_152;
          }

          v17 = v19 + 10 * v17 - 48;
          ++v18;
          --v16;
        }

        while (v16);
        if (v17 > 255)
        {
          goto LABEL_152;
        }

        if ((v12 & 1) == 0)
        {
LABEL_21:
          if (v17 > 10)
          {
            goto LABEL_35;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v17 = 0;
        if ((v12 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      if ((v17 - 48) < 0xA)
      {
        goto LABEL_28;
      }

      if (v17 > 64)
      {
        if ((v17 - 65) >= 6 && (v17 - 97) >= 6)
        {
          goto LABEL_38;
        }

LABEL_28:
        v21 = *a2;
        v22 = a2[1];
        v23 = a2[2];
        if ((v22 + 2) > v23)
        {
          v24 = v22 + 994;
          v25 = 2 * v23;
          if (v25 <= v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v25;
          }

          a2[2] = v26;
          v21 = malloc_type_realloc(v21, v26, 0x100004077774924uLL);
          *a2 = v21;
          if (!v21)
          {
            goto LABEL_160;
          }

          v22 = a2[1];
        }

        *&v22[v21] = 8738;
        a2[1] += 2;
        if (v17 > 10)
        {
LABEL_35:
          if (v17 <= 12)
          {
            goto LABEL_80;
          }

          if (v17 == 13)
          {
LABEL_104:
            v33 = *a2;
            v34 = a2[1];
            v66 = a2[2];
            if ((v34 + 2) > v66)
            {
              v67 = v34 + 994;
              v68 = 2 * v66;
              if (v68 <= v67)
              {
                v69 = v67;
              }

              else
              {
                v69 = v68;
              }

              a2[2] = v69;
              v33 = malloc_type_realloc(v33, v69, 0x100004077774924uLL);
              *a2 = v33;
              if (!v33)
              {
                goto LABEL_160;
              }

              v34 = a2[1];
            }

            v12 = 0;
            v39 = 29276;
            goto LABEL_111;
          }

          if (v17 == 34)
          {
            goto LABEL_97;
          }

LABEL_38:
          if (v17 == 92)
          {
            v27 = *a2;
            v28 = a2[1];
            v29 = a2[2];
            if ((v28 + 2) > v29)
            {
              v30 = v28 + 994;
              v31 = 2 * v29;
              if (v31 <= v30)
              {
                v32 = v30;
              }

              else
              {
                v32 = v31;
              }

              a2[2] = v32;
              v27 = malloc_type_realloc(v27, v32, 0x100004077774924uLL);
              *a2 = v27;
              if (!v27)
              {
                goto LABEL_160;
              }

              v28 = a2[1];
            }

            v12 = 0;
            *&v28[v27] = 23644;
            goto LABEL_112;
          }

          goto LABEL_115;
        }

LABEL_47:
        if (v17 > 8)
        {
          if (v17 == 9)
          {
            v33 = *a2;
            v34 = a2[1];
            v50 = a2[2];
            if ((v34 + 2) > v50)
            {
              v51 = v34 + 994;
              v52 = 2 * v50;
              if (v52 <= v51)
              {
                v53 = v51;
              }

              else
              {
                v53 = v52;
              }

              a2[2] = v53;
              v33 = malloc_type_realloc(v33, v53, 0x100004077774924uLL);
              *a2 = v33;
              if (!v33)
              {
                goto LABEL_160;
              }

              v34 = a2[1];
            }

            v12 = 0;
            v39 = 29788;
          }

          else
          {
            v33 = *a2;
            v34 = a2[1];
            v40 = a2[2];
            if ((v34 + 2) > v40)
            {
              v41 = v34 + 994;
              v42 = 2 * v40;
              if (v42 <= v41)
              {
                v43 = v41;
              }

              else
              {
                v43 = v42;
              }

              a2[2] = v43;
              v33 = malloc_type_realloc(v33, v43, 0x100004077774924uLL);
              *a2 = v33;
              if (!v33)
              {
                goto LABEL_160;
              }

              v34 = a2[1];
            }

            v12 = 0;
            v39 = 28252;
          }

          goto LABEL_111;
        }

        if (v17 == 7)
        {
          v44 = *a2;
          v45 = a2[1];
          v46 = a2[2];
          if ((v45 + 2) > v46)
          {
            v47 = v45 + 994;
            v48 = 2 * v46;
            if (v48 <= v47)
            {
              v49 = v47;
            }

            else
            {
              v49 = v48;
            }

            a2[2] = v49;
            v44 = malloc_type_realloc(v44, v49, 0x100004077774924uLL);
            *a2 = v44;
            if (!v44)
            {
              goto LABEL_160;
            }

            v45 = a2[1];
          }

          v12 = 0;
          *&v45[v44] = 24924;
          goto LABEL_112;
        }

        if (v17 == 8)
        {
          v33 = *a2;
          v34 = a2[1];
          v35 = a2[2];
          if ((v34 + 2) > v35)
          {
            v36 = v34 + 994;
            v37 = 2 * v35;
            if (v37 <= v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = v37;
            }

            a2[2] = v38;
            v33 = malloc_type_realloc(v33, v38, 0x100004077774924uLL);
            *a2 = v33;
            if (!v33)
            {
              goto LABEL_160;
            }

            v34 = a2[1];
          }

          v12 = 0;
          v39 = 25180;
          goto LABEL_111;
        }

        goto LABEL_115;
      }

      if (v17 <= 10)
      {
        goto LABEL_47;
      }

      if (v17 <= 12)
      {
LABEL_80:
        if (v17 == 11)
        {
          v33 = *a2;
          v34 = a2[1];
          v58 = a2[2];
          if ((v34 + 2) > v58)
          {
            v59 = v34 + 994;
            v60 = 2 * v58;
            if (v60 <= v59)
            {
              v61 = v59;
            }

            else
            {
              v61 = v60;
            }

            a2[2] = v61;
            v33 = malloc_type_realloc(v33, v61, 0x100004077774924uLL);
            *a2 = v33;
            if (!v33)
            {
              goto LABEL_160;
            }

            v34 = a2[1];
          }

          v12 = 0;
          v39 = 30300;
        }

        else
        {
          v33 = *a2;
          v34 = a2[1];
          v54 = a2[2];
          if ((v34 + 2) > v54)
          {
            v55 = v34 + 994;
            v56 = 2 * v54;
            if (v56 <= v55)
            {
              v57 = v55;
            }

            else
            {
              v57 = v56;
            }

            a2[2] = v57;
            v33 = malloc_type_realloc(v33, v57, 0x100004077774924uLL);
            *a2 = v33;
            if (!v33)
            {
              goto LABEL_160;
            }

            v34 = a2[1];
          }

          v12 = 0;
          v39 = 26204;
        }

        goto LABEL_111;
      }

      if (v17 == 13)
      {
        goto LABEL_104;
      }

      if (v17 == 34)
      {
LABEL_97:
        v33 = *a2;
        v34 = a2[1];
        v62 = a2[2];
        if ((v34 + 2) > v62)
        {
          v63 = v34 + 994;
          v64 = 2 * v62;
          if (v64 <= v63)
          {
            v65 = v63;
          }

          else
          {
            v65 = v64;
          }

          a2[2] = v65;
          v33 = malloc_type_realloc(v33, v65, 0x100004077774924uLL);
          *a2 = v33;
          if (!v33)
          {
            goto LABEL_160;
          }

          v34 = a2[1];
        }

        v12 = 0;
        v39 = 8796;
LABEL_111:
        *&v34[v33] = v39;
LABEL_112:
        a2[1] += 2;
        goto LABEL_113;
      }

LABEL_115:
      if (v17 < 32 || v17 == 127)
      {
        v77 = *a2;
        v78 = a2[1];
        v79 = v78 + 1;
        v80 = a2[2];
        if ((v78 + 1) > v80)
        {
          v81 = (v78 + 993);
          if (2 * v80 <= v81)
          {
            v82 = v81;
          }

          else
          {
            v82 = (2 * v80);
          }

          a2[2] = v82;
          v77 = malloc_type_realloc(v77, v82, 0x100004077774924uLL);
          *a2 = v77;
          if (!v77)
          {
            goto LABEL_160;
          }

          v78 = a2[1];
          v79 = v78 + 1;
        }

        a2[1] = v79;
        v78[v77] = 92;
        if (v17 >= 8)
        {
          v83 = *a2;
          v84 = a2[1];
          v85 = v84 + 1;
          v86 = a2[2];
          if ((v84 + 1) > v86)
          {
            v87 = (v84 + 993);
            if (2 * v86 <= v87)
            {
              v88 = v87;
            }

            else
            {
              v88 = (2 * v86);
            }

            a2[2] = v88;
            v83 = malloc_type_realloc(v83, v88, 0x100004077774924uLL);
            *a2 = v83;
            if (!v83)
            {
              goto LABEL_160;
            }

            v84 = a2[1];
            v85 = v84 + 1;
          }

          a2[1] = v85;
          v84[v83] = 120;
          if (v17 >= 0x10)
          {
            v89 = a0123456789abcd_1[v17 >> 4];
            v90 = *a2;
            v91 = a2[1];
            v92 = v91 + 1;
            v93 = a2[2];
            if ((v91 + 1) > v93)
            {
              v94 = (v91 + 993);
              if (2 * v93 <= v94)
              {
                v95 = v94;
              }

              else
              {
                v95 = (2 * v93);
              }

              a2[2] = v95;
              v90 = malloc_type_realloc(v90, v95, 0x100004077774924uLL);
              *a2 = v90;
              if (!v90)
              {
                goto LABEL_160;
              }

              v91 = a2[1];
              v92 = v91 + 1;
            }

            a2[1] = v92;
            v91[v90] = v89;
          }
        }

        v96 = a0123456789abcd_1[v17 & 0xF];
        v97 = *a2;
        v98 = a2[1];
        v99 = v98 + 1;
        v100 = a2[2];
        if ((v98 + 1) > v100)
        {
          v101 = (v98 + 993);
          if (2 * v100 <= v101)
          {
            v102 = v101;
          }

          else
          {
            v102 = (2 * v100);
          }

          a2[2] = v102;
          v97 = malloc_type_realloc(v97, v102, 0x100004077774924uLL);
          *a2 = v97;
          if (!v97)
          {
            goto LABEL_160;
          }

          v98 = a2[1];
          v99 = v98 + 1;
        }

        a2[1] = v99;
        v98[v97] = v96;
        v12 = 1;
      }

      else
      {
        v70 = *a2;
        v71 = a2[1];
        v72 = v71 + 1;
        v73 = a2[2];
        if ((v71 + 1) > v73)
        {
          v74 = v71 + 993;
          v75 = 2 * v73;
          if (v75 <= v74)
          {
            v76 = v74;
          }

          else
          {
            v76 = v75;
          }

          a2[2] = v76;
          v70 = malloc_type_realloc(v70, v76, 0x100004077774924uLL);
          *a2 = v70;
          if (!v70)
          {
            goto LABEL_160;
          }

          v71 = a2[1];
          v72 = v71 + 1;
        }

        v12 = 0;
        a2[1] = v72;
        v71[v70] = v17;
      }

LABEL_113:
      ++v13;
    }

    while (v13 != v14);
  }

LABEL_153:
  v104 = *a2;
  v105 = a2[1];
  v106 = v105 + 1;
  v107 = a2[2];
  if ((v105 + 1) > v107)
  {
    v108 = (v105 + 993);
    if (2 * v107 <= v108)
    {
      v109 = v108;
    }

    else
    {
      v109 = (2 * v107);
    }

    a2[2] = v109;
    v104 = malloc_type_realloc(v104, v109, 0x100004077774924uLL);
    *a2 = v104;
    if (v104)
    {
      v105 = a2[1];
      v106 = v105 + 1;
      goto LABEL_159;
    }

LABEL_160:
    abort();
  }

LABEL_159:
  a2[1] = v106;
  v105[v104] = 34;
  return 1;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PointerToMemberType,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v12 = *(*a3 + 9);
  v8[24] = 14;
  *(v8 + 25) = v12 & 0xC0 | 0x500 | *(v8 + 25) & 0xF000;
  *(v8 + 2) = &unk_1F1A38D28;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

uint64_t llvm::itanium_demangle::PointerToMemberType::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

char *llvm::itanium_demangle::PointerToMemberType::printLeft(uint64_t a1, char **a2)
{
  (*(**(a1 + 24) + 32))(*(a1 + 24));
  v4 = *(a1 + 24);
  v5 = *(v4 + 9);
  v6 = (v5 >> 8) & 3;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (v6 == 2)
  {
    if ((*(*v4 + 8))(v4, a2))
    {
LABEL_8:
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      if ((v9 + 1) > v10)
      {
        v11 = v9 + 993;
        v12 = 2 * v10;
        if (v12 <= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        a2[2] = v13;
        v8 = malloc_type_realloc(v8, v13, 0x100004077774924uLL);
        *a2 = v8;
        if (!v8)
        {
          goto LABEL_31;
        }

        v9 = a2[1];
      }

      v14 = 40;
      goto LABEL_22;
    }

    v4 = *(a1 + 24);
    v5 = *(v4 + 9);
  }

  v7 = (v5 >> 10) & 3;
  if (!v7 || v7 == 2 && (*(*v4 + 16))(v4, a2))
  {
    goto LABEL_8;
  }

  v8 = *a2;
  v9 = a2[1];
  v15 = a2[2];
  if ((v9 + 1) > v15)
  {
    v16 = v9 + 993;
    v17 = 2 * v15;
    if (v17 <= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    a2[2] = v18;
    v8 = malloc_type_realloc(v8, v18, 0x100004077774924uLL);
    *a2 = v8;
    if (!v8)
    {
      goto LABEL_31;
    }

    v9 = a2[1];
  }

  v14 = 32;
LABEL_22:
  v9[v8] = v14;
  ++a2[1];
  v19 = *(a1 + 16);
  (*(*v19 + 32))(v19, a2);
  if ((*(v19 + 9) & 0xC0) != 0x40)
  {
    (*(*v19 + 40))(v19, a2);
  }

  result = *a2;
  v21 = a2[1];
  v22 = a2[2];
  if ((v21 + 3) > v22)
  {
    v23 = v21 + 995;
    v24 = 2 * v22;
    if (v24 <= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    a2[2] = v25;
    result = malloc_type_realloc(result, v25, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v21 = a2[1];
      goto LABEL_30;
    }

LABEL_31:
    abort();
  }

LABEL_30:
  v26 = &v21[result];
  v26[2] = 42;
  *v26 = 14906;
  a2[1] += 3;
  return result;
}

uint64_t llvm::itanium_demangle::PointerToMemberType::printRight(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(v4 + 9);
  v6 = (v5 >> 8) & 3;
  if (v6)
  {
    if (v6 != 2)
    {
LABEL_5:
      v7 = (v5 >> 10) & 3;
      if (v7 && (v7 != 2 || !(*(*v4 + 16))(v4, a2)))
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    if (((*(*v4 + 8))(v4, a2) & 1) == 0)
    {
      v4 = *(a1 + 24);
      v5 = *(v4 + 9);
      goto LABEL_5;
    }
  }

LABEL_8:
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  if (v9 + 1 > v10)
  {
    v11 = v9 + 993;
    v12 = 2 * v10;
    if (v12 <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    *(a2 + 16) = v13;
    v8 = malloc_type_realloc(v8, v13, 0x100004077774924uLL);
    *a2 = v8;
    if (!v8)
    {
      abort();
    }

    v9 = *(a2 + 8);
  }

  *(v8 + v9) = 41;
  ++*(a2 + 8);
LABEL_15:
  v14 = *(**(a1 + 24) + 40);

  return v14();
}

uint64_t llvm::itanium_demangle::ElaboratedTypeSpefType::printLeft(void *a1, char **a2)
{
  v4 = a1[3];
  v5 = a2[1];
  if (v4)
  {
    v6 = a1[2];
    v7 = &v5[v4];
    v8 = a2[2];
    v9 = *a2;
    if (&v5[v4] > v8)
    {
      if (2 * v8 <= (v7 + 992))
      {
        v10 = v7 + 992;
      }

      else
      {
        v10 = (2 * v8);
      }

      a2[2] = v10;
      v9 = malloc_type_realloc(v9, v10, 0x100004077774924uLL);
      *a2 = v9;
      if (!v9)
      {
        goto LABEL_19;
      }

      v5 = a2[1];
    }

    memcpy(&v5[v9], v6, v4);
    v5 = &a2[1][v4];
    a2[1] = v5;
  }

  v11 = v5 + 1;
  v12 = a2[2];
  v13 = *a2;
  if ((v5 + 1) <= v12)
  {
    goto LABEL_15;
  }

  v14 = (v5 + 993);
  if (2 * v12 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = (2 * v12);
  }

  a2[2] = v15;
  v13 = malloc_type_realloc(v13, v15, 0x100004077774924uLL);
  *a2 = v13;
  if (!v13)
  {
LABEL_19:
    abort();
  }

  v5 = a2[1];
  v11 = v5 + 1;
LABEL_15:
  a2[1] = v11;
  v5[v13] = 32;
  v16 = a1[4];
  result = (*(*v16 + 32))(v16, a2);
  if ((*(v16 + 9) & 0xC0) != 0x40)
  {
    v18 = *(*v16 + 40);

    return v18(v16, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::PointerType::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

char *llvm::itanium_demangle::PointerType::printLeft(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  if (*(v4 + 8) == 11)
  {
    v5 = *(v4 + 16);
    if (*(v5 + 8) == 8 && *(v5 + 24) == 11)
    {
      v6 = *(v5 + 16);
      v7 = *v6;
      v8 = *(v6 + 3);
      if (v7 == 0x6A626F5F636A626FLL && v8 == 0x7463656A626F5F63)
      {
        v28 = a2 + 1;
        v35 = a2[1];
        v36 = a2[2];
        v37 = *a2;
        if ((v35 + 3) > v36)
        {
          v38 = v4;
          v39 = v35 + 995;
          v40 = 2 * v36;
          if (v40 <= v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = v40;
          }

          a2[2] = v41;
          v42 = malloc_type_realloc(v37, v41, 0x100004077774924uLL);
          *a2 = v42;
          if (!v42)
          {
            goto LABEL_61;
          }

          v37 = v42;
          v35 = *v28;
          v4 = v38;
        }

        v43 = &v35[v37];
        v43[2] = 60;
        *v43 = 25705;
        v27 = (*v28 + 3);
        *v28 = v27;
        v44 = *(v4 + 32);
        if (v44)
        {
          v45 = *(v4 + 24);
          v46 = v27 + v44;
          v47 = a2[2];
          v48 = *a2;
          if (v27 + v44 > v47)
          {
            if (2 * v47 <= v46 + 992)
            {
              v49 = (v46 + 992);
            }

            else
            {
              v49 = (2 * v47);
            }

            a2[2] = v49;
            v48 = malloc_type_realloc(v48, v49, 0x100004077774924uLL);
            *a2 = v48;
            if (!v48)
            {
              goto LABEL_61;
            }

            v27 = *v28;
          }

          memcpy(&v48[v27], v45, v44);
          v27 = &(*v28)[v44];
          *v28 = v27;
        }

        v50 = a2[2];
        result = *a2;
        if (v27 + 1 > v50)
        {
          v51 = (v27 + 993);
          v52 = 2 * v50;
          if (v52 <= v51)
          {
            v53 = v51;
          }

          else
          {
            v53 = v52;
          }

          a2[2] = v53;
          result = malloc_type_realloc(result, v53, 0x100004077774924uLL);
          *a2 = result;
          if (!result)
          {
            goto LABEL_61;
          }

          v27 = *v28;
        }

        v34 = 62;
        goto LABEL_39;
      }
    }
  }

  (*(*v4 + 32))(v4, a2);
  v10 = *(a1 + 16);
  if ((v10[10] & 3) == 0 || (v10[10] & 3) == 2 && (*(*v10 + 8))(v10, a2))
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    if ((v12 + 1) > v13)
    {
      v14 = v12 + 993;
      v15 = 2 * v13;
      if (v15 <= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      a2[2] = v16;
      v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
      *a2 = v11;
      if (!v11)
      {
        goto LABEL_61;
      }

      v12 = a2[1];
    }

    v12[v11] = 32;
    ++a2[1];
  }

  v17 = *(a1 + 16);
  v18 = *(v17 + 9);
  v19 = (v18 >> 8) & 3;
  if (v19)
  {
    if (v19 != 2)
    {
LABEL_22:
      v20 = (v18 >> 10) & 3;
      if (v20 && (v20 != 2 || !(*(*v17 + 16))(v17, a2)))
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    if (((*(*v17 + 8))(v17, a2) & 1) == 0)
    {
      v17 = *(a1 + 16);
      v18 = *(v17 + 9);
      goto LABEL_22;
    }
  }

LABEL_25:
  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  if ((v22 + 1) > v23)
  {
    v24 = v22 + 993;
    v25 = 2 * v23;
    if (v25 <= v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    a2[2] = v26;
    v21 = malloc_type_realloc(v21, v26, 0x100004077774924uLL);
    *a2 = v21;
    if (!v21)
    {
      goto LABEL_61;
    }

    v22 = a2[1];
  }

  v22[v21] = 40;
  ++a2[1];
LABEL_32:
  v28 = a2 + 1;
  v27 = a2[1];
  v29 = a2[2];
  result = *a2;
  if (v27 + 1 > v29)
  {
    v31 = (v27 + 993);
    v32 = 2 * v29;
    if (v32 <= v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v32;
    }

    a2[2] = v33;
    result = malloc_type_realloc(result, v33, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v27 = *v28;
      goto LABEL_38;
    }

LABEL_61:
    abort();
  }

LABEL_38:
  v34 = 42;
LABEL_39:
  result[v27] = v34;
  ++*v28;
  return result;
}

uint64_t llvm::itanium_demangle::PointerType::printRight(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (*(result + 8) != 11 || (v5 = *(result + 16), *(v5 + 8) != 8) || *(v5 + 24) != 11 || ((v6 = *(v5 + 16), v7 = *v6, v8 = *(v6 + 3), v7 == 0x6A626F5F636A626FLL) ? (v9 = v8 == 0x7463656A626F5F63) : (v9 = 0), !v9))
  {
    v10 = *(result + 9);
    v11 = (v10 >> 8) & 3;
    if (v11)
    {
      if (v11 == 2)
      {
        if ((*(*result + 8))(result, a2))
        {
          goto LABEL_15;
        }

        result = *(a1 + 16);
        v10 = *(result + 9);
      }

      v12 = (v10 >> 10) & 3;
      if (v12 && (v12 != 2 || !(*(*result + 16))(result, a2)))
      {
LABEL_22:
        v19 = *(**(a1 + 16) + 40);

        return v19();
      }
    }

LABEL_15:
    v13 = *a2;
    v14 = *(a2 + 8);
    v15 = *(a2 + 16);
    if (v14 + 1 > v15)
    {
      v16 = v14 + 993;
      v17 = 2 * v15;
      if (v17 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      *(a2 + 16) = v18;
      v13 = malloc_type_realloc(v13, v18, 0x100004077774924uLL);
      *a2 = v13;
      if (!v13)
      {
        abort();
      }

      v14 = *(a2 + 8);
    }

    *(v13 + v14) = 41;
    ++*(a2 + 8);
    goto LABEL_22;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ReferenceType::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

_BYTE *llvm::itanium_demangle::ReferenceType::printLeft(_BYTE *result, char **a2)
{
  v2 = result[28];
  if ((v2 & 1) == 0)
  {
    v4 = result;
    result[28] = 1;
    result = llvm::itanium_demangle::ReferenceType::collapse(result, a2);
    if (!v5)
    {
LABEL_40:
      v4[28] = v2;
      return result;
    }

    v6 = result;
    v7 = v5;
    (*(*v5 + 32))(v5, a2);
    if ((*(v7 + 10) & 3) == 0 || (*(v7 + 10) & 3) == 2 && (*(*v7 + 8))(v7, a2))
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      if ((v9 + 1) > v10)
      {
        v11 = v9 + 993;
        v12 = 2 * v10;
        if (v12 <= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        a2[2] = v13;
        v8 = malloc_type_realloc(v8, v13, 0x100004077774924uLL);
        *a2 = v8;
        if (!v8)
        {
          goto LABEL_42;
        }

        v9 = a2[1];
      }

      v9[v8] = 32;
      ++a2[1];
    }

    v14 = *(v7 + 9);
    v15 = (v14 >> 8) & 3;
    if (!v15)
    {
      goto LABEL_20;
    }

    if (v15 == 2)
    {
      if ((*(*v7 + 8))(v7, a2))
      {
        goto LABEL_20;
      }

      v14 = *(v7 + 9);
    }

    v16 = (v14 >> 10) & 3;
    if (v16 && (v16 != 2 || !(*(*v7 + 16))(v7, a2)))
    {
LABEL_27:
      if (v6)
      {
        v23 = "&&";
      }

      else
      {
        v23 = "&";
      }

      if (v6)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      v25 = *a2;
      v26 = a2[1];
      v27 = &v26[v24];
      v28 = a2[2];
      if (&v26[v24] <= v28)
      {
        goto LABEL_39;
      }

      if (2 * v28 <= (v27 + 992))
      {
        v29 = v27 + 992;
      }

      else
      {
        v29 = (2 * v28);
      }

      a2[2] = v29;
      v25 = malloc_type_realloc(v25, v29, 0x100004077774924uLL);
      *a2 = v25;
      if (v25)
      {
        v26 = a2[1];
LABEL_39:
        result = memcpy(&v26[v25], v23, v24);
        a2[1] += v24;
        goto LABEL_40;
      }

LABEL_42:
      abort();
    }

LABEL_20:
    v17 = *a2;
    v18 = a2[1];
    v19 = a2[2];
    if ((v18 + 1) > v19)
    {
      v20 = v18 + 993;
      v21 = 2 * v19;
      if (v21 <= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      a2[2] = v22;
      v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
      *a2 = v17;
      if (!v17)
      {
        goto LABEL_42;
      }

      v18 = a2[1];
    }

    v18[v17] = 40;
    ++a2[1];
    goto LABEL_27;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ReferenceType::printRight(uint64_t result, void **a2)
{
  v2 = *(result + 28);
  if ((v2 & 1) == 0)
  {
    v4 = result;
    *(result + 28) = 1;
    result = llvm::itanium_demangle::ReferenceType::collapse(result, a2);
    if (!v5)
    {
LABEL_18:
      *(v4 + 28) = v2;
      return result;
    }

    v6 = v5;
    v7 = *(v5 + 9);
    v8 = (v7 >> 8) & 3;
    if (!v8)
    {
      goto LABEL_10;
    }

    if (v8 == 2)
    {
      if ((*(*v5 + 8))(v5, a2))
      {
        goto LABEL_10;
      }

      v7 = *(v6 + 9);
    }

    v9 = (v7 >> 10) & 3;
    if (v9 && (v9 != 2 || !(*(*v6 + 16))(v6, a2)))
    {
LABEL_17:
      result = (*(*v6 + 40))(v6, a2);
      goto LABEL_18;
    }

LABEL_10:
    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    if ((v11 + 1) > v12)
    {
      v13 = (v11 + 993);
      v14 = 2 * v12;
      if (v14 <= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      a2[2] = v15;
      v10 = malloc_type_realloc(v10, v15, 0x100004077774924uLL);
      *a2 = v10;
      if (!v10)
      {
        abort();
      }

      v11 = a2[1];
    }

    v11[v10] = 41;
    a2[1] = a2[1] + 1;
    goto LABEL_17;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ReferenceType::collapse(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 16);
  ptr = v16;
  v14 = v16;
  v15 = &v17;
  memset(v16, 0, sizeof(v16));
  for (i = (*(*v4 + 24))(v4); *(i + 8) == 13; i = (*(*v6 + 24))(v6, a2))
  {
    v6 = *(i + 16);
    if (*(i + 24) < v3)
    {
      v3 = *(i + 24);
    }

    v7 = v14;
    v8 = ptr;
    if (v14 == v15)
    {
      v10 = v14 - ptr;
      if (ptr == v16)
      {
        v8 = malloc_type_malloc(2 * (v14 - ptr), 0x6004044C4A2DFuLL);
        if (!v8)
        {
LABEL_21:
          abort();
        }

        if (v14 != ptr)
        {
          v11 = v8;
          memmove(v8, ptr, v14 - ptr);
          v8 = v11;
        }

        ptr = v8;
      }

      else
      {
        v8 = malloc_type_realloc(ptr, 2 * (v14 - ptr), 0x6004044C4A2DFuLL);
        ptr = v8;
        if (!v8)
        {
          goto LABEL_21;
        }
      }

      v15 = &v8[8 * (v10 >> 2)];
      *&v8[v10] = v6;
      v14 = &v8[v10 + 8];
      v9 = (v10 + 8) >> 3;
      if (v9 < 2)
      {
        continue;
      }
    }

    else
    {
      *v14 = v6;
      v14 += 8;
      v9 = (v7 + 8 - ptr) >> 3;
      if (v9 < 2)
      {
        continue;
      }
    }

    if (v6 == *&v8[(4 * v9 - 4) & 0xFFFFFFFFFFFFFFF8])
    {
      break;
    }
  }

  if (ptr != v16)
  {
    free(ptr);
  }

  return v3;
}

uint64_t details::ZinIrVectorView::serialize(uint64_t a1, void *a2, size_t *a3)
{
  v6 = *a2;
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v69 = 0;
  if (ZinKernelFormatGetBitDepth(*(**(a1 + 8) + 8), &v69))
  {
    return 3;
  }

  v11 = v8 * v7;
  v62 = a3;
  v63 = a2;
  if (*(**(a1 + 8) + 8) == 6)
  {
    v69 = 16;
    v12 = 2;
  }

  else
  {
    v12 = v69 / 8;
  }

  v13 = v11 * v9;
  if (!v6)
  {
    goto LABEL_71;
  }

  v14 = *(a1 + 24);
  if (*(a1 + 56))
  {
    if (!v14)
    {
      goto LABEL_71;
    }

    v15 = 0;
    v16 = vdupq_n_s64(v13 - 1);
    v17 = (v6 + 8);
    v18 = vdupq_n_s64(8uLL);
    v64 = v18;
    v65 = v16;
    while (1)
    {
      v19 = **(a1 + 8);
      v20 = *(v19 + 8);
      if (v20 > 3)
      {
        if (v20 != 4 && v20 != 6)
        {
LABEL_85:
          v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v54)
          {
            details::ZinIrVectorView::serialize(v54, v55, v56, v57, v58, v59, v60, v61);
          }

          return 3;
        }

        v23 = 0;
        if (*(a1 + 16) + v15 < *(v19 + 56))
        {
          ZinIrVector::GetAt<half>(v19);
          v18 = v64;
          v16 = v65;
        }

        if (v13)
        {
          v24 = v17;
          v25 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
          v26 = xmmword_1A7598670;
          v27 = xmmword_1A7598660;
          v28 = xmmword_1A759D330;
          v29 = xmmword_1A759D320;
          do
          {
            v30 = vmovn_s64(vcgeq_u64(v16, v26));
            if (vuzp1_s8(vuzp1_s16(v30, v23), v23).u8[0])
            {
              *(v24 - 4) = v23.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(v30, v23), *&v23).i8[1])
            {
              *(v24 - 3) = v23.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(v23, vmovn_s64(vcgeq_u64(v16, *&v27))), *&v23).i8[2])
            {
              *(v24 - 2) = v23.i16[0];
              *(v24 - 1) = v23.i16[0];
            }

            v31 = vmovn_s64(vcgeq_u64(v16, v28));
            if (vuzp1_s8(*&v23, vuzp1_s16(v31, v23)).i32[1])
            {
              *v24 = v23.i16[0];
            }

            if (vuzp1_s8(*&v23, vuzp1_s16(v31, v23)).i8[5])
            {
              v24[1] = v23.i16[0];
            }

            if (vuzp1_s8(*&v23, vuzp1_s16(v23, vmovn_s64(vcgeq_u64(v16, *&v29)))).i8[6])
            {
              v24[2] = v23.i16[0];
              v24[3] = v23.i16[0];
            }

            v28 = vaddq_s64(v28, v18);
            v27 = vaddq_s64(v27, v18);
            v26 = vaddq_s64(v26, v18);
            v24 += 8;
            v29 = vaddq_s64(v29, v18);
            v25 -= 8;
          }

          while (v25);
        }
      }

      else
      {
        if (v20 == 1)
        {
          if (*(a1 + 16) + v15 < *(v19 + 56))
          {
            v21 = ZinIrVector::GetAt<signed char>(v19);
LABEL_41:
            v18 = v64;
            v16 = v65;
            v32 = v21;
            if (!v13)
            {
              goto LABEL_45;
            }

LABEL_44:
            memset((v6 + v13 * v15), v32, v13);
            v18 = v64;
            v16 = v65;
            goto LABEL_45;
          }
        }

        else
        {
          if (v20 != 2)
          {
            goto LABEL_85;
          }

          if (*(a1 + 16) + v15 < *(v19 + 56))
          {
            v21 = ZinIrVector::GetAt<unsigned char>(v19);
            goto LABEL_41;
          }
        }

        v32 = 0;
        if (v13)
        {
          goto LABEL_44;
        }
      }

LABEL_45:
      ++v15;
      v17 += v13;
      if (v15 >= *(a1 + 24))
      {
        goto LABEL_71;
      }
    }
  }

  if (!v14)
  {
    goto LABEL_71;
  }

  v33 = 0;
  v34 = 0;
  v35 = *(a1 + 80);
  v36 = v6;
  v37 = v35;
LABEL_49:
  if (!v37)
  {
    goto LABEL_70;
  }

  v38 = 0;
  v39 = *(a1 + 72);
  v40 = v39;
LABEL_51:
  if (!v40)
  {
    goto LABEL_68;
  }

  v41 = 0;
  v42 = *(a1 + 64);
  while (!v42)
  {
LABEL_66:
    if (++v41 >= v39)
    {
      v35 = *(a1 + 80);
      v40 = v39;
LABEL_68:
      if (++v38 < v35)
      {
        goto LABEL_51;
      }

      v14 = *(a1 + 24);
      v37 = v35;
LABEL_70:
      ++v34;
      v36 += v13;
      v33 += v13;
      if (v34 >= v14)
      {
LABEL_71:
        v48 = *(a1 + 48);
        if (v48)
        {
          v49 = *(a1 + 24) * v13 % v48;
          v50 = v62;
          if (v49)
          {
            v51 = v48 - v49;
            if (v6)
            {
              __src = 0;
              if (v51)
              {
                for (i = 0; i < v51; ++i)
                {
                  memcpy((v6 + (i + *(a1 + 24)) * v12), &__src, v12);
                }
              }
            }
          }

          else
          {
            v51 = 0;
          }
        }

        else
        {
          v51 = 0;
          v50 = v62;
        }

        result = 0;
        v53 = (v51 + *(a1 + 24) * v13) * v12;
        *v50 = v53;
        if (*v63)
        {
          if (v53 > v63[1])
          {
            ZinAssertImpl("kernel serialization");
          }
        }

        return result;
      }

      goto LABEL_49;
    }
  }

  v43 = 0;
  while (1)
  {
    v44 = **(a1 + 8);
    v45 = *(v44 + 8);
    if (v45 > 3)
    {
      break;
    }

    if (v45 == 1)
    {
      v46 = ZinIrVector::GetAt<signed char>(v44);
    }

    else
    {
      if (v45 != 2)
      {
        goto LABEL_79;
      }

      v46 = ZinIrVector::GetAt<unsigned char>(v44);
    }

    *(v36 + *(a1 + 64) * (v41 + v38 * *(a1 + 72)) + v43) = v46;
LABEL_64:
    ++v43;
    v42 = *(a1 + 64);
    if (v43 >= v42)
    {
      v39 = *(a1 + 72);
      goto LABEL_66;
    }
  }

  if (v45 == 4 || v45 == 6)
  {
    ZinIrVector::GetAt<half>(v44);
    *(v6 + 2 * (v33 + v43 + *(a1 + 64) * (v41 + v38 * *(a1 + 72)))) = v47;
    goto LABEL_64;
  }

LABEL_79:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    details::ZinIrVectorView::serialize(&v67, v68);
  }

  return 3;
}

uint64_t details::ZinIrKernelView::serialize_scale(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6)
{
  if (*(a2 + 9) == 1)
  {
    ZinIrCodegenKernelSerializeVector((*(a1 + 8) + 656), a3, a4, a5, a6);
  }

  if (*a6 && *a5 > a6[1])
  {
    ZinAssertImpl("scale serialization failed");
  }

  return 0;
}

void ZinIrCodegenKernelSerializeVector(void *a1, void *a2, uint64_t *a3, void *a4, void *a5)
{
  if (*a1)
  {
    operator new();
  }

  ZinAssertImpl("per-channel values are missing", a2, a3, a4, a5);
}

void ZinIrCodegenKernelSerializeVectorSubchannel(uint64_t *a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6)
{
  if (*a1)
  {
    operator new();
  }

  ZinAssertImpl("per-channel data is missing", a2, a3, a4, a5, a6);
}

uint64_t details::ZinIrKernelView::serialize_bias(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6)
{
  if (*(a2 + 17) == 1)
  {
    ZinIrCodegenKernelSerializeVectorSubchannel((*(a1 + 8) + 664), a2, a3, a4, a5, a6);
  }

  if (*a6 && *a5 > a6[1])
  {
    ZinAssertImpl("bias serialization failed");
  }

  return 0;
}

uint64_t details::ZinIrKernelView::serialize_zero_point(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6)
{
  if ((*(a2 + 280) & 2) != 0)
  {
    if (ZinKernelFormatIsQuantizationCompatible(*(*(*(a1 + 8) + 680) + 8)))
    {
      Hal = ZinIrTarget::GetHal(*(a1 + 16));
      if (*((*(*Hal + 16))(Hal) + 1648))
      {
        ZinIrCodegenKernelSerializeVectorSubchannel((*(a1 + 8) + 680), a2, a3, a4, a5, a6);
      }

      ZinAssertImpl("this arch does not have zero-point support");
    }

    ZinAssertImpl("format is incompatible with zero point");
  }

  if (*a6 && *a5 > a6[1])
  {
    ZinAssertImpl("zero point serialization failed");
  }

  return 0;
}

uint64_t ZinIrCodegenKernelSerializeWeights(uint64_t a1, ZinIrTarget *a2, char *a3, int *a4, _BYTE *a5, uint64_t a6, char a7, uint64_t *a8, void *a9)
{
  result = *a3;
  if (result)
  {
    result = ZinKernelFormatIsUnity(result);
    if ((result & 1) == 0)
    {
      v17 = *(a1 + 672);
      if (v17)
      {
        v24 = *a4;
        v25 = *(a1 + 680);
        v23 = a4[1];
        v22 = *(a1 + 172);
        v18 = *(a1 + 174);
        ShouldUseSparseBinaryForCompression = ZinIrKernel::ShouldUseSparseBinaryForCompression(a1);
        Hal = ZinIrTarget::GetHal(a2);
        v21 = (*(*Hal + 16))(Hal);
        SerializableFactory::createWeightSerializer(a3, v17, v25, v24, v23, a6, a7, a5, v22, SHIBYTE(v22), v18, ShouldUseSparseBinaryForCompression, 1, v21);
      }

      ZinAssertImpl("weights missing");
    }
  }

  return result;
}

void SerializableFactory::createWeightSerializer(char *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, _BYTE *a9, char a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  v17 = a15;
  v34 = a12;
  v32 = a4;
  v33 = a3;
  v30 = a6;
  v31 = a5;
  v29 = a7;
  v28 = a8;
  v27 = a11;
  v26 = a13;
  if ((*__src - 7) <= 0x14)
  {
    v18 = *(a15 + 1920);
    v19 = *(a15 + 1928);
    if (v18 != v19)
    {
      while (*v18 != *__src)
      {
        if (++v18 == v19)
        {
          goto LABEL_5;
        }
      }
    }

    if (v18 == v19)
    {
LABEL_5:
      ZinAssertImpl("Invalid kernel format");
    }
  }

  memcpy(__dst, __src, 0x11CuLL);
  std::__optional_copy_base<ZinIrShardingMap,false>::__optional_copy_base[abi:ne200100](&v25, (__src + 288));
  if ((*(v17 + 1748) & 1) == 0)
  {
    v20 = *(__src + 40);
    __dst[19] = 0x100000001;
    LODWORD(__dst[20]) = v20;
    v21 = *(__src + 43);
    *(&__dst[20] + 4) = 0x100000001;
    HIDWORD(__dst[21]) = v21;
  }

  v22 = *__src;
  v23 = "Unknown kernel format in codegen";
  if (*__src > 14)
  {
    if (v22 <= 22)
    {
      if ((v22 - 15) < 4)
      {
        if (*a9)
        {
          operator new();
        }

        operator new();
      }

      if ((v22 - 19) < 4)
      {
        if (*a9)
        {
          operator new();
        }

        operator new();
      }

      goto LABEL_53;
    }

    if ((v22 - 23) < 4)
    {
      if (*a9)
      {
        operator new();
      }

      operator new();
    }

    if (v22 == 27)
    {
LABEL_42:
      if (*a9 == 1)
      {
        operator new();
      }

      operator new();
    }

    if (v22 == 31)
    {
      v23 = "Int4 kernel should have been palettized";
    }

LABEL_53:
    ZinAssertImpl(v23);
  }

  if (v22 <= 5)
  {
    if (v22 <= 3)
    {
      if (v22 == 1)
      {
        if (*a9 == 1)
        {
          std::make_unique[abi:ne200100]<details::ZinIrWeightView<signed char,ZinIrOutputStreamCompressed<signed char>>,ZinIrWeight const*&,ZinIrVector const*&,ZinIrDims3D &,ZinIrDims3D &,ZinIrPadding const&,unsigned long &,unsigned long &,unsigned long &,BOOL &,ZinIrKernel::CompressionInfo const&,ZinSmallSourceMode &,BOOL &,ZinNamedType<BOOL,HalfWorkUnitModeTag> &,BOOL &,unsigned long &,ZinIrHalParameters const&,0>(&v33, &v32, &__dst[19], &__dst[20] + 4, (__src + 176), &v31, &v30, &v29, &v28, a9, &a10, &v27, &v34, &v26, &a14, v17);
        }

        std::make_unique[abi:ne200100]<details::ZinIrWeightView<signed char,ZinIrOutputStreamBasic<signed char>>,ZinIrWeight const*&,ZinIrVector const*&,ZinIrDims3D &,ZinIrDims3D &,ZinIrPadding const&,unsigned long &,unsigned long &,unsigned long &,BOOL &,ZinIrKernel::CompressionInfo const&,ZinSmallSourceMode &,BOOL &,ZinNamedType<BOOL,HalfWorkUnitModeTag> &,BOOL &,unsigned long &,ZinIrHalParameters const&,0>(&v33, &v32, &__dst[19], &__dst[20] + 4, (__src + 176), &v31, &v30, &v29, &v28, a9, &a10, &v27, &v34, &v26, &a14, v17);
      }

      if (v22 == 2)
      {
        goto LABEL_42;
      }

      goto LABEL_53;
    }

    if (v22 != 4)
    {
      if (*a9 == 1)
      {
        std::make_unique[abi:ne200100]<details::ZinIrWeightView<e4m3_t,ZinIrOutputStreamCompressed<e4m3_t>>,ZinIrWeight const*&,ZinIrVector const*&,ZinIrDims3D &,ZinIrDims3D &,ZinIrPadding const&,unsigned long &,unsigned long &,unsigned long &,BOOL &,ZinIrKernel::CompressionInfo const&,ZinSmallSourceMode &,BOOL &,ZinNamedType<BOOL,HalfWorkUnitModeTag> &,BOOL &,unsigned long &,ZinIrHalParameters const&,0>(&v33, &v32, &__dst[19], &__dst[20] + 4, (__src + 176), &v31, &v30, &v29, &v28, a9, &a10, &v27, &v34, &v26, &a14, v17);
      }

      std::make_unique[abi:ne200100]<details::ZinIrWeightView<e4m3_t,ZinIrOutputStreamBasic<e4m3_t>>,ZinIrWeight const*&,ZinIrVector const*&,ZinIrDims3D &,ZinIrDims3D &,ZinIrPadding const&,unsigned long &,unsigned long &,unsigned long &,BOOL &,ZinIrKernel::CompressionInfo const&,ZinSmallSourceMode &,BOOL &,ZinNamedType<BOOL,HalfWorkUnitModeTag> &,BOOL &,unsigned long &,ZinIrHalParameters const&,0>(&v33, &v32, &__dst[19], &__dst[20] + 4, (__src + 176), &v31, &v30, &v29, &v28, a9, &a10, &v27, &v34, &v26, &a14, v17);
    }
  }

  else
  {
    if ((v22 - 7) < 4)
    {
      if (*a9)
      {
        operator new();
      }

      operator new();
    }

    if ((v22 - 11) < 4)
    {
      if (*a9)
      {
        operator new();
      }

      operator new();
    }

    if (v22 != 6)
    {
      goto LABEL_53;
    }
  }

  if (*a9 == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1A7423528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  ZinKernelDescriptor::~ZinKernelDescriptor(va);
  _Unwind_Resume(a1);
}

uint64_t details::ZinIrKernelView::serialize_weights(uint64_t a1, int *a2, int *a3, _BYTE *a4, uint64_t a5, char a6, uint64_t *a7, void *a8)
{
  if (!*a2 || ZinKernelFormatIsUnity(*a2))
  {
LABEL_5:
    if (*a7 > a8[1])
    {
      ZinAssertImpl("kernel serialization failed");
    }

    return 0;
  }

  v16 = *(a1 + 8);
  if (*(v16 + 672))
  {
    ZinIrCodegenKernelSerializeWeights(v16, *(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Kernel weight is null but OCG requires weights", buf, 2u);
  }

  return 0;
}

uint64_t details::ZinIrKernelView::serialize_ocg(uint64_t a1, void *a2, uint64_t a3, const ZinIrKernel *a4, int a5, const ZinIrKernel::CompressionInfo *a6, int a7, unint64_t *a8)
{
  if (!*(a1 + 8))
  {
    return 3;
  }

  Hal = ZinIrTarget::GetHal(*(a1 + 16));
  v17 = (*(*Hal + 16))(Hal);
  v18 = *(a1 + 8);
  v24 = 0;
  ChannelCountMultiple = ZinIrCodegenKernelUtil::GetChannelCountMultiple(*(a3 + 4), v17, v18, a4, a6, a7);
  v23 = ChannelCountMultiple;
  v20 = ZinIrTarget::GetHal(*(a1 + 16));
  if (*((*(*v20 + 16))(v20) + 1159) == 1)
  {
    details::ZinIrKernelView::serialize_bias(a1, (v18 + 44), a3, &v23, &v24, a2);
    details::ZinIrKernelView::serialize_weights(a1, v18 + 44, a3, a4, ChannelCountMultiple, a7, &v24, a2);
    details::ZinIrKernelView::serialize_scale(a1, (v18 + 44), a3, &v23, &v24, a2);
  }

  else
  {
    if (!a5)
    {
      details::ZinIrKernelView::serialize_scale(a1, (v18 + 44), a3, &v23, &v24, a2);
      details::ZinIrKernelView::serialize_bias(a1, (v18 + 44), a3, &v23, &v24, a2);
    }

    details::ZinIrKernelView::serialize_zero_point(a1, (v18 + 44), a3, &v23, &v24, a2);
    details::ZinIrKernelView::serialize_weights(a1, v18 + 44, a3, a4, a6, a7, &v24, a2);
  }

  v22 = v24;
  *a8 = v24;
  if (v22 > a2[1])
  {
    ZinAssertImpl("kernel serialization", v23);
  }

  return 0;
}

uint64_t details::ZinIrKernelView::serialize(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v7 = *(v3 + 888);
    v8 = *(a1 + 24);
    v9 = *(*(v7 + 40) + 32);
    v10 = &v9[8 * v8];
    if (v8 && *v10 == *v9)
    {
      if (v10[5] == v9[5])
      {
        return 0;
      }

      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v24)
      {
        details::ZinIrKernelView::serialize(v24, v25, v26, v27, v28, v29, v30, v31);
      }

      return 3;
    }

    if (v10[3] == v10[2])
    {
      result = 0;
      *a3 = 0;
      return result;
    }

    if (!*(v3 + 408))
    {
      v12 = *(a1 + 8);
      if (*(v3 + 456))
      {
        Hal = ZinIrTarget::GetHal(*(a1 + 16));
        v14 = (*(*Hal + 16))(Hal);
        v12 = *(a1 + 8);
        if (*(v14 + 1160) == 1)
        {
          *a3 = *v10;
          *&v49 = 0;
          Entry = ZinIrAsyncFunction::GetEntry(*(a1 + 16));
          if ((*(*Entry + 16))(Entry, *a2 + *v10, v12 + 720, &v49))
          {
            v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (v16)
            {
              details::ZinIrKernelView::serialize(v16, v17, v18, v19, v20, v21, v22, v23);
            }

            return 3;
          }

          *a3 += v49;
          v12 = *(a1 + 8);
        }
      }

      if (*(v12 + 672) || (v32 = *(v12 + 704)) != 0)
      {
        LOBYTE(v32) = *(v12 + 160);
      }

      if (ZinIrKernel::GetSinglePaletteLutSerializedSize(v12, v32 & 1) >= 1)
      {
        if (*(v3 + 425) == 1 && *(v3 + 424) == 1)
        {
          ZinAssertImpl("Invalid palette LUT configuration");
        }

        v34 = v10[1];
        if (v34 == -1)
        {
          ZinAssertImpl("");
        }

        v35 = a2[1];
        *&v49 = *a2 + v34;
        *(&v49 + 1) = v35 - v34;
        v50 = 0;
        ZinIrCodegenKernelAlignedPaletteLUTData(*(a1 + 8), v33, &v50, &v49, *v10[2], 1);
        *a3 = v50 + v10[1];
      }
    }

    v36 = v10[2];
    v37 = v10[3];
    while (v36 != v37)
    {
      v38 = *(v36 + 8);
      v39 = a2[1];
      *&v49 = *a2 + v38;
      *(&v49 + 1) = v39 - v38;
      v50 = 0;
      if (details::ZinIrKernelView::serialize_ocg(a1, &v49, v36, (*(a1 + 8) + 160), *(v3 + 408), *(*(v7 + 40) + 4), *(*(v7 + 40) + 1), &v50))
      {
        return 3;
      }

      v40 = v50;
      *a3 = v50 + *(v36 + 8);
      if (v40 > *(v36 + 48))
      {
        v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v41)
        {
          details::ZinIrKernelView::serialize(v41, v42, v43, v44, v45, v46, v47, v48);
        }

        return 3;
      }

      v36 += 56;
    }

    return 0;
  }

  return 3;
}

void ZinIrCodegenKernelAlignedPaletteLUTData(ZinIrKernel *this, uint64_t a2, void *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  if (*(this + 84) || (v9 = *(this + 88)) != 0)
  {
    LOBYTE(v9) = *(this + 160);
  }

  SinglePaletteLutSerializedSize = ZinIrKernel::GetSinglePaletteLutSerializedSize(this, v9 & 1);
  if (SinglePaletteLutSerializedSize <= 0)
  {
    ZinAssertImpl("Invalid palette LUT size");
  }

  v11 = SinglePaletteLutSerializedSize;
  v33 = 0;
  if (ZinKernelFormatGetPaletteFormat(*(this + 44), &v33) || !v33)
  {
    ZinAssertImpl("Invalid palette LUT format");
  }

  v32 = 0;
  if (ZinKernelFormatGetBitDepth(v33, &v32) || !v32)
  {
    ZinAssertImpl("Invalid palette LUT bit depth");
  }

  *a3 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (v35 == 1)
  {
    std::vector<unsigned long>::push_back[abi:ne200100](&v29, &v34);
  }

  else
  {
    v12 = *(this + 86);
    if (!v12 || (*(this + 44) - 7) >= 0x15)
    {
      ZinAssertImpl("Error: This weight does not have palette info.");
    }

    CollectPaletteLutGroupInfo(v12, &v27);
    std::vector<unsigned long>::reserve(&v29, v28);
    v13 = v27;
    if (v27 != (&v27 + 8))
    {
      do
      {
        std::vector<unsigned long>::push_back[abi:ne200100](&v29, v13[5]);
        v14 = v13[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v13[2];
            v16 = *v15 == v13;
            v13 = v15;
          }

          while (!v16);
        }

        v13 = v15;
      }

      while (v15 != (&v27 + 8));
    }

    std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
    std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(&v27, *(&v27 + 1));
  }

  v27 = *a4;
  v17 = v29;
  v18 = v30;
  if (v29 != v30)
  {
    v19 = "Palette LUT serialization error";
    do
    {
      PaletteData = ZinIrKernel::GetPaletteData(this, *v17);
      v21 = *PaletteData;
      v22 = PaletteData[1];
      v25[1] = *PaletteData;
      v26 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v21)
      {
        ZinAssertImpl("Invalid palette LUT data");
      }

      v25[0] = 0;
      if ((*(this + 84) || *(this + 88)) && *(this + 160) == 1)
      {
        ZinIrKernel::ShouldUseSparseBinaryForCompression(this);
      }

      SerializableFactory::createPaletteLUTConstDataSerializer(v33, &v24);
      v23 = v24;
      if ((*(*v24 + 16))(v24, &v27, v25))
      {
        goto LABEL_41;
      }

      if (v11 != v25[0])
      {
        v19 = "Inconsistency in palette LUT size calculations";
LABEL_41:
        ZinAssertImpl(v19);
      }

      *&v27 = v27 + v11;
      *a3 += v11;
      (*(*v23 + 8))(v23);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      ++v17;
    }

    while (v17 != v18);
    v17 = v29;
  }

  if (v17)
  {
    v30 = v17;
    operator delete(v17);
  }
}

void sub_1A7423EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SerializableFactory::createPaletteLUTConstDataSerializer@<X0>(int a2@<W1>, uint64_t *a6@<X8>)
{
  result = 0;
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      operator new();
    }

    if (a2 == 5)
    {
      operator new();
    }
  }

  else
  {
    if (a2 == 1)
    {
      operator new();
    }

    if (a2 == 2)
    {
      operator new();
    }
  }

  *a6 = 0;
  return result;
}

void *SerializableFactory::createTensorSerializer@<X0>(SerializableFactory *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    v3 = *(this + 26);
    if (v3 <= 8)
    {
      if (v3 == 1 || v3 == 2)
      {
        operator new();
      }

      if (v3 == 3)
      {
LABEL_16:
        operator new();
      }
    }

    else
    {
      if (v3 <= 10)
      {
        if (v3 != 9)
        {
          operator new();
        }

        operator new();
      }

      if (v3 == 12)
      {
        operator new();
      }

      if (v3 == 11)
      {
        goto LABEL_16;
      }
    }

    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v13)
    {
      SerializableFactory::createTensorSerializer(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v4)
    {
      SerializableFactory::createTensorSerializer(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t ZinIrCodegenHandleConstTensorKernels(void *a1, uint64_t a2, ZinComputeMutableProgramWrapper *a3, void *a4)
{
  ZinIrMemoryPools::GetSections(a4, 0, 0, &v71);
  v7 = *(v72 + 2);
  std::__list_imp<ZinIrSection *>::clear(&v71);
  v8 = *(v7 + 32);
  if (!v8)
  {
    return 0;
  }

  v9 = malloc_type_calloc(*(v7 + 32), 1uLL, 0x100004077774924uLL);
  if (!v9)
  {
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v36)
    {
      ZinIrCodegenHandleConstTensorKernels(v36, v37, v38, v39, v40, v41, v42, v43);
    }

    return 3;
  }

  v52 = v7;
  v53 = v9;
  v57[0] = v9;
  v57[1] = v8;
  v10 = *a2;
  v11 = *(a2 + 8);
  v74[0] = 0;
  v71 = v74 + 1;
  v72 = v74;
  ZinIrHalParameters::ZinIrHalParameters(v73, v10);
  v12 = *(v11 + 128);
  ZinIrControlFlowGraph::GetConstLayers(a1, &v69);
  v13 = v69;
  if (v69 == v70)
  {
LABEL_53:
    std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(&v69, v70[0]);
    ZinIrHalParameters::~ZinIrHalParameters(v73);
    goto LABEL_54;
  }

  while (1)
  {
    v14 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr((v13 + 4));
    v15 = (*(*v14 + 40))(v14, 0);
    ZinIrTensor::GetTensorFamily(&__p, v15);
    v16 = __p;
    v54 = v68;
    if (__p == v68)
    {
      v31 = 1;
      if (__p)
      {
        goto LABEL_43;
      }

      goto LABEL_44;
    }

LABEL_5:
    v17 = *v16;
    v66 = 1;
    if (v17)
    {
      v55 = v16;
      OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(*(v17 + 152));
      v20 = *OutgoingLayers;
      v19 = OutgoingLayers[1];
      while (1)
      {
        if (v20 == v19)
        {
          v16 = v55 + 1;
          if (v55 + 1 == v54)
          {
            v31 = 1;
            goto LABEL_42;
          }

          goto LABEL_5;
        }

        if ((*(**v20 + 144))())
        {
          (*(**v20 + 152))(&v62);
          v21 = v62;
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v63);
          }

          if (v21 == v17)
          {
            break;
          }
        }

        v22 = *(v17 + 160);
        if (!v22 || (v23 = *(v22 + 40), v23 == *(v22 + 48)))
        {
          v24 = 0;
        }

        else
        {
          v24 = *v23;
        }

        v25 = ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(&v71, a3, v12, v24, v17, v15, v57, &v66);
        if (v25)
        {
          goto LABEL_41;
        }

LABEL_17:
        v20 += 8;
      }

      ChannelAssignment = ZinEngineLayerMirInfo::GetChannelAssignment(*(*v20 + 520));
      MirInfoChannelAssignment::GetNumNeededNEs(ChannelAssignment);
      (*(**v20 + 152))(&v60);
      ZinIrTensor::GetTensorKernelNESymbols(&v62, v60);
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }

      v28 = v62;
      v27 = v63;
      if (v62 == v63)
      {
        v30 = 1;
        if (v62)
        {
LABEL_31:
          v63 = v28;
          operator delete(v28);
        }
      }

      else
      {
        while (v28->__get_deleter == v28->__on_zero_shared_weak)
        {
          v29 = ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(&v71, a3, v12, v28->__vftable, v17, v15, v57, &v66);
          v30 = v29 == 0;
          if (v29)
          {
            goto LABEL_30;
          }

          v28 = (v28 + 8);
          if (v28 == v27)
          {
            v29 = v56;
            goto LABEL_30;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinIrCodegenHandleConstTensorKernels(&v58, v59);
        }

        v30 = 0;
        v29 = 3;
LABEL_30:
        v28 = v62;
        v56 = v29;
        if (v62)
        {
          goto LABEL_31;
        }
      }

      v25 = v56;
      if (!v30)
      {
        goto LABEL_41;
      }

      goto LABEL_17;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrCodegenHandleConstTensorKernels(&v64, v65);
    }

    v25 = 3;
LABEL_41:
    v31 = 0;
    v56 = v25;
LABEL_42:
    v16 = __p;
    if (__p)
    {
LABEL_43:
      v68 = v16;
      operator delete(v16);
    }

LABEL_44:
    if (!v31)
    {
      break;
    }

    v32 = v13[1];
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      do
      {
        v33 = v13[2];
        v34 = *v33 == v13;
        v13 = v33;
      }

      while (!v34);
    }

    v13 = v33;
    if (v33 == v70)
    {
      goto LABEL_53;
    }
  }

  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(&v69, v70[0]);
  ZinIrHalParameters::~ZinIrHalParameters(v73);
  if (v56)
  {
    free(v53);
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v44)
    {
      ZinIrCodegenHandleConstTensorKernels(v44, v45, v46, v47, v48, v49, v50, v51);
    }

    return 3;
  }

LABEL_54:
  result = 0;
  *(v52 + 24) = v53;
  return result;
}

void sub_1A7424CFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A7424CCCLL);
}

uint64_t ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(uint64_t a1, ZinComputeMutableProgramWrapper *a2, int a3, ZinIrSymbol *this, int64x2_t *a5, int64x2_t *a6, void *a7, _BYTE *a8)
{
  v84[64] = *MEMORY[0x1E69E9840];
  if (!this || ZinIrSymbol::GetMemType(this) && ZinIrSymbol::GetMemType(this) != 1)
  {
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v25)
    {
      ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    return 3;
  }

  if (a5 == a6 && *a8 == 1)
  {
    v16 = *(this + 3);
    if (v16 == *(this + 4))
    {
      if (v16 % *(a1 + 632))
      {
        v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v17)
        {
          ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(v17, v18, v19, v20, v21, v22, v23, v24);
        }
      }

      else
      {
        if (a5[10].i64[1])
        {
          ZinIrTensor::InferConstDataDescriptor(a5);
        }

        v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v65)
        {
          ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(v65, v66, v67, v68, v69, v70, v71, v72);
        }
      }

      v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v73)
      {
        ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(v73, v74, v75, v76, v77, v78, v79, v80);
      }
    }

    else
    {
      v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v33)
      {
        ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(v33, v34, v35, v36, v37, v38, v39, v40);
      }
    }

    return 3;
  }

  v41 = *(*(this + 1) + 120);
  v42 = this + 224;
  v43 = *(this + 3);
  if (a3)
  {
    v83[3] = 0;
    ZinIrTensor::InferDescriptor(v82, a5, v83);
    std::__function::__value_func<void ()(ZinTensorDescriptor const&,ZinTensorDescriptor const&,ZinIrTensor const*)>::~__value_func[abi:ne200100](v83);
    v44 = this + 224;
    if (*(this + 247) < 0)
    {
      v44 = *v42;
    }

    NextStabTypeno = ZinComputeMutableProgramWrapper::GetNextStabTypeno(a2);
    Stab = ZinTensorDescriptorGetStab(v82, v44, NextStabTypeno, v84, 0x200uLL);
    if (Stab)
    {
      v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v47)
      {
        ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(v47, v48, v49, v50, v51, v52, v53, v54);
      }

      if (Stab == 14002 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(this + 247, this + 28);
      }

LABEL_34:
      v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v57)
      {
        ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(v57, v58, v59, v60, v61, v62, v63, v64);
      }

      return 3;
    }

    v81[0] = 0x8000000000;
    HIWORD(v81[0]) = *ZinComputeMutableProgramWrapper::GetNextStabTypeno(a2);
    v81[1] = v43;
    if (ZinComputeMutableProgramWrapper::AddSymbol(a2, 0, v81, v84, 0, 0, 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinIrCodegenHandleKernelTensors(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinComputeMutableProgramWrapper &,KernelSerializeBuffer const&)::$_0::operator()(v84);
      }

      goto LABEL_34;
    }
  }

  v84[0] = 0xF00000000;
  v84[1] = v43;
  if (a5 == a6)
  {
    v55 = *a7 + v43;
  }

  else
  {
    v55 = 0;
  }

  if (*(this + 247) < 0)
  {
    v42 = *v42;
  }

  result = ZinComputeMutableProgramWrapper::AddSymbol(a2, v41, v84, v42, v55, *(this + 31), 0);
  if (result)
  {
    goto LABEL_34;
  }

  return result;
}

void sub_1A7425174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(*v11 + 8))(v11, a2, a3, a4, a5, a6, a7, a8);
  if (a11)
  {
    MEMORY[0x1AC55A070](a11, 0x1000C404528F627);
  }

  _Unwind_Resume(a1);
}

uint64_t details::ZinIrPaletteLUTConstDataView<signed char>::serialize(uint64_t a1, void *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  *a3 = v4;
  if (!v4)
  {
    ZinAssertImpl("Unable to serialize: size of const data is zero bytes");
  }

  if (v4 > a2[1])
  {
    ZinAssertImpl("buffer overrun");
  }

  if (*(a1 + 32) == 1)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = 0;
  }

  if (v4 + v6 > (*(***(a1 + 8) + 24))(**(a1 + 8)))
  {
    ZinAssertImpl("Out of bounds access");
  }

  if (v6 < *(a1 + 16) + v6)
  {
    v7 = v6;
    do
    {
      *v3++ = (*(***(a1 + 8) + 72))(**(a1 + 8), v7++);
    }

    while (v7 < *(a1 + 16) + v6);
  }

  return 0;
}

uint64_t details::ZinIrPaletteLUTConstDataView<unsigned char>::serialize(uint64_t a1, void *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  *a3 = v4;
  if (!v4)
  {
    ZinAssertImpl("Unable to serialize: size of const data is zero bytes");
  }

  if (v4 > a2[1])
  {
    ZinAssertImpl("buffer overrun");
  }

  if (*(a1 + 32) == 1)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = 0;
  }

  if (v4 + v6 > (*(***(a1 + 8) + 24))(**(a1 + 8)))
  {
    ZinAssertImpl("Out of bounds access");
  }

  if (v6 < *(a1 + 16) + v6)
  {
    v7 = v6;
    do
    {
      *v3++ = (*(***(a1 + 8) + 120))(**(a1 + 8), v7++);
    }

    while (v7 < *(a1 + 16) + v6);
  }

  return 0;
}

uint64_t details::ZinIrPaletteLUTConstDataView<e4m3_t>::serialize(uint64_t a1, void *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  *a3 = v4;
  if (!v4)
  {
    ZinAssertImpl("Unable to serialize: size of const data is zero bytes");
  }

  if (v4 > a2[1])
  {
    ZinAssertImpl("buffer overrun");
  }

  if (*(a1 + 32) == 1)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = 0;
  }

  if (v4 + v6 > (*(***(a1 + 8) + 24))(**(a1 + 8)))
  {
    ZinAssertImpl("Out of bounds access");
  }

  if (v6 < *(a1 + 16) + v6)
  {
    v7 = v6;
    do
    {
      *v3++ = (*(***(a1 + 8) + 88))(**(a1 + 8), v7++);
    }

    while (v7 < *(a1 + 16) + v6);
  }

  return 0;
}

uint64_t details::ZinIrPaletteLUTConstDataView<half>::serialize(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = 2 * *(a1 + 16);
  *a3 = v4;
  if (!v4)
  {
    ZinAssertImpl("Unable to serialize: size of const data is zero bytes");
  }

  if (v4 > *(a2 + 8))
  {
    ZinAssertImpl("buffer overrun");
  }

  if (*(a1 + 32) == 1)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 16) + v6;
  if (v7 > (*(***(a1 + 8) + 24))(**(a1 + 8)))
  {
    ZinAssertImpl("Out of bounds access");
  }

  if (v6 < *(a1 + 16) + v6)
  {
    v8 = v6;
    do
    {
      *v3++ = (*(***(a1 + 8) + 56))(**(a1 + 8), v8++).n128_u16[0];
    }

    while (v8 < *(a1 + 16) + v6);
  }

  return 0;
}

uint64_t details::ZinIrWeightView<signed char,ZinIrOutputStreamCompressed<signed char>>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A39098;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<signed char,ZinIrOutputStreamCompressed<signed char>>::serialize(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  LOBYTE(v30) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v30);
  v7 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v7 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v9 = *(a1 + 8);
  v10 = !*(v9 + 320) || (*(v9 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v11 = ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v12 = *(a1 + 136);
  v42 = 0;
  v43 = 0;
  v13 = v5;
  v44 = 0;
  if (v5)
  {
    v14 = *(a1 + 224);
    v15 = *(v14 + 792);
    v16 = *(v14 + 1308);
    v17 = *(v14 + 768);
    v18 = 0xFFFFLL;
    if (v15 == 3)
    {
      v18 = 0xFFFFFFLL;
    }

    v50 = v15;
    v51 = v18;
    v52 = v16;
    v49 = v17;
    v46 = v5;
    v47 = v5 + v15;
    v45 = 0;
    v48 = 1;
    v19 = 1;
  }

  else
  {
    if (*(v9 + 320) && (*(v9 + 8) - 28) >= 0xFFFFFFEB)
    {
      operator new[]();
    }

    v13 = 0;
    v19 = 0;
  }

  v41 = 0;
  v20 = v12 + v11;
  v33[0] = a1;
  v33[1] = v20;
  v33[2] = v7;
  v34 = v19;
  v21 = *(v4 + 56);
  v37 = *(v4 + 88);
  v22 = *(v4 + 72);
  v35 = v21;
  v36 = v22;
  ZinIrWeight::ZinIrWeight(v38, v9);
  v38[336] = v10;
  v39 = &v41;
  v40 = &v42;
  if (*(a1 + 64) != 1 || *(a1 + 56) != 1)
  {
    goto LABEL_28;
  }

  if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
  {
    v23 = _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v33);
    goto LABEL_29;
  }

  if (*(a1 + 48) == 1 && v20 == 1 && v7 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
  {
    v23 = _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v33);
  }

  else
  {
LABEL_28:
    v23 = _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v33);
  }

LABEL_29:
  v24 = v23;
  if (v23)
  {
    if (v19)
    {
      *a3 = ZinIrOutputStreamCompressed<signed char>::Stop(&v42);
    }

    goto LABEL_40;
  }

  if (v19)
  {
    *a3 = ZinIrOutputStreamCompressed<signed char>::Stop(&v42);
    if (v5)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v25 = ZinDivRoundUp(v20 * v7 * *(a1 + 64) * *(v4 + 64) * *(a1 + 56) * *(a1 + 48) * *(a1 + 128) * *(a1 + 120) * *(a1 + 40) * *(a1 + 32) * *(a1 + 24), 8uLL);
  v26 = ZinAlign(v25, *(*(a1 + 224) + 768));
  v32 = 0;
  ZinKernelFormatGetBitDepth(*(*(a1 + 8) + 8), &v32);
  v27 = v32;
  if (v32 == 32)
  {
    v27 = 16;
    v32 = 16;
  }

  v28 = v41;
  *a3 = v26 + ZinDivRoundUp(v27, 8uLL) * v28 + *(*(a1 + 224) + 792);
  if (!v5)
  {
LABEL_38:
    if (v13)
    {
      MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
    }
  }

LABEL_40:
  ZinIrWeight::~ZinIrWeight(v38);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v24;
}

void sub_1A7425C08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    *(v1 - 176) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v44[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v44);
  v46 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v39 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v39 + 208))(v39);
    (*(*v39 + 200))(v39);
  }

  v45 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v45);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
LABEL_8:
  if (v7 < 1)
  {
    goto LABEL_54;
  }

  v42 = 0;
  v8 = v2[15];
  v40 = v6;
LABEL_10:
  if (v8 < 1)
  {
    goto LABEL_52;
  }

  v9 = 0;
LABEL_12:
  v10 = *(a1 + 8);
  if (v10 < 1)
  {
    goto LABEL_50;
  }

  v11 = *(a1 + 16);
  while (1)
  {
    v12 = v10 - 1;
    if (v11 >= 1)
    {
      break;
    }

LABEL_47:
    v29 = v10 <= 1;
    v10 = v12;
    if (v29)
    {
      v8 = v2[15];
LABEL_50:
      if (++v9 < v8)
      {
        goto LABEL_12;
      }

      v7 = v2[16];
      v6 = v40;
LABEL_52:
      if (++v42 >= v7)
      {
        v5 = *(a1 + 40);
LABEL_54:
        if (++v6 >= v5)
        {
          return 0;
        }

        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  v41 = v10;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = v2[21];
    v16 = v15 + v13 * PaletteVectorSize;
    v17 = *(a1 + 32);
    if (v17 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15 + v13 * PaletteVectorSize;
    }

    v19 = v18 + v17;
    do
    {
      v19 -= v17;
    }

    while (v19 >= v17);
    v20 = v2[2];
    if (v20 && v2[22] > v13)
    {
      ValueAsInt32 = ZinIrVector::GetValueAsInt32(v20);
    }

    else
    {
      ValueAsInt32 = 0;
    }

    v22 = v2[18] + v2[9] * v9;
    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = v2[19] + v2[10] * v42;
      if ((v23 & 0x8000000000000000) == 0)
      {
        v24 = v12 - *(a1 + 8) + v2[17];
        v25 = v2[20] + v24 * v2[11];
        if ((v25 & 0x8000000000000000) == 0 && v22 < *(a1 + 56) && v23 < *(a1 + 48) && v25 < *(a1 + 64) && v2[22] > v13 && (v24 & 0x8000000000000000) == 0)
        {
          v44[0] = v19;
          v44[1] = v40;
          v44[2] = v23;
          v44[3] = v22;
          v44[4] = v25;
          v26 = (**(a1 + 72))(a1 + 72, v44);
          if (v2[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v26) & 1) != 0)
          {
            IsElemZeroPointAt = 1;
          }

          else
          {
            Elem = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              Elem = ZinIrWeightBase::GetElemAt<signed char>(a1 + 72);
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v26, v19, *(v2[28] + 1308), ValueAsInt32);
            ValueAsInt32 = Elem;
          }

          goto LABEL_38;
        }
      }
    }

    IsElemZeroPointAt = 1;
    if ((*(a1 + 408) & 1) == 0 && v16 < v17)
    {
      break;
    }

LABEL_38:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressed<signed char>::Push(*(a1 + 424), ValueAsInt32, IsElemZeroPointAt);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    v11 = *(a1 + 16);
    v13 = ++v14;
    if (v11 <= v14)
    {
      v10 = v41;
      goto LABEL_47;
    }
  }

  v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v31)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v31, v32, v33, v34, v35, v36, v37, v38);
  }

  return 3;
}

void sub_1A7426044(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v45[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v45);
  v47 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v41 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v41 + 208))(v41);
    (*(*v41 + 200))(v41);
  }

  v46 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v46);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
  while (v7 < 1)
  {
LABEL_51:
    result = 0;
    if (++v6 >= v5)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = v2[15];
  while (v9 < 1)
  {
LABEL_49:
    if (++v8 >= v7)
    {
      v5 = *(a1 + 40);
      goto LABEL_51;
    }
  }

  v42 = v6;
  v10 = 0;
LABEL_12:
  v11 = v2[21];
  v12 = *(a1 + 32);
  v44 = v11;
  if (v12 == 1)
  {
    v11 = 0;
  }

  v13 = v11 + v12;
  do
  {
    v13 -= v12;
  }

  while (v13 >= v12);
  v14 = v2[2];
  if (v14 && v2[22])
  {
    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v14);
  }

  else
  {
    ValueAsInt32 = 0;
  }

  v16 = 0;
  v17 = 1;
LABEL_21:
  v18 = 0;
  v43 = v17;
  v19 = 1;
  while (1)
  {
    v20 = v19;
    v21 = v18 + v2[9] * v10 + v2[18];
    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = v16 + v2[10] * v8 + v2[19];
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = v2[17] - *(a1 + 8);
        v24 = v2[20] + v23 * v2[11];
        if ((v24 & 0x8000000000000000) == 0 && v21 < *(a1 + 56) && v22 < *(a1 + 48) && v24 < *(a1 + 64) && v2[22] && (v23 & 0x8000000000000000) == 0)
        {
          v45[0] = v13;
          v45[1] = v42;
          v45[2] = v22;
          v45[3] = v21;
          v45[4] = v24;
          v25 = (**(a1 + 72))(a1 + 72, v45);
          if (!v2[2] || (v26 = v25, v27 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v25 = v26, (v27 & 1) == 0))
          {
            v29 = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              v30 = v25;
              Elem = ZinIrWeightBase::GetElemAt<signed char>(a1 + 72);
              v25 = v30;
              v29 = Elem;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v25, v13, *(v2[28] + 1308), ValueAsInt32);
            goto LABEL_37;
          }

          IsElemZeroPointAt = 1;
LABEL_36:
          v29 = ValueAsInt32;
          goto LABEL_37;
        }
      }
    }

    IsElemZeroPointAt = 1;
    if (*(a1 + 408))
    {
      goto LABEL_36;
    }

    v29 = ValueAsInt32;
    if (v44 < v12)
    {
      break;
    }

LABEL_37:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressed<signed char>::Push(*(a1 + 424), v29, IsElemZeroPointAt);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    v19 = 0;
    v18 = -1;
    if ((v20 & 1) == 0)
    {
      v17 = 0;
      v16 = -1;
      if (v43)
      {
        goto LABEL_21;
      }

      ++v10;
      v9 = v2[15];
      if (v10 >= v9)
      {
        v7 = v2[16];
        v6 = v42;
        goto LABEL_49;
      }

      goto LABEL_12;
    }
  }

  v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v33)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v33, v34, v35, v36, v37, v38, v39, v40);
  }

  return 3;
}

void sub_1A7426454(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v72[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v72);
  v74 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v5 = 0;
  }

  else
  {
    v57 = *(a1 + 208);
    v5 = *(a1 + 216);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    (*(*v57 + 208))(v57);
    (*(*v57 + 200))(v57);
  }

  v73 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v73);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v2[8];
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(a1 + 40);
  v59 = PaletteVectorSize;
LABEL_8:
  if (v8 < 1)
  {
    goto LABEL_77;
  }

  v9 = 0;
  v10 = v2[7];
  v61 = v7;
LABEL_10:
  if (v10 < 1)
  {
    goto LABEL_75;
  }

  v11 = 0;
  v12 = v2[6];
  v64 = v9;
LABEL_12:
  if (v12 < 1)
  {
    goto LABEL_73;
  }

  v13 = 0;
  v14 = v2[16];
  v60 = v11;
LABEL_14:
  if (v14 < 1)
  {
    goto LABEL_71;
  }

  v71 = 0;
  v15 = v2[15];
  v62 = v13;
LABEL_16:
  if (v15 < 1)
  {
    goto LABEL_69;
  }

  v16 = 0;
LABEL_18:
  v17 = *(a1 + 8);
  if (v17 < 1)
  {
    goto LABEL_67;
  }

  v18 = *(a1 + 16);
  v69 = v16;
LABEL_20:
  v19 = v17 - 1;
  if (v18 < 1)
  {
    goto LABEL_64;
  }

  v58 = v17;
  v20 = 0;
  v21 = 0;
  v70 = v19;
LABEL_22:
  v65 = v21;
  v22 = v2[21] + v20 * PaletteVectorSize;
  v23 = *(a1 + 32);
  v68 = v22;
  if (v23 == 1)
  {
    v22 = 0;
  }

  v24 = v22 + v23;
  do
  {
    v24 -= v23;
  }

  while (v24 >= v23);
  v25 = v2[2];
  v67 = v20;
  if (v25 && v2[22] > v20)
  {
    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v25);
    v16 = v69;
    v19 = v70;
    v27 = ValueAsInt32;
  }

  else
  {
    v27 = 0;
  }

  v28 = v2[5];
  if (v28 < 1)
  {
    goto LABEL_62;
  }

  v29 = 0;
  v30 = v2[4];
LABEL_32:
  if (v30 < 1)
  {
    goto LABEL_61;
  }

  v31 = 0;
  v32 = v7 - v29;
  v33 = v2[3];
  v63 = v29;
  while (v33 < 1)
  {
LABEL_59:
    if (++v31 >= v30)
    {
      v28 = v2[5];
      PaletteVectorSize = v59;
LABEL_61:
      if (++v29 < v28)
      {
        goto LABEL_32;
      }

LABEL_62:
      v20 = (v65 + 1);
      v18 = *(a1 + 16);
      v21 = v65 + 1;
      if (v18 > v20)
      {
        goto LABEL_22;
      }

      v9 = v64;
      v17 = v58;
LABEL_64:
      v47 = v17 <= 1;
      v17 = v19;
      if (!v47)
      {
        goto LABEL_20;
      }

      v15 = v2[15];
LABEL_67:
      if (++v16 < v15)
      {
        goto LABEL_18;
      }

      v14 = v2[16];
LABEL_69:
      if (++v71 < v14)
      {
        goto LABEL_16;
      }

      v12 = v2[6];
LABEL_71:
      if (++v13 >= v12)
      {
        v10 = v2[7];
LABEL_73:
        if (++v11 < v10)
        {
          goto LABEL_12;
        }

        v8 = *(a1 + 40);
LABEL_75:
        if (++v9 >= v8)
        {
          v6 = v2[8];
LABEL_77:
          if (++v7 >= v6)
          {
            return 0;
          }

          goto LABEL_8;
        }

        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  v34 = 0;
  v66 = v31;
  v35 = v11 - v31;
  while (1)
  {
    v36 = v13 + v2[18] + v16 * v2[9];
    if ((v36 & 0x8000000000000000) == 0)
    {
      v37 = v35 + v2[10] * v71 + v2[19];
      if ((v37 & 0x8000000000000000) == 0)
      {
        v38 = v19 - *(a1 + 8) + v2[17];
        v39 = v32 + v2[20] + v38 * v2[11];
        if ((v39 & 0x8000000000000000) == 0 && v36 < *(a1 + 56) && v37 < *(a1 + 48) && v39 < *(a1 + 64) && v2[22] > v67 && (v38 & 0x8000000000000000) == 0)
        {
          v72[0] = v24;
          v72[1] = v64;
          v72[2] = v37;
          v72[3] = v36;
          v72[4] = v39;
          v40 = (**(a1 + 72))(a1 + 72, v72);
          if (v2[2] && (v41 = v40, v42 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v40 = v41, (v42 & 1) != 0))
          {
            IsElemZeroPointAt = 1;
            v44 = v27;
          }

          else
          {
            v44 = v27;
            if (*(a1 + 24) == 1)
            {
              v45 = v40;
              Elem = ZinIrWeightBase::GetElemAt<signed char>(a1 + 72);
              v40 = v45;
              v44 = Elem;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v40, v24, *(v2[28] + 1308), v27);
          }

          v16 = v69;
          v19 = v70;
          goto LABEL_49;
        }
      }
    }

    IsElemZeroPointAt = 1;
    v44 = v27;
    if ((*(a1 + 408) & 1) == 0 && v68 < v23)
    {
      break;
    }

LABEL_49:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressed<signed char>::Push(*(a1 + 424), v44, IsElemZeroPointAt);
      v16 = v69;
      v19 = v70;
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    ++v34;
    v33 = v2[3];
    --v13;
    if (v34 >= v33)
    {
      v30 = v2[4];
      v11 = v60;
      v7 = v61;
      v13 = v62;
      v29 = v63;
      v31 = v66;
      goto LABEL_59;
    }
  }

  v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v49)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v49, v50, v51, v52, v53, v54, v55, v56);
  }

  return 3;
}

void sub_1A74269AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrOutputStreamCompressed<signed char>::Stop(uint64_t a1)
{
  if (*(a1 + 52))
  {
    ZinIrOutputStreamCompressed<signed char>::Flush(a1);
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = (v2 - (v4 + v3)) & *(a1 + 80);
    do
    {
      *(*(a1 + 32) + v6++) = v7 >> v5;
      v5 += 8;
    }

    while (v6 < *(a1 + 72));
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  return v2 - v3;
}

uint64_t SupportedCombinationOfFormatAndType(unsigned int a1, int a2)
{
  if ((a2 - 7) >= 2)
  {
    if (a2 != 101)
    {
      if (a2 != 102 || (a1 & 0xFFFFFFFE) != 4)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (a1 == 4)
    {
LABEL_9:
      LOBYTE(v2) = 1;
      return v2 & 1;
    }

LABEL_10:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if (a1 >= 0x20)
  {
    goto LABEL_10;
  }

  v2 = 0x88787836 >> a1;
  return v2 & 1;
}

void ZinIrOutputStreamCompressed<signed char>::Push(uint64_t a1, char a2, int a3)
{
  if (*(a1 + 52) == 8 * *(a1 + 56))
  {
    ZinIrOutputStreamCompressed<signed char>::Flush(a1);
  }

  if (a3)
  {
    v6 = *(a1 + 48);
  }

  else
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v8 >= v7)
    {
      v10 = *a1;
      v11 = &v8[-*a1];
      v12 = (v11 + 1);
      if ((v11 + 1) < 0)
      {
        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v13 = v7 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        operator new();
      }

      v15 = &v8[-*a1];
      *v11 = a2;
      v9 = v11 + 1;
      memcpy(0, v10, v15);
      *a1 = 0;
      *(a1 + 8) = v11 + 1;
      *(a1 + 16) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v8 = a2;
      v9 = v8 + 1;
    }

    *(a1 + 8) = v9;
    v6 = *(a1 + 48);
    *(a1 + 24) |= v6;
  }

  v16 = *(a1 + 52) + 1;
  *(a1 + 48) = 2 * v6;
  *(a1 + 52) = v16;
}

double ZinIrOutputStreamCompressed<signed char>::Flush(int *a1)
{
  if (*(a1 + 7))
  {
    v1 = 0;
    v2 = 0;
    do
    {
      v3 = a1[6] >> v1;
      v4 = *(a1 + 5);
      *(a1 + 5) = v4 + 1;
      *v4 = v3;
      ++v2;
      v1 += 8;
    }

    while (*(a1 + 7) > v2);
  }

  v5 = *a1;
  if (*(a1 + 1) != *a1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + v6);
      v8 = *(a1 + 5);
      *(a1 + 5) = v8 + 1;
      *v8 = v7;
      ++v6;
      v5 = *a1;
    }

    while (v6 < *(a1 + 1) - *a1);
  }

  *&result = 1;
  *(a1 + 6) = 1;
  a1[6] = 0;
  *(a1 + 1) = v5;
  return result;
}

uint64_t details::ZinIrWeightView<signed char,ZinIrOutputStreamBasic<signed char>>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A390D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<signed char,ZinIrOutputStreamBasic<signed char>>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  LOBYTE(v28) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v28);
  v8 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v8 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v10 = *(a1 + 8);
  v11 = !*(v10 + 320) || (*(v10 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v12 = ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v13 = *(a1 + 136);
  v14 = v13 + v12;
  if (v6)
  {
    v41 = v6;
    v42 = v6;
    v40 = 0;
    v32[0] = a1;
    v32[1] = v13 + v12;
    v32[2] = v8;
    v33 = 1;
    v15 = *(v5 + 56);
    v36 = *(v5 + 88);
    v16 = *(v5 + 72);
    v34 = v15;
    v35 = v16;
    ZinIrWeight::ZinIrWeight(v37, v10);
    v37[336] = v11;
    v38 = &v40;
    v39 = &v41;
    if (*(a1 + 64) == 1 && *(a1 + 56) == 1)
    {
      if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
      {
        v17 = _ZZNK7details15ZinIrWeightViewIa22ZinIrOutputStreamBasicIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v32);
LABEL_27:
        v26 = v17;
        *a3 = v42 - v41;
        ZinIrWeight::~ZinIrWeight(v37);
        return v26;
      }

      if (*(a1 + 48) == 1 && v14 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
      {
        v17 = _ZZNK7details15ZinIrWeightViewIa22ZinIrOutputStreamBasicIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v32);
        goto LABEL_27;
      }
    }

    v17 = _ZZNK7details15ZinIrWeightViewIa22ZinIrOutputStreamBasicIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v32);
    goto LABEL_27;
  }

  v30 = *(v5 + 64);
  v31 = a3;
  v18 = *(a1 + 64);
  v29 = *(a1 + 56);
  v20 = *(a1 + 120);
  v19 = *(a1 + 128);
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  v24 = *(a1 + 24);
  v23 = *(a1 + 32);
  v32[0] = 0;
  ZinKernelFormatGetBitDepth(*(*(a1 + 8) + 8), v32);
  v25 = v32[0];
  if (v32[0] == 32)
  {
    v25 = 16;
    v32[0] = 16;
  }

  v26 = 0;
  *v31 = v14 * v8 * v18 * v30 * v29 * v21 * v19 * v20 * v22 * v23 * v24 * ZinDivRoundUp(v25, 8uLL);
  return v26;
}

uint64_t _ZZNK7details15ZinIrWeightViewIa22ZinIrOutputStreamBasicIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v69 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v69);
  v68 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v6 = *(a1 + 208);
    v5 = *(a1 + 216);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v8 = (*(*v6 + 208))(v6);
    v7 = (*(*v6 + 200))(v6);
    v10 = 0;
    v9 = *(a1 + 16);
  }

  v67 = 0;
  v61 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v67);
  v12 = v3[16];
  v13 = PaletteVectorSize;
  v14 = v12 == 1 && v3[15] == 1;
  if (v10 & 1 | !IsContiguousCrsdStride | (v8 | v7) & 1 || (v9 < v3[22] + 1 ? (v15 = PaletteVectorSize == 1) : (v15 = 0), !v15 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20]))
  {
    v16 = 1;
    goto LABEL_20;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v14 = 1;
  }

  v16 = 1;
  if (*(a1 + 8) == 1 && v14)
  {
    v54 = *(a1 + 32);
    if (v54 == 1)
    {
      v55 = *(a1 + 40) * v12 * v3[15];
      if (*(a1 + 24))
      {
        v56 = 0;
        goto LABEL_88;
      }
    }

    else
    {
      v57 = v3[21];
      if (v57 + v9 > v54)
      {
        goto LABEL_20;
      }

      v55 = *(a1 + 40) * v12 * v3[15];
      if (*(a1 + 24))
      {
        v56 = v57 % v54;
LABEL_88:
        v66 = 0u;
        v65 = 0u;
        v64 = v56;
        (**v61)(v61, &v64);
        v1 = *(v6 + 8);
        if (SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v6 + 8)))
        {
          if (v69 > 8)
          {
            if (v1 == 101)
            {
              v13 = PaletteVectorSize;
              if (v69 != 16)
              {
                goto LABEL_20;
              }

              if (v5)
              {
                atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              goto LABEL_107;
            }
          }

          else
          {
            switch(v1)
            {
              case 7:
                if (v5)
                {
                  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                goto LABEL_107;
              case 8:
                if (v5)
                {
                  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                goto LABEL_107;
              case 0x66:
                if (v5)
                {
                  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                }

LABEL_107:
                if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
                {
                  v58 = *(v6 + 120);
                }

                else
                {
                  v58 = v6 + 112;
                }

                if (v5)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
                }

                if (v58)
                {
                  v16 = 0;
                  if (BNNSBitTranspose())
                  {
                    v1 = 3;
                  }

                  else
                  {
                    v1 = 0;
                    *(*(a1 + 424) + 8) += v55 * v9;
                  }
                }

                break;
            }
          }
        }

        v13 = PaletteVectorSize;
        goto LABEL_20;
      }
    }

    v16 = 0;
    v1 = 0;
    **(a1 + 416) = v55 * v9;
  }

LABEL_20:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v13 = PaletteVectorSize;
  }

  if (v16)
  {
    v17 = *(a1 + 40);
    if (v17 < 1)
    {
      return 0;
    }

    v18 = 0;
    v19 = v3[16];
    do
    {
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = v3[15];
        v59 = v18;
        do
        {
          if (v21 >= 1)
          {
            v22 = 0;
            v62 = v20;
            do
            {
              v23 = *(a1 + 8);
              if (v23 >= 1)
              {
                v24 = *(a1 + 16);
                do
                {
                  v25 = v23 - 1;
                  if (v24 >= 1)
                  {
                    v60 = v23;
                    v26 = 0;
                    v27 = 0;
                    while (1)
                    {
                      v28 = v3[21];
                      v29 = v28 + v26 * v13;
                      v30 = *(a1 + 32);
                      if (v30 == 1)
                      {
                        v31 = 0;
                      }

                      else
                      {
                        v31 = v28 + v26 * v13;
                      }

                      v32 = v31 + v30;
                      do
                      {
                        v32 -= v30;
                      }

                      while (v32 >= v30);
                      v33 = v3[2];
                      if (v33 && v3[22] > v26)
                      {
                        ValueAsInt32 = ZinIrVector::GetValueAsInt32(v33);
                        v20 = v62;
                        v13 = PaletteVectorSize;
                        v35 = ValueAsInt32;
                      }

                      else
                      {
                        v35 = 0;
                      }

                      v36 = v3[18] + v3[9] * v22;
                      if (v36 < 0 || (v37 = v3[19] + v3[10] * v20, v37 < 0) || (v38 = v25 - *(a1 + 8) + v3[17], v39 = v3[20] + v38 * v3[11], v39 < 0) || v36 >= *(a1 + 56) || v37 >= *(a1 + 48) || v39 >= *(a1 + 64) || v3[22] <= v26 || v38 < 0)
                      {
                        if ((*(a1 + 408) & 1) == 0 && v29 < v30)
                        {
                          v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          if (v45)
                          {
                            _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v45, v46, v47, v48, v49, v50, v51, v52);
                          }

                          return 3;
                        }
                      }

                      else
                      {
                        v64 = v32;
                        *&v65 = v59;
                        *(&v65 + 1) = v37;
                        *&v66 = v36;
                        *(&v66 + 1) = v39;
                        v40 = (**v61)(v61);
                        if (v3[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v40) & 1) != 0)
                        {
                          v20 = v62;
                          v13 = PaletteVectorSize;
                        }

                        else
                        {
                          v20 = v62;
                          v13 = PaletteVectorSize;
                          if (*(a1 + 24) == 1)
                          {
                            Elem = ZinIrWeightBase::GetElemAt<signed char>(v61);
                            v20 = v62;
                            v13 = PaletteVectorSize;
                            v35 = Elem;
                          }
                        }
                      }

                      if (*(a1 + 24) == 1)
                      {
                        v41 = *(a1 + 424);
                        v42 = *(v41 + 8);
                        *(v41 + 8) = v42 + 1;
                        *v42 = v35;
                      }

                      v24 = *(a1 + 16);
                      v26 = ++v27;
                      if (v24 <= v27)
                      {
                        v23 = v60;
                        break;
                      }
                    }
                  }

                  v44 = v23 <= 1;
                  v23 = v25;
                }

                while (!v44);
                v21 = v3[15];
              }

              ++v22;
            }

            while (v22 < v21);
            v19 = v3[16];
            v18 = v59;
          }

          ++v20;
        }

        while (v20 < v19);
        v17 = *(a1 + 40);
      }

      v1 = 0;
      ++v18;
    }

    while (v18 < v17);
  }

  return v1;
}

void sub_1A7427848(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIa22ZinIrOutputStreamBasicIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v42[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v42);
  v44 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v39 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v39 + 208))(v39);
    (*(*v39 + 200))(v39);
  }

  v43 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v43);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
  while (v7 < 1)
  {
LABEL_45:
    result = 0;
    if (++v6 >= v5)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = v2[15];
  while (v9 < 1)
  {
LABEL_43:
    if (++v8 >= v7)
    {
      v5 = *(a1 + 40);
      goto LABEL_45;
    }
  }

  v40 = v6;
  v10 = 0;
LABEL_12:
  v11 = v2[21];
  v12 = *(a1 + 32);
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v2[21];
  }

  v14 = v13 + v12;
  do
  {
    v14 -= v12;
  }

  while (v14 >= v12);
  v15 = v2[2];
  if (v15 && v2[22])
  {
    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v15);
  }

  else
  {
    ValueAsInt32 = 0;
  }

  v17 = 0;
  v18 = 1;
LABEL_22:
  v19 = 0;
  v41 = v18;
  v20 = 1;
  while (1)
  {
    v21 = v20;
    v22 = v19 + v2[9] * v10 + v2[18];
    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = v17 + v2[10] * v8 + v2[19];
      if ((v23 & 0x8000000000000000) == 0)
      {
        v24 = v2[17] - *(a1 + 8);
        v25 = v2[20] + v24 * v2[11];
        if ((v25 & 0x8000000000000000) == 0 && v22 < *(a1 + 56) && v23 < *(a1 + 48) && v25 < *(a1 + 64) && v2[22] && (v24 & 0x8000000000000000) == 0)
        {
          v42[0] = v14;
          v42[1] = v40;
          v42[2] = v23;
          v42[3] = v22;
          v42[4] = v25;
          (**(a1 + 72))(a1 + 72, v42);
          if (!v2[2] || (v26 = (*(**(a1 + 208) + 184))(*(a1 + 208)), Elem = ValueAsInt32, (v26 & 1) == 0))
          {
            Elem = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              Elem = ZinIrWeightBase::GetElemAt<signed char>(a1 + 72);
            }
          }

          goto LABEL_37;
        }
      }
    }

    Elem = ValueAsInt32;
    if ((*(a1 + 408) & 1) == 0)
    {
      Elem = ValueAsInt32;
      if (v11 < v12)
      {
        break;
      }
    }

LABEL_37:
    if (*(a1 + 24) == 1)
    {
      v28 = *(a1 + 424);
      v29 = *(v28 + 8);
      *(v28 + 8) = v29 + 1;
      *v29 = Elem;
    }

    v20 = 0;
    v19 = -1;
    if ((v21 & 1) == 0)
    {
      v18 = 0;
      v17 = -1;
      if (v41)
      {
        goto LABEL_22;
      }

      ++v10;
      v9 = v2[15];
      if (v10 >= v9)
      {
        v7 = v2[16];
        v6 = v40;
        goto LABEL_43;
      }

      goto LABEL_12;
    }
  }

  v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v31)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v31, v32, v33, v34, v35, v36, v37, v38);
  }

  return 3;
}

void sub_1A7427C30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIa22ZinIrOutputStreamBasicIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v93 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v93);
  v92 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v7 = *(a1 + 208);
    v6 = *(a1 + 216);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v9 = (*(*v7 + 208))(v7);
    v8 = (*(*v7 + 200))(v7);
    v11 = 0;
    v10 = *(a1 + 16);
  }

  v91 = 0;
  v87 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v91);
  v13 = v3[16];
  v14 = v13 == 1 && v3[15] == 1;
  if (v11 & 1 | !IsContiguousCrsdStride | (v9 | v8) & 1 || (v10 < v3[22] + 1 ? (v15 = PaletteVectorSize == 1) : (v15 = 0), !v15 || v3[5] != 1 || v3[4] != 1 || v3[3] != 1 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20] || *(a1 + 8) != 1 || v3[8] != 1))
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (v3[7] != 1)
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v14 = 1;
  }

  v16 = 1;
  if (v3[6] != 1 || !v14)
  {
    goto LABEL_33;
  }

  v17 = *(a1 + 32);
  if (v17 != 1)
  {
    v72 = v3[21];
    if (v72 + v10 > v17)
    {
      goto LABEL_33;
    }

    v18 = *(a1 + 40) * v13 * v3[15];
    if (*(a1 + 24))
    {
      v19 = v72 % v17;
      goto LABEL_118;
    }

LABEL_126:
    v16 = 0;
    v1 = 0;
    **(a1 + 416) = v18 * v10;
    goto LABEL_33;
  }

  v18 = *(a1 + 40) * v13 * v3[15];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_126;
  }

  v19 = 0;
LABEL_118:
  v89 = 0u;
  v90 = 0u;
  v88 = v19;
  (**v87)(v87, &v88);
  v1 = *(v7 + 8);
  if (!SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v7 + 8)))
  {
    goto LABEL_33;
  }

  if (v93 > 8)
  {
    if (v1 != 101 || v93 != 16)
    {
      goto LABEL_33;
    }

    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    switch(v1)
    {
      case 7:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 8:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 0x66:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      default:
        goto LABEL_33;
    }
  }

  if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
  {
    v73 = *(v7 + 120);
  }

  else
  {
    v73 = v7 + 112;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v73)
  {
    v16 = 0;
    if (BNNSBitTranspose())
    {
      v1 = 3;
    }

    else
    {
      v1 = 0;
      *(*(a1 + 424) + 8) += v18 * v10;
    }
  }

LABEL_33:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v16)
  {
    v20 = v3[8];
    if (v20 < 1)
    {
      return 0;
    }

    v21 = 0;
    v22 = *(a1 + 40);
    v78 = PaletteVectorSize;
    do
    {
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v3[7];
        v77 = v21;
        do
        {
          if (v24 >= 1)
          {
            v86 = 0;
            v25 = v3[6];
            v79 = v23;
            do
            {
              if (v25 >= 1)
              {
                v85 = 0;
                v26 = v3[16];
                do
                {
                  if (v26 >= 1)
                  {
                    v27 = 0;
                    v28 = v3[15];
                    do
                    {
                      if (v28 >= 1)
                      {
                        v29 = 0;
                        v82 = v27;
                        do
                        {
                          v30 = *(a1 + 8);
                          if (v30 >= 1)
                          {
                            v31 = *(a1 + 16);
                            do
                            {
                              v32 = v30 - 1;
                              if (v31 >= 1)
                              {
                                v74 = v30;
                                v33 = 0;
                                v34 = 0;
                                v83 = v30 - 1;
                                do
                                {
                                  v35 = v3[21];
                                  v36 = v35 + v33 * PaletteVectorSize;
                                  v37 = *(a1 + 32);
                                  if (v37 == 1)
                                  {
                                    v38 = 0;
                                  }

                                  else
                                  {
                                    v38 = v35 + v33 * PaletteVectorSize;
                                  }

                                  v39 = v38 + v37;
                                  do
                                  {
                                    v39 -= v37;
                                  }

                                  while (v39 >= v37);
                                  v40 = v3[2];
                                  v84 = v33;
                                  if (v40 && v3[22] > v33)
                                  {
                                    v41 = v36;
                                    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v40);
                                    v36 = v41;
                                    v32 = v83;
                                    v33 = v84;
                                    v27 = v82;
                                    v43 = ValueAsInt32;
                                  }

                                  else
                                  {
                                    v43 = 0;
                                  }

                                  v44 = v3[5];
                                  if (v44 >= 1)
                                  {
                                    v45 = 0;
                                    v46 = v3[4];
                                    v75 = v34;
                                    v81 = v36;
                                    do
                                    {
                                      if (v46 >= 1)
                                      {
                                        v47 = 0;
                                        v76 = v45;
                                        v48 = v21 - v45;
                                        v49 = v3[3];
                                        do
                                        {
                                          if (v49 >= 1)
                                          {
                                            v50 = 0;
                                            v51 = v85;
                                            v80 = v47;
                                            v52 = v86 - v47;
                                            while (1)
                                            {
                                              v53 = v51 + v3[18] + v29 * v3[9];
                                              if (v53 < 0 || (v54 = v52 + v3[10] * v27 + v3[19], v54 < 0) || (v55 = v32 - *(a1 + 8) + v3[17], v56 = v48 + v3[20] + v55 * v3[11], v56 < 0) || v53 >= *(a1 + 56) || v54 >= *(a1 + 48) || v56 >= *(a1 + 64) || v3[22] <= v33 || v55 < 0)
                                              {
                                                Elem = v43;
                                                if ((*(a1 + 408) & 1) == 0)
                                                {
                                                  Elem = v43;
                                                  if (v36 < v37)
                                                  {
                                                    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                                                    if (v63)
                                                    {
                                                      _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v63, v64, v65, v66, v67, v68, v69, v70);
                                                    }

                                                    return 3;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                v88 = v39;
                                                *&v89 = v79;
                                                *(&v89 + 1) = v54;
                                                *&v90 = v53;
                                                *(&v90 + 1) = v56;
                                                (**v87)(v87);
                                                v36 = v81;
                                                v27 = v82;
                                                v32 = v83;
                                                v33 = v84;
                                                if (!v3[2] || (v57 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v36 = v81, v27 = v82, v32 = v83, v33 = v84, v58 = v57, Elem = v43, (v58 & 1) == 0))
                                                {
                                                  Elem = v43;
                                                  if (*(a1 + 24) == 1)
                                                  {
                                                    Elem = ZinIrWeightBase::GetElemAt<signed char>(v87);
                                                    v36 = v81;
                                                    v27 = v82;
                                                    v32 = v83;
                                                    v33 = v84;
                                                  }
                                                }
                                              }

                                              if (*(a1 + 24) == 1)
                                              {
                                                v60 = *(a1 + 424);
                                                v61 = *(v60 + 8);
                                                *(v60 + 8) = v61 + 1;
                                                *v61 = Elem;
                                              }

                                              ++v50;
                                              v49 = v3[3];
                                              --v51;
                                              if (v50 >= v49)
                                              {
                                                v46 = v3[4];
                                                v21 = v77;
                                                PaletteVectorSize = v78;
                                                v47 = v80;
                                                break;
                                              }
                                            }
                                          }

                                          ++v47;
                                        }

                                        while (v47 < v46);
                                        v44 = v3[5];
                                        v34 = v75;
                                        v45 = v76;
                                      }

                                      ++v45;
                                    }

                                    while (v45 < v44);
                                  }

                                  v31 = *(a1 + 16);
                                  v33 = ++v34;
                                }

                                while (v31 > v34);
                                v30 = v74;
                              }

                              v62 = v30 <= 1;
                              v30 = v32;
                            }

                            while (!v62);
                            v28 = v3[15];
                          }

                          ++v29;
                        }

                        while (v29 < v28);
                        v26 = v3[16];
                        v23 = v79;
                      }

                      ++v27;
                    }

                    while (v27 < v26);
                    v25 = v3[6];
                  }

                  ++v85;
                }

                while (v85 < v25);
                v24 = v3[7];
              }

              ++v86;
            }

            while (v86 < v24);
            v22 = *(a1 + 40);
          }

          ++v23;
        }

        while (v23 < v22);
        v20 = v3[8];
      }

      v1 = 0;
      ++v21;
    }

    while (v21 < v20);
  }

  return v1;
}

void sub_1A7428514(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t details::ZinIrWeightView<unsigned char,ZinIrOutputStreamCompressed<unsigned char>>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A39118;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<unsigned char,ZinIrOutputStreamCompressed<unsigned char>>::serialize(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  LOBYTE(v30) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v30);
  v7 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v7 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v9 = *(a1 + 8);
  v10 = !*(v9 + 320) || (*(v9 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v11 = ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v12 = *(a1 + 136);
  v42 = 0;
  v43 = 0;
  v13 = v5;
  v44 = 0;
  if (v5)
  {
    v14 = *(a1 + 224);
    v15 = *(v14 + 792);
    v16 = *(v14 + 1308);
    v17 = *(v14 + 768);
    v18 = 0xFFFFLL;
    if (v15 == 3)
    {
      v18 = 0xFFFFFFLL;
    }

    v50 = v15;
    v51 = v18;
    v52 = v16;
    v49 = v17;
    v46 = v5;
    v47 = v5 + v15;
    v45 = 0;
    v48 = 1;
    v19 = 1;
  }

  else
  {
    if (*(v9 + 320) && (*(v9 + 8) - 28) >= 0xFFFFFFEB)
    {
      operator new[]();
    }

    v13 = 0;
    v19 = 0;
  }

  v41 = 0;
  v20 = v12 + v11;
  v33[0] = a1;
  v33[1] = v20;
  v33[2] = v7;
  v34 = v19;
  v21 = *(v4 + 56);
  v37 = *(v4 + 88);
  v22 = *(v4 + 72);
  v35 = v21;
  v36 = v22;
  ZinIrWeight::ZinIrWeight(v38, v9);
  v38[336] = v10;
  v39 = &v41;
  v40 = &v42;
  if (*(a1 + 64) != 1 || *(a1 + 56) != 1)
  {
    goto LABEL_28;
  }

  if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
  {
    v23 = _ZZNK7details15ZinIrWeightViewIh27ZinIrOutputStreamCompressedIhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v33);
    goto LABEL_29;
  }

  if (*(a1 + 48) == 1 && v20 == 1 && v7 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
  {
    v23 = _ZZNK7details15ZinIrWeightViewIh27ZinIrOutputStreamCompressedIhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v33);
  }

  else
  {
LABEL_28:
    v23 = _ZZNK7details15ZinIrWeightViewIh27ZinIrOutputStreamCompressedIhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v33);
  }

LABEL_29:
  v24 = v23;
  if (v23)
  {
    if (v19)
    {
      *a3 = ZinIrOutputStreamCompressed<signed char>::Stop(&v42);
    }

    goto LABEL_40;
  }

  if (v19)
  {
    *a3 = ZinIrOutputStreamCompressed<signed char>::Stop(&v42);
    if (v5)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v25 = ZinDivRoundUp(v20 * v7 * *(a1 + 64) * *(v4 + 64) * *(a1 + 56) * *(a1 + 48) * *(a1 + 128) * *(a1 + 120) * *(a1 + 40) * *(a1 + 32) * *(a1 + 24), 8uLL);
  v26 = ZinAlign(v25, *(*(a1 + 224) + 768));
  v32 = 0;
  ZinKernelFormatGetBitDepth(*(*(a1 + 8) + 8), &v32);
  v27 = v32;
  if (v32 == 32)
  {
    v27 = 16;
    v32 = 16;
  }

  v28 = v41;
  *a3 = v26 + ZinDivRoundUp(v27, 8uLL) * v28 + *(*(a1 + 224) + 792);
  if (!v5)
  {
LABEL_38:
    if (v13)
    {
      MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
    }
  }

LABEL_40:
  ZinIrWeight::~ZinIrWeight(v38);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v24;
}

void sub_1A7428AEC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    *(v1 - 176) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIh27ZinIrOutputStreamCompressedIhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v44[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v44);
  v46 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v39 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v39 + 208))(v39);
    (*(*v39 + 200))(v39);
  }

  v45 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v45);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
LABEL_8:
  if (v7 < 1)
  {
    goto LABEL_54;
  }

  v42 = 0;
  v8 = v2[15];
  v40 = v6;
LABEL_10:
  if (v8 < 1)
  {
    goto LABEL_52;
  }

  v9 = 0;
LABEL_12:
  v10 = *(a1 + 8);
  if (v10 < 1)
  {
    goto LABEL_50;
  }

  v11 = *(a1 + 16);
  while (1)
  {
    v12 = v10 - 1;
    if (v11 >= 1)
    {
      break;
    }

LABEL_47:
    v29 = v10 <= 1;
    v10 = v12;
    if (v29)
    {
      v8 = v2[15];
LABEL_50:
      if (++v9 < v8)
      {
        goto LABEL_12;
      }

      v7 = v2[16];
      v6 = v40;
LABEL_52:
      if (++v42 >= v7)
      {
        v5 = *(a1 + 40);
LABEL_54:
        if (++v6 >= v5)
        {
          return 0;
        }

        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  v41 = v10;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = v2[21];
    v16 = v15 + v13 * PaletteVectorSize;
    v17 = *(a1 + 32);
    if (v17 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15 + v13 * PaletteVectorSize;
    }

    v19 = v18 + v17;
    do
    {
      v19 -= v17;
    }

    while (v19 >= v17);
    v20 = v2[2];
    if (v20 && v2[22] > v13)
    {
      ValueAsInt32 = ZinIrVector::GetValueAsInt32(v20);
    }

    else
    {
      ValueAsInt32 = 0;
    }

    v22 = v2[18] + v2[9] * v9;
    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = v2[19] + v2[10] * v42;
      if ((v23 & 0x8000000000000000) == 0)
      {
        v24 = v12 - *(a1 + 8) + v2[17];
        v25 = v2[20] + v24 * v2[11];
        if ((v25 & 0x8000000000000000) == 0 && v22 < *(a1 + 56) && v23 < *(a1 + 48) && v25 < *(a1 + 64) && v2[22] > v13 && (v24 & 0x8000000000000000) == 0)
        {
          v44[0] = v19;
          v44[1] = v40;
          v44[2] = v23;
          v44[3] = v22;
          v44[4] = v25;
          v26 = (**(a1 + 72))(a1 + 72, v44);
          if (v2[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v26) & 1) != 0)
          {
            IsElemZeroPointAt = 1;
          }

          else
          {
            Elem = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              Elem = ZinIrWeightBase::GetElemAt<unsigned char>(a1 + 72);
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v26, v19, *(v2[28] + 1308), ValueAsInt32);
            ValueAsInt32 = Elem;
          }

          goto LABEL_38;
        }
      }
    }

    IsElemZeroPointAt = 1;
    if ((*(a1 + 408) & 1) == 0 && v16 < v17)
    {
      break;
    }

LABEL_38:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressed<signed char>::Push(*(a1 + 424), ValueAsInt32, IsElemZeroPointAt);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    v11 = *(a1 + 16);
    v13 = ++v14;
    if (v11 <= v14)
    {
      v10 = v41;
      goto LABEL_47;
    }
  }

  v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v31)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v31, v32, v33, v34, v35, v36, v37, v38);
  }

  return 3;
}

void sub_1A7428F28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIh27ZinIrOutputStreamCompressedIhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v45[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v45);
  v47 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v41 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v41 + 208))(v41);
    (*(*v41 + 200))(v41);
  }

  v46 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v46);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
  while (v7 < 1)
  {
LABEL_51:
    result = 0;
    if (++v6 >= v5)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = v2[15];
  while (v9 < 1)
  {
LABEL_49:
    if (++v8 >= v7)
    {
      v5 = *(a1 + 40);
      goto LABEL_51;
    }
  }

  v42 = v6;
  v10 = 0;
LABEL_12:
  v11 = v2[21];
  v12 = *(a1 + 32);
  v44 = v11;
  if (v12 == 1)
  {
    v11 = 0;
  }

  v13 = v11 + v12;
  do
  {
    v13 -= v12;
  }

  while (v13 >= v12);
  v14 = v2[2];
  if (v14 && v2[22])
  {
    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v14);
  }

  else
  {
    ValueAsInt32 = 0;
  }

  v16 = 0;
  v17 = 1;
LABEL_21:
  v18 = 0;
  v43 = v17;
  v19 = 1;
  while (1)
  {
    v20 = v19;
    v21 = v18 + v2[9] * v10 + v2[18];
    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = v16 + v2[10] * v8 + v2[19];
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = v2[17] - *(a1 + 8);
        v24 = v2[20] + v23 * v2[11];
        if ((v24 & 0x8000000000000000) == 0 && v21 < *(a1 + 56) && v22 < *(a1 + 48) && v24 < *(a1 + 64) && v2[22] && (v23 & 0x8000000000000000) == 0)
        {
          v45[0] = v13;
          v45[1] = v42;
          v45[2] = v22;
          v45[3] = v21;
          v45[4] = v24;
          v25 = (**(a1 + 72))(a1 + 72, v45);
          if (!v2[2] || (v26 = v25, v27 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v25 = v26, (v27 & 1) == 0))
          {
            v29 = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              v30 = v25;
              Elem = ZinIrWeightBase::GetElemAt<unsigned char>(a1 + 72);
              v25 = v30;
              v29 = Elem;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v25, v13, *(v2[28] + 1308), ValueAsInt32);
            goto LABEL_37;
          }

          IsElemZeroPointAt = 1;
LABEL_36:
          v29 = ValueAsInt32;
          goto LABEL_37;
        }
      }
    }

    IsElemZeroPointAt = 1;
    if (*(a1 + 408))
    {
      goto LABEL_36;
    }

    v29 = ValueAsInt32;
    if (v44 < v12)
    {
      break;
    }

LABEL_37:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressed<signed char>::Push(*(a1 + 424), v29, IsElemZeroPointAt);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    v19 = 0;
    v18 = -1;
    if ((v20 & 1) == 0)
    {
      v17 = 0;
      v16 = -1;
      if (v43)
      {
        goto LABEL_21;
      }

      ++v10;
      v9 = v2[15];
      if (v10 >= v9)
      {
        v7 = v2[16];
        v6 = v42;
        goto LABEL_49;
      }

      goto LABEL_12;
    }
  }

  v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v33)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v33, v34, v35, v36, v37, v38, v39, v40);
  }

  return 3;
}

void sub_1A7429330(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIh27ZinIrOutputStreamCompressedIhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v72[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v72);
  v74 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v5 = 0;
  }

  else
  {
    v57 = *(a1 + 208);
    v5 = *(a1 + 216);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    (*(*v57 + 208))(v57);
    (*(*v57 + 200))(v57);
  }

  v73 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v73);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v2[8];
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(a1 + 40);
  v60 = PaletteVectorSize;
LABEL_8:
  if (v8 < 1)
  {
    goto LABEL_77;
  }

  v9 = 0;
  v10 = v2[7];
  v59 = v7;
LABEL_10:
  if (v10 < 1)
  {
    goto LABEL_75;
  }

  v11 = 0;
  v12 = v2[6];
  v64 = v9;
LABEL_12:
  if (v12 < 1)
  {
    goto LABEL_73;
  }

  v13 = 0;
  v14 = v2[16];
  v61 = v11;
LABEL_14:
  if (v14 < 1)
  {
    goto LABEL_71;
  }

  v71 = 0;
  v15 = v2[15];
  v62 = v13;
LABEL_16:
  if (v15 < 1)
  {
    goto LABEL_69;
  }

  v16 = 0;
LABEL_18:
  v17 = *(a1 + 8);
  if (v17 < 1)
  {
    goto LABEL_67;
  }

  v18 = *(a1 + 16);
  v69 = v16;
LABEL_20:
  v19 = v17 - 1;
  if (v18 < 1)
  {
    goto LABEL_64;
  }

  v58 = v17;
  v20 = 0;
  v21 = 0;
  v70 = v19;
LABEL_22:
  v22 = v2[21] + v20 * PaletteVectorSize;
  v23 = *(a1 + 32);
  v68 = v22;
  if (v23 == 1)
  {
    v22 = 0;
  }

  v24 = v22 + v23;
  do
  {
    v24 -= v23;
  }

  while (v24 >= v23);
  v25 = v2[2];
  v65 = v21;
  if (v25 && v2[22] > v20)
  {
    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v25);
    v16 = v69;
    v19 = v70;
    v27 = ValueAsInt32;
  }

  else
  {
    v27 = 0;
  }

  v28 = v2[5];
  if (v28 < 1)
  {
    goto LABEL_62;
  }

  v29 = 0;
  v30 = v2[4];
  v67 = v20;
LABEL_32:
  if (v30 < 1)
  {
    goto LABEL_61;
  }

  v31 = 0;
  v32 = v7 - v29;
  v33 = v2[3];
  v63 = v29;
  while (v33 < 1)
  {
LABEL_59:
    if (++v31 >= v30)
    {
      v28 = v2[5];
      v7 = v59;
      PaletteVectorSize = v60;
LABEL_61:
      if (++v29 < v28)
      {
        goto LABEL_32;
      }

LABEL_62:
      v20 = (v65 + 1);
      v18 = *(a1 + 16);
      v21 = v65 + 1;
      if (v18 > v20)
      {
        goto LABEL_22;
      }

      v9 = v64;
      v17 = v58;
LABEL_64:
      v47 = v17 <= 1;
      v17 = v19;
      if (!v47)
      {
        goto LABEL_20;
      }

      v15 = v2[15];
LABEL_67:
      if (++v16 < v15)
      {
        goto LABEL_18;
      }

      v14 = v2[16];
LABEL_69:
      if (++v71 < v14)
      {
        goto LABEL_16;
      }

      v12 = v2[6];
LABEL_71:
      if (++v13 >= v12)
      {
        v10 = v2[7];
LABEL_73:
        if (++v11 < v10)
        {
          goto LABEL_12;
        }

        v8 = *(a1 + 40);
LABEL_75:
        if (++v9 >= v8)
        {
          v6 = v2[8];
LABEL_77:
          if (++v7 >= v6)
          {
            return 0;
          }

          goto LABEL_8;
        }

        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  v34 = 0;
  v66 = v31;
  v35 = v11 - v31;
  while (1)
  {
    v36 = v13 + v2[18] + v16 * v2[9];
    if ((v36 & 0x8000000000000000) == 0)
    {
      v37 = v35 + v2[10] * v71 + v2[19];
      if ((v37 & 0x8000000000000000) == 0)
      {
        v38 = v19 - *(a1 + 8) + v2[17];
        v39 = v32 + v2[20] + v38 * v2[11];
        if ((v39 & 0x8000000000000000) == 0 && v36 < *(a1 + 56) && v37 < *(a1 + 48) && v39 < *(a1 + 64) && v2[22] > v67 && (v38 & 0x8000000000000000) == 0)
        {
          v72[0] = v24;
          v72[1] = v64;
          v72[2] = v37;
          v72[3] = v36;
          v72[4] = v39;
          v40 = (**(a1 + 72))(a1 + 72, v72);
          if (v2[2] && (v41 = v40, v42 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v40 = v41, (v42 & 1) != 0))
          {
            IsElemZeroPointAt = 1;
            v44 = v27;
          }

          else
          {
            v44 = v27;
            if (*(a1 + 24) == 1)
            {
              v45 = v40;
              Elem = ZinIrWeightBase::GetElemAt<unsigned char>(a1 + 72);
              v40 = v45;
              v44 = Elem;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v40, v24, *(v2[28] + 1308), v27);
          }

          v16 = v69;
          v19 = v70;
          goto LABEL_49;
        }
      }
    }

    IsElemZeroPointAt = 1;
    v44 = v27;
    if ((*(a1 + 408) & 1) == 0 && v68 < v23)
    {
      break;
    }

LABEL_49:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressed<signed char>::Push(*(a1 + 424), v44, IsElemZeroPointAt);
      v16 = v69;
      v19 = v70;
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    ++v34;
    v33 = v2[3];
    --v13;
    if (v34 >= v33)
    {
      v30 = v2[4];
      v11 = v61;
      v13 = v62;
      v29 = v63;
      v31 = v66;
      goto LABEL_59;
    }
  }

  v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v49)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v49, v50, v51, v52, v53, v54, v55, v56);
  }

  return 3;
}

void sub_1A7429880(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t details::ZinIrWeightView<unsigned char,ZinIrOutputStreamBasic<unsigned char>>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A39158;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<unsigned char,ZinIrOutputStreamBasic<unsigned char>>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  LOBYTE(v28) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v28);
  v8 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v8 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v10 = *(a1 + 8);
  v11 = !*(v10 + 320) || (*(v10 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v12 = ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v13 = *(a1 + 136);
  v14 = v13 + v12;
  if (v6)
  {
    v41 = v6;
    v42 = v6;
    v40 = 0;
    v32[0] = a1;
    v32[1] = v13 + v12;
    v32[2] = v8;
    v33 = 1;
    v15 = *(v5 + 56);
    v36 = *(v5 + 88);
    v16 = *(v5 + 72);
    v34 = v15;
    v35 = v16;
    ZinIrWeight::ZinIrWeight(v37, v10);
    v37[336] = v11;
    v38 = &v40;
    v39 = &v41;
    if (*(a1 + 64) == 1 && *(a1 + 56) == 1)
    {
      if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
      {
        v17 = _ZZNK7details15ZinIrWeightViewIh22ZinIrOutputStreamBasicIhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v32);
LABEL_27:
        v26 = v17;
        *a3 = v42 - v41;
        ZinIrWeight::~ZinIrWeight(v37);
        return v26;
      }

      if (*(a1 + 48) == 1 && v14 == 1 && v8 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
      {
        v17 = _ZZNK7details15ZinIrWeightViewIh22ZinIrOutputStreamBasicIhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v32);
        goto LABEL_27;
      }
    }

    v17 = _ZZNK7details15ZinIrWeightViewIh22ZinIrOutputStreamBasicIhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v32);
    goto LABEL_27;
  }

  v30 = *(v5 + 64);
  v31 = a3;
  v18 = *(a1 + 64);
  v29 = *(a1 + 56);
  v20 = *(a1 + 120);
  v19 = *(a1 + 128);
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  v24 = *(a1 + 24);
  v23 = *(a1 + 32);
  v32[0] = 0;
  ZinKernelFormatGetBitDepth(*(*(a1 + 8) + 8), v32);
  v25 = v32[0];
  if (v32[0] == 32)
  {
    v25 = 16;
    v32[0] = 16;
  }

  v26 = 0;
  *v31 = v14 * v8 * v18 * v30 * v29 * v21 * v19 * v20 * v22 * v23 * v24 * ZinDivRoundUp(v25, 8uLL);
  return v26;
}

uint64_t _ZZNK7details15ZinIrWeightViewIh22ZinIrOutputStreamBasicIhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v69 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v69);
  v68 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v6 = *(a1 + 208);
    v5 = *(a1 + 216);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v8 = (*(*v6 + 208))(v6);
    v7 = (*(*v6 + 200))(v6);
    v10 = 0;
    v9 = *(a1 + 16);
  }

  v67 = 0;
  v61 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v67);
  v12 = v3[16];
  v13 = PaletteVectorSize;
  v14 = v12 == 1 && v3[15] == 1;
  if (v10 & 1 | !IsContiguousCrsdStride | (v8 | v7) & 1 || (v9 < v3[22] + 1 ? (v15 = PaletteVectorSize == 1) : (v15 = 0), !v15 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20]))
  {
    v16 = 1;
    goto LABEL_20;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v14 = 1;
  }

  v16 = 1;
  if (*(a1 + 8) == 1 && v14)
  {
    v54 = *(a1 + 32);
    if (v54 == 1)
    {
      v55 = *(a1 + 40) * v12 * v3[15];
      if (*(a1 + 24))
      {
        v56 = 0;
        goto LABEL_88;
      }
    }

    else
    {
      v57 = v3[21];
      if (v57 + v9 > v54)
      {
        goto LABEL_20;
      }

      v55 = *(a1 + 40) * v12 * v3[15];
      if (*(a1 + 24))
      {
        v56 = v57 % v54;
LABEL_88:
        v66 = 0u;
        v65 = 0u;
        v64 = v56;
        (**v61)(v61, &v64);
        v1 = *(v6 + 8);
        if (SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v6 + 8)))
        {
          if (v69 > 8)
          {
            if (v1 == 101)
            {
              v13 = PaletteVectorSize;
              if (v69 != 16)
              {
                goto LABEL_20;
              }

              if (v5)
              {
                atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              goto LABEL_107;
            }
          }

          else
          {
            switch(v1)
            {
              case 7:
                if (v5)
                {
                  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                goto LABEL_107;
              case 8:
                if (v5)
                {
                  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                goto LABEL_107;
              case 0x66:
                if (v5)
                {
                  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                }

LABEL_107:
                if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
                {
                  v58 = *(v6 + 120);
                }

                else
                {
                  v58 = v6 + 112;
                }

                if (v5)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
                }

                if (v58)
                {
                  v16 = 0;
                  if (BNNSBitTranspose())
                  {
                    v1 = 3;
                  }

                  else
                  {
                    v1 = 0;
                    *(*(a1 + 424) + 8) += v55 * v9;
                  }
                }

                break;
            }
          }
        }

        v13 = PaletteVectorSize;
        goto LABEL_20;
      }
    }

    v16 = 0;
    v1 = 0;
    **(a1 + 416) = v55 * v9;
  }

LABEL_20:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v13 = PaletteVectorSize;
  }

  if (v16)
  {
    v17 = *(a1 + 40);
    if (v17 < 1)
    {
      return 0;
    }

    v18 = 0;
    v19 = v3[16];
    do
    {
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = v3[15];
        v59 = v18;
        do
        {
          if (v21 >= 1)
          {
            v22 = 0;
            v62 = v20;
            do
            {
              v23 = *(a1 + 8);
              if (v23 >= 1)
              {
                v24 = *(a1 + 16);
                do
                {
                  v25 = v23 - 1;
                  if (v24 >= 1)
                  {
                    v60 = v23;
                    v26 = 0;
                    v27 = 0;
                    while (1)
                    {
                      v28 = v3[21];
                      v29 = v28 + v26 * v13;
                      v30 = *(a1 + 32);
                      if (v30 == 1)
                      {
                        v31 = 0;
                      }

                      else
                      {
                        v31 = v28 + v26 * v13;
                      }

                      v32 = v31 + v30;
                      do
                      {
                        v32 -= v30;
                      }

                      while (v32 >= v30);
                      v33 = v3[2];
                      if (v33 && v3[22] > v26)
                      {
                        ValueAsInt32 = ZinIrVector::GetValueAsInt32(v33);
                        v20 = v62;
                        v13 = PaletteVectorSize;
                        v35 = ValueAsInt32;
                      }

                      else
                      {
                        v35 = 0;
                      }

                      v36 = v3[18] + v3[9] * v22;
                      if (v36 < 0 || (v37 = v3[19] + v3[10] * v20, v37 < 0) || (v38 = v25 - *(a1 + 8) + v3[17], v39 = v3[20] + v38 * v3[11], v39 < 0) || v36 >= *(a1 + 56) || v37 >= *(a1 + 48) || v39 >= *(a1 + 64) || v3[22] <= v26 || v38 < 0)
                      {
                        if ((*(a1 + 408) & 1) == 0 && v29 < v30)
                        {
                          v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          if (v45)
                          {
                            _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v45, v46, v47, v48, v49, v50, v51, v52);
                          }

                          return 3;
                        }
                      }

                      else
                      {
                        v64 = v32;
                        *&v65 = v59;
                        *(&v65 + 1) = v37;
                        *&v66 = v36;
                        *(&v66 + 1) = v39;
                        v40 = (**v61)(v61);
                        if (v3[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v40) & 1) != 0)
                        {
                          v20 = v62;
                          v13 = PaletteVectorSize;
                        }

                        else
                        {
                          v20 = v62;
                          v13 = PaletteVectorSize;
                          if (*(a1 + 24) == 1)
                          {
                            Elem = ZinIrWeightBase::GetElemAt<unsigned char>(v61);
                            v20 = v62;
                            v13 = PaletteVectorSize;
                            v35 = Elem;
                          }
                        }
                      }

                      if (*(a1 + 24) == 1)
                      {
                        v41 = *(a1 + 424);
                        v42 = *(v41 + 8);
                        *(v41 + 8) = v42 + 1;
                        *v42 = v35;
                      }

                      v24 = *(a1 + 16);
                      v26 = ++v27;
                      if (v24 <= v27)
                      {
                        v23 = v60;
                        break;
                      }
                    }
                  }

                  v44 = v23 <= 1;
                  v23 = v25;
                }

                while (!v44);
                v21 = v3[15];
              }

              ++v22;
            }

            while (v22 < v21);
            v19 = v3[16];
            v18 = v59;
          }

          ++v20;
        }

        while (v20 < v19);
        v17 = *(a1 + 40);
      }

      v1 = 0;
      ++v18;
    }

    while (v18 < v17);
  }

  return v1;
}

void sub_1A742A484(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIh22ZinIrOutputStreamBasicIhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v42[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v42);
  v44 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v4 = 0;
  }

  else
  {
    v39 = *(a1 + 208);
    v4 = *(a1 + 216);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    (*(*v39 + 208))(v39);
    (*(*v39 + 200))(v39);
  }

  v43 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v43);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v2[16];
  while (v7 < 1)
  {
LABEL_45:
    result = 0;
    if (++v6 >= v5)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = v2[15];
  while (v9 < 1)
  {
LABEL_43:
    if (++v8 >= v7)
    {
      v5 = *(a1 + 40);
      goto LABEL_45;
    }
  }

  v40 = v6;
  v10 = 0;
LABEL_12:
  v11 = v2[21];
  v12 = *(a1 + 32);
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v2[21];
  }

  v14 = v13 + v12;
  do
  {
    v14 -= v12;
  }

  while (v14 >= v12);
  v15 = v2[2];
  if (v15 && v2[22])
  {
    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v15);
  }

  else
  {
    ValueAsInt32 = 0;
  }

  v17 = 0;
  v18 = 1;
LABEL_22:
  v19 = 0;
  v41 = v18;
  v20 = 1;
  while (1)
  {
    v21 = v20;
    v22 = v19 + v2[9] * v10 + v2[18];
    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = v17 + v2[10] * v8 + v2[19];
      if ((v23 & 0x8000000000000000) == 0)
      {
        v24 = v2[17] - *(a1 + 8);
        v25 = v2[20] + v24 * v2[11];
        if ((v25 & 0x8000000000000000) == 0 && v22 < *(a1 + 56) && v23 < *(a1 + 48) && v25 < *(a1 + 64) && v2[22] && (v24 & 0x8000000000000000) == 0)
        {
          v42[0] = v14;
          v42[1] = v40;
          v42[2] = v23;
          v42[3] = v22;
          v42[4] = v25;
          (**(a1 + 72))(a1 + 72, v42);
          if (!v2[2] || (v26 = (*(**(a1 + 208) + 184))(*(a1 + 208)), Elem = ValueAsInt32, (v26 & 1) == 0))
          {
            Elem = ValueAsInt32;
            if (*(a1 + 24) == 1)
            {
              Elem = ZinIrWeightBase::GetElemAt<unsigned char>(a1 + 72);
            }
          }

          goto LABEL_37;
        }
      }
    }

    Elem = ValueAsInt32;
    if ((*(a1 + 408) & 1) == 0)
    {
      Elem = ValueAsInt32;
      if (v11 < v12)
      {
        break;
      }
    }

LABEL_37:
    if (*(a1 + 24) == 1)
    {
      v28 = *(a1 + 424);
      v29 = *(v28 + 8);
      *(v28 + 8) = v29 + 1;
      *v29 = Elem;
    }

    v20 = 0;
    v19 = -1;
    if ((v21 & 1) == 0)
    {
      v18 = 0;
      v17 = -1;
      if (v41)
      {
        goto LABEL_22;
      }

      ++v10;
      v9 = v2[15];
      if (v10 >= v9)
      {
        v7 = v2[16];
        v6 = v40;
        goto LABEL_43;
      }

      goto LABEL_12;
    }
  }

  v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v31)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v31, v32, v33, v34, v35, v36, v37, v38);
  }

  return 3;
}

void sub_1A742A86C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewIh22ZinIrOutputStreamBasicIhEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v3 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v93 = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v3[1] + 8), &v93);
  v92 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v7 = *(a1 + 208);
    v6 = *(a1 + 216);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v9 = (*(*v7 + 208))(v7);
    v8 = (*(*v7 + 200))(v7);
    v11 = 0;
    v10 = *(a1 + 16);
  }

  v91 = 0;
  v87 = (a1 + 72);
  IsContiguousCrsdStride = ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v91);
  v13 = v3[16];
  v14 = v13 == 1 && v3[15] == 1;
  if (v11 & 1 | !IsContiguousCrsdStride | (v9 | v8) & 1 || (v10 < v3[22] + 1 ? (v15 = PaletteVectorSize == 1) : (v15 = 0), !v15 || v3[5] != 1 || v3[4] != 1 || v3[3] != 1 || v3[9] != 1 || v3[10] != 1 || v3[11] != 1 || v3[18] || v3[19] || v3[20] || *(a1 + 8) != 1 || v3[8] != 1))
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (v3[7] != 1)
  {
    v16 = 1;
    goto LABEL_33;
  }

  if (*(a1 + 228) != 1145261902)
  {
    v14 = 1;
  }

  v16 = 1;
  if (v3[6] != 1 || !v14)
  {
    goto LABEL_33;
  }

  v17 = *(a1 + 32);
  if (v17 != 1)
  {
    v72 = v3[21];
    if (v72 + v10 > v17)
    {
      goto LABEL_33;
    }

    v18 = *(a1 + 40) * v13 * v3[15];
    if (*(a1 + 24))
    {
      v19 = v72 % v17;
      goto LABEL_118;
    }

LABEL_126:
    v16 = 0;
    v1 = 0;
    **(a1 + 416) = v18 * v10;
    goto LABEL_33;
  }

  v18 = *(a1 + 40) * v13 * v3[15];
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_126;
  }

  v19 = 0;
LABEL_118:
  v89 = 0u;
  v90 = 0u;
  v88 = v19;
  (**v87)(v87, &v88);
  v1 = *(v7 + 8);
  if (!SupportedCombinationOfFormatAndType(*(v3[1] + 8), *(v7 + 8)))
  {
    goto LABEL_33;
  }

  if (v93 > 8)
  {
    if (v1 != 101 || v93 != 16)
    {
      goto LABEL_33;
    }

    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    switch(v1)
    {
      case 7:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 8:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      case 0x66:
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        break;
      default:
        goto LABEL_33;
    }
  }

  if ((*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_))
  {
    v73 = *(v7 + 120);
  }

  else
  {
    v73 = v7 + 112;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v73)
  {
    v16 = 0;
    if (BNNSBitTranspose())
    {
      v1 = 3;
    }

    else
    {
      v1 = 0;
      *(*(a1 + 424) + 8) += v18 * v10;
    }
  }

LABEL_33:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v16)
  {
    v20 = v3[8];
    if (v20 < 1)
    {
      return 0;
    }

    v21 = 0;
    v22 = *(a1 + 40);
    v78 = PaletteVectorSize;
    do
    {
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v3[7];
        v77 = v21;
        do
        {
          if (v24 >= 1)
          {
            v86 = 0;
            v25 = v3[6];
            v79 = v23;
            do
            {
              if (v25 >= 1)
              {
                v85 = 0;
                v26 = v3[16];
                do
                {
                  if (v26 >= 1)
                  {
                    v27 = 0;
                    v28 = v3[15];
                    do
                    {
                      if (v28 >= 1)
                      {
                        v29 = 0;
                        v82 = v27;
                        do
                        {
                          v30 = *(a1 + 8);
                          if (v30 >= 1)
                          {
                            v31 = *(a1 + 16);
                            do
                            {
                              v32 = v30 - 1;
                              if (v31 >= 1)
                              {
                                v74 = v30;
                                v33 = 0;
                                v34 = 0;
                                v83 = v30 - 1;
                                do
                                {
                                  v35 = v3[21];
                                  v36 = v35 + v33 * PaletteVectorSize;
                                  v37 = *(a1 + 32);
                                  if (v37 == 1)
                                  {
                                    v38 = 0;
                                  }

                                  else
                                  {
                                    v38 = v35 + v33 * PaletteVectorSize;
                                  }

                                  v39 = v38 + v37;
                                  do
                                  {
                                    v39 -= v37;
                                  }

                                  while (v39 >= v37);
                                  v40 = v3[2];
                                  v84 = v33;
                                  if (v40 && v3[22] > v33)
                                  {
                                    v41 = v36;
                                    ValueAsInt32 = ZinIrVector::GetValueAsInt32(v40);
                                    v36 = v41;
                                    v32 = v83;
                                    v33 = v84;
                                    v27 = v82;
                                    v43 = ValueAsInt32;
                                  }

                                  else
                                  {
                                    v43 = 0;
                                  }

                                  v44 = v3[5];
                                  if (v44 >= 1)
                                  {
                                    v45 = 0;
                                    v46 = v3[4];
                                    v75 = v34;
                                    v81 = v36;
                                    do
                                    {
                                      if (v46 >= 1)
                                      {
                                        v47 = 0;
                                        v76 = v45;
                                        v48 = v21 - v45;
                                        v49 = v3[3];
                                        do
                                        {
                                          if (v49 >= 1)
                                          {
                                            v50 = 0;
                                            v51 = v85;
                                            v80 = v47;
                                            v52 = v86 - v47;
                                            while (1)
                                            {
                                              v53 = v51 + v3[18] + v29 * v3[9];
                                              if (v53 < 0 || (v54 = v52 + v3[10] * v27 + v3[19], v54 < 0) || (v55 = v32 - *(a1 + 8) + v3[17], v56 = v48 + v3[20] + v55 * v3[11], v56 < 0) || v53 >= *(a1 + 56) || v54 >= *(a1 + 48) || v56 >= *(a1 + 64) || v3[22] <= v33 || v55 < 0)
                                              {
                                                Elem = v43;
                                                if ((*(a1 + 408) & 1) == 0)
                                                {
                                                  Elem = v43;
                                                  if (v36 < v37)
                                                  {
                                                    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                                                    if (v63)
                                                    {
                                                      _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v63, v64, v65, v66, v67, v68, v69, v70);
                                                    }

                                                    return 3;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                v88 = v39;
                                                *&v89 = v79;
                                                *(&v89 + 1) = v54;
                                                *&v90 = v53;
                                                *(&v90 + 1) = v56;
                                                (**v87)(v87);
                                                v36 = v81;
                                                v27 = v82;
                                                v32 = v83;
                                                v33 = v84;
                                                if (!v3[2] || (v57 = (*(**(a1 + 208) + 184))(*(a1 + 208)), v36 = v81, v27 = v82, v32 = v83, v33 = v84, v58 = v57, Elem = v43, (v58 & 1) == 0))
                                                {
                                                  Elem = v43;
                                                  if (*(a1 + 24) == 1)
                                                  {
                                                    Elem = ZinIrWeightBase::GetElemAt<unsigned char>(v87);
                                                    v36 = v81;
                                                    v27 = v82;
                                                    v32 = v83;
                                                    v33 = v84;
                                                  }
                                                }
                                              }

                                              if (*(a1 + 24) == 1)
                                              {
                                                v60 = *(a1 + 424);
                                                v61 = *(v60 + 8);
                                                *(v60 + 8) = v61 + 1;
                                                *v61 = Elem;
                                              }

                                              ++v50;
                                              v49 = v3[3];
                                              --v51;
                                              if (v50 >= v49)
                                              {
                                                v46 = v3[4];
                                                v21 = v77;
                                                PaletteVectorSize = v78;
                                                v47 = v80;
                                                break;
                                              }
                                            }
                                          }

                                          ++v47;
                                        }

                                        while (v47 < v46);
                                        v44 = v3[5];
                                        v34 = v75;
                                        v45 = v76;
                                      }

                                      ++v45;
                                    }

                                    while (v45 < v44);
                                  }

                                  v31 = *(a1 + 16);
                                  v33 = ++v34;
                                }

                                while (v31 > v34);
                                v30 = v74;
                              }

                              v62 = v30 <= 1;
                              v30 = v32;
                            }

                            while (!v62);
                            v28 = v3[15];
                          }

                          ++v29;
                        }

                        while (v29 < v28);
                        v26 = v3[16];
                        v23 = v79;
                      }

                      ++v27;
                    }

                    while (v27 < v26);
                    v25 = v3[6];
                  }

                  ++v85;
                }

                while (v85 < v25);
                v24 = v3[7];
              }

              ++v86;
            }

            while (v86 < v24);
            v22 = *(a1 + 40);
          }

          ++v23;
        }

        while (v23 < v22);
        v20 = v3[8];
      }

      v1 = 0;
      ++v21;
    }

    while (v21 < v20);
  }

  return v1;
}

void sub_1A742B150(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t details::ZinIrWeightView<e4m3_t,ZinIrOutputStreamCompressed<e4m3_t>>::ZinIrWeightView(uint64_t a1, uint64_t *a2, uint64_t a3, uint32x2_t *a4, uint32x2_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t *a11, char a12, char a13, int a14, char a15, int a16, char a17, uint64_t a18, uint64_t a19)
{
  *a1 = &unk_1F1A39198;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 168) = a7;
  *(a1 + 176) = a8;
  *(a1 + 184) = a9;
  v21 = *a11;
  *(a1 + 200) = *(a11 + 2);
  *(a1 + 192) = v21;
  *(a1 + 204) = a12;
  *(a1 + 205) = a13;
  *(a1 + 206) = a10;
  *(a1 + 207) = a15;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  v22 = a5[1].i32[0];
  v23 = a4[1].i32[0];
  v24 = *a4;
  v25 = vmax_u32(*a4, *a5);
  *&v26 = a5->i32[0];
  *(&v26 + 1) = HIDWORD(*a5);
  v27 = v26;
  *&v26 = v22;
  *(&v26 + 1) = vdup_lane_s32(*a4, 0).i32[1];
  v28 = *(&v26 + 1);
  *(a1 + 40) = v26;
  *(a1 + 24) = v27;
  *(a1 + 56) = v24.i32[1];
  *(a1 + 64) = v23;
  *&v26 = v25.i32[0];
  *(&v26 + 1) = v25.i32[1];
  *(a1 + 72) = v26;
  if (v23 > v22)
  {
    v22 = v23;
  }

  v29 = *a6;
  *(a1 + 88) = v22;
  *(a1 + 96) = v29;
  v30 = a6[4];
  *(a1 + 104) = a6[2];
  *(a1 + 112) = v30;
  *(a1 + 120) = details::ZinIrSubchannelKernelDimension(v28, v27, a2[10], v29);
  *(a1 + 128) = details::ZinIrSubchannelKernelDimension(*(a1 + 56), *(a1 + 32), a2[9], *(a1 + 104));
  *(a1 + 136) = details::ZinIrSubchannelKernelDimension(*(a1 + 64), *(a1 + 40), a2[11], *(a1 + 112));
  if (*(a1 + 48) == 1 && *(a1 + 24) == 2)
  {
    v31 = *(a1 + 96) & 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 144) = v31;
  if (*(a1 + 56) == 1 && *(a1 + 32) == 2)
  {
    v32 = *(a1 + 104) & 1;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 152) = v32;
  if (*(a1 + 64) == 1 && *(a1 + 40) == 2)
  {
    v33 = *(a1 + 112) & 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 160) = v33;
  *(a1 + 208) = a17;
  return a1;
}

uint64_t details::ZinIrWeightView<e4m3_t,ZinIrOutputStreamCompressed<e4m3_t>>::serialize(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  LOBYTE(v30) = *(a1 + 206);
  OCGChannelCountAfterPadding = ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(a1 + 192, *(a1 + 176), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 204), *(a1 + 136), *(a1 + 205), *(a1 + 207), *(a1 + 224), *(a1 + 184), v30);
  v7 = OCGChannelCountAfterPadding;
  if (ZinIrWeight::GetPaletteVectorSize(*(a1 + 8)) >= 2)
  {
    PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(a1 + 8));
    v7 = ZinDivRoundUp(OCGChannelCountAfterPadding, PaletteVectorSize);
  }

  v9 = *(a1 + 8);
  v10 = !*(v9 + 320) || (*(v9 + 8) - 7) > 0x14 || (*(a1 + 192) & 1) != 0 || !ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(a1 + 8));
  v11 = ZinIrCodegenKernelUtil::NeedDepthSubchannelPadding(*(a1 + 224), *(a1 + 205), *(a1 + 207), *(a1 + 204) - 1 < 2, OCGChannelCountAfterPadding, *(a1 + 136), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v12 = *(a1 + 136);
  v42 = 0;
  v43 = 0;
  v13 = v5;
  v44 = 0;
  if (v5)
  {
    v14 = *(a1 + 224);
    v15 = *(v14 + 792);
    v16 = *(v14 + 1308);
    v17 = *(v14 + 768);
    v18 = 0xFFFFLL;
    if (v15 == 3)
    {
      v18 = 0xFFFFFFLL;
    }

    v50 = v15;
    v51 = v18;
    v52 = v16;
    v49 = v17;
    v46 = v5;
    v47 = v5 + v15;
    v45 = 0;
    v48 = 1;
    v19 = 1;
  }

  else
  {
    if (*(v9 + 320) && (*(v9 + 8) - 28) >= 0xFFFFFFEB)
    {
      operator new[]();
    }

    v13 = 0;
    v19 = 0;
  }

  v41 = 0;
  v20 = v12 + v11;
  v33[0] = a1;
  v33[1] = v20;
  v33[2] = v7;
  v34 = v19;
  v21 = *(v4 + 56);
  v37 = *(v4 + 88);
  v22 = *(v4 + 72);
  v35 = v21;
  v36 = v22;
  ZinIrWeight::ZinIrWeight(v38, v9);
  v38[336] = v10;
  v39 = &v41;
  v40 = &v42;
  if (*(a1 + 64) != 1 || *(a1 + 56) != 1)
  {
    goto LABEL_28;
  }

  if (*(a1 + 48) == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 1 && *(a1 + 24) == 1)
  {
    v23 = _ZZNK7details15ZinIrWeightViewI6e4m3_t27ZinIrOutputStreamCompressedIS1_EE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(v33);
    goto LABEL_29;
  }

  if (*(a1 + 48) == 1 && v20 == 1 && v7 == 1 && *(a1 + 40) == 1 && *(a1 + 32) == 2 && *(a1 + 24) == 2)
  {
    v23 = _ZZNK7details15ZinIrWeightViewI6e4m3_t27ZinIrOutputStreamCompressedIS1_EE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELl0ELl1ELl1ELl2ELl2EEEEE11ZinIrStatusv(v33);
  }

  else
  {
LABEL_28:
    v23 = _ZZNK7details15ZinIrWeightViewI6e4m3_t27ZinIrOutputStreamCompressedIS1_EE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Lln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1ELln1EEEEE11ZinIrStatusv(v33);
  }

LABEL_29:
  v24 = v23;
  if (v23)
  {
    if (v19)
    {
      *a3 = ZinIrOutputStreamCompressed<signed char>::Stop(&v42);
    }

    goto LABEL_40;
  }

  if (v19)
  {
    *a3 = ZinIrOutputStreamCompressed<signed char>::Stop(&v42);
    if (v5)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v25 = ZinDivRoundUp(v20 * v7 * *(a1 + 64) * *(v4 + 64) * *(a1 + 56) * *(a1 + 48) * *(a1 + 128) * *(a1 + 120) * *(a1 + 40) * *(a1 + 32) * *(a1 + 24), 8uLL);
  v26 = ZinAlign(v25, *(*(a1 + 224) + 768));
  v32 = 0;
  ZinKernelFormatGetBitDepth(*(*(a1 + 8) + 8), &v32);
  v27 = v32;
  if (v32 == 32)
  {
    v27 = 16;
    v32 = 16;
  }

  v28 = v41;
  *a3 = v26 + ZinDivRoundUp(v27, 8uLL) * v28 + *(*(a1 + 224) + 792);
  if (!v5)
  {
LABEL_38:
    if (v13)
    {
      MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
    }
  }

LABEL_40:
  ZinIrWeight::~ZinIrWeight(v38);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v24;
}

void sub_1A742B728(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    *(v1 - 176) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZZNK7details15ZinIrWeightViewI6e4m3_t27ZinIrOutputStreamCompressedIS1_EE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS4_9serializeES7_S8_E21CompileTimeLoopBoundsvE_clIXtlS9_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv(uint64_t a1)
{
  v2 = *a1;
  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(*(*a1 + 8));
  v40[0] = 0;
  BitDepth = ZinKernelFormatGetBitDepth(*(v2[1] + 8), v40);
  v42 = 0;
  if (BitDepth || BNNSBitTranspose())
  {
    v5 = 0;
  }

  else
  {
    v38 = *(a1 + 208);
    v5 = *(a1 + 216);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    (*(*v38 + 208))(v38);
    (*(*v38 + 200))(v38);
  }

  v41 = 0;
  ZinIrWeight::IsContiguousCrsdStride((a1 + 72), &v41);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 40);
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = v2[16];
LABEL_8:
  if (v8 < 1)
  {
    goto LABEL_51;
  }

  v39 = v7;
  v9 = 0;
  v10 = v2[15];
LABEL_10:
  if (v10 < 1)
  {
    goto LABEL_49;
  }

  v11 = 0;
LABEL_12:
  v12 = *(a1 + 8);
  if (v12 < 1)
  {
    goto LABEL_47;
  }

  v13 = *(a1 + 16);
  while (v13 < 1)
  {
LABEL_44:
    if (v12-- <= 1)
    {
      v10 = v2[15];
LABEL_47:
      if (++v11 < v10)
      {
        goto LABEL_12;
      }

      v8 = v2[16];
LABEL_49:
      if (++v9 >= v8)
      {
        v6 = *(a1 + 40);
        v7 = v39;
LABEL_51:
        if (++v7 >= v6)
        {
          return 0;
        }

        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *(a1 + 32);
    if (v16 == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = v2[21] + v14 * PaletteVectorSize;
    }

    v18 = v17 + v16;
    do
    {
      v18 -= v16;
    }

    while (v18 >= v16);
    v19 = v2[18] + v2[9] * v11;
    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = v2[19] + v2[10] * v9;
      if ((v20 & 0x8000000000000000) == 0)
      {
        v21 = v12 - 1 - *(a1 + 8) + v2[17];
        v22 = v2[20] + v21 * v2[11];
        if ((v22 & 0x8000000000000000) == 0 && v19 < *(a1 + 56) && v20 < *(a1 + 48) && v22 < *(a1 + 64) && v2[22] > v14 && (v21 & 0x8000000000000000) == 0)
        {
          v40[0] = v18;
          v40[1] = v39;
          v40[2] = v20;
          v40[3] = v19;
          v40[4] = v22;
          v23 = (**(a1 + 72))(a1 + 72, v40);
          if (v2[2] && ((*(**(a1 + 208) + 184))(*(a1 + 208), v23) & 1) != 0)
          {
            v24 = 0;
            IsElemZeroPointAt = 1;
          }

          else
          {
            if (*(a1 + 24) == 1)
            {
              Elem = ZinIrWeightBase::GetElemAt<e4m3_t>(a1 + 72);
              v27 = v23;
              v24 = Elem;
            }

            else
            {
              v27 = v23;
              v24 = 0;
            }

            IsElemZeroPointAt = ZinIrWeight::IsElemZeroPointAt((a1 + 72), v27, v18, *(v2[28] + 1308), 0);
          }

          goto LABEL_34;
        }
      }
    }

    v24 = 0;
    IsElemZeroPointAt = 1;
    if ((*(a1 + 408) & 1) == 0 && (v2[21] + v14 * PaletteVectorSize) < v16)
    {
      break;
    }

LABEL_34:
    if (*(a1 + 24))
    {
      ZinIrOutputStreamCompressed<signed char>::Push(*(a1 + 424), v24, IsElemZeroPointAt);
    }

    else if ((IsElemZeroPointAt & 1) == 0)
    {
      ++**(a1 + 416);
    }

    v13 = *(a1 + 16);
    v14 = ++v15;
    if (v13 <= v15)
    {
      goto LABEL_44;
    }
  }

  v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v30)
  {
    _ZZNK7details15ZinIrWeightViewIa27ZinIrOutputStreamCompressedIaEE9serializeERK21KernelSerializeBufferRmENKUlTnZNKS3_9serializeES6_S7_E21CompileTimeLoopBoundsvE_clIXtlS8_Ll1ELln1ELl1ELl1ELln1ELln1ELln1ELln1ELl1ELl1ELl1EEEEE11ZinIrStatusv_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  return 3;
}