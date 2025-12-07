void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InstanceDataV>(ecs2::Entity,md::ls::InstanceDataV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InstanceDataV>(ecs2::Entity,md::ls::InstanceDataV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InstanceDataV>(ecs2::Entity,md::ls::InstanceDataV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A1D3E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InstanceDataV>(ecs2::Entity,md::ls::InstanceDataV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A1D3E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InstanceDataV>(ecs2::Entity,md::ls::InstanceDataV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(void *a1)
{
  *a1 = &unk_1F2A1D3E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void ecs2::BasicRegistry<void>::add<md::ls::InstanceCount>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceCount>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceCount>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::InstanceCount>(ecs2::Entity,md::ls::InstanceCount &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51638;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::IntendedSceneLayer>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayer>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>(void)::metadata) = *(v55 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IntendedSceneLayer>(ecs2::Entity,md::ls::IntendedSceneLayer &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1D3A0;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::IndexRange>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 16 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 16 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IndexRange>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IndexRange>(ecs2::Entity,md::ls::IndexRange &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50F48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UVsHandle>(ecs2::Entity,md::ls::UVsHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UVsHandle>(ecs2::Entity,md::ls::UVsHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A511B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ElevationHandle>(ecs2::Entity,md::ls::ElevationHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ElevationHandle>(ecs2::Entity,md::ls::ElevationHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51288;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::NormalsHandle>(ecs2::Entity,md::ls::NormalsHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::NormalsHandle>(ecs2::Entity,md::ls::NormalsHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A51018;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PredefinedRenderState>(ecs2::Entity,md::ls::PredefinedRenderState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PredefinedRenderState>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PredefinedRenderState>(ecs2::Entity,md::ls::PredefinedRenderState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4F868;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonTexcoordsHandle>(ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTexcoordsHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonTexcoordsHandle>(ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A522F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonMaterialHandle>(ecs2::Entity,md::ls::FlyoverCommonMaterialHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonMaterialHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonMaterialHandle>(ecs2::Entity,md::ls::FlyoverCommonMaterialHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A523C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverClipConstantDataHandle>(ecs2::Entity,md::ls::FlyoverClipConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipConstantDataHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverClipConstantDataHandle>(ecs2::Entity,md::ls::FlyoverClipConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52498;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonTransformConstantDataHandle>(ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTransformConstantDataHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonTransformConstantDataHandle>(ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52158;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 16 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52568;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<Flyover::NightTexture>>(ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::NightTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 16 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<Flyover::NightTexture>>(ecs2::Entity,md::ls::TextureHandleForType<Flyover::NightTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52638;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverSharedConstants>(ecs2::Entity,md::ls::FlyoverSharedConstants &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverSharedConstants>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverSharedConstants>(ecs2::Entity,md::ls::FlyoverSharedConstants &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D2D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::IsMercator>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(a1);
  v6 = v5;
  v7 = a2 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v7 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((a2 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>(void)::metadata) = *(a1 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsMercator>(ecs2::Entity,md::ls::IsMercator &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4F9E8;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::VisibilityGroupID>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupID>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 16 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 16 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::VisibilityGroupID>(ecs2::Entity,md::ls::VisibilityGroupID &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D288;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::AssociationHandle>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata;
  v60 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    v54 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F);
    v55 = *a3;
    *(v54 + 16) = *(a3 + 2);
    *v54 = v55;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  v59 = a3;
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v57 = v28;
    v58 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v57;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v58;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  v50 = *(v31 + 8 * v29) + 24 * (v28 & 0x3F);
  v51 = *v59;
  *(v50 + 16) = *(v59 + 2);
  *v50 = v51;
  v52 = *(v8 + 152);
  v53 = *(v8 + 160);
  while (v52 != v53)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), a2);
    v52 += 32;
  }

LABEL_54:
  v56 = *(v60 + 41016) + (WORD1(a2) << 6);
  *(v56 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
  *(v60 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata) = *(v60 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::AssociationHandle>(ecs2::Entity,md::ls::AssociationHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A503E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 36) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::CheckIfTileWasDeleted>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::CheckIfTileWasDeleted>(a1);
  v6 = v5;
  v7 = a2 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v7 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((a2 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CheckIfTileWasDeleted>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CheckIfTileWasDeleted>(void)::localId;
    unk_1EB82D7F0 = 0x4458C393FA29B062;
    qword_1EB82D7F8 = "md::ls::CheckIfTileWasDeleted]";
    qword_1EB82D800 = 29;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::CheckIfTileWasDeleted>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21CheckIfTileWasDeletedEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::CheckIfTileWasDeleted>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfTileWasDeleted>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21CheckIfTileWasDeletedEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A418E0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CheckIfTileWasDeleted,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A418C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CheckIfTileWasDeleted,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A418C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CheckIfTileWasDeleted>(ecs2::Entity,md::ls::CheckIfTileWasDeleted &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1D240;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverClipPlaneData>(ecs2::Entity,md::ls::FlyoverClipPlaneData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 248);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>(void)::metadata;
  v67 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipPlaneData>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v61 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 240 * (v13 & 0x3F);
    std::__optional_storage_base<geo::OrientedBox<double,3u,double,double>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<geo::OrientedBox<double,3u,double,double>,false>>(v61, a1 + 8);
    for (i = 0; i != 128; i += 8)
    {
      *(v61 + 112 + i) = *(a1 + 120 + i);
    }

    goto LABEL_57;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v64 = v27;
    v65 = v5;
    v31 = v28 + 1;
    v32 = v28 + 1 - ((v29 - v30) >> 3);
    v33 = *(v7 + 72);
    v66 = v29 - v30;
    if (v32 > (v33 - v29) >> 3)
    {
      v34 = v33 - v30;
      v35 = (v33 - v30) >> 2;
      if (v35 <= v31)
      {
        v35 = v28 + 1;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFF8)
      {
        v36 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v35;
      }

      if (!(v36 >> 61))
      {
        operator new();
      }

      goto LABEL_59;
    }

    v37 = 0;
    v38 = (v32 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v39 = vdupq_n_s64(v38);
    do
    {
      v40 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(vdupq_n_s64(v37), xmmword_1B33B0560)));
      if (v40.i8[0])
      {
        *(v29 + 8 * v37) = 0;
      }

      if (v40.i8[4])
      {
        *(v29 + 8 * v37 + 8) = 0;
      }

      v37 += 2;
    }

    while (v38 - ((v32 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v37);
    *(v7 + 64) = v29 + 8 * v32;
    v41 = *(v7 + 80);
    v42 = *(v7 + 88);
    v43 = (v42 - v41) >> 4;
    if (v43 <= v28)
    {
      v27 = v31 - v43;
      v44 = *(v7 + 96);
      if (v27 > (v44 - v42) >> 4)
      {
        v45 = v44 - v41;
        v46 = v45 >> 3;
        if (v45 >> 3 <= v31)
        {
          v46 = v28 + 1;
        }

        if (v45 >= 0x7FFFFFFFFFFFFFF0)
        {
          v47 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = v46;
        }

        if (!(v47 >> 60))
        {
          operator new();
        }

LABEL_59:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v27);
      *(v7 + 88) = v42 + 16 * v27;
      LOBYTE(v27) = v64;
    }

    else if (v31 < v43)
    {
      *(v7 + 88) = v41 + 16 * v31;
    }

    v30 = *(v7 + 56);
    v5 = v65;
    if (v66 < *(v7 + 64) - v30)
    {
      operator new();
    }
  }

  v48 = *(v30 + 8 * v28) + 240 * (v27 & 0x3F);
  *v48 = 0;
  *(v48 + 104) = 0;
  if (*(a1 + 112) == 1)
  {
    v49 = *(a1 + 8);
    *(v48 + 16) = *(a1 + 24);
    *v48 = v49;
    v50 = *(a1 + 32);
    *(v48 + 40) = *(a1 + 48);
    *(v48 + 24) = v50;
    *(v48 + 48) = *(a1 + 56);
    v51 = *(a1 + 64);
    v52 = *(a1 + 80);
    *(v48 + 88) = *(a1 + 96);
    *(v48 + 72) = v52;
    *(v48 + 56) = v51;
    *(v48 + 104) = 1;
  }

  v53 = *(a1 + 120);
  v54 = *(a1 + 136);
  v55 = *(a1 + 168);
  *(v48 + 144) = *(a1 + 152);
  *(v48 + 160) = v55;
  *(v48 + 112) = v53;
  *(v48 + 128) = v54;
  v56 = *(a1 + 184);
  v57 = *(a1 + 200);
  v58 = *(a1 + 232);
  *(v48 + 208) = *(a1 + 216);
  *(v48 + 224) = v58;
  *(v48 + 176) = v56;
  *(v48 + 192) = v57;
  v59 = *(v7 + 152);
  v60 = *(v7 + 160);
  while (v59 != v60)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v59 + 24), v4);
    v59 += 32;
  }

LABEL_57:
  v63 = *(v67 + 41016) + (v4 >> 16 << 6);
  *(v63 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>();
  *(v67 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>(void)::metadata) = *(v67 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverClipPlaneData>(ecs2::Entity,md::ls::FlyoverClipPlaneData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D170;
  *(a2 + 8) = 0;
  *(a2 + 112) = 0;
  if (*(a1 + 112) == 1)
  {
    v2 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 8) = v2;
    v3 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v3;
    *(a2 + 56) = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 96);
    *(a2 + 80) = *(a1 + 80);
    *(a2 + 96) = v5;
    *(a2 + 64) = v4;
    *(a2 + 112) = 1;
  }

  v6 = *(a1 + 120);
  v7 = *(a1 + 136);
  v8 = *(a1 + 152);
  *(a2 + 168) = *(a1 + 168);
  *(a2 + 152) = v8;
  *(a2 + 136) = v7;
  *(a2 + 120) = v6;
  result = *(a1 + 184);
  v10 = *(a1 + 200);
  v11 = *(a1 + 216);
  *(a2 + 232) = *(a1 + 232);
  *(a2 + 216) = v11;
  *(a2 + 200) = v10;
  *(a2 + 184) = result;
  *(a2 + 248) = *(a1 + 248);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ModelTransformData>(ecs2::Entity,md::ls::ModelTransformData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>(void)::metadata;
  v60 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::ModelTransformData>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (a1 + 8);
  v13 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    v54 = 0;
    v55 = *(*(v7 + 56) + ((v14 >> 3) & 0x1FF8)) + 48 * (v14 & 0x3F);
    do
    {
      *(v55 + v54) = *(v12 + v54);
      v54 += 4;
    }

    while (v54 != 48);
    goto LABEL_55;
  }

  v17 = *(v7 + 40);
  v16 = *(v7 + 48);
  if (v17 >= v16)
  {
    v19 = *(v7 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = v4;
    v18 = 4 * v20 + 4;
    v24 = *(v7 + 32);
    v25 = *(v7 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v7 + 32);
    *(v7 + 32) = v26;
    *(v7 + 40) = v18;
    *(v7 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = v4;
    v18 = (v17 + 1);
  }

  *(v7 + 40) = v18;
  v28 = ((v18 - *(v7 + 32)) >> 2) - 1;
  *v13 = v4;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v7 + 56);
  v30 = *(v7 + 64);
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v57 = v28;
    v58 = v5;
    v32 = v29 + 1;
    v33 = v29 + 1 - ((v30 - v31) >> 3);
    v34 = *(v7 + 72);
    v59 = v30 - v31;
    if (v33 > (v34 - v30) >> 3)
    {
      v35 = v34 - v31;
      v36 = (v34 - v31) >> 2;
      if (v36 <= v32)
      {
        v36 = v29 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_57;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v30 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v30 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v30 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v29)
    {
      v28 = v32 - v44;
      v45 = *(v7 + 96);
      if (v28 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v29 + 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (!(v48 >> 60))
        {
          operator new();
        }

LABEL_57:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v28);
      *(v7 + 88) = v43 + 16 * v28;
      LOBYTE(v28) = v57;
    }

    else if (v32 < v44)
    {
      *(v7 + 88) = v42 + 16 * v32;
    }

    v31 = *(v7 + 56);
    v5 = v58;
    if (v59 < *(v7 + 64) - v31)
    {
      operator new();
    }
  }

  v49 = (*(v31 + 8 * v29) + 48 * (v28 & 0x3F));
  v50 = *v12;
  v51 = v12[2];
  v49[1] = v12[1];
  v49[2] = v51;
  *v49 = v50;
  v52 = *(v7 + 152);
  v53 = *(v7 + 160);
  while (v52 != v53)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
    v52 += 32;
  }

LABEL_55:
  v56 = *(v60 + 41016) + (v4 >> 16 << 6);
  *(v56 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>();
  *(v60 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>(void)::metadata) = *(v60 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ModelTransformData>(ecs2::Entity,md::ls::ModelTransformData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D0A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IgnoreCulling>(ecs2::Entity,md::ls::IgnoreCulling &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IgnoreCulling>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IgnoreCulling>(ecs2::Entity,md::ls::IgnoreCulling &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1CFF0;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::MeshLayerTypeV>(ecs2::Entity,md::ls::MeshLayerTypeV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::MeshLayerTypeV>(ecs2::Entity,md::ls::MeshLayerTypeV &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A431F8;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::BoundData>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>(void)::metadata;
  v61 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::BoundData>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    v53 = 0;
    v54 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F);
    do
    {
      *(v54 + v53) = *(a3 + v53);
      v53 += 4;
    }

    while (v53 != 12);
    v55 = 0;
    v56 = v54 + 12;
    do
    {
      *(v56 + v55) = *(a3 + v55 + 12);
      v55 += 4;
    }

    while (v55 != 12);
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_58;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v58 = v28;
    v59 = v6;
    v32 = v29 + 1;
    v33 = v29 + 1 - ((v30 - v31) >> 3);
    v34 = *(v8 + 72);
    v60 = v30 - v31;
    if (v33 > (v34 - v30) >> 3)
    {
      v35 = v34 - v31;
      v36 = (v34 - v31) >> 2;
      if (v36 <= v32)
      {
        v36 = v29 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_60;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v30 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v30 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v8 + 64) = v30 + 8 * v33;
    v42 = *(v8 + 80);
    v43 = *(v8 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v29)
    {
      v28 = v32 - v44;
      v45 = *(v8 + 96);
      if (v28 > (v45 - v43) >> 4)
      {
        v46 = v45 - v42;
        v47 = v46 >> 3;
        if (v46 >> 3 <= v32)
        {
          v47 = v29 + 1;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF0)
        {
          v48 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v47;
        }

        if (!(v48 >> 60))
        {
          operator new();
        }

LABEL_60:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v43 + 16 * v28;
      LOBYTE(v28) = v58;
    }

    else if (v32 < v44)
    {
      *(v8 + 88) = v42 + 16 * v32;
    }

    v31 = *(v8 + 56);
    v6 = v59;
    if (v60 < *(v8 + 64) - v31)
    {
      operator new();
    }
  }

  v49 = *(v31 + 8 * v29) + 24 * (v28 & 0x3F);
  v50 = *a3;
  *(v49 + 16) = *(a3 + 2);
  *v49 = v50;
  v51 = *(v8 + 152);
  v52 = *(v8 + 160);
  while (v51 != v52)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v51 + 24), a2);
    v51 += 32;
  }

LABEL_58:
  v57 = *(v61 + 41016) + (WORD1(a2) << 6);
  *(v57 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>();
  *(v61 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>(void)::metadata) = *(v61 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::BoundData>(ecs2::Entity,md::BoundData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A423A0;
  result = *(a1 + 8);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverInstance>(ecs2::Entity,md::ls::FlyoverInstance &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverInstance>(ecs2::Entity,md::ls::FlyoverInstance &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A4F6E8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::GlobeMatrix>(ecs2::Entity,md::ls::GlobeMatrix &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::GlobeMatrix>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::GlobeMatrix>(ecs2::Entity,md::ls::GlobeMatrix &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1CF20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TileType>(ecs2::Entity,md::ls::TileType &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1CED8;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::TransformConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TransformConstantDataHandle>(ecs2::Entity,md::ls::TransformConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50998;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::ViewConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ViewConstantDataHandle>(ecs2::Entity,md::ls::ViewConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A508C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::SharedTileMatrix>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SharedTileMatrix>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata) = *(v55 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedTileMatrix>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedTileMatrix>(void)::localId;
    *algn_1EB82D858 = 0x412941A9C4AFE129;
    qword_1EB82D860 = "md::ls::SharedTileMatrix]";
    qword_1EB82D868 = 24;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SharedTileMatrix>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SharedTileMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedTileMatrix>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedTileMatrix>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SharedTileMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53968;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53928;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A53948;
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

void ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53928;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedTileMatrix,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SharedTileMatrix>(ecs2::Entity,md::ls::SharedTileMatrix &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A538E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TileBounds>(ecs2::Entity,md::ls::TileBounds &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1CE90;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 44) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderablePendingProcessing>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablePendingProcessing>(a1);
  v6 = v5;
  v7 = a2 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v7 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((a2 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>(void)::metadata) = *(a1 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderablePendingProcessing>(ecs2::Entity,md::ls::RenderablePendingProcessing &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1CE48;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::MeshRenderableID>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableID>(void)::metadata) = *(v55 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::MeshRenderableID>(ecs2::Entity,md::ls::MeshRenderableID &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1CE00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::PendingProcessing>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessing>(a1);
  v6 = v5;
  v7 = a2 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v7 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((a2 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>(void)::metadata) = *(a1 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PendingProcessing>(ecs2::Entity,md::ls::PendingProcessing &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1CDB8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonS2TransformHandle>(ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonS2TransformHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::FlyoverCommonS2TransformHandle>(ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A52228;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<md::ita::CollectFlyoverMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&>)::$_0,std::allocator<md::ita::CollectFlyoverMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&>)::$_0>,void ()(md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1CD48;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::ita::PrepareFlyoverTransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&>)::$_0,std::allocator<md::ita::PrepareFlyoverTransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&>)::$_0>,void ()(md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  GlobeMatrix = md::VKMRenderResourcesStore::getGlobeMatrix(**(a1 + 8), *a4);
  v8 = 0;
  v9 = GlobeMatrix[5];
  v88[4] = GlobeMatrix[4];
  v88[5] = v9;
  v10 = GlobeMatrix[7];
  v88[6] = GlobeMatrix[6];
  v88[7] = v10;
  v11 = GlobeMatrix[1];
  v88[0] = *GlobeMatrix;
  v88[1] = v11;
  v12 = GlobeMatrix[3];
  v88[2] = GlobeMatrix[2];
  v88[3] = v12;
  v13 = *(a1 + 16);
  do
  {
    v14 = 0;
    v15 = v88;
    do
    {
      v16 = 0;
      v17 = 0.0;
      v18 = v13;
      do
      {
        v19 = *v18;
        v18 += 4;
        v17 = v17 + *(v15 + v16) * v19;
        v16 += 8;
      }

      while (v16 != 32);
      v87[4 * v14++ + v8] = v17;
      v15 += 2;
    }

    while (v14 != 4);
    ++v8;
    ++v13;
  }

  while (v8 != 4);
  v20 = **(a1 + 8);
  v21 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v20 + 1027, *a2);
  if (v21 == v20[1032])
  {
    v22 = 0;
  }

  else
  {
    v23 = ((v21 - v20[1031]) >> 3) & 0x3F;
    v24 = (((v21 - v20[1031]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
    v25 = *(v20[1040] + v24);
    v26 = *(v20[1046] + v24);
    ++*(*(v20[1034] + v24) + 24 * v23);
    v27 = v20[1062];
    if (!v27)
    {
      v73 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__func<md::ita::PrepareFlyoverTransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&>)::$_0,std::allocator<md::ita::PrepareFlyoverTransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&>)::$_0>,void ()(md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&)>::destroy_deallocate(v73);
      return;
    }

    v22 = (*(*v27 + 48))(v27);
    v28 = *(v26 + 8 * v23);
    *(v26 + 8 * v23) = v22;
    if (v28)
    {
      (*(*v28 + 8))(v28);
      v22 = *(v26 + 8 * v23);
    }

    *(v25 + 24 * v23) = v22;
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v85, v22);
  v29 = 0;
  v30 = v74;
  v31 = a3;
  do
  {
    v32 = 0;
    v33 = v30;
    do
    {
      *v33 = *(v31 + v32);
      v33 += 4;
      v32 += 12;
    }

    while (v32 != 48);
    ++v29;
    v30 += 4;
    v31 += 4;
  }

  while (v29 != 3);
  v34 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 1065353216;
  v35 = v79;
  do
  {
    v36 = *&v74[v34];
    *v35 = vcvtq_f64_f32(*v36.f32);
    v35[1] = vcvt_hight_f64_f32(v36);
    v35 += 2;
    v34 += 16;
  }

  while (v34 != 64);
  v37 = 0;
  v38 = v88;
  do
  {
    v39 = 0;
    v40 = v79;
    do
    {
      v41 = 0;
      v42 = 0.0;
      v43 = v38;
      do
      {
        v44 = *v43;
        v43 += 4;
        v42 = v42 + *&v40[v41] * v44;
        v41 += 8;
      }

      while (v41 != 32);
      v80[4 * v39++ + v37] = v42;
      v40 += 32;
    }

    while (v39 != 4);
    ++v37;
    v38 = (v38 + 8);
  }

  while (v37 != 4);
  v45 = 0;
  v46 = v80;
  do
  {
    v48 = *v46;
    v47 = *(v46 + 2);
    v46 += 4;
    *(&v81 + v45) = vcvt_hight_f32_f64(vcvt_f32_f64(v48), v47);
    v45 += 16;
  }

  while (v45 != 64);
  v49 = 0;
  v50 = v86;
  v51 = v82;
  v86[4] = v81;
  v50[5] = v51;
  v52 = v84;
  v50[6] = v83;
  v50[7] = v52;
  v53 = v74;
  do
  {
    v54 = 0;
    v55 = v53;
    do
    {
      *v55 = *(a3 + v54);
      v55 += 4;
      v54 += 12;
    }

    while (v54 != 48);
    ++v49;
    v53 += 4;
    a3 += 4;
  }

  while (v49 != 3);
  v56 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 1065353216;
  v57 = v79;
  do
  {
    v58 = *&v74[v56];
    *v57 = vcvtq_f64_f32(*v58.f32);
    v57[1] = vcvt_hight_f64_f32(v58);
    v57 += 2;
    v56 += 16;
  }

  while (v56 != 64);
  v59 = 0;
  v60 = v87;
  do
  {
    v61 = 0;
    v62 = v79;
    do
    {
      v63 = 0;
      v64 = 0.0;
      v65 = v60;
      do
      {
        v66 = *v65;
        v65 += 4;
        v64 = v64 + *&v62[v63] * v66;
        v63 += 8;
      }

      while (v63 != 32);
      v80[4 * v61++ + v59] = v64;
      v62 += 32;
    }

    while (v61 != 4);
    ++v59;
    ++v60;
  }

  while (v59 != 4);
  v67 = 0;
  v68 = v80;
  do
  {
    v70 = *v68;
    v69 = *(v68 + 2);
    v68 += 4;
    *(&v81 + v67) = vcvt_hight_f32_f64(vcvt_f32_f64(v70), v69);
    v67 += 16;
  }

  while (v67 != 64);
  v71 = v82;
  *v50 = v81;
  v50[1] = v71;
  v72 = v84;
  v50[2] = v83;
  v50[3] = v72;
  ggl::BufferMemory::~BufferMemory(v85);
}

__n128 std::__function::__func<md::ita::PrepareFlyoverTransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&>)::$_0,std::allocator<md::ita::PrepareFlyoverTransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&>)::$_0>,void ()(md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D550;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&>)::$_0,std::allocator<md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&>)::$_0>,void ()(md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v5 = **(a1 + 8);
  v6 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v5 + 1063, *a2);
  if (v6 == v5[1068])
  {
    v7 = 0;
  }

  else
  {
    v8 = ((v6 - v5[1067]) >> 3) & 0x3F;
    v9 = (((v6 - v5[1067]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
    v10 = *(v5[1076] + v9);
    v11 = *(v5[1082] + v9);
    ++*(*(v5[1070] + v9) + 24 * v8);
    v12 = v5[1098];
    if (!v12)
    {
      v30 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__func<md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&>)::$_0,std::allocator<md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&>)::$_0>,void ()(md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&)>::destroy_deallocate(v30);
      return;
    }

    v7 = (*(*v12 + 48))(v12);
    v13 = *(v11 + 8 * v8);
    *(v11 + 8 * v8) = v7;
    if (v13)
    {
      (*(*v13 + 8))(v13);
      v7 = *(v11 + 8 * v8);
    }

    *(v10 + 24 * v8) = v7;
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v31, v7);
  BaseMapTileDataRenderable = md::VKMRenderResourcesStore::getBaseMapTileDataRenderable(**(a1 + 8), *a3);
  v15 = 0;
  v16 = *(BaseMapTileDataRenderable + 25);
  v17 = *(BaseMapTileDataRenderable + 28);
  v18 = v32;
  v32[10].i32[0] = *(BaseMapTileDataRenderable + 24);
  v19 = *(a1 + 16);
  do
  {
    v18->i32[v15] = *(v19 + v15 * 4);
    ++v15;
  }

  while (v15 != 16);
  v20 = vrev64_s32(v17);
  v21.i64[0] = v20.u32[0];
  v21.i64[1] = v20.u32[1];
  v22 = vadd_s32(v20, 0x100000001);
  __asm { FMOV            V3.2D, #1.0 }

  v28 = vdivq_f64(_Q3, vdupq_lane_s64(COERCE__INT64((1 << v16)), 0));
  v29 = vmulq_f64(vcvtq_f64_u64(v21), v28);
  v21.i64[0] = v22.u32[0];
  v21.i64[1] = v22.u32[1];
  *&v29.f64[0] = vcvt_f32_f64(v29);
  v18[8] = vsub_f32(vcvt_f32_f64(vmulq_f64(vcvtq_f64_u64(v21), v28)), *&v29.f64[0]);
  v18[9] = *&v29.f64[0];
  ggl::BufferMemory::~BufferMemory(v31);
}

__n128 std::__function::__func<md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&>)::$_0,std::allocator<md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()(ecs2::Query<md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&>)::$_0>,void ()(md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1D598;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

int32x2_t md::OcclusionManager::worldTraitsDidChange(md::OcclusionManager *this)
{
  v1 = *(*(this + 1) + 232);
  *(this + 156) = v1[2].i8[1] ^ 1;
  *(this + 128) = v1[2].i8[0];
  *(this + 157) = v1[3].i8[7];
  *(this + 36) = v1[5].i32[1];
  result = vrev64_s32(v1[6]);
  *(this + 148) = result;
  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::OcclusionQuery>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::OcclusionQueryResource>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<ggl::OcclusionLine::OcclusionLinePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1D6B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::OcclusionLine::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::OcclusionLine::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1D660;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery>*,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery>**,long,256l>::operator-[abi:nn200100](void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = ((a2 - *result) >> 4) - a3;
    if (v3 < 1)
    {
      result -= (255 - v3) >> 8;
    }

    else
    {
      result += v3 >> 8;
    }
  }

  return result;
}

void std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<md::OcclusionQuery> *,std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery> **,long,256l>,0>(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = a5 - v10;
      if ((v11 - a2) >> 4 >= v12 >> 4)
      {
        v13 = v12 >> 4;
      }

      else
      {
        v13 = (v11 - a2) >> 4;
      }

      if (v13)
      {
        v14 = -16 * v13;
        v15 = v11 - 16;
        do
        {
          v16 = *v15;
          *v15 = 0;
          *(v15 + 8) = 0;
          v17 = *(a5 - 8);
          *(a5 - 16) = v16;
          a5 -= 16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v17);
          }

          v15 -= 16;
          v14 += 16;
        }

        while (v14);
      }

      v11 -= 16 * v13;
      if (v11 == a2)
      {
        break;
      }

      v18 = *--v6;
      v10 = v18;
      a5 = v18 + 4096;
    }

    if (*v6 + 4096 == a5)
    {
      v19 = v6[1];
      ++v6;
      a5 = v19;
    }
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = a5;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<md::OcclusionQuery> *,std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery> **,long,256l>,0>(__int128 *result, __int128 *a2, __int128 *a3, void *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a2;
  v7 = result;
  if (a2 != a3)
  {
    v9 = *a4;
    while (1)
    {
      v10 = v9 - a5 + 4096;
      v11 = a3 - v6 >= v10 >> 4 ? v10 >> 4 : a3 - v6;
      result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery> *>(v6, &v6[v11], a5);
      v6 = result;
      if (result == a3)
      {
        break;
      }

      v13 = v5[1];
      ++v5;
      v9 = v13;
      a5 = v13;
    }

    a5 = v12;
    if (*v5 + 4096 == v12)
    {
      v14 = v5[1];
      ++v5;
      a5 = v14;
    }
  }

  *v7 = v6;
  v7[1] = v5;
  v7[2] = a5;
  return result;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery> *>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      *(v4 + 1) = 0;
      v7 = *(a3 + 8);
      *a3 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      ++v4;
      a3 += 16;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::QueryItem,geo::allocator_adapter<ggl::QueryItem,mdm::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<ggl::QueryItem,geo::allocator_adapter<ggl::QueryItem,mdm::zone_mallocator>>::__on_zero_shared_weak(mdm::zone_mallocator *a1)
{
  v2 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::QueryItem,geo::allocator_adapter<ggl::QueryItem,mdm::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::QueryItem,geo::allocator_adapter<ggl::QueryItem,mdm::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1D628;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::CollectARMapDataLogic,md::ARCollectMapDataContext<(md::MapDataType)60>,md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v107 = *MEMORY[0x1E69E9840];
  *(&v99 + 1) = a1;
  v4 = gdc::Registry::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)60>>(*(a1 + 128));
  v5 = v4;
  if (v4[29])
  {
    v6 = v4[28];
    if (v6)
    {
      v7 = v4[31];
      v8 = v4[7];
      v9 = (v4[8] - v8) >> 3;
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v6[6], v7, v8, v9);
        v6 = *v6;
      }

      while (v6);
    }
  }

  v5[8] = v5[7];
  v5[11] = v5[10];
  v10 = gdc::Registry::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)60>>(*(*(&v99 + 1) + 128));
  v11 = v10;
  if (v10[29])
  {
    v12 = v10[28];
    if (v12)
    {
      v13 = v10[31];
      v14 = v10[7];
      v15 = (v10[8] - v14) >> 3;
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v12[6], v13, v14, v15);
        v12 = *v12;
      }

      while (v12);
    }
  }

  v11[8] = v11[7];
  v11[11] = v11[10];
  *&v99 = *a3;
  v16 = *(*(&v99 + 1) + 128);
  if (*(*(&v99 + 1) + 120) == 0xFFFFFFFF00000000)
  {
    gdc::Registry::create(*(*(&v99 + 1) + 128));
  }

  v105 = gdc::Registry::storage<SceneComponents::LayerDataInView<(md::MapDataType)60>>(v16);
  v17 = gdc::Registry::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)60>>(v16);
  v18 = gdc::Registry::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)60>>(v16);
  v19 = gdc::Registry::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)60>>(v16);
  v20.i64[0] = v105;
  v20.i64[1] = v17;
  v21.i64[0] = v18;
  v21.i64[1] = v19;
  v22 = vdupq_n_s64(0x20uLL);
  v106[0] = vaddq_s64(v20, v22);
  v106[1] = vaddq_s64(v21, v22);
  v23 = *&v106[0];
  v24 = 8;
  v25 = v106;
  do
  {
    if (*(*(v106 + v24) + 32) - *(*(v106 + v24) + 24) < *(v23 + 32) - *(v23 + 24))
    {
      v23 = *(v106 + v24);
      v25 = (v106 + v24);
    }

    v24 += 8;
  }

  while (v24 != 32);
  v26 = *v25;
  v104 = v105 + 4;
  v98 = *v25;
  if (v105 + 4 == *v25)
  {
    v106[0] = v99;
    v27 = v105[7];
    v102 = v105[8];
    if (v27 != v102)
    {
      v28 = v105[10];
      do
      {
        v29 = *(v27 + 4);
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v17 + 4, v29);
        v31 = v17[8];
        if (v31 != Index)
        {
          v32 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v18 + 4, v29);
          v33 = v18[8];
          if (v33 != v32)
          {
            v34 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v19 + 4, v29);
            v35 = v19[8];
            if (v35 != v34)
            {
              v36 = *v27;
              v37 = HIDWORD(*v27);
              v38 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v17 + 4, HIDWORD(*v27));
              if (v31 == v38)
              {
                v39 = v17[11];
              }

              else
              {
                v39 = (v17[10] + 24 * ((v38 - v17[7]) >> 3));
              }

              v40 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v18 + 4, v37);
              if (v33 == v40)
              {
                v41 = v18[11];
              }

              else
              {
                v41 = (v18[10] + 24 * ((v40 - v18[7]) >> 3));
              }

              v42 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v19 + 4, v37);
              if (v35 == v42)
              {
                v43 = v19[11];
              }

              else
              {
                v43 = (v19[10] + 24 * ((v42 - v19[7]) >> 3));
              }

              md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::updateVisibleMapData(md::SceneContext const&,gdc::Registry *)::{lambda(gdc::Entity,SceneComponents::LayerDataInView<(md::MapDataType)60> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)60> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)60> &,SceneComponents::LayerDataExitingView<(md::MapDataType)60> &)#1}::operator()(v106, v36, v28, v39, v41, v43);
            }
          }
        }

        v28 += 24;
        v27 += 8;
      }

      while (v27 != v102);
    }

    v26 = v98;
  }

  v103 = v17 + 4;
  if (v17 + 4 == v26)
  {
    v106[0] = v99;
    v44 = v17[7];
    v100 = v17[8];
    if (v44 != v100)
    {
      v45 = v17[10];
      do
      {
        v46 = *(v44 + 4);
        v47 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v104, v46);
        v48 = v105[8];
        if (v48 != v47)
        {
          v49 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v18 + 4, v46);
          v50 = v18[8];
          if (v50 != v49)
          {
            v51 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v19 + 4, v46);
            v52 = v19[8];
            if (v52 != v51)
            {
              v53 = *v44;
              v54 = HIDWORD(*v44);
              v55 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v104, HIDWORD(*v44));
              if (v48 == v55)
              {
                v56 = v105[11];
              }

              else
              {
                v56 = v105[10] + 24 * ((v55 - v105[7]) >> 3);
              }

              v57 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v18 + 4, v54);
              if (v50 == v57)
              {
                v58 = v18[11];
              }

              else
              {
                v58 = (v18[10] + 24 * ((v57 - v18[7]) >> 3));
              }

              v59 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v19 + 4, v54);
              if (v52 == v59)
              {
                v60 = v19[11];
              }

              else
              {
                v60 = (v19[10] + 24 * ((v59 - v19[7]) >> 3));
              }

              md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::updateVisibleMapData(md::SceneContext const&,gdc::Registry *)::{lambda(gdc::Entity,SceneComponents::LayerDataInView<(md::MapDataType)60> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)60> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)60> &,SceneComponents::LayerDataExitingView<(md::MapDataType)60> &)#1}::operator()(v106, v53, v56, v45, v58, v60);
            }
          }
        }

        v45 += 3;
        v44 += 8;
      }

      while (v44 != v100);
    }

    v26 = v98;
  }

  v101 = v18 + 4;
  if (v18 + 4 == v26)
  {
    v106[0] = v99;
    v61 = v18[7];
    v62 = v18[8];
    if (v61 != v62)
    {
      v63 = v18[10];
      v97 = v18[8];
      do
      {
        v64 = *(v61 + 4);
        v65 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v104, v64);
        v66 = v105[8];
        if (v66 != v65)
        {
          v67 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v103, v64);
          v68 = v17[8];
          if (v68 != v67)
          {
            v69 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v19 + 4, v64);
            v70 = v19[8];
            if (v70 != v69)
            {
              v71 = *v61;
              v72 = HIDWORD(*v61);
              v73 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v104, HIDWORD(*v61));
              if (v66 == v73)
              {
                v74 = v105[11];
              }

              else
              {
                v74 = v105[10] + 24 * ((v73 - v105[7]) >> 3);
              }

              v75 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v103, v72);
              if (v68 == v75)
              {
                v76 = v17[11];
              }

              else
              {
                v76 = (v17[10] + 24 * ((v75 - v17[7]) >> 3));
              }

              v77 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v19 + 4, v72);
              if (v70 == v77)
              {
                v78 = v19[11];
              }

              else
              {
                v78 = (v19[10] + 24 * ((v77 - v19[7]) >> 3));
              }

              v62 = v97;
              md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::updateVisibleMapData(md::SceneContext const&,gdc::Registry *)::{lambda(gdc::Entity,SceneComponents::LayerDataInView<(md::MapDataType)60> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)60> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)60> &,SceneComponents::LayerDataExitingView<(md::MapDataType)60> &)#1}::operator()(v106, v71, v74, v76, v63, v78);
            }
          }
        }

        v63 += 3;
        v61 += 8;
      }

      while (v61 != v62);
    }

    v26 = v98;
  }

  if (v19 + 4 == v26)
  {
    v106[0] = v99;
    v80 = v19[7];
    v79 = v19[8];
    if (v80 != v79)
    {
      v81 = v19[10];
      do
      {
        v82 = *(v80 + 4);
        v83 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v104, v82);
        v84 = v105[8];
        if (v84 != v83)
        {
          v85 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v103, v82);
          v86 = v17[8];
          if (v86 != v85)
          {
            v87 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v101, v82);
            v88 = v18[8];
            if (v88 != v87)
            {
              v89 = *v80;
              v90 = HIDWORD(*v80);
              v91 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v104, HIDWORD(*v80));
              if (v84 == v91)
              {
                v92 = v105[11];
              }

              else
              {
                v92 = v105[10] + 24 * ((v91 - v105[7]) >> 3);
              }

              v93 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v103, v90);
              if (v86 == v93)
              {
                v94 = v17[11];
              }

              else
              {
                v94 = (v17[10] + 24 * ((v93 - v17[7]) >> 3));
              }

              v95 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v101, v90);
              if (v88 == v95)
              {
                v96 = v18[11];
              }

              else
              {
                v96 = (v18[10] + 24 * ((v95 - v18[7]) >> 3));
              }

              md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::updateVisibleMapData(md::SceneContext const&,gdc::Registry *)::{lambda(gdc::Entity,SceneComponents::LayerDataInView<(md::MapDataType)60> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)60> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)60> &,SceneComponents::LayerDataExitingView<(md::MapDataType)60> &)#1}::operator()(v106, v89, v92, v94, v96, v81);
            }
          }
        }

        v81 += 3;
        v80 += 8;
      }

      while (v80 != v79);
    }
  }
}

void sub_1B2FA05F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::__split_buffer<SceneComponents::LayerDataInView<(md::MapDataType)60>>::~__split_buffer(va);
  std::__tree<gdc::LayerDataWithWorld>::destroy(a20);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)60>>(uint64_t a1)
{
  v3 = 0xD9D6033E08E71563;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xD9D6033E08E71563);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)60>>(uint64_t a1)
{
  v3 = 0x7731F7E182AC74C3;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x7731F7E182AC74C3uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)60>>(uint64_t a1)
{
  v3 = 0xAE0549933BB69820;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xAE0549933BB69820);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)60>>(uint64_t a1)
{
  v3 = 0x416BB4B17C0143F6;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x416BB4B17C0143F6uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)60>>(uint64_t a1)
{
  v3 = 0xEFE60C4B692DE7FCLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xEFE60C4B692DE7FCLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::updateVisibleMapData(md::SceneContext const&,gdc::Registry *)::{lambda(gdc::Entity,SceneComponents::LayerDataInView<(md::MapDataType)60> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)60> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)60> &,SceneComponents::LayerDataExitingView<(md::MapDataType)60> &)#1}::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = *(a1 + 8);
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100](a3, a4);
  v13 = (a3 + 8);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a3 + 8));
  *a3 = a3 + 8;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a5[1]);
  *a5 = (a5 + 1);
  a5[2] = 0;
  a5[1] = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a6[1]);
  *a6 = (a6 + 1);
  a6[2] = 0;
  a6[1] = 0;
  v14 = md::SceneContext::layerDataInView(*a1, 60);
  std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(a3, *v14, v14 + 1);
  v15 = *a3;
  v16 = a4 + 1;
  v17 = *a4;
  v18 = *a5;
  v83 = a5;
  v84 = v18;
  if (v15 != (a3 + 8))
  {
    if (v17 == v16)
    {
      v85 = a5;
      v86 = v18;
      if (v15 != v13)
      {
        do
        {
LABEL_34:
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v85, (v15 + 4));
          v35 = v15[1];
          if (v35)
          {
            do
            {
              v36 = v35;
              v35 = *v35;
            }

            while (v35);
          }

          else
          {
            do
            {
              v36 = v15[2];
              v32 = *v36 == v15;
              v15 = v36;
            }

            while (!v32);
          }

          v15 = v36;
        }

        while (v36 != v13);
      }
    }

    else
    {
      while (1)
      {
        v19 = v15[4];
        v20 = *(v15 + 48);
        v21 = v20;
        v22 = *(v17 + 48);
        v23 = v17[4];
        if (v20 == v22 ? v19 < v23 : v20 < v22)
        {
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v83, (v15 + 4));
          v25 = v15[1];
          if (v25)
          {
            do
            {
              v15 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v15;
              v15 = v15[2];
            }

            while (*v15 != v26);
          }
        }

        else
        {
          v27 = v23 < v19;
          if (v21 != v22)
          {
            v27 = v22 < v21;
          }

          if (v27)
          {
            v28 = v17[1];
            if (v28)
            {
              do
              {
                v17 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v29 = v17;
                v17 = v17[2];
              }

              while (*v17 != v29);
            }
          }

          else
          {
            v30 = v15[1];
            if (v30)
            {
              do
              {
                v31 = v30;
                v30 = *v30;
              }

              while (v30);
            }

            else
            {
              do
              {
                v31 = v15[2];
                v32 = *v31 == v15;
                v15 = v31;
              }

              while (!v32);
            }

            v33 = v17[1];
            if (v33)
            {
              do
              {
                v17 = v33;
                v33 = *v33;
              }

              while (v33);
            }

            else
            {
              do
              {
                v34 = v17;
                v17 = v17[2];
              }

              while (*v17 != v34);
            }

            v15 = v31;
          }
        }

        if (v15 == v13)
        {
          break;
        }

        if (v17 == v16)
        {
          v85 = v83;
          v86 = v84;
          goto LABEL_34;
        }
      }
    }
  }

  v37 = *a4;
  v38 = *a3;
  v39 = *a6;
  v83 = a6;
  v84 = v39;
  if (v37 != v16)
  {
    if (v38 == v13)
    {
      v85 = a6;
      v86 = v39;
      if (v37 != v16)
      {
        do
        {
LABEL_73:
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v85, (v37 + 4));
          v55 = v37[1];
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = v37[2];
              v32 = *v56 == v37;
              v37 = v56;
            }

            while (!v32);
          }

          v37 = v56;
        }

        while (v56 != v16);
      }
    }

    else
    {
      while (1)
      {
        v40 = v37[4];
        v41 = *(v37 + 48);
        v42 = v41;
        v43 = *(v38 + 48);
        v44 = v38[4];
        if (v41 == v43 ? v40 < v44 : v41 < v43)
        {
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v83, (v37 + 4));
          v46 = v37[1];
          if (v46)
          {
            do
            {
              v37 = v46;
              v46 = *v46;
            }

            while (v46);
          }

          else
          {
            do
            {
              v47 = v37;
              v37 = v37[2];
            }

            while (*v37 != v47);
          }
        }

        else
        {
          v48 = v44 < v40;
          if (v42 != v43)
          {
            v48 = v43 < v42;
          }

          if (v48)
          {
            v49 = v38[1];
            if (v49)
            {
              do
              {
                v38 = v49;
                v49 = *v49;
              }

              while (v49);
            }

            else
            {
              do
              {
                v50 = v38;
                v38 = v38[2];
              }

              while (*v38 != v50);
            }
          }

          else
          {
            v51 = v37[1];
            if (v51)
            {
              do
              {
                v52 = v51;
                v51 = *v51;
              }

              while (v51);
            }

            else
            {
              do
              {
                v52 = v37[2];
                v32 = *v52 == v37;
                v37 = v52;
              }

              while (!v32);
            }

            v53 = v38[1];
            if (v53)
            {
              do
              {
                v38 = v53;
                v53 = *v53;
              }

              while (v53);
            }

            else
            {
              do
              {
                v54 = v38;
                v38 = v38[2];
              }

              while (*v38 != v54);
            }

            v37 = v52;
          }
        }

        if (v37 == v16)
        {
          break;
        }

        if (v38 == v13)
        {
          v85 = v83;
          v86 = v84;
          goto LABEL_73;
        }
      }
    }
  }

  if (a5[2])
  {
    v57 = gdc::Registry::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)60>>(*(v12 + 128));
    v85 = a2;
    v58 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v57 + 4, &v85);
    if (v59)
    {
      v60 = v57[11];
      v61 = v57[12];
      if (v60 >= v61)
      {
        v65 = v57[10];
        v66 = v60 - v65 + 1;
        if (v66 < 0)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v67 = v61 - v65;
        if (2 * v67 > v66)
        {
          v66 = 2 * v67;
        }

        if (v67 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v68 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v66;
        }

        if (v68)
        {
          operator new();
        }

        v62 = v60 - v65 + 1;
        memcpy(0, v65, v60 - v65);
        v57[10] = 0;
        v57[11] = v62;
        v57[12] = 0;
        if (v65)
        {
          operator delete(v65);
        }
      }

      else
      {
        v62 = v60 + 1;
      }

      v57[11] = v62;
      v63 = v57[31];
      goto LABEL_98;
    }

    v63 = v57[31];
    if (v57[10] + ((v58 - v57[7]) >> 3) == v57[11])
    {
LABEL_98:
      for (i = v57[22]; i; i = *i)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v63, &v85, 1);
      }

      goto LABEL_100;
    }

    for (j = v57[16]; j; j = *j)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v63, &v85, 1);
    }
  }

