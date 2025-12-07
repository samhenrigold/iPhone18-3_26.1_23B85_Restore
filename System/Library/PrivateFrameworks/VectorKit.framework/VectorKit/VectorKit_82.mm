void sub_1B2D842C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::__format_spec::__parser<char>::__validate[abi:nn200100](unsigned __int8 *result, const char *a2)
{
  if ((*result & 0x18) != 0)
  {
    v2 = "sign";
LABEL_11:
    std::__format_spec::__throw_invalid_option_format_error[abi:nn200100](a2, v2);
    goto LABEL_12;
  }

  if ((*result & 0x20) != 0)
  {
    v2 = "alternate form";
    goto LABEL_11;
  }

  if ((*result & 7) == 4)
  {
    v2 = "zero-padding";
    goto LABEL_11;
  }

  if (*(result + 2) != -1)
  {
    v2 = "precision";
    goto LABEL_11;
  }

  if (result[1] >= 0x20u)
  {
LABEL_12:
    v3 = std::__throw_format_error[abi:nn200100]("The type does not fit in the mask");
    return std::__format_spec::__throw_invalid_option_format_error[abi:nn200100](v3, v4);
  }

  return result;
}

unsigned __int8 *std::__format_spec::__throw_invalid_option_format_error[abi:nn200100](const char *a1, const char *a2)
{
  std::string::basic_string[abi:nn200100]<0>(&v19, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v19, a1, v4);
  v6 = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v20, " does not allow the ", 0x14uLL);
  v8 = v7->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v21, a2, v9);
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v22, " option", 7uLL);
  v13 = v12->__r_.__value_.__r.__words[2];
  v23 = *&v12->__r_.__value_.__l.__data_;
  v24 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v24 >= 0)
  {
    v14 = &v23;
  }

  else
  {
    v14 = v23;
  }

  v15 = std::__throw_format_error[abi:nn200100](v14);
  return std::__format_spec::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(v15, v16, v17);
}

unsigned __int8 *std::__format_spec::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = std::__format::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
    if (v4 != a2 && *v4 == 125)
    {
      return v4 + 1;
    }

    std::__throw_format_error[abi:nn200100]("The argument index is invalid");
  }

  v6 = std::__throw_format_error[abi:nn200100]("End of input while parsing an argument index");
  return std::__format::__parse_number[abi:nn200100]<char const*>(v6, v7);
}

unsigned __int8 *std::__format::__parse_number[abi:nn200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result != v3)
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        return result;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  v3 = result;
LABEL_9:
  if (v3 == a2)
  {
    return a2;
  }

  v8 = *v3;
  if ((v8 - 48) > 9)
  {
    return v3;
  }

  if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
  {
    std::__throw_format_error[abi:nn200100]("The numeric value of the format specifier is too large");
    return a2;
  }

  return result;
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    operator new();
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderItemTypeID>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13ItemsPreparedEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A3F6C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A3F6E0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A3F6C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ItemsPrepared,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderItemTypeID>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderItemTypeID>(void)::localId;
    *algn_1EB82D878 = 0xCC7861782DE34E23;
    qword_1EB82D880 = "md::ls::RenderItemTypeID]";
    qword_1EB82D888 = 24;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16RenderItemTypeIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemTypeID>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *(v17 + 16);
        v19 = *v17;
        v20 = *(v16 + 16);
        *v17 = *v16;
        *(v17 + 16) = v20;
        *v16 = v19;
        *(v16 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemTypeID>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16RenderItemTypeIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4FF58;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FF18;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4FF38;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FF18;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderItemTypeID,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12RenderItemIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *(v17 + 16);
        v19 = *v17;
        v20 = *(v16 + 16);
        *v17 = *v16;
        *(v17 + 16) = v20;
        *v16 = v19;
        *(v16 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderItemID>();
    unk_1EB83DAB0 = 0xD68EA0DE832DEC03;
    qword_1EB83DAB8 = "md::ls::RenderItemID]";
    qword_1EB83DAC0 = 20;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FDC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4FDE0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FDC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderItemID,64ul>::~storage(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(char ***a1, int a2)
{
  v47 = 0;
  v48 = 0uLL;
  if (a2 == 1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v47, (*a1)[2]);
    v6 = (*a1 + 1);
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v48;
      do
      {
        if (v8 >= *(&v48 + 1))
        {
          v9 = (v8 - v47) >> 4;
          v10 = v9 + 1;
          if ((v9 + 1) >> 60)
          {
LABEL_72:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v11 = *(&v48 + 1) - v47;
          if ((*(&v48 + 1) - v47) >> 3 > v10)
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

          v52 = &v47;
          if (v12)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v12);
          }

          v13 = 16 * v9;
          v49 = 0;
          v50 = v13;
          *(&v51 + 1) = 0;
          *v13 = v7[56];
          *(v13 + 8) = *(v7 + 8);
          v7[56] = 0;
          *(v7 + 8) = 0;
          *&v51 = 16 * v9 + 16;
          v14 = &v47[v50 - v48];
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v47, v48, v14);
          v15 = v47;
          v16 = *(&v48 + 1);
          v47 = v14;
          v43 = v51;
          v48 = v51;
          *&v51 = v15;
          *(&v51 + 1) = v16;
          v49 = v15;
          v50 = v15;
          std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v49);
          v8 = v43;
        }

        else
        {
          *v8 = v7[56];
          *(v8 + 8) = *(v7 + 8);
          v7[56] = 0;
          *(v7 + 8) = 0;
          v8 += 16;
        }

        *&v48 = v8;
        v17 = *(v7 + 1);
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = *(v7 + 2);
            v19 = *v18 == v7;
            v7 = v18;
          }

          while (!v19);
        }

        v7 = v18;
      }

      while (v18 != v6);
    }
  }

  else if (a2 == 2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v47, ((*a1)[1] - **a1) >> 4);
    v5 = **a1;
    v4 = (*a1)[1];
    while (v5 != v4)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:nn200100](&v47, v5);
      v5 += 16;
    }
  }

  v42 = a1;
  for (i = v48; v47 != v48; i = v48)
  {
    v21 = *(i - 16);
    v45 = *(i - 16);
    v22 = *(i - 8);
    v46 = v22;
    *(i - 16) = 0;
    *(i - 8) = 0;
    v23 = v48 - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((v48 - 8), *(v48 - 16));
    *&v48 = v23;
    if (v21 == 1)
    {
      v28 = *v22;
      if (*v22 == v22 + 1)
      {
        v21 = 1;
      }

      else
      {
        do
        {
          if (v23 >= *(&v48 + 1))
          {
            v29 = (v23 - v47) >> 4;
            if ((v29 + 1) >> 60)
            {
              goto LABEL_72;
            }

            v30 = (*(&v48 + 1) - v47) >> 3;
            if (v30 <= v29 + 1)
            {
              v30 = v29 + 1;
            }

            if (*(&v48 + 1) - v47 >= 0x7FFFFFFFFFFFFFF0uLL)
            {
              v31 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v30;
            }

            v52 = &v47;
            if (v31)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v31);
            }

            v32 = 16 * v29;
            v49 = 0;
            v50 = v32;
            *(&v51 + 1) = 0;
            *v32 = *(v28 + 56);
            *(v32 + 8) = v28[8];
            *(v28 + 56) = 0;
            v28[8] = 0;
            *&v51 = 16 * v29 + 16;
            v33 = &v47[v50 - v48];
            std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(v47, v48, v33);
            v34 = v47;
            v35 = *(&v48 + 1);
            v47 = v33;
            v44 = v51;
            v48 = v51;
            *&v51 = v34;
            *(&v51 + 1) = v35;
            v49 = v34;
            v50 = v34;
            std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v49);
            v23 = v44;
          }

          else
          {
            *v23 = *(v28 + 56);
            *(v23 + 8) = v28[8];
            *(v28 + 56) = 0;
            v28[8] = 0;
            v23 += 16;
          }

          *&v48 = v23;
          v36 = v28[1];
          if (v36)
          {
            do
            {
              v37 = v36;
              v36 = *v36;
            }

            while (v36);
          }

          else
          {
            do
            {
              v37 = v28[2];
              v19 = *v37 == v28;
              v28 = v37;
            }

            while (!v19);
          }

          v28 = v37;
        }

        while (v37 != v22 + 1);
        v22 = v46;
        v21 = v45;
      }

      std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(v22[1]);
      *v22 = v22 + 1;
      v22[2] = 0;
      v22[1] = 0;
    }

    else if (v21 == 2)
    {
      v25 = *v22;
      v24 = v22[1];
      if (*v22 != v24)
      {
        do
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:nn200100](&v47, v25);
          v25 += 16;
        }

        while (v25 != v24);
        v25 = *v22;
        v24 = v22[1];
      }

      if (v24 != v25)
      {
        v26 = (v24 - 8);
        do
        {
          v27 = v26 - 1;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v26, *(v26 - 8));
          v26 -= 2;
        }

        while (v27 != v25);
      }

      v22[1] = v25;
      v21 = 2;
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v46, v21);
  }

  if (a2 > 2)
  {
    v38 = v42;
    if (a2 == 3)
    {
      v39 = *v42;
      if (*(*v42 + 23) < 0)
      {
        v41 = *v39;
        goto LABEL_68;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_71;
      }

      v39 = *v42;
      v40 = **v42;
      if (v40)
      {
        v39[1] = v40;
        v41 = v40;
LABEL_68:
        operator delete(v41);
        goto LABEL_69;
      }
    }

LABEL_70:
    operator delete(v39);
    goto LABEL_71;
  }

  v38 = v42;
  if (a2 == 1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*(*v42 + 1));
    goto LABEL_69;
  }

  if (a2 == 2)
  {
    v49 = *v42;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:nn200100](&v49);
LABEL_69:
    v39 = *v38;
    goto LABEL_70;
  }

LABEL_71:
  v49 = &v47;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:nn200100](&v49);
}

void sub_1B2D859D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, char a15)
{
  a13 = &a15;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:nn200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](unsigned __int8 *a1, void ***a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = *a1;
    if (v6 > 9)
    {
      v7 = "number";
    }

    else
    {
      v7 = off_1E7B33C98[v6];
    }

    std::string::basic_string[abi:nn200100]<0>(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ", 0x32uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(exception, 305, &v11);
  }

  v3 = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(*(a1 + 1), &v11, a2);
  if (!v3)
  {
    operator new();
  }

  return v3 + 56;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  *a1 = v2;
  *(a1 + 8) = 0;
  if (v2 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        operator new();
      }

      if (v2 == 2)
      {
        operator new();
      }

      return a1;
    }

    if (v2 == 3)
    {
      operator new();
    }

    v3 = a2[8];
LABEL_12:
    *(a1 + 8) = v3;
    return a1;
  }

  if (v2 < 8)
  {
    v3 = *(a2 + 1);
    goto LABEL_12;
  }

  if (v2 == 8)
  {
    operator new();
  }

  return a1;
}

