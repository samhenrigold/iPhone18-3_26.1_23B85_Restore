char **std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,0>(void *a1)
{
  v2 = a1[7];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  result = std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table((a1 + 2));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t std::pair<std::string,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>::~pair(uint64_t a1)
{
  v2 = *(a1 + 72);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(a1 + 32);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v2 = __p[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 = __p[2];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void **std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = v2[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,0>(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *realityio::ImportSession::CancelledException::CancelledException(void *a1, __int128 *a2)
{
  *a1 = &unk_285952540;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

uint64_t std::pair<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery const,std::weak_ptr<realityio::Builder>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::DependentBuilder>,0>(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::DependentBuilder>,0>(void *a1)
{
  v2 = a1[3];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t realityio::BuilderDependencyDAG::BuilderGraphNode::BuilderGraphNode(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__hash_table(a1 + 16, (a2 + 16));
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__hash_table(a1 + 56, (a2 + 56));
  v4 = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a1 + 96) = v4;
  v5 = *(a2 + 112);
  v6 = *(a2 + 104);
  *(a1 + 112) = v5;
  *(a1 + 104) = v6;
  *(a2 + 104) = 0;
  v7 = *(a2 + 120);
  *(a1 + 120) = v7;
  *(a1 + 128) = *(a2 + 128);
  if (v7)
  {
    v8 = *(v5 + 8);
    v9 = *(a1 + 104);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v4 + 8 * v8) = a1 + 112;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  v10 = *(a2 + 136);
  *(a2 + 136) = 0;
  *(a1 + 136) = v10;
  v11 = *(a2 + 152);
  v12 = *(a2 + 144);
  *(a1 + 152) = v11;
  *(a1 + 144) = v12;
  *(a2 + 144) = 0;
  v13 = *(a2 + 160);
  *(a1 + 160) = v13;
  *(a1 + 168) = *(a2 + 168);
  if (v13)
  {
    v14 = *(v11 + 8);
    v15 = *(a1 + 144);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v14 %= v15;
      }
    }

    else
    {
      v14 &= v15 - 1;
    }

    *(v10 + 8 * v14) = a1 + 152;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
  }

  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  return a1;
}

uint64_t std::pair<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>::~pair(uint64_t a1)
{
  realityio::WrappedRERef<REEngine *>::~WrappedRERef((a1 + 192));
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(a1 + 152);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(a1 + 112);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table((a1 + 72));
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void realityio::BuilderDependencyDAG::BuilderGraphNode::~BuilderGraphNode(realityio::BuilderDependencyDAG::BuilderGraphNode *this)
{
  realityio::WrappedRERef<REEngine *>::~WrappedRERef(this + 22);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(this + 136);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(this + 96);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table(this + 7);
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(this + 16);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::allocator<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  result = std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table((a2 + 2));
  v4 = a2[1];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t std::__split_buffer<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 56;
    std::allocator<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::destroy[abi:ne200100](v4, (i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo::~UnsatisfiedInputDescriptorInfo(realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo *this)
{
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(this + 16);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t std::pair<std::shared_ptr<realityio::Builder> const,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>::~pair(uint64_t a1)
{
  v4 = (a1 + 16);
  std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void **std::__split_buffer<std::weak_ptr<realityio::Builder>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::weak_ptr<realityio::Builder>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::weak_ptr<realityio::Builder>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::clear(uint64_t result)
{
  if (*(result + 24))
  {
    std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__deallocate_node(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder>>(void *a1, void *a2, uint64_t a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<realityio::Builder>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<realityio::BuilderDependencyDAG::SocketQuery>(void *a1, uint64_t a2)
{
  v4 = realityio::BuilderDependencyDAG::SocketQuery::Hash::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v4 == v9)
      {
        if (*(i + 4) == *a2 && *(i + 20) == *(a2 + 4) && (i[4] ^ *(a2 + 16)) < 8)
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

void *std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(void *a1, unint64_t *a2)
{
  v4 = realityio::WeakBuilderPtrHash::operator()(a1, a2);
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
      if (v6 == v12)
      {
        if (realityio::WeakBuilderPtrEqual::operator()(a1, v11 + 2, a2))
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

{
  v4 = realityio::WeakBuilderPtrHash::operator()(a1, a2);
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
        if (realityio::WeakBuilderPtrEqual::operator()(a1, v11 + 2, a2))
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

unint64_t realityio::WeakBuilderPtrHash::operator()(uint64_t a1, unint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = *a2;
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ HIDWORD(v5));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v6 >> 47) ^ v6);
  return 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
}

BOOL realityio::WeakBuilderPtrEqual::operator()(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a2[1];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = *a2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = a3[1];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v7 == *a3;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (!v6)
      {
        return v10;
      }

      goto LABEL_11;
    }
  }

  v10 = v7 == 0;
  if (v6)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::__equal_range_multi<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * (a3 & 0xFFFFFFFFFFFFFFF8));
  v4 = vcnt_s8(a2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (v3 >= a2)
    {
      v5 = v3 % a2;
    }
  }

  else
  {
    v5 = v3 & (a2 - 1);
  }

  v7 = *(a1 + 8 * v5);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (!*v7)
  {
    return result;
  }

  while (1)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      return 0;
    }

LABEL_18:
    result = *result;
    if (!result)
    {
      return result;
    }
  }

  if ((result[2] ^ a3) >= 8)
  {
    goto LABEL_18;
  }

  v9 = result;
  do
  {
    v9 = *v9;
  }

  while (v9 && (v9[2] ^ a3) < 8);
  return result;
}

void std::vector<std::shared_ptr<realityio::Builder>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

BOOL std::__equal_to::operator()[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>(uint64_t a1, int8x8_t *a2)
{
  if ((*a2 ^ *a1) > 7 || *(a1 + 8) != a2[1].i32[0] || *(a1 + 40) != *&a2[5])
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return (*&a2[7] ^ *(a1 + 56)) < 8uLL;
  }

  v3 = a2[3];
  if (!*&v3)
  {
    return 0;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = *&v3 - 1;
LABEL_7:
  v6 = bswap64(0x9E3779B97F4A7C55 * (*(v2 + 5) + ((*(v2 + 5) + *(v2 + 4) + (*(v2 + 5) + *(v2 + 4)) * (*(v2 + 5) + *(v2 + 4))) >> 1)));
  if (v4.u32[0] > 1uLL)
  {
    v7 = v6;
    if (v6 >= *&v3)
    {
      v7 = v6 % *&v3;
    }
  }

  else
  {
    v7 = v6 & v5;
  }

  v8 = *(*&a2[2] + 8 * v7);
  if (v8)
  {
    v9 = *v8;
    if (!*v8)
    {
      return 0;
    }

    do
    {
      v10 = v9[1];
      if (v6 == v10)
      {
        if (v9[2] == v2[2])
        {
          v2 = *v2;
          if (!v2)
          {
            return (*&a2[7] ^ *(a1 + 56)) < 8uLL;
          }

          goto LABEL_7;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v10 >= *&v3)
          {
            v10 %= *&v3;
          }
        }

        else
        {
          v10 &= v5;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      v8 = 0;
      v9 = *v9;
    }

    while (v9);
  }

  return v8;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 16 * (v4 >> 1));
    v8 = (a2 - 16);
    v9 = *(a2 - 16);
    if (*(*v7 + 176) > *(v9 + 176))
    {
      v10 = *(a2 - 8);
      *v8 = 0;
      *(a2 - 8) = 0;
      v11 = *v7;
      do
      {
        v12 = v7;
        v13 = v7[1];
        *v12 = 0;
        v12[1] = 0;
        v14 = v8[1];
        *v8 = v11;
        v8[1] = v13;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (a1 + 16 * v6);
        v11 = *v7;
        v8 = v12;
      }

      while (*(*v7 + 176) > *(v9 + 176));
      v15 = v12[1];
      *v12 = v9;
      v12[1] = v10;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a2 + 5);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(a2 + 3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 16));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    realityio::WrappedRERef<REEngine *>::~WrappedRERef((a2 + 208));
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(a2 + 168);
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(a2 + 128);
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table((a2 + 88));
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(a2 + 48);
    v3 = *(a2 + 40);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(a2 + 24);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::__equal_range_multi<realityio::BuilderDependencyDAG::SocketQuery>(void *a1, uint64_t a2)
{
  v4 = realityio::BuilderDependencyDAG::SocketQuery::Hash::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (!*v9)
  {
    return result;
  }

  v11 = *a2;
  v12 = *(a2 + 4);
  v13 = *(a2 + 16);
  while (1)
  {
    v14 = result[1];
    if (v14 == v6)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v14 >= *&v5)
      {
        v14 %= *&v5;
      }
    }

    else
    {
      v14 &= *&v5 - 1;
    }

    if (v14 != v8)
    {
      return 0;
    }

LABEL_19:
    result = *result;
    if (!result)
    {
      return result;
    }
  }

  if (*(result + 4) != v11 || *(result + 20) != v12 || (result[4] ^ v13) >= 8)
  {
    goto LABEL_19;
  }

  v15 = result;
  do
  {
    v15 = *v15;
  }

  while (v15 && *(v15 + 4) == v11 && *(v15 + 20) == v12 && (v15[4] ^ v13) < 8);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,void *>>>::operator()[abi:ne200100](1, a2);
  return v4;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,void *>>>::operator()[abi:ne200100](char a1, void *a2)
{
  if (a1)
  {
    v3 = a2[7];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = a2[4];
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2 + 20);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::BuilderDependencyDAG::DependentBuilder>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2475D4138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2475D4624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = a4 - a1;
    v8 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 4)
    {
      v10 = v7 >> 3;
      v11 = (v7 >> 3) | 1;
      v12 = (a1 + 16 * v11);
      v13 = v10 + 2;
      if (v13 < a3)
      {
        v14 = *(*v12 + 176) > *(v12[2] + 176);
        v12 += 2 * v14;
        if (v14)
        {
          v11 = v13;
        }
      }

      v15 = *a4;
      if (*(*v12 + 176) <= *(*a4 + 176))
      {
        v16 = a4[1];
        *a4 = 0;
        a4[1] = 0;
        v17 = *v12;
        do
        {
          v18 = v5;
          v5 = v12;
          v19 = v12[1];
          *v5 = 0;
          v5[1] = 0;
          v20 = v18[1];
          *v18 = v17;
          v18[1] = v19;
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (v8 < v11)
          {
            break;
          }

          v12 = (a1 + 16 * ((2 * v11) | 1));
          if (2 * v11 + 2 >= a3)
          {
            v11 = (2 * v11) | 1;
          }

          else
          {
            v14 = *(*v12 + 176) > *(v12[2] + 176);
            v12 += 2 * v14;
            v11 = v14 ? 2 * v11 + 2 : (2 * v11) | 1;
          }

          v17 = *v12;
        }

        while (*(*v12 + 176) <= *(v15 + 176));
        v21 = v5[1];
        *v5 = v15;
        v5[1] = v16;
        if (v21)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }
      }
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::__unordered_map_hasher<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,true>,std::__unordered_map_equal<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::hash<std::shared_ptr<realityio::Builder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::__unordered_map_hasher<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,true>,std::__unordered_map_equal<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::hash<std::shared_ptr<realityio::Builder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>>>::__rehash<true>(uint64_t a1, size_t __n)
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

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<realityio::Builder>,unsigned int>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(a1, a3, a4);
    v10 = v9;
    if ((a2 - 16) == v9)
    {
      v15 = v9[1];
      *v10 = v8;
      v10[1] = v7;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = v9[1];
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = (v10 + 2);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_2475D4B58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,realityio::OrderedAndDeterministicBuilderGreaterThan &,std::__wrap_iter<std::shared_ptr<realityio::Builder> *>>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a3 - 2) / 2;
  do
  {
    v6 = &a1[2 * v4 + 2];
    v7 = 2 * v4;
    v4 = (2 * v4) | 1;
    if (v7 + 2 < a3)
    {
      v8 = *(*v6 + 176) > *(v6[2] + 176);
      v6 += 2 * v8;
      if (v8)
      {
        v4 = v7 + 2;
      }
    }

    v9 = *v6;
    *v6 = 0;
    v6[1] = 0;
    v10 = a1[1];
    *a1 = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    a1 = v6;
  }

  while (v4 <= v5);
  return v6;
}

void std::vector<std::weak_ptr<realityio::Builder>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::weak_ptr<realityio::Builder>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::weak_ptr<realityio::Builder>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 7;
        std::allocator<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::__unordered_map_hasher<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,true>,std::__unordered_map_equal<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::hash<std::shared_ptr<realityio::Builder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<realityio::Builder> const,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<realityio::Builder> const,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,0>(uint64_t a1)
{
  v3 = (a1 + 16);
  std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder> const&>(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<realityio::Builder> const,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

uint64_t std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::__erase_unique<std::weak_ptr<realityio::Builder>>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::find<std::weak_ptr<realityio::Builder>>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      realityio::WrappedRERef<REEngine *>::~WrappedRERef(v2 + 26);
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(v2 + 168);
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::DependentBuilder>>>::~__hash_table(v2 + 128);
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedOutputDescriptorData>>>::~__hash_table(v2 + 11);
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::BuilderDependencyDAG::ComputedInputDescriptorData>>>::~__hash_table(v2 + 48);
      v4 = *(v2 + 5);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v5 = *(v2 + 3);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = v2[7];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = v2[6];
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v6 = v2[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v2 + 20);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      v5 = v2[3];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t RIOPxrUsdRelationshipSetTargets(uint64_t a1, CFArrayRef theArray)
{
  if (a1)
  {
    v2 = (a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v8 = ValueAtIndex;
      v9 = v15;
      if (v15 >= v16)
      {
        v10 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v14, ValueAtIndex + 4);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v15, ValueAtIndex + 4);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v9 + 1, v8 + 5);
        v10 = v9 + 2;
      }

      v15 = v10;
    }
  }

  v11 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdRelationship>(v2);
  std::recursive_mutex::lock(v11);
  v12 = pxrInternal__aapl__pxrReserved__::UsdRelationship::SetTargets();
  std::recursive_mutex::unlock(v11);
  v17 = &v14;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v17);
  return v12;
}

void sub_2475D5434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  std::recursive_mutex::unlock(v12);
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdRelationship>(realityio::UsdLayerMutexTracker *a1)
{
  v2 = realityio::UsdLayerMutexTracker::instance(a1);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v12, a1);
    v3 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v12);
    EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v3);
    v5 = EditTarget[1];
    v10 = *EditTarget;
    v11 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
    }

    v6 = v13;
    if (v13 && atomic_fetch_add_explicit((v13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v7 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v10);
  v8 = v11;
  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  return v7;
}

void sub_2475D556C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrUsdRelationshipClearTargets(uint64_t a1, BOOL a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdRelationship>((a1 + 24));
  std::recursive_mutex::lock(v3);
  v4 = pxrInternal__aapl__pxrReserved__::UsdRelationship::ClearTargets((a1 + 24));
  std::recursive_mutex::unlock(v3);
  return v4;
}

CFMutableArrayRef RIOPxrUsdRelationshipCopyTargets(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  memset(v3, 0, sizeof(v3));
  if (pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets())
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  }

  else
  {
    Mutable = 0;
  }

  v4 = v3;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v4);
  return Mutable;
}

void sub_2475D56F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

CFStringRef realityio::DirtyMetadataDescriptor::description@<X0>(realityio::DirtyMetadataDescriptor *this@<X0>, CFStringRef *a2@<X8>)
{
  *a2 = 0;
  v3 = *this & 0xFFFFFFFFFFFFFFF8;
  if (v3)
  {
    v4 = (v3 + 16);
    if (*(v3 + 39) < 0)
    {
      v4 = *v4;
    }
  }

  else
  {
    v4 = "";
  }

  result = CFStringCreateWithFormat(0, 0, @"<DirtyMetadataDescriptor: %p { metadataName: %s } >", this, v4);
  *a2 = result;
  return result;
}

uint64_t getLocalTransformation(uint64_t result, _BYTE *a2, void *a3, uint64_t a4)
{
  v187 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v6 = result;
    v7 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v180, 1.0);
    v8 = v184;
    v6[4] = v183;
    v6[5] = v8;
    v9 = v186;
    v6[6] = v185;
    v6[7] = v9;
    v10 = *&v180[16];
    *v6 = *v180;
    v6[1] = v10;
    v11 = v182;
    v6[2] = v181;
    v6[3] = v11;
    if (a2)
    {
      *a2 = 0;
      if (*a3)
      {
        v12 = a3[4] + 8 * *a3;
        __asm { FMOV            V0.2D, #1.0 }

        v138 = _Q0;
        v139 = a2;
        while (1)
        {
          v19 = (v12 - 8);
          v18 = *(v12 - 8);
          v149 = v18;
          if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v149 &= 0xFFFFFFFFFFFFFFF8;
          }

          if ((*v19 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            EmptyString = (*v19 & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
          }

          v21 = atomic_load(&qword_27EE530B0);
          if (!v21)
          {
          }

          if ((*(v21 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v22 = (*(v21 + 3) & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            v22 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v21);
          }

          if (*(v22 + 23) >= 0)
          {
            v23 = v22;
          }

          else
          {
            v23 = *v22;
          }

          v24 = *(EmptyString + 23);
          if (v24 >= 0)
          {
            v25 = *(EmptyString + 23);
          }

          else
          {
            v25 = *(EmptyString + 8);
          }

          v26 = strlen(v23);
          if (v25 < v26 || ((v27 = v26, v24 >= 0) ? (v28 = EmptyString) : (v28 = *EmptyString), v29 = strncmp(v28, v23, v27), v29))
          {
            v30 = 0;
          }

          else
          {
            if ((*v19 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v34 = ((*v19 & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v34 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v29);
            }

            v59 = atomic_load(&qword_27EE530B0);
            if (!v59)
            {
            }

            if ((*(v59 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v60 = (*(v59 + 1) & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              v60 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v59);
            }

            v61 = *(v60 + 23);
            if ((v61 & 0x8000000000000000) != 0)
            {
              v61 = *(v60 + 8);
            }

            std::string::basic_string(v180, v34, v61, 0xFFFFFFFFFFFFFFFFLL, &v141);
            MEMORY[0x24C1A5E00](__p, v180);
            if ((v149 & 7) != 0)
            {
              atomic_fetch_add_explicit((v149 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v149 = __p[0];
            __p[0] = 0;
            if ((v180[23] & 0x80000000) != 0)
            {
              operator delete(*v180);
            }

            v30 = 1;
          }

          v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a4, &v149);
          v31 = v7;
          if (a4 + 8 == v7)
          {
            goto LABEL_252;
          }

          if (v19 == a3[4])
          {
            goto LABEL_83;
          }

          v32 = atomic_load(&qword_27EE530B0);
          if (!v32)
          {
          }

          if ((*(v32 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v33 = ((*(v32 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v32 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v32);
            v33 = v32;
          }

          if ((*v19 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v35 = ((*v19 & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v35 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v32);
          }

          v36 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v33, v35, v180);
          if ((*(v12 - 16) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v37 = (*(v12 - 16) & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            v37 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v36);
          }

          v38 = v180[23];
          if (v180[23] >= 0)
          {
            v39 = v180[23];
          }

          else
          {
            v39 = *&v180[8];
          }

          v40 = *(v37 + 23);
          v41 = v40;
          if ((v40 & 0x80u) != 0)
          {
            v40 = *(v37 + 8);
          }

          if (v39 != v40)
          {
            break;
          }

          v42 = *v180;
          if (v180[23] >= 0)
          {
            v42 = v180;
          }

          v43 = v41 >= 0 ? v37 : *v37;
          v7 = memcmp(v42, v43, v39);
          if (v7)
          {
            break;
          }

          v54 = 1;
          if ((v38 & 0x80) == 0)
          {
LABEL_79:
            if (v54)
            {
              goto LABEL_80;
            }

            goto LABEL_83;
          }

LABEL_82:
          operator delete(*v180);
          if (v54)
          {
LABEL_80:
            v55 = 0;
            v12 -= 8;
            goto LABEL_253;
          }

LABEL_83:
          v7 = atomic_load(MEMORY[0x277D86588]);
          if (!v7)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomXformOpTypes_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomXformOpTypes_StaticTokenType>>::_TryToCreateData();
          }

          if ((*(v7 + 152) ^ *v19) > 7)
          {
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            v56 = *v19;
            if ((*v19 & 7) != 0 && (atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v56 &= 0xFFFFFFFFFFFFFFF8;
            }

            v179 = 0;
            if (*(v31 + 48))
            {
              pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v180, &v178);
              v57 = *(v31 + 48);
              v58 = ~*(v31 + 48);
              v179 = v57;
              if ((v58 & 3) != 0)
              {
                (*((v57 & 0xFFFFFFFFFFFFFFF8) + 24))(v31 + 40, &v178);
              }

              else
              {
                v178 = *(v31 + 40);
              }

              if (*&v180[8])
              {
                (*(*&v180[8] + 32))(v180);
              }
            }

            if ((v56 & 7) != 0)
            {
              if (atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
              {
                v62 = v56;
              }

              else
              {
                v62 = v56 & 0xFFFFFFFFFFFFFFF8;
              }
            }

            else
            {
              v62 = v56;
            }

            if ((atomic_load_explicit(&qword_27EE530C0, memory_order_acquire) & 1) == 0)
            {
              v137 = __cxa_guard_acquire(&qword_27EE530C0);
              if (v137)
              {
                _MergedGlobals_22 = pxrInternal__aapl__pxrReserved__::UsdObject::GetNamespaceDelimiter(v137);
                __cxa_guard_release(&qword_27EE530C0);
                a2 = v139;
              }
            }

            v63 = v62 & 0xFFFFFFFFFFFFFFF8;
            if ((v62 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v64 = (v63 + 16);
              if (*(v63 + 39) < 0)
              {
                v64 = *v64;
              }
            }

            else
            {
              v64 = "";
            }

            v65 = _MergedGlobals_22;
            v66 = strchr(v64, _MergedGlobals_22);
            if (!v66)
            {
              *v180 = "V2/XFormUtils.mm";
              *&v180[8] = "getTransformOpType";
              *&v180[16] = 94;
              *&v180[24] = "XformOpType (anonymous namespace)::getTransformOpType(TfToken)";
              LOBYTE(v181) = 0;
              if (v63)
              {
                v73 = (v63 + 16);
                if (*(v63 + 39) < 0)
                {
                  v73 = *v73;
                }
              }

              else
              {
                v73 = "";
              }

              pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v180, 1, "Invalid xform op: <%s>.", v73);
              goto LABEL_150;
            }

            v67 = v66 + 1;
            v68 = strchr(v66 + 1, v65);
            if (!v68)
            {
              v68 = &v67[strlen(v67)];
            }

            v69 = v68 - v67;
            if (v68 - v67 > 6)
            {
              if (v69 == 7)
              {
                if (!strncmp("rotateX", v67, 7uLL))
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 3;
                }

                else if (!strncmp("rotateY", v67, 7uLL))
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 4;
                }

                else
                {
                  if (strncmp("rotateZ", v67, 7uLL))
                  {
                    goto LABEL_146;
                  }

                  v70 = 0;
                  v71 = 0;
                  v72 = 5;
                }
              }

              else
              {
                if (v69 != 9)
                {
                  goto LABEL_146;
                }

                if (!strncmp("transform", v67, 9uLL))
                {
                  v71 = 0;
                  v70 = 1;
                  v72 = 13;
                }

                else if (!strncmp("translate", v67, 9uLL))
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 1;
                }

                else if (!strncmp("rotateXYZ", v67, 9uLL))
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 6;
                }

                else if (!strncmp("rotateXZY", v67, 9uLL))
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 7;
                }

                else if (!strncmp("rotateYXZ", v67, 9uLL))
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 8;
                }

                else if (!strncmp("rotateYZX", v67, 9uLL))
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 9;
                }

                else if (!strncmp("rotateZXY", v67, 9uLL))
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 10;
                }

                else
                {
                  if (strncmp("rotateZYX", v67, 9uLL))
                  {
                    goto LABEL_146;
                  }

                  v70 = 0;
                  v71 = 0;
                  v72 = 11;
                }
              }
            }

            else
            {
              if (v69 != 5)
              {
                if (v69 == 6 && !strncmp("orient", v67, 6uLL))
                {
                  v70 = 0;
                  v71 = 1;
                  v72 = 12;
                  goto LABEL_161;
                }

LABEL_146:
                *v180 = "V2/XFormUtils.mm";
                *&v180[8] = "getTransformOpType";
                *&v180[16] = 105;
                *&v180[24] = "XformOpType (anonymous namespace)::getTransformOpType(TfToken)";
                LOBYTE(v181) = 0;
                std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, v67, v68, v68 - v67);
                a2 = v139;
                v74 = __p;
                if (SBYTE7(v171) < 0)
                {
                  v74 = __p[0];
                }

                pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v180, 1, "Invalid xform opType token '%s'.", v74);
                if (SBYTE7(v171) < 0)
                {
                  operator delete(__p[0]);
                }

LABEL_150:
                v70 = 0;
                v71 = 0;
                v72 = 0;
LABEL_162:
                if ((v62 & 7) != 0)
                {
                  atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_release);
                }

                if (v70)
                {
                  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v180, 1.0);
                  v75 = v179;
                  if (!v179)
                  {
                    goto LABEL_323;
                  }

                  v76 = *((v179 & 0xFFFFFFFFFFFFFFF8) + 16);
                  if (v76 == 76)
                  {
                    goto LABEL_167;
                  }

                  if ((v179 & 4) != 0)
                  {
                    v75 = v179;
                    if (!IsImpl)
                    {
                      if (v179)
                      {
                        v76 = *((v179 & 0xFFFFFFFFFFFFFFF8) + 16);
                        goto LABEL_188;
                      }

LABEL_323:
                      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v141, 1.0);
LABEL_247:
                      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v178);
                      if ((v56 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if (!atomic_load(&qword_27EE530B8))
                      {
                      }

                      v7 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==();
                      if ((v7 & 1) == 0)
                      {
                        v7 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=();
                      }

LABEL_252:
                      v55 = 0;
                      goto LABEL_253;
                    }

LABEL_167:
                    if ((v75 & 4) != 0)
                    {
                      v77 = (*((v75 & 0xFFFFFFFFFFFFFFF8) + 168))(&v178);
                    }

                    else
                    {
                      v77 = v178;
                    }

                    v78 = *v77;
                    v79 = v77[1];
                    v80 = v77[3];
                    v181 = v77[2];
                    v182 = v80;
                    *v180 = v78;
                    *&v180[16] = v79;
                    v81 = v77[4];
                    v82 = v77[5];
                    v83 = v77[7];
                    v185 = v77[6];
                    v186 = v83;
                    v183 = v81;
                    v184 = v82;
                    if (!v30)
                    {
LABEL_193:
                      v145 = v183;
                      v146 = v184;
                      v147 = v185;
                      v148 = v186;
                      v141 = *v180;
                      v142 = *&v180[16];
                      v143 = v181;
                      v144 = v182;
                      goto LABEL_247;
                    }

LABEL_192:
                    *&v164 = 0;
                    pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(__p, v180, &v164, 0.0);
                    v183 = v174;
                    v184 = v175;
                    v185 = v176;
                    v186 = v177;
                    *v180 = *__p;
                    *&v180[16] = v171;
                    v181 = v172;
                    v182 = v173;
                    goto LABEL_193;
                  }

LABEL_188:
                  if (v76 == 73)
                  {
                    if ((v75 & 4) == 0)
                    {
                      goto LABEL_190;
                    }

LABEL_231:
                    v93 = (*((v75 & 0xFFFFFFFFFFFFFFF8) + 168))(&v178);
                  }

                  else
                  {
                    {
                      goto LABEL_323;
                    }

                    v75 = v179;
                    if ((v179 & 4) != 0)
                    {
                      goto LABEL_231;
                    }

LABEL_190:
                    v93 = v178;
                  }

                  MEMORY[0x24C1A4B20](__p, v93);
                  v183 = v174;
                  v184 = v175;
                  v185 = v176;
                  v186 = v177;
                  *v180 = *__p;
                  *&v180[16] = v171;
                  v181 = v172;
                  v182 = v173;
                  if (!v30)
                  {
                    goto LABEL_193;
                  }

                  goto LABEL_192;
                }

                v84 = v179;
                if (!v179)
                {
                  goto LABEL_210;
                }

                v85 = v179 & 0xFFFFFFFFFFFFFFF8;
                v86 = *((v179 & 0xFFFFFFFFFFFFFFF8) + 16);
                if (v86 == 9)
                {
                  goto LABEL_173;
                }

                if ((v179 & 4) != 0)
                {
                  v89 = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v178, MEMORY[0x277D827A8]);
                  v84 = v179;
                  if (!v89)
                  {
                    if (v179)
                    {
                      v85 = v179 & 0xFFFFFFFFFFFFFFF8;
                      v86 = *((v179 & 0xFFFFFFFFFFFFFFF8) + 16);
                      goto LABEL_180;
                    }

LABEL_210:
                    memset(v169, 0, 24);
LABEL_211:
                    if (!v71)
                    {
                      goto LABEL_323;
                    }

                    memset(v180, 0, sizeof(v180));
                    v98 = v179;
                    if (!v179)
                    {
                      goto LABEL_242;
                    }

                    v99 = v179 & 0xFFFFFFFFFFFFFFF8;
                    if (*((v179 & 0xFFFFFFFFFFFFFFF8) + 16) == 89)
                    {
                      goto LABEL_214;
                    }

                    if ((v179 & 4) != 0)
                    {
                      v98 = v179;
                      if (!v112)
                      {
                        if (v179)
                        {
                          v99 = v179 & 0xFFFFFFFFFFFFFFF8;
                          goto LABEL_237;
                        }

LABEL_242:
                        pxrInternal__aapl__pxrReserved__::GfRotation::SetQuat();
                        if (v30)
                        {
                          v114 = *__p;
                          v115 = *&v171;
                          v116 = COERCE_DOUBLE(*&vmulq_f64(v114, v114).f64[1]) + v114.f64[0] * v114.f64[0] + v115 * v115;
                          if (fabs(v116 + -1.0) >= 1.0e-10)
                          {
                            v117 = 1.0 / fmax(sqrt(v116), 1.0e-10);
                            v114 = vmulq_n_f64(*__p, v117);
                            v115 = *&v171 * v117;
                          }

                          *__p = v114;
                          *&v171 = v115;
                          *(&v171 + 1) = -*(&v171 + 1);
                        }

                        v164 = 0uLL;
                        *&v165 = 0;
                        pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d();
                        goto LABEL_247;
                      }

LABEL_214:
                      if ((v98 & 4) != 0)
                      {
                        v100 = (*((v98 & 0xFFFFFFFFFFFFFFF8) + 168))(&v178);
                      }

                      else
                      {
                        v100 = v178;
                      }

                      v101 = *v100;
                      v102 = v100[1];
LABEL_241:
                      *v180 = v101;
                      *&v180[16] = v102;
                      goto LABEL_242;
                    }

LABEL_237:
                    if (*(v99 + 16) == 88)
                    {
LABEL_238:
                      if ((v98 & 4) != 0)
                      {
                        v113 = (*((v98 & 0xFFFFFFFFFFFFFFF8) + 168))(&v178);
                      }

                      else
                      {
                        v113 = v178;
                      }

                      v101 = vcvtq_f64_f32(*v113);
                      v102 = vcvtq_f64_f32(v113[1]);
                      goto LABEL_241;
                    }

                    if ((v98 & 4) != 0)
                    {
                      v98 = v179;
                      if (v122)
                      {
                        goto LABEL_238;
                      }

                      if (!v179)
                      {
                        goto LABEL_242;
                      }
                    }

                    if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfQuath>(&v178))
                    {
                      if ((v179 & 4) != 0)
                      {
                        v123 = (*((v179 & 0xFFFFFFFFFFFFFFF8) + 168))(&v178);
                      }

                      else
                      {
                        v123 = &v178;
                      }

                      v124 = *(MEMORY[0x277D86658] + 4 * v123[3]);
                      v125 = *(MEMORY[0x277D86658] + 4 * v123[1]);
                      v126 = *(MEMORY[0x277D86658] + 4 * v123[2]);
                      *v180 = *(MEMORY[0x277D86658] + 4 * *v123);
                      *&v180[8] = v125;
                      *&v180[16] = v126;
                      *&v180[24] = v124;
                    }

                    goto LABEL_242;
                  }

LABEL_173:
                  if ((v84 & 4) != 0)
                  {
                    v87 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(&v178);
                  }

                  else
                  {
                    v87 = &v178;
                  }

                  v88 = *v87;
LABEL_203:
                  if (v30)
                  {
                    v96 = -v88;
                  }

                  else
                  {
                    v96 = v88;
                  }

                  switch(v72)
                  {
                    case 3:
                      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v180, 1.0);
                      __p[0] = 0x3FF0000000000000;
                      __p[1] = 0;
                      *&v171 = 0;
                      *(&v171 + 1) = v96;
                      v97 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate();
                      goto LABEL_220;
                    case 4:
                      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v180, 1.0);
                      *__p = xmmword_247762A50;
                      *&v171 = 0;
                      *(&v171 + 1) = v96;
                      v97 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate();
                      goto LABEL_220;
                    case 5:
                      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v180, 1.0);
                      __p[1] = 0;
                      __p[0] = 0;
                      *&v171 = 0x3FF0000000000000;
                      *(&v171 + 1) = v96;
                      v97 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate();
LABEL_220:
                      v103 = *v97;
                      v104 = v97[1];
                      v105 = v97[3];
                      v143 = v97[2];
                      v144 = v105;
                      v141 = v103;
                      v142 = v104;
                      v106 = v97[4];
                      v107 = v97[5];
                      v108 = v97[7];
                      v147 = v97[6];
                      v148 = v108;
                      v145 = v106;
                      v146 = v107;
                      goto LABEL_247;
                  }

                  v84 = v179;
LABEL_222:
                  memset(v169, 0, 24);
                  if (!v84)
                  {
                    goto LABEL_211;
                  }

                  v85 = v84 & 0xFFFFFFFFFFFFFFF8;
LABEL_224:
                  v109 = *(v85 + 16);
                  if (v109 == 68)
                  {
LABEL_225:
                    if ((v84 & 4) != 0)
                    {
                      v110 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(&v178);
                    }

                    else
                    {
                      v110 = v178;
                    }

                    v111 = v110[1].f32[0];
                    v169[0] = vcvtq_f64_f32(*v110);
                    v169[1].f64[0] = v111;
                    goto LABEL_284;
                  }

                  if ((v84 & 4) != 0)
                  {
                    v84 = v179;
                    if (v119)
                    {
                      goto LABEL_225;
                    }

                    if (!v179)
                    {
                      goto LABEL_211;
                    }

                    v109 = *((v179 & 0xFFFFFFFFFFFFFFF8) + 16);
                  }

                  if (v109 == 71)
                  {
LABEL_264:
                    if ((v84 & 4) != 0)
                    {
                      v120 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(&v178);
                    }

                    else
                    {
                      v120 = v178;
                    }

                    v121 = *v120;
                    v169[1].f64[0] = *(v120 + 16);
                    v169[0] = v121;
LABEL_284:
                    if (v72 == 2)
                    {
                      if (v30)
                      {
                        v169[0] = vdivq_f64(v138, v169[0]);
                        v169[1].f64[0] = 1.0 / v169[1].f64[0];
                      }

                      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v180, 1.0);
                      v97 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetScale();
                      goto LABEL_220;
                    }

                    if (v72 == 1)
                    {
                      if (v30)
                      {
                        v169[0] = vnegq_f64(v169[0]);
                        v169[1].f64[0] = -v169[1].f64[0];
                      }

                      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v180, 1.0);
                      v97 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate();
                      goto LABEL_220;
                    }

                    v131 = v169[0].f64[0];
                    if (v30)
                    {
                      v131 = -v169[0].f64[0];
                      v169[0].f64[0] = -v169[0].f64[0];
                      *(v169 + 8) = vnegq_f64(*(v169 + 8));
                    }

                    *&v174 = 0;
                    v172 = 0u;
                    v173 = 0u;
                    *__p = 0u;
                    v171 = 0u;
                    *v180 = 0x3FF0000000000000;
                    *&v180[8] = 0;
                    *&v180[16] = 0;
                    *&v180[24] = v131;
                    pxrInternal__aapl__pxrReserved__::GfMatrix3d::GfMatrix3d();
                    v168 = 0;
                    v166 = 0u;
                    v167 = 0u;
                    v164 = 0u;
                    v165 = 0u;
                    *v180 = xmmword_247762A50;
                    *&v180[16] = 0;
                    *&v180[24] = v169[0].f64[1];
                    pxrInternal__aapl__pxrReserved__::GfMatrix3d::GfMatrix3d();
                    v163 = 0;
                    v161 = 0u;
                    v162 = 0u;
                    v159 = 0u;
                    v160 = 0u;
                    *&v180[8] = 0;
                    *v180 = 0;
                    *&v180[16] = 0x3FF0000000000000;
                    *&v180[24] = v169[1].f64[0];
                    pxrInternal__aapl__pxrReserved__::GfMatrix3d::GfMatrix3d();
                    pxrInternal__aapl__pxrReserved__::GfMatrix3d::SetDiagonal(v157, 1.0);
                    if (v72 > 8)
                    {
                      switch(v72)
                      {
                        case 9:
                          if (v30)
                          {
                            v154 = v172;
                            v155 = v173;
                            v156 = v174;
                            *v152 = *__p;
                            v153 = v171;
                          }

                          else
                          {
                            v154 = v166;
                            v155 = v167;
                            v156 = v168;
                            *v152 = v164;
                            v153 = v165;
                          }

                          goto LABEL_335;
                        case 10:
                          if (v30)
                          {
                            v154 = v166;
                            v155 = v167;
                            v156 = v168;
                            *v152 = v164;
                            v153 = v165;
                          }

                          else
                          {
                            v154 = v161;
                            v155 = v162;
                            v156 = v163;
                            *v152 = v159;
                            v153 = v160;
                          }

                          goto LABEL_335;
                        case 11:
                          if (v30)
                          {
                            v154 = v172;
                            v155 = v173;
                            v156 = v174;
                            *v152 = *__p;
                            v153 = v171;
                          }

                          else
                          {
                            v154 = v161;
                            v155 = v162;
                            v156 = v163;
                            *v152 = v159;
                            v153 = v160;
                          }

                          goto LABEL_335;
                      }
                    }

                    else
                    {
                      switch(v72)
                      {
                        case 6:
                          if (v30)
                          {
                            v154 = v161;
                            v155 = v162;
                            v156 = v163;
                            *v152 = v159;
                            v153 = v160;
                          }

                          else
                          {
                            v154 = v172;
                            v155 = v173;
                            v156 = v174;
                            *v152 = *__p;
                            v153 = v171;
                          }

                          goto LABEL_335;
                        case 7:
                          if (v30)
                          {
                            v154 = v166;
                            v155 = v167;
                            v156 = v168;
                            *v152 = v164;
                            v153 = v165;
                          }

                          else
                          {
                            v154 = v172;
                            v155 = v173;
                            v156 = v174;
                            *v152 = *__p;
                            v153 = v171;
                          }

                          goto LABEL_335;
                        case 8:
                          if (v30)
                          {
                            v154 = v161;
                            v155 = v162;
                            v156 = v163;
                            *v152 = v159;
                            v153 = v160;
                          }

                          else
                          {
                            v154 = v166;
                            v155 = v167;
                            v156 = v168;
                            *v152 = v164;
                            v153 = v165;
                          }

LABEL_335:
                          pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=();
                          v181 = v154;
                          v182 = v155;
                          *&v183 = v156;
                          *v180 = *v152;
                          *&v180[16] = v153;
                          pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=();
                          v157[2] = v181;
                          v157[3] = v182;
                          v158 = v183;
                          v157[0] = *v180;
                          v157[1] = *&v180[16];
                          pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v180, 1.0);
                          v97 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v180, v157);
                          goto LABEL_220;
                      }
                    }

                    *v180 = "V2/XFormUtils.mm";
                    *&v180[8] = "GetOpTransform";
                    *&v180[16] = 221;
                    *&v180[24] = "GfMatrix4d (anonymous namespace)::GetOpTransform(TfToken, VtValue, BOOL)";
                    LOBYTE(v181) = 0;
                    pxrInternal__aapl__pxrReserved__::TfEnum::GetName();
                    v133 = SBYTE7(v153);
                    v134 = v152[0];
                    pxrInternal__aapl__pxrReserved__::TfStringify<pxrInternal__aapl__pxrReserved__::VtValue>();
                    v135 = v152;
                    if (v133 < 0)
                    {
                      v135 = v134;
                    }

                    v136 = &v150;
                    if (v151 < 0)
                    {
                      v136 = v150;
                    }

                    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v180, 1, "Invalid combination of opType (%s) and opVal (%s). Returning identity matrix.", v135, v136);
                    if (v151 < 0)
                    {
                      operator delete(v150);
                    }

                    if (SBYTE7(v153) < 0)
                    {
                      operator delete(v152[0]);
                    }

                    goto LABEL_323;
                  }

                  if ((v84 & 4) != 0)
                  {
                    v84 = v179;
                    if (v127)
                    {
                      goto LABEL_264;
                    }

                    if (!v179)
                    {
                      goto LABEL_211;
                    }

                    v109 = *((v179 & 0xFFFFFFFFFFFFFFF8) + 16);
                  }

                  if (v109 == 65)
                  {
                    if ((v84 & 4) == 0)
                    {
                      goto LABEL_282;
                    }

LABEL_310:
                    v128 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(&v178);
                  }

                  else
                  {
                    {
                      goto LABEL_211;
                    }

                    v84 = v179;
                    if ((v179 & 4) != 0)
                    {
                      goto LABEL_310;
                    }

LABEL_282:
                    v128 = &v178;
                  }

                  v129 = *(MEMORY[0x277D86658] + 4 * v128[1]);
                  v130 = *(MEMORY[0x277D86658] + 4 * v128[2]);
                  v169[0].f64[0] = *(MEMORY[0x277D86658] + 4 * *v128);
                  v169[0].f64[1] = v129;
                  v169[1].f64[0] = v130;
                  goto LABEL_284;
                }

LABEL_180:
                if (v86 == 10)
                {
LABEL_181:
                  if ((v84 & 4) != 0)
                  {
                    v90 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(&v178);
                  }

                  else
                  {
                    v90 = &v178;
                  }

                  v91 = *v90;
                }

                else
                {
                  if ((v84 & 4) != 0)
                  {
                    v94 = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v178, MEMORY[0x277D827B0]);
                    v84 = v179;
                    if (v94)
                    {
                      goto LABEL_181;
                    }

                    if (!v179)
                    {
                      goto LABEL_210;
                    }

                    v85 = v179 & 0xFFFFFFFFFFFFFFF8;
                    v86 = *((v179 & 0xFFFFFFFFFFFFFFF8) + 16);
                  }

                  if (v86 != 11)
                  {
                    if ((v84 & 4) == 0)
                    {
                      memset(v169, 0, 24);
                      goto LABEL_224;
                    }

                    v84 = v179;
                    if (!v132)
                    {
                      goto LABEL_222;
                    }
                  }

                  if ((v84 & 4) != 0)
                  {
                    v95 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(&v178);
                  }

                  else
                  {
                    v95 = &v178;
                  }

                  v91 = *(MEMORY[0x277D86658] + 4 * *v95);
                }

                v88 = v91;
                goto LABEL_203;
              }

              if (strncmp("scale", v67, 5uLL))
              {
                goto LABEL_146;
              }

              v70 = 0;
              v71 = 0;
              v72 = 2;
            }

LABEL_161:
            a2 = v139;
            goto LABEL_162;
          }

          v55 = 1;
          *a2 = 1;
