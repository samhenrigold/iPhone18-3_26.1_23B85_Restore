uint64_t ZinIrRegSpill::SpillResidentTensor(uint64_t a1, const ZinLiveRange *a2, uint64_t a3)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  v5 = ZinIrLocalRegAlloc::FreeL2Symbol(*(a1 + 16), a2, &__p);
  v6 = __p;
  if (v5)
  {
    v7 = 3;
    if (!__p)
    {
      return v7;
    }

    goto LABEL_15;
  }

  v8 = v13;
  if (__p != v13)
  {
    do
    {
      std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_hint_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(a3, (a3 + 8), v6, v6);
      ++v6;
    }

    while (v6 != v8);
    v6 = __p;
    v8 = v13;
  }

  if (v6 == v8)
  {
    v7 = 0;
    if (!v6)
    {
      return v7;
    }

    goto LABEL_15;
  }

  v9 = v6 + 1;
  do
  {
    v7 = ZinIrRegSpill::RevertL2DepOrChain(a1, *(v9 - 1), a3);
    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 == v8;
    }

    ++v9;
  }

  while (!v10);
  v6 = __p;
  if (__p)
  {
LABEL_15:
    v13 = v6;
    operator delete(v6);
  }

  return v7;
}

void sub_1A6A15AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrRegSpill::SpillResidentTensor(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  v5 = *(a1 + 16);
  v6 = *(a2 + 160);
  if (!v6 || (v7 = *(v6 + 40), v7 == *(v6 + 48)))
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7;
  }

  ZinIrLocalRegAlloc::FreeL2Symbol(v5, v8, &__p);
  v9 = __p;
  v10 = v16;
  if (__p != v16)
  {
    do
    {
      std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_hint_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(a3, a3 + 1, v9, v9);
      ++v9;
    }

    while (v9 != v10);
    v9 = __p;
    v10 = v16;
  }

  if (v9 == v10)
  {
    v12 = 0;
    if (!v9)
    {
      return v12;
    }

    goto LABEL_16;
  }

  v11 = v9 + 1;
  do
  {
    v12 = ZinIrRegSpill::RevertL2DepOrChain(a1, *(v11 - 1), a3);
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11 == v10;
    }

    ++v11;
  }

  while (!v13);
  v9 = __p;
  if (__p)
  {
LABEL_16:
    v16 = v9;
    operator delete(v9);
  }

  return v12;
}

void sub_1A6A15C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ZinIrOpLayer *ZinIrRegSpill::IsL2DepOrChain(ZinIrRegSpill *this, ZinIrOpLayer **a2, ZinANELayer **a3, ZinANELayer **a4)
{
  result = ZinIrOpLayer::IsANELayer(a2[19]);
  if (result)
  {
    v8 = a2[19];
    *a3 = v8;
    (*(*v8 + 64))(v8, a2);
    result = ZinIrRegAllocUtil::GetFirstConsumer(*a3);
    *a4 = result;
    if (result)
    {
      return (*(*a3 + 9) == *(result + 9));
    }
  }

  return result;
}

BOOL ZinIrRegSpill::IsChained(ZinIrRegSpill *this, ZinIrOpLayer **a2, ZinANELayer **a3, ZinANELayer **a4)
{
  result = ZinIrOpLayer::IsANELayer(a2[19]);
  if (result)
  {
    v8 = a2[19];
    *a3 = v8;
    if (*(*(v8 + 65) + 1408) == 4)
    {
      v10.n128_u64[0] = **ZinIrOpLayer::GetOutgoingLayers(v8);
      v11 = 0;
      v9 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v10);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v10, v9);
      *a4 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v10);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v10);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ZinIrRegSpill::SpillL2DepOrChain(uint64_t a1, ZinANELayer **a2, ZinANELayer **a3, uint64_t **a4)
{
  if (!ZinIrLocalRegAlloc::HasLockedPEWorkUnit(*(a1 + 16), *a2))
  {
    ZinMirL2Config::PE::SetLock(*(*a2 + 65) + 180, 0);
  }

  HasLockedNEWorkUnit = ZinIrLocalRegAlloc::HasLockedNEWorkUnit(*(a1 + 16), *a2);
  v9 = *(*a2 + 65);
  if (!HasLockedNEWorkUnit)
  {
    *(v9 + 155) = 0;
  }

  ZinMirL2Config::Tile::SetLock(v9 + 160, 0);
  if (!ZinIrLocalRegAlloc::HasLockedPEWorkUnit(*(a1 + 16), *a3))
  {
    ZinMirL2Config::PE::SetLock(*(*a3 + 65) + 180, 0);
  }

  v10 = ZinIrLocalRegAlloc::HasLockedNEWorkUnit(*(a1 + 16), *a3);
  v11 = *(*a3 + 65);
  if (!v10)
  {
    *(v11 + 155) = 0;
  }

  ZinMirL2Config::Tile::SetLock(v11 + 160, 0);
  v12 = *a2;
  v13 = *(*a2 + 9);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v14 = *a3;
  v26[0] = 0;
  v29 = 0;
  IntermediateLayers = ZinTensorFamilyUtil::GetIntermediateLayers(v12, v14, 0, 0, &v30, v26);
  v16 = v13 + 1;
  if (v29 == 1)
  {
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v28, v28[1]);
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v27);
    std::__hash_table<std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>>>::~__hash_table(v26);
  }

  if (IntermediateLayers || (v18 = v30, v19 = v31, v30 == v31))
  {
    v17 = v16;
  }

  else
  {
    do
    {
      v20 = *v18++;
      v17 = v16 + 1;
      *(v20 + 72) = v16++;
    }

    while (v18 != v19);
  }

  if (ZinIrLocalRegAlloc::ChangeEngineLayerSchedule(*(a1 + 16), *a3, v17, 0))
  {
    v21 = *(a1 + 16);
    v22 = (*(**a2 + 40))(*a2, 0);
    RootTensor = ZinIrTensor::GetRootTensor(v22);
    ZinIrLocalRegAlloc::RemoveSymbolFromLayerAndTensor(v21, RootTensor, a4);
    v24 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrRegSpill::SpillL2DepOrChain();
    }

    v24 = 3;
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v24;
}

void sub_1A6A15F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::optional<ZinTensorFamilyUtil>::~optional(va);
  v5 = *(v3 - 88);
  if (v5)
  {
    *(v3 - 80) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinIrRegSpill::VerifyL2Symbols(void)::$_0,std::allocator<ZinIrRegSpill::VerifyL2Symbols(void)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1, uint64_t a2, ZinIrOpLayer **a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  if (!ZinIrOpLayer::IsANELayer(*a3))
  {
    return 0;
  }

  MemoryPools = ZinIrContext::GetMemoryPools(v3);
  if (MemoryPools[1] == *MemoryPools)
  {
LABEL_13:
    ZinEngineLayerMirInfo::GetL2WrSymbols(&v16, *(v3 + 65));
    v10 = v16;
    v11 = v17 - v16;
    if (v11)
    {
      if (v11 != 1)
      {
        v12 = 0;
        if (!v16)
        {
          return v12;
        }

        goto LABEL_22;
      }

      if (*v16)
      {
        v12 = 0;
        goto LABEL_22;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = (v3 + 48);
      if (*(v3 + 71) < 0)
      {
        v14 = *v14;
      }

      *buf = 136315138;
      v20 = v14;
      _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: L2 write symbol does not exist in %s", buf, 0xCu);
      v12 = 3;
      v10 = v16;
      if (!v16)
      {
        return v12;
      }
    }

    else
    {
      v12 = 3;
      if (!v10)
      {
        return v12;
      }
    }

LABEL_22:
    v17 = v10;
    operator delete(v10);
    return v12;
  }

  v5 = 0;
  while (1)
  {
    InputTensor = ZinIrOpLayer::GetInputTensor(v3, v5);
    if ((*(*v3 + 224))(v3, InputTensor))
    {
      goto LABEL_12;
    }

    v18 = 0;
    if (ZinMemSourceIndexTranslator::GetL2SrcType(v3, v5, &v18))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        std::__function::__func<ZinIrRegSpill::VerifyL2Symbols(void)::$_0,std::allocator<ZinIrRegSpill::VerifyL2Symbols(void)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()();
      }

      return 3;
    }

    ZinEngineLayerMirInfo::GetL2RdSymbols(*(v3 + 65), v18, &v16);
    v7 = v16;
    v8 = v17 - v16;
    if (v8 == 1)
    {
      break;
    }

    if (!v8)
    {
      goto LABEL_25;
    }

    if (v16)
    {
      goto LABEL_11;
    }

LABEL_12:
    v9 = ZinIrContext::GetMemoryPools(v3);
    if (++v5 >= (v9[1] - *v9) >> 3)
    {
      goto LABEL_13;
    }
  }

  if (*v16)
  {
LABEL_11:
    v17 = v16;
    operator delete(v16);
    goto LABEL_12;
  }

LABEL_25:
  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (!v7)
    {
      return 3;
    }

    goto LABEL_27;
  }

  v15 = (v3 + 48);
  if (*(v3 + 71) < 0)
  {
    v15 = *v15;
  }

  *buf = 136315138;
  v20 = v15;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: L2 read symbol does not exist in %s", buf, 0xCu);
  v7 = v16;
  if (v16)
  {
LABEL_27:
    v17 = v7;
    operator delete(v7);
  }

  return 3;
}

uint64_t std::__function::__func<ZinIrRegSpill::VerifyL2Symbols(void)::$_0,std::allocator<ZinIrRegSpill::VerifyL2Symbols(void)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinIrRegSpill::VerifyChainSymbols(void)::$_0,std::allocator<ZinIrRegSpill::VerifyChainSymbols(void)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1, ZinIrOpLayerGraph **a2, ZinEngineLayerMirInfo ***a3)
{
  v3 = *a2;
  v4 = *a3;
  result = ZinIrOpLayer::IsANELayer(*a3);
  if (result)
  {
    if (*(v4[65] + 1408) != 4)
    {
      return 0;
    }

    v6 = **ZinIrOpLayer::GetOutgoingLayers(v4);
    if (!ZinIrOpLayer::IsANELayer(v6))
    {
      return 3;
    }

    result = ZinIrOpLayer::IsPELayer(v6);
    if (result)
    {
      result = (*(*v6 + 608))(v6);
      if (result)
      {
        IndexOfMatchedIncomingLayer = ZinIrOpLayerGraph::GetIndexOfMatchedIncomingLayer(v3, v6, v4);
        v9 = 0;
        if (ZinMemSourceIndexTranslator::GetL2SrcType(v6, IndexOfMatchedIncomingLayer, &v9))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            std::__function::__func<ZinIrRegSpill::VerifyL2Symbols(void)::$_0,std::allocator<ZinIrRegSpill::VerifyL2Symbols(void)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()();
          }

          return 3;
        }

        v8 = v9;
        if (v9 == 2)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            std::__function::__func<ZinIrRegSpill::VerifyChainSymbols(void)::$_0,std::allocator<ZinIrRegSpill::VerifyChainSymbols(void)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()();
          }

          return 3;
        }

        if (!ZinEngineLayerMirInfo::HasL2Read(v4[65]) && !ZinEngineLayerMirInfo::HasL2Read(v6[65], v8 == 0))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            std::__function::__func<ZinIrRegSpill::VerifyChainSymbols(void)::$_0,std::allocator<ZinIrRegSpill::VerifyChainSymbols(void)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(v4);
          }

          return 3;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<ZinIrRegSpill::VerifyChainSymbols(void)::$_0,std::allocator<ZinIrRegSpill::VerifyChainSymbols(void)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<ZinIrRegSpill::InsertL2Copy(ZinPELayer *,unsigned long)::$_0,std::allocator<ZinIrRegSpill::InsertL2Copy(ZinPELayer *,unsigned long)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F19F45D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ZinIrRegSpill::InsertL2Copy(ZinPELayer *,unsigned long)::$_0,std::allocator<ZinIrRegSpill::InsertL2Copy(ZinPELayer *,unsigned long)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = **(a1 + 8);
  if (v5 == *a3)
  {
    *(v5 + 72) = **(a1 + 16);
  }

  else if (*(v4 + 72) >= **(a1 + 16))
  {
    v6 = *a2;
    v13.n128_u64[0] = *a3;
    v14 = 0;
    v7 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v7);
    v11.n128_u64[0] = **(a1 + 8);
    v12 = 0;
    v8 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v11);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v11, v8);
    IsConnected = ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::IsConnected(v6, &v13, &v11);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v11);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v13);
    if ((IsConnected & 1) == 0)
    {
      ++*(v4 + 72);
    }
  }

  return 0;
}

void sub_1A6A166D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinIrRegSpill::InsertL2Copy(ZinPELayer *,unsigned long)::$_0,std::allocator<ZinIrRegSpill::InsertL2Copy(ZinPELayer *,unsigned long)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ZinIrRegSpill::Run()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ZinIrRegSpill::DoSpillOnCandidates()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ZinIrRegSpill::InsertL2Copy()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ZinIrRegSpill::SpillRead()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinIrRegSpill::SpillAndAllocateDMABuffers()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ZinIrRegSpill::RevertL2DepOrChain(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Spiller spill l2-dep/chain error.", buf, 2u);
}

void ZinIrRegSpill::SpillL2DepOrChain()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void std::__function::__func<ZinIrRegSpill::VerifyL2Symbols(void)::$_0,std::allocator<ZinIrRegSpill::VerifyL2Symbols(void)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void std::__function::__func<ZinIrRegSpill::VerifyChainSymbols(void)::$_0,std::allocator<ZinIrRegSpill::VerifyChainSymbols(void)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1)
{
  (*(*a1 + 40))(a1, 0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void std::__function::__func<ZinIrRegSpill::VerifyChainSymbols(void)::$_0,std::allocator<ZinIrRegSpill::VerifyChainSymbols(void)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void *ZinMirPEReductionAccumulationRetention::ZinMirPEReductionAccumulationRetention(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  a1[1] = a2;
  a1[2] = a4;
  std::string::basic_string[abi:ne200100]<0>(&__p, "pe_reduction_acc_retention");
  ZinObjectNameFactory::ZinObjectNameFactory((a1 + 3), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  return a1;
}

void sub_1A6A16F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinMirPEReductionAccumulationRetention::UpdateGraphWithConst(ZinMirPEReductionAccumulationRetention *this, ZinIrOpLayerGraph *a2, ZinPEElementWiseLayer *a3)
{
  __p[55] = *MEMORY[0x1E69E9840];
  (*(*a3 + 48))(a3, 0);
  v4 = (*(*a3 + 392))(a3, 3);
  v5 = (*(*a3 + 392))(a3, 4);
  v6 = (*(*a3 + 392))(a3, 1);
  v7 = *(*(RawOrShared<ZinReductionLayer>::unwrap_const_ptr(a3 + 960) + 88) + 12);
  v47 = 0.0;
  ZinPEElementWiseLayer::GetOutputReductionFinalScaleValue(a3, &v47);
  if (v7 == 3)
  {
    v47 = v47 / (v5 * v4 * v6);
  }

  v8 = *(ZinIrOpLayer::GetInputTensor(a3, 0) + 104);
  v45[0] = vdupq_n_s64(1uLL);
  v45[1] = v45[0];
  v46 = 1;
  v9 = *(*(RawOrShared<ZinReductionLayer>::unwrap_const_ptr(a3 + 960) + 88) + 12);
  if (v9 > 5)
  {
    if (v9 <= 7)
    {
      if (v9 != 6)
      {
        goto LABEL_19;
      }

LABEL_24:
      if (v8 <= 2)
      {
        if (v8 == 1)
        {
          v44[0] = 127;
          std::vector<signed char>::vector[abi:ne200100](__p, 1, v44);
          std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<signed char>,std::allocator<ZinIrConstData_specialization<signed char>>,std::vector<signed char>,0>();
        }

        if (v8 == 2)
        {
          v44[0] = -1;
          std::vector<unsigned char>::vector[abi:ne200100](__p, 1, v44);
          std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<unsigned char>,std::allocator<ZinIrConstData_specialization<unsigned char>>,std::vector<unsigned char>,0>();
        }
      }

      else
      {
        switch(v8)
        {
          case 3:
            LOWORD(v43) = 31744;
            std::vector<half>::vector[abi:ne200100](__p, 1, &v43);
            std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<half>,std::allocator<ZinIrConstData_specialization<half>>,std::vector<half>,0>();
          case 12:
            v44[0] = -64;
            std::vector<e4m3_t>::vector[abi:ne200100](__p, 1, v44);
            std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<e4m3_t>,std::allocator<ZinIrConstData_specialization<e4m3_t>>,std::vector<e4m3_t>,0>();
          case 11:
            LODWORD(v43) = 2139095040;
            std::vector<float>::vector[abi:ne200100](__p, 1uLL, &v43);
            std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<float>,std::allocator<ZinIrConstData_specialization<float>>,std::vector<float>,0>();
        }
      }

      v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v34)
      {
        goto LABEL_61;
      }

      goto LABEL_53;
    }

    if ((v9 - 8) >= 3)
    {
      if (v9 == 11)
      {
        v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v10)
        {
          ZinMirPEReductionAccumulationRetention::UpdateGraphWithConst(v10, v11, v12, v13, v14, v15, v16, v17);
        }
      }

      goto LABEL_53;
    }

    goto LABEL_15;
  }

  if (v9 > 2)
  {
    if ((v9 - 4) >= 2)
    {
      if (v9 != 3)
      {
        goto LABEL_53;
      }

LABEL_30:
      if (v8 <= 2)
      {
        if (v8 == 1)
        {
          v44[0] = 0;
          std::vector<signed char>::vector[abi:ne200100](__p, 1, v44);
          std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<signed char>,std::allocator<ZinIrConstData_specialization<signed char>>,std::vector<signed char>,0>();
        }

        if (v8 == 2)
        {
          v44[0] = 0;
          std::vector<unsigned char>::vector[abi:ne200100](__p, 1, v44);
          std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<unsigned char>,std::allocator<ZinIrConstData_specialization<unsigned char>>,std::vector<unsigned char>,0>();
        }
      }

      else
      {
        switch(v8)
        {
          case 3:
            LOWORD(v43) = 0;
            std::vector<half>::vector[abi:ne200100](__p, 1, &v43);
            std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<half>,std::allocator<ZinIrConstData_specialization<half>>,std::vector<half>,0>();
          case 12:
            v44[0] = 0;
            std::vector<e4m3_t>::vector[abi:ne200100](__p, 1, v44);
            std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<e4m3_t>,std::allocator<ZinIrConstData_specialization<e4m3_t>>,std::vector<e4m3_t>,0>();
          case 11:
            LODWORD(v43) = 0;
            std::vector<float>::vector[abi:ne200100](__p, 1uLL, &v43);
            std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<float>,std::allocator<ZinIrConstData_specialization<float>>,std::vector<float>,0>();
        }
      }

      v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v34)
      {
        goto LABEL_61;
      }

      goto LABEL_53;
    }

LABEL_15:
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v18)
    {
      ZinMirPEReductionAccumulationRetention::UpdateGraphWithConst(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    goto LABEL_53;
  }

  if (!v9)
  {
    goto LABEL_30;
  }

  if (v9 == 1)
  {
    goto LABEL_24;
  }

  if (v9 != 2)
  {
    goto LABEL_53;
  }

LABEL_19:
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      v44[0] = 0x80;
      std::vector<signed char>::vector[abi:ne200100](__p, 1, v44);
      std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<signed char>,std::allocator<ZinIrConstData_specialization<signed char>>,std::vector<signed char>,0>();
    }

    if (v8 == 2)
    {
      v44[0] = 0;
      std::vector<unsigned char>::vector[abi:ne200100](__p, 1, v44);
      std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<unsigned char>,std::allocator<ZinIrConstData_specialization<unsigned char>>,std::vector<unsigned char>,0>();
    }
  }

  else
  {
    switch(v8)
    {
      case 3:
        LOWORD(v43) = -1024;
        std::vector<half>::vector[abi:ne200100](__p, 1, &v43);
        std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<half>,std::allocator<ZinIrConstData_specialization<half>>,std::vector<half>,0>();
      case 12:
        v44[0] = 64;
        std::vector<e4m3_t>::vector[abi:ne200100](__p, 1, v44);
        std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<e4m3_t>,std::allocator<ZinIrConstData_specialization<e4m3_t>>,std::vector<e4m3_t>,0>();
      case 11:
        LODWORD(v43) = -8388608;
        std::vector<float>::vector[abi:ne200100](__p, 1uLL, &v43);
        std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<float>,std::allocator<ZinIrConstData_specialization<float>>,std::vector<float>,0>();
    }
  }

  v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v34)
  {
LABEL_61:
    ZinMirPEReductionAccumulationRetention::UpdateGraphWithConst(v34, v35, v36, v37, v38, v39, v40, v41);
  }

LABEL_53:
  v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v26)
  {
    ZinMirPEReductionAccumulationRetention::UpdateGraphWithConst(v26, v27, v28, v29, v30, v31, v32, v33);
  }

  return 3;
}

void sub_1A6A17DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinMirPEReductionAccumulationRetention::Run(ZinMirPEReductionAccumulationRetention *this)
{
  v40[3] = *MEMORY[0x1E69E9840];
  if (*(**(this + 1) + 1176) != 1)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v31, "any");
  v34 = 0;
  memset(&v33[24], 0, 32);
  v35 = 1065353216;
  memset(v21, 0, sizeof(v21));
  std::vector<ZinLinearPattern::AtomItemDesc>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItemDesc const*,ZinLinearPattern::AtomItemDesc const*>(v21, v31, v36, 1uLL);
  v22[0] = v21;
  std::string::basic_string[abi:ne200100]<0>(__p, "pe_ew");
  v28[0] = &unk_1F19C6380;
  v28[1] = MatchPEEW;
  v28[3] = v28;
  memset(v29, 0, sizeof(v29));
  v30 = 1065353216;
  memset(v20, 0, sizeof(v20));
  std::vector<ZinLinearPattern::AtomItemDesc>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItemDesc const*,ZinLinearPattern::AtomItemDesc const*>(v20, __p, v31, 1uLL);
  v22[1] = v20;
  v2 = *(this + 1);
  v25[0] = &unk_1F19F4658;
  v25[1] = this;
  v25[3] = v25;
  ZinOneToVariablePattern::ZinOneToVariablePattern(v36, v22, v2, 0, v25, 0);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v25);
  v23 = v20;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v23);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v29);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v28);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v21;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](__p);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v33[32]);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v33);
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  v3 = *this + 8;
  v4 = **this;
  if (v4 == v3)
  {
LABEL_14:
    v10 = 0;
  }

  else
  {
    while (1)
    {
      Hal = ZinIrTarget::GetHal(v4[4]);
      v24[0] = &unk_1F19F46D8;
      v24[1] = v36;
      v24[2] = this;
      v24[3] = v24;
      v6 = ZinIrOpLayerGraph::TraverseForward(Hal, v24, 1);
      std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](v24);
      if (v6)
      {
        break;
      }

      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
      if (v8 == v3)
      {
        goto LABEL_14;
      }
    }

    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      ZinMirPEReductionAccumulationRetention::Run(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v10 = 3;
  }

  v36[0] = &unk_1F19DC540;
  v31[0] = v40;
  std::vector<ZinLinearPattern>::__destroy_vector::operator()[abi:ne200100](v31);
  v38 = &unk_1F19E1808;
  v31[0] = &v39;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](v31);
  ZinPattern::~ZinPattern(&v38);
  v31[0] = &v37;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](v31);
  ZinPattern::~ZinPattern(v36);
  return v10;
}

uint64_t MatchPEEW(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(*(v2 + 11) + 8) != 89 || (MemoryPools = ZinIrContext::GetMemoryPools(v2), MemoryPools[1] - *MemoryPools != 8) || (v4 = *(a1 + 8), !RawOrShared<ZinReductionLayer>::unwrap_const_ptr(v4 + 960)))
  {
LABEL_6:
    v5 = ZinPatternAtom::NoMatch(1);
    v6 = HIBYTE(v5);
    return v5 | (v6 << 8);
  }

  if (ZinIrTarget::GetCPUSubtype((*(v4 + 65) + 160)))
  {
    if (!ZinANELayer::IsChainedProducer(v4))
    {
      ZinAssertImpl("Overlap should be zero on all layers but chained producer");
    }

    goto LABEL_6;
  }

  v8 = (*(*v4 + 392))(v4, 0);
  LOBYTE(v5) = 0;
  if (v8 == 1)
  {
    LOBYTE(v5) = (*(*v4 + 392))(v4, 2) <= *(**(a1 + 16) + 1008);
  }

  v6 = 1;
  return v5 | (v6 << 8);
}