uint64_t (****nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(uint64_t (****result)(void), unsigned __int8 *a2, unsigned int a3))(void)
{
  v5 = result;
  v6 = *a2;
  if (v6 > 4)
  {
    if (*a2 > 6u)
    {
      if (v6 != 7)
      {
        if (v6 != 8)
        {
          if (v6 != 9)
          {
            return result;
          }

          v7 = (**result)[1];
          goto LABEL_226;
        }

        (**result)[1]();
        v22 = a3 + 4;
        v9 = v5 + 76;
        v23 = *(v5 + 631);
        if ((v23 & 0x80000000) != 0)
        {
          v32 = v5[77];
          if (v32 >= v22)
          {
            v24 = *v5;
LABEL_55:
            v25 = *v9;
            goto LABEL_56;
          }
        }

        else
        {
          if (v22 <= v23)
          {
            v24 = *v5;
            v25 = v5 + 76;
LABEL_56:
            ((*v24)[1])(v24, v25, a3 + 4);
            ((**v5)[1])(*v5, "bytes: [", 10);
            v33 = *(*(a2 + 1) + 8);
            v34 = **(a2 + 1);
            if (v34 != v33)
            {
              for (; v34 != v33 - 1; v33 = *(*(a2 + 1) + 8))
              {
                v35 = *v34++;
                nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(v5, v35);
                ((**v5)[1])(*v5, ", ", 2);
              }

              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(v5, *(v33 - 1));
            }

            ((**v5)[1])(*v5, "],\n", 3);
            v36 = v5 + 76;
            if (*(v5 + 631) < 0)
            {
              v36 = *v9;
            }

            ((**v5)[1])(*v5, v36, a3 + 4);
            ((**v5)[1])(*v5, "subtype: ", 11);
            v37 = *(a2 + 1);
            if (*(v37 + 25) == 1)
            {
              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(v5, *(v37 + 24));
            }

            else
            {
              ((**v5)[1])(*v5, "null", 4);
            }

            (***v5)(*v5, 10);
            goto LABEL_81;
          }

          v32 = *(v5 + 631);
        }

        std::string::resize((v5 + 76), 2 * v32, 32);
        v24 = *v5;
        v25 = v5 + 76;
        if ((*(v5 + 631) & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      v20 = *(a2 + 1);
      if ((*&v20 & 0x8000000000000000) != 0)
      {
        v20 = -v20;
        v21 = (result + 17);
        *(result + 16) = 45;
      }

      else
      {
        v21 = result + 2;
      }

      if (v20 == 0.0)
      {
        *v21 = 11824;
        *(v21 + 2) = 48;
LABEL_225:
        v7 = (**v5)[1];
        goto LABEL_226;
      }

      v27 = *&v20 & 0xFFFFFFFFFFFFFLL;
      if (*&v20 >> 52)
      {
        v31 = (*&v20 >> 52) + 4294966221;
        v28 = 2 * (v27 | 0x10000000000000);
        v29 = (2 * (*&v20 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
        LODWORD(v30) = (*&v20 >> 52) - 1076;
        if (*&v20 >> 53 && !v27)
        {
          v54 = (*&v20 >> 52) - 53;
          v55 = 0x3FFFFFFFFFFFFFLL;
          v27 = 0x10000000000000;
          goto LABEL_115;
        }

        v27 |= 0x10000000000000uLL;
      }

      else
      {
        v28 = 2 * *&v20;
        v29 = (2 * (*&v20 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        LODWORD(v30) = -1075;
        v31 = 4294966222;
      }

      v55 = v28 - 1;
      v54 = v30;
      do
      {
LABEL_115:
        v56 = v30;
        v29 *= 2;
        v30 = (v30 - 1);
      }

      while ((v29 & 0x8000000000000000) == 0);
      do
      {
        v27 *= 2;
        v31 += 0xFFFFFFFFLL;
      }

      while ((v27 & 0x8000000000000000) == 0);
      v57 = v55 << (v54 - v30);
      if (-60 - v56 <= 0)
      {
        v58 = 78913 * (-60 - v56) / 0x40000;
      }

      else
      {
        v58 = 78913 * (-60 - v56) / 0x40000 + 1;
      }

      v59 = &nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(int)::kCachedPowers + 16 * (((v58 + 307 + (((v58 + 307) >> 28) & 7)) << 16) >> 19);
      v60 = *v59;
      v61 = *(v59 + 3);
      v62 = nlohmann::detail::dtoa_impl::diyfp::mul(v27, v31, *v59);
      v63 = nlohmann::detail::dtoa_impl::diyfp::mul(v57, v30, v60);
      v64 = nlohmann::detail::dtoa_impl::diyfp::mul(v29, v30, v60);
      v65 = -v61;
      v66 = v64 - 1 + ~v63;
      v67 = v64 - 1 - v62;
      v69 = -v68;
      v70 = 1 << -v68;
      v71 = (v64 - 1) >> -v68;
      v72 = (v70 - 1) & (v64 - 1);
      if (v71 <= 0x3B9AC9FF)
      {
        if (v71 <= 0x5F5E0FF)
        {
          if (v71 <= 0x98967F)
          {
            if (v71 <= 0xF423F)
            {
              v78 = v71 >> 5;
              v79 = v71 >> 4;
              if (v71 <= 9)
              {
                v80 = 1;
              }

              else
              {
                v80 = 10;
              }

              if (v71 <= 9)
              {
                v81 = 1;
              }

              else
              {
                v81 = 2;
              }

              if (v71 <= 0x63)
              {
                v82 = v80;
              }

              else
              {
                v82 = 100;
              }

              if (v71 <= 0x63)
              {
                v83 = v81;
              }

              else
              {
                v83 = 3;
              }

              if (v71 <= 0x3E7)
              {
                v84 = v82;
              }

              else
              {
                v84 = 1000;
              }

              if (v71 <= 0x3E7)
              {
                v85 = v83;
              }

              else
              {
                v85 = 4;
              }

              if (v79 <= 0x270)
              {
                v86 = v84;
              }

              else
              {
                v86 = 10000;
              }

              if (v79 <= 0x270)
              {
                v87 = v85;
              }

              else
              {
                v87 = 5;
              }

              v88 = v78 > 0xC34;
              if (v78 > 0xC34)
              {
                v73 = 100000;
              }

              else
              {
                v73 = v86;
              }

              if (v88)
              {
                v74 = 6;
              }

              else
              {
                v74 = v87;
              }
            }

            else
            {
              v73 = 1000000;
              v74 = 7;
            }
          }

          else
          {
            v73 = 10000000;
            v74 = 8;
          }
        }

        else
        {
          v73 = 100000000;
          v74 = 9;
        }
      }

      else
      {
        v73 = 1000000000;
        v74 = 10;
      }

      v89 = 0;
      v90 = ~v62 + v64;
      v91 = v64 - v63 - 2;
      v92 = v62 - v64 + 1;
      v93 = v21;
      v94 = v74;
      while (1)
      {
        v95 = v89;
        if (v89 == v94)
        {
          break;
        }

        v96 = v71 / v73;
        v71 = v71 % v73;
        v97 = v96 + 48;
        ++v89;
        *(v21 + v95) = v96 + 48;
        --v74;
        v98 = (v71 << v69) + v72;
        if (v66 >= v98)
        {
          v65 += v74;
          v99 = v73 << v69;
          v100 = v98 < v67 && v66 - v98 >= v99;
          if (!v100)
          {
            goto LABEL_204;
          }

          v101 = v90 - v98;
          v102 = v72 + (v71 << v69) + v99;
          v103 = v91 - v102;
          do
          {
            if (v102 >= v67 && v101 <= v92 + v102)
            {
              break;
            }

            *(v21 + v95) = --v97;
            if (v102 >= v67)
            {
              break;
            }

            v101 -= v99;
            v102 += v99;
            v100 = v103 >= v99;
            v103 -= v99;
          }

          while (v100);
        }

        else
        {
          v73 /= 0xAu;
        }

        ++v93;
        if (v66 >= v98)
        {
          goto LABEL_204;
        }
      }

      v104 = 0;
      do
      {
        v105 = v67;
        v106 = (10 * v72) >> v69;
        v72 = (v70 - 1) & (10 * v72);
        v107 = v106 + 48;
        *v93++ = v107;
        v66 *= 10;
        v67 *= 10;
        ++v104;
      }

      while (v66 < v72);
      LODWORD(v89) = v89 + v104;
      v65 -= v104;
      v108 = v67 - v72;
      if (v67 > v72 && v66 - v72 >= v70)
      {
        v109 = v70 + v72;
        v110 = v66 - v109;
        do
        {
          if (v109 >= v67 && v108 <= -10 * v105 + v109)
          {
            break;
          }

          *(v21 + v89 - 1) = --v107;
          if (v109 >= v67)
          {
            break;
          }

          v108 -= v70;
          v109 += v70;
          v100 = v110 >= v70;
          v110 -= v70;
        }

        while (v100);
      }

LABEL_204:
      v111 = v65 + v89;
      if (v65 < 0 || v111 > 15)
      {
        if ((v111 - 16) >= 0xFFFFFFF1)
        {
          v112 = v21 + v111;
          memmove(v112 + 1, v112, v89 - v111);
          *v112 = 46;
        }

        else if (v111 != 0 && v111 < 0xFFFFFFFD)
        {
          if (v89 != 1)
          {
            memmove(v21 + 2, v21 + 1, v89 - 1);
            *(v21 + 1) = 46;
            v21 = (v21 + v89);
          }

          v113 = v111 - 1;
          if (v111 >= 1)
          {
            v114 = 43;
          }

          else
          {
            v114 = 45;
          }

          *(v21 + 2) = v114;
          *(v21 + 1) = 101;
          if (v111 - 1 < 0)
          {
            v113 = 1 - v111;
          }

          if (v113 > 9)
          {
            if (v113 > 0x63)
            {
              *(v21 + 3) = v113 / 0x64 + 48;
              v113 += 156 * (v113 / 0x64);
              v116 = v113 / 0xAu;
              v115 = v21 + 5;
              *(v21 + 4) = (v113 / 0xAu) | 0x30;
            }

            else
            {
              v115 = v21 + 4;
              v116 = v113 / 0xAu;
              *(v21 + 3) = (v113 / 0xAu) | 0x30;
            }

            LOBYTE(v113) = v113 - 10 * v116;
          }

          else
          {
            v115 = v21 + 4;
            *(v21 + 3) = 48;
          }

          *v115 = v113 | 0x30;
        }

        else
        {
          memmove(v21 + -v111 + 2, v21, v89);
          *v21 = 11824;
          memset(v21 + 2, 48, -v111);
        }
      }

      else
      {
        memset(v21 + v89, 48, v111 - v89);
        *(v21 + v111) = 12334;
      }

      goto LABEL_225;
    }

    if (v6 == 5)
    {
      v12 = *(a2 + 1);
      if (v12)
      {
        v15 = result + 2;
        if ((v12 & 0x8000000000000000) != 0)
        {
          *v15 = 45;
          v12 = -v12;
          v47 = 1;
          if (v12 >= 0xA)
          {
            v48 = v12;
            while (1)
            {
              if (v48 <= 0x63)
              {
                ++v47;
                goto LABEL_139;
              }

              if (v48 <= 0x3E7)
              {
                v47 += 2;
                goto LABEL_139;
              }

              if (v48 >> 4 <= 0x270)
              {
                break;
              }

              v47 += 4;
              v100 = v48 >= 0x186A0;
              v48 /= 0x2710uLL;
              if (!v100)
              {
                goto LABEL_139;
              }
            }

            v47 += 3;
          }
        }

        else
        {
          if (v12 < 0xA)
          {
            goto LABEL_31;
          }

          v47 = 1;
          v53 = *(a2 + 1);
          while (v53 > 0x63)
          {
            if (v53 <= 0x3E7)
            {
              v47 += 2;
              goto LABEL_140;
            }

            if (v53 >> 4 <= 0x270)
            {
              v47 += 3;
              goto LABEL_140;
            }

            v47 += 4;
            v100 = v53 >= 0x186A0;
            v53 /= 0x2710uLL;
            if (!v100)
            {
              goto LABEL_140;
            }
          }
        }

LABEL_139:
        ++v47;
LABEL_140:
        v16 = v15 + v47;
        if (v12 >= 0x64)
        {
          do
          {
            v75 = v12 / 0x64;
            *(v16 - 1) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v12 % 0x64];
            v16 -= 2;
            v77 = v12 >> 4;
            v12 /= 0x64uLL;
          }

          while (v77 > 0x270);
          goto LABEL_144;
        }

        goto LABEL_143;
      }
    }

    else
    {
      if (v6 != 6)
      {
        return result;
      }

      v12 = *(a2 + 1);
      if (v12)
      {
        if (v12 >= 0xA)
        {
          v13 = 1;
          v14 = *(a2 + 1);
          while (1)
          {
            if (v14 <= 0x63)
            {
              ++v13;
              goto LABEL_129;
            }

            if (v14 <= 0x3E7)
            {
              v13 += 2;
              goto LABEL_129;
            }

            if (v14 >> 4 <= 0x270)
            {
              break;
            }

            v13 += 4;
            v100 = v14 >= 0x186A0;
            v14 /= 0x2710uLL;
            if (!v100)
            {
              goto LABEL_129;
            }
          }

          v13 += 3;
LABEL_129:
          v16 = result + v13 + 16;
          if (v12 >= 0x64)
          {
            do
            {
              v75 = v12 / 0x64;
              *(v16 - 1) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v12 % 0x64];
              v16 -= 2;
              v76 = v12 >> 4;
              v12 /= 0x64uLL;
            }

            while (v76 > 0x270);
            goto LABEL_144;
          }

LABEL_143:
          v75 = v12;
LABEL_144:
          if (v75 >= 0xA)
          {
            *(v16 - 1) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v75];
LABEL_148:
            v7 = (**result)[1];
            goto LABEL_226;
          }

          LOBYTE(v12) = v75;
LABEL_147:
          *(v16 - 1) = v12 | 0x30;
          goto LABEL_148;
        }

LABEL_31:
        v16 = result + 17;
        goto LABEL_147;
      }
    }

    v26 = ***result;

    return v26();
  }

  if (*a2 <= 1u)
  {
    if (!*a2)
    {
      v7 = (**result)[1];
      goto LABEL_226;
    }

    v7 = (**result)[1];
    if (!*(*(a2 + 1) + 16))
    {
LABEL_226:

      return v7();
    }

    v7();
    v8 = a3 + 4;
    v9 = v5 + 76;
    v10 = *(v5 + 631);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = v5[77];
      if (v11 < v8)
      {
        goto LABEL_229;
      }
    }

    else if (v8 > v10)
    {
      v11 = *(v5 + 631);
LABEL_229:
      std::string::resize((v5 + 76), 2 * v11, 32);
    }

    v38 = *(a2 + 1);
    v39 = *v38;
    if (v38[2] == 1)
    {
      v40 = *v38;
    }

    else
    {
      v41 = 0;
      do
      {
        v42 = v5 + 76;
        if (*(v5 + 631) < 0)
        {
          v42 = *v9;
        }

        ((**v5)[1])(*v5, v42, a3 + 4);
        (***v5)();
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(v5, v39 + 4);
        ((**v5)[1])(*v5, ": ", 3);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(v5, v39 + 56, a3 + 4);
        ((**v5)[1])(*v5, ",\n", 2);
        v43 = v39[1];
        if (v43)
        {
          do
          {
            v40 = v43;
            v43 = *v43;
          }

          while (v43);
        }

        else
        {
          do
          {
            v40 = v39[2];
            v44 = *v40 == v39;
            v39 = v40;
          }

          while (!v44);
        }

        ++v41;
        v39 = v40;
      }

      while (v41 < *(*(a2 + 1) + 16) - 1);
    }

    v45 = v5 + 76;
    if (*(v5 + 631) < 0)
    {
      v45 = *v9;
    }

    ((**v5)[1])(*v5, v45, a3 + 4);
    (***v5)();
    nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(v5, v40 + 4);
    ((**v5)[1])(*v5, ": ", 3);
    nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(v5, v40 + 56, a3 + 4);
    (***v5)();
LABEL_81:
    v46 = *v5;
    if (*(v5 + 631) < 0)
    {
      v9 = *v9;
    }

    goto LABEL_100;
  }

  switch(v6)
  {
    case 2u:
      v7 = (**result)[1];
      if (**(a2 + 1) != *(*(a2 + 1) + 8))
      {
        v7();
        v17 = a3 + 4;
        v9 = v5 + 76;
        v18 = *(v5 + 631);
        if ((v18 & 0x80000000) != 0)
        {
          v19 = v5[77];
          if (v19 < v17)
          {
            goto LABEL_230;
          }
        }

        else if (v17 > v18)
        {
          v19 = *(v5 + 631);
LABEL_230:
          std::string::resize((v5 + 76), 2 * v19, 32);
        }

        v49 = *(a2 + 1);
        v50 = *v49;
        if (*v49 != *(v49 + 8) - 16)
        {
          do
          {
            v51 = v5 + 76;
            if (*(v5 + 631) < 0)
            {
              v51 = *v9;
            }

            ((**v5)[1])(*v5, v51, a3 + 4);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(v5, v50, a3 + 4);
            ((**v5)[1])(*v5, ",\n", 2);
            v50 += 16;
          }

          while (v50 != (*(*(a2 + 1) + 8) - 16));
        }

        v52 = v5 + 76;
        if (*(v5 + 631) < 0)
        {
          v52 = *v9;
        }

        ((**v5)[1])(*v5, v52, a3 + 4);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(v5, (*(*(a2 + 1) + 8) - 16), a3 + 4);
        (***v5)();
        v46 = *v5;
        if (*(v5 + 631) < 0)
        {
          v9 = *v9;
        }

LABEL_100:
        ((*v46)[1])(v46, v9, a3);
        v7 = ***v5;
LABEL_101:

        return v7();
      }

      goto LABEL_226;
    case 3u:
      (***result)();
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(v5, *(a2 + 1));
      v7 = ***v5;
      goto LABEL_101;
    case 4u:
      v7 = (**result)[1];
      goto LABEL_226;
  }

  return result;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(uint64_t result, uint64_t **a2)
{
  v2 = *(a2 + 23);
  v3 = a2[1];
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(a2 + 23);
  }

  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v2 >> 63;
  v13 = result + 90;
  do
  {
    v14 = *a2;
    if ((v12 & 1) == 0)
    {
      v14 = a2;
    }

    v15 = *(v14 + v7);
    if (v10)
    {
      v11 = v15 & 0x3F | (v11 << 6);
    }

    else
    {
      v11 = (0xFFu >> nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v15]) & v15;
    }

    v10 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[16 * v10 + 256 + nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v15]];
    if (v10 != 1)
    {
      if (v10)
      {
        *(v13 + v6++) = v15;
        ++v8;
        goto LABEL_42;
      }

      if (v11 <= 11)
      {
        switch(v11)
        {
          case 8:
            v16 = 25180;
            goto LABEL_37;
          case 9:
            v16 = 29788;
            goto LABEL_37;
          case 10:
            v16 = 28252;
            goto LABEL_37;
        }
      }

      else if (v11 > 33)
      {
        if (v11 == 34)
        {
          v16 = 8796;
          goto LABEL_37;
        }

        if (v11 == 92)
        {
          v16 = 23644;
          goto LABEL_37;
        }
      }

      else
      {
        if (v11 == 12)
        {
          v16 = 26204;
          goto LABEL_37;
        }

        if (v11 == 13)
        {
          v16 = 29276;
LABEL_37:
          *(v13 + v6) = v16;
          v9 = v6 + 2;
          goto LABEL_38;
        }
      }

      if (v11 > 0x1F)
      {
        v9 = v6 + 1;
        *(v13 + v6) = v15;
      }

      else
      {
        result = snprintf((v13 + v6), 7uLL, "\\u%04x", v11);
        v9 = v6 + 6;
      }

LABEL_38:
      if ((v9 - 500) <= 0xC)
      {
        v19 = *(**v5 + 8);
LABEL_40:
        result = v19();
        v10 = 0;
        v9 = 0;
        v8 = 0;
        v6 = 0;
        goto LABEL_42;
      }

LABEL_41:
      v10 = 0;
      v8 = 0;
      v6 = v9;
      goto LABEL_42;
    }

    v17 = v5[158];
    if ((v17 - 1) < 2)
    {
      v7 -= v8 != 0;
      if (v17 == 1)
      {
        v18 = v13 + v9;
        v6 = v9 + 3;
        *v18 = -16401;
        *(v18 + 2) = -67;
        if ((v9 - 497) > 0xC)
        {
          v10 = 0;
          v8 = 0;
          v9 += 3;
          goto LABEL_42;
        }

        v19 = *(**v5 + 8);
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    if (!v17)
    {
      v42 = 3;
      *__str = 0;
      snprintf(__str, 3uLL, "%.2X", v15);
      exception = __cxa_allocate_exception(0x20uLL);
      std::to_string(&v35, v7);
      v25 = std::string::insert(&v35, 0, "invalid UTF-8 byte at index ", 0x1CuLL);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v36.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v36.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v27 = std::string::append(&v36, ": 0x", 4uLL);
      v28 = v27->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = *&v27->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      if (v42 >= 0)
      {
        v29 = __str;
      }

      else
      {
        v29 = *__str;
      }

      if (v42 >= 0)
      {
        v30 = v42;
      }

      else
      {
        v30 = v41;
      }

      v31 = std::string::append(&v37, v29, v30);
      v32 = v31->__r_.__value_.__r.__words[2];
      v38 = *&v31->__r_.__value_.__l.__data_;
      v39 = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      nlohmann::detail::type_error::create(exception, 316, &v38);
    }

    v10 = 1;
LABEL_42:
    ++v7;
    v20 = *(a2 + 23);
    v12 = v20 >> 63;
    v21 = a2[1];
    if ((v20 & 0x80000000) == 0)
    {
      v21 = *(a2 + 23);
    }
  }

  while (v7 < v21);
  if (v10)
  {
    v23 = v5[158];
    switch(v23)
    {
      case 1:
        (*(**v5 + 8))(*v5, v13, v9);
        v22 = *(**v5 + 8);
        break;
      case 2:
        v22 = *(**v5 + 8);
        break;
      case 0:
        v42 = 3;
        *__str = 0;
        v33 = *a2;
        if ((v20 & 0x80000000) == 0)
        {
          v33 = a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v33 + v21 - 1));
        v34 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        nlohmann::detail::type_error::create(v34, 316, &v38);
      default:
        return result;
    }

LABEL_51:

    return v22();
  }

  if (v6)
  {
    v22 = *(**v5 + 8);
    goto LABEL_51;
  }

  return result;
}

void sub_1B2D87898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      if (*(v37 - 81) < 0)
      {
        operator delete(*(v37 - 104));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(void *a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  if (a2 < 0xA)
  {
    v2 = 1;
LABEL_8:
    v5 = a2 | 0x30;
    goto LABEL_9;
  }

  if (a2 >= 0x64)
  {
    *(a1 + 17) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[(a2 - 100 * ((41 * a2) >> 12))];
    v2 = 3;
    a2 = (41 * a2) >> 12;
    goto LABEL_8;
  }

  v4 = &nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[a2];
  *(a1 + 17) = v4[1];
  v5 = *v4;
  v2 = 2;
LABEL_9:
  *(a1 + 16) = v5;
  return (*(**a1 + 8))(*a1, a1 + 2, v2);
}

void nlohmann::detail::type_error::create(uint64_t a1, int a2, uint64_t a3)
{
  std::string::basic_string[abi:nn200100]<0>(&__p, "type_error");
  std::operator+<char>();
  v6 = std::string::append(&v26, ".", 1uLL);
  v7 = v6->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v25, a2);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v25;
  }

  else
  {
    v8 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v27, v8, size);
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v28, "] ", 2uLL);
  v13 = v12->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = *(a3 + 8);
  }

  v17 = std::string::append(&v22, v15, v16);
  v18 = v17->__r_.__value_.__r.__words[2];
  *v23 = *&v17->__r_.__value_.__l.__data_;
  v24 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 >= 0)
  {
    v19 = v23;
  }

  else
  {
    v19 = v23[0];
  }

  *a1 = &unk_1F2A38610;
  *(a1 + 8) = a2;
  MEMORY[0x1B8C61A50](a1 + 16, v19);
  *a1 = &unk_1F2A38650;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_1B2D87C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  std::exception::~exception(v35);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void nlohmann::detail::type_error::~type_error(std::exception *this)
{
  this->__vftable = &unk_1F2A38610;
  MEMORY[0x1B8C61A60](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F2A38610;
  MEMORY[0x1B8C61A60](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1B8C62190);
}

void nlohmann::detail::exception::~exception(std::exception *this)
{
  this->__vftable = &unk_1F2A38610;
  MEMORY[0x1B8C61A60](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1B8C62190);
}

{
  this->__vftable = &unk_1F2A38610;
  MEMORY[0x1B8C61A60](&this[2]);

  std::exception::~exception(this);
}

void std::__shared_ptr_emplace<nlohmann::detail::output_string_adapter<char,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A010B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

unsigned __int8 *std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    do
    {
      *a3 = *v4;
      *(a3 + 8) = *(v4 + 1);
      *v4 = 0;
      *(v4 + 1) = 0;
      v4 += 16;
      a3 += 16;
    }

    while (v4 != a2);
    v5 = result;
    do
    {
      v6 = *v5;
      v5 += 16;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(result + 1, v6);
      result = v5;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v5 = *(i - 16);
    v4 = i - 16;
    *(a1 + 16) = v4;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((v4 + 8), v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<unsigned char>::__vallocate[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(unsigned __int8 *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*(a1 + 1));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 8, a1[56]);
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:nn200100](char a1, uint64_t a2)
{
  if (a1)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a2 + 64), *(a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

unsigned __int8 **std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(unsigned __int8 **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void sub_1B2D88224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    result = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 1;
      do
      {
        v7 = v6 - 1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6, *(v6 - 8));
        v6 -= 2;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(v6);
  }

  v7 = 16 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v16 = 16 * v2 + 16;
  v8 = *(a1 + 8);
  v9 = 16 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(*a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B2D88428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12EnteringViewEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::EnteringView>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53368;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A53388;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53368;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::EnteringView,64ul>::~storage(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_VLR_Rate>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_VLR_Rate>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, void ***a2)
{
  *(a1 + 8) = a2;
  v3 = *ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(**a2, (*a2)[1]);
  v4 = (*v3)();
  md::LayoutContext::frameState(v4);
  v6 = *(v5 + 632);
  updated = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateProcessedStatusAtFrequencyRate>();
  result = ecs2::UtilityTaskContext::toggleTask(*(*(a1 + 8) + 16), ~updated, v6);
  *(a1 + 8) = 0;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateProcessedStatusAtFrequencyRate>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateProcessedStatusAtFrequencyRate>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::Counter::nextId(void)::counter, 1u);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[1372];
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_VLR_Rate>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_VLR_Rate>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29FF2D0;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateProcessedStatusAtFrequencyRate>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateProcessedStatusAtFrequencyRate>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v5[0] = &unk_1F2A19C20;
  v8 = v7;
  v6 = v5;
  v7[0] = &unk_1F2A19C20;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19C68;
  v8 = v7;
  v6 = v5;
  v7[0] = &unk_1F2A19C68;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19CB0;
  v6 = v5;
  v8 = v7;
  v7[0] = &unk_1F2A19CB0;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19D60;
  v8 = v7;
  v6 = v5;
  v7[0] = &unk_1F2A19D60;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19DA8;
  v6 = v5;
  v8 = v7;
  v7[0] = &unk_1F2A19DA8;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19DF0;
  v8 = v7;
  v6 = v5;
  v7[0] = &unk_1F2A19DF0;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19E38;
  v6 = v5;
  v8 = v7;
  v7[0] = &unk_1F2A19E38;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19EE8;
  v8 = v7;
  v6 = v5;
  v7[0] = &unk_1F2A19EE8;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19F98;
  v6 = v5;
  v8 = v7;
  v7[0] = &unk_1F2A19F98;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  v5[0] = &unk_1F2A19FE0;
  v8 = v7;
  v6 = v5;
  v7[0] = &unk_1F2A19FE0;
  v9 = 4;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A198D8[v9])(&v4, v7);
  }

  v9 = -1;
  result = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v5);
  *(a1 + 8) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateProcessedStatusAtFrequencyRate>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateProcessedStatusAtFrequencyRate>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FF120;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

char *ecs2::Runtime::_entities<md::ita::PushRenderItems,md::ls::RenderItemID const&,md::ls::ItemsPrepared const&>(uint64_t a1, uint64_t **a2)
{
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(a1);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(a1);
  v5 = v4;
  if (*(v4 + 40) - *(v4 + 32) >= *(v3 + 40) - *(v3 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(v6 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v63, *(v6 + 32), v7, v3, v4);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v62, v7, v7, v3, v5);
  v61 = v65;
  v59 = v63;
  v60 = v64;
  v56 = v63;
  v57 = v64;
  v58 = v65;
  v8 = v63;
  v54 = v62;
  if (v63 == v62)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v11 = 0;
  }

  else
  {
    v52 = *(&v57 + 1);
    v53 = v57;
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v11 = 0;
    v12 = *(&v56 + 1);
    v51 = result;
    do
    {
      v13 = v8[1];
      v14 = v13 & 0x3F;
      v15 = (v13 >> 3) & 0x1FF8;
      v16 = *(*(*(v53 + 8) + v15) + 4 * v14 + 2);
      v17 = (*(*(v53 + 56) + ((v16 >> 3) & 0x1FF8)) + 24 * (v16 & 0x3F));
      v18 = *(*(*(v52 + 8) + v15) + 4 * v14 + 2);
      v19 = v18 & 0x3F;
      v20 = *(*(v52 + 56) + ((v18 >> 3) & 0x1FF8));
      v21 = v10;
      *(v10 + 104 * *result + 24) = *v8;
      v22 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v23 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a2);
      RenderItem = md::VKMRenderResourcesStore::getRenderItem(v22, *v17, v17[1]);
      v25 = (*(*v23 + 40))(v23, *(v20 + 8 * v19));
      v26 = v25;
      v28 = v25[10];
      v27 = v25[11];
      if (v28 >= v27)
      {
        v30 = v25[9];
        v31 = (v28 - v30) >> 3;
        if ((v31 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v32 = v27 - v30;
        v33 = v32 >> 2;
        if (v32 >> 2 <= (v31 + 1))
        {
          v33 = v31 + 1;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          v34 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v33;
        }

        v65 = v25 + 12;
        if (v34)
        {
          v35 = ggl::zone_mallocator::instance(v25);
          v36 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v35, v34);
        }

        else
        {
          v36 = 0;
        }

        v37 = &v36[8 * v34];
        v38 = &v36[8 * v31];
        *v38 = RenderItem;
        v29 = v38 + 8;
        v39 = v26[9];
        v40 = v26[10] - v39;
        v41 = &v36[8 * v31 - v40];
        memcpy(v41, v39, v40);
        v42 = v26[9];
        v26[9] = v41;
        v26[10] = v29;
        v43 = v26[11];
        v26[11] = v37;
        *&v64 = v42;
        *(&v64 + 1) = v43;
        *&v63 = v42;
        *(&v63 + 1) = v42;
        std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(&v63);
      }

      else
      {
        *v28 = RenderItem;
        v29 = v28 + 1;
      }

      v26[10] = v29;
      ++v11;
      v44 = v8 + 2;
      do
      {
        v8 = v44;
        *&v56 = v44;
        if (v44 == v12)
        {
          break;
        }

        v45 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v56, *v44, v44[1]);
        v44 = v8 + 2;
      }

      while (!v45);
      v10 = v21;
      result = v51;
    }

    while (v8 != v54);
  }

  *(v10 + 104 * *result + 24) = -65536;
  v46 = v10 + 104 * *result;
  v47 = *(v46 + 92);
  *(v46 + 92) = v47 + 1;
  *(v46 + 4 * v47 + 28) = v11;
  v48 = v10 + 104 * *result;
  v50 = *(v48 + 92);
  v49 = (v48 + 92);
  if (v50 > 0xF)
  {
    *v49 = 0;
  }

  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PushRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::PushRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FEDC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverNightTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverNightTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FEC58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverAtmosphereTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverAtmosphereTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FEB80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignFlyoverDiffuseTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignFlyoverDiffuseTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FEAA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignDiffuseTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignDiffuseTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE160;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignGradient2TextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignGradient2TextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FE088;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignGradient1TextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignGradient1TextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FDFB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignTemperatureTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignTemperatureTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FDED8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignAridityTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignAridityTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FDE00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignOverlayTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignOverlayTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FDB78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignEmissiveTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignEmissiveTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FDAA0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignRouteMaskTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignRouteMaskTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD9C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignOcclusionTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignOcclusionTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD8F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignTexTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignTexTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD818;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignShadowTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignShadowTextureIndex>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD740;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignAmbientTextureIndexFiltered>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignAmbientTextureIndexFiltered>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD668;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignAmbientTextureIndexAll>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignAmbientTextureIndexAll>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FD590;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleShadowConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleShadowConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FCED0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignRenderTargetSizeConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignRenderTargetSizeConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FCC48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleSSAOConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleSSAOConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FCB70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleBlendConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleBlendConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FCA98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignGroundAtmosphereConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignGroundAtmosphereConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC9C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLightingDebugOptionsConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLightingDebugOptionsConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC588;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLightingConfigurationVertexData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLightingConfigurationVertexData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC4B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleSunMatrixData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleSunMatrixData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC3D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleTransitionToFlatData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleTransitionToFlatData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FC300;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLightStylizedShadingSettings>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLightStylizedShadingSettings>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FBD18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLightSpecularConfiguration>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLightSpecularConfiguration>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FBC40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ecs2::Runtime::_entities<md::ita::DetermineIfShouldRender,md::ls::VisibilityGroupTest const&,md::ls::ShouldSkipRender const*,md::ls::DataForCommandBuffer const&>(uint64_t a1, uint64_t **a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupTest>(a1);
  ShouldSkip = ecs2::BasicRegistry<void>::storage<md::ls::ShouldSkipRender>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::DataForCommandBuffer>(a1);
  v6 = v5;
  if (*(v5 + 40) - *(v5 + 32) >= v3[5] - v3[4])
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  v9 = v7[4];
  v8 = v7[5];
  if (v9 != v8)
  {
    v10 = v3[1];
    v11 = v3[2];
    do
    {
      if (ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v10, v11, v6, *v9, v9[1]))
      {
        break;
      }

      v9 += 2;
    }

    while (v9 != v8);
  }

  if (v9 == v8)
  {
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    v13 = _ZTWN4ecs27Runtime11_stackIndexE();
    v35 = 0;
    goto LABEL_37;
  }

  v12 = _ZTWN4ecs27Runtime11_localStateE();
  v13 = _ZTWN4ecs27Runtime11_stackIndexE();
  v47 = 0;
  v46 = ShouldSkip;
LABEL_10:
  v14 = v9[1];
  v15 = v14 >> 6;
  v16 = v14 & 0x3F;
  v17 = ShouldSkip[1];
  if (v15 >= (ShouldSkip[2] - v17) >> 3)
  {
    goto LABEL_14;
  }

  v18 = *(v17 + 8 * v15);
  if (!v18)
  {
    goto LABEL_15;
  }

  if (*(v18 + 4 * v16) == *v9)
  {
    LOBYTE(v18) = ShouldSkip[4] + 4 * *(v18 + 4 * v16 + 2) != 0;
  }

  else
  {
LABEL_14:
    LOBYTE(v18) = 0;
  }

LABEL_15:
  v19 = *(*(v3[1] + 8 * v15) + 4 * v16 + 2);
  v20 = *(v3[7] + ((v19 >> 3) & 0x1FF8));
  v21 = *(*(*(v6 + 8) + 8 * v15) + 4 * v16 + 2);
  v22 = *(*(v6 + 56) + ((v21 >> 3) & 0x1FF8));
  *(v12 + 104 * *v13 + 24) = *v9;
  if ((v18 & 1) == 0)
  {
    v23 = v20 + 16 * (v19 & 0x3F);
    if (*(v23 + 12) == *(v23 + 8))
    {
      v45 = v22;
      v24 = a2[1];
      if (!v24)
      {
        v25 = **a2;
        v26 = *v25;
        v27 = *(v25 + 8);
        while (1)
        {
          if (v26 == v27)
          {
            goto LABEL_35;
          }

          if (*v26 == 0x22D45F5AAD4BF408)
          {
            break;
          }

          v26 += 5;
        }

        if (v26 == v27)
        {
LABEL_35:
          v24 = 0;
          goto LABEL_25;
        }

        v24 = v26[3];
        v28 = v26[4];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v28);
        }

LABEL_25:
        a2[1] = v24;
      }

      v29 = (**v24)(v24);
      md::LayoutContext::frameState(v29);
      if (*(v30 + 624) == *(v23 + 8))
      {
        v31 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a2);
        v32 = (*(*v31 + 24))(v31, *(v45 + 24 * (v21 & 0x3F) + 8), *(v45 + 24 * (v21 & 0x3F)), *(v45 + 24 * (v21 & 0x3F) + 16));
        v33 = v32;
        if (v32)
        {
          v34 = ecs2::ExecutionTaskContext::currentEntity(v32);
          v50 = &unk_1F2A3F678;
          *&v51 = v33;
          *(&v51 + 1) = v34;
          v52 = &v50;
          v55 = &v53;
          v53 = &unk_1F2A3F678;
          v54 = v51;
          HIDWORD(v54) = 0;
          v56 = 0;
          ecs2::Runtime::queueCommand();
          if (v56 != -1)
          {
            (off_1F2A3F738[v56])(&v49, &v53);
          }

          v56 = -1;
          std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v50);
        }
      }
    }
  }

  v35 = v47 + 1;
  v36 = v3[1];
  v37 = v3[2];
  v38 = v9 + 2;
  while (v38 != v8)
  {
    v9 = v38;
    v39 = ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v36, v37, v6, *v38, v38[1]);
    v38 = v9 + 2;
    if (v39)
    {
      ++v47;
      ShouldSkip = v46;
      goto LABEL_10;
    }
  }

