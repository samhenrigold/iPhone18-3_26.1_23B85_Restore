uint64_t ___Z50C3DGeometrySubdivTopologyInfoInitCreasesAndCornersPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = 0;
    v5 = *(result + 40);
    do
    {
      v6 = *(a3 + 4 * v4);
      if (a4 - 1 == v4)
      {
        v7 = 0;
      }

      else
      {
        v7 = v4 + 1;
      }

      v8 = *(a3 + 4 * v7);
      if (v5 == v6 && *(result + 44) == v8 || v5 == v8 && *(result + 44) == v6)
      {
        *(*(*(result + 32) + 8) + 24) = 1;
      }

      ++v4;
    }

    while (a4 != v4);
  }

  return result;
}

void C3DSubdivCreateRefiner(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    v4 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivGetGPUPrimvarDataTypeHash(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 3);
  if (v12 == 1)
  {
    v13 = 21;
  }

  else
  {
    v13 = 20;
  }

  if (v12 == 2)
  {
    v14 = 22;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(a1 + 4);
  v16 = v14 & 3 | 8;
  v17 = v14 & 3 | 0xC;
  v18 = v14 & 0x13;
  if (v15 != 4)
  {
    v18 = v14;
  }

  if (v15 != 3)
  {
    v17 = v18;
  }

  if (v15 != 2)
  {
    v16 = v17;
  }

  v19 = v14 & 3;
  if (v15 == 1)
  {
    v14 &= 7u;
  }

  if (!*(a1 + 4))
  {
    v14 = v19;
  }

  if (*(a1 + 4) > 1u)
  {
    v14 = v16;
  }

  OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::Create(v3 + 104, (v14 << 32) | 1, 0);
}

void C3DSubdivInitCPUPrimvarContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  *(&v48[2] + 4) = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 40);
  if (!v6)
  {
    v7 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivGetGPUPrimvarDataTypeHash(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 0x40000000;
  v46[2] = ___Z30C3DSubdivInitCPUPrimvarContextP26C3DSubdivCPUPrimvarContextPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke;
  v46[3] = &__block_descriptor_tmp_15;
  v46[4] = a2;
  v46[5] = v5;
  C3DMeshApplySources(a3, 0, v46);
  v16 = *(v5 + 56) - *(v5 + 48);
  v34 = (v16 >> 5);
  if ((v16 >> 5))
  {
    if (!*(v6 + 196))
    {
      v17 = malloc_type_malloc((v16 >> 1) & 0xFF0, 0x105004037B82EA9uLL);
      v18 = (v17 + 8);
      v19 = v34;
      do
      {
        v20 = *(v6 + 208);
        *(v18 - 2) = v20;
        *v18 = malloc_type_malloc(4 * v20, 0x100004052888210uLL);
        v18 += 2;
        --v19;
      }

      while (v19);
      *(v6 + 196) = v34;
      *(v6 + 200) = v17;
    }

    v21 = 0;
    v33 = v5;
    do
    {
      v22 = *(v5 + 48) + 32 * v21;
      v24 = *(v22 + 8);
      v23 = *(v22 + 16);
      v45 = 0;
      ElementsCount = C3DMeshGetElementsCount(a3, v15);
      if (ElementsCount >= 1)
      {
        v26 = ElementsCount;
        v27 = 0;
        v28 = (v23 - v24) >> 3;
        do
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(a3, v27, 0);
          Type = C3DMeshElementGetType(ElementAtIndex, v30);
          ElementsCount = C3DMeshElementTypeDefinesSurface(Type);
          if (ElementsCount)
          {
            v44 = 0;
            v43 = 0u;
            v42 = 0u;
            C3DMeshElementGetFastIndexLookupInfo(ElementAtIndex, v15, &v42);
            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 0x40000000;
            v35[2] = ___Z30C3DSubdivInitCPUPrimvarContextP26C3DSubdivCPUPrimvarContextPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_2;
            v35[3] = &__block_descriptor_tmp_16_1;
            v35[4] = ElementAtIndex;
            v35[5] = v28;
            v36 = v42;
            v37 = v43;
            v38 = v44;
            v35[6] = v22;
            v41 = v21;
            v39 = v6;
            v40 = &v45;
            ElementsCount = C3DMeshElementEnumeratePrimitiveIndicesByEvaluatingPrimitiveRanges(ElementAtIndex, v35);
          }

          ++v27;
        }

        while (v26 != v27);
      }

      if (v45 != *(v6 + 208))
      {
        v32 = scn_default_log(ElementsCount, v15);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          C3DSubdivInitCPUPrimvarContext(v47, v48, v32);
        }
      }

      ++v21;
      v5 = v33;
    }

    while (v21 != v34);
  }

  else
  {
    *(v6 + 196) = 0;
    *(v6 + 200) = 0;
  }
}

void ___Z30C3DSubdivInitCPUPrimvarContextP26C3DSubdivCPUPrimvarContextPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v10 = a3;
  if (a3)
  {
    if ((a3 & 0xFFFFFFFE) == 2)
    {
      goto LABEL_5;
    }

    if (a3 != 4)
    {
      return;
    }
  }

  if (a4)
  {
    return;
  }

LABEL_5:
  v36 = 0u;
  v37 = 0u;
  C3DMeshSourceGetContent(a2, a2, &v36);
  if (!v37)
  {
    return;
  }

  IsFloatingValue = C3DBaseTypeIsFloatingValue(BYTE4(v37), v13);
  if (!IsFloatingValue)
  {
    return;
  }

  if (v10)
  {
    if ((v10 & 0xFFFFFFFE) == 2 || v10 == 4 && !a4)
    {
      goto LABEL_15;
    }
  }

  else if (!a4)
  {
    goto LABEL_24;
  }

  v16 = scn_default_log(IsFloatingValue, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    ___Z30C3DSubdivInitCPUPrimvarContextP26C3DSubdivCPUPrimvarContextPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_1();
    if (!v10)
    {
      goto LABEL_24;
    }

LABEL_15:
    v17 = *(a1 + 40);
    v19 = *(v17 + 48);
    v20 = *(v17 + 56);
    v18 = (v17 + 48);
    while (v19 != v20)
    {
      if (*v19 == v8)
      {
        v22 = (v19 + 8);
        goto LABEL_25;
      }

      v19 += 32;
    }

    *__p = 0u;
    v35 = 0u;
    std::vector<C3DSubdivCPUFVarPrimvarInfo>::emplace_back<C3DSubdivCPUFVarPrimvarInfo>(v18, __p);
    if (__p[1])
    {
      *&v35 = __p[1];
      operator delete(__p[1]);
    }

    v21 = *(*(a1 + 40) + 56);
    *(v21 - 32) = v8;
    v22 = v21 - 24;
    goto LABEL_25;
  }

  if (v10)
  {
    goto LABEL_15;
  }

LABEL_24:
  v22 = *(a1 + 40);
LABEL_25:
  v24 = *(v22 + 8);
  v23 = *(v22 + 16);
  if (v24 >= v23)
  {
    v26 = (v24 - *v22) >> 3;
    if ((v26 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v27 = v23 - *v22;
    v28 = v27 >> 2;
    if (v27 >> 2 <= (v26 + 1))
    {
      v28 = v26 + 1;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      v29 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v28;
    }

    if (v29)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivCPUPrimvarInfo>>(v22, v29);
    }

    v30 = (8 * v26);
    *v30 = a2;
    v25 = 8 * v26 + 8;
    v31 = *(v22 + 8) - *v22;
    v32 = v30 - v31;
    memcpy(v30 - v31, *v22, v31);
    v33 = *v22;
    *v22 = v32;
    *(v22 + 8) = v25;
    *(v22 + 16) = 0;
    if (v33)
    {
      operator delete(v33);
    }
  }

  else
  {
    *v24 = a2;
    v25 = (v24 + 1);
  }

  *(v22 + 8) = v25;
}

uint64_t C3DSubdivSourceGetPrimvarDataType(_BOOL8 PrimvarDataType, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a3;
  v8 = PrimvarDataType;
  if (a3)
  {
    if (a3 & 0xFFFFFFFE) == 2 || a3 == 4 && !a4 && (a5)
    {
LABEL_9:
      if (a5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else if (!a4)
  {
    goto LABEL_9;
  }

  v9 = scn_default_log(PrimvarDataType, a2);
  PrimvarDataType = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
  if (!PrimvarDataType)
  {
    goto LABEL_9;
  }

  C3DSubdivSourceGetPrimvarDataType();
  if (a5)
  {
LABEL_10:
    if (v6)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

LABEL_14:
  v11 = *(v8 + 40);
  if (!v11)
  {
    v12 = scn_default_log(PrimvarDataType, a2);
    PrimvarDataType = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
    if (PrimvarDataType)
    {
      C3DSubdivGetGPUPrimvarDataTypeHash(v12, a2, v13, v14, v15, v16, v17, v18);
    }
  }

  for (i = *(v11 + 80); i != *(v11 + 88); i += 16)
  {
    if (*i == a2)
    {
      return *(i + 12);
    }
  }

  v20 = scn_default_log(PrimvarDataType, a2);
  result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  if (result)
  {
    ___Z34C3DSubdivGetGPUPrimvarDataTypeHashPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_1();
    return 0;
  }

  return result;
}

uint64_t ___Z30C3DSubdivInitCPUPrimvarContextP26C3DSubdivCPUPrimvarContextPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_2(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = C3DMeshElementGetVertexCountForPrimitiveAtIndex(*(a1 + 32), a2);
  if (result >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 40);
    do
    {
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          Count = C3DMeshSourceGetCount(*(*(*(a1 + 48) + 8) + 8 * i), v5);
          if (Count >= 0x80000000)
          {
            v11 = 0x80000000;
          }

          else
          {
            v11 = Count;
          }

          v12 = v11 - 1;
          v13 = *(a1 + 72);
          v16[0] = *(a1 + 56);
          v16[1] = v13;
          v17 = *(a1 + 88);
          result = C3DMeshElementGetIndexUsingFastIndexLookupInfo(v16, v3, v7, **(a1 + 48));
          v14 = result;
          if (v12 < result)
          {
            v14 = v12;
          }

          v15 = *(a1 + 104);
          *(*(*(*(a1 + 96) + 200) + 16 * *(a1 + 112) + 8) + 4 * *v15) = v14;
          v8 = *(a1 + 40);
        }
      }

      else
      {
        v15 = *(a1 + 104);
      }

      ++*v15;
      ++v7;
    }

    while (v7 != v6);
  }

  return result;
}

void C3DSubdivFeedCPUPrimvar(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    __C3DSubdivFeedCPUPrimvar(a2, a3, v13, 0, a1 + 72, 0, a7, a8);
  }

  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  while (v14 != v15)
  {
    v16 = *v14++;
    __C3DSubdivFeedCPUPrimvar(a2, a3, v16, 0, a1 + 144, 1, a7, a8);
  }

  v17 = *(a1 + 56) - *(a1 + 48);
  v18 = (v17 >> 5);
  std::vector<C3DSubdivCPUPrimvarDataGroup>::resize((a1 + 216), v18);
  if ((v17 & 0x1FE0) != 0)
  {
    v21 = 0;
    do
    {
      v22 = *(a1 + 48) + 32 * v21;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      if (v23 != v24)
      {
        v25 = *(a1 + 216) + 72 * v21;
        do
        {
          v26 = *v23++;
          __C3DSubdivFeedCPUPrimvar(a2, a3, v26, v21, v25, 2, v19, v20);
        }

        while (v23 != v24);
      }

      ++v21;
    }

    while (v21 != v18);
  }
}

void __C3DSubdivFeedCPUPrimvar(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 40);
  if (!v13)
  {
    v14 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivGetGPUPrimvarDataTypeHash(v14, a2, v15, v16, v17, v18, v19, v20);
    }
  }

  v32 = 0u;
  v33 = 0u;
  Content = C3DMeshSourceGetContent(a3, a2, &v32);
  if (BYTE4(v33) - 23 >= 2)
  {
    v25 = BYTE8(v33);
  }

  else
  {
    v25 = 4;
  }

  switch(v25)
  {
    case 4:
      _ZN23C3DSubdivCPUPrimvarDataIDv3_fEC2EPK15__C3DMeshSourceP29C3DGeometrySubdivTopologyInfoPN10OpenSubdiv6v3_1_13Far15TopologyRefinerEh37C3DSubdivPrimvarDataInterpolationMode(v27, a3, v13, a2, a4, a6, v23, v24);
      _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv2_fENS_9allocatorIS3_EEE9push_backB8nn200100ERKS3_(a5 + 48, v27);
      goto LABEL_13;
    case 3:
      _ZN23C3DSubdivCPUPrimvarDataIDv3_fEC2EPK15__C3DMeshSourceP29C3DGeometrySubdivTopologyInfoPN10OpenSubdiv6v3_1_13Far15TopologyRefinerEh37C3DSubdivPrimvarDataInterpolationMode(v27, a3, v13, a2, a4, a6, v23, v24);
      _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv2_fENS_9allocatorIS3_EEE9push_backB8nn200100ERKS3_(a5 + 24, v27);
      goto LABEL_13;
    case 2:
      _ZN23C3DSubdivCPUPrimvarDataIDv2_fEC2EPK15__C3DMeshSourceP29C3DGeometrySubdivTopologyInfoPN10OpenSubdiv6v3_1_13Far15TopologyRefinerEh37C3DSubdivPrimvarDataInterpolationMode(v27, a3, v13, a2, a4, a6, v23, v24);
      _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv2_fENS_9allocatorIS3_EEE9push_backB8nn200100ERKS3_(a5, v27);
LABEL_13:
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      if (v27[0])
      {
        v27[1] = v27[0];
        operator delete(v27[0]);
      }

      return;
  }

  v26 = scn_default_log(Content, v22);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    __C3DSubdivFeedCPUPrimvar();
  }
}

void std::vector<C3DSubdivCPUPrimvarDataGroup>::resize(char **result, unint64_t a2)
{
  v3 = result[1];
  v4 = 0x8E38E38E38E38E39 * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<C3DSubdivCPUPrimvarDataGroup>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = &(*result)[72 * a2];
    while (v3 != v7)
    {
      v3 -= 9;
      std::allocator_traits<std::allocator<C3DSubdivCPUPrimvarDataGroup>>::destroy[abi:nn200100]<C3DSubdivCPUPrimvarDataGroup,0>(result, v3);
    }

    result[1] = v7;
  }
}

void C3DSubdivInterpolateCPUPrimvar(uint64_t a1, uint64_t a2, uint64_t a3, int **a4, double a5, float32x4_t a6, float32x4_t a7)
{
  __C3DSubdivInterpolateCPUPrimvar((a1 + 72), a3, a4, a5, a6, a7);
  __C3DSubdivInterpolateCPUPrimvar((a1 + 144), a3, a4, v10, v11, v12);
  v16 = *(a1 + 48);
  if (((*(a1 + 56) - v16) >> 5))
  {
    v17 = 0;
    v18 = 72 * ((*(a1 + 56) - v16) >> 5);
    do
    {
      __C3DSubdivInterpolateCPUPrimvar((*(a1 + 216) + v17), a3, a4, v13, v14, v15);
      v17 += 72;
    }

    while (v18 != v17);
  }
}

void __C3DSubdivInterpolateCPUPrimvar(void *result, uint64_t a2, int **a3, double a4, float32x4_t a5, float32x4_t a6)
{
  if ((*(a2 + 8) & 0x3C) != 0)
  {
    v9 = 0;
    do
    {
      v10 = result[1] - *result;
      if (v10)
      {
        v11 = 0;
        v12 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 4);
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        do
        {
          _ZN23C3DSubdivCPUPrimvarDataIDv2_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE(*result + v11, (v9 + 1), a3, a2, a4, *a5.i64);
          v11 += 112;
          --v13;
        }

        while (v13);
      }

      v14 = result[4] - result[3];
      if (v14)
      {
        v15 = 0;
        v16 = 0x6DB6DB6DB6DB6DB7 * (v14 >> 4);
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        do
        {
          _ZN23C3DSubdivCPUPrimvarDataIDv3_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE(result[3] + v15, (v9 + 1), a3, a2, *&a4, *a5.i64, a6);
          v15 += 112;
          --v17;
        }

        while (v17);
      }

      v18 = result[7] - result[6];
      if (v18)
      {
        v19 = 0;
        v20 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 4);
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        do
        {
          _ZN23C3DSubdivCPUPrimvarDataIDv4_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE(result[6] + v19, (v9 + 1), a3, a2, a4, a5);
          v19 += 112;
          --v21;
        }

        while (v21);
      }

      ++v9;
    }

    while (v9 < ((*(a2 + 8) >> 2) & 0xF));
  }
}

void C3DSubdivInitGPUPrimvarDescriptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 40);
  if (!v6)
  {
    v7 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivGetGPUPrimvarDataTypeHash(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  *a1 = 0;
  *(a1 + 56) = 0;
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 0x40000000;
  v92[2] = ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke;
  v92[3] = &__block_descriptor_tmp_18_1;
  v92[4] = a2;
  v92[5] = a1;
  v84 = a3;
  C3DMeshApplySources(a3, 0, v92);
  v79 = *(a1 + 8);
  v80 = *(a1 + 16);
  v77 = *(a1 + 64);
  v78 = *(a1 + 72);
  std::vector<unsigned int>::reserve((a1 + 32), (*(v6 + 208) * *a1));
  std::vector<unsigned int>::reserve((a1 + 88), (*(v6 + 208) * *(a1 + 56)));
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  while (v16 != v17)
  {
    std::vector<unsigned int>::reserve((v16 + 40), (*(v6 + 208) * *(v16 + 8)));
    v16 += 64;
  }

  v82 = v6;
  if (*(v6 + 104))
  {
    v18 = 0;
    v19 = (v80 - v79) >> 4;
    if (v19 <= 1)
    {
      v19 = 1;
    }

    v83 = v19;
    if (((v78 - v77) >> 4) <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = (v78 - v77) >> 4;
    }

    do
    {
      v81 = v18;
      v21 = *(*(v6 + 32) + 4 * v18);
      if (v80 != v79)
      {
        for (i = 0; i != v83; ++i)
        {
          v23 = *(a1 + 8) + 16 * i;
          v24 = *(v23 + 4);
          v25 = *(v23 + 8);
          v93 = 0u;
          v94 = 0u;
          Content = C3DMeshSourceGetContent(v25, v15, &v93);
          v31 = v93;
          v32 = BYTE4(v94);
          v33 = BYTE6(v94);
          v34 = BYTE8(v94);
          if (BYTE8(v94) >= 5u)
          {
            v35 = scn_default_log(Content, v27);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v96 = "srcContent.componentCount <= 4";
              v97 = 1024;
              v98 = v34;
              _os_log_fault_impl(&dword_21BEF7000, v35, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Primvar data size is too big (cannot fit %d floats in a float4)", buf, 0x12u);
            }
          }

          *v36.i64 = C3DConvertFloatingTypeToFloat4(v32, (v31 + (v21 * v33)), v28, v29, v30);
          v38 = *&v36.i32[3];
          if (v34 <= 3)
          {
            v38 = 1.0;
          }

          if (v34)
          {
            v37.i32[0] = v36.i32[0];
          }

          else
          {
            *v37.i32 = 0.0;
          }

          if (v24)
          {
            v39 = 0;
            *v36.i8 = vand_s8(vext_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL), 4uLL), vcgt_u32(vdup_n_s32(v34), 0x200000001));
            v40 = vextq_s8(vextq_s8(v37, v37, 4uLL), v36, 0xCuLL);
            *&v40.i32[3] = v38;
            v85 = v40;
            do
            {
              v89 = v85;
              *buf = *(&v89 & 0xFFFFFFFFFFFFFFF3 | (4 * (v39 & 3)));
              std::vector<float>::push_back[abi:nn200100]((a1 + 32), buf);
              ++v39;
            }

            while (v24 > v39);
          }
        }
      }

      if (v78 != v77)
      {
        v41 = 0;
        do
        {
          v42 = *(a1 + 64) + 16 * v41;
          v43 = *(v42 + 4);
          v44 = *(v42 + 8);
          v93 = 0u;
          v94 = 0u;
          v45 = C3DMeshSourceGetContent(v44, v15, &v93);
          v50 = v93;
          v51 = BYTE4(v94);
          v52 = BYTE6(v94);
          v53 = BYTE8(v94);
          if (BYTE8(v94) >= 5u)
          {
            v54 = scn_default_log(v45, v46);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v96 = "srcContent.componentCount <= 4";
              v97 = 1024;
              v98 = v53;
              _os_log_fault_impl(&dword_21BEF7000, v54, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Primvar data size is too big (cannot fit %d floats in a float4)", buf, 0x12u);
            }
          }

          *v55.i64 = C3DConvertFloatingTypeToFloat4(v51, (v50 + (v21 * v52)), v47, v48, v49);
          v57 = *&v55.i32[3];
          if (v53 <= 3)
          {
            v57 = 1.0;
          }

          if (v53)
          {
            v56.i32[0] = v55.i32[0];
          }

          else
          {
            *v56.i32 = 0.0;
          }

          if (v43)
          {
            v58 = 0;
            *v55.i8 = vand_s8(vext_s8(*v55.i8, *&vextq_s8(v55, v55, 8uLL), 4uLL), vcgt_u32(vdup_n_s32(v53), 0x200000001));
            v59 = vextq_s8(vextq_s8(v56, v56, 4uLL), v55, 0xCuLL);
            *&v59.i32[3] = v57;
            v86 = v59;
            do
            {
              v88 = v86;
              *buf = *(&v88 & 0xFFFFFFFFFFFFFFF3 | (4 * (v58 & 3)));
              std::vector<float>::push_back[abi:nn200100]((a1 + 88), buf);
              ++v58;
            }

            while (v43 > v58);
          }

          ++v41;
        }

        while (v41 != v20);
      }

      v6 = v82;
      v18 = v81 + 1;
    }

    while (v81 + 1 < *(v82 + 104));
  }

  v60 = *(a1 + 120) - *(a1 + 112);
  v87 = (v60 >> 6);
  if ((v60 >> 6))
  {
    if (!*(v6 + 196))
    {
      v61 = malloc_type_malloc((v60 >> 2) & 0xFF0, 0x105004037B82EA9uLL);
      v62 = (v61 + 8);
      v63 = v87;
      do
      {
        v64 = *(v6 + 208);
        *(v62 - 2) = v64;
        *v62 = malloc_type_malloc(4 * v64, 0x100004052888210uLL);
        v62 += 2;
        --v63;
      }

      while (v63);
      *(v6 + 196) = v87;
      *(v6 + 200) = v61;
    }

    v65 = 0;
    do
    {
      v66 = *(a1 + 112) + (v65 << 6);
      v68 = *(v66 + 16);
      v67 = *(v66 + 24);
      *buf = 0;
      ElementsCount = C3DMeshGetElementsCount(v84, v15);
      if (ElementsCount >= 1)
      {
        v70 = ElementsCount;
        v71 = 0;
        v72 = (v67 - v68) >> 4;
        do
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(v84, v71, 0);
          Type = C3DMeshElementGetType(ElementAtIndex, v74);
          ElementsCount = C3DMeshElementTypeDefinesSurface(Type);
          if (ElementsCount)
          {
            v90[0] = MEMORY[0x277D85DD0];
            v90[1] = 0x40000000;
            v90[2] = ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_19;
            v90[3] = &__block_descriptor_tmp_20_4;
            v90[4] = ElementAtIndex;
            v90[5] = v72;
            v90[6] = v66;
            v90[7] = v82;
            v91 = v65;
            v90[8] = buf;
            ElementsCount = C3DMeshElementEnumeratePrimitiveIndicesByEvaluatingPrimitiveRanges(ElementAtIndex, v90);
          }

          ++v71;
        }

        while (v70 != v71);
      }

      if (*buf != *(v82 + 208))
      {
        v76 = scn_default_log(ElementsCount, v15);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
        {
          C3DSubdivInitGPUPrimvarDescriptor(&v93, (&v93 + 4), v76);
        }
      }

      ++v65;
    }

    while (v65 != v87);
  }

  else
  {
    *(v6 + 196) = 0;
    *(v6 + 200) = 0;
  }
}

void ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  if (a3)
  {
    if ((a3 & 0xFFFFFFFE) != 2)
    {
      return;
    }
  }

  else if (a4)
  {
    return;
  }

  v41 = 0u;
  v42 = 0u;
  C3DMeshSourceGetContent(a2, a2, &v41);
  if (v42)
  {
    IsFloatingValue = C3DBaseTypeIsFloatingValue(BYTE4(v42), v13);
    if (IsFloatingValue)
    {
      if (a3)
      {
        if (a3 == 3)
        {
          v16 = 2;
        }

        else if (a3 == 2)
        {
          v16 = 4;
        }

        else
        {
          v17 = scn_default_log(IsFloatingValue, v15);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_1(a3, v17);
          }

          v16 = 0;
        }
      }

      else
      {
        v16 = 3;
      }

      PrimvarDataType = C3DSubdivSourceGetPrimvarDataType(*(a1 + 32), a2, a3, a4, 0);
      if (PrimvarDataType <= 1)
      {
        if (PrimvarDataType != 1)
        {
          ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_2(v40, v19);
        }

        v20 = *(a1 + 40);
      }

      else if (PrimvarDataType == 2)
      {
        v20 = *(a1 + 40) + 56;
      }

      else
      {
        v21 = *(a1 + 40);
        v23 = *(v21 + 112);
        v24 = *(v21 + 120);
        v22 = (v21 + 112);
        while (1)
        {
          if (v23 == v24)
          {
            memset(v40, 0, sizeof(v40));
            std::vector<C3DSubdivGPUFVarPrimvarData>::emplace_back<C3DSubdivGPUFVarPrimvarData>(v22, v40);
            C3DSubdivGPUFVarPrimvarData::~C3DSubdivGPUFVarPrimvarData(v40);
            v25 = *(*(a1 + 40) + 120);
            *(v25 - 56) = 0;
            v20 = v25 - 56;
            *(v20 - 8) = v8;
            goto LABEL_28;
          }

          if (*v23 == v8)
          {
            break;
          }

          v23 += 64;
        }

        v20 = (v23 + 8);
      }

LABEL_28:
      v26 = *v20;
      v27 = *(v20 + 16);
      v28 = *(v20 + 24);
      if (v27 >= v28)
      {
        v30 = *(v20 + 8);
        v31 = (v27 - v30) >> 4;
        v32 = v31 + 1;
        if ((v31 + 1) >> 60)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v33 = v28 - v30;
        if (v33 >> 3 > v32)
        {
          v32 = v33 >> 3;
        }

        if (v33 >= 0x7FFFFFFFFFFFFFF0)
        {
          v34 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v32;
        }

        if (v34)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivGPUPrimvarInfo>>(v20 + 8, v34);
        }

        v35 = 16 * v31;
        *v35 = v26;
        *(v35 + 4) = v16;
        *(v35 + 8) = a2;
        v29 = 16 * v31 + 16;
        v36 = *(v20 + 8);
        v37 = *(v20 + 16) - v36;
        v38 = (16 * v31 - v37);
        memcpy(v38, v36, v37);
        v39 = *(v20 + 8);
        *(v20 + 8) = v38;
        *(v20 + 16) = v29;
        *(v20 + 24) = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        *v27 = v26;
        *(v27 + 4) = v16;
        v29 = v27 + 16;
        *(v27 + 8) = a2;
      }

      *(v20 + 16) = v29;
      *v20 += v16;
    }
  }
}

void ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_19(uint64_t a1, unsigned int a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v33 = a2;
  VertexCountForPrimitiveAtIndex = C3DMeshElementGetVertexCountForPrimitiveAtIndex(*(a1 + 32), a2);
  if (VertexCountForPrimitiveAtIndex >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 40);
    do
    {
      if (v5)
      {
        for (i = 0; i < v5; ++i)
        {
          Count = C3DMeshSourceGetCount(*(*(*(a1 + 48) + 16) + 16 * i + 8), v3);
          v8 = 0x80000000;
          if (Count < 0x80000000)
          {
            v8 = Count;
          }

          v9 = v8 - 1;
          Index = C3DMeshElementGetIndex(*(a1 + 32), v33, v4, **(a1 + 48));
          if (Index >= v9)
          {
            v12 = v9;
          }

          else
          {
            v12 = Index;
          }

          *(*(*(*(a1 + 56) + 200) + 16 * *(a1 + 72) + 8) + 4 * **(a1 + 64)) = **(a1 + 64);
          v13 = *(*(a1 + 48) + 16) + 16 * i;
          v14 = *(v13 + 4);
          v15 = *(v13 + 8);
          v36 = 0u;
          v37 = 0u;
          Content = C3DMeshSourceGetContent(v15, v11, &v36);
          v21 = v36;
          v22 = BYTE4(v37);
          v23 = BYTE6(v37);
          v24 = BYTE8(v37);
          if (BYTE8(v37) >= 5u)
          {
            v25 = scn_default_log(Content, v17);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v39 = "srcContent.componentCount <= 4";
              v40 = 1024;
              v41 = v24;
              _os_log_fault_impl(&dword_21BEF7000, v25, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Primvar data size is too big (cannot fit %d floats in a float4)", buf, 0x12u);
            }
          }

          *v26.i64 = C3DConvertFloatingTypeToFloat4(v22, (v21 + (v12 * v23)), v18, v19, v20);
          v28 = *&v26.i32[3];
          if (v24 <= 3)
          {
            v28 = 1.0;
          }

          if (v24)
          {
            v27.i32[0] = v26.i32[0];
          }

          else
          {
            *v27.i32 = 0.0;
          }

          if (v14)
          {
            v29 = 0;
            *v26.i8 = vand_s8(vext_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL), 4uLL), vcgt_u32(vdup_n_s32(v24), 0x200000001));
            v30 = vextq_s8(vextq_s8(v27, v27, 4uLL), v26, 0xCuLL);
            *&v30.i32[3] = v28;
            v34 = v30;
            do
            {
              v31 = *(a1 + 48);
              v35 = v34;
              *buf = *(&v35 & 0xFFFFFFFFFFFFFFF3 | (4 * (v29 & 3)));
              std::vector<float>::push_back[abi:nn200100]((v31 + 40), buf);
              ++v29;
            }

            while (v14 > v29);
          }

          v5 = *(a1 + 40);
        }
      }

      ++**(a1 + 64);
      ++v4;
    }

    while (v4 != VertexCountForPrimitiveAtIndex);
  }
}

void C3DSubdivComputeElementToFaceRangeTable(OpenSubdiv::v3_1_1::Far::TopologyRefiner *a1, __C3DMesh *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  memset(__p, 0, sizeof(__p));
  ElementsCount = C3DMeshGetElementsCount(a2, a2);
  if (ElementsCount)
  {
    for (i = 0; i != ElementsCount; ++i)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a2, i, 0);
      Type = C3DMeshElementGetType(ElementAtIndex, v6);
      if (C3DMeshElementTypeDefinesSurface(Type))
      {
        PrimitiveCountByEvaluatingPrimitiveRanges = C3DMeshElementGetPrimitiveCountByEvaluatingPrimitiveRanges(ElementAtIndex);
        v10 += PrimitiveCountByEvaluatingPrimitiveRanges;
        std::vector<int>::push_back[abi:nn200100](__p, &v10);
      }
    }
  }

  operator new();
}

void std::vector<CFRange>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t *C3DSubdivComputeElementToPatchRangeTable(OpenSubdiv::v3_1_1::Far::TopologyRefiner *a1, const OpenSubdiv::v3_1_1::Far::PatchTable *a2, __C3DMesh *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  ElementsCount = C3DMeshGetElementsCount(a3, a2);
  if ((ElementsCount & 0xFE) == 0)
  {
    goto LABEL_19;
  }

  v6 = 0;
  v7 = ElementsCount;
  do
  {
    ElementAtIndex = C3DMeshGetElementAtIndex(a3, v6, 0);
    Type = C3DMeshElementGetType(ElementAtIndex, v9);
    v11 = C3DMeshElementTypeDefinesSurface(Type);
    if (!v11)
    {
      goto LABEL_12;
    }

    if (Type >= 2)
    {
      if (Type == 4)
      {
        ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a3, 0, 0);
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        C3DMeshElementGetContent(ElementAtIndex, ChannelForSourceWithSemanticAtIndex, &v17);
        v24[0] = v17;
        v24[1] = v18;
        v24[2] = v19;
        v24[3] = v20;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 0x40000000;
        v23[2] = ___Z40C3DSubdivComputeElementToPatchRangeTablePN10OpenSubdiv6v3_1_13Far15TopologyRefinerEPKNS1_10PatchTableEP9__C3DMesh_block_invoke;
        v23[3] = &unk_2782FFBC8;
        v23[4] = &v28;
        C3DIndicesContentEnumeratePrimitivesByEvaluatingPrimitiveRanges(v24, v23, v19);
        goto LABEL_11;
      }

      if (Type != 5)
      {
        v15 = scn_default_log(v11, v12);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          C3DSubdivComputeElementToPatchRangeTable(&buf, v22, v15);
        }

        goto LABEL_11;
      }
    }

    PrimitiveCountByEvaluatingPrimitiveRanges = C3DMeshElementGetPrimitiveCountByEvaluatingPrimitiveRanges(ElementAtIndex);
    *(v29 + 6) += 3 * PrimitiveCountByEvaluatingPrimitiveRanges;
LABEL_11:
    std::vector<int>::push_back[abi:nn200100](&v25, v29 + 6);
LABEL_12:
    ++v6;
  }

  while (v7 != v6);
  if (((v26 - v25) >> 2) >= 2)
  {
    OpenSubdiv::v3_1_1::Osd::CpuPatchTable::CpuPatchTable(&v17, a2);
    std::vector<std::vector<CFRange>>::vector[abi:nn200100](v24, ((*(&v17 + 1) - v17) >> 4));
    operator new();
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

LABEL_19:
  _Block_object_dispose(&v28, 8);
  return 0;
}

uint64_t ___Z40C3DSubdivComputeElementToPatchRangeTablePN10OpenSubdiv6v3_1_13Far15TopologyRefinerEPKNS1_10PatchTableEP9__C3DMesh_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = a4;
  }

  *(*(*(result + 32) + 8) + 24) += v4;
  return result;
}

void C3DSubdivCreateMesh(void *a1, uint64_t a2, uint64_t a3, int **a4, __C3DMesh *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *MEMORY[0x277D85DE8];
  v13 = (*(a3 + 88) + 24 * ((*(a3 + 8) >> 2) & 0xF));
  v32 = 0;
  v33 = 0;
  v34 = 0;
  __C3DSubdivCreateMesh(a2, a4, v13, a1 + 9, 0, &v32, a7, a8);
  __C3DSubdivCreateMesh(a2, a4, v13, a1 + 18, 0, &v32, v14, v15);
  v19 = a1[27];
  v20 = a1[28];
  while (v19 != v20)
  {
    __C3DSubdivCreateMesh(a2, a4, v13, v19, 1, &v32, v17, v18);
    v19 += 9;
  }

  v29[7] = v29;
  v21 = (-85 * ((v33 - v32) >> 3));
  MEMORY[0x28223BE20](v16);
  v31 = v29 - v22;
  v30 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(v30, v21, MEMORY[0x277CBF128]);
  if (v21)
  {
    v24 = 0;
    v25 = 24 * v21;
    v26 = v31;
    do
    {
      v27 = v32 + v24;
      if (*(v32 + v24))
      {
        v28 = *(v32 + v24 + 1) + 1;
      }

      else
      {
        v28 = 0;
      }

      *v26++ = v28;
      CFArrayAppendValue(Mutable, *(v27 + 16));
      CFRelease(*(v27 + 16));
      v24 += 24;
    }

    while (v25 != v24);
  }

  C3DSubdivComputeElementToFaceRangeTable(a3, a5);
}

void __C3DSubdivCreateMesh(uint64_t result, int **a2, OpenSubdiv::v3_1_1::Vtr::internal::Level **a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a4[1] - *a4;
  if (v14)
  {
    v15 = 0;
    v16 = 0x6DB6DB6DB6DB6DB7 * (v14 >> 4);
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    do
    {
      _ZN23C3DSubdivCPUPrimvarDataIDv2_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext(*a4 + v15, a3, a2, a5, result + 2, a6, a7, a8);
      v15 += 112;
      --v17;
    }

    while (v17);
  }

  v18 = a4[4] - a4[3];
  if (v18)
  {
    v19 = 0;
    v20 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 4);
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    do
    {
      _ZN23C3DSubdivCPUPrimvarDataIDv3_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext(a4[3] + v19, a3, a2, a5, result + 2, a6, a7, a8);
      v19 += 112;
      --v21;
    }

    while (v21);
  }

  v22 = a4[7] - a4[6];
  if (v22)
  {
    v23 = 0;
    v24 = 0x6DB6DB6DB6DB6DB7 * (v22 >> 4);
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    do
    {
      _ZN23C3DSubdivCPUPrimvarDataIDv4_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext(a4[6] + v23, a3, a2, a5, result + 2, a6, a7, a8);
      v23 += 112;
      --v25;
    }

    while (v25);
  }
}

void C3DGeometryInvalidateSubdivCreaseAndCornerTopologyInfo(__C3DGeometry *a1)
{
  var7 = a1->var10.var7;
  if (var7)
  {
    free(var7[17]);
    free(var7[18]);
    free(var7[20]);
    free(var7[21]);
    *(var7 + 32) = 0;
    var7[17] = 0;
    var7[18] = 0;
    *(var7 + 38) = 0;
    var7[20] = 0;
    var7[21] = 0;
  }
}

void C3DGeometryDestroySubdivTopologyInfo(__C3DGeometry *a1)
{
  var7 = a1->var10.var7;
  if (var7)
  {
    if (*(var7 + 49) >= 1)
    {
      v3 = 0;
      do
      {
        free(*(*(var7 + 25) + 16 * v3++ + 8));
      }

      while (*(var7 + 49) > v3);
    }

    free(*(var7 + 25));
    free(*(var7 + 14));
    free(*(var7 + 15));
    free(*(var7 + 17));
    free(*(var7 + 18));
    free(*(var7 + 20));
    free(*(var7 + 21));
    free(*(var7 + 23));
    v4 = *(var7 + 10);
    if (v4)
    {
      *(var7 + 11) = v4;
      operator delete(v4);
    }

    v5 = *(var7 + 7);
    if (v5)
    {
      operator delete(v5);
    }

    v6 = *(var7 + 4);
    if (v6)
    {
      *(var7 + 5) = v6;
      operator delete(v6);
    }

    v7 = *(var7 + 1);
    if (v7)
    {
      *(var7 + 2) = v7;
      operator delete(v7);
    }

    free(a1->var10.var7);
    a1->var10.var7 = 0;
  }
}

uint64_t _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv2_fENS_9allocatorIS3_EEE9push_backB8nn200100ERKS3_(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv2_fENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJRKS3_EEEPS3_DpOT_(a1, a2);
  }

  else
  {
    result = _ZN23C3DSubdivCPUPrimvarDataIDv2_fEC2ERKS1_(v3, a2) + 112;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t _ZN23C3DSubdivCPUPrimvarDataIDv2_fEC2EPK15__C3DMeshSourceP29C3DGeometrySubdivTopologyInfoPN10OpenSubdiv6v3_1_13Far15TopologyRefinerEh37C3DSubdivPrimvarDataInterpolationMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = a5;
  v11 = (*(a4 + 8) >> 2) & 0xF;
  *(a1 + 76) = v11;
  *(a1 + 80) = a2;
  *(a1 + 88) = a6;
  v12 = *(a4 + 88);
  v13 = &v12[3 * v11];
  if (a6 == 2)
  {
    v31 = 0uLL;
    v32 = 0uLL;
    C3DMeshSourceGetContent(a2, a2, &v31);
    v14 = v32;
    NumFVarValues = OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(*v13, *(a1 + 72));
    NumFVarValuesTotal = OpenSubdiv::v3_1_1::Far::TopologyRefiner::GetNumFVarValuesTotal(a4, *(a1 + 72));
    v17 = (NumFVarValuesTotal - OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(*v12, *(a1 + 72))) - NumFVarValues;
    std::vector<ClippedCorner>::resize(a1, v14);
    if (v14)
    {
      v21 = 0;
      do
      {
        *v18.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v32), (v31 + BYTE6(v32) * v21), v18, v19, v20);
        *(*a1 + 8 * v21++) = v18.i64[0];
      }

      while (v14 != v21);
    }
  }

  else
  {
    v23 = *(*v12 + 2);
    NumFVarValues = *(*v13 + 2);
    v17 = *(a4 + 20) - v23 - NumFVarValues;
    std::vector<ClippedCorner>::resize(a1, v23);
    v31 = 0u;
    v32 = 0u;
    C3DMeshSourceGetContent(a2, v24, &v31);
    if (v23)
    {
      v28 = 0;
      do
      {
        *v25.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v32), (v31 + *(*(a3 + 32) + 4 * v28) * BYTE6(v32)), v25, v26, v27);
        *(*a1 + 8 * v28++) = v25.i64[0];
      }

      while (v23 != v28);
    }
  }

  std::vector<ClippedCorner>::resize((a1 + 24), v17);
  std::vector<ClippedCorner>::resize((a1 + 48), NumFVarValues);
  if (*(a1 + 32) == *(a1 + 24))
  {
    v29 = 0;
  }

  else
  {
    v29 = *(a1 + 24);
  }

  *(a1 + 96) = *a1;
  *(a1 + 104) = v29;
  return a1;
}

uint64_t _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv2_fENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJRKS3_EEEPS3_DpOT_(void **a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorI23C3DSubdivCPUPrimvarDataIDv2_fEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m(a1, v6);
  }

  v7 = 112 * v2;
  _ZN23C3DSubdivCPUPrimvarDataIDv2_fEC2ERKS1_(v7, a2);
  v8 = v7 + 112;
  v9 = a1[1];
  v10 = *a1 + v7 - v9;
  _ZNSt3__134__uninitialized_allocator_relocateB8nn200100INS_9allocatorI23C3DSubdivCPUPrimvarDataIDv2_fEEEPS4_EEvRT_T0_S9_S9_(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  _ZNSt3__114__split_bufferI23C3DSubdivCPUPrimvarDataIDv2_fERNS_9allocatorIS3_EEED2Ev(v14);
  return v8;
}

uint64_t _ZN23C3DSubdivCPUPrimvarDataIDv2_fEC2ERKS1_(uint64_t result, uint64_t a2)
{
  *(result + 64) = 0;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *result = *a2;
  *a2 = 0;
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  v5 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v5;
  v6 = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  v7 = *(result + 48);
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = v7;
  v8 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  v9 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v9;
  *(result + 72) = *(a2 + 72);
  *(result + 76) = *(a2 + 76);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = *(a2 + 88);
  if (*(result + 32) == *(result + 24))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(result + 24);
  }

  *(result + 96) = *result;
  *(result + 104) = v10;
  return result;
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorI23C3DSubdivCPUPrimvarDataIDv2_fEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void _ZNSt3__134__uninitialized_allocator_relocateB8nn200100INS_9allocatorI23C3DSubdivCPUPrimvarDataIDv2_fEEEPS4_EEvRT_T0_S9_S9_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      _ZN23C3DSubdivCPUPrimvarDataIDv2_fEC2ERKS1_(a4, v8);
      v8 += 112;
      a4 += 112;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      _ZNSt3__116allocator_traitsINS_9allocatorI23C3DSubdivCPUPrimvarDataIDv2_fEEEE7destroyB8nn200100IS4_Li0EEEvRS5_PT_(result, v6);
      v6 += 112;
    }
  }
}

void _ZNSt3__116allocator_traitsINS_9allocatorI23C3DSubdivCPUPrimvarDataIDv2_fEEEE7destroyB8nn200100IS4_Li0EEEvRS5_PT_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    *(a2 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    *(a2 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v5;

    operator delete(v5);
  }
}

void **_ZNSt3__114__split_bufferI23C3DSubdivCPUPrimvarDataIDv2_fERNS_9allocatorIS3_EEED2Ev(void **a1)
{
  _ZNSt3__114__split_bufferI23C3DSubdivCPUPrimvarDataIDv2_fERNS_9allocatorIS3_EEE5clearB8nn200100Ev(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void _ZNSt3__114__split_bufferI23C3DSubdivCPUPrimvarDataIDv2_fERNS_9allocatorIS3_EEE5clearB8nn200100Ev(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 112;
    _ZNSt3__116allocator_traitsINS_9allocatorI23C3DSubdivCPUPrimvarDataIDv2_fEEEE7destroyB8nn200100IS4_Li0EEEvRS5_PT_(v4, i - 112);
  }
}

uint64_t _ZN23C3DSubdivCPUPrimvarDataIDv3_fEC2EPK15__C3DMeshSourceP29C3DGeometrySubdivTopologyInfoPN10OpenSubdiv6v3_1_13Far15TopologyRefinerEh37C3DSubdivPrimvarDataInterpolationMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = a5;
  v11 = (*(a4 + 8) >> 2) & 0xF;
  *(a1 + 76) = v11;
  *(a1 + 80) = a2;
  *(a1 + 88) = a6;
  v12 = *(a4 + 88);
  v13 = &v12[3 * v11];
  if (a6 == 2)
  {
    v31 = 0uLL;
    v32 = 0uLL;
    C3DMeshSourceGetContent(a2, a2, &v31);
    v14 = v32;
    NumFVarValues = OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(*v13, *(a1 + 72));
    NumFVarValuesTotal = OpenSubdiv::v3_1_1::Far::TopologyRefiner::GetNumFVarValuesTotal(a4, *(a1 + 72));
    v17 = (NumFVarValuesTotal - OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(*v12, *(a1 + 72))) - NumFVarValues;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a1, v14);
    if (v14)
    {
      v21 = 0;
      do
      {
        *v18.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v32), (v31 + BYTE6(v32) * v21), v18, v19, v20);
        *(*a1 + 16 * v21++) = v18;
      }

      while (v14 != v21);
    }
  }

  else
  {
    v23 = *(*v12 + 2);
    NumFVarValues = *(*v13 + 2);
    v17 = *(a4 + 20) - v23 - NumFVarValues;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a1, v23);
    v31 = 0u;
    v32 = 0u;
    C3DMeshSourceGetContent(a2, v24, &v31);
    if (v23)
    {
      v28 = 0;
      do
      {
        *v25.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v32), (v31 + *(*(a3 + 32) + 4 * v28) * BYTE6(v32)), v25, v26, v27);
        *(*a1 + 16 * v28++) = v25;
      }

      while (v23 != v28);
    }
  }

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm((a1 + 24), v17);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm((a1 + 48), NumFVarValues);
  if (*(a1 + 32) == *(a1 + 24))
  {
    v29 = 0;
  }

  else
  {
    v29 = *(a1 + 24);
  }

  *(a1 + 96) = *a1;
  *(a1 + 104) = v29;
  return a1;
}

void _ZN23C3DSubdivCPUPrimvarDataIDv2_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE(uint64_t result, uint64_t a2, int **a3, uint64_t a4, double a5, double a6)
{
  if (*(result + 76) < a2)
  {
    v10 = scn_default_log(result, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _ZN23C3DSubdivCPUPrimvarDataIDv2_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(result + 88);
  if (*(result + 76) != a2)
  {
    if (v18 == 2)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv2_fES7_EEviRKT_RT0_i(a3, a2, (result + 96), (result + 104), *(result + 72), *&a5);
    }

    else if (v18 == 1)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner18InterpolateVaryingIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(a3, a2, (result + 96), (result + 104), a5, a6);
    }

    else
    {
      if (*(result + 88))
      {
LABEL_20:
        v19 = *(result + 104);
        v20 = v19 + 8 * *(*(*(a4 + 88) + 24 * a2) + 8);
        *(result + 96) = v19;
        *(result + 104) = v20;
        return;
      }

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner11InterpolateIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(a3, a2, (result + 96), (result + 104), *&a5);
    }

    if (*(result + 88) == 2)
    {
      *(result + 96) = *(result + 104);
      *(result + 104) += 8 * OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(*(*(a4 + 88) + 24 * a2), *(result + 72));
      return;
    }

    goto LABEL_20;
  }

  if (v18 == 2)
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_i(a3, a2, (result + 96), (result + 48), *(result + 72), *&a5);
  }

  else if (v18 == 1)
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner18InterpolateVaryingIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(a3, a2, (result + 96), (result + 48), a5, a6);
  }

  else if (!*(result + 88))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner11InterpolateIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(a3, a2, (result + 96), (result + 48), *&a5);
  }

  std::vector<ClippedCorner>::resize(result, 0);
  std::vector<ClippedCorner>::resize((result + 24), 0);
}

void _ZN23C3DSubdivCPUPrimvarDataIDv3_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE(uint64_t result, uint64_t a2, int **a3, uint64_t a4, int16x4_t a5, double a6, float32x4_t a7)
{
  if (*(result + 76) < a2)
  {
    v11 = scn_default_log(result, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      _ZN23C3DSubdivCPUPrimvarDataIDv2_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(result + 88);
  if (*(result + 76) != a2)
  {
    if (v19 == 2)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv3_fES7_EEviRKT_RT0_i(a3, a2, (result + 96), (result + 104), *(result + 72), a5);
    }

    else if (v19 == 1)
    {
      if (a2 < 1 || (v39 = *(*a3 + 8), ((*(*a3 + 9) - v39) >> 3) < a2))
      {
        _ZN23C3DSubdivCPUPrimvarDataIDv3_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE_cold_2();
      }

      v40 = *(v39 + 8 * a2 - 8);
      v41 = *(v40 + 8);
      if (*(v40 + 52) >= 1 && *v41 >= 1)
      {
        v42 = 0;
        do
        {
          v43 = *(*(v40 + 168) + 4 * v42);
          if (v43 != -1)
          {
            v44 = *(v41 + 6);
            v45 = *(*(v41 + 3) + 8 * v42);
            v46 = *(*(v41 + 3) + 8 * v42 + 4);
            *(*(result + 104) + 16 * v43) = 0uLL;
            if (v45 >= 1)
            {
              v47 = (v44 + 4 * v46);
              a7.f32[0] = 1.0 / v45;
              a7 = vdupq_lane_s32(*a7.f32, 0);
              do
              {
                v48 = *v47++;
                *(*(result + 104) + 16 * v43) = vmlaq_f32(*(*(result + 104) + 16 * v43), *(*(result + 96) + 16 * v48), a7);
                --v45;
              }

              while (v45);
            }
          }

          ++v42;
        }

        while (v42 < *v41);
      }

      v49 = v41[1];
      if (v49 >= 1)
      {
        v50 = 0;
        v51 = 0;
        v52.i64[0] = 0x3F0000003F000000;
        v52.i64[1] = 0x3F0000003F000000;
        do
        {
          v53 = *(*(v40 + 216) + 4 * v51);
          if (v53 != -1)
          {
            v54 = (*(v41 + 15) + v50);
            *(*(result + 104) + 16 * v53) = 0uLL;
            *(*(result + 104) + 16 * v53) = vmlaq_f32(*(*(result + 104) + 16 * v53), v52, *(*(result + 96) + 16 * *v54));
            *(*(result + 104) + 16 * v53) = vmlaq_f32(*(*(result + 104) + 16 * v53), v52, *(*(result + 96) + 16 * v54[1]));
            v49 = v41[1];
          }

          ++v51;
          v50 += 8;
        }

        while (v51 < v49);
      }

      v55 = v41[2];
      if (v55 >= 1)
      {
        for (i = 0; i < v55; ++i)
        {
          v57 = *(*(v40 + 240) + 4 * i);
          if (v57 != -1)
          {
            *(*(result + 104) + 16 * v57) = 0uLL;
            *(*(result + 104) + 16 * v57) = vaddq_f32(*(*(result + 96) + 16 * i), *(*(result + 104) + 16 * v57));
            v55 = v41[2];
          }
        }
      }
    }

    else
    {
      if (*(result + 88))
      {
LABEL_60:
        v58 = *(result + 104);
        v59 = v58 + 16 * *(*(*(a4 + 88) + 24 * a2) + 8);
        *(result + 96) = v58;
        *(result + 104) = v59;
        return;
      }

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner11InterpolateIP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(a3, a2, (result + 96), (result + 104), a5);
    }

    if (*(result + 88) == 2)
    {
      *(result + 96) = *(result + 104);
      *(result + 104) += 16 * OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(*(*(a4 + 88) + 24 * a2), *(result + 72));
      return;
    }

    goto LABEL_60;
  }

  if (v19 == 2)
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_i(a3, a2, (result + 96), (result + 48), *(result + 72), a5);
  }

  else if (v19 == 1)
  {
    if (a2 < 1 || (v20 = *(*a3 + 8), ((*(*a3 + 9) - v20) >> 3) < a2))
    {
      _ZN23C3DSubdivCPUPrimvarDataIDv3_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE_cold_2();
    }

    v21 = *(v20 + 8 * a2 - 8);
    v22 = *(v21 + 8);
    if (*(v21 + 52) >= 1 && *v22 >= 1)
    {
      v23 = 0;
      do
      {
        v24 = *(*(v21 + 168) + 4 * v23);
        if (v24 != -1)
        {
          v25 = *(v22 + 6);
          v26 = *(*(v22 + 3) + 8 * v23);
          v27 = *(*(v22 + 3) + 8 * v23 + 4);
          *(*(result + 48) + 16 * v24) = 0uLL;
          if (v26 >= 1)
          {
            v28 = (v25 + 4 * v27);
            a7.f32[0] = 1.0 / v26;
            a7 = vdupq_lane_s32(*a7.f32, 0);
            do
            {
              v29 = *v28++;
              *(*(result + 48) + 16 * v24) = vmlaq_f32(*(*(result + 48) + 16 * v24), *(*(result + 96) + 16 * v29), a7);
              --v26;
            }

            while (v26);
          }
        }

        ++v23;
      }

      while (v23 < *v22);
    }

    v30 = v22[1];
    if (v30 >= 1)
    {
      v31 = 0;
      v32 = 0;
      v33.i64[0] = 0x3F0000003F000000;
      v33.i64[1] = 0x3F0000003F000000;
      do
      {
        v34 = *(*(v21 + 216) + 4 * v32);
        if (v34 != -1)
        {
          v35 = (*(v22 + 15) + v31);
          *(*(result + 48) + 16 * v34) = 0uLL;
          *(*(result + 48) + 16 * v34) = vmlaq_f32(*(*(result + 48) + 16 * v34), v33, *(*(result + 96) + 16 * *v35));
          *(*(result + 48) + 16 * v34) = vmlaq_f32(*(*(result + 48) + 16 * v34), v33, *(*(result + 96) + 16 * v35[1]));
          v30 = v22[1];
        }

        ++v32;
        v31 += 8;
      }

      while (v32 < v30);
    }

    v36 = v22[2];
    if (v36 >= 1)
    {
      for (j = 0; j < v36; ++j)
      {
        v38 = *(*(v21 + 240) + 4 * j);
        if (v38 != -1)
        {
          *(*(result + 48) + 16 * v38) = 0uLL;
          *(*(result + 48) + 16 * v38) = vaddq_f32(*(*(result + 96) + 16 * j), *(*(result + 48) + 16 * v38));
          v36 = v22[2];
        }
      }
    }
  }

  else if (!*(result + 88))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner11InterpolateIP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(a3, a2, (result + 96), (result + 48), a5);
  }

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(result, 0);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm((result + 24), 0);
}