uint64_t std::__function::__func<ZinMirPEReductionAccumulationRetention::Run(void)::$_0,std::allocator<ZinMirPEReductionAccumulationRetention::Run(void)::$_0>,BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19F4658;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ZinMirPEReductionAccumulationRetention::Run(void)::$_0,std::allocator<ZinMirPEReductionAccumulationRetention::Run(void)::$_0>,BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, ZinPattern **a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = *a4;
  v5 = *(a1 + 8);
  if (ZinPattern::MatchCount(*a4))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "pe_ew");
    ZinPattern::GetMatch(v4, &__p, &v62);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(__p);
    }

    v6 = v62;
    v7 = v63;
    if (v62 == v63)
    {
      goto LABEL_10;
    }

    v8 = 0;
    v9 = v62;
    do
    {
      if (!*v9++)
      {
        ++v8;
      }
    }

    while (v9 != v63);
    if ((v63 - v62 - v8) < 2)
    {
LABEL_10:
      LOBYTE(v11) = 0;
      if (!v62)
      {
        return v11 & 1;
      }

      goto LABEL_90;
    }

    v11 = 0;
    do
    {
      v12 = *v6;
      if (*v6)
      {
        v58 = v11;
        v13 = *(v5 + 64);
        v14 = *(v5 + 72);
        while (v13 != v14)
        {
          v15 = **v13;
          v16 = *(RawOrShared<ZinReductionLayer>::unwrap_const_ptr(v15 + 960) + 88);
          v17 = *(RawOrShared<ZinReductionLayer>::unwrap_const_ptr(v12 + 960) + 88);
          v18 = *(v16 + 12);
          v19 = *(v17 + 12);
          if (v18 == v19 || (v18 == 7 ? (v20 = v19 == 2) : (v20 = 0), v20 || (v18 == 6 ? (v21 = v19 == 1) : (v21 = 0), v21 || (v18 == 2 ? (v22 = v19 == 7) : (v22 = 0), v22 || (v18 == 1 ? (v23 = v19 == 6) : (v23 = 0), v23)))))
          {
            v24 = (*(*v15 + 664))(v15);
            v25 = (*(*v12 + 664))(v12);
            if (!(v24 | v25) || (v24 ? (v42 = v25 == 0) : (v42 = 1), !v42 && ZinIrActivationParams::operator==(v24 + 176, v25 + 176)))
            {
              v26 = (*(*v15 + 672))(v15);
              v27 = (*(*v12 + 672))(v12);
              if (!(v26 | v27) || (v26 ? (v43 = v27 == 0) : (v43 = 1), !v43 && ZinIrActivationParams::operator==(v26 + 176, v27 + 176)))
              {
                v28 = (*(*v15 + 752))(v15);
                v29 = (*(*v12 + 752))(v12);
                if (IsLayerInfoEqual<ZinTransposeLayer,ZinIrTransposeInfo>(v28, v29))
                {
                  v30 = (*(*v15 + 760))(v15);
                  v31 = (*(*v12 + 760))(v12);
                  if (IsLayerInfoEqual<ZinTransposeLayer,ZinIrTransposeInfo>(v30, v31))
                  {
                    v32 = (*(*v15 + 736))(v15);
                    v33 = (*(*v12 + 736))(v12);
                    if (IsLayerInfoEqual<ZinBroadcastLayer,ZinIrBroadcastInfo>(v32, v33))
                    {
                      v34 = (*(*v15 + 744))(v15);
                      v35 = (*(*v12 + 744))(v12);
                      if (IsLayerInfoEqual<ZinBroadcastLayer,ZinIrBroadcastInfo>(v34, v35))
                      {
                        v36 = RawOrShared<ZinScaledElementWiseLayer>::unwrap_const_ptr(v15 + 888);
                        v37 = RawOrShared<ZinScaledElementWiseLayer>::unwrap_const_ptr(v12 + 888);
                        if (!(v36 | v37) || v36 && v37 && ZinIrScaledEWInfo::operator==(*(v36 + 88), *(v37 + 88)))
                        {
                          v38 = (*(*v15 + 848))(v15);
                          v39 = (*(*v12 + 848))(v12);
                          if (!(v38 | v39) || v38 && v39 && *(*(v38 + 88) + 12) == *(*(v39 + 88) + 12))
                          {
                            v40 = (*(*v15 + 856))(v15);
                            v41 = (*(*v12 + 856))(v12);
                            if (!(v40 | v41) || v40 && v41 && ZinIrActivationParams::operator==(v40 + 176, v41 + 176))
                            {
                              __p = *(v16 + 24);
                              v64 = *(v17 + 24);
                              if (std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,5ul>,true,true>(&__p, 0, &__p, 5u, &v64))
                              {
                                v47 = *(v13 + 8);
                                v46 = *(v13 + 16);
                                if (v47 >= v46)
                                {
                                  v49 = (v47 - *v13) >> 3;
                                  if ((v49 + 1) >> 61)
                                  {
                                    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
                                  }

                                  v50 = v46 - *v13;
                                  v51 = v50 >> 2;
                                  if (v50 >> 2 <= (v49 + 1))
                                  {
                                    v51 = v49 + 1;
                                  }

                                  if (v50 >= 0x7FFFFFFFFFFFFFF8)
                                  {
                                    v52 = 0x1FFFFFFFFFFFFFFFLL;
                                  }

                                  else
                                  {
                                    v52 = v51;
                                  }

                                  if (v52)
                                  {
                                    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>(v13, v52);
                                  }

                                  v53 = (8 * v49);
                                  *v53 = v12;
                                  v48 = 8 * v49 + 8;
                                  v54 = *(v13 + 8) - *v13;
                                  v55 = v53 - v54;
                                  memcpy(v53 - v54, *v13, v54);
                                  v56 = *v13;
                                  *v13 = v55;
                                  *(v13 + 8) = v48;
                                  *(v13 + 16) = 0;
                                  if (v56)
                                  {
                                    operator delete(v56);
                                  }
                                }

                                else
                                {
                                  *v47 = v12;
                                  v48 = (v47 + 1);
                                }

                                *(v13 + 8) = v48;
                                v45 = 1;
                                v44 = v58;
                                goto LABEL_73;
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

          v13 += 24;
        }

        v64 = v12;
        v60 = 0;
        v61 = 0;
        __p = 0;
        std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer * const*,ZinIrOpLayer * const*>(&__p, &v64, &v65, 1uLL);
        std::vector<std::vector<ZinANELayer *>>::push_back[abi:ne200100]((v5 + 64), &__p);
        v44 = v58;
        if (__p)
        {
          v60 = __p;
          operator delete(__p);
        }

        v45 = 0;
LABEL_73:
        v11 = v44 | v45;
      }

      ++v6;
    }

    while (v6 != v7);
    v6 = v62;
    if (v62)
    {
LABEL_90:
      v63 = v6;
      operator delete(v6);
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

void sub_1A6A18CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ZinMirPEReductionAccumulationRetention::Run(void)::$_0,std::allocator<ZinMirPEReductionAccumulationRetention::Run(void)::$_0>,BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL IsLayerInfoEqual<ZinTransposeLayer,ZinIrTransposeInfo>(uint64_t a1, uint64_t a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return ZinIrTransposeInfo::operator==(*(a1 + 88), *(a2 + 88));
    }
  }

  return result;
}

BOOL IsLayerInfoEqual<ZinBroadcastLayer,ZinIrBroadcastInfo>(uint64_t a1, uint64_t a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return std::operator==[abi:ne200100]<ZinIrDimension,unsigned long,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<std::pair<ZinIrDimension const,unsigned long>>>(*(a1 + 88) + 16, (*(a2 + 88) + 16));
    }
  }

  return result;
}

BOOL std::operator==[abi:ne200100]<ZinIrDimension,unsigned long,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<std::pair<ZinIrDimension const,unsigned long>>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(a2, v3 + 4);
    if (!v5)
    {
      break;
    }
  }

  while (v3[4] == *(v5 + 4) && *(v3 + 3) == v5[3]);
  return v4;
}

__n128 std::__function::__func<ZinMirPEReductionAccumulationRetention::Run(void)::$_1,std::allocator<ZinMirPEReductionAccumulationRetention::Run(void)::$_1>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F19F46D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ZinMirPEReductionAccumulationRetention::Run(void)::$_1,std::allocator<ZinMirPEReductionAccumulationRetention::Run(void)::$_1>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1, const ZinIrOpLayerGraph **a2, ZinIrOpLayer **a3)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  result = ZinOneToVariablePattern::Match(*(a1 + 8), *a2, *a3);
  if (!result)
  {
    return result;
  }

  v6 = v4[8];
  v7 = v4[9];
  if (v6 == v7)
  {
LABEL_15:
    std::vector<std::vector<ZinIrOpLayer *>>::clear[abi:ne200100](v4 + 8);
    return 0;
  }

  while (1)
  {
    v8 = v6[1];
    if (*v6 != v8)
    {
      std::__introsort<std::_ClassicAlgPolicy,ZinMirSpatialSplitUtils::ComputeScheduleAndTensorResidency(ZinIrControlFlowGraph *,ZinIrParameters const&,SplitConfiguration &)::$_1 &,ZinIrOpLayer **,false>(*v6, v8, 126 - 2 * __clz(v8 - *v6), 1);
      v9 = *v6;
      if (v6[1] - *v6 != 8)
      {
        break;
      }
    }

LABEL_14:
    v6 += 3;
    if (v6 == v7)
    {
      goto LABEL_15;
    }
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = &v9[v11];
    v13 = *v12;
    v14 = *(*v12 + 384);
    v15 = *(v12[1] + 384) - 1;
    if (v14 == v15)
    {
      *(*(RawOrShared<ZinReductionLayer>::unwrap_const_ptr(v13 + 960) + 88) + 40) = 1;
      if (!v10)
      {
        goto LABEL_11;
      }

      v13 = (*v6)[v11];
    }

    else if (!v10)
    {
      goto LABEL_11;
    }

    *(*(RawOrShared<ZinReductionLayer>::unwrap_const_ptr(v13 + 960) + 88) + 44) = 1;
    result = ZinMirPEReductionAccumulationRetention::UpdateGraphWithConst(v4, v3, (*v6)[v11]);
    if (result)
    {
      return result;
    }

LABEL_11:
    ++v11;
    v9 = *v6;
    v16 = v6[1] - *v6;
    v10 = v14 == v15;
  }

  while (v11 < (v16 >> 3) - 1);
  if (v14 != v15)
  {
    goto LABEL_14;
  }

  *(*(RawOrShared<ZinReductionLayer>::unwrap_const_ptr(*(v9 + v16 - 8) + 960) + 88) + 44) = 1;
  result = ZinMirPEReductionAccumulationRetention::UpdateGraphWithConst(v4, v3, *(v6[1] - 1));
  if (!result)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t std::__function::__func<ZinMirPEReductionAccumulationRetention::Run(void)::$_1,std::allocator<ZinMirPEReductionAccumulationRetention::Run(void)::$_1>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ZinMirPEReductionAccumulationRetention::UpdateGraphWithConst(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Invalid ZinIrReductionType!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Reduction type is not supported for PEEW layer\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Unsupported data format!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Could not create const data for accumulator retention!\n", a5, a6, a7, a8, v8);
}

void ZinIrAllReduceInfo::ZinIrAllReduceInfo(ZinIrAllReduceInfo *this, const ZinIrAllReduceUnitInfo *a2)
{
  v3 = ZinIrCollectiveCommunicationInfo::ZinIrCollectiveCommunicationInfo(this, 88, a2);
  *v3 = &unk_1F19F4758;
  *(v3 + 22) = *(a2 + 38);
}

void *ZinAllReduceLayer::ZinAllReduceLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  *a2 = 0;
  v6 = a3[1];
  v9 = *a3;
  v10 = v6;
  v11 = v5;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinCollectiveCommunicationLayer::ZinCollectiveCommunicationLayer(a1, &v11, &v9, a4);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v7 = v11;
  v11 = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  *a1 = &unk_1F19F4790;
  return a1;
}

void sub_1A6A193C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  ZinLayerNormLayer::ZinLayerNormLayer(va);
  _Unwind_Resume(a1);
}

void sub_1A6A19598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::unique_ptr<ZinIrAllReduceInfo>::~unique_ptr[abi:ne200100](va);
  MEMORY[0x1AC55A070](v7, v8);
  _Unwind_Resume(a1);
}

void sub_1A6A197D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v17 - 72) = v16 + 8;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100]((v17 - 72));
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ZinAllReduceLayer::GetAtomicReadModifyWriteConfig(ZinAllReduceLayer *this)
{
  v2 = ZinHWEnumsUtils::ZinIrReductionTypeToZinAtomicOpType(*(*(this + 11) + 88));
  v3 = (*(*this + 40))(this, 0);
  return v2 | (GetHWAtomicReadModifyWriteDataType(*(v3 + 104)) << 8);
}

void ZinAllReduceLayer::BuildDecomposedLayer(uint64_t a1, char **a2, _OWORD *a3, std::string *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  ZinObjectNameFactory::ZinObjectNameFactory(&v21, a4);
  memset(&v11[1], 0, 24);
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = -1;
  *v16 = 0u;
  *v17 = 0u;
  v18 = 0u;
  memset(__p, 0, sizeof(__p));
  v11[0] = &unk_1F19ECE10;
  v20 = 11;
  if (v16 != a2)
  {
    std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v16, *a2, a2[1], (a2[1] - *a2) >> 1);
    std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&v17[1], a2[3], a2[4], (a2[4] - a2[3]) >> 1);
    std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(__p, a2[6], a2[7], (a2[7] - a2[6]) >> 1);
  }

  v20 = *(*(a1 + 88) + 88);
  v7 = *(a1 + 32);
  v8 = a3[3];
  v22[2] = a3[2];
  v22[3] = v8;
  v23[0] = a3[4];
  *(v23 + 13) = *(a3 + 77);
  v9 = a3[1];
  v22[0] = *a3;
  v22[1] = v9;
  ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v24, (a3 + 6));
  memset(v10, 0, sizeof(v10));
  std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v10, v22, &v25, 1uLL);
  ZinBuilder::CreateAllReduceLayer(v7, &v21, v10, v11);
}

void sub_1A6A19ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  *(v40 - 200) = v39;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100]((v40 - 200));
  v42 = *(v40 - 88);
  if (v42)
  {
    *(v40 - 80) = v42;
    operator delete(v42);
  }

  ZinIrAllReduceUnitInfo::~ZinIrAllReduceUnitInfo(&a13);
  a33 = &unk_1F19D0088;
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ZinAllReduceLayer::RequiresCopyInsertion(ZinAllReduceLayer *this)
{
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  v3 = **MemoryPools;
  memset(v7, 0, sizeof(v7));
  if (ZinIrOpLayer::IsNoOp(v3, v7))
  {
    v8 = v7;
    std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v8);
  }

  else
  {
    IsCollectiveCommunicationLayer = ZinIrOpLayer::IsCollectiveCommunicationLayer(**MemoryPools);
    v8 = v7;
    std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v8);
    if ((IsCollectiveCommunicationLayer & 1) == 0)
    {
      OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(**MemoryPools);
      if (OutgoingLayers[1] - *OutgoingLayers <= 8uLL && (*((*(***MemoryPools + 40))(**MemoryPools, 0) + 219) & 1) == 0)
      {
        return ZinCollectiveCommunicationLayer::OperatesOnlyOnInterDieAxes(this);
      }
    }
  }

  return 1;
}

void sub_1A6A19C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ZinAllReduceLayer::LowerEngine(uint64_t a1, ZinIrOpLayerGraph *a2)
{
  v32[6] = *MEMORY[0x1E69E9840];
  if (ZinAllReduceLayer::RequiresCopyInsertion(a1))
  {
    if (*(a1 + 71) >= 0)
    {
      v4 = *(a1 + 71);
    }

    else
    {
      v4 = *(a1 + 56);
    }

    v5 = &v31;
    std::string::basic_string[abi:ne200100](&v31, v4 + 1);
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v31.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(a1 + 71) >= 0)
      {
        v6 = (a1 + 48);
      }

      else
      {
        v6 = *(a1 + 48);
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 95;
    v7 = std::string::basic_string[abi:ne200100]<0>(&v27, "ccop_lowerengine");
    v8 = std::string::append(v7, "_xfm", 4uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v30 = v8->__r_.__value_.__r.__words[2];
    v29 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v30 >= 0)
    {
      v10 = &v29;
    }

    else
    {
      v10 = v29;
    }

    if (v30 >= 0)
    {
      v11 = HIBYTE(v30);
    }

    else
    {
      v11 = *(&v29 + 1);
    }

    v12 = std::string::append(&v31, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v25, "copy", 4uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    ZinObjectNameFactory::ZinObjectNameFactory(v32, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    if (v28 < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    v16 = **ZinIrContext::GetMemoryPools(a1);
    v17 = *(a1 + 32);
    v18 = *((*(*v16 + 40))(v16, 0) + 104);
    v19 = (*(*v16 + 40))(v16, 0);
    ZinIrTensor::CopyTensorMirInfo(&v26, v19);
    __p[0].__r_.__value_.__s.__data_[0] = 0;
    v24 = 0;
    ZinBuilder::CreateNEBypass(v17, v32, v16, v18, &v26, 0, __p, 1.0);
  }

  v20 = **ZinIrContext::GetMemoryPools(a1);
  v21 = *(v20 + 65);
  if (v21)
  {
    goto LABEL_30;
  }

  ZinIrNetworkStatus::ZinIrNetworkStatus(__p);
  if (!ZinMirSetActiveNE(v20, __p))
  {
    ZinIrNetworkStatus::~ZinIrNetworkStatus(__p);
    v21 = *(v20 + 65);
LABEL_30:
    LOWORD(__p[0].__r_.__value_.__l.__data_) = ZinAllReduceLayer::GetAtomicReadModifyWriteConfig(a1);
    ZinMirDmaConfig::SetAtomicReadModifyWrite(v21 + 608, __p);
    return ZinCollectiveCommunicationLayer::LowerEngine(a1, a2);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinAllReduceLayer::LowerEngine();
  }

  ZinIrNetworkStatus::~ZinIrNetworkStatus(__p);
  return 3;
}

void sub_1A6A1A110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&__p);
  *(v47 - 136) = &unk_1F19D0088;
  if (*(v47 - 105) < 0)
  {
    operator delete(*(v47 - 128));
  }

  _Unwind_Resume(a1);
}

BOOL ZinAllReduceLayer::ValidateSemantics_Impl(ZinIrOpLayer *a1, uint64_t *a2, unsigned __int8 *a3)
{
  ZinIrOpLayer::ValidateSemantics_Impl(a1, a2, a3);
  v6 = a2;
  v5 = *a2;
  if (v6[1] - v5 != 136)
  {
    ZinAssertImpl("ZinAllReduceLayer must have one input");
  }

  v7 = (*(*a1 + 40))(a1, 0);
  result = ZinTensorPosition::operator==((v5 + 8), (v7 + 64));
  if (!result)
  {
    ZinAssertImpl("Input and output tensor dims of AllReduce must be equal");
  }

  v9 = *(*(a1 + 11) + 88);
  if ((v9 - 6) < 2)
  {
    goto LABEL_6;
  }

  if (v9 == 11)
  {
    ZinAssertImpl("Invalid reduction type");
  }

  if (v9 == 3)
  {
LABEL_6:
    ZinAssertImpl("Reduction type not supported for AllReduce");
  }

  return result;
}

void ZinIrAllReduceInfo::~ZinIrAllReduceInfo(ZinIrAllReduceInfo *this)
{
  *this = &unk_1F19D23E8;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }

  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

void ZinAllReduceLayer::LowerEngine()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = 136315138;
  v1 = "virtual ZinIrStatus ZinAllReduceLayer::LowerEngine(ZinIrOpLayerGraph *, ZinTransformInfo *)";
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: Error: failed to add NEBypass layer to graph", &v0, 0xCu);
}

{
  v2 = *MEMORY[0x1E69E9840];
  v0 = 136315138;
  v1 = "virtual ZinIrStatus ZinAllReduceLayer::LowerEngine(ZinIrOpLayerGraph *, ZinTransformInfo *)";
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: Error: failed to initialize mir info for layer", &v0, 0xCu);
}

uint64_t ZinIrSoftmaxInfo::ZinIrSoftmaxInfo(uint64_t a1, uint64_t a2, char a3)
{
  v6 = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(a1, 43);
  *v6 = &unk_1F19F4940;
  std::unordered_set<ZinIrDimension>::unordered_set((v6 + 2), a2);
  *(a1 + 56) = a3;
  return a1;
}

void *ZinSoftmaxLayer::ZinSoftmaxLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v6 = *a2;
  *a2 = 0;
  v7 = a3[1];
  v11 = *a3;
  v12 = v7;
  v13 = v6;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  ZinIrOpLayer::ZinIrOpLayer(a1, &v13, &v11, a4, &v10);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v10);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v8 = v13;
  v13 = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  *a1 = &unk_1F19F4978;
  ZinObjectNameFactory::ZinObjectNameFactory((a1 + 22), a4);
  return a1;
}

uint64_t ZinSoftmaxLayer::Lower(ZinSoftmaxLayer *a1, ZinIrOpLayerGraph *a2)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v30.n128_u64[0] = a1;
  LODWORD(v31) = 0;
  v4 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v30);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v30, v4);
  v27 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v30);
  v5 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a2 + 8, &v27);
  v6 = a2 + 104;
  if (v5)
  {
    v6 = (v5 + 3);
  }

  v25 = 0;
  v26 = 0;
  v24 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v24, *v6, *(v6 + 1), (*(v6 + 1) - *v6) >> 3);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v30);
  v7 = *v24;
  v8 = (*(**v24 + 40))(*v24, 0);
  v9 = *(a1 + 11);
  NormalizationUtils::GetBroadcastMap((v9 + 16), (v8 + 64), v23);
  ReductionDimensions = NormalizationUtils::GetReductionDimensions(v9 + 16);
  v22 = 0;
  ZinSoftmaxLayer::TryToMapForSoftmaxInC(a1, a2, &v22);
  if (!v22)
  {
    if (*(v9 + 56) == 1)
    {
      v11 = *(a1 + 4);
      (*(*v7 + 88))(&v30, v7, 0);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v27, &v30, v34, 1uLL);
      v12 = ZinBuilder::CreateReduction(v11, a1 + 176, &v27, 3, 2, ReductionDimensions, 0, 0, 1.0, 0.0, 0, 0, 0);
      v35.n128_u64[0] = &v27;
      std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v35);
      if (__p)
      {
        v33 = __p;
        operator delete(__p);
      }

      if (v12)
      {
        v35.n128_u64[0] = v12;
        LODWORD(v36) = 0;
        v13 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v35);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v35, v13);
        v37[0] = a1;
        v19[0] = v37;
        v19[1] = 1;
        Layer2TDMapper::SourceLayer::SourceLayer(&v27, v19);
        ZinIrOpLayerGraph::AddNode(a2, &v35, &v27, &v30);
        v14 = v30.n128_u8[0];
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v30.n128_i64[1]);
        v27 = &unk_1F19C3950;
        v20 = &v28;
        std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v20);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v35);
        if (v14)
        {
          if (ZinIrOpLayerGraph::AddEdge(a2, v7, v12, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0))
          {
            v15 = *(a1 + 4);
            (*(*v12 + 88))(&v30, v12, 0);
            v27 = 0;
            v28 = 0;
            v29 = 0;
            std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v27, &v30, v34, 1uLL);
            ZinBuilder::CreateBroadcast(v15, a1 + 176, &v27, v23, 3);
          }

          ZinAssertImpl("ZinSoftmaxLayer::Lower(): Failed to AddEdge() for reduction(max)");
        }

        ZinAssertImpl("ZinSoftmaxLayer::Lower(): Failed to AddNode() for reduction(max)");
      }

      ZinAssertImpl("ZinSoftmaxLayer::Lower(): ZinBuilder failed to create reduction_max");
    }

    v16 = *(a1 + 4);
    (*(*v7 + 88))(&v30, v7, 0);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v27, &v30, v34, 1uLL);
    v21 = 0;
    ZinBuilder::CreateConstScaleAndBiasGOC(v16, a1 + 176, &v27, 3, 0, 0, &v21, 1.4427, 0.0, v17, 0, 0);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v23);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  return 0;
}

void sub_1A6A1BA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v64 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v64;
    operator delete(v64);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a57);
  if (a62)
  {
    a63 = a62;
    operator delete(a62);
  }

  _Unwind_Resume(a1);
}

void ZinSoftmaxLayer::TryToMapForSoftmaxInC(ZinSoftmaxLayer *this, ZinIrOpLayerGraph *a2, BOOL *a3)
{
  v28[0] = *MEMORY[0x1E69E9840];
  *a3 = 0;
  v26.n128_u64[0] = this;
  v27 = 0;
  v5 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v26);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v26, v5);
  *&v18 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v26);
  v6 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a2 + 8, &v18);
  v7 = a2 + 104;
  if (v6)
  {
    v7 = (v6 + 3);
  }

  v24 = 0;
  v25 = 0;
  v23 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v23, *v7, *(v7 + 1), (*(v7 + 1) - *v7) >> 3);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v26);
  v8 = *v23;
  (*(**v23 + 40))(*v23, 0);
  v9 = *(this + 11);
  ReductionDimensions = NormalizationUtils::GetReductionDimensions(v9 + 16);
  if (std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,5ul>,true>(&ReductionDimensions, 0, 5uLL) <= 1 && *(v9 + 56) == 1)
  {
    for (i = 0; i != 5; ++i)
    {
      if ((ReductionDimensions >> i))
      {
        break;
      }
    }

    v11 = *((*(*this + 40))(this, 0) + 72);
    v12 = (*(*this + 40))(this, 0);
    ValueAt = GetValueAtDimension<ZinTensorDimensions>((v12 + 64), i);
    if (i > 3)
    {
      if (i != 4)
      {
        if (i == 5)
        {
          ZinAssertImpl("Internal error: softmax lowering");
        }

LABEL_23:
        memset(__p, 0, sizeof(__p));
        v26.n128_u64[0] = i | 0x200000000;
        std::vector<DimensionMapping>::push_back[abi:ne200100](__p, &v26);
        v26.n128_u32[0] = 2;
        v26.n128_u32[1] = i;
        std::vector<DimensionMapping>::push_back[abi:ne200100](__p, &v26);
        v17 = *(this + 4);
        (*(*v8 + 88))(&v26, v8, 0);
        v18 = 0uLL;
        *&v19 = 0;
        std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v18, &v26, v28, 1uLL);
        v20 = 0;
        ZinBuilder::CreateTranspose(v17, this + 176, &v18, __p, &v20);
      }

      if (*(*(v8 + 11) + 8) == 38)
      {
        CollectiveCommunicationInfo = ZinCollectiveCommunicationLayer::GetCollectiveCommunicationInfo(v8);
        IsWTransposed = ZinIrTransposeUnit::IsWTransposed(CollectiveCommunicationInfo + 16);
      }

      else
      {
        IsWTransposed = 0;
      }

      v14 = v11 > ValueAt && IsWTransposed;
    }

    else
    {
      if (i == 2)
      {
        goto LABEL_24;
      }

      if (i != 3)
      {
        goto LABEL_23;
      }

      v14 = 1;
    }

    if (v11 > ValueAt && (v14 & 1) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_1A6A1C62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A6A1CA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinSoftmaxLayer::ValidateSemantics_Impl(ZinIrOpLayer *a1, uint64_t *a2, unsigned __int8 *a3)
{
  if ((a3[1989] & 1) == 0)
  {
    ZinAssertImpl("Softmax is not supported by this ANE architecture", a2);
  }

  ZinIrOpLayer::ValidateSemantics_Impl(a1, a2, a3);
  if (!*(*(a1 + 11) + 40))
  {
    ZinAssertImpl("Softmax with empty axes specified is invalid");
  }

  if (a2[1] - *a2 != 136)
  {
    ZinAssertImpl("Softmax layer must have only one single input.");
  }

  v5 = (*(*a1 + 40))(a1, 0);
  result = IsFloatFormat(*(v5 + 104));
  if ((result & 1) == 0)
  {
    ZinAssertImpl("Softmax output tensor must be in Float format");
  }

  return result;
}

uint64_t ZinSoftmaxLayer::DebugDetailPrint@<X0>(_BYTE *a1@<X8>)
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

void sub_1A6A1CE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC559F60](&a26);
  _Unwind_Resume(a1);
}

