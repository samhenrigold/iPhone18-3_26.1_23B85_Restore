void gdc::ComponentStorageWrapper<md::components::AlbedoTint>::emplace(void *a1, uint64_t a2, _OWORD *a3)
{
  v23 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v23);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = (v8 - v14) >> 4;
      v16 = v15 + 1;
      if ((v15 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v14;
      if (v17 >> 3 > v16)
      {
        v16 = v17 >> 3;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      *(16 * v15) = *a3;
      v9 = 16 * v15 + 16;
      if (v14 != v8)
      {
        v19 = v14;
        v20 = 0;
        do
        {
          v21 = *v19;
          v19 += 16;
          *v20++ = v21;
        }

        while (v19 != v8);
      }

      a1[10] = 0;
      a1[11] = v9;
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = (v8 + 16);
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_25;
  }

  v10 = 0;
  v11 = a1[10] + 2 * (v5 - a1[7]);
  do
  {
    *(v11 + v10) = *(a3 + v10);
    v10 += 4;
  }

  while (v10 != 16);
  v12 = a1[31];
  if (v11 == a1[11])
  {
LABEL_25:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v23, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v23, 1);
  }
}

void gdc::ComponentStorageWrapper<md::components::PendingMaterial>::emplace(void *a1, uint64_t a2, uint64_t *a3)
{
  v25 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v25);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = v8 - v14;
      v16 = (v8 - v14) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v7 - v14;
      if (v18 >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (!(v19 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v16;
      v21 = (8 * v16);
      v22 = *a3;
      v23 = &v21[-v20];
      *v21 = v22;
      v9 = v21 + 1;
      memcpy(v23, v14, v15);
      a1[10] = v23;
      a1[11] = v9;
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = v8 + 8;
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_20;
  }

  v10 = a1[11];
  v11 = (v5 + a1[10] - a1[7]);
  *v11 = *a3;
  v12 = a1[31];
  if (v11 == v10)
  {
LABEL_20:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v25, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v25, 1);
  }
}

uint64_t gdc::Registry::storage<md::components::MarketMask>(uint64_t a1)
{
  v3 = 0x1049843FF67503A0;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1049843FF67503A0uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::components::HideWhenCollapsed>(uint64_t a1)
{
  v3 = 0x24CEDFE393EA39F1;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x24CEDFE393EA39F1uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::HideWhenCollapsed>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::components::HideWhenCollapsed>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::HideWhenCollapsed>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::MarketMask>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *(v6 + v7) = *--a1[11];
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::MarketMask>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::MarketMask>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::PendingMaterial>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    *v6 = *(v7 - 8);
    a1[11] = v7 - 8;
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::PendingMaterial>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::PendingMaterial>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::AlbedoTint>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 2 * (v3 - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11] - 16;
    do
    {
      *(v6 + v7) = *(v8 + v7);
      v7 += 4;
    }

    while (v7 != 16);
    a1[11] = v8;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::AlbedoTint>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::AlbedoTint>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 1;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 4);
    a1[11] = v8 - 4;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::DynamicMeshInstance>::remove(void *a1, uint64_t a2)
{
  v19 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 304 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    v9 = *(v8 - 304);
    v10 = *(v8 - 288);
    *(v6 + 32) = *(v8 - 272);
    *v6 = v9;
    *(v6 + 16) = v10;
    do
    {
      *(v6 + 36 + v7) = *(v8 - 268 + v7);
      v7 += 4;
    }

    while (v7 != 12);
    for (i = 0; i != 12; i += 4)
    {
      *(v6 + 48 + i) = *(v8 - 256 + i);
    }

    for (j = 0; j != 48; j += 4)
    {
      *(v6 + 60 + j) = *(v8 - 244 + j);
    }

    for (k = 0; k != 96; k += 8)
    {
      *(v6 + 112 + k) = *(v8 - 192 + k);
    }

    v14 = 0;
    v15 = v8 - 96;
    do
    {
      *(v6 + 208 + v14) = *(v15 + v14);
      v14 += 8;
    }

    while (v14 != 96);
    a1[11] -= 304;
    v16 = a1[28];
    if (v16)
    {
      v17 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v16[6], v17, &v19, 1);
        v16 = *v16;
      }

      while (v16);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::DynamicMeshInstance>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::DynamicMeshInstance>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void geo::small_vector_base<gdc::Entity>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      v15 = *v12++;
      *v14++ = v15;
    }

    while (v12 != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = v11 + v4 - v3;
  *(a1 + 24) = v9;
}

void gdc::ComponentStorageWrapper<md::components::ClientState>::emplace(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v29);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v14) >> 3);
      if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v14) >> 3);
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

      v33 = a1 + 10;
      if (v18)
      {
        if (v18 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = 24 * v15;
      v30 = 0;
      v31 = v19;
      v32 = 24 * v15;
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 256;
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy((24 * v15), a3);
      *&v32 = v32 + 24;
      v20 = a1[10];
      v21 = a1[11];
      v22 = (v31 + v20 - v21);
      if (v20 != v21)
      {
        v23 = a1[10];
        v24 = (v31 + v20 - v21);
        do
        {
          *v24 = 0;
          *(v24 + 1) = 0;
          *(v24 + 8) = 256;
          *v24 = *v23;
          *(v24 + 2) = *(v23 + 8);
          *(v24 + 3) = *(v23 + 12);
          *(v24 + 8) = *(v23 + 16);
          *v23 = 0;
          *(v23 + 8) = 0;
          *(v23 + 16) = 256;
          v23 += 24;
          v24 += 24;
        }

        while (v23 != v21);
        do
        {
          geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v20);
          v20 = (v20 + 24);
        }

        while (v20 != v21);
      }

      v25 = a1[10];
      a1[10] = v22;
      v26 = a1[12];
      v28 = v32;
      *(a1 + 11) = v32;
      *&v32 = v25;
      *(&v32 + 1) = v26;
      v30 = v25;
      v31 = v25;
      std::__split_buffer<md::components::ClientState>::~__split_buffer(&v30);
      v9 = v28;
    }

    else
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 256;
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(v8, a3);
      v9 = v8 + 24;
      a1[11] = v8 + 24;
    }

    a1[11] = v9;
    v12 = a1[31];
LABEL_25:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v29, 1);
    }

    return;
  }

  v10 = (v5 - a1[7]) >> 3;
  v11 = a1[10] + 24 * v10;
  if (v11 != a3)
  {
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1[10] + 24 * v10));
    *v11 = *a3;
    *(v11 + 8) = *(a3 + 8);
    *(v11 + 12) = *(a3 + 12);
    *(v11 + 14) = *(a3 + 14);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 256;
  }

  v12 = a1[31];
  if (v11 == a1[11])
  {
    goto LABEL_25;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v29, 1);
  }
}

void sub_1B2C70F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<md::components::ClientState>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::components::SupportsDebugHighlight>(uint64_t a1)
{
  v3 = 0x1F1291CF60257E81;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1F1291CF60257E81uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::SupportsDebugHighlight>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::components::SupportsDebugHighlight>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::SupportsDebugHighlight>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t std::__split_buffer<md::components::ClientState>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::ClientState>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator=(v6, (a1[11] - 24));
    v7 = (a1[11] - 24);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v7);
    a1[11] = v7;
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::ClientState>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::components::ClientState>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::components::ClientState>::__destroy_vector::operator()[abi:nn200100](gss::zone_mallocator ***a1)
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
        v4 = (v4 - 24);
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<md::components::ClientState>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::components::ClientState>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t *std::__tree<unsigned short>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL gdc::ComponentStorageWrapper<md::components::ReferencedAssetInstance>::remove(void *a1, uint64_t a2)
{
  v14 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 96 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    v9 = *(v8 - 80);
    *v6 = *(v8 - 96);
    *(v6 + 16) = v9;
    do
    {
      *(v6 + 24 + v7) = *(v8 - 72 + v7);
      v7 += 4;
    }

    while (v7 != 48);
    v10 = *(v8 - 24);
    *(v6 + 85) = *(v8 - 11);
    *(v6 + 72) = v10;
    a1[11] -= 96;
    v11 = a1[28];
    if (v11)
    {
      v12 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v11[6], v12, &v14, 1);
        v11 = *v11;
      }

      while (v11);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::ReferencedAssetInstance>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::ReferencedAssetInstance>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t md::Logic<md::AssetLogic,md::AssetContext,md::LogicDependencies<gdc::TypeList<md::IdentifiedResourceContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x88B81689974D86F3 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x12B1E486D3040E2CuLL)[5] + 32);
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::AssetContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::AssetContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E60D8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::AssetContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E60D8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::AssetLogic::~AssetLogic(md::AssetLogic *this)
{
  md::AssetLogic::~AssetLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E5EF0;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void std::__shared_ptr_emplace<md::LabelLayerData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F1C50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelTile>::__on_zero_shared(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *(v5 + 288);
        std::mutex::lock((v6 + 568));
        v8 = *(v6 + 648);
        v9 = *(v6 + 656);
        if (v8 >= v9)
        {
          v12 = *(v6 + 640);
          v13 = (v8 - v12) >> 4;
          v14 = v13 + 1;
          if ((v13 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v15 = v9 - v12;
          if (v15 >> 3 > v14)
          {
            v14 = v15 >> 3;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF0)
          {
            v16 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            v17 = mdm::zone_mallocator::instance(v7);
            v18 = pthread_rwlock_rdlock((v17 + 32));
            if (v18)
            {
              geo::read_write_lock::logFailure(v18, "read lock", v19);
            }

            v20 = malloc_type_zone_malloc(*v17, 16 * v16, 0x20040A4A59CD2uLL);
            atomic_fetch_add((v17 + 24), 1u);
            geo::read_write_lock::unlock((v17 + 32));
          }

          else
          {
            v20 = 0;
          }

          v21 = &v20[16 * v13];
          v22 = *(a1 + 48);
          *v21 = v22;
          if (*(&v22 + 1))
          {
            atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v23 = &v20[16 * v16];
          v11 = v21 + 16;
          v24 = *(v6 + 640);
          v25 = *(v6 + 648) - v24;
          v26 = &v21[-v25];
          v27 = memcpy(&v21[-v25], v24, v25);
          v28 = *(v6 + 640);
          *(v6 + 640) = v26;
          *(v6 + 648) = v11;
          *(v6 + 656) = v23;
          if (v28)
          {
            v29 = mdm::zone_mallocator::instance(v27);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelSourceTile>>(v29, v28);
          }
        }

        else
        {
          v10 = *(a1 + 56);
          *v8 = *(a1 + 48);
          v8[1] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
          }

          v11 = v8 + 2;
        }

        *(v6 + 648) = v11;
        v30 = atomic_load((v6 + 632));
        atomic_store(1u, (v6 + 632));
        std::mutex::unlock((v6 + 568));
        if ((v30 & 1) == 0)
        {
          atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v34 = 0;
          operator new();
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  v31 = *(a1 + 296);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  std::__tree<std::weak_ptr<md::OverlayLineLabelFeature>,std::owner_less<std::weak_ptr<md::OverlayLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::OverlayLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 264));
  std::__tree<std::weak_ptr<md::PointLabelFeature>,std::owner_less<std::weak_ptr<md::PointLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PointLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 232));
  std::__tree<std::weak_ptr<md::TransitLineLabelFeature>,std::owner_less<std::weak_ptr<md::TransitLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::TransitLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 200));
  std::__tree<std::weak_ptr<md::ContourLineLabelFeature>,std::owner_less<std::weak_ptr<md::ContourLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::ContourLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 168));
  std::__tree<std::weak_ptr<md::PhysicalLabelFeature>,std::owner_less<std::weak_ptr<md::PhysicalLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PhysicalLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 136));
  std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 104));
  std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(a1 + 72));
  v32 = *(a1 + 56);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = *(a1 + 40);
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }
}

void sub_1B2C71FF8(_Unwind_Exception *a1)
{
  v5 = v3;
  geo::read_write_lock::unlock((v5 + 32));
  std::mutex::unlock((v4 + 568));
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  v7 = *(v1 + 296);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  std::__tree<std::weak_ptr<md::OverlayLineLabelFeature>,std::owner_less<std::weak_ptr<md::OverlayLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::OverlayLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 264));
  std::__tree<std::weak_ptr<md::PointLabelFeature>,std::owner_less<std::weak_ptr<md::PointLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PointLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 232));
  std::__tree<std::weak_ptr<md::TransitLineLabelFeature>,std::owner_less<std::weak_ptr<md::TransitLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::TransitLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 200));
  std::__tree<std::weak_ptr<md::ContourLineLabelFeature>,std::owner_less<std::weak_ptr<md::ContourLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::ContourLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 168));
  std::__tree<std::weak_ptr<md::PhysicalLabelFeature>,std::owner_less<std::weak_ptr<md::PhysicalLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PhysicalLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 136));
  std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 104));
  std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(*(v1 + 72));
  v8 = *(v1 + 56);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(v1 + 40);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelTile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3FF38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::SelectedLabelLayerDataSource::~SelectedLabelLayerDataSource(std::mutex *this)
{
  this->__m_.__sig = &unk_1F29E6100;
  v2 = *this[14].__m_.__opaque;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::mutex::~mutex(this + 13);
  md::LabelLayerDataSource::~LabelLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  this->__m_.__sig = &unk_1F29E6100;
  v2 = *this[14].__m_.__opaque;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::mutex::~mutex(this + 13);

  md::LabelLayerDataSource::~LabelLayerDataSource(this);
}

void md::SelectedLabelLayerDataSource::setSelectedRoadFeature(md::SelectedLabelLayerDataSource *this, uint64_t a2, char *a3, char *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v15 = a2;
    md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(&v16, a3, a4);
    v23 = v16;
    v22 = v15;
    v24 = v17;
    v25 = v18;
    v16 = 0uLL;
    v17 = 0;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v19 = 0uLL;
    v20 = 0;
    v29 = 1;
    md::SelectedLabelLayerDataSource::resetSelectedFeatureID(this, &v22);
    if (SHIBYTE(v27) < 0)
    {
      v6 = v26;
      v7 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
    }

    if (SHIBYTE(v24) < 0)
    {
      v8 = v23;
      v9 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v9, v8);
    }

    if (SHIBYTE(v20) < 0)
    {
      v10 = v19;
      v11 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v11, v10);
    }

    if (SHIBYTE(v17) < 0)
    {
      v12 = v16;
      v13 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v13, v12);
    }
  }

  else
  {
    v14[0] = 0;
    v14[72] = 0;
    md::SelectedLabelLayerDataSource::resetSelectedFeatureID(this, v14);
  }
}

void sub_1B2C72354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 57) < 0)
  {
    v34 = *(v32 - 80);
    v35 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v35, v34);
  }

  if (*(v32 - 89) < 0)
  {
    v36 = *(v32 - 112);
    v37 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v37, v36);
  }

  if (a32 < 0)
  {
    v38 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v38, a27);
  }

  if (a25 < 0)
  {
    v39 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v39, a20);
  }

  _Unwind_Resume(exception_object);
}

void md::SelectedLabelLayerDataSource::resetSelectedFeatureID(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72))
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  std::mutex::lock((a1 + 832));
  v4 = *(a1 + 896);
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = v3 == v4;
  }

  else
  {
    if (*v3 != *v4)
    {
      goto LABEL_40;
    }

    v8 = *(v4 + 31);
    if (v8 >= 0)
    {
      v9 = *(v4 + 31);
    }

    else
    {
      v9 = *(v4 + 16);
    }

    v10 = *(v3 + 31);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v3 + 16);
    }

    if (v9 != v10)
    {
      goto LABEL_40;
    }

    v12 = v8 >= 0 ? (v4 + 8) : *(v4 + 8);
    v13 = v11 >= 0 ? (v3 + 8) : *(v3 + 8);
    if (memcmp(v12, v13, v9))
    {
      goto LABEL_40;
    }

    v14 = *(v4 + 63);
    if (v14 >= 0)
    {
      v15 = *(v4 + 63);
    }

    else
    {
      v15 = *(v4 + 48);
    }

    v16 = *(v3 + 63);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(v3 + 48);
    }

    if (v15 != v16)
    {
LABEL_40:
      v7 = 1;
      goto LABEL_41;
    }

    v20 = *(v4 + 40);
    v19 = (v4 + 40);
    v18 = v20;
    if (v14 >= 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v18;
    }

    if (v17 >= 0)
    {
      v22 = (v3 + 40);
    }

    else
    {
      v22 = *(v3 + 40);
    }

    v6 = memcmp(v21, v22, v15) == 0;
  }

  v7 = !v6;
LABEL_41:
  if (v7 && v3)
  {
    operator new();
  }

  std::mutex::unlock((a1 + 832));
  if (v7)
  {
    gdc::LayerDataSource::cancelAllLayerDataRequests(a1);
    gdc::LayerDataStore::clearAllData(*(a1 + 16));
    *(a1 + 896) = 0;
    v23 = *(a1 + 904);
    *(a1 + 904) = 0;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }
}

void sub_1B2C72610(mdm::zone_mallocator *a1)
{
  if (*(v2 + 55) < 0)
  {
    v4 = *(v2 + 32);
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v6);
  std::mutex::unlock(v1 + 13);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(uint64_t a1, size_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, a2, 0x100004077774924uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__shared_ptr_emplace<md::LabelSelectedFeatureInfo>::__on_zero_shared(uint64_t result)
{
  if (*(result + 87) < 0)
  {
    v2 = *(result + 64);
    v3 = mdm::zone_mallocator::instance(result);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  if (*(result + 55) < 0)
  {
    v4 = *(result + 32);
    v5 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }
}

void std::__shared_ptr_emplace<md::LabelSelectedFeatureInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E61A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::SelectedLabelLayerDataSource::deselectRoadFeature(md::SelectedLabelLayerDataSource *this)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  v1[72] = 0;
  md::SelectedLabelLayerDataSource::resetSelectedFeatureID(this, v1);
}

void md::S2ResourceDataRequester::createDebugNode(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (*(*v4 + 24))(v4, *(a1 + 24));
    if (v6)
    {
      v7 = v5;
      std::string::basic_string[abi:nn200100]<0>(&v31, "Download Range");
      gdc::DebugTreeValue::DebugTreeValue(&v32, v7);
      gdc::DebugTreeValue::DebugTreeValue(&v34, HIDWORD(v7));
      memset(v30, 0, sizeof(v30));
      std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v30, &v32, &v35, 2uLL);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "Download Range");
  gdc::DebugTreeValue::DebugTreeValue(v27, "None");
  gdc::DebugTreeNode::addProperty(a2, &v32, v27);
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (*(a1 + 32) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Min");
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_34;
    }

    gdc::DebugTreeValue::DebugTreeValue(v24, *(a1 + 28));
    gdc::DebugTreeNode::addProperty(a2, &v32, v24);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v8 = v25;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Min");
    gdc::DebugTreeValue::DebugTreeValue(v21, "None");
    gdc::DebugTreeNode::addProperty(a2, &v32, v21);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v8 = v22;
  }

  operator delete(v8);
LABEL_15:
  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (*(a1 + 40) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Max");
    if (*(a1 + 40))
    {
      gdc::DebugTreeValue::DebugTreeValue(v18, *(a1 + 36));
      gdc::DebugTreeNode::addProperty(a2, &v32, v18);
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v9 = v19;
      goto LABEL_23;
    }

LABEL_34:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Max");
  gdc::DebugTreeValue::DebugTreeValue(v15, "None");
  gdc::DebugTreeNode::addProperty(a2, &v32, v15);
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  v9 = v16;
LABEL_23:
  operator delete(v9);
LABEL_24:
  if (v33 < 0)
  {
    operator delete(v32);
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "gdc::ResourceType");
  v10 = *(a1 + 24);
  if (v10 > 0x35)
  {
    v11 = "<Invalid>";
  }

  else
  {
    v11 = off_1E7B3C1A8[v10];
  }

  gdc::DebugTreeValue::DebugTreeValue(v12, v11);
  gdc::DebugTreeNode::addProperty(a2, &v32, v12);
  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }
}