LABEL_253:
          if ((v149 & 7) != 0)
          {
            atomic_fetch_add_explicit((v149 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v12 -= 8;
          if (v12 == a3[4])
          {
            v55 = 1;
          }

          if (v55)
          {
            return 1;
          }
        }

        v44 = atomic_load(&qword_27EE530B0);
        if (!v44)
        {
        }

        if ((*(v44 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v45 = ((*(v44 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v44 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
          v45 = v44;
        }

        if ((*(v12 - 16) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v46 = ((*(v12 - 16) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v46 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
        }

        v47 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v45, v46, __p);
        if ((*v19 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v7 = (*v19 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v47);
        }

        v48 = SBYTE7(v171);
        if ((SBYTE7(v171) & 0x80u) == 0)
        {
          v49 = BYTE7(v171);
        }

        else
        {
          v49 = __p[1];
        }

        v50 = *(v7 + 23);
        v51 = v50;
        if ((v50 & 0x80u) != 0)
        {
          v50 = *(v7 + 8);
        }

        if (v49 == v50)
        {
          v52 = __p[0];
          if ((SBYTE7(v171) & 0x80u) == 0)
          {
            v52 = __p;
          }

          if (v51 >= 0)
          {
            v53 = v7;
          }

          else
          {
            v53 = *v7;
          }

          v7 = memcmp(v52, v53, v49);
          v54 = v7 == 0;
          if ((v48 & 0x80000000) == 0)
          {
LABEL_78:
            if ((v180[23] & 0x80) == 0)
            {
              goto LABEL_79;
            }

            goto LABEL_82;
          }
        }

        else
        {
          v54 = 0;
          if ((SBYTE7(v171) & 0x80000000) == 0)
          {
            goto LABEL_78;
          }
        }

        operator delete(__p[0]);
        goto LABEL_78;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2475D6D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  __cxa_guard_abort(&qword_27EE530C0);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x2D0]);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a35 & 7) != 0)
  {
    atomic_fetch_add_explicit((a35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfStringify<pxrInternal__aapl__pxrReserved__::VtValue>()
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  v1 = *(v6 - 24);
  v2 = std::locale::classic();
  std::ios_base::getloc((&v6 + v1));
  std::ios_base::imbue((&v6 + v1), v2);
  std::locale::~locale(&v12);
  v3 = *(&v8[3].__locale_ + v1);
  if (v3)
  {
    (*(v3->__locale_ + 2))(v3, v2);
    std::locale::locale(&v11, v3 + 1);
    std::locale::operator=(v3 + 1, v2);
    std::locale::~locale(&v11);
  }

  std::locale::~locale(&v5);
  pxrInternal__aapl__pxrReserved__::operator<<();
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x24C1A9110](&v10);
}

void sub_2475D70B8(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a10, MEMORY[0x277D82828]);
  MEMORY[0x24C1A9110](va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdObject::GetNamespaceDelimiter(pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v1 = atomic_load(MEMORY[0x277D86548]);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfPathTokens_StaticTokenType>>::_TryToCreateData();
  }

  v2 = *(v1 + 80) & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v3 = (v2 + 16);
    if (*(v2 + 39) < 0)
    {
      v3 = *v3;
    }
  }

  else
  {
    v3 = "";
  }

  return *v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfQuatf>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 88)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfQuath>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 87)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::TfStaticData<anonymous namespace::anonymous namespace::_tokens_PrivateStaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<anonymous namespace::anonymous namespace::_tokens_PrivateStaticTokenType>>::_TryToCreateData()
{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

void sub_2475D747C(_Unwind_Exception *a1)
{
  v5 = 24;
  while (1)
  {
    v6 = *(v3 + v5);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 -= 8;
    if (v5 == -8)
    {
      v7 = v1[3];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[2];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A91B0](v1, v2);
      _Unwind_Resume(a1);
    }
  }
}

realityio::tokens::CylinderMeshBuilderTokens_StaticTokenType *realityio::tokens::CylinderMeshBuilderTokens_StaticTokenType::CylinderMeshBuilderTokens_StaticTokenType(realityio::tokens::CylinderMeshBuilderTokens_StaticTokenType *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "Cylinder", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "axis", 0);
  MEMORY[0x24C1A5DF0](this + 16, "height", 0);
  MEMORY[0x24C1A5DF0](this + 24, "radius", 0);
  MEMORY[0x24C1A5DF0](this + 32, "material:binding", 0);
  v3 = (this + 40);
  v4 = *this;
  v17 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v5;
    }
  }

  v6 = *(this + 1);
  v18 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v7;
    }
  }

  v8 = *(this + 2);
  v19 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v9;
    }
  }

  v10 = *(this + 3);
  v20 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 = v11;
    }
  }

  v12 = *(this + 4);
  v21 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v13;
    }
  }

  *v3 = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v17, &v22, 5uLL);
  for (i = 32; i != -8; i -= 8)
  {
    v15 = *(&v17 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_2475D782C(_Unwind_Exception *a1)
{
  v3 = 32;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[4];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[3];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[2];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_2475D7C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  MEMORY[0x24C1A91B0](v30, 0x10A1C40F82F910ELL, a3, a4, a5, a6, a7, a8);
  *(v31 - 176) = &a28;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
  MEMORY[0x24C1A91B0](v29, v28);
  _Unwind_Resume(a1);
}

realityio::UsdPropertyDelta *realityio::UsdPropertyDelta::UsdPropertyDelta(realityio::UsdPropertyDelta *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = *a2;
  *this = &unk_285952578;
  *(this + 1) = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(this + 1) &= 0xFFFFFFFFFFFFFFF8;
  }

  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  *(this + 2) = &unk_285955750;
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(this + 24, v5);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v5);
  return this;
}