uint64_t ZinIrSoftmaxInfo::ComputeOutputAxisType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 8) - *a3 != 80)
  {
    ZinAssertImpl("Unexpected input size, %s", "ComputeOutputAxisType");
  }

  IsolationAxis = ZinTensorAxisTypePacked::GetIsolationAxis(*a3);
  if (std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>((a1 + 16), &IsolationAxis))
  {
    ZinAssertImpl("Softmax in isolation axis");
  }

  v7 = *a3;
  *a4 = *v7;
  if (v7 != a4)
  {
    std::vector<ZinSymbolicExpressionRef>::__assign_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>((a4 + 8), *(v7 + 1), *(v7 + 2), (*(v7 + 2) - *(v7 + 1)) >> 4);
  }

  v8 = *(v7 + 8);
  *(a4 + 36) = *(v7 + 36);
  *(a4 + 32) = v8;
  return 0;
}

uint64_t ZinIrSoftmaxInfo::ComputeOutputDimensions(uint64_t a1, __int128 **a2, uint64_t a3)
{
  v3 = *a2;
  if (a2[1] == *a2)
  {
    return 3;
  }

  result = 0;
  v5 = *v3;
  v6 = v3[1];
  *(a3 + 32) = *(v3 + 4);
  *a3 = v5;
  *(a3 + 16) = v6;
  return result;
}

void ZinIrSoftmaxInfo::~ZinIrSoftmaxInfo(ZinIrSoftmaxInfo *this)
{
  *this = &unk_1F19F4940;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 16);

  ZinIrHalH13g::~ZinIrHalH13g(this);
}

{
  *this = &unk_1F19F4940;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 16);
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

void ZinSoftmaxLayer::~ZinSoftmaxLayer(ZinSoftmaxLayer *this)
{
  *this = &unk_1F19F4978;
  *(this + 22) = &unk_1F19D0088;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  ZinIrOpLayer::~ZinIrOpLayer(this);
}

{
  *this = &unk_1F19F4978;
  *(this + 22) = &unk_1F19D0088;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  ZinIrOpLayer::~ZinIrOpLayer(this);

  JUMPOUT(0x1AC55A070);
}

void ZinIrKernel::ComputeSummationOfKSubChannelWeightValues(ZinIrKernel *this@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  v3 = a2;
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  v35 = *(this + 32);
  v40 = *(this + 33);
  v4 = *(this + 35);
  v5 = *(this + 87);
  v32 = *(this + 31);
  v43 = *(this + 34);
  v45 = *(this + 85);
  v39 = *(this + 86);
  std::vector<float>::reserve(a2, v32 * v45 * v39 * v5);
  if (ZinKernelFormatIsUnity(*(this + 44)))
  {
    if ((*(this + 456) & 2) != 0)
    {
      ZinAssertImpl("Unity kernel can't have zero_point");
    }

    if (v32 >= 1)
    {
      v6 = 0;
      v7 = v43 - v45 + 1;
      do
      {
        v8 = 1.0;
        if ((*(this + 456) & 8) != 0)
        {
          ZinIrVector::GetAt<float>(*(this + 82));
          v8 = v9;
        }

        v36 = v6;
        v10 = v5;
        if (v5 >= 1)
        {
          do
          {
            v41 = v10;
            v44 = v10 - 1;
            if (v39 >= 1)
            {
              v11 = ceilf((v4 - v44) / v5);
              v12 = v39;
              do
              {
                if (v45 >= 1)
                {
                  v13 = ceilf((v40 - (v12 - 1)) / v39) * v35;
                  v14 = v7;
                  v15 = v45 + 1;
                  do
                  {
                    *v46 = v8 * (v11 * (v13 * ceilf(v14 / v45)));
                    std::vector<float>::push_back[abi:ne200100](&v3->__begin_, v46);
                    --v15;
                    ++v14;
                  }

                  while (v15 > 1);
                }

                v16 = v12-- < 2;
              }

              while (!v16);
            }

            v10 = v44;
          }

          while (v41 >= 2);
        }

        ++v6;
      }

      while (v36 + 1 != v32);
    }
  }

  else if (v32 >= 1)
  {
    v17 = 0;
    v31 = v3;
    do
    {
      v18 = *(this + 456);
      if ((v18 & 2) != 0)
      {
        ValueAsInt32 = ZinIrVector::GetValueAsInt32(*(this + 85));
        v18 = *(this + 456);
      }

      else
      {
        ValueAsInt32 = 0;
      }

      v20 = 1.0;
      if ((v18 & 8) != 0)
      {
        ZinIrVector::GetAt<float>(*(this + 82));
        v20 = v21;
      }

      if (v5 >= 1)
      {
        v22 = v5;
        do
        {
          v42 = v22--;
          v23 = v39;
          if (v39 >= 1)
          {
            do
            {
              v34 = v23--;
              if (v45 >= 1)
              {
                v24 = v45;
                v33 = v23;
                do
                {
                  v38 = v24 - 1;
                  if (v35 < 1)
                  {
                    v30 = 0.0;
                  }

                  else
                  {
                    v37 = v24;
                    v25 = 0;
                    v26 = 0.0;
                    do
                    {
                      if (v40 >= v34)
                      {
                        do
                        {
                          v27 = v38;
                          if (v43 >= v37)
                          {
                            do
                            {
                              v28 = v22;
                              if (v4 >= v42)
                              {
                                do
                                {
                                  v46[0] = v17;
                                  v46[1] = v25;
                                  v46[2] = v23;
                                  v46[3] = v27;
                                  v46[4] = v22;
                                  ZinIrWeight::GetWeightValueAsFloat(*(this + 84), v46);
                                  v26 = v26 + (v20 * (v29 - ValueAsInt32));
                                  v22 += v5;
                                }

                                while (v4 > v22);
                              }

                              v27 += v45;
                              v22 = v28;
                            }

                            while (v43 > v27);
                          }

                          v23 += v39;
                        }

                        while (v40 > v23);
                      }

                      ++v25;
                      v23 = v33;
                    }

                    while (v25 != v35);
                    v30 = v26;
                    v3 = v31;
                    v24 = v37;
                  }

                  *v46 = v30;
                  std::vector<float>::push_back[abi:ne200100](&v3->__begin_, v46);
                  v16 = v24 <= 1;
                  v24 = v38;
                }

                while (!v16);
              }
            }

            while (v34 >= 2);
          }
        }

        while (v42 >= 2);
      }

      ++v17;
    }

    while (v17 != v32);
  }
}

void sub_1A6A1D524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrKernel::HasNonUnityValue(ZinIrKernel *this)
{
  v1 = *(this + 84);
  if (v1[7] < 1)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    if ((*(this + 456) & 2) != 0)
    {
      ZinIrVector::GetValueAsInt32(*(this + 85));
    }

    v4 = v1[8];
    if (v4 >= 1)
    {
      break;
    }

LABEL_21:
    if (v1[7] <= ++v3)
    {
      return 0;
    }
  }

  v5 = 0;
  v6 = v1[9];
  while (v6 < 1)
  {
LABEL_20:
    if (v4 <= ++v5)
    {
      goto LABEL_21;
    }
  }

  v7 = 0;
  v8 = v1[10];
  while (v8 < 1)
  {
LABEL_18:
    if (v6 <= ++v7)
    {
      v4 = v1[8];
      goto LABEL_20;
    }
  }

  v9 = 0;
  v10 = v1[11];
  while (v10 < 1)
  {
LABEL_16:
    if (v8 <= ++v9)
    {
      v6 = v1[9];
      goto LABEL_18;
    }
  }

  v11 = 0;
  while (1)
  {
    v14[0] = v3;
    v14[1] = v5;
    v14[2] = v7;
    v14[3] = v9;
    v14[4] = v11;
    ZinIrWeight::GetWeightValueAsFloat(*(this + 84), v14);
    if (v12 != 1.0)
    {
      return 1;
    }

    ++v11;
    v10 = v1[11];
    if (v10 <= v11)
    {
      v8 = v1[10];
      goto LABEL_16;
    }
  }
}

BOOL ZinIrKernel::ShouldUseSparseBinaryForCompression(ZinIrKernel *this)
{
  if ((*(this + 456) & 4) == 0)
  {
    return 0;
  }

  v6[3] = v1;
  v6[4] = v2;
  v6[0] = 0;
  if (ZinKernelFormatGetBitDepth(*(this + 44), v6))
  {
    v5 = 0;
  }

  else
  {
    v5 = v6[0] == 1;
  }

  return v5 && (*(this + 456) & 0x22) == 0;
}

uint64_t ZinIrKernel::HasPaletteThatRequiresCompression(ZinIrKernel *this)
{
  v2 = ZinKernelDescriptor::KernelExpands((this + 176));
  v3 = *(this + 84);
  if (!v3 || !*(v3 + 320) || (*(v3 + 8) - 7) > 0x14)
  {
    return 0;
  }

  v4 = v2;
  v5 = *(v3 + 136);
  if (v5)
  {
    if (((*(*v5 + 200))(v5) | v4))
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

LABEL_6:
  if (ZinIrWeight::IsFirstPaletteLUTEntryNonZero(*(this + 84)))
  {
    return 1;
  }

  else
  {
    return (*(this + 456) >> 1) & 1;
  }
}

uint64_t ZinIrKernel::UpdateSHAContextForMemberVariables(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    ZinAssertImpl("Cannot update kernel SHA context after final hash has been calculated.", a2);
  }

  v2 = a2;
  v4 = *(a1 + 672);
  if (v4 && (*(*v4 + 72))(v4))
  {
    CC_SHA256_Init((a1 + 52));
    result = 0;
    *(a1 + 156) = 1;
    return result;
  }

  if (*(a1 + 704))
  {
    if (*(a1 + 672))
    {
      ZinAssertImpl("Weights not allowed in tensor kernel");
    }

    v6 = *(a1 + 656);
    if (v6 && (*(v6 + 328) & 1) == 0)
    {
      ZinAssertImpl("per-channel scale not allowed in tensor kernel");
    }

    v7 = *(a1 + 664);
    if (v7 && (*(v7 + 328) & 1) == 0)
    {
      ZinAssertImpl("per-channel bias not allowed in tensor kernel");
    }

    if (*(a1 + 680))
    {
      ZinAssertImpl("per-channel zero point is not allowed in tensor kernel");
    }
  }

  if (*(a1 + 156))
  {
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    CC_SHA256_Init((a1 + 52));
    *(a1 + 156) = 1;
  }

  if (!*(a1 + 672))
  {
    goto LABEL_46;
  }

  CC_SHA256_Update((a1 + 52), "weight", 6u);
  v8 = *(*(a1 + 672) + 136);
  if (*(v8 + 48) || (v11 = ZinIrKernel::IsRunTimeMutable(a1), v2 != 2) || (v11 & 1) != 0 || (result = ZinIrKernel::AddWeightsToSHA(a1), !result))
  {
    if (ZinIrKernel::IsRunTimeMutable(a1))
    {
      p_p = &__p;
      std::string::basic_string[abi:ne200100]<0>(&__p, "mutable");
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v10 = strlen(p_p);
      CC_SHA256_Update((a1 + 52), p_p, v10);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (*(v8 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v8 + 16), *(v8 + 24));
    }

    else
    {
      __p = *(v8 + 16);
    }

    v30 = *(v8 + 40);
    LODWORD(v31) = *(v8 + 56);
    if (*(v8 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *(v8 + 64), *(v8 + 72));
    }

    else
    {
      v32 = *(v8 + 64);
    }

    v33 = *(v8 + 88);
    v34 = *(v8 + 104);
    ZinIrKernel::UpdateSHAContextForMemberVariables(SHAUpdateMode)::$_0::operator()(&__p, 0, (a1 + 52));
    ZinIrKernel::UpdateSHAContextForMemberVariables(SHAUpdateMode)::$_0::operator()(&v32, 1, (a1 + 52));
    for (i = 0; i != -12; i -= 6)
    {
      if (SHIBYTE(v32.__r_.__value_.__r.__words[i + 2]) < 0)
      {
        operator delete(*(&v32.__r_.__value_.__l.__data_ + i * 8));
      }
    }

    v13 = *(a1 + 672);
    v14 = *(v13 + 320);
    if (v14)
    {
      if ((*(v13 + 8) - 7) < 0x15)
      {
        v15 = *v14;
        v16 = v14[1];
        if (*v14 != v16)
        {
          do
          {
            v18 = *v15;
            v17 = v15[1];
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            ZinIrKernel::UpdateSHAContextForMemberVariables(SHAUpdateMode)::$_0::operator()((v18 + 16), 0, (a1 + 52));
            ZinIrKernel::UpdateSHAContextForMemberVariables(SHAUpdateMode)::$_0::operator()((v18 + 64), 1, (a1 + 52));
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }

            v15 += 2;
          }

          while (v15 != v16);
        }
      }
    }

    __p.__r_.__value_.__s.__data_[0] = *(a1 + 160);
    CC_SHA256_Update((a1 + 52), &__p, 1u);
    CC_SHA256_Update((a1 + 52), (a1 + 168), 4u);
LABEL_46:
    __p.__r_.__value_.__r.__words[0] = *(a1 + 656);
    __p.__r_.__value_.__l.__size_ = "scale";
    __p.__r_.__value_.__r.__words[2] = *(a1 + 664);
    *&v30 = "bias";
    *(&v30 + 1) = *(a1 + 680);
    v31 = "zero_point";
    v27 = 0;
    v28 = 0;
    v26 = 0;
    std::vector<std::pair<ZinIrVector const*,char const*>>::__init_with_size[abi:ne200100]<std::pair<ZinIrVector const*,char const*> const*,std::pair<ZinIrVector const*,char const*> const*>(&v26, &__p, &v32, 3uLL);
    v19 = v26;
    v20 = v27;
    if (v26 == v27)
    {
LABEL_60:
      CC_SHA256_Update((a1 + 52), "desc", 4u);
      ZinIrKernel::UpdateSHAContextForDescriptor(a1);
      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      return 0;
    }

    while (1)
    {
      if (*v19)
      {
        v21 = strlen(v19[1]);
        CC_SHA256_Update((a1 + 52), v19[1], v21);
        v22 = *v19;
        v24 = *(*v19 + 17);
        v23 = *(*v19 + 18);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          if (v24)
          {
            v22 = *v19;
            v24 = *(*v19 + 17);
LABEL_52:
            if (!*(v24 + 48))
            {
              IsRunTimeMutable = ZinIrKernel::IsRunTimeMutable(a1);
              if (v2 == 2 && (IsRunTimeMutable & 1) == 0)
              {
                ZinIrKernel::AddVectorToSHA(a1, v22);
                v22 = *v19;
              }
            }

            if (v22[328])
            {
              LODWORD(__p.__r_.__value_.__l.__data_) = ZinIrVector::GetSingularVal(v22);
              CC_SHA256_Update((a1 + 52), &__p, 4u);
            }

            else
            {
              ZinIrKernel::UpdateSHAContextForMemberVariables(SHAUpdateMode)::$_0::operator()((v24 + 16), 0, (a1 + 52));
            }
          }
        }

        else if (v24)
        {
          goto LABEL_52;
        }
      }

      v19 += 2;
      if (v19 == v20)
      {
        goto LABEL_60;
      }
    }
  }

  return result;
}

void sub_1A6A1DC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrKernel::IsRunTimeMutable(ZinIrKernel *this)
{
  v1 = *(this + 82);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 152) == 2;
  }

  v2 = *(this + 83);
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 152) == 2;
  }

  v3 = *(this + 84);
  if (v3)
  {
    LOBYTE(v3) = *(v3 + 152) == 2;
  }

  v4 = *(this + 85);
  if (v4)
  {
    LOBYTE(v4) = *(v4 + 152) == 2;
  }

  v5 = v3 | v4;
  if ((v1 | v2))
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6 & 1;
}

uint64_t ZinIrKernel::AddWeightsToSHA(ZinIrKernel *this)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = *(this + 84);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v4 = *(this + 88);
    if (v4)
    {
      v3 = ZinTensorFormatToKernelFormat(*(v4 + 104));
    }

    else
    {
      v3 = 0;
    }
  }

  v60 = v3;
  v61 = xmmword_1A75D6A2C;
  LODWORD(v62) = 6;
  std::unordered_set<ZinKernelFormat>::unordered_set(v59, &v61, 5);
  if (!ZinKernelFormatIsUnity(*(this + 44)))
  {
    if (!std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(v59, &v60) && (v60 - 7) > 0x14)
    {
      v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v30)
      {
        ZinIrKernel::AddWeightsToSHA(v30, v31, v32, v33, v34, v35, v36, v37);
      }

      goto LABEL_45;
    }

    v6 = *(this + 84);
    if (v6[7] >= 1)
    {
      v7 = 0;
      do
      {
        if (v6[8] >= 1)
        {
          v8 = 0;
          do
          {
            if (v6[9] >= 1)
            {
              v9 = 0;
              do
              {
                if (v6[10] >= 1)
                {
                  v10 = 0;
                  do
                  {
                    if (v6[11] >= 1)
                    {
                      v11 = 0;
                      while (2)
                      {
                        *&v61 = v7;
                        *(&v61 + 1) = v8;
                        v62 = v9;
                        v63 = v10;
                        v64 = v11;
                        switch(v60)
                        {
                          case 0:
                          case 3:
                          case 28:
                          case 29:
                          case 30:
                          case 31:
                          case 32:
                            v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            if (v22)
                            {
                              ZinIrKernel::AddWeightsToSHA(v22, v23, v24, v25, v26, v27, v28, v29);
                            }

                            goto LABEL_45;
                          case 1:
                            LOBYTE(data) = ZinIrWeightBase::GetAt<signed char>(v6);
                            CC_SHA256_Update((this + 52), &data, 1u);
                            goto LABEL_26;
                          case 2:
                          case 27:
                            LOBYTE(data) = ZinIrWeightBase::GetAt<unsigned char>(v6);
                            CC_SHA256_Update((this + 52), &data, 1u);
                            goto LABEL_26;
                          case 4:
                            ZinIrWeightBase::GetAt<half>(v6);
                            LOWORD(data) = v13;
                            CC_SHA256_Update((this + 52), &data, 2u);
                            goto LABEL_26;
                          case 5:
                            LOBYTE(data) = ZinIrWeightBase::GetAt<e4m3_t>(v6);
                            CC_SHA256_Update((this + 52), &data, 1u);
                            goto LABEL_26;
                          case 6:
                            ZinIrWeightBase::GetAt<float>(v6);
                            LODWORD(data) = v12;
                            CC_SHA256_Update((this + 52), &data, 4u);
                            goto LABEL_26;
                          case 7:
                          case 8:
                          case 9:
                          case 10:
                            LOBYTE(data) = ZinIrWeightBase::GetAt<ZinIrWeightBase::uint1>(v6) & 1;
                            CC_SHA256_Update((this + 52), &data, 1u);
                            goto LABEL_26;
                          case 11:
                          case 12:
                          case 13:
                          case 14:
                            LOBYTE(data) = ZinIrWeightBase::GetAt<ZinIrWeightBase::uint2>(v6) & 3;
                            CC_SHA256_Update((this + 52), &data, 1u);
                            goto LABEL_26;
                          case 15:
                          case 16:
                          case 17:
                          case 18:
                            LOBYTE(data) = ZinIrWeightBase::GetAt<ZinIrWeightBase::uint3>(v6) & 7;
                            CC_SHA256_Update((this + 52), &data, 1u);
                            goto LABEL_26;
                          case 19:
                          case 20:
                          case 21:
                          case 22:
                            LOBYTE(data) = ZinIrWeightBase::GetAt<ZinIrWeightBase::uint4>(v6) & 0xF;
                            CC_SHA256_Update((this + 52), &data, 1u);
                            goto LABEL_26;
                          case 23:
                          case 24:
                          case 25:
                          case 26:
                            LOBYTE(data) = ZinIrWeightBase::GetAt<ZinIrWeightBase::uint6>(v6) & 0x3F;
                            CC_SHA256_Update((this + 52), &data, 1u);
                            goto LABEL_26;
                          default:
LABEL_26:
                            ++v11;
                            v6 = *(this + 84);
                            if (v11 >= v6[11])
                            {
                              break;
                            }

                            continue;
                        }

                        break;
                      }
                    }

                    ++v10;
                  }

                  while (v10 < v6[10]);
                }

                ++v9;
              }

              while (v9 < v6[9]);
            }

            ++v8;
          }

          while (v8 < v6[8]);
        }

        ++v7;
      }

      while (v7 < v6[7]);
    }

    if ((v60 - 7) > 0x14)
    {
      goto LABEL_7;
    }

    *&v61 = 0;
    data = 0;
    if (ZinKernelGetPaletteLUTSize(v60, *(this + 52), &v61))
    {
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v14)
      {
        ZinIrKernel::AddWeightsToSHA(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      goto LABEL_45;
    }

    v57 = 0;
    if (ZinKernelFormatGetPaletteFormat(v60, &v57))
    {
      v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!v39)
      {
LABEL_45:
        v5 = 3;
        goto LABEL_46;
      }
    }

    else
    {
      if (!ZinKernelFormatGetBitDepth(v57, &data))
      {
        v47 = *(this + 84);
        v48 = *(v47 + 320);
        if (v48)
        {
          v49 = 0;
          v50 = 8 * v61 / data;
          do
          {
            if ((*(v47 + 8) - 7) >= 0x15)
            {
              break;
            }

            if (v49 >= (v48[1] - *v48) >> 4)
            {
              goto LABEL_7;
            }

            if (v50 >= 1)
            {
              for (i = 0; i != v50; ++i)
              {
                if (v57 > 3)
                {
                  if (v57 == 4)
                  {
                    PaletteData = ZinIrWeight::GetPaletteData(*(this + 84), v49);
                    v56 = (*(**PaletteData + 56))(*PaletteData, i).n128_u16[0];
                    CC_SHA256_Update((this + 52), &v56, 2u);
                  }

                  else if (v57 == 5)
                  {
                    v53 = ZinIrWeight::GetPaletteData(*(this + 84), v49);
                    LOBYTE(v56) = (*(**v53 + 88))(*v53, i);
                    CC_SHA256_Update((this + 52), &v56, 1u);
                  }
                }

                else if (v57 == 1)
                {
                  v54 = ZinIrWeight::GetPaletteData(*(this + 84), v49);
                  LOBYTE(v56) = (*(**v54 + 72))(*v54, i);
                  CC_SHA256_Update((this + 52), &v56, 1u);
                }

                else if (v57 == 2)
                {
                  v52 = ZinIrWeight::GetPaletteData(*(this + 84), v49);
                  LOBYTE(v56) = (*(**v52 + 120))(*v52, i);
                  CC_SHA256_Update((this + 52), &v56, 1u);
                }
              }

              v47 = *(this + 84);
            }

            ++v49;
            v48 = *(v47 + 320);
          }

          while (v48);
        }

        ZinAssertImpl("Error: This weight does not have palette info.");
      }

      v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!v39)
      {
        goto LABEL_45;
      }
    }

    ZinIrKernel::AddWeightsToSHA(v39, v40, v41, v42, v43, v44, v45, v46);
    goto LABEL_45;
  }

LABEL_7:
  v5 = 0;
LABEL_46:
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v59);
  return v5;
}