void sub_1B2C72B68(_Unwind_Exception *a1)
{
  v5 = 0;
  while (1)
  {
    if (*(v2 + v5 + 119) < 0)
    {
      operator delete(*(v2 + v5 + 96));
    }

    v5 -= 64;
    if (v5 == -128)
    {
      if (*(v3 - 193) < 0)
      {
        operator delete(*(v3 - 216));
      }

      *(v3 - 184) = v1 + 72;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v3 - 184));
      *(v3 - 184) = v1 + 48;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v3 - 184));
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
  }
}

void std::vector<gdc::DebugTreeValue>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeValue>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::construct_at[abi:nn200100]<gdc::DebugTreeValue,gdc::DebugTreeValue const&,gdc::DebugTreeValue*>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v4;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = *(a2 + 14);
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeValue>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

__n128 md::S2ResourceDataRequester::setVisibleZoomRange(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 28) = *a2;
  return result;
}

void md::TrafficAccum::flushToRibbonCollection(uint64_t a1, uint64_t a2, float *a3, float *a4, uint64_t *a5)
{
  v126 = *MEMORY[0x1E69E9840];
  if (*(a1 + 120))
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      v12 = v6 - v7;
      if ((v6 - v7) > 0x2000)
      {
        v14 = malloc_type_malloc(v6 - v7, 0x100004000313F17uLL);
        v13 = v14;
        if (!v14)
        {
          return;
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](a1);
        v13 = (&v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v13, v12);
      }

      v15 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        v120 = 1;
        LODWORD(v13->__vftable) = *v7;
        HIDWORD(v13->__vftable) = v7[1];
        v20 = v15 - 1;
        v14 = geo::dpSimplify<gm::Matrix<float,2,1>>(v7, 0, v20, v13, &v120);
        v21 = &v7[2 * v20];
        v22 = v120;
        v15 = ++v120;
        v23 = &v13->__vftable + v22;
        *v23 = *v21;
        v23[1] = v21[1];
      }

      else
      {
        v16 = &v13->__vftable + 1;
        v17 = v7 + 1;
        v18 = v12 >> 3;
        do
        {
          *(v16 - 1) = *(v17 - 1);
          v19 = *v17;
          v17 += 2;
          *v16 = v19;
          v16 += 2;
          --v18;
        }

        while (v18);
        v120 = v12 >> 3;
      }

      v24 = *(a2 + 4 * *(a1 + 96));
      if (v15 > 5)
      {
        goto LABEL_29;
      }

      if (v15)
      {
        v25 = &v13->__vftable + 1;
        v26 = 3.4028e38;
        v27 = -3.4028e38;
        v28 = v15;
        v29 = -3.4028e38;
        v30 = 3.4028e38;
        do
        {
          v31 = *(v25 - 1);
          v26 = fminf(v31, v26);
          v29 = fmaxf(v29, v31);
          v30 = fminf(*v25, v30);
          v27 = fmaxf(v27, *v25);
          v25 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v30 = 3.4028e38;
        v27 = -3.4028e38;
        v29 = -3.4028e38;
        v26 = 3.4028e38;
      }

      v32 = 0.0019531;
      if (!v24)
      {
        v32 = 0.012;
      }

      if (((v29 - (v26 + v30)) + v27) > v32 || v26 == 0.0 || (v30 != 0.0 ? (v33 = v29 == 1.0) : (v33 = 1), !v33 ? (v34 = v27 == 1.0) : (v34 = 1), v34))
      {
LABEL_29:
        v35 = *(*(a1 + 120) + 153) - 1 < 2;
        v115 = 0;
        v116 = 0;
        v36 = *(a1 + 144);
        v37 = *(a1 + 152);
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          v14 = v116;
          v115 = v36;
          v116 = v37;
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v14);
          }
        }

        else
        {
          v115 = *(a1 + 144);
          v116 = 0;
        }

        v38 = *(a1 + 100) == 0;
        if (*(a1 + 100))
        {
          v39 = -1;
        }

        else
        {
          v39 = 1;
        }

        v117 = v39;
        v118 = *(a1 + 96);
        v119 = *(a1 + 196);
        if ((v24 - 1) >= 2)
        {
          if (v24 != 3)
          {
            if (!v24)
            {
              v40 = mdm::zone_mallocator::instance(v14);
              v41 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TrafficRibbon>(v40);
              md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(v41, v15);
              *v41 = &unk_1F2A2F8A0;
              v114 = v41;
              *(v41 + 96) = v35;
              memcpy(v41[9], v13, 8 * v41[11]);
              v121 = &v115;
              v42 = std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::TrafficBatchKey,std::piecewise_construct_t const&,std::tuple<md::TrafficBatchKey const&>,std::tuple<>>(a3, &v115, &v121);
              v43 = v42;
              v45 = *(v42 + 7);
              v44 = *(v42 + 8);
              if (v45 >= v44)
              {
                v74 = *(v42 + 6);
                v75 = v45 - v74;
                v76 = (v45 - v74) >> 3;
                v77 = v76 + 1;
                if ((v76 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v78 = v44 - v74;
                if (v78 >> 2 > v77)
                {
                  v77 = v78 >> 2;
                }

                if (v78 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v79 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v79 = v77;
                }

                v125 = v42 + 18;
                if (v79)
                {
                  v80 = mdm::zone_mallocator::instance(v42);
                  v81 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>>(v80, v79);
                  v74 = *(v43 + 6);
                  v75 = *(v43 + 7) - v74;
                  v82 = v75 >> 3;
                  v41 = v114;
                }

                else
                {
                  v81 = 0;
                  v82 = v76;
                }

                v91 = &v81[8 * v76];
                v92 = &v81[8 * v79];
                v114 = 0;
                v93 = &v91[-8 * v82];
                *v91 = v41;
                v46 = v91 + 8;
                memcpy(v93, v74, v75);
                v94 = *(v43 + 6);
                *(v43 + 6) = v93;
                *(v43 + 7) = v46;
                v95 = *(v43 + 8);
                *(v43 + 8) = v92;
                v123 = v94;
                v124 = v95;
                v121 = v94;
                v122 = v94;
                std::__split_buffer<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v121);
              }

              else
              {
                v114 = 0;
                *v45 = v41;
                v46 = v45 + 8;
              }

              *(v43 + 7) = v46;
              std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>::~unique_ptr[abi:nn200100](&v114);
            }

            goto LABEL_104;
          }

          v54 = mdm::zone_mallocator::instance(v14);
          v55 = pthread_rwlock_rdlock((v54 + 32));
          if (v55)
          {
            geo::read_write_lock::logFailure(v55, "read lock", v56);
          }

          v57 = malloc_type_zone_malloc(*v54, 0x68uLL, 0x10A1040A1A71121uLL);
          atomic_fetch_add((v54 + 24), 1u);
          geo::read_write_lock::unlock((v54 + 32));
          md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(v57, v120);
          *v57 = &unk_1F29E6240;
          v114 = v57;
          *(v57 + 96) = v35;
          *(v57 + 25) = v38;
          memcpy(v57[9], v13, 8 * v57[11]);
          v58 = v115;
          v59 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(v115);
          if (v117 == 0.0)
          {
            v60 = 0;
          }

          else
          {
            v60 = 2 * LODWORD(v117);
          }

          v61 = v118 ^ (v59 >> 1) ^ (4 * v119) ^ v60;
          v62 = a5[1];
          if (!*&v62)
          {
            goto LABEL_87;
          }

          v63 = vcnt_s8(v62);
          v63.i16[0] = vaddlv_u8(v63);
          if (v63.u32[0] > 1uLL)
          {
            v64 = v118 ^ (v59 >> 1) ^ (4 * v119) ^ v60;
            if (v61 >= *&v62)
            {
              v64 = v61 % *&v62;
            }
          }

          else
          {
            v64 = (*&v62 - 1) & v61;
          }

          v88 = *(*a5 + 8 * v64);
          if (!v88 || (v89 = *v88) == 0)
          {
LABEL_87:
            operator new();
          }

          while (1)
          {
            v90 = *(v89 + 1);
            if (v90 == v61)
            {
              if (*(v89 + 2) == v58 && v89[8] == v117 && *(v89 + 36) == v118 && *(v89 + 10) == v119)
              {
                v97 = *(v89 + 7);
                v96 = *(v89 + 8);
                if (v97 >= v96)
                {
                  v99 = *(v89 + 6);
                  v100 = v97 - v99;
                  v101 = (v97 - v99) >> 3;
                  v102 = v101 + 1;
                  if ((v101 + 1) >> 61)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v103 = v96 - v99;
                  if (v103 >> 2 > v102)
                  {
                    v102 = v103 >> 2;
                  }

                  if (v103 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v104 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v104 = v102;
                  }

                  v125 = v89 + 18;
                  if (v104)
                  {
                    v105 = mdm::zone_mallocator::instance(v59);
                    v106 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>>(v105, v104);
                    v99 = *(v89 + 6);
                    v100 = *(v89 + 7) - v99;
                    v107 = v100 >> 3;
                    v57 = v114;
                  }

                  else
                  {
                    v106 = 0;
                    v107 = v101;
                  }

                  v108 = &v106[8 * v101];
                  v109 = &v106[8 * v104];
                  v114 = 0;
                  v110 = &v108[-8 * v107];
                  *v108 = v57;
                  v98 = v108 + 8;
                  memcpy(v110, v99, v100);
                  v111 = *(v89 + 6);
                  *(v89 + 6) = v110;
                  *(v89 + 7) = v98;
                  v112 = *(v89 + 8);
                  *(v89 + 8) = v109;
                  v123 = v111;
                  v124 = v112;
                  v121 = v111;
                  v122 = v111;
                  std::__split_buffer<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v121, v113);
                }

                else
                {
                  v114 = 0;
                  *v97 = v57;
                  v98 = v97 + 8;
                }

                *(v89 + 7) = v98;
                std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>::~unique_ptr[abi:nn200100](&v114);
                goto LABEL_104;
              }
            }

            else
            {
              if (v63.u32[0] > 1uLL)
              {
                if (v90 >= *&v62)
                {
                  v90 %= *&v62;
                }
              }

              else
              {
                v90 &= *&v62 - 1;
              }

              if (v90 != v64)
              {
                goto LABEL_87;
              }
            }

            v89 = *v89;
            if (!v89)
            {
              goto LABEL_87;
            }
          }
        }

        v47 = mdm::zone_mallocator::instance(v14);
        v48 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::SolidTrafficRibbon>(v47);
        md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(v48, v15);
        *v48 = &unk_1F2A2F8C0;
        v114 = v48;
        *(v48 + 96) = v35;
        *(v48 + 25) = v38;
        memcpy(v48[9], v13, 8 * v48[11]);
        v121 = &v115;
        v49 = std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::TrafficBatchKey,std::piecewise_construct_t const&,std::tuple<md::TrafficBatchKey const&>,std::tuple<>>(a4, &v115, &v121);
        v50 = v49;
        v52 = *(v49 + 7);
        v51 = *(v49 + 8);
        if (v52 >= v51)
        {
          v65 = *(v49 + 6);
          v66 = v52 - v65;
          v67 = (v52 - v65) >> 3;
          v68 = v67 + 1;
          if ((v67 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v69 = v51 - v65;
          if (v69 >> 2 > v68)
          {
            v68 = v69 >> 2;
          }

          if (v69 >= 0x7FFFFFFFFFFFFFF8)
          {
            v70 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v70 = v68;
          }

          v125 = v49 + 18;
          if (v70)
          {
            v71 = mdm::zone_mallocator::instance(v49);
            v72 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>>(v71, v70);
            v65 = *(v50 + 6);
            v66 = *(v50 + 7) - v65;
            v73 = v66 >> 3;
            v48 = v114;
          }

          else
          {
            v72 = 0;
            v73 = v67;
          }

          v83 = &v72[8 * v67];
          v84 = &v72[8 * v70];
          v114 = 0;
          v85 = &v83[-8 * v73];
          *v83 = v48;
          v53 = v83 + 8;
          memcpy(v85, v65, v66);
          v86 = *(v50 + 6);
          *(v50 + 6) = v85;
          *(v50 + 7) = v53;
          v87 = *(v50 + 8);
          *(v50 + 8) = v84;
          v123 = v86;
          v124 = v87;
          v121 = v86;
          v122 = v86;
          std::__split_buffer<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v121);
        }

        else
        {
          v114 = 0;
          *v52 = v48;
          v53 = v52 + 8;
        }

        *(v50 + 7) = v53;
        std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>::~unique_ptr[abi:nn200100](&v114);
LABEL_104:
        if (v116)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v116);
        }
      }

      if (v12 > 0x2000)
      {
        free(v13);
      }
    }
  }
}

void sub_1B2C738B8(_Unwind_Exception *a1)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](v1 - 128);
  std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>::~unique_ptr[abi:nn200100]((v1 - 176));
  v3 = *(v1 - 160);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TrafficRibbon>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x68uLL, 0x10A10402DF98402uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

uint64_t md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(uint64_t a1, uint64_t a2)
{
  *(a1 + 49) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 56) = a2;
  *a1 = &unk_1F2A5B5E0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  if (a2)
  {
    *(a1 + 88) = a2;
    v4 = mdm::zone_mallocator::instance(a1);
    *(a1 + 72) = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<float,2,1>>(v4, a2);
    *(a1 + 64) = 1;
  }

  return a1;
}

float *std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::TrafficBatchKey,std::piecewise_construct_t const&,std::tuple<md::TrafficBatchKey const&>,std::tuple<>>(float *a1, uint64_t a2, void **a3)
{
  v5 = *a2;
  v6 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(*a2);
  v7 = *(a2 + 20);
  v8 = *(a2 + 16);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2 * *(a2 + 16);
  }

  v10 = *(a2 + 24);
  v11 = v7 ^ (v6 >> 1) ^ (4 * v10) ^ v9;
  v12 = *(a1 + 2);
  if (!*&v12)
  {
    goto LABEL_24;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = v7 ^ (v6 >> 1) ^ (4 * v10) ^ v9;
    if (v11 >= *&v12)
    {
      v14 = v11 % *&v12;
    }
  }

  else
  {
    v14 = (*&v12 - 1) & v11;
  }

  v15 = *(*a1 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v17 = *(v16 + 1);
    if (v17 == v11)
    {
      break;
    }

    if (v13.u32[0] > 1uLL)
    {
      if (v17 >= *&v12)
      {
        v17 %= *&v12;
      }
    }

    else
    {
      v17 &= *&v12 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_24;
    }

LABEL_23:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  if (*(v16 + 2) != v5 || v16[8] != v8 || *(v16 + 36) != v7 || *(v16 + 10) != v10)
  {
    goto LABEL_23;
  }

  return v16;
}

void sub_1B2C73ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t (****std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TrafficRibbon>(v4, v2);
  }

  return a1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::SolidTrafficRibbon>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x68uLL, 0x10A1040A1A71121uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

float *std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::TrafficBatchKey,std::piecewise_construct_t const&,std::tuple<md::TrafficBatchKey const&>,std::tuple<>>(float *a1, uint64_t a2, void **a3)
{
  v5 = *a2;
  v6 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(*a2);
  v7 = *(a2 + 20);
  v8 = *(a2 + 16);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2 * *(a2 + 16);
  }

  v10 = *(a2 + 24);
  v11 = v7 ^ (v6 >> 1) ^ (4 * v10) ^ v9;
  v12 = *(a1 + 2);
  if (!*&v12)
  {
    goto LABEL_24;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = v7 ^ (v6 >> 1) ^ (4 * v10) ^ v9;
    if (v11 >= *&v12)
    {
      v14 = v11 % *&v12;
    }
  }

  else
  {
    v14 = (*&v12 - 1) & v11;
  }

  v15 = *(*a1 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v17 = *(v16 + 1);
    if (v17 == v11)
    {
      break;
    }

    if (v13.u32[0] > 1uLL)
    {
      if (v17 >= *&v12)
      {
        v17 %= *&v12;
      }
    }

    else
    {
      v17 &= *&v12 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_24;
    }

LABEL_23:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  if (*(v16 + 2) != v5 || v16[8] != v8 || *(v16 + 36) != v7 || *(v16 + 10) != v10)
  {
    goto LABEL_23;
  }

  return v16;
}

void sub_1B2C74474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t (****std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::SolidTrafficRibbon>(v4, v2);
  }

  return a1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1, __n128 a2)
{
  v2 = a1;
  v4 = *(a1 + 1);
  for (i = *(a1 + 2); i != v4; i = *(v2 + 2))
  {
    *(v2 + 2) = i - 8;
    a1 = std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>::~unique_ptr[abi:nn200100]((i - 8));
  }

  v5 = *v2;
  if (*v2)
  {
    v6 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>>(v6, v5);
  }

  return v2;
}

