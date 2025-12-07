void ZinMirTensorTransform::SplitLayerPerBatch(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: Graph manipulation error during SplitLayerPerBatch at Split #%d.", buf, 8u);
}

void ZinMirTensorTransform::SplitLayerPerBatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Batch size should be 1 or more\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: Graph manipulation error during SplitLayerPerBatch.", a5, a6, a7, a8, v8);
}

uint64_t ZinComputeProgramGetIndexOfCompilationUnitFromDebugInfo(const unsigned __int8 *a1, int a2, const char *__s)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && __s)
  {
    v4 = a1;
    v5 = 0;
    LOBYTE(v6) = 0;
    v7 = 0xFFFFFFFFLL;
    v8 = -1;
    v9 = &a1[a2];
    while (1)
    {
      v10 = *v4;
      v11 = *(v4 + 1);
      if (*v4 <= 7)
      {
        break;
      }

      if (v10 == 8)
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        v12 = (v4 + 8);
        if (v10 == 2048)
        {
          if ((v5 & 1) == 0)
          {
            v5 = 0;
            goto LABEL_26;
          }

          if (*v12 == v8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              v16 = 136315138;
              v17 = __s;
              _os_log_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Found procedure name = %s", &v16, 0xCu);
            }

            return v7;
          }

LABEL_22:
          v5 = 1;
          goto LABEL_26;
        }

        if (v10 == 2051)
        {
          if ((v6 & 1) == 0)
          {
            goto LABEL_24;
          }

          v6 = v11 - 8;
          if (v11 != 8)
          {
            v13 = &v12[v6];
            v14 = strlen(__s);
            v8 = 0;
            while (strncmp(v12, __s, v14))
            {
              v12 += strlen(v12) + 1;
              ++v8;
              if (v12 >= v13)
              {
                LOBYTE(v6) = 0;
                goto LABEL_15;
              }
            }

LABEL_24:
            LOBYTE(v6) = 0;
            goto LABEL_26;
          }

LABEL_15:
          v8 = -1;
        }
      }

LABEL_26:
      v4 += v11;
      if (v4 >= v9)
      {
        if (v5)
        {
          return v7;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    if (!v10)
    {
      v5 = 0;
      v7 = (v7 + 1);
      goto LABEL_26;
    }

    if (v10 != 1)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinComputeProgramGetIndexOfCompilationUnitFromDebugInfo();
  }

  return 0xFFFFFFFFLL;
}

uint64_t ZinComputeProgramGetSymbolSection(uint64_t a1, uint64_t a2, char *__s2)
{
  if ((a2 - 1) > 0xFFFFFFFD || __s2 == 0)
  {
    return 0;
  }

  v6 = a2;
  for (i = a1 + 16; strcmp(*(i - 8), __s2); i += 32)
  {
    if (!--v6)
    {
      return 0;
    }
  }

  return *i;
}

void ZinComputeProgramMakeOperations(uint8_t *a1, void *a2, uint64_t a3)
{
  *a1 = 136315138;
  *a2 = "ZinComputeProgramStatus ZinComputeProgramMakeAneOperations(ZinComputeProcedureOperation *, const struct compute_thread_command *, uint32_t, std::span<ZinComputeProgramSegment> &, const void *)";
  OUTLINED_FUNCTION_1_2(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "%s: ane_seg_thread_state_64 out of bounds", a1);
}

{
  *a1 = 136315138;
  *a2 = "ZinComputeProgramStatus ZinComputeProgramMakeAneOperations(ZinComputeProcedureOperation *, const struct compute_thread_command *, uint32_t, std::span<ZinComputeProgramSegment> &, const void *)";
  OUTLINED_FUNCTION_1_2(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "%s: ane_thread_state_64 out of bounds", a1);
}

{
  *a1 = 136315138;
  *a2 = "ZinComputeProgramStatus ZinComputeProgramMakeAneOperations(ZinComputeProcedureOperation *, const struct compute_thread_command *, uint32_t, std::span<ZinComputeProgramSegment> &, const void *)";
  OUTLINED_FUNCTION_1_2(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "%s: illegal thread state flavor", a1);
}

void ZinComputeProgramMakeOperations()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinComputeProgramMakeBindings()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinComputeProgramMakeProcedures()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
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
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinComputeProgramMakePreCheck()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void *ZinIrAllReduceUnit::ZinIrAllReduceUnit(void *a1, const ZinIrAllReduceUnitInfo *a2, uint64_t *a3)
{
  v5 = ZinIrUnit::ZinIrUnit(a1, a3);
  *v5 = &unk_1F19EF448;
  ZinIrAllReduceUnitInfo::ZinIrAllReduceUnitInfo((v5 + 7), a2);
  return a1;
}

void sub_1A68DB644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  MEMORY[0x1AC55A070](v7, 0x10B3C40F54B83FCLL, a3, a4);
  std::unique_ptr<ZinIrAllReduceInfo>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ZinIrAllReduceUnit::TensorDimensions(ZinIrAllReduceUnit *this, const ZinIrHalParameters *a2, ZinTensorDimensions *a3, CFArrayRef *a4)
{
  if (*(this + 2) - *(this + 1) == 136)
  {
    if (ZinIrShardingMapUtils::ValidateShardingMap((this + 136), 0))
    {
      result = 0;
      v8 = *(this + 1);
      v9 = *(v8 + 8);
      v10 = *(v8 + 24);
      *(a3 + 4) = *(v8 + 40);
      *a3 = v9;
      *(a3 + 1) = v10;
      return result;
    }

    v11 = @"InvalidUnit";
  }

  else
  {
    v11 = @"InvalidBottomCount";
  }

  ZinIrUnitStatus::SetError(a4, v11);
  return 3;
}

void ZinIrAllReduceUnit::~ZinIrAllReduceUnit(ZinIrAllReduceUnit *this)
{
  ZinIrAllReduceUnitInfo::~ZinIrAllReduceUnitInfo((this + 56));

  ZinIrUnit::~ZinIrUnit(this);
}

{
  v2 = (this + 56);
  *(this + 7) = &unk_1F1A35178;
  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v2);
  ZinIrUnit::~ZinIrUnit(this);

  JUMPOUT(0x1AC55A070);
}

void ZinIrAllReduceUnitInfo::ZinIrAllReduceUnitInfo(ZinIrAllReduceUnitInfo *this, const ZinIrAllReduceUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F1A35178;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 1);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(this + 13, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 1);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(this + 16, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 1);
  *this = &unk_1F19ECE10;
  *(this + 38) = *(a2 + 38);
}

void sub_1A68DB954(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 112) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v6;
    operator delete(v6);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v1);
  _Unwind_Resume(a1);
}

void sub_1A68DB998()
{
  if (*(v0 + 31) < 0)
  {
    operator delete(*v1);
  }

  JUMPOUT(0x1A68DB990);
}

void ZinIrOpLayerGraph::~ZinIrOpLayerGraph(ZinIrOpLayerGraph *this)
{
  v2 = (this + 8);
  v3 = *this;
  if (*this != (this + 8))
  {
    do
    {
      v4 = *(RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(v3 + 32) + 32);
      v5 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(v3 + 32);
      ZinIrContext::RemoveIrObj(v4, v5);
      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  v11 = (this + 584);
  std::vector<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>::__destroy_vector::operator()[abi:ne200100](&v11);
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(this + 544, *(this + 69));
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(this + 520, *(this + 66));
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(this + 496, *(this + 63));
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(this + 472, *(this + 60));
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(this + 448, *(this + 57));
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(this + 424, *(this + 54));
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(this + 400, *(this + 51));
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(this + 376, *(this + 48));
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(this + 352, *(this + 45));
  v9 = *(this + 41);
  if (v9)
  {
    *(this + 42) = v9;
    operator delete(v9);
  }

  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(this + 36);
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(this + 31);
  v11 = (this + 216);
  std::vector<std::unordered_map<ZinIrDimension,ZinTensorDimensionException>>::__destroy_vector::operator()[abi:ne200100](&v11);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 176);
  std::__tree<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>>>::destroy(this + 152, *(this + 20));
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v10 = *(this + 13);
  if (v10)
  {
    *(this + 14) = v10;
    operator delete(v10);
  }

  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(this + 8);
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(this + 3);
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(this, *(this + 1));
}

uint64_t ZinIrOpLayerGraph::UpdateOutgoingConnection(uint64_t this, ZinIrOpLayer *a2)
{
  if (a2)
  {
    v3 = this;
    v7.n128_u64[0] = a2;
    v8 = 0;
    v4 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v7);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v7, v4);
    v9 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v7);
    v5 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>((v3 + 24), &v9);
    if (v5)
    {
      v6 = (v5 + 3);
    }

    else
    {
      v6 = (v3 + 104);
    }

    ZinIrOpLayer::SetOutgoingLayers<std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>(a2, v6);
    return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v7);
  }

  return this;
}

void ZinIrOpLayer::SetOutgoingLayers<std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>(uint64_t a1, unint64_t **a2)
{
  v3 = (a1 + 136);
  *(a1 + 144) = *(a1 + 136);
  std::vector<ZinIrOpLayer *>::resize((a1 + 136), a2[1] - *a2);
  v5 = *a2;
  v4 = a2[1];
  if (v5 != v4)
  {
    v6 = *v3;
    do
    {
      v8.n128_u64[0] = *v5;
      v9 = 0;
      v7 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v8);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v8, v7);
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v10, &v8);
      *v6++ = RawOrShared<ZinIrOpLayer>::unwrap_ptr(v10);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v8);
      ++v5;
    }

    while (v5 != v4);
  }
}

uint64_t ZinIrOpLayerGraph::UpdateIncomingConnection(ZinIrOpLayerGraph *this, ZinIrOpLayer *a2)
{
  v8.n128_u64[0] = a2;
  v9 = 0;
  v4 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v8);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v8, v4);
  v10 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v8);
  v5 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, &v10);
  if (v5)
  {
    v6 = (v5 + 3);
  }

  else
  {
    v6 = (this + 104);
  }

  ZinIrOpLayer::SetIncomingLayers<std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>(a2, v6);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v8);
}

void ZinIrOpLayer::SetIncomingLayers<std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>(uint64_t a1, unint64_t **a2)
{
  v3 = (a1 + 112);
  *(a1 + 120) = *(a1 + 112);
  std::vector<ZinIrOpLayer *>::resize((a1 + 112), a2[1] - *a2);
  v5 = *a2;
  v4 = a2[1];
  if (v5 != v4)
  {
    v6 = *v3;
    do
    {
      v8.n128_u64[0] = *v5;
      v9 = 0;
      v7 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v8);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v8, v7);
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v10, &v8);
      *v6++ = RawOrShared<ZinIrOpLayer>::unwrap_ptr(v10);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v8);
      ++v5;
    }

    while (v5 != v4);
  }
}

BOOL ZinIrOpLayerGraph::RemoveNode(uint64_t a1, uint64_t a2, char a3)
{
  if (!RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2))
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    v6 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(a2);
    Layer2TDMapper::LayerTracker::IsSourceLayerInActiveScopes((a1 + 152), v6);
  }

  v39 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2);
  v7 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>((a1 + 64), &v39);
  v8 = (v7 + 3);
  if (!v7)
  {
    v8 = (a1 + 104);
  }

  v43 = 0;
  v44 = 0;
  v42 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v42, *v8, v8[1], (v8[1] - *v8) >> 3);
  v36 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(a2);
  if (v36)
  {
    v9 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>((a1 + 288), &v36);
    v10 = (v9 + 3);
    if (!v9)
    {
      v10 = (a1 + 328);
    }
  }

  else
  {
    v10 = (a1 + 328);
  }

  v40 = 0;
  v41 = 0;
  v39 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v39, *v10, v10[1], (v10[1] - *v10) >> 3);
  if (v43 - v42 != v40 - v39)
  {
    ZinAssertImpl("outports are inconsistent with nodes for in edges");
  }

  __p = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2);
  v12 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>((a1 + 24), &__p);
  v13 = (v12 + 3);
  if (!v12)
  {
    v13 = (a1 + 104);
  }

  v37 = 0;
  v38 = 0;
  v36 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v36, *v13, v13[1], (v13[1] - *v13) >> 3);
  v31.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_ptr(a2);
  if (v31.n128_u64[0] && (v14 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>((a1 + 248), &v31)) != 0)
  {
    v15 = (v14 + 3);
  }

  else
  {
    v15 = (a1 + 328);
  }

  v34 = 0;
  v35 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *v15, v15[1], (v15[1] - *v15) >> 3);
  v16 = v36;
  v17 = v37;
  if (v37 - v36 != v34 - __p)
  {
    ZinAssertImpl("outports are inconsistent with nodes for out edges");
  }

  v18 = v42;
  if (v43 != v42)
  {
    v19 = 0;
    do
    {
      v31.n128_u64[0] = v18[v19];
      v32 = 0;
      v20 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v31);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v31, v20);
      v21 = *(v39 + v19);
      v22 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v31);
      v23 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(a2);
      ZinIrOpLayerGraph::RemoveEdge(a1, v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, v21);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v31);
      ++v19;
      v18 = v42;
    }

    while (v19 < (v43 - v42) >> 3);
    v16 = v36;
    v17 = v37;
  }

  if (v17 != v16)
  {
    v24 = 0;
    do
    {
      v31.n128_u64[0] = v16[v24];
      v32 = 0;
      v25 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v31);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v31, v25);
      v26 = *(__p + v24);
      v27 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(a2);
      v28 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v31);
      ZinIrOpLayerGraph::RemoveEdge(a1, v27, v28, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, v26);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v31);
      ++v24;
      v16 = v36;
    }

    while (v24 < (v37 - v36) >> 3);
  }

  ZinIrOpLayerGraph::AddRemoveNodeHandler::UpdateRemoveNodes((a1 + 584), a2);
  v11 = ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::RemoveNode(a1, a2);
  if (v11)
  {
    *(RawOrShared<ZinIrOpLayer>::unwrap_ptr(a2) + 168) = 0;
    v29 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(a2);
    ZinIrOpLayerGraph::RemoveLayerCache(a1, v29);
    *(a1 + 568) = 1;
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v11;
}

void sub_1A68DC178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 72);
  if (v22)
  {
    *(v20 - 64) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void *ZinIrOpLayerGraph::GetOutputPortsOfInEdges(ZinIrOpLayerGraph *this, ZinIrOpLayer *a2)
{
  v5 = a2;
  if (!a2)
  {
    return (this + 328);
  }

  v3 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 36, &v5);
  if (v3)
  {
    return v3 + 3;
  }

  else
  {
    return (this + 328);
  }
}

uint64_t ZinIrOpLayerGraph::RemoveEdge(ZinIrOpLayerGraph *a1, ZinIrOpLayer *a2, ZinIrOpLayer *a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  result = 0;
  if (a2)
  {
    if (a3)
    {
      result = ZinIrOpLayerGraph::RemoveOutputPortForEdge(a1, a2, a3, a4, a5, a6);
      if (result)
      {
        v17.n128_u64[0] = a2;
        v18 = 0;
        v12 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v17);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v17, v12);
        v15.n128_u64[0] = a3;
        v16 = 0;
        v13 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v15);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v15, v13);
        v14 = ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::RemoveEdge(a1, &v17, &v15, a4, a5);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v15);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v17);
        if (v14)
        {
          ZinIrOpLayerGraph::UpdateOutgoingConnection(a1, a2);
          ZinIrOpLayerGraph::UpdateIncomingConnection(a1, a3);
          result = 1;
          *(a1 + 568) = 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1A68DC33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *ZinIrOpLayerGraph::AddRemoveNodeHandler::UpdateRemoveNodes(void *result, uint64_t a2)
{
  v2 = result[1];
  if (*result != v2)
  {
    v4 = result;
    if (v2 - 40 != std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::find<RawOrShared<ZinIrOpLayer>>(v2 - 48, a2))
    {
      std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__erase_unique<RawOrShared<ZinIrOpLayer>>((v4[1] - 48), a2);
    }

    v5 = (v4[1] - 24);

    return std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__emplace_unique_key_args<RawOrShared<ZinIrOpLayer>,RawOrShared<ZinIrOpLayer> const&>(v5, a2);
  }

  return result;
}

uint64_t **ZinIrOpLayerGraph::RemoveLayerCache(uint64_t **this, ZinIrOpLayer *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = *(*(a2 + 11) + 8);
    if (v4 > 30)
    {
      if (v4 > 79)
      {
        if (v4 == 80)
        {
          v13.n128_u64[0] = a2;
          v14 = 0;
          v12 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
          RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v12);
          std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__erase_unique<RawOrShared<ZinIrOpLayer>>(v3 + 62, &v13);
        }

        else
        {
          if (v4 != 81)
          {
            return this;
          }

          v13.n128_u64[0] = a2;
          v14 = 0;
          v8 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
          RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v8);
          std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__erase_unique<RawOrShared<ZinIrOpLayer>>(v3 + 59, &v13);
        }

        return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v13);
      }

      if (v4 == 31)
      {
        v13.n128_u64[0] = a2;
        v14 = 0;
        v10 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v10);
        std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__erase_unique<RawOrShared<ZinIrOpLayer>>(v3 + 50, &v13);
        return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v13);
      }

      if (v4 != 78)
      {
        return this;
      }

      v13.n128_u64[0] = a2;
      v14 = 0;
      v6 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v6);
      std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__erase_unique<RawOrShared<ZinIrOpLayer>>(v3 + 65, &v13);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v13);
    }

    else
    {
      if (v4 <= 28)
      {
        if (v4 == 27)
        {
          v13.n128_u64[0] = a2;
          v14 = 0;
          v9 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
          RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v9);
          std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__erase_unique<RawOrShared<ZinIrOpLayer>>(v3 + 44, &v13);
        }

        else
        {
          if (v4 != 28)
          {
            return this;
          }

          v13.n128_u64[0] = a2;
          v14 = 0;
          v5 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
          RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v5);
          std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__erase_unique<RawOrShared<ZinIrOpLayer>>(v3 + 47, &v13);
        }

        return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v13);
      }

      if (v4 == 29)
      {
        v13.n128_u64[0] = a2;
        v14 = 0;
        v11 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v11);
        std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__erase_unique<RawOrShared<ZinIrOpLayer>>(v3 + 53, &v13);
        return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v13);
      }
    }

    v13.n128_u64[0] = a2;
    v14 = 0;
    v7 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v7);
    std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__erase_unique<RawOrShared<ZinIrOpLayer>>(v3 + 68, &v13);
    return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v13);
  }

  return this;
}

void sub_1A68DC5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ZinIrOpLayerGraph::AddEdge(ZinIrOpLayerGraph *a1, ZinIrOpLayer *a2, ZinIrOpLayer *a3, unint64_t a4, unint64_t a5, void **a6)
{
  result = 0;
  if (a2 && a3)
  {
    v18.n128_u64[0] = a2;
    v19 = 0;
    v13 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v18);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v18, v13);
    v16.n128_u64[0] = a3;
    v17 = 0;
    v14 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v16);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v16, v14);
    v15 = ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::AddEdge(a1, &v18, &v16, a4, a5);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v16);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v18);
    if (v15)
    {
      result = ZinIrOpLayerGraph::AddOutputPortForEdge(a1, a2, a3, a4, a5, a6);
      if (result)
      {
        ZinIrOpLayerGraph::UpdateOutgoingConnection(a1, a2);
        ZinIrOpLayerGraph::UpdateIncomingConnection(a1, a3);
        result = 1;
        *(a1 + 568) = 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1A68DC720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ZinIrOpLayerGraph::AddOutputPortForEdge(void *a1, void *a2, void *a3, unint64_t a4, unint64_t a5, void **a6)
{
  result = 0;
  v42 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v39 = a2;
  v37 = a6;
  if (!a2 || !a3)
  {
    return result;
  }

  __p.n128_u64[0] = a2;
  LODWORD(v36) = 0;
  v11 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&__p);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&__p, v11);
  if (!std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__count_unique<RawOrShared<ZinIrOpLayer>>(a1, &__p))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p);
LABEL_35:
    ZinAssertImpl("node does not exist");
  }

  v40.n128_u64[0] = a3;
  v41 = 0;
  v12 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v40);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v40, v12);
  v13 = std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__count_unique<RawOrShared<ZinIrOpLayer>>(a1, &v40);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v40);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p);
  if (!v13)
  {
    goto LABEL_35;
  }

  v14 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(a1 + 31, &v39);
  if (v14)
  {
    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned long>::push_back[abi:ne200100](v14 + 3, &v37);
    }

    else
    {
      v15 = v14[3];
      if (a4 > (v14[4] - v15) >> 3)
      {
        return 0;
      }

      std::vector<ZinLayerOutputPort>::insert(v14 + 3, &v15[8 * a4], &v37);
    }
  }

  else
  {
    v40.n128_u64[0] = v37;
    v36 = 0;
    __p = 0uLL;
    std::vector<DimensionMapping>::__init_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&__p, &v40, &v40.n128_i64[1], 1uLL);
    v40.n128_u64[0] = &v39;
    v16 = (std::__hash_table<std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(a1 + 31, &v39, &std::piecewise_construct, &v40) + 3);
    if (v16 != &__p)
    {
      std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(v16, __p.n128_u64[0], __p.n128_u64[1], (__p.n128_u64[1] - __p.n128_u64[0]) >> 3);
    }

    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }
  }

  v17 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(a1 + 36, &v38);
  if (v17)
  {
    if ((a5 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned long>::push_back[abi:ne200100](v17 + 3, &v37);
    }

    else
    {
      v18 = v17[3];
      if (a5 > (v17[4] - v18) >> 3)
      {
        return 0;
      }

      std::vector<ZinLayerOutputPort>::insert(v17 + 3, &v18[8 * a5], &v37);
    }
  }

  else
  {
    v40.n128_u64[0] = v37;
    v36 = 0;
    __p = 0uLL;
    std::vector<DimensionMapping>::__init_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&__p, &v40, &v40.n128_i64[1], 1uLL);
    v40.n128_u64[0] = &v38;
    v19 = (std::__hash_table<std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(a1 + 36, &v38, &std::piecewise_construct, &v40) + 3);
    if (v19 != &__p)
    {
      std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(v19, __p.n128_u64[0], __p.n128_u64[1], (__p.n128_u64[1] - __p.n128_u64[0]) >> 3);
    }

    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }
  }

  v20 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(a1 + 31, &v39);
  if (!v20)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v22 = v20[3];
  v21 = v20[4];
  __p.n128_u64[0] = v39;
  LODWORD(v36) = 0;
  v23 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&__p);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&__p, v23);
  v40.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&__p);
  v24 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 3, &v40);
  v25 = v21 - v22;
  v26 = v24 + 3;
  if (!v24)
  {
    v26 = a1 + 13;
  }

  v27 = v26[1] - *v26;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p);
  if (v25 != v27)
  {
    ZinAssertImpl("inconsistent size between node map and outport map for out edges");
  }

  v28 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(a1 + 36, &v38);
  if (!v28)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v30 = v28[3];
  v29 = v28[4];
  __p.n128_u64[0] = v38;
  LODWORD(v36) = 0;
  v31 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&__p);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&__p, v31);
  v40.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&__p);
  v32 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 8, &v40);
  v33 = v32 + 3;
  if (!v32)
  {
    v33 = a1 + 13;
  }

  v34 = v33[1] - *v33;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p);
  if (v29 - v30 != v34)
  {
    ZinAssertImpl("inconsistent size between node map and outport map for out edges");
  }

  return 1;
}