void _ZN23C3DSubdivCPUPrimvarDataIDv4_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE(uint64_t result, uint64_t a2, int **a3, uint64_t a4, double a5, float32x4_t a6)
{
  if (*(result + 76) < a2)
  {
    v10 = scn_default_log(result, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _ZN23C3DSubdivCPUPrimvarDataIDv2_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(result + 88);
  if (*(result + 76) != a2)
  {
    if (v18 == 2)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv4_fES7_EEviRKT_RT0_i(a3, a2, (result + 96), (result + 104), *(result + 72), *&a5);
    }

    else if (v18 == 1)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner18InterpolateVaryingIP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(a3, a2, (result + 96), (result + 104), a5, a6);
    }

    else
    {
      if (*(result + 88))
      {
LABEL_20:
        v19 = *(result + 104);
        v20 = v19 + 16 * *(*(*(a4 + 88) + 24 * a2) + 8);
        *(result + 96) = v19;
        *(result + 104) = v20;
        return;
      }

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner11InterpolateIP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(a3, a2, (result + 96), (result + 104), *&a5);
    }

    if (*(result + 88) == 2)
    {
      *(result + 96) = *(result + 104);
      *(result + 104) += 16 * OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(*(*(a4 + 88) + 24 * a2), *(result + 72));
      return;
    }

    goto LABEL_20;
  }

  if (v18 == 2)
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_i(a3, a2, (result + 96), (result + 48), *(result + 72), *&a5);
  }

  else if (v18 == 1)
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner18InterpolateVaryingIP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(a3, a2, (result + 96), (result + 48), a5, a6);
  }

  else if (!*(result + 88))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner11InterpolateIP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(a3, a2, (result + 96), (result + 48), *&a5);
  }

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(result, 0);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm((result + 24), 0);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner11InterpolateIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(int **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int16x4_t a5)
{
  if (a2 < 1 || (v5 = a2, ((*(*a1 + 9) - *(*a1 + 8)) >> 3) < a2))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner11InterpolateIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0__cold_1();
  }

  v9 = **a1;
  if (v9)
  {
    if (v9 == 2)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, a2, a3, a4, a5);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, v5, a3, a4);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, v5, a3, a4, v10);
    }

    else if (v9 == 1)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, a2, a3, a4, a5);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, v5, a3, a4);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, v5, a3, a4);
    }
  }

  else
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, a2, a3, a4, a5);
    v11 = 0;
    v12 = *(*(*a1 + 8) + 8 * v5 - 8);
    v13 = *(v12 + 8);
    v14 = *(v13 + 16);
    __p = 0;
    if (v14 >= 9)
    {
      v11 = operator new(4 * v14);
      __p = v11;
    }

    v15 = *(v13 + 4);
    if (v15 >= 1)
    {
      v16 = 0;
      for (i = 0; i < v15; ++i)
      {
        v18 = *(*(v12 + 216) + 4 * i);
        if (v18 != -1)
        {
          v19 = (*(v13 + 120) + v16);
          *(*a4 + 8 * v18) = 0;
          *(*a4 + 8 * v18) = vmla_f32(*(*a4 + 8 * v18), 0x3F0000003F000000, *(*a3 + 8 * *v19));
          *(*a4 + 8 * v18) = vmla_f32(*(*a4 + 8 * v18), 0x3F0000003F000000, *(*a3 + 8 * v19[1]));
          v15 = *(v13 + 4);
        }

        v16 += 8;
      }

      v11 = __p;
    }

    operator delete(v11);
    v20 = 0;
    v21 = *(*(*a1 + 8) + 8 * v5 - 8);
    v22 = *(v21 + 8);
    v27 = 0;
    if ((2 * *(v22 + 20)) >= 0x21)
    {
      v20 = operator new(4 * (2 * *(v22 + 20)));
      v27 = v20;
    }

    v23 = *(v22 + 8);
    if (v23 >= 1)
    {
      for (j = 0; j < v23; ++j)
      {
        v25 = *(*(v21 + 240) + 4 * j);
        if (v25 != -1)
        {
          *(*a4 + 8 * v25) = 0;
          *(*a4 + 8 * v25) = vadd_f32(*(*a3 + 8 * j), *(*a4 + 8 * v25));
          v23 = *(v22 + 8);
        }
      }

      v20 = v27;
    }

    operator delete(v20);
  }
}

uint64_t _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner18InterpolateVaryingIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(uint64_t result, int a2, void *a3, void *a4, double a5, double a6)
{
  if (a2 < 1 || (v6 = *(*result + 64), ((*(*result + 72) - v6) >> 3) < a2))
  {
    _ZN23C3DSubdivCPUPrimvarDataIDv3_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE_cold_2();
  }

  v7 = *(v6 + 8 * a2 - 8);
  v8 = *(v7 + 8);
  if (*(v7 + 52) >= 1 && *v8 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(v7 + 168) + 4 * v9);
      if (v10 != -1)
      {
        v11 = *(v8 + 6);
        v12 = *(*(v8 + 3) + 8 * v9);
        v13 = *(*(v8 + 3) + 8 * v9 + 4);
        *(*a4 + 8 * v10) = 0;
        if (v12 >= 1)
        {
          v14 = (v11 + 4 * v13);
          *&a6 = 1.0 / v12;
          a6 = COERCE_DOUBLE(vdup_lane_s32(*&a6, 0));
          do
          {
            v15 = *v14++;
            *(*a4 + 8 * v10) = vmla_f32(*(*a4 + 8 * v10), *(*a3 + 8 * v15), *&a6);
            --v12;
          }

          while (v12);
        }
      }

      ++v9;
    }

    while (v9 < *v8);
  }

  v16 = v8[1];
  if (v16 >= 1)
  {
    v17 = 0;
    for (i = 0; i < v16; ++i)
    {
      v19 = *(*(v7 + 216) + 4 * i);
      if (v19 != -1)
      {
        v20 = (*(v8 + 15) + v17);
        *(*a4 + 8 * v19) = 0;
        *(*a4 + 8 * v19) = vmla_f32(*(*a4 + 8 * v19), 0x3F0000003F000000, *(*a3 + 8 * *v20));
        *(*a4 + 8 * v19) = vmla_f32(*(*a4 + 8 * v19), 0x3F0000003F000000, *(*a3 + 8 * v20[1]));
        v16 = v8[1];
      }

      v17 += 8;
    }
  }

  v21 = v8[2];
  if (v21 >= 1)
  {
    for (j = 0; j < v21; ++j)
    {
      v23 = *(*(v7 + 240) + 4 * j);
      if (v23 != -1)
      {
        *(*a4 + 8 * v23) = 0;
        *(*a4 + 8 * v23) = vadd_f32(*(*a3 + 8 * j), *(*a4 + 8 * v23));
        v21 = v8[2];
      }
    }
  }

  return result;
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_i(int **result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int16x4_t a6)
{
  if (a2 < 1 || (v6 = a2, ((*(*result + 9) - *(*result + 8)) >> 3) < a2))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_i_cold_1();
  }

  v8 = a5;
  v11 = **result;
  if (v11)
  {
    if (v11 == 2)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8, v12);
    }

    else if (v11 == 1)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);
    }
  }

  else
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);
  }
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv2_fES7_EEviRKT_RT0_i(int **result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int16x4_t a6)
{
  if (a2 < 1 || (v6 = a2, ((*(*result + 9) - *(*result + 8)) >> 3) < a2))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_i_cold_1();
  }

  v8 = a5;
  v11 = **result;
  if (v11)
  {
    if (v11 == 2)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv2_fES9_EEviRKT0_RT1_i(result, v6, a3, a4, v8, v12);
    }

    else if (v11 == 1)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fES9_EEviRKT0_RT1_i(result, v6, a3, a4, v8);
    }
  }

  else
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv2_fES9_EEviRKT0_RT1_i(result, v6, a3, a4, v8);
  }
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t a1, int a2, void *a3, void *a4, int16x4_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v5 + 52))
  {
    v8 = 0;
    v9 = *(v5 + 8);
    v10 = v9[5];
    v26 = &v27;
    __p = 0;
    if (v10 >= 0x11)
    {
      v8 = operator new(4 * v10);
      __p = v8;
      v26 = v8;
    }

    if (*v9 >= 1)
    {
      v11 = 0;
      a5.i32[0] = 1.0;
      v12 = vdupq_n_s64(4uLL);
      do
      {
        v13 = *(*(v5 + 168) + 4 * v11);
        if (v13 != -1)
        {
          v14 = (*(v9 + 3) + 8 * v11);
          v15 = *v14;
          if (v15 < 1)
          {
            *(*a4 + 8 * v13) = 0;
          }

          else
          {
            v16 = *(v9 + 6) + 4 * v14[1];
            v17 = 1.0 / v15;
            v18 = (v15 + 3) & 0xFFFFFFFC;
            v19 = vdupq_n_s64(v15 - 1);
            v20 = (v26 + 1);
            v21 = xmmword_21C27F640;
            v22 = xmmword_21C27F630;
            do
            {
              v23 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s16(v23, a5).u8[0])
              {
                *(v20 - 2) = v17;
              }

              if (vuzp1_s16(v23, a5).i8[2])
              {
                *(v20 - 1) = v17;
              }

              if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v19, *&v22))).i32[1])
              {
                *v20 = v17;
                v20[1] = v17;
              }

              v22 = vaddq_s64(v22, v12);
              v21 = vaddq_s64(v21, v12);
              v20 += 4;
              v18 -= 4;
            }

            while (v18);
            *(*a4 + 8 * v13) = 0;
            v24 = 0;
            v25 = 4 * v15;
            do
            {
              *(*a4 + 8 * v13) = vmla_n_f32(*(*a4 + 8 * v13), *(*a3 + 8 * *(v16 + v24)), *(v26 + v24));
              v24 += 4;
            }

            while (v25 != v24);
          }
        }

        ++v11;
      }

      while (v11 < *v9);
      v8 = __p;
    }

    operator delete(v8);
  }
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v46 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = *(v9 + 8);
  v35 = *(v9 + 16);
  v39 = *(v8 + 4);
  v11 = *(v10 + 16);
  v40 = &v43;
  v41 = v11;
  v42 = 8;
  v37 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v40 = v7;
    v42 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v9 + 216) + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v36[0] = v45;
        v36[1] = 0;
        v36[2] = v40;
        memset(&v36[3], 0, 13);
        v38 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v39, &v37, v36, v20, (*(*(v35 + 432) + 2 * v14) >> 7) & 0xF);
        *(*a4 + 8 * v14) = 0;
        *(*a4 + 8 * v14) = vmla_n_f32(*(*a4 + 8 * v14), *(*a3 + 8 * *v15), v45[0]);
        *(*a4 + 8 * v14) = vmla_n_f32(*(*a4 + 8 * v14), *(*a3 + 8 * v15[1]), v45[1]);
        if (SLODWORD(v36[4]) >= 1 && v18 >= 1)
        {
          v21 = 0;
          v22 = v16 + 4 * v19;
          do
          {
            if (BYTE4(v36[4]) == 1)
            {
              if (*(v9 + 52) <= 0)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v23 = *(*(v9 + 168) + 4 * *(v22 + 4 * v21));
              if (v23 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
              }

              v24 = *a4;
              v25 = *a4;
            }

            else
            {
              v26 = *(v22 + 4 * v21);
              v27 = 2 * v26;
              v28 = *(v10 + 24);
              v29 = *(v28 + 8 * v26 + 4);
              v30 = (*(v10 + 72) + 4 * v29);
              v31 = *(v28 + 4 * v27);
              v32 = 1;
              do
              {
                v33 = *v30++;
                ++v32;
              }

              while (i != v33);
              v34 = *(v10 + 48) + 4 * v29;
              if (v32 < v31)
              {
                v31 = 0;
              }

              v23 = *(v34 + 4 * (v32 - v31));
              v25 = *a4;
              v24 = *a3;
            }

            *(v25 + 8 * v14) = vmla_n_f32(*(v25 + 8 * v14), *(v24 + 8 * v23), v40[v21++]);
          }

          while (v21 != v18);
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t *a1, int a2, void *a3, void *a4)
{
  v7 = 0;
  v49 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v11 = v9[1];
  v10 = v9[2];
  v43 = *(v8 + 4);
  v12 = 2 * *(v11 + 20);
  v44 = &v47;
  v45 = v12;
  v46 = 32;
  v38[0] = v11;
  v38[1] = v10;
  v31 = v10;
  __p = 0;
  if (v12 >= 0x21)
  {
    v7 = operator new(4 * v12);
    __p = v7;
    v44 = v7;
    v46 = v12;
  }

  v13 = *(v11 + 8);
  if (v13 >= 1)
  {
    for (i = 0; i < v13; ++i)
    {
      v15 = *(v9[30] + 4 * i);
      if (v15 != -1)
      {
        v16 = v15;
        v35 = *(v11 + 360);
        v17 = *(v11 + 336);
        v18 = (8 * i) | 4;
        v34 = *(v17 + v18);
        v19 = *(v17 + 8 * i);
        v20 = *(v11 + 264);
        v33 = *(v20 + v18);
        v21 = *(v20 + 8 * i);
        v37 = 0.0;
        v22 = v44;
        v23 = v44 + v19;
        v36[0] = &v37;
        v36[1] = v44;
        v36[2] = v23;
        memset(&v36[3], 0, 13);
        v39 = i;
        v40 = v15;
        v41 = *(*(v38[0] + 336) + 8 * i);
        v42 = *(*(v38[0] + 264) + 8 * i);
        v32 = *(v11 + 288);
        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v43, v38, v36, (*(*(v11 + 432) + 2 * i) >> 7) & 0xF, (*(*(v31 + 432) + 2 * v15) >> 7) & 0xF);
        *(*a4 + 8 * v16) = 0;
        if (SLODWORD(v36[4]) >= 1)
        {
          if (BYTE4(v36[4]) != 1)
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
          }

          if (v21 >= 1)
          {
            v24 = (v32 + 4 * v33);
            do
            {
              v25 = *v24++;
              v26 = *(v9[21] + 4 * v25);
              if (v26 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v27 = *v23++;
              *(*a4 + 8 * v16) = vmla_n_f32(*(*a4 + 8 * v16), *(*a4 + 8 * v26), v27);
              --v21;
            }

            while (v21);
          }
        }

        if (SHIDWORD(v36[3]) >= 1 && v19 >= 1)
        {
          v28 = (v35 + 4 * v34);
          do
          {
            v29 = *v28++;
            v30 = (*(v11 + 120) + 8 * v29);
            LODWORD(v29) = *v22;
            v22 = (v22 + 4);
            *(*a4 + 8 * v16) = vmla_n_f32(*(*a4 + 8 * v16), *(*a3 + 8 * v30[i == *v30]), *&v29);
            --v19;
          }

          while (v19);
        }

        *(*a4 + 8 * v16) = vmla_n_f32(*(*a4 + 8 * v16), *(*a3 + 8 * i), v37);
        v13 = *(v11 + 8);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v46 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = *(v9 + 8);
  v35 = *(v9 + 16);
  v39 = *(v8 + 4);
  v11 = *(v10 + 16);
  v40 = &v43;
  v41 = v11;
  v42 = 8;
  v37 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v40 = v7;
    v42 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v9 + 216) + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v36[0] = v45;
        v36[1] = 0;
        v36[2] = v40;
        memset(&v36[3], 0, 13);
        v38 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v39, &v37, v36, v20, (*(*(v35 + 432) + 2 * v14) >> 7) & 0xF);
        *(*a4 + 8 * v14) = 0;
        *(*a4 + 8 * v14) = vmla_n_f32(*(*a4 + 8 * v14), *(*a3 + 8 * *v15), v45[0]);
        *(*a4 + 8 * v14) = vmla_n_f32(*(*a4 + 8 * v14), *(*a3 + 8 * v15[1]), v45[1]);
        if (SLODWORD(v36[4]) >= 1 && v18 >= 1)
        {
          v21 = 0;
          v22 = v16 + 4 * v19;
          do
          {
            if (BYTE4(v36[4]) == 1)
            {
              if (*(v9 + 52) <= 0)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v23 = *(*(v9 + 168) + 4 * *(v22 + 4 * v21));
              if (v23 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
              }

              v24 = *a4;
              v25 = *a4;
            }

            else
            {
              v26 = *(v22 + 4 * v21);
              v27 = 2 * v26;
              v28 = *(v10 + 24);
              v29 = *(v28 + 8 * v26 + 4);
              v30 = (*(v10 + 72) + 4 * v29);
              v31 = *(v28 + 4 * v27);
              v32 = 1;
              do
              {
                v33 = *v30++;
                ++v32;
              }

              while (i != v33);
              v34 = *(v10 + 48) + 4 * v29;
              if (v32 < v31)
              {
                v31 = 0;
              }

              v23 = *(v34 + 4 * (v32 - v31));
              v25 = *a4;
              v24 = *a3;
            }

            *(v25 + 8 * v14) = vmla_n_f32(*(v25 + 8 * v14), *(v24 + 8 * v23), v40[v21++]);
          }

          while (v21 != v18);
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t *a1, int a2, void *a3, void *a4, double a5)
{
  v8 = 0;
  v50 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*(v9 + 64) + 8 * a2 - 8);
  v12 = v10[1];
  v11 = v10[2];
  v44 = *(v9 + 4);
  v13 = 2 * *(v12 + 20);
  v45 = &v48;
  v46 = v13;
  v47 = 32;
  v39[0] = v12;
  v39[1] = v11;
  v32 = v11;
  __p = 0;
  if (v13 >= 0x21)
  {
    v8 = operator new(4 * v13);
    __p = v8;
    v45 = v8;
    v47 = v13;
  }

  v14 = *(v12 + 8);
  if (v14 >= 1)
  {
    for (i = 0; i < v14; ++i)
    {
      v16 = *(v10[30] + 4 * i);
      if (v16 != -1)
      {
        v17 = v16;
        v36 = *(v12 + 360);
        v18 = *(v12 + 336);
        v19 = (8 * i) | 4;
        v35 = *(v18 + v19);
        v20 = *(v18 + 8 * i);
        v21 = *(v12 + 264);
        v34 = *(v21 + v19);
        v22 = *(v21 + 8 * i);
        v38 = 0.0;
        v23 = v45;
        v24 = v45 + v20;
        v37[0] = &v38;
        v37[1] = v45;
        v37[2] = v24;
        memset(&v37[3], 0, 13);
        v40 = i;
        v41 = v16;
        v42 = *(*(v39[0] + 336) + 8 * i);
        v43 = *(*(v39[0] + 264) + 8 * i);
        v33 = *(v12 + 288);
        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v44, v39, v37, (*(*(v12 + 432) + 2 * i) >> 7) & 0xF, (*(*(v32 + 432) + 2 * v16) >> 7) & 0xF, a5);
        *(*a4 + 8 * v17) = 0;
        if (SLODWORD(v37[4]) >= 1)
        {
          if (BYTE4(v37[4]) != 1)
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
          }

          if (v22 >= 1)
          {
            v25 = (v33 + 4 * v34);
            do
            {
              v26 = *v25++;
              v27 = *(v10[21] + 4 * v26);
              if (v27 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v28 = *v24++;
              *(*a4 + 8 * v17) = vmla_n_f32(*(*a4 + 8 * v17), *(*a4 + 8 * v27), v28);
              --v22;
            }

            while (v22);
          }
        }

        if (SHIDWORD(v37[3]) >= 1 && v20 >= 1)
        {
          v29 = (v36 + 4 * v35);
          do
          {
            v30 = *v29++;
            v31 = (*(v12 + 120) + 8 * v30);
            LODWORD(v30) = *v23;
            v23 = (v23 + 4);
            *(*a4 + 8 * v17) = vmla_n_f32(*(*a4 + 8 * v17), *(*a3 + 8 * v31[i == *v31]), *&v30);
            --v20;
          }

          while (v20);
        }

        *&a5 = v38;
        *(*a4 + 8 * v17) = vmla_n_f32(*(*a4 + 8 * v17), *(*a3 + 8 * i), v38);
        v14 = *(v12 + 8);
      }
    }

    v8 = __p;
  }

  operator delete(v8);
}

int *OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(int *result, OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface *this, uint64_t a3, int a4, int a5)
{
  v5 = a3;
  v49 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    v7 = *this;
    v8 = *(this + 2);
    if (*(*(*this + 216) + 4 * v8) <= 0.0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if (a5)
    {
      if (a5 != 4)
      {
        v9 = *this;
        LODWORD(v10) = *(this + 2);
        goto LABEL_8;
      }
    }

    else if (a4 != 4)
    {
      v9 = *this;
      v10 = *(this + 2);
      v27 = *(*(*this + 216) + 4 * v10);
      if (v27 < 1.0 && ((*result & 0x60) == 0 || (v27 + -1.0) <= 0.0))
      {
LABEL_8:
        v11 = *(*(v9 + 144) + 8 * v10);
        *(a3 + 24) = 2;
        *(a3 + 32) = v11;
        *(a3 + 36) = 1;
        if ((*result & 0x180) == 0x80)
        {
          if (v11 == 2)
          {
            result = OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface::GetNumVerticesPerFace(this, &v47);
            if (v47 == 3 || (v12 = 0.25, v13 = 0.25, v48 == 3))
            {
              v14 = 0.47;
              if (v48 == 3)
              {
                v15 = 0.47;
              }

              else
              {
                v15 = 0.25;
              }

              if (v47 != 3)
              {
                v14 = 0.25;
              }

              v13 = (v14 + v15) * 0.5;
              v12 = ((v13 * -2.0) + 1.0) * 0.5;
            }

            v16 = *v5;
            v16->f32[0] = v12;
            v16->f32[1] = v12;
            v9 = *this;
            LODWORD(v11) = *(v5 + 32);
            goto LABEL_51;
          }

          v16 = *a3;
          __asm { FMOV            V0.2S, #0.25 }

          **a3 = _D0;
        }

        else
        {
          v16 = *a3;
          __asm { FMOV            V0.2S, #0.25 }

          **a3 = _D0;
          if (v11 == 2)
          {
            v13 = 0.25;
            LODWORD(v11) = 2;
LABEL_51:
            v37 = *(v5 + 16);
            *v37 = v13;
            v37[1] = v13;
LABEL_62:
            v45 = *(*(v9 + 216) + 4 * *(this + 2));
            *v16 = vmla_n_f32(vmul_n_f32(*v16, 1.0 - v45), 0x3F0000003F000000, v45);
            if (v11 >= 1)
            {
              v46 = *(v5 + 16);
              v11 = v11;
              do
              {
                *v46 = (1.0 - v45) * *v46;
                ++v46;
                --v11;
              }

              while (v11);
            }

            return result;
          }
        }

        if (v11 >= 1)
        {
          *_D0.i32 = 0.5 / v11;
          v38 = (v11 + 3) & 0xFFFFFFFC;
          v39 = vdupq_n_s64(v11 - 1);
          v40 = xmmword_21C27F630;
          v41 = xmmword_21C27F640;
          v42 = (*(a3 + 16) + 8);
          v43 = vdupq_n_s64(4uLL);
          do
          {
            v44 = vmovn_s64(vcgeq_u64(v39, v41));
            if (vuzp1_s16(v44, _D0).u8[0])
            {
              *(v42 - 2) = _D0.i32[0];
            }

            if (vuzp1_s16(v44, _D0).i8[2])
            {
              *(v42 - 1) = _D0.i32[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v39, *&v40))).i32[1])
            {
              *v42 = _D0.i32[0];
              v42[1] = _D0.i32[0];
            }

            v40 = vaddq_s64(v40, v43);
            v41 = vaddq_s64(v41, v43);
            v42 += 4;
            v38 -= 4;
          }

          while (v38);
        }

        goto LABEL_62;
      }
    }

    *(a3 + 24) = 2;
    *(a3 + 28) = 0;
    *(a3 + 36) = 0;
    _D0.i32[0] = 0.5;
    goto LABEL_37;
  }

  if (a4 != 1)
  {
    goto LABEL_5;
  }

  v7 = *this;
  LODWORD(v8) = *(this + 2);
LABEL_19:
  v17 = *(*(v7 + 144) + 8 * v8);
  *(a3 + 24) = 2;
  *(a3 + 32) = v17;
  *(a3 + 36) = 1;
  if ((*result & 0x180) == 0x80)
  {
    if (v17 == 2)
    {
      result = OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface::GetNumVerticesPerFace(this, &v47);
      if (v47 == 3 || (v18 = 0.25, _D0.i32[0] = 0.25, v48 == 3))
      {
        v20 = 0.47;
        if (v48 == 3)
        {
          v21 = 0.47;
        }

        else
        {
          v21 = 0.25;
        }

        if (v47 != 3)
        {
          v20 = 0.25;
        }

        *_D0.i32 = (v20 + v21) * 0.5;
        v18 = ((*_D0.i32 * -2.0) + 1.0) * 0.5;
      }

      v22 = *v5;
      *v22 = v18;
      v22[1] = v18;
      goto LABEL_31;
    }

    __asm { FMOV            V0.2S, #0.25 }

    **a3 = _D0;
  }

  else
  {
    __asm { FMOV            V0.2S, #0.25 }

    **a3 = _D0;
    _D0.i32[0] = 0.25;
    if (v17 == 2)
    {
LABEL_31:
      v5 += 16;
LABEL_37:
      v28 = *v5;
      v28->i32[0] = _D0.i32[0];
      v28->i32[1] = _D0.i32[0];
      return result;
    }
  }

  if (v17 >= 1)
  {
    *_D0.i32 = 0.5 / v17;
    v29 = (v17 + 3) & 0xFFFFFFFC;
    v30 = vdupq_n_s64(v17 - 1);
    v31 = xmmword_21C27F630;
    v32 = xmmword_21C27F640;
    v33 = (*(a3 + 16) + 8);
    v34 = vdupq_n_s64(4uLL);
    do
    {
      v35 = vmovn_s64(vcgeq_u64(v30, v32));
      if (vuzp1_s16(v35, _D0).u8[0])
      {
        *(v33 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v35, _D0).i8[2])
      {
        *(v33 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v30, *&v31))).i32[1])
      {
        *v33 = _D0.i32[0];
        v33[1] = _D0.i32[0];
      }

      v31 = vaddq_s64(v31, v34);
      v32 = vaddq_s64(v32, v34);
      v33 += 4;
      v29 -= 4;
    }

    while (v29);
  }

  return result;
}

