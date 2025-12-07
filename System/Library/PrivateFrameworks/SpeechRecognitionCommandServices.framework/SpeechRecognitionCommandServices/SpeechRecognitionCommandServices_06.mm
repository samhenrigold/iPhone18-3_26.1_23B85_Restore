uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ReplaceFstImpl(uint64_t a1)
{
  *a1 = &unk_287C082E0;
  v3 = (a1 + 240);
  std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 200);
  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1 + 176, *(a1 + 184));
  std::unique_ptr<fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>>::~unique_ptr[abi:ne200100]((a1 + 168));
  return fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(a1);
}

{
  *a1 = &unk_287C082E0;
  v4 = (a1 + 240);
  std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 200);
  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1 + 176, *(a1 + 184));
  std::unique_ptr<fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>>::~unique_ptr[abi:ne200100]((a1 + 168));
  v2 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(a1);
  return MEMORY[0x26D6787B0](v2, 0x10B3C4075DE3A39);
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Properties(void *a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    v4 = a1[30];
    if ((a1[31] - v4) >= 9)
    {
      v5 = 1;
      do
      {
        if ((*(**(v4 + 8 * v5) + 56))(*(v4 + 8 * v5), 4, 0))
        {
          a1[1] |= 4uLL;
        }

        ++v5;
        v4 = a1[30];
      }

      while (v5 < (a1[31] - v4) >> 3);
    }
  }

  return a1[1] & a2;
}

uint64_t *fst::CompactHashStateTable<fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>>::~CompactHashStateTable(uint64_t *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::~__hash_table((a1 + 4));
  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    MEMORY[0x26D6787B0](v3, 0xC400A2AC0F1);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    MEMORY[0x26D6787B0](v4, 0xC400A2AC0F1);
  }

  return a1;
}

void fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::CompactHashBiTable(uint64_t *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  *a1 = a3;
  if (!a4)
  {
    operator new();
  }

  a1[1] = a4;
  a1[2] = a1;
  a1[3] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::unordered_set((a1 + 4), a2, a1 + 2, a1 + 3);
}

void sub_26B50BCDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x26D6787B0](v3, 0xC400A2AC0F1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::ReplaceStateTuple<int,long>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>(*(a1 + 32));
      v2[3] = v4[7];
      v4[7] = v2;
      v2 = v3;
    }

    while (v3);
  }

  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator((a1 + 32));

  return std::unique_ptr<std::__hash_node_base<std::__hash_node<int,void *> *> *[],std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>>::~unique_ptr[abi:ne200100](a1);
}

void fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::CompactHashBiTable(uint64_t *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  *a1 = a3;
  if (!a4)
  {
    operator new();
  }

  a1[1] = a4;
  a1[2] = a1;
  a1[3] = a1;
  std::unordered_set<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::unordered_set((a1 + 4), a2, a1 + 2, a1 + 3);
}

void sub_26B50C008(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  *v10 = 0;
  if (v12)
  {
    MEMORY[0x26D6787B0](v12, 0xC400A2AC0F1, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<fst::ReplaceStackPrefix<int,int>>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unique_ptr<CMDPToken>>>>(result, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_26B50C138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<fst::ReplaceStackPrefix<int,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node_base<std::__hash_node<long,void *> *> *[],std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>>::operator()[abi:ne200100]((a1 + 1), v2);
  }

  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(a1 + 2);
  return a1;
}

void fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::deallocate(uint64_t **a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<2>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[2] = v4[7];
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<1>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[1] = v4[7];
LABEL_22:
    v4[7] = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<4>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[4] = v4[7];
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<8>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[8] = v4[7];
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<16>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[16] = v4[7];
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<32>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[32] = v4[7];
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<64>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[64] = v4[7];
    goto LABEL_22;
  }

  operator delete(__p);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<1>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x40)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 9uLL);
    v1 = *v2;
  }

  if (!*(v1 + 64))
  {
    operator new();
  }

  return *(v1 + 64);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07BB8;
  a1[1] = &unk_287C07BE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07BB8;
  a1[1] = &unk_287C07BE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<2>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x80)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x11uLL);
    v1 = *v2;
  }

  if (!*(v1 + 128))
  {
    operator new();
  }

  return *(v1 + 128);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<4>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x100)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x21uLL);
    v1 = *v2;
  }

  if (!*(v1 + 256))
  {
    operator new();
  }

  return *(v1 + 256);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<8>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x200)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<16>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x400)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<32>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x800)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<64>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x1000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::__rehash<true>(unint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 40) / *(result + 56));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::__do_rehash<true>(void **result, unint64_t a2)
{
  if (a2)
  {
    v4 = fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::allocate(result + 2, a2);
    v5 = *result;
    *result = v4;
    if (v5)
    {
      std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>>::operator()[abi:ne200100]((result + 1), v5);
    }

    v6 = 0;
    result[1] = a2;
    do
    {
      *(*result + v6++) = 0;
    }

    while (a2 != v6);
    v7 = result[3];
    if (v7)
    {
      v8 = v7[1];
      v9 = vcnt_s8(a2);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      *(*result + v8) = result + 3;
      v11 = *v7;
      if (*v7)
      {
        do
        {
          v12 = v11[1];
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= a2)
            {
              v12 %= a2;
            }
          }

          else
          {
            v12 &= a2 - 1;
          }

          if (v12 != v8)
          {
            v13 = *result;
            if (!*(*result + v12))
            {
              v13[v12] = v7;
              goto LABEL_23;
            }

            *v7 = *v11;
            *v11 = *v13[v12];
            *v13[v12] = v11;
            v11 = v7;
          }

          v12 = v8;
LABEL_23:
          v7 = v11;
          v11 = *v11;
          v8 = v12;
        }

        while (v11);
      }
    }
  }

  else
  {
    v10 = *result;
    *result = 0;
    if (v10)
    {
      std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>>::operator()[abi:ne200100]((result + 1), v10);
    }

    result[1] = 0;
  }
}

void *fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::allocate(uint64_t **a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<2>>(*a1);
    result = v2[7];
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<24ul>::Allocate(v2 + 1, 1);
      result[2] = 0;
      return result;
    }

    v4 = result[2];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<1>>(*a1);
    result = v2[7];
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<16ul>::Allocate(v2 + 1, 1);
      result[1] = 0;
      return result;
    }

    v4 = result[1];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 61))
            {

              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<64>>(*a1);
          result = v2[7];
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<520ul>::Allocate(v2 + 1, 1);
            result[64] = 0;
            return result;
          }

          v4 = result[64];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<32>>(*a1);
          result = v2[7];
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<264ul>::Allocate(v2 + 1, 1);
            result[32] = 0;
            return result;
          }

          v4 = result[32];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<16>>(*a1);
        result = v2[7];
        if (!result)
        {
          result = fst::internal::MemoryArenaImpl<136ul>::Allocate(v2 + 1, 1);
          result[16] = 0;
          return result;
        }

        v4 = result[16];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<8>>(*a1);
      result = v2[7];
      if (!result)
      {
        result = fst::internal::MemoryArenaImpl<72ul>::Allocate(v2 + 1, 1);
        result[8] = 0;
        return result;
      }

      v4 = result[8];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>::TN<4>>(*a1);
    result = v2[7];
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<40ul>::Allocate(v2 + 1, 1);
      result[4] = 0;
      return result;
    }

    v4 = result[4];
  }

  v2[7] = v4;
  return result;
}

uint64_t *std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::~__hash_table(uint64_t *a1)
{
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<1>>(a1[4]);
      v2[3] = v4[7];
      v4[7] = v2;
      v2 = v3;
    }

    while (v3);
  }

  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(a1 + 4);

  return std::unique_ptr<std::__hash_node_base<std::__hash_node<long,void *> *> *[],std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<long,void *> *> *>>>::~unique_ptr[abi:ne200100](a1);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<1>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0xC7)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x19uLL);
    v1 = *v2;
  }

  if (!*(v1 + 192))
  {
    operator new();
  }

  return *(v1 + 192);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C076F8;
  a1[1] = &unk_287C07720;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C076F8;
  a1[1] = &unk_287C07720;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<2>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x187)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x31uLL);
    v1 = *v2;
  }

  if (!*(v1 + 384))
  {
    operator new();
  }

  return *(v1 + 384);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<4>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x307)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x61uLL);
    v1 = *v2;
  }

  if (!*(v1 + 768))
  {
    operator new();
  }

  return *(v1 + 768);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C077F8;
  a1[1] = &unk_287C07820;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C077F8;
  a1[1] = &unk_287C07820;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<8>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x607)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0xC1uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1536))
  {
    operator new();
  }

  return *(v1 + 1536);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C078B8;
  a1[1] = &unk_287C078E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C078B8;
  a1[1] = &unk_287C078E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<16>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0xC07)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x181uLL);
    v1 = *v2;
  }

  if (!*(v1 + 3072))
  {
    operator new();
  }

  return *(v1 + 3072);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07978;
  a1[1] = &unk_287C079A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07978;
  a1[1] = &unk_287C079A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<32>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) >> 3 <= 0x300)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x301uLL);
    v1 = *v2;
  }

  if (!*(v1 + 6144))
  {
    operator new();
  }

  return *(v1 + 6144);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07A38;
  a1[1] = &unk_287C07A60;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07A38;
  a1[1] = &unk_287C07A60;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<64>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) >> 3 <= 0x600)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x601uLL);
    v1 = *v2;
  }

  if (!*(v1 + 12288))
  {
    operator new();
  }

  return *(v1 + 12288);
}

void *fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07AF8;
  a1[1] = &unk_287C07B20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07AF8;
  a1[1] = &unk_287C07B20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(v4, *v7, *(v7 + 8), (*(v7 + 8) - *v7) >> 3);
      v7 += 24;
      v4 = v13 + 3;
      v13 += 3;
    }

    while (v7 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      v8 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v8;
        operator delete(v8);
      }

      v6 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t *std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B50E524(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<fst::ReplaceStackPrefix<int,int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<fst::ReplaceStackPrefix<int,int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<fst::ReplaceStackPrefix<int,int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<fst::ReplaceStackPrefix<int,int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<fst::ReplaceStackPrefix<int,int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<fst::ReplaceStackPrefix<int,int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
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

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t *fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>::~DefaultReplaceStateTable(uint64_t *a1)
{
  v8 = (a1 + 30);
  std::vector<fst::ReplaceStackPrefix<int,int>>::__destroy_vector::operator()[abi:ne200100](&v8);
  std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::~__hash_table(a1 + 21);
  v2 = a1[18];
  a1[18] = 0;
  if (v2)
  {
    MEMORY[0x26D6787B0](v2, 0xC400A2AC0F1);
  }

  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    MEMORY[0x26D6787B0](v3, 0xC400A2AC0F1);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::~__hash_table((a1 + 4));
  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    MEMORY[0x26D6787B0](v5, 0xC400A2AC0F1);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    MEMORY[0x26D6787B0](v6, 0xC400A2AC0F1);
  }

  return a1;
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Start(uint64_t a1)
{
  if (*(a1 + 56))
  {
    return *(a1 + 60);
  }

  if ((*(*a1 + 24))(a1, 4))
  {
    *(a1 + 56) = 1;
    return *(a1 + 60);
  }

  if (*(a1 + 56))
  {
    return *(a1 + 60);
  }

  v3 = *(a1 + 240);
  if (*(a1 + 248) - v3 == 8)
  {
    result = 0xFFFFFFFFLL;
    *(a1 + 60) = -1;
    *(a1 + 56) = 1;
    if ((*(a1 + 64) & 0x80000000) != 0)
    {
      *(a1 + 64) = 0;
    }
  }

  else
  {
    v4 = *(v3 + 8 * *(a1 + 264));
    result = (*(*v4 + 16))(v4);
    if (result != -1)
    {
      v5 = result;
      memset(__p, 0, sizeof(__p));
      Id = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::FindId((*(a1 + 168) + 136), __p, 1);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v7 = *(a1 + 168);
      v8 = *(a1 + 264);
      __p[0] = Id;
      __p[1] = __PAIR64__(v5, v8);
      result = fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::FindId(v7, __p, 1);
      *(a1 + 60) = result;
      *(a1 + 56) = 1;
      if (*(a1 + 64) <= result)
      {
        *(a1 + 64) = result + 1;
      }
    }
  }

  return result;
}

void sub_26B50EE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::FindId(void *a1, uint64_t a2, int a3)
{
  a1[16] = a2;
  if (!a3)
  {
    v5 = std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::find<long>(a1 + 4, &fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::kCurrentKey);
    if (!v5)
    {
      return -1;
    }

    return v5[2];
  }

  v5 = std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::__emplace_unique_key_args<long,long const&>(a1 + 4, &fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::kCurrentKey, &fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::kCurrentKey);
  if ((v6 & 1) == 0)
  {
    return v5[2];
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((a1[14] - a1[13]) >> 3);
  v5[2] = v7;
  std::vector<fst::ReplaceStackPrefix<int,int>>::push_back[abi:ne200100](a1 + 13, a2);
  return v7;
}

uint64_t std::vector<fst::ReplaceStackPrefix<int,int>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ReplaceStackPrefix<int,int>>::__emplace_back_slow_path<fst::ReplaceStackPrefix<int,int> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::ReplaceStackPrefix<int,int>>::__construct_one_at_end[abi:ne200100]<fst::ReplaceStackPrefix<int,int> const&>(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::__emplace_unique_key_args<long,long const&>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v7 = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc::operator()(a1 + 6, *a2);
  v8 = v7;
  v9 = a1[1];
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            if (fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual::operator()(a1 + 8, v13[2], *a2))
            {
              return v13;
            }
          }

          else
          {
            if (v11 > 1)
            {
              if (v14 >= v9)
              {
                v14 %= v9;
              }
            }

            else
            {
              v14 &= v9 - 1;
            }

            if (v14 != v3)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v15 = fst::PoolAllocator<std::__hash_node<long,void *>>::allocate(a1 + 4, 1uLL);
  v27[0] = v15;
  v27[1] = (a1 + 4);
  v27[2] = 1;
  *v15 = 0;
  v15[1] = v8;
  v15[2] = *a3;
  v16 = (a1[5] + 1);
  v17 = *(a1 + 14);
  if (!v9 || (v17 * v9) < v16)
  {
    v18 = 1;
    if (v9 >= 3)
    {
      v18 = (v9 & (v9 - 1)) != 0;
    }

    v19 = v18 | (2 * v9);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::__rehash<true>(a1, v21);
    v9 = a1[1];
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v3);
  if (v23)
  {
    v13 = v27[0];
    *v27[0] = *v23;
    *v23 = v13;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = a1[3];
    a1[3] = v24;
    v22[v3] = (a1 + 3);
    v13 = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v25 >= v9)
        {
          v25 %= v9;
        }
      }

      else
      {
        v25 &= v9 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      v13 = v27[0];
    }
  }

  v27[0] = 0;
  ++a1[5];
  std::unique_ptr<std::__hash_node<long,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<long,void *>>>>::reset[abi:ne200100](v27, 0);
  return v13;
}

void sub_26B50F16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<long,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<long,void *>>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc::operator()(uint64_t *a1, uint64_t a2)
{
  if (a2 < -1)
  {
    return 0;
  }

  v2 = *a1;
  v3 = a2 == -1 ? *(v2 + 128) : (*(v2 + 104) + 24 * a2);
  v4 = *v3;
  v5 = v3[1];
  if (v4 == v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    v7 = *v4;
    v8 = v4[1];
    v4 += 2;
    result += v7 + 7863 * v8;
  }

  while (v4 != v5);
  return result;
}