void sub_2475D8034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(&a9);
  v11 = *(v9 + 8);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *realityio::UsdPropertyDelta::updateWithPropertyDelta(void *this, const realityio::UsdPropertyDelta *a2)
{
  if ((*(a2 + 1) ^ this[1]) <= 7)
  {
    v2 = *(a2 + 5);
    if (v2)
    {
      v3 = this;
      do
      {
        this = std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(v3 + 3, v2 + 2);
        v2 = *v2;
      }

      while (v2);
    }
  }

  return this;
}

const void **realityio::UsdPropertyDelta::description@<X0>(realityio::UsdPropertyDelta *this@<X0>, CFStringRef *a2@<X8>)
{
  *a2 = 0;
  v4 = *(this + 1) & 0xFFFFFFFFFFFFFFF8;
  if (v4)
  {
    v5 = (v4 + 16);
    if (*(v4 + 39) < 0)
    {
      v5 = *v5;
    }
  }

  else
  {
    v5 = "";
  }

  realityio::UsdMetadataDelta::description(&v7, (this + 16));
  *a2 = CFStringCreateWithFormat(0, 0, @"<UsdPropertyDelta: %p { property name: %s, metadata: %@ }>", this, v5, v7);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v7);
}

void sub_2475D8150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v7);
  _Unwind_Resume(a1);
}