int *OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface::GetNumVerticesPerFace(int *this, int *a2)
{
  v2 = *this;
  v3 = this[2];
  v4 = *(*this + 144);
  v5 = *(v4 + 8 * v3);
  if (v5 >= 1)
  {
    v6 = (*(v2 + 168) + 4 * *(v4 + 8 * v3 + 4));
    v7 = *(v2 + 24);
    do
    {
      v8 = *v6++;
      *a2++ = *(v7 + 8 * v8);
      --v5;
    }

    while (v5);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(int *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v81 = *MEMORY[0x277D85DE8];
  v7 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v8 = *(a2 + 28);
    if (v8 != *(a2 + 24))
    {
      OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>();
    }

    *(a3 + 24) = 1;
    *(a3 + 28) = v8;
    *(a3 + 32) = v8;
    *(a3 + 36) = 1;
    **a3 = (v8 - 2) / v8;
    if (v8 >= 1)
    {
      v9 = 1.0 / (v8 * v8);
      v10 = *(a3 + 8);
      v11 = *(a3 + 16);
      do
      {
        *v10++ = v9;
        *v11++ = v9;
        --v8;
      }

      while (v8);
    }

    return;
  }

  v12 = a4;
  if (a5)
  {
    v14 = 1;
  }

  else
  {
    v14 = a4 == 0;
  }

  if (v14)
  {
    v15 = a5;
  }

  else
  {
    v15 = a4;
  }

  v16 = *(a2 + 24);
  v17 = 4 * v16;
  MEMORY[0x28223BE20](a1);
  v18 = &v79 - ((4 * v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v18, 4 * v16);
  if ((v12 | 4) != 4 && v15 == v12)
  {
    v18 = 0;
    v22 = 0.0;
LABEL_27:
    if (v12 == 4)
    {
      v79 = v15;
      v32 = 0xFFFFFFFF00000000;
      v33 = v18;
      do
      {
        v34 = *v33++;
        v32 += 0x100000000;
      }

      while (v34 <= 0.0);
      v35 = v16 << 32;
      v36 = &v18[4 * v16 - 4];
      do
      {
        v37 = *v36--;
        v35 -= 0x100000000;
      }

      while (v37 <= 0.0);
      v38 = *(a2 + 24);
      *(a3 + 24) = 1;
      *(a3 + 28) = v38;
      *(a3 + 36) = 0;
      **a3 = 1061158912;
      v39 = *(a3 + 8);
      if (v38 >= 1)
      {
        bzero(*(a3 + 8), 4 * v38);
      }

      *(v39 + (v32 >> 30)) = 1040187392;
      *(v39 + (v35 >> 30)) = 1040187392;
      v15 = v79;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v15 != v12)
    {
      v80 = *a1;
      MEMORY[0x28223BE20](v19);
      bzero(&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v16);
      ChildSharpnessPerEdge = OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface::GetChildSharpnessPerEdge(a2, &v80, (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)));
      v41 = ChildSharpnessPerEdge;
      v42 = *(a2 + 20);
      v43 = *(*(a2 + 8) + 408);
      v44 = *(v43 + 4 * v42);
      if (v15 || (ChildSharpnessPerEdge = OpenSubdiv::v3_1_1::Sdc::Crease::DetermineVertexVertexRule(&v80, *(v43 + 4 * v42), v16, ChildSharpnessPerEdge), v15 = ChildSharpnessPerEdge, ChildSharpnessPerEdge != v12))
      {
        MEMORY[0x28223BE20](ChildSharpnessPerEdge);
        v46 = (&v79 - v45);
        bzero(&v79 - v45, v47);
        v48 = v46 + 1;
        if ((v15 - 1) > 1)
        {
          if (v15 == 4)
          {
            v55 = 0xFFFFFFFF00000000;
            v56 = v41;
            do
            {
              v57 = *v56++;
              v55 += 0x100000000;
            }

            while (v57 <= 0.0);
            v58 = v16 << 32;
            v59 = &v41[v16 - 1];
            do
            {
              v60 = *v59--;
              v58 -= 0x100000000;
            }

            while (v60 <= 0.0);
            v54 = *(a2 + 24);
            *v46 = 0.75;
            v61 = v46 + 1;
            if (v54 >= 1)
            {
              bzero(v46 + 1, 4 * v54);
            }

            LODWORD(v49) = 0;
            *(v61 + (v55 >> 30)) = 1040187392;
            *(v61 + (v58 >> 30)) = 1040187392;
            v48 = v46 + 1;
            v53 = 0;
          }

          else
          {
            v53 = 0;
            LODWORD(v49) = 0;
            LODWORD(v54) = 0;
            *v46 = 1.0;
          }
        }

        else
        {
          v49 = *(a2 + 28);
          if (v49 != *(a2 + 24))
          {
            OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>();
          }

          *v46 = (v49 - 2) / v49;
          if (v49 >= 1)
          {
            v50 = 1.0 / (v49 * v49);
            v51 = v46 + 1;
            v52 = v49;
            do
            {
              *v51 = v50;
              v51[v16] = v50;
              ++v51;
              --v52;
            }

            while (v52);
          }

          v53 = 1;
          LODWORD(v54) = v49;
        }

        v62 = OpenSubdiv::v3_1_1::Sdc::Crease::ComputeFractionalWeightAtVertex(&v80, v22, v44, v16, v18, v41);
        v63 = 1.0 - *&v62;
        **a3 = ((1.0 - *&v62) * *v46) + (*&v62 * **a3);
        if (v54)
        {
          if (*(a3 + 28))
          {
            if (v54 >= 1)
            {
              v64 = *(a3 + 8);
              v65 = v54;
              v66 = v48;
              do
              {
                v67 = *v66++;
                *v64 = (v63 * v67) + (*&v62 * *v64);
                ++v64;
                --v65;
              }

              while (v65);
            }
          }

          else
          {
            *(a3 + 28) = v54;
            if (v54 >= 1)
            {
              v68 = *(a3 + 8);
              v69 = v54;
              v70 = v48;
              do
              {
                v71 = *v70++;
                *v68++ = v63 * v71;
                --v69;
              }

              while (v69);
            }
          }
        }

        if (v49)
        {
          v72 = &v48[v16];
          if (*(a3 + 32))
          {
            if (v53 != *(a3 + 36))
            {
              OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>();
            }

            if (v49 >= 1)
            {
              v73 = *(a3 + 16);
              v74 = v49;
              do
              {
                v75 = *v72++;
                *v73 = (v63 * v75) + (*&v62 * *v73);
                ++v73;
                --v74;
              }

              while (v74);
            }
          }

          else
          {
            *(a3 + 32) = v49;
            *(a3 + 36) = v53;
            if (v49 >= 1)
            {
              v76 = *(a3 + 16);
              v77 = v49;
              do
              {
                v78 = *v72++;
                *v76++ = v63 * v78;
                --v77;
              }

              while (v77);
            }
          }
        }
      }
    }

    return;
  }

  v20 = *a2;
  v21 = *(a2 + 16);
  v22 = *(*(*a2 + 408) + 4 * v21);
  if (v16 >= 1)
  {
    v23 = (v20[45] + 4 * *(v20[42] + 8 * v21 + 4));
    v24 = v20[27];
    v25 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = v16;
    do
    {
      v27 = *v23++;
      *v25++ = *(v24 + 4 * v27);
      --v26;
    }

    while (v26);
  }

  if (!v12)
  {
    v80 = *a1;
    v19 = OpenSubdiv::v3_1_1::Sdc::Crease::DetermineVertexVertexRule(&v80, v22, v16, (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v12 = v19;
    v7 = v19 - 1;
  }

  if (v7 > 1)
  {
    goto LABEL_27;
  }

  v28 = *(a2 + 28);
  if (v28 != *(a2 + 24))
  {
    OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>();
  }

  *(a3 + 24) = 1;
  *(a3 + 28) = v28;
  *(a3 + 32) = v28;
  *(a3 + 36) = 1;
  **a3 = (v28 - 2) / v28;
  if (v28 >= 1)
  {
    v29 = 1.0 / (v28 * v28);
    v30 = *(a3 + 8);
    v31 = *(a3 + 16);
    do
    {
      *v30++ = v29;
      *v31++ = v29;
      --v28;
    }

    while (v28);
  }
}

float *OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface::GetChildSharpnessPerEdge(OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface *this, const OpenSubdiv::v3_1_1::Sdc::Crease *a2, float *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = *(this + 6);
  v7 = &v14;
  __p = 0;
  if (v6 >= 0x11)
  {
    v7 = operator new(4 * v6);
    __p = v7;
    LODWORD(v6) = *(this + 6);
  }

  if (v6 >= 1)
  {
    v8 = (*(*this + 360) + 4 * *(*(*this + 336) + 8 * *(this + 4) + 4));
    v9 = *(*this + 216);
    v10 = v6;
    v11 = v7;
    do
    {
      v12 = *v8++;
      *v11 = *(v9 + 4 * v12);
      v11 = (v11 + 4);
      --v10;
    }

    while (v10);
  }

  OpenSubdiv::v3_1_1::Sdc::Crease::SubdivideEdgeSharpnessesAroundVertex(a2, v6, v7, a3);
  operator delete(__p);
  return a3;
}

_DWORD *OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(_DWORD *result, int *a2, uint64_t a3, int a4, int a5)
{
  if (!a4)
  {
    v5 = *a2;
    v6 = a2[2];
    if (*(*(*a2 + 216) + 4 * v6) <= 0.0)
    {
      goto LABEL_10;
    }

LABEL_5:
    if (a5)
    {
      if (a5 != 4)
      {
        v7 = *a2;
        LODWORD(v8) = a2[2];
LABEL_8:
        v9 = v8;
        v10 = *(*(v7 + 144) + 8 * v8);
        *(a3 + 24) = 2;
        *(a3 + 32) = v10;
        *(a3 + 36) = 0;
        v11 = *a3;
        __asm { FMOV            V0.2S, #0.375 }

        **a3 = _D0;
        if (v10 == 2)
        {
          **(a3 + 16) = 0x3E0000003E000000;
        }

        else if (v10 >= 1)
        {
          *_D0.i32 = (2.0 / v10) * 0.125;
          v29 = (v10 + 3) & 0xFFFFFFFC;
          v30 = vdupq_n_s64(v10 - 1);
          v31 = xmmword_21C27F630;
          v32 = xmmword_21C27F640;
          v33 = (*(a3 + 16) + 8);
          v34 = vdupq_n_s64(4uLL);
          do
          {
            v35 = vmovn_s64(vcgeq_u64(v30, v32));
            if (vuzp1_s16(v35, _D0).u8[0])
            {
              *(v33 - 2) = _D0.i32[0];
            }

            if (vuzp1_s16(v35, _D0).i8[2])
            {
              *(v33 - 1) = _D0.i32[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v30, *&v31))).i32[1])
            {
              *v33 = _D0.i32[0];
              v33[1] = _D0.i32[0];
            }

            v31 = vaddq_s64(v31, v34);
            v32 = vaddq_s64(v32, v34);
            v33 += 4;
            v29 -= 4;
          }

          while (v29);
        }

        v36 = *(*(v7 + 216) + 4 * v9);
        *v11 = vmla_n_f32(vmul_n_f32(*v11, 1.0 - v36), 0x3F0000003F000000, v36);
        if (v10 >= 1)
        {
          v37 = *(a3 + 16);
          do
          {
            *v37 = (1.0 - v36) * *v37;
            ++v37;
            --v10;
          }

          while (v10);
        }

        return result;
      }
    }

    else if (a4 != 4)
    {
      v7 = *a2;
      v8 = a2[2];
      v27 = *(*(*a2 + 216) + 4 * v8);
      if (v27 < 1.0 && ((*result & 0x60) == 0 || (v27 + -1.0) <= 0.0))
      {
        goto LABEL_8;
      }
    }

    *(a3 + 24) = 2;
    *(a3 + 28) = 0;
    *(a3 + 36) = 0;
    v19 = 0.5;
    goto LABEL_27;
  }

  if (a4 != 1)
  {
    goto LABEL_5;
  }

  v5 = *a2;
  LODWORD(v6) = a2[2];
LABEL_10:
  v17 = *(*(v5 + 144) + 8 * v6);
  *(a3 + 24) = 2;
  *(a3 + 32) = v17;
  *(a3 + 36) = 0;
  __asm { FMOV            V0.2S, #0.375 }

  **a3 = _D0;
  if (v17 == 2)
  {
    a3 += 16;
    v19 = 0.125;
LABEL_27:
    v28 = *a3;
    v28->f32[0] = v19;
    v28->f32[1] = v19;
    return result;
  }

  if (v17 >= 1)
  {
    *_D0.i32 = (2.0 / v17) * 0.125;
    v20 = (v17 + 3) & 0xFFFFFFFC;
    v21 = vdupq_n_s64(v17 - 1);
    v22 = xmmword_21C27F630;
    v23 = xmmword_21C27F640;
    v24 = (*(a3 + 16) + 8);
    v25 = vdupq_n_s64(4uLL);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v21, v23));
      if (vuzp1_s16(v26, _D0).u8[0])
      {
        *(v24 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v26, _D0).i8[2])
      {
        *(v24 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v21, *&v22))).i32[1])
      {
        *v24 = _D0.i32[0];
        v24[1] = _D0.i32[0];
      }

      v22 = vaddq_s64(v22, v25);
      v23 = vaddq_s64(v23, v25);
      v24 += 4;
      v20 -= 4;
    }

    while (v20);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(int *a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6)
{
  v87 = *MEMORY[0x277D85DE8];
  v8 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v9 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v9;
    *(a3 + 36) = 0;
    if (v9 == 6)
    {
      **a3 = 1059061760;
      LODWORD(a6) = 1031798784;
    }

    else
    {
      v28 = 1.0 / v9;
      *&a6 = cosf(v28 * 6.2832);
      *&a6 = v28 * (0.625 - (((*&a6 * 0.25) + 0.375) * ((*&a6 * 0.25) + 0.375)));
      **a3 = 1.0 - (*&a6 * v9);
      if (v9 < 1)
      {
        return;
      }
    }

    v29 = (v9 + 3) & 0xFFFFFFFC;
    v30 = vdupq_n_s64(v9 - 1);
    v31 = xmmword_21C27F630;
    v32 = xmmword_21C27F640;
    v33 = (*(a3 + 8) + 8);
    v34 = vdupq_n_s64(4uLL);
    do
    {
      v35 = vmovn_s64(vcgeq_u64(v30, v32));
      if (vuzp1_s16(v35, *&a6).u8[0])
      {
        *(v33 - 2) = LODWORD(a6);
      }

      if (vuzp1_s16(v35, *&a6).i8[2])
      {
        *(v33 - 1) = LODWORD(a6);
      }

      if (vuzp1_s16(*&a6, vmovn_s64(vcgeq_u64(v30, *&v31))).i32[1])
      {
        *v33 = LODWORD(a6);
        v33[1] = LODWORD(a6);
      }

      v31 = vaddq_s64(v31, v34);
      v32 = vaddq_s64(v32, v34);
      v33 += 4;
      v29 -= 4;
    }

    while (v29);
    return;
  }

  v10 = a4;
  if (a5)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4 == 0;
  }

  if (v12)
  {
    v13 = a5;
  }

  else
  {
    v13 = a4;
  }

  v14 = *(a2 + 24);
  v15 = 4 * v14;
  MEMORY[0x28223BE20](a1);
  v16 = &v85 - ((4 * v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v16, 4 * v14);
  if ((v10 | 4) != 4 && v13 == v10)
  {
    v16 = 0;
    v21 = 0.0;
    goto LABEL_31;
  }

  v19 = *a2;
  v20 = *(a2 + 16);
  v21 = *(*(*a2 + 408) + 4 * v20);
  if (v14 >= 1)
  {
    v22 = (v19[45] + 4 * *(v19[42] + 8 * v20 + 4));
    v23 = v19[27];
    v24 = (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = v14;
    do
    {
      v26 = *v22++;
      *v24++ = *(v23 + 4 * v26);
      --v25;
    }

    while (v25);
  }

  if (!v10)
  {
    v86 = *a1;
    v17 = OpenSubdiv::v3_1_1::Sdc::Crease::DetermineVertexVertexRule(&v86, v21, v14, (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v10 = v17;
    v8 = v17 - 1;
  }

  if (v8 > 1)
  {
LABEL_31:
    if (v10 == 4)
    {
      v85 = v13;
      v36 = 0xFFFFFFFF00000000;
      v37 = v16;
      do
      {
        v38 = *v37++;
        v36 += 0x100000000;
      }

      while (v38 <= 0.0);
      v39 = v14 << 32;
      v40 = &v16[4 * v14 - 4];
      do
      {
        v41 = *v40--;
        v39 -= 0x100000000;
      }

      while (v41 <= 0.0);
      v42 = *(a2 + 24);
      *(a3 + 24) = 1;
      *(a3 + 28) = v42;
      *(a3 + 36) = 0;
      **a3 = 1061158912;
      v43 = *(a3 + 8);
      if (v42 >= 1)
      {
        bzero(*(a3 + 8), 4 * v42);
      }

      *(v43 + (v36 >> 30)) = 1040187392;
      *(v43 + (v39 >> 30)) = 1040187392;
      v13 = v85;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v13 == v10)
    {
      return;
    }

    v86 = *a1;
    MEMORY[0x28223BE20](v17);
    bzero(&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v14);
    ChildSharpnessPerEdge = OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface::GetChildSharpnessPerEdge(a2, &v86, (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v45 = ChildSharpnessPerEdge;
    v46 = *(a2 + 20);
    v47 = *(*(a2 + 8) + 408);
    v48 = *(v47 + 4 * v46);
    if (!v13)
    {
      ChildSharpnessPerEdge = OpenSubdiv::v3_1_1::Sdc::Crease::DetermineVertexVertexRule(&v86, *(v47 + 4 * v46), v14, ChildSharpnessPerEdge);
      v13 = ChildSharpnessPerEdge;
      if (ChildSharpnessPerEdge == v10)
      {
        return;
      }
    }

    MEMORY[0x28223BE20](ChildSharpnessPerEdge);
    v50 = (&v85 - v49);
    bzero(&v85 - v49, v51);
    v53 = (v50 + 1);
    if ((v13 - 1) > 1)
    {
      if (v13 == 4)
      {
        v63 = 0xFFFFFFFF00000000;
        v64 = v45;
        do
        {
          v65 = *v64++;
          v63 += 0x100000000;
        }

        while (v65 <= 0.0);
        v66 = v14 << 32;
        v67 = &v45[v14 - 1];
        do
        {
          v68 = *v67--;
          v66 -= 0x100000000;
        }

        while (v68 <= 0.0);
        v54 = *(a2 + 24);
        *v50 = 1061158912;
        if (v54 >= 1)
        {
          bzero(v50 + 1, 4 * v54);
        }

        *(v53 + (v63 >> 30)) = 0.125;
        *(v53 + (v66 >> 30)) = 0.125;
      }

      else
      {
        LODWORD(v54) = 0;
        *v50 = 1065353216;
      }

      goto LABEL_75;
    }

    v54 = *(a2 + 28);
    if (v54 == 6)
    {
      *v50 = 1059061760;
      v52.i32[0] = 1031798784;
    }

    else
    {
      v69 = 1.0 / v54;
      *v52.i32 = cosf(v69 * 6.2832);
      *v52.i32 = v69 * (0.625 - (((*v52.i32 * 0.25) + 0.375) * ((*v52.i32 * 0.25) + 0.375)));
      *v50 = 1.0 - (*v52.i32 * v54);
      if (v54 < 1)
      {
LABEL_75:
        v77 = OpenSubdiv::v3_1_1::Sdc::Crease::ComputeFractionalWeightAtVertex(&v86, v21, v48, v14, v16, v45);
        v78 = 1.0 - *&v77;
        **a3 = ((1.0 - *&v77) * *v50) + (*&v77 * **a3);
        if (v54)
        {
          if (*(a3 + 28))
          {
            if (v54 >= 1)
            {
              v79 = *(a3 + 8);
              v80 = v54;
              do
              {
                v81 = *v53++;
                *v79 = (v78 * v81) + (*&v77 * *v79);
                ++v79;
                --v80;
              }

              while (v80);
            }
          }

          else
          {
            *(a3 + 28) = v54;
            if (v54 >= 1)
            {
              v82 = *(a3 + 8);
              v83 = v54;
              do
              {
                v84 = *v53++;
                *v82++ = v78 * v84;
                --v83;
              }

              while (v83);
            }
          }
        }

        return;
      }
    }

    v70 = (v54 + 3) & 0xFFFFFFFC;
    v71 = vdupq_n_s64(v54 - 1);
    v72 = xmmword_21C27F630;
    v73 = xmmword_21C27F640;
    v74 = v50 + 4;
    v75 = vdupq_n_s64(4uLL);
    do
    {
      v76 = vmovn_s64(vcgeq_u64(v71, v73));
      if (vuzp1_s16(v76, v52).u8[0])
      {
        *(v74 - 3) = v52.i32[0];
      }

      if (vuzp1_s16(v76, v52).i8[2])
      {
        *(v74 - 2) = v52.i32[0];
      }

      if (vuzp1_s16(v52, vmovn_s64(vcgeq_u64(v71, *&v72))).i32[1])
      {
        *(v74 - 1) = v52.i32[0];
        *v74 = v52.i32[0];
      }

      v72 = vaddq_s64(v72, v75);
      v73 = vaddq_s64(v73, v75);
      v74 += 4;
      v70 -= 4;
    }

    while (v70);
    goto LABEL_75;
  }

  v27 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v27;
  *(a3 + 36) = 0;
  if (v27 == 6)
  {
    **a3 = 1059061760;
    v18.i32[0] = 1031798784;
  }

  else
  {
    v55 = 1.0 / v27;
    *v18.i32 = cosf(v55 * 6.2832);
    *v18.i32 = v55 * (0.625 - (((*v18.i32 * 0.25) + 0.375) * ((*v18.i32 * 0.25) + 0.375)));
    **a3 = 1.0 - (*v18.i32 * v27);
    if (v27 < 1)
    {
      return;
    }
  }

  v56 = (v27 + 3) & 0xFFFFFFFC;
  v57 = vdupq_n_s64(v27 - 1);
  v58 = xmmword_21C27F630;
  v59 = xmmword_21C27F640;
  v60 = (*(a3 + 8) + 8);
  v61 = vdupq_n_s64(4uLL);
  do
  {
    v62 = vmovn_s64(vcgeq_u64(v57, v59));
    if (vuzp1_s16(v62, v18).u8[0])
    {
      *(v60 - 2) = v18.i32[0];
    }

    if (vuzp1_s16(v62, v18).i8[2])
    {
      *(v60 - 1) = v18.i32[0];
    }

    if (vuzp1_s16(v18, vmovn_s64(vcgeq_u64(v57, *&v58))).i32[1])
    {
      *v60 = v18.i32[0];
      v60[1] = v18.i32[0];
    }

    v58 = vaddq_s64(v58, v61);
    v59 = vaddq_s64(v59, v61);
    v60 += 4;
    v56 -= 4;
  }

  while (v56);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5, int16x4_t a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v6 + 52))
  {
    v9 = 0;
    v10 = *(v6 + 8);
    v11 = *(*(v10 + 57) + 8 * a5);
    v12 = *(*(*(v6 + 16) + 456) + 8 * a5);
    v13 = v10[5];
    v30 = &v31;
    __p = 0;
    if (v13 >= 0x11)
    {
      v9 = operator new(4 * v13);
      __p = v9;
      v30 = v9;
    }

    if (*v10 >= 1)
    {
      v14 = 0;
      a6.i32[0] = 1.0;
      v15 = vdupq_n_s64(4uLL);
      do
      {
        v16 = *(*(v6 + 168) + 4 * v14);
        if (v16 != -1)
        {
          v17 = *(*(v12 + 96) + 4 * v16);
          v18 = (*(*v11 + 24) + 8 * v14);
          v19 = *v18;
          if (v19 < 1)
          {
            *(*a4 + 8 * v17) = 0;
          }

          else
          {
            v20 = v11[3] + 4 * v18[1];
            v21 = 1.0 / v19;
            v22 = (v19 + 3) & 0xFFFFFFFC;
            v23 = vdupq_n_s64(v19 - 1);
            v24 = (v30 + 1);
            v25 = xmmword_21C27F640;
            v26 = xmmword_21C27F630;
            do
            {
              v27 = vmovn_s64(vcgeq_u64(v23, v25));
              if (vuzp1_s16(v27, a6).u8[0])
              {
                *(v24 - 2) = v21;
              }

              if (vuzp1_s16(v27, a6).i8[2])
              {
                *(v24 - 1) = v21;
              }

              if (vuzp1_s16(a6, vmovn_s64(vcgeq_u64(v23, *&v26))).i32[1])
              {
                *v24 = v21;
                v24[1] = v21;
              }

              v26 = vaddq_s64(v26, v15);
              v25 = vaddq_s64(v25, v15);
              v24 += 4;
              v22 -= 4;
            }

            while (v22);
            *(*a4 + 8 * v17) = 0;
            v28 = 0;
            v29 = 4 * v19;
            do
            {
              *(*a4 + 8 * v17) = vmla_n_f32(*(*a4 + 8 * v17), *(*a3 + 8 * *(v20 + v28)), *(v30 + v28));
              v28 += 4;
            }

            while (v29 != v28);
          }
        }

        ++v14;
      }

      while (v14 < *v10);
      v9 = __p;
    }

    operator delete(v9);
  }
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v48 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v41 = v8[2];
  v12 = *(*(v41 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v54;
  v51 = v54;
  v52 = v13;
  v53 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v51 = v15;
    v53 = v13;
    v14 = v15;
  }

  v47[0] = v56;
  v47[1] = 0;
  v47[2] = v14;
  memset(&v47[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v47[3]) = 2;
    LODWORD(v47[4]) = 0;
    v56[0] = 0x3F0000003F000000;
    v42 = 1;
  }

  else
  {
    v42 = 0;
  }

  v45 = v9;
  if (*(v9 + 4) >= 1)
  {
    v43 = v12;
    v44 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v43[18] + 4 * *(v43[12] + 4 * v17));
        if (*(v43[21] + *v18))
        {
          v36 = v43[9];
          v37 = *(v36 + 2 * v17);
          if (*(v36 + 2 * v17))
          {
            v38 = 0;
            do
            {
              v39 = *(*(v10 + 40) + 2 * (v38 + *(*(*(v10 + 32) + 96) + 4 * v17)));
              if (v38 != v39)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v11, v16, v39, &v49);
              v40 = v18[v38];
              *(*a4 + 8 * v40) = 0;
              *(*a4 + 8 * v40) = vmla_f32(*(*a4 + 8 * v40), 0x3F0000003F000000, *(*a3 + 8 * v49));
              *(*a4 + 8 * v40) = vmla_f32(*(*a4 + 8 * v40), 0x3F0000003F000000, *(*a3 + 8 * v50));
              ++v38;
            }

            while (v37 != v38);
          }
        }

        else
        {
          if ((v42 & 1) == 0)
          {
            v46 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v48, &v45, v47, v19, (*(*(v41 + 432) + 2 * v17) >> 7) & 0xF);
          }

          OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v11, v16, 0, &v49);
          v20 = *v18;
          *(*a4 + 8 * v20) = 0;
          *(*a4 + 8 * v20) = vmla_n_f32(*(*a4 + 8 * v20), *(*a3 + 8 * v49), *v56);
          *(*a4 + 8 * v20) = vmla_n_f32(*(*a4 + 8 * v20), *(*a3 + 8 * v50), *(v56 + 1));
          if (SLODWORD(v47[4]) >= 1)
          {
            v21 = (*(v9 + 144) + 8 * v16);
            v22 = *v21;
            if (v22 >= 1)
            {
              v23 = 0;
              v24 = *(v9 + 168) + 4 * v21[1];
              do
              {
                v25 = *(v24 + 4 * v23);
                if (BYTE4(v47[4]) == 1)
                {
                  v26 = *(v44[21] + 4 * v25);
                  if (v26 == -1)
                  {
                    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
                  }

                  v27 = (v43[12] + 4 * v26);
                  v28 = *a4;
                  v29 = *a4;
                }

                else
                {
                  v30 = (2 * v25) | 1;
                  v31 = *(v9 + 24);
                  v32 = (*(v9 + 72) + 4 * *(v31 + 4 * v30));
                  v33 = *(v31 + 8 * v25);
                  v34 = 1;
                  do
                  {
                    v35 = *v32++;
                    ++v34;
                  }

                  while (v16 != v35);
                  if (v34 < v33)
                  {
                    v33 = 0;
                  }

                  v27 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v30) + 4 * (v34 - v33));
                  v29 = *a4;
                  v28 = *a3;
                }

                *(v29 + 8 * v20) = vmla_n_f32(*(v29 + 8 * v20), *(v28 + 8 * *v27), *&v51[4 * v23++]);
              }

              while (v23 != v22);
            }
          }
        }
      }

      ++v16;
      v8 = v44;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v54 = *(*(*a1 + 64) + 8 * a2 - 8);
  v65 = *(*a1 + 4);
  v57 = v54[1];
  v49 = v54[2];
  v58 = *(*(v57 + 456) + 8 * a5);
  v7 = (*(v58 + 12) & 1) != 0 || *v6 == 0;
  v53 = v7;
  v56 = *(v54[60] + 8 * a5);
  v8 = *(*(v49 + 456) + 8 * a5);
  v9 = *(v57 + 20);
  v75 = &v78;
  v76 = 2 * v9;
  v77 = 32;
  v79 = 0;
  if (2 * v9 >= 0x21)
  {
    v79 = operator new(8 * v9);
    v75 = v79;
    v77 = 2 * v9;
    v9 = *(v57 + 20);
  }

  v10 = 0;
  v70 = &v73;
  v71 = v9;
  v72 = 16;
  v74 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v74 = v10;
    v70 = v10;
    v72 = v9;
  }

  v60[0] = v57;
  v60[1] = v49;
  if (*(v57 + 8) >= 1)
  {
    v50 = v8;
    v11 = 0;
    v13 = v54;
    v12 = a3;
    v14 = v53;
    v15 = v56;
    do
    {
      v16 = *(v13[30] + 4 * v11);
      if (v16 != -1)
      {
        v17 = *(*(v58 + 12) + 4 * v11);
        v18 = (*(v58 + 18) + 4 * v17);
        v19 = *(v50[12] + 4 * v16);
        v20 = (v50[18] + 4 * v19);
        v21 = *v20;
        v22 = v50[21];
        if ((*(v22 + v21) & 1) == 0 && v14)
        {
          *(*a4 + 8 * v21) = 0;
          *(*a4 + 8 * *v20) = vadd_f32(*(*v12 + 8 * *v18), *(*a4 + 8 * *v20));
        }

        else if (*(v22 + v21))
        {
          v36 = v50[9];
          v37 = *(v36 + 2 * v16);
          if (*(v36 + 2 * v16))
          {
            v38 = 0;
            v39 = v22 + v19;
            v51 = v39;
            v52 = *(v58 + 21) + v17;
            do
            {
              v40 = *(*(v15 + 5) + 2 * (*(*(*(v15 + 4) + 96) + 4 * v16) + v38));
              if (v38 != v40)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              v41 = v18[v40];
              v42 = v20[v38];
              *(*a4 + 8 * v42) = 0;
              if (!v14 && (*(v39 + v38) & 8) != 0)
              {
                OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v58, v11, v40, v66);
                if ((*(v52 + v40) & 0x10) != 0)
                {
                  if ((*(v52 + v40) & 0x20) != 0)
                  {
                    v46 = v40 == 0;
                    v45 = v11;
                  }

                  else
                  {
                    v45 = v11;
                    v46 = v40;
                  }

                  FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v56, v45, v46, v16);
                  v48 = 1.0 - FractionalWeight;
                  v44 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                  v43 = v48 * 0.125;
                }

                else
                {
                  v43 = 0.125;
                  v44 = 0.75;
                }

                v13 = v54;
                v12 = a3;
                v14 = v53;
                v15 = v56;
                *(*a4 + 8 * v42) = vmla_n_f32(*(*a4 + 8 * v42), *(*a3 + 8 * v66[0]), v43);
                *(*a4 + 8 * v42) = vmla_n_f32(*(*a4 + 8 * v42), *(*a3 + 8 * v66[1]), v43);
                *(*a4 + 8 * v42) = vmla_n_f32(*(*a4 + 8 * v42), *(*a3 + 8 * v41), v44);
                v39 = v51;
              }

              else
              {
                *(*a4 + 8 * v42) = vadd_f32(*(*v12 + 8 * v41), *(*a4 + 8 * v42));
              }

              ++v38;
            }

            while (v37 != v38);
          }
        }

        else
        {
          v24 = *(*(v57 + 336) + 8 * v11);
          v59 = 0.0;
          v25 = v75;
          v26 = v75 + v24;
          *v66 = &v59;
          v67 = v75;
          v68 = v26;
          memset(v69, 0, 13);
          v61 = v11;
          v62 = v16;
          v63 = *(*(v60[0] + 336) + 8 * v11);
          v64 = *(*(v60[0] + 264) + 8 * v11);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v65, v60, v66, (*(*(v57 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v49 + 432) + 2 * v16) >> 7) & 0xF);
          v13 = v54;
          v12 = a3;
          v27 = *v18;
          v28 = *v20;
          *(*a4 + 8 * v28) = 0;
          if (v69[2] >= 1)
          {
            if ((v69[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v29 = *(v57 + 264);
            v30 = *(v29 + 8 * v11);
            if (v30 >= 1)
            {
              v31 = (*(v57 + 288) + 4 * *(v29 + 4 * ((2 * v11) | 1)));
              do
              {
                v32 = *v31++;
                v33 = *(v54[21] + 4 * v32);
                if (v33 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v34 = *v26++;
                *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*a4 + 8 * *(v50[12] + 4 * v33)), v34);
                --v30;
              }

              while (v30);
            }
          }

          if (v69[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v58, v11, v70);
            v13 = v54;
            v12 = a3;
            if (v24 >= 1)
            {
              for (i = 0; i != v24; ++i)
              {
                *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*a3 + 8 * v70[i]), *(v25 + i * 4));
              }
            }
          }

          *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*v12 + 8 * v27), v59);
          v14 = v53;
          v15 = v56;
        }
      }

      ++v11;
    }

    while (v11 < *(v57 + 8));
    v10 = v74;
  }

  operator delete(v10);
  operator delete(v79);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v48 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v41 = v8[2];
  v12 = *(*(v41 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v54;
  v51 = v54;
  v52 = v13;
  v53 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v51 = v15;
    v53 = v13;
    v14 = v15;
  }

  v47[0] = v56;
  v47[1] = 0;
  v47[2] = v14;
  memset(&v47[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v47[3]) = 2;
    LODWORD(v47[4]) = 0;
    v56[0] = 0x3F0000003F000000;
    v42 = 1;
  }

  else
  {
    v42 = 0;
  }

  v45 = v9;
  if (*(v9 + 4) >= 1)
  {
    v43 = v12;
    v44 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v43[18] + 4 * *(v43[12] + 4 * v17));
        if (*(v43[21] + *v18))
        {
          v36 = v43[9];
          v37 = *(v36 + 2 * v17);
          if (*(v36 + 2 * v17))
          {
            v38 = 0;
            do
            {
              v39 = *(*(v10 + 40) + 2 * (v38 + *(*(*(v10 + 32) + 96) + 4 * v17)));
              if (v38 != v39)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v11, v16, v39, &v49);
              v40 = v18[v38];
              *(*a4 + 8 * v40) = 0;
              *(*a4 + 8 * v40) = vmla_f32(*(*a4 + 8 * v40), 0x3F0000003F000000, *(*a3 + 8 * v49));
              *(*a4 + 8 * v40) = vmla_f32(*(*a4 + 8 * v40), 0x3F0000003F000000, *(*a3 + 8 * v50));
              ++v38;
            }

            while (v37 != v38);
          }
        }

        else
        {
          if ((v42 & 1) == 0)
          {
            v46 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v48, &v45, v47, v19, (*(*(v41 + 432) + 2 * v17) >> 7) & 0xF);
          }

          OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v11, v16, 0, &v49);
          v20 = *v18;
          *(*a4 + 8 * v20) = 0;
          *(*a4 + 8 * v20) = vmla_n_f32(*(*a4 + 8 * v20), *(*a3 + 8 * v49), *v56);
          *(*a4 + 8 * v20) = vmla_n_f32(*(*a4 + 8 * v20), *(*a3 + 8 * v50), *(v56 + 1));
          if (SLODWORD(v47[4]) >= 1)
          {
            v21 = (*(v9 + 144) + 8 * v16);
            v22 = *v21;
            if (v22 >= 1)
            {
              v23 = 0;
              v24 = *(v9 + 168) + 4 * v21[1];
              do
              {
                v25 = *(v24 + 4 * v23);
                if (BYTE4(v47[4]) == 1)
                {
                  v26 = *(v44[21] + 4 * v25);
                  if (v26 == -1)
                  {
                    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
                  }

                  v27 = (v43[12] + 4 * v26);
                  v28 = *a4;
                  v29 = *a4;
                }

                else
                {
                  v30 = (2 * v25) | 1;
                  v31 = *(v9 + 24);
                  v32 = (*(v9 + 72) + 4 * *(v31 + 4 * v30));
                  v33 = *(v31 + 8 * v25);
                  v34 = 1;
                  do
                  {
                    v35 = *v32++;
                    ++v34;
                  }

                  while (v16 != v35);
                  if (v34 < v33)
                  {
                    v33 = 0;
                  }

                  v27 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v30) + 4 * (v34 - v33));
                  v29 = *a4;
                  v28 = *a3;
                }

                *(v29 + 8 * v20) = vmla_n_f32(*(v29 + 8 * v20), *(v28 + 8 * *v27), *&v51[4 * v23++]);
              }

              while (v23 != v22);
            }
          }
        }
      }

      ++v16;
      v8 = v44;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5, double a6)
{
  v80 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v54 = *(*(*a1 + 64) + 8 * a2 - 8);
  v65 = *(*a1 + 4);
  v57 = v54[1];
  v49 = v54[2];
  v58 = *(*(v57 + 456) + 8 * a5);
  v8 = (*(v58 + 12) & 1) != 0 || *v7 == 0;
  v53 = v8;
  v56 = *(v54[60] + 8 * a5);
  v9 = *(*(v49 + 456) + 8 * a5);
  v10 = *(v57 + 20);
  v75 = &v78;
  v76 = 2 * v10;
  v77 = 32;
  v79 = 0;
  if (2 * v10 >= 0x21)
  {
    v79 = operator new(8 * v10);
    v75 = v79;
    v77 = 2 * v10;
    v10 = *(v57 + 20);
  }

  v11 = 0;
  v70 = &v73;
  v71 = v10;
  v72 = 16;
  v74 = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    v74 = v11;
    v70 = v11;
    v72 = v10;
  }

  v60[0] = v57;
  v60[1] = v49;
  if (*(v57 + 8) >= 1)
  {
    v50 = v9;
    v12 = 0;
    v14 = v54;
    v13 = a3;
    v15 = v53;
    v16 = v56;
    do
    {
      v17 = *(v14[30] + 4 * v12);
      if (v17 != -1)
      {
        v18 = *(*(v58 + 12) + 4 * v12);
        v19 = (*(v58 + 18) + 4 * v18);
        v20 = *(v50[12] + 4 * v17);
        v21 = (v50[18] + 4 * v20);
        v22 = *v21;
        v23 = v50[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          *(*a4 + 8 * v22) = 0;
          v25 = *v21;
          a6 = COERCE_DOUBLE(vadd_f32(*(*v13 + 8 * *v19), *(*a4 + 8 * v25)));
          *(*a4 + 8 * v25) = a6;
        }

        else if (*(v23 + v22))
        {
          v38 = v50[9];
          v39 = *(v38 + 2 * v17);
          if (*(v38 + 2 * v17))
          {
            v40 = 0;
            v41 = v23 + v20;
            v51 = v41;
            v52 = *(v58 + 21) + v18;
            do
            {
              v42 = *(*(v16 + 5) + 2 * (*(*(*(v16 + 4) + 96) + 4 * v17) + v40));
              if (v40 != v42)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              v43 = v19[v42];
              v44 = v21[v40];
              *(*a4 + 8 * v44) = 0;
              if (!v15 && (*(v41 + v40) & 8) != 0)
              {
                OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v58, v12, v42, v66);
                if ((*(v52 + v42) & 0x10) != 0)
                {
                  if ((*(v52 + v42) & 0x20) != 0)
                  {
                    v47 = v42 == 0;
                    v46 = v12;
                  }

                  else
                  {
                    v46 = v12;
                    v47 = v42;
                  }

                  *&a6 = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v56, v46, v47, v17);
                  v48 = 1.0 - *&a6;
                  *&a6 = *&a6 + ((1.0 - *&a6) * 0.75);
                  v45 = v48 * 0.125;
                }

                else
                {
                  v45 = 0.125;
                  LODWORD(a6) = 0.75;
                }

                v14 = v54;
                v13 = a3;
                v15 = v53;
                v16 = v56;
                *(*a4 + 8 * v44) = vmla_n_f32(*(*a4 + 8 * v44), *(*a3 + 8 * v66[0]), v45);
                *(*a4 + 8 * v44) = vmla_n_f32(*(*a4 + 8 * v44), *(*a3 + 8 * v66[1]), v45);
                *(*a4 + 8 * v44) = vmla_n_f32(*(*a4 + 8 * v44), *(*a3 + 8 * v43), *&a6);
                v41 = v51;
              }

              else
              {
                a6 = COERCE_DOUBLE(vadd_f32(*(*v13 + 8 * v43), *(*a4 + 8 * v44)));
                *(*a4 + 8 * v44) = a6;
              }

              ++v40;
            }

            while (v39 != v40);
          }
        }

        else
        {
          v26 = *(*(v57 + 336) + 8 * v12);
          v59 = 0.0;
          v27 = v75;
          v28 = v75 + v26;
          *v66 = &v59;
          v67 = v75;
          v68 = v28;
          memset(v69, 0, 13);
          v61 = v12;
          v62 = v17;
          v63 = *(*(v60[0] + 336) + 8 * v12);
          v64 = *(*(v60[0] + 264) + 8 * v12);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v65, v60, v66, (*(*(v57 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v49 + 432) + 2 * v17) >> 7) & 0xF, a6);
          v14 = v54;
          v13 = a3;
          v29 = *v19;
          v30 = *v21;
          *(*a4 + 8 * v30) = 0;
          if (v69[2] >= 1)
          {
            if ((v69[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v31 = *(v57 + 264);
            v32 = *(v31 + 8 * v12);
            if (v32 >= 1)
            {
              v33 = (*(v57 + 288) + 4 * *(v31 + 4 * ((2 * v12) | 1)));
              do
              {
                v34 = *v33++;
                v35 = *(v54[21] + 4 * v34);
                if (v35 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v36 = *v28++;
                *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *(*a4 + 8 * *(v50[12] + 4 * v35)), v36);
                --v32;
              }

              while (v32);
            }
          }

          if (v69[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v58, v12, v70);
            v14 = v54;
            v13 = a3;
            if (v26 >= 1)
            {
              for (i = 0; i != v26; ++i)
              {
                *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *(*a3 + 8 * v70[i]), *(v27 + i * 4));
              }
            }
          }

          a6 = *(*v13 + 8 * v29);
          *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *&a6, v59);
          v15 = v53;
          v16 = v56;
        }
      }

      ++v12;
    }

    while (v12 < *(v57 + 8));
    v11 = v74;
  }

  operator delete(v11);
  operator delete(v79);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v8 = 0;
  v31 = *MEMORY[0x277D85DE8];
  v22 = *(*(*a1 + 64) + 8 * a2 - 8);
  v23 = v22[1];
  v9 = *(v22[60] + 8 * a5);
  v10 = *(*(v23 + 456) + 8 * a5);
  v11 = *(*(v22[2] + 456) + 8 * a5);
  v12 = *(v23 + 16);
  v26 = &v29;
  v27 = v12;
  v28 = 8;
  __p = 0;
  if (v12 >= 9)
  {
    v8 = operator new(4 * v12);
    __p = v8;
    v26 = v8;
    v28 = v12;
  }

  if (*(v23 + 4) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(v22[27] + 4 * v13);
      if (v14 != -1)
      {
        v15 = (v11[18] + 4 * *(v11[12] + 4 * v14));
        if (*(v11[21] + *v15))
        {
          v17 = v11[9];
          v18 = *(v17 + 2 * v14);
          if (*(v17 + 2 * v14))
          {
            v19 = 0;
            do
            {
              v20 = *(*(v9 + 40) + 2 * (v19 + *(*(*(v9 + 32) + 96) + 4 * v14)));
              if (v19 != v20)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v10, v13, v20, &v24);
              v21 = v15[v19];
              *(*a4 + 8 * v21) = 0;
              *(*a4 + 8 * v21) = vmla_f32(*(*a4 + 8 * v21), 0x3F0000003F000000, *(*a3 + 8 * v24));
              *(*a4 + 8 * v21) = vmla_f32(*(*a4 + 8 * v21), 0x3F0000003F000000, *(*a3 + 8 * v25));
              ++v19;
            }

            while (v18 != v19);
          }
        }

        else
        {
          OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v10, v13, 0, &v24);
          v16 = *v15;
          *(*a4 + 8 * v16) = 0;
          *(*a4 + 8 * v16) = vmla_f32(*(*a4 + 8 * v16), 0x3F0000003F000000, *(*a3 + 8 * v24));
          *(*a4 + 8 * v16) = vmla_f32(*(*a4 + 8 * v16), 0x3F0000003F000000, *(*a3 + 8 * v25));
        }
      }

      ++v13;
    }

    while (v13 < *(v23 + 4));
    v8 = __p;
  }

  operator delete(v8);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  v7 = v6[2];
  v47 = v6;
  v48 = v6[1];
  v8 = v6[60];
  v9 = *(v7 + 456);
  v49 = *(*(v48 + 456) + 8 * a5);
  v10 = (*(v49 + 12) & 1) != 0 || **a1 == 0;
  v42 = v10;
  v11 = *(v8 + 8 * a5);
  v41 = *(v9 + 8 * a5);
  v12 = *(v48 + 20);
  v56 = &v59;
  v57 = 2 * v12;
  v58 = 32;
  v60 = 0;
  if (2 * v12 >= 0x21)
  {
    v60 = operator new(8 * v12);
    v56 = v60;
    v58 = 2 * v12;
    v12 = *(v48 + 20);
  }

  v13 = 0;
  v51 = &v54;
  v52 = v12;
  v53 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v51 = v13;
    v53 = v12;
  }

  if (*(v48 + 8) >= 1)
  {
    v14 = 0;
    v15 = a3;
    v16 = v42;
    while (1)
    {
      v17 = *(v47[30] + 4 * v14);
      if (v17 != -1)
      {
        v18 = *(*(v49 + 12) + 4 * v14);
        v19 = (*(v49 + 18) + 4 * v18);
        v20 = *(v41[12] + 4 * v17);
        v21 = (v41[18] + 4 * v20);
        v22 = *v21;
        v23 = v41[21];
        if ((*(v23 + v22) & 1) == 0 && v16)
        {
          *(*a4 + 8 * v22) = 0;
          v25 = (*a4 + 8 * *v21);
          v26 = *v19;
        }

        else
        {
          if (*(v23 + v22))
          {
            v27 = v41[9];
            v28 = *(v27 + 2 * v17);
            if (*(v27 + 2 * v17))
            {
              v29 = 0;
              v45 = *(v49 + 21) + v18;
              v46 = *(v27 + 2 * v17);
              v30 = v23 + v20;
              v44 = v23 + v20;
              do
              {
                v31 = *(*(v11 + 5) + 2 * (*(*(*(v11 + 4) + 96) + 4 * v17) + v29));
                if (v29 != v31)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
                }

                v32 = v19[v31];
                v33 = v21[v29];
                *(*a4 + 8 * v33) = 0;
                if (!v16 && (*(v30 + v29) & 8) != 0)
                {
                  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v49, v14, v31, v50);
                  if ((*(v45 + v31) & 0x10) != 0)
                  {
                    if ((*(v45 + v31) & 0x20) != 0)
                    {
                      v38 = v31 == 0;
                      v36 = v11;
                      v37 = v14;
                    }

                    else
                    {
                      v36 = v11;
                      v37 = v14;
                      v38 = v31;
                    }

                    FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v36, v37, v38, v17);
                    v40 = 1.0 - FractionalWeight;
                    v35 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                    v34 = v40 * 0.125;
                  }

                  else
                  {
                    v34 = 0.125;
                    v35 = 0.75;
                  }

                  v15 = a3;
                  v16 = v42;
                  v28 = v46;
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v50[0]), v34);
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v50[1]), v34);
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v32), v35);
                  v30 = v44;
                }

                else
                {
                  *(*a4 + 8 * v33) = vadd_f32(*(*v15 + 8 * v32), *(*a4 + 8 * v33));
                }

                ++v29;
              }

              while (v28 != v29);
            }

            goto LABEL_19;
          }

          v26 = *v19;
          *(*a4 + 8 * v22) = 0;
          v25 = (*a4 + 8 * v22);
        }

        *v25 = vadd_f32(*(*v15 + 8 * v26), *v25);
      }