uint64_t fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual::operator()(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  result = 0;
  if (a2 >= -1 && a3 >= -1)
  {
    v5 = *a1;
    if (a2 == -1)
    {
      v6 = v5[16];
    }

    else
    {
      v6 = (v5[13] + 24 * a2);
    }

    if (a3 == -1)
    {
      v7 = v5[16];
    }

    else
    {
      v7 = (v5[13] + 24 * a3);
    }

    return std::equal_to<fst::ReplaceStackPrefix<int,int>>::operator()[abi:ne200100](v5[1], v6, v7);
  }

  return result;
}

uint64_t std::equal_to<fst::ReplaceStackPrefix<int,int>>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v5 == a3[1] - *a3)
  {
    if (v4 == v3)
    {
      return 1;
    }

    v6 = v5 >> 3;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = (*a3 + 4);
    for (i = (v3 + 4); *(i - 1) == *(v7 - 1) && *i == *v7; i += 2)
    {
      v7 += 2;
      if (!--v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

void *fst::PoolAllocator<std::__hash_node<long,void *>>::allocate(uint64_t **a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<2>>(*a1);
    result = v2[7];
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<56ul>::Allocate(v2 + 1, 1);
      result[6] = 0;
      return result;
    }

    v4 = result[6];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<1>>(*a1);
    result = v2[7];
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<32ul>::Allocate(v2 + 1, 1);
      result[3] = 0;
      return result;
    }

    v4 = result[3];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (a2 < 0xAAAAAAAAAAAAAABLL)
            {

              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<64>>(*a1);
          result = v2[7];
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<1544ul>::Allocate(v2 + 1, 1);
            result[192] = 0;
            return result;
          }

          v4 = result[192];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<32>>(*a1);
          result = v2[7];
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<776ul>::Allocate(v2 + 1, 1);
            result[96] = 0;
            return result;
          }

          v4 = result[96];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<16>>(*a1);
        result = v2[7];
        if (!result)
        {
          result = fst::internal::MemoryArenaImpl<392ul>::Allocate(v2 + 1, 1);
          result[48] = 0;
          return result;
        }

        v4 = result[48];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<8>>(*a1);
      result = v2[7];
      if (!result)
      {
        result = fst::internal::MemoryArenaImpl<200ul>::Allocate(v2 + 1, 1);
        result[24] = 0;
        return result;
      }

      v4 = result[24];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<4>>(*a1);
    result = v2[7];
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<104ul>::Allocate(v2 + 1, 1);
      result[12] = 0;
      return result;
    }

    v4 = result[12];
  }

  v2[7] = v4;
  return result;
}

uint64_t *std::unique_ptr<std::__hash_node<long,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<long,void *>>>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    result = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<long,void *>>::TN<1>>(*result[1]);
    *(v2 + 24) = result[7];
    result[7] = v2;
  }

  return result;
}

uint64_t *std::vector<fst::ReplaceStackPrefix<int,int>>::__construct_one_at_end[abi:ne200100]<fst::ReplaceStackPrefix<int,int> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(v3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<fst::ReplaceStackPrefix<int,int>>::__emplace_back_slow_path<fst::ReplaceStackPrefix<int,int> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unique_ptr<CMDPToken>>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *&v16 = v16 + 24;
  v8 = a1[1];
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::ReplaceStackPrefix<int,int>>::~__split_buffer(&v14);
  return v13;
}

void sub_26B50F664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<fst::ReplaceStackPrefix<int,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::find<long>(void *a1, uint64_t *a2)
{
  v4 = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc::operator()(a1 + 6, *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual::operator()(a1 + 8, v11[2], *a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::FindId(void *a1, _OWORD *a2, int a3)
{
  a1[16] = a2;
  if (a3)
  {
    v5 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 4, &fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::kCurrentKey, &fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::kCurrentKey);
    if (v6)
    {
      v7 = a1[13];
      v8 = a1[14];
      v9 = a1[15];
      v10 = (v8 - v7) >> 4;
      *(v5 + 16) = v10;
      if (v8 >= v9)
      {
        v13 = v10 + 1;
        if ((v10 + 1) >> 60)
        {
          std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v7;
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

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>((a1 + 13), v15);
        }

        *(16 * v10) = *a2;
        v11 = 16 * v10 + 16;
        v16 = a1[13];
        v17 = a1[14] - v16;
        v18 = (16 * v10 - v17);
        memcpy(v18, v16, v17);
        v19 = a1[13];
        a1[13] = v18;
        a1[14] = v11;
        a1[15] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8 = *a2;
        v11 = (v8 + 1);
      }

      a1[14] = v11;
    }

    else
    {
      return *(v5 + 16);
    }
  }

  else
  {
    v12 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::find<int>(a1 + 4, &fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::kCurrentKey);
    if (v12)
    {
      return *(v12 + 4);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v10;
}

uint64_t std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__emplace_unique_key_args<int,int const&>(uint64_t *a1, unsigned int *a2, _DWORD *a3)
{
  v7 = *a2;
  if (v7 < -1)
  {
    v10 = 0;
  }

  else
  {
    v8 = a1[6];
    if (v7 == -1)
    {
      v9 = *(v8 + 128);
    }

    else
    {
      v9 = *(v8 + 104) + 16 * v7;
    }

    v10 = *v9 + 7853 * *(v9 + 8) + 7867 * *(v9 + 12);
  }

  v11 = a1[1];
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v3 = v10;
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v3);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = *(i + 8);
        if (v16 == v10)
        {
          if (fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual::operator()(a1 + 8, *(i + 16), *a2))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v17 = fst::PoolAllocator<std::__hash_node<int,void *>>::allocate(a1 + 4, 1uLL);
  v29[0] = v17;
  v29[1] = (a1 + 4);
  v29[2] = 1;
  *v17 = 0;
  v17[1] = v10;
  *(v17 + 4) = *a3;
  v18 = (a1[5] + 1);
  v19 = *(a1 + 14);
  if (!v11 || (v19 * v11) < v18)
  {
    v20 = 1;
    if (v11 >= 3)
    {
      v20 = (v11 & (v11 - 1)) != 0;
    }

    v21 = v20 | (2 * v11);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__rehash<true>(a1, v23);
    v11 = a1[1];
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }

      else
      {
        v3 = v10;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v3);
  if (v25)
  {
    i = v29[0];
    *v29[0] = *v25;
    *v25 = i;
  }

  else
  {
    v26 = v29[0];
    *v29[0] = a1[3];
    a1[3] = v26;
    v24[v3] = (a1 + 3);
    i = v29[0];
    if (*v29[0])
    {
      v27 = *(*v29[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v27 >= v11)
        {
          v27 %= v11;
        }
      }

      else
      {
        v27 &= v11 - 1;
      }

      *(*a1 + 8 * v27) = v29[0];
      i = v29[0];
    }
  }

  v29[0] = 0;
  ++a1[5];
  std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](v29, 0);
  return i;
}

void sub_26B50FB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

BOOL fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual::operator()(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  result = 0;
  if (a2 >= -1 && a3 >= -1)
  {
    v5 = *a1;
    if (a2 == -1)
    {
      v6 = *(v5 + 128);
    }

    else
    {
      v6 = *(v5 + 104) + 16 * a2;
    }

    if (a3 == -1)
    {
      v7 = *(v5 + 128);
    }

    else
    {
      v7 = *(v5 + 104) + 16 * a3;
    }

    return *v6 == *v7 && *(v6 + 8) == *(v7 + 8) && *(v6 + 12) == *(v7 + 12);
  }

  return result;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::find<int>(void *a1, unsigned int *a2)
{
  v4 = *a2;
  if (v4 < -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[6];
    if (v4 == -1)
    {
      v6 = *(v5 + 128);
    }

    else
    {
      v6 = *(v5 + 104) + 16 * v4;
    }

    v7 = *v6 + 7853 * *(v6 + 8) + 7867 * *(v6 + 12);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v7)
    {
      if (fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::HashEqual::operator()(a1 + 8, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

_DWORD *fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Final@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  result = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasFinal(a1, a2);
  if (result)
  {
    v8 = *(a1 + 120);
    if (*(v8 + 92) == a2)
    {
      v9 = (v8 + 96);
    }

    else
    {
      v9 = (*(v8 + 8) + 8 * a2 + 8);
    }

    *a3 = **v9;
  }

  else
  {
    v10 = *(*(a1 + 168) + 104) + 16 * a2;
    v11 = fst::TropicalWeightTpl<float>::Zero(result, v7);
    v12 = *v11;
    *a3 = *v11;
    if (!*v10)
    {
      (*(**(*(a1 + 240) + 8 * *(v10 + 8)) + 24))(&v13);
      v12 = v13;
      *a3 = v13;
    }

    if ((*(a1 + 160) & 1) != 0 || (result = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2), result))
    {
      result = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(*(a1 + 120), a2);
      *result = v12;
      result[14] |= 9u;
    }
  }

  return result;
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumArcs(uint64_t a1, uint64_t a2)
{
  if (!fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2))
  {
    if (*(a1 + 160) != 1)
    {
      v9 = *(*(*(a1 + 168) + 104) + 16 * a2);
      if (HIDWORD(v9) == -1)
      {
        return 0;
      }

      v7 = *(*(a1 + 240) + 8 * SDWORD2(v9));
      v8 = (*(*v7 + 32))(v7);
      return v8 + fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(a1, &v9, 0, 15);
    }

    fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

void fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Expand(uint64_t *a1, uint64_t a2)
{
  v12 = *(*(a1[21] + 104) + 16 * a2);
  if (HIDWORD(v12) != -1)
  {
    v4 = *(a1[30] + 8 * SDWORD2(v12));
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    (*(*v4 + 120))(v4);
    if (fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(a1, &v12, v8, 15))
    {
      MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(a1[15], a2);
      std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::push_back[abi:ne200100](MutableState + 3, v8);
    }

    while (1)
    {
      if (v9)
      {
        if ((*(*v9 + 16))(v9))
        {
LABEL_15:
          fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a1, a2);
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          else if (*(&v10 + 1))
          {
            --**(&v10 + 1);
          }

          return;
        }

        if (v9)
        {
          v6 = (*(*v9 + 24))(v9);
          goto LABEL_8;
        }
      }

      else if (v11 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (*(&v9 + 1) + 16 * v11);
LABEL_8:
      if (fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeArc(a1, &v12, v6, v8, 15))
      {
        v7 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(a1[15], a2);
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::push_back[abi:ne200100](v7 + 3, v8);
      }

      if (v9)
      {
        (*(*v9 + 32))(v9);
      }

      else
      {
        ++v11;
      }
    }
  }

  fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a1, a2);
}

void sub_26B51016C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(uint64_t a1, uint64_t *a2, _DWORD *a3, char a4)
{
  if (*(a2 + 3) == -1)
  {
    return 0;
  }

  v8 = (*(**(*(a1 + 240) + 8 * *(a2 + 2)) + 24))(&v25);
  v10 = fst::TropicalWeightTpl<float>::Zero(v8, v9);
  LODWORD(v21) = v25;
  HIDWORD(v25) = *v10;
  v11.n128_u32[0] = v25;
  if (*&v25 == *(&v25 + 1))
  {
    return 0;
  }

  v12 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (a3)
  {
    v13 = *(a1 + 136);
    if ((v13 & 0xFFFFFFFD) == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 152);
    }

    *a3 = v14;
    if ((v13 - 1) >= 2)
    {
      v16 = *(a1 + 152);
    }

    else
    {
      v16 = 0;
    }

    a3[1] = v16;
    if ((a4 & 8) != 0)
    {
      v17 = *(*(a1 + 168) + 240) + 24 * v12;
      v23 = 0;
      v24 = 0;
      __p = 0;
      std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(&__p, *v17, *(v17 + 8), (*(v17 + 8) - *v17) >> 3);
      v23 -= 8;
      Id = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::FindId((*(a1 + 168) + 136), &__p, 1);
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      v19 = *(v17 + 8);
      v20 = *(a1 + 168);
      *&v21 = Id;
      *(&v21 + 1) = *(v19 - 8);
      a3[3] = fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::FindId(v20, &v21, 1);
    }

    if ((a4 & 4) != 0)
    {
      (*(**(*(a1 + 240) + 8 * *(a2 + 2)) + 24))(&v21, v11);
      a3[2] = v21;
    }
  }

  return 1;
}

void sub_26B510394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeArc(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, int a5)
{
  v7 = (a5 & 0xFFFFFFFA) != 0 || (*(a1 + 132) & 0xFFFFFFFD) == 1;
  if (!v7)
  {
    *a4 = *a3;
    *(a4 + 8) = a3[2];
    Id = a3[3];
LABEL_21:
    *(a4 + 12) = Id;
    return 1;
  }

  v8 = a5;
  v12 = a3 + 1;
  v11 = a3[1];
  if (!v11 || v11 < *(*(a1 + 176) + 28))
  {
    goto LABEL_16;
  }

  v13 = a1 + 184;
  v14 = *(a1 + 184);
  if (v14)
  {
    do
    {
      v15 = v14;
      v14 = *(v14 + 8);
    }

    while (v14);
  }

  else
  {
    do
    {
      v15 = *(v13 + 16);
      v7 = *v15 == v13;
      v13 = v15;
    }

    while (v7);
  }

  if (v11 > *(v15 + 28) || (v16 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 200), a3 + 1)) == 0)
  {
LABEL_16:
    if ((v8 & 8) != 0)
    {
      v24 = *(a1 + 168);
      v25 = *(a2 + 8);
      v26 = a3[3];
      *&v46 = *a2;
      *(&v46 + 1) = __PAIR64__(v26, v25);
      Id = fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::FindId(v24, &v46, 1);
    }

    else
    {
      Id = -1;
    }

    v27 = *a3;
    v28 = a3[2];
    goto LABEL_20;
  }

  v17 = *(v16 + 5);
  v18 = *(*(a1 + 168) + 240) + 24 * *a2;
  __p = 0;
  v44 = 0;
  v45 = 0;
  std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(&__p, *v18, *(v18 + 8), (*(v18 + 8) - *v18) >> 3);
  v19 = *(a2 + 8);
  v20 = a3[3];
  v21 = v44;
  if (v44 >= v45)
  {
    v30 = (v44 - __p) >> 3;
    if ((v30 + 1) >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v31 = (v45 - __p) >> 2;
    if (v31 <= v30 + 1)
    {
      v31 = v30 + 1;
    }

    if (v45 - __p >= 0x7FFFFFFFFFFFFFF8)
    {
      v32 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v32);
    }

    v33 = (8 * v30);
    *v33 = v19 | (v20 << 32);
    v22 = 8 * v30 + 8;
    v34 = v33 - (v44 - __p);
    memcpy(v34, __p, v44 - __p);
    v35 = __p;
    __p = v34;
    v44 = v22;
    v45 = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    *v44 = v19 | (v20 << 32);
    v22 = (v21 + 8);
  }

  v44 = v22;
  v36 = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::FindId((*(a1 + 168) + 136), &__p, 1);
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  v37 = *(*(a1 + 240) + 8 * v17);
  v38 = (*(*v37 + 16))(v37);
  if (v38 != -1)
  {
    if ((v8 & 8) != 0)
    {
      v39 = *(a1 + 168);
      *&v46 = v36;
      *(&v46 + 1) = __PAIR64__(v38, v17);
      Id = fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)3>::FindId(v39, &v46, 1);
    }

    else
    {
      Id = -1;
    }

    v40 = 0;
    v41 = *(a1 + 132);
    if ((v41 & 0xFFFFFFFD) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = *a3;
    }

    if ((v41 - 1) >= 2)
    {
      v40 = *(a1 + 144);
      if (v40 == -1)
      {
        v40 = *v12;
      }
    }

    v28 = a3[2];
    v27 = v42 | (v40 << 32);
LABEL_20:
    *a4 = v27;
    *(a4 + 8) = v28;
    goto LABEL_21;
  }

  return 0;
}

void sub_26B5106A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumInputEpsilons(uint64_t *a1, uint64_t a2)
{
  if (!fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2))
  {
    if ((a1[20] & 1) == 0 && (*(*a1 + 24))(a1, 0x10000000))
    {
      v9 = *(*(a1[21] + 104) + 16 * a2);
      if (HIDWORD(v9) == -1)
      {
        return 0;
      }

      v4 = *(a1[30] + 8 * SDWORD2(v9));
      if ((*(a1 + 33) & 0xFFFFFFFD) == 1)
      {
        (*(*v4 + 120))(v4);
        v5 = 0;
      }

      else
      {
        v5 = (*(*v4 + 40))(v4);
      }

      if ((a1[17] & 0xFFFFFFFD) == 1)
      {
        v5 += fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(a1, &v9, 0, 15);
      }

      return v5;
    }

    fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Expand(a1, a2);
  }

  v6 = a1[15];
  if (*(v6 + 92) == a2)
  {
    v7 = v6 + 96;
  }

  else
  {
    v7 = *(v6 + 8) + 8 * a2 + 8;
  }

  return *(*v7 + 8);
}

void sub_26B5109AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState();
  }

  else
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(&a9);
  }

  _Unwind_Resume(a1);
}