void sub_1A68DCAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<ZinLayerOutputPort>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<NodeKey<unsigned long long>>::emplace_back<NodeKey<unsigned long long>>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1A68DCCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrOpLayerGraph::RemoveOutputPortForEdge(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  result = 0;
  v63 = a3;
  v64 = a2;
  if (a2 && a3)
  {
    v61.n128_u64[0] = a2;
    v62 = 0;
    v12 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v61);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v61, v12);
    if (std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__count_unique<RawOrShared<ZinIrOpLayer>>(a1, &v61))
    {
      v59.n128_u64[0] = a3;
      v60 = 0;
      v13 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v59);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v59, v13);
      v14 = std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__count_unique<RawOrShared<ZinIrOpLayer>>(a1, &v59);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v59);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v61);
      if (v14)
      {
        v61.n128_u64[0] = v64;
        v62 = 0;
        v15 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v61);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v61, v15);
        v59.n128_u64[0] = a3;
        v60 = 0;
        v16 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v59);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v59, v16);
        IsConnected = ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::IsConnected(a1, &v61, &v59);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v59);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v61);
        if ((IsConnected & 1) == 0)
        {
          return 0;
        }

        v18 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(a1 + 31, &v64);
        if (v18)
        {
          v19 = v18;
          v61.n128_u64[0] = v64;
          v62 = 0;
          v20 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v61);
          RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v61, v20);
          v59.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v61);
          v21 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 3, &v59);
          if (v21)
          {
            v22 = v21 + 3;
          }

          else
          {
            v22 = a1 + 13;
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v61);
          v24 = v19[3];
          v23 = v19[4];
          v25 = v23 - v24;
          v26 = *v22;
          v27 = v22[1];
          if ((v23 - v24) == (v27 - *v22))
          {
            v28 = v25 >> 3;
            if ((a4 & 0x8000000000000000) != 0)
            {
              if (v27 == v26)
              {
LABEL_29:
                ZinAssertImpl("could not find a matching node/port for out edges");
              }

              if (v28 <= 1)
              {
                v37 = 1;
              }

              else
              {
                v37 = v25 >> 3;
              }

              v38 = v25 - 8;
              while (*v26 != a3 || *v24 != a6)
              {
                v24 += 8;
                v38 -= 8;
                ++v26;
                if (!--v37)
                {
                  goto LABEL_29;
                }
              }

              if (v24 + 8 != v23)
              {
                memmove(v24, v24 + 8, v38);
              }

              v31 = &v24[v38];
            }

            else
            {
              if (v28 <= a4 || *&v24[8 * a4] != a6)
              {
                return 0;
              }

              v29 = &v24[8 * a4];
              v30 = v23 - (v29 + 8);
              if (v23 != v29 + 8)
              {
                memmove(v29, v29 + 8, v23 - (v29 + 8));
              }

              v31 = &v29[v30];
            }

            v19[4] = v31;
LABEL_34:
            v39 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(a1 + 36, &v63);
            if (v39)
            {
              v40 = v39;
              v61.n128_u64[0] = v63;
              v62 = 0;
              v41 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v61);
              RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v61, v41);
              v59.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v61);
              v42 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 8, &v59);
              if (v42)
              {
                v43 = v42 + 3;
              }

              else
              {
                v43 = a1 + 13;
              }

              std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v61);
              v45 = v40[3];
              v44 = v40[4];
              v46 = v44 - v45;
              v47 = *v43;
              v48 = v43[1];
              if ((v44 - v45) == (v48 - *v43))
              {
                v49 = v46 >> 3;
                if ((a5 & 0x8000000000000000) != 0)
                {
                  if (v48 == v47)
                  {
LABEL_57:
                    ZinAssertImpl("could not find a matching node/port for in edges");
                  }

                  if (v49 <= 1)
                  {
                    v49 = 1;
                  }

                  v58 = v46 - 8;
                  while (*v47 != v64 || *v45 != a6)
                  {
                    v45 += 8;
                    v58 -= 8;
                    ++v47;
                    if (!--v49)
                    {
                      goto LABEL_57;
                    }
                  }

                  if (v45 + 8 != v44)
                  {
                    memmove(v45, v45 + 8, v58);
                  }

                  v52 = &v45[v58];
                  goto LABEL_61;
                }

                if (v49 > a5 && *&v45[8 * a5] == a6)
                {
                  v50 = &v45[8 * a5];
                  v51 = v44 - (v50 + 8);
                  if (v44 != v50 + 8)
                  {
                    memmove(v50, v50 + 8, v44 - (v50 + 8));
                  }

                  v52 = &v50[v51];
LABEL_61:
                  v40[4] = v52;
                  return 1;
                }

                return 0;
              }
            }

            else
            {
              v61.n128_u64[0] = v63;
              v62 = 0;
              v53 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v61);
              RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v61, v53);
              v59.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v61);
              v54 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 8, &v59);
              v55 = a1 + 13;
              if (v54)
              {
                v55 = v54 + 3;
              }

              v57 = *v55;
              v56 = v55[1];
              std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v61);
              if (v56 == v57)
              {
                return 1;
              }
            }

            ZinAssertImpl("node map and outport map for in edges are not synced");
          }
        }

        else
        {
          v61.n128_u64[0] = v64;
          v62 = 0;
          v32 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v61);
          RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v61, v32);
          v59.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v61);
          v33 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 3, &v59);
          v34 = a1 + 13;
          if (v33)
          {
            v34 = v33 + 3;
          }

          v36 = *v34;
          v35 = v34[1];
          std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v61);
          if (v35 == v36)
          {
            goto LABEL_34;
          }
        }

        ZinAssertImpl("node map and outport map for out edges are not synced");
      }
    }

    else
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v61);
    }

    ZinAssertImpl("node does not exist");
  }

  return result;
}

void sub_1A68DD194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ZinIrOpLayerGraph::GetOutgoingLayersFromPort(const void **__return_ptr a1@<X8>, ZinIrOpLayer *this@<X1>, void *a3@<X0>, uint64_t a4@<X2>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (this)
  {
    if (a4 && !ZinIrOpLayer::IsANELayer(this))
    {
      ZinAssertImpl("Only ANELayer can have non-regular output port.");
    }

    v29.n128_u64[0] = this;
    v30 = 0;
    v8 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v29);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v29, v8);
    v31 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v29);
    v9 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a3 + 3, &v31);
    if (v9)
    {
      v10 = v9 + 3;
    }

    else
    {
      v10 = a3 + 13;
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v29);
    v29.n128_u64[0] = this;
    v11 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(a3 + 31, &v29);
    if (v11)
    {
      v12 = v11 + 3;
    }

    else
    {
      v12 = a3 + 41;
    }

    v13 = v10[1] - *v10;
    if (v13 != v12[1] - *v12)
    {
      ZinAssertImpl("layers and ports must have the same size.");
    }

    std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>::reserve(a1, v13 >> 3);
    v15 = *v10;
    v14 = v10[1];
    if (v14 != *v10)
    {
      v16 = 0;
      do
      {
        if (*(*v12 + 8 * v16) == a4)
        {
          v17 = *(v15 + 8 * v16);
          v19 = a1[1];
          v18 = a1[2];
          if (v19 >= v18)
          {
            v21 = (v19 - *a1) >> 3;
            if ((v21 + 1) >> 61)
            {
              std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
            }

            v22 = v18 - *a1;
            v23 = v22 >> 2;
            if (v22 >> 2 <= (v21 + 1))
            {
              v23 = v21 + 1;
            }

            if (v22 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v23;
            }

            if (v24)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>(a1, v24);
            }

            v25 = (8 * v21);
            *v25 = v17;
            v20 = (8 * v21 + 8);
            v26 = a1[1] - *a1;
            v27 = v25 - v26;
            memcpy(v25 - v26, *a1, v26);
            v28 = *a1;
            *a1 = v27;
            a1[1] = v20;
            a1[2] = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *v19 = v17;
            v20 = v19 + 8;
          }

          a1[1] = v20;
          v15 = *v10;
          v14 = v10[1];
        }

        ++v16;
      }

      while (v16 < (v14 - v15) >> 3);
    }
  }
}

void sub_1A68DD3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrOpLayerGraph::AddNode@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const Layer2TDMapper::SourceLayer *a3@<X2>, char *a4@<X8>)
{
  if (RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2) && (v8 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2), (Layer2TDMapper::LayerTracker::RecordSourceLayers((a1 + 152), v8, a3) & 1) != 0))
  {
    v9 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2);
    std::enable_shared_from_this<ZinIrIrObject>::weak_from_this[abi:ne200100]((v9 + 8), &v24);
    if (v25)
    {
      shared_owners = v25->__shared_owners_;
      std::__shared_weak_count::__release_weak(v25);
      if (shared_owners != -1)
      {
        v11 = *(RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2) + 32);
        v12 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2);
        ZinIrContext::RevertAddIrObj(v11, *(v12 + 24));
      }
    }

    *(RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2) + 168) = a1;
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v24, a2);
    v13 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2);
    std::enable_shared_from_this<ZinIrIrObject>::weak_from_this[abi:ne200100]((v13 + 8), v23);
    if (!v23[1] || (v14 = v23[1]->__shared_owners_, std::__shared_weak_count::__release_weak(v23[1]), v14 == -1))
    {
      v15 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2);
      std::shared_ptr<ZinIrOpLayer>::shared_ptr[abi:ne200100]<ZinIrOpLayer,0>(&v22, v15);
    }

    v16 = *(RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v24) + 32);
    v17 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v24);
    ZinIrContext::RevertAddIrObj(v16, *(v17 + 24));
    if (ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::AddNode(a1, &v24))
    {
      v18 = *(a1 + 592);
      if (*(a1 + 584) != v18)
      {
        std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__emplace_unique_key_args<RawOrShared<ZinIrOpLayer>,RawOrShared<ZinIrOpLayer> const&>((v18 - 48), &v24);
      }

      v19 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v24);
      ZinIrOpLayerGraph::AddLayerCache(a1, v19);
      v20 = 1;
      *(a1 + 568) = 1;
    }

    else
    {
      v20 = 0;
    }

    *a4 = v20;
    RawOrShared<ZinIrOpLayer>::RawOrShared<RawOrShared<ZinIrOpLayer>&>((a4 + 8), &v24);
    return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v24);
  }

  else
  {
    *a4 = 0;

    return std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100]((a4 + 8), a2);
  }
}

void sub_1A68DD610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **ZinIrOpLayerGraph::AddLayerCache(uint64_t **this, ZinIrOpLayer *a2)
{
  v3 = this;
  v4 = *(*(a2 + 11) + 8);
  if (v4 <= 30)
  {
    if (v4 <= 28)
    {
      if (v4 == 27)
      {
        v13.n128_u64[0] = a2;
        v14 = 0;
        v9 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v9);
        std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__emplace_unique_key_args<RawOrShared<ZinIrOpLayer>,RawOrShared<ZinIrOpLayer>>(v3 + 44, &v13);
      }

      else
      {
        if (v4 != 28)
        {
          return this;
        }

        v13.n128_u64[0] = a2;
        v14 = 0;
        v5 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v5);
        std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__emplace_unique_key_args<RawOrShared<ZinIrOpLayer>,RawOrShared<ZinIrOpLayer>>(v3 + 47, &v13);
      }

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v13);
    }

    if (v4 == 29)
    {
      v13.n128_u64[0] = a2;
      v14 = 0;
      v11 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v11);
      std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__emplace_unique_key_args<RawOrShared<ZinIrOpLayer>,RawOrShared<ZinIrOpLayer>>(v3 + 53, &v13);
      return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v13);
    }

LABEL_11:
    v13.n128_u64[0] = a2;
    v14 = 0;
    v7 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v7);
    std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__emplace_unique_key_args<RawOrShared<ZinIrOpLayer>,RawOrShared<ZinIrOpLayer>>(v3 + 68, &v13);
    return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v13);
  }

  if (v4 <= 79)
  {
    if (v4 == 31)
    {
      v13.n128_u64[0] = a2;
      v14 = 0;
      v10 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v10);
      std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__emplace_unique_key_args<RawOrShared<ZinIrOpLayer>,RawOrShared<ZinIrOpLayer>>(v3 + 50, &v13);
      return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v13);
    }

    if (v4 != 78)
    {
      return this;
    }

    v13.n128_u64[0] = a2;
    v14 = 0;
    v6 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v6);
    std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__emplace_unique_key_args<RawOrShared<ZinIrOpLayer>,RawOrShared<ZinIrOpLayer>>(v3 + 65, &v13);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v13);
    goto LABEL_11;
  }

  if (v4 == 80)
  {
    v13.n128_u64[0] = a2;
    v14 = 0;
    v12 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v12);
    std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__emplace_unique_key_args<RawOrShared<ZinIrOpLayer>,RawOrShared<ZinIrOpLayer>>(v3 + 62, &v13);
  }

  else
  {
    if (v4 != 81)
    {
      return this;
    }

    v13.n128_u64[0] = a2;
    v14 = 0;
    v8 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v13);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v13, v8);
    std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__emplace_unique_key_args<RawOrShared<ZinIrOpLayer>,RawOrShared<ZinIrOpLayer>>(v3 + 59, &v13);
  }

  return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v13);
}

void sub_1A68DD840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ZinIrOpLayerGraph::MoveIncomingEdges(ZinIrOpLayerGraph *this, ZinIrOpLayer *a2, ZinIrOpLayer *a3)
{
  v3 = 0;
  if (a2 && a3)
  {
    __p.n128_u64[0] = a2;
    LODWORD(v24) = 0;
    v7 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&__p);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&__p, v7);
    v21.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&__p);
    v8 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, &v21);
    v9 = this + 104;
    if (v8)
    {
      v9 = (v8 + 3);
    }

    v26 = 0;
    v27 = 0;
    v25 = 0;
    std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v25, *v9, *(v9 + 1), (*(v9 + 1) - *v9) >> 3);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p);
    v21.n128_u64[0] = a2;
    v10 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 36, &v21);
    v11 = this + 328;
    if (v10)
    {
      v11 = (v10 + 3);
    }

    v24 = 0;
    __p = 0uLL;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *v11, *(v11 + 1), (*(v11 + 1) - *v11) >> 3);
    v12 = v25;
    if (v26 - v25 != __p.n128_u64[1] - __p.n128_u64[0])
    {
      ZinAssertImpl("nodes/ports are not synced for in edges");
    }

    if (v26 == v25)
    {
      v3 = 1;
    }

    else
    {
      v13 = 0;
      while (1)
      {
        v21.n128_u64[0] = v12[v13];
        v22 = 0;
        v14 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v21);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v21, v14);
        v15 = *(__p.n128_u64[0] + 8 * v13);
        v16 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v21);
        IndexOfMatchedOutgoingLayer = ZinIrOpLayerGraph::GetIndexOfMatchedOutgoingLayer(this, v16, a2, 0xFFFFFFFFFFFFFFFFLL);
        v18 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v21);
        if ((ZinIrOpLayerGraph::RemoveEdge(this, v18, a2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, v15) & 1) == 0)
        {
          break;
        }

        v19 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v21);
        v3 = ZinIrOpLayerGraph::AddEdge(this, v19, a3, IndexOfMatchedOutgoingLayer, 0xFFFFFFFFFFFFFFFFLL, v15);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v21);
        if (v3)
        {
          ++v13;
          v12 = v25;
          if (v13 < (v26 - v25) >> 3)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v21);
      v3 = 0;
    }

LABEL_16:
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }
  }

  return v3;
}

void sub_1A68DDA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrOpLayerGraph::GetIndexOfMatchedOutgoingLayer(ZinIrOpLayerGraph *this, ZinIrOpLayer *a2, ZinIrOpLayer *a3, unint64_t a4)
{
  result = -1;
  if (!a2 || !a3)
  {
    return result;
  }

  v22.n128_u64[0] = a3;
  v23 = 0;
  v9 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v22);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v22, v9);
  v24 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v22);
  v10 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, &v24);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v22);
  if ((a4 & 0x8000000000000000) != 0)
  {
    v14 = 1;
  }

  else
  {
    v11 = (v10 + 3);
    if (!v10)
    {
      v11 = (this + 104);
    }

    v13 = v11;
    v12 = *v11;
    if (a4 >= v13[1] - v12 || v12[a4] != a2)
    {
      return -1;
    }

    v14 = 0;
    v15 = a4 + 1;
    do
    {
      v16 = *v12++;
      if (v16 == a2)
      {
        ++v14;
      }

      --v15;
    }

    while (v15);
  }

  v22.n128_u64[0] = a2;
  v23 = 0;
  v17 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v22);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v22, v17);
  v24 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v22);
  v18 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v24);
  if (v18)
  {
    v19 = v18 + 3;
  }

  else
  {
    v19 = (this + 104);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v22);
  v20 = v19[1] - *v19;
  if (!v20)
  {
    return -1;
  }

  result = 0;
  v21 = v20 >> 3;
  if (v21 <= 1)
  {
    v21 = 1;
  }

  while (*(*v19 + 8 * result) != a3 || --v14)
  {
    if (v21 == ++result)
    {
      return -1;
    }
  }

  return result;
}

uint64_t ZinIrOpLayerGraph::MoveOutgoingEdges(ZinIrOpLayerGraph *a1, ZinIrOpLayer *a2, ZinIrOpLayer *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  if (a2 && a3)
  {
    v12 = (*(*a2 + 40))(a2, a6);
    v13 = (*(*a3 + 40))(a3, a5);
    if (ZinIrOpLayerGraph::IsTensorMirInfoPreserved(v12, v13, v14))
    {
      OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(a2);
      __p = 0;
      v59 = 0;
      v60 = 0;
      v16 = *OutgoingLayers;
      v17 = *(OutgoingLayers + 8);
      if (*OutgoingLayers != v17)
      {
        do
        {
          v18 = *v16;
          v19 = (*(*a2 + 40))(a2, 0);
          if ((*(*v18 + 224))(v18, v19))
          {
            v20 = v59;
            if (v59 >= v60)
            {
              v22 = (v59 - __p) >> 3;
              if ((v22 + 1) >> 61)
              {
                std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
              }

              v23 = (v60 - __p) >> 2;
              if (v23 <= v22 + 1)
              {
                v23 = v22 + 1;
              }

              if (v60 - __p >= 0x7FFFFFFFFFFFFFF8)
              {
                v24 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v23;
              }

              if (v24)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>(&__p, v24);
              }

              v25 = (8 * v22);
              *v25 = v18;
              v21 = 8 * v22 + 8;
              v26 = v25 - (v59 - __p);
              memcpy(v26, __p, v59 - __p);
              v27 = __p;
              __p = v26;
              v59 = v21;
              v60 = 0;
              if (v27)
              {
                operator delete(v27);
              }
            }

            else
            {
              *v59 = v18;
              v21 = (v20 + 8);
            }

            v59 = v21;
          }

          ++v16;
        }

        while (v16 != v17);
      }

      v53.n128_u64[0] = a2;
      LODWORD(v54) = 0;
      v28 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v53);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v53, v28);
      v51.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v53);
      v29 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 3, &v51);
      v30 = a1 + 104;
      if (v29)
      {
        v30 = (v29 + 3);
      }

      v56 = 0;
      v57 = 0;
      v55 = 0;
      std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v55, *v30, *(v30 + 1), (*(v30 + 1) - *v30) >> 3);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v53);
      v51.n128_u64[0] = a2;
      v31 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(a1 + 31, &v51);
      v32 = a1 + 328;
      if (v31)
      {
        v32 = (v31 + 3);
      }

      v54 = 0;
      v53 = 0uLL;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v53, *v32, *(v32 + 1), (*(v32 + 1) - *v32) >> 3);
      v33 = v55;
      if (v56 - v55 != v53.n128_u64[1] - v53.n128_u64[0])
      {
        ZinAssertImpl("nodes/ports are not synced for out edges");
      }

      if (v56 == v55)
      {
LABEL_31:
        v41 = __p;
        v42 = v59;
        if (__p == v59)
        {
          v6 = 1;
        }

        else
        {
          LODWORD(v6) = 1;
          do
          {
            v43 = *v41;
            v44 = (*(*a3 + 48))(a3, 0);
            v45 = v44[1];
            v48 = *v44;
            v49 = v45;
            if (v45)
            {
              atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v46 = (*(*v43 + 264))(v43, &v48);
            if (v49)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v49);
            }

            v6 = v6 & v46;
            v41 += 8;
          }

          while (v41 != v42);
        }
      }

      else
      {
        v34 = 0;
        while (1)
        {
          v51.n128_u64[0] = v33[v34];
          v52 = 0;
          v35 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v51);
          RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v51, v35);
          v36 = *(v53.n128_u64[0] + 8 * v34);
          v50 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v51);
          if (!std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(a4, &v50))
          {
            v37 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v51);
            IndexOfMatchedIncomingLayer = ZinIrOpLayerGraph::GetIndexOfMatchedIncomingLayer(a1, v37, a2);
            v39 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v51);
            if ((ZinIrOpLayerGraph::RemoveEdge(a1, a2, v39, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, v36) & 1) == 0)
            {
              break;
            }

            v40 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v51);
            if (!ZinIrOpLayerGraph::AddEdge(a1, a3, v40, 0xFFFFFFFFFFFFFFFFLL, IndexOfMatchedIncomingLayer, v36))
            {
              break;
            }
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v51);
          ++v34;
          v33 = v55;
          if (v34 >= (v56 - v55) >> 3)
          {
            goto LABEL_31;
          }
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v51);
        v6 = 0;
      }

      if (v53.n128_u64[0])
      {
        v53.n128_u64[1] = v53.n128_u64[0];
        operator delete(v53.n128_u64[0]);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }
    }

    else
    {
      if (!*((*(*a3 + 40))(a3, 0) + 160))
      {
        ZinAssertImpl("The replaced layer had an output tensor with MIR attributes that are now missing.");
      }

      return 0;
    }
  }

  return v6;
}

