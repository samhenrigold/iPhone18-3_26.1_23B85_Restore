void *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::SaveTemplateParams::SaveTemplateParams(void *result, void *a2)
{
  v2 = a2;
  *(result + 2) = 0u;
  v3 = result + 4;
  *result = a2;
  result[1] = result + 4;
  *(result + 11) = 0u;
  v4 = result + 11;
  result[8] = result + 11;
  v5 = (result + 8);
  result[2] = result + 4;
  result[3] = result + 8;
  *(result + 3) = 0u;
  v6 = result + 19;
  result[9] = result + 11;
  result[10] = result + 19;
  *(result + 13) = 0u;
  *(result + 15) = 0u;
  *(result + 17) = 0u;
  v7 = a2[83];
  v8 = v2 + 86;
  if (v7 == (v2 + 86))
  {
    v14 = v2[84];
    if (v14 == v7)
    {
      v9 = result + 11;
      v16 = v7;
    }

    else
    {
      v15 = result;
      memmove(result + 4, v7, v14 - v7);
      result = v15;
      v16 = v2[84];
      v7 = v2[83];
      v9 = *v5;
    }

    result[2] = v3 + v16 - v7;
    v2[84] = v7;
    v10 = v2[72];
    v11 = v2 + 75;
    if (v10 != v2 + 75)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (v9 == v4)
    {
      v4 = v9;
      v22 = v2[73];
      v19 = v22 - v10;
      if (v22 != v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = result;
      free(v9);
      result = v17;
      v17[8] = v4;
      v17[9] = v4;
      v17[10] = v6;
      v10 = v2[72];
      v18 = v2[73];
      v19 = v18 - v10;
      if (v18 != v10)
      {
LABEL_12:
        v20 = result;
        memmove(v4, v10, v19);
        result = v20;
        v4 = *v5;
        v21 = v2[73];
        v10 = v2[72];
LABEL_15:
        result[9] = v4 + v21 - v10;
        v2[73] = v10;
        v2 = *result;
        v7 = *(*result + 664);
        v11 = *(*result + 576);
        goto LABEL_16;
      }
    }

    v21 = v10;
    goto LABEL_15;
  }

  result[1] = v7;
  *(result + 1) = *(v2 + 42);
  v2[83] = v8;
  v2[84] = v8;
  v2[85] = v2 + 90;
  v7 = (v2 + 86);
  v9 = result + 11;
  v10 = v2[72];
  v11 = v2 + 75;
  if (v10 == v2 + 75)
  {
    goto LABEL_10;
  }

LABEL_3:
  *v5 = v10;
  if (v9 == v4)
  {
    *(result + 9) = *(v2 + 73);
    v2[72] = v11;
    v2[73] = v11;
    v2[74] = v2 + 83;
  }

  else
  {
    v2[72] = v9;
    v12 = result[9];
    result[9] = v2[73];
    v2[73] = v12;
    v13 = result[10];
    result[10] = v2[74];
    v2[74] = v13;
    v11 = v2[72];
    v2[73] = v11;
  }

LABEL_16:
  v2[84] = v7;
  v2[73] = v11;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseName(const void **a1, unsigned __int8 *a2)
{
  v2 = a2;
  v5 = *a1;
  v4 = a1[1];
  if (v4 == *a1)
  {
LABEL_9:
    LOBYTE(v57[0]) = 0;
    if (!v10)
    {
      return v10;
    }

    if (a1[1] == *a1 || **a1 != 73)
    {
      if (v57[0])
      {
        return 0;
      }

      return v10;
    }

    if ((v57[0] & 1) == 0)
    {
      v11 = a1[38];
      if (v11 == a1[39])
      {
        v12 = a1[37];
        v13 = v11 - v12;
        if (v12 == a1 + 40)
        {
          v14 = malloc_type_malloc(2 * v13, 0x2004093837F09uLL);
          if (!v14)
          {
            goto LABEL_127;
          }

          v46 = a1[37];
          v47 = a1[38];
          if (v47 != v46)
          {
            v48 = v14;
            memmove(v14, v46, v47 - v46);
            v14 = v48;
          }

          a1[37] = v14;
        }

        else
        {
          v14 = malloc_type_realloc(v12, 2 * (v11 - v12), 0x2004093837F09uLL);
          a1[37] = v14;
          if (!v14)
          {
LABEL_127:
            abort();
          }
        }

        v11 = &v14[v13];
        a1[39] = &v14[8 * (v13 >> 2)];
      }

      *v11 = v10;
      a1[38] = v11 + 8;
    }

    if (!v49)
    {
      return 0;
    }

    if (v2)
    {
      v2[1] = 1;
    }

    v50 = a1[613];
    v51 = v50[1];
    if ((v51 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v52 = v49;
      v53 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v53)
      {
LABEL_128:
        std::terminate();
      }

      v50 = v53;
      v51 = 0;
      *v53 = a1[613];
      v53[1] = 0;
      a1[613] = v53;
      v49 = v52;
    }

    v50[1] = v51 + 32;
    v54 = v50 + v51;
    v54[24] = 45;
    *(v54 + 25) = *(v54 + 25) & 0xF000 | 0x540;
    *(v54 + 2) = &unk_1F1A383C8;
    *(v54 + 4) = v10;
    *(v54 + 5) = v49;
    return v54 + 16;
  }

  v6 = *v5;
  if (v6 == 90)
  {
    *a1 = v5 + 1;
    if (!v58[0])
    {
      return 0;
    }

    v17 = *a1;
    v16 = a1[1];
    if (*a1 == v16 || *v17 != 69)
    {
      return 0;
    }

    *a1 = v17 + 1;
    if (v17 + 1 != v16 && v17[1] == 115)
    {
      *a1 = v17 + 2;
      *a1 = llvm::itanium_demangle::parse_discriminator(v17 + 2, v16, v15);
    }

    v43 = *a1;
    if (*a1 == a1[1] || *v43 != 100)
    {
      if (!v56)
      {
LABEL_110:
        v10 = 0;
        goto LABEL_111;
      }

      *a1 = llvm::itanium_demangle::parse_discriminator(*a1, a1[1], v45);
    }

    else
    {
      *a1 = v43 + 1;
      v44 = *a1;
      if (*a1 == a1[1])
      {
        goto LABEL_110;
      }

      if (*v44 != 95)
      {
        goto LABEL_110;
      }

      *a1 = v44 + 1;
      if (!v56)
      {
        goto LABEL_110;
      }
    }

LABEL_111:
    return v10;
  }

  if (v6 != 78)
  {
    goto LABEL_9;
  }

  v7 = v5 + 1;
  *a1 = v5 + 1;
  if (v5 + 1 == v4)
  {
    goto LABEL_25;
  }

  v8 = *v7;
  if (v8 == 72)
  {
    v7 = v5 + 2;
    *a1 = v5 + 2;
    if (a2)
    {
      v19 = 1;
      v20 = 24;
LABEL_45:
      a2[v20] = v19;
      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (v8 != 114)
  {
LABEL_25:
    v9 = 0;
    if (v7 == v4)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (*v7 == 86)
    {
      *a1 = ++v7;
      v9 |= 2u;
    }

    goto LABEL_28;
  }

  v7 = v5 + 2;
  *a1 = v5 + 2;
  v9 = 4;
  if (v7 != v4)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v7 != v4 && *v7 == 75)
  {
    *a1 = ++v7;
    v9 |= 1u;
  }

  if (a2)
  {
    *(a2 + 1) = v9;
  }

  if (v7 == v4)
  {
    goto LABEL_38;
  }

  v18 = *v7;
  if (v18 == 82)
  {
    *a1 = ++v7;
    if (a2)
    {
      v19 = 1;
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  if (v18 != 79)
  {
LABEL_38:
    if (a2)
    {
      v19 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    *a1 = ++v7;
    if (a2)
    {
      v19 = 2;
LABEL_44:
      v20 = 8;
      goto LABEL_45;
    }
  }

LABEL_46:
  v10 = 0;
  v21 = a1 + 40;
  while (v7 == v4 || *v7 != 69)
  {
    if (v2)
    {
      v2[1] = 0;
    }

    v22 = 0;
    v23 = v4 - v7;
    if (!v23)
    {
      goto LABEL_83;
    }

    v24 = *v7;
    if (v24 > 0x52)
    {
      if (v24 != 83)
      {
        if (v24 != 84)
        {
          goto LABEL_83;
        }

        if (v10)
        {
          return 0;
        }

        goto LABEL_84;
      }

      if (v23 >= 2 && v7[1] == 116)
      {
        *a1 = v7 + 2;
        v31 = a1[613];
        v32 = v31[1];
        if ((v32 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v31 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v31)
          {
            goto LABEL_128;
          }

          v32 = 0;
          *v31 = a1[613];
          v31[1] = 0;
          a1[613] = v31;
        }

        v31[1] = v32 + 32;
        v33 = v31 + v32;
        v22 = (v33 + 16);
        v33[24] = 8;
        *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
        *(v33 + 2) = &unk_1F1A366B8;
        *(v33 + 4) = "std";
        *(v33 + 5) = 3;
      }

      else
      {
        if (!v34)
        {
          return 0;
        }

        v22 = v34;
        if (v34[8] == 27)
        {
          goto LABEL_83;
        }
      }

      if (v10)
      {
        return 0;
      }

      v7 = *a1;
      v4 = a1[1];
      v10 = v22;
    }

    else
    {
      if (v24 != 68)
      {
        if (v24 == 73)
        {
          if (!v10)
          {
            return v10;
          }

          if (!v25 || v10[8] == 45)
          {
            return 0;
          }

          v26 = v25;
          if (v2)
          {
            v2[1] = 1;
          }

          v27 = a1[613];
          v28 = v27[1];
          if ((v28 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v27 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v27)
            {
              goto LABEL_128;
            }

            v28 = 0;
            *v27 = a1[613];
            v27[1] = 0;
            a1[613] = v27;
          }

          v27[1] = v28 + 32;
          v29 = v27 + v28;
          v29[24] = 45;
          *(v29 + 25) = *(v29 + 25) & 0xF000 | 0x540;
          *(v29 + 2) = &unk_1F1A383C8;
          *(v29 + 4) = v10;
          *(v29 + 5) = v26;
          v10 = v29 + 16;
          goto LABEL_85;
        }

        goto LABEL_83;
      }

      if (v23 < 2 || (v7[1] | 0x20) != 0x74)
      {
        v22 = 0;
LABEL_83:
        goto LABEL_84;
      }

      if (v10)
      {
        return 0;
      }

LABEL_84:
      v10 = v30;
      if (!v30)
      {
        return v10;
      }

LABEL_85:
      v35 = a1[38];
      if (v35 == a1[39])
      {
        v37 = a1[37];
        v38 = v35 - v37;
        if (v37 == v21)
        {
          v39 = malloc_type_malloc(2 * (v35 - v37), 0x2004093837F09uLL);
          if (!v39)
          {
            goto LABEL_127;
          }

          a2 = a1[37];
          v40 = a1[38];
          if (v40 != a2)
          {
            v41 = v39;
            memmove(v39, a2, v40 - a2);
            v39 = v41;
          }

          a1[37] = v39;
        }

        else
        {
          v39 = malloc_type_realloc(v37, 2 * (v35 - v37), 0x2004093837F09uLL);
          a1[37] = v39;
          if (!v39)
          {
            goto LABEL_127;
          }
        }

        a1[39] = &v39[8 * (v38 >> 2)];
        *&v39[v38] = v10;
        a1[38] = &v39[v38 + 8];
        v7 = *a1;
        v36 = a1[1];
        v4 = *a1;
        if (*a1 != v36)
        {
LABEL_96:
          v4 = v36;
          if (*v7 == 77)
          {
            *a1 = ++v7;
            v4 = v36;
          }
        }
      }

      else
      {
        *v35 = v10;
        a1[38] = v35 + 8;
        v7 = *a1;
        v36 = a1[1];
        v4 = *a1;
        if (*a1 != v36)
        {
          goto LABEL_96;
        }
      }
    }
  }

  *a1 = v7 + 1;
  if (v10)
  {
    v42 = a1[38];
    if (a1[37] != v42)
    {
      a1[38] = v42 - 8;
      return v10;
    }

    return 0;
  }

  return v10;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateArg(const void **a1, size_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  if (v4 == *a1)
  {
    v6 = 2147483611;
LABEL_12:
    if (v6 != 5)
    {
      if (v6 == 7)
      {
        *a1 = v3 + 1;
        {
          v8 = *a1;
          if (*a1 != a1[1] && *v8 == 69)
          {
            goto LABEL_17;
          }
        }

        return;
      }

LABEL_54:

      return;
    }

    if (v4 == v3 || *v3 != 84)
    {
      goto LABEL_54;
    }

    v20 = v5 < 2 ? 0 : v3[1];
    v28 = memchr("yptnk", v20, 5uLL);
    if (!v28 || v28 - "yptnk" == -1)
    {
      goto LABEL_54;
    }

    if (!v29)
    {
      return;
    }

    v21 = v29;
    if (!v31)
    {
      return;
    }

    v23 = v31;
    v32 = a1[613];
    v33 = v32[1];
    if ((v33 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v32)
      {
        goto LABEL_58;
      }

      v33 = 0;
      *v32 = a1[613];
      v32[1] = 0;
      a1[613] = v32;
    }

    v32[1] = v33 + 32;
    v26 = v32 + v33;
    v26[24] = 34;
    *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
    v27 = &unk_1F1A384B8;
    goto LABEL_44;
  }

  HIDWORD(v7) = *v3 - 74;
  LODWORD(v7) = HIDWORD(v7);
  v6 = v7 >> 1;
  if (v6 > 4)
  {
    goto LABEL_12;
  }

  if (!v6)
  {
    v9 = v3 + 1;
    *a1 = v9;
    v10 = (a1[3] - a1[2]) >> 3;
    v11 = a1 + 5;
    while (v9 == v4 || *v9 != 69)
    {
      if (!v14)
      {
        return;
      }

      v13 = a1[3];
      if (v13 == a1[4])
      {
        v15 = v14;
        v16 = a1[2];
        v17 = v13 - v16;
        if (v16 == v11)
        {
          v12 = malloc_type_malloc(2 * (v13 - v16), 0x2004093837F09uLL);
          if (!v12)
          {
LABEL_57:
            abort();
          }

          a2 = a1[2];
          v18 = a1[3];
          if (v18 != a2)
          {
            v19 = v12;
            memmove(v12, a2, v18 - a2);
            v12 = v19;
          }

          a1[2] = v12;
        }

        else
        {
          v12 = malloc_type_realloc(v16, 2 * (v13 - v16), 0x2004093837F09uLL);
          a1[2] = v12;
          if (!v12)
          {
            goto LABEL_57;
          }
        }

        v13 = &v12[v17];
        a1[4] = &v12[8 * (v17 >> 2)];
        v14 = v15;
      }

      *v13 = v14;
      a1[3] = v13 + 1;
      v9 = *a1;
      v4 = a1[1];
    }

    *a1 = v9 + 1;
    v23 = v22;
    v24 = a1[613];
    v25 = v24[1];
    if ((v25 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
      goto LABEL_43;
    }

    v24 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v24)
    {
      v25 = 0;
      *v24 = a1[613];
      v24[1] = 0;
      a1[613] = v24;
LABEL_43:
      v24[1] = v25 + 32;
      v26 = v24 + v25;
      v26[24] = 41;
      *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
      v27 = &unk_1F1A38440;
LABEL_44:
      *(v26 + 2) = v27;
      *(v26 + 4) = v21;
      *(v26 + 5) = v23;
      return;
    }

LABEL_58:
    std::terminate();
  }

  if (v6 != 1)
  {
    goto LABEL_54;
  }

  if (v5 >= 2 && v3[1] == 90)
  {
    *a1 = v3 + 2;
    {
      return;
    }

    v8 = *a1;
    if (*a1 == a1[1] || *v8 != 69)
    {
      return;
    }

LABEL_17:
    *a1 = v8 + 1;
    return;
  }
}

void **llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back(void **result, void *size)
{
  v2 = result;
  v3 = result[1];
  if (v3 == result[2])
  {
    v4 = size;
    v5 = *result;
    v6 = v3 - *v2;
    if (*v2 == v2 + 3)
    {
      result = malloc_type_malloc(2 * v6, 0x2004093837F09uLL);
      if (!result)
      {
        goto LABEL_11;
      }

      v7 = v2[1];
      if (v7 != *v2)
      {
        v8 = result;
        memmove(result, *v2, v7 - *v2);
        result = v8;
      }

      *v2 = result;
    }

    else
    {
      result = malloc_type_realloc(v5, 2 * v6, 0x2004093837F09uLL);
      *v2 = result;
      if (!result)
      {
LABEL_11:
        abort();
      }
    }

    v3 = result + v6;
    v2[2] = &result[v6 >> 2];
    size = v4;
  }

  *v3 = *size;
  v2[1] = v3 + 8;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::EnableIfAttr,llvm::itanium_demangle::NodeArray>(uint64_t a1, __n128 *a2)
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
  v6[24] = 10;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A38530;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 2) = result;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::popTrailingNodeArray(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = (a1[2] + 8 * a2);
  v6 = (v4 - v5 + 15) & 0xFFFFFFF0;
  v7 = a1[613];
  v8 = v7[1];
  if (v6 + v8 >= 0xFF0)
  {
    if (v6 >= 0xFF1)
    {
      v9 = malloc_type_malloc(v6 + 16, 0x1020040EDED9539uLL);
      if (v9)
      {
        v10 = a1[613];
        *v9 = *v10;
        v9[1] = 0;
        *v10 = v9;
        v11 = (v9 + 2);
        if (v4 == v5)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

LABEL_11:
      std::terminate();
    }

    v7 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = 0;
    *v7 = a1[613];
    v7[1] = 0;
    a1[613] = v7;
  }

  v7[1] = v8 + v6;
  v11 = v7 + v8 + 16;
  if (v4 != v5)
  {
LABEL_9:
    memmove(v11, v5, v4 - v5);
  }

LABEL_10:
  a1[3] = a1[2] + 8 * a2;
  return v11;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ExplicitObjectParameter,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
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
  v6[24] = 87;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A385A8;
  *(v6 + 4) = v8;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::FunctionEncoding,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Qualifiers &,llvm::itanium_demangle::FunctionRefQual &>(uint64_t a1, uint64_t *a2, uint64_t *a3, __n128 *a4, uint64_t *a5, uint64_t *a6, int *a7, char *a8)
{
  v16 = *(a1 + 4904);
  v17 = v16[1];
  if ((v17 - 4000) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v16 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v16)
    {
      std::terminate();
    }

    v17 = 0;
    *v16 = *(a1 + 4904);
    v16[1] = 0;
    *(a1 + 4904) = v16;
  }

  v16[1] = v17 + 80;
  v18 = v16 + v17;
  v19 = *a2;
  v20 = *a3;
  v21 = *a5;
  v22 = *a6;
  v23 = *a7;
  v24 = *a8;
  v18[24] = 19;
  v25 = *(v18 + 25) & 0xF000 | 0x100;
  *(v18 + 2) = &unk_1F1A38620;
  *(v18 + 4) = v19;
  *(v18 + 5) = v20;
  result = *a4;
  *(v18 + 25) = v25;
  *(v18 + 3) = result;
  *(v18 + 8) = v21;
  *(v18 + 9) = v22;
  *(v18 + 20) = v23;
  v18[84] = v24;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::SaveTemplateParams::~SaveTemplateParams(char *a1)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  v4 = a1 + 32;
  v5 = *(*a1 + 664);
  v6 = (v3 + 688);
  if (v2 != v4)
  {
    *(v3 + 664) = v2;
    if (v5 == v6)
    {
      *(v3 + 672) = *(a1 + 1);
      *(a1 + 1) = v4;
      *(a1 + 2) = v4;
      *(a1 + 3) = a1 + 64;
      v9 = *(a1 + 8);
      v10 = a1 + 88;
      v11 = *(v3 + 576);
      v12 = v3 + 600;
      if (v9 == a1 + 88)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 1) = v5;
      v7 = *(v3 + 672);
      *(v3 + 672) = *(a1 + 2);
      *(a1 + 2) = v7;
      v8 = *(v3 + 680);
      *(v3 + 680) = *(a1 + 3);
      *(a1 + 2) = *(a1 + 1);
      *(a1 + 3) = v8;
      v9 = *(a1 + 8);
      v10 = a1 + 88;
      v11 = *(v3 + 576);
      v12 = v3 + 600;
      if (v9 == a1 + 88)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    *(v3 + 576) = v9;
    if (v11 == v12)
    {
      *(v3 + 584) = *(a1 + 72);
      *(a1 + 8) = v10;
      *(a1 + 9) = v10;
      *(a1 + 10) = a1 + 152;
      goto LABEL_23;
    }

    *(a1 + 8) = v11;
    v17 = *(v3 + 584);
    *(v3 + 584) = *(a1 + 9);
    *(a1 + 9) = v17;
    v18 = *(v3 + 592);
    *(v3 + 592) = *(a1 + 10);
    v9 = *(a1 + 8);
    *(a1 + 9) = v9;
    *(a1 + 10) = v18;
    if (v9 != v10)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v5 != v6)
  {
    free(v5);
    *(v3 + 664) = v6;
    *(v3 + 672) = v6;
    *(v3 + 680) = v3 + 720;
    v2 = *(a1 + 1);
    v5 = (v3 + 688);
  }

  v13 = *(a1 + 2);
  if (v13 == v2)
  {
    v14 = v2;
  }

  else
  {
    memmove(v5, v2, v13 - v2);
    v5 = *(v3 + 664);
    v2 = *(a1 + 1);
    v14 = *(a1 + 2);
  }

  *(v3 + 672) = &v5[v14 - v2];
  *(a1 + 2) = v2;
  v3 = *a1;
  v9 = *(a1 + 8);
  v10 = a1 + 88;
  v11 = *(*a1 + 576);
  v12 = *a1 + 600;
  if (v9 != a1 + 88)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v11 != v12)
  {
    free(v11);
    *(v3 + 576) = v12;
    *(v3 + 584) = v12;
    *(v3 + 592) = v3 + 664;
    v9 = *(a1 + 8);
    v11 = v12;
  }

  v15 = *(a1 + 9);
  if (v15 == v9)
  {
    v16 = v9;
  }

  else
  {
    memmove(v11, v9, v15 - v9);
    v11 = *(v3 + 576);
    v9 = *(a1 + 8);
    v16 = *(a1 + 9);
  }

  *(v3 + 584) = &v11[v16 - v9];
  *(a1 + 9) = v9;
  if (v9 != v10)
  {
LABEL_22:
    free(v9);
  }

LABEL_23:
  v19 = *(a1 + 1);
  if (v19 != v4)
  {
    free(v19);
  }

  return a1;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[31],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A365B8;
  *(v6 + 4) = "template parameter object for ";
  *(v6 + 5) = 30;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[12],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A365B8;
  *(v6 + 4) = "vtable for ";
  *(v6 + 5) = 11;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[9],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A365B8;
  *(v6 + 4) = "VTT for ";
  *(v6 + 5) = 8;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[14],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A365B8;
  *(v6 + 4) = "typeinfo for ";
  *(v6 + 5) = 13;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[19],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A365B8;
  *(v6 + 4) = "typeinfo name for ";
  *(v6 + 5) = 18;
  *(v6 + 6) = v8;
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseCallOffset(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = *v1;
    if (v3 == 118)
    {
      v10 = v1 + 1;
      *a1 = v1 + 1;
      if (v1 + 1 == v2)
      {
        return 1;
      }

      v11 = v1 + 1;
      if (*v10 == 110)
      {
        v11 = v1 + 2;
        *a1 = v1 + 2;
      }

      if (v2 == v11)
      {
        return 1;
      }

      v12 = *v11;
      if (v12 < 0)
      {
        return 1;
      }

      v13 = MEMORY[0x1E69E9830];
      if ((*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v14 = *v11;
        if (v14 < 0 || (*(v13 + 4 * v14 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v11;
        if (v11 == v2)
        {
          v15 = v2;
          goto LABEL_30;
        }
      }

      v15 = v11;
LABEL_30:
      if (v15 == v10)
      {
        return 1;
      }

      if (v11 == v2)
      {
        return 1;
      }

      if (*v11 != 95)
      {
        return 1;
      }

      v17 = v11 + 1;
      *a1 = v11 + 1;
      if (v11 + 1 == v2)
      {
        return 1;
      }

      v5 = v11 + 1;
      if (*v17 == 110)
      {
        v5 = v11 + 2;
        *a1 = v11 + 2;
      }

      if (v2 == v5)
      {
        return 1;
      }

      v18 = *v5;
      if (v18 < 0 || (*(v13 + 4 * v18 + 60) & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v19 = *v5;
        if (v19 < 0 || (*(v13 + 4 * v19 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v5;
        if (v5 == v2)
        {
          v20 = v2;
          goto LABEL_45;
        }
      }

      v20 = v5;
LABEL_45:
      if (v20 == v17)
      {
        return 1;
      }
    }

    else
    {
      if (v3 != 104)
      {
        return 1;
      }

      v4 = v1 + 1;
      *a1 = v1 + 1;
      if (v1 + 1 == v2)
      {
        return 1;
      }

      v5 = v1 + 1;
      if (*v4 == 110)
      {
        v5 = v1 + 2;
        *a1 = v1 + 2;
      }

      if (v2 == v5)
      {
        return 1;
      }

      v6 = *v5;
      if (v6 < 0)
      {
        return 1;
      }

      v7 = MEMORY[0x1E69E9830];
      if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v8 = *v5;
        if (v8 < 0 || (*(v7 + 4 * v8 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v5;
        if (v5 == v2)
        {
          v9 = v2;
          goto LABEL_25;
        }
      }

      v9 = v5;
LABEL_25:
      if (v9 == v4)
      {
        return 1;
      }
    }

    if (v5 != v2 && *v5 == 95)
    {
      *a1 = v5 + 1;
      return 0;
    }
  }

  return 1;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[27],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A365B8;
  *(v6 + 4) = "covariant return thunk to ";
  *(v6 + 5) = 26;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::CtorVtableSpecialName,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
  v8[24] = 22;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = &unk_1F1A36640;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[41],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A365B8;
  *(v6 + 4) = "thread-local initialization routine for ";
  *(v6 + 5) = 40;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[18],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A365B8;
  *(v6 + 4) = "virtual thunk to ";
  *(v6 + 5) = 17;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[22],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A365B8;
  *(v6 + 4) = "non-virtual thunk to ";
  *(v6 + 5) = 21;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[25],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A365B8;
  *(v6 + 4) = "reference temporary for ";
  *(v6 + 5) = 24;
  *(v6 + 6) = v8;
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseModuleNameOpt(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v6 = (a1 + 320);
    while (*v2 == 87)
    {
      *a1 = v2 + 1;
      if (v2 + 1 == v3 || v2[1] != 80)
      {
        v12 = 0;
        if (!v13)
        {
          return 1;
        }
      }

      else
      {
        *a1 = v2 + 2;
        v12 = 1;
        if (!v13)
        {
          return 1;
        }
      }

      v14 = v13;
      v15 = *(a1 + 4904);
      v7 = v15[1];
      if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v15 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v15)
        {
          std::terminate();
        }

        v7 = 0;
        *v15 = *(a1 + 4904);
        v15[1] = 0;
        *(a1 + 4904) = v15;
      }

      v15[1] = v7 + 48;
      v8 = v15 + v7;
      v9 = v8 + 16;
      v10 = *a2;
      v8[24] = 27;
      *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
      *(v8 + 2) = &unk_1F1A36730;
      *(v8 + 4) = v10;
      *(v8 + 5) = v14;
      v8[48] = v12;
      *a2 = (v8 + 16);
      v11 = *(a1 + 304);
      if (v11 == *(a1 + 312))
      {
        v16 = *(a1 + 296);
        v17 = v11 - v16;
        if (v16 == v6)
        {
          v18 = malloc_type_malloc(2 * (v11 - v16), 0x2004093837F09uLL);
          if (!v18)
          {
LABEL_25:
            abort();
          }

          v19 = *(a1 + 296);
          v20 = *(a1 + 304);
          if (v20 != v19)
          {
            v21 = v18;
            memmove(v18, v19, v20 - v19);
            v18 = v21;
          }

          *(a1 + 296) = v18;
        }

        else
        {
          v18 = malloc_type_realloc(v16, 2 * (v11 - v16), 0x2004093837F09uLL);
          *(a1 + 296) = v18;
          if (!v18)
          {
            goto LABEL_25;
          }
        }

        *(a1 + 312) = &v18[8 * (v17 >> 2)];
        *&v18[v17] = v9;
        *(a1 + 304) = &v18[v17 + 8];
        v2 = *a1;
        v3 = *(a1 + 8);
        if (*a1 == v3)
        {
          return 0;
        }
      }

      else
      {
        *v11 = v9;
        *(a1 + 304) = v11 + 8;
        v2 = *a1;
        v3 = *(a1 + 8);
        if (*a1 == v3)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t llvm::itanium_demangle::SpecialName::printLeft(void *a1, char **a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[2];
    v6 = *a2;
    v7 = a2[1];
    v8 = &v7[v4];
    v9 = a2[2];
    if (&v7[v4] > v9)
    {
      if (2 * v9 <= (v8 + 992))
      {
        v10 = v8 + 992;
      }

      else
      {
        v10 = (2 * v9);
      }

      a2[2] = v10;
      v6 = malloc_type_realloc(v6, v10, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    memcpy(&v7[v6], v5, v4);
    a2[1] += v4;
  }

  v11 = a1[4];
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::CtorVtableSpecialName::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 24) > v6)
  {
    v7 = v5 + 1016;
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
      goto LABEL_19;
    }

    v5 = a2[1];
  }

  qmemcpy(&v5[v4], "construction vtable for ", 24);
  a2[1] += 24;
  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 4) > v13)
  {
    v14 = v12 + 996;
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
    if (v11)
    {
      v12 = a2[1];
      goto LABEL_15;
    }

LABEL_19:
    abort();
  }

LABEL_15:
  *&v12[v11] = 762210605;
  a2[1] += 4;
  v17 = *(a1 + 24);
  result = (*(*v17 + 32))(v17, a2);
  if ((*(v17 + 9) & 0xC0) != 0x40)
  {
    v19 = *(*v17 + 40);

    return v19(v17, a2);
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSourceName(unsigned __int8 **a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 == *a1 || *v2 - 58 < 0xFFFFFFF6)
  {
    return 0;
  }

  v3 = 0;
  v4 = (v2 + 1);
  v5 = v2 + 1;
  do
  {
    v6 = v3;
    v7 = v5;
    v8 = v4;
    *a1 = v5;
    v9 = *(v5 - 1);
    v3 = v9 + 10 * v3 - 48;
    if (v5 == v1)
    {
      break;
    }

    ++v5;
    ++v4;
  }

  while (*v7 - 48 <= 9);
  if (v3 - 1 >= v1 - v8)
  {
    return 0;
  }

  *a1 = &v7[10 * v6 - 48 + v9];
  if (v3 >= 0xA)
  {
    v10 = *v7;
    v11 = *(v7 + 4);
    if (v10 == 0x5F4C41424F4C475FLL && v11 == 20063)
    {
      v13 = a1[613];
      v14 = *(v13 + 1);
      if ((v14 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v19 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v19)
        {
          goto LABEL_21;
        }

        v13 = v19;
        v14 = 0;
        *v19 = a1[613];
        *(v19 + 1) = 0;
        a1[613] = v19;
      }

      v8 = "(anonymous namespace)";
      v3 = 21;
      goto LABEL_20;
    }
  }

  v13 = a1[613];
  v14 = *(v13 + 1);
  if ((v14 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v16 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v16)
    {
      v13 = v16;
      v14 = 0;
      *v16 = a1[613];
      *(v16 + 1) = 0;
      a1[613] = v16;
      goto LABEL_20;
    }

LABEL_21:
    std::terminate();
  }

LABEL_20:
  *(v13 + 1) = v14 + 32;
  v20 = &v13[v14];
  result = (v20 + 16);
  v20[24] = 8;
  *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
  *(v20 + 2) = &unk_1F1A366B8;
  *(v20 + 4) = v8;
  *(v20 + 5) = v3;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NameType,std::string_view &>(uint64_t a1, __n128 *a2)
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
  v6[24] = 8;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A366B8;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 2) = result;
  return result;
}

void *llvm::itanium_demangle::NameType::printLeft(void *result, char **a2)
{
  v2 = result[3];
  if (v2)
  {
    v4 = result[2];
    v5 = *a2;
    v6 = a2[1];
    v7 = &v6[v2];
    v8 = a2[2];
    if (&v6[v2] > v8)
    {
      if (2 * v8 <= (v7 + 992))
      {
        v9 = v7 + 992;
      }

      else
      {
        v9 = (2 * v8);
      }

      a2[2] = v9;
      v5 = malloc_type_realloc(v5, v9, 0x100004077774924uLL);
      *a2 = v5;
      if (!v5)
      {
        abort();
      }

      v6 = a2[1];
    }

    result = memcpy(&v6[v5], v4, v2);
    a2[1] += v2;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ModuleName::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    (*(*v4 + 32))(*(a1 + 16), a2);
    if ((*(v4 + 9) & 0xC0) != 0x40)
    {
      (*(*v4 + 40))(v4, a2);
    }

    if (*(a1 + 16))
    {
      if (*(a1 + 32))
      {
        v5 = 58;
      }

      else
      {
        v5 = 46;
      }

      v6 = *a2;
      v7 = *(a2 + 8);
      v8 = v7 + 1;
      v9 = *(a2 + 16);
      if (v7 + 1 <= v9)
      {
        goto LABEL_17;
      }

LABEL_12:
      v10 = v7 + 993;
      if (2 * v9 <= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 2 * v9;
      }

      *(a2 + 16) = v11;
      v6 = malloc_type_realloc(v6, v11, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = *(a2 + 8);
      v8 = v7 + 1;
      goto LABEL_17;
    }
  }

  if (*(a1 + 32) != 1)
  {
    goto LABEL_18;
  }

  v5 = 58;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = v7 + 1;
  v9 = *(a2 + 16);
  if (v7 + 1 > v9)
  {
    goto LABEL_12;
  }

LABEL_17:
  *(a2 + 8) = v8;
  *(v6 + v7) = v5;
LABEL_18:
  v12 = *(a1 + 24);
  result = (*(*v12 + 32))(v12, a2);
  if ((*(v12 + 9) & 0xC0) != 0x40)
  {
    v14 = *(*v12 + 40);

    return v14(v12, a2);
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnscopedName(void *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4 - *a1 >= 2 && *v3 == 29779)
  {
    *a1 = v3 + 1;
    v12 = a1[613];
    v13 = v12[1];
    if ((v13 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v14 = a3;
      v15 = a1;
      v16 = a2;
      v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v17)
      {
        std::terminate();
      }

      v12 = v17;
      v13 = 0;
      a1 = v15;
      *v12 = v15[613];
      v12[1] = 0;
      v15[613] = v12;
      a2 = v16;
      a3 = v14;
    }

    v12[1] = v13 + 32;
    v18 = v12 + v13;
    v5 = v18 + 16;
    v18[24] = 8;
    *(v18 + 25) = *(v18 + 25) & 0xF000 | 0x540;
    *(v18 + 2) = &unk_1F1A366B8;
    *(v18 + 4) = "std";
    *(v18 + 5) = 3;
    v3 = *a1;
    if (a1[1] == *a1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    if (v4 == v3)
    {
      goto LABEL_14;
    }
  }

  if (*v3 != 83)
  {
LABEL_14:
    v10 = 0;
    v11 = v5;
  }

  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (result)
  {
    v10 = result;
    if (result[8] == 27)
    {
      a2 = v7;
      a1 = v8;
      v11 = v5;
    }

    result = 0;
    if (v6 && !v5)
    {
      *v6 = 1;
      return v10;
    }
  }

  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateArgs(uint64_t a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1 == *(a1 + 8) || *v2 != 73)
  {
    return;
  }

  v4 = v2 + 1;
  *a1 = v4;
  if (a2)
  {
    v5 = *(a1 + 664);
    *(a1 + 672) = v5;
    if (v5 == *(a1 + 680))
    {
      if (v5 == (a1 + 688))
      {
        v5 = malloc_type_malloc(0, 0x2004093837F09uLL);
        if (!v5)
        {
          goto LABEL_87;
        }

        a2 = *(a1 + 664);
        v19 = *(a1 + 672);
        if (v19 != a2)
        {
          v20 = v5;
          memmove(v5, a2, v19 - a2);
          v5 = v20;
        }

        *(a1 + 664) = v5;
      }

      else
      {
        v5 = malloc_type_realloc(v5, 0, 0x2004093837F09uLL);
        *(a1 + 664) = v5;
        if (!v5)
        {
LABEL_87:
          abort();
        }
      }

      *(a1 + 680) = v5;
    }

    v21 = (a1 + 576);
    *v5 = a1 + 576;
    *(a1 + 672) = v5 + 1;
    *(a1 + 584) = *(a1 + 576);
    v57 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    v9 = a1 + 4904;
    v4 = *a1;
    v22 = *(a1 + 8);
    while (1)
    {
      if (v4 != v22 && *v4 == 69)
      {
        v18 = 0;
        v7 = v57;
        goto LABEL_82;
      }

      if (!v23)
      {
        return;
      }

      v24 = v23;
      v25 = *(a1 + 24);
      if (v25 == *(a1 + 32))
      {
        v40 = *(a1 + 16);
        v41 = v25 - v40;
        if (v40 == (a1 + 40))
        {
          v42 = malloc_type_malloc(2 * (v25 - v40), 0x2004093837F09uLL);
          if (!v42)
          {
            goto LABEL_87;
          }

          a2 = *(a1 + 16);
          v43 = *(a1 + 24);
          if (v43 != a2)
          {
            v44 = v42;
            memmove(v42, a2, v43 - a2);
            v42 = v44;
          }

          *(a1 + 16) = v42;
        }

        else
        {
          v42 = malloc_type_realloc(v40, 2 * (v25 - v40), 0x2004093837F09uLL);
          *(a1 + 16) = v42;
          if (!v42)
          {
            goto LABEL_87;
          }
        }

        *(a1 + 32) = &v42[8 * (v41 >> 2)];
        *&v42[v41] = v24;
        *(a1 + 24) = &v42[v41 + 8];
        v26 = *(v24 + 8);
        if (v26 == 34)
        {
          goto LABEL_67;
        }

LABEL_38:
        if (v26 == 41)
        {
          v28 = *(v24 + 16);
          v27 = *(v24 + 24);
          v29 = *v9;
          v30 = *(*v9 + 8);
          if ((v30 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v29 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v29)
            {
              goto LABEL_88;
            }

            v30 = 0;
            *v29 = *v9;
            v29[1] = 0;
            *v9 = v29;
          }

          v29[1] = v30 + 32;
          v31 = v29 + v30;
          v24 = v29 + v30 + 16;
          v31[24] = 40;
          v32 = *(v29 + v30 + 25) & 0xF000;
          *(v31 + 2) = &unk_1F1A382D8;
          *(v31 + 4) = v28;
          *(v31 + 5) = v27;
          v33 = v32 | 0xA80;
          *(v31 + 25) = v32 | 0xA80;
          v34 = 8 * v27;
          if (v27)
          {
            v35 = 8 * v27;
            v36 = v28;
            while ((*(*v36 + 9) & 0x300) == 0x100)
            {
              v36 += 8;
              v35 -= 8;
              if (!v35)
              {
                goto LABEL_46;
              }
            }
          }

          else
          {
LABEL_46:
            v33 = v32 | 0x980;
            *(v24 + 9) = v32 | 0x980;
          }

          if (v27)
          {
            v37 = 8 * v27;
            v38 = v28;
            while ((*(*v38 + 9) & 0xC00) == 0x400)
            {
              v38 += 8;
              v37 -= 8;
              if (!v37)
              {
                goto LABEL_51;
              }
            }
          }

          else
          {
LABEL_51:
            v33 = v33 & 0xF3FF | 0x400;
            *(v24 + 9) = v33;
          }

          if (v27)
          {
            while ((*(*v28 + 9) & 0xC0) == 0x40)
            {
              v28 += 8;
              v34 -= 8;
              if (!v34)
              {
                goto LABEL_55;
              }
            }
          }

          else
          {
LABEL_55:
            *(v24 + 9) = v33 & 0xFF3F | 0x40;
          }
        }

        v39 = *(a1 + 584);
        if (v39 != *(a1 + 592))
        {
          goto LABEL_57;
        }

LABEL_68:
        v45 = v39 - *v21;
        if (*v21 == (a1 + 600))
        {
          v46 = malloc_type_malloc(2 * v45, 0x2004093837F09uLL);
          if (!v46)
          {
            goto LABEL_87;
          }

          a2 = *(a1 + 576);
          v47 = *(a1 + 584);
          if (v47 != a2)
          {
            v48 = v46;
            memmove(v46, a2, v47 - a2);
            v46 = v48;
          }

          *v21 = v46;
        }

        else
        {
          v46 = malloc_type_realloc(*v21, 2 * v45, 0x2004093837F09uLL);
          *v21 = v46;
          if (!v46)
          {
            goto LABEL_87;
          }
        }

        *(a1 + 592) = &v46[8 * (v45 >> 2)];
        *&v46[v45] = v24;
        *(a1 + 584) = &v46[v45 + 8];
        v4 = *a1;
        v22 = *(a1 + 8);
        if (*a1 != v22)
        {
          goto LABEL_32;
        }
      }

      else
      {
        *v25 = v23;
        *(a1 + 24) = v25 + 8;
        v26 = *(v23 + 8);
        if (v26 != 34)
        {
          goto LABEL_38;
        }

LABEL_67:
        v24 = *(v24 + 24);
        v39 = *(a1 + 584);
        if (v39 == *(a1 + 592))
        {
          goto LABEL_68;
        }

LABEL_57:
        *v39 = v24;
        *(a1 + 584) = v39 + 1;
        v4 = *a1;
        v22 = *(a1 + 8);
        if (*a1 != v22)
        {
LABEL_32:
          if (*v4 == 81)
          {
            v7 = v57;
            goto LABEL_79;
          }
        }
      }
    }
  }

  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  v8 = (a1 + 40);
  v9 = a1 + 4904;
  do
  {
    do
    {
      while (1)
      {
        if (v4 != v6 && *v4 == 69)
        {
          v18 = 0;
          goto LABEL_82;
        }

        if (!v10)
        {
          return;
        }

        v11 = *(a1 + 24);
        if (v11 == *(a1 + 32))
        {
          break;
        }

        *v11 = v10;
        *(a1 + 24) = v11 + 8;
        v4 = *a1;
        v6 = *(a1 + 8);
        if (*a1 != v6)
        {
          goto LABEL_9;
        }
      }

      v12 = v10;
      v13 = *(a1 + 16);
      v14 = v11 - v13;
      if (v13 == v8)
      {
        v15 = malloc_type_malloc(2 * (v11 - v13), 0x2004093837F09uLL);
        if (!v15)
        {
          goto LABEL_87;
        }

        a2 = *(a1 + 16);
        v16 = *(a1 + 24);
        if (v16 != a2)
        {
          v17 = v15;
          memmove(v15, a2, v16 - a2);
          v15 = v17;
        }

        *(a1 + 16) = v15;
      }

      else
      {
        v15 = malloc_type_realloc(v13, 2 * (v11 - v13), 0x2004093837F09uLL);
        *(a1 + 16) = v15;
        if (!v15)
        {
          goto LABEL_87;
        }
      }

      *(a1 + 32) = &v15[8 * (v14 >> 2)];
      *&v15[v14] = v12;
      *(a1 + 24) = &v15[v14 + 8];
      v4 = *a1;
      v6 = *(a1 + 8);
    }

    while (*a1 == v6);
LABEL_9:
    ;
  }

  while (*v4 != 81);
LABEL_79:
  *a1 = v4 + 1;
  v49 = *(a1 + 778);
  *(a1 + 778) = 1;
  *(a1 + 778) = v49;
  if (!v50)
  {
    return;
  }

  v4 = *a1;
  if (*a1 == *(a1 + 8))
  {
    return;
  }

  v18 = v50;
  if (*v4 != 69)
  {
    return;
  }

LABEL_82:
  *a1 = v4 + 1;
  v53 = v52;
  v54 = *(a1 + 4904);
  v55 = v54[1];
  if ((v55 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v54 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v54)
    {
LABEL_88:
      std::terminate();
    }

    v55 = 0;
    *v54 = *v9;
    v54[1] = 0;
    *v9 = v54;
  }

  v54[1] = v55 + 48;
  v56 = v54 + v55;
  v56[24] = 43;
  *(v56 + 25) = *(v56 + 25) & 0xF000 | 0x540;
  *(v56 + 2) = &unk_1F1A38350;
  *(v56 + 4) = v51;
  *(v56 + 5) = v53;
  *(v56 + 6) = v18;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NameWithTemplateArgs,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
  v8[24] = 45;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = &unk_1F1A383C8;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateParam(uint64_t a1, size_t size)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2 || *v3 != 84)
  {
    return 0;
  }

  v4 = v3 + 1;
  *a1 = v3 + 1;
  if (v3 + 1 == v2 || *v4 != 76)
  {
    v6 = 0;
    if (v4 == v2)
    {
      return 0;
    }
  }

  else
  {
    *a1 = v3 + 2;
    if (v2 == v3 + 2)
    {
      return 0;
    }

    if (v3[2] - 58 < 0xFFFFFFF6)
    {
      return 0;
    }

    v29 = 0;
    v30 = v3 + 4;
    do
    {
      v4 = v30;
      v31 = v30 - 1;
      *a1 = v30 - 1;
      v29 = *(v30 - 2) + 10 * v29 - 48;
      if (v30 - 1 == v2)
      {
        break;
      }

      v32 = *(v30++ - 1) - 48;
    }

    while (v32 <= 9);
    if (v31 == v2)
    {
      return 0;
    }

    if (*(v4 - 1) != 95)
    {
      return 0;
    }

    v6 = v29 + 1;
    *a1 = v4;
    if (v4 == v2)
    {
      return 0;
    }
  }

  v7 = *v4;
  if (v7 != 95)
  {
    if ((v7 - 58) >= 0xFFFFFFF6)
    {
      v14 = 0;
      v15 = v4 + 1;
      do
      {
        *a1 = v15;
        if (v15 == v2)
        {
          return 0;
        }

        v14 = *(v15 - 1) + 10 * v14 - 48;
        v17 = *v15++;
        v16 = v17;
      }

      while ((v17 - 48) <= 9);
      if (v16 == 95)
      {
        v8 = v14 + 1;
        v4 = v15 - 1;
        *a1 = v15;
        if (*(a1 + 778) == 1)
        {
          goto LABEL_11;
        }

        goto LABEL_21;
      }
    }

    return 0;
  }

  v8 = 0;
  *a1 = v4 + 1;
  if (*(a1 + 778) == 1)
  {
LABEL_11:
    v9 = *(a1 + 4904);
    v10 = v9[1];
    if ((v10 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
LABEL_14:
      v9[1] = v10 + 32;
      v13 = v9 + v10;
      v13[24] = 8;
      *(v13 + 25) = *(v13 + 25) & 0xF000 | 0x540;
      *(v13 + 2) = &unk_1F1A366B8;
      *(v13 + 4) = v3;
      *(v13 + 5) = v4 - v3;
      return v13 + 16;
    }

    v11 = a1;
    v12 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v12)
    {
      v9 = v12;
      v10 = 0;
      *v12 = *(v11 + 4904);
      v12[1] = 0;
      *(v11 + 4904) = v12;
      goto LABEL_14;
    }

LABEL_52:
    std::terminate();
  }

LABEL_21:
  if (*(a1 + 777) != 1 || v6)
  {
    v33 = *(a1 + 664);
    v34 = (*(a1 + 672) - v33) >> 3;
    if (v6 < v34 && (v35 = *(v33 + 8 * v6)) != 0 && (v37 = v35, v36 = *v35, v8 < (v37[1] - v36) >> 3))
    {
      return *(v36 + 8 * v8);
    }

    else
    {
      if (v6 > v34 || *(a1 + 784) != v6)
      {
        return 0;
      }

      if (v6 == v34)
      {
        v42 = 0;
        v38 = a1;
        llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 664), &v42);
        a1 = v38;
      }
    }
  }

  else
  {
    v18 = *(a1 + 4904);
    v19 = v18[1];
    if ((v19 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v20 = a1;
      v21 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v21)
      {
        goto LABEL_52;
      }

      v18 = v21;
      v19 = 0;
      a1 = v20;
      *v18 = *(v20 + 4904);
      v18[1] = 0;
      *(v20 + 4904) = v18;
    }

    v18[1] = v19 + 48;
    v22 = v18 + v19;
    v23 = v22 + 16;
    v22[24] = 44;
    *(v22 + 25) = *(v22 + 25) & 0xF000 | 0xA80;
    *(v22 + 2) = &unk_1F1A367A8;
    *(v22 + 4) = v8;
    *(v22 + 5) = 0;
    v22[48] = 0;
    v24 = *(a1 + 728);
    if (v24 == *(a1 + 736))
    {
      v25 = *(a1 + 720);
      v26 = &v24[-v25];
      v27 = a1;
      if (v25 == a1 + 744)
      {
        v39 = malloc_type_malloc(2 * v26, 0x2004093837F09uLL);
        if (!v39)
        {
          goto LABEL_53;
        }

        v28 = v39;
        a1 = v27;
        v40 = *(v27 + 720);
        v41 = *(v27 + 728);
        if (v41 != v40)
        {
          memmove(v28, v40, v41 - v40);
          a1 = v27;
        }

        *(a1 + 720) = v28;
      }

      else
      {
        v28 = malloc_type_realloc(*(a1 + 720), 2 * &v24[-v25], 0x2004093837F09uLL);
        a1 = v27;
        *(v27 + 720) = v28;
        if (!v28)
        {
LABEL_53:
          abort();
        }
      }

      v24 = &v28[v26];
      *(a1 + 736) = &v28[8 * (v26 >> 2)];
    }

    *v24 = v23;
    *(a1 + 728) = v24 + 8;
    return v23;
  }
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseDecltype(void *a1, size_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  if (*v2 != 68)
  {
    return 0;
  }

  *a1 = v2 + 1;
  if (v2 + 1 == v3 || (v2[1] | 0x20) != 0x74)
  {
    return 0;
  }

  *a1 = v2 + 2;
  if (!result)
  {
    return result;
  }

  v6 = *a1;
  if (*a1 == a1[1] || *v6 != 69)
  {
    return 0;
  }

  *a1 = v6 + 1;
  v7 = a1[613];
  v8 = v7[1];
  if ((v8 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v9 = result;
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v7 = v10;
    v8 = 0;
    *v10 = a1[613];
    v10[1] = 0;
    a1[613] = v10;
    result = v9;
  }

  v7[1] = v8 + 64;
  v11 = v7 + v8;
  v11[24] = 60;
  *(v11 + 25) = *(v11 + 25) & 0xF000 | 0x540;
  *(v11 + 2) = &unk_1F1A36D48;
  *(v11 + 4) = "decltype";
  *(v11 + 5) = 8;
  *(v11 + 7) = 0;
  *(v11 + 8) = 0;
  *(v11 + 6) = result;
  return v11 + 16;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSubstitution(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  if (*v2 != 83)
  {
    return 0;
  }

  v3 = v2 + 1;
  *a1 = v2 + 1;
  if (v1 == v2 + 1)
  {
    return 0;
  }

  v4 = *v3;
  if (*v3 < 97)
  {
    if (v4 == 95)
    {
      *a1 = v2 + 2;
      v7 = a1[37];
      if (v7 != a1[38])
      {
        return *v7;
      }
    }

    else if (v4 >= 48)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v4 > 0x7A)
  {
LABEL_16:
    if (v4 < 0x3A || v4 - 65 <= 0x19)
    {
      v9 = 0;
      while (*v3 >= 48)
      {
        if (*v3 < 0x3Au)
        {
          v10 = -48;
        }

        else
        {
          if (*v3 - 65 > 0x19)
          {
            break;
          }

          v10 = -55;
        }

        v9 = *v3++ + 36 * v9 + v10;
        *a1 = v3;
        if (v3 == v1)
        {
          break;
        }
      }

      if (v3 != v1 && *v3 == 95)
      {
        *a1 = v3 + 1;
        v11 = a1[37];
        if (v9 + 1 < ((a1[38] - v11) >> 3))
        {
          return *(v11 + 8 * (v9 + 1));
        }
      }
    }

    return 0;
  }

  if (*v3 > 0x68u)
  {
    switch(v4)
    {
      case 'i':
        v5 = 3;
        break;
      case 'o':
        v5 = 4;
        break;
      case 's':
        v5 = 2;
        break;
      default:
        return 0;
    }
  }

  else
  {
    switch(v4)
    {
      case 'a':
        v5 = 0;
        break;
      case 'b':
        v5 = 1;
        break;
      case 'd':
        v5 = 5;
        break;
      default:
        return 0;
    }
  }

  *a1 = v2 + 2;
  v12 = a1[613];
  v13 = *(v12 + 1);
  if ((v13 - 4064) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v14 = a1;
    v15 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v15)
    {
      std::terminate();
    }

    v12 = v15;
    v13 = 0;
    a1 = v14;
    *v12 = v14[613];
    *(v12 + 1) = 0;
    v14[613] = v12;
  }

  v16 = v13 + 16;
  *(v12 + 1) = v16;
  v17 = &v12[v16];
  v17[8] = 48;
  *(v17 + 9) = *&v12[v16 + 9] & 0xF000 | 0x540;
  *(v17 + 3) = v5;
  *v17 = &unk_1F1A37EA0;
  v18 = a1;
  if (v19 == v17)
  {
    return v17;
  }

  v20 = v19;
  v21 = v18;
  v22 = v18[38];
  if (v22 == v18[39])
  {
    v23 = v18[37];
    v24 = v22 - v23;
    if (v23 == (v18 + 40))
    {
      v25 = malloc_type_malloc(2 * (v22 - v23), 0x2004093837F09uLL);
      if (!v25)
      {
        goto LABEL_56;
      }

      v21 = v18;
      v26 = v18[37];
      v27 = v18[38];
      if (v27 != v26)
      {
        v28 = v25;
        memmove(v25, v26, v27 - v26);
        v25 = v28;
        v21 = v18;
      }

      v21[37] = v25;
    }

    else
    {
      v25 = malloc_type_realloc(v23, 2 * (v22 - v23), 0x2004093837F09uLL);
      v21 = v18;
      v18[37] = v25;
      if (!v25)
      {
LABEL_56:
        abort();
      }
    }

    v22 = &v25[v24];
    v21[39] = &v25[8 * (v24 >> 2)];
  }

  *v22 = v20;
  v21[38] = v22 + 8;
  return v20;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnqualifiedName(uint64_t a1, unsigned __int8 *a2, char *a3, uint64_t a4)
{
  v4 = a3;
  v54 = a4;
  v55 = a3;
  {
    return 0;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_8;
  }

  if (v8 == v9)
  {
    v10 = 1;
    goto LABEL_31;
  }

  if (*v8 == 70)
  {
    v10 = 0;
    *a1 = ++v8;
    if (v8 == v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
LABEL_8:
    v10 = 1;
    if (v8 == v9)
    {
      goto LABEL_11;
    }
  }

  if (*v8 == 76)
  {
    *a1 = ++v8;
  }

LABEL_11:
  if (v9 != v8 && *v8 >= 49)
  {
    v11 = *v8;
    if (v11 <= 0x39)
    {
      goto LABEL_32;
    }

    if (v11 == 85)
    {
      goto LABEL_32;
    }
  }

  if ((v9 - v8) >= 2 && *v8 == 17220)
  {
    *a1 = v8 + 2;
    v35 = *(a1 + 16);
    v34 = *(a1 + 24);
    if (!result)
    {
      return result;
    }

    v36 = result;
    v37 = (v34 - v35) >> 3;
    while (1)
    {
      v38 = *(a1 + 24);
      if (v38 == *(a1 + 32))
      {
        v39 = *(a1 + 16);
        v40 = v38 - v39;
        if (v39 == (a1 + 40))
        {
          v41 = malloc_type_malloc(2 * (v38 - v39), 0x2004093837F09uLL);
          if (!v41)
          {
LABEL_91:
            abort();
          }

          v42 = *(a1 + 16);
          v43 = *(a1 + 24);
          if (v43 != v42)
          {
            v44 = v41;
            memmove(v41, v42, v43 - v42);
            v41 = v44;
          }

          *(a1 + 16) = v41;
        }

        else
        {
          v41 = malloc_type_realloc(v39, 2 * (v38 - v39), 0x2004093837F09uLL);
          *(a1 + 16) = v41;
          if (!v41)
          {
            goto LABEL_91;
          }
        }

        v38 = &v41[v40];
        *(a1 + 32) = &v41[8 * (v40 >> 2)];
      }

      *v38 = v36;
      *(a1 + 24) = v38 + 8;
      v45 = *a1;
      if (*a1 != *(a1 + 8) && *v45 == 69)
      {
        break;
      }

      result = 0;
      if (!v36)
      {
        return result;
      }
    }

    *a1 = v45 + 1;
    v48 = v47;
    v49 = *(a1 + 4904);
    v50 = v49[1];
    if ((v50 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v49 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v49)
      {
        goto LABEL_92;
      }

      v50 = 0;
      *v49 = *(a1 + 4904);
      v49[1] = 0;
      *(a1 + 4904) = v49;
    }

    v49[1] = v50 + 32;
    v51 = v49 + v50;
    v16 = v51 + 16;
    v51[24] = 53;
    *(v51 + 25) = *(v51 + 25) & 0xF000 | 0x540;
    *(v51 + 2) = &unk_1F1A38008;
    *(v51 + 4) = v46;
    *(v51 + 5) = v48;
    goto LABEL_33;
  }

  if (v9 == v8 || *v8 - 67 > 1)
  {
LABEL_31:
    goto LABEL_32;
  }

  result = 0;
  if (!v4 || v54)
  {
    return result;
  }

  if (v4[8] == 48)
  {
    v57 = v4;
    v55 = v4;
    v8 = *a1;
    v9 = *(a1 + 8);
  }

  if (v8 == v9)
  {
    return 0;
  }

  v13 = *v8;
  if (v13 == 67)
  {
    v14 = v8 + 1;
    *a1 = v8 + 1;
    if (v8 + 1 == v9 || *v14 != 73)
    {
      v15 = 0;
    }

    else
    {
      v14 = v8 + 2;
      *a1 = v8 + 2;
      v15 = 1;
    }

    if (v9 == v14)
    {
      return 0;
    }

    v53 = *v14;
    if ((v53 - 49) > 4)
    {
      return 0;
    }

    LODWORD(v57) = v53 - 48;
    *a1 = v14 + 1;
    if (a2)
    {
      *a2 = 1;
    }

    {
      v16 = 0;
      goto LABEL_33;
    }

    v56 = 0;
  }

  else
  {
    result = 0;
    if ((v9 - v8) < 2)
    {
      return result;
    }

    if (v13 != 68)
    {
      return result;
    }

    result = 0;
    v52 = v8[1];
    if (v52 > 0x35 || ((1 << v52) & 0x37000000000000) == 0)
    {
      return result;
    }

    LODWORD(v57) = v52 - 48;
    *a1 = v8 + 2;
    if (a2)
    {
      *a2 = 1;
    }

    v56 = 1;
  }

LABEL_32:
  v16 = v12;
LABEL_33:
  if (v16 && (v17 = v54) != 0)
  {
    v18 = *(a1 + 4904);
    v19 = v18[1];
    if ((v19 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v18 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v18)
      {
        goto LABEL_92;
      }

      v19 = 0;
      *v18 = *(a1 + 4904);
      v18[1] = 0;
      *(a1 + 4904) = v18;
    }

    v18[1] = v19 + 32;
    v20 = v18 + v19;
    v20[24] = 28;
    *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
    *(v20 + 2) = &unk_1F1A380F8;
    *(v20 + 4) = v17;
    *(v20 + 5) = v16;
    v16 = v20 + 16;
  }

  else if (!v16)
  {
    return 0;
  }

  if (result)
  {
    v21 = v10;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    v29 = *(a1 + 4904);
    v30 = v29[1];
    if ((v30 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v31 = result;
      v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v32)
      {
        goto LABEL_92;
      }

      v29 = v32;
      v30 = 0;
      *v32 = *(a1 + 4904);
      v32[1] = 0;
      *(a1 + 4904) = v32;
      result = v31;
    }

    v29[1] = v30 + 32;
    v33 = v29 + v30;
    v27 = v33 + 16;
    v33[24] = 25;
    *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
    v28 = &unk_1F1A38170;
    goto LABEL_54;
  }

  if (result && v4)
  {
    v22 = *(a1 + 4904);
    v23 = v22[1];
    if ((v23 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
LABEL_49:
      v22[1] = v23 + 32;
      v26 = v22 + v23;
      v27 = v26 + 16;
      v26[24] = 24;
      *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
      v28 = &unk_1F1A381E8;
LABEL_54:
      *(v27 + 2) = v4;
      *(v27 + 3) = result;
      result = v27;
      *v27 = v28;
      return result;
    }

    v24 = result;
    v25 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v25)
    {
      v22 = v25;
      v23 = 0;
      *v25 = *(a1 + 4904);
      v25[1] = 0;
      *(a1 + 4904) = v25;
      result = v24;
      goto LABEL_49;
    }

LABEL_92:
    std::terminate();
  }

  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NameType,char const(&)[5]>(uint64_t a1, char *__s)
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
  v7 = v4 + v5 + 16;
  v8 = strlen(__s);
  v6[24] = 8;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A366B8;
  *(v6 + 4) = __s;
  *(v6 + 5) = v8;
  return v7;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = *(v3 + 9);
  if ((v4 & 0xC0) == 0x80)
  {
    result = (**v3)(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 < 0x40;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::hasArraySlow(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = v3[10] & 3;
  if (v4 == 2)
  {
    result = (*(*v3 + 8))(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 == 0;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::hasFunctionSlow(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = (*(v3 + 9) >> 10) & 3;
  if (v4 == 2)
  {
    result = (*(*v3 + 16))(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 == 0;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::getSyntaxNode(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 24))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::printLeft(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 32))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::printRight(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 40))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseExpr(unsigned __int8 **a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  if (v4 < 2)
  {
    return;
  }

  v6 = *v2;
  v7 = v6 != 29543;
  if (v6 == 29543)
  {
    *a1 = ++v2;
    v4 = v3 - v2;
    v8 = 1;
    v182 = 1;
    if ((v3 - v2) < 2)
    {
      return;
    }
  }

  else
  {
    v8 = 0;
    v182 = 0;
  }

  v9 = 0;
  v10 = v2 + 1;
  v11 = *v2;
  v12 = 61;
  do
  {
    v13 = (v9 + v12) >> 1;
    if (*v14 < v11)
    {
      v9 = v13 + 1;
    }

    else if (*v14 == v11)
    {
      if (v14[1] >= *v10)
      {
        v12 = (v9 + v12) >> 1;
      }

      else
      {
        v9 = v13 + 1;
      }
    }

    else
    {
      v12 = (v9 + v12) >> 1;
    }
  }

  while (v12 != v9);
  if (*v15 == v11 && v15[1] == *v10)
  {
    v16 = v2 + 1;
    *a1 = (v2 + 1);
    v17 = v15[2];
    v18 = *(v15 + 1);
    v19 = strlen(v18);
    v21 = v19;
    if (v17 > 0xA)
    {
      v22 = *(v15 + 1);
    }

    else
    {
      v22 = (v18 + 8);
      if (v19 == 8)
      {
        v21 = 0;
      }

      else
      {
        v23 = *v22;
        if (v23 == 32)
        {
          v21 = v19 - 9;
        }

        else
        {
          v21 = v19 - 8;
        }

        if (v23 == 32)
        {
          v22 = (v18 + 9);
        }
      }
    }

    v181.n128_u64[0] = v22;
    v181.n128_u64[1] = v21;
    switch(v17)
    {
      case 1u:
        if (v16 == v3 || *v16 != 95)
        {
          if (v185.n128_u64[0])
          {
            LODWORD(v180) = v15[3] >> 1;
          }
        }

        else
        {
          *a1 = v2 + 3;
          v60 = v15[3] >> 1;
          v185.n128_u64[0] = v22;
          v185.n128_u64[1] = v21;
          LODWORD(v183) = v60;
          if (v180)
          {
          }
        }

        return;
      case 2u:
        v61 = v15[3] >> 1;
        v185.n128_u64[0] = v22;
        v185.n128_u64[1] = v21;
        v184 = v61;
        if (v180)
        {
          if (v183)
          {
          }
        }

        return;
      case 3u:
        if (v185.n128_u64[0])
        {
          if (v180)
          {
            LODWORD(v183) = v15[3] >> 1;
          }
        }

        return;
      case 4u:
        if (v185.n128_u64[0])
        {
          if (v180)
          {
            LODWORD(v183) = v15[3] >> 1;
          }
        }

        return;
      case 5u:
        v70 = (a1[3] - a1[2]) >> 3;
        v71 = (a1 + 5);
        while (2)
        {
          if (v16 != v3 && *v16 == 95)
          {
            *a1 = v16 + 1;
            v185.n128_u64[1] = v122;
            if (!v183)
            {
              return;
            }

            v126 = a1[2];
            v125 = a1[3];
            if (v123)
            {
              while (1)
              {
                v127 = *a1;
                if (*a1 != a1[1] && *v127 == 69)
                {
                  break;
                }

                if (!v132)
                {
                  return;
                }

                v131 = a1[3];
                if (v131 == a1[4])
                {
                  v133 = v132;
                  v134 = a1[2];
                  v135 = v131 - v134;
                  if (v134 == v71)
                  {
                    v130 = malloc_type_malloc(2 * (v131 - v134), 0x2004093837F09uLL);
                    if (!v130)
                    {
                      goto LABEL_299;
                    }

                    v124 = a1[2];
                    v136 = a1[3];
                    if (v136 != v124)
                    {
                      v137 = v130;
                      memmove(v130, v124, v136 - v124);
                      v130 = v137;
                    }

                    a1[2] = v130;
                  }

                  else
                  {
                    v130 = malloc_type_realloc(v134, 2 * (v131 - v134), 0x2004093837F09uLL);
                    a1[2] = v130;
                    if (!v130)
                    {
                      goto LABEL_299;
                    }
                  }

                  v131 = &v130[v135];
                  a1[4] = &v130[8 * (v135 >> 2)];
                  v132 = v133;
                }

                *v131 = v132;
                a1[3] = (v131 + 8);
              }
            }

            else
            {
              v127 = *a1;
              if (*a1 == a1[1] || *v127 != 69)
              {
                return;
              }
            }

            *a1 = v127 + 1;
            *(&v180 + 1) = v128;
            v129 = v15[3];
            v179 = v129 & 1;
            v184 = v129 >> 1;
            return;
          }

          if (!v74)
          {
            return;
          }

          v73 = a1[3];
          if (v73 != a1[4])
          {
            goto LABEL_124;
          }

          v75 = v74;
          v76 = a1[2];
          v77 = v73 - v76;
          if (v76 == v71)
          {
            v72 = malloc_type_malloc(2 * (v73 - v76), 0x2004093837F09uLL);
            if (v72)
            {
              v20 = a1[2];
              v78 = a1[3];
              if (v78 != v20)
              {
                v79 = v72;
                memmove(v72, v20, v78 - v20);
                v72 = v79;
              }

              a1[2] = v72;
              goto LABEL_123;
            }
          }

          else
          {
            v72 = malloc_type_realloc(v76, 2 * (v73 - v76), 0x2004093837F09uLL);
            a1[2] = v72;
            if (v72)
            {
LABEL_123:
              v73 = &v72[v77];
              a1[4] = &v72[8 * (v77 >> 2)];
              v74 = v75;
LABEL_124:
              *v73 = v74;
              a1[3] = (v73 + 8);
              v16 = *a1;
              v3 = a1[1];
              continue;
            }
          }

          goto LABEL_299;
        }

      case 6u:
        if (!v63)
        {
          return;
        }

        v64 = v63;
        v65 = v15[3];
        v66 = a1[613];
        v67 = *(v66 + 1);
        if ((v67 - 4048) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_117;
        }

        v66 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v66)
        {
          goto LABEL_300;
        }

        v67 = 0;
        *v66 = a1[613];
        *(v66 + 1) = 0;
        a1[613] = v66;
LABEL_117:
        *(v66 + 1) = v67 + 32;
        v68 = v66 + v67;
        v68[24] = 65;
        *(v68 + 25) = *(v68 + 25) & 0xF000 | (v65 >> 1) | 0x540;
        *(v68 + 2) = &unk_1F1A36AF0;
        *(v68 + 4) = v64;
        v68[40] = v8;
        v68[41] = v65 & 1;
        return;
      case 7u:
        if (!v180)
        {
          return;
        }

        v83 = (a1[3] - a1[2]) >> 3;
        while (2)
        {
          v87 = *a1;
          if (*a1 == a1[1] || *v87 != 69)
          {
            if (!v86)
            {
              return;
            }

            v85 = a1[3];
            if (v85 != a1[4])
            {
LABEL_142:
              *v85 = v86;
              a1[3] = (v85 + 8);
              continue;
            }

            v88 = v86;
            v89 = a1[2];
            v90 = v85 - v89;
            if (v89 == (a1 + 5))
            {
              v84 = malloc_type_malloc(2 * (v85 - v89), 0x2004093837F09uLL);
              if (v84)
              {
                v82 = a1[2];
                v91 = a1[3];
                if (v91 != v82)
                {
                  v92 = v84;
                  memmove(v84, v82, v91 - v82);
                  v84 = v92;
                }

                a1[2] = v84;
                goto LABEL_141;
              }
            }

            else
            {
              v84 = malloc_type_realloc(v89, 2 * (v85 - v89), 0x2004093837F09uLL);
              a1[2] = v84;
              if (v84)
              {
LABEL_141:
                v85 = &v84[v90];
                a1[4] = &v84[8 * (v90 >> 2)];
                v86 = v88;
                goto LABEL_142;
              }
            }

LABEL_299:
            abort();
          }

          break;
        }

        *a1 = v87 + 1;
        v185.n128_u64[1] = v139;
        LODWORD(v183) = v15[3] >> 1;
        v140 = &v180;
        goto LABEL_231;
      case 8u:
        v53 = *(a1 + 776);
        *(a1 + 776) = 0;
        *&v180 = v54;
        *(a1 + 776) = v53;
        if (!v54)
        {
          return;
        }

        v56 = (a1[3] - a1[2]) >> 3;
        v57 = *a1;
        v58 = a1[1];
        if (*a1 == v58)
        {
          goto LABEL_242;
        }

        v59 = *v57;
        if (v59 == 95)
        {
          v57 = (v57 + 1);
          *a1 = v57;
          while (v57 == v58 || *v57 != 69)
          {
            if (!v95)
            {
              return;
            }

            v94 = a1[3];
            if (v94 == a1[4])
            {
              v96 = v95;
              v97 = a1[2];
              v98 = v94 - v97;
              if (v97 == (a1 + 5))
              {
                v93 = malloc_type_malloc(2 * (v94 - v97), 0x2004093837F09uLL);
                if (!v93)
                {
                  goto LABEL_299;
                }

                v55 = a1[2];
                v99 = a1[3];
                if (v99 != v55)
                {
                  v100 = v93;
                  memmove(v93, v55, v99 - v55);
                  v93 = v100;
                }

                a1[2] = v93;
              }

              else
              {
                v93 = malloc_type_realloc(v97, 2 * (v94 - v97), 0x2004093837F09uLL);
                a1[2] = v93;
                if (!v93)
                {
                  goto LABEL_299;
                }
              }

              v94 = &v93[v98];
              a1[4] = &v93[8 * (v98 >> 2)];
              v95 = v96;
            }

            *v94 = v95;
            a1[3] = (v94 + 8);
            v57 = *a1;
            v58 = a1[1];
          }
        }

        else if (v59 != 69)
        {
LABEL_242:
          if (!v146)
          {
            return;
          }

          v147 = a1[3];
          if (v147 == a1[4])
          {
            v148 = v146;
            v149 = a1[2];
            v150 = v147 - v149;
            if (v149 == (a1 + 5))
            {
              v151 = malloc_type_malloc(2 * (v147 - v149), 0x2004093837F09uLL);
              if (!v151)
              {
                goto LABEL_299;
              }

              v161 = a1[2];
              v162 = a1[3];
              if (v162 != v161)
              {
                v163 = v151;
                memmove(v151, v161, v162 - v161);
                v151 = v163;
              }

              a1[2] = v151;
            }

            else
            {
              v151 = malloc_type_realloc(v149, 2 * (v147 - v149), 0x2004093837F09uLL);
              a1[2] = v151;
              if (!v151)
              {
                goto LABEL_299;
              }
            }

            v147 = &v151[v150];
            a1[4] = &v151[8 * (v150 >> 2)];
            v146 = v148;
          }

          *v147 = v146;
          a1[3] = (v147 + 8);
          v185.n128_u64[1] = v145;
LABEL_269:
          if (v145 != 1)
          {
            return;
          }

LABEL_270:
          LODWORD(v183) = v15[3] >> 1;
          return;
        }

        *a1 = v57 + 1;
        v185.n128_u64[1] = v145;
        if (v59 == 95)
        {
          goto LABEL_270;
        }

        goto LABEL_269;
      case 9u:
        if (v185.n128_u64[0])
        {
          if (v180)
          {
            if (v183)
            {
              v184 = v15[3] >> 1;
            }
          }
        }

        return;
      case 0xAu:
        return;
      case 0xBu:
        if (v185.n128_u64[0])
        {
          if (v180)
          {
            LODWORD(v183) = v15[3] >> 1;
          }
        }

        return;
      case 0xCu:
        v51 = v15[3];
        if (v51)
        {
        }

        else
        {
        }

        v102 = v52;
        if (!v52)
        {
          return;
        }

        v103 = a1[613];
        v104 = *(v103 + 1);
        if ((v104 - 4016) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_178;
        }

        v103 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v103)
        {
          goto LABEL_300;
        }

        v104 = 0;
        *v103 = a1[613];
        *(v103 + 1) = 0;
        a1[613] = v103;
LABEL_178:
        *(v103 + 1) = v104 + 64;
        v105 = v103 + v104;
        v105[24] = 60;
        *(v105 + 25) = *(v105 + 25) & 0xF000 | (v51 >> 1) | 0x540;
        *(v105 + 2) = &unk_1F1A36D48;
        *(v105 + 4) = v22;
        *(v105 + 5) = v21;
        *(v105 + 7) = 0;
        *(v105 + 8) = 0;
        *(v105 + 6) = v102;
        return;
      default:
        v38 = v15[3];
        if (!v39)
        {
          return;
        }

        v40 = v39;
        v41 = a1[613];
        v42 = *(v41 + 1);
        if ((v42 - 4032) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_72;
        }

        v41 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v41)
        {
          goto LABEL_300;
        }

        v42 = 0;
        *v41 = a1[613];
        *(v41 + 1) = 0;
        a1[613] = v41;
LABEL_72:
        *(v41 + 1) = v42 + 48;
        v43 = v41 + v42;
        v43[24] = 66;
        *(v43 + 25) = *(v43 + 25) & 0xF000 | (v38 >> 1) | 0x540;
        *(v43 + 2) = &unk_1F1A36898;
        *(v43 + 4) = v22;
        *(v43 + 5) = v21;
        *(v43 + 6) = v40;
        return;
    }
  }

  switch(v11)
  {
    case 'f':
      v24 = *v10;
      if (v24 != 112)
      {
        if (v24 != 76)
        {
          goto LABEL_78;
        }

        if (v4 == 2)
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v2 + 2);
          if (v25 < 0)
          {
            goto LABEL_78;
          }
        }

        if ((*(MEMORY[0x1E69E9830] + 4 * v25 + 60) & 0x400) == 0)
        {
LABEL_78:
          if (v2 != v3)
          {
            *a1 = v10;
            if (v3 != v10)
            {
              v45 = *v10;
              if (v45 > 107)
              {
                if (v45 == 108)
                {
                  v47 = 0;
                  v46 = 1;
                }

                else
                {
                  if (v45 != 114)
                  {
                    return;
                  }

                  v46 = 0;
                  v47 = 0;
                }
              }

              else if (v45 == 76)
              {
                v46 = 1;
                v47 = 1;
              }

              else
              {
                if (v45 != 82)
                {
                  return;
                }

                v46 = 0;
                v47 = 1;
              }

              *a1 = (v2 + 1);
              if ((v3 - (v2 + 1)) >= 2)
              {
                v110 = 0;
                v111 = *(v2 + 2);
                v112 = 61;
                do
                {
                  v113 = (v110 + v112) >> 1;
                  if (*v114 < v111)
                  {
                    v110 = v113 + 1;
                  }

                  else if (*v114 == v111)
                  {
                    if (v114[1] >= *(v2 + 3))
                    {
                      v112 = (v110 + v112) >> 1;
                    }

                    else
                    {
                      v110 = v113 + 1;
                    }
                  }

                  else
                  {
                    v112 = (v110 + v112) >> 1;
                  }
                }

                while (v112 != v110);
                if (*v115 == v111 && v115[1] == *(v2 + 3))
                {
                  *a1 = (v2 + 2);
                  v116 = v115[2];
                  if (v116 == 2 || v116 == 4 && *(*(v115 + 1) + strlen(*(v115 + 1)) - 1) == 42)
                  {
                    if (v117)
                    {
                      v119 = v117;
                      if (v47)
                      {
                        if (!v120)
                        {
                          return;
                        }

                        if (v46)
                        {
                          v121 = v119;
                        }

                        else
                        {
                          v121 = v120;
                        }

                        if (v46)
                        {
                          v119 = v120;
                        }
                      }

                      else
                      {
                        v121 = 0;
                      }

                      v155 = *(v115 + 1);
                      v156 = strlen(v155);
                      v157 = v155 + 8;
                      if (v156 == 8)
                      {
                        v160 = 0;
                      }

                      else
                      {
                        v158 = *v157;
                        v159 = v155 + 9;
                        if (v158 == 32)
                        {
                          v160 = v156 - 9;
                        }

                        else
                        {
                          v160 = v156 - 8;
                        }

                        if (v158 == 32)
                        {
                          v157 = v159;
                        }
                      }

                      v172 = a1[613];
                      v173 = *(v172 + 1);
                      if ((v173 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
                      {
                        v172 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
                        if (!v172)
                        {
LABEL_300:
                          std::terminate();
                        }

                        v173 = 0;
                        *v172 = a1[613];
                        *(v172 + 1) = 0;
                        a1[613] = v172;
                      }

                      *(v172 + 1) = v173 + 64;
                      v174 = v172 + v173;
                      v174[24] = 71;
                      *(v174 + 25) = *(v174 + 25) & 0xF000 | 0x540;
                      *(v174 + 2) = &unk_1F1A375B8;
                      *(v174 + 4) = v119;
                      *(v174 + 5) = v121;
                      *(v174 + 6) = v157;
                      *(v174 + 7) = v160;
                      v174[64] = v46;
                    }
                  }
                }
              }
            }
          }

          return;
        }
      }

      return;
    case 'T':

      return;
    case 'L':

      return;
  }

  if (*v2 == 27753)
  {
    v26 = v2 + 1;
    *a1 = (v2 + 1);
    v27 = (a1[3] - a1[2]) >> 3;
    v28 = (a1 + 5);
    while (v26 == v3 || *v26 != 69)
    {
      if (!v31)
      {
        return;
      }

      v30 = a1[3];
      if (v30 == a1[4])
      {
        v32 = v31;
        v33 = a1[2];
        v34 = v30 - v33;
        if (v33 == v28)
        {
          v29 = malloc_type_malloc(2 * (v30 - v33), 0x2004093837F09uLL);
          if (!v29)
          {
            goto LABEL_299;
          }

          a2 = a1[2];
          v35 = a1[3];
          if (v35 != a2)
          {
            v36 = v29;
            memmove(v29, a2, v35 - a2);
            v29 = v36;
          }

          a1[2] = v29;
        }

        else
        {
          v29 = malloc_type_realloc(v33, 2 * (v30 - v33), 0x2004093837F09uLL);
          a1[2] = v29;
          if (!v29)
          {
            goto LABEL_299;
          }
        }

        v30 = &v29[v34];
        a1[4] = &v29[8 * (v34 >> 2)];
        v31 = v32;
      }

      *v30 = v31;
      a1[3] = (v30 + 8);
      v26 = *a1;
      v3 = a1[1];
    }

    *a1 = v26 + 1;
    v185.n128_u64[1] = v48;
    return;
  }

  if ((v3 - v2) >= 2)
  {
    if (*v2 == 25453)
    {
      *a1 = (v2 + 1);

      return;
    }

    if (*v2 == 30830)
    {
      *a1 = (v2 + 1);
      if (v185.n128_u64[0])
      {
        v181.n128_u32[0] = 2;
      }

      return;
    }
  }

  if (v3 != v2 && (v3 - v2) >= 2 && v11 == 114 && (*v10 | 0x20) == 0x71)
  {

    return;
  }

  {

    return;
  }

  {
    if (v185.n128_u64[0])
    {
    }

    return;
  }

  {
    if (a1[1] != *a1 && **a1 == 84)
    {
      if (v185.n128_u64[0])
      {
      }

      return;
    }

    v185.n128_u64[0] = v138;
    if (!v138)
    {
      return;
    }

LABEL_252:
    return;
  }

  {
    {
      if (v181.n128_u64[0])
      {
        v143 = (a1[3] - a1[2]) >> 3;
        v144 = *a1;
        if (*a1 == a1[1])
        {
          goto LABEL_236;
        }

LABEL_235:
        if (*v144 == 69)
        {
          *a1 = v144 + 1;
          v185.n128_u64[1] = v171;
        }

        else
        {
LABEL_236:
          while (1)
          {
            if (!v185.n128_u64[0])
            {
              break;
            }

            llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back(a1 + 2, &v185);
            v144 = *a1;
            if (*a1 != a1[1])
            {
              goto LABEL_235;
            }
          }
        }
      }

      return;
    }

    {

      return;
    }

    {
      if (v185.n128_u64[0])
      {
      }

      return;
    }

    v164 = *a1;
    if (*a1 == a1[1] || *v164 != 117)
    {

      return;
    }

    *a1 = v164 + 1;
    v181.n128_u64[0] = v165;
    if (!v165)
    {
      return;
    }

    *&v180 = 0;
    v166 = (*(*v165 + 56))(v165);
    if (v167 == 8 && *v166 == 0x666F646975755F5FLL)
    {
      v176 = *a1;
      if (*a1 != a1[1])
      {
        v177 = *v176;
        if (v177 == 122)
        {
          *a1 = v176 + 1;
          goto LABEL_297;
        }

        if (v177 == 116)
        {
          *a1 = v176 + 1;
LABEL_297:
          *&v180 = v178;
          if (!v178)
          {
            return;
          }

          v168 = a1[3] - a1[2];
          llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back(a1 + 2, &v180);
          goto LABEL_291;
        }
      }
    }

    v168 = a1[3] - a1[2];
    v169 = *a1;
    if (*a1 == a1[1])
    {
      goto LABEL_278;
    }

LABEL_277:
    if (*v169 != 69)
    {
LABEL_278:
      while (1)
      {
        v185.n128_u64[0] = v170;
        if (!v170)
        {
          return;
        }

        llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back(a1 + 2, &v185);
        v169 = *a1;
        if (*a1 != a1[1])
        {
          goto LABEL_277;
        }
      }
    }

    *a1 = v169 + 1;
LABEL_291:
    v185.n128_u64[1] = v175;
    LODWORD(v183) = 1;
    v140 = &v181;
LABEL_231:
    return;
  }

  v107 = (a1[3] - a1[2]) >> 3;
  v108 = *a1;
  if (*a1 == a1[1])
  {
    goto LABEL_182;
  }

LABEL_181:
  if (*v108 == 69)
  {
    *a1 = v108 + 1;
    v185.n128_u64[1] = v152;
    v185.n128_u64[0] = v153;
    goto LABEL_252;
  }

LABEL_182:
  while (1)
  {
    v185.n128_u64[0] = v109;
    if (!v109)
    {
      break;
    }

    llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back(a1 + 2, &v185);
    v108 = *a1;
    if (*a1 != a1[1])
    {
      goto LABEL_181;
    }
  }
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PostfixExpr,llvm::itanium_demangle::Node *&,std::string_view &,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, __n128 *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 48;
  v10 = v8 + v9;
  v11 = *a2;
  v12 = *a4;
  v10[24] = 56;
  v13 = *(v10 + 25) & 0xF000 | v12 & 0x3F;
  *(v10 + 2) = &unk_1F1A36910;
  *(v10 + 4) = v11;
  result = *a3;
  *(v10 + 25) = v13 | 0x540;
  *(v10 + 40) = result;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ArraySubscriptExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, uint64_t *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 32;
  v10 = v8 + v9;
  result = v10 + 16;
  v12 = *a2;
  v13 = *a3;
  v14 = *a4;
  v10[24] = 55;
  *(v10 + 25) = *(v10 + 25) & 0xF000 | v14 & 0x3F | 0x540;
  *(v10 + 2) = &unk_1F1A36988;
  *(v10 + 4) = v12;
  *(v10 + 5) = v13;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::MemberExpr,llvm::itanium_demangle::Node *&,std::string_view &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, __n128 *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *(a1 + 4904);
  v11 = v10[1];
  if ((v11 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v11 = 0;
    *v10 = *(a1 + 4904);
    v10[1] = 0;
    *(a1 + 4904) = v10;
  }

  v10[1] = v11 + 48;
  v12 = v10 + v11;
  v13 = *a2;
  v14 = *a4;
  v15 = *a5;
  v12[24] = 58;
  v16 = *(v12 + 25) & 0xF000 | v15 & 0x3F;
  *(v12 + 2) = &unk_1F1A36A00;
  *(v12 + 4) = v13;
  result = *a3;
  *(v12 + 25) = v16 | 0x540;
  *(v12 + 40) = result;
  *(v12 + 7) = v14;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NewExpr,llvm::itanium_demangle::NodeArray &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray &,BOOL &,BOOL,llvm::itanium_demangle::Node::Prec>(uint64_t a1, __n128 *a2, uint64_t *a3, __int128 *a4, char *a5, char *a6, _WORD *a7)
{
  v14 = *(a1 + 4904);
  v15 = v14[1];
  if ((v15 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v14 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v14)
    {
      std::terminate();
    }

    v15 = 0;
    *v14 = *(a1 + 4904);
    v14[1] = 0;
    *(a1 + 4904) = v14;
  }

  v14[1] = v15 + 64;
  v16 = v14 + v15;
  v17 = *a3;
  v18 = *a5;
  v19 = *a6;
  v20 = *a7;
  v16[24] = 64;
  v21 = *(v16 + 25) & 0xF000 | v20 & 0x3F;
  *(v16 + 2) = &unk_1F1A36A78;
  result = *a2;
  *(v16 + 6) = v17;
  v23 = *a4;
  *(v16 + 25) = v21 | 0x540;
  *(v16 + 2) = result;
  *(v16 + 56) = v23;
  v16[72] = v18;
  v16[73] = v19;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::CallExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, __n128 *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 48;
  v10 = v8 + v9;
  v11 = *a2;
  v12 = *a4;
  v10[24] = 63;
  v13 = *(v10 + 25) & 0xF000 | v12 & 0x3F;
  *(v10 + 2) = &unk_1F1A36B68;
  *(v10 + 4) = v11;
  result = *a3;
  *(v10 + 25) = v13 | 0x540;
  *(v10 + 40) = result;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ConversionExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray &,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, __n128 *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 48;
  v10 = v8 + v9;
  v11 = *a2;
  v12 = *a4;
  v10[24] = 68;
  v13 = *(v10 + 25) & 0xF000 | v12 & 0x3F;
  *(v10 + 2) = &unk_1F1A36BE0;
  *(v10 + 4) = v11;
  result = *a3;
  *(v10 + 25) = v13 | 0x540;
  *(v10 + 40) = result;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ConditionalExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *(a1 + 4904);
  v11 = v10[1];
  if ((v11 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v11 = 0;
    *v10 = *(a1 + 4904);
    v10[1] = 0;
    *(a1 + 4904) = v10;
  }

  v10[1] = v11 + 48;
  v12 = v10 + v11;
  result = v12 + 16;
  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  v12[24] = 57;
  *(v12 + 25) = *(v12 + 25) & 0xF000 | v17 & 0x3F | 0x540;
  *(v12 + 2) = &unk_1F1A36C58;
  *(v12 + 4) = v14;
  *(v12 + 5) = v15;
  *(v12 + 6) = v16;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::CastExpr,std::string_view &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, __n128 *a2, uint64_t *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *(a1 + 4904);
  v11 = v10[1];
  if ((v11 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v11 = 0;
    *v10 = *(a1 + 4904);
    v10[1] = 0;
    *(a1 + 4904) = v10;
  }

  v10[1] = v11 + 48;
  v12 = v10 + v11;
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v12[24] = 61;
  v16 = *(v12 + 25) & 0xF000 | v15 & 0x3F;
  *(v12 + 2) = &unk_1F1A36CD0;
  result = *a2;
  *(v12 + 25) = v16 | 0x540;
  *(v12 + 2) = result;
  *(v12 + 6) = v13;
  *(v12 + 7) = v14;
  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseExprPrimary(uint64_t a1, size_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3 && *v2 == 76)
  {
    v4 = v2 + 1;
    *a1 = v2 + 1;
    v5 = v3 - (v2 + 1);
    if (v3 == v2 + 1)
    {
LABEL_10:
      v8 = a1;
      if (v115)
      {
        v10 = *v8;
        v9 = v8[1];
        if (*v8 != v9)
        {
          v11 = *v8;
          if (*v10 == 110)
          {
            v11 = v10 + 1;
            *v8 = v10 + 1;
          }

          if (v9 != v11)
          {
            v12 = *v11;
            if ((v12 & 0x8000000000000000) == 0)
            {
              v13 = MEMORY[0x1E69E9830];
              if ((*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x400) != 0)
              {
                while (1)
                {
                  v14 = *v11;
                  if (v14 < 0 || (*(v13 + 4 * v14 + 60) & 0x400) == 0)
                  {
                    break;
                  }

                  *v8 = ++v11;
                  if (v11 == v9)
                  {
                    v15 = v9;
                    goto LABEL_238;
                  }
                }

                v15 = v11;
LABEL_238:
                v114.n128_u64[0] = v10;
                v114.n128_u64[1] = v15 - v10;
                if (v15 != v10 && v11 != v9 && *v11 == 69)
                {
                  *v8 = v11 + 1;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      switch(*v4)
      {
        case 'A':
          v6 = a1;
          if (v114.n128_u64[0])
          {
            v7 = *v6;
            if (*v6 != v6[1] && *v7 == 69)
            {
              *v6 = v7 + 1;
            }
          }

          return;
        case 'D':
          if (v5 >= 2 && *v4 == 28228)
          {
            v36 = v2 + 3;
            *a1 = v2 + 3;
            if (v2 + 3 != v3 && *v36 == 48)
            {
              v36 = v2 + 4;
              *a1 = v2 + 4;
            }

            if (v36 != v3 && *v36 == 69)
            {
              *a1 = v36 + 1;
            }
          }

          return;
        case 'T':
          return;
        case 'U':
          if (v5 >= 2 && v2[2] == 108)
          {
            v39 = a1;
            if (v114.n128_u64[0])
            {
              v40 = *v39;
              if (*v39 != v39[1] && *v40 == 69)
              {
                *v39 = v40 + 1;
              }
            }
          }

          return;
        case '_':
          if (v5 >= 2 && *v4 == 23135)
          {
            *a1 = v2 + 3;
            v37 = a1;
            {
              v38 = *v37;
              if (*v37 != *(v37 + 8) && *v38 == 69)
              {
                *v37 = v38 + 1;
              }
            }
          }

          return;
        case 'a':
          *a1 = v2 + 2;
          v16 = "signed char";
          v17 = 11;

          goto LABEL_23;
        case 'b':
          if (v5 >= 3 && (*v4 == 12386 ? (v41 = v2[3] == 69) : (v41 = 0), v41))
          {
            *a1 = v2 + 4;
            v114.n128_u32[0] = 0;
          }

          else
          {
            v42 = a1;
            {
              return;
            }

            v114.n128_u32[0] = 1;
            a1 = v42;
          }

          break;
        case 'c':
          *a1 = v2 + 2;
          v16 = "char";
          v17 = 4;

          goto LABEL_23;
        case 'd':
          v85 = v2 + 2;
          *a1 = v2 + 2;
          if ((v3 - (v2 + 2)) < 0x11)
          {
            return;
          }

          v86 = v2[2];
          v87 = v86 - 48;
          v88 = v86 - 97;
          if (v87 >= 0xA && v88 > 5)
          {
            return;
          }

          v90 = v2[3];
          v91 = v90 - 48;
          v92 = v90 - 97;
          if (v91 >= 0xA && v92 > 5)
          {
            return;
          }

          v94 = v2[4];
          if ((v94 - 48) >= 0xA && (v94 - 97) > 5)
          {
            return;
          }

          v95 = v2[5];
          if ((v95 - 48) >= 0xA && (v95 - 97) > 5)
          {
            return;
          }

          v96 = v2[6];
          if ((v96 - 48) >= 0xA && (v96 - 97) > 5)
          {
            return;
          }

          v97 = v2[7];
          if ((v97 - 48) >= 0xA && (v97 - 97) > 5)
          {
            return;
          }

          v113 = a1;
          v98 = v2[8];
          if ((v98 - 48) >= 0xA && (v98 - 97) > 5)
          {
            return;
          }

          v99 = v2[9];
          if ((v99 - 48) >= 0xA && (v99 - 97) > 5)
          {
            return;
          }

          v100 = v2[10];
          if ((v100 - 48) >= 0xA && (v100 - 97) > 5)
          {
            return;
          }

          v101 = v2[11];
          if ((v101 - 48) >= 0xA && (v101 - 97) > 5)
          {
            return;
          }

          v102 = v2[12];
          if ((v102 - 48) >= 0xA && (v102 - 97) > 5)
          {
            return;
          }

          v103 = v2[13];
          if ((v103 - 48) >= 0xA && (v103 - 97) > 5)
          {
            return;
          }

          v104 = v2[14];
          if ((v104 - 48) >= 0xA && (v104 - 97) > 5)
          {
            return;
          }

          v105 = v2[15];
          if ((v105 - 48) >= 0xA && (v105 - 97) > 5)
          {
            return;
          }

          v106 = v2[16];
          if ((v106 - 48) >= 0xA && (v106 - 97) > 5)
          {
            return;
          }

          v107 = v2[17];
          if ((v107 - 48) >= 0xA && (v107 - 97) > 5)
          {
            return;
          }

          *a1 = v2 + 18;
          if (v2 + 18 == v3 || v2[18] != 69)
          {
            return;
          }

          *a1 = v2 + 19;
          v108 = *(a1 + 4904);
          v109 = v108[1];
          if ((v109 - 4048) > 0xFFFFFFFFFFFFF00FLL)
          {
            goto LABEL_227;
          }

          v108 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v108)
          {
            goto LABEL_245;
          }

          v109 = 0;
          *v108 = *(v113 + 4904);
          v108[1] = 0;
          *(v113 + 4904) = v108;
LABEL_227:
          v108[1] = v109 + 32;
          v110 = v108 + v109;
          v110[24] = 79;
          *(v110 + 25) = *(v110 + 25) & 0xF000 | 0x540;
          *(v110 + 2) = &unk_1F1A36F28;
          *(v110 + 4) = v85;
          *(v110 + 5) = 16;
          return;
        case 'e':
          v43 = v2 + 2;
          *a1 = v2 + 2;
          if ((v3 - (v2 + 2)) < 0x21)
          {
            return;
          }

          v44 = v2[2];
          v45 = v44 - 48;
          v46 = v44 - 97;
          if (v45 >= 0xA && v46 > 5)
          {
            return;
          }

          v48 = v2[3];
          v49 = v48 - 48;
          v50 = v48 - 97;
          if (v49 >= 0xA && v50 > 5)
          {
            return;
          }

          v52 = v2[4];
          if ((v52 - 48) >= 0xA && (v52 - 97) > 5)
          {
            return;
          }

          v53 = v2[5];
          if ((v53 - 48) >= 0xA && (v53 - 97) > 5)
          {
            return;
          }

          v54 = v2[6];
          if ((v54 - 48) >= 0xA && (v54 - 97) > 5)
          {
            return;
          }

          v55 = v2[7];
          if ((v55 - 48) >= 0xA && (v55 - 97) > 5)
          {
            return;
          }

          v112 = a1;
          v56 = v2[8];
          if ((v56 - 48) >= 0xA && (v56 - 97) > 5)
          {
            return;
          }

          v57 = v2[9];
          if ((v57 - 48) >= 0xA && (v57 - 97) > 5)
          {
            return;
          }

          v58 = v2[10];
          if ((v58 - 48) >= 0xA && (v58 - 97) > 5)
          {
            return;
          }

          v59 = v2[11];
          if ((v59 - 48) >= 0xA && (v59 - 97) > 5)
          {
            return;
          }

          v60 = v2[12];
          if ((v60 - 48) >= 0xA && (v60 - 97) > 5)
          {
            return;
          }

          v61 = v2[13];
          if ((v61 - 48) >= 0xA && (v61 - 97) > 5)
          {
            return;
          }

          v62 = v2[14];
          if ((v62 - 48) >= 0xA && (v62 - 97) > 5)
          {
            return;
          }

          v63 = v2[15];
          if ((v63 - 48) >= 0xA && (v63 - 97) > 5)
          {
            return;
          }

          v64 = v2[16];
          if ((v64 - 48) >= 0xA && (v64 - 97) > 5)
          {
            return;
          }

          v65 = v2[17];
          if ((v65 - 48) >= 0xA && (v65 - 97) > 5)
          {
            return;
          }

          v66 = v2[18];
          if ((v66 - 48) >= 0xA && (v66 - 97) > 5)
          {
            return;
          }

          v67 = v2[19];
          if ((v67 - 48) >= 0xA && (v67 - 97) > 5)
          {
            return;
          }

          v68 = v2[20];
          if ((v68 - 48) >= 0xA && (v68 - 97) > 5)
          {
            return;
          }

          v69 = v2[21];
          if ((v69 - 48) >= 0xA && (v69 - 97) > 5)
          {
            return;
          }

          v70 = v2[22];
          if ((v70 - 48) >= 0xA && (v70 - 97) > 5)
          {
            return;
          }

          v71 = v2[23];
          if ((v71 - 48) >= 0xA && (v71 - 97) > 5)
          {
            return;
          }

          v72 = v2[24];
          if ((v72 - 48) >= 0xA && (v72 - 97) > 5)
          {
            return;
          }

          v73 = v2[25];
          if ((v73 - 48) >= 0xA && (v73 - 97) > 5)
          {
            return;
          }

          v74 = v2[26];
          if ((v74 - 48) >= 0xA && (v74 - 97) > 5)
          {
            return;
          }

          v75 = v2[27];
          if ((v75 - 48) >= 0xA && (v75 - 97) > 5)
          {
            return;
          }

          v76 = v2[28];
          if ((v76 - 48) >= 0xA && (v76 - 97) > 5)
          {
            return;
          }

          v77 = v2[29];
          if ((v77 - 48) >= 0xA && (v77 - 97) > 5)
          {
            return;
          }

          v78 = v2[30];
          if ((v78 - 48) >= 0xA && (v78 - 97) > 5)
          {
            return;
          }

          v79 = v2[31];
          if ((v79 - 48) >= 0xA && (v79 - 97) > 5)
          {
            return;
          }

          v80 = v2[32];
          if ((v80 - 48) >= 0xA && (v80 - 97) > 5)
          {
            return;
          }

          v81 = v2[33];
          if ((v81 - 48) >= 0xA && (v81 - 97) > 5)
          {
            return;
          }

          *a1 = v2 + 34;
          if (v2 + 34 == v3 || v2[34] != 69)
          {
            return;
          }

          *a1 = v2 + 35;
          v82 = *(a1 + 4904);
          v83 = v82[1];
          if ((v83 - 4048) > 0xFFFFFFFFFFFFF00FLL)
          {
            goto LABEL_184;
          }

          v82 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v82)
          {
            goto LABEL_245;
          }

          v83 = 0;
          *v82 = *(v112 + 4904);
          v82[1] = 0;
          *(v112 + 4904) = v82;
LABEL_184:
          v82[1] = v83 + 32;
          v84 = v82 + v83;
          v84[24] = 80;
          *(v84 + 25) = *(v84 + 25) & 0xF000 | 0x540;
          *(v84 + 2) = &unk_1F1A36FA0;
          *(v84 + 4) = v43;
          *(v84 + 5) = 32;
          return;
        case 'f':
          v18 = v2 + 2;
          *a1 = v2 + 2;
          if ((v3 - (v2 + 2)) < 9)
          {
            return;
          }

          v19 = v2[2];
          v20 = v19 - 48;
          v21 = v19 - 97;
          if (v20 >= 0xA && v21 > 5)
          {
            return;
          }

          v23 = v2[3];
          v24 = v23 - 48;
          v25 = v23 - 97;
          if (v24 >= 0xA && v25 > 5)
          {
            return;
          }

          v27 = v2[4];
          if ((v27 - 48) >= 0xA && (v27 - 97) > 5)
          {
            return;
          }

          v28 = v2[5];
          if ((v28 - 48) >= 0xA && (v28 - 97) > 5)
          {
            return;
          }

          v29 = v2[6];
          if ((v29 - 48) >= 0xA && (v29 - 97) > 5)
          {
            return;
          }

          v30 = v2[7];
          if ((v30 - 48) >= 0xA && (v30 - 97) > 5)
          {
            return;
          }

          v111 = a1;
          v31 = v2[8];
          if ((v31 - 48) >= 0xA && (v31 - 97) > 5)
          {
            return;
          }

          v32 = v2[9];
          if ((v32 - 48) >= 0xA && (v32 - 97) > 5)
          {
            return;
          }

          *a1 = v2 + 10;
          if (v2 + 10 == v3 || v2[10] != 69)
          {
            return;
          }

          *a1 = v2 + 11;
          v33 = *(a1 + 4904);
          v34 = v33[1];
          if ((v34 - 4048) > 0xFFFFFFFFFFFFF00FLL)
          {
            goto LABEL_56;
          }

          v33 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v33)
          {
LABEL_245:
            std::terminate();
          }

          v34 = 0;
          *v33 = *(v111 + 4904);
          v33[1] = 0;
          *(v111 + 4904) = v33;
LABEL_56:
          v33[1] = v34 + 32;
          v35 = v33 + v34;
          v35[24] = 78;
          *(v35 + 25) = *(v35 + 25) & 0xF000 | 0x540;
          *(v35 + 2) = &unk_1F1A36EB0;
          *(v35 + 4) = v18;
          *(v35 + 5) = 8;
          return;
        case 'h':
          *a1 = v2 + 2;
          v16 = "unsigned char";
          v17 = 13;

          goto LABEL_23;
        case 'i':
          *a1 = v2 + 2;
          v16 = "";
          v17 = 0;

          goto LABEL_23;
        case 'j':
          *a1 = v2 + 2;
          v16 = "u";
          v17 = 1;

          goto LABEL_23;
        case 'l':
          *a1 = v2 + 2;
          v16 = "l";
          v17 = 1;

          goto LABEL_23;
        case 'm':
          *a1 = v2 + 2;
          v16 = "ul";
          v17 = 2;

          goto LABEL_23;
        case 'n':
          *a1 = v2 + 2;
          v16 = "__int128";
          v17 = 8;

          goto LABEL_23;
        case 'o':
          *a1 = v2 + 2;
          v16 = "unsigned __int128";
          v17 = 17;

          goto LABEL_23;
        case 's':
          *a1 = v2 + 2;
          v16 = "short";
          v17 = 5;

          goto LABEL_23;
        case 't':
          *a1 = v2 + 2;
          v16 = "unsigned short";
          v17 = 14;

          goto LABEL_23;
        case 'w':
          *a1 = v2 + 2;
          v16 = "wchar_t";
          v17 = 7;

          goto LABEL_23;
        case 'x':
          *a1 = v2 + 2;
          v16 = "ll";
          v17 = 2;

          goto LABEL_23;
        case 'y':
          *a1 = v2 + 2;
          v16 = "ull";
          v17 = 3;

LABEL_23:
          return;
        default:
          goto LABEL_10;
      }
    }
  }
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseFunctionParam(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = v1 - *a1;
  if (v3 >= 3)
  {
    if (*v2 == 28774 && *(v2 + 2) == 84)
    {
      *a1 = v2 + 3;
      v21 = a1[613];
      v22 = *(v21 + 8);
      if ((v22 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v24 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v24)
        {
          goto LABEL_75;
        }

        v21 = v24;
        v22 = 0;
        *v24 = a1[613];
        v24[1] = 0;
        a1[613] = v24;
      }

      *(v21 + 8) = v22 + 32;
      v25 = v21 + v22;
      *(v25 + 24) = 8;
      *(v25 + 25) = *(v25 + 25) & 0xF000 | 0x540;
      *(v25 + 16) = &unk_1F1A366B8;
      *(v25 + 32) = "this";
      *(v25 + 40) = 4;
      return;
    }
  }

  else if (v3 != 2)
  {
    return;
  }

  if (*v2 == 28774)
  {
    v11 = (v2 + 2);
    *a1 = v2 + 2;
    if (v2 + 2 != v1 && *v11 == 114)
    {
      v11 = (v2 + 3);
      *a1 = v2 + 3;
    }

    if (v11 != v1 && *v11 == 86)
    {
      *a1 = ++v11;
    }

    if (v11 != v1 && *v11 == 75)
    {
      *a1 = ++v11;
    }

    if (v1 == v11 || (v12 = *v11, v12 < 0) || (v13 = MEMORY[0x1E69E9830], (*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x400) == 0))
    {
      v14 = 0;
      v15 = 0;
      if (v11 == v1)
      {
        return;
      }
    }

    else
    {
      v26 = v11;
      while (1)
      {
        v27 = *v26;
        if (v27 < 0 || (*(v13 + 4 * v27 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v26;
        if (v26 == v1)
        {
          v28 = v1;
          goto LABEL_46;
        }
      }

      v28 = v26;
LABEL_46:
      v14 = v11;
      v15 = v28 - v11;
      v11 = v26;
      if (v26 == v1)
      {
        return;
      }
    }

    if (*v11 != 95)
    {
      return;
    }

    *a1 = (v11 + 1);
    v16 = a1[613];
    v17 = *(v16 + 8);
    if ((v17 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
LABEL_35:
      *(v16 + 8) = v17 + 32;
      v20 = v16 + v17;
      *(v20 + 24) = 67;
      *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
      *(v20 + 16) = &unk_1F1A37540;
      *(v20 + 32) = v14;
      *(v20 + 40) = v15;
      return;
    }

    v19 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v19)
    {
      v16 = v19;
      v17 = 0;
      *v19 = a1[613];
      v19[1] = 0;
      a1[613] = v19;
      goto LABEL_35;
    }

LABEL_75:
    std::terminate();
  }

  if (*v2 == 19558)
  {
    v5 = (v2 + 2);
    *a1 = v2 + 2;
    if (v1 != v2 + 2)
    {
      v6 = *v5;
      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = MEMORY[0x1E69E9830];
        if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) != 0)
        {
          v8 = v5;
          while (1)
          {
            v9 = *v8;
            if (v9 < 0 || (*(v7 + 4 * v9 + 60) & 0x400) == 0)
            {
              break;
            }

            *a1 = ++v8;
            if (v8 == v1)
            {
              v10 = v1;
              goto LABEL_49;
            }
          }

          v10 = v8;
LABEL_49:
          if (v10 != v5 && v8 != v1 && *v8 == 112)
          {
            v29 = v8 + 1;
            *a1 = (v8 + 1);
            if (v8 + 1 != v1 && *v29 == 114)
            {
              v29 = v8 + 2;
              *a1 = (v8 + 2);
            }

            if (v29 != v1 && *v29 == 86)
            {
              *a1 = ++v29;
            }

            if (v29 != v1 && *v29 == 75)
            {
              *a1 = ++v29;
            }

            if (v1 == v29 || (v30 = *v29, v30 < 0) || (*(v7 + 4 * v30 + 60) & 0x400) == 0)
            {
              v36 = 0uLL;
              if (v29 == v1)
              {
                return;
              }

              goto LABEL_65;
            }

            v31 = v29;
            while (1)
            {
              v32 = *v31;
              if (v32 < 0 || (*(v7 + 4 * v32 + 60) & 0x400) == 0)
              {
                break;
              }

              *a1 = ++v31;
              if (v31 == v1)
              {
                v33 = v1;
                goto LABEL_73;
              }
            }

            v33 = v31;
LABEL_73:
            v34 = v29;
            v35 = v33 - v29;
            v29 = v31;
            v36.n128_u64[0] = v34;
            v36.n128_u64[1] = v35;
            if (v31 != v1)
            {
LABEL_65:
              if (*v29 == 95)
              {
                *a1 = (v29 + 1);
              }
            }
          }
        }
      }
    }
  }
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseBracedExpr(uint64_t a1, size_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) - *a1 < 2uLL || *v2 != 100)
  {
    goto LABEL_13;
  }

  v3 = v2[1];
  if (v3 != 88)
  {
    if (v3 == 120)
    {
      *a1 = v2 + 2;
      if (result)
      {
        v14 = result;
        if (result)
        {
          v15 = result;
          v16 = *(a1 + 4904);
          v17 = v16[1];
          if ((v17 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v16 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v16)
            {
              goto LABEL_29;
            }

            v17 = 0;
            *v16 = *(a1 + 4904);
            v16[1] = 0;
            *(a1 + 4904) = v16;
          }

          v16[1] = v17 + 48;
          v18 = v16 + v17;
          result = v18 + 16;
          v18[24] = 81;
          *(v18 + 25) = *(v18 + 25) & 0xF000 | 0x540;
          *(v18 + 2) = &unk_1F1A376A8;
          *(v18 + 4) = v14;
          *(v18 + 5) = v15;
          v18[48] = 1;
          return result;
        }
      }

      return result;
    }

    if (v3 == 105)
    {
      *a1 = v2 + 2;
      if (result)
      {
        v7 = result;
        if (result)
        {
          v8 = result;
          v9 = *(a1 + 4904);
          v10 = v9[1];
          if ((v10 - 4032) > 0xFFFFFFFFFFFFF00FLL)
          {
LABEL_11:
            v9[1] = v10 + 48;
            v11 = v9 + v10;
            result = v11 + 16;
            v11[24] = 81;
            *(v11 + 25) = *(v11 + 25) & 0xF000 | 0x540;
            *(v11 + 2) = &unk_1F1A376A8;
            *(v11 + 4) = v7;
            *(v11 + 5) = v8;
            v11[48] = 0;
            return result;
          }

          v9 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (v9)
          {
            v10 = 0;
            *v9 = *(a1 + 4904);
            v9[1] = 0;
            *(a1 + 4904) = v9;
            goto LABEL_11;
          }

LABEL_29:
          std::terminate();
        }
      }

      return result;
    }

LABEL_13:
  }

  *a1 = v2 + 2;
  if (result)
  {
    v21 = result;
    if (result)
    {
      v23 = result;
      if (result)
      {
        v24 = result;
        v25 = *(a1 + 4904);
        v26 = v25[1];
        if ((v26 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v25 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v25)
          {
            goto LABEL_29;
          }

          v26 = 0;
          *v25 = *(a1 + 4904);
          v25[1] = 0;
          *(a1 + 4904) = v25;
        }

        v25[1] = v26 + 48;
        v27 = v25 + v26;
        result = v27 + 16;
        v27[24] = 82;
        *(v27 + 25) = *(v27 + 25) & 0xF000 | 0x540;
        *(v27 + 2) = &unk_1F1A37720;
        *(v27 + 4) = v21;
        *(v27 + 5) = v23;
        *(v27 + 6) = v24;
      }
    }
  }

  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::InitListExpr,decltype(nullptr),llvm::itanium_demangle::NodeArray>(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  v6[24] = 70;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A37798;
  *(v6 + 4) = 0;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 40) = result;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parsePointerToMemberConversionExpr(char **a1, size_t a2)
{
  if (result)
  {
    v5 = result;
    if (result)
    {
      v7 = *a1;
      v6 = a1[1];
      if (*a1 == v6)
      {
        return 0;
      }

      v8 = *a1;
      if (*v7 == 110)
      {
        v8 = v7 + 1;
        *a1 = v7 + 1;
      }

      if (v6 == v8 || (v9 = *v8, v9 < 0) || (v10 = MEMORY[0x1E69E9830], (*(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x400) == 0))
      {
        v11 = 0;
        v12 = 0;
        v13 = v8;
        if (v8 == v6)
        {
          return 0;
        }
      }

      else
      {
        while (1)
        {
          v14 = *v8;
          if (v14 < 0 || (*(v10 + 4 * v14 + 60) & 0x400) == 0)
          {
            break;
          }

          *a1 = ++v8;
          if (v8 == v6)
          {
            v15 = v6;
            goto LABEL_17;
          }
        }

        v15 = v8;
LABEL_17:
        v11 = v7;
        v12 = v15 - v7;
        v13 = v8;
        if (v8 == v6)
        {
          return 0;
        }
      }

      if (*v13 != 69)
      {
        return 0;
      }

      *a1 = v13 + 1;
      v16 = a1[613];
      v17 = *(v16 + 1);
      if ((v17 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v18 = result;
        v19 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v19)
        {
          std::terminate();
        }

        v16 = v19;
        v17 = 0;
        *v19 = a1[613];
        *(v19 + 1) = 0;
        a1[613] = v19;
        result = v18;
      }

      *(v16 + 1) = v17 + 48;
      v20 = &v16[v17];
      v20[24] = 69;
      *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x542;
      *(v20 + 2) = &unk_1F1A37810;
      *(v20 + 4) = v5;
      *(v20 + 5) = result;
      result = v20 + 16;
      *(v20 + 6) = v11;
      *(v20 + 7) = v12;
    }
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::EnclosingExpr,char const(&)[10],llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
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

  v6[1] = v7 + 64;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 60;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | v11 & 0x3F | 0x540;
  *(v8 + 2) = &unk_1F1A36D48;
  *(v8 + 4) = "noexcept ";
  *(v8 + 5) = 9;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *(v8 + 6) = v10;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseRequiresExpr(const void **a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 - *a1) < 2)
  {
    return 0;
  }

  if (*v2 == 20850)
  {
    v6 = v2 + 1;
    *a1 = v6;
    v7 = (a1[3] - a1[2]) >> 3;
    v8 = a1 + 5;
    while (v6 == v3 || *v6 != 95)
    {
      if (!result)
      {
        return result;
      }

      v10 = a1[3];
      if (v10 == a1[4])
      {
        v11 = result;
        v12 = a1[2];
        v13 = v10 - v12;
        if (v12 == v8)
        {
          v9 = malloc_type_malloc(2 * (v10 - v12), 0x2004093837F09uLL);
          if (!v9)
          {
LABEL_68:
            abort();
          }

          a2 = a1[2];
          v14 = a1[3];
          if (v14 != a2)
          {
            v15 = v9;
            memmove(v9, a2, v14 - a2);
            v9 = v15;
          }

          a1[2] = v9;
        }

        else
        {
          v9 = malloc_type_realloc(v12, 2 * (v10 - v12), 0x2004093837F09uLL);
          a1[2] = v9;
          if (!v9)
          {
            goto LABEL_68;
          }
        }

        v10 = &v9[v13];
        a1[4] = &v9[8 * (v13 >> 2)];
        result = v11;
      }

      *v10 = result;
      a1[3] = v10 + 8;
      v6 = *a1;
      v3 = a1[1];
    }

    *a1 = v6 + 1;
    v18 = *a1;
    if (*a1 == a1[1])
    {
      return 0;
    }
  }

  else
  {
    if (*v2 != 29042)
    {
      return 0;
    }

    v16 = 0;
    v17 = 0;
    v18 = v2 + 1;
    *a1 = v18;
    if (v18 == v3)
    {
      return 0;
    }
  }

  v50 = v17;
  v51 = v16;
  v52 = (a1[3] - a1[2]) >> 3;
  while (1)
  {
    v19 = *v18;
    if (v19 == 81)
    {
      *a1 = v18 + 1;
      if (!result)
      {
        return result;
      }

      v31 = result;
      v32 = a1[613];
      v33 = v32[1];
      if ((v33 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v32)
        {
          goto LABEL_69;
        }

        v33 = 0;
        *v32 = a1[613];
        v32[1] = 0;
        a1[613] = v32;
      }

      v32[1] = v33 + 32;
      v34 = v32 + v33;
      v29 = v34 + 16;
      v34[24] = 86;
      *(v34 + 25) = *(v34 + 25) & 0xF000 | 0x540;
      *(v34 + 2) = &unk_1F1A37978;
      *(v34 + 4) = v31;
      v30 = a1[3];
      if (v30 != a1[4])
      {
        goto LABEL_60;
      }

      goto LABEL_52;
    }

    if (v19 == 84)
    {
      *a1 = v18 + 1;
      if (!result)
      {
        return result;
      }

      v25 = result;
      v26 = a1[613];
      v27 = v26[1];
      if ((v27 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v26 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v26)
        {
          goto LABEL_69;
        }

        v27 = 0;
        *v26 = a1[613];
        v26[1] = 0;
        a1[613] = v26;
      }

      v26[1] = v27 + 32;
      v28 = v26 + v27;
      v29 = v28 + 16;
      v28[24] = 85;
      *(v28 + 25) = *(v28 + 25) & 0xF000 | 0x540;
      *(v28 + 2) = &unk_1F1A37900;
      *(v28 + 4) = v25;
      v30 = a1[3];
      if (v30 != a1[4])
      {
        goto LABEL_60;
      }

      goto LABEL_52;
    }

    if (v19 != 88)
    {
      return 0;
    }

    *a1 = v18 + 1;
    if (!result)
    {
      return result;
    }

    v20 = result;
    v21 = *a1;
    v22 = a1[1];
    if (*a1 == v22 || *v21 != 78)
    {
      v23 = 0;
      if (v21 == v22)
      {
LABEL_30:
        v24 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      *a1 = ++v21;
      v23 = 1;
      if (v21 == v22)
      {
        goto LABEL_30;
      }
    }

    if (*v21 == 82)
    {
      *a1 = v21 + 1;
      v24 = result;
      if (!result)
      {
        return result;
      }

LABEL_46:
      v35 = a1[613];
      v36 = v35[1];
      if ((v36 - 4032) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v24 = 0;
    v35 = a1[613];
    v36 = v35[1];
    if ((v36 - 4032) > 0xFFFFFFFFFFFFF00FLL)
    {
      goto LABEL_51;
    }

LABEL_49:
    v35 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v35)
    {
      goto LABEL_69;
    }

    v36 = 0;
    *v35 = a1[613];
    v35[1] = 0;
    a1[613] = v35;
LABEL_51:
    v35[1] = v36 + 48;
    v37 = v35 + v36;
    v29 = v37 + 16;
    v37[24] = 84;
    *(v37 + 25) = *(v37 + 25) & 0xF000 | 0x540;
    *(v37 + 2) = &unk_1F1A37888;
    *(v37 + 4) = v20;
    v37[40] = v23;
    *(v37 + 6) = v24;
    v30 = a1[3];
    if (v30 != a1[4])
    {
      goto LABEL_60;
    }

LABEL_52:
    v38 = a1[2];
    v39 = v30 - v38;
    if (v38 == a1 + 5)
    {
      v40 = malloc_type_malloc(2 * (v30 - v38), 0x2004093837F09uLL);
      if (!v40)
      {
        goto LABEL_68;
      }

      v16 = a1[2];
      v41 = a1[3];
      if (v41 != v16)
      {
        v42 = v40;
        memmove(v40, v16, v41 - v16);
        v40 = v42;
      }

      a1[2] = v40;
    }

    else
    {
      v40 = malloc_type_realloc(v38, 2 * (v30 - v38), 0x2004093837F09uLL);
      a1[2] = v40;
      if (!v40)
      {
        goto LABEL_68;
      }
    }

    v30 = &v40[v39];
    a1[4] = &v40[8 * (v39 >> 2)];
LABEL_60:
    *v30 = v29;
    a1[3] = v30 + 8;
    v18 = *a1;
    v43 = a1[1];
    if (*a1 == v43)
    {
      return 0;
    }

    if (*v18 == 69)
    {
      break;
    }

    result = 0;
    if (v18 == v43)
    {
      return result;
    }
  }

  *a1 = v18 + 1;
  v46 = v45;
  v47 = a1[613];
  v48 = v47[1];
  if ((v48 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v47 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v47)
    {
LABEL_69:
      std::terminate();
    }

    v48 = 0;
    *v47 = a1[613];
    v47[1] = 0;
    a1[613] = v47;
  }

  v47[1] = v48 + 48;
  v49 = v47 + v48;
  result = v49 + 16;
  v49[24] = 83;
  *(v49 + 25) = *(v49 + 25) & 0xF000 | 0x540;
  *(v49 + 2) = &unk_1F1A379F0;
  *(v49 + 4) = v50;
  *(v49 + 5) = v51;
  *(v49 + 6) = v44;
  *(v49 + 7) = v46;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSubobjectExpr(char **a1, size_t a2)
{
  if (!result)
  {
    return result;
  }

  v44 = result;
  if (!result)
  {
    return result;
  }

  v6 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v10 = 0;
    v11 = 0;
    v13 = a1[2];
    v12 = a1[3];
    goto LABEL_41;
  }

  v7 = *a1;
  if (*v6 == 110)
  {
    v7 = v6 + 1;
    *a1 = v6 + 1;
  }

  if (v5 != v7)
  {
    v8 = *v7;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = MEMORY[0x1E69E9830];
      if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x400) != 0)
      {
        while (1)
        {
          v31 = *v7;
          if (v31 < 0 || (*(v9 + 4 * v31 + 60) & 0x400) == 0)
          {
            break;
          }

          *a1 = ++v7;
          if (v7 == v5)
          {
            v32 = v5;
            goto LABEL_56;
          }
        }

        v32 = v7;
LABEL_56:
        v10 = v6;
        v11 = v32 - v6;
        v6 = v7;
        v13 = a1[2];
        v12 = a1[3];
        if (v7 != v5)
        {
          goto LABEL_10;
        }

LABEL_41:
        if (v6 != v5)
        {
          goto LABEL_44;
        }

        goto LABEL_47;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v6 = v7;
  v13 = a1[2];
  v12 = a1[3];
  if (v7 == v5)
  {
    goto LABEL_41;
  }

LABEL_10:
  v41 = v13;
  v42 = v12;
  v43 = result;
  v14 = MEMORY[0x1E69E9830];
  while (*v6 == 95)
  {
    v15 = v6 + 1;
    *a1 = v6 + 1;
    if (v5 == v6 + 1 || (v16 = *v15, v16 < 0) || (*(v14 + 4 * v16 + 60) & 0x400) == 0)
    {
      v15 = 0;
      v17 = 0;
      v18 = a1[613];
      v19 = *(v18 + 1);
      if ((v19 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = v15;
      while (1)
      {
        v27 = *v26;
        if (v27 < 0 || (*(v14 + 4 * v27 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v26;
        if (v26 == v5)
        {
          v26 = v5;
          break;
        }
      }

      v17 = v26 - v15;
      v18 = a1[613];
      v19 = *(v18 + 1);
      if ((v19 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_17:
        v18 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v18)
        {
          goto LABEL_58;
        }

        v19 = 0;
        *v18 = a1[613];
        *(v18 + 1) = 0;
        a1[613] = v18;
      }
    }

    *(v18 + 1) = v19 + 32;
    v20 = &v18[v19];
    v21 = v20 + 16;
    v20[24] = 8;
    *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
    *(v20 + 2) = &unk_1F1A366B8;
    *(v20 + 4) = v15;
    *(v20 + 5) = v17;
    v22 = a1[3];
    if (v22 == a1[4])
    {
      v23 = a1[2];
      v24 = v22 - v23;
      if (v23 == (a1 + 5))
      {
        v25 = malloc_type_malloc(2 * (v22 - v23), 0x2004093837F09uLL);
        if (!v25)
        {
LABEL_59:
          abort();
        }

        v28 = a1[2];
        v29 = a1[3];
        if (v29 != v28)
        {
          v30 = v25;
          memmove(v25, v28, v29 - v28);
          v25 = v30;
        }

        a1[2] = v25;
      }

      else
      {
        v25 = malloc_type_realloc(v23, 2 * (v22 - v23), 0x2004093837F09uLL);
        a1[2] = v25;
        if (!v25)
        {
          goto LABEL_59;
        }
      }

      a1[4] = &v25[8 * (v24 >> 2)];
      *&v25[v24] = v21;
      a1[3] = &v25[v24 + 8];
      v6 = *a1;
      v5 = a1[1];
      if (*a1 == v5)
      {
        return 0;
      }
    }

    else
    {
      *v22 = v21;
      a1[3] = v22 + 8;
      v6 = *a1;
      v5 = a1[1];
      if (*a1 == v5)
      {
        return 0;
      }
    }
  }

  result = v43;
  v12 = v42;
  v13 = v41;
  if (v6 == v5)
  {
LABEL_47:
    v33 = 0;
    if (v6 == v5)
    {
      return 0;
    }

    goto LABEL_48;
  }

LABEL_44:
  if (*v6 != 112)
  {
    goto LABEL_47;
  }

  *a1 = ++v6;
  v33 = 1;
  if (v6 == v5)
  {
    return 0;
  }

LABEL_48:
  if (*v6 != 69)
  {
    return 0;
  }

  v34 = result;
  *a1 = v6 + 1;
  v37 = v36;
  v38 = a1[613];
  v39 = *(v38 + 1);
  if ((v39 - 4000) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v38 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v38)
    {
LABEL_58:
      std::terminate();
    }

    v39 = 0;
    *v38 = a1[613];
    *(v38 + 1) = 0;
    a1[613] = v38;
  }

  *(v38 + 1) = v39 + 80;
  v40 = &v38[v39];
  result = v40 + 16;
  v40[24] = 59;
  *(v40 + 25) = *(v40 + 25) & 0xF000 | 0x540;
  *(v40 + 2) = &unk_1F1A37A68;
  *(v40 + 4) = v44;
  *(v40 + 5) = v34;
  *(v40 + 6) = v10;
  *(v40 + 7) = v11;
  *(v40 + 8) = v35;
  *(v40 + 9) = v37;
  v40[80] = v33;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ParameterPackExpansion,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
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
  v6[24] = 42;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A37630;
  *(v6 + 4) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SizeofParamPackExpr,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
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
  v6[24] = 62;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A37AE0;
  *(v6 + 4) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::EnclosingExpr,char const(&)[11],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
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

  v4[1] = v5 + 64;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 60;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A36D48;
  *(v6 + 4) = "sizeof... ";
  *(v6 + 5) = 10;
  *(v6 + 7) = 0;
  *(v6 + 8) = 0;
  *(v6 + 6) = v8;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NodeArrayNode,llvm::itanium_demangle::NodeArray>(uint64_t a1, __n128 *a2)
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
  v6[24] = 0;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A37B58;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 2) = result;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::InitListExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray>(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
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

  v6[1] = v7 + 48;
  v8 = v6 + v7;
  v9 = *a2;
  v8[24] = 70;
  v10 = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = &unk_1F1A37798;
  *(v8 + 4) = v9;
  result = *a3;
  *(v8 + 25) = v10;
  *(v8 + 40) = result;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ThrowExpr,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
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
  v6[24] = 72;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A37BD0;
  *(v6 + 4) = v8;
  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnresolvedName(unsigned __int8 **a1, size_t a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  if (v6 >= 3)
  {
    if (*v4 == 29299 && v4[2] == 78)
    {
      *a1 = v4 + 3;
      if (v20)
      {
        v22 = v20;
        if (a1[1] == *a1 || **a1 != 73)
        {
LABEL_34:
          while (1)
          {
            v30 = *a1;
            if (*a1 != a1[1] && *v30 == 69)
            {
              break;
            }

            if (!v31)
            {
              return;
            }

            v32 = v31;
            v33 = a1[613];
            v34 = *(v33 + 1);
            if ((v34 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
            {
              v33 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
              if (!v33)
              {
                goto LABEL_78;
              }

              v34 = 0;
              *v33 = a1[613];
              *(v33 + 1) = 0;
              a1[613] = v33;
            }

            *(v33 + 1) = v34 + 32;
            v29 = &v33[v34];
            v29[24] = 23;
            *(v29 + 25) = *(v29 + 25) & 0xF000 | 0x540;
            *(v29 + 2) = &unk_1F1A37C48;
            *(v29 + 4) = v22;
            *(v29 + 5) = v32;
            v22 = (v29 + 16);
          }

          *a1 = v30 + 1;
          if (v43)
          {
            v44 = v43;
            v45 = a1[613];
            v46 = *(v45 + 1);
            if ((v46 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
            {
              v45 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
              if (!v45)
              {
                goto LABEL_78;
              }

              v46 = 0;
              *v45 = a1[613];
              *(v45 + 1) = 0;
              a1[613] = v45;
            }

            *(v45 + 1) = v46 + 32;
            v47 = &v45[v46];
            v47[24] = 23;
            *(v47 + 25) = *(v47 + 25) & 0xF000 | 0x540;
            *(v47 + 2) = &unk_1F1A37C48;
            *(v47 + 4) = v22;
            *(v47 + 5) = v44;
            return;
          }
        }

        else
        {
          if (v23)
          {
            v24 = a1[613];
            v25 = *(v24 + 1);
            if ((v25 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
            {
              v26 = v23;
              v27 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
              if (!v27)
              {
                goto LABEL_78;
              }

              v24 = v27;
              v25 = 0;
              *v27 = a1[613];
              *(v27 + 1) = 0;
              a1[613] = v27;
              v23 = v26;
            }

            *(v24 + 1) = v25 + 32;
            v28 = &v24[v25];
            v28[24] = 45;
            *(v28 + 25) = *(v28 + 25) & 0xF000 | 0x540;
            *(v28 + 2) = &unk_1F1A383C8;
            *(v28 + 4) = v22;
            *(v28 + 5) = v23;
            v22 = (v28 + 16);
            goto LABEL_34;
          }
        }
      }

      return;
    }
  }

  else if (v6 != 2)
  {
    goto LABEL_9;
  }

  if (*v4 != 29299)
  {
LABEL_9:
    if (v8 && v2)
    {
      v9 = a1[613];
      v10 = *(v9 + 1);
      if ((v10 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_14:
        *(v9 + 1) = v10 + 32;
        v13 = &v9[v10];
        v13[24] = 46;
        *(v13 + 25) = *(v13 + 25) & 0xF000 | 0x540;
        *(v13 + 2) = &unk_1F1A37E28;
        *(v13 + 4) = v8;
        return;
      }

      v11 = v8;
      v12 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v12)
      {
        v9 = v12;
        v10 = 0;
        *v12 = a1[613];
        *(v12 + 1) = 0;
        a1[613] = v12;
        v8 = v11;
        goto LABEL_14;
      }

LABEL_78:
      std::terminate();
    }

    return;
  }

  v14 = v4 + 2;
  *a1 = v14;
  if (v5 == v14)
  {
    if ((*(MEMORY[0x1E69E9830] + 60) & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

  v15 = *v14;
  if ((v15 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x400) != 0)
  {
LABEL_41:
    if (!v35)
    {
      return;
    }

    v36 = v35;
    if (v2)
    {
      v18 = 0;
      while (1)
      {
        v38 = a1[613];
        v39 = *(v38 + 1);
        if (v18)
        {
          if ((v39 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v38 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v38)
            {
              goto LABEL_78;
            }

            v39 = 0;
            *v38 = a1[613];
            *(v38 + 1) = 0;
            a1[613] = v38;
          }

          *(v38 + 1) = v39 + 32;
          v40 = &v38[v39];
          v40[24] = 23;
          *(v40 + 25) = *(v40 + 25) & 0xF000 | 0x540;
          *(v40 + 2) = &unk_1F1A37C48;
          *(v40 + 4) = v18;
          v18 = (v40 + 16);
          *(v40 + 5) = v36;
          v41 = *a1;
          if (*a1 == a1[1])
          {
            goto LABEL_44;
          }
        }

        else
        {
          if ((v39 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v38 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v38)
            {
              goto LABEL_78;
            }

            v39 = 0;
            *v38 = a1[613];
            *(v38 + 1) = 0;
            a1[613] = v38;
          }

          *(v38 + 1) = v39 + 32;
          v42 = &v38[v39];
          v18 = (v42 + 16);
          v42[24] = 46;
          *(v42 + 25) = *(v42 + 25) & 0xF000 | 0x540;
          *(v42 + 2) = &unk_1F1A37E28;
          *(v42 + 4) = v36;
          v41 = *a1;
          if (*a1 == a1[1])
          {
            goto LABEL_44;
          }
        }

        if (*v41 == 69)
        {
          goto LABEL_72;
        }

LABEL_44:
        v36 = v37;
        if (!v37)
        {
          return;
        }
      }
    }

    v18 = 0;
    while (1)
    {
      if (v18)
      {
        v49 = a1[613];
        v50 = *(v49 + 1);
        if ((v50 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v49 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v49)
          {
            goto LABEL_78;
          }

          v50 = 0;
          *v49 = a1[613];
          *(v49 + 1) = 0;
          a1[613] = v49;
        }

        *(v49 + 1) = v50 + 32;
        v51 = &v49[v50];
        v51[24] = 23;
        *(v51 + 25) = *(v51 + 25) & 0xF000 | 0x540;
        *(v51 + 2) = &unk_1F1A37C48;
        *(v51 + 4) = v18;
        *(v51 + 5) = v36;
        v18 = (v51 + 16);
        v41 = *a1;
        if (*a1 == a1[1])
        {
          goto LABEL_63;
        }
      }

      else
      {
        v18 = v36;
        v41 = *a1;
        if (*a1 == a1[1])
        {
          goto LABEL_63;
        }
      }

      if (*v41 == 69)
      {
LABEL_72:
        *a1 = v41 + 1;
        goto LABEL_73;
      }

LABEL_63:
      v36 = v48;
      if (!v48)
      {
        return;
      }
    }
  }

LABEL_19:
  v58 = v16;
  if (v16)
  {
    v18 = v16;
    if (a1[1] == *a1 || **a1 != 73)
    {
LABEL_73:
      if (v52)
      {
        v53 = v52;
        v54 = a1[613];
        v55 = *(v54 + 1);
        if ((v55 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v54 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v54)
          {
            goto LABEL_78;
          }

          v55 = 0;
          *v54 = a1[613];
          *(v54 + 1) = 0;
          a1[613] = v54;
        }

        *(v54 + 1) = v55 + 32;
        v56 = &v54[v55];
        v56[24] = 23;
        *(v56 + 25) = *(v56 + 25) & 0xF000 | 0x540;
        *(v56 + 2) = &unk_1F1A37C48;
        *(v56 + 4) = v18;
        *(v56 + 5) = v53;
      }
    }

    else
    {
      v57 = v19;
      if (v19)
      {
        goto LABEL_73;
      }
    }
  }
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::BinaryExpr,llvm::itanium_demangle::Node *&,std::string_view &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec &>(uint64_t a1, uint64_t *a2, __n128 *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *(a1 + 4904);
  v11 = v10[1];
  if ((v11 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v11 = 0;
    *v10 = *(a1 + 4904);
    v10[1] = 0;
    *(a1 + 4904) = v10;
  }

  v10[1] = v11 + 48;
  v12 = v10 + v11;
  v13 = *a2;
  v14 = *a4;
  v15 = *a5;
  v12[24] = 54;
  v16 = *(v12 + 25) & 0xF000 | v15 & 0x3F;
  *(v12 + 2) = &unk_1F1A36820;
  *(v12 + 4) = v13;
  result = *a3;
  *(v12 + 25) = v16 | 0x540;
  *(v12 + 40) = result;
  *(v12 + 7) = v14;
  return result;
}

char *llvm::itanium_demangle::BinaryExpr::printLeft(uint64_t a1, char **a2)
{
  if (*(a2 + 8))
  {
    goto LABEL_2;
  }

  v35 = *(a1 + 24);
  v36 = *(a1 + 32);
  if (v36 != 2)
  {
    if (v36 == 1 && *v35 == 62)
    {
      goto LABEL_44;
    }

LABEL_2:
    v4 = 0;
    goto LABEL_3;
  }

  if (*v35 != 15934)
  {
    goto LABEL_2;
  }

LABEL_44:
  *(a2 + 8) = 1;
  v37 = *a2;
  v38 = a2[1];
  v39 = v38 + 1;
  v40 = a2[2];
  if ((v38 + 1) > v40)
  {
    v41 = (v38 + 993);
    if (2 * v40 <= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = 2 * v40;
    }

    a2[2] = v42;
    v37 = malloc_type_realloc(v37, v42, 0x100004077774924uLL);
    *a2 = v37;
    if (!v37)
    {
      goto LABEL_51;
    }

    v38 = a2[1];
    v39 = v38 + 1;
  }

  a2[1] = v39;
  v38[v37] = 40;
  v4 = 1;
LABEL_3:
  v5 = *(a1 + 9);
  v6 = v5 << 10;
  v7 = (v5 << 10);
  v8 = v5 << 26 >> 26;
  if (v7 == 17408)
  {
    v9 = 15;
  }

  else
  {
    v9 = v8;
  }

  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, v9, v7 != 17408);
  if (*(a1 + 32) == 1)
  {
    v10 = *(a1 + 24);
    if (*v10 == 44)
    {
      v11 = 1;
      v12 = *a2;
      v13 = a2[1];
      v14 = v13 + 1;
      v15 = a2[2];
      if ((v13 + 1) <= v15)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }
  }

  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  if ((v17 + 1) > v18)
  {
    v19 = (v17 + 993);
    v20 = 2 * v18;
    if (v20 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    a2[2] = v21;
    v16 = malloc_type_realloc(v16, v21, 0x100004077774924uLL);
    *a2 = v16;
    if (!v16)
    {
      goto LABEL_51;
    }

    v17 = a2[1];
  }

  v17[v16] = 32;
  v22 = (a2[1] + 1);
  a2[1] = v22;
  v11 = *(a1 + 32);
  if (v11)
  {
    v10 = *(a1 + 24);
    v12 = *a2;
    v13 = a2[1];
    v14 = &v13[v11];
    v15 = a2[2];
    if (&v13[v11] <= v15)
    {
LABEL_23:
      memcpy(&v13[v12], v10, v11);
      v22 = &a2[1][v11];
      a2[1] = v22;
      goto LABEL_24;
    }

LABEL_18:
    if (2 * v15 <= (v14 + 992))
    {
      v23 = (v14 + 992);
    }

    else
    {
      v23 = 2 * v15;
    }

    a2[2] = v23;
    v12 = malloc_type_realloc(v12, v23, 0x100004077774924uLL);
    *a2 = v12;
    if (!v12)
    {
      goto LABEL_51;
    }

    v13 = a2[1];
    goto LABEL_23;
  }

LABEL_24:
  v24 = a2[2];
  v25 = *a2;
  if (v22 + 1 > v24)
  {
    v26 = v22 + 993;
    v27 = 2 * v24;
    if (v27 <= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    a2[2] = v28;
    v25 = malloc_type_realloc(v25, v28, 0x100004077774924uLL);
    *a2 = v25;
    if (!v25)
    {
      goto LABEL_51;
    }

    v22 = a2[1];
  }

  v25[v22] = 32;
  ++a2[1];
  result = llvm::itanium_demangle::Node::printAsOperand(*(a1 + 40), a2, *(a1 + 9) << 26 >> 26, v6 == 17408);
  if (!v4)
  {
    return result;
  }

  --*(a2 + 8);
  result = *a2;
  v30 = a2[1];
  v31 = v30 + 1;
  v32 = a2[2];
  if ((v30 + 1) > v32)
  {
    v33 = (v30 + 993);
    if (2 * v32 <= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = 2 * v32;
    }

    a2[2] = v34;
    result = malloc_type_realloc(result, v34, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v30 = a2[1];
      v31 = v30 + 1;
      goto LABEL_37;
    }

LABEL_51:
    abort();
  }

LABEL_37:
  a2[1] = v31;
  v30[result] = 41;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PrefixExpr,std::string_view &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec &>(uint64_t a1, __n128 *a2, uint64_t *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 48;
  v10 = v8 + v9;
  v11 = *a3;
  v12 = *a4;
  v10[24] = 66;
  v13 = *(v10 + 25) & 0xF000 | v12 & 0x3F;
  *(v10 + 2) = &unk_1F1A36898;
  result = *a2;
  *(v10 + 25) = v13 | 0x540;
  *(v10 + 2) = result;
  *(v10 + 6) = v11;
  return result;
}

void *llvm::itanium_demangle::PrefixExpr::printLeft(uint64_t a1, char **a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 16);
    v6 = *a2;
    v7 = a2[1];
    v8 = &v7[v4];
    v9 = a2[2];
    if (&v7[v4] > v9)
    {
      if (2 * v9 <= (v8 + 992))
      {
        v10 = v8 + 992;
      }

      else
      {
        v10 = (2 * v9);
      }

      a2[2] = v10;
      v6 = malloc_type_realloc(v6, v10, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    memcpy(&v7[v6], v5, v4);
    a2[1] += v4;
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 9) << 26 >> 26;

  return llvm::itanium_demangle::Node::printAsOperand(v11, a2, v12, 0);
}

void *llvm::itanium_demangle::PostfixExpr::printLeft(uint64_t a1, char **a2)
{
  result = llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 1);
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

void *llvm::itanium_demangle::ArraySubscriptExpr::printLeft(uint64_t a1, uint64_t a2)
{
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 0);
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_14;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  *(v4 + v5) = 91;
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 24), a2, 19, 0);
  --*(a2 + 32);
  result = *a2;
  v11 = *(a2 + 8);
  v12 = v11 + 1;
  v13 = *(a2 + 16);
  if (v11 + 1 > v13)
  {
    v14 = v11 + 993;
    if (2 * v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = 2 * v13;
    }

    *(a2 + 16) = v15;
    result = malloc_type_realloc(result, v15, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v11 = *(a2 + 8);
      v12 = v11 + 1;
      goto LABEL_13;
    }

LABEL_14:
    abort();
  }

LABEL_13:
  *(a2 + 8) = v12;
  *(result + v11) = 93;
  return result;
}

void *llvm::itanium_demangle::MemberExpr::printLeft(uint64_t a1, char **a2)
{
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 1);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *a2;
    v7 = a2[1];
    v8 = &v7[v4];
    v9 = a2[2];
    if (&v7[v4] > v9)
    {
      if (2 * v9 <= (v8 + 992))
      {
        v10 = v8 + 992;
      }

      else
      {
        v10 = (2 * v9);
      }

      a2[2] = v10;
      v6 = malloc_type_realloc(v6, v10, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    memcpy(&v7[v6], v5, v4);
    a2[1] += v4;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 9) << 26 >> 26;

  return llvm::itanium_demangle::Node::printAsOperand(v11, a2, v12, 0);
}

char *llvm::itanium_demangle::NewExpr::printLeft(uint64_t a1, char **a2)
{
  v4 = a2[1];
  if (*(a1 + 56) == 1)
  {
    v5 = a2[2];
    v6 = *a2;
    if (v4 + 2 > v5)
    {
      v7 = v4 + 994;
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
        goto LABEL_88;
      }

      v4 = a2[1];
    }

    *&v6[v4] = 14906;
    v4 = (a2[1] + 2);
    a2[1] = v4;
  }

  v10 = a2[2];
  v11 = *a2;
  if (v4 + 3 > v10)
  {
    v12 = v4 + 995;
    v13 = 2 * v10;
    if (v13 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    a2[2] = v14;
    v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_88;
    }

    v4 = a2[1];
  }

  v15 = &v11[v4];
  v15[2] = 119;
  *v15 = 25966;
  v16 = a2[1];
  v17 = (v16 + 3);
  a2[1] = v16 + 3;
  if (*(a1 + 57) == 1)
  {
    v18 = a2[2];
    v19 = *a2;
    if ((v16 + 5) > v18)
    {
      if (2 * v18 <= (v16 + 997))
      {
        v20 = (v16 + 997);
      }

      else
      {
        v20 = 2 * v18;
      }

      a2[2] = v20;
      v19 = malloc_type_realloc(v19, v20, 0x100004077774924uLL);
      *a2 = v19;
      if (!v19)
      {
        goto LABEL_88;
      }

      v17 = a2[1];
    }

    *&v19[v17] = 23899;
    v17 = (a2[1] + 2);
    a2[1] = v17;
  }

  if (*(a1 + 24))
  {
    ++*(a2 + 8);
    v21 = v17 + 1;
    v22 = a2[2];
    v23 = *a2;
    if (v17 + 1 > v22)
    {
      v24 = v17 + 993;
      if (2 * v22 <= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = 2 * v22;
      }

      a2[2] = v25;
      v23 = malloc_type_realloc(v23, v25, 0x100004077774924uLL);
      *a2 = v23;
      if (!v23)
      {
        goto LABEL_88;
      }

      v17 = a2[1];
      v21 = v17 + 1;
    }

    a2[1] = v21;
    v23[v17] = 40;
    v26 = a2[1];
    if (*(a1 + 24))
    {
      v27 = 0;
      v28 = 1;
      while (1)
      {
        v29 = v26;
        if ((v28 & 1) == 0)
        {
          v30 = a2[2];
          v31 = *a2;
          if (v26 + 2 <= v30)
          {
            v34 = v26;
          }

          else
          {
            v32 = 2 * v30;
            if (v32 <= v26 + 994)
            {
              v33 = v26 + 994;
            }

            else
            {
              v33 = v32;
            }

            a2[2] = v33;
            v31 = malloc_type_realloc(v31, v33, 0x100004077774924uLL);
            *a2 = v31;
            if (!v31)
            {
              goto LABEL_88;
            }

            v34 = a2[1];
          }

          *&v31[v34] = 8236;
          v29 = (a2[1] + 2);
          a2[1] = v29;
        }

        llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 16) + 8 * v27), a2, 18, 0);
        if (v29 == a2[1])
        {
          a2[1] = v26;
          if (++v27 == *(a1 + 24))
          {
            break;
          }
        }

        else
        {
          v28 = 0;
          v26 = a2[1];
          if (++v27 == *(a1 + 24))
          {
            break;
          }
        }
      }
    }

    --*(a2 + 8);
    v35 = v26 + 1;
    v36 = a2[2];
    v37 = *a2;
    if (v26 + 1 > v36)
    {
      v38 = 2 * v36;
      if (v38 <= v26 + 993)
      {
        v39 = v26 + 993;
      }

      else
      {
        v39 = v38;
      }

      a2[2] = v39;
      v37 = malloc_type_realloc(v37, v39, 0x100004077774924uLL);
      *a2 = v37;
      if (!v37)
      {
        goto LABEL_88;
      }

      v26 = a2[1];
      v35 = v26 + 1;
    }

    a2[1] = v35;
    v37[v26] = 41;
    v17 = a2[1];
  }

  v40 = a2[2];
  v41 = *a2;
  if (v17 + 1 > v40)
  {
    v42 = v17 + 993;
    v43 = 2 * v40;
    if (v43 <= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v43;
    }

    a2[2] = v44;
    v41 = malloc_type_realloc(v41, v44, 0x100004077774924uLL);
    *a2 = v41;
    if (!v41)
    {
      goto LABEL_88;
    }

    v17 = a2[1];
  }

  v41[v17] = 32;
  ++a2[1];
  v45 = *(a1 + 32);
  result = (*(*v45 + 32))(v45, a2);
  if ((*(v45 + 9) & 0xC0) != 0x40)
  {
    result = (*(*v45 + 40))(v45, a2);
  }

  if (*(a1 + 48))
  {
    ++*(a2 + 8);
    v47 = *a2;
    v48 = a2[1];
    v49 = v48 + 1;
    v50 = a2[2];
    if ((v48 + 1) > v50)
    {
      v51 = (v48 + 993);
      if (2 * v50 <= v51)
      {
        v52 = v51;
      }

      else
      {
        v52 = 2 * v50;
      }

      a2[2] = v52;
      v47 = malloc_type_realloc(v47, v52, 0x100004077774924uLL);
      *a2 = v47;
      if (!v47)
      {
        goto LABEL_88;
      }

      v48 = a2[1];
      v49 = v48 + 1;
    }

    a2[1] = v49;
    v48[v47] = 40;
    v53 = a2[1];
    if (*(a1 + 48))
    {
      v54 = 0;
      v55 = 1;
      while (1)
      {
        v56 = v53;
        if ((v55 & 1) == 0)
        {
          v57 = a2[2];
          v58 = *a2;
          if (v53 + 2 <= v57)
          {
            v61 = v53;
          }

          else
          {
            v59 = 2 * v57;
            if (v59 <= v53 + 994)
            {
              v60 = v53 + 994;
            }

            else
            {
              v60 = v59;
            }

            a2[2] = v60;
            v58 = malloc_type_realloc(v58, v60, 0x100004077774924uLL);
            *a2 = v58;
            if (!v58)
            {
              goto LABEL_88;
            }

            v61 = a2[1];
          }

          *&v58[v61] = 8236;
          v56 = (a2[1] + 2);
          a2[1] = v56;
        }

        llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 40) + 8 * v54), a2, 18, 0);
        if (v56 == a2[1])
        {
          a2[1] = v53;
          if (++v54 == *(a1 + 48))
          {
            break;
          }
        }

        else
        {
          v55 = 0;
          v53 = a2[1];
          if (++v54 == *(a1 + 48))
          {
            break;
          }
        }
      }
    }

    --*(a2 + 8);
    v62 = v53 + 1;
    v63 = a2[2];
    result = *a2;
    if (v53 + 1 <= v63)
    {
      goto LABEL_86;
    }

    v64 = 2 * v63;
    if (v64 <= v53 + 993)
    {
      v65 = v53 + 993;
    }

    else
    {
      v65 = v64;
    }

    a2[2] = v65;
    result = malloc_type_realloc(result, v65, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v53 = a2[1];
      v62 = v53 + 1;
LABEL_86:
      a2[1] = v62;
      result[v53] = 41;
      return result;
    }

LABEL_88:
    abort();
  }

  return result;
}

uint64_t llvm::itanium_demangle::DeleteExpr::printLeft(uint64_t a1, char **a2)
{
  v4 = a2[1];
  if (*(a1 + 24) == 1)
  {
    v5 = a2[2];
    v6 = *a2;
    if ((v4 + 2) > v5)
    {
      v7 = v4 + 994;
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
        goto LABEL_33;
      }

      v4 = a2[1];
    }

    *&v4[v6] = 14906;
    v4 = a2[1] + 2;
    a2[1] = v4;
  }

  v10 = a2[2];
  v11 = *a2;
  if ((v4 + 6) > v10)
  {
    v12 = v4 + 998;
    v13 = 2 * v10;
    if (v13 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    a2[2] = v14;
    v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_33;
    }

    v4 = a2[1];
  }

  v15 = &v4[v11];
  *(v15 + 2) = 25972;
  *v15 = 1701602660;
  v16 = a2[1];
  v17 = v16 + 6;
  a2[1] = v16 + 6;
  if (*(a1 + 25) == 1)
  {
    v18 = a2[2];
    v19 = *a2;
    if ((v16 + 8) > v18)
    {
      if (2 * v18 <= (v16 + 1000))
      {
        v20 = v16 + 1000;
      }

      else
      {
        v20 = (2 * v18);
      }

      a2[2] = v20;
      v19 = malloc_type_realloc(v19, v20, 0x100004077774924uLL);
      *a2 = v19;
      if (!v19)
      {
        goto LABEL_33;
      }

      v17 = a2[1];
    }

    *&v17[v19] = 23899;
    v17 = a2[1] + 2;
    a2[1] = v17;
  }

  v21 = v17 + 1;
  v22 = a2[2];
  v23 = *a2;
  if ((v17 + 1) <= v22)
  {
    goto LABEL_29;
  }

  v24 = (v17 + 993);
  if (2 * v22 <= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = (2 * v22);
  }

  a2[2] = v25;
  v23 = malloc_type_realloc(v23, v25, 0x100004077774924uLL);
  *a2 = v23;
  if (!v23)
  {
LABEL_33:
    abort();
  }

  v17 = a2[1];
  v21 = v17 + 1;
LABEL_29:
  a2[1] = v21;
  v17[v23] = 32;
  v26 = *(a1 + 16);
  result = (*(*v26 + 32))(v26, a2);
  if ((*(v26 + 9) & 0xC0) != 0x40)
  {
    v28 = *(*v26 + 40);

    return v28(v26, a2);
  }

  return result;
}

char *llvm::itanium_demangle::CallExpr::printLeft(void *a1, char **a2)
{
  v4 = a1[2];
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  ++*(a2 + 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = v6 + 1;
  v8 = a2[2];
  if ((v6 + 1) > v8)
  {
    v9 = (v6 + 993);
    if (2 * v8 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 2 * v8;
    }

    a2[2] = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_30;
    }

    v6 = a2[1];
    v7 = v6 + 1;
  }

  a2[1] = v7;
  v6[v5] = 40;
  v11 = a2[1];
  if (a1[4])
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = v11;
      if ((v13 & 1) == 0)
      {
        v15 = a2[2];
        v16 = *a2;
        if (v11 + 2 <= v15)
        {
          v19 = v11;
        }

        else
        {
          v17 = 2 * v15;
          if (v17 <= v11 + 994)
          {
            v18 = v11 + 994;
          }

          else
          {
            v18 = v17;
          }

          a2[2] = v18;
          v16 = malloc_type_realloc(v16, v18, 0x100004077774924uLL);
          *a2 = v16;
          if (!v16)
          {
            goto LABEL_30;
          }

          v19 = a2[1];
        }

        *&v16[v19] = 8236;
        v14 = (a2[1] + 2);
        a2[1] = v14;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(a1[3] + 8 * v12), a2, 18, 0);
      if (v14 == a2[1])
      {
        a2[1] = v11;
        if (++v12 == a1[4])
        {
          break;
        }
      }

      else
      {
        v13 = 0;
        v11 = a2[1];
        if (++v12 == a1[4])
        {
          break;
        }
      }
    }
  }

  --*(a2 + 8);
  v20 = v11 + 1;
  v21 = a2[2];
  result = *a2;
  if (v11 + 1 > v21)
  {
    v23 = 2 * v21;
    if (v23 <= v11 + 993)
    {
      v24 = v11 + 993;
    }

    else
    {
      v24 = v23;
    }

    a2[2] = v24;
    result = malloc_type_realloc(result, v24, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v11 = a2[1];
      v20 = v11 + 1;
      goto LABEL_29;
    }

LABEL_30:
    abort();
  }

LABEL_29:
  a2[1] = v20;
  result[v11] = 41;
  return result;
}

char *llvm::itanium_demangle::ConversionExpr::printLeft(void *a1, char **a2)
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
      goto LABEL_42;
    }

    v5 = a2[1];
    v6 = v5 + 1;
  }

  a2[1] = v6;
  v5[v4] = 40;
  v10 = a1[2];
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  --*(a2 + 8);
  v11 = *a2;
  v12 = a2[1];
  v13 = v12 + 1;
  v14 = a2[2];
  if ((v12 + 1) > v14)
  {
    v15 = (v12 + 993);
    if (2 * v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = 2 * v14;
    }

    a2[2] = v16;
    v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_42;
    }

    v12 = a2[1];
    v13 = v12 + 1;
  }

  a2[1] = v13;
  v12[v11] = 41;
  ++*(a2 + 8);
  v17 = *a2;
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
      v22 = 2 * v20;
    }

    a2[2] = v22;
    v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_42;
    }

    v18 = a2[1];
    v19 = v18 + 1;
  }

  a2[1] = v19;
  v18[v17] = 40;
  v23 = a2[1];
  if (a1[4])
  {
    v24 = 0;
    v25 = 1;
    while (1)
    {
      v26 = v23;
      if ((v25 & 1) == 0)
      {
        v27 = a2[2];
        v28 = *a2;
        if (v23 + 2 <= v27)
        {
          v31 = v23;
        }

        else
        {
          v29 = 2 * v27;
          if (v29 <= v23 + 994)
          {
            v30 = v23 + 994;
          }

          else
          {
            v30 = v29;
          }

          a2[2] = v30;
          v28 = malloc_type_realloc(v28, v30, 0x100004077774924uLL);
          *a2 = v28;
          if (!v28)
          {
            goto LABEL_42;
          }

          v31 = a2[1];
        }

        *&v28[v31] = 8236;
        v26 = (a2[1] + 2);
        a2[1] = v26;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(a1[3] + 8 * v24), a2, 18, 0);
      if (v26 == a2[1])
      {
        a2[1] = v23;
        if (++v24 == a1[4])
        {
          break;
        }
      }

      else
      {
        v25 = 0;
        v23 = a2[1];
        if (++v24 == a1[4])
        {
          break;
        }
      }
    }
  }

  --*(a2 + 8);
  v32 = v23 + 1;
  v33 = a2[2];
  result = *a2;
  if (v23 + 1 > v33)
  {
    v35 = 2 * v33;
    if (v35 <= v23 + 993)
    {
      v36 = v23 + 993;
    }

    else
    {
      v36 = v35;
    }

    a2[2] = v36;
    result = malloc_type_realloc(result, v36, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v23 = a2[1];
      v32 = v23 + 1;
      goto LABEL_41;
    }

LABEL_42:
    abort();
  }

LABEL_41:
  a2[1] = v32;
  result[v23] = 41;
  return result;
}

void *llvm::itanium_demangle::ConditionalExpr::printLeft(uint64_t a1, char **a2)
{
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 0);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 3) > v6)
  {
    v7 = v5 + 995;
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

  v10 = &v5[v4];
  v10[2] = 32;
  *v10 = 16160;
  a2[1] += 3;
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 24), a2, 19, 0);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 3) <= v13)
  {
    goto LABEL_13;
  }

  v14 = v12 + 995;
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
LABEL_16:
    abort();
  }

  v12 = a2[1];
LABEL_13:
  v17 = &v12[v11];
  v17[2] = 32;
  *v17 = 14880;
  a2[1] += 3;
  v18 = *(a1 + 32);

  return llvm::itanium_demangle::Node::printAsOperand(v18, a2, 17, 1);
}

char *llvm::itanium_demangle::CastExpr::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  if (v4)
  {
    v6 = *(a1 + 16);
    v7 = v5 + v4;
    v8 = *(a2 + 16);
    v9 = *a2;
    if (v5 + v4 > v8)
    {
      if (2 * v8 <= v7 + 992)
      {
        v10 = v7 + 992;
      }

      else
      {
        v10 = 2 * v8;
      }

      *(a2 + 16) = v10;
      v9 = malloc_type_realloc(v9, v10, 0x100004077774924uLL);
      *a2 = v9;
      if (!v9)
      {
        goto LABEL_34;
      }

      v5 = *(a2 + 8);
    }

    memcpy(&v9[v5], v6, v4);
    v5 = *(a2 + 8) + v4;
    *(a2 + 8) = v5;
  }

  v11 = *(a2 + 32);
  *(a2 + 32) = 0;
  v12 = *(a2 + 16);
  v13 = *a2;
  if (v5 + 1 > v12)
  {
    v14 = v5 + 993;
    v15 = 2 * v12;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    *(a2 + 16) = v16;
    v13 = malloc_type_realloc(v13, v16, 0x100004077774924uLL);
    *a2 = v13;
    if (!v13)
    {
      goto LABEL_34;
    }

    v5 = *(a2 + 8);
  }

  *(v13 + v5) = 60;
  ++*(a2 + 8);
  (*(**(a1 + 32) + 32))(*(a1 + 32), a2);
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 16);
  if (v18 + 1 > v19)
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

    *(a2 + 16) = v22;
    v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_34;
    }

    v18 = *(a2 + 8);
  }

  *(v17 + v18) = 62;
  v23 = *a2;
  v24 = *(a2 + 8);
  v25 = v24 + 1;
  *(a2 + 8) = v24 + 1;
  *(a2 + 32) = v11 + 1;
  v26 = v24 + 2;
  v27 = *(a2 + 16);
  if (v24 + 2 > v27)
  {
    if (2 * v27 <= v24 + 994)
    {
      v28 = v24 + 994;
    }

    else
    {
      v28 = 2 * v27;
    }

    *(a2 + 16) = v28;
    v23 = malloc_type_realloc(v23, v28, 0x100004077774924uLL);
    *a2 = v23;
    if (!v23)
    {
      goto LABEL_34;
    }

    v25 = *(a2 + 8);
    v26 = v25 + 1;
  }

  *(a2 + 8) = v26;
  *(v23 + v25) = 40;
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 40), a2, 19, 0);
  --*(a2 + 32);
  result = *a2;
  v30 = *(a2 + 8);
  v31 = v30 + 1;
  v32 = *(a2 + 16);
  if (v30 + 1 > v32)
  {
    v33 = v30 + 993;
    if (2 * v32 <= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = 2 * v32;
    }

    *(a2 + 16) = v34;
    result = malloc_type_realloc(result, v34, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v30 = *(a2 + 8);
      v31 = v30 + 1;
      goto LABEL_33;
    }

LABEL_34:
    abort();
  }

LABEL_33:
  *(a2 + 8) = v31;
  result[v30] = 41;
  return result;
}

char *llvm::itanium_demangle::EnclosingExpr::printLeft(void *a1, char **a2)
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
        goto LABEL_32;
      }

      v5 = a2[1];
    }

    memcpy(&v5[v9], v6, v4);
    v5 = &a2[1][v4];
    a2[1] = v5;
  }

  ++*(a2 + 8);
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
      goto LABEL_32;
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

  --*(a2 + 8);
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
    if (!result)
    {
      goto LABEL_32;
    }

    v18 = a2[1];
    v19 = v18 + 1;
  }

  a2[1] = v19;
  v18[result] = 41;
  v23 = a1[6];
  if (!v23)
  {
    return result;
  }

  v24 = a1[5];
  v25 = *a2;
  v26 = a2[1];
  v27 = &v26[v23];
  v28 = a2[2];
  if (&v26[v23] > v28)
  {
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
      goto LABEL_30;
    }

LABEL_32:
    abort();
  }

LABEL_30:
  result = memcpy(&v26[v25], v24, v23);
  a2[1] += v23;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseIntegerLiteral(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    return 0;
  }

  v5 = *a1;
  if (*v4 == 110)
  {
    v5 = v4 + 1;
    *a1 = v4 + 1;
  }

  if (v3 == v5)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 < 0)
  {
    return 0;
  }

  v7 = MEMORY[0x1E69E9830];
  if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) == 0)
  {
    return 0;
  }

  while (1)
  {
    v9 = *v5;
    if (v9 < 0 || (*(v7 + 4 * v9 + 60) & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v5;
    if (v5 == v3)
    {
      v10 = v3;
      goto LABEL_13;
    }
  }

  v10 = v5;
LABEL_13:
  v11 = v10 - v4;
  if (v10 == v4 || v5 == v3 || *v5 != 69)
  {
    return 0;
  }

  *a1 = v5 + 1;
  v12 = *(a1 + 4904);
  v13 = v12[1];
  if ((v13 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v15 = a2;
    v16 = a3;
    v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v17)
    {
      std::terminate();
    }

    v12 = v17;
    v13 = 0;
    *v17 = *(a1 + 4904);
    v17[1] = 0;
    *(a1 + 4904) = v17;
    a3 = v16;
    a2 = v15;
  }

  v12[1] = v13 + 48;
  v18 = v12 + v13;
  v18[24] = 77;
  *(v18 + 25) = *(v18 + 25) & 0xF000 | 0x540;
  *(v18 + 2) = &unk_1F1A36DC0;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  *(v18 + 6) = v4;
  *(v18 + 7) = v11;
  return v18 + 16;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::BoolExpr,int>(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4064) <= 0xFFFFFFFFFFFFF00FLL)
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

  v6 = v5 + 16;
  v4[1] = v6;
  result = v4 + v6;
  LOBYTE(v6) = *a2 != 0;
  result[8] = 73;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = &unk_1F1A36E38;
  result[11] = v6;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::StringLiteral,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
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
  v6[24] = 74;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_1F1A37018;
  *(v6 + 4) = v8;
  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnnamedTypeName(unsigned __int8 **a1, size_t size)
{
  if (size)
  {
    a1[84] = a1[83];
  }

  v4 = *a1;
  v3 = a1[1];
  if ((v3 - *a1) < 2)
  {
    return;
  }

  if (*v4 != 29781)
  {
    if (*v4 != 27733)
    {
      if (*v4 != 25173)
      {
        return;
      }

      v5 = v4 + 2;
      *a1 = v5;
      if (v3 != v5)
      {
        v6 = *v5;
        if ((v6 & 0x8000000000000000) == 0)
        {
          v7 = MEMORY[0x1E69E9830];
          if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) != 0)
          {
            do
            {
              v8 = *v5;
              if (v8 < 0)
              {
                break;
              }

              if ((*(v7 + 4 * v8 + 60) & 0x400) == 0)
              {
                break;
              }

              *a1 = ++v5;
            }

            while (v5 != v3);
          }
        }
      }

      if (v5 == v3 || *v5 != 95)
      {
        return;
      }

      *a1 = v5 + 1;
      v9 = a1[613];
      v10 = *(v9 + 1);
      if ((v10 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_19:
        *(v9 + 1) = v10 + 32;
        v11 = &v9[v10];
        v11[24] = 8;
        *(v11 + 25) = *(v11 + 25) & 0xF000 | 0x540;
        *(v11 + 2) = &unk_1F1A366B8;
        *(v11 + 4) = "'block-literal'";
        *(v11 + 5) = 15;
        return;
      }

      v9 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v9)
      {
        v10 = 0;
        *v9 = a1[613];
        *(v9 + 1) = 0;
        a1[613] = v9;
        goto LABEL_19;
      }

LABEL_113:
      std::terminate();
    }

    v20 = v4 + 2;
    *a1 = v20;
    v21 = a1[84];
    v22 = a1[83];
    v23 = v21 - v22;
    v24 = a1[98];
    a1[98] = ((v21 - v22) >> 3);
    v81 = a1;
    v82 = (v21 - v22) >> 3;
    v83[0] = v84;
    v83[1] = v84;
    v75 = v24;
    v83[2] = &v85;
    memset(v84, 0, sizeof(v84));
    if (v21 == a1[85])
    {
      if (v22 == (a1 + 86))
      {
        v25 = malloc_type_malloc(2 * v23, 0x2004093837F09uLL);
        if (!v25)
        {
          goto LABEL_112;
        }

        v29 = a1[83];
        v30 = a1[84];
        if (v30 != v29)
        {
          v31 = v25;
          memmove(v25, v29, v30 - v29);
          v25 = v31;
        }

        a1[83] = v25;
      }

      else
      {
        v25 = malloc_type_realloc(v22, 2 * v23, 0x2004093837F09uLL);
        a1[83] = v25;
        if (!v25)
        {
LABEL_112:
          abort();
        }
      }

      v21 = &v25[v23];
      a1[85] = &v25[8 * (v23 >> 2)];
      v20 = *a1;
      v3 = a1[1];
    }

    *v21 = v83;
    a1[84] = v21 + 8;
    v33 = a1[2];
    v32 = a1[3];
    for (i = v3 - v20; i; i = a1[1] - *a1)
    {
      if (*v20 != 84)
      {
        break;
      }

      v38 = i < 2 ? 0 : v20[1];
      v39 = memchr("yptnk", v38, 5uLL);
      if (!v39 || v39 - "yptnk" == -1)
      {
        break;
      }

      if (!v37)
      {
        goto LABEL_109;
      }

      v36 = a1[3];
      if (v36 == a1[4])
      {
        v40 = v37;
        v41 = a1[2];
        v42 = v36 - v41;
        if (v41 == (a1 + 5))
        {
          v35 = malloc_type_malloc(2 * (v36 - v41), 0x2004093837F09uLL);
          if (!v35)
          {
            goto LABEL_112;
          }

          v43 = a1[2];
          v44 = a1[3];
          if (v44 != v43)
          {
            v45 = v35;
            memmove(v35, v43, v44 - v43);
            v35 = v45;
          }

          a1[2] = v35;
        }

        else
        {
          v35 = malloc_type_realloc(v41, 2 * (v36 - v41), 0x2004093837F09uLL);
          a1[2] = v35;
          if (!v35)
          {
            goto LABEL_112;
          }
        }

        v36 = &v35[v42];
        a1[4] = &v35[8 * (v42 >> 2)];
        v37 = v40;
      }

      *v36 = v37;
      a1[3] = v36 + 8;
      v20 = *a1;
    }

    v46 = (v32 - v33) >> 3;
    v80.n128_u64[1] = v47;
    if (!v47)
    {
      a1[84] -= 8;
    }

    v79 = 0;
    v48 = *a1;
    v49 = a1[1];
    if (*a1 == v49)
    {
      goto LABEL_73;
    }

    if (*v48 == 81)
    {
      *a1 = v48 + 1;
      v50 = *(a1 + 778);
      *(a1 + 778) = 1;
      *(a1 + 778) = v50;
      v79 = v51;
      if (!v51)
      {
        goto LABEL_109;
      }

      v48 = *a1;
      v49 = a1[1];
    }

    if (v49 == v48 || *v48 != 118)
    {
LABEL_73:
      if (!v52)
      {
        goto LABEL_109;
      }

      while (1)
      {
        v54 = a1[3];
        if (v54 == a1[4])
        {
          v55 = v52;
          v56 = a1[2];
          v57 = v54 - v56;
          if (v56 == (a1 + 5))
          {
            v58 = malloc_type_malloc(2 * (v54 - v56), 0x2004093837F09uLL);
            if (!v58)
            {
              goto LABEL_112;
            }

            v53 = a1[2];
            v59 = a1[3];
            if (v59 != v53)
            {
              v60 = v58;
              memmove(v58, v53, v59 - v53);
              v58 = v60;
            }

            a1[2] = v58;
          }

          else
          {
            v58 = malloc_type_realloc(v56, 2 * (v54 - v56), 0x2004093837F09uLL);
            a1[2] = v58;
            if (!v58)
            {
              goto LABEL_112;
            }
          }

          v54 = &v58[v57];
          a1[4] = &v58[8 * (v57 >> 2)];
          v52 = v55;
        }

        *v54 = v52;
        a1[3] = v54 + 8;
        if (a1[1] != *a1)
        {
          v61 = **a1;
          if (v61 == 69 || v61 == 81)
          {
            break;
          }
        }

        if (!v52)
        {
          goto LABEL_109;
        }
      }
    }

    else
    {
      *a1 = v48 + 1;
    }

    *(&v78 + 1) = v62;
    v77 = 0;
    v64 = *a1;
    v63 = a1[1];
    if (*a1 == v63)
    {
      goto LABEL_109;
    }

    if (*v64 == 81)
    {
      *a1 = v64 + 1;
      v65 = *(a1 + 778);
      *(a1 + 778) = 1;
      *(a1 + 778) = v65;
      v77 = v66;
      if (!v66)
      {
        goto LABEL_109;
      }

      v64 = *a1;
      v63 = a1[1];
    }

    if (v64 != v63 && *v64 == 69)
    {
      v67 = v64 + 1;
      *a1 = v67;
      if (v63 != v67)
      {
        v68 = *v67;
        if ((v68 & 0x8000000000000000) == 0)
        {
          v69 = MEMORY[0x1E69E9830];
          if ((*(MEMORY[0x1E69E9830] + 4 * v68 + 60) & 0x400) != 0)
          {
            v70 = v67;
            while (1)
            {
              v71 = *v70;
              if (v71 < 0 || (*(v69 + 4 * v71 + 60) & 0x400) == 0)
              {
                break;
              }

              *a1 = ++v70;
              if (v70 == v63)
              {
                v72 = v63;
                goto LABEL_108;
              }
            }

            v72 = v70;
LABEL_108:
            v73 = v67;
            v74 = v72 - v67;
            v67 = v70;
            *&v76 = v73;
            *(&v76 + 1) = v74;
            if (v70 == v63)
            {
              goto LABEL_109;
            }

            goto LABEL_98;
          }
        }
      }

      v76 = 0uLL;
      if (v67 != v63)
      {
LABEL_98:
        if (*v67 == 95)
        {
          *a1 = v67 + 1;
        }
      }
    }

LABEL_109:
    v81[84] = &v81[83][8 * v82];
    if (v83[0] != v84)
    {
      free(v83[0]);
    }

    a1[98] = v75;
    return;
  }

  v12 = v4 + 2;
  *a1 = v12;
  if (v3 == v12 || (v13 = *v12, v13 < 0) || (v14 = MEMORY[0x1E69E9830], (*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x400) == 0))
  {
    v15 = 0;
    v16 = 0;
    if (v12 == v3)
    {
      return;
    }

LABEL_24:
    if (*v12 != 95)
    {
      return;
    }

    *a1 = v12 + 1;
    v17 = a1[613];
    v18 = *(v17 + 1);
    if ((v18 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v17)
      {
        goto LABEL_113;
      }

      v18 = 0;
      *v17 = a1[613];
      *(v17 + 1) = 0;
      a1[613] = v17;
    }

    *(v17 + 1) = v18 + 32;
    v19 = &v17[v18];
    v19[24] = 51;
    *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x540;
    *(v19 + 2) = &unk_1F1A37090;
    *(v19 + 4) = v15;
    *(v19 + 5) = v16;
    return;
  }

  v26 = v12;
  while (1)
  {
    v27 = *v26;
    if (v27 < 0 || (*(v14 + 4 * v27 + 60) & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v26;
    if (v26 == v3)
    {
      v28 = v3;
      goto LABEL_39;
    }
  }

  v28 = v26;
LABEL_39:
  v15 = v12;
  v16 = v28 - v12;
  v12 = v26;
  if (v26 != v3)
  {
    goto LABEL_24;
  }
}