BOOL fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::IsNonTerminal(void *a1, int a2)
{
  v7 = a2;
  if (*(a1[22] + 28) > a2)
  {
    return 0;
  }

  v2 = a1 + 23;
  v3 = a1[23];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 8);
    }

    while (v3);
  }

  else
  {
    do
    {
      v4 = v2[2];
      v5 = *v4 == v2;
      v2 = v4;
    }

    while (v5);
  }

  return *(v4 + 28) >= a2 && std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1 + 25, &v7) != 0;
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumOutputEpsilons(uint64_t *a1, uint64_t a2)
{
  if (!fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2))
  {
    if ((a1[20] & 1) == 0 && (*(*a1 + 24))(a1, 0x40000000))
    {
      v9 = *(*(a1[21] + 104) + 16 * a2);
      if (HIDWORD(v9) == -1)
      {
        return 0;
      }

      v4 = *(a1[30] + 8 * SDWORD2(v9));
      if ((*(a1 + 33) - 1) >= 2)
      {
        v5 = (*(*v4 + 48))(v4);
      }

      else
      {
        (*(*v4 + 120))(v4);
        v5 = 0;
      }

      if ((*(a1 + 34) - 1) <= 1)
      {
        v5 += fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(a1, &v9, 0, 15);
      }

      return v5;
    }

    fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Expand(a1, a2);
  }

  v6 = a1[15];
  if (*(v6 + 92) == a2)
  {
    v7 = v6 + 96;
  }

  else
  {
    v7 = *(v6 + 8) + 8 * a2 + 8;
  }

  return *(*v7 + 16);
}

void sub_26B510D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState();
  }

  else
  {
    fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(&a9);
  }

  _Unwind_Resume(a1);
}

void *fst::ImplToFst<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ImplToFst(void *a1, uint64_t a2, int a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C086A8;
  if (a3)
  {
    std::allocate_shared[abi:ne200100]<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,std::allocator<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>&,0>();
  }

  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v6 = a1[2];
    a1[1] = v5;
    a1[2] = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    a1[1] = v5;
    a1[2] = 0;
  }

  return a1;
}

void sub_26B510E18(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__shared_ptr_emplace[abi:ne200100]<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>&,std::allocator<fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C08290;
  fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReplaceFstImpl((a1 + 3), a2);
}

void sub_26B511248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v17 + 200);
  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v17 + 176, *(v17 + 184));
  std::unique_ptr<fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>>::~unique_ptr[abi:ne200100]((v17 + 168));
  fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(v17);
  _Unwind_Resume(a1);
}

const void **std::vector<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>::reserve(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>>(result, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_26B5114A0(_Unwind_Exception *a1)
{
  std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<long>>::~__hash_table(v2 + 4);
  v4 = v2[1];
  v2[1] = 0;
  if (v4)
  {
    MEMORY[0x26D6787B0](v4, v1);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    MEMORY[0x26D6787B0](v5, v1);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<fst::ReplaceStackPrefix<int,int>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>*,fst::ReplaceStackPrefix<int,int>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ReplaceStackPrefix<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B511568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::ReplaceStackPrefix<int,int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<fst::ReplaceStackPrefix<int,int>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::unique_ptr<CMDPToken>>>>(a1, a2);
  }

  std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*,fst::ReplaceStackPrefix<int,int>*,fst::ReplaceStackPrefix<int,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void *std::set<int>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(v5, (v5 + 8), v4 + 7, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v4 = *std::__tree<int>::__find_equal<int>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<int>::__find_equal<int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t std::unordered_map<int,int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int const,int> const&>(a1, i + 4, i + 2);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int const,int> const&>(void *a1, int *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

BOOL fst::CacheStateIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 64))
  {
    return 0;
  }

  v5 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 64))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ArcIterator(v15, *(a1 + 8), v6);
    fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFlags(v15, 15, 31);
    v7 = v16;
    v8 = v17;
    while (v7 < v8)
    {
      v9 = *(a1 + 16);
      v10 = fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Value(v15)[3];
      if (*(v9 + 64) <= v10)
      {
        *(v9 + 64) = v10 + 1;
      }

      v8 = v17;
      v7 = ++v16;
    }

    fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetExpandedState(*(a1 + 16), v6);
    v11 = *(a1 + 24);
    v12 = *(a1 + 16);
    v13 = *(v12 + 64);
    v4 = v11 >= v13;
    if (v18)
    {
      --*v18;
    }

    if (v19)
    {
      --*v19;
    }

    if (v11 < v13)
    {
      break;
    }

    v6 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MinUnexpandedState(v12);
  }

  while (v6 < *(*(a1 + 16) + 64));
  return v4;
}

void sub_26B511DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26)
{
  if (a22)
  {
    --*a22;
  }

  if (a26)
  {
    --*a26;
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFlags(int *a1, int a2, int a3)
{
  v3 = a2;
  v5 = a1[14] & ~a3;
  result = *(*a1 + 8);
  if (*(result + 160))
  {
    v7 = 15;
  }

  else
  {
    v7 = 31;
  }

  v8 = v7 & a2 | v5;
  a1[14] = v8;
  if ((v8 & 0x10) == 0 && a1[38] != 15)
  {
    result = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(result, a1[2]);
    if ((result & 1) == 0)
    {
      a1[38] = 0;
    }
  }

  if ((v3 & 0x10) != 0 && !a1[38])
  {

    return fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Init(a1);
  }

  return result;
}

unsigned int *fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Value(void *a1)
{
  v2 = *(a1 + 38);
  if (v2)
  {
    v3 = a1[5];
    v4 = v2 ^ 0xF;
  }

  else
  {
    if ((a1[7] & 0x10) != 0)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      LogMessage::LogMessage(&v11, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "ReplaceFst: Inconsistent arc iterator flags", 43);
      LogMessage::~LogMessage(&v11);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    (*(**a1 + 120))(*a1, *(a1 + 2), a1 + 10);
    v4 = 0;
    v3 = 0;
    a1[18] = a1[11];
    *(a1 + 38) = 15;
    a1[5] = 0;
  }

  v5 = a1[4] - v3;
  if (v5 < 0)
  {
    v7 = *(a1 + 14);
    if (((*(a1 + 43) ^ 0xF) & v7) != 0)
    {
      fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(*(*a1 + 8), a1 + 2, a1 + 39, v7 & 0xF);
      *(a1 + 43) = a1[7] & 0xF;
    }

    return a1 + 39;
  }

  else
  {
    v6 = (a1[18] + 16 * v5);
    if ((v4 & a1[7]) != 0)
    {
      fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeArc(*(*a1 + 8), (a1 + 2), v6, a1 + 60, a1[7] & 0xF);
      return a1 + 15;
    }
  }

  return v6;
}

void sub_26B512040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  a1[2] = -1;
  v4 = a1 + 2;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = -1;
  *(a1 + 14) = 15;
  *(a1 + 5) = 0u;
  v5 = a1 + 10;
  *(a1 + 7) = 0u;
  v6 = a1 + 14;
  *(a1 + 43) = 0;
  *(a1 + 6) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 140) = 0u;
  v7 = *(a2 + 8);
  if (*(v7 + 160) == 1)
  {
    HasArcs = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(v7, a3);
    a2 = *a1;
    a3 = *(a1 + 2);
    if ((HasArcs & 1) == 0)
    {
      fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Expand(*(a2 + 8), *(a1 + 2));
      a2 = *a1;
      a3 = *(a1 + 2);
    }
  }

  v9 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(*(a2 + 8), a3);
  v10 = *a1;
  v11 = *(*a1 + 8);
  if (v9)
  {
    fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitArcIterator(v11, *(a1 + 2), v5);
    v12 = a1[11];
    a1[6] = a1[12];
    a1[18] = v12;
    *(a1 + 38) = 15;
  }

  else
  {
    *v4 = *(*(*(v11 + 168) + 104) + 16 * *(a1 + 2));
    v13 = *(a1 + 7);
    if (v13 == -1)
    {
      a1[6] = 0;
    }

    else
    {
      v14 = *(*(*(v10 + 8) + 240) + 8 * *(a1 + 6));
      (*(*v14 + 120))(v14, v13, v6);
      a1[18] = a1[15];
      v15 = fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(*(*a1 + 8), v4, a1 + 39, 7);
      *(a1 + 43) = 7;
      v16 = a1[16] + v15;
      a1[5] = v15;
      a1[6] = v16;
      *(a1 + 38) = 0;
    }
  }

  return a1;
}

_BYTE *fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Init(_BYTE *result)
{
  v1 = result;
  if ((result[56] & 0x10) != 0)
  {
    v3 = *(result + 16);
    *(result + 18) = *(result + 15);
    if ((*(*(*result + 8) + 132) & 0xFFFFFFFD) == 1)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }

    *(result + 38) = v4;
    v2 = *(result + 6) - v3;
  }

  else
  {
    result = (*(**result + 120))();
    v2 = 0;
    *(v1 + 18) = *(v1 + 11);
    *(v1 + 38) = 15;
  }

  *(v1 + 5) = v2;
  return result;
}

uint64_t fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitArcIterator(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Expand(a1, a2);
  }

  return fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReplaceFstMatcher(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_287C087F0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = -1;
  *(a1 + 72) = a3;
  *(a1 + 77) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = -1;
  v4 = *fst::TropicalWeightTpl<float>::One(a1, a2);
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 120) = v4;
  *(a1 + 124) = -1;
  if (*(a1 + 72) == 2)
  {
    *(a1 + 112) = 0xFFFFFFFF00000000;
  }

  fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitMatchers(a1);
  return a1;
}

void sub_26B5123B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  a10 = v12;
  std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v14 = *(v10 + 8);
  *(v10 + 8) = 0;
  if (v14)
  {
    fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReplaceFstMatcher();
  }

  _Unwind_Resume(a1);
}

void fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitMatchers(uint64_t a1)
{
  v1 = *(a1 + 24);
  std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::resize((a1 + 40), (*(v1 + 248) - *(v1 + 240)) >> 3);
  v2 = *(v1 + 240);
  if (*(v1 + 248) != v2)
  {
    v3 = 0;
    do
    {
      if (*(v2 + 8 * v3))
      {
        operator new();
      }

      ++v3;
      v2 = *(v1 + 240);
    }

    while (v3 < (*(v1 + 248) - v2) >> 3);
  }
}