LABEL_100:
  if (!a6[2])
  {
    return;
  }

  v70 = gdc::Registry::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)60>>(*(v12 + 128));
  v85 = a2;
  v71 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v70 + 4, &v85);
  if (v72)
  {
    v73 = v70[11];
    v74 = v70[12];
    if (v73 >= v74)
    {
      v78 = v70[10];
      v79 = v73 - v78 + 1;
      if (v79 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v80 = v74 - v78;
      if (2 * v80 > v79)
      {
        v79 = 2 * v80;
      }

      if (v80 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v81 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v81 = v79;
      }

      if (v81)
      {
        operator new();
      }

      v75 = v73 - v78 + 1;
      memcpy(0, v78, v73 - v78);
      v70[10] = 0;
      v70[11] = v75;
      v70[12] = 0;
      if (v78)
      {
        operator delete(v78);
      }
    }

    else
    {
      v75 = v73 + 1;
    }

    v70[11] = v75;
    v76 = v70[31];
    goto LABEL_119;
  }

  v76 = v70[31];
  if (v70[10] + ((v71 - v70[7]) >> 3) == v70[11])
  {
LABEL_119:
    for (k = v70[22]; k; k = *k)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v76, &v85, 1);
    }

    return;
  }

  for (m = v70[16]; m; m = *m)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(m[6], v76, &v85, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataPreviousInView<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    if (v6 != v7 - 24)
    {
      std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v6, *(v7 - 24), (v7 - 16));
      v7 = a1[11];
    }

    v8 = v7 - 24;
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(v7 - 16));
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

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataPreviousInView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataPreviousInView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataExitingView<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    if (v6 != v7 - 24)
    {
      std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v6, *(v7 - 24), (v7 - 16));
      v7 = a1[11];
    }

    v8 = v7 - 24;
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(v7 - 16));
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

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataExitingView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataExitingView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataEnteringView<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    if (v6 != v7 - 24)
    {
      std::__tree<gdc::LayerDataWithWorld>::__assign_multi<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v6, *(v7 - 24), (v7 - 16));
      v7 = a1[11];
    }

    v8 = v7 - 24;
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(v7 - 16));
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

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataEnteringView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataEnteringView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<SceneComponents::LayerDataInView<(md::MapDataType)60>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