void sub_1A6A1E380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void ZinIrKernel::UpdateSHAContextForMemberVariables(SHAUpdateMode)::$_0::operator()(std::string *a1, int a2, CC_SHA256_CTX *a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = &a1[1].__r_.__value_.__s.__data_[8];
  if (a1[1].__r_.__value_.__l.__size_)
  {
    ZinGetFileNameOnly(a1, &__p);
    std::to_string(&v14, a2);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = std::string::insert(&v14, 0, p_p, size);
    v10 = v9->__r_.__value_.__r.__words[0];
    v16[0] = v9->__r_.__value_.__l.__size_;
    *(v16 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v10;
    __p.__r_.__value_.__l.__size_ = v16[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v16 + 7);
    *(&__p.__r_.__value_.__s + 23) = v11;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
      v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v10 = __p.__r_.__value_.__r.__words[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = v10;
    }

    if ((v11 & 0x80u) == 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = __p.__r_.__value_.__r.__words[1];
    }

    CC_SHA256_Update(a3, v12, v13);
    CC_SHA256_Update(a3, &a1[1], 8u);
    CC_SHA256_Update(a3, v3, 8u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1A6A1E558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrKernel::AddVectorToSHA(ZinIrKernel *this, std::vector<unsigned int>::size_type *a2)
{
  ZinIrVector::GetValuesAsVector<float>(a2, a2[7], 1, &data);
  CC_SHA256_Update((this + 52), data.__begin_, (LODWORD(data.__end_) - LODWORD(data.__begin_)) & 0xFFFFFFFC);
  if (data.__begin_)
  {
    data.__end_ = data.__begin_;
    operator delete(data.__begin_);
  }
}

void sub_1A6A1E600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrKernel::UpdateSHAContextForDescriptor(ZinIrKernel *this)
{
  CC_SHA256_Update((this + 52), this + 208, 0x50u);
  CC_SHA256_Update((this + 52), this + 288, 0x28u);
  CC_SHA256_Update((this + 52), this + 432, 8u);
  CC_SHA256_Update((this + 52), this + 440, 8u);
  CC_SHA256_Update((this + 52), this + 328, 4u);
  CC_SHA256_Update((this + 52), this + 332, 4u);
  CC_SHA256_Update((this + 52), this + 336, 4u);
  CC_SHA256_Update((this + 52), this + 340, 4u);
  CC_SHA256_Update((this + 52), this + 344, 4u);
  CC_SHA256_Update((this + 52), this + 348, 4u);
  v9 = 0;
  v8 = 0;
  if (*(this + 82) == 1 && *(this + 85) == 2)
  {
    HIDWORD(v9) = *(this + 89) | (*(this + 88) << 8);
  }

  if (*(this + 83) == 1 && *(this + 86) == 2)
  {
    LODWORD(v9) = *(this + 91) | (*(this + 90) << 8);
  }

  if (*(this + 84) == 1 && *(this + 87) == 2)
  {
    v8 = *(this + 93) | (*(this + 92) << 8);
  }

  v2 = *(this + 84);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v4 = *(this + 88);
    if (!v4)
    {
      goto LABEL_17;
    }

    v3 = ZinTensorFormatToKernelFormat(*(v4 + 104));
  }

  if ((v3 - 7) <= 0x14 && *(this + 52) != 1)
  {
    data = *(this + 52);
    CC_SHA256_Update((this + 52), &data, 4u);
  }

LABEL_17:
  CC_SHA256_Update((this + 52), &v9 + 4, 4u);
  CC_SHA256_Update((this + 52), &v9, 4u);
  CC_SHA256_Update((this + 52), &v8, 4u);
  if (*(this + 50) >= 2uLL)
  {
    CC_SHA256_Update((this + 52), "num_groups", 0xAu);
    CC_SHA256_Update((this + 52), this + 400, 8u);
  }

  data = *(this + 456) & 1;
  CC_SHA256_Update((this + 52), &data, 4u);
  v6 = *(this + 102);
  result = CC_SHA256_Update((this + 52), &v6, 4u);
  if (*(this + 536) == 1)
  {
    return CC_SHA256_Update((this + 52), this + 464, 0x48u);
  }

  return result;
}

uint64_t ZinIrKernel::GetWeightFormat(ZinIrKernel *this)
{
  v1 = *(this + 84);
  if (v1)
  {
    return *(v1 + 8);
  }

  v3 = *(this + 88);
  if (v3)
  {
    return ZinTensorFormatToKernelFormat(*(v3 + 104));
  }

  else
  {
    return 0;
  }
}

void ZinIrKernel::GetHash(ZinIrKernel *this@<X0>, char a2@<W1>, std::string *a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(this + 48) != 1)
  {
    *md = 0u;
    v16 = 0u;
    if (a2)
    {
      p_c = (this + 52);
    }

    else
    {
      v9 = *(this + 100);
      v10 = *(this + 132);
      *&c.wbuf[6] = *(this + 116);
      *&c.wbuf[10] = v10;
      *&c.wbuf[14] = *(this + 148);
      v11 = *(this + 68);
      *c.count = *(this + 52);
      *&c.hash[2] = v11;
      *&c.hash[6] = *(this + 84);
      *&c.wbuf[2] = v9;
      p_c = &c;
    }

    CC_SHA256_Final(md, p_c);
    v12 = 0;
    v13 = &c;
    do
    {
      snprintf(v13, 3uLL, "%02X", md[v12++]);
      v13 += 2;
    }

    while (v12 != 32);
    LOBYTE(c.wbuf[6]) = 0;
    if ((a2 & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(a3, &c);
      return;
    }

    if (*(this + 156) == 1)
    {
      std::string::__assign_external(this + 1, &c);
      *(this + 156) = 0;
    }

    *(this + 48) = 1;
    if (*(this + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *(this + 3), *(this + 4));
      return;
    }

LABEL_15:
    *&a3->__r_.__value_.__l.__data_ = *(this + 24);
    a3->__r_.__value_.__r.__words[2] = *(this + 5);
    return;
  }

  if ((*(this + 47) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  v5 = *(this + 3);
  v6 = *(this + 4);

  std::string::__init_copy_ctor_external(a3, v5, v6);
}

uint64_t ZinIrKernel::GetHash(ZinIrKernel *this)
{
  v26 = *MEMORY[0x1E69E9840];
  *md = 0u;
  v25 = 0u;
  v1 = *(this + 100);
  v2 = *(this + 132);
  *&c.wbuf[6] = *(this + 116);
  *&c.wbuf[10] = v2;
  *&c.wbuf[14] = *(this + 148);
  v3 = *(this + 68);
  *c.count = *(this + 52);
  *&c.hash[2] = v3;
  *&c.hash[6] = *(this + 84);
  *&c.wbuf[2] = v1;
  CC_SHA256_Final(md, &c);
  v4 = 0;
  v5 = 0;
  __src = 0;
  v21 = 0;
  v22 = 0;
  do
  {
    v6 = md[v5];
    if (v4 >= v22)
    {
      v7 = __src;
      v8 = v4 - __src;
      v9 = (v4 - __src) >> 2;
      v10 = v9 + 1;
      if ((v9 + 1) >> 62)
      {
        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v11 = v22 - __src;
      if ((v22 - __src) >> 1 > v10)
      {
        v10 = v11 >> 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v12 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(&__src, v12);
      }

      v13 = (v4 - __src) >> 2;
      v14 = (4 * v9);
      v15 = (4 * v9 - 4 * v13);
      *v14 = v6;
      v4 = (v14 + 1);
      memcpy(v15, v7, v8);
      v16 = __src;
      __src = v15;
      v21 = v4;
      v22 = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v4 = v6;
      v4 += 4;
    }

    v21 = v4;
    ++v5;
  }

  while (v5 != 32);
  v17 = __src;
  if (__src == v4)
  {
    v18 = 0;
    if (!__src)
    {
      return v18;
    }

    goto LABEL_17;
  }

  v18 = ZinHash(__src, v4 - __src);
  v17 = __src;
  if (__src)
  {
LABEL_17:
    v21 = v17;
    operator delete(v17);
  }

  return v18;
}

void sub_1A6A1EC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinIrKernel::ShouldPreserveCompressionInfo(ZinIrKernel *this, const ZinIrKernel *a2, const ZinIrHalParameters *a3, ZinKernelSparsityCache *a4)
{
  if (*(a2 + 160) != 1)
  {
    return 0;
  }

  if (ZinIrKernel::HasPaletteThatRequiresCompression(a2))
  {
    return 1;
  }

  if (!*(this + 84))
  {
    return 0;
  }

  ZinIrKernel::GetSparsityRatio(this, 4, a4);
  return v7 > 0.14286;
}

BOOL ZinIrKernel::IsWeightSparse(ZinIrKernel *this, char a2, BOOL a3, ZinKernelSparsityCache *a4, float a5)
{
  if (fabsf(a5) >= 1.0)
  {
    return 0;
  }

  v7 = *(this + 84);
  if (!v7)
  {
    return 0;
  }

  if (a2)
  {
    v10 = *(v7 + 136);
    if (v10)
    {
      if ((*(*v10 + 200))(v10))
      {
        return 1;
      }
    }
  }

  ZinIrKernel::GetSparsityRatio(this, a2, a4);
  return v12 > a5;
}

void ZinIrKernel::InitializeDescriptor(uint64_t a1, int a2, unint64_t a3)
{
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 176) = 0u;
  v4 = *(a1 + 720) > 1u;
  *(a1 + 408) = 0;
  *(a1 + 384) = *(a1 + 616);
  *(a1 + 392) = *(a1 + 624);
  v5 = *(a1 + 640);
  v6 = *(a1 + 632);
  *(a1 + 400) = v6;
  v7 = v4 | (v5 << 7) | (*(a1 + 641) << 6);
  *(a1 + 456) = v7;
  v8 = *(a1 + 704);
  if (v8 || *(a1 + 672))
  {
    *(a1 + 456) = v7 | 4;
    *(a1 + 176) = a2;
    *(a1 + 328) = *(a1 + 568);
    *(a1 + 336) = *(a1 + 576);
    *(a1 + 348) = *(a1 + 588);
    *(a1 + 340) = *(a1 + 580);
    *(a1 + 352) = *(a1 + 592);
    *(a1 + 368) = *(a1 + 608);
    *(a1 + 376) = *(a1 + 628);
    *(a1 + 380) = *(a1 + 644);
    if (v8)
    {
      if (a3 == 1)
      {
        v9 = *(v8 + 88) / *(a1 + 552) / *(a1 + 544);
        *(a1 + 248) = *(v8 + 72);
        *(a1 + 256) = v9;
      }

      else
      {
        v15 = *(v8 + 72);
        if (v5)
        {
          v16 = v15 / a3;
        }

        else
        {
          v16 = v15;
        }

        *(a1 + 248) = v16;
        *(a1 + 256) = v15 / a3;
      }
    }

    else
    {
      v10 = *(a1 + 672);
      *(a1 + 248) = *(v10 + 56);
      *(a1 + 416) = ZinIrWeight::GetPaletteVectorSize(v10);
      v11 = *(a1 + 672);
      v12 = *(v11 + 16);
      v13 = *(v11 + 32);
      *(a1 + 240) = *(v11 + 48);
      *(a1 + 208) = v12;
      *(a1 + 224) = v13;
      if (*(v11 + 320) && (*(v11 + 8) - 7) <= 0x14)
      {
        if (ZinIrWeight::IsFirstPaletteLUTEntryNonZero(v11))
        {
          v14 = 32;
        }

        else
        {
          v14 = 0;
        }

        *(a1 + 456) = *(a1 + 456) & 0xDF | v14;
      }
    }

    *(a1 + 264) = vextq_s8(*(a1 + 544), *(a1 + 544), 8uLL);
    *(a1 + 280) = *(a1 + 560);
    ZinKernelDescriptorStrides((a1 + 328), (a1 + 340), (a1 + 248), (a1 + 352), v26);
    v17 = v26[1];
    *(a1 + 288) = v26[0];
    *(a1 + 304) = v17;
    *(a1 + 320) = v27;
  }

  else
  {
    *(a1 + 176) = a2;
    *(a1 + 328) = *(a1 + 568);
    *(a1 + 336) = *(a1 + 576);
    *(a1 + 348) = *(a1 + 588);
    *(a1 + 340) = *(a1 + 580);
    *(a1 + 352) = *(a1 + 592);
    *(a1 + 368) = *(a1 + 608);
    *(a1 + 376) = *(a1 + 628);
    *(a1 + 380) = *(a1 + 644);
    *(a1 + 264) = vextq_s8(*(a1 + 544), *(a1 + 544), 8uLL);
    *(a1 + 280) = *(a1 + 560);
    if (v5)
    {
      v25 = 1;
    }

    else
    {
      v25 = v6;
    }

    *(a1 + 248) = v25;
    *(a1 + 256) = 1;
  }

  v18 = *(a1 + 656);
  if (v18)
  {
    *(a1 + 456) |= 8u;
    if (*(v18 + 328))
    {
      *(a1 + 180) = ZinIrVector::GetSingularVal(v18);
      v18 = *(a1 + 656);
    }

    else
    {
      *(a1 + 185) = 1;
      if (!*(a1 + 704) && !*(a1 + 672))
      {
        *(a1 + 248) = *(v18 + 56);
      }
    }

    *(a1 + 184) = *(v18 + 320);
  }

  v19 = *(a1 + 664);
  if (v19)
  {
    *(a1 + 456) |= 0x10u;
    if (*(v19 + 328))
    {
      *(a1 + 188) = ZinIrVector::GetSingularVal(v19);
      v19 = *(a1 + 664);
    }

    else
    {
      *(a1 + 193) = 1;
      if (!*(a1 + 704) && !*(a1 + 672))
      {
        *(a1 + 248) = *(v19 + 56);
      }
    }

    *(a1 + 192) = *(v19 + 320);
  }

  v20 = *(a1 + 680);
  if (v20)
  {
    v21 = (a1 + 680);
    if (ZinIrVector::HasAllZero(v20))
    {
      std::unique_ptr<ZinIrVector>::reset[abi:ne200100]((a1 + 680), 0);
    }

    v22 = *v21;
    if (*v21)
    {
      if (*(v22 + 152))
      {
        ZinAssertImpl("Zero point should be not mutable");
      }

      *(a1 + 456) |= 2u;
      if (*(v22 + 328))
      {
        *(a1 + 196) = ZinIrVector::GetSingularVal(v22);
      }

      else
      {
        *(a1 + 201) = 1;
        if (*(a1 + 704) || *(a1 + 672))
        {
          v23 = *(a1 + 248);
          v24 = *(v22 + 56);
          if (v23 != v24 && v23 * *(a1 + 340) * *(a1 + 344) * *(a1 + 348) != v24)
          {
            ZinAssertImpl("Number of zero points are not equal to the subchannel count");
          }
        }

        else
        {
          *(a1 + 248) = *(v22 + 56);
        }
      }
    }
  }
}

uint64_t ZinIrKernel::InitializeDescriptor(uint64_t a1, int a2, __int128 *a3)
{
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 384) = *(a1 + 616);
  *(a1 + 392) = *(a1 + 624);
  v3 = *(a1 + 640);
  *(a1 + 400) = *(a1 + 632);
  v4 = (*(a1 + 641) << 6) | (v3 << 7);
  *(a1 + 456) = v4;
  *(a1 + 176) = a2;
  *(a1 + 328) = *(a1 + 568);
  *(a1 + 336) = *(a1 + 576);
  *(a1 + 348) = *(a1 + 588);
  v5 = *(a1 + 580);
  *(a1 + 352) = *(a1 + 592);
  *(a1 + 368) = 0u;
  *(a1 + 340) = v5;
  *(a1 + 368) = *(a1 + 608);
  *(a1 + 376) = *(a1 + 628);
  *(a1 + 380) = *(a1 + 644);
  v6 = (a1 + 248);
  v8 = *a3;
  v7 = a3[1];
  *(a1 + 280) = *(a3 + 4);
  *(a1 + 248) = v8;
  *(a1 + 264) = v7;
  if (*(a1 + 680))
  {
    ZinAssertImpl("Unity kernels do not support zero points");
  }

  v10 = *(a1 + 656);
  if (v10)
  {
    *(a1 + 456) = v4 | 8;
    if (*(v10 + 328))
    {
      *(a1 + 180) = ZinIrVector::GetSingularVal(v10);
      v10 = *(a1 + 656);
    }

    else
    {
      *(a1 + 185) = 1;
      if (!*(a1 + 248))
      {
        *v6 = *(v10 + 56);
      }
    }

    *(a1 + 184) = *(v10 + 320);
  }

  result = *(a1 + 664);
  if (result)
  {
    *(a1 + 456) |= 0x10u;
    if (*(result + 328))
    {
      *(a1 + 188) = ZinIrVector::GetSingularVal(result);
      result = *(a1 + 664);
    }

    else
    {
      *(a1 + 193) = 1;
      v12 = *(a1 + 248);
      v13 = *(result + 56);
      if (v12)
      {
        if (v12 != v13 && v12 == *(a1 + 344) * *(a1 + 348) * (v13 / *(a1 + 340)))
        {
          ZinAssertImpl("Number of channels in bias does not match the number of channels in kernel");
        }
      }

      else
      {
        *v6 = v13;
      }
    }

    *(a1 + 192) = *(result + 320);
  }

  return result;
}

uint64_t ZinIrKernel::ZinIrKernel(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v15 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v15;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), "");
  *(a1 + 48) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 1065353216;
  *(a1 + 171) = 0;
  memcpy((a1 + 176), a3, 0x11CuLL);
  std::__optional_copy_base<ZinIrShardingMap,false>::__optional_copy_base[abi:ne200100]((a1 + 464), a3 + 288);
  *(a1 + 544) = vdupq_n_s64(1uLL);
  *(a1 + 560) = 1;
  *&v16 = 0x100000001;
  *(&v16 + 1) = 0x100000001;
  *(a1 + 568) = v16;
  *(a1 + 584) = 0x100000001;
  *(a1 + 592) = 0;
  *(a1 + 608) = 0;
  *(a1 + 600) = 0;
  *(a1 + 616) = v16;
  *(a1 + 632) = 1;
  *(a1 + 640) = 0;
  *(a1 + 644) = 0;
  *(a1 + 648) = 0;
  v17 = (a1 + 656);
  v18 = *a5;
  *a5 = 0;
  *(a1 + 656) = v18;
  v19 = (a1 + 664);
  v20 = *a6;
  *a6 = 0;
  *(a1 + 664) = v20;
  v21 = *a4;
  *a4 = 0;
  *(a1 + 672) = v21;
  v22 = (a1 + 680);
  v23 = *a7;
  *a7 = 0;
  *(a1 + 680) = v23;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  ZinIrActivationParams::ZinIrActivationParams(a1 + 720, 0);
  *(a1 + 888) = 0;
  *(a1 + 896) = 0;
  if (!ZinIrKernel::IsValidKernel(a1))
  {
    ZinAssertImpl("Invalid Kernel construction due to incompatible weight attributes\n");
  }

  v24 = *(a1 + 672);
  *(a1 + 456) = *(a1 + 456) & 0xFB | (4 * (v24 != 0));
  if (v24)
  {
    v25 = *(v24 + 320);
    if (v25)
    {
      if ((*(v24 + 8) - 7) <= 0x14)
      {
        v26 = *(v24 + 328);
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        *(a1 + 688) = v25;
        v27 = *(a1 + 696);
        *(a1 + 696) = v26;
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        *(a1 + 416) = ZinIrWeight::GetPaletteVectorSize(*(a1 + 672));
      }
    }
  }

  v28 = *v17;
  if (*v17)
  {
    *(a1 + 456) |= 8u;
    *(a1 + 184) = *(v28 + 320);
    if (*(v28 + 328))
    {
      *(a1 + 180) = ZinIrVector::GetSingularVal(v28);
    }

    else
    {
      *(a1 + 185) = 1;
    }

    v29 = *(a1 + 656);
    if (*(a1 + 672))
    {
      if ((*(v29 + 328) & 1) == 0 && *(a1 + 248) != *(v29 + 56))
      {
        ZinAssertImpl("Incompatible dimensions");
      }
    }

    else
    {
      *(a1 + 248) = *(v29 + 56);
    }
  }

  v30 = *v19;
  if (*v19)
  {
    *(a1 + 456) |= 0x10u;
    *(a1 + 192) = *(v30 + 320);
    if (*(v30 + 328))
    {
      *(a1 + 188) = ZinIrVector::GetSingularVal(v30);
    }

    else
    {
      *(a1 + 193) = 1;
    }

    v31 = *(a1 + 664);
    if (*(a1 + 672))
    {
      if ((*(v31 + 328) & 1) == 0)
      {
        v32 = *(a1 + 248);
        v33 = *(v31 + 56);
        if (v32 != v33 && v32 * *(a1 + 340) * *(a1 + 344) * *(a1 + 348) != v33)
        {
LABEL_40:
          ZinAssertImpl("Invalid dimensions");
        }
      }
    }

    else
    {
      *(a1 + 248) = *(v31 + 56);
    }
  }

  if (*v22)
  {
    if (ZinIrVector::HasAllZero(*v22))
    {
      std::unique_ptr<ZinIrVector>::reset[abi:ne200100]((a1 + 680), 0);
    }

    v34 = *v22;
    if (*v22)
    {
      *(a1 + 456) |= 2u;
      if (*(v34 + 328))
      {
        *(a1 + 196) = ZinIrVector::GetSingularVal(v34);
      }

      else
      {
        *(a1 + 201) = 1;
      }

      v35 = *(a1 + 680);
      if (*(a1 + 672))
      {
        if ((*(v35 + 328) & 1) == 0)
        {
          v36 = *(a1 + 248);
          v37 = *(v35 + 56);
          if (v36 != v37 && v36 * *(a1 + 340) * *(a1 + 344) * *(a1 + 348) != v37)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        *(a1 + 248) = *(v35 + 56);
      }
    }
  }

  ZinIrKernel::UpdateSHAContextForMemberVariables(a1, a8);
  v38 = *(a3 + 152);
  *(a1 + 576) = *(a3 + 160);
  *(a1 + 568) = v38;
  v39 = *(a3 + 164);
  *(a1 + 588) = *(a3 + 172);
  *(a1 + 580) = v39;
  *(a1 + 628) = *(a3 + 200);
  v40 = *(a3 + 104);
  *(a1 + 544) = vextq_s8(*(a3 + 88), *(a3 + 88), 8uLL);
  *(a1 + 560) = v40;
  v41 = *(a3 + 208);
  *(a1 + 624) = *(a3 + 216);
  *(a1 + 616) = v41;
  v42 = *(a3 + 176);
  *(a1 + 608) = *(a3 + 192);
  *(a1 + 592) = v42;
  *(a1 + 632) = *(a3 + 224);
  *(a1 + 640) = *(a3 + 280) >> 7;
  *(a1 + 641) = (*(a3 + 280) & 0x40) != 0;
  *(a1 + 644) = *(a3 + 204);
  return a1;
}

void sub_1A6A1F724(_Unwind_Exception *a1)
{
  std::unique_ptr<ZinMirAneKernel>::~unique_ptr[abi:ne200100]((v1 + 888));
  v6 = *(v1 + 712);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v1 + 696);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v4, 0);
  v8 = *(v1 + 672);
  *(v1 + 672) = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v3, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v2, 0);
  ZinKernelDescriptor::~ZinKernelDescriptor((v1 + 176));
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

BOOL ZinIrKernel::IsValidKernel(ZinIrKernel *this)
{
  if (!CanBundleConstData(*(this + 84), *(this + 83)) || !CanBundleConstData(*(this + 83), *(this + 82)))
  {
    return 0;
  }

  v2 = *(this + 82);
  v3 = *(this + 85);

  return CanBundleConstData(v2, v3);
}

uint64_t *std::unique_ptr<ZinMirAneKernel>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v3)
    {
      v5 = (v3 + 32);
      std::vector<ZinNeKernelData>::__destroy_vector::operator()[abi:ne200100](&v5);
      MEMORY[0x1AC55A070](v3, 0x1020C4012B38EE3);
    }

    MEMORY[0x1AC55A070](v2, 0x1020C40D6291FDALL);
  }

  return a1;
}

uint64_t ZinIrKernel::ZinIrKernel(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void *a8)
{
  v15 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v15;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), "");
  *(a1 + 48) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 1065353216;
  *(a1 + 171) = 0;
  memcpy((a1 + 176), a3, 0x11CuLL);
  std::__optional_copy_base<ZinIrShardingMap,false>::__optional_copy_base[abi:ne200100]((a1 + 464), a3 + 288);
  *(a1 + 544) = vdupq_n_s64(1uLL);
  *(a1 + 560) = 1;
  *&v16 = 0x100000001;
  *(&v16 + 1) = 0x100000001;
  *(a1 + 568) = v16;
  *(a1 + 584) = 0x100000001;
  *(a1 + 592) = 0;
  *(a1 + 608) = 0;
  *(a1 + 600) = 0;
  *(a1 + 616) = v16;
  *(a1 + 632) = 1;
  *(a1 + 640) = 0;
  *(a1 + 644) = 0;
  *(a1 + 648) = 0;
  v17 = *a4;
  *a4 = 0;
  *(a1 + 656) = v17;
  v18 = *a5;
  *a5 = 0;
  *(a1 + 664) = v18;
  *(a1 + 672) = 0;
  v19 = *a6;
  *a6 = 0;
  *(a1 + 680) = v19;
  v20 = a8[1];
  *(a1 + 688) = *a8;
  *(a1 + 696) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a7 + 8);
  *(a1 + 704) = *a7;
  *(a1 + 712) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = (a1 + 656);
  v23 = (a1 + 664);
  v24 = (a1 + 680);
  v25 = ZinIrActivationParams::ZinIrActivationParams(a1 + 720, 0);
  *(a1 + 888) = 0;
  *(a1 + 896) = 0;
  if (!*(a1 + 704) || *v22 && *(*v22 + 328) != 1 || *v23 && *(*v23 + 328) != 1 || *v24 || (v26 = *(ZinIrTensor::GetRootTensor(*a7) + 20)) == 0 || *(v26 + 96) != 2)
  {
    ZinAssertImpl("Invalid kernel configuration", v25);
  }

  if (!ZinIrKernel::IsValidKernel(a1))
  {
    ZinAssertImpl("Invalid Kernel construction due to incompatible weight attributes\n", v27);
  }

  v28 = ZinTensorFormatToKernelFormat(*(*(a1 + 704) + 104));
  *(a1 + 176) = v28;
  if (!v28)
  {
    ZinAssertImpl("Unexpected tensor format %d to convert to kernel format", *(*(a1 + 704) + 104));
  }

  v30 = *(a1 + 456);
  *(a1 + 456) = v30 | 4;
  if (*(a1 + 688) && (v28 - 7) <= 0x14)
  {
    *(a1 + 416) = *(*a8 + 24);
  }

  v31 = *v22;
  if (*v22)
  {
    *(a1 + 456) = v30 | 0xC;
    *(a1 + 184) = *(v31 + 320);
    if (*(v31 + 328))
    {
      *&v29 = ZinIrVector::GetSingularVal(v31);
      *(a1 + 180) = LODWORD(v29);
    }

    else
    {
      *(a1 + 185) = 1;
      if (*(a1 + 248) != *(v31 + 56))
      {
        goto LABEL_39;
      }
    }
  }

  v32 = *v23;
  if (*v23)
  {
    *(a1 + 456) |= 0x10u;
    *(a1 + 192) = *(v32 + 320);
    if (*(v32 + 328))
    {
      *(a1 + 188) = ZinIrVector::GetSingularVal(v32);
    }

    else
    {
      *(a1 + 193) = 1;
      v33 = *(a1 + 248);
      v34 = *(v32 + 56);
      if (v33 != v34 && v33 * *(a1 + 340) * *(a1 + 344) * *(a1 + 348) != v34)
      {
        goto LABEL_39;
      }
    }
  }

  if (*v24)
  {
    if (ZinIrVector::HasAllZero(*v24))
    {
      std::unique_ptr<ZinIrVector>::reset[abi:ne200100]((a1 + 680), 0);
    }

    v35 = *v24;
    if (*v24)
    {
      *(a1 + 456) |= 2u;
      if (*(v35 + 328))
      {
        *(a1 + 196) = ZinIrVector::GetSingularVal(v35);
        goto LABEL_35;
      }

      *(a1 + 201) = 1;
      v36 = *(a1 + 248);
      v37 = *(v35 + 7);
      if (v36 != v37 && v36 * *(a1 + 340) * *(a1 + 344) * *(a1 + 348) != v37)
      {
LABEL_39:
        ZinAssertImpl("Invalid dimensions", v29);
      }
    }
  }