void *fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ReplaceFstMatcher(void *a1)
{
  *a1 = &unk_287C087F0;
  v4 = (a1 + 5);
  std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ReplaceFstMatcher(void *a1)
{
  *a1 = &unk_287C087F0;
  v4 = (a1 + 5);
  std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return MEMORY[0x26D6787B0](a1, 0x10E1C40A5BE1C0BLL);
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Type(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (v2 == 4)
  {
    return 4;
  }

  if (v2 == 1)
  {
    v6 = 0x10000000;
  }

  else
  {
    v6 = 0x40000000;
  }

  v7 = *(a1 + 16);
  if (v2 == 1)
  {
    v8 = 805306368;
  }

  else
  {
    v8 = 3221225472;
  }

  v9 = (*(*v7 + 56))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 72);
  }

  v10 = 0x80000000;
  if (v2 == 1)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(uint64_t result, int a2)
{
  if (*(result + 64) != a2)
  {
    v2 = result;
    *(result + 64) = a2;
    *(result + 80) = *(*(*(*(result + 24) + 168) + 104) + 16 * a2);
    v3 = *(result + 92);
    if (v3 == -1)
    {
      *(result + 76) = 1;
    }

    else
    {
      v4 = *(*(result + 40) + 8 * *(result + 88));
      *(result + 32) = v4;
      result = (*(**(*v4 + 8) + 32))(*(*v4 + 8), v3);
      v4[18] = v3;
      *(v2 + 124) = *(v2 + 64);
      *(v2 + 78) = 0;
    }
  }

  return result;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(uint64_t a1, uint64_t a2)
{
  *(a1 + 68) = a2;
  if (a2 == -1)
  {
    v3 = 0;
  }

  else
  {
    if (a2)
    {
      v13 = *(a1 + 32);

      return fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(v13, a2);
    }

    v3 = 1;
    *(a1 + 77) = 1;
  }

  *(a1 + 78) = fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(*(a1 + 24), (a1 + 80), 0, 15);
  v4 = *(a1 + 32);
  v5 = (v4 + 24);
  *(v4 + 48) = v4 + 24;
  *(v4 + 56) = 0;
  if (*(v4 + 8))
  {
    v8 = *(v4 + 16);
    while (1)
    {
      *(v4 + 48) = v8;
      if (v8 == v5)
      {
        break;
      }

      v9 = (*(**(*v4 + 8) + 40))(*(*v4 + 8), *(v8 + 7));
      v10 = *(v4 + 48);
      if (v9)
      {
        if (v10 == v5)
        {
          break;
        }

        *(v4 + 76) = 0;
        goto LABEL_7;
      }

      v11 = v10[1];
      if (v11)
      {
        do
        {
          v8 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v8 = v10[2];
          v12 = *v8 == v10;
          v10 = v8;
        }

        while (!v12);
      }
    }
  }

  v6 = (*(**(*v4 + 8) + 40))(*(*v4 + 8), 0xFFFFFFFFLL);
  *(v4 + 76) = v6 ^ 1;
  if (v6)
  {
LABEL_7:
    v7 = 1;
  }

  else
  {
    v7 = v3 | *(a1 + 78);
  }

  return v7 & 1;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(uint64_t a1)
{
  if (*(a1 + 77) & 1) != 0 || (*(a1 + 78))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(*(a1 + 32) + 76);
  }

  return v1 & 1;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(uint64_t a1)
{
  if (*(a1 + 77) == 1)
  {
    return a1 + 112;
  }

  if (*(a1 + 78) == 1)
  {
    v2 = a1 + 96;
    fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeFinalArc(*(a1 + 24), (a1 + 80), (a1 + 96), 15);
  }

  else
  {
    v3 = *(a1 + 32);
    if (*(v3 + 56) == 1)
    {
      v4 = v3 + 15;
    }

    else
    {
      v4 = (*(**(*v3 + 8) + 56))(*(*v3 + 8));
    }

    v2 = a1 + 96;
    fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComputeArc(*(a1 + 24), a1 + 80, v4, a1 + 96, 15);
  }

  return v2;
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Next(uint64_t result)
{
  if (*(result + 77) == 1)
  {
    *(result + 77) = 0;
  }

  else if (*(result + 78) == 1)
  {
    *(result + 78) = 0;
  }

  else
  {
    return fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Next(*(result + 32));
  }

  return result;
}

void std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::resize(void *result, unint64_t a2)
{
  v3 = result[1];
  v4 = (v3 - *result) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 8 * a2;
      while (v3 != v6)
      {
        std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::reset[abi:ne200100](--v3, 0);
      }

      result[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__append(result, v5);
  }
}

uint64_t std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MultiEpsMatcher(result);

    JUMPOUT(0x26D6787B0);
  }

  return result;
}

void fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddMultiEpsLabel(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = a1 + 16;

    fst::CompactSet<int,-1>::Insert(v2, a2);
  }

  else
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    LogMessage::LogMessage(&v5, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "MultiEpsMatcher: Bad multi-eps label: 0", 39);
    LogMessage::~LogMessage(&v5);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_26B512C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MultiEpsMatcher(uint64_t a1)
{
  if (*(a1 + 12) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[1];
      v2[1] = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      v4 = *v2;
      *v2 = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      MEMORY[0x26D6787B0](v2, 0x60C405C6656D0);
    }
  }

  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MultiEpsMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  if (!a5)
  {
    operator new();
  }

  *a1 = a5;
  *(a1 + 8) = a4;
  *(a1 + 12) = a6;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  if (a3 == 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  if (a3 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  *(a1 + 60) = v7;
  *(a1 + 64) = v8;
  *(a1 + 68) = *fst::TropicalWeightTpl<float>::One(a1, a2);
  *(a1 + 72) = -1;
  return a1;
}

uint64_t *fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Matcher(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 72))(a2, 0);
  *a1 = v5;
  v6 = (*(*v5 + 128))(v5, a3);
  a1[1] = v6;
  if (!v6)
  {
    operator new();
  }

  return a1;
}

void sub_26B5130EC(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v2, 0x10E1C4054F459C6);
  v4 = v1[1];
  v1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *fst::CompactSet<int,-1>::Insert(uint64_t a1, int a2)
{
  v9 = a2;
  result = std::__tree<int>::__emplace_unique_key_args<int,int const&>(a1, &v9, &v9);
  v4 = *(a1 + 24);
  v5 = v9;
  if (v4 == -1 || v9 < v4)
  {
    *(a1 + 24) = v9;
  }

  v7 = *(a1 + 28);
  if (v7 == -1 || v7 < v5)
  {
    *(a1 + 28) = v5;
  }

  return result;
}

void std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReplaceFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_287C087F0;
  v5 = (*(**(a2 + 16) + 72))(*(a2 + 16), a3);
  *(a1 + 16) = v5;
  v6 = *(v5 + 8);
  *(a1 + 40) = 0;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = -1;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 77) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = -1;
  v8 = *fst::TropicalWeightTpl<float>::One(v5, v7);
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 120) = v8;
  *(a1 + 124) = -1;
  if (*(a1 + 72) == 2)
  {
    *(a1 + 112) = 0xFFFFFFFF00000000;
  }

  fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitMatchers(a1);
  return a1;
}

void sub_26B513358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::unique_ptr<fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = *(v3 + 8);
  *(v3 + 8) = 0;
  if (v5)
  {
    fst::ReplaceFstMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReplaceFstMatcher();
  }

  _Unwind_Resume(a1);
}

uint64_t fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Find(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 24);
  *(a1 + 48) = a1 + 24;
  *(a1 + 56) = 0;
  if (a2 == -1)
  {
    if (*(a1 + 8))
    {
      v6 = *(a1 + 16);
      while (1)
      {
        *(a1 + 48) = v6;
        if (v6 == v3)
        {
          break;
        }

        v7 = (*(**(*a1 + 8) + 40))(*(*a1 + 8), *(v6 + 7));
        v8 = *(a1 + 48);
        if (v7)
        {
          if (v8 == v3)
          {
            break;
          }

          result = 1;
          goto LABEL_11;
        }

        v9 = v8[1];
        if (v9)
        {
          do
          {
            v6 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v6 = v8[2];
            v10 = *v6 == v8;
            v8 = v6;
          }

          while (!v10);
        }
      }
    }

    v4 = *(**(*a1 + 8) + 40);
    goto LABEL_10;
  }

  if (!a2)
  {
    v4 = *(**(*a1 + 8) + 40);
LABEL_10:
    result = v4();
    goto LABEL_11;
  }

  if ((*(a1 + 8) & 2) == 0 || v3 == fst::CompactSet<int,-1>::Find(a1 + 16, a2))
  {
    v4 = *(**(*a1 + 8) + 40);
    goto LABEL_10;
  }

  result = 1;
  *(a1 + 56) = 1;
LABEL_11:
  *(a1 + 76) = result ^ 1;
  return result;
}

uint64_t fst::CompactSet<int,-1>::Find(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  v3 = v2 != -1 && v2 <= a2;
  if (!v3 || *(a1 + 28) < a2)
  {
    return a1 + 8;
  }

  v7 = *(a1 + 8);
  v5 = a1 + 8;
  v6 = v7;
  if (!v7)
  {
    return v5;
  }

  v4 = v5;
  do
  {
    if (*(v6 + 28) >= a2)
    {
      v4 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < a2));
  }

  while (v6);
  if (v4 == v5 || *(v4 + 28) > a2)
  {
    return v5;
  }

  return v4;
}

uint64_t fst::MultiEpsMatcher<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Next(uint64_t result)
{
  v1 = result;
  if (*(result + 56))
  {
    v2 = 1;
LABEL_19:
    v1[76] = v2;
  }

  else
  {
    (*(**(*result + 8) + 64))(*(*result + 8));
    result = (*(**(*v1 + 8) + 48))(*(*v1 + 8));
    v1[76] = result;
    if (result)
    {
      v3 = v1 + 24;
      v4 = *(v1 + 6);
      if (v4 != (v1 + 24))
      {
        v5 = v4[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v4[2];
            v7 = *v6 == v4;
            v4 = v6;
          }

          while (!v7);
        }

        while (1)
        {
          *(v1 + 6) = v6;
          if (v6 == v3)
          {
            goto LABEL_18;
          }

          result = (*(**(*v1 + 8) + 40))(*(*v1 + 8), *(v6 + 7));
          v8 = *(v1 + 6);
          if (result)
          {
            break;
          }

          v9 = v8[1];
          if (v9)
          {
            do
            {
              v6 = v9;
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            do
            {
              v6 = v8[2];
              v7 = *v6 == v8;
              v8 = v6;
            }

            while (!v7);
          }
        }

        if (v8 == v3)
        {
LABEL_18:
          result = (*(**(*v1 + 8) + 40))(*(*v1 + 8), 0xFFFFFFFFLL);
          v2 = result ^ 1;
          goto LABEL_19;
        }

        v1[76] = 0;
      }
    }
  }

  return result;
}

void fst::internal::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CyclicDependencies(uint64_t a1)
{
  v2[0] = *(a1 + 264);
  v2[1] = 0x100000002;
  v2[2] = 0;
  fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceUtil(v1, (a1 + 240), a1 + 200, v2);
}

void sub_26B513768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~ReplaceUtil(va);
  _Unwind_Resume(a1);
}

void fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceUtil(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = a4[1];
  v8 = a4[2];
  *(a1 + 24) = 0u;
  *(a1 + 4) = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  std::vector<int>::vector[abi:ne200100]((a1 + 72), (a2[1] - *a2) >> 3);
  std::unordered_map<int,int>::unordered_map(a1 + 96, a3);
  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFst((a1 + 136));
}

void sub_26B5138DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v7 = v3[31];
  if (v7)
  {
    v3[32] = v7;
    operator delete(v7);
  }

  std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__destroy_vector::operator()[abi:ne200100](va);
  v8 = v3[23];
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    v3[21] = v9;
    operator delete(v9);
  }

  v3[17] = &unk_287C06060;
  v10 = v3[19];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((v3 + 12));
  v11 = *(v4 + 48);
  if (v11)
  {
    v3[10] = v11;
    operator delete(v11);
  }

  v12 = v3[6];
  if (v12)
  {
    v3[7] = v12;
    operator delete(v12);
  }

  v13 = *v4;
  if (*v4)
  {
    v3[4] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void std::vector<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::allocator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const,std::default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const>>>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_26B513ACC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 24;
    do
    {
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v5, *(v5 + 8));
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v5 - 24, *(v5 - 16));
      v6 = v5 - 56;
      v5 -= 80;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats::~ReplaceStats(uint64_t a1)
{
  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1 + 56, *(a1 + 64));
  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1 + 32, *(a1 + 40));
  return a1;
}

void fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::GetDependencies(uint64_t a1, int a2)
{
  v2 = a2;
  if (((*(*(a1 + 144) + 64) - *(*(a1 + 144) + 56)) >> 3) < 1)
  {
    *(a1 + 216) = a2;
    v4 = (a1 + 216);
    if (!a2)
    {
LABEL_7:
      if (*(a1 + 32) != *(a1 + 24))
      {
        fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddState(a1 + 136);
      }

      fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetStart(a1 + 136, *(a1 + 4));
      v39 = 0;
      v6 = *(a1 + 24);
      v5 = *(a1 + 32);
      if (v5 == v6)
      {
LABEL_49:
        *&v27 = a1 + 160;
        *(&v27 + 1) = a1 + 184;
        *&v28 = 0;
        *(&v28 + 1) = a1 + 208;
        v30 = 0u;
        v31 = 0u;
        fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1 + 136, &v27, 0);
      }

      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = *(v6 + 8 * v8);
        if (!v9)
        {
          goto LABEL_48;
        }

        v36 = 0;
        v37 = 0;
        v38 = 0;
        (*(*v9 + 112))(v9, &v36);
LABEL_13:
        if (!v36)
        {
          break;
        }

        if (!(*(*v36 + 16))(v36))
        {
          if (v36)
          {
            v10 = (*(*v36 + 24))();
            goto LABEL_19;
          }

LABEL_18:
          v10 = v38;
LABEL_19:
          if (*v4 == 1)
          {
            ++*(*(a1 + 224) + 80 * v39);
            v11 = (*(*v9 + 24))(&v35, v9, v10);
            v13 = fst::TropicalWeightTpl<float>::Zero(v11, v12);
            *&v27 = v35;
            LODWORD(v32) = *v13;
            if (v35 != *&v32)
            {
              v14 = *(a1 + 224) + 80 * v39;
              ++*(v14 + 4);
            }
          }

          v29 = 0;
          v27 = 0u;
          v28 = 0u;
          (*(*v9 + 120))(v9, v10, &v27);
          while (1)
          {
            if (v27)
            {
              if ((*(*v27 + 16))(v27))
              {
                if (v27)
                {
                  (*(*v27 + 8))(v27);
                }

                else
                {
LABEL_40:
                  if (*(&v28 + 1))
                  {
                    --**(&v28 + 1);
                  }
                }

                if (v36)
                {
                  (*(*v36 + 32))(v36);
                }

                else
                {
                  ++v38;
                }

                goto LABEL_13;
              }
            }

            else if (v29 >= v28)
            {
              goto LABEL_40;
            }

            if (*v4 == 1)
            {
              v15 = *(a1 + 224) + 80 * v39;
              ++*(v15 + 8);
            }

            if (v27)
            {
              v16 = (*(*v27 + 24))(v27);
            }

            else
            {
              v16 = *(&v27 + 1) + 16 * v29;
            }

            v17 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 96), (v16 + 4));
            if (v17)
            {
              v35 = *(v17 + 5);
              v19 = v39;
              v20 = *(v16 + 4);
              v21 = *fst::TropicalWeightTpl<float>::One(v17, v18);
              LODWORD(v32) = v20;
              HIDWORD(v32) = v20;
              v33 = v21;
              v34 = v35;
              fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1 + 136);
              fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(*(a1 + 144), v19, &v32);
              if (*v4 == 1)
              {
                v22 = *(a1 + 224);
                ++*(v22 + 80 * v39 + 16);
                v23 = v22 + 80 * SLODWORD(v35);
                ++*(v23 + 24);
                v32 = &v39;
                v24 = std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v23 + 32, &v39, &std::piecewise_construct, &v32);
                ++v24[5];
                v25 = *(a1 + 224) + 80 * v39;
                v32 = &v35;
                v26 = std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v25 + 56, &v35, &std::piecewise_construct, &v32);
                ++v26[5];
              }
            }

            if (v27)
            {
              (*(*v27 + 32))(v27);
            }

            else
            {
              ++v29;
            }
          }
        }

        if (v36)
        {
          (*(*v36 + 8))();
        }

LABEL_47:
        v7 = v39;
        v6 = *(a1 + 24);
        v5 = *(a1 + 32);
LABEL_48:
        v39 = ++v7;
        v8 = v7;
        if (v7 >= ((v5 - v6) >> 3))
        {
          goto LABEL_49;
        }
      }

      if (v38 >= v37)
      {
        goto LABEL_47;
      }

      goto LABEL_18;
    }

LABEL_6:
    std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::reserve((a1 + 224), (*(a1 + 32) - *(a1 + 24)) >> 3);
    goto LABEL_7;
  }

  if (a2)
  {
    v4 = (a1 + 216);
    if ((*(a1 + 216) & 1) == 0)
    {
      fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteStates(a1 + 136);
      std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__base_destruct_at_end[abi:ne200100](a1 + 224, *(a1 + 224));
      *(a1 + 208) = 0;
      *(a1 + 256) = *(a1 + 248);
      *(a1 + 216) = v2;
      goto LABEL_6;
    }
  }
}

uint64_t *std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>(result, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_26B514440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      std::allocator_traits<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::construct[abi:ne200100]<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,0>(a1, a4, v7);
      v7 += 80;
      a4 = v14 + 80;
      v14 += 80;
    }

    while (v7 != a3);
    v12 = 1;
    if (a2 != a3)
    {
      v8 = a2 + 32;
      do
      {
        std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v8 + 24, *(v8 + 32));
        std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v8, *(v8 + 8));
        v9 = v8 + 48;
        v8 += 80;
      }

      while (v9 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator_traits<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::construct[abi:ne200100]<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a3 + 32);
  v4 = (a3 + 40);
  v5 = *(a3 + 40);
  *(a2 + 40) = v5;
  v6 = a2 + 40;
  v7 = *(a3 + 48);
  *(a2 + 48) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a3 + 32) = v4;
    *v4 = 0;
    *(a3 + 48) = 0;
  }

  else
  {
    *(a2 + 32) = v6;
  }

  *(a2 + 56) = *(a3 + 56);
  v8 = (a3 + 64);
  v9 = *(a3 + 64);
  *(a2 + 64) = v9;
  v10 = a2 + 64;
  v11 = *(a3 + 72);
  *(a2 + 72) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(a3 + 56) = v8;
    *v8 = 0;
    *(a3 + 72) = 0;
  }

  else
  {
    *(a2 + 56) = v10;
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>,std::reverse_iterator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>,std::reverse_iterator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>,std::reverse_iterator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>,std::reverse_iterator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3 - 24;
    do
    {
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v6, *(v6 + 8));
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(v6 - 24, *(v6 - 16));
      v7 = v6 - 56;
      v6 -= 80;
    }

    while (v7 != a5);
  }
}