void realityio::internal::TexturePrimToMaterialPrimMap::makeTexturePrimToMaterialMap(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v85 = *MEMORY[0x277D85DE8];
  v78 = 0;
  v79 = 0;
  v77 = &v78;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v73, v3);
  *&v42[0].__r_.__value_.__l.__data_ = 0uLL;
  v42[0].__r_.__value_.__s.__data_[16] = 1;
  v4 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsDisjunction::operator|=(v42, 0);
  v65 = *v4;
  v66 = *(v4 + 16);
  *&v42[0].__r_.__value_.__l.__data_ = v65;
  v42[0].__r_.__value_.__s.__data_[16] = v66;
  v5 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsDisjunction::operator|=(v42, 8);
  v6 = *v5;
  v63 = *(v5 + 16);
  v62 = v6;
  v7 = pxrInternal__aapl__pxrReserved__::UsdPrimRange::UsdPrimRange(v70, &v73, &v62);
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(&v65, v7);
  v41 = *(MEMORY[0x277D86758] + 48);
  v39 = *(MEMORY[0x277D86708] + 48);
  while (1)
  {
    v42[0].__r_.__value_.__r.__words[0] = v71;
    v42[0].__r_.__value_.__l.__size_ = v70;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    LODWORD(v42[1].__r_.__value_.__l.__data_) = 0;
    WORD2(v42[1].__r_.__value_.__r.__words[0]) = 0;
    if (v65 == *&v42[0].__r_.__value_.__l.__data_)
    {
      v8 = 1;
      if (v66 == v42[0].__r_.__value_.__r.__words[2] && !v67 && !v68)
      {
        v8 = v69;
      }
    }

    else
    {
      v8 = 1;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42[0].__r_.__value_.__r.__words[2]);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v42[0].__r_.__value_.__r.__words[0] = v65;
    if (v65)
    {
      atomic_fetch_add_explicit((v65 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v62, v42, &v66);
    v9 = v42[0].__r_.__value_.__r.__words[0];
    if (v42[0].__r_.__value_.__r.__words[0])
    {
      v9 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v42[0].__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::_GetStaticTfType(v9);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA() && (realityio::hasMaterialXSurface(&v62, v10) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v60 = MEMORY[0x277D86758] + 16;
      if (v61 && (*(v61 + 57) & 8) == 0 && (v41(&v60) & 1) != 0)
      {
        pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::GetSurfaceAttr(&v56, &v60);
        if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v56))
        {
          v11 = atomic_load(MEMORY[0x277D86568]);
          if (!v11)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
          }

          v12 = *(v11 + 216);
          v81 = v12;
          if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v81 &= 0xFFFFFFFFFFFFFFF8;
          }

          memset(v42, 0, 24);
          std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v42, &v81, &v82, 1uLL);
          pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::ComputeSurfaceSource();
          v48 = v42;
          std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v48);
          if ((v81 & 7) != 0)
          {
            atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v55 && (*(v55 + 57) & 8) == 0 && ((*(v54 + 32))(&v54) & 1) != 0)
          {
            pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v52, &v54);
            v14 = v52;
            v13 = v53;
            v40 = v53;
            while (v14 != v13)
            {
              if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v14) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && MEMORY[0x24C1A7400](v14))
              {
                realityio::findOriginalSourceAttribute(&v48, v14);
                if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v48))
                {
                  v15 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v81, &v49, &v50);
                  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v15))
                  {
                    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                    v46 = MEMORY[0x277D86708] + 16;
                    if (v47 && (*(v47 + 57) & 8) == 0 && (v39(&v46) & 1) != 0)
                    {
                      *&v44 = 0;
                      pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(v42, &v46);
                      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v42))
                      {
                        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
                      }

                      if ((v42[1].__r_.__value_.__s.__data_[0] & 7) != 0)
                      {
                        atomic_fetch_add_explicit((v42[1].__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42[0].__r_.__value_.__r.__words[2]);
                      if (v42[0].__r_.__value_.__l.__size_)
                      {
                        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v42[0].__r_.__value_.__l.__size_);
                      }

                      MEMORY[0x24C1A5DE0](v42, "UsdUVTexture");
                      v16 = v44;
                      v17 = v42[0].__r_.__value_.__r.__words[0];
                      if ((v42[0].__r_.__value_.__s.__data_[0] & 7) != 0)
                      {
                        atomic_fetch_add_explicit((v42[0].__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if ((v44 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if ((v17 ^ v16) <= 7)
                      {
                        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v42, &v81);
                        v18 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(&v77, v42);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v42);
                        if (&v78 != v18
                          || (pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&p_size, &v81),
                              *(&v44 + 1) = 0,
                              v45 = 0,
                              *&v44 = &v44 + 8,
                              std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,0>(v42, &p_size, &v44),
                              v19 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>(&v77, v42, v42),
                              v36 = v20,
                              v18 = v19,
                              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy(&v42[0].__r_.__value_.__l.__size_, v42[0].__r_.__value_.__r.__words[2]),
                              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(),
                              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v42),
                              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy(&v44, *(&v44 + 1)),
                              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(),
                              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&p_size),
                              (v36 & 1) != 0))
                        {
                          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v42, &v62);
                          v37 = v18;
                          v21 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>((v18 + 5), v42);
                          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v42);
                          if (v37 + 6 != v21 || (pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v43, &v62), v44 = 0uLL, v45 = 0, LODWORD(v42[0].__r_.__value_.__l.__data_) = v43, pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=(), HIDWORD(v42[0].__r_.__value_.__r.__words[0]) = HIDWORD(v43), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=(), *&v42[0].__r_.__value_.__r.__words[1] = v44, v42[1].__r_.__value_.__r.__words[0] = v45, v45 = 0, v44 = 0uLL, v22 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>(v37 + 5, v42, v42), v38 = v23, v21 = v22, p_size = &v42[0].__r_.__value_.__l.__size_, std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&p_size), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(), pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v42), p_size = &v44, std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&p_size), pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(), pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43), (v38 & 1) != 0))
                          {
                            memset(v42, 0, sizeof(v42));
                            BaseName = pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(&v44, &v48);
                            if ((v44 & 0xFFFFFFFFFFFFFFF8) != 0)
                            {
                              EmptyString = ((v44 & 0xFFFFFFFFFFFFFFF8) + 16);
                            }

                            else
                            {
                              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(BaseName);
                            }

                            std::string::operator=(&v42[1], EmptyString);
                            if ((v44 & 7) != 0)
                            {
                              atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }

                            v26 = pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v44, v14);
                            if ((v44 & 0xFFFFFFFFFFFFFFF8) != 0)
                            {
                              v27 = ((v44 & 0xFFFFFFFFFFFFFFF8) + 16);
                            }

                            else
                            {
                              v27 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
                            }

                            std::string::operator=(v42, v27);
                            if ((v44 & 7) != 0)
                            {
                              atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }

                            v28 = v21[6];
                            if (v28 >= v21[7])
                            {
                              v31 = std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>::__emplace_back_slow_path<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>(v21 + 5, v42);
                              v32 = SHIBYTE(v42[1].__r_.__value_.__r.__words[2]);
                              v21[6] = v31;
                              if (v32 < 0)
                              {
                                operator delete(v42[1].__r_.__value_.__l.__data_);
                              }
                            }

                            else
                            {
                              v29 = *&v42[0].__r_.__value_.__l.__data_;
                              *(v28 + 16) = *(&v42[0].__r_.__value_.__l + 2);
                              *v28 = v29;
                              memset(v42, 0, 24);
                              v30 = v42[1].__r_.__value_.__r.__words[2];
                              *(v28 + 24) = *&v42[1].__r_.__value_.__l.__data_;
                              *(v28 + 40) = v30;
                              memset(&v42[1], 0, sizeof(std::string));
                              v21[6] = v28 + 48;
                            }

                            if (SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v42[0].__r_.__value_.__l.__data_);
                            }
                          }
                        }
                      }
                    }

                    MEMORY[0x24C1A5280](&v46);
                  }

                  if ((v84 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v83);
                  if (v82)
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v82);
                  }

                  if ((v51 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }
                }

                else if ((v51 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v50);
                if (v49)
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v49);
                }
              }

              v14 = (v14 + 32);
              v13 = v40;
            }

            v42[0].__r_.__value_.__r.__words[0] = &v52;
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](v42);
          }

          MEMORY[0x24C1A5280](&v54);
        }

        if ((v59 & 7) != 0)
        {
          atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
        if (v57)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v57);
        }
      }

      MEMORY[0x24C1A5510](&v60);
    }

    if ((v64 & 7) != 0)
    {
      atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v63);
    if (*(&v62 + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v62 + 1));
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v65);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v66);
  v33 = v78;
  *a2 = v77;
  a2[1] = v33;
  v34 = a2 + 1;
  v35 = v79;
  a2[2] = v79;
  if (v35)
  {
    v33[2] = v34;
    v77 = &v78;
    v78 = 0;
    v79 = 0;
  }

  else
  {
    *a2 = v34;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v72);
  if ((v76 & 7) != 0)
  {
    atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v75);
  if (v74)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v74);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(&v77, v78);
}