uint64_t (****std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::CasedTrafficRibbon>(v4, v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::TrafficBatchKey const,std::vector<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::CasedTrafficRibbon,mdm::TypeDeleter<md::CasedTrafficRibbon>>,mdm::zone_mallocator>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void md::CasedTrafficRibbon::~CasedTrafficRibbon(md::CasedTrafficRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(uint64_t a1)
{
  *a1 = &unk_1F2A5B5E0;
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 72);
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,2,1>>(v3, v2);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,2,1>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(uint64_t a1)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::TrafficBatchKey const,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void md::SolidTrafficRibbon::~SolidTrafficRibbon(md::SolidTrafficRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::TrafficBatchKey const,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void md::TrafficRibbon::~TrafficRibbon(md::TrafficRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<float,2,1>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x100004000313F17uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

uint64_t geo::dpSimplify<gm::Matrix<float,2,1>>(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = result;
  __asm { FMOV            V8.2S, #1.0 }

  while (1)
  {
    v14 = a2 + 1;
    if (a2 + 1 >= a3)
    {
      break;
    }

    v15 = 0;
    v16 = *(v8 + 8 * a2);
    v17 = vsub_f32(*(v8 + 8 * a3), v16);
    v18 = vmul_f32(v17, v17);
    v19 = vadd_f32(vdup_lane_s32(v18, 1), v18);
    v20 = vaddv_f32(v18);
    v21 = vdiv_f32(_D8, v19);
    v22 = 0.0;
    do
    {
      v23 = *(v8 + 8 * v14);
      v24 = 0.0;
      if (v20 > 1.0e-15)
      {
        v25 = vmul_f32(vsub_f32(v23, v16), v17);
        v24 = fminf(fmaxf(vmul_f32(vadd_f32(vdup_lane_s32(v25, 1), v25), v21).f32[0], 0.0), 1.0);
      }

      v26 = vsub_f32(v23, vmla_n_f32(v16, v17, v24));
      v27 = vaddv_f32(vmul_f32(v26, v26));
      if (v27 > v22)
      {
        v15 = v14;
      }

      v22 = fmaxf(v27, v22);
      ++v14;
    }

    while (a3 != v14);
    if (v22 <= 0.00000023842)
    {
      break;
    }

    result = geo::dpSimplify<gm::Matrix<float,2,1>>(v8, a2, v15, a4, a5);
    v28 = (v8 + 8 * v15);
    v29 = (*a5)++;
    v30 = (a4 + 8 * v29);
    *v30 = *v28;
    v30[1] = v28[1];
    a2 = v15;
  }

  return result;
}

uint64_t (****std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::DaVinciTrafficRibbon>(v4, v2);
  }

  return a1;
}

uint64_t md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(uint64_t a1)
{
  *a1 = &unk_1F2A386F0;
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 72);
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,3,1>>(v3, v2);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,3,1>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(uint64_t a1)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<float,3,1>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 12 * a2, 0x10000403E1C8BA9uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::_retain_ptr<NSSet<NSNumber *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E64F0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSSet<NSNumber *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E64F0;

  return a1;
}

void geo::_retain_ptr<VKCamera * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A203A8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKCamera * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A203A8;

  return a1;
}

void geo::_retain_ptr<VKStateCaptureHandler * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6378;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKStateCaptureHandler * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6378;

  return a1;
}

void geo::_retain_ptr<VKARWalkingCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E64D0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKARWalkingCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E64D0;

  return a1;
}

void geo::_retain_ptr<VKMuninCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E64B0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKMuninCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E64B0;

  return a1;
}

void sub_1B2C77BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B2C78300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_40c44_ZTSNSt3__110shared_ptrIN2md11LabelMarkerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c44_ZTSNSt3__110shared_ptrIN2md11LabelMarkerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2C78568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C787B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void *geo::_retain_ptr<VKMuninJunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F29E6470;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void *geo::_retain_ptr<VKMuninRoad * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F29E6490;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void __destroy_helper_block_ea8_40c131_ZTSN3geo11_retain_ptrIU8__strongP15VKMuninJunctionNS_16_retain_objc_arcENS_17_release_objc_arcENS_10_hash_objcENS_11_equal_objcEEE64c127_ZTSN3geo11_retain_ptrIU8__strongP11VKMuninRoadNS_16_retain_objc_arcENS_17_release_objc_arcENS_10_hash_objcENS_11_equal_objcEEE(uint64_t a1)
{
  *(a1 + 64) = &unk_1F29E6490;

  *(a1 + 40) = &unk_1F29E6470;
  v2 = *(a1 + 48);
}

void *__copy_helper_block_ea8_40c131_ZTSN3geo11_retain_ptrIU8__strongP15VKMuninJunctionNS_16_retain_objc_arcENS_17_release_objc_arcENS_10_hash_objcENS_11_equal_objcEEE64c127_ZTSN3geo11_retain_ptrIU8__strongP11VKMuninRoadNS_16_retain_objc_arcENS_17_release_objc_arcENS_10_hash_objcENS_11_equal_objcEEE(uint64_t a1, uint64_t a2)
{
  geo::_retain_ptr<VKMuninJunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((a1 + 40), a2 + 40);

  return geo::_retain_ptr<VKMuninRoad * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((a1 + 64), a2 + 64);
}

void geo::_retain_ptr<VKMuninRoad * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6490;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKMuninRoad * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6490;

  return a1;
}

void geo::_retain_ptr<VKMuninJunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6470;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKMuninJunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6470;

  return a1;
}

void sub_1B2C7B5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<std::shared_ptr<md::LabelMarker>,geo::allocator_adapter<std::shared_ptr<md::LabelMarker>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<md::LabelMarker>,geo::allocator_adapter<std::shared_ptr<md::LabelMarker>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void (__cdecl ***result)(std::__shared_weak_count *__hidden this))
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1->~__shared_weak_count_0;
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        result = *(v3 - 1);
        if (result)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](result);
        }

        v3 = (v3 - 16);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelMarker>>(v6, v4);
  }
}

void sub_1B2C7BE04(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B2C7BF10(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B2C7C2B4(_Unwind_Exception *a1)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v3 - 104));

  _Unwind_Resume(a1);
}

void **std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::~__hash_table(void **a1)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__deallocate_node(a1[3]);
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(v4, v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<unsigned long long,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<unsigned long long,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void sub_1B2C7DF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void **a19)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a19);
  a19 = &a16;
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&a19);
  _Unwind_Resume(a1);
}

void sub_1B2C7E8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C809D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a32);

  _Unwind_Resume(a1);
}

void sub_1B2C816F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::~__hash_table(v30 - 168);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C81CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B2C83768(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B2C83934(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B2C83AC4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B2C84478(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B2C845FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C84EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKMapView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B2C865F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, _Unwind_Exception *exception_object, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v44 = *(v43 - 144);
  if (v44)
  {
    operator delete(v44);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B2C8816C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C88B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1B2C88E44(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C89168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  operator delete(v10);

  _Unwind_Resume(a1);
}

void sub_1B2C89AB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void geo::_retain_ptr<GEOPOICategoryFilter * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4AD98;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOPOICategoryFilter * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4AD98;

  return a1;
}

void std::__shared_ptr_emplace<md::LabelCategoryFilter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A202E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::_retain_ptr<VKDebugTree * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6310;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKDebugTree * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E6310;

  return a1;
}

void sub_1B2C8D598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C8E650(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C8FB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&a15);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C8FC9C(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<FeatureStyleAttributes>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5FC58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2C92104(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSDictionary *,gdc::DebugTreeNode &)>::~__value_func[abi:nn200100](v3 - 184);

  _Unwind_Resume(a1);
}

void std::function<void ()(NSDictionary *,gdc::DebugTreeNode &)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v6);
  }

  (*(*v5 + 48))(v5, &v7, a3);
}

uint64_t std::__function::__value_func<void ()(NSDictionary *,gdc::DebugTreeNode &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1B2C92964(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::LandmarkTileData::~LandmarkTileData(md::LandmarkTileData *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
}

void sub_1B2C92FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a12);
  _Unwind_Resume(a1);
}

void sub_1B2C93048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C930B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C932EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C94628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2C94BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C94DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C951D4(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 232));

  _Unwind_Resume(a1);
}

void sub_1B2C9530C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C95424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double gm::lerp<gm::Matrix<double,3,1>,double>(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = 0;
  *v16 = a1;
  *&v16[1] = a2;
  *&v16[2] = a3;
  *v15 = a4;
  *&v15[1] = a5;
  *&v15[2] = a6;
  do
  {
    *(&v17 + v7 * 8) = *&v15[v7] - *&v16[v7];
    ++v7;
  }

  while (v7 != 3);
  v8 = 0;
  v11 = v17;
  v12 = v18;
  do
  {
    *(&v17 + v8) = *(&v11 + v8) * a7;
    v8 += 8;
  }

  while (v8 != 24);
  v9 = 0;
  v13 = v17;
  v14 = v18;
  do
  {
    *(&v17 + v9 * 8) = *(&v13 + v9 * 8) + *&v16[v9];
    ++v9;
  }

  while (v9 != 3);
  return *&v17;
}

void sub_1B2C96060(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v2 - 88);

  _Unwind_Resume(a1);
}

void sub_1B2C963FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C967CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKMapCanvas;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B2C96C54(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C96EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  a12 = &a22;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a12);

  _Unwind_Resume(a1);
}

void std::__tree<gdc::ResourceKey,gdc::ResourceKeyLessThan,std::allocator<gdc::ResourceKey>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<gdc::ResourceKey,gdc::ResourceKeyLessThan,std::allocator<gdc::ResourceKey>>::destroy(*a1);
    std::__tree<gdc::ResourceKey,gdc::ResourceKeyLessThan,std::allocator<gdc::ResourceKey>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2 != a1[7])
    {
      free(v2);
    }

    operator delete(a1);
  }
}

void sub_1B2C974A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, void *a26)
{
  std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::__deallocate_node(a26);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<gdc::LayerDataRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A60248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::TerrainMeshProviderLogic::runBeforeLayout(int8x8_t *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v85 = *MEMORY[0x1E69E9840];
  v6 = a3[2];
  v5 = a3[3];
  if (v6 && ((v7 = *(v6 + 160), v7[21] != v7[20]) || v7[24] != v7[23]) || v5 && (*(v5 + 56) & 1) != 0)
  {
    v8 = a1[15];
    if (!*&v8)
    {
      return;
    }

    v9 = a3[1];
    v10 = *(*a3 + 88);
    if (std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((*&v8 + 136), 0x2Bu))
    {
      v74 = (v10 - 2) < 3;
      if ((v10 - 2) >= 3)
      {
        v11 = 43;
      }

      else
      {
        v11 = 77;
      }
    }

    else
    {
      v16 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((*&v8 + 136), 0x4Du);
      v74 = (v10 - 2) < 3;
      if ((v10 - 2) >= 3)
      {
        v11 = 43;
      }

      else
      {
        v11 = 77;
      }

      if (!v16)
      {
        return;
      }
    }

    v18 = a1 + 16;
    v17 = a1[16];
    v20 = a1[21];
    v19 = a1[22];
    v22 = a1 + 23;
    v21 = a1[23];
    v23 = a1[17];
    v25 = a1 + 18;
    v24 = a1[18];
    v26 = a1[24];
    v27 = a1[19];
    v28 = a1[25].i32[0];
    v29 = a1[20].i32[0];
    a1[21] = v17;
    a1[22] = v23;
    a1[16] = v20;
    a1[17] = v19;
    a1[23] = v24;
    a1[18] = v21;
    a1[24] = v27;
    a1[19] = v26;
    a1[25].i32[0] = v29;
    a1[20].i32[0] = v28;
    if (v27)
    {
      v30 = *(*&v24 + 8);
      if ((*&v23 & (*&v23 - 1)) != 0)
      {
        if (v30 >= *&v23)
        {
          v30 %= *&v23;
        }
      }

      else
      {
        v30 &= *&v23 - 1;
      }

      *(*&v17 + 8 * v30) = v22;
    }

    if (v26)
    {
      v31 = *(*v25 + 8);
      if ((*&v19 & (*&v19 - 1)) != 0)
      {
        if (v31 >= *&v19)
        {
          v31 %= *&v19;
        }
      }

      else
      {
        v31 &= *&v19 - 1;
      }

      *(*v18 + 8 * v31) = v25;
    }

    v79 = a4;
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v18);
    for (i = 0; i != 4; ++i)
    {
      v33 = md::SceneContext::layerDataInView(v9, md::overlayDataTypes[i]);
      v35 = v33 + 1;
      v34 = *v33;
      if (*v33 != v33 + 1)
      {
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v34[4]);
          gdc::Tiled::tileFromLayerDataKey(&v81, *(FillRect + 16));
          std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(v18, &v81, &v81);
          v37 = v34[1];
          if (v37)
          {
            do
            {
              v38 = v37;
              v37 = *v37;
            }

            while (v37);
          }

          else
          {
            do
            {
              v38 = v34[2];
              v39 = *v38 == v34;
              v34 = v38;
            }

            while (!v39);
          }

          v34 = v38;
        }

        while (v38 != v35);
      }
    }

    v40 = md::FlyoverDsmManifestInformer::downloadZoomRange(&a1[31]);
    v41 = a1[18];
    if (v42)
    {
      v43 = v40;
    }

    else
    {
      v43 = 11;
    }

    v75 = v11;
    if (v41)
    {
      while (1)
      {
        v44 = *(*&v41 + 17);
        v45 = v44 < v43;
        if (v44 >= v43)
        {
          break;
        }

        v41 = **&v41;
        if (!*&v41)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
LABEL_52:
      v45 = 1;
    }

    v46 = *v22;
    if (v46)
    {
      v47 = (v79 + 6);
      do
      {
        if (*(*&v46 + 40) == 1)
        {
          geo::QuadTile::computeHash((*&v46 + 16));
          *(*&v46 + 40) = 0;
        }

        v48 = a1[17];
        if (v48)
        {
          v49 = *(*&v46 + 32);
          v50 = vcnt_s8(v48);
          v50.i16[0] = vaddlv_u8(v50);
          v51 = v50.u32[0];
          if (v50.u32[0] > 1uLL)
          {
            v52 = *(*&v46 + 32);
            if (v49 >= *&v48)
            {
              v52 = v49 % *&v48;
            }
          }

          else
          {
            v52 = (*&v48 - 1) & v49;
          }

          v53 = *(*v18 + 8 * v52);
          if (v53)
          {
            for (j = *v53; j; j = *j)
            {
              v55 = *(j + 1);
              if (v55 == v49)
              {
                if (std::equal_to<geo::QuadTile>::operator()[abi:nn200100](j + 16, (*&v46 + 16)))
                {
                  goto LABEL_75;
                }
              }

              else
              {
                if (v51 > 1)
                {
                  if (v55 >= *&v48)
                  {
                    v55 %= *&v48;
                  }
                }

                else
                {
                  v55 &= *&v48 - 1;
                }

                if (v55 != v52)
                {
                  break;
                }
              }
            }
          }
        }

        if (v47 != geo::LRUPolicy<geo::QuadTile,md::TerrainTileMesh,geo::QuadTileHash>::get(v47, v79 + 1, (*&v46 + 16)))
        {
          v56 = geo::LRUPolicy<geo::QuadTile,md::TerrainTileMesh,geo::QuadTileHash>::get(v47, v79 + 1, (*&v46 + 16));
          std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::__erase_unique<geo::QuadTile>(v79 + 1, (v56 + 2));
          std::list<std::pair<geo::QuadTile,md::TerrainTileMesh>>::erase(v47, v56);
        }

LABEL_75:
        v46 = **&v46;
      }

      while (v46);
    }

    v57 = a1[15];
    v58 = *(*&v57 + 80);
    v59 = *(*&v57 + 88);
    if (v58 != v59)
    {
      while (*v58 != v75)
      {
        v58 += 8;
        if (v58 == v59)
        {
          return;
        }
      }

      if (v58 != v59)
      {
        v60 = *(v58 + 1);
        if (v60 && !v45)
        {
          v62 = *v25;
          if (*v25)
          {
            while (1)
            {
              if (v79 + 6 == geo::LRUPolicy<geo::QuadTile,md::TerrainTileMesh,geo::QuadTileHash>::get((v79 + 6), v79 + 1, (*&v62 + 16)))
              {
                v63 = v60[1];
                if (v63 != v60)
                {
                  break;
                }
              }

LABEL_87:
              v62 = **&v62;
              if (!*&v62)
              {
                return;
              }
            }

            v78 = 0;
            v76 = 0;
            while (1)
            {
              v65 = v63[16];
              v64 = v63[17];
              if (!v74)
              {
                break;
              }

              if (v64)
              {
                atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v66 = (*(*v65 + 72))(v65);
              v67 = v66;
              if (!v66 || *(v66 + 112) == 2)
              {
                v68 = (*(*v65 + 80))(v65);
LABEL_100:
                v67 = v68;
              }

              if (v64)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v64);
              }

              if (!v67 || *(v67 + 112) == 2 || *(v67 + 56) != *(*&v62 + 16))
              {
                goto LABEL_114;
              }

              v69 = *(v67 + 57);
              v70 = *(v67 + 60);
              v71 = *(*&v62 + 17);
              v72 = v71 >= v69;
              v73 = v71 - v69;
              if (v73 != 0 && v72)
              {
                if (v70 == __PAIR64__(*(*&v62 + 24) >> v73, *(*&v62 + 20) >> v73))
                {
                  goto LABEL_112;
                }
              }

              else if (!v73 && v70 == *(*&v62 + 20))
              {
LABEL_112:
                if (v69 > v78)
                {
                  v76 = v67;
                  v78 = *(v67 + 57);
                }
              }

LABEL_114:
              v63 = v63[1];
              if (v63 == v60)
              {
                if (v76)
                {
                  v81 = 2;
                  v82 = 1;
                  v83 = 0;
                  v84 = 0x3F80000000000000;
                  md::HeightMeshBuilder::generateHeightMesh(&v80, *&v62 + 16, v76, &v81);
                }

                goto LABEL_87;
              }
            }

            if (v64)
            {
              atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v68 = (*(*v65 + 72))(v65);
            goto LABEL_100;
          }
        }
      }
    }
  }

  else
  {
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(&a1[21]);
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(&a1[16]);
    if (a4[4])
    {
      v12 = a4[3];
      if (v12)
      {
        do
        {
          v13 = *v12;
          operator delete(v12);
          v12 = v13;
        }

        while (v13);
      }

      a4[3] = 0;
      v14 = a4[2];
      if (v14)
      {
        for (k = 0; k != v14; ++k)
        {
          *(a4[1] + 8 * k) = 0;
        }
      }

      a4[4] = 0;
    }

    std::__list_imp<std::pair<geo::QuadTile,md::TerrainTileMesh>>::clear(a4 + 6);
  }
}