void sub_1A68DE140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinIrOpLayerGraph::IsTensorMirInfoPreserved(ZinIrOpLayerGraph *this, ZinIrTensor *a2, ZinIrTensor *a3)
{
  result = 0;
  if (this && a2)
  {
    if (*(this + 20))
    {
      v6 = *(*(*(a2 + 19) + 88) + 8);
      result = 1;
      if (v6 != 9 && v6 != 100)
      {
        v7 = *(this + 19);
        v8 = ZinTensorDimensionsEqual(a2 + 8, this + 8);
        result = 1;
        if (v8)
        {
          if (v7)
          {
            v9 = *(*(v7 + 88) + 8);
            v10 = v9 > 0x1E;
            v11 = (1 << v9) & 0x68000000;
            v12 = v10 || v11 == 0;
            if (v12 && !*(a2 + 20))
            {
              return *(ZinIrTensor::GetRootTensor(a2) + 20) != 0;
            }
          }
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t ZinIrOpLayerGraph::GetIndexOfMatchedIncomingLayer(ZinIrOpLayerGraph *this, ZinIrOpLayer *a2, const ZinIrOpLayer *a3)
{
  result = -1;
  if (a2 && a3)
  {
    v11.n128_u64[0] = a2;
    v12 = 0;
    v6 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v11);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v11, v6);
    v13 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v11);
    v7 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, &v13);
    if (v7)
    {
      v8 = v7 + 3;
    }

    else
    {
      v8 = (this + 104);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v11);
    v9 = v8[1] - *v8;
    if (v9)
    {
      result = 0;
      v10 = v9 >> 3;
      if (v10 <= 1)
      {
        v10 = 1;
      }

      while (*(*v8 + 8 * result) != a3)
      {
        if (v10 == ++result)
        {
          return -1;
        }
      }
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t ZinIrOpLayerGraph::SwapEdgeSource(ZinIrOpLayerGraph *a1, ZinIrOpLayer *a2, ZinIrOpLayer *a3, ZinIrOpLayer *a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, void **a9, uint64_t a10)
{
  result = 0;
  if (a2)
  {
    if (a3)
    {
      v18 = (*(*a2 + 40))(a2, a10);
      v19 = (*(*a3 + 40))(a3, a9);
      ZinIrOpLayerGraph::IsTensorMirInfoPreserved(v18, v19, v20);
      result = ZinIrOpLayerGraph::RemoveEdge(a1, a2, a4, a7, a8, a10);
      if (result)
      {
        result = ZinIrOpLayerGraph::AddEdge(a1, a3, a4, a5, a6, a9);
        if (result)
        {
          v21 = (*(*a2 + 40))(a2, a10);
          if (!(*(*a4 + 224))(a4, v21))
          {
            return 1;
          }

          v22 = (*(*a3 + 48))(a3, a9);
          v23 = v22[1];
          v26 = *v22;
          v27 = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = (*(*a4 + 264))(a4, &v26);
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }

          return (v24 & 1) != 0;
        }
      }
    }
  }

  return result;
}

void sub_1A68DE56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrOpLayerGraph::SwapEdgeDestination(ZinIrOpLayerGraph *a1, ZinIrOpLayer *a2, ZinIrOpLayer *a3, ZinIrOpLayer *a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, void **a9, uint64_t a10)
{
  if (!a2 || !a3 || !a4 || !ZinIrOpLayerGraph::RemoveEdge(a1, a2, a3, a7, a8, a10))
  {
    return 0;
  }

  return ZinIrOpLayerGraph::AddEdge(a1, a2, a4, a5, a6, a9);
}

uint64_t ZinIrOpLayerGraph::TraverseForward(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v8 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::__value_func[abi:ne200100](v7, a2);
  v5 = ZinIrOpLayerGraph::Traverse(a1, v7, v3, 0);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](v7);
  return v5 & 0xFFFFFFFFFFLL;
}

void sub_1A68DE6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ZinIrOpLayerGraph::Traverse(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *(a1 + 568) = 0;
  v24 = &v24;
  v25 = &v24;
  v26 = 0;
  if (ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::TopologicalSortImpl<std::list<RawOrShared<ZinIrOpLayer>>>(a1, &v24))
  {
    if (a4 && v26 >= 2)
    {
      v8 = v25;
      if (v25 != &v24)
      {
        do
        {
          v9 = *v8;
          v10 = v8[1];
          *v8 = v10;
          v8[1] = v9;
          v8 = v10;
        }

        while (v10 != &v24);
        v8 = v25;
      }

      v11 = v24;
      v24 = v8;
      v25 = v11;
    }

    ZinIrOpLayerGraph::AddRemoveNodeHandler::EnterTraverse((a1 + 584));
    while (1)
    {
      if (!v26)
      {
        std::vector<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>::__base_destruct_at_end[abi:ne200100](a1 + 584, *(a1 + 592) - 48);
        v21 = 0;
        v20 = *(a1 + 568);
        goto LABEL_18;
      }

      RawOrShared<ZinIrOpLayer>::RawOrShared<RawOrShared<ZinIrOpLayer>&>(&v23, (v25 + 2));
      v13 = v25;
      v12 = v26;
      v15 = *v25;
      v14 = v25[1];
      *(v15 + 8) = v14;
      *v14 = v15;
      v26 = v12 - 1;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v13 + 2));
      operator delete(v13);
      if (!ZinIrOpLayerGraph::AddRemoveNodeHandler::IsSkipLayer(a1 + 584, &v23))
      {
        v16 = *(a1 + 592);
        v17 = *(v16 - 5);
        v16 -= 5;
        std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy((v16 - 1), v17);
        *v16 = 0;
        v16[1] = 0;
        *(v16 - 1) = v16;
        v18 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v23);
        v19 = std::function<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(a2, a1, v18);
        if (v19)
        {
          v20 = *(a1 + 568);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v23);
          v21 = v19;
          goto LABEL_18;
        }

        if (a3)
        {
          std::list<RawOrShared<ZinIrOpLayer>>::__insert_with_sentinel[abi:ne200100]<std::__tree_const_iterator<RawOrShared<ZinIrOpLayer>,std::__tree_node<RawOrShared<ZinIrOpLayer>,void *> *,long>,std::__tree_const_iterator<RawOrShared<ZinIrOpLayer>,std::__tree_node<RawOrShared<ZinIrOpLayer>,void *> *,long>>(&v24, v25, *(*(a1 + 592) - 48), (*(a1 + 592) - 40));
        }
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v23);
    }
  }

  v20 = 0;
  v21 = 3;
LABEL_18:
  std::__list_imp<RawOrShared<ZinIrOpLayer>>::clear(&v24);
  return v21 | (v20 << 32);
}

void ZinIrOpLayerGraph::AddRemoveNodeHandler::EnterTraverse(ZinIrOpLayerGraph::AddRemoveNodeHandler *this)
{
  v7 = v8;
  v8[0] = 0;
  v10 = 0;
  v11 = 0;
  v8[1] = 0;
  v9 = &v10;
  v2 = *(this + 1);
  if (v2 >= *(this + 2))
  {
    v6 = std::vector<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>::__emplace_back_slow_path<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>(this, &v7);
  }

  else
  {
    *v2 = v8;
    *(v2 + 8) = v8[0];
    *v2 = v2 + 8;
    *(v2 + 24) = v9;
    v3 = v10;
    *(v2 + 32) = v10;
    v4 = v2 + 32;
    *(v2 + 16) = 0;
    v5 = v11;
    *(v2 + 40) = v11;
    if (v5)
    {
      v3[2] = v4;
      v9 = &v10;
      v10 = 0;
      v11 = 0;
    }

    else
    {
      *(v2 + 24) = v4;
    }

    v6 = v2 + 48;
    *(this + 1) = v2 + 48;
  }

  *(this + 1) = v6;
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(&v9, v10);
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(&v7, v8[0]);
}

void ZinIrOpLayerGraph::GetIndicesOfMatchedIncomingLayer(const void **__return_ptr a1@<X8>, ZinIrOpLayerGraph *this@<X0>, ZinIrOpLayer *a3@<X1>, const ZinIrOpLayer *a4@<X2>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 && a4)
  {
    v22.n128_u64[0] = a3;
    v23 = 0;
    v7 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v22);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v22, v7);
    v24 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v22);
    v8 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, &v24);
    v9 = v8 ? (v8 + 3) : (this + 104);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v22);
    v11 = *v9;
    v10 = *(v9 + 1);
    if (v10 != *v9)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        if (*(v11 + 8 * v13) == a4)
        {
          v14 = a1[2];
          if (v12 >= v14)
          {
            v15 = *a1;
            v16 = v12 - *a1;
            v17 = v16 >> 3;
            v18 = (v16 >> 3) + 1;
            if (v18 >> 61)
            {
              std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
            }

            v19 = v14 - v15;
            if (v19 >> 2 > v18)
            {
              v18 = v19 >> 2;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFF8)
            {
              v20 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v20);
            }

            *(8 * v17) = v13;
            v12 = (8 * v17 + 8);
            memcpy(0, v15, v16);
            v21 = *a1;
            *a1 = 0;
            a1[1] = v12;
            a1[2] = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v12++ = v13;
          }

          a1[1] = v12;
          v11 = *v9;
          v10 = *(v9 + 1);
        }

        ++v13;
      }

      while (v13 < (v10 - v11) >> 3);
    }
  }
}

void sub_1A68DEC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

BOOL ZinIrOpLayerGraph::ReplaceNode(ZinIrOpLayerGraph *this, ZinIrOpLayer *a2, ZinIrOpLayer *a3, const Layer2TDMapper::SourceLayer *a4)
{
  v4 = 0;
  v29[1] = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    if (*(*(a2 + 11) + 8) == 29)
    {
      v24.n128_u64[0] = a3;
      v25 = 0;
      v8 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v24);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v24, v8);
      memset(v23, 0, sizeof(v23));
      v22 = &unk_1F19C5DB8;
      ZinIrOpLayerGraph::AddNode(this, &v24, &v22, v26);
      v9 = v26[0];
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v27);
      v22 = &unk_1F19C3950;
      v21[0] = v23;
      std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](v21);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v24);
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v24.n128_u64[0] = a3;
      v25 = 0;
      v11 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v24);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v24, v11);
      v29[0] = a2;
      v21[0] = v29;
      v21[1] = 1;
      Layer2TDMapper::SourceLayer::SourceLayer(&v22, v21);
      ZinIrOpLayerGraph::AddNode(this, &v24, &v22, v26);
      v12 = v26[0];
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v27);
      v22 = &unk_1F19C3950;
      v28 = v23;
      std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v28);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v24);
      if ((v12 & 1) == 0)
      {
        return 0;
      }

      BlockStats = ZinIrCodegenStatsPerBasicBlock::GetBlockStats(a4);
      if (BlockStats[1] != *BlockStats && !Layer2TDMapper::LayerTracker::RecordSourceLayers((this + 152), a3, a4))
      {
        return 0;
      }

      if (!ZinIrOpLayerGraph::MoveIncomingEdges(this, a2, a3))
      {
        return 0;
      }
    }

    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    v14 = ZinIrOpLayerGraph::MoveOutgoingEdges(this, a2, a3, v19, 0, 0);
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v19);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    v17.n128_u64[0] = a2;
    v18 = 0;
    v15 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v17);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v17, v15);
    v4 = ZinIrOpLayerGraph::RemoveNode(this, &v17, 0);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v17);
  }

  return v4;
}

void sub_1A68DEF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL ZinIrOpLayerGraph::ReplaceNode(ZinIrOpLayerGraph *a1, ZinIrOpLayer *a2, ZinIrOpLayer ***a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v41.n128_u64[0] = a2;
  v42 = 0;
  v6 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v41);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v41, v6);
  v7 = std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__count_unique<RawOrShared<ZinIrOpLayer>>(a1, &v41);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v41);
  if (!v7)
  {
    ZinAssertImpl("The old node should be present in the graph.");
  }

  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
    return 0;
  }

  do
  {
    v10 = *v8;
    v41.n128_u64[0] = *v8;
    v42 = 0;
    v11 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v41);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v41, v11);
    if (std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__count_unique<RawOrShared<ZinIrOpLayer>>(a1, &v41))
    {
      goto LABEL_31;
    }

    v39.n128_u64[0] = v10;
    v40 = 0;
    v12 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v39);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v39, v12);
    v43.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v39);
    v13 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 8, &v43);
    v14 = v13 + 3;
    if (!v13)
    {
      v14 = (a1 + 104);
    }

    if (v14[1] != *v14)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v39);
LABEL_31:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v41);
LABEL_32:
      ZinAssertImpl("new node in the chain should not have any edge at this point");
    }

    v43.n128_u64[0] = v10;
    v44 = 0;
    v15 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v43);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v43, v15);
    v37 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v43);
    v16 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 3, &v37);
    v17 = v16 + 3;
    if (!v16)
    {
      v17 = (a1 + 104);
    }

    v19 = *v17;
    v18 = v17[1];
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v43);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v39);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v41);
    if (v18 != v19)
    {
      goto LABEL_32;
    }

    v8 += 8;
  }

  while (v8 != v9);
  v20 = *a3;
  if (*a3 == a3[1])
  {
    return 0;
  }

  v21 = *v20;
  v43.n128_u64[0] = *v20;
  v44 = 0;
  v22 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v43);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v43, v22);
  v46[0] = a2;
  v37 = v46;
  v38 = 1;
  Layer2TDMapper::SourceLayer::SourceLayer(&v39, &v37);
  ZinIrOpLayerGraph::AddNode(a1, &v43, &v39, &v41);
  v23 = v41.n128_u8[0];
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v41.n128_i64[1]);
  v39.n128_u64[0] = &unk_1F19C3950;
  v45 = &v39.n128_u64[1];
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v45);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v43);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  if (!ZinIrOpLayerGraph::MoveIncomingEdges(a1, a2, v21))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrOpLayerGraph::ReplaceNode();
    }

    return 0;
  }

  v24 = *a3;
  if ((a3[1] - *a3) >= 9)
  {
    v25 = 1;
    while (1)
    {
      v26 = *&v24[8 * v25];
      v43.n128_u64[0] = v26;
      v44 = 0;
      v27 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v43);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v43, v27);
      v46[0] = a2;
      v37 = v46;
      v38 = 1;
      Layer2TDMapper::SourceLayer::SourceLayer(&v39, &v37);
      ZinIrOpLayerGraph::AddNode(a1, &v43, &v39, &v41);
      v28 = v41.n128_u8[0];
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v41.n128_i64[1]);
      v39.n128_u64[0] = &unk_1F19C3950;
      v45 = &v39.n128_u64[1];
      std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v45);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v43);
      if ((v28 & 1) == 0 || (ZinIrOpLayerGraph::AddEdge(a1, v21, v26, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0) & 1) == 0)
      {
        return 0;
      }

      ++v25;
      v24 = *a3;
      v21 = v26;
      if (v25 >= a3[1] - *a3)
      {
        goto LABEL_24;
      }
    }
  }

  v26 = v21;
LABEL_24:
  memset(v35, 0, sizeof(v35));
  v36 = 1065353216;
  v29 = ZinIrOpLayerGraph::MoveOutgoingEdges(a1, a2, v26, v35, 0, 0);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v35);
  if ((v29 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MirOpt::MergeGOCsToConvs();
    }

    return 0;
  }

  v33.n128_u64[0] = a2;
  v34 = 0;
  v30 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v33);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v33, v30);
  v31 = ZinIrOpLayerGraph::RemoveNode(a1, &v33, 0);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v33);
  return v31;
}

void sub_1A68DF430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ZinIrOpLayerGraph::InsertNodeBetween@<X0>(ZinIrOpLayerGraph *a1@<X0>, uint64_t a2@<X1>, ZinIrOpLayer *a3@<X2>, const ZinIrTensor *a4@<X3>, const Layer2TDMapper::SourceLayer *a5@<X4>, void **a6@<X5>, uint64_t a7@<X8>)
{
  result = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2);
  if (a4 && a3 && result)
  {
    v32.n128_u64[0] = a3;
    v33 = 0;
    v15 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v32);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v32, v15);
    __p.n128_u64[0] = a4;
    v35 = 0;
    v16 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&__p);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&__p, v16);
    IsConnected = ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::IsConnected(a1, &v32, &__p);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v32);
    if ((IsConnected & 1) == 0)
    {
      ZinAssertImpl("Must be connected");
    }

    ZinIrOpLayerGraph::AddNode(a1, a2, a5, &v32);
    if (v32.n128_u8[0])
    {
      ZinIrOpLayerGraph::GetOutgoingLayersFromPort(&__p, a3, a1, a6);
      v19 = __p.n128_u64[1];
      for (i = __p.n128_u64[0]; i != v19; ++i)
      {
        if (*i == a4)
        {
          v31 = 0;
          v20 = (*(*a3 + 40))(a3, a6);
          if ((ZinIrOpLayerGraphUtil::GetIncomingIndex(v20, a4, &v31, v21) & 1) == 0)
          {
            ZinAssertImpl("Must be connected.");
          }

          if ((ZinIrOpLayerGraph::RemoveEdge(a1, a3, a4, 0xFFFFFFFFFFFFFFFFLL, v31, a6) & 1) == 0 || (v22 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2), !ZinIrOpLayerGraph::AddEdge(a1, v22, a4, 0xFFFFFFFFFFFFFFFFLL, v31, 0)))
          {
            *a7 = 0;
            RawOrShared<ZinIrOpLayer>::RawOrShared<RawOrShared<ZinIrOpLayer>&>((a7 + 8), &v32.n128_i64[1]);
            goto LABEL_25;
          }
        }
      }

      v23 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2);
      if ((ZinIrOpLayerGraph::AddEdge(a1, a3, v23, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, a6) & 1) == 0)
      {
        goto LABEL_23;
      }

      v24 = (*(*a3 + 40))(a3, 0);
      if (!(*(*a4 + 224))(a4, v24))
      {
        goto LABEL_22;
      }

      v25 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(a2);
      v26 = (*(*v25 + 48))(v25, 0);
      v27 = v26[1];
      v29 = *v26;
      v30 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = (*(*a4 + 264))(a4, &v29);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (v28)
      {
LABEL_22:
        *a7 = v32.n128_u8[0];
        std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a7 + 8, &v32.n128_i64[1]);
      }

      else
      {
LABEL_23:
        *a7 = 0;
        RawOrShared<ZinIrOpLayer>::RawOrShared<RawOrShared<ZinIrOpLayer>&>((a7 + 8), &v32.n128_i64[1]);
      }

LABEL_25:
      if (__p.n128_u64[0])
      {
        __p.n128_u64[1] = __p.n128_u64[0];
        operator delete(__p.n128_u64[0]);
      }
    }

    else
    {
      *a7 = v32.n128_u8[0];
      std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a7 + 8, &v32.n128_i64[1]);
    }

    return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v32.n128_i64[1]);
  }

  else
  {
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 24) = 0;
  }

  return result;
}

void sub_1A68DF85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t ZinIrOpLayerGraph::MoveNodeBefore(ZinIrOpLayerGraph *this, size_t *a2, ZinIrOpLayer *a3)
{
  v3 = 0;
  v54[3] = *MEMORY[0x1E69E9840];
  if (!a2 || !a3)
  {
    return v3;
  }

  v47.__r_.__value_.__r.__words[0] = a2;
  LODWORD(v47.__r_.__value_.__r.__words[2]) = 0;
  v7 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v47);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v47, v7);
  if (!std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__count_unique<RawOrShared<ZinIrOpLayer>>(this, &v47))
  {
    goto LABEL_43;
  }

  v46.__r_.__value_.__r.__words[0] = a3;
  LODWORD(v46.__r_.__value_.__r.__words[2]) = 0;
  v8 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v46);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v46, v8);
  v3 = std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__count_unique<RawOrShared<ZinIrOpLayer>>(this, &v46);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v46);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v47);
  if (!v3)
  {
    return v3;
  }

  v47.__r_.__value_.__r.__words[0] = a3;
  LODWORD(v47.__r_.__value_.__r.__words[2]) = 0;
  v9 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v47);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v47, v9);
  v46.__r_.__value_.__r.__words[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v47);
  v10 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, &v46);
  if (v10)
  {
    v11 = v10 + 3;
  }

  else
  {
    v11 = (this + 104);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v47);
  v47.__r_.__value_.__r.__words[0] = a2;
  LODWORD(v47.__r_.__value_.__r.__words[2]) = 0;
  v12 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v47);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v47, v12);
  v46.__r_.__value_.__r.__words[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v47);
  v13 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, &v46);
  v14 = v13 + 3;
  if (!v13)
  {
    v14 = (this + 104);
  }

  if (v14[1] - *v14 != 8)
  {
    goto LABEL_43;
  }

  v46.__r_.__value_.__r.__words[0] = a2;
  LODWORD(v46.__r_.__value_.__r.__words[2]) = 0;
  v15 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v46);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v46, v15);
  v53 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v46);
  v16 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v53);
  v17 = v16 + 3;
  if (!v16)
  {
    v17 = (this + 104);
  }

  if (v17[1] == *v17)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v46);
LABEL_43:
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v47);
    return 0;
  }

  v19 = *v11;
  v18 = v11[1];
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v46);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v47);
  if (v18 == v19)
  {
    return 0;
  }

  std::set<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::set[abi:ne200100]<std::__wrap_iter<NodeKey<RawOrShared<ZinIrOpLayer>> const*>>(&v53, *v11, v11[1]);
  if (v53 != v54)
  {
    std::string::basic_string[abi:ne200100]<0>(&v47, "move_before");
    v20 = std::string::append(&v47, "_xfm", 4uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v52 = v20->__r_.__value_.__r.__words[2];
    v51 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    (*(*a2 + 40))(a2, 0);
    if (*(a2 + 71) >= 0)
    {
      v22 = *(a2 + 71);
    }

    else
    {
      v22 = a2[7];
    }

    std::string::basic_string[abi:ne200100](&v49, v22 + 1);
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v49;
    }

    else
    {
      v23 = v49.__r_.__value_.__r.__words[0];
    }

    if (v22)
    {
      if (*(a2 + 71) >= 0)
      {
        v24 = (a2 + 6);
      }

      else
      {
        v24 = a2[6];
      }

      memmove(v23, v24, v22);
    }

    *(&v23->__r_.__value_.__l.__data_ + v22) = 95;
    if (v52 >= 0)
    {
      v25 = &v51;
    }

    else
    {
      v25 = v51;
    }

    if (v52 >= 0)
    {
      v26 = HIBYTE(v52);
    }

    else
    {
      v26 = *(&v51 + 1);
    }

    v27 = std::string::append(&v49, v25, v26);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v50, "_tensor", 7uLL);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v48, 0);
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v48;
    }

    else
    {
      v31 = v48.__r_.__value_.__r.__words[0];
    }

    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v48.__r_.__value_.__l.__size_;
    }

    v33 = std::string::append(&v46, v31, size);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    ZinIrTensor::CreateTensor();
  }

  v47.__r_.__value_.__r.__words[0] = a2;
  LODWORD(v47.__r_.__value_.__r.__words[2]) = 0;
  v36 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v47);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v47, v36);
  v46.__r_.__value_.__r.__words[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v47);
  v37 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, &v46);
  v38 = (v37 + 3);
  if (!v37)
  {
    v38 = (this + 104);
  }

  v39 = **v38;
  memset(v44, 0, sizeof(v44));
  v45 = 1065353216;
  v40 = ZinIrOpLayerGraph::MoveOutgoingEdges(this, a2, v39, v44, 0, 0);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v44);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v47);
  v42.n128_u64[0] = a2;
  v43 = 0;
  v41 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v42);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v42, v41);
  v3 = v40 & ZinIrOpLayerGraph::RemoveNode(this, &v42, 0) & 1;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v42);
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(&v53, v54[0]);
  return v3;
}

void sub_1A68E0050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a12);
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(v48 - 136, *(v48 - 128));
  _Unwind_Resume(a1);
}

uint64_t ZinIrOpLayerGraph::SwapNodes(ZinIrOpLayerGraph *this, ZinIrOpLayer *a2, ZinIrOpLayer *a3)
{
  result = 0;
  if (a2 && a3)
  {
    v20.n128_u64[0] = a2;
    v21 = 0;
    v7 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v20);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v20, v7);
    v18.n128_u64[0] = a3;
    v19 = 0;
    v8 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v18);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v18, v8);
    IsConnected = ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::IsConnected(this, &v20, &v18);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v18);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v20);
    if ((IsConnected & 1) != 0 && ((MemoryPools = ZinIrContext::GetMemoryPools(a2), MemoryPools[1] - *MemoryPools == 8) || (OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(a2), OutgoingLayers[1] - *OutgoingLayers != 8) || (v12 = ZinIrContext::GetMemoryPools(a3), v12[1] - *v12 == 8)))
    {
      v13 = ZinIrOpLayerGraph::RemoveEdge(this, a2, a3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v14 = ZinIrOpLayerGraph::MoveIncomingEdges(this, a2, a3);
      memset(v16, 0, sizeof(v16));
      v17 = 1065353216;
      v15 = ZinIrOpLayerGraph::MoveOutgoingEdges(this, a3, a2, v16, 0, 0);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v16);
      return v13 & v14 & v15 & ZinIrOpLayerGraph::AddEdge(this, a3, a2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *ZinIrOpLayerGraph::DebugPrint@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v4, a1);
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v8);
}

