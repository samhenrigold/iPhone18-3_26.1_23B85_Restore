void sub_1A6971E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ZinNeKernelData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<ZinMirAneKernelCoeff>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 32);
    std::vector<ZinNeKernelData>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x1AC55A070](v2, 0x1020C4012B38EE3);
  }

  return result;
}

__CFDictionary *ZinCreateQuantUnit(const ZinIrQuantUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (*(a1 + 22) < 1)
  {
    v6 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 128);
    CFDictionaryAddValue(v5, @"QuantScale", v6);
    CFRelease(v6);
  }

  else
  {
    ZinAddWeightInfoToParamsDict(Mutable, 0, @"ScaleCount", @"ScaleIndex", @"ScaleOffset", a1 + 80);
  }

  v7 = *(a1 + 28);
  if (v7 > 0 || *(a1 + 33) != 0)
  {
    if (v7 < 1)
    {
      v9 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 132);
      CFDictionaryAddValue(v5, @"QuantZeroPoint", v9);
      CFRelease(v9);
    }

    else
    {
      ZinAddWeightInfoToParamsDict(v5, 0, @"ZeroPointCount", @"ZeroPointIndex", @"ZeroPointOffset", a1 + 104);
    }
  }

  ZinSetFormat(@"QuantScaleType", a1 + 34, v5);
  CFDictionaryAddValue(Unit, @"Params", v5);
  CFRelease(v5);
  return Unit;
}

void *ZinIrGatherUnit::ZinIrGatherUnit(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = ZinIrUnit::ZinIrUnit(a1, a3);
  *v5 = &unk_1F19F2050;
  ZinIrTextureUnitInfo::ZinIrTextureUnitInfo((v5 + 7), a2);
  a1[27] = 0;
  a1[7] = &unk_1F1A34188;
  a1[28] = 0;
  a1[29] = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(a1 + 27, *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 2);
  return a1;
}

void sub_1A69720CC(_Unwind_Exception *a1)
{
  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v2);
  ZinIrUnit::~ZinIrUnit(v1);
  _Unwind_Resume(a1);
}

uint64_t ZinIrGatherUnit::GetOutputDimensions(uint64_t a1, uint64_t *a2, unint64_t *a3, int **a4, unint64_t *a5)
{
  v9 = *a4;
  v8 = a4[1];
  v10 = *(a1 + 2 * (v8 - *a4) + 1744);
  v11 = 0;
  if (v8 != *a4)
  {
    do
    {
      v12 = *v9;
      if (*v9 <= 1)
      {
        if (v12)
        {
          if (v12 == 1)
          {
            v11 |= 2uLL;
            a5[4] = a3[4];
          }
        }

        else
        {
          v11 |= 1uLL;
          *a5 = *a3;
        }
      }

      else
      {
        switch(v12)
        {
          case 2:
            v11 |= 4uLL;
            a5[1] = a3[1] / v10;
            break;
          case 3:
            v11 |= 8uLL;
            a5[2] = a3[2];
            break;
          case 4:
            v11 |= 0x10uLL;
            a5[3] = a3[3];
            break;
        }
      }

      ++v9;
    }

    while (v9 != v8);
  }

  v13 = 0;
  while (((v11 >> v13) & 1) != 0)
  {
LABEL_26:
    if (++v13 == 5)
    {
      return 1;
    }
  }

  if (v13 <= 1)
  {
    if (!v13)
    {
      LODWORD(v20) = 0;
      v17 = &v20;
      v14 = a2;
      v15 = a3;
      v16 = a5;
LABEL_25:
      ComputeOutDim(v14, v15, v16, v17);
      goto LABEL_26;
    }

    LODWORD(v20) = 1;
    v14 = a2 + 4;
    v15 = a3 + 4;
    v16 = a5 + 4;
LABEL_23:
    v17 = &v20;
    goto LABEL_25;
  }

  if (v13 == 2)
  {
    v20 = a3[1] / v10;
    v19 = 2;
    v14 = a2 + 1;
    v15 = &v20;
    v16 = a5 + 1;
    v17 = &v19;
    goto LABEL_25;
  }

  if (v13 == 3)
  {
    LODWORD(v20) = 3;
    v14 = a2 + 2;
    v15 = a3 + 2;
    v16 = a5 + 2;
    goto LABEL_23;
  }

  LODWORD(v20) = 4;
  ComputeOutDim(a2 + 3, a3 + 3, a5 + 3, &v20);
  return 1;
}

uint64_t *ComputeOutDim(uint64_t *result, uint64_t *a2, void *a3, _DWORD *a4)
{
  v4 = *result;
  v5 = *a2;
  if (*result > *a2 && v5 != 1)
  {
    ZinGetZinIrDimensionString(a4, v10);
    if (v11 >= 0)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10[0];
    }

    ZinAssertImpl("Index tensor dimension %s should be equal to 1", v8);
  }

  if (v4 != 1 && v4 < v5)
  {
    ZinGetZinIrDimensionString(a4, v10);
    if (v11 >= 0)
    {
      v9 = v10;
    }

    else
    {
      v9 = v10[0];
    }

    ZinAssertImpl("Data tensor dimension %s should be equal to 1", v9);
  }

  if (v4 <= v5)
  {
    v4 = *a2;
  }

  *a3 = v4;
  return result;
}

void sub_1A697236C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A697257C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x1AC55A070](v12, 0x10B3C408C0C1E9CLL, a3, a4, a5, a6, a7, a8);
  if (a12)
  {
    (*(*a12 + 16))(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinRtGraphValidationUtils::GetAllRtProcedures@<X0>(ZinIrHalH13g **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  if (!v2)
  {
    ZinAssertImpl("Error: nullptr rt graph");
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  ZinIrHalH13g::~ZinIrHalH13g(v2);
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    AddProceduresRecursively(a2, v8, v5);
    v5 += 2;
  }

  return std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v8);
}

void sub_1A6972760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a9);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *AddProceduresRecursively(void **a1, void *a2, ZinRtProcedure **a3)
{
  if (!*a3)
  {
    ZinAssertImpl("Error: nullptr procedure", a2);
  }

  ProcId = ZinRtProcedure::GetProcId(*a3);
  result = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(a2, &ProcId);
  if (!result)
  {
    std::__hash_table<ZinNamedType<unsigned long,TidTag>,std::hash<ZinNamedType<unsigned long,TidTag>>,std::equal_to<ZinNamedType<unsigned long,TidTag>>,std::allocator<ZinNamedType<unsigned long,TidTag>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,TidTag>,ZinNamedType<unsigned long,TidTag> const&>(a2, &ProcId, &ProcId);
    result = std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a1, a3);
    v7 = *a3;
    v8 = *(*a3 + 31);
    v9 = *(v7 + 32);
    while (v8 != v9)
    {
      result = AddProceduresRecursively(a1, a2, v8);
      v8 += 3;
    }
  }

  return result;
}

void ZinRtGraphValidationUtils::GetAllRtNodeGraph(ZinIrHalH13g **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  if (!v2)
  {
    ZinAssertImpl("Error: nullptr rt graph");
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  ZinIrHalH13g::~ZinIrHalH13g(v2);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    do
    {
      ZinRtGraphValidationUtils::GetAllRtNodeGraph(v5, &__p);
      ranges::_move::move_fn::operator()<std::__wrap_iter<ZinRtNodeGraph const* const*>,std::__wrap_iter<ZinRtNodeGraph const* const*>,std::back_insert_iterator<std::vector<ZinRtNodeGraph const*>>>(&ranges::move, __p, v8, a2);
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }

      v5 += 2;
    }

    while (v5 != v6);
  }
}

void sub_1A69728C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void ZinRtGraphValidationUtils::GetAllRtNodeGraph(ZinRtProcedure **a1@<X0>, uint64_t *a2@<X8>)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (!v4)
  {
    ZinAssertImpl("Error: nullptr procedure");
  }

  if (*ZinRtProcedure::GetNodeGraph(v4))
  {
    v21 = *ZinRtProcedure::GetNodeGraph(*a1);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(a2, &v21, v22, 1uLL);
    NodeGraph = ZinRtProcedure::GetNodeGraph(*a1);
    ZinRtGraphValidationUtils::GetAllBlockNodes(&v21, *NodeGraph);
    v6 = v21;
    for (i = v22[0]; v6 != i; v6 += 2)
    {
      BlockGraph = ZinRtBlockNode::GetBlockGraph(*v6);
      v10 = a2[1];
      v9 = a2[2];
      if (v10 >= v9)
      {
        v12 = (v10 - *a2) >> 3;
        if ((v12 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v13 = v9 - *a2;
        v14 = v13 >> 2;
        if (v13 >> 2 <= (v12 + 1))
        {
          v14 = v12 + 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<__CFNumber const*>>(a2, v15);
        }

        v16 = (8 * v12);
        *v16 = BlockGraph;
        v11 = 8 * v12 + 8;
        v17 = a2[1] - *a2;
        v18 = v16 - v17;
        memcpy(v16 - v17, *a2, v17);
        v19 = *a2;
        *a2 = v18;
        a2[1] = v11;
        a2[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v10 = BlockGraph;
        v11 = (v10 + 1);
      }

      a2[1] = v11;
    }

    v20 = &v21;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v20);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t *ZinRtGraphValidationUtils::GetAllBlockNodes@<X0>(void **__return_ptr a1@<X8>, ZinRtGraphValidationUtils *this@<X0>)
{
  v36 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v33 = this;
  LOBYTE(v34) = 0;
  v35 = 0;
  _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters18filter_block_nodesMUlRKS6_E_EEEE11cache_beginEv(&v32);
  v4 = v34;
  _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters18filter_block_nodesMUlRKS6_E_EEEE11cache_beginEv(&v32);
  v5 = v33 + 8;
  *&v30 = v4;
  *(&v30 + 1) = &v32;
  while (v30 != v5)
  {
    _ZNK6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INSt3__121__tree_const_iteratorINS2_10shared_ptrI13ZinRtBaseNodeEEPNS2_11__tree_nodeIS6_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS2_3setIS6_17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters18filter_block_nodesMUlRKS6_E_EEEE7adaptorEEEEENSC_INS_11filter_viewISL_SQ_EENSM_INSN_23filter_init_block_nodesMUlSP_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSW_ISX_SY_EENS_10indirectedIN19ZinRtNodeTransforms23transform_to_block_nodeMUlSP_E_EEEE7adaptorILb0EEEEEEdeEv(&v30, &v27);
    std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a1, &v27);
    BlockGraph = ZinRtBlockNode::GetBlockGraph(v27);
    ZinRtGraphValidationUtils::GetAllBlockNodes(&v28, BlockGraph);
    v7 = v28;
    v8 = v29;
    while (v7 != v8)
    {
      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a1, v7++);
    }

    v25 = &v28;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v25);
    if (*(&v27 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
    }

    _ZNK6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters18filter_block_nodesMUlRKS6_E_EEEE7adaptor4nextERNS2_21__tree_const_iteratorIS6_PNS2_11__tree_nodeIS6_PvEElEE(&v30 + 1, &v30);
  }

  v33 = this;
  LOBYTE(v34) = 0;
  v35 = 0;
  _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE11cache_beginEv(&v32);
  v9 = v34;
  result = _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE11cache_beginEv(&v32);
  v11 = v33 + 8;
  *&v27 = v9;
  *(&v27 + 1) = &v32;
  v12 = "Error: Invalid true node for condition node";
  while (v27 != v11)
  {
    _ZNK6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INSt3__121__tree_const_iteratorINS2_10shared_ptrI13ZinRtBaseNodeEEPNS2_11__tree_nodeIS6_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS2_3setIS6_17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE7adaptorEEEEENS_19iter_transform_viewINS_11filter_viewISL_SQ_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_condition_nodeMUlSP_E_EEEE7adaptorILb0EEEEEEdeEv(&v27, &v25);
    if (!*ZinRtConditionNode::GetTrueNode(v25))
    {
      goto LABEL_34;
    }

    if (!*ZinRtConditionNode::GetFalseNode(v25))
    {
      v12 = "Error: Invalid false node for condition node";
LABEL_34:
      ZinAssertImpl(v12);
    }

    TrueNode = ZinRtConditionNode::GetTrueNode(v25);
    if (ZinIrAsyncFunction::GetExitEventProperty(*TrueNode) == 1)
    {
      v14 = ZinRtConditionNode::GetTrueNode(v25);
      v15 = v14[1];
      *&v30 = *v14;
      *(&v30 + 1) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a1, &v30);
      v16 = ZinRtBlockNode::GetBlockGraph(v30);
      ZinRtGraphValidationUtils::GetAllBlockNodes(&v28, v16);
      v17 = v28;
      v18 = v29;
      while (v17 != v18)
      {
        std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a1, v17++);
      }

      v31 = &v28;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v31);
      if (*(&v30 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
      }
    }

    FalseNode = ZinRtConditionNode::GetFalseNode(v25);
    if (ZinIrAsyncFunction::GetExitEventProperty(*FalseNode) == 1)
    {
      v20 = ZinRtConditionNode::GetFalseNode(v25);
      v21 = v20[1];
      *&v30 = *v20;
      *(&v30 + 1) = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a1, &v30);
      v22 = ZinRtBlockNode::GetBlockGraph(v30);
      ZinRtGraphValidationUtils::GetAllBlockNodes(&v28, v22);
      v23 = v28;
      v24 = v29;
      while (v23 != v24)
      {
        std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a1, v23++);
      }

      v31 = &v28;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v31);
      if (*(&v30 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
      }
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    result = _ZNK6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE7adaptor4nextERNS2_21__tree_const_iteratorIS6_PNS2_11__tree_nodeIS6_PvEElEE(&v27 + 1, &v27);
  }

  return result;
}

void sub_1A6972DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1A6972E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a9);
  JUMPOUT(0x1A6972E88);
}

void ZinRtGraphValidationUtils::GetAllRtOperationNodes(ZinRtGraphValidationUtils *this@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v23 = this;
  v24 = 0;
  v25 = 0;
  _ZNK6ranges5_copy7copy_fnclINS_14transform_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS6_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorISA_ENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKSA_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENS6_20back_insert_iteratorINS6_6vectorINS8_I18ZinRtOperationNodeEENSD_IST_EEEEEEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS12_vELDnEEEENS_8danglingEEET0_EEOS12_S1C_(&ranges::copy, &v21, a2);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v23 = this;
  v24 = 0;
  v25 = 0;
  _ZNK6ranges5_copy7copy_fnclINS_14transform_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS6_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorISA_ENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters18filter_block_nodesMUlRKSA_E_EEEN19ZinRtNodeTransforms23transform_to_block_nodeMUlSK_E_EEENS6_20back_insert_iteratorINS6_6vectorINS8_I14ZinRtBlockNodeEENSD_IST_EEEEEEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS12_vELDnEEEENS_8danglingEEET0_EEOS12_S1C_(&ranges::copy, &v21, &v16);
  v4 = v16;
  for (i = v17; v4 != i; v4 += 2)
  {
    BlockGraph = ZinRtBlockNode::GetBlockGraph(*v4);
    ZinRtGraphValidationUtils::GetAllRtOperationNodes(BlockGraph, &v21);
    v7 = v21;
    v8 = v22;
    v20 = a2;
    while (v7 != v8)
    {
      std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v20, v7++);
    }

    v13 = &v21;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v13);
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v23 = this;
  v24 = 0;
  v25 = 0;
  _ZNK6ranges5_copy7copy_fnclINS_14transform_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS6_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorISA_ENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_condition_nodesMUlRKSA_E_EEEN19ZinRtNodeTransforms27transform_to_condition_nodeMUlSK_E_EEENS6_20back_insert_iteratorINS6_6vectorINS8_I18ZinRtConditionNodeEENSD_IST_EEEEEEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS12_vELDnEEEENS_8danglingEEET0_EEOS12_S1C_(&ranges::copy, &v21, &v13);
  v9 = v13;
  v10 = v14;
  if (v13 != v14)
  {
    do
    {
      GetAllRtOperationNodes(v9, 0, &v21);
      v11 = v21;
      v12 = v22;
      v19 = a2;
      while (v11 != v12)
      {
        std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v19, v11++);
      }

      v20 = &v21;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v20);
      v9 += 2;
    }

    while (v9 != v10);
  }

  v21 = &v13;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v21);
  v21 = &v16;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v21);
}

void sub_1A6973054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a9;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = &a12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

double _ZNK6ranges5_copy7copy_fnclINS_14transform_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS6_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorISA_ENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKSA_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENS6_20back_insert_iteratorINS6_6vectorINS8_I18ZinRtOperationNodeEENSD_IST_EEEEEEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS12_vELDnEEEENS_8danglingEEET0_EEOS12_S1C_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKS6_E_EEEE11cache_beginEv(a2 + 8);
  v5 = *(a2 + 24);
  _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKS6_E_EEEE11cache_beginEv(a2 + 8);
  return _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INSt3__121__tree_const_iteratorINS5_10shared_ptrI13ZinRtBaseNodeEEPNS5_11__tree_nodeIS9_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS5_3setIS9_17ZinIrIdComparatorIS9_ENS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKS9_E_EEEE7adaptorEEEEENS_19iter_transform_viewINS_11filter_viewISO_ST_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSS_E_EEEE7adaptorILb0EEEEEEES1A_NS5_20back_insert_iteratorINS5_6vectorINS7_I18ZinRtOperationNodeEENSK_IS1E_EEEEEEEENS_6detail13in_out_resultIT_T1_EES1K_T0_S1L_(v5, a2 + 8, *(a2 + 16) + 8, a3, &v7);
}

double _ZNK6ranges5_copy7copy_fnclINS_14transform_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS6_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorISA_ENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters18filter_block_nodesMUlRKSA_E_EEEN19ZinRtNodeTransforms23transform_to_block_nodeMUlSK_E_EEENS6_20back_insert_iteratorINS6_6vectorINS8_I14ZinRtBlockNodeEENSD_IST_EEEEEEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS12_vELDnEEEENS_8danglingEEET0_EEOS12_S1C_(uint64_t a1, uint64_t a2, const void **a3)
{
  _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters18filter_block_nodesMUlRKS6_E_EEEE11cache_beginEv(a2 + 8);
  v5 = *(a2 + 24);
  _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters18filter_block_nodesMUlRKS6_E_EEEE11cache_beginEv(a2 + 8);
  return _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INSt3__121__tree_const_iteratorINS5_10shared_ptrI13ZinRtBaseNodeEEPNS5_11__tree_nodeIS9_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS5_3setIS9_17ZinIrIdComparatorIS9_ENS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters18filter_block_nodesMUlRKS9_E_EEEE7adaptorEEEEENS_19iter_transform_viewINS_11filter_viewISO_ST_EENS_10indirectedIN19ZinRtNodeTransforms23transform_to_block_nodeMUlSS_E_EEEE7adaptorILb0EEEEEEES1A_NS5_20back_insert_iteratorINS5_6vectorINS7_I14ZinRtBlockNodeEENSK_IS1E_EEEEEEEENS_6detail13in_out_resultIT_T1_EES1K_T0_S1L_(v5, a2 + 8, *(a2 + 16) + 8, a3, &v7);
}

double _ZNK6ranges5_copy7copy_fnclINS_14transform_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS6_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorISA_ENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_condition_nodesMUlRKSA_E_EEEN19ZinRtNodeTransforms27transform_to_condition_nodeMUlSK_E_EEENS6_20back_insert_iteratorINS6_6vectorINS8_I18ZinRtConditionNodeEENSD_IST_EEEEEEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS12_vELDnEEEENS_8danglingEEET0_EEOS12_S1C_(uint64_t a1, uint64_t a2, const void **a3)
{
  _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE11cache_beginEv(a2 + 8);
  v5 = *(a2 + 24);
  _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE11cache_beginEv(a2 + 8);
  return _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INSt3__121__tree_const_iteratorINS5_10shared_ptrI13ZinRtBaseNodeEEPNS5_11__tree_nodeIS9_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS5_3setIS9_17ZinIrIdComparatorIS9_ENS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS9_E_EEEE7adaptorEEEEENS_19iter_transform_viewINS_11filter_viewISO_ST_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_condition_nodeMUlSS_E_EEEE7adaptorILb0EEEEEEES1A_NS5_20back_insert_iteratorINS5_6vectorINS7_I18ZinRtConditionNodeEENSK_IS1E_EEEEEEEENS_6detail13in_out_resultIT_T1_EES1K_T0_S1L_(v5, a2 + 8, *(a2 + 16) + 8, a3, &v7);
}

void GetAllRtOperationNodes(ZinRtConditionNode **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = a2;
  v4 = *a1;
  if (!v4)
  {
    ZinAssertImpl("Error: nullptr node");
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7[0] = a3;
  v7[1] = &v8;
  TrueNode = ZinRtConditionNode::GetTrueNode(v4);
  GetAllRtOperationNodes(std::shared_ptr<ZinRtConditionNode> const&,std::optional<RtOperationMode>)::$_0::operator()(v7, TrueNode);
  FalseNode = ZinRtConditionNode::GetFalseNode(*a1);
  GetAllRtOperationNodes(std::shared_ptr<ZinRtConditionNode> const&,std::optional<RtOperationMode>)::$_0::operator()(v7, FalseNode);
}

void sub_1A69732A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(ZinIrHalH13g **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*a1)
  {
    ZinAssertImpl("Error: nullptr rt graph", a2);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  ZinRtGraphValidationUtils::GetAllRtProcedures(a1, &v10);
  v5 = v10;
  if (v11 != v10)
  {
    v6 = 0;
    do
    {
      ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(&v5[2 * v6], &v9, a2);
      v8 = v9.n128_u64[1];
      v7 = v9.n128_u64[0];
      v12 = a3;
      while (v7 != v8)
      {
        std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v12, v7++);
      }

      v13 = &v9;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v13);
      ++v6;
      v5 = v10;
    }

    while (v6 < (v11 - v10) >> 4);
  }

  v9.n128_u64[0] = &v10;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_1A6973398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(ZinRtProcedure **a1@<X0>, __n128 *a2@<X8>, uint64_t a3@<X1>)
{
  v3 = *a1;
  if (!v3)
  {
    ZinAssertImpl("Error: nullptr procedure");
  }

  v6 = *ZinRtProcedure::GetNodeGraph(v3);
  if (v6)
  {

    ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(v6, a3, a2);
  }

  else
  {
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
  }
}

void ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  if (a2 == 1)
  {
    v26 = a1;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    _ZNK6ranges5_copy7copy_fnclINS_14transform_viewINS_11filter_viewINS4_INS_8ref_viewIKNSt3__13setINS6_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorISA_ENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKSA_E_EEENSI_31filter_ane_mode_operation_nodesMUlSK_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENS6_20back_insert_iteratorINS6_6vectorINS8_I18ZinRtOperationNodeEENSD_ISV_EEEEEEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS14_vELDnEEEENS_8danglingEEET0_EEOS14_S1E_(&ranges::copy, &v24, a3);
  }

  else if (!a2)
  {
    v26 = a1;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    _ZNK6ranges5_copy7copy_fnclINS_14transform_viewINS_11filter_viewINS4_INS_8ref_viewIKNSt3__13setINS6_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorISA_ENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKSA_E_EEENSI_35filter_runtime_mode_operation_nodesMUlSK_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENS6_20back_insert_iteratorINS6_6vectorINS8_I18ZinRtOperationNodeEENSD_ISV_EEEEEEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS14_vELDnEEEENS_8danglingEEET0_EEOS14_S1E_(&ranges::copy, &v24, a3);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v25 = a1;
  LOBYTE(v26) = 0;
  v27 = 0;
  _ZNK6ranges5_copy7copy_fnclINS_14transform_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS6_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorISA_ENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters18filter_block_nodesMUlRKSA_E_EEEN19ZinRtNodeTransforms23transform_to_block_nodeMUlSK_E_EEENS6_20back_insert_iteratorINS6_6vectorINS8_I14ZinRtBlockNodeEENSD_IST_EEEEEEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS12_vELDnEEEENS_8danglingEEET0_EEOS12_S1C_(&ranges::copy, &v24, &v19);
  v6 = v19;
  for (i = v20; v6 != i; v6 += 2)
  {
    BlockGraph = ZinRtBlockNode::GetBlockGraph(*v6);
    ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(BlockGraph, a2, &v24);
    v10 = v24.n128_u64[1];
    v9 = v24.n128_u64[0];
    v23 = a3;
    while (v9 != v10)
    {
      std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v23, v9++);
    }

    v16 = &v24;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v16);
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v25 = a1;
  LOBYTE(v26) = 0;
  v27 = 0;
  _ZNK6ranges5_copy7copy_fnclINS_14transform_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS6_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorISA_ENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_condition_nodesMUlRKSA_E_EEEN19ZinRtNodeTransforms27transform_to_condition_nodeMUlSK_E_EEENS6_20back_insert_iteratorINS6_6vectorINS8_I18ZinRtConditionNodeEENSD_IST_EEEEEEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS12_vELDnEEEENS_8danglingEEET0_EEOS12_S1C_(&ranges::copy, &v24, &v16);
  v11 = v16;
  v12 = v17;
  if (v16 != v17)
  {
    v13 = a2;
    do
    {
      GetAllRtOperationNodes(v11, v13 | 0x100000000, &v24);
      v15 = v24.n128_u64[1];
      v14 = v24.n128_u64[0];
      v22 = a3;
      while (v14 != v15)
      {
        std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v22, v14++);
      }

      v23 = &v24;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v23);
      v11 += 2;
    }

    while (v11 != v12);
  }

  v24.n128_u64[0] = &v16;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24.n128_u64[0] = &v19;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v24);
}

void sub_1A697365C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double _ZNK6ranges5_copy7copy_fnclINS_14transform_viewINS_11filter_viewINS4_INS_8ref_viewIKNSt3__13setINS6_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorISA_ENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKSA_E_EEENSI_35filter_runtime_mode_operation_nodesMUlSK_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENS6_20back_insert_iteratorINS6_6vectorINS8_I18ZinRtOperationNodeEENSD_ISV_EEEEEEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS14_vELDnEEEENS_8danglingEEET0_EEOS14_S1E_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 8;
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS3_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS7_ENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKS7_E_EEENS_14logical_negateINSF_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(a2 + 8);
  v8 = *(a2 + 48);
  v9 = v5;
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS3_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS7_ENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKS7_E_EEENS_14logical_negateINSF_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(v5);
  _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKS6_E_EEEE11cache_beginEv(a2 + 16);
  v7[0] = *(a2 + 24) + 8;
  v7[1] = a2 + 16;
  v7[2] = v5;
  *&result = _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INSt3__121__tree_const_iteratorINS5_10shared_ptrI13ZinRtBaseNodeEEPNS5_11__tree_nodeIS9_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS5_3setIS9_17ZinIrIdComparatorIS9_ENS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKS9_E_EEEE7adaptorEEEEENSF_INS_11filter_viewISO_ST_EENSP_INSQ_35filter_runtime_mode_operation_nodesMUlSS_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSZ_IS10_S11_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSS_E_EEEE7adaptorILb0EEEEEEES1H_NS5_20back_insert_iteratorINS5_6vectorINS7_I18ZinRtOperationNodeEENSK_IS1L_EEEEEEEENS_6detail13in_out_resultIT_T1_EES1R_T0_S1S_(&v8, v7, a3, v10).n128_u64[0];
  return result;
}

double _ZNK6ranges5_copy7copy_fnclINS_14transform_viewINS_11filter_viewINS4_INS_8ref_viewIKNSt3__13setINS6_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorISA_ENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKSA_E_EEENSI_31filter_ane_mode_operation_nodesMUlSK_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENS6_20back_insert_iteratorINS6_6vectorINS8_I18ZinRtOperationNodeEENSD_ISV_EEEEEEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS14_vELDnEEEENS_8danglingEEET0_EEOS14_S1E_(uint64_t a1, __n128 *a2, unint64_t a3)
{
  v5 = &a2->n128_i64[1];
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS3_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS7_ENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKS7_E_EEENS_14logical_negateINSF_31filter_ane_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(&a2->n128_i64[1]);
  v8 = a2[3];
  v9 = v5;
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS3_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS7_ENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKS7_E_EEENS_14logical_negateINSF_31filter_ane_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(v5);
  _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKS6_E_EEEE11cache_beginEv(&a2[1]);
  v7[0] = a2[1].n128_u64[1] + 8;
  v7[1] = a2 + 1;
  v7[2] = v5;
  *&result = _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INSt3__121__tree_const_iteratorINS5_10shared_ptrI13ZinRtBaseNodeEEPNS5_11__tree_nodeIS9_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS5_3setIS9_17ZinIrIdComparatorIS9_ENS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKS9_E_EEEE7adaptorEEEEENSF_INS_11filter_viewISO_ST_EENSP_INSQ_31filter_ane_mode_operation_nodesMUlSS_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSZ_IS10_S11_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSS_E_EEEE7adaptorILb0EEEEEEES1H_NS5_20back_insert_iteratorINS5_6vectorINS7_I18ZinRtOperationNodeEENSK_IS1L_EEEEEEEENS_6detail13in_out_resultIT_T1_EES1R_T0_S1S_(&v8, v7, a3, v10).n128_u64[0];
  return result;
}

void ZinRtGraphValidationUtils::GetRtBindOperationNodes(ZinRtProcedure **a1@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    ZinAssertImpl("Error: nullptr rt procedure");
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(a1, v3, 0);
  v4[3] = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  _ZNK6ranges5_move7move_fnclINS_11filter_viewINS3_INS3_INS_8ref_viewIKNSt3__16vectorINS5_10shared_ptrI18ZinRtOperationNodeEENS5_9allocatorIS9_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEENSF_35filter_runtime_mode_operation_nodesMUlSJ_E_EEENSF_35filter_runtime_bind_operation_nodesMUlSJ_E_EEENS5_20back_insert_iteratorISC_EEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRSX_vELDnEEEENS_8danglingEEET0_EEOSX_S17_(&ranges::move, v4, a2);
  v4[0] = v3;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v4);
}

void sub_1A69738D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

double _ZNK6ranges5_move7move_fnclINS_11filter_viewINS3_INS3_INS_8ref_viewIKNSt3__16vectorINS5_10shared_ptrI18ZinRtOperationNodeEENS5_9allocatorIS9_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEENSF_35filter_runtime_mode_operation_nodesMUlSJ_E_EEENSF_35filter_runtime_bind_operation_nodesMUlSJ_E_EEENS5_20back_insert_iteratorISC_EEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRSX_vELDnEEEENS_8danglingEEET0_EEOSX_S17_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateINSD_35filter_runtime_bind_operation_nodesMUlSH_E_EEEE11cache_beginEv(a2);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = a2;
  _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEENS_14logical_negateINSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEEESM_LNS_11cardinalityEn1EE11end_cursor_ISQ_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS11_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS13_EEEEE4typeENS11_IDTcldtclsr3stdE7declvalINS11_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS13_EEEEE4typeEEE3endclsr3stdE7declvalIS13_EEEEE4typeEEEEL_ZNS10_IS16_S1C_EEEEEENS_14adaptor_cursorIS19_S16_EENS_16adaptor_sentinelIS1F_S1C_EEEE4typeES13_(a2, v6);
  *&result = _ZNK6ranges5_move7move_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INSt3__111__wrap_iterIPKNS5_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS5_6vectorIS9_NS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSD_INS_11filter_viewISK_SR_EENSL_INSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENSD_INSX_ISY_SZ_EENSL_INSM_35filter_runtime_bind_operation_nodesMUlSQ_E_EEEE7adaptorEEEEES1B_NS5_20back_insert_iteratorISI_EEEENS_6detail13in_out_resultIT_T1_EES1G_T0_S1H_(&v7, v6, a3, v10).n128_u64[0];
  return result;
}

void ZinRtGraphValidationUtils::GetRtLoadOperationNodes(ZinRtProcedure **a1@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    ZinAssertImpl("Error: nullptr rt procedure");
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(a1, &v3, 0);
  v4[4] = &v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  _ZNK6ranges5_move7move_fnclINS_11filter_viewINS_14transform_viewINS3_INS3_INS_8ref_viewIKNSt3__16vectorINS6_10shared_ptrI18ZinRtOperationNodeEENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS8_I13ZinRtBaseNodeEEE_EEENSG_35filter_runtime_mode_operation_nodesMUlSK_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENSG_35filter_runtime_load_operation_nodesMUlRKSA_E_EEENS6_20back_insert_iteratorISD_EEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS13_vELDnEEEENS_8danglingEEET0_EEOS13_S1D_(&ranges::move, v4, a2);
  v4[0] = &v3;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v4);
}

void sub_1A6973A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