void sub_1B2C9840C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  operator delete(v18);
  std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void std::__list_imp<std::pair<geo::QuadTile,md::TerrainTileMesh>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[7];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t geo::LRUPolicy<geo::QuadTile,md::TerrainTileMesh,geo::QuadTileHash>::get(uint64_t a1, void *a2, geo::QuadTile *this)
{
  v4 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>(a2, this);
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = *(v4 + 6);
    if (v5 == v6)
    {
      return *(a1 + 8);
    }

    v7 = v6[1];
    if (v7 == v5)
    {
      return *(a1 + 8);
    }

    else
    {
      v8 = *v6;
      *(v8 + 8) = v7;
      *v7 = v8;
      v9 = *v5;
      *(v9 + 8) = v6;
      *v6 = v9;
      *v5 = v6;
      v6[1] = v5;
      return *(a1 + 8);
    }
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::__erase_unique<geo::QuadTile>(void *a1, geo::QuadTile *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>(a1, a2);
  if (v3)
  {

    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase(a1, v3);
  }
}

void std::list<std::pair<geo::QuadTile,md::TerrainTileMesh>>::erase(uint64_t a1, uint64_t *__p)
{
  v4 = *__p;
  v3 = __p[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  --*(a1 + 16);
  v5 = __p[7];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  operator delete(__p);
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase(void *a1, void *__p)
{
  v2 = a1[1];
  v3 = __p[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
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

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != __p);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
  {
    if (v7 >= *&v2)
    {
      v7 %= *&v2;
    }
  }

  else
  {
    v7 &= *&v2 - 1;
  }

  if (v7 != v3)
  {
LABEL_18:
    if (!*__p)
    {
      goto LABEL_19;
    }

    v8 = *(*__p + 8);
    if (v4.u32[0] > 1uLL)
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

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *__p;
  if (*__p)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
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

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *__p;
    }
  }

  *v6 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
}

void std::__shared_ptr_emplace<ggl::CommonMesh::Pos4UVMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3CDB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

double md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  *a1 = 100;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = a1 + 48;
  *(a1 + 56) = a1 + 48;
  *(a1 + 64) = 0;
  return result;
}

uint64_t md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x44B2D9808992962CLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7 = *(a2 + 8);
    v9[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>::buildRequiredTuple<md::StyleLogicContext,md::PendingSceneContext>(v7);
    v9[1] = v8;
    v9[2] = gdc::Context::context<md::OverlaysContext>(v7);
    v9[3] = gdc::Context::context<md::GridContext>(v7);
    return (*(*v6 + 160))(v6, a2, v9, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>::buildRequiredTuple<md::StyleLogicContext,md::PendingSceneContext>(void *a1)
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xE42D19AFCA302E68);
  if (v2 && (v3 = v2[5], *(v3 + 8) == 0xE42D19AFCA302E68))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  gdc::Context::get<md::PendingSceneContext>(a1);
  return v4;
}

void *gdc::Context::context<md::OverlaysContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xADE8F13E6C18D970);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xADE8F13E6C18D970)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x44B2D9808992962CLL)
  {
    v10[12] = v3;
    v10[13] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v10[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>::buildRequiredTuple<md::StyleLogicContext,md::PendingSceneContext>(v8);
      v10[1] = v9;
      v10[2] = gdc::Context::context<md::OverlaysContext>(v8);
      v10[3] = gdc::Context::context<md::GridContext>(v8);
      return (*(*v7 + 152))(v7, a2, v10, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x44B2D9808992962CLL)
  {
    v10[12] = v3;
    v10[13] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v10[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>::buildRequiredTuple<md::StyleLogicContext,md::PendingSceneContext>(v8);
      v10[1] = v9;
      v10[2] = gdc::Context::context<md::OverlaysContext>(v8);
      v10[3] = gdc::Context::context<md::GridContext>(v8);
      return (*(*v7 + 144))(v7, a2, v10, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x44B2D9808992962CLL)
  {
    v10[12] = v3;
    v10[13] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v10[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>::buildRequiredTuple<md::StyleLogicContext,md::PendingSceneContext>(v8);
      v10[1] = v9;
      v10[2] = gdc::Context::context<md::OverlaysContext>(v8);
      v10[3] = gdc::Context::context<md::GridContext>(v8);
      return (*(*v7 + 136))(v7, a2, v10, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::TerrainMeshProviderLogic,md::TerrainMeshProviderContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x44B2D9808992962CLL)
  {
    v10[12] = v3;
    v10[13] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v10[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::PendingSceneContext>,gdc::TypeList<md::OverlaysContext,md::GridContext>>::buildRequiredTuple<md::StyleLogicContext,md::PendingSceneContext>(v8);
      v10[1] = v9;
      v10[2] = gdc::Context::context<md::OverlaysContext>(v8);
      v10[3] = gdc::Context::context<md::GridContext>(v8);
      return (*(*v7 + 128))(v7, a2, v10, v5);
    }
  }

  return result;
}

void sub_1B2C99274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v10);
  MEMORY[0x1B8C62190](v9, 0x10A0C407D9D2971);
  std::__list_imp<std::pair<geo::QuadTile,md::TerrainTileMesh>>::clear(va1);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  MEMORY[0x1B8C62190](a8, 0x10F1C40B0038B9CLL);
  _Unwind_Resume(a1);
}

uint64_t gdc::ObjectHolder<md::TerrainMeshProviderContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::TerrainMeshProviderContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::TerrainMeshProviderContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::TerrainMeshProviderContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E67A0;
  v2 = a1[4];
  if (v2)
  {
    std::__list_imp<std::pair<geo::QuadTile,md::TerrainTileMesh>>::clear((v2 + 48));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 8);
    MEMORY[0x1B8C62190](v2, 0x10A0C407D9D2971);
  }

  return a1;
}

void md::TerrainMeshProviderLogic::~TerrainMeshProviderLogic(md::TerrainMeshProviderLogic *this)
{
  md::TerrainMeshProviderLogic::~TerrainMeshProviderLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E6630;
  v2 = *(this + 28);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 26);
  *(this + 26) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 168);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 128);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::TrafficStyleAttributes(uint64_t a1, int a2)
{
  v14[4] = *MEMORY[0x1E69E9840];
  LODWORD(v11) = 5;
  WORD2(v11) = 10;
  LODWORD(v12) = 65543;
  WORD2(v12) = 0;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v13, &v11, 2uLL);
  v4 = v14;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v14, v13);
  gss::FeatureAttributeSet::sort(v14[0], v14[1]);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v13);
  LODWORD(v8) = 5;
  WORD2(v8) = 10;
  v9 = 65543;
  v10 = 1;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v11, &v8, 2uLL);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v13, &v11);
  gss::FeatureAttributeSet::sort(v13[0], v13[1]);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v11);
  LODWORD(v5) = 5;
  WORD2(v5) = 10;
  v6 = 65543;
  v7 = 2;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v8, &v5, 2uLL);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v11, &v8);
  gss::FeatureAttributeSet::sort(v11, v12);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v8);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (!a2)
  {
    if (v14 == a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = v13;
  if (v13 != a1)
  {
LABEL_3:
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>(a1, *v4, v4[1], (v4[1] - *v4) >> 3);
  }

LABEL_4:
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v11);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v13);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v14);
}

uint64_t md::CoastlineRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(a1 + 49) - *(a1 + 48) + 1), (*(a1 + 368) + 280), 0);
  *(*(a1 + 368) + 288) = result - *(a1 + 48);
  return result;
}

void md::CoastlineRenderLayer::layout(md::CoastlineRenderLayer *this, const md::LayoutContext *a2)
{
  v2 = this;
  v350 = *MEMORY[0x1E69E9840];
  v3 = *(this + 44);
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v4 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 376));
  if (v4)
  {
    v4 = *(*(v4 + 16) + 8 * *(v2 + 377));
  }

  v332 = v4;
  ggl::CommandBuffer::clearRenderItems(v4);
  v5 = *(v2 + 46);
  v6 = ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pushAll(v5[2]);
  v7 = v5[3];
  v9 = *(v7 + 32);
  v8 = *(v7 + 40);
  v327 = v5;
  if (v9 != v8)
  {
    v10 = *(v7 + 8);
    do
    {
      v11 = *v9;
      v12 = *(v7 + 16);
      if (v10 >= v12)
      {
        v13 = (v10 - *v7) >> 3;
        if ((v13 + 1) >> 61)
        {
          goto LABEL_325;
        }

        v14 = v12 - *v7;
        v15 = v14 >> 2;
        if (v14 >> 2 <= (v13 + 1))
        {
          v15 = v13 + 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        *&buf[2] = v7 + 24;
        if (v16)
        {
          v17 = ggl::zone_mallocator::instance(v6);
          v18 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *>(v17, v16);
        }

        else
        {
          v18 = 0;
        }

        v20 = &v18[8 * v16];
        v19 = &v18[8 * v13];
        *v19 = v11;
        v10 = v19 + 8;
        v21 = *(v7 + 8) - *v7;
        v22 = &v19[-v21];
        memcpy(&v19[-v21], *v7, v21);
        v23 = *v7;
        *v7 = v22;
        *&buf[0] = v23;
        *(&buf[0] + 1) = v23;
        *(v7 + 8) = v10;
        *&buf[1] = v23;
        v24 = *(v7 + 16);
        *(v7 + 16) = v20;
        *(&buf[1] + 1) = v24;
        v6 = std::__split_buffer<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,geo::allocator_adapter<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(buf);
      }

      else
      {
        *v10++ = v11;
      }

      *(v7 + 8) = v10;
      ++v9;
    }

    while (v9 != v8);
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);
    v5 = v327;
  }

  if (v9 != v8)
  {
    *(v7 + 40) = v9;
  }

  ggl::FragmentedPool<ggl::RenderItem>::pushAll(v5[13]);
  v25 = ggl::FragmentedPool<ggl::RenderItem>::pushAll(v5[14]);
  v26 = *v5;
  v28 = *(*v5 + 32);
  v27 = *(*v5 + 40);
  if (v28 != v27)
  {
    v29 = *(v26 + 8);
    do
    {
      v30 = *v28;
      v31 = *(v26 + 16);
      if (v29 >= v31)
      {
        v32 = (v29 - *v26) >> 3;
        if ((v32 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v33 = v31 - *v26;
        v34 = v33 >> 2;
        if (v33 >> 2 <= (v32 + 1))
        {
          v34 = v32 + 1;
        }

        if (v33 >= 0x7FFFFFFFFFFFFFF8)
        {
          v35 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }

        *&buf[2] = v26 + 24;
        if (v35)
        {
          v36 = ggl::zone_mallocator::instance(v25);
          v37 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GlowAlpha::MeshPipelineSetup *>(v36, v35);
        }

        else
        {
          v37 = 0;
        }

        v39 = &v37[8 * v35];
        v38 = &v37[8 * v32];
        *v38 = v30;
        v29 = v38 + 8;
        v40 = *(v26 + 8) - *v26;
        v41 = &v38[-v40];
        memcpy(&v38[-v40], *v26, v40);
        v42 = *v26;
        *v26 = v41;
        *&buf[0] = v42;
        *(&buf[0] + 1) = v42;
        *(v26 + 8) = v29;
        *&buf[1] = v42;
        v43 = *(v26 + 16);
        *(v26 + 16) = v39;
        *(&buf[1] + 1) = v43;
        v25 = std::__split_buffer<ggl::GlowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::GlowAlpha::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(buf);
      }

      else
      {
        *v29++ = v30;
      }

      *(v26 + 8) = v29;
      ++v28;
    }

    while (v28 != v27);
    v28 = *(v26 + 32);
    v27 = *(v26 + 40);
    v5 = v327;
  }

  if (v28 != v27)
  {
    *(v26 + 40) = v28;
  }

  v44 = v5[1];
  v46 = *(v44 + 32);
  v45 = *(v44 + 40);
  if (v46 != v45)
  {
    v47 = *(v44 + 8);
    do
    {
      v48 = *v46;
      v49 = *(v44 + 16);
      if (v47 >= v49)
      {
        v50 = (v47 - *v44) >> 3;
        if ((v50 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v51 = v49 - *v44;
        v52 = v51 >> 2;
        if (v51 >> 2 <= (v50 + 1))
        {
          v52 = v50 + 1;
        }

        if (v51 >= 0x7FFFFFFFFFFFFFF8)
        {
          v53 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v52;
        }

        *&buf[2] = v44 + 24;
        if (v53)
        {
          v54 = ggl::zone_mallocator::instance(v25);
          v55 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glow::MeshPipelineSetup *>(v54, v53);
        }

        else
        {
          v55 = 0;
        }

        v57 = &v55[8 * v53];
        v56 = &v55[8 * v50];
        *v56 = v48;
        v47 = v56 + 8;
        v58 = *(v44 + 8) - *v44;
        v59 = &v56[-v58];
        memcpy(&v56[-v58], *v44, v58);
        v60 = *v44;
        *v44 = v59;
        *&buf[0] = v60;
        *(&buf[0] + 1) = v60;
        *(v44 + 8) = v47;
        *&buf[1] = v60;
        v61 = *(v44 + 16);
        *(v44 + 16) = v57;
        *(&buf[1] + 1) = v61;
        v25 = std::__split_buffer<ggl::Glow::MeshPipelineSetup *,geo::allocator_adapter<ggl::Glow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(buf);
      }

      else
      {
        *v47++ = v48;
      }

      *(v44 + 8) = v47;
      ++v46;
    }

    while (v46 != v45);
    v46 = *(v44 + 32);
    v45 = *(v44 + 40);
  }

  if (v46 != v45)
  {
    *(v44 + 40) = v46;
  }

  if (*(v2 + 35) == *(v2 + 34))
  {
    return;
  }

  v62 = *(*(v2 + 46) + 288);
  LOBYTE(buf[0]) = 0;
  v349 = 0;
  md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::layoutStencilTiles(v2, a2, v332, v62, 1, buf);
  v63 = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
  if (!v63)
  {
    return;
  }

  v293 = v63;
  v295 = *a2;
  [v295 contentScale];
  v65 = v64;
  v66 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
  v332[4] = *(*(v2 + 46) + 280);
  v294 = v66;
  v67 = fmaxf(*(v66 + 3080) + *(v66 + 3076), 1.0);
  v68 = *(v2 + 34);
  v296 = *(v2 + 35);
  v299 = v2;
  if (v68 != v296)
  {
    v69 = 1.0 / v65;
    v70 = v67;
    if (v67 >= 0x17)
    {
      v70 = 23;
    }

    v328 = v70;
    v71 = v66 + 3112;
    v301 = vdupq_n_s32(0x37800080u);
    do
    {
      v298 = v68;
      v72 = *v68;
      v73 = *(*v68 + 392);
      v74 = 56;
      if (*(v2 + 360))
      {
        v74 = 64;
      }

      v75 = *(*(v2 + 46) + v74);
      v76 = v72[29];
      v321 = v72[28];
      if (v76)
      {
        atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v77 = v72[31];
      v317 = v72[30];
      if (v77)
      {
        atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v78 = *(v73 + 784);
      v79 = *(v73 + 792);
      if (v78 != v79)
      {
        v80 = (*(v73 + 169) + *(*(v2 + 46) + 288));
        v303 = *(v73 + 792);
        v308 = v76;
        v314 = v77;
        do
        {
          v81 = **v78;
          v82 = (*v78)[1];
          if (v82)
          {
            atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&__p, v81, v82);
          if (v82)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v82);
          }

          if (v338 == 1)
          {
            v83 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 139, v328, 2u, 0);
            v85 = v84 + v84;
            if ((v84 + v84) > 0.0)
            {
              v86 = *(*(v2 + 46) + 24);
              v87 = v86[1];
              if (v87 == *v86)
              {
                v89 = v86[11];
                if (!v89)
                {
                  goto LABEL_324;
                }

                v83 = (*(*v89 + 48))(v89);
                v88 = v83;
              }

              else
              {
                v88 = *(v87 - 8);
                v86[1] = v87 - 8;
              }

              v91 = v86[5];
              v90 = v86[6];
              if (v91 >= v90)
              {
                v93 = v86[4];
                v94 = (v91 - v93) >> 3;
                if ((v94 + 1) >> 61)
                {
                  goto LABEL_325;
                }

                v95 = v90 - v93;
                v96 = v95 >> 2;
                if (v95 >> 2 <= (v94 + 1))
                {
                  v96 = v94 + 1;
                }

                if (v95 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v97 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v97 = v96;
                }

                *&buf[2] = v86 + 7;
                if (v97)
                {
                  v98 = ggl::zone_mallocator::instance(v83);
                  v99 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *>(v98, v97);
                }

                else
                {
                  v99 = 0;
                }

                v101 = &v99[8 * v97];
                v100 = &v99[8 * v94];
                *v100 = v88;
                v92 = v100 + 1;
                v102 = v86[4];
                v103 = v86[5] - v102;
                v104 = v100 - v103;
                memcpy(v100 - v103, v102, v103);
                v105 = v86[4];
                v86[4] = v104;
                v86[5] = v92;
                v106 = v86[6];
                v86[6] = v101;
                *&buf[1] = v105;
                *(&buf[1] + 1) = v106;
                *&buf[0] = v105;
                *(&buf[0] + 1) = v105;
                std::__split_buffer<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,geo::allocator_adapter<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(buf);
                v2 = v299;
              }

              else
              {
                *v91 = v88;
                v92 = v91 + 1;
              }

              v86[5] = v92;
              *&buf[0] = v88;
              v107 = v86[15];
              if (!v107)
              {
LABEL_324:
                std::__throw_bad_function_call[abi:nn200100]();
LABEL_325:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              (*(*v107 + 48))(v107, buf);
              v108 = *(v88 + 17);
              *v108 = v321;
              v108[1] = 0;
              v109 = *(v88 + 29);
              v76 = v308;
              if (v308)
              {
                atomic_fetch_add_explicit(&v308->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v110 = v109[1];
              *v109 = v321;
              v109[1] = v308;
              if (v110)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v110);
              }

              v111 = *(v88 + 17);
              *(v111 + 16) = v317;
              *(v111 + 24) = 0;
              v112 = *(v88 + 29);
              if (v314)
              {
                atomic_fetch_add_explicit(&v314->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v113 = *(v112 + 24);
              *(v112 + 16) = v317;
              *(v112 + 24) = v314;
              if (v113)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v113);
              }

              v114 = 0.0;
              if (v338 == 1)
              {
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 140, v328, 2u, 0);
                v114 = v115;
              }

              for (i = 0; i != 24; i += 8)
              {
                *(buf + i) = -*(v71 + i);
              }

              v117 = *&buf[1];
              v334 = buf[0];
              v335 = *&buf[1];
              if (fabs(v114) > 0.5)
              {
                v345 = 0u;
                memset(&buf[1], 0, 32);
                *&v346 = 0x3FF0000000000000;
                v118 = __sincos_stret(v114 * 0.0174532925);
                *buf = v118.__cosval;
                *(&buf[0] + 1) = *&v118.__sinval;
                *(&buf[1] + 1) = -v118.__sinval;
                *&buf[2] = v118.__cosval;
                v119 = gm::operator*<double,3,3,1>(buf, &v334);
                v117 = v120;
                v334.f64[0] = v119;
                v334.f64[1] = v121;
                v335 = v120;
              }

              v122 = *(*(v88 + 17) + 32);
              ggl::BufferMemory::BufferMemory(&v340);
              ggl::ResourceAccessor::accessConstantData(buf, 0, v122, 1);
              ggl::BufferMemory::operator=(&v340, buf);
              ggl::BufferMemory::~BufferMemory(buf);
              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(buf, *(__p.__r_.__value_.__r.__words[0] + 24), 141, v328, 2u, 0, v123, v124);
              v125 = *(&v342 + 1);
              **(&v342 + 1) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&buf[0])), v301);
              v126 = v117;
              v125[4] = vcvt_f32_f64(v334);
              v125[5].f32[0] = v126;
              v125[2].f32[0] = v85 * v69;
              ggl::BufferMemory::~BufferMemory(&v340);
              v127 = (*v78)[2];
              v128 = *v127;
              if (*(**(**v127 + 64) + 48) != *(**(**v127 + 64) + 40))
              {
                v129 = v127[1];
                while (v128 != v129)
                {
                  v130 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 46) + 112));
                  v130[3] = v75;
                  v130[4] = v88;
                  v130[8] = *v128;
                  *(v130 + 10) = v80;
                  *&buf[0] = v130;
                  std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v332 + 9), buf);
                  ++v128;
                }
              }

              v77 = v314;
              v79 = v303;
            }
          }

          if (v338 == 1)
          {
            (*(*__p.__r_.__value_.__l.__data_ + 56))(__p.__r_.__value_.__r.__words[0]);
          }

          if (v337)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v337);
          }

          if (__p.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](__p.__r_.__value_.__l.__size_);
          }

          ++v78;
        }

        while (v78 != v79);
      }

      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v77);
      }

      if (v76)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v76);
      }

      v68 = v298 + 8;
    }

    while (v298 + 8 != v296);
  }

  v131 = +[VKPlatform sharedPlatform];
  v132 = [v131 supportsCoastlineGlows];

  if (!v132)
  {
    goto LABEL_322;
  }

  v133 = *(v2 + 34);
  v134 = *(v2 + 35);
  if (v133 == v134)
  {
    goto LABEL_322;
  }

  if (v67 >= 0x17)
  {
    v135 = 23;
  }

  else
  {
    v135 = v67;
  }

  v136 = 0;