void sub_1A68E0568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void ZinIrOpLayerGraph::CloneSubGraph(void *a1@<X0>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 40) = 1065353216;
  RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(*a1 + 32);
  RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(*a1 + 32);
  operator new();
}

void sub_1A68E0C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (*(v38 - 121) < 0)
  {
    operator delete(*(v38 - 144));
  }

  ZinIrClonedGraphInfo::~ZinIrClonedGraphInfo(v37);
  _Unwind_Resume(a1);
}

void std::vector<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 24;
    do
    {
      v6 = v5 - 24;
      std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(v5, *(v5 + 8));
      std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(v5 - 24, *(v5 - 16));
      v5 -= 48;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

void std::__tree<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Layer2TDMapper::LayerInfo>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,Layer2TDMapper::LayerInfo>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,Layer2TDMapper::LayerInfo>,0>(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);

    operator delete(v3);
  }
}

uint64_t std::vector<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>::__emplace_back_slow_path<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>(unint64_t *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>>(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  std::allocator_traits<std::allocator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>>::construct[abi:ne200100]<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack,ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack,void,0>(a1, (48 * v2), a2);
  v15 = 48 * v2 + 48;
  v7 = a1[1];
  v8 = (48 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>,ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>::~__split_buffer(&v13);
  return v12;
}

void sub_1A68E1094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>>::construct[abi:ne200100]<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack,ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack,void,0>(uint64_t a1, void *a2, void *a3)
{
  *a2 = *a3;
  v3 = a3 + 1;
  v4 = a3[1];
  a2[1] = v4;
  v5 = a2 + 1;
  v6 = a3[2];
  a2[2] = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    *a3 = v3;
    *v3 = 0;
    a3[2] = 0;
  }

  else
  {
    *a2 = v5;
  }

  a2[3] = a3[3];
  v7 = a3 + 4;
  v8 = a3[4];
  a2[4] = v8;
  v9 = a2 + 4;
  v10 = a3[5];
  a2[5] = v10;
  if (v10)
  {
    *(v8 + 16) = v9;
    a3[3] = v7;
    *v7 = 0;
    a3[5] = 0;
  }

  else
  {
    a2[3] = v9;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>,ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>>::construct[abi:ne200100]<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack,ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack,void,0>(a1, a4, v7);
      v7 += 6;
      a4 = v14 + 6;
      v14 += 6;
    }

    while (v7 != a3);
    v12 = 1;
    if (a2 != a3)
    {
      v8 = a2 + 3;
      do
      {
        std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(v8, v8[1]);
        std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy((v8 - 3), *(v8 - 2));
        v9 = v8 + 3;
        v8 += 6;
      }

      while (v9 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>,ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>,ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>,std::reverse_iterator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack*>,std::reverse_iterator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>,std::reverse_iterator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack*>,std::reverse_iterator<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3 - 24;
    do
    {
      v7 = v6 - 24;
      std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(v6, *(v6 + 8));
      std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(v6 - 24, *(v6 - 16));
      v6 -= 48;
    }

    while (v7 != a5);
  }
}

uint64_t std::__split_buffer<ZinIrOpLayerGraph::AddRemoveNodeHandler::TraverseStack>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(i - 24, *(i - 16));
    std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(i - 48, *(i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1A68E13F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    ZinValidationContext::Validate(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>::__shared_ptr_default_delete<ZinIrOpLayer,ZinIrOpLayer>,std::allocator<ZinIrOpLayer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>::__shared_ptr_default_delete<ZinIrOpLayer,ZinIrOpLayer>,std::allocator<ZinIrOpLayer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::list<RawOrShared<ZinIrOpLayer>>::__insert_with_sentinel[abi:ne200100]<std::__tree_const_iterator<RawOrShared<ZinIrOpLayer>,std::__tree_node<RawOrShared<ZinIrOpLayer>,void *> *,long>,std::__tree_const_iterator<RawOrShared<ZinIrOpLayer>,std::__tree_node<RawOrShared<ZinIrOpLayer>,void *> *,long>>(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  if (a3 != a4)
  {
    std::__list_imp<RawOrShared<ZinIrOpLayer>>::__create_node[abi:ne200100]<RawOrShared<ZinIrOpLayer> const&>(a1, 0, 0);
  }

  return a2;
}

void sub_1A68E15A4(void *a1)
{
  __cxa_begin_catch(a1);
  std::list<RawOrShared<ZinIrOpLayer>>::__insert_with_sentinel[abi:ne200100]<std::__tree_const_iterator<RawOrShared<ZinIrOpLayer>,std::__tree_node<RawOrShared<ZinIrOpLayer>,void *> *,long>,std::__tree_const_iterator<RawOrShared<ZinIrOpLayer>,std::__tree_node<RawOrShared<ZinIrOpLayer>,void *> *,long>>(v1);
  __cxa_rethrow();
}

uint64_t std::set<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::set[abi:ne200100]<std::__wrap_iter<NodeKey<RawOrShared<ZinIrOpLayer>> const*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__emplace_hint_unique_impl<ZinIrOpLayer* const&>(a1, (a1 + 8), a2);
  }

  return a1;
}

void std::list<RawOrShared<ZinIrOpLayer>>::__insert_with_sentinel[abi:ne200100]<std::__tree_const_iterator<RawOrShared<ZinIrOpLayer>,std::__tree_node<RawOrShared<ZinIrOpLayer>,void *> *,long>,std::__tree_const_iterator<RawOrShared<ZinIrOpLayer>,std::__tree_node<RawOrShared<ZinIrOpLayer>,void *> *,long>>(void *a1)
{
  do
  {
    v2 = *a1;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 2));
    operator delete(a1);
    a1 = v2;
  }

  while (v2);
}

void sub_1A68E1854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, ...)
{
  va_start(va, a15);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  ZinLayerNormLayer::ZinLayerNormLayer(va);
  _Unwind_Resume(a1);
}

uint64_t *ZinNEDualSourceElementWiseLayer::ExecutionOrderSort@<X0>(ZinNEDualSourceElementWiseLayer *this@<X0>, uint64_t *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v5[0] = RawOrShared<ZinBroadcastLayer>::unwrap_const_ptr(this + 600);
  v5[1] = RawOrShared<ZinBroadcastLayer>::unwrap_const_ptr(this + 784);
  v5[2] = RawOrShared<ZinElementWiseLayer>::unwrap_const_ptr(this + 760);
  v5[3] = RawOrShared<ZinGOCLayer>::unwrap_const_ptr(this + 648);
  v5[4] = RawOrShared<ZinActivationLayer>::unwrap_const_ptr(this + 672);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer * const*,ZinIrOpLayer * const*>(a2, v5, &v6, 5uLL);
}

void ZinNEDualSourceElementWiseLayer::CloneCore(uint64_t a1, uint64_t *a2, const void **a3)
{
  v6 = *(*a2 + 32);
  v7 = RawOrShared<ZinBroadcastLayer>::unwrap_const_ptr(a1 + 600);
  if (*(a3 + 23) >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  v9 = __p;
  std::string::basic_string[abi:ne200100](__p, v8 + 12);
  if (v28 < 0)
  {
    v9 = __p[0];
  }

  if (v8)
  {
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    memmove(v9, v10, v8);
  }

  strcpy(v9 + v8, "_ibroadcast1");
  ZinANELayer::CloneEncapsulatedLayer<ZinRCASLayer *>(v6, v7, __p);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = RawOrShared<ZinBroadcastLayer>::unwrap_const_ptr(a1 + 784);
  if (*(a3 + 23) >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = a3[1];
  }

  v13 = __p;
  std::string::basic_string[abi:ne200100](__p, v12 + 12);
  if (v28 < 0)
  {
    v13 = __p[0];
  }

  if (v12)
  {
    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    memmove(v13, v14, v12);
  }

  strcpy(v13 + v12, "_ibroadcast2");
  ZinANELayer::CloneEncapsulatedLayer<ZinRCASLayer *>(v6, v11, __p);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = RawOrShared<ZinElementWiseLayer>::unwrap_const_ptr(a1 + 760);
  if (*(a3 + 23) >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  v17 = __p;
  std::string::basic_string[abi:ne200100](__p, v16 + 3);
  if (v28 < 0)
  {
    v17 = __p[0];
  }

  if (v16)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    memmove(v17, v18, v16);
  }

  *(v17 + v16) = 7824735;
  ZinANELayer::CloneEncapsulatedLayer<ZinRCASLayer *>(v6, v15, __p);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v19 = RawOrShared<ZinGOCLayer>::unwrap_const_ptr(a1 + 648);
  if (*(a3 + 23) >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = a3[1];
  }

  v21 = __p;
  std::string::basic_string[abi:ne200100](__p, v20 + 4);
  if (v28 < 0)
  {
    v21 = __p[0];
  }

  if (v20)
  {
    if (*(a3 + 23) >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    memmove(v21, v22, v20);
  }

  strcpy(v21 + v20, "_goc");
  ZinANELayer::CloneEncapsulatedLayer<ZinRCASLayer *>(v6, v19, __p);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v23 = RawOrShared<ZinActivationLayer>::unwrap_const_ptr(a1 + 672);
  if (*(a3 + 23) >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = a3[1];
  }

  v25 = __p;
  std::string::basic_string[abi:ne200100](__p, v24 + 11);
  if (v28 < 0)
  {
    v25 = __p[0];
  }

  if (v24)
  {
    if (*(a3 + 23) >= 0)
    {
      v26 = a3;
    }

    else
    {
      v26 = *a3;
    }

    memmove(v25, v26, v24);
  }

  strcpy(v25 + v24, "_activation");
  ZinANELayer::CloneEncapsulatedLayer<ZinRCASLayer *>(v6, v23, __p);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_1A68E1DF8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  MEMORY[0x1AC55A070](v19, 0x10B3C406FC10DADLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t ZinNEDualSourceElementWiseLayer::DebugDetailPrint@<X0>(_BYTE *a1@<X8>)
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

void sub_1A68E2090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC559F60](&a26);
  _Unwind_Resume(a1);
}

void sub_1A68E21E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a18);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v23 = *(v21 - 40);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

ZinIrKernel *ZinNEDualSourceElementWiseLayer::GetFusedKernel@<X0>(void *a1@<X0>, ZinIrKernel **a3@<X8>)
{
  v27 = 0;
  if (*(*(RawOrShared<ZinElementWiseLayer>::unwrap_const_ptr((a1 + 95)) + 88) + 12) == 4 && RawOrShared<ZinGOCLayer>::unwrap_const_ptr((a1 + 81)) && *(RawOrShared<ZinGOCLayer>::unwrap_const_ptr((a1 + 81)) + 160))
  {
    v5 = (*(*a1 + 40))(a1, 0);
    v26 = 0;
    v24.__r_.__value_.__r.__words[0] = *(v5 + 72);
    *&v24.__r_.__value_.__r.__words[1] = xmmword_1A7595BC0;
    v25 = vdupq_n_s64(1uLL);
    v6 = (*(*a1 + 40))(a1, 0);
    CreateElementWiseSubCoefficients(v24.__r_.__value_.__l.__data_, *(v6 + 104), &v26, &v20);
  }

  result = RawOrShared<ZinGOCLayer>::unwrap_const_ptr((a1 + 81));
  if (result)
  {
    v8 = *(RawOrShared<ZinGOCLayer>::unwrap_const_ptr((a1 + 81)) + 160);
    *a3 = 0;
    if (v8)
    {
      v10 = *(RawOrShared<ZinGOCLayer>::unwrap_const_ptr((a1 + 81)) + 160);
      if (*(v10 + 23) >= 0)
      {
        v11 = *(v10 + 23);
      }

      else
      {
        v11 = v10[1];
      }

      v12 = &v24;
      std::string::basic_string[abi:ne200100](&v24, v11 + 1);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v24.__r_.__value_.__r.__words[0];
      }

      if (v11)
      {
        if (*(v10 + 23) >= 0)
        {
          v13 = v10;
        }

        else
        {
          v13 = *v10;
        }

        memmove(v12, v13, v11);
      }

      *(&v12->__r_.__value_.__l.__data_ + v11) = 95;
      std::string::basic_string[abi:ne200100]<0>(&v20, "fuse_negoc_kernel");
      v14 = std::string::append(&v20, "_xfm", 4uLL);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v23.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v23.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v23;
      }

      else
      {
        v16 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v23.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(&v24, v16, size);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v22 = v18->__r_.__value_.__r.__words[2];
      *__p = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      operator new();
    }

    if (*a3)
    {
      v9 = a1[65];
      if (v9)
      {
        ZinIrKernel::SetSmallSourceMode(*a3, *(v9 + 152));
      }
    }

    result = v27;
    v27 = 0;
    if (result)
    {
      ZinIrKernel::~ZinIrKernel(result);
      return MEMORY[0x1AC55A070]();
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_1A68E28D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  std::unique_ptr<ZinIrVector>::~unique_ptr[abi:ne200100]((v40 - 80));
  std::unique_ptr<ZinIrVector>::~unique_ptr[abi:ne200100]((v40 - 72));
  MEMORY[0x1AC55A070](v39, 0x1032C40733E5C38);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v40 - 113) < 0)
  {
    operator delete(*(v40 - 136));
  }

  std::unique_ptr<ZinIrKernel>::reset[abi:ne200100](v38, 0);
  std::unique_ptr<ZinIrKernel>::reset[abi:ne200100]((v40 - 88), 0);
  _Unwind_Resume(a1);
}

uint64_t ZinNEDualSourceElementWiseLayer::ComputeMirInfoCore(uint64_t a1, uint64_t a2, void *a3)
{
  (*(*a1 + 408))(v10);
  v5 = (*(*a1 + 40))(a1, 0);
  v6 = *a3;
  v7 = *(v5 + 72);
  v8 = v10[0];
  v6[9] = v10[1];
  v6[10] = v7;
  v6[12] = v8;
  return 0;
}

void ZinNEDualSourceElementWiseLayer::~ZinNEDualSourceElementWiseLayer(ZinEngineLayerMirInfo **this)
{
  ZinNEDualSourceElementWiseLayer::~ZinNEDualSourceElementWiseLayer(this);

  JUMPOUT(0x1AC55A070);
}

{
  *this = &unk_1F19EF588;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinBroadcastLayer *,std::shared_ptr<ZinBroadcastLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((this + 98));
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinElementWiseLayer *,std::shared_ptr<ZinElementWiseLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((this + 95));

  ZinNELayer::~ZinNELayer(this);
}

uint64_t RawOrShared<ZinNEDualSourceElementWiseLayer>::unwrap_ptr(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_1F19EF848[v1])(&v4, a1);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinNEDualSourceElementWiseLayer *,std::shared_ptr<ZinNEDualSourceElementWiseLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != -1)
  {
    result = (off_1F19EF858[v2])(&v3, result);
  }

  *(v1 + 16) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJP31ZinNEDualSourceElementWiseLayerNS_10shared_ptrIS8_EEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJS9_SB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

__n128 *RawOrShared<ZinNEDualSourceElementWiseLayer>::RawOrShared<RawOrShared<ZinIrOpLayer>>(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_ptr(a2);
  a1[1].n128_u32[0] = 0;
  v3 = RawOrShared<ZinNEDualSourceElementWiseLayer>::unwrap_ptr(a1);
  RawOrShared<ZinNEDualSourceElementWiseLayer>::update_this_if_shared(a1, v3);
  return a1;
}

void RawOrShared<ZinNEDualSourceElementWiseLayer>::update_this_if_shared(__n128 *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      shared_owners = v4->__shared_owners_;
      std::__shared_weak_count::__release_weak(v4);
      if (shared_owners != -1)
      {
        std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v6, (a2 + 8));
        v7 = v6;
        v6 = 0uLL;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<ZinNEDualSourceElementWiseLayer *,std::shared_ptr<ZinNEDualSourceElementWiseLayer>>>::__assign_alt[abi:ne200100]<1ul,std::shared_ptr<ZinNEDualSourceElementWiseLayer>,std::shared_ptr<ZinNEDualSourceElementWiseLayer>>(a1, a1, &v7);
        if (v7.n128_u64[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7.n128_u64[1]);
        }

        if (v6.n128_u64[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6.n128_u64[1]);
        }
      }
    }
  }
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<ZinNEDualSourceElementWiseLayer *,std::shared_ptr<ZinNEDualSourceElementWiseLayer>>>::__assign_alt[abi:ne200100]<1ul,std::shared_ptr<ZinNEDualSourceElementWiseLayer>,std::shared_ptr<ZinNEDualSourceElementWiseLayer>>(__n128 *a1, __n128 *a2, __n128 *a3)
{
  if (a1[1].n128_u32[0] == 1)
  {
    result = *a3;
    *a3 = 0uLL;
    v5 = a2->n128_u64[1];
    *a2 = result;
    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinNEDualSourceElementWiseLayer *,std::shared_ptr<ZinNEDualSourceElementWiseLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = *a3;
    *a1 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a1[1].n128_u32[0] = 1;
  }

  return result;
}

__n128 *RawOrShared<ZinIrOpLayer>::RawOrShared<RawOrShared<ZinNEDualSourceElementWiseLayer>>(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = RawOrShared<ZinNEDualSourceElementWiseLayer>::unwrap_ptr(a2);
  a1[1].n128_u32[0] = 0;
  v3 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(a1);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(a1, v3);
  return a1;
}

uint64_t ZinChannelToSpaceUtils::CreateFusedDeconv(uint64_t a1, void *a2, _OWORD *a3, void *a4, uint64_t a5)
{
  v6 = a2;
  v78[0] = *MEMORY[0x1E69E9840];
  v8 = a2[4];
  v57 = a4[11];
  v55 = (*(*a2 + 40))(a2, 0);
  v56 = v6;
  v54 = v6[20];
  ZinIrKernel::GetWeightDimensions(&v72, v54);
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v9 = (*(*v56 + 40))(v56, 0);
  LODWORD(v6) = ZinPixelShuffleUtils::GetShuffledKernelDimensions(&v72, v57 + 3, a5, *(v9 + 104), &v69);
  v67 = 0uLL;
  v68 = 0;
  if (v6 & ZinPixelShuffleUtils::GetFusedPadding(a3 + 8, v55 + 64, &v72, v54 + 88, &v69, v57 + 3, &v67))
  {
    v10 = v57[3];
    v11 = v57[4];
    details::ZinIrMappedData_Impl<ZinKernelPosition>::ZinIrMappedData_Impl(v73, *(&v69 + 1) * v69 * v70 * *(&v70 + 1) * v71);
    v50 = a1;
    v51 = a3;
    v49 = v8;
    v12 = v69;
    if (v69 >= 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(&v69 + 1);
      do
      {
        if (v15 >= 1)
        {
          v16 = 0;
          v17 = v70;
          do
          {
            if (v17 >= 1)
            {
              v18 = 0;
              v19 = *(&v70 + 1);
              do
              {
                v20 = v18 + 1;
                if (v19 >= 1)
                {
                  v21 = 0;
                  v58 = v14;
                  v22 = 40 * v14;
                  do
                  {
                    v23 = v69;
                    v24 = (*(*details::ZinIrMappedDataBase_Impl::backing_ + 24))(details::ZinIrMappedDataBase_Impl::backing_);
                    v25 = (v75 + v22);
                    if (!v24)
                    {
                      v25 = v73;
                    }

                    v26 = v21 / v10;
                    *v25 = v13 + (++v21 % v10 + v20 % v11 * v10) * v23;
                    v25[1] = v16;
                    v25[2] = v18 / v11;
                    v25[3] = v26;
                    v25[4] = 0;
                    v19 = *(&v70 + 1);
                    v22 += 40;
                  }

                  while (*(&v70 + 1) > v21);
                  v17 = v70;
                  v14 = v58 + v21;
                }

                ++v18;
              }

              while (v17 > v20);
              v15 = *(&v69 + 1);
            }

            ++v16;
          }

          while (v15 > v16);
          v12 = v69;
        }

        ++v13;
      }

      while (v12 > v13);
    }

    v27 = v56[20];
    if (*(v55 + 63) >= 0)
    {
      v28 = *(v55 + 63);
    }

    else
    {
      v28 = *(v55 + 48);
    }

    v29 = &v64;
    std::string::basic_string[abi:ne200100](&v64, v28 + 1);
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = v64.__r_.__value_.__r.__words[0];
    }

    if (v28)
    {
      if (*(v55 + 63) >= 0)
      {
        v30 = (v55 + 40);
      }

      else
      {
        v30 = *(v55 + 40);
      }

      memmove(v29, v30, v28);
    }

    *(&v29->__r_.__value_.__l.__data_ + v28) = 95;
    std::string::basic_string[abi:ne200100]<0>(&v61, "ctos_kernel");
    v31 = std::string::append(&v61, "_xfm", 4uLL);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v63 = v31->__r_.__value_.__r.__words[2];
    *v62 = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    if (v63 >= 0)
    {
      v33 = v62;
    }

    else
    {
      v33 = v62[0];
    }

    if (v63 >= 0)
    {
      v34 = HIBYTE(v63);
    }

    else
    {
      v34 = v62[1];
    }

    v35 = std::string::append(&v64, v33, v34);
    v36 = *&v35->__r_.__value_.__l.__data_;
    v66 = v35->__r_.__value_.__r.__words[2];
    *__p = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    v37 = v57[5];
    KernelSparsityCache = ZinIrContext::GetKernelSparsityCache(v56[4]);
    ZinIrKernel::ShuffleKernel(&v60, v27, v37, &v69, a5, KernelSparsityCache, &v67, 1, v54[94]);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62[0]);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    details::ZinIrMappedData_Impl<ZinKernelPosition>::~ZinIrMappedData_Impl(v73, v39, v40);
    if (v60)
    {
      v41 = (*(*a4 + 40))(a4, 0);
      std::string::basic_string[abi:ne200100]<0>(&v72, "ctos_fused");
      v42 = std::string::append(&v72, "_xfm", 4uLL);
      v43 = *&v42->__r_.__value_.__l.__data_;
      *&v73[16] = *(&v42->__r_.__value_.__l + 2);
      *v73 = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      v44 = std::string::insert(v73, 0, "_", 1uLL);
      v44->__r_.__value_.__r.__words[0] = 0;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      if ((v73[23] & 0x80000000) != 0)
      {
        operator delete(*v73);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      v45 = v51[3];
      v74 = v51[2];
      v75 = v45;
      v76[0] = v51[4];
      *(v76 + 13) = *(v51 + 77);
      v46 = v51[1];
      *v73 = *v51;
      *&v73[16] = v46;
      ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v77, (v51 + 6));
      memset(&v72, 0, sizeof(v72));
      std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v72, v73, v78, 1uLL);
      v47 = *(v41 + 104);
      v59 = v60;
      v60 = 0;
      ZinBuilder::CreateConv(v49, v50, &v72, v41 + 64, v47, &v59);
    }
  }

  else
  {
    v60 = 0;
  }

  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v60);
  return 0;
}