double _ZNK6ranges5_move7move_fnclINS_11filter_viewINS_14transform_viewINS3_INS3_INS_8ref_viewIKNSt3__16vectorINS6_10shared_ptrI18ZinRtOperationNodeEENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS8_I13ZinRtBaseNodeEEE_EEENSG_35filter_runtime_mode_operation_nodesMUlSK_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENSG_35filter_runtime_load_operation_nodesMUlRKSA_E_EEENS6_20back_insert_iteratorISD_EEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS13_vELDnEEEENS_8danglingEEET0_EEOS13_S1D_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_35filter_runtime_load_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(a2);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = a2;
  _ZN6ranges12view_adaptorINS_14remove_if_viewINS_14transform_viewINS_11filter_viewINS3_INS_8ref_viewIKNSt3__16vectorINS5_10shared_ptrI18ZinRtOperationNodeEENS5_9allocatorIS9_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEENSF_35filter_runtime_mode_operation_nodesMUlSJ_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSJ_E_EEENS_14logical_negateINSF_35filter_runtime_load_operation_nodesMUlRKS9_E_EEEEESQ_LNS_11cardinalityEn1EE11end_cursor_ISW_EEN4meta6detail4_if_IJNS5_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS5_5decayIDTcldtclsr3stdE7declvalINS17_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS19_EEEEE4typeENS17_IDTcldtclsr3stdE7declvalINS17_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS19_EEEEE4typeEEE3endclsr3stdE7declvalIS19_EEEEE4typeEEEEL_ZNS16_IS1C_S1I_EEEEEENS_14adaptor_cursorIS1F_S1C_EENS_16adaptor_sentinelIS1L_S1I_EEEE4typeES19_(a2, v6);
  *&result = _ZNK6ranges5_move7move_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INS3_INS4_INSt3__111__wrap_iterIPKNS5_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS5_6vectorIS9_NS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSD_INS_11filter_viewISK_SR_EENSL_INSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSX_ISY_SZ_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSQ_E_EEEE7adaptorILb0EEEEEEENSD_INS_14transform_viewIS16_S19_EENSL_INSM_35filter_runtime_load_operation_nodesMUlRSA_E_EEEE7adaptorEEEEES1O_NS5_20back_insert_iteratorISI_EEEENS_6detail13in_out_resultIT_T1_EES1T_T0_S1U_(&v7, v6, a3, v10).n128_u64[0];
  return result;
}

void ZinRtGraphValidationUtils::GetRtBindBufferTextOperationNodes(ZinIrHalH13g **a1@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    ZinAssertImpl("Error: nullptr rt graph");
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(a1, 0, v3);
  v5 = v3;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  _ZNK6ranges5_move7move_fnclINS_11filter_viewINS_14transform_viewINS3_INS3_INS3_INS3_INS3_INS_8ref_viewIKNSt3__16vectorINS6_10shared_ptrI18ZinRtOperationNodeEENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS8_I13ZinRtBaseNodeEEE_EEENSG_35filter_runtime_mode_operation_nodesMUlSK_E_EEESL_EESN_EENSG_35filter_runtime_bind_operation_nodesMUlSK_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENSG_40filter_runtime_bind_text_operation_nodesMUlRKSA_E_EEENS6_20back_insert_iteratorISD_EEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS17_vELDnEEEENS_8danglingEEET0_EEOS17_S1H_(&ranges::move, v4, a2);
  *&v4[0] = v3;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v4);
}

void sub_1A6973BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

double _ZNK6ranges5_move7move_fnclINS_11filter_viewINS_14transform_viewINS3_INS3_INS3_INS3_INS3_INS_8ref_viewIKNSt3__16vectorINS6_10shared_ptrI18ZinRtOperationNodeEENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS8_I13ZinRtBaseNodeEEE_EEENSG_35filter_runtime_mode_operation_nodesMUlSK_E_EEESL_EESN_EENSG_35filter_runtime_bind_operation_nodesMUlSK_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENSG_40filter_runtime_bind_text_operation_nodesMUlRKSA_E_EEENS6_20back_insert_iteratorISD_EEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS17_vELDnEEEENS_8danglingEEET0_EEOS17_S1H_(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_40filter_runtime_bind_text_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(a2);
  v5 = a2[15];
  v9[0] = a2[14];
  v9[1] = v5;
  v9[2] = a2[16];
  v10 = a2;
  _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_40filter_runtime_bind_text_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(a2);
  _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENS_14logical_negateINSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEEESO_LNS_11cardinalityEn1EE11end_cursor_ISS_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS15_EEEEE4typeENS13_IDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS15_EEEEE4typeEEE3endclsr3stdE7declvalIS15_EEEEE4typeEEEEL_ZNS12_IS18_S1E_EEEEEENS_14adaptor_cursorIS1B_S18_EENS_16adaptor_sentinelIS1H_S1E_EEEE4typeES15_((a2 + 1), v11);
  v8 = a2;
  v7[0] = v11[0];
  v7[1] = v11[1];
  v7[2] = v11[2];
  *&result = _ZNK6ranges5_move7move_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INSt3__111__wrap_iterIPKNS5_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS5_6vectorIS9_NS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSD_INS_11filter_viewISK_SR_EENSL_INSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENSD_INSX_ISY_SZ_EESS_E7adaptorEEEEENSD_INSX_IS15_SR_EES10_E7adaptorEEEEENSD_INSX_IS1A_SZ_EENSL_INSM_35filter_runtime_bind_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSX_IS1F_S1G_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSQ_E_EEEE7adaptorILb0EEEEEEENSD_INS_14transform_viewIS1N_S1Q_EENSL_INSM_40filter_runtime_bind_text_operation_nodesMUlRSA_E_EEEE7adaptorEEEEES25_NS5_20back_insert_iteratorISI_EEEENS_6detail13in_out_resultIT_T1_EES2A_T0_S2B_(v9, v7, a3, v11).n128_u64[0];
  return result;
}

void ZinRtGraphValidationUtils::GetRtMapBufferTextOperationNodes(ZinIrHalH13g **a1@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    ZinAssertImpl("Error: nullptr rt graph");
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(a1, 0, v3);
  v5 = v3;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  _ZNK6ranges5_move7move_fnclINS_11filter_viewINS_14transform_viewINS3_INS3_INS3_INS3_INS3_INS_8ref_viewIKNSt3__16vectorINS6_10shared_ptrI18ZinRtOperationNodeEENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS8_I13ZinRtBaseNodeEEE_EEENSG_35filter_runtime_mode_operation_nodesMUlSK_E_EEESL_EESN_EENSG_34filter_runtime_map_operation_nodesMUlSK_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENSG_39filter_runtime_map_text_operation_nodesMUlRKSA_E_EEENS6_20back_insert_iteratorISD_EEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS17_vELDnEEEENS_8danglingEEET0_EEOS17_S1H_(&ranges::move, v4, a2);
  *&v4[0] = v3;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v4);
}

void sub_1A6973D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

double _ZNK6ranges5_move7move_fnclINS_11filter_viewINS_14transform_viewINS3_INS3_INS3_INS3_INS3_INS_8ref_viewIKNSt3__16vectorINS6_10shared_ptrI18ZinRtOperationNodeEENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS8_I13ZinRtBaseNodeEEE_EEENSG_35filter_runtime_mode_operation_nodesMUlSK_E_EEESL_EESN_EENSG_34filter_runtime_map_operation_nodesMUlSK_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENSG_39filter_runtime_map_text_operation_nodesMUlRKSA_E_EEENS6_20back_insert_iteratorISD_EEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS17_vELDnEEEENS_8danglingEEET0_EEOS17_S1H_(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_34filter_runtime_map_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_39filter_runtime_map_text_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(a2);
  v5 = a2[15];
  v9[0] = a2[14];
  v9[1] = v5;
  v9[2] = a2[16];
  v10 = a2;
  _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_34filter_runtime_map_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_39filter_runtime_map_text_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(a2);
  _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENS_14logical_negateINSE_34filter_runtime_map_operation_nodesMUlSI_E_EEEEESO_LNS_11cardinalityEn1EE11end_cursor_ISS_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS15_EEEEE4typeENS13_IDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS15_EEEEE4typeEEE3endclsr3stdE7declvalIS15_EEEEE4typeEEEEL_ZNS12_IS18_S1E_EEEEEENS_14adaptor_cursorIS1B_S18_EENS_16adaptor_sentinelIS1H_S1E_EEEE4typeES15_((a2 + 1), v11);
  v8 = a2;
  v7[0] = v11[0];
  v7[1] = v11[1];
  v7[2] = v11[2];
  *&result = _ZNK6ranges5_move7move_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INSt3__111__wrap_iterIPKNS5_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS5_6vectorIS9_NS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSD_INS_11filter_viewISK_SR_EENSL_INSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENSD_INSX_ISY_SZ_EESS_E7adaptorEEEEENSD_INSX_IS15_SR_EES10_E7adaptorEEEEENSD_INSX_IS1A_SZ_EENSL_INSM_34filter_runtime_map_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSX_IS1F_S1G_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSQ_E_EEEE7adaptorILb0EEEEEEENSD_INS_14transform_viewIS1N_S1Q_EENSL_INSM_39filter_runtime_map_text_operation_nodesMUlRSA_E_EEEE7adaptorEEEEES25_NS5_20back_insert_iteratorISI_EEEENS_6detail13in_out_resultIT_T1_EES2A_T0_S2B_(v9, v7, a3, v11).n128_u64[0];
  return result;
}

void ZinRtGraphValidationUtils::GetRtPatchMutableWeightOperationNodes(ZinIrHalH13g **a1@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    ZinAssertImpl("Error: nullptr rt graph");
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(a1, 0, v3);
  v4[3] = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  _ZNK6ranges5_copy7copy_fnclINS_11filter_viewINS3_INS3_INS_8ref_viewIKNSt3__16vectorINS5_10shared_ptrI18ZinRtOperationNodeEENS5_9allocatorIS9_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEENSF_35filter_runtime_mode_operation_nodesMUlSJ_E_EEENSF_51filter_runtime_patch_mutable_weight_operation_nodesMUlSJ_E_EEENS5_20back_insert_iteratorISC_EEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRSX_vELDnEEEENS_8danglingEEET0_EEOSX_S17_(&ranges::copy, v4, a2);
  v4[0] = v3;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v4);
}

void sub_1A6973EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

double _ZNK6ranges5_copy7copy_fnclINS_11filter_viewINS3_INS3_INS_8ref_viewIKNSt3__16vectorINS5_10shared_ptrI18ZinRtOperationNodeEENS5_9allocatorIS9_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEENSF_35filter_runtime_mode_operation_nodesMUlSJ_E_EEENSF_51filter_runtime_patch_mutable_weight_operation_nodesMUlSJ_E_EEENS5_20back_insert_iteratorISC_EEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRSX_vELDnEEEENS_8danglingEEET0_EEOSX_S17_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateINSD_51filter_runtime_patch_mutable_weight_operation_nodesMUlSH_E_EEEE11cache_beginEv(a2);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = a2;
  _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEENS_14logical_negateINSE_51filter_runtime_patch_mutable_weight_operation_nodesMUlSI_E_EEEEESM_LNS_11cardinalityEn1EE11end_cursor_ISQ_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS11_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS13_EEEEE4typeENS11_IDTcldtclsr3stdE7declvalINS11_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS13_EEEEE4typeEEE3endclsr3stdE7declvalIS13_EEEEE4typeEEEEL_ZNS10_IS16_S1C_EEEEEENS_14adaptor_cursorIS19_S16_EENS_16adaptor_sentinelIS1F_S1C_EEEE4typeES13_(a2, v6);
  *&result = _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INSt3__111__wrap_iterIPKNS5_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS5_6vectorIS9_NS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSD_INS_11filter_viewISK_SR_EENSL_INSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENSD_INSX_ISY_SZ_EENSL_INSM_51filter_runtime_patch_mutable_weight_operation_nodesMUlSQ_E_EEEE7adaptorEEEEES1B_NS5_20back_insert_iteratorISI_EEEENS_6detail13in_out_resultIT_T1_EES1G_T0_S1H_(&v7, v6, a3, v10).n128_u64[0];
  return result;
}

void ZinRtGraphValidationUtils::GetRtBindIOOperationNodes(ZinIrHalH13g **a1@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    ZinAssertImpl("Error: nullptr rt graph");
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(a1, 0, v3);
  v5 = v3;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  _ZNK6ranges5_copy7copy_fnclINS_11filter_viewINS_14transform_viewINS3_INS3_INS3_INS3_INS3_INS_8ref_viewIKNSt3__16vectorINS6_10shared_ptrI18ZinRtOperationNodeEENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS8_I13ZinRtBaseNodeEEE_EEENSG_35filter_runtime_mode_operation_nodesMUlSK_E_EEESL_EESN_EENSG_35filter_runtime_bind_operation_nodesMUlSK_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENSG_38filter_runtime_bind_io_operation_nodesMUlRKSA_E_EEENS6_20back_insert_iteratorISD_EEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS17_vELDnEEEENS_8danglingEEET0_EEOS17_S1H_(&ranges::copy, v4, a2);
  *&v4[0] = v3;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v4);
}

void sub_1A6974078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

double _ZNK6ranges5_copy7copy_fnclINS_11filter_viewINS_14transform_viewINS3_INS3_INS3_INS3_INS3_INS_8ref_viewIKNSt3__16vectorINS6_10shared_ptrI18ZinRtOperationNodeEENS6_9allocatorISA_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS8_I13ZinRtBaseNodeEEE_EEENSG_35filter_runtime_mode_operation_nodesMUlSK_E_EEESL_EESN_EENSG_35filter_runtime_bind_operation_nodesMUlSK_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSK_E_EEENSG_38filter_runtime_bind_io_operation_nodesMUlRKSA_E_EEENS6_20back_insert_iteratorISD_EEEENS_6detail13in_out_resultIN4meta6detail5_condIXsr6detailE15_borrowed_rangeIT_EEE6invokeIDTclL_ZNS_1_5beginEEclscPDoFRS17_vELDnEEEENS_8danglingEEET0_EEOS17_S1H_(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_38filter_runtime_bind_io_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(a2);
  v5 = a2[15];
  v9[0] = a2[14];
  v9[1] = v5;
  v9[2] = a2[16];
  v10 = a2;
  _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_38filter_runtime_bind_io_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(a2);
  _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENS_14logical_negateINSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEEESO_LNS_11cardinalityEn1EE11end_cursor_ISS_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS15_EEEEE4typeENS13_IDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS15_EEEEE4typeEEE3endclsr3stdE7declvalIS15_EEEEE4typeEEEEL_ZNS12_IS18_S1E_EEEEEENS_14adaptor_cursorIS1B_S18_EENS_16adaptor_sentinelIS1H_S1E_EEEE4typeES15_((a2 + 1), v11);
  v8 = a2;
  v7[0] = v11[0];
  v7[1] = v11[1];
  v7[2] = v11[2];
  *&result = _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INSt3__111__wrap_iterIPKNS5_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS5_6vectorIS9_NS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSD_INS_11filter_viewISK_SR_EENSL_INSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENSD_INSX_ISY_SZ_EESS_E7adaptorEEEEENSD_INSX_IS15_SR_EES10_E7adaptorEEEEENSD_INSX_IS1A_SZ_EENSL_INSM_35filter_runtime_bind_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSX_IS1F_S1G_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSQ_E_EEEE7adaptorILb0EEEEEEENSD_INS_14transform_viewIS1N_S1Q_EENSL_INSM_38filter_runtime_bind_io_operation_nodesMUlRSA_E_EEEE7adaptorEEEEES25_NS5_20back_insert_iteratorISI_EEEENS_6detail13in_out_resultIT_T1_EES2A_T0_S2B_(v9, v7, a3, v11).n128_u64[0];
  return result;
}

void ZinRtGraphValidationUtils::GetRtPlanarMapIOOperationNodes(ZinIrHalH13g **a1@<X0>, void *a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    ZinAssertImpl("Error: nullptr rt graph");
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(a1, 0, v9);
  ZinRtGraphValidationUtils::GetAllRtNodeGraph(a1, __p);
  v17[7] = v9;
  v17[8] = __p;
  v18 = 1;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  LOBYTE(v31) = 0;
  v35 = 0;
  _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS6_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSL_35filter_runtime_mode_operation_nodesMUlSP_E_EEESQ_EESS_EENSL_34filter_runtime_map_operation_nodesMUlSP_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSP_E_EEENS_14logical_negateINSL_44filter_runtime_planar_map_io_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(&v16);
  v10[0] = v31;
  v10[1] = v32;
  v10[2] = v33;
  v11 = v34;
  v12 = &v16;
  _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS6_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSL_35filter_runtime_mode_operation_nodesMUlSP_E_EEESQ_EESS_EENSL_34filter_runtime_map_operation_nodesMUlSP_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSP_E_EEENS_14logical_negateINSL_44filter_runtime_planar_map_io_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(&v16);
  _ZNK6ranges5_end_2fnclIRNS_14transform_viewINS_11filter_viewINS4_INS4_INS4_INS4_INS4_INS_8ref_viewIKNSt3__16vectorINS6_10shared_ptrI18ZinRtOperationNodeEENS6_9allocatorISA_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS8_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS8_I13ZinRtBaseNodeEEE_EEENSN_35filter_runtime_mode_operation_nodesMUlSR_E_EEESS_EESU_EENSN_34filter_runtime_map_operation_nodesMUlSR_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSR_E_EEEEEN4meta6detail5_condIXL_ZNS0_14has_member_endIT_EEEEE6invokeINS1_15_member_result_ENS1_19_non_member_result_EE6invokeIS18_EEOS18_(v17, &v13);
  v4 = v13;
  v15 = a2;
  for (i = *&v10[0]; *&v10[0] != v4; i = *&v10[0])
  {
    _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSG_DpOSH_(i, &v13);
    std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v15, &v13);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v7 = v11;
    v6 = v12;
    _ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS4_I10ZinRtGraphEEE3__0EEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_IN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INSU_ISV_S11_EENSI_INSW_35filter_runtime_mode_operation_nodesMUlS10_E_EEEE7adaptorEEEEENSA_INSU_IS17_S18_EES12_E7adaptorEEEEENSA_INSU_IS1E_S11_EES19_E7adaptorEEEEppEv(v10);
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EESR_EENS_14logical_negateINSK_34filter_runtime_map_operation_nodesMUlSO_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSZ_INS10_INSZ_INS10_INSZ_INS10_INSZ_INS10_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSV_ISI_EEE7adaptorEEEEENS0_ISJ_NSV_ISP_EEE7adaptorEEEEENS0_ISQ_NSV_ISR_EEE7adaptorEEEEENS0_ISS_S1A_E7adaptorEEEEENS0_IST_S1F_E7adaptorEEEEE(v7, v10);
    _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS6_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSL_35filter_runtime_mode_operation_nodesMUlSP_E_EEESQ_EESS_EENSL_34filter_runtime_map_operation_nodesMUlSP_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSP_E_EEENS_14logical_negateINSL_44filter_runtime_planar_map_io_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS17_INS18_INS17_INS18_INS17_INS18_INS17_INS18_INS17_INS18_INS17_INS18_INS4_11__wrap_iterIPS12_EENS0_ISD_NS11_ISJ_EEE7adaptorEEEEENS0_ISK_NS11_ISQ_EEE7adaptorEEEEENS0_ISR_NS11_ISS_EEE7adaptorEEEEENS0_IST_S1H_E7adaptorEEEEENS0_ISU_S1M_E7adaptorEEEEENS0_ISV_NS11_ISW_EEE7adaptorEEEEENS_19iter_transform_viewISX_NS_10indirectedISZ_EEE7adaptorILb0EEEEEEE(v6, v10);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v16 = v9;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_1A6974308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char *a32)
{
  a32 = &a12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a32);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a32);
  _Unwind_Resume(a1);
}

void *ranges::_move::move_fn::operator()<std::__wrap_iter<ZinRtNodeGraph const* const*>,std::__wrap_iter<ZinRtNodeGraph const* const*>,std::back_insert_iterator<std::vector<ZinRtNodeGraph const*>>>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v9 = (v7 - *a4) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v10 = v8 - *a4;
        v11 = v10 >> 2;
        if (v10 >> 2 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<__CFNumber const*>>(a4, v12);
        }

        *(8 * v9) = *v5;
        v7 = (8 * v9 + 8);
        v13 = *(a4 + 8) - *a4;
        v14 = (8 * v9 - v13);
        memcpy(v14, *a4, v13);
        v15 = *a4;
        *a4 = v14;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7++ = *v5;
      }

      *(a4 + 8) = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (v5 >= v6)
  {
    v9 = (v5 - *v4) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v6 - *v4;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = *a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrTensor>>>(v4, v12);
    }

    v13 = 16 * v9;
    v14 = *a2;
    *(16 * v9) = *a2;
    if (*(&v14 + 1))
    {
      atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v8 = (v13 + 16);
    v15 = *(v4 + 8) - *v4;
    v16 = v13 - v15;
    memcpy((v13 - v15), *v4, v15);
    v17 = *v4;
    *v4 = v16;
    v20[0] = v17;
    v20[1] = v17;
    *(v4 + 8) = v8;
    v20[2] = v17;
    v18 = *(v4 + 16);
    *(v4 + 16) = 0;
    v20[3] = v18;
    std::__split_buffer<std::shared_ptr<ZinIrConstData>>::~__split_buffer(v20);
  }

  else
  {
    v7 = *(a2 + 1);
    *v5 = *a2;
    v5[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = v5 + 2;
  }

  *(v4 + 8) = v8;
  return a1;
}

_OWORD *std::vector<std::shared_ptr<ZinRtOperationNode>>::emplace_back<std::shared_ptr<ZinRtOperationNode> const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v5 = std::vector<std::shared_ptr<ZinRtOperationNode>>::__emplace_back_slow_path<std::shared_ptr<ZinRtOperationNode> const&>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = v3 + 2;
  }

  *(a1 + 8) = v5;
  return v5 - 1;
}

_OWORD *std::vector<std::shared_ptr<ZinRtOperationNode>>::__emplace_back_slow_path<std::shared_ptr<ZinRtOperationNode> const&>(const void **a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16[4] = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrTensor>>>(a1, v7);
  }

  v8 = 16 * v2;
  v9 = *a2;
  *(16 * v2) = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = (v8 + 16);
  v11 = a1[1] - *a1;
  v12 = (v8 - v11);
  memcpy((v8 - v11), *a1, v11);
  v13 = *a1;
  *a1 = v12;
  a1[1] = v10;
  v14 = a1[2];
  a1[2] = 0;
  v16[2] = v13;
  v16[3] = v14;
  v16[0] = v13;
  v16[1] = v13;
  std::__split_buffer<std::shared_ptr<ZinIrConstData>>::~__split_buffer(v16);
  return v10;
}

double _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INSt3__121__tree_const_iteratorINS5_10shared_ptrI13ZinRtBaseNodeEEPNS5_11__tree_nodeIS9_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS5_3setIS9_17ZinIrIdComparatorIS9_ENS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKS9_E_EEEE7adaptorEEEEENS_19iter_transform_viewINS_11filter_viewISO_ST_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSS_E_EEEE7adaptorILb0EEEEEEES1A_NS5_20back_insert_iteratorINS5_6vectorINS7_I18ZinRtOperationNodeEENSK_IS1E_EEEEEEEENS_6detail13in_out_resultIT_T1_EES1K_T0_S1L_@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v10 = a4;
  if (a1 != a3)
  {
    do
    {
      _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJS8_EEEDTclcvT_fp_spcvT0_fp0_EEOSC_DpOSD_(a1 + 32, &v8);
      std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v10, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      _ZNK6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKS6_E_EEEE7adaptor4nextERNS2_21__tree_const_iteratorIS6_PNS2_11__tree_nodeIS6_PvEElEE(&v11 + 1, &v11);
      a1 = v11;
    }

    while (v11 != a3);
    a4 = v10;
  }

  result = *&v11;
  *a5 = v11;
  *(a5 + 16) = a4;
  return result;
}

void sub_1A697479C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v4;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v18[4] = *a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrTensor>>>(v4, v11);
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v7 = 16 * v8 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v13 = *(v4 + 8) - *v4;
    v14 = v12 - v13;
    memcpy(v12 - v13, *v4, v13);
    v15 = *v4;
    *v4 = v14;
    v18[0] = v15;
    v18[1] = v15;
    *(v4 + 8) = v7;
    v18[2] = v15;
    v16 = *(v4 + 16);
    *(v4 + 16) = 0;
    v18[3] = v16;
    std::__split_buffer<std::shared_ptr<ZinIrConstData>>::~__split_buffer(v18);
  }

  else
  {
    *v6 = *a2;
    v7 = (v6 + 1);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(v4 + 8) = v7;
  return a1;
}

double _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INSt3__121__tree_const_iteratorINS5_10shared_ptrI13ZinRtBaseNodeEEPNS5_11__tree_nodeIS9_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS5_3setIS9_17ZinIrIdComparatorIS9_ENS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters18filter_block_nodesMUlRKS9_E_EEEE7adaptorEEEEENS_19iter_transform_viewINS_11filter_viewISO_ST_EENS_10indirectedIN19ZinRtNodeTransforms23transform_to_block_nodeMUlSS_E_EEEE7adaptorILb0EEEEEEES1A_NS5_20back_insert_iteratorINS5_6vectorINS7_I14ZinRtBlockNodeEENSK_IS1E_EEEEEEEENS_6detail13in_out_resultIT_T1_EES1K_T0_S1L_@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, const void **a4@<X5>, uint64_t a5@<X8>)
{
  *&v22 = a1;
  *(&v22 + 1) = a2;
  if (a1 != a3)
  {
    do
    {
      _ZNK6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INSt3__121__tree_const_iteratorINS2_10shared_ptrI13ZinRtBaseNodeEEPNS2_11__tree_nodeIS6_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS2_3setIS6_17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters18filter_block_nodesMUlRKS6_E_EEEE7adaptorEEEEENSC_INS_11filter_viewISL_SQ_EENSM_INSN_23filter_init_block_nodesMUlSP_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSW_ISX_SY_EENS_10indirectedIN19ZinRtNodeTransforms23transform_to_block_nodeMUlSP_E_EEEE7adaptorILb0EEEEEEdeEv(&v22, &v21);
      v9 = a4[1];
      v8 = a4[2];
      if (v9 >= v8)
      {
        v10 = *a4;
        v11 = v9 - *a4;
        v12 = v11 >> 4;
        v13 = (v11 >> 4) + 1;
        if (v13 >> 60)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v8 - v10;
        if (v14 >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        v23[4] = a4;
        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrTensor>>>(a4, v15);
        }

        *(16 * v12) = v21;
        v16 = (16 * v12 + 16);
        v21 = 0uLL;
        memcpy(0, v10, v11);
        v17 = *a4;
        *a4 = 0;
        v23[0] = v17;
        v23[1] = v17;
        a4[1] = v16;
        v23[2] = v17;
        v18 = a4[2];
        a4[2] = 0;
        v23[3] = v18;
        std::__split_buffer<std::shared_ptr<ZinIrConstData>>::~__split_buffer(v23);
        v19 = *(&v21 + 1);
        a4[1] = v16;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }

      else
      {
        *v9 = v21;
        a4[1] = v9 + 16;
      }

      _ZNK6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters18filter_block_nodesMUlRKS6_E_EEEE7adaptor4nextERNS2_21__tree_const_iteratorIS6_PNS2_11__tree_nodeIS6_PvEElEE(&v22 + 1, &v22);
    }

    while (v22 != a3);
  }

  result = *&v22;
  *a5 = v22;
  *(a5 + 16) = a4;
  return result;
}

void sub_1A6974A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

double _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INSt3__121__tree_const_iteratorINS5_10shared_ptrI13ZinRtBaseNodeEEPNS5_11__tree_nodeIS9_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS5_3setIS9_17ZinIrIdComparatorIS9_ENS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS9_E_EEEE7adaptorEEEEENS_19iter_transform_viewINS_11filter_viewISO_ST_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_condition_nodeMUlSS_E_EEEE7adaptorILb0EEEEEEES1A_NS5_20back_insert_iteratorINS5_6vectorINS7_I18ZinRtConditionNodeEENSK_IS1E_EEEEEEEENS_6detail13in_out_resultIT_T1_EES1K_T0_S1L_@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, const void **a4@<X5>, uint64_t a5@<X8>)
{
  *&v22 = a1;
  *(&v22 + 1) = a2;
  if (a1 != a3)
  {
    do
    {
      _ZNK6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INSt3__121__tree_const_iteratorINS2_10shared_ptrI13ZinRtBaseNodeEEPNS2_11__tree_nodeIS6_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS2_3setIS6_17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE7adaptorEEEEENS_19iter_transform_viewINS_11filter_viewISL_SQ_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_condition_nodeMUlSP_E_EEEE7adaptorILb0EEEEEEdeEv(&v22, &v21);
      v9 = a4[1];
      v8 = a4[2];
      if (v9 >= v8)
      {
        v10 = *a4;
        v11 = v9 - *a4;
        v12 = v11 >> 4;
        v13 = (v11 >> 4) + 1;
        if (v13 >> 60)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v8 - v10;
        if (v14 >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        v23[4] = a4;
        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrTensor>>>(a4, v15);
        }

        *(16 * v12) = v21;
        v16 = (16 * v12 + 16);
        v21 = 0uLL;
        memcpy(0, v10, v11);
        v17 = *a4;
        *a4 = 0;
        v23[0] = v17;
        v23[1] = v17;
        a4[1] = v16;
        v23[2] = v17;
        v18 = a4[2];
        a4[2] = 0;
        v23[3] = v18;
        std::__split_buffer<std::shared_ptr<ZinIrConstData>>::~__split_buffer(v23);
        v19 = *(&v21 + 1);
        a4[1] = v16;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }

      else
      {
        *v9 = v21;
        a4[1] = v9 + 16;
      }

      _ZNK6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE7adaptor4nextERNS2_21__tree_const_iteratorIS6_PNS2_11__tree_nodeIS6_PvEElEE(&v22 + 1, &v22);
    }

    while (v22 != a3);
  }

  result = *&v22;
  *a5 = v22;
  *(a5 + 16) = a4;
  return result;
}

void sub_1A6974BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNK6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INSt3__121__tree_const_iteratorINS2_10shared_ptrI13ZinRtBaseNodeEEPNS2_11__tree_nodeIS6_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS2_3setIS6_17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE7adaptorEEEEENS_19iter_transform_viewINS_11filter_viewISL_SQ_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_condition_nodeMUlSP_E_EEEE7adaptorILb0EEEEEEdeEv@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  {
    *a2 = 0;
    a2[1] = 0;
    ZinAssertImpl("Error: Invalid typecast: condition node.");
  }

  v6 = *(v3 + 40);
  *a2 = result;
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t _ZNK6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE7adaptor4nextERNS2_21__tree_const_iteratorIS6_PNS2_11__tree_nodeIS6_PvEElEE(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *a2 = v5;
  return _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE15satisfy_forwardERNS2_21__tree_const_iteratorIS6_PNS2_11__tree_nodeIS6_PvEElEE(v2, a2);
}

uint64_t _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE15satisfy_forwardERNS2_21__tree_const_iteratorIS6_PNS2_11__tree_nodeIS6_PvEElEE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8) + 8;
  for (i = *a2; i != v2; *a2 = i)
  {
    result = ZinIrAsyncFunction::GetExitEventProperty(i[4]);
    if (result == 3)
    {
      break;
    }

    v5 = *a2;
    v6 = *(*a2 + 8);
    if (v6)
    {
      do
      {
        i = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      do
      {
        i = v5[2];
        v7 = *i == v5;
        v5 = i;
      }

      while (!v7);
    }
  }

  return result;
}

uint64_t _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE11cache_beginEv(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = result;
    v2 = **(result + 8);
    result = _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_condition_nodesMUlRKS6_E_EEEE15satisfy_forwardERNS2_21__tree_const_iteratorIS6_PNS2_11__tree_nodeIS6_PvEElEE(result, &v2);
    *(v1 + 16) = v2;
    *(v1 + 24) = 1;
  }

  return result;
}