LABEL_132:
  v304 = v136;
  v137 = v136;
  while (2)
  {
    v138 = *(*v133 + 392);
    v139 = *(v138 + 784);
    v140 = *(v138 + 792);
    while (v139 != v140)
    {
      v141 = **v139;
      v142 = (*v139)[1];
      if (v142)
      {
        atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(buf, v141, v142);
      if (v142)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v142);
      }

      if (LOBYTE(buf[2]) != 1)
      {
        v144 = 0;
LABEL_147:
        v147 = 0;
LABEL_148:
        v137 |= v144 && v147;
        v152 = 1;
        goto LABEL_149;
      }

      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&buf[0] + 24), 142, v135, 2u, 0);
      v144 = v143 > 0.0019531;
      if ((buf[2] & 1) == 0)
      {
        goto LABEL_147;
      }

      v145 = v143;
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&buf[0] + 24), 0, v135, 2u, 0);
      v147 = v146 > 0.0019531;
      if ((buf[2] & 1) == 0)
      {
        goto LABEL_148;
      }

      v148 = v146;
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&buf[0] + 24), 143, v135, 2u, 0);
      if ((buf[2] & 1) == 0)
      {
        goto LABEL_148;
      }

      v150 = v149 <= 0.0019531;
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*&buf[0] + 24), 1, v135, 2u, 0);
      v137 |= v145 > 0.0019531 && v148 > 0.0019531;
      v152 = v150 || v151 <= 0.0019531;
      if (buf[2])
      {
        (*(**&buf[0] + 56))(*&buf[0]);
      }

      v2 = v299;
LABEL_149:
      if (*(&buf[1] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&buf[1] + 1));
      }

      if (*(&buf[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&buf[0] + 1));
      }

      if ((v152 & 1) == 0)
      {
        v133 += 8;
        v136 = 1;
        if (v133 != v134)
        {
          goto LABEL_132;
        }

        goto LABEL_161;
      }

      ++v139;
    }

    v133 += 8;
    if (v133 != v134)
    {
      continue;
    }

    break;
  }

  LOBYTE(v136) = v304;
  if (v137)
  {
LABEL_161:
    v305 = v136;
    v153 = *(v2 + 34);
    v154 = *(v2 + 35);
    if (v153 != v154)
    {
      v309 = *(v2 + 35);
      do
      {
        v155 = *v153;
        v318 = (*v153)[49];
        LODWORD(__p.__r_.__value_.__l.__data_) = 5;
        WORD2(__p.__r_.__value_.__r.__words[0]) = 2;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = 3;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 18;
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](buf, &__p, 2uLL);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v340, buf);
        v322 = v153;
        gss::FeatureAttributeSet::sort(v340, *(&v340 + 1));
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
        v156 = *(*(v2 + 46) + 288);
        v157 = *(v318 + 169);
        v158 = (*(*v318 + 48))(v318);
        v159 = *v158;
        v160 = v158[1];
        if (*v158 != v160)
        {
          v161 = (v157 + v156) | 0x40;
          do
          {
            v162 = *(v159 + 8);
            v163 = [v162 attributeSets];
            v164 = *(v163 + 24) == *(v163 + 32);

            if (v164)
            {
              if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
              {
                dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
              }

              v179 = GEOGetVectorKitVKDefaultLog_log;
              if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
              {
                FillRect = grl::IconMetricsRenderResult::getFillRect(v318);
                gdc::LayerDataRequestKey::keysInt32Str(&__p, FillRect);
                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                LODWORD(buf[0]) = 136315906;
                *(buf + 4) = p_p;
                WORD6(buf[0]) = 2080;
                *(buf + 14) = "false";
                WORD3(buf[1]) = 2080;
                *(&buf[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CoastlineRenderLayer.mm";
                LOWORD(buf[2]) = 1024;
                *(&buf[2] + 2) = 186;
                _os_log_impl(&dword_1B2754000, v179, OS_LOG_TYPE_ERROR, "Expecting all polygon groups to have at least one attribute set (key:%s): Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }

            else
            {
              v165 = *(v159 + 8);
              md::createFeatureAttributeSet(&__p, *([v165 attributeSets] + 24));

              if (gss::FeatureAttributeSet::isSuperset(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, v340, *(&v340 + 1)))
              {
                v166 = ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pop(*(*(v2 + 46) + 16));
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v166 + 17), *(v166 + 29), v155[28], v155[29]);
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v166 + 17), *(v166 + 29), v155[30], v155[31]);
                **(v166 + 21) = *(*(v2 + 46) + 224);
                ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(v166 + 17) + 32));
                *(*(&buf[2] + 1) + 64) = xmmword_1B33B0710;
                v167 = *(v159 + 8);
                v168 = [v167 origin];
                *(*(&buf[2] + 1) + 88) = *v168;

                v169 = *(v159 + 8);
                [v169 size];
                v170 = *(&buf[2] + 1);
                *(*(&buf[2] + 1) + 96) = v171;
                *(v170 + 100) = v172;

                v173 = *(&buf[2] + 1);
                *(*(&buf[2] + 1) + 80) = 1065353216;
                *v173 = 1065353216;
                *(v173 + 12) = 0;
                *(v173 + 4) = 0;
                *(v173 + 20) = 1065353216;
                *(v173 + 24) = 0;
                *(v173 + 32) = 0;
                *(v173 + 40) = 1065353216;
                *(v173 + 52) = 0;
                *(v173 + 44) = 0;
                *(v173 + 60) = 1065353216;
                ggl::BufferMemory::~BufferMemory(buf);
                v174 = *(v159 + 8);
                v175 = [v174 fillMeshes];

                v176 = *v175;
                v177 = *(v175 + 8);
                while (v176 != v177)
                {
                  v178 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 46) + 104));
                  v178[3] = *(*(v2 + 46) + 32);
                  v178[4] = v166;
                  v178[8] = *v176;
                  *(v178 + 10) = v161;
                  *&buf[0] = v178;
                  std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v332 + 9), buf);
                  v176 += 2;
                }
              }

              std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__p);
            }

            v159 += 24;
          }

          while (v159 != v160);
        }

        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v340);
        v153 = v322 + 1;
      }

      while (v322 + 1 != v309);
      v153 = *(v2 + 34);
      v154 = *(v2 + 35);
    }

    if (v153 != v154)
    {
      v310 = v154;
      do
      {
        v323 = v153;
        v182 = *v153;
        v183 = (*v153)[49];
        v184 = *(v183 + 784);
        v185 = *(v183 + 792);
        if (v184 != v185)
        {
          v186 = (*(v183 + 169) + *(*(v2 + 46) + 288));
          do
          {
            v187 = **v184;
            v188 = (*v184)[1];
            if (v188)
            {
              atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v340, v187, v188);
            if (v188)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v188);
            }

            if (v342)
            {
              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v340 + 24), 142, v135, 2u, 0);
              v190 = v189;
              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v340 + 24), 0, v135, 2u, 0);
              if (v190 > 0.0)
              {
                v192 = v191;
                if (v191 > 0.0)
                {
                  v193 = ggl::FragmentedPool<ggl::GlowAlpha::MeshPipelineSetup>::pop(**(v2 + 46));
                  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v193 + 17), *(v193 + 29), v182[28], v182[29]);
                  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v193 + 17), *(v193 + 29), v182[30], v182[31]);
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(v193 + 17) + 32));
                  v194 = *(&buf[2] + 1);
                  **(&buf[2] + 1) = -v190;
                  *(v194 + 4) = v192;
                  ggl::BufferMemory::~BufferMemory(buf);
                  v195 = (*v184)[3];
                  v196 = *v195;
                  if (*(**(**v195 + 64) + 48) != *(**(**v195 + 64) + 40))
                  {
                    v197 = v195[1];
                    while (v196 != v197)
                    {
                      v198 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 46) + 112));
                      v198[3] = *(*(v2 + 46) + 88);
                      v198[4] = v193;
                      v198[8] = *v196;
                      *(v198 + 10) = v186;
                      *&buf[0] = v198;
                      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v332 + 9), buf);
                      ++v196;
                    }
                  }
                }
              }
            }

            if (v342 == 1)
            {
              (*(*v340 + 56))(v340);
            }

            if (*(&v341 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v341 + 1));
            }

            if (*(&v340 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v340 + 1));
            }

            ++v184;
          }

          while (v184 != v185);
        }

        v153 = v323 + 1;
      }

      while (v323 + 1 != v310);
      v153 = *(v2 + 34);
      v154 = *(v2 + 35);
    }

    if (v153 != v154)
    {
      v315 = vdupq_n_s32(0x37800080u);
      v311 = v154;
      do
      {
        v199 = *v153;
        v200 = (*v153)[49];
        v201 = (*v153)[29];
        v324 = v153;
        v329 = (*v153)[28];
        if (v201)
        {
          atomic_fetch_add_explicit(&v201->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v202 = v199[31];
        v319 = v199[30];
        if (v202)
        {
          atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v203 = *(v200 + 784);
        v204 = *(v200 + 792);
        if (v203 != v204)
        {
          v205 = (*(v200 + 169) + *(*(v2 + 46) + 288));
          do
          {
            v206 = **v203;
            v207 = (*v203)[1];
            if (v207)
            {
              atomic_fetch_add_explicit(&v207->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v340, v206, v207);
            if (v207)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v207);
            }

            if (v342)
            {
              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v340 + 24), 142, v135, 2u, 0);
              v209 = v208;
              gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v340 + 24), 0, v135, 2u, 0);
              if (v209 > 0.0 && v210 > 0.0)
              {
                v211 = ggl::FragmentedPool<ggl::Glow::MeshPipelineSetup>::pop(*(*(v2 + 46) + 8));
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v211 + 17), *(v211 + 29), v329, v201);
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v211 + 17), *(v211 + 29), v319, v202);
                ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(buf, *(*(v211 + 17) + 32));
                v212 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(a2 + 2), *(*(a2 + 2) + 8));
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v334, *(v340 + 24), 144, v135, 2u, 0, v213, v214);
                *&__p.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v334.f64[0])), v315);
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v340 + 24), 491, v135, 2u, 0);
                md::AccessibilityHelper::luminanceAdjustedColor(&v334, *v212, &__p, v215);
                v216 = *(&buf[2] + 1);
                **(&buf[2] + 1) = v334;
                *(v216 + 16) = -v209;
                ggl::BufferMemory::~BufferMemory(buf);
                v217 = (*v203)[3];
                v218 = *v217;
                if (*(**(**v217 + 64) + 48) != *(**(**v217 + 64) + 40))
                {
                  v219 = v217[1];
                  while (v218 != v219)
                  {
                    v220 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 46) + 112));
                    v220[3] = *(*(v2 + 46) + 96);
                    v220[4] = v211;
                    v220[8] = *v218;
                    *(v220 + 10) = v205;
                    *&buf[0] = v220;
                    std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v332 + 9), buf);
                    ++v218;
                  }
                }
              }
            }

            if (v342 == 1)
            {
              (*(*v340 + 56))(v340);
            }

            if (*(&v341 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v341 + 1));
            }

            if (*(&v340 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v340 + 1));
            }

            ++v203;
          }

          while (v203 != v204);
        }

        if (v202)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v202);
        }

        if (v201)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v201);
        }

        v153 = v324 + 1;
      }

      while (v324 + 1 != v311);
    }

    v221 = gdc::ToCoordinateSystem(*(v293 + 320));
    v222 = 16;
    if (v221)
    {
      v222 = 18;
    }

    v223 = &v293[v222];
    v224 = v223[1];
    v302 = *v223;
    if (v224)
    {
      atomic_fetch_add_explicit(&v224->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v300 = v224;
    if (v305)
    {
      v225 = md::LayoutContext::cameraType(a2);
      if (gdc::ToCoordinateSystem(v225))
      {
        memset(buf + 8, 0, 32);
        v345 = 0u;
        v346 = 0u;
        *&v348[8] = 0u;
        v347 = 0x3FF0000000000000uLL;
        *&v348[24] = 0x3FF0000000000000;
        *&buf[0] = 0x4000000000000000;
        *(&buf[2] + 1) = 0x4000000000000000;
        __asm { FMOV            V0.2D, #-1.0 }

        *v348 = _Q0;
      }

      else
      {
        v230 = *(v294 + 2872);
        v346 = *(v294 + 2856);
        v347 = v230;
        v231 = *(v294 + 2904);
        *v348 = *(v294 + 2888);
        *&v348[16] = v231;
        v232 = *(v294 + 2808);
        buf[0] = *(v294 + 2792);
        buf[1] = v232;
        v233 = *(v294 + 2840);
        buf[2] = *(v294 + 2824);
        v345 = v233;
      }

      v234 = 0;
      v235 = buf;
      do
      {
        v237 = *v235;
        v236 = v235[1];
        v235 += 2;
        *(&v340 + v234) = vcvt_hight_f32_f64(vcvt_f32_f64(v237), v236);
        v234 += 16;
      }

      while (v234 != 64);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&__p, **(*(*(v2 + 46) + 120) + 136), 1);
      v238 = v339;
      *v339 = v340;
      v238[1] = v341;
      v238[2] = v342;
      v238[3] = v343;
      ggl::BufferMemory::~BufferMemory(&__p);
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*(*(v2 + 46) + 120) + 136), *(*(*(v2 + 46) + 120) + 232), *(*(v2 + 46) + 240), *(*(v2 + 46) + 248));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v340, *(*(*(*(v2 + 46) + 120) + 136) + 32));
      v239 = *(&v342 + 1);
      *(*(&v342 + 1) + 64) = 0;
      *(v239 + 72) = 0;
      *(v239 + 88) = xmmword_1B33B0720;
      *(v239 + 80) = 1065353216;
      *v239 = 1065353216;
      *(v239 + 12) = 0;
      *(v239 + 4) = 0;
      *(v239 + 20) = 1065353216;
      *(v239 + 24) = 0;
      *(v239 + 32) = 0;
      *(v239 + 40) = 1065353216;
      *(v239 + 52) = 0;
      *(v239 + 44) = 0;
      *(v239 + 60) = 1065353216;
      ggl::BufferMemory::~BufferMemory(&v340);
      v240 = *(v2 + 46);
      v241 = v240[26];
      v241[3] = v240[5];
      v241[4] = v240[15];
      v241[8] = v302;
      *&v340 = v241;
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v332 + 9), &v340);
      v242 = *(v2 + 34);
      v243 = *(v2 + 35);
      if (v242 != v243)
      {
        v306 = *(v2 + 35);
        do
        {
          v244 = *v242;
          v245 = *(*v242 + 392);
          v246 = *(*v242 + 232);
          v330 = *(*v242 + 224);
          if (v246)
          {
            atomic_fetch_add_explicit(&v246->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v312 = v242;
          v247 = *(v244 + 248);
          v325 = *(v244 + 240);
          if (v247)
          {
            atomic_fetch_add_explicit(&v247->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v248 = *(v245 + 784);
          v249 = *(v245 + 792);
          if (v248 != v249)
          {
            v250 = (*(v245 + 169) + *(*(v2 + 46) + 288));
            do
            {
              v251 = **v248;
              v252 = (*v248)[1];
              if (v252)
              {
                atomic_fetch_add_explicit(&v252->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&__p, v251, v252);
              if (v252)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v252);
              }

              if (v338)
              {
                v253 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(__p.__r_.__value_.__r.__words[0] + 24), 91, v135, 2u, 0);
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 143, v135, 2u, 0);
                v255 = v254;
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 1, v135, 2u, 0);
                if (v255 > 0.0)
                {
                  v257 = v256;
                  if (v256 > 0.0 && v253 != 0)
                  {
                    v259 = ggl::FragmentedPool<ggl::GlowAlpha::MeshPipelineSetup>::pop(**(v2 + 46));
                    ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v259 + 17), *(v259 + 29), v330, v246);
                    ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v259 + 17), *(v259 + 29), v325, v247);
                    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v340, *(*(v259 + 17) + 32));
                    v260 = *(&v342 + 1);
                    **(&v342 + 1) = v255;
                    *(v260 + 4) = v257;
                    ggl::BufferMemory::~BufferMemory(&v340);
                    v261 = (*v248)[3];
                    v262 = *v261;
                    if (*(**(**v261 + 64) + 48) != *(**(**v261 + 64) + 40))
                    {
                      v263 = v261[1];
                      while (v262 != v263)
                      {
                        v264 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 46) + 112));
                        v264[3] = *(*(v2 + 46) + 72);
                        v264[4] = v259;
                        v264[8] = *v262;
                        *(v264 + 10) = v250;
                        *&v340 = v264;
                        std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v332 + 9), &v340);
                        ++v262;
                      }
                    }
                  }
                }
              }

              if (v338 == 1)
              {
                (*(*__p.__r_.__value_.__l.__data_ + 56))(__p.__r_.__value_.__r.__words[0]);
              }

              if (v337)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v337);
              }

              if (__p.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](__p.__r_.__value_.__l.__size_);
              }

              ++v248;
            }

            while (v248 != v249);
          }

          if (v247)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v247);
          }

          if (v246)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v246);
          }

          v242 = v312 + 1;
        }

        while (v312 + 1 != v306);
        v242 = *(v2 + 34);
        v243 = *(v2 + 35);
      }

      if (v242 != v243)
      {
        v316 = vdupq_n_s32(0x37800080u);
        v307 = v243;
        do
        {
          v265 = *v242;
          v266 = *(*v242 + 392);
          v267 = *(*v242 + 232);
          v326 = *(*v242 + 224);
          if (v267)
          {
            atomic_fetch_add_explicit(&v267->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v313 = v242;
          v268 = *(v265 + 248);
          v320 = *(v265 + 240);
          if (v268)
          {
            atomic_fetch_add_explicit(&v268->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v331 = v268;
          v269 = *(v266 + 784);
          v270 = *(v266 + 792);
          if (v269 != v270)
          {
            v271 = (*(v266 + 169) + *(*(v2 + 46) + 288));
            do
            {
              v272 = **v269;
              v273 = (*v269)[1];
              if (v273)
              {
                atomic_fetch_add_explicit(&v273->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&__p, v272, v273);
              if (v273)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v273);
              }

              if (v338)
              {
                v274 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(__p.__r_.__value_.__r.__words[0] + 24), 91, v135, 2u, 0);
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 143, v135, 2u, 0);
                v276 = v275;
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 1, v135, 2u, 0);
                if (v276 > 0.0 && v277 > 0.0 && v274 != 0)
                {
                  v279 = ggl::FragmentedPool<ggl::Glow::MeshPipelineSetup>::pop(*(*(v2 + 46) + 8));
                  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v279 + 17), *(v279 + 29), v326, v267);
                  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v279 + 17), *(v279 + 29), v320, v331);
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v340, *(*(v279 + 17) + 32));
                  v280 = v267;
                  v281 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(a2 + 2), *(*(a2 + 2) + 8));
                  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v333, *(__p.__r_.__value_.__r.__words[0] + 24), 145, v135, 2u, 0, v282, v283);
                  v334 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v333)), v316);
                  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(__p.__r_.__value_.__r.__words[0] + 24), 492, v135, 2u, 0);
                  v284 = *v281;
                  v267 = v280;
                  md::AccessibilityHelper::luminanceAdjustedColor(&v333, v284, &v334, v285);
                  v286 = *(&v342 + 1);
                  **(&v342 + 1) = v333;
                  *(v286 + 16) = v276;
                  ggl::BufferMemory::~BufferMemory(&v340);
                  v287 = (*v269)[3];
                  v288 = *v287;
                  if (*(**(**v287 + 64) + 48) != *(**(**v287 + 64) + 40))
                  {
                    v289 = v287[1];
                    while (v288 != v289)
                    {
                      v290 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v2 + 46) + 112));
                      v290[3] = *(*(v2 + 46) + 80);
                      v290[4] = v279;
                      v290[8] = *v288;
                      *(v290 + 10) = v271;
                      *&v340 = v290;
                      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v332 + 9), &v340);
                      ++v288;
                    }
                  }
                }
              }

              if (v338 == 1)
              {
                (*(*__p.__r_.__value_.__l.__data_ + 56))(__p.__r_.__value_.__r.__words[0]);
              }

              if (v337)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v337);
              }

              if (__p.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](__p.__r_.__value_.__l.__size_);
              }

              ++v269;
            }

            while (v269 != v270);
          }

          if (v331)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v331);
          }

          if (v267)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v267);
          }

          v242 = v313 + 1;
        }

        while (v313 + 1 != v307);
      }
    }

    v291 = *(v2 + 46);
    v292 = v291[27];
    v292[3] = v291[6];
    v292[4] = v291[15];
    v292[8] = v302;
    *&buf[0] = v292;
    std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v332 + 9), buf);
    if (v300)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v300);
    }
  }