void sub_1A68E3420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ZinIrKernel *a26, ZinIrKernel *a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a26);
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&a43);
  v47 = *(v45 - 136);
  if (v47)
  {
    *(v45 - 128) = v47;
    operator delete(v47);
  }

  if (v43 < 0)
  {
    operator delete(v44);
  }

  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void ZinMirMemCacheStrategyNone::~ZinMirMemCacheStrategyNone(ZinMirMemCacheStrategyNone *this)
{
  ZinMirMemCacheStrategyBase::~ZinMirMemCacheStrategyBase(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t ZinParseRingBufferReaderUnit(const __CFDictionary *a1, ZinIrRingBufferReaderUnitInfo *a2, CFArrayRef *a3)
{
  Value = CFDictionaryGetValue(a1, @"Params");
  if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFDictionaryGetTypeID()))
  {
    v11 = @"InvalidParams";
LABEL_10:
    ZinIrUnitStatus::SetError(a3, v11);
    return 3;
  }

  v8 = CFDictionaryGetValue(v6, @"RingBufferReaderOffsetInfo");
  if (!v8 || (v9 = v8, v10 = CFGetTypeID(v8), v10 != CFArrayGetTypeID()) || ZinParseRingBufferOffset(v9, a2, a3))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinParseRingBufferReaderUnit();
    }

    v11 = @"InvalidUnitRingBufferOffset";
    goto LABEL_10;
  }

  if (ZinParseRingBufferReaderOutputSize(v6, a2, a3))
  {
    v11 = @"InvalidUnitRingBufferReaderOutputSizeInfo";
    goto LABEL_10;
  }

  v13 = *(a2 + 12);
  if (!v13)
  {
    return 0;
  }

  do
  {
    std::pair<ZinIrDimension const,ZinIrDynamicOffsetPerAxisInfo>::pair[abi:ne200100](v14, (v13 + 2));
    std::vector<std::string>::push_back[abi:ne200100](a2 + 40, &__p);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    result = 0;
    v13 = *v13;
  }

  while (v13);
  return result;
}

void sub_1A68E36F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrOpt::TopkGatherToTopk(void *a1, uint64_t a2)
{
  v13[29] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v7, "topk");
  v8[0] = &unk_1F19EF8C0;
  v8[3] = v8;
  v4 = 1;
  std::unordered_set<Attribute>::unordered_set(&v9, &v4, 1);
  std::string::basic_string[abi:ne200100]<0>(v10, "gather");
  v11[0] = &unk_1F19EF940;
  v11[3] = v11;
  v3 = 1;
  std::unordered_set<Attribute>::unordered_set(&v12, &v3, 1);
  memset(v5, 0, sizeof(v5));
  std::vector<ZinLinearPattern::AtomItemDesc>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItemDesc const*,ZinLinearPattern::AtomItemDesc const*>(v5, v7, v13, 2uLL);
  v6[0] = &unk_1F19EF9C0;
  v6[3] = v6;
  ZinLinearPattern::ZinLinearPattern(v13, v5, a2, 0, v6, 0);
  std::allocate_shared[abi:ne200100]<ZinLinearPattern,std::allocator<ZinLinearPattern>,ZinLinearPattern,0>();
}

void sub_1A68E39EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void **a53)
{
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](&a21);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a53);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0,std::allocator<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0>,MatchStatus ()(MatchParams const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 8) + 88);
  if (*(v2 + 8) == 67)
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1 | 0x100u;
}

uint64_t std::__function::__func<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0,std::allocator<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0>,MatchStatus ()(MatchParams const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_1,std::allocator<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_1>,MatchStatus ()(MatchParams const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(*(v2 + 11) + 8) == 56 && (MemoryPools = ZinIrContext::GetMemoryPools(v2), MemoryPools[1] - *MemoryPools == 16))
  {
    v5 = *(*(a2 + 8) + 88);
    v14 = 0;
    v15 = 0;
    __p = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, *(v5 + 176), *(v5 + 184), (*(v5 + 184) - *(v5 + 176)) >> 2);
    v6 = __p;
    if (v14 - __p != 4)
    {
      v9 = 0;
      if (!__p)
      {
        return v9 | 0x100u;
      }

      goto LABEL_15;
    }

    InputTensor = ZinIrOpLayer::GetInputTensor(*(a2 + 8), 1uLL);
    v8 = ZinIrOpLayer::GetInputTensor(*(a2 + 8), 0);
    v9 = 0;
    if (v8 && InputTensor)
    {
      ValueAt = GetValueAtDimension<ZinTensorDimensions>((InputTensor + 64), *__p);
      v9 = GetValueAtDimension<ZinTensorDimensions>((v8 + 64), *__p) >= ValueAt && (v11 = *(*(*ZinIrContext::GetMemoryPools(*(a2 + 8)) + 8) + 88), *(v11 + 8) == 67) && *(v11 + 16) == ValueAt;
    }

    v6 = __p;
    if (__p)
    {
LABEL_15:
      v14 = v6;
      operator delete(v6);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 | 0x100u;
}

void sub_1A68E3D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_1,std::allocator<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_1>,MatchStatus ()(MatchParams const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2,std::allocator<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2>,BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  std::string::basic_string[abi:ne200100]<0>(__p, "gather");
  SingleMatch = ZinPattern::GetSingleMatch(v4, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(*ZinIrContext::GetMemoryPools(SingleMatch) + 8);
  v7 = **ZinIrContext::GetMemoryPools(SingleMatch);
  return **ZinIrContext::GetMemoryPools(v6) == v7;
}

void sub_1A68E3F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2,std::allocator<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_2>,BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_3,std::allocator<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_3>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19EFA40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_3,std::allocator<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_3>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1, ZinIrOpLayerGraph **a2, uint64_t *a3)
{
  v35[0] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *v3;
  v25 = v3[1];
  if (*v3 != v25)
  {
    v5 = *a2;
    do
    {
      v6 = v5;
      if ((*(**v4 + 8))())
      {
        v7 = *v4;
        std::string::basic_string[abi:ne200100]<0>(__p, "gather");
        SingleMatch = ZinPattern::GetSingleMatch(v7, __p);
        v9 = SingleMatch;
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if (v9)
          {
LABEL_8:
            v10 = *(*ZinIrContext::GetMemoryPools(v9) + 8);
            v11 = **ZinIrContext::GetMemoryPools(v9);
            ZinIrOpLayer::GetOutgoingLayers(v9);
            v12 = *(v10 + 88);
            v23 = *(v12 + 28);
            v24 = *(v12 + 24);
            v22 = *(v12 + 12);
            v13 = *((*(*v9 + 40))(v9, 0) + 104);
            v14 = *(v12 + 16);
            if (*(v10 + 71) >= 0)
            {
              v15 = *(v10 + 71);
            }

            else
            {
              v15 = *(v10 + 56);
            }

            std::string::basic_string[abi:ne200100](__p, v15 + 4);
            if (__p[23] >= 0)
            {
              v16 = __p;
            }

            else
            {
              v16 = *__p;
            }

            if (v15)
            {
              if (*(v10 + 71) >= 0)
              {
                v17 = (v10 + 48);
              }

              else
              {
                v17 = *(v10 + 48);
              }

              memmove(v16, v17, v15);
            }

            strcpy(&v16[v15], "topk");
            ZinObjectNameFactory::ZinObjectNameFactory(&v31, __p);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            (*(*v11 + 88))(__p, v11, 0);
            v18 = (*(*v9 + 40))(v9, 0);
            *&__p[40] = *(v18 + 96);
            v19 = *(v18 + 64);
            *&__p[24] = *(v18 + 80);
            *&__p[8] = v19;
            v20 = *(v10 + 32);
            v32[2] = *&__p[32];
            v32[3] = v28;
            v33[0] = v29[0];
            *(v33 + 13) = *(v29 + 13);
            v32[0] = *__p;
            v32[1] = *&__p[16];
            ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v34, &v30);
            memset(v26, 0, 24);
            std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v26, v32, v35, 1uLL);
            ZinBuilder::CreateTopK(v20, &v31, v26, v13, v22, v14, v24, v23, v12 + 32, 0);
          }
        }

        else if (SingleMatch)
        {
          goto LABEL_8;
        }
      }

      v4 += 2;
      v5 = v6;
    }

    while (v4 != v25);
  }

  return 0;
}

void sub_1A68E451C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_3,std::allocator<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_3>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_3,std::allocator<ZinIrOpt::TopkGatherToTopk(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_3>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v1 = *v1;
  }

  v2 = 136315138;
  v3 = v1;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: Unable to fuse %s and gather to topk\n", &v2, 0xCu);
}

uint64_t ZinPixelShuffleUnshuffleTransform::ZinPixelShuffleUnshuffleTransform(uint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  *result = &unk_1F19EFAC0;
  *(result + 8) = a2;
  *(result + 16) = *a3;
  *(result + 32) = *a4;
  v4 = a4 + 1;
  v5 = a4[1];
  *(result + 40) = v5;
  v6 = result + 40;
  v7 = a4[2];
  *(result + 48) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *a4 = v4;
    *v4 = 0;
    a4[2] = 0;
  }

  else
  {
    *(result + 32) = v6;
  }

  *(result + 56) = 0;
  return result;
}

uint64_t ZinPixelShuffleUnshuffleTransform::Run(uint64_t a1, uint64_t a2, ZinMirUnit **a3, void *a4)
{
  if (*(a1 + 8) != *(*a3 + 13))
  {
    ZinAssertImpl("Error: Serialized source layer group ID does not match current node.", a2);
  }

  if (a4[1] == *a4)
  {
    ZinAssertImpl("Error: Invalid number of input dimensions.", a2);
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    v6 = *(a1 + 16);
    if (v6 != 1)
    {
      if (!v6)
      {
        operator new();
      }

      ZinAssertImpl("Error: Unknown ZinPixelShuffleUnshuffleTransform type.");
    }

    operator new();
  }

  v7 = ZinMirUnit::Opcode(*a3);
  result = (*(*v5 + 24))(v5, v7);
  if (result)
  {
    v9 = *(**(a1 + 56) + 16);

    return v9();
  }

  return result;
}

void ZinPixelShuffleUnshuffleTransform::~ZinPixelShuffleUnshuffleTransform(ZinPixelShuffleUnshuffleTransform *this)
{
  ZinPixelShuffleUnshuffleTransform::~ZinPixelShuffleUnshuffleTransform(this);

  JUMPOUT(0x1AC55A070);
}

{
  *this = &unk_1F19EFAC0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 32, *(this + 5));
}

uint64_t PixelShuffleHandler::Run(uint64_t a1, uint64_t a2, ZinMirUnit **a3, uint64_t *a4)
{
  if (*ZinMirUnit::Opcode(*a3) != 33)
  {
    return 0;
  }

  return PixelShuffleHandler::UpdateAliasNodeOutputDims(a1, a2, a3, a4);
}

uint64_t PixelShuffleHandler::UpdateAliasNodeOutputDims(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a4;
  if (a4[1] - *a4 != 40)
  {
    ZinAssertImpl("Error: Invalid number of inputs for Alias.", a2, a3);
  }

  v6 = *(a1 + 8);
  v8 = *(v6 + 4);
  v9 = *(v6 + 8);
  v7 = (v6 + 4);
  if (*(v5 + 8) % (v9 * v8 * v7[2]))
  {
    ZinAssertImpl("Error: Input dimensions are invalid; must be a multiple of the shuffle factor.");
  }

  ZinPixelShuffleUtils::GetAliasDims(v5, v7, v12);
  return ZinMirAliasUnit::SetOutputDimensions(*a3, v12);
}

uint64_t PixelUnshuffleHandler::Run(uint64_t a1, uint64_t a2, ZinMirUnit **a3, uint64_t *a4)
{
  v8 = *ZinMirUnit::Opcode(*a3);
  switch(v8)
  {
    case '%':

      return PixelUnshuffleHandler::UpdateViewNodeViewInfoSize(a1, a2, a3, a4);
    case '$':

      return PixelUnshuffleHandler::UpdateReshapeNodeOutputDims(a1, a2, a3, a4);
    case '!':

      return PixelUnshuffleHandler::UpdateAliasNodeOutputDims(a1, a2, a3, a4);
    default:
      return 0;
  }
}

uint64_t PixelUnshuffleHandler::UpdateAliasNodeOutputDims(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a4;
  if (a4[1] - *a4 != 40)
  {
    ZinAssertImpl("Error: Invalid number of inputs for Alias.", a2, a3);
  }

  v5 = *(a1 + 8);
  if (*(v5 + 12) != 1)
  {
    ZinAssertImpl("Error: PixelShuffle factor z have to be 1", a2, a3);
  }

  v6 = *(v5 + 4);
  if (*(v4 + 24) % v6)
  {
    ZinAssertImpl("Error: Input dimensions are invalid; must be a multiple of the shuffle factor.", a2, a3);
  }

  v7 = *(v4 + 32);
  v8 = *(v4 + 16);
  *&v10 = *v4;
  v11 = v8;
  v12 = v7;
  *(&v10 + 1) = v6;
  if (!v6 || *(&v11 + 1) % v6)
  {
    ZinAssertImpl("Input width cannot divided by factor.x", a2, a3, v10, v11);
  }

  *(&v11 + 1) /= v6;
  return ZinMirAliasUnit::SetOutputDimensions(*a3, &v10);
}

uint64_t PixelUnshuffleHandler::UpdateViewNodeViewInfoSize(uint64_t a1, uint64_t a2, ZinMirViewUnit **a3, void *a4)
{
  v4 = *(a1 + 16);
  v7 = *(v4 + 8);
  v5 = v4 + 8;
  v6 = v7;
  if (v7)
  {
    v9 = *(*a3 + 12);
    v10 = v5;
    do
    {
      v11 = *(v6 + 32);
      v12 = v11 >= v9;
      v13 = v11 < v9;
      if (v12)
      {
        v10 = v6;
      }

      v6 = *(v6 + 8 * v13);
    }

    while (v6);
    if (v10 != v5 && v9 >= *(v10 + 32))
    {
      if (a4[1] - *a4 != 40)
      {
        ZinAssertImpl("Error: Invalid number of inputs for View.", a2);
      }

      v14 = *(a1 + 8);
      if (*(*a4 + 16) % *(v14 + 8))
      {
        ZinAssertImpl("Error: Input dimensions are invalid; height must be a multiple of the shuffle factor.", a2);
      }

      Views = ZinMirViewUnit::GetViews(*a3);
      v16 = *Views;
      v17 = Views[1];
      if (*Views != v17)
      {
        v18 = *a4;
        do
        {
          if (*(*v16 + 92) != 3)
          {
            ZinAssertImpl("Error: Unexpected view dimension.");
          }

          *(*v16 + 84) = *(v18 + 16) / *(v14 + 8);
          v16 += 8;
        }

        while (v16 != v17);
      }
    }
  }

  return 0;
}

uint64_t PixelUnshuffleHandler::UpdateReshapeNodeOutputDims(uint64_t a1, uint64_t a2, ZinMirUnit **a3, void *a4)
{
  if (a4[1] - *a4 != 40)
  {
    ZinAssertImpl("Error: Invalid number of inputs for View.", a2, a3);
  }

  AotTensorDims = ZinMirUnit::GetAotTensorDims(*a3);
  v7 = *AotTensorDims;
  v8 = *(AotTensorDims + 16);
  v12 = *(AotTensorDims + 32);
  v10 = v7;
  v11 = v8;
  v11 = *(*a4 + 16);
  return ZinMirReshapeUnit::SetOutputDimensions(*a3, &v10);
}

BOOL ZinAneTd<1u>::SetL2SrcBaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 232), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Start Address");
  }

  *(a1 + 68) = *(a1 + 68) & 0xFFE00000 | v4 & 0x1FFFFF;
  return result;
}

BOOL ZinAneTd<1u>::SetL2Src1ChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 280), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Channel Stride");
  }

  *(a1 + 88) = *(a1 + 88) & 0xFFE00000 | v4 & 0x1FFFFF;
  return result;
}

BOOL ZinAneTd<1u>::SetL2SrcRowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 432) + 276), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::ValueToRegister(v8, (*(a1 + 432) + 272), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Row Stride");
  }

  *(a1 + 84) = *(a1 + 84) & 0xFFE00000 | v7 & 0x1FFFFF;
  return result;
}

void ZinAneTd<1u>::SetL2Src1DepthStride()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v0 = 0;
    _os_log_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Depth Stride not programmed", v0, 2u);
  }
}

BOOL ZinAneTd<1u>::SetL2Src1GroupStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 288), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Group Stride");
  }

  *(a1 + 96) = *(a1 + 96) & 0xFFE00000 | v4 & 0x1FFFFF;
  return result;
}

uint64_t ZinAneTd<1u>::SetL2Src1DmaFormat(uint64_t result, int a2)
{
  switch(a2)
  {
    case 3:
      v4 = *(result + 16) & 0xFFFFFCFF | 0x200;
      break;
    case 2:
      v4 = *(result + 16) & 0xFFFFFCFF;
      break;
    case 1:
      v4 = *(result + 16) & 0xFFFFFCFF | 0x100;
      break;
    default:
      ZinAssertImpl("Invalid input tensor format used\n", v2, v3);
  }

  *(result + 16) = v4;
  return result;
}

void ZinAneTd<1u>::SetL2Src1DmaDoubleRateMode(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("DoubleRateMode is not available on this architecture.", v2, v3);
  }
}

BOOL ZinAneTd<1u>::SetSrc1BoundaryRegisters(uint64_t a1, unint64_t *a2)
{
  v5 = 0;
  if (!ZinCodegenUtil::ValueToRegister(*a2, (*(a1 + 432) + 240), &v5) || (*(a1 + 76) = *(a1 + 76) & 0x8000FFFF | ((v5 & 0x7FFF) << 16), v5 = 0, !ZinCodegenUtil::ValueToRegister(a2[1], (*(a1 + 432) + 248), &v5)) || (*(a1 + 76) = v5, v5 = 0, !ZinCodegenUtil::ValueToRegister(a2[2], (*(a1 + 432) + 256), &v5)) || (*(a1 + 80) = *(a1 + 80) & 0x8000FFFF | ((v5 & 0x7FFF) << 16), v5 = 0, !(result = ZinCodegenUtil::ValueToRegister(a2[3], (*(a1 + 432) + 264), &v5))))
  {
    ZinAssertImpl("Illegal Value");
  }

  *(a1 + 80) = v5;
  return result;
}

uint64_t ZinAneTd<1u>::SetL2ResultCfgDmaFmt(uint64_t result, int a2)
{
  switch(a2)
  {
    case 3:
      v4 = *(result + 16) & 0xFFFFCFFF | 0x2000;
      break;
    case 2:
      v4 = *(result + 16) & 0xFFFFCFFF;
      break;
    case 1:
      v4 = *(result + 16) & 0xFFFFCFFF | 0x1000;
      break;
    default:
      ZinAssertImpl("Invalid tensor format", v2, v3);
  }

  *(result + 16) = v4;
  return result;
}

BOOL ZinAneTd<1u>::SetDstBoundaryRegisters(uint64_t a1, unint64_t *a2)
{
  v5 = 0;
  if (!ZinCodegenUtil::ValueToRegister(*a2, (*(a1 + 432) + 368), &v5) || (*(a1 + 156) = *(a1 + 156) & 0x8000FFFF | ((v5 & 0x7FFF) << 16), v5 = 0, !ZinCodegenUtil::ValueToRegister(a2[1], (*(a1 + 432) + 376), &v5)) || (*(a1 + 156) = v5, v5 = 0, !ZinCodegenUtil::ValueToRegister(a2[2], (*(a1 + 432) + 384), &v5)) || (*(a1 + 160) = *(a1 + 160) & 0x8000FFFF | ((v5 & 0x7FFF) << 16), v5 = 0, !(result = ZinCodegenUtil::ValueToRegister(a2[3], (*(a1 + 432) + 392), &v5))))
  {
    ZinAssertImpl("Illegal Value");
  }

  *(a1 + 160) = v5;
  return result;
}

void ZinAneTd<1u>::SetL2SrcOffsetXlsbs(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Invalid Offset X Lsbs for architecture", v2, v3);
  }
}

unint64_t ZinAneTd<1u>::SetL2SrcNumInterleavedChannels(uint64_t a1, unint64_t a2)
{
  result = ZinIrCodegenValueToRegister(a2, dword_1EB28AE10);
  *(a1 + 20) = *(a1 + 20) & 0xFFFFF000 | result & 0xFFF;
  return result;
}

void ZinAneTd<1u>::SetSourceAddrWrap(uint64_t a1, int a2, int a3)
{
  if (a3 | a2)
  {
    ZinAssertImpl("Source wrapping start offset or wrap index not acceptable\n", v3, v4);
  }
}

void ZinAneTd<1u>::SetSourceWrap(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 | a3)
  {
    ZinAssertImpl("Source wrapping start offset or wrap index not acceptable\n", a2, v4, v5);
  }
}

void ZinAneTd<1u>::SetL2Src1FIFOMode(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Input DMA FIFO is not supported", v2, v3);
  }
}

BOOL ZinAneTd<1u>::SetL2Src2BaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 304), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src2 Base Address");
  }

  *(a1 + 116) = *(a1 + 116) & 0xFFE00000 | v4 & 0x1FFFFF;
  return result;
}

BOOL ZinAneTd<1u>::SetL2Src2ChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 352), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src2 Channel Stride");
  }

  *(a1 + 136) = *(a1 + 136) & 0xFFE00000 | v4 & 0x1FFFFF;
  return result;
}

BOOL ZinAneTd<1u>::SetL2Src2RowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 432) + 348), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::ValueToRegister(v8, (*(a1 + 432) + 344), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src2 Row Stride");
  }

  *(a1 + 132) = *(a1 + 132) & 0xFFE00000 | v7 & 0x1FFFFF;
  return result;
}

void ZinAneTd<1u>::SetL2Src2OffsetXlsbs(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Invalid Offset2 X Lsbs for architecture", v2, v3);
  }
}

unint64_t ZinAneTd<1u>::SetL2Src2NumInterleavedChannels(uint64_t a1, unint64_t a2)
{
  result = ZinIrCodegenValueToRegister(a2, &unk_1EB28AE08);
  *(a1 + 16) = *(a1 + 16) & 0xF000FFFF | ((result & 0xFFF) << 16);
  return result;
}

BOOL ZinAneTd<1u>::SetSrc2BoundaryRegisters(uint64_t a1, unint64_t *a2)
{
  v5 = 0;
  if (!ZinCodegenUtil::ValueToRegister(*a2, (*(a1 + 432) + 312), &v5) || (*(a1 + 124) = *(a1 + 124) & 0x8000FFFF | ((v5 & 0x7FFF) << 16), v5 = 0, !ZinCodegenUtil::ValueToRegister(a2[1], (*(a1 + 432) + 320), &v5)) || (*(a1 + 124) = v5, v5 = 0, !ZinCodegenUtil::ValueToRegister(a2[2], (*(a1 + 432) + 328), &v5)) || (*(a1 + 128) = *(a1 + 128) & 0x8000FFFF | ((v5 & 0x7FFF) << 16), v5 = 0, !(result = ZinCodegenUtil::ValueToRegister(a2[3], (*(a1 + 432) + 336), &v5))))
  {
    ZinAssertImpl("Illegal Value");
  }

  *(a1 + 128) = v5;
  return result;
}

uint64_t ZinAneTd<1u>::SetOpMode(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v2 = *(result + 44) & 0xFFFFFFF8 | 1;
    }

    else
    {
      v2 = *(result + 44) & 0xFFFFFFF8;
    }

    goto LABEL_11;
  }

  if (a2 <= 4)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        ZinAssertImpl("EWMul not valid for architecture");
      }

      ZinAssertImpl("EWSqr not valid for architecture");
    }

    v2 = *(result + 44) & 0xFFFFFFF8 | 3;
    goto LABEL_11;
  }

  if (a2 == 7)
  {
    v2 = *(result + 44) & 0xFFFFFFF8 | 4;
LABEL_11:
    *(result + 44) = v2;
    return result;
  }

  if ((a2 - 5) < 2)
  {
    ZinAssertImpl("Bypass and RCAS not valid for architecture");
  }

  return result;
}