uint64_t std::__split_buffer<SceneComponents::LayerDataInView<(md::MapDataType)60>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<gdc::LayerDataWithWorld>::destroy(*(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataInfo<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 2;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 2);
    a1[11] = v8 - 2;
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

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataInfo<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataInfo<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataDidExitView<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataDidExitView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataDidExitView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<SceneComponents::LayerDataDidEnterView<(md::MapDataType)60>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<SceneComponents::LayerDataDidEnterView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<SceneComponents::LayerDataDidEnterView<(md::MapDataType)60>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t md::Logic<md::CollectARMapDataLogic,md::ARCollectMapDataContext<(md::MapDataType)60>,md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x127F9F77D6DAB2F5 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8[0] = md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARSceneContext,md::GeometryContext>(*(a2 + 8));
    v8[1] = v7;
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARSceneContext,md::GeometryContext>(void *a1)
{
  v2 = gdc::Context::context<md::ARSceneContext>(a1);
  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x3070CB6B3C7F21D3uLL);
  return v2;
}

void *gdc::Context::context<md::ARSceneContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x29BDA47DB65B52C8uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x29BDA47DB65B52C8)
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

uint64_t md::Logic<md::CollectARMapDataLogic,md::ARCollectMapDataContext<(md::MapDataType)60>,md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x127F9F77D6DAB2F5)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARSceneContext,md::GeometryContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 152))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectARMapDataLogic,md::ARCollectMapDataContext<(md::MapDataType)60>,md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x127F9F77D6DAB2F5)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARSceneContext,md::GeometryContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 144))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectARMapDataLogic,md::ARCollectMapDataContext<(md::MapDataType)60>,md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x127F9F77D6DAB2F5)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARSceneContext,md::GeometryContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectARMapDataLogic,md::ARCollectMapDataContext<(md::MapDataType)60>,md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x127F9F77D6DAB2F5)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::ARSceneContext,md::GeometryContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARSceneContext,md::GeometryContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARCollectMapDataContext<(md::MapDataType)60>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARCollectMapDataContext<(md::MapDataType)60>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A24960;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARCollectMapDataContext<(md::MapDataType)60>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A24960;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARCollectMapDataLogic<(md::MapDataType)60,md::CollectARMapDataLogic>::didBecomeInactive(uint64_t result)
{
  if (*(result + 120) || *(result + 122) || *(result + 124) != -1)
  {
    gdc::Registry::destroy(*(result + 128), *(result + 120));
    *(result + 120) = 0xFFFFFFFF00000000;
  }
}