LABEL_322:
}

void sub_1B2C9B208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

double gm::operator*<double,3,3,1>(double *a1, uint64_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    v3 = 0;
    v4 = 0.0;
    v5 = a1;
    do
    {
      v6 = *v5;
      v5 += 3;
      v4 = v4 + *(a2 + v3) * v6;
      v3 += 8;
    }

    while (v3 != 24);
    *(&v8 + i) = v4;
    ++a1;
  }

  return v8;
}

void *ggl::FragmentedPool<ggl::RenderItem>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 != *a1)
  {
    v3 = *(v2 - 8);
    v7 = v3;
    a1[1] = v2 - 8;
LABEL_5:
    std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v7);
    std::function<void ()(ggl::RenderItem *)>::operator()(a1[15], v3);
    return v3;
  }

  v4 = a1[11];
  if (v4)
  {
    v3 = (*(*v4 + 48))(v4);
    v7 = v3;
    goto LABEL_5;
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
  return ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pop(v6);
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonFill::CompressedMeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PolygonFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::GlowAlpha::MeshPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GlowAlpha::MeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::GlowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::GlowAlpha::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::Glow::MeshPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glow::MeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::Glow::MeshPipelineSetup *,geo::allocator_adapter<ggl::Glow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Glow::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glow::MeshPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GlowAlpha::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GlowAlpha::MeshPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonFill::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonFill::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

int *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<float>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5)
{
  v6 = a2;
  v7 = *(a1 + 16 * a4 + 16);
  if (v7)
  {
    v8 = a3;
    v9 = a1 + 16 * a4;
    if (*(v9 + 56))
    {
      v12 = *(v9 + 48);
      v13 = 8 * *(v9 + 56);
      while (1)
      {
        v14 = *(*v12 + 72);
        if (v14)
        {
          v15 = *v14 + 120 * *(v14 + v8 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v15, v6) != *(v15 + 12))
          {
            break;
          }
        }

        v12 += 8;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_3;
        }
      }

      return gss::CartoStyle<gss::PropertyID>::valueForExistingKeyAtZ<float>(v14, v6, v8);
    }

    else
    {
LABEL_3:
      v10 = *(v7 + 72);

      return gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<float>(v10, v6, v8, a5);
    }
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    return gss::defaultValueForKey<gss::PropertyID,float>(a2);
  }
}

int *gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<float>(uint64_t *a1, int a2, unsigned int a3, _BYTE *a4)
{
  if (!a1 || (a3 >= 0x17 ? (v6 = 23) : (v6 = a3), v7 = *(a1 + v6 + 16), v8 = *a1, v9 = *a1 + 120 * *(a1 + v6 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v9, a2) == *(v9 + 12)))
  {
    if (a4)
    {
      *a4 = 0;
    }

    return gss::defaultValueForKey<gss::PropertyID,float>(a2);
  }

  else
  {
    v10 = v8 + 120 * v7;
    v11 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v10 + 48), a2);
    if (v11 == *(v10 + 60))
    {
      return &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      return (*(v10 + 48) + *(v10 + 56) + 4 * v11);
    }
  }
}

void _setupRenderItems(float32x4_t *a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, float32_t a9, float a10, float a11, float32_t a12, float32_t a13, float32_t a14, float32_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v33 = 0;
  v62[4] = *MEMORY[0x1E69E9840];
  v62[0] = a7;
  v62[1] = a8;
  __asm { FMOV            V0.4S, #1.0 }

  v57 = _Q0;
  v62[2] = a16;
  v62[3] = a17;
  do
  {
    v40 = v62[v33];
    if (v40)
    {
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(v40 + 136) + 32));
      v41 = 0;
      v42 = v61;
      v61[5].f32[0] = a12;
      v42->f32[0] = a9;
      v42[4] = vsubq_f32(v57, *a1);
      do
      {
        v42[3].i32[v41] = *(a2 + v41 * 4);
        ++v41;
      }

      while (v41 != 4);
      v42[2].f32[0] = a13;
      v42[5].f32[3] = a15;
      v42[6].f32[0] = a14;
      ggl::BufferMemory::~BufferMemory(v60);
    }

    ++v33;
  }

  while (v33 != 4);
  if ((a21 & 1) == 0)
  {
    v43 = a1->f32[3] * 0.9;
    if (a7)
    {
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(a7 + 136) + 32));
      v44 = v61;
      v61[5].f32[1] = v43;
      v44[5].i32[2] = 1065353216;
      ggl::BufferMemory::~BufferMemory(v60);
    }

    if (a8)
    {
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(a8 + 136) + 32));
      v45 = v61;
      v61[5].f32[1] = v43;
      v45[5].i32[2] = 1065353216;
      ggl::BufferMemory::~BufferMemory(v60);
    }

    if (a16)
    {
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(a16 + 136) + 32));
      v46 = v61;
      v61[5].f32[1] = v43;
      v46[5].i32[2] = 1065353216;
      ggl::BufferMemory::~BufferMemory(v60);
    }

    if (a17)
    {
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(a17 + 136) + 32));
      v47 = v61;
      v61[5].f32[1] = v43;
      v47[5].i32[2] = -1082130432;
      ggl::BufferMemory::~BufferMemory(v60);
    }
  }

  if (a10 > 0.0 && a8 && a19)
  {
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(a8 + 136) + 32));
    v48 = 0;
    v49 = v61;
    v61[4] = vsubq_f32(v57, *a3);
    v50 = v49 + 3;
    v51 = a20;
    do
    {
      v50->i32[v48] = *(a4 + v48 * 4);
      ++v48;
    }

    while (v48 != 4);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v58, *(*(a8 + 136) + 32));
    *v59 = a10 + a9;
    ggl::BufferMemory::~BufferMemory(v58);
    *(a19 + 120) = 1;
    *(a19 + 32) = a8;
    ggl::BufferMemory::~BufferMemory(v60);
  }

  else
  {
    v51 = a20;
    if (a19)
    {
      *(a19 + 120) = 0;
    }
  }

  if (a11 > 0.0 && a16 && v51)
  {
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v60, *(*(a16 + 136) + 32));
    v52 = 0;
    v53 = v61;
    v61[4] = vsubq_f32(v57, *a5);
    v54 = v53 + 3;
    do
    {
      v54->i32[v52] = *(a6 + v52 * 4);
      ++v52;
    }

    while (v52 != 4);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v58, *(*(a16 + 136) + 32));
    *v59 = (a10 + a9) + a11;
    ggl::BufferMemory::~BufferMemory(v58);
    *(v51 + 120) = 1;
    *(v51 + 32) = a16;
    ggl::BufferMemory::~BufferMemory(v60);
  }

  else if (v51)
  {
    *(v51 + 120) = 0;
  }

  *(a18 + 32) = a7;
}

void md::RouteLineBatch::layoutTwoPasses(md::RouteLayoutContext const&,md::RouteStyleContext const&)::$_0::operator()(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v25, *(*(a2 + 136) + 32));
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v24, **(a2 + 136), 0);
  v9 = 0;
  v10 = v26;
  v11 = v26;
  v26->f32[0] = **a1 * 0.5;
  v12 = v11 + 1;
  do
  {
    v12->i32[v9] = a3->i32[v9];
    ++v9;
  }

  while (v9 != 4);
  v13 = *(*(v8 + 3120) + 48);
  v14 = 0.0;
  if (v13 != 0.0)
  {
    v15 = logf(v13 * (*(*(a1 + 16) + 128) * *(v24[5] + 64)));
    v14 = expf(floorf(v15 * 4.0) * -0.25);
  }

  v10[2].f32[0] = v14;
  ggl::BufferMemory::~BufferMemory(v24);
  ggl::BufferMemory::~BufferMemory(v25);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v25, *(*(a2 + 136) + 48));
  v16 = 0;
  v17 = v26;
  v26[5].i32[0] = *(*(a1 + 16) + 124);
  v17->f32[0] = **a1 * 0.5;
  __asm { FMOV            V1.4S, #1.0 }

  v17[4] = vsubq_f32(_Q1, *a3);
  do
  {
    v17[3].i32[v16] = *(a4 + v16 * 4);
    ++v16;
  }

  while (v16 != 4);
  v17[2].i32[0] = **(a1 + 24);
  v23 = *(a1 + 32);
  v17[6].i32[0] = *(v23 + 332);
  v17[5].i32[3] = *(v23 + 336);
  ggl::BufferMemory::~BufferMemory(v25);
}

void setupTrafficRenderItem(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, float a5, float a6, float a7, float a8)
{
  v16 = *(*(*(a4 + 32) + 136) + 32);
  ggl::BufferMemory::BufferMemory(v30);
  ggl::ResourceAccessor::accessConstantData(&v32, 0, v16, 1);
  ggl::BufferMemory::operator=(v30, &v32);
  ggl::BufferMemory::~BufferMemory(&v32);
  v17 = *a2;
  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v32, v17, v18);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = v35;
  if (v35)
  {
    *(a4 + 120) = 1;
    md::trafficWidthForSpeedAtZ(&v32, 3, *(a1 + 12));
    v20 = 0;
    v21 = v31;
    *v31 = v22 * a5;
    v21[45] = v22 * a6;
    v21[46] = a7;
    v21[44] = a8;
    do
    {
      md::trafficColorForSpeed(&v29, &v32, v20, 1, *(a1 + 12));
      v23 = &v31[4 * v20];
      v24 = v29;
      *(v23 + 1) = v29;
      *(v23 + 6) = v24;
      ++v20;
    }

    while (v20 != 5);
  }

  else
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v25 = GEOGetVectorKitRouteLog_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_1B2754000, v25, OS_LOG_TYPE_INFO, "***RouteLine failed to setupTrafficRenderItem", &v29, 2u);
    }
  }

  if (v35 == 1)
  {
    (*(*v32 + 56))(v32);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  if (v19)
  {
    v26 = *a3;
    v27 = a3[1];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v32, v26, v27);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }

    if (v35 == 1)
    {
      for (i = 0; i != 5; ++i)
      {
        md::trafficColorForSpeed(&v29, &v32, i, 1, *(a1 + 12));
        *&v31[4 * i + 24] = v29;
      }

      if (v35)
      {
        (*(*v32 + 56))(v32);
      }
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v33);
    }
  }

  ggl::BufferMemory::~BufferMemory(v30);
}

void sub_1B2C9C950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(exception_object);
}

int *md::trafficWidthForSpeedAtZ(int *result, int a2, float a3)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        return result;
      }

      v4 = *(*result + 24);
      if (a3 >= 0x17)
      {
        v18 = 23;
      }

      else
      {
        v18 = a3;
      }

      v6 = *v4;
      if (*v4)
      {
        v19 = *v6;
        v20 = *v6 == 1.0;
        if (*(v4 + 10) == 1 && v19 != 0.0 && v19 != 1.0)
        {
LABEL_37:
          v23 = *(v4 + 16);
          if (v23)
          {
            v24 = *(v23 + 72);
            if (v24)
            {
              v25 = *v24 + 120 * *(v24 + v18 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0x51u) != *(v25 + 12))
              {
                goto LABEL_109;
              }
            }

            if (*(v4 + 56))
            {
              v26 = *(v4 + 48);
              v27 = 8 * *(v4 + 56);
              while (1)
              {
                v28 = *(*v26 + 72);
                if (v28)
                {
                  v29 = *v28 + 120 * *(v28 + v18 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v29, 0x51u) != *(v29 + 12))
                  {
                    goto LABEL_109;
                  }
                }

                v26 += 8;
                v22 = 1;
                v27 -= 8;
                if (!v27)
                {
                  goto LABEL_106;
                }
              }
            }
          }

          v22 = 1;
LABEL_106:
          v69 = *(v4 + 16 * v22 + 16);
          if (!v69)
          {
            goto LABEL_161;
          }

          v70 = *(v69 + 72);
          if (!v70 || (v71 = *v70 + 120 * *(v70 + v18 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v71, 0x51u) == *(v71 + 12)))
          {
            v75 = v4 + 16 * v22;
            if (!*(v75 + 56))
            {
              goto LABEL_161;
            }

            v76 = *(v75 + 48);
            v77 = 8 * *(v75 + 56);
            while (1)
            {
              v78 = *(*v76 + 72);
              if (v78)
              {
                v79 = *v78 + 120 * *(v78 + v18 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v79, 0x51u) != *(v79 + 12))
                {
                  break;
                }
              }

              v76 += 8;
              v77 -= 8;
              if (!v77)
              {
                goto LABEL_161;
              }
            }
          }

LABEL_109:
          v57 = fminf(fmaxf(a3, 0.0), 23.0);
          if (v6)
          {
            v72 = *v6;
            v73 = *v6 == 1.0;
            if (*(v4 + 10) == 1 && v72 != 0.0 && v72 != 1.0)
            {
              goto LABEL_176;
            }
          }

          else
          {
            v73 = 0;
          }

          v61 = *(v4 + v73 + 11);
          if (v61 != 2)
          {
            v62 = v4;
            v63 = 81;
            goto LABEL_170;
          }

LABEL_176:
          v108 = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 81, 0, &v108, v57);
          v105 = v4;
          v106 = 81;
          return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v105, v106, 1, &v107, v57);
        }
      }

      else
      {
        v20 = 0;
      }

      v22 = *(v4 + v20 + 11);
      if (v22 != 2)
      {
        goto LABEL_106;
      }

      goto LABEL_37;
    }

    v4 = *(*result + 24);
    if (a3 >= 0x17)
    {
      v42 = 23;
    }

    else
    {
      v42 = a3;
    }

    v6 = *v4;
    if (*v4)
    {
      v43 = *v6;
      v44 = *v6 == 1.0;
      if (*(v4 + 10) == 1 && v43 != 0.0 && v43 != 1.0)
      {
LABEL_77:
        v47 = *(v4 + 16);
        if (v47)
        {
          v48 = *(v47 + 72);
          if (v48)
          {
            v49 = *v48 + 120 * *(v48 + v42 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v49, 0x46u) != *(v49 + 12))
            {
              goto LABEL_147;
            }
          }

          if (*(v4 + 56))
          {
            v50 = *(v4 + 48);
            v51 = 8 * *(v4 + 56);
            while (1)
            {
              v52 = *(*v50 + 72);
              if (v52)
              {
                v53 = *v52 + 120 * *(v52 + v42 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v53, 0x46u) != *(v53 + 12))
                {
                  goto LABEL_147;
                }
              }

              v50 += 8;
              v46 = 1;
              v51 -= 8;
              if (!v51)
              {
                goto LABEL_144;
              }
            }
          }
        }

        v46 = 1;