LABEL_19:
      if (++v14 >= *(v48 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v60);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fES9_EEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v54 = *(*(*a1 + 64) + 8 * a2 - 8);
  v65 = *(*a1 + 4);
  v57 = v54[1];
  v49 = v54[2];
  v58 = *(*(v57 + 456) + 8 * a5);
  v7 = (*(v58 + 12) & 1) != 0 || *v6 == 0;
  v53 = v7;
  v56 = *(v54[60] + 8 * a5);
  v8 = *(*(v49 + 456) + 8 * a5);
  v9 = *(v57 + 20);
  v75 = &v78;
  v76 = 2 * v9;
  v77 = 32;
  v79 = 0;
  if (2 * v9 >= 0x21)
  {
    v79 = operator new(8 * v9);
    v75 = v79;
    v77 = 2 * v9;
    v9 = *(v57 + 20);
  }

  v10 = 0;
  v70 = &v73;
  v71 = v9;
  v72 = 16;
  v74 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v74 = v10;
    v70 = v10;
    v72 = v9;
  }

  v60[0] = v57;
  v60[1] = v49;
  if (*(v57 + 8) >= 1)
  {
    v50 = v8;
    v11 = 0;
    v13 = v54;
    v12 = a3;
    v14 = v53;
    v15 = v56;
    do
    {
      v16 = *(v13[30] + 4 * v11);
      if (v16 != -1)
      {
        v17 = *(*(v58 + 12) + 4 * v11);
        v18 = (*(v58 + 18) + 4 * v17);
        v19 = *(v50[12] + 4 * v16);
        v20 = (v50[18] + 4 * v19);
        v21 = *v20;
        v22 = v50[21];
        if ((*(v22 + v21) & 1) == 0 && v14)
        {
          *(*a4 + 8 * v21) = 0;
          *(*a4 + 8 * *v20) = vadd_f32(*(*v12 + 8 * *v18), *(*a4 + 8 * *v20));
        }

        else if (*(v22 + v21))
        {
          v36 = v50[9];
          v37 = *(v36 + 2 * v16);
          if (*(v36 + 2 * v16))
          {
            v38 = 0;
            v39 = v22 + v19;
            v51 = v39;
            v52 = *(v58 + 21) + v17;
            do
            {
              v40 = *(*(v15 + 5) + 2 * (*(*(*(v15 + 4) + 96) + 4 * v16) + v38));
              if (v38 != v40)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              v41 = v18[v40];
              v42 = v20[v38];
              *(*a4 + 8 * v42) = 0;
              if (!v14 && (*(v39 + v38) & 8) != 0)
              {
                OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v58, v11, v40, v66);
                if ((*(v52 + v40) & 0x10) != 0)
                {
                  if ((*(v52 + v40) & 0x20) != 0)
                  {
                    v46 = v40 == 0;
                    v45 = v11;
                  }

                  else
                  {
                    v45 = v11;
                    v46 = v40;
                  }

                  FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v56, v45, v46, v16);
                  v48 = 1.0 - FractionalWeight;
                  v44 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                  v43 = v48 * 0.125;
                }

                else
                {
                  v43 = 0.125;
                  v44 = 0.75;
                }

                v13 = v54;
                v12 = a3;
                v14 = v53;
                v15 = v56;
                *(*a4 + 8 * v42) = vmla_n_f32(*(*a4 + 8 * v42), *(*a3 + 8 * v66[0]), v43);
                *(*a4 + 8 * v42) = vmla_n_f32(*(*a4 + 8 * v42), *(*a3 + 8 * v66[1]), v43);
                *(*a4 + 8 * v42) = vmla_n_f32(*(*a4 + 8 * v42), *(*a3 + 8 * v41), v44);
                v39 = v51;
              }

              else
              {
                *(*a4 + 8 * v42) = vadd_f32(*(*v12 + 8 * v41), *(*a4 + 8 * v42));
              }

              ++v38;
            }

            while (v37 != v38);
          }
        }

        else
        {
          v24 = *(*(v57 + 336) + 8 * v11);
          v59 = 0.0;
          v25 = v75;
          v26 = v75 + v24;
          *v66 = &v59;
          v67 = v75;
          v68 = v26;
          memset(v69, 0, 13);
          v61 = v11;
          v62 = v16;
          v63 = *(*(v60[0] + 336) + 8 * v11);
          v64 = *(*(v60[0] + 264) + 8 * v11);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v65, v60, v66, (*(*(v57 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v49 + 432) + 2 * v16) >> 7) & 0xF);
          v13 = v54;
          v12 = a3;
          v27 = *v18;
          v28 = *v20;
          *(*a4 + 8 * v28) = 0;
          if (v69[2] >= 1)
          {
            if ((v69[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v29 = *(v57 + 264);
            v30 = *(v29 + 8 * v11);
            if (v30 >= 1)
            {
              v31 = (*(v57 + 288) + 4 * *(v29 + 4 * ((2 * v11) | 1)));
              do
              {
                v32 = *v31++;
                v33 = *(v54[21] + 4 * v32);
                if (v33 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v34 = *v26++;
                *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*a4 + 8 * *(v50[12] + 4 * v33)), v34);
                --v30;
              }

              while (v30);
            }
          }

          if (v69[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v58, v11, v70);
            v13 = v54;
            v12 = a3;
            if (v24 >= 1)
            {
              for (i = 0; i != v24; ++i)
              {
                *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*a3 + 8 * v70[i]), *(v25 + i * 4));
              }
            }
          }

          *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*v12 + 8 * v27), v59);
          v14 = v53;
          v15 = v56;
        }
      }

      ++v11;
    }

    while (v11 < *(v57 + 8));
    v10 = v74;
  }

  operator delete(v10);
  operator delete(v79);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv2_fES9_EEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5, double a6)
{
  v80 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v54 = *(*(*a1 + 64) + 8 * a2 - 8);
  v65 = *(*a1 + 4);
  v57 = v54[1];
  v49 = v54[2];
  v58 = *(*(v57 + 456) + 8 * a5);
  v8 = (*(v58 + 12) & 1) != 0 || *v7 == 0;
  v53 = v8;
  v56 = *(v54[60] + 8 * a5);
  v9 = *(*(v49 + 456) + 8 * a5);
  v10 = *(v57 + 20);
  v75 = &v78;
  v76 = 2 * v10;
  v77 = 32;
  v79 = 0;
  if (2 * v10 >= 0x21)
  {
    v79 = operator new(8 * v10);
    v75 = v79;
    v77 = 2 * v10;
    v10 = *(v57 + 20);
  }

  v11 = 0;
  v70 = &v73;
  v71 = v10;
  v72 = 16;
  v74 = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    v74 = v11;
    v70 = v11;
    v72 = v10;
  }

  v60[0] = v57;
  v60[1] = v49;
  if (*(v57 + 8) >= 1)
  {
    v50 = v9;
    v12 = 0;
    v14 = v54;
    v13 = a3;
    v15 = v53;
    v16 = v56;
    do
    {
      v17 = *(v14[30] + 4 * v12);
      if (v17 != -1)
      {
        v18 = *(*(v58 + 12) + 4 * v12);
        v19 = (*(v58 + 18) + 4 * v18);
        v20 = *(v50[12] + 4 * v17);
        v21 = (v50[18] + 4 * v20);
        v22 = *v21;
        v23 = v50[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          *(*a4 + 8 * v22) = 0;
          v25 = *v21;
          a6 = COERCE_DOUBLE(vadd_f32(*(*v13 + 8 * *v19), *(*a4 + 8 * v25)));
          *(*a4 + 8 * v25) = a6;
        }

        else if (*(v23 + v22))
        {
          v38 = v50[9];
          v39 = *(v38 + 2 * v17);
          if (*(v38 + 2 * v17))
          {
            v40 = 0;
            v41 = v23 + v20;
            v51 = v41;
            v52 = *(v58 + 21) + v18;
            do
            {
              v42 = *(*(v16 + 5) + 2 * (*(*(*(v16 + 4) + 96) + 4 * v17) + v40));
              if (v40 != v42)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              v43 = v19[v42];
              v44 = v21[v40];
              *(*a4 + 8 * v44) = 0;
              if (!v15 && (*(v41 + v40) & 8) != 0)
              {
                OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v58, v12, v42, v66);
                if ((*(v52 + v42) & 0x10) != 0)
                {
                  if ((*(v52 + v42) & 0x20) != 0)
                  {
                    v47 = v42 == 0;
                    v46 = v12;
                  }

                  else
                  {
                    v46 = v12;
                    v47 = v42;
                  }

                  *&a6 = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v56, v46, v47, v17);
                  v48 = 1.0 - *&a6;
                  *&a6 = *&a6 + ((1.0 - *&a6) * 0.75);
                  v45 = v48 * 0.125;
                }

                else
                {
                  v45 = 0.125;
                  LODWORD(a6) = 0.75;
                }

                v14 = v54;
                v13 = a3;
                v15 = v53;
                v16 = v56;
                *(*a4 + 8 * v44) = vmla_n_f32(*(*a4 + 8 * v44), *(*a3 + 8 * v66[0]), v45);
                *(*a4 + 8 * v44) = vmla_n_f32(*(*a4 + 8 * v44), *(*a3 + 8 * v66[1]), v45);
                *(*a4 + 8 * v44) = vmla_n_f32(*(*a4 + 8 * v44), *(*a3 + 8 * v43), *&a6);
                v41 = v51;
              }

              else
              {
                a6 = COERCE_DOUBLE(vadd_f32(*(*v13 + 8 * v43), *(*a4 + 8 * v44)));
                *(*a4 + 8 * v44) = a6;
              }

              ++v40;
            }

            while (v39 != v40);
          }
        }

        else
        {
          v26 = *(*(v57 + 336) + 8 * v12);
          v59 = 0.0;
          v27 = v75;
          v28 = v75 + v26;
          *v66 = &v59;
          v67 = v75;
          v68 = v28;
          memset(v69, 0, 13);
          v61 = v12;
          v62 = v17;
          v63 = *(*(v60[0] + 336) + 8 * v12);
          v64 = *(*(v60[0] + 264) + 8 * v12);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v65, v60, v66, (*(*(v57 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v49 + 432) + 2 * v17) >> 7) & 0xF, a6);
          v14 = v54;
          v13 = a3;
          v29 = *v19;
          v30 = *v21;
          *(*a4 + 8 * v30) = 0;
          if (v69[2] >= 1)
          {
            if ((v69[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v31 = *(v57 + 264);
            v32 = *(v31 + 8 * v12);
            if (v32 >= 1)
            {
              v33 = (*(v57 + 288) + 4 * *(v31 + 4 * ((2 * v12) | 1)));
              do
              {
                v34 = *v33++;
                v35 = *(v54[21] + 4 * v34);
                if (v35 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v36 = *v28++;
                *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *(*a4 + 8 * *(v50[12] + 4 * v35)), v36);
                --v32;
              }

              while (v32);
            }
          }

          if (v69[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v58, v12, v70);
            v14 = v54;
            v13 = a3;
            if (v26 >= 1)
            {
              for (i = 0; i != v26; ++i)
              {
                *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *(*a3 + 8 * v70[i]), *(v27 + i * 4));
              }
            }
          }

          a6 = *(*v13 + 8 * v29);
          *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *&a6, v59);
          v15 = v53;
          v16 = v56;
        }
      }

      ++v12;
    }

    while (v12 < *(v57 + 8));
    v11 = v74;
  }

  operator delete(v11);
  operator delete(v79);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv2_fES9_EEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  v7 = v6[2];
  v47 = v6;
  v48 = v6[1];
  v8 = v6[60];
  v9 = *(v7 + 456);
  v49 = *(*(v48 + 456) + 8 * a5);
  v10 = (*(v49 + 12) & 1) != 0 || **a1 == 0;
  v42 = v10;
  v11 = *(v8 + 8 * a5);
  v41 = *(v9 + 8 * a5);
  v12 = *(v48 + 20);
  v56 = &v59;
  v57 = 2 * v12;
  v58 = 32;
  v60 = 0;
  if (2 * v12 >= 0x21)
  {
    v60 = operator new(8 * v12);
    v56 = v60;
    v58 = 2 * v12;
    v12 = *(v48 + 20);
  }

  v13 = 0;
  v51 = &v54;
  v52 = v12;
  v53 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v51 = v13;
    v53 = v12;
  }

  if (*(v48 + 8) >= 1)
  {
    v14 = 0;
    v15 = a3;
    v16 = v42;
    while (1)
    {
      v17 = *(v47[30] + 4 * v14);
      if (v17 != -1)
      {
        v18 = *(*(v49 + 12) + 4 * v14);
        v19 = (*(v49 + 18) + 4 * v18);
        v20 = *(v41[12] + 4 * v17);
        v21 = (v41[18] + 4 * v20);
        v22 = *v21;
        v23 = v41[21];
        if ((*(v23 + v22) & 1) == 0 && v16)
        {
          *(*a4 + 8 * v22) = 0;
          v25 = (*a4 + 8 * *v21);
          v26 = *v19;
        }

        else
        {
          if (*(v23 + v22))
          {
            v27 = v41[9];
            v28 = *(v27 + 2 * v17);
            if (*(v27 + 2 * v17))
            {
              v29 = 0;
              v45 = *(v49 + 21) + v18;
              v46 = *(v27 + 2 * v17);
              v30 = v23 + v20;
              v44 = v23 + v20;
              do
              {
                v31 = *(*(v11 + 5) + 2 * (*(*(*(v11 + 4) + 96) + 4 * v17) + v29));
                if (v29 != v31)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
                }

                v32 = v19[v31];
                v33 = v21[v29];
                *(*a4 + 8 * v33) = 0;
                if (!v16 && (*(v30 + v29) & 8) != 0)
                {
                  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v49, v14, v31, v50);
                  if ((*(v45 + v31) & 0x10) != 0)
                  {
                    if ((*(v45 + v31) & 0x20) != 0)
                    {
                      v38 = v31 == 0;
                      v36 = v11;
                      v37 = v14;
                    }

                    else
                    {
                      v36 = v11;
                      v37 = v14;
                      v38 = v31;
                    }

                    FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v36, v37, v38, v17);
                    v40 = 1.0 - FractionalWeight;
                    v35 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                    v34 = v40 * 0.125;
                  }

                  else
                  {
                    v34 = 0.125;
                    v35 = 0.75;
                  }

                  v15 = a3;
                  v16 = v42;
                  v28 = v46;
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v50[0]), v34);
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v50[1]), v34);
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v32), v35);
                  v30 = v44;
                }

                else
                {
                  *(*a4 + 8 * v33) = vadd_f32(*(*v15 + 8 * v32), *(*a4 + 8 * v33));
                }

                ++v29;
              }

              while (v28 != v29);
            }

            goto LABEL_19;
          }

          v26 = *v19;
          *(*a4 + 8 * v22) = 0;
          v25 = (*a4 + 8 * v22);
        }

        *v25 = vadd_f32(*(*v15 + 8 * v26), *v25);
      }