void GetAllRtOperationNodes(std::shared_ptr<ZinRtConditionNode> const&,std::optional<RtOperationMode>)::$_0::operator()(uint64_t a1, __int128 *a2)
{
  ExitEventProperty = ZinIrAsyncFunction::GetExitEventProperty(*a2);
  if (ExitEventProperty <= 1)
  {
    if (ExitEventProperty)
    {
      if (ExitEventProperty != 1)
      {
        return;
      }

      if (*(*(a1 + 8) + 4) == 1)
      {
        v5 = *a2;
        v6 = *(a2 + 1);
        if (v6)
        {
          atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
        }

        BlockGraph = ZinRtBlockNode::GetBlockGraph(v5);
        v8 = *(a1 + 8);
        if ((v8[1] & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        ZinRtGraphValidationUtils::GetRtOperationNodesWithMode(BlockGraph, *v8, &v46);
        v9 = *a1;
        v10 = v46;
        v11 = v47;
        v45 = v9;
        while (v10 != v11)
        {
          std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v45, v10++);
        }
      }

      else
      {
        v24 = *a2;
        v6 = *(a2 + 1);
        if (v6)
        {
          atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
        }

        v25 = ZinRtBlockNode::GetBlockGraph(v24);
        ZinRtGraphValidationUtils::GetAllRtOperationNodes(v25, &v46);
        v26 = *a1;
        v27 = v46;
        v28 = v47;
        v45 = v26;
        while (v27 != v28)
        {
          std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v45, v27++);
        }
      }

      v43[0] = &v46;
      v23 = v43;
      goto LABEL_35;
    }

    *v43 = *a2;
    v16 = v43[1];
    v17 = v43[1];
    if (v43[1])
    {
      atomic_fetch_add_explicit(v43[1] + 1, 1uLL, memory_order_relaxed);
    }

    v18 = *(a1 + 8);
    if (*(v18 + 4) == 1)
    {
      if (*v18 == 1)
      {
        if (ZinRtOperationNode::HasAneOperation(v43[0]))
        {
          v19 = *a1;
          v20 = *(v19 + 8);
          if (v20 >= *(v19 + 16))
          {
            v22 = std::vector<std::shared_ptr<ZinRtOperationNode>>::__emplace_back_slow_path<std::shared_ptr<ZinRtOperationNode> const&>(v19, v43);
          }

          else
          {
            *v20 = v43[0];
            v21 = v43[1];
            v20[1] = v43[1];
            if (v21)
            {
              atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
            }

            v22 = v20 + 2;
          }

          *(v19 + 8) = v22;
          goto LABEL_57;
        }

        v18 = *(a1 + 8);
        if ((*(v18 + 4) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }
      }

      if (!*v18 && !ZinRtOperationNode::HasAneOperation(v43[0]))
      {
        std::vector<std::shared_ptr<ZinRtOperationNode>>::emplace_back<std::shared_ptr<ZinRtOperationNode> const&>(*a1, v43);
      }
    }

    else
    {
      v30 = *a1;
      v31 = *(v30 + 8);
      v32 = *(v30 + 16);
      if (v31 >= v32)
      {
        v34 = (v31 - *v30) >> 4;
        v35 = v34 + 1;
        if ((v34 + 1) >> 60)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v36 = v32 - *v30;
        if (v36 >> 3 > v35)
        {
          v35 = v36 >> 3;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v35;
        }

        v50 = v30;
        if (v37)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrTensor>>>(v30, v37);
        }

        v38 = 16 * v34;
        *(16 * v34) = *v43;
        if (v16)
        {
          atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
        }

        v33 = (v38 + 16);
        v39 = *(v30 + 8) - *v30;
        v40 = v38 - v39;
        memcpy((v38 - v39), *v30, v39);
        v41 = *v30;
        *v30 = v40;
        v46 = v41;
        v47 = v41;
        *(v30 + 8) = v33;
        v48 = v41;
        v42 = *(v30 + 16);
        *(v30 + 16) = 0;
        v49 = v42;
        std::__split_buffer<std::shared_ptr<ZinIrConstData>>::~__split_buffer(&v46);
      }

      else
      {
        *v31 = *v43;
        if (v16)
        {
          atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
        }

        v33 = v31 + 1;
      }

      *(v30 + 8) = v33;
    }

LABEL_57:
    v29 = v43[1];
    if (!v43[1])
    {
      return;
    }

    goto LABEL_58;
  }

  if (ExitEventProperty == 3)
  {
    v12 = *a2;
    v6 = *(a2 + 1);
    v43[0] = v12;
    v43[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    GetAllRtOperationNodes(v43, **(a1 + 8), &v46);
    v13 = *a1;
    v14 = v46;
    v15 = v47;
    v44 = v13;
    while (v14 != v15)
    {
      std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v44, v14++);
    }

    v45 = &v46;
    v23 = &v45;
LABEL_35:
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v23);
    if (!v6)
    {
      return;
    }

    v29 = v6;
LABEL_58:
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    return;
  }

  if (ExitEventProperty == 2)
  {
    ZinAssertImpl("GetAllRtOperationNodes for loop node is not implemented yet");
  }
}

void sub_1A69750F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INSt3__121__tree_const_iteratorINS5_10shared_ptrI13ZinRtBaseNodeEEPNS5_11__tree_nodeIS9_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS5_3setIS9_17ZinIrIdComparatorIS9_ENS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKS9_E_EEEE7adaptorEEEEENSF_INS_11filter_viewISO_ST_EENSP_INSQ_35filter_runtime_mode_operation_nodesMUlSS_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSZ_IS10_S11_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSS_E_EEEE7adaptorILb0EEEEEEES1H_NS5_20back_insert_iteratorINS5_6vectorINS7_I18ZinRtOperationNodeEENSK_IS1L_EEEEEEEENS_6detail13in_out_resultIT_T1_EES1R_T0_S1S_@<Q0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v12 = a3;
  v6 = *a1;
  if (*a1 != *a2)
  {
    do
    {
      _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJS8_EEEDTclcvT_fp_spcvT0_fp0_EEOSC_DpOSD_(v6 + 32, &v10);
      std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v12, &v10);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v8 = a1[2];
      _ZNK6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKS6_E_EEEE7adaptor4nextERNS2_21__tree_const_iteratorIS6_PNS2_11__tree_nodeIS6_PvEElEE(a1 + 1, a1);
      _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS3_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS7_ENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKS7_E_EEENS_14logical_negateINSF_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_21__tree_const_iteratorIS7_PNS3_11__tree_nodeIS7_PvEElEENS0_ISE_NSK_ISI_EEE7adaptorEEEEE(v8, a1);
      v6 = *a1;
    }

    while (*a1 != *a2);
    a3 = v12;
  }

  result = *a1;
  *a4 = *a1;
  *(a4 + 16) = a1[2];
  *(a4 + 24) = a3;
  return result;
}

void sub_1A6975228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INSt3__121__tree_const_iteratorINS5_10shared_ptrI13ZinRtBaseNodeEEPNS5_11__tree_nodeIS9_PvEElEENS_14remove_if_viewINS_8ref_viewIKNS5_3setIS9_17ZinIrIdComparatorIS9_ENS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKS9_E_EEEE7adaptorEEEEENSF_INS_11filter_viewISO_ST_EENSP_INSQ_31filter_ane_mode_operation_nodesMUlSS_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSZ_IS10_S11_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSS_E_EEEE7adaptorILb0EEEEEEES1H_NS5_20back_insert_iteratorINS5_6vectorINS7_I18ZinRtOperationNodeEENSK_IS1L_EEEEEEEENS_6detail13in_out_resultIT_T1_EES1R_T0_S1S_@<Q0>(__n128 *a1@<X1>, void *a2@<X2>, unint64_t a3@<X3>, __n128 *a4@<X8>)
{
  v12 = a3;
  v6 = a1->n128_u64[0];
  if (a1->n128_u64[0] != *a2)
  {
    do
    {
      _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJS8_EEEDTclcvT_fp_spcvT0_fp0_EEOSC_DpOSD_(v6 + 32, &v10);
      std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v12, &v10);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v8 = a1[1].n128_i64[0];
      _ZNK6ranges14remove_if_viewINS_8ref_viewIKNSt3__13setINS2_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS6_ENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKS6_E_EEEE7adaptor4nextERNS2_21__tree_const_iteratorIS6_PNS2_11__tree_nodeIS6_PvEElEE(&a1->n128_i64[1], a1);
      _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__13setINS3_10shared_ptrI13ZinRtBaseNodeEE17ZinIrIdComparatorIS7_ENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKS7_E_EEENS_14logical_negateINSF_31filter_ane_mode_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_21__tree_const_iteratorIS7_PNS3_11__tree_nodeIS7_PvEElEENS0_ISE_NSK_ISI_EEE7adaptorEEEEE(v8, a1);
      v6 = a1->n128_u64[0];
    }

    while (a1->n128_u64[0] != *a2);
    a3 = v12;
  }

  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a1[1].n128_u64[0];
  a4[1].n128_u64[1] = a3;
  return result;
}

void sub_1A6975310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNK6ranges5_move7move_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INSt3__111__wrap_iterIPKNS5_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS5_6vectorIS9_NS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSD_INS_11filter_viewISK_SR_EENSL_INSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENSD_INSX_ISY_SZ_EENSL_INSM_35filter_runtime_bind_operation_nodesMUlSQ_E_EEEE7adaptorEEEEES1B_NS5_20back_insert_iteratorISI_EEEENS_6detail13in_out_resultIT_T1_EES1G_T0_S1H_@<Q0>(uint64_t *a1@<X1>, __int128 **a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v13 = a3;
  v6 = *a1;
  if (v6 != *a2)
  {
    do
    {
      std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v13, v6);
      v9 = a1[2];
      v8 = a1[3];
      v10 = a1[1];
      *a1 += 16;
      _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS2_11__wrap_iterIPKS6_EE(v10, a1);
      _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(v9, a1);
      _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateINSD_35filter_runtime_bind_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSQ_INSR_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSM_ISI_EEE7adaptorEEEEENS0_ISJ_NSM_ISK_EEE7adaptorEEEEE(v8, a1);
      v6 = *a1;
    }

    while (*a1 != *a2);
    a3 = v13;
  }

  result = *a1;
  v12 = *(a1 + 1);
  *a4 = *a1;
  *(a4 + 16) = v12;
  *(a4 + 32) = a3;
  return result;
}

uint64_t _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateINSD_35filter_runtime_bind_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSQ_INSR_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSM_ISI_EEE7adaptorEEEEENS0_ISJ_NSM_ISK_EEE7adaptorEEEEE(uint64_t a1, uint64_t *a2)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 8);
  result = _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 16);
  v5 = *(*(a1 + 24) + 8);
  for (i = *a2; *a2 != v5; i = *a2)
  {
    result = _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters35filter_runtime_bind_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, a1, i);
    if (result)
    {
      break;
    }

    v7 = a2[1];
    v8 = a2[2];
    *a2 += 16;
    _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS2_11__wrap_iterIPKS6_EE(v7, a2);
    result = _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(v8, a2);
  }

  return result;
}

double _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = a1 + 8;
    _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 8);
    *&v4 = *(a1 + 24);
    *(&v4 + 1) = v2;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(a1, &v4);
    result = *&v4;
    *(a1 + 40) = v4;
    *(a1 + 56) = 1;
  }

  return result;
}

uint64_t _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(uint64_t a1, uint64_t *a2)
{
  result = _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 8);
  v5 = *(*(a1 + 16) + 8);
  for (i = *a2; *a2 != v5; i = *a2)
  {
    result = _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters35filter_runtime_mode_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, a1, i);
    if (result)
    {
      break;
    }

    v7 = a2[1];
    *a2 += 16;
    result = _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS2_11__wrap_iterIPKS6_EE(v7, a2);
  }

  return result;
}

uint64_t _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 8);
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      while (1)
      {
        result = _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters22filter_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, v1, v3);
        if (result)
        {
          break;
        }

        v3 += 16;
        if (v3 == v4)
        {
          v3 = v4;
          break;
        }
      }
    }

    *(v1 + 16) = v3;
    *(v1 + 24) = 1;
  }

  return result;
}

uint64_t _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS2_11__wrap_iterIPKS6_EE(uint64_t result, uint64_t *a2)
{
  v2 = *(*(result + 8) + 8);
  v3 = *a2;
  if (*a2 != v2)
  {
    v5 = result;
    do
    {
      result = _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters22filter_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, v5, v3);
      if (result)
      {
        break;
      }

      v3 = *a2 + 16;
      *a2 = v3;
    }

    while (v3 != v2);
  }

  return result;
}

BOOL _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters22filter_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ExitEventProperty = ZinIrAsyncFunction::GetExitEventProperty(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return ExitEventProperty == 0;
}

void sub_1A697568C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters35filter_runtime_mode_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(*v3 + 48))(v3, a2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5 ^ 1u;
}

void sub_1A697570C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters35filter_runtime_bind_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v6 = *a3;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = _ZNK16ZinRtNodeFilters35filter_runtime_bind_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_clES5_(a2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_1A6975780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL _ZNK16ZinRtNodeFilters35filter_runtime_bind_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_clES5_(uint64_t a1, uint64_t a2)
{
  {
    ZinAssertImpl("Error: Invalid runtime operation node given.");
  }

  v4 = v3;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*ZinRtOperationNode::GetFirstOperation(v3))
  {
    ZinAssertImpl("Error: Invalid operation node: no operation description in the node");
  }

  FirstOperation = ZinRtOperationNode::GetFirstOperation(v4);
  {
    ZinAssertImpl("Error: Invalid operation node given: No first operation or the type of first operation is misconfigured");
  }

  v8 = *(FirstOperation + 8);
  if (!v8)
  {
    v9 = v7[18];
    if (!v5)
    {
      return v9 == 0;
    }

    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = v7[18];
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  if (v5)
  {
LABEL_10:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v9 == 0;
}

void sub_1A69758EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateINSD_35filter_runtime_bind_operation_nodesMUlSH_E_EEEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 96) & 1) == 0)
  {
    v2 = a1 + 8;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 8);
    v4 = *(a1 + 48);
    v5 = v2;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateINSD_35filter_runtime_bind_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSQ_INSR_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSM_ISI_EEE7adaptorEEEEENS0_ISJ_NSM_ISK_EEE7adaptorEEEEE(a1, &v4);
    result = *&v4;
    *(a1 + 72) = v4;
    *(a1 + 88) = v5;
    *(a1 + 96) = 1;
  }

  return result;
}

uint64_t _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEENS_14logical_negateINSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEEESM_LNS_11cardinalityEn1EE11end_cursor_ISQ_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS11_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS13_EEEEE4typeENS11_IDTcldtclsr3stdE7declvalINS11_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS13_EEEEE4typeEEE3endclsr3stdE7declvalIS13_EEEEE4typeEEEEL_ZNS10_IS16_S1C_EEEEEENS_14adaptor_cursorIS19_S16_EENS_16adaptor_sentinelIS1F_S1C_EEEE4typeES13_@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateINSD_35filter_runtime_bind_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 8);
  result = _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 16);
  *a2 = *(*(a1 + 24) + 8);
  a2[1] = a1 + 16;
  a2[2] = a1 + 8;
  a2[3] = a1;
  return result;
}

__n128 _ZNK6ranges5_move7move_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INS3_INS4_INSt3__111__wrap_iterIPKNS5_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS5_6vectorIS9_NS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSD_INS_11filter_viewISK_SR_EENSL_INSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSX_ISY_SZ_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSQ_E_EEEE7adaptorILb0EEEEEEENSD_INS_14transform_viewIS16_S19_EENSL_INSM_35filter_runtime_load_operation_nodesMUlRSA_E_EEEE7adaptorEEEEES1O_NS5_20back_insert_iteratorISI_EEEENS_6detail13in_out_resultIT_T1_EES1T_T0_S1U_@<Q0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v14 = a3;
  v7 = *a1;
  if (*a1 != *a2)
  {
    do
    {
      _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSG_DpOSH_(v7, &v15);
      v13 = v15;
      std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v14, &v13);
      if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }

      v9 = a1[2];
      v8 = a1[3];
      v10 = a1[1];
      *a1 += 16;
      _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS2_11__wrap_iterIPKS6_EE(v10, a1);
      _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(v9, a1);
      _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_35filter_runtime_load_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSW_INSX_INSW_INSX_INS4_11__wrap_iterIPSR_EENS0_ISD_NSQ_ISJ_EEE7adaptorEEEEENS0_ISK_NSQ_ISL_EEE7adaptorEEEEENS_19iter_transform_viewISM_NS_10indirectedISO_EEE7adaptorILb0EEEEEEE(v8, a1);
      v7 = *a1;
    }

    while (*a1 != *a2);
    a3 = v14;
  }

  result = *a1;
  v12 = *(a1 + 1);
  *a4 = *a1;
  *(a4 + 16) = v12;
  *(a4 + 32) = a3;
  return result;
}

void sub_1A6975AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSG_DpOSH_(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    *a2 = 0;
    a2[1] = 0;
    ZinAssertImpl("Error: Invalid typecast: operation node.");
  }

  *a2 = v5;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A6975B94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_35filter_runtime_load_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSW_INSX_INSW_INSX_INS4_11__wrap_iterIPSR_EENS0_ISD_NSQ_ISJ_EEE7adaptorEEEEENS0_ISK_NSQ_ISL_EEE7adaptorEEEEENS_19iter_transform_viewISM_NS_10indirectedISO_EEE7adaptorILb0EEEEEEE(uint64_t a1, uint64_t *a2)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 16);
  _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 24);
  v4 = *(*(a1 + 32) + 8);
  for (i = *a2; *a2 != v4; i = *a2)
  {
    _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSG_DpOSH_(i, &v9);
    operation_nodesMUlRKNSt3__110shared_ptrI18ZinRtOperationNodeEEE_clES5 = _ZNK16ZinRtNodeFilters35filter_runtime_load_operation_nodesMUlRKNSt3__110shared_ptrI18ZinRtOperationNodeEEE_clES5_(a1, &v9);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (operation_nodesMUlRKNSt3__110shared_ptrI18ZinRtOperationNodeEEE_clES5)
    {
      break;
    }

    v7 = a2[1];
    v8 = a2[2];
    *a2 += 16;
    _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS2_11__wrap_iterIPKS6_EE(v7, a2);
    _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(v8, a2);
  }
}

void sub_1A6975C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL _ZNK16ZinRtNodeFilters35filter_runtime_load_operation_nodesMUlRKNSt3__110shared_ptrI18ZinRtOperationNodeEEE_clES5_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (!*a2)
  {
    ZinAssertImpl("Error: Invalid runtime operation node given.");
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*ZinRtOperationNode::GetFirstOperation(v2))
  {
    ZinAssertImpl("Error: Invalid runtime operation node: no operation description in the node");
  }

  FirstOperation = ZinRtOperationNode::GetFirstOperation(v2);
  {
    ZinAssertImpl("Error: Invalid runtime operation given.");
  }

  v6 = *(FirstOperation + 8);
  if (!v6)
  {
    v7 = v5[18];
    if (!v3)
    {
      return v7 == 5;
    }

    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v7 = v5[18];
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  if (v3)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v7 == 5;
}

void sub_1A6975DA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_35filter_runtime_load_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 104) & 1) == 0)
  {
    v2 = a1 + 16;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 16);
    v4 = *(a1 + 56);
    v5 = v2;
    _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_35filter_runtime_load_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSW_INSX_INSW_INSX_INS4_11__wrap_iterIPSR_EENS0_ISD_NSQ_ISJ_EEE7adaptorEEEEENS0_ISK_NSQ_ISL_EEE7adaptorEEEEENS_19iter_transform_viewISM_NS_10indirectedISO_EEE7adaptorILb0EEEEEEE(a1, &v4);
    result = *&v4;
    *(a1 + 80) = v4;
    *(a1 + 96) = v5;
    *(a1 + 104) = 1;
  }

  return result;
}

uint64_t _ZN6ranges12view_adaptorINS_14remove_if_viewINS_14transform_viewINS_11filter_viewINS3_INS_8ref_viewIKNSt3__16vectorINS5_10shared_ptrI18ZinRtOperationNodeEENS5_9allocatorIS9_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEENSF_35filter_runtime_mode_operation_nodesMUlSJ_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSJ_E_EEENS_14logical_negateINSF_35filter_runtime_load_operation_nodesMUlRKS9_E_EEEEESQ_LNS_11cardinalityEn1EE11end_cursor_ISW_EEN4meta6detail4_if_IJNS5_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS5_5decayIDTcldtclsr3stdE7declvalINS17_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS19_EEEEE4typeENS17_IDTcldtclsr3stdE7declvalINS17_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS19_EEEEE4typeEEE3endclsr3stdE7declvalIS19_EEEEE4typeEEEEL_ZNS16_IS1C_S1I_EEEEEENS_14adaptor_cursorIS1F_S1C_EENS_16adaptor_sentinelIS1L_S1I_EEEE4typeES19_@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_35filter_runtime_load_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 16);
  result = _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 24);
  *a2 = *(*(a1 + 32) + 8);
  a2[1] = a1 + 24;
  a2[2] = a1 + 16;
  a2[3] = a1;
  return result;
}

__n128 _ZNK6ranges5_move7move_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INSt3__111__wrap_iterIPKNS5_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS5_6vectorIS9_NS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSD_INS_11filter_viewISK_SR_EENSL_INSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENSD_INSX_ISY_SZ_EESS_E7adaptorEEEEENSD_INSX_IS15_SR_EES10_E7adaptorEEEEENSD_INSX_IS1A_SZ_EENSL_INSM_35filter_runtime_bind_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSX_IS1F_S1G_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSQ_E_EEEE7adaptorILb0EEEEEEENSD_INS_14transform_viewIS1N_S1Q_EENSL_INSM_40filter_runtime_bind_text_operation_nodesMUlRSA_E_EEEE7adaptorEEEEES25_NS5_20back_insert_iteratorISI_EEEENS_6detail13in_out_resultIT_T1_EES2A_T0_S2B_@<Q0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v12 = a3;
  v7 = *a1;
  if (*a1 != *a2)
  {
    do
    {
      _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSG_DpOSH_(v7, &v13);
      v11 = v13;
      std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v12, &v11);
      if (*(&v11 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
      }

      v8 = *(a1 + 48);
      _ZN6ranges14adaptor_cursorINS_14basic_iteratorINS0_INS1_INS0_INS1_INS0_INS1_INS0_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEENSA_INSU_IS12_SO_EESX_E7adaptorEEEEENSA_INSU_IS17_SW_EENSI_INSJ_35filter_runtime_bind_operation_nodesMUlSN_E_EEEE7adaptorEE4nextIS1G_vEEvv(a1);
      _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_40filter_runtime_bind_text_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS4_11__wrap_iterIPSV_EENS0_ISD_NSU_ISJ_EEE7adaptorEEEEENS0_ISK_NSU_ISL_EEE7adaptorEEEEENS0_ISM_S15_E7adaptorEEEEENS0_ISN_S1A_E7adaptorEEEEENS0_ISO_NSU_ISP_EEE7adaptorEEEEENS_19iter_transform_viewISQ_NS_10indirectedISS_EEE7adaptorILb0EEEEEEE(v8, a1);
      v7 = *a1;
    }

    while (*a1 != *a2);
    a3 = v12;
  }

  v9 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v9;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = *(a1 + 48);
  *(a4 + 56) = a3;
  return result;
}

void sub_1A6975F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_40filter_runtime_bind_text_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS4_11__wrap_iterIPSV_EENS0_ISD_NSU_ISJ_EEE7adaptorEEEEENS0_ISK_NSU_ISL_EEE7adaptorEEEEENS0_ISM_S15_E7adaptorEEEEENS0_ISN_S1A_E7adaptorEEEEENS0_ISO_NSU_ISP_EEE7adaptorEEEEENS_19iter_transform_viewISQ_NS_10indirectedISS_EEE7adaptorILb0EEEEEEE(uint64_t a1, uint64_t *a2)
{
  _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENS_14logical_negateINSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEEESO_LNS_11cardinalityEn1EE11end_cursor_ISS_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS15_EEEEE4typeENS13_IDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS15_EEEEE4typeEEE3endclsr3stdE7declvalIS15_EEEEE4typeEEEEL_ZNS12_IS18_S1E_EEEEEENS_14adaptor_cursorIS1B_S18_EENS_16adaptor_sentinelIS1H_S1E_EEEE4typeES15_(a1 + 16, v11);
  v3 = *a2;
  if (*a2 != v11[0])
  {
    v4 = "Error: Invalid operation node: no operation description in the node";
    while (1)
    {
      _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSG_DpOSH_(v3, &v9);
      if (!*ZinRtOperationNode::GetFirstOperation(v9))
      {
        goto LABEL_15;
      }

      FirstOperation = ZinRtOperationNode::GetFirstOperation(v9);
      if (!*FirstOperation)
      {
        break;
      }

      if (!v6)
      {
        break;
      }

      v7 = *(FirstOperation + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = v6[19];
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      else
      {
        v8 = v6[19];
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if ((v8 & 0xFFFF0000) != 0x10000)
      {
        _ZN6ranges14adaptor_cursorINS_14basic_iteratorINS0_INS1_INS0_INS1_INS0_INS1_INS0_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEENSA_INSU_IS12_SO_EESX_E7adaptorEEEEENSA_INSU_IS17_SW_EENSI_INSJ_35filter_runtime_bind_operation_nodesMUlSN_E_EEEE7adaptorEE4nextIS1G_vEEvv(a2);
        v3 = *a2;
        if (*a2 != v11[0])
        {
          continue;
        }
      }

      return;
    }

    v4 = "Error: Invalid operation node given: No first operation or the type of first operation is misconfigured";
LABEL_15:
    ZinAssertImpl(v4);
  }
}

void sub_1A69760EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

double _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENS_14logical_negateINSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEEESO_LNS_11cardinalityEn1EE11end_cursor_ISS_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS15_EEEEE4typeENS13_IDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS15_EEEEE4typeEEE3endclsr3stdE7declvalIS15_EEEEE4typeEEEEL_ZNS12_IS18_S1E_EEEEEENS_14adaptor_cursorIS1B_S18_EENS_16adaptor_sentinelIS1H_S1E_EEEE4typeES15_@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EESK_EENS_14logical_negateINSD_35filter_runtime_bind_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EENS_14logical_negateISK_EEE11cache_beginEv(a1 + 8);
  _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEENS_14logical_negateISJ_EEEESM_LNS_11cardinalityEn1EE11end_cursor_ISP_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS10_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS12_EEEEE4typeENS10_IDTcldtclsr3stdE7declvalINS10_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS12_EEEEE4typeEEE3endclsr3stdE7declvalIS12_EEEEE4typeEEEEL_ZNSZ_IS15_S1B_EEEEEENS_14adaptor_cursorIS18_S15_EENS_16adaptor_sentinelIS1E_S1B_EEEE4typeES12_(a1 + 16, v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = a1 + 8;
  *(a2 + 40) = a1;
  return result;
}

double _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EESK_EENS_14logical_negateINSD_35filter_runtime_bind_operation_nodesMUlSH_E_EEEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 200) & 1) == 0)
  {
    v2 = a1 + 8;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EENS_14logical_negateISK_EEE11cache_beginEv(a1 + 8);
    v3 = *(a1 + 136);
    v6 = *(a1 + 120);
    v7 = v3;
    v8 = v2;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EESK_EENS_14logical_negateINSD_35filter_runtime_bind_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSS_INST_INSS_INST_INSS_INST_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSO_ISI_EEE7adaptorEEEEENS0_ISJ_NSO_ISK_EEE7adaptorEEEEENS0_ISL_SY_E7adaptorEEEEENS0_ISM_S13_E7adaptorEEEEE(a1, &v6);
    result = *&v6;
    v5 = v7;
    *(a1 + 160) = v6;
    *(a1 + 176) = v5;
    *(a1 + 192) = v8;
    *(a1 + 200) = 1;
  }

  return result;
}

uint64_t _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EESK_EENS_14logical_negateINSD_35filter_runtime_bind_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSS_INST_INSS_INST_INSS_INST_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSO_ISI_EEE7adaptorEEEEENS0_ISJ_NSO_ISK_EEE7adaptorEEEEENS0_ISL_SY_E7adaptorEEEEENS0_ISM_S13_E7adaptorEEEEE(uint64_t a1, uint64_t *a2)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EENS_14logical_negateISK_EEE11cache_beginEv(a1 + 8);
  result = _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEENS_14logical_negateISJ_EEEESM_LNS_11cardinalityEn1EE11end_cursor_ISP_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS10_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS12_EEEEE4typeENS10_IDTcldtclsr3stdE7declvalINS10_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS12_EEEEE4typeEEE3endclsr3stdE7declvalIS12_EEEEE4typeEEEEL_ZNSZ_IS15_S1B_EEEEEENS_14adaptor_cursorIS18_S15_EENS_16adaptor_sentinelIS1E_S1B_EEEE4typeES12_(a1 + 16, v9);
  v5 = v9[0];
  for (i = *a2; *a2 != v5; i = *a2)
  {
    result = _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters35filter_runtime_bind_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, a1, i);
    if (result)
    {
      break;
    }

    v7 = a2[4];
    v8 = _ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEppEv(a2);
    result = _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EENS_14logical_negateISK_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSQ_INSR_INSQ_INSR_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSN_ISI_EEE7adaptorEEEEENS0_ISJ_SO_E7adaptorEEEEENS0_ISL_SW_E7adaptorEEEEE(v7, v8);
  }

  return result;
}

double _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EENS_14logical_negateISK_EEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 144) & 1) == 0)
  {
    v2 = a1 + 8;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateISI_EEE11cache_beginEv(a1 + 8);
    v5 = *(a1 + 80);
    *&v6 = *(a1 + 96);
    *(&v6 + 1) = v2;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EENS_14logical_negateISK_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSQ_INSR_INSQ_INSR_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSN_ISI_EEE7adaptorEEEEENS0_ISJ_SO_E7adaptorEEEEENS0_ISL_SW_E7adaptorEEEEE(a1, &v5);
    result = *&v5;
    v4 = v6;
    *(a1 + 112) = v5;
    *(a1 + 128) = v4;
    *(a1 + 144) = 1;
  }

  return result;
}

uint64_t _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EENS_14logical_negateISK_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSQ_INSR_INSQ_INSR_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSN_ISI_EEE7adaptorEEEEENS0_ISJ_SO_E7adaptorEEEEENS0_ISL_SW_E7adaptorEEEEE(uint64_t a1, uint64_t **a2)
{
  result = _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEENS_14logical_negateISJ_EEEESM_LNS_11cardinalityEn1EE11end_cursor_ISP_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS10_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS12_EEEEE4typeENS10_IDTcldtclsr3stdE7declvalINS10_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS12_EEEEE4typeEEE3endclsr3stdE7declvalIS12_EEEEE4typeEEEEL_ZNSZ_IS15_S1B_EEEEEENS_14adaptor_cursorIS18_S15_EENS_16adaptor_sentinelIS1E_S1B_EEEE4typeES12_(a1 + 8, &v6);
  for (i = *a2; *a2 != v6; i = *a2)
  {
    result = _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters35filter_runtime_mode_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, a1, i);
    if (result)
    {
      break;
    }

    result = _ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEppEv(a2);
  }

  return result;
}

double _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateISI_EEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 96) & 1) == 0)
  {
    v2 = a1 + 8;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 8);
    v4 = *(a1 + 48);
    v5 = v2;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateISI_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSP_INSQ_INS3_11__wrap_iterIPKS7_EENS0_ISC_SN_E7adaptorEEEEENS0_ISJ_NSM_ISK_EEE7adaptorEEEEE(a1, &v4);
    result = *&v4;
    *(a1 + 72) = v4;
    *(a1 + 88) = v5;
    *(a1 + 96) = 1;
  }

  return result;
}

uint64_t _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateISI_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSP_INSQ_INS3_11__wrap_iterIPKS7_EENS0_ISC_SN_E7adaptorEEEEENS0_ISJ_NSM_ISK_EEE7adaptorEEEEE(uint64_t a1, uint64_t *a2)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 8);
  result = _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 16);
  v5 = *(*(a1 + 24) + 8);
  for (i = *a2; *a2 != v5; i = *a2)
  {
    result = _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters22filter_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, a1, i);
    if (result)
    {
      break;
    }

    v7 = a2[1];
    v8 = a2[2];
    *a2 += 16;
    _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS2_11__wrap_iterIPKS6_EE(v7, a2);
    result = _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(v8, a2);
  }

  return result;
}

uint64_t *_ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEppEv(uint64_t *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[1];
  *a1 += 16;
  _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS2_11__wrap_iterIPKS6_EE(v4, a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(v3, a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateISI_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSP_INSQ_INS3_11__wrap_iterIPKS7_EENS0_ISC_SN_E7adaptorEEEEENS0_ISJ_NSM_ISK_EEE7adaptorEEEEE(v2, a1);
  return a1;
}

uint64_t _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEENS_14logical_negateISJ_EEEESM_LNS_11cardinalityEn1EE11end_cursor_ISP_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS10_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS12_EEEEE4typeENS10_IDTcldtclsr3stdE7declvalINS10_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS12_EEEEE4typeEEE3endclsr3stdE7declvalIS12_EEEEE4typeEEEEL_ZNSZ_IS15_S1B_EEEEEENS_14adaptor_cursorIS18_S15_EENS_16adaptor_sentinelIS1E_S1B_EEEE4typeES12_@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateISI_EEE11cache_beginEv(a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 8);
  result = _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 16);
  *a2 = *(*(a1 + 24) + 8);
  a2[1] = a1 + 16;
  a2[2] = a1 + 8;
  a2[3] = a1;
  return result;
}