LABEL_144:
        v91 = *(v4 + 16 * v46 + 16);
        if (!v91)
        {
          goto LABEL_161;
        }

        v92 = *(v91 + 72);
        if (!v92 || (v93 = *v92 + 120 * *(v92 + v42 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v93, 0x46u) == *(v93 + 12)))
        {
          v97 = v4 + 16 * v46;
          if (!*(v97 + 56))
          {
            goto LABEL_161;
          }

          v98 = *(v97 + 48);
          v99 = 8 * *(v97 + 56);
          while (1)
          {
            v100 = *(*v98 + 72);
            if (v100)
            {
              v101 = *v100 + 120 * *(v100 + v42 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v101, 0x46u) != *(v101 + 12))
              {
                break;
              }
            }

            v98 += 8;
            v99 -= 8;
            if (!v99)
            {
              goto LABEL_161;
            }
          }
        }

LABEL_147:
        v57 = fminf(fmaxf(a3, 0.0), 23.0);
        if (v6)
        {
          v94 = *v6;
          v95 = *v6 == 1.0;
          if (*(v4 + 10) == 1 && v94 != 0.0 && v94 != 1.0)
          {
            goto LABEL_178;
          }
        }

        else
        {
          v95 = 0;
        }

        v61 = *(v4 + v95 + 11);
        if (v61 != 2)
        {
          v62 = v4;
          v63 = 70;
          goto LABEL_170;
        }

LABEL_178:
        v108 = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 70, 0, &v108, v57);
        v105 = v4;
        v106 = 70;
        return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v105, v106, 1, &v107, v57);
      }
    }

    else
    {
      v44 = 0;
    }

    v46 = *(v4 + v44 + 11);
    if (v46 != 2)
    {
      goto LABEL_144;
    }

    goto LABEL_77;
  }

  if (!a2)
  {
    v4 = *(*result + 24);
    if (a3 >= 0x17)
    {
      v30 = 23;
    }

    else
    {
      v30 = a3;
    }

    v6 = *v4;
    if (*v4)
    {
      v31 = *v6;
      v32 = *v6 == 1.0;
      if (*(v4 + 10) == 1 && v31 != 0.0 && v31 != 1.0)
      {
LABEL_57:
        v35 = *(v4 + 16);
        if (v35)
        {
          v36 = *(v35 + 72);
          if (v36)
          {
            v37 = *v36 + 120 * *(v36 + v30 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v37, 0x30u) != *(v37 + 12))
            {
              goto LABEL_128;
            }
          }

          if (*(v4 + 56))
          {
            v38 = *(v4 + 48);
            v39 = 8 * *(v4 + 56);
            while (1)
            {
              v40 = *(*v38 + 72);
              if (v40)
              {
                v41 = *v40 + 120 * *(v40 + v30 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v41, 0x30u) != *(v41 + 12))
                {
                  goto LABEL_128;
                }
              }

              v38 += 8;
              v34 = 1;
              v39 -= 8;
              if (!v39)
              {
                goto LABEL_125;
              }
            }
          }
        }

        v34 = 1;
LABEL_125:
        v80 = *(v4 + 16 * v34 + 16);
        if (!v80)
        {
          goto LABEL_161;
        }

        v81 = *(v80 + 72);
        if (!v81 || (v82 = *v81 + 120 * *(v81 + v30 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v82, 0x30u) == *(v82 + 12)))
        {
          v86 = v4 + 16 * v34;
          if (!*(v86 + 56))
          {
            goto LABEL_161;
          }

          v87 = *(v86 + 48);
          v88 = 8 * *(v86 + 56);
          while (1)
          {
            v89 = *(*v87 + 72);
            if (v89)
            {
              v90 = *v89 + 120 * *(v89 + v30 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v90, 0x30u) != *(v90 + 12))
              {
                break;
              }
            }

            v87 += 8;
            v88 -= 8;
            if (!v88)
            {
              goto LABEL_161;
            }
          }
        }

LABEL_128:
        v57 = fminf(fmaxf(a3, 0.0), 23.0);
        if (v6)
        {
          v83 = *v6;
          v84 = *v6 == 1.0;
          if (*(v4 + 10) == 1 && v83 != 0.0 && v83 != 1.0)
          {
            goto LABEL_177;
          }
        }

        else
        {
          v84 = 0;
        }

        v61 = *(v4 + v84 + 11);
        if (v61 != 2)
        {
          v62 = v4;
          v63 = 48;
          goto LABEL_170;
        }

LABEL_177:
        v108 = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 48, 0, &v108, v57);
        v105 = v4;
        v106 = 48;
        return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v105, v106, 1, &v107, v57);
      }
    }

    else
    {
      v32 = 0;
    }

    v34 = *(v4 + v32 + 11);
    if (v34 != 2)
    {
      goto LABEL_125;
    }

    goto LABEL_57;
  }

  if (a2 != 1)
  {
    return result;
  }

  v4 = *(*result + 24);
  if (a3 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = a3;
  }

  v6 = *v4;
  if (!*v4)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v7 = *v6;
  v8 = *v6 == 1.0;
  if (*(v4 + 10) != 1 || (v7 != 0.0 ? (v9 = v7 == 1.0) : (v9 = 1), v9))
  {
LABEL_14:
    v10 = *(v4 + v8 + 11);
    if (v10 != 2)
    {
      goto LABEL_87;
    }
  }

  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = *(v11 + 72);
    if (v12)
    {
      v13 = *v12 + 120 * *(v12 + v5 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v13, 0x3Bu) != *(v13 + 12))
      {
        goto LABEL_90;
      }
    }

    if (*(v4 + 56))
    {
      v14 = *(v4 + 48);
      v15 = 8 * *(v4 + 56);
      while (1)
      {
        v16 = *(*v14 + 72);
        if (v16)
        {
          v17 = *v16 + 120 * *(v16 + v5 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v17, 0x3Bu) != *(v17 + 12))
          {
            goto LABEL_90;
          }
        }

        v14 += 8;
        v10 = 1;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_87;
        }
      }
    }
  }

  v10 = 1;
LABEL_87:
  v54 = *(v4 + 16 * v10 + 16);
  if (!v54)
  {
    goto LABEL_161;
  }

  v55 = *(v54 + 72);
  if (!v55 || (v56 = *v55 + 120 * *(v55 + v5 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v56, 0x3Bu) == *(v56 + 12)))
  {
    v64 = v4 + 16 * v10;
    if (*(v64 + 56))
    {
      v65 = *(v64 + 48);
      v66 = 8 * *(v64 + 56);
      do
      {
        v67 = *(*v65 + 72);
        if (v67)
        {
          v68 = *v67 + 120 * *(v67 + v5 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v68, 0x3Bu) != *(v68 + 12))
          {
            goto LABEL_90;
          }
        }

        v65 += 8;
        v66 -= 8;
      }

      while (v66);
    }

LABEL_161:
    v57 = fminf(fmaxf(a3, 0.0), 23.0);
    if (v6)
    {
      v102 = *v6;
      v103 = *v6 == 1.0;
      if (*(v4 + 10) == 1 && v102 != 0.0 && v102 != 1.0)
      {
        goto LABEL_173;
      }
    }

    else
    {
      v103 = 0;
    }

    v61 = *(v4 + v103 + 11);
    if (v61 != 2)
    {
      v62 = v4;
      v63 = 164;
      goto LABEL_170;
    }

LABEL_173:
    v108 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 164, 0, &v108, v57);
    v105 = v4;
    v106 = 164;
    return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v105, v106, 1, &v107, v57);
  }

LABEL_90:
  v57 = fminf(fmaxf(a3, 0.0), 23.0);
  if (v6)
  {
    v58 = *v6;
    v59 = *v6 == 1.0;
    if (*(v4 + 10) == 1 && v58 != 0.0 && v58 != 1.0)
    {
      goto LABEL_175;
    }
  }

  else
  {
    v59 = 0;
  }

  v61 = *(v4 + v59 + 11);
  if (v61 == 2)
  {
LABEL_175:
    v108 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 59, 0, &v108, v57);
    v105 = v4;
    v106 = 59;
    return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v105, v106, 1, &v107, v57);
  }

  v62 = v4;
  v63 = 59;
LABEL_170:

  return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v62, v63, v61, 0, v57);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<float>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 4 * a2, 0x100004052888210uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void md::FlyoverRenderable::~FlyoverRenderable(md::FlyoverRenderable *this)
{
  md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(this);

  JUMPOUT(0x1B8C62190);
}

void md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A37D70;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LineLabelFeature::removeTile(mdm::zone_mallocator *a1, void *a2)
{
  v3 = *(a1 + 24);
  v4 = mdm::zone_mallocator::instance(a1);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v4);
  *v5 = 10;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  v6 = a2[1];
  *(v5 + 3) = *a2;
  *(v5 + 4) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(v5 + 11) = 0;
  *(v5 + 72) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 17) = 0;
  *(v5 + 72) = 255;
  *(v5 + 37) = 0;
  *(v5 + 38) = 0;
  *(v5 + 20) = 0;
  v5[168] = 1;
  *(v5 + 22) = 0;
  *(v5 + 23) = 0;
  *(v5 + 12) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(v5 + 13) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v5[224] = 0;
  *(v5 + 57) = 0;
  *(v5 + 116) = 256;
  v5[234] = 0;
  *(v5 + 30) = 0;
  *(v5 + 31) = 0;
  v7 = v5;
  md::LabelLineStore::queueWorkUnit(v3, &v7);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v7, 0);
}

void sub_1B2C9D770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void sub_1B2C9D948(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LineLabelFeature::publicShieldName(md::LineLabelFeature *this)
{
  if (*(this + 44) == *(this + 45))
  {
    return 0;
  }

  else
  {
    return *(this + 44);
  }
}

double md::LineLabelFeature::minLabelSpacing(md::LineLabelFeature *this, uint64_t a2, const LabelLayoutContext *a3)
{
  v3 = md::LineLabelFeature::roadMetricsForZ(this, a2, a3);
  if (!v3)
  {
    return 0.0;
  }

  LODWORD(result) = *(v3 + 18);
  return result;
}

void md::LineLabelFeature::secondaryLabelPoint(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  md::LineLabelPlacer::positionForIdentifier(&v7, a1 + 192, *a2);
  if (v7)
  {
    v6 = 0uLL;
    (*(*v7 + 64))(v7, &v6, a4);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = v6;
    *(a3 + 40) = 2139095039;
    *(a3 + 44) = 256;
    *(a3 + 46) = 1;
    *(a3 + 48) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 48) = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }
}

void sub_1B2C9DB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LineLabelFeature::labelTypeAtPosition(uint64_t a1, unsigned int *a2)
{
  md::LineLabelPlacer::positionForIdentifier(&v4, a1 + 192, *a2);
  if (v4 && (*(v4 + 9) - 1) <= 7u)
  {
    v2 = 0x605030908070402uLL >> (8 * ((*(v4 + 9) - 1) & 0x1Fu));
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v2;
}

void md::LineLabelFeature::~LineLabelFeature(md::LineLabelFeature *this)
{
  *this = &unk_1F29E68D8;
  v2 = *(this + 53);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v9 = (this + 384);
  std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = (this + 352);
  std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v9);
  std::__tree<std::__value_type<unsigned char,md::RoadMetricsEntry>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,md::RoadMetricsEntry>,std::less<unsigned char>,true>,geo::allocator_adapter<std::__value_type<unsigned char,md::RoadMetricsEntry>,mdm::zone_mallocator>>::destroy(*(this + 41));
  v3 = std::unique_ptr<md::LineLabelStyleEntry>::reset[abi:nn200100](this + 39, 0);
  v4 = *(this + 34);
  if (v4)
  {
    v5 = *(this + 35);
    v6 = *(this + 34);
    if (v5 != v4)
    {
      do
      {
        v5 -= 10;
        std::allocator_traits<geo::allocator_adapter<md::LineLabelStyleEntry,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::LineLabelStyleEntry,void,0>(v5);
      }

      while (v5 != v4);
      v6 = *(this + 34);
    }

    *(this + 35) = v4;
    v7 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LineLabelStyleEntry>(v7, v6);
  }

  std::__tree<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,mdm::zone_mallocator>>::destroy(*(this + 29));
  v8 = *(this + 25);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  md::LabelFeature::~LabelFeature(this);
}

void std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      do
      {
        v3 -= 64;
        std::allocator_traits<geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,void,0>(v3);
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>>(v6, v4);
  }
}

void std::__tree<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,mdm::zone_mallocator>>::destroy(*result);
    std::__tree<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,mdm::zone_mallocator>>::destroy(result[1]);
    v2 = result[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,void *>>(v3, result);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::allocator_traits<geo::allocator_adapter<md::LineLabelStyleEntry,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::LineLabelStyleEntry,void,0>(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a1[1];
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LineLabelStyleEntry>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>(mdm::zone_mallocator *result)
{
  if (*(result + 23) < 0)
  {
    v2 = *result;
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelShieldEntry>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::allocator_traits<geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,void,0>(uint64_t result)
{
  if (*(result + 55) < 0)
  {
    v2 = *(result + 32);
    v3 = mdm::zone_mallocator::instance(result);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  if (*(result + 23) < 0)
  {
    v4 = *result;
    v5 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A3F0E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A3F108;
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

void ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A3F0E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::CommandBufferDescriptionCreation,64ul>::~storage(a1);
}

uint64_t md::CompositeLabelPart::publicName(md::CompositeLabelPart *this)
{
  v1 = *(this + 72);
  v2 = *(this + 73);
  while (v1 != v2)
  {
    result = (*(**v1 + 840))(*v1);
    if (result)
    {
      return result;
    }

    ++v1;
  }

  return 0;
}

uint64_t md::RingIconLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    return md::LabelIconStyleMonitor::needsCrossfade(a1 + 632, **(a1 + 32), a4);
  }

  else
  {
    return 0;
  }
}

float md::CompositeLabelPart::calloutAnchorRect(md::CompositeLabelPart *this, uint64_t a2)
{
  v20 = xmmword_1B33B0730;
  v2 = *(this + 72);
  v3 = *(this + 73);
  if (v2 == v3)
  {
    return 3.4028e38;
  }

  do
  {
    v5 = (*(**v2 + 672))(*v2, a2);
    v6 = 0;
    v17 = v5;
    v18 = v7;
    v19[0] = v8;
    v19[1] = v9;
    v10 = &v20;
    v11 = &v17;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = *v11;
      v15 = *v10;
      *(&v20 + v6 + 2) = fmaxf(*(&v20 + v6 + 2), *&v19[v6]);
      *v10 = fminf(v14, v15);
      v11 = &v18;
      v10 = &v20 + 1;
      v6 = 1;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    ++v2;
  }

  while (v2 != v3);
  return *&v20;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPart *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

uint64_t md::RingIconLabelPart::pushToRenderModel(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 612) == 1)
  {
    a3 = *(a1 + 608);
  }

  (*(***(a1 + 576) + 128))(**(a1 + 576), a2, a3);
  v5 = *(**(*(a1 + 576) + 8) + 128);
  v6.n128_f32[0] = a3;

  return v5(v6);
}

void md::RingIconLabelPart::~RingIconLabelPart(md::RingIconLabelPart *this)
{
  *this = &unk_1F29E6BB8;
  if (*(this + 655) < 0)
  {
    v2 = *(this + 79);
    v3 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
  v5 = mdm::zone_mallocator::instance(v4);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, this);
}

{
  *this = &unk_1F29E6BB8;
  if (*(this + 655) < 0)
  {
    v2 = *(this + 79);
    v3 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
}

uint64_t md::AnimatedTextureLabelPart::checkResourcesReady(md::AnimatedTextureLabelPart *this, md::LabelManager *a2)
{
  if (*(this + 72))
  {
    return 37;
  }

  else
  {
    return 16;
  }
}

uint64_t md::AnimatedTextureLabelPart::pushToRenderModel(uint64_t result, gdc::Registry **a2, float a3)
{
  if (*(result + 692) == 1)
  {
    a3 = *(result + 688);
  }

  v3 = *(result + 800) * a3;
  if (v3 >= 0.0039062)
  {
    *(result + 598) = *(result + 558);
    v4 = *(result + 32);
    v5 = 0;
    if (*(v4 + 78) == 1)
    {
      v5 = *(v4 + 72);
    }

    *(result + 624) = v5;
    *(result + 594) = *(result + 556);
    *(result + 593) = 0;
    *(result + 600) = *(v4 + 77) ^ 1;
    gdc::Registry::create(*a2);
  }

  *(result + 552) = fmaxf(fminf(v3, 1.0), 0.0);
  return result;
}

uint64_t std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::IconMeshDescriptor>::remove(void *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 40 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    *v6 = *(v7 - 40);
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__value_func[abi:nn200100](v13, v7 - 32);
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::swap[abi:nn200100](v13, (v6 + 8));
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100](v13);
    v8 = a1[11];
    std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100](v8 - 32);
    a1[11] = v8 - 40;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

uint64_t gdc::ComponentStorageWrapper<md::IconMeshDescriptor>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::IconMeshDescriptor>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

double std::__function::__func<md::AnimatedTextureLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0,std::allocator<md::AnimatedTextureLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0>,void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  *(a3 + 64) = (*(*v4 + 144))(v4, a2);
  *(a3 + 48) = *(v4 + 552);
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 52) = _D0;
  if (*(v4 + 656) == 1)
  {
    v11.i32[0] = *(v4 + 640);
    v10 = *(v4 + 644);
    v11.i32[1] = *(v4 + 652);
  }

  else
  {
    v10 = 0xFF7FFFFF7F7FFFFFLL;
    v11 = 0xFF7FFFFF7F7FFFFFLL;
  }

  *&v12 = __PAIR64__(v10.u32[0], v11.u32[0]);
  *(&v12 + 1) = vrev64_s32(v10);
  *&v13 = vzip2_s32(v10, v11);
  *(&v13 + 1) = v11;
  *a3 = v12;
  *(a3 + 16) = v13;
  result = 0.0;
  *(a3 + 32) = xmmword_1B33B0720;
  return result;
}

uint64_t std::__function::__func<md::AnimatedTextureLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0,std::allocator<md::AnimatedTextureLabelPart::pushToRenderModel(md::LabelRenderModel &,float)::$_0>,void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E72F0;
  a2[1] = v2;
  return result;
}