uint64_t std::__split_buffer<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats> &>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(i - 24, *(i - 16));
    std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(i - 48, *(i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__emplace_back_slow_path<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  std::allocator_traits<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::construct[abi:ne200100]<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,0>(a1, 80 * v2, a2);
  v15 = 80 * v2 + 80;
  v7 = a1[1];
  v8 = 80 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>,fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats> &>::~__split_buffer(&v13);
  return v12;
}

void sub_26B514840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~ReplaceUtil(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(a1 + 24);
        v2 = *(a1 + 32);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = *(a1 + 248);
  if (v6)
  {
    *(a1 + 256) = v6;
    operator delete(v6);
  }

  v14 = (a1 + 224);
  std::vector<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats,std::allocator<fst::ReplaceUtil<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReplaceStats>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v7 = *(a1 + 184);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    *(a1 + 168) = v8;
    operator delete(v8);
  }

  *(a1 + 136) = &unk_287C06060;
  v9 = *(a1 + 152);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 96);
  v10 = *(a1 + 72);
  if (v10)
  {
    *(a1 + 80) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(a1 + 56) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 24);
  if (v12)
  {
    *(a1 + 32) = v12;
    operator delete(v12);
  }

  return a1;
}

void fst::RmEpsilon<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>(void *a1, void *a2, uint64_t a3)
{
  v64 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1) == -1)
  {
    return;
  }

  v6 = (*(*a1 + 136))(a1);
  LOBYTE(v35[0]) = 0;
  std::vector<BOOL>::vector(&v34, v6, v35);
  v7 = (*(*a1 + 16))(a1);
  v8 = 0;
  *(v34 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
LABEL_3:
  if (v8 < (*(*a1 + 136))(a1))
  {
    v37 = 0;
    *v35 = 0u;
    v36 = 0u;
    (*(*a1 + 120))(a1, v8, v35);
    while (1)
    {
      if (v35[0])
      {
        if ((*(*v35[0] + 16))(v35[0]))
        {
          if (v35[0])
          {
            (*(*v35[0] + 8))();
            goto LABEL_20;
          }

LABEL_18:
          if (*(&v36 + 1))
          {
            --**(&v36 + 1);
          }

LABEL_20:
          ++v8;
          goto LABEL_3;
        }

        if (v35[0])
        {
          v9 = (*(*v35[0] + 24))();
          goto LABEL_11;
        }
      }

      else if (v37 >= v36)
      {
        goto LABEL_18;
      }

      v9 = v35[1] + 16 * v37;
LABEL_11:
      if (*v9)
      {
        *(v34 + ((*(v9 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v9 + 3);
      }

      if (v35[0])
      {
        (*(*v35[0] + 32))(v35[0]);
      }

      else
      {
        ++v37;
      }
    }
  }

  memset(&v33, 0, sizeof(v33));
  v10 = (*(*a1 + 136))(a1);
  std::vector<int>::reserve(&v33, v10);
  if (((*(*a1 + 56))(a1, 0x4000000000, 0) & 0x4000000000) == 0)
  {
    if (((*(*a1 + 56))(a1, 0x800000000, 0) & 0x800000000) == 0)
    {
      v32 = 0;
      v59 = 0;
      p_p = 0;
      v61 = 0;
      v35[1] = 0;
      *&v36 = 0;
      v35[0] = &v59;
      *(&v36 + 1) = &v32;
      v41 = 0u;
      v42 = 0u;
      fst::DfsVisit<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, v35, 0);
    }

    v35[0] = 0;
    v35[1] = 0;
    *&v36 = 0;
    LOBYTE(__p) = 0;
    v59 = v35;
    p_p = &__p;
    v61 = 0;
    fst::DfsVisit<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::TopOrderVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, &v59, 0);
  }

  for (i = 0; ; ++i)
  {
    v12 = (*(*a1 + 136))(a1);
    if (i >= v12)
    {
      break;
    }

    LODWORD(v35[0]) = i;
    std::vector<int>::push_back[abi:ne200100](&v33.__begin_, v35);
  }

  v35[0] = a1;
  v35[1] = a2;
  *&v36 = a1;
  v14 = *a3;
  *(&v36 + 1) = a2;
  v37 = v14;
  v38 = *(a3 + 16);
  v39 = *(a3 + 20);
  v40 = 1;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  a2[1] = *a2;
  v47 = 0u;
  v48 = 0u;
  v49 = 1065353216;
  v58 = 0;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  while (v33.__begin_ != v33.__end_)
  {
    v15 = *--v33.__end_;
    if (((*(v34 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      if (*(a3 + 21))
      {
        continue;
      }

      v12 = fst::TropicalWeightTpl<float>::Zero(v12, v13);
      LODWORD(v59) = *(a3 + 24);
      LODWORD(__p) = *v12;
      if (*&v59 != *&__p || *(a3 + 28) != -1)
      {
        continue;
      }
    }

    fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Expand(v35, v15);
    LODWORD(v59) = v57;
    (*(*a1 + 160))(a1, v15, &v59);
    (*(*a1 + 216))(a1, v15);
    v12 = (*(*a1 + 232))(a1, v15, (*(&v55 + 1) - v55) >> 4);
    v16 = *(&v55 + 1);
    v17 = v55;
    while (v17 != v16)
    {
      v12 = (*(*a1 + 184))(a1, v15, v16 - 16);
      v17 = v55;
      v16 = *(&v55 + 1) - 16;
      *(&v55 + 1) -= 16;
    }
  }

  if ((*(a3 + 21) & 1) != 0 || (v20 = fst::TropicalWeightTpl<float>::Zero(v12, v13), LODWORD(v59) = *(a3 + 24), LODWORD(__p) = *v20, *&v59 != *&__p) || *(a3 + 28) != -1)
  {
    for (j = 0; j < (*(*a1 + 136))(a1); ++j)
    {
      if (((*(v34 + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) >> j) & 1) == 0)
      {
        (*(*a1 + 216))(a1, j);
      }
    }
  }

  if (v46[20] == 1)
  {
    (*(*a1 + 168))(a1, 4, 4);
  }

  v21 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  v22 = fst::RmEpsilonProperties(v21, 0);
  v23 = (*(*a1 + 168))(a1, v22, 0xFFFFFFFF0007);
  v25 = fst::TropicalWeightTpl<float>::Zero(v23, v24);
  v27 = *(a3 + 24);
  *&v59 = v27;
  LODWORD(__p) = *v25;
  v28 = *(a3 + 28);
  if (v27 != *&__p || v28 != -1)
  {
    v59 = __PAIR64__(v28, LODWORD(v27));
    v61 = 0;
    v62 = 981467136;
    v63 = 0;
    fst::Prune<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,(void *)0>(a1, &v59);
  }

  if (*(a3 + 21) == 1)
  {
    v30 = fst::TropicalWeightTpl<float>::Zero(v25, v26);
    LODWORD(v59) = *(a3 + 24);
    LODWORD(__p) = *v30;
    if (*&v59 == *&__p && *(a3 + 28) == -1)
    {
      fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1);
    }
  }

  fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::~RmEpsilonState(v35);
  if (v33.__begin_)
  {
    v33.__end_ = v33.__begin_;
    operator delete(v33.__begin_);
  }

  if (v34)
  {
    operator delete(v34);
  }
}

void sub_26B5154F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v30 = *(v28 + 344);
  *(v28 + 344) = 0;
  if (v30)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](v27 + 16, v30);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08888;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  v4 = (a1 + 48);
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0;
  v5 = (*(*a2 + 56))(a2, 0x4E00000000, 0);
  if ((v5 & 0x4000000000) == 0 && (*(*a2 + 16))(a2) != -1)
  {
    if ((v5 & 0x800000000) == 0)
    {
      if ((v5 & 0x200000000) == 0)
      {
        v9 = 0;
        __p[0] = v4;
        __p[1] = 0;
        __p[2] = 0;
        __p[3] = &v9;
        v7 = 0u;
        v8 = 0u;
        fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a2, __p, 0);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_26B516158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  LogMessage::~LogMessage(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    MEMORY[0x26D6787B0](v30, 0x60C405BB7FD7CLL);
  }

  if (a10)
  {
    MEMORY[0x26D6787B0](a10, 0xC400A2AC0F1);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~SccVisitor(&a23);
  v33 = *v29;
  if (*v29)
  {
    *(v28 + 56) = v33;
    operator delete(v33);
  }

  std::vector<std::unique_ptr<fst::QueueBase<int>>>::__destroy_vector::operator()[abi:ne200100](&a23);
  v34 = *v31;
  *v31 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

void sub_26B516B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a3, 4 * v12);
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  (*(*a1 + 112))(a1, &v32);
  while (1)
  {
    result = v32;
    if (!v32)
    {
      if (v34 >= v33)
      {
        return result;
      }

LABEL_11:
      v15 = v34;
      goto LABEL_12;
    }

    v14 = (*(*v32 + 16))(v32);
    result = v32;
    if (v14)
    {
      break;
    }

    if (!v32)
    {
      goto LABEL_11;
    }

    v15 = (*(*v32 + 24))();
LABEL_12:
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    (*(*a1 + 120))(a1, v15, &v29);
    while (1)
    {
      v18 = v29;
      if (!v29)
      {
        if (v31 >= v30)
        {
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      v19 = (*(*v29 + 16))(v29);
      v18 = v29;
      if (v19)
      {
        break;
      }

      if (v29)
      {
        v18 = (*(*v29 + 24))();
        v20 = v18;
        goto LABEL_19;
      }

LABEL_18:
      v20 = *(&v29 + 1) + 16 * v31;
LABEL_19:
      if (*v20)
      {
        goto LABEL_29;
      }

      v21 = *(*a2 + 4 * v15);
      if (v21 == *(*a2 + 4 * *(v20 + 12)))
      {
        v22 = *a3;
        if (!a4 || (v23 = fst::TropicalWeightTpl<float>::One(v18, v16), v24 = (v20 + 8), v18 = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(a4, (v20 + 8), v23), (v18 & 1) != 0))
        {
          v25 = 1;
          goto LABEL_24;
        }

        if ((v22[v21] | 2) == 2)
        {
          v18 = fst::TropicalWeightTpl<float>::Zero(v18, v16);
          v36 = *v24;
          v35 = *v18;
          if (v36 == v35 || (v18 = fst::TropicalWeightTpl<float>::One(v18, v16), v36 = *v24, v35 = *v18, v36 == v35))
          {
            v25 = 2;
          }

          else
          {
            v25 = 3;
          }

LABEL_24:
          v22[v21] = v25;
        }

        *a5 = 0;
      }

      v26 = fst::TropicalWeightTpl<float>::Zero(v18, v16);
      v36 = *(v20 + 8);
      v35 = *v26;
      v17.n128_f32[0] = v36;
      if (v36 != v35)
      {
        v27 = fst::TropicalWeightTpl<float>::One(v26, v16);
        v36 = *(v20 + 8);
        v35 = *v27;
        v17.n128_f32[0] = v36;
        if (v36 != v35)
        {
          *a6 = 0;
        }
      }

LABEL_29:
      if (v29)
      {
        (*(*v29 + 32))(v29, v17);
      }

      else
      {
        ++v31;
      }
    }

    if (v29)
    {
      (*(*v29 + 8))();
      goto LABEL_41;
    }

LABEL_39:
    if (*(&v30 + 1))
    {
      --**(&v30 + 1);
    }

LABEL_41:
    if (v32)
    {
      (*(*v32 + 32))(v32);
    }

    else
    {
      ++v34;
    }
  }

  if (v32)
  {
    return (*(*v32 + 8))();
  }

  return result;
}

void sub_26B517024(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<fst::QueueBase<int>>>::resize(void *result, unint64_t a2)
{
  v3 = result[1];
  v4 = (v3 - *result) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      result[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<fst::QueueBase<int>>>::__append(result, v5);
  }
}

void fst::AutoQueue<int>::~AutoQueue(uint64_t a1)
{
  fst::AutoQueue<int>::~AutoQueue(a1);

  JUMPOUT(0x26D6787B0);
}

void *fst::StateOrderQueue<int>::~StateOrderQueue(void *a1)
{
  *a1 = &unk_287C08900;
  v2 = a1[3];
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void fst::StateOrderQueue<int>::~StateOrderQueue(void *a1)
{
  *a1 = &unk_287C08900;
  v1 = a1[3];
  if (v1)
  {
    operator delete(v1);
  }

  JUMPOUT(0x26D6787B0);
}

void fst::StateOrderQueue<int>::Enqueue(uint64_t result, int a2)
{
  v3 = *(result + 16);
  v4 = *(result + 20);
  if (v3 > v4)
  {
    *(result + 20) = a2;
LABEL_3:
    *(result + 16) = a2;
    goto LABEL_7;
  }

  if (v4 >= a2)
  {
    if (v3 > a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(result + 20) = a2;
  }

LABEL_7:
  v5 = a2;
  while (*(result + 32) <= v5)
  {
    v6 = 0;
    std::vector<BOOL>::push_back(result + 24, &v6);
  }

  *(*(result + 24) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
}

uint64_t fst::StateOrderQueue<int>::Dequeue(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 20);
  v3 = *(result + 16);
  *(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v3);
  if (v3 <= v2)
  {
    v4 = v2 - v3 + 1;
    v5 = v3 + 1;
    do
    {
      if ((*(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        break;
      }

      ++v3;
      *(result + 16) = v5++;
      --v4;
    }

    while (v4);
  }

  return result;
}

double fst::StateOrderQueue<int>::Clear(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 16);
  if (v2 <= v1)
  {
    v3 = *(a1 + 24);
    v4 = v1 - v2 + 1;
    do
    {
      *(v3 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v2);
      ++v2;
      --v4;
    }

    while (v4);
  }

  result = NAN;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  return result;
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08968;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v2[0] = a1 + 24;
  v2[1] = &v3;
  v2[2] = 0;
  fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::TopOrderVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a2, v2, 0);
}

void sub_26B517620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](v23 + 16, a21);
  }

  v25 = v21[6];
  if (v25)
  {
    v21[7] = v25;
    operator delete(v25);
  }

  v26 = *v22;
  if (*v22)
  {
    v21[4] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B517EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v3, __x);
  }
}

void fst::TopOrderQueue<int>::~TopOrderQueue(void *a1)
{
  fst::TopOrderQueue<int>::~TopOrderQueue(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::TopOrderQueue<int>::Enqueue(uint64_t result, int a2)
{
  v2 = *(result + 16);
  v3 = *(result + 20);
  v4 = *(result + 24);
  v5 = *(v4 + 4 * a2);
  if (v2 <= v3)
  {
    if (v5 > v3)
    {
      *(result + 20) = v5;
      goto LABEL_7;
    }

    if (v5 >= v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(result + 20) = v5;
  }

  *(result + 16) = v5;
LABEL_7:
  *(*(result + 48) + 4 * *(v4 + 4 * a2)) = a2;
  return result;
}

uint64_t fst::TopOrderQueue<int>::Dequeue(uint64_t result)
{
  v1 = *(result + 48);
  *(v1 + 4 * *(result + 16)) = -1;
  v2 = *(result + 20);
  v3 = *(result + 16);
  if (v3 <= v2)
  {
    v4 = (v1 + 4 * v3);
    v5 = v2 - v3 + 1;
    v6 = v3 + 1;
    do
    {
      v7 = *v4++;
      if (v7 != -1)
      {
        break;
      }

      *(result + 16) = v6++;
      --v5;
    }

    while (v5);
  }

  return result;
}

double fst::TopOrderQueue<int>::Clear(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= *(a1 + 20))
  {
    v2 = v1 - 1;
    v3 = (*(a1 + 48) + 4 * v1);
    do
    {
      *v3++ = -1;
      ++v2;
    }

    while (v2 < *(a1 + 20));
  }

  result = NAN;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  return result;
}

void fst::TopOrderVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::FinishVisit(uint64_t **a1)
{
  if (*a1[1])
  {
    (*a1)[1] = **a1;
    v3 = a1 + 2;
    v2 = a1[2];
    if (v2[1] == *v2)
    {
      goto LABEL_13;
    }

    v4 = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](*a1, &fst::kNoStateId);
      ++v4;
      v2 = a1[2];
      v5 = (v2[1] - *v2) >> 2;
    }

    while (v5 > v4);
    if (!v5)
    {
LABEL_13:
      *v3 = 0;
      goto LABEL_14;
    }

    v6 = 0;
    v7 = **a1;
    v8 = (v2[1] - 4);
    do
    {
      v9 = *v8--;
      *(v7 + 4 * v9) = v6++;
    }

    while (v5 != v6);
  }

  else
  {
    v2 = a1[2];
  }

  a1[2] = 0;
  v10 = a1 + 2;
  if (!v2)
  {
    return;
  }

  v3 = v10;
LABEL_14:

  std::default_delete<std::vector<int>>::operator()[abi:ne200100](v3, v2);
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_26B548380)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_26B548370)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_26B548380)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_26B548370)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *fst::TopOrderQueue<int>::~TopOrderQueue(void *a1)
{
  *a1 = &unk_287C08968;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void *fst::LifoQueue<int>::~LifoQueue(void *a1)
{
  *a1 = &unk_287C089D0;
  std::deque<int>::~deque[abi:ne200100](a1 + 2);
  return a1;
}

void fst::LifoQueue<int>::~LifoQueue(void *a1)
{
  *a1 = &unk_287C089D0;
  std::deque<int>::~deque[abi:ne200100](a1 + 2);

  JUMPOUT(0x26D6787B0);
}

void fst::LifoQueue<int>::Clear(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[7] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[4];
      v2 = (a1[3] + 8);
      a1[3] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 1024;
  }

  a1[6] = v6;
}

uint64_t std::deque<int>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::~__split_buffer(a1);
}