BOOL md::LabelAnnotationStyleMonitor::needsCrossfade(uint64_t a1, md::LabelStyle *a2)
{
  if (*(a1 + 9) != 1)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v8 = 0;
  v7 = 0;
  md::AnnotationMonitorProperties::init(&v7, a2);
  return *a1 != v7 || *(a1 + 8) != v8;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MarkForEntityDeletion>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MarkForEntityDeletion>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[436];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls21MarkForEntityDeletionEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A55880;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21MarkForEntityDeletionEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A55880;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MarkForEntityDeletion,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A55860;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MarkForEntityDeletion,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A55860;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::erq::GPUWorkCallbacks>(ecs2::Entity,md::erq::GPUWorkCallbacks &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1DB68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 36) = 0;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D840;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1D860;
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

void ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D840;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderTargetToPrepare,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A544D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A544F8;
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

void ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A544D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ita::FrameHandle,64ul>::~storage(a1);
}

void std::__shared_ptr_emplace<ggl::GlobeAtmosphere::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1DE40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::GlobeStars::StarsPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1DE08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::GlobeSkyRenderResources::loadStarsModel(void ***this)
{
  memset(v20, 0, sizeof(v20));
  v17 = v18;
  v18[0] = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18[1] = 0;
  v18[2] = v19;
  std::string::basic_string[abi:nn200100]<0>(__p, "zip");
  if (v22 < 0)
  {
    if (__p[1] != 3)
    {
      v8 = 1;
LABEL_22:
      operator delete(__p[0]);
      goto LABEL_23;
    }

    v3 = __p[0];
    if (*__p[0] == 27002 && *(__p[0] + 2) == 112)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v22 != 3)
    {
      goto LABEL_35;
    }

    if (LOWORD(__p[0]) == 27002 && BYTE2(__p[0]) == 112)
    {
LABEL_19:
      v8 = karo::media::ZipLoader::loadFromChunk(&bundleDataBuffer, 0x60AE6uLL, &v17) ^ 1;
      if (v22 < 0)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v3 = __p;
  }

  v5 = *v3;
  v6 = *(v3 + 2);
  if (v5 == 18778 && v6 == 80)
  {
    goto LABEL_19;
  }

  v8 = 1;
  if (v22 < 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  if ((v8 & 1) == 0)
  {
    v9 = v18[0];
    if (v18[0])
    {
      v10 = v18;
      do
      {
        v11 = v10;
        v12 = (v9 + 32);
        v13 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v9 + 4, this);
        if ((v13 & 0x80u) == 0)
        {
          v10 = v9;
        }

        v9 = *&v9[(v13 >> 4) & 8];
      }

      while (v9);
      if (v10 != v18)
      {
        if ((v13 & 0x80u) == 0)
        {
          v14 = v12;
        }

        else
        {
          v14 = (v11 + 4);
        }

        v15 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(this, v14);
        if ((v15 & 0x80) == 0)
        {
          karo::media::SkyLoader::loadFromChunk(v15, v10[7], *(v10 + 16) - v10[7], v20);
          operator new();
        }
      }
    }
  }

LABEL_35:
  std::__tree<std::string>::destroy(v19[0]);
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(v18[0]);
  return 0;
}