uint64_t ZinAneTd<1u>::SetElementWiseOp(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v4 = *(result + 44) & 0xFF8FFFFF | 0x300000;
  }

  else if (a2 == 1)
  {
    v4 = *(result + 44) & 0xFF8FFFFF | 0x100000;
  }

  else
  {
    if (a2)
    {
      ZinAssertImpl("Invalid ElementWiseOp for this architecture", v2, v3);
    }

    v4 = *(result + 44) & 0xFF8FFFFF;
  }

  *(result + 44) = v4;
  return result;
}

BOOL ZinAneTd<1u>::SetSplitRowCompute(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 8), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal Value");
  }

  *(a1 + 16) = *(a1 + 16) & 0xFFFFFFDF | (32 * (v4 & 1));
  return result;
}

uint64_t ZinAneTd<1u>::SetOCModeEnc(uint64_t result, int a2)
{
  if (a2 == 1)
  {
    v4 = *(result + 16) | 0x10;
  }

  else
  {
    if (a2)
    {
      ZinAssertImpl("Illegal value", v2, v3);
    }

    v4 = *(result + 16) & 0xFFFFFFEF;
  }

  *(result + 16) = v4;
  return result;
}

uint64_t ZinAneTd<1u>::SetKernelMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 0:
      v4 = *(result + 44) & 0xFFFFFFF7;
      goto LABEL_7;
    case 2:
      v4 = *(result + 44) | 8;
LABEL_7:
      *(result + 44) = v4;
      return result;
    case 1:
      ZinAssertImpl("Unsupported Kernel Mode", v2, v3);
  }

  return result;
}

void ZinAneTd<1u>::SetPassthroughEnable(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Passthrough flag not supported on this arch.", v2, v3);
  }
}

uint64_t ZinAneTd<1u>::SetKernelFmt(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 40) & 0xFFFFFFFC | 1;
    }

    else
    {
      v4 = *(result + 40) & 0xFFFFFFFC;
    }

    goto LABEL_8;
  }

  if (a2 == 2)
  {
    v4 = *(result + 40) & 0xFFFFFFFC | 2;
LABEL_8:
    *(result + 40) = v4;
    return result;
  }

  if (a2 == 3)
  {
    ZinAssertImpl("Unsupported kernel format", v2, v3);
  }

  return result;
}

BOOL ZinAneTd<1u>::SetKernelDmaSrcCoeffMemBufferSize(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 536), &v4);
  if (result)
  {
    *(a1 + 376) = *(a1 + 376) & 0x8000001F | (32 * (v4 & 0x3FFFFFF));
  }

  return result;
}

uint64_t ZinAneTd<1u>::SetTileDmaSrc1CacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v2 = 2048;
    }

    else
    {
      v2 = 14336;
    }

    goto LABEL_8;
  }

  switch(a2)
  {
    case 3:
      v2 = 12288;
LABEL_8:
      *(result + 308) = *(result + 308) & 0xFFFFC3FF | v2;
      return result;
    case 2:
      ZinAssertImpl("Drop CacheHint not supported on Src1");
    case 4:
      ZinAssertImpl("Invalid CacheHint");
  }

  return result;
}

BOOL ZinAneTd<1u>::SetTileDmaSrc1ChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 504), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Channel Stride");
  }

  *(a1 + 336) = *(a1 + 336) & 0xF | (16 * v4);
  return result;
}

BOOL ZinAneTd<1u>::SetTileDmaSrc1BatchStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 512), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Batch Stride");
  }

  *(a1 + 340) = *(a1 + 340) & 0xF | (16 * v4);
  return result;
}

BOOL ZinAneTd<1u>::SetTileDmaSrc1RowStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 496), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Row Stride");
  }

  *(a1 + 332) = *(a1 + 332) & 0xF | (16 * v4);
  return result;
}

BOOL ZinAneTd<1u>::SetTileDmaSrc2ChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 504), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Channel Stride");
  }

  *(a1 + 336) = *(a1 + 336) & 0xF | (16 * v4);
  return result;
}

BOOL ZinAneTd<1u>::SetTileDmaSrc2RowStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 496), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc2 Row Stride");
  }

  *(a1 + 332) = *(a1 + 332) & 0xF | (16 * v4);
  return result;
}

uint64_t ZinAneTd<1u>::SetTileDmaDstFormat(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v3 = *(result + 316) & 0xFFFFCFCC;
      v4 = 8241;
    }

    else
    {
      if (a2 != 11)
      {
        goto LABEL_12;
      }

      v3 = *(result + 316);
      v4 = 12291;
    }

    v2 = v3 | v4;
    goto LABEL_11;
  }

  if (a2 == 1)
  {
    v2 = *(result + 316) & 0xFFFFCFFC | 0x1000;
    goto LABEL_11;
  }

  if (a2 != 2)
  {
LABEL_12:
    ZinAssertImpl("dma format %d format not implemented yet\n", a2);
  }

  v2 = *(result + 316) & 0xFFFFCFFC;
LABEL_11:
  *(result + 316) = v2;
  return result;
}

void ZinAneTd<1u>::SetTileDmaDstandL2DstInterleave()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v0 = 0;
    _os_log_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "HW does not support DMA Interleave", v0, 2u);
  }
}

uint64_t ZinAneTd<1u>::SetTileDmaDstCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v2 = 2048;
    }

    else
    {
      v2 = 14336;
    }

    goto LABEL_8;
  }

  switch(a2)
  {
    case 3:
      v2 = 12288;
LABEL_8:
      *(result + 308) = *(result + 308) & 0xFFFFC3FF | v2;
      return result;
    case 2:
      ZinAssertImpl("Drop CacheHint not supported on Dst");
    case 4:
      ZinAssertImpl("Invalid CacheHint");
  }

  return result;
}

BOOL ZinAneTd<1u>::SetTileDmaDstChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 504), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Channel Stride");
  }

  *(a1 + 336) = *(a1 + 336) & 0xF | (16 * v4);
  return result;
}

BOOL ZinAneTd<1u>::SetTileDmaDstRowStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 496), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Row Stride");
  }

  *(a1 + 332) = *(a1 + 332) & 0xF | (16 * v4);
  return result;
}

BOOL ZinAneTd<1u>::SetTileDmaDstBatchStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 512), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaDst Batch Stride");
  }

  *(a1 + 340) = *(a1 + 340) & 0xF | (16 * v4);
  return result;
}

void ZinAneTd<1u>::SetCacheDmaPreEnable(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Cache Prefetch not supported", v2, v3);
  }
}

void ZinAneTd<1u>::SetCacheDmaPrePause(uint64_t a1, char a2, char a3, int a4, int a5)
{
  if ((a2 & 1) != 0 || (a3 & 1) != 0 || a5 || a4)
  {
    ZinAssertImpl("Cache Prefetch Pause not supported", v5, v6);
  }
}

void ZinAneTd<1u>::SetCacheDmaPreThrottle(uint64_t a1, char a2, char a3, int a4, int a5, int a6)
{
  if ((a2 & 1) != 0 || (a3 & 1) != 0 || a6 | a5 || a4)
  {
    ZinAssertImpl("Cache Prefetch Throttle not supported", v6, v7);
  }
}

void ZinAneTd<1u>::SetCacheDmaPrePrefetchRate(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Cache Prefetch Rate not supported", v2, v3);
  }
}

void ZinAneTd<1u>::Set1DWinogradMode(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("1D Winograd is not supported", v2, v3);
  }
}

uint64_t ZinAneTd<1u>::SetKernelPalettizedEn(uint64_t result, unsigned int a2)
{
  if (a2 - 19 < 4)
  {
    v2 = 4;
    goto LABEL_3;
  }

  v2 = 0;
  if (a2 > 14)
  {
    if (a2 > 0x20)
    {
      goto LABEL_3;
    }

    if (((1 << a2) & 0xF800000) != 0)
    {
LABEL_14:
      ZinAssertImpl("Invalid kernel format");
    }

    if (((1 << a2) & 0x1F0000000) == 0)
    {
      if (((1 << a2) & 0x78000) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

LABEL_13:
    ZinAssertImpl("Unknown kernel format in codegen\n");
  }

  if (a2 - 7 < 8)
  {
    goto LABEL_14;
  }

  if (!a2 || a2 == 3)
  {
    goto LABEL_13;
  }

LABEL_3:
  *(result + 40) = *(result + 40) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t ZinAneTd<1u>::SetKernelPalettizedBits(uint64_t result, int a2)
{
  if (a2 <= 22)
  {
    if (a2 > 10)
    {
      if ((a2 - 11) < 4 || (a2 - 15) < 4)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if ((a2 - 7) < 4)
    {
      goto LABEL_14;
    }

    if (a2 && a2 != 3)
    {
      goto LABEL_13;
    }

LABEL_15:
    ZinAssertImpl("Unknown kernel format in codegen\n");
  }

  if ((a2 - 28) < 5)
  {
    goto LABEL_15;
  }

  if ((a2 - 23) < 4 || a2 == 27)
  {
LABEL_14:
    ZinAssertImpl("Invalid kernel format");
  }

LABEL_13:
  *(result + 40) &= 0xFFFFFFE7;
  return result;
}

uint64_t ZinAneTd<1u>::SetNENonLinearMode(uint64_t result, int a2, uint64_t a3)
{
  if (a2)
  {
    if (a2 == 1)
    {
      a2 = 0x20000;
    }

    else
    {
      v3 = *a3;
      v4 = *(a3 + 8);
      if (*a3 != v4)
      {
        while (*v3 != a2)
        {
          if (++v3 == v4)
          {
            goto LABEL_7;
          }
        }
      }

      if (v3 == v4)
      {
LABEL_7:
        ZinAssertImpl("Error: illegal non-linear mode\n");
      }

      a2 = 0x40000;
    }
  }

  *(result + 44) = *(result + 44) & 0xFFF9FFFF | a2;
  return result;
}

uint64_t ZinAneTd<1u>::SetNEPostScale(uint64_t result, unint64_t a2, char a3)
{
  _S0 = a2;
  __asm { FCVT            H0, S0 }

  v8 = _S0;
  if (!_ZF)
  {
    v8 = 15360;
  }

  v9 = (a2 & 0x10000000000) >> 24;
  if (a3)
  {
    v10 = -((a2 >> 16) & 0x1F0000) & 0x1F0000 | v8;
  }

  else
  {
    LODWORD(v9) = 0;
    v10 = 15360;
  }

  *(result + 44) = *(result + 44) & 0xFFFEFFFF | v9;
  *(result + 52) = v10 | *(result + 52) & 0xFFE00000;
  return result;
}

uint64_t ZinAneTd<1u>::SetNEBias(uint64_t result, unint64_t a2, char a3)
{
  _S0 = a2;
  __asm { FCVT            H0, S0 }

  v8 = _S0;
  if (!_ZF)
  {
    v8 = 0;
  }

  v9 = (a2 & 0x10000000000) >> 36;
  v10 = (a2 >> 16) & 0x1F0000 | v8;
  if ((a3 & 1) == 0)
  {
    LODWORD(v9) = 0;
    v10 = 0;
  }

  v11 = v10 | *(result + 48) & 0xFFE00000;
  *(result + 44) = *(result + 44) & 0xFFFFFFCF | v9;
  *(result + 48) = v11;
  return result;
}

uint64_t ZinAneTd<1u>::SetCoutBatchLimiter(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v3 = v2 & 0xFFFFFFF8;
        goto LABEL_17;
      case 1:
        v3 = v2 & 0xFFFFFFF8 | 1;
        goto LABEL_17;
      case 2:
        v3 = v2 & 0xFFFFFFF8 | 2;
        goto LABEL_17;
    }

LABEL_13:
    v3 = v2 | 7;
    goto LABEL_17;
  }

  if (a2 > 4)
  {
    if (a2 == 5)
    {
      v3 = v2 & 0xFFFFFFF8 | 5;
      goto LABEL_17;
    }

    if (a2 == 6)
    {
      v3 = v2 & 0xFFFFFFF8 | 6;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (a2 == 3)
  {
    v3 = v2 & 0xFFFFFFF8 | 3;
  }

  else
  {
    v3 = v2 & 0xFFFFFFF8 | 4;
  }

LABEL_17:
  *(result + 16) = v3;
  return result;
}

void ZinAneTd<1u>::SetNEHalfWUMode(uint64_t a1, char a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: HalfWU mode is not supported", v2, v3);
  }
}

uint64_t ZinAneTd<1u>::SetCommonInFmt(uint64_t result, int a2)
{
  switch(a2)
  {
    case 3:
      v4 = *(result + 16) & 0xFFFFFCFF | 0x200;
      break;
    case 2:
      v4 = *(result + 16) & 0xFFFFFCFF;
      break;
    case 1:
      v4 = *(result + 16) & 0xFFFFFCFF | 0x100;
      break;
    default:
      ZinAssertImpl("Error: Invalid TD programming for Src1 input format", v2, v3);
  }

  *(result + 16) = v4;
  return result;
}

uint64_t ZinAneTd<1u>::SetCommonSrc2InFmt(uint64_t result, int a2)
{
  switch(a2)
  {
    case 3:
      v4 = *(result + 16) & 0xFFFFF3FF | 0x800;
      break;
    case 2:
      v4 = *(result + 16) & 0xFFFFF3FF;
      break;
    case 1:
      v4 = *(result + 16) & 0xFFFFF3FF | 0x400;
      break;
    default:
      ZinAssertImpl("Error: Invalid TD programming for Src2 input format", v2, v3);
  }

  *(result + 16) = v4;
  return result;
}

uint64_t ZinAneTd<1u>::SetCommonOutFmt(uint64_t result, int a2)
{
  switch(a2)
  {
    case 3:
      v4 = *(result + 16) & 0xFFFFCFFF | 0x2000;
      break;
    case 2:
      v4 = *(result + 16) & 0xFFFFCFFF;
      break;
    case 1:
      v4 = *(result + 16) & 0xFFFFCFFF | 0x1000;
      break;
    default:
      ZinAssertImpl("Error: Invalid output format", v2, v3);
  }

  *(result + 16) = v4;
  return result;
}

uint64_t ZinAneTd<1u>::SetCommonConvCfg3dKd(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    ZinAssertImpl("Error: kernel depth is not supported", v2, v3);
  }

  return 1;
}

uint64_t ZinAneTd<1u>::SetCommonConvCfg3dSz(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    ZinAssertImpl("Error: Invalid input stride z", v2, v3);
  }

  return 1;
}

uint64_t ZinAneTd<1u>::SetCommonConvCfg3dOz(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    ZinAssertImpl("Error: Invalid output stride z", v2, v3);
  }

  return 1;
}

BOOL ZinAneTd<1u>::SetCommonConvCfgPadLeft(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 200), &v4);
  if (result)
  {
    *(a1 + 64) = *(a1 + 64) & 0xFFFFFC00 | v4 & 0x3FF;
  }

  return result;
}

BOOL ZinAneTd<1u>::SetCommonConvCfgPadTop(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 208), &v4);
  if (result)
  {
    *(a1 + 64) = *(a1 + 64) & 0xFFFF03FF | ((v4 & 0x3F) << 10);
  }

  return result;
}

uint64_t ZinAneTd<1u>::SetCommonConvCfg3dPz(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Invalid pad z", v2, v3);
  }

  return 1;
}

BOOL ZinAneTd<1u>::SetOrReturnNumGroups(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 136), &v4);
  if (result)
  {
    *(a1 + 38) = v4;
  }

  return result;
}

BOOL ZinAneTd<1u>::SetOrReturnNumBatches(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 104), &v4);
  if (result)
  {
    *(a1 + 30) = v4;
  }

  return result;
}

BOOL ZinAneTd<1u>::SetOrReturnWin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 80), &v4);
  if (result)
  {
    *(a1 + 24) = v4;
  }

  return result;
}

BOOL ZinAneTd<1u>::SetOrReturnHin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 88), &v4);
  if (result)
  {
    *(a1 + 26) = v4;
  }

  return result;
}

uint64_t ZinAneTd<1u>::SetOrReturnDin(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    ZinAssertImpl("Error: Din not supported", v2, v3);
  }

  return 1;
}

BOOL ZinAneTd<1u>::SetOrReturnCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 96), &v4);
  if (result)
  {
    *(a1 + 28) = v4;
  }

  return result;
}

BOOL ZinAneTd<1u>::SetOrReturnWout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 112), &v4);
  if (result)
  {
    *(a1 + 32) = v4;
  }

  return result;
}

BOOL ZinAneTd<1u>::SetOrReturnHout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 120), &v4);
  if (result)
  {
    *(a1 + 34) = v4;
  }

  return result;
}

uint64_t ZinAneTd<1u>::SetOrReturnDout(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    ZinAssertImpl("Error: Dout not supported", v2, v3);
  }

  return 1;
}

BOOL ZinAneTd<1u>::SetOrReturnCout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 432) + 128), &v4);
  if (result)
  {
    *(a1 + 36) = v4;
  }

  return result;
}

uint64_t ZinAneTd<4u>::SetEventFlags(uint64_t result, __int16 a2, __int16 a3, int a4)
{
  *(result + 16) = a2;
  if (a4)
  {
    ZinAssertImpl("DRAM Events not supported for architecture", v4, v5);
  }

  *(result + 20) = a3;
  return result;
}

BOOL ZinAneTd<4u>::SetL2SrcBaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 192), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Base Address");
  }

  *(a1 + 180) = *(a1 + 180) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<4u>::SetL2Src1ChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 200), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Channel Stride");
  }

  *(a1 + 184) = *(a1 + 184) & 0xFFFF000F | (16 * (v4 & 0xFFF));
  return result;
}

BOOL ZinAneTd<4u>::SetL2SrcRowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 280) + 212), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::ValueToRegister(v8, (*(a1 + 280) + 208), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Row Stride");
  }

  *(a1 + 188) = *(a1 + 188) & 0xFFF0000F | (16 * v7);
  return result;
}

uint64_t ZinAneTd<4u>::SetL2Src1DmaFormat(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xB)
  {
    if (((1 << a2) & 0x6F8) != 0)
    {
      v2 = *(result + 176) & 0xFFFFFF3F | 0x40;
      goto LABEL_9;
    }

    if (a2 == 8)
    {
      ZinAssertImpl("packed10 format not fully implemented yet");
    }

    if (a2 == 11)
    {
      ZinAssertImpl("Float32 not supported for architecture");
    }
  }

  if (a2 - 1 >= 2)
  {
    ZinAssertImpl("Invalid tensor format");
  }

  v2 = *(result + 176) & 0xFFFFFF3F;
LABEL_9:
  *(result + 176) = v2;
  return result;
}

uint64_t ZinAneTd<4u>::SetL2ResultCfgDmaFmt(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xB)
  {
    if (((1 << a2) & 0x6F8) != 0)
    {
      v2 = *(result + 192) & 0xFFFFFF3F | 0x40;
      goto LABEL_9;
    }

    if (a2 == 8)
    {
      ZinAssertImpl("packed10 format not fully implemented yet");
    }

    if (a2 == 11)
    {
      ZinAssertImpl("Float32 not supported for architecture");
    }
  }

  if (a2 - 1 >= 2)
  {
    ZinAssertImpl("Invalid tensor format");
  }

  v2 = *(result + 192) & 0xFFFFFF3F;
LABEL_9:
  *(result + 192) = v2;
  return result;
}

void ZinAneTd<4u>::SetL2ResultWrapCfg(uint64_t a1, int a2)
{
  if (a2 != 5)
  {
    ZinAssertImpl("Error: Invalid Wrap Axis", v2, v3);
  }
}

void ZinAneTd<4u>::SetL2ResultWrapStartOffset(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Invalid wrap start offset", v2, v3);
  }
}

void ZinAneTd<4u>::SetL2ResultWrapIndex(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Invalid wrap index", v2, v3);
  }
}

void ZinAneTd<4u>::SetL2ResultWrapAddrOffset(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Result Wrap Addr Offset is invalid", v2, v3);
  }
}

void ZinAneTd<4u>::SetL2ResultWrapAddr(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ZinAssertImpl("Error: Result Wrap Addr is invalid", v2, v3);
  }
}

void ZinAneTd<4u>::SetL2OutputCropOffsetXLSBs(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ZinAssertImpl("Invalid Output Crop Offset X LSBs for architecture", v2, v3);
  }
}

BOOL ZinAneTd<4u>::SetL2Src1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 288), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 176) = *(a1 + 176) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<4u>::SetL2Src1SourceType(uint64_t result, int a2)
{
  v2 = 0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = 1;
    }

    else if (a2 == 4)
    {
      ZinAssertImpl("Invalid L2 Source Type");
    }
  }

  else if (a2 == 1)
  {
    v2 = 2;
  }

  else if (!a2)
  {
    ZinAssertImpl("Error: It must have a valid L2 access mode");
  }

  *(result + 176) = *(result + 176) & 0xFFFFFFFC | v2;
  return result;
}

uint64_t ZinAneTd<4u>::SetOpMode(uint64_t result, int a2)
{
  if (a2 >= 4)
  {
    if (a2 <= 4)
    {
      v2 = *(result + 224) & 0xFFFFFFF8 | 2;
      goto LABEL_12;
    }

    switch(a2)
    {
      case 5:
        v2 = *(result + 224) & 0xFFFFFFF8 | 4;
LABEL_12:
        *(result + 224) = v2;
        return result;
      case 6:
        ZinAssertImpl("RCAS not valid for architecture");
      case 7:
        ZinAssertImpl("Transposed convolution is not supported");
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v2 = *(result + 224) & 0xFFFFFFF8 | 3;
      }

      else
      {
        v2 = *(result + 224) & 0xFFFFFFF8 | 1;
      }

      goto LABEL_12;
    }

    if (!a2)
    {
      v2 = *(result + 224) & 0xFFFFFFF8;
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      ZinAssertImpl("ElemWise not valid for architecture");
    }
  }

  return result;
}

uint64_t ZinAneTd<4u>::SetKernelMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 0:
      v4 = *(result + 224) & 0xFFFFFFF7;
      goto LABEL_7;
    case 1:
      v4 = *(result + 224) | 8;
LABEL_7:
      *(result + 224) = v4;
      return result;
    case 2:
      ZinAssertImpl("Unsupported Kernel Mode", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<4u>::SetKernelFmt(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 220) & 0xFFFFFFFC | 1;
    }

    else
    {
      v4 = *(result + 220) & 0xFFFFFFFC;
    }

    goto LABEL_8;
  }

  if (a2 == 2)
  {
    v4 = *(result + 220) & 0xFFFFFFFC | 2;
LABEL_8:
    *(result + 220) = v4;
    return result;
  }

  if (a2 == 3)
  {
    ZinAssertImpl("Unimplemented or Unsupported kernel format", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<4u>::SetKernelDmaSrcCoeffDmaCacheHint(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v5 = 0x2000;
    }

    else
    {
      v5 = 57344;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v5 = 0x4000;
      goto LABEL_10;
    case 3:
      v5 = 49152;
LABEL_10:
      *(*(result + 40) + 24 * a3 + 4) = *(*(result + 40) + 24 * a3 + 4) & 0xFFFF0FFF | v5;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc CoeffDma CacheHint", a2, a3, v3, v4);
  }

  return result;
}

BOOL ZinAneTd<4u>::SetKernelDmaSrcCoeffMemBufferSize(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 304), &v6);
  if (result)
  {
    *(*(a1 + 40) + 24 * a3 + 12) = *(*(a1 + 40) + 24 * a3 + 12) & 0xFFFE003F | ((v6 & 0x7FF) << 6);
  }

  return result;
}