BOOL gdc::ComponentStorageWrapper<md::LabelRenderDescriptorComponent>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

uint64_t gdc::ComponentStorageWrapper<md::LabelRenderDescriptorComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t md::AnimatedTextureLabelPart::layoutForDisplay(float32x2_t *a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  v8 = *(a2 + 896);
  a1[67].f32[0] = v8;
  v9 = *(a2 + 900);
  a1[67].f32[1] = v9;
  v10 = a1[66].f32[0];
  v11 = v10 * v9;
  v12 = a1[66].f32[1];
  v13 = -((v12 * v9) - (v10 * v8));
  v14 = v11 + (v12 * v8);
  a1[41].f32[0] = v13;
  a1[41].f32[1] = v14;
  v15 = fabsf(v13 + -1.0);
  a1[63].i8[4] = v15 > 0.000001;
  v16 = a5->f32[0];
  a1[68].i32[0] = a5->i32[0];
  v17 = a5->f32[1];
  a1[68].f32[1] = v17;
  v18 = a1[91];
  v19 = a1[90];
  if (0x8E38E38E38E38E39 * ((*&v18 - *&v19) >> 4) <= a1[70].u8[3])
  {
    if (*&v19 == *&v18 || (a1[98].i8[1] & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *&v19 += 144 * a1[70].u8[3];
  }

  if (v19)
  {
    v20 = *(*&v19 + 72);
    if (v20)
    {
      a1[86].f32[0] = fmaxf(fminf(*(*&v19 + 80) + (*(*v20 + 32 * *(v20 + 32) + 8) * (*(*&v19 + 84) - *(*&v19 + 80))), 1.0), 0.0);
      a1[86].i8[4] = 1;
    }

    v21 = *(*&v19 + 88);
    if (v21)
    {
      v22 = (*(*v21 + 32 * *(v21 + 32) + 8) + -0.5) * a1[82].f32[1];
      v23 = v14 * v22;
      if (v15 <= 0.000001)
      {
        v23 = 0.0;
        v13 = 1.0;
      }

      a1[68].f32[0] = v16 + (v22 * v13);
      a1[68].f32[1] = v17 + v23;
    }
  }

LABEL_12:
  md::AnimatedTextureLabelPart::generateModelMatrix(*&a1[84], a1[6], a1 + 68);
  a1[53] = a1[84];
  v24 = vadd_f32(*a5, *a4);
  a1[65] = v24;
  a1[43] = v24;
  md::CollisionObject::setupShapeData(&a1[39]);
  a1[51].i32[0] = a1[99].i32[1];
  return 37;
}

double md::AnimatedTextureLabelPart::generateModelMatrix(_OWORD *a1, double *a2, float32x2_t *a3)
{
  memset(&v24[40], 0, 40);
  memset(&v25[8], 0, 32);
  memset(&v24[8], 0, 32);
  *v24 = 0x3FF0000000000000;
  *&v24[40] = 0x3FF0000000000000;
  *v25 = 0x3FF0000000000000;
  *&v25[40] = 0x3FF0000000000000;
  *&v16 = 0;
  if (*a3)
  {
    memset(&v24[8], 0, 32);
    memset(&v24[48], 0, 32);
    *v24 = 0x3FF0000000000000;
    *&v24[40] = 0x3FF0000000000000;
    v3 = vcvtq_f64_f32(*a3);
    *v25 = xmmword_1B33B0680;
    *&v25[16] = v3;
    *&v25[32] = xmmword_1B33B0740;
  }

  if (a2)
  {
    for (i = 0; i != 4; ++i)
    {
      v5 = 0;
      v6 = v24;
      do
      {
        v7 = 0;
        v8 = 0.0;
        v9 = a2;
        do
        {
          v10 = *v9;
          v9 += 4;
          v8 = v8 + *&v6[v7] * v10;
          v7 += 8;
        }

        while (v7 != 32);
        *(&v16 + 4 * v5++ + i) = v8;
        v6 += 32;
      }

      while (v5 != 4);
      ++a2;
    }
  }

  else
  {
    v20 = *&v24[64];
    v21 = *v25;
    v22 = *&v25[16];
    v23 = *&v25[32];
    v16 = *v24;
    v17 = *&v24[16];
    v18 = *&v24[32];
    v19 = *&v24[48];
  }

  v11 = v21;
  a1[4] = v20;
  a1[5] = v11;
  v12 = v23;
  a1[6] = v22;
  a1[7] = v12;
  v13 = v17;
  *a1 = v16;
  a1[1] = v13;
  result = *&v18;
  v15 = v19;
  a1[2] = v18;
  a1[3] = v15;
  return result;
}

void md::AnimatedTextureLabelPart::updateForDisplay(md::AnimatedTextureLabelPart *this)
{
  *(this + 165) = *(this + 166);
  md::CollisionObject::resetWithRects(this + 39, 1u);
  if (*(this + 656))
  {
    md::CollisionObject::addRect(this + 312, this + 160);
    *(this + 199) = *(this + 198);
  }

  else
  {
    v2 = std::__throw_bad_optional_access[abi:nn200100]();
    md::AnimatedTextureLabelPart::layoutForStaging(v2, v3, v4, v5);
  }
}

uint64_t md::AnimatedTextureLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = (*(*a1 + 352))(a1);
  if (result == 37)
  {
    if (*(a1 + 656) == 1)
    {
      v9 = *(*(a1 + 32) + 20);
      *(a1 + 176) = v9;
      *(a1 + 112) = *a3;
      *(a1 + 116) = a3[1];
      *(a1 + 270) = fabsf(v9 + -1.0) > 0.000001;
      v10 = *(a2 + 424);
      v11 = *(v10 + 464);
      *(a1 + 296) = v11;
      v12 = *(v10 + 468);
      *(a1 + 300) = v12;
      v13 = *(a1 + 288);
      v14 = v13 * v12;
      v15 = *(a1 + 292);
      v16 = -((v15 * v12) - (v13 * v11));
      *(a1 + 88) = v16;
      *(a1 + 92) = v14 + (v15 * v11);
      *(a1 + 268) = fabsf(v16 + -1.0) > 0.000001;
      *(a1 + 304) = *a4;
      *(a1 + 308) = a4[1];
      *(a1 + 280) = *a3;
      *(a1 + 284) = a3[1];
      *(a1 + 104) = *a3;
      *(a1 + 108) = a3[1];
      md::CollisionObject::setupShapeData(a1 + 72);
      *(a1 + 168) = *(a1 + 792);
      if (*(a1 + 566) == 1)
      {
        v17 = *(a1 + 680);
        if (!v17)
        {
          operator new();
        }

        md::AnimatedTextureLabelPart::generateModelMatrix(v17, *(a1 + 40), (a1 + 304));
        *(a1 + 184) = *(a1 + 680);
      }

      return 37;
    }

    else
    {
      return 13;
    }
  }

  return result;
}

float md::AnimatedTextureLabelPart::updateWithStyle(md::AnimatedTextureLabelPart *this, md::LabelManager *a2)
{
  result = *(**(this + 4) + 172);
  *(this + 198) = result;
  return result;
}

void md::AnimatedTextureLabelPart::~AnimatedTextureLabelPart(md::AnimatedTextureLabelPart *this)
{
  *this = &unk_1F29E6F58;
  v6 = (this + 752);
  std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 720);
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v2 = *(this + 85);
  *(this + 85) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 84);
  *(this + 84) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
  v5 = mdm::zone_mallocator::instance(v4);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, this);
}

{
  *this = &unk_1F29E6F58;
  v4 = (this + 752);
  std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (this + 720);
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(this + 85);
  *(this + 85) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 84);
  *(this + 84) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAnimation>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelAnimationTrack>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAnimationItem>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void md::AnimatedTextureLabelPart::AnimatedTextureLabelPart(md::LabelPart *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  md::LabelPart::LabelPart(a1);
  *v9 = &unk_1F29E6F58;
  *(v9 + 576) = a4;
  *(v9 + 584) = a5;
  *(v9 + 592) = 1;
  *(v9 + 598) = 0;
  *(v9 + 600) = 1;
  *(v9 + 602) = 0;
  *(v9 + 624) = 0;
  *(v9 + 628) = 258;
  *(v9 + 656) = 0;
  *(v9 + 660) = 0;
  *(v9 + 692) = 0;
  *(v9 + 630) = 0;
  *(v9 + 637) = 0;
  *(v9 + 672) = 0u;
  *(v9 + 688) = 0;
  *(v9 + 696) = a2;
  *(v9 + 704) = a3;
  *(v9 + 768) = 0;
  *(v9 + 752) = 0u;
  *(v9 + 784) = 0;
  *(v9 + 786) = 0;
  *(v9 + 712) = 0u;
  *(v9 + 728) = 0u;
  *(v9 + 792) = 0;
  *(v9 + 800) = 1065353216;
  *(v9 + 596) = 7;
  *(v9 + 632) = 1;
  *(v9 + 592) = 2;
  *(v9 + 601) = 0;
  *(v9 + 608) = *(v9 + 576);
  *(v9 + 616) = *(v9 + 584);
  operator new();
}

void sub_1B2C9F8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 720);
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v13 = *(v10 + 680);
  *(v10 + 680) = 0;
  if (v13)
  {
    MEMORY[0x1B8C62190](v13, 0x1000C40AE2C30F4);
  }

  v14 = *v11;
  *v11 = 0;
  if (v14)
  {
    MEMORY[0x1B8C62190](v14, 0x1000C40AE2C30F4);
  }

  *v10 = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject((v10 + 312));
  md::CollisionObject::~CollisionObject((v10 + 72));
  _Unwind_Resume(a1);
}

void md::AnimatedTextureLabelPart::setMeshRectForStaging(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 656) == 1)
  {
    if (md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==((a1 + 640), a2))
    {
      return;
    }

    *(a1 + 640) = *a2;
    *(a1 + 644) = *(a2 + 4);
    *(a1 + 648) = *(a2 + 8);
    *(a1 + 652) = *(a2 + 12);
  }

  else
  {
    *(a1 + 640) = *a2;
    *(a1 + 656) = 1;
  }

  md::CollisionObject::resetWithRects((a1 + 72), 1u);
  if (*(a1 + 656))
  {

    md::CollisionObject::addRect(a1 + 72, (a1 + 640));
  }

  else
  {
    v4 = std::__throw_bad_optional_access[abi:nn200100]();
    std::set<std::shared_ptr<md::mun::MuninMetadata>>::insert[abi:nn200100]<std::__tree_const_iterator<std::shared_ptr<md::mun::MuninMetadata>,std::__tree_node<std::shared_ptr<md::mun::MuninMetadata>,void *> *,long>>(v4, v5, v6);
  }
}

uint64_t **std::set<std::shared_ptr<md::mun::MuninMetadata>>::insert[abi:nn200100]<std::__tree_const_iterator<std::shared_ptr<md::mun::MuninMetadata>,std::__tree_node<std::shared_ptr<md::mun::MuninMetadata>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = (result + 1);
      if (*result == (result + 1))
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = (result + 1);
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = *(v6 + 8);
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = v3[4];
      if (v5[4] < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = (result + 1);
        }
      }

      else
      {
        v10 = (result + 1);
        if (v4)
        {
          v10 = (result + 1);
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = *(v4 + 32);
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

void md::mun::MuninMetadata::neighborsWithinRadiusInMetadatas<std::set<std::shared_ptr<md::mun::MuninMetadata>>>(void *result, long double *a2, uint64_t a3, double a4)
{
  v4 = result + 1;
  v5 = *result;
  if (*result != result + 1)
  {
    do
    {
      md::mun::MuninMetadata::neighborsWithinRadius(v5[4], a2, a3, 0, a4);
      v9 = v5[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v4);
  }
}

uint64_t **md::mun::MuninNavigationGraph::MuninNavigationGraph(uint64_t **a1, void *a2)
{
  v3 = a1;
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  v4 = a2 + 1;
  std::set<std::shared_ptr<md::mun::MuninMetadata>>::insert[abi:nn200100]<std::__tree_const_iterator<std::shared_ptr<md::mun::MuninMetadata>,std::__tree_node<std::shared_ptr<md::mun::MuninMetadata>,void *> *,long>>(a1, *a2, a2 + 1);
  *(v3 + 3) = 0u;
  v5 = v3 + 3;
  *(v3 + 5) = 0u;
  *(v3 + 14) = 1065353216;
  v48 = a2;
  v6 = *a2;
  if (*a2 == v4)
  {
    v12 = 0.0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v10 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v10 = v9[2];
          v11 = *v10 == v9;
          v9 = v10;
        }

        while (!v11);
      }

      v7 += 0x63FB9AEB1FDCD759 * ((*(v6[4] + 176) - *(v6[4] + 168)) >> 3);
      v6 = v10;
    }

    while (v10 != v4);
    v12 = v7;
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>((v3 + 3), vcvtps_u32_f32(v12));
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v13 = *a2;
  if (*a2 != v4)
  {
    v14 = 0;
    v50 = v3;
    v53 = v3 + 3;
    v46 = a2 + 1;
    while (1)
    {
      v47 = v13;
      v15 = v13[4];
      v16 = *(v15 + 168);
      v49 = *(v15 + 176);
      if (v16 == v49)
      {
        goto LABEL_51;
      }

      do
      {
        v57 = v14;
        v54 = *(v16 + 8);
        v55 = *(v16 + 24);
        md::mun::MuninMetadata::neighborsWithinRadiusInMetadatas<std::set<std::shared_ptr<md::mun::MuninMetadata>>>(v48, &v54, &v56, 25.0);
        v17 = v57;
        __p = v56;
        if (v56 == v57)
        {
          goto LABEL_50;
        }

        v18 = 0x9DDFEA08EB382D69 * ((8 * (v16 & 0x1FFFFFFF) + 8) ^ HIDWORD(v16));
        v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v18 >> 47) ^ v18);
        v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
        v21 = v56;
        do
        {
          v22 = *v21;
          if (*v21 == v16 || *v22 == *v16 || vabdd_f64(*(v22 + 72), *(v16 + 72)) > 4.0)
          {
            goto LABEL_49;
          }

          v23 = v3[4];
          if (!*&v23)
          {
            goto LABEL_35;
          }

          v24 = vcnt_s8(v23);
          v24.i16[0] = vaddlv_u8(v24);
          if (v24.u32[0] > 1uLL)
          {
            v25 = v20;
            if (v20 >= *&v23)
            {
              v25 = v20 % *&v23;
            }
          }

          else
          {
            v25 = v20 & (*&v23 - 1);
          }

          v26 = (*v5)[v25];
          if (!v26 || (v27 = *v26) == 0)
          {
LABEL_35:
            operator new();
          }

          while (1)
          {
            v28 = v27[1];
            if (v28 == v20)
            {
              break;
            }

            if (v24.u32[0] > 1uLL)
            {
              if (v28 >= *&v23)
              {
                v28 %= *&v23;
              }
            }

            else
            {
              v28 &= *&v23 - 1;
            }

            if (v28 != v25)
            {
              goto LABEL_35;
            }

LABEL_34:
            v27 = *v27;
            if (!v27)
            {
              goto LABEL_35;
            }
          }

          if (v27[2] != v16)
          {
            goto LABEL_34;
          }

          v30 = v27[3];
          v29 = v27[4];
          v31 = (v29 - v30);
          v32 = ((v29 - v30) >> 3) + 1;
          v33 = v27[6];
          if (v33 < v32)
          {
            v52 = v27[5];
            v34 = (1 << -__clz(v33 + 1));
            if (v33 >= 0xFFFFFFFFFFFFFFFELL)
            {
              v34 = 1;
            }

            if (v34 <= v32)
            {
              v35 = v32;
            }

            else
            {
              v35 = v34;
            }

            v36 = malloc_type_malloc(8 * v35, 0x6004044C4A2DFuLL);
            v37 = v36;
            v38 = v27[3];
            v39 = v27[4];
            if (v38 != v39)
            {
              v40 = v36;
              do
              {
                v41 = *v38++;
                *v40++ = v41;
              }

              while (v38 != v39);
            }

            if (v30 != v52)
            {
              free(v27[3]);
            }

            v29 = &v31[v37];
            v27[3] = v37;
            v27[4] = &v31[v37];
            v27[6] = v35;
            v3 = v50;
          }

          *v29 = v22;
          ++v27[4];
          v5 = v53;
LABEL_49:
          ++v21;
        }

        while (v21 != v17);
LABEL_50:
        v16 += 1864;
        v14 = __p;
      }

      while (v16 != v49);
LABEL_51:
      v42 = v47;
      v43 = v47[1];
      if (v43)
      {
        do
        {
          v44 = v43;
          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        do
        {
          v44 = v42[2];
          v11 = *v44 == v42;
          v42 = v44;
        }

        while (!v11);
      }

      v13 = v44;
      if (v44 == v46)
      {
        if (v14)
        {
          operator delete(v14);
        }

        return v3;
      }
    }
  }

  return v3;
}

void md::mun::MuninNavigationGraph::~MuninNavigationGraph(md::mun::MuninNavigationGraph *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4 != v2[5])
      {
        free(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 1));
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,anonymous namespace::PointPathTrace>> &,std::__wrap_iter<std::pair<double,anonymous namespace::PointPathTrace>*>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = result + 24 * v3;
    v5 = a2 - 24;
    v6 = *(a2 - 24);
    v7 = *v4;
    if (*v4 == v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = -127;
    }

    if (*v4 > v6)
    {
      v8 = 1;
    }

    if (*v4 < v6)
    {
      v8 = -1;
    }

    if (v8 || ((v9 = *(v4 + 8), v10 = *(a2 - 16), v9 < v10) ? (LOBYTE(v8) = -1) : (LOBYTE(v8) = 1), v10 != v9))
    {
      if (v8 == 1)
      {
        v11 = *(a2 - 16);
        v12 = *(a2 - 8);
        do
        {
          v13 = v5;
          v5 = v4;
          *v13 = v7;
          *(v13 + 8) = *(v4 + 8);
          if (!v3)
          {
            break;
          }

          v3 = (v3 - 1) >> 1;
          v4 = result + 24 * v3;
          v7 = *v4;
          if (*v4 == v6)
          {
            v14 = 0;
          }

          else
          {
            v14 = -127;
          }

          if (*v4 > v6)
          {
            v14 = 1;
          }

          if (*v4 < v6)
          {
            v14 = -1;
          }

          if (!v14)
          {
            v15 = *(v4 + 8);
            LOBYTE(v14) = v15 < v11 ? -1 : 1;
            if (v11 == v15)
            {
              break;
            }
          }
        }

        while (v14 == 1);
        *v5 = v6;
        *(v5 + 8) = v11;
        *(v5 + 16) = v12;
      }
    }
  }

  return result;
}