uint64_t _ZN6ranges14adaptor_cursorINS_14basic_iteratorINS0_INS1_INS0_INS1_INS0_INS1_INS0_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEENSA_INSU_IS12_SO_EESX_E7adaptorEEEEENSA_INSU_IS17_SW_EENSI_INSJ_35filter_runtime_bind_operation_nodesMUlSN_E_EEEE7adaptorEE4nextIS1G_vEEvv(uint64_t *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = _ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEppEv(a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EENS_14logical_negateISK_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSQ_INSR_INSQ_INSR_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSN_ISI_EEE7adaptorEEEEENS0_ISJ_SO_E7adaptorEEEEENS0_ISL_SW_E7adaptorEEEEE(v3, v4);

  return _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EESK_EENS_14logical_negateINSD_35filter_runtime_bind_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSS_INST_INSS_INST_INSS_INST_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSO_ISI_EEE7adaptorEEEEENS0_ISJ_NSO_ISK_EEE7adaptorEEEEENS0_ISL_SY_E7adaptorEEEEENS0_ISM_S13_E7adaptorEEEEE(v2, a1);
}

double _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_40filter_runtime_bind_text_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 272) & 1) == 0)
  {
    v2 = a1 + 16;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EESK_EENS_14logical_negateINSD_35filter_runtime_bind_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 16);
    v3 = *(a1 + 192);
    v6 = *(a1 + 176);
    v7 = v3;
    *&v8 = *(a1 + 208);
    *(&v8 + 1) = v2;
    _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_40filter_runtime_bind_text_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS4_11__wrap_iterIPSV_EENS0_ISD_NSU_ISJ_EEE7adaptorEEEEENS0_ISK_NSU_ISL_EEE7adaptorEEEEENS0_ISM_S15_E7adaptorEEEEENS0_ISN_S1A_E7adaptorEEEEENS0_ISO_NSU_ISP_EEE7adaptorEEEEENS_19iter_transform_viewISQ_NS_10indirectedISS_EEE7adaptorILb0EEEEEEE(a1, &v6);
    v4 = v7;
    *(a1 + 224) = v6;
    *(a1 + 240) = v4;
    result = *&v8;
    *(a1 + 256) = v8;
    *(a1 + 272) = 1;
  }

  return result;
}

__n128 _ZNK6ranges5_move7move_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INSt3__111__wrap_iterIPKNS5_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS5_6vectorIS9_NS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSD_INS_11filter_viewISK_SR_EENSL_INSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENSD_INSX_ISY_SZ_EESS_E7adaptorEEEEENSD_INSX_IS15_SR_EES10_E7adaptorEEEEENSD_INSX_IS1A_SZ_EENSL_INSM_34filter_runtime_map_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSX_IS1F_S1G_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSQ_E_EEEE7adaptorILb0EEEEEEENSD_INS_14transform_viewIS1N_S1Q_EENSL_INSM_39filter_runtime_map_text_operation_nodesMUlRSA_E_EEEE7adaptorEEEEES25_NS5_20back_insert_iteratorISI_EEEENS_6detail13in_out_resultIT_T1_EES2A_T0_S2B_@<Q0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v12 = a3;
  v7 = *a1;
  if (*a1 != *a2)
  {
    do
    {
      _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSG_DpOSH_(v7, &v13);
      v11 = v13;
      std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v12, &v11);
      if (*(&v11 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
      }

      v8 = *(a1 + 48);
      _ZN6ranges14adaptor_cursorINS_14basic_iteratorINS0_INS1_INS0_INS1_INS0_INS1_INS0_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEENSA_INSU_IS12_SO_EESX_E7adaptorEEEEENSA_INSU_IS17_SW_EENSI_INSJ_34filter_runtime_map_operation_nodesMUlSN_E_EEEE7adaptorEE4nextIS1G_vEEvv(a1);
      _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_34filter_runtime_map_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_39filter_runtime_map_text_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS4_11__wrap_iterIPSV_EENS0_ISD_NSU_ISJ_EEE7adaptorEEEEENS0_ISK_NSU_ISL_EEE7adaptorEEEEENS0_ISM_S15_E7adaptorEEEEENS0_ISN_S1A_E7adaptorEEEEENS0_ISO_NSU_ISP_EEE7adaptorEEEEENS_19iter_transform_viewISQ_NS_10indirectedISS_EEE7adaptorILb0EEEEEEE(v8, a1);
      v7 = *a1;
    }

    while (*a1 != *a2);
    a3 = v12;
  }

  v9 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v9;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = *(a1 + 48);
  *(a4 + 56) = a3;
  return result;
}

void sub_1A69766CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_34filter_runtime_map_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_39filter_runtime_map_text_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS4_11__wrap_iterIPSV_EENS0_ISD_NSU_ISJ_EEE7adaptorEEEEENS0_ISK_NSU_ISL_EEE7adaptorEEEEENS0_ISM_S15_E7adaptorEEEEENS0_ISN_S1A_E7adaptorEEEEENS0_ISO_NSU_ISP_EEE7adaptorEEEEENS_19iter_transform_viewISQ_NS_10indirectedISS_EEE7adaptorILb0EEEEEEE(uint64_t a1, uint64_t *a2)
{
  _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENS_14logical_negateINSE_34filter_runtime_map_operation_nodesMUlSI_E_EEEEESO_LNS_11cardinalityEn1EE11end_cursor_ISS_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS15_EEEEE4typeENS13_IDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS15_EEEEE4typeEEE3endclsr3stdE7declvalIS15_EEEEE4typeEEEEL_ZNS12_IS18_S1E_EEEEEENS_14adaptor_cursorIS1B_S18_EENS_16adaptor_sentinelIS1H_S1E_EEEE4typeES15_(a1 + 16, v11);
  v3 = *a2;
  if (*a2 != v11[0])
  {
    v4 = "Error: Invalid operation node: no operation description in the node";
    while (1)
    {
      _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSG_DpOSH_(v3, &v9);
      if (!*ZinRtOperationNode::GetFirstOperation(v9))
      {
        goto LABEL_15;
      }

      FirstOperation = ZinRtOperationNode::GetFirstOperation(v9);
      if (!*FirstOperation)
      {
        break;
      }

      if (!v6)
      {
        break;
      }

      v7 = *(FirstOperation + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = v6[19];
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      else
      {
        v8 = v6[19];
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if ((v8 & 0xFFFF0000) != 0x10000)
      {
        _ZN6ranges14adaptor_cursorINS_14basic_iteratorINS0_INS1_INS0_INS1_INS0_INS1_INS0_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEENSA_INSU_IS12_SO_EESX_E7adaptorEEEEENSA_INSU_IS17_SW_EENSI_INSJ_34filter_runtime_map_operation_nodesMUlSN_E_EEEE7adaptorEE4nextIS1G_vEEvv(a2);
        v3 = *a2;
        if (*a2 != v11[0])
        {
          continue;
        }
      }

      return;
    }

    v4 = "Error: Invalid operation node given: No first operation or the type of first operation is misconfigured";
LABEL_15:
    ZinAssertImpl(v4);
  }
}

void sub_1A6976850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

double _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENS_14logical_negateINSE_34filter_runtime_map_operation_nodesMUlSI_E_EEEEESO_LNS_11cardinalityEn1EE11end_cursor_ISS_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS15_EEEEE4typeENS13_IDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS15_EEEEE4typeEEE3endclsr3stdE7declvalIS15_EEEEE4typeEEEEL_ZNS12_IS18_S1E_EEEEEENS_14adaptor_cursorIS1B_S18_EENS_16adaptor_sentinelIS1H_S1E_EEEE4typeES15_@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EESK_EENS_14logical_negateINSD_34filter_runtime_map_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EENS_14logical_negateISK_EEE11cache_beginEv(a1 + 8);
  _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEENS_14logical_negateISJ_EEEESM_LNS_11cardinalityEn1EE11end_cursor_ISP_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS10_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS12_EEEEE4typeENS10_IDTcldtclsr3stdE7declvalINS10_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS12_EEEEE4typeEEE3endclsr3stdE7declvalIS12_EEEEE4typeEEEEL_ZNSZ_IS15_S1B_EEEEEENS_14adaptor_cursorIS18_S15_EENS_16adaptor_sentinelIS1E_S1B_EEEE4typeES12_(a1 + 16, v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = a1 + 8;
  *(a2 + 40) = a1;
  return result;
}

double _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EESK_EENS_14logical_negateINSD_34filter_runtime_map_operation_nodesMUlSH_E_EEEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 200) & 1) == 0)
  {
    v2 = a1 + 8;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EENS_14logical_negateISK_EEE11cache_beginEv(a1 + 8);
    v3 = *(a1 + 136);
    v6 = *(a1 + 120);
    v7 = v3;
    v8 = v2;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EESK_EENS_14logical_negateINSD_34filter_runtime_map_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSS_INST_INSS_INST_INSS_INST_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSO_ISI_EEE7adaptorEEEEENS0_ISJ_NSO_ISK_EEE7adaptorEEEEENS0_ISL_SY_E7adaptorEEEEENS0_ISM_S13_E7adaptorEEEEE(a1, &v6);
    result = *&v6;
    v5 = v7;
    *(a1 + 160) = v6;
    *(a1 + 176) = v5;
    *(a1 + 192) = v8;
    *(a1 + 200) = 1;
  }

  return result;
}

uint64_t _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EESK_EENS_14logical_negateINSD_34filter_runtime_map_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSS_INST_INSS_INST_INSS_INST_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSO_ISI_EEE7adaptorEEEEENS0_ISJ_NSO_ISK_EEE7adaptorEEEEENS0_ISL_SY_E7adaptorEEEEENS0_ISM_S13_E7adaptorEEEEE(uint64_t a1, uint64_t **a2)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EENS_14logical_negateISK_EEE11cache_beginEv(a1 + 8);
  result = _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEENS_14logical_negateISJ_EEEESM_LNS_11cardinalityEn1EE11end_cursor_ISP_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS10_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS12_EEEEE4typeENS10_IDTcldtclsr3stdE7declvalINS10_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS12_EEEEE4typeEEE3endclsr3stdE7declvalIS12_EEEEE4typeEEEEL_ZNSZ_IS15_S1B_EEEEEENS_14adaptor_cursorIS18_S15_EENS_16adaptor_sentinelIS1E_S1B_EEEE4typeES12_(a1 + 16, v9);
  v5 = v9[0];
  for (i = *a2; *a2 != v5; i = *a2)
  {
    result = _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters34filter_runtime_map_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, a1, i);
    if (result)
    {
      break;
    }

    v7 = a2[4];
    v8 = _ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEppEv(a2);
    result = _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EENS_14logical_negateISK_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSQ_INSR_INSQ_INSR_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSN_ISI_EEE7adaptorEEEEENS0_ISJ_SO_E7adaptorEEEEENS0_ISL_SW_E7adaptorEEEEE(v7, v8);
  }

  return result;
}

BOOL _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters34filter_runtime_map_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v6 = *a3;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = _ZNK16ZinRtNodeFilters34filter_runtime_map_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_clES5_(a2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_1A6976A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN6ranges14adaptor_cursorINS_14basic_iteratorINS0_INS1_INS0_INS1_INS0_INS1_INS0_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEENSA_INSU_IS12_SO_EESX_E7adaptorEEEEENSA_INSU_IS17_SW_EENSI_INSJ_34filter_runtime_map_operation_nodesMUlSN_E_EEEE7adaptorEE4nextIS1G_vEEvv(uint64_t *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = _ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEppEv(a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EENS_14logical_negateISK_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSQ_INSR_INSQ_INSR_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSN_ISI_EEE7adaptorEEEEENS0_ISJ_SO_E7adaptorEEEEENS0_ISL_SW_E7adaptorEEEEE(v3, v4);

  return _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EESK_EENS_14logical_negateINSD_34filter_runtime_map_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSS_INST_INSS_INST_INSS_INST_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSO_ISI_EEE7adaptorEEEEENS0_ISJ_NSO_ISK_EEE7adaptorEEEEENS0_ISL_SY_E7adaptorEEEEENS0_ISM_S13_E7adaptorEEEEE(v2, a1);
}

double _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_34filter_runtime_map_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_39filter_runtime_map_text_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 272) & 1) == 0)
  {
    v2 = a1 + 16;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EESK_EENS_14logical_negateINSD_34filter_runtime_map_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 16);
    v3 = *(a1 + 192);
    v6 = *(a1 + 176);
    v7 = v3;
    *&v8 = *(a1 + 208);
    *(&v8 + 1) = v2;
    _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_34filter_runtime_map_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_39filter_runtime_map_text_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS4_11__wrap_iterIPSV_EENS0_ISD_NSU_ISJ_EEE7adaptorEEEEENS0_ISK_NSU_ISL_EEE7adaptorEEEEENS0_ISM_S15_E7adaptorEEEEENS0_ISN_S1A_E7adaptorEEEEENS0_ISO_NSU_ISP_EEE7adaptorEEEEENS_19iter_transform_viewISQ_NS_10indirectedISS_EEE7adaptorILb0EEEEEEE(a1, &v6);
    v4 = v7;
    *(a1 + 224) = v6;
    *(a1 + 240) = v4;
    result = *&v8;
    *(a1 + 256) = v8;
    *(a1 + 272) = 1;
  }

  return result;
}

__n128 _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INSt3__111__wrap_iterIPKNS5_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS5_6vectorIS9_NS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSD_INS_11filter_viewISK_SR_EENSL_INSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENSD_INSX_ISY_SZ_EENSL_INSM_51filter_runtime_patch_mutable_weight_operation_nodesMUlSQ_E_EEEE7adaptorEEEEES1B_NS5_20back_insert_iteratorISI_EEEENS_6detail13in_out_resultIT_T1_EES1G_T0_S1H_@<Q0>(__int128 **a1@<X1>, __int128 **a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v13 = a3;
  v6 = *a1;
  if (v6 != *a2)
  {
    do
    {
      std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v13, v6);
      v9 = a1[2];
      v8 = a1[3];
      v10 = a1[1];
      ++*a1;
      _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS2_11__wrap_iterIPKS6_EE(v10, a1);
      _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(v9, a1);
      _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateINSD_51filter_runtime_patch_mutable_weight_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSQ_INSR_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSM_ISI_EEE7adaptorEEEEENS0_ISJ_NSM_ISK_EEE7adaptorEEEEE(v8, a1);
      v6 = *a1;
    }

    while (*a1 != *a2);
    a3 = v13;
  }

  result = *a1;
  v12 = *(a1 + 1);
  *a4 = *a1;
  *(a4 + 16) = v12;
  *(a4 + 32) = a3;
  return result;
}

uint64_t _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateINSD_51filter_runtime_patch_mutable_weight_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSQ_INSR_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSM_ISI_EEE7adaptorEEEEENS0_ISJ_NSM_ISK_EEE7adaptorEEEEE(uint64_t a1, uint64_t **a2)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 8);
  result = _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 16);
  v5 = *(*(a1 + 24) + 8);
  for (i = *a2; *a2 != v5; i = *a2)
  {
    result = _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters51filter_runtime_patch_mutable_weight_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, a1, i);
    if (result)
    {
      break;
    }

    v7 = a2[1];
    v8 = a2[2];
    *a2 += 2;
    _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS2_11__wrap_iterIPKS6_EE(v7, a2);
    result = _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(v8, a2);
  }

  return result;
}

BOOL _ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters51filter_runtime_patch_mutable_weight_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v6 = *a3;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = _ZNK16ZinRtNodeFilters51filter_runtime_patch_mutable_weight_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_clES5_(a2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_1A6976CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL _ZNK16ZinRtNodeFilters51filter_runtime_patch_mutable_weight_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_clES5_(uint64_t a1, uint64_t a2)
{
  {
    ZinAssertImpl("Error: Invalid runtime operation node given.");
  }

  v4 = v3;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*ZinRtOperationNode::GetFirstOperation(v3))
  {
    ZinAssertImpl("Error: Invalid operation node: no operation description in the node");
  }

  FirstOperation = ZinRtOperationNode::GetFirstOperation(v4);
  {
    ZinAssertImpl("Error: Invalid operation node given: No first operation or the type of first operation is misconfigured");
  }

  v8 = *(FirstOperation + 8);
  if (!v8)
  {
    v9 = v7[18];
    if (!v5)
    {
      return v9 == 3;
    }

    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = v7[18];
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  if (v5)
  {
LABEL_10:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v9 == 3;
}

void sub_1A6976E2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateINSD_51filter_runtime_patch_mutable_weight_operation_nodesMUlSH_E_EEEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 96) & 1) == 0)
  {
    v2 = a1 + 8;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 8);
    v4 = *(a1 + 48);
    v5 = v2;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateINSD_51filter_runtime_patch_mutable_weight_operation_nodesMUlSH_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSQ_INSR_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSM_ISI_EEE7adaptorEEEEENS0_ISJ_NSM_ISK_EEE7adaptorEEEEE(a1, &v4);
    result = *&v4;
    *(a1 + 72) = v4;
    *(a1 + 88) = v5;
    *(a1 + 96) = 1;
  }

  return result;
}

uint64_t _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEENS_14logical_negateINSE_51filter_runtime_patch_mutable_weight_operation_nodesMUlSI_E_EEEEESM_LNS_11cardinalityEn1EE11end_cursor_ISQ_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS11_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS13_EEEEE4typeENS11_IDTcldtclsr3stdE7declvalINS11_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS13_EEEEE4typeEEE3endclsr3stdE7declvalIS13_EEEEE4typeEEEEL_ZNS10_IS16_S1C_EEEEEENS_14adaptor_cursorIS19_S16_EENS_16adaptor_sentinelIS1F_S1C_EEEE4typeES13_@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEENS_14logical_negateINSD_51filter_runtime_patch_mutable_weight_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 8);
  result = _ZN6ranges14remove_if_viewINS_8ref_viewIKNSt3__16vectorINS2_10shared_ptrI18ZinRtOperationNodeEENS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 16);
  *a2 = *(*(a1 + 24) + 8);
  a2[1] = a1 + 16;
  a2[2] = a1 + 8;
  a2[3] = a1;
  return result;
}

__n128 _ZNK6ranges5_copy7copy_fnclINS_14basic_iteratorINS_14adaptor_cursorINS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INS3_INS4_INSt3__111__wrap_iterIPKNS5_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS5_6vectorIS9_NS5_9allocatorIS9_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSD_INS_11filter_viewISK_SR_EENSL_INSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENSD_INSX_ISY_SZ_EESS_E7adaptorEEEEENSD_INSX_IS15_SR_EES10_E7adaptorEEEEENSD_INSX_IS1A_SZ_EENSL_INSM_35filter_runtime_bind_operation_nodesMUlSQ_E_EEEE7adaptorEEEEENS_19iter_transform_viewINSX_IS1F_S1G_EENS_10indirectedIN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSQ_E_EEEE7adaptorILb0EEEEEEENSD_INS_14transform_viewIS1N_S1Q_EENSL_INSM_38filter_runtime_bind_io_operation_nodesMUlRSA_E_EEEE7adaptorEEEEES25_NS5_20back_insert_iteratorISI_EEEENS_6detail13in_out_resultIT_T1_EES2A_T0_S2B_@<Q0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v13 = a3;
  v7 = *a1;
  if (*a1 != *a2)
  {
    do
    {
      _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSG_DpOSH_(v7, &v11);
      std::back_insert_iterator<std::vector<std::shared_ptr<ZinRtOperationNode>>>::operator=[abi:ne200100](&v13, &v11);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v8 = *(a1 + 48);
      _ZN6ranges14adaptor_cursorINS_14basic_iteratorINS0_INS1_INS0_INS1_INS0_INS1_INS0_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEENSA_INSU_IS12_SO_EESX_E7adaptorEEEEENSA_INSU_IS17_SW_EENSI_INSJ_35filter_runtime_bind_operation_nodesMUlSN_E_EEEE7adaptorEE4nextIS1G_vEEvv(a1);
      _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_38filter_runtime_bind_io_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS4_11__wrap_iterIPSV_EENS0_ISD_NSU_ISJ_EEE7adaptorEEEEENS0_ISK_NSU_ISL_EEE7adaptorEEEEENS0_ISM_S15_E7adaptorEEEEENS0_ISN_S1A_E7adaptorEEEEENS0_ISO_NSU_ISP_EEE7adaptorEEEEENS_19iter_transform_viewISQ_NS_10indirectedISS_EEE7adaptorILb0EEEEEEE(v8, a1);
      v7 = *a1;
    }

    while (*a1 != *a2);
    a3 = v13;
  }

  v9 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v9;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = *(a1 + 48);
  *(a4 + 56) = a3;
  return result;
}

void sub_1A6976FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_38filter_runtime_bind_io_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS4_11__wrap_iterIPSV_EENS0_ISD_NSU_ISJ_EEE7adaptorEEEEENS0_ISK_NSU_ISL_EEE7adaptorEEEEENS0_ISM_S15_E7adaptorEEEEENS0_ISN_S1A_E7adaptorEEEEENS0_ISO_NSU_ISP_EEE7adaptorEEEEENS_19iter_transform_viewISQ_NS_10indirectedISS_EEE7adaptorILb0EEEEEEE(uint64_t a1, uint64_t *a2)
{
  _ZN6ranges12view_adaptorINS_14remove_if_viewINS_11filter_viewINS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENS_14logical_negateINSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEEESO_LNS_11cardinalityEn1EE11end_cursor_ISS_EEN4meta6detail4_if_IJNS4_17integral_constantIbXaaL_ZN8concepts4defs7same_asINS4_5decayIDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE13begin_adaptorclsr3stdE7declvalIRT_EEEEE4typeEEE5beginclsr3stdE7declvalIS15_EEEEE4typeENS13_IDTcldtclsr3stdE7declvalINS13_IDTclsr12range_accessE11end_adaptorclsr3stdE7declvalIS15_EEEEE4typeEEE3endclsr3stdE7declvalIS15_EEEEE4typeEEEEL_ZNS12_IS18_S1E_EEEEEENS_14adaptor_cursorIS1B_S18_EENS_16adaptor_sentinelIS1H_S1E_EEEE4typeES15_(a1 + 16, v13);
  v3 = *a2;
  if (*a2 != v13[0])
  {
    v4 = "Error: Invalid operation node: no operation description in the node";
    while (1)
    {
      _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSG_DpOSH_(v3, &v11);
      if (!*ZinRtOperationNode::GetFirstOperation(v11))
      {
        goto LABEL_19;
      }

      FirstOperation = ZinRtOperationNode::GetFirstOperation(v11);
      if (!*FirstOperation)
      {
        break;
      }

      if (!v6)
      {
        break;
      }

      v7 = v6;
      v8 = *(FirstOperation + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = 0;
      v10 = v7[19];
      do
      {
        if (io_resource_types[v9] == HIWORD(v10))
        {
          break;
        }

        ++v9;
      }

      while (v9 != 3);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v9 == 3)
      {
        _ZN6ranges14adaptor_cursorINS_14basic_iteratorINS0_INS1_INS0_INS1_INS0_INS1_INS0_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_INSJ_35filter_runtime_mode_operation_nodesMUlSN_E_EEEE7adaptorEEEEENSA_INSU_ISV_SW_EESP_E7adaptorEEEEENSA_INSU_IS12_SO_EESX_E7adaptorEEEEENSA_INSU_IS17_SW_EENSI_INSJ_35filter_runtime_bind_operation_nodesMUlSN_E_EEEE7adaptorEE4nextIS1G_vEEvv(a2);
        v3 = *a2;
        if (*a2 != v13[0])
        {
          continue;
        }
      }

      return;
    }

    v4 = "Error: Invalid operation node given: No first operation or the type of first operation is misconfigured";
LABEL_19:
    ZinAssertImpl(v4);
  }
}

void sub_1A697717C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

double _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_38filter_runtime_bind_io_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 272) & 1) == 0)
  {
    v2 = a1 + 16;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSD_35filter_runtime_mode_operation_nodesMUlSH_E_EEESI_EESK_EENS_14logical_negateINSD_35filter_runtime_bind_operation_nodesMUlSH_E_EEEE11cache_beginEv(a1 + 16);
    v3 = *(a1 + 192);
    v6 = *(a1 + 176);
    v7 = v3;
    *&v8 = *(a1 + 208);
    *(&v8 + 1) = v2;
    _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSE_35filter_runtime_mode_operation_nodesMUlSI_E_EEESJ_EESL_EENSE_35filter_runtime_bind_operation_nodesMUlSI_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSI_E_EEENS_14logical_negateINSE_38filter_runtime_bind_io_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS10_INS11_INS4_11__wrap_iterIPSV_EENS0_ISD_NSU_ISJ_EEE7adaptorEEEEENS0_ISK_NSU_ISL_EEE7adaptorEEEEENS0_ISM_S15_E7adaptorEEEEENS0_ISN_S1A_E7adaptorEEEEENS0_ISO_NSU_ISP_EEE7adaptorEEEEENS_19iter_transform_viewISQ_NS_10indirectedISS_EEE7adaptorILb0EEEEEEE(a1, &v6);
    v4 = v7;
    *(a1 + 224) = v6;
    *(a1 + 240) = v4;
    result = *&v8;
    *(a1 + 256) = v8;
    *(a1 + 272) = 1;
  }

  return result;
}

void _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS6_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSL_35filter_runtime_mode_operation_nodesMUlSP_E_EEESQ_EESS_EENSL_34filter_runtime_map_operation_nodesMUlSP_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSP_E_EEENS_14logical_negateINSL_44filter_runtime_planar_map_io_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS17_INS18_INS17_INS18_INS17_INS18_INS17_INS18_INS17_INS18_INS17_INS18_INS4_11__wrap_iterIPS12_EENS0_ISD_NS11_ISJ_EEE7adaptorEEEEENS0_ISK_NS11_ISQ_EEE7adaptorEEEEENS0_ISR_NS11_ISS_EEE7adaptorEEEEENS0_IST_S1H_E7adaptorEEEEENS0_ISU_S1M_E7adaptorEEEEENS0_ISV_NS11_ISW_EEE7adaptorEEEEENS_19iter_transform_viewISX_NS_10indirectedISZ_EEE7adaptorILb0EEEEEEE(uint64_t a1, uint64_t *a2)
{
  _ZNK6ranges5_end_2fnclIRNS_14transform_viewINS_11filter_viewINS4_INS4_INS4_INS4_INS4_INS_8ref_viewIKNSt3__16vectorINS6_10shared_ptrI18ZinRtOperationNodeEENS6_9allocatorISA_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS8_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS8_I13ZinRtBaseNodeEEE_EEENSN_35filter_runtime_mode_operation_nodesMUlSR_E_EEESS_EESU_EENSN_34filter_runtime_map_operation_nodesMUlSR_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSR_E_EEEEEN4meta6detail5_condIXL_ZNS0_14has_member_endIT_EEEEE6invokeINS1_15_member_result_ENS1_19_non_member_result_EE6invokeIS18_EEOS18_(a1 + 8, v15);
  v3 = v15[0];
  v4 = *a2;
  if (*a2 != v15[0])
  {
    v5 = "Error: Invalid runtime operation node: no operation description in the node";
    while (1)
    {
      _ZNK6ranges9invoke_fnclIRKN19ZinRtNodeTransforms27transform_to_operation_nodeMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSG_DpOSH_(v4, &v13);
      if (!*ZinRtOperationNode::GetFirstOperation(v13))
      {
        goto LABEL_19;
      }

      FirstOperation = ZinRtOperationNode::GetFirstOperation(v13);
      if (!*FirstOperation)
      {
        break;
      }

      if (!v7)
      {
        break;
      }

      v8 = v7;
      v9 = *(FirstOperation + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = 0;
      v11 = v8[19];
      do
      {
        if (io_resource_types[v10] == HIWORD(v11))
        {
          break;
        }

        ++v10;
      }

      while (v10 != 3);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v10 == 3)
      {
        v12 = a2[6];
        _ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS4_I10ZinRtGraphEEE3__0EEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_IN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INSU_ISV_S11_EENSI_INSW_35filter_runtime_mode_operation_nodesMUlS10_E_EEEE7adaptorEEEEENSA_INSU_IS17_S18_EES12_E7adaptorEEEEENSA_INSU_IS1E_S11_EES19_E7adaptorEEEEppEv(a2);
        _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EESR_EENS_14logical_negateINSK_34filter_runtime_map_operation_nodesMUlSO_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSZ_INS10_INSZ_INS10_INSZ_INS10_INSZ_INS10_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSV_ISI_EEE7adaptorEEEEENS0_ISJ_NSV_ISP_EEE7adaptorEEEEENS0_ISQ_NSV_ISR_EEE7adaptorEEEEENS0_ISS_S1A_E7adaptorEEEEENS0_IST_S1F_E7adaptorEEEEE(v12, a2);
        v4 = *a2;
        if (*a2 != v3)
        {
          continue;
        }
      }

      return;
    }

    v5 = "Error: Invalid runtime bind buffer operation given.";
LABEL_19:
    ZinAssertImpl(v5);
  }
}

void sub_1A697739C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

double _ZNK6ranges5_end_2fnclIRNS_14transform_viewINS_11filter_viewINS4_INS4_INS4_INS4_INS4_INS_8ref_viewIKNSt3__16vectorINS6_10shared_ptrI18ZinRtOperationNodeEENS6_9allocatorISA_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS8_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS8_I13ZinRtBaseNodeEEE_EEENSN_35filter_runtime_mode_operation_nodesMUlSR_E_EEESS_EESU_EENSN_34filter_runtime_map_operation_nodesMUlSR_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSR_E_EEEEEN4meta6detail5_condIXL_ZNS0_14has_member_endIT_EEEEE6invokeINS1_15_member_result_ENS1_19_non_member_result_EE6invokeIS18_EEOS18_@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 8;
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EESR_EENS_14logical_negateINSK_34filter_runtime_map_operation_nodesMUlSO_E_EEEE11cache_beginEv(a1 + 8);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EENS_14logical_negateISR_EEE11cache_beginEv(a1 + 16);
  _ZNK6ranges5_end_2fnclIRNS_11filter_viewINS3_INS3_INS3_INS_8ref_viewIKNSt3__16vectorINS5_10shared_ptrI18ZinRtOperationNodeEENS5_9allocatorIS9_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS7_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEENSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEESR_EEEEN4meta6detail5_condIXL_ZNS0_14has_member_endIT_EEEEE6invokeINS1_15_member_result_ENS1_19_non_member_result_EE6invokeIS11_EEOS11_(a1 + 24, v7);
  *(&v8 + 1) = a1 + 16;
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v4;
  return result;
}

double _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EESR_EENS_14logical_negateINSK_34filter_runtime_map_operation_nodesMUlSO_E_EEEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 280) & 1) == 0)
  {
    v2 = a1 + 232;
    v3 = a1 + 8;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EENS_14logical_negateISR_EEE11cache_beginEv(a1 + 8);
    v4 = *(a1 + 200);
    v7 = *(a1 + 184);
    v8 = v4;
    *&v9 = *(a1 + 216);
    *(&v9 + 1) = v3;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EESR_EENS_14logical_negateINSK_34filter_runtime_map_operation_nodesMUlSO_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSZ_INS10_INSZ_INS10_INSZ_INS10_INSZ_INS10_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSV_ISI_EEE7adaptorEEEEENS0_ISJ_NSV_ISP_EEE7adaptorEEEEENS0_ISQ_NSV_ISR_EEE7adaptorEEEEENS0_ISS_S1A_E7adaptorEEEEENS0_IST_S1F_E7adaptorEEEEE(a1, &v7);
    v5 = v8;
    *(a1 + 232) = v7;
    *(a1 + 248) = v5;
    result = *&v9;
    *(v2 + 32) = v9;
    *(a1 + 280) = 1;
  }

  return result;
}