LABEL_37:
  *(v12 + 104 * *v13 + 24) = -65536;
  v40 = v12 + 104 * *v13;
  v41 = *(v40 + 92);
  *(v40 + 92) = v41 + 1;
  *(v40 + 4 * v41 + 28) = v35;
  v42 = v12 + 104 * *v13;
  v44 = *(v42 + 92);
  v43 = (v42 + 92);
  if (v44 > 0xF)
  {
    *v43 = 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20DataForCommandBufferEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::DataForCommandBuffer>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *(v17 + 16);
        v19 = *v17;
        v20 = *(v16 + 16);
        *v17 = *v16;
        *(v17 + 16) = v20;
        *v16 = v19;
        *(v16 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FFA0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4FFC0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FFA0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::DataForCommandBuffer,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16ShouldSkipRenderEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>(void)::metadata;
  ShouldSkip = ecs2::BasicRegistry<void>::storage<md::ls::ShouldSkipRender>(v3);
  v6 = ShouldSkip[1];
  if (v2 >> 22 < (ShouldSkip[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = ShouldSkip;
        v9 = ShouldSkip[25];
        v10 = ShouldSkip[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ShouldSkipRender,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35120;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ShouldSkipRender,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35120;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19VisibilityGroupTestEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupTest>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupTest>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A500B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A500D0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A500B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::VisibilityGroupTest,64ul>::~storage(a1);
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::PendingRenderItemSetup const&,md::ls::RenderItemID &,md::ls::RenderOrderToUse const*,md::ls::InstanceCount const*,md::ls::StencilRefValueToUse const*,md::ls::IndexRange const&,md::ls::HasMeshHandle const&>,std::tuple<>>::containsAll<md::ls::PendingRenderItemSetup const,md::ls::RenderItemID,md::ls::IndexRange const,md::ls::HasMeshHandle const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[8] + 8), v3 < (*(a1[8] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0)
  {
    return *(v11 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13HasMeshHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>(void)::metadata;
  HasMesh = ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(v3);
  v6 = v2 >> 22;
  v7 = HasMesh[1];
  if (v2 >> 22 < (HasMesh[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = HasMesh;
        v11 = HasMesh[31];
        v12 = HasMesh[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMeshHandle>();
    *algn_1EB83DA68 = 0xCD844FF303308290;
    qword_1EB83DA70 = "md::ls::HasMeshHandle]";
    qword_1EB83DA78 = 21;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50840;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50860;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50840;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::HasMeshHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10IndexRangeEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IndexRange>();
    unk_1EB83DCC0 = 0x71CBA64B1A9CA230;
    qword_1EB83DCC8 = "md::ls::IndexRange]";
    qword_1EB83DCD0 = 18;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50FB0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::IndexRange,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20StencilRefValueToUseEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StencilRefValueToUse>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StencilRefValueToUse>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A0E020;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A0E040;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A0E020;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StencilRefValueToUse,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13InstanceCountEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceCount>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InstanceCount>();
    *algn_1EB83DA18 = 0xE53EF176130D7769;
    qword_1EB83DA20 = "md::ls::InstanceCount]";
    qword_1EB83DA28 = 21;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A516A0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::InstanceCount,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16RenderOrderToUseEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderOrderToUse>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderOrderToUse>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50290;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A502B0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50290;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderOrderToUse,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22PendingRenderItemSetupEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingRenderItemSetup,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FE48;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingRenderItemSetup,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FE48;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15ColorDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ColorDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50DF0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50E10;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50DF0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ColorDataHandle,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleColorConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleColorConstantDataHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FB658;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17FunctionConstantsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
    unk_1EB83D2C0 = 0xC62D89929260CB56;
    qword_1EB83D2C8 = "md::ls::FunctionConstants]";
    qword_1EB83D2D0 = 25;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v12 = v5[31];
        v11 = v5[32];
        if (v12 != v11)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v12 + 24), v2);
            v12 += 32;
          }

          while (v12 != v11);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 70 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 70 * (v13 & 0x3F);
        v18 = *v17;
        v19 = *(v17 + 16);
        v20 = *(v17 + 32);
        v21 = *(v17 + 33);
        v22 = *(v17 + 34);
        v23 = *(v17 + 50);
        v24 = *(v17 + 66);
        v25 = *(v17 + 67);
        v26 = *(v17 + 68);
        if (v17 != v16)
        {
          *v17 = *v16;
          *(v17 + 16) = *(v16 + 16);
          *(v17 + 32) = *(v16 + 32);
          *(v17 + 34) = *(v16 + 34);
          *(v17 + 50) = *(v16 + 50);
          *(v17 + 66) = *(v16 + 66);
        }

        *(v17 + 68) = *(v16 + 68);
        *v16 = v18;
        *(v16 + 16) = v19;
        *(v16 + 32) = v20;
        *(v16 + 33) = v21;
        *(v16 + 34) = v22;
        *(v16 + 50) = v23;
        *(v16 + 66) = v24;
        *(v16 + 67) = v25;
        *(v16 + 68) = v26;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
    unk_1EB83D2C0 = 0xC62D89929260CB56;
    qword_1EB83D2C8 = "md::ls::FunctionConstants]";
    qword_1EB83D2D0 = 25;
  }

  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A501A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A501C0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A501A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FunctionConstants,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22RequiredPipelinePoolIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiredPipelinePoolID>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiredPipelinePoolID>();
    *algn_1EB83CAD8 = 0xE54E641F7C1F9B89;
    qword_1EB83CAE0 = "md::ls::RequiredPipelinePoolID]";
    qword_1EB83CAE8 = 30;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50028;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50048;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50028;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiredPipelinePoolID,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7Flyover12NightTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::NightTexture>>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A526A0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15FlyoverInstanceEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverInstance>();
    *algn_1EB83D708 = 0x69465F3BE0BF85FBLL;
    qword_1EB83D710 = "md::ls::FlyoverInstance]";
    qword_1EB83D718 = 23;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverInstance,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F730;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverInstance,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F730;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10IsMercatorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsMercator>();
    *algn_1EB83DC58 = 0x237F9D3BCC905318;
    qword_1EB83DC60 = "md::ls::IsMercator]";
    qword_1EB83DC68 = 18;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsMercator,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FA30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsMercator,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FA30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls4IsS2EEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsS2>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FB90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4FBB0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FB90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::IsS2,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls7IsDecalEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsDecal>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDecal>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsDecal>();
    unk_1EB83B920 = 0x76B9BA390004E44ELL;
    qword_1EB83B928 = "md::ls::IsDecal]";
    qword_1EB83B930 = 15;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsDecal,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51750;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsDecal,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51750;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MainPassItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MainPassItem>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MainPassItem>();
    unk_1EB83DAF0 = 0xDB4F0ABC43345F6ALL;
    qword_1EB83DAF8 = "md::ls::MainPassItem]";
    qword_1EB83DB00 = 20;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MainPassItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FEB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MainPassItem,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FEB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16NeedsRenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsRenderState>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsRenderState>();
    unk_1EB83D580 = 0x1E85A99FD528C623;
    qword_1EB83D588 = "md::ls::NeedsRenderState]";
    qword_1EB83D590 = 24;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsRenderState,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F980;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsRenderState,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F980;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21PredefinedRenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PredefinedRenderState>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PredefinedRenderState>();
    *algn_1EB83CCA8 = 0xCB8AA7FBA6BCD25CLL;
    qword_1EB83CCB0 = "md::ls::PredefinedRenderState]";
    qword_1EB83CCB8 = 29;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F8B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4F8D0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F8B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PredefinedRenderState,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19NeedsNewRenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsNewRenderState>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsNewRenderState>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsNewRenderState>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = (*(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) - (v14 & 0x3F) + 8 * (v14 & 0x3F));
        v17 = (*(v15 + ((v13 >> 3) & 0x1FF8)) - (v13 & 0x3F) + 8 * (v13 & 0x3F));
        LODWORD(v19) = *v17;
        *(&v19 + 3) = *(v17 + 3);
        v18 = *(v16 + 3);
        *v17 = *v16;
        *(v17 + 3) = v18;
        *(v16 + 3) = *(&v19 + 3);
        *v16 = v19;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsNewRenderState>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsNewRenderState>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29FAF10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29FAF30;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29FAF10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::NeedsNewRenderState,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13IsTransparentEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsTransparent>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 4 * v18);
        *(v19 + 4 * v18) = *(v17 + 4 * v15);
        *(v17 + 4 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51450;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51470;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51450;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::IsTransparent,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS6_10SceneLayerE3EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F520;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F520;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17CustomRenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::CustomRenderState>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v19 = *v17;
        v18 = *(v17 + 8);
        *v17 = 0;
        *(v17 + 8) = 0;
        v23 = *(v17 + 16);
        v20 = *v16;
        *v16 = 0;
        *(v16 + 8) = 0;
        v21 = *(v17 + 8);
        *v17 = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        }

        *(v17 + 16) = *(v16 + 16);
        v22 = *(v16 + 8);
        *v16 = v19;
        *(v16 + 8) = v18;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
          v18 = *(v16 + 8);
        }

        *(v16 + 16) = v23;
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CustomRenderState>();
    unk_1EB83D300 = 0xA0C97F52893883B7;
    qword_1EB83D308 = "md::ls::CustomRenderState]";
    qword_1EB83D310 = 25;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F7E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4F800;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[7];
  v7 = a1[8];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F7E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::CustomRenderState,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS6_10SceneLayerE4EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F5D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F5D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorBlendedWater>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorBlendedWater>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA9B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorRoutelineMask>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorRoutelineMask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA730;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10NeedsZBiasEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsZBias>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsZBias>();
    *algn_1EB83DC18 = 0x499CE17DBD9A1615;
    qword_1EB83DC20 = "md::ls::NeedsZBias]";
    qword_1EB83DC28 = 18;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsZBias,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51520;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsZBias,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51520;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci10TexTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::TexTexture>>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::TexTexture>>();
    *algn_1EB83CE78 = 0x1D932F2BF291491;
    qword_1EB83CE80 = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    qword_1EB83CE88 = 49;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50EC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50EE0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50EC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::TexTexture>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorTextureEnabled>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorTextureEnabled>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA580;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci15EmissiveTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>();
    unk_1EB83CE10 = 0xCE03281732FA0019;
    qword_1EB83CE18 = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    qword_1EB83CE20 = 54;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51D90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51DB0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51D90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorEmissiveTextureEnabled>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorEmissiveTextureEnabled>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FA4A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26StyleEmissiveDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleEmissiveDataKeyHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleEmissiveDataKeyHandle>();
    unk_1EB83C540 = 0xA50DD2A5BD75DBD6;
    qword_1EB83C548 = "md::ls::StyleEmissiveDataKeyHandle]";
    qword_1EB83C550 = 34;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50C50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50C70;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50C50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleEmissiveDataKeyHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14PreserveHeightEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PreserveHeight>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PreserveHeight>();
    unk_1EB83D820 = 0x98A9F01DBB8BCCCELL;
    qword_1EB83D828 = "md::ls::PreserveHeight]";
    qword_1EB83D830 = 22;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PreserveHeight,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A515D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PreserveHeight,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A515D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

double ecs2::View<void,md::ls::FunctionConstants,md::ls::HasMaterialRasterRenderItem const>::each<md::ls::FunctionConstants&,md::ls::HasMaterialRasterRenderItem const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 40) - *(a3 + 32) >= *(a2 + 40) - *(a2 + 32))
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  v7 = *(v6 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v10, *(v6 + 32), v7, a2, a3);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator((a1 + 40), v7, v7, a2, a3);
  result = *v10;
  v9 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v9;
  *(a1 + 32) = v11;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27HasMaterialRasterRenderItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>(void)::metadata;
  HasMaterialRasterRender = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRasterRenderItem>(v3);
  v6 = v2 >> 22;
  v7 = HasMaterialRasterRender[1];
  if (v2 >> 22 < (HasMaterialRasterRender[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = HasMaterialRasterRender;
        v11 = HasMaterialRasterRender[31];
        v12 = HasMaterialRasterRender[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMaterialRasterRenderItem>();
    unk_1EB83C470 = 0xD5B48B62BD07EF80;
    qword_1EB83C478 = "md::ls::HasMaterialRasterRenderItem]";
    qword_1EB83C480 = 35;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F0A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4F0C0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F0A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::HasMaterialRasterRenderItem,64ul>::~storage(a1);
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorPlanar,md::ls::FunctionConstants &,md::ls::PlanarParametersCacheKeyHandle const&,md::ls::TriPlanar const*>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v2);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TriPlanar>(v2);
  if (*(v4 + 40) - *(v4 + 32) >= v3[5] - v3[4])
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6[4];
  v8 = v6[5];
  if (v7 != v8)
  {
    v9 = v3[1];
    v10 = v3[2];
    do
    {
      if (ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v9, v10, v4, *v7, v7[1]))
      {
        break;
      }

      v7 += 2;
    }

    while (v7 != v8);
  }

  if (v7 == v8)
  {
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    goto LABEL_22;
  }

  v35 = a1;
  v11 = _ZTWN4ecs27Runtime11_localStateE();
  v12 = _ZTWN4ecs27Runtime11_stackIndexE();
  v13 = 0;
  v34 = v5;
LABEL_10:
  v14 = v7[1];
  v15 = v14 >> 6;
  v16 = v14 & 0x3F;
  v17 = v5[1];
  if (v15 >= (v5[2] - v17) >> 3)
  {
    goto LABEL_14;
  }

  v18 = *(v17 + 8 * v15);
  if (!v18)
  {
    goto LABEL_15;
  }

  if (*(v18 + 4 * v16) == *v7)
  {
    LOBYTE(v18) = v5[4] + 4 * *(v18 + 4 * v16 + 2) != 0;
  }

  else
  {
LABEL_14:
    LOBYTE(v18) = 0;
  }

LABEL_15:
  v19 = *(*(v3[1] + 8 * v15) + 4 * v16 + 2);
  v20 = *(v3[7] + ((v19 >> 3) & 0x1FF8)) + 70 * (v19 & 0x3F);
  v22 = *v7;
  v21 = v7 + 2;
  *(v11 + 104 * *v12 + 24) = v22;
  *(v20 + 2) = 1;
  *(v20 + 3) = v18;
  ++v13;
  v23 = v3[1];
  v24 = v3[2];
  while (v21 != v8)
  {
    v25 = v21;
    v26 = v21[1];
    v27 = *v21;
    v21 += 2;
    if (ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v23, v24, v4, v27, v26))
    {
      v7 = v25;
      v5 = v34;
      goto LABEL_10;
    }
  }

  v28 = *(v35 + 8);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
    unk_1EB83D2C0 = 0xC62D89929260CB56;
    qword_1EB83D2C8 = "md::ls::FunctionConstants]";
    qword_1EB83D2D0 = 25;
  }

  *(v28 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v28 + 4096);
LABEL_22:
  *(v11 + 104 * *v12 + 24) = -65536;
  v29 = v11 + 104 * *v12;
  v30 = *(v29 + 92);
  *(v29 + 92) = v30 + 1;
  *(v29 + 4 * v30 + 28) = v13;
  v31 = v11 + 104 * *v12;
  v33 = *(v31 + 92);
  v32 = (v31 + 92);
  if (v33 >= 0x10)
  {
    *v32 = 0;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TriPlanar>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TriPlanar>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TriPlanar>(void)::localId;
    unk_1EB82B360 = 0x1223E23132DA4D6ALL;
    qword_1EB82B368 = "md::ls::TriPlanar]";
    qword_1EB82B370 = 17;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls9TriPlanarEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TriPlanar>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TriPlanar>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls9TriPlanarEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A518F0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TriPlanar,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A518D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TriPlanar,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A518D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PlanarParametersCacheKeyHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PlanarParametersCacheKeyHandle>(void)::localId;
    unk_1EB82B3D0 = 0xD02B5FD100F36AA2;
    qword_1EB82B3D8 = "md::ls::PlanarParametersCacheKeyHandle]";
    qword_1EB82B3E0 = 38;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30PlanarParametersCacheKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30PlanarParametersCacheKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51C30;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51BF0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51C10;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51BF0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PlanarParametersCacheKeyHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30IntendedStandardPassSceneDepthEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedStandardPassSceneDepth>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedStandardPassSceneDepth>();
    unk_1EB83BCB0 = 0xE7D1C5E790E8E07;
    qword_1EB83BCB8 = "md::ls::IntendedStandardPassSceneDepth]";
    qword_1EB83BCC0 = 38;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedStandardPassSceneDepth,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53020;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedStandardPassSceneDepth,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53020;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17UseIdentityMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UseIdentityMatrix>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UseIdentityMatrix,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53AA8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UseIdentityMatrix,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53AA8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls35PositionScaleInfoConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 16 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F);
        v18 = *v17;
        LOBYTE(v15) = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v15;
        *v16 = v18;
        *(v16 + 8) = BYTE8(v18);
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50770;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50790;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50770;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls38StyleGroundOcclusionConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleGroundOcclusionConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A56200;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A56220;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A56200;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19MaterialSpecularityEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialSpecularity>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialSpecularity>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialSpecularity>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 4 * v18);
        *(v19 + 4 * v18) = *(v17 + 4 * v15);
        *(v17 + 4 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialSpecularity>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialSpecularity>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F9610;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F9630;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F9610;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15HasOverlayPatchEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>(void)::metadata;
  HasOverlay = ecs2::BasicRegistry<void>::storage<md::ls::HasOverlayPatch>(v3);
  v6 = v2 >> 22;
  v7 = HasOverlay[1];
  if (v2 >> 22 < (HasOverlay[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = HasOverlay;
        v11 = HasOverlay[31];
        v12 = HasOverlay[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasOverlayPatch>();
    unk_1EB83D6C0 = 0xE40027D1222182B5;
    qword_1EB83D6C8 = "md::ls::HasOverlayPatch]";
    qword_1EB83D6D0 = 23;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42708;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42728;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42708;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10IsElevatedEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsElevated>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsElevated,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsElevated,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSSAO>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSSAO>>,void ()(ecs2::Runtime &)>::operator()(void *a1, void ***a2)
{
  v22 = *MEMORY[0x1E69E9840];
  a1[1] = a2;
  v3 = (a1 + 1);
  v4 = a1[3];
  if (!v4)
  {
    v4 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(**a2, (*a2)[1]);
    a1[3] = v4;
  }

  v5 = (**v4)(v4);
  v6 = md::LayoutContext::get<md::LightingLogicContext>(*(v5 + 8));
  if (v6)
  {
    v7 = *(v6 + 259);
  }

  else
  {
    v7 = 0;
  }

  v21 = v7 & 1;
  v8 = a1[4];
  if (!v8)
  {
    v9 = **v3;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v10 == v11)
    {
      goto LABEL_10;
    }

    while (*v10 != 0xD369A4D92C8FFE6CLL)
    {
      v10 += 5;
      if (v10 == v11)
      {
        goto LABEL_10;
      }
    }

    if (v10 == v11)
    {
LABEL_10:
      v8 = 0;
    }

    else
    {
      v8 = v10[3];
      v12 = v10[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }
    }

    a1[4] = v8;
  }

  v13 = *((*(*v8 + 16))(v8) + 24);
  v14 = a1[2];
  if (!v14)
  {
    v15 = **v3;
    v16 = *v15;
    v17 = *(v15 + 8);
    if (v16 == v17)
    {
      goto LABEL_19;
    }

    while (*v16 != 0x41D4E9297E100630)
    {
      v16 += 5;
      if (v16 == v17)
      {
        goto LABEL_19;
      }
    }

    if (v16 == v17)
    {
LABEL_19:
      v14 = 0;
    }

    else
    {
      v14 = v16[3];
      v18 = v16[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v18);
      }
    }

    a1[2] = v14;
  }

  v20 = v14;
  v19 = md::FrameGraph::renderQueueForPass(*(v13 + 8), 3) != 0;
  operator new();
}

void sub_1B2D9B22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSSAO>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSSAO>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9340;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17AssociationHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *(v17 + 16);
        v19 = *v17;
        v20 = *(v16 + 16);
        *v17 = *v16;
        *(v17 + 16) = v20;
        *v16 = v19;
        *(v16 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AssociationHandle>();
    unk_1EB83D350 = 0x523816724122CCE2;
    qword_1EB83D358 = "md::ls::AssociationHandle]";
    qword_1EB83D360 = 25;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50430;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50450;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50430;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PerformVisibilityTestOnRenderItem>,std::allocator<ecs2::ForwardToExecute<md::ita::PerformVisibilityTestOnRenderItem>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9190;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

char *ecs2::Runtime::_entities<md::ita::CreateDepthPeeledRenderItems,md::ls::SliceAssignmentT<(md::SliceType)7> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::RequiresDepthPeel const&,md::ls::MeshLayerTypeV const&,md::ls::IntendedSceneLayer const&,md::ls::PendingProcessing const&,md::ls::AssociationHandle *,md::ls::PrepassConstantDataHandle const*,md::ls::ShadowConstantDataHandle const*,md::ls::PreserveHeight const*,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::ClippingConstantDataHandle const*,md::ls::IsMercator const*,md::ls::ElevationHandle const*,md::ls::SharedUniqueID const*>(uint64_t a1, uint64_t **a2)
{
  v92[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)7>>(v3);
  v59 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshVertexFormat>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileType>(v3);
  v56 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresDepthPeel>(v3);
  v54 = ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayer>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessing>(v3);
  v65 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(v3);
  v64 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassConstantDataHandle>(v3);
  v63 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowConstantDataHandle>(v3);
  v61 = ecs2::BasicRegistry<void>::storage<md::ls::PreserveHeight>(v3);
  HasMesh = ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(v3);
  v58 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v3);
  v57 = ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(v3);
  v55 = ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(v3);
  v53 = ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(v3);
  v52 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v3);
  v51 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v3);
  v50 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsZBias>(v3);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::ClippingConstantDataHandle>(v3);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v3);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v3);
  v12 = ecs2::BasicRegistry<void>::storage<md::ls::SharedUniqueID>(v3);
  *buf = v4;
  *&buf[8] = v59;
  *&buf[16] = v5;
  *&buf[24] = v56;
  *&v80 = v54;
  *(&v80 + 1) = v6;
  v13 = buf;
  v14 = 8;
  v15 = v4;
  *&v81 = v7;
  do
  {
    if (*(*&buf[v14] + 40) - *(*&buf[v14] + 32) < *(v15 + 40) - *(v15 + 32))
    {
      v15 = *&buf[v14];
      v13 = &buf[v14];
    }

    v14 += 8;
  }

  while (v14 != 56);
  v16 = *v13;
  v18 = *(v16 + 32);
  v17 = *(v16 + 40);
  *buf = v18;
  *&buf[8] = v17;
  *&buf[16] = v4;
  *&buf[24] = v59;
  *&v80 = v5;
  *(&v80 + 1) = v56;
  *&v81 = v54;
  *(&v81 + 1) = v6;
  *&v82 = v7;
  *(&v82 + 1) = v65;
  *&v83 = v64;
  *(&v83 + 1) = v63;
  *&v84 = v61;
  *(&v84 + 1) = HasMesh;
  *&v85 = v58;
  *(&v85 + 1) = v57;
  *&v86 = v55;
  *(&v86 + 1) = v53;
  *&v87 = v52;
  *(&v87 + 1) = v51;
  *&v88 = v50;
  *(&v88 + 1) = v8;
  *&v89 = v9;
  *(&v89 + 1) = v10;
  *&v90 = v11;
  *(&v90 + 1) = v12;
  v62 = v17;
  while (v18 != v17 && !_ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16MeshRenderableIDERKNS4_16SliceAssignmentTILNS3_9SliceTypeE7EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_17PendingProcessingERKNS4_14MeshLayerTypeVERKNS4_18IntendedSceneLayerEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleEPKNS4_26SharedMaterialZIndexHandleEPNS4_17AssociationHandleEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_31StyleRouteLineMaskDataKeyHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS2C_INS2D_10TexTextureEEEPKNS2C_INS2D_15EmissiveTextureEEEPKNS2C_INS2D_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_40FlyoverCommonTransformConstantDataHandleEPKNS4_30FlyoverCommonS2TransformHandleEPKNS4_28FlyoverCommonTexcoordsHandleEPKNS4_27FlyoverCommonMaterialHandleEPKNS4_29FlyoverClipConstantDataHandleEPKNS2C_IN7Flyover14DiffuseTextureEEEPKNS2C_INS3U_12NightTextureEEEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(buf, *v18, v18[1]))
  {
    v18 += 2;
    *buf = v18;
    v17 = v62;
  }

  v73 = v88;
  v74 = v89;
  v75 = v90;
  v76 = v91;
  v69 = v84;
  v70 = v85;
  v71 = v86;
  v72 = v87;
  v66[2] = v80;
  v66[3] = v81;
  v67 = v82;
  v68 = v83;
  v66[0] = *buf;
  v66[1] = *&buf[16];
  v19 = *buf;
  if (*buf == v62)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
  }

  else
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
    v49 = *(&v67 + 1);
    v47 = v20;
    v48 = v21;
    do
    {
      v23 = v19[1];
      v24 = v23 >> 6;
      v25 = v23 & 0x3F;
      v26 = v49[1];
      if (v24 < (v49[2] - v26) >> 3 && (v27 = *(v26 + 8 * v24)) != 0 && *(v27 + 4 * v25) == *v19)
      {
        v28 = *(v27 + 4 * v25 + 2);
        v29 = (*(v49[7] + ((v28 >> 3) & 0x1FF8)) + 24 * (v28 & 0x3F));
      }

      else
      {
        v29 = 0;
      }

      *(v21 + 104 * *v20 + 24) = *v19;
      v30 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a2);
      if (!v30[1782])
      {
        v92[0] = v30[1774] + 2136;
        *buf = v92;
        v30[1782] = md::add2((v30 + 97), buf, 1);
      }

      Entity = ecs2::ExecutionTaskContext::createEntity((*a2)[1]);
      if (v29)
      {
        createRenderItemForEntity(&v77, Entity, v30, v29);
        v32 = v78;
        if (v78 != 1)
        {
          ecs2::addComponent<md::ls::PendingRenderItemSetup>(*a2, Entity);
          if (!v32)
          {
            *buf = v77;
            *&buf[16] = 91;
            ecs2::addComponent<md::ls::RenderItemID>(*a2, Entity, buf);
          }

          std::__throw_bad_variant_access[abi:nn200100]();
        }
      }

      else
      {
        LOBYTE(v77) = 2;
      }

      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v33 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = "";
        if (v77 <= 2uLL)
        {
          v34 = off_1E7B3D650[v77];
        }

        *buf = 136315906;
        *&buf[4] = v34;
        *&buf[12] = 2080;
        *&buf[14] = "false";
        *&buf[22] = 2080;
        *&buf[24] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
        LOWORD(v80) = 1024;
        *(&v80 + 2) = 432;
        _os_log_impl(&dword_1B2754000, v33, OS_LOG_TYPE_ERROR, "Failed to create depth peeled render item (%s): Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
      }

      ecs2::ExecutionTaskContext::destroyEntity(*a2, Entity);
      ++v22;
      v35 = *(&v66[0] + 1);
      v36 = v19 + 2;
      while (1)
      {
        v19 = v36;
        *&v66[0] = v36;
        if (v36 == v35)
        {
          break;
        }

        IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE = _ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16MeshRenderableIDERKNS4_16SliceAssignmentTILNS3_9SliceTypeE7EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_17PendingProcessingERKNS4_14MeshLayerTypeVERKNS4_18IntendedSceneLayerEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleEPKNS4_26SharedMaterialZIndexHandleEPNS4_17AssociationHandleEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_31StyleRouteLineMaskDataKeyHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS2C_INS2D_10TexTextureEEEPKNS2C_INS2D_15EmissiveTextureEEEPKNS2C_INS2D_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_40FlyoverCommonTransformConstantDataHandleEPKNS4_30FlyoverCommonS2TransformHandleEPKNS4_28FlyoverCommonTexcoordsHandleEPKNS4_27FlyoverCommonMaterialHandleEPKNS4_29FlyoverClipConstantDataHandleEPKNS2C_IN7Flyover14DiffuseTextureEEEPKNS2C_INS3U_12NightTextureEEEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(v66, *v36, v36[1]);
        v36 = v19 + 2;
        if (IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE)
        {
          v35 = v19;
          break;
        }
      }

      v20 = v47;
      v21 = v48;
    }

    while (v35 != v62);
    v38 = *(a1 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
    result = v47;
    v40 = v48;
    *(v38 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata) = *(v38 + 4096);
  }

  *(v40 + 104 * *result + 24) = -65536;
  v41 = v40 + 104 * *result;
  v42 = *(v41 + 92);
  *(v41 + 92) = v42 + 1;
  *(v41 + 4 * v42 + 28) = v22;
  v43 = v40 + 104 * *result;
  v45 = *(v43 + 92);
  v44 = (v43 + 92);
  if (v45 >= 0x10)
  {
    *v44 = 0;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14SharedUniqueIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedUniqueID>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedUniqueID>();
    *algn_1EB83D7B8 = 0x7931433C9A6EB2C6;
    qword_1EB83D7C0 = "md::ls::SharedUniqueID]";
    qword_1EB83D7C8 = 22;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51CC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51CE0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51CC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15ElevationHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A512D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A512F0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A512D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26ClippingConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ClippingConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ClippingConstantDataHandle>();
    *algn_1EB83C6B8 = 0x9292F9031FE6DB5;
    qword_1EB83C6C0 = "md::ls::ClippingConstantDataHandle]";
    qword_1EB83C6C8 = 34;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51B20;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51B40;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51B20;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls9UVsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51200;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51220;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51200;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23InstanceTransformHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51130;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51150;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51130;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13NormalsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51060;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51080;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51060;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27TransformConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TransformConstantDataHandle>();
    *algn_1EB83C3D8 = 0x74DC502726E97929;
    qword_1EB83C3E0 = "md::ls::TransformConstantDataHandle]";
    qword_1EB83C3E8 = 35;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A509E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50A00;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A509E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22ViewConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ViewConstantDataHandle>();
    unk_1EB83CA90 = 0xCFE242268B958ADALL;
    qword_1EB83CA98 = "md::ls::ViewConstantDataHandle]";
    qword_1EB83CAA0 = 30;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50910;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50930;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50910;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls24ShadowConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ShadowConstantDataHandle>();
    *algn_1EB83C788 = 0xEAA0B82FC49F7277;
    qword_1EB83C790 = "md::ls::ShadowConstantDataHandle]";
    qword_1EB83C798 = 32;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52820;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52840;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52820;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25PrepassConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PrepassConstantDataHandle>();
    unk_1EB83C700 = 0x1EBB3E0519E8FF9DLL;
    qword_1EB83C708 = "md::ls::PrepassConstantDataHandle]";
    qword_1EB83C710 = 33;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A528F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52910;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A528F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>::~storage(a1);
}

void ecs2::BasicRegistry<void>::remove<md::ls::PendingProcessing>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessing>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      if (*(v8 + 4 * ((a2 >> 16) & 0x3F)) == a2)
      {
        v9 = v5;
        v10 = v5[25];
        for (i = v5[26]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), a2);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v9, a2, WORD1(a2));
      }
    }
  }

  v12 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v12 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessing>();
    unk_1EB83D270 = 0x75DBD6381F1903FFLL;
    qword_1EB83D278 = "md::ls::PendingProcessing]";
    qword_1EB83D280 = 25;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A419B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A419B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17RequiresDepthPeelEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresDepthPeel>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresDepthPeel,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A028;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresDepthPeel,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A028;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RenderableMeshVertexFormatEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshVertexFormat>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableMeshVertexFormat>();
    *algn_1EB83C648 = 0xE8C803AC798645E1;
    qword_1EB83C650 = "md::ls::RenderableMeshVertexFormat]";
    qword_1EB83C658 = 34;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41EE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41F08;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41EE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateDepthPeeledRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateDepthPeeledRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8F08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateTileClearRenderItemsForShadowPass>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateTileClearRenderItemsForShadowPass>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8E30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateTileClearRenderItemsForDepthPrePass>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateTileClearRenderItemsForDepthPrePass>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8D58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void gdc::typelist_as_vector<std::tuple<md::ls::SliceAssignmentT<(md::SliceType)2>,md::ls::RenderableMeshVertexFormat,md::ls::TileType,md::ls::IntendedSceneLayer,md::ls::MeshLayerTypeV,md::ls::HasMeshHandle,md::ls::PositionScaleInfoConstantDataHandle,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::StyleDataKeyHandle,md::ls::StyleSSAODataKeyHandle,md::ls::StyleEmissiveDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::StyleCameraConstantDataHandle,md::ls::ColorDataHandle,md::ls::IndexRange,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::PendingProcessing,md::ls::NormalsHandle,md::ls::InstanceTransformHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,md::ls::LandCoverSettingsConstantDataHandle,md::ls::ShadowConstantDataHandle,md::ls::PrepassConstantDataHandle,md::ls::ClippingConstantDataHandle,md::ls::PlanarParametersCacheKeyHandle,md::ls::TextureHandleForType<DaVinci::TexTexture>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,md::ls::BlendRasterConstantDataHandle,md::ls::RasterOverlayConstantDataHandle,md::ls::HasStyleAttributeRasterSet,md::ls::HasMaterialRaster,md::ls::NeedsClimateTint,md::ls::CustomRenderState,md::ls::ColorRampDataHandle,md::ls::SharedUniqueID,md::ls::IsOpaque,md::ls::IsTransparent,md::ls::NeedsZBias,md::ls::PreserveHeight,md::ls::InstanceCount,md::ls::IsDecal,md::ls::IsMaterial,md::ls::TriPlanar,md::ls::IsMercator,md::ls::SupportsStylizedShading,md::ls::SupportsSteepnessDarkening,md::ls::RenderableHash>>(const void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 0x33uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xF5773E2F171FA967;
    *(v9 + 8) = "md::ls::SliceAssignmentT<md::SliceType::CulledUnflattenedMain>]";
    *(v9 + 16) = 62;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xF5773E2F171FA967;
    v2[1] = "md::ls::SliceAssignmentT<md::SliceType::CulledUnflattenedMain>]";
    v2[2] = 62;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xE8C803AC798645E1;
    v19[1] = "md::ls::RenderableMeshVertexFormat]";
    v19[2] = 34;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xE8C803AC798645E1;
    v4[1] = "md::ls::RenderableMeshVertexFormat]";
    v4[2] = 34;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0x751B872B282C3971;
    v29[1] = "md::ls::TileType]";
    v29[2] = 16;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0x751B872B282C3971;
    v14[1] = "md::ls::TileType]";
    v14[2] = 16;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 >= v33)
  {
    v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
    if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
    v37 = 2 * v36;
    if (2 * v36 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    if (v36 >= 0x555555555555555)
    {
      v38 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v38 = v37;
    }

    if (v38)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
    }

    v39 = (8 * ((v24 - *a1) >> 3));
    *v39 = 0xEC2A00DC914732D7;
    v39[1] = "md::ls::IntendedSceneLayer]";
    v39[2] = 26;
    v34 = (24 * v35 + 24);
    v40 = a1[1] - *a1;
    v41 = 24 * v35 - v40;
    memcpy(v39 - v40, *a1, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v34;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else
  {
    *v24 = 0xEC2A00DC914732D7;
    v24[1] = "md::ls::IntendedSceneLayer]";
    v24[2] = 26;
    v34 = v24 + 3;
  }

  a1[1] = v34;
  v43 = a1[2];
  if (v34 >= v43)
  {
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *a1) >> 3);
    if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v46 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *a1) >> 3);
    v47 = 2 * v46;
    if (2 * v46 <= v45 + 1)
    {
      v47 = v45 + 1;
    }

    if (v46 >= 0x555555555555555)
    {
      v48 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v48 = v47;
    }

    if (v48)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v48);
    }

    v49 = (8 * ((v34 - *a1) >> 3));
    *v49 = 0xECC498AF223943D5;
    v49[1] = "md::ls::MeshLayerTypeV]";
    v49[2] = 22;
    v44 = (24 * v45 + 24);
    v50 = a1[1] - *a1;
    v51 = 24 * v45 - v50;
    memcpy(v49 - v50, *a1, v50);
    v52 = *a1;
    *a1 = v51;
    a1[1] = v44;
    a1[2] = 0;
    if (v52)
    {
      operator delete(v52);
    }
  }

  else
  {
    *v34 = 0xECC498AF223943D5;
    v34[1] = "md::ls::MeshLayerTypeV]";
    v34[2] = 22;
    v44 = v34 + 3;
  }

  a1[1] = v44;
  v53 = a1[2];
  if (v44 >= v53)
  {
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *a1) >> 3);
    if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v56 = 0xAAAAAAAAAAAAAAABLL * ((v53 - *a1) >> 3);
    v57 = 2 * v56;
    if (2 * v56 <= v55 + 1)
    {
      v57 = v55 + 1;
    }

    if (v56 >= 0x555555555555555)
    {
      v58 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v58 = v57;
    }

    if (v58)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v58);
    }

    v59 = (8 * ((v44 - *a1) >> 3));
    *v59 = 0xCD844FF303308290;
    v59[1] = "md::ls::HasMeshHandle]";
    v59[2] = 21;
    v54 = (24 * v55 + 24);
    v60 = a1[1] - *a1;
    v61 = 24 * v55 - v60;
    memcpy(v59 - v60, *a1, v60);
    v62 = *a1;
    *a1 = v61;
    a1[1] = v54;
    a1[2] = 0;
    if (v62)
    {
      operator delete(v62);
    }
  }

  else
  {
    *v44 = 0xCD844FF303308290;
    v44[1] = "md::ls::HasMeshHandle]";
    v44[2] = 21;
    v54 = v44 + 3;
  }

  a1[1] = v54;
  v63 = a1[2];
  if (v54 >= v63)
  {
    v65 = 0xAAAAAAAAAAAAAAABLL * ((v54 - *a1) >> 3);
    if (v65 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v66 = 0xAAAAAAAAAAAAAAABLL * ((v63 - *a1) >> 3);
    v67 = 2 * v66;
    if (2 * v66 <= v65 + 1)
    {
      v67 = v65 + 1;
    }

    if (v66 >= 0x555555555555555)
    {
      v68 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v68 = v67;
    }

    if (v68)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v68);
    }

    v69 = (8 * ((v54 - *a1) >> 3));
    *v69 = 0x6C7EE74910D42096;
    v69[1] = "md::ls::PositionScaleInfoConstantDataHandle]";
    v69[2] = 43;
    v64 = (24 * v65 + 24);
    v70 = a1[1] - *a1;
    v71 = 24 * v65 - v70;
    memcpy(v69 - v70, *a1, v70);
    v72 = *a1;
    *a1 = v71;
    a1[1] = v64;
    a1[2] = 0;
    if (v72)
    {
      operator delete(v72);
    }
  }

  else
  {
    *v54 = 0x6C7EE74910D42096;
    v54[1] = "md::ls::PositionScaleInfoConstantDataHandle]";
    v54[2] = 43;
    v64 = v54 + 3;
  }

  a1[1] = v64;
  v73 = a1[2];
  if (v64 >= v73)
  {
    v75 = 0xAAAAAAAAAAAAAAABLL * ((v64 - *a1) >> 3);
    if (v75 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v76 = 0xAAAAAAAAAAAAAAABLL * ((v73 - *a1) >> 3);
    v77 = 2 * v76;
    if (2 * v76 <= v75 + 1)
    {
      v77 = v75 + 1;
    }

    if (v76 >= 0x555555555555555)
    {
      v78 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v78 = v77;
    }

    if (v78)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v78);
    }

    v79 = (8 * ((v64 - *a1) >> 3));
    *v79 = 0xCFE242268B958ADALL;
    v79[1] = "md::ls::ViewConstantDataHandle]";
    v79[2] = 30;
    v74 = (24 * v75 + 24);
    v80 = a1[1] - *a1;
    v81 = 24 * v75 - v80;
    memcpy(v79 - v80, *a1, v80);
    v82 = *a1;
    *a1 = v81;
    a1[1] = v74;
    a1[2] = 0;
    if (v82)
    {
      operator delete(v82);
    }
  }

  else
  {
    *v64 = 0xCFE242268B958ADALL;
    v64[1] = "md::ls::ViewConstantDataHandle]";
    v64[2] = 30;
    v74 = v64 + 3;
  }

  a1[1] = v74;
  v83 = a1[2];
  if (v74 >= v83)
  {
    v85 = 0xAAAAAAAAAAAAAAABLL * ((v74 - *a1) >> 3);
    if (v85 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v86 = 0xAAAAAAAAAAAAAAABLL * ((v83 - *a1) >> 3);
    v87 = 2 * v86;
    if (2 * v86 <= v85 + 1)
    {
      v87 = v85 + 1;
    }

    if (v86 >= 0x555555555555555)
    {
      v88 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v88 = v87;
    }

    if (v88)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v88);
    }

    v89 = (8 * ((v74 - *a1) >> 3));
    *v89 = 0x74DC502726E97929;
    v89[1] = "md::ls::TransformConstantDataHandle]";
    v89[2] = 35;
    v84 = (24 * v85 + 24);
    v90 = a1[1] - *a1;
    v91 = 24 * v85 - v90;
    memcpy(v89 - v90, *a1, v90);
    v92 = *a1;
    *a1 = v91;
    a1[1] = v84;
    a1[2] = 0;
    if (v92)
    {
      operator delete(v92);
    }
  }

  else
  {
    *v74 = 0x74DC502726E97929;
    v74[1] = "md::ls::TransformConstantDataHandle]";
    v74[2] = 35;
    v84 = v74 + 3;
  }

  a1[1] = v84;
  v93 = a1[2];
  if (v84 >= v93)
  {
    v95 = 0xAAAAAAAAAAAAAAABLL * ((v84 - *a1) >> 3);
    if (v95 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v96 = 0xAAAAAAAAAAAAAAABLL * ((v93 - *a1) >> 3);
    v97 = 2 * v96;
    if (2 * v96 <= v95 + 1)
    {
      v97 = v95 + 1;
    }

    if (v96 >= 0x555555555555555)
    {
      v98 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v98 = v97;
    }

    if (v98)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v98);
    }

    v99 = (8 * ((v84 - *a1) >> 3));
    *v99 = 0x1BB343378E1EE5BLL;
    v99[1] = "md::ls::StyleDataKeyHandle]";
    v99[2] = 26;
    v94 = (24 * v95 + 24);
    v100 = a1[1] - *a1;
    v101 = 24 * v95 - v100;
    memcpy(v99 - v100, *a1, v100);
    v102 = *a1;
    *a1 = v101;
    a1[1] = v94;
    a1[2] = 0;
    if (v102)
    {
      operator delete(v102);
    }
  }

  else
  {
    *v84 = 0x1BB343378E1EE5BLL;
    v84[1] = "md::ls::StyleDataKeyHandle]";
    v84[2] = 26;
    v94 = v84 + 3;
  }

  a1[1] = v94;
  v103 = a1[2];
  if (v94 >= v103)
  {
    v105 = 0xAAAAAAAAAAAAAAABLL * ((v94 - *a1) >> 3);
    if (v105 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v106 = 0xAAAAAAAAAAAAAAABLL * ((v103 - *a1) >> 3);
    v107 = 2 * v106;
    if (2 * v106 <= v105 + 1)
    {
      v107 = v105 + 1;
    }

    if (v106 >= 0x555555555555555)
    {
      v108 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v108 = v107;
    }

    if (v108)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v108);
    }

    v109 = (8 * ((v94 - *a1) >> 3));
    *v109 = 0x3AC919C8A5243F9;
    v109[1] = "md::ls::StyleSSAODataKeyHandle]";
    v109[2] = 30;
    v104 = (24 * v105 + 24);
    v110 = a1[1] - *a1;
    v111 = 24 * v105 - v110;
    memcpy(v109 - v110, *a1, v110);
    v112 = *a1;
    *a1 = v111;
    a1[1] = v104;
    a1[2] = 0;
    if (v112)
    {
      operator delete(v112);
    }
  }

  else
  {
    *v94 = 0x3AC919C8A5243F9;
    v94[1] = "md::ls::StyleSSAODataKeyHandle]";
    v94[2] = 30;
    v104 = v94 + 3;
  }

  a1[1] = v104;
  v113 = a1[2];
  if (v104 >= v113)
  {
    v115 = 0xAAAAAAAAAAAAAAABLL * ((v104 - *a1) >> 3);
    if (v115 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v116 = 0xAAAAAAAAAAAAAAABLL * ((v113 - *a1) >> 3);
    v117 = 2 * v116;
    if (2 * v116 <= v115 + 1)
    {
      v117 = v115 + 1;
    }

    if (v116 >= 0x555555555555555)
    {
      v118 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v118 = v117;
    }

    if (v118)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v118);
    }

    v119 = (8 * ((v104 - *a1) >> 3));
    *v119 = 0xA50DD2A5BD75DBD6;
    v119[1] = "md::ls::StyleEmissiveDataKeyHandle]";
    v119[2] = 34;
    v114 = (24 * v115 + 24);
    v120 = a1[1] - *a1;
    v121 = 24 * v115 - v120;
    memcpy(v119 - v120, *a1, v120);
    v122 = *a1;
    *a1 = v121;
    a1[1] = v114;
    a1[2] = 0;
    if (v122)
    {
      operator delete(v122);
    }
  }

  else
  {
    *v104 = 0xA50DD2A5BD75DBD6;
    v104[1] = "md::ls::StyleEmissiveDataKeyHandle]";
    v104[2] = 34;
    v114 = v104 + 3;
  }

  a1[1] = v114;
  v123 = a1[2];
  if (v114 >= v123)
  {
    v125 = 0xAAAAAAAAAAAAAAABLL * ((v114 - *a1) >> 3);
    if (v125 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v126 = 0xAAAAAAAAAAAAAAABLL * ((v123 - *a1) >> 3);
    v127 = 2 * v126;
    if (2 * v126 <= v125 + 1)
    {
      v127 = v125 + 1;
    }

    if (v126 >= 0x555555555555555)
    {
      v128 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v128 = v127;
    }

    if (v128)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v128);
    }

    v129 = (8 * ((v114 - *a1) >> 3));
    *v129 = 0xFA89E73840C3EC51;
    v129[1] = "md::ls::ColorCorrectionDataKeyHandle]";
    v129[2] = 36;
    v124 = (24 * v125 + 24);
    v130 = a1[1] - *a1;
    v131 = 24 * v125 - v130;
    memcpy(v129 - v130, *a1, v130);
    v132 = *a1;
    *a1 = v131;
    a1[1] = v124;
    a1[2] = 0;
    if (v132)
    {
      operator delete(v132);
    }
  }

  else
  {
    *v114 = 0xFA89E73840C3EC51;
    v114[1] = "md::ls::ColorCorrectionDataKeyHandle]";
    v114[2] = 36;
    v124 = v114 + 3;
  }

  a1[1] = v124;
  v133 = a1[2];
  if (v124 >= v133)
  {
    v135 = 0xAAAAAAAAAAAAAAABLL * ((v124 - *a1) >> 3);
    if (v135 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v136 = 0xAAAAAAAAAAAAAAABLL * ((v133 - *a1) >> 3);
    v137 = 2 * v136;
    if (2 * v136 <= v135 + 1)
    {
      v137 = v135 + 1;
    }

    if (v136 >= 0x555555555555555)
    {
      v138 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v138 = v137;
    }

    if (v138)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v138);
    }

    v139 = (8 * ((v124 - *a1) >> 3));
    *v139 = 0x96F87A2692FE4013;
    v139[1] = "md::ls::StyleCameraConstantDataHandle]";
    v139[2] = 37;
    v134 = (24 * v135 + 24);
    v140 = a1[1] - *a1;
    v141 = 24 * v135 - v140;
    memcpy(v139 - v140, *a1, v140);
    v142 = *a1;
    *a1 = v141;
    a1[1] = v134;
    a1[2] = 0;
    if (v142)
    {
      operator delete(v142);
    }
  }

  else
  {
    *v124 = 0x96F87A2692FE4013;
    v124[1] = "md::ls::StyleCameraConstantDataHandle]";
    v124[2] = 37;
    v134 = v124 + 3;
  }

  a1[1] = v134;
  v143 = a1[2];
  if (v134 >= v143)
  {
    v145 = 0xAAAAAAAAAAAAAAABLL * ((v134 - *a1) >> 3);
    if (v145 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v146 = 0xAAAAAAAAAAAAAAABLL * ((v143 - *a1) >> 3);
    v147 = 2 * v146;
    if (2 * v146 <= v145 + 1)
    {
      v147 = v145 + 1;
    }

    if (v146 >= 0x555555555555555)
    {
      v148 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v148 = v147;
    }

    if (v148)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v148);
    }

    v149 = (8 * ((v134 - *a1) >> 3));
    *v149 = 0xA3F884E4E2541296;
    v149[1] = "md::ls::ColorDataHandle]";
    v149[2] = 23;
    v144 = (24 * v145 + 24);
    v150 = a1[1] - *a1;
    v151 = 24 * v145 - v150;
    memcpy(v149 - v150, *a1, v150);
    v152 = *a1;
    *a1 = v151;
    a1[1] = v144;
    a1[2] = 0;
    if (v152)
    {
      operator delete(v152);
    }
  }

  else
  {
    *v134 = 0xA3F884E4E2541296;
    v134[1] = "md::ls::ColorDataHandle]";
    v134[2] = 23;
    v144 = v134 + 3;
  }

  a1[1] = v144;
  v153 = a1[2];
  if (v144 >= v153)
  {
    v155 = 0xAAAAAAAAAAAAAAABLL * ((v144 - *a1) >> 3);
    if (v155 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v156 = 0xAAAAAAAAAAAAAAABLL * ((v153 - *a1) >> 3);
    v157 = 2 * v156;
    if (2 * v156 <= v155 + 1)
    {
      v157 = v155 + 1;
    }

    if (v156 >= 0x555555555555555)
    {
      v158 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v158 = v157;
    }

    if (v158)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v158);
    }

    v159 = (8 * ((v144 - *a1) >> 3));
    *v159 = 0x71CBA64B1A9CA230;
    v159[1] = "md::ls::IndexRange]";
    v159[2] = 18;
    v154 = (24 * v155 + 24);
    v160 = a1[1] - *a1;
    v161 = 24 * v155 - v160;
    memcpy(v159 - v160, *a1, v160);
    v162 = *a1;
    *a1 = v161;
    a1[1] = v154;
    a1[2] = 0;
    if (v162)
    {
      operator delete(v162);
    }
  }

  else
  {
    *v144 = 0x71CBA64B1A9CA230;
    v144[1] = "md::ls::IndexRange]";
    v144[2] = 18;
    v154 = v144 + 3;
  }

  a1[1] = v154;
  v163 = a1[2];
  if (v154 >= v163)
  {
    v165 = 0xAAAAAAAAAAAAAAABLL * ((v154 - *a1) >> 3);
    if (v165 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v166 = 0xAAAAAAAAAAAAAAABLL * ((v163 - *a1) >> 3);
    v167 = 2 * v166;
    if (2 * v166 <= v165 + 1)
    {
      v167 = v165 + 1;
    }

    if (v166 >= 0x555555555555555)
    {
      v168 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v168 = v167;
    }

    if (v168)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v168);
    }

    v169 = (8 * ((v154 - *a1) >> 3));
    *v169 = 0xD5AD9B8C3FE62EE8;
    v169[1] = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    v169[2] = 46;
    v164 = (24 * v165 + 24);
    v170 = a1[1] - *a1;
    v171 = 24 * v165 - v170;
    memcpy(v169 - v170, *a1, v170);
    v172 = *a1;
    *a1 = v171;
    a1[1] = v164;
    a1[2] = 0;
    if (v172)
    {
      operator delete(v172);
    }
  }

  else
  {
    *v154 = 0xD5AD9B8C3FE62EE8;
    v154[1] = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    v154[2] = 46;
    v164 = v154 + 3;
  }

  a1[1] = v164;
  v173 = a1[2];
  if (v164 >= v173)
  {
    v175 = 0xAAAAAAAAAAAAAAABLL * ((v164 - *a1) >> 3);
    if (v175 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v176 = 0xAAAAAAAAAAAAAAABLL * ((v173 - *a1) >> 3);
    v177 = 2 * v176;
    if (2 * v176 <= v175 + 1)
    {
      v177 = v175 + 1;
    }

    if (v176 >= 0x555555555555555)
    {
      v178 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v178 = v177;
    }

    if (v178)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v178);
    }

    v179 = (8 * ((v164 - *a1) >> 3));
    *v179 = 0x75DBD6381F1903FFLL;
    v179[1] = "md::ls::PendingProcessing]";
    v179[2] = 25;
    v174 = (24 * v175 + 24);
    v180 = a1[1] - *a1;
    v181 = 24 * v175 - v180;
    memcpy(v179 - v180, *a1, v180);
    v182 = *a1;
    *a1 = v181;
    a1[1] = v174;
    a1[2] = 0;
    if (v182)
    {
      operator delete(v182);
    }
  }

  else
  {
    *v164 = 0x75DBD6381F1903FFLL;
    v164[1] = "md::ls::PendingProcessing]";
    v164[2] = 25;
    v174 = v164 + 3;
  }

  a1[1] = v174;
  v183 = a1[2];
  if (v174 >= v183)
  {
    v185 = 0xAAAAAAAAAAAAAAABLL * ((v174 - *a1) >> 3);
    if (v185 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v186 = 0xAAAAAAAAAAAAAAABLL * ((v183 - *a1) >> 3);
    v187 = 2 * v186;
    if (2 * v186 <= v185 + 1)
    {
      v187 = v185 + 1;
    }

    if (v186 >= 0x555555555555555)
    {
      v188 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v188 = v187;
    }

    if (v188)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v188);
    }

    v189 = (8 * ((v174 - *a1) >> 3));
    *v189 = 0x3218EFD67197A145;
    v189[1] = "md::ls::NormalsHandle]";
    v189[2] = 21;
    v184 = (24 * v185 + 24);
    v190 = a1[1] - *a1;
    v191 = 24 * v185 - v190;
    memcpy(v189 - v190, *a1, v190);
    v192 = *a1;
    *a1 = v191;
    a1[1] = v184;
    a1[2] = 0;
    if (v192)
    {
      operator delete(v192);
    }
  }

  else
  {
    *v174 = 0x3218EFD67197A145;
    v174[1] = "md::ls::NormalsHandle]";
    v174[2] = 21;
    v184 = v174 + 3;
  }

  a1[1] = v184;
  v193 = a1[2];
  if (v184 >= v193)
  {
    v195 = 0xAAAAAAAAAAAAAAABLL * ((v184 - *a1) >> 3);
    if (v195 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v196 = 0xAAAAAAAAAAAAAAABLL * ((v193 - *a1) >> 3);
    v197 = 2 * v196;
    if (2 * v196 <= v195 + 1)
    {
      v197 = v195 + 1;
    }

    if (v196 >= 0x555555555555555)
    {
      v198 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v198 = v197;
    }

    if (v198)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v198);
    }

    v199 = (8 * ((v184 - *a1) >> 3));
    *v199 = 0xAF179EFD8A4C83D4;
    v199[1] = "md::ls::InstanceTransformHandle]";
    v199[2] = 31;
    v194 = (24 * v195 + 24);
    v200 = a1[1] - *a1;
    v201 = 24 * v195 - v200;
    memcpy(v199 - v200, *a1, v200);
    v202 = *a1;
    *a1 = v201;
    a1[1] = v194;
    a1[2] = 0;
    if (v202)
    {
      operator delete(v202);
    }
  }

  else
  {
    *v184 = 0xAF179EFD8A4C83D4;
    v184[1] = "md::ls::InstanceTransformHandle]";
    v184[2] = 31;
    v194 = v184 + 3;
  }

  a1[1] = v194;
  v203 = a1[2];
  if (v194 >= v203)
  {
    v205 = 0xAAAAAAAAAAAAAAABLL * ((v194 - *a1) >> 3);
    if (v205 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v206 = 0xAAAAAAAAAAAAAAABLL * ((v203 - *a1) >> 3);
    v207 = 2 * v206;
    if (2 * v206 <= v205 + 1)
    {
      v207 = v205 + 1;
    }

    if (v206 >= 0x555555555555555)
    {
      v208 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v208 = v207;
    }

    if (v208)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v208);
    }

    v209 = (8 * ((v194 - *a1) >> 3));
    *v209 = 0xCBB77B1CBD05D7C5;
    v209[1] = "md::ls::UVsHandle]";
    v209[2] = 17;
    v204 = (24 * v205 + 24);
    v210 = a1[1] - *a1;
    v211 = 24 * v205 - v210;
    memcpy(v209 - v210, *a1, v210);
    v212 = *a1;
    *a1 = v211;
    a1[1] = v204;
    a1[2] = 0;
    if (v212)
    {
      operator delete(v212);
    }
  }

  else
  {
    *v194 = 0xCBB77B1CBD05D7C5;
    v194[1] = "md::ls::UVsHandle]";
    v194[2] = 17;
    v204 = v194 + 3;
  }

  a1[1] = v204;
  v213 = a1[2];
  if (v204 >= v213)
  {
    v215 = 0xAAAAAAAAAAAAAAABLL * ((v204 - *a1) >> 3);
    if (v215 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v216 = 0xAAAAAAAAAAAAAAABLL * ((v213 - *a1) >> 3);
    v217 = 2 * v216;
    if (2 * v216 <= v215 + 1)
    {
      v217 = v215 + 1;
    }

    if (v216 >= 0x555555555555555)
    {
      v218 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v218 = v217;
    }

    if (v218)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v218);
    }

    v219 = (8 * ((v204 - *a1) >> 3));
    *v219 = 0xD443D3DCBB78491ALL;
    v219[1] = "md::ls::ElevationHandle]";
    v219[2] = 23;
    v214 = (24 * v215 + 24);
    v220 = a1[1] - *a1;
    v221 = 24 * v215 - v220;
    memcpy(v219 - v220, *a1, v220);
    v222 = *a1;
    *a1 = v221;
    a1[1] = v214;
    a1[2] = 0;
    if (v222)
    {
      operator delete(v222);
    }
  }

  else
  {
    *v204 = 0xD443D3DCBB78491ALL;
    v204[1] = "md::ls::ElevationHandle]";
    v204[2] = 23;
    v214 = v204 + 3;
  }

  a1[1] = v214;
  v223 = a1[2];
  if (v214 >= v223)
  {
    v225 = 0xAAAAAAAAAAAAAAABLL * ((v214 - *a1) >> 3);
    if (v225 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v226 = 0xAAAAAAAAAAAAAAABLL * ((v223 - *a1) >> 3);
    v227 = 2 * v226;
    if (2 * v226 <= v225 + 1)
    {
      v227 = v225 + 1;
    }

    if (v226 >= 0x555555555555555)
    {
      v228 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v228 = v227;
    }

    if (v228)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v228);
    }

    v229 = (8 * ((v214 - *a1) >> 3));
    *v229 = 0xDD9825BCFA7911B2;
    v229[1] = "md::ls::TextureHandleForType<DaVinci::DiffuseTexture>]";
    v229[2] = 53;
    v224 = (24 * v225 + 24);
    v230 = a1[1] - *a1;
    v231 = 24 * v225 - v230;
    memcpy(v229 - v230, *a1, v230);
    v232 = *a1;
    *a1 = v231;
    a1[1] = v224;
    a1[2] = 0;
    if (v232)
    {
      operator delete(v232);
    }
  }

  else
  {
    *v214 = 0xDD9825BCFA7911B2;
    v214[1] = "md::ls::TextureHandleForType<DaVinci::DiffuseTexture>]";
    v214[2] = 53;
    v224 = v214 + 3;
  }

  a1[1] = v224;
  v233 = a1[2];
  if (v224 >= v233)
  {
    v235 = 0xAAAAAAAAAAAAAAABLL * ((v224 - *a1) >> 3);
    if (v235 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v236 = 0xAAAAAAAAAAAAAAABLL * ((v233 - *a1) >> 3);
    v237 = 2 * v236;
    if (2 * v236 <= v235 + 1)
    {
      v237 = v235 + 1;
    }

    if (v236 >= 0x555555555555555)
    {
      v238 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v238 = v237;
    }

    if (v238)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v238);
    }

    v239 = (8 * ((v224 - *a1) >> 3));
    *v239 = 0xDC98991DB7473274;
    v239[1] = "md::ls::LandCoverSettingsConstantDataHandle]";
    v239[2] = 43;
    v234 = (24 * v235 + 24);
    v240 = a1[1] - *a1;
    v241 = 24 * v235 - v240;
    memcpy(v239 - v240, *a1, v240);
    v242 = *a1;
    *a1 = v241;
    a1[1] = v234;
    a1[2] = 0;
    if (v242)
    {
      operator delete(v242);
    }
  }

  else
  {
    *v224 = 0xDC98991DB7473274;
    v224[1] = "md::ls::LandCoverSettingsConstantDataHandle]";
    v224[2] = 43;
    v234 = v224 + 3;
  }

  a1[1] = v234;
  v243 = a1[2];
  if (v234 >= v243)
  {
    v245 = 0xAAAAAAAAAAAAAAABLL * ((v234 - *a1) >> 3);
    if (v245 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v246 = 0xAAAAAAAAAAAAAAABLL * ((v243 - *a1) >> 3);
    v247 = 2 * v246;
    if (2 * v246 <= v245 + 1)
    {
      v247 = v245 + 1;
    }

    if (v246 >= 0x555555555555555)
    {
      v248 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v248 = v247;
    }

    if (v248)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v248);
    }

    v249 = (8 * ((v234 - *a1) >> 3));
    *v249 = 0xEAA0B82FC49F7277;
    v249[1] = "md::ls::ShadowConstantDataHandle]";
    v249[2] = 32;
    v244 = (24 * v245 + 24);
    v250 = a1[1] - *a1;
    v251 = 24 * v245 - v250;
    memcpy(v249 - v250, *a1, v250);
    v252 = *a1;
    *a1 = v251;
    a1[1] = v244;
    a1[2] = 0;
    if (v252)
    {
      operator delete(v252);
    }
  }

  else
  {
    *v234 = 0xEAA0B82FC49F7277;
    v234[1] = "md::ls::ShadowConstantDataHandle]";
    v234[2] = 32;
    v244 = v234 + 3;
  }

  a1[1] = v244;
  v253 = a1[2];
  if (v244 >= v253)
  {
    v255 = 0xAAAAAAAAAAAAAAABLL * ((v244 - *a1) >> 3);
    if (v255 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v256 = 0xAAAAAAAAAAAAAAABLL * ((v253 - *a1) >> 3);
    v257 = 2 * v256;
    if (2 * v256 <= v255 + 1)
    {
      v257 = v255 + 1;
    }

    if (v256 >= 0x555555555555555)
    {
      v258 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v258 = v257;
    }

    if (v258)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v258);
    }

    v259 = (8 * ((v244 - *a1) >> 3));
    *v259 = 0x1EBB3E0519E8FF9DLL;
    v259[1] = "md::ls::PrepassConstantDataHandle]";
    v259[2] = 33;
    v254 = (24 * v255 + 24);
    v260 = a1[1] - *a1;
    v261 = 24 * v255 - v260;
    memcpy(v259 - v260, *a1, v260);
    v262 = *a1;
    *a1 = v261;
    a1[1] = v254;
    a1[2] = 0;
    if (v262)
    {
      operator delete(v262);
    }
  }

  else
  {
    *v244 = 0x1EBB3E0519E8FF9DLL;
    v244[1] = "md::ls::PrepassConstantDataHandle]";
    v244[2] = 33;
    v254 = v244 + 3;
  }

  a1[1] = v254;
  v263 = a1[2];
  if (v254 >= v263)
  {
    v265 = 0xAAAAAAAAAAAAAAABLL * ((v254 - *a1) >> 3);
    if (v265 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v266 = 0xAAAAAAAAAAAAAAABLL * ((v263 - *a1) >> 3);
    v267 = 2 * v266;
    if (2 * v266 <= v265 + 1)
    {
      v267 = v265 + 1;
    }

    if (v266 >= 0x555555555555555)
    {
      v268 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v268 = v267;
    }

    if (v268)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v268);
    }

    v269 = (8 * ((v254 - *a1) >> 3));
    *v269 = 0x9292F9031FE6DB5;
    v269[1] = "md::ls::ClippingConstantDataHandle]";
    v269[2] = 34;
    v264 = (24 * v265 + 24);
    v270 = a1[1] - *a1;
    v271 = 24 * v265 - v270;
    memcpy(v269 - v270, *a1, v270);
    v272 = *a1;
    *a1 = v271;
    a1[1] = v264;
    a1[2] = 0;
    if (v272)
    {
      operator delete(v272);
    }
  }

  else
  {
    *v254 = 0x9292F9031FE6DB5;
    v254[1] = "md::ls::ClippingConstantDataHandle]";
    v254[2] = 34;
    v264 = v254 + 3;
  }

  a1[1] = v264;
  v273 = a1[2];
  if (v264 >= v273)
  {
    v275 = 0xAAAAAAAAAAAAAAABLL * ((v264 - *a1) >> 3);
    if (v275 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v276 = 0xAAAAAAAAAAAAAAABLL * ((v273 - *a1) >> 3);
    v277 = 2 * v276;
    if (2 * v276 <= v275 + 1)
    {
      v277 = v275 + 1;
    }

    if (v276 >= 0x555555555555555)
    {
      v278 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v278 = v277;
    }

    if (v278)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v278);
    }

    v279 = (8 * ((v264 - *a1) >> 3));
    *v279 = 0xD02B5FD100F36AA2;
    v279[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v279[2] = 38;
    v274 = (24 * v275 + 24);
    v280 = a1[1] - *a1;
    v281 = 24 * v275 - v280;
    memcpy(v279 - v280, *a1, v280);
    v282 = *a1;
    *a1 = v281;
    a1[1] = v274;
    a1[2] = 0;
    if (v282)
    {
      operator delete(v282);
    }
  }

  else
  {
    *v264 = 0xD02B5FD100F36AA2;
    v264[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v264[2] = 38;
    v274 = v264 + 3;
  }

  a1[1] = v274;
  v283 = a1[2];
  if (v274 >= v283)
  {
    v285 = 0xAAAAAAAAAAAAAAABLL * ((v274 - *a1) >> 3);
    if (v285 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v286 = 0xAAAAAAAAAAAAAAABLL * ((v283 - *a1) >> 3);
    v287 = 2 * v286;
    if (2 * v286 <= v285 + 1)
    {
      v287 = v285 + 1;
    }

    if (v286 >= 0x555555555555555)
    {
      v288 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v288 = v287;
    }

    if (v288)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v288);
    }

    v289 = (8 * ((v274 - *a1) >> 3));
    *v289 = 0x1D932F2BF291491;
    v289[1] = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    v289[2] = 49;
    v284 = (24 * v285 + 24);
    v290 = a1[1] - *a1;
    v291 = 24 * v285 - v290;
    memcpy(v289 - v290, *a1, v290);
    v292 = *a1;
    *a1 = v291;
    a1[1] = v284;
    a1[2] = 0;
    if (v292)
    {
      operator delete(v292);
    }
  }

  else
  {
    *v274 = 0x1D932F2BF291491;
    v274[1] = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    v274[2] = 49;
    v284 = v274 + 3;
  }

  a1[1] = v284;
  v293 = a1[2];
  if (v284 >= v293)
  {
    v295 = 0xAAAAAAAAAAAAAAABLL * ((v284 - *a1) >> 3);
    if (v295 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v296 = 0xAAAAAAAAAAAAAAABLL * ((v293 - *a1) >> 3);
    v297 = 2 * v296;
    if (2 * v296 <= v295 + 1)
    {
      v297 = v295 + 1;
    }

    if (v296 >= 0x555555555555555)
    {
      v298 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v298 = v297;
    }

    if (v298)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v298);
    }

    v299 = (8 * ((v284 - *a1) >> 3));
    *v299 = 0xCE03281732FA0019;
    v299[1] = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    v299[2] = 54;
    v294 = (24 * v295 + 24);
    v300 = a1[1] - *a1;
    v301 = 24 * v295 - v300;
    memcpy(v299 - v300, *a1, v300);
    v302 = *a1;
    *a1 = v301;
    a1[1] = v294;
    a1[2] = 0;
    if (v302)
    {
      operator delete(v302);
    }
  }

  else
  {
    *v284 = 0xCE03281732FA0019;
    v284[1] = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    v284[2] = 54;
    v294 = v284 + 3;
  }

  a1[1] = v294;
  v303 = a1[2];
  if (v294 >= v303)
  {
    v305 = 0xAAAAAAAAAAAAAAABLL * ((v294 - *a1) >> 3);
    if (v305 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v306 = 0xAAAAAAAAAAAAAAABLL * ((v303 - *a1) >> 3);
    v307 = 2 * v306;
    if (2 * v306 <= v305 + 1)
    {
      v307 = v305 + 1;
    }

    if (v306 >= 0x555555555555555)
    {
      v308 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v308 = v307;
    }

    if (v308)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v308);
    }

    v309 = (8 * ((v294 - *a1) >> 3));
    *v309 = 0xD2D99CA7D5B116C8;
    v309[1] = "md::ls::TextureHandleForType<DaVinci::OverlayTexture>]";
    v309[2] = 53;
    v304 = (24 * v305 + 24);
    v310 = a1[1] - *a1;
    v311 = 24 * v305 - v310;
    memcpy(v309 - v310, *a1, v310);
    v312 = *a1;
    *a1 = v311;
    a1[1] = v304;
    a1[2] = 0;
    if (v312)
    {
      operator delete(v312);
    }
  }

  else
  {
    *v294 = 0xD2D99CA7D5B116C8;
    v294[1] = "md::ls::TextureHandleForType<DaVinci::OverlayTexture>]";
    v294[2] = 53;
    v304 = v294 + 3;
  }

  a1[1] = v304;
  v313 = a1[2];
  if (v304 >= v313)
  {
    v315 = 0xAAAAAAAAAAAAAAABLL * ((v304 - *a1) >> 3);
    if (v315 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v316 = 0xAAAAAAAAAAAAAAABLL * ((v313 - *a1) >> 3);
    v317 = 2 * v316;
    if (2 * v316 <= v315 + 1)
    {
      v317 = v315 + 1;
    }

    if (v316 >= 0x555555555555555)
    {
      v318 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v318 = v317;
    }

    if (v318)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v318);
    }

    v319 = (8 * ((v304 - *a1) >> 3));
    *v319 = 0xDF0018B9242ADFDBLL;
    v319[1] = "md::ls::BlendRasterConstantDataHandle]";
    v319[2] = 37;
    v314 = (24 * v315 + 24);
    v320 = a1[1] - *a1;
    v321 = 24 * v315 - v320;
    memcpy(v319 - v320, *a1, v320);
    v322 = *a1;
    *a1 = v321;
    a1[1] = v314;
    a1[2] = 0;
    if (v322)
    {
      operator delete(v322);
    }
  }

  else
  {
    *v304 = 0xDF0018B9242ADFDBLL;
    v304[1] = "md::ls::BlendRasterConstantDataHandle]";
    v304[2] = 37;
    v314 = v304 + 3;
  }

  a1[1] = v314;
  v323 = a1[2];
  if (v314 >= v323)
  {
    v325 = 0xAAAAAAAAAAAAAAABLL * ((v314 - *a1) >> 3);
    if (v325 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v326 = 0xAAAAAAAAAAAAAAABLL * ((v323 - *a1) >> 3);
    v327 = 2 * v326;
    if (2 * v326 <= v325 + 1)
    {
      v327 = v325 + 1;
    }

    if (v326 >= 0x555555555555555)
    {
      v328 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v328 = v327;
    }

    if (v328)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v328);
    }

    v329 = (8 * ((v314 - *a1) >> 3));
    *v329 = 0xDC66BF6D06F6D0BALL;
    v329[1] = "md::ls::RasterOverlayConstantDataHandle]";
    v329[2] = 39;
    v324 = (24 * v325 + 24);
    v330 = a1[1] - *a1;
    v331 = 24 * v325 - v330;
    memcpy(v329 - v330, *a1, v330);
    v332 = *a1;
    *a1 = v331;
    a1[1] = v324;
    a1[2] = 0;
    if (v332)
    {
      operator delete(v332);
    }
  }

  else
  {
    *v314 = 0xDC66BF6D06F6D0BALL;
    v314[1] = "md::ls::RasterOverlayConstantDataHandle]";
    v314[2] = 39;
    v324 = v314 + 3;
  }

  a1[1] = v324;
  v333 = a1[2];
  if (v324 >= v333)
  {
    v335 = 0xAAAAAAAAAAAAAAABLL * ((v324 - *a1) >> 3);
    if (v335 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v336 = 0xAAAAAAAAAAAAAAABLL * ((v333 - *a1) >> 3);
    v337 = 2 * v336;
    if (2 * v336 <= v335 + 1)
    {
      v337 = v335 + 1;
    }

    if (v336 >= 0x555555555555555)
    {
      v338 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v338 = v337;
    }

    if (v338)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v338);
    }

    v339 = (8 * ((v324 - *a1) >> 3));
    *v339 = 0x985FB09D9DF9959FLL;
    v339[1] = "md::ls::HasStyleAttributeRasterSet]";
    v339[2] = 34;
    v334 = (24 * v335 + 24);
    v340 = a1[1] - *a1;
    v341 = 24 * v335 - v340;
    memcpy(v339 - v340, *a1, v340);
    v342 = *a1;
    *a1 = v341;
    a1[1] = v334;
    a1[2] = 0;
    if (v342)
    {
      operator delete(v342);
    }
  }

  else
  {
    *v324 = 0x985FB09D9DF9959FLL;
    v324[1] = "md::ls::HasStyleAttributeRasterSet]";
    v324[2] = 34;
    v334 = v324 + 3;
  }

  a1[1] = v334;
  v343 = a1[2];
  if (v334 >= v343)
  {
    v345 = 0xAAAAAAAAAAAAAAABLL * ((v334 - *a1) >> 3);
    if (v345 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v346 = 0xAAAAAAAAAAAAAAABLL * ((v343 - *a1) >> 3);
    v347 = 2 * v346;
    if (2 * v346 <= v345 + 1)
    {
      v347 = v345 + 1;
    }

    if (v346 >= 0x555555555555555)
    {
      v348 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v348 = v347;
    }

    if (v348)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v348);
    }

    v349 = (8 * ((v334 - *a1) >> 3));
    *v349 = 0x9D7520A01DC69D83;
    v349[1] = "md::ls::HasMaterialRaster]";
    v349[2] = 25;
    v344 = (24 * v345 + 24);
    v350 = a1[1] - *a1;
    v351 = 24 * v345 - v350;
    memcpy(v349 - v350, *a1, v350);
    v352 = *a1;
    *a1 = v351;
    a1[1] = v344;
    a1[2] = 0;
    if (v352)
    {
      operator delete(v352);
    }
  }

  else
  {
    *v334 = 0x9D7520A01DC69D83;
    v334[1] = "md::ls::HasMaterialRaster]";
    v334[2] = 25;
    v344 = v334 + 3;
  }

  a1[1] = v344;
  v353 = a1[2];
  if (v344 >= v353)
  {
    v355 = 0xAAAAAAAAAAAAAAABLL * ((v344 - *a1) >> 3);
    if (v355 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v356 = 0xAAAAAAAAAAAAAAABLL * ((v353 - *a1) >> 3);
    v357 = 2 * v356;
    if (2 * v356 <= v355 + 1)
    {
      v357 = v355 + 1;
    }

    if (v356 >= 0x555555555555555)
    {
      v358 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v358 = v357;
    }

    if (v358)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v358);
    }

    v359 = (8 * ((v344 - *a1) >> 3));
    *v359 = 0x11BB47B172EB0B40;
    v359[1] = "md::ls::NeedsClimateTint]";
    v359[2] = 24;
    v354 = (24 * v355 + 24);
    v360 = a1[1] - *a1;
    v361 = 24 * v355 - v360;
    memcpy(v359 - v360, *a1, v360);
    v362 = *a1;
    *a1 = v361;
    a1[1] = v354;
    a1[2] = 0;
    if (v362)
    {
      operator delete(v362);
    }
  }

  else
  {
    *v344 = 0x11BB47B172EB0B40;
    v344[1] = "md::ls::NeedsClimateTint]";
    v344[2] = 24;
    v354 = v344 + 3;
  }

  a1[1] = v354;
  v363 = a1[2];
  if (v354 >= v363)
  {
    v365 = 0xAAAAAAAAAAAAAAABLL * ((v354 - *a1) >> 3);
    if (v365 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v366 = 0xAAAAAAAAAAAAAAABLL * ((v363 - *a1) >> 3);
    v367 = 2 * v366;
    if (2 * v366 <= v365 + 1)
    {
      v367 = v365 + 1;
    }

    if (v366 >= 0x555555555555555)
    {
      v368 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v368 = v367;
    }

    if (v368)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v368);
    }

    v369 = (8 * ((v354 - *a1) >> 3));
    *v369 = 0xA0C97F52893883B7;
    v369[1] = "md::ls::CustomRenderState]";
    v369[2] = 25;
    v364 = (24 * v365 + 24);
    v370 = a1[1] - *a1;
    v371 = 24 * v365 - v370;
    memcpy(v369 - v370, *a1, v370);
    v372 = *a1;
    *a1 = v371;
    a1[1] = v364;
    a1[2] = 0;
    if (v372)
    {
      operator delete(v372);
    }
  }

  else
  {
    *v354 = 0xA0C97F52893883B7;
    v354[1] = "md::ls::CustomRenderState]";
    v354[2] = 25;
    v364 = v354 + 3;
  }

  a1[1] = v364;
  v373 = a1[2];
  if (v364 >= v373)
  {
    v375 = 0xAAAAAAAAAAAAAAABLL * ((v364 - *a1) >> 3);
    if (v375 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v376 = 0xAAAAAAAAAAAAAAABLL * ((v373 - *a1) >> 3);
    v377 = 2 * v376;
    if (2 * v376 <= v375 + 1)
    {
      v377 = v375 + 1;
    }

    if (v376 >= 0x555555555555555)
    {
      v378 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v378 = v377;
    }

    if (v378)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v378);
    }

    v379 = (8 * ((v364 - *a1) >> 3));
    *v379 = 0xE103B5C60804137ELL;
    v379[1] = "md::ls::ColorRampDataHandle]";
    v379[2] = 27;
    v374 = (24 * v375 + 24);
    v380 = a1[1] - *a1;
    v381 = 24 * v375 - v380;
    memcpy(v379 - v380, *a1, v380);
    v382 = *a1;
    *a1 = v381;
    a1[1] = v374;
    a1[2] = 0;
    if (v382)
    {
      operator delete(v382);
    }
  }

  else
  {
    *v364 = 0xE103B5C60804137ELL;
    v364[1] = "md::ls::ColorRampDataHandle]";
    v364[2] = 27;
    v374 = v364 + 3;
  }

  a1[1] = v374;
  v383 = a1[2];
  if (v374 >= v383)
  {
    v385 = 0xAAAAAAAAAAAAAAABLL * ((v374 - *a1) >> 3);
    if (v385 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v386 = 0xAAAAAAAAAAAAAAABLL * ((v383 - *a1) >> 3);
    v387 = 2 * v386;
    if (2 * v386 <= v385 + 1)
    {
      v387 = v385 + 1;
    }

    if (v386 >= 0x555555555555555)
    {
      v388 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v388 = v387;
    }

    if (v388)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v388);
    }

    v389 = (8 * ((v374 - *a1) >> 3));
    *v389 = 0x7931433C9A6EB2C6;
    v389[1] = "md::ls::SharedUniqueID]";
    v389[2] = 22;
    v384 = (24 * v385 + 24);
    v390 = a1[1] - *a1;
    v391 = 24 * v385 - v390;
    memcpy(v389 - v390, *a1, v390);
    v392 = *a1;
    *a1 = v391;
    a1[1] = v384;
    a1[2] = 0;
    if (v392)
    {
      operator delete(v392);
    }
  }

  else
  {
    *v374 = 0x7931433C9A6EB2C6;
    v374[1] = "md::ls::SharedUniqueID]";
    v374[2] = 22;
    v384 = v374 + 3;
  }

  a1[1] = v384;
  v393 = a1[2];
  if (v384 >= v393)
  {
    v395 = 0xAAAAAAAAAAAAAAABLL * ((v384 - *a1) >> 3);
    if (v395 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v396 = 0xAAAAAAAAAAAAAAABLL * ((v393 - *a1) >> 3);
    v397 = 2 * v396;
    if (2 * v396 <= v395 + 1)
    {
      v397 = v395 + 1;
    }

    if (v396 >= 0x555555555555555)
    {
      v398 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v398 = v397;
    }

    if (v398)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v398);
    }

    v399 = (8 * ((v384 - *a1) >> 3));
    *v399 = 0x7087983DEF28DBFELL;
    v399[1] = "md::ls::IsOpaque]";
    v399[2] = 16;
    v394 = (24 * v395 + 24);
    v400 = a1[1] - *a1;
    v401 = 24 * v395 - v400;
    memcpy(v399 - v400, *a1, v400);
    v402 = *a1;
    *a1 = v401;
    a1[1] = v394;
    a1[2] = 0;
    if (v402)
    {
      operator delete(v402);
    }
  }

  else
  {
    *v384 = 0x7087983DEF28DBFELL;
    v384[1] = "md::ls::IsOpaque]";
    v384[2] = 16;
    v394 = v384 + 3;
  }

  a1[1] = v394;
  v403 = a1[2];
  if (v394 >= v403)
  {
    v405 = 0xAAAAAAAAAAAAAAABLL * ((v394 - *a1) >> 3);
    if (v405 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v406 = 0xAAAAAAAAAAAAAAABLL * ((v403 - *a1) >> 3);
    v407 = 2 * v406;
    if (2 * v406 <= v405 + 1)
    {
      v407 = v405 + 1;
    }

    if (v406 >= 0x555555555555555)
    {
      v408 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v408 = v407;
    }

    if (v408)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v408);
    }

    v409 = (8 * ((v394 - *a1) >> 3));
    *v409 = 0x73F0259EC1934FB1;
    v409[1] = "md::ls::IsTransparent]";
    v409[2] = 21;
    v404 = (24 * v405 + 24);
    v410 = a1[1] - *a1;
    v411 = 24 * v405 - v410;
    memcpy(v409 - v410, *a1, v410);
    v412 = *a1;
    *a1 = v411;
    a1[1] = v404;
    a1[2] = 0;
    if (v412)
    {
      operator delete(v412);
    }
  }

  else
  {
    *v394 = 0x73F0259EC1934FB1;
    v394[1] = "md::ls::IsTransparent]";
    v394[2] = 21;
    v404 = v394 + 3;
  }

  a1[1] = v404;
  v413 = a1[2];
  if (v404 >= v413)
  {
    v415 = 0xAAAAAAAAAAAAAAABLL * ((v404 - *a1) >> 3);
    if (v415 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v416 = 0xAAAAAAAAAAAAAAABLL * ((v413 - *a1) >> 3);
    v417 = 2 * v416;
    if (2 * v416 <= v415 + 1)
    {
      v417 = v415 + 1;
    }

    if (v416 >= 0x555555555555555)
    {
      v418 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v418 = v417;
    }

    if (v418)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v418);
    }

    v419 = (8 * ((v404 - *a1) >> 3));
    *v419 = 0x499CE17DBD9A1615;
    v419[1] = "md::ls::NeedsZBias]";
    v419[2] = 18;
    v414 = (24 * v415 + 24);
    v420 = a1[1] - *a1;
    v421 = 24 * v415 - v420;
    memcpy(v419 - v420, *a1, v420);
    v422 = *a1;
    *a1 = v421;
    a1[1] = v414;
    a1[2] = 0;
    if (v422)
    {
      operator delete(v422);
    }
  }

  else
  {
    *v404 = 0x499CE17DBD9A1615;
    v404[1] = "md::ls::NeedsZBias]";
    v404[2] = 18;
    v414 = v404 + 3;
  }

  a1[1] = v414;
  v423 = a1[2];
  if (v414 >= v423)
  {
    v425 = 0xAAAAAAAAAAAAAAABLL * ((v414 - *a1) >> 3);
    if (v425 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v426 = 0xAAAAAAAAAAAAAAABLL * ((v423 - *a1) >> 3);
    v427 = 2 * v426;
    if (2 * v426 <= v425 + 1)
    {
      v427 = v425 + 1;
    }

    if (v426 >= 0x555555555555555)
    {
      v428 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v428 = v427;
    }

    if (v428)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v428);
    }

    v429 = (8 * ((v414 - *a1) >> 3));
    *v429 = 0x98A9F01DBB8BCCCELL;
    v429[1] = "md::ls::PreserveHeight]";
    v429[2] = 22;
    v424 = (24 * v425 + 24);
    v430 = a1[1] - *a1;
    v431 = 24 * v425 - v430;
    memcpy(v429 - v430, *a1, v430);
    v432 = *a1;
    *a1 = v431;
    a1[1] = v424;
    a1[2] = 0;
    if (v432)
    {
      operator delete(v432);
    }
  }

  else
  {
    *v414 = 0x98A9F01DBB8BCCCELL;
    v414[1] = "md::ls::PreserveHeight]";
    v414[2] = 22;
    v424 = v414 + 3;
  }

  a1[1] = v424;
  v433 = a1[2];
  if (v424 >= v433)
  {
    v435 = 0xAAAAAAAAAAAAAAABLL * ((v424 - *a1) >> 3);
    if (v435 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v436 = 0xAAAAAAAAAAAAAAABLL * ((v433 - *a1) >> 3);
    v437 = 2 * v436;
    if (2 * v436 <= v435 + 1)
    {
      v437 = v435 + 1;
    }

    if (v436 >= 0x555555555555555)
    {
      v438 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v438 = v437;
    }

    if (v438)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v438);
    }

    v439 = (8 * ((v424 - *a1) >> 3));
    *v439 = 0xE53EF176130D7769;
    v439[1] = "md::ls::InstanceCount]";
    v439[2] = 21;
    v434 = (24 * v435 + 24);
    v440 = a1[1] - *a1;
    v441 = 24 * v435 - v440;
    memcpy(v439 - v440, *a1, v440);
    v442 = *a1;
    *a1 = v441;
    a1[1] = v434;
    a1[2] = 0;
    if (v442)
    {
      operator delete(v442);
    }
  }

  else
  {
    *v424 = 0xE53EF176130D7769;
    v424[1] = "md::ls::InstanceCount]";
    v424[2] = 21;
    v434 = v424 + 3;
  }

  a1[1] = v434;
  v443 = a1[2];
  if (v434 >= v443)
  {
    v445 = 0xAAAAAAAAAAAAAAABLL * ((v434 - *a1) >> 3);
    if (v445 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v446 = 0xAAAAAAAAAAAAAAABLL * ((v443 - *a1) >> 3);
    v447 = 2 * v446;
    if (2 * v446 <= v445 + 1)
    {
      v447 = v445 + 1;
    }

    if (v446 >= 0x555555555555555)
    {
      v448 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v448 = v447;
    }

    if (v448)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v448);
    }

    v449 = (8 * ((v434 - *a1) >> 3));
    *v449 = 0x76B9BA390004E44ELL;
    v449[1] = "md::ls::IsDecal]";
    v449[2] = 15;
    v444 = (24 * v445 + 24);
    v450 = a1[1] - *a1;
    v451 = 24 * v445 - v450;
    memcpy(v449 - v450, *a1, v450);
    v452 = *a1;
    *a1 = v451;
    a1[1] = v444;
    a1[2] = 0;
    if (v452)
    {
      operator delete(v452);
    }
  }

  else
  {
    *v434 = 0x76B9BA390004E44ELL;
    v434[1] = "md::ls::IsDecal]";
    v434[2] = 15;
    v444 = v434 + 3;
  }

  a1[1] = v444;
  v453 = a1[2];
  if (v444 >= v453)
  {
    v455 = 0xAAAAAAAAAAAAAAABLL * ((v444 - *a1) >> 3);
    if (v455 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v456 = 0xAAAAAAAAAAAAAAABLL * ((v453 - *a1) >> 3);
    v457 = 2 * v456;
    if (2 * v456 <= v455 + 1)
    {
      v457 = v455 + 1;
    }

    if (v456 >= 0x555555555555555)
    {
      v458 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v458 = v457;
    }

    if (v458)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v458);
    }

    v459 = (8 * ((v444 - *a1) >> 3));
    *v459 = 0x3E8485C60908F920;
    v459[1] = "md::ls::IsMaterial]";
    v459[2] = 18;
    v454 = (24 * v455 + 24);
    v460 = a1[1] - *a1;
    v461 = 24 * v455 - v460;
    memcpy(v459 - v460, *a1, v460);
    v462 = *a1;
    *a1 = v461;
    a1[1] = v454;
    a1[2] = 0;
    if (v462)
    {
      operator delete(v462);
    }
  }

  else
  {
    *v444 = 0x3E8485C60908F920;
    v444[1] = "md::ls::IsMaterial]";
    v444[2] = 18;
    v454 = v444 + 3;
  }

  a1[1] = v454;
  v463 = a1[2];
  if (v454 >= v463)
  {
    v465 = 0xAAAAAAAAAAAAAAABLL * ((v454 - *a1) >> 3);
    if (v465 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v466 = 0xAAAAAAAAAAAAAAABLL * ((v463 - *a1) >> 3);
    v467 = 2 * v466;
    if (2 * v466 <= v465 + 1)
    {
      v467 = v465 + 1;
    }

    if (v466 >= 0x555555555555555)
    {
      v468 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v468 = v467;
    }

    if (v468)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v468);
    }

    v469 = (8 * ((v454 - *a1) >> 3));
    *v469 = 0x1223E23132DA4D6ALL;
    v469[1] = "md::ls::TriPlanar]";
    v469[2] = 17;
    v464 = (24 * v465 + 24);
    v470 = a1[1] - *a1;
    v471 = 24 * v465 - v470;
    memcpy(v469 - v470, *a1, v470);
    v472 = *a1;
    *a1 = v471;
    a1[1] = v464;
    a1[2] = 0;
    if (v472)
    {
      operator delete(v472);
    }
  }

  else
  {
    *v454 = 0x1223E23132DA4D6ALL;
    v454[1] = "md::ls::TriPlanar]";
    v454[2] = 17;
    v464 = v454 + 3;
  }

  a1[1] = v464;
  v473 = a1[2];
  if (v464 >= v473)
  {
    v475 = 0xAAAAAAAAAAAAAAABLL * ((v464 - *a1) >> 3);
    if (v475 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v476 = 0xAAAAAAAAAAAAAAABLL * ((v473 - *a1) >> 3);
    v477 = 2 * v476;
    if (2 * v476 <= v475 + 1)
    {
      v477 = v475 + 1;
    }

    if (v476 >= 0x555555555555555)
    {
      v478 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v478 = v477;
    }

    if (v478)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v478);
    }

    v479 = (8 * ((v464 - *a1) >> 3));
    *v479 = 0x237F9D3BCC905318;
    v479[1] = "md::ls::IsMercator]";
    v479[2] = 18;
    v474 = (24 * v475 + 24);
    v480 = a1[1] - *a1;
    v481 = 24 * v475 - v480;
    memcpy(v479 - v480, *a1, v480);
    v482 = *a1;
    *a1 = v481;
    a1[1] = v474;
    a1[2] = 0;
    if (v482)
    {
      operator delete(v482);
    }
  }

  else
  {
    *v464 = 0x237F9D3BCC905318;
    v464[1] = "md::ls::IsMercator]";
    v464[2] = 18;
    v474 = v464 + 3;
  }

  a1[1] = v474;
  v483 = a1[2];
  if (v474 >= v483)
  {
    v485 = 0xAAAAAAAAAAAAAAABLL * ((v474 - *a1) >> 3);
    if (v485 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v486 = 0xAAAAAAAAAAAAAAABLL * ((v483 - *a1) >> 3);
    v487 = 2 * v486;
    if (2 * v486 <= v485 + 1)
    {
      v487 = v485 + 1;
    }

    if (v486 >= 0x555555555555555)
    {
      v488 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v488 = v487;
    }

    if (v488)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v488);
    }

    v489 = (8 * ((v474 - *a1) >> 3));
    *v489 = 0x6E6C3F5AAEB152E5;
    v489[1] = "md::ls::SupportsStylizedShading]";
    v489[2] = 31;
    v484 = (24 * v485 + 24);
    v490 = a1[1] - *a1;
    v491 = 24 * v485 - v490;
    memcpy(v489 - v490, *a1, v490);
    v492 = *a1;
    *a1 = v491;
    a1[1] = v484;
    a1[2] = 0;
    if (v492)
    {
      operator delete(v492);
    }
  }

  else
  {
    *v474 = 0x6E6C3F5AAEB152E5;
    v474[1] = "md::ls::SupportsStylizedShading]";
    v474[2] = 31;
    v484 = v474 + 3;
  }

  a1[1] = v484;
  v493 = a1[2];
  if (v484 >= v493)
  {
    v495 = 0xAAAAAAAAAAAAAAABLL * ((v484 - *a1) >> 3);
    if (v495 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v496 = 0xAAAAAAAAAAAAAAABLL * ((v493 - *a1) >> 3);
    v497 = 2 * v496;
    if (2 * v496 <= v495 + 1)
    {
      v497 = v495 + 1;
    }

    if (v496 >= 0x555555555555555)
    {
      v498 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v498 = v497;
    }

    if (v498)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v498);
    }

    v499 = (8 * ((v484 - *a1) >> 3));
    *v499 = 0xC48764EACEE66A08;
    v499[1] = "md::ls::SupportsSteepnessDarkening]";
    v499[2] = 34;
    v494 = (24 * v495 + 24);
    v500 = a1[1] - *a1;
    v501 = 24 * v495 - v500;
    memcpy(v499 - v500, *a1, v500);
    v502 = *a1;
    *a1 = v501;
    a1[1] = v494;
    a1[2] = 0;
    if (v502)
    {
      operator delete(v502);
    }
  }

  else
  {
    *v484 = 0xC48764EACEE66A08;
    v484[1] = "md::ls::SupportsSteepnessDarkening]";
    v484[2] = 34;
    v494 = v484 + 3;
  }

  a1[1] = v494;
  v503 = a1[2];
  if (v494 < v503)
  {
    *v494 = 0x763953A644184BA9;
    v494[1] = "md::ls::RenderableHash]";
    v494[2] = 22;
    v504 = (v494 + 3);
    goto LABEL_613;
  }

  v505 = 0xAAAAAAAAAAAAAAABLL * ((v494 - *a1) >> 3);
  if (v505 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_614:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v506 = 0xAAAAAAAAAAAAAAABLL * ((v503 - *a1) >> 3);
  v507 = 2 * v506;
  if (2 * v506 <= v505 + 1)
  {
    v507 = v505 + 1;
  }

  if (v506 >= 0x555555555555555)
  {
    v508 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v508 = v507;
  }

  if (v508)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v508);
  }

  v509 = (8 * ((v494 - *a1) >> 3));
  *v509 = 0x763953A644184BA9;
  v509[1] = "md::ls::RenderableHash]";
  v509[2] = 22;
  v504 = 24 * v505 + 24;
  v510 = a1[1] - *a1;
  v511 = 24 * v505 - v510;
  memcpy(v509 - v510, *a1, v510);
  v512 = *a1;
  *a1 = v511;
  a1[1] = v504;
  a1[2] = 0;
  if (v512)
  {
    operator delete(v512);
  }

LABEL_613:
  a1[1] = v504;
}