void sub_1B2FA5750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, char *a20, uint64_t a21, void *a22)
{
  std::__tree<std::string>::destroy(a20);
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(a17);
  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<ggl::GlobeStars::StarsMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1DE78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::GlobeAtmosphere::AtmosphereMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1DEB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2FA66EC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKInternedString;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t md::ARDebugRouteScene::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 40);
  v6 = [v5 routeInfo];
  v7 = [v6 route];
  v55 = v7;

  if (v7)
  {
    v8 = geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(a1 + 40), &v55);
    if ((v8 & 1) == 0)
    {
      geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(a1 + 32, v7);
      *(a1 + 56) = 0;
    }

    for (i = 1; ; ++i)
    {
      if (i >= [v7 stepsCount])
      {
        v14 = 0;
        goto LABEL_37;
      }

      v10 = [v7 steps];
      v11 = [v10 objectAtIndex:i];

      v12 = [v11 endRouteCoordinate];
      v13 = *(a3 + 4);
      if (v13 < v12 || v13 == v12 && *(a3 + 8) < *(&v12 + 1))
      {
        break;
      }
    }

    if (v8 && *(a1 + 56) == i)
    {
      v14 = 0;
    }

    else
    {
      v15 = [v7 steps];
      v53 = [v15 objectAtIndex:i - 1];

      v52 = v11;
      v16 = v7;
      v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (j = 0; j < [v16 stepsCount]; ++j)
      {
        v18 = [v16 steps];
        v19 = [v18 objectAtIndex:j];

        v20 = [v19 maneuverRoadName];
        v21 = v20;
        if (!v20 || ![(__CFString *)v20 length])
        {

          v21 = &stru_1F2A61C40;
        }

        v22 = [v19 endRouteCoordinate];
        v23 = v22;
        v24 = *(a3 + 4);
        if (v24 < v22 || v24 == v22 && *(a3 + 8) < *(&v22 + 1))
        {
          [v16 pointAtRouteCoordinate:v22];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          [v16 courseAtRouteCoordinateIndex:v23];
          v32 = [[VKARWalkingManeuverFeature alloc] initWithDisplayLocation:v23 routeCoordinate:v21 maneuverHeading:0 displayText:v26 elevationModel:v28, v30, v31];
          [v54 addObject:v32];
        }
      }

      v33 = v16;
      [v33 distance];
      [v33 pointWithAltitudeCorrectionAtRouteCoordinate:{objc_msgSend(v33, "coordinateAtOffset:")}];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v57[0] = xmmword_1B3415084;
      v57[1] = unk_1B3415094;
      std::vector<GeoCodecsFeatureStylePair>::vector[abi:nn200100](__p, v57, 4uLL);
      v40 = objc_alloc_init(MEMORY[0x1E69A1DB0]);
      [v40 replaceAttributes:? count:?];
      v41 = [[VKARWalkingArrivalFeature alloc] initWithPosition:v40 iconStyleAttributes:v35, v37, v39];

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      [v54 addObject:v41];
      v42 = v33;
      v43 = v52;
      v44 = [v53 endRouteCoordinate];
      v45 = [v43 endRouteCoordinate];
      if (GEOPolylineCoordinateIsValid() && GEOPolylineCoordinateIsValid())
      {
        if (v45 > v44 || (v46 = 0, v45 == v44) && *(&v45 + 1) > *(&v44 + 1))
        {
          if (GEOPolylineCoordinateIsInvalid())
          {
            v47 = *MEMORY[0x1E69A1918];
            v48 = *(MEMORY[0x1E69A1918] + 4);
          }

          else
          {
            v48 = *(&v44 + 1) - floorf(*(&v44 + 1));
            v47 = vcvtms_u32_f32(*(&v44 + 1)) + v44;
          }

          if (GEOPolylineCoordinateIsInvalid())
          {
            v50 = *MEMORY[0x1E69A1918];
            v51 = *(MEMORY[0x1E69A1918] + 4);
          }

          else
          {
            v51 = *(&v45 + 1) - floorf(*(&v45 + 1));
            v50 = vcvtms_u32_f32(*(&v45 + 1)) + v45;
          }

          v46 = [[VKARWalkingContinueFeature alloc] initWithRoute:v42 range:v47 | (LODWORD(v48) << 32) displayText:v50 | (LODWORD(v51) << 32), @"CONTINUE"];
        }
      }

      else
      {
        v46 = 0;
      }

      [v54 addObject:v46];
      md::ARDebugScene::setFeatures(a1, v54);
      *(a1 + 56) = i;

      v14 = 1;
    }
  }

  else
  {
    md::ARDebugScene::setFeatures(a1, 0);
    *(a1 + 56) = 0;
    v14 = 1;
  }

LABEL_37:

  return v14;
}

void md::ARDebugRouteScene::~ARDebugRouteScene(md::ARDebugRouteScene *this)
{
  *this = &unk_1F2A4C2C0;
  *(this + 4) = &unk_1F2A4C308;

  *this = &unk_1F2A1DF08;
  *(this + 1) = &unk_1F2A4C2E8;

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4C2C0;
  *(this + 4) = &unk_1F2A4C308;

  *this = &unk_1F2A1DF08;
  *(this + 1) = &unk_1F2A4C2E8;
}