void _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EESR_EENS_14logical_negateINSK_34filter_runtime_map_operation_nodesMUlSO_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSZ_INS10_INSZ_INS10_INSZ_INS10_INSZ_INS10_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSV_ISI_EEE7adaptorEEEEENS0_ISJ_NSV_ISP_EEE7adaptorEEEEENS0_ISQ_NSV_ISR_EEE7adaptorEEEEENS0_ISS_S1A_E7adaptorEEEEENS0_IST_S1F_E7adaptorEEEEE(uint64_t a1, uint64_t **a2)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EENS_14logical_negateISR_EEE11cache_beginEv(a1 + 8);
  _ZNK6ranges5_end_2fnclIRNS_11filter_viewINS3_INS3_INS3_INS_8ref_viewIKNSt3__16vectorINS5_10shared_ptrI18ZinRtOperationNodeEENS5_9allocatorIS9_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS7_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEENSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEESR_EEEEN4meta6detail5_condIXL_ZNS0_14has_member_endIT_EEEEE6invokeINS1_15_member_result_ENS1_19_non_member_result_EE6invokeIS11_EEOS11_(a1 + 16, &v6);
  v4 = v6;
  for (i = *a2; *a2 != v4; i = *a2)
  {
    if (_ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters34filter_runtime_map_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, a1, i))
    {
      break;
    }

    _ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS4_I10ZinRtGraphEEE3__0EEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_IN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INSU_ISV_S11_EENSI_INSW_35filter_runtime_mode_operation_nodesMUlS10_E_EEEE7adaptorEEEEENSA_INSU_IS17_S18_EES12_E7adaptorEEEEENSA_INSU_IS1E_S11_EES19_E7adaptorEEEEppEv(a2);
  }
}

double _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EENS_14logical_negateISR_EEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 216) & 1) == 0)
  {
    v2 = a1 + 8;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEENS_14logical_negateISP_EEE11cache_beginEv(a1 + 8);
    v3 = *(a1 + 152);
    v6 = *(a1 + 136);
    v7 = v3;
    v8 = v2;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EENS_14logical_negateISR_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSX_INSY_INSX_INSY_INSX_INSY_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSU_ISI_EEE7adaptorEEEEENS0_ISJ_NSU_ISP_EEE7adaptorEEEEENS0_ISQ_SV_E7adaptorEEEEENS0_ISS_S18_E7adaptorEEEEE(a1, &v6);
    result = *&v6;
    v5 = v7;
    *(a1 + 176) = v6;
    *(a1 + 192) = v5;
    *(a1 + 208) = v8;
    *(a1 + 216) = 1;
  }

  return result;
}

void _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EENS_14logical_negateISR_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSX_INSY_INSX_INSY_INSX_INSY_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSU_ISI_EEE7adaptorEEEEENS0_ISJ_NSU_ISP_EEE7adaptorEEEEENS0_ISQ_SV_E7adaptorEEEEENS0_ISS_S18_E7adaptorEEEEE(uint64_t a1, uint64_t *a2)
{
  _ZNK6ranges5_end_2fnclIRNS_11filter_viewINS3_INS3_INS3_INS_8ref_viewIKNSt3__16vectorINS5_10shared_ptrI18ZinRtOperationNodeEENS5_9allocatorIS9_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS7_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEENSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEESR_EEEEN4meta6detail5_condIXL_ZNS0_14has_member_endIT_EEEEE6invokeINS1_15_member_result_ENS1_19_non_member_result_EE6invokeIS11_EEOS11_(a1 + 8, v7);
  v4 = v7[0];
  for (i = *a2; *a2 != v4; i = *a2)
  {
    if (_ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters35filter_runtime_mode_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, a1, i))
    {
      break;
    }

    v6 = a2[4];
    _ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS4_I10ZinRtGraphEEE3__0EEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_IN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INSU_ISV_S11_EENSI_INSW_35filter_runtime_mode_operation_nodesMUlS10_E_EEEE7adaptorEEEEppEv(a2);
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEENS_14logical_negateISP_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSW_INSX_INSW_INSX_INS3_11__wrap_iterIPKS7_EENS0_ISC_NST_ISI_EEE7adaptorEEEEENS0_ISJ_SU_E7adaptorEEEEENS0_ISQ_NST_ISR_EEE7adaptorEEEEE(v6, a2);
  }
}

double _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEENS_14logical_negateISP_EEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    v2 = a1 + 8;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEEE11cache_beginEv(a1 + 8);
    v5 = *(a1 + 96);
    *&v6 = *(a1 + 112);
    *(&v6 + 1) = v2;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEENS_14logical_negateISP_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSW_INSX_INSW_INSX_INS3_11__wrap_iterIPKS7_EENS0_ISC_NST_ISI_EEE7adaptorEEEEENS0_ISJ_SU_E7adaptorEEEEENS0_ISQ_NST_ISR_EEE7adaptorEEEEE(a1, &v5);
    result = *&v5;
    v4 = v6;
    *(a1 + 128) = v5;
    *(a1 + 144) = v4;
    *(a1 + 160) = 1;
  }

  return result;
}

void _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEENS_14logical_negateISP_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSW_INSX_INSW_INSX_INS3_11__wrap_iterIPKS7_EENS0_ISC_NST_ISI_EEE7adaptorEEEEENS0_ISJ_SU_E7adaptorEEEEENS0_ISQ_NST_ISR_EEE7adaptorEEEEE(uint64_t a1, uint64_t *a2)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEEE11cache_beginEv(a1 + 8);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 16);
  ranges::remove_if_view<ranges::ref_view<std::vector<std::shared_ptr<ZinRtOperationNode>> const>,ranges::logical_negate<ZinRtGraphValidationUtils::GetRtPlanarMapIOOperationNodes(std::shared_ptr<ZinRtGraph> const&)::$_0>>::cache_begin(a1 + 24);
  v4 = *(*(a1 + 32) + 8);
  for (i = *a2; *a2 != v4; i = *a2)
  {
    if (_ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters22filter_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, a1, i))
    {
      break;
    }

    _ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS4_I10ZinRtGraphEEE3__0EEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_IN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INSU_ISV_S11_EENSI_INSW_35filter_runtime_mode_operation_nodesMUlS10_E_EEEE7adaptorEEEEppEv(a2);
  }
}

double _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    v2 = a1 + 8;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 8);
    v4 = *(a1 + 64);
    v5 = v2;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSV_INSW_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSR_ISI_EEE7adaptorEEEEENS0_ISJ_NSR_ISP_EEE7adaptorEEEEE(a1, &v4);
    result = *&v4;
    *(a1 + 88) = v4;
    *(a1 + 104) = v5;
    *(a1 + 112) = 1;
  }

  return result;
}

void _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSV_INSW_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSR_ISI_EEE7adaptorEEEEENS0_ISJ_NSR_ISP_EEE7adaptorEEEEE(uint64_t a1, uint64_t a2)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 8);
  ranges::remove_if_view<ranges::ref_view<std::vector<std::shared_ptr<ZinRtOperationNode>> const>,ranges::logical_negate<ZinRtGraphValidationUtils::GetRtPlanarMapIOOperationNodes(std::shared_ptr<ZinRtGraph> const&)::$_0>>::cache_begin(a1 + 16);
  v4 = *(*(a1 + 24) + 8);
  for (i = *a2; *a2 != v4; i = *a2)
  {
    if (_ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters35filter_runtime_mode_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, a1, i))
    {
      break;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    *a2 += 16;
    ranges::remove_if_view<ranges::ref_view<std::vector<std::shared_ptr<ZinRtOperationNode>> const>,ranges::logical_negate<ZinRtGraphValidationUtils::GetRtPlanarMapIOOperationNodes(std::shared_ptr<ZinRtGraph> const&)::$_0>>::satisfy_forward(v6, a2);
    _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(v7, a2);
  }
}

double _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    v2 = a1 + 8;
    ranges::remove_if_view<ranges::ref_view<std::vector<std::shared_ptr<ZinRtOperationNode>> const>,ranges::logical_negate<ZinRtGraphValidationUtils::GetRtPlanarMapIOOperationNodes(std::shared_ptr<ZinRtGraph> const&)::$_0>>::cache_begin(a1 + 8);
    *&v4 = *(a1 + 40);
    *(&v4 + 1) = v2;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(a1, &v4);
    result = *&v4;
    *(a1 + 56) = v4;
    *(a1 + 72) = 1;
  }

  return result;
}

void _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(uint64_t a1, uint64_t *a2)
{
  ranges::remove_if_view<ranges::ref_view<std::vector<std::shared_ptr<ZinRtOperationNode>> const>,ranges::logical_negate<ZinRtGraphValidationUtils::GetRtPlanarMapIOOperationNodes(std::shared_ptr<ZinRtGraph> const&)::$_0>>::cache_begin(a1 + 8);
  v4 = *(*(a1 + 16) + 8);
  for (i = *a2; *a2 != v4; i = *a2)
  {
    if (_ZNK6ranges9invoke_fnclIRN16ZinRtNodeFilters22filter_operation_nodesMUlRKNSt3__110shared_ptrI13ZinRtBaseNodeEEE_EJRKNS4_I18ZinRtOperationNodeEEEEEDTclcvT_fp_spcvT0_fp0_EEOSF_DpOSG_(&ranges::invoke, a1, i))
    {
      break;
    }

    v6 = a2[1];
    *a2 += 16;
    ranges::remove_if_view<ranges::ref_view<std::vector<std::shared_ptr<ZinRtOperationNode>> const>,ranges::logical_negate<ZinRtGraphValidationUtils::GetRtPlanarMapIOOperationNodes(std::shared_ptr<ZinRtGraph> const&)::$_0>>::satisfy_forward(v6, a2);
  }
}

void ranges::remove_if_view<ranges::ref_view<std::vector<std::shared_ptr<ZinRtOperationNode>> const>,ranges::logical_negate<ZinRtGraphValidationUtils::GetRtPlanarMapIOOperationNodes(std::shared_ptr<ZinRtGraph> const&)::$_0>>::cache_begin(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v2 = **(result + 8);
    ranges::remove_if_view<ranges::ref_view<std::vector<std::shared_ptr<ZinRtOperationNode>> const>,ranges::logical_negate<ZinRtGraphValidationUtils::GetRtPlanarMapIOOperationNodes(std::shared_ptr<ZinRtGraph> const&)::$_0>>::satisfy_forward(result, &v2);
    *(result + 32) = v2;
    *(result + 40) = 1;
  }
}

void ranges::remove_if_view<ranges::ref_view<std::vector<std::shared_ptr<ZinRtOperationNode>> const>,ranges::logical_negate<ZinRtGraphValidationUtils::GetRtPlanarMapIOOperationNodes(std::shared_ptr<ZinRtGraph> const&)::$_0>>::satisfy_forward(uint64_t a1, void **a2)
{
  v2 = *(*(a1 + 8) + 8);
  for (i = *a2; i != v2; *a2 = i)
  {
    v6 = *(a1 + 16);
    v7 = v6[1];
    if (*v6 == v7)
    {
      break;
    }

    v8 = *v6 + 8;
    do
    {
      v9 = *(v8 - 8);
      v10 = i[1];
      v18 = *i;
      v19 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (std::__tree<std::shared_ptr<ZinRtBaseNode>,ZinIrIdComparator<std::shared_ptr<ZinRtBaseNode>>,std::allocator<std::shared_ptr<ZinRtBaseNode>>>::__count_unique<std::shared_ptr<ZinRtBaseNode>>(v9, &v18))
      {
        v11 = *(v8 - 8);
        v12 = *i;
        v13 = i[1];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = v12;
        v14 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinRtBaseNode>>,std::vector<NodeKey<std::shared_ptr<ZinRtBaseNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinRtBaseNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinRtBaseNode>>,std::vector<NodeKey<std::shared_ptr<ZinRtBaseNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinRtBaseNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinRtBaseNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinRtBaseNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinRtBaseNode>>,std::vector<NodeKey<std::shared_ptr<ZinRtBaseNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinRtBaseNode>>>,std::hash<NodeKey<std::shared_ptr<ZinRtBaseNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinRtBaseNode>>,std::vector<NodeKey<std::shared_ptr<ZinRtBaseNode>>>>>>::find<NodeKey<std::shared_ptr<ZinRtBaseNode>>>((v11 + 64), &v20);
        v15 = (v11 + 104);
        if (v14)
        {
          v15 = v14 + 3;
        }

        v16 = v15[1] != *v15;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }

      else
      {
        v16 = 0;
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v17 = v8 == v7 || v16;
      v8 += 8;
    }

    while (v17 != 1);
    if (!v16)
    {
      break;
    }

    i = *a2 + 2;
  }
}

void sub_1A6977AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS4_I10ZinRtGraphEEE3__0EEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_IN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INSU_ISV_S11_EENSI_INSW_35filter_runtime_mode_operation_nodesMUlS10_E_EEEE7adaptorEEEEppEv(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 8);
  *a1 += 16;
  ranges::remove_if_view<ranges::ref_view<std::vector<std::shared_ptr<ZinRtOperationNode>> const>,ranges::logical_negate<ZinRtGraphValidationUtils::GetRtPlanarMapIOOperationNodes(std::shared_ptr<ZinRtGraph> const&)::$_0>>::satisfy_forward(v4, a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS3_11__wrap_iterIPKS7_EENS0_ISC_NSK_ISI_EEE7adaptorEEEEE(v3, a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSV_INSW_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSR_ISI_EEE7adaptorEEEEENS0_ISJ_NSR_ISP_EEE7adaptorEEEEE(v2, a1);
  return a1;
}

void _ZNK6ranges5_end_2fnclIRNS_11filter_viewINS3_INS3_INS3_INS_8ref_viewIKNSt3__16vectorINS5_10shared_ptrI18ZinRtOperationNodeEENS5_9allocatorIS9_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS7_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS7_I13ZinRtBaseNodeEEE_EEENSM_35filter_runtime_mode_operation_nodesMUlSQ_E_EEESR_EEEEN4meta6detail5_condIXL_ZNS0_14has_member_endIT_EEEEE6invokeINS1_15_member_result_ENS1_19_non_member_result_EE6invokeIS11_EEOS11_(uint64_t a1@<X0>, void *a2@<X8>)
{
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEENS_14logical_negateISP_EEE11cache_beginEv(a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENS_14logical_negateINSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEEE11cache_beginEv(a1 + 8);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EENS_14logical_negateIN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEEE11cache_beginEv(a1 + 16);
  ranges::remove_if_view<ranges::ref_view<std::vector<std::shared_ptr<ZinRtOperationNode>> const>,ranges::logical_negate<ZinRtGraphValidationUtils::GetRtPlanarMapIOOperationNodes(std::shared_ptr<ZinRtGraph> const&)::$_0>>::cache_begin(a1 + 24);
  *a2 = *(*(a1 + 32) + 8);
  a2[1] = a1 + 24;
  a2[2] = a1 + 16;
  a2[3] = a1 + 8;
  a2[4] = a1;
}

uint64_t *_ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS4_I10ZinRtGraphEEE3__0EEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_IN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INSU_ISV_S11_EENSI_INSW_35filter_runtime_mode_operation_nodesMUlS10_E_EEEE7adaptorEEEEENSA_INSU_IS17_S18_EES12_E7adaptorEEEEENSA_INSU_IS1E_S11_EES19_E7adaptorEEEEppEv(uint64_t *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  _ZN6ranges14basic_iteratorINS_14adaptor_cursorINS0_INS1_INS0_INS1_INSt3__111__wrap_iterIPKNS2_10shared_ptrI18ZinRtOperationNodeEEEENS_14remove_if_viewINS_8ref_viewIKNS2_6vectorIS6_NS2_9allocatorIS6_EEEEEENS_14logical_negateIZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS4_I10ZinRtGraphEEE3__0EEE7adaptorEEEEENSA_INS_11filter_viewISH_SO_EENSI_IN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS4_I13ZinRtBaseNodeEEE_EEEE7adaptorEEEEENSA_INSU_ISV_S11_EENSI_INSW_35filter_runtime_mode_operation_nodesMUlS10_E_EEEE7adaptorEEEEppEv(a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEENS_14logical_negateISP_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSW_INSX_INSW_INSX_INS3_11__wrap_iterIPKS7_EENS0_ISC_NST_ISI_EEE7adaptorEEEEENS0_ISJ_SU_E7adaptorEEEEENS0_ISQ_NST_ISR_EEE7adaptorEEEEE(v3, a1);
  _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EENS_14logical_negateISR_EEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINSX_INSY_INSX_INSY_INSX_INSY_INS3_11__wrap_iterIPKS7_EENS0_ISC_NSU_ISI_EEE7adaptorEEEEENS0_ISJ_NSU_ISP_EEE7adaptorEEEEENS0_ISQ_SV_E7adaptorEEEEENS0_ISS_S18_E7adaptorEEEEE(v2, a1);
  return a1;
}

double _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS6_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSL_35filter_runtime_mode_operation_nodesMUlSP_E_EEESQ_EESS_EENSL_34filter_runtime_map_operation_nodesMUlSP_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSP_E_EEENS_14logical_negateINSL_44filter_runtime_planar_map_io_operation_nodesMUlRKS8_E_EEEE11cache_beginEv(uint64_t a1)
{
  if ((*(a1 + 360) & 1) == 0)
  {
    v2 = a1 + 16;
    _ZN6ranges14remove_if_viewINS_11filter_viewINS1_INS1_INS1_INS1_INS_8ref_viewIKNSt3__16vectorINS3_10shared_ptrI18ZinRtOperationNodeEENS3_9allocatorIS7_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS5_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS5_I13ZinRtBaseNodeEEE_EEENSK_35filter_runtime_mode_operation_nodesMUlSO_E_EEESP_EESR_EENS_14logical_negateINSK_34filter_runtime_map_operation_nodesMUlSO_E_EEEE11cache_beginEv(a1 + 16);
    v3 = *(a1 + 264);
    v4 = *(a1 + 280);
    v7 = *(a1 + 248);
    v8 = v3;
    v9 = v4;
    v10 = v2;
    _ZN6ranges14remove_if_viewINS_14transform_viewINS_11filter_viewINS2_INS2_INS2_INS2_INS2_INS_8ref_viewIKNSt3__16vectorINS4_10shared_ptrI18ZinRtOperationNodeEENS4_9allocatorIS8_EEEEEEZN25ZinRtGraphValidationUtils30GetRtPlanarMapIOOperationNodesERKNS6_I10ZinRtGraphEEE3__0EEN16ZinRtNodeFilters22filter_operation_nodesMUlRKNS6_I13ZinRtBaseNodeEEE_EEENSL_35filter_runtime_mode_operation_nodesMUlSP_E_EEESQ_EESS_EENSL_34filter_runtime_map_operation_nodesMUlSP_E_EEEN19ZinRtNodeTransforms27transform_to_operation_nodeMUlSP_E_EEENS_14logical_negateINSL_44filter_runtime_planar_map_io_operation_nodesMUlRKS8_E_EEEE15satisfy_forwardERNS_14basic_iteratorINS_14adaptor_cursorINS17_INS18_INS17_INS18_INS17_INS18_INS17_INS18_INS17_INS18_INS17_INS18_INS4_11__wrap_iterIPS12_EENS0_ISD_NS11_ISJ_EEE7adaptorEEEEENS0_ISK_NS11_ISQ_EEE7adaptorEEEEENS0_ISR_NS11_ISS_EEE7adaptorEEEEENS0_IST_S1H_E7adaptorEEEEENS0_ISU_S1M_E7adaptorEEEEENS0_ISV_NS11_ISW_EEE7adaptorEEEEENS_19iter_transform_viewISX_NS_10indirectedISZ_EEE7adaptorILb0EEEEEEE(a1, &v7);
    v5 = v8;
    *(a1 + 304) = v7;
    *(a1 + 320) = v5;
    result = *&v9;
    *(a1 + 336) = v9;
    *(a1 + 352) = v10;
    *(a1 + 360) = 1;
  }

  return result;
}

uint64_t *ZinComputeMutableProgramFindSectionSymbol(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192);
  v3 = *(a1 + 200) - v2;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = v3 >> 3;
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  do
  {
    v8 = *v2;
    if ((*v2)[4] == a2)
    {
      v9 = *v8;
      if (*(*v8 + 8) == *(*a2 + 32) && (!v5 || (v10 = v5[1]) != 0 && strncmp(v10, "SectionSymbol_", 0xFuLL)))
      {
        v5 = v8;
        if ((~*(v9 + 4) & 0xE) != 0)
        {
          ZinAssertImpl("Non-section symbol pointing to a section.");
        }
      }
    }

    ++v2;
    --v7;
  }

  while (v7);
  return v5;
}

uint64_t ZinComputeMutableProgramDestroy(ZinComputeMutableProgram *a1)
{
  if (!a1)
  {
    return 3;
  }

  ZinComputeMutableProgramDestroyProcedures(a1);
  ZinComputeMutableProgramDestroyBindings(a1);
  ZinComputeMutableProgramDestroyFvmlibs(a1);
  ZinComputeMutableProgramDestroyOperations(a1);
  ZinComputeMutableProgramDestroyMutableJitOperations(a1);
  ZinComputeMutableProgramDestroySegments<ZinComputeMutableProgram>(a1);
  ZinComputeMutableProgramDestroySymbols<ZinComputeMutableProgram>(a1);
  ZinComputeMutableProgramDestroySymbolTable<ZinComputeMutableProgram>(a1);
  ZinComputeMutableProgramDestroySymbolCommon<ZinComputeMutableProgram>(a1);
  ZinComputeMutableProgram::~ZinComputeMutableProgram(a1);
  MEMORY[0x1AC55A070]();
  return 0;
}

void ZinComputeMutableProgramDestroyProcedures(uint64_t a1)
{
  v2 = *(a1 + 160);
  v1 = *(a1 + 168);
  if (v1 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        if (!*v5 || (free(*v5), *v5 = 0, v6 = *(a1 + 160), (v5 = *(v6 + 8 * v4)) != 0))
        {
          v7 = *(v5 + 80);
          if (v7)
          {
            *(v5 + 88) = v7;
            operator delete(v7);
          }

          v8 = *(v5 + 56);
          if (v8)
          {
            *(v5 + 64) = v8;
            operator delete(v8);
          }

          v9 = *(v5 + 32);
          if (v9)
          {
            *(v5 + 40) = v9;
            operator delete(v9);
          }

          v10 = *(v5 + 8);
          if (v10)
          {
            *(v5 + 16) = v10;
            operator delete(v10);
          }

          MEMORY[0x1AC55A070](v5, 0xD0C4058488F0BLL);
          v6 = *(a1 + 160);
        }

        *(v6 + 8 * v4) = 0;
        v2 = *(a1 + 160);
        v1 = *(a1 + 168);
      }

      ++v4;
    }

    while (v4 < (v1 - v2) >> 3);
  }
}

void ZinComputeMutableProgramDestroyBindings(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (*(a1 + 144) != v1)
  {
    v3 = 0;
    do
    {
      v4 = *(v1 + 8 * v3);
      if (v4)
      {
        free(*v4);
        *v4 = 0;
        v5 = *(*(a1 + 136) + 8 * v3);
      }

      else
      {
        v5 = 0;
      }

      free(v5);
      *(*(a1 + 136) + 8 * v3++) = 0;
      v1 = *(a1 + 136);
    }

    while (v3 < (*(a1 + 144) - v1) >> 3);
  }
}

void ZinComputeMutableProgramDestroyFvmlibs(uint64_t a1)
{
  v2 = *(a1 + 64);
  v1 = *(a1 + 72);
  if (v1 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        if (*v5)
        {
          free(*v5);
          *v5 = 0;
          v5 = *(*(a1 + 64) + 8 * v4);
        }

        free(v5);
        *(*(a1 + 64) + 8 * v4) = 0;
        v2 = *(a1 + 64);
        v1 = *(a1 + 72);
      }

      ++v4;
    }

    while (v4 < (v1 - v2) >> 3);
  }
}

ZinComputeProcedureMutableOperation *ZinComputeMutableProgramDestroyOperations(ZinComputeProcedureMutableOperation *result)
{
  v1 = *(result + 11);
  if (*(result + 12) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = *(v1 + 8 * v3);
      if (result)
      {
        ZinComputeProcedureMutableOperation::~ZinComputeProcedureMutableOperation(result);
        result = MEMORY[0x1AC55A070]();
        v1 = *(v2 + 11);
      }

      *(v1 + 8 * v3++) = 0;
      v1 = *(v2 + 11);
    }

    while (v3 < (*(v2 + 12) - v1) >> 3);
  }

  return result;
}

void ZinComputeMutableProgramDestroyMutableJitOperations(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (*(a1 + 120) != v1)
  {
    v3 = 0;
    do
    {
      v4 = *(v1 + 8 * v3);
      if (!*v4 || (free(*v4), v5 = *(a1 + 112), **(v5 + 8 * v3) = 0, (v4 = *(v5 + 8 * v3)) != 0))
      {
        v6 = *(v4 + 48);
        if (v6)
        {
          *(v4 + 56) = v6;
          operator delete(v6);
        }

        v7 = *(v4 + 24);
        if (v7)
        {
          *(v4 + 32) = v7;
          operator delete(v7);
        }

        MEMORY[0x1AC55A070](v4, 0xE0C40B0317CB6);
        v5 = *(a1 + 112);
      }

      *(v5 + 8 * v3++) = 0;
      v1 = *(a1 + 112);
    }

    while (v3 < (*(a1 + 120) - v1) >> 3);
  }
}

uint64_t ZinComputeMutableProgramAddAneTDOperation(uint64_t a1, const char **a2, uint64_t a3, ZinComputeProcedureMutableOperation **a4)
{
  if (!a3)
  {
    return 3;
  }

  v23 = 0;
  v8 = ZinComputeMutableProgramAddOperation(a1, a2, &v23);
  if (!v8)
  {
    __n = 0;
    ANETDThreadStateSize = ZinComputeProgramGetANETDThreadStateSize(*(a1 + 16), 0, a3, 0, 0, &__n + 1);
    if (ANETDThreadStateSize || (ANETDThreadStateSize = ZinComputeProgramGetANETDThreadStateArgumentSize(*(a1 + 16), 0, a3, 0, 0, &__n), ANETDThreadStateSize))
    {
      v8 = ANETDThreadStateSize;
      if (v23)
      {
        ZinComputeProcedureMutableOperation::~ZinComputeProcedureMutableOperation(v23);
        MEMORY[0x1AC55A070](v10);
      }
    }

    else
    {
      v12 = HIDWORD(__n);
      if (*a2)
      {
        v13 = v12 + (SymStrlen(*a2) & 0xFFFFFFF8) + 24;
      }

      else
      {
        v13 = HIDWORD(__n) + 16;
      }

      v14 = malloc_type_calloc(1uLL, v13, 0x1000040451B5BE8uLL);
      if (v14)
      {
        v15 = v14;
        v16 = v14 + 4;
        *v14 = 4;
        v14[1] = v13;
        v17 = HIDWORD(__n);
        v18 = HIDWORD(__n) >> 2;
        v14[2] = 1;
        v14[3] = v18;
        memcpy(v14 + 4, a3, 0x800uLL);
        *(v15 + 258) = *(a3 + 2048);
        v15[518] = *(a3 + 2056);
        v15[519] = *(a3 + 2060);
        v15[520] = *(a3 + 2064);
        v15[521] = *(a3 + 2068);
        *(v15 + 261) = *(a3 + 2072);
        *(v15 + 262) = *(a3 + 2080);
        v15[526] = *(a3 + 2088);
        *(v15 + 264) = *(a3 + 2096);
        *(v15 + 265) = *(a3 + 2104);
        *(v15 + 266) = *(a3 + 2112);
        *(v15 + 267) = *(a3 + 2120);
        v15[536] = *(a3 + 2128);
        memcpy(v15 + 538, (a3 + 2136), __n);
        v19 = v23;
        *v23 = v15;
        *(v19 + 1) = v16;
        if (*a2)
        {
          v20 = (v17 + 16);
          v15[527] = v20;
          strcpy(v15 + v20, *a2);
        }

        else
        {
          v15[527] = 0;
        }

        ZinComputeMutableProgramUpdateWithOperation(a1, a2, v19, v13);
        v8 = 0;
        if (a4)
        {
          *a4 = v19;
        }
      }

      else
      {
        if (v23)
        {
          ZinComputeProcedureMutableOperation::~ZinComputeProcedureMutableOperation(v23);
          MEMORY[0x1AC55A070](v21);
        }

        return 1;
      }
    }
  }

  return v8;
}

uint64_t ZinComputeMutableProgramAddOperation(uint64_t a1, const char **a2, void *a3)
{
  if (a1)
  {
    operator new();
  }

  return 3;
}

int32x2_t ZinComputeMutableProgramUpdateWithOperation(int32x2_t **a1, uint64_t a2, uint64_t a3, __int32 a4)
{
  v8 = a3;
  std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](a2 + 32, &v8);
  std::vector<ZinIrOpLayer *>::push_back[abi:ne200100]((a1 + 11), &v8);
  v6.i32[0] = 1;
  v6.i32[1] = a4;
  result = vadd_s32((*a1)[2], v6);
  (*a1)[2] = result;
  return result;
}

uint64_t ZinComputeMutableProgramAddAneSegmentOperation(uint64_t a1, const char **a2, uint64_t a3, ZinComputeProcedureMutableOperation **a4)
{
  if (!a3)
  {
    return 3;
  }

  v23 = 0;
  v8 = ZinComputeMutableProgramAddOperation(a1, a2, &v23);
  if (!v8)
  {
    __n = 0;
    ANESegThreadStateSize = ZinComputeProgramGetANESegThreadStateSize(*(a1 + 16), 0, a3, 0, 0, &__n + 1);
    if (ANESegThreadStateSize || (ANESegThreadStateSize = ZinComputeProgramGetANESegThreadStateArgumentSize(*(a1 + 16), 0, a3, 0, 0, &__n), ANESegThreadStateSize))
    {
      v8 = ANESegThreadStateSize;
      if (v23)
      {
        ZinComputeProcedureMutableOperation::~ZinComputeProcedureMutableOperation(v23);
        MEMORY[0x1AC55A070](v10);
      }
    }

    else
    {
      v12 = HIDWORD(__n);
      if (*a2)
      {
        v13 = v12 + (SymStrlen(*a2) & 0xFFFFFFF8) + 24;
      }

      else
      {
        v13 = HIDWORD(__n) + 16;
      }

      v14 = malloc_type_calloc(1uLL, v13, 0x1000040451B5BE8uLL);
      if (v14)
      {
        v15 = v14;
        v16 = v14 + 4;
        *v14 = 4;
        v14[1] = v13;
        v17 = HIDWORD(__n);
        v18 = HIDWORD(__n) >> 2;
        v14[2] = 4;
        v14[3] = v18;
        memcpy(v14 + 4, a3, 0x800uLL);
        *(v15 + 258) = *(a3 + 2048);
        *(v15 + 259) = *(a3 + 2056);
        v15[520] = *(a3 + 2064);
        v15[521] = *(a3 + 2068);
        v15[522] = *(a3 + 2072);
        v15[523] = *(a3 + 2076);
        v15[524] = *(a3 + 2080);
        v15[525] = *(a3 + 2084);
        v15[526] = *(a3 + 2088);
        v15[527] = *(a3 + 2092);
        v15[528] = *(a3 + 2096);
        v15[529] = *(a3 + 2100);
        *(v15 + 266) = *(a3 + 2112);
        *(v15 + 267) = *(a3 + 2120);
        *(v15 + 268) = *(a3 + 2128);
        *(v15 + 269) = *(a3 + 2136);
        v15[540] = *(a3 + 2144);
        memcpy(v15 + 542, (a3 + 2152), __n);
        v19 = v23;
        *v23 = v15;
        *(v19 + 1) = v16;
        if (*a2)
        {
          v20 = (v17 + 16);
          v15[530] = v20;
          strcpy(v15 + v20, *a2);
        }

        else
        {
          v15[530] = 0;
        }

        ZinComputeMutableProgramUpdateWithOperation(a1, a2, v19, v13);
        v8 = 0;
        if (a4)
        {
          *a4 = v19;
        }
      }

      else
      {
        if (v23)
        {
          ZinComputeProcedureMutableOperation::~ZinComputeProcedureMutableOperation(v23);
          MEMORY[0x1AC55A070](v21);
        }

        return 1;
      }
    }
  }

  return v8;
}