void std::deque<int>::push_front(uint64_t result, _DWORD *a2)
{
  v4 = *(result + 32);
  if (!v4)
  {
    std::deque<int>::__add_front_capacity(result);
    v4 = *(result + 32);
  }

  v5 = *(result + 8);
  v6 = (v5 + 8 * (v4 >> 10));
  if (*(result + 16) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 4 * (v4 & 0x3FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 4) = *a2;
  v8 = *(result + 40) + 1;
  *(result + 32) = v4 - 1;
  *(result + 40) = v8;
}

void std::deque<int>::__add_front_capacity(const void **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 7) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0x400)
  {
    v6 = a1[3];
    v7 = *a1;
    v8 = v6 - *a1;
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v10[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v9);
  }

  a1[4] = (v5 + 1024);
  v10[0] = *(v2 - 8);
  a1[2] = (v2 - 8);
  std::__split_buffer<int *>::emplace_front<int *&>(a1, v10);
}

void sub_26B5189A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<int *>::emplace_front<int *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<int *>::emplace_back<int *>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<int>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

uint64_t *std::vector<fst::QueueType>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_26B518E14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(uint64_t a1, float *a2, float *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 == *a3)
  {
    return 0;
  }

  if (v3 == -INFINITY || v4 >= -INFINITY && v4 <= -INFINITY)
  {
    v4 = *fst::TropicalWeightTpl<float>::NoWeight(a1, a2);
    v3 = *a2;
  }

  else if (v3 < v4)
  {
    v4 = *a2;
  }

  return v4 == v3;
}

uint64_t fst::TopOrderQueue<int>::TopOrderQueue(uint64_t a1, const void **a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08968;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 24), *a2, a2[1], (a2[1] - *a2) >> 2);
  std::vector<int>::vector[abi:ne200100]((a1 + 48), (a2[1] - *a2) >> 2, &fst::kNoStateId);
  return a1;
}

void sub_26B518F74(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<fst::QueueBase<int>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<fst::QueueBase<int>>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<fst::QueueBase<int>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<fst::QueueBase<int>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<fst::QueueBase<int>>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void fst::ShortestFirstQueue<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>,false>::~ShortestFirstQueue(void *a1)
{
  fst::ShortestFirstQueue<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>,false>::~ShortestFirstQueue(a1);

  JUMPOUT(0x26D6787B0);
}

void *fst::ShortestFirstQueue<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>,false>::~ShortestFirstQueue(void *a1)
{
  *a1 = &unk_287C08A38;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[5] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t fst::Heap<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>>::Insert(uint64_t a1, int *a2)
{
  v4 = *(a1 + 88);
  v5 = (a1 + 88);
  v8 = *(a1 + 64);
  v6 = (a1 + 64);
  v7 = v8;
  if (v4 >= (*(v5 - 2) - v8) >> 2)
  {
    std::vector<int>::push_back[abi:ne200100](v6, a2);
    std::vector<int>::push_back[abi:ne200100]((a1 + 16), v5);
    std::vector<int>::push_back[abi:ne200100]((a1 + 40), v5);
    LODWORD(v9) = *(a1 + 88);
  }

  else
  {
    *(v7 + 4 * v4) = *a2;
    v9 = *(a1 + 88);
    *(*(a1 + 16) + 4 * *(*(a1 + 40) + 4 * v9)) = v9;
  }

  *(a1 + 88) = v9 + 1;

  return fst::Heap<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>>::Insert(a1, a2, v9);
}

uint64_t fst::Heap<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>>::Insert(uint64_t a1, int *a2, int a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = *(a1 + 64);
    while (1)
    {
      v7 = v3 - 1;
      v8 = (v3 - 1) >> 1;
      if (fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(*(a1 + 8), (**a1 + 4 * *(v6 + 4 * v8)), (**a1 + 4 * *a2)))
      {
        break;
      }

      v9 = *(a1 + 40);
      v10 = *(v9 + 4 * v3);
      v11 = *(v9 + 4 * v8);
      *(v9 + 4 * v3) = v11;
      v12 = *(a1 + 16);
      *(v12 + 4 * v11) = v3;
      *(v9 + 4 * v8) = v10;
      *(v12 + 4 * v10) = v8;
      v6 = *(a1 + 64);
      LODWORD(v10) = *(v6 + 4 * v3);
      *(v6 + 4 * v3) = *(v6 + 4 * v8);
      *(v6 + 4 * v8) = v10;
      v3 = v7 >> 1;
      if (v7 <= 1)
      {
        return *(*(a1 + 40) + 4 * v8);
      }
    }
  }

  v8 = v3;
  return *(*(a1 + 40) + 4 * v8);
}

uint64_t fst::Heap<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>>::Pop(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *v1;
  v3 = *(a1 + 88) - 1;
  v4 = *(a1 + 40);
  v5 = *v4;
  v6 = v4[v3];
  *v4 = v6;
  v7 = *(a1 + 16);
  *(v7 + 4 * v6) = 0;
  v4[v3] = v5;
  *(v7 + 4 * v5) = v3;
  LODWORD(v4) = *v1;
  *v1 = v1[v3];
  v1[v3] = v4;
  --*(a1 + 88);
  fst::Heap<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>>::Heapify(a1, 0);
  return v2;
}

BOOL fst::Heap<int,fst::internal::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>>::Heapify(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = (2 * a2) | 1u;
    if (v4 >= *(v3 + 88) || !(result = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(*(v3 + 8), (**v3 + 4 * *(*(v3 + 64) + 4 * v4)), (**v3 + 4 * *(*(v3 + 64) + 4 * a2)))))
    {
      v4 = a2;
    }

    v5 = 2 * a2 + 2;
    if (v5 < *(v3 + 88))
    {
      result = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(*(v3 + 8), (**v3 + 4 * *(*(v3 + 64) + 4 * v5)), (**v3 + 4 * *(*(v3 + 64) + 4 * v4)));
      if (result)
      {
        v4 = v5;
      }

      else
      {
        v4 = v4;
      }
    }

    if (v4 == a2)
    {
      break;
    }

    v6 = *(v3 + 40);
    v7 = *(v6 + 4 * a2);
    v8 = *(v6 + 4 * v4);
    *(v6 + 4 * a2) = v8;
    v9 = *(v3 + 16);
    *(v9 + 4 * v8) = a2;
    *(v6 + 4 * v4) = v7;
    *(v9 + 4 * v7) = v4;
    v10 = *(v3 + 64);
    LODWORD(v7) = *(v10 + 4 * a2);
    *(v10 + 4 * a2) = *(v10 + 4 * v4);
    *(v10 + 4 * v4) = v7;
    a2 = v4;
  }

  return result;
}

void *fst::FifoQueue<int>::~FifoQueue(void *a1)
{
  *a1 = &unk_287C08AA0;
  std::deque<int>::~deque[abi:ne200100](a1 + 2);
  return a1;
}

void fst::FifoQueue<int>::~FifoQueue(void *a1)
{
  *a1 = &unk_287C08AA0;
  std::deque<int>::~deque[abi:ne200100](a1 + 2);

  JUMPOUT(0x26D6787B0);
}

void fst::FifoQueue<int>::Clear(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[7] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[4];
      v2 = (a1[3] + 8);
      a1[3] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 1024;
  }

  a1[6] = v6;
}

uint64_t std::deque<int>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *fst::SccQueue<int,fst::QueueBase<int>>::~SccQueue(void *a1)
{
  *a1 = &unk_287C08B08;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return a1;
}

void fst::SccQueue<int,fst::QueueBase<int>>::~SccQueue(void *a1)
{
  *a1 = &unk_287C08B08;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Head(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 <= *(a1 + 36))
  {
    while (1)
    {
      v4 = *(**(a1 + 16) + 8 * v2);
      if (v4)
      {
        v5 = (*(*v4 + 48))(v4);
        v3 = *(a1 + 32);
        if (v5)
        {
          goto LABEL_10;
        }

        v6 = v3;
        if (*(**(a1 + 16) + 8 * v3))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v6 = v2;
        v3 = v2;
      }

      v7 = *(a1 + 40);
      if (v6 < (*(a1 + 48) - v7) >> 2 && *(v7 + 4 * v6) != -1)
      {
        goto LABEL_11;
      }

LABEL_10:
      v2 = v3 + 1;
      *(a1 + 32) = v3 + 1;
      if (v3++ >= *(a1 + 36))
      {
        goto LABEL_11;
      }
    }
  }

  v3 = *(a1 + 32);
LABEL_11:
  v9 = *(**(a1 + 16) + 8 * v3);
  if (!v9)
  {
    return *(*(a1 + 40) + 4 * v3);
  }

  v10 = *(*v9 + 16);

  return v10();
}