LABEL_19:
      if (++v14 >= *(v48 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v60);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner11InterpolateIP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(int **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int16x4_t a5)
{
  if (a2 < 1 || (v5 = a2, ((*(*a1 + 9) - *(*a1 + 8)) >> 3) < a2))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner11InterpolateIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0__cold_1();
  }

  v9 = **a1;
  if (v9)
  {
    if (v9 == 2)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, a2, a3, a4, a5);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, v5, a3, a4);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, v5, a3, a4, v10);
    }

    else if (v9 == 1)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, a2, a3, a4, a5);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, v5, a3, a4);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, v5, a3, a4);
    }
  }

  else
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, a2, a3, a4, a5);
    v11 = 0;
    v12 = *(*(*a1 + 8) + 8 * v5 - 8);
    v13 = *(v12 + 8);
    v14 = *(v13 + 16);
    __p = 0;
    if (v14 >= 9)
    {
      v11 = operator new(4 * v14);
      __p = v11;
    }

    v15 = *(v13 + 4);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18.i64[0] = 0x3F0000003F000000;
      v18.i64[1] = 0x3F0000003F000000;
      do
      {
        v19 = *(*(v12 + 216) + 4 * v17);
        if (v19 != -1)
        {
          v20 = (*(v13 + 120) + v16);
          *(*a4 + 16 * v19) = 0uLL;
          *(*a4 + 16 * v19) = vmlaq_f32(*(*a4 + 16 * v19), v18, *(*a3 + 16 * *v20));
          *(*a4 + 16 * v19) = vmlaq_f32(*(*a4 + 16 * v19), v18, *(*a3 + 16 * v20[1]));
          v15 = *(v13 + 4);
        }

        ++v17;
        v16 += 8;
      }

      while (v17 < v15);
      v11 = __p;
    }

    operator delete(v11);
    v21 = 0;
    v22 = *(*(*a1 + 8) + 8 * v5 - 8);
    v23 = *(v22 + 8);
    v28 = 0;
    if ((2 * *(v23 + 20)) >= 0x21)
    {
      v21 = operator new(4 * (2 * *(v23 + 20)));
      v28 = v21;
    }

    v24 = *(v23 + 8);
    if (v24 >= 1)
    {
      for (i = 0; i < v24; ++i)
      {
        v26 = *(*(v22 + 240) + 4 * i);
        if (v26 != -1)
        {
          *(*a4 + 16 * v26) = 0uLL;
          *(*a4 + 16 * v26) = vaddq_f32(*(*a3 + 16 * i), *(*a4 + 16 * v26));
          v24 = *(v23 + 8);
        }
      }

      v21 = v28;
    }

    operator delete(v21);
  }
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_i(int **result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int16x4_t a6)
{
  if (a2 < 1 || (v6 = a2, ((*(*result + 9) - *(*result + 8)) >> 3) < a2))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_i_cold_1();
  }

  v8 = a5;
  v11 = **result;
  if (v11)
  {
    if (v11 == 2)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8, v12);
    }

    else if (v11 == 1)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);
    }
  }

  else
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);
  }
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv3_fES7_EEviRKT_RT0_i(int **result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int16x4_t a6)
{
  if (a2 < 1 || (v6 = a2, ((*(*result + 9) - *(*result + 8)) >> 3) < a2))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_i_cold_1();
  }

  v8 = a5;
  v11 = **result;
  if (v11)
  {
    if (v11 == 2)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv3_fES9_EEviRKT0_RT1_i(result, v6, a3, a4, v8, v12);
    }

    else if (v11 == 1)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fES9_EEviRKT0_RT1_i(result, v6, a3, a4, v8);
    }
  }

  else
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv3_fES9_EEviRKT0_RT1_i(result, v6, a3, a4, v8);
  }
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t a1, int a2, void *a3, void *a4, int16x4_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v5 + 52))
  {
    v8 = 0;
    v9 = *(v5 + 8);
    v10 = v9[5];
    v26 = &v27;
    __p = 0;
    if (v10 >= 0x11)
    {
      v8 = operator new(4 * v10);
      __p = v8;
      v26 = v8;
    }

    if (*v9 >= 1)
    {
      v11 = 0;
      a5.i32[0] = 1.0;
      v12 = vdupq_n_s64(4uLL);
      do
      {
        v13 = *(*(v5 + 168) + 4 * v11);
        if (v13 != -1)
        {
          v14 = (*(v9 + 3) + 8 * v11);
          v15 = *v14;
          if (v15 < 1)
          {
            *(*a4 + 16 * v13) = 0uLL;
          }

          else
          {
            v16 = *(v9 + 6) + 4 * v14[1];
            v17 = 1.0 / v15;
            v18 = (v15 + 3) & 0xFFFFFFFC;
            v19 = vdupq_n_s64(v15 - 1);
            v20 = (v26 + 1);
            v21 = xmmword_21C27F640;
            v22 = xmmword_21C27F630;
            do
            {
              v23 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s16(v23, a5).u8[0])
              {
                *(v20 - 2) = v17;
              }

              if (vuzp1_s16(v23, a5).i8[2])
              {
                *(v20 - 1) = v17;
              }

              if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v19, *&v22))).i32[1])
              {
                *v20 = v17;
                v20[1] = v17;
              }

              v22 = vaddq_s64(v22, v12);
              v21 = vaddq_s64(v21, v12);
              v20 += 4;
              v18 -= 4;
            }

            while (v18);
            *(*a4 + 16 * v13) = 0uLL;
            v24 = 0;
            v25 = 4 * v15;
            do
            {
              *(*a4 + 16 * v13) = vmlaq_n_f32(*(*a4 + 16 * v13), *(*a3 + 16 * *(v16 + v24)), *(v26 + v24));
              v24 += 4;
            }

            while (v25 != v24);
          }
        }

        ++v11;
      }

      while (v11 < *v9);
      v8 = __p;
    }

    operator delete(v8);
  }
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v46[1] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = *(v9 + 8);
  v36 = *(v9 + 16);
  v40 = *(v8 + 4);
  v11 = *(v10 + 16);
  v41 = &v44;
  v42 = v11;
  v43 = 8;
  v38 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v41 = v7;
    v43 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v9 + 216) + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v37[0] = v46;
        v37[1] = 0;
        v37[2] = v41;
        memset(&v37[3], 0, 13);
        v39 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v40, &v38, v37, v20, (*(*(v36 + 432) + 2 * v14) >> 7) & 0xF);
        *(*a4 + 16 * v14) = 0u;
        v21 = v46[0];
        *(*a4 + 16 * v14) = vmlaq_n_f32(*(*a4 + 16 * v14), *(*a3 + 16 * *v15), *v46);
        *(*a4 + 16 * v14) = vmlaq_lane_f32(*(*a4 + 16 * v14), *(*a3 + 16 * v15[1]), v21, 1);
        if (SLODWORD(v37[4]) >= 1 && v18 >= 1)
        {
          v22 = 0;
          v23 = v16 + 4 * v19;
          do
          {
            if (BYTE4(v37[4]) == 1)
            {
              if (*(v9 + 52) <= 0)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v24 = *(*(v9 + 168) + 4 * *(v23 + 4 * v22));
              if (v24 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
              }

              v25 = *a4;
              v26 = *a4;
            }

            else
            {
              v27 = *(v23 + 4 * v22);
              v28 = 2 * v27;
              v29 = *(v10 + 24);
              v30 = *(v29 + 8 * v27 + 4);
              v31 = (*(v10 + 72) + 4 * v30);
              v32 = *(v29 + 4 * v28);
              v33 = 1;
              do
              {
                v34 = *v31++;
                ++v33;
              }

              while (i != v34);
              v35 = *(v10 + 48) + 4 * v30;
              if (v33 < v32)
              {
                v32 = 0;
              }

              v24 = *(v35 + 4 * (v33 - v32));
              v26 = *a4;
              v25 = *a3;
            }

            *(v26 + 16 * v14) = vmlaq_n_f32(*(v26 + 16 * v14), *(v25 + 16 * v24), v41[v22++]);
          }

          while (v22 != v18);
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t *a1, int a2, void *a3, void *a4)
{
  v7 = 0;
  v48 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v11 = v9[1];
  v10 = v9[2];
  v42 = *(v8 + 4);
  v12 = 2 * *(v11 + 20);
  v43 = &v46;
  v44 = v12;
  v45 = 32;
  v37[0] = v11;
  v37[1] = v10;
  v30 = v10;
  __p = 0;
  if (v12 >= 0x21)
  {
    v7 = operator new(4 * v12);
    __p = v7;
    v43 = v7;
    v45 = v12;
  }

  v13 = *(v11 + 8);
  if (v13 >= 1)
  {
    for (i = 0; i < v13; ++i)
    {
      v15 = *(v9[30] + 4 * i);
      if (v15 != -1)
      {
        v16 = *(v11 + 336);
        v17 = (8 * i) | 4;
        v33 = *(v16 + v17);
        v34 = *(v11 + 360);
        v18 = *(v16 + 8 * i);
        v19 = *(v11 + 264);
        v32 = *(v19 + v17);
        v20 = *(v19 + 8 * i);
        v36 = 0.0;
        v21 = v43;
        v22 = v43 + v18;
        v35[0] = &v36;
        v35[1] = v43;
        v35[2] = v22;
        memset(&v35[3], 0, 13);
        v38 = i;
        v39 = v15;
        v40 = *(*(v37[0] + 336) + 8 * i);
        v41 = *(*(v37[0] + 264) + 8 * i);
        v31 = *(v11 + 288);
        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v42, v37, v35, (*(*(v11 + 432) + 2 * i) >> 7) & 0xF, (*(*(v30 + 432) + 2 * v15) >> 7) & 0xF);
        *(*a4 + 16 * v15) = 0u;
        if (SLODWORD(v35[4]) >= 1)
        {
          if (BYTE4(v35[4]) != 1)
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
          }

          if (v20 >= 1)
          {
            v23 = (v31 + 4 * v32);
            do
            {
              v24 = *v23++;
              v25 = *(v9[21] + 4 * v24);
              if (v25 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v26 = *v22++;
              *(*a4 + 16 * v15) = vmlaq_n_f32(*(*a4 + 16 * v15), *(*a4 + 16 * v25), v26);
              --v20;
            }

            while (v20);
          }
        }

        if (SHIDWORD(v35[3]) >= 1 && v18 >= 1)
        {
          v27 = (v34 + 4 * v33);
          do
          {
            v28 = *v27++;
            v29 = (*(v11 + 120) + 8 * v28);
            LODWORD(v28) = *v21;
            v21 = (v21 + 4);
            *(*a4 + 16 * v15) = vmlaq_n_f32(*(*a4 + 16 * v15), *(*a3 + 16 * v29[i == *v29]), *&v28);
            --v18;
          }

          while (v18);
        }

        *(*a4 + 16 * v15) = vmlaq_n_f32(*(*a4 + 16 * v15), *(*a3 + 16 * i), v36);
        v13 = *(v11 + 8);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v46[1] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = *(v9 + 8);
  v36 = *(v9 + 16);
  v40 = *(v8 + 4);
  v11 = *(v10 + 16);
  v41 = &v44;
  v42 = v11;
  v43 = 8;
  v38 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v41 = v7;
    v43 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v9 + 216) + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v37[0] = v46;
        v37[1] = 0;
        v37[2] = v41;
        memset(&v37[3], 0, 13);
        v39 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v40, &v38, v37, v20, (*(*(v36 + 432) + 2 * v14) >> 7) & 0xF);
        *(*a4 + 16 * v14) = 0u;
        v21 = v46[0];
        *(*a4 + 16 * v14) = vmlaq_n_f32(*(*a4 + 16 * v14), *(*a3 + 16 * *v15), *v46);
        *(*a4 + 16 * v14) = vmlaq_lane_f32(*(*a4 + 16 * v14), *(*a3 + 16 * v15[1]), v21, 1);
        if (SLODWORD(v37[4]) >= 1 && v18 >= 1)
        {
          v22 = 0;
          v23 = v16 + 4 * v19;
          do
          {
            if (BYTE4(v37[4]) == 1)
            {
              if (*(v9 + 52) <= 0)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v24 = *(*(v9 + 168) + 4 * *(v23 + 4 * v22));
              if (v24 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
              }

              v25 = *a4;
              v26 = *a4;
            }

            else
            {
              v27 = *(v23 + 4 * v22);
              v28 = 2 * v27;
              v29 = *(v10 + 24);
              v30 = *(v29 + 8 * v27 + 4);
              v31 = (*(v10 + 72) + 4 * v30);
              v32 = *(v29 + 4 * v28);
              v33 = 1;
              do
              {
                v34 = *v31++;
                ++v33;
              }

              while (i != v34);
              v35 = *(v10 + 48) + 4 * v30;
              if (v33 < v32)
              {
                v32 = 0;
              }

              v24 = *(v35 + 4 * (v33 - v32));
              v26 = *a4;
              v25 = *a3;
            }

            *(v26 + 16 * v14) = vmlaq_n_f32(*(v26 + 16 * v14), *(v25 + 16 * v24), v41[v22++]);
          }

          while (v22 != v18);
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t *a1, int a2, void *a3, void *a4, double a5)
{
  v8 = 0;
  v49 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*(v9 + 64) + 8 * a2 - 8);
  v12 = v10[1];
  v11 = v10[2];
  v43 = *(v9 + 4);
  v13 = 2 * *(v12 + 20);
  v44 = &v47;
  v45 = v13;
  v46 = 32;
  v38[0] = v12;
  v38[1] = v11;
  v31 = v11;
  __p = 0;
  if (v13 >= 0x21)
  {
    v8 = operator new(4 * v13);
    __p = v8;
    v44 = v8;
    v46 = v13;
  }

  v14 = *(v12 + 8);
  if (v14 >= 1)
  {
    for (i = 0; i < v14; ++i)
    {
      v16 = *(v10[30] + 4 * i);
      if (v16 != -1)
      {
        v17 = *(v12 + 336);
        v18 = (8 * i) | 4;
        v34 = *(v17 + v18);
        v35 = *(v12 + 360);
        v19 = *(v17 + 8 * i);
        v20 = *(v12 + 264);
        v33 = *(v20 + v18);
        v21 = *(v20 + 8 * i);
        v37 = 0.0;
        v22 = v44;
        v23 = v44 + v19;
        v36[0] = &v37;
        v36[1] = v44;
        v36[2] = v23;
        memset(&v36[3], 0, 13);
        v39 = i;
        v40 = v16;
        v41 = *(*(v38[0] + 336) + 8 * i);
        v42 = *(*(v38[0] + 264) + 8 * i);
        v32 = *(v12 + 288);
        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v43, v38, v36, (*(*(v12 + 432) + 2 * i) >> 7) & 0xF, (*(*(v31 + 432) + 2 * v16) >> 7) & 0xF, a5);
        HIDWORD(a5) = 0;
        *(*a4 + 16 * v16) = 0u;
        if (SLODWORD(v36[4]) >= 1)
        {
          if (BYTE4(v36[4]) != 1)
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
          }

          if (v21 >= 1)
          {
            v24 = (v32 + 4 * v33);
            do
            {
              v25 = *v24++;
              v26 = *(v10[21] + 4 * v25);
              if (v26 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v27 = *v23++;
              *(*a4 + 16 * v16) = vmlaq_n_f32(*(*a4 + 16 * v16), *(*a4 + 16 * v26), v27);
              --v21;
            }

            while (v21);
          }
        }

        if (SHIDWORD(v36[3]) >= 1 && v19 >= 1)
        {
          v28 = (v35 + 4 * v34);
          do
          {
            v29 = *v28++;
            v30 = (*(v12 + 120) + 8 * v29);
            LODWORD(v29) = *v22;
            v22 = (v22 + 4);
            *(*a4 + 16 * v16) = vmlaq_n_f32(*(*a4 + 16 * v16), *(*a3 + 16 * v30[i == *v30]), *&v29);
            --v19;
          }

          while (v19);
        }

        *&a5 = v37;
        *(*a4 + 16 * v16) = vmlaq_n_f32(*(*a4 + 16 * v16), *(*a3 + 16 * i), v37);
        v14 = *(v12 + 8);
      }
    }

    v8 = __p;
  }

  operator delete(v8);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5, int16x4_t a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v6 + 52))
  {
    v9 = 0;
    v10 = *(v6 + 8);
    v11 = *(*(v10 + 57) + 8 * a5);
    v12 = *(*(*(v6 + 16) + 456) + 8 * a5);
    v13 = v10[5];
    v30 = &v31;
    __p = 0;
    if (v13 >= 0x11)
    {
      v9 = operator new(4 * v13);
      __p = v9;
      v30 = v9;
    }

    if (*v10 >= 1)
    {
      v14 = 0;
      a6.i32[0] = 1.0;
      v15 = vdupq_n_s64(4uLL);
      do
      {
        v16 = *(*(v6 + 168) + 4 * v14);
        if (v16 != -1)
        {
          v17 = *(*(v12 + 96) + 4 * v16);
          v18 = (*(*v11 + 24) + 8 * v14);
          v19 = *v18;
          if (v19 < 1)
          {
            *(*a4 + 16 * v17) = 0uLL;
          }

          else
          {
            v20 = v11[3] + 4 * v18[1];
            v21 = 1.0 / v19;
            v22 = (v19 + 3) & 0xFFFFFFFC;
            v23 = vdupq_n_s64(v19 - 1);
            v24 = (v30 + 1);
            v25 = xmmword_21C27F640;
            v26 = xmmword_21C27F630;
            do
            {
              v27 = vmovn_s64(vcgeq_u64(v23, v25));
              if (vuzp1_s16(v27, a6).u8[0])
              {
                *(v24 - 2) = v21;
              }

              if (vuzp1_s16(v27, a6).i8[2])
              {
                *(v24 - 1) = v21;
              }

              if (vuzp1_s16(a6, vmovn_s64(vcgeq_u64(v23, *&v26))).i32[1])
              {
                *v24 = v21;
                v24[1] = v21;
              }

              v26 = vaddq_s64(v26, v15);
              v25 = vaddq_s64(v25, v15);
              v24 += 4;
              v22 -= 4;
            }

            while (v22);
            *(*a4 + 16 * v17) = 0uLL;
            v28 = 0;
            v29 = 4 * v19;
            do
            {
              *(*a4 + 16 * v17) = vmlaq_n_f32(*(*a4 + 16 * v17), *(*a3 + 16 * *(v20 + v28)), *(v30 + v28));
              v28 += 4;
            }

            while (v29 != v28);
          }
        }

        ++v14;
      }

      while (v14 < *v10);
      v9 = __p;
    }

    operator delete(v9);
  }
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v52 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v45 = v8[2];
  v12 = *(*(v45 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v58;
  v55 = v58;
  v56 = v13;
  v57 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v55 = v15;
    v57 = v13;
    v14 = v15;
  }

  v51[0] = v60;
  v51[1] = 0;
  v51[2] = v14;
  memset(&v51[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v51[3]) = 2;
    LODWORD(v51[4]) = 0;
    v60[0] = 0x3F0000003F000000;
    v46 = 1;
  }

  else
  {
    v46 = 0;
  }

  v49 = v9;
  if (*(v9 + 4) >= 1)
  {
    v47 = v12;
    v48 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v47[18] + 4 * *(v47[12] + 4 * v17));
        if (*(v47[21] + *v18))
        {
          v38 = v47[9];
          v39 = *(v38 + 2 * v17);
          if (*(v38 + 2 * v17))
          {
            v40 = 0;
            do
            {
              v41 = *(*(v10 + 40) + 2 * (v40 + *(*(*(v10 + 32) + 96) + 4 * v17)));
              if (v40 != v41)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v11, v16, v41, &v53);
              v42 = v18[v40];
              *(*a4 + 16 * v42) = 0u;
              v43 = v54;
              v44.i64[0] = 0x3F0000003F000000;
              v44.i64[1] = 0x3F0000003F000000;
              *(*a4 + 16 * v42) = vmlaq_f32(*(*a4 + 16 * v42), v44, *(*a3 + 16 * v53));
              *(*a4 + 16 * v42) = vmlaq_f32(*(*a4 + 16 * v42), v44, *(*a3 + 16 * v43));
              ++v40;
            }

            while (v39 != v40);
          }
        }

        else
        {
          if ((v46 & 1) == 0)
          {
            v50 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v52, &v49, v51, v19, (*(*(v45 + 432) + 2 * v17) >> 7) & 0xF);
          }

          OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v11, v16, 0, &v53);
          v20 = *v18;
          *(*a4 + 16 * v20) = 0u;
          v21 = v54;
          v22 = v60[0];
          *(*a4 + 16 * v20) = vmlaq_n_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v53), *v60);
          *(*a4 + 16 * v20) = vmlaq_lane_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v21), v22, 1);
          if (SLODWORD(v51[4]) >= 1)
          {
            v23 = (*(v9 + 144) + 8 * v16);
            v24 = *v23;
            if (v24 >= 1)
            {
              v25 = 0;
              v26 = *(v9 + 168) + 4 * v23[1];
              do
              {
                v27 = *(v26 + 4 * v25);
                if (BYTE4(v51[4]) == 1)
                {
                  v28 = *(v48[21] + 4 * v27);
                  if (v28 == -1)
                  {
                    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
                  }

                  v29 = (v47[12] + 4 * v28);
                  v30 = *a4;
                  v31 = *a4;
                }

                else
                {
                  v32 = (2 * v27) | 1;
                  v33 = *(v9 + 24);
                  v34 = (*(v9 + 72) + 4 * *(v33 + 4 * v32));
                  v35 = *(v33 + 8 * v27);
                  v36 = 1;
                  do
                  {
                    v37 = *v34++;
                    ++v36;
                  }

                  while (v16 != v37);
                  if (v36 < v35)
                  {
                    v35 = 0;
                  }

                  v29 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v32) + 4 * (v36 - v35));
                  v31 = *a4;
                  v30 = *a3;
                }

                *(v31 + 16 * v20) = vmlaq_n_f32(*(v31 + 16 * v20), *(v30 + 16 * *v29), *&v55[4 * v25++]);
              }

              while (v25 != v24);
            }
          }
        }
      }

      ++v16;
      v8 = v48;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v81 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v55 = *(*(*a1 + 64) + 8 * a2 - 8);
  v66 = *(*a1 + 4);
  v58 = v55[1];
  v50 = v55[2];
  v59 = *(*(v58 + 456) + 8 * a5);
  v7 = (*(v59 + 12) & 1) != 0 || *v6 == 0;
  v54 = v7;
  v57 = *(v55[60] + 8 * a5);
  v8 = *(*(v50 + 456) + 8 * a5);
  v9 = *(v58 + 20);
  v76 = &v79;
  v77 = 2 * v9;
  v78 = 32;
  v80 = 0;
  if (2 * v9 >= 0x21)
  {
    v80 = operator new(8 * v9);
    v76 = v80;
    v78 = 2 * v9;
    v9 = *(v58 + 20);
  }

  v10 = 0;
  v71 = &v74;
  v72 = v9;
  v73 = 16;
  v75 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v75 = v10;
    v71 = v10;
    v73 = v9;
  }

  v61[0] = v58;
  v61[1] = v50;
  if (*(v58 + 8) >= 1)
  {
    v51 = v8;
    v11 = 0;
    v12 = 0uLL;
    v14 = v55;
    v13 = a3;
    v15 = v54;
    v16 = v57;
    do
    {
      v17 = *(v14[30] + 4 * v11);
      if (v17 != -1)
      {
        v18 = *(*(v59 + 12) + 4 * v11);
        v19 = (*(v59 + 18) + 4 * v18);
        v20 = *(v51[12] + 4 * v17);
        v21 = (v51[18] + 4 * v20);
        v22 = *v21;
        v23 = v51[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          *(*a4 + 16 * v22) = v12;
          *(*a4 + 16 * *v21) = vaddq_f32(*(*v13 + 16 * *v19), *(*a4 + 16 * *v21));
        }

        else if (*(v23 + v22))
        {
          v37 = v51[9];
          v38 = *(v37 + 2 * v17);
          if (*(v37 + 2 * v17))
          {
            v39 = 0;
            v40 = v23 + v20;
            v52 = v40;
            v53 = *(v59 + 21) + v18;
            do
            {
              v41 = *(*(v16 + 5) + 2 * (*(*(*(v16 + 4) + 96) + 4 * v17) + v39));
              if (v39 != v41)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              v42 = v19[v41];
              v43 = v21[v39];
              *(*a4 + 16 * v43) = v12;
              if (!v15 && (*(v40 + v39) & 8) != 0)
              {
                OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v59, v11, v41, v67);
                if ((*(v53 + v41) & 0x10) != 0)
                {
                  if ((*(v53 + v41) & 0x20) != 0)
                  {
                    v47 = v41 == 0;
                    v46 = v11;
                  }

                  else
                  {
                    v46 = v11;
                    v47 = v41;
                  }

                  FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v57, v46, v47, v17);
                  v49 = 1.0 - FractionalWeight;
                  v45 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                  v44 = v49 * 0.125;
                }

                else
                {
                  v44 = 0.125;
                  v45 = 0.75;
                }

                v14 = v55;
                v13 = a3;
                v15 = v54;
                v16 = v57;
                *(*a4 + 16 * v43) = vmlaq_n_f32(*(*a4 + 16 * v43), *(*a3 + 16 * v67[0]), v44);
                *(*a4 + 16 * v43) = vmlaq_n_f32(*(*a4 + 16 * v43), *(*a3 + 16 * v67[1]), v44);
                *(*a4 + 16 * v43) = vmlaq_n_f32(*(*a4 + 16 * v43), *(*a3 + 16 * v42), v45);
                v12 = 0uLL;
                v40 = v52;
              }

              else
              {
                *(*a4 + 16 * v43) = vaddq_f32(*(*v13 + 16 * v42), *(*a4 + 16 * v43));
              }

              ++v39;
            }

            while (v38 != v39);
          }
        }

        else
        {
          v25 = *(*(v58 + 336) + 8 * v11);
          v60 = 0.0;
          v26 = v76;
          v27 = v76 + v25;
          *v67 = &v60;
          v68 = v76;
          v69 = v27;
          memset(v70, 0, 13);
          v62 = v11;
          v63 = v17;
          v64 = *(*(v61[0] + 336) + 8 * v11);
          v65 = *(*(v61[0] + 264) + 8 * v11);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v66, v61, v67, (*(*(v58 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v50 + 432) + 2 * v17) >> 7) & 0xF);
          v12 = 0uLL;
          v14 = v55;
          v13 = a3;
          v28 = *v19;
          v29 = *v21;
          *(*a4 + 16 * v29) = 0u;
          if (v70[2] >= 1)
          {
            if ((v70[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v30 = *(v58 + 264);
            v31 = *(v30 + 8 * v11);
            if (v31 >= 1)
            {
              v32 = (*(v58 + 288) + 4 * *(v30 + 4 * ((2 * v11) | 1)));
              do
              {
                v33 = *v32++;
                v34 = *(v55[21] + 4 * v33);
                if (v34 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v35 = *v27++;
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a4 + 16 * *(v51[12] + 4 * v34)), v35);
                --v31;
              }

              while (v31);
            }
          }

          if (v70[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v59, v11, v71);
            v12 = 0uLL;
            v14 = v55;
            v13 = a3;
            if (v25 >= 1)
            {
              for (i = 0; i != v25; ++i)
              {
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a3 + 16 * v71[i]), *(v26 + i * 4));
              }
            }
          }

          *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*v13 + 16 * v28), v60);
          v15 = v54;
          v16 = v57;
        }
      }

      ++v11;
    }

    while (v11 < *(v58 + 8));
    v10 = v75;
  }

  operator delete(v10);
  operator delete(v80);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v52 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v45 = v8[2];
  v12 = *(*(v45 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v58;
  v55 = v58;
  v56 = v13;
  v57 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v55 = v15;
    v57 = v13;
    v14 = v15;
  }

  v51[0] = v60;
  v51[1] = 0;
  v51[2] = v14;
  memset(&v51[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v51[3]) = 2;
    LODWORD(v51[4]) = 0;
    v60[0] = 0x3F0000003F000000;
    v46 = 1;
  }

  else
  {
    v46 = 0;
  }

  v49 = v9;
  if (*(v9 + 4) >= 1)
  {
    v47 = v12;
    v48 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v47[18] + 4 * *(v47[12] + 4 * v17));
        if (*(v47[21] + *v18))
        {
          v38 = v47[9];
          v39 = *(v38 + 2 * v17);
          if (*(v38 + 2 * v17))
          {
            v40 = 0;
            do
            {
              v41 = *(*(v10 + 40) + 2 * (v40 + *(*(*(v10 + 32) + 96) + 4 * v17)));
              if (v40 != v41)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v11, v16, v41, &v53);
              v42 = v18[v40];
              *(*a4 + 16 * v42) = 0u;
              v43 = v54;
              v44.i64[0] = 0x3F0000003F000000;
              v44.i64[1] = 0x3F0000003F000000;
              *(*a4 + 16 * v42) = vmlaq_f32(*(*a4 + 16 * v42), v44, *(*a3 + 16 * v53));
              *(*a4 + 16 * v42) = vmlaq_f32(*(*a4 + 16 * v42), v44, *(*a3 + 16 * v43));
              ++v40;
            }

            while (v39 != v40);
          }
        }

        else
        {
          if ((v46 & 1) == 0)
          {
            v50 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v52, &v49, v51, v19, (*(*(v45 + 432) + 2 * v17) >> 7) & 0xF);
          }

          OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v11, v16, 0, &v53);
          v20 = *v18;
          *(*a4 + 16 * v20) = 0u;
          v21 = v54;
          v22 = v60[0];
          *(*a4 + 16 * v20) = vmlaq_n_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v53), *v60);
          *(*a4 + 16 * v20) = vmlaq_lane_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v21), v22, 1);
          if (SLODWORD(v51[4]) >= 1)
          {
            v23 = (*(v9 + 144) + 8 * v16);
            v24 = *v23;
            if (v24 >= 1)
            {
              v25 = 0;
              v26 = *(v9 + 168) + 4 * v23[1];
              do
              {
                v27 = *(v26 + 4 * v25);
                if (BYTE4(v51[4]) == 1)
                {
                  v28 = *(v48[21] + 4 * v27);
                  if (v28 == -1)
                  {
                    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
                  }

                  v29 = (v47[12] + 4 * v28);
                  v30 = *a4;
                  v31 = *a4;
                }

                else
                {
                  v32 = (2 * v27) | 1;
                  v33 = *(v9 + 24);
                  v34 = (*(v9 + 72) + 4 * *(v33 + 4 * v32));
                  v35 = *(v33 + 8 * v27);
                  v36 = 1;
                  do
                  {
                    v37 = *v34++;
                    ++v36;
                  }

                  while (v16 != v37);
                  if (v36 < v35)
                  {
                    v35 = 0;
                  }

                  v29 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v32) + 4 * (v36 - v35));
                  v31 = *a4;
                  v30 = *a3;
                }

                *(v31 + 16 * v20) = vmlaq_n_f32(*(v31 + 16 * v20), *(v30 + 16 * *v29), *&v55[4 * v25++]);
              }

              while (v25 != v24);
            }
          }
        }
      }

      ++v16;
      v8 = v48;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5, float32x4_t a6)
{
  v81 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v55 = *(*(*a1 + 64) + 8 * a2 - 8);
  v66 = *(*a1 + 4);
  v58 = v55[1];
  v50 = v55[2];
  v59 = *(*(v58 + 456) + 8 * a5);
  v8 = (*(v59 + 12) & 1) != 0 || *v7 == 0;
  v54 = v8;
  v57 = *(v55[60] + 8 * a5);
  v9 = *(*(v50 + 456) + 8 * a5);
  v10 = *(v58 + 20);
  v76 = &v79;
  v77 = 2 * v10;
  v78 = 32;
  v80 = 0;
  if (2 * v10 >= 0x21)
  {
    v80 = operator new(8 * v10);
    v76 = v80;
    v78 = 2 * v10;
    v10 = *(v58 + 20);
  }

  v11 = 0;
  v71 = &v74;
  v72 = v10;
  v73 = 16;
  v75 = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    v75 = v11;
    v71 = v11;
    v73 = v10;
  }

  v61[0] = v58;
  v61[1] = v50;
  if (*(v58 + 8) >= 1)
  {
    v51 = v9;
    v12 = 0;
    v13 = 0uLL;
    v15 = v55;
    v14 = a3;
    v16 = v54;
    v17 = v57;
    do
    {
      v18 = *(v15[30] + 4 * v12);
      if (v18 != -1)
      {
        v19 = *(*(v59 + 12) + 4 * v12);
        v20 = (*(v59 + 18) + 4 * v19);
        v21 = *(v51[12] + 4 * v18);
        v22 = (v51[18] + 4 * v21);
        v23 = *v22;
        v24 = v51[21];
        if ((*(v24 + v23) & 1) == 0 && v16)
        {
          *(*a4 + 16 * v23) = v13;
          v26 = *v22;
          a6 = vaddq_f32(*(*v14 + 16 * *v20), *(*a4 + 16 * v26));
          *(*a4 + 16 * v26) = a6;
        }

        else if (*(v24 + v23))
        {
          v39 = v51[9];
          v40 = *(v39 + 2 * v18);
          if (*(v39 + 2 * v18))
          {
            v41 = 0;
            v42 = v24 + v21;
            v52 = v42;
            v53 = *(v59 + 21) + v19;
            do
            {
              v43 = *(*(v17 + 5) + 2 * (*(*(*(v17 + 4) + 96) + 4 * v18) + v41));
              if (v41 != v43)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              v44 = v20[v43];
              v45 = v22[v41];
              *(*a4 + 16 * v45) = v13;
              if (!v16 && (*(v42 + v41) & 8) != 0)
              {
                OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v59, v12, v43, v67);
                if ((*(v53 + v43) & 0x10) != 0)
                {
                  if ((*(v53 + v43) & 0x20) != 0)
                  {
                    v48 = v43 == 0;
                    v47 = v12;
                  }

                  else
                  {
                    v47 = v12;
                    v48 = v43;
                  }

                  a6.f32[0] = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v57, v47, v48, v18);
                  v49 = 1.0 - a6.f32[0];
                  a6.f32[0] = a6.f32[0] + ((1.0 - a6.f32[0]) * 0.75);
                  v46 = v49 * 0.125;
                }

                else
                {
                  v46 = 0.125;
                  a6.i32[0] = 0.75;
                }

                v15 = v55;
                v14 = a3;
                v16 = v54;
                v17 = v57;
                *(*a4 + 16 * v45) = vmlaq_n_f32(*(*a4 + 16 * v45), *(*a3 + 16 * v67[0]), v46);
                *(*a4 + 16 * v45) = vmlaq_n_f32(*(*a4 + 16 * v45), *(*a3 + 16 * v67[1]), v46);
                *(*a4 + 16 * v45) = vmlaq_n_f32(*(*a4 + 16 * v45), *(*a3 + 16 * v44), a6.f32[0]);
                v13 = 0uLL;
                v42 = v52;
              }

              else
              {
                a6 = vaddq_f32(*(*v14 + 16 * v44), *(*a4 + 16 * v45));
                *(*a4 + 16 * v45) = a6;
              }

              ++v41;
            }

            while (v40 != v41);
          }
        }

        else
        {
          v27 = *(*(v58 + 336) + 8 * v12);
          v60 = 0.0;
          v28 = v76;
          v29 = v76 + v27;
          *v67 = &v60;
          v68 = v76;
          v69 = v29;
          memset(v70, 0, 13);
          v62 = v12;
          v63 = v18;
          v64 = *(*(v61[0] + 336) + 8 * v12);
          v65 = *(*(v61[0] + 264) + 8 * v12);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v66, v61, v67, (*(*(v58 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v50 + 432) + 2 * v18) >> 7) & 0xF, *a6.i64);
          v13 = 0uLL;
          v15 = v55;
          v14 = a3;
          v30 = *v20;
          v31 = *v22;
          *(*a4 + 16 * v31) = 0u;
          if (v70[2] >= 1)
          {
            if ((v70[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v32 = *(v58 + 264);
            v33 = *(v32 + 8 * v12);
            if (v33 >= 1)
            {
              v34 = (*(v58 + 288) + 4 * *(v32 + 4 * ((2 * v12) | 1)));
              do
              {
                v35 = *v34++;
                v36 = *(v55[21] + 4 * v35);
                if (v36 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v37 = *v29++;
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a4 + 16 * *(v51[12] + 4 * v36)), v37);
                --v33;
              }

              while (v33);
            }
          }

          if (v70[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v59, v12, v71);
            v13 = 0uLL;
            v15 = v55;
            v14 = a3;
            if (v27 >= 1)
            {
              for (i = 0; i != v27; ++i)
              {
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a3 + 16 * v71[i]), *(v28 + i * 4));
              }
            }
          }

          a6 = *(*v14 + 16 * v30);
          *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), a6, v60);
          v16 = v54;
          v17 = v57;
        }
      }

      ++v12;
    }

    while (v12 < *(v58 + 8));
    v11 = v75;
  }

  operator delete(v11);
  operator delete(v80);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v8 = 0;
  v35 = *MEMORY[0x277D85DE8];
  v26 = *(*(*a1 + 64) + 8 * a2 - 8);
  v27 = v26[1];
  v9 = *(v26[60] + 8 * a5);
  v10 = *(*(v27 + 456) + 8 * a5);
  v11 = *(*(v26[2] + 456) + 8 * a5);
  v12 = *(v27 + 16);
  v30 = &v33;
  v31 = v12;
  v32 = 8;
  __p = 0;
  if (v12 >= 9)
  {
    v8 = operator new(4 * v12);
    __p = v8;
    v30 = v8;
    v32 = v12;
  }

  if (*(v27 + 4) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(v26[27] + 4 * v13);
      if (v14 != -1)
      {
        v15 = (v11[18] + 4 * *(v11[12] + 4 * v14));
        if (*(v11[21] + *v15))
        {
          v19 = v11[9];
          v20 = *(v19 + 2 * v14);
          if (*(v19 + 2 * v14))
          {
            v21 = 0;
            do
            {
              v22 = *(*(v9 + 40) + 2 * (v21 + *(*(*(v9 + 32) + 96) + 4 * v14)));
              if (v21 != v22)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v10, v13, v22, &v28);
              v23 = v15[v21];
              *(*a4 + 16 * v23) = 0u;
              v24 = v29;
              v25.i64[0] = 0x3F0000003F000000;
              v25.i64[1] = 0x3F0000003F000000;
              *(*a4 + 16 * v23) = vmlaq_f32(*(*a4 + 16 * v23), v25, *(*a3 + 16 * v28));
              *(*a4 + 16 * v23) = vmlaq_f32(*(*a4 + 16 * v23), v25, *(*a3 + 16 * v24));
              ++v21;
            }

            while (v20 != v21);
          }
        }

        else
        {
          OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v10, v13, 0, &v28);
          v16 = *v15;
          *(*a4 + 16 * v16) = 0u;
          v17 = v29;
          v18.i64[0] = 0x3F0000003F000000;
          v18.i64[1] = 0x3F0000003F000000;
          *(*a4 + 16 * v16) = vmlaq_f32(*(*a4 + 16 * v16), v18, *(*a3 + 16 * v28));
          *(*a4 + 16 * v16) = vmlaq_f32(*(*a4 + 16 * v16), v18, *(*a3 + 16 * v17));
        }
      }

      ++v13;
    }

    while (v13 < *(v27 + 4));
    v8 = __p;
  }

  operator delete(v8);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv3_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  v7 = v6[2];
  v49 = v6;
  v50 = v6[1];
  v8 = v6[60];
  v9 = *(v7 + 456);
  v51 = *(*(v50 + 456) + 8 * a5);
  v10 = (*(v51 + 12) & 1) != 0 || **a1 == 0;
  v44 = v10;
  v11 = *(v8 + 8 * a5);
  v43 = *(v9 + 8 * a5);
  v12 = *(v50 + 20);
  v58 = &v61;
  v59 = 2 * v12;
  v60 = 32;
  v62 = 0;
  if (2 * v12 >= 0x21)
  {
    v62 = operator new(8 * v12);
    v58 = v62;
    v60 = 2 * v12;
    v12 = *(v50 + 20);
  }

  v13 = 0;
  v53 = &v56;
  v54 = v12;
  v55 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v53 = v13;
    v55 = v12;
  }

  if (*(v50 + 8) >= 1)
  {
    v14 = 0;
    v15 = 0uLL;
    v16 = a3;
    v17 = v44;
    while (1)
    {
      v18 = *(v49[30] + 4 * v14);
      if (v18 != -1)
      {
        v19 = *(*(v51 + 12) + 4 * v14);
        v20 = (*(v51 + 18) + 4 * v19);
        v21 = *(v43[12] + 4 * v18);
        v22 = (v43[18] + 4 * v21);
        v23 = *v22;
        v24 = v43[21];
        if ((*(v24 + v23) & 1) == 0 && v17)
        {
          *(*a4 + 16 * v23) = v15;
          v26 = (*a4 + 16 * *v22);
          v27 = *v20;
        }

        else
        {
          if (*(v24 + v23))
          {
            v28 = v43[9];
            v29 = *(v28 + 2 * v18);
            if (*(v28 + 2 * v18))
            {
              v30 = 0;
              v47 = *(v51 + 21) + v19;
              v48 = *(v28 + 2 * v18);
              v31 = v24 + v21;
              v46 = v31;
              do
              {
                v32 = *(*(v11 + 5) + 2 * (*(*(*(v11 + 4) + 96) + 4 * v18) + v30));
                if (v30 != v32)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
                }

                v33 = v20[v32];
                v34 = v22[v30];
                *(*a4 + 16 * v34) = v15;
                if (!v17 && (*(v31 + v30) & 8) != 0)
                {
                  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v51, v14, v32, v52);
                  if ((*(v47 + v32) & 0x10) != 0)
                  {
                    if ((*(v47 + v32) & 0x20) != 0)
                    {
                      v39 = v32 == 0;
                      v37 = v11;
                      v38 = v14;
                    }

                    else
                    {
                      v37 = v11;
                      v38 = v14;
                      v39 = v32;
                    }

                    FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v37, v38, v39, v18);
                    v41 = 1.0 - FractionalWeight;
                    v36 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                    v35 = v41 * 0.125;
                  }

                  else
                  {
                    v35 = 0.125;
                    v36 = 0.75;
                  }

                  v16 = a3;
                  v17 = v44;
                  v29 = v48;
                  v42 = v52[1];
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v52[0]), v35);
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v42), v35);
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v33), v36);
                  v15 = 0uLL;
                  v31 = v46;
                }

                else
                {
                  *(*a4 + 16 * v34) = vaddq_f32(*(*v16 + 16 * v33), *(*a4 + 16 * v34));
                }

                ++v30;
              }

              while (v29 != v30);
            }

            goto LABEL_19;
          }

          v27 = *v20;
          *(*a4 + 16 * v23) = v15;
          v26 = (*a4 + 16 * v23);
        }

        *v26 = vaddq_f32(*(*v16 + 16 * v27), *v26);
      }