uint64_t ZinComputeMutableProgramAddSneOperation(int32x2_t **a1, const char **a2, _DWORD *a3, uint64_t *a4, ZinComputeProcedureMutableOperation **a5)
{
  if (!a3)
  {
    return 3;
  }

  v49 = 0;
  v10 = ZinComputeMutableProgramAddOperation(a1, a2, &v49);
  if (!v10)
  {
    v44 = a5;
    v45 = a1;
    if (*a2)
    {
      v11 = SymStrlen(*a2) + 1;
    }

    else
    {
      v11 = 0;
    }

    __src = 0;
    v47 = 0;
    v48 = 0;
    v12 = *a4;
    v13 = a4[1];
    if (*a4 == v13)
    {
      goto LABEL_28;
    }

    v42 = v11;
    do
    {
      v14 = v12;
      if (*(v12 + 23) < 0)
      {
        v14 = *v12;
      }

      v15 = SymStrlen(v14) + 1;
      v16 = v47;
      if (v47 >= v48)
      {
        v18 = __src;
        v19 = v47 - __src;
        v20 = (v47 - __src) >> 2;
        v21 = v20 + 1;
        if ((v20 + 1) >> 62)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v22 = v48 - __src;
        if ((v48 - __src) >> 1 > v21)
        {
          v21 = v22 >> 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v23 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(&__src, v23);
        }

        v24 = (4 * v20);
        v25 = &v24[-((v47 - __src) >> 2)];
        *v24 = v15;
        v17 = (v24 + 1);
        memcpy(v25, v18, v19);
        v26 = __src;
        __src = v25;
        v47 = v17;
        v48 = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v47 = v15;
        v17 = v16 + 4;
      }

      v47 = v17;
      v12 += 24;
    }

    while (v12 != v13);
    v27 = __src;
    v11 = v42;
    if (__src == v17)
    {
LABEL_28:
      v28 = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        v29 = *v27;
        v27 += 4;
        v28 += v29;
      }

      while (v27 != v17);
    }

    v30 = ((v11 + v28 + 7) & 0xFFFFFFF8) + 296;
    v31 = malloc_type_calloc(1uLL, v30, 0x1000040451B5BE8uLL);
    v32 = v31;
    if (!v31)
    {
      if (v49)
      {
        ZinComputeProcedureMutableOperation::~ZinComputeProcedureMutableOperation(v49);
        MEMORY[0x1AC55A070]();
      }

      v10 = 1;
      goto LABEL_48;
    }

    *v31 = 4;
    v31[1] = v30;
    *(v31 + 1) = 0x4600000006;
    v31[4] = *a3;
    memcpy(v31 + 6, a3 + 2, 0x110uLL);
    v33 = v49;
    *v49 = v32;
    *(v33 + 1) = v32 + 4;
    v43 = v33;
    if (*a2)
    {
      v32[5] = 296;
      strncpy(v32 + 296, *a2, v11);
      v34 = v11 + 296;
    }

    else
    {
      v32[5] = 0;
      v34 = 296;
    }

    v35 = v32[9];
    if (v35)
    {
      v36 = 0;
      v37 = 0;
      v38 = v32 + 12;
      do
      {
        if (*(v38 - 2) <= 2)
        {
          if (v37 >= ((v47 - __src) >> 2))
          {
            ZinComputeProcedureMutableOperation::~ZinComputeProcedureMutableOperation(v43);
            MEMORY[0x1AC55A070]();
LABEL_47:
            v10 = 0;
            goto LABEL_48;
          }

          *v38 = v34;
          v39 = *a4 + 24 * v37;
          if (*(v39 + 23) < 0)
          {
            v39 = *v39;
          }

          v40 = *(__src + v37);
          strncpy(v32 + v34, v39, v40);
          v34 += v40;
          ++v37;
          v35 = v32[9];
        }

        ++v36;
        v38 += 4;
      }

      while (v36 < v35);
    }

    ZinComputeMutableProgramUpdateWithOperation(v45, a2, v43, v30);
    if (!v44)
    {
      goto LABEL_47;
    }

    v10 = 0;
    *v44 = v43;
LABEL_48:
    if (__src)
    {
      v47 = __src;
      operator delete(__src);
    }
  }

  return v10;
}

void sub_1A69789D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinComputeProgramGetSymbolVariableNamesFromSNEThread(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!a1)
  {
    return 3;
  }

  result = 3;
  if (a2 && *(a1 + 8) == 6 && *a2 == 1)
  {
    v6 = a2[5];
    if (v6)
    {
      v8 = 0;
      v9 = a2 + 8;
      do
      {
        if (*(v9 - 2) <= 2)
        {
          v10 = *v9;
          if (v10)
          {
            v11 = strlen((a1 + v10));
            if (v11 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v12 = v11;
            if (v11 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v26) = v11;
            if (v11)
            {
              memcpy(&v25, (a1 + v10), v11);
            }

            *(&v25 + v12) = 0;
            v14 = *(a3 + 8);
            v13 = *(a3 + 16);
            if (v14 >= v13)
            {
              v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 3);
              v17 = v16 + 1;
              if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
              }

              v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a3) >> 3);
              if (2 * v18 > v17)
              {
                v17 = 2 * v18;
              }

              if (v18 >= 0x555555555555555)
              {
                v19 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v19 = v17;
              }

              v27.__end_cap_.__value_ = a3;
              if (v19)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v19);
              }

              v20 = 24 * v16;
              *v20 = v25;
              *(v20 + 16) = v26;
              v15 = 24 * v16 + 24;
              v21 = *(a3 + 8) - *a3;
              v22 = 24 * v16 - v21;
              memcpy((v20 - v21), *a3, v21);
              v23 = *a3;
              *a3 = v22;
              *(a3 + 8) = v15;
              v24 = *(a3 + 16);
              *(a3 + 16) = 0;
              v27.__end_ = v23;
              v27.__end_cap_.__value_ = v24;
              v27.__first_ = v23;
              v27.__begin_ = v23;
              std::__split_buffer<std::string>::~__split_buffer(&v27);
            }

            else
            {
              *v14 = v25;
              *(v14 + 16) = v26;
              v15 = v14 + 24;
            }

            *(a3 + 8) = v15;
            v6 = a2[5];
          }
        }

        ++v8;
        v9 += 4;
      }

      while (v8 < v6);
    }

    return 0;
  }

  return result;
}

void sub_1A6978C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinComputeMutableProgramAddAneAotMetadataOperation(int32x2_t **a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a1 && a3)
  {
    operator new();
  }

  return 3;
}

uint64_t ZinComputeMutableProgramAddFvmlib(int32x2_t **a1, uint64_t a2, uint64_t a3, const char *a4, void *a5)
{
  if (!a1)
  {
    return 3;
  }

  if (a2)
  {
    v10 = ZinComputeMutableProgramContainsSection<ZinComputeMutableProgram>(a1, a2);
    v11 = 3;
    if (!a4 || (v10 & 1) == 0)
    {
      return v11;
    }
  }

  else if (!a4)
  {
    return 3;
  }

  if (strnlen(a4, 0x400uLL) > 0x3FF)
  {
    return 3;
  }

  v13 = a1 + 8;
  if ((a1[9] - a1[8]) >= 0x7F1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinComputeMutableProgramAddFvmlib();
    }

    return 1;
  }

  v11 = 1;
  v14 = malloc_type_calloc(1uLL, 0x18uLL, 0x70040305B5C43uLL);
  if (!v14)
  {
    return v11;
  }

  v15 = v14;
  v16 = strnlen(a4, 0x400uLL);
  v17 = malloc_type_calloc(1uLL, (v16 & 0xFFFFFFFFFFFFFFF8) + 32, 0x1000040504FFAC1uLL);
  *v15 = v17;
  if (!v17)
  {
    free(v15);
    return 1;
  }

  v18 = v17;
  if (a2)
  {
    v19 = 64;
  }

  else
  {
    v19 = 65;
  }

  *v17 = v19;
  v20 = strnlen(a4, 0x400uLL);
  v21 = *(a3 + 4);
  v18[1] = (v20 & 0xFFFFFFF8) + 32;
  v18[2] = 24;
  v18[3] = v21;
  strcpy((*v15 + 24), a4);
  v15[1] = *v15 + 24;
  v15[2] = a2;
  v23 = a1[9];
  v22 = a1[10];
  if (v23 >= v22)
  {
    v25 = v23 - *v13;
    if ((v25 + 1) >> 61)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v26 = v22 - *v13;
    v27 = v26 >> 2;
    if (v26 >> 2 <= (v25 + 1))
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      v28 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>((a1 + 8), v28);
    }

    *(8 * v25) = v15;
    v24 = (8 * v25 + 8);
    v29 = a1[8];
    v30 = (a1[9] - v29);
    v31 = (8 * v25 - v30);
    memcpy(v31, v29, v30);
    v32 = a1[8];
    a1[8] = v31;
    a1[9] = v24;
    a1[10] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v23 = v15;
    v24 = v23 + 1;
  }

  a1[9] = v24;
  v33.i32[0] = 1;
  v33.i32[1] = *(*v15 + 4);
  (*a1)[2] = vadd_s32((*a1)[2], v33);
  v11 = 0;
  if (a5)
  {
    *a5 = v15;
  }

  return v11;
}

uint64_t ZinComputeMutableProgramAddProcedure(void *a1, char *__s1, const char ***a3)
{
  if (!a1 || __s1 && strnlen(__s1, 0x200uLL) > 0x1FF)
  {
    return 3;
  }

  v7 = a1[20];
  v8 = a1[21];
  while (1)
  {
    if (v7 == v8)
    {
      operator new();
    }

    v9 = *v7;
    v10 = **v7;
    if (__s1)
    {
      break;
    }

    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_12:
    ++v7;
  }

  if (!v10 || strncmp(__s1, v10, 0x200uLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  result = 0;
  if (a3)
  {
    *a3 = v9;
  }

  return result;
}

uint64_t ZinComputeMutableProgramAddAneSinglePlaneCompressedBinding(int32x2_t **a1, _DWORD *a2, const char *a3, const char *a4, const char *a5, const char *a6, int a7, void *a8)
{
  v51 = *MEMORY[0x1E69E9840];
  v50[0] = a4;
  v50[1] = a3;
  v50[2] = a5;
  v50[3] = a6;
  v48 = 0;
  v49 = 0;
  __p = 0;
  std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&__p, v50, &v51, 4uLL);
  v15 = StringsAreValid(&__p);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  v16 = v15 ^ 1;
  if (!a2)
  {
    v16 = 1;
  }

  if (v16)
  {
    return 3;
  }

  if (a7)
  {
    v17 = 6;
  }

  else
  {
    v17 = 1;
  }

  result = 3;
  if (a1 && *a2 == v17)
  {
    v19 = SymStrlen(a3);
    v20 = SymStrlen(a4);
    v21 = SymStrlen(a5);
    v22 = SymStrlen(a6);
    v23 = v20 + 1;
    v24 = v21 + 1;
    v50[0] = 0;
    if (AddBindingAllocateBindingAndThread(a2, (v19 + v23 + v24 + v22 + 9) & 0xFFFFFFF8, a3, v50))
    {
      return 1;
    }

    else
    {
      v25 = v50[0];
      v26 = *(v50[0] + 16);
      v27 = v19 + *(v26 + 8);
      v28 = *v50[0];
      v29 = (v27 + 1);
      *(v26 + 16) = v29;
      v30 = v29 + v23 + v24;
      if (a7)
      {
        v31 = 40;
      }

      else
      {
        v31 = 32;
      }

      if (a7)
      {
        v32 = 64;
      }

      else
      {
        v32 = 56;
      }

      *(v26 + v31) = v29 + v23;
      *(v26 + v32) = v30;
      strcpy((v28 + v29), a4);
      strcpy((v28 + *(v26 + v31)), a5);
      strcpy((v28 + *(v26 + v32)), a6);
      v25[1] = v28 + *(v26 + 16);
      v34 = a1[18];
      v33 = a1[19];
      if (v34 >= v33)
      {
        v36 = a1[17];
        v37 = v34 - v36;
        if ((v37 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v38 = v33 - v36;
        v39 = v38 >> 2;
        if (v38 >> 2 <= (v37 + 1))
        {
          v39 = v37 + 1;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFF8)
        {
          v40 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v39;
        }

        if (v40)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>((a1 + 17), v40);
        }

        *(8 * v37) = v25;
        v35 = (8 * v37 + 8);
        v41 = a1[17];
        v42 = (a1[18] - v41);
        v43 = (8 * v37 - v42);
        memcpy(v43, v41, v42);
        v44 = a1[17];
        a1[17] = v43;
        a1[18] = v35;
        a1[19] = 0;
        if (v44)
        {
          operator delete(v44);
        }
      }

      else
      {
        *v34 = v25;
        v35 = v34 + 1;
      }

      a1[18] = v35;
      v45.i32[0] = 1;
      v45.i32[1] = *(*v25 + 4);
      (*a1)[2] = vadd_s32((*a1)[2], v45);
      result = 0;
      if (a8)
      {
        *a8 = v25;
      }
    }
  }

  return result;
}

const char *StringsAreValid(const char ***a1)
{
  v1 = *a1;
  v2 = a1[1];
  while (1)
  {
    if (v1 == v2)
    {
      return 1;
    }

    result = *v1;
    if (!*v1)
    {
      return result;
    }

    if (strnlen(result, 0x200uLL) == 512)
    {
      break;
    }

    ++v1;
  }

  return 0;
}

uint64_t AddBindingAllocateBindingAndThread(const void *a1, int a2, const char *a3, void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x70040305B5C43uLL);
  if (v8)
  {
    v9 = v8;
    v10 = a2 + 3384;
    v11 = malloc_type_calloc(1uLL, (a2 + 3384), 0x1000040451B5BE8uLL);
    if (v11)
    {
      v12 = v11;
      v13 = v11 + 16;
      *v12 = 4;
      *(v12 + 1) = v10;
      *(v12 + 1) = 0x34A00000003;
      v9[2] = v13;
      *v9 = v12;
      memcpy(v13, a1, 0xD28uLL);
      *(v12 + 6) = 3384;
      strcpy(v12 + 3384, a3);
      result = 0;
      *a4 = v9;
      return result;
    }

    free(v9);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v15 = MEMORY[0x1E69E9C10];
      v16 = &v17;
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v18 = 0;
    v15 = MEMORY[0x1E69E9C10];
    v16 = &v18;
LABEL_8:
    _os_log_impl(&dword_1A617D000, v15, OS_LOG_TYPE_DEFAULT, "calloc failed in AddBindingCreateNewThread", v16, 2u);
  }

  return 1;
}

uint64_t ZinComputeMutableProgramAddAneMultiPlaneCompressedBinding(int32x2_t **a1, unsigned int *a2, const char *a3, const char *a4, const char **a5, const char **a6, void *a7)
{
  v58 = *MEMORY[0x1E69E9840];
  v56 = a4;
  v57 = a3;
  v54 = 0;
  v55 = 0;
  __p = 0;
  std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&__p, &v56, &v58, 2uLL);
  v10 = StringsAreValid(&__p);
  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  v11 = v10 ^ 1;
  if (!a2)
  {
    v11 = 1;
  }

  if (v11)
  {
    return 3;
  }

  result = 3;
  if (a1 && *a2 == 5)
  {
    v13 = a2[8];
    if (v13 > 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinComputeProgramValidateNamesFromMultiPlaneLinear_cold_1();
      }

      return 3;
    }

    if (v13)
    {
      v14 = a2[8];
      v15 = a6;
      v16 = a5;
      do
      {
        v17 = *v15;
        v56 = *v16;
        v57 = v17;
        v54 = 0;
        v55 = 0;
        __p = 0;
        std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&__p, &v56, &v58, 2uLL);
        v18 = StringsAreValid(&__p);
        if (__p)
        {
          v54 = __p;
          operator delete(__p);
        }

        if ((v18 & 1) == 0)
        {
          return 3;
        }

        ++v16;
        ++v15;
      }

      while (--v14);
    }

    v48 = SymStrlen(a3);
    v19 = SymStrlen(a4);
    if (v13)
    {
      v20 = 0;
      v21 = v13;
      v22 = a6;
      v23 = a5;
      do
      {
        v24 = SymStrlen(*v23);
        v20 += v24 + SymStrlen(*v22) + 2;
        ++v23;
        ++v22;
        --v21;
      }

      while (v21);
    }

    else
    {
      v20 = 0;
    }

    v25 = v19 + 1;
    __p = 0;
    if (AddBindingAllocateBindingAndThread(a2, (v48 + v19 + 1 + v20 + 8) & 0xFFFFFFF8, a3, &__p))
    {
      return 1;
    }

    else
    {
      v26 = __p;
      v27 = *__p;
      v28 = *(__p + 2);
      v29 = (v28[2] + v48 + 1);
      v28[4] = v29;
      strcpy((v27 + v29), a4);
      if (v13)
      {
        v30 = v28[4] + v25;
        v31 = v28 + 16;
        do
        {
          *(v31 - 6) = v30;
          strcpy((v27 + v30), *a5);
          v32 = v30 + SymStrlen(*a5) + 1;
          *v31 = v32;
          strcpy((v27 + v32), *a6);
          v30 = v32 + SymStrlen(*a6) + 1;
          v31 += 12;
          ++a5;
          ++a6;
          --v13;
        }

        while (v13);
      }

      v26[1] = v27 + v28[4];
      v33 = a1;
      v35 = a1[18];
      v34 = a1[19];
      if (v35 >= v34)
      {
        v37 = a1[17];
        v38 = v35 - v37;
        if ((v38 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v39 = v34 - v37;
        v40 = v39 >> 2;
        if (v39 >> 2 <= (v38 + 1))
        {
          v40 = v38 + 1;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFF8)
        {
          v41 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v40;
        }

        if (v41)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>((a1 + 17), v41);
        }

        v42 = (8 * v38);
        *v42 = v26;
        v36 = (8 * v38 + 8);
        v43 = a1[17];
        v44 = (a1[18] - v43);
        v45 = (v42 - v44);
        memcpy((v42 - v44), v43, v44);
        v33 = a1;
        v46 = a1[17];
        a1[17] = v45;
        a1[18] = v36;
        a1[19] = 0;
        if (v46)
        {
          operator delete(v46);
          v33 = a1;
        }
      }

      else
      {
        *v35 = v26;
        v36 = v35 + 1;
      }

      v33[18] = v36;
      v47.i32[0] = 1;
      v47.i32[1] = *(*v26 + 4);
      (*v33)[2] = vadd_s32((*v33)[2], v47);
      result = 0;
      if (a7)
      {
        *a7 = v26;
      }
    }
  }

  return result;
}

uint64_t ZinComputeMutableProgramAddAneSinglePlaneUncompressedBinding(int32x2_t **a1, _DWORD *a2, const char *a3, const char *a4, const char *a5, void *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v39[0] = a4;
  v39[1] = a3;
  v39[2] = a5;
  v37 = 0;
  v38 = 0;
  __p = 0;
  std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&__p, v39, &v40, 3uLL);
  v12 = StringsAreValid(&__p);
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  result = 3;
  if (v12 && a1 && (*a2 & 0xFFFFFFFE) == 2)
  {
    v14 = SymStrlen(a3);
    v15 = SymStrlen(a4);
    v16 = SymStrlen(a5);
    v17 = v15 + 1;
    __p = 0;
    if (AddBindingAllocateBindingAndThread(a2, (v14 + v17 + v16 + 9) & 0xFFFFFFF8, a3, &__p))
    {
      return 1;
    }

    else
    {
      v18 = __p;
      v19 = *(__p + 2);
      v20 = v14 + v19[2];
      v21 = *__p;
      v22 = (v20 + 1);
      v19[4] = v22;
      v19[27] = v22 + v17;
      strcpy((v21 + v22), a4);
      strcpy((v21 + v19[27]), a5);
      v18[1] = v21 + v19[4];
      v24 = a1[18];
      v23 = a1[19];
      if (v24 >= v23)
      {
        v26 = a1[17];
        v27 = v24 - v26;
        if ((v27 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v28 = v23 - v26;
        v29 = v28 >> 2;
        if (v28 >> 2 <= (v27 + 1))
        {
          v29 = v27 + 1;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v30 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        if (v30)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>((a1 + 17), v30);
        }

        *(8 * v27) = v18;
        v25 = (8 * v27 + 8);
        v31 = a1[17];
        v32 = (a1[18] - v31);
        v33 = (8 * v27 - v32);
        memcpy(v33, v31, v32);
        v34 = a1[17];
        a1[17] = v33;
        a1[18] = v25;
        a1[19] = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v24 = v18;
        v25 = v24 + 1;
      }

      a1[18] = v25;
      v35.i32[0] = 1;
      v35.i32[1] = *(*v18 + 4);
      (*a1)[2] = vadd_s32((*a1)[2], v35);
      result = 0;
      if (a6)
      {
        *a6 = v18;
      }
    }
  }

  return result;
}

uint64_t ZinComputeMutableProgramAddAneMultiPlaneUncompressedBinding(int32x2_t **a1, unsigned int *a2, const char *a3, const char *a4, const char **a5, void *a6)
{
  v52 = *MEMORY[0x1E69E9840];
  v50 = a4;
  v51 = a3;
  v48 = 0;
  v49 = 0;
  __p = 0;
  std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&__p, &v50, &v52, 2uLL);
  v10 = StringsAreValid(&__p);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  v11 = v10 ^ 1;
  if (!a2)
  {
    v11 = 1;
  }

  if (v11)
  {
    return 3;
  }

  result = 3;
  if (a1 && *a2 == 4)
  {
    v13 = a2[8];
    if (v13 > 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinComputeProgramValidateNamesFromMultiPlaneLinear_cold_1();
      }

      return 3;
    }

    if (v13)
    {
      v14 = a2[8];
      v15 = a5;
      do
      {
        v16 = *v15;
        v49 = 0;
        v50 = v16;
        __p = 0;
        v48 = 0;
        std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&__p, &v50, &v51, 1uLL);
        v17 = StringsAreValid(&__p);
        if (__p)
        {
          v48 = __p;
          operator delete(__p);
        }

        if ((v17 & 1) == 0)
        {
          return 3;
        }

        ++v15;
      }

      while (--v14);
    }

    v18 = SymStrlen(a3);
    v19 = SymStrlen(a4);
    v20 = 0;
    if (v13)
    {
      v21 = v13;
      v22 = a5;
      do
      {
        v20 += SymStrlen(*v22++) + 1;
        --v21;
      }

      while (v21);
    }

    __p = 0;
    if (AddBindingAllocateBindingAndThread(a2, (v18 + v19 + 1 + v20 + 8) & 0xFFFFFFF8, a3, &__p))
    {
      return 1;
    }

    else
    {
      v23 = v18 + 1;
      v24 = __p;
      v25 = *__p;
      v26 = *(__p + 2);
      v27 = (v26[2] + v23);
      v26[4] = v27;
      strcpy((v25 + v27), a4);
      if (v13)
      {
        v28 = v26[4] + v19 + 1;
        v29 = v26 + 31;
        do
        {
          *v29 = v28;
          strcpy((v25 + v28), *a5);
          v28 += SymStrlen(*a5++) + 1;
          v29 += 26;
          --v13;
        }

        while (v13);
      }

      v24[1] = v25 + v26[4];
      v30 = a1;
      v32 = a1[18];
      v31 = a1[19];
      if (v32 >= v31)
      {
        v34 = a1[17];
        v35 = v32 - v34;
        if ((v35 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v36 = v31 - v34;
        v37 = v36 >> 2;
        if (v36 >> 2 <= (v35 + 1))
        {
          v37 = v35 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF8)
        {
          v38 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (v38)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>((a1 + 17), v38);
        }

        v39 = (8 * v35);
        *v39 = v24;
        v33 = (8 * v35 + 8);
        v40 = a1[17];
        v41 = (a1[18] - v40);
        v42 = (v39 - v41);
        memcpy((v39 - v41), v40, v41);
        v30 = a1;
        v43 = a1[17];
        a1[17] = v42;
        a1[18] = v33;
        a1[19] = 0;
        if (v43)
        {
          operator delete(v43);
          v30 = a1;
        }
      }

      else
      {
        *v32 = v24;
        v33 = v32 + 1;
      }

      v30[18] = v33;
      v44.i32[0] = 1;
      v44.i32[1] = *(*v24 + 4);
      (*v30)[2] = vadd_s32((*v30)[2], v44);
      result = 0;
      if (a6)
      {
        *a6 = v24;
      }
    }
  }

  return result;
}

uint64_t ZinComputeMutableProgramAddAneLiveInParamBinding(int32x2_t **a1, _DWORD *a2, const char *a3, const char *a4, void *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v36[0] = a4;
  v36[1] = a3;
  v34 = 0;
  v35 = 0;
  __p = 0;
  std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&__p, v36, &v37, 2uLL);
  v10 = StringsAreValid(&__p);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  v11 = v10 ^ 1;
  result = 3;
  if (!a2)
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0 && a1 && *a2 == 7)
  {
    v13 = SymStrlen(a3);
    v14 = SymStrlen(a4);
    v15 = v13 + 1;
    __p = 0;
    if (AddBindingAllocateBindingAndThread(a2, (v14 + v15 + 8) & 0xFFFFFFF8, a3, &__p))
    {
      return 1;
    }

    else
    {
      v16 = __p;
      v17 = *__p;
      v18 = *(__p + 2);
      v19 = (*(v18 + 8) + v15);
      *(v18 + 16) = v19;
      strcpy((v17 + v19), a4);
      v16[1] = v17 + *(v18 + 16);
      v21 = a1[18];
      v20 = a1[19];
      if (v21 >= v20)
      {
        v23 = a1[17];
        v24 = v21 - v23;
        if ((v24 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v25 = v20 - v23;
        v26 = v25 >> 2;
        if (v25 >> 2 <= (v24 + 1))
        {
          v26 = v24 + 1;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>((a1 + 17), v27);
        }

        *(8 * v24) = v16;
        v22 = (8 * v24 + 8);
        v28 = a1[17];
        v29 = (a1[18] - v28);
        v30 = (8 * v24 - v29);
        memcpy(v30, v28, v29);
        v31 = a1[17];
        a1[17] = v30;
        a1[18] = v22;
        a1[19] = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *v21 = v16;
        v22 = v21 + 1;
      }

      a1[18] = v22;
      v32.i32[0] = 1;
      v32.i32[1] = *(*v16 + 4);
      (*a1)[2] = vadd_s32((*a1)[2], v32);
      result = 0;
      if (a5)
      {
        *a5 = v16;
      }
    }
  }

  return result;
}

void ZinComputeProcedureMutableOperation::~ZinComputeProcedureMutableOperation(ZinComputeProcedureMutableOperation *this)
{
  v2 = *this;
  if (v2)
  {
    if (v2[2] == 2)
    {
      v3 = *(this + 2);
      if (v3)
      {
        *(this + 3) = v3;
        operator delete(v3);
        v2 = *this;
      }
    }

    free(v2);
    *this = 0;
  }

  v4 = *(this + 262);
  if (v4)
  {
    *(this + 263) = v4;
    operator delete(v4);
  }

  v5 = *(this + 259);
  if (v5)
  {
    *(this + 260) = v5;
    operator delete(v5);
  }
}

uint64_t ZinComputeMutableProgramCoalesceProcedure(int32x2_t **a1, uint64_t a2)
{
  v4 = *a2;
  if (a1 && v4)
  {
    v5 = a1[20];
    v6 = a1[21];
    while (v5 != v6)
    {
      v7 = *v5;
      v8 = **v5;
      if (v8 && !strncmp(v8, v4, 0x200uLL))
      {
        v22 = v7;
        goto LABEL_11;
      }

      ++v5;
    }
  }

  v22 = 0;
  v9 = ZinComputeMutableProgramAddProcedure(a1, v4, &v22);
  if (v9)
  {
    return v9;
  }

LABEL_11:
  v11 = *(a2 + 32);
  for (i = *(a2 + 40); v11 != i; ++v11)
  {
    v13 = *v11;
    v21 = 0;
    if ((*a1)->i32[1] != 128)
    {
      return 3;
    }

    v14 = *(*v13 + 8);
    if (v14 == 6)
    {
      memset(v20, 0, sizeof(v20));
      SymbolVariableNamesFromSNEThread = ZinComputeProgramGetSymbolVariableNamesFromSNEThread(*v13, v13[1], v20);
      if (SymbolVariableNamesFromSNEThread)
      {
        v23 = v20;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
        return SymbolVariableNamesFromSNEThread;
      }

      SymbolVariableNamesFromSNEThread = ZinComputeMutableProgramAddSneOperation(a1, v22, v13[1], v20, &v21);
      v23 = v20;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
    }

    else
    {
      if (v14 == 4)
      {
        v15 = ZinComputeMutableProgramAddAneSegmentOperation(a1, v22, v13[1], &v21);
      }

      else
      {
        if (v14 != 1)
        {
          return 3;
        }

        v15 = ZinComputeMutableProgramAddAneTDOperation(a1, v22, v13[1], &v21);
      }

      SymbolVariableNamesFromSNEThread = v15;
    }

    if (SymbolVariableNamesFromSNEThread)
    {
      return SymbolVariableNamesFromSNEThread;
    }
  }

  v17 = *(a2 + 56);
  v16 = *(a2 + 64);
  while (v17 != v16)
  {
    v18 = *v17;
    v20[0] = 0;
    if ((*a1)->i32[1] != 128 || *(*v18 + 2) != 5)
    {
      return 3;
    }

    v9 = ZinComputeMutableProgramAddAneAotMetadataOperation(a1, v22, v18[1], v20);
    if (v9)
    {
      return v9;
    }

    ++v17;
  }

  return 0;
}

void sub_1A697A5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t ZinComputeMutableProgramCoalesceBinding(int32x2_t **a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if ((*a1)->i32[1] != 128)
  {
    return 3;
  }

  result = ZinComputeProgramGetProcedureNameFromLCThread(*a2, *(a2 + 16), &v16);
  if (result)
  {
    return result;
  }

  v5 = *(a2 + 16);
  v6 = *v5;
  if (*v5 <= 3)
  {
    if (v6 != 1)
    {
      if (v6 == 2 || v6 == 3)
      {
        *&v18 = 0;
        *&v17[0] = 0;
        if (ZinComputeProgramGetNamesFromSinglePlaneUncompressed(*a2, v5, &v18, v17))
        {
          ZinAssertImpl("ZinComputeProgramGetNamesFromSinglePlaneUncompressed failed");
        }

        return ZinComputeMutableProgramAddAneSinglePlaneUncompressedBinding(a1, *(a2 + 16), v16, v18, *&v17[0], 0);
      }

      goto LABEL_20;
    }

    *&v18 = 0;
    *&v17[0] = 0;
    v15 = 0;
    if (ZinComputeProgramGetNamesFromSinglePlaneTiledCompressed(*a2, v5 + 4, &v18, v17, &v15))
    {
      ZinAssertImpl("ZinComputeProgramGetNamesFromSinglePlaneTiledCompressed failed");
    }

    v7 = *(a2 + 16);
    v8 = v16;
    v9 = *&v17[0];
    v10 = v18;
    v11 = v15;
    v12 = a1;
    v13 = 0;
    return ZinComputeMutableProgramAddAneSinglePlaneCompressedBinding(v12, v7, v8, v10, v9, v11, v13, 0);
  }

  if (v6 > 5)
  {
    if (v6 != 6)
    {
      if (v6 == 7)
      {
        *&v18 = 0;
        if (!ZinComputeProgramGetParamNameFromBinding(*a2, v5, &v18))
        {
          return ZinComputeMutableProgramAddAneLiveInParamBinding(a1, *(a2 + 16), v16, v18, 0);
        }

LABEL_29:
        ZinAssertImpl("ZinComputeProgramGetNamesFromSinglePlaneTiledCompressedMultislice failed");
      }

LABEL_20:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinComputeMutableProgramCoalesceBinding();
      }

      return 3;
    }

    *&v18 = 0;
    *&v17[0] = 0;
    v15 = 0;
    if (ZinComputeProgramGetNamesFromSinglePlaneTiledCompressedMultislice(*a2, v5 + 4, &v18, v17, &v15))
    {
      goto LABEL_29;
    }

    v7 = *(a2 + 16);
    v8 = v16;
    v9 = *&v17[0];
    v10 = v18;
    v11 = v15;
    v12 = a1;
    v13 = 1;
    return ZinComputeMutableProgramAddAneSinglePlaneCompressedBinding(v12, v7, v8, v10, v9, v11, v13, 0);
  }

  if (v6 != 4)
  {
    if (v6 == 5)
    {
      v15 = 0;
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
      memset(v17, 0, sizeof(v17));
      v14 = 0;
      if (ZinComputeProgramGetNamesFromMultiPlaneTiledCompressed(*a2, v5 + 4, &v15, &v14, &v18, v17))
      {
        ZinAssertImpl("ZinComputeProgramGetNamesFromMultiPlaneTiledCompressed failed");
      }

      return ZinComputeMutableProgramAddAneMultiPlaneCompressedBinding(a1, *(a2 + 16), v16, v15, &v18, v17, 0);
    }

    goto LABEL_20;
  }

  *&v17[0] = 0;
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
  LODWORD(v15) = 0;
  if (ZinComputeProgramGetNamesFromMultiPlaneLinear(*a2, v5 + 4, v17, &v15, &v18))
  {
    ZinAssertImpl("ZinComputeProgramGetNamesFromMultiPlaneLinear failed");
  }

  return ZinComputeMutableProgramAddAneMultiPlaneUncompressedBinding(a1, *(a2 + 16), v16, *&v17[0], &v18, 0);
}