uint64_t ZinAneTd<4u>::SetPaddingMode(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 2)
  {
    if (a2 == 1)
    {
      if (!a3)
      {
        v3 = 0;
        goto LABEL_8;
      }

LABEL_16:
      ZinAssertImpl("Error: padding-mode doesn't support constants");
    }

LABEL_19:
    ZinAssertImpl("Invalid padding mode: %d", a2);
  }

  if (a2 > 2)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        ZinAssertImpl("Platform doesn't support reflective padding mode", a2, a3);
      }

      if (a2 == 9)
      {
        ZinAssertImpl("Platform doesn't support constant padding-mode", a2, a3);
      }
    }

    else
    {
      if (a2 == 3)
      {
        ZinAssertImpl("Platform doesn't support replication padding-mode", a2, a3);
      }

      if (a2 == 4)
      {
        ZinAssertImpl("Platform doesn't support positive padding-mode", a2, a3);
      }
    }

    goto LABEL_19;
  }

  if (a3)
  {
    goto LABEL_16;
  }

  v3 = 4;
LABEL_8:
  *(result + 172) = *(result + 172) & 0xFFFFFFFB | v3;
  return result;
}

BOOL ZinAneTd<4u>::SetL2ResultBaseAddr(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 216), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Base Address");
  }

  *(a1 + 196) = *(a1 + 196) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<4u>::SetL2ResultChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 224), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Channel Stride");
  }

  *(a1 + 200) = *(a1 + 200) & 0xFFFF000F | (16 * (v4 & 0xFFF));
  return result;
}

BOOL ZinAneTd<4u>::SetL2ResultRowStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 232), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Row Stride");
  }

  *(a1 + 204) = *(a1 + 204) & 0xFFF0000F | (16 * v4);
  return result;
}

uint64_t ZinAneTd<4u>::SetL2BfrMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 192) = *(result + 192) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t ZinAneTd<4u>::SetL2ResultType(uint64_t result, int a2)
{
  v2 = *(result + 192) & 0xFFFFFFFC;
  v3 = v2 | 2;
  if (a2 == 2)
  {
    v3 = v2 | 1;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  *(result + 192) = v2;
  return result;
}

uint64_t ZinAneTd<4u>::SetTileDmaSrc1CacheHint(uint64_t result, int a2, int a3, int a4)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_11;
      }

      v4 = 0x2000;
    }

    else
    {
      v4 = 57344;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 0x4000;
      goto LABEL_10;
    case 3:
      v4 = 49152;
LABEL_10:
      *(result + 124) = *(result + 124) & 0xFFFF0FFF | v4;
      break;
    case 4:
      goto LABEL_33;
  }

LABEL_11:
  v5 = 0x200000;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v5 = 12582912;
    }

    else if (a4 == 4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (a4 == 2)
    {
      v5 = 0x400000;
    }

    else
    {
      v5 = 0x200000;
    }

    if (!a4)
    {
      v5 = 14680064;
    }
  }

  v6 = 0x20000;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = 786432;
      goto LABEL_31;
    }

    if (a3 != 4)
    {
      goto LABEL_31;
    }

LABEL_33:
    ZinAssertImpl("Invalid CacheHint");
  }

  if (a3 == 2)
  {
    v6 = 0x40000;
  }

  else
  {
    v6 = 0x20000;
  }

  if (!a3)
  {
    v6 = 917504;
  }

LABEL_31:
  *(result + 124) = v6 | v5 | *(result + 124) & 0xFF00FFFF;
  return result;
}

uint64_t ZinAneTd<4u>::SetTileDmaSrc1DependencyMode(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v3 = *(result + 124) & 0xFCFFFFFF | 0x1000000;
LABEL_7:
    *(result + 124) = v3;
    return result;
  }

  if (a2 == 1)
  {
    v2 = *(result + 124);
    if ((v2 & 0x3000000) == 0)
    {
      v3 = v2 | 0x2000000;
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t ZinAneTd<4u>::SetTileDmaDstFormat(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<4u>::SetTileDmaDstFormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) >= 2)
      {
        if (v4 != 7)
        {
          if (v4 == 8)
          {
            ZinAssertImpl("Packed10 format not supported");
          }

          goto LABEL_32;
        }

        v7 = *(a1 + 268) & 0xFFFFFFDF;
        v8 = 272;
      }

      else
      {
        v7 = *(a1 + 268);
        v8 = 304;
      }

      v6 = v7 | v8;
      goto LABEL_20;
    }

    if ((v4 - 12) < 2)
    {
      goto LABEL_21;
    }

    if (v4 == 11)
    {
      ZinAssertImpl("Invalid format provided for architecture");
    }

LABEL_32:
    ZinAssertImpl("Invalid format provided");
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v6 = *(a1 + 268) & 0xFFFFFECF;
    }

    else if (v4 == 5)
    {
      v6 = *(a1 + 268) & 0xFFFFFECF | 0x100;
    }

    else
    {
      v6 = *(a1 + 268) & 0xFFFFFECF | 0x10;
    }

    goto LABEL_20;
  }

  if ((v4 - 1) < 2)
  {
    goto LABEL_21;
  }

  if (v4 != 3)
  {
    goto LABEL_32;
  }

  v6 = *(a1 + 268) | 0x30;
LABEL_20:
  *(a1 + 268) = v6;
LABEL_21:
  if (a3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 3;
  }

  if ((v4 - 9) >= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  return ZinAneTd<4u>::SetTileDmaDstMemoryFormat(a1, v10);
}

uint64_t ZinAneTd<4u>::SetTileDmaDstFormatMode(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAFormatMode(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAFormatMode failed");
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v4 = *(a1 + 268) & 0xFFFFFFFC | 1;
      goto LABEL_7;
    }

    if (v5 == 3)
    {
      ZinAssertImpl("Invalid format provided for architecture");
    }
  }

  else
  {
    if (!v5)
    {
      v4 = *(a1 + 268) & 0xFFFFFFFC;
LABEL_7:
      *(a1 + 268) = v4;
      return result;
    }

    if (v5 == 1)
    {
      ZinAssertImpl("Packed10 format not supported");
    }
  }

  return result;
}

uint64_t ZinAneTd<4u>::SetTileDmaDstMemoryFormat(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAMemoryFormat(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAMemoryFormat failed");
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v4 = *(a1 + 268) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 268) & 0xFFFFCFFF;
    }

    goto LABEL_9;
  }

  if (v5 == 2)
  {
    v4 = *(a1 + 268) & 0xFFFFCFFF | 0x2000;
LABEL_9:
    *(a1 + 268) = v4;
    return result;
  }

  if (v5 == 3 || v5 == 4)
  {
    ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<4u>::SetL2ResultInterleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 288), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Interleave");
  }

  *(a1 + 192) = *(a1 + 192) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<4u>::SetTileDmaDstCacheHint(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v2 = *(result + 252) & 0xFFFF0FFF | 0x3000;
    }

    else
    {
      v2 = *(result + 252) | 0xF000;
    }

    goto LABEL_8;
  }

  switch(a2)
  {
    case 3:
      v2 = *(result + 252) & 0xFFFF0FFF | 0xD000;
LABEL_8:
      *(result + 252) = v2;
      return result;
    case 2:
      ZinAssertImpl("Drop CacheHint not supported on Dst");
    case 4:
      ZinAssertImpl("Invalid CacheHint");
  }

  return result;
}

uint64_t ZinAneTd<4u>::SetTileDmaDstZeroPad(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 268) & 0xFFDFFFFF | ((*a2 == 0) << 21);
  *(result + 268) = v2;
  *(result + 268) = v2 & 0xFFEFFFFF | ((a2[1] == 0) << 20);
  return result;
}

void ZinAneTd<4u>::SetDoubleInt8Enable(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("2xInt8 mode is not supported", v2, v3);
  }
}

void ZinAneTd<4u>::SetPaletteBlockSize(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Palette block size is not supported", v2, v3);
  }
}

uint64_t ZinAneTd<4u>::SetGroupKernelReuse(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFFFBFF | v2;
  return result;
}

uint64_t ZinAneTd<4u>::SetKernelSparseFmt(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFFFEFF | v2;
  return result;
}

void ZinAneTd<4u>::SetKernelSparseBinary(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Sparse binary mode is not supported", v2, v3);
  }
}

uint64_t ZinAneTd<4u>::SetKernelPalettizedEn(uint64_t result, unsigned int a2)
{
  v2 = 0;
  if (a2 > 14)
  {
    if (a2 > 0x20)
    {
      goto LABEL_12;
    }

    if (((1 << a2) & 0xF800000) != 0 || ((1 << a2) & 0x780000) != 0)
    {
      v2 = 4;
      goto LABEL_6;
    }

    if (((1 << a2) & 0x1F0000000) == 0)
    {
LABEL_12:
      if (a2 - 15 >= 4)
      {
        goto LABEL_6;
      }

LABEL_13:
      ZinAssertImpl("Invalid kernel format");
    }

    goto LABEL_14;
  }

  if (a2 - 7 < 8)
  {
    goto LABEL_13;
  }

  if (!a2 || a2 == 3)
  {
LABEL_14:
    ZinAssertImpl("Unknown kernel format in codegen\n");
  }

LABEL_6:
  *(result + 220) = *(result + 220) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t ZinAneTd<4u>::SetKernelPalettizedBits(uint64_t result, unsigned int a2)
{
  v2 = 128;
  if (a2 > 10)
  {
    if (a2 > 0x20)
    {
      goto LABEL_14;
    }

    if (((1 << a2) & 0x780000) != 0)
    {
      v2 = 64;
      goto LABEL_7;
    }

    if (((1 << a2) & 0x7800000) != 0)
    {
      v2 = 96;
      goto LABEL_7;
    }

    if (((1 << a2) & 0x1F0000000) == 0)
    {
LABEL_14:
      if (a2 - 11 < 4 || a2 - 15 < 4)
      {
LABEL_15:
        ZinAssertImpl("Invalid kernel format");
      }

      goto LABEL_7;
    }

LABEL_16:
    ZinAssertImpl("Unknown kernel format in codegen\n");
  }

  if (a2 - 7 < 4)
  {
    goto LABEL_15;
  }

  if (!a2 || a2 == 3)
  {
    goto LABEL_16;
  }

LABEL_7:
  *(result + 220) = *(result + 220) & 0xFFFFFF0F | v2;
  return result;
}

void ZinAneTd<4u>::SetPaletteGroupSize(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ZinAssertImpl("Multi-palette LUTs are not supported", v2, v3);
  }
}

void ZinAneTd<4u>::SetKernelAsymQuantEn(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("Asym quantization is not supported", v2, v3);
  }
}

void ZinAneTd<4u>::SetKernelDetectZeros(uint64_t a1, int a2)
{
  if (a2)
  {
    ZinAssertImpl("On-the-fly Sparse Encoding is not supported", v2, v3);
  }
}

void ZinAneTd<4u>::SetQuantizationOutputZeroOffset(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      ZinAssertImpl("Quantization output zero offset is not supported", v3, v4);
    }
  }
}

uint64_t ZinAneTd<4u>::SetNENonLinearMode(uint64_t result, int a2, uint64_t a3)
{
  if (a2)
  {
    if (a2 == 1)
    {
      a2 = 0x10000;
    }

    else
    {
      v3 = *a3;
      v4 = *(a3 + 8);
      if (*a3 != v4)
      {
        while (*v3 != a2)
        {
          if (++v3 == v4)
          {
            goto LABEL_7;
          }
        }
      }

      if (v3 == v4)
      {
LABEL_7:
        ZinAssertImpl("Error: illegal non-linear mode\n");
      }

      a2 = 0x20000;
    }
  }

  *(result + 224) = *(result + 224) & 0xFFFCFFFF | a2;
  return result;
}

uint64_t ZinAneTd<4u>::SetNEPostScale(uint64_t result, unint64_t a2, char a3)
{
  _S0 = a2;
  __asm { FCVT            H0, S0 }

  v8 = _S0;
  if (!_ZF)
  {
    v8 = 0;
  }

  v9 = (a2 & 0x10000000000) >> 26;
  if (a3)
  {
    v10 = -((a2 >> 16) & 0x1F0000) & 0x1F0000 | v8;
  }

  else
  {
    LODWORD(v9) = 0;
    v10 = 15360;
  }

  *(result + 224) = *(result + 224) & 0xFFFFBFFF | v9;
  *(result + 236) = v10 | *(result + 236) & 0xFFE00000;
  return result;
}

uint64_t ZinAneTd<4u>::SetNEBias(uint64_t result, unint64_t a2, char a3)
{
  _S0 = a2;
  __asm { FCVT            H0, S0 }

  v8 = _S0;
  if (!_ZF)
  {
    v8 = 0;
  }

  v9 = (a2 & 0x10000000000) >> 36;
  v10 = (a2 >> 16) & 0x1F0000 | v8;
  if ((a3 & 1) == 0)
  {
    LODWORD(v9) = 0;
    v10 = 0;
  }

  *(result + 224) = *(result + 224) & 0xFFFFFFEF | v9;
  *(result + 232) = v10 | *(result + 232) & 0xFFE00000;
  return result;
}

ZinIrKernel *ZinAneTd<4u>::SetNEMatrixVectorBias(uint64_t a1, ZinIrKernel **a2, uint64_t a3)
{
  result = *a2;
  if (*a2)
  {
    _ZF = (a3 & 0x100000000) == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v6 = 0;
  }

  else
  {
    _S8 = *&a3;
    result = ZinIrKernel::GetWeightFormat(result);
    if (result == 4)
    {
      __asm { FCVT            H0, S8 }

      LOWORD(v8) = _H0;
    }

    else
    {
      if (result != 2 && result != 1)
      {
        ZinAssertImpl("Error: Invalid kernel format");
      }

      v8 = _S8;
    }

    *(a1 + 228) = v8;
    v6 = 64;
  }

  *(a1 + 224) = *(a1 + 224) & 0xFFFFFFBF | v6;
  return result;
}

uint64_t ZinAneTd<4u>::SetNESmallSourceMode(uint64_t result, int a2)
{
  if (a2 <= 0)
  {
    if (a2)
    {
      return result;
    }

    v2 = *(result + 100) & 0xFFFFFFFB;
    goto LABEL_6;
  }

  if (a2 == 1)
  {
    v2 = *(result + 100) | 4;
LABEL_6:
    *(result + 100) = v2;
    return result;
  }

  if ((a2 - 3) < 2)
  {
    ZinAssertImpl("Error: NP2 small source mode  is not supported for this arch");
  }

  if (a2 == 2)
  {
    ZinAssertImpl("Error: Tiny source mode is not supported for this arch");
  }

  return result;
}

_DWORD *ZinAneTd<4u>::SetDoubleBufferingBasedOnOtherRegisters(_DWORD *result, unsigned int a2)
{
  v2 = result[25];
  if ((v2 & 0x4000000) == 0)
  {
    if ((v2 & 4) != 0)
    {
      v3 = 4;
    }

    else if ((result[18] & 3) == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    v4 = (((result[22] >> 28) & 3u) << ((result[22] >> 12) & 7)) * (result[22] >> 30) / v3;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    if (v4 <= a2 >> 1)
    {
      result[25] = v2 | 0x4000000;
    }
  }

  return result;
}

uint64_t ZinAneTd<4u>::SetCommonInFmt(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = *(result + 72) & 0xFFFFFFFC | 2;
      goto LABEL_8;
    }

    if (a2 == 12)
    {
      ZinAssertImpl("Error: Invalid Common InFmt E4M3");
    }

LABEL_11:
    ZinAssertImpl("Error: Invalid TD programming for Src1 input format");
  }

  if (a2 == 1)
  {
    v2 = *(result + 72) & 0xFFFFFFFC | 1;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v2 = *(result + 72) & 0xFFFFFFFC;
LABEL_8:
  *(result + 72) = v2;
  return result;
}

uint64_t ZinAneTd<4u>::SetCommonOutFmt(uint64_t result, int a2)
{
  if ((a2 - 3) < 9)
  {
    goto LABEL_2;
  }

  if (a2 <= 11)
  {
    if (a2 == 1)
    {
      v2 = *(result + 72) & 0xFFFFFFCF | 0x10;
      goto LABEL_3;
    }

    if (a2 == 2)
    {
      v2 = *(result + 72) & 0xFFFFFFCF;
      goto LABEL_3;
    }

LABEL_12:
    ZinAssertImpl("Error: Invalid output format");
  }

  if (a2 != 13)
  {
    if (a2 == 12)
    {
      ZinAssertImpl("Error: E4M3 is not supported");
    }

    goto LABEL_12;
  }

LABEL_2:
  v2 = *(result + 72) & 0xFFFFFFCF | 0x20;
LABEL_3:
  *(result + 72) = v2;
  return result;
}

BOOL ZinAneTd<4u>::SetTileHeight(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 152), &v4);
  if (result)
  {
    *(a1 + 96) = *(a1 + 96) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<4u>::SetCommonConvCfgKh(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 120), &v4);
  if (result)
  {
    *(a1 + 88) = *(a1 + 88) & 0xFFFFF83F | ((v4 & 0x1F) << 6);
  }

  return result;
}

BOOL ZinAneTd<4u>::SetCommonConvCfgKw(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 128), &v4);
  if (result)
  {
    *(a1 + 88) = *(a1 + 88) & 0xFFFFFFE0 | v4 & 0x1F;
  }

  return result;
}

BOOL ZinAneTd<4u>::SetCommonConvCfgSx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 104), &v4);
  if (result)
  {
    *(a1 + 88) = *(a1 + 88) & 0xFFFCFFFF | ((v4 & 3) << 16);
  }

  return result;
}

BOOL ZinAneTd<4u>::SetCommonConvCfgSy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 96), &v4);
  if (result)
  {
    *(a1 + 88) = *(a1 + 88) & 0xFFF3FFFF | ((v4 & 3) << 18);
  }

  return result;
}

BOOL ZinAneTd<4u>::SetCommonConvCfgOx(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 72), &v4);
  if (result)
  {
    *(a1 + 88) = *(a1 + 88) & 0xCFFFFFFF | ((v4 & 3) << 28);
  }

  return result;
}

BOOL ZinAneTd<4u>::SetCommonConvCfgOy(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 64), &v4);
  if (result)
  {
    *(a1 + 88) = *(a1 + 88) & 0x3FFFFFFF | (v4 << 30);
  }

  return result;
}

BOOL ZinAneTd<4u>::SetCommonConvCfgPadLeft(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 88), &v4);
  if (result)
  {
    *(a1 + 88) = *(a1 + 88) & 0xFF0FFFFF | ((v4 & 0xF) << 20);
  }

  return result;
}

BOOL ZinAneTd<4u>::SetCommonConvCfgPadTop(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 80), &v4);
  if (result)
  {
    *(a1 + 88) = *(a1 + 88) & 0xF0FFFFFF | ((v4 & 0xF) << 24);
  }

  return result;
}

BOOL ZinAneTd<4u>::SetOrReturnNumGroups(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 136), &v4);
  if (result)
  {
    *(a1 + 92) = *(a1 + 92) & 0xFFFFE000 | v4 & 0x1FFF;
  }

  return result;
}

BOOL ZinAneTd<4u>::SetOrReturnWin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 24), &v4);
  if (result)
  {
    *(a1 + 68) = *(a1 + 68) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<4u>::SetOrReturnHin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 16), &v4);
  if (result)
  {
    *(a1 + 68) = *(a1 + 68) & 0x8000FFFF | ((v4 & 0x7FFF) << 16);
  }

  return result;
}

BOOL ZinAneTd<4u>::SetOrReturnWout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 56), &v4);
  if (result)
  {
    *(a1 + 84) = *(a1 + 84) & 0xFFFF8000 | v4 & 0x7FFF;
  }

  return result;
}

BOOL ZinAneTd<4u>::SetOrReturnHout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 48), &v4);
  if (result)
  {
    *(a1 + 84) = *(a1 + 84) & 0x8000FFFF | ((v4 & 0x7FFF) << 16);
  }

  return result;
}

BOOL ZinAneTd<4u>::SetOrReturnCout(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 40), &v4);
  if (result)
  {
    *(a1 + 80) = *(a1 + 80) & 0xFFFE0000 | v4 & 0x1FFFF;
  }

  return result;
}

uint64_t ZinAneTd<4u>::SetUnicastEn(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 92) = *(result + 92) & 0xFFFFBFFF | v2;
  return result;
}

BOOL ZinAneTd<4u>::SetUnicastCin(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 280) + 144), &v4);
  if (result)
  {
    *(a1 + 94) = v4;
  }

  return result;
}

uint64_t ZinAneTd<5u>::SetEventFlags(uint64_t result, __int16 a2, __int16 a3, int a4)
{
  *(result + 16) = a2;
  if (a4)
  {
    ZinAssertImpl("DRAM Events not supported for architecture", v4, v5);
  }

  *(result + 20) = a3;
  return result;
}

uint64_t ZinAneTd<6u>::SetEventFlags(uint64_t result, __int16 a2, __int16 a3, int a4)
{
  *(result + 16) = a2;
  if (a4)
  {
    ZinAssertImpl("DRAM Events not supported for architecture", v4, v5);
  }

  *(result + 20) = a3;
  return result;
}

uint64_t ZinAneTd<6u>::SetPaddingMode(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    if (a2 > 3)
    {
      switch(a2)
      {
        case 4:
          ZinAssertImpl("Platform doesn't support positive padding-mode", a2, a3);
        case 6:
          ZinAssertImpl("Platform doesn't support reflective padding mode", a2, a3);
        case 9:
          ZinAssertImpl("Platform doesn't support constant padding-mode", a2, a3);
      }

LABEL_19:
      ZinAssertImpl("Invalid padding mode: %d", a2);
    }

    if (!a3)
    {
      v3 = 8;
      goto LABEL_11;
    }

LABEL_16:
    ZinAssertImpl("Error: padding-mode doesn't support constants");
  }

  if (a2 == 1)
  {
    if (!a3)
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (a2 != 2)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    goto LABEL_16;
  }

  v3 = 4;
LABEL_11:
  *(result + 172) = *(result + 172) & 0xFFFFFFF3 | v3;
  return result;
}