void fst::SccQueue<int,fst::QueueBase<int>>::Enqueue(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = **(a1 + 24);
  v7 = *(v6 + 4 * a2);
  if (v4 > v5)
  {
    *(a1 + 36) = v7;
LABEL_3:
    *(a1 + 32) = v7;
    goto LABEL_7;
  }

  if (v7 <= v5)
  {
    if (v7 < v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 36) = v7;
  }

LABEL_7:
  v8 = *(v6 + 4 * a2);
  v9 = *(**(a1 + 16) + 8 * v8);
  if (v9)
  {
    v10 = *(*v9 + 24);

    v10();
  }

  else
  {
    for (i = *(a1 + 40); v8 >= (*(a1 + 48) - i) >> 2; v8 = *(**(a1 + 24) + 4 * a2))
    {
      std::vector<int>::push_back[abi:ne200100]((a1 + 40), &fst::kNoStateId);
      i = *(a1 + 40);
    }

    *(i + 4 * v8) = a2;
  }
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Dequeue(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(**(a1 + 16) + 8 * v2);
  if (result)
  {
    return (*(*result + 32))();
  }

  v5 = a1 + 40;
  v4 = *(a1 + 40);
  if (v2 < (*(v5 + 8) - v4) >> 2)
  {
    *(v4 + 4 * v2) = -1;
  }

  return result;
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Update(uint64_t a1, int a2)
{
  result = *(**(a1 + 16) + 8 * *(**(a1 + 24) + 4 * a2));
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Empty(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 32);
  if (v2 < v1)
  {
    return 0;
  }

  if (v2 > v1)
  {
    return 1;
  }

  v4 = *(**(a1 + 16) + 8 * v2);
  if (v4)
  {
    return (*(*v4 + 48))(*(**(a1 + 16) + 8 * v2));
  }

  v5 = *(a1 + 40);
  if (v2 >= (*(a1 + 48) - v5) >> 2)
  {
    return 1;
  }

  return *(v5 + 4 * v2) == -1;
}

double fst::SccQueue<int,fst::QueueBase<int>>::Clear(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 <= *(a1 + 36))
  {
    do
    {
      v3 = *(**(a1 + 16) + 8 * v2);
      if (v3)
      {
        (*(*v3 + 56))(v3);
      }

      else
      {
        v4 = *(a1 + 40);
        if (v2 < (*(a1 + 48) - v4) >> 2)
        {
          *(v4 + 4 * v2) = -1;
        }
      }
    }

    while (v2++ < *(a1 + 36));
  }

  result = NAN;
  *(a1 + 32) = 0xFFFFFFFF00000000;
  return result;
}

void std::vector<std::unique_ptr<fst::QueueBase<int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<fst::QueueBase<int>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<fst::QueueBase<int>>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_26B51A564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

void sub_26B51AE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

int *fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Expand(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v11 = a2;
  *(a1 + 312) = *fst::TropicalWeightTpl<float>::Zero(a1, a2);
  *(a1 + 296) = *(a1 + 288);
  result = fst::internal::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ShortestDistance((a1 + 16), v2);
  if ((*(a1 + 156) & 1) == 0)
  {
    std::deque<int>::push_back((a1 + 208), &v11);
    for (i = *(a1 + 248); i; i = *(a1 + 248))
    {
      v6 = i - 1;
      v7 = *(*(*(a1 + 216) + (((*(a1 + 240) + v6) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 240) + v6) & 0x3FF));
      *(a1 + 248) = v6;
      std::deque<int>::__maybe_remove_back_spare[abi:ne200100]((a1 + 208), 1);
      while (*(a1 + 264) <= v7)
      {
        LOBYTE(v10) = 0;
        std::vector<BOOL>::push_back(a1 + 256, &v10);
      }

      v8 = *(a1 + 256);
      v9 = *(v8 + 8 * (v7 >> 6));
      if ((v9 & (1 << v7)) == 0)
      {
        *(v8 + 8 * (v7 >> 6)) = v9 | (1 << v7);
        operator new();
      }
    }

    for (result = *(a1 + 280); result; result = *(a1 + 280))
    {
      *(*(a1 + 256) + ((result[2] >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << result[2]);
      *(a1 + 280) = *result;
      operator delete(result);
    }

    ++*(a1 + 316);
  }

  return result;
}

void sub_26B51B454(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _DWORD *a18)
{
  if (a15)
  {
    (*(*a15 + 8))(a15, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a18)
  {
    --*a18;
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void *fst::MemoryPool<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void std::deque<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::emplace_back<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **&>(a1, &v9);
}

void sub_26B51B890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t fst::internal::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::EpsilonArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 16))(*a1) == -1)
  {
    result = (*(**a1 + 56))(*a1, 4, 0);
    if (!result)
    {
      return result;
    }

    v89 = a1 + 140;
LABEL_115:
    *v89 = 1;
    return result;
  }

  v4 = (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = a1[8];
    a1[12] = 0;
  }

  if (a2 == -1)
  {
    v4 = (*(**a1 + 16))();
    a2 = v4;
  }

  v6 = a2;
  while (1)
  {
    v7 = a1[1];
    if (v6 < (*(v7 + 8) - *v7) >> 2)
    {
      break;
    }

    v8 = fst::TropicalWeightTpl<float>::Zero(v4, v5);
    v9 = *(v7 + 8);
    if (v9 >= *(v7 + 16))
    {
      v10 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v7, v8);
    }

    else
    {
      *v9 = *v8;
      v10 = v9 + 1;
    }

    *(v7 + 8) = v10;
    v12 = *fst::TropicalWeightTpl<float>::Zero(v10, v8);
    LODWORD(v90) = v12;
    v13 = a1[6];
    if (v13 >= a1[7])
    {
      v14 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v90);
    }

    else
    {
      *v13 = v12;
      v14 = (v13 + 1);
    }

    a1[6] = v14;
    v15 = *fst::TropicalWeightTpl<float>::Zero(v14, v11);
    LODWORD(v90) = v15;
    v16 = a1[9];
    if (v16 >= a1[10])
    {
      v17 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v90);
    }

    else
    {
      *v16 = v15;
      v17 = (v16 + 1);
    }

    a1[9] = v17;
    LOBYTE(v90) = 0;
    std::vector<BOOL>::push_back((a1 + 11), &v90);
  }

  if (*(a1 + 33) == 1)
  {
    for (i = a1[14]; v6 >= (a1[15] - i) >> 2; i = a1[14])
    {
      std::vector<int>::push_back[abi:ne200100](a1 + 14, &fst::kNoStateId);
    }

    *(i + 4 * v6) = *(a1 + 34);
  }

  v19 = fst::TropicalWeightTpl<float>::One(v4, v5);
  *(*a1[1] + 4 * v6) = *v19;
  v20 = a1[5];
  v22 = fst::TropicalWeightTpl<float>::One(v19, v21);
  *(v20 + 4 * v6) = *v22;
  v23 = a1[8];
  *(v23 + 4 * v6) = *fst::TropicalWeightTpl<float>::One(v22, v24);
  *(a1[11] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v6);
  v89 = a1 + 140;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_114;
    }

    v26 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    v27 = (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v29 = a1[1];
      if (v26 < ((*(v29 + 8) - *v29) >> 2))
      {
        break;
      }

      v30 = fst::TropicalWeightTpl<float>::Zero(v27, v28);
      v31 = *(v29 + 8);
      if (v31 >= *(v29 + 16))
      {
        v32 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v29, v30);
      }

      else
      {
        *v31 = *v30;
        v32 = v31 + 1;
      }

      *(v29 + 8) = v32;
      v34 = *fst::TropicalWeightTpl<float>::Zero(v32, v30);
      LODWORD(v90) = v34;
      v35 = a1[6];
      if (v35 >= a1[7])
      {
        v36 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v90);
      }

      else
      {
        *v35 = v34;
        v36 = (v35 + 1);
      }

      a1[6] = v36;
      v37 = *fst::TropicalWeightTpl<float>::Zero(v36, v33);
      LODWORD(v90) = v37;
      v38 = a1[9];
      if (v38 >= a1[10])
      {
        v39 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v90);
      }

      else
      {
        *v38 = v37;
        v39 = (v38 + 1);
      }

      a1[9] = v39;
      LOBYTE(v90) = 0;
      std::vector<BOOL>::push_back((a1 + 11), &v90);
    }

    if (*(a1 + 32) == 1)
    {
      v40 = (*(**a1 + 24))(&v93);
      v27 = fst::TropicalWeightTpl<float>::Zero(v40, v41);
      LODWORD(v90) = v93;
      HIDWORD(v93) = *v27;
      v25.n128_u32[0] = v93;
      if (*&v93 != *(&v93 + 1))
      {
LABEL_114:
        ++*(a1 + 34);
        result = (*(**a1 + 56))(*a1, 4, 0, v25);
        if (!result)
        {
          return result;
        }

        goto LABEL_115;
      }
    }

    *(a1[11] + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v26);
    v42 = a1[8];
    v43 = *(v42 + 4 * v26);
    *(v42 + 4 * v26) = *fst::TropicalWeightTpl<float>::Zero(v27, v28);
    v44 = *a1;
    v90 = 0u;
    v91 = 0u;
    v92 = 0;
    (*(*v44 + 120))(v44, v26, &v90);
    while (1)
    {
      v46 = v90;
      if (!v90)
      {
        if (v92 >= v91)
        {
LABEL_104:
          v87 = 1;
          goto LABEL_105;
        }

LABEL_44:
        v47 = *(&v90 + 1) + 16 * v92;
        goto LABEL_45;
      }

      if ((*(*v90 + 16))(v90))
      {
        goto LABEL_104;
      }

      v46 = v90;
      if (!v90)
      {
        goto LABEL_44;
      }

      v46 = (*(*v90 + 24))(v90);
      v47 = v46;
LABEL_45:
      if (!*v47)
      {
        v48 = a1[1];
        v49 = (v48 + 8);
        for (j = *(v47 + 12); j >= (*(v48 + 8) - *v48) >> 2; j = *(v47 + 12))
        {
          v51 = fst::TropicalWeightTpl<float>::Zero(v46, v45);
          v52 = *v49;
          if (*v49 >= *(v48 + 16))
          {
            v53 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v48, v51);
          }

          else
          {
            *v52 = *v51;
            v53 = v52 + 1;
          }

          *v49 = v53;
          v55 = *fst::TropicalWeightTpl<float>::Zero(v53, v51);
          HIDWORD(v93) = v55;
          v56 = a1[6];
          if (v56 >= a1[7])
          {
            v57 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v93 + 1);
          }

          else
          {
            *v56 = v55;
            v57 = (v56 + 1);
          }

          a1[6] = v57;
          v58 = *fst::TropicalWeightTpl<float>::Zero(v57, v54);
          HIDWORD(v93) = v58;
          v59 = a1[9];
          if (v59 >= a1[10])
          {
            v60 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v93 + 1);
          }

          else
          {
            *v59 = v58;
            v60 = (v59 + 1);
          }

          a1[9] = v60;
          BYTE4(v93) = 0;
          std::vector<BOOL>::push_back((a1 + 11), &v93 + 4);
          v48 = a1[1];
          v49 = (v48 + 8);
        }

        if (*(a1 + 33) == 1)
        {
          while (1)
          {
            v61 = a1[14];
            LODWORD(j) = *(v47 + 12);
            if (j < ((a1[15] - v61) >> 2))
            {
              break;
            }

            std::vector<int>::push_back[abi:ne200100](a1 + 14, &fst::kNoStateId);
          }

          if (*(v61 + 4 * j) != *(a1 + 34))
          {
            v62 = fst::TropicalWeightTpl<float>::Zero(v46, v45);
            v63 = *(v47 + 12);
            *(*a1[1] + 4 * v63) = *v62;
            v64 = a1[5];
            v66 = fst::TropicalWeightTpl<float>::Zero(v62, v65);
            *(v64 + 4 * v63) = *v66;
            v67 = *(v47 + 12);
            v68 = a1[8];
            v46 = fst::TropicalWeightTpl<float>::Zero(v66, v69);
            *(v68 + 4 * v67) = *v46;
            v70 = *(v47 + 12);
            *(a1[11] + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v70);
            *(a1[14] + 4 * v70) = *(a1 + 34);
            LODWORD(j) = *(v47 + 12);
          }
        }

        v71 = *a1[1];
        v72 = a1[5];
        v73 = a1[8];
        if (v43 == -INFINITY || (v74 = *(v47 + 8), v74 >= -INFINITY) && v74 <= -INFINITY)
        {
          v46 = fst::TropicalWeightTpl<float>::NoWeight(v46, v45);
          v75 = *v46;
        }

        else
        {
          v76 = v74 == INFINITY || v43 == INFINITY;
          v77 = v43 + v74;
          v75 = v76 ? INFINITY : v77;
        }

        v78 = *(v71 + 4 * j);
        if (v78 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
        {
          v46 = fst::TropicalWeightTpl<float>::NoWeight(v46, v45);
          v79 = *v46;
          v78 = *(v71 + 4 * j);
        }

        else
        {
          v79 = v78 >= v75 ? v75 : *(v71 + 4 * j);
        }

        v80 = *(a1 + 7);
        v81 = v79 + v80;
        v82 = v80 + v78;
        if (v78 > v81 || v79 > v82)
        {
          break;
        }
      }