uint64_t ZinComputeProgramSetOperationBarInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 5;
  if (a2 && a3)
  {
    v6 = 0;
    v7 = a2 + 24;
    v8 = MEMORY[0x1E69E9C10];
    do
    {
      v9 = *(v7 + v6);
      if (v9)
      {
        v10 = v9[4];
        if (*(*a1 + 12) == 1)
        {
          *(a3 + v6) = ZinComputeMutableProgramGetSectionIndex<ZinComputeMutableProgram>(a1, v9[4]);
        }

        else
        {
          v11 = *(*v9 + 8);
          *(a3 + v6) = v11;
          v12 = *(*v10 + 32);
          if (v11 != v12)
          {
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              *v13 = 0;
              _os_log_debug_impl(&dword_1A617D000, v8, OS_LOG_TYPE_DEBUG, "ZinComputeProgramSetOperationBarInfo: symbol address not at start of section.\n", v13, 2u);
              v12 = *(*v10 + 32);
            }

            *(a3 + v6) = v12;
          }
        }
      }

      else
      {
        *(a3 + v6) = 0;
      }

      v6 += 8;
    }

    while (v6 != 2048);
    return 0;
  }

  return result;
}

uint64_t ZinComputeMutableProgramCollectOperationScheduleInfo(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 - v1 == 8)
  {
    return 0;
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v40, v1, v2, (v2 - v1) >> 3);
  v5 = v40;
  v6 = v41;
  if (v41 == v40)
  {
LABEL_60:
    AneTDPartitionScheduleInfo = 0;
    if (!v5)
    {
      return AneTDPartitionScheduleInfo;
    }

    goto LABEL_61;
  }

  v7 = 0;
  while (1)
  {
    v8 = v5[v7];
    v9 = *(*v8 + 8);
    if (v9 != 4 && v9 != 1)
    {
      goto LABEL_59;
    }

    *v39 = 0;
    AneTDPartitionScheduleInfo = ZinComputeProgramGetAneTDPartitionScheduleInfo(0, 0, *(v8 + 8), v9, 0, &v39[1], v39, v44);
    if (AneTDPartitionScheduleInfo)
    {
      goto LABEL_66;
    }

    v11 = v39[0];
    if (v39[0] != -1)
    {
      break;
    }

LABEL_58:
    v5 = v40;
    v6 = v41;
LABEL_59:
    if (++v7 >= (v6 - v5))
    {
      goto LABEL_60;
    }
  }

  if (v39[0] < 3u)
  {
    v12 = (v8 + 2072);
    v13 = *(v8 + 2072);
    if (v39[0] && (*(v8 + 2080) - v13) >> 3 == v39[0])
    {
      v14 = 0;
      do
      {
        v15 = *(a1 + 32);
        if (*(a1 + 40) != v15)
        {
          v16 = 0;
          v17 = v44[v14];
          do
          {
            v18 = *(v15 + 8 * v16);
            v20 = *v18;
            v19 = v18[1];
            v45[0] = 0;
            v43[1] = 0;
            if (ZinComputeProgramGetAneTDPartitionScheduleInfo(0, 0, v19, *(v20 + 8), 0, v45, &v43[1], __p))
            {
              v21 = 1;
            }

            else
            {
              v21 = v43[1] == -1;
            }

            if (v21)
            {
              break;
            }

            if (v45[0] == v17)
            {
              break;
            }

            ++v16;
            v15 = *(a1 + 32);
          }

          while (v16 < (*(a1 + 40) - v15) >> 3);
        }

        ++v14;
      }

      while (v14 != v11);
      v13 = *v12;
    }

    if (v13)
    {
      *(v8 + 2080) = v13;
      operator delete(v13);
      *v12 = 0;
      *(v8 + 2080) = 0;
      *(v8 + 2088) = 0;
    }

    *(v8 + 2088) = 0;
    *v12 = 0u;
    v22 = v39[1];
    v47 = 0;
    v38 = 0u;
    *__p = 0u;
    v23 = *(a1 + 32);
    if (*(a1 + 40) != v23)
    {
      v24 = 0;
      while (1)
      {
        v25 = *(v23 + 8 * v24);
        *v43 = 0;
        if (ZinComputeProgramGetAneTDPartitionScheduleInfo(0, 0, v25[1], (*v25)[2], 0, &v43[1], v43, v45))
        {
          break;
        }

        if (v43[0] != -1 && (v45[0] == v22 || v45[1] == v22))
        {
          v27 = __p[1];
          if (__p[1] >= v47)
          {
            v29 = (__p[1] - __p[0]) >> 3;
            if ((v29 + 1) >> 61)
            {
              std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
            }

            v30 = (v47 - __p[0]) >> 2;
            if (v30 <= v29 + 1)
            {
              v30 = v29 + 1;
            }

            if (v47 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
            {
              v31 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v30;
            }

            if (v31)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<__CFNumber const*>>(__p, v31);
            }

            v32 = (8 * v29);
            *v32 = v25;
            v28 = (8 * v29 + 8);
            v33 = v32 - (__p[1] - __p[0]);
            memcpy(v33, __p[0], __p[1] - __p[0]);
            v34 = __p[0];
            __p[0] = v33;
            __p[1] = v28;
            v47 = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          else
          {
            *__p[1] = v25;
            v28 = v27 + 8;
          }

          __p[1] = v28;
        }

        ++v24;
        v23 = *(a1 + 32);
        if (v24 >= (*(a1 + 40) - v23) >> 3)
        {
          v38 = *__p;
          v35 = v47;
          goto LABEL_55;
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    v35 = 0;
LABEL_55:
    v36 = *(v8 + 2096);
    if (v36)
    {
      *(v8 + 2104) = v36;
      operator delete(v36);
      *(v8 + 2096) = 0;
      *(v8 + 2104) = 0;
      *(v8 + 2112) = 0;
    }

    *(v8 + 2096) = v38;
    *(v8 + 2112) = v35;
    goto LABEL_58;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinComputeMutableProgramCollectOperationScheduleInfo();
  }

  AneTDPartitionScheduleInfo = 5;
LABEL_66:
  v5 = v40;
  if (v40)
  {
LABEL_61:
    v41 = v5;
    operator delete(v5);
  }

  return AneTDPartitionScheduleInfo;
}

uint64_t ZinComputeMutableProgramFvmlibsToFile(const ZinComputeMutableProgram *a1, __sFILE *__stream)
{
  v2 = *(a1 + 8);
  if (*(a1 + 9) == v2)
  {
    return 0;
  }

  v5 = 0;
  while (fwrite(**(v2 + 8 * v5), *(**(v2 + 8 * v5) + 4), 1uLL, __stream) == 1)
  {
    ++v5;
    v2 = *(a1 + 8);
    if (v5 >= (*(a1 + 9) - v2) >> 3)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinComputeMutableProgramFvmlibsToFile();
  }

  return 5;
}

uint64_t ZinComputeMutableProgramOperationsToFile(const ZinComputeMutableProgram *a1, __sFILE *__stream)
{
  v2 = *(a1 + 11);
  v3 = *(a1 + 12);
  if (v2 == v3)
  {
    return 0;
  }

  while (fwrite(**v2, *(**v2 + 1), 1uLL, __stream) == 1)
  {
    if (++v2 == v3)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinComputeMutableProgramOperationsToFile();
  }

  return 5;
}

uint64_t ZinComputeMutableProgramJitOperationsToFile(const ZinComputeMutableProgram *a1, __sFILE *__stream)
{
  v2 = *(a1 + 14);
  if (*(a1 + 15) == v2)
  {
    return 0;
  }

  v5 = 0;
  while (fwrite(**(v2 + 8 * v5), *(**(v2 + 8 * v5) + 4), 1uLL, __stream) == 1)
  {
    ++v5;
    v2 = *(a1 + 14);
    if (v5 >= (*(a1 + 15) - v2) >> 3)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinComputeMutableProgramOperationsToFile();
  }

  return 5;
}

uint64_t ZinComputeMutableProgramBindingsToFile(const ZinComputeMutableProgram *a1, __sFILE *__stream)
{
  v2 = *(a1 + 17);
  if (*(a1 + 18) == v2)
  {
    return 0;
  }

  v5 = 0;
  while (fwrite(**(v2 + 8 * v5), *(**(v2 + 8 * v5) + 4), 1uLL, __stream) == 1)
  {
    ++v5;
    v2 = *(a1 + 17);
    if (v5 >= (*(a1 + 18) - v2) >> 3)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinComputeMutableProgramBindingsToFile();
  }

  return 5;
}

void ZinComputeProcedureMutableJitOperation::~ZinComputeProcedureMutableJitOperation(ZinComputeProcedureMutableJitOperation *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

uint64_t *std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<char const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A697B13C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ZinComputeMutableProgramOperationsToFile()
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ZinComputeMutableProgramBindingsToFile()
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void *ZinRtGraphValidation::ZinRtGraphValidation(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  std::unordered_set<std::string>::unordered_set((a1 + 3), a5);
  std::unordered_set<std::string>::unordered_set((a1 + 8), a6);
  return a1;
}

uint64_t ZinRtGraphValidation::Run(ZinIrHalH13g ***this)
{
  if (!ZinRtGraphValidation::ValidateAcyclicNodeGraph(this) || !ZinRtGraphValidation::ValidateBarIds(this) || !ZinRtGraphValidation::ValidateRtOperationRuntimeBindBufferText(this) || !ZinRtGraphValidation::ValidateRtOperationMapBufferText(this) || !ZinRtGraphValidation::ValidateMutableWeightInitSection(this))
  {
    return 0;
  }

  return ZinRtGraphValidation::ValidateIONames(this);
}

uint64_t ZinRtGraphValidation::ValidateAcyclicNodeGraph(ZinIrHalH13g ***this)
{
  ZinRtGraphValidationUtils::GetAllRtProcedures(*this, &v12);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v1 = v12;
  v2 = v13;
  if (v12 != v13)
  {
    do
    {
      if (*ZinRtProcedure::GetNodeGraph(*v1))
      {
        ZinRtGraphValidationUtils::GetAllRtNodeGraph(v1, &__p);
        ranges::_move::move_fn::operator()<std::__wrap_iter<ZinRtNodeGraph const* const*>,std::__wrap_iter<ZinRtNodeGraph const* const*>,std::back_insert_iterator<std::vector<ZinRtNodeGraph const*>>>(&ranges::move, __p, v8, &v9);
        if (__p)
        {
          v8 = __p;
          operator delete(__p);
        }
      }

      v1 += 2;
    }

    while (v1 != v2);
    v3 = v9;
    v4 = v10;
    while (v3 != v4)
    {
      if (ZinIrNgraph<std::shared_ptr<ZinRtBaseNode>,ZinIrIdComparator<std::shared_ptr<ZinRtBaseNode>>>::IsCyclicGraph(*v3))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinRtGraphValidation::ValidateAcyclicNodeGraph();
        }

        v5 = 0;
        goto LABEL_11;
      }

      ++v3;
    }
  }

  v5 = 1;
LABEL_11:
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v9 = &v12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v9);
  return v5;
}

void sub_1A697B600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char *__p, char *a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  __p = &a16;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t ZinRtGraphValidation::ValidateBarIds(ZinIrHalH13g ***this)
{
  v49 = *MEMORY[0x1E69E9840];
  ZinRtGraphValidationUtils::GetAllRtProcedures(*this, &v42);
  v1 = v42;
  if (v43 == v42)
  {
    v31 = 1;
    goto LABEL_53;
  }

  v2 = 0;
  while (1)
  {
    v3 = &v1[16 * v2];
    ZinRtGraphValidationUtils::GetRtBindOperationNodes(v3, &v40);
    ZinRtGraphValidationUtils::GetRtLoadOperationNodes(v3, &v38);
    v4 = v41;
    v5 = v40;
    if (v41 != v40)
    {
      break;
    }

    *buf = 0u;
    v47 = 0u;
    v48 = 1065353216;
    v35 = 0u;
    v36 = 0u;
    LODWORD(v37) = 1065353216;
    v33 = buf;
    v34 = &v35;
LABEL_25:
    v18 = v38;
    v19 = v39;
    if (v38 != v39)
    {
      while (1)
      {
        Operations = ZinRtOperationNode::GetOperations(*v18);
        v22 = Operations + 1;
        v21 = *Operations;
        if (*Operations != Operations + 1)
        {
          break;
        }

LABEL_40:
        v18 += 2;
        v31 = 1;
        if (v18 == v19)
        {
          goto LABEL_45;
        }
      }

      while (1)
      {
        v23 = v21[4];
        {
          ZinAssertImpl("Error: Invalid typecast: load operation.", v33, v34, v35, v36, v37);
        }

        v25 = v24;
        v26 = v21[5];
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        DeviceId = ZinRtOperation::GetDeviceId(v24);
        v28 = ZinRtGraphValidation::ValidateBarIds(void)const::$_2::operator()(&v33, DeviceId, *(v25 + 19) & 0x3FFFFFFF);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (v28)
        {
          break;
        }

        v29 = v21[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v21[2];
            v17 = *v30 == v21;
            v21 = v30;
          }

          while (!v17);
        }

        v21 = v30;
        if (v30 == v22)
        {
          goto LABEL_40;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinRtGraphValidation::ValidateBarIds(v44, &v44[4]);
      }

LABEL_44:
      v31 = 0;
      goto LABEL_45;
    }

    v31 = 1;
LABEL_45:
    std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::~__hash_table(&v35);
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(buf);
    *&v35 = &v38;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v35);
    *&v35 = &v40;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v35);
    if (v31)
    {
      ++v2;
      v1 = v42;
      if (v2 < (v43 - v42) >> 4)
      {
        continue;
      }
    }

    goto LABEL_53;
  }

  if (v39 == v38)
  {
    *buf = 0u;
    v47 = 0u;
    v48 = 1065353216;
    v35 = 0u;
    v36 = 0u;
    LODWORD(v37) = 1065353216;
    v33 = buf;
    v34 = &v35;
    while (1)
    {
      v6 = ZinRtOperationNode::GetOperations(*v5);
      v8 = v6 + 1;
      v7 = *v6;
      if (*v6 != v6 + 1)
      {
        break;
      }

LABEL_20:
      v5 += 2;
      if (v5 == v4)
      {
        goto LABEL_25;
      }
    }

    while (1)
    {
      v9 = v7[4];
      {
        ZinAssertImpl("Error: Invalid typecast: bind operation.", v33, v34, v35, v36, v37);
      }

      v11 = v10;
      v12 = v7[5];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = ZinRtOperation::GetDeviceId(v10);
      v14 = ZinRtGraphValidation::ValidateBarIds(void)const::$_2::operator()(&v33, v13, *(v11 + 20) & 0x3FFFFFFF);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v14)
      {
        break;
      }

      v15 = v7[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v7[2];
          v17 = *v16 == v7;
          v7 = v16;
        }

        while (!v17);
      }

      v7 = v16;
      if (v16 == v8)
      {
        goto LABEL_20;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinRtGraphValidation::ValidateBarIds(v45, &v45[4]);
    }

    goto LABEL_44;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinRtGraphValidation::ValidateBarIds(buf, &buf[4]);
  }

  *&v35 = &v38;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v35);
  *&v35 = &v40;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v35);
  v31 = 0;
LABEL_53:
  *&v35 = &v42;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v35);
  return v31;
}

uint64_t ZinRtGraphValidation::ValidateRtOperationRuntimeBindBufferText(ZinIrHalH13g ***this)
{
  ZinRtGraphValidationUtils::GetRtBindBufferTextOperationNodes(*this, &v23);
  __p = 0;
  v21 = 0;
  v22 = 0;
  v2 = v23;
  v19 = v24;
  if (v23 == v24)
  {
LABEL_25:
    v17 = 1;
  }

  else
  {
    while (1)
    {
      Operations = ZinRtOperationNode::GetOperations(*v2);
      v5 = Operations + 1;
      v4 = *Operations;
      if (*Operations != Operations + 1)
      {
        while (1)
        {
          v6 = v4[4];
          {
            ZinAssertImpl("Error: Invalid typecast: bind buffer operation.");
          }

          v8 = v7;
          v9 = v4[5];
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (ZinRtGraphValidation::ValidateSymbolInSymbolTable(this, v7 + 14))
          {
            v10 = std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>(this[2], v8 + 14);
            if (!v10)
            {
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }

            v11 = *(**(this[1][1] + v10[5]) + 8);
            BindDataSize = ZinRtOperationRuntimeBind::GetBindDataSize(v8);
            v13 = ValidateDataRanges(&__p, v11, BindDataSize);
            if (!v9)
            {
              goto LABEL_15;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ZinRtGraphValidation::ValidateRtOperationRuntimeBindBufferText(&v25, v26);
            }

            v13 = 0;
            if (!v9)
            {
              goto LABEL_15;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_15:
          if ((v13 & 1) == 0)
          {
            break;
          }

          v14 = v4[1];
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
              v15 = v4[2];
              v16 = *v15 == v4;
              v4 = v15;
            }

            while (!v16);
          }

          v4 = v15;
          if (v15 == v5)
          {
            goto LABEL_24;
          }
        }
      }

      if (v4 != v5)
      {
        break;
      }

LABEL_24:
      v2 += 2;
      if (v2 == v19)
      {
        goto LABEL_25;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinRtGraphValidation::ValidateRtOperationRuntimeBindBufferText();
    }

    v17 = 0;
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  __p = &v23;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v17;
}

void sub_1A697BD50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t ZinRtGraphValidation::ValidateRtOperationMapBufferText(ZinIrHalH13g ***this)
{
  ZinRtGraphValidationUtils::GetRtMapBufferTextOperationNodes(*this, &v37);
  __p = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v3 = v37;
  v2 = v38;
  v29 = v38;
  while (1)
  {
    if (v3 == v2)
    {
      v27 = 1;
      goto LABEL_45;
    }

    Operations = ZinRtOperationNode::GetOperations(*v3);
    v30 = v3;
    v6 = Operations + 1;
    v5 = *Operations;
    if (*Operations != Operations + 1)
    {
      while (1)
      {
        v7 = v5[4];
        {
          ZinAssertImpl("Error: Invalid typecast: map buffer operation.");
        }

        v9 = v8;
        v10 = v5[5];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = v8 + 96;
        v12 = v31;
        v13 = v32;
        if (v31 == v32)
        {
LABEL_23:
          std::vector<std::string>::push_back[abi:ne200100](&v31, v9 + 6);
          if (ZinRtGraphValidation::ValidateSymbolInSymbolTable(this, v9 + 12))
          {
            v20 = std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>(this[2], v9 + 12);
            if (!v20)
            {
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }

            v21 = *(**(this[1][1] + v20[5]) + 8);
            BufferSize = ZinRtOperationRuntimeMapBuffer::GetBufferSize(v9);
            v23 = ValidateDataRanges(&__p, v21, BufferSize);
            if (!v10)
            {
              goto LABEL_31;
            }

LABEL_30:
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            goto LABEL_31;
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ZinRtGraphValidation::ValidateRtOperationMapBufferText(&v39, v40);
          }
        }

        else
        {
          v14 = v8[119];
          if (v14 >= 0)
          {
            v15 = v8[119];
          }

          else
          {
            v15 = *(v8 + 13);
          }

          while (1)
          {
            v16 = *(v12 + 23);
            v17 = v16;
            if ((v16 & 0x80u) != 0)
            {
              v16 = *(v12 + 8);
            }

            if (v16 == v15)
            {
              v18 = v17 >= 0 ? v12 : *v12;
              v19 = v14 >= 0 ? v9 + 6 : *v11;
              if (!memcmp(v18, v19, v15))
              {
                break;
              }
            }

            v12 += 24;
            if (v12 == v13)
            {
              goto LABEL_23;
            }
          }
        }

        v23 = 0;
        if (v10)
        {
          goto LABEL_30;
        }

LABEL_31:
        if ((v23 & 1) == 0)
        {
          break;
        }

        v24 = v5[1];
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = v5[2];
            v26 = *v25 == v5;
            v5 = v25;
          }

          while (!v26);
        }

        v5 = v25;
        if (v25 == v6)
        {
          goto LABEL_40;
        }
      }
    }

    if (v5 != v6)
    {
      break;
    }

LABEL_40:
    v2 = v29;
    v3 = v30 + 2;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinRtGraphValidation::ValidateRtOperationMapBufferText();
  }

  v27 = 0;
LABEL_45:
  v41 = &v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  __p = &v37;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v27;
}

void sub_1A697C06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *__p, char *a16, uint64_t a17, char a18)
{
  *(v18 - 88) = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v18 - 88));
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a18;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t ZinRtGraphValidation::ValidateMutableWeightInitSection(ZinIrHalH13g ***this)
{
  ZinRtGraphValidationUtils::GetRtPatchMutableWeightOperationNodes(*this, &v20);
  v2 = v20;
  v19 = v21;
  if (v20 == v21)
  {
    v17 = 1;
  }

  else
  {
    while (1)
    {
      Operations = ZinRtOperationNode::GetOperations(*v2);
      v4 = Operations + 1;
      v5 = *Operations;
      if (*Operations != Operations + 1)
      {
        while (1)
        {
          v6 = v5[4];
          {
            ZinAssertImpl("Error: Invalid typecast: patch mutable weight operation.", v19);
          }

          v8 = v7;
          v9 = v5[5];
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v7[135] < 0)
          {
            std::string::__init_copy_ctor_external(&v26, *(v7 + 14), *(v7 + 15));
          }

          else
          {
            v26 = *(v7 + 112);
          }

          if (ZinRtGraphValidation::ValidateSymbolInSymbolTable(this, &v26))
          {
            v10 = std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>(this[2], &v26);
            if (!v10)
            {
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }

            v11 = *(this[1][1] + v10[5]);
            if (v11)
            {
              if (*(v11 + 32))
              {
                v12 = *(ZinRtOperationRuntimePatchMutableKernel::GetPatchMutableKernel(v8) + 12);
                if (*(**(v11 + 32) + 40) == (*(ZinRtOperationRuntimePatchMutableKernel::GetPatchMutableKernel(v8) + 8) | (v12 << 32)))
                {
                  v13 = 1;
                  goto LABEL_21;
                }

                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  ZinRtGraphValidation::ValidateMutableWeightInitSection(&v22, v23);
                }
              }
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ZinRtGraphValidation::ValidateMutableWeightInitSection(&v24, v25);
            }
          }

          v13 = 0;
LABEL_21:
          if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v26.__r_.__value_.__l.__data_);
            if (!v9)
            {
              goto LABEL_24;
            }

LABEL_23:
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            goto LABEL_24;
          }

          if (v9)
          {
            goto LABEL_23;
          }

LABEL_24:
          if ((v13 & 1) == 0)
          {
            break;
          }

          v14 = v5[1];
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
              v15 = v5[2];
              v16 = *v15 == v5;
              v5 = v15;
            }

            while (!v16);
          }

          v5 = v15;
          if (v15 == v4)
          {
            goto LABEL_35;
          }
        }
      }

      if (v5 != v4)
      {
        break;
      }

LABEL_35:
      v2 += 2;
      if (v2 == v19)
      {
        v17 = 1;
        goto LABEL_39;
      }
    }

    v17 = 0;
  }

LABEL_39:
  v26.__r_.__value_.__r.__words[0] = &v20;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v26);
  return v17;
}

void sub_1A697C36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char *a23)
{
  a23 = &a10;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t ZinRtGraphValidation::ValidateIONames(ZinIrHalH13g ***this)
{
  ZinRtGraphValidationUtils::GetRtBindIOOperationNodes(*this, &v31);
  v2 = v31;
  v3 = v32;
  if (v31 != v32)
  {
    while (1)
    {
      Operations = ZinRtOperationNode::GetOperations(*v2);
      v5 = Operations + 1;
      v6 = *Operations;
      if (*Operations != Operations + 1)
      {
        break;
      }

LABEL_20:
      v2 += 2;
      if (v2 == v3)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v7 = v6[4];
      {
        ZinAssertImpl("Error: Invalid typecast: bind io operation.");
      }

      v9 = v8;
      v10 = v6[5];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(this + 3, v8 + 26))
      {
        break;
      }

      v11 = 0;
      if (v10)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (v11)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinRtGraphValidation::ValidateIONames();
        }

        v27 = 0;
        goto LABEL_49;
      }

      v12 = v6[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
      if (v13 == v5)
      {
        goto LABEL_20;
      }
    }

    v11 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(this + 8, v9 + 26) == 0;
    if (!v10)
    {
      goto LABEL_10;
    }

LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    goto LABEL_10;
  }

LABEL_21:
  ZinRtGraphValidationUtils::GetRtPlanarMapIOOperationNodes(*this, &v29);
  v15 = v29;
  v16 = v30;
  if (v29 == v30)
  {
LABEL_41:
    v27 = 1;
    goto LABEL_48;
  }

  while (1)
  {
    v17 = ZinRtOperationNode::GetOperations(*v15);
    v18 = v17 + 1;
    v19 = *v17;
    if (*v17 != v17 + 1)
    {
      break;
    }

LABEL_40:
    v15 += 2;
    if (v15 == v16)
    {
      goto LABEL_41;
    }
  }

  while (1)
  {
    v20 = v19[4];
    {
      ZinAssertImpl("Error: Invalid typecast: planar map operation.");
    }

    v22 = v21;
    v23 = v19[5];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(this + 3, v21 + 28))
    {
      v24 = 0;
      if (!v23)
      {
        goto LABEL_30;
      }

LABEL_29:
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      goto LABEL_30;
    }

    v24 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(this + 8, v22 + 28) == 0;
    if (v23)
    {
      goto LABEL_29;
    }

LABEL_30:
    if (v24)
    {
      break;
    }

    v25 = v19[1];
    if (v25)
    {
      do
      {
        v26 = v25;
        v25 = *v25;
      }

      while (v25);
    }

    else
    {
      do
      {
        v26 = v19[2];
        v14 = *v26 == v19;
        v19 = v26;
      }

      while (!v14);
    }

    v19 = v26;
    if (v26 == v18)
    {
      goto LABEL_40;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinRtGraphValidation::ValidateIONames();
  }

  v27 = 0;
LABEL_48:
  v33 = &v29;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v33);
LABEL_49:
  v29 = &v31;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v29);
  return v27;
}

void sub_1A697C6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

BOOL ZinRtGraphValidation::ValidateSymbolInSymbolTable(uint64_t a1, uint64_t *a2)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>(*(a1 + 16), a2))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ZinRtGraphValidation::ValidateSymbolInSymbolTable();
    return 0;
  }

  v4 = std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>(*(a1 + 16), a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (*(*(*(a1 + 8) + 8) + 8 * v4[5]))
  {
    return 1;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ZinRtGraphValidation::ValidateSymbolInSymbolTable();
    return 0;
  }

  return result;
}

BOOL ZinIrNgraph<std::shared_ptr<ZinRtBaseNode>,ZinIrIdComparator<std::shared_ptr<ZinRtBaseNode>>>::IsCyclicGraph(void *a1)
{
  v3[0] = v3;
  v3[1] = v3;
  v3[2] = 0;
  v1 = ZinIrNgraph<std::shared_ptr<ZinRtBaseNode>,ZinIrIdComparator<std::shared_ptr<ZinRtBaseNode>>>::TopologicalSortImpl<std::list<std::shared_ptr<ZinRtBaseNode>>>(a1, v3);
  std::__list_imp<std::shared_ptr<ZinRtBaseNode>>::clear(v3);
  return !v1;
}

void sub_1A697C838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__list_imp<std::shared_ptr<ZinRtBaseNode>>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t ZinRtGraphValidation::ValidateBarIds(void)const::$_2::operator()(void **a1, unsigned int a2, unsigned int a3)
{
  v11 = a3;
  v12 = a2;
  if (a2 == 0x3FFF)
  {
    if (std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(*a1, &v11))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      return 1;
    }

    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(*a1, &v11, &v11);
  }

  v4 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(a1[1], &v12);
  v5 = a1[1];
  if (v4)
  {
    v13 = &v12;
    v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v5, &v12, &std::piecewise_construct, &v13);
    if (std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(v6 + 3, &v11))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        ZinRtGraphValidation::ValidateBarIds(void)const::$_2::operator()();
      }

      return 1;
    }

    v9 = a1[1];
    v13 = &v12;
  }

  else
  {
    v13 = &v12;
    v8 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v5, &v12, &std::piecewise_construct, &v13);
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__assign_unique<unsigned int const*>(v8 + 3, 0, 0);
    v9 = a1[1];
    v13 = &v12;
  }

  v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v9, &v12, &std::piecewise_construct, &v13);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v10 + 6, &v11, &v11);
  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1A697CC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__assign_unique<unsigned int const*>(uint64_t *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        *(v8 + 16) = *v4;
        v10 = *v8;
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__node_insert_unique(a1, v8);
        ++v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    if (v10)
    {
      do
      {
        v12 = *v10;
        operator delete(v10);
        v10 = v12;
      }

      while (v12);
    }
  }

  while (v4 != a3)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1, v4, v4);
    ++v4;
  }
}

void sub_1A697CD04(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v5 = (a2 + 16);
  v4 = *(a2 + 16);
  *(v5 - 1) = v4;
  v6 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<ZinIrOpLayer *,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,std::allocator<ZinIrOpLayer *>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (*(i + 4) == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(a1, v15);
  }

  return 0;
}

uint64_t ValidateDataRanges(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  if (*a1 == v6)
  {
LABEL_6:
    v8 = *(a1 + 16);
    if (v6 >= v8)
    {
      v10 = (v6 - *a1) >> 4;
      if ((v10 + 1) >> 60)
      {
        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v11 = v8 - *a1;
      v12 = v11 >> 3;
      if (v11 >> 3 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(a1, v13);
      }

      v15 = ZinMirCacheTensors::ZinMirCacheTensors((16 * v10), a2, a3 + a2);
      v9 = v15 + 2;
      v16 = *(a1 + 8) - *a1;
      v17 = v15 - v16;
      memcpy(v15 - v16, *a1, v16);
      v18 = *a1;
      *a1 = v17;
      *(a1 + 8) = v9;
      *(a1 + 16) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      ZinMirCacheTensors::ZinMirCacheTensors(v6, a2, a3 + a2);
      v9 = v6 + 2;
      *(a1 + 8) = v6 + 2;
    }

    *(a1 + 8) = v9;
    return 1;
  }

  else
  {
    while (1)
    {
      v19 = 0;
      if (ZinRangeOverlaps(a2, a3, *v7, v7[1] - *v7, 0x7FFFFFFFuLL, &v19, 0))
      {
        break;
      }

      if (v19 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ValidateDataRanges();
        }

        return 0;
      }

      v7 += 2;
      if (v7 == v6)
      {
        v6 = *(a1 + 8);
        goto LABEL_6;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ValidateDataRanges();
    }

    return 0;
  }
}

void sub_1A697D044(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

void ZinRtGraphValidation::ValidateBarIds(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "BOOL ZinRtGraphValidation::ValidateBarIds() const";
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: RtGraph cannot have both bind and map/load - %s", buf, 0xCu);
}

{
  *buf = 136315138;
  *a2 = "BOOL ZinRtGraphValidation::ValidateBarIds() const";
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: Failed to validate bar ids of bind operations in RtGraph - %s", buf, 0xCu);
}

{
  *buf = 136315138;
  *a2 = "BOOL ZinRtGraphValidation::ValidateBarIds() const";
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: Failed to validate bar ids of load operations in RtGraph - %s", buf, 0xCu);
}

void ZinRtGraphValidation::ValidateMutableWeightInitSection(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0_7(a1, a2);
  OUTLINED_FUNCTION_1_5(&dword_1A617D000, MEMORY[0x1E69E9C10], v2, "Error: init section size mismatch", v3);
}

{
  OUTLINED_FUNCTION_0_7(a1, a2);
  OUTLINED_FUNCTION_1_5(&dword_1A617D000, MEMORY[0x1E69E9C10], v2, "Error: init section symbol name does exist in symbol table", v3);
}

void ZinRtGraphValidation::ValidateIONames()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinRtGraphValidation::ValidateSymbolInSymbolTable()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ValidateDataRanges()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t ZinIrElementWiseInfo::ZinIrElementWiseInfo(uint64_t a1, int a2)
{
  result = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(a1, 5);
  *result = &unk_1F19F2118;
  *(result + 12) = a2;
  return result;
}

uint64_t ZinIrElementWiseInfo::ZinIrElementWiseInfo(uint64_t a1, uint64_t a2)
{
  result = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(a1, a2);
  *result = &unk_1F19F2118;
  *(result + 12) = *(a2 + 12);
  return result;
}

uint64_t ZinIrElementWiseInfo::ComputeOutputAxisType(uint64_t a1, uint64_t a2, char ***a3, uint64_t a4)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 4);
  v7 = IsEWTypeUnary(*(a1 + 12));
  v8 = 1;
  if (!v7)
  {
    v8 = 2;
  }

  if (v6 < v8)
  {
    return 3;
  }

  for (i = *a3; i != a3[1]; i += 10)
  {
    if ((*i & 0x20) == 0)
    {
      *a4 = 0;
      std::vector<ZinSymbolicExpressionRef>::__assign_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>((a4 + 8), 0, 0, 0);
      result = 0;
      *(a4 + 32) = 5;
      *(a4 + 36) = 0;
      return result;
    }
  }

  if (!ZinTensorAxisTypeAndDimensions::ValidateBroadcastAxisType(a3))
  {
    return 3;
  }

  v10 = *a3;
  *a4 = **a3;
  if (v10 != a4)
  {
    std::vector<ZinSymbolicExpressionRef>::__assign_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>((a4 + 8), *(v10 + 8), *(v10 + 16), (*(v10 + 16) - *(v10 + 8)) >> 4);
  }

  v11 = *(v10 + 32);
  *(a4 + 36) = *(v10 + 36);
  *(a4 + 32) = v11;
  v13 = *a3;
  v12 = a3[1];
  while (v13 != v12)
  {
    ZinTensorAxisTypePacked::operator|=(a4, v13);
    v13 += 80;
  }

  return 0;
}