void sub_2475D8B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,0>(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  *(a1 + 8) = *a3;
  v7 = a3 + 1;
  v8 = a3[1];
  *(a1 + 16) = v8;
  v9 = a1 + 16;
  v10 = a3[2];
  *(a1 + 24) = v10;
  if (v10)
  {
    *(v8 + 16) = v9;
    *a3 = v7;
    *v7 = 0;
    a3[2] = 0;
  }

  else
  {
    *(a1 + 8) = v9;
  }

  return a1;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy(a1 + 8, *(a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>::~pair(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy((a2 + 5), a2[6]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 4));

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 32));
    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>(uint64_t **a1, void *a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>::__emplace_back_slow_path<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
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

  v23 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v6);
  }

  v7 = 48 * v2;
  v8 = 0;
  v22 = 0;
  v9 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v10 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v10;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v11 = *a1;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  v26 = v13;
  v27 = v13;
  v24[0] = a1;
  v24[1] = &v26;
  v24[2] = &v27;
  if (v12 == v11)
  {
    v25 = 1;
  }

  else
  {
    v14 = v11;
    v15 = v13;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 16);
      *v15 = v16;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = 0;
      v17 = *(v14 + 24);
      *(v15 + 40) = *(v14 + 40);
      *(v15 + 24) = v17;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 24) = 0;
      v14 += 48;
      v15 += 48;
    }

    while (v14 != v12);
    v27 = v15;
    v25 = 1;
    do
    {
      std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](a1, v11);
      v11 += 48;
    }

    while (v11 != v12);
    v8 = v22;
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>,realityio::internal::TexturePrimToMaterialPrimMap::MaterialData*>>::~__exception_guard_exceptions[abi:ne200100](v24);
  v18 = *a1;
  *a1 = v13;
  a1[1] = v7 + 48;
  v19 = a1[2];
  a1[2] = v8;
  v21[2] = v18;
  v22 = v19;
  v21[0] = v18;
  v21[1] = v18;
  std::__split_buffer<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>::~__split_buffer(v21);
  return v7 + 48;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>,realityio::internal::TexturePrimToMaterialPrimMap::MaterialData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__split_buffer<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 48;
    std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v4, i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t realityio::PrimitiveDirtyPrimDescriptor::PrimitiveDirtyPrimDescriptor(uint64_t a1, void **a2, void **a3)
{
  *a1 = &unk_2859525B8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::DirtyMetadataDescriptor const>*,std::shared_ptr<realityio::DirtyMetadataDescriptor const>*>((a1 + 8), *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>*,std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>*>((a1 + 32), *a3, a3[1], (a3[1] - *a3) >> 4);
  *(a1 + 56) = (*(*a1 + 48))(a1);
  return a1;
}

void sub_2475D9380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::PrimitiveDirtyPrimDescriptor::validate(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdStage *a3, pxrInternal__aapl__pxrReserved__::UsdStage *this, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!*(a7 + 24) || !*(a8 + 24) || !*(a9 + 24))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v37, this, a2);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v37);
  v16 = a3 ? IsValid : 1;
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v33, a3, a2);
    v18 = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v33);
    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    v17 = v18 ^ 1;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v35);
    if (v34)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v34);
    }
  }

  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v39);
  if (v38)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v38);
  }

  if (v17)
  {
    return 0;
  }

  v19 = a1;
  v20 = *(a1 + 16);
  v32 = v19;
  v21 = *(v19 + 8);
  if (v20 != v21)
  {
    while (1)
    {
      v23 = *v21;
      v22 = v21[1];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v43, a7);
      if (!v44)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v24 = (*(*v44 + 48))(v44, a2, v23);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v43);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (v24)
      {
        break;
      }

      v21 += 2;
      if (v21 == v20)
      {
        return 0;
      }
    }
  }

  v27 = *(v32 + 32);
  v28 = *(v32 + 40);
  if (v27 == v28)
  {
    return 1;
  }

  do
  {
    v30 = *v27;
    v29 = v27[1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v42, a8);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v41, a9);
    v25 = (*(*v30 + 24))(v30, a2, a3, this, v42, v41);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v41);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v42);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    v27 += 2;
    if (v27 == v28)
    {
      v31 = 1;
    }

    else
    {
      v31 = v25;
    }
  }

  while ((v31 & 1) == 0);
  return v25;
}

void sub_2475D9664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::PrimitiveDirtyPrimDescriptor::_isEmpty(realityio::PrimitiveDirtyPrimDescriptor *this)
{
  v2 = *(this + 1);
  for (i = *(this + 2); v2 != i; v2 += 2)
  {
    v5 = *v2;
    v4 = v2[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *(v5 + 8);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if ((*(v5 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(this + 4);
  v8 = *(this + 5);
  if (v7 == v8)
  {
    return 1;
  }

  do
  {
    v9 = *v7;
    v10 = v7[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = (*(*v9 + 32))(v9);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v7 += 2;
    if (v7 == v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }
  }

  while ((v12 & 1) != 0);
  return v11;
}

void sub_2475D97F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

const void **realityio::PrimitiveDirtyPrimDescriptor::description@<X0>(uint64_t **this@<X0>, CFStringRef *a2@<X8>)
{
  v11 = 0;
  v12 = realityio::joinAsCFStringRef<realityio::DirtyMetadataDescriptor>(this + 1, realityio::DirtyMetadataDescriptor::description, 0, ", ");
  v4 = realityio::joinAsCFStringRef<realityio::PrimitiveDirtyPropertyDescriptor>(this + 4);
  v5 = this[4];
  v6 = this[5];
  v7 = v12;
  v8 = this[1];
  v9 = this[2];
  v11 = v4;
  *a2 = 0;
  *a2 = CFStringCreateWithFormat(0, 0, @"<PrimitiveDirtyPrimDescriptor: %p { dirtyPrimMetadataContainAnyOf: (%lu) [ %@ ], dirtyPropertiesContainAnyOf: (%lu) [ %@ ] } >", this, (v9 - v8) >> 4, v7, (v6 - v5) >> 4, v4);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v11);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v12);
}

void sub_2475D98C4(_Unwind_Exception *a1)
{
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v1);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v2 - 32));
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v2 - 24));
  _Unwind_Resume(a1);
}

CFStringRef realityio::joinAsCFStringRef<realityio::PrimitiveDirtyPropertyDescriptor>(uint64_t **a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = *v4;
      v7 = v4[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 16))(&value);
      CFArrayAppendValue(Mutable, value);
      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&value);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  v8 = realityio::joinAsCFStringRef(Mutable, ", ", v2);
  CFRelease(Mutable);
  return v8;
}

void sub_2475D99DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *realityio::TypeNameDirtyPrimDescriptor::TypeNameDirtyPrimDescriptor(_BYTE *a1, uint64_t a2, void **a3, void **a4)
{
  v6 = realityio::PrimitiveDirtyPrimDescriptor::PrimitiveDirtyPrimDescriptor(a1, a3, a4);
  *v6 = &unk_285952600;
  std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::set[abi:ne200100]((v6 + 64), a2);
  a1[56] = (*(*a1 + 48))(a1);
  return a1;
}

void sub_2475D9A98(_Unwind_Exception *a1)
{
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(v2, *(v1 + 9));
  realityio::PrimitiveDirtyPrimDescriptor::~PrimitiveDirtyPrimDescriptor(v1);
  _Unwind_Resume(a1);
}

void realityio::TypeNameDirtyPrimDescriptor::~TypeNameDirtyPrimDescriptor(realityio::TypeNameDirtyPrimDescriptor *this)
{
  *this = &unk_285952600;
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(this + 64, *(this + 9));
  *this = &unk_2859525B8;
  v2 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 8);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  realityio::TypeNameDirtyPrimDescriptor::~TypeNameDirtyPrimDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

_BYTE *realityio::TypeNameDirtyPrimDescriptor::TypeNameDirtyPrimDescriptor(_BYTE *a1, uint64_t *a2, void **a3, void **a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v11[0] = v7;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11[0] = v8;
    }
  }

  std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::set[abi:ne200100](v10, v11, 1);
  realityio::TypeNameDirtyPrimDescriptor::TypeNameDirtyPrimDescriptor(a1, v10, a3, a4);
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(v10, v10[1]);
  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a1[56] = (*(*a1 + 48))(a1);
  return a1;
}

void realityio::PrimitiveDirtyPrimDescriptor::~PrimitiveDirtyPrimDescriptor(realityio::PrimitiveDirtyPrimDescriptor *this)
{
  *this = &unk_2859525B8;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_2859525B8;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_2859525B8;
  v2 = (this + 8);
  v3 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x24C1A91B0](this, 0x10A1C402FEF67C7);
}

void *realityio::TypeNameDirtyPrimDescriptor::getExplicitPrimTypes@<X0>(void *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = this[8];
  v3 = this + 9;
  if (v2 != this + 9)
  {
    this = 0;
    do
    {
      if (this >= a2[2])
      {
        this = std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>(a2, v2 + 4);
      }

      else
      {
        v5 = v2[4];
        *this = v5;
        if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *this &= 0xFFFFFFFFFFFFFFF8;
        }

        ++this;
      }

      a2[1] = this;
      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return this;
}

void sub_2475D9E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::TypeNameDirtyPrimDescriptor::validate(void *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdStage *a3, pxrInternal__aapl__pxrReserved__::UsdStage *this, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v33, this, a2);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v33);
  if (a3)
  {
    v17 = IsValid;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v29, a3, a2);
    v19 = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v29);
    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    v18 = v19 ^ 1;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
    if (v30)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30);
    }
  }

  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v35);
  if (v34)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v34);
  }

  if (v18)
  {
    return 0;
  }

  if (!a1[10])
  {
    goto LABEL_27;
  }

  v21 = a1[8];
  v22 = a1 + 9;
  if (v21 != a1 + 9)
  {
    while ((v21[4] ^ *a6) >= 8)
    {
      v23 = v21[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v21[2];
          v25 = *v24 == v21;
          v21 = v24;
        }

        while (!v25);
      }

      v21 = v24;
      if (v24 == v22)
      {
        return 0;
      }
    }
  }

  if (v21 == v22)
  {
    return 0;
  }

LABEL_27:
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v39, a7);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v38, a8);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v37, a9);
  v20 = realityio::PrimitiveDirtyPrimDescriptor::validate(a1, a2, a3, this, v26, v27, v39, v38, v37);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v37);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v38);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v39);
  return v20;
}

void sub_2475DA054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v17 - 120);
  _Unwind_Resume(a1);
}

uint64_t realityio::TypeNameDirtyPrimDescriptor::_isEmpty(realityio::TypeNameDirtyPrimDescriptor *this)
{
  v1 = *(this + 8);
  if (v1 == (this + 72))
  {
LABEL_11:
    v8 = *(this + 56);
  }

  else
  {
    v2 = 1;
    while (1)
    {
      v3 = *(v1 + 4);
      v4 = v3 != 0;
      if (!v3)
      {
        break;
      }

      v5 = *(v1 + 1);
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
          v6 = *(v1 + 2);
          v7 = *v6 == v1;
          v1 = v6;
        }

        while (!v7);
      }

      v2 &= v4;
      v1 = v6;
      if (v6 == (this + 72))
      {
        if (v2)
        {
          goto LABEL_11;
        }

        break;
      }
    }

    v8 = 0;
  }

  return v8 & 1;
}

const void **realityio::TypeNameDirtyPrimDescriptor::description@<X0>(realityio::TypeNameDirtyPrimDescriptor *this@<X0>, CFStringRef *a2@<X8>)
{
  v16 = 0;
  v15 = 2;
  strcpy(v14, ", ");
  v16 = realityio::joinAsCFStringRef((this + 64), v14);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v14[0] = 0;
  v14[0] = realityio::joinAsCFStringRef<realityio::DirtyMetadataDescriptor>(this + 1, realityio::DirtyMetadataDescriptor::description, 0, ", ");
  v13 = 0;
  v4 = realityio::joinAsCFStringRef<realityio::PrimitiveDirtyPropertyDescriptor>(this + 4);
  v5 = *(this + 4);
  v6 = *(this + 5);
  v7 = v14[0];
  v8 = *(this + 1);
  v9 = *(this + 2);
  v10 = v16;
  v11 = *(this + 10);
  *a2 = 0;
  *a2 = CFStringCreateWithFormat(0, 0, @"<TypeNameDirtyPrimDescriptor: %p { typeNameIsAnyOf: [ %lu ](%@), dirtyPrimMetadataContainAnyOf: (%lu) [ %@ ], dirtyPropertiesContainAnyOf: (%lu) [ %@ ] } >", this, v11, v10, (v9 - v8) >> 4, v7, (v6 - v5) >> 4, v4, v4);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v13);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v14);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v16);
}

void sub_2475DA250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v15);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v16 - 48));
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v16 - 24));
  _Unwind_Resume(a1);
}

void sub_2475DA28C()
{
  if (*(v0 - 25) < 0)
  {
    operator delete(*(v0 - 48));
  }

  JUMPOUT(0x2475DA27CLL);
}

void realityio::PrimitiveDirtyPrimDescriptor::getExplicitPrimTypes(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t **std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::set[abi:ne200100](uint64_t **a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::insert[abi:ne200100]<std::__tree_const_iterator<pxrInternal__aapl__pxrReserved__::TfToken,std::__tree_node<pxrInternal__aapl__pxrReserved__::TfToken,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t **std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::insert[abi:ne200100]<std::__tree_const_iterator<pxrInternal__aapl__pxrReserved__::TfToken,std::__tree_node<pxrInternal__aapl__pxrReserved__::TfToken,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(v5, v5 + 1, v4 + 4, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

realityio::tokens::PhysicsBuilderTokens_StaticTokenType *realityio::tokens::PhysicsBuilderTokens_StaticTokenType::PhysicsBuilderTokens_StaticTokenType(realityio::tokens::PhysicsBuilderTokens_StaticTokenType *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "preliminary_isSceneGroundPlane", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v8 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v8, &v9, 1uLL);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return this;
}

void realityio::generatePhysicsMaterialsDirtyStageSubscription(void *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE530D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE530D8))
  {
    operator new();
  }

  v2 = unk_27EE530D0;
  *a1 = _MergedGlobals_23;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_2475DAAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44)
{
  v45 = *(v44 - 120);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  *(v44 - 248) = &a37;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v44 - 248));
  v46 = *(v44 - 136);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  *(v44 - 248) = &a29;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v44 - 248));
  v47 = 88;
  while (1)
  {
    v48 = *(v44 - 240 + v47);
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    v47 -= 16;
    if (v47 == -8)
    {
      if (a14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a14);
      }

      if ((a12 & 7) != 0)
      {
        atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a18);
      }

      if ((a16 & 7) != 0)
      {
        atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a22);
      }

      if ((a20 & 7) != 0)
      {
        atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a24);
      }

      if (a26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a26);
      }

      if (a28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a28);
      }

      *(v44 - 240) = &a32;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v44 - 240));
      *(v44 - 240) = &a40;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v44 - 240));
      MEMORY[0x24C1A91B0](a11, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE530D8);
      _Unwind_Resume(a1);
    }
  }
}

void realityio::generatePhysicsRigidBodyDirtyStageSubscription(void *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE530F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE530F0))
  {
    operator new();
  }

  v2 = *algn_27EE530E8;
  *a1 = qword_27EE530E0;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_2475DB320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  v33 = *(v31 - 120);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  *(v31 - 184) = &a23;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 184));
  v34 = *(v31 - 136);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  *(v31 - 184) = &a15;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 184));
  v35 = 24;
  while (1)
  {
    v36 = *(v31 - 176 + v35);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    v35 -= 16;
    if (v35 == -8)
    {
      if (a12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a12);
      }

      if ((a10 & 7) != 0)
      {
        atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a14);
      }

      *(v31 - 176) = &a18;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
      *(v31 - 176) = &a26;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
      MEMORY[0x24C1A91B0](v30, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE530F0);
      _Unwind_Resume(a1);
    }
  }
}