LABEL_101:
      if (v90)
      {
        (*(*v90 + 32))(v90);
      }

      else
      {
        ++v92;
      }
    }

    v84 = *(v72 + 4 * j);
    if (v84 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
    {
      v46 = fst::TropicalWeightTpl<float>::NoWeight(v46, v45);
      v84 = *v46;
    }

    else if (v84 >= v75)
    {
      v84 = v75;
    }

    *(v72 + 4 * j) = v84;
    *(v71 + 4 * j) = v84;
    v85 = *(v73 + 4 * j);
    if (v85 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
    {
      v85 = *fst::TropicalWeightTpl<float>::NoWeight(v46, v45);
    }

    else if (v85 >= v75)
    {
      v85 = v75;
    }

    *(v73 + 4 * j) = v85;
    if (*(v71 + 4 * j) != -INFINITY && v85 != -INFINITY)
    {
      v86 = **(a1[2] + 16);
      if ((*(a1[11] + ((*(v47 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v47 + 12)))
      {
        (*(v86 + 40))();
      }

      else
      {
        (*(v86 + 24))();
        *(a1[11] + ((*(v47 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v47 + 12);
      }

      goto LABEL_101;
    }

    v87 = 0;
    *v89 = 1;
LABEL_105:
    result = v90;
    if (v90)
    {
      result = (*(*v90 + 8))(v90);
    }

    else if (*(&v91 + 1))
    {
      --**(&v91 + 1);
    }
  }

  while ((v87 & 1) != 0);
  return result;
}

void sub_26B51C428(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

int *std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(int **a1, _DWORD *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 + 1;
  if ((v2 + 1) >> 62)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 1 > v3)
  {
    v3 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v7);
  }

  __p = 0;
  v11 = (4 * v2);
  *v11 = *a2;
  v12 = 4 * v2 + 4;
  v13 = 0;
  std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_26B51C584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int **std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(int **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 2;
  v3 = v2 + 1;
  if ((v2 + 1) >> 62)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 1 > v3)
  {
    v3 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v7);
  }

  __p = 0;
  v11 = (4 * v2);
  *v11 = *a2;
  v12 = 4 * v2 + 4;
  v13 = 0;
  std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_26B51C70C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::deque<int>::push_back(unint64_t *result, _DWORD *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<int>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<int>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<int *>::emplace_back<int *>(a1, &v9);
}

void sub_26B51C954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>,std::__unordered_map_hasher<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::__hash_value_type<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>,fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::ElementHash,fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::ElementEqual,true>,std::__unordered_map_equal<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::__hash_value_type<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>,fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::ElementEqual,fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::ElementHash,true>,std::allocator<std::__hash_value_type<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>>>::__emplace_unique_key_args<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::pair<fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::Element,std::pair<int,unsigned long>>>(void *a1, int *a2, uint64_t a3)
{
  v4 = a2[1];
  v3 = a2[2];
  v5 = *a2;
  v6 = v3 + 7853 * *a2 + 7867 * v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v3 + 7853 * v5 + 7867 * v4;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (*(v11 + 4) != v5 || *(v11 + 20) != __PAIR64__(v3, v4))
  {
    goto LABEL_18;
  }

  return v11;
}

void fst::Prune<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,(void *)0>(uint64_t a1, uint64_t a2)
{
  v93[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 136))(a1);
  if (v4 < 1)
  {
    return;
  }

  v6 = v4;
  v7 = fst::TropicalWeightTpl<float>::Zero(v4, v5);
  std::vector<fst::TropicalWeightTpl<float>>::vector[abi:ne200100](v88, v6, v7);
  __p = 0;
  v86 = 0;
  v87 = 0;
  if (!*(a2 + 16))
  {
    std::vector<fst::TropicalWeightTpl<float>>::reserve(&__p, v6);
    fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, &__p, 1, *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if (*(a2 + 4))
  {
    v9 = *(a2 + 16);
    v10 = *(v9 + 8);
    v11 = *v8;
    if ((*(*a1 + 16))(a1) < ((v10 - v11) >> 2))
    {
      v12 = (*(*a1 + 16))(a1);
      v13 = v12;
      v14 = *v8;
      v16 = fst::TropicalWeightTpl<float>::Zero(v12, v15);
      LODWORD(v89[0]) = *(v14 + 4 * v13);
      LODWORD(v83) = *v16;
      if (*v89 != *&v83)
      {
        v89[0] = v88;
        v89[1] = v8;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        memset(v93, 0, 28);
        LOBYTE(v82[0]) = 0;
        std::vector<BOOL>::vector(&v83, v6, v82);
        v79 = -1;
        std::vector<unsigned long>::vector[abi:ne200100](v82, v6, &v79);
        v79 = 0;
        v80 = 0;
        v81 = 0;
        LODWORD(v72) = (*(*a1 + 176))(a1);
        std::vector<int>::push_back[abi:ne200100](&v79, &v72);
        v17 = (*(*a1 + 16))(a1);
        v77 = v17;
        if (*(a2 + 28) == 1)
        {
          v19 = *a2;
          if (*a2 == -INFINITY || (v20 = *(*v8 + 4 * v17), v20 >= -INFINITY) && v20 <= -INFINITY)
          {
LABEL_21:
            v21 = *fst::TropicalWeightTpl<float>::NoWeight(v17, v18);
LABEL_27:
            v76 = v21;
            v23 = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(&v78, &v76, (*v8 + 4 * v77));
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v26 = fst::TropicalWeightTpl<float>::One(v23, v24);
              *(v88[0] + v77) = *v26;
              v27 = fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Insert(v89, &v77);
              *(v82[0] + v77) = v27;
              v25 = 1;
            }

            while (LODWORD(v93[3]))
            {
              v77 = *v93[0];
              fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Pop(v89);
              v28 = v77;
              v29 = v77;
              *(v82[0] + v77) = -1;
              *(v83 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
              v30 = v88[0];
              v31 = (*(*a1 + 24))(&v75, a1);
              v33 = v30[v29];
              if (v33 == -INFINITY || *&v75 >= -INFINITY && *&v75 <= -INFINITY)
              {
                v34 = *fst::TropicalWeightTpl<float>::NoWeight(v31, v32);
              }

              else
              {
                v35 = *&v75 == INFINITY || v33 == INFINITY;
                v34 = v33 + *&v75;
                if (v35)
                {
                  v34 = INFINITY;
                }
              }

              *&v72 = v34;
              v36 = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(&v78, &v76, &v72);
              if (v36)
              {
                v38 = v77;
                LODWORD(v72) = *fst::TropicalWeightTpl<float>::Zero(v36, v37);
                (*(*a1 + 160))(a1, v38, &v72);
              }

              (*(*a1 + 272))(a1, v77, &v75);
              while (!(*(*v75 + 16))(v75))
              {
                v39 = (*(*v75 + 24))(v75);
                v72 = *v39;
                v41 = *(v39 + 2);
                v73 = v41;
                v42 = v39[3];
                v74 = v42;
                v43 = *(v88[0] + v77);
                if (v43 == -INFINITY || v41 >= -INFINITY && v41 <= -INFINITY)
                {
                  v39 = fst::TropicalWeightTpl<float>::NoWeight(v39, v40);
                  v44 = *v39;
                  v42 = v74;
                }

                else
                {
                  v45 = v43 == INFINITY || v41 == INFINITY;
                  v46 = v41 + v43;
                  if (v45)
                  {
                    v44 = INFINITY;
                  }

                  else
                  {
                    v44 = v46;
                  }
                }

                if (v42 >= ((*(v9 + 8) - *v8) >> 2))
                {
                  v47 = fst::TropicalWeightTpl<float>::Zero(v39, v40);
                }

                else
                {
                  v47 = (*v8 + 4 * v42);
                }

                if (v44 == -INFINITY || (v48 = *v47, *v47 >= -INFINITY) && *v47 <= -INFINITY)
                {
                  v49 = *fst::TropicalWeightTpl<float>::NoWeight(v47, v40);
                }

                else
                {
                  v50 = v48 == INFINITY || v44 == INFINITY;
                  v49 = v44 + v48;
                  if (v50)
                  {
                    v49 = INFINITY;
                  }
                }

                v71 = v49;
                v51 = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(&v78, &v76, &v71);
                if (v51)
                {
                  v74 = *v79;
                  (*(*v75 + 80))(v75, &v72);
                }

                else
                {
                  v53 = v88[0];
                  v54 = *(v88[0] + v77);
                  if (v54 == -INFINITY || v73 >= -INFINITY && v73 <= -INFINITY)
                  {
                    v55 = *fst::TropicalWeightTpl<float>::NoWeight(v51, v52);
                    v53 = v88[0];
                  }

                  else
                  {
                    v56 = v73 == INFINITY || v54 == INFINITY;
                    v55 = v54 + v73;
                    if (v56)
                    {
                      v55 = INFINITY;
                    }
                  }

                  v70 = v55;
                  v57 = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(&v78, &v70, &v53[v74]);
                  if (v57)
                  {
                    v59 = v88[0];
                    v60 = *(v88[0] + v77);
                    if (v60 == -INFINITY || v73 >= -INFINITY && v73 <= -INFINITY)
                    {
                      v61 = *fst::TropicalWeightTpl<float>::NoWeight(v57, v58);
                      v59 = v88[0];
                    }

                    else
                    {
                      v63 = v73 == INFINITY || v60 == INFINITY;
                      v61 = v60 + v73;
                      if (v63)
                      {
                        v61 = INFINITY;
                      }
                    }

                    v62 = v74;
                    v59[v74] = v61;
                  }

                  else
                  {
                    v62 = v74;
                  }

                  if (((*(v83 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
                  {
                    v64 = *(a2 + 4);
                    if (v64 == -1 || v25 < v64)
                    {
                      v65 = *(v82[0] + v62);
                      if (v65 == -1)
                      {
                        v66 = fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Insert(v89, &v74);
                        *(v82[0] + v74) = v66;
                        ++v25;
                      }

                      else
                      {
                        fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Update(v89, v65, &v74);
                      }
                    }
                  }
                }

                (*(*v75 + 32))(v75);
              }

              if (v75)
              {
                (*(*v75 + 8))(v75);
              }
            }

            LODWORD(v72) = 0;
            v67 = v84;
            if (v84)
            {
              v68 = 0;
              v69 = 0;
              do
              {
                if (((*(v83 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
                {
                  std::vector<int>::push_back[abi:ne200100](&v79, &v72);
                  v68 = v72;
                  v67 = v84;
                }

                LODWORD(v72) = ++v68;
                v69 = v68;
              }

              while (v67 > v68);
            }

            (*(*a1 + 192))(a1, &v79);
            if (v79)
            {
              v80 = v79;
              operator delete(v79);
            }

            if (v82[0])
            {
              v82[1] = v82[0];
              operator delete(v82[0]);
            }

            if (v83)
            {
              operator delete(v83);
            }

            if (v93[0])
            {
              v93[1] = v93[0];
              operator delete(v93[0]);
            }

            if (*(&v91 + 1))
            {
              *&v92 = *(&v91 + 1);
              operator delete(*(&v91 + 1));
            }

            if (v90)
            {
              *(&v90 + 1) = v90;
              operator delete(v90);
            }

            goto LABEL_8;
          }
        }

        else
        {
          v19 = *(*v8 + 4 * v17);
          if (v19 == -INFINITY)
          {
            goto LABEL_21;
          }

          v20 = *a2;
          if (*a2 >= -INFINITY && *a2 <= -INFINITY)
          {
            goto LABEL_21;
          }
        }

        v22 = v20 == INFINITY || v19 == INFINITY;
        v21 = v19 + v20;
        if (v22)
        {
          v21 = INFINITY;
        }

        goto LABEL_27;
      }
    }
  }

  (*(*a1 + 200))(a1);
LABEL_8:
  if (__p)
  {
    v86 = __p;
    operator delete(__p);
  }

  if (v88[0])
  {
    v88[1] = v88[0];
    operator delete(v88[0]);
  }
}

void sub_26B51D614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::~Heap(va);
  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void std::vector<fst::TropicalWeightTpl<float>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_26B51D79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, char **a2, char a3, float a4)
{
  if (a3)
  {
    fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFst(&v4);
  }

  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(v5, a1, a2);
}

void sub_26B51D998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Insert(uint64_t a1, int *a2)
{
  v4 = *(a1 + 96);
  v5 = (a1 + 96);
  v8 = *(a1 + 72);
  v6 = (a1 + 72);
  v7 = v8;
  if (v4 >= (*(v5 - 2) - v8) >> 2)
  {
    std::vector<int>::push_back[abi:ne200100](v6, a2);
    std::vector<int>::push_back[abi:ne200100]((a1 + 24), v5);
    std::vector<int>::push_back[abi:ne200100]((a1 + 48), v5);
    LODWORD(v9) = *(a1 + 96);
  }

  else
  {
    *(v7 + 4 * v4) = *a2;
    v9 = *(a1 + 96);
    *(*(a1 + 24) + 4 * *(*(a1 + 48) + 4 * v9)) = v9;
  }

  *(a1 + 96) = v9 + 1;

  return fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Insert(a1, a2, v9);
}

uint64_t fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Pop(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *v1;
  v3 = *(a1 + 96) - 1;
  v4 = *(a1 + 48);
  v5 = *v4;
  v6 = v4[v3];
  *v4 = v6;
  v7 = *(a1 + 24);
  *(v7 + 4 * v6) = 0;
  v4[v3] = v5;
  *(v7 + 4 * v5) = v3;
  LODWORD(v4) = *v1;
  *v1 = v1[v3];
  v1[v3] = v4;
  --*(a1 + 96);
  fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Heapify(a1, 0);
  return v2;
}

uint64_t fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Update(uint64_t a1, int a2, unsigned int *a3)
{
  v5 = *(*(a1 + 24) + 4 * a2);
  v6 = fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(a1, *a3, *(*(a1 + 72) + 4 * ((v5 - 1) / 2)));
  *(*(a1 + 72) + 4 * v5) = *a3;
  if (v6)
  {

    return fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Insert(a1, a3, v5);
  }

  else
  {

    return fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Heapify(a1, v5);
  }
}

void *fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::~Heap(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::vector<fst::TropicalWeightTpl<float>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_26B51DD20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = *a3;
  v9 = *(a3 + 16);
  v10 = *(a3 + 20);
  v11 = 0;
  *v12 = 0u;
  *v13 = 0u;
  v14 = 0u;
  *v15 = 0u;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  a2[1] = *a2;
  v4 = fst::internal::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ShortestDistance(v8, *(a3 + 12));
  if (v17[20] == 1)
  {
    a2[1] = *a2;
    v6 = fst::TropicalWeightTpl<float>::NoWeight(v4, v5);
    std::vector<fst::TropicalWeightTpl<float>>::resize(a2, 1uLL, v6, v7);
  }

  if (__p[1])
  {
    *v17 = __p[1];
    operator delete(__p[1]);
  }

  if (v15[0])
  {
    operator delete(v15[0]);
  }

  if (v13[1])
  {
    *&v14 = v13[1];
    operator delete(v13[1]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

uint64_t fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 200))(a2);
  v6 = (*(*a1 + 96))(a1);
  (*(*a2 + 256))(a2, v6);
  v7 = (*(*a1 + 104))(a1);
  (*(*a2 + 264))(a2, v7);
  if ((*(*a1 + 56))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1);
    (*(*a2 + 224))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 16))(a1);
  v59 = 0;
  if (a3)
  {
LABEL_31:
    v10 = (*(*a2 + 176))(a2);
    v23 = 1;
    goto LABEL_32;
  }

  *&v50 = 0;
  DWORD2(v50) = 0;
  LODWORD(v51) = 0;
  (*(*a1 + 112))(a1, &v50);
  v10 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v50)
    {
      v11 = (*(*v50 + 16))(v50);
      v12 = v50;
      if (v11)
      {
        goto LABEL_24;
      }

      if (v50)
      {
        v13 = (*(*v50 + 24))();
        goto LABEL_11;
      }
    }

    else if (v51 >= SDWORD2(v50))
    {
      goto LABEL_26;
    }

    v13 = v51;
LABEL_11:
    v14 = (*(*a1 + 24))(&v58, a1, v13);
    v16 = fst::TropicalWeightTpl<float>::Zero(v14, v15);
    *&v47 = v58;
    LODWORD(v55) = *v16;
    v17 = 2 * (v10 != -1);
    if (v10 == -1)
    {
      v18 = v13;
    }

    else
    {
      v18 = -1;
    }

    if (*&v47 == *&v55)
    {
      v17 = 4;
    }

    v10 = v58 == *&v55 ? v10 : v18;
    if ((v17 | 4) != 4)
    {
      break;
    }

    if (v50)
    {
      (*(*v50 + 32))(v50);
    }

    else
    {
      LODWORD(v51) = v51 + 1;
    }
  }

  v12 = v50;
LABEL_24:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_26:
  if (v10 == -1)
  {
    goto LABEL_31;
  }

  v19 = (*(*a1 + 24))(&v55, a1, v10);
  v21 = fst::TropicalWeightTpl<float>::One(v19, v20);
  LODWORD(v50) = v55;
  v22.n128_u32[0] = v55;
  if (*&v55 != *v21)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v50 = &v55;
    *&v51 = 0;
    *(&v51 + 1) = &v59;
    v53 = 0u;
    v54 = 0u;
    fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, &v50, 0);
  }

  v23 = 0;
LABEL_32:
  v47 = 0;
  v48 = 0;
  LODWORD(v49) = 0;
  (*(*a1 + 112))(a1, &v47, v22);
  while (2)
  {
    if (!v47)
    {
      if (v49 >= v48)
      {
        goto LABEL_84;
      }

      goto LABEL_38;
    }

    if (!(*(*v47 + 16))(v47))
    {
      if (v47)
      {
        v24 = (*(*v47 + 24))();
LABEL_39:
        v25 = v24 + v23;
        while (1)
        {
          v26 = (*(*a2 + 136))(a2);
          if (v26 > v25)
          {
            break;
          }

          (*(*a2 + 176))(a2);
        }

        if (v24 == v9)
        {
          LODWORD(v50) = *fst::TropicalWeightTpl<float>::One(v26, v27);
          (*(*a2 + 160))(a2, (v24 + v23), &v50);
        }

        v28 = (*(*a1 + 24))(&v58, a1, v24);
        v30 = fst::TropicalWeightTpl<float>::Zero(v28, v29);
        *&v50 = v58;
        LODWORD(v55) = *v30;
        v31 = v23 ^ 1;
        if (v58 == *&v55)
        {
          v31 = 1;
        }

        if ((v31 & 1) == 0)
        {
          *&v50 = 0;
          *(&v50 + 2) = v58;
          HIDWORD(v50) = v24 + v23;
          (*(*a2 + 184))(a2, 0, &v50);
        }

        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        (*(*a1 + 120))(a1, v24, &v50);
LABEL_49:
        if (v50)
        {
          if ((*(*v50 + 16))(v50))
          {
            if (v50)
            {
              (*(*v50 + 8))();
              goto LABEL_79;
            }

LABEL_77:
            if (*(&v51 + 1))
            {
              --**(&v51 + 1);
            }

LABEL_79:
            if (v47)
            {
              (*(*v47 + 32))(v47);
            }

            else
            {
              LODWORD(v49) = v49 + 1;
            }

            continue;
          }

          if (v50)
          {
            v32 = (*(*v50 + 24))();
LABEL_55:
            v33 = (*(v32 + 12) + v23);
            v34 = *(v32 + 8);
            if (v33 == v10)
            {
              v35 = v23;
            }

            else
            {
              v35 = 1;
            }

            if ((v35 & 1) == 0)
            {
              v36 = (*(*a1 + 24))(&v55, a1, v10);
              if (*&v55 == -INFINITY || v34 >= -INFINITY && v34 <= -INFINITY)
              {
                LODWORD(v34) = *fst::TropicalWeightTpl<float>::NoWeight(v36, v37);
              }

              else if (*&v55 == INFINITY || v34 == INFINITY)
              {
                v34 = INFINITY;
              }

              else
              {
                v34 = v34 + *&v55;
              }
            }

            v55 = *v32;
            v56 = __PAIR64__(v25, LODWORD(v34));
            while (1)
            {
              v39 = (*(*a2 + 136))(a2);
              v40 = *a2;
              if (v39 > v33)
              {
                break;
              }

              (*(v40 + 176))(a2);
            }

            (*(v40 + 184))(a2, v33, &v55);
            if (v50)
            {
              (*(*v50 + 32))(v50);
            }

            else
            {
              ++v52;
            }

            goto LABEL_49;
          }
        }

        else if (v52 >= v51)
        {
          goto LABEL_77;
        }

        v32 = *(&v50 + 1) + 16 * v52;
        goto LABEL_55;
      }

LABEL_38:
      v24 = v49;
      goto LABEL_39;
    }

    break;
  }

  if (v47)
  {
    (*(*v47 + 8))();
  }

LABEL_84:
  (*(*a2 + 152))(a2, v10);
  if (v10 == v9)
  {
    v41 = v23;
  }

  else
  {
    v41 = 1;
  }

  if ((v41 & 1) == 0)
  {
    (*(*a1 + 24))(&v47, a1, v9);
    LODWORD(v50) = v47;
    (*(*a2 + 160))(a2, v9, &v50);
  }

  v42 = (*(*a1 + 56))(a1, 0xFFFFFFFF0004, 0);
  v43 = v59;
  v44 = (*(*a2 + 56))(a2, 0xFFFFFFFF0007, 0);
  v45 = fst::ReverseProperties(v43 | v42, v23);
  return (*(*a2 + 168))(a2, v44 | v45, 0xFFFFFFFF0007);
}