uint64_t ZinIrElementWiseInfo::ComputeOutputDimensions(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (a2[1] == *a2)
  {
    return 3;
  }

  v5 = *v3;
  v6 = *(v3 + 16);
  *(a3 + 32) = *(v3 + 32);
  *a3 = v5;
  *(a3 + 16) = v6;
  v7 = *a2;
  v8 = a2[1];
  while (v7 != v8)
  {
    v9 = 0;
    do
    {
      Dimension = ZinTensorPosition::GetDimension(a3, v9);
      v11 = ZinTensorPosition::GetDimension(v7, v9);
      if (Dimension <= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = Dimension;
      }

      ZinTensorDimensions::SetDimension(a3, v9, v12);
      v9 = (v9 + 1);
    }

    while (v9 != 5);
    v7 += 40;
  }

  return 0;
}

uint64_t ZinElementWiseLayer::ValidateSemantics_Impl(ZinIrOpLayer *a1, uint64_t *a2, unsigned __int8 *a3)
{
  ZinIrOpLayer::ValidateSemantics_Impl(a1, a2, a3);
  result = IsEWTypeUnary(*(*(a1 + 11) + 12));
  v6 = a2[1] - *a2;
  if (result)
  {
    if (v6 != 136)
    {
      ZinAssertImpl("Unary Elementwise must have 1 input.");
    }
  }

  else
  {
    if (0xF0F0F0F0F0F0F0F1 * (v6 >> 3) <= 1)
    {
      ZinAssertImpl("Binary Elementwise must have at least 2 inputs.");
    }

    return ZinElementWiseLayerUtils::CheckAllDimensionsBroadcastable(a2);
  }

  return result;
}

void *ZinElementWiseLayer::ZinElementWiseLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4, ZinIrKernel **a5)
{
  v6 = *a2;
  *a2 = 0;
  v7 = a3[1];
  v10 = *a3;
  v11 = v7;
  v12 = v6;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinIrOpLayer::ZinIrOpLayer(a1, &v12, &v10, a4, a5);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v8 = v12;
  v12 = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  *a1 = &unk_1F19F2150;
  return a1;
}

void sub_1A697DA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  ZinLayerNormLayer::ZinLayerNormLayer(va);
  _Unwind_Resume(a1);
}

void ZinElementWiseLayer::LowerEwAbsH11H12(std::string *this, ZinIrOpLayerGraph *a2)
{
  v12[18] = *MEMORY[0x1E69E9840];
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  if (MemoryPools[1] - *MemoryPools == 8)
  {
    v4 = MemoryPools;
    ZinObjectNameFactory::ZinObjectNameFactory(&v10, this + 2);
    size = this[1].__r_.__value_.__l.__size_;
    (*(***v4 + 88))(v11);
    memset(v8, 0, sizeof(v8));
    std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v8, v11, v12, 1uLL);
    v6 = *((*(***v4 + 40))(**v4, 0) + 104);
    v9 = 0;
    ZinBuilder::CreateConstScaleAndBiasGOC(size, &v10, v8, v6, 0, 0, &v9, -1.0, 0.0, v7, 0, 0);
  }

  ZinAssertImpl("Elementwise Abs must have 1 input");
}

void sub_1A697E058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a12);
  a29 = &unk_1F19D0088;
  if (a35 < 0)
  {
    operator delete(__p);
  }

  a38 = &unk_1F19D0088;
  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void ZinElementWiseLayer::LowerEWCompare(ZinElementWiseLayer *this, ZinIrOpLayerGraph *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  memset(v13, 0, sizeof(v13));
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(v13, *MemoryPools, *(MemoryPools + 8), (*(MemoryPools + 8) - *MemoryPools) >> 3);
  (*(*this + 40))(this, 0);
  ZinIrActivationParams::ZinIrActivationParams(v11, 0);
  v4 = *(*(this + 11) + 12);
  switch(v4)
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
      __p[0] = 0;
      __p[1] = 0;
      *&v15 = 0;
      v8 = ZinIrEWTypeToCFString(v4);
      ZinGetString(v8, __p);
      if ((SBYTE7(v15) & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      ZinAssertImpl("Unsupported elementwise compare op %s", v9);
    case 0xAu:
    case 0x10u:
      ZinIrActivationParams::ZinIrActivationParams(__p, 25);
      goto LABEL_8;
    case 0xBu:
    case 0x11u:
      ZinIrActivationParams::ZinIrActivationParams(__p, 26);
      goto LABEL_8;
    case 0xCu:
    case 0x12u:
      ZinIrActivationParams::ZinIrActivationParams(__p, 27);
      goto LABEL_8;
    case 0xDu:
    case 0x13u:
      ZinIrActivationParams::ZinIrActivationParams(__p, 28);
      goto LABEL_8;
    case 0xEu:
    case 0x14u:
      ZinIrActivationParams::ZinIrActivationParams(__p, 29);
      goto LABEL_8;
    case 0xFu:
    case 0x15u:
      ZinIrActivationParams::ZinIrActivationParams(__p, 30);
LABEL_8:
      v11[8] = v22;
      v11[9] = v23;
      v12 = v24;
      v11[4] = v18;
      v11[5] = v19;
      v11[6] = *v20;
      v11[7] = v21;
      v11[0] = *__p;
      v11[1] = v15;
      v11[2] = v16;
      v11[3] = v17;
      break;
    default:
      break;
  }

  if (*(this + 71) >= 0)
  {
    v5 = *(this + 71);
  }

  else
  {
    v5 = *(this + 7);
  }

  v6 = __p;
  std::string::basic_string[abi:ne200100](__p, v5 + 15);
  if (SBYTE7(v15) < 0)
  {
    v6 = __p[0];
  }

  if (v5)
  {
    if (*(this + 71) >= 0)
    {
      v7 = this + 48;
    }

    else
    {
      v7 = *(this + 6);
    }

    memmove(v6, v7, v5);
  }

  strcpy(v6 + v5, "_comparison_lut");
  ZinObjectNameFactory::ZinObjectNameFactory(&v10, __p);
  if (SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_1A697EA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a63 = v64 + 8;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&a63);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a26);
  (*(*v65 + 16))(v65);
  (*(*v63 + 16))(v63);
  a30 = &unk_1F19D0088;
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a60)
  {
    a61 = a60;
    operator delete(a60);
  }

  _Unwind_Resume(a1);
}

void ZinElementWiseLayer::LowerEWPower(ZinIrOpLayer *a1, ZinElementWiseLayerUtils *a2, std::string *this, const ZinTensorDimensions ***a4)
{
  v52[6] = *MEMORY[0x1E69E9840];
  v8 = *(*ZinIrContext::GetMemoryPools(this) + 8);
  v9 = *(v8[11] + 8);
  v10 = (*(*v8 + 40))(v8, 0);
  v11 = IsSingularValue(v10 + 4);
  v12 = (*(*v8 + 40))(v8, 0);
  _ZF = v9 != 29 || v11 == 0;
  if (!_ZF)
  {
    if (*(v12 + 104) != 3)
    {
      ZinAssertImpl("Invalid exponent data type, only fp16 is supported.");
    }

    v14 = (*(*v8 + 40))(v8, 0);
    v15 = *(v14 + 168);
    v16 = *(v14 + 176);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ZinIrConstData::GetDataAt<half>(v15);
    __asm { FCVT            S9, H0 }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v22 = floorf(_S9);
    __asm { FCMP            H8, #0 }

    if (_NF ^ _VF | _ZF)
    {
      v24 = 0;
    }

    else
    {
      v24 = v22 == _S9;
    }

    if (v24)
    {
      if (_H8 != 3)
      {
        if (_H8 == 2)
        {
          ImplementSquareByMult(a2, this);
        }

        if ((this[2].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(this[2].__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = this[2].__r_.__value_.__l.__size_;
        }

        v38 = &v47;
        std::string::basic_string[abi:ne200100](&v47, size + 26);
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v38 = v47.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          if ((this[2].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            data = this + 2;
          }

          else
          {
            data = this[2].__r_.__value_.__l.__data_;
          }

          memmove(v38, data, size);
        }

        strcpy(v38 + size, "_for_positive_int_exponent");
        ZinObjectNameFactory::ZinObjectNameFactory(v52, &v47);
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        v40 = this[1].__r_.__value_.__l.__size_;
        ZinIrContext::GetMemoryPools(this);
        ZinIrContext::GetMemoryPools(this);
        v41 = (*(this->__r_.__value_.__r.__words[0] + 40))(this, 0);
        v42 = *((*(this->__r_.__value_.__r.__words[0] + 40))(this, 0) + 104);
        MemoryPools = ZinIrContext::GetMemoryPools(this);
        (*(***MemoryPools + 88))(&v47);
        memset(v51, 0, sizeof(v51));
        std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v51, &v47, v48, 1uLL);
        ZinBuilder::CreateElementWiseLayer(v40, v52, 9, v51, v41 + 64, v42);
      }

      if ((this[2].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(this[2].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = this[2].__r_.__value_.__l.__size_;
      }

      v30 = &v47;
      std::string::basic_string[abi:ne200100](&v47, v29 + 7);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v30 = v47.__r_.__value_.__r.__words[0];
      }

      if (v29)
      {
        if ((this[2].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = this + 2;
        }

        else
        {
          v31 = this[2].__r_.__value_.__l.__data_;
        }

        memmove(v30, v31, v29);
      }

      strcpy(v30 + v29, "_to_mul");
      ZinObjectNameFactory::ZinObjectNameFactory(v51, &v47);
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      v32 = this[1].__r_.__value_.__l.__size_;
      v33 = ZinIrContext::GetMemoryPools(this);
      (*(***v33 + 88))(&v47);
      v34 = ZinIrContext::GetMemoryPools(this);
      (*(***v34 + 88))(v48);
      memset(v52, 0, 24);
      std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v52, &v47, &v49, 2uLL);
      v35 = (*(this->__r_.__value_.__r.__words[0] + 40))(this, 0);
      v36 = (*(this->__r_.__value_.__r.__words[0] + 40))(this, 0);
      ZinBuilder::CreateElementWiseLayer(v32, v51, 2, v52, v35 + 64, *(v36 + 104));
    }
  }

  ZinIrOpLayer::GetInputTensorDimensions(&v45, a1);
  memset(v44, 0, sizeof(v44));
  ZinElementWiseLayerUtils::DecomposeElementWiseLayer(&v45, v44, **a4, 0);
  ZinElementWiseLayerUtils::HandleInputDimensionsMismatch(a2, a1, v44);
  v25 = **ZinIrContext::GetMemoryPools(this);
  ZinIrContext::GetMemoryPools(this);
  v26 = (*(this->__r_.__value_.__r.__words[0] + 40))(this, 0);
  ZinObjectNameFactory::ZinObjectNameFactory(v52, this + 2);
  v27 = *(v26 + 32);
  (*(*v25 + 88))(v51, v25, 0);
  memset(v46, 0, sizeof(v46));
  std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v46, v51, v52, 1uLL);
  ZinIrActivationParams::ZinIrActivationParams(&v47, 20);
  v28 = *(v26 + 104);
  v50 = 0;
  ZinBuilder::CreateActivation(v27, v52, v46, &v47, v28, &v50);
}

void sub_1A6980654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a65);
  *(v65 - 160) = &unk_1F19D0088;
  if (*(v65 - 129) < 0)
  {
    operator delete(*(v65 - 152));
  }

  _Unwind_Resume(a1);
}

void ImplementSquareByMult(ZinIrOpLayerGraph *a1, ZinElementWiseLayer *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a2 + 71) >= 0)
  {
    v3 = *(a2 + 71);
  }

  else
  {
    v3 = *(a2 + 7);
  }

  v4 = __p;
  std::string::basic_string[abi:ne200100](__p, v3 + 7);
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v4 = __p[0].__r_.__value_.__r.__words[0];
  }

  if (v3)
  {
    if (*(a2 + 71) >= 0)
    {
      v5 = a2 + 48;
    }

    else
    {
      v5 = *(a2 + 6);
    }

    memmove(v4, v5, v3);
  }

  strcpy(v4 + v3, "_to_mul");
  ZinObjectNameFactory::ZinObjectNameFactory(&v11, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a2 + 4);
  MemoryPools = ZinIrContext::GetMemoryPools(a2);
  (*(***MemoryPools + 88))(__p);
  v8 = ZinIrContext::GetMemoryPools(a2);
  (*(***v8 + 88))(v14);
  memset(v12, 0, 24);
  std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v12, __p, &v15, 2uLL);
  v9 = (*(*a2 + 40))(a2, 0);
  v10 = (*(*a2 + 40))(a2, 0);
  ZinBuilder::CreateElementWiseLayer(v6, &v11, 2, v12, v9 + 64, *(v10 + 104));
}

void sub_1A69810A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinElementWiseLayer::LowerEWDivide(ZinElementWiseLayer *this, ZinIrOpLayerGraph *a2, std::string *a3)
{
  v45[3] = *MEMORY[0x1E69E9840];
  size = a3[1].__r_.__value_.__l.__size_;
  (*(a3->__r_.__value_.__r.__words[0] + 40))(a3, 0);
  ZinObjectNameFactory::ZinObjectNameFactory(&v42, a3 + 2);
  v5 = *(*(*(*ZinIrContext::GetMemoryPools(a3) + 8) + 88) + 8);
  MemoryPools = ZinIrContext::GetMemoryPools(a3);
  if ((*(size + 1288) & 1) == 0 && v5 == 29)
  {
    v7 = *(*MemoryPools + 8);
    v36 = (*(*v7 + 40))(v7, 0);
    ElementCount = ZinTensorDimensions::GetElementCount((v36 + 64));
    __src = 0;
    v40 = 0;
    v41 = 0;
    if (ElementCount)
    {
      for (i = 0; i != ElementCount; ++i)
      {
        v10 = (*(*v7 + 40))(v7, 0);
        v11 = *(v10 + 168);
        v12 = *(v10 + 176);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ZinIrConstData::GetDataAt<float>(v11);
        v14 = v13;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        if (v14 == 0.0)
        {
          ZinAssertImpl("Cannot divide by zero");
        }

        _S0 = 1.0 / v14;
        __asm { FCVT            H8, S0 }

        v21 = v40;
        if (v40 >= v41)
        {
          v23 = __src;
          v24 = v40 - __src;
          v25 = (v40 - __src) >> 1;
          if (v25 <= -2)
          {
            std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
          }

          if (v41 - __src <= v25 + 1)
          {
            v26 = v25 + 1;
          }

          else
          {
            v26 = v41 - __src;
          }

          if (v41 - __src >= 0x7FFFFFFFFFFFFFFELL)
          {
            v27 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v26;
          }

          if (v27)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(&__src, v27);
          }

          *(2 * v25) = _H8;
          v22 = 2 * v25 + 2;
          memcpy(0, v23, v24);
          v28 = __src;
          __src = 0;
          v40 = v22;
          v41 = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v40 = _H8;
          v22 = (v21 + 2);
        }

        v40 = v22;
      }
    }

    std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<half>,std::allocator<ZinIrConstData_specialization<half>>,std::vector<half>,0>();
  }

  v29 = ZinIrContext::GetMemoryPools(a3);
  v30 = *(*v29 + 8);
  if (*(v30[11] + 8) == 18)
  {
    v31 = **ZinIrContext::GetMemoryPools(*(*v29 + 8));
    (*(*v31 + 88))(&__p, v31, 0);
    __src = 0;
    v40 = 0;
    v41 = 0;
    std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&__src, &__p, v45, 1uLL);
    v32 = ZinIrActivationParams::ZinIrActivationParams(&v43, 18);
    v33 = *((*(*v31 + 40))(v31, 0, v32) + 104);
    v38 = 0;
    ZinBuilder::CreateActivation(size, &v42, &__src, &v43, v33, &v38);
  }

  (*(*v30 + 88))(&__p, *(*v29 + 8), 0);
  __src = 0;
  v40 = 0;
  v41 = 0;
  std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&__src, &__p, v45, 1uLL);
  v34 = ZinIrActivationParams::ZinIrActivationParams(&v43, 18);
  v35 = *((*(a3->__r_.__value_.__r.__words[0] + 40))(a3, 0, v34) + 104);
  v37 = 0;
  ZinBuilder::CreateActivation(size, &v42, &__src, &v43, v35, &v37);
}

void sub_1A6981C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, void *__p, uint64_t a39, uint64_t a40, void *a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a26);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a50);
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  a41 = &unk_1F19D0088;
  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

void ZinElementWiseLayer::LowerEWSquare(ZinElementWiseLayer *this, ZinIrOpLayerGraph *a2, ZinElementWiseLayer *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *(this + 4);
  v6 = (v5 + 736);
  v7 = *(v5 + 759);
  if (v7 < 0)
  {
    if (*(v5 + 744) != 11)
    {
      goto LABEL_38;
    }

    v6 = *v6;
  }

  else if (v7 != 11)
  {
    goto LABEL_38;
  }

  v8 = *v6;
  v9 = *(v6 + 3);
  if (v8 == 0x2D6169762D727173 && v9 == 0x74756C2D6169762DLL)
  {
    v11 = **ZinIrContext::GetMemoryPools(a3);
    if (*(*(v11 + 11) + 8) == 5)
    {
      OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(v11);
      if (OutgoingLayers[1] - *OutgoingLayers == 8)
      {
        if (*(a3 + 71) >= 0)
        {
          v13 = *(a3 + 71);
        }

        else
        {
          v13 = *(a3 + 7);
        }

        v14 = &v31;
        std::string::basic_string[abi:ne200100](&v31, v13 + 1);
        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v14 = v31.__r_.__value_.__r.__words[0];
        }

        if (v13)
        {
          if (*(a3 + 71) >= 0)
          {
            v15 = a3 + 48;
          }

          else
          {
            v15 = *(a3 + 6);
          }

          memmove(v14, v15, v13);
        }

        *(&v14->__r_.__value_.__l.__data_ + v13) = 95;
        std::string::basic_string[abi:ne200100]<0>(&v27, "sqr_via_lut");
        v16 = std::string::append(&v27, "_xfm", 4uLL);
        v17 = *&v16->__r_.__value_.__l.__data_;
        v29 = v16->__r_.__value_.__r.__words[2];
        *v28 = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        if (v29 >= 0)
        {
          v18 = v28;
        }

        else
        {
          v18 = v28[0];
        }

        if (v29 >= 0)
        {
          v19 = HIBYTE(v29);
        }

        else
        {
          v19 = v28[1];
        }

        v20 = std::string::append(&v31, v18, v19);
        v21 = *&v20->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        ZinObjectNameFactory::ZinObjectNameFactory(&v30, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28[0]);
        }

        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        v22 = *(a3 + 4);
        MemoryPools = ZinIrContext::GetMemoryPools(a3);
        (*(***MemoryPools + 88))(&v31);
        v28[0] = 0;
        v28[1] = 0;
        v29 = 0;
        std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v28, &v31, &v32, 1uLL);
        v24 = ZinIrActivationParams::ZinIrActivationParams(__p, 19);
        v25 = *((*(*a3 + 40))(a3, 0, v24) + 104);
        v27.__r_.__value_.__r.__words[0] = 0;
        ZinBuilder::CreateActivation(v22, &v30, v28, __p, v25, &v27);
      }
    }
  }

LABEL_38:
  ImplementSquareByMult(a2, a3);
}

void sub_1A6982340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinElementWiseLayer::Lower(std::string *a1, ZinElementWiseLayerUtils *a2, const ZinTensorDimensions ***a3)
{
  v6 = *(a1[3].__r_.__value_.__r.__words[2] + 12);
  if (v6 == 5)
  {
    ZinElementWiseLayer::LowerEWPower(a1, a2, a1, a3);
  }

  if (v6 == 6)
  {
    ZinElementWiseLayer::LowerEWDivide(a1, a2, a1);
  }

  MemoryPools = ZinIrContext::GetMemoryPools(a1);
  v8 = MemoryPools[1] - *MemoryPools;
  if (v8 >= 9)
  {
    memset(v19, 0, 24);
    v9 = ZinIrContext::GetMemoryPools(a1);
    v10 = *v9;
    v11 = *(v9 + 8);
    if (*v9 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = *v10++;
        v12 |= *(*(v13 + 88) + 8) == 29;
      }

      while (v10 != v11);
    }

    ZinIrOpLayer::GetInputTensorDimensions(__p, a1);
    if (v8 != 16 || (v12 & 1) == 0)
    {
      LOBYTE(v16) = 0;
    }

    else
    {
      v14 = *(a1[3].__r_.__value_.__r.__words[2] + 12);
      v15 = v14 > 4;
      v16 = 0x16u >> v14;
      if (v15)
      {
        LOBYTE(v16) = 0;
      }
    }

    ZinElementWiseLayerUtils::DecomposeElementWiseLayer(__p, v19, **a3, v16 & 1);
    ZinElementWiseLayerUtils::HandleInputDimensionsMismatch(a2, a1, v19);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    __p[0] = v19;
    std::vector<ZinElementWiseLayerUtils::ElementWiseDecomposedDesc>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  if ((*(**a3 + 1268) & 1) == 0 && *(a1[3].__r_.__value_.__r.__words[2] + 12) == 9)
  {
    ZinElementWiseLayer::LowerEwAbsH11H12(a1, a2);
  }

  if (ZinElementWiseLayer::IsEwCompare(a1))
  {
    ZinElementWiseLayer::LowerEWCompare(a1, a2);
  }

  if ((*(**a3 + 1269) & 1) == 0 && *(a1[3].__r_.__value_.__r.__words[2] + 12) == 3)
  {
    ZinElementWiseLayer::LowerEWSquare(a1, a2, a1);
  }

  return 0;
}

void sub_1A6982670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16)
{
  a16 = &a13;
  std::vector<ZinElementWiseLayerUtils::ElementWiseDecomposedDesc>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

BOOL ZinElementWiseLayer::IsEwCompare(ZinElementWiseLayer *this)
{
  if (IsEWTypeCompareBinary(*(*(this + 11) + 12)))
  {
    return 1;
  }

  v3 = *(*(this + 11) + 12);

  return IsEWTypeCompareUnary(v3);
}

void ZinElementWiseLayer::Clone(ZinIrCodegenStatsPerBasicBlock *a1, uint64_t *a2, const void **a3)
{
  if (*(a1 + 20))
  {
    if (*(a3 + 23) >= 0)
    {
      v5 = *(a3 + 23);
    }

    else
    {
      v5 = a3[1];
    }

    v6 = &v17;
    std::string::basic_string[abi:ne200100](&v17, v5 + 1);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v17.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(a3 + 23) >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = *a3;
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 95;
    std::string::basic_string[abi:ne200100]<0>(&v14, "ew_clone_kernel");
    v8 = std::string::append(&v14, "_xfm", 4uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v16 = v8->__r_.__value_.__r.__words[2];
    *v15 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v16 >= 0)
    {
      v10 = v15;
    }

    else
    {
      v10 = v15[0];
    }

    if (v16 >= 0)
    {
      v11 = HIBYTE(v16);
    }

    else
    {
      v11 = v15[1];
    }

    v12 = std::string::append(&v17, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v19 = v12->__r_.__value_.__r.__words[2];
    *__p = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    operator new();
  }

  v20 = 0;
  operator new();
}

void sub_1A69829D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  std::unique_ptr<ZinIrVector>::~unique_ptr[abi:ne200100]((v36 - 80));
  std::unique_ptr<ZinIrVector>::~unique_ptr[abi:ne200100]((v36 - 72));
  MEMORY[0x1AC55A070](v35, 0x1032C40733E5C38);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinElementWiseLayer::DebugDetailPrint@<X0>(_BYTE *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7);
  if ((v14 & 0x10) != 0)
  {
    v3 = v13;
    if (v13 < v10)
    {
      v13 = v10;
      v3 = v10;
    }

    locale = v9[4].__locale_;
  }

  else
  {
    if ((v14 & 8) == 0)
    {
      v2 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v9[1].__locale_;
    v3 = v9[3].__locale_;
  }

  v2 = v3 - locale;
  if ((v3 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  a1[23] = v2;
  if (v2)
  {
    memmove(a1, locale, v2);
  }

LABEL_14:
  a1[v2] = 0;
  v7[0] = *MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7[2] = v5;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v15);
}

void sub_1A6982D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC559F60](&a26);
  _Unwind_Resume(a1);
}

uint64_t ZinElementWiseLayer::CanMergeWithFollowingGOC(ZinElementWiseLayer *this, const ZinGOCLayer *a2)
{
  result = ZinIrOpLayer::CanMergeWithFollowingGOC(this, a2);
  if (result)
  {
    v5 = *(*(this + 11) + 12);
    if (v5 <= 8 && ((1 << v5) & 0x18C) != 0)
    {
      v7 = *(a2 + 20);
      if (ZinIrKernel::HasPerCoutScale(v7) & 1) != 0 || (ZinIrKernel::HasPerCoutBias(v7))
      {
        return 0;
      }

      v5 = *(*(this + 11) + 12);
    }

    return v5 - 7 > 1 || (ZinIrKernel::HasBias(*(a2 + 20)) & 1) == 0;
  }

  return result;
}

uint64_t ZinElementWiseLayer::IsRedundant(ZinElementWiseLayer *this)
{
  v2 = *(*(this + 11) + 12);
  if (v2 != 3)
  {
    if (v2 == 2 || v2 == 1)
    {
      if (*(*(**ZinIrContext::GetMemoryPools(this) + 88) + 8) == 29)
      {
        InputTensor = ZinIrOpLayer::GetInputTensor(this, 0);
        IsZero = ZinIrTensor::IsZero(InputTensor);
      }

      else
      {
        IsZero = 0;
      }

      if (*(*(*(*ZinIrContext::GetMemoryPools(this) + 8) + 88) + 8) == 29)
      {
        v5 = ZinIrOpLayer::GetInputTensor(this, 1uLL);
        v6 = ZinIrTensor::IsZero(v5);
      }

      else
      {
        v6 = 0;
      }

      v7 = IsZero | v6;
      return v7 & 1;
    }

LABEL_15:
    v7 = 0;
    return v7 & 1;
  }

  if (*(*(**ZinIrContext::GetMemoryPools(this) + 88) + 8) != 29)
  {
    goto LABEL_15;
  }

  v8 = ZinIrOpLayer::GetInputTensor(this, 0);

  return ZinIrTensor::IsZero(v8);
}

unint64_t std::unordered_set<ZinIrOpLayer *>::unordered_set<std::__wrap_iter<ZinIrOpLayer * const*>>(unint64_t a1, void *a2, void *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<ZinIrOpLayer *,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer *>(a1, v5, v5);
      ++v5;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t ZinParseGatherUnit(const __CFDictionary *a1, char **a2, CFArrayRef *a3)
{
  Value = CFDictionaryGetValue(a1, @"Params");
  if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFDictionaryGetTypeID()))
  {
    v12 = @"InvalidParamSyntax";
LABEL_12:
    ZinIrUnitStatus::SetError(a3, v12);
    return 3;
  }

  v8 = CFDictionaryGetValue(v6, @"GatherNDAxes");
  if (!v8 || (v9 = v8, v10 = CFGetTypeID(v8), v10 != CFArrayGetTypeID()))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinParseGatherUnit();
    }

    v12 = @"InvalidParams";
    goto LABEL_12;
  }

  return ZinParseDimsArray(v9, a2 + 20, a3);
}

void ZinIrNEConvUnit::ZinIrNEConvUnit(ZinIrNEConvUnit *this, const ZinIrNEConvUnitInfo *a2)
{
  ZinIrNEUnit::ZinIrNEUnit(this, a2);
  *v3 = &unk_1F19F22E0;
  ZinIrNEConvUnitInfo::ZinIrNEConvUnitInfo((v3 + 55), a2);
}

void sub_1A6983408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  MEMORY[0x1AC55A070](v23, 0x10B3C40246D2524, a3, a4, a5, a6, a7, a8);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  (*(*v22 + 8))(v22);
  _Unwind_Resume(a1);
}

void ZinIrNEConvUnit::CreateKernel(void *a1, const ZinIrHalParameters *a2, ZinIrFileManager *a3, const ZinWeightFileInfo *a4, uint64_t a5, uint64_t a6, ZinIrUnitStatus *a7)
{
  if (!a5)
  {
    operator new();
  }

  ZinAssertImpl("NEConv does not support Espresso weight format", a2, a3, a4, a5, a6, a7);
}

uint64_t ZinIrNEConvUnit::TensorDimensions(ZinIrNEConvUnit *this, const ZinIrHalParameters *a2, ZinTensorDimensions *a3, CFArrayRef *a4)
{
  v4 = *(this + 1);
  if (*(this + 2) - v4 == 136)
  {
    v7 = *(v4 + 8);
    v8 = *(v4 + 24);
    v16 = *(v4 + 40);
    v15[0] = v7;
    v15[1] = v8;
    GetLogicalInputAndOutputSteps(&v13, (this + 808));
    ZinGetOutputTensorDimension(v15, this + 133, &v13, v14, this + 278, *(this + 64), this + 272, v11);
    result = 0;
    v10 = v11[1];
    *a3 = v11[0];
    *(a3 + 1) = v10;
    *(a3 + 4) = v12;
  }

  else
  {
    ZinIrUnitStatus::SetError(a4, @"InvalidBottomCount");
    return 3;
  }

  return result;
}

void ZinIrNEConvUnit::CreateDummyKernel(uint64_t a1, uint64_t a2, ZinIrKernel **a3, uint64_t a4)
{
  ZinIrKernelCreationUtils::CreateKernelDescriptor(a1 + 808, a1 + 8, v16);
  *(&v12.__r_.__value_.__s + 23) = 14;
  strcpy(&v12, "ne_conv_kernel");
  v8 = std::string::append(&v12, "_xfm", 4uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v13, "_dummy", 6uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v15 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  ZinIrKernelCreationUtils::CreateDummyKernel(a1 + 808, v16, a2, a3, __p, a4);
}

void sub_1A6983880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  ZinKernelDescriptor::~ZinKernelDescriptor(&a30);
  _Unwind_Resume(a1);
}

void ZinIrNEConvUnit::~ZinIrNEConvUnit(ZinIrNEConvUnit *this)
{
  *this = &unk_1F19F22E0;
  ZinIrNEConvUnitInfo::~ZinIrNEConvUnitInfo((this + 440));

  ZinIrNEUnit::~ZinIrNEUnit(this);
}

{
  *this = &unk_1F19F22E0;
  v2 = (this + 440);
  *(this + 55) = &unk_1F19ECE48;
  v3 = (this + 808);
  *(this + 101) = &unk_1F1A2EAA0;
  v4 = *(this + 120);
  if (v4)
  {
    *(this + 121) = v4;
    operator delete(v4);
  }

  v5 = *(this + 117);
  if (v5)
  {
    *(this + 118) = v5;
    operator delete(v5);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v3);
  *(this + 55) = &unk_1F19D1078;
  if (*(this + 792) == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(this + 85);
  }

  if (*(this + 672) == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(this + 65);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v2);
  ZinIrNEUnit::~ZinIrNEUnit(this);

  JUMPOUT(0x1AC55A070);
}