void realityio::generatePhysicsColliderDirtyStageSubscription(uint64_t *__return_ptr a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE53108, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53108))
  {
    operator new();
  }

  v2 = unk_27EE53100;
  *a1 = qword_27EE530F8;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_2475DB96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  v33 = *(v31 - 120);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  *(v31 - 184) = &a23;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 184));
  v34 = *(v31 - 136);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  *(v31 - 184) = &a15;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 184));
  v35 = 24;
  while (1)
  {
    v36 = *(v31 - 176 + v35);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    v35 -= 16;
    if (v35 == -8)
    {
      if (a12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a12);
      }

      if ((a10 & 7) != 0)
      {
        atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a14);
      }

      *(v31 - 176) = &a18;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
      *(v31 - 176) = &a26;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
      MEMORY[0x24C1A91B0](v30, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE53108);
      _Unwind_Resume(a1);
    }
  }
}

void realityio::generatePhysicsSceneGroundPlaneDirtyStageSubscription(uint64_t *__return_ptr a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE53120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53120))
  {
    operator new();
  }

  v2 = *algn_27EE53118;
  *a1 = qword_27EE53110;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_2475DBFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  v33 = *(v31 - 120);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  *(v31 - 184) = &a23;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 184));
  v34 = *(v31 - 136);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  *(v31 - 184) = &a15;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 184));
  v35 = 24;
  while (1)
  {
    v36 = *(v31 - 176 + v35);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    v35 -= 16;
    if (v35 == -8)
    {
      if (a12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a12);
      }

      if ((a10 & 7) != 0)
      {
        atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a14);
      }

      *(v31 - 176) = &a18;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
      *(v31 - 176) = &a26;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v31 - 176));
      MEMORY[0x24C1A91B0](v30, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE53120);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t realityio::isSceneGroundPlane(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(this);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (result)
  {
    v9 = 0;
    v4 = atomic_load(&realityio::tokens::PhysicsBuilderTokens);
    if (!v4)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::PhysicsBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::PhysicsBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::PhysicsBuilderTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetMetadata(this, v4, v8);
    if (*pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(v8))
    {
      goto LABEL_6;
    }

    v5 = atomic_load(&realityio::tokens::PhysicsBuilderTokens);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::PhysicsBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::PhysicsBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::PhysicsBuilderTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomDataByKey(v7, this, v5);
    v6 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v7);
    if (v6)
    {
LABEL_6:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v8);
      return 1;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v8);
      return 0;
    }
  }

  return result;
}

void sub_2475DC36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va1);
  _Unwind_Resume(a1);
}

uint64_t realityio::getUsdPhysicsAttributeDoubleValue(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, double *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v11, this, a2);
  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v11) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v16, this, a3);
    LODWORD(v11) = v16;
    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
    }

    v12 = v17;
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v13, &v18);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v14, &v19);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v15 = v20;
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
    if (v17)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v11))
  {
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
    v8 = v17;
    if (v17)
    {
      v9 = v17 & 0xFFFFFFFFFFFFFFF8;
      if (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16) == 9)
      {
        goto LABEL_12;
      }

      if ((v17 & 4) != 0)
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v16, MEMORY[0x277D827A8]))
        {
LABEL_12:
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
        }

        v8 = v17;
        if (!v17)
        {
          goto LABEL_23;
        }

        v9 = v17 & 0xFFFFFFFFFFFFFFF8;
      }

      if (*(v9 + 16) == 10 || (v8 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v16, MEMORY[0x277D827B0]))
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<float>();
      }
    }

LABEL_23:
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v16);
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v13);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
  }

  return 0;
}

void sub_2475DC5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va1);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType::~AaplUsdPhysicsTokensType(pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType *this)
{
  v16 = (this + 120);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v16);
  v2 = *(this + 14);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 13);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 12);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 11);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 10);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 9);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 8);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 7);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 6);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 5);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 4);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 3);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 2);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 1);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t RIOBuilderPropertyDeltaGetTypeID()
{
  if (RIOBuilderPropertyDeltaGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderPropertyDeltaGetTypeID::onceToken, &__block_literal_global_13);
  }

  return RIOBuilderPropertyDeltaGetTypeID::typeID;
}