LABEL_35:
  ZinIrKernel::UpdateSHAContextForMemberVariables(a1, 2);
  v38 = *(a3 + 152);
  *(a1 + 576) = *(a3 + 160);
  *(a1 + 568) = v38;
  v39 = *(a3 + 164);
  *(a1 + 588) = *(a3 + 172);
  *(a1 + 580) = v39;
  *(a1 + 628) = *(a3 + 200);
  v40 = *(a3 + 104);
  *(a1 + 544) = vextq_s8(*(a3 + 88), *(a3 + 88), 8uLL);
  *(a1 + 560) = v40;
  v41 = *(a3 + 208);
  *(a1 + 624) = *(a3 + 216);
  *(a1 + 616) = v41;
  v42 = *(a3 + 176);
  *(a1 + 608) = *(a3 + 192);
  *(a1 + 592) = v42;
  *(a1 + 632) = *(a3 + 224);
  *(a1 + 640) = *(a3 + 280) >> 7;
  *(a1 + 641) = (*(a3 + 280) & 0x40) != 0;
  *(a1 + 644) = *(a3 + 204);
  return a1;
}

void sub_1A6A1FD08(_Unwind_Exception *a1)
{
  std::unique_ptr<ZinMirAneKernel>::~unique_ptr[abi:ne200100]((v1 + 888));
  v6 = *(v1 + 712);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v1 + 696);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v4, 0);
  v8 = *(v1 + 672);
  *(v1 + 672) = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v3, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v2, 0);
  ZinKernelDescriptor::~ZinKernelDescriptor((v1 + 176));
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrKernel::ZinIrKernel(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v11 = *a3;
  *(a1 + 16) = *(a3 + 2);
  *a1 = v11;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), "");
  *(a1 + 48) = 0;
  *(a1 + 156) = 0;
  v12 = *(*a2 + 160);
  *(a1 + 168) = *(*a2 + 168);
  *(a1 + 160) = v12;
  v13 = *(*a2 + 172);
  *(a1 + 176) = 0;
  *(a1 + 172) = v13;
  *(a1 + 173) = 0;
  *(a1 + 188) = 0;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  v14 = vdupq_n_s64(1uLL);
  *(a1 + 248) = v14;
  *(a1 + 264) = 1;
  *(a1 + 272) = v14;
  *(a1 + 288) = v14;
  *(a1 + 304) = v14;
  *(a1 + 320) = 1;
  v14.i64[0] = 0x100000001;
  v14.i64[1] = 0x100000001;
  *(a1 + 328) = v14;
  *(a1 + 344) = 0x100000001;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = xmmword_1A759E250;
  *(a1 + 392) = 1;
  *(a1 + 400) = 1;
  *(a1 + 408) = 0;
  *(a1 + 416) = 1;
  *(a1 + 424) = 0;
  *(a1 + 464) = 0;
  *(a1 + 536) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 456) = 0;
  *(a1 + 448) = 0;
  v15 = *a2;
  v16 = *(*a2 + 544);
  v17 = *(*a2 + 576);
  *(a1 + 560) = *(*a2 + 560);
  *(a1 + 576) = v17;
  *(a1 + 544) = v16;
  v18 = *(v15 + 592);
  v19 = *(v15 + 608);
  v20 = *(v15 + 624);
  *(a1 + 640) = *(v15 + 640);
  *(a1 + 608) = v19;
  *(a1 + 624) = v20;
  *(a1 + 592) = v18;
  v21 = *a2;
  *(a1 + 648) = *(*a2 + 648);
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = v21[86];
  v22 = v21[87];
  *(a1 + 696) = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    v21 = *a2;
  }

  *(a1 + 704) = v21[88];
  v23 = v21[89];
  *(a1 + 712) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    v21 = *a2;
  }

  ZinIrActivationParams::ZinIrActivationParams(a1 + 720, (v21 + 90));
  *(a1 + 888) = 0;
  *(a1 + 896) = 0;
  if (*(*a2 + 672))
  {
    operator new();
  }

  v24 = *(a1 + 672);
  *(a1 + 672) = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  if (*(*a2 + 680))
  {
    std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
  }

  v39 = 0;
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100]((a1 + 680), 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&v39, 0);
  v25 = *a4;
  if (*a4)
  {
    *a4 = 0;
    v26 = (a1 + 656);
  }

  else
  {
    if (*(*a2 + 656))
    {
      std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
    }

    v39 = 0;
    std::unique_ptr<ZinIrVector>::reset[abi:ne200100]((a1 + 656), 0);
    v26 = &v39;
    v25 = 0;
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v26, v25);
  v27 = *a5;
  if (*a5)
  {
    *a5 = 0;
    v28 = (a1 + 664);
  }

  else
  {
    if (*(*a2 + 664))
    {
      std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
    }

    v39 = 0;
    std::unique_ptr<ZinIrVector>::reset[abi:ne200100]((a1 + 664), 0);
    v28 = &v39;
    v27 = 0;
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v28, v27);
  if (!ZinIrKernel::IsValidKernel(a1))
  {
    ZinAssertImpl("Invalid Kernel construction due to incompatible weight attributes\n");
  }

  IsUnity = ZinKernelFormatIsUnity(*(*a2 + 176));
  v30 = *(*a2 + 176);
  if (IsUnity)
  {
    ZinIrKernel::InitializeDescriptor(a1, v30, (*a2 + 248));
  }

  else
  {
    ZinIrKernel::InitializeDescriptor(a1, v30, 1uLL);
  }

  v31 = *(a1 + 688);
  if (v31 && (*(a1 + 176) - 7) <= 0x14)
  {
    *(a1 + 416) = *(v31 + 24);
  }

  std::__optional_storage_base<ZinIrShardingMap,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrShardingMap,false> const&>(a1 + 464, *a2 + 464);
  v32 = *a2;
  *(a1 + 896) = *(*a2 + 896);
  if (!*a4)
  {
    if (!a6 || !*a5)
    {
      goto LABEL_34;
    }

LABEL_33:
    ZinIrKernel::UpdateSHAContextForMemberVariables(a1, a6);
    return a1;
  }

  if (a6)
  {
    goto LABEL_33;
  }

LABEL_34:
  if ((*(v32 + 156) & 1) == 0)
  {
    ZinAssertImpl("kernel with invalid sha.");
  }

  v33 = *(v32 + 52);
  v34 = *(v32 + 68);
  *(a1 + 84) = *(v32 + 84);
  *(a1 + 68) = v34;
  *(a1 + 52) = v33;
  v35 = *(v32 + 100);
  v36 = *(v32 + 116);
  v37 = *(v32 + 132);
  *(a1 + 148) = *(v32 + 148);
  *(a1 + 132) = v37;
  *(a1 + 116) = v36;
  *(a1 + 100) = v35;
  *(a1 + 156) = 1;
  return a1;
}

void sub_1A6A201E4(_Unwind_Exception *a1)
{
  std::unique_ptr<ZinMirAneKernel>::~unique_ptr[abi:ne200100]((v1 + 888));
  v4 = *(v1 + 712);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 696);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v2 + 63, 0);
  v6 = *(v1 + 672);
  *(v1 + 672) = 0;
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v2 + 61, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v2 + 60, 0);
  ZinKernelDescriptor::~ZinKernelDescriptor(v2);
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrKernel::GetPaletteVectorSize(ZinIrKernel *this)
{
  v1 = *(this + 86);
  if (v1 && (*(this + 44) - 7) <= 0x14)
  {
    return *(v1 + 24);
  }

  else
  {
    return 1;
  }
}

uint64_t ZinIrKernel::ZinIrKernel(uint64_t a1, __int128 *a2, int a3, __int128 *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, unsigned int a9)
{
  v16 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v16;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), "");
  *(a1 + 176) = 0;
  *(a1 + 48) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 1065353216;
  *(a1 + 188) = 0;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 171) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  v17 = vdupq_n_s64(1uLL);
  *(a1 + 248) = v17;
  *(a1 + 264) = 1;
  *(a1 + 272) = v17;
  *(a1 + 288) = v17;
  *(a1 + 304) = v17;
  *(a1 + 320) = 1;
  v17.i64[0] = 0x100000001;
  v17.i64[1] = 0x100000001;
  *(a1 + 328) = v17;
  *(a1 + 344) = 0x100000001;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = xmmword_1A759E250;
  *(a1 + 392) = 1;
  *(a1 + 400) = 1;
  *(a1 + 408) = 0;
  *(a1 + 416) = 1;
  *(a1 + 424) = 0;
  *(a1 + 464) = 0;
  *(a1 + 536) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 432) = 0;
  v18 = *a4;
  v19 = a4[2];
  *(a1 + 560) = a4[1];
  *(a1 + 576) = v19;
  *(a1 + 544) = v18;
  v20 = a4[3];
  v21 = a4[4];
  v22 = a4[5];
  *(a1 + 640) = *(a4 + 12);
  *(a1 + 608) = v21;
  *(a1 + 624) = v22;
  *(a1 + 592) = v20;
  *(a1 + 648) = 0;
  v23 = *a6;
  *a6 = 0;
  *(a1 + 656) = v23;
  *(a1 + 664) = 0;
  v24 = *a5;
  *a5 = 0;
  v25 = *a7;
  *a7 = 0;
  *(a1 + 672) = v24;
  *(a1 + 680) = v25;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  ZinIrActivationParams::ZinIrActivationParams(a1 + 720, 0);
  *(a1 + 888) = 0;
  *(a1 + 896) = 0;
  v26 = *(a1 + 672);
  if (v26)
  {
    v27 = *(v26 + 320);
    if (v27)
    {
      if ((*(v26 + 8) - 7) <= 0x14)
      {
        v28 = *(v26 + 328);
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
        }

        *(a1 + 688) = v27;
        v29 = *(a1 + 696);
        *(a1 + 696) = v28;
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }
      }
    }
  }

  if (!ZinIrKernel::IsValidKernel(a1))
  {
    ZinAssertImpl("Invalid Kernel construction due to incompatible weight attributes\n");
  }

  ZinIrKernel::InitializeDescriptor(a1, a3, 1uLL);
  if (a8)
  {
    std::__optional_storage_base<ZinIrShardingMap,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrShardingMap,false> const&>(a1 + 464, a8 + 464);
    *(a1 + 896) = *(a8 + 896);
    if ((*(a8 + 156) & 1) == 0)
    {
      ZinAssertImpl("kernel with invalid sha.");
    }

    v30 = *(a8 + 52);
    v31 = *(a8 + 68);
    *(a1 + 84) = *(a8 + 84);
    *(a1 + 68) = v31;
    *(a1 + 52) = v30;
    v32 = *(a8 + 100);
    v33 = *(a8 + 116);
    v34 = *(a8 + 132);
    *(a1 + 148) = *(a8 + 148);
    *(a1 + 132) = v34;
    *(a1 + 116) = v33;
    *(a1 + 100) = v32;
    *(a1 + 156) = 1;
  }

  else
  {
    ZinIrKernel::UpdateSHAContextForMemberVariables(a1, a9);
  }

  return a1;
}

{
  return ZinIrKernel::ZinIrKernel(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1A6A20574(_Unwind_Exception *a1)
{
  std::unique_ptr<ZinMirAneKernel>::~unique_ptr[abi:ne200100]((v1 + 888));
  v4 = *(v1 + 712);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 696);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v2 + 63, 0);
  v6 = *(v1 + 672);
  *(v1 + 672) = 0;
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v2 + 61, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v2 + 60, 0);
  ZinKernelDescriptor::~ZinKernelDescriptor(v2);
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrKernel::ZinIrKernel(uint64_t a1, __int128 *a2, char *__src, __int128 *a4)
{
  v6 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v6;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v7;
  }

  *(a1 + 48) = 1;
  *(a1 + 156) = 1;
  *(a1 + 160) = 0;
  *(a1 + 164) = 1065353216;
  *(a1 + 171) = 0;
  memcpy((a1 + 176), __src, 0x11CuLL);
  std::__optional_copy_base<ZinIrShardingMap,false>::__optional_copy_base[abi:ne200100]((a1 + 464), (__src + 288));
  *(a1 + 544) = vdupq_n_s64(1uLL);
  *(a1 + 560) = 1;
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  *(a1 + 568) = v8;
  *(a1 + 584) = 0x100000001;
  *(a1 + 592) = 0;
  *(a1 + 608) = 0;
  *(a1 + 600) = 0;
  *(a1 + 616) = v8;
  *(a1 + 632) = 1;
  *(a1 + 640) = 0;
  *(a1 + 644) = 0;
  *(a1 + 648) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  ZinIrActivationParams::ZinIrActivationParams(a1 + 720, 0);
  *(a1 + 888) = 0;
  *(a1 + 896) = 0;
  v9 = *(__src + 19);
  *(a1 + 576) = *(__src + 40);
  *(a1 + 568) = v9;
  v10 = *(__src + 164);
  *(a1 + 588) = *(__src + 43);
  *(a1 + 580) = v10;
  *(a1 + 628) = *(__src + 50);
  v11 = *(__src + 13);
  *(a1 + 544) = vextq_s8(*(__src + 88), *(__src + 88), 8uLL);
  *(a1 + 560) = v11;
  v12 = *(__src + 26);
  *(a1 + 624) = *(__src + 54);
  *(a1 + 616) = v12;
  v13 = *(__src + 11);
  *(a1 + 608) = *(__src + 24);
  *(a1 + 592) = v13;
  *(a1 + 632) = *(__src + 28);
  *(a1 + 640) = __src[280] >> 7;
  *(a1 + 641) = (__src[280] & 0x40) != 0;
  *(a1 + 644) = *(__src + 51);
  return a1;
}

void sub_1A6A207D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrKernel::ZinIrKernel(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v7 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v7;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), "");
  *(a1 + 48) = 0;
  *(a1 + 156) = 0;
  v8 = *(a4 + 160);
  v9 = *(a4 + 168);
  *(a1 + 176) = 0;
  *(a1 + 168) = v9;
  *(a1 + 160) = v8;
  *(a1 + 172) = 0;
  *(a1 + 174) = 0;
  *(a1 + 188) = 0;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  v10 = vdupq_n_s64(1uLL);
  *(a1 + 248) = v10;
  *(a1 + 264) = 1;
  *(a1 + 272) = v10;
  *(a1 + 288) = v10;
  *(a1 + 304) = v10;
  *(a1 + 320) = 1;
  v10.i64[0] = 0x100000001;
  v10.i64[1] = 0x100000001;
  *(a1 + 328) = v10;
  *(a1 + 344) = 0x100000001;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = xmmword_1A759E250;
  *(a1 + 392) = 1;
  *(a1 + 400) = 1;
  *(a1 + 408) = 0;
  *(a1 + 416) = 1;
  *(a1 + 424) = 0;
  *(a1 + 464) = 0;
  *(a1 + 536) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 432) = 0;
  v11 = *a3;
  v12 = a3[2];
  *(a1 + 560) = a3[1];
  *(a1 + 576) = v12;
  *(a1 + 544) = v11;
  v13 = a3[3];
  v14 = a3[4];
  v15 = a3[5];
  *(a1 + 640) = *(a3 + 12);
  *(a1 + 608) = v14;
  *(a1 + 624) = v15;
  *(a1 + 592) = v13;
  *(a1 + 648) = *(a4 + 648);
  if (*(a4 + 656))
  {
    std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
  }

  *(a1 + 656) = 0;
  if (*(a4 + 664))
  {
    std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
  }

  *(a1 + 664) = 0;
  if (*(a4 + 672))
  {
    operator new();
  }

  *(a1 + 672) = 0;
  if (*(a4 + 680))
  {
    std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
  }

  *(a1 + 680) = 0;
  *(a1 + 688) = *(a4 + 688);
  v16 = *(a4 + 696);
  *(a1 + 696) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 704) = *(a4 + 704);
  v17 = *(a4 + 712);
  *(a1 + 712) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  ZinIrActivationParams::ZinIrActivationParams(a1 + 720, a4 + 720);
  *(a1 + 888) = 0;
  *(a1 + 896) = 0;
  if (!ZinIrKernel::IsValidKernel(a1))
  {
    ZinAssertImpl("Invalid Kernel construction due to incompatible weight attributes\n");
  }

  ZinIrKernel::InitializeDescriptor(a1, *(a4 + 176), 1uLL);
  if ((*(a4 + 156) & 1) == 0)
  {
    ZinAssertImpl("kernel with invalid sha.");
  }

  v18 = *(a4 + 52);
  v19 = *(a4 + 68);
  *(a1 + 84) = *(a4 + 84);
  *(a1 + 68) = v19;
  *(a1 + 52) = v18;
  v20 = *(a4 + 100);
  v21 = *(a4 + 116);
  v22 = *(a4 + 132);
  *(a1 + 148) = *(a4 + 148);
  *(a1 + 132) = v22;
  *(a1 + 116) = v21;
  *(a1 + 100) = v20;
  *(a1 + 156) = 1;
  if (ZinIrConvInfo::NeedSHAUpdate(a1 + 544, a4 + 544))
  {
    CC_SHA256_Update((a1 + 52), "desc", 4u);
    ZinIrKernel::UpdateSHAContextForDescriptor(a1);
  }

  return a1;
}

void sub_1A6A20B58(_Unwind_Exception *a1)
{
  v5 = *(v1 + 672);
  *(v1 + 672) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v3, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v2 + 60, 0);
  ZinKernelDescriptor::~ZinKernelDescriptor(v2);
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void ZinIrKernel::~ZinIrKernel(ZinIrKernel *this)
{
  std::unique_ptr<ZinMirAneKernel>::~unique_ptr[abi:ne200100](this + 111);
  v2 = *(this + 89);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 87);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](this + 85, 0);
  v4 = *(this + 84);
  *(this + 84) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](this + 83, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](this + 82, 0);
  if (*(this + 536) == 1)
  {
    v5 = *(this + 64);
    if (v5)
    {
      *(this + 65) = v5;
      operator delete(v5);
    }

    v6 = *(this + 61);
    if (v6)
    {
      *(this + 62) = v6;
      operator delete(v6);
    }

    v7 = *(this + 58);
    if (v7)
    {
      *(this + 59) = v7;
      operator delete(v7);
    }
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t ZinIrKernel::GetPaletteData(ZinIrKernel *this, unint64_t a2)
{
  v2 = *(this + 86);
  if (!v2 || (*(this + 44) - 7) >= 0x15)
  {
    ZinAssertImpl("Error: This weight does not have palette info.", a2);
  }

  result = *v2;
  v4 = v2[1];
  if (result == v4)
  {
    ZinAssertImpl("Error: Palette data is empty.", a2);
  }

  v5 = v4 - result;
  if (v5 >= 0x11)
  {
    if (a2 >= v5 >> 4)
    {
      ZinAssertImpl("GetPaletteData: out of bound access.");
    }

    result += 16 * a2;
  }

  return result;
}

void ZinIrKernel::Partial(void *a1, uint64_t *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  memcpy(__dst, a1 + 22, 0x11CuLL);
  std::__optional_copy_base<ZinIrShardingMap,false>::__optional_copy_base[abi:ne200100](&v29, (a1 + 58));
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v8 = a1[84];
  if (v8)
  {
    v9 = a2[1];
    data = *a2;
    v32 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(&__p, 0, sizeof(__p));
    std::vector<std::shared_ptr<ZinIrWeightTransform>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinIrWeightTransform> const*,std::shared_ptr<ZinIrWeightTransform> const*>(&__p, &data, &v33, 1uLL);
    ZinIrWeight::Transform(v8, &__p, &v27);
    p_p = &__p;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&p_p);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    v10 = *(v27 + 56);
    __dst[4] = *(v27 + 16);
    __dst[9] = v10;
  }

  v11 = a1[83];
  if (v11)
  {
    v12 = a2[1];
    if (*a2)
    {
      v13 = *a2 + 8;
    }

    else
    {
      v13 = 0;
    }

    data = v13;
    v32 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(&__p, 0, sizeof(__p));
    std::vector<std::shared_ptr<ZinIrVectorTransform>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinIrVectorTransform> const*,std::shared_ptr<ZinIrVectorTransform> const*>(&__p, &data, &v33, 1uLL);
    ZinIrVector::Transform(v11, &__p, &v26);
    p_p = &__p;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&p_p);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    v14 = *(v26 + 56);
    __dst[4] = *(v26 + 16);
    __dst[9] = v14;
  }

  v15 = a1[82];
  if (v15)
  {
    v16 = a2[1];
    if (*a2)
    {
      v17 = *a2 + 8;
    }

    else
    {
      v17 = 0;
    }

    data = v17;
    v32 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(&__p, 0, sizeof(__p));
    std::vector<std::shared_ptr<ZinIrVectorTransform>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinIrVectorTransform> const*,std::shared_ptr<ZinIrVectorTransform> const*>(&__p, &data, &v33, 1uLL);
    ZinIrVector::Transform(v15, &__p, &v25);
    p_p = &__p;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&p_p);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    v18 = *(v25 + 56);
    __dst[4] = *(v25 + 16);
    __dst[9] = v18;
  }

  v19 = a1[85];
  if (v19)
  {
    if (a1[84] || a1[88])
    {
      if (!ZinKernelFormatIsQuantizationCompatible(*(a1 + 44)))
      {
        ZinAssertImpl("kernel zero point is only supported for int8/uint8 kernels");
      }

      v19 = a1[85];
    }

    v20 = a2[1];
    if (*a2)
    {
      v21 = *a2 + 8;
    }

    else
    {
      v21 = 0;
    }

    data = v21;
    v32 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(&__p, 0, sizeof(__p));
    std::vector<std::shared_ptr<ZinIrVectorTransform>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinIrVectorTransform> const*,std::shared_ptr<ZinIrVectorTransform> const*>(&__p, &data, &v33, 1uLL);
    ZinIrVector::Transform(v19, &__p, &v24);
    p_p = &__p;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&p_p);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    v22 = *(v24 + 56);
    __dst[4] = *(v24 + 16);
    __dst[9] = v22;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  operator new();
}

void sub_1A6A212C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a16, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a17, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a18, 0);
  v21 = a19;
  a19 = 0;
  if (v21)
  {
    (*(*v21 + 16))(v21);
  }

  ZinKernelDescriptor::~ZinKernelDescriptor(&a20);
  _Unwind_Resume(a1);
}

uint64_t *ZinIrKernel::FoldWeightsWithScale@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, ZinIrKernel *a3@<X1>)
{
  v35[4] = *MEMORY[0x1E69E9840];
  if (!this[83])
  {
    v3 = this;
    if (!this[82] && !this[85])
    {
      v5 = this[84];
      v6 = *(v5 + 72);
      v28 = *(v5 + 56);
      v29 = v6;
      v30 = *(v5 + 88);
      v7 = (a3 + 656);
      v35[3] = 0;
      if (*(a3 + 82))
      {
        __p[0] = &unk_1F19F4B88;
        __p[1] = a3 + 656;
      }

      else
      {
        __p[0] = &unk_1F19F4B08;
      }

      *(&v32 + 1) = __p;
      std::__function::__value_func<float ()(unsigned long)>::swap[abi:ne200100](__p, v35);
      std::__function::__value_func<float ()(unsigned long)>::~__value_func[abi:ne200100](__p);
      v8 = (a3 + 664);
      v34[3] = 0;
      if (*(a3 + 83))
      {
        __p[0] = &unk_1F19F4C88;
        __p[1] = a3 + 664;
      }

      else
      {
        __p[0] = &unk_1F19F4C08;
      }

      *(&v32 + 1) = __p;
      std::__function::__value_func<float ()(unsigned long)>::swap[abi:ne200100](__p, v34);
      std::__function::__value_func<float ()(unsigned long)>::~__value_func[abi:ne200100](__p);
      if (CanBundleConstData(v3[83], *v8) && CanBundleConstData(v3[82], *v7))
      {
        v27[4] = 0;
        if (*v8)
        {
          std::vector<float>::vector[abi:ne200100](__p, v28);
          if (v28)
          {
            v9 = 0;
            do
            {
              std::function<float ()(unsigned long)>::operator()(v34, v9);
              v11 = v10;
              std::function<float ()(unsigned long)>::operator()(v35, v9);
              *(__p[0] + v9++) = v11 * v12;
            }

            while (v9 < v28);
          }

          std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<float>,std::allocator<ZinIrConstData_specialization<float>>,std::vector<float>,0>();
        }

        details::ZinIrMappedData_Impl<float>::ZinIrMappedData_Impl(v27, *(&v28 + 1) * v28 * v29 * *(&v29 + 1) * v30);
        v13 = (*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_);
        v33 = 0;
        *__p = 0u;
        v32 = 0u;
        v14 = v28;
        if (v28 >= 1)
        {
          v15 = 0;
          if (v13)
          {
            v16 = v27[1];
          }

          else
          {
            v16 = v27;
          }

          v17 = *(&v28 + 1);
          do
          {
            __p[1] = 0;
            if (v17 >= 1)
            {
              v18 = 0;
              v19 = v29;
              do
              {
                *&v32 = 0;
                if (v19 >= 1)
                {
                  v20 = 0;
                  v21 = *(&v29 + 1);
                  do
                  {
                    *(&v32 + 1) = 0;
                    if (v21 >= 1)
                    {
                      v22 = 0;
                      v23 = v30;
                      do
                      {
                        v33 = 0;
                        if (v23 >= 1)
                        {
                          do
                          {
                            ZinIrWeightBase::GetAt<float>(v3[84]);
                            v25 = v24;
                            std::function<float ()(unsigned long)>::operator()(v35, __p[0]);
                            *v16++ = v25 * v26;
                            ++v33;
                            v23 = v30;
                          }

                          while (v33 < v30);
                          v22 = *(&v32 + 1);
                          v21 = *(&v29 + 1);
                        }

                        *(&v32 + 1) = ++v22;
                      }

                      while (v22 < v21);
                      v20 = v32;
                      v19 = v29;
                    }

                    *&v32 = ++v20;
                  }

                  while (v20 < v19);
                  v18 = __p[1];
                  v17 = *(&v28 + 1);
                }

                __p[1] = ++v18;
              }

              while (v18 < v17);
              v15 = __p[0];
              v14 = v28;
            }

            __p[0] = ++v15;
          }

          while (v15 < v14);
        }

        std::allocate_shared[abi:ne200100]<ZinIrScratchBufferBackedConstData_specialization<float>,std::allocator<ZinIrScratchBufferBackedConstData_specialization<float>>,ZinIrScratchBuffer<float>,0>();
      }

      ZinAssertImpl("Invalid Kernel construction due to incompatible weight attributes\n");
    }
  }

  *a1 = 3;
  a1[1] = 0;
  a1[2] = 0;
  return this;
}