LABEL_19:
      if (++v14 >= *(v50 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v62);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv3_fES9_EEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v81 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v55 = *(*(*a1 + 64) + 8 * a2 - 8);
  v66 = *(*a1 + 4);
  v58 = v55[1];
  v50 = v55[2];
  v59 = *(*(v58 + 456) + 8 * a5);
  v7 = (*(v59 + 12) & 1) != 0 || *v6 == 0;
  v54 = v7;
  v57 = *(v55[60] + 8 * a5);
  v8 = *(*(v50 + 456) + 8 * a5);
  v9 = *(v58 + 20);
  v76 = &v79;
  v77 = 2 * v9;
  v78 = 32;
  v80 = 0;
  if (2 * v9 >= 0x21)
  {
    v80 = operator new(8 * v9);
    v76 = v80;
    v78 = 2 * v9;
    v9 = *(v58 + 20);
  }

  v10 = 0;
  v71 = &v74;
  v72 = v9;
  v73 = 16;
  v75 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v75 = v10;
    v71 = v10;
    v73 = v9;
  }

  v61[0] = v58;
  v61[1] = v50;
  if (*(v58 + 8) >= 1)
  {
    v51 = v8;
    v11 = 0;
    v12 = 0uLL;
    v14 = v55;
    v13 = a3;
    v15 = v54;
    v16 = v57;
    do
    {
      v17 = *(v14[30] + 4 * v11);
      if (v17 != -1)
      {
        v18 = *(*(v59 + 12) + 4 * v11);
        v19 = (*(v59 + 18) + 4 * v18);
        v20 = *(v51[12] + 4 * v17);
        v21 = (v51[18] + 4 * v20);
        v22 = *v21;
        v23 = v51[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          *(*a4 + 16 * v22) = v12;
          *(*a4 + 16 * *v21) = vaddq_f32(*(*v13 + 16 * *v19), *(*a4 + 16 * *v21));
        }

        else if (*(v23 + v22))
        {
          v37 = v51[9];
          v38 = *(v37 + 2 * v17);
          if (*(v37 + 2 * v17))
          {
            v39 = 0;
            v40 = v23 + v20;
            v52 = v40;
            v53 = *(v59 + 21) + v18;
            do
            {
              v41 = *(*(v16 + 5) + 2 * (*(*(*(v16 + 4) + 96) + 4 * v17) + v39));
              if (v39 != v41)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              v42 = v19[v41];
              v43 = v21[v39];
              *(*a4 + 16 * v43) = v12;
              if (!v15 && (*(v40 + v39) & 8) != 0)
              {
                OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v59, v11, v41, v67);
                if ((*(v53 + v41) & 0x10) != 0)
                {
                  if ((*(v53 + v41) & 0x20) != 0)
                  {
                    v47 = v41 == 0;
                    v46 = v11;
                  }

                  else
                  {
                    v46 = v11;
                    v47 = v41;
                  }

                  FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v57, v46, v47, v17);
                  v49 = 1.0 - FractionalWeight;
                  v45 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                  v44 = v49 * 0.125;
                }

                else
                {
                  v44 = 0.125;
                  v45 = 0.75;
                }

                v14 = v55;
                v13 = a3;
                v15 = v54;
                v16 = v57;
                *(*a4 + 16 * v43) = vmlaq_n_f32(*(*a4 + 16 * v43), *(*a3 + 16 * v67[0]), v44);
                *(*a4 + 16 * v43) = vmlaq_n_f32(*(*a4 + 16 * v43), *(*a3 + 16 * v67[1]), v44);
                *(*a4 + 16 * v43) = vmlaq_n_f32(*(*a4 + 16 * v43), *(*a3 + 16 * v42), v45);
                v12 = 0uLL;
                v40 = v52;
              }

              else
              {
                *(*a4 + 16 * v43) = vaddq_f32(*(*v13 + 16 * v42), *(*a4 + 16 * v43));
              }

              ++v39;
            }

            while (v38 != v39);
          }
        }

        else
        {
          v25 = *(*(v58 + 336) + 8 * v11);
          v60 = 0.0;
          v26 = v76;
          v27 = v76 + v25;
          *v67 = &v60;
          v68 = v76;
          v69 = v27;
          memset(v70, 0, 13);
          v62 = v11;
          v63 = v17;
          v64 = *(*(v61[0] + 336) + 8 * v11);
          v65 = *(*(v61[0] + 264) + 8 * v11);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v66, v61, v67, (*(*(v58 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v50 + 432) + 2 * v17) >> 7) & 0xF);
          v12 = 0uLL;
          v14 = v55;
          v13 = a3;
          v28 = *v19;
          v29 = *v21;
          *(*a4 + 16 * v29) = 0u;
          if (v70[2] >= 1)
          {
            if ((v70[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v30 = *(v58 + 264);
            v31 = *(v30 + 8 * v11);
            if (v31 >= 1)
            {
              v32 = (*(v58 + 288) + 4 * *(v30 + 4 * ((2 * v11) | 1)));
              do
              {
                v33 = *v32++;
                v34 = *(v55[21] + 4 * v33);
                if (v34 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v35 = *v27++;
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a4 + 16 * *(v51[12] + 4 * v34)), v35);
                --v31;
              }

              while (v31);
            }
          }

          if (v70[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v59, v11, v71);
            v12 = 0uLL;
            v14 = v55;
            v13 = a3;
            if (v25 >= 1)
            {
              for (i = 0; i != v25; ++i)
              {
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a3 + 16 * v71[i]), *(v26 + i * 4));
              }
            }
          }

          *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*v13 + 16 * v28), v60);
          v15 = v54;
          v16 = v57;
        }
      }

      ++v11;
    }

    while (v11 < *(v58 + 8));
    v10 = v75;
  }

  operator delete(v10);
  operator delete(v80);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv3_fES9_EEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5, float32x4_t a6)
{
  v81 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v55 = *(*(*a1 + 64) + 8 * a2 - 8);
  v66 = *(*a1 + 4);
  v58 = v55[1];
  v50 = v55[2];
  v59 = *(*(v58 + 456) + 8 * a5);
  v8 = (*(v59 + 12) & 1) != 0 || *v7 == 0;
  v54 = v8;
  v57 = *(v55[60] + 8 * a5);
  v9 = *(*(v50 + 456) + 8 * a5);
  v10 = *(v58 + 20);
  v76 = &v79;
  v77 = 2 * v10;
  v78 = 32;
  v80 = 0;
  if (2 * v10 >= 0x21)
  {
    v80 = operator new(8 * v10);
    v76 = v80;
    v78 = 2 * v10;
    v10 = *(v58 + 20);
  }

  v11 = 0;
  v71 = &v74;
  v72 = v10;
  v73 = 16;
  v75 = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    v75 = v11;
    v71 = v11;
    v73 = v10;
  }

  v61[0] = v58;
  v61[1] = v50;
  if (*(v58 + 8) >= 1)
  {
    v51 = v9;
    v12 = 0;
    v13 = 0uLL;
    v15 = v55;
    v14 = a3;
    v16 = v54;
    v17 = v57;
    do
    {
      v18 = *(v15[30] + 4 * v12);
      if (v18 != -1)
      {
        v19 = *(*(v59 + 12) + 4 * v12);
        v20 = (*(v59 + 18) + 4 * v19);
        v21 = *(v51[12] + 4 * v18);
        v22 = (v51[18] + 4 * v21);
        v23 = *v22;
        v24 = v51[21];
        if ((*(v24 + v23) & 1) == 0 && v16)
        {
          *(*a4 + 16 * v23) = v13;
          v26 = *v22;
          a6 = vaddq_f32(*(*v14 + 16 * *v20), *(*a4 + 16 * v26));
          *(*a4 + 16 * v26) = a6;
        }

        else if (*(v24 + v23))
        {
          v39 = v51[9];
          v40 = *(v39 + 2 * v18);
          if (*(v39 + 2 * v18))
          {
            v41 = 0;
            v42 = v24 + v21;
            v52 = v42;
            v53 = *(v59 + 21) + v19;
            do
            {
              v43 = *(*(v17 + 5) + 2 * (*(*(*(v17 + 4) + 96) + 4 * v18) + v41));
              if (v41 != v43)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              v44 = v20[v43];
              v45 = v22[v41];
              *(*a4 + 16 * v45) = v13;
              if (!v16 && (*(v42 + v41) & 8) != 0)
              {
                OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v59, v12, v43, v67);
                if ((*(v53 + v43) & 0x10) != 0)
                {
                  if ((*(v53 + v43) & 0x20) != 0)
                  {
                    v48 = v43 == 0;
                    v47 = v12;
                  }

                  else
                  {
                    v47 = v12;
                    v48 = v43;
                  }

                  a6.f32[0] = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v57, v47, v48, v18);
                  v49 = 1.0 - a6.f32[0];
                  a6.f32[0] = a6.f32[0] + ((1.0 - a6.f32[0]) * 0.75);
                  v46 = v49 * 0.125;
                }

                else
                {
                  v46 = 0.125;
                  a6.i32[0] = 0.75;
                }

                v15 = v55;
                v14 = a3;
                v16 = v54;
                v17 = v57;
                *(*a4 + 16 * v45) = vmlaq_n_f32(*(*a4 + 16 * v45), *(*a3 + 16 * v67[0]), v46);
                *(*a4 + 16 * v45) = vmlaq_n_f32(*(*a4 + 16 * v45), *(*a3 + 16 * v67[1]), v46);
                *(*a4 + 16 * v45) = vmlaq_n_f32(*(*a4 + 16 * v45), *(*a3 + 16 * v44), a6.f32[0]);
                v13 = 0uLL;
                v42 = v52;
              }

              else
              {
                a6 = vaddq_f32(*(*v14 + 16 * v44), *(*a4 + 16 * v45));
                *(*a4 + 16 * v45) = a6;
              }

              ++v41;
            }

            while (v40 != v41);
          }
        }

        else
        {
          v27 = *(*(v58 + 336) + 8 * v12);
          v60 = 0.0;
          v28 = v76;
          v29 = v76 + v27;
          *v67 = &v60;
          v68 = v76;
          v69 = v29;
          memset(v70, 0, 13);
          v62 = v12;
          v63 = v18;
          v64 = *(*(v61[0] + 336) + 8 * v12);
          v65 = *(*(v61[0] + 264) + 8 * v12);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v66, v61, v67, (*(*(v58 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v50 + 432) + 2 * v18) >> 7) & 0xF, *a6.i64);
          v13 = 0uLL;
          v15 = v55;
          v14 = a3;
          v30 = *v20;
          v31 = *v22;
          *(*a4 + 16 * v31) = 0u;
          if (v70[2] >= 1)
          {
            if ((v70[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v32 = *(v58 + 264);
            v33 = *(v32 + 8 * v12);
            if (v33 >= 1)
            {
              v34 = (*(v58 + 288) + 4 * *(v32 + 4 * ((2 * v12) | 1)));
              do
              {
                v35 = *v34++;
                v36 = *(v55[21] + 4 * v35);
                if (v36 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v37 = *v29++;
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a4 + 16 * *(v51[12] + 4 * v36)), v37);
                --v33;
              }

              while (v33);
            }
          }

          if (v70[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v59, v12, v71);
            v13 = 0uLL;
            v15 = v55;
            v14 = a3;
            if (v27 >= 1)
            {
              for (i = 0; i != v27; ++i)
              {
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a3 + 16 * v71[i]), *(v28 + i * 4));
              }
            }
          }

          a6 = *(*v14 + 16 * v30);
          *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), a6, v60);
          v16 = v54;
          v17 = v57;
        }
      }

      ++v12;
    }

    while (v12 < *(v58 + 8));
    v11 = v75;
  }

  operator delete(v11);
  operator delete(v80);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv3_fES9_EEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  v7 = v6[2];
  v49 = v6;
  v50 = v6[1];
  v8 = v6[60];
  v9 = *(v7 + 456);
  v51 = *(*(v50 + 456) + 8 * a5);
  v10 = (*(v51 + 12) & 1) != 0 || **a1 == 0;
  v44 = v10;
  v11 = *(v8 + 8 * a5);
  v43 = *(v9 + 8 * a5);
  v12 = *(v50 + 20);
  v58 = &v61;
  v59 = 2 * v12;
  v60 = 32;
  v62 = 0;
  if (2 * v12 >= 0x21)
  {
    v62 = operator new(8 * v12);
    v58 = v62;
    v60 = 2 * v12;
    v12 = *(v50 + 20);
  }

  v13 = 0;
  v53 = &v56;
  v54 = v12;
  v55 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v53 = v13;
    v55 = v12;
  }

  if (*(v50 + 8) >= 1)
  {
    v14 = 0;
    v15 = 0uLL;
    v16 = a3;
    v17 = v44;
    while (1)
    {
      v18 = *(v49[30] + 4 * v14);
      if (v18 != -1)
      {
        v19 = *(*(v51 + 12) + 4 * v14);
        v20 = (*(v51 + 18) + 4 * v19);
        v21 = *(v43[12] + 4 * v18);
        v22 = (v43[18] + 4 * v21);
        v23 = *v22;
        v24 = v43[21];
        if ((*(v24 + v23) & 1) == 0 && v17)
        {
          *(*a4 + 16 * v23) = v15;
          v26 = (*a4 + 16 * *v22);
          v27 = *v20;
        }

        else
        {
          if (*(v24 + v23))
          {
            v28 = v43[9];
            v29 = *(v28 + 2 * v18);
            if (*(v28 + 2 * v18))
            {
              v30 = 0;
              v47 = *(v51 + 21) + v19;
              v48 = *(v28 + 2 * v18);
              v31 = v24 + v21;
              v46 = v31;
              do
              {
                v32 = *(*(v11 + 5) + 2 * (*(*(*(v11 + 4) + 96) + 4 * v18) + v30));
                if (v30 != v32)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
                }

                v33 = v20[v32];
                v34 = v22[v30];
                *(*a4 + 16 * v34) = v15;
                if (!v17 && (*(v31 + v30) & 8) != 0)
                {
                  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v51, v14, v32, v52);
                  if ((*(v47 + v32) & 0x10) != 0)
                  {
                    if ((*(v47 + v32) & 0x20) != 0)
                    {
                      v39 = v32 == 0;
                      v37 = v11;
                      v38 = v14;
                    }

                    else
                    {
                      v37 = v11;
                      v38 = v14;
                      v39 = v32;
                    }

                    FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v37, v38, v39, v18);
                    v41 = 1.0 - FractionalWeight;
                    v36 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                    v35 = v41 * 0.125;
                  }

                  else
                  {
                    v35 = 0.125;
                    v36 = 0.75;
                  }

                  v16 = a3;
                  v17 = v44;
                  v29 = v48;
                  v42 = v52[1];
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v52[0]), v35);
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v42), v35);
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v33), v36);
                  v15 = 0uLL;
                  v31 = v46;
                }

                else
                {
                  *(*a4 + 16 * v34) = vaddq_f32(*(*v16 + 16 * v33), *(*a4 + 16 * v34));
                }

                ++v30;
              }

              while (v29 != v30);
            }

            goto LABEL_19;
          }

          v27 = *v20;
          *(*a4 + 16 * v23) = v15;
          v26 = (*a4 + 16 * v23);
        }

        *v26 = vaddq_f32(*(*v16 + 16 * v27), *v26);
      }