void __RIOBuilderPropertyDeltaGetTypeID_block_invoke()
{
  if (!RIOBuilderPropertyDeltaGetTypeID::typeID)
  {
    RIOBuilderPropertyDeltaGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

__CFArray *RIOBuilderPropertyDeltaCopyDirtyMetadata(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  for (i = *(a1 + 40); i; i = *i)
  {
    v5 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(i + 2);
    CFArrayAppendValue(Mutable, v5);
    realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v5);
  }

  return Mutable;
}

void sub_2475DCA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

void **_RIOBuilderPropertyDeltaCFFinalize(void **a1)
{
  result = std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(a1 + 3);
  v3 = a1[2];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

BOOL realityio::replication::read(realityio *a1, uint64_t a2, std::string *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  __n = 0;
  result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &__n, 1uLL);
  if (result)
  {
    if (__n > 0x7A120)
    {
      v6 = *(realityio::logObjects(result) + 40);
      result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 134217984;
      v14 = 500000;
      v7 = "String count exceeded maximum of %zu";
      v8 = v6;
      v9 = 12;
LABEL_8:
      _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
      return 0;
    }

    std::string::resize(a3, __n, 0);
    v10 = std::istream::read();
    if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
    {
      v11 = *(realityio::logObjects(v10) + 40);
      result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 0;
      v7 = "Failed to read";
      v8 = v11;
      v9 = 2;
      goto LABEL_8;
    }

    return 1;
  }

  return result;
}

BOOL realityio::replication::read(realityio *a1, uint64_t a2, uint64_t *a3)
{
  memset(&__p, 0, sizeof(__p));
  v4 = realityio::replication::read(a1, a2, &__p);
  if (v4)
  {
    MEMORY[0x24C1A5E00](&v7, &__p);
    v5 = *a3;
    *a3 = v7;
    v7 = v5;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_2475DCD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::replication::read(realityio *a1, uint64_t a2, uint64_t a3)
{
  memset(&v11, 0, sizeof(v11));
  v4 = realityio::replication::read(a1, a2, &v11);
  if (v4)
  {
    MEMORY[0x24C1A4E40](__p, &v11);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = *__p;
    *(a3 + 16) = v8;
    HIBYTE(v8) = 0;
    LOBYTE(__p[0]) = 0;
    if (*(a3 + 47) < 0)
    {
      operator delete(*(a3 + 24));
      v5 = SHIBYTE(v8);
      *(a3 + 24) = v9;
      *(a3 + 40) = v10;
      HIBYTE(v10) = 0;
      LOBYTE(v9) = 0;
      if (v5 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *(a3 + 24) = v9;
      *(a3 + 40) = v10;
    }
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v4;
}

{
  memset(&__p, 0, sizeof(__p));
  v4 = realityio::replication::read(a1, a2, &__p);
  if (v4)
  {
    MEMORY[0x24C1A5D70](&v6, &__p);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a3, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a3 + 4, &v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

{
  memset(&v8, 0, sizeof(v8));
  if (realityio::replication::read(a1, a2, &v8))
  {
    MEMORY[0x24C1A4E40](&v9, &v8);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    }

    else
    {
      v12 = v9;
    }

    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v12;
    *(&v12.__r_.__value_.__s + 23) = 0;
    v12.__r_.__value_.__s.__data_[0] = 0;
    if (v11 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    if (realityio::replication::read(a1, v6, &v12))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a3 + 24, &v12);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a3 + 28, v12.__r_.__value_.__r.__words + 1);
      pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v9, 0.0, 1.0);
      v5 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, &v9, 1uLL);
      if (v5)
      {
        *(a3 + 32) = *&v9.__r_.__value_.__l.__data_;
      }
    }

    else
    {
      v5 = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  }

  else
  {
    v5 = 0;
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_2475DCE2C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::replication::details::readMap<pxrInternal__aapl__pxrReserved__::VtDictionary>(realityio *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  result = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v14, 1uLL);
  if (result)
  {
    if (v14)
    {
      v7 = 0;
      while (1)
      {
        memset(&__p, 0, sizeof(__p));
        if (!realityio::replication::read(a1, v6, &__p))
        {
          break;
        }

        v16 = 0;
        if ((realityio::replication::read(a1, a2, &v15) & 1) == 0)
        {
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v15);
          break;
        }

        v8 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]();
        v9 = v8;
        if (v8 != &v15)
        {
          if (v16)
          {
            pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v17, v8);
            v10 = v16;
            v11 = ~v16;
            v9[1] = v16;
            if ((v11 & 3) != 0)
            {
              (*((v10 & 0xFFFFFFFFFFFFFFF8) + 24))(&v15, v9);
            }

            else
            {
              *v9 = v15;
            }

            if (v18)
            {
              (*(v18 + 32))(v17);
            }
          }

          else
          {
            v12 = v8[1];
            if (v12 && (v8[1] & 3) != 3)
            {
              (*((v12 & 0xFFFFFFFFFFFFFFF8) + 32))(v8);
            }

            v9[1] = 0;
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v15);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v14 <= ++v7)
        {
          return 1;
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_2475DD0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2475DD280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::replication::read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v33 = 0;
  IsImpl = realityio::replication::read(a1, a2, &v32);
  if (IsImpl)
  {
    v5 = v33;
    if (v33)
    {
      v6 = v33 & 0xFFFFFFFFFFFFFFF8;
      if (*((v33 & 0xFFFFFFFFFFFFFFF8) + 16) == 12)
      {
        goto LABEL_4;
      }

      if ((v33 & 4) != 0)
      {
        v5 = v33;
        if (IsImpl)
        {
LABEL_4:
          if ((v5 & 4) != 0)
          {
            (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v32);
          }

          pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue();
          if (&__p == a3)
          {
            goto LABEL_63;
          }

          if (v23)
          {
            pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&v25, a3);
            v7 = v23;
            v8 = ~v23;
            *(a3 + 8) = v23;
            if ((v8 & 3) != 0)
            {
              (*((v7 & 0xFFFFFFFFFFFFFFF8) + 40))(&__p, a3);
            }

            else
            {
              *a3 = __p;
            }

            v23 = 0;
            if (!v26)
            {
              goto LABEL_63;
            }

            goto LABEL_67;
          }

          v12 = *(a3 + 8);
          if (!v12 || (*(a3 + 8) & 3) == 3)
          {
LABEL_62:
            *(a3 + 8) = 0;
LABEL_63:
            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
            v16 = 1;
            goto LABEL_64;
          }

LABEL_61:
          (*((v12 & 0xFFFFFFFFFFFFFFF8) + 32))(a3);
          goto LABEL_62;
        }

        if (!v33)
        {
          goto LABEL_47;
        }

        v6 = v33 & 0xFFFFFFFFFFFFFFF8;
      }

      if (!strcmp((*(*v6 + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12VtDictionaryE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
LABEL_17:
        if ((v5 & 4) != 0)
        {
          v9 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v32);
        }

        else
        {
          v9 = v32;
        }

        pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(&__p, v9);
        if (&__p == a3)
        {
          goto LABEL_63;
        }

        if (!v23)
        {
          v12 = *(a3 + 8);
          if (!v12 || (*(a3 + 8) & 3) == 3)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&v25, a3);
        v10 = v23;
        v11 = ~v23;
        *(a3 + 8) = v23;
        if ((v11 & 3) != 0)
        {
          (*((v10 & 0xFFFFFFFFFFFFFFF8) + 40))(&__p, a3);
        }

        else
        {
          *a3 = __p;
        }

        v23 = 0;
        if (!v26)
        {
          goto LABEL_63;
        }

        goto LABEL_67;
      }

      if ((v5 & 4) == 0)
      {
        goto LABEL_37;
      }

      v5 = v33;
      if (IsImpl)
      {
        goto LABEL_17;
      }

      if (v33)
      {
        v6 = v33 & 0xFFFFFFFFFFFFFFF8;
LABEL_37:
        IsImpl = strcmp((*(*v6 + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpINS_20SdfUnregisteredValueEEE" & 0x7FFFFFFFFFFFFFFFLL));
        if (!IsImpl)
        {
LABEL_41:
          if ((v5 & 4) != 0)
          {
            (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(&v32);
          }

          pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue();
          if (&__p == a3)
          {
            goto LABEL_63;
          }

          if (!v23)
          {
            v12 = *(a3 + 8);
            if (!v12 || (*(a3 + 8) & 3) == 3)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }

          pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&v25, a3);
          v13 = v23;
          v14 = ~v23;
          *(a3 + 8) = v23;
          if ((v14 & 3) != 0)
          {
            (*((v13 & 0xFFFFFFFFFFFFFFF8) + 40))(&__p, a3);
          }

          else
          {
            *a3 = __p;
          }

          v23 = 0;
          if (!v26)
          {
            goto LABEL_63;
          }

LABEL_67:
          (*(v26 + 32))(&v25);
          goto LABEL_63;
        }

        if ((v5 & 4) != 0)
        {
          if (IsImpl)
          {
            v5 = v33;
            goto LABEL_41;
          }
        }
      }
    }

LABEL_47:
    v15 = *(realityio::logObjects(IsImpl) + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v25, &v32);
      v17 = v27;
      v18 = v25;
      pxrInternal__aapl__pxrReserved__::TfStringify<pxrInternal__aapl__pxrReserved__::VtValue>();
      v19 = &v25;
      if (v17 < 0)
      {
        v19 = v18;
      }

      if (v24 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315394;
      v29 = v19;
      v30 = 2080;
      v31 = p_p;
      _os_log_error_impl(&dword_247485000, v15, OS_LOG_TYPE_ERROR, "Deserialized SdfUnregisteredValue contains invalid type '%s' = '%s'; expected string, VtDictionary or SdfUnregisteredValueListOp", buf, 0x16u);
      if (v24 < 0)
      {
        operator delete(__p);
      }

      if (v27 < 0)
      {
        operator delete(v25);
      }
    }
  }

  v16 = 0;
LABEL_64:
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v32);
  return v16;
}

void sub_2475DD710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::replication::read(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v6 = realityio::replication::details::readBuffer<unsigned char,0>(a1, &v12, 1);
  result = 0;
  if (v6)
  {
    if (v12)
    {
      v11 = 0;
      result = realityio::replication::details::readBuffer<unsigned short,0>(a1, &v11);
      if (result)
      {
        switch(v11)
        {
          case 1u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(a1, a2, a3);
            break;
          case 2u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(a1, a3);
            break;
          case 3u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a1, a3);
            break;
          case 4u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(a1, a3);
            break;
          case 5u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(a1, a3);
            break;
          case 6u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(a1, a3);
            break;
          case 7u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>(a1, a3);
            break;
          case 8u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<float>>(a1, a3);
            break;
          case 9u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<double>>(a1, a2, a3);
            break;
          case 0xAu:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(a1, a2, a3);
            break;
          case 0xBu:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, a2, a3);
            break;
          case 0xCu:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(a1, a2, a3);
            break;
          case 0xDu:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>(a1, a3);
            break;
          case 0xEu:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>(a1, a3);
            break;
          case 0xFu:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(a1, a3);
            break;
          case 0x10u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>(a1, a3);
            break;
          case 0x11u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(a1, a3);
            break;
          case 0x12u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>(a1, a3);
            break;
          case 0x13u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(a1, a3);
            break;
          case 0x14u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(a1, a3);
            break;
          case 0x15u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(a1, a3);
            break;
          case 0x16u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>(a1, a3);
            break;
          case 0x17u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(a1, a3);
            break;
          case 0x18u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(a1, a3);
            break;
          case 0x19u:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(a1, a3);
            break;
          case 0x1Au:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>(a1, a3);
            break;
          case 0x1Bu:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(a1, a3);
            break;
          case 0x1Cu:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(a1, a3);
            break;
          case 0x1Du:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(a1, a3);
            break;
          case 0x1Eu:
            result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>(a1, a3);
            break;
          default:
            v9 = *(realityio::logObjects(result) + 40);
            result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
            if (result)
            {
              *buf = 67109120;
              v14 = v11;
              v10 = "Deserialized VtValue contains array with invalid element type '%u'";
              goto LABEL_42;
            }

            break;
        }
      }
    }

    else
    {
      v11 = 0;
      v8 = realityio::replication::details::readBuffer<unsigned short,0>(a1, &v11);
      switch(v11)
      {
        case 1u:
          result = realityio::replication::readContents<BOOL>(a1, a2, a3);
          break;
        case 2u:
          result = realityio::replication::readContents<unsigned char>(a1, a3);
          break;
        case 3u:
          result = realityio::replication::readContents<int>(a1, a3);
          break;
        case 4u:
          result = realityio::replication::readContents<unsigned int>(a1, a3);
          break;
        case 5u:
          result = realityio::replication::readContents<long long>(a1, a3);
          break;
        case 6u:
          result = realityio::replication::readContents<unsigned long long>(a1, a3);
          break;
        case 7u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::pxr_half::half>(a1, a3);
          break;
        case 8u:
          result = realityio::replication::readContents<float>(a1, a3);
          break;
        case 9u:
          result = realityio::replication::readContents<double>(a1, a2, a3);
          break;
        case 0xAu:
          result = realityio::replication::readContents<std::string>(a1, a2, a3);
          break;
        case 0xBu:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::TfToken>(a1, a2, a3);
          break;
        case 0xCu:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(a1, a2, a3);
          break;
        case 0xDu:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(a1, a3);
          break;
        case 0xEu:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(a1, a3);
          break;
        case 0xFu:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(a1, a3);
          break;
        case 0x10u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfQuatd>(a1, a3);
          break;
        case 0x11u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfQuatf>(a1, a3);
          break;
        case 0x12u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfQuath>(a1, a3);
          break;
        case 0x13u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec2d>(a1, a3);
          break;
        case 0x14u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec2f>(a1, a3);
          break;
        case 0x15u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec2h>(a1, a3);
          break;
        case 0x16u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec2i>(a1, a3);
          break;
        case 0x17u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec3d>(a1, a3);
          break;
        case 0x18u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec3f>(a1, a3);
          break;
        case 0x19u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec3h>(a1, a3);
          break;
        case 0x1Au:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec3i>(a1, a3);
          break;
        case 0x1Bu:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec4d>(a1, a3);
          break;
        case 0x1Cu:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec4f>(a1, a3);
          break;
        case 0x1Du:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec4h>(a1, a3);
          break;
        case 0x1Eu:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec4i>(a1, a3);
          break;
        case 0x1Fu:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtDictionary>(a1, a2, a3);
          break;
        case 0x20u:
          realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, a2, a3);
        case 0x21u:
          realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>(a1, a2, a3);
        case 0x22u:
          realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, a2, a3);
        case 0x23u:
          realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>(a1, a2, a3);
        case 0x24u:
          realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>(a1, a3);
        case 0x25u:
          realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>(a1, a3);
        case 0x26u:
          realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>(a1, a3);
        case 0x27u:
          realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>(a1, a3);
        case 0x28u:
          result = realityio::replication::readContents<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, a2, a3);
          break;
        case 0x29u:
          result = realityio::replication::readContents<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, a2, a3);
          break;
        case 0x2Au:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfSpecifier>(a1, a3);
          break;
        case 0x2Bu:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfPermission>(a1, a3);
          break;
        case 0x2Cu:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfVariability>(a1, a3);
          break;
        case 0x2Du:
          result = realityio::replication::readContents<std::map<std::string,std::string>>(a1, a2, a3);
          break;
        case 0x2Fu:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfPayload>(a1, a2, a3);
          break;
        case 0x30u:
          result = realityio::replication::readContents<std::vector<double>>(a1, a2, a3);
          break;
        case 0x31u:
          result = realityio::replication::readContents<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>(a1, a3);
          break;
        case 0x32u:
          result = realityio::replication::readContents<std::vector<std::string>>(a1, a2, a3);
          break;
        case 0x33u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfValueBlock>(a1, a3);
          break;
        case 0x34u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtValue>(a1, a2, a3);
          break;
        case 0x35u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>(a1, a2, a3);
          break;
        case 0x36u:
          realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(a1, a2, a3);
        case 0x37u:
          realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>(a1, a2, a3);
        case 0x38u:
          result = realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfTimeCode>(a1, a3);
          break;
        default:
          v9 = *(realityio::logObjects(v8) + 40);
          result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 67109120;
            v14 = v11;
            v10 = "Deserialized VtValue has invalid value type '%u'";
LABEL_42:
            _os_log_error_impl(&dword_247485000, v9, OS_LOG_TYPE_ERROR, v10, buf, 8u);
            result = 0;
          }

          break;
      }
    }
  }

  return result;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  *&v14[5] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v5 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v12, 1uLL);
  if (v5)
  {
    v6 = v12;
    if (v12 <= 0x7A120)
    {
      if (v12 != *&v10[0])
      {
        if (v12)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_AllocateNew(v10, v12);
          bzero(New, v6);
          if (New != v11)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v10);
            v11 = New;
          }

          *&v10[0] = v6;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v10);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DetachIfNotUnique(v10);
      if (realityio::replication::details::readBuffer<BOOL,0>(a1, a2, v11, v12))
      {
        *&v14[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy(buf, v10);
      }
    }

    else
    {
      v7 = *(realityio::logObjects(v5) + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v14 = 500000;
        _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v10);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_AllocateNew(v8, v10);
          bzero(New, v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned char,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<int>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0;
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v8, 1uLL);
  if (v3)
  {
    if (v8 <= 0x7A120)
    {
      v9 = 0;
      *&buf = &v9;
      pxrInternal__aapl__pxrReserved__::VtArray<int>::resize<pxrInternal__aapl__pxrReserved__::VtArray<int>::assign(unsigned long,int const&)::_Filler>(v6, v8, &buf);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v6);
      if (realityio::replication::details::readBuffer<int,0>(a1, v7, v8))
      {
        *(&buf + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy(&buf, v6);
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v6);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_AllocateNew(v8, v10);
          bzero(New, 4 * v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<int,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<long long>::_AllocateNew(v8, v10);
          bzero(New, 8 * v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_AllocateNew(v8, v10);
          bzero(New, 8 * v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_AllocateNew(v8, v10);
          bzero(New, 2 * v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::pxr_half::half,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<float>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v9 = 0;
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v9, 1uLL);
  if (v3)
  {
    if (v9 <= 0x7A120)
    {
      v10 = 0;
      *&buf = &v10;
      pxrInternal__aapl__pxrReserved__::VtArray<float>::resize<pxrInternal__aapl__pxrReserved__::VtArray<float>::resize(unsigned long,float const&)::{lambda(float *,float *)#1}>(v7, v9, &buf, v4);
      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(v7);
      if (realityio::replication::details::readBuffer<int,0>(a1, v8, v9))
      {
        *(&buf + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>::_PlaceCopy(&buf, v7);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v7);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<double>>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v5 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v5)
  {
    if (v10 <= 0x7A120)
    {
      v11 = 0;
      *&buf = &v11;
      pxrInternal__aapl__pxrReserved__::VtArray<double>::resize<pxrInternal__aapl__pxrReserved__::VtArray<double>::resize(unsigned long,double const&)::{lambda(double *,double *)#1}>(v8, v10, &buf);
      pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<double,0>(a1, a2, v9, v10))
      {
        *(&buf + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<double>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>::_PlaceCopy(&buf, v8);
      }
    }

    else
    {
      v6 = *(realityio::logObjects(v5) + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  v4 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v18, 1uLL);
  if (v4)
  {
    v5 = v18;
    if (v18 <= 0x7A120)
    {
      *(&buf + 3) = 0;
      LODWORD(buf) = 0;
      if (*&v16[0] != v18)
      {
        if (v18)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateNew(v16, v18);
          bzero(New, 24 * v5 - (24 * v5 - 24) % 0x18u);
          if (New != v17)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(v16);
            v17 = New;
          }

          *&v16[0] = v5;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<std::string>::clear(v16);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(v16);
      v9 = v18;
      if (!v18)
      {
        goto LABEL_19;
      }

      v10 = v17;
      if (realityio::replication::read(a1, v8, v17))
      {
        v12 = 0;
        v13 = v10 + 1;
        do
        {
          if (v9 - 1 == v12)
          {
            goto LABEL_19;
          }

          v14 = realityio::replication::read(a1, v11, v13++);
          ++v12;
        }

        while (v14);
        if (v12 >= v9)
        {
LABEL_19:
          *(&buf + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(void)::ti;
          pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(&buf, v16);
        }
      }
    }

    else
    {
      v6 = *(realityio::logObjects(v4) + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(v16);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  *&v20[5] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  v4 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v18, 1uLL);
  if (v4)
  {
    v5 = v18;
    if (v18 <= 0x7A120)
    {
      if (v18 != *&v16[0])
      {
        if (v18)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateNew(v16, v18);
          bzero(New, 8 * v5);
          if (New != v17)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(v16);
            v17 = New;
          }

          *&v16[0] = v5;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::clear(v16);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(v16);
      v9 = v18;
      if (!v18)
      {
        goto LABEL_19;
      }

      v10 = v17;
      if (realityio::replication::read(a1, v8, v17))
      {
        v12 = 0;
        v13 = v10 + 1;
        do
        {
          if (v9 - 1 == v12)
          {
            goto LABEL_19;
          }

          v14 = realityio::replication::read(a1, v11, v13++);
          ++v12;
        }

        while (v14);
        if (v12 >= v9)
        {
LABEL_19:
          *&v20[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(void)::ti;
          pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v16);
        }
      }
    }

    else
    {
      v6 = *(realityio::logObjects(v4) + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v20 = 500000;
        _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(v16);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v5 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v17, 1uLL);
  if (v5)
  {
    v6 = v17;
    if (v17 <= 0x7A120)
    {
      pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(buf);
      if (*&v15[0] != v6)
      {
        if (v6)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_AllocateNew(v15, v6);
          std::__uninitialized_fill[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath>(New, &New[2 * v6], buf);
          if (New != v16)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(v15);
            v16 = New;
          }

          *&v15[0] = v6;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::clear(v15);
        }
      }

      if (v20 < 0)
      {
        operator delete(__p);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DetachIfNotUnique(v15);
      v9 = v17;
      if (!v17)
      {
        goto LABEL_23;
      }

      v10 = v16;
      if (realityio::replication::read(a1, a2, v16))
      {
        v11 = 0;
        v12 = v10 + 48;
        do
        {
          if (v9 - 1 == v11)
          {
            goto LABEL_23;
          }

          v13 = realityio::replication::read(a1, a2, v12);
          v12 += 48;
          ++v11;
        }

        while (v13);
        if (v11 >= v9)
        {
LABEL_23:
          *&buf[8] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(void)::ti;
          pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v15);
        }
      }
    }

    else
    {
      v7 = *(realityio::logObjects(v5) + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(v15);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_AllocateNew(v8, v10);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfQuatd,0>(a1, v9, v10))
      {
        *&buf[8] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *&v11[5] = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0;
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v8, 1uLL);
  if (v3)
  {
    if (v8 <= 0x7A120)
    {
      v9 = buf;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfQuatf const&)::_Filler>(v6, v8, &v9);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(v6);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, v7, v8))
      {
        *&v11[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v6);
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v11 = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v6);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_AllocateNew(v8, v10);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      buf[0] = 0;
      buf[1] = 0;
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_AllocateNew(v8, v10);
          bzero(New, 16 * v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, v9, v10))
      {
        buf[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_AllocateNew(v8, v10);
          bzero(New, 8 * v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_AllocateNew(v8, v10);
          bzero(New, 4 * v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<int,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_AllocateNew(v8, v10);
          bzero(New, 8 * v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0;
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v8, 1uLL);
  if (v3)
  {
    if (v8 <= 0x7A120)
    {
      buf = 0uLL;
      v11 = 0;
      p_buf = &buf;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::resize(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3d const&)::{lambda(pxrInternal__aapl__pxrReserved__::GfVec3d*,pxrInternal__aapl__pxrReserved__::GfVec3d*)#1}>(v6, v8, &p_buf);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DetachIfNotUnique(v6);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3d,0>(a1, v7, v8))
      {
        *(&buf + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(&buf, v6);
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v6);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0;
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v8, 1uLL);
  if (v3)
  {
    if (v8 <= 0x7A120)
    {
      DWORD2(buf) = 0;
      p_buf = &buf;
      *&buf = 0;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3f const&)::_Filler>(v6, v8, &p_buf);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(v6);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3f,0>(a1, v7, v8))
      {
        *(&buf + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(&buf, v6);
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v6);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0;
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v8, 1uLL);
  if (v3)
  {
    if (v8 <= 0x7A120)
    {
      v10 = 0;
      v9 = 0;
      *&buf = &v9;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3h const&)::_Filler>(v6, v8, &buf);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DetachIfNotUnique(v6);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3h,0>(a1, v7, v8))
      {
        *(&buf + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(&buf, v6);
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v6);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      DWORD2(buf) = 0;
      *&buf = 0;
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_AllocateNew(v8, v10);
          bzero(New, 12 * v4 - (12 * v4 - 12) % 0xCu);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3f,0>(a1, v9, v10))
      {
        *(&buf + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(&buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", &buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      *buf = 0u;
      v12 = 0u;
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_AllocateNew(v8, v10);
          bzero(New, 32 * v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfQuatd,0>(a1, v9, v10))
      {
        *&buf[8] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      buf[0] = 0;
      buf[1] = 0;
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_AllocateNew(v8, v10);
          bzero(New, 16 * v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, v9, v10))
      {
        buf[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      if (v10 != *&v8[0])
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_AllocateNew(v8, v10);
          bzero(New, 8 * v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, v9, v10))
      {
        *&v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v12 = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      buf[0] = 0;
      buf[1] = 0;
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_AllocateNew(v8, v10);
          bzero(New, 16 * v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, v9, v10))
      {
        buf[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      *buf = 0u;
      v12 = 0u;
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_AllocateNew(v8, v10);
          bzero(New, 32 * v4);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfQuatd,0>(a1, v9, v10))
      {
        *&buf[8] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v10, 1uLL);
  if (v3)
  {
    v4 = v10;
    if (v10 <= 0x7A120)
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      *buf = 0u;
      v12 = 0u;
      if (*&v8[0] != v10)
      {
        if (v10)
        {
          New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_AllocateNew(v8, v10);
          bzero(New, 72 * v4 - (72 * v4 - 72) % 0x48u);
          if (New != v9)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
            v9 = New;
          }

          *&v8[0] = v4;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(v8);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DetachIfNotUnique(v8);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfMatrix3d,0>(a1, v9, v10))
      {
        *&buf[8] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v8);
      }
    }

    else
    {
      v5 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v5, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v8);
  return 0;
}

uint64_t realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0;
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v8, 1uLL);
  if (v3)
  {
    if (v8 <= 0x7A120)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      *buf = 0u;
      v11 = 0u;
      v9 = buf;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::resize(unsigned long,pxrInternal__aapl__pxrReserved__::GfMatrix4d const&)::{lambda(pxrInternal__aapl__pxrReserved__::GfMatrix4d*,pxrInternal__aapl__pxrReserved__::GfMatrix4d*)#1}>(v6, v8, &v9);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DetachIfNotUnique(v6);
      if (realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfMatrix4d,0>(a1, v7, v8))
      {
        *&buf[8] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(buf, v6);
      }
    }

    else
    {
      v4 = *(realityio::logObjects(v3) + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = 500000;
        _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, "Vector count exceeded maximum of %zu", buf, 0xCu);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v6);
  return 0;
}

BOOL realityio::replication::readContents<BOOL>(void *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v4 = realityio::replication::details::readBuffer<BOOL,0>(a1, a2, &v6, 1);
  if (v4)
  {
    v8 = &unk_285946C7B;
    v7[0] = v6;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a3, v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v7);
  }

  return v4;
}

BOOL realityio::replication::readContents<unsigned char>(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v3 = realityio::replication::details::readBuffer<unsigned char,0>(a1, &v5, 1);
  if (v3)
  {
    v7 = &unk_28594AF13;
    v6[0] = v5;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v6);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v6);
  }

  return v3;
}

BOOL realityio::replication::readContents<int>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v3 = realityio::replication::details::readBuffer<int,0>(a1, &v5, 1uLL);
  if (v3)
  {
    v7 = &unk_28594ADA3;
    v6 = v5;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, &v6);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v6);
  }

  return v3;
}

BOOL realityio::replication::readContents<unsigned int>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v3 = realityio::replication::details::readBuffer<int,0>(a1, &v5, 1uLL);
  if (v3)
  {
    v7 = &unk_28594AFCB;
    v6 = v5;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, &v6);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v6);
  }

  return v3;
}

BOOL realityio::replication::readContents<long long>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v5, 1uLL);
  if (v3)
  {
    v6[0] = v5;
    v6[1] = &unk_28594AE5B;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v6);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v6);
  }

  return v3;
}

BOOL realityio::replication::readContents<unsigned long long>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v5, 1uLL);
  if (v3)
  {
    v6[0] = v5;
    v6[1] = &unk_28594B083;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v6);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v6);
  }

  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::pxr_half::half>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::pxr_half::half,0>(a1, &v5, 1);
  if (v3)
  {
    v7 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::pxr_half::half>(void)::ti + 3;
    v6 = v5;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, &v6);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v6);
  }

  return v3;
}

BOOL realityio::replication::readContents<float>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v3 = realityio::replication::details::readBuffer<int,0>(a1, &v5, 1uLL);
  if (v3)
  {
    v7 = &unk_2859471F3;
    v6 = v5;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, &v6);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v6);
  }

  return v3;
}

BOOL realityio::replication::readContents<double>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v4 = realityio::replication::details::readBuffer<double,0>(a1, a2, &v6, 1uLL);
  if (v4)
  {
    v7[1] = &unk_285946DC3;
    v7[0] = v6;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a3, v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v7);
  }

  return v4;
}

BOOL realityio::replication::readContents<std::string>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v6[2] = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  v3 = realityio::replication::read(a1, a2, &__p);
  if (v3)
  {
    v6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::string>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::string>::_PlaceCopy(v6, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_2475E2FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::TfToken>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v4 = realityio::replication::read(a1, a2, &v8);
  if (!v4)
  {
    v5 = v8;
    if ((v8 & 7) == 0)
    {
      return v4;
    }

LABEL_8:
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    return v4;
  }

  v5 = v8;
  v9[0] = v8;
  v9[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::TfToken>(void)::ti + 1;
  v6 = v8 & 7;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v9[0] = v5 & 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::Swap(a3, v9);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v9);
  if (v6)
  {
    goto LABEL_8;
  }

  return v4;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v7);
  v5 = realityio::replication::read(a1, a2, v7);
  if (v5)
  {
    v11[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_PlaceCopy(v11, v7);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return v5;
}

void sub_2475E31B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(va);
  _Unwind_Resume(a1);
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfQuatd>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfQuatd,0>(a1, &v4, 1uLL);
  if (v2)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatd>(void)::ti;
    operator new();
  }

  return v2;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfQuatf>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, &v4, 1uLL);
  if (v2)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatf>(void)::ti;
    operator new();
  }

  return v2;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfQuath>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v5, 1uLL);
  if (v3)
  {
    v6[0] = v5;
    v6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuath>(void)::ti + 1;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v6);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v6);
  }

  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec2d>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, &v4, 1uLL);
  if (v2)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2d>(void)::ti + 2;
    operator new();
  }

  return v2;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec2f>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v5, 1uLL);
  if (v3)
  {
    v6[0] = v5;
    v6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2f>(void)::ti + 3;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v6);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v6);
  }

  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec2h>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<int,0>(a1, &v5, 1uLL);
  if (v3)
  {
    v7 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2h>(void)::ti + 3;
    v6 = v5;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, &v6);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v6);
  }

  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec2i>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v5, 1uLL);
  if (v3)
  {
    v6[0] = v5;
    v6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2i>(void)::ti + 3;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v6);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v6);
  }

  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec3d>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3d,0>(a1, &v4, 1uLL);
  if (v2)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3d>(void)::ti + 2;
    operator new();
  }

  return v2;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec3f>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *&v4[7] = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3f,0>(a1, v4, 1uLL);
  if (v2)
  {
    *&v4[5] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3f>(void)::ti + 2;
    operator new();
  }

  return v2;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec3h>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3h,0>(a1, &v5, 1uLL);
  if (v3)
  {
    v9 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3h>(void)::ti + 3;
    v7 = v5;
    v8 = v6;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, &v7);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v7);
  }

  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec3i>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  *&v4[7] = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfVec3f,0>(a1, v4, 1uLL);
  if (v2)
  {
    *&v4[5] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3i>(void)::ti + 2;
    operator new();
  }

  return v2;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec4d>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfQuatd,0>(a1, &v4, 1uLL);
  if (v2)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4d>(void)::ti + 2;
    operator new();
  }

  return v2;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec4f>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, &v4, 1uLL);
  if (v2)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4f>(void)::ti + 2;
    operator new();
  }

  return v2;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec4h>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v3 = realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v5, 1uLL);
  if (v3)
  {
    v6[0] = v5;
    v6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4h>(void)::ti + 3;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, v6);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v6);
  }

  return v3;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfVec4i>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>(a1, &v4, 1uLL);
  if (v2)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4i>(void)::ti + 2;
    operator new();
  }

  return v2;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfQuatd,0>(a1, &v4, 1uLL);
  if (v2)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(void)::ti + 2;
    operator new();
  }

  return v2;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfMatrix3d,0>(a1, &v4, 1uLL);
  if (v2)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(void)::ti + 2;
    operator new();
  }

  return v2;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(realityio *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::GfMatrix4d,0>(a1, &v4, 1uLL);
  if (v2)
  {
    v5 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(void)::ti + 2;
    operator new();
  }

  return v2;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::VtDictionary>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v3 = realityio::replication::details::readMap<pxrInternal__aapl__pxrReserved__::VtDictionary>(a1, a2, &v6);
  if (v3)
  {
    v7[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtDictionary>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtDictionary>::_PlaceCopy(v7, &v6);
  }

  v4 = v6;
  v6 = 0;
  if (v4)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v4, *(v4 + 8));
    MEMORY[0x24C1A91B0](v4, 0x1020C4062D53EE8);
  }

  return v3;
}