void sub_1A6A21AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, ZinIrKernel *a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<ZinIrKernel>::reset[abi:ne200100](&a19, 0);
  ZinKernelDescriptor::~ZinKernelDescriptor(&a36);
  v41 = a21;
  a21 = 0;
  if (v41)
  {
    (*(*v41 + 16))(v41);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  details::ZinIrMappedData_Impl<float>::~ZinIrMappedData_Impl(&a25, v39, v40);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a29, 0);
  std::__function::__value_func<float ()(unsigned long)>::~__value_func[abi:ne200100](v37 - 168);
  std::__function::__value_func<float ()(unsigned long)>::~__value_func[abi:ne200100](v37 - 136);
  _Unwind_Resume(a1);
}

void sub_1A6A21CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](va, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](va1, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](va2, 0);
  MEMORY[0x1AC55A070](v4, v3);
  _Unwind_Resume(a1);
}

void sub_1A6A21E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a10, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a11, 0);
  if (a12)
  {
    ZinBuilder::CreateDeQuant<signed char>();
  }

  MEMORY[0x1AC55A070](v13, v12);
  _Unwind_Resume(a1);
}

void ZinIrKernel::FoldKernelQuantDataIntoWeight(uint64_t *__return_ptr a1@<X8>, ZinIrWeight **this@<X0>)
{
  if ((this[57] & 2) != 0)
  {
    v21 = 0;
    ZinFoldKernelQuantInfoIntoWeight(this + 84, this[85], this[82], &v21, &v20);
    if (v20)
    {
      if (!ZinIrKernel::IsRunTimeMutable(this))
      {
        v4 = v21;
        if (*(this + 23) >= 0)
        {
          v5 = *(this + 23);
        }

        else
        {
          v5 = this[1];
        }

        if (v21)
        {
          v6 = "_zero_point_and_scale_folded";
        }

        else
        {
          v6 = "_zero_point_folded";
        }

        if (v21)
        {
          v7 = 28;
        }

        else
        {
          v7 = 18;
        }

        v8 = &v18;
        std::string::basic_string[abi:ne200100](&v18, v5 + v7);
        if (v19 < 0)
        {
          v8 = v18;
        }

        if (v5)
        {
          if (*(this + 23) >= 0)
          {
            v9 = this;
          }

          else
          {
            v9 = *this;
          }

          memmove(v8, v9, v5);
        }

        v10 = v8 + v5;
        memcpy(v10, v6, v7);
        v11 = 18;
        if (v4)
        {
          v11 = 28;
        }

        v10[v11] = 0;
        v12 = *(this + 456);
        if (v12 & 8) == 0 || (v21)
        {
          v17 = 0;
          if ((v12 & 0x10) == 0)
          {
            v16[10] = 0;
            memcpy(v15, this + 22, sizeof(v15));
            std::__optional_copy_base<ZinIrShardingMap,false>::__optional_copy_base[abi:ne200100](v16, (this + 58));
            v13 = *(v20 + 2);
            v14 = v15[70];
            LOBYTE(v15[70]) &= ~2u;
            v15[0] = v13;
            v15[5] = 0;
            LOWORD(v15[6]) = 0;
            if (!v17)
            {
              LOBYTE(v15[70]) = v14 & 0xF5;
              v15[1] = 0;
              LOWORD(v15[2]) = 0;
            }

            operator new();
          }

          std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
        }

        std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
      }

      ZinAssertImpl("FoldKernelQuantDataIntoWeight can't be applied on Mutable kernels\n");
    }
  }

  *a1 = 0;
}

void sub_1A6A2210C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  v3 = *(v1 - 88);
  *(v1 - 88) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrKernel::RemapWeightForUnflatten()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  std::allocate_shared[abi:ne200100]<ZinIrTransformRemap,std::allocator<ZinIrTransformRemap>,ZinTensorDimensions const&,0>();
}

void sub_1A6A22678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18)
{
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a10, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a11, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a12, 0);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v19 = a18;
  a18 = 0;
  if (v19)
  {
    (*(*v19 + 16))(v19);
  }

  _Unwind_Resume(a1);
}

void ZinIrKernel::ShuffleChannels(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v9[13] = *MEMORY[0x1E69E9840];
  memcpy(__dst, (a1 + 176), 0x11CuLL);
  std::__optional_copy_base<ZinIrShardingMap,false>::__optional_copy_base[abi:ne200100](v9, a1 + 464);
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(__p, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  *&v6 = *(a1 + 680);
  std::allocate_shared[abi:ne200100]<ZinIrTransformShuffle,std::allocator<ZinIrTransformShuffle>,std::vector<unsigned long>,ZinIrVector *,0>();
}

void sub_1A6A22DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a14, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a15, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a16, 0);
  v23 = a17;
  a17 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  ZinKernelDescriptor::~ZinKernelDescriptor(va);
  _Unwind_Resume(a1);
}

void ZinIrKernel::DuplicateChannels(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  data = a3;
  std::allocate_shared[abi:ne200100]<ZinIrTransformDuplicate,std::allocator<ZinIrTransformDuplicate>,unsigned long &,0>();
}

void sub_1A6A2331C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  MEMORY[0x1AC55A070](v15, 0x10B3C40C4A76B87, a3, a4, a5, a6, a7, a8);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a9, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a13, 0);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void ZinIrKernel::ShuffleKernel(uint64_t *__return_ptr a1@<X8>, uint64_t a2@<X0>, uint64_t a10, uint64_t a11, uint64_t a12, ZinKernelSparsityCache *a13, __int128 *a14, char a15, int a16)
{
  if (*(a2 + 672))
  {
    std::allocate_shared[abi:ne200100]<ZinIrTransformWeightShuffle,std::allocator<ZinIrTransformWeightShuffle>,ZinKernelDimensions const&,ZinIrScratchBuffer<ZinKernelPosition> &,ZinIrVector *,0>();
  }

  *a1 = 0;
}

void sub_1A6A23C50(_Unwind_Exception *a1)
{
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100]((v1 - 256), 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100]((v1 - 248), 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100]((v1 - 240), 0);
  v3 = *(v1 - 224);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 - 216);
  if (v4)
  {
    *(v1 - 208) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 192);
  if (v5)
  {
    *(v1 - 184) = v5;
    operator delete(v5);
  }

  v6 = *(v1 - 168);
  *(v1 - 168) = 0;
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  v7 = *(v1 - 152);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

void ZinIrKernel::Create4bitPalKernelFrom3bitPalKernel(uint64_t *__return_ptr a1@<X8>, ZinIrKernel *this@<X0>, const ZinIrHalParameters *a3@<X1>)
{
  v5 = *(this + 84);
  if (!v5)
  {
    *a1 = 0;
    return;
  }

  v8 = *(v5 + 8);
  if (*(this + 23) >= 0)
  {
    v9 = *(this + 23);
  }

  else
  {
    v9 = *(this + 1);
  }

  v10 = &v36;
  std::string::basic_string[abi:ne200100](&v36, v9 + 12);
  if (v37 < 0)
  {
    v10 = v36;
  }

  if (v9)
  {
    if (*(this + 23) >= 0)
    {
      v11 = this;
    }

    else
    {
      v11 = *this;
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, "_4b_upcasted");
  if (NeedsUpcastingFrom3bitPaletteTo4bitPalette(a3, v8))
  {
    if (ZinIrKernel::IsRunTimeMutable(this))
    {
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v12)
      {
        ZinIrKernel::Create4bitPalKernelFrom3bitPalKernel(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    else if (!(*(**(this + 84) + 72))(*(this + 84)))
    {
      Upcasted4bitPaletteFormatFrom3bitPaletteFormat = GetUpcasted4bitPaletteFormatFrom3bitPaletteFormat(v8);
      v21 = *(this + 82);
      if (v21)
      {
        ZinIrVector::Clone(&v35, v21);
      }

      else
      {
        v35 = 0;
      }

      v22 = *(this + 83);
      if (v22)
      {
        ZinIrVector::Clone(&v34, v22);
      }

      else
      {
        v34 = 0;
      }

      v23 = *(this + 85);
      if (v23)
      {
        ZinIrVector::Clone(&v33, v23);
      }

      else
      {
        v33 = 0;
      }

      memcpy(__dst, this + 176, sizeof(__dst));
      std::__optional_copy_base<ZinIrShardingMap,false>::__optional_copy_base[abi:ne200100](v27, this + 464);
      __dst[0] = Upcasted4bitPaletteFormatFrom3bitPaletteFormat;
      v25 = 0;
      ZinIrWeight::Create4bitPalWeightFrom3bitPalWeight(*(this + 84), &v24);
      v25 = v24;
      if (v24)
      {
        operator new();
      }

      *a1 = 0;
      if (v32 == 1)
      {
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
      }

      std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&v33, 0);
      std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&v34, 0);
      std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&v35, 0);
      goto LABEL_19;
    }
  }

  *a1 = 0;
LABEL_19:
  if (v37 < 0)
  {
    operator delete(v36);
  }
}

void sub_1A6A24168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x1AC55A070](v5, 0x1032C40733E5C38, a3);
  if (a5)
  {
    (*(*a5 + 16))(a5);
  }

  ZinKernelDescriptor::~ZinKernelDescriptor(va);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100]((v6 - 112), 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100]((v6 - 104), 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100]((v6 - 96), 0);
  if (*(v6 - 65) < 0)
  {
    operator delete(*(v6 - 88));
  }

  _Unwind_Resume(a1);
}

void *ZinIrKernel::DilateKernel@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12[1] = a5;
  v12[2] = a4;
  result = *(a1 + 672);
  if (result)
  {
    result = (*(*result + 64))(v12);
    if (v12[0])
    {
      v9 = *(a1 + 456);
      if ((v9 & 8) == 0)
      {
        v11 = 0;
        if ((v9 & 2) == 0)
        {
          v10 = 0;
          operator new();
        }

        std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
      }

      std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
    }
  }

  *a6 = 0;
  return result;
}

void sub_1A6A243E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a11, 0);
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    (*(*v13 + 16))(v13);
  }

  _Unwind_Resume(a1);
}

void ZinIrKernel::MergeResizeNNIntoConvKernel(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  if ((*(a1 + 456) & 0x10) != 0)
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      ZinIrKernel::MergeResizeNNIntoConvKernel(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  else
  {
    if ((*(a1 + 456) & 0xA) == 0)
    {
      if (!ZinIrKernel::IsRunTimeMutable(a1))
      {
        ZinIrWeight::MergeResizeNNConvWeight(*(a1 + 672), (a2 + 36));
      }

      ZinAssertImpl("MergeResizeNNConvWeight can't be applied on mutable kernels\n");
    }

    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      ZinIrKernel::MergeResizeNNIntoConvKernel(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *a5 = 0;
}

void sub_1A6A24678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](va, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](va1, 0);
  MEMORY[0x1AC55A070](v5, 0x1032C40733E5C38);
  if (a5)
  {
    (*(*a5 + 16))(a5);
  }

  _Unwind_Resume(a1);
}

void ZinIrKernel::DeInterleaveDeconvKernelHeight(uint64_t *__return_ptr a1@<X8>, uint64_t a2@<X0>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v12[1] = a5;
  v7 = *(a2 + 672);
  if (v7)
  {
    ZinIrWeight::HeightSplitDeconv(v7, a5, *(a4 + 88), v12);
    if (v12[0])
    {
      v8 = *(a2 + 456);
      if ((v8 & 8) == 0)
      {
        v11 = 0;
        if ((v8 & 0x10) == 0)
        {
          v10 = 0;
          if ((v8 & 2) == 0)
          {
            v9 = 0;
            operator new();
          }

          std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
        }

        std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
      }

      std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
    }
  }

  *a1 = 0;
}

void sub_1A6A2490C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a11, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a12, 0);
  v14 = a13;
  a13 = 0;
  if (v14)
  {
    (*(*v14 + 16))(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrKernel::SetActivationParams(ZinIrKernel *this, const ZinIrActivationParams *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  *(this + 46) = *(a2 + 1);
  *(this + 47) = v4;
  *(this + 45) = v3;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  v7 = *(a2 + 6);
  *(this + 50) = *(a2 + 5);
  *(this + 51) = v7;
  *(this + 48) = v5;
  *(this + 49) = v6;
  v8 = *(a2 + 7);
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  *(this + 110) = *(a2 + 20);
  *(this + 53) = v9;
  *(this + 54) = v10;
  *(this + 52) = v8;
  v11 = *(this + 456) & 0xFE;
  if (*a2 > 1u)
  {
    ++v11;
  }

  *(this + 456) = v11;
  CC_SHA256_Update((this + 52), "lut", 3u);

  return CC_SHA256_Update((this + 52), this + 720, 0xA8u);
}

uint64_t ZinIrKernel::SetMustCompressWeight(uint64_t a1, unsigned int a2, float a3)
{
  if (*(a1 + 160) != 1 || ((result = IsFormatDMAConvertibleToFP16(a2), !result) ? (v7 = a2) : (v7 = 3), v7 != *(a1 + 168)))
  {
    *(a1 + 160) = 1;
    *(a1 + 164) = a3;
    if (IsFormatDMAConvertibleToFP16(a2))
    {
      v8 = 3;
    }

    else
    {
      v8 = a2;
    }

    *(a1 + 168) = v8;
    data = *(a1 + 160);
    CC_SHA256_Update((a1 + 52), &data, 1u);
    return CC_SHA256_Update((a1 + 52), (a1 + 168), 4u);
  }

  return result;
}

void ZinIrKernel::CopyWithPaddingChanged(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = *(a1 + 624);
  v13 = *(a1 + 608);
  v14 = v4;
  v5 = *(a1 + 640);
  v6 = *(a1 + 560);
  v9 = *(a1 + 544);
  v10 = v6;
  v7 = *a3;
  v11 = *(a1 + 576);
  v12 = v7;
  v8 = *(a3 + 2);
  v15 = v5;
  *&v13 = v8;
  operator new();
}

void ZinIrKernel::CopyWithGroupCountChanged(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a1 + 624);
  v12 = *(a1 + 608);
  v13 = v4;
  v5 = *(a1 + 640);
  v6 = *(a1 + 560);
  v8 = *(a1 + 544);
  v9 = v6;
  v7 = *(a1 + 592);
  v10 = *(a1 + 576);
  v11 = v7;
  *(&v13 + 1) = a3;
  v14 = v5;
  operator new();
}

void ZinIrKernel::CreateOneHotKernel(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, ZinIrKernel **a6@<X8>)
{
  v12 = *(a3 + 1) * *a3 * *(a3 + 2) * *(a3 + 3) * *(a3 + 4);
  LODWORD(__p) = 0;
  std::vector<float>::vector[abi:ne200100](&v20, v12, &__p);
  v20.__begin_[(a4[3] + (a4[2] + (a4[1] + *(a3 + 1) * *a4) * *(a3 + 2)) * *(a3 + 3)) * *(a3 + 4) + a4[4]] = 1065353216;
  *a6 = 0;
  if (ZinIrHalParameters::IsSupportedPaletteFormat(a5, 8))
  {
    if (*(a2 + 97))
    {
      v13 = 1145261902;
    }

    else
    {
      v13 = 1262703187;
    }

    ZinIrWeight::CreatePalettizedWeight(2, &v20, 2uLL, a3, a5, v13, &v19);
    if (!v19)
    {
      v14 = *(a3 + 1) * *a3 * *(a3 + 2) * *(a3 + 3) * *(a3 + 4);
      v17[0] = 0;
      std::vector<unsigned char>::vector[abi:ne200100](&__p, v14, v17);
      *(__p + (a4[3] + (a4[2] + (a4[1] + *(a3 + 1) * *a4) * *(a3 + 2)) * *(a3 + 3)) * *(a3 + 4) + a4[4]) = 1;
      std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<unsigned char>,std::allocator<ZinIrConstData_specialization<unsigned char>>,std::vector<unsigned char>,0>();
    }

    operator new();
  }

  ZinIrKernel::CreateDynamicKernel(a1, a2, &v20, 4u, a3, 2uLL, a5, 0, &__p);
  v15 = __p;
  __p = 0;
  std::unique_ptr<ZinIrKernel>::reset[abi:ne200100](a6, v15);
  v16 = __p;
  __p = 0;
  if (v16)
  {
    ZinIrKernel::~ZinIrKernel(v16);
    MEMORY[0x1AC55A070]();
  }

  if (v20.__begin_)
  {
    v20.__end_ = v20.__begin_;
    operator delete(v20.__begin_);
  }
}

void sub_1A6A250A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, std::__shared_weak_count *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    (*(*a19 + 16))(a19, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<ZinIrKernel>::reset[abi:ne200100](v19, 0);
  v22 = *(v20 - 72);
  if (v22)
  {
    *(v20 - 64) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1A6A25234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x1AC55A070](v13, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void ZinIrKernel::CreateDynamicKernel(uint64_t a1@<X0>, uint64_t a2@<X1>, std::vector<unsigned int> *a3@<X2>, unsigned int a4@<W3>, __int128 *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v20 = 0u;
  v21 = 0u;
  v26 = vdupq_n_s64(1uLL);
  v27 = v26;
  v9 = a5[1];
  v23 = *a5;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v22 = 0;
  v15 = 0;
  v40 = 0;
  v41 = 1;
  v42 = 0;
  LOBYTE(v47) = 0;
  v53 = 0;
  v43 = 0;
  v44 = 0;
  v46 = 0;
  v45 = 0;
  v14 = a4;
  v24 = v9;
  v25 = *(a5 + 4);
  v10 = *(a2 + 24);
  v28 = 1;
  v29 = v10;
  v30 = *(a2 + 32);
  v31 = *(a2 + 36);
  v32 = *(a2 + 44);
  v11 = *(a2 + 72);
  v34 = *(a2 + 64);
  v33 = *(a2 + 48);
  v12 = *(a2 + 84);
  v38 = *(a2 + 80);
  v37 = v11;
  v39 = *(a2 + 88);
  LOBYTE(v46) = (*(a2 + 96) << 7) | (*(a2 + 97) << 6);
  v13 = *(a2 + 100);
  v35 = v12;
  v36 = v13;
  ZinIrKernel::CreateDynamicKernel(a1, &v14, a3, a6, a7, a8, a9);
  if (v53 == 1)
  {
    if (__p)
    {
      v52 = __p;
      operator delete(__p);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }
  }
}

void ZinIrKernel::CreateDynamicKernel(uint64_t a1@<X0>, const void *a2@<X1>, std::vector<unsigned int> *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  memcpy(__dst, a2, 0x11CuLL);
  std::__optional_copy_base<ZinIrShardingMap,false>::__optional_copy_base[abi:ne200100](v55, a2 + 288);
  if (__dst[10] * __dst[9] * __dst[11] * __dst[12] * __dst[13] == a3->__end_ - a3->__begin_)
  {
    v13 = __dst[0];
    if (LODWORD(__dst[0]) <= 5 && ((1 << SLOBYTE(__dst[0])) & 0x36) != 0)
    {
      begin = 0;
      if (a6)
      {
        if ((__dst[35] & 0x40) != 0)
        {
          v14 = 1145261902;
        }

        else
        {
          v14 = 1262703187;
        }

        ZinIrWeight::CreatePalettizedWeight(LODWORD(__dst[0]), a3, a4, &__dst[9], a5, v14, &v51);
        begin = v51.__begin_;
        if (v51.__begin_)
        {
          LODWORD(__dst[0]) = *(v51.__begin_ + 2);
          std::make_unique[abi:ne200100]<ZinIrKernel,std::string,ZinKernelDescriptor &,std::unique_ptr<ZinIrWeight>,0>();
        }

        v13 = __dst[0];
      }

      v52 = 0uLL;
      if (v13 != 2)
      {
        if (v13 != 5)
        {
          if (v13 == 4)
          {
            memset(&v51, 0, sizeof(v51));
            std::vector<half>::resize(&v51, a3->__end_ - a3->__begin_);
            v31 = a3->__begin_;
            end = a3->__end_;
            if (a3->__begin_ != end)
            {
              v33 = v51.__begin_;
              do
              {
                v34 = *v31++;
                _S0 = v34;
                __asm { FCVT            H0, S0 }

                *v33 = _S0;
                v33 += 2;
              }

              while (v31 != end);
            }

            std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<half>,std::allocator<ZinIrConstData_specialization<half>>,std::vector<half>,0>();
          }

          memset(&v51, 0, sizeof(v51));
          v47 = a3->__begin_;
          v48 = a3->__end_;
          v49 = v48 - a3->__begin_;
          if (v48 != a3->__begin_)
          {
            std::vector<char>::__append(&v51, v49 >> 2);
            v47 = a3->__begin_;
            v48 = a3->__end_;
            v49 = v51.__begin_;
          }

          while (v47 != v48)
          {
            v50 = *v47++;
            *v49++ = v50;
          }

          std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<signed char>,std::allocator<ZinIrConstData_specialization<signed char>>,std::vector<signed char>,0>();
        }

        memset(&v51, 0, sizeof(v51));
        v40 = a3->__begin_;
        v41 = a3->__end_;
        if (v41 == a3->__begin_)
        {
          v42 = 0;
        }

        else
        {
          std::vector<char>::__append(&v51, v41 - a3->__begin_);
          v40 = a3->__begin_;
          v41 = a3->__end_;
          v42 = v51.__begin_;
        }

        while (v40 != v41)
        {
          *v42++ = ZinF32ToE4M3(*v40++, 1, 0);
        }

        std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<e4m3_t>,std::allocator<ZinIrConstData_specialization<e4m3_t>>,std::vector<e4m3_t>,0>();
      }

      memset(&v51, 0, sizeof(v51));
      v43 = a3->__begin_;
      v44 = a3->__end_;
      v45 = v44 - a3->__begin_;
      if (v44 != a3->__begin_)
      {
        std::vector<char>::__append(&v51, v45 >> 2);
        v43 = a3->__begin_;
        v44 = a3->__end_;
        v45 = v51.__begin_;
      }

      while (v43 != v44)
      {
        v46 = *v43++;
        *v45++ = v46;
      }

      std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<unsigned char>,std::allocator<ZinIrConstData_specialization<unsigned char>>,std::vector<unsigned char>,0>();
    }

    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v23)
    {
      ZinIrKernel::CreateDynamicKernel(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  else
  {
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      ZinIrKernel::CreateDynamicKernel(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  *a7 = 0;
  if (v60 == 1)
  {
    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    if (v55[0])
    {
      v55[1] = v55[0];
      operator delete(v55[0]);
    }
  }
}

void sub_1A6A2576C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (__p)
  {
    operator delete(__p);
  }

  ZinKernelDescriptor::~ZinKernelDescriptor(va);
  _Unwind_Resume(a1);
}

void sub_1A6A2589C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x1AC55A070](v13, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_1A6A25980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](va, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](va1, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](va2, 0);
  MEMORY[0x1AC55A070](v4, v3);
  _Unwind_Resume(a1);
}

void ZinIrKernel::FuseBiasWithBottom(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 456) & 0x10) != 0)
  {
    v5 = *(a1 + 664);
    if ((*(*a2 + 456) & 0x18) == 0)
    {
LABEL_10:

      std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
    }

    if (!CanBundleConstData(v5, *(*a2 + 664)) || !CanBundleConstData(*(a1 + 656), *(*a2 + 656)))
    {
      ZinAssertImpl("Invalid Kernel construction at FuseBiasWithBottom\n");
    }

    *a3 = 0;
    v7 = *(a1 + 664);
    if (v7 && *(v7 + 152) == 2)
    {
      v8 = *a2;
      v9 = *(*a2 + 656);
      goto LABEL_25;
    }

    v8 = *a2;
    v9 = *(*a2 + 656);
    if (v9 && *(v9 + 152) == 2)
    {
      v10 = *(v8 + 664);
      if (!v10)
      {
        v12 = 0uLL;
        v11 = 0uLL;
        if (v7)
        {
          std::allocate_shared[abi:ne200100]<ZinIrVector,std::allocator<ZinIrVector>,ZinIrVector&,0>();
        }

        std::allocate_shared[abi:ne200100]<ZinIrVectorFoldBotScaleWithBotBiasBias,std::allocator<ZinIrVectorFoldBotScaleWithBotBiasBias>,std::shared_ptr<ZinIrVector> &,std::shared_ptr<ZinIrVector> &,0>();
      }
    }

    else
    {
      v10 = *(v8 + 664);
      if (!v10 || *(v10 + 152) != 2)
      {
LABEL_25:
        v12 = 0uLL;
        v11 = 0uLL;
        if (v9)
        {
          std::allocate_shared[abi:ne200100]<ZinIrVector,std::allocator<ZinIrVector>,ZinIrVector&,0>();
        }

        if (*(v8 + 664))
        {
          std::allocate_shared[abi:ne200100]<ZinIrVector,std::allocator<ZinIrVector>,ZinIrVector&,0>();
        }

        std::allocate_shared[abi:ne200100]<ZinIrVectorFoldBiasWithBotScaleBotBias,std::allocator<ZinIrVectorFoldBiasWithBotScaleBotBias>,std::shared_ptr<ZinIrVector> &,std::shared_ptr<ZinIrVector> &,0>();
      }
    }

    if (*(v10 + 152) == 2)
    {
      v12 = 0uLL;
      v11 = 0uLL;
      if (v9)
      {
        std::allocate_shared[abi:ne200100]<ZinIrVector,std::allocator<ZinIrVector>,ZinIrVector&,0>();
      }

      if (v7)
      {
        std::allocate_shared[abi:ne200100]<ZinIrVector,std::allocator<ZinIrVector>,ZinIrVector&,0>();
      }

      std::allocate_shared[abi:ne200100]<ZinIrVectorFoldBotBiasWithBotScaleBias,std::allocator<ZinIrVectorFoldBotBiasWithBotScaleBias>,std::shared_ptr<ZinIrVector> &,std::shared_ptr<ZinIrVector> &,0>();
    }

    v12 = 0uLL;
    v11 = 0uLL;
    std::allocate_shared[abi:ne200100]<ZinIrVector,std::allocator<ZinIrVector>,ZinIrVector&,0>();
  }

  if ((*(*a2 + 456) & 0x10) != 0)
  {
    goto LABEL_10;
  }

  *a3 = 0;
}

void sub_1A6A25D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v18, 0);
  _Unwind_Resume(a1);
}