LABEL_19:
      if (++v14 >= *(v50 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v62);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner11InterpolateIP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(int **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int16x4_t a5)
{
  if (a2 < 1 || (v5 = a2, ((*(*a1 + 9) - *(*a1 + 8)) >> 3) < a2))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner11InterpolateIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0__cold_1();
  }

  v9 = **a1;
  if (v9)
  {
    if (v9 == 2)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, a2, a3, a4, a5);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, v5, a3, a4);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, v5, a3, a4, v10);
    }

    else if (v9 == 1)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, a2, a3, a4, a5);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, v5, a3, a4);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, v5, a3, a4);
    }
  }

  else
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(a1, a2, a3, a4, a5);
    v11 = 0;
    v12 = *(*(*a1 + 8) + 8 * v5 - 8);
    v13 = *(v12 + 8);
    v14 = *(v13 + 16);
    __p = 0;
    if (v14 >= 9)
    {
      v11 = operator new(4 * v14);
      __p = v11;
    }

    v15 = *(v13 + 4);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18.i64[0] = 0x3F0000003F000000;
      v18.i64[1] = 0x3F0000003F000000;
      do
      {
        v19 = *(*(v12 + 216) + 4 * v17);
        if (v19 != -1)
        {
          v20 = (*(v13 + 120) + v16);
          v21 = (*a4 + 16 * v19);
          *v21 = 0;
          v21[1] = 0;
          *(*a4 + 16 * v19) = vmlaq_f32(*(*a4 + 16 * v19), v18, *(*a3 + 16 * *v20));
          *(*a4 + 16 * v19) = vmlaq_f32(*(*a4 + 16 * v19), v18, *(*a3 + 16 * v20[1]));
          v15 = *(v13 + 4);
        }

        ++v17;
        v16 += 8;
      }

      while (v17 < v15);
      v11 = __p;
    }

    operator delete(v11);
    v22 = 0;
    v23 = *(*(*a1 + 8) + 8 * v5 - 8);
    v24 = *(v23 + 8);
    v30 = 0;
    if ((2 * *(v24 + 20)) >= 0x21)
    {
      v22 = operator new(4 * (2 * *(v24 + 20)));
      v30 = v22;
    }

    v25 = *(v24 + 8);
    if (v25 >= 1)
    {
      for (i = 0; i < v25; ++i)
      {
        v27 = *(*(v23 + 240) + 4 * i);
        if (v27 != -1)
        {
          v28 = (*a4 + 16 * v27);
          *v28 = 0;
          v28[1] = 0;
          *(*a4 + 16 * v27) = vaddq_f32(*(*a3 + 16 * i), *(*a4 + 16 * v27));
          v25 = *(v24 + 8);
        }
      }

      v22 = v30;
    }

    operator delete(v22);
  }
}

uint64_t _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner18InterpolateVaryingIP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_(uint64_t result, int a2, void *a3, void *a4, double a5, float32x4_t a6)
{
  if (a2 < 1 || (v6 = *(*result + 64), ((*(*result + 72) - v6) >> 3) < a2))
  {
    _ZN23C3DSubdivCPUPrimvarDataIDv3_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE_cold_2();
  }

  v7 = *(v6 + 8 * a2 - 8);
  v8 = *(v7 + 8);
  if (*(v7 + 52) >= 1 && *v8 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(v7 + 168) + 4 * v9);
      if (v10 != -1)
      {
        v11 = *(v8 + 6);
        v12 = *(*(v8 + 3) + 8 * v9);
        v13 = *(*(v8 + 3) + 8 * v9 + 4);
        v14 = (*a4 + 16 * v10);
        *v14 = 0;
        v14[1] = 0;
        if (v12 >= 1)
        {
          v15 = (v11 + 4 * v13);
          a6.f32[0] = 1.0 / v12;
          a6 = vdupq_lane_s32(*a6.f32, 0);
          do
          {
            v16 = *v15++;
            *(*a4 + 16 * v10) = vmlaq_f32(*(*a4 + 16 * v10), *(*a3 + 16 * v16), a6);
            --v12;
          }

          while (v12);
        }
      }

      ++v9;
    }

    while (v9 < *v8);
  }

  v17 = v8[1];
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20.i64[0] = 0x3F0000003F000000;
    v20.i64[1] = 0x3F0000003F000000;
    do
    {
      v21 = *(*(v7 + 216) + 4 * v19);
      if (v21 != -1)
      {
        v22 = (*(v8 + 15) + v18);
        v23 = (*a4 + 16 * v21);
        *v23 = 0;
        v23[1] = 0;
        *(*a4 + 16 * v21) = vmlaq_f32(*(*a4 + 16 * v21), v20, *(*a3 + 16 * *v22));
        *(*a4 + 16 * v21) = vmlaq_f32(*(*a4 + 16 * v21), v20, *(*a3 + 16 * v22[1]));
        v17 = v8[1];
      }

      ++v19;
      v18 += 8;
    }

    while (v19 < v17);
  }

  v24 = v8[2];
  if (v24 >= 1)
  {
    for (i = 0; i < v24; ++i)
    {
      v26 = *(*(v7 + 240) + 4 * i);
      if (v26 != -1)
      {
        v27 = (*a4 + 16 * v26);
        *v27 = 0;
        v27[1] = 0;
        *(*a4 + 16 * v26) = vaddq_f32(*(*a3 + 16 * i), *(*a4 + 16 * v26));
        v24 = v8[2];
      }
    }
  }

  return result;
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_i(int **result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int16x4_t a6)
{
  if (a2 < 1 || (v6 = a2, ((*(*result + 9) - *(*result + 8)) >> 3) < a2))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_i_cold_1();
  }

  v8 = a5;
  v11 = **result;
  if (v11)
  {
    if (v11 == 2)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8, v12);
    }

    else if (v11 == 1)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);
    }
  }

  else
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);
  }
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv4_fES7_EEviRKT_RT0_i(int **result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int16x4_t a6)
{
  if (a2 < 1 || (v6 = a2, ((*(*result + 9) - *(*result + 8)) >> 3) < a2))
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner22InterpolateFaceVaryingIP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS6_NS8_9allocatorIS6_EEEEEEviRKT_RT0_i_cold_1();
  }

  v8 = a5;
  v11 = **result;
  if (v11)
  {
    if (v11 == 2)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv4_fES9_EEviRKT0_RT1_i(result, v6, a3, a4, v8, v12);
    }

    else if (v11 == 1)
    {
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

      _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fES9_EEviRKT0_RT1_i(result, v6, a3, a4, v8);
    }
  }

  else
  {
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, a2, a3, a4, a5, a6);
    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(result, v6, a3, a4, v8);

    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv4_fES9_EEviRKT0_RT1_i(result, v6, a3, a4, v8);
  }
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t a1, int a2, void *a3, void *a4, int16x4_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v5 + 52))
  {
    v8 = 0;
    v9 = *(v5 + 8);
    v10 = v9[5];
    v28 = &v29;
    __p = 0;
    if (v10 >= 0x11)
    {
      v8 = operator new(4 * v10);
      __p = v8;
      v28 = v8;
    }

    if (*v9 >= 1)
    {
      v11 = 0;
      a5.i32[0] = 1.0;
      v12 = vdupq_n_s64(4uLL);
      do
      {
        v13 = *(*(v5 + 168) + 4 * v11);
        if (v13 != -1)
        {
          v14 = (*(v9 + 3) + 8 * v11);
          v15 = *v14;
          if (v15 < 1)
          {
            v27 = (*a4 + 16 * v13);
            *v27 = 0;
            v27[1] = 0;
          }

          else
          {
            v16 = *(v9 + 6) + 4 * v14[1];
            v17 = 1.0 / v15;
            v18 = (v15 + 3) & 0xFFFFFFFC;
            v19 = vdupq_n_s64(v15 - 1);
            v20 = (v28 + 1);
            v21 = xmmword_21C27F640;
            v22 = xmmword_21C27F630;
            do
            {
              v23 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s16(v23, a5).u8[0])
              {
                *(v20 - 2) = v17;
              }

              if (vuzp1_s16(v23, a5).i8[2])
              {
                *(v20 - 1) = v17;
              }

              if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v19, *&v22))).i32[1])
              {
                *v20 = v17;
                v20[1] = v17;
              }

              v22 = vaddq_s64(v22, v12);
              v21 = vaddq_s64(v21, v12);
              v20 += 4;
              v18 -= 4;
            }

            while (v18);
            v24 = (*a4 + 16 * v13);
            *v24 = 0;
            v24[1] = 0;
            v25 = 0;
            v26 = 4 * v15;
            do
            {
              *(*a4 + 16 * v13) = vmlaq_n_f32(*(*a4 + 16 * v13), *(*a3 + 16 * *(v16 + v25)), *(v28 + v25));
              v25 += 4;
            }

            while (v26 != v25);
          }
        }

        ++v11;
      }

      while (v11 < *v9);
      v8 = __p;
    }

    operator delete(v8);
  }
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v47[1] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = *(v9 + 8);
  v37 = *(v9 + 16);
  v41 = *(v8 + 4);
  v11 = *(v10 + 16);
  v42 = &v45;
  v43 = v11;
  v44 = 8;
  v39 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v42 = v7;
    v44 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v9 + 216) + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v38[0] = v47;
        v38[1] = 0;
        v38[2] = v42;
        memset(&v38[3], 0, 13);
        v40 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v41, &v39, v38, v20, (*(*(v37 + 432) + 2 * v14) >> 7) & 0xF);
        v21 = (*a4 + 16 * v14);
        *v21 = 0;
        v21[1] = 0;
        v22 = v47[0];
        *(*a4 + 16 * v14) = vmlaq_n_f32(*(*a4 + 16 * v14), *(*a3 + 16 * *v15), *v47);
        *(*a4 + 16 * v14) = vmlaq_lane_f32(*(*a4 + 16 * v14), *(*a3 + 16 * v15[1]), v22, 1);
        if (SLODWORD(v38[4]) >= 1 && v18 >= 1)
        {
          v23 = 0;
          v24 = v16 + 4 * v19;
          do
          {
            if (BYTE4(v38[4]) == 1)
            {
              if (*(v9 + 52) <= 0)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v25 = *(*(v9 + 168) + 4 * *(v24 + 4 * v23));
              if (v25 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
              }

              v26 = *a4;
              v27 = *a4;
            }

            else
            {
              v28 = *(v24 + 4 * v23);
              v29 = 2 * v28;
              v30 = *(v10 + 24);
              v31 = *(v30 + 8 * v28 + 4);
              v32 = (*(v10 + 72) + 4 * v31);
              v33 = *(v30 + 4 * v29);
              v34 = 1;
              do
              {
                v35 = *v32++;
                ++v34;
              }

              while (i != v35);
              v36 = *(v10 + 48) + 4 * v31;
              if (v34 < v33)
              {
                v33 = 0;
              }

              v25 = *(v36 + 4 * (v34 - v33));
              v27 = *a4;
              v26 = *a3;
            }

            *(v27 + 16 * v14) = vmlaq_n_f32(*(v27 + 16 * v14), *(v26 + 16 * v25), v42[v23++]);
          }

          while (v23 != v18);
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t *a1, int a2, void *a3, void *a4)
{
  v7 = 0;
  v50 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v11 = v9[1];
  v10 = v9[2];
  v44 = *(v8 + 4);
  v12 = 2 * *(v11 + 20);
  v45 = &v48;
  v46 = v12;
  v47 = 32;
  v39[0] = v11;
  v39[1] = v10;
  v32 = v10;
  __p = 0;
  if (v12 >= 0x21)
  {
    v7 = operator new(4 * v12);
    __p = v7;
    v45 = v7;
    v47 = v12;
  }

  v13 = *(v11 + 8);
  if (v13 >= 1)
  {
    for (i = 0; i < v13; ++i)
    {
      v15 = *(v9[30] + 4 * i);
      if (v15 != -1)
      {
        v16 = v15;
        v36 = *(v11 + 360);
        v17 = *(v11 + 336);
        v18 = (8 * i) | 4;
        v35 = *(v17 + v18);
        v19 = *(v17 + 8 * i);
        v20 = *(v11 + 264);
        v34 = *(v20 + v18);
        v21 = *(v20 + 8 * i);
        v38 = 0.0;
        v22 = v45;
        v23 = v45 + v19;
        v37[0] = &v38;
        v37[1] = v45;
        v37[2] = v23;
        memset(&v37[3], 0, 13);
        v40 = i;
        v41 = v15;
        v42 = *(*(v39[0] + 336) + 8 * i);
        v43 = *(*(v39[0] + 264) + 8 * i);
        v33 = *(v11 + 288);
        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v44, v39, v37, (*(*(v11 + 432) + 2 * i) >> 7) & 0xF, (*(*(v32 + 432) + 2 * v15) >> 7) & 0xF);
        v24 = (*a4 + 16 * v16);
        *v24 = 0;
        v24[1] = 0;
        if (SLODWORD(v37[4]) >= 1)
        {
          if (BYTE4(v37[4]) != 1)
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
          }

          if (v21 >= 1)
          {
            v25 = (v33 + 4 * v34);
            do
            {
              v26 = *v25++;
              v27 = *(v9[21] + 4 * v26);
              if (v27 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v28 = *v23++;
              *(*a4 + 16 * v16) = vmlaq_n_f32(*(*a4 + 16 * v16), *(*a4 + 16 * v27), v28);
              --v21;
            }

            while (v21);
          }
        }

        if (SHIDWORD(v37[3]) >= 1 && v19 >= 1)
        {
          v29 = (v36 + 4 * v35);
          do
          {
            v30 = *v29++;
            v31 = (*(v11 + 120) + 8 * v30);
            LODWORD(v30) = *v22;
            v22 = (v22 + 4);
            *(*a4 + 16 * v16) = vmlaq_n_f32(*(*a4 + 16 * v16), *(*a3 + 16 * v31[i == *v31]), *&v30);
            --v19;
          }

          while (v19);
        }

        *(*a4 + 16 * v16) = vmlaq_n_f32(*(*a4 + 16 * v16), *(*a3 + 16 * i), v38);
        v13 = *(v11 + 8);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v47[1] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = *(v9 + 8);
  v37 = *(v9 + 16);
  v41 = *(v8 + 4);
  v11 = *(v10 + 16);
  v42 = &v45;
  v43 = v11;
  v44 = 8;
  v39 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v42 = v7;
    v44 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v9 + 216) + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v38[0] = v47;
        v38[1] = 0;
        v38[2] = v42;
        memset(&v38[3], 0, 13);
        v40 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v41, &v39, v38, v20, (*(*(v37 + 432) + 2 * v14) >> 7) & 0xF);
        v21 = (*a4 + 16 * v14);
        *v21 = 0;
        v21[1] = 0;
        v22 = v47[0];
        *(*a4 + 16 * v14) = vmlaq_n_f32(*(*a4 + 16 * v14), *(*a3 + 16 * *v15), *v47);
        *(*a4 + 16 * v14) = vmlaq_lane_f32(*(*a4 + 16 * v14), *(*a3 + 16 * v15[1]), v22, 1);
        if (SLODWORD(v38[4]) >= 1 && v18 >= 1)
        {
          v23 = 0;
          v24 = v16 + 4 * v19;
          do
          {
            if (BYTE4(v38[4]) == 1)
            {
              if (*(v9 + 52) <= 0)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v25 = *(*(v9 + 168) + 4 * *(v24 + 4 * v23));
              if (v25 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
              }

              v26 = *a4;
              v27 = *a4;
            }

            else
            {
              v28 = *(v24 + 4 * v23);
              v29 = 2 * v28;
              v30 = *(v10 + 24);
              v31 = *(v30 + 8 * v28 + 4);
              v32 = (*(v10 + 72) + 4 * v31);
              v33 = *(v30 + 4 * v29);
              v34 = 1;
              do
              {
                v35 = *v32++;
                ++v34;
              }

              while (i != v35);
              v36 = *(v10 + 48) + 4 * v31;
              if (v34 < v33)
              {
                v33 = 0;
              }

              v25 = *(v36 + 4 * (v34 - v33));
              v27 = *a4;
              v26 = *a3;
            }

            *(v27 + 16 * v14) = vmlaq_n_f32(*(v27 + 16 * v14), *(v26 + 16 * v25), v42[v23++]);
          }

          while (v23 != v18);
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_(uint64_t *a1, int a2, void *a3, void *a4, double a5)
{
  v8 = 0;
  v51 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*(v9 + 64) + 8 * a2 - 8);
  v12 = v10[1];
  v11 = v10[2];
  v45 = *(v9 + 4);
  v13 = 2 * *(v12 + 20);
  v46 = &v49;
  v47 = v13;
  v48 = 32;
  v40[0] = v12;
  v40[1] = v11;
  v33 = v11;
  __p = 0;
  if (v13 >= 0x21)
  {
    v8 = operator new(4 * v13);
    __p = v8;
    v46 = v8;
    v48 = v13;
  }

  v14 = *(v12 + 8);
  if (v14 >= 1)
  {
    for (i = 0; i < v14; ++i)
    {
      v16 = *(v10[30] + 4 * i);
      if (v16 != -1)
      {
        v17 = v16;
        v37 = *(v12 + 360);
        v18 = *(v12 + 336);
        v19 = (8 * i) | 4;
        v36 = *(v18 + v19);
        v20 = *(v18 + 8 * i);
        v21 = *(v12 + 264);
        v35 = *(v21 + v19);
        v22 = *(v21 + 8 * i);
        v39 = 0.0;
        v23 = v46;
        v24 = v46 + v20;
        v38[0] = &v39;
        v38[1] = v46;
        v38[2] = v24;
        memset(&v38[3], 0, 13);
        v41 = i;
        v42 = v16;
        v43 = *(*(v40[0] + 336) + 8 * i);
        v44 = *(*(v40[0] + 264) + 8 * i);
        v34 = *(v12 + 288);
        OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v45, v40, v38, (*(*(v12 + 432) + 2 * i) >> 7) & 0xF, (*(*(v33 + 432) + 2 * v16) >> 7) & 0xF, a5);
        v25 = (*a4 + 16 * v17);
        *v25 = 0;
        v25[1] = 0;
        if (SLODWORD(v38[4]) >= 1)
        {
          if (BYTE4(v38[4]) != 1)
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_1();
          }

          if (v22 >= 1)
          {
            v26 = (v34 + 4 * v35);
            do
            {
              v27 = *v26++;
              v28 = *(v10[21] + 4 * v27);
              if (v28 == -1)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner15interpFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1__cold_2();
              }

              v29 = *v24++;
              *(*a4 + 16 * v17) = vmlaq_n_f32(*(*a4 + 16 * v17), *(*a4 + 16 * v28), v29);
              --v22;
            }

            while (v22);
          }
        }

        if (SHIDWORD(v38[3]) >= 1 && v20 >= 1)
        {
          v30 = (v37 + 4 * v36);
          do
          {
            v31 = *v30++;
            v32 = (*(v12 + 120) + 8 * v31);
            LODWORD(v31) = *v23;
            v23 = (v23 + 4);
            *(*a4 + 16 * v17) = vmlaq_n_f32(*(*a4 + 16 * v17), *(*a3 + 16 * v32[i == *v32]), *&v31);
            --v20;
          }

          while (v20);
        }

        *&a5 = v39;
        *(*a4 + 16 * v17) = vmlaq_n_f32(*(*a4 + 16 * v17), *(*a3 + 16 * i), v39);
        v14 = *(v12 + 8);
      }
    }

    v8 = __p;
  }

  operator delete(v8);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromFacesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5, int16x4_t a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v6 + 52))
  {
    v9 = 0;
    v10 = *(v6 + 8);
    v11 = *(*(v10 + 57) + 8 * a5);
    v12 = *(*(*(v6 + 16) + 456) + 8 * a5);
    v13 = v10[5];
    v32 = &v33;
    __p = 0;
    if (v13 >= 0x11)
    {
      v9 = operator new(4 * v13);
      __p = v9;
      v32 = v9;
    }

    if (*v10 >= 1)
    {
      v14 = 0;
      a6.i32[0] = 1.0;
      v15 = vdupq_n_s64(4uLL);
      do
      {
        v16 = *(*(v6 + 168) + 4 * v14);
        if (v16 != -1)
        {
          v17 = *(*(v12 + 96) + 4 * v16);
          v18 = (*(*v11 + 24) + 8 * v14);
          v19 = *v18;
          if (v19 < 1)
          {
            v31 = (*a4 + 16 * v17);
            *v31 = 0;
            v31[1] = 0;
          }

          else
          {
            v20 = v11[3] + 4 * v18[1];
            v21 = 1.0 / v19;
            v22 = (v19 + 3) & 0xFFFFFFFC;
            v23 = vdupq_n_s64(v19 - 1);
            v24 = (v32 + 1);
            v25 = xmmword_21C27F640;
            v26 = xmmword_21C27F630;
            do
            {
              v27 = vmovn_s64(vcgeq_u64(v23, v25));
              if (vuzp1_s16(v27, a6).u8[0])
              {
                *(v24 - 2) = v21;
              }

              if (vuzp1_s16(v27, a6).i8[2])
              {
                *(v24 - 1) = v21;
              }

              if (vuzp1_s16(a6, vmovn_s64(vcgeq_u64(v23, *&v26))).i32[1])
              {
                *v24 = v21;
                v24[1] = v21;
              }

              v26 = vaddq_s64(v26, v15);
              v25 = vaddq_s64(v25, v15);
              v24 += 4;
              v22 -= 4;
            }

            while (v22);
            v28 = (*a4 + 16 * v17);
            *v28 = 0;
            v28[1] = 0;
            v29 = 0;
            v30 = 4 * v19;
            do
            {
              *(*a4 + 16 * v17) = vmlaq_n_f32(*(*a4 + 16 * v17), *(*a3 + 16 * *(v20 + v29)), *(v32 + v29));
              v29 += 4;
            }

            while (v30 != v29);
          }
        }

        ++v14;
      }

      while (v14 < *v10);
      v9 = __p;
    }

    operator delete(v9);
  }
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v54 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v47 = v8[2];
  v12 = *(*(v47 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v60;
  v57 = v60;
  v58 = v13;
  v59 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v57 = v15;
    v59 = v13;
    v14 = v15;
  }

  v53[0] = v62;
  v53[1] = 0;
  v53[2] = v14;
  memset(&v53[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v53[3]) = 2;
    LODWORD(v53[4]) = 0;
    v62[0] = 0x3F0000003F000000;
    v48 = 1;
  }

  else
  {
    v48 = 0;
  }

  v51 = v9;
  if (*(v9 + 4) >= 1)
  {
    v49 = v12;
    v50 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v49[18] + 4 * *(v49[12] + 4 * v17));
        if (*(v49[21] + *v18))
        {
          v39 = v49[9];
          v40 = *(v39 + 2 * v17);
          if (*(v39 + 2 * v17))
          {
            v41 = 0;
            do
            {
              v42 = *(*(v10 + 40) + 2 * (v41 + *(*(*(v10 + 32) + 96) + 4 * v17)));
              if (v41 != v42)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v11, v16, v42, &v55);
              v43 = v18[v41];
              v44 = (*a4 + 16 * v43);
              *v44 = 0;
              v44[1] = 0;
              v45 = v56;
              v46.i64[0] = 0x3F0000003F000000;
              v46.i64[1] = 0x3F0000003F000000;
              *(*a4 + 16 * v43) = vmlaq_f32(*(*a4 + 16 * v43), v46, *(*a3 + 16 * v55));
              *(*a4 + 16 * v43) = vmlaq_f32(*(*a4 + 16 * v43), v46, *(*a3 + 16 * v45));
              ++v41;
            }

            while (v40 != v41);
          }
        }

        else
        {
          if ((v48 & 1) == 0)
          {
            v52 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v54, &v51, v53, v19, (*(*(v47 + 432) + 2 * v17) >> 7) & 0xF);
          }

          OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v11, v16, 0, &v55);
          v20 = *v18;
          v21 = (*a4 + 16 * v20);
          *v21 = 0;
          v21[1] = 0;
          v22 = v56;
          v23 = v62[0];
          *(*a4 + 16 * v20) = vmlaq_n_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v55), *v62);
          *(*a4 + 16 * v20) = vmlaq_lane_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v22), v23, 1);
          if (SLODWORD(v53[4]) >= 1)
          {
            v24 = (*(v9 + 144) + 8 * v16);
            v25 = *v24;
            if (v25 >= 1)
            {
              v26 = 0;
              v27 = *(v9 + 168) + 4 * v24[1];
              do
              {
                v28 = *(v27 + 4 * v26);
                if (BYTE4(v53[4]) == 1)
                {
                  v29 = *(v50[21] + 4 * v28);
                  if (v29 == -1)
                  {
                    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
                  }

                  v30 = (v49[12] + 4 * v29);
                  v31 = *a4;
                  v32 = *a4;
                }

                else
                {
                  v33 = (2 * v28) | 1;
                  v34 = *(v9 + 24);
                  v35 = (*(v9 + 72) + 4 * *(v34 + 4 * v33));
                  v36 = *(v34 + 8 * v28);
                  v37 = 1;
                  do
                  {
                    v38 = *v35++;
                    ++v37;
                  }

                  while (v16 != v38);
                  if (v37 < v36)
                  {
                    v36 = 0;
                  }

                  v30 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v33) + 4 * (v37 - v36));
                  v32 = *a4;
                  v31 = *a3;
                }

                *(v32 + 16 * v20) = vmlaq_n_f32(*(v32 + 16 * v20), *(v31 + 16 * *v30), *&v57[4 * v26++]);
              }

              while (v26 != v25);
            }
          }
        }
      }

      ++v16;
      v8 = v50;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}