uint64_t ZinAneTd<7u>::SetWARdmaDependency(uint64_t result, uint64_t a2, int a3, char a4, unsigned __int8 **a5)
{
  if (*(a2 + 1387))
  {
    ZinAssertImpl("inconsistent WAR support");
  }

  if (a3)
  {
    v5 = *a5;
    v6 = a5[1];
    if (*a5 != v6)
    {
      do
      {
        v7 = *v5;
        if (v7 <= 2)
        {
          *(result + 792) |= dword_1A75D1AA0[v7];
        }

        ++v5;
      }

      while (v5 != v6);
    }

    *(result + 792) = *(result + 792) & 0xFC3FFFFF | ((a4 & 0xF) << 22);
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetEventFlags(uint64_t result, int a2, int a3, int a4)
{
  *(result + 16) = a2 & 0xFFFFFF | (*(result + 19) << 24);
  if (a4)
  {
    ZinAssertImpl("DRAM Events not supported for architecture", v4, v5);
  }

  *(result + 24) = a3 & 0xFFFFFF | (*(result + 27) << 24);
  return result;
}

BOOL ZinAneTd<7u>::SetL2SrcBaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 296), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Base Address");
  }

  *(a1 + 668) = *(a1 + 668) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<7u>::SetL2Src1ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 840) + 304), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Channel Stride");
  }

  *(a1 + 672) = *(a1 + 672) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<7u>::SetL2SrcRowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 840) + 316), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 840) + 312), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Row Stride");
  }

  *(a1 + 676) = *(a1 + 676) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<7u>::SetL2Src1DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 840) + 328), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Depth Stride");
  }

  *(a1 + 680) = *(a1 + 680) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<7u>::SetL2Src1GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 840) + 336), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src Group Stride");
  }

  *(a1 + 684) = *(a1 + 684) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<7u>::SetL2Src1DmaFormat(uint64_t result, int a2)
{
  if (a2 > 8)
  {
    if ((a2 - 9) >= 2)
    {
      if ((a2 - 12) < 2)
      {
        ZinAssertImpl("E4M3 or E5M2 format not supported");
      }

      if (a2 == 11)
      {
        ZinAssertImpl("32 bit format not supported");
      }

LABEL_14:
      ZinAssertImpl("Invalid Dma Format");
    }

LABEL_6:
    v2 = *(result + 664) & 0xFFFFFF3F | 0x40;
    goto LABEL_7;
  }

  if ((a2 - 3) < 5)
  {
    goto LABEL_6;
  }

  if ((a2 - 1) >= 2)
  {
    if (a2 == 8)
    {
      ZinAssertImpl("Packed10 format not fully implemented yet\n");
    }

    goto LABEL_14;
  }

  v2 = *(result + 664) & 0xFFFFFF3F;
LABEL_7:
  *(result + 664) = v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetL2ResultCfgDmaFmt(uint64_t result, int a2)
{
  if (a2 > 8)
  {
    if ((a2 - 9) >= 2)
    {
      if ((a2 - 12) >= 2)
      {
        if (a2 == 11)
        {
          ZinAssertImpl("Float32 not supported for architecture");
        }

LABEL_13:
        ZinAssertImpl("Invalid tensor format");
      }

      goto LABEL_8;
    }

LABEL_9:
    v2 = *(result + 708) & 0xFFFFFF3F | 0x40;
    goto LABEL_10;
  }

  if ((a2 - 3) < 5)
  {
    goto LABEL_9;
  }

  if ((a2 - 1) >= 2)
  {
    if (a2 == 8)
    {
      ZinAssertImpl("packed10 format not fully implemented yet");
    }

    goto LABEL_13;
  }

LABEL_8:
  v2 = *(result + 708) & 0xFFFFFF3F;
LABEL_10:
  *(result + 708) = v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetL2SrcOffsetYlsbsFromCropOffsetY(uint64_t a1)
{
  result = ZinExtractLSBs(*(a1 + 616), 2);
  *(a1 + 664) = *(a1 + 664) & 0x3FFFFFFF | (result << 30);
  return result;
}

BOOL ZinAneTd<7u>::SetL2Src1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 552), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source Interleave");
  }

  *(a1 + 664) = *(a1 + 664) & 0xFFFFF0FF | ((v4 & 0xF) << 8);
  return result;
}

uint64_t ZinAneTd<7u>::SetL2Src1SourceType(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
      if (!a2)
      {
        ZinAssertImpl("Error: It must have a valid L2 access mode", v2, v3);
      }
    }
  }

  else
  {
    if (a2 == 4)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (a2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  *(result + 664) = *(result + 664) & 0xFFFFFFFC | v5;
  return result;
}

uint64_t ZinAneTd<7u>::SetL2Src2SourceType(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      v5 = 0x1000000;
    }

    else
    {
      v5 = 0;
      if (!a2)
      {
        ZinAssertImpl("Error: It must have a valid L2 access mode", v2, v3);
      }
    }
  }

  else
  {
    if (a2 == 4)
    {
      v4 = 25165824;
    }

    else
    {
      v4 = 0;
    }

    if (a2 == 2)
    {
      v5 = 0x800000;
    }

    else
    {
      v5 = v4;
    }
  }

  *(result + 664) = *(result + 664) & 0xFE7FFFFF | v5;
  return result;
}

BOOL ZinAneTd<7u>::SetL2Src2BaseAddress(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 344), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Src2 Base Address");
  }

  *(a1 + 688) = *(a1 + 688) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<7u>::SetL2Src2ChannelStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 840) + 352), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Channel Stride");
  }

  *(a1 + 692) = *(a1 + 692) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<7u>::SetL2Src2RowStride(uint64_t a1, ZinCodegen *this, ZinTensorDimensions *a3, uint64_t a4, uint64_t *a5)
{
  v8 = 0;
  ZinCodegen::GetL2RowStride(this, a3, *(*(a1 + 840) + 364), &v8, a5);
  v7 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(v8, 0x11uLL, (*(a1 + 840) + 360), &v7);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Row Stride");
  }

  *(a1 + 696) = *(a1 + 696) & 0xFFE0000F | (16 * (v7 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<7u>::SetL2Src2DepthStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 840) + 368), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Depth Stride");
  }

  *(a1 + 700) = *(a1 + 700) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<7u>::SetL2Src2GroupStride(uint64_t a1, ZinCodegenUtil *a2)
{
  v4 = 0;
  result = ZinCodegenUtil::SignedValueToRegister(a2, 0x11uLL, (*(a1 + 840) + 376), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Source 2 Group Stride");
  }

  *(a1 + 704) = *(a1 + 704) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<7u>::SetL2Src1CfgForCompression(uint64_t result, int a2)
{
  v4 = *(result + 664) & 0xF7F80FFF;
  *(result + 664) = v4 | 0x8000000;
  switch(a2)
  {
    case 1:
      v5 = v4 & 0xE7F80FFF | 0x8000000;
      goto LABEL_7;
    case 2:
      v5 = v4 | 0x18000000;
LABEL_7:
      *(result + 664) = v5;
      return result;
    case 0:
      ZinAssertImpl("Invalid macro block size", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetOpMode(uint64_t result, int a2)
{
  if (a2 >= 4)
  {
    if (a2 <= 4)
    {
      v2 = *(result + 768) & 0xFFFFFFF8 | 2;
      goto LABEL_12;
    }

    switch(a2)
    {
      case 5:
        v2 = *(result + 768) & 0xFFFFFFF8 | 4;
LABEL_12:
        *(result + 768) = v2;
        return result;
      case 6:
        ZinAssertImpl("RCAS not valid for architecture");
      case 7:
        ZinAssertImpl("Transposed convolution is not supported");
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v2 = *(result + 768) & 0xFFFFFFF8 | 3;
      }

      else
      {
        v2 = *(result + 768) & 0xFFFFFFF8 | 1;
      }

      goto LABEL_12;
    }

    if (!a2)
    {
      v2 = *(result + 768) & 0xFFFFFFF8;
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      ZinAssertImpl("ElemWise not valid for architecture");
    }
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetKernelMode(uint64_t result, int a2)
{
  switch(a2)
  {
    case 0:
      v4 = *(result + 768) & 0xFFFFFFF7;
      goto LABEL_7;
    case 1:
      v4 = *(result + 768) | 8;
LABEL_7:
      *(result + 768) = v4;
      return result;
    case 2:
      ZinAssertImpl("Unsupported Kernel Mode", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetKernelFmt(uint64_t result, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 764) & 0xFFFFFFFC | 1;
    }

    else
    {
      v4 = *(result + 764) & 0xFFFFFFFC;
    }

    goto LABEL_8;
  }

  if (a2 == 2)
  {
    v4 = *(result + 764) & 0xFFFFFFFC | 2;
LABEL_8:
    *(result + 764) = v4;
    return result;
  }

  if (a2 == 3)
  {
    ZinAssertImpl("Unimplemented or Unsupported kernel format", v2, v3);
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetKernelDmaSrcCoeffDmaCacheHint(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v5 = 128;
    }

    else
    {
      v5 = 896;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v5 = 256;
      goto LABEL_10;
    case 3:
      v5 = 768;
LABEL_10:
      *(result + 4 * a3 + 60) = *(result + 4 * a3 + 60) & 0xFFFFFC3F | v5;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc CoeffDma CacheHint", a2, a3, v3, v4);
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetKernelDmaSrcHeaderDmaCacheHint(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v5 = 128;
    }

    else
    {
      v5 = 896;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v5 = 256;
      goto LABEL_10;
    case 3:
      v5 = 768;
LABEL_10:
      *(result + 4 * a3 + 252) = *(result + 4 * a3 + 252) & 0xFFFFFC3F | v5;
      return result;
    case 4:
      ZinAssertImpl("Error: Invalid KernelDmaSrc PostScale Dma CacheHint", a2, a3, v3, v4);
  }

  return result;
}

BOOL ZinAneTd<7u>::SetKernelDmaSrcCoeffMemBufferSize(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 528), &v6);
  if (result)
  {
    *(a1 + 4 * a3 + 188) = *(a1 + 4 * a3 + 188) & 0x3F | (v6 << 6);
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetPaddingMode(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 3)
  {
    if (a2 == 1)
    {
      if (!a3)
      {
        v3 = 0;
        v4 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_20;
      }

      if (!a3)
      {
        v3 = 0;
        v4 = 4;
        goto LABEL_14;
      }
    }

LABEL_15:
    ZinAssertImpl("Error: padding-mode doesn't support constants");
  }

  if (a2 <= 3)
  {
    if (!a3)
    {
      v4 = 8;
      v3 = 0x40000;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (a2 != 4)
  {
    if (a2 == 6)
    {
      ZinAssertImpl("Platform doesn't support reflective padding mode", a2, a3);
    }

    if (a2 == 9)
    {
      ZinAssertImpl("Platform doesn't support constant padding-mode", a2, a3);
    }

LABEL_20:
    ZinAssertImpl("Invalid padding mode: %d", a2);
  }

  if (a3)
  {
    goto LABEL_15;
  }

  v3 = 0;
  v4 = 12;
LABEL_14:
  *(result + 660) = *(result + 660) & 0xFFFFFFF3 | v4;
  *(result + 768) = *(result + 768) & 0xFFFBFFFF | v3;
  return result;
}

uint64_t ZinAneTd<7u>::SetKernelBaseHeaderAligned(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 4)
  {
    ZinAssertImpl("bad H13 aligned header selector", a2, v3, v4);
  }

  *(result + 44) = *(result + 44) & dword_1A75D1BA0[a3] | ((a2 & 0x1F) << (6 * a3 + 6)) | dword_1A75D1BB0[a3];
  return result;
}

uint64_t ZinAneTd<7u>::SetKernelAlignmentFormat(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 764) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 764) | 0x10000;
  }

  *(result + 764) = v2;
  return result;
}

_DWORD *ZinAneTd<7u>::SetAlignedKernelBias(_DWORD *result, char a2, int a3)
{
  result[71] = result[71] & 0x3F | (a3 << 6);
  result[63] |= 1u;
  result[11] = result[11] & 0xFFFFF03F | ((a2 & 0x1F) << 6) | 0x800;
  return result;
}

_DWORD *ZinAneTd<7u>::SetAlignedKernelPostScale(_DWORD *result, char a2, int a3)
{
  result[72] = result[72] & 0x3F | (a3 << 6);
  result[64] |= 1u;
  result[11] = result[11] & 0xFFFC0FFF | ((a2 & 0x1F) << 12) | 0x20000;
  return result;
}

_DWORD *ZinAneTd<7u>::SetAlignedKernelPaletteLut(_DWORD *result, char a2, int a3)
{
  result[73] = result[73] & 0x3F | (a3 << 6);
  result[65] |= 1u;
  result[11] = result[11] & 0xFF03FFFF | ((a2 & 0x1F) << 18) | 0x800000;
  return result;
}

_DWORD *ZinAneTd<7u>::SetAlignedKernelNonLinearLut(_DWORD *result, char a2, int a3)
{
  result[74] = result[74] & 0x3F | (a3 << 6);
  result[66] |= 1u;
  result[11] = result[11] & 0xFF03FFFF | ((a2 & 0x1F) << 18) | 0x800000;
  return result;
}

__int16 ZinAneTd<7u>::SetPEScale@<H0>(uint64_t a1@<X0>, float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 746) = result;
  return result;
}

__int16 ZinAneTd<7u>::SetPEBias@<H0>(uint64_t a1@<X0>, float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 744) = result;
  return result;
}

__int16 ZinAneTd<7u>::SetPEPreScale@<H0>(uint64_t a1@<X0>, float _S0@<S0>)
{
  __asm { FCVT            H0, S0 }

  *(a1 + 750) = result;
  return result;
}

uint64_t ZinAneTd<7u>::SetPESrc2ReLu(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(result + 660) = *(result + 660) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetPESrc1Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 516) = *(result + 516) & 0xFFFFFEFF | v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetPESrc2Transpose(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(result + 516) = *(result + 516) & 0xFFFFFDFF | v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetPESrc1Broadcast(uint64_t result, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v3 = *(i + 4) - 1;
    if (v3 <= 3)
    {
      *(result + 516) |= dword_1A75D1BE0[v3];
    }
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetPESrc2Broadcast(uint64_t result, uint64_t a2, char a3)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v4 = *(i + 4);
    if (v4 > 2)
    {
      if (v4 != 3)
      {
        if (v4 != 4 || (a3 & 1) != 0)
        {
          continue;
        }

        v5 = 16;
        goto LABEL_13;
      }

      if ((a3 & 1) == 0)
      {
        v5 = 32;
        goto LABEL_13;
      }
    }

    else
    {
      if (v4 == 1)
      {
        v5 = 64;
        goto LABEL_13;
      }

      if (v4 == 2)
      {
        v5 = 128;
LABEL_13:
        *(result + 516) |= v5;
      }
    }
  }

  return result;
}

BOOL ZinAneTd<7u>::SetPEOperationMode(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *(a1 + 740) = *(a1 + 740) & 0xFFFFFFE3 | 8;
        v3 = (*(a1 + 840) + 560);
        v4 = 2;
        break;
      case 4:
        *(a1 + 740) = *(a1 + 740) & 0xFFFFFFE3 | 0xC;
        v3 = (*(a1 + 840) + 560);
        v4 = 3;
        break;
      case 5:
        return 0;
      default:
        return 1;
    }

    return CheckRegValueRange(v4, v3);
  }

  if (!a2)
  {
    *(a1 + 740) &= 0xFFFFFFE3;
    v3 = (*(a1 + 840) + 560);
    v4 = 0;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 == 1)
  {
    *(a1 + 740) = *(a1 + 740) & 0xFFFFFFE3 | 4;
    v3 = (*(a1 + 840) + 560);
    v4 = 1;
    return CheckRegValueRange(v4, v3);
  }

  if (a2 != 2)
  {
    return 1;
  }

  *(a1 + 740) = *(a1 + 740) & 0xFFFFFFE3 | 0x10;
  result = CheckRegValueRange(4uLL, (*(a1 + 840) + 560));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetPEFirstSource(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 740) & 0xFFFEFFFF;
  }

  else
  {
    v2 = *(result + 740) | 0x10000;
  }

  *(result + 740) = v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetPESecondSource(uint64_t result, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 740) & 0xFFF3FFFF | 0x80000;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 740) | 0xC0000;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v2 = *(result + 740) & 0xFFF3FFFF | 0x40000;
  }

  else
  {
    v2 = *(result + 740) & 0xFFF3FFFF;
  }

  *(result + 740) = v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetPECondition(uint64_t result, int a2)
{
  if (a2 != 1)
  {
    ZinAssertImpl("Error: invalid PE Condition", v2, v3);
  }

  *(result + 740) |= 0x40u;
  return result;
}

uint64_t ZinAneTd<7u>::SetPEOutputCtoW(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(result + 516) = *(result + 516) & 0xFFFFFBFF | v2;
  return result;
}

BOOL ZinAneTd<7u>::SetL2ResultBaseAddr(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 384), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Base Address");
  }

  *(a1 + 712) = *(a1 + 712) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<7u>::SetL2ResultChannelStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 392), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Channel Stride");
  }

  *(a1 + 716) = *(a1 + 716) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<7u>::SetL2ResultRowStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 400), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Row Stride");
  }

  *(a1 + 720) = *(a1 + 720) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<7u>::SetL2ResultDepthStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 408), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Depth Stride");
  }

  *(a1 + 724) = *(a1 + 724) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

BOOL ZinAneTd<7u>::SetL2ResultGroupStride(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 416), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal L2 Result Group Stride");
  }

  *(a1 + 728) = *(a1 + 728) & 0xFFE0000F | (16 * (v4 & 0x1FFFF));
  return result;
}

uint64_t ZinAneTd<7u>::SetL2BfrMode(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 708) = *(result + 708) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t ZinAneTd<7u>::SetL2ResultType(uint64_t result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 4)
    {
      v4 = *(result + 708) | 3;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v4 = *(result + 708) & 0xFFFFFFFC;
      goto LABEL_10;
    }

LABEL_11:
    ZinAssertImpl("Invalid L2 Result Type", v2, v3);
  }

  if (a2 == 1)
  {
    v4 = *(result + 708) & 0xFFFFFFFC | 2;
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

  v4 = *(result + 708) & 0xFFFFFFFC | 1;
LABEL_10:
  *(result + 708) = v4;
  return result;
}

uint64_t ZinAneTd<7u>::SetTileDmaSrc1Format(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  ZinAneTd<7u>::SetTileDmaSrc1FormatMode(a1, a2);
  if (v4 > 6)
  {
    if (v4 <= 10)
    {
      if ((v4 - 9) >= 2)
      {
        if (v4 != 7)
        {
          if (v4 == 8)
          {
            ZinAssertImpl("Packed10 format not supported");
          }

          goto LABEL_32;
        }

        v7 = *(a1 + 596) & 0xFFFFFFDF;
        v8 = 272;
      }

      else
      {
        v7 = *(a1 + 596);
        v8 = 304;
      }

      v6 = v7 | v8;
      goto LABEL_20;
    }

    if ((v4 - 12) < 2)
    {
      goto LABEL_21;
    }

    if (v4 == 11)
    {
      ZinAssertImpl("Invalid format provided for architecture");
    }

LABEL_32:
    ZinAssertImpl("Invalid format provided");
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v6 = *(a1 + 596) & 0xFFFFFECF;
    }

    else if (v4 == 5)
    {
      v6 = *(a1 + 596) & 0xFFFFFECF | 0x100;
    }

    else
    {
      v6 = *(a1 + 596) & 0xFFFFFECF | 0x10;
    }

    goto LABEL_20;
  }

  if ((v4 - 1) < 2)
  {
    goto LABEL_21;
  }

  if (v4 != 3)
  {
    goto LABEL_32;
  }

  v6 = *(a1 + 596) | 0x30;
LABEL_20:
  *(a1 + 596) = v6;
LABEL_21:
  if (a3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 3;
  }

  if ((v4 - 9) >= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  return ZinAneTd<7u>::SetTileDmaSrc1MemoryFormat(a1, v10);
}

uint64_t ZinAneTd<7u>::SetTileDmaSrc1FormatMode(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAFormatMode(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAFormatMode failed");
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v4 = *(a1 + 596) & 0xFFFFFFFC | 1;
      goto LABEL_7;
    }

    if (v5 == 3)
    {
      ZinAssertImpl("Invalid format provided for architecture");
    }
  }

  else
  {
    if (!v5)
    {
      v4 = *(a1 + 596) & 0xFFFFFFFC;
LABEL_7:
      *(a1 + 596) = v4;
      return result;
    }

    if (v5 == 1)
    {
      ZinAssertImpl("Packed10 format not supported");
    }
  }

  return result;
}

uint64_t ZinAneTd<7u>::SetTileDmaSrc1MemoryFormat(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = GetHWDMAMemoryFormat(a2, &v5);
  if (result)
  {
    ZinAssertImpl("GetHWDMAMemoryFormat failed");
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v4 = *(a1 + 596) & 0xFFFFCFFF | 0x1000;
    }

    else
    {
      v4 = *(a1 + 596) & 0xFFFFCFFF;
    }

    goto LABEL_9;
  }

  if (v5 == 2)
  {
    v4 = *(a1 + 596) & 0xFFFFCFFF | 0x2000;
LABEL_9:
    *(a1 + 596) = v4;
    return result;
  }

  if (v5 == 3 || v5 == 4)
  {
    ZinAssertImpl("Invalid format provided for architecture");
  }

  return result;
}

BOOL ZinAneTd<7u>::SetTileDmaSrc1Interleave(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  result = ZinCodegenUtil::ValueToRegister(a2, (*(a1 + 840) + 552), &v4);
  if (!result)
  {
    ZinAssertImpl("Illegal TileDmaSrc1 Interleave");
  }

  *(a1 + 596) = *(a1 + 596) & 0xF0FFFFFF | ((v4 & 0xF) << 24);
  return result;
}

uint64_t ZinAneTd<7u>::SetTileDmaSrc1Enable(uint64_t result)
{
  *(result + 540) |= 1u;
  *(result + 32) |= 0x10000000u;
  return result;
}

void ZinAneTd<7u>::SetTileDmaSrc1E4M3Overflow(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    ZinAssertImpl("E4M3Overflow is not supported.", v2, v3);
  }
}

uint64_t ZinAneTd<7u>::SetTileDmaSrc1CacheHint(uint64_t result, int a2, int a3, int a4)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_11;
      }

      v4 = 128;
    }

    else
    {
      v4 = 896;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 256;
      goto LABEL_10;
    case 3:
      v4 = 768;
LABEL_10:
      *(result + 540) = *(result + 540) & 0xFFFFFC3F | v4;
      break;
    case 4:
      goto LABEL_33;
  }

LABEL_11:
  v5 = 0x8000;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v5 = 196608;
    }

    else if (a4 == 4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (a4 == 2)
    {
      v5 = 0x10000;
    }

    else
    {
      v5 = 0x8000;
    }

    if (!a4)
    {
      v5 = 229376;
    }
  }

  v6 = 2048;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = 12288;
      goto LABEL_31;
    }

    if (a3 != 4)
    {
      goto LABEL_31;
    }

LABEL_33:
    ZinAssertImpl("Invalid CacheHint");
  }

  if (a3 == 2)
  {
    v6 = 4096;
  }

  else
  {
    v6 = 2048;
  }

  if (!a3)
  {
    v6 = 14336;
  }

LABEL_31:
  *(result + 540) = v6 | v5 | *(result + 540) & 0xFFFC03FF;
  return result;
}

uint64_t ZinAneTd<7u>::SetTileDmaSrc2CacheHint(uint64_t result, int a2, int a3, int a4)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_11;
      }

      v4 = 128;
    }

    else
    {
      v4 = 896;
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v4 = 256;
      goto LABEL_10;
    case 3:
      v4 = 768;
LABEL_10:
      *(result + 544) = *(result + 544) & 0xFFFFFC3F | v4;
      break;
    case 4:
      goto LABEL_33;
  }

LABEL_11:
  v5 = 0x8000;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v5 = 196608;
    }

    else if (a4 == 4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (a4 == 2)
    {
      v5 = 0x10000;
    }

    else
    {
      v5 = 0x8000;
    }

    if (!a4)
    {
      v5 = 229376;
    }
  }

  v6 = 2048;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = 12288;
      goto LABEL_31;
    }

    if (a3 != 4)
    {
      goto LABEL_31;
    }

LABEL_33:
    ZinAssertImpl("Invalid CacheHint");
  }

  if (a3 == 2)
  {
    v6 = 4096;
  }

  else
  {
    v6 = 2048;
  }

  if (!a3)
  {
    v6 = 14336;
  }

LABEL_31:
  *(result + 544) = v6 | v5 | *(result + 544) & 0xFFFC03FF;
  return result;
}