uint64_t ZinIrKernel::HasKernelConstData(ZinIrKernel *this)
{
  result = *(this + 111);
  if (result)
  {
    if (!*(this + 88))
    {
      return 1;
    }

    result = ZinMirAneKernel::HasAlignedKDMAData(result);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void ZinIrKernel::FuseScaleWithBottom(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 456) & 8) != 0)
  {
    if ((*(*a2 + 456) & 8) != 0)
    {
      if (CanBundleConstData(*(a1 + 664), *(*a2 + 664)) && CanBundleConstData(*(a1 + 656), *(*a2 + 656)))
      {
        *a3 = 0;
        v6 = *(*a2 + 656);
        if ((!v6 || *(v6 + 152) != 2) && *(*(a1 + 656) + 152) == 2)
        {
          std::allocate_shared[abi:ne200100]<ZinIrVector,std::allocator<ZinIrVector>,ZinIrVector&,0>();
        }

        std::allocate_shared[abi:ne200100]<ZinIrVector,std::allocator<ZinIrVector>,ZinIrVector&,0>();
      }

      ZinAssertImpl("Invalid Kernel construction at FuseScaleWithBottom\n");
    }

LABEL_5:

    std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
  }

  if ((*(*a2 + 456) & 8) != 0)
  {
    goto LABEL_5;
  }

  *a3 = 0;
}

void sub_1A6A260B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, ...)
{
  va_start(va, a16);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](va);
  v19 = *(v17 - 48);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](v16, 0);
  _Unwind_Resume(a1);
}

void ZinIrKernel::FuseScaleBiasWithBottom(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v17[1] = 0;
  v5 = *(a1 + 456);
  if ((v5 & 2) == 0)
  {
    if (*a3)
    {
      if (!CanBundleConstData(*(a1 + 664), *(*a3 + 664)) || !CanBundleConstData(*(a1 + 656), *(*a3 + 656)))
      {
        ZinAssertImpl("Invalid Kernel construction at FuseScaleBiasWithBottom \n");
      }

      if (*a3)
      {
        ZinIrKernel::FuseBiasWithBottom(a1, a3, v17);
        ZinIrKernel::FuseScaleWithBottom(a1, a3, &v16);
        operator new();
      }

      v5 = *(a1 + 456);
    }

    if ((v5 & 8) == 0)
    {
      v17[0] = 0;
      if ((v5 & 0x10) == 0)
      {
        v16 = 0;
        operator new();
      }

      std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
    }

    std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
  }

  v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v8)
  {
    ZinIrKernel::FuseScaleBiasWithBottom(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  *a4 = 0;
}

void sub_1A6A26488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](va, 0);
  std::unique_ptr<ZinIrKernel>::reset[abi:ne200100](va1, 0);
  _Unwind_Resume(a1);
}

void ZinIrKernel::TransformPerCoutGOCKernelToSingularGOCKernel(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  memcpy(__dst, a1 + 22, sizeof(__dst));
  std::__optional_copy_base<ZinIrShardingMap,false>::__optional_copy_base[abi:ne200100](v16, (a1 + 58));
  if (*(a1 + 41) != 0)
  {
    if (!CanBundleConstData(a1[83], a1[83]) || !CanBundleConstData(a1[82], a1[82]))
    {
      ZinAssertImpl("Invalid Kernel construction at TransformPerCoutGOCKernelToSingularGOCKernel \n");
    }

    if (ZinIrKernel::IsRunTimeMutable(a1))
    {
      ZinAssertImpl("TransformPerCoutGOCKernelToSingularGOCKernel can't be applied on mutable kernels\n");
    }

    v8 = a1[82];
    if (v8)
    {
      IsQualifiedToConvertPerCoutVectorToSingularVector = ZinIrVector::IsQualifiedToConvertPerCoutVectorToSingularVector(v8, a2[778], a2[779]);
    }

    else
    {
      IsQualifiedToConvertPerCoutVectorToSingularVector = 0;
    }

    v10 = a1[83];
    if (v10)
    {
      v11 = ZinIrVector::IsQualifiedToConvertPerCoutVectorToSingularVector(v10, a2[776], a2[777]);
    }

    else
    {
      v11 = 0;
    }

    if (IsQualifiedToConvertPerCoutVectorToSingularVector || v11)
    {
      v13 = 0;
      v14 = 0;
      if (IsQualifiedToConvertPerCoutVectorToSingularVector)
      {
        __dst[9] = 0;
        std::allocate_shared[abi:ne200100]<ZinIrVectorConvertPerCoutVectorToSingularVector,std::allocator<ZinIrVectorConvertPerCoutVectorToSingularVector>,signed char const&,signed char const&,0>();
      }

      if (a1[82])
      {
        std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
      }

      if (v11)
      {
        __dst[17] = 0;
        std::allocate_shared[abi:ne200100]<ZinIrVectorConvertPerCoutVectorToSingularVector,std::allocator<ZinIrVectorConvertPerCoutVectorToSingularVector>,signed char const&,signed char const&,0>();
      }

      if (a1[83])
      {
        std::make_unique[abi:ne200100]<ZinIrVector,ZinIrVector&,0>();
      }

      v22 = 0;
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
      }

      else
      {
        __p = *a3;
      }

      operator new();
    }
  }

  *a4 = 0;
  if (v21 == 1)
  {
    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    if (v16[0])
    {
      v16[1] = v16[0];
      operator delete(v16[0]);
    }
  }
}

void sub_1A6A26948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21, char a22)
{
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a18, 0);
  std::unique_ptr<ZinIrVector>::reset[abi:ne200100](&a19, 0);
  ZinKernelDescriptor::~ZinKernelDescriptor(&a20);
  _Unwind_Resume(a1);
}

uint64_t ZinIrKernel::AdjustPalettizedKernel(const void **a1, ZinIrKernel **a2)
{
  std::unique_ptr<ZinIrKernel>::reset[abi:ne200100](a2, 0);
  v3 = a1[84];
  if (v3)
  {
    ZinIrWeight::CreateDePalettizedWeight(&v12, v3, 0);
    if (v12)
    {
      if (*(a1 + 23) >= 0)
      {
        v4 = *(a1 + 23);
      }

      else
      {
        v4 = a1[1];
      }

      v5 = &v11;
      std::string::basic_string[abi:ne200100](&v11, v4 + 23);
      if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v5 = v11.__r_.__value_.__r.__words[0];
      }

      if (v4)
      {
        if (*(a1 + 23) >= 0)
        {
          v6 = a1;
        }

        else
        {
          v6 = *a1;
        }

        memmove(v5, v6, v4);
      }

      strcpy(v5 + v4, "_AdjustPalettizedKernel");
      memcpy(__dst, a1 + 22, sizeof(__dst));
      std::__optional_copy_base<ZinIrShardingMap,false>::__optional_copy_base[abi:ne200100](&v10, (a1 + 58));
      __dst[0] = *(v12 + 8);
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v11;
      }

      operator new();
    }
  }

  return 0;
}