void sub_2475E42F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  *(v30 - 88) = v29;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100]((v30 - 88));
  a29 = (v30 - 168);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a29);
  *(v30 - 168) = v30 - 144;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100]((v30 - 168));
  *(v30 - 144) = v30 - 120;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100]((v30 - 144));
  *(v30 - 120) = v30 - 80;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100]((v30 - 120));
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::~SdfListOp(&a10);
  _Unwind_Resume(a1);
}

void sub_2475E4684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  *(v30 - 88) = v29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v30 - 88));
  a29 = (v30 - 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a29);
  *(v30 - 168) = v30 - 144;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v30 - 168));
  *(v30 - 144) = v30 - 120;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v30 - 144));
  *(v30 - 120) = v30 - 80;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v30 - 120));
  pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>::~SdfListOp(&a10);
  _Unwind_Resume(a1);
}

void sub_2475E4A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  *(v30 - 88) = v29;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v30 - 88));
  a29 = (v30 - 168);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a29);
  *(v30 - 168) = v30 - 144;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v30 - 168));
  *(v30 - 144) = v30 - 120;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v30 - 144));
  *(v30 - 120) = v30 - 80;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v30 - 120));
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::~SdfListOp(&a10);
  _Unwind_Resume(a1);
}

void sub_2475E4DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(v30 - 88) = v29;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100]((v30 - 88));
  a29 = v30 - 168;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&a29);
  *(v30 - 168) = v30 - 144;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100]((v30 - 168));
  *(v30 - 144) = v30 - 120;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100]((v30 - 144));
  *(v30 - 120) = v30 - 80;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100]((v30 - 120));
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>::~SdfListOp(&a10);
  _Unwind_Resume(a1);
}

void sub_2475E50FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  v31 = *(v29 - 144);
  if (v31)
  {
    *(v29 - 136) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 120);
  if (v32)
  {
    *(v29 - 112) = v32;
    operator delete(v32);
  }

  v33 = *(v29 - 96);
  if (v33)
  {
    *(v29 - 88) = v33;
    operator delete(v33);
  }

  v34 = *(v29 - 64);
  if (v34)
  {
    *(v29 - 56) = v34;
    operator delete(v34);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::~SdfListOp(&a9);
  _Unwind_Resume(a1);
}

void sub_2475E5458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  v31 = *(v29 - 144);
  if (v31)
  {
    *(v29 - 136) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 120);
  if (v32)
  {
    *(v29 - 112) = v32;
    operator delete(v32);
  }

  v33 = *(v29 - 96);
  if (v33)
  {
    *(v29 - 88) = v33;
    operator delete(v33);
  }

  v34 = *(v29 - 64);
  if (v34)
  {
    *(v29 - 56) = v34;
    operator delete(v34);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::~SdfListOp(&a9);
  _Unwind_Resume(a1);
}

void sub_2475E57AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  v31 = *(v29 - 144);
  if (v31)
  {
    *(v29 - 136) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 120);
  if (v32)
  {
    *(v29 - 112) = v32;
    operator delete(v32);
  }

  v33 = *(v29 - 96);
  if (v33)
  {
    *(v29 - 88) = v33;
    operator delete(v33);
  }

  v34 = *(v29 - 64);
  if (v34)
  {
    *(v29 - 56) = v34;
    operator delete(v34);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::~SdfListOp(&a9);
  _Unwind_Resume(a1);
}

void sub_2475E5B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  v31 = *(v29 - 144);
  if (v31)
  {
    *(v29 - 136) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 120);
  if (v32)
  {
    *(v29 - 112) = v32;
    operator delete(v32);
  }

  v33 = *(v29 - 96);
  if (v33)
  {
    *(v29 - 88) = v33;
    operator delete(v33);
  }

  v34 = *(v29 - 64);
  if (v34)
  {
    *(v29 - 56) = v34;
    operator delete(v34);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<int>::~SdfListOp(&a9);
  _Unwind_Resume(a1);
}

BOOL realityio::replication::readContents<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v6[2] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v3 = realityio::replication::details::readVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, a2, v5);
  if (v3)
  {
    v6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::_PlaceCopy(v6, v5);
  }

  v6[0] = v5;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](v6);
  return v3;
}

void sub_2475E5C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

BOOL realityio::replication::readContents<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v6[2] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v3 = realityio::replication::details::readVector<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, a2, v5);
  if (v3)
  {
    v6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::_PlaceCopy(v6, v5);
  }

  v6[0] = v5;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](v6);
  return v3;
}

void sub_2475E5D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfSpecifier>(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = std::istream::read();
  v5 = *(a1 + *(*a1 - 24) + 32) & 5;
  if (v5)
  {
    v6 = *(realityio::logObjects(v4) + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Failed to read", buf, 2u);
    }
  }

  else
  {
    v9 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfSpecifier>(void)::ti + 3;
    *buf = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, buf);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
  }

  return v5 == 0;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfPermission>(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = std::istream::read();
  v5 = *(a1 + *(*a1 - 24) + 32) & 5;
  if (v5)
  {
    v6 = *(realityio::logObjects(v4) + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Failed to read", buf, 2u);
    }
  }

  else
  {
    v9 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPermission>(void)::ti + 3;
    *buf = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, buf);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
  }

  return v5 == 0;
}

BOOL realityio::replication::readContents<pxrInternal__aapl__pxrReserved__::SdfVariability>(void *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = std::istream::read();
  v5 = *(a1 + *(*a1 - 24) + 32) & 5;
  if (v5)
  {
    v6 = *(realityio::logObjects(v4) + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_247485000, v6, OS_LOG_TYPE_ERROR, "Failed to read", buf, 2u);
    }
  }

  else
  {
    v9 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfVariability>(void)::ti + 3;
    *buf = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::Swap(a2, buf);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
  }

  return v5 == 0;
}

uint64_t realityio::replication::readContents<std::map<std::string,std::string>>(realityio *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  v12 = 0;
  if (realityio::replication::details::readBuffer<unsigned long long,0>(a1, &v12, 1uLL))
  {
    if (!v12)
    {
LABEL_11:
      __p.__r_.__value_.__l.__size_ = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::map<std::string,std::string>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<std::string,std::string>>::_PlaceCopy(&__p, &v9);
    }

    v5 = 0;
    while (1)
    {
      memset(&__p, 0, sizeof(__p));
      if (!realityio::replication::read(a1, v4, &__p))
      {
        break;
      }

      memset(&__str, 0, sizeof(__str));
      if (!realityio::replication::read(a1, v6, &__str))
      {
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        break;
      }

      p_p = &__p;
      v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v9, &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, &p_p, &v13);
      std::string::operator=((v7 + 7), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v12 <= ++v5)
      {
        goto LABEL_11;
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v9, v10[0]);
  return 0;
}