void sub_1A6A26CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  ZinKernelDescriptor::~ZinKernelDescriptor(&a15);
  if (*(v15 - 65) < 0)
  {
    operator delete(*(v15 - 88));
  }

  v17 = *(v15 - 64);
  *(v15 - 64) = 0;
  if (v17)
  {
    (*(*v17 + 16))(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrKernel::AdjustUnityKernel(const void **a1, ZinIrKernel **a2)
{
  std::unique_ptr<ZinIrKernel>::reset[abi:ne200100](a2, 0);
  result = ZinKernelFormatIsUnity(*(a1 + 44));
  if (result)
  {
    if ((a1[57] & 2) == 0)
    {
      ZinIrWeight::CreatePalettizedUnityWeight(*(a1 + 44));
    }

    v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v4)
    {
      ZinIrKernel::AdjustUnityKernel(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    return 3;
  }

  return result;
}

void sub_1A6A2705C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  ZinKernelDescriptor::~ZinKernelDescriptor(&a15);
  if (*(v15 - 65) < 0)
  {
    operator delete(*(v15 - 88));
  }

  v17 = *(v15 - 64);
  *(v15 - 64) = 0;
  if (v17)
  {
    (*(*v17 + 16))(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrKernel::SetSmallSourceMode(uint64_t result, unsigned __int8 a2)
{
  if (*(result + 172) != a2)
  {
    *(result + 172) = a2;
  }

  return result;
}

uint64_t ZinIrKernel::CompressionInfo::Enable(uint64_t a1, unsigned int a2, float a3)
{
  *a1 = 1;
  *(a1 + 4) = a3;
  result = IsFormatDMAConvertibleToFP16(a2);
  if (result)
  {
    v6 = 3;
  }

  else
  {
    v6 = a2;
  }

  *(a1 + 8) = v6;
  return result;
}

uint64_t ZinIrKernel::SetKernelLayoutFormat(uint64_t a1, int a2)
{
  data = a2;
  *(a1 + 408) = a2;
  return CC_SHA256_Update((a1 + 52), &data, 4u);
}

double ZinIrKernel::UpdateKernelOrigin(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 240) = *(a2 + 4);
  *(a1 + 208) = v2;
  *(a1 + 224) = v3;
  v4 = *(a1 + 672);
  if (v4)
  {
    *&v2 = ZinIrWeightBase::UpdateKernelOrigin(v4, a2).n128_u64[0];
  }

  return *&v2;
}

uint64_t ZinIrKernel::IsNonMutable(ZinIrKernel *this)
{
  v1 = *(this + 82);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 152) != 0;
  }

  v2 = *(this + 83);
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 152) != 0;
  }

  v3 = *(this + 84);
  if (v3)
  {
    v4 = *(v3 + 152) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(this + 85);
  if (v5)
  {
    v6 = *(v5 + 152) == 0;
  }

  else
  {
    v6 = 1;
  }

  if ((v1 | v2))
  {
    return 0;
  }

  else
  {
    return v4 & v6;
  }
}

BOOL ZinIrKernel::AreAllSerializedComponentsMutable(ZinIrKernel *this)
{
  v1 = *(this + 82);
  if (v1)
  {
    v2 = *(v1 + 328) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 83);
  if (v3)
  {
    v4 = *(v3 + 328) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  result = *(this + 180) <= 1u && ((v6 = *(this + 85), v7 = *(this + 84), (v2 & 1) == 0) || *(v1 + 152) == 2) && ((v4 & 1) == 0 || *(v3 + 152) == 2) && (!v6 || *(v6 + 152) == 2) && (!v7 || *(v7 + 152) == 2);
  return result;
}

uint64_t ZinIrKernel::HasSingularScale(ZinIrKernel *this)
{
  if ((*(this + 456) & 8) != 0)
  {
    v1 = *(this + 185) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t ZinIrKernel::HasSingularScale(ZinIrKernel *this, float *a2)
{
  *a2 = *(this + 45);
  if ((*(this + 456) & 8) != 0)
  {
    v2 = *(this + 185) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ZinIrKernel::HasPerCoutScale(ZinIrKernel *this)
{
  if ((*(this + 456) & 8) != 0)
  {
    v1 = *(this + 185);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL ZinIrKernel::HasDefaultScale(ZinIrKernel *this)
{
  if ((*(this + 456) & 8) == 0)
  {
    return 1;
  }

  if (*(this + 184) || (*(this + 185) & 1) != 0)
  {
    return 0;
  }

  _S0 = *(this + 45);
  __asm { FCVT            H0, S0 }

  return _S0 == 15360;
}

BOOL ZinIrKernel::ReplaceTensorKernel(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 704);
  if (v2)
  {
    v3 = *a2;
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 704) = v3;
    v5 = *(a1 + 712);
    *(a1 + 712) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return v2 != 0;
}

uint64_t ZinIrKernel::GetScaleFormat(ZinIrKernel *this)
{
  v1 = *(this + 82);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t ZinIrKernel::HasSingularBias(ZinIrKernel *this)
{
  if ((*(this + 456) & 0x10) != 0)
  {
    v1 = *(this + 193) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t ZinIrKernel::HasSingularBias(ZinIrKernel *this, float *a2)
{
  *a2 = *(this + 47);
  if ((*(this + 456) & 0x10) != 0)
  {
    v2 = *(this + 193) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ZinIrKernel::HasPerCoutBias(ZinIrKernel *this)
{
  if ((*(this + 456) & 0x10) != 0)
  {
    v1 = *(this + 193);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL ZinIrKernel::HasDefaultBias(ZinIrKernel *this, int a2)
{
  if ((*(this + 456) & 0x10) == 0)
  {
    return 1;
  }

  if (*(this + 193))
  {
    return 0;
  }

  _S0 = *(this + 47);
  __asm { FCVT            H0, S0 }

  if (a2)
  {
    return (_H0 & 0x7C00) == 0;
  }

  else
  {
    __asm { FCMP            H0, #0 }
  }

  return _ZF;
}

__n128 ZinIrKernel::GetBiasDimensions@<Q0>(uint64_t *__return_ptr a1@<X8>, ZinIrKernel *this@<X0>)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = *(this + 83);
  v3 = (v2 + 56);
  v4 = v2 == 0;
  v5 = v8;
  if (!v4)
  {
    v5 = v3;
  }

  result = *v5;
  v7 = v5[1];
  *a1 = *v5;
  *(a1 + 1) = v7;
  a1[4] = *(v5 + 4);
  return result;
}

uint64_t ZinIrKernel::HasNoBiasNoWeightButSingularScale(ZinIrKernel *this, int a2)
{
  if (*(this + 84) || *(this + 88))
  {
    goto LABEL_3;
  }

  if ((*(this + 456) & 0x10) != 0)
  {
    if ((*(this + 193) & 1) == 0)
    {
      _S0 = *(this + 47);
      __asm { FCVT            H0, S0 }

      if (a2)
      {
        if ((_H0 & 0x7C00) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        __asm { FCMP            H0, #0 }

        if (_ZF)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_3:
    v2 = 0;
    return v2 & 1;
  }

LABEL_6:
  if ((*(this + 456) & 8) != 0)
  {
    v2 = *(this + 185) ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t ZinIrKernel::HasNoBiasNoWeightButPerChannelScale(ZinIrKernel *this, int a2)
{
  if (*(this + 84) || *(this + 88))
  {
    goto LABEL_3;
  }

  if ((*(this + 456) & 0x10) != 0)
  {
    if (*(this + 193))
    {
      goto LABEL_3;
    }

    _S0 = *(this + 47);
    __asm { FCVT            H0, S0 }

    if (a2)
    {
      if ((_H0 & 0x7C00) != 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      __asm { FCMP            H0, #0 }

      if (!_ZF)
      {
        goto LABEL_3;
      }
    }
  }

  if ((*(this + 456) & 8) != 0)
  {
    v2 = *(this + 185);
    return v2 & 1;
  }

LABEL_3:
  v2 = 0;
  return v2 & 1;
}

double ZinIrKernel::GetWeightDimensions@<D0>(uint64_t *__return_ptr a1@<X8>, ZinIrKernel *this@<X0>)
{
  v2 = *(this + 84);
  if (v2)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 72);
    *a1 = v3;
    *(a1 + 1) = v4;
    a1[4] = *(v2 + 88);
  }

  else if (*(this + 88))
  {
    v3 = *(this + 248);
    a1[4] = *(this + 35);
    v5 = *(this + 264);
    *a1 = v3;
    *(a1 + 1) = v5;
  }

  else
  {
    a1[4] = 0;
    *&v3 = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return *&v3;
}

uint64_t ZinIrKernel::HasSingularZeroPoint(ZinIrKernel *this)
{
  if ((*(this + 456) & 2) != 0)
  {
    v1 = *(this + 201) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t ZinIrKernel::HasPerCoutZeroPoint(ZinIrKernel *this)
{
  if ((*(this + 456) & 2) != 0)
  {
    v1 = *(this + 201);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t ZinIrKernel::HasSingularZeroPoint(ZinIrKernel *this, int *a2)
{
  *a2 = *(this + 49);
  if ((*(this + 456) & 2) != 0)
  {
    v2 = *(this + 201) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void ZinIrKernel::GetSparsityRatio(ZinIrKernel *this, char a2, ZinKernelSparsityCache *a3)
{
  if (*(this + 84))
  {
    if ((a2 & 2) != 0)
    {
      ZinIrKernel::CalculateSparsityFromPadding(this);
    }

    if ((a2 & 4) != 0)
    {
      Hash = ZinIrKernel::GetHash(this);
      if (ZinKernelSparsityCache::Contains(a3, Hash))
      {
        ZinKernelSparsityCache::Get(a3, Hash);
      }

      else
      {
        v8 = ZinIrKernel::CalculateSparsityFromWeightScan(this, v7);
        ZinKernelSparsityCache::Add(a3, Hash, v8);
      }
    }
  }
}

float ZinIrKernel::CalculateSparsityFromPadding(ZinIrKernel *this)
{
  v2 = details::ZinIrSubchannelKernelDimension(*(this + 82), *(this + 85), *(this + 34), *(this + 88));
  v3 = details::ZinIrSubchannelKernelDimension(*(this + 83), *(this + 86), *(this + 33), *(this + 90));
  v4 = details::ZinIrSubchannelKernelDimension(*(this + 84), *(this + 87), *(this + 35), *(this + 92));
  v5 = *(this + 33) * *(this + 34) * *(this + 35);
  v6 = v3 * v2 * v4 * *(this + 86) * *(this + 85) * *(this + 87) * *(this + 82) * *(this + 83) * *(this + 84);
  if (v5 >= v6)
  {
    v5 = v3 * v2 * v4 * *(this + 86) * *(this + 85) * *(this + 87) * *(this + 82) * *(this + 83) * *(this + 84);
  }

  return 1.0 - (v5 / v6);
}

float ZinIrKernel::CalculateSparsityFromWeightScan(ZinIrKernel *this, float a2)
{
  v3 = *(this + 84);
  if (!*(v3 + 17))
  {
    ZinAssertImpl("Weight must have data for sparsity check");
  }

  PaletteVectorSize = ZinIrWeight::GetPaletteVectorSize(v3);
  if ((*(this + 456) & 2) != 0)
  {
    v4 = *(this + 84);
    if (v4)
    {
      v5 = *(v4 + 8);
    }

    else
    {
      v6 = *(this + 88);
      if (v6)
      {
        v5 = ZinTensorFormatToKernelFormat(*(v6 + 104));
      }

      else
      {
        v5 = 0;
      }
    }

    if ((ZinKernelFormatIsQuantizationCompatible(v5) & 1) == 0)
    {
      ZinAssertImpl("incompatible format with zero point");
    }

    if (PaletteVectorSize != 1)
    {
      ZinAssertImpl("zero point is not supported for vector palettized kernel.");
    }
  }

  v7 = *(this + 84);
  if (v7)
  {
    v27 = *(v7 + 56);
    v8 = *(v7 + 80);
    v30 = *(v7 + 64);
    v31 = *(v7 + 72);
    v9 = *(v7 + 88);
    v10 = *(v7 + 8);
LABEL_12:
    v11 = *(v7 + 72);
    v32 = *(v7 + 56);
    v33 = v11;
    v34 = *(v7 + 88);
    goto LABEL_13;
  }

  v22 = *(this + 88);
  if (v22)
  {
    v27 = *(this + 31);
    v8 = *(this + 34);
    v30 = *(this + 32);
    v31 = *(this + 33);
    v9 = *(this + 35);
    v10 = ZinTensorFormatToKernelFormat(*(v22 + 104));
    v7 = *(this + 84);
    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    v27 = 0;
    v30 = 0;
    v31 = 0;
    v8 = 0;
    v9 = 0;
  }

  if (*(this + 88))
  {
    v24 = *(this + 248);
    v34 = *(this + 35);
    v25 = *(this + 264);
    v32 = v24;
    v33 = v25;
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

LABEL_13:
  SerializedWeightElementCount = GetSerializedWeightElementCount(v10, &v32, PaletteVectorSize);
  if (v27 < 1)
  {
    v21 = 0.0;
  }

  else
  {
    v26 = SerializedWeightElementCount;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      v29 = v15;
      if ((*(this + 456) & 2) != 0)
      {
        ValueAsInt32 = ZinIrVector::GetValueAsInt32(*(this + 85));
      }

      else
      {
        ValueAsInt32 = 0;
      }

      if (v30 >= 1)
      {
        for (i = 0; i != v30; ++i)
        {
          if (v31 >= 1)
          {
            for (j = 0; j != v31; ++j)
            {
              if (v8 >= 1)
              {
                for (k = 0; k != v8; ++k)
                {
                  if (v9 >= 1)
                  {
                    for (m = 0; m != v9; ++m)
                    {
                      *&v32 = v13;
                      *(&v32 + 1) = i;
                      *&v33 = j;
                      *(&v33 + 1) = k;
                      v34 = m;
                      v14 += ZinIrWeight::IsZeroPointAt(*(this + 84), &v32, 0, ValueAsInt32);
                    }
                  }
                }
              }
            }
          }
        }
      }

      v15 = v29 + PaletteVectorSize;
      v13 = (v29 + PaletteVectorSize);
    }

    while (v27 > v13);
    v21 = v14;
    SerializedWeightElementCount = v26;
  }

  return v21 / SerializedWeightElementCount;
}

float ZinIrKernel::CompressionInfo::GetEstimatedCompressionRatio(ZinIrKernel::CompressionInfo *this)
{
  result = 1.0;
  if (*this == 1)
  {
    return *(this + 1);
  }

  return result;
}

uint64_t ZinIrKernel::GetSinglePaletteLutSerializedSize(ZinIrKernel *this, char a2)
{
  v3 = *(this + 44);
  if ((v3 - 7) > 0x14)
  {
    return 0;
  }

  v6 = 0;
  if (ZinKernelGetPaletteLUTSize(v3, *(this + 52), &v6))
  {
    ZinAssertImpl("Invalid palette information.");
  }

  if ((a2 & 1) == 0)
  {
    return v6;
  }

  if (ZinIrKernel::ShouldUseSparseBinaryForCompression(this))
  {
    return v6 / 2;
  }

  return v6;
}

uint64_t ZinIrKernel::GetTotalPaletteLutSerializedSize(ZinIrKernel *this)
{
  if (*(this + 84) || (v2 = *(this + 88)) != 0)
  {
    LOBYTE(v2) = *(this + 160);
  }

  SinglePaletteLutSerializedSize = ZinIrKernel::GetSinglePaletteLutSerializedSize(this, v2 & 1);
  if (__PAIR64__(*(this + 425), *(this + 424)) == 0x100000001)
  {
    v4 = *(this + 86);
    if (!v4 || (*(this + 44) - 7) >= 0x15)
    {
      ZinAssertImpl("Error: This weight does not have palette info.");
    }

    CollectPaletteLutGroupInfo(v4, v6);
    SinglePaletteLutSerializedSize *= v6[2];
    std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(v6, v6[1]);
  }

  return SinglePaletteLutSerializedSize;
}

BOOL ZinIrKernel::GetPreferredKernelLayoutFormat(ZinIrKernel *this, const ZinIrHalParameters *a2, int a3, int a4, char a5)
{
  v10 = *(this + 212);
  if ((v10 & 0x100) != 0)
  {
    if (v10)
    {
      return 1;
    }
  }

  else if (CanUseMultiPaletteMode(a2, a4, this))
  {
    return 1;
  }

  v11 = *(this + 84);
  if (v11)
  {
    v12 = *(this + 86);
    if (v12)
    {
      if ((*(this + 44) - 7) <= 0x14 && v12[1] - *v12 > 0x10uLL)
      {
        return 0;
      }
    }
  }

  v13 = *(this + 88);
  v14 = *(a2 + 1264);
  if (((v14 ^ 1) & 1) == 0 && v13)
  {
    return 1;
  }

  if (*(a2 + 1323) == 1 && a4 && (a5 & 1) == 0)
  {
    if ((v14 & 1) == 0)
    {
      ZinAssertImpl("Aligned kernels are required for this FillLowerNEFirst config.");
    }

    return 1;
  }

  v15 = *(this + 50);
  if (v13)
  {
    v16 = 1;
  }

  else
  {
    v16 = v14 ^ 1;
  }

  if (v16)
  {
    return a3 && v15 < 2;
  }

  if (v15 > 1)
  {
    return a3 && v15 < 2;
  }

  IsRunTimeMutable = ZinIrKernel::IsRunTimeMutable(this);
  if (v11 || (IsRunTimeMutable & 1) != 0)
  {
    return a3 && v15 < 2;
  }

  result = 1;
  if (!a3 && (*(a2 + 1265) & 1) != 0)
  {
    return 0;
  }

  return result;
}

unint64_t ZinIrKernel::GetOCGChannelCountAfterPaddingFromKernel(ZinIrKernel *this, ZinIrCodegenKernelUtil *a2, const ZinIrHalParameters *a3, char a4)
{
  v8 = *(this + 84);
  v9 = *(this + 84);
  if (v9)
  {
    v10 = (v9 + 88);
  }

  else
  {
    if (!*(this + 88))
    {
      v11 = 0;
      goto LABEL_6;
    }

    v10 = (this + 280);
  }

  v11 = *v10;
LABEL_6:
  v12 = details::ZinIrSubchannelKernelDimension(v8, *(this + 87), v11, *(this + 92));
  LOBYTE(v14) = a4;
  return ZinIrCodegenKernelUtil::GetOCGChannelCountAfterPadding(this + 160, a2, *(this + 85), *(this + 86), *(this + 87), *(this + 172), v12, *(this + 173), 0, a3, a2, v14);
}

uint64_t ZinIrKernel::UpdateDimensionsWithShardedDimensions(ZinIrKernel *this, uint64_t a2, uint64_t a3, BOOL a4)
{
  if (*(this + 536) != 1 || *(this + 896) == 1)
  {
    v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v5)
    {
      ZinIrKernel::UpdateDimensionsWithShardedDimensions(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    return 3;
  }

  v14 = (this + 248);
  if (ZinIrShardingMapUtils::CalculateDimensionsForShardedKernel((this + 464), this + 31, a3, a4))
  {
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      ZinIrKernel::UpdateDimensionsWithShardedDimensions(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    return 3;
  }

  *(this + 896) = 1;
  v23 = *(this + 84);
  if (v23)
  {
    v24 = *v14;
    v25 = *(this + 264);
    *(v23 + 88) = *(this + 35);
    *(v23 + 72) = v25;
    *(v23 + 56) = v24;
  }

  CC_SHA256_Update((this + 52), this + 248, 0x28u);
  return 0;
}

uint64_t *std::vector<std::pair<ZinIrVector const*,char const*>>::__init_with_size[abi:ne200100]<std::pair<ZinIrVector const*,char const*> const*,std::pair<ZinIrVector const*,char const*> const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<ZinIrVector const*,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A6A27EFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<ZinIrVector const*,char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ZinIrVector const*,char const*>>>(a1, a2);
  }

  std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ZinIrVector const*,char const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unint64_t std::unordered_set<ZinKernelFormat>::unordered_set(unint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      std::__hash_table<Attribute,std::hash<Attribute>,std::equal_to<Attribute>,std::allocator<Attribute>>::__emplace_unique_key_args<Attribute,Attribute const&>(a1, a2, a2);
      ++a2;
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t std::__function::__func<ZinIrKernel::FoldWeightsWithScale(ZinIrKernel*)::$_0,std::allocator<ZinIrKernel::FoldWeightsWithScale(ZinIrKernel*)::$_0>,float ()(unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<float ()(unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1A6A28348(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<ZinIrKernel::FoldWeightsWithScale(ZinIrKernel*)::$_1,std::allocator<ZinIrKernel::FoldWeightsWithScale(ZinIrKernel*)::$_1>,float ()(unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19F4B88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ZinIrKernel::FoldWeightsWithScale(ZinIrKernel*)::$_1,std::allocator<ZinIrKernel::FoldWeightsWithScale(ZinIrKernel*)::$_1>,float ()(unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinIrKernel::FoldWeightsWithScale(ZinIrKernel*)::$_2,std::allocator<ZinIrKernel::FoldWeightsWithScale(ZinIrKernel*)::$_2>,float ()(unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinIrKernel::FoldWeightsWithScale(ZinIrKernel*)::$_3,std::allocator<ZinIrKernel::FoldWeightsWithScale(ZinIrKernel*)::$_3>,float ()(unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19F4C88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ZinIrKernel::FoldWeightsWithScale(ZinIrKernel*)::$_3,std::allocator<ZinIrKernel::FoldWeightsWithScale(ZinIrKernel*)::$_3>,float ()(unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<ZinIrTransformRemap>::__shared_ptr_emplace[abi:ne200100]<ZinTensorDimensions const&,std::allocator<ZinIrTransformRemap>,0>(void *a1, const ZinTensorDimensions *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F4D08;
  ZinIrTransformRemap::ZinIrTransformRemap((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ZinIrTransformRemap>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F4D08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_emplace<ZinIrTransformShuffle>::__shared_ptr_emplace[abi:ne200100]<std::vector<unsigned long>,ZinIrVector *,std::allocator<ZinIrTransformShuffle>,0>(uint64_t a1, __n128 *a2, unint64_t *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F19F4D58;
  ZinIrTransformShuffle::ZinIrTransformShuffle((a1 + 24), a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<ZinIrTransformShuffle>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F4D58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void *std::__shared_ptr_emplace<ZinIrTransformDuplicate>::__shared_ptr_emplace[abi:ne200100]<unsigned long &,std::allocator<ZinIrTransformDuplicate>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19C77B8;
  ZinIrTransformDuplicate::ZinIrTransformDuplicate((a1 + 3), *a2, 1);
  return a1;
}

void *std::__shared_ptr_emplace<ZinIrTransformWeightShuffle>::__shared_ptr_emplace[abi:ne200100]<ZinKernelDimensions const&,ZinIrScratchBuffer<ZinKernelPosition> &,ZinIrVector *,std::allocator<ZinIrTransformWeightShuffle>,0>(void *a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F4DA8;
  ZinIrTransformWeightShuffle::ZinIrTransformWeightShuffle((a1 + 3), a2, a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<ZinIrTransformWeightShuffle>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F4DA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_emplace<ZinIrVector>::__shared_ptr_emplace[abi:ne200100]<ZinIrVector&,std::allocator<ZinIrVector>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F19F3F30;
  *(a1 + 24) = &unk_1F19C4550;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 40);
  *(a1 + 80) = v6;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 104);
  *(a1 + 144) = v9;
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  v10 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 136);
  *(a1 + 168) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 152);
  *(a1 + 184) = 0;
  *(a1 + 176) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  std::vector<std::shared_ptr<ZinIrTransform>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinIrTransform>*,std::shared_ptr<ZinIrTransform>*>((a1 + 184), *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 4);
  if (*(a2 + 207) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 208), *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v12 = *(a2 + 184);
    *(a1 + 224) = *(a2 + 200);
    *(a1 + 208) = v12;
  }

  v13 = *(a2 + 208);
  *(a1 + 248) = *(a2 + 224);
  *(a1 + 232) = v13;
  v14 = *(a2 + 248);
  *(a1 + 256) = *(a2 + 232);
  *(a1 + 272) = v14;
  v15 = *(a2 + 264);
  v16 = *(a2 + 280);
  v17 = *(a2 + 296);
  *(a1 + 336) = *(a2 + 312);
  *(a1 + 304) = v16;
  *(a1 + 320) = v17;
  *(a1 + 288) = v15;
  *(a1 + 24) = &unk_1F19F3B70;
  v18 = *(a2 + 320);
  *(a1 + 352) = *(a2 + 328);
  *(a1 + 344) = v18;
  return a1;
}

void sub_1A6A28D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = v3[7].__vftable;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::~__shared_weak_count(v3);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<ZinIrVectorFoldBiasWithBotScaleBotBias>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<ZinIrVector> &,std::shared_ptr<ZinIrVector> &,std::allocator<ZinIrVectorFoldBiasWithBotScaleBotBias>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F4DF8;
  std::construct_at[abi:ne200100]<ZinIrVectorFoldBiasWithBotScaleBotBias,std::shared_ptr<ZinIrVector> &,std::shared_ptr<ZinIrVector> &,ZinIrVectorFoldBiasWithBotScaleBotBias*>(a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<ZinIrVectorFoldBiasWithBotScaleBotBias>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F4DF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void *std::construct_at[abi:ne200100]<ZinIrVectorFoldBiasWithBotScaleBotBias,std::shared_ptr<ZinIrVector> &,std::shared_ptr<ZinIrVector> &,ZinIrVectorFoldBiasWithBotScaleBotBias*>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinIrVectorFoldBiasWithBotScaleBotBias::ZinIrVectorFoldBiasWithBotScaleBotBias(a1, &v9, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return a1;
}

void sub_1A6A28F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<ZinIrVectorFoldBotBiasWithBotScaleBias>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<ZinIrVector> &,std::shared_ptr<ZinIrVector> &,std::allocator<ZinIrVectorFoldBotBiasWithBotScaleBias>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F4E48;
  std::construct_at[abi:ne200100]<ZinIrVectorFoldBotBiasWithBotScaleBias,std::shared_ptr<ZinIrVector> &,std::shared_ptr<ZinIrVector> &,ZinIrVectorFoldBotBiasWithBotScaleBias*>(a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<ZinIrVectorFoldBotBiasWithBotScaleBias>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F4E48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void *std::construct_at[abi:ne200100]<ZinIrVectorFoldBotBiasWithBotScaleBias,std::shared_ptr<ZinIrVector> &,std::shared_ptr<ZinIrVector> &,ZinIrVectorFoldBotBiasWithBotScaleBias*>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinIrVectorFoldBotBiasWithBotScaleBias::ZinIrVectorFoldBotBiasWithBotScaleBias(a1, &v9, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return a1;
}

void sub_1A6A2915C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<ZinIrVectorFoldBotScaleWithBotBiasBias>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<ZinIrVector> &,std::shared_ptr<ZinIrVector> &,std::allocator<ZinIrVectorFoldBotScaleWithBotBiasBias>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F4E98;
  std::construct_at[abi:ne200100]<ZinIrVectorFoldBotScaleWithBotBiasBias,std::shared_ptr<ZinIrVector> &,std::shared_ptr<ZinIrVector> &,ZinIrVectorFoldBotScaleWithBotBiasBias*>(a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<ZinIrVectorFoldBotScaleWithBotBiasBias>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F4E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void *std::construct_at[abi:ne200100]<ZinIrVectorFoldBotScaleWithBotBiasBias,std::shared_ptr<ZinIrVector> &,std::shared_ptr<ZinIrVector> &,ZinIrVectorFoldBotScaleWithBotBiasBias*>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinIrVectorFoldBotScaleWithBotBiasBias::ZinIrVectorFoldBotScaleWithBotBiasBias(a1, &v9, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return a1;
}

void sub_1A6A29370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<ZinIrVectorEWMultiply>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<ZinIrVector> &,std::allocator<ZinIrVectorEWMultiply>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F4EE8;
  std::construct_at[abi:ne200100]<ZinIrVectorEWMultiply,std::shared_ptr<ZinIrVector> &,ZinIrVectorEWMultiply*>(a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<ZinIrVectorEWMultiply>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F4EE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void *std::construct_at[abi:ne200100]<ZinIrVectorEWMultiply,std::shared_ptr<ZinIrVector> &,ZinIrVectorEWMultiply*>(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinIrVectorEWMultiply::ZinIrVectorEWMultiply(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1A6A29554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<ZinIrVectorConvertPerCoutVectorToSingularVector>::__shared_ptr_emplace[abi:ne200100]<signed char const&,signed char const&,std::allocator<ZinIrVectorConvertPerCoutVectorToSingularVector>,0>(void *a1, char *a2, char *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F4F38;
  ZinIrVectorConvertPerCoutVectorToSingularVector::ZinIrVectorConvertPerCoutVectorToSingularVector((a1 + 3), *a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<ZinIrVectorConvertPerCoutVectorToSingularVector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F4F38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t OUTLINED_FUNCTION_1_16(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v4, a2, a3);
}

void ZinIrKernel::AddWeightsToSHA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Invalid kernel weight format to add to the SHA\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Invalid palette information.\n", a5, a6, a7, a8, v8);
}

void ZinIrKernel::MergeResizeNNIntoConvKernel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Bias is assumed to be nullptr at this time.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Quantization scale and zero point are not supported with deconv.", a5, a6, a7, a8, v8);
}

void ZinIrKernel::CreateDynamicKernel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Insufficient kernel coeff\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Unsupported kernel format\n", a5, a6, a7, a8, v8);
}

void ZinIrKernel::FuseScaleBiasWithBottom()
{
  if (v0)
  {
    OUTLINED_FUNCTION_1_16(v0, &ZinIrKernel::FuseScaleBiasWithBottom(std::string &&,std::unique_ptr<ZinIrKernel> const&)const::operation_string, &dword_1A617D000);
  }
}

{
  if (v0)
  {
    OUTLINED_FUNCTION_1_16(v0, ZinIrKernel::FuseScaleBiasWithBottom(std::string &&,std::unique_ptr<ZinIrKernel> const&)const::operation_string, &dword_1A617D000);
  }
}

void ZinIrKernel::UpdateDimensionsWithShardedDimensions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Failed to calculate sharded kernel dimensions\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Invalid call to UpdateDimensionsWithShardedDimensions\n", a5, a6, a7, a8, v8);
}

float ZinConditionLayerUtils::ExtractBiasDataFromScaleBiasLayer(uint64_t a1)
{
  v1 = *(*(a1 + 160) + 664);
  if (!v1)
  {
    ZinAssertImpl("ScaleBias layer does not have a bias kernel");
  }

  if ((*(v1 + 328) & 1) == 0)
  {
    ZinAssertImpl("ScaleBias layer does not have a singular bias kernel");
  }

  return ZinIrVector::GetSingularVal(v1);
}

float ZinConditionLayerUtils::ExtractScaleDataFromScaleBiasLayer(uint64_t a1)
{
  v3 = *(*(a1 + 160) + 656);
  if (!v3)
  {
    return 1.0;
  }

  if ((*(v3 + 328) & 1) == 0)
  {
    ZinAssertImpl("ScaleBias layer does not have a singular scale kernel", v1, v2);
  }

  return ZinIrVector::GetSingularVal(v3);
}

void ZinConditionLayerUtils::ConstructConstInLayer(ZinConditionLayerUtils *this, const ZinGOCLayer *a2)
{
  _S0 = ZinConditionLayerUtils::ExtractBiasDataFromScaleBiasLayer(this);
  __asm { FCVT            H0, S0 }

  v7 = -*&_S0;
  memset(v9, 0, sizeof(v9));
  std::vector<half>::__init_with_size[abi:ne200100]<half const*,half const*>(v9, &v7, &v8, 1);
  std::allocate_shared[abi:ne200100]<ZinIrConstData_specialization<half>,std::allocator<ZinIrConstData_specialization<half>>,std::vector<half>,0>();
}

void sub_1A6A29CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v33 = *(v31 - 80);
  if (v33)
  {
    *(v31 - 72) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinConditionLayerUtils::ReversePredicateOpDirection(int a1)
{
  result = 3;
  if (a1 <= 6)
  {
    if (a1 <= 3)
    {
      switch(a1)
      {
        case 2:
          return 4;
        case 3:
          return 1;
        case 0:
          ZinAssertImpl("invalid condition predicate op.", v1, v2);
      }
    }

    else
    {
      if (a1 == 4)
      {
        v10 = 2;
      }

      else
      {
        v10 = 3;
      }

      if ((a1 - 5) >= 2)
      {
        return v10;
      }

      else
      {
        return a1;
      }
    }
  }

  else
  {
    if (a1 == 10)
    {
      v5 = 8;
    }

    else
    {
      v5 = 3;
    }

    if ((a1 - 11) >= 2)
    {
      v6 = v5;
    }

    else
    {
      v6 = a1;
    }

    if (a1 == 9)
    {
      v7 = 7;
    }

    else
    {
      v7 = 3;
    }

    if (a1 == 8)
    {
      v8 = 10;
    }

    else
    {
      v8 = v7;
    }

    if (a1 == 7)
    {
      v9 = 9;
    }

    else
    {
      v9 = v8;
    }

    if (a1 <= 9)
    {
      return v9;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

uint64_t ZinConditionLayerUtils::ConvertNonLinearModeToPredicateOp(int a1, int a2)
{
  if (a1 <= 27)
  {
    switch(a1)
    {
      case 25:
        return 5;
      case 26:
        return 6;
      case 27:
        if (a2)
        {
          return 1;
        }

        else
        {
          return 7;
        }
    }

    return 0;
  }

  switch(a1)
  {
    case 28:
      v3 = a2 == 0;
      v4 = 10;
      v5 = 4;
      break;
    case 29:
      v3 = a2 == 0;
      v4 = 8;
      v5 = 2;
      break;
    case 30:
      v3 = a2 == 0;
      v4 = 9;
      v5 = 3;
      break;
    default:
      return 0;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

void ZinIrMatrixDecompositionUnit::ZinIrMatrixDecompositionUnit(ZinIrMatrixDecompositionUnit *this, const ZinIrMatrixDecompositionUnitInfo *a2)
{
  memset(v4, 0, sizeof(v4));
  ZinIrUnit::ZinIrUnit(this, v4);
  v5 = v4;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  *this = &unk_1F19F4F88;
  ZinIrMatrixDecompositionUnitInfo::ZinIrMatrixDecompositionUnitInfo((this + 56), a2);
}

uint64_t ZinIrMatrixDecompositionUnit::TensorDimensions(ZinIrMatrixDecompositionUnit *this, const ZinIrHalParameters *a2, ZinTensorDimensions *a3, ZinIrUnitStatus *a4)
{
  v4 = *(this + 34);
  if (!v4)
  {
    v5 = 4;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = 3;
LABEL_5:
    *a3 = *(*(this + 1) + 8);
    *(a3 + 1) = v5;
    *(a3 + 2) = 1;
    *(a3 + 3) = v5;
    *(a3 + 4) = 1;
  }

  return 0;
}

uint64_t ZinIrMatrixDecompositionUnit::ValidateBottomDimensions(ZinIrMatrixDecompositionUnit *this, CFArrayRef *a2)
{
  v2 = *(this + 1);
  v3 = *(this + 34);
  if (v3 == 1)
  {
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v2[1], xmmword_1A7598A00), vceqq_s64(v2[2], vdupq_n_s64(1uLL)))))) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3)
    {
      return 0;
    }

    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v2[1], xmmword_1A75BA9A0), vceqq_s64(v2[2], vdupq_n_s64(1uLL)))))) & 1) == 0)
    {
      v4 = *(this + 19);
      if (v4 == v2->i64[1] && *(this + 22) == v4 && *(this + 25) == v4)
      {
        return 0;
      }
    }
  }

  ZinIrUnitStatus::SetError(a2, @"InvalidMatrixDecompositionInputDims");
  return 3;
}

uint64_t ZinIrMatrixDecompositionUnit::Validate(ZinIrUnit *this, uint64_t a2, uint64_t a3, uint64_t a4, CFArrayRef *a5)
{
  if (*(*(a2 + 8) + 612) == 1 && (*(*this + 144))(this, a5, a3, a4))
  {
    ZinIrUnit::GetUnitTypeString(v10, this);
    if (v11 >= 0)
    {
      v9 = v10;
    }

    else
    {
      v9 = v10[0];
    }

    ZinAssertImpl("Unit %s is not supported for dynamic shapes", v9);
  }

  result = ZinIrUnit::ValidateBottomCount(this, 1, a5);
  if (!result)
  {
    result = ZinIrUnit::ValidateFormats(this, a5);
    if (!result)
    {

      return ZinIrMatrixDecompositionUnit::HWLimits(this, a2, a5);
    }
  }

  return result;
}

void sub_1A6A2A160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrMatrixDecompositionUnit::HWLimits(ZinIrMatrixDecompositionUnit *a1, const ZinIrHalParameters **a2, CFArrayRef *a3)
{
  if (ValidateBasicTensorConstraints((*(a1 + 1) + 8), *a2, a3))
  {
    return 3;
  }

  return ZinIrMatrixDecompositionUnit::ValidateBottomDimensions(a1, a3);
}

void sub_1A6A2A368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
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

void ZinIrMatrixDecompositionUnit::~ZinIrMatrixDecompositionUnit(ZinIrMatrixDecompositionUnit *this)
{
  *this = &unk_1F19F4F88;
  ZinIrMatrixDecompositionUnitInfo::~ZinIrMatrixDecompositionUnitInfo((this + 56));

  ZinIrUnit::~ZinIrUnit(this);
}

{
  *this = &unk_1F19F4F88;
  v2 = (this + 56);
  *(this + 7) = &unk_1F19D36C8;
  v3 = *(this + 24);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    operator delete(v5);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v2);
  ZinIrUnit::~ZinIrUnit(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(uint64_t result, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  *result = (a2 == 1) | (2 * (a3 == 1)) | (4 * (a4 == 1)) | (8 * (a5 == 1)) | (16 * (a6 == 1)) | 0x20;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a7;
  return result;
}

uint64_t ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(uint64_t a1, void *__s, size_t __n)
{
  if (!__n)
  {
    v17 = *a1 & 0xF0;
LABEL_27:
    v19 = 32;
    goto LABEL_28;
  }

  v6 = memchr(__s, 78, __n);
  if (v6)
  {
    v7 = v6 - __s == -1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = *a1 & 0xFE;
  }

  else
  {
    v8 = (*a1 & 0xFE) + 1;
  }

  *a1 = v8;
  v9 = memchr(__s, 68, __n);
  v10 = v8 | 2;
  if (v9 - __s == -1)
  {
    v10 = v8 & 0xFD;
  }

  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8 & 0xFD;
  }

  *a1 = v11;
  v12 = memchr(__s, 67, __n);
  v13 = v11 | 4;
  if (v12 - __s == -1)
  {
    v13 = v11 & 0xFB;
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11 & 0xFB;
  }

  *a1 = v14;
  v15 = memchr(__s, 72, __n);
  v16 = v14 | 8;
  if (v15 - __s == -1)
  {
    v16 = v14 & 0xF7;
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14 & 0xF7;
  }

  *a1 = v17;
  v18 = memchr(__s, 87, __n);
  if (!v18 || v18 - __s == -1)
  {
    goto LABEL_27;
  }

  v19 = 48;
LABEL_28:
  *a1 = v19 | v17 & 0xF;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = GetIsolationAxisFromString(__s, __n);
  *(a1 + 36) = 0;
  return a1;
}

uint64_t GetIsolationAxisFromString(unsigned __int8 *a1, size_t __n)
{
  if (!__n)
  {
    return 5;
  }

  v4 = memchr(a1, 73, __n);
  result = 5;
  if (v4)
  {
    v6 = v4 - a1;
    if (v6 != -1)
    {
      v7 = v6 + 1;
      if (v7 < __n)
      {
        v8 = a1[v7];
        if (v8 <= 71)
        {
          if (v8 == 67)
          {
            return 2;
          }

          else if (v8 == 68)
          {
            return 1;
          }
        }

        else
        {
          switch(v8)
          {
            case 'H':
              return 3;
            case 'W':
              return 4;
            case 'N':
              return 0;
          }
        }
      }
    }
  }

  return result;
}

void ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(ZinTensorAxisTypePacked *this, const ZinTensorAxisTypePacked *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = this + 8;
  *(this + 3) = 0;
  *(this + 36) = 0;
  if ((*a2 & 0x20) != 0)
  {
    v5 = *this & 0xFE | *a2 & 1;
    *this = v5;
    v6 = v5 & 0xFD | *a2 & 2;
    *this = v6;
    v7 = v6 & 0xFB | *a2 & 4;
    *this = v7;
    v8 = v7 & 0xF7 | *a2 & 8;
    *this = v8;
    *this = *a2 & 0x10 | v8 & 0xCF | 0x20;
    if (this != a2)
    {
      v9 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v10 != v9)
      {
        std::vector<ZinSymbolicExpressionRef>::__assign_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>(this + 1, v9, v10, (v10 - v9) >> 4);
      }
    }

    v11 = *(a2 + 8);
    v3[28] = *(a2 + 36);
    *(v3 + 6) = v11;
  }

  else
  {
    *this = 0;
    std::vector<ZinSymbolicExpressionRef>::__assign_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>(this + 1, 0, 0, 0);
    *(this + 8) = 5;
    *(this + 36) = 0;
  }
}

void sub_1A6A2A834(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinTensorAxisTypePacked::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((v2 & 0x20) != 0 && (*a2 & 0x20) != 0)
  {
    v6 = *(a2 + 1);
    v7 = *(a2 + 2) - v6;
    v8 = *(a1 + 1);
    return v7 == *(a1 + 2) - v8 && !memcmp(v6, v8, v7) && ((v3 ^ v2) & 0x1F) == 0 && a1[36] == a2[36] && *(a1 + 8) == *(a2 + 8);
  }

  else
  {
    v10 = (v2 >> 5) & 1;
    if ((*a2 & 0x20) == 0)
    {
      v10 = 1;
    }

    return v10 ^ ((v2 & 0x20) >> 5);
  }
}

uint64_t ZinTensorAxisTypePacked::GetAxisType(_BYTE *a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      LOBYTE(v4) = *a1;
      return v4 & 1;
    }

    if (a2 == 1)
    {
      v4 = *a1 >> 1;
      return v4 & 1;
    }

LABEL_13:
    ZinAssertImpl("Unknown dimension in GetAxisType", v2, v3);
  }

  if (a2 == 2)
  {
    v4 = *a1 >> 2;
    return v4 & 1;
  }

  if (a2 == 3)
  {
    v4 = *a1 >> 3;
    return v4 & 1;
  }

  if (a2 != 4)
  {
    goto LABEL_13;
  }

  v4 = *a1 >> 4;
  return v4 & 1;
}

uint64_t ZinTensorAxisTypePacked::SetAxisType(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 8) != *(result + 16))
  {
    ZinAssertImpl("Do not use BOOLean dyanmic axis api when symbolic_dims is not empty", a2, a3);
  }

  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        v3 = *result & 0xFB | (4 * (a3 == 1));
        goto LABEL_14;
      case 3:
        v3 = *result & 0xF7 | (8 * (a3 == 1));
        goto LABEL_14;
      case 4:
        v3 = *result & 0xEF | (16 * (a3 == 1));
        goto LABEL_14;
    }

LABEL_16:
    ZinAssertImpl("Unknown dimension in SetAxisType", a2, a3);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = *result & 0xFD | (2 * (a3 == 1));
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v3 = *result & 0xFE;
  if (a3 == 1)
  {
    ++v3;
  }

LABEL_14:
  *result = v3;
  return result;
}

uint64_t ZinTensorAxisTypePacked::operator|=(uint64_t a1, uint64_t a2)
{
  if ((*a2 & 0x20) == 0 || (*a1 & 0x20) == 0)
  {
    ZinAssertImpl("Missing axis type operands during axis_type propagation");
  }

  v4 = 0;
  do
  {
    if (ZinTensorAxisTypePacked::GetAxisType(a2, v4))
    {
      if (*(a2 + 8) == *(a2 + 16) && *(a1 + 8) == *(a1 + 16))
      {
        ZinTensorAxisTypePacked::SetAxisType(a1, v4, 1);
      }

      else
      {
        SymbolicDimension = ZinTensorAxisTypePacked::GetSymbolicDimension(a1, v4);
        v6 = ZinTensorAxisTypePacked::GetSymbolicDimension(a2, v4);
        v7 = v6;
        if (!*v6 && !v6[1])
        {
          ZinAssertImpl("Dynamic axis should have symbolic expressions");
        }

        if (ZinTensorAxisTypePacked::GetAxisType(a1, v4))
        {
          if (*SymbolicDimension != *v7 || SymbolicDimension[1] != v7[1])
          {
            ZinAssertImpl("Two dynamic operands should have same symbolic expressions");
          }
        }

        else
        {
          ZinTensorAxisTypePacked::SetSymbolicDimension(a1, v4, v7);
        }
      }
    }

    v4 = (v4 + 1);
  }

  while (v4 != 5);
  if (!ZinTensorAxisTypePacked::ValidateConsistenceOfBoolAndSymbolicAxis(a1))
  {
    ZinAssertImpl("Inconsitent BOOLean and symbolic dynamic axis type");
  }

  v8 = *(a1 + 32);
  v9 = *(a2 + 32);
  if (v8 == 5 || v9 == 5)
  {
    if (v8 == 5 && v9 != 5)
    {
      *(a1 + 32) = v9;
    }
  }

  else if (v8 != v9)
  {
    ZinAssertImpl("Inconsistent isolation axis from inputs");
  